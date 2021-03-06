!******************************************************************************
!*              Code generated with mgs-galfenol-codegen stage2               *
!*                                                                            *
!* See https://github.com/TUTElectromechanics/mm-codegen for more information *
!*                                                                            *
!*                 This file is part of 'elmer-mgs-galfenol'                  *
!******************************************************************************

interface
REAL(KIND=dp) function dexx_depsxx_public()
use types
implicit none
end function
end interface

interface
REAL(KIND=dp) function dexx_depsyy_public()
use types
implicit none
end function
end interface

interface
REAL(KIND=dp) function dexx_depszz_public()
use types
implicit none
end function
end interface

interface
REAL(KIND=dp) function dexy_depsxy_public()
use types
implicit none
end function
end interface

interface
REAL(KIND=dp) function deyy_depsxx_public()
use types
implicit none
end function
end interface

interface
REAL(KIND=dp) function deyy_depsyy_public()
use types
implicit none
end function
end interface

interface
REAL(KIND=dp) function deyy_depszz_public()
use types
implicit none
end function
end interface

interface
REAL(KIND=dp) function deyz_depsyz_public()
use types
implicit none
end function
end interface

interface
REAL(KIND=dp) function dezx_depszx_public()
use types
implicit none
end function
end interface

interface
REAL(KIND=dp) function dezz_depsxx_public()
use types
implicit none
end function
end interface

interface
REAL(KIND=dp) function dezz_depsyy_public()
use types
implicit none
end function
end interface

interface
REAL(KIND=dp) function dezz_depszz_public()
use types
implicit none
end function
end interface

interface
REAL(KIND=dp) function dI4_dBx_public(Bx)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bx
end function
end interface

interface
REAL(KIND=dp) function d2I4_dBx2_public()
use types
implicit none
end function
end interface

interface
REAL(KIND=dp) function dI4_dBy_public(By)
use types
implicit none
REAL(KIND=dp), intent(in) :: By
end function
end interface

interface
REAL(KIND=dp) function d2I4_dBy2_public()
use types
implicit none
end function
end interface

interface
REAL(KIND=dp) function dI4_dBz_public(Bz)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bz
end function
end interface

interface
REAL(KIND=dp) function d2I4_dBz2_public()
use types
implicit none
end function
end interface

interface
REAL(KIND=dp) function dI5_dBx_public(Bx, By, Bz, epsxx, epsxy, epsyy, &
      epszx, epszz)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bx
REAL(KIND=dp), intent(in) :: By
REAL(KIND=dp), intent(in) :: Bz
REAL(KIND=dp), intent(in) :: epsxx
REAL(KIND=dp), intent(in) :: epsxy
REAL(KIND=dp), intent(in) :: epsyy
REAL(KIND=dp), intent(in) :: epszx
REAL(KIND=dp), intent(in) :: epszz
end function
end interface

interface
REAL(KIND=dp) function d2I5_dBx2_public(epsxx, epsyy, epszz)
use types
implicit none
REAL(KIND=dp), intent(in) :: epsxx
REAL(KIND=dp), intent(in) :: epsyy
REAL(KIND=dp), intent(in) :: epszz
end function
end interface

interface
REAL(KIND=dp) function d2I5_dBxdBy_public(epsxy)
use types
implicit none
REAL(KIND=dp), intent(in) :: epsxy
end function
end interface

interface
REAL(KIND=dp) function d2I5_dBxdBz_public(epszx)
use types
implicit none
REAL(KIND=dp), intent(in) :: epszx
end function
end interface

interface
REAL(KIND=dp) function d2I5_dBxdexx_public(Bx)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bx
end function
end interface

interface
REAL(KIND=dp) function d2I5_dBxdexy_public(By)
use types
implicit none
REAL(KIND=dp), intent(in) :: By
end function
end interface

interface
REAL(KIND=dp) function d2I5_dBxdezx_public(Bz)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bz
end function
end interface

interface
REAL(KIND=dp) function dI5_dBy_public(Bx, By, Bz, epsxx, epsxy, epsyy, &
      epsyz, epszz)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bx
REAL(KIND=dp), intent(in) :: By
REAL(KIND=dp), intent(in) :: Bz
REAL(KIND=dp), intent(in) :: epsxx
REAL(KIND=dp), intent(in) :: epsxy
REAL(KIND=dp), intent(in) :: epsyy
REAL(KIND=dp), intent(in) :: epsyz
REAL(KIND=dp), intent(in) :: epszz
end function
end interface

interface
REAL(KIND=dp) function d2I5_dBy2_public(epsxx, epsyy, epszz)
use types
implicit none
REAL(KIND=dp), intent(in) :: epsxx
REAL(KIND=dp), intent(in) :: epsyy
REAL(KIND=dp), intent(in) :: epszz
end function
end interface

interface
REAL(KIND=dp) function d2I5_dBydBz_public(epsyz)
use types
implicit none
REAL(KIND=dp), intent(in) :: epsyz
end function
end interface

interface
REAL(KIND=dp) function d2I5_dBydexy_public(Bx)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bx
end function
end interface

interface
REAL(KIND=dp) function d2I5_dBydeyy_public(By)
use types
implicit none
REAL(KIND=dp), intent(in) :: By
end function
end interface

interface
REAL(KIND=dp) function d2I5_dBydeyz_public(Bz)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bz
end function
end interface

interface
REAL(KIND=dp) function dI5_dBz_public(Bx, By, Bz, epsxx, epsyy, epsyz, &
      epszx, epszz)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bx
REAL(KIND=dp), intent(in) :: By
REAL(KIND=dp), intent(in) :: Bz
REAL(KIND=dp), intent(in) :: epsxx
REAL(KIND=dp), intent(in) :: epsyy
REAL(KIND=dp), intent(in) :: epsyz
REAL(KIND=dp), intent(in) :: epszx
REAL(KIND=dp), intent(in) :: epszz
end function
end interface

interface
REAL(KIND=dp) function d2I5_dBz2_public(epsxx, epsyy, epszz)
use types
implicit none
REAL(KIND=dp), intent(in) :: epsxx
REAL(KIND=dp), intent(in) :: epsyy
REAL(KIND=dp), intent(in) :: epszz
end function
end interface

interface
REAL(KIND=dp) function d2I5_dBzdeyz_public(By)
use types
implicit none
REAL(KIND=dp), intent(in) :: By
end function
end interface

interface
REAL(KIND=dp) function d2I5_dBzdezx_public(Bx)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bx
end function
end interface

interface
REAL(KIND=dp) function d2I5_dBzdezz_public(Bz)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bz
end function
end interface

interface
REAL(KIND=dp) function dI5_dexx_public(Bx)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bx
end function
end interface

interface
REAL(KIND=dp) function dI5_dexy_public(Bx, By)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bx
REAL(KIND=dp), intent(in) :: By
end function
end interface

interface
REAL(KIND=dp) function dI5_deyy_public(By)
use types
implicit none
REAL(KIND=dp), intent(in) :: By
end function
end interface

interface
REAL(KIND=dp) function dI5_deyz_public(By, Bz)
use types
implicit none
REAL(KIND=dp), intent(in) :: By
REAL(KIND=dp), intent(in) :: Bz
end function
end interface

interface
REAL(KIND=dp) function dI5_dezx_public(Bx, Bz)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bx
REAL(KIND=dp), intent(in) :: Bz
end function
end interface

interface
REAL(KIND=dp) function dI5_dezz_public(Bz)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bz
end function
end interface

interface
REAL(KIND=dp) function dI6_dBx_public(Bx, By, Bz, epsxx, epsxy, epsyy, &
      epsyz, epszx, epszz)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bx
REAL(KIND=dp), intent(in) :: By
REAL(KIND=dp), intent(in) :: Bz
REAL(KIND=dp), intent(in) :: epsxx
REAL(KIND=dp), intent(in) :: epsxy
REAL(KIND=dp), intent(in) :: epsyy
REAL(KIND=dp), intent(in) :: epsyz
REAL(KIND=dp), intent(in) :: epszx
REAL(KIND=dp), intent(in) :: epszz
end function
end interface

interface
REAL(KIND=dp) function d2I6_dBx2_public(epsxx, epsxy, epsyy, epszx, epszz)
use types
implicit none
REAL(KIND=dp), intent(in) :: epsxx
REAL(KIND=dp), intent(in) :: epsxy
REAL(KIND=dp), intent(in) :: epsyy
REAL(KIND=dp), intent(in) :: epszx
REAL(KIND=dp), intent(in) :: epszz
end function
end interface

interface
REAL(KIND=dp) function d2I6_dBxdBy_public(epsxx, epsxy, epsyy, epsyz, epszx, &
      epszz)
use types
implicit none
REAL(KIND=dp), intent(in) :: epsxx
REAL(KIND=dp), intent(in) :: epsxy
REAL(KIND=dp), intent(in) :: epsyy
REAL(KIND=dp), intent(in) :: epsyz
REAL(KIND=dp), intent(in) :: epszx
REAL(KIND=dp), intent(in) :: epszz
end function
end interface

interface
REAL(KIND=dp) function d2I6_dBxdBz_public(epsxx, epsxy, epsyy, epsyz, epszx, &
      epszz)
use types
implicit none
REAL(KIND=dp), intent(in) :: epsxx
REAL(KIND=dp), intent(in) :: epsxy
REAL(KIND=dp), intent(in) :: epsyy
REAL(KIND=dp), intent(in) :: epsyz
REAL(KIND=dp), intent(in) :: epszx
REAL(KIND=dp), intent(in) :: epszz
end function
end interface

interface
REAL(KIND=dp) function d2I6_dBxdexx_public(Bx, By, Bz, epsxx, epsxy, epsyy, &
      epszx, epszz)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bx
REAL(KIND=dp), intent(in) :: By
REAL(KIND=dp), intent(in) :: Bz
REAL(KIND=dp), intent(in) :: epsxx
REAL(KIND=dp), intent(in) :: epsxy
REAL(KIND=dp), intent(in) :: epsyy
REAL(KIND=dp), intent(in) :: epszx
REAL(KIND=dp), intent(in) :: epszz
end function
end interface

interface
REAL(KIND=dp) function d2I6_dBxdexy_public(Bx, By, Bz, epsxx, epsxy, epsyy, &
      epsyz, epszz)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bx
REAL(KIND=dp), intent(in) :: By
REAL(KIND=dp), intent(in) :: Bz
REAL(KIND=dp), intent(in) :: epsxx
REAL(KIND=dp), intent(in) :: epsxy
REAL(KIND=dp), intent(in) :: epsyy
REAL(KIND=dp), intent(in) :: epsyz
REAL(KIND=dp), intent(in) :: epszz
end function
end interface

interface
REAL(KIND=dp) function d2I6_dBxdeyy_public(By, epsxy)
use types
implicit none
REAL(KIND=dp), intent(in) :: By
REAL(KIND=dp), intent(in) :: epsxy
end function
end interface

interface
REAL(KIND=dp) function d2I6_dBxdeyz_public(By, Bz, epsxy, epszx)
use types
implicit none
REAL(KIND=dp), intent(in) :: By
REAL(KIND=dp), intent(in) :: Bz
REAL(KIND=dp), intent(in) :: epsxy
REAL(KIND=dp), intent(in) :: epszx
end function
end interface

interface
REAL(KIND=dp) function d2I6_dBxdezx_public(Bx, By, Bz, epsxx, epsyy, epsyz, &
      epszx, epszz)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bx
REAL(KIND=dp), intent(in) :: By
REAL(KIND=dp), intent(in) :: Bz
REAL(KIND=dp), intent(in) :: epsxx
REAL(KIND=dp), intent(in) :: epsyy
REAL(KIND=dp), intent(in) :: epsyz
REAL(KIND=dp), intent(in) :: epszx
REAL(KIND=dp), intent(in) :: epszz
end function
end interface

interface
REAL(KIND=dp) function d2I6_dBxdezz_public(Bz, epszx)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bz
REAL(KIND=dp), intent(in) :: epszx
end function
end interface

interface
REAL(KIND=dp) function dI6_dBy_public(Bx, By, Bz, epsxx, epsxy, epsyy, &
      epsyz, epszx, epszz)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bx
REAL(KIND=dp), intent(in) :: By
REAL(KIND=dp), intent(in) :: Bz
REAL(KIND=dp), intent(in) :: epsxx
REAL(KIND=dp), intent(in) :: epsxy
REAL(KIND=dp), intent(in) :: epsyy
REAL(KIND=dp), intent(in) :: epsyz
REAL(KIND=dp), intent(in) :: epszx
REAL(KIND=dp), intent(in) :: epszz
end function
end interface

interface
REAL(KIND=dp) function d2I6_dBy2_public(epsxx, epsxy, epsyy, epsyz, epszz)
use types
implicit none
REAL(KIND=dp), intent(in) :: epsxx
REAL(KIND=dp), intent(in) :: epsxy
REAL(KIND=dp), intent(in) :: epsyy
REAL(KIND=dp), intent(in) :: epsyz
REAL(KIND=dp), intent(in) :: epszz
end function
end interface

interface
REAL(KIND=dp) function d2I6_dBydBz_public(epsxx, epsxy, epsyy, epsyz, epszx, &
      epszz)
