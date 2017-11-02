#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""Utilities for iterables.

Created on Wed Nov  1 14:44:36 2017

@author: jje
"""

# generator version
def uniqify(iterable):
    """Remove duplicates from iterable; preserve ordering."""
    it = iter(iterable)
    seen = set()
    for e in it:
        if e not in seen:
            seen.add(e)
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

def flatten_if(iterable, condition):
    """Remove nested structure, but only from matching items.

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
