module MgsContainer
contains 
! stage1 generated functions
#include "./generated/mgs_poly_impl.f90"
! user-defined stage1 functions (and possibly subroutines at the final layer)
#include "./mgs_physfields.f90"
! stage2 generated functions (public API)
#include "./generated/mgs_poly.f90"
end