use types
implicit none
REAL(KIND=dp), intent(in) :: epsxx
REAL(KIND=dp), intent(in) :: epsxy
REAL(KIND=dp), intent(in) :: epsyy
REAL(KIND=dp), intent(in) :: epsyz
REAL(KIND=dp), intent(in) :: epszx
REAL(KIND=dp), intent(in) :: epszz
end function
end interface

interface
REAL(KIND=dp) function d2I6_dBydexx_public(Bx, epsxy)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bx
REAL(KIND=dp), intent(in) :: epsxy
end function
end interface

interface
REAL(KIND=dp) function d2I6_dBydexy_public(Bx, By, Bz, epsxx, epsxy, epsyy, &
      epszx, epszz)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bx
REAL(KIND=dp), intent(in) :: By
REAL(KIND=dp), intent(in) :: Bz
REAL(KIND=dp), intent(in) :: epsxx
REAL(KIND=dp), intent(in) :: epsxy
REAL(KIND=dp), intent(in) :: epsyy
REAL(KIND=dp), intent(in) :: epszx
REAL(KIND=dp), intent(in) :: epszz
end function
end interface

interface
REAL(KIND=dp) function d2I6_dBydeyy_public(Bx, By, Bz, epsxx, epsxy, epsyy, &
      epsyz, epszz)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bx
REAL(KIND=dp), intent(in) :: By
REAL(KIND=dp), intent(in) :: Bz
REAL(KIND=dp), intent(in) :: epsxx
REAL(KIND=dp), intent(in) :: epsxy
REAL(KIND=dp), intent(in) :: epsyy
REAL(KIND=dp), intent(in) :: epsyz
REAL(KIND=dp), intent(in) :: epszz
end function
end interface

interface
REAL(KIND=dp) function d2I6_dBydeyz_public(Bx, By, Bz, epsxx, epsyy, epsyz, &
      epszx, epszz)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bx
REAL(KIND=dp), intent(in) :: By
REAL(KIND=dp), intent(in) :: Bz
REAL(KIND=dp), intent(in) :: epsxx
REAL(KIND=dp), intent(in) :: epsyy
REAL(KIND=dp), intent(in) :: epsyz
REAL(KIND=dp), intent(in) :: epszx
REAL(KIND=dp), intent(in) :: epszz
end function
end interface

interface
REAL(KIND=dp) function d2I6_dBydezx_public(Bx, Bz, epsxy, epsyz)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bx
REAL(KIND=dp), intent(in) :: Bz
REAL(KIND=dp), intent(in) :: epsxy
REAL(KIND=dp), intent(in) :: epsyz
end function
end interface

interface
REAL(KIND=dp) function d2I6_dBydezz_public(Bz, epsyz)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bz
REAL(KIND=dp), intent(in) :: epsyz
end function
end interface

interface
REAL(KIND=dp) function dI6_dBz_public(Bx, By, Bz, epsxx, epsxy, epsyy, &
      epsyz, epszx, epszz)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bx
REAL(KIND=dp), intent(in) :: By
REAL(KIND=dp), intent(in) :: Bz
REAL(KIND=dp), intent(in) :: epsxx
REAL(KIND=dp), intent(in) :: epsxy
REAL(KIND=dp), intent(in) :: epsyy
REAL(KIND=dp), intent(in) :: epsyz
REAL(KIND=dp), intent(in) :: epszx
REAL(KIND=dp), intent(in) :: epszz
end function
end interface

interface
REAL(KIND=dp) function d2I6_dBz2_public(epsxx, epsyy, epsyz, epszx, epszz)
use types
implicit none
REAL(KIND=dp), intent(in) :: epsxx
REAL(KIND=dp), intent(in) :: epsyy
REAL(KIND=dp), intent(in) :: epsyz
REAL(KIND=dp), intent(in) :: epszx
REAL(KIND=dp), intent(in) :: epszz
end function
end interface

interface
REAL(KIND=dp) function d2I6_dBzdexx_public(Bx, epszx)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bx
REAL(KIND=dp), intent(in) :: epszx
end function
end interface

interface
REAL(KIND=dp) function d2I6_dBzdexy_public(Bx, By, epsyz, epszx)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bx
REAL(KIND=dp), intent(in) :: By
REAL(KIND=dp), intent(in) :: epsyz
REAL(KIND=dp), intent(in) :: epszx
end function
end interface

interface
REAL(KIND=dp) function d2I6_dBzdeyy_public(By, epsyz)
use types
implicit none
REAL(KIND=dp), intent(in) :: By
REAL(KIND=dp), intent(in) :: epsyz
end function
end interface

interface
REAL(KIND=dp) function d2I6_dBzdeyz_public(Bx, By, Bz, epsxx, epsxy, epsyy, &
      epsyz, epszz)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bx
REAL(KIND=dp), intent(in) :: By
REAL(KIND=dp), intent(in) :: Bz
REAL(KIND=dp), intent(in) :: epsxx
REAL(KIND=dp), intent(in) :: epsxy
REAL(KIND=dp), intent(in) :: epsyy
REAL(KIND=dp), intent(in) :: epsyz
REAL(KIND=dp), intent(in) :: epszz
end function
end interface

interface
REAL(KIND=dp) function d2I6_dBzdezx_public(Bx, By, Bz, epsxx, epsxy, epsyy, &
      epszx, epszz)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bx
REAL(KIND=dp), intent(in) :: By
REAL(KIND=dp), intent(in) :: Bz
REAL(KIND=dp), intent(in) :: epsxx
REAL(KIND=dp), intent(in) :: epsxy
REAL(KIND=dp), intent(in) :: epsyy
REAL(KIND=dp), intent(in) :: epszx
REAL(KIND=dp), intent(in) :: epszz
end function
end interface

interface
REAL(KIND=dp) function d2I6_dBzdezz_public(Bx, By, Bz, epsxx, epsyy, epsyz, &
      epszx, epszz)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bx
REAL(KIND=dp), intent(in) :: By
REAL(KIND=dp), intent(in) :: Bz
REAL(KIND=dp), intent(in) :: epsxx
REAL(KIND=dp), intent(in) :: epsyy
REAL(KIND=dp), intent(in) :: epsyz
REAL(KIND=dp), intent(in) :: epszx
REAL(KIND=dp), intent(in) :: epszz
end function
end interface

interface
REAL(KIND=dp) function dI6_dexx_public(Bx, By, Bz, epsxx, epsxy, epsyy, &
      epszx, epszz)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bx
REAL(KIND=dp), intent(in) :: By
REAL(KIND=dp), intent(in) :: Bz
REAL(KIND=dp), intent(in) :: epsxx
REAL(KIND=dp), intent(in) :: epsxy
REAL(KIND=dp), intent(in) :: epsyy
REAL(KIND=dp), intent(in) :: epszx
REAL(KIND=dp), intent(in) :: epszz
end function
end interface

interface
REAL(KIND=dp) function d2I6_dexx2_public(Bx)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bx
end function
end interface

interface
REAL(KIND=dp) function d2I6_dexxdexy_public(Bx, By)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bx
REAL(KIND=dp), intent(in) :: By
end function
end interface

interface
REAL(KIND=dp) function d2I6_dexxdezx_public(Bx, Bz)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bx
REAL(KIND=dp), intent(in) :: Bz
end function
end interface

interface
REAL(KIND=dp) function dI6_dexy_public(Bx, By, Bz, epsxx, epsxy, epsyy, &
      epsyz, epszx, epszz)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bx
REAL(KIND=dp), intent(in) :: By
REAL(KIND=dp), intent(in) :: Bz
REAL(KIND=dp), intent(in) :: epsxx
REAL(KIND=dp), intent(in) :: epsxy
REAL(KIND=dp), intent(in) :: epsyy
REAL(KIND=dp), intent(in) :: epsyz
REAL(KIND=dp), intent(in) :: epszx
REAL(KIND=dp), intent(in) :: epszz
end function
end interface

interface
REAL(KIND=dp) function d2I6_dexy2_public(Bx, By)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bx
REAL(KIND=dp), intent(in) :: By
end function
end interface

interface
REAL(KIND=dp) function d2I6_dexydeyy_public(Bx, By)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bx
REAL(KIND=dp), intent(in) :: By
end function
end interface

interface
REAL(KIND=dp) function d2I6_dexydeyz_public(Bx, Bz)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bx
REAL(KIND=dp), intent(in) :: Bz
end function
end interface

interface
REAL(KIND=dp) function d2I6_dexydezx_public(By, Bz)
use types
implicit none
REAL(KIND=dp), intent(in) :: By
REAL(KIND=dp), intent(in) :: Bz
end function
end interface

interface
REAL(KIND=dp) function dI6_deyy_public(Bx, By, Bz, epsxx, epsxy, epsyy, &
      epsyz, epszz)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bx
REAL(KIND=dp), intent(in) :: By
REAL(KIND=dp), intent(in) :: Bz
REAL(KIND=dp), intent(in) :: epsxx
REAL(KIND=dp), intent(in) :: epsxy
REAL(KIND=dp), intent(in) :: epsyy
REAL(KIND=dp), intent(in) :: epsyz
REAL(KIND=dp), intent(in) :: epszz
end function
end interface

interface
REAL(KIND=dp) function d2I6_deyy2_public(By)
use types
implicit none
REAL(KIND=dp), intent(in) :: By
end function
end interface

interface
REAL(KIND=dp) function d2I6_deyydeyz_public(By, Bz)
use types
implicit none
REAL(KIND=dp), intent(in) :: By
REAL(KIND=dp), intent(in) :: Bz
end function
end interface

interface
REAL(KIND=dp) function dI6_deyz_public(Bx, By, Bz, epsxx, epsxy, epsyy, &
      epsyz, epszx, epszz)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bx
REAL(KIND=dp), intent(in) :: By
REAL(KIND=dp), intent(in) :: Bz
REAL(KIND=dp), intent(in) :: epsxx
REAL(KIND=dp), intent(in) :: epsxy
REAL(KIND=dp), intent(in) :: epsyy
REAL(KIND=dp), intent(in) :: epsyz
REAL(KIND=dp), intent(in) :: epszx
REAL(KIND=dp), intent(in) :: epszz
end function
end interface

interface
REAL(KIND=dp) function d2I6_deyz2_public(By, Bz)
use types
implicit none
REAL(KIND=dp), intent(in) :: By
REAL(KIND=dp), intent(in) :: Bz
end function
end interface

interface
REAL(KIND=dp) function d2I6_deyzdezx_public(Bx, By)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bx
REAL(KIND=dp), intent(in) :: By
end function
end interface

interface
REAL(KIND=dp) function d2I6_deyzdezz_public(By, Bz)
use types
implicit none
REAL(KIND=dp), intent(in) :: By
REAL(KIND=dp), intent(in) :: Bz
end function
end interface

interface
REAL(KIND=dp) function dI6_dezx_public(Bx, By, Bz, epsxx, epsxy, epsyy, &
      epsyz, epszx, epszz)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bx
REAL(KIND=dp), intent(in) :: By
REAL(KIND=dp), intent(in) :: Bz
REAL(KIND=dp), intent(in) :: epsxx
REAL(KIND=dp), intent(in) :: epsxy
REAL(KIND=dp), intent(in) :: epsyy
REAL(KIND=dp), intent(in) :: epsyz
REAL(KIND=dp), intent(in) :: epszx
REAL(KIND=dp), intent(in) :: epszz
end function
end interface

interface
REAL(KIND=dp) function d2I6_dezx2_public(Bx, Bz)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bx
REAL(KIND=dp), intent(in) :: Bz
end function
end interface

interface
REAL(KIND=dp) function d2I6_dezxdezz_public(Bx, Bz)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bx
REAL(KIND=dp), intent(in) :: Bz
end function
end interface

interface
REAL(KIND=dp) function dI6_dezz_public(Bx, By, Bz, epsxx, epsyy, epsyz, &
      epszx, epszz)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bx
REAL(KIND=dp), intent(in) :: By
REAL(KIND=dp), intent(in) :: Bz
REAL(KIND=dp), intent(in) :: epsxx
REAL(KIND=dp), intent(in) :: epsyy
REAL(KIND=dp), intent(in) :: epsyz
REAL(KIND=dp), intent(in) :: epszx
REAL(KIND=dp), intent(in) :: epszz
end function
end interface

interface
REAL(KIND=dp) function d2I6_dezz2_public(Bz)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bz
end function
end interface

interface
REAL(KIND=dp) function du_dup_public(u0)
use types
implicit none
REAL(KIND=dp), intent(in) :: u0
end function
end interface

interface
REAL(KIND=dp) function dup_dI4_public(Bx, By, Bz)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bx
REAL(KIND=dp), intent(in) :: By
REAL(KIND=dp), intent(in) :: Bz
end function
end interface

interface
REAL(KIND=dp) function d2up_dI42_public(Bx, By, Bz)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bx
REAL(KIND=dp), intent(in) :: By
REAL(KIND=dp), intent(in) :: Bz
end function
end interface

interface
REAL(KIND=dp) function dv_dvp_public(v0)
use types
implicit none
REAL(KIND=dp), intent(in) :: v0
end function
end interface

interface
REAL(KIND=dp) function dvp_dI4_public(Bx, By, Bz, epsxx, epsxy, epsyy, &
      epsyz, epszx, epszz)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bx
