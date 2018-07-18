#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""Main program for the code generator.

Created on Mon Nov  6 13:32:31 2017

@author: Juha Jeronen <juha.jeronen@tut.fi>
"""

__version__ = '1.0.0'

import os
import argparse

class Main:
    """Main program."""

    # no constructor, this is OOFP with just static and class methods.

    @classmethod
    def run(cls, stage, path):
        """Run a stage of the code generator.

        Parameters:
            stage: int, 1 or 2
                Stage of code generation.
                  1: model to internal API
                  2: internal API to public API

        Returns:
            None. Each stage invokes write() to write output to files.
        """
        assert stage in (1, 2)
        if stage == 1:
            cls.run_stage1(path)
        else: # stage == 2:
            cls.run_stage2(path)

    @classmethod
    def run_stage1(cls, path):  # path: for output files
        import stage1
        from polymodel import Model as PolyModel
        from splinemodel import Model as SplineModel
        for model in (PolyModel(), SplineModel(kind="2par"), SplineModel(kind="3par")):
            cls.write(stage1.CodeGenerator.run(model), path, stage=1)

    @classmethod
    def run_stage2(cls, path):  # path: for input and output files
        import stage2
        s1code = stage2.load_stage1_intfs(path)
        s1code = stage2.add_intfs(s1code, path, ("mgs_{label}_phi.h", "mgs_physfields.h"))
        cls.write(stage2.CodeGenerator.run(s1code), path, stage=2)

    @staticmethod
    def write(code, path, stage):
        """Write generated code to files.

        Parameters:
            code: [(label, filename, content), ...]
                See ``stage1.CodeGenerator.run()`` and ``stage2.CodeGenerator.run()``.

            path: str
                Filesystem path to write to. Relative or absolute.
                No final pathsep. Example: "." for the current directory.

            stage: int, 1 or 2
                Stage of code generation. For message only.

        Returns:
            None
        """
        for label, basename, content in code:
            filename = os.path.join(path, basename)
            print("stage{s}: writing {file} for {label}".format(s=stage, file=basename, label=label))
            with open(filename, "wt", encoding="utf-8") as f:
                f.write(content)

def main():
    """Handle command-line arguments and run the main program."""
    parser = argparse.ArgumentParser(description="""Code generator for elmer-mgs-galfenol.""",
                                     formatter_class=argparse.RawDescriptionHelpFormatter)

    parser.add_argument( '-v', '--version', action='version', version=('%(prog)s ' + __version__) )

    group_behavior = parser.add_argument_group('behavior', 'Behavior options.')
    group_behavior.add_argument('-s1', '--stage1-only', dest='s1_only', default=False, action='store_true',
                                help='Run stage1 (model to internal API) only.' )
    group_behavior.add_argument('-s2', '--stage2-only', dest='s2_only', default=False, action='store_true',
                                help='Run stage2 (internal API to public API) only.' )
    group_behavior.add_argument('-o', '--output-path', dest='path', default=".", type=str, metavar='xxx',
                                help="Data file path (default %(default)s). Output in stage1, both input and output in stage2." )

    opts = parser.parse_args()

    if opts.s1_only and opts.s2_only:
        raise ValueError("Cannot specify both -s1 and -s2.")
    elif opts.s1_only:
        stages = (1,)
    elif opts.s2_only:
        stages = (2,)
    else:
        stages = (1, 2)

    for stage in stages:
        Main.run(stage, opts.path)

if __name__ == '__main__':
    main()
