!******************************************************************************
!*              Code generated with mgs-galfenol-codegen stage2               *
!*                                                                            *
!* See https://github.com/TUTElectromechanics/mm-codegen for more information *
!*                                                                            *
!*                 This file is part of 'elmer-mgs-galfenol'                  *
!******************************************************************************

interface
REAL*8 function dexx_depsxx_public()
implicit none
end function
end interface

interface
REAL*8 function dexx_depsyy_public()
implicit none
end function
end interface

interface
REAL*8 function dexx_depszz_public()
implicit none
end function
end interface

interface
REAL*8 function dexy_depsxy_public()
implicit none
end function
end interface

interface
REAL*8 function deyy_depsxx_public()
implicit none
end function
end interface

interface
REAL*8 function deyy_depsyy_public()
implicit none
end function
end interface

interface
REAL*8 function deyy_depszz_public()
implicit none
end function
end interface

interface
REAL*8 function deyz_depsyz_public()
implicit none
end function
end interface

interface
REAL*8 function dezx_depszx_public()
implicit none
end function
end interface

interface
REAL*8 function dezz_depsxx_public()
implicit none
end function
end interface

interface
REAL*8 function dezz_depsyy_public()
implicit none
end function
end interface

interface
REAL*8 function dezz_depszz_public()
implicit none
end function
end interface

interface
REAL*8 function dI4_dBx_public(Bx)
implicit none
REAL*8, intent(in) :: Bx
end function
end interface

interface
REAL*8 function d2I4_dBx2_public()
implicit none
end function
end interface

interface
REAL*8 function dI4_dBy_public(By)
implicit none
REAL*8, intent(in) :: By
end function
end interface

interface
REAL*8 function d2I4_dBy2_public()
implicit none
end function
end interface

interface
REAL*8 function dI4_dBz_public(Bz)
implicit none
REAL*8, intent(in) :: Bz
end function
end interface

interface
REAL*8 function d2I4_dBz2_public()
implicit none
end function
end interface

interface
REAL*8 function dI5_dBx_public(Bx, By, Bz, epsxx, epsxy, epsyy, epszx, &
      epszz)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: By
REAL*8, intent(in) :: Bz
REAL*8, intent(in) :: epsxx
REAL*8, intent(in) :: epsxy
REAL*8, intent(in) :: epsyy
REAL*8, intent(in) :: epszx
REAL*8, intent(in) :: epszz
end function
end interface

interface
REAL*8 function d2I5_dBx2_public(epsxx, epsyy, epszz)
implicit none
REAL*8, intent(in) :: epsxx
REAL*8, intent(in) :: epsyy
REAL*8, intent(in) :: epszz
end function
end interface

interface
REAL*8 function d2I5_dBxdBy_public(epsxy)
implicit none
REAL*8, intent(in) :: epsxy
end function
end interface

interface
REAL*8 function d2I5_dBxdBz_public(epszx)
implicit none
REAL*8, intent(in) :: epszx
end function
end interface

interface
REAL*8 function dI5_dBy_public(Bx, By, Bz, epsxx, epsxy, epsyy, epsyz, &
      epszz)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: By
REAL*8, intent(in) :: Bz
REAL*8, intent(in) :: epsxx
REAL*8, intent(in) :: epsxy
REAL*8, intent(in) :: epsyy
REAL*8, intent(in) :: epsyz
REAL*8, intent(in) :: epszz
end function
end interface

interface
REAL*8 function d2I5_dBy2_public(epsxx, epsyy, epszz)
implicit none
REAL*8, intent(in) :: epsxx
REAL*8, intent(in) :: epsyy
REAL*8, intent(in) :: epszz
end function
end interface

interface
REAL*8 function d2I5_dBydBz_public(epsyz)
implicit none
REAL*8, intent(in) :: epsyz
end function
end interface

interface
REAL*8 function dI5_dBz_public(Bx, By, Bz, epsxx, epsyy, epsyz, epszx, &
      epszz)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: By
REAL*8, intent(in) :: Bz
REAL*8, intent(in) :: epsxx
REAL*8, intent(in) :: epsyy
REAL*8, intent(in) :: epsyz
REAL*8, intent(in) :: epszx
REAL*8, intent(in) :: epszz
end function
end interface

interface
REAL*8 function d2I5_dBz2_public(epsxx, epsyy, epszz)
implicit none
REAL*8, intent(in) :: epsxx
REAL*8, intent(in) :: epsyy
REAL*8, intent(in) :: epszz
end function
end interface

interface
REAL*8 function dI5_dexx_public(Bx)
implicit none
REAL*8, intent(in) :: Bx
end function
end interface

interface
REAL*8 function d2I5_dBxdexx_public(Bx)
implicit none
REAL*8, intent(in) :: Bx
end function
end interface

interface
REAL*8 function dI5_dexy_public(Bx, By)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: By
end function
end interface

interface
REAL*8 function d2I5_dBxdexy_public(By)
implicit none
REAL*8, intent(in) :: By
end function
end interface

interface
REAL*8 function d2I5_dBydexy_public(Bx)
implicit none
REAL*8, intent(in) :: Bx
end function
end interface

interface
REAL*8 function dI5_deyy_public(By)
implicit none
REAL*8, intent(in) :: By
end function
end interface

interface
REAL*8 function d2I5_dBydeyy_public(By)
implicit none
REAL*8, intent(in) :: By
end function
end interface

interface
REAL*8 function dI5_deyz_public(By, Bz)
implicit none
REAL*8, intent(in) :: By
REAL*8, intent(in) :: Bz
end function
end interface

interface
REAL*8 function d2I5_dBydeyz_public(Bz)
implicit none
REAL*8, intent(in) :: Bz
end function
end interface

interface
REAL*8 function d2I5_dBzdeyz_public(By)
implicit none
REAL*8, intent(in) :: By
end function
end interface

interface
REAL*8 function dI5_dezx_public(Bx, Bz)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: Bz
end function
end interface

interface
REAL*8 function d2I5_dBxdezx_public(Bz)
implicit none
REAL*8, intent(in) :: Bz
end function
end interface

interface
REAL*8 function d2I5_dBzdezx_public(Bx)
implicit none
REAL*8, intent(in) :: Bx
end function
end interface

interface
REAL*8 function dI5_dezz_public(Bz)
implicit none
REAL*8, intent(in) :: Bz
end function
end interface

interface
REAL*8 function d2I5_dBzdezz_public(Bz)
implicit none
REAL*8, intent(in) :: Bz
end function
end interface

interface
REAL*8 function du_dup_public(u0)
implicit none
REAL*8, intent(in) :: u0
end function
end interface

interface
REAL*8 function dup_dI4_public(Bx, By, Bz)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: By
REAL*8, intent(in) :: Bz
end function
end interface

interface
REAL*8 function d2up_dI42_public(Bx, By, Bz)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: By
REAL*8, intent(in) :: Bz
end function
end interface

interface
REAL*8 function dv_dvp_public(v0)
implicit none
REAL*8, intent(in) :: v0
end function
end interface

interface
REAL*8 function dvp_dI4_public(Bx, By, Bz, epsxx, epsxy, epsyy, epsyz, &
      epszx, epszz)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: By
