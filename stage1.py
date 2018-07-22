#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""Stage1 code generator: model to internal API.

At stage1, each generated Fortran function is a standalone piece, which requires
as function arguments the values for all symbols that the expression refers to
(even if there is another stage1 function that could be used to compute that
quantity). This format is convenient to generate in SymPy. Dependencies are
analyzed later, in stage2.

The RHSs of quantities may depend also on derivatives of other quantities defined
in the model; definitions for any needed derivatives are automatically generated,
by symbolically differentiating the definition of the original quantity
referred to (and then algebraically simplifying the result). Any derivatives
that the definitions show to be identically zero are automatically dropped.

This derivative processing is performed recursively to catch any new derivatives
that may appear on the RHS in the differentiation. Circular lookups are treated
as an error; if this happens, check the definitions.

SymPy applied functions (unspecified function with known dependencies) are
allowed on the RHSs, since they can be formally differentiated.

For the definition format, see modelbase.py.

Finally, note that it is not necessary to define everything in stage1;
if you have a custom Fortran code to compute some functions (and/or their
derivatives), just tell stage2 about its interface, and those functions will
be considered as stage1 code (on equal footing with any code generated here).

Created on Tue Oct 24 14:07:45 2017

@author: Juha Jeronen <juha.jeronen@tut.fi>
"""

from functools import partial  # partial application, not ∂!

import sympy as sy
from sympy.utilities.codegen import codegen  # not imported by default

import symutil
import util

from modelbase import ModelBase

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
                !! Will be mutated.

            simplify: function(sy.Expr -> sy.Expr)
                Simplifier, used for optimizing the derivative expressions.

        Returns:
            optimized_expr: sy.Expr
                Like input, but any identically zero derivatives omitted.

            Any new keys for ``defs`` are in the format Derivative(f, *xs),
            stripped using ``ModelBase.keyify()``.

            The RHS values are not stripped.
        """
        keyify = ModelBase.keyify
        D = partial(sy.Derivative, evaluate=False)
        zero = sy.S.Zero

        def process_one(expr):
            # Compute any needed derivatives for which the function is in defs.
            ds = {}
            for f, *vs in symutil.derivatives_needed_by(expr):
                fkey = keyify(f)
                dkey = keyify(D(f, *vs))
                if fkey in defs:
                    if dkey in ds:
                        pass
                    elif dkey in defs:  # previously computed
                        ds[dkey] = defs[dkey]
                    else:
                        ds[dkey] = simplify(sy.diff(defs[fkey], *vs))

            # Optimize: in expr, delete any identically zero derivatives.
            # (We optimize the set of definitions later, in run().)
            if len(ds):
                def kill_zero(term):
                    key = keyify(term)
                    return zero if key in ds and ds[key] == 0 else term
                final_expr = symutil.map_instancesof_in(kill_zero, sy.Derivative, expr)
                return final_expr, ds
            return expr, ds

        def recurse(expr, seen):
            newexpr, moredefs = process_one(expr)

            invalid = seen.intersection(moredefs.keys())
            if len(invalid):
                raise ValueError("Circular definition between {}".format(invalid))
            newseen = seen.copy()  # track seen items separately in each call tree
            newseen.update(moredefs.keys())

            defs.update(moredefs)  # before loop to make new defs visible...

            for k in moredefs:
                defs[k] = recurse(moredefs[k], newseen)  # ...but update here, maybe optimized

            return newexpr

        return recurse(expr, set())

    @staticmethod
    def make_name_expr_pairs(defs):
        """Convert definitions into input for SymPy's codegen.

        The output is sorted by LHS. Sort order is determined by
        ``symutil.sortkey()``.

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
    def run(cls, model):
        """Generate stage1 Fortran code.

        Parameters:
            model: Instance of a class implementing the ModelBase interface.
                The mathematical model.

        Returns:
            tuple of tuples, stage1 code. Each item has the format:
                (label, output_filename, content)
        """
        label = model.label
        print("stage1: {label} model: initializing".format(label=label))

        defs_input = model.define_api()  # input, original definitions

        print("stage1: {label} model: analyzing API".format(label=label))

        # Compute any needed derivatives which are not already in the API
        # and for which we have the defs.
        defs = defs_input.copy()  # output, final optimized definitions
        for j, key in enumerate(sorted(defs_input.keys(), key=symutil.sortkey), start=1):  # sort for progress readability
            name = symutil.derivatives_to_names_in(key)  # key is a Symbol or a Derivative
            expr = defs_input[key]

            print("stage1: ({iteration:d}/{total:d}) {label} model: processing {name}".format(iteration=j,
                                                                                              total=len(defs_input.keys()),
                                                                                              label=label, name=name))

            defs[key] = cls.process(expr, defs, model.simplify)

        # Delete identically zero definitions
        zero = sy.S.Zero
        defs = {k: v for k, v in defs.items() if v != zero}

        print("stage1: {label} model: generating code".format(label=label))

        basename = "mgs_{label}_impl".format(label=label)  # filename without extension
        name_expr_pairs = cls.make_name_expr_pairs(defs)
        generated_code = codegen(name_expr_pairs,
                                 language="f95",
                                 project="elmer-mgs-galfenol",
                                 prefix=basename)

        # remove Unicode Greek characters.
        return [(label, filename, util.degreek(content, short=True))
                  for filename, content in generated_code]
