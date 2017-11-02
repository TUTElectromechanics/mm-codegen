#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""Utilities for treating symbolic expressions.

Created on Wed Nov  1 14:46:34 2017

@author: jje
"""

import sympy as sy
from sympy.core.function import UndefinedFunction

from iterutil import uniqify, flatten_if

def strip_function_arguments(expr):
    """Strip kilometer-long argument lists from expressions of unknown functions.

    The stripping is applied recursively.

    In the output, each undefined function is replaced by a bare symbol of the same name.

    Mainly useful for printing, when there are several layers of dependencies
    and one takes partial derivatives utilizing the chain rule.

    Also used internally by find_needed_derivatives().
"""
    def nameof_as_symbol(x):
        if hasattr(x, "name"):
            return sy.symbols(x.name, **x.assumptions0)  # TODO: should we copy the assumptions like this?
        else:
            return sy.symbols(x.__class__.__name__, **x.assumptions0)

    if isinstance(expr.__class__, UndefinedFunction):
        return nameof_as_symbol(expr)
    elif expr.is_Atom:
        return expr
    else:  # compound other than an undefined function
        out = [strip_function_arguments(x) for x in expr.args]
        cls = type(expr)
        return cls(*out)

def find_needed_derivatives(expr):
    """Find which derivatives an expression needs.

    This works by matching unevaluated Derivative symbols in expr, recursively.

    Returns: tuple
        containing (function_name, var_name) pairs.
"""
    derivatives = set()
    def process(e):
        if isinstance(e, sy.Derivative):
            # Prevent generating "d(0)/dx" if we substitute some functions with zeroes.
            if not e.args[0].is_Number:
                derivatives.add(e.args)  # args[0] = function, args[1:] = diff. w.r.t. what
        elif not e.is_Atom:  # compound other than a derivative
            for x in e.args:
                process(x)
    process(strip_function_arguments(expr))
    # item[0] = function as sy.Symbol, item[1:] = vars as sy.Symbol
    return sorted(derivatives, key=lambda item: [x.name for x in item])

def collect_const_in(expr):
    """Collect constant factors in sums nested inside expr."""
    if expr.is_Atom:
        return expr
    else:
        # note order of processing: we must do args first, then e itself
        out = [collect_const_in(x) for x in expr.args]
        cls = type(expr)
        tmp = cls(*out)
        return sy.collect_const(tmp) if isinstance(tmp, sy.Add) else tmp

def doit_in(expr):
    """Apply substitutions nested inside expr."""
    if expr.is_Atom:
        return expr
    else:
        # note order of processing: we must do args first, then e itself
        out = [doit_in(x) for x in expr.args]
        cls = type(expr)
        tmp = cls(*out)
        return tmp.doit() if isinstance(tmp, sy.Subs) else tmp
