#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""Code generator for evaluating the partial derivatives of the potential ϕ.

ϕ = ϕ(u,v,w). The derivatives ∂ϕ/∂u, ∂ϕ/∂v, ∂ϕ/∂w must be externally supplied.

In terms of these ∂ϕ/∂u, ∂ϕ/∂v, ∂ϕ/∂w, any partial derivatives introduced
by the chain rule are automatically generated.

Created on Tue Oct 24 14:07:45 2017

@author: Juha Jeronen <juha.jeronen@tut.fi>
"""

import sympy as sy
from sympy.utilities.codegen import codegen  # not imported by default

import symutil
import util

from model import Model  # TODO: parameterize this?

class CodeGenerator:
    """Generate stage1 Fortran code (internal functions)."""

    # no constructor, this is OOFP with just static and class methods.

    @staticmethod
    def run():
        """Generate stage1 Fortran code for both 2-parameter and 3-parameter models."""

        # TODO: maybe take a Model as input?
        models = (Model(kind="2par"), Model(kind="3par"))

        generated_code_out = []
        for i,model in enumerate(models):
            label = model.kind
            progress_header_outer = "(%d/%d)" % (i+1, len(models))
            print("stage1: %s %s model: initializing" % (progress_header_outer, label))

            api = model.define_api()
            helpers = model.define_helpers()

            # Scan each API function defined by the model to see if we need to
            # differentiate any helpers to be able to compute it (and which
            # ones, and w.r.t. which variables).
            #
            # Process in alphabetical order to make terminal output more readable.
            print("stage1: %s %s model: analyzing API" % (progress_header_outer, label))

            api_funcs = {}
            all_derivatives = {}
            for j,funcsym in enumerate(sorted(api.keys(), key=symutil.sortkey)):
                name = symutil.derivatives_to_names_in(funcsym)
                expr = api[funcsym]

                progress_header_inner = "(%d/%d)" % (j+1, len(api.keys()))
                progress_header = "%s %s" % (progress_header_outer, progress_header_inner)
                print("stage1: %s %s model: processing %s" % (progress_header, label, name))

                derivatives = {}
                for f,*vars in symutil.derivatives_needed_by(expr):
                    if f not in helpers:  # process only if f is bound by Model.define_helpers()
                        continue
                    k = sy.Derivative(f, *vars, evaluate=False)  # this is present in expr; also a label
                    v = sy.diff(helpers[f], *vars)  # differentiate the actual definition
                    v = model.simplify(v)  # ask the model to simplify the resulting expr
                    # func and var themselves are sy.Symbols;
                    # we need strings for the Fortran routine name
                    fname = str(f)
                    vnames = [str(var) for var in vars]
                    derivatives[k] = (v, fname, vnames)

                # From expr, delete any derivatives that are identically zero
                # due to the structure of the functional dependencies.
                zero = sy.S.Zero
                def kill_zero(expr):
                    if expr in derivatives:  # ...which we collected above
                        value,*_ = derivatives[expr]
                        if value == 0:
                            return zero  # we must return an Expr, so return symbolic zero
                    return expr
                out = symutil.map_instancesof_in(kill_zero, sy.Derivative, expr)

                # Only save derivatives that are not identically zero,
                # since the identically zero ones are never called.
                final_derivatives = { k:v for k,v in derivatives.items() if v[0] != zero }

                # We may overwrite, since e.g. dI4/dBx always has the same expression if it is present.
                all_derivatives.update(final_derivatives)
                api_funcs[funcsym] = out

            # Generate the Fortran code

            print("stage1: %s %s model: generating code" % (progress_header_outer, label))

            # Auxiliary expressions I4, I5, I6, u', v', w', u, v, w
            #
            # These are always generated, whether needed or not. This makes it
            # easier to generate an API function for ϕ, because we will have
            # u, v, w, even though they don't appear in any RHS in the model.
            #
            # (These are needed for phi, which is externally provided by
            #  the additional user-defined stage1 interfaces. An alternative
            #  solution would be to define u_Bε, v_Bε, w_Bε, and make them
            #  depend on u, v, w, like Model currently does for ϕ.)
            #
            # Alphabetize helpers for readability of generated code.
            name_expr_pairs = [ (k,helpers[k]) for k in sorted(helpers.keys(), key=symutil.sortkey) ]

            # Derivatives of auxiliary expressions (only the ones we actually need)
            derivative_routines = {}
            tmp_pairs = []
            for k,val in all_derivatives.items():
                v,fname,vname = val
                routine_name = util.name_derivative(fname, vname, as_fortran_identifier=True)  # e.g. dI4_dBx
                derivative_routines[k] = routine_name
                tmp_pairs.append( (routine_name, v) )
            tmp_pairs.sort()
            name_expr_pairs.extend(tmp_pairs)

            # The API functions. Alphabetize; reverse, inserting at the beginning.
            def sanitize(expr):
                return symutil.derivatives_to_names_in(expr, as_fortran_identifier=True)
            for funcsym in reversed(sorted(api_funcs.keys(), key=symutil.sortkey)):
                final_name = sanitize(funcsym)
                final_expr = sanitize(api_funcs[funcsym])
                name_expr_pairs.insert(0, (final_name, final_expr))

            basename = "mgs_%s_impl" % (label)  # filename without extension
            generated_code = codegen(name_expr_pairs,
                                     language="f95",
                                     project="elmer-mgs-galfenol",
                                     prefix=basename)

            for filename,content in generated_code:
                # sanitize identifiers for non-Unicode systems
                content = util.degreek(content, short=True)
                generated_code_out.append((label, filename, content))

        return generated_code_out

def main():
    code = CodeGenerator.run()  # stage1 CodeGenerator

    for label,filename,content in code:
        print("stage1: writing %s for %s" % (filename, label))
        with open(filename, "wt", encoding="utf-8") as f:
            f.write(content)

if __name__ == '__main__':
    main()
