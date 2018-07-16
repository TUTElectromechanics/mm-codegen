#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""Interface for models.

See model.py for a real-world usage example.

Created on Thu Nov  9 10:39:51 2017

@author: Juha Jeronen <juha.jeronen@tut.fi>
"""

from abc import ABCMeta, abstractmethod

import sympy as sy

class ModelBase:
    """Abstract base class for mathematical models supported by this software."""
    __metaclass__ = ABCMeta

    @abstractmethod
    def define_api(self):
        """Define stage1 functions.

        What to define in stage1? For example:

          - Quantities which have analytical expressions.

          - Quantities that depend on other quantities, in a treelike fashion.
            Useful for building a layer cake of auxiliary variables, while
            keeping the definitions at each level as simple as possible.

          - Quantities that depend on derivatives of other quantities. E.g. if
            "∂f/∂x" appears on the RHS of some other quantity, and an LHS "f"
            has been defined, then stage1 will automatically derive ∂f/∂x by
            differentiating the RHS of "f", and add it to the definitions.

          - Chain rule based expressions for the derivatives of a potential,
            represented as a SymPy applied function (i.e. unspecified function,
            but with specified dependencies), in terms of other SymPy applied
            functions, and at the final layer, in terms of independent variables.

            So we can have a potential ϕ(u, v, w), where the auxiliary variables
            u, v, w depend on some other auxiliary variables, and so on, until
            (several layers later) the independent variables are reached.

            We can then declare the stage1 functions as the derivatives of
            this ϕ w.r.t. the **independent** variables. Given the layer cake
            definition of ϕ as an applied function, SymPy automatically applies
            the chain rule.

            The potential ϕ itself can, but does not need to, be declared here.
            If you have a custom Fortran code to compute ϕ, ∂ϕ/∂u, ∂ϕ/∂v, etc.,
            just tell stage2 about its interface, and those functions will be
            considered as stage1 (on equal footing with any generated code).

        LHS is a symbol, which is used to generate the name of the API function.
        stage1 automatically invokes ``symutil.derivatives_to_names_in()``
        and ``util.degreek()`` to make a Fortran-compatible name.

        The LHS names are also used for lookup when generating the derivatives.

        On the LHS, bare SymPy symbols are used (even if a function).

        On the LHS, to represent a derivative, use an unevaluated Derivative
        instance. Example: sy.Derivative(ϕ, Bx, evaluate=False) means ∂ϕ/∂Bx.

        RHS is a SymPy expression; applied functions can be used here if needed.

        CAUTION:
            To reliably produce these unevaluated derivatives, first use an
            applied function (with the desired dependencies), differentiate
            that, and finally strip the result. This is required, since strictly
            speaking, for bare symbols ∂x/∂x = 1 and ∂y/∂x = 0 for all y ≠ x.

            Example. Given:

                from functools import partial  # (partial application, not ∂!)
                import sympy as sy
                D = partial(sy.Derivative, evaluate=False)

            Even with evaluate=False, we get:

                f, x, y = sy.symbols("f, x, y")
                d2fdxdy = D(D(f, x), y)  # --> 0

            Do this instead:

                import symutil
                x, y = sy.symbols("x, y")
                λf = sy.symbols("f", cls=sy.Function)  # undefined function
                f = λf(x, y)                           # applied function
                d2fdxdy = D(D(f, x), y)  # --> ok  (just D(f, x, y) also ok)
                LHSname = symutil.strip_function_arguments(d2fdxdy)  # --> "Derivative(f, x, y)"

        Abstract method, must be overridden in a derived class.

        Must return:
            dictionary of ``sy.Symbol`` -> ``sy.Expr``
              key: LHS, value: RHS
        """
        raise NotImplementedError("Abstract method; must be overridden in a derived class")


    def simplify(self, expr):
        """Simplify expressions used by this model. Generic fallback.

        Derived classes may override this to provide a specific simplifier
        that works particularly well with their particular expressions.
        """
        return sy.simplify(expr)
