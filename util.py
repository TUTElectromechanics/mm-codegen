#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""Miscellaneous utilities.

Created on Thu Nov  2 00:12:57 2017

@author: jje
"""

import re
from itertools import groupby

def name_derivative(funcname, varnames, allow_reorder=True, as_fortran_identifier=False):
    """Construct name of a partial derivative, such as ∂²ϕ/∂Bx².

    Parameters:
        funcname: str
            Name of the mathematical function that is differentiated.

        varnames: iterable of str
            Names of the variables with respect to which the function
            is differentiated.

            This is iterated over, so for a sequence of single-character names,
            a single ``str`` is fine; e.g. ``"xyz"`` is equivalent to ``("x", "y", "z")``.

            To specify a single longer name such as "Bx", wrap it into a tuple::

                varnames=("Bx",)

        allow_reorder: bool
            If True, varnames will be sorted before writing out the derivative notation.

            If False, the ordering of varnames will be preserved.

        as_fortran_identifier: bool
            If True, replace "/" -> "_" and "∂" -> "d", and do not use superscripts.
            Greek characters are *not* automatically removed; see ``degreek()``.

            If False, use "/", "∂", and Unicode superscripts.

    Return value:
        str:
            The name of the derivative, such as ∂²ϕ/∂Bx² or d2ϕ_dBx2.
"""
    # special case: zeroth derivative is the function itself
    if len(varnames) < 1:
        return funcname

    input = sorted(varnames) if allow_reorder else varnames

    # https://stackoverflow.com/questions/34443946/count-consecutive-characters
    groups = groupby(input)
    result = [(label, sum(1 for _ in group)) for label, group in groups]

    if as_fortran_identifier:
        dsym = "d"
        sep  = "_"
        def sup(x):  # no Unicode superscripting; passthrough except special case
            s = "%d" % x
            if len(s) == 1 and s[0] == "1":  # delete lone "1"
                s = ""
            return s
    else:
        dsym = "∂"
        sep  = "/"
        supnumerals = { "0": "⁰", "1": "¹", "2": "²", "3": "³", "4": "⁴",
                        "5": "⁵", "6": "⁶", "7": "⁷", "8": "⁸", "9": "⁹" }
        def sup(x):
            s = "%d" % x
            if len(s) == 1 and s[0] == "1":  # delete lone "1"
                s = ""
            else:
                for k,v in supnumerals.items():
                    s = re.sub(k, v, s)
            return s

    numer = "%s%s%s" % (dsym, sup(len(varnames)), funcname)
    denom_terms = ["%s%s%s" % (dsym, label, sup(count)) for label,count in result]
    denom = "".join(denom_terms)
    return "%s%s%s" % (numer, sep, denom)  # e.g. ∂²f/∂x∂y

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