REAL*8, intent(in) :: Bz
REAL*8, intent(in) :: epsxx
REAL*8, intent(in) :: epsxy
REAL*8, intent(in) :: epsyy
REAL*8, intent(in) :: epsyz
REAL*8, intent(in) :: epszx
REAL*8, intent(in) :: epszz
end function
end interface

interface
REAL*8 function d2vp_dI42_public(Bx, By, Bz, epsxx, epsxy, epsyy, epsyz, &
      epszx, epszz)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: By
REAL*8, intent(in) :: Bz
REAL*8, intent(in) :: epsxx
REAL*8, intent(in) :: epsxy
REAL*8, intent(in) :: epsyy
REAL*8, intent(in) :: epsyz
REAL*8, intent(in) :: epszx
REAL*8, intent(in) :: epszz
end function
end interface

interface
REAL*8 function dvp_dI5_public(Bx, By, Bz)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: By
REAL*8, intent(in) :: Bz
end function
end interface

interface
REAL*8 function d2vp_dI4dI5_public(Bx, By, Bz)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: By
REAL*8, intent(in) :: Bz
end function
end interface

interface
REAL*8 function dphi_dBx_public(Bx, By, Bz, epsxx, epsxy, epsyy, epsyz, &
      epszx, epszz, poisson_nu, u0, v0, young_E)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: By
REAL*8, intent(in) :: Bz
REAL*8, intent(in) :: epsxx
REAL*8, intent(in) :: epsxy
REAL*8, intent(in) :: epsyy
REAL*8, intent(in) :: epsyz
REAL*8, intent(in) :: epszx
REAL*8, intent(in) :: epszz
REAL*8, intent(in) :: poisson_nu
REAL*8, intent(in) :: u0
REAL*8, intent(in) :: v0
REAL*8, intent(in) :: young_E
end function
end interface

interface
REAL*8 function d2phi_dBx2_public(Bx, By, Bz, epsxx, epsxy, epsyy, epsyz, &
      epszx, epszz, poisson_nu, u0, v0, young_E)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: By
REAL*8, intent(in) :: Bz
REAL*8, intent(in) :: epsxx
REAL*8, intent(in) :: epsxy
REAL*8, intent(in) :: epsyy
REAL*8, intent(in) :: epsyz
REAL*8, intent(in) :: epszx
REAL*8, intent(in) :: epszz
REAL*8, intent(in) :: poisson_nu
REAL*8, intent(in) :: u0
REAL*8, intent(in) :: v0
REAL*8, intent(in) :: young_E
end function
end interface

interface
REAL*8 function d2phi_dBxdBy_public(Bx, By, Bz, epsxx, epsxy, epsyy, epsyz, &
      epszx, epszz, poisson_nu, u0, v0, young_E)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: By
REAL*8, intent(in) :: Bz
REAL*8, intent(in) :: epsxx
REAL*8, intent(in) :: epsxy
REAL*8, intent(in) :: epsyy
REAL*8, intent(in) :: epsyz
REAL*8, intent(in) :: epszx
REAL*8, intent(in) :: epszz
REAL*8, intent(in) :: poisson_nu
REAL*8, intent(in) :: u0
REAL*8, intent(in) :: v0
REAL*8, intent(in) :: young_E
end function
end interface

interface
REAL*8 function d2phi_dBxdBz_public(Bx, By, Bz, epsxx, epsxy, epsyy, epsyz, &
      epszx, epszz, poisson_nu, u0, v0, young_E)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: By
REAL*8, intent(in) :: Bz
REAL*8, intent(in) :: epsxx
REAL*8, intent(in) :: epsxy
REAL*8, intent(in) :: epsyy
REAL*8, intent(in) :: epsyz
REAL*8, intent(in) :: epszx
REAL*8, intent(in) :: epszz
REAL*8, intent(in) :: poisson_nu
REAL*8, intent(in) :: u0
REAL*8, intent(in) :: v0
REAL*8, intent(in) :: young_E
end function
end interface

interface
REAL*8 function d2phi_dBxdepsxx_public(Bx, By, Bz, epsxx, epsxy, epsyy, &
      epsyz, epszx, epszz, poisson_nu, u0, v0, young_E)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: By
REAL*8, intent(in) :: Bz
REAL*8, intent(in) :: epsxx
REAL*8, intent(in) :: epsxy
REAL*8, intent(in) :: epsyy
REAL*8, intent(in) :: epsyz
REAL*8, intent(in) :: epszx
REAL*8, intent(in) :: epszz
REAL*8, intent(in) :: poisson_nu
REAL*8, intent(in) :: u0
REAL*8, intent(in) :: v0
REAL*8, intent(in) :: young_E
end function
end interface

interface
REAL*8 function d2phi_dBxdepsxy_public(Bx, By, Bz, epsxx, epsxy, epsyy, &
      epsyz, epszx, epszz, poisson_nu, u0, v0, young_E)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: By
REAL*8, intent(in) :: Bz
REAL*8, intent(in) :: epsxx
REAL*8, intent(in) :: epsxy
REAL*8, intent(in) :: epsyy
REAL*8, intent(in) :: epsyz
REAL*8, intent(in) :: epszx
REAL*8, intent(in) :: epszz
REAL*8, intent(in) :: poisson_nu
REAL*8, intent(in) :: u0
REAL*8, intent(in) :: v0
REAL*8, intent(in) :: young_E
end function
end interface

interface
REAL*8 function d2phi_dBxdepsyy_public(Bx, By, Bz, epsxx, epsxy, epsyy, &
      epsyz, epszx, epszz, poisson_nu, u0, v0, young_E)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: By
REAL*8, intent(in) :: Bz
REAL*8, intent(in) :: epsxx
REAL*8, intent(in) :: epsxy
REAL*8, intent(in) :: epsyy
REAL*8, intent(in) :: epsyz
REAL*8, intent(in) :: epszx
REAL*8, intent(in) :: epszz
REAL*8, intent(in) :: poisson_nu
REAL*8, intent(in) :: u0
REAL*8, intent(in) :: v0
REAL*8, intent(in) :: young_E
end function
end interface

interface
REAL*8 function d2phi_dBxdepsyz_public(Bx, By, Bz, epsxx, epsxy, epsyy, &
      epsyz, epszx, epszz, poisson_nu, u0, v0, young_E)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: By
REAL*8, intent(in) :: Bz
REAL*8, intent(in) :: epsxx
REAL*8, intent(in) :: epsxy
REAL*8, intent(in) :: epsyy
REAL*8, intent(in) :: epsyz
REAL*8, intent(in) :: epszx
REAL*8, intent(in) :: epszz
REAL*8, intent(in) :: poisson_nu
REAL*8, intent(in) :: u0
REAL*8, intent(in) :: v0
REAL*8, intent(in) :: young_E
end function
end interface

interface
REAL*8 function d2phi_dBxdepszx_public(Bx, By, Bz, epsxx, epsxy, epsyy, &
      epsyz, epszx, epszz, poisson_nu, u0, v0, young_E)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: By
REAL*8, intent(in) :: Bz
REAL*8, intent(in) :: epsxx
REAL*8, intent(in) :: epsxy
REAL*8, intent(in) :: epsyy
REAL*8, intent(in) :: epsyz
REAL*8, intent(in) :: epszx
REAL*8, intent(in) :: epszz
REAL*8, intent(in) :: poisson_nu
REAL*8, intent(in) :: u0
REAL*8, intent(in) :: v0
REAL*8, intent(in) :: young_E
end function
end interface

