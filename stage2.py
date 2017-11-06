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

Created on Tue Oct 24 14:07:45 2017

@author: jje
"""

import re

from iterutil import uniqify

##############################################################################
# Local definitions
##############################################################################

_fileheader = \
"""!******************************************************************************
!*                 Code generated with mgs-galfenol-codegen                   *
!*                                                                            *
!*                 This file is part of 'elmer-mgs-galfenol'                  *
!******************************************************************************"""

##############################################################################
# Local utilities
##############################################################################

def fold_fortran_code(content, width=80):
    """Simplistic fold to n columns, breaking at whitespace."""
    lines = content.split(sep="\n")
    result = ""
    for input_line in lines:
        words = input_line.split()
        output_line = ""
        l = 0  # current length of output line
        for w in words:
            # 3 = space before w, space after w, &
            if l + len(w) < width - 3:
                if len(output_line):
                    addme = " %s" % (w)
                else:
                    addme = w
                output_line += addme
                l += len(addme)
            else:
                if len(output_line):
                    output_line += " &\n"    # Fortran line continuation...
                    result += output_line
                    output_line = 6*" " + w  # ...and indent
                else:
                    output_line = w
                l = len(output_line)
        result += (output_line + "\n")
    return result

##############################################################################
# stage2 code generator
##############################################################################

class CodeGenerator:
    """Generate code to call the sequences of functions generated by SymbolicModelDeriver."""

    def __init__(self, data):
        """Constructor.

        Parameters:
            data: tuple of tuples
                Each item should have (label, filename, content).
                This is the output format of SymbolicModelDeriver.run().
"""
        # we need to analyze only the interfaces (headers, ".h")
        self.data = [(label,fn,content) for label,fn,content in data if fn.endswith(".h")]

    @staticmethod
    def analyze_interface(code):
        """Extract function call dependencies from a Fortran interface.

        This is very simplistic, and likely specific to code generated
        by SymPy's code generator.

        Only functions are supported; subroutines are ignored.

        Parameters:
            code: str
                Content of a Fortran interface (".h" file), as a single string.

        Return value: (funcs, lookup), where
            funcs: tuple of tuples
                Each item has the format (fname, (arg1, arg2, ..., argn))
                Ordering of the args is preserved.

            lookup: dictionary
                lookup[fname] = (arg1, arg2, ..., argn)
                This is provided for convenience.
"""
        # HACK: We parse by regex matching. Use a proper Fortran parser?
        #
        from enum import Enum
        class ReaderState(Enum):
            SCANNING  = 0
            CAPTURING = 1

        def commit(fname, fargs):
            result.append( (fname, fargs) )

        def function_header_ends(line):
            endparen = re.findall(r"\)", line)
            return (len(endparen) > 0)

        result = []
        state = ReaderState.SCANNING
        for line in code.split("\n"):
            if state == ReaderState.SCANNING:
                # match "function" but not "end function" (see "help re")
                m = re.findall(r"(?<!\bend\b)\s+\bfunction\b", line)

                if len(m):  # if found, start capturing
                    # - skip keyword "function" and whitespace
                    # - capture function name (non-whitespace, 1 or more)
                    # - then skip "("
                    # - finally capture arguments:
                    #     - up to end of line, 0 or more of anything that is not "&" or ")"
                    #     - *0* or more because some functions might not take any arguments!
                    matches = re.findall(r"\bfunction\b\s+(\S+)\(([^&)]*)", line)
                    assert len(matches) == 1  # should be just one match for the whole regex
                    groups = matches[0]

                    fname = groups[0]
                    fargs = groups[1].strip().split(",")
                    fargs = [s.strip() for s in fargs if len(s.strip())]
#                    print("Function '%s'" % (fname))  # DEBUG

                    # Before we change state, we must check whether the whole
                    # function header was on this line.
                    #
                    # If so, commit and resume scanning; else change state
                    # to capture the rest of fargs from the following lines.
                    #
                    if function_header_ends(line):
                        commit(fname, fargs)
                    else:
                        state = ReaderState.CAPTURING

            elif state == ReaderState.CAPTURING:
                # capture function arguments from this line
                groups = re.findall(r"[^&)]+", line)  # one group only, no wrapper
                morefargs = groups[0].strip().split(",")
                morefargs = [s.strip() for s in morefargs if len(s.strip())]
                fargs.extend(morefargs)

                # If these were the last fargs, commit and resume scanning.
                if function_header_ends(line):
                    commit(fname, fargs)
                    state = ReaderState.SCANNING

            else:
                assert False, "Unknown reader state"

        # When we finish, the reader should NOT be in the CAPTURING state,
        # as that indicates that a function header was not terminated correctly.
        #
        if state == ReaderState.CAPTURING:
            raise ValueError("End of file while capturing function arguments for '%s'" % (fname))

        return (result, {fname:args for fname,args in result})

    def analyze_args(self, args, recurse, _level=0):
        """Split args to bound and free sets.

        Any arg names that exist in ``self.lookup[]`` are considered to be
        bound to those functions.

        All other arguments are considered free.

        Parameters:
            args: tuple of str
                Formal arguments of a stage1 generated function. These are,
                generally, names of other stage1 generated functions or
                free arguments. See ``analyze_interface()``.

            recurse: bool
                If True, recurse into ``args``.

                If False, analyze only the local level.

            _level: int
                Internal parameter that keeps track of the depth of recursion,
                i.e. how deep in the call tree the arg is needed.

                (Just leave this at its default value.)

        Returns:
            set of ``(level,arg)`` pairs
                where ``level`` is the recursion depth where ``arg`` was seen.

                0 means top level.

                ``i > 0`` means "needed by level ``i-1``".

                The same arg may appear at multiple levels; in this case,
                each level has its own instance in the results.
