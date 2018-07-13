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
        """Define stage1 functions meant for the end user.

        For example, can be used to define chain rule based expressions for
        the derivatives of a SymPy applied function (i.e. unspecified function,
        but with specified dependencies), in terms of other SymPy applied
        functions, and at the final layer, in terms of independent variables.

        This makes it easy to define a potential ϕ(u, v, w), where the auxiliary
        variables u, v, w depend on some other auxiliary variables, and so on,
        until (several layers later) the independent variables are reached.

        The API functions can then be the derivatives of this ϕ w.r.t. the
        **independent** variables, via the chain rule.

        Bare SymPy symbols are used to represent everything.

        LHS is a symbol, which becomes the name of the API function
        (see ``symutil.derivatives_to_names_in()`` and ``util.degreek()``,
         automatically used by stage1).

        In the RHSs, as the final step, the dependency information should be
        discarded by calling symutil.strip_function_arguments(); this produces
        bare symbols that are suitable for stage1.

        For providing SymPy expressions for the quantities that appear on the
        RHSs of the API functions, see ``define_helpers()``. Only the base
        expression for each helper needs to be defined; its derivatives
        (if needed) are derived symbolically by stage1.

        Abstract method, must be overridden in a derived class.

        Must return:
            dictionary of ``sy.Symbol`` -> ``sy.Expr``
              key: LHS, value: RHS
        """
        raise NotImplementedError("Abstract method; must be overridden in a derived class")

    @abstractmethod
    def define_helpers(self):
        """Define stage1 bound symbols.

        The LHSs are symbols appearing on the RHSs of the API functions
        (see ``define_api()``), as bare SymPy symbols.

        The RHSs of the helpers are flat expressions of symbols (i.e. no
        undefined functions or applied functions; SymPy built-ins like sin()
        are allowed).

        stage1 emits Fortran code for all helpers defined here.

        Additionally, stage1 detects derivatives of these helpers in the RHS
        of the API functions. It automatically performs symbolic differentiation,
        and emits Fortran code for any derivatives of these helpers that are
        needed by any of the API functions.

        Only needed derivatives are generated; the helpers are considered
        internal to the mathematical model, and of no interest to the end user,
        so we do not generate the full set of derivatives.

        Derivatives that can be symbolically shown to be identically zero are
        omitted; stage1 optimizes away any parts of expressions that are
        identically zero.

        (Implication: only derivatives w.r.t. quantities directly appearing
         on the RHS of any given helper are supported; otherwise, the derivative
         appears to be zero and will be omitted. If you have several layers
         of helpers, then in ``define_api()``, use the chain rule to make the
         correct derivatives appear for each layer.)

        Only references that directly appear in the RHS expressions of the API
        functions are detected by stage1. Nested dependencies are handled in
        stage2, when it generates the public API (from the output of stage1).

        !! It must be manually enforced that the applied function definitions
        used inside ``define_api()`` and the helper RHSs use the same symbols;
        otherwise some derivatives might not be generated. E.g. if in the definition
        of the helper "u", the RHS is some expression containing I4, then in
        ``define_api()``, we must declare u = u(I4) so that the chain rule
        picks up this dependency. !!

        (Continuing the example, the flatness of the RHSs means that if
        ``define_api()`` declares I4 = I4(B, ε), the RHS for the helper "I4"
        is an expression of B and ε. The higher-layer helper u = u(I4)
        does not need to know what its argument I4 in turn depends on.)

        Constants such as model parameters may freely appear on any RHSs.
        Anything not defined by stage1 is treated by stage2 as an input to
        the model, and is passed through to the top-level public API, to be
        supplied by the end user.

        Abstract method, must be overridden in a derived class.

        Must return:
            dictionary of ``sy.Symbol`` -> ``sy.Expr``
        """
        raise NotImplementedError("Abstract method; must be overridden in a derived class")

    def simplify(self, expr):
        """Simplify expressions used by this model. Generic fallback.

        Derived classes may override this to provide a specific simplifier
        that works particularly well with their particular expressions.
        """
        return sy.simplify(expr)