REAL(KIND=dp), intent(in) :: By
REAL(KIND=dp), intent(in) :: Bz
REAL(KIND=dp), intent(in) :: epsxx
REAL(KIND=dp), intent(in) :: epsxy
REAL(KIND=dp), intent(in) :: epsyy
REAL(KIND=dp), intent(in) :: epsyz
REAL(KIND=dp), intent(in) :: epszx
REAL(KIND=dp), intent(in) :: epszz
end function
end interface

interface
REAL(KIND=dp) function d2vp_dI42_public(Bx, By, Bz, epsxx, epsxy, epsyy, &
      epsyz, epszx, epszz)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bx
REAL(KIND=dp), intent(in) :: By
REAL(KIND=dp), intent(in) :: Bz
REAL(KIND=dp), intent(in) :: epsxx
REAL(KIND=dp), intent(in) :: epsxy
REAL(KIND=dp), intent(in) :: epsyy
REAL(KIND=dp), intent(in) :: epsyz
REAL(KIND=dp), intent(in) :: epszx
REAL(KIND=dp), intent(in) :: epszz
end function
end interface

interface
REAL(KIND=dp) function d2vp_dI4dI5_public(Bx, By, Bz)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bx
REAL(KIND=dp), intent(in) :: By
REAL(KIND=dp), intent(in) :: Bz
end function
end interface

interface
REAL(KIND=dp) function dvp_dI5_public(Bx, By, Bz)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bx
REAL(KIND=dp), intent(in) :: By
REAL(KIND=dp), intent(in) :: Bz
end function
end interface

interface
REAL(KIND=dp) function dw_dwp_public(w0)
use types
implicit none
REAL(KIND=dp), intent(in) :: w0
end function
end interface

interface
REAL(KIND=dp) function dwp_dI4_public(Bx, By, Bz, epsxx, epsxy, epsyy, &
      epsyz, epszx, epszz)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bx
REAL(KIND=dp), intent(in) :: By
REAL(KIND=dp), intent(in) :: Bz
REAL(KIND=dp), intent(in) :: epsxx
REAL(KIND=dp), intent(in) :: epsxy
REAL(KIND=dp), intent(in) :: epsyy
REAL(KIND=dp), intent(in) :: epsyz
REAL(KIND=dp), intent(in) :: epszx
REAL(KIND=dp), intent(in) :: epszz
end function
end interface

interface
REAL(KIND=dp) function d2wp_dI42_public(Bx, By, Bz, epsxx, epsxy, epsyy, &
      epsyz, epszx, epszz)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bx
REAL(KIND=dp), intent(in) :: By
REAL(KIND=dp), intent(in) :: Bz
REAL(KIND=dp), intent(in) :: epsxx
REAL(KIND=dp), intent(in) :: epsxy
REAL(KIND=dp), intent(in) :: epsyy
REAL(KIND=dp), intent(in) :: epsyz
REAL(KIND=dp), intent(in) :: epszx
REAL(KIND=dp), intent(in) :: epszz
end function
end interface

interface
REAL(KIND=dp) function d2wp_dI4dI5_public(Bx, By, Bz, epsxx, epsxy, epsyy, &
      epsyz, epszx, epszz)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bx
REAL(KIND=dp), intent(in) :: By
REAL(KIND=dp), intent(in) :: Bz
REAL(KIND=dp), intent(in) :: epsxx
REAL(KIND=dp), intent(in) :: epsxy
REAL(KIND=dp), intent(in) :: epsyy
REAL(KIND=dp), intent(in) :: epsyz
REAL(KIND=dp), intent(in) :: epszx
REAL(KIND=dp), intent(in) :: epszz
end function
end interface

interface
REAL(KIND=dp) function d2wp_dI4dI6_public(Bx, By, Bz, epsxx, epsxy, epsyy, &
      epsyz, epszx, epszz)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bx
REAL(KIND=dp), intent(in) :: By
REAL(KIND=dp), intent(in) :: Bz
REAL(KIND=dp), intent(in) :: epsxx
REAL(KIND=dp), intent(in) :: epsxy
REAL(KIND=dp), intent(in) :: epsyy
REAL(KIND=dp), intent(in) :: epsyz
REAL(KIND=dp), intent(in) :: epszx
REAL(KIND=dp), intent(in) :: epszz
end function
end interface

interface
REAL(KIND=dp) function dwp_dI5_public(Bx, By, Bz, epsxx, epsxy, epsyy, &
      epsyz, epszx, epszz)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bx
REAL(KIND=dp), intent(in) :: By
REAL(KIND=dp), intent(in) :: Bz
REAL(KIND=dp), intent(in) :: epsxx
REAL(KIND=dp), intent(in) :: epsxy
REAL(KIND=dp), intent(in) :: epsyy
REAL(KIND=dp), intent(in) :: epsyz
REAL(KIND=dp), intent(in) :: epszx
REAL(KIND=dp), intent(in) :: epszz
end function
end interface

interface
REAL(KIND=dp) function d2wp_dI52_public(Bx, By, Bz, epsxx, epsxy, epsyy, &
      epsyz, epszx, epszz)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bx
REAL(KIND=dp), intent(in) :: By
REAL(KIND=dp), intent(in) :: Bz
REAL(KIND=dp), intent(in) :: epsxx
REAL(KIND=dp), intent(in) :: epsxy
REAL(KIND=dp), intent(in) :: epsyy
REAL(KIND=dp), intent(in) :: epsyz
REAL(KIND=dp), intent(in) :: epszx
REAL(KIND=dp), intent(in) :: epszz
end function
end interface

interface
REAL(KIND=dp) function d2wp_dI5dI6_public(Bx, By, Bz, epsxx, epsxy, epsyy, &
      epsyz, epszx, epszz)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bx
REAL(KIND=dp), intent(in) :: By
REAL(KIND=dp), intent(in) :: Bz
REAL(KIND=dp), intent(in) :: epsxx
REAL(KIND=dp), intent(in) :: epsxy
REAL(KIND=dp), intent(in) :: epsyy
REAL(KIND=dp), intent(in) :: epsyz
REAL(KIND=dp), intent(in) :: epszx
REAL(KIND=dp), intent(in) :: epszz
end function
end interface

interface
REAL(KIND=dp) function dwp_dI6_public(Bx, By, Bz, epsxx, epsxy, epsyy, &
      epsyz, epszx, epszz)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bx
REAL(KIND=dp), intent(in) :: By
REAL(KIND=dp), intent(in) :: Bz
REAL(KIND=dp), intent(in) :: epsxx
REAL(KIND=dp), intent(in) :: epsxy
REAL(KIND=dp), intent(in) :: epsyy
REAL(KIND=dp), intent(in) :: epsyz
REAL(KIND=dp), intent(in) :: epszx
REAL(KIND=dp), intent(in) :: epszz
end function
end interface

interface
REAL(KIND=dp) function d2wp_dI62_public(Bx, By, Bz, epsxx, epsxy, epsyy, &
      epsyz, epszx, epszz)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bx
REAL(KIND=dp), intent(in) :: By
REAL(KIND=dp), intent(in) :: Bz
REAL(KIND=dp), intent(in) :: epsxx
REAL(KIND=dp), intent(in) :: epsxy
REAL(KIND=dp), intent(in) :: epsyy
REAL(KIND=dp), intent(in) :: epsyz
REAL(KIND=dp), intent(in) :: epszx
REAL(KIND=dp), intent(in) :: epszz
end function
end interface

interface
REAL(KIND=dp) function dphi_dBx_public(Bx, By, Bz, epsxx, epsxy, epsyy, &
      epsyz, epszx, epszz, poisson_nu, u0, v0, w0, young_E)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bx
REAL(KIND=dp), intent(in) :: By
REAL(KIND=dp), intent(in) :: Bz
REAL(KIND=dp), intent(in) :: epsxx
REAL(KIND=dp), intent(in) :: epsxy
REAL(KIND=dp), intent(in) :: epsyy
REAL(KIND=dp), intent(in) :: epsyz
REAL(KIND=dp), intent(in) :: epszx
REAL(KIND=dp), intent(in) :: epszz
REAL(KIND=dp), intent(in) :: poisson_nu
REAL(KIND=dp), intent(in) :: u0
REAL(KIND=dp), intent(in) :: v0
REAL(KIND=dp), intent(in) :: w0
REAL(KIND=dp), intent(in) :: young_E
end function
end interface

interface
REAL(KIND=dp) function d2phi_dBx2_public(Bx, By, Bz, epsxx, epsxy, epsyy, &
      epsyz, epszx, epszz, poisson_nu, u0, v0, w0, young_E)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bx
REAL(KIND=dp), intent(in) :: By
REAL(KIND=dp), intent(in) :: Bz
REAL(KIND=dp), intent(in) :: epsxx
REAL(KIND=dp), intent(in) :: epsxy
REAL(KIND=dp), intent(in) :: epsyy
REAL(KIND=dp), intent(in) :: epsyz
REAL(KIND=dp), intent(in) :: epszx
REAL(KIND=dp), intent(in) :: epszz
REAL(KIND=dp), intent(in) :: poisson_nu
REAL(KIND=dp), intent(in) :: u0
REAL(KIND=dp), intent(in) :: v0
REAL(KIND=dp), intent(in) :: w0
REAL(KIND=dp), intent(in) :: young_E
end function
end interface

interface
REAL(KIND=dp) function d2phi_dBxdBy_public(Bx, By, Bz, epsxx, epsxy, epsyy, &
      epsyz, epszx, epszz, poisson_nu, u0, v0, w0, young_E)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bx
REAL(KIND=dp), intent(in) :: By
REAL(KIND=dp), intent(in) :: Bz
REAL(KIND=dp), intent(in) :: epsxx
REAL(KIND=dp), intent(in) :: epsxy
REAL(KIND=dp), intent(in) :: epsyy
REAL(KIND=dp), intent(in) :: epsyz
REAL(KIND=dp), intent(in) :: epszx
REAL(KIND=dp), intent(in) :: epszz
REAL(KIND=dp), intent(in) :: poisson_nu
REAL(KIND=dp), intent(in) :: u0
REAL(KIND=dp), intent(in) :: v0
REAL(KIND=dp), intent(in) :: w0
REAL(KIND=dp), intent(in) :: young_E
end function
end interface

interface
REAL(KIND=dp) function d2phi_dBxdBz_public(Bx, By, Bz, epsxx, epsxy, epsyy, &
      epsyz, epszx, epszz, poisson_nu, u0, v0, w0, young_E)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bx
REAL(KIND=dp), intent(in) :: By
REAL(KIND=dp), intent(in) :: Bz
REAL(KIND=dp), intent(in) :: epsxx
REAL(KIND=dp), intent(in) :: epsxy
REAL(KIND=dp), intent(in) :: epsyy
REAL(KIND=dp), intent(in) :: epsyz
REAL(KIND=dp), intent(in) :: epszx
REAL(KIND=dp), intent(in) :: epszz
REAL(KIND=dp), intent(in) :: poisson_nu
REAL(KIND=dp), intent(in) :: u0
REAL(KIND=dp), intent(in) :: v0
REAL(KIND=dp), intent(in) :: w0
REAL(KIND=dp), intent(in) :: young_E
end function
end interface

interface
REAL(KIND=dp) function d2phi_dBxdepsxx_public(Bx, By, Bz, epsxx, epsxy, &
      epsyy, epsyz, epszx, epszz, poisson_nu, u0, v0, w0, young_E)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bx
REAL(KIND=dp), intent(in) :: By
REAL(KIND=dp), intent(in) :: Bz
REAL(KIND=dp), intent(in) :: epsxx
REAL(KIND=dp), intent(in) :: epsxy
REAL(KIND=dp), intent(in) :: epsyy
REAL(KIND=dp), intent(in) :: epsyz
REAL(KIND=dp), intent(in) :: epszx
REAL(KIND=dp), intent(in) :: epszz
REAL(KIND=dp), intent(in) :: poisson_nu
REAL(KIND=dp), intent(in) :: u0
REAL(KIND=dp), intent(in) :: v0
REAL(KIND=dp), intent(in) :: w0
REAL(KIND=dp), intent(in) :: young_E
end function
end interface

interface
REAL(KIND=dp) function d2phi_dBxdepsxy_public(Bx, By, Bz, epsxx, epsxy, &
      epsyy, epsyz, epszx, epszz, poisson_nu, u0, v0, w0, young_E)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bx
REAL(KIND=dp), intent(in) :: By
REAL(KIND=dp), intent(in) :: Bz
REAL(KIND=dp), intent(in) :: epsxx
REAL(KIND=dp), intent(in) :: epsxy
REAL(KIND=dp), intent(in) :: epsyy
REAL(KIND=dp), intent(in) :: epsyz
REAL(KIND=dp), intent(in) :: epszx
REAL(KIND=dp), intent(in) :: epszz
REAL(KIND=dp), intent(in) :: poisson_nu
REAL(KIND=dp), intent(in) :: u0
REAL(KIND=dp), intent(in) :: v0
REAL(KIND=dp), intent(in) :: w0
REAL(KIND=dp), intent(in) :: young_E
end function
end interface

interface
REAL(KIND=dp) function d2phi_dBxdepsyy_public(Bx, By, Bz, epsxx, epsxy, &
      epsyy, epsyz, epszx, epszz, poisson_nu, u0, v0, w0, young_E)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bx
