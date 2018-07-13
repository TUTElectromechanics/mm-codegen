#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""Symbolic derivation of Hermite shape functions using SymPy.

Created on Thu Nov  2 13:38:34 2017

@author: Juha Jeronen <juha.jeronen@tut.fi>
"""

import sympy as sy

def construct(k):
    """Construct Hermite shape functions.

    The result can be used for interpolating a function and its first k derivatives on [0,1]."""
    order = 2*k + 1  # minimum polynomial order that has enough degrees of freedom
    *A,x = sy.symbols("a0:%d,x" % (order+1))

    # Create the polynomial and its derivatives
    #
    w   = sum(a*x**i for i,a in enumerate(A))
    λw  = lambda x0: w.subs({x: x0})

    wp  = [sy.diff(w, x, i) for i in range(1,1+k)]
    # see my lecture notes, sec. 5.8
    λwp = [(lambda expr: lambda x0: expr.subs({x: x0}))(expr) for expr in wp]

    # Formulate the interpolation conditions
    #
    zero,one = sy.S.Zero, sy.S.One
    w0,w1 = sy.symbols("w0, w1")
    eqs  = [λw(zero) - w0,  # see sy.solve()
            λw(one)  - w1]
    dofs = [w0, w1]

    for i,f in enumerate(λwp):
        d0_name = "w%s0" % ((i+1) * "p")
        d1_name = "w%s1" % ((i+1) * "p")
        d0,d1 = sy.symbols("%s, %s" % (d0_name, d1_name))
        eqs.extend([f(zero) - d0,
                    f(one)  - d1])
        dofs.extend([d0, d1])

    # Solve the interpolation conditions for the polynomial coefficients aj
    #
    coeffs = sy.solve(eqs, A)

    # Substitute solution into w, collect w.r.t. the DOFs
    #
    solution = w.subs(coeffs)
    solution = sy.collect(sy.expand(solution), dofs)

    # Extract the shape functions
    #
    N = [solution.coeff(dof) for dof in dofs]

    return (dofs, N)

def main():
    k = 1
    syms,N = construct(k)

    for dof,expr in zip(syms,N):
        print("Shape function for %s:" % (dof))
        print(expr)

    # Plot them
    #
    import numpy as np
    import matplotlib.pyplot as plt
    plt.figure(1)
    plt.clf()
    x = sy.symbols("x")
    λN = [sy.lambdify(x, expr, modules="numpy") for expr in N]
    xx = np.linspace(0,1, 1001)
    for f in λN:
        plt.plot(xx, f(xx))
    plt.grid(b=True, which="both")
    plt.xlabel(r"$x$")
    plt.ylabel(r"$N_i(x)$")
    plt.title(r"$C^%d$ Hermite shape functions" % (k))
    plt.show()

if __name__ == '__main__':
    main()
