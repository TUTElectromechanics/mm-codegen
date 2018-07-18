#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""Mathematical model that describes the partial derivatives of the potential ϕ
and the auxiliary quantities needed to compute them.

ϕ = ϕ(u,v,w) (3-parameter model) or ϕ = ϕ(u,v) (2-parameter model).

The derivatives ∂ϕ/∂u, ∂ϕ/∂v, ∂ϕ/∂w must be externally supplied.

In terms of these ∂ϕ/∂u, ∂ϕ/∂v, ∂ϕ/∂w, any partial derivatives introduced
by the chain rule are automatically generated.

This module does **not** implement splines; the spline implementation is
to be externally supplied by the user-defined additional stage1 interfaces.
This only handles the layer cake of auxiliary variables, to translate
from the physical fields (B, ε) to the auxiliary domain (u, v, w)
where the splines are defined.

Created on Tue Oct 24 14:07:45 2017

@author: Juha Jeronen <juha.jeronen@tut.fi>
"""

from itertools import combinations_with_replacement

import sympy as sy

import symutil
import util

from potentialmodelbase import PotentialModelBase

class Model(PotentialModelBase):
    """Generate mathematical expressions for the spline-based (B,ε) model."""

    def __init__(self, kind="2par"):  # 2par, 3par
        """Constructor.

        Parameters:
            kind: str
                "2par" to build the 2-parameter model where ϕ = ϕ(u,v),
                using only the invariants I4 and I5.

                "3par" to build the 3-parameter model where ϕ = ϕ(u,v,w),
                using all three invariants I4, I5 and I6.
        """
        if kind not in ("2par", "3par"):
            raise ValueError("Unknown kind '{invalid}'; valid: '2par', '3par'".format(invalid=kind))
        self.label = kind

        super().__init__()
        makef = symutil.make_function

        # Set up applied-function definitions for the layer cake.

        I4 = makef("I4", *self.Bs)  # i.e. in math notation, I4 = I4(Bx, By, Bz)
        I5 = makef("I5", *(self.Bs + self.es))  # deviatoric strain!
        I6 = makef("I6", *(self.Bs + self.es))
        self.Is = I4, I5, I6

        # u', v', w' are the raw u, v, w before normalization.
        up = makef("up", I4)  # applied function is a symbol; ok as dependency.
        vp = makef("vp", I4, I5)
        wp = makef("wp", I4, I5, I6)
        self.ups = up, vp, wp

        # The final u, v, w are normalized: u ∈ [0,1], v ∈ [-1,1], w ∈ [-1,1]
        u = makef("u", up)  # ...but here we only declare a formal dependency.
        v = makef("v", vp)
        w = makef("w", wp)
        self.us = u, v, w

        # Finally, the normalized u, v, w are the formal parameters of ϕ.
        self.ϕ = makef("ϕ", u, v) if kind == "2par" else makef("ϕ", u, v, w)

    def define_api(self):
        """See docstring for ``ModelBase.define_api()``."""
        defs = {}

        # Define the derivatives of ϕ(u, v, w) in terms of B and ε, while
        # leaving ϕ itself unspecified (except its dependencies).

        # For completeness, provide a function to evaluate ϕ(B, ε). We would
        # like to say ϕ'(B, ε) = ϕ(u, v, w), and then drop the prime.
        #
        # But the LHS (function we export) cannot be named "ϕ", because in the
        # spline model, the user-defined (additional stage1) interfaces are
        # expected to provide phi(u, v, w), with which "ϕ" would conflict
        # after degreeking.
        #
        # We want to keep that one as "phi", so that on the RHS, ϕ = ϕ(u, v, w),
        # consistently with how __init__() defines self.ϕ. Hence we name our
        # export as "ϕp", which stands for "phi prime".
        #
        # On the RHS, we put just "ϕ", thus telling stage2 that ϕ' depends
        # on the user-defined function ϕ(u, v, w). Then stage2 does the rest,
        # so that the public API for ϕ' indeed takes B and ε as its args.
        print("model: {kind} forming expression for ϕ".format(kind=self.label))
        sym, expr = self.dϕdq(qs=(), strip=False)
        defs[sy.symbols("ϕp")] = expr

        # All 1st and 2nd derivatives of ϕ - formally, without inserting expressions.
        # No danger of confusion in naming; e.g. dϕ_du vs. dϕ_dBx.
        independent_vars = sorted(self.indepvars.keys())
        secondder_varlists = combinations_with_replacement(independent_vars, 2)
        allqs = [(var,) for var in independent_vars]
        allqs.extend(secondder_varlists)
        for i, qs in enumerate(allqs, start=1):
            print("model: {kind} ({iteration:d}/{total:d}) forming expression for {name}".format(kind=self.label,
                                                                                                 iteration=i,
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

        # I4, I5, I6 in terms of (B, e)
        I4, I5, I6 = self.Is
        for key, val, kind in ((I4, B.T * B, None),
                               (I5, B.T * e * B, None),
                               (I6, B.T * e * e * B, "3par")): # only in 3par model
            if kind is None or kind == self.label:
                assert val.shape == (1,1)  # result should be scalar
                expr = val[0,0]  # extract scalar from matrix wrapper
                defs[strip(key)] = self.simplify(expr)

        # u', v', w' in terms of (I4, I5, I6)
        up, vp, wp = self.ups
        for key, val, kind in ((up, sy.sqrt(I4), None),
                               (vp, sy.S("3/2") * I5 / I4, None),
                               (wp, sy.sqrt(I6*I4 - I5**2) / I4, "3par")):
            if kind is None or kind == self.label:
                defs[strip(key)] = val  # no simplification possible; just save.

        # u, v, w in terms of (u', v', w')
        u, v, w = self.us
        u0, v0, w0 = sy.symbols("u0, v0, w0")
        for key, val, kind in ((u, up / u0, None),
                               (v, vp / v0, None),
                               (w, wp / w0, "3par")):
            if kind is None or kind == self.label:
                defs[strip(key)] = val

        assert all(isinstance(key, (sy.Symbol, sy.Derivative)) for key in defs)
        return defs

def test():
    def scrub(expr):
        return symutil.strip_function_arguments(symutil.derivatives_to_names_in(expr))
    for kind in ("2par", "3par"):
        print(kind)
        m = Model(kind)
        api = m.define_api()
        api_humanreadable = {scrub(k): scrub(v) for k, v in api.items()}
        print(api_humanreadable)

if __name__ == '__main__':
    test()
