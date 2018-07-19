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
REAL*8 function dI1_depsxx_public()
implicit none
end function
end interface

interface
REAL*8 function dI1_depsyy_public()
implicit none
end function
end interface

interface
REAL*8 function dI1_depszz_public()
implicit none
end function
end interface

interface
REAL*8 function dI2_depsxx_public(epsxx)
implicit none
REAL*8, intent(in) :: epsxx
end function
end interface

interface
REAL*8 function d2I2_depsxx2_public()
implicit none
end function
end interface

interface
REAL*8 function dI2_depsxy_public(epsxy)
implicit none
REAL*8, intent(in) :: epsxy
end function
end interface

interface
REAL*8 function d2I2_depsxy2_public()
implicit none
end function
end interface

interface
REAL*8 function dI2_depsyy_public(epsyy)
implicit none
REAL*8, intent(in) :: epsyy
end function
end interface

interface
REAL*8 function d2I2_depsyy2_public()
implicit none
end function
end interface

interface
REAL*8 function dI2_depsyz_public(epsyz)
implicit none
REAL*8, intent(in) :: epsyz
end function
end interface

interface
REAL*8 function d2I2_depsyz2_public()
implicit none
end function
end interface

interface
REAL*8 function dI2_depszx_public(epszx)
implicit none
REAL*8, intent(in) :: epszx
end function
end interface

interface
REAL*8 function d2I2_depszx2_public()
implicit none
end function
end interface

interface
REAL*8 function dI2_depszz_public(epszz)
implicit none
REAL*8, intent(in) :: epszz
end function
end interface

