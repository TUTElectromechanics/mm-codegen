#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""Abstract base class for models based on a scalar potential.

Really just a central place for common parts to DRY out the implementations.

Created on Wed Jul 18 13:47:54 2018

@author: Juha Jeronen <juha.jeronen@tut.fi>
"""

from abc import ABCMeta

import sympy as sy

import symutil

from modelbase import ModelBase

class PotentialModelBase(ModelBase):
    """Abstract base class for scalar potential models."""
    __metaclass__ = ABCMeta

    def dϕdq(self, qs, strip):
        """Differentiate the potential ϕ w.r.t. given independent variables.

        self.indepvars.keys() contains all valid independent variables.

        If ϕ is a layer cake of SymPy applied functions, the chain rule is
        applied automatically.

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
            m = Model()
            m.dϕdq(("Bx",), strip=False)      # ∂ϕ/∂Bx
            m.dϕdq(("Bx","Bx"), strip=False)  # ∂²ϕ/∂Bx²
            m.dϕdq(("Bx","By"), strip=False)  # ∂²ϕ/∂BxBy

        Returns:
            tuple (sym, expr)
        """
        assert hasattr(self, "indepvars")  # if not, check your implementation!

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
        expr = self.ϕ

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