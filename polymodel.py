#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""Mathematical model that describes the partial derivatives of the potential ϕ
and the auxiliary quantities needed to compute them.

ϕ = ϕ(I1,I2,I4,I5,I6)

Global polynomial model. No I3, since linear elasticity.

Tensorially speaking, the invariants are:

I1 = tr ε
I2 = tr ε²
I3 = tr ε³
I4 = BT · B
I5 = BT · e · B
I6 = BT · e · e · B

where T denotes the transpose of a rank-2 tensor, and · is the contraction
(on the index facing the operator on each side; (A · B)_ij = A_ik B_kj).

For detailed technical comments, see splinemodel.py; these are rather similar.

Created on Wed Jul 18 13:47:54 2018

@author: Juha Jeronen <juha.jeronen@tut.fi>
"""

from itertools import combinations_with_replacement

import sympy as sy

from reccollect import recursive_collect # sometimes better than sy.rcollect (maybe due to autosyms).
import symutil
import util

from potentialmodelbase import PotentialModelBase

class Model(PotentialModelBase):
    """Generate mathematical expressions for the global polynomial (B,ε) model."""

    def __init__(self):
        """Constructor."""
        self.label = "poly"

        # εs and es are listed in Voigt ordering; see symutil.voigt_mat_idx().
        self.Bs = sy.symbols("Bx, By, Bz")
        self.εs = sy.symbols("εxx, εyy, εzz, εyz, εzx, εxy")

        self.indepvars = {s.name:s for s in self.Bs + self.εs}

        makef = symutil.make_function

        # Deviatoric strain, e = e(ε).
        self.es = tuple(makef(name, *self.εs)
                          for name in ("exx", "eyy", "ezz", "eyz", "ezx", "exy"))

        I1 = makef("I1", *self.εs)  # Cauchy strain!
        I2 = makef("I2", *self.εs)
#        I3 = makef("I3", *self.εs)
        I4 = makef("I4", *self.Bs)  # i.e. in math notation, I4 = I4(Bx, By, Bz)
        I5 = makef("I5", *(self.Bs + self.es))  # deviatoric strain!
        I6 = makef("I6", *(self.Bs + self.es))
        self.Is = I1, I2, I4, I5, I6

        self.ϕ = makef("ϕ", *self.Is)

    def define_api(self):
        """See docstring for ``ModelBase.define_api()``."""
        defs = {}

#        # This needed only if ϕ provided externally at stage2. We define ϕ in the model.
#        print("model: {kind} forming expression for ϕ".format(kind=self.label))
#        sym, expr = self.dϕdq(qs=(), strip=False)
#        defs[sy.symbols("ϕp")] = expr  # ϕ' to avoid name conflict with user code "phi".

        # All 1st and 2nd derivatives of ϕ - formally, without inserting expressions.
        # No danger of confusion in naming; e.g. dϕ_dI1 vs. dϕ_dBx.
        independent_vars = sorted(self.indepvars.keys())
        secondder_varlists = combinations_with_replacement(independent_vars, 2)

        allqs = [(var,) for var in independent_vars]
        allqs.extend(secondder_varlists)
#        allqs = (("Bx",), ("Bx","Bx"),)  # DEBUG
        for i, qs in enumerate(allqs):
            print("model: {kind} ({iteration:d}/{total:d}) forming expression for {name}".format(kind=self.label,
                                                                                                 iteration=i+1,
                                                                                                 total=len(allqs),
                                                                                                 name=util.name_derivative("ϕ", qs)))
            sym, expr = self.dϕdq(qs, strip=False)
            defs[sym] = expr

        # Define the quantities appearing at the various layers of the ϕ cake.
        print("model: {kind} writing definitions".format(kind=self.label))

        strip = symutil.strip_function_arguments

        B = sy.Matrix(self.Bs)             # Magnetic flux density (as column vector)
        ε = symutil.voigt_to_mat(self.εs)  # Cauchy strain
        e = symutil.voigt_to_mat(self.es)  # Deviatoric strain

        εM_expr = sy.factor(sy.S("1/3") * ε.trace())  # mean volumetric strain
        defs[sy.symbols("εM")] = εM_expr  # will be inserted to e_expr; just a convenience

        # e in terms of ε
        val = ε - εM_expr * sy.eye(3)
        assert symutil.is_symmetric(val)
        for _, (r, c) in symutil.voigt_mat_idx():
            defs[strip(e[r, c])] = val[r, c]

        # I1, I2 in terms of ε
        I1, I2, I4, I5, I6 = self.Is
        for key, val in ((I1, ε.trace()),
                         (I2, (ε.T * ε).trace())):
            defs[strip(key)] = val

        # I4, I5, I6 in terms of (B, e)
        for key, val in ((I4, B.T * B),
                         (I5, B.T * e * B),
                         (I6, B.T * e * e * B)):
            assert val.shape == (1,1)  # result should be scalar
            expr = val[0,0]  # extract scalar from matrix wrapper
            defs[strip(key)] = self.simplify(expr)

        # The potential ϕ itself.
        #
        # Defining ϕ here instead of as a user-defined Fortran code
        # gets us derivatives for free. The price is less flexibility
        # since we must produce a SymPy expression.

        # mechanical contribution
        λ, µ = sy.symbols("λ, µ")  # Lamé constants
        ϕ_mech = sy.S("1/2") * λ * I1**2  +  µ * I2

        # magnetostrictive contribution
        nα, nβ, nγ = 5, 1, 1
        *αs, = sy.symbols("α1:{:d}".format(nα+1))  # comma to make tuple context
        *βs, = sy.symbols("β1:{:d}".format(nβ+1))
        *γs, = sy.symbols("γ1:{:d}".format(nγ+1))
        I4_terms = sum(αi * I4**(i+1) for i, αi in enumerate(αs))  # i+1, 0-based numbering
        I5_terms = sum(βi * I5**(i+1) for i, βi in enumerate(βs))
        I6_terms = sum(γi * I6**(i+1) for i, γi in enumerate(γs))
        ϕ_magn = I4_terms + I5_terms + I6_terms

        defs[strip(self.ϕ)] = ϕ_mech + ϕ_magn

        assert all(isinstance(key, (sy.Symbol, sy.Derivative)) for key in defs)
        return defs

    def simplify(self, expr):
        """Simplify expr.

        Specifically geared to optimize expressions treated by this class.
        """
        #   - expand() first to expand all parentheses (to be able to re-group)
        #   - together() to combine rationals
        #   - recursive_collect() to collect() on all symbols in expr, recursively.
        #   - May leave "leftovers" in some parts of expr; e.g. for dI6/dBx,
        #     reccollect.analyze() gives [exy, ezx, By, Bx, Bz, exx, eyz, ezz, eyy]
        #     because overall more optimal (by the metric in analyze()) than
        #     going "B first".
        #   - Hence Bx will be duplicated in terms that have been collected on
        #     [exy, ezx], in parts of expr where "B first" would have been better.
        #   - Hence in the result, collect again, now on self.Bs (no autodetect).
        #   - Finally, collect_const_in() to extract each constant factor
        #     to the topmost possible level in the expression.
        expr = recursive_collect(sy.together(sy.expand(expr)))
        expr = recursive_collect(expr, syms=self.Bs)
        expr = symutil.collect_const_in(expr)
        return expr

def test():
    def scrub(expr):
        return symutil.strip_function_arguments(symutil.derivatives_to_names_in(expr))
    m = Model()
    api = m.define_api()
    api_humanreadable = {scrub(k): scrub(v) for k, v in api.items()}
    print(api_humanreadable)

if __name__ == '__main__':
    test()