interface
REAL*8 function d2phi_dBxdepszz_public(Bx, By, Bz, epsxx, epsxy, epsyy, &
      epsyz, epszx, epszz, poisson_nu, u0, v0, young_E)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: By
REAL*8, intent(in) :: Bz
REAL*8, intent(in) :: epsxx
REAL*8, intent(in) :: epsxy
REAL*8, intent(in) :: epsyy
REAL*8, intent(in) :: epsyz
REAL*8, intent(in) :: epszx
REAL*8, intent(in) :: epszz
REAL*8, intent(in) :: poisson_nu
REAL*8, intent(in) :: u0
REAL*8, intent(in) :: v0
REAL*8, intent(in) :: young_E
end function
end interface

interface
REAL*8 function dphi_dBy_public(Bx, By, Bz, epsxx, epsxy, epsyy, epsyz, &
      epszx, epszz, poisson_nu, u0, v0, young_E)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: By
REAL*8, intent(in) :: Bz
REAL*8, intent(in) :: epsxx
REAL*8, intent(in) :: epsxy
REAL*8, intent(in) :: epsyy
REAL*8, intent(in) :: epsyz
REAL*8, intent(in) :: epszx
REAL*8, intent(in) :: epszz
REAL*8, intent(in) :: poisson_nu
REAL*8, intent(in) :: u0
REAL*8, intent(in) :: v0
REAL*8, intent(in) :: young_E
end function
end interface

interface
REAL*8 function d2phi_dBy2_public(Bx, By, Bz, epsxx, epsxy, epsyy, epsyz, &
      epszx, epszz, poisson_nu, u0, v0, young_E)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: By
REAL*8, intent(in) :: Bz
REAL*8, intent(in) :: epsxx
REAL*8, intent(in) :: epsxy
REAL*8, intent(in) :: epsyy
REAL*8, intent(in) :: epsyz
REAL*8, intent(in) :: epszx
REAL*8, intent(in) :: epszz
REAL*8, intent(in) :: poisson_nu
REAL*8, intent(in) :: u0
REAL*8, intent(in) :: v0
REAL*8, intent(in) :: young_E
end function
end interface

interface
REAL*8 function d2phi_dBydBz_public(Bx, By, Bz, epsxx, epsxy, epsyy, epsyz, &
      epszx, epszz, poisson_nu, u0, v0, young_E)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: By
REAL*8, intent(in) :: Bz
REAL*8, intent(in) :: epsxx
REAL*8, intent(in) :: epsxy
REAL*8, intent(in) :: epsyy
REAL*8, intent(in) :: epsyz
REAL*8, intent(in) :: epszx
REAL*8, intent(in) :: epszz
REAL*8, intent(in) :: poisson_nu
REAL*8, intent(in) :: u0
REAL*8, intent(in) :: v0
REAL*8, intent(in) :: young_E
end function
end interface

interface
REAL*8 function d2phi_dBydepsxx_public(Bx, By, Bz, epsxx, epsxy, epsyy, &
      epsyz, epszx, epszz, poisson_nu, u0, v0, young_E)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: By
REAL*8, intent(in) :: Bz
REAL*8, intent(in) :: epsxx
REAL*8, intent(in) :: epsxy
REAL*8, intent(in) :: epsyy
REAL*8, intent(in) :: epsyz
REAL*8, intent(in) :: epszx
REAL*8, intent(in) :: epszz
REAL*8, intent(in) :: poisson_nu
REAL*8, intent(in) :: u0
REAL*8, intent(in) :: v0
REAL*8, intent(in) :: young_E
end function
end interface

interface
REAL*8 function d2phi_dBydepsxy_public(Bx, By, Bz, epsxx, epsxy, epsyy, &
      epsyz, epszx, epszz, poisson_nu, u0, v0, young_E)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: By
REAL*8, intent(in) :: Bz
REAL*8, intent(in) :: epsxx
REAL*8, intent(in) :: epsxy
REAL*8, intent(in) :: epsyy
REAL*8, intent(in) :: epsyz
REAL*8, intent(in) :: epszx
REAL*8, intent(in) :: epszz
REAL*8, intent(in) :: poisson_nu
REAL*8, intent(in) :: u0
REAL*8, intent(in) :: v0
REAL*8, intent(in) :: young_E
end function
end interface

interface
REAL*8 function d2phi_dBydepsyy_public(Bx, By, Bz, epsxx, epsxy, epsyy, &
      epsyz, epszx, epszz, poisson_nu, u0, v0, young_E)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: By
REAL*8, intent(in) :: Bz
REAL*8, intent(in) :: epsxx
REAL*8, intent(in) :: epsxy
REAL*8, intent(in) :: epsyy
REAL*8, intent(in) :: epsyz
REAL*8, intent(in) :: epszx
REAL*8, intent(in) :: epszz
REAL*8, intent(in) :: poisson_nu
REAL*8, intent(in) :: u0
REAL*8, intent(in) :: v0
REAL*8, intent(in) :: young_E
end function
end interface

interface
REAL*8 function d2phi_dBydepsyz_public(Bx, By, Bz, epsxx, epsxy, epsyy, &
      epsyz, epszx, epszz, poisson_nu, u0, v0, young_E)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: By
REAL*8, intent(in) :: Bz
REAL*8, intent(in) :: epsxx
REAL*8, intent(in) :: epsxy
REAL*8, intent(in) :: epsyy
REAL*8, intent(in) :: epsyz
REAL*8, intent(in) :: epszx
REAL*8, intent(in) :: epszz
REAL*8, intent(in) :: poisson_nu
REAL*8, intent(in) :: u0
REAL*8, intent(in) :: v0
REAL*8, intent(in) :: young_E
end function
end interface

interface
REAL*8 function d2phi_dBydepszx_public(Bx, By, Bz, epsxx, epsxy, epsyy, &
      epsyz, epszx, epszz, poisson_nu, u0, v0, young_E)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: By
REAL*8, intent(in) :: Bz
REAL*8, intent(in) :: epsxx
REAL*8, intent(in) :: epsxy
REAL*8, intent(in) :: epsyy
REAL*8, intent(in) :: epsyz
REAL*8, intent(in) :: epszx
REAL*8, intent(in) :: epszz
REAL*8, intent(in) :: poisson_nu
REAL*8, intent(in) :: u0
REAL*8, intent(in) :: v0
REAL*8, intent(in) :: young_E
end function
end interface

interface
REAL*8 function d2phi_dBydepszz_public(Bx, By, Bz, epsxx, epsxy, epsyy, &
      epsyz, epszx, epszz, poisson_nu, u0, v0, young_E)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: By
REAL*8, intent(in) :: Bz
REAL*8, intent(in) :: epsxx
REAL*8, intent(in) :: epsxy
REAL*8, intent(in) :: epsyy
REAL*8, intent(in) :: epsyz
REAL*8, intent(in) :: epszx
REAL*8, intent(in) :: epszz
REAL*8, intent(in) :: poisson_nu
REAL*8, intent(in) :: u0
REAL*8, intent(in) :: v0
REAL*8, intent(in) :: young_E
end function
end interface

