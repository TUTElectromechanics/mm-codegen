#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""Utilities for iterables.

Created on Wed Nov  1 14:44:36 2017

@author: jje
"""

# generator version
def uniqify(iterable, key=None):
    """Remove duplicates from iterable; preserve ordering.

    If a key is provided, key(elt) is tested instead of elt for whether
    a given element has already been seen."""
    key = key or (lambda x: x)
    it = iter(iterable)
    seen = set()
    for e in it:
        k = key(e)
        if k not in seen:
            seen.add(k)
            yield e

# list version
#def uniqify(iterable):
#    """Remove duplicates from iterable; preserve ordering."""
#    # set.add() returns None, which is conveniently falsey,
#    # so we "or x" to make the expression also evaluate to x.
#    seen = set()
#    return [seen.add(x) or x for x in iterable if x not in seen]

def flatten(iterable):
    """Remove nested structure from iterable.

    http://rightfootin.blogspot.fi/2006/09/more-on-python-flatten.html
    This version by Danny Yoo.
"""
    it = iter(iterable)
    for e in it:
        if isinstance(e, (list, tuple)):
            for f in flatten(e):
                yield f
        else:
            yield e

def flatten1(iterable):
    """Remove nested structure from iterable, outermost level only."""
    it = iter(iterable)
    for e in it:
        if isinstance(e, (list, tuple)):
            for f in e:
                yield f
        else:
            yield e

def flatten_if(iterable, condition):
    """Remove nested structure from iterable, matching items only.

    E.g. to flatten only tuples of tuples (leaving tuples of atoms intact),
    use something like:

        condition = lambda item: isinstance(item[0], (tuple, list))
"""
    it = iter(iterable)
    for e in it:
        if isinstance(e, (list, tuple)) and condition(e):
            for f in flatten_if(e, condition):
                yield f
        else:
            yield e


def test():
    from operator import itemgetter
    assert tuple(uniqify((1, 1, 2, 2, 2, 2, 4, 3, 3, 3))) == (1, 2, 4, 3)
    assert tuple(uniqify((('foo', 1), ('bar', 1), ('foo', 2), ('baz', 2), ('qux', 4), ('foo', 3)), key=itemgetter(0))) == (('foo', 1), ('bar', 1), ('baz', 2), ('qux', 4))
    assert tuple(uniqify((('foo', 1), ('bar', 1), ('foo', 2), ('baz', 2), ('qux', 4), ('foo', 3)), key=itemgetter(1))) == (('foo', 1), ('foo', 2), ('qux', 4), ('foo', 3))
    assert tuple(flatten(((1, 2), (3, (4, 5), 6), (7, 8, 9)))) == (1, 2, 3, 4, 5, 6, 7, 8, 9)
    assert tuple(flatten1(((1, 2), (3, (4, 5), 6), (7, 8, 9)))) == (1, 2, 3, (4, 5), 6, 7, 8, 9)
    assert tuple(flatten_if((((1, 2), (3, 4)), (5, 6)), lambda e: isinstance(e[0], (tuple, list)))) == ((1, 2), (3, 4), (5, 6))
    print("All tests passed")

if __name__ == '__main__':
    test()
