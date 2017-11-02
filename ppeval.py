#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""Evaluate 2D functions specified on a meshgrid in MATLAB ppform."""

import numpy as np

import scipy.io

import matplotlib.pyplot as plt
from mpl_toolkits.mplot3d.axes3d import Axes3D

# plot meshgrid data Z = f(X,Y)
#
def my_plot_3d(X,Y,Z, figno):
    nvis_x = X.shape[0]
    nvis_y = Y.shape[0]

    # pick a good-looking stride (for lines; we actually have more vertices,
    #                        making a smoother-looking curve between the lines)
    plot_stride_x = max(1, (nvis_x-1)//20)
    plot_stride_y = max(1, (nvis_y-1)//20)

    # make 3d plot of the function
    #
    # see http://matplotlib.sourceforge.net/examples/mplot3d/lines3d_demo.html

    fig = plt.figure(figno, figsize=(12,12))
    plt.clf()

    # Axes3D has a tendency to underestimate how much space it needs; it draws its labels
    # outside the window area in certain orientations.
    #
    # This causes the labels to be clipped, which looks bad. We prevent this by creating the axes
    # in a slightly smaller rect (leaving a margin). This way the labels will show - outside the Axes3D,
    # but still inside the figure window.
    #
    # The final touch is to set the window background to a matching white, so that the
    # background of the figure appears uniform.
    #
    fig.patch.set_color( (1,1,1) )
    fig.patch.set_alpha( 1.0 )
    x0y0wh = [ 0.02, 0.02, 0.96, 0.96 ]  # left, bottom, width, height      (here as fraction of subplot area)

    ax = Axes3D(fig, rect=x0y0wh)
    
    # use linewidth=0 to remove the wireframe if desired.
    ax.plot_wireframe(X,Y,Z, rstride=plot_stride_y, cstride=plot_stride_x, color='k', linewidth=0.5, linestyle='solid')

# In case of some MATLAB structs, scipy.io.loadmat() returns a nested mess of np.ndarrays.
# Some of these squeeze into 0-d, making the data difficult to access if squeeze_me=True.
#
# Hence we handle squeezing at our end. This utility squeezes a nested array
# recursively, handling also the 0-d special case.
#
# This routine:
#   - does not descend into the *elements* of x (those might also be np.ndarrays!)
#   - i.e. this only squeezes the "outer" structure, when the array is encased
#     in several unnecessary nested singleton arrays
#   - stops when encountering any object that is not an np.ndarray.
#
# For some information on 0-d arrays, see:
#   https://stackoverflow.com/questions/773030/why-are-0d-arrays-in-numpy-not-considered-scalar
#
def squeeze_outside(a, oldshp=None):
    if isinstance(a, np.ndarray):
        shp = a.shape  # shape before current squeeze
        if shp != oldshp:        # if the *previous* squeeze did anything...
            tmp = np.squeeze(a)  # ...try squeezing again
            if tmp.ndim == 0:    # squeeze away 0-d array
                tmp = tmp.item()
            return squeeze_outside(tmp, shp)  # shp is now the old shape before the latest squeeze
    return a

# Squeeze np.ndarray "a" and any ndarrays contained in it, recursively.
#
def squeeze_inside(a):
    if isinstance(a, np.ndarray):
        tmp = np.squeeze(a)  # TODO: handle case where tmp becomes scalar (0-d array)
        if tmp.dtype != np.float64  and  tmp.dtype != np.complex128:
            v = tmp.reshape(-1)
            for i,it in enumerate(v):
                if isinstance(it, np.ndarray):
                    v[i] = squeeze_inside(it)
        return tmp
    return a

# Supports MATLAB structs (as loaded by scipy.io.loadmat()) as well as dicts.
#
class Bunch:
    def __init__(self, d, squeeze_me=False):
        if isinstance(d, np.ndarray):
            # try interpreting as a record array
            # https://docs.scipy.org/doc/numpy-1.10.1/user/basics.rec.html
#            rec = d.view(dtype=np.dtype((np.record, d.dtype)), type=np.recarray)
#            dic = { k: squeeze_outside(d[k]) for k in rec.dtype.names }
            if squeeze_me:  # squeeze all component arrays
                f = lambda item: squeeze_inside(squeeze_outside(item))
            else:  # flatten outer singletons only
                f = lambda item: squeeze_outside(item)

            # seems we can do this directly?
            #
            # TODO: figure out how to support both top-level MATLAB structs
            # and MATLAB structs stored inside other MATLAB structs.
            #
            # One level of nested storage requires "d = squeeze_outside(d)" here,
            # but if we do that to a top-level struct, the containing ndarray
            # is lost and becomes a tuple.
            #
            dic = { k: f(d[k]) for k in d.dtype.names }
        elif isinstance(d, dict):
            dic = d
        else:
            raise TypeError("Don't know how to handle %s" % type(d))
        self.__dict__.update(dic)

# coefficient indices in MATLAB ppform in 2D
#
# This doesn't seem to be documented anywhere, so:
#
# - the b-spline basis functions (B-form) producing the ppform has a tensor
#   product structure in x and y, but a ppform is more general than that.
#
# - in the case of b-spline data, the ppform has the tensor product already applied,
#   with (in each piece) the function being the product of one polynomial in x
#   and another polynomial in y, producing prod(order) terms in total.
#
#   (This is a "sparse" polynomial of 2*order, e.g. bicubic --> 6;
#    compared to a full polynomial of order 6, terms where the exponent of
#    either x or y > 3 do not appear.)
#
# - the coefficients for these terms are stored in a coefficient *array*
#
# - in 2D, the ppform coefs array is in principle laid out as follows:
#
#     X3*Y3  X3*Y2  X3*Y1  X3*Y0
#     X2*Y3  X2*Y2  X2*Y1  X2*Y0
#     X1*Y3  X1*Y2  X1*Y1  X1*Y0
#     X0*Y3  X0*Y2  X0*Y1  X0*Y0
#
#   where e.g. X3*Y2 denotes the coefficient of the term x**3 * y**2.
#
#   BUT: the pieces are interleaved, using this ordering:
#
#     P(x=0,y=0) P(x=0,y=1) ...
#     P(x=1,y=0) P(x=1,y=1)
#     ...                   ...
#
#   (where x and y index the pieces) so the actual array layout is like this:
#
#   P00(X3*Y3) P01(X3*Y3) ... P0n(X3*Y3)  P00(X3*Y2) P01(X3*Y2) ... P0n(X3*Y2) ...
#   P10(X3*Y3) P11(X3*Y3) ... P1n(X3*Y3)  P10(X3*Y2) P11(X3*Y2) ... P1n(X3*Y2) ...
#   ...
#   Pm0(X3*Y3) ...
#
#   P00(X2*Y3) ...
#   ...
#   Pm0(X2*Y3) ...
#
#   P00(X1*Y3) ...
#   ...
#   Pm0(X1*Y3) ...
#
#   P00(X0*Y3) ...
#   ...
#   Pm0(X0*Y3) ...
#
#   Here Pij = P(x=i,y=j), pp.pieces[0] = n+1, pp.pieces[1] = m+1.
#
#   To get the coefficients belonging to a single piece, use a stride of
#   pp.pieces[0] for x (rows!) (there are pp.order[0] entries per piece), and
#   pp.pieces[1] for y (columns!) (there are pp.order[1] entries per piece).
#
#   The offset within a stride block identifies the piece. See the functions below.

# See also:
#
# https://se.mathworks.com/matlabcentral/answers/77100-reconstruct-multivariate-spline-from-csapi

#class C:  # (this is effectively an enum)
#    # x axis (*row* of coefs array)
#    X3 = 0  # index of coefficient of x**3
#    X2 = 1  # index of coefficient of x**2
#    X1 = 2  # index of coefficient of x
#    X0 = 3  # index of constant term for x
#
#    # y axis (*column* of coefs array)
#    Y3 = 0
#    Y2 = 1
#    Y1 = 2
#    Y0 = 3

# Horner-like algorithm for the 2D case; see wlsqm.fitter.polyeval.general_2D()
#
# this only works for a full polynomial of order 3 (i.e. when the *sum* of the
# orders of x and y in a single term is at most 3).
#
#def fval_fullpoly3(c, x, y):
#    x = np.atleast_1d(x)
#    y = np.atleast_1d(y)
#    assert x.shape == y.shape
#
#    xy = x*y
#
#    # "X" terms
#    acc2   = y * c[C.X2,C.Y1] + c[C.X2,C.Y0]
#    acc2   = x * c[C.X3,C.Y0] + acc2
#
#    resX   = x * acc2 + c[C.X1,C.Y0]
#
#    # "Y" terms
#    acc2   = x * c[C.X1,C.Y2] + c[C.X0,C.Y2]
#    acc2   = y * c[C.X0,C.Y3] + acc2
#
#    resY   = y * acc2 + c[C.X0,C.Y1]
#
#    # sum the contributions
#    #
#    acc1   = xy * c[C.X1,C.Y1]
#    acc1   = x * resX + acc1
#    acc1   = y * resY + acc1
#    acc1  += c[C.X0,C.Y0]
#
#    out = acc1
#
#    return np.squeeze(out)

def ppeval(pp):
    if pp.form != "pp":
        raise ValueError("Only form 'pp' is supported; this data is '%s'" % pp.form)
    breaks_x  = pp.breaks[0]
    breaks_y  = pp.breaks[1]
    coefs     = pp.coefs
    npieces_x = pp.pieces[0]
    npieces_y = pp.pieces[1]
    order_x   = pp.order[0]  # the value is actually order + 1 (e.g. 4 for cubic)
    order_y   = pp.order[1]
    dim       = pp.dim
    print( [a.shape for a in (breaks_x, breaks_y, coefs)] )
    print(npieces_x, npieces_y, order_x, order_y, dim)    

    # Find correct piecewise interval along an axis
    #
    # t: global x or y coordinate(s) (scalar or np.ndarray of any shape)
    # i: dimension (0 for x; 1 for y)
    #
    def _find_piece(t, i):
        t = np.atleast_1d(t)

        if (t < pp.breaks[i][0]).any() or (t > pp.breaks[i][-1]).any():
            raise ValueError("dimension %d: at least one value is out of the allowed range (%g, %g)" % (i, pp.breaks[i][0], pp.breaks[i][-1]))
    
        I = np.empty_like(t, dtype=int)  # index of the piece along dimension i
        s = np.empty_like(t)             # t in ppform piece-local coordinates

        # FIXME: extremely inefficient, a loop with search
        t_lin = t.reshape(-1)
        s_lin = s.reshape(-1)
        I_lin = I.reshape(-1)
        for k,tau in enumerate(t_lin):
            i1 = np.where(pp.breaks[i] <= tau)[0][-1]

            # The last point (t == pp.breaks[i][-1]) is in the last interval
            if i1 == pp.pieces[i]:
                i1 -= 1

            piece_start = pp.breaks[i][i1]
#            piece_end   = pp.breaks[i][i1+1]

            I_lin[k] = i1
            s_lin[k] = (tau - piece_start) # / (piece_end - piece_start)

        return (np.squeeze(I), np.squeeze(s))

    # evaluate function for global x and y
    #
    def _fval_global(x, y):
        x = np.atleast_1d(x)
        y = np.atleast_1d(y)
        assert x.shape == y.shape

        I,local_x = _find_piece(x, 0)
        J,local_y = _find_piece(y, 1)

        # FIXME: naive unstable algorithm

#        # starts of piece tiles for the pieces we need
#        I *= order_x
#        J *= order_y
#        z = np.zeros_like(x)
#        for xexp in range(order_x):
#            for yexp in range(order_y):
#                z += local_x**(order_x-1 - xexp) * local_y**(order_y-1 - yexp) * pp.coefs[I+xexp,J+yexp]
#        return np.squeeze(z)

#        # https://se.mathworks.com/matlabcentral/answers/77100-reconstruct-multivariate-spline-from-csapi
#        coefs = pp.coefs.reshape( (npieces_x, order_x, npieces_y, order_y) )
#        z = np.zeros_like(x)
#        for xexp in range(order_x):
#            for yexp in range(order_y):
#                z += local_x**(order_x-1 - xexp) * local_y**(order_y-1 - yexp) * coefs[I, xexp, J, yexp]
#        return np.squeeze(z)

        # TODO: figure out why we need this ordering of the reshape in Python to make this work correctly.
        coefs = pp.coefs.reshape( (order_x, npieces_x, order_y, npieces_y) )
        z = np.zeros_like(x)
        for xexp in range(order_x):
            for yexp in range(order_y):
                z += local_x**(order_x-1 - xexp) * local_y**(order_y-1 - yexp) * coefs[xexp, I, yexp, J]
        return np.squeeze(z)

    def _fval_global_xder(x, y):
        x = np.atleast_1d(x)
        y = np.atleast_1d(y)
        assert x.shape == y.shape

        I,local_x = _find_piece(x, 0)
        J,local_y = _find_piece(y, 1)

        # FIXME: naive unstable algorithm

#        # starts of piece tiles for the pieces we need
#        I *= order_x
#        J *= order_y
#        z = np.zeros_like(x)
#        for xexp in range(order_x - 1):
#            k = (order_x-1 - xexp)
#            for yexp in range(order_y):
#                z += k*local_x**(k-1) * local_y**(order_y-1 - yexp) * pp.coefs[I+xexp,J+yexp]
#        return np.squeeze(z)

#        # https://se.mathworks.com/matlabcentral/answers/77100-reconstruct-multivariate-spline-from-csapi
#        coefs = pp.coefs.reshape( (npieces_x, order_x, npieces_y, order_y) )
#        z = np.zeros_like(x)
#        for xexp in range(order_x - 1):
#            k = (order_x-1 - xexp)
#            for yexp in range(order_y):
#                z += k*local_x**(k-1) * local_y**(order_y-1 - yexp) * coefs[I, xexp, J, yexp]
#        return np.squeeze(z)

        # https://se.mathworks.com/matlabcentral/answers/77100-reconstruct-multivariate-spline-from-csapi
        coefs = pp.coefs.reshape( (order_x, npieces_x, order_y, npieces_y) )
        z = np.zeros_like(x)
        for xexp in range(order_x - 1):
            k = (order_x-1 - xexp)
            for yexp in range(order_y):
                z += k*local_x**(k-1) * local_y**(order_y-1 - yexp) * coefs[xexp, I, yexp, J]
        return np.squeeze(z)

    def _fval_global_yder(x, y):
        x = np.atleast_1d(x)
        y = np.atleast_1d(y)
        assert x.shape == y.shape

        I,local_x = _find_piece(x, 0)
        J,local_y = _find_piece(y, 1)

        # FIXME: naive unstable algorithm

#        # starts of piece tiles for the pieces we need
#        I *= order_x
#        J *= order_y
#        z = np.zeros_like(x)
#        for xexp in range(order_x):
#            for yexp in range(order_y - 1):
#                k = (order_y-1 - yexp)
#                z += local_x**(order_x-1 - xexp) * k*local_y**(k-1) * pp.coefs[I+xexp,J+yexp]
#        return np.squeeze(z)

#        # https://se.mathworks.com/matlabcentral/answers/77100-reconstruct-multivariate-spline-from-csapi
#        coefs = pp.coefs.reshape( (npieces_x, order_x, npieces_y, order_y) )
#        z = np.zeros_like(x)
#        for xexp in range(order_x):
#            for yexp in range(order_y - 1):
#                k = (order_y-1 - yexp)
#                z += local_x**(order_x-1 - xexp) * k*local_y**(k-1) * coefs[I, xexp, J, yexp]
#        return np.squeeze(z)

        # https://se.mathworks.com/matlabcentral/answers/77100-reconstruct-multivariate-spline-from-csapi
        coefs = pp.coefs.reshape( (order_x, npieces_x, order_y, npieces_y) )
        z = np.zeros_like(x)
        for xexp in range(order_x):
            for yexp in range(order_y - 1):
                k = (order_y-1 - yexp)
                z += local_x**(order_x-1 - xexp) * k*local_y**(k-1) * coefs[xexp, I, yexp, J]
        return np.squeeze(z)


    # visualize the whole function
    #
    nvis = 101
    xxvis = np.linspace(breaks_x[0], breaks_x[-1], nvis)
    yyvis = np.linspace(breaks_y[0], breaks_y[-1], nvis)
    X,Y = np.meshgrid(xxvis, yyvis)

#    Z = _fval_global(X,Y)  # ψ(u,v)

    Z1 = _fval_global_xder(X,Y)  # ∂ψ/∂u
    print("H min, max =", np.min(Z1)/pp.Bscale, np.max(Z1)/pp.Bscale)
    # x: B [T], y: ε [ppm], output: H [A/m] ?
    #
    # ∂ψ/∂B = ∂ψ/∂u ∂u/∂B + ∂ψ/∂v ∂v/∂B = ∂ψ/∂u ∂u/∂B
    #     B = Bscale * u
    #
    my_plot_3d(X*pp.Bscale,Y*pp.escale*1e6,Z1/pp.Bscale, figno=1)

    Z2 = _fval_global_yder(X,Y)  # ∂ψ/∂v
    print("λ min, max =", np.min(Z2)/pp.escale*1e-6, np.max(Z2)/pp.escale*1e-6)
    # x: B [T], y: ε [ppm], output: λ [MPa]
    #
    # ∂ψ/∂ε = ∂ψ/∂u ∂u/∂ε + ∂ψ/∂v ∂v/∂ε = ∂ψ/∂v ∂v/∂ε
    #     ε = escale * v [absolute] = 1e6 * escale * v [ppm]
    #
    my_plot_3d(X*pp.Bscale,Y*pp.escale*1e6,Z2/pp.escale*1e-6, figno=2)

    return


    # visualize a single piece

    # Get the coefficient submatrix for a piecewise tile
    #
    def _get_submat(ix, iy):
#        # tiled pieces would be the other possible storage order, but it's not like that
#        xstart = ix*order_x
#        ystart = iy*order_y
#        return coefs[np.ix_(np.arange(xstart, xstart+order_x),
#                            np.arange(ystart, ystart+order_y))]

        # instead, the pieces are interleaved (a single tile represents the
        #                                    same coefficient for every piece):
        offs_x = ix  # offset = which piece
        offs_y = iy
        stride_x = npieces_x  # coeffs for different orders for this piece are stored stride spaces apart
        stride_y = npieces_y
        return coefs[ np.ix_(np.arange(offs_x, offs_x + order_x*stride_x, stride_x),
                             np.arange(offs_y, offs_y + order_y*stride_y, stride_y)) ]

    # evaluate function value of a cubic pp piece in 2D
    #
    # FIXME: naive unstable algorithm (could use the Horner strategy, but requires
    # FIXME: sum of orders 6 - look into generating it automatically for order n)
    #
    # c: submatrix of coefficients for this piece
    # x: x coordinate(s) (scalar or np.array of any shape), normalized to [0,piece_len_x]
    # y: y coordinate(s) (scalar or np.array of any shape), normalized to [0,piece_len_y]
    #
    def _fval_piece(c, x, y):
        x = np.atleast_1d(x)
        y = np.atleast_1d(y)
        assert x.shape == y.shape
    
        z = np.zeros_like(x)
        for xexp in range(order_x):
            for yexp in range(order_y):
                z += x**(order_x-1 - xexp) * y**(order_y-1 - yexp) * c[xexp,yexp]
    
        return np.squeeze(z)

    # which piece to visualize
    piece_x = 0 #npieces_x-1
    piece_y = 0 #npieces_y-1
    nvis = 101

    piece_len_x = (breaks_x[piece_x+1] - breaks_x[piece_x])
    piece_len_y = (breaks_y[piece_y+1] - breaks_y[piece_y])

    # these are the ranges of the local x and y inside the piece
    # (no normalization for the piece length, only a shift to zero!):
    #
    xx = np.linspace(0, piece_len_x, nvis)
    yy = np.linspace(0, piece_len_y, nvis)

    X,Y = np.meshgrid(xx,yy)
    Z   = _fval_piece(_get_submat(piece_x, piece_y), X, Y)

    xxvis = breaks_x[piece_x] + xx
    yyvis = breaks_y[piece_y] + yy
    print(xxvis,yyvis)
    Xvis,Yvis = np.meshgrid(xxvis,yyvis)

    my_plot_3d(Xvis,Yvis,Z, figno=1)


def main():
#    data = scipy.io.loadmat("s2d_Beps2.mat")
#    pp = Bunch(data["s"]["sx"], squeeze_me=True)

    data = Bunch(scipy.io.loadmat("s2d_Beps2.mat"))
    pp = Bunch(data.s, squeeze_me=True)

    ppeval(pp)

if __name__ == '__main__':
    main()
