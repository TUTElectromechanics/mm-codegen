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

        self.Is = [symutil.make_function(name, *deps)
                     for name, deps in (("I1", self.εs),  # Cauchy strain!
                                        ("I2", self.εs),
#                                        ("I3", self.εs),
                                        ("I4", self.Bs),
                                        ("I5", self.Bs + self.es),  # deviatoric strain!
                                        ("I6", self.Bs + self.es))]

        self.ϕ = symutil.make_function("ϕ", *self.Is)

    def define_api(self):
        """See docstring for ``ModelBase.define_api()``."""
        defs = {}
        keyify = self.keyify

#        # Needed only if ϕ provided externally at stage2. We define ϕ in the model.
#        print("model: {label} forming expression for ϕ".format(label=self.label))
#        sym, expr = self.dϕdq(qs=(), strip=False)
#        defs[keyify(sy.symbols("ϕp"))] = expr  # ϕ' to avoid name conflict with user code "phi".

        # All 1st and 2nd derivatives of ϕ w.r.t. the independent vars B and ε.
        # Formally, without inserting expressions.
        defs.update(self.dϕdqs())

        # Define the quantities appearing at the various layers of the ϕ cake.
        print("model: {label} writing definitions".format(label=self.label))

        B = sy.Matrix(self.Bs)             # Magnetic flux density (as column vector)
        ε = symutil.voigt_to_mat(self.εs)  # Cauchy strain
        e = symutil.voigt_to_mat(self.es)  # Deviatoric strain

        εM_expr = sy.factor(sy.S("1/3") * ε.trace())  # mean volumetric strain
        defs[keyify(sy.symbols("εM"))] = εM_expr  # will be inserted to e_expr; just a convenience

        # e in terms of ε
        val = ε - εM_expr * sy.eye(3)
        assert symutil.is_symmetric(val)
        for _, (r, c) in symutil.voigt_mat_idx():
            defs[keyify(e[r, c])] = val[r, c]

        # I1, I2 in terms of ε
        I1, I2, I4, I5, I6 = self.Is
        for key, val in ((I1, ε.trace()),
                         (I2, (ε.T * ε).trace())):  # either 1/2 here and 2µ in the I2 term, or no 1/2 here (and µ).
            defs[keyify(key)] = self.simplify(val)

        # I4, I5, I6 in terms of (B, e)
        for key, val in ((I4, B.T * B),
                         (I5, B.T * e * B),
                         (I6, B.T * e * e * B)):
            assert val.shape == (1,1)  # result should be scalar
            expr = val[0,0]  # extract scalar from matrix wrapper
            defs[keyify(key)] = self.simplify(expr)

        # The potential ϕ itself.
        #
        # Defining ϕ here instead of as a user-defined Fortran code
        # gets us derivatives for free. The price is less flexibility
        # since we must produce a SymPy expression.

        # mechanical contribution
        λ, µ = sy.symbols("λ, µ")  # Lamé constants
        I1_term = sy.S("1/2") * λ * I1**2
        I2_term = µ * I2
        ϕ_mech = I1_term + I2_term

        # magnetostrictive contribution
        nα, nβ, nγ = 11, 1, 1
        i0 = 1  # index start value **in the definition of ϕ itself**
        *αs, = sy.symbols("α{:d}:{:d}".format(i0, i0+nα))  # comma to make tuple context
        *βs, = sy.symbols("β{:d}:{:d}".format(i0, i0+nβ))
        *γs, = sy.symbols("γ{:d}:{:d}".format(i0, i0+nγ))
        I4_terms = sum(αi * I4**i for i, αi in enumerate(αs, start=i0))
        I5_terms = sum(βi * I5**i for i, βi in enumerate(βs, start=i0))
        I6_terms = sum(γi * I6**i for i, γi in enumerate(γs, start=i0))
        ϕ_magn = I4_terms + I5_terms + I6_terms

        defs[keyify(self.ϕ)] = ϕ_mech + ϕ_magn

        # parameter values for Galfenol from Umair (INRiM 2018)
        αvalues = ( 1.162002e-02,
                   -2.598907e-02,
                    7.102752e-02,
                   -1.620358e-01,
                    2.743012e-01,
                   -3.122956e-01,
                    2.308285e-01,
                   -1.086296e-01,
                    3.132715e-02,
                   -5.040493e-03,
                    3.463586e-04)
        βvalues = (6.103795e+00,)
        γvalues = (1.448762e+01,)

        # Undo the scaling (the parameters are originally scaled to ease fitting).
        #
        # Also undo the factors resulting from the differentiation - the MATLAB
        # code specifies coefficients directly for the **derivatives** of ϕ,
        # whereas we specify ϕ itself and let SymPy differentiate it in stage1.
        #     ϕ      = α1 I4 +    α2  I4**2 +    α3  I4**3 + ...  <-- what we need
        #     ∂ϕ/∂I4 = α1    + (2 α2) I4    + (3 α3) I4**2 + ...  <-- coeffs in the MATLAB code
        π = sy.N(sy.pi)
        µ0 = 4.*π*1e-7 # vacuum permeability, H / m
        ν0 = 1. / µ0   # vacuum reluctivity
        αvalues = tuple(      ν0            * αi / i for i, αi in enumerate(αvalues, start=i0))
        βvalues = tuple(      ν0 * (1e2)**i * βi / i for i, βi in enumerate(βvalues, start=i0))
        γvalues = tuple(1e3 * ν0 * (1e5)**i * γi / i for i, γi in enumerate(γvalues, start=i0))
        E = 75e9 # Pa
        ν = 0.4
        λvalue = (E * ν) / ((1. + ν) * (1. - 2. * ν))
        µvalue = E / (2. * (1. + ν))

        assert len(αvalues) == nα
        assert len(βvalues) == nβ
        assert len(γvalues) == nγ
        for data in (zip(αs, αvalues),
                     zip(βs, βvalues),
                     zip(γs, γvalues)):
            for key, val in data:
                defs[keyify(key)] = sy.Number(val)
        defs[keyify(λ)] = sy.Number(λvalue)
        defs[keyify(µ)] = sy.Number(µvalue)

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
