#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import sys
import math

import numpy as np

import matplotlib.pyplot as plt
import matplotlib.cm
import matplotlib.colors

import bspline
import bspline.splinelab as splinelab

import elmerspline

#def round_sig(x, sig=2, method='round'):
#    """Round float x to sig significant figures.
#
#    method = string:
#      'round': round by standard rounding rules (default)
#      'ceil':  always round up
#      'floor': always round down
#
#    See
#    http://stackoverflow.com/questions/3410976/how-to-round-a-number-to-significant-figures-in-python"""
##    # As per answer by indgar, and adding abs() as suggested by dgorissen to handle also x<0.
##    # Added also handling for zero as a special case.
##    #
##    if x == 0.0:
##        return x
##    else:
##        return round(x, sig-int(math.floor(math.log10(abs(x))))-1)
#
#    # Chris Stringfellow's answer (which allows for generalization to "ceil"/"floor" also):
#    #
#    # To round an integer to 1 significant figure the basic idea is to convert it to a floating point
#    # with 1 digit before the point and round that, then convert it back to its original integer size.
#    #
#    # To do this we need to know the largest power of 10 less than the integer. We can use floor of
#    # the log 10 function for this. 
#    #
#    #from math import log10, floor
#    #def round_int(i,places):
#    #    if i == 0:
#    #        return 0
#    #    isign = i/abs(i)
#    #    i = abs(i)
#    #    if i < 1:
#    #        return 0
#    #    max10exp = floor(log10(i))
#    #    if max10exp+1 < places:
#    #        return i
#    #    sig10pow = 10**(max10exp-places+1)
#    #    floated = i*1.0/sig10pow
#    #    defloated = round(floated)*sig10pow
#    #    return int(defloated*isign)
#
#    # Adapting the above for floats, and adding logic to round always up or down, we have:
#
#    if x == 0.0:
#        return x
#
#    xsign = x/abs(x)
#    x = abs(x)
#
#    if xsign > 0:
#        if method == 'ceil':
#            rounded = math.ceil
#        elif method == 'floor':
#            rounded = math.floor
#        else: # method == 'round':
#            rounded = round
#    else:
#        # emulate correct behaviour of ceil/floor for negative input
#        # (given that our x is always positive at this point)
#        if method == 'floor':
#            rounded = math.ceil
#        elif method == 'ceil':
#            rounded = math.floor
#        else: # method == 'round':
#            rounded = round
#
#    max10exp = math.floor(math.log10(x))
#    sig10pow = 10**(max10exp-sig+1)
#    floated = x*1.0/sig10pow
#    defloated = rounded(floated)*sig10pow
#    return defloated*xsign

def ulp(x):
    """Unit in the last place for float x."""
    # For the half-open interval [1,2), we have ulp = eps; scale from that.
    #
    # TODO: we assume x is normal (no support for subnormal numbers)
    #
    eps = sys.float_info.epsilon
    x = abs(x)
    fac = 2**math.floor(math.log2(x))
    return fac*eps

def quadspace(x1, x2, nx, refine='left'):
    """Make a quadratic spacing with more points either on the left or on the right."""
    xx = np.linspace(0, 1, nx)**2
    if refine == 'right':
        xx = (1 - xx)[::-1]
    return x1 + (x2 - x1)*xx

