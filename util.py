#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""Miscellaneous utilities.

Created on Thu Nov  2 00:12:57 2017

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

# TODO: move quadspace() to a "numutil.py" to avoid the NumPy dependency in "util.py"?
def quadspace(x1, x2, nx, refine='left'):
    """Make a quadratic spacing with more points either on the left or on the right."""
    xx = np.linspace(0, 1, nx)**2
    if refine == 'right':
        xx = (1 - xx)[::-1]
    return x1 + (x2 - x1)*xx