"""
        # Implemented using mutual recursion:
        #   - analyze_args() injects the level information into a raw args list
        #   - _analyze_args_internal() does the rest of the work
        return self._analyze_args_internal([(_level,arg) for arg in args], recurse)
    def _analyze_args_internal(self, args, recurse):
        bound = set()
        free  = set()
        for item in args:
            level,arg = item
            if arg in self.lookup:  # if we know a stage1 function of this name
                bound.add((level,arg))
                if recurse:
                    b,f = self.analyze_args(self.lookup[arg], recurse, level+1)
                    bound.update(b)
                    free.update(f)
            else:
                free.add((level,arg))
        return (bound,free)

    @staticmethod
    def make_sortkey(primary="level", reverse_primary=False, reverse_secondary=False):
        """Sort helper for output of analyze_args().

        Parameters:
            primary: str
                "level": level first, then name as tie-breaker
                "name": name first, then level as tie-breaker

        Returns:
            lambda item: ... that can be used in ``sorted()`` as ``key``.
"""
        if primary not in ("level","name"):
            raise ValueError("Unknown primary sort criterion '%s'; valid: 'level', 'name'" % (primary))
        indx0 = 0 if primary == "level" else 1
        indx1 = 1 - indx0
        sign0 = -1 if reverse_primary else +1
        sign1 = -1 if reverse_secondary else +1
        return lambda item: (sign0*item[indx0], sign1*item[indx1])

    @staticmethod
    def strip_levels(args):
        """Strip level information from output of analyze_args()."""
        return [arg for (_,arg) in args]

    def validate_bound_args(self, bound):
        """Validate bound args.

        If this check passes, it proves that the dependencies between the
        functions declared in the analyzed Fortran interface are NOT:

          - recursive (a function calling into itself or into any parent
                       on its call stack)
          - mutually recursive (a calling b, b calling a)
            - the calls may be in different call chains

        on the condition that ``analyze_interface()`` and ``analyze_args()``
        are implemented correctly.

        (We still need to rely on other means to make sure that the stage2
        analyzer and code generator are correct.)

        Parameters:
            bound: set of ``(level,arg)`` pairs
                as output by ``analyze_args()`` with ``recursive=True``.

        Returns:
            None
                ``ValueError`` is raised if the check fails.