REAL(KIND=dp), intent(in) :: By
REAL(KIND=dp), intent(in) :: Bz
REAL(KIND=dp), intent(in) :: epsxx
REAL(KIND=dp), intent(in) :: epsxy
REAL(KIND=dp), intent(in) :: epsyy
REAL(KIND=dp), intent(in) :: epsyz
REAL(KIND=dp), intent(in) :: epszx
REAL(KIND=dp), intent(in) :: epszz
REAL(KIND=dp), intent(in) :: poisson_nu
REAL(KIND=dp), intent(in) :: u0
REAL(KIND=dp), intent(in) :: v0
REAL(KIND=dp), intent(in) :: w0
REAL(KIND=dp), intent(in) :: young_E
end function
end interface

interface
REAL(KIND=dp) function d2phi_dBxdepsyz_public(Bx, By, Bz, epsxx, epsxy, &
      epsyy, epsyz, epszx, epszz, poisson_nu, u0, v0, w0, young_E)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bx
REAL(KIND=dp), intent(in) :: By
REAL(KIND=dp), intent(in) :: Bz
REAL(KIND=dp), intent(in) :: epsxx
REAL(KIND=dp), intent(in) :: epsxy
REAL(KIND=dp), intent(in) :: epsyy
REAL(KIND=dp), intent(in) :: epsyz
REAL(KIND=dp), intent(in) :: epszx
REAL(KIND=dp), intent(in) :: epszz
REAL(KIND=dp), intent(in) :: poisson_nu
REAL(KIND=dp), intent(in) :: u0
REAL(KIND=dp), intent(in) :: v0
REAL(KIND=dp), intent(in) :: w0
REAL(KIND=dp), intent(in) :: young_E
end function
end interface

interface
REAL(KIND=dp) function d2phi_dBxdepszx_public(Bx, By, Bz, epsxx, epsxy, &
      epsyy, epsyz, epszx, epszz, poisson_nu, u0, v0, w0, young_E)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bx
REAL(KIND=dp), intent(in) :: By
REAL(KIND=dp), intent(in) :: Bz
REAL(KIND=dp), intent(in) :: epsxx
REAL(KIND=dp), intent(in) :: epsxy
REAL(KIND=dp), intent(in) :: epsyy
REAL(KIND=dp), intent(in) :: epsyz
REAL(KIND=dp), intent(in) :: epszx
REAL(KIND=dp), intent(in) :: epszz
REAL(KIND=dp), intent(in) :: poisson_nu
REAL(KIND=dp), intent(in) :: u0
REAL(KIND=dp), intent(in) :: v0
REAL(KIND=dp), intent(in) :: w0
REAL(KIND=dp), intent(in) :: young_E
end function
end interface

interface
REAL(KIND=dp) function d2phi_dBxdepszz_public(Bx, By, Bz, epsxx, epsxy, &
      epsyy, epsyz, epszx, epszz, poisson_nu, u0, v0, w0, young_E)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bx
REAL(KIND=dp), intent(in) :: By
REAL(KIND=dp), intent(in) :: Bz
REAL(KIND=dp), intent(in) :: epsxx
REAL(KIND=dp), intent(in) :: epsxy
REAL(KIND=dp), intent(in) :: epsyy
REAL(KIND=dp), intent(in) :: epsyz
REAL(KIND=dp), intent(in) :: epszx
REAL(KIND=dp), intent(in) :: epszz
REAL(KIND=dp), intent(in) :: poisson_nu
REAL(KIND=dp), intent(in) :: u0
REAL(KIND=dp), intent(in) :: v0
REAL(KIND=dp), intent(in) :: w0
REAL(KIND=dp), intent(in) :: young_E
end function
end interface

interface
REAL(KIND=dp) function dphi_dBy_public(Bx, By, Bz, epsxx, epsxy, epsyy, &
      epsyz, epszx, epszz, poisson_nu, u0, v0, w0, young_E)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bx
REAL(KIND=dp), intent(in) :: By
REAL(KIND=dp), intent(in) :: Bz
REAL(KIND=dp), intent(in) :: epsxx
REAL(KIND=dp), intent(in) :: epsxy
REAL(KIND=dp), intent(in) :: epsyy
REAL(KIND=dp), intent(in) :: epsyz
REAL(KIND=dp), intent(in) :: epszx
REAL(KIND=dp), intent(in) :: epszz
REAL(KIND=dp), intent(in) :: poisson_nu
REAL(KIND=dp), intent(in) :: u0
REAL(KIND=dp), intent(in) :: v0
REAL(KIND=dp), intent(in) :: w0
REAL(KIND=dp), intent(in) :: young_E
end function
end interface

interface
REAL(KIND=dp) function d2phi_dBy2_public(Bx, By, Bz, epsxx, epsxy, epsyy, &
      epsyz, epszx, epszz, poisson_nu, u0, v0, w0, young_E)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bx
REAL(KIND=dp), intent(in) :: By
REAL(KIND=dp), intent(in) :: Bz
REAL(KIND=dp), intent(in) :: epsxx
REAL(KIND=dp), intent(in) :: epsxy
REAL(KIND=dp), intent(in) :: epsyy
REAL(KIND=dp), intent(in) :: epsyz
REAL(KIND=dp), intent(in) :: epszx
REAL(KIND=dp), intent(in) :: epszz
REAL(KIND=dp), intent(in) :: poisson_nu
REAL(KIND=dp), intent(in) :: u0
REAL(KIND=dp), intent(in) :: v0
REAL(KIND=dp), intent(in) :: w0
REAL(KIND=dp), intent(in) :: young_E
end function
end interface

interface
REAL(KIND=dp) function d2phi_dBydBz_public(Bx, By, Bz, epsxx, epsxy, epsyy, &
      epsyz, epszx, epszz, poisson_nu, u0, v0, w0, young_E)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bx
REAL(KIND=dp), intent(in) :: By
REAL(KIND=dp), intent(in) :: Bz
REAL(KIND=dp), intent(in) :: epsxx
REAL(KIND=dp), intent(in) :: epsxy
REAL(KIND=dp), intent(in) :: epsyy
REAL(KIND=dp), intent(in) :: epsyz
REAL(KIND=dp), intent(in) :: epszx
REAL(KIND=dp), intent(in) :: epszz
REAL(KIND=dp), intent(in) :: poisson_nu
REAL(KIND=dp), intent(in) :: u0
REAL(KIND=dp), intent(in) :: v0
REAL(KIND=dp), intent(in) :: w0
REAL(KIND=dp), intent(in) :: young_E
end function
end interface

interface
REAL(KIND=dp) function d2phi_dBydepsxx_public(Bx, By, Bz, epsxx, epsxy, &
      epsyy, epsyz, epszx, epszz, poisson_nu, u0, v0, w0, young_E)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bx
REAL(KIND=dp), intent(in) :: By
REAL(KIND=dp), intent(in) :: Bz
REAL(KIND=dp), intent(in) :: epsxx
REAL(KIND=dp), intent(in) :: epsxy
REAL(KIND=dp), intent(in) :: epsyy
REAL(KIND=dp), intent(in) :: epsyz
REAL(KIND=dp), intent(in) :: epszx
REAL(KIND=dp), intent(in) :: epszz
REAL(KIND=dp), intent(in) :: poisson_nu
REAL(KIND=dp), intent(in) :: u0
REAL(KIND=dp), intent(in) :: v0
REAL(KIND=dp), intent(in) :: w0
REAL(KIND=dp), intent(in) :: young_E
end function
end interface

interface
REAL(KIND=dp) function d2phi_dBydepsxy_public(Bx, By, Bz, epsxx, epsxy, &
      epsyy, epsyz, epszx, epszz, poisson_nu, u0, v0, w0, young_E)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bx
REAL(KIND=dp), intent(in) :: By
REAL(KIND=dp), intent(in) :: Bz
REAL(KIND=dp), intent(in) :: epsxx
REAL(KIND=dp), intent(in) :: epsxy
REAL(KIND=dp), intent(in) :: epsyy
REAL(KIND=dp), intent(in) :: epsyz
REAL(KIND=dp), intent(in) :: epszx
REAL(KIND=dp), intent(in) :: epszz
REAL(KIND=dp), intent(in) :: poisson_nu
REAL(KIND=dp), intent(in) :: u0
REAL(KIND=dp), intent(in) :: v0
REAL(KIND=dp), intent(in) :: w0
REAL(KIND=dp), intent(in) :: young_E
end function
end interface

interface
REAL(KIND=dp) function d2phi_dBydepsyy_public(Bx, By, Bz, epsxx, epsxy, &
      epsyy, epsyz, epszx, epszz, poisson_nu, u0, v0, w0, young_E)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bx
REAL(KIND=dp), intent(in) :: By
REAL(KIND=dp), intent(in) :: Bz
REAL(KIND=dp), intent(in) :: epsxx
REAL(KIND=dp), intent(in) :: epsxy
REAL(KIND=dp), intent(in) :: epsyy
REAL(KIND=dp), intent(in) :: epsyz
REAL(KIND=dp), intent(in) :: epszx
REAL(KIND=dp), intent(in) :: epszz
REAL(KIND=dp), intent(in) :: poisson_nu
REAL(KIND=dp), intent(in) :: u0
REAL(KIND=dp), intent(in) :: v0
REAL(KIND=dp), intent(in) :: w0
REAL(KIND=dp), intent(in) :: young_E
end function
end interface

interface
REAL(KIND=dp) function d2phi_dBydepsyz_public(Bx, By, Bz, epsxx, epsxy, &
      epsyy, epsyz, epszx, epszz, poisson_nu, u0, v0, w0, young_E)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bx
REAL(KIND=dp), intent(in) :: By
REAL(KIND=dp), intent(in) :: Bz
REAL(KIND=dp), intent(in) :: epsxx
REAL(KIND=dp), intent(in) :: epsxy
REAL(KIND=dp), intent(in) :: epsyy
REAL(KIND=dp), intent(in) :: epsyz
REAL(KIND=dp), intent(in) :: epszx
REAL(KIND=dp), intent(in) :: epszz
REAL(KIND=dp), intent(in) :: poisson_nu
REAL(KIND=dp), intent(in) :: u0
REAL(KIND=dp), intent(in) :: v0
REAL(KIND=dp), intent(in) :: w0
REAL(KIND=dp), intent(in) :: young_E
end function
end interface

interface
REAL(KIND=dp) function d2phi_dBydepszx_public(Bx, By, Bz, epsxx, epsxy, &
      epsyy, epsyz, epszx, epszz, poisson_nu, u0, v0, w0, young_E)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bx
REAL(KIND=dp), intent(in) :: By
REAL(KIND=dp), intent(in) :: Bz
REAL(KIND=dp), intent(in) :: epsxx
REAL(KIND=dp), intent(in) :: epsxy
REAL(KIND=dp), intent(in) :: epsyy
REAL(KIND=dp), intent(in) :: epsyz
REAL(KIND=dp), intent(in) :: epszx
REAL(KIND=dp), intent(in) :: epszz
REAL(KIND=dp), intent(in) :: poisson_nu
REAL(KIND=dp), intent(in) :: u0
REAL(KIND=dp), intent(in) :: v0
REAL(KIND=dp), intent(in) :: w0
REAL(KIND=dp), intent(in) :: young_E
end function
end interface

interface
REAL(KIND=dp) function d2phi_dBydepszz_public(Bx, By, Bz, epsxx, epsxy, &
      epsyy, epsyz, epszx, epszz, poisson_nu, u0, v0, w0, young_E)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bx
REAL(KIND=dp), intent(in) :: By
REAL(KIND=dp), intent(in) :: Bz
REAL(KIND=dp), intent(in) :: epsxx
REAL(KIND=dp), intent(in) :: epsxy
REAL(KIND=dp), intent(in) :: epsyy
REAL(KIND=dp), intent(in) :: epsyz
REAL(KIND=dp), intent(in) :: epszx
REAL(KIND=dp), intent(in) :: epszz
REAL(KIND=dp), intent(in) :: poisson_nu
REAL(KIND=dp), intent(in) :: u0
REAL(KIND=dp), intent(in) :: v0
REAL(KIND=dp), intent(in) :: w0
REAL(KIND=dp), intent(in) :: young_E
end function
end interface

interface
REAL(KIND=dp) function dphi_dBz_public(Bx, By, Bz, epsxx, epsxy, epsyy, &
      epsyz, epszx, epszz, poisson_nu, u0, v0, w0, young_E)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bx
REAL(KIND=dp), intent(in) :: By
REAL(KIND=dp), intent(in) :: Bz
REAL(KIND=dp), intent(in) :: epsxx
REAL(KIND=dp), intent(in) :: epsxy
REAL(KIND=dp), intent(in) :: epsyy
REAL(KIND=dp), intent(in) :: epsyz
REAL(KIND=dp), intent(in) :: epszx
REAL(KIND=dp), intent(in) :: epszz
REAL(KIND=dp), intent(in) :: poisson_nu
REAL(KIND=dp), intent(in) :: u0
REAL(KIND=dp), intent(in) :: v0
REAL(KIND=dp), intent(in) :: w0
REAL(KIND=dp), intent(in) :: young_E
end function
end interface

