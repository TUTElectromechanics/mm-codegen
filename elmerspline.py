#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""Python implementation of the spline routines in Elmer's GeneralUtils.F90.

This module provides compatibility with the finite element software Elmer.
You can provide your own (x,y) data points, and get cubic spline coefficients
in the format Elmer uses.

Mapping of routines:

    Elmer name          Python name

    CubicSpline         solve_coeffs
    CubicSplineVal      evaluate_cubic_spline
    CubicSplinedVal     evaluate_cubic_spline_derivative

This is especially useful for e.g. custom material models, which can then
use Elmer's spline routines to evaluate function values in the solver code.

In this use case, solve_coeffs() is the one you mainly need; the other two
routines can be used for testing on the Python side to see how the spline
fit looks.

See main() for a usage example.

Created on Sun Oct 15 00:00:00 2017

@author: Juha Jeronen <juha.jeronen@tut.fi>
"""

import numpy as np
import matplotlib.pyplot as plt

# Internal function specific to Elmer's spline implementation.
# AFAIK, this is NOT a generic tridiagonal solver.
#
def _solve_tridiag(y, h):
    y = np.atleast_1d(y)
    h = np.atleast_1d(h)
    if y.ndim > 1:
        raise ValueError("y must be rank-1 array, got rank-%d" % y.ndim)
    if h.ndim > 1:
        raise ValueError("h must be rank-1 array, got rank-%d" % h.ndim)
    if y.shape != h.shape:
        raise ValueError("y and h must have same shape; got y = %s, h = %s" % (y.shape, h.shape))

    b = np.empty_like(y)
    r = np.empty_like(y)

    # Unlike Elmer's implementation, we compute r[0] and r[-1] here, not in the caller.
    #
    # This is so that no extra arguments need to be passed in, since we *return* r
    # instead of writing into a caller-given array.
    #
    r[0]  = ( y[1]  - y[0]  ) / h[0]
    r[-1] = ( y[-1] - y[-2] ) / h[-1]

#   DO i=2,n-1
#     b(i) = 2 * ( h(i-1) + h(i) )
#     r(i) = 3 * ( h(i)   * ( y(i)-y(i-1) ) / h(i-1) + &
#                  h(i-1) * ( y(i+1)-y(i) ) / h(i) )
#   END DO
    b[1:-1] = 2 * ( h[:-2] + h[1:-1] )
    r[1:-1] = 3 * ( h[1:-1] * ( y[1:-1] - y[:-2]  ) / h[:-2] +
                    h[:-2]  * ( y[2:]   - y[1:-1] ) / h[1:-1] )

    r[1] = r[1] - h[1]*r[0]
    n = y.shape[0]
    for i in range(1, n-1):
        s       = -h[i+1] / b[i]
        r[i+1] +=  s*r[i]
        b[i+1] +=  s*h[i-1]

    for i in range(n-2, 1, -1):
        r[i] = (r[i] - h[i-1]*r[i+1]) / b[i]

    return r

def solve_coeffs(x, y, aeps=1e-8):
    """Create a cubic spline that passes through given points in the xy plane.

    Parameters:
        x: rank-1 array of np.float64
            data x coordinates. Recommended to be monotone i.e. (x[1:] - x[:-1] > 0).all().

            Strictly, x can be non-monotone, but that will cause problems in
            evaluate_cubic_spline(), as we use a simplistic x-coordinate based
            approach for the detection of the correct piecewise segment.
        y: rank-1 array of np.float64
            data y coordinates (function values) so that y[k] = f(x[k]) for your function f.
        aeps: float
            Minimum allowed length of an x-interval (see the implementation).

            Differs from Elmer's in that Elmer has a global AEPS, and there
            CubicSpline uses 10*AEPS; whereas we use the given aeps as-is.

    Returns:
        r: rank-1 array of np.float64
            Cubic spline coefficients in Elmer format.
"""
    x = np.atleast_1d(x)
    y = np.atleast_1d(y)
    if x.ndim > 1:
        raise ValueError("x must be rank-1 array, got rank-%d" % x.ndim)
    if y.ndim > 1:
        raise ValueError("y must be rank-1 array, got rank-%d" % y.ndim)
    if x.shape != y.shape:
        raise ValueError("x and y must have same shape; got x = %s, y = %s" % (x.shape, y.shape))

    x_is_monotone = (x[1:] - x[:-1] > 0).all()
    h = x[1:] - x[:-1]

    if x_is_monotone:
        r = np.empty_like(y)
        r[0]  = ( y[1]  - y[0]  ) / h[0]
        r[-1] = ( y[-1] - y[-2] ) / h[-1]

        h       = ( y[1:] - y[:-1] ) / h
        r[1:-1] = ( h[:-1] + h[1:] ) / 2

        n = y.shape[0]
        for i in range(n-1):
            if abs(h[i]) < aeps:  # Elmer uses 10*aeps
                r[i]   = 0
                r[i+1] = 0
                continue

            alpha = r[i]   / h[i]
            beta  = r[i+1] / h[i]
            if alpha < 0 or beta < 0:
                r[i] = 0
                continue

            tau = np.sqrt(alpha**2 + beta**2)
            if tau > 3:
                tau = 3 / tau
                r[i]   = alpha * tau * h[i]
                r[i+1] = beta  * tau * h[i]
    else:
        r = _solve_tridiag(y,h)

    return r

def _evaluate_cubic_spline_one(x, y, r, t):
    """Evaluate one point on the cubic spline.

    Parameters:
        x : rank-1 np.array of np.float64, length 2
            data x coordinates
        y : rank-1 np.array of np.float64, length 2
            data y coordinates
        r : rank-1 np.array of np.float64, length 2
            corresponding elements of output of solve_coeffs() for your data
        t : float
            point where to evaluate. Must be between the given x values.

    Returns:
        s : float
            Value of the spline at the point t.