interface
REAL*8 function dphi_dBz_public(Bx, By, Bz, epsxx, epsxy, epsyy, epsyz, &
      epszx, epszz, poisson_nu, u0, v0, young_E)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: By
REAL*8, intent(in) :: Bz
REAL*8, intent(in) :: epsxx
REAL*8, intent(in) :: epsxy
REAL*8, intent(in) :: epsyy
REAL*8, intent(in) :: epsyz
REAL*8, intent(in) :: epszx
REAL*8, intent(in) :: epszz
REAL*8, intent(in) :: poisson_nu
REAL*8, intent(in) :: u0
REAL*8, intent(in) :: v0
REAL*8, intent(in) :: young_E
end function
end interface

interface
REAL*8 function d2phi_dBz2_public(Bx, By, Bz, epsxx, epsxy, epsyy, epsyz, &
      epszx, epszz, poisson_nu, u0, v0, young_E)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: By
REAL*8, intent(in) :: Bz
REAL*8, intent(in) :: epsxx
REAL*8, intent(in) :: epsxy
REAL*8, intent(in) :: epsyy
REAL*8, intent(in) :: epsyz
REAL*8, intent(in) :: epszx
REAL*8, intent(in) :: epszz
REAL*8, intent(in) :: poisson_nu
REAL*8, intent(in) :: u0
REAL*8, intent(in) :: v0
REAL*8, intent(in) :: young_E
end function
end interface

interface
REAL*8 function d2phi_dBzdepsxx_public(Bx, By, Bz, epsxx, epsxy, epsyy, &
      epsyz, epszx, epszz, poisson_nu, u0, v0, young_E)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: By
REAL*8, intent(in) :: Bz
REAL*8, intent(in) :: epsxx
REAL*8, intent(in) :: epsxy
REAL*8, intent(in) :: epsyy
REAL*8, intent(in) :: epsyz
REAL*8, intent(in) :: epszx
REAL*8, intent(in) :: epszz
REAL*8, intent(in) :: poisson_nu
REAL*8, intent(in) :: u0
REAL*8, intent(in) :: v0
REAL*8, intent(in) :: young_E
end function
end interface

interface
REAL*8 function d2phi_dBzdepsxy_public(Bx, By, Bz, epsxx, epsxy, epsyy, &
      epsyz, epszx, epszz, poisson_nu, u0, v0, young_E)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: By
REAL*8, intent(in) :: Bz
REAL*8, intent(in) :: epsxx
REAL*8, intent(in) :: epsxy
REAL*8, intent(in) :: epsyy
REAL*8, intent(in) :: epsyz
REAL*8, intent(in) :: epszx
REAL*8, intent(in) :: epszz
REAL*8, intent(in) :: poisson_nu
REAL*8, intent(in) :: u0
REAL*8, intent(in) :: v0
REAL*8, intent(in) :: young_E
end function
end interface

interface
REAL*8 function d2phi_dBzdepsyy_public(Bx, By, Bz, epsxx, epsxy, epsyy, &
      epsyz, epszx, epszz, poisson_nu, u0, v0, young_E)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: By
REAL*8, intent(in) :: Bz
REAL*8, intent(in) :: epsxx
REAL*8, intent(in) :: epsxy
REAL*8, intent(in) :: epsyy
REAL*8, intent(in) :: epsyz
REAL*8, intent(in) :: epszx
REAL*8, intent(in) :: epszz
REAL*8, intent(in) :: poisson_nu
REAL*8, intent(in) :: u0
REAL*8, intent(in) :: v0
REAL*8, intent(in) :: young_E
end function
end interface

interface
REAL*8 function d2phi_dBzdepsyz_public(Bx, By, Bz, epsxx, epsxy, epsyy, &
      epsyz, epszx, epszz, poisson_nu, u0, v0, young_E)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: By
REAL*8, intent(in) :: Bz
REAL*8, intent(in) :: epsxx
REAL*8, intent(in) :: epsxy
REAL*8, intent(in) :: epsyy
REAL*8, intent(in) :: epsyz
REAL*8, intent(in) :: epszx
REAL*8, intent(in) :: epszz
REAL*8, intent(in) :: poisson_nu
REAL*8, intent(in) :: u0
REAL*8, intent(in) :: v0
REAL*8, intent(in) :: young_E
end function
end interface

interface
REAL*8 function d2phi_dBzdepszx_public(Bx, By, Bz, epsxx, epsxy, epsyy, &
      epsyz, epszx, epszz, poisson_nu, u0, v0, young_E)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: By
REAL*8, intent(in) :: Bz
REAL*8, intent(in) :: epsxx
REAL*8, intent(in) :: epsxy
REAL*8, intent(in) :: epsyy
REAL*8, intent(in) :: epsyz
REAL*8, intent(in) :: epszx
REAL*8, intent(in) :: epszz
REAL*8, intent(in) :: poisson_nu
REAL*8, intent(in) :: u0
REAL*8, intent(in) :: v0
REAL*8, intent(in) :: young_E
end function
end interface

interface
REAL*8 function d2phi_dBzdepszz_public(Bx, By, Bz, epsxx, epsxy, epsyy, &
      epsyz, epszx, epszz, poisson_nu, u0, v0, young_E)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: By
REAL*8, intent(in) :: Bz
REAL*8, intent(in) :: epsxx
REAL*8, intent(in) :: epsxy
REAL*8, intent(in) :: epsyy
REAL*8, intent(in) :: epsyz
REAL*8, intent(in) :: epszx
REAL*8, intent(in) :: epszz
REAL*8, intent(in) :: poisson_nu
REAL*8, intent(in) :: u0
REAL*8, intent(in) :: v0
REAL*8, intent(in) :: young_E
end function
end interface

interface
REAL*8 function dphi_depsxx_public(Bx, By, Bz, epsxx, epsxy, epsyy, epsyz, &
      epszx, epszz, poisson_nu, u0, v0, young_E)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: By
REAL*8, intent(in) :: Bz
REAL*8, intent(in) :: epsxx
REAL*8, intent(in) :: epsxy
REAL*8, intent(in) :: epsyy
REAL*8, intent(in) :: epsyz
REAL*8, intent(in) :: epszx
REAL*8, intent(in) :: epszz
REAL*8, intent(in) :: poisson_nu
REAL*8, intent(in) :: u0
REAL*8, intent(in) :: v0
REAL*8, intent(in) :: young_E
end function
end interface

interface
REAL*8 function d2phi_depsxx2_public(Bx, By, Bz, epsxx, epsxy, epsyy, epsyz, &
      epszx, epszz, poisson_nu, u0, v0, young_E)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: By
REAL*8, intent(in) :: Bz
REAL*8, intent(in) :: epsxx
REAL*8, intent(in) :: epsxy
REAL*8, intent(in) :: epsyy
REAL*8, intent(in) :: epsyz
REAL*8, intent(in) :: epszx
REAL*8, intent(in) :: epszz
REAL*8, intent(in) :: poisson_nu
REAL*8, intent(in) :: u0
REAL*8, intent(in) :: v0
REAL*8, intent(in) :: young_E
end function
end interface

