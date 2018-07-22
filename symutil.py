#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""Utilities for treating symbolic expressions.

Created on Wed Nov  1 14:46:34 2017

@author: Juha Jeronen <juha.jeronen@tut.fi>
"""

import sympy as sy
from sympy.core.function import UndefinedFunction

from util import name_derivative

def make_function(name, *deps):
    """Create an unspecified function with known dependencies.

    (Convenience function.)

    Parameters:
        name: str
            Name of the function to define.

        *deps: sy.Symbol
            Either an independent variable (bare symbol, e.g. sy.symbols("x")),
            or to create a layer cake, a symbol previously returned by
            ``make_function()`` itself.

    Returns:
        sy.Function
            The applied function (see below).

    In SymPy, unspecified functions are set up in two steps:

    1) An "undefined function": a symbol for a generic unknown function
       having the given symbol name.

       Each function must have a unique symbol name. SymPy distinguishes
       between symbols by symbol name, flags and Python object type
       (e.g. sy.Symbol vs. sy.Function).

    2) An "applied function" (of symbols). Calling an UndefinedFunction
       instance, with symbols as parameters, returns an otherwise
       unspecified function that formally depends on the given symbols.
       Importantly, these dependencies are recognized in symbolic
       differentiation.

       SymPy creates a new Python type (class) for each function name,
       using the symbol name of the undefined-function instance (that
       was used to create the applied-function instance) as the name
       of the new Python type.

    Example, raw SymPy:

        import sympy as sy
        x, y = sy.symbols("x, y")              # independent variables
        λf = sy.symbols("f", cls=sy.Function)  # undefined function
        f = λf(x, y)                           # applied function
        type(f)  # --> f

    Using ``make_function()``:

        import sympy as sy
        x, y = sy.symbols("x, y")
        f = make_function("f", x, y)
    """
    λf = sy.symbols(name, cls=sy.Function)
    return λf(*deps)

def sortkey(sym):
    """Sort key for ``sy.Symbol`` objects.

    Returns:
        The string representation of ``sym``, lowercased.
    """
    return str(sym).lower()

def nameof_as_symbol(sym):
    """Return a new ``sy.Symbol`` that has the same symbol name as ``sym``.

    Useful to unify handling of ``Symbol`` and ``UndefinedFunction`` objects
    in use cases that need only the symbol name, since these datatypes store
    their symbol names differently.

    Assumptions are copied from sym.

    **Danger**: if sym is an ``UndefinedFunction``, the returned ``Symbol``
    is marked with default assumptions (as of SymPy 1.0, ``commutative=True``).

    Obviously, a ``Symbol`` cannot represent an ``UndefinedFunction``
    completely faithfully, as these datatypes are *intended* to have
    different behavior.
    """
    if hasattr(sym, "name"):
        return sy.symbols(sym.name, **sym.assumptions0)
    else:  # e.g. an undefined function has no name, but its *class* has a __name__.
        return sy.symbols(sym.__class__.__name__, **sym.assumptions0)

def strip_function_arguments(expr):
    """Strip argument lists from unknown functions in ``expr``.

    The stripping is applied recursively.

    In the output, each ``UndefinedFunction`` is replaced by a bare ``Symbol``
    having the same symbol name.

    Mainly useful for printing, when there are several layers of dependencies
    and one takes partial derivatives utilizing the chain rule. This often
    leads to kilometer-long argument lists that make an unstripped printout
    of ``expr`` unreadable for humans.
    """
    # We cannot use apply_to_instancesof_in() to implement this, since each
    # undefined function is an instance of its own Python type, and *this type*
    # is an instance of UndefinedFunction.
    #
    # This pattern is specific to UndefinedFunctions, so we implement manually.

    if isinstance(expr.__class__, UndefinedFunction):
        return nameof_as_symbol(expr)  # don't bother recursing into args since they get deleted here
    elif expr.is_Atom:
        return expr
    else:  # compound other than an undefined function
        out = [strip_function_arguments(x) for x in expr.args]
        cls = type(expr)
        return cls(*out)

def canonize_derivative(expr):
    """Sort the varlist (diff w.r.t. what) in a derivative.

    Useful for higher derivatives of C^k functions.

    Parameters:
        expr: sy.Derivative

    Returns:
        expr, with the variables w.r.t. which the derivative is taken,
              sorted in canonical order using ``symutil.sortkey()``.
    """
    if not isinstance(expr, sy.Derivative):
        raise TypeError("Expected Derivative, got {} {}".format(type(expr), expr))

    f, *vs = expr.args
    out = [f]
    out.extend(sorted(vs, key=sortkey))

    cls = type(expr)
    return cls(*out, evaluate=False)  # FIXME: how to better handle the evaluate flag?

def derivatives_needed_by(expr, canonize=True):
    """Return a list describing derivatives ``expr`` needs.

    This works by matching unevaluated ``Derivative`` symbols in ``expr``, recursively.

    Parameters:
        expr: sy.Expr
            The expression.

        canonize: bool
            If True, the varlist (diff w.r.t. what) of each derivative will be sorted.
              (Useful for higher derivatives of C^k functions.)
            If False, the varlist is passed through as-is.

    Returns: tuple
        containing tuples of symbols (f, x1, x2, ..., xn), where:
            f: the function that is differentiated. This is the original symbol
               from ``expr``.

            x1, x2, ..., xn: variables with respect to which f is differentiated.
                             Higher derivatives are represented by repeating
                             the same symbol, e.g. ∂²f(x)/∂x² -> (f,x,x).
    """
    maybe_canonize = canonize_derivative if canonize else lambda x: x
    derivatives = set()
    def process(e):
        if isinstance(e, sy.Derivative):
            # args[0] = function, args[1:] = diff. w.r.t. what
            if not e.args[0].is_Number:  # ignore nonsense like "d(0)/dx"
                derivatives.add(maybe_canonize(e).args)
        elif not e.is_Atom:  # compound other than a derivative
            for x in e.args:
                process(x)
    process(expr)
    # sort the derivatives (passing the final varlists through as-is)
    return sorted(derivatives, key=lambda item: [sortkey(x) for x in item])

def map_instancesof_in(func, cls, expr):
    """Apply ``func`` to instances of given ``cls`` in ``expr``, recursively.

    If you need to adapt a different call signature, or call members of
    ``Expr``, use a helper function:

        def apply_helper(expr):
            expr.some_member_function()
        result = map_instancesof_in(apply_helper, whatever, whatever)

    Parameters:
        func: function ``Expr`` -> ``Expr``
            Each subexpr that matches ``cls`` will be replaced by ``func(subexpr)``.
            Note that the output may be any subclass of Expr, i.e. type changes
            are also allowed. The Expr output type is because the output, just
            like the input, must be a valid node for a SymPy expression tree.
        cls: type, or tuple of types
            where type is a SymPy expression type such as ``Add``, ``Mul``, ``Subs``, ...
        expr: SymPy expression object

    Returns:
        Processed ``Expr``, where ``func`` has been applied to each instance
        of ``cls`` in ``expr``.
    """
    # Atoms do not have args, but their constructors have positional arguments
    # depending on the specific type, so we must process them separately.
    if expr.is_Atom:
        return func(expr) if isinstance(expr, cls) else expr
    else:
        # note order of processing: we must do args first, then expr itself
        out = [map_instancesof_in(func, cls, x) for x in expr.args]
        expr_cls = type(expr)
        # TODO: do we need to copy also something other than assumptions here?
        tmp = expr_cls(*out, **expr.assumptions0)
        return func(tmp) if isinstance(tmp, cls) else tmp

def collect_const_in(expr):
    """Collect constant factors in sums nested inside ``expr``."""
    return map_instancesof_in(sy.collect_const, sy.Add, expr)

def doit_in(expr):
    """Apply substitutions nested inside ``expr``."""
    def doit_func(expr):
        return expr.doit()
    return map_instancesof_in(doit_func, sy.Subs, expr)

def derivatives_to_names_in(expr, as_fortran_identifier=False):
    """Rename derivative objects in ``expr``, recursively.

    Derivatives in ``expr`` will be replaced by bare symbols. The symbols are named
    using a naming scheme that depends on the option ``as_fortran_identifier``.

    Parameters:
        expr: sy.Expr
            The expression to process.

        as_fortran_identifier: bool
            If False, the generated symbol names are a Unicode representation
            of standard mathematical notation, e.g. ∂f/∂x.

            If True, the generated symbol names are sanitized for use as
            Fortran identifiers, e.g. df_dx. Note that this only sanitizes
            the derivative notation, and especially, does **not** remove
            Greek characters; for that, see ``util.degreek()``.

    Returns:
        sy.Expr:
            The processed expression.
    """
    def rename(expr):
        expr = strip_function_arguments(expr)
        fname  = str(expr.args[0])
        vnames = [str(arg) for arg in expr.args[1:]]
        # we must return an Expr, so wrap the identifier in a Symbol
        return sy.symbols(name_derivative(fname, vnames, as_fortran_identifier=as_fortran_identifier))
    return map_instancesof_in(rename, sy.Derivative, expr)

def is_symmetric(mat):
    """Return whether a sy.Matrix is symmetric."""
    n, nc = mat.shape
    return nc == n and all(mat[j,i] == mat[i,j] for i in range(n) for j in range(i+1, n))

def voigt_mat_idx():
    """Return index conversion table between Voigt-packed vector and matrix.

    For symmetric rank-2 tensors in 3D space.

    Returns:
        ((k, (r, c)), ...)
          where
            k: index in Voigt-packed vector (0-based)
            r: row in matrix (0-based)
            c: column in matrix (0-based)

        The matrix is symmetric; (r, c) pairs are given for the upper triangle only.

    Example (math notation):

        ε_voigt = [εxx,εyy,εzz,εyz,εzx,εxy] = [ε1,ε2,ε3,ε4,ε5,ε6]

        ε_mat = [[ε1, ε6, ε5]
                 [ε6, ε2, ε4]
                 [ε5, ε4, ε3]]
    """
    return ((0, (0, 0)),
            (1, (1, 1)),
            (2, (2, 2)),
            (3, (1, 2)),
            (4, (0, 2)),
            (5, (0, 1)))

def voigt_to_mat(vec):
    """Convert Voigt-packed vector to matrix.

    For symmetric rank-2 tensors in 3D space.

    Parameters:
        vec: indexable, length 6
            See ``voigt_mat_idx()`` for which component is which.

    Returns:
        sy.Matrix, shape (3, 3)
            The matrix representation of vec. Guaranteed to be symmetric.
    """
    if len(vec) != 6:
        raise ValueError("vec should have length 6, got {invalid}".format(invalid=len(vec)))
    mat = sy.Matrix.zeros(3, 3)
    for k, (r, c) in voigt_mat_idx():
        mat[r, c] = mat[c, r] = vec[k]
    assert is_symmetric(mat)
    return mat