interface
REAL*8 function d2I2_depszz2_public()
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
REAL*8 function dI6_dBx_public(Bx, By, Bz, epsxx, epsxy, epsyy, epsyz, &
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
REAL*8 function d2I6_dBx2_public(epsxx, epsxy, epsyy, epszx, epszz)
implicit none
REAL*8, intent(in) :: epsxx
REAL*8, intent(in) :: epsxy
REAL*8, intent(in) :: epsyy
REAL*8, intent(in) :: epszx
REAL*8, intent(in) :: epszz
end function
end interface

interface
REAL*8 function d2I6_dBxdBy_public(epsxx, epsxy, epsyy, epsyz, epszx, epszz)
implicit none
REAL*8, intent(in) :: epsxx
REAL*8, intent(in) :: epsxy
REAL*8, intent(in) :: epsyy
REAL*8, intent(in) :: epsyz
REAL*8, intent(in) :: epszx
REAL*8, intent(in) :: epszz
end function
end interface

interface
REAL*8 function d2I6_dBxdBz_public(epsxx, epsxy, epsyy, epsyz, epszx, epszz)
implicit none
REAL*8, intent(in) :: epsxx
REAL*8, intent(in) :: epsxy
REAL*8, intent(in) :: epsyy
REAL*8, intent(in) :: epsyz
REAL*8, intent(in) :: epszx
REAL*8, intent(in) :: epszz
end function
end interface

interface
REAL*8 function dI6_dBy_public(Bx, By, Bz, epsxx, epsxy, epsyy, epsyz, &
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
REAL*8 function d2I6_dBy2_public(epsxx, epsxy, epsyy, epsyz, epszz)
implicit none
REAL*8, intent(in) :: epsxx
REAL*8, intent(in) :: epsxy
REAL*8, intent(in) :: epsyy
REAL*8, intent(in) :: epsyz
REAL*8, intent(in) :: epszz
end function
end interface

interface
REAL*8 function d2I6_dBydBz_public(epsxx, epsxy, epsyy, epsyz, epszx, epszz)
implicit none
REAL*8, intent(in) :: epsxx
REAL*8, intent(in) :: epsxy
REAL*8, intent(in) :: epsyy
REAL*8, intent(in) :: epsyz
REAL*8, intent(in) :: epszx
REAL*8, intent(in) :: epszz
end function
end interface

interface
REAL*8 function dI6_dBz_public(Bx, By, Bz, epsxx, epsxy, epsyy, epsyz, &
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
REAL*8 function d2I6_dBz2_public(epsxx, epsyy, epsyz, epszx, epszz)
implicit none
REAL*8, intent(in) :: epsxx
REAL*8, intent(in) :: epsyy
REAL*8, intent(in) :: epsyz
REAL*8, intent(in) :: epszx
REAL*8, intent(in) :: epszz
end function
end interface

interface
REAL*8 function dI6_dexx_public(Bx, By, Bz, epsxx, epsxy, epsyy, epszx, &
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
REAL*8 function d2I6_dBxdexx_public(Bx, By, Bz, epsxx, epsxy, epsyy, epszx, &
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
REAL*8 function d2I6_dBydexx_public(Bx, epsxy)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: epsxy
end function
end interface

interface
REAL*8 function d2I6_dBzdexx_public(Bx, epszx)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: epszx
end function
end interface

interface
REAL*8 function d2I6_dexx2_public(Bx)
implicit none
REAL*8, intent(in) :: Bx
end function
end interface

interface
REAL*8 function d2I6_dexxdexy_public(Bx, By)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: By
end function
end interface

interface
REAL*8 function d2I6_dexxdezx_public(Bx, Bz)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: Bz
end function
end interface

interface
REAL*8 function dI6_dexy_public(Bx, By, Bz, epsxx, epsxy, epsyy, epsyz, &
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
REAL*8 function d2I6_dBxdexy_public(Bx, By, Bz, epsxx, epsxy, epsyy, epsyz, &
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
REAL*8 function d2I6_dBydexy_public(Bx, By, Bz, epsxx, epsxy, epsyy, epszx, &
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
REAL*8 function d2I6_dBzdexy_public(Bx, By, epsyz, epszx)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: By
REAL*8, intent(in) :: epsyz
REAL*8, intent(in) :: epszx
end function
end interface

interface
REAL*8 function d2I6_dexxdexy_public(Bx, By)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: By
end function
end interface

interface
REAL*8 function d2I6_dexy2_public(Bx, By)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: By
end function
end interface

interface
REAL*8 function d2I6_dexydeyy_public(Bx, By)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: By
end function
end interface

interface
REAL*8 function d2I6_dexydeyz_public(Bx, Bz)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: Bz
end function
end interface

interface
REAL*8 function dI6_deyy_public(Bx, By, Bz, epsxx, epsxy, epsyy, epsyz, &
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
REAL*8 function d2I6_dBxdeyy_public(By, epsxy)
implicit none
REAL*8, intent(in) :: By
REAL*8, intent(in) :: epsxy
end function
end interface

interface
REAL*8 function d2I6_dBydeyy_public(Bx, By, Bz, epsxx, epsxy, epsyy, epsyz, &
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
REAL*8 function d2I6_dBzdeyy_public(By, epsyz)
implicit none
REAL*8, intent(in) :: By
REAL*8, intent(in) :: epsyz
end function
end interface

interface
REAL*8 function d2I6_dexydeyy_public(Bx, By)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: By
end function
end interface

interface
REAL*8 function d2I6_deyy2_public(By)
implicit none
REAL*8, intent(in) :: By
end function
end interface

interface
REAL*8 function d2I6_deyydeyz_public(By, Bz)
implicit none
REAL*8, intent(in) :: By
REAL*8, intent(in) :: Bz
end function
end interface

interface
REAL*8 function dI6_deyz_public(Bx, By, Bz, epsxx, epsxy, epsyy, epsyz, &
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
REAL*8 function d2I6_dBxdeyz_public(By, Bz, epsxy, epszx)
implicit none
REAL*8, intent(in) :: By
REAL*8, intent(in) :: Bz
REAL*8, intent(in) :: epsxy
REAL*8, intent(in) :: epszx
end function
end interface

interface
REAL*8 function d2I6_dBydeyz_public(Bx, By, Bz, epsxx, epsyy, epsyz, epszx, &
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
REAL*8 function d2I6_dBzdeyz_public(Bx, By, Bz, epsxx, epsxy, epsyy, epsyz, &
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
REAL*8 function d2I6_dexydeyz_public(Bx, Bz)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: Bz
end function
end interface

interface
REAL*8 function d2I6_deyz2_public(By, Bz)
implicit none
REAL*8, intent(in) :: By
REAL*8, intent(in) :: Bz
end function
end interface

interface
REAL*8 function d2I6_deyzdezx_public(Bx, By)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: By
end function
end interface

interface
REAL*8 function dI6_dezx_public(Bx, By, Bz, epsxx, epsxy, epsyy, epsyz, &
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
REAL*8 function d2I6_dBxdezx_public(Bx, By, Bz, epsxx, epsyy, epsyz, epszx, &
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
REAL*8 function d2I6_dBydezx_public(Bx, Bz, epsxy, epsyz)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: Bz
REAL*8, intent(in) :: epsxy
REAL*8, intent(in) :: epsyz
end function
end interface

interface
REAL*8 function d2I6_dBzdezx_public(Bx, By, Bz, epsxx, epsxy, epsyy, epszx, &
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
REAL*8 function d2I6_dexxdezx_public(Bx, Bz)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: Bz
end function
end interface

interface
REAL*8 function d2I6_dexydezx_public(By, Bz)
implicit none
REAL*8, intent(in) :: By
REAL*8, intent(in) :: Bz
end function
end interface

interface
REAL*8 function d2I6_deyzdezx_public(Bx, By)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: By
end function
end interface

interface
REAL*8 function d2I6_dezx2_public(Bx, Bz)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: Bz
end function
end interface

interface
REAL*8 function d2I6_dezxdezz_public(Bx, Bz)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: Bz
end function
end interface

interface
REAL*8 function dI6_dezz_public(Bx, By, Bz, epsxx, epsyy, epsyz, epszx, &
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
REAL*8 function d2I6_dBxdezz_public(Bz, epszx)
implicit none
REAL*8, intent(in) :: Bz
REAL*8, intent(in) :: epszx
end function
end interface

interface
REAL*8 function d2I6_dBydezz_public(Bz, epsyz)
implicit none
REAL*8, intent(in) :: Bz
REAL*8, intent(in) :: epsyz
end function
end interface

interface
REAL*8 function d2I6_dBzdezz_public(Bx, By, Bz, epsxx, epsyy, epsyz, epszx, &
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
REAL*8 function d2I6_deyzdezz_public(By, Bz)
implicit none
REAL*8, intent(in) :: By
REAL*8, intent(in) :: Bz
end function
end interface

interface
REAL*8 function d2I6_dezxdezz_public(Bx, Bz)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: Bz
end function
end interface

interface
REAL*8 function d2I6_dezz2_public(Bz)
implicit none
REAL*8, intent(in) :: Bz
end function
end interface

interface
REAL*8 function dphi_dBx_public(Bx, By, Bz, alp1, alp2, alp3, alp4, alp5, &
      bet1, epsxx, epsxy, epsyy, epsyz, epszx, epszz, gam1)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: By
REAL*8, intent(in) :: Bz
REAL*8, intent(in) :: alp1
REAL*8, intent(in) :: alp2
REAL*8, intent(in) :: alp3
REAL*8, intent(in) :: alp4
REAL*8, intent(in) :: alp5
REAL*8, intent(in) :: bet1
REAL*8, intent(in) :: epsxx
REAL*8, intent(in) :: epsxy
REAL*8, intent(in) :: epsyy
REAL*8, intent(in) :: epsyz
REAL*8, intent(in) :: epszx
REAL*8, intent(in) :: epszz
REAL*8, intent(in) :: gam1
end function
end interface

interface
REAL*8 function d2phi_dBx2_public(Bx, By, Bz, alp1, alp2, alp3, alp4, alp5, &
      bet1, epsxx, epsxy, epsyy, epszx, epszz, gam1)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: By
REAL*8, intent(in) :: Bz
REAL*8, intent(in) :: alp1
REAL*8, intent(in) :: alp2
REAL*8, intent(in) :: alp3
REAL*8, intent(in) :: alp4
REAL*8, intent(in) :: alp5
REAL*8, intent(in) :: bet1
REAL*8, intent(in) :: epsxx
REAL*8, intent(in) :: epsxy
REAL*8, intent(in) :: epsyy
REAL*8, intent(in) :: epszx
REAL*8, intent(in) :: epszz
REAL*8, intent(in) :: gam1
end function
end interface

interface
REAL*8 function d2phi_dBxdBy_public(Bx, By, Bz, alp2, alp3, alp4, alp5, &
      bet1, epsxx, epsxy, epsyy, epsyz, epszx, epszz, gam1)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: By
REAL*8, intent(in) :: Bz
REAL*8, intent(in) :: alp2
REAL*8, intent(in) :: alp3
REAL*8, intent(in) :: alp4
REAL*8, intent(in) :: alp5
REAL*8, intent(in) :: bet1
REAL*8, intent(in) :: epsxx
REAL*8, intent(in) :: epsxy
REAL*8, intent(in) :: epsyy
REAL*8, intent(in) :: epsyz
REAL*8, intent(in) :: epszx
REAL*8, intent(in) :: epszz
REAL*8, intent(in) :: gam1
end function
end interface

interface
REAL*8 function d2phi_dBxdBz_public(Bx, By, Bz, alp2, alp3, alp4, alp5, &
      bet1, epsxx, epsxy, epsyy, epsyz, epszx, epszz, gam1)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: By
REAL*8, intent(in) :: Bz
REAL*8, intent(in) :: alp2
REAL*8, intent(in) :: alp3
REAL*8, intent(in) :: alp4
REAL*8, intent(in) :: alp5
REAL*8, intent(in) :: bet1
REAL*8, intent(in) :: epsxx
REAL*8, intent(in) :: epsxy
REAL*8, intent(in) :: epsyy
REAL*8, intent(in) :: epsyz
REAL*8, intent(in) :: epszx
REAL*8, intent(in) :: epszz
REAL*8, intent(in) :: gam1
end function
end interface

interface
REAL*8 function d2phi_dBxdepsxx_public(Bx, By, Bz, bet1, epsxx, epsxy, &
      epsyy, epszx, epszz, gam1)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: By
REAL*8, intent(in) :: Bz
REAL*8, intent(in) :: bet1
REAL*8, intent(in) :: epsxx
REAL*8, intent(in) :: epsxy
REAL*8, intent(in) :: epsyy
REAL*8, intent(in) :: epszx
REAL*8, intent(in) :: epszz
REAL*8, intent(in) :: gam1
end function
end interface

interface
REAL*8 function d2phi_dBxdepsxy_public(Bx, By, Bz, bet1, epsxx, epsxy, &
      epsyy, epsyz, epszz, gam1)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: By
REAL*8, intent(in) :: Bz
REAL*8, intent(in) :: bet1
REAL*8, intent(in) :: epsxx
REAL*8, intent(in) :: epsxy
REAL*8, intent(in) :: epsyy
REAL*8, intent(in) :: epsyz
REAL*8, intent(in) :: epszz
REAL*8, intent(in) :: gam1
end function
end interface

interface
REAL*8 function d2phi_dBxdepsyy_public(Bx, By, Bz, bet1, epsxx, epsxy, &
      epsyy, epszx, epszz, gam1)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: By
REAL*8, intent(in) :: Bz
REAL*8, intent(in) :: bet1
REAL*8, intent(in) :: epsxx
REAL*8, intent(in) :: epsxy
REAL*8, intent(in) :: epsyy
REAL*8, intent(in) :: epszx
REAL*8, intent(in) :: epszz
REAL*8, intent(in) :: gam1
end function
end interface

interface
REAL*8 function d2phi_dBxdepsyz_public(By, Bz, epsxy, epszx, gam1)
implicit none
REAL*8, intent(in) :: By
REAL*8, intent(in) :: Bz
REAL*8, intent(in) :: epsxy
REAL*8, intent(in) :: epszx
REAL*8, intent(in) :: gam1
end function
end interface

interface
REAL*8 function d2phi_dBxdepszx_public(Bx, By, Bz, bet1, epsxx, epsyy, &
      epsyz, epszx, epszz, gam1)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: By
REAL*8, intent(in) :: Bz
REAL*8, intent(in) :: bet1
REAL*8, intent(in) :: epsxx
REAL*8, intent(in) :: epsyy
REAL*8, intent(in) :: epsyz
REAL*8, intent(in) :: epszx
REAL*8, intent(in) :: epszz
REAL*8, intent(in) :: gam1
end function
end interface

interface
REAL*8 function d2phi_dBxdepszz_public(Bx, By, Bz, bet1, epsxx, epsxy, &
      epsyy, epszx, epszz, gam1)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: By
REAL*8, intent(in) :: Bz
REAL*8, intent(in) :: bet1
REAL*8, intent(in) :: epsxx
REAL*8, intent(in) :: epsxy
REAL*8, intent(in) :: epsyy
REAL*8, intent(in) :: epszx
REAL*8, intent(in) :: epszz
REAL*8, intent(in) :: gam1
end function
end interface

interface
REAL*8 function dphi_dBy_public(Bx, By, Bz, alp1, alp2, alp3, alp4, alp5, &
      bet1, epsxx, epsxy, epsyy, epsyz, epszx, epszz, gam1)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: By
REAL*8, intent(in) :: Bz
REAL*8, intent(in) :: alp1
REAL*8, intent(in) :: alp2
REAL*8, intent(in) :: alp3
REAL*8, intent(in) :: alp4
REAL*8, intent(in) :: alp5
REAL*8, intent(in) :: bet1
REAL*8, intent(in) :: epsxx
REAL*8, intent(in) :: epsxy
REAL*8, intent(in) :: epsyy
REAL*8, intent(in) :: epsyz
REAL*8, intent(in) :: epszx
REAL*8, intent(in) :: epszz
REAL*8, intent(in) :: gam1
end function
end interface

interface
REAL*8 function d2phi_dBy2_public(Bx, By, Bz, alp1, alp2, alp3, alp4, alp5, &
      bet1, epsxx, epsxy, epsyy, epsyz, epszz, gam1)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: By
REAL*8, intent(in) :: Bz
REAL*8, intent(in) :: alp1
REAL*8, intent(in) :: alp2
REAL*8, intent(in) :: alp3
REAL*8, intent(in) :: alp4
REAL*8, intent(in) :: alp5
REAL*8, intent(in) :: bet1
REAL*8, intent(in) :: epsxx
REAL*8, intent(in) :: epsxy
REAL*8, intent(in) :: epsyy
REAL*8, intent(in) :: epsyz
REAL*8, intent(in) :: epszz
REAL*8, intent(in) :: gam1
end function
end interface

interface
REAL*8 function d2phi_dBydBz_public(Bx, By, Bz, alp2, alp3, alp4, alp5, &
      bet1, epsxx, epsxy, epsyy, epsyz, epszx, epszz, gam1)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: By
REAL*8, intent(in) :: Bz
REAL*8, intent(in) :: alp2
REAL*8, intent(in) :: alp3
REAL*8, intent(in) :: alp4
REAL*8, intent(in) :: alp5
REAL*8, intent(in) :: bet1
REAL*8, intent(in) :: epsxx
REAL*8, intent(in) :: epsxy
REAL*8, intent(in) :: epsyy
REAL*8, intent(in) :: epsyz
REAL*8, intent(in) :: epszx
REAL*8, intent(in) :: epszz
REAL*8, intent(in) :: gam1
end function
end interface

interface
REAL*8 function d2phi_dBydepsxx_public(Bx, By, Bz, bet1, epsxx, epsxy, &
      epsyy, epsyz, epszz, gam1)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: By
REAL*8, intent(in) :: Bz
REAL*8, intent(in) :: bet1
REAL*8, intent(in) :: epsxx
REAL*8, intent(in) :: epsxy
REAL*8, intent(in) :: epsyy
REAL*8, intent(in) :: epsyz
REAL*8, intent(in) :: epszz
REAL*8, intent(in) :: gam1
end function
end interface

interface
REAL*8 function d2phi_dBydepsxy_public(Bx, By, Bz, bet1, epsxx, epsxy, &
      epsyy, epszx, epszz, gam1)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: By
REAL*8, intent(in) :: Bz
REAL*8, intent(in) :: bet1
REAL*8, intent(in) :: epsxx
REAL*8, intent(in) :: epsxy
REAL*8, intent(in) :: epsyy
REAL*8, intent(in) :: epszx
REAL*8, intent(in) :: epszz
REAL*8, intent(in) :: gam1
end function
end interface

interface
REAL*8 function d2phi_dBydepsyy_public(Bx, By, Bz, bet1, epsxx, epsxy, &
      epsyy, epsyz, epszz, gam1)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: By
REAL*8, intent(in) :: Bz
REAL*8, intent(in) :: bet1
REAL*8, intent(in) :: epsxx
REAL*8, intent(in) :: epsxy
REAL*8, intent(in) :: epsyy
REAL*8, intent(in) :: epsyz
REAL*8, intent(in) :: epszz
REAL*8, intent(in) :: gam1
end function
end interface

interface
REAL*8 function d2phi_dBydepsyz_public(Bx, By, Bz, bet1, epsxx, epsyy, &
      epsyz, epszx, epszz, gam1)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: By
REAL*8, intent(in) :: Bz
REAL*8, intent(in) :: bet1
REAL*8, intent(in) :: epsxx
REAL*8, intent(in) :: epsyy
REAL*8, intent(in) :: epsyz
REAL*8, intent(in) :: epszx
REAL*8, intent(in) :: epszz
REAL*8, intent(in) :: gam1
end function
end interface

interface
REAL*8 function d2phi_dBydepszx_public(Bx, Bz, epsxy, epsyz, gam1)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: Bz
REAL*8, intent(in) :: epsxy
REAL*8, intent(in) :: epsyz
REAL*8, intent(in) :: gam1
end function
end interface

interface
REAL*8 function d2phi_dBydepszz_public(Bx, By, Bz, bet1, epsxx, epsxy, &
      epsyy, epsyz, epszz, gam1)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: By
REAL*8, intent(in) :: Bz
REAL*8, intent(in) :: bet1
REAL*8, intent(in) :: epsxx
REAL*8, intent(in) :: epsxy
REAL*8, intent(in) :: epsyy
REAL*8, intent(in) :: epsyz
REAL*8, intent(in) :: epszz
REAL*8, intent(in) :: gam1
end function
end interface

interface
REAL*8 function dphi_dBz_public(Bx, By, Bz, alp1, alp2, alp3, alp4, alp5, &
      bet1, epsxx, epsxy, epsyy, epsyz, epszx, epszz, gam1)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: By
REAL*8, intent(in) :: Bz
REAL*8, intent(in) :: alp1
REAL*8, intent(in) :: alp2
REAL*8, intent(in) :: alp3
REAL*8, intent(in) :: alp4
REAL*8, intent(in) :: alp5
REAL*8, intent(in) :: bet1
REAL*8, intent(in) :: epsxx
REAL*8, intent(in) :: epsxy
REAL*8, intent(in) :: epsyy
REAL*8, intent(in) :: epsyz
REAL*8, intent(in) :: epszx
REAL*8, intent(in) :: epszz
REAL*8, intent(in) :: gam1
end function
end interface

interface
REAL*8 function d2phi_dBz2_public(Bx, By, Bz, alp1, alp2, alp3, alp4, alp5, &
      bet1, epsxx, epsyy, epsyz, epszx, epszz, gam1)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: By
REAL*8, intent(in) :: Bz
REAL*8, intent(in) :: alp1
REAL*8, intent(in) :: alp2
REAL*8, intent(in) :: alp3
REAL*8, intent(in) :: alp4
REAL*8, intent(in) :: alp5
REAL*8, intent(in) :: bet1
REAL*8, intent(in) :: epsxx
REAL*8, intent(in) :: epsyy
REAL*8, intent(in) :: epsyz
REAL*8, intent(in) :: epszx
REAL*8, intent(in) :: epszz
REAL*8, intent(in) :: gam1
end function
end interface

interface
REAL*8 function d2phi_dBzdepsxx_public(Bx, By, Bz, bet1, epsxx, epsyy, &
      epsyz, epszx, epszz, gam1)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: By
REAL*8, intent(in) :: Bz
REAL*8, intent(in) :: bet1
REAL*8, intent(in) :: epsxx
REAL*8, intent(in) :: epsyy
REAL*8, intent(in) :: epsyz
REAL*8, intent(in) :: epszx
REAL*8, intent(in) :: epszz
REAL*8, intent(in) :: gam1
end function
end interface

interface
REAL*8 function d2phi_dBzdepsxy_public(Bx, By, epsyz, epszx, gam1)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: By
REAL*8, intent(in) :: epsyz
REAL*8, intent(in) :: epszx
REAL*8, intent(in) :: gam1
end function
end interface

interface
REAL*8 function d2phi_dBzdepsyy_public(Bx, By, Bz, bet1, epsxx, epsyy, &
      epsyz, epszx, epszz, gam1)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: By
REAL*8, intent(in) :: Bz
REAL*8, intent(in) :: bet1
REAL*8, intent(in) :: epsxx
REAL*8, intent(in) :: epsyy
REAL*8, intent(in) :: epsyz
REAL*8, intent(in) :: epszx
REAL*8, intent(in) :: epszz
REAL*8, intent(in) :: gam1
end function
end interface

interface
REAL*8 function d2phi_dBzdepsyz_public(Bx, By, Bz, bet1, epsxx, epsxy, &
      epsyy, epsyz, epszz, gam1)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: By
REAL*8, intent(in) :: Bz
REAL*8, intent(in) :: bet1
REAL*8, intent(in) :: epsxx
REAL*8, intent(in) :: epsxy
REAL*8, intent(in) :: epsyy
REAL*8, intent(in) :: epsyz
REAL*8, intent(in) :: epszz
REAL*8, intent(in) :: gam1
end function
end interface

interface
REAL*8 function d2phi_dBzdepszx_public(Bx, By, Bz, bet1, epsxx, epsxy, &
      epsyy, epszx, epszz, gam1)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: By
REAL*8, intent(in) :: Bz
REAL*8, intent(in) :: bet1
REAL*8, intent(in) :: epsxx
REAL*8, intent(in) :: epsxy
REAL*8, intent(in) :: epsyy
REAL*8, intent(in) :: epszx
REAL*8, intent(in) :: epszz
REAL*8, intent(in) :: gam1
end function
end interface

interface
REAL*8 function d2phi_dBzdepszz_public(Bx, By, Bz, bet1, epsxx, epsyy, &
      epsyz, epszx, epszz, gam1)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: By
REAL*8, intent(in) :: Bz
REAL*8, intent(in) :: bet1
REAL*8, intent(in) :: epsxx
REAL*8, intent(in) :: epsyy
REAL*8, intent(in) :: epsyz
REAL*8, intent(in) :: epszx
REAL*8, intent(in) :: epszz
REAL*8, intent(in) :: gam1
end function
end interface

interface
REAL*8 function dphi_dI1_public(epsxx, epsyy, epszz, lam)
implicit none
REAL*8, intent(in) :: epsxx
REAL*8, intent(in) :: epsyy
REAL*8, intent(in) :: epszz
REAL*8, intent(in) :: lam
end function
end interface

interface
REAL*8 function d2phi_dI12_public(lam)
implicit none
REAL*8, intent(in) :: lam
end function
end interface

interface
REAL*8 function dphi_dI2_public(mu)
implicit none
REAL*8, intent(in) :: mu
end function
end interface

interface
REAL*8 function dphi_dI4_public(Bx, By, Bz, alp1, alp2, alp3, alp4, alp5)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: By
REAL*8, intent(in) :: Bz
REAL*8, intent(in) :: alp1
REAL*8, intent(in) :: alp2
REAL*8, intent(in) :: alp3
REAL*8, intent(in) :: alp4
REAL*8, intent(in) :: alp5
end function
end interface

interface
REAL*8 function d2phi_dI42_public(Bx, By, Bz, alp2, alp3, alp4, alp5)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: By
REAL*8, intent(in) :: Bz
REAL*8, intent(in) :: alp2
REAL*8, intent(in) :: alp3
REAL*8, intent(in) :: alp4
REAL*8, intent(in) :: alp5
end function
end interface

interface
REAL*8 function dphi_dI5_public(bet1)
implicit none
REAL*8, intent(in) :: bet1
end function
end interface

interface
REAL*8 function dphi_dI6_public(gam1)
implicit none
REAL*8, intent(in) :: gam1
end function
end interface

interface
REAL*8 function dphi_depsxx_public(Bx, By, Bz, bet1, epsxx, epsxy, epsyy, &
      epsyz, epszx, epszz, gam1, lam, mu)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: By
REAL*8, intent(in) :: Bz
REAL*8, intent(in) :: bet1
REAL*8, intent(in) :: epsxx
REAL*8, intent(in) :: epsxy
REAL*8, intent(in) :: epsyy
REAL*8, intent(in) :: epsyz
REAL*8, intent(in) :: epszx
REAL*8, intent(in) :: epszz
REAL*8, intent(in) :: gam1
REAL*8, intent(in) :: lam
REAL*8, intent(in) :: mu
end function
end interface

interface
REAL*8 function d2phi_depsxx2_public(Bx, By, Bz, gam1, lam, mu)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: By
REAL*8, intent(in) :: Bz
REAL*8, intent(in) :: gam1
REAL*8, intent(in) :: lam
REAL*8, intent(in) :: mu
end function
end interface

interface
REAL*8 function d2phi_depsxxdepsxy_public(Bx, By, gam1)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: By
REAL*8, intent(in) :: gam1
end function
end interface

interface
REAL*8 function d2phi_depsxxdepsyy_public(Bx, By, Bz, gam1, lam)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: By
REAL*8, intent(in) :: Bz
REAL*8, intent(in) :: gam1
REAL*8, intent(in) :: lam
end function
end interface

interface
REAL*8 function d2phi_depsxxdepsyz_public(By, Bz, gam1)
implicit none
REAL*8, intent(in) :: By
REAL*8, intent(in) :: Bz
REAL*8, intent(in) :: gam1
end function
end interface

interface
REAL*8 function d2phi_depsxxdepszx_public(Bx, Bz, gam1)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: Bz
REAL*8, intent(in) :: gam1
end function
end interface

interface
REAL*8 function d2phi_depsxxdepszz_public(Bx, By, Bz, gam1, lam)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: By
REAL*8, intent(in) :: Bz
REAL*8, intent(in) :: gam1
REAL*8, intent(in) :: lam
end function
end interface

interface
REAL*8 function dphi_depsxy_public(Bx, By, Bz, bet1, epsxx, epsxy, epsyy, &
      epsyz, epszx, epszz, gam1, mu)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: By
REAL*8, intent(in) :: Bz
REAL*8, intent(in) :: bet1
REAL*8, intent(in) :: epsxx
REAL*8, intent(in) :: epsxy
REAL*8, intent(in) :: epsyy
REAL*8, intent(in) :: epsyz
REAL*8, intent(in) :: epszx
REAL*8, intent(in) :: epszz
REAL*8, intent(in) :: gam1
REAL*8, intent(in) :: mu
end function
end interface

interface
REAL*8 function d2phi_depsxy2_public(Bx, By, gam1, mu)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: By
REAL*8, intent(in) :: gam1
REAL*8, intent(in) :: mu
end function
end interface

interface
REAL*8 function d2phi_depsxydepsyy_public(Bx, By, gam1)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: By
REAL*8, intent(in) :: gam1
end function
end interface

interface
REAL*8 function d2phi_depsxydepsyz_public(Bx, Bz, gam1)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: Bz
REAL*8, intent(in) :: gam1
end function
end interface

interface
REAL*8 function d2phi_depsxydepszx_public(By, Bz, gam1)
implicit none
REAL*8, intent(in) :: By
REAL*8, intent(in) :: Bz
REAL*8, intent(in) :: gam1
end function
end interface

interface
REAL*8 function d2phi_depsxydepszz_public(Bx, By, gam1)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: By
REAL*8, intent(in) :: gam1
end function
end interface

interface
REAL*8 function dphi_depsyy_public(Bx, By, Bz, bet1, epsxx, epsxy, epsyy, &
      epsyz, epszx, epszz, gam1, lam, mu)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: By
REAL*8, intent(in) :: Bz
REAL*8, intent(in) :: bet1
REAL*8, intent(in) :: epsxx
REAL*8, intent(in) :: epsxy
REAL*8, intent(in) :: epsyy
REAL*8, intent(in) :: epsyz
REAL*8, intent(in) :: epszx
REAL*8, intent(in) :: epszz
REAL*8, intent(in) :: gam1
REAL*8, intent(in) :: lam
REAL*8, intent(in) :: mu
end function
end interface

interface
REAL*8 function d2phi_depsyy2_public(Bx, By, Bz, gam1, lam, mu)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: By
REAL*8, intent(in) :: Bz
REAL*8, intent(in) :: gam1
REAL*8, intent(in) :: lam
REAL*8, intent(in) :: mu
end function
end interface

interface
REAL*8 function d2phi_depsyydepsyz_public(By, Bz, gam1)
implicit none
REAL*8, intent(in) :: By
REAL*8, intent(in) :: Bz
REAL*8, intent(in) :: gam1
end function
end interface

interface
REAL*8 function d2phi_depsyydepszx_public(Bx, Bz, gam1)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: Bz
REAL*8, intent(in) :: gam1
end function
end interface

interface
REAL*8 function d2phi_depsyydepszz_public(Bx, By, Bz, gam1, lam)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: By
REAL*8, intent(in) :: Bz
REAL*8, intent(in) :: gam1
REAL*8, intent(in) :: lam
end function
end interface

interface
REAL*8 function dphi_depsyz_public(Bx, By, Bz, bet1, epsxx, epsxy, epsyy, &
      epsyz, epszx, epszz, gam1, mu)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: By
REAL*8, intent(in) :: Bz
REAL*8, intent(in) :: bet1
REAL*8, intent(in) :: epsxx
REAL*8, intent(in) :: epsxy
REAL*8, intent(in) :: epsyy
REAL*8, intent(in) :: epsyz
REAL*8, intent(in) :: epszx
REAL*8, intent(in) :: epszz
REAL*8, intent(in) :: gam1
REAL*8, intent(in) :: mu
end function
end interface

interface
REAL*8 function d2phi_depsyz2_public(By, Bz, gam1, mu)
implicit none
REAL*8, intent(in) :: By
REAL*8, intent(in) :: Bz
REAL*8, intent(in) :: gam1
REAL*8, intent(in) :: mu
end function
end interface

interface
REAL*8 function d2phi_depsyzdepszx_public(Bx, By, gam1)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: By
REAL*8, intent(in) :: gam1
end function
end interface

interface
REAL*8 function d2phi_depsyzdepszz_public(By, Bz, gam1)
implicit none
REAL*8, intent(in) :: By
REAL*8, intent(in) :: Bz
REAL*8, intent(in) :: gam1
end function
end interface

interface
REAL*8 function dphi_depszx_public(Bx, By, Bz, bet1, epsxx, epsxy, epsyy, &
      epsyz, epszx, epszz, gam1, mu)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: By
REAL*8, intent(in) :: Bz
REAL*8, intent(in) :: bet1
REAL*8, intent(in) :: epsxx
REAL*8, intent(in) :: epsxy
REAL*8, intent(in) :: epsyy
REAL*8, intent(in) :: epsyz
REAL*8, intent(in) :: epszx
REAL*8, intent(in) :: epszz
REAL*8, intent(in) :: gam1
REAL*8, intent(in) :: mu
end function
end interface

interface
REAL*8 function d2phi_depszx2_public(Bx, Bz, gam1, mu)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: Bz
REAL*8, intent(in) :: gam1
REAL*8, intent(in) :: mu
end function
end interface

interface
REAL*8 function d2phi_depszxdepszz_public(Bx, Bz, gam1)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: Bz
REAL*8, intent(in) :: gam1
end function
end interface

interface
REAL*8 function dphi_depszz_public(Bx, By, Bz, bet1, epsxx, epsxy, epsyy, &
      epsyz, epszx, epszz, gam1, lam, mu)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: By
REAL*8, intent(in) :: Bz
REAL*8, intent(in) :: bet1
REAL*8, intent(in) :: epsxx
REAL*8, intent(in) :: epsxy
REAL*8, intent(in) :: epsyy
REAL*8, intent(in) :: epsyz
REAL*8, intent(in) :: epszx
REAL*8, intent(in) :: epszz
REAL*8, intent(in) :: gam1
REAL*8, intent(in) :: lam
REAL*8, intent(in) :: mu
end function
end interface

interface
REAL*8 function d2phi_depszz2_public(Bx, By, Bz, gam1, lam, mu)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: By
REAL*8, intent(in) :: Bz
REAL*8, intent(in) :: gam1
REAL*8, intent(in) :: lam
REAL*8, intent(in) :: mu
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
REAL*8 function I1_public(epsxx, epsyy, epszz)
implicit none
REAL*8, intent(in) :: epsxx
REAL*8, intent(in) :: epsyy
REAL*8, intent(in) :: epszz
end function
end interface

interface
REAL*8 function I2_public(epsxx, epsxy, epsyy, epsyz, epszx, epszz)
implicit none
REAL*8, intent(in) :: epsxx
REAL*8, intent(in) :: epsxy
REAL*8, intent(in) :: epsyy
REAL*8, intent(in) :: epsyz
REAL*8, intent(in) :: epszx
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
REAL*8 function I6_public(Bx, By, Bz, epsxx, epsxy, epsyy, epsyz, epszx, &
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
REAL*8 function phi_public(Bx, By, Bz, alp1, alp2, alp3, alp4, alp5, bet1, &
      epsxx, epsxy, epsyy, epsyz, epszx, epszz, gam1, lam, mu)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: By
REAL*8, intent(in) :: Bz
REAL*8, intent(in) :: alp1
REAL*8, intent(in) :: alp2
REAL*8, intent(in) :: alp3
REAL*8, intent(in) :: alp4
REAL*8, intent(in) :: alp5
REAL*8, intent(in) :: bet1
REAL*8, intent(in) :: epsxx
REAL*8, intent(in) :: epsxy
REAL*8, intent(in) :: epsyy
REAL*8, intent(in) :: epsyz
REAL*8, intent(in) :: epszx
REAL*8, intent(in) :: epszz
REAL*8, intent(in) :: gam1
REAL*8, intent(in) :: lam
REAL*8, intent(in) :: mu
end function
end interface

interface
subroutine H_public(Bx, By, Bz, alp1, alp2, alp3, alp4, alp5, bet1, epsxx, &
      epsxy, epsyy, epsyz, epszx, epszz, gam1, H_out)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: By
REAL*8, intent(in) :: Bz
REAL*8, intent(in) :: alp1
REAL*8, intent(in) :: alp2
REAL*8, intent(in) :: alp3
REAL*8, intent(in) :: alp4
REAL*8, intent(in) :: alp5
REAL*8, intent(in) :: bet1
REAL*8, intent(in) :: epsxx
REAL*8, intent(in) :: epsxy
REAL*8, intent(in) :: epsyy
REAL*8, intent(in) :: epsyz
REAL*8, intent(in) :: epszx
REAL*8, intent(in) :: epszz
REAL*8, intent(in) :: gam1
REAL*8, intent(out), dimension(1:3, 1:1) :: H_out
end subroutine
end interface

interface
subroutine dH_dB_public(Bx, By, Bz, alp1, alp2, alp3, alp4, alp5, bet1, &
      epsxx, epsxy, epsyy, epsyz, epszx, epszz, gam1, dH_dB_out)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: By
REAL*8, intent(in) :: Bz
REAL*8, intent(in) :: alp1
REAL*8, intent(in) :: alp2
REAL*8, intent(in) :: alp3
REAL*8, intent(in) :: alp4
REAL*8, intent(in) :: alp5
REAL*8, intent(in) :: bet1
REAL*8, intent(in) :: epsxx
REAL*8, intent(in) :: epsxy
REAL*8, intent(in) :: epsyy
REAL*8, intent(in) :: epsyz
REAL*8, intent(in) :: epszx
REAL*8, intent(in) :: epszz
REAL*8, intent(in) :: gam1
REAL*8, intent(out), dimension(1:3, 1:3) :: dH_dB_out
end subroutine
end interface

interface
subroutine S_public(Bx, By, Bz, bet1, epsxx, epsxy, epsyy, epsyz, epszx, &
      epszz, gam1, lam, mu, S_out)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: By
REAL*8, intent(in) :: Bz
REAL*8, intent(in) :: bet1
REAL*8, intent(in) :: epsxx
REAL*8, intent(in) :: epsxy
REAL*8, intent(in) :: epsyy
REAL*8, intent(in) :: epsyz
REAL*8, intent(in) :: epszx
REAL*8, intent(in) :: epszz
REAL*8, intent(in) :: gam1
REAL*8, intent(in) :: lam
REAL*8, intent(in) :: mu
REAL*8, intent(out), dimension(1:3, 1:3) :: S_out
end subroutine
end interface

interface
subroutine dS_deps_public(Bx, By, Bz, gam1, lam, mu, dS_deps_out)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: By
REAL*8, intent(in) :: Bz
REAL*8, intent(in) :: gam1
REAL*8, intent(in) :: lam
REAL*8, intent(in) :: mu
REAL*8, intent(out), dimension(1:9, 1:9) :: dS_deps_out
end subroutine
end interface