interface
REAL*8 function d2phi_depsxxdepsxy_public(Bx, By, Bz, epsxx, epsxy, epsyy, &
      epsyz, epszx, epszz, poisson_nu, u0, v0, young_E)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: By
REAL*8, intent(in) :: Bz
REAL*8, intent(in) :: epsxx
REAL*8, intent(in) :: epsxy
REAL*8, intent(in) :: epsyy
REAL*8, intent(in) :: epsyz
REAL*8, intent(in) :: epszx
REAL*8, intent(in) :: epszz
REAL*8, intent(in) :: poisson_nu
REAL*8, intent(in) :: u0
REAL*8, intent(in) :: v0
REAL*8, intent(in) :: young_E
end function
end interface

interface
REAL*8 function d2phi_depsxxdepsyy_public(Bx, By, Bz, epsxx, epsxy, epsyy, &
      epsyz, epszx, epszz, poisson_nu, u0, v0, young_E)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: By
REAL*8, intent(in) :: Bz
REAL*8, intent(in) :: epsxx
REAL*8, intent(in) :: epsxy
REAL*8, intent(in) :: epsyy
REAL*8, intent(in) :: epsyz
REAL*8, intent(in) :: epszx
REAL*8, intent(in) :: epszz
REAL*8, intent(in) :: poisson_nu
REAL*8, intent(in) :: u0
REAL*8, intent(in) :: v0
REAL*8, intent(in) :: young_E
end function
end interface

interface
REAL*8 function d2phi_depsxxdepsyz_public(Bx, By, Bz, epsxx, epsxy, epsyy, &
      epsyz, epszx, epszz, poisson_nu, u0, v0, young_E)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: By
REAL*8, intent(in) :: Bz
REAL*8, intent(in) :: epsxx
REAL*8, intent(in) :: epsxy
REAL*8, intent(in) :: epsyy
REAL*8, intent(in) :: epsyz
REAL*8, intent(in) :: epszx
REAL*8, intent(in) :: epszz
REAL*8, intent(in) :: poisson_nu
REAL*8, intent(in) :: u0
REAL*8, intent(in) :: v0
REAL*8, intent(in) :: young_E
end function
end interface

interface
REAL*8 function d2phi_depsxxdepszx_public(Bx, By, Bz, epsxx, epsxy, epsyy, &
      epsyz, epszx, epszz, poisson_nu, u0, v0, young_E)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: By
REAL*8, intent(in) :: Bz
REAL*8, intent(in) :: epsxx
REAL*8, intent(in) :: epsxy
REAL*8, intent(in) :: epsyy
REAL*8, intent(in) :: epsyz
REAL*8, intent(in) :: epszx
REAL*8, intent(in) :: epszz
REAL*8, intent(in) :: poisson_nu
REAL*8, intent(in) :: u0
REAL*8, intent(in) :: v0
REAL*8, intent(in) :: young_E
end function
end interface

interface
REAL*8 function d2phi_depsxxdepszz_public(Bx, By, Bz, epsxx, epsxy, epsyy, &
      epsyz, epszx, epszz, poisson_nu, u0, v0, young_E)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: By
REAL*8, intent(in) :: Bz
REAL*8, intent(in) :: epsxx
REAL*8, intent(in) :: epsxy
REAL*8, intent(in) :: epsyy
REAL*8, intent(in) :: epsyz
REAL*8, intent(in) :: epszx
REAL*8, intent(in) :: epszz
REAL*8, intent(in) :: poisson_nu
REAL*8, intent(in) :: u0
REAL*8, intent(in) :: v0
REAL*8, intent(in) :: young_E
end function
end interface

interface
REAL*8 function dphi_depsxy_public(Bx, By, Bz, epsxx, epsxy, epsyy, epsyz, &
      epszx, epszz, poisson_nu, u0, v0, young_E)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: By
REAL*8, intent(in) :: Bz
REAL*8, intent(in) :: epsxx
REAL*8, intent(in) :: epsxy
REAL*8, intent(in) :: epsyy
REAL*8, intent(in) :: epsyz
REAL*8, intent(in) :: epszx
REAL*8, intent(in) :: epszz
REAL*8, intent(in) :: poisson_nu
REAL*8, intent(in) :: u0
REAL*8, intent(in) :: v0
REAL*8, intent(in) :: young_E
end function
end interface

interface
REAL*8 function d2phi_depsxy2_public(Bx, By, Bz, epsxx, epsxy, epsyy, epsyz, &
      epszx, epszz, poisson_nu, u0, v0, young_E)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: By
REAL*8, intent(in) :: Bz
REAL*8, intent(in) :: epsxx
REAL*8, intent(in) :: epsxy
REAL*8, intent(in) :: epsyy
REAL*8, intent(in) :: epsyz
REAL*8, intent(in) :: epszx
REAL*8, intent(in) :: epszz
REAL*8, intent(in) :: poisson_nu
REAL*8, intent(in) :: u0
REAL*8, intent(in) :: v0
REAL*8, intent(in) :: young_E
end function
end interface

interface
REAL*8 function d2phi_depsxydepsyy_public(Bx, By, Bz, epsxx, epsxy, epsyy, &
      epsyz, epszx, epszz, poisson_nu, u0, v0, young_E)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: By
REAL*8, intent(in) :: Bz
REAL*8, intent(in) :: epsxx
REAL*8, intent(in) :: epsxy
REAL*8, intent(in) :: epsyy
REAL*8, intent(in) :: epsyz
REAL*8, intent(in) :: epszx
REAL*8, intent(in) :: epszz
REAL*8, intent(in) :: poisson_nu
REAL*8, intent(in) :: u0
REAL*8, intent(in) :: v0
REAL*8, intent(in) :: young_E
end function
end interface

interface
REAL*8 function d2phi_depsxydepsyz_public(Bx, By, Bz, epsxx, epsxy, epsyy, &
      epsyz, epszx, epszz, poisson_nu, u0, v0, young_E)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: By
REAL*8, intent(in) :: Bz
REAL*8, intent(in) :: epsxx
REAL*8, intent(in) :: epsxy
REAL*8, intent(in) :: epsyy
REAL*8, intent(in) :: epsyz
REAL*8, intent(in) :: epszx
REAL*8, intent(in) :: epszz
REAL*8, intent(in) :: poisson_nu
REAL*8, intent(in) :: u0
REAL*8, intent(in) :: v0
REAL*8, intent(in) :: young_E
end function
end interface

interface
REAL*8 function d2phi_depsxydepszx_public(Bx, By, Bz, epsxx, epsxy, epsyy, &
      epsyz, epszx, epszz, poisson_nu, u0, v0, young_E)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: By
REAL*8, intent(in) :: Bz
REAL*8, intent(in) :: epsxx
REAL*8, intent(in) :: epsxy
REAL*8, intent(in) :: epsyy
REAL*8, intent(in) :: epsyz
REAL*8, intent(in) :: epszx
REAL*8, intent(in) :: epszz
REAL*8, intent(in) :: poisson_nu
REAL*8, intent(in) :: u0
REAL*8, intent(in) :: v0
REAL*8, intent(in) :: young_E
end function
end interface

interface
REAL*8 function d2phi_depsxydepszz_public(Bx, By, Bz, epsxx, epsxy, epsyy, &
      epsyz, epszx, epszz, poisson_nu, u0, v0, young_E)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: By
