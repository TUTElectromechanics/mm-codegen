#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""Recursive collect for SymPy.

The choice of grouping (parenthesization) is of course not unique;
this implementation aims at reducing operation count.

It is geared for preprocessing SymPy expressions for NumPy evaluation
to reduce the required number of memory accesses.

Created on Tue Oct 31 15:32:08 2017

Originally part of FREYA, copyright 2012 Juha Jeronen and University of Jyväskylä.
License: 2-clause BSD.

@author: jje
"""

import functools
import operator

import sympy as sy

def recursive_collect(expr, syms=None, **kwargs):
    """Recursively collect SymPy expression "expr" in the list of symbols "syms".

    This is a wrapper around sympy.collect() for deep rewriting of expressions.

    Breadth-first algorithm.


    If you don't know what to put in the syms kwarg, and you're aiming at reducing
    operation count, there's no need to specify it - analyze() will be automatically
    used to generate a suitable symbol list at each recursion level.

    If you want to use a custom list of syms, it is recommended to use reorder=True (default).
    If you use reorder=False, note the following:

        Consider:

        sy.collect("a*b + a*c", ["a","b","c"])
          =>  a*(b + c)     (success)

        but

        sy.collect("a*b + a*d*c", ["d","a","b","c"])
          =>  a*b + a*d*c   (failure!)

        because "d" was given before (i.e. specified as more important than) "a".
        Here collect() first extracts the part that has "d", and then tries to
        collect the remaining terms (here only "a*b") w.r.t. the remaining syms.

        But if we do:

        sy.collect("a*b + a*d*c", ["a","b","c","d"])
          =>  a*(b + d*c)     (success)

        Here all terms match "a", so the "a" is extracted and no further processing
        takes place, because no terms were left over.


        Another example:

        sy.collect("a*b*c*d + b*c*d + c*d", ["d","c","b","a"])
          => d*(a*b*c + b*c + c)
        "d" matched all terms; hence nothing was left for "c", "b" or "a".
        (This is a successful non-recursive collect.)

        sy.collect("a*b*c*d + b*c*d + c*d", ["a","d"])
          =>  a*b*c*d + d*(b*c + c)
        Now the "part left over from collecting w.r.t. 'a'" has "d" as a common factor.
        The leftover is processed next w.r.t. the next sym, "d"; hence we get a partially
        collected result.

        Contrast the previous with
        sy.collect("a*b*c*d + b*c*d + c*d", ["a","b","c","d"])
          =>  a*b*c*d + b*c*d + c*d
        Here the "part left over from collecting w.r.t. 'a'" has two terms, one of them
        matching "b". Hence, this term is extracted next, leaving unhandled only the
        last term "c*d". This remaining term is then collected w.r.t. "c".
        With this ordering, the end result is that from the user's perspective,
        nothing happens!

        sy.collect(sy.sympify("a*(b*c*d + c*d)"), "d")
          =>  a*d*(b*c + c)
        Collect always descends into Mul, even when not recursive.


    The recursive_collect algorithm works as follows:
        - Take operands of the top-level operation in expr.
        - Apply sympy.collect(operand, syms) to each non-atomic operand.
          Pass atoms through as-is.
        - Rewrite expr using the updated operands.


    If reorder=False, because sy.collect() is used internally, the same note applies
    as for sympy.collect(): syms are tried in the order they are given in the list.
    Combined with the recursive approach, this implies that:

    recursive_collect( "a*b + a*b*c + a*b*c*d", ["a", "b", "c", "d"] )

    => a * (b + b*c + b*c*d)          (after first collect())
    => a * b * (1 + c + c*d)          (after collect() applied to parenthetical expression)
    => a * b * (1 + c * (1 + d))      (after collect() applied to parenthetical expression)
    = final result, since (1 + d) cannot be simplified by collect().


    If your expression is rational, it is recommended to apply together() first:

    recursive_collect( sy.together( "a*b/e + a*b*c + a*b*c*d/e" ),
                       ["a", "b", "c", "d", "e"] )

    => a*b*(1 + c*(d + e))/e      (final result)

    Compare this with just together():

    (a*b + a*b*c*d + a*b*c*e)/e

    and collect(together()):

    a*(b + b*c*d + b*c*e)/e

    You can also apply expand(together()) before calling this function, but sometimes
    leaving out the expand() produces better results, if there is already some structure
    in the input.

    To analyze optimality, see expr.count_ops() and symutil.count_atoms().


    Parameters:
        expr = expression to collect (string, or a SymPy object (e.g. from sympify()))
        syms = list of SymPy symbols or strings. Optional.

               If specified, these symbols will be used as "syms" at each level
               of recursion. This is useful if you want to collect e.g. w.r.t. x and y only,
               while ignoring coefficients. For the ordering of the given syms, see the kwarg
               "reorder".

               If not specified, analyze() will be run at each level of recursion,
               to adaptively generate an appropriate symbol list. (Default.)

    Kwargs:
        reorder = bool. This switch affects the operation when "syms" are manually provided;
                  it has no effect when syms=None (automatic syms).

                  If True (default), the most appropriate ordering for the given syms will be
                  detected automatically for each subexpression.

                  If False, the syms are always used in the order they were given.


                  Example: collect with reordering enabled:

                  recursive_collect("d*(a*b*c + b*c + c + 1) + a*(d*c*b + c*b + b + 1)",
                                    ["b","c"], reorder=True)

                  => a*(b*(c*(d + 1) + 1) + 1) + d*(c*(b*(a + 1) + 1) + 1)

                  We see that we get optimal collection in each top-level term.
                  (Note that the first and second parts of the input have switched places
                  in the output. collect() may reorder the expressions at each level;
                  this flag does NOT control that reordering.)

                  When we do the same except without reordering of syms,

                  recursive_collect("d*(a*b*c + b*c + c + 1) + a*(d*c*b + c*b + b + 1)",
                                    ["b","c"], reorder=False)

                  => a*(b*(c*(d + 1) + 1) + 1) + d*(b*c*(a + 1) + c + 1)

                  We get an extra "c" in the second part (which was originally the first part!),
                  because "b" was specified as more important. Automatic reordering avoids this,
                  while still only collecting w.r.t. those symbols that were specified.

                  (It is difficult to craft a shorter example, because collect() even in
                   top-level mode automatically descends into the arguments of a Mul.)


    See also:
        analyze()
        sympy.collect()
        sympy.together()

        count_atoms()
        sympy.count_ops()

    """
    if type(expr) == str:
        expr = sy.sympify(expr)
    if expr.is_Atom:
        return expr

    reorder = "reorder" in kwargs  and  kwargs["reorder"]
    if syms is not None:
        autosyms = False

        # Analyze and re-order the given syms if requested. (FIXME: could be more efficient)
        if reorder:
            optimally_ordered_syms = analyze(expr)
            sympified_syms = [ sy.sympify(s) for s in syms ]
            syms = [ sym for sym in optimally_ordered_syms if sym in sympified_syms ]
    else:
        autosyms = True
        syms = analyze(expr)

#    print( "syms = %s; processing %s" % (syms, expr) )

    # When reorder=True, it may happen that a subexpression does not have
    # any of the specified syms.
    #
#    orig_expr = expr
    if len(syms):
        expr = sy.collect(expr, syms)

#    print( "syms = %s; processed  %s  ->  %s" % (syms, orig_expr, expr) )

#    print( "    collected as %s" % expr )
#    print( "    syms = %s" % syms )

    # find which args of expr are composite and which are atoms
    isatom = [ obj.is_Atom for obj in expr.args ]

    # rewrite the args
    newargs = []
    for j in range(len(isatom)):
        if isatom[j]:
            # pass atoms through as-is
            newargs.append( expr.args[j] )
        else:
            if autosyms:
                # autosyms -> reorder flag is not used
                newargs.append( recursive_collect( expr.args[j] ) )
            else:
                newargs.append( recursive_collect( expr.args[j], syms, reorder=reorder) )

#    print( "    done, newargs = %s" % newargs )

    # Instantiate a new object of the same type as expr (e.g. Add, Mul, ...),
    # using the updated args.
    #
    return type(expr)(*newargs)


def count_atoms(expr, **kwargs):
    """Counts the occurrences of atoms in SymPy expression "expr".

    This works like sympy.count_ops(), but counts atoms instead of operations.

    To get the unique atoms of an expr, use expr.atoms() or expr.free_symbols instead;
    this function is intended for the case where you want to get also the number of
    occurrences for each atom.

    This is useful e.g. as a collection optimality metric.


    Number atoms are ignored by default. See kwargs.

    Return value:
        depends on kwargs, below.

    Parameters:
        expr = string, SymPy expression, or iterable. In case of iterable,
               the results are collected together.

    Kwargs:
        ignore_numbers = bool, default True.

                         When True,  ignore number atoms (1, 2.0, pi, ...).
                         When False, count number atoms too.

                         Default is to ignore numbers. The atom "-1" confuses collect(),
                         and scalar numbers hardly affect the evaluation speed in FEM
                         (which is the main use case for recursive_collect()).

        visual         = bool, default False.

                         When True, return a sum expression like "2*a + 3*b + c"
                         (if expr contained 2 a's, 3 b's and one c).

                         When False, return the sum of the coefficients of the
                         visual expression (2+3+1 = 6 in the above example).

        as_dict        = bool, default False. Overrides "visual".

                         If True, return a dictionary:  atom -> #occurrences

                         If False, return either the visual or non-visual format
                         (see kwarg "visual").

    See also:
        sympy.count_ops()
        analyze()
        recursive_collect()

    """
    from sympy.core.compatibility import iterable

    visual  = "visual"  in kwargs  and  kwargs["visual"]
    as_dict = "as_dict" in kwargs  and  kwargs["as_dict"]

    # Handle one expression.
    #
    if isinstance(expr, sy.Expr):
        # Use the internal function to do the actual counting.
        #
        atomdict = _count_atoms(expr, **kwargs)

        if as_dict:
            # dictionary: name -> #occurrences
            return { k:v[0] for k,v in atomdict.items() }
        elif visual:
            # sum of #occurrences * name
            counts = [ v[0]*k for k,v in atomdict.items() ]
            return functools.reduce( operator.add, counts, 0 )
        else:
            # total sum only (useful e.g. as a collection optimality metric)
            counts = [ v[0] for k,v in atomdict.items() ]  # keep just the #occurrences
            return functools.reduce( operator.add, counts, 0 )

    # Handle iterables.
    # (This logic is modeled after sympy.count_ops())
    #
    elif type(expr) is dict:
        results = [count_atoms(k, **kwargs) for k in expr.iterkeys()]
        results.extend( [count_atoms(v, **kwargs) for v in expr.itervalues()] )
    elif iterable(expr):
        results = [count_atoms(i, **kwargs) for i in expr]
    elif not isinstance(expr, sy.Basic):
        results = []
    else: # it's Basic not Expr
        assert isinstance(expr, sy.Basic)
        results = [count_atoms(a, **kwargs) for a in expr.args]

    # In case of iterables, collect the results.
    #
    # (But first check for empty results; we might have gotten a blank iterable.)
    #
    if len(results) == 0:
        if as_dict:
            return {}
        elif visual:
            return sy.S.Zero
        else:
            return 0
    ret = results[0]
    if as_dict:
        # Each result is a dict; sum corresponding values (and insert any missing keys).
        for n in range(1,len(results)):
            for k,v in results[n].items():
                if k in ret:
                    ret[k] += v
                else:
                    ret[k]  = v
    else:
        # Each result is either a SymPy object or an integer;
        # these types can be summed directly.
        for n in range(1,len(results)):
            ret += results[n]
    return ret


def _count_atoms(expr, **kwargs):
    """Counts the occurrences of atoms in SymPy expression "expr".

    Internal function; implementation for count_atoms(). Used also as-is by analyze().

    Number atoms are ignored by default. See kwargs.

    Return value:
        dictionary:  atom -> (#occurrences, topmost_level_where_seen)

        Level numbering starts from 0 at the top of the expression tree.

    Example:
        count_atoms("a + a*b + a*b*c")
    =>
        dict: { a : (3,1), b : (2,2), c : (1,2) }

        In this example, there are 3 "a"s, and they are all inside the top-level
        Add operation. The Add operation is on level 0; its arguments are on level 1.
        The 2 "b"s are inside the Mul object, which is on level 1, so the "b"s are
        on level 2. Same for the single "c"; it is inside the Mul for the a*b*c term.

        Note that in SymPy, a single Add or Mul may have any number of arguments,
        so operations of a binary nature are not necessarily binary in the tree!

    Kwargs:
        ignore_numbers = bool, default True.

                         When True,  ignore number atoms (1, 2.0, pi, ...).
                         When False, count number atoms too.

                         Default is to ignore numbers. The atom "-1" confuses collect(),
                         and scalar numbers hardly affect the evaluation speed in FEM
                         (which is the main use case for recursive_collect()).

    See also:
        analyze()
        recursive_collect()

    """
    counts = {}

    if "__level" not in kwargs:
        level = 0  # root level (top of expression tree)
    else:
        level = kwargs["__level"]

    if "ignore_numbers" in kwargs  and  kwargs["ignore_numbers"] == False:
        ignore_numbers = False
    else:
        ignore_numbers = True

    if type(expr) == str:
        expr = sy.sympify(expr)
    if expr.is_Atom:
        if not ignore_numbers  or  not expr.is_Number:
            # format: key = value, where
            #  key   = atom object
            #  value = (count, topmost level where this atom was seen)
            #
            # We start by setting the level to the current level;
            # in recursion, our caller will take care of adjusting it
            # if necessary.
            #
            counts[expr] = (1, level)
        return counts

    # descend into arguments
    for arg in expr.args:
        temp = _count_atoms(arg, __level=(level+1))
        for key,value in temp.items():
            # value = (count, topmost level where seen)
            #  ...both in subexpression "arg".
            #
            # Note that levels are counted globally, whereas the count is tallied
            # for each level of recursion separately (and hence we must sum the counts).
            #
            if key in counts:
                # Update already seen atom
                counts[key] = (counts[key][0] + value[0], min(counts[key][1], value[1]))
            else:
                # First occurrence in this subexpression, so fill it in.
                counts[key] = (value[0], value[1])

    return counts


def analyze(expr):
    """Return list of atoms in SymPy expression "expr", sorted in descending order of #occurrences in expr.

    Ties are broken by preferring atoms whose 'topmost' occurrence is nearer the top
    of the expression tree. This secondary sorting helps in some cases when there is
    e.g. one of each symbol in expr (it more likely preserves the existing parenthesization
    in such cases).

    This particular ordering is useful for expression optimization using recursive_collect()
    (default behaviour if syms=... is not given).

    Example:
        analyze("a + a*b + a*b*c")
    =>
        (a, b, c)

    See also:
        count_atoms()
        recursive_collect()
    
    """
    # NOTE on tiebreaking: sometimes sorting just by atom count does not do what is
    # expected, because atoms with the same hit count are ordered randomly.
    # Consider the following input:
    #
    # Uin*(1 + u0_x)*(u0/(__uvmag__1__))
    #
    # Ordering just by count, we would get [u0, u0_x, __uvmag__1__, Uin] (tested).
    # This causes grouping first by u0 (good), and then by u0_x... not good!
    # We should group by [Uin, u0] or [u0, Uin] before considering the other
    # symbols; these are preferred by the secondary sort criterion, as they
    # are on level 1 of the expression tree.

    atomdict = _count_atoms(expr)
    atomlist = list(atomdict.items())

    # item = (name, (#occurrences, min_level))
    #
    # Smaller level = nearer the top of the tree.
    #
    # When not reversed, this key does the following:
    #  - higher #occurrences comes first (done by "*-1")
    #  - tiebreaker: smaller level comes first
    #
    def counts(item):
        return ( -item[1][0], item[1][1] )

    # Sort atoms in decreasing order of #hits.
    atomlist.sort(key=counts)

    # Get just the atoms, preserving the ordering.
    return [ item[0] for item in atomlist ]

def test():
    a,b,c,d,e = sy.symbols("a, b, c, d, e")
    one = sy.S("1")
    correct = a * b * (one + c * (one + d))
    computed = recursive_collect( "a*b + a*b*c + a*b*c*d", ["a", "b", "c", "d"] )
    assert computed == correct

    correct = a * b * (one + c * (d + e)) / e
    computed = recursive_collect( sy.together( "a*b/e + a*b*c + a*b*c*d/e" ),
                                  ["a", "b", "c", "d", "e"] )
    print(computed)
    assert computed == correct

if __name__ == '__main__':
    test()
