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

from memoize import memoize

from reccollect import recursive_collect # sometimes better than sy.rcollect (maybe due to autosyms).
import symutil
import util

from modelbase import ModelBase

# TODO: test the framework by defining another version that substitutes everything into the declaration (no separate exprs)

class Model(ModelBase):
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
        self.kind = kind

        # es and εs are listed in Voigt ordering; see symutil.voigt_mat_idx().
        self.Bs = sy.symbols("Bx, By, Bz")
        self.εs = sy.symbols("εxx, εyy, εzz, εyz, εzx, εxy")

        # All independent variables
        self.indepvars = {s.name:s for s in self.Bs + self.εs}

        # Deviatoric strain. Tell SymPy e = e(ε), without an explicit expression.
        #
        # Use the component form, because sy.diff() cannot differentiate w.r.t.
        # a sy.MatrixSymbol. The component form is also good for Fortran conversion.
        self.es = tuple(λe(*self.εs) for λe in sy.symbols("exx, eyy, ezz, eyz, ezx, exy", cls=sy.Function))

    # For the same instance of Model, ϕ is always the same, so cache it to
    # speed things up (especially for 3-par with many partial derivatives of ϕ).
    @memoize
    def build_ϕ(self):
        """Build and return ϕ as a SymPy applied function."""
        # In SymPy, an unspecified function with known dependencies
        # is set up in two steps:
        #
        # 1) An "undefined function": a symbol for a generic unknown function
        #    having the given symbol name.
        #
        #    Each function must have a unique symbol name. SymPy distinguishes
        #    between symbols by symbol name, flags and Python object type
        #    (e.g. sy.Symbol vs. sy.Function).
        #
        # 2) An "applied function" (of symbols). Calling an UndefinedFunction
        #    instance, with symbols as parameters, returns an otherwise
        #    unspecified function that formally depends on the given symbols.
        #    Importantly, these dependencies are recognized in symbolic
        #    differentiation.
        #
        #    SymPy creates a new Python type (class) for each function name,
        #    using the symbol name of the undefined function instance (that
        #    was used to create the applied-function instance) as the name
        #    of the new Python type.
        #
        # Example:
        #
        #     x, y = sy.symbols("x, y")              # independent variables
        #     λf = sy.symbols("f", cls=sy.Function)  # undefined function
        #     f = λf(x, y)                           # applied function
        #     type(f)  # --> f
        #
        def fsym(name, *deps):
            λf = sy.symbols(name, cls=sy.Function)
            return λf(*deps)

        I4 = fsym("I4", *self.Bs)  # i.e. in math notation, I4 = I4(Bx, By, Bz)
        I5 = fsym("I5", *(self.Bs + self.es))  # deviatoric strain!
        I6 = fsym("I6", *(self.Bs + self.es))
        self.Is = I4, I5, I6

        # u', v', w' are the raw u, v, w before normalization.
        up = fsym("up", I4)  # applied function is a symbol; ok as dependency.
        vp = fsym("vp", I4, I5)
        wp = fsym("wp", I4, I5, I6)
        self.ups = up, vp, wp

        # The final u, v, w are normalized: u ∈ [0,1], v ∈ [-1,1], w ∈ [-1,1]
        u = fsym("u", up)  # ...but here we only declare a formal dependency.
        v = fsym("v", vp)
        w = fsym("w", wp)
        self.us = u, v, w

        # Finally, the normalized u, v, w are the formal parameters of ϕ.
        if self.kind == "2par":
            ϕ = fsym("ϕ", u, v)
        else: # self.kind == "3par":
            ϕ = fsym("ϕ", u, v, w)

        # ϕ carries with it all the information about the (nested) dependencies.
        return ϕ

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
        # consistently with how build_ϕ() defines ϕ. Hence we name our export
        # as "ϕp", which stands for "phi prime".
        #
        # On the RHS, we put just "ϕ", thus telling stage2 that ϕ' depends
        # on the user-defined function ϕ(u, v, w). Then stage2 does the rest,
        # so that the public API for ϕ' indeed takes B and ε as its args.
        print("model: {kind} forming expression for ϕ".format(kind=self.kind))
        sym, expr = self.dϕdq(qs=(), strip=False)
        defs[sy.symbols("ϕp")] = expr

        # All 1st and 2nd derivatives of ϕ.
        # No danger of confusion in naming; e.g. dϕ_du vs. dϕ_dBx.
        independent_vars = sorted(self.indepvars.keys())
        secondder_varlists = combinations_with_replacement(independent_vars, 2)

        allqs = [(var,) for var in independent_vars]
        allqs.extend(secondder_varlists)