REAL*8, intent(in) :: Bz
REAL*8, intent(in) :: epsxx
REAL*8, intent(in) :: epsxy
REAL*8, intent(in) :: epsyy
REAL*8, intent(in) :: epsyz
REAL*8, intent(in) :: epszx
REAL*8, intent(in) :: epszz
REAL*8, intent(in) :: poisson_nu
REAL*8, intent(in) :: u0
REAL*8, intent(in) :: v0
REAL*8, intent(in) :: young_E
end function
end interface

interface
REAL*8 function dphi_depsyy_public(Bx, By, Bz, epsxx, epsxy, epsyy, epsyz, &
      epszx, epszz, poisson_nu, u0, v0, young_E)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: By
REAL*8, intent(in) :: Bz
REAL*8, intent(in) :: epsxx
REAL*8, intent(in) :: epsxy
REAL*8, intent(in) :: epsyy
REAL*8, intent(in) :: epsyz
REAL*8, intent(in) :: epszx
REAL*8, intent(in) :: epszz
REAL*8, intent(in) :: poisson_nu
REAL*8, intent(in) :: u0
REAL*8, intent(in) :: v0
REAL*8, intent(in) :: young_E
end function
end interface

interface
REAL*8 function d2phi_depsyy2_public(Bx, By, Bz, epsxx, epsxy, epsyy, epsyz, &
      epszx, epszz, poisson_nu, u0, v0, young_E)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: By
REAL*8, intent(in) :: Bz
REAL*8, intent(in) :: epsxx
REAL*8, intent(in) :: epsxy
REAL*8, intent(in) :: epsyy
REAL*8, intent(in) :: epsyz
REAL*8, intent(in) :: epszx
REAL*8, intent(in) :: epszz
REAL*8, intent(in) :: poisson_nu
REAL*8, intent(in) :: u0
REAL*8, intent(in) :: v0
REAL*8, intent(in) :: young_E
end function
end interface

interface
REAL*8 function d2phi_depsyydepsyz_public(Bx, By, Bz, epsxx, epsxy, epsyy, &
      epsyz, epszx, epszz, poisson_nu, u0, v0, young_E)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: By
REAL*8, intent(in) :: Bz
REAL*8, intent(in) :: epsxx
REAL*8, intent(in) :: epsxy
REAL*8, intent(in) :: epsyy
REAL*8, intent(in) :: epsyz
REAL*8, intent(in) :: epszx
REAL*8, intent(in) :: epszz
REAL*8, intent(in) :: poisson_nu
REAL*8, intent(in) :: u0
REAL*8, intent(in) :: v0
REAL*8, intent(in) :: young_E
end function
end interface

interface
REAL*8 function d2phi_depsyydepszx_public(Bx, By, Bz, epsxx, epsxy, epsyy, &
      epsyz, epszx, epszz, poisson_nu, u0, v0, young_E)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: By
REAL*8, intent(in) :: Bz
REAL*8, intent(in) :: epsxx
REAL*8, intent(in) :: epsxy
REAL*8, intent(in) :: epsyy
REAL*8, intent(in) :: epsyz
REAL*8, intent(in) :: epszx
REAL*8, intent(in) :: epszz
REAL*8, intent(in) :: poisson_nu
REAL*8, intent(in) :: u0
REAL*8, intent(in) :: v0
REAL*8, intent(in) :: young_E
end function
end interface

interface
REAL*8 function d2phi_depsyydepszz_public(Bx, By, Bz, epsxx, epsxy, epsyy, &
      epsyz, epszx, epszz, poisson_nu, u0, v0, young_E)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: By
REAL*8, intent(in) :: Bz
REAL*8, intent(in) :: epsxx
REAL*8, intent(in) :: epsxy
REAL*8, intent(in) :: epsyy
REAL*8, intent(in) :: epsyz
REAL*8, intent(in) :: epszx
REAL*8, intent(in) :: epszz
REAL*8, intent(in) :: poisson_nu
REAL*8, intent(in) :: u0
REAL*8, intent(in) :: v0
REAL*8, intent(in) :: young_E
end function
end interface

interface
REAL*8 function dphi_depsyz_public(Bx, By, Bz, epsxx, epsxy, epsyy, epsyz, &
      epszx, epszz, poisson_nu, u0, v0, young_E)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: By
REAL*8, intent(in) :: Bz
REAL*8, intent(in) :: epsxx
REAL*8, intent(in) :: epsxy
REAL*8, intent(in) :: epsyy
REAL*8, intent(in) :: epsyz
REAL*8, intent(in) :: epszx
REAL*8, intent(in) :: epszz
REAL*8, intent(in) :: poisson_nu
REAL*8, intent(in) :: u0
REAL*8, intent(in) :: v0
REAL*8, intent(in) :: young_E
end function
end interface

interface
REAL*8 function d2phi_depsyz2_public(Bx, By, Bz, epsxx, epsxy, epsyy, epsyz, &
      epszx, epszz, poisson_nu, u0, v0, young_E)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: By
REAL*8, intent(in) :: Bz
REAL*8, intent(in) :: epsxx
REAL*8, intent(in) :: epsxy
REAL*8, intent(in) :: epsyy
REAL*8, intent(in) :: epsyz
REAL*8, intent(in) :: epszx
REAL*8, intent(in) :: epszz
REAL*8, intent(in) :: poisson_nu
REAL*8, intent(in) :: u0
REAL*8, intent(in) :: v0
REAL*8, intent(in) :: young_E
end function
end interface

interface
REAL*8 function d2phi_depsyzdepszx_public(Bx, By, Bz, epsxx, epsxy, epsyy, &
      epsyz, epszx, epszz, poisson_nu, u0, v0, young_E)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: By
REAL*8, intent(in) :: Bz
REAL*8, intent(in) :: epsxx
REAL*8, intent(in) :: epsxy
REAL*8, intent(in) :: epsyy
REAL*8, intent(in) :: epsyz
REAL*8, intent(in) :: epszx
REAL*8, intent(in) :: epszz
REAL*8, intent(in) :: poisson_nu
REAL*8, intent(in) :: u0
REAL*8, intent(in) :: v0
REAL*8, intent(in) :: young_E
end function
end interface

interface
REAL*8 function d2phi_depsyzdepszz_public(Bx, By, Bz, epsxx, epsxy, epsyy, &
      epsyz, epszx, epszz, poisson_nu, u0, v0, young_E)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: By
REAL*8, intent(in) :: Bz
REAL*8, intent(in) :: epsxx
REAL*8, intent(in) :: epsxy
REAL*8, intent(in) :: epsyy
REAL*8, intent(in) :: epsyz
REAL*8, intent(in) :: epszx
REAL*8, intent(in) :: epszz
REAL*8, intent(in) :: poisson_nu
REAL*8, intent(in) :: u0
REAL*8, intent(in) :: v0
REAL*8, intent(in) :: young_E
end function
end interface

interface
REAL*8 function dphi_depszx_public(Bx, By, Bz, epsxx, epsxy, epsyy, epsyz, &
      epszx, epszz, poisson_nu, u0, v0, young_E)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: By
