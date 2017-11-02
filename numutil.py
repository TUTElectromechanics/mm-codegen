#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Thu Nov  2 12:01:37 2017

@author: jje
"""

import sys
import math
import numpy as np

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

def round_sig(x, sig=2, method='round'):
    """Round float x to sig significant figures.

    method = string:
      'round': round by standard rounding rules (default)
      'ceil':  always round up
      'floor': always round down

    See
    http://stackoverflow.com/questions/3410976/how-to-round-a-number-to-significant-figures-in-python"""
#    # As per answer by indgar, and adding abs() as suggested by dgorissen to handle also x<0.
#    # Added also handling for zero as a special case.
#    #
#    if x == 0.0:
#        return x
#    else:
#        return round(x, sig-int(math.floor(math.log10(abs(x))))-1)

    # Chris Stringfellow's answer (which allows for generalization to "ceil"/"floor" also):
    #
    # To round an integer to 1 significant figure the basic idea is to convert it to a floating point
    # with 1 digit before the point and round that, then convert it back to its original integer size.
    #
    # To do this we need to know the largest power of 10 less than the integer. We can use floor of
    # the log 10 function for this. 
    #
    #from math import log10, floor
    #def round_int(i,places):
    #    if i == 0:
    #        return 0
    #    isign = i/abs(i)
    #    i = abs(i)
    #    if i < 1:
    #        return 0
    #    max10exp = floor(log10(i))
    #    if max10exp+1 < places:
    #        return i
    #    sig10pow = 10**(max10exp-places+1)
    #    floated = i*1.0/sig10pow
    #    defloated = round(floated)*sig10pow
    #    return int(defloated*isign)

    # Adapting the above for floats, and adding logic to round always up or down, we have:

    if x == 0.0:
        return x

    xsign = x/abs(x)
    x = abs(x)

    if xsign > 0:
        if method == 'ceil':
            rounded = math.ceil
        elif method == 'floor':
            rounded = math.floor
        else: # method == 'round':
            rounded = round
    else:
        # emulate correct behaviour of ceil/floor for negative input
        # (given that our x is always positive at this point)
        if method == 'floor':
            rounded = math.ceil
        elif method == 'ceil':
            rounded = math.floor
        else: # method == 'round':
            rounded = round

    max10exp = math.floor(math.log10(x))
    sig10pow = 10**(max10exp-sig+1)
    floated = x*1.0/sig10pow
    defloated = rounded(floated)*sig10pow
    return defloated*xsign
