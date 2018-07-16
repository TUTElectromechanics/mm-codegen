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
    def process(expr, defs, simplify):
        """Detect and generate derivatives needed by expr.

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
            (optimized_expr, derivatives)
              where
                optimized_expr: sy.Expr
                  Like input, but any identically zero derivatives omitted.
                derivatives: dict(sy.symbol -> (sy.Expr, str, list(str)))
                  key: LHS: Derivative(f, *xs)
                  val: (RHS, f as str, xs as strs)
                    The str parts can be used with ``util.name_derivative()``
                    to make a human-readable label in math notation.
        """
        # TODO: recurse, detect circular definitions
        ds = {}
        for f, *vs in symutil.derivatives_needed_by(expr):
            if f in defs:  # only process if bound by model
                k = sy.Derivative(f, *vs, evaluate=False)  # appears in expr; also a label
                v = simplify(sy.diff(defs[f], *vs))  # differentiate the RHS
                # f and variables are sy.Symbols; need str for Fortran names
                ds[k] = (v, str(f), [str(var) for var in vs])

        # Optimize: in expr, delete any derivatives that are now known
        # to be identically zero.
        zero = sy.S.Zero
        def kill_zero(expr):
            if expr in ds:
                value, *_ = ds[expr]
                if value == 0:
                    return zero  # we must return an Expr, so return symbolic zero
            return expr
        out = symutil.map_instancesof_in(kill_zero, sy.Derivative, expr)

        # Only keep derivatives that are not identically zero.
        final_ds = { k: v for k, v in ds.items() if v[0] != zero }

        return out, final_ds

    @classmethod
    def make_name_expr_pairs(cls, funcs, ds):
        # Generated derivatives (only the ones we actually need)
        name_expr_pairs = []
        for v, fname, vnames in (ds[k] for k in sorted(ds.keys(), key=symutil.sortkey)):
            routine_name = util.name_derivative(fname, vnames, as_fortran_identifier=True)  # e.g. dI4_dBx
            name_expr_pairs.append((routine_name, v))
        name_expr_pairs.sort()
        name_expr_pairs.extend(name_expr_pairs)

        # The API functions. Reverse, inserting at the beginning.
        def sanitize(expr):
            return symutil.derivatives_to_names_in(expr, as_fortran_identifier=True)
        for key in reversed(sorted(funcs.keys(), key=symutil.sortkey)):
            final_name = sanitize(key)
            final_expr = sanitize(funcs[key])
            name_expr_pairs.insert(0, (final_name, final_expr))

        return name_expr_pairs

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

            # Generate the Fortran code. Alphabetize.

            print("stage1: %s %s model: generating code" % (progress_header_outer, label))

            name_expr_pairs = cls.make_name_expr_pairs(api, derivatives)

            basename = "mgs_%s_impl" % (label)  # filename without extension
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