interface
REAL(KIND=dp) function d2phi_dBz2_public(Bx, By, Bz, epsxx, epsxy, epsyy, &
      epsyz, epszx, epszz, poisson_nu, u0, v0, w0, young_E)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bx
REAL(KIND=dp), intent(in) :: By
REAL(KIND=dp), intent(in) :: Bz
REAL(KIND=dp), intent(in) :: epsxx
REAL(KIND=dp), intent(in) :: epsxy
REAL(KIND=dp), intent(in) :: epsyy
REAL(KIND=dp), intent(in) :: epsyz
REAL(KIND=dp), intent(in) :: epszx
REAL(KIND=dp), intent(in) :: epszz
REAL(KIND=dp), intent(in) :: poisson_nu
REAL(KIND=dp), intent(in) :: u0
REAL(KIND=dp), intent(in) :: v0
REAL(KIND=dp), intent(in) :: w0
REAL(KIND=dp), intent(in) :: young_E
end function
end interface

interface
REAL(KIND=dp) function d2phi_dBzdepsxx_public(Bx, By, Bz, epsxx, epsxy, &
      epsyy, epsyz, epszx, epszz, poisson_nu, u0, v0, w0, young_E)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bx
REAL(KIND=dp), intent(in) :: By
REAL(KIND=dp), intent(in) :: Bz
REAL(KIND=dp), intent(in) :: epsxx
REAL(KIND=dp), intent(in) :: epsxy
REAL(KIND=dp), intent(in) :: epsyy
REAL(KIND=dp), intent(in) :: epsyz
REAL(KIND=dp), intent(in) :: epszx
REAL(KIND=dp), intent(in) :: epszz
REAL(KIND=dp), intent(in) :: poisson_nu
REAL(KIND=dp), intent(in) :: u0
REAL(KIND=dp), intent(in) :: v0
REAL(KIND=dp), intent(in) :: w0
REAL(KIND=dp), intent(in) :: young_E
end function
end interface

interface
REAL(KIND=dp) function d2phi_dBzdepsxy_public(Bx, By, Bz, epsxx, epsxy, &
      epsyy, epsyz, epszx, epszz, poisson_nu, u0, v0, w0, young_E)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bx
REAL(KIND=dp), intent(in) :: By
REAL(KIND=dp), intent(in) :: Bz
REAL(KIND=dp), intent(in) :: epsxx
REAL(KIND=dp), intent(in) :: epsxy
REAL(KIND=dp), intent(in) :: epsyy
REAL(KIND=dp), intent(in) :: epsyz
REAL(KIND=dp), intent(in) :: epszx
REAL(KIND=dp), intent(in) :: epszz
REAL(KIND=dp), intent(in) :: poisson_nu
REAL(KIND=dp), intent(in) :: u0
REAL(KIND=dp), intent(in) :: v0
REAL(KIND=dp), intent(in) :: w0
REAL(KIND=dp), intent(in) :: young_E
end function
end interface

interface
REAL(KIND=dp) function d2phi_dBzdepsyy_public(Bx, By, Bz, epsxx, epsxy, &
      epsyy, epsyz, epszx, epszz, poisson_nu, u0, v0, w0, young_E)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bx
REAL(KIND=dp), intent(in) :: By
REAL(KIND=dp), intent(in) :: Bz
REAL(KIND=dp), intent(in) :: epsxx
REAL(KIND=dp), intent(in) :: epsxy
REAL(KIND=dp), intent(in) :: epsyy
REAL(KIND=dp), intent(in) :: epsyz
REAL(KIND=dp), intent(in) :: epszx
REAL(KIND=dp), intent(in) :: epszz
REAL(KIND=dp), intent(in) :: poisson_nu
REAL(KIND=dp), intent(in) :: u0
REAL(KIND=dp), intent(in) :: v0
REAL(KIND=dp), intent(in) :: w0
REAL(KIND=dp), intent(in) :: young_E
end function
end interface

interface
REAL(KIND=dp) function d2phi_dBzdepsyz_public(Bx, By, Bz, epsxx, epsxy, &
      epsyy, epsyz, epszx, epszz, poisson_nu, u0, v0, w0, young_E)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bx
REAL(KIND=dp), intent(in) :: By
REAL(KIND=dp), intent(in) :: Bz
REAL(KIND=dp), intent(in) :: epsxx
REAL(KIND=dp), intent(in) :: epsxy
REAL(KIND=dp), intent(in) :: epsyy
REAL(KIND=dp), intent(in) :: epsyz
REAL(KIND=dp), intent(in) :: epszx
REAL(KIND=dp), intent(in) :: epszz
REAL(KIND=dp), intent(in) :: poisson_nu
REAL(KIND=dp), intent(in) :: u0
REAL(KIND=dp), intent(in) :: v0
REAL(KIND=dp), intent(in) :: w0
REAL(KIND=dp), intent(in) :: young_E
end function
end interface

interface
REAL(KIND=dp) function d2phi_dBzdepszx_public(Bx, By, Bz, epsxx, epsxy, &
      epsyy, epsyz, epszx, epszz, poisson_nu, u0, v0, w0, young_E)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bx
REAL(KIND=dp), intent(in) :: By
REAL(KIND=dp), intent(in) :: Bz
REAL(KIND=dp), intent(in) :: epsxx
REAL(KIND=dp), intent(in) :: epsxy
REAL(KIND=dp), intent(in) :: epsyy
REAL(KIND=dp), intent(in) :: epsyz
REAL(KIND=dp), intent(in) :: epszx
REAL(KIND=dp), intent(in) :: epszz
REAL(KIND=dp), intent(in) :: poisson_nu
REAL(KIND=dp), intent(in) :: u0
REAL(KIND=dp), intent(in) :: v0
REAL(KIND=dp), intent(in) :: w0
REAL(KIND=dp), intent(in) :: young_E
end function
end interface

interface
REAL(KIND=dp) function d2phi_dBzdepszz_public(Bx, By, Bz, epsxx, epsxy, &
      epsyy, epsyz, epszx, epszz, poisson_nu, u0, v0, w0, young_E)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bx
REAL(KIND=dp), intent(in) :: By
REAL(KIND=dp), intent(in) :: Bz
REAL(KIND=dp), intent(in) :: epsxx
REAL(KIND=dp), intent(in) :: epsxy
REAL(KIND=dp), intent(in) :: epsyy
REAL(KIND=dp), intent(in) :: epsyz
REAL(KIND=dp), intent(in) :: epszx
REAL(KIND=dp), intent(in) :: epszz
REAL(KIND=dp), intent(in) :: poisson_nu
REAL(KIND=dp), intent(in) :: u0
REAL(KIND=dp), intent(in) :: v0
REAL(KIND=dp), intent(in) :: w0
REAL(KIND=dp), intent(in) :: young_E
end function
end interface

interface
REAL(KIND=dp) function dphi_depsxx_public(Bx, By, Bz, epsxx, epsxy, epsyy, &
      epsyz, epszx, epszz, poisson_nu, u0, v0, w0, young_E)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bx
REAL(KIND=dp), intent(in) :: By
REAL(KIND=dp), intent(in) :: Bz
REAL(KIND=dp), intent(in) :: epsxx
REAL(KIND=dp), intent(in) :: epsxy
REAL(KIND=dp), intent(in) :: epsyy
REAL(KIND=dp), intent(in) :: epsyz
REAL(KIND=dp), intent(in) :: epszx
REAL(KIND=dp), intent(in) :: epszz
REAL(KIND=dp), intent(in) :: poisson_nu
REAL(KIND=dp), intent(in) :: u0
REAL(KIND=dp), intent(in) :: v0
REAL(KIND=dp), intent(in) :: w0
REAL(KIND=dp), intent(in) :: young_E
end function
end interface

interface
REAL(KIND=dp) function d2phi_depsxx2_public(Bx, By, Bz, epsxx, epsxy, epsyy, &
      epsyz, epszx, epszz, poisson_nu, u0, v0, w0, young_E)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bx
REAL(KIND=dp), intent(in) :: By
REAL(KIND=dp), intent(in) :: Bz
REAL(KIND=dp), intent(in) :: epsxx
REAL(KIND=dp), intent(in) :: epsxy
REAL(KIND=dp), intent(in) :: epsyy
REAL(KIND=dp), intent(in) :: epsyz
REAL(KIND=dp), intent(in) :: epszx
REAL(KIND=dp), intent(in) :: epszz
REAL(KIND=dp), intent(in) :: poisson_nu
REAL(KIND=dp), intent(in) :: u0
REAL(KIND=dp), intent(in) :: v0
REAL(KIND=dp), intent(in) :: w0
REAL(KIND=dp), intent(in) :: young_E
end function
end interface

interface
REAL(KIND=dp) function d2phi_depsxxdepsxy_public(Bx, By, Bz, epsxx, epsxy, &
      epsyy, epsyz, epszx, epszz, poisson_nu, u0, v0, w0, young_E)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bx
REAL(KIND=dp), intent(in) :: By
REAL(KIND=dp), intent(in) :: Bz
REAL(KIND=dp), intent(in) :: epsxx
REAL(KIND=dp), intent(in) :: epsxy
REAL(KIND=dp), intent(in) :: epsyy
REAL(KIND=dp), intent(in) :: epsyz
REAL(KIND=dp), intent(in) :: epszx
REAL(KIND=dp), intent(in) :: epszz
REAL(KIND=dp), intent(in) :: poisson_nu
REAL(KIND=dp), intent(in) :: u0
REAL(KIND=dp), intent(in) :: v0
REAL(KIND=dp), intent(in) :: w0
REAL(KIND=dp), intent(in) :: young_E
end function
end interface

interface
REAL(KIND=dp) function d2phi_depsxxdepsyy_public(Bx, By, Bz, epsxx, epsxy, &
      epsyy, epsyz, epszx, epszz, poisson_nu, u0, v0, w0, young_E)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bx
REAL(KIND=dp), intent(in) :: By
REAL(KIND=dp), intent(in) :: Bz
REAL(KIND=dp), intent(in) :: epsxx
REAL(KIND=dp), intent(in) :: epsxy
REAL(KIND=dp), intent(in) :: epsyy
REAL(KIND=dp), intent(in) :: epsyz
REAL(KIND=dp), intent(in) :: epszx
REAL(KIND=dp), intent(in) :: epszz
REAL(KIND=dp), intent(in) :: poisson_nu
REAL(KIND=dp), intent(in) :: u0
REAL(KIND=dp), intent(in) :: v0
REAL(KIND=dp), intent(in) :: w0
REAL(KIND=dp), intent(in) :: young_E
end function
end interface

interface
REAL(KIND=dp) function d2phi_depsxxdepsyz_public(Bx, By, Bz, epsxx, epsxy, &
      epsyy, epsyz, epszx, epszz, poisson_nu, u0, v0, w0, young_E)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bx
REAL(KIND=dp), intent(in) :: By
REAL(KIND=dp), intent(in) :: Bz
REAL(KIND=dp), intent(in) :: epsxx
REAL(KIND=dp), intent(in) :: epsxy
REAL(KIND=dp), intent(in) :: epsyy
REAL(KIND=dp), intent(in) :: epsyz
REAL(KIND=dp), intent(in) :: epszx
REAL(KIND=dp), intent(in) :: epszz
REAL(KIND=dp), intent(in) :: poisson_nu
REAL(KIND=dp), intent(in) :: u0
REAL(KIND=dp), intent(in) :: v0
REAL(KIND=dp), intent(in) :: w0
REAL(KIND=dp), intent(in) :: young_E
end function
end interface

interface
REAL(KIND=dp) function d2phi_depsxxdepszx_public(Bx, By, Bz, epsxx, epsxy, &
      epsyy, epsyz, epszx, epszz, poisson_nu, u0, v0, w0, young_E)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bx
REAL(KIND=dp), intent(in) :: By
REAL(KIND=dp), intent(in) :: Bz
REAL(KIND=dp), intent(in) :: epsxx
REAL(KIND=dp), intent(in) :: epsxy
REAL(KIND=dp), intent(in) :: epsyy
REAL(KIND=dp), intent(in) :: epsyz
REAL(KIND=dp), intent(in) :: epszx
REAL(KIND=dp), intent(in) :: epszz
REAL(KIND=dp), intent(in) :: poisson_nu
REAL(KIND=dp), intent(in) :: u0
REAL(KIND=dp), intent(in) :: v0
REAL(KIND=dp), intent(in) :: w0
REAL(KIND=dp), intent(in) :: young_E
end function
end interface

interface
REAL(KIND=dp) function d2phi_depsxxdepszz_public(Bx, By, Bz, epsxx, epsxy, &
      epsyy, epsyz, epszx, epszz, poisson_nu, u0, v0, w0, young_E)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bx
REAL(KIND=dp), intent(in) :: By
REAL(KIND=dp), intent(in) :: Bz
REAL(KIND=dp), intent(in) :: epsxx
REAL(KIND=dp), intent(in) :: epsxy
REAL(KIND=dp), intent(in) :: epsyy
REAL(KIND=dp), intent(in) :: epsyz
REAL(KIND=dp), intent(in) :: epszx
REAL(KIND=dp), intent(in) :: epszz
REAL(KIND=dp), intent(in) :: poisson_nu
REAL(KIND=dp), intent(in) :: u0
REAL(KIND=dp), intent(in) :: v0
REAL(KIND=dp), intent(in) :: w0
REAL(KIND=dp), intent(in) :: young_E
end function
end interface

