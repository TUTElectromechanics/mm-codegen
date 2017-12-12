#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""Interface for models.

See model.py for a real-world usage example.

Created on Thu Nov  9 10:39:51 2017

@author: jje
"""

from abc import ABCMeta, abstractmethod

import sympy as sy

class ModelBase:
    """Abstract base class for mathematical models of the category considered in this software."""
    __metaclass__ = ABCMeta

    def __init__(self):
        pass

    # TODO: better description
    @abstractmethod
    def define_api(self):
        """Define API of mathematical functions for the end user.

        Abstract method, must be overridden in a derived class.

        Must return:
            dictionary of ``sy.Symbol`` -> ``sy.Expr``
"""
        raise NotImplementedError("Abstract method; must be overridden in a derived class")

    # TODO: better description
    @abstractmethod
    def define_helpers(self):
        """Define bound symbols for stage2 of code generation.

        Helpers are detected in the RHS expressions of the API functions
        (see ``define_api()``).

        Derivatives of helpers are handled as a special case; they are
        generated automatically when needed.

        Abstract method, must be overridden in a derived class.

        Must return:
            dictionary of ``sy.Symbol`` -> ``sy.Expr``
"""
        raise NotImplementedError("Abstract method; must be overridden in a derived class")

    def simplify(self, expr):
        """Simplify expressions used by this model.

        Derived classes may override this to provide specific simplification
        sequences that work particularly well with those expressions.

        This base class provides a generic fallback.
"""
        return sy.simplify(expr)
