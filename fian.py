#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""A very simplistic Fortran interface analyzer. Used by stage2."""

import re

def analyze_interface(code):
    """Extract function call dependencies from a Fortran interface.

    This is very simplistic, and likely specific to code generated
    by SymPy's code generator.

    All functions in the interface are assumed PURE (no side effects),
    regardless of whether or not this is explicitly declared.

    Parameters:
        code: str
            Content of a Fortran interface (".h" file), as a single string.

    Returns:

        [ ( ((f1, f1_allargs), ..., (fn, fn_allargs)),
            {f1: f1_inargs, ..., fn: fn_inargs},
            {f1: f1_meta, ..., fn: fn_meta} ),
          ( ((s1, s1_allargs), ..., (sn, sn_allargs)),
            {s1: s1_inargs, ..., sn: sn_inargs},
            {s1: s1_meta, ..., sn: sn_meta} ) ]

        where
                fj: str
                    Function name.
                fj_allargs: (arg1, arg2, ..., argm): tuple(str)
                    All args of fj regardless of intent. Ordering preserved.
                fj_inargs: (arg1, arg2, ..., argm): tuple(str)
                    intent(in) args of fj. Ordering preserved.
                fj_meta: dict
                    Metadata record (metarec) for fj.
                    Contains metadata for arguments in fj_allargs:
                      argname: (dtype, intent, dimspec)
                        where dimspec is None for non-arrays.
                    Special case: for argname=fj itself, contains the
                                  metadata for the return value of the
                                  function (functions only!).

            Similarly for subroutines (sj, sj_allargs, sj_inargs, sj_meta).

        The top-level list has two elements; the first contains the data
        for functions, the second for subroutines.
    """
    # HACK: parse by regex matching. (Use a proper Fortran parser?)
    from enum import Enum
    class ReaderState(Enum):
        SCANNING  = 0
        CAPTURING_ARGLIST = 1
        CAPTURING_META = 2

    results = {}
    errors = []
    seen = set()
    for objtype in ("function", "subroutine"):
        def error(msg):  # lineno, objtype, fname from outer scope, defined later
            errors.append("{lineno}: In {objtype} '{fname}': {msg}".format(lineno=lineno,
                                                                           objtype=objtype,
                                                                           fname=fname,
                                                                           msg=msg))

        def header_starts(line):  # TODO: now requires exactly one space after "end"
            p_notend = r"(?<!\bend\b\s)"  # (?<!...) is "match if not preceded by" (see help(re))
            p_objtype = r"\b{objtype}\b".format(objtype=objtype)
            pattern = r"{notend}{objtype}".format(notend=p_notend,
                                                  objtype=p_objtype)
            matches = re.findall(pattern, line)
            assert len(matches) <= 1  # should be at most one match for the whole regex
            return (len(matches) > 0)

        # FIXME: brittle: we assume the return type decl contains no ")"
        def header_ends(line):
            matches = re.findall(r"\)", line)
            return (len(matches) > 0)

        def meta_ends(line):  # "end function" or "end subroutine"
            p_end = r"\bend\b\s"
            p_objtype = r"\b{objtype}\b".format(objtype=objtype)
            pattern = r"{end}\s*{objtype}".format(end=p_end,
                                                  objtype=p_objtype)
            matches = re.findall(pattern, line)
            return (len(matches) > 0)

        # meta is a dict:  argname: (dtype, intent, dimspec)
        def commit(fname, inargs, outargs, allargs, meta):
            if objtype == 'function':
                invalid_args = sorted(set(allargs).difference(set(inargs)), key=str.lower)
                if len(invalid_args):
                    error("arg(s) not intent(in): {invalid}".format(invalid=invalid_args))
                    return
            # Require metadata for all arguments to keep things explicit.
            # (Alternatively, we could generate any missing metadata. The
            #  code generator relies on the metadata always being present.)
            invalid_args = sorted((arg for arg in allargs if arg not in meta), key=str.lower)
            if len(invalid_args):
                error("missing intent for arg(s): {invalid}".format(invalid=invalid_args))
                return
            if fname in seen:  # TODO: report also lineno of previous definition
                error("duplicate definition for '{fname}'".format(fname=fname))
                return
            seen.add(fname)
            result.append((fname, inargs, outargs, allargs, meta))

        result = []
        state = ReaderState.SCANNING
        for lineno, line in enumerate(code.split("\n"), start=1):
            if state == ReaderState.SCANNING:
                if not header_starts(line):
                    continue

                # (?:...) makes a non-capturing group
                p_puredecl = r"(?:\b(pure)\b)?"  # some functions may have this
                p_rettype = r"(?:\b([^\s]+)\s+)?"  # optional; subroutines don't have a return type
                p_objtype = r"\b{objtype}\b".format(objtype=objtype)
                p_objname = r"(\S+)"
                p_arglist = r"([^&)]*)"  # 0 or more, because some functions might not take any args.
                pattern = r"{puredecl}\s*{rettype}\s*{objtype}\s+{objname}\s*\(\s*{arglist}".format(puredecl=p_puredecl,
                                                                                                    rettype=p_rettype,
                                                                                                    objtype=p_objtype,
                                                                                                    objname=p_objname,
                                                                                                    arglist=p_arglist)
                matches = re.findall(pattern, line)
                assert len(matches) == 1
                groups = matches[0]

                puredecl, rettype, fname, argstuff = groups

                puredecl = puredecl or None  # TODO: we don't actually use the puredecl
                rettype = rettype or None
                rawallargs = argstuff.split(",")

                # Save the captured function arguments into three lists:
                #  - inargs: intent(in) args only, so that we can compute
                #    any dependent inputs by calling other stage1 API
                #    functions (of the same name as an input arg).
                #    Will be generated when we commit().
                #  - outargs: intent(inout) and intent(out) args,
                #    to be passed through (for the topmost layer
                #    of the cake, which may have subroutines)
                #  - allargs: all args in their original ordering,
                #    to write the call to the stage1 API function
                #    when writing the stage2 public API
                #    (since arguments are positional in Fortran)
                allargs = [arg for arg in (s.strip() for s in rawallargs) if len(arg)]
                outargs = []
                meta = {}

                if objtype == "function":
                    meta[fname] = (rettype, '<return value>', None)  # dtype, intent, dimspec

                # protect against the ")" in "REAL(KIND=dp) function foo(..."
                i_objtype_start = line.find(objtype)
                i_objtype_end = i_objtype_start + len(objtype)
                if not header_ends(line[i_objtype_end:]):
                    state = ReaderState.CAPTURING_ARGLIST
                else:
                    state = ReaderState.CAPTURING_META

            elif state == ReaderState.CAPTURING_ARGLIST:
                if header_starts(line):
                    error("nested definition not supported (maybe missing 'end {objtype}' above?)".format(objtype=objtype))

                # capture function arguments from this line
                matches = re.findall(r"[^&)]+", line)  # all non-overlapping matches of pattern
                assert len(matches) == 1
                group = matches[0]                     # group from first match (only one; no tuple container)

                rawmoreargs = group.split(",")
                moreargs = [arg for arg in (s.strip() for s in rawmoreargs) if len(arg)]
                allargs.extend(moreargs)

                if header_ends(line):
                    state = ReaderState.CAPTURING_META

            # Parse parameter declarations.
            elif state == ReaderState.CAPTURING_META:
                if header_starts(line):
                    error("nested definition not supported (maybe missing 'end {objtype}' above?)".format(objtype=objtype))

                p_dtype = r"\b([^\s,]+)"                  # e.g. 'REAL*8'
                p_intent = r"(?:,\s*intent\((\w+)\))?"    # e.g. 'intent(in)'
                p_dimspec = r"(?:,\s*dimension\((.*)\))?" # e.g. '1:3, 1:1'
                p_anything = r".*"
                p_argname = r"::\s*(.*)"
                pattern = r"{dtype}\s*{intent}\s*{dimspec}\s*{anything}\s*{argname}".format(dtype=p_dtype,
                                                                                            intent=p_intent,
                                                                                            dimspec=p_dimspec,
                                                                                            anything=p_anything,
                                                                                            argname=p_argname)
                matches = re.findall(pattern, line)
                if len(matches):  # we have a parameter metadata decl on this line
                    assert len(matches) == 1  # all non-overlapping matches of pattern
                    groups = matches[0]       # groups of first match (since > 1 capturing groups present; see help(re.findall))

                    # Replace zero-length items (optional, no match) with None.
                    dtype, intent, dimspec, argname = (g or None for g in groups)

                    if intent not in ("in", "out", "inout"):
                        error("invalid intent '{intent}' for arg '{arg}'".format(intent=intent,
                                                                                 arg=argname))

                    if intent in ("out", "inout"):
                        outargs.append(argname)

                    meta[argname] = (dtype, intent, dimspec)

                if meta_ends(line):
                    inargs = [arg for arg in allargs if arg not in outargs]
                    commit(fname, inargs, outargs, allargs, meta)
                    state = ReaderState.SCANNING

            else:
                assert False, "Unknown reader state '{}'".format(state)

        # When we finish, the reader should be in the SCANNING state,
        # as always after a complete function/subroutine declaration.
        if state != ReaderState.SCANNING:
            error("unexpected end of file (maybe missing 'end {objtype}'?)".format(objtype=objtype))

        results[objtype] = result

    # Validate: no subroutine names may appear in (intent(in)) args of any function.
    #
    # We only support subroutines in the topmost layer of the "cake",
    # where the intent(out) args are exposed to the user in the public API,
    # and simply passed through to the underlying routine. This slightly
    # simplifies the code generator.
    #
    # The existing logic is sufficient for the pure-function interfaces
    # generated by SymPy, as well as the manually written interfaces
    # we will need to feed in in this project, where any output args
    # are intended only to be passed through, to the end user.
    #
    # TODO: (maybe later) support output args to generate dependent inputs?
    subroutine_names = {name for name,_,_,_,_ in results["subroutine"]}
    invalid = [(fname, arg) for fname,inargs,_,_,_ in results["function"]
                              for arg in inargs if arg in subroutine_names]
    if len(invalid):
        # checking a global property of the input, different message format.
        errors.append("Dependency from function to subroutine not supported; offending (function, subroutine) pairs: {invalid}".format(invalid=invalid))

    # report all errors at the end
    if len(errors):
        class ReaderError(ValueError):
            pass
        sep = "\n" + 4*" "
        raise ReaderError("encountered {nerr:d} error(s):{sep}{msgs}".format(nerr=len(errors),
                                                                             sep=sep,
                                                                             msgs=sep.join(errors)))

    return [([(name, allargs) for name,_,_,allargs,_ in recs],  # for write_stage2_object()
              {name: inargs for name,inargs,_,_,_ in recs},     # lookup
              {name: meta for name,_,_,_,meta in recs})         # metas
            for recs in (results[key] for key in sorted(results.keys()))]