REAL*8, intent(in) :: Bz
REAL*8, intent(in) :: epsxx
REAL*8, intent(in) :: epsxy
REAL*8, intent(in) :: epsyy
REAL*8, intent(in) :: epsyz
REAL*8, intent(in) :: epszx
REAL*8, intent(in) :: epszz
REAL*8, intent(in) :: poisson_nu
REAL*8, intent(in) :: u0
REAL*8, intent(in) :: v0
REAL*8, intent(in) :: young_E
end function
end interface

interface
REAL*8 function d2phi_depszx2_public(Bx, By, Bz, epsxx, epsxy, epsyy, epsyz, &
      epszx, epszz, poisson_nu, u0, v0, young_E)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: By
REAL*8, intent(in) :: Bz
REAL*8, intent(in) :: epsxx
REAL*8, intent(in) :: epsxy
REAL*8, intent(in) :: epsyy
REAL*8, intent(in) :: epsyz
REAL*8, intent(in) :: epszx
REAL*8, intent(in) :: epszz
REAL*8, intent(in) :: poisson_nu
REAL*8, intent(in) :: u0
REAL*8, intent(in) :: v0
REAL*8, intent(in) :: young_E
end function
end interface

interface
REAL*8 function d2phi_depszxdepszz_public(Bx, By, Bz, epsxx, epsxy, epsyy, &
      epsyz, epszx, epszz, poisson_nu, u0, v0, young_E)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: By
REAL*8, intent(in) :: Bz
REAL*8, intent(in) :: epsxx
REAL*8, intent(in) :: epsxy
REAL*8, intent(in) :: epsyy
REAL*8, intent(in) :: epsyz
REAL*8, intent(in) :: epszx
REAL*8, intent(in) :: epszz
REAL*8, intent(in) :: poisson_nu
REAL*8, intent(in) :: u0
REAL*8, intent(in) :: v0
REAL*8, intent(in) :: young_E
end function
end interface

interface
REAL*8 function dphi_depszz_public(Bx, By, Bz, epsxx, epsxy, epsyy, epsyz, &
      epszx, epszz, poisson_nu, u0, v0, young_E)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: By
REAL*8, intent(in) :: Bz
REAL*8, intent(in) :: epsxx
REAL*8, intent(in) :: epsxy
REAL*8, intent(in) :: epsyy
REAL*8, intent(in) :: epsyz
REAL*8, intent(in) :: epszx
REAL*8, intent(in) :: epszz
REAL*8, intent(in) :: poisson_nu
REAL*8, intent(in) :: u0
REAL*8, intent(in) :: v0
REAL*8, intent(in) :: young_E
end function
end interface

interface
REAL*8 function d2phi_depszz2_public(Bx, By, Bz, epsxx, epsxy, epsyy, epsyz, &
      epszx, epszz, poisson_nu, u0, v0, young_E)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: By
REAL*8, intent(in) :: Bz
REAL*8, intent(in) :: epsxx
REAL*8, intent(in) :: epsxy
REAL*8, intent(in) :: epsyy
REAL*8, intent(in) :: epsyz
REAL*8, intent(in) :: epszx
REAL*8, intent(in) :: epszz
REAL*8, intent(in) :: poisson_nu
REAL*8, intent(in) :: u0
REAL*8, intent(in) :: v0
REAL*8, intent(in) :: young_E
end function
end interface

interface
REAL*8 function exx_public(epsxx, epsyy, epszz)
implicit none
REAL*8, intent(in) :: epsxx
REAL*8, intent(in) :: epsyy
REAL*8, intent(in) :: epszz
end function
end interface

interface
REAL*8 function exy_public(epsxy)
implicit none
REAL*8, intent(in) :: epsxy
end function
end interface

interface
REAL*8 function eyy_public(epsxx, epsyy, epszz)
implicit none
REAL*8, intent(in) :: epsxx
REAL*8, intent(in) :: epsyy
REAL*8, intent(in) :: epszz
end function
end interface

interface
REAL*8 function eyz_public(epsyz)
implicit none
REAL*8, intent(in) :: epsyz
end function
end interface

interface
REAL*8 function ezx_public(epszx)
implicit none
REAL*8, intent(in) :: epszx
end function
end interface

interface
REAL*8 function ezz_public(epsxx, epsyy, epszz)
implicit none
REAL*8, intent(in) :: epsxx
REAL*8, intent(in) :: epsyy
REAL*8, intent(in) :: epszz
end function
end interface

interface
REAL*8 function I4_public(Bx, By, Bz)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: By
REAL*8, intent(in) :: Bz
end function
end interface

interface
REAL*8 function I5_public(Bx, By, Bz, epsxx, epsxy, epsyy, epsyz, epszx, &
      epszz)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: By
REAL*8, intent(in) :: Bz
REAL*8, intent(in) :: epsxx
REAL*8, intent(in) :: epsxy
REAL*8, intent(in) :: epsyy
REAL*8, intent(in) :: epsyz
REAL*8, intent(in) :: epszx
REAL*8, intent(in) :: epszz
end function
end interface

interface
REAL*8 function u_public(Bx, By, Bz, u0)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: By
REAL*8, intent(in) :: Bz
REAL*8, intent(in) :: u0
end function
end interface

interface
REAL*8 function up_public(Bx, By, Bz)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: By
REAL*8, intent(in) :: Bz
end function
end interface

interface
REAL*8 function v_public(Bx, By, Bz, epsxx, epsxy, epsyy, epsyz, epszx, &
      epszz, v0)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: By
REAL*8, intent(in) :: Bz
REAL*8, intent(in) :: epsxx
REAL*8, intent(in) :: epsxy
REAL*8, intent(in) :: epsyy
REAL*8, intent(in) :: epsyz
REAL*8, intent(in) :: epszx
REAL*8, intent(in) :: epszz
REAL*8, intent(in) :: v0
end function
end interface

interface
REAL*8 function vp_public(Bx, By, Bz, epsxx, epsxy, epsyy, epsyz, epszx, &
      epszz)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: By
REAL*8, intent(in) :: Bz
REAL*8, intent(in) :: epsxx
REAL*8, intent(in) :: epsxy
REAL*8, intent(in) :: epsyy
REAL*8, intent(in) :: epsyz
REAL*8, intent(in) :: epszx
REAL*8, intent(in) :: epszz
end function
end interface

interface
REAL*8 function epsM_public(epsxx, epsyy, epszz)
implicit none
REAL*8, intent(in) :: epsxx
REAL*8, intent(in) :: epsyy
REAL*8, intent(in) :: epszz
end function
end interface

interface
REAL*8 function phip_public(Bx, By, Bz, epsxx, epsxy, epsyy, epsyz, epszx, &
      epszz, poisson_nu, u0, v0, young_E)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: By
REAL*8, intent(in) :: Bz
REAL*8, intent(in) :: epsxx
REAL*8, intent(in) :: epsxy
REAL*8, intent(in) :: epsyy
REAL*8, intent(in) :: epsyz
REAL*8, intent(in) :: epszx
REAL*8, intent(in) :: epszz
REAL*8, intent(in) :: poisson_nu
REAL*8, intent(in) :: u0
REAL*8, intent(in) :: v0
REAL*8, intent(in) :: young_E
end function
end interface

