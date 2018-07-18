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

import sympy as sy

import symutil

from potentialmodelbase import PotentialModelBase

class Model(PotentialModelBase):
    """Generate mathematical expressions for the global polynomial (B,ε) model."""

    def __init__(self):
        """Constructor."""
        self.label = "poly"

        super().__init__()
        makef = symutil.make_function

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
#        print("model: {label} forming expression for ϕ".format(label=self.label))
#        sym, expr = self.dϕdq(qs=(), strip=False)
#        defs[sy.symbols("ϕp")] = expr  # ϕ' to avoid name conflict with user code "phi".

        # All 1st and 2nd derivatives of ϕ - formally, without inserting expressions.
        defs.update(self.dϕ_dqs())

        # Define the quantities appearing at the various layers of the ϕ cake.
        print("model: {label} writing definitions".format(label=self.label))

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
        I4_terms = sum(αi * I4**i for i, αi in enumerate(αs, start=1))
        I5_terms = sum(βi * I5**i for i, βi in enumerate(βs, start=1))
        I6_terms = sum(γi * I6**i for i, γi in enumerate(γs, start=1))
        ϕ_magn = I4_terms + I5_terms + I6_terms

        defs[strip(self.ϕ)] = ϕ_mech + ϕ_magn

        assert all(isinstance(key, (sy.Symbol, sy.Derivative)) for key in defs)
        return defs

def test():
    def scrub(expr):
        return symutil.strip_function_arguments(symutil.derivatives_to_names_in(expr))
    m = Model()
    api = m.define_api()
    api_humanreadable = {scrub(k): scrub(v) for k, v in api.items()}
    print(api_humanreadable)

if __name__ == '__main__':
    test()