interface
REAL(KIND=dp) function dphi_depsxy_public(Bx, By, Bz, epsxx, epsxy, epsyy, &
      epsyz, epszx, epszz, poisson_nu, u0, v0, w0, young_E)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bx
REAL(KIND=dp), intent(in) :: By
REAL(KIND=dp), intent(in) :: Bz
REAL(KIND=dp), intent(in) :: epsxx
REAL(KIND=dp), intent(in) :: epsxy
REAL(KIND=dp), intent(in) :: epsyy
REAL(KIND=dp), intent(in) :: epsyz
REAL(KIND=dp), intent(in) :: epszx
REAL(KIND=dp), intent(in) :: epszz
REAL(KIND=dp), intent(in) :: poisson_nu
REAL(KIND=dp), intent(in) :: u0
REAL(KIND=dp), intent(in) :: v0
REAL(KIND=dp), intent(in) :: w0
REAL(KIND=dp), intent(in) :: young_E
end function
end interface

interface
REAL(KIND=dp) function d2phi_depsxy2_public(Bx, By, Bz, epsxx, epsxy, epsyy, &
      epsyz, epszx, epszz, poisson_nu, u0, v0, w0, young_E)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bx
REAL(KIND=dp), intent(in) :: By
REAL(KIND=dp), intent(in) :: Bz
REAL(KIND=dp), intent(in) :: epsxx
REAL(KIND=dp), intent(in) :: epsxy
REAL(KIND=dp), intent(in) :: epsyy
REAL(KIND=dp), intent(in) :: epsyz
REAL(KIND=dp), intent(in) :: epszx
REAL(KIND=dp), intent(in) :: epszz
REAL(KIND=dp), intent(in) :: poisson_nu
REAL(KIND=dp), intent(in) :: u0
REAL(KIND=dp), intent(in) :: v0
REAL(KIND=dp), intent(in) :: w0
REAL(KIND=dp), intent(in) :: young_E
end function
end interface

interface
REAL(KIND=dp) function d2phi_depsxydepsyy_public(Bx, By, Bz, epsxx, epsxy, &
      epsyy, epsyz, epszx, epszz, poisson_nu, u0, v0, w0, young_E)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bx
REAL(KIND=dp), intent(in) :: By
REAL(KIND=dp), intent(in) :: Bz
REAL(KIND=dp), intent(in) :: epsxx
REAL(KIND=dp), intent(in) :: epsxy
REAL(KIND=dp), intent(in) :: epsyy
REAL(KIND=dp), intent(in) :: epsyz
REAL(KIND=dp), intent(in) :: epszx
REAL(KIND=dp), intent(in) :: epszz
REAL(KIND=dp), intent(in) :: poisson_nu
REAL(KIND=dp), intent(in) :: u0
REAL(KIND=dp), intent(in) :: v0
REAL(KIND=dp), intent(in) :: w0
REAL(KIND=dp), intent(in) :: young_E
end function
end interface

interface
REAL(KIND=dp) function d2phi_depsxydepsyz_public(Bx, By, Bz, epsxx, epsxy, &
      epsyy, epsyz, epszx, epszz, poisson_nu, u0, v0, w0, young_E)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bx
REAL(KIND=dp), intent(in) :: By
REAL(KIND=dp), intent(in) :: Bz
REAL(KIND=dp), intent(in) :: epsxx
REAL(KIND=dp), intent(in) :: epsxy
REAL(KIND=dp), intent(in) :: epsyy
REAL(KIND=dp), intent(in) :: epsyz
REAL(KIND=dp), intent(in) :: epszx
REAL(KIND=dp), intent(in) :: epszz
REAL(KIND=dp), intent(in) :: poisson_nu
REAL(KIND=dp), intent(in) :: u0
REAL(KIND=dp), intent(in) :: v0
REAL(KIND=dp), intent(in) :: w0
REAL(KIND=dp), intent(in) :: young_E
end function
end interface

interface
REAL(KIND=dp) function d2phi_depsxydepszx_public(Bx, By, Bz, epsxx, epsxy, &
      epsyy, epsyz, epszx, epszz, poisson_nu, u0, v0, w0, young_E)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bx
REAL(KIND=dp), intent(in) :: By
REAL(KIND=dp), intent(in) :: Bz
REAL(KIND=dp), intent(in) :: epsxx
REAL(KIND=dp), intent(in) :: epsxy
REAL(KIND=dp), intent(in) :: epsyy
REAL(KIND=dp), intent(in) :: epsyz
REAL(KIND=dp), intent(in) :: epszx
REAL(KIND=dp), intent(in) :: epszz
REAL(KIND=dp), intent(in) :: poisson_nu
REAL(KIND=dp), intent(in) :: u0
REAL(KIND=dp), intent(in) :: v0
REAL(KIND=dp), intent(in) :: w0
REAL(KIND=dp), intent(in) :: young_E
end function
end interface

interface
REAL(KIND=dp) function d2phi_depsxydepszz_public(Bx, By, Bz, epsxx, epsxy, &
      epsyy, epsyz, epszx, epszz, poisson_nu, u0, v0, w0, young_E)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bx
REAL(KIND=dp), intent(in) :: By
REAL(KIND=dp), intent(in) :: Bz
REAL(KIND=dp), intent(in) :: epsxx
REAL(KIND=dp), intent(in) :: epsxy
REAL(KIND=dp), intent(in) :: epsyy
REAL(KIND=dp), intent(in) :: epsyz
REAL(KIND=dp), intent(in) :: epszx
REAL(KIND=dp), intent(in) :: epszz
REAL(KIND=dp), intent(in) :: poisson_nu
REAL(KIND=dp), intent(in) :: u0
REAL(KIND=dp), intent(in) :: v0
REAL(KIND=dp), intent(in) :: w0
REAL(KIND=dp), intent(in) :: young_E
end function
end interface

interface
REAL(KIND=dp) function dphi_depsyy_public(Bx, By, Bz, epsxx, epsxy, epsyy, &
      epsyz, epszx, epszz, poisson_nu, u0, v0, w0, young_E)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bx
REAL(KIND=dp), intent(in) :: By
REAL(KIND=dp), intent(in) :: Bz
REAL(KIND=dp), intent(in) :: epsxx
REAL(KIND=dp), intent(in) :: epsxy
REAL(KIND=dp), intent(in) :: epsyy
REAL(KIND=dp), intent(in) :: epsyz
REAL(KIND=dp), intent(in) :: epszx
REAL(KIND=dp), intent(in) :: epszz
REAL(KIND=dp), intent(in) :: poisson_nu
REAL(KIND=dp), intent(in) :: u0
REAL(KIND=dp), intent(in) :: v0
REAL(KIND=dp), intent(in) :: w0
REAL(KIND=dp), intent(in) :: young_E
end function
end interface

interface
REAL(KIND=dp) function d2phi_depsyy2_public(Bx, By, Bz, epsxx, epsxy, epsyy, &
      epsyz, epszx, epszz, poisson_nu, u0, v0, w0, young_E)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bx
REAL(KIND=dp), intent(in) :: By
REAL(KIND=dp), intent(in) :: Bz
REAL(KIND=dp), intent(in) :: epsxx
REAL(KIND=dp), intent(in) :: epsxy
REAL(KIND=dp), intent(in) :: epsyy
REAL(KIND=dp), intent(in) :: epsyz
REAL(KIND=dp), intent(in) :: epszx
REAL(KIND=dp), intent(in) :: epszz
REAL(KIND=dp), intent(in) :: poisson_nu
REAL(KIND=dp), intent(in) :: u0
REAL(KIND=dp), intent(in) :: v0
REAL(KIND=dp), intent(in) :: w0
REAL(KIND=dp), intent(in) :: young_E
end function
end interface

interface
REAL(KIND=dp) function d2phi_depsyydepsyz_public(Bx, By, Bz, epsxx, epsxy, &
      epsyy, epsyz, epszx, epszz, poisson_nu, u0, v0, w0, young_E)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bx
REAL(KIND=dp), intent(in) :: By
REAL(KIND=dp), intent(in) :: Bz
REAL(KIND=dp), intent(in) :: epsxx
REAL(KIND=dp), intent(in) :: epsxy
REAL(KIND=dp), intent(in) :: epsyy
REAL(KIND=dp), intent(in) :: epsyz
REAL(KIND=dp), intent(in) :: epszx
REAL(KIND=dp), intent(in) :: epszz
REAL(KIND=dp), intent(in) :: poisson_nu
REAL(KIND=dp), intent(in) :: u0
REAL(KIND=dp), intent(in) :: v0
REAL(KIND=dp), intent(in) :: w0
REAL(KIND=dp), intent(in) :: young_E
end function
end interface

interface
REAL(KIND=dp) function d2phi_depsyydepszx_public(Bx, By, Bz, epsxx, epsxy, &
      epsyy, epsyz, epszx, epszz, poisson_nu, u0, v0, w0, young_E)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bx
REAL(KIND=dp), intent(in) :: By
REAL(KIND=dp), intent(in) :: Bz
REAL(KIND=dp), intent(in) :: epsxx
REAL(KIND=dp), intent(in) :: epsxy
REAL(KIND=dp), intent(in) :: epsyy
REAL(KIND=dp), intent(in) :: epsyz
REAL(KIND=dp), intent(in) :: epszx
REAL(KIND=dp), intent(in) :: epszz
REAL(KIND=dp), intent(in) :: poisson_nu
REAL(KIND=dp), intent(in) :: u0
REAL(KIND=dp), intent(in) :: v0
REAL(KIND=dp), intent(in) :: w0
REAL(KIND=dp), intent(in) :: young_E
end function
end interface

interface
REAL(KIND=dp) function d2phi_depsyydepszz_public(Bx, By, Bz, epsxx, epsxy, &
      epsyy, epsyz, epszx, epszz, poisson_nu, u0, v0, w0, young_E)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bx
REAL(KIND=dp), intent(in) :: By
REAL(KIND=dp), intent(in) :: Bz
REAL(KIND=dp), intent(in) :: epsxx
REAL(KIND=dp), intent(in) :: epsxy
REAL(KIND=dp), intent(in) :: epsyy
REAL(KIND=dp), intent(in) :: epsyz
REAL(KIND=dp), intent(in) :: epszx
REAL(KIND=dp), intent(in) :: epszz
REAL(KIND=dp), intent(in) :: poisson_nu
REAL(KIND=dp), intent(in) :: u0
REAL(KIND=dp), intent(in) :: v0
REAL(KIND=dp), intent(in) :: w0
REAL(KIND=dp), intent(in) :: young_E
end function
end interface

interface
REAL(KIND=dp) function dphi_depsyz_public(Bx, By, Bz, epsxx, epsxy, epsyy, &
      epsyz, epszx, epszz, poisson_nu, u0, v0, w0, young_E)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bx
REAL(KIND=dp), intent(in) :: By
REAL(KIND=dp), intent(in) :: Bz
REAL(KIND=dp), intent(in) :: epsxx
REAL(KIND=dp), intent(in) :: epsxy
REAL(KIND=dp), intent(in) :: epsyy
REAL(KIND=dp), intent(in) :: epsyz
REAL(KIND=dp), intent(in) :: epszx
REAL(KIND=dp), intent(in) :: epszz
REAL(KIND=dp), intent(in) :: poisson_nu
REAL(KIND=dp), intent(in) :: u0
REAL(KIND=dp), intent(in) :: v0
REAL(KIND=dp), intent(in) :: w0
REAL(KIND=dp), intent(in) :: young_E
end function
end interface

interface
REAL(KIND=dp) function d2phi_depsyz2_public(Bx, By, Bz, epsxx, epsxy, epsyy, &
      epsyz, epszx, epszz, poisson_nu, u0, v0, w0, young_E)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bx
REAL(KIND=dp), intent(in) :: By
REAL(KIND=dp), intent(in) :: Bz
REAL(KIND=dp), intent(in) :: epsxx
REAL(KIND=dp), intent(in) :: epsxy
REAL(KIND=dp), intent(in) :: epsyy
REAL(KIND=dp), intent(in) :: epsyz
REAL(KIND=dp), intent(in) :: epszx
REAL(KIND=dp), intent(in) :: epszz
REAL(KIND=dp), intent(in) :: poisson_nu
REAL(KIND=dp), intent(in) :: u0
REAL(KIND=dp), intent(in) :: v0
REAL(KIND=dp), intent(in) :: w0
REAL(KIND=dp), intent(in) :: young_E
end function
end interface

interface
REAL(KIND=dp) function d2phi_depsyzdepszx_public(Bx, By, Bz, epsxx, epsxy, &
      epsyy, epsyz, epszx, epszz, poisson_nu, u0, v0, w0, young_E)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bx
REAL(KIND=dp), intent(in) :: By
REAL(KIND=dp), intent(in) :: Bz
REAL(KIND=dp), intent(in) :: epsxx
REAL(KIND=dp), intent(in) :: epsxy
REAL(KIND=dp), intent(in) :: epsyy
REAL(KIND=dp), intent(in) :: epsyz
REAL(KIND=dp), intent(in) :: epszx
REAL(KIND=dp), intent(in) :: epszz
REAL(KIND=dp), intent(in) :: poisson_nu
REAL(KIND=dp), intent(in) :: u0
REAL(KIND=dp), intent(in) :: v0
REAL(KIND=dp), intent(in) :: w0
REAL(KIND=dp), intent(in) :: young_E
end function
end interface