"""
#    # This global property is *not* satisfied by our code; e.g. in d2phi_dBx2,
#    # I5 (max level 1) needs exx (min level 1 due to use elsewhere).
#    # Thus, we must do a local check instead.
#    #
#        # Find the shallowest (min) and deepest (max) level where
#        # each bound arg was seen.
#        #
#        args = self.strip_levels(bound)
#        arg_to_level = {}
#        for arg in args:
#            levels = [l for (l,a) in bound if a == arg]
#            minlevel = min(levels)
#            maxlevel = max(levels)
#            arg_to_level[arg] = (minlevel,maxlevel)
#
#        # Validate.
#        #
#        # - Each arg may only call into args having levels strictly deeper
#        #   than its own maxlevel. (The arg must be evaluable at *all* of its
#        #   call sites, whence especially at the deepest one.)
#        #
#        # - When the arg calls another arg, the minlevel *of the other arg*
#        #   must be > maxlevel *of this arg* (also to make sure that this arg,
#        #   at its deepest call site, is evaluable).
#        #
#        # We dont need to recurse, because analyze_args() already gives us
#        # a flattened list of all occurrences of each arg.
#        #
#        for arg,levels in arg_to_level.items():
#            minlevel,maxlevel = levels
#            deps = self.lookup[arg]  # other args this arg depends on
#            for a in deps:
#                if a in args:  # only validate if a is bound (free args may occur anywhere)
#                    almin,almax = arg_to_level[a]  # max level where a was seen
#                    if almin > maxlevel:
#                        continue
#                    raise ValueError("%s (max level %d) requires %s (min level %d); recursive calls not supported by this code generator" % (arg,maxlevel,a,almin))

        # So, let's check the following local property: each call chain
        # must not call anything already seen in that particular call chain.
        #
        # Also, we disallow mutual recursion: if "a" is in the set of callers
        # of "b", then "b" must not be in the set of callers of "a".

        # check top level; we should be given only bound args
        args = self.strip_levels(bound)
        for toplevel_arg in args:
            if toplevel_arg not in self.lookup:
                raise ValueError("Got free top-level arg %s; only bound args supported by this checker" % (toplevel_arg))

        # Sets of callers of each bound var, for mutual recursion detection.
        #
        # Basically the callers of "func" are the content of the call stack
        # just before we push "func" itself onto the stack. (This includes
        # "implicit" callers, in the sense that f in f(g(h(x))) implicitly
        # calls h, because g does.)
        #
        # (To collect only the explicit callers, we would take only the
        #  current topmost item in the call stack.)
        #
        # The sets of callers are built globally across all call chains;
        # the set for "func" is updated with any new callers of "func"
        # detected in any call chain.
        #
        callers_of = {}
        def update_callers_of(k,v):
            if k not in callers_of:
                callers_of[k] = v
            else:
                callers_of[k].update(v)

        # Validate each chain individually.
        #
        def process(arg, callstack):
            # - We want to track *each chain of calls* independently.
            #   (E.g. in dwp_dI6 in the 3par model, both I5 and I6,
            #    at the same level, depend on exx.)
            # - Python is call-by-sharing (call-by-object).
            # - Hence, to avoid munging caller's "callstack", we create a copy.
            # - This makes "callstack" what it says on the tin, for the
            #   current chain of calls.
            if arg in self.lookup:  # only validate if arg is bound (free args may occur anywhere along the chain)
                if arg in callstack:
                    raise ValueError("Top-level arg %s: recursive call to %s not allowed (current call stack: %s)" % (toplevel_arg,arg,callstack))
                update_callers_of(arg, set(callstack))
                s = callstack.copy()
                s.append(arg)
                for a in self.lookup[arg]:  # recurse into the call tree
                    process(a, s)
        for toplevel_arg in args:
            process(toplevel_arg, list())

        # Detect mutual recursion between chains.
        #
        # TODO: improve error message? (what information do we need to store to pinpoint the location of the error?)
        #
        for a in callers_of.keys():     # a = the thing being called
            for b in callers_of[a]:     # b = its callers (i.e. each b is known to call a, at least implicitly)
                if a in callers_of[b]:  # so if a calls b (even if implicitly), there is mutual recursion
                    raise ValueError("mutual recursion (possibly implicit) detected between %s and %s (callers of %s: %s; callers of %s: %s)" % (a,b,a,callers_of[a],b,callers_of[b]))

    def run(self):
        """Generate the high-level code."""

        generated_code_output = []
        for i,item in enumerate(self.data):
            label,input_filename,content = item

            print("(%d/%d) Generating wrappers for '%s'" % (i+1, len(self.data), input_filename))

            output = _fileheader

            # Parse dependencies between the stage1 generated functions.
            #
            funcs,self.lookup = self.analyze_interface(content)

            # TODO: consolidated version that does not re-compute everything
            # (e.g. I6) for each output tensor component, but computes once
            # and re-uses the result.

            # To write the wrapper for a function f, we need two things:
            #
            #  - free args needed by f or anything it calls, recursively
            #      -> add to arg list of wrapper
            #  - bound args needed by f, locally
            #      -> call them in the function body of the wrapper,
            #         then use the obtained values
            #
            # This binds values to all arguments of f; we may then assign
            # them to temporary variables and call the original f.
            #
            # Note that in any *calls*, we must use data from funcs
            # (or lookup), because they preserve the original ordering
            # of args (which are positional in Fortran!); the sets of
            # bound and free arguments are only used for deciding
            # which action to perform with each symbol.
            #
            for fname,args in funcs:
#                # DEBUG
#                print(fname)
#                for arg in args:
#                    print("\t%s" % (arg))

                rbound,rfree = self.analyze_args(args, recurse=True)   # r=recursive
                lbound,lfree = self.analyze_args(args, recurse=False)  # l=local
#                print(fname, lbound, rfree)

                def sorted_by(key):
                    return lambda data: sorted(data, key=key)
                sorted_by_name = sorted_by(self.make_sortkey(primary="name"))
                sorted_by_level_rev = sorted_by(self.make_sortkey(primary="level", reverse_primary=True))

#                print(fname, self.strip_levels(sorted_by_name(lbound)),
#                             self.strip_levels(sorted_by_name(lfree)))
#                print(fname, sorted_by_name(rbound), sorted_by_name(rfree))

                # Check that the declared interface doesn't imply
                # anything silly that is not supported by this stage2
                # code generator
                #
                # (concerning the use of the bound variables, which are
                #  defined by the stage1 generated functions)
                #
                self.validate_bound_args(rbound)

                # TODO: generate both .f90 and .h

                # Function header
                #
                wname = "%s_public"% (fname)  # wrapper name
                output += "\nREAL*8 function %s(" % (wname)
                freevars = sorted(uniqify(self.strip_levels(rfree)))
                output += ", ".join(freevars)
                output += ")\n"

                # argument declarations (free variables only!)
                output += "implicit none\n"
                for var in freevars:
                    output += "REAL*8, intent(in) :: %s\n" % (var)
                output += "\n"  # end argument declarations with blank line

                # TODO: function body:
                #   TODO: declarations for variables for computed quantities
                #   TODO: compute, save to variable (in reverse order of levels)
                #   TODO: keep track of what already computed and name saved under
                #   TODO: call the main function for this wrapper
                output += "%s = ...\n" % (wname)  # TODO: result

                output += "\n"  # end function body with blank line
                output += "end function\n"

#            # DEBUG/TEST Fortran code folding
#            output += "diipa daapa " * 20
#            output += " "
#            output += "e" * 90
#            output += " "
#            output += "diipa daapa " * 20

            print(fold_fortran_code(output))  # DEBUG

#            output_basename = "mgs_%s" % (label)
#            output_implname = "%s.f90" % (output_basename)
#            output_intfname = "%s.h"   % (output_basename)

#            generated_code_output.append( (label, output_implname, output_impl) )
#            generated_code_output.append( (label, output_implname, output_intf) )

        return generated_code_output

##############################################################################
# Testing
##############################################################################

def test():
    # TODO: just load files to run s2 test faster?
    import stage1
    s1gen = stage1.CodeGenerator()
    s1code = s1gen.run()

    s2gen = CodeGenerator(s1code)  # stage2 i.e. ours
    s2code = s2gen.run()

    # TODO: write to files

if __name__ == '__main__':
    test()
