# mm-codegen

Generate Fortran code for Elmer so that it can use our material model.

Technical details are documented in code comments.

Tested in Python 3.4.


## Getting started

The roles of the files are as follows:

 - [``main.py``](main.py): Top-level program. Start here. Has command-line options to run only stage1 or stage2 (if desired) and to choose the datafile path.
 - [``modelbase.py``](modelbase.py): Abstract base class that defines the API representing a mathematical model for the material. This allows later extending the program to support different material models.
 - [``potentialmodelbase.py``](potentialmodelbase.py): Specialization of ``ModelBase``, still abstract. Central place to [DRY](https://en.wikipedia.org/wiki/Don't_repeat_yourself) out code for models based on the potential ϕ, using the independent variables (B, ε).
 - [``polymodel.py``](polymodel.py): Specialization of ``PotentialModelBase`` to our particular material model, based on a global polynomial ϕ(I1, I2, I4, I5, I6) as in our EMSA2018 paper. No I3, since linear elasticity. This version supplies a definition for ϕ in the model itself, so no custom Fortran code is needed to evaluate ϕ or its immediate derivatives (∂ϕ/∂I1 etc.).
 - [``splinemodel.py``](splinemodel.py): Specialization of ``PotentialModelBase`` to our particular material model, based on a spline representation for the potential ϕ. This module only handles the layer cake of auxiliary variables so that SymPy can apply the chain rule to e.g. ∂ϕ/∂Bx. The spline implementation for ϕ (and ∂ϕ/∂u, ∂ϕ/∂v, ∂ϕ/∂w and the second derivatives) is expected to be externally supplied at stage2 as a custom Fortran code.
 - [``stage1.py``](stage1.py): Compiler: model to internal Fortran 90 API. Extensively utilizes SymPy.
 - [``stage2.py``](stage2.py): Compiler: internal Fortran 90 API to public Fortran 90 API. Custom Python code.

Low-level utilities are located in:

 - [``iterutil.py``](iterutil.py): Utilities for iterables.
 - [``reccollect.py``](reccollect.py): Recursive ``collect()`` for SymPy, with a vengeance. In some applications (such as here), leads to shorter output expressions than SymPy's own `collect()` in recursive mode, since this implementation dynamically decides on which symbols to collect first as it goes along.
 - [``symutil.py``](symutil.py): Some custom utilities for SymPy, which is as much as [CAS](https://en.wikipedia.org/wiki/Computer_algebra_system) *construction kit* as it is a (relatively) complete CAS system.
 - [``util.py``](util.py): Miscellaneous utilities to make code generation easier; e.g. removal of Unicode Greek symbols, naming of derivatives, and adding line breaks to Fortran code.
 - [``extras/numutil.py``](extras/numutil.py): Numerical utilities.

Small independent programs provided for testing, development and documentation purposes:

 - [``extras/converter.py``](extras/converter.py): Convert B-spline basis functions to cubic-spline interpolated data in Elmer format. Note that this correspondence is very highly sensitive to the placement of the knots of the interpolation splines. For example, for the knot at the center of the span, even an [ulp](https://en.wikipedia.org/wiki/Unit_in_the_last_place) of difference can have a significant effect on the output.
 - [``extras/elmerspline.py``](extras/elmerspline.py): Python port of the cubic-spline routines in [Elmer's ``GeneralUtils.F90``](https://github.com/ElmerCSC/elmerfem/blob/devel/fem/src/GeneralUtils.F90), providing spline-based interpolation in the plane through given points. Not used in this project.
 - [``extras/hermite_element.py``](extras/hermite_element.py): SymPy code to automatically derive arbitrary-order 1D Hermite interpolation functions with *C<sup>k</sup>* continuity, interpolating a function and its first *k* derivatives. Basically a teaching example to demonstrate some features of SymPy. Not used in this project.
 - [``extras/ppeval.py``](extras/ppeval.py): Python evaluator for MATLAB's ppform splines in 2D, for evaluating the potential ϕ, based on its B-spline fit. The final version of the program for the spline model will contain a Fortran port of the necessary subset of ppeval.


To get a more detailed overview of what calls or defines what, consider running [Pyan3](https://github.com/Technologicat/pyan) on the code.


## Notes

The API is generated in two stages.

At **stage1**, each generated Fortran function is a standalone piece, which requires as function arguments the values for all symbols that the expression refers to (even if there is another stage1 function that could be used to compute that quantity). This format is convenient to generate in SymPy. Dependencies are analyzed later, in stage2.

The RHSs of quantities may depend also on derivatives of other quantities defined in the model; definitions for any needed derivatives are automatically generated, by symbolically differentiating the definition of the original quantity referred to (and then algebraically simplifying the result). Any derivatives that the definitions show to be identically zero are automatically dropped.

This derivative processing is performed recursively to catch any new derivatives that may appear on the RHS in the differentiation. Circular lookups are treated as an error; if this happens, check the definitions.

SymPy applied functions (unspecified function with known dependencies) are allowed on the RHSs, since they can be formally differentiated.

For the definition format, see [modelbase.py](modelbase.py).

It is not necessary to define everything in stage1; if you have a custom Fortran code to compute some functions (and/or their derivatives), just tell stage2 about its interface, and those functions will be considered as stage1 code (on equal footing with any code generated here).

**stage2** takes in the generated code from stage1, and possible additional user-defined Fortran interfaces (see ``stage2.add_intfs()``). These are treated on equal footing as stage1 code. User-defined Fortran code is the mechanism used to pack the components of the physical fields into tensors (see [``mgs_physfields.h``](mgs_physfields.h)), and to provide a hook to evaluate the potential ϕ and its immediate derivatives (∂ϕ/∂u, ∂ϕ/∂v, ∂ϕ/∂w) in the spline version (see [``mgs_2par_phi.h``](mgs_2par_phi.h), [``mgs_3par_phi.h``](mgs_3par_phi.h)).

stage2 analyzes the dependencies between the stage1 functions, and writes wrappers, where all bound symbols (quantities defined by any of the stage1 functions) are automatically computed, by calling other stage1 functions (recursing where necessary).

Each function generated by stage2 takes in values only for the free symbols (quantities *not* defined by any of the stage1 functions) encountered anywhere in its call tree. This makes e.g. ∂²ϕ/∂Bx² "see" the dependencies on e.g. u0, I4, and εxx.

"Free symbol" is here meant in a mathematical sense; in the programming sense, these "free symbols" appear in the formal parameter list of the function being generated, so they are bound names.


## Dependencies

Code generator:

 - [SymPy](http://www.sympy.org)

The small independent programs additionally need:

 - [NumPy](http://www.numpy.org)
   - needed by [``converter.py``](converter.py), [``elmerspline.py``](elmerspline.py), [``ppeval.py``](ppeval.py)
 - [SciPy](https://scipy.org)
   - needed by [``ppeval.py``](ppeval.py) to read ``.mat`` files
 - [Matplotlib](http://matplotlib.org)
   - needed by [``converter.py``](converter.py), [``elmerspline.py``](elmerspline.py), [``ppeval.py``](ppeval.py)
 - [bspline](https://github.com/johntfoster/bspline)
   - B-spline basis functions and utilities
   - needed by [``converter.py``](converter.py)


## Installation

For the Python dependencies, it is recommended to use the latest versions from ``pip`` (or ``conda``, depending on your Python distribution).

In addition to the Python dependencies, NumPy requires BLAS and LAPACK. In Debian-based distros, BLAS is available in the packages ``libblas3 libblas-dev`` (reference BLAS) or ``libopenblas-base libopenblas-dev`` (OpenBLAS). LAPACK is available in the packages ``liblapack3 liblapack-dev``.

To install all Python dependencies:

```bash
pip install --user cython numpy scipy matplotlib sympy bspline
```

(Cython may be needed for compiling NumPy; if so, the latest version is recommended.)

Then, finally, clone this project from git.


## License

[2-clause BSD](LICENSE.md)

``reccollect.py`` has been copied and adapted from the FREYA solver, Copyright 2012-2017 Juha Jeronen and University of Jyväskylä, 2-clause BSD license.

