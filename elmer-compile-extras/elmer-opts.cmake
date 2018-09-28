# Compilers

SET(CMAKE_C_COMPILER "gcc" CACHE STRING "")
SET(CMAKE_CXX_COMPILER "g++" CACHE STRING "")
SET(CMAKE_Fortran_COMPILER "gfortran" CACHE STRING "")

# Install location

SET(CMAKE_INSTALL_PREFIX "$ENV{PWD}/../elmer-install" CACHE PATH "")

# Libraries

SET(FIND_LIBRARY_USE_LIB64 TRUE CACHE BOOL "")
SET(CMAKE_LIBRARY_PATH /usr/lib64 CACHE PATH "")

# BLAS
#
SET(BLAS_LIBRARIES /usr/lib64/libopenblas.so CACHE FILE "")
#SET(BLAS_LIBRARIES /usr/lib64/atlas/libsatlas.so.3 CACHE FILE "")

# LAPACK
#
SET(LAPACK_LIBRARIES /usr/lib64/liblapack.so CACHE FILE "")

# BLACS
#
SET(BLACS_LIBRARIES /usr/lib64/openmpi/lib/libmpiblacs.so CACHE FILE "")

# SCALAPACK
#
SET(SCALAPACK_LIBRARIES /usr/lib64/openmpi/lib/libscalapack.so.2 CACHE FILE "")

# METIS
#
# The Elmer source includes its own copy of METIS, so this is not needed.
#
# However, on Red Hat based distributions, the file macros.h of METIS
# (inside the Elmer source) must be renamed (e.g. to metismacros.h)
# and the reference to it changed accordingly in metis.h, because Red Hat
# contains its own macros.h which will cause a conflict (and likely
# a mysterious error regarding IFSET, defined in the METIS macros.h).
#
# (Actually, there are two other macros.h; one from GCC and one from OpenMPI.)
#
#SET(Metis_INCLUDE_DIR /usr/include/openmpi-x86_64 CACHE PATH "")
#SET(Metis_LIBRARIES /usr/lib64/libmetis.so CACHE FILE "")

# HYPRE
#
SET(Hypre_INCLUDE_DIR /usr/include/openmpi-x86_64/hypre CACHE PATH "")
SET(Hypre_LIBRARIES /usr/lib64/openmpi/lib/libHYPRE.so.0.0 CACHE FILE "")

# MUMPS
#
SET(Mumps_INCLUDE_DIR /usr/include/openmpi-x86_64 CACHE PATH "")
SET(Mumps_LIBRARIES /usr/lib64/openmpi/lib/libdmumps.so CACHE FILE "")
LIST(APPEND Mumps_LIBRARIES /usr/lib64/openmpi/lib/libmumps_common.so)
LIST(APPEND Mumps_LIBRARIES /usr/lib64/openmpi/lib/libpord.so)
LIST(APPEND Mumps_LIBRARIES /usr/lib64/openmpi/lib/libscalapack.so.2)
LIST(APPEND Mumps_LIBRARIES /usr/lib64/libmetis.so)