"""
    h = x[1] - x[0]
    a = -2 * ( y[1] - y[0] ) + (   r[0] + r[1] ) * h
    b =  3 * ( y[1] - y[0] ) - ( 2*r[0] + r[1] ) * h
    c = r[0] * h
    d = y[0]

    lt = (t - x[0]) / h  # 0..1
    return ((a*lt + b) * lt + c) * lt + d

def evaluate_cubic_spline(x, y, r, t):
    """Evaluate cubic spline at points.

    Parameters:
        x : rank-1 np.array of np.float64
            data x coordinates
        y : rank-1 np.array of np.float64
            data y coordinates
        r : rank-1 np.array of np.float64
            output of solve_coeffs() for your data
        t : rank-1 np.array of np.float64
            points where to evaluate. Must satisfy (x[0] <= t <= x[-1]).all().

    Returns:
        s : rank-1 np.array of np.float64
            Value of the spline at the points t.
"""
    return _evaluate_generic(x,y,r,t, _evaluate_cubic_spline_one)

def _evaluate_cubic_spline_derivative_one(x, y, r, t):
    """Evaluate one point on the first derivative of the cubic spline.

    Parameters:
        x : rank-1 np.array of np.float64, length 2
            data x coordinates
        y : rank-1 np.array of np.float64, length 2
            data y coordinates
        r : rank-1 np.array of np.float64, length 2
            corresponding elements of output of solve_coeffs() for your data
        t : float
            point where to evaluate. Must be between the given x values.

    Returns:
        s : float
            Value of the derivative at the point t.
"""
    h = x[1] - x[0]
    a = -2 * ( y[1] - y[0] ) + (   r[0] + r[1] ) * h
    b =  3 * ( y[1] - y[0] ) - ( 2*r[0] + r[1] ) * h
    c = r[0] * h

    lt = (t - x[0]) / h  # 0..1
    return ((3*a*lt + 2*b) * lt + c)/h

def evaluate_cubic_spline_derivative(x, y, r, t):
    """Evaluate first derivative of cubic spline at points.

    Parameters:
        x : rank-1 np.array of np.float64
            data x coordinates
        y : rank-1 np.array of np.float64
            data y coordinates
        r : rank-1 np.array of np.float64
            output of solve_coeffs() for your data
        t : rank-1 np.array of np.float64
            points where to evaluate. Must satisfy (x[0] <= t <= x[-1]).all().

    Returns:
        s : rank-1 np.array of np.float64
            Value of the derivative at the points t.
"""
    return _evaluate_generic(x,y,r,t, _evaluate_cubic_spline_derivative_one)

# For each t, find the corresponding piecewise interval, and call func.
#
def _evaluate_generic(x, y, r, t, func):
    if (t < x[0]).any() or (t > x[-1]).any():
        raise ValueError("at least one t is out of the allowed range (%g, %g)" % (x[0], x[-1]))

    # FIXME: extremely inefficient, a loop with searches
    s = np.empty_like(t)
    for k,tau in enumerate(t):
        # find which interval this tau belongs to
        #
        # TODO: add support for non-monotone x:
        #  - generate all possible solutions
        #  - pick the one where the point on the spline curve is the closest to the previous point
        #
        i1 = np.where(x <= tau)[0][-1]  # this is always non-empty, so we may [-1] right here
        i2 = np.where(x >  tau)[0]

        # If tau == x[-1], then i2 will be empty, so we special-case that.
        #
        # Safer to switch on whether i2 is empty or not than use floating-point equality.
        #
        if len(i2):  # general case
            i2  = i2[0]
            I   = np.r_[i1:i2+1]
        else:        # tau == x[-1]
            i1 -= 1  # i1 points to the last element of x, but we want the one before that
                     # to get the last *interval*.
            I   = np.r_[i1:i1+2]  # i1+2 is now one-past-end, so x[I] refers to x[-2:].
        s[k] = func(x[I], y[I], r[I], tau)

    return s

def main():
    """Usage example."""
    f  = lambda x: np.sin(np.pi*x)  # function which will be approximated by a spline
    x1 = 0
    x2 = 1
    ndata = 11   # how many data points in [x1,x2] to use to create the spline fit
    nvis  = 101  # how many points used for plotting results

    # create data
    #
    xx = np.linspace(x1,x2, ndata)
    yy = f(xx)

    # create spline fit
    #
    rr = solve_coeffs(xx,yy)
    tt = np.linspace(x1,x2, nvis)
    ss = evaluate_cubic_spline(xx, yy, rr, tt)

    # plot
    #
    yr = f(tt)  # reference
    plt.figure(1)
    plt.clf()
    plt.plot(tt, yr, 'k--')  # reference
    plt.plot(tt, ss, 'r-')   # spline fit
    plt.plot(xx, yy, 'rx')   # data points used to create the fit
    plt.grid(b=True, which='both')

if __name__ == '__main__':
    main()
    plt.show()

