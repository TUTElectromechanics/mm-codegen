!******************************************************************************
!*                       Code generated with sympy 1.0                        *
!*                                                                            *
!*              See http://www.sympy.org/ for more information.               *
!*                                                                            *
!*                 This file is part of 'elmer-mgs-galfenol'                  *
!******************************************************************************


interface
REAL(KIND=dp) function dexx_depsxx()
use types
implicit none
end function
end interface
interface
REAL(KIND=dp) function dexx_depsyy()
use types
implicit none
end function
end interface
interface
REAL(KIND=dp) function dexx_depszz()
use types
implicit none
end function
end interface
interface
REAL(KIND=dp) function dexy_depsxy()
use types
implicit none
end function
end interface
interface
REAL(KIND=dp) function deyy_depsxx()
use types
implicit none
end function
end interface
interface
REAL(KIND=dp) function deyy_depsyy()
use types
implicit none
end function
end interface
interface
REAL(KIND=dp) function deyy_depszz()
use types
implicit none
end function
end interface
interface
REAL(KIND=dp) function deyz_depsyz()
use types
implicit none
end function
end interface
interface
REAL(KIND=dp) function dezx_depszx()
use types
implicit none
end function
end interface
interface
REAL(KIND=dp) function dezz_depsxx()
use types
implicit none
end function
end interface
interface
REAL(KIND=dp) function dezz_depsyy()
use types
implicit none
end function
end interface
interface
REAL(KIND=dp) function dezz_depszz()
use types
implicit none
end function
end interface
interface
REAL(KIND=dp) function dI4_dBx(Bx)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bx
end function
end interface
interface
REAL(KIND=dp) function d2I4_dBx2()
use types
implicit none
end function
end interface
interface
REAL(KIND=dp) function dI4_dBy(By)
use types
implicit none
REAL(KIND=dp), intent(in) :: By
end function
end interface
interface
REAL(KIND=dp) function d2I4_dBy2()
use types
implicit none
end function
end interface
interface
REAL(KIND=dp) function dI4_dBz(Bz)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bz
end function
end interface
interface
REAL(KIND=dp) function d2I4_dBz2()
use types
implicit none
end function
end interface
interface
REAL(KIND=dp) function dI5_dBx(Bx, By, Bz, exx, exy, ezx)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bx
REAL(KIND=dp), intent(in) :: By
REAL(KIND=dp), intent(in) :: Bz
REAL(KIND=dp), intent(in) :: exx
REAL(KIND=dp), intent(in) :: exy
REAL(KIND=dp), intent(in) :: ezx
end function
end interface
interface
REAL(KIND=dp) function d2I5_dBx2(exx)
use types
implicit none
REAL(KIND=dp), intent(in) :: exx
end function
end interface
interface
REAL(KIND=dp) function d2I5_dBxdBy(exy)
use types
implicit none
REAL(KIND=dp), intent(in) :: exy
end function
end interface
interface
REAL(KIND=dp) function d2I5_dBxdBz(ezx)
use types
implicit none
REAL(KIND=dp), intent(in) :: ezx
end function
end interface
interface
REAL(KIND=dp) function d2I5_dBxdexx(Bx)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bx
end function
end interface
interface
REAL(KIND=dp) function d2I5_dBxdexy(By)
use types
implicit none
REAL(KIND=dp), intent(in) :: By
end function
end interface
interface
REAL(KIND=dp) function d2I5_dBxdezx(Bz)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bz
end function
end interface
interface
REAL(KIND=dp) function dI5_dBy(Bx, By, Bz, exy, eyy, eyz)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bx
REAL(KIND=dp), intent(in) :: By
REAL(KIND=dp), intent(in) :: Bz
REAL(KIND=dp), intent(in) :: exy
REAL(KIND=dp), intent(in) :: eyy
REAL(KIND=dp), intent(in) :: eyz
end function
end interface
interface
REAL(KIND=dp) function d2I5_dBy2(eyy)
use types
implicit none
REAL(KIND=dp), intent(in) :: eyy
end function
end interface
interface
REAL(KIND=dp) function d2I5_dBydBz(eyz)
use types
implicit none
REAL(KIND=dp), intent(in) :: eyz
end function
end interface
interface
REAL(KIND=dp) function d2I5_dBydexy(Bx)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bx
end function
end interface
interface
REAL(KIND=dp) function d2I5_dBydeyy(By)
use types
implicit none
REAL(KIND=dp), intent(in) :: By
end function
end interface
interface
REAL(KIND=dp) function d2I5_dBydeyz(Bz)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bz
end function
end interface
interface
REAL(KIND=dp) function dI5_dBz(Bx, By, Bz, eyz, ezx, ezz)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bx
REAL(KIND=dp), intent(in) :: By
REAL(KIND=dp), intent(in) :: Bz
REAL(KIND=dp), intent(in) :: eyz
REAL(KIND=dp), intent(in) :: ezx
REAL(KIND=dp), intent(in) :: ezz
end function
end interface
interface
REAL(KIND=dp) function d2I5_dBz2(ezz)
use types
implicit none
REAL(KIND=dp), intent(in) :: ezz
end function
end interface
interface
REAL(KIND=dp) function d2I5_dBzdeyz(By)
use types
implicit none
REAL(KIND=dp), intent(in) :: By
end function
end interface
interface
REAL(KIND=dp) function d2I5_dBzdezx(Bx)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bx
end function
end interface
interface
REAL(KIND=dp) function d2I5_dBzdezz(Bz)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bz
end function
end interface
interface
REAL(KIND=dp) function dI5_dexx(Bx)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bx
end function
end interface
interface
REAL(KIND=dp) function dI5_dexy(Bx, By)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bx
REAL(KIND=dp), intent(in) :: By
end function
end interface
interface
REAL(KIND=dp) function dI5_deyy(By)
use types
implicit none
REAL(KIND=dp), intent(in) :: By
end function
end interface
interface
REAL(KIND=dp) function dI5_deyz(By, Bz)
use types
implicit none
REAL(KIND=dp), intent(in) :: By
REAL(KIND=dp), intent(in) :: Bz
end function
end interface
interface
REAL(KIND=dp) function dI5_dezx(Bx, Bz)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bx
REAL(KIND=dp), intent(in) :: Bz
end function
end interface
interface
REAL(KIND=dp) function dI5_dezz(Bz)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bz
end function
end interface
interface
REAL(KIND=dp) function dI6_dBx(Bx, By, Bz, exx, exy, eyy, eyz, ezx, ezz)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bx
REAL(KIND=dp), intent(in) :: By
REAL(KIND=dp), intent(in) :: Bz
REAL(KIND=dp), intent(in) :: exx
REAL(KIND=dp), intent(in) :: exy
REAL(KIND=dp), intent(in) :: eyy
REAL(KIND=dp), intent(in) :: eyz
REAL(KIND=dp), intent(in) :: ezx
REAL(KIND=dp), intent(in) :: ezz
end function
end interface
interface
REAL(KIND=dp) function d2I6_dBx2(exx, exy, ezx)
use types
implicit none
REAL(KIND=dp), intent(in) :: exx
REAL(KIND=dp), intent(in) :: exy
REAL(KIND=dp), intent(in) :: ezx
end function
end interface
interface
REAL(KIND=dp) function d2I6_dBxdBy(exx, exy, eyy, eyz, ezx)
use types
implicit none
REAL(KIND=dp), intent(in) :: exx
REAL(KIND=dp), intent(in) :: exy
REAL(KIND=dp), intent(in) :: eyy
REAL(KIND=dp), intent(in) :: eyz
REAL(KIND=dp), intent(in) :: ezx
end function
end interface
interface
REAL(KIND=dp) function d2I6_dBxdBz(exx, exy, eyz, ezx, ezz)
use types
implicit none
REAL(KIND=dp), intent(in) :: exx
REAL(KIND=dp), intent(in) :: exy
REAL(KIND=dp), intent(in) :: eyz
REAL(KIND=dp), intent(in) :: ezx
REAL(KIND=dp), intent(in) :: ezz
end function
end interface
interface
REAL(KIND=dp) function d2I6_dBxdexx(Bx, By, Bz, exx, exy, ezx)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bx
REAL(KIND=dp), intent(in) :: By
REAL(KIND=dp), intent(in) :: Bz
REAL(KIND=dp), intent(in) :: exx
REAL(KIND=dp), intent(in) :: exy
REAL(KIND=dp), intent(in) :: ezx
end function
end interface
interface
REAL(KIND=dp) function d2I6_dBxdexy(Bx, By, Bz, exx, exy, eyy, eyz)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bx
REAL(KIND=dp), intent(in) :: By
REAL(KIND=dp), intent(in) :: Bz
REAL(KIND=dp), intent(in) :: exx
REAL(KIND=dp), intent(in) :: exy
REAL(KIND=dp), intent(in) :: eyy
REAL(KIND=dp), intent(in) :: eyz
end function
end interface
interface
REAL(KIND=dp) function d2I6_dBxdeyy(By, exy)
use types
implicit none
REAL(KIND=dp), intent(in) :: By
REAL(KIND=dp), intent(in) :: exy
end function
end interface
interface
REAL(KIND=dp) function d2I6_dBxdeyz(By, Bz, exy, ezx)
use types
implicit none
REAL(KIND=dp), intent(in) :: By
REAL(KIND=dp), intent(in) :: Bz
REAL(KIND=dp), intent(in) :: exy
REAL(KIND=dp), intent(in) :: ezx
end function
end interface
interface
REAL(KIND=dp) function d2I6_dBxdezx(Bx, By, Bz, exx, eyz, ezx, ezz)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bx
REAL(KIND=dp), intent(in) :: By
REAL(KIND=dp), intent(in) :: Bz
REAL(KIND=dp), intent(in) :: exx
REAL(KIND=dp), intent(in) :: eyz
REAL(KIND=dp), intent(in) :: ezx
REAL(KIND=dp), intent(in) :: ezz
end function
end interface
interface
REAL(KIND=dp) function d2I6_dBxdezz(Bz, ezx)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bz
REAL(KIND=dp), intent(in) :: ezx
end function
end interface
interface
REAL(KIND=dp) function dI6_dBy(Bx, By, Bz, exx, exy, eyy, eyz, ezx, ezz)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bx
REAL(KIND=dp), intent(in) :: By
REAL(KIND=dp), intent(in) :: Bz
REAL(KIND=dp), intent(in) :: exx
REAL(KIND=dp), intent(in) :: exy
REAL(KIND=dp), intent(in) :: eyy
REAL(KIND=dp), intent(in) :: eyz
REAL(KIND=dp), intent(in) :: ezx
REAL(KIND=dp), intent(in) :: ezz
end function
end interface
interface
REAL(KIND=dp) function d2I6_dBy2(exy, eyy, eyz)
use types
implicit none
REAL(KIND=dp), intent(in) :: exy
REAL(KIND=dp), intent(in) :: eyy
REAL(KIND=dp), intent(in) :: eyz
end function
end interface
interface
REAL(KIND=dp) function d2I6_dBydBz(exy, eyy, eyz, ezx, ezz)
use types
implicit none
REAL(KIND=dp), intent(in) :: exy
REAL(KIND=dp), intent(in) :: eyy
REAL(KIND=dp), intent(in) :: eyz
REAL(KIND=dp), intent(in) :: ezx
REAL(KIND=dp), intent(in) :: ezz
end function
end interface
interface
REAL(KIND=dp) function d2I6_dBydexx(Bx, exy)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bx
REAL(KIND=dp), intent(in) :: exy
end function
end interface
interface
REAL(KIND=dp) function d2I6_dBydexy(Bx, By, Bz, exx, exy, eyy, ezx)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bx
REAL(KIND=dp), intent(in) :: By
REAL(KIND=dp), intent(in) :: Bz
REAL(KIND=dp), intent(in) :: exx
REAL(KIND=dp), intent(in) :: exy
REAL(KIND=dp), intent(in) :: eyy
REAL(KIND=dp), intent(in) :: ezx
end function
end interface
interface
REAL(KIND=dp) function d2I6_dBydeyy(Bx, By, Bz, exy, eyy, eyz)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bx
REAL(KIND=dp), intent(in) :: By
REAL(KIND=dp), intent(in) :: Bz
REAL(KIND=dp), intent(in) :: exy
REAL(KIND=dp), intent(in) :: eyy
REAL(KIND=dp), intent(in) :: eyz
end function
end interface
interface
REAL(KIND=dp) function d2I6_dBydeyz(Bx, By, Bz, eyy, eyz, ezx, ezz)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bx
REAL(KIND=dp), intent(in) :: By
REAL(KIND=dp), intent(in) :: Bz
REAL(KIND=dp), intent(in) :: eyy
REAL(KIND=dp), intent(in) :: eyz
REAL(KIND=dp), intent(in) :: ezx
REAL(KIND=dp), intent(in) :: ezz
end function
end interface
interface
REAL(KIND=dp) function d2I6_dBydezx(Bx, Bz, exy, eyz)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bx
REAL(KIND=dp), intent(in) :: Bz
REAL(KIND=dp), intent(in) :: exy
REAL(KIND=dp), intent(in) :: eyz
end function
end interface
interface
REAL(KIND=dp) function d2I6_dBydezz(Bz, eyz)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bz
REAL(KIND=dp), intent(in) :: eyz
end function
end interface
interface
REAL(KIND=dp) function dI6_dBz(Bx, By, Bz, exx, exy, eyy, eyz, ezx, ezz)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bx
REAL(KIND=dp), intent(in) :: By
REAL(KIND=dp), intent(in) :: Bz
REAL(KIND=dp), intent(in) :: exx
REAL(KIND=dp), intent(in) :: exy
REAL(KIND=dp), intent(in) :: eyy
REAL(KIND=dp), intent(in) :: eyz
REAL(KIND=dp), intent(in) :: ezx
REAL(KIND=dp), intent(in) :: ezz
end function
end interface
interface
REAL(KIND=dp) function d2I6_dBz2(eyz, ezx, ezz)
use types
implicit none
REAL(KIND=dp), intent(in) :: eyz
REAL(KIND=dp), intent(in) :: ezx
REAL(KIND=dp), intent(in) :: ezz
end function
end interface
interface
REAL(KIND=dp) function d2I6_dBzdexx(Bx, ezx)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bx
REAL(KIND=dp), intent(in) :: ezx
end function
end interface
interface
REAL(KIND=dp) function d2I6_dBzdexy(Bx, By, eyz, ezx)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bx
REAL(KIND=dp), intent(in) :: By
REAL(KIND=dp), intent(in) :: eyz
REAL(KIND=dp), intent(in) :: ezx
end function
end interface
interface
REAL(KIND=dp) function d2I6_dBzdeyy(By, eyz)
use types
implicit none
REAL(KIND=dp), intent(in) :: By
REAL(KIND=dp), intent(in) :: eyz
end function
end interface
interface
REAL(KIND=dp) function d2I6_dBzdeyz(Bx, By, Bz, exy, eyy, eyz, ezz)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bx
REAL(KIND=dp), intent(in) :: By
REAL(KIND=dp), intent(in) :: Bz
REAL(KIND=dp), intent(in) :: exy
REAL(KIND=dp), intent(in) :: eyy
REAL(KIND=dp), intent(in) :: eyz
REAL(KIND=dp), intent(in) :: ezz
end function
end interface
interface
REAL(KIND=dp) function d2I6_dBzdezx(Bx, By, Bz, exx, exy, ezx, ezz)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bx
REAL(KIND=dp), intent(in) :: By
REAL(KIND=dp), intent(in) :: Bz
REAL(KIND=dp), intent(in) :: exx
REAL(KIND=dp), intent(in) :: exy
REAL(KIND=dp), intent(in) :: ezx
REAL(KIND=dp), intent(in) :: ezz
end function
end interface
interface
REAL(KIND=dp) function d2I6_dBzdezz(Bx, By, Bz, eyz, ezx, ezz)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bx
REAL(KIND=dp), intent(in) :: By
REAL(KIND=dp), intent(in) :: Bz
REAL(KIND=dp), intent(in) :: eyz
REAL(KIND=dp), intent(in) :: ezx
REAL(KIND=dp), intent(in) :: ezz
end function
end interface
interface
REAL(KIND=dp) function dI6_dexx(Bx, By, Bz, exx, exy, ezx)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bx
REAL(KIND=dp), intent(in) :: By
REAL(KIND=dp), intent(in) :: Bz
REAL(KIND=dp), intent(in) :: exx
REAL(KIND=dp), intent(in) :: exy
REAL(KIND=dp), intent(in) :: ezx
end function
end interface
interface
REAL(KIND=dp) function d2I6_dexx2(Bx)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bx
end function
end interface
interface
REAL(KIND=dp) function d2I6_dexxdexy(Bx, By)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bx
REAL(KIND=dp), intent(in) :: By
end function
end interface
interface
REAL(KIND=dp) function d2I6_dexxdezx(Bx, Bz)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bx
REAL(KIND=dp), intent(in) :: Bz
end function
end interface
interface
REAL(KIND=dp) function dI6_dexy(Bx, By, Bz, exx, exy, eyy, eyz, ezx)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bx
REAL(KIND=dp), intent(in) :: By
REAL(KIND=dp), intent(in) :: Bz
REAL(KIND=dp), intent(in) :: exx
REAL(KIND=dp), intent(in) :: exy
REAL(KIND=dp), intent(in) :: eyy
REAL(KIND=dp), intent(in) :: eyz
REAL(KIND=dp), intent(in) :: ezx
end function
end interface
interface
REAL(KIND=dp) function d2I6_dexy2(Bx, By)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bx
REAL(KIND=dp), intent(in) :: By
end function
end interface
interface
REAL(KIND=dp) function d2I6_dexydeyy(Bx, By)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bx
REAL(KIND=dp), intent(in) :: By
end function
end interface
interface
REAL(KIND=dp) function d2I6_dexydeyz(Bx, Bz)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bx
REAL(KIND=dp), intent(in) :: Bz
end function
end interface
interface
REAL(KIND=dp) function d2I6_dexydezx(By, Bz)
use types
implicit none
REAL(KIND=dp), intent(in) :: By
REAL(KIND=dp), intent(in) :: Bz
end function
end interface
interface
REAL(KIND=dp) function dI6_deyy(Bx, By, Bz, exy, eyy, eyz)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bx
REAL(KIND=dp), intent(in) :: By
REAL(KIND=dp), intent(in) :: Bz
REAL(KIND=dp), intent(in) :: exy
REAL(KIND=dp), intent(in) :: eyy
REAL(KIND=dp), intent(in) :: eyz
end function
end interface
interface
REAL(KIND=dp) function d2I6_deyy2(By)
use types
implicit none
REAL(KIND=dp), intent(in) :: By
end function
end interface
interface
REAL(KIND=dp) function d2I6_deyydeyz(By, Bz)
use types
implicit none
REAL(KIND=dp), intent(in) :: By
REAL(KIND=dp), intent(in) :: Bz
end function
end interface
interface
REAL(KIND=dp) function dI6_deyz(Bx, By, Bz, exy, eyy, eyz, ezx, ezz)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bx
REAL(KIND=dp), intent(in) :: By
REAL(KIND=dp), intent(in) :: Bz
REAL(KIND=dp), intent(in) :: exy
REAL(KIND=dp), intent(in) :: eyy
REAL(KIND=dp), intent(in) :: eyz
REAL(KIND=dp), intent(in) :: ezx
REAL(KIND=dp), intent(in) :: ezz
end function
end interface
interface
REAL(KIND=dp) function d2I6_deyz2(By, Bz)
use types
implicit none
REAL(KIND=dp), intent(in) :: By
REAL(KIND=dp), intent(in) :: Bz
end function
end interface
interface
REAL(KIND=dp) function d2I6_deyzdezx(Bx, By)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bx
REAL(KIND=dp), intent(in) :: By
end function
end interface
interface
REAL(KIND=dp) function d2I6_deyzdezz(By, Bz)
use types
implicit none
REAL(KIND=dp), intent(in) :: By
REAL(KIND=dp), intent(in) :: Bz
end function
end interface
interface
REAL(KIND=dp) function dI6_dezx(Bx, By, Bz, exx, exy, eyz, ezx, ezz)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bx
REAL(KIND=dp), intent(in) :: By
REAL(KIND=dp), intent(in) :: Bz
REAL(KIND=dp), intent(in) :: exx
REAL(KIND=dp), intent(in) :: exy
REAL(KIND=dp), intent(in) :: eyz
REAL(KIND=dp), intent(in) :: ezx
REAL(KIND=dp), intent(in) :: ezz
end function
end interface
interface
REAL(KIND=dp) function d2I6_dezx2(Bx, Bz)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bx
REAL(KIND=dp), intent(in) :: Bz
end function
end interface
interface
REAL(KIND=dp) function d2I6_dezxdezz(Bx, Bz)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bx
REAL(KIND=dp), intent(in) :: Bz
end function
end interface
interface
REAL(KIND=dp) function dI6_dezz(Bx, By, Bz, eyz, ezx, ezz)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bx
REAL(KIND=dp), intent(in) :: By
REAL(KIND=dp), intent(in) :: Bz
REAL(KIND=dp), intent(in) :: eyz
REAL(KIND=dp), intent(in) :: ezx
REAL(KIND=dp), intent(in) :: ezz
end function
end interface
interface
REAL(KIND=dp) function d2I6_dezz2(Bz)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bz
end function
end interface
interface
REAL(KIND=dp) function du_dup(u0)
use types
implicit none
REAL(KIND=dp), intent(in) :: u0
end function
end interface
interface
REAL(KIND=dp) function dup_dI4(I4)
use types
implicit none
REAL(KIND=dp), intent(in) :: I4
end function
end interface
interface
REAL(KIND=dp) function d2up_dI42(I4)
use types
implicit none
REAL(KIND=dp), intent(in) :: I4
end function
end interface
interface
REAL(KIND=dp) function dv_dvp(v0)
use types
implicit none
REAL(KIND=dp), intent(in) :: v0
end function
end interface
interface
REAL(KIND=dp) function dvp_dI4(I4, I5)
use types
implicit none
REAL(KIND=dp), intent(in) :: I4
REAL(KIND=dp), intent(in) :: I5
end function
end interface
interface
REAL(KIND=dp) function d2vp_dI42(I4, I5)
use types
implicit none
REAL(KIND=dp), intent(in) :: I4
REAL(KIND=dp), intent(in) :: I5
end function
end interface
interface
REAL(KIND=dp) function d2vp_dI4dI5(I4)
use types
implicit none
REAL(KIND=dp), intent(in) :: I4
end function
end interface
interface
REAL(KIND=dp) function dvp_dI5(I4)
use types
implicit none
REAL(KIND=dp), intent(in) :: I4
end function
end interface
interface
REAL(KIND=dp) function dw_dwp(w0)
use types
implicit none
REAL(KIND=dp), intent(in) :: w0
end function
end interface
interface
REAL(KIND=dp) function dwp_dI4(I4, I5, I6)
use types
implicit none
REAL(KIND=dp), intent(in) :: I4
REAL(KIND=dp), intent(in) :: I5
REAL(KIND=dp), intent(in) :: I6
end function
end interface
interface
REAL(KIND=dp) function d2wp_dI42(I4, I5, I6)
use types
implicit none
REAL(KIND=dp), intent(in) :: I4
REAL(KIND=dp), intent(in) :: I5
REAL(KIND=dp), intent(in) :: I6
end function
end interface
interface
REAL(KIND=dp) function d2wp_dI4dI5(I4, I5, I6)
use types
implicit none
REAL(KIND=dp), intent(in) :: I4
REAL(KIND=dp), intent(in) :: I5
REAL(KIND=dp), intent(in) :: I6
end function
end interface
interface
REAL(KIND=dp) function d2wp_dI4dI6(I4, I5, I6)
use types
implicit none
REAL(KIND=dp), intent(in) :: I4
REAL(KIND=dp), intent(in) :: I5
REAL(KIND=dp), intent(in) :: I6
end function
end interface
interface
REAL(KIND=dp) function dwp_dI5(I4, I5, I6)
use types
implicit none
REAL(KIND=dp), intent(in) :: I4
REAL(KIND=dp), intent(in) :: I5
REAL(KIND=dp), intent(in) :: I6
end function
end interface
interface
REAL(KIND=dp) function d2wp_dI52(I4, I5, I6)
use types
implicit none
REAL(KIND=dp), intent(in) :: I4
REAL(KIND=dp), intent(in) :: I5
REAL(KIND=dp), intent(in) :: I6
end function
end interface
interface
REAL(KIND=dp) function d2wp_dI5dI6(I4, I5, I6)
use types
implicit none
REAL(KIND=dp), intent(in) :: I4
REAL(KIND=dp), intent(in) :: I5
REAL(KIND=dp), intent(in) :: I6
end function
end interface
interface
REAL(KIND=dp) function dwp_dI6(I4, I5, I6)
use types
implicit none
REAL(KIND=dp), intent(in) :: I4
REAL(KIND=dp), intent(in) :: I5
REAL(KIND=dp), intent(in) :: I6
end function
end interface
interface
REAL(KIND=dp) function d2wp_dI62(I4, I5, I6)
use types
implicit none
REAL(KIND=dp), intent(in) :: I4
REAL(KIND=dp), intent(in) :: I5
REAL(KIND=dp), intent(in) :: I6
end function
end interface
interface
REAL(KIND=dp) function dphi_dBx(dI4_dBx, dI5_dBx, dI6_dBx, dphi_du, dphi_dv, &
dphi_dw, du_dup, dup_dI4, dv_dvp, dvp_dI4, dvp_dI5, dw_dwp, &
dwp_dI4, dwp_dI5, dwp_dI6)
use types
implicit none
REAL(KIND=dp), intent(in) :: dI4_dBx
REAL(KIND=dp), intent(in) :: dI5_dBx
REAL(KIND=dp), intent(in) :: dI6_dBx
REAL(KIND=dp), intent(in) :: dphi_du
REAL(KIND=dp), intent(in) :: dphi_dv
REAL(KIND=dp), intent(in) :: dphi_dw
REAL(KIND=dp), intent(in) :: du_dup
REAL(KIND=dp), intent(in) :: dup_dI4
REAL(KIND=dp), intent(in) :: dv_dvp
REAL(KIND=dp), intent(in) :: dvp_dI4
REAL(KIND=dp), intent(in) :: dvp_dI5
REAL(KIND=dp), intent(in) :: dw_dwp
REAL(KIND=dp), intent(in) :: dwp_dI4
REAL(KIND=dp), intent(in) :: dwp_dI5
REAL(KIND=dp), intent(in) :: dwp_dI6
end function
end interface
interface
REAL(KIND=dp) function d2phi_dBx2(d2I4_dBx2, d2I5_dBx2, d2I6_dBx2, d2phi_du2, &
d2phi_dudv, d2phi_dudw, d2phi_dv2, d2phi_dvdw, d2phi_dw2, &
d2up_dI42, d2vp_dI42, d2vp_dI4dI5, d2wp_dI42, d2wp_dI4dI5, &
d2wp_dI4dI6, d2wp_dI52, d2wp_dI5dI6, d2wp_dI62, dI4_dBx, &
dI5_dBx, dI6_dBx, dphi_du, dphi_dv, dphi_dw, du_dup, &
dup_dI4, dv_dvp, dvp_dI4, dvp_dI5, dw_dwp, dwp_dI4, dwp_dI5, &
dwp_dI6)
use types
implicit none
REAL(KIND=dp), intent(in) :: d2I4_dBx2
REAL(KIND=dp), intent(in) :: d2I5_dBx2
REAL(KIND=dp), intent(in) :: d2I6_dBx2
REAL(KIND=dp), intent(in) :: d2phi_du2
REAL(KIND=dp), intent(in) :: d2phi_dudv
REAL(KIND=dp), intent(in) :: d2phi_dudw
REAL(KIND=dp), intent(in) :: d2phi_dv2
REAL(KIND=dp), intent(in) :: d2phi_dvdw
REAL(KIND=dp), intent(in) :: d2phi_dw2
REAL(KIND=dp), intent(in) :: d2up_dI42
REAL(KIND=dp), intent(in) :: d2vp_dI42
REAL(KIND=dp), intent(in) :: d2vp_dI4dI5
REAL(KIND=dp), intent(in) :: d2wp_dI42
REAL(KIND=dp), intent(in) :: d2wp_dI4dI5
REAL(KIND=dp), intent(in) :: d2wp_dI4dI6
REAL(KIND=dp), intent(in) :: d2wp_dI52
REAL(KIND=dp), intent(in) :: d2wp_dI5dI6
REAL(KIND=dp), intent(in) :: d2wp_dI62
REAL(KIND=dp), intent(in) :: dI4_dBx
REAL(KIND=dp), intent(in) :: dI5_dBx
REAL(KIND=dp), intent(in) :: dI6_dBx
REAL(KIND=dp), intent(in) :: dphi_du
REAL(KIND=dp), intent(in) :: dphi_dv
REAL(KIND=dp), intent(in) :: dphi_dw
REAL(KIND=dp), intent(in) :: du_dup
REAL(KIND=dp), intent(in) :: dup_dI4
REAL(KIND=dp), intent(in) :: dv_dvp
REAL(KIND=dp), intent(in) :: dvp_dI4
REAL(KIND=dp), intent(in) :: dvp_dI5
REAL(KIND=dp), intent(in) :: dw_dwp
REAL(KIND=dp), intent(in) :: dwp_dI4
REAL(KIND=dp), intent(in) :: dwp_dI5
REAL(KIND=dp), intent(in) :: dwp_dI6
end function
end interface
interface
REAL(KIND=dp) function d2phi_dBxdBy(d2I5_dBxdBy, d2I6_dBxdBy, d2phi_du2, &
d2phi_dudv, d2phi_dudw, d2phi_dv2, d2phi_dvdw, d2phi_dw2, &
d2up_dI42, d2vp_dI42, d2vp_dI4dI5, d2wp_dI42, d2wp_dI4dI5, &
d2wp_dI4dI6, d2wp_dI52, d2wp_dI5dI6, d2wp_dI62, dI4_dBx, &
dI4_dBy, dI5_dBx, dI5_dBy, dI6_dBx, dI6_dBy, dphi_du, &
dphi_dv, dphi_dw, du_dup, dup_dI4, dv_dvp, dvp_dI4, dvp_dI5, &
dw_dwp, dwp_dI4, dwp_dI5, dwp_dI6)
use types
implicit none
REAL(KIND=dp), intent(in) :: d2I5_dBxdBy
REAL(KIND=dp), intent(in) :: d2I6_dBxdBy
REAL(KIND=dp), intent(in) :: d2phi_du2
REAL(KIND=dp), intent(in) :: d2phi_dudv
REAL(KIND=dp), intent(in) :: d2phi_dudw
REAL(KIND=dp), intent(in) :: d2phi_dv2
REAL(KIND=dp), intent(in) :: d2phi_dvdw
REAL(KIND=dp), intent(in) :: d2phi_dw2
REAL(KIND=dp), intent(in) :: d2up_dI42
REAL(KIND=dp), intent(in) :: d2vp_dI42
REAL(KIND=dp), intent(in) :: d2vp_dI4dI5
REAL(KIND=dp), intent(in) :: d2wp_dI42
REAL(KIND=dp), intent(in) :: d2wp_dI4dI5
REAL(KIND=dp), intent(in) :: d2wp_dI4dI6
REAL(KIND=dp), intent(in) :: d2wp_dI52
REAL(KIND=dp), intent(in) :: d2wp_dI5dI6
REAL(KIND=dp), intent(in) :: d2wp_dI62
REAL(KIND=dp), intent(in) :: dI4_dBx
REAL(KIND=dp), intent(in) :: dI4_dBy
REAL(KIND=dp), intent(in) :: dI5_dBx
REAL(KIND=dp), intent(in) :: dI5_dBy
REAL(KIND=dp), intent(in) :: dI6_dBx
REAL(KIND=dp), intent(in) :: dI6_dBy
REAL(KIND=dp), intent(in) :: dphi_du
REAL(KIND=dp), intent(in) :: dphi_dv
REAL(KIND=dp), intent(in) :: dphi_dw
REAL(KIND=dp), intent(in) :: du_dup
REAL(KIND=dp), intent(in) :: dup_dI4
REAL(KIND=dp), intent(in) :: dv_dvp
REAL(KIND=dp), intent(in) :: dvp_dI4
REAL(KIND=dp), intent(in) :: dvp_dI5
REAL(KIND=dp), intent(in) :: dw_dwp
REAL(KIND=dp), intent(in) :: dwp_dI4
REAL(KIND=dp), intent(in) :: dwp_dI5
REAL(KIND=dp), intent(in) :: dwp_dI6
end function
end interface
interface
REAL(KIND=dp) function d2phi_dBxdBz(d2I5_dBxdBz, d2I6_dBxdBz, d2phi_du2, &
d2phi_dudv, d2phi_dudw, d2phi_dv2, d2phi_dvdw, d2phi_dw2, &
d2up_dI42, d2vp_dI42, d2vp_dI4dI5, d2wp_dI42, d2wp_dI4dI5, &
d2wp_dI4dI6, d2wp_dI52, d2wp_dI5dI6, d2wp_dI62, dI4_dBx, &
dI4_dBz, dI5_dBx, dI5_dBz, dI6_dBx, dI6_dBz, dphi_du, &
dphi_dv, dphi_dw, du_dup, dup_dI4, dv_dvp, dvp_dI4, dvp_dI5, &
dw_dwp, dwp_dI4, dwp_dI5, dwp_dI6)
use types
implicit none
REAL(KIND=dp), intent(in) :: d2I5_dBxdBz
REAL(KIND=dp), intent(in) :: d2I6_dBxdBz
REAL(KIND=dp), intent(in) :: d2phi_du2
REAL(KIND=dp), intent(in) :: d2phi_dudv
REAL(KIND=dp), intent(in) :: d2phi_dudw
REAL(KIND=dp), intent(in) :: d2phi_dv2
REAL(KIND=dp), intent(in) :: d2phi_dvdw
REAL(KIND=dp), intent(in) :: d2phi_dw2
REAL(KIND=dp), intent(in) :: d2up_dI42
REAL(KIND=dp), intent(in) :: d2vp_dI42
REAL(KIND=dp), intent(in) :: d2vp_dI4dI5
REAL(KIND=dp), intent(in) :: d2wp_dI42
REAL(KIND=dp), intent(in) :: d2wp_dI4dI5
REAL(KIND=dp), intent(in) :: d2wp_dI4dI6
REAL(KIND=dp), intent(in) :: d2wp_dI52
REAL(KIND=dp), intent(in) :: d2wp_dI5dI6
REAL(KIND=dp), intent(in) :: d2wp_dI62
REAL(KIND=dp), intent(in) :: dI4_dBx
REAL(KIND=dp), intent(in) :: dI4_dBz
REAL(KIND=dp), intent(in) :: dI5_dBx
REAL(KIND=dp), intent(in) :: dI5_dBz
REAL(KIND=dp), intent(in) :: dI6_dBx
REAL(KIND=dp), intent(in) :: dI6_dBz
REAL(KIND=dp), intent(in) :: dphi_du
REAL(KIND=dp), intent(in) :: dphi_dv
REAL(KIND=dp), intent(in) :: dphi_dw
REAL(KIND=dp), intent(in) :: du_dup
REAL(KIND=dp), intent(in) :: dup_dI4
REAL(KIND=dp), intent(in) :: dv_dvp
REAL(KIND=dp), intent(in) :: dvp_dI4
REAL(KIND=dp), intent(in) :: dvp_dI5
REAL(KIND=dp), intent(in) :: dw_dwp
REAL(KIND=dp), intent(in) :: dwp_dI4
REAL(KIND=dp), intent(in) :: dwp_dI5
REAL(KIND=dp), intent(in) :: dwp_dI6
end function
end interface
interface
REAL(KIND=dp) function d2phi_dBxdepsxx(d2I5_dBxdexx, d2I6_dBxdexx, d2I6_dBxdeyy, &
d2I6_dBxdezz, d2phi_dudv, d2phi_dudw, d2phi_dv2, d2phi_dvdw, &
d2phi_dw2, d2vp_dI4dI5, d2wp_dI4dI5, d2wp_dI4dI6, d2wp_dI52, &
d2wp_dI5dI6, d2wp_dI62, dI4_dBx, dI5_dBx, dI5_dexx, &
dI5_deyy, dI5_dezz, dI6_dBx, dI6_dexx, dI6_deyy, dI6_dezz, &
dexx_depsxx, deyy_depsxx, dezz_depsxx, dphi_dv, dphi_dw, &
du_dup, dup_dI4, dv_dvp, dvp_dI4, dvp_dI5, dw_dwp, dwp_dI4, &
dwp_dI5, dwp_dI6)
use types
implicit none
REAL(KIND=dp), intent(in) :: d2I5_dBxdexx
REAL(KIND=dp), intent(in) :: d2I6_dBxdexx
REAL(KIND=dp), intent(in) :: d2I6_dBxdeyy
REAL(KIND=dp), intent(in) :: d2I6_dBxdezz
REAL(KIND=dp), intent(in) :: d2phi_dudv
REAL(KIND=dp), intent(in) :: d2phi_dudw
REAL(KIND=dp), intent(in) :: d2phi_dv2
REAL(KIND=dp), intent(in) :: d2phi_dvdw
REAL(KIND=dp), intent(in) :: d2phi_dw2
REAL(KIND=dp), intent(in) :: d2vp_dI4dI5
REAL(KIND=dp), intent(in) :: d2wp_dI4dI5
REAL(KIND=dp), intent(in) :: d2wp_dI4dI6
REAL(KIND=dp), intent(in) :: d2wp_dI52
REAL(KIND=dp), intent(in) :: d2wp_dI5dI6
REAL(KIND=dp), intent(in) :: d2wp_dI62
REAL(KIND=dp), intent(in) :: dI4_dBx
REAL(KIND=dp), intent(in) :: dI5_dBx
REAL(KIND=dp), intent(in) :: dI5_dexx
REAL(KIND=dp), intent(in) :: dI5_deyy
REAL(KIND=dp), intent(in) :: dI5_dezz
REAL(KIND=dp), intent(in) :: dI6_dBx
REAL(KIND=dp), intent(in) :: dI6_dexx
REAL(KIND=dp), intent(in) :: dI6_deyy
REAL(KIND=dp), intent(in) :: dI6_dezz
REAL(KIND=dp), intent(in) :: dexx_depsxx
REAL(KIND=dp), intent(in) :: deyy_depsxx
REAL(KIND=dp), intent(in) :: dezz_depsxx
REAL(KIND=dp), intent(in) :: dphi_dv
REAL(KIND=dp), intent(in) :: dphi_dw
REAL(KIND=dp), intent(in) :: du_dup
REAL(KIND=dp), intent(in) :: dup_dI4
REAL(KIND=dp), intent(in) :: dv_dvp
REAL(KIND=dp), intent(in) :: dvp_dI4
REAL(KIND=dp), intent(in) :: dvp_dI5
REAL(KIND=dp), intent(in) :: dw_dwp
REAL(KIND=dp), intent(in) :: dwp_dI4
REAL(KIND=dp), intent(in) :: dwp_dI5
REAL(KIND=dp), intent(in) :: dwp_dI6
end function
end interface
interface
REAL(KIND=dp) function d2phi_dBxdepsxy(d2I5_dBxdexy, d2I6_dBxdexy, d2phi_dudv, &
d2phi_dudw, d2phi_dv2, d2phi_dvdw, d2phi_dw2, d2vp_dI4dI5, &
d2wp_dI4dI5, d2wp_dI4dI6, d2wp_dI52, d2wp_dI5dI6, d2wp_dI62, &
dI4_dBx, dI5_dBx, dI5_dexy, dI6_dBx, dI6_dexy, dexy_depsxy, &
dphi_dv, dphi_dw, du_dup, dup_dI4, dv_dvp, dvp_dI4, dvp_dI5, &
dw_dwp, dwp_dI4, dwp_dI5, dwp_dI6)
use types
implicit none
REAL(KIND=dp), intent(in) :: d2I5_dBxdexy
REAL(KIND=dp), intent(in) :: d2I6_dBxdexy
REAL(KIND=dp), intent(in) :: d2phi_dudv
REAL(KIND=dp), intent(in) :: d2phi_dudw
REAL(KIND=dp), intent(in) :: d2phi_dv2
REAL(KIND=dp), intent(in) :: d2phi_dvdw
REAL(KIND=dp), intent(in) :: d2phi_dw2
REAL(KIND=dp), intent(in) :: d2vp_dI4dI5
REAL(KIND=dp), intent(in) :: d2wp_dI4dI5
REAL(KIND=dp), intent(in) :: d2wp_dI4dI6
REAL(KIND=dp), intent(in) :: d2wp_dI52
REAL(KIND=dp), intent(in) :: d2wp_dI5dI6
REAL(KIND=dp), intent(in) :: d2wp_dI62
REAL(KIND=dp), intent(in) :: dI4_dBx
REAL(KIND=dp), intent(in) :: dI5_dBx
REAL(KIND=dp), intent(in) :: dI5_dexy
REAL(KIND=dp), intent(in) :: dI6_dBx
REAL(KIND=dp), intent(in) :: dI6_dexy
REAL(KIND=dp), intent(in) :: dexy_depsxy
REAL(KIND=dp), intent(in) :: dphi_dv
REAL(KIND=dp), intent(in) :: dphi_dw
REAL(KIND=dp), intent(in) :: du_dup
REAL(KIND=dp), intent(in) :: dup_dI4
REAL(KIND=dp), intent(in) :: dv_dvp
REAL(KIND=dp), intent(in) :: dvp_dI4
REAL(KIND=dp), intent(in) :: dvp_dI5
REAL(KIND=dp), intent(in) :: dw_dwp
REAL(KIND=dp), intent(in) :: dwp_dI4
REAL(KIND=dp), intent(in) :: dwp_dI5
REAL(KIND=dp), intent(in) :: dwp_dI6
end function
end interface
interface
REAL(KIND=dp) function d2phi_dBxdepsyy(d2I5_dBxdexx, d2I6_dBxdexx, d2I6_dBxdeyy, &
d2I6_dBxdezz, d2phi_dudv, d2phi_dudw, d2phi_dv2, d2phi_dvdw, &
d2phi_dw2, d2vp_dI4dI5, d2wp_dI4dI5, d2wp_dI4dI6, d2wp_dI52, &
d2wp_dI5dI6, d2wp_dI62, dI4_dBx, dI5_dBx, dI5_dexx, &
dI5_deyy, dI5_dezz, dI6_dBx, dI6_dexx, dI6_deyy, dI6_dezz, &
dexx_depsyy, deyy_depsyy, dezz_depsyy, dphi_dv, dphi_dw, &
du_dup, dup_dI4, dv_dvp, dvp_dI4, dvp_dI5, dw_dwp, dwp_dI4, &
dwp_dI5, dwp_dI6)
use types
implicit none
REAL(KIND=dp), intent(in) :: d2I5_dBxdexx
REAL(KIND=dp), intent(in) :: d2I6_dBxdexx
REAL(KIND=dp), intent(in) :: d2I6_dBxdeyy
REAL(KIND=dp), intent(in) :: d2I6_dBxdezz
REAL(KIND=dp), intent(in) :: d2phi_dudv
REAL(KIND=dp), intent(in) :: d2phi_dudw
REAL(KIND=dp), intent(in) :: d2phi_dv2
REAL(KIND=dp), intent(in) :: d2phi_dvdw
REAL(KIND=dp), intent(in) :: d2phi_dw2
REAL(KIND=dp), intent(in) :: d2vp_dI4dI5
REAL(KIND=dp), intent(in) :: d2wp_dI4dI5
REAL(KIND=dp), intent(in) :: d2wp_dI4dI6
REAL(KIND=dp), intent(in) :: d2wp_dI52
REAL(KIND=dp), intent(in) :: d2wp_dI5dI6
REAL(KIND=dp), intent(in) :: d2wp_dI62
REAL(KIND=dp), intent(in) :: dI4_dBx
REAL(KIND=dp), intent(in) :: dI5_dBx
REAL(KIND=dp), intent(in) :: dI5_dexx
REAL(KIND=dp), intent(in) :: dI5_deyy
REAL(KIND=dp), intent(in) :: dI5_dezz
REAL(KIND=dp), intent(in) :: dI6_dBx
REAL(KIND=dp), intent(in) :: dI6_dexx
REAL(KIND=dp), intent(in) :: dI6_deyy
REAL(KIND=dp), intent(in) :: dI6_dezz
REAL(KIND=dp), intent(in) :: dexx_depsyy
REAL(KIND=dp), intent(in) :: deyy_depsyy
REAL(KIND=dp), intent(in) :: dezz_depsyy
REAL(KIND=dp), intent(in) :: dphi_dv
REAL(KIND=dp), intent(in) :: dphi_dw
REAL(KIND=dp), intent(in) :: du_dup
REAL(KIND=dp), intent(in) :: dup_dI4
REAL(KIND=dp), intent(in) :: dv_dvp
REAL(KIND=dp), intent(in) :: dvp_dI4
REAL(KIND=dp), intent(in) :: dvp_dI5
REAL(KIND=dp), intent(in) :: dw_dwp
REAL(KIND=dp), intent(in) :: dwp_dI4
REAL(KIND=dp), intent(in) :: dwp_dI5
REAL(KIND=dp), intent(in) :: dwp_dI6
end function
end interface
interface
REAL(KIND=dp) function d2phi_dBxdepsyz(d2I6_dBxdeyz, d2phi_dudv, d2phi_dudw, &
d2phi_dv2, d2phi_dvdw, d2phi_dw2, d2vp_dI4dI5, d2wp_dI4dI5, &
d2wp_dI4dI6, d2wp_dI52, d2wp_dI5dI6, d2wp_dI62, dI4_dBx, &
dI5_dBx, dI5_deyz, dI6_dBx, dI6_deyz, deyz_depsyz, dphi_dv, &
dphi_dw, du_dup, dup_dI4, dv_dvp, dvp_dI4, dvp_dI5, dw_dwp, &
dwp_dI4, dwp_dI5, dwp_dI6)
use types
implicit none
REAL(KIND=dp), intent(in) :: d2I6_dBxdeyz
REAL(KIND=dp), intent(in) :: d2phi_dudv
REAL(KIND=dp), intent(in) :: d2phi_dudw
REAL(KIND=dp), intent(in) :: d2phi_dv2
REAL(KIND=dp), intent(in) :: d2phi_dvdw
REAL(KIND=dp), intent(in) :: d2phi_dw2
REAL(KIND=dp), intent(in) :: d2vp_dI4dI5
REAL(KIND=dp), intent(in) :: d2wp_dI4dI5
REAL(KIND=dp), intent(in) :: d2wp_dI4dI6
REAL(KIND=dp), intent(in) :: d2wp_dI52
REAL(KIND=dp), intent(in) :: d2wp_dI5dI6
REAL(KIND=dp), intent(in) :: d2wp_dI62
REAL(KIND=dp), intent(in) :: dI4_dBx
REAL(KIND=dp), intent(in) :: dI5_dBx
REAL(KIND=dp), intent(in) :: dI5_deyz
REAL(KIND=dp), intent(in) :: dI6_dBx
REAL(KIND=dp), intent(in) :: dI6_deyz
REAL(KIND=dp), intent(in) :: deyz_depsyz
REAL(KIND=dp), intent(in) :: dphi_dv
REAL(KIND=dp), intent(in) :: dphi_dw
REAL(KIND=dp), intent(in) :: du_dup
REAL(KIND=dp), intent(in) :: dup_dI4
REAL(KIND=dp), intent(in) :: dv_dvp
REAL(KIND=dp), intent(in) :: dvp_dI4
REAL(KIND=dp), intent(in) :: dvp_dI5
REAL(KIND=dp), intent(in) :: dw_dwp
REAL(KIND=dp), intent(in) :: dwp_dI4
REAL(KIND=dp), intent(in) :: dwp_dI5
REAL(KIND=dp), intent(in) :: dwp_dI6
end function
end interface
interface
REAL(KIND=dp) function d2phi_dBxdepszx(d2I5_dBxdezx, d2I6_dBxdezx, d2phi_dudv, &
d2phi_dudw, d2phi_dv2, d2phi_dvdw, d2phi_dw2, d2vp_dI4dI5, &
d2wp_dI4dI5, d2wp_dI4dI6, d2wp_dI52, d2wp_dI5dI6, d2wp_dI62, &
dI4_dBx, dI5_dBx, dI5_dezx, dI6_dBx, dI6_dezx, dezx_depszx, &
dphi_dv, dphi_dw, du_dup, dup_dI4, dv_dvp, dvp_dI4, dvp_dI5, &
dw_dwp, dwp_dI4, dwp_dI5, dwp_dI6)
use types
implicit none
REAL(KIND=dp), intent(in) :: d2I5_dBxdezx
REAL(KIND=dp), intent(in) :: d2I6_dBxdezx
REAL(KIND=dp), intent(in) :: d2phi_dudv
REAL(KIND=dp), intent(in) :: d2phi_dudw
REAL(KIND=dp), intent(in) :: d2phi_dv2
REAL(KIND=dp), intent(in) :: d2phi_dvdw
REAL(KIND=dp), intent(in) :: d2phi_dw2
REAL(KIND=dp), intent(in) :: d2vp_dI4dI5
REAL(KIND=dp), intent(in) :: d2wp_dI4dI5
REAL(KIND=dp), intent(in) :: d2wp_dI4dI6
REAL(KIND=dp), intent(in) :: d2wp_dI52
REAL(KIND=dp), intent(in) :: d2wp_dI5dI6
REAL(KIND=dp), intent(in) :: d2wp_dI62
REAL(KIND=dp), intent(in) :: dI4_dBx
REAL(KIND=dp), intent(in) :: dI5_dBx
REAL(KIND=dp), intent(in) :: dI5_dezx
REAL(KIND=dp), intent(in) :: dI6_dBx
REAL(KIND=dp), intent(in) :: dI6_dezx
REAL(KIND=dp), intent(in) :: dezx_depszx
REAL(KIND=dp), intent(in) :: dphi_dv
REAL(KIND=dp), intent(in) :: dphi_dw
REAL(KIND=dp), intent(in) :: du_dup
REAL(KIND=dp), intent(in) :: dup_dI4
REAL(KIND=dp), intent(in) :: dv_dvp
REAL(KIND=dp), intent(in) :: dvp_dI4
REAL(KIND=dp), intent(in) :: dvp_dI5
REAL(KIND=dp), intent(in) :: dw_dwp
REAL(KIND=dp), intent(in) :: dwp_dI4
REAL(KIND=dp), intent(in) :: dwp_dI5
REAL(KIND=dp), intent(in) :: dwp_dI6
end function
end interface
interface
REAL(KIND=dp) function d2phi_dBxdepszz(d2I5_dBxdexx, d2I6_dBxdexx, d2I6_dBxdeyy, &
d2I6_dBxdezz, d2phi_dudv, d2phi_dudw, d2phi_dv2, d2phi_dvdw, &
d2phi_dw2, d2vp_dI4dI5, d2wp_dI4dI5, d2wp_dI4dI6, d2wp_dI52, &
d2wp_dI5dI6, d2wp_dI62, dI4_dBx, dI5_dBx, dI5_dexx, &
dI5_deyy, dI5_dezz, dI6_dBx, dI6_dexx, dI6_deyy, dI6_dezz, &
dexx_depszz, deyy_depszz, dezz_depszz, dphi_dv, dphi_dw, &
du_dup, dup_dI4, dv_dvp, dvp_dI4, dvp_dI5, dw_dwp, dwp_dI4, &
dwp_dI5, dwp_dI6)
use types
implicit none
REAL(KIND=dp), intent(in) :: d2I5_dBxdexx
REAL(KIND=dp), intent(in) :: d2I6_dBxdexx
REAL(KIND=dp), intent(in) :: d2I6_dBxdeyy
REAL(KIND=dp), intent(in) :: d2I6_dBxdezz
REAL(KIND=dp), intent(in) :: d2phi_dudv
REAL(KIND=dp), intent(in) :: d2phi_dudw
REAL(KIND=dp), intent(in) :: d2phi_dv2
REAL(KIND=dp), intent(in) :: d2phi_dvdw
REAL(KIND=dp), intent(in) :: d2phi_dw2
REAL(KIND=dp), intent(in) :: d2vp_dI4dI5
REAL(KIND=dp), intent(in) :: d2wp_dI4dI5
REAL(KIND=dp), intent(in) :: d2wp_dI4dI6
REAL(KIND=dp), intent(in) :: d2wp_dI52
REAL(KIND=dp), intent(in) :: d2wp_dI5dI6
REAL(KIND=dp), intent(in) :: d2wp_dI62
REAL(KIND=dp), intent(in) :: dI4_dBx
REAL(KIND=dp), intent(in) :: dI5_dBx
REAL(KIND=dp), intent(in) :: dI5_dexx
REAL(KIND=dp), intent(in) :: dI5_deyy
REAL(KIND=dp), intent(in) :: dI5_dezz
REAL(KIND=dp), intent(in) :: dI6_dBx
REAL(KIND=dp), intent(in) :: dI6_dexx
REAL(KIND=dp), intent(in) :: dI6_deyy
REAL(KIND=dp), intent(in) :: dI6_dezz
REAL(KIND=dp), intent(in) :: dexx_depszz
REAL(KIND=dp), intent(in) :: deyy_depszz
REAL(KIND=dp), intent(in) :: dezz_depszz
REAL(KIND=dp), intent(in) :: dphi_dv
REAL(KIND=dp), intent(in) :: dphi_dw
REAL(KIND=dp), intent(in) :: du_dup
REAL(KIND=dp), intent(in) :: dup_dI4
REAL(KIND=dp), intent(in) :: dv_dvp
REAL(KIND=dp), intent(in) :: dvp_dI4
REAL(KIND=dp), intent(in) :: dvp_dI5
REAL(KIND=dp), intent(in) :: dw_dwp
REAL(KIND=dp), intent(in) :: dwp_dI4
REAL(KIND=dp), intent(in) :: dwp_dI5
REAL(KIND=dp), intent(in) :: dwp_dI6
end function
end interface
interface
REAL(KIND=dp) function dphi_dBy(dI4_dBy, dI5_dBy, dI6_dBy, dphi_du, dphi_dv, &
dphi_dw, du_dup, dup_dI4, dv_dvp, dvp_dI4, dvp_dI5, dw_dwp, &
dwp_dI4, dwp_dI5, dwp_dI6)
use types
implicit none
REAL(KIND=dp), intent(in) :: dI4_dBy
REAL(KIND=dp), intent(in) :: dI5_dBy
REAL(KIND=dp), intent(in) :: dI6_dBy
REAL(KIND=dp), intent(in) :: dphi_du
REAL(KIND=dp), intent(in) :: dphi_dv
REAL(KIND=dp), intent(in) :: dphi_dw
REAL(KIND=dp), intent(in) :: du_dup
REAL(KIND=dp), intent(in) :: dup_dI4
REAL(KIND=dp), intent(in) :: dv_dvp
REAL(KIND=dp), intent(in) :: dvp_dI4
REAL(KIND=dp), intent(in) :: dvp_dI5
REAL(KIND=dp), intent(in) :: dw_dwp
REAL(KIND=dp), intent(in) :: dwp_dI4
REAL(KIND=dp), intent(in) :: dwp_dI5
REAL(KIND=dp), intent(in) :: dwp_dI6
end function
end interface
interface
REAL(KIND=dp) function d2phi_dBy2(d2I4_dBy2, d2I5_dBy2, d2I6_dBy2, d2phi_du2, &
d2phi_dudv, d2phi_dudw, d2phi_dv2, d2phi_dvdw, d2phi_dw2, &
d2up_dI42, d2vp_dI42, d2vp_dI4dI5, d2wp_dI42, d2wp_dI4dI5, &
d2wp_dI4dI6, d2wp_dI52, d2wp_dI5dI6, d2wp_dI62, dI4_dBy, &
dI5_dBy, dI6_dBy, dphi_du, dphi_dv, dphi_dw, du_dup, &
dup_dI4, dv_dvp, dvp_dI4, dvp_dI5, dw_dwp, dwp_dI4, dwp_dI5, &
dwp_dI6)
use types
implicit none
REAL(KIND=dp), intent(in) :: d2I4_dBy2
REAL(KIND=dp), intent(in) :: d2I5_dBy2
REAL(KIND=dp), intent(in) :: d2I6_dBy2
REAL(KIND=dp), intent(in) :: d2phi_du2
REAL(KIND=dp), intent(in) :: d2phi_dudv
REAL(KIND=dp), intent(in) :: d2phi_dudw
REAL(KIND=dp), intent(in) :: d2phi_dv2
REAL(KIND=dp), intent(in) :: d2phi_dvdw
REAL(KIND=dp), intent(in) :: d2phi_dw2
REAL(KIND=dp), intent(in) :: d2up_dI42
REAL(KIND=dp), intent(in) :: d2vp_dI42
REAL(KIND=dp), intent(in) :: d2vp_dI4dI5
REAL(KIND=dp), intent(in) :: d2wp_dI42
REAL(KIND=dp), intent(in) :: d2wp_dI4dI5
REAL(KIND=dp), intent(in) :: d2wp_dI4dI6
REAL(KIND=dp), intent(in) :: d2wp_dI52
REAL(KIND=dp), intent(in) :: d2wp_dI5dI6
REAL(KIND=dp), intent(in) :: d2wp_dI62
REAL(KIND=dp), intent(in) :: dI4_dBy
REAL(KIND=dp), intent(in) :: dI5_dBy
REAL(KIND=dp), intent(in) :: dI6_dBy
REAL(KIND=dp), intent(in) :: dphi_du
REAL(KIND=dp), intent(in) :: dphi_dv
REAL(KIND=dp), intent(in) :: dphi_dw
REAL(KIND=dp), intent(in) :: du_dup
REAL(KIND=dp), intent(in) :: dup_dI4
REAL(KIND=dp), intent(in) :: dv_dvp
REAL(KIND=dp), intent(in) :: dvp_dI4
REAL(KIND=dp), intent(in) :: dvp_dI5
REAL(KIND=dp), intent(in) :: dw_dwp
REAL(KIND=dp), intent(in) :: dwp_dI4
REAL(KIND=dp), intent(in) :: dwp_dI5
REAL(KIND=dp), intent(in) :: dwp_dI6
end function
end interface
interface
REAL(KIND=dp) function d2phi_dBydBz(d2I5_dBydBz, d2I6_dBydBz, d2phi_du2, &
d2phi_dudv, d2phi_dudw, d2phi_dv2, d2phi_dvdw, d2phi_dw2, &
d2up_dI42, d2vp_dI42, d2vp_dI4dI5, d2wp_dI42, d2wp_dI4dI5, &
d2wp_dI4dI6, d2wp_dI52, d2wp_dI5dI6, d2wp_dI62, dI4_dBy, &
dI4_dBz, dI5_dBy, dI5_dBz, dI6_dBy, dI6_dBz, dphi_du, &
dphi_dv, dphi_dw, du_dup, dup_dI4, dv_dvp, dvp_dI4, dvp_dI5, &
dw_dwp, dwp_dI4, dwp_dI5, dwp_dI6)
use types
implicit none
REAL(KIND=dp), intent(in) :: d2I5_dBydBz
REAL(KIND=dp), intent(in) :: d2I6_dBydBz
REAL(KIND=dp), intent(in) :: d2phi_du2
REAL(KIND=dp), intent(in) :: d2phi_dudv
REAL(KIND=dp), intent(in) :: d2phi_dudw
REAL(KIND=dp), intent(in) :: d2phi_dv2
REAL(KIND=dp), intent(in) :: d2phi_dvdw
REAL(KIND=dp), intent(in) :: d2phi_dw2
REAL(KIND=dp), intent(in) :: d2up_dI42
REAL(KIND=dp), intent(in) :: d2vp_dI42
REAL(KIND=dp), intent(in) :: d2vp_dI4dI5
REAL(KIND=dp), intent(in) :: d2wp_dI42
REAL(KIND=dp), intent(in) :: d2wp_dI4dI5
REAL(KIND=dp), intent(in) :: d2wp_dI4dI6
REAL(KIND=dp), intent(in) :: d2wp_dI52
REAL(KIND=dp), intent(in) :: d2wp_dI5dI6
REAL(KIND=dp), intent(in) :: d2wp_dI62
REAL(KIND=dp), intent(in) :: dI4_dBy
REAL(KIND=dp), intent(in) :: dI4_dBz
REAL(KIND=dp), intent(in) :: dI5_dBy
REAL(KIND=dp), intent(in) :: dI5_dBz
REAL(KIND=dp), intent(in) :: dI6_dBy
REAL(KIND=dp), intent(in) :: dI6_dBz
REAL(KIND=dp), intent(in) :: dphi_du
REAL(KIND=dp), intent(in) :: dphi_dv
REAL(KIND=dp), intent(in) :: dphi_dw
REAL(KIND=dp), intent(in) :: du_dup
REAL(KIND=dp), intent(in) :: dup_dI4
REAL(KIND=dp), intent(in) :: dv_dvp
REAL(KIND=dp), intent(in) :: dvp_dI4
REAL(KIND=dp), intent(in) :: dvp_dI5
REAL(KIND=dp), intent(in) :: dw_dwp
REAL(KIND=dp), intent(in) :: dwp_dI4
REAL(KIND=dp), intent(in) :: dwp_dI5
REAL(KIND=dp), intent(in) :: dwp_dI6
end function
end interface
interface
REAL(KIND=dp) function d2phi_dBydepsxx(d2I5_dBydeyy, d2I6_dBydexx, d2I6_dBydeyy, &
d2I6_dBydezz, d2phi_dudv, d2phi_dudw, d2phi_dv2, d2phi_dvdw, &
d2phi_dw2, d2vp_dI4dI5, d2wp_dI4dI5, d2wp_dI4dI6, d2wp_dI52, &
d2wp_dI5dI6, d2wp_dI62, dI4_dBy, dI5_dBy, dI5_dexx, &
dI5_deyy, dI5_dezz, dI6_dBy, dI6_dexx, dI6_deyy, dI6_dezz, &
dexx_depsxx, deyy_depsxx, dezz_depsxx, dphi_dv, dphi_dw, &
du_dup, dup_dI4, dv_dvp, dvp_dI4, dvp_dI5, dw_dwp, dwp_dI4, &
dwp_dI5, dwp_dI6)
use types
implicit none
REAL(KIND=dp), intent(in) :: d2I5_dBydeyy
REAL(KIND=dp), intent(in) :: d2I6_dBydexx
REAL(KIND=dp), intent(in) :: d2I6_dBydeyy
REAL(KIND=dp), intent(in) :: d2I6_dBydezz
REAL(KIND=dp), intent(in) :: d2phi_dudv
REAL(KIND=dp), intent(in) :: d2phi_dudw
REAL(KIND=dp), intent(in) :: d2phi_dv2
REAL(KIND=dp), intent(in) :: d2phi_dvdw
REAL(KIND=dp), intent(in) :: d2phi_dw2
REAL(KIND=dp), intent(in) :: d2vp_dI4dI5
REAL(KIND=dp), intent(in) :: d2wp_dI4dI5
REAL(KIND=dp), intent(in) :: d2wp_dI4dI6
REAL(KIND=dp), intent(in) :: d2wp_dI52
REAL(KIND=dp), intent(in) :: d2wp_dI5dI6
REAL(KIND=dp), intent(in) :: d2wp_dI62
REAL(KIND=dp), intent(in) :: dI4_dBy
REAL(KIND=dp), intent(in) :: dI5_dBy
REAL(KIND=dp), intent(in) :: dI5_dexx
REAL(KIND=dp), intent(in) :: dI5_deyy
REAL(KIND=dp), intent(in) :: dI5_dezz
REAL(KIND=dp), intent(in) :: dI6_dBy
REAL(KIND=dp), intent(in) :: dI6_dexx
REAL(KIND=dp), intent(in) :: dI6_deyy
REAL(KIND=dp), intent(in) :: dI6_dezz
REAL(KIND=dp), intent(in) :: dexx_depsxx
REAL(KIND=dp), intent(in) :: deyy_depsxx
REAL(KIND=dp), intent(in) :: dezz_depsxx
REAL(KIND=dp), intent(in) :: dphi_dv
REAL(KIND=dp), intent(in) :: dphi_dw
REAL(KIND=dp), intent(in) :: du_dup
REAL(KIND=dp), intent(in) :: dup_dI4
REAL(KIND=dp), intent(in) :: dv_dvp
REAL(KIND=dp), intent(in) :: dvp_dI4
REAL(KIND=dp), intent(in) :: dvp_dI5
REAL(KIND=dp), intent(in) :: dw_dwp
REAL(KIND=dp), intent(in) :: dwp_dI4
REAL(KIND=dp), intent(in) :: dwp_dI5
REAL(KIND=dp), intent(in) :: dwp_dI6
end function
end interface
interface
REAL(KIND=dp) function d2phi_dBydepsxy(d2I5_dBydexy, d2I6_dBydexy, d2phi_dudv, &
d2phi_dudw, d2phi_dv2, d2phi_dvdw, d2phi_dw2, d2vp_dI4dI5, &
d2wp_dI4dI5, d2wp_dI4dI6, d2wp_dI52, d2wp_dI5dI6, d2wp_dI62, &
dI4_dBy, dI5_dBy, dI5_dexy, dI6_dBy, dI6_dexy, dexy_depsxy, &
dphi_dv, dphi_dw, du_dup, dup_dI4, dv_dvp, dvp_dI4, dvp_dI5, &
dw_dwp, dwp_dI4, dwp_dI5, dwp_dI6)
use types
implicit none
REAL(KIND=dp), intent(in) :: d2I5_dBydexy
REAL(KIND=dp), intent(in) :: d2I6_dBydexy
REAL(KIND=dp), intent(in) :: d2phi_dudv
REAL(KIND=dp), intent(in) :: d2phi_dudw
REAL(KIND=dp), intent(in) :: d2phi_dv2
REAL(KIND=dp), intent(in) :: d2phi_dvdw
REAL(KIND=dp), intent(in) :: d2phi_dw2
REAL(KIND=dp), intent(in) :: d2vp_dI4dI5
REAL(KIND=dp), intent(in) :: d2wp_dI4dI5
REAL(KIND=dp), intent(in) :: d2wp_dI4dI6
REAL(KIND=dp), intent(in) :: d2wp_dI52
REAL(KIND=dp), intent(in) :: d2wp_dI5dI6
REAL(KIND=dp), intent(in) :: d2wp_dI62
REAL(KIND=dp), intent(in) :: dI4_dBy
REAL(KIND=dp), intent(in) :: dI5_dBy
REAL(KIND=dp), intent(in) :: dI5_dexy
REAL(KIND=dp), intent(in) :: dI6_dBy
REAL(KIND=dp), intent(in) :: dI6_dexy
REAL(KIND=dp), intent(in) :: dexy_depsxy
REAL(KIND=dp), intent(in) :: dphi_dv
REAL(KIND=dp), intent(in) :: dphi_dw
REAL(KIND=dp), intent(in) :: du_dup
REAL(KIND=dp), intent(in) :: dup_dI4
REAL(KIND=dp), intent(in) :: dv_dvp
REAL(KIND=dp), intent(in) :: dvp_dI4
REAL(KIND=dp), intent(in) :: dvp_dI5
REAL(KIND=dp), intent(in) :: dw_dwp
REAL(KIND=dp), intent(in) :: dwp_dI4
REAL(KIND=dp), intent(in) :: dwp_dI5
REAL(KIND=dp), intent(in) :: dwp_dI6
end function
end interface
interface
REAL(KIND=dp) function d2phi_dBydepsyy(d2I5_dBydeyy, d2I6_dBydexx, d2I6_dBydeyy, &
d2I6_dBydezz, d2phi_dudv, d2phi_dudw, d2phi_dv2, d2phi_dvdw, &
d2phi_dw2, d2vp_dI4dI5, d2wp_dI4dI5, d2wp_dI4dI6, d2wp_dI52, &
d2wp_dI5dI6, d2wp_dI62, dI4_dBy, dI5_dBy, dI5_dexx, &
dI5_deyy, dI5_dezz, dI6_dBy, dI6_dexx, dI6_deyy, dI6_dezz, &
dexx_depsyy, deyy_depsyy, dezz_depsyy, dphi_dv, dphi_dw, &
du_dup, dup_dI4, dv_dvp, dvp_dI4, dvp_dI5, dw_dwp, dwp_dI4, &
dwp_dI5, dwp_dI6)
use types
implicit none
REAL(KIND=dp), intent(in) :: d2I5_dBydeyy
REAL(KIND=dp), intent(in) :: d2I6_dBydexx
REAL(KIND=dp), intent(in) :: d2I6_dBydeyy
REAL(KIND=dp), intent(in) :: d2I6_dBydezz
REAL(KIND=dp), intent(in) :: d2phi_dudv
REAL(KIND=dp), intent(in) :: d2phi_dudw
REAL(KIND=dp), intent(in) :: d2phi_dv2
REAL(KIND=dp), intent(in) :: d2phi_dvdw
REAL(KIND=dp), intent(in) :: d2phi_dw2
REAL(KIND=dp), intent(in) :: d2vp_dI4dI5
REAL(KIND=dp), intent(in) :: d2wp_dI4dI5
REAL(KIND=dp), intent(in) :: d2wp_dI4dI6
REAL(KIND=dp), intent(in) :: d2wp_dI52
REAL(KIND=dp), intent(in) :: d2wp_dI5dI6
REAL(KIND=dp), intent(in) :: d2wp_dI62
REAL(KIND=dp), intent(in) :: dI4_dBy
REAL(KIND=dp), intent(in) :: dI5_dBy
REAL(KIND=dp), intent(in) :: dI5_dexx
REAL(KIND=dp), intent(in) :: dI5_deyy
REAL(KIND=dp), intent(in) :: dI5_dezz
REAL(KIND=dp), intent(in) :: dI6_dBy
REAL(KIND=dp), intent(in) :: dI6_dexx
REAL(KIND=dp), intent(in) :: dI6_deyy
REAL(KIND=dp), intent(in) :: dI6_dezz
REAL(KIND=dp), intent(in) :: dexx_depsyy
REAL(KIND=dp), intent(in) :: deyy_depsyy
REAL(KIND=dp), intent(in) :: dezz_depsyy
REAL(KIND=dp), intent(in) :: dphi_dv
REAL(KIND=dp), intent(in) :: dphi_dw
REAL(KIND=dp), intent(in) :: du_dup
REAL(KIND=dp), intent(in) :: dup_dI4
REAL(KIND=dp), intent(in) :: dv_dvp
REAL(KIND=dp), intent(in) :: dvp_dI4
REAL(KIND=dp), intent(in) :: dvp_dI5
REAL(KIND=dp), intent(in) :: dw_dwp
REAL(KIND=dp), intent(in) :: dwp_dI4
REAL(KIND=dp), intent(in) :: dwp_dI5
REAL(KIND=dp), intent(in) :: dwp_dI6
end function
end interface
interface
REAL(KIND=dp) function d2phi_dBydepsyz(d2I5_dBydeyz, d2I6_dBydeyz, d2phi_dudv, &
d2phi_dudw, d2phi_dv2, d2phi_dvdw, d2phi_dw2, d2vp_dI4dI5, &
d2wp_dI4dI5, d2wp_dI4dI6, d2wp_dI52, d2wp_dI5dI6, d2wp_dI62, &
dI4_dBy, dI5_dBy, dI5_deyz, dI6_dBy, dI6_deyz, deyz_depsyz, &
dphi_dv, dphi_dw, du_dup, dup_dI4, dv_dvp, dvp_dI4, dvp_dI5, &
dw_dwp, dwp_dI4, dwp_dI5, dwp_dI6)
use types
implicit none
REAL(KIND=dp), intent(in) :: d2I5_dBydeyz
REAL(KIND=dp), intent(in) :: d2I6_dBydeyz
REAL(KIND=dp), intent(in) :: d2phi_dudv
REAL(KIND=dp), intent(in) :: d2phi_dudw
REAL(KIND=dp), intent(in) :: d2phi_dv2
REAL(KIND=dp), intent(in) :: d2phi_dvdw
REAL(KIND=dp), intent(in) :: d2phi_dw2
REAL(KIND=dp), intent(in) :: d2vp_dI4dI5
REAL(KIND=dp), intent(in) :: d2wp_dI4dI5
REAL(KIND=dp), intent(in) :: d2wp_dI4dI6
REAL(KIND=dp), intent(in) :: d2wp_dI52
REAL(KIND=dp), intent(in) :: d2wp_dI5dI6
REAL(KIND=dp), intent(in) :: d2wp_dI62
REAL(KIND=dp), intent(in) :: dI4_dBy
REAL(KIND=dp), intent(in) :: dI5_dBy
REAL(KIND=dp), intent(in) :: dI5_deyz
REAL(KIND=dp), intent(in) :: dI6_dBy
REAL(KIND=dp), intent(in) :: dI6_deyz
REAL(KIND=dp), intent(in) :: deyz_depsyz
REAL(KIND=dp), intent(in) :: dphi_dv
REAL(KIND=dp), intent(in) :: dphi_dw
REAL(KIND=dp), intent(in) :: du_dup
REAL(KIND=dp), intent(in) :: dup_dI4
REAL(KIND=dp), intent(in) :: dv_dvp
REAL(KIND=dp), intent(in) :: dvp_dI4
REAL(KIND=dp), intent(in) :: dvp_dI5
REAL(KIND=dp), intent(in) :: dw_dwp
REAL(KIND=dp), intent(in) :: dwp_dI4
REAL(KIND=dp), intent(in) :: dwp_dI5
REAL(KIND=dp), intent(in) :: dwp_dI6
end function
end interface
interface
REAL(KIND=dp) function d2phi_dBydepszx(d2I6_dBydezx, d2phi_dudv, d2phi_dudw, &
d2phi_dv2, d2phi_dvdw, d2phi_dw2, d2vp_dI4dI5, d2wp_dI4dI5, &
d2wp_dI4dI6, d2wp_dI52, d2wp_dI5dI6, d2wp_dI62, dI4_dBy, &
dI5_dBy, dI5_dezx, dI6_dBy, dI6_dezx, dezx_depszx, dphi_dv, &
dphi_dw, du_dup, dup_dI4, dv_dvp, dvp_dI4, dvp_dI5, dw_dwp, &
dwp_dI4, dwp_dI5, dwp_dI6)
use types
implicit none
REAL(KIND=dp), intent(in) :: d2I6_dBydezx
REAL(KIND=dp), intent(in) :: d2phi_dudv
REAL(KIND=dp), intent(in) :: d2phi_dudw
REAL(KIND=dp), intent(in) :: d2phi_dv2
REAL(KIND=dp), intent(in) :: d2phi_dvdw
REAL(KIND=dp), intent(in) :: d2phi_dw2
REAL(KIND=dp), intent(in) :: d2vp_dI4dI5
REAL(KIND=dp), intent(in) :: d2wp_dI4dI5
REAL(KIND=dp), intent(in) :: d2wp_dI4dI6
REAL(KIND=dp), intent(in) :: d2wp_dI52
REAL(KIND=dp), intent(in) :: d2wp_dI5dI6
REAL(KIND=dp), intent(in) :: d2wp_dI62
REAL(KIND=dp), intent(in) :: dI4_dBy
REAL(KIND=dp), intent(in) :: dI5_dBy
REAL(KIND=dp), intent(in) :: dI5_dezx
REAL(KIND=dp), intent(in) :: dI6_dBy
REAL(KIND=dp), intent(in) :: dI6_dezx
REAL(KIND=dp), intent(in) :: dezx_depszx
REAL(KIND=dp), intent(in) :: dphi_dv
REAL(KIND=dp), intent(in) :: dphi_dw
REAL(KIND=dp), intent(in) :: du_dup
REAL(KIND=dp), intent(in) :: dup_dI4
REAL(KIND=dp), intent(in) :: dv_dvp
REAL(KIND=dp), intent(in) :: dvp_dI4
REAL(KIND=dp), intent(in) :: dvp_dI5
REAL(KIND=dp), intent(in) :: dw_dwp
REAL(KIND=dp), intent(in) :: dwp_dI4
REAL(KIND=dp), intent(in) :: dwp_dI5
REAL(KIND=dp), intent(in) :: dwp_dI6
end function
end interface
interface
REAL(KIND=dp) function d2phi_dBydepszz(d2I5_dBydeyy, d2I6_dBydexx, d2I6_dBydeyy, &
d2I6_dBydezz, d2phi_dudv, d2phi_dudw, d2phi_dv2, d2phi_dvdw, &
d2phi_dw2, d2vp_dI4dI5, d2wp_dI4dI5, d2wp_dI4dI6, d2wp_dI52, &
d2wp_dI5dI6, d2wp_dI62, dI4_dBy, dI5_dBy, dI5_dexx, &
dI5_deyy, dI5_dezz, dI6_dBy, dI6_dexx, dI6_deyy, dI6_dezz, &
dexx_depszz, deyy_depszz, dezz_depszz, dphi_dv, dphi_dw, &
du_dup, dup_dI4, dv_dvp, dvp_dI4, dvp_dI5, dw_dwp, dwp_dI4, &
dwp_dI5, dwp_dI6)
use types
implicit none
REAL(KIND=dp), intent(in) :: d2I5_dBydeyy
REAL(KIND=dp), intent(in) :: d2I6_dBydexx
REAL(KIND=dp), intent(in) :: d2I6_dBydeyy
REAL(KIND=dp), intent(in) :: d2I6_dBydezz
REAL(KIND=dp), intent(in) :: d2phi_dudv
REAL(KIND=dp), intent(in) :: d2phi_dudw
REAL(KIND=dp), intent(in) :: d2phi_dv2
REAL(KIND=dp), intent(in) :: d2phi_dvdw
REAL(KIND=dp), intent(in) :: d2phi_dw2
REAL(KIND=dp), intent(in) :: d2vp_dI4dI5
REAL(KIND=dp), intent(in) :: d2wp_dI4dI5
REAL(KIND=dp), intent(in) :: d2wp_dI4dI6
REAL(KIND=dp), intent(in) :: d2wp_dI52
REAL(KIND=dp), intent(in) :: d2wp_dI5dI6
REAL(KIND=dp), intent(in) :: d2wp_dI62
REAL(KIND=dp), intent(in) :: dI4_dBy
REAL(KIND=dp), intent(in) :: dI5_dBy
REAL(KIND=dp), intent(in) :: dI5_dexx
REAL(KIND=dp), intent(in) :: dI5_deyy
REAL(KIND=dp), intent(in) :: dI5_dezz
REAL(KIND=dp), intent(in) :: dI6_dBy
REAL(KIND=dp), intent(in) :: dI6_dexx
REAL(KIND=dp), intent(in) :: dI6_deyy
REAL(KIND=dp), intent(in) :: dI6_dezz
REAL(KIND=dp), intent(in) :: dexx_depszz
REAL(KIND=dp), intent(in) :: deyy_depszz
REAL(KIND=dp), intent(in) :: dezz_depszz
REAL(KIND=dp), intent(in) :: dphi_dv
REAL(KIND=dp), intent(in) :: dphi_dw
REAL(KIND=dp), intent(in) :: du_dup
REAL(KIND=dp), intent(in) :: dup_dI4
REAL(KIND=dp), intent(in) :: dv_dvp
REAL(KIND=dp), intent(in) :: dvp_dI4
REAL(KIND=dp), intent(in) :: dvp_dI5
REAL(KIND=dp), intent(in) :: dw_dwp
REAL(KIND=dp), intent(in) :: dwp_dI4
REAL(KIND=dp), intent(in) :: dwp_dI5
REAL(KIND=dp), intent(in) :: dwp_dI6
end function
end interface
interface
REAL(KIND=dp) function dphi_dBz(dI4_dBz, dI5_dBz, dI6_dBz, dphi_du, dphi_dv, &
dphi_dw, du_dup, dup_dI4, dv_dvp, dvp_dI4, dvp_dI5, dw_dwp, &
dwp_dI4, dwp_dI5, dwp_dI6)
use types
implicit none
REAL(KIND=dp), intent(in) :: dI4_dBz
REAL(KIND=dp), intent(in) :: dI5_dBz
REAL(KIND=dp), intent(in) :: dI6_dBz
REAL(KIND=dp), intent(in) :: dphi_du
REAL(KIND=dp), intent(in) :: dphi_dv
REAL(KIND=dp), intent(in) :: dphi_dw
REAL(KIND=dp), intent(in) :: du_dup
REAL(KIND=dp), intent(in) :: dup_dI4
REAL(KIND=dp), intent(in) :: dv_dvp
REAL(KIND=dp), intent(in) :: dvp_dI4
REAL(KIND=dp), intent(in) :: dvp_dI5
REAL(KIND=dp), intent(in) :: dw_dwp
REAL(KIND=dp), intent(in) :: dwp_dI4
REAL(KIND=dp), intent(in) :: dwp_dI5
REAL(KIND=dp), intent(in) :: dwp_dI6
end function
end interface
interface
REAL(KIND=dp) function d2phi_dBz2(d2I4_dBz2, d2I5_dBz2, d2I6_dBz2, d2phi_du2, &
d2phi_dudv, d2phi_dudw, d2phi_dv2, d2phi_dvdw, d2phi_dw2, &
d2up_dI42, d2vp_dI42, d2vp_dI4dI5, d2wp_dI42, d2wp_dI4dI5, &
d2wp_dI4dI6, d2wp_dI52, d2wp_dI5dI6, d2wp_dI62, dI4_dBz, &
dI5_dBz, dI6_dBz, dphi_du, dphi_dv, dphi_dw, du_dup, &
dup_dI4, dv_dvp, dvp_dI4, dvp_dI5, dw_dwp, dwp_dI4, dwp_dI5, &
dwp_dI6)
use types
implicit none
REAL(KIND=dp), intent(in) :: d2I4_dBz2
REAL(KIND=dp), intent(in) :: d2I5_dBz2
REAL(KIND=dp), intent(in) :: d2I6_dBz2
REAL(KIND=dp), intent(in) :: d2phi_du2
REAL(KIND=dp), intent(in) :: d2phi_dudv
REAL(KIND=dp), intent(in) :: d2phi_dudw
REAL(KIND=dp), intent(in) :: d2phi_dv2
REAL(KIND=dp), intent(in) :: d2phi_dvdw
REAL(KIND=dp), intent(in) :: d2phi_dw2
REAL(KIND=dp), intent(in) :: d2up_dI42
REAL(KIND=dp), intent(in) :: d2vp_dI42
REAL(KIND=dp), intent(in) :: d2vp_dI4dI5
REAL(KIND=dp), intent(in) :: d2wp_dI42
REAL(KIND=dp), intent(in) :: d2wp_dI4dI5
REAL(KIND=dp), intent(in) :: d2wp_dI4dI6
REAL(KIND=dp), intent(in) :: d2wp_dI52
REAL(KIND=dp), intent(in) :: d2wp_dI5dI6
REAL(KIND=dp), intent(in) :: d2wp_dI62
REAL(KIND=dp), intent(in) :: dI4_dBz
REAL(KIND=dp), intent(in) :: dI5_dBz
REAL(KIND=dp), intent(in) :: dI6_dBz
REAL(KIND=dp), intent(in) :: dphi_du
REAL(KIND=dp), intent(in) :: dphi_dv
REAL(KIND=dp), intent(in) :: dphi_dw
REAL(KIND=dp), intent(in) :: du_dup
REAL(KIND=dp), intent(in) :: dup_dI4
REAL(KIND=dp), intent(in) :: dv_dvp
REAL(KIND=dp), intent(in) :: dvp_dI4
REAL(KIND=dp), intent(in) :: dvp_dI5
REAL(KIND=dp), intent(in) :: dw_dwp
REAL(KIND=dp), intent(in) :: dwp_dI4
REAL(KIND=dp), intent(in) :: dwp_dI5
REAL(KIND=dp), intent(in) :: dwp_dI6
end function
end interface
interface
REAL(KIND=dp) function d2phi_dBzdepsxx(d2I5_dBzdezz, d2I6_dBzdexx, d2I6_dBzdeyy, &
d2I6_dBzdezz, d2phi_dudv, d2phi_dudw, d2phi_dv2, d2phi_dvdw, &
d2phi_dw2, d2vp_dI4dI5, d2wp_dI4dI5, d2wp_dI4dI6, d2wp_dI52, &
d2wp_dI5dI6, d2wp_dI62, dI4_dBz, dI5_dBz, dI5_dexx, &
dI5_deyy, dI5_dezz, dI6_dBz, dI6_dexx, dI6_deyy, dI6_dezz, &
dexx_depsxx, deyy_depsxx, dezz_depsxx, dphi_dv, dphi_dw, &
du_dup, dup_dI4, dv_dvp, dvp_dI4, dvp_dI5, dw_dwp, dwp_dI4, &
dwp_dI5, dwp_dI6)
use types
implicit none
REAL(KIND=dp), intent(in) :: d2I5_dBzdezz
REAL(KIND=dp), intent(in) :: d2I6_dBzdexx
REAL(KIND=dp), intent(in) :: d2I6_dBzdeyy
REAL(KIND=dp), intent(in) :: d2I6_dBzdezz
REAL(KIND=dp), intent(in) :: d2phi_dudv
REAL(KIND=dp), intent(in) :: d2phi_dudw
REAL(KIND=dp), intent(in) :: d2phi_dv2
REAL(KIND=dp), intent(in) :: d2phi_dvdw
REAL(KIND=dp), intent(in) :: d2phi_dw2
REAL(KIND=dp), intent(in) :: d2vp_dI4dI5
REAL(KIND=dp), intent(in) :: d2wp_dI4dI5
REAL(KIND=dp), intent(in) :: d2wp_dI4dI6
REAL(KIND=dp), intent(in) :: d2wp_dI52
REAL(KIND=dp), intent(in) :: d2wp_dI5dI6
REAL(KIND=dp), intent(in) :: d2wp_dI62
REAL(KIND=dp), intent(in) :: dI4_dBz
REAL(KIND=dp), intent(in) :: dI5_dBz
REAL(KIND=dp), intent(in) :: dI5_dexx
REAL(KIND=dp), intent(in) :: dI5_deyy
REAL(KIND=dp), intent(in) :: dI5_dezz
REAL(KIND=dp), intent(in) :: dI6_dBz
REAL(KIND=dp), intent(in) :: dI6_dexx
REAL(KIND=dp), intent(in) :: dI6_deyy
REAL(KIND=dp), intent(in) :: dI6_dezz
REAL(KIND=dp), intent(in) :: dexx_depsxx
REAL(KIND=dp), intent(in) :: deyy_depsxx
REAL(KIND=dp), intent(in) :: dezz_depsxx
REAL(KIND=dp), intent(in) :: dphi_dv
REAL(KIND=dp), intent(in) :: dphi_dw
REAL(KIND=dp), intent(in) :: du_dup
REAL(KIND=dp), intent(in) :: dup_dI4
REAL(KIND=dp), intent(in) :: dv_dvp
REAL(KIND=dp), intent(in) :: dvp_dI4
REAL(KIND=dp), intent(in) :: dvp_dI5
REAL(KIND=dp), intent(in) :: dw_dwp
REAL(KIND=dp), intent(in) :: dwp_dI4
REAL(KIND=dp), intent(in) :: dwp_dI5
REAL(KIND=dp), intent(in) :: dwp_dI6
end function
end interface
interface
REAL(KIND=dp) function d2phi_dBzdepsxy(d2I6_dBzdexy, d2phi_dudv, d2phi_dudw, &
d2phi_dv2, d2phi_dvdw, d2phi_dw2, d2vp_dI4dI5, d2wp_dI4dI5, &
d2wp_dI4dI6, d2wp_dI52, d2wp_dI5dI6, d2wp_dI62, dI4_dBz, &
dI5_dBz, dI5_dexy, dI6_dBz, dI6_dexy, dexy_depsxy, dphi_dv, &
dphi_dw, du_dup, dup_dI4, dv_dvp, dvp_dI4, dvp_dI5, dw_dwp, &
dwp_dI4, dwp_dI5, dwp_dI6)
use types
implicit none
REAL(KIND=dp), intent(in) :: d2I6_dBzdexy
REAL(KIND=dp), intent(in) :: d2phi_dudv
REAL(KIND=dp), intent(in) :: d2phi_dudw
REAL(KIND=dp), intent(in) :: d2phi_dv2
REAL(KIND=dp), intent(in) :: d2phi_dvdw
REAL(KIND=dp), intent(in) :: d2phi_dw2
REAL(KIND=dp), intent(in) :: d2vp_dI4dI5
REAL(KIND=dp), intent(in) :: d2wp_dI4dI5
REAL(KIND=dp), intent(in) :: d2wp_dI4dI6
REAL(KIND=dp), intent(in) :: d2wp_dI52
REAL(KIND=dp), intent(in) :: d2wp_dI5dI6
REAL(KIND=dp), intent(in) :: d2wp_dI62
REAL(KIND=dp), intent(in) :: dI4_dBz
REAL(KIND=dp), intent(in) :: dI5_dBz
REAL(KIND=dp), intent(in) :: dI5_dexy
REAL(KIND=dp), intent(in) :: dI6_dBz
REAL(KIND=dp), intent(in) :: dI6_dexy
REAL(KIND=dp), intent(in) :: dexy_depsxy
REAL(KIND=dp), intent(in) :: dphi_dv
REAL(KIND=dp), intent(in) :: dphi_dw
REAL(KIND=dp), intent(in) :: du_dup
REAL(KIND=dp), intent(in) :: dup_dI4
REAL(KIND=dp), intent(in) :: dv_dvp
REAL(KIND=dp), intent(in) :: dvp_dI4
REAL(KIND=dp), intent(in) :: dvp_dI5
REAL(KIND=dp), intent(in) :: dw_dwp
REAL(KIND=dp), intent(in) :: dwp_dI4
REAL(KIND=dp), intent(in) :: dwp_dI5
REAL(KIND=dp), intent(in) :: dwp_dI6
end function
end interface
interface
REAL(KIND=dp) function d2phi_dBzdepsyy(d2I5_dBzdezz, d2I6_dBzdexx, d2I6_dBzdeyy, &
d2I6_dBzdezz, d2phi_dudv, d2phi_dudw, d2phi_dv2, d2phi_dvdw, &
d2phi_dw2, d2vp_dI4dI5, d2wp_dI4dI5, d2wp_dI4dI6, d2wp_dI52, &
d2wp_dI5dI6, d2wp_dI62, dI4_dBz, dI5_dBz, dI5_dexx, &
dI5_deyy, dI5_dezz, dI6_dBz, dI6_dexx, dI6_deyy, dI6_dezz, &
dexx_depsyy, deyy_depsyy, dezz_depsyy, dphi_dv, dphi_dw, &
du_dup, dup_dI4, dv_dvp, dvp_dI4, dvp_dI5, dw_dwp, dwp_dI4, &
dwp_dI5, dwp_dI6)
use types
implicit none
REAL(KIND=dp), intent(in) :: d2I5_dBzdezz
REAL(KIND=dp), intent(in) :: d2I6_dBzdexx
REAL(KIND=dp), intent(in) :: d2I6_dBzdeyy
REAL(KIND=dp), intent(in) :: d2I6_dBzdezz
REAL(KIND=dp), intent(in) :: d2phi_dudv
REAL(KIND=dp), intent(in) :: d2phi_dudw
REAL(KIND=dp), intent(in) :: d2phi_dv2
REAL(KIND=dp), intent(in) :: d2phi_dvdw
REAL(KIND=dp), intent(in) :: d2phi_dw2
REAL(KIND=dp), intent(in) :: d2vp_dI4dI5
REAL(KIND=dp), intent(in) :: d2wp_dI4dI5
REAL(KIND=dp), intent(in) :: d2wp_dI4dI6
REAL(KIND=dp), intent(in) :: d2wp_dI52
REAL(KIND=dp), intent(in) :: d2wp_dI5dI6
REAL(KIND=dp), intent(in) :: d2wp_dI62
REAL(KIND=dp), intent(in) :: dI4_dBz
REAL(KIND=dp), intent(in) :: dI5_dBz
REAL(KIND=dp), intent(in) :: dI5_dexx
REAL(KIND=dp), intent(in) :: dI5_deyy
REAL(KIND=dp), intent(in) :: dI5_dezz
REAL(KIND=dp), intent(in) :: dI6_dBz
REAL(KIND=dp), intent(in) :: dI6_dexx
REAL(KIND=dp), intent(in) :: dI6_deyy
REAL(KIND=dp), intent(in) :: dI6_dezz
REAL(KIND=dp), intent(in) :: dexx_depsyy
REAL(KIND=dp), intent(in) :: deyy_depsyy
REAL(KIND=dp), intent(in) :: dezz_depsyy
REAL(KIND=dp), intent(in) :: dphi_dv
REAL(KIND=dp), intent(in) :: dphi_dw
REAL(KIND=dp), intent(in) :: du_dup
REAL(KIND=dp), intent(in) :: dup_dI4
REAL(KIND=dp), intent(in) :: dv_dvp
REAL(KIND=dp), intent(in) :: dvp_dI4
REAL(KIND=dp), intent(in) :: dvp_dI5
REAL(KIND=dp), intent(in) :: dw_dwp
REAL(KIND=dp), intent(in) :: dwp_dI4
REAL(KIND=dp), intent(in) :: dwp_dI5
REAL(KIND=dp), intent(in) :: dwp_dI6
end function
end interface
interface
REAL(KIND=dp) function d2phi_dBzdepsyz(d2I5_dBzdeyz, d2I6_dBzdeyz, d2phi_dudv, &
d2phi_dudw, d2phi_dv2, d2phi_dvdw, d2phi_dw2, d2vp_dI4dI5, &
d2wp_dI4dI5, d2wp_dI4dI6, d2wp_dI52, d2wp_dI5dI6, d2wp_dI62, &
dI4_dBz, dI5_dBz, dI5_deyz, dI6_dBz, dI6_deyz, deyz_depsyz, &
dphi_dv, dphi_dw, du_dup, dup_dI4, dv_dvp, dvp_dI4, dvp_dI5, &
dw_dwp, dwp_dI4, dwp_dI5, dwp_dI6)
use types
implicit none
REAL(KIND=dp), intent(in) :: d2I5_dBzdeyz
REAL(KIND=dp), intent(in) :: d2I6_dBzdeyz
REAL(KIND=dp), intent(in) :: d2phi_dudv
REAL(KIND=dp), intent(in) :: d2phi_dudw
REAL(KIND=dp), intent(in) :: d2phi_dv2
REAL(KIND=dp), intent(in) :: d2phi_dvdw
REAL(KIND=dp), intent(in) :: d2phi_dw2
REAL(KIND=dp), intent(in) :: d2vp_dI4dI5
REAL(KIND=dp), intent(in) :: d2wp_dI4dI5
REAL(KIND=dp), intent(in) :: d2wp_dI4dI6
REAL(KIND=dp), intent(in) :: d2wp_dI52
REAL(KIND=dp), intent(in) :: d2wp_dI5dI6
REAL(KIND=dp), intent(in) :: d2wp_dI62
REAL(KIND=dp), intent(in) :: dI4_dBz
REAL(KIND=dp), intent(in) :: dI5_dBz
REAL(KIND=dp), intent(in) :: dI5_deyz
REAL(KIND=dp), intent(in) :: dI6_dBz
REAL(KIND=dp), intent(in) :: dI6_deyz
REAL(KIND=dp), intent(in) :: deyz_depsyz
REAL(KIND=dp), intent(in) :: dphi_dv
REAL(KIND=dp), intent(in) :: dphi_dw
REAL(KIND=dp), intent(in) :: du_dup
REAL(KIND=dp), intent(in) :: dup_dI4
REAL(KIND=dp), intent(in) :: dv_dvp
REAL(KIND=dp), intent(in) :: dvp_dI4
REAL(KIND=dp), intent(in) :: dvp_dI5
REAL(KIND=dp), intent(in) :: dw_dwp
REAL(KIND=dp), intent(in) :: dwp_dI4
REAL(KIND=dp), intent(in) :: dwp_dI5
REAL(KIND=dp), intent(in) :: dwp_dI6
end function
end interface
interface
REAL(KIND=dp) function d2phi_dBzdepszx(d2I5_dBzdezx, d2I6_dBzdezx, d2phi_dudv, &
d2phi_dudw, d2phi_dv2, d2phi_dvdw, d2phi_dw2, d2vp_dI4dI5, &
d2wp_dI4dI5, d2wp_dI4dI6, d2wp_dI52, d2wp_dI5dI6, d2wp_dI62, &
dI4_dBz, dI5_dBz, dI5_dezx, dI6_dBz, dI6_dezx, dezx_depszx, &
dphi_dv, dphi_dw, du_dup, dup_dI4, dv_dvp, dvp_dI4, dvp_dI5, &
dw_dwp, dwp_dI4, dwp_dI5, dwp_dI6)
use types
implicit none
REAL(KIND=dp), intent(in) :: d2I5_dBzdezx
REAL(KIND=dp), intent(in) :: d2I6_dBzdezx
REAL(KIND=dp), intent(in) :: d2phi_dudv
REAL(KIND=dp), intent(in) :: d2phi_dudw
REAL(KIND=dp), intent(in) :: d2phi_dv2
REAL(KIND=dp), intent(in) :: d2phi_dvdw
REAL(KIND=dp), intent(in) :: d2phi_dw2
REAL(KIND=dp), intent(in) :: d2vp_dI4dI5
REAL(KIND=dp), intent(in) :: d2wp_dI4dI5
REAL(KIND=dp), intent(in) :: d2wp_dI4dI6
REAL(KIND=dp), intent(in) :: d2wp_dI52
REAL(KIND=dp), intent(in) :: d2wp_dI5dI6
REAL(KIND=dp), intent(in) :: d2wp_dI62
REAL(KIND=dp), intent(in) :: dI4_dBz
REAL(KIND=dp), intent(in) :: dI5_dBz
REAL(KIND=dp), intent(in) :: dI5_dezx
REAL(KIND=dp), intent(in) :: dI6_dBz
REAL(KIND=dp), intent(in) :: dI6_dezx
REAL(KIND=dp), intent(in) :: dezx_depszx
REAL(KIND=dp), intent(in) :: dphi_dv
REAL(KIND=dp), intent(in) :: dphi_dw
REAL(KIND=dp), intent(in) :: du_dup
REAL(KIND=dp), intent(in) :: dup_dI4
REAL(KIND=dp), intent(in) :: dv_dvp
REAL(KIND=dp), intent(in) :: dvp_dI4
REAL(KIND=dp), intent(in) :: dvp_dI5
REAL(KIND=dp), intent(in) :: dw_dwp
REAL(KIND=dp), intent(in) :: dwp_dI4
REAL(KIND=dp), intent(in) :: dwp_dI5
REAL(KIND=dp), intent(in) :: dwp_dI6
end function
end interface
interface
REAL(KIND=dp) function d2phi_dBzdepszz(d2I5_dBzdezz, d2I6_dBzdexx, d2I6_dBzdeyy, &
d2I6_dBzdezz, d2phi_dudv, d2phi_dudw, d2phi_dv2, d2phi_dvdw, &
d2phi_dw2, d2vp_dI4dI5, d2wp_dI4dI5, d2wp_dI4dI6, d2wp_dI52, &
d2wp_dI5dI6, d2wp_dI62, dI4_dBz, dI5_dBz, dI5_dexx, &
dI5_deyy, dI5_dezz, dI6_dBz, dI6_dexx, dI6_deyy, dI6_dezz, &
dexx_depszz, deyy_depszz, dezz_depszz, dphi_dv, dphi_dw, &
du_dup, dup_dI4, dv_dvp, dvp_dI4, dvp_dI5, dw_dwp, dwp_dI4, &
dwp_dI5, dwp_dI6)
use types
implicit none
REAL(KIND=dp), intent(in) :: d2I5_dBzdezz
REAL(KIND=dp), intent(in) :: d2I6_dBzdexx
REAL(KIND=dp), intent(in) :: d2I6_dBzdeyy
REAL(KIND=dp), intent(in) :: d2I6_dBzdezz
REAL(KIND=dp), intent(in) :: d2phi_dudv
REAL(KIND=dp), intent(in) :: d2phi_dudw
REAL(KIND=dp), intent(in) :: d2phi_dv2
REAL(KIND=dp), intent(in) :: d2phi_dvdw
REAL(KIND=dp), intent(in) :: d2phi_dw2
REAL(KIND=dp), intent(in) :: d2vp_dI4dI5
REAL(KIND=dp), intent(in) :: d2wp_dI4dI5
REAL(KIND=dp), intent(in) :: d2wp_dI4dI6
REAL(KIND=dp), intent(in) :: d2wp_dI52
REAL(KIND=dp), intent(in) :: d2wp_dI5dI6
REAL(KIND=dp), intent(in) :: d2wp_dI62
REAL(KIND=dp), intent(in) :: dI4_dBz
REAL(KIND=dp), intent(in) :: dI5_dBz
REAL(KIND=dp), intent(in) :: dI5_dexx
REAL(KIND=dp), intent(in) :: dI5_deyy
REAL(KIND=dp), intent(in) :: dI5_dezz
REAL(KIND=dp), intent(in) :: dI6_dBz
REAL(KIND=dp), intent(in) :: dI6_dexx
REAL(KIND=dp), intent(in) :: dI6_deyy
REAL(KIND=dp), intent(in) :: dI6_dezz
REAL(KIND=dp), intent(in) :: dexx_depszz
REAL(KIND=dp), intent(in) :: deyy_depszz
REAL(KIND=dp), intent(in) :: dezz_depszz
REAL(KIND=dp), intent(in) :: dphi_dv
REAL(KIND=dp), intent(in) :: dphi_dw
REAL(KIND=dp), intent(in) :: du_dup
REAL(KIND=dp), intent(in) :: dup_dI4
REAL(KIND=dp), intent(in) :: dv_dvp
REAL(KIND=dp), intent(in) :: dvp_dI4
REAL(KIND=dp), intent(in) :: dvp_dI5
REAL(KIND=dp), intent(in) :: dw_dwp
REAL(KIND=dp), intent(in) :: dwp_dI4
REAL(KIND=dp), intent(in) :: dwp_dI5
REAL(KIND=dp), intent(in) :: dwp_dI6
end function
end interface
interface
REAL(KIND=dp) function dphi_depsxx(dI5_dexx, dI5_deyy, dI5_dezz, dI6_dexx, &
dI6_deyy, dI6_dezz, dexx_depsxx, deyy_depsxx, dezz_depsxx, &
dphi_dv, dphi_dw, dv_dvp, dvp_dI5, dw_dwp, dwp_dI5, dwp_dI6)
use types
implicit none
REAL(KIND=dp), intent(in) :: dI5_dexx
REAL(KIND=dp), intent(in) :: dI5_deyy
REAL(KIND=dp), intent(in) :: dI5_dezz
REAL(KIND=dp), intent(in) :: dI6_dexx
REAL(KIND=dp), intent(in) :: dI6_deyy
REAL(KIND=dp), intent(in) :: dI6_dezz
REAL(KIND=dp), intent(in) :: dexx_depsxx
REAL(KIND=dp), intent(in) :: deyy_depsxx
REAL(KIND=dp), intent(in) :: dezz_depsxx
REAL(KIND=dp), intent(in) :: dphi_dv
REAL(KIND=dp), intent(in) :: dphi_dw
REAL(KIND=dp), intent(in) :: dv_dvp
REAL(KIND=dp), intent(in) :: dvp_dI5
REAL(KIND=dp), intent(in) :: dw_dwp
REAL(KIND=dp), intent(in) :: dwp_dI5
REAL(KIND=dp), intent(in) :: dwp_dI6
end function
end interface
interface
REAL(KIND=dp) function d2phi_depsxx2(d2I6_dexx2, d2I6_deyy2, d2I6_dezz2, d2phi_dv2, &
d2phi_dvdw, d2phi_dw2, d2wp_dI52, d2wp_dI5dI6, d2wp_dI62, &
dI5_dexx, dI5_deyy, dI5_dezz, dI6_dexx, dI6_deyy, dI6_dezz, &
dexx_depsxx, deyy_depsxx, dezz_depsxx, dphi_dw, dv_dvp, &
dvp_dI5, dw_dwp, dwp_dI5, dwp_dI6)
use types
implicit none
REAL(KIND=dp), intent(in) :: d2I6_dexx2
REAL(KIND=dp), intent(in) :: d2I6_deyy2
REAL(KIND=dp), intent(in) :: d2I6_dezz2
REAL(KIND=dp), intent(in) :: d2phi_dv2
REAL(KIND=dp), intent(in) :: d2phi_dvdw
REAL(KIND=dp), intent(in) :: d2phi_dw2
REAL(KIND=dp), intent(in) :: d2wp_dI52
REAL(KIND=dp), intent(in) :: d2wp_dI5dI6
REAL(KIND=dp), intent(in) :: d2wp_dI62
REAL(KIND=dp), intent(in) :: dI5_dexx
REAL(KIND=dp), intent(in) :: dI5_deyy
REAL(KIND=dp), intent(in) :: dI5_dezz
REAL(KIND=dp), intent(in) :: dI6_dexx
REAL(KIND=dp), intent(in) :: dI6_deyy
REAL(KIND=dp), intent(in) :: dI6_dezz
REAL(KIND=dp), intent(in) :: dexx_depsxx
REAL(KIND=dp), intent(in) :: deyy_depsxx
REAL(KIND=dp), intent(in) :: dezz_depsxx
REAL(KIND=dp), intent(in) :: dphi_dw
REAL(KIND=dp), intent(in) :: dv_dvp
REAL(KIND=dp), intent(in) :: dvp_dI5
REAL(KIND=dp), intent(in) :: dw_dwp
REAL(KIND=dp), intent(in) :: dwp_dI5
REAL(KIND=dp), intent(in) :: dwp_dI6
end function
end interface
interface
REAL(KIND=dp) function d2phi_depsxxdepsxy(d2I6_dexxdexy, d2I6_dexydeyy, d2phi_dv2, &
d2phi_dvdw, d2phi_dw2, d2wp_dI52, d2wp_dI5dI6, d2wp_dI62, &
dI5_dexx, dI5_dexy, dI5_deyy, dI5_dezz, dI6_dexx, dI6_dexy, &
dI6_deyy, dI6_dezz, dexx_depsxx, dexy_depsxy, deyy_depsxx, &
dezz_depsxx, dphi_dw, dv_dvp, dvp_dI5, dw_dwp, dwp_dI5, &
dwp_dI6)
use types
implicit none
REAL(KIND=dp), intent(in) :: d2I6_dexxdexy
REAL(KIND=dp), intent(in) :: d2I6_dexydeyy
REAL(KIND=dp), intent(in) :: d2phi_dv2
REAL(KIND=dp), intent(in) :: d2phi_dvdw
REAL(KIND=dp), intent(in) :: d2phi_dw2
REAL(KIND=dp), intent(in) :: d2wp_dI52
REAL(KIND=dp), intent(in) :: d2wp_dI5dI6
REAL(KIND=dp), intent(in) :: d2wp_dI62
REAL(KIND=dp), intent(in) :: dI5_dexx
REAL(KIND=dp), intent(in) :: dI5_dexy
REAL(KIND=dp), intent(in) :: dI5_deyy
REAL(KIND=dp), intent(in) :: dI5_dezz
REAL(KIND=dp), intent(in) :: dI6_dexx
REAL(KIND=dp), intent(in) :: dI6_dexy
REAL(KIND=dp), intent(in) :: dI6_deyy
REAL(KIND=dp), intent(in) :: dI6_dezz
REAL(KIND=dp), intent(in) :: dexx_depsxx
REAL(KIND=dp), intent(in) :: dexy_depsxy
REAL(KIND=dp), intent(in) :: deyy_depsxx
REAL(KIND=dp), intent(in) :: dezz_depsxx
REAL(KIND=dp), intent(in) :: dphi_dw
REAL(KIND=dp), intent(in) :: dv_dvp
REAL(KIND=dp), intent(in) :: dvp_dI5
REAL(KIND=dp), intent(in) :: dw_dwp
REAL(KIND=dp), intent(in) :: dwp_dI5
REAL(KIND=dp), intent(in) :: dwp_dI6
end function
end interface
interface
REAL(KIND=dp) function d2phi_depsxxdepsyy(d2I6_dexx2, d2I6_deyy2, d2I6_dezz2, &
d2phi_dv2, d2phi_dvdw, d2phi_dw2, d2wp_dI52, d2wp_dI5dI6, &
d2wp_dI62, dI5_dexx, dI5_deyy, dI5_dezz, dI6_dexx, dI6_deyy, &
dI6_dezz, dexx_depsxx, dexx_depsyy, deyy_depsxx, &
deyy_depsyy, dezz_depsxx, dezz_depsyy, dphi_dw, dv_dvp, &
dvp_dI5, dw_dwp, dwp_dI5, dwp_dI6)
use types
implicit none
REAL(KIND=dp), intent(in) :: d2I6_dexx2
REAL(KIND=dp), intent(in) :: d2I6_deyy2
REAL(KIND=dp), intent(in) :: d2I6_dezz2
REAL(KIND=dp), intent(in) :: d2phi_dv2
REAL(KIND=dp), intent(in) :: d2phi_dvdw
REAL(KIND=dp), intent(in) :: d2phi_dw2
REAL(KIND=dp), intent(in) :: d2wp_dI52
REAL(KIND=dp), intent(in) :: d2wp_dI5dI6
REAL(KIND=dp), intent(in) :: d2wp_dI62
REAL(KIND=dp), intent(in) :: dI5_dexx
REAL(KIND=dp), intent(in) :: dI5_deyy
REAL(KIND=dp), intent(in) :: dI5_dezz
REAL(KIND=dp), intent(in) :: dI6_dexx
REAL(KIND=dp), intent(in) :: dI6_deyy
REAL(KIND=dp), intent(in) :: dI6_dezz
REAL(KIND=dp), intent(in) :: dexx_depsxx
REAL(KIND=dp), intent(in) :: dexx_depsyy
REAL(KIND=dp), intent(in) :: deyy_depsxx
REAL(KIND=dp), intent(in) :: deyy_depsyy
REAL(KIND=dp), intent(in) :: dezz_depsxx
REAL(KIND=dp), intent(in) :: dezz_depsyy
REAL(KIND=dp), intent(in) :: dphi_dw
REAL(KIND=dp), intent(in) :: dv_dvp
REAL(KIND=dp), intent(in) :: dvp_dI5
REAL(KIND=dp), intent(in) :: dw_dwp
REAL(KIND=dp), intent(in) :: dwp_dI5
REAL(KIND=dp), intent(in) :: dwp_dI6
end function
end interface
interface
REAL(KIND=dp) function d2phi_depsxxdepsyz(d2I6_deyydeyz, d2I6_deyzdezz, d2phi_dv2, &
d2phi_dvdw, d2phi_dw2, d2wp_dI52, d2wp_dI5dI6, d2wp_dI62, &
dI5_dexx, dI5_deyy, dI5_deyz, dI5_dezz, dI6_dexx, dI6_deyy, &
dI6_deyz, dI6_dezz, dexx_depsxx, deyy_depsxx, deyz_depsyz, &
dezz_depsxx, dphi_dw, dv_dvp, dvp_dI5, dw_dwp, dwp_dI5, &
dwp_dI6)
use types
implicit none
REAL(KIND=dp), intent(in) :: d2I6_deyydeyz
REAL(KIND=dp), intent(in) :: d2I6_deyzdezz
REAL(KIND=dp), intent(in) :: d2phi_dv2
REAL(KIND=dp), intent(in) :: d2phi_dvdw
REAL(KIND=dp), intent(in) :: d2phi_dw2
REAL(KIND=dp), intent(in) :: d2wp_dI52
REAL(KIND=dp), intent(in) :: d2wp_dI5dI6
REAL(KIND=dp), intent(in) :: d2wp_dI62
REAL(KIND=dp), intent(in) :: dI5_dexx
REAL(KIND=dp), intent(in) :: dI5_deyy
REAL(KIND=dp), intent(in) :: dI5_deyz
REAL(KIND=dp), intent(in) :: dI5_dezz
REAL(KIND=dp), intent(in) :: dI6_dexx
REAL(KIND=dp), intent(in) :: dI6_deyy
REAL(KIND=dp), intent(in) :: dI6_deyz
REAL(KIND=dp), intent(in) :: dI6_dezz
REAL(KIND=dp), intent(in) :: dexx_depsxx
REAL(KIND=dp), intent(in) :: deyy_depsxx
REAL(KIND=dp), intent(in) :: deyz_depsyz
REAL(KIND=dp), intent(in) :: dezz_depsxx
REAL(KIND=dp), intent(in) :: dphi_dw
REAL(KIND=dp), intent(in) :: dv_dvp
REAL(KIND=dp), intent(in) :: dvp_dI5
REAL(KIND=dp), intent(in) :: dw_dwp
REAL(KIND=dp), intent(in) :: dwp_dI5
REAL(KIND=dp), intent(in) :: dwp_dI6
end function
end interface
interface
REAL(KIND=dp) function d2phi_depsxxdepszx(d2I6_dexxdezx, d2I6_dezxdezz, d2phi_dv2, &
d2phi_dvdw, d2phi_dw2, d2wp_dI52, d2wp_dI5dI6, d2wp_dI62, &
dI5_dexx, dI5_deyy, dI5_dezx, dI5_dezz, dI6_dexx, dI6_deyy, &
dI6_dezx, dI6_dezz, dexx_depsxx, deyy_depsxx, dezx_depszx, &
dezz_depsxx, dphi_dw, dv_dvp, dvp_dI5, dw_dwp, dwp_dI5, &
dwp_dI6)
use types
implicit none
REAL(KIND=dp), intent(in) :: d2I6_dexxdezx
REAL(KIND=dp), intent(in) :: d2I6_dezxdezz
REAL(KIND=dp), intent(in) :: d2phi_dv2
REAL(KIND=dp), intent(in) :: d2phi_dvdw
REAL(KIND=dp), intent(in) :: d2phi_dw2
REAL(KIND=dp), intent(in) :: d2wp_dI52
REAL(KIND=dp), intent(in) :: d2wp_dI5dI6
REAL(KIND=dp), intent(in) :: d2wp_dI62
REAL(KIND=dp), intent(in) :: dI5_dexx
REAL(KIND=dp), intent(in) :: dI5_deyy
REAL(KIND=dp), intent(in) :: dI5_dezx
REAL(KIND=dp), intent(in) :: dI5_dezz
REAL(KIND=dp), intent(in) :: dI6_dexx
REAL(KIND=dp), intent(in) :: dI6_deyy
REAL(KIND=dp), intent(in) :: dI6_dezx
REAL(KIND=dp), intent(in) :: dI6_dezz
REAL(KIND=dp), intent(in) :: dexx_depsxx
REAL(KIND=dp), intent(in) :: deyy_depsxx
REAL(KIND=dp), intent(in) :: dezx_depszx
REAL(KIND=dp), intent(in) :: dezz_depsxx
REAL(KIND=dp), intent(in) :: dphi_dw
REAL(KIND=dp), intent(in) :: dv_dvp
REAL(KIND=dp), intent(in) :: dvp_dI5
REAL(KIND=dp), intent(in) :: dw_dwp
REAL(KIND=dp), intent(in) :: dwp_dI5
REAL(KIND=dp), intent(in) :: dwp_dI6
end function
end interface
interface
REAL(KIND=dp) function d2phi_depsxxdepszz(d2I6_dexx2, d2I6_deyy2, d2I6_dezz2, &
d2phi_dv2, d2phi_dvdw, d2phi_dw2, d2wp_dI52, d2wp_dI5dI6, &
d2wp_dI62, dI5_dexx, dI5_deyy, dI5_dezz, dI6_dexx, dI6_deyy, &
dI6_dezz, dexx_depsxx, dexx_depszz, deyy_depsxx, &
deyy_depszz, dezz_depsxx, dezz_depszz, dphi_dw, dv_dvp, &
dvp_dI5, dw_dwp, dwp_dI5, dwp_dI6)
use types
implicit none
REAL(KIND=dp), intent(in) :: d2I6_dexx2
REAL(KIND=dp), intent(in) :: d2I6_deyy2
REAL(KIND=dp), intent(in) :: d2I6_dezz2
REAL(KIND=dp), intent(in) :: d2phi_dv2
REAL(KIND=dp), intent(in) :: d2phi_dvdw
REAL(KIND=dp), intent(in) :: d2phi_dw2
REAL(KIND=dp), intent(in) :: d2wp_dI52
REAL(KIND=dp), intent(in) :: d2wp_dI5dI6
REAL(KIND=dp), intent(in) :: d2wp_dI62
REAL(KIND=dp), intent(in) :: dI5_dexx
REAL(KIND=dp), intent(in) :: dI5_deyy
REAL(KIND=dp), intent(in) :: dI5_dezz
REAL(KIND=dp), intent(in) :: dI6_dexx
REAL(KIND=dp), intent(in) :: dI6_deyy
REAL(KIND=dp), intent(in) :: dI6_dezz
REAL(KIND=dp), intent(in) :: dexx_depsxx
REAL(KIND=dp), intent(in) :: dexx_depszz
REAL(KIND=dp), intent(in) :: deyy_depsxx
REAL(KIND=dp), intent(in) :: deyy_depszz
REAL(KIND=dp), intent(in) :: dezz_depsxx
REAL(KIND=dp), intent(in) :: dezz_depszz
REAL(KIND=dp), intent(in) :: dphi_dw
REAL(KIND=dp), intent(in) :: dv_dvp
REAL(KIND=dp), intent(in) :: dvp_dI5
REAL(KIND=dp), intent(in) :: dw_dwp
REAL(KIND=dp), intent(in) :: dwp_dI5
REAL(KIND=dp), intent(in) :: dwp_dI6
end function
end interface
interface
REAL(KIND=dp) function dphi_depsxy(dI5_dexy, dI6_dexy, dexy_depsxy, dphi_dv, &
dphi_dw, dv_dvp, dvp_dI5, dw_dwp, dwp_dI5, dwp_dI6)
use types
implicit none
REAL(KIND=dp), intent(in) :: dI5_dexy
REAL(KIND=dp), intent(in) :: dI6_dexy
REAL(KIND=dp), intent(in) :: dexy_depsxy
REAL(KIND=dp), intent(in) :: dphi_dv
REAL(KIND=dp), intent(in) :: dphi_dw
REAL(KIND=dp), intent(in) :: dv_dvp
REAL(KIND=dp), intent(in) :: dvp_dI5
REAL(KIND=dp), intent(in) :: dw_dwp
REAL(KIND=dp), intent(in) :: dwp_dI5
REAL(KIND=dp), intent(in) :: dwp_dI6
end function
end interface
interface
REAL(KIND=dp) function d2phi_depsxy2(d2I6_dexy2, d2phi_dv2, d2phi_dvdw, d2phi_dw2, &
d2wp_dI52, d2wp_dI5dI6, d2wp_dI62, dI5_dexy, dI6_dexy, &
dexy_depsxy, dphi_dw, dv_dvp, dvp_dI5, dw_dwp, dwp_dI5, &
dwp_dI6)
use types
implicit none
REAL(KIND=dp), intent(in) :: d2I6_dexy2
REAL(KIND=dp), intent(in) :: d2phi_dv2
REAL(KIND=dp), intent(in) :: d2phi_dvdw
REAL(KIND=dp), intent(in) :: d2phi_dw2
REAL(KIND=dp), intent(in) :: d2wp_dI52
REAL(KIND=dp), intent(in) :: d2wp_dI5dI6
REAL(KIND=dp), intent(in) :: d2wp_dI62
REAL(KIND=dp), intent(in) :: dI5_dexy
REAL(KIND=dp), intent(in) :: dI6_dexy
REAL(KIND=dp), intent(in) :: dexy_depsxy
REAL(KIND=dp), intent(in) :: dphi_dw
REAL(KIND=dp), intent(in) :: dv_dvp
REAL(KIND=dp), intent(in) :: dvp_dI5
REAL(KIND=dp), intent(in) :: dw_dwp
REAL(KIND=dp), intent(in) :: dwp_dI5
REAL(KIND=dp), intent(in) :: dwp_dI6
end function
end interface
interface
REAL(KIND=dp) function d2phi_depsxydepsyy(d2I6_dexxdexy, d2I6_dexydeyy, d2phi_dv2, &
d2phi_dvdw, d2phi_dw2, d2wp_dI52, d2wp_dI5dI6, d2wp_dI62, &
dI5_dexx, dI5_dexy, dI5_deyy, dI5_dezz, dI6_dexx, dI6_dexy, &
dI6_deyy, dI6_dezz, dexx_depsyy, dexy_depsxy, deyy_depsyy, &
dezz_depsyy, dphi_dw, dv_dvp, dvp_dI5, dw_dwp, dwp_dI5, &
dwp_dI6)
use types
implicit none
REAL(KIND=dp), intent(in) :: d2I6_dexxdexy
REAL(KIND=dp), intent(in) :: d2I6_dexydeyy
REAL(KIND=dp), intent(in) :: d2phi_dv2
REAL(KIND=dp), intent(in) :: d2phi_dvdw
REAL(KIND=dp), intent(in) :: d2phi_dw2
REAL(KIND=dp), intent(in) :: d2wp_dI52
REAL(KIND=dp), intent(in) :: d2wp_dI5dI6
REAL(KIND=dp), intent(in) :: d2wp_dI62
REAL(KIND=dp), intent(in) :: dI5_dexx
REAL(KIND=dp), intent(in) :: dI5_dexy
REAL(KIND=dp), intent(in) :: dI5_deyy
REAL(KIND=dp), intent(in) :: dI5_dezz
REAL(KIND=dp), intent(in) :: dI6_dexx
REAL(KIND=dp), intent(in) :: dI6_dexy
REAL(KIND=dp), intent(in) :: dI6_deyy
REAL(KIND=dp), intent(in) :: dI6_dezz
REAL(KIND=dp), intent(in) :: dexx_depsyy
REAL(KIND=dp), intent(in) :: dexy_depsxy
REAL(KIND=dp), intent(in) :: deyy_depsyy
REAL(KIND=dp), intent(in) :: dezz_depsyy
REAL(KIND=dp), intent(in) :: dphi_dw
REAL(KIND=dp), intent(in) :: dv_dvp
REAL(KIND=dp), intent(in) :: dvp_dI5
REAL(KIND=dp), intent(in) :: dw_dwp
REAL(KIND=dp), intent(in) :: dwp_dI5
REAL(KIND=dp), intent(in) :: dwp_dI6
end function
end interface
interface
REAL(KIND=dp) function d2phi_depsxydepsyz(d2I6_dexydeyz, d2phi_dv2, d2phi_dvdw, &
d2phi_dw2, d2wp_dI52, d2wp_dI5dI6, d2wp_dI62, dI5_dexy, &
dI5_deyz, dI6_dexy, dI6_deyz, dexy_depsxy, deyz_depsyz, &
dphi_dw, dv_dvp, dvp_dI5, dw_dwp, dwp_dI5, dwp_dI6)
use types
implicit none
REAL(KIND=dp), intent(in) :: d2I6_dexydeyz
REAL(KIND=dp), intent(in) :: d2phi_dv2
REAL(KIND=dp), intent(in) :: d2phi_dvdw
REAL(KIND=dp), intent(in) :: d2phi_dw2
REAL(KIND=dp), intent(in) :: d2wp_dI52
REAL(KIND=dp), intent(in) :: d2wp_dI5dI6
REAL(KIND=dp), intent(in) :: d2wp_dI62
REAL(KIND=dp), intent(in) :: dI5_dexy
REAL(KIND=dp), intent(in) :: dI5_deyz
REAL(KIND=dp), intent(in) :: dI6_dexy
REAL(KIND=dp), intent(in) :: dI6_deyz
REAL(KIND=dp), intent(in) :: dexy_depsxy
REAL(KIND=dp), intent(in) :: deyz_depsyz
REAL(KIND=dp), intent(in) :: dphi_dw
REAL(KIND=dp), intent(in) :: dv_dvp
REAL(KIND=dp), intent(in) :: dvp_dI5
REAL(KIND=dp), intent(in) :: dw_dwp
REAL(KIND=dp), intent(in) :: dwp_dI5
REAL(KIND=dp), intent(in) :: dwp_dI6
end function
end interface
interface
REAL(KIND=dp) function d2phi_depsxydepszx(d2I6_dexydezx, d2phi_dv2, d2phi_dvdw, &
d2phi_dw2, d2wp_dI52, d2wp_dI5dI6, d2wp_dI62, dI5_dexy, &
dI5_dezx, dI6_dexy, dI6_dezx, dexy_depsxy, dezx_depszx, &
dphi_dw, dv_dvp, dvp_dI5, dw_dwp, dwp_dI5, dwp_dI6)
use types
implicit none
REAL(KIND=dp), intent(in) :: d2I6_dexydezx
REAL(KIND=dp), intent(in) :: d2phi_dv2
REAL(KIND=dp), intent(in) :: d2phi_dvdw
REAL(KIND=dp), intent(in) :: d2phi_dw2
REAL(KIND=dp), intent(in) :: d2wp_dI52
REAL(KIND=dp), intent(in) :: d2wp_dI5dI6
REAL(KIND=dp), intent(in) :: d2wp_dI62
REAL(KIND=dp), intent(in) :: dI5_dexy
REAL(KIND=dp), intent(in) :: dI5_dezx
REAL(KIND=dp), intent(in) :: dI6_dexy
REAL(KIND=dp), intent(in) :: dI6_dezx
REAL(KIND=dp), intent(in) :: dexy_depsxy
REAL(KIND=dp), intent(in) :: dezx_depszx
REAL(KIND=dp), intent(in) :: dphi_dw
REAL(KIND=dp), intent(in) :: dv_dvp
REAL(KIND=dp), intent(in) :: dvp_dI5
REAL(KIND=dp), intent(in) :: dw_dwp
REAL(KIND=dp), intent(in) :: dwp_dI5
REAL(KIND=dp), intent(in) :: dwp_dI6
end function
end interface
interface
REAL(KIND=dp) function d2phi_depsxydepszz(d2I6_dexxdexy, d2I6_dexydeyy, d2phi_dv2, &
d2phi_dvdw, d2phi_dw2, d2wp_dI52, d2wp_dI5dI6, d2wp_dI62, &
dI5_dexx, dI5_dexy, dI5_deyy, dI5_dezz, dI6_dexx, dI6_dexy, &
dI6_deyy, dI6_dezz, dexx_depszz, dexy_depsxy, deyy_depszz, &
dezz_depszz, dphi_dw, dv_dvp, dvp_dI5, dw_dwp, dwp_dI5, &
dwp_dI6)
use types
implicit none
REAL(KIND=dp), intent(in) :: d2I6_dexxdexy
REAL(KIND=dp), intent(in) :: d2I6_dexydeyy
REAL(KIND=dp), intent(in) :: d2phi_dv2
REAL(KIND=dp), intent(in) :: d2phi_dvdw
REAL(KIND=dp), intent(in) :: d2phi_dw2
REAL(KIND=dp), intent(in) :: d2wp_dI52
REAL(KIND=dp), intent(in) :: d2wp_dI5dI6
REAL(KIND=dp), intent(in) :: d2wp_dI62
REAL(KIND=dp), intent(in) :: dI5_dexx
REAL(KIND=dp), intent(in) :: dI5_dexy
REAL(KIND=dp), intent(in) :: dI5_deyy
REAL(KIND=dp), intent(in) :: dI5_dezz
REAL(KIND=dp), intent(in) :: dI6_dexx
REAL(KIND=dp), intent(in) :: dI6_dexy
REAL(KIND=dp), intent(in) :: dI6_deyy
REAL(KIND=dp), intent(in) :: dI6_dezz
REAL(KIND=dp), intent(in) :: dexx_depszz
REAL(KIND=dp), intent(in) :: dexy_depsxy
REAL(KIND=dp), intent(in) :: deyy_depszz
REAL(KIND=dp), intent(in) :: dezz_depszz
REAL(KIND=dp), intent(in) :: dphi_dw
REAL(KIND=dp), intent(in) :: dv_dvp
REAL(KIND=dp), intent(in) :: dvp_dI5
REAL(KIND=dp), intent(in) :: dw_dwp
REAL(KIND=dp), intent(in) :: dwp_dI5
REAL(KIND=dp), intent(in) :: dwp_dI6
end function
end interface
interface
REAL(KIND=dp) function dphi_depsyy(dI5_dexx, dI5_deyy, dI5_dezz, dI6_dexx, &
dI6_deyy, dI6_dezz, dexx_depsyy, deyy_depsyy, dezz_depsyy, &
dphi_dv, dphi_dw, dv_dvp, dvp_dI5, dw_dwp, dwp_dI5, dwp_dI6)
use types
implicit none
REAL(KIND=dp), intent(in) :: dI5_dexx
REAL(KIND=dp), intent(in) :: dI5_deyy
REAL(KIND=dp), intent(in) :: dI5_dezz
REAL(KIND=dp), intent(in) :: dI6_dexx
REAL(KIND=dp), intent(in) :: dI6_deyy
REAL(KIND=dp), intent(in) :: dI6_dezz
REAL(KIND=dp), intent(in) :: dexx_depsyy
REAL(KIND=dp), intent(in) :: deyy_depsyy
REAL(KIND=dp), intent(in) :: dezz_depsyy
REAL(KIND=dp), intent(in) :: dphi_dv
REAL(KIND=dp), intent(in) :: dphi_dw
REAL(KIND=dp), intent(in) :: dv_dvp
REAL(KIND=dp), intent(in) :: dvp_dI5
REAL(KIND=dp), intent(in) :: dw_dwp
REAL(KIND=dp), intent(in) :: dwp_dI5
REAL(KIND=dp), intent(in) :: dwp_dI6
end function
end interface
interface
REAL(KIND=dp) function d2phi_depsyy2(d2I6_dexx2, d2I6_deyy2, d2I6_dezz2, d2phi_dv2, &
d2phi_dvdw, d2phi_dw2, d2wp_dI52, d2wp_dI5dI6, d2wp_dI62, &
dI5_dexx, dI5_deyy, dI5_dezz, dI6_dexx, dI6_deyy, dI6_dezz, &
dexx_depsyy, deyy_depsyy, dezz_depsyy, dphi_dw, dv_dvp, &
dvp_dI5, dw_dwp, dwp_dI5, dwp_dI6)
use types
implicit none
REAL(KIND=dp), intent(in) :: d2I6_dexx2
REAL(KIND=dp), intent(in) :: d2I6_deyy2
REAL(KIND=dp), intent(in) :: d2I6_dezz2
REAL(KIND=dp), intent(in) :: d2phi_dv2
REAL(KIND=dp), intent(in) :: d2phi_dvdw
REAL(KIND=dp), intent(in) :: d2phi_dw2
REAL(KIND=dp), intent(in) :: d2wp_dI52
REAL(KIND=dp), intent(in) :: d2wp_dI5dI6
REAL(KIND=dp), intent(in) :: d2wp_dI62
REAL(KIND=dp), intent(in) :: dI5_dexx
REAL(KIND=dp), intent(in) :: dI5_deyy
REAL(KIND=dp), intent(in) :: dI5_dezz
REAL(KIND=dp), intent(in) :: dI6_dexx
REAL(KIND=dp), intent(in) :: dI6_deyy
REAL(KIND=dp), intent(in) :: dI6_dezz
REAL(KIND=dp), intent(in) :: dexx_depsyy
REAL(KIND=dp), intent(in) :: deyy_depsyy
REAL(KIND=dp), intent(in) :: dezz_depsyy
REAL(KIND=dp), intent(in) :: dphi_dw
REAL(KIND=dp), intent(in) :: dv_dvp
REAL(KIND=dp), intent(in) :: dvp_dI5
REAL(KIND=dp), intent(in) :: dw_dwp
REAL(KIND=dp), intent(in) :: dwp_dI5
REAL(KIND=dp), intent(in) :: dwp_dI6
end function
end interface
interface
REAL(KIND=dp) function d2phi_depsyydepsyz(d2I6_deyydeyz, d2I6_deyzdezz, d2phi_dv2, &
d2phi_dvdw, d2phi_dw2, d2wp_dI52, d2wp_dI5dI6, d2wp_dI62, &
dI5_dexx, dI5_deyy, dI5_deyz, dI5_dezz, dI6_dexx, dI6_deyy, &
dI6_deyz, dI6_dezz, dexx_depsyy, deyy_depsyy, deyz_depsyz, &
dezz_depsyy, dphi_dw, dv_dvp, dvp_dI5, dw_dwp, dwp_dI5, &
dwp_dI6)
use types
implicit none
REAL(KIND=dp), intent(in) :: d2I6_deyydeyz
REAL(KIND=dp), intent(in) :: d2I6_deyzdezz
REAL(KIND=dp), intent(in) :: d2phi_dv2
REAL(KIND=dp), intent(in) :: d2phi_dvdw
REAL(KIND=dp), intent(in) :: d2phi_dw2
REAL(KIND=dp), intent(in) :: d2wp_dI52
REAL(KIND=dp), intent(in) :: d2wp_dI5dI6
REAL(KIND=dp), intent(in) :: d2wp_dI62
REAL(KIND=dp), intent(in) :: dI5_dexx
REAL(KIND=dp), intent(in) :: dI5_deyy
REAL(KIND=dp), intent(in) :: dI5_deyz
REAL(KIND=dp), intent(in) :: dI5_dezz
REAL(KIND=dp), intent(in) :: dI6_dexx
REAL(KIND=dp), intent(in) :: dI6_deyy
REAL(KIND=dp), intent(in) :: dI6_deyz
REAL(KIND=dp), intent(in) :: dI6_dezz
REAL(KIND=dp), intent(in) :: dexx_depsyy
REAL(KIND=dp), intent(in) :: deyy_depsyy
REAL(KIND=dp), intent(in) :: deyz_depsyz
REAL(KIND=dp), intent(in) :: dezz_depsyy
REAL(KIND=dp), intent(in) :: dphi_dw
REAL(KIND=dp), intent(in) :: dv_dvp
REAL(KIND=dp), intent(in) :: dvp_dI5
REAL(KIND=dp), intent(in) :: dw_dwp
REAL(KIND=dp), intent(in) :: dwp_dI5
REAL(KIND=dp), intent(in) :: dwp_dI6
end function
end interface
interface
REAL(KIND=dp) function d2phi_depsyydepszx(d2I6_dexxdezx, d2I6_dezxdezz, d2phi_dv2, &
d2phi_dvdw, d2phi_dw2, d2wp_dI52, d2wp_dI5dI6, d2wp_dI62, &
dI5_dexx, dI5_deyy, dI5_dezx, dI5_dezz, dI6_dexx, dI6_deyy, &
dI6_dezx, dI6_dezz, dexx_depsyy, deyy_depsyy, dezx_depszx, &
dezz_depsyy, dphi_dw, dv_dvp, dvp_dI5, dw_dwp, dwp_dI5, &
dwp_dI6)
use types
implicit none
REAL(KIND=dp), intent(in) :: d2I6_dexxdezx
REAL(KIND=dp), intent(in) :: d2I6_dezxdezz
REAL(KIND=dp), intent(in) :: d2phi_dv2
REAL(KIND=dp), intent(in) :: d2phi_dvdw
REAL(KIND=dp), intent(in) :: d2phi_dw2
REAL(KIND=dp), intent(in) :: d2wp_dI52
REAL(KIND=dp), intent(in) :: d2wp_dI5dI6
REAL(KIND=dp), intent(in) :: d2wp_dI62
REAL(KIND=dp), intent(in) :: dI5_dexx
REAL(KIND=dp), intent(in) :: dI5_deyy
REAL(KIND=dp), intent(in) :: dI5_dezx
REAL(KIND=dp), intent(in) :: dI5_dezz
REAL(KIND=dp), intent(in) :: dI6_dexx
REAL(KIND=dp), intent(in) :: dI6_deyy
REAL(KIND=dp), intent(in) :: dI6_dezx
REAL(KIND=dp), intent(in) :: dI6_dezz
REAL(KIND=dp), intent(in) :: dexx_depsyy
REAL(KIND=dp), intent(in) :: deyy_depsyy
REAL(KIND=dp), intent(in) :: dezx_depszx
REAL(KIND=dp), intent(in) :: dezz_depsyy
REAL(KIND=dp), intent(in) :: dphi_dw
REAL(KIND=dp), intent(in) :: dv_dvp
REAL(KIND=dp), intent(in) :: dvp_dI5
REAL(KIND=dp), intent(in) :: dw_dwp
REAL(KIND=dp), intent(in) :: dwp_dI5
REAL(KIND=dp), intent(in) :: dwp_dI6
end function
end interface
interface
REAL(KIND=dp) function d2phi_depsyydepszz(d2I6_dexx2, d2I6_deyy2, d2I6_dezz2, &
d2phi_dv2, d2phi_dvdw, d2phi_dw2, d2wp_dI52, d2wp_dI5dI6, &
d2wp_dI62, dI5_dexx, dI5_deyy, dI5_dezz, dI6_dexx, dI6_deyy, &
dI6_dezz, dexx_depsyy, dexx_depszz, deyy_depsyy, &
deyy_depszz, dezz_depsyy, dezz_depszz, dphi_dw, dv_dvp, &
dvp_dI5, dw_dwp, dwp_dI5, dwp_dI6)
use types
implicit none
REAL(KIND=dp), intent(in) :: d2I6_dexx2
REAL(KIND=dp), intent(in) :: d2I6_deyy2
REAL(KIND=dp), intent(in) :: d2I6_dezz2
REAL(KIND=dp), intent(in) :: d2phi_dv2
REAL(KIND=dp), intent(in) :: d2phi_dvdw
REAL(KIND=dp), intent(in) :: d2phi_dw2
REAL(KIND=dp), intent(in) :: d2wp_dI52
REAL(KIND=dp), intent(in) :: d2wp_dI5dI6
REAL(KIND=dp), intent(in) :: d2wp_dI62
REAL(KIND=dp), intent(in) :: dI5_dexx
REAL(KIND=dp), intent(in) :: dI5_deyy
REAL(KIND=dp), intent(in) :: dI5_dezz
REAL(KIND=dp), intent(in) :: dI6_dexx
REAL(KIND=dp), intent(in) :: dI6_deyy
REAL(KIND=dp), intent(in) :: dI6_dezz
REAL(KIND=dp), intent(in) :: dexx_depsyy
REAL(KIND=dp), intent(in) :: dexx_depszz
REAL(KIND=dp), intent(in) :: deyy_depsyy
REAL(KIND=dp), intent(in) :: deyy_depszz
REAL(KIND=dp), intent(in) :: dezz_depsyy
REAL(KIND=dp), intent(in) :: dezz_depszz
REAL(KIND=dp), intent(in) :: dphi_dw
REAL(KIND=dp), intent(in) :: dv_dvp
REAL(KIND=dp), intent(in) :: dvp_dI5
REAL(KIND=dp), intent(in) :: dw_dwp
REAL(KIND=dp), intent(in) :: dwp_dI5
REAL(KIND=dp), intent(in) :: dwp_dI6
end function
end interface
interface
REAL(KIND=dp) function dphi_depsyz(dI5_deyz, dI6_deyz, deyz_depsyz, dphi_dv, &
dphi_dw, dv_dvp, dvp_dI5, dw_dwp, dwp_dI5, dwp_dI6)
use types
implicit none
REAL(KIND=dp), intent(in) :: dI5_deyz
REAL(KIND=dp), intent(in) :: dI6_deyz
REAL(KIND=dp), intent(in) :: deyz_depsyz
REAL(KIND=dp), intent(in) :: dphi_dv
REAL(KIND=dp), intent(in) :: dphi_dw
REAL(KIND=dp), intent(in) :: dv_dvp
REAL(KIND=dp), intent(in) :: dvp_dI5
REAL(KIND=dp), intent(in) :: dw_dwp
REAL(KIND=dp), intent(in) :: dwp_dI5
REAL(KIND=dp), intent(in) :: dwp_dI6
end function
end interface
interface
REAL(KIND=dp) function d2phi_depsyz2(d2I6_deyz2, d2phi_dv2, d2phi_dvdw, d2phi_dw2, &
d2wp_dI52, d2wp_dI5dI6, d2wp_dI62, dI5_deyz, dI6_deyz, &
deyz_depsyz, dphi_dw, dv_dvp, dvp_dI5, dw_dwp, dwp_dI5, &
dwp_dI6)
use types
implicit none
REAL(KIND=dp), intent(in) :: d2I6_deyz2
REAL(KIND=dp), intent(in) :: d2phi_dv2
REAL(KIND=dp), intent(in) :: d2phi_dvdw
REAL(KIND=dp), intent(in) :: d2phi_dw2
REAL(KIND=dp), intent(in) :: d2wp_dI52
REAL(KIND=dp), intent(in) :: d2wp_dI5dI6
REAL(KIND=dp), intent(in) :: d2wp_dI62
REAL(KIND=dp), intent(in) :: dI5_deyz
REAL(KIND=dp), intent(in) :: dI6_deyz
REAL(KIND=dp), intent(in) :: deyz_depsyz
REAL(KIND=dp), intent(in) :: dphi_dw
REAL(KIND=dp), intent(in) :: dv_dvp
REAL(KIND=dp), intent(in) :: dvp_dI5
REAL(KIND=dp), intent(in) :: dw_dwp
REAL(KIND=dp), intent(in) :: dwp_dI5
REAL(KIND=dp), intent(in) :: dwp_dI6
end function
end interface
interface
REAL(KIND=dp) function d2phi_depsyzdepszx(d2I6_deyzdezx, d2phi_dv2, d2phi_dvdw, &
d2phi_dw2, d2wp_dI52, d2wp_dI5dI6, d2wp_dI62, dI5_deyz, &
dI5_dezx, dI6_deyz, dI6_dezx, deyz_depsyz, dezx_depszx, &
dphi_dw, dv_dvp, dvp_dI5, dw_dwp, dwp_dI5, dwp_dI6)
use types
implicit none
REAL(KIND=dp), intent(in) :: d2I6_deyzdezx
REAL(KIND=dp), intent(in) :: d2phi_dv2
REAL(KIND=dp), intent(in) :: d2phi_dvdw
REAL(KIND=dp), intent(in) :: d2phi_dw2
REAL(KIND=dp), intent(in) :: d2wp_dI52
REAL(KIND=dp), intent(in) :: d2wp_dI5dI6
REAL(KIND=dp), intent(in) :: d2wp_dI62
REAL(KIND=dp), intent(in) :: dI5_deyz
REAL(KIND=dp), intent(in) :: dI5_dezx
REAL(KIND=dp), intent(in) :: dI6_deyz
REAL(KIND=dp), intent(in) :: dI6_dezx
REAL(KIND=dp), intent(in) :: deyz_depsyz
REAL(KIND=dp), intent(in) :: dezx_depszx
REAL(KIND=dp), intent(in) :: dphi_dw
REAL(KIND=dp), intent(in) :: dv_dvp
REAL(KIND=dp), intent(in) :: dvp_dI5
REAL(KIND=dp), intent(in) :: dw_dwp
REAL(KIND=dp), intent(in) :: dwp_dI5
REAL(KIND=dp), intent(in) :: dwp_dI6
end function
end interface
interface
REAL(KIND=dp) function d2phi_depsyzdepszz(d2I6_deyydeyz, d2I6_deyzdezz, d2phi_dv2, &
d2phi_dvdw, d2phi_dw2, d2wp_dI52, d2wp_dI5dI6, d2wp_dI62, &
dI5_dexx, dI5_deyy, dI5_deyz, dI5_dezz, dI6_dexx, dI6_deyy, &
dI6_deyz, dI6_dezz, dexx_depszz, deyy_depszz, deyz_depsyz, &
dezz_depszz, dphi_dw, dv_dvp, dvp_dI5, dw_dwp, dwp_dI5, &
dwp_dI6)
use types
implicit none
REAL(KIND=dp), intent(in) :: d2I6_deyydeyz
REAL(KIND=dp), intent(in) :: d2I6_deyzdezz
REAL(KIND=dp), intent(in) :: d2phi_dv2
REAL(KIND=dp), intent(in) :: d2phi_dvdw
REAL(KIND=dp), intent(in) :: d2phi_dw2
REAL(KIND=dp), intent(in) :: d2wp_dI52
REAL(KIND=dp), intent(in) :: d2wp_dI5dI6
REAL(KIND=dp), intent(in) :: d2wp_dI62
REAL(KIND=dp), intent(in) :: dI5_dexx
REAL(KIND=dp), intent(in) :: dI5_deyy
REAL(KIND=dp), intent(in) :: dI5_deyz
REAL(KIND=dp), intent(in) :: dI5_dezz
REAL(KIND=dp), intent(in) :: dI6_dexx
REAL(KIND=dp), intent(in) :: dI6_deyy
REAL(KIND=dp), intent(in) :: dI6_deyz
REAL(KIND=dp), intent(in) :: dI6_dezz
REAL(KIND=dp), intent(in) :: dexx_depszz
REAL(KIND=dp), intent(in) :: deyy_depszz
REAL(KIND=dp), intent(in) :: deyz_depsyz
REAL(KIND=dp), intent(in) :: dezz_depszz
REAL(KIND=dp), intent(in) :: dphi_dw
REAL(KIND=dp), intent(in) :: dv_dvp
REAL(KIND=dp), intent(in) :: dvp_dI5
REAL(KIND=dp), intent(in) :: dw_dwp
REAL(KIND=dp), intent(in) :: dwp_dI5
REAL(KIND=dp), intent(in) :: dwp_dI6
end function
end interface
interface
REAL(KIND=dp) function dphi_depszx(dI5_dezx, dI6_dezx, dezx_depszx, dphi_dv, &
dphi_dw, dv_dvp, dvp_dI5, dw_dwp, dwp_dI5, dwp_dI6)
use types
implicit none
REAL(KIND=dp), intent(in) :: dI5_dezx
REAL(KIND=dp), intent(in) :: dI6_dezx
REAL(KIND=dp), intent(in) :: dezx_depszx
REAL(KIND=dp), intent(in) :: dphi_dv
REAL(KIND=dp), intent(in) :: dphi_dw
REAL(KIND=dp), intent(in) :: dv_dvp
REAL(KIND=dp), intent(in) :: dvp_dI5
REAL(KIND=dp), intent(in) :: dw_dwp
REAL(KIND=dp), intent(in) :: dwp_dI5
REAL(KIND=dp), intent(in) :: dwp_dI6
end function
end interface
interface
REAL(KIND=dp) function d2phi_depszx2(d2I6_dezx2, d2phi_dv2, d2phi_dvdw, d2phi_dw2, &
d2wp_dI52, d2wp_dI5dI6, d2wp_dI62, dI5_dezx, dI6_dezx, &
dezx_depszx, dphi_dw, dv_dvp, dvp_dI5, dw_dwp, dwp_dI5, &
dwp_dI6)
use types
implicit none
REAL(KIND=dp), intent(in) :: d2I6_dezx2
REAL(KIND=dp), intent(in) :: d2phi_dv2
REAL(KIND=dp), intent(in) :: d2phi_dvdw
REAL(KIND=dp), intent(in) :: d2phi_dw2
REAL(KIND=dp), intent(in) :: d2wp_dI52
REAL(KIND=dp), intent(in) :: d2wp_dI5dI6
REAL(KIND=dp), intent(in) :: d2wp_dI62
REAL(KIND=dp), intent(in) :: dI5_dezx
REAL(KIND=dp), intent(in) :: dI6_dezx
REAL(KIND=dp), intent(in) :: dezx_depszx
REAL(KIND=dp), intent(in) :: dphi_dw
REAL(KIND=dp), intent(in) :: dv_dvp
REAL(KIND=dp), intent(in) :: dvp_dI5
REAL(KIND=dp), intent(in) :: dw_dwp
REAL(KIND=dp), intent(in) :: dwp_dI5
REAL(KIND=dp), intent(in) :: dwp_dI6
end function
end interface
interface
REAL(KIND=dp) function d2phi_depszxdepszz(d2I6_dexxdezx, d2I6_dezxdezz, d2phi_dv2, &
d2phi_dvdw, d2phi_dw2, d2wp_dI52, d2wp_dI5dI6, d2wp_dI62, &
dI5_dexx, dI5_deyy, dI5_dezx, dI5_dezz, dI6_dexx, dI6_deyy, &
dI6_dezx, dI6_dezz, dexx_depszz, deyy_depszz, dezx_depszx, &
dezz_depszz, dphi_dw, dv_dvp, dvp_dI5, dw_dwp, dwp_dI5, &
dwp_dI6)
use types
implicit none
REAL(KIND=dp), intent(in) :: d2I6_dexxdezx
REAL(KIND=dp), intent(in) :: d2I6_dezxdezz
REAL(KIND=dp), intent(in) :: d2phi_dv2
REAL(KIND=dp), intent(in) :: d2phi_dvdw
REAL(KIND=dp), intent(in) :: d2phi_dw2
REAL(KIND=dp), intent(in) :: d2wp_dI52
REAL(KIND=dp), intent(in) :: d2wp_dI5dI6
REAL(KIND=dp), intent(in) :: d2wp_dI62
REAL(KIND=dp), intent(in) :: dI5_dexx
REAL(KIND=dp), intent(in) :: dI5_deyy
REAL(KIND=dp), intent(in) :: dI5_dezx
REAL(KIND=dp), intent(in) :: dI5_dezz
REAL(KIND=dp), intent(in) :: dI6_dexx
REAL(KIND=dp), intent(in) :: dI6_deyy
REAL(KIND=dp), intent(in) :: dI6_dezx
REAL(KIND=dp), intent(in) :: dI6_dezz
REAL(KIND=dp), intent(in) :: dexx_depszz
REAL(KIND=dp), intent(in) :: deyy_depszz
REAL(KIND=dp), intent(in) :: dezx_depszx
REAL(KIND=dp), intent(in) :: dezz_depszz
REAL(KIND=dp), intent(in) :: dphi_dw
REAL(KIND=dp), intent(in) :: dv_dvp
REAL(KIND=dp), intent(in) :: dvp_dI5
REAL(KIND=dp), intent(in) :: dw_dwp
REAL(KIND=dp), intent(in) :: dwp_dI5
REAL(KIND=dp), intent(in) :: dwp_dI6
end function
end interface
interface
REAL(KIND=dp) function dphi_depszz(dI5_dexx, dI5_deyy, dI5_dezz, dI6_dexx, &
dI6_deyy, dI6_dezz, dexx_depszz, deyy_depszz, dezz_depszz, &
dphi_dv, dphi_dw, dv_dvp, dvp_dI5, dw_dwp, dwp_dI5, dwp_dI6)
use types
implicit none
REAL(KIND=dp), intent(in) :: dI5_dexx
REAL(KIND=dp), intent(in) :: dI5_deyy
REAL(KIND=dp), intent(in) :: dI5_dezz
REAL(KIND=dp), intent(in) :: dI6_dexx
REAL(KIND=dp), intent(in) :: dI6_deyy
REAL(KIND=dp), intent(in) :: dI6_dezz
REAL(KIND=dp), intent(in) :: dexx_depszz
REAL(KIND=dp), intent(in) :: deyy_depszz
REAL(KIND=dp), intent(in) :: dezz_depszz
REAL(KIND=dp), intent(in) :: dphi_dv
REAL(KIND=dp), intent(in) :: dphi_dw
REAL(KIND=dp), intent(in) :: dv_dvp
REAL(KIND=dp), intent(in) :: dvp_dI5
REAL(KIND=dp), intent(in) :: dw_dwp
REAL(KIND=dp), intent(in) :: dwp_dI5
REAL(KIND=dp), intent(in) :: dwp_dI6
end function
end interface
interface
REAL(KIND=dp) function d2phi_depszz2(d2I6_dexx2, d2I6_deyy2, d2I6_dezz2, d2phi_dv2, &
d2phi_dvdw, d2phi_dw2, d2wp_dI52, d2wp_dI5dI6, d2wp_dI62, &
dI5_dexx, dI5_deyy, dI5_dezz, dI6_dexx, dI6_deyy, dI6_dezz, &
dexx_depszz, deyy_depszz, dezz_depszz, dphi_dw, dv_dvp, &
dvp_dI5, dw_dwp, dwp_dI5, dwp_dI6)
use types
implicit none
REAL(KIND=dp), intent(in) :: d2I6_dexx2
REAL(KIND=dp), intent(in) :: d2I6_deyy2
REAL(KIND=dp), intent(in) :: d2I6_dezz2
REAL(KIND=dp), intent(in) :: d2phi_dv2
REAL(KIND=dp), intent(in) :: d2phi_dvdw
REAL(KIND=dp), intent(in) :: d2phi_dw2
REAL(KIND=dp), intent(in) :: d2wp_dI52
REAL(KIND=dp), intent(in) :: d2wp_dI5dI6
REAL(KIND=dp), intent(in) :: d2wp_dI62
REAL(KIND=dp), intent(in) :: dI5_dexx
REAL(KIND=dp), intent(in) :: dI5_deyy
REAL(KIND=dp), intent(in) :: dI5_dezz
REAL(KIND=dp), intent(in) :: dI6_dexx
REAL(KIND=dp), intent(in) :: dI6_deyy
REAL(KIND=dp), intent(in) :: dI6_dezz
REAL(KIND=dp), intent(in) :: dexx_depszz
REAL(KIND=dp), intent(in) :: deyy_depszz
REAL(KIND=dp), intent(in) :: dezz_depszz
REAL(KIND=dp), intent(in) :: dphi_dw
REAL(KIND=dp), intent(in) :: dv_dvp
REAL(KIND=dp), intent(in) :: dvp_dI5
REAL(KIND=dp), intent(in) :: dw_dwp
REAL(KIND=dp), intent(in) :: dwp_dI5
REAL(KIND=dp), intent(in) :: dwp_dI6
end function
end interface
interface
REAL(KIND=dp) function exx(epsxx, epsyy, epszz)
use types
implicit none
REAL(KIND=dp), intent(in) :: epsxx
REAL(KIND=dp), intent(in) :: epsyy
REAL(KIND=dp), intent(in) :: epszz
end function
end interface
interface
REAL(KIND=dp) function exy(epsxy)
use types
implicit none
REAL(KIND=dp), intent(in) :: epsxy
end function
end interface
interface
REAL(KIND=dp) function eyy(epsxx, epsyy, epszz)
use types
implicit none
REAL(KIND=dp), intent(in) :: epsxx
REAL(KIND=dp), intent(in) :: epsyy
REAL(KIND=dp), intent(in) :: epszz
end function
end interface
interface
REAL(KIND=dp) function eyz(epsyz)
use types
implicit none
REAL(KIND=dp), intent(in) :: epsyz
end function
end interface
interface
REAL(KIND=dp) function ezx(epszx)
use types
implicit none
REAL(KIND=dp), intent(in) :: epszx
end function
end interface
interface
REAL(KIND=dp) function ezz(epsxx, epsyy, epszz)
use types
implicit none
REAL(KIND=dp), intent(in) :: epsxx
REAL(KIND=dp), intent(in) :: epsyy
REAL(KIND=dp), intent(in) :: epszz
end function
end interface
interface
REAL(KIND=dp) function I4(Bx, By, Bz)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bx
REAL(KIND=dp), intent(in) :: By
REAL(KIND=dp), intent(in) :: Bz
end function
end interface
interface
REAL(KIND=dp) function I5(Bx, By, Bz, exx, exy, eyy, eyz, ezx, ezz)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bx
REAL(KIND=dp), intent(in) :: By
REAL(KIND=dp), intent(in) :: Bz
REAL(KIND=dp), intent(in) :: exx
REAL(KIND=dp), intent(in) :: exy
REAL(KIND=dp), intent(in) :: eyy
REAL(KIND=dp), intent(in) :: eyz
REAL(KIND=dp), intent(in) :: ezx
REAL(KIND=dp), intent(in) :: ezz
end function
end interface
interface
REAL(KIND=dp) function I6(Bx, By, Bz, exx, exy, eyy, eyz, ezx, ezz)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bx
REAL(KIND=dp), intent(in) :: By
REAL(KIND=dp), intent(in) :: Bz
REAL(KIND=dp), intent(in) :: exx
REAL(KIND=dp), intent(in) :: exy
REAL(KIND=dp), intent(in) :: eyy
REAL(KIND=dp), intent(in) :: eyz
REAL(KIND=dp), intent(in) :: ezx
REAL(KIND=dp), intent(in) :: ezz
end function
end interface
interface
REAL(KIND=dp) function u(u0, up)
use types
implicit none
REAL(KIND=dp), intent(in) :: u0
REAL(KIND=dp), intent(in) :: up
end function
end interface
interface
REAL(KIND=dp) function up(I4)
use types
implicit none
REAL(KIND=dp), intent(in) :: I4
end function
end interface
interface
REAL(KIND=dp) function v(v0, vp)
use types
implicit none
REAL(KIND=dp), intent(in) :: v0
REAL(KIND=dp), intent(in) :: vp
end function
end interface
interface
REAL(KIND=dp) function vp(I4, I5)
use types
implicit none
REAL(KIND=dp), intent(in) :: I4
REAL(KIND=dp), intent(in) :: I5
end function
end interface
interface
REAL(KIND=dp) function w(w0, wp)
use types
implicit none
REAL(KIND=dp), intent(in) :: w0
REAL(KIND=dp), intent(in) :: wp
end function
end interface
interface
REAL(KIND=dp) function wp(I4, I5, I6)
use types
implicit none
REAL(KIND=dp), intent(in) :: I4
REAL(KIND=dp), intent(in) :: I5
REAL(KIND=dp), intent(in) :: I6
end function
end interface
interface
REAL(KIND=dp) function epsM(epsxx, epsyy, epszz)
use types
implicit none
REAL(KIND=dp), intent(in) :: epsxx
REAL(KIND=dp), intent(in) :: epsyy
REAL(KIND=dp), intent(in) :: epszz
end function
end interface
interface
REAL(KIND=dp) function phip(phi)
use types
implicit none
REAL(KIND=dp), intent(in) :: phi
end function
end interface

