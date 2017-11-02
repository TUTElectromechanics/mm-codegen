#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""Miscellaneous utilities.

Created on Thu Nov  2 00:12:57 2017

@author: jje
"""

import sys
import re
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

def degreek(s, short=False):
    """Eliminate greek characters in string.

    Useful to filter generated code for systems that do not use Unicode identifiers.

    This supports the set of greek characters enterable by the LaTeX input method,
    intended for use with Python code that uses greek Unicode characters for
    math symbols.

    Parameters:
        short: bool
            If True, use short names (e.g. "eps" instead of "epsilon").
            Short names apply to characters with at least 4 letters in the name.

            If False, use full names.

    See:
        https://github.com/clarkgrubb/latex-input

"""
    mapping = { # === lowercase ===
                r"α": (r"alp", r"alpha"),
                r"β": (r"bet", r"beta"),
                r"γ": (r"gam", r"gamma"),
                r"δ": (r"dlt", r"delta"),  # "del" is reserved in Python; also laplacian may be called del
                r"ϵ": (r"eps", r"epsilon"),  # LaTeX \epsilon
                r"ε": (r"eps", r"epsilon"),  # LaTeX \varepsilon
                r"ζ": (r"zet", r"zeta"),
                r"η": (r"eta", r"eta"),
                r"θ": (r"tht", r"theta"),  # TODO: which is more common: "tht" or "the"?
                r"ι": (r"iot", r"iota"),
                r"κ": (r"kap", r"kappa"),
                # no LaTeX \varkappa in input method
                r"λ": (r"lam", r"lamda"),  # avoid "lambda"; reserved word in some programming languages
                r"µ": (r"mu",  r"mu"),
                r"ν": (r"nu",  r"nu"),
                r"ξ": (r"xi",  r"xi"),
                # no \omicron in LaTeX, since it looks like o
                r"π": (r"pi",  r"pi"),  # LaTeX \pi
                r"ϖ": (r"pi",  r"pi"),  # LaTeX \varpi
                r"ρ": (r"rho", r"rho"),
                r"σ": (r"sig", r"sigma"),
                r"ς": (r"sig", r"sigma"),  # word-final form, rare in math; https://en.wikipedia.org/wiki/Greek_alphabet
                r"τ": (r"tau", r"tau"),
                r"υ": (r"ups", r"upsilon"),
                r"φ": (r"phi", r"phi"),  # LaTeX \varphi
                r"ϕ": (r"phi", r"phi"),  # LaTeX \phi
                r"χ": (r"chi", r"chi"),
                r"ψ": (r"psi", r"psi"),
                r"ω": (r"ome", r"omega"),  # TODO: "ome" or "omg"?
                # === uppercase ===
                # no \Alpha in LaTeX, since it looks like A
                # no \Beta in LaTeX, since it looks like B
                r"Γ": (r"Gam", r"Gamma"),
                r"Δ": (r"Dlt", r"Delta"),
                # no \Epsilon or \Varepsilon in LaTeX, since it looks like E
                # no \Zeta in LaTeX, since it looks like Z
                # no \Eta in LaTeX, since it looks like H
                r"Θ": (r"Tht", r"Theta"),  # TODO: "Tht" or "The"?
                # no \Iota in LaTeX, since it looks like I
                # no \Kappa in LaTeX, since it looks like K
                r"Λ": (r"Lam", r"Lamda"),  # avoid "Lambda"; reserved word in some programming languages
                # no \Mu in LaTeX, since it looks like M
                # no \Nu in LaTeX, since it looks like N
                r"Ξ": (r"Xi",  r"Xi"),
                # no \Omicron in LaTeX, since it looks like O
                r"Π": (r"Pi",  r"Pi"),
                # no \Rho in LaTeX, since it looks like P
                r"Σ": (r"Sig", r"Sigma"),
                # no \Tau in LaTeX, since it looks like T
                # no LaTeX \Upsilon in input method
                r"Φ": (r"Phi", r"Phi"),
                # no \Chi in LaTeX, since it looks like X
                r"Ψ": (r"Psi", r"Psi"),
                r"Ω": (r"Ome", r"Omega")}  # TODO: "Ome" or "Omg"?
    i = 0 if short else 1
    for letter,replacement in mapping.items():
        s = re.sub(letter, replacement[i], s)
    return s
