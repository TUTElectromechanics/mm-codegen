!******************************************************************************
!*           Material model plugin for Elmer's MagnetoStriction.f90           *
!*                                                                            *
!*                 This file is part of 'elmer-mgs-galfenol'                  *
!******************************************************************************

!***************************************************
! This file is manually implemented, do not delete!
!***************************************************

! Do not compact the format of the intent declarations. The rudimentary parser
! in the stage2 code generator only understands this one-item-per-line format.
! (This format is also produced by SymPy.)
!
! This file contains essentially additional, user-defined stage1 functions
! and subroutines.
!
! The potential ϕ, 3-parameter model.

interface
PURE REAL*8 function phi(u, v, w,
                         young_E, poisson_nu)
implicit none
REAL*8, intent(in) :: u
REAL*8, intent(in) :: v
REAL*8, intent(in) :: w
REAL*8, intent(in) :: young_E
REAL*8, intent(in) :: poisson_nu
end function
end interface

