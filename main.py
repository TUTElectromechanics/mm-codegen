#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Tue Oct 24 14:07:45 2017

@author: jje
"""

import sympy as sy
from sympy.utilities.codegen import codegen

# this seems to fare better in some cases than sy.rcollect
from reccollect import recursive_collect

##############################################################################
# Utilities
##############################################################################

# Remove nested structure from iterable.
#
# http://rightfootin.blogspot.fi/2006/09/more-on-python-flatten.html
# This version by Danny Yoo.
#
def iter_flatten(iterable):
  it = iter(iterable)
  for e in it:
    if isinstance(e, (list, tuple)):
      for f in iter_flatten(e):
        yield f
    else:
      yield e

# Remove nested structure, but only from matching items.
#
# E.g. to flatten only tuples of tuples (leaving tuples of atoms intact),
# use something like:
#
#   condition = lambda item: isinstance(item[0], (tuple, list))
#
def iter_flatten_if(iterable, condition):
  it = iter(iterable)
  for e in it:
    if isinstance(e, (list, tuple)) and condition(e):
      for f in iter_flatten_if(e, condition):
        yield f
    else:
      yield e

# Strip kilometer-long argument lists from expressions of unknown functions.
#
# Mainly useful for printing when there are several layers of dependencies
# and one takes partial derivatives utilizing the chain rule.
#
from sympy.core.function import UndefinedFunction
def strip_function_arguments(expr):
    def nameof_as_symbol(x):
        if hasattr(expr, "name"):
            return sy.symbols(x.name, **x.assumptions0)
        else:
            return sy.symbols(x.__class__.__name__, **x.assumptions0)

    if isinstance(expr.__class__, UndefinedFunction):
        return nameof_as_symbol(expr)
    elif expr.is_Atom:
        return expr
    else:  # compound other than an undefined function
        out = [strip_function_arguments(x) for x in expr.args]
        cls = type(expr)
        return cls(*out)

# Remove duplicates, preserve ordering.
#
def uniqify(lst):
    # set.add() returns None, which is conveniently falsey,
    # so we "or x" to make the expression also evaluate to x.
    seen = set()
    return [seen.add(x) or x for x in lst if x not in seen]

# Find which derivatives an expression needs.
#
# The return format is a tuple of (function_name, var_name) pairs.
#
def find_needed_derivatives(expr):
    def process(e):
        if isinstance(e, sy.Derivative):
            return e.args  # args[0] = function, args[1:] = diff. w.r.t. what
        elif e.is_Atom:
            return None
        else:  # compound other than a derivative
            out = [process(x) for x in e.args]
            return [x for x in out if x is not None]
    lst = process(strip_function_arguments(expr))
    # keep (function, var) pairs but discard the rest of the nested structure
    lst = iter_flatten_if(lst, lambda item: isinstance(item[0], (tuple, list)))
    lst = uniqify(lst)
    # item[0] = function as sy.Symbol, item[1:] = vars as sy.Symbol
    lst = sorted(lst, key=lambda item: [x.name for x in item])
    return lst

# Collect constant factors in sums nested inside expr.
#
def collect_const_in(expr):
    def process(e):
        if e.is_Atom:
            return e
        else:
            out = [process(x) for x in e.args]
            cls = type(e)
            tmp = cls(*out)
            return sy.collect_const(tmp) if isinstance(tmp, sy.Add) else tmp
    return process(expr)

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


##############################################################################
# Expression generator
##############################################################################

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

    # Differentiate ϕ with respect to a variable, applying the chain rule.
    # See self.symdic.keys for valid vars.
    #
    def dϕdq(self, diff_wrt="Bx"):
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
        results_3d = { "name": "∂ϕ/∂%s" % (q),
                       "expr": strip_function_arguments(dϕdq),
                       "ders": find_needed_derivatives(dϕdq) }

        # Specialize to the 2D model by taking w → 0, I6 → 0.
        #
        # - After the subs(), the first .doit() notices that d(0)/dwp = 0 and
        #   deletes the corresponding set of terms, but also re-introduces
        #   the dummy variables into the derivative expressions.
        #
        # - The second .doit() rewrites the derivatives again, without the
        #   dummy variables.
        #
        zero = sy.S.Zero
        tmp = dϕdq.subs( {w: zero, I6: zero} ).doit().doit()
        results_2d = { "name": "∂ϕ/∂%s" % (q),
                       "expr": strip_function_arguments(tmp),
                       "ders": find_needed_derivatives(tmp) }

        return { "3D" : results_3d, "2D" : results_2d }

    # Make symbolic expressions of the various intermediate functions.
    #
    def make_exprs(self):
        results = {}

        Bx,By,Bz = self.Bs
        exx,eyy,ezz,eyz,ezx,exy = self.es
        εxx,εyy,εzz,εyz,εzx,εxy = self.εs

        # Voigt notation ordering:
        #   ε = [[ε1, ε6, ε5],
        #        [ε6, ε2, ε4],
        #        [ε5, ε4, ε3]]
        #
        B = sy.Matrix( [Bx, By, Bz] )
        ε = sy.Matrix( [[εxx, εxy, εzx],  # Cauchy strain
                        [εxy, εyy, εyz],
                        [εzx, εyz, εzz]] )
        e = sy.Matrix( [[exx, exy, ezx],  # deviatoric strain
                        [exy, eyy, eyz],
                        [ezx, eyz, ezz]] )

        # e in terms of ε
        #
        εM = sy.symbols("εM", real=True)  # mean volumetric strain
        e_expr  = ε - εM * sy.eye(3)
        εM_expr = sy.factor(sy.S("1/3") * ε.trace())
        results["e"]  = e_expr
        results["εM"] = εM_expr

        # I4, I5, I6 in terms of (B,e)
        #
        for k,v in (("I4", B.T * B),
                    ("I5", B.T * e * B),
                    ("I6", B.T * e * e * B)):
            assert v.shape == (1,1)
            expr = v[0,0]  # extract scalar from matrix wrapper
            expr = collect_const_in(recursive_collect(sy.expand(expr)))
            results[k] = expr

        # u', v', w' in terms of (I4,I5,I6)
        #
        # Note: here I4, I5 and I6 are just arbitrary symbols.
        #
        # We do not insert their expressions; that would only generate
        # unnecessary flops due to common subexpressions.
        #
        # (Also: we can't easily make the symbols here real-valued;
        #  this would make them different from symbols *of the same name*
        #  that do not have the flag. Hence e.g. d(up)/d("I4") would be zero,
        #  because it is not the same I4 due to the type difference.
        #
        #  The "diff w.r.t. what" symbols returned by find_needed_derivatives()
        #  currently do not have the real-valued flag set.)
        #
        I4,I5,I6 = sy.symbols("I4, I5, I6")
        for k,v in (("up", sy.sqrt(I4)),
                    ("vp", sy.S("3/2") * I5 / I4),
                    ("wp", sy.sqrt( I6*I4 - I5**2 ) / I4)):
            results[k] = v

        # u, v, w in terms of (u',v',w')
        #
        u,v,w = sy.symbols("u, v, w")
        u0,v0,w0 = sy.symbols("u0, v0, w0")
        for k,v in (("u", "up / u0"),
                    ("v", "vp / v0"),
                    ("w", "wp / w0")):
            results[k] = v

        return results

##############################################################################
# Main program
##############################################################################

def main():
    smd = SymbolicModelDeriver()

    # Compute expressions for e, I4, I5, I6, u', v', w', u, v, w
    #
    exprs = smd.make_exprs()

    # Compute ∂ϕ/∂q for q = Bx, By, Bz, exx, ...
    #
    # The full strain ε is not used in our definition of ϕ,
    # so we differentiate only w.r.t. the components of B and e.
    #
    results = {}
    for q in [key for key in smd.symdic.keys() if not key.startswith("ε")]:  # production
#    for q in ("Bx",):  # DEBUG
        print("Computing ∂ϕ/∂%s" % (q))
        funcname = "dphi_d%s" % (q)  # Fortran routine name
        results[funcname] = smd.dϕdq(q)

    # We now have 2D and 3D models for the same function in a single results item;
    # convert to a format with all 2D models in one place, and all 3D models in another.
    #
    all_results_2D = { k: v["2D"] for k,v in results.items() }
    all_results_3D = { k: v["3D"] for k,v in results.items() }
    all_results = ( ("2D", all_results_2D),
                    ("3D", all_results_3D) )

    for label,dic in all_results:  # 2D, 3D
        print("%s model" % (label))
        all_funcs = {}
        all_derivatives = {}
        for funcname in sorted(dic.keys()):  # process the functions in alphabetical order
            data = dic[funcname]
            sy.pprint(data["name"])  # sy.pprintable expression
            sy.pprint(data["expr"])

            print("Derivatives needed by %s; format (f, var):" % (data["name"]))
            sy.pprint(data["ders"])
            print("=" * 80)  # separator

            # Compute the derivatives ∂ϕ/∂q depends on.
            #
            derivatives = {}
            for func,var in data["ders"]:
                fname = str(func)  # func and var themselves are sy.Symbols
                vname = str(var)
                if fname == "ϕ":
                    continue  # in the solver, ϕ(u,v,w) comes from ppeval
                k = sy.Derivative(func, var, evaluate=False)  # this is present in expr; also a label
                v = sy.diff(exprs[fname], var)  # do it to the actual definition
                v = collect_const_in(recursive_collect(sy.together(sy.expand(v))))
                # we will need fname,vname for generating the Fortran routine name
                derivatives[k] = (v, fname, vname)
                sy.pprint(k)
                sy.pprint(v)
                print("=" * 80)  # separator

            # Delete any terms that are always zero due to the structure
            # of the functional dependencies.
            #
            print("Final expr, with zero terms eliminated:")
            zero = sy.S.Zero
            out = data["expr"]
            for k,val in derivatives.items():
                v,_,_ = val
                if v == zero:
                    out = out.subs( {k: zero} )
            sy.pprint(out)
            print("=" * 80)  # separator
            print("=" * 80)  # separator

            # Only include derivatives that are nonzero.
            #
            final_derivatives = { k:v for k,v in derivatives.items() if v[0] != zero }

            # We may overwrite, since e.g. dI4/dBx always has the same expression if it is present.
            all_derivatives.update(final_derivatives)
            all_funcs[funcname] = out

        # Generate the Fortran code

        # Auxiliary expressions I4, I5, I6, u', v', w', u, v, w
        #
        # (these are always generated)
        #
        name_expr_pairs = []
        if label == "2D":  # FIXME: parametrize better so no need for special handling
            cond = lambda k: k not in ("I6", "wp", "w")
        else:
            cond = lambda k: True
        name_expr_pairs = [ (k,v) for k,v in exprs.items() if cond(k) ]
        name_expr_pairs.sort()  # alphabetize helpers for easy reading of generated code

        # Derivatives of auxiliary expressions
        #
        # (only the ones we actually needed)
        #
        derivative_routines = {}
        tmp_pairs = []
        for k,val in all_derivatives.items():
            v,fname,vname = val
            routine_name = "d%s_d%s" % (fname, vname)  # e.g. dI4_dBx
            derivative_routines[k] = routine_name
            tmp_pairs.append( (routine_name, v) )
        tmp_pairs.sort()
        name_expr_pairs.extend(tmp_pairs)

        # The main routines
        #
        # We alphabetize; the reverse is needed because we insert at the beginning.
        #
        for funcname in reversed(sorted(all_funcs.keys())):
            # TODO: handle 2nd-order derivatives
            #
            final_expr = all_funcs[funcname]
            for k,v in derivative_routines.items():
                final_expr = final_expr.subs({k: v})
            ϕ,u,v,w = sy.symbols("ϕ, u, v, w")
            final_expr = final_expr.subs({sy.Derivative(ϕ,u) : "dphi_du"})
            final_expr = final_expr.subs({sy.Derivative(ϕ,v) : "dphi_dv"})
            final_expr = final_expr.subs({sy.Derivative(ϕ,w) : "dphi_dw"})
            final_expr = final_expr.subs({ϕ : "phi"})

            name_expr_pairs.insert(0, (funcname, final_expr))
    
        basename = "mgs_%s" % (label)
        generated_code = codegen(name_expr_pairs,
                                 language="f95",
                                 project="elmer-mgs-galfenol",
                                 to_files=True,
                                 prefix=basename)
#        print(generated_code)  # DEBUG


if __name__ == '__main__':
    main()