#        allqs = (("Bx",), ("Bx","Bx"),)  # DEBUG
        for i, qs in enumerate(allqs):
            print("model: {kind} ({iteration:d}/{total:d}) forming expression for {name}".format(kind=self.kind,
                                                                                                 iteration=i+1,
                                                                                                 total=len(allqs),
                                                                                                 name=util.name_derivative("ϕ", qs)))
            sym, expr = self.dϕdq(qs, strip=False)
            defs[sym] = expr

        # Define the quantities appearing at the various layers of the ϕ cake.
        print("model: {kind} defining auxiliary expressions".format(kind=self.kind))

        strip = symutil.strip_function_arguments

        def voigt_to_mat(vec):
            assert len(vec) == 6
            mat = sy.Matrix.zeros(3, 3)
            for k, (r, c) in symutil.voigt_mat_idx():
                mat[r, c] = mat[c, r] = vec[k]
            assert symutil.is_symmetric(mat)
            return mat

        B = sy.Matrix(self.Bs)     # Magnetic flux density (as column vector)
        ε = voigt_to_mat(self.εs)  # Cauchy strain
        e = voigt_to_mat(self.es)  # Deviatoric strain

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
            if kind is None or kind == self.kind:
                assert val.shape == (1,1)  # result should be scalar
                expr = val[0,0]  # extract scalar from matrix wrapper
                defs[strip(key)] = self.simplify(expr)

        # u', v', w' in terms of (I4, I5, I6)
        up, vp, wp = self.ups
        for key, val, kind in ((up, sy.sqrt(I4), None),
                               (vp, sy.S("3/2") * I5 / I4, None),
                               (wp, sy.sqrt(I6*I4 - I5**2) / I4, "3par")):
            if kind is None or kind == self.kind:
                defs[strip(key)] = val  # no simplification possible; just save.

        # u, v, w in terms of (u', v', w')
        u, v, w = self.us
        u0, v0, w0 = sy.symbols("u0, v0, w0")
        for key, val, kind in ((u, up / u0, None),
                               (v, vp / v0, None),
                               (w, wp / w0, "3par")):
            if kind is None or kind == self.kind:
                defs[strip(key)] = val

        assert all(isinstance(key, (sy.Symbol, sy.Derivative)) for key in defs)
        return defs

    def dϕdq(self, qs, strip):
        """Differentiate ϕ w.r.t. given independent variables, applying the chain rule.

        self.indepvars.keys() contains all valid independent variables.

        Parameters:
            qs: tuple of str
                Names of independent variables to differentiate with regard to.
                Use an empty tuple to skip differentiation and get just ϕ itself.

            strip: bool
                If True, pass the generated expr through symutil.strip_function_arguments()
                before returning it, replacing applied functions with bare symbols.

                If False, return the generated expr as-is.

                sym (the name) is always stripped.

        Example:
            m = Model(kind="2par")
            m.dϕdq(("Bx",), strip=True)      # ∂ϕ/∂Bx
            m.dϕdq(("Bx","Bx"), strip=True)  # ∂²ϕ/∂Bx²
            m.dϕdq(("Bx","By"), strip=True)  # ∂²ϕ/∂BxBy

        Returns:
            tuple (sym, expr)
        """
        invalid_inputs = [q for q in qs if q not in self.indepvars]
        if len(invalid_inputs):
            raise ValueError("Variable(s) {invalid} not in self.indepvars".format(invalid=", ".join(invalid_inputs)))

        # For the Symbol representing the function name, we can't use a
        # bare Symbol (i.e. a variable, not a function), because even with
        # evaluate=False, SymPy thinks that sy.diff(Derivative(ϕ, Bx), By) = 0,
        # if ϕ is a bare Symbol. (Strictly speaking this is correct;
        # for symbols, ∂x/∂x = 1, and ∂y/∂x = 0 for all y ≠ x.)
        #
        # Since all possible qs are in self.indepvars, we can use the following
        # strategy to generate a bare Symbol that represents the name:
        #
        #   Make an unknown function ϕ; then convert it to an applied function
        #   that depends on all indepvars; then perform differentiations (if any);
        #   finally, strip the argument lists from the result.
        λϕ = sy.symbols("ϕ", cls=sy.Function)
        sym = λϕ(*self.indepvars.values())  # **Symbols** of the indepvars

        # For the expression part (RHS of the API function being generated),
        # we use ϕ(u, v, w), where u, v, w then depend on... and so on,
        # until the independent variables are reached.
        #
        # Differentiating this, SymPy will automatically apply the chain rule.
        expr = self.build_ϕ()

        # In SymPy, differentiating an unknown function gives an unapplied
        # Subs (mathematical substitution) object instance:
        #   http://docs.sympy.org/latest/_modules/sympy/core/function.html
        for varname in qs:
            q    = self.indepvars[varname]
            sym  = sy.diff(sym, q, evaluate=False)
            expr = sy.diff(expr, q)
        sym = symutil.strip_function_arguments(sym)  # always strip the name

        # Apply the Subs object to eliminate the dummy variables in the
        # derivative expressions. E.g.
        #
        #   d/dξ1( ϕ(ξ1,v,w) )|ξ1=u  -->  d/du( ϕ(u,v,w) )
        #
        # The first expression is what the second one, strictly speaking, means:
        # first, differentiate ϕ w.r.t. the formal parameter "u"; then, in the
        # result, set its value to the given value of u.
        #
        # The second expression is the standard human-readable notation.
        #
        # In SymPy, applying the Subs object returned by diff() converts
        # the derivative expressions to the human-readable notation.
        if len(qs):  # if we did any differentiations
            expr = symutil.doit_in(expr)

        if strip:
            expr = symutil.strip_function_arguments(expr)

        # Don't try to simplify() expr; the grouping caused by the chain rule
        # is already good.

        assert sym != 0, "BUG in dϕdq(): symbol for function name is 0"
        return (sym, expr)

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
    scrub = symutil.derivatives_to_names_in
    for kind in ("2par", "3par"):
        m = Model(kind)
        print(m.kind)
        api = m.define_api()
        api_humanreadable = {scrub(k): scrub(v) for k, v in api.items()}
        print(api_humanreadable)

if __name__ == '__main__':
    test()