interface
REAL*8 function phi_public(Bx, By, Bz, epsxx, epsxy, epsyy, epsyz, epszx, &
      epszz, poisson_nu, u0, v0, young_E)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: By
REAL*8, intent(in) :: Bz
REAL*8, intent(in) :: epsxx
REAL*8, intent(in) :: epsxy
REAL*8, intent(in) :: epsyy
REAL*8, intent(in) :: epsyz
REAL*8, intent(in) :: epszx
REAL*8, intent(in) :: epszz
REAL*8, intent(in) :: poisson_nu
REAL*8, intent(in) :: u0
REAL*8, intent(in) :: v0
REAL*8, intent(in) :: young_E
end function
end interface

interface
REAL*8 function dphi_du_public(Bx, By, Bz, epsxx, epsxy, epsyy, epsyz, &
      epszx, epszz, poisson_nu, u0, v0, young_E)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: By
REAL*8, intent(in) :: Bz
REAL*8, intent(in) :: epsxx
REAL*8, intent(in) :: epsxy
REAL*8, intent(in) :: epsyy
REAL*8, intent(in) :: epsyz
REAL*8, intent(in) :: epszx
REAL*8, intent(in) :: epszz
REAL*8, intent(in) :: poisson_nu
REAL*8, intent(in) :: u0
REAL*8, intent(in) :: v0
REAL*8, intent(in) :: young_E
end function
end interface

interface
REAL*8 function dphi_dv_public(Bx, By, Bz, epsxx, epsxy, epsyy, epsyz, &
      epszx, epszz, poisson_nu, u0, v0, young_E)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: By
REAL*8, intent(in) :: Bz
REAL*8, intent(in) :: epsxx
REAL*8, intent(in) :: epsxy
REAL*8, intent(in) :: epsyy
REAL*8, intent(in) :: epsyz
REAL*8, intent(in) :: epszx
REAL*8, intent(in) :: epszz
REAL*8, intent(in) :: poisson_nu
REAL*8, intent(in) :: u0
REAL*8, intent(in) :: v0
REAL*8, intent(in) :: young_E
end function
end interface

interface
REAL*8 function d2phi_du2_public(Bx, By, Bz, epsxx, epsxy, epsyy, epsyz, &
      epszx, epszz, poisson_nu, u0, v0, young_E)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: By
REAL*8, intent(in) :: Bz
REAL*8, intent(in) :: epsxx
REAL*8, intent(in) :: epsxy
REAL*8, intent(in) :: epsyy
REAL*8, intent(in) :: epsyz
REAL*8, intent(in) :: epszx
REAL*8, intent(in) :: epszz
REAL*8, intent(in) :: poisson_nu
REAL*8, intent(in) :: u0
REAL*8, intent(in) :: v0
REAL*8, intent(in) :: young_E
end function
end interface

interface
REAL*8 function d2phi_dudv_public(Bx, By, Bz, epsxx, epsxy, epsyy, epsyz, &
      epszx, epszz, poisson_nu, u0, v0, young_E)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: By
REAL*8, intent(in) :: Bz
REAL*8, intent(in) :: epsxx
REAL*8, intent(in) :: epsxy
REAL*8, intent(in) :: epsyy
REAL*8, intent(in) :: epsyz
REAL*8, intent(in) :: epszx
REAL*8, intent(in) :: epszz
REAL*8, intent(in) :: poisson_nu
REAL*8, intent(in) :: u0
REAL*8, intent(in) :: v0
REAL*8, intent(in) :: young_E
end function
end interface

interface
REAL*8 function d2phi_dv2_public(Bx, By, Bz, epsxx, epsxy, epsyy, epsyz, &
      epszx, epszz, poisson_nu, u0, v0, young_E)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: By
REAL*8, intent(in) :: Bz
REAL*8, intent(in) :: epsxx
REAL*8, intent(in) :: epsxy
REAL*8, intent(in) :: epsyy
REAL*8, intent(in) :: epsyz
REAL*8, intent(in) :: epszx
REAL*8, intent(in) :: epszz
REAL*8, intent(in) :: poisson_nu
REAL*8, intent(in) :: u0
REAL*8, intent(in) :: v0
REAL*8, intent(in) :: young_E
end function
end interface

interface
subroutine H_public(Bx, By, Bz, epsxx, epsxy, epsyy, epsyz, epszx, epszz, &
      poisson_nu, u0, v0, young_E, H_out)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: By
REAL*8, intent(in) :: Bz
REAL*8, intent(in) :: epsxx
REAL*8, intent(in) :: epsxy
REAL*8, intent(in) :: epsyy
REAL*8, intent(in) :: epsyz
REAL*8, intent(in) :: epszx
REAL*8, intent(in) :: epszz
REAL*8, intent(in) :: poisson_nu
REAL*8, intent(in) :: u0
REAL*8, intent(in) :: v0
REAL*8, intent(in) :: young_E
REAL*8, intent(out), dimension(1:3, 1:1) :: H_out
end subroutine
end interface

interface
subroutine dH_dB_public(Bx, By, Bz, epsxx, epsxy, epsyy, epsyz, epszx, &
      epszz, poisson_nu, u0, v0, young_E, dH_dB_out)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: By
REAL*8, intent(in) :: Bz
REAL*8, intent(in) :: epsxx
REAL*8, intent(in) :: epsxy
REAL*8, intent(in) :: epsyy
REAL*8, intent(in) :: epsyz
REAL*8, intent(in) :: epszx
REAL*8, intent(in) :: epszz
REAL*8, intent(in) :: poisson_nu
REAL*8, intent(in) :: u0
REAL*8, intent(in) :: v0
REAL*8, intent(in) :: young_E
REAL*8, intent(out), dimension(1:3, 1:3) :: dH_dB_out
end subroutine
end interface

interface
subroutine S_public(Bx, By, Bz, epsxx, epsxy, epsyy, epsyz, epszx, epszz, &
      poisson_nu, u0, v0, young_E, S_out)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: By
REAL*8, intent(in) :: Bz
REAL*8, intent(in) :: epsxx
REAL*8, intent(in) :: epsxy
REAL*8, intent(in) :: epsyy
REAL*8, intent(in) :: epsyz
REAL*8, intent(in) :: epszx
REAL*8, intent(in) :: epszz
REAL*8, intent(in) :: poisson_nu
REAL*8, intent(in) :: u0
REAL*8, intent(in) :: v0
REAL*8, intent(in) :: young_E
REAL*8, intent(out), dimension(1:3, 1:3) :: S_out
end subroutine
end interface

interface
subroutine dS_deps_public(Bx, By, Bz, epsxx, epsxy, epsyy, epsyz, epszx, &
      epszz, poisson_nu, u0, v0, young_E, dS_deps_out)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: By
REAL*8, intent(in) :: Bz
REAL*8, intent(in) :: epsxx
REAL*8, intent(in) :: epsxy
REAL*8, intent(in) :: epsyy
REAL*8, intent(in) :: epsyz
REAL*8, intent(in) :: epszx
REAL*8, intent(in) :: epszz
REAL*8, intent(in) :: poisson_nu
REAL*8, intent(in) :: u0
REAL*8, intent(in) :: v0
REAL*8, intent(in) :: young_E
REAL*8, intent(out), dimension(1:9, 1:9) :: dS_deps_out
end subroutine
end interface

