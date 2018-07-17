#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""Code generator for evaluating the partial derivatives of the potential ϕ.

stage2.py takes in the code generated by stage1. It analyzes the dependencies
between the functions, and generates wrapper functions, where all bound symbols
(quantities defined by any of the stage1 generated functions) are automatically
computed, by calling the standalone pieces generated in stage1 (recursing
where necessary).

Each function generated by stage2 takes in values only for the free symbols
(quantities *not* defined by any of the stage1 generated functions)
encountered anywhere in its call tree. This makes e.g. ∂²ϕ/∂Bx² "see" the
dependencies on e.g. u0, I4, and εxx.

Note that "free symbol" is here meant in the mathematical sense; in the
programming sense, these "free symbols" appear in the argument list
of the function being generated, so they are bound names.

Created on Tue Oct 24 14:07:45 2017

@author: Juha Jeronen <juha.jeronen@tut.fi>
"""

import re

from iterutil import uniqify
from util import fold_fortran_code, TextMultiBuffer

_outfileheader = \
"""!******************************************************************************
!*              Code generated with mgs-galfenol-codegen stage2               *
!*                                                                            *
!* See https://github.com/TUTElectromechanics/mm-codegen for more information *
!*                                                                            *
!*                 This file is part of 'elmer-mgs-galfenol'                  *
!******************************************************************************
"""

class CodeGenerator:
    """Generate stage2 code (public API) for the stage1 code (internal functions)."""

    # no constructor, this is OOFP with just static and class methods.

    @staticmethod
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
        for objtype in ("function", "subroutine"):
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
                        raise ValueError("'{fname}' declares the following intent(out) or intent(inout) args (in alphabetical order): {invalid}".format(fname=fname,
                                                                                                                                                        invalid=invalid_args))
                # Require metadata for all arguments to keep things explicit.
                # (Alternatively, we could generate any missing metadata. The
                #  code generator relies on the metadata always being present.)
                invalid_args = sorted((arg for arg in allargs if arg not in meta), key=str.lower)
                if len(invalid_args):
                    raise ValueError("'{fname}' missing intent declaration for args (in alphabetical order): {invalid}".format(fname=fname,
                                                                                                                               invalid=invalid_args))

                result.append((fname, inargs, outargs, allargs, meta))

            result = []
            state = ReaderState.SCANNING
            for line in code.split("\n"):
                if state == ReaderState.SCANNING:
                    p_notend = r"(?<!\bend\b\s)"  # (?<!...) is "match if not preceded by" (see help(re))
                    p_objtype = r"\b{objtype}\b".format(objtype=objtype)
                    pattern = r"{notend}\s*{objtype}".format(notend=p_notend,
                                                             objtype=p_objtype)
                    matches = re.findall(pattern, line)

                    if len(matches):  # if found, start capturing
                        assert len(matches) == 1  # should be just one match for the whole regex

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

                        if not header_ends(line):
                            state = ReaderState.CAPTURING_ARGLIST
                        else:
                            state = ReaderState.CAPTURING_META

                elif state == ReaderState.CAPTURING_ARGLIST:
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
                            raise ValueError("In '{fname}': invalid intent '{intent}' for arg '{arg}'; valid: 'in', 'out' or 'inout'".format(fname=fname,
                                                                                                                                             intent=intent,
                                                                                                                                             arg=argname))

                        if intent in ("out", "inout"):
                            outargs.append(argname)

                        meta[argname] = (dtype, intent, dimspec)

                    if meta_ends(line):
                        inargs = [arg for arg in allargs if arg not in outargs]
                        commit(fname, inargs, outargs, allargs, meta)
                        state = ReaderState.SCANNING

                else:
                    assert False, "Unknown reader state"

            results[objtype] = result

        # When we finish, the reader should be in the SCANNING state,
        # as always after a complete function declaration.
        if state != ReaderState.SCANNING:
            raise ValueError("Unexpected end of file while processing '{fname}'".format(fname=fname))

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
            raise ValueError("Dependency from function to subroutine not supported; offending (function, subroutine) pairs follow: {invalid}".format(invalid=invalid))

        return [([(name, allargs) for name,_,_,allargs,_ in recs],  # for write_stage2_object()
                  {name: inargs for name,inargs,_,_,_ in recs},     # lookup
                  {name: meta for name,_,_,_,meta in recs})         # metas
                for recs in (results[key] for key in sorted(results.keys()))]

    @staticmethod
    def analyze_args(fname, args, lookup, recurse):
        """Split args of stage1 function ``fname`` into bound and free sets.

        Any arg that exists as a key in ``lookup`` is considered to be bound
        to that function.

        All other arguments are considered free.

        Parameters:
            fname: str
                Name of the stage1 function being analyzed.

            args: tuple of str
                Names of formal parameters of fname. Each arg is, generally:
                  a) the name of another stage1 function, or
                  b) a free argument (anything not defined by a stage1 function).
                See ``analyze_interface()``.

            lookup: dict(str -> list(str))
                Function name (for all functions) to list of its inargs.

            recurse: bool
                If True, recurse into ``args`` with the help of ``lookup``.
                If False, analyze ``args`` themselves only.

        Returns:
            tuple (bound, free), where each item is:
              set of ``(level, arg, fname)`` tuples (argument records, argrecs):
                where
                  ``level`` (int) is the recursion depth where ``arg`` was
                  seen. A ``level`` of 0 means top level. A level ``i > 0``
                  means "needed as a dependency from level ``i-1``".

                  ``arg`` (str) is the argument name.

                  ``fname`` (str) is the name of the function whose argument
                  ``arg`` is. Can be used to retrieve metadata (such as dtype
                  and dimspec) from the results of the interface analyzer.

                The same arg may appear at multiple levels; in this case,
                each level has its own instance in the results. If you need
                just the names, see ``strip_argrecs()``.
        """
        def analyze(fname, args, level):
            bound = set()
            free  = set()
            for arg in args:
                if arg in lookup:  # if we know a stage1 function of this name
                    bound.add((level, arg, fname))
                    if recurse:
                        b, f = analyze(arg, lookup[arg], level+1)
                        bound.update(b)
                        free.update(f)
                else:
                    free.add((level, arg, fname))
            return (bound, free)
        return analyze(fname, args, level=0)

    @staticmethod
    def strip_argrecs(argrecs):
        """Strip all except the argument names from an output set of analyze_args()."""
        return tuple(uniqify([arg for (_, arg, _) in argrecs]))  # level, arg, fname

    @classmethod
    def validate_bound_args(cls, bound, lookup):
        """Validate bound args.

        If validation passes, it proves that the dependencies (as declared
        by the formal parameter names) between the functions in the stage1
        Fortran interface are NOT:
          - recursive (calling itself or any parent on its call stack)
          - mutually recursive (a calling b and b calling a; detected even if
                                the calls are in different call chains)

        Parameters:
            bound: set of ``(level, arg, fname)`` (int, str, str) tuples
                as output by ``analyze_args()`` with ``recurse=True``.
                (Note: supply the bound set only!)

            lookup: dict(str -> list(str))
                Function name (for all functions) to list of its inargs.

        Returns:
            None. ``ValueError`` is raised if the validation fails.
        """
        # Check top level; we should be given only bound args.
        fnames = cls.strip_argrecs(bound)  # the **args** are the fnames to validate.
        invalid_args = [fname for fname in fnames if fname not in lookup]
        if len(invalid_args):
            raise ValueError("Got free top-level fname(s) {invalid}; validator checks only bound args".format(invalid=invalid_args))

        # Sets of callers of each bound var, for mutual recursion detection.
        #
        # The callers of "func" are the content of the call stack just before
        # we push "func" itself onto the stack. This includes "implicit" callers,
        # in the sense that f in f(g(h(x))) implicitly calls h, because g does.
        #
        # (To collect only the explicit callers, we would take only the
        #  current topmost item in the call stack.)
        #
        # The sets of callers are built globally across all call chains;
        # the set of callers of "func" is updated with any new callers
        # of "func" encountered in any call chain.
        #
        callers_of = {}  # str: set
        def update_callers_of(k, more):
            if k not in callers_of:
                callers_of[k] = more
            else:
                callers_of[k].update(more)

        # Validate each chain individually. As a side effect, build callers_of.
        r = []  # for error reporting
        def process(fname, callstack):
            # Track *each chain of calls* independently. (E.g. in dwp_dI6 in
            # the 3par model, both I5 and I6, at the same level, depend on exx.)
            if fname in lookup:  # check bound only; may have free args at deeper levels
                if fname in callstack:  # recursive call, not allowed
                    r.append((toplevel_fname, fname, callstack))
                update_callers_of(fname, set(callstack))
                new_callstack = callstack + [fname]
                for dependency in lookup[fname]:
                    process(dependency, new_callstack)
        for toplevel_fname in fnames:
            process(toplevel_fname, [])
        if len(r):
            raise ValueError("recursion detected; (top-level fname, target, callstack) info follows: {invalid}".format(invalid=", ".join(str(item) for item in r)))

        # Detect mutual recursion between different call chains.
        # a = the thing being called; b = its callers
        mr = [(a, b) for a in callers_of.keys() for b in callers_of[a] if a in callers_of[b]]
        if len(mr):
            raise ValueError("mutual recursion (possibly implicit) detected, function pair(s): {invalid}".format(invalid=mr))

    # When writing stage2 code, arguments of stage1 functions may be:
    #
    #  - Free arguments, for which no stage1 function exists.
    #      - Must be supplied by end user; add to arg list of stage2 wrapper.
    #      - May appear deeper in the call tree; propagate also those to the
    #        top-level wrapper.
    #  - Bound arguments, obtainable as the return value of a stage1 function.
    #      - Call the stage1 function in the wrapper body, then use the result.
    #        Resolve any dependencies recursively.
    #      - Processing in descending order of call tree depth, of the deepest
    #        instance of each bound arg, we always have its dependencies, since:
    #          1) No recursion or mutual recursion in the call tree
    #          2) The leaves of the call tree depend only on free args (at most)
    #      - Optimization: in a single call, we may re-use the stage1 results
    #        as many times as we need, because stage1 consists of pure functions.
    #
    @classmethod
    def write_stage2_object(cls, objtype, stage1_oname, stage1_args, metas, lookup, outbuf):
        """Write stage2 function/subroutine wrapper (public API) for a stage1 function/subroutine.

        Parameters:
            objtype: str, one of:
                "function", "subroutine"
            stage1_oname: str
                Name of the stage1 function/subroutine.
            stage1_args: list(str)
                All arguments of the stage1 function/subroutine, in original order.
            metas: dict(str -> metarec)
                Lookup table of metadata records of all objects.
                key = function name, value = corresponding metarec.
            lookup: dict(str -> list(str))
                Lookup table of intent(in) args of all functions.
                (Functions only, as we do not allow subroutines as dependencies.)
            outbuf: util.TextMultiBuffer
                Where to write the output. Keyed under ".f90" and ".h".

        Returns:
            None. Mutates outbuf instead!
        """
        key_impl = ".f90"
        key_intf = ".h"
        key_both = (key_impl, key_intf)

        # Get the dtype of the return value of a stage1 function.
        def rettype_of(fname):
            metarec = metas[fname]  # metadata record for fname
            retval_meta = metarec[fname]    # return value metadata: key in metarec = function name itself
            dtype, _, _ = retval_meta
            return dtype

        # Sort by level (descending), then by name.
        def level_sortkey(argrec):
            level, argname, fname = argrec
            return (-level, argname)

        # Sort by intent, then lexicographically.
        def intent_sortkey(argrec):
            level, argname, fname = argrec
            metarec = metas[fname]  # metadata record for function whose argument this is
            _, intent, _ = metarec[argname]
            return (intent, argname)  # "in" sorts before "inout" and "out" so we're good.

        # Analyze all args, because intent(out) args for subroutines are
        # also free; must be detected as such for the post-binding validation.
        bound_set, free_set = cls.analyze_args(stage1_oname, stage1_args,
                                               lookup, recurse=True)

        # Check that we can handle the declared dependencies between the bound args.
        cls.validate_bound_args(bound_set, lookup)

        # Find the function (in the call chain) in whose arguments each freevar
        # originally appears; needed to access the metadata for the freevar.
        #
        # DANGER: slight oversimplification:
        #   We assume all instances of a freevar with the same name mean the same thing!
        #
        arg_to_metasrc = {arg: fname for _,arg,fname in free_set}

        # Order free args by intent ("in" first), then lexicographically.
        # Order bound args by level, descending, for dependency resolution.
        # uniqify(), as the same arg may appear at different levels.
        freevars = cls.strip_argrecs(sorted(free_set, key=intent_sortkey))
        boundvars = cls.strip_argrecs(sorted(bound_set, key=level_sortkey))

        # output: function header
        return_decl = "{rettype} ".format(rettype=rettype_of(stage1_oname)) if objtype == "function" else ""

        stage2_oname = "{name}_public".format(name=stage1_oname)  # name of public API function/subroutine to write
        outbuf.append(key_both, "\n")
        outbuf.append(key_intf, "interface\n")
        outbuf.append(key_both, "{return_decl}{objtype} {name}(".format(return_decl=return_decl,
                                                                        objtype=objtype,
                                                                        name=stage2_oname))
        outbuf.append(key_both, ", ".join(freevars))
        outbuf.append(key_both, ")\n")

        # output: argument declarations for the public API function (free args only!)
        outbuf.append(key_both, "implicit none\n")
        for fvar in freevars:
            # Get the metadata record for the function whose argument
            # this freevar originally is.
            #
            # DANGER: slight oversimplification:
            #   We assume all instances of a freevar with the same name mean the same thing!
            #   (So it doesn't matter even if we get the "wrong" metasrc, as long as
            #    it takes this freevar as an argument.)
            #
            metarec = metas[arg_to_metasrc[fvar]]
            dtype, intent, dimspec = metarec[fvar]

            if dimspec is not None:
                outbuf.append(key_both, "{dtype}, intent({intent}), dimension({dimspec}) :: {argname}\n".format(dtype=dtype,
                                                                                                                intent=intent,
                                                                                                                dimspec=dimspec,
                                                                                                                argname=fvar))
            else:
                outbuf.append(key_both, "{dtype}, intent({intent}) :: {argname}\n".format(dtype=dtype,
                                                                                          intent=intent,
                                                                                          argname=fvar))

        # Declare any needed localvars and populate them by calls to
        # the stage1 functions represented by boundvars.

        bound_to_local = {}  # populated later
        def bind_to_locals(names):
            result = [(bound_to_local[name] if name in boundvars else name) for name in names]
            # sanity check: each bound arg in names should now be bound to
            # something, so the result should have only localvars or freevars.
            localvars = bound_to_local.values()
            invalid_args = [name for name in result if name not in localvars and name not in freevars]
            if len(invalid_args):
                raise RuntimeError("post-binding check: undefined symbol(s) {invalid}, neither in localvars nor in freevars".format(invalid=invalid_args))
            return result

        # We must first process all boundvars to generate all of localvars,
        # but we must output the declarations of all localvars first,
        # before writing the calls to the boundvar functions (that then
        # populate the localvars). Solution: use a temporary buffer.
        lvar_code = ""
        for bvar in boundvars:  # follow the ordering by level, descending (deepest first)
            lvar = "{boundvar}_".format(boundvar=bvar)
            # Write code to call the stage1 function for this boundvar.
            #
            # The descending level ordering makes sure that the arguments of
            # each generated call will contain only vars that already have
            # a localvar, or free vars. In each call, no unbound vars remain.
            #
            # Take the argument list from lookup[], because it preserves
            # the ordering of the args (which are positional in Fortran).
            #
            # TODO later: if no function name matches an input arg,
            # we could check if there is a subroutine that provides
            # it as one of its output args, and call it.
            bvar_args = ", ".join(bind_to_locals(lookup[bvar]))
            lvar_code += "{localvar} = {boundvar}({args})\n".format(localvar=lvar,
                                                                    boundvar=bvar,
                                                                    args=bvar_args)
            bound_to_local[bvar] = lvar  # later calls can bind to this result
        if len(boundvars):
            lvar_code += "\n"

        # output: declare localvars
        for bvar in boundvars:  # use same ordering as boundvars, for readability
            outbuf.append(key_impl, "{rettype} {localvar}\n".format(rettype=rettype_of(bvar),
                                                                    localvar=bound_to_local[bvar]))

        # output: evaluate localvars
        outbuf.append(key_impl, "\n")
        outbuf.append(key_impl, lvar_code)

        # output: call the wrapped stage1 function
        final_args = ", ".join(bind_to_locals(stage1_args))
        if objtype == "function":
            outbuf.append(key_impl, "{retname} = {stage1_name}({args})\n".format(retname=stage2_oname,
                                                                                 stage1_name=stage1_oname,
                                                                                 args=final_args))
        else: # objtype == "subroutine":
            outbuf.append(key_impl, "{stage1_name}({args})\n".format(stage1_name=stage1_oname,
                                                                     args=final_args))

        outbuf.append(key_impl, "\n")
        outbuf.append(key_both, "end {objtype}\n".format(objtype=objtype))
        outbuf.append(key_intf, "end interface\n")

    @classmethod
    def run(cls, s1code):
        """Generate the stage2 code (i.e. the public API) based on stage1 code.

        Parameters:
            s1code: tuple of tuples, stage1 code.
                Each item should have (label, filename, content).
                This is the output format of stage1.CodeGenerator.run().

                If you need additional user-defined interfaces, just paste them
                to the end of content before calling run().

        Returns:
            tuple of tuples, stage2 code. Each item has the format:
                (label, output_filename, content)
        """
        # We need only interfaces (headers, ".h"); skip everything else.
        stage1_intf = [(l, f, c) for l, f, c in s1code if f.endswith(".h")]

        generated_code_out = []
        for i, (label, input_filename, content) in enumerate(stage1_intf):

            progress_header_outer = "({iteration:d}/{total:d})".format(iteration=i+1, total=len(stage1_intf))
            print("stage2: {outer_progress} {label} model: generating public API based on '{file}'".format(outer_progress=progress_header_outer,
                                                                                                           label=label,
                                                                                                           file=input_filename))

            data_funcs, data_subroutines = cls.analyze_interface(content)

            # The bound args lookup table is determined by the functions only,
            # since we do not allow subroutines to appear as a dependency.
            _, lookup, _ = data_funcs

            # Map function/subroutine names to their parameter metadata.
            #
            # Both functions and subroutines need access to the metadata
            # of functions (for processing dependencies).
            def objname_to_meta():
                _, _, fmeta = data_funcs
                _, _, smeta = data_subroutines
                out = fmeta.copy()
                out.update(smeta)
                return out
            metas = objname_to_meta()

            # Text of implementation and interface will be added into named
            # buffers. This is convenient because they are mostly identical.
            outbuf = TextMultiBuffer()

            # Generate public API for functions, then for subroutines.
            for objtype, (objs, _, _) in (("function",   data_funcs),
                                          ("subroutine", data_subroutines)):
                for j, (stage1_oname, stage1_args) in enumerate(objs):

                    progress_header_inner = "({iteration:d}/{total:d})".format(iteration=j+1, total=len(objs))
                    progress_header = "{outer_progress} {inner_progress}".format(outer_progress=progress_header_outer,
                                                                                 inner_progress=progress_header_inner)
                    print("stage2: {header} {label} model: public API for {objtype} {name}".format(header=progress_header,
                                                                                                   label=label,
                                                                                                   objtype=objtype,
                                                                                                   name=stage1_oname))

                    cls.write_stage2_object(objtype, stage1_oname, stage1_args,
                                            metas, lookup, outbuf)  # mutates outbuf!

            # Generate the final code for the output files.
            outfile_basename = "mgs_{label}".format(label=label)
            for key in sorted(outbuf.keys()):
                outfile_name = "{basename}{file_ext}".format(basename=outfile_basename, file_ext=key)
                final_code = _outfileheader + fold_fortran_code(outbuf[key])
                generated_code_out.append((label, outfile_name, final_code))

        return generated_code_out

##############################################################################
# Main program (stage2 only)
##############################################################################

def load_stage1_files():
    """Load stage1 data from disk and return list of tuples (label,filename,content)."""
    def relevant(filename):
        return len(re.findall(r"[23]par_impl.*\.(f90|h)", filename))
    def npar(filename):
        groups = re.findall(r"(\d+par)", filename)  # 2par, 3par
        return groups[0]
    import os
    path = "."
    just_files = [x for x in os.listdir(path) if os.path.isfile(os.path.join(path, x))]
    matching_files = [x for x in just_files if relevant(x)]
    if not len(matching_files):
        raise(ValueError("No stage1 files found; please generate them first by running stage1.py."))
    s1code = []
    for filename in matching_files:
        label = npar(filename)
        with open(filename, "rt", encoding="utf-8") as f:
            content = f.read()
        s1code.append((label,filename,content))
    return s1code

def add_user_intfs(s1code, user_intfs):
    """Add in user-defined stage1 interfaces.

    We just paste them to the end, so they get handled on equal footing
    with any stage1 generated code.

    The tag "{label}" is replaced by the label from the model.
    """
    new_intf = []
    for l, f, c in s1code:
        for filename in (fn.format(label=l) for fn in user_intfs):
            print("stage2: {label} model: reading user API '{file}'".format(label=l, file=filename))
            with open(filename, "rt", encoding="utf-8") as file:
                content = file.read()
            c += content
        new_intf.append((l, f, c))
    return new_intf

def main():
#    # we could call stage1, like this:
#    import stage1
#    s1code = stage1.CodeGenerator.run()

    # But we can just load stage1 files to be able to run s2 standalone
    # (much faster if no need to update the stage1 files; stage1 is slow
    #  since it needs to do a lot of symbolic math).
    s1code = load_stage1_files()
    s1code = add_user_intfs(s1code, ("mgs_{label}_phi.h", "mgs_physfields.h"))  # FIXME: hardcoded for now

    s2code = CodeGenerator.run(s1code)  # stage2 CodeGenerator

    for label, filename, content in s2code:
        print("stage2: writing {file} for {label}".format(file=filename, label=label))
        with open(filename, "wt", encoding="utf-8") as f:
            f.write(content)

if __name__ == '__main__':
    main()
