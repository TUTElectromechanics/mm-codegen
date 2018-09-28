#!/bin/bash
#
# call this from inside the elmer-build directory as ../compile.sh
#
cmake -C ../elmer-opts.cmake -DWITH_Mumps:bool=TRUE -DWITH_Hypre:bool=TRUE ../elmerfem