def main():
    # Original knots
    #
    x1    = 0
    x2    = 1
    x_orig = np.linspace(x1, x2, 21)
    order = 3

    # We stretch the domain of the splines just a bit to avoid evaluating them
    # exactly at x2, as the splines actually have support on the half-open
    # interval [x1,x2).
    #
    def marginize_end(x):
        out      = x.copy()
        out[-1] += 1e-10 * (x[-1] - x[0])
        return out

    knots = splinelab.aptknt(marginize_end(x_orig), order)
    spl   = bspline.Bspline(knots, order)
    nb    = len( spl(0.) )  # get number of basis functions (perform dummy evaluation and count)


    # Sites used for creating the Elmer spline.
    #
    # We use different sites for different functions to represent them well
    # with a small number of points.
    #
    nx = 41
    xx = np.empty( (nb,nx), dtype=np.float64 )
    ff = np.empty( (nb,nx), dtype=np.float64 )

    # The first and last basis functions have no internal maximum.
    #
    xx[0,:]  = quadspace(x1, x2, nx, refine='left')
    xx[-1,:] = quadspace(x1, x2, nx, refine='right')

    # For the other functions, create a spacing that has one point
    # exactly at the peak.
    #
    import scipy.optimize

    def make_f(j):
        scalar_f = spl.diff(order=1)  # lambda x: ...
        scalar_fj = lambda x: scalar_f(x)[j]
        vector_fj = np.vectorize(scalar_fj)  # horrible performance, this is just a Python loop
        return vector_fj

#    # equivalent, manually:
#    def make_f(j):
#        scalar_f = spl.diff(order=1)  # lambda x: ...
#        def vector_f(x):
#            if isinstance(x, np.ndarray):
#                out = np.empty( np.shape(x), dtype=np.float64 )
#                for k,xk in enumerate(x):
#                    out[k] = scalar_f(xk)[j]
#            else:
#                out = scalar_f(x)[j]
#            return out
#        return vector_f

    for j in range(1, nb-1):
        # The maximum of the jth basis function is known to be near knot j,
        # so we search from knot j-1 to knot j+1.
        #
        # The fitting is very sensitive to the placement of this point,
        # so attempt to solve down to the last ulp.
        #
        fj = make_f(j)
        x0 = scipy.optimize.bisect( fj, x_orig[j-1], x_orig[j+1], xtol=ulp(x_orig[j]) )

        # Use a quadratic spacing with more points near the peak.
        #
        xx_left  = quadspace(x1, x0, nx//2 + 1, refine='right')
        xx_right = quadspace(x0, x2, nx//2 + 1, refine='left')

        tmp = xx_left.tolist()
        tmp.extend(xx_right[1:])  # discard the duplicate point at the peak

        xx[j,:] = tmp

    # Evaluate each basis function at each of the sites chosen for it.
    #
    for j in range(nb):
        for i,x in enumerate(xx[j,:]):
            ff[j,i] = spl(x)[j]


    # Sites used for visualization of results (same for all functions).
    #
    nvis  = 10001
    xxvis = np.linspace(x1, x2, nvis)

    # Evaluate at visualization sites (for debug only)
    #
    ffvis = np.empty( (nb,nvis), dtype=np.float64 )
    for i,x in enumerate(xxvis):
        ffvis[:,i] = spl(x)


    # Create the fits and plot.

    # create a list of unique colors for plotting
    #
    # http://stackoverflow.com/questions/8389636/creating-over-20-unique-legend-colors-using-matplotlib
    #
    NUM_COLORS = nb
    cm         = plt.get_cmap('gist_rainbow')
    cNorm      = matplotlib.colors.Normalize(vmin=0, vmax=NUM_COLORS-1)
    scalarMap  = matplotlib.cm.ScalarMappable(norm=cNorm, cmap=cm)
    colors     = [scalarMap.to_rgba(i) for i in range(NUM_COLORS)]

    plt.figure(1)
    plt.clf()
    for j in range(nb):
        # Create Elmer-format cubic spline approximation using the data at the sites.
        rr = elmerspline.solve_coeffs(xx[j,:], ff[j,:])

        # TODO: tabulate and save rr

        # Plot the original basis function.
        plt.plot( xxvis, ffvis[j,:], linestyle='dashed', color=colors[j] )

        # Plot the approximation.
        plt.plot( xxvis, elmerspline.evaluate_cubic_spline(xx[j,:], ff[j,:], rr, xxvis), linestyle='solid', color=colors[j] )

if __name__ == '__main__':
    main()
    plt.show()
