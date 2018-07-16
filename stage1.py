#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""Code generator for evaluating the partial derivatives of the potential ϕ.

ϕ = ϕ(u,v,w). The derivatives ∂ϕ/∂u, ∂ϕ/∂v, ∂ϕ/∂w must be externally supplied.

In terms of these ∂ϕ/∂u, ∂ϕ/∂v, ∂ϕ/∂w, any partial derivatives introduced
by the chain rule are automatically generated.

Created on Tue Oct 24 14:07:45 2017

@author: Juha Jeronen <juha.jeronen@tut.fi>
"""

from functools import partial  # partial application, not ∂!

import sympy as sy
from sympy.utilities.codegen import codegen  # not imported by default

import symutil
import util

from model import Model  # TODO: parameterize this?

class CodeGenerator:
    """Generate stage1 Fortran code (internal functions)."""

    # no constructor, this is OOFP with just static and class methods.

    @staticmethod
    def process(expr, defs, simplify):
        """Detect and generate derivatives needed by expr, recursively.

        Also optimize expr by omitting any derivatives that the definitions
        show to be identically zero.

        Parameters:
            expr: sy.Expr
                Expression to process.

            defs: dict(sy.symbol -> sy.Expr)
                Definitions as output by ``ModelBase.define_api()``.

            simplify: function(sy.Expr -> sy.Expr)
                Simplifier, used for optimizing the derivative expressions.

        Returns:
            (optimized_expr, more_defs)
              where
                optimized_expr: sy.Expr
                  Like input, but any identically zero derivatives omitted.
                more_defs: dict(sy.symbol -> sy.Expr)
                  Generated definitions, same format as ``defs``.
                    key: LHS: Derivative(f, *xs)
                    val: RHS
                  Key is stripped using ``symutil.strip_function_arguments()``,
                  value is not stripped.
        """
        D = partial(sy.Derivative, evaluate=False)
        strip = symutil.strip_function_arguments
        zero = sy.S.Zero

        def process_one(expr, mydefs):
            # Compute any needed derivatives for which we have the def.
            ds = {}
            for f, *vs in symutil.derivatives_needed_by(expr):
                fkey = strip(f)
                dkey = strip(D(f, *vs))
                if dkey not in mydefs and fkey in mydefs:
                    ds[dkey] = simplify(sy.diff(mydefs[fkey], *vs))

            # Optimize: in expr and ds, delete any identically zero derivatives.
            if len(ds):
                def kill_zero(term):
                    return zero if term in ds and ds[term] == 0 else term
                final_expr = symutil.map_instancesof_in(kill_zero, sy.Derivative, expr)
                final_ds = {k: v for k, v in ds.items() if v != zero}
                return final_expr, final_ds
            return expr, ds

        alldefs = defs.copy()  # all definitions
        newdefs = {}           # all new definitions not in original input
        def recurse(expr, seen):
            newexpr, moredefs = process_one(expr, alldefs)

            invalid = seen.intersection(moredefs.keys())
            if len(invalid):
                raise ValueError("Circular definition between {}".format(invalid))
            newseen = seen.copy()  # track seen items separately in each call tree
            newseen.update(moredefs.keys())

            # cheeky side effects
            alldefs.update(moredefs)  # must do before loop...
            newdefs.update(moredefs)

            for k in moredefs:
                newv = recurse(moredefs[k], newseen)
                alldefs[k] = newdefs[k] = newv  # ...but also update here

            return newexpr

        return recurse(expr, set()), newdefs

    @staticmethod
    def make_name_expr_pairs(defs):
        """Convert definitions into input for SymPy's codegen.

        The output is alphabetized by LHS.

        Parameters:
            defs: dict(sy.symbol -> sy.Expr)
                Definitions as output by ``ModelBase.define_api()``
                (and by ``stage1.CodeGenerator.process()``).

        Returns:
            [(k, v), ...]
              where
                k = LHS, sanitized for SymPy's codegen
                v = RHS, sanitized for SymPy's codegen
        """
        def sanitize(expr):
            stripped = symutil.strip_function_arguments(expr)
            return symutil.derivatives_to_names_in(stripped, as_fortran_identifier=True)
        return [(sanitize(k), sanitize(defs[k]))
                  for k in sorted(defs.keys(), key=symutil.sortkey)]

    @classmethod
    def run(cls):
        """Generate stage1 Fortran code for both 2-parameter and 3-parameter models."""

        # TODO: maybe take a Model as input?
        models = (Model(kind="2par"), Model(kind="3par"))

        generated_code_out = []
        for i, model in enumerate(models):
            label = model.kind
            progress_header_outer = "(%d/%d)" % (i+1, len(models))
            print("stage1: %s %s model: initializing" % (progress_header_outer, label))

            defs = model.define_api()  # input, original definitions

            # Scan each stage1 function defined by the model to see if we need to
            # differentiate any quantities to be able to compute it (and which
            # ones, and w.r.t. which variables).
            #
            # Process in alphabetical order to make terminal output more readable.
            print("stage1: %s %s model: analyzing API" % (progress_header_outer, label))

            api = {}  # output, final optimized definitions
            derivatives = {}
            for j, key in enumerate(sorted(defs.keys(), key=symutil.sortkey)):
                name = symutil.derivatives_to_names_in(key)  # key is a symbol
                expr = defs[key]

                progress_header_inner = "(%d/%d)" % (j+1, len(defs.keys()))
                progress_header = "%s %s" % (progress_header_outer, progress_header_inner)
                print("stage1: %s %s model: processing %s" % (progress_header, label, name))

                expr_out, ds = cls.process(expr, defs, model.simplify)

                # We may overwrite, since e.g. dI4/dBx always has the same expression if it is present.
                derivatives.update(ds)
                api[key] = expr_out

            # Generate the Fortran code.
            print("stage1: %s %s model: generating code" % (progress_header_outer, label))

            basename = "mgs_%s_impl" % (label)  # filename without extension
            name_expr_pairs = cls.make_name_expr_pairs(api) \
                            + cls.make_name_expr_pairs(derivatives)
            generated_code = codegen(name_expr_pairs,
                                     language="f95",
                                     project="elmer-mgs-galfenol",
                                     prefix=basename)

            for filename, content in generated_code:
                # sanitize identifiers for non-Unicode systems
                content = util.degreek(content, short=True)
                generated_code_out.append((label, filename, content))

        return generated_code_out

def main():
    code = CodeGenerator.run()  # stage1 CodeGenerator

    for label, filename, content in code:
        print("stage1: writing %s for %s" % (filename, label))
        with open(filename, "wt", encoding="utf-8") as f:
            f.write(content)

if __name__ == '__main__':
    main()
