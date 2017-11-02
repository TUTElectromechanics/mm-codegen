#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import numpy as np
import matplotlib.pyplot as plt

import bspline
import bspline.splinelab as splinelab

import elmerspline

def main():
    # original knots
    #
    x1    = 0
    x2    = 1
    origx = np.linspace(x1, x2, 5)
    order = 3

    def marginize_end(x):
        out      = x.copy()
        out[-1] += 1e-10 * (x[-1] - x[0])
        return out

    knots = splinelab.aptknt(marginize_end(origx), order)
    spl   = bspline.Bspline(knots, order)
    nb    = len( spl(0.) )  # get number of basis functions (perform dummy evaluation and count)


    # sites used for creating Elmer spline
    #
    nx = 1001
    xx = np.linspace(x1, x2, nx)
    ff = np.empty( (nb,nx), dtype=np.float64 )

    # sites used for visualization of results
    #
    nvis  = 10001
    xxvis = np.linspace(x1, x2, nvis)

    # evaluate all basis functions at each site
    for i,x in enumerate(xx):
        ff[:,i] = spl(x)

    # evaluate at visualization sites (for debug only)
    ffvis = np.empty( (nb,nvis), dtype=np.float64 )
    for i,x in enumerate(xxvis):
        ffvis[:,i] = spl(x)

    plt.figure(1)
    plt.clf()
    for j in range(nb):
        # create Elmer-format cubic spline approximation of the data at the sites
        rr = elmerspline.solve_coeffs(xx, ff[j,:])

        # TODO: tabulate and save rr

        # plot the original basis function
        plt.plot( xxvis, ffvis[j,:], linestyle='dashed' )

        # plot the approximation
        plt.plot( xxvis, elmerspline.evaluate_cubic_spline(xx, ff[j,:], rr, xxvis), linestyle='solid' )

if __name__ == '__main__':
    main()
    plt.show()
