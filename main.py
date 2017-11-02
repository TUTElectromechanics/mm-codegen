#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Tue Oct 24 14:07:45 2017

@author: jje
"""

import sympy as sy


# Strip kilometer-long argument lists from expressions of unknown functions.
#
# Mainly useful for printing when there are several layers of dependencies
# and one takes partial derivatives utilizing the chain rule.
#
# E.g. the function ϕ in
#
#   I4(Bx,By,Bz)
#   u(I4,I5,I6)
#   ϕ(u,v,w)
#
# will benefit from:
#
#   strip_arguments(ϕ, (u, v, w, I4, I5, I6))
#
# Funcs must be listed in decreasing order of dependencies, as shown in the
# example above.
#
# E.g. if we replace I4 first, then u inside expr will no longer be
# recognized as the symbol u(I4,I5,I6), because its arguments will have
# changed due to the replacement of I4.
#
# So, we must replace u first; then replace I4.
#
#def strip_arguments(expr, funcs):
#    # in SymPy, an unknown function uses its symbol name to name its __class__.
#    for f in funcs:
#        expr = expr.replace(f, str(f.__class__))
#    return expr

# Easy-to-use version that requires no arguments.
#
from sympy.core.function import UndefinedFunction
def strip_arguments(expr):
    def nameof_as_symbol(x):
        if hasattr(expr, "name"):
            return sy.symbols(x.name, **x.assumptions0)
        else:
            return sy.symbols(x.__class__.__name__, **x.assumptions0)

    if isinstance(expr.__class__, UndefinedFunction):
        return nameof_as_symbol(expr)
    elif expr.is_Atom:
        return expr
    else:  # compound that is not an undefined function; process its args
        out = [strip_arguments(x) for x in expr.args]
        cls = type(expr)
        return cls(*out)

# Print a symbolic expression and its operation count.
#
def print_and_count(expr, name=None, pretty=False, count_visual=True):
    if pretty:
        printer = sy.pprint
    else:
        printer = print

    if name is not None:
        printer(name)

    printer(expr)
    print(sy.count_ops(expr, visual=count_visual))
    print("=" * 80)  # separator

class SymbolicModelDeriver:
    def __init__(self):
        # es and εs are listed in Voigt notation ordering:
        #   ε = [[ε1, ε6, ε5], = [[εxx, εxy, εzx],
        #        [ε6, ε2, ε4],    [εxy, εyy, εyz],
        #        [ε5, ε4, ε3]]    [εzx, εyz, εzz]]
        #
        self.Bs = sy.symbols("Bx, By, Bz", real=True)
        self.es = sy.symbols("exx, eyy, ezz, eyz, ezx, exy", real=True)
        self.εs = sy.symbols("εxx, εyy, εzz, εyz, εzx, εxy", real=True)
#        fargs = (Bx, By, Bz, εxx, εyy, εzz, εyz, εzx, εxy)  # parameters for callables (which are generated later)

        # Symbol dictionary  name: object instance
        #
        symdic = {}
        for s in self.Bs + self.es + self.εs:  # these are lists, so + concatenates
            symdic[s.name] = s
        self.symdic = symdic

    def dϕdq(self, diff_wrt="Bx"):
        print("Differentiating w.r.t. %s" % diff_wrt)

        # https://stackoverflow.com/questions/34786224/chain-rule-in-sympy
        #
        # Raw functions.
        #
        # This returns a generic unknown function having the given name.
        #
        # It is important that each function (that is intended to be a separate
        # mathematical object) has a unique name.
        #
        # Here e.g. up = "u prime".
        #
        λϕ,λI4,λI5,λI6,λup,λvp,λwp,λu,λv,λw = sy.symbols("ϕ, I4, I5, I6, up, vp, wp, u, v, w", cls=sy.Function)

        # Applied functions (of symbols).
        #
        # This returns an unknown function that depends on the given symbols.
        #
        I4 = λI4(*self.Bs)
        # *L unpacks iterable L to separate function arguments: f(*L) = f(L[0], L[1], ..., L[-1])
        I5 = λI5(*(self.Bs + self.es))
        I6 = λI6(*(self.Bs + self.es))

        # Applied functions (of other applied functions; they are also symbols).
        up = λup(I4, I5, I6)
        vp = λvp(I4, I5, I6)
        wp = λwp(I4, I5, I6)

        # u',v',w' are raw unscaled u,v,w.
        #
        # The final u,v,w are normalized (by scaling by a constant), as follows:
        #
        #  u ∈ [ 0,1]
        #  v ∈ [-1,1]
        #  w ∈ [-1,1]  (TODO: check w)
        #
        u = λu(up)
        v = λv(vp)
        w = λw(wp)

        # The normalized u,v,w are the arguments ϕ formally depends on.
        #
        ϕ  = λϕ(u,v,w)

        # We can differentiate, like this:
        #
        # derivative of an unknown function gives an unapplied Subs object
        # http://docs.sympy.org/latest/_modules/sympy/core/function.html
        #
        # This applies the chain rule automatically.
        #
        q = self.symdic[diff_wrt]  # q = Bx, By, Bz, exx, ...
        dϕdq = sy.diff(ϕ, q)

        # Apply the Subs object to eliminate the dummy variables in the
        # derivative expressions. E.g.
        #
        #   d/dξ1( ϕ(ξ1,v,w) )|ξ1=u  -->  d/du( ϕ(u,v,w) )
        #
        # The first expression shows what the second one, strictly speaking,
        # actually means; whereas the second one is the standard notation.
        #
        # Applying the Subs object returned by diff() converts the derivative
        # expressions to the standard notation.
        #
        dϕdq = dϕdq.doit()
        print("3D model")
        sy.pprint(strip_arguments(dϕdq))
        print("=" * 80)  # separator

        # Specialize to the 2D model by taking w → 0, I6 → 0.
        #
        # - After the subs(), the first .doit() notices that d(0)/dwp = 0 and
        #   deletes the corresponding set of terms, but also re-introduces
        #   the dummy variables into the derivative expressions.
        #
        # - The second .doit() rewrites the derivatives again, without the
        #   dummy variables.
        #
        zero = sy.S("0")
        tmp = dϕdq.subs( {w : zero, I6 : zero} ).doit().doit()
        print("2D model")
        sy.pprint(strip_arguments(tmp))
        print("=" * 80)  # separator

    def Beε_to_uvw(self):
        Bx,By,Bz = self.Bs
        exx,eyy,ezz,eyz,ezx,exy = self.es
        εxx,εyy,εzz,εyz,εzx,εxy = self.εs

        # Voigt notation ordering:
        #   ε = [[ε1, ε6, ε5],
        #        [ε6, ε2, ε4],
        #        [ε5, ε4, ε3]]
        #
        B = sy.Matrix( [Bx, By, Bz] )
        ε = sy.Matrix( [[εxx, εxy, εzx],  # (Cauchy) strain
                        [εxy, εyy, εyz],
                        [εzx, εyz, εzz]] )
        e = sy.Matrix( [[exx, exy, ezx],  # deviatoric strain
                        [exy, eyy, eyz],
                        [ezx, eyz, ezz]] )

        εM = sy.symbols("εM", real=True)  # mean volumetric strain
        e_expr  = ε - εM * sy.eye(3)
        εM_expr = sy.factor(sy.S("1/3") * ε.trace())

        print_and_count(e_expr,  name="e")
        print_and_count(εM_expr, name="εM")
        

        I4_expr = (B.T * B)[0,0]  # extract scalar from matrix wrapper
        I5_expr = (B.T * e * B)[0,0]
        I6_expr = (B.T * e * e * B)[0,0]

        #I4_expr = collect(I4_expr)
        #I5_expr = collect(I5_expr)
        #I6_expr = collect(I6_expr)

        I4_expr = sy.simplify(I4_expr)
        I5_expr = sy.simplify(I5_expr)
        I6_expr = sy.simplify(I6_expr)

        # - the first doit() applies the derivatives at the front
        # - the second doit() eliminates the dummy variables where possible
        #
        # TODO: figure out why the second doit() is needed; the docs for sy.Expr.doit()
        #       claim it applies everything recursively unless told otherwise.
        #
    #    tmp = dϕdBx.subs({I4 : I4_expr,
    #                      I5 : I5_expr,
    #                      I6 : I6_expr}).doit().doit()
#        tmp = dϕdBx.subs({I4 : I4_expr}).doit().doit()
#        print("=" * 80)
#        sy.pprint(strip_arguments(tmp, (u, v, w, I4, I5, I6)))
#        print("=" * 80)
#        return

        print_and_count(I4_expr, name="I4")
        print_and_count(I5_expr, name="I5")
        print_and_count(I6_expr, name="I6")

        u_expr = sy.sqrt(I4_expr)
        v_expr = sy.collect( sy.S("3/2") * I5_expr / I4_expr, (self.Bs + self.es) )
        w_expr = sy.collect( sy.sqrt( I6_expr*I4_expr - I5_expr**2 ) / I4_expr, (self.Bs + self.es) )

        print_and_count(u_expr, name="u")
        print_and_count(v_expr, name="v")
        print_and_count(w_expr, name="w")

def main():
    smd = SymbolicModelDeriver()
    # The full strain ε is not used in our definition of ϕ,
    # so differentiate only w.r.t. the components of B and e.
#    for q in [key for key in smd.symdic.keys() if not key.startswith("ε")]:  # production
    for q in ("Bx",):  # debug
        smd.dϕdq(q)
    smd.Beε_to_uvw()

if __name__ == '__main__':
    main()