interface
REAL(KIND=dp) function d2phi_depsyzdepszz_public(Bx, By, Bz, epsxx, epsxy, &
      epsyy, epsyz, epszx, epszz, poisson_nu, u0, v0, w0, young_E)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bx
REAL(KIND=dp), intent(in) :: By
REAL(KIND=dp), intent(in) :: Bz
REAL(KIND=dp), intent(in) :: epsxx
REAL(KIND=dp), intent(in) :: epsxy
REAL(KIND=dp), intent(in) :: epsyy
REAL(KIND=dp), intent(in) :: epsyz
REAL(KIND=dp), intent(in) :: epszx
REAL(KIND=dp), intent(in) :: epszz
REAL(KIND=dp), intent(in) :: poisson_nu
REAL(KIND=dp), intent(in) :: u0
REAL(KIND=dp), intent(in) :: v0
REAL(KIND=dp), intent(in) :: w0
REAL(KIND=dp), intent(in) :: young_E
end function
end interface

interface
REAL(KIND=dp) function dphi_depszx_public(Bx, By, Bz, epsxx, epsxy, epsyy, &
      epsyz, epszx, epszz, poisson_nu, u0, v0, w0, young_E)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bx
REAL(KIND=dp), intent(in) :: By
REAL(KIND=dp), intent(in) :: Bz
REAL(KIND=dp), intent(in) :: epsxx
REAL(KIND=dp), intent(in) :: epsxy
REAL(KIND=dp), intent(in) :: epsyy
REAL(KIND=dp), intent(in) :: epsyz
REAL(KIND=dp), intent(in) :: epszx
REAL(KIND=dp), intent(in) :: epszz
REAL(KIND=dp), intent(in) :: poisson_nu
REAL(KIND=dp), intent(in) :: u0
REAL(KIND=dp), intent(in) :: v0
REAL(KIND=dp), intent(in) :: w0
REAL(KIND=dp), intent(in) :: young_E
end function
end interface

interface
REAL(KIND=dp) function d2phi_depszx2_public(Bx, By, Bz, epsxx, epsxy, epsyy, &
      epsyz, epszx, epszz, poisson_nu, u0, v0, w0, young_E)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bx
REAL(KIND=dp), intent(in) :: By
REAL(KIND=dp), intent(in) :: Bz
REAL(KIND=dp), intent(in) :: epsxx
REAL(KIND=dp), intent(in) :: epsxy
REAL(KIND=dp), intent(in) :: epsyy
REAL(KIND=dp), intent(in) :: epsyz
REAL(KIND=dp), intent(in) :: epszx
REAL(KIND=dp), intent(in) :: epszz
REAL(KIND=dp), intent(in) :: poisson_nu
REAL(KIND=dp), intent(in) :: u0
REAL(KIND=dp), intent(in) :: v0
REAL(KIND=dp), intent(in) :: w0
REAL(KIND=dp), intent(in) :: young_E
end function
end interface

interface
REAL(KIND=dp) function d2phi_depszxdepszz_public(Bx, By, Bz, epsxx, epsxy, &
      epsyy, epsyz, epszx, epszz, poisson_nu, u0, v0, w0, young_E)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bx
REAL(KIND=dp), intent(in) :: By
REAL(KIND=dp), intent(in) :: Bz
REAL(KIND=dp), intent(in) :: epsxx
REAL(KIND=dp), intent(in) :: epsxy
REAL(KIND=dp), intent(in) :: epsyy
REAL(KIND=dp), intent(in) :: epsyz
REAL(KIND=dp), intent(in) :: epszx
REAL(KIND=dp), intent(in) :: epszz
REAL(KIND=dp), intent(in) :: poisson_nu
REAL(KIND=dp), intent(in) :: u0
REAL(KIND=dp), intent(in) :: v0
REAL(KIND=dp), intent(in) :: w0
REAL(KIND=dp), intent(in) :: young_E
end function
end interface

interface
REAL(KIND=dp) function dphi_depszz_public(Bx, By, Bz, epsxx, epsxy, epsyy, &
      epsyz, epszx, epszz, poisson_nu, u0, v0, w0, young_E)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bx
REAL(KIND=dp), intent(in) :: By
REAL(KIND=dp), intent(in) :: Bz
REAL(KIND=dp), intent(in) :: epsxx
REAL(KIND=dp), intent(in) :: epsxy
REAL(KIND=dp), intent(in) :: epsyy
REAL(KIND=dp), intent(in) :: epsyz
REAL(KIND=dp), intent(in) :: epszx
REAL(KIND=dp), intent(in) :: epszz
REAL(KIND=dp), intent(in) :: poisson_nu
REAL(KIND=dp), intent(in) :: u0
REAL(KIND=dp), intent(in) :: v0
REAL(KIND=dp), intent(in) :: w0
REAL(KIND=dp), intent(in) :: young_E
end function
end interface

interface
REAL(KIND=dp) function d2phi_depszz2_public(Bx, By, Bz, epsxx, epsxy, epsyy, &
      epsyz, epszx, epszz, poisson_nu, u0, v0, w0, young_E)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bx
REAL(KIND=dp), intent(in) :: By
REAL(KIND=dp), intent(in) :: Bz
REAL(KIND=dp), intent(in) :: epsxx
REAL(KIND=dp), intent(in) :: epsxy
REAL(KIND=dp), intent(in) :: epsyy
REAL(KIND=dp), intent(in) :: epsyz
REAL(KIND=dp), intent(in) :: epszx
REAL(KIND=dp), intent(in) :: epszz
REAL(KIND=dp), intent(in) :: poisson_nu
REAL(KIND=dp), intent(in) :: u0
REAL(KIND=dp), intent(in) :: v0
REAL(KIND=dp), intent(in) :: w0
REAL(KIND=dp), intent(in) :: young_E
end function
end interface

interface
REAL(KIND=dp) function exx_public(epsxx, epsyy, epszz)
use types
implicit none
REAL(KIND=dp), intent(in) :: epsxx
REAL(KIND=dp), intent(in) :: epsyy
REAL(KIND=dp), intent(in) :: epszz
end function
end interface

interface
REAL(KIND=dp) function exy_public(epsxy)
use types
implicit none
REAL(KIND=dp), intent(in) :: epsxy
end function
end interface

interface
REAL(KIND=dp) function eyy_public(epsxx, epsyy, epszz)
use types
implicit none
REAL(KIND=dp), intent(in) :: epsxx
REAL(KIND=dp), intent(in) :: epsyy
REAL(KIND=dp), intent(in) :: epszz
end function
end interface

interface
REAL(KIND=dp) function eyz_public(epsyz)
use types
implicit none
REAL(KIND=dp), intent(in) :: epsyz
end function
end interface

interface
REAL(KIND=dp) function ezx_public(epszx)
use types
implicit none
REAL(KIND=dp), intent(in) :: epszx
end function
end interface

interface
REAL(KIND=dp) function ezz_public(epsxx, epsyy, epszz)
use types
implicit none
REAL(KIND=dp), intent(in) :: epsxx
REAL(KIND=dp), intent(in) :: epsyy
REAL(KIND=dp), intent(in) :: epszz
end function
end interface

interface
REAL(KIND=dp) function I4_public(Bx, By, Bz)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bx
REAL(KIND=dp), intent(in) :: By
REAL(KIND=dp), intent(in) :: Bz
end function
end interface

interface
REAL(KIND=dp) function I5_public(Bx, By, Bz, epsxx, epsxy, epsyy, epsyz, &
      epszx, epszz)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bx
REAL(KIND=dp), intent(in) :: By
REAL(KIND=dp), intent(in) :: Bz
REAL(KIND=dp), intent(in) :: epsxx
REAL(KIND=dp), intent(in) :: epsxy
REAL(KIND=dp), intent(in) :: epsyy
REAL(KIND=dp), intent(in) :: epsyz
REAL(KIND=dp), intent(in) :: epszx
REAL(KIND=dp), intent(in) :: epszz
end function
end interface

interface
REAL(KIND=dp) function I6_public(Bx, By, Bz, epsxx, epsxy, epsyy, epsyz, &
      epszx, epszz)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bx
REAL(KIND=dp), intent(in) :: By
REAL(KIND=dp), intent(in) :: Bz
REAL(KIND=dp), intent(in) :: epsxx
REAL(KIND=dp), intent(in) :: epsxy
REAL(KIND=dp), intent(in) :: epsyy
REAL(KIND=dp), intent(in) :: epsyz
REAL(KIND=dp), intent(in) :: epszx
REAL(KIND=dp), intent(in) :: epszz
end function
end interface

interface
REAL(KIND=dp) function u_public(Bx, By, Bz, u0)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bx
REAL(KIND=dp), intent(in) :: By
REAL(KIND=dp), intent(in) :: Bz
REAL(KIND=dp), intent(in) :: u0
end function
end interface

interface
REAL(KIND=dp) function up_public(Bx, By, Bz)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bx
REAL(KIND=dp), intent(in) :: By
REAL(KIND=dp), intent(in) :: Bz
end function
end interface

interface
REAL(KIND=dp) function v_public(Bx, By, Bz, epsxx, epsxy, epsyy, epsyz, &
      epszx, epszz, v0)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bx
REAL(KIND=dp), intent(in) :: By
REAL(KIND=dp), intent(in) :: Bz
REAL(KIND=dp), intent(in) :: epsxx
REAL(KIND=dp), intent(in) :: epsxy
REAL(KIND=dp), intent(in) :: epsyy
REAL(KIND=dp), intent(in) :: epsyz
REAL(KIND=dp), intent(in) :: epszx
REAL(KIND=dp), intent(in) :: epszz
REAL(KIND=dp), intent(in) :: v0
end function
end interface

interface
REAL(KIND=dp) function vp_public(Bx, By, Bz, epsxx, epsxy, epsyy, epsyz, &
      epszx, epszz)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bx
REAL(KIND=dp), intent(in) :: By
REAL(KIND=dp), intent(in) :: Bz
REAL(KIND=dp), intent(in) :: epsxx
REAL(KIND=dp), intent(in) :: epsxy
REAL(KIND=dp), intent(in) :: epsyy
REAL(KIND=dp), intent(in) :: epsyz
REAL(KIND=dp), intent(in) :: epszx
REAL(KIND=dp), intent(in) :: epszz
end function
end interface

interface
REAL(KIND=dp) function w_public(Bx, By, Bz, epsxx, epsxy, epsyy, epsyz, &
      epszx, epszz, w0)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bx
REAL(KIND=dp), intent(in) :: By
REAL(KIND=dp), intent(in) :: Bz
REAL(KIND=dp), intent(in) :: epsxx
REAL(KIND=dp), intent(in) :: epsxy
REAL(KIND=dp), intent(in) :: epsyy
REAL(KIND=dp), intent(in) :: epsyz
REAL(KIND=dp), intent(in) :: epszx
REAL(KIND=dp), intent(in) :: epszz
REAL(KIND=dp), intent(in) :: w0
end function
end interface

interface
REAL(KIND=dp) function wp_public(Bx, By, Bz, epsxx, epsxy, epsyy, epsyz, &
      epszx, epszz)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bx
REAL(KIND=dp), intent(in) :: By
REAL(KIND=dp), intent(in) :: Bz
REAL(KIND=dp), intent(in) :: epsxx
REAL(KIND=dp), intent(in) :: epsxy
REAL(KIND=dp), intent(in) :: epsyy
REAL(KIND=dp), intent(in) :: epsyz
REAL(KIND=dp), intent(in) :: epszx
REAL(KIND=dp), intent(in) :: epszz
end function
end interface

interface
REAL(KIND=dp) function epsM_public(epsxx, epsyy, epszz)
use types
implicit none
REAL(KIND=dp), intent(in) :: epsxx
REAL(KIND=dp), intent(in) :: epsyy
REAL(KIND=dp), intent(in) :: epszz
end function
end interface

interface
REAL(KIND=dp) function phip_public(Bx, By, Bz, epsxx, epsxy, epsyy, epsyz, &
      epszx, epszz, poisson_nu, u0, v0, w0, young_E)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bx
REAL(KIND=dp), intent(in) :: By
REAL(KIND=dp), intent(in) :: Bz
REAL(KIND=dp), intent(in) :: epsxx
REAL(KIND=dp), intent(in) :: epsxy
REAL(KIND=dp), intent(in) :: epsyy
REAL(KIND=dp), intent(in) :: epsyz
REAL(KIND=dp), intent(in) :: epszx
REAL(KIND=dp), intent(in) :: epszz
REAL(KIND=dp), intent(in) :: poisson_nu
REAL(KIND=dp), intent(in) :: u0
REAL(KIND=dp), intent(in) :: v0
REAL(KIND=dp), intent(in) :: w0
REAL(KIND=dp), intent(in) :: young_E
end function
end interface

interface
REAL(KIND=dp) function phi_public(Bx, By, Bz, epsxx, epsxy, epsyy, epsyz, &
      epszx, epszz, poisson_nu, u0, v0, w0, young_E)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bx
