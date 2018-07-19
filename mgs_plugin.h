!******************************************************************************
!*           Material model plugin for Elmer's MagnetoStriction.f90           *
!*                                                                            *
!*                 This file is part of 'elmer-mgs-galfenol'                  *
!******************************************************************************

!***************************************************
! This file is manually implemented, do not delete!
!***************************************************

! Adaptor for Elmer. This is the interface expected by MagnetoStriction.f90.
!
! Here e actually denotes the Cauchy strain ε.

interface
  subroutine mgs_H(B1, B2, B3, e11, e12, e13, e21, e22, e23, e31, e32, e33, h)
    implicit none
    real*8, intent(in) :: B1, B2, B3, e11, e12, e13, e21, e22, e23, e31, e32, e33
    real*8, intent(out), dimension(1:3, 1:1) :: h
  end subroutine

  subroutine mgs_dHdB(B1, B2, B3, e11, e12, e13, e21, e22, e23, e31, e32, e33, dhdb)
    implicit none
    real*8, intent(in) :: B1, B2, B3, e11, e12, e13, e21, e22, e23, e31, e32, e33
    real*8, intent(out), dimension(1:3, 1:3) :: dhdb
  end subroutine

  subroutine mgs_S(B1, B2, B3, young, e11, e12, e13, e21, e22, e23, e31, e32, e33, poisson, sigma)
    implicit none
    real*8, intent(in) :: B1, B2, B3, young, e11, e12, e13, e21, e22, e23, e31, e32, e33, poisson
    real*8, intent(out), dimension(1:3, 1:3) :: sigma
  end subroutine

  subroutine mgs_dSde(B1, B2, B3, young, e11, e12, e13, e21, e22, e23, e31, e32, e33, poisson, dsde)
    implicit none
    real*8, intent(in) :: B1, B2, B3, e11, e12, e13, e21, e22, e23, e31, e32, e33, young, poisson
    real*8, intent(out), dimension(1:9, 1:9) :: dsde
  end subroutine
end interface

