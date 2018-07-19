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
!
! This version uses the global polynomial model, mgs_poly.f90.

! MagnetoStriction.f90 supplies (E, ν), whereas we need Lamé's (λ, µ).
! https://en.wikipedia.org/wiki/Lam%C3%A9_parameters

subroutine mgs_H(B1, B2, B3, e11, e12, e13, e21, e22, e23, e31, e32, e33, h)
  implicit none
  real*8, intent(in) :: B1, B2, B3, e11, e12, e13, e21, e22, e23, e31, e32, e33
  real*8, intent(out), dimension(1:3, 1:1) :: h
  ! TODO: alp1, ..., alp5, bet1, gam1
  call H_public(B1, B2, B3, alp1, alp2, alp3, alp4, alp5, bet1, &
                e11, e12, e22, e23, e13, e33, gam1, h)
end subroutine

subroutine mgs_dHdB(B1, B2, B3, e11, e12, e13, e21, e22, e23, e31, e32, e33, dhdb)
  implicit none
  real*8, intent(in) :: B1, B2, B3, e11, e12, e13, e21, e22, e23, e31, e32, e33
  real*8, intent(out), dimension(1:3, 1:3) :: dhdb
  ! TODO: alp1, ..., alp5, bet1, gam1
  call dH_dB_public(B1, B2, B3, alp1, alp2, alp3, alp4, alp5, bet1, &
                    e11, e12, e22, e23, e13, e33, gam1, dhdb)
end subroutine

subroutine mgs_S(B1, B2, B3, young, e11, e12, e13, e21, e22, e23, e31, e32, e33, poisson, sigma)
  implicit none
  real*8, intent(in) :: B1, B2, B3, young, e11, e12, e13, e21, e22, e23, e31, e32, e33, poisson
  real*8, intent(out), dimension(1:3, 1:3) :: sigma
  real*8 lam
  real*8 mu
  ! TODO: bet1, gam1
  lam = (young * poisson) / ((1.0D0 + poisson) * (1.0D0 - 2.0D0 * poisson))
  mu  = young / (2.0D0 * (1.0D0 + poisson))
  call S_public(B1, B2, B3, bet1, e11, e12, e22, e23, e13, e33, gam1, lam, mu, sigma)
end subroutine

subroutine mgs_dSde(B1, B2, B3, young, e11, e12, e13, e21, e22, e23, e31, e32, e33, poisson, dsde)
  implicit none
  real*8, intent(in) :: B1, B2, B3, e11, e12, e13, e21, e22, e23, e31, e32, e33, young, poisson
  real*8, intent(out), dimension(1:9, 1:9) :: dsde
  real*8 lam
  real*8 mu
  ! TODO: gam1
  lam = (young * poisson) / ((1.0D0 + poisson) * (1.0D0 - 2.0D0 * poisson))
  mu  = young / (2.0D0 * (1.0D0 + poisson))
  call dS_deps_public(B1, B2, B3, gam1, lam, mu, dsde)
end subroutine