REAL(KIND=dp), intent(in) :: By
REAL(KIND=dp), intent(in) :: Bz
REAL(KIND=dp), intent(in) :: epsxx
REAL(KIND=dp), intent(in) :: epsxy
REAL(KIND=dp), intent(in) :: epsyy
REAL(KIND=dp), intent(in) :: epsyz
REAL(KIND=dp), intent(in) :: epszx
REAL(KIND=dp), intent(in) :: epszz
REAL(KIND=dp), intent(in) :: poisson_nu
REAL(KIND=dp), intent(in) :: u0
REAL(KIND=dp), intent(in) :: v0
REAL(KIND=dp), intent(in) :: w0
REAL(KIND=dp), intent(in) :: young_E
end function
end interface

interface
REAL(KIND=dp) function dphi_du_public(Bx, By, Bz, epsxx, epsxy, epsyy, &
      epsyz, epszx, epszz, poisson_nu, u0, v0, w0, young_E)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bx
REAL(KIND=dp), intent(in) :: By
REAL(KIND=dp), intent(in) :: Bz
REAL(KIND=dp), intent(in) :: epsxx
REAL(KIND=dp), intent(in) :: epsxy
REAL(KIND=dp), intent(in) :: epsyy
REAL(KIND=dp), intent(in) :: epsyz
REAL(KIND=dp), intent(in) :: epszx
REAL(KIND=dp), intent(in) :: epszz
REAL(KIND=dp), intent(in) :: poisson_nu
REAL(KIND=dp), intent(in) :: u0
REAL(KIND=dp), intent(in) :: v0
REAL(KIND=dp), intent(in) :: w0
REAL(KIND=dp), intent(in) :: young_E
end function
end interface

interface
REAL(KIND=dp) function dphi_dv_public(Bx, By, Bz, epsxx, epsxy, epsyy, &
      epsyz, epszx, epszz, poisson_nu, u0, v0, w0, young_E)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bx
REAL(KIND=dp), intent(in) :: By
REAL(KIND=dp), intent(in) :: Bz
REAL(KIND=dp), intent(in) :: epsxx
REAL(KIND=dp), intent(in) :: epsxy
REAL(KIND=dp), intent(in) :: epsyy
REAL(KIND=dp), intent(in) :: epsyz
REAL(KIND=dp), intent(in) :: epszx
REAL(KIND=dp), intent(in) :: epszz
REAL(KIND=dp), intent(in) :: poisson_nu
REAL(KIND=dp), intent(in) :: u0
REAL(KIND=dp), intent(in) :: v0
REAL(KIND=dp), intent(in) :: w0
REAL(KIND=dp), intent(in) :: young_E
end function
end interface

interface
REAL(KIND=dp) function dphi_dw_public(Bx, By, Bz, epsxx, epsxy, epsyy, &
      epsyz, epszx, epszz, poisson_nu, u0, v0, w0, young_E)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bx
REAL(KIND=dp), intent(in) :: By
REAL(KIND=dp), intent(in) :: Bz
REAL(KIND=dp), intent(in) :: epsxx
REAL(KIND=dp), intent(in) :: epsxy
REAL(KIND=dp), intent(in) :: epsyy
REAL(KIND=dp), intent(in) :: epsyz
REAL(KIND=dp), intent(in) :: epszx
REAL(KIND=dp), intent(in) :: epszz
REAL(KIND=dp), intent(in) :: poisson_nu
REAL(KIND=dp), intent(in) :: u0
REAL(KIND=dp), intent(in) :: v0
REAL(KIND=dp), intent(in) :: w0
REAL(KIND=dp), intent(in) :: young_E
end function
end interface

interface
REAL(KIND=dp) function d2phi_du2_public(Bx, By, Bz, epsxx, epsxy, epsyy, &
      epsyz, epszx, epszz, poisson_nu, u0, v0, w0, young_E)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bx
REAL(KIND=dp), intent(in) :: By
REAL(KIND=dp), intent(in) :: Bz
REAL(KIND=dp), intent(in) :: epsxx
REAL(KIND=dp), intent(in) :: epsxy
REAL(KIND=dp), intent(in) :: epsyy
REAL(KIND=dp), intent(in) :: epsyz
REAL(KIND=dp), intent(in) :: epszx
REAL(KIND=dp), intent(in) :: epszz
REAL(KIND=dp), intent(in) :: poisson_nu
REAL(KIND=dp), intent(in) :: u0
REAL(KIND=dp), intent(in) :: v0
REAL(KIND=dp), intent(in) :: w0
REAL(KIND=dp), intent(in) :: young_E
end function
end interface

interface
REAL(KIND=dp) function d2phi_dv2_public(Bx, By, Bz, epsxx, epsxy, epsyy, &
      epsyz, epszx, epszz, poisson_nu, u0, v0, w0, young_E)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bx
REAL(KIND=dp), intent(in) :: By
REAL(KIND=dp), intent(in) :: Bz
REAL(KIND=dp), intent(in) :: epsxx
REAL(KIND=dp), intent(in) :: epsxy
REAL(KIND=dp), intent(in) :: epsyy
REAL(KIND=dp), intent(in) :: epsyz
REAL(KIND=dp), intent(in) :: epszx
REAL(KIND=dp), intent(in) :: epszz
REAL(KIND=dp), intent(in) :: poisson_nu
REAL(KIND=dp), intent(in) :: u0
REAL(KIND=dp), intent(in) :: v0
REAL(KIND=dp), intent(in) :: w0
REAL(KIND=dp), intent(in) :: young_E
end function
end interface

interface
REAL(KIND=dp) function d2phi_dw2_public(Bx, By, Bz, epsxx, epsxy, epsyy, &
      epsyz, epszx, epszz, poisson_nu, u0, v0, w0, young_E)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bx
REAL(KIND=dp), intent(in) :: By
REAL(KIND=dp), intent(in) :: Bz
REAL(KIND=dp), intent(in) :: epsxx
REAL(KIND=dp), intent(in) :: epsxy
REAL(KIND=dp), intent(in) :: epsyy
REAL(KIND=dp), intent(in) :: epsyz
REAL(KIND=dp), intent(in) :: epszx
REAL(KIND=dp), intent(in) :: epszz
REAL(KIND=dp), intent(in) :: poisson_nu
REAL(KIND=dp), intent(in) :: u0
REAL(KIND=dp), intent(in) :: v0
REAL(KIND=dp), intent(in) :: w0
REAL(KIND=dp), intent(in) :: young_E
end function
end interface

interface
REAL(KIND=dp) function d2phi_dudv_public(Bx, By, Bz, epsxx, epsxy, epsyy, &
      epsyz, epszx, epszz, poisson_nu, u0, v0, w0, young_E)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bx
REAL(KIND=dp), intent(in) :: By
REAL(KIND=dp), intent(in) :: Bz
REAL(KIND=dp), intent(in) :: epsxx
REAL(KIND=dp), intent(in) :: epsxy
REAL(KIND=dp), intent(in) :: epsyy
REAL(KIND=dp), intent(in) :: epsyz
REAL(KIND=dp), intent(in) :: epszx
REAL(KIND=dp), intent(in) :: epszz
REAL(KIND=dp), intent(in) :: poisson_nu
REAL(KIND=dp), intent(in) :: u0
REAL(KIND=dp), intent(in) :: v0
REAL(KIND=dp), intent(in) :: w0
REAL(KIND=dp), intent(in) :: young_E
end function
end interface

interface
REAL(KIND=dp) function d2phi_dvdw_public(Bx, By, Bz, epsxx, epsxy, epsyy, &
      epsyz, epszx, epszz, poisson_nu, u0, v0, w0, young_E)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bx
REAL(KIND=dp), intent(in) :: By
REAL(KIND=dp), intent(in) :: Bz
REAL(KIND=dp), intent(in) :: epsxx
REAL(KIND=dp), intent(in) :: epsxy
REAL(KIND=dp), intent(in) :: epsyy
REAL(KIND=dp), intent(in) :: epsyz
REAL(KIND=dp), intent(in) :: epszx
REAL(KIND=dp), intent(in) :: epszz
REAL(KIND=dp), intent(in) :: poisson_nu
REAL(KIND=dp), intent(in) :: u0
REAL(KIND=dp), intent(in) :: v0
REAL(KIND=dp), intent(in) :: w0
REAL(KIND=dp), intent(in) :: young_E
end function
end interface

interface
REAL(KIND=dp) function d2phi_dudw_public(Bx, By, Bz, epsxx, epsxy, epsyy, &
      epsyz, epszx, epszz, poisson_nu, u0, v0, w0, young_E)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bx
REAL(KIND=dp), intent(in) :: By
REAL(KIND=dp), intent(in) :: Bz
REAL(KIND=dp), intent(in) :: epsxx
REAL(KIND=dp), intent(in) :: epsxy
REAL(KIND=dp), intent(in) :: epsyy
REAL(KIND=dp), intent(in) :: epsyz
REAL(KIND=dp), intent(in) :: epszx
REAL(KIND=dp), intent(in) :: epszz
REAL(KIND=dp), intent(in) :: poisson_nu
REAL(KIND=dp), intent(in) :: u0
REAL(KIND=dp), intent(in) :: v0
REAL(KIND=dp), intent(in) :: w0
REAL(KIND=dp), intent(in) :: young_E
end function
end interface

interface
subroutine H_public(Bx, By, Bz, epsxx, epsxy, epsyy, epsyz, epszx, epszz, &
      poisson_nu, u0, v0, w0, young_E, H_out)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bx
REAL(KIND=dp), intent(in) :: By
REAL(KIND=dp), intent(in) :: Bz
REAL(KIND=dp), intent(in) :: epsxx
REAL(KIND=dp), intent(in) :: epsxy
REAL(KIND=dp), intent(in) :: epsyy
REAL(KIND=dp), intent(in) :: epsyz
REAL(KIND=dp), intent(in) :: epszx
REAL(KIND=dp), intent(in) :: epszz
REAL(KIND=dp), intent(in) :: poisson_nu
REAL(KIND=dp), intent(in) :: u0
REAL(KIND=dp), intent(in) :: v0
REAL(KIND=dp), intent(in) :: w0
REAL(KIND=dp), intent(in) :: young_E
REAL(KIND=dp), intent(out), dimension(1:3, 1:1) :: H_out
end subroutine
end interface

interface
subroutine dH_dB_public(Bx, By, Bz, epsxx, epsxy, epsyy, epsyz, epszx, &
      epszz, poisson_nu, u0, v0, w0, young_E, dH_dB_out)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bx
REAL(KIND=dp), intent(in) :: By
REAL(KIND=dp), intent(in) :: Bz
REAL(KIND=dp), intent(in) :: epsxx
REAL(KIND=dp), intent(in) :: epsxy
REAL(KIND=dp), intent(in) :: epsyy
REAL(KIND=dp), intent(in) :: epsyz
REAL(KIND=dp), intent(in) :: epszx
REAL(KIND=dp), intent(in) :: epszz
REAL(KIND=dp), intent(in) :: poisson_nu
REAL(KIND=dp), intent(in) :: u0
REAL(KIND=dp), intent(in) :: v0
REAL(KIND=dp), intent(in) :: w0
REAL(KIND=dp), intent(in) :: young_E
REAL(KIND=dp), intent(out), dimension(1:3, 1:3) :: dH_dB_out
end subroutine
end interface

interface
subroutine S_public(Bx, By, Bz, epsxx, epsxy, epsyy, epsyz, epszx, epszz, &
      poisson_nu, u0, v0, w0, young_E, S_out)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bx
REAL(KIND=dp), intent(in) :: By
REAL(KIND=dp), intent(in) :: Bz
REAL(KIND=dp), intent(in) :: epsxx
REAL(KIND=dp), intent(in) :: epsxy
REAL(KIND=dp), intent(in) :: epsyy
REAL(KIND=dp), intent(in) :: epsyz
REAL(KIND=dp), intent(in) :: epszx
REAL(KIND=dp), intent(in) :: epszz
REAL(KIND=dp), intent(in) :: poisson_nu
REAL(KIND=dp), intent(in) :: u0
REAL(KIND=dp), intent(in) :: v0
REAL(KIND=dp), intent(in) :: w0
REAL(KIND=dp), intent(in) :: young_E
REAL(KIND=dp), intent(out), dimension(1:3, 1:3) :: S_out
end subroutine
end interface

interface
subroutine dS_deps_public(Bx, By, Bz, epsxx, epsxy, epsyy, epsyz, epszx, &
      epszz, poisson_nu, u0, v0, w0, young_E, dS_deps_out)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bx
REAL(KIND=dp), intent(in) :: By
REAL(KIND=dp), intent(in) :: Bz
REAL(KIND=dp), intent(in) :: epsxx
REAL(KIND=dp), intent(in) :: epsxy
REAL(KIND=dp), intent(in) :: epsyy
REAL(KIND=dp), intent(in) :: epsyz
REAL(KIND=dp), intent(in) :: epszx
REAL(KIND=dp), intent(in) :: epszz
REAL(KIND=dp), intent(in) :: poisson_nu
REAL(KIND=dp), intent(in) :: u0
REAL(KIND=dp), intent(in) :: v0
REAL(KIND=dp), intent(in) :: w0
REAL(KIND=dp), intent(in) :: young_E
REAL(KIND=dp), intent(out), dimension(1:9, 1:9) :: dS_deps_out
end subroutine
end interface

