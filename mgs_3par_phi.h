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
pure REAL(KIND=dp) function phi(u, v, w,
                         young_E, poisson_nu)
use types
implicit none
REAL(KIND=dp), intent(in) :: u
REAL(KIND=dp), intent(in) :: v
REAL(KIND=dp), intent(in) :: w
REAL(KIND=dp), intent(in) :: young_E
REAL(KIND=dp), intent(in) :: poisson_nu
end function
end interface

interface
pure REAL(KIND=dp) function dphi_du(u, v, w,
                             young_E, poisson_nu)
use types
implicit none
REAL(KIND=dp), intent(in) :: u
REAL(KIND=dp), intent(in) :: v
REAL(KIND=dp), intent(in) :: w
REAL(KIND=dp), intent(in) :: young_E
REAL(KIND=dp), intent(in) :: poisson_nu
end function
end interface

interface
pure REAL(KIND=dp) function dphi_dv(u, v, w,
                             young_E, poisson_nu)
use types
implicit none
REAL(KIND=dp), intent(in) :: u
REAL(KIND=dp), intent(in) :: v
REAL(KIND=dp), intent(in) :: w
REAL(KIND=dp), intent(in) :: young_E
REAL(KIND=dp), intent(in) :: poisson_nu
end function
end interface

interface
pure REAL(KIND=dp) function dphi_dw(u, v, w,
                             young_E, poisson_nu)
use types
implicit none
REAL(KIND=dp), intent(in) :: u
REAL(KIND=dp), intent(in) :: v
REAL(KIND=dp), intent(in) :: w
REAL(KIND=dp), intent(in) :: young_E
REAL(KIND=dp), intent(in) :: poisson_nu
end function
end interface

interface
pure REAL(KIND=dp) function d2phi_du2(u, v, w,
                               young_E, poisson_nu)
use types
implicit none
REAL(KIND=dp), intent(in) :: u
REAL(KIND=dp), intent(in) :: v
REAL(KIND=dp), intent(in) :: w
REAL(KIND=dp), intent(in) :: young_E
REAL(KIND=dp), intent(in) :: poisson_nu
end function
end interface

interface
pure REAL(KIND=dp) function d2phi_dv2(u, v, w,
                               young_E, poisson_nu)
use types
implicit none
REAL(KIND=dp), intent(in) :: u
REAL(KIND=dp), intent(in) :: v
REAL(KIND=dp), intent(in) :: w
REAL(KIND=dp), intent(in) :: young_E
REAL(KIND=dp), intent(in) :: poisson_nu
end function
end interface

interface
pure REAL(KIND=dp) function d2phi_dw2(u, v, w,
                               young_E, poisson_nu)
use types
implicit none
REAL(KIND=dp), intent(in) :: u
REAL(KIND=dp), intent(in) :: v
REAL(KIND=dp), intent(in) :: w
REAL(KIND=dp), intent(in) :: young_E
REAL(KIND=dp), intent(in) :: poisson_nu
end function
end interface

interface
pure REAL(KIND=dp) function d2phi_dudv(u, v, w,
                                young_E, poisson_nu)
use types
implicit none
REAL(KIND=dp), intent(in) :: u
REAL(KIND=dp), intent(in) :: v
REAL(KIND=dp), intent(in) :: w
REAL(KIND=dp), intent(in) :: young_E
REAL(KIND=dp), intent(in) :: poisson_nu
end function
end interface

interface
pure REAL(KIND=dp) function d2phi_dvdw(u, v, w,
                                young_E, poisson_nu)
use types
implicit none
REAL(KIND=dp), intent(in) :: u
REAL(KIND=dp), intent(in) :: v
REAL(KIND=dp), intent(in) :: w
REAL(KIND=dp), intent(in) :: young_E
REAL(KIND=dp), intent(in) :: poisson_nu
end function
end interface

interface
pure REAL(KIND=dp) function d2phi_dudw(u, v, w,
                                young_E, poisson_nu)
use types
implicit none
REAL(KIND=dp), intent(in) :: u
REAL(KIND=dp), intent(in) :: v
REAL(KIND=dp), intent(in) :: w
REAL(KIND=dp), intent(in) :: young_E
REAL(KIND=dp), intent(in) :: poisson_nu
end function
end interface

