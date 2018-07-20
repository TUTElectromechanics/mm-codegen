!******************************************************************************
!*                       Code generated with sympy 1.0                        *
!*                                                                            *
!*              See http://www.sympy.org/ for more information.               *
!*                                                                            *
!*                 This file is part of 'elmer-mgs-galfenol'                  *
!******************************************************************************


interface
REAL*8 function dexx_depsxx()
implicit none
end function
end interface
interface
REAL*8 function dexx_depsyy()
implicit none
end function
end interface
interface
REAL*8 function dexx_depszz()
implicit none
end function
end interface
interface
REAL*8 function dexy_depsxy()
implicit none
end function
end interface
interface
REAL*8 function deyy_depsxx()
implicit none
end function
end interface
interface
REAL*8 function deyy_depsyy()
implicit none
end function
end interface
interface
REAL*8 function deyy_depszz()
implicit none
end function
end interface
interface
REAL*8 function deyz_depsyz()
implicit none
end function
end interface
interface
REAL*8 function dezx_depszx()
implicit none
end function
end interface
interface
REAL*8 function dezz_depsxx()
implicit none
end function
end interface
interface
REAL*8 function dezz_depsyy()
implicit none
end function
end interface
interface
REAL*8 function dezz_depszz()
implicit none
end function
end interface
interface
REAL*8 function dI4_dBx(Bx)
implicit none
REAL*8, intent(in) :: Bx
end function
end interface
interface
REAL*8 function d2I4_dBx2()
implicit none
end function
end interface
interface
REAL*8 function dI4_dBy(By)
implicit none
REAL*8, intent(in) :: By
end function
end interface
interface
REAL*8 function d2I4_dBy2()
implicit none
end function
end interface
interface
REAL*8 function dI4_dBz(Bz)
implicit none
REAL*8, intent(in) :: Bz
end function
end interface
interface
REAL*8 function d2I4_dBz2()
implicit none
end function
end interface
interface
REAL*8 function dI5_dBx(Bx, By, Bz, exx, exy, ezx)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: By
REAL*8, intent(in) :: Bz
REAL*8, intent(in) :: exx
REAL*8, intent(in) :: exy
REAL*8, intent(in) :: ezx
end function
end interface
interface
REAL*8 function d2I5_dBx2(exx)
implicit none
REAL*8, intent(in) :: exx
end function
end interface
interface
REAL*8 function d2I5_dBxdBy(exy)
implicit none
REAL*8, intent(in) :: exy
end function
end interface
interface
REAL*8 function d2I5_dBxdBz(ezx)
implicit none
REAL*8, intent(in) :: ezx
end function
end interface
interface
REAL*8 function dI5_dBy(Bx, By, Bz, exy, eyy, eyz)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: By
REAL*8, intent(in) :: Bz
REAL*8, intent(in) :: exy
REAL*8, intent(in) :: eyy
REAL*8, intent(in) :: eyz
end function
end interface
interface
REAL*8 function d2I5_dBy2(eyy)
implicit none
REAL*8, intent(in) :: eyy
end function
end interface
interface
REAL*8 function d2I5_dBydBz(eyz)
implicit none
REAL*8, intent(in) :: eyz
end function
end interface
interface
REAL*8 function dI5_dBz(Bx, By, Bz, eyz, ezx, ezz)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: By
REAL*8, intent(in) :: Bz
REAL*8, intent(in) :: eyz
REAL*8, intent(in) :: ezx
REAL*8, intent(in) :: ezz
end function
end interface
interface
REAL*8 function d2I5_dBz2(ezz)
implicit none
REAL*8, intent(in) :: ezz
end function
end interface
interface
REAL*8 function dI5_dexx(Bx)
implicit none
REAL*8, intent(in) :: Bx
end function
end interface
interface
REAL*8 function d2I5_dBxdexx(Bx)
implicit none
REAL*8, intent(in) :: Bx
end function
end interface
interface
REAL*8 function dI5_dexy(Bx, By)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: By
end function
end interface
interface
REAL*8 function d2I5_dBxdexy(By)
implicit none
REAL*8, intent(in) :: By
end function
end interface
interface
REAL*8 function d2I5_dBydexy(Bx)
implicit none
REAL*8, intent(in) :: Bx
end function
end interface
interface
REAL*8 function dI5_deyy(By)
implicit none
REAL*8, intent(in) :: By
end function
end interface
interface
REAL*8 function d2I5_dBydeyy(By)
implicit none
REAL*8, intent(in) :: By
end function
end interface
interface
REAL*8 function dI5_deyz(By, Bz)
implicit none
REAL*8, intent(in) :: By
REAL*8, intent(in) :: Bz
end function
end interface
interface
REAL*8 function d2I5_dBydeyz(Bz)
implicit none
REAL*8, intent(in) :: Bz
end function
end interface
interface
REAL*8 function d2I5_dBzdeyz(By)
implicit none
REAL*8, intent(in) :: By
end function
end interface
interface
REAL*8 function dI5_dezx(Bx, Bz)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: Bz
end function
end interface
interface
REAL*8 function d2I5_dBxdezx(Bz)
implicit none
REAL*8, intent(in) :: Bz
end function
end interface
interface
REAL*8 function d2I5_dBzdezx(Bx)
implicit none
REAL*8, intent(in) :: Bx
end function
end interface
interface
REAL*8 function dI5_dezz(Bz)
implicit none
REAL*8, intent(in) :: Bz
end function
end interface
interface
REAL*8 function d2I5_dBzdezz(Bz)
implicit none
REAL*8, intent(in) :: Bz
end function
end interface
interface
REAL*8 function dI6_dBx(Bx, By, Bz, exx, exy, eyy, eyz, ezx, ezz)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: By
REAL*8, intent(in) :: Bz
REAL*8, intent(in) :: exx
REAL*8, intent(in) :: exy
REAL*8, intent(in) :: eyy
REAL*8, intent(in) :: eyz
REAL*8, intent(in) :: ezx
REAL*8, intent(in) :: ezz
end function
end interface
interface
REAL*8 function d2I6_dBx2(exx, exy, ezx)
implicit none
REAL*8, intent(in) :: exx
REAL*8, intent(in) :: exy
REAL*8, intent(in) :: ezx
end function
end interface
interface
REAL*8 function d2I6_dBxdBy(exx, exy, eyy, eyz, ezx)
implicit none
REAL*8, intent(in) :: exx
REAL*8, intent(in) :: exy
REAL*8, intent(in) :: eyy
REAL*8, intent(in) :: eyz
REAL*8, intent(in) :: ezx
end function
end interface
interface
REAL*8 function d2I6_dBxdBz(exx, exy, eyz, ezx, ezz)
implicit none
REAL*8, intent(in) :: exx
REAL*8, intent(in) :: exy
REAL*8, intent(in) :: eyz
REAL*8, intent(in) :: ezx
REAL*8, intent(in) :: ezz
end function
end interface
interface
REAL*8 function dI6_dBy(Bx, By, Bz, exx, exy, eyy, eyz, ezx, ezz)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: By
REAL*8, intent(in) :: Bz
REAL*8, intent(in) :: exx
REAL*8, intent(in) :: exy
REAL*8, intent(in) :: eyy
REAL*8, intent(in) :: eyz
REAL*8, intent(in) :: ezx
REAL*8, intent(in) :: ezz
end function
end interface
interface
REAL*8 function d2I6_dBy2(exy, eyy, eyz)
implicit none
REAL*8, intent(in) :: exy
REAL*8, intent(in) :: eyy
REAL*8, intent(in) :: eyz
end function
end interface
interface
REAL*8 function d2I6_dBydBz(exy, eyy, eyz, ezx, ezz)
implicit none
REAL*8, intent(in) :: exy
REAL*8, intent(in) :: eyy
REAL*8, intent(in) :: eyz
REAL*8, intent(in) :: ezx
REAL*8, intent(in) :: ezz
end function
end interface
interface
REAL*8 function dI6_dBz(Bx, By, Bz, exx, exy, eyy, eyz, ezx, ezz)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: By
REAL*8, intent(in) :: Bz
REAL*8, intent(in) :: exx
REAL*8, intent(in) :: exy
REAL*8, intent(in) :: eyy
REAL*8, intent(in) :: eyz
REAL*8, intent(in) :: ezx
REAL*8, intent(in) :: ezz
end function
end interface
interface
REAL*8 function d2I6_dBz2(eyz, ezx, ezz)
implicit none
REAL*8, intent(in) :: eyz
REAL*8, intent(in) :: ezx
REAL*8, intent(in) :: ezz
end function
end interface
interface
REAL*8 function dI6_dexx(Bx, By, Bz, exx, exy, ezx)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: By
REAL*8, intent(in) :: Bz
REAL*8, intent(in) :: exx
REAL*8, intent(in) :: exy
REAL*8, intent(in) :: ezx
end function
end interface
interface
REAL*8 function d2I6_dBxdexx(Bx, By, Bz, exx, exy, ezx)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: By
REAL*8, intent(in) :: Bz
REAL*8, intent(in) :: exx
REAL*8, intent(in) :: exy
REAL*8, intent(in) :: ezx
end function
end interface
interface
REAL*8 function d2I6_dBydexx(Bx, exy)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: exy
end function
end interface
interface
REAL*8 function d2I6_dBzdexx(Bx, ezx)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: ezx
end function
end interface
interface
REAL*8 function d2I6_dexx2(Bx)
implicit none
REAL*8, intent(in) :: Bx
end function
end interface
interface
REAL*8 function d2I6_dexxdexy(Bx, By)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: By
end function
end interface
interface
REAL*8 function d2I6_dexxdezx(Bx, Bz)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: Bz
end function
end interface
interface
REAL*8 function dI6_dexy(Bx, By, Bz, exx, exy, eyy, eyz, ezx)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: By
REAL*8, intent(in) :: Bz
REAL*8, intent(in) :: exx
REAL*8, intent(in) :: exy
REAL*8, intent(in) :: eyy
REAL*8, intent(in) :: eyz
REAL*8, intent(in) :: ezx
end function
end interface
interface
REAL*8 function d2I6_dBxdexy(Bx, By, Bz, exx, exy, eyy, eyz)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: By
REAL*8, intent(in) :: Bz
REAL*8, intent(in) :: exx
REAL*8, intent(in) :: exy
REAL*8, intent(in) :: eyy
REAL*8, intent(in) :: eyz
end function
end interface
interface
REAL*8 function d2I6_dBydexy(Bx, By, Bz, exx, exy, eyy, ezx)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: By
REAL*8, intent(in) :: Bz
REAL*8, intent(in) :: exx
REAL*8, intent(in) :: exy
REAL*8, intent(in) :: eyy
REAL*8, intent(in) :: ezx
end function
end interface
interface
REAL*8 function d2I6_dBzdexy(Bx, By, eyz, ezx)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: By
REAL*8, intent(in) :: eyz
REAL*8, intent(in) :: ezx
end function
end interface
interface
REAL*8 function d2I6_dexy2(Bx, By)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: By
end function
end interface
interface
REAL*8 function d2I6_dexydeyz(Bx, Bz)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: Bz
end function
end interface
interface
REAL*8 function dI6_deyy(Bx, By, Bz, exy, eyy, eyz)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: By
REAL*8, intent(in) :: Bz
REAL*8, intent(in) :: exy
REAL*8, intent(in) :: eyy
REAL*8, intent(in) :: eyz
end function
end interface
interface
REAL*8 function d2I6_dBxdeyy(By, exy)
implicit none
REAL*8, intent(in) :: By
REAL*8, intent(in) :: exy
end function
end interface
interface
REAL*8 function d2I6_dBydeyy(Bx, By, Bz, exy, eyy, eyz)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: By
REAL*8, intent(in) :: Bz
REAL*8, intent(in) :: exy
REAL*8, intent(in) :: eyy
REAL*8, intent(in) :: eyz
end function
end interface
interface
REAL*8 function d2I6_dBzdeyy(By, eyz)
implicit none
REAL*8, intent(in) :: By
REAL*8, intent(in) :: eyz
end function
end interface
interface
REAL*8 function d2I6_dexydeyy(Bx, By)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: By
end function
end interface
interface
REAL*8 function d2I6_deyy2(By)
implicit none
REAL*8, intent(in) :: By
end function
end interface
interface
REAL*8 function d2I6_deyydeyz(By, Bz)
implicit none
REAL*8, intent(in) :: By
REAL*8, intent(in) :: Bz
end function
end interface
interface
REAL*8 function dI6_deyz(Bx, By, Bz, exy, eyy, eyz, ezx, ezz)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: By
REAL*8, intent(in) :: Bz
REAL*8, intent(in) :: exy
REAL*8, intent(in) :: eyy
REAL*8, intent(in) :: eyz
REAL*8, intent(in) :: ezx
REAL*8, intent(in) :: ezz
end function
end interface
interface
REAL*8 function d2I6_dBxdeyz(By, Bz, exy, ezx)
implicit none
REAL*8, intent(in) :: By
REAL*8, intent(in) :: Bz
REAL*8, intent(in) :: exy
REAL*8, intent(in) :: ezx
end function
end interface
interface
REAL*8 function d2I6_dBydeyz(Bx, By, Bz, eyy, eyz, ezx, ezz)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: By
REAL*8, intent(in) :: Bz
REAL*8, intent(in) :: eyy
REAL*8, intent(in) :: eyz
REAL*8, intent(in) :: ezx
REAL*8, intent(in) :: ezz
end function
end interface
interface
REAL*8 function d2I6_dBzdeyz(Bx, By, Bz, exy, eyy, eyz, ezz)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: By
REAL*8, intent(in) :: Bz
REAL*8, intent(in) :: exy
REAL*8, intent(in) :: eyy
REAL*8, intent(in) :: eyz
REAL*8, intent(in) :: ezz
end function
end interface
interface
REAL*8 function d2I6_dexydeyz(Bx, Bz)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: Bz
end function
end interface
interface
REAL*8 function d2I6_deyz2(By, Bz)
implicit none
REAL*8, intent(in) :: By
REAL*8, intent(in) :: Bz
end function
end interface
interface
REAL*8 function d2I6_deyzdezx(Bx, By)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: By
end function
end interface
interface
REAL*8 function dI6_dezx(Bx, By, Bz, exx, exy, eyz, ezx, ezz)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: By
REAL*8, intent(in) :: Bz
REAL*8, intent(in) :: exx
REAL*8, intent(in) :: exy
REAL*8, intent(in) :: eyz
REAL*8, intent(in) :: ezx
REAL*8, intent(in) :: ezz
end function
end interface
interface
REAL*8 function d2I6_dBxdezx(Bx, By, Bz, exx, eyz, ezx, ezz)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: By
REAL*8, intent(in) :: Bz
REAL*8, intent(in) :: exx
REAL*8, intent(in) :: eyz
REAL*8, intent(in) :: ezx
REAL*8, intent(in) :: ezz
end function
end interface
interface
REAL*8 function d2I6_dBydezx(Bx, Bz, exy, eyz)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: Bz
REAL*8, intent(in) :: exy
REAL*8, intent(in) :: eyz
end function
end interface
interface
REAL*8 function d2I6_dBzdezx(Bx, By, Bz, exx, exy, ezx, ezz)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: By
REAL*8, intent(in) :: Bz
REAL*8, intent(in) :: exx
REAL*8, intent(in) :: exy
REAL*8, intent(in) :: ezx
REAL*8, intent(in) :: ezz
end function
end interface
interface
REAL*8 function d2I6_dexydezx(By, Bz)
implicit none
REAL*8, intent(in) :: By
REAL*8, intent(in) :: Bz
end function
end interface
interface
REAL*8 function d2I6_deyzdezx(Bx, By)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: By
end function
end interface
interface
REAL*8 function d2I6_dezx2(Bx, Bz)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: Bz
end function
end interface
interface
REAL*8 function d2I6_dezxdezz(Bx, Bz)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: Bz
end function
end interface
interface
REAL*8 function dI6_dezz(Bx, By, Bz, eyz, ezx, ezz)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: By
REAL*8, intent(in) :: Bz
REAL*8, intent(in) :: eyz
REAL*8, intent(in) :: ezx
REAL*8, intent(in) :: ezz
end function
end interface
interface
REAL*8 function d2I6_dBxdezz(Bz, ezx)
implicit none
REAL*8, intent(in) :: Bz
REAL*8, intent(in) :: ezx
end function
end interface
interface
REAL*8 function d2I6_dBydezz(Bz, eyz)
implicit none
REAL*8, intent(in) :: Bz
REAL*8, intent(in) :: eyz
end function
end interface
interface
REAL*8 function d2I6_dBzdezz(Bx, By, Bz, eyz, ezx, ezz)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: By
REAL*8, intent(in) :: Bz
REAL*8, intent(in) :: eyz
REAL*8, intent(in) :: ezx
REAL*8, intent(in) :: ezz
end function
end interface
interface
REAL*8 function d2I6_deyzdezz(By, Bz)
implicit none
REAL*8, intent(in) :: By
REAL*8, intent(in) :: Bz
end function
end interface
interface
REAL*8 function d2I6_dezxdezz(Bx, Bz)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: Bz
end function
end interface
interface
REAL*8 function d2I6_dezz2(Bz)
implicit none
REAL*8, intent(in) :: Bz
end function
end interface
interface
REAL*8 function du_dup(u0)
implicit none
REAL*8, intent(in) :: u0
end function
end interface
interface
REAL*8 function dup_dI4(I4)
implicit none
REAL*8, intent(in) :: I4
end function
end interface
interface
REAL*8 function d2up_dI42(I4)
implicit none
REAL*8, intent(in) :: I4
end function
end interface
interface
REAL*8 function dv_dvp(v0)
implicit none
REAL*8, intent(in) :: v0
end function
end interface
interface
REAL*8 function dvp_dI4(I4, I5)
implicit none
REAL*8, intent(in) :: I4
REAL*8, intent(in) :: I5
end function
end interface
interface
REAL*8 function d2vp_dI42(I4, I5)
implicit none
REAL*8, intent(in) :: I4
REAL*8, intent(in) :: I5
end function
end interface
interface
REAL*8 function dvp_dI5(I4)
implicit none
REAL*8, intent(in) :: I4
end function
end interface
interface
REAL*8 function d2vp_dI4dI5(I4)
implicit none
REAL*8, intent(in) :: I4
end function
end interface
interface
REAL*8 function dw_dwp(w0)
implicit none
REAL*8, intent(in) :: w0
end function
end interface
interface
REAL*8 function dwp_dI4(I4, I5, I6)
implicit none
REAL*8, intent(in) :: I4
REAL*8, intent(in) :: I5
REAL*8, intent(in) :: I6
end function
end interface
interface
REAL*8 function d2wp_dI42(I4, I5, I6)
implicit none
REAL*8, intent(in) :: I4
REAL*8, intent(in) :: I5
REAL*8, intent(in) :: I6
end function
end interface
interface
REAL*8 function dwp_dI5(I4, I5, I6)
implicit none
REAL*8, intent(in) :: I4
REAL*8, intent(in) :: I5
REAL*8, intent(in) :: I6
end function
end interface
interface
REAL*8 function d2wp_dI4dI5(I4, I5, I6)
implicit none
REAL*8, intent(in) :: I4
REAL*8, intent(in) :: I5
REAL*8, intent(in) :: I6
end function
end interface
interface
REAL*8 function d2wp_dI52(I4, I5, I6)
implicit none
REAL*8, intent(in) :: I4
REAL*8, intent(in) :: I5
REAL*8, intent(in) :: I6
end function
end interface
interface
REAL*8 function dwp_dI6(I4, I5, I6)
implicit none
REAL*8, intent(in) :: I4
REAL*8, intent(in) :: I5
REAL*8, intent(in) :: I6
end function
end interface
interface
REAL*8 function d2wp_dI4dI6(I4, I5, I6)
implicit none
REAL*8, intent(in) :: I4
REAL*8, intent(in) :: I5
REAL*8, intent(in) :: I6
end function
end interface
interface
REAL*8 function d2wp_dI5dI6(I4, I5, I6)
implicit none
REAL*8, intent(in) :: I4
REAL*8, intent(in) :: I5
REAL*8, intent(in) :: I6
end function
end interface
interface
REAL*8 function d2wp_dI62(I4, I5, I6)
implicit none
REAL*8, intent(in) :: I4
REAL*8, intent(in) :: I5
REAL*8, intent(in) :: I6
end function
end interface
interface
REAL*8 function dphi_dBx(dI4_dBx, dI5_dBx, dI6_dBx, du_dup, dup_dI4, dv_dvp, &
dvp_dI4, dvp_dI5, dw_dwp, dwp_dI4, dwp_dI5, dwp_dI6, dphi_du, &
dphi_dv, dphi_dw)
implicit none
REAL*8, intent(in) :: dI4_dBx
REAL*8, intent(in) :: dI5_dBx
REAL*8, intent(in) :: dI6_dBx
REAL*8, intent(in) :: du_dup
REAL*8, intent(in) :: dup_dI4
REAL*8, intent(in) :: dv_dvp
REAL*8, intent(in) :: dvp_dI4
REAL*8, intent(in) :: dvp_dI5
REAL*8, intent(in) :: dw_dwp
REAL*8, intent(in) :: dwp_dI4
REAL*8, intent(in) :: dwp_dI5
REAL*8, intent(in) :: dwp_dI6
REAL*8, intent(in) :: dphi_du
REAL*8, intent(in) :: dphi_dv
REAL*8, intent(in) :: dphi_dw
end function
end interface
interface
REAL*8 function d2phi_dBx2(d2I4_dBx2, d2I5_dBx2, d2I6_dBx2, d2up_dI42, &
d2vp_dI42, d2vp_dI4dI5, d2wp_dI42, d2wp_dI4dI5, d2wp_dI4dI6, &
d2wp_dI52, d2wp_dI5dI6, d2wp_dI62, d2phi_du2, d2phi_dudv, &
d2phi_dudw, d2phi_dv2, d2phi_dvdw, d2phi_dw2, dI4_dBx, dI5_dBx, &
dI6_dBx, du_dup, dup_dI4, dv_dvp, dvp_dI4, dvp_dI5, dw_dwp, &
dwp_dI4, dwp_dI5, dwp_dI6, dphi_du, dphi_dv, dphi_dw)
implicit none
REAL*8, intent(in) :: d2I4_dBx2
REAL*8, intent(in) :: d2I5_dBx2
REAL*8, intent(in) :: d2I6_dBx2
REAL*8, intent(in) :: d2up_dI42
REAL*8, intent(in) :: d2vp_dI42
REAL*8, intent(in) :: d2vp_dI4dI5
REAL*8, intent(in) :: d2wp_dI42
REAL*8, intent(in) :: d2wp_dI4dI5
REAL*8, intent(in) :: d2wp_dI4dI6
REAL*8, intent(in) :: d2wp_dI52
REAL*8, intent(in) :: d2wp_dI5dI6
REAL*8, intent(in) :: d2wp_dI62
REAL*8, intent(in) :: d2phi_du2
REAL*8, intent(in) :: d2phi_dudv
REAL*8, intent(in) :: d2phi_dudw
REAL*8, intent(in) :: d2phi_dv2
REAL*8, intent(in) :: d2phi_dvdw
REAL*8, intent(in) :: d2phi_dw2
REAL*8, intent(in) :: dI4_dBx
REAL*8, intent(in) :: dI5_dBx
REAL*8, intent(in) :: dI6_dBx
REAL*8, intent(in) :: du_dup
REAL*8, intent(in) :: dup_dI4
REAL*8, intent(in) :: dv_dvp
REAL*8, intent(in) :: dvp_dI4
REAL*8, intent(in) :: dvp_dI5
REAL*8, intent(in) :: dw_dwp
REAL*8, intent(in) :: dwp_dI4
REAL*8, intent(in) :: dwp_dI5
REAL*8, intent(in) :: dwp_dI6
REAL*8, intent(in) :: dphi_du
REAL*8, intent(in) :: dphi_dv
REAL*8, intent(in) :: dphi_dw
end function
end interface
interface
REAL*8 function d2phi_dBxdBy(d2I5_dBxdBy, d2I6_dBxdBy, d2up_dI42, d2vp_dI42, &
d2vp_dI4dI5, d2wp_dI42, d2wp_dI4dI5, d2wp_dI4dI6, d2wp_dI52, &
d2wp_dI5dI6, d2wp_dI62, d2phi_du2, d2phi_dudv, d2phi_dudw, &
d2phi_dv2, d2phi_dvdw, d2phi_dw2, dI4_dBx, dI4_dBy, dI5_dBx, &
dI5_dBy, dI6_dBx, dI6_dBy, du_dup, dup_dI4, dv_dvp, dvp_dI4, &
dvp_dI5, dw_dwp, dwp_dI4, dwp_dI5, dwp_dI6, dphi_du, dphi_dv, &
dphi_dw)
implicit none
REAL*8, intent(in) :: d2I5_dBxdBy
REAL*8, intent(in) :: d2I6_dBxdBy
REAL*8, intent(in) :: d2up_dI42
REAL*8, intent(in) :: d2vp_dI42
REAL*8, intent(in) :: d2vp_dI4dI5
REAL*8, intent(in) :: d2wp_dI42
REAL*8, intent(in) :: d2wp_dI4dI5
REAL*8, intent(in) :: d2wp_dI4dI6
REAL*8, intent(in) :: d2wp_dI52
REAL*8, intent(in) :: d2wp_dI5dI6
REAL*8, intent(in) :: d2wp_dI62
REAL*8, intent(in) :: d2phi_du2
REAL*8, intent(in) :: d2phi_dudv
REAL*8, intent(in) :: d2phi_dudw
REAL*8, intent(in) :: d2phi_dv2
REAL*8, intent(in) :: d2phi_dvdw
REAL*8, intent(in) :: d2phi_dw2
REAL*8, intent(in) :: dI4_dBx
REAL*8, intent(in) :: dI4_dBy
REAL*8, intent(in) :: dI5_dBx
REAL*8, intent(in) :: dI5_dBy
REAL*8, intent(in) :: dI6_dBx
REAL*8, intent(in) :: dI6_dBy
REAL*8, intent(in) :: du_dup
REAL*8, intent(in) :: dup_dI4
REAL*8, intent(in) :: dv_dvp
REAL*8, intent(in) :: dvp_dI4
REAL*8, intent(in) :: dvp_dI5
REAL*8, intent(in) :: dw_dwp
REAL*8, intent(in) :: dwp_dI4
REAL*8, intent(in) :: dwp_dI5
REAL*8, intent(in) :: dwp_dI6
REAL*8, intent(in) :: dphi_du
REAL*8, intent(in) :: dphi_dv
REAL*8, intent(in) :: dphi_dw
end function
end interface
interface
REAL*8 function d2phi_dBxdBz(d2I5_dBxdBz, d2I6_dBxdBz, d2up_dI42, d2vp_dI42, &
d2vp_dI4dI5, d2wp_dI42, d2wp_dI4dI5, d2wp_dI4dI6, d2wp_dI52, &
d2wp_dI5dI6, d2wp_dI62, d2phi_du2, d2phi_dudv, d2phi_dudw, &
d2phi_dv2, d2phi_dvdw, d2phi_dw2, dI4_dBx, dI4_dBz, dI5_dBx, &
dI5_dBz, dI6_dBx, dI6_dBz, du_dup, dup_dI4, dv_dvp, dvp_dI4, &
dvp_dI5, dw_dwp, dwp_dI4, dwp_dI5, dwp_dI6, dphi_du, dphi_dv, &
dphi_dw)
implicit none
REAL*8, intent(in) :: d2I5_dBxdBz
REAL*8, intent(in) :: d2I6_dBxdBz
REAL*8, intent(in) :: d2up_dI42
REAL*8, intent(in) :: d2vp_dI42
REAL*8, intent(in) :: d2vp_dI4dI5
REAL*8, intent(in) :: d2wp_dI42
REAL*8, intent(in) :: d2wp_dI4dI5
REAL*8, intent(in) :: d2wp_dI4dI6
REAL*8, intent(in) :: d2wp_dI52
REAL*8, intent(in) :: d2wp_dI5dI6
REAL*8, intent(in) :: d2wp_dI62
REAL*8, intent(in) :: d2phi_du2
REAL*8, intent(in) :: d2phi_dudv
REAL*8, intent(in) :: d2phi_dudw
REAL*8, intent(in) :: d2phi_dv2
REAL*8, intent(in) :: d2phi_dvdw
REAL*8, intent(in) :: d2phi_dw2
REAL*8, intent(in) :: dI4_dBx
REAL*8, intent(in) :: dI4_dBz
REAL*8, intent(in) :: dI5_dBx
REAL*8, intent(in) :: dI5_dBz
REAL*8, intent(in) :: dI6_dBx
REAL*8, intent(in) :: dI6_dBz
REAL*8, intent(in) :: du_dup
REAL*8, intent(in) :: dup_dI4
REAL*8, intent(in) :: dv_dvp
REAL*8, intent(in) :: dvp_dI4
REAL*8, intent(in) :: dvp_dI5
REAL*8, intent(in) :: dw_dwp
REAL*8, intent(in) :: dwp_dI4
REAL*8, intent(in) :: dwp_dI5
REAL*8, intent(in) :: dwp_dI6
REAL*8, intent(in) :: dphi_du
REAL*8, intent(in) :: dphi_dv
REAL*8, intent(in) :: dphi_dw
end function
end interface
interface
REAL*8 function d2phi_dBxdepsxx(d2I5_dBxdexx, d2I6_dBxdexx, d2I6_dBxdeyy, &
d2I6_dBxdezz, d2vp_dI4dI5, d2wp_dI4dI5, d2wp_dI4dI6, &
d2wp_dI52, d2wp_dI5dI6, d2wp_dI62, d2phi_dudv, d2phi_dudw, &
d2phi_dv2, d2phi_dvdw, d2phi_dw2, dI4_dBx, dI5_dBx, dI5_dexx, &
dI5_deyy, dI5_dezz, dI6_dBx, dI6_dexx, dI6_deyy, dI6_dezz, &
dexx_depsxx, deyy_depsxx, dezz_depsxx, du_dup, dup_dI4, dv_dvp, &
dvp_dI4, dvp_dI5, dw_dwp, dwp_dI4, dwp_dI5, dwp_dI6, dphi_dv, &
dphi_dw)
implicit none
REAL*8, intent(in) :: d2I5_dBxdexx
REAL*8, intent(in) :: d2I6_dBxdexx
REAL*8, intent(in) :: d2I6_dBxdeyy
REAL*8, intent(in) :: d2I6_dBxdezz
REAL*8, intent(in) :: d2vp_dI4dI5
REAL*8, intent(in) :: d2wp_dI4dI5
REAL*8, intent(in) :: d2wp_dI4dI6
REAL*8, intent(in) :: d2wp_dI52
REAL*8, intent(in) :: d2wp_dI5dI6
REAL*8, intent(in) :: d2wp_dI62
REAL*8, intent(in) :: d2phi_dudv
REAL*8, intent(in) :: d2phi_dudw
REAL*8, intent(in) :: d2phi_dv2
REAL*8, intent(in) :: d2phi_dvdw
REAL*8, intent(in) :: d2phi_dw2
REAL*8, intent(in) :: dI4_dBx
REAL*8, intent(in) :: dI5_dBx
REAL*8, intent(in) :: dI5_dexx
REAL*8, intent(in) :: dI5_deyy
REAL*8, intent(in) :: dI5_dezz
REAL*8, intent(in) :: dI6_dBx
REAL*8, intent(in) :: dI6_dexx
REAL*8, intent(in) :: dI6_deyy
REAL*8, intent(in) :: dI6_dezz
REAL*8, intent(in) :: dexx_depsxx
REAL*8, intent(in) :: deyy_depsxx
REAL*8, intent(in) :: dezz_depsxx
REAL*8, intent(in) :: du_dup
REAL*8, intent(in) :: dup_dI4
REAL*8, intent(in) :: dv_dvp
REAL*8, intent(in) :: dvp_dI4
REAL*8, intent(in) :: dvp_dI5
REAL*8, intent(in) :: dw_dwp
REAL*8, intent(in) :: dwp_dI4
REAL*8, intent(in) :: dwp_dI5
REAL*8, intent(in) :: dwp_dI6
REAL*8, intent(in) :: dphi_dv
REAL*8, intent(in) :: dphi_dw
end function
end interface
interface
REAL*8 function d2phi_dBxdepsxy(d2I5_dBxdexy, d2I6_dBxdexy, d2vp_dI4dI5, &
d2wp_dI4dI5, d2wp_dI4dI6, d2wp_dI52, d2wp_dI5dI6, d2wp_dI62, &
d2phi_dudv, d2phi_dudw, d2phi_dv2, d2phi_dvdw, d2phi_dw2, dI4_dBx, &
dI5_dBx, dI5_dexy, dI6_dBx, dI6_dexy, dexy_depsxy, du_dup, &
dup_dI4, dv_dvp, dvp_dI4, dvp_dI5, dw_dwp, dwp_dI4, dwp_dI5, &
dwp_dI6, dphi_dv, dphi_dw)
implicit none
REAL*8, intent(in) :: d2I5_dBxdexy
REAL*8, intent(in) :: d2I6_dBxdexy
REAL*8, intent(in) :: d2vp_dI4dI5
REAL*8, intent(in) :: d2wp_dI4dI5
REAL*8, intent(in) :: d2wp_dI4dI6
REAL*8, intent(in) :: d2wp_dI52
REAL*8, intent(in) :: d2wp_dI5dI6
REAL*8, intent(in) :: d2wp_dI62
REAL*8, intent(in) :: d2phi_dudv
REAL*8, intent(in) :: d2phi_dudw
REAL*8, intent(in) :: d2phi_dv2
REAL*8, intent(in) :: d2phi_dvdw
REAL*8, intent(in) :: d2phi_dw2
REAL*8, intent(in) :: dI4_dBx
REAL*8, intent(in) :: dI5_dBx
REAL*8, intent(in) :: dI5_dexy
REAL*8, intent(in) :: dI6_dBx
REAL*8, intent(in) :: dI6_dexy
REAL*8, intent(in) :: dexy_depsxy
REAL*8, intent(in) :: du_dup
REAL*8, intent(in) :: dup_dI4
REAL*8, intent(in) :: dv_dvp
REAL*8, intent(in) :: dvp_dI4
REAL*8, intent(in) :: dvp_dI5
REAL*8, intent(in) :: dw_dwp
REAL*8, intent(in) :: dwp_dI4
REAL*8, intent(in) :: dwp_dI5
REAL*8, intent(in) :: dwp_dI6
REAL*8, intent(in) :: dphi_dv
REAL*8, intent(in) :: dphi_dw
end function
end interface
interface
REAL*8 function d2phi_dBxdepsyy(d2I5_dBxdexx, d2I6_dBxdexx, d2I6_dBxdeyy, &
d2I6_dBxdezz, d2vp_dI4dI5, d2wp_dI4dI5, d2wp_dI4dI6, &
d2wp_dI52, d2wp_dI5dI6, d2wp_dI62, d2phi_dudv, d2phi_dudw, &
d2phi_dv2, d2phi_dvdw, d2phi_dw2, dI4_dBx, dI5_dBx, dI5_dexx, &
dI5_deyy, dI5_dezz, dI6_dBx, dI6_dexx, dI6_deyy, dI6_dezz, &
dexx_depsyy, deyy_depsyy, dezz_depsyy, du_dup, dup_dI4, dv_dvp, &
dvp_dI4, dvp_dI5, dw_dwp, dwp_dI4, dwp_dI5, dwp_dI6, dphi_dv, &
dphi_dw)
implicit none
REAL*8, intent(in) :: d2I5_dBxdexx
REAL*8, intent(in) :: d2I6_dBxdexx
REAL*8, intent(in) :: d2I6_dBxdeyy
REAL*8, intent(in) :: d2I6_dBxdezz
REAL*8, intent(in) :: d2vp_dI4dI5
REAL*8, intent(in) :: d2wp_dI4dI5
REAL*8, intent(in) :: d2wp_dI4dI6
REAL*8, intent(in) :: d2wp_dI52
REAL*8, intent(in) :: d2wp_dI5dI6
REAL*8, intent(in) :: d2wp_dI62
REAL*8, intent(in) :: d2phi_dudv
REAL*8, intent(in) :: d2phi_dudw
REAL*8, intent(in) :: d2phi_dv2
REAL*8, intent(in) :: d2phi_dvdw
REAL*8, intent(in) :: d2phi_dw2
REAL*8, intent(in) :: dI4_dBx
REAL*8, intent(in) :: dI5_dBx
REAL*8, intent(in) :: dI5_dexx
REAL*8, intent(in) :: dI5_deyy
REAL*8, intent(in) :: dI5_dezz
REAL*8, intent(in) :: dI6_dBx
REAL*8, intent(in) :: dI6_dexx
REAL*8, intent(in) :: dI6_deyy
REAL*8, intent(in) :: dI6_dezz
REAL*8, intent(in) :: dexx_depsyy
REAL*8, intent(in) :: deyy_depsyy
REAL*8, intent(in) :: dezz_depsyy
REAL*8, intent(in) :: du_dup
REAL*8, intent(in) :: dup_dI4
REAL*8, intent(in) :: dv_dvp
REAL*8, intent(in) :: dvp_dI4
REAL*8, intent(in) :: dvp_dI5
REAL*8, intent(in) :: dw_dwp
REAL*8, intent(in) :: dwp_dI4
REAL*8, intent(in) :: dwp_dI5
REAL*8, intent(in) :: dwp_dI6
REAL*8, intent(in) :: dphi_dv
REAL*8, intent(in) :: dphi_dw
end function
end interface
interface
REAL*8 function d2phi_dBxdepsyz(d2I6_dBxdeyz, d2vp_dI4dI5, d2wp_dI4dI5, &
d2wp_dI4dI6, d2wp_dI52, d2wp_dI5dI6, d2wp_dI62, d2phi_dudv, &
d2phi_dudw, d2phi_dv2, d2phi_dvdw, d2phi_dw2, dI4_dBx, dI5_dBx, &
dI5_deyz, dI6_dBx, dI6_deyz, deyz_depsyz, du_dup, dup_dI4, &
dv_dvp, dvp_dI4, dvp_dI5, dw_dwp, dwp_dI4, dwp_dI5, dwp_dI6, &
dphi_dv, dphi_dw)
implicit none
REAL*8, intent(in) :: d2I6_dBxdeyz
REAL*8, intent(in) :: d2vp_dI4dI5
REAL*8, intent(in) :: d2wp_dI4dI5
REAL*8, intent(in) :: d2wp_dI4dI6
REAL*8, intent(in) :: d2wp_dI52
REAL*8, intent(in) :: d2wp_dI5dI6
REAL*8, intent(in) :: d2wp_dI62
REAL*8, intent(in) :: d2phi_dudv
REAL*8, intent(in) :: d2phi_dudw
REAL*8, intent(in) :: d2phi_dv2
REAL*8, intent(in) :: d2phi_dvdw
REAL*8, intent(in) :: d2phi_dw2
REAL*8, intent(in) :: dI4_dBx
REAL*8, intent(in) :: dI5_dBx
REAL*8, intent(in) :: dI5_deyz
REAL*8, intent(in) :: dI6_dBx
REAL*8, intent(in) :: dI6_deyz
REAL*8, intent(in) :: deyz_depsyz
REAL*8, intent(in) :: du_dup
REAL*8, intent(in) :: dup_dI4
REAL*8, intent(in) :: dv_dvp
REAL*8, intent(in) :: dvp_dI4
REAL*8, intent(in) :: dvp_dI5
REAL*8, intent(in) :: dw_dwp
REAL*8, intent(in) :: dwp_dI4
REAL*8, intent(in) :: dwp_dI5
REAL*8, intent(in) :: dwp_dI6
REAL*8, intent(in) :: dphi_dv
REAL*8, intent(in) :: dphi_dw
end function
end interface
interface
REAL*8 function d2phi_dBxdepszx(d2I5_dBxdezx, d2I6_dBxdezx, d2vp_dI4dI5, &
d2wp_dI4dI5, d2wp_dI4dI6, d2wp_dI52, d2wp_dI5dI6, d2wp_dI62, &
d2phi_dudv, d2phi_dudw, d2phi_dv2, d2phi_dvdw, d2phi_dw2, dI4_dBx, &
dI5_dBx, dI5_dezx, dI6_dBx, dI6_dezx, dezx_depszx, du_dup, &
dup_dI4, dv_dvp, dvp_dI4, dvp_dI5, dw_dwp, dwp_dI4, dwp_dI5, &
dwp_dI6, dphi_dv, dphi_dw)
implicit none
REAL*8, intent(in) :: d2I5_dBxdezx
REAL*8, intent(in) :: d2I6_dBxdezx
REAL*8, intent(in) :: d2vp_dI4dI5
REAL*8, intent(in) :: d2wp_dI4dI5
REAL*8, intent(in) :: d2wp_dI4dI6
REAL*8, intent(in) :: d2wp_dI52
REAL*8, intent(in) :: d2wp_dI5dI6
REAL*8, intent(in) :: d2wp_dI62
REAL*8, intent(in) :: d2phi_dudv
REAL*8, intent(in) :: d2phi_dudw
REAL*8, intent(in) :: d2phi_dv2
REAL*8, intent(in) :: d2phi_dvdw
REAL*8, intent(in) :: d2phi_dw2
REAL*8, intent(in) :: dI4_dBx
REAL*8, intent(in) :: dI5_dBx
REAL*8, intent(in) :: dI5_dezx
REAL*8, intent(in) :: dI6_dBx
REAL*8, intent(in) :: dI6_dezx
REAL*8, intent(in) :: dezx_depszx
REAL*8, intent(in) :: du_dup
REAL*8, intent(in) :: dup_dI4
REAL*8, intent(in) :: dv_dvp
REAL*8, intent(in) :: dvp_dI4
REAL*8, intent(in) :: dvp_dI5
REAL*8, intent(in) :: dw_dwp
REAL*8, intent(in) :: dwp_dI4
REAL*8, intent(in) :: dwp_dI5
REAL*8, intent(in) :: dwp_dI6
REAL*8, intent(in) :: dphi_dv
REAL*8, intent(in) :: dphi_dw
end function
end interface
interface
REAL*8 function d2phi_dBxdepszz(d2I5_dBxdexx, d2I6_dBxdexx, d2I6_dBxdeyy, &
d2I6_dBxdezz, d2vp_dI4dI5, d2wp_dI4dI5, d2wp_dI4dI6, &
d2wp_dI52, d2wp_dI5dI6, d2wp_dI62, d2phi_dudv, d2phi_dudw, &
d2phi_dv2, d2phi_dvdw, d2phi_dw2, dI4_dBx, dI5_dBx, dI5_dexx, &
dI5_deyy, dI5_dezz, dI6_dBx, dI6_dexx, dI6_deyy, dI6_dezz, &
dexx_depszz, deyy_depszz, dezz_depszz, du_dup, dup_dI4, dv_dvp, &
dvp_dI4, dvp_dI5, dw_dwp, dwp_dI4, dwp_dI5, dwp_dI6, dphi_dv, &
dphi_dw)
implicit none
REAL*8, intent(in) :: d2I5_dBxdexx
REAL*8, intent(in) :: d2I6_dBxdexx
REAL*8, intent(in) :: d2I6_dBxdeyy
REAL*8, intent(in) :: d2I6_dBxdezz
REAL*8, intent(in) :: d2vp_dI4dI5
REAL*8, intent(in) :: d2wp_dI4dI5
REAL*8, intent(in) :: d2wp_dI4dI6
REAL*8, intent(in) :: d2wp_dI52
REAL*8, intent(in) :: d2wp_dI5dI6
REAL*8, intent(in) :: d2wp_dI62
REAL*8, intent(in) :: d2phi_dudv
REAL*8, intent(in) :: d2phi_dudw
REAL*8, intent(in) :: d2phi_dv2
REAL*8, intent(in) :: d2phi_dvdw
REAL*8, intent(in) :: d2phi_dw2
REAL*8, intent(in) :: dI4_dBx
REAL*8, intent(in) :: dI5_dBx
REAL*8, intent(in) :: dI5_dexx
REAL*8, intent(in) :: dI5_deyy
REAL*8, intent(in) :: dI5_dezz
REAL*8, intent(in) :: dI6_dBx
REAL*8, intent(in) :: dI6_dexx
REAL*8, intent(in) :: dI6_deyy
REAL*8, intent(in) :: dI6_dezz
REAL*8, intent(in) :: dexx_depszz
REAL*8, intent(in) :: deyy_depszz
REAL*8, intent(in) :: dezz_depszz
REAL*8, intent(in) :: du_dup
REAL*8, intent(in) :: dup_dI4
REAL*8, intent(in) :: dv_dvp
REAL*8, intent(in) :: dvp_dI4
REAL*8, intent(in) :: dvp_dI5
REAL*8, intent(in) :: dw_dwp
REAL*8, intent(in) :: dwp_dI4
REAL*8, intent(in) :: dwp_dI5
REAL*8, intent(in) :: dwp_dI6
REAL*8, intent(in) :: dphi_dv
REAL*8, intent(in) :: dphi_dw
end function
end interface
interface
REAL*8 function dphi_dBy(dI4_dBy, dI5_dBy, dI6_dBy, du_dup, dup_dI4, dv_dvp, &
dvp_dI4, dvp_dI5, dw_dwp, dwp_dI4, dwp_dI5, dwp_dI6, dphi_du, &
dphi_dv, dphi_dw)
implicit none
REAL*8, intent(in) :: dI4_dBy
REAL*8, intent(in) :: dI5_dBy
REAL*8, intent(in) :: dI6_dBy
REAL*8, intent(in) :: du_dup
REAL*8, intent(in) :: dup_dI4
REAL*8, intent(in) :: dv_dvp
REAL*8, intent(in) :: dvp_dI4
REAL*8, intent(in) :: dvp_dI5
REAL*8, intent(in) :: dw_dwp
REAL*8, intent(in) :: dwp_dI4
REAL*8, intent(in) :: dwp_dI5
REAL*8, intent(in) :: dwp_dI6
REAL*8, intent(in) :: dphi_du
REAL*8, intent(in) :: dphi_dv
REAL*8, intent(in) :: dphi_dw
end function
end interface
interface
REAL*8 function d2phi_dBy2(d2I4_dBy2, d2I5_dBy2, d2I6_dBy2, d2up_dI42, &
d2vp_dI42, d2vp_dI4dI5, d2wp_dI42, d2wp_dI4dI5, d2wp_dI4dI6, &
d2wp_dI52, d2wp_dI5dI6, d2wp_dI62, d2phi_du2, d2phi_dudv, &
d2phi_dudw, d2phi_dv2, d2phi_dvdw, d2phi_dw2, dI4_dBy, dI5_dBy, &
dI6_dBy, du_dup, dup_dI4, dv_dvp, dvp_dI4, dvp_dI5, dw_dwp, &
dwp_dI4, dwp_dI5, dwp_dI6, dphi_du, dphi_dv, dphi_dw)
implicit none
REAL*8, intent(in) :: d2I4_dBy2
REAL*8, intent(in) :: d2I5_dBy2
REAL*8, intent(in) :: d2I6_dBy2
REAL*8, intent(in) :: d2up_dI42
REAL*8, intent(in) :: d2vp_dI42
REAL*8, intent(in) :: d2vp_dI4dI5
REAL*8, intent(in) :: d2wp_dI42
REAL*8, intent(in) :: d2wp_dI4dI5
REAL*8, intent(in) :: d2wp_dI4dI6
REAL*8, intent(in) :: d2wp_dI52
REAL*8, intent(in) :: d2wp_dI5dI6
REAL*8, intent(in) :: d2wp_dI62
REAL*8, intent(in) :: d2phi_du2
REAL*8, intent(in) :: d2phi_dudv
REAL*8, intent(in) :: d2phi_dudw
REAL*8, intent(in) :: d2phi_dv2
REAL*8, intent(in) :: d2phi_dvdw
REAL*8, intent(in) :: d2phi_dw2
REAL*8, intent(in) :: dI4_dBy
REAL*8, intent(in) :: dI5_dBy
REAL*8, intent(in) :: dI6_dBy
REAL*8, intent(in) :: du_dup
REAL*8, intent(in) :: dup_dI4
REAL*8, intent(in) :: dv_dvp
REAL*8, intent(in) :: dvp_dI4
REAL*8, intent(in) :: dvp_dI5
REAL*8, intent(in) :: dw_dwp
REAL*8, intent(in) :: dwp_dI4
REAL*8, intent(in) :: dwp_dI5
REAL*8, intent(in) :: dwp_dI6
REAL*8, intent(in) :: dphi_du
REAL*8, intent(in) :: dphi_dv
REAL*8, intent(in) :: dphi_dw
end function
end interface
interface
REAL*8 function d2phi_dBydBz(d2I5_dBydBz, d2I6_dBydBz, d2up_dI42, d2vp_dI42, &
d2vp_dI4dI5, d2wp_dI42, d2wp_dI4dI5, d2wp_dI4dI6, d2wp_dI52, &
d2wp_dI5dI6, d2wp_dI62, d2phi_du2, d2phi_dudv, d2phi_dudw, &
d2phi_dv2, d2phi_dvdw, d2phi_dw2, dI4_dBy, dI4_dBz, dI5_dBy, &
dI5_dBz, dI6_dBy, dI6_dBz, du_dup, dup_dI4, dv_dvp, dvp_dI4, &
dvp_dI5, dw_dwp, dwp_dI4, dwp_dI5, dwp_dI6, dphi_du, dphi_dv, &
dphi_dw)
implicit none
REAL*8, intent(in) :: d2I5_dBydBz
REAL*8, intent(in) :: d2I6_dBydBz
REAL*8, intent(in) :: d2up_dI42
REAL*8, intent(in) :: d2vp_dI42
REAL*8, intent(in) :: d2vp_dI4dI5
REAL*8, intent(in) :: d2wp_dI42
REAL*8, intent(in) :: d2wp_dI4dI5
REAL*8, intent(in) :: d2wp_dI4dI6
REAL*8, intent(in) :: d2wp_dI52
REAL*8, intent(in) :: d2wp_dI5dI6
REAL*8, intent(in) :: d2wp_dI62
REAL*8, intent(in) :: d2phi_du2
REAL*8, intent(in) :: d2phi_dudv
REAL*8, intent(in) :: d2phi_dudw
REAL*8, intent(in) :: d2phi_dv2
REAL*8, intent(in) :: d2phi_dvdw
REAL*8, intent(in) :: d2phi_dw2
REAL*8, intent(in) :: dI4_dBy
REAL*8, intent(in) :: dI4_dBz
REAL*8, intent(in) :: dI5_dBy
REAL*8, intent(in) :: dI5_dBz
REAL*8, intent(in) :: dI6_dBy
REAL*8, intent(in) :: dI6_dBz
REAL*8, intent(in) :: du_dup
REAL*8, intent(in) :: dup_dI4
REAL*8, intent(in) :: dv_dvp
REAL*8, intent(in) :: dvp_dI4
REAL*8, intent(in) :: dvp_dI5
REAL*8, intent(in) :: dw_dwp
REAL*8, intent(in) :: dwp_dI4
REAL*8, intent(in) :: dwp_dI5
REAL*8, intent(in) :: dwp_dI6
REAL*8, intent(in) :: dphi_du
REAL*8, intent(in) :: dphi_dv
REAL*8, intent(in) :: dphi_dw
end function
end interface
interface
REAL*8 function d2phi_dBydepsxx(d2I5_dBydeyy, d2I6_dBydexx, d2I6_dBydeyy, &
d2I6_dBydezz, d2vp_dI4dI5, d2wp_dI4dI5, d2wp_dI4dI6, &
d2wp_dI52, d2wp_dI5dI6, d2wp_dI62, d2phi_dudv, d2phi_dudw, &
d2phi_dv2, d2phi_dvdw, d2phi_dw2, dI4_dBy, dI5_dBy, dI5_dexx, &
dI5_deyy, dI5_dezz, dI6_dBy, dI6_dexx, dI6_deyy, dI6_dezz, &
dexx_depsxx, deyy_depsxx, dezz_depsxx, du_dup, dup_dI4, dv_dvp, &
dvp_dI4, dvp_dI5, dw_dwp, dwp_dI4, dwp_dI5, dwp_dI6, dphi_dv, &
dphi_dw)
implicit none
REAL*8, intent(in) :: d2I5_dBydeyy
REAL*8, intent(in) :: d2I6_dBydexx
REAL*8, intent(in) :: d2I6_dBydeyy
REAL*8, intent(in) :: d2I6_dBydezz
REAL*8, intent(in) :: d2vp_dI4dI5
REAL*8, intent(in) :: d2wp_dI4dI5
REAL*8, intent(in) :: d2wp_dI4dI6
REAL*8, intent(in) :: d2wp_dI52
REAL*8, intent(in) :: d2wp_dI5dI6
REAL*8, intent(in) :: d2wp_dI62
REAL*8, intent(in) :: d2phi_dudv
REAL*8, intent(in) :: d2phi_dudw
REAL*8, intent(in) :: d2phi_dv2
REAL*8, intent(in) :: d2phi_dvdw
REAL*8, intent(in) :: d2phi_dw2
REAL*8, intent(in) :: dI4_dBy
REAL*8, intent(in) :: dI5_dBy
REAL*8, intent(in) :: dI5_dexx
REAL*8, intent(in) :: dI5_deyy
REAL*8, intent(in) :: dI5_dezz
REAL*8, intent(in) :: dI6_dBy
REAL*8, intent(in) :: dI6_dexx
REAL*8, intent(in) :: dI6_deyy
REAL*8, intent(in) :: dI6_dezz
REAL*8, intent(in) :: dexx_depsxx
REAL*8, intent(in) :: deyy_depsxx
REAL*8, intent(in) :: dezz_depsxx
REAL*8, intent(in) :: du_dup
REAL*8, intent(in) :: dup_dI4
REAL*8, intent(in) :: dv_dvp
REAL*8, intent(in) :: dvp_dI4
REAL*8, intent(in) :: dvp_dI5
REAL*8, intent(in) :: dw_dwp
REAL*8, intent(in) :: dwp_dI4
REAL*8, intent(in) :: dwp_dI5
REAL*8, intent(in) :: dwp_dI6
REAL*8, intent(in) :: dphi_dv
REAL*8, intent(in) :: dphi_dw
end function
end interface
interface
REAL*8 function d2phi_dBydepsxy(d2I5_dBydexy, d2I6_dBydexy, d2vp_dI4dI5, &
d2wp_dI4dI5, d2wp_dI4dI6, d2wp_dI52, d2wp_dI5dI6, d2wp_dI62, &
d2phi_dudv, d2phi_dudw, d2phi_dv2, d2phi_dvdw, d2phi_dw2, dI4_dBy, &
dI5_dBy, dI5_dexy, dI6_dBy, dI6_dexy, dexy_depsxy, du_dup, &
dup_dI4, dv_dvp, dvp_dI4, dvp_dI5, dw_dwp, dwp_dI4, dwp_dI5, &
dwp_dI6, dphi_dv, dphi_dw)
implicit none
REAL*8, intent(in) :: d2I5_dBydexy
REAL*8, intent(in) :: d2I6_dBydexy
REAL*8, intent(in) :: d2vp_dI4dI5
REAL*8, intent(in) :: d2wp_dI4dI5
REAL*8, intent(in) :: d2wp_dI4dI6
REAL*8, intent(in) :: d2wp_dI52
REAL*8, intent(in) :: d2wp_dI5dI6
REAL*8, intent(in) :: d2wp_dI62
REAL*8, intent(in) :: d2phi_dudv
REAL*8, intent(in) :: d2phi_dudw
REAL*8, intent(in) :: d2phi_dv2
REAL*8, intent(in) :: d2phi_dvdw
REAL*8, intent(in) :: d2phi_dw2
REAL*8, intent(in) :: dI4_dBy
REAL*8, intent(in) :: dI5_dBy
REAL*8, intent(in) :: dI5_dexy
REAL*8, intent(in) :: dI6_dBy
REAL*8, intent(in) :: dI6_dexy
REAL*8, intent(in) :: dexy_depsxy
REAL*8, intent(in) :: du_dup
REAL*8, intent(in) :: dup_dI4
REAL*8, intent(in) :: dv_dvp
REAL*8, intent(in) :: dvp_dI4
REAL*8, intent(in) :: dvp_dI5
REAL*8, intent(in) :: dw_dwp
REAL*8, intent(in) :: dwp_dI4
REAL*8, intent(in) :: dwp_dI5
REAL*8, intent(in) :: dwp_dI6
REAL*8, intent(in) :: dphi_dv
REAL*8, intent(in) :: dphi_dw
end function
end interface
interface
REAL*8 function d2phi_dBydepsyy(d2I5_dBydeyy, d2I6_dBydexx, d2I6_dBydeyy, &
d2I6_dBydezz, d2vp_dI4dI5, d2wp_dI4dI5, d2wp_dI4dI6, &
d2wp_dI52, d2wp_dI5dI6, d2wp_dI62, d2phi_dudv, d2phi_dudw, &
d2phi_dv2, d2phi_dvdw, d2phi_dw2, dI4_dBy, dI5_dBy, dI5_dexx, &
dI5_deyy, dI5_dezz, dI6_dBy, dI6_dexx, dI6_deyy, dI6_dezz, &
dexx_depsyy, deyy_depsyy, dezz_depsyy, du_dup, dup_dI4, dv_dvp, &
dvp_dI4, dvp_dI5, dw_dwp, dwp_dI4, dwp_dI5, dwp_dI6, dphi_dv, &
dphi_dw)
implicit none
REAL*8, intent(in) :: d2I5_dBydeyy
REAL*8, intent(in) :: d2I6_dBydexx
REAL*8, intent(in) :: d2I6_dBydeyy
REAL*8, intent(in) :: d2I6_dBydezz
REAL*8, intent(in) :: d2vp_dI4dI5
REAL*8, intent(in) :: d2wp_dI4dI5
REAL*8, intent(in) :: d2wp_dI4dI6
REAL*8, intent(in) :: d2wp_dI52
REAL*8, intent(in) :: d2wp_dI5dI6
REAL*8, intent(in) :: d2wp_dI62
REAL*8, intent(in) :: d2phi_dudv
REAL*8, intent(in) :: d2phi_dudw
REAL*8, intent(in) :: d2phi_dv2
REAL*8, intent(in) :: d2phi_dvdw
REAL*8, intent(in) :: d2phi_dw2
REAL*8, intent(in) :: dI4_dBy
REAL*8, intent(in) :: dI5_dBy
REAL*8, intent(in) :: dI5_dexx
REAL*8, intent(in) :: dI5_deyy
REAL*8, intent(in) :: dI5_dezz
REAL*8, intent(in) :: dI6_dBy
REAL*8, intent(in) :: dI6_dexx
REAL*8, intent(in) :: dI6_deyy
REAL*8, intent(in) :: dI6_dezz
REAL*8, intent(in) :: dexx_depsyy
REAL*8, intent(in) :: deyy_depsyy
REAL*8, intent(in) :: dezz_depsyy
REAL*8, intent(in) :: du_dup
REAL*8, intent(in) :: dup_dI4
REAL*8, intent(in) :: dv_dvp
REAL*8, intent(in) :: dvp_dI4
REAL*8, intent(in) :: dvp_dI5
REAL*8, intent(in) :: dw_dwp
REAL*8, intent(in) :: dwp_dI4
REAL*8, intent(in) :: dwp_dI5
REAL*8, intent(in) :: dwp_dI6
REAL*8, intent(in) :: dphi_dv
REAL*8, intent(in) :: dphi_dw
end function
end interface
interface
REAL*8 function d2phi_dBydepsyz(d2I5_dBydeyz, d2I6_dBydeyz, d2vp_dI4dI5, &
d2wp_dI4dI5, d2wp_dI4dI6, d2wp_dI52, d2wp_dI5dI6, d2wp_dI62, &
d2phi_dudv, d2phi_dudw, d2phi_dv2, d2phi_dvdw, d2phi_dw2, dI4_dBy, &
dI5_dBy, dI5_deyz, dI6_dBy, dI6_deyz, deyz_depsyz, du_dup, &
dup_dI4, dv_dvp, dvp_dI4, dvp_dI5, dw_dwp, dwp_dI4, dwp_dI5, &
dwp_dI6, dphi_dv, dphi_dw)
implicit none
REAL*8, intent(in) :: d2I5_dBydeyz
REAL*8, intent(in) :: d2I6_dBydeyz
REAL*8, intent(in) :: d2vp_dI4dI5
REAL*8, intent(in) :: d2wp_dI4dI5
REAL*8, intent(in) :: d2wp_dI4dI6
REAL*8, intent(in) :: d2wp_dI52
REAL*8, intent(in) :: d2wp_dI5dI6
REAL*8, intent(in) :: d2wp_dI62
REAL*8, intent(in) :: d2phi_dudv
REAL*8, intent(in) :: d2phi_dudw
REAL*8, intent(in) :: d2phi_dv2
REAL*8, intent(in) :: d2phi_dvdw
REAL*8, intent(in) :: d2phi_dw2
REAL*8, intent(in) :: dI4_dBy
REAL*8, intent(in) :: dI5_dBy
REAL*8, intent(in) :: dI5_deyz
REAL*8, intent(in) :: dI6_dBy
REAL*8, intent(in) :: dI6_deyz
REAL*8, intent(in) :: deyz_depsyz
REAL*8, intent(in) :: du_dup
REAL*8, intent(in) :: dup_dI4
REAL*8, intent(in) :: dv_dvp
REAL*8, intent(in) :: dvp_dI4
REAL*8, intent(in) :: dvp_dI5
REAL*8, intent(in) :: dw_dwp
REAL*8, intent(in) :: dwp_dI4
REAL*8, intent(in) :: dwp_dI5
REAL*8, intent(in) :: dwp_dI6
REAL*8, intent(in) :: dphi_dv
REAL*8, intent(in) :: dphi_dw
end function
end interface
interface
REAL*8 function d2phi_dBydepszx(d2I6_dBydezx, d2vp_dI4dI5, d2wp_dI4dI5, &
d2wp_dI4dI6, d2wp_dI52, d2wp_dI5dI6, d2wp_dI62, d2phi_dudv, &
d2phi_dudw, d2phi_dv2, d2phi_dvdw, d2phi_dw2, dI4_dBy, dI5_dBy, &
dI5_dezx, dI6_dBy, dI6_dezx, dezx_depszx, du_dup, dup_dI4, &
dv_dvp, dvp_dI4, dvp_dI5, dw_dwp, dwp_dI4, dwp_dI5, dwp_dI6, &
dphi_dv, dphi_dw)
implicit none
REAL*8, intent(in) :: d2I6_dBydezx
REAL*8, intent(in) :: d2vp_dI4dI5
REAL*8, intent(in) :: d2wp_dI4dI5
REAL*8, intent(in) :: d2wp_dI4dI6
REAL*8, intent(in) :: d2wp_dI52
REAL*8, intent(in) :: d2wp_dI5dI6
REAL*8, intent(in) :: d2wp_dI62
REAL*8, intent(in) :: d2phi_dudv
REAL*8, intent(in) :: d2phi_dudw
REAL*8, intent(in) :: d2phi_dv2
REAL*8, intent(in) :: d2phi_dvdw
REAL*8, intent(in) :: d2phi_dw2
REAL*8, intent(in) :: dI4_dBy
REAL*8, intent(in) :: dI5_dBy
REAL*8, intent(in) :: dI5_dezx
REAL*8, intent(in) :: dI6_dBy
REAL*8, intent(in) :: dI6_dezx
REAL*8, intent(in) :: dezx_depszx
REAL*8, intent(in) :: du_dup
REAL*8, intent(in) :: dup_dI4
REAL*8, intent(in) :: dv_dvp
REAL*8, intent(in) :: dvp_dI4
REAL*8, intent(in) :: dvp_dI5
REAL*8, intent(in) :: dw_dwp
REAL*8, intent(in) :: dwp_dI4
REAL*8, intent(in) :: dwp_dI5
REAL*8, intent(in) :: dwp_dI6
REAL*8, intent(in) :: dphi_dv
REAL*8, intent(in) :: dphi_dw
end function
end interface
interface
REAL*8 function d2phi_dBydepszz(d2I5_dBydeyy, d2I6_dBydexx, d2I6_dBydeyy, &
d2I6_dBydezz, d2vp_dI4dI5, d2wp_dI4dI5, d2wp_dI4dI6, &
d2wp_dI52, d2wp_dI5dI6, d2wp_dI62, d2phi_dudv, d2phi_dudw, &
d2phi_dv2, d2phi_dvdw, d2phi_dw2, dI4_dBy, dI5_dBy, dI5_dexx, &
dI5_deyy, dI5_dezz, dI6_dBy, dI6_dexx, dI6_deyy, dI6_dezz, &
dexx_depszz, deyy_depszz, dezz_depszz, du_dup, dup_dI4, dv_dvp, &
dvp_dI4, dvp_dI5, dw_dwp, dwp_dI4, dwp_dI5, dwp_dI6, dphi_dv, &
dphi_dw)
implicit none
REAL*8, intent(in) :: d2I5_dBydeyy
REAL*8, intent(in) :: d2I6_dBydexx
REAL*8, intent(in) :: d2I6_dBydeyy
REAL*8, intent(in) :: d2I6_dBydezz
REAL*8, intent(in) :: d2vp_dI4dI5
REAL*8, intent(in) :: d2wp_dI4dI5
REAL*8, intent(in) :: d2wp_dI4dI6
REAL*8, intent(in) :: d2wp_dI52
REAL*8, intent(in) :: d2wp_dI5dI6
REAL*8, intent(in) :: d2wp_dI62
REAL*8, intent(in) :: d2phi_dudv
REAL*8, intent(in) :: d2phi_dudw
REAL*8, intent(in) :: d2phi_dv2
REAL*8, intent(in) :: d2phi_dvdw
REAL*8, intent(in) :: d2phi_dw2
REAL*8, intent(in) :: dI4_dBy
REAL*8, intent(in) :: dI5_dBy
REAL*8, intent(in) :: dI5_dexx
REAL*8, intent(in) :: dI5_deyy
REAL*8, intent(in) :: dI5_dezz
REAL*8, intent(in) :: dI6_dBy
REAL*8, intent(in) :: dI6_dexx
REAL*8, intent(in) :: dI6_deyy
REAL*8, intent(in) :: dI6_dezz
REAL*8, intent(in) :: dexx_depszz
REAL*8, intent(in) :: deyy_depszz
REAL*8, intent(in) :: dezz_depszz
REAL*8, intent(in) :: du_dup
REAL*8, intent(in) :: dup_dI4
REAL*8, intent(in) :: dv_dvp
REAL*8, intent(in) :: dvp_dI4
REAL*8, intent(in) :: dvp_dI5
REAL*8, intent(in) :: dw_dwp
REAL*8, intent(in) :: dwp_dI4
REAL*8, intent(in) :: dwp_dI5
REAL*8, intent(in) :: dwp_dI6
REAL*8, intent(in) :: dphi_dv
REAL*8, intent(in) :: dphi_dw
end function
end interface
interface
REAL*8 function dphi_dBz(dI4_dBz, dI5_dBz, dI6_dBz, du_dup, dup_dI4, dv_dvp, &
dvp_dI4, dvp_dI5, dw_dwp, dwp_dI4, dwp_dI5, dwp_dI6, dphi_du, &
dphi_dv, dphi_dw)
implicit none
REAL*8, intent(in) :: dI4_dBz
REAL*8, intent(in) :: dI5_dBz
REAL*8, intent(in) :: dI6_dBz
REAL*8, intent(in) :: du_dup
REAL*8, intent(in) :: dup_dI4
REAL*8, intent(in) :: dv_dvp
REAL*8, intent(in) :: dvp_dI4
REAL*8, intent(in) :: dvp_dI5
REAL*8, intent(in) :: dw_dwp
REAL*8, intent(in) :: dwp_dI4
REAL*8, intent(in) :: dwp_dI5
REAL*8, intent(in) :: dwp_dI6
REAL*8, intent(in) :: dphi_du
REAL*8, intent(in) :: dphi_dv
REAL*8, intent(in) :: dphi_dw
end function
end interface
interface
REAL*8 function d2phi_dBz2(d2I4_dBz2, d2I5_dBz2, d2I6_dBz2, d2up_dI42, &
d2vp_dI42, d2vp_dI4dI5, d2wp_dI42, d2wp_dI4dI5, d2wp_dI4dI6, &
d2wp_dI52, d2wp_dI5dI6, d2wp_dI62, d2phi_du2, d2phi_dudv, &
d2phi_dudw, d2phi_dv2, d2phi_dvdw, d2phi_dw2, dI4_dBz, dI5_dBz, &
dI6_dBz, du_dup, dup_dI4, dv_dvp, dvp_dI4, dvp_dI5, dw_dwp, &
dwp_dI4, dwp_dI5, dwp_dI6, dphi_du, dphi_dv, dphi_dw)
implicit none
REAL*8, intent(in) :: d2I4_dBz2
REAL*8, intent(in) :: d2I5_dBz2
REAL*8, intent(in) :: d2I6_dBz2
REAL*8, intent(in) :: d2up_dI42
REAL*8, intent(in) :: d2vp_dI42
REAL*8, intent(in) :: d2vp_dI4dI5
REAL*8, intent(in) :: d2wp_dI42
REAL*8, intent(in) :: d2wp_dI4dI5
REAL*8, intent(in) :: d2wp_dI4dI6
REAL*8, intent(in) :: d2wp_dI52
REAL*8, intent(in) :: d2wp_dI5dI6
REAL*8, intent(in) :: d2wp_dI62
REAL*8, intent(in) :: d2phi_du2
REAL*8, intent(in) :: d2phi_dudv
REAL*8, intent(in) :: d2phi_dudw
REAL*8, intent(in) :: d2phi_dv2
REAL*8, intent(in) :: d2phi_dvdw
REAL*8, intent(in) :: d2phi_dw2
REAL*8, intent(in) :: dI4_dBz
REAL*8, intent(in) :: dI5_dBz
REAL*8, intent(in) :: dI6_dBz
REAL*8, intent(in) :: du_dup
REAL*8, intent(in) :: dup_dI4
REAL*8, intent(in) :: dv_dvp
REAL*8, intent(in) :: dvp_dI4
REAL*8, intent(in) :: dvp_dI5
REAL*8, intent(in) :: dw_dwp
REAL*8, intent(in) :: dwp_dI4
REAL*8, intent(in) :: dwp_dI5
REAL*8, intent(in) :: dwp_dI6
REAL*8, intent(in) :: dphi_du
REAL*8, intent(in) :: dphi_dv
REAL*8, intent(in) :: dphi_dw
end function
end interface
interface
REAL*8 function d2phi_dBzdepsxx(d2I5_dBzdezz, d2I6_dBzdexx, d2I6_dBzdeyy, &
d2I6_dBzdezz, d2vp_dI4dI5, d2wp_dI4dI5, d2wp_dI4dI6, &
d2wp_dI52, d2wp_dI5dI6, d2wp_dI62, d2phi_dudv, d2phi_dudw, &
d2phi_dv2, d2phi_dvdw, d2phi_dw2, dI4_dBz, dI5_dBz, dI5_dexx, &
dI5_deyy, dI5_dezz, dI6_dBz, dI6_dexx, dI6_deyy, dI6_dezz, &
dexx_depsxx, deyy_depsxx, dezz_depsxx, du_dup, dup_dI4, dv_dvp, &
dvp_dI4, dvp_dI5, dw_dwp, dwp_dI4, dwp_dI5, dwp_dI6, dphi_dv, &
dphi_dw)
implicit none
REAL*8, intent(in) :: d2I5_dBzdezz
REAL*8, intent(in) :: d2I6_dBzdexx
REAL*8, intent(in) :: d2I6_dBzdeyy
REAL*8, intent(in) :: d2I6_dBzdezz
REAL*8, intent(in) :: d2vp_dI4dI5
REAL*8, intent(in) :: d2wp_dI4dI5
REAL*8, intent(in) :: d2wp_dI4dI6
REAL*8, intent(in) :: d2wp_dI52
REAL*8, intent(in) :: d2wp_dI5dI6
REAL*8, intent(in) :: d2wp_dI62
REAL*8, intent(in) :: d2phi_dudv
REAL*8, intent(in) :: d2phi_dudw
REAL*8, intent(in) :: d2phi_dv2
REAL*8, intent(in) :: d2phi_dvdw
REAL*8, intent(in) :: d2phi_dw2
REAL*8, intent(in) :: dI4_dBz
REAL*8, intent(in) :: dI5_dBz
REAL*8, intent(in) :: dI5_dexx
REAL*8, intent(in) :: dI5_deyy
REAL*8, intent(in) :: dI5_dezz
REAL*8, intent(in) :: dI6_dBz
REAL*8, intent(in) :: dI6_dexx
REAL*8, intent(in) :: dI6_deyy
REAL*8, intent(in) :: dI6_dezz
REAL*8, intent(in) :: dexx_depsxx
REAL*8, intent(in) :: deyy_depsxx
REAL*8, intent(in) :: dezz_depsxx
REAL*8, intent(in) :: du_dup
REAL*8, intent(in) :: dup_dI4
REAL*8, intent(in) :: dv_dvp
REAL*8, intent(in) :: dvp_dI4
REAL*8, intent(in) :: dvp_dI5
REAL*8, intent(in) :: dw_dwp
REAL*8, intent(in) :: dwp_dI4
REAL*8, intent(in) :: dwp_dI5
REAL*8, intent(in) :: dwp_dI6
REAL*8, intent(in) :: dphi_dv
REAL*8, intent(in) :: dphi_dw
end function
end interface
interface
REAL*8 function d2phi_dBzdepsxy(d2I6_dBzdexy, d2vp_dI4dI5, d2wp_dI4dI5, &
d2wp_dI4dI6, d2wp_dI52, d2wp_dI5dI6, d2wp_dI62, d2phi_dudv, &
d2phi_dudw, d2phi_dv2, d2phi_dvdw, d2phi_dw2, dI4_dBz, dI5_dBz, &
dI5_dexy, dI6_dBz, dI6_dexy, dexy_depsxy, du_dup, dup_dI4, &
dv_dvp, dvp_dI4, dvp_dI5, dw_dwp, dwp_dI4, dwp_dI5, dwp_dI6, &
dphi_dv, dphi_dw)
implicit none
REAL*8, intent(in) :: d2I6_dBzdexy
REAL*8, intent(in) :: d2vp_dI4dI5
REAL*8, intent(in) :: d2wp_dI4dI5
REAL*8, intent(in) :: d2wp_dI4dI6
REAL*8, intent(in) :: d2wp_dI52
REAL*8, intent(in) :: d2wp_dI5dI6
REAL*8, intent(in) :: d2wp_dI62
REAL*8, intent(in) :: d2phi_dudv
REAL*8, intent(in) :: d2phi_dudw
REAL*8, intent(in) :: d2phi_dv2
REAL*8, intent(in) :: d2phi_dvdw
REAL*8, intent(in) :: d2phi_dw2
REAL*8, intent(in) :: dI4_dBz
REAL*8, intent(in) :: dI5_dBz
REAL*8, intent(in) :: dI5_dexy
REAL*8, intent(in) :: dI6_dBz
REAL*8, intent(in) :: dI6_dexy
REAL*8, intent(in) :: dexy_depsxy
REAL*8, intent(in) :: du_dup
REAL*8, intent(in) :: dup_dI4
REAL*8, intent(in) :: dv_dvp
REAL*8, intent(in) :: dvp_dI4
REAL*8, intent(in) :: dvp_dI5
REAL*8, intent(in) :: dw_dwp
REAL*8, intent(in) :: dwp_dI4
REAL*8, intent(in) :: dwp_dI5
REAL*8, intent(in) :: dwp_dI6
REAL*8, intent(in) :: dphi_dv
REAL*8, intent(in) :: dphi_dw
end function
end interface
interface
REAL*8 function d2phi_dBzdepsyy(d2I5_dBzdezz, d2I6_dBzdexx, d2I6_dBzdeyy, &
d2I6_dBzdezz, d2vp_dI4dI5, d2wp_dI4dI5, d2wp_dI4dI6, &
d2wp_dI52, d2wp_dI5dI6, d2wp_dI62, d2phi_dudv, d2phi_dudw, &
d2phi_dv2, d2phi_dvdw, d2phi_dw2, dI4_dBz, dI5_dBz, dI5_dexx, &
dI5_deyy, dI5_dezz, dI6_dBz, dI6_dexx, dI6_deyy, dI6_dezz, &
dexx_depsyy, deyy_depsyy, dezz_depsyy, du_dup, dup_dI4, dv_dvp, &
dvp_dI4, dvp_dI5, dw_dwp, dwp_dI4, dwp_dI5, dwp_dI6, dphi_dv, &
dphi_dw)
implicit none
REAL*8, intent(in) :: d2I5_dBzdezz
REAL*8, intent(in) :: d2I6_dBzdexx
REAL*8, intent(in) :: d2I6_dBzdeyy
REAL*8, intent(in) :: d2I6_dBzdezz
REAL*8, intent(in) :: d2vp_dI4dI5
REAL*8, intent(in) :: d2wp_dI4dI5
REAL*8, intent(in) :: d2wp_dI4dI6
REAL*8, intent(in) :: d2wp_dI52
REAL*8, intent(in) :: d2wp_dI5dI6
REAL*8, intent(in) :: d2wp_dI62
REAL*8, intent(in) :: d2phi_dudv
REAL*8, intent(in) :: d2phi_dudw
REAL*8, intent(in) :: d2phi_dv2
REAL*8, intent(in) :: d2phi_dvdw
REAL*8, intent(in) :: d2phi_dw2
REAL*8, intent(in) :: dI4_dBz
REAL*8, intent(in) :: dI5_dBz
REAL*8, intent(in) :: dI5_dexx
REAL*8, intent(in) :: dI5_deyy
REAL*8, intent(in) :: dI5_dezz
REAL*8, intent(in) :: dI6_dBz
REAL*8, intent(in) :: dI6_dexx
REAL*8, intent(in) :: dI6_deyy
REAL*8, intent(in) :: dI6_dezz
REAL*8, intent(in) :: dexx_depsyy
REAL*8, intent(in) :: deyy_depsyy
REAL*8, intent(in) :: dezz_depsyy
REAL*8, intent(in) :: du_dup
REAL*8, intent(in) :: dup_dI4
REAL*8, intent(in) :: dv_dvp
REAL*8, intent(in) :: dvp_dI4
REAL*8, intent(in) :: dvp_dI5
REAL*8, intent(in) :: dw_dwp
REAL*8, intent(in) :: dwp_dI4
REAL*8, intent(in) :: dwp_dI5
REAL*8, intent(in) :: dwp_dI6
REAL*8, intent(in) :: dphi_dv
REAL*8, intent(in) :: dphi_dw
end function
end interface
interface
REAL*8 function d2phi_dBzdepsyz(d2I5_dBzdeyz, d2I6_dBzdeyz, d2vp_dI4dI5, &
d2wp_dI4dI5, d2wp_dI4dI6, d2wp_dI52, d2wp_dI5dI6, d2wp_dI62, &
d2phi_dudv, d2phi_dudw, d2phi_dv2, d2phi_dvdw, d2phi_dw2, dI4_dBz, &
dI5_dBz, dI5_deyz, dI6_dBz, dI6_deyz, deyz_depsyz, du_dup, &
dup_dI4, dv_dvp, dvp_dI4, dvp_dI5, dw_dwp, dwp_dI4, dwp_dI5, &
dwp_dI6, dphi_dv, dphi_dw)
implicit none
REAL*8, intent(in) :: d2I5_dBzdeyz
REAL*8, intent(in) :: d2I6_dBzdeyz
REAL*8, intent(in) :: d2vp_dI4dI5
REAL*8, intent(in) :: d2wp_dI4dI5
REAL*8, intent(in) :: d2wp_dI4dI6
REAL*8, intent(in) :: d2wp_dI52
REAL*8, intent(in) :: d2wp_dI5dI6
REAL*8, intent(in) :: d2wp_dI62
REAL*8, intent(in) :: d2phi_dudv
REAL*8, intent(in) :: d2phi_dudw
REAL*8, intent(in) :: d2phi_dv2
REAL*8, intent(in) :: d2phi_dvdw
REAL*8, intent(in) :: d2phi_dw2
REAL*8, intent(in) :: dI4_dBz
REAL*8, intent(in) :: dI5_dBz
REAL*8, intent(in) :: dI5_deyz
REAL*8, intent(in) :: dI6_dBz
REAL*8, intent(in) :: dI6_deyz
REAL*8, intent(in) :: deyz_depsyz
REAL*8, intent(in) :: du_dup
REAL*8, intent(in) :: dup_dI4
REAL*8, intent(in) :: dv_dvp
REAL*8, intent(in) :: dvp_dI4
REAL*8, intent(in) :: dvp_dI5
REAL*8, intent(in) :: dw_dwp
REAL*8, intent(in) :: dwp_dI4
REAL*8, intent(in) :: dwp_dI5
REAL*8, intent(in) :: dwp_dI6
REAL*8, intent(in) :: dphi_dv
REAL*8, intent(in) :: dphi_dw
end function
end interface
interface
REAL*8 function d2phi_dBzdepszx(d2I5_dBzdezx, d2I6_dBzdezx, d2vp_dI4dI5, &
d2wp_dI4dI5, d2wp_dI4dI6, d2wp_dI52, d2wp_dI5dI6, d2wp_dI62, &
d2phi_dudv, d2phi_dudw, d2phi_dv2, d2phi_dvdw, d2phi_dw2, dI4_dBz, &
dI5_dBz, dI5_dezx, dI6_dBz, dI6_dezx, dezx_depszx, du_dup, &
dup_dI4, dv_dvp, dvp_dI4, dvp_dI5, dw_dwp, dwp_dI4, dwp_dI5, &
dwp_dI6, dphi_dv, dphi_dw)
implicit none
REAL*8, intent(in) :: d2I5_dBzdezx
REAL*8, intent(in) :: d2I6_dBzdezx
REAL*8, intent(in) :: d2vp_dI4dI5
REAL*8, intent(in) :: d2wp_dI4dI5
REAL*8, intent(in) :: d2wp_dI4dI6
REAL*8, intent(in) :: d2wp_dI52
REAL*8, intent(in) :: d2wp_dI5dI6
REAL*8, intent(in) :: d2wp_dI62
REAL*8, intent(in) :: d2phi_dudv
REAL*8, intent(in) :: d2phi_dudw
REAL*8, intent(in) :: d2phi_dv2
REAL*8, intent(in) :: d2phi_dvdw
REAL*8, intent(in) :: d2phi_dw2
REAL*8, intent(in) :: dI4_dBz
REAL*8, intent(in) :: dI5_dBz
REAL*8, intent(in) :: dI5_dezx
REAL*8, intent(in) :: dI6_dBz
REAL*8, intent(in) :: dI6_dezx
REAL*8, intent(in) :: dezx_depszx
REAL*8, intent(in) :: du_dup
REAL*8, intent(in) :: dup_dI4
REAL*8, intent(in) :: dv_dvp
REAL*8, intent(in) :: dvp_dI4
REAL*8, intent(in) :: dvp_dI5
REAL*8, intent(in) :: dw_dwp
REAL*8, intent(in) :: dwp_dI4
REAL*8, intent(in) :: dwp_dI5
REAL*8, intent(in) :: dwp_dI6
REAL*8, intent(in) :: dphi_dv
REAL*8, intent(in) :: dphi_dw
end function
end interface
interface
REAL*8 function d2phi_dBzdepszz(d2I5_dBzdezz, d2I6_dBzdexx, d2I6_dBzdeyy, &
d2I6_dBzdezz, d2vp_dI4dI5, d2wp_dI4dI5, d2wp_dI4dI6, &
d2wp_dI52, d2wp_dI5dI6, d2wp_dI62, d2phi_dudv, d2phi_dudw, &
d2phi_dv2, d2phi_dvdw, d2phi_dw2, dI4_dBz, dI5_dBz, dI5_dexx, &
dI5_deyy, dI5_dezz, dI6_dBz, dI6_dexx, dI6_deyy, dI6_dezz, &
dexx_depszz, deyy_depszz, dezz_depszz, du_dup, dup_dI4, dv_dvp, &
dvp_dI4, dvp_dI5, dw_dwp, dwp_dI4, dwp_dI5, dwp_dI6, dphi_dv, &
dphi_dw)
implicit none
REAL*8, intent(in) :: d2I5_dBzdezz
REAL*8, intent(in) :: d2I6_dBzdexx
REAL*8, intent(in) :: d2I6_dBzdeyy
REAL*8, intent(in) :: d2I6_dBzdezz
REAL*8, intent(in) :: d2vp_dI4dI5
REAL*8, intent(in) :: d2wp_dI4dI5
REAL*8, intent(in) :: d2wp_dI4dI6
REAL*8, intent(in) :: d2wp_dI52
REAL*8, intent(in) :: d2wp_dI5dI6
REAL*8, intent(in) :: d2wp_dI62
REAL*8, intent(in) :: d2phi_dudv
REAL*8, intent(in) :: d2phi_dudw
REAL*8, intent(in) :: d2phi_dv2
REAL*8, intent(in) :: d2phi_dvdw
REAL*8, intent(in) :: d2phi_dw2
REAL*8, intent(in) :: dI4_dBz
REAL*8, intent(in) :: dI5_dBz
REAL*8, intent(in) :: dI5_dexx
REAL*8, intent(in) :: dI5_deyy
REAL*8, intent(in) :: dI5_dezz
REAL*8, intent(in) :: dI6_dBz
REAL*8, intent(in) :: dI6_dexx
REAL*8, intent(in) :: dI6_deyy
REAL*8, intent(in) :: dI6_dezz
REAL*8, intent(in) :: dexx_depszz
REAL*8, intent(in) :: deyy_depszz
REAL*8, intent(in) :: dezz_depszz
REAL*8, intent(in) :: du_dup
REAL*8, intent(in) :: dup_dI4
REAL*8, intent(in) :: dv_dvp
REAL*8, intent(in) :: dvp_dI4
REAL*8, intent(in) :: dvp_dI5
REAL*8, intent(in) :: dw_dwp
REAL*8, intent(in) :: dwp_dI4
REAL*8, intent(in) :: dwp_dI5
REAL*8, intent(in) :: dwp_dI6
REAL*8, intent(in) :: dphi_dv
REAL*8, intent(in) :: dphi_dw
end function
end interface
interface
REAL*8 function dphi_depsxx(dI5_dexx, dI5_deyy, dI5_dezz, dI6_dexx, dI6_deyy, &
dI6_dezz, dexx_depsxx, deyy_depsxx, dezz_depsxx, dv_dvp, dvp_dI5, &
dw_dwp, dwp_dI5, dwp_dI6, dphi_dv, dphi_dw)
implicit none
REAL*8, intent(in) :: dI5_dexx
REAL*8, intent(in) :: dI5_deyy
REAL*8, intent(in) :: dI5_dezz
REAL*8, intent(in) :: dI6_dexx
REAL*8, intent(in) :: dI6_deyy
REAL*8, intent(in) :: dI6_dezz
REAL*8, intent(in) :: dexx_depsxx
REAL*8, intent(in) :: deyy_depsxx
REAL*8, intent(in) :: dezz_depsxx
REAL*8, intent(in) :: dv_dvp
REAL*8, intent(in) :: dvp_dI5
REAL*8, intent(in) :: dw_dwp
REAL*8, intent(in) :: dwp_dI5
REAL*8, intent(in) :: dwp_dI6
REAL*8, intent(in) :: dphi_dv
REAL*8, intent(in) :: dphi_dw
end function
end interface
interface
REAL*8 function d2phi_depsxx2(d2I6_dexx2, d2I6_deyy2, d2I6_dezz2, d2wp_dI52, &
d2wp_dI5dI6, d2wp_dI62, d2phi_dv2, d2phi_dvdw, d2phi_dw2, &
dI5_dexx, dI5_deyy, dI5_dezz, dI6_dexx, dI6_deyy, dI6_dezz, &
dexx_depsxx, deyy_depsxx, dezz_depsxx, dv_dvp, dvp_dI5, dw_dwp, &
dwp_dI5, dwp_dI6, dphi_dw)
implicit none
REAL*8, intent(in) :: d2I6_dexx2
REAL*8, intent(in) :: d2I6_deyy2
REAL*8, intent(in) :: d2I6_dezz2
REAL*8, intent(in) :: d2wp_dI52
REAL*8, intent(in) :: d2wp_dI5dI6
REAL*8, intent(in) :: d2wp_dI62
REAL*8, intent(in) :: d2phi_dv2
REAL*8, intent(in) :: d2phi_dvdw
REAL*8, intent(in) :: d2phi_dw2
REAL*8, intent(in) :: dI5_dexx
REAL*8, intent(in) :: dI5_deyy
REAL*8, intent(in) :: dI5_dezz
REAL*8, intent(in) :: dI6_dexx
REAL*8, intent(in) :: dI6_deyy
REAL*8, intent(in) :: dI6_dezz
REAL*8, intent(in) :: dexx_depsxx
REAL*8, intent(in) :: deyy_depsxx
REAL*8, intent(in) :: dezz_depsxx
REAL*8, intent(in) :: dv_dvp
REAL*8, intent(in) :: dvp_dI5
REAL*8, intent(in) :: dw_dwp
REAL*8, intent(in) :: dwp_dI5
REAL*8, intent(in) :: dwp_dI6
REAL*8, intent(in) :: dphi_dw
end function
end interface
interface
REAL*8 function d2phi_depsxxdepsxy(d2I6_dexxdexy, d2I6_dexydeyy, d2wp_dI52, &
d2wp_dI5dI6, d2wp_dI62, d2phi_dv2, d2phi_dvdw, d2phi_dw2, &
dI5_dexx, dI5_dexy, dI5_deyy, dI5_dezz, dI6_dexx, dI6_dexy, &
dI6_deyy, dI6_dezz, dexx_depsxx, dexy_depsxy, deyy_depsxx, &
dezz_depsxx, dv_dvp, dvp_dI5, dw_dwp, dwp_dI5, dwp_dI6, dphi_dw)
implicit none
REAL*8, intent(in) :: d2I6_dexxdexy
REAL*8, intent(in) :: d2I6_dexydeyy
REAL*8, intent(in) :: d2wp_dI52
REAL*8, intent(in) :: d2wp_dI5dI6
REAL*8, intent(in) :: d2wp_dI62
REAL*8, intent(in) :: d2phi_dv2
REAL*8, intent(in) :: d2phi_dvdw
REAL*8, intent(in) :: d2phi_dw2
REAL*8, intent(in) :: dI5_dexx
REAL*8, intent(in) :: dI5_dexy
REAL*8, intent(in) :: dI5_deyy
REAL*8, intent(in) :: dI5_dezz
REAL*8, intent(in) :: dI6_dexx
REAL*8, intent(in) :: dI6_dexy
REAL*8, intent(in) :: dI6_deyy
REAL*8, intent(in) :: dI6_dezz
REAL*8, intent(in) :: dexx_depsxx
REAL*8, intent(in) :: dexy_depsxy
REAL*8, intent(in) :: deyy_depsxx
REAL*8, intent(in) :: dezz_depsxx
REAL*8, intent(in) :: dv_dvp
REAL*8, intent(in) :: dvp_dI5
REAL*8, intent(in) :: dw_dwp
REAL*8, intent(in) :: dwp_dI5
REAL*8, intent(in) :: dwp_dI6
REAL*8, intent(in) :: dphi_dw
end function
end interface
interface
REAL*8 function d2phi_depsxxdepsyy(d2I6_dexx2, d2I6_deyy2, d2I6_dezz2, d2wp_dI52, &
d2wp_dI5dI6, d2wp_dI62, d2phi_dv2, d2phi_dvdw, d2phi_dw2, &
dI5_dexx, dI5_deyy, dI5_dezz, dI6_dexx, dI6_deyy, dI6_dezz, &
dexx_depsxx, dexx_depsyy, deyy_depsxx, deyy_depsyy, dezz_depsxx, &
dezz_depsyy, dv_dvp, dvp_dI5, dw_dwp, dwp_dI5, dwp_dI6, dphi_dw)
implicit none
REAL*8, intent(in) :: d2I6_dexx2
REAL*8, intent(in) :: d2I6_deyy2
REAL*8, intent(in) :: d2I6_dezz2
REAL*8, intent(in) :: d2wp_dI52
REAL*8, intent(in) :: d2wp_dI5dI6
REAL*8, intent(in) :: d2wp_dI62
REAL*8, intent(in) :: d2phi_dv2
REAL*8, intent(in) :: d2phi_dvdw
REAL*8, intent(in) :: d2phi_dw2
REAL*8, intent(in) :: dI5_dexx
REAL*8, intent(in) :: dI5_deyy
REAL*8, intent(in) :: dI5_dezz
REAL*8, intent(in) :: dI6_dexx
REAL*8, intent(in) :: dI6_deyy
REAL*8, intent(in) :: dI6_dezz
REAL*8, intent(in) :: dexx_depsxx
REAL*8, intent(in) :: dexx_depsyy
REAL*8, intent(in) :: deyy_depsxx
REAL*8, intent(in) :: deyy_depsyy
REAL*8, intent(in) :: dezz_depsxx
REAL*8, intent(in) :: dezz_depsyy
REAL*8, intent(in) :: dv_dvp
REAL*8, intent(in) :: dvp_dI5
REAL*8, intent(in) :: dw_dwp
REAL*8, intent(in) :: dwp_dI5
REAL*8, intent(in) :: dwp_dI6
REAL*8, intent(in) :: dphi_dw
end function
end interface
interface
REAL*8 function d2phi_depsxxdepsyz(d2I6_deyydeyz, d2I6_deyzdezz, d2wp_dI52, &
d2wp_dI5dI6, d2wp_dI62, d2phi_dv2, d2phi_dvdw, d2phi_dw2, &
dI5_dexx, dI5_deyy, dI5_deyz, dI5_dezz, dI6_dexx, dI6_deyy, &
dI6_deyz, dI6_dezz, dexx_depsxx, deyy_depsxx, deyz_depsyz, &
dezz_depsxx, dv_dvp, dvp_dI5, dw_dwp, dwp_dI5, dwp_dI6, dphi_dw)
implicit none
REAL*8, intent(in) :: d2I6_deyydeyz
REAL*8, intent(in) :: d2I6_deyzdezz
REAL*8, intent(in) :: d2wp_dI52
REAL*8, intent(in) :: d2wp_dI5dI6
REAL*8, intent(in) :: d2wp_dI62
REAL*8, intent(in) :: d2phi_dv2
REAL*8, intent(in) :: d2phi_dvdw
REAL*8, intent(in) :: d2phi_dw2
REAL*8, intent(in) :: dI5_dexx
REAL*8, intent(in) :: dI5_deyy
REAL*8, intent(in) :: dI5_deyz
REAL*8, intent(in) :: dI5_dezz
REAL*8, intent(in) :: dI6_dexx
REAL*8, intent(in) :: dI6_deyy
REAL*8, intent(in) :: dI6_deyz
REAL*8, intent(in) :: dI6_dezz
REAL*8, intent(in) :: dexx_depsxx
REAL*8, intent(in) :: deyy_depsxx
REAL*8, intent(in) :: deyz_depsyz
REAL*8, intent(in) :: dezz_depsxx
REAL*8, intent(in) :: dv_dvp
REAL*8, intent(in) :: dvp_dI5
REAL*8, intent(in) :: dw_dwp
REAL*8, intent(in) :: dwp_dI5
REAL*8, intent(in) :: dwp_dI6
REAL*8, intent(in) :: dphi_dw
end function
end interface
interface
REAL*8 function d2phi_depsxxdepszx(d2I6_dexxdezx, d2I6_dezxdezz, d2wp_dI52, &
d2wp_dI5dI6, d2wp_dI62, d2phi_dv2, d2phi_dvdw, d2phi_dw2, &
dI5_dexx, dI5_deyy, dI5_dezx, dI5_dezz, dI6_dexx, dI6_deyy, &
dI6_dezx, dI6_dezz, dexx_depsxx, deyy_depsxx, dezx_depszx, &
dezz_depsxx, dv_dvp, dvp_dI5, dw_dwp, dwp_dI5, dwp_dI6, dphi_dw)
implicit none
REAL*8, intent(in) :: d2I6_dexxdezx
REAL*8, intent(in) :: d2I6_dezxdezz
REAL*8, intent(in) :: d2wp_dI52
REAL*8, intent(in) :: d2wp_dI5dI6
REAL*8, intent(in) :: d2wp_dI62
REAL*8, intent(in) :: d2phi_dv2
REAL*8, intent(in) :: d2phi_dvdw
REAL*8, intent(in) :: d2phi_dw2
REAL*8, intent(in) :: dI5_dexx
REAL*8, intent(in) :: dI5_deyy
REAL*8, intent(in) :: dI5_dezx
REAL*8, intent(in) :: dI5_dezz
REAL*8, intent(in) :: dI6_dexx
REAL*8, intent(in) :: dI6_deyy
REAL*8, intent(in) :: dI6_dezx
REAL*8, intent(in) :: dI6_dezz
REAL*8, intent(in) :: dexx_depsxx
REAL*8, intent(in) :: deyy_depsxx
REAL*8, intent(in) :: dezx_depszx
REAL*8, intent(in) :: dezz_depsxx
REAL*8, intent(in) :: dv_dvp
REAL*8, intent(in) :: dvp_dI5
REAL*8, intent(in) :: dw_dwp
REAL*8, intent(in) :: dwp_dI5
REAL*8, intent(in) :: dwp_dI6
REAL*8, intent(in) :: dphi_dw
end function
end interface
interface
REAL*8 function d2phi_depsxxdepszz(d2I6_dexx2, d2I6_deyy2, d2I6_dezz2, d2wp_dI52, &
d2wp_dI5dI6, d2wp_dI62, d2phi_dv2, d2phi_dvdw, d2phi_dw2, &
dI5_dexx, dI5_deyy, dI5_dezz, dI6_dexx, dI6_deyy, dI6_dezz, &
dexx_depsxx, dexx_depszz, deyy_depsxx, deyy_depszz, dezz_depsxx, &
dezz_depszz, dv_dvp, dvp_dI5, dw_dwp, dwp_dI5, dwp_dI6, dphi_dw)
implicit none
REAL*8, intent(in) :: d2I6_dexx2
REAL*8, intent(in) :: d2I6_deyy2
REAL*8, intent(in) :: d2I6_dezz2
REAL*8, intent(in) :: d2wp_dI52
REAL*8, intent(in) :: d2wp_dI5dI6
REAL*8, intent(in) :: d2wp_dI62
REAL*8, intent(in) :: d2phi_dv2
REAL*8, intent(in) :: d2phi_dvdw
REAL*8, intent(in) :: d2phi_dw2
REAL*8, intent(in) :: dI5_dexx
REAL*8, intent(in) :: dI5_deyy
REAL*8, intent(in) :: dI5_dezz
REAL*8, intent(in) :: dI6_dexx
REAL*8, intent(in) :: dI6_deyy
REAL*8, intent(in) :: dI6_dezz
REAL*8, intent(in) :: dexx_depsxx
REAL*8, intent(in) :: dexx_depszz
REAL*8, intent(in) :: deyy_depsxx
REAL*8, intent(in) :: deyy_depszz
REAL*8, intent(in) :: dezz_depsxx
REAL*8, intent(in) :: dezz_depszz
REAL*8, intent(in) :: dv_dvp
REAL*8, intent(in) :: dvp_dI5
REAL*8, intent(in) :: dw_dwp
REAL*8, intent(in) :: dwp_dI5
REAL*8, intent(in) :: dwp_dI6
REAL*8, intent(in) :: dphi_dw
end function
end interface
interface
REAL*8 function dphi_depsxy(dI5_dexy, dI6_dexy, dexy_depsxy, dv_dvp, dvp_dI5, &
dw_dwp, dwp_dI5, dwp_dI6, dphi_dv, dphi_dw)
implicit none
REAL*8, intent(in) :: dI5_dexy
REAL*8, intent(in) :: dI6_dexy
REAL*8, intent(in) :: dexy_depsxy
REAL*8, intent(in) :: dv_dvp
REAL*8, intent(in) :: dvp_dI5
REAL*8, intent(in) :: dw_dwp
REAL*8, intent(in) :: dwp_dI5
REAL*8, intent(in) :: dwp_dI6
REAL*8, intent(in) :: dphi_dv
REAL*8, intent(in) :: dphi_dw
end function
end interface
interface
REAL*8 function d2phi_depsxy2(d2I6_dexy2, d2wp_dI52, d2wp_dI5dI6, d2wp_dI62, &
d2phi_dv2, d2phi_dvdw, d2phi_dw2, dI5_dexy, dI6_dexy, dexy_depsxy, &
dv_dvp, dvp_dI5, dw_dwp, dwp_dI5, dwp_dI6, dphi_dw)
implicit none
REAL*8, intent(in) :: d2I6_dexy2
REAL*8, intent(in) :: d2wp_dI52
REAL*8, intent(in) :: d2wp_dI5dI6
REAL*8, intent(in) :: d2wp_dI62
REAL*8, intent(in) :: d2phi_dv2
REAL*8, intent(in) :: d2phi_dvdw
REAL*8, intent(in) :: d2phi_dw2
REAL*8, intent(in) :: dI5_dexy
REAL*8, intent(in) :: dI6_dexy
REAL*8, intent(in) :: dexy_depsxy
REAL*8, intent(in) :: dv_dvp
REAL*8, intent(in) :: dvp_dI5
REAL*8, intent(in) :: dw_dwp
REAL*8, intent(in) :: dwp_dI5
REAL*8, intent(in) :: dwp_dI6
REAL*8, intent(in) :: dphi_dw
end function
end interface
interface
REAL*8 function d2phi_depsxydepsyy(d2I6_dexxdexy, d2I6_dexydeyy, d2wp_dI52, &
d2wp_dI5dI6, d2wp_dI62, d2phi_dv2, d2phi_dvdw, d2phi_dw2, &
dI5_dexx, dI5_dexy, dI5_deyy, dI5_dezz, dI6_dexx, dI6_dexy, &
dI6_deyy, dI6_dezz, dexx_depsyy, dexy_depsxy, deyy_depsyy, &
dezz_depsyy, dv_dvp, dvp_dI5, dw_dwp, dwp_dI5, dwp_dI6, dphi_dw)
implicit none
REAL*8, intent(in) :: d2I6_dexxdexy
REAL*8, intent(in) :: d2I6_dexydeyy
REAL*8, intent(in) :: d2wp_dI52
REAL*8, intent(in) :: d2wp_dI5dI6
REAL*8, intent(in) :: d2wp_dI62
REAL*8, intent(in) :: d2phi_dv2
REAL*8, intent(in) :: d2phi_dvdw
REAL*8, intent(in) :: d2phi_dw2
REAL*8, intent(in) :: dI5_dexx
REAL*8, intent(in) :: dI5_dexy
REAL*8, intent(in) :: dI5_deyy
REAL*8, intent(in) :: dI5_dezz
REAL*8, intent(in) :: dI6_dexx
REAL*8, intent(in) :: dI6_dexy
REAL*8, intent(in) :: dI6_deyy
REAL*8, intent(in) :: dI6_dezz
REAL*8, intent(in) :: dexx_depsyy
REAL*8, intent(in) :: dexy_depsxy
REAL*8, intent(in) :: deyy_depsyy
REAL*8, intent(in) :: dezz_depsyy
REAL*8, intent(in) :: dv_dvp
REAL*8, intent(in) :: dvp_dI5
REAL*8, intent(in) :: dw_dwp
REAL*8, intent(in) :: dwp_dI5
REAL*8, intent(in) :: dwp_dI6
REAL*8, intent(in) :: dphi_dw
end function
end interface
interface
REAL*8 function d2phi_depsxydepsyz(d2I6_dexydeyz, d2wp_dI52, d2wp_dI5dI6, &
d2wp_dI62, d2phi_dv2, d2phi_dvdw, d2phi_dw2, dI5_dexy, dI5_deyz, &
dI6_dexy, dI6_deyz, dexy_depsxy, deyz_depsyz, dv_dvp, dvp_dI5, &
dw_dwp, dwp_dI5, dwp_dI6, dphi_dw)
implicit none
REAL*8, intent(in) :: d2I6_dexydeyz
REAL*8, intent(in) :: d2wp_dI52
REAL*8, intent(in) :: d2wp_dI5dI6
REAL*8, intent(in) :: d2wp_dI62
REAL*8, intent(in) :: d2phi_dv2
REAL*8, intent(in) :: d2phi_dvdw
REAL*8, intent(in) :: d2phi_dw2
REAL*8, intent(in) :: dI5_dexy
REAL*8, intent(in) :: dI5_deyz
REAL*8, intent(in) :: dI6_dexy
REAL*8, intent(in) :: dI6_deyz
REAL*8, intent(in) :: dexy_depsxy
REAL*8, intent(in) :: deyz_depsyz
REAL*8, intent(in) :: dv_dvp
REAL*8, intent(in) :: dvp_dI5
REAL*8, intent(in) :: dw_dwp
REAL*8, intent(in) :: dwp_dI5
REAL*8, intent(in) :: dwp_dI6
REAL*8, intent(in) :: dphi_dw
end function
end interface
interface
REAL*8 function d2phi_depsxydepszx(d2I6_dexydezx, d2wp_dI52, d2wp_dI5dI6, &
d2wp_dI62, d2phi_dv2, d2phi_dvdw, d2phi_dw2, dI5_dexy, dI5_dezx, &
dI6_dexy, dI6_dezx, dexy_depsxy, dezx_depszx, dv_dvp, dvp_dI5, &
dw_dwp, dwp_dI5, dwp_dI6, dphi_dw)
implicit none
REAL*8, intent(in) :: d2I6_dexydezx
REAL*8, intent(in) :: d2wp_dI52
REAL*8, intent(in) :: d2wp_dI5dI6
REAL*8, intent(in) :: d2wp_dI62
REAL*8, intent(in) :: d2phi_dv2
REAL*8, intent(in) :: d2phi_dvdw
REAL*8, intent(in) :: d2phi_dw2
REAL*8, intent(in) :: dI5_dexy
REAL*8, intent(in) :: dI5_dezx
REAL*8, intent(in) :: dI6_dexy
REAL*8, intent(in) :: dI6_dezx
REAL*8, intent(in) :: dexy_depsxy
REAL*8, intent(in) :: dezx_depszx
REAL*8, intent(in) :: dv_dvp
REAL*8, intent(in) :: dvp_dI5
REAL*8, intent(in) :: dw_dwp
REAL*8, intent(in) :: dwp_dI5
REAL*8, intent(in) :: dwp_dI6
REAL*8, intent(in) :: dphi_dw
end function
end interface
interface
REAL*8 function d2phi_depsxydepszz(d2I6_dexxdexy, d2I6_dexydeyy, d2wp_dI52, &
d2wp_dI5dI6, d2wp_dI62, d2phi_dv2, d2phi_dvdw, d2phi_dw2, &
dI5_dexx, dI5_dexy, dI5_deyy, dI5_dezz, dI6_dexx, dI6_dexy, &
dI6_deyy, dI6_dezz, dexx_depszz, dexy_depsxy, deyy_depszz, &
dezz_depszz, dv_dvp, dvp_dI5, dw_dwp, dwp_dI5, dwp_dI6, dphi_dw)
implicit none
REAL*8, intent(in) :: d2I6_dexxdexy
REAL*8, intent(in) :: d2I6_dexydeyy
REAL*8, intent(in) :: d2wp_dI52
REAL*8, intent(in) :: d2wp_dI5dI6
REAL*8, intent(in) :: d2wp_dI62
REAL*8, intent(in) :: d2phi_dv2
REAL*8, intent(in) :: d2phi_dvdw
REAL*8, intent(in) :: d2phi_dw2
REAL*8, intent(in) :: dI5_dexx
REAL*8, intent(in) :: dI5_dexy
REAL*8, intent(in) :: dI5_deyy
REAL*8, intent(in) :: dI5_dezz
REAL*8, intent(in) :: dI6_dexx
REAL*8, intent(in) :: dI6_dexy
REAL*8, intent(in) :: dI6_deyy
REAL*8, intent(in) :: dI6_dezz
REAL*8, intent(in) :: dexx_depszz
REAL*8, intent(in) :: dexy_depsxy
REAL*8, intent(in) :: deyy_depszz
REAL*8, intent(in) :: dezz_depszz
REAL*8, intent(in) :: dv_dvp
REAL*8, intent(in) :: dvp_dI5
REAL*8, intent(in) :: dw_dwp
REAL*8, intent(in) :: dwp_dI5
REAL*8, intent(in) :: dwp_dI6
REAL*8, intent(in) :: dphi_dw
end function
end interface
interface
REAL*8 function dphi_depsyy(dI5_dexx, dI5_deyy, dI5_dezz, dI6_dexx, dI6_deyy, &
dI6_dezz, dexx_depsyy, deyy_depsyy, dezz_depsyy, dv_dvp, dvp_dI5, &
dw_dwp, dwp_dI5, dwp_dI6, dphi_dv, dphi_dw)
implicit none
REAL*8, intent(in) :: dI5_dexx
REAL*8, intent(in) :: dI5_deyy
REAL*8, intent(in) :: dI5_dezz
REAL*8, intent(in) :: dI6_dexx
REAL*8, intent(in) :: dI6_deyy
REAL*8, intent(in) :: dI6_dezz
REAL*8, intent(in) :: dexx_depsyy
REAL*8, intent(in) :: deyy_depsyy
REAL*8, intent(in) :: dezz_depsyy
REAL*8, intent(in) :: dv_dvp
REAL*8, intent(in) :: dvp_dI5
REAL*8, intent(in) :: dw_dwp
REAL*8, intent(in) :: dwp_dI5
REAL*8, intent(in) :: dwp_dI6
REAL*8, intent(in) :: dphi_dv
REAL*8, intent(in) :: dphi_dw
end function
end interface
interface
REAL*8 function d2phi_depsyy2(d2I6_dexx2, d2I6_deyy2, d2I6_dezz2, d2wp_dI52, &
d2wp_dI5dI6, d2wp_dI62, d2phi_dv2, d2phi_dvdw, d2phi_dw2, &
dI5_dexx, dI5_deyy, dI5_dezz, dI6_dexx, dI6_deyy, dI6_dezz, &
dexx_depsyy, deyy_depsyy, dezz_depsyy, dv_dvp, dvp_dI5, dw_dwp, &
dwp_dI5, dwp_dI6, dphi_dw)
implicit none
REAL*8, intent(in) :: d2I6_dexx2
REAL*8, intent(in) :: d2I6_deyy2
REAL*8, intent(in) :: d2I6_dezz2
REAL*8, intent(in) :: d2wp_dI52
REAL*8, intent(in) :: d2wp_dI5dI6
REAL*8, intent(in) :: d2wp_dI62
REAL*8, intent(in) :: d2phi_dv2
REAL*8, intent(in) :: d2phi_dvdw
REAL*8, intent(in) :: d2phi_dw2
REAL*8, intent(in) :: dI5_dexx
REAL*8, intent(in) :: dI5_deyy
REAL*8, intent(in) :: dI5_dezz
REAL*8, intent(in) :: dI6_dexx
REAL*8, intent(in) :: dI6_deyy
REAL*8, intent(in) :: dI6_dezz
REAL*8, intent(in) :: dexx_depsyy
REAL*8, intent(in) :: deyy_depsyy
REAL*8, intent(in) :: dezz_depsyy
REAL*8, intent(in) :: dv_dvp
REAL*8, intent(in) :: dvp_dI5
REAL*8, intent(in) :: dw_dwp
REAL*8, intent(in) :: dwp_dI5
REAL*8, intent(in) :: dwp_dI6
REAL*8, intent(in) :: dphi_dw
end function
end interface
interface
REAL*8 function d2phi_depsyydepsyz(d2I6_deyydeyz, d2I6_deyzdezz, d2wp_dI52, &
d2wp_dI5dI6, d2wp_dI62, d2phi_dv2, d2phi_dvdw, d2phi_dw2, &
dI5_dexx, dI5_deyy, dI5_deyz, dI5_dezz, dI6_dexx, dI6_deyy, &
dI6_deyz, dI6_dezz, dexx_depsyy, deyy_depsyy, deyz_depsyz, &
dezz_depsyy, dv_dvp, dvp_dI5, dw_dwp, dwp_dI5, dwp_dI6, dphi_dw)
implicit none
REAL*8, intent(in) :: d2I6_deyydeyz
REAL*8, intent(in) :: d2I6_deyzdezz
REAL*8, intent(in) :: d2wp_dI52
REAL*8, intent(in) :: d2wp_dI5dI6
REAL*8, intent(in) :: d2wp_dI62
REAL*8, intent(in) :: d2phi_dv2
REAL*8, intent(in) :: d2phi_dvdw
REAL*8, intent(in) :: d2phi_dw2
REAL*8, intent(in) :: dI5_dexx
REAL*8, intent(in) :: dI5_deyy
REAL*8, intent(in) :: dI5_deyz
REAL*8, intent(in) :: dI5_dezz
REAL*8, intent(in) :: dI6_dexx
REAL*8, intent(in) :: dI6_deyy
REAL*8, intent(in) :: dI6_deyz
REAL*8, intent(in) :: dI6_dezz
REAL*8, intent(in) :: dexx_depsyy
REAL*8, intent(in) :: deyy_depsyy
REAL*8, intent(in) :: deyz_depsyz
REAL*8, intent(in) :: dezz_depsyy
REAL*8, intent(in) :: dv_dvp
REAL*8, intent(in) :: dvp_dI5
REAL*8, intent(in) :: dw_dwp
REAL*8, intent(in) :: dwp_dI5
REAL*8, intent(in) :: dwp_dI6
REAL*8, intent(in) :: dphi_dw
end function
end interface
interface
REAL*8 function d2phi_depsyydepszx(d2I6_dexxdezx, d2I6_dezxdezz, d2wp_dI52, &
d2wp_dI5dI6, d2wp_dI62, d2phi_dv2, d2phi_dvdw, d2phi_dw2, &
dI5_dexx, dI5_deyy, dI5_dezx, dI5_dezz, dI6_dexx, dI6_deyy, &
dI6_dezx, dI6_dezz, dexx_depsyy, deyy_depsyy, dezx_depszx, &
dezz_depsyy, dv_dvp, dvp_dI5, dw_dwp, dwp_dI5, dwp_dI6, dphi_dw)
implicit none
REAL*8, intent(in) :: d2I6_dexxdezx
REAL*8, intent(in) :: d2I6_dezxdezz
REAL*8, intent(in) :: d2wp_dI52
REAL*8, intent(in) :: d2wp_dI5dI6
REAL*8, intent(in) :: d2wp_dI62
REAL*8, intent(in) :: d2phi_dv2
REAL*8, intent(in) :: d2phi_dvdw
REAL*8, intent(in) :: d2phi_dw2
REAL*8, intent(in) :: dI5_dexx
REAL*8, intent(in) :: dI5_deyy
REAL*8, intent(in) :: dI5_dezx
REAL*8, intent(in) :: dI5_dezz
REAL*8, intent(in) :: dI6_dexx
REAL*8, intent(in) :: dI6_deyy
REAL*8, intent(in) :: dI6_dezx
REAL*8, intent(in) :: dI6_dezz
REAL*8, intent(in) :: dexx_depsyy
REAL*8, intent(in) :: deyy_depsyy
REAL*8, intent(in) :: dezx_depszx
REAL*8, intent(in) :: dezz_depsyy
REAL*8, intent(in) :: dv_dvp
REAL*8, intent(in) :: dvp_dI5
REAL*8, intent(in) :: dw_dwp
REAL*8, intent(in) :: dwp_dI5
REAL*8, intent(in) :: dwp_dI6
REAL*8, intent(in) :: dphi_dw
end function
end interface
interface
REAL*8 function d2phi_depsyydepszz(d2I6_dexx2, d2I6_deyy2, d2I6_dezz2, d2wp_dI52, &
d2wp_dI5dI6, d2wp_dI62, d2phi_dv2, d2phi_dvdw, d2phi_dw2, &
dI5_dexx, dI5_deyy, dI5_dezz, dI6_dexx, dI6_deyy, dI6_dezz, &
dexx_depsyy, dexx_depszz, deyy_depsyy, deyy_depszz, dezz_depsyy, &
dezz_depszz, dv_dvp, dvp_dI5, dw_dwp, dwp_dI5, dwp_dI6, dphi_dw)
implicit none
REAL*8, intent(in) :: d2I6_dexx2
REAL*8, intent(in) :: d2I6_deyy2
REAL*8, intent(in) :: d2I6_dezz2
REAL*8, intent(in) :: d2wp_dI52
REAL*8, intent(in) :: d2wp_dI5dI6
REAL*8, intent(in) :: d2wp_dI62
REAL*8, intent(in) :: d2phi_dv2
REAL*8, intent(in) :: d2phi_dvdw
REAL*8, intent(in) :: d2phi_dw2
REAL*8, intent(in) :: dI5_dexx
REAL*8, intent(in) :: dI5_deyy
REAL*8, intent(in) :: dI5_dezz
REAL*8, intent(in) :: dI6_dexx
REAL*8, intent(in) :: dI6_deyy
REAL*8, intent(in) :: dI6_dezz
REAL*8, intent(in) :: dexx_depsyy
REAL*8, intent(in) :: dexx_depszz
REAL*8, intent(in) :: deyy_depsyy
REAL*8, intent(in) :: deyy_depszz
REAL*8, intent(in) :: dezz_depsyy
REAL*8, intent(in) :: dezz_depszz
REAL*8, intent(in) :: dv_dvp
REAL*8, intent(in) :: dvp_dI5
REAL*8, intent(in) :: dw_dwp
REAL*8, intent(in) :: dwp_dI5
REAL*8, intent(in) :: dwp_dI6
REAL*8, intent(in) :: dphi_dw
end function
end interface
interface
REAL*8 function dphi_depsyz(dI5_deyz, dI6_deyz, deyz_depsyz, dv_dvp, dvp_dI5, &
dw_dwp, dwp_dI5, dwp_dI6, dphi_dv, dphi_dw)
implicit none
REAL*8, intent(in) :: dI5_deyz
REAL*8, intent(in) :: dI6_deyz
REAL*8, intent(in) :: deyz_depsyz
REAL*8, intent(in) :: dv_dvp
REAL*8, intent(in) :: dvp_dI5
REAL*8, intent(in) :: dw_dwp
REAL*8, intent(in) :: dwp_dI5
REAL*8, intent(in) :: dwp_dI6
REAL*8, intent(in) :: dphi_dv
REAL*8, intent(in) :: dphi_dw
end function
end interface
interface
REAL*8 function d2phi_depsyz2(d2I6_deyz2, d2wp_dI52, d2wp_dI5dI6, d2wp_dI62, &
d2phi_dv2, d2phi_dvdw, d2phi_dw2, dI5_deyz, dI6_deyz, deyz_depsyz, &
dv_dvp, dvp_dI5, dw_dwp, dwp_dI5, dwp_dI6, dphi_dw)
implicit none
REAL*8, intent(in) :: d2I6_deyz2
REAL*8, intent(in) :: d2wp_dI52
REAL*8, intent(in) :: d2wp_dI5dI6
REAL*8, intent(in) :: d2wp_dI62
REAL*8, intent(in) :: d2phi_dv2
REAL*8, intent(in) :: d2phi_dvdw
REAL*8, intent(in) :: d2phi_dw2
REAL*8, intent(in) :: dI5_deyz
REAL*8, intent(in) :: dI6_deyz
REAL*8, intent(in) :: deyz_depsyz
REAL*8, intent(in) :: dv_dvp
REAL*8, intent(in) :: dvp_dI5
REAL*8, intent(in) :: dw_dwp
REAL*8, intent(in) :: dwp_dI5
REAL*8, intent(in) :: dwp_dI6
REAL*8, intent(in) :: dphi_dw
end function
end interface
interface
REAL*8 function d2phi_depsyzdepszx(d2I6_deyzdezx, d2wp_dI52, d2wp_dI5dI6, &
d2wp_dI62, d2phi_dv2, d2phi_dvdw, d2phi_dw2, dI5_deyz, dI5_dezx, &
dI6_deyz, dI6_dezx, deyz_depsyz, dezx_depszx, dv_dvp, dvp_dI5, &
dw_dwp, dwp_dI5, dwp_dI6, dphi_dw)
implicit none
REAL*8, intent(in) :: d2I6_deyzdezx
REAL*8, intent(in) :: d2wp_dI52
REAL*8, intent(in) :: d2wp_dI5dI6
REAL*8, intent(in) :: d2wp_dI62
REAL*8, intent(in) :: d2phi_dv2
REAL*8, intent(in) :: d2phi_dvdw
REAL*8, intent(in) :: d2phi_dw2
REAL*8, intent(in) :: dI5_deyz
REAL*8, intent(in) :: dI5_dezx
REAL*8, intent(in) :: dI6_deyz
REAL*8, intent(in) :: dI6_dezx
REAL*8, intent(in) :: deyz_depsyz
REAL*8, intent(in) :: dezx_depszx
REAL*8, intent(in) :: dv_dvp
REAL*8, intent(in) :: dvp_dI5
REAL*8, intent(in) :: dw_dwp
REAL*8, intent(in) :: dwp_dI5
REAL*8, intent(in) :: dwp_dI6
REAL*8, intent(in) :: dphi_dw
end function
end interface
interface
REAL*8 function d2phi_depsyzdepszz(d2I6_deyydeyz, d2I6_deyzdezz, d2wp_dI52, &
d2wp_dI5dI6, d2wp_dI62, d2phi_dv2, d2phi_dvdw, d2phi_dw2, &
dI5_dexx, dI5_deyy, dI5_deyz, dI5_dezz, dI6_dexx, dI6_deyy, &
dI6_deyz, dI6_dezz, dexx_depszz, deyy_depszz, deyz_depsyz, &
dezz_depszz, dv_dvp, dvp_dI5, dw_dwp, dwp_dI5, dwp_dI6, dphi_dw)
implicit none
REAL*8, intent(in) :: d2I6_deyydeyz
REAL*8, intent(in) :: d2I6_deyzdezz
REAL*8, intent(in) :: d2wp_dI52
REAL*8, intent(in) :: d2wp_dI5dI6
REAL*8, intent(in) :: d2wp_dI62
REAL*8, intent(in) :: d2phi_dv2
REAL*8, intent(in) :: d2phi_dvdw
REAL*8, intent(in) :: d2phi_dw2
REAL*8, intent(in) :: dI5_dexx
REAL*8, intent(in) :: dI5_deyy
REAL*8, intent(in) :: dI5_deyz
REAL*8, intent(in) :: dI5_dezz
REAL*8, intent(in) :: dI6_dexx
REAL*8, intent(in) :: dI6_deyy
REAL*8, intent(in) :: dI6_deyz
REAL*8, intent(in) :: dI6_dezz
REAL*8, intent(in) :: dexx_depszz
REAL*8, intent(in) :: deyy_depszz
REAL*8, intent(in) :: deyz_depsyz
REAL*8, intent(in) :: dezz_depszz
REAL*8, intent(in) :: dv_dvp
REAL*8, intent(in) :: dvp_dI5
REAL*8, intent(in) :: dw_dwp
REAL*8, intent(in) :: dwp_dI5
REAL*8, intent(in) :: dwp_dI6
REAL*8, intent(in) :: dphi_dw
end function
end interface
interface
REAL*8 function dphi_depszx(dI5_dezx, dI6_dezx, dezx_depszx, dv_dvp, dvp_dI5, &
dw_dwp, dwp_dI5, dwp_dI6, dphi_dv, dphi_dw)
implicit none
REAL*8, intent(in) :: dI5_dezx
REAL*8, intent(in) :: dI6_dezx
REAL*8, intent(in) :: dezx_depszx
REAL*8, intent(in) :: dv_dvp
REAL*8, intent(in) :: dvp_dI5
REAL*8, intent(in) :: dw_dwp
REAL*8, intent(in) :: dwp_dI5
REAL*8, intent(in) :: dwp_dI6
REAL*8, intent(in) :: dphi_dv
REAL*8, intent(in) :: dphi_dw
end function
end interface
interface
REAL*8 function d2phi_depszx2(d2I6_dezx2, d2wp_dI52, d2wp_dI5dI6, d2wp_dI62, &
d2phi_dv2, d2phi_dvdw, d2phi_dw2, dI5_dezx, dI6_dezx, dezx_depszx, &
dv_dvp, dvp_dI5, dw_dwp, dwp_dI5, dwp_dI6, dphi_dw)
implicit none
REAL*8, intent(in) :: d2I6_dezx2
REAL*8, intent(in) :: d2wp_dI52
REAL*8, intent(in) :: d2wp_dI5dI6
REAL*8, intent(in) :: d2wp_dI62
REAL*8, intent(in) :: d2phi_dv2
REAL*8, intent(in) :: d2phi_dvdw
REAL*8, intent(in) :: d2phi_dw2
REAL*8, intent(in) :: dI5_dezx
REAL*8, intent(in) :: dI6_dezx
REAL*8, intent(in) :: dezx_depszx
REAL*8, intent(in) :: dv_dvp
REAL*8, intent(in) :: dvp_dI5
REAL*8, intent(in) :: dw_dwp
REAL*8, intent(in) :: dwp_dI5
REAL*8, intent(in) :: dwp_dI6
REAL*8, intent(in) :: dphi_dw
end function
end interface
interface
REAL*8 function d2phi_depszxdepszz(d2I6_dexxdezx, d2I6_dezxdezz, d2wp_dI52, &
d2wp_dI5dI6, d2wp_dI62, d2phi_dv2, d2phi_dvdw, d2phi_dw2, &
dI5_dexx, dI5_deyy, dI5_dezx, dI5_dezz, dI6_dexx, dI6_deyy, &
dI6_dezx, dI6_dezz, dexx_depszz, deyy_depszz, dezx_depszx, &
dezz_depszz, dv_dvp, dvp_dI5, dw_dwp, dwp_dI5, dwp_dI6, dphi_dw)
implicit none
REAL*8, intent(in) :: d2I6_dexxdezx
REAL*8, intent(in) :: d2I6_dezxdezz
REAL*8, intent(in) :: d2wp_dI52
REAL*8, intent(in) :: d2wp_dI5dI6
REAL*8, intent(in) :: d2wp_dI62
REAL*8, intent(in) :: d2phi_dv2
REAL*8, intent(in) :: d2phi_dvdw
REAL*8, intent(in) :: d2phi_dw2
REAL*8, intent(in) :: dI5_dexx
REAL*8, intent(in) :: dI5_deyy
REAL*8, intent(in) :: dI5_dezx
REAL*8, intent(in) :: dI5_dezz
REAL*8, intent(in) :: dI6_dexx
REAL*8, intent(in) :: dI6_deyy
REAL*8, intent(in) :: dI6_dezx
REAL*8, intent(in) :: dI6_dezz
REAL*8, intent(in) :: dexx_depszz
REAL*8, intent(in) :: deyy_depszz
REAL*8, intent(in) :: dezx_depszx
REAL*8, intent(in) :: dezz_depszz
REAL*8, intent(in) :: dv_dvp
REAL*8, intent(in) :: dvp_dI5
REAL*8, intent(in) :: dw_dwp
REAL*8, intent(in) :: dwp_dI5
REAL*8, intent(in) :: dwp_dI6
REAL*8, intent(in) :: dphi_dw
end function
end interface
interface
REAL*8 function dphi_depszz(dI5_dexx, dI5_deyy, dI5_dezz, dI6_dexx, dI6_deyy, &
dI6_dezz, dexx_depszz, deyy_depszz, dezz_depszz, dv_dvp, dvp_dI5, &
dw_dwp, dwp_dI5, dwp_dI6, dphi_dv, dphi_dw)
implicit none
REAL*8, intent(in) :: dI5_dexx
REAL*8, intent(in) :: dI5_deyy
REAL*8, intent(in) :: dI5_dezz
REAL*8, intent(in) :: dI6_dexx
REAL*8, intent(in) :: dI6_deyy
REAL*8, intent(in) :: dI6_dezz
REAL*8, intent(in) :: dexx_depszz
REAL*8, intent(in) :: deyy_depszz
REAL*8, intent(in) :: dezz_depszz
REAL*8, intent(in) :: dv_dvp
REAL*8, intent(in) :: dvp_dI5
REAL*8, intent(in) :: dw_dwp
REAL*8, intent(in) :: dwp_dI5
REAL*8, intent(in) :: dwp_dI6
REAL*8, intent(in) :: dphi_dv
REAL*8, intent(in) :: dphi_dw
end function
end interface
interface
REAL*8 function d2phi_depszz2(d2I6_dexx2, d2I6_deyy2, d2I6_dezz2, d2wp_dI52, &
d2wp_dI5dI6, d2wp_dI62, d2phi_dv2, d2phi_dvdw, d2phi_dw2, &
dI5_dexx, dI5_deyy, dI5_dezz, dI6_dexx, dI6_deyy, dI6_dezz, &
dexx_depszz, deyy_depszz, dezz_depszz, dv_dvp, dvp_dI5, dw_dwp, &
dwp_dI5, dwp_dI6, dphi_dw)
implicit none
REAL*8, intent(in) :: d2I6_dexx2
REAL*8, intent(in) :: d2I6_deyy2
REAL*8, intent(in) :: d2I6_dezz2
REAL*8, intent(in) :: d2wp_dI52
REAL*8, intent(in) :: d2wp_dI5dI6
REAL*8, intent(in) :: d2wp_dI62
REAL*8, intent(in) :: d2phi_dv2
REAL*8, intent(in) :: d2phi_dvdw
REAL*8, intent(in) :: d2phi_dw2
REAL*8, intent(in) :: dI5_dexx
REAL*8, intent(in) :: dI5_deyy
REAL*8, intent(in) :: dI5_dezz
REAL*8, intent(in) :: dI6_dexx
REAL*8, intent(in) :: dI6_deyy
REAL*8, intent(in) :: dI6_dezz
REAL*8, intent(in) :: dexx_depszz
REAL*8, intent(in) :: deyy_depszz
REAL*8, intent(in) :: dezz_depszz
REAL*8, intent(in) :: dv_dvp
REAL*8, intent(in) :: dvp_dI5
REAL*8, intent(in) :: dw_dwp
REAL*8, intent(in) :: dwp_dI5
REAL*8, intent(in) :: dwp_dI6
REAL*8, intent(in) :: dphi_dw
end function
end interface
interface
REAL*8 function exx(epsxx, epsyy, epszz)
implicit none
REAL*8, intent(in) :: epsxx
REAL*8, intent(in) :: epsyy
REAL*8, intent(in) :: epszz
end function
end interface
interface
REAL*8 function exy(epsxy)
implicit none
REAL*8, intent(in) :: epsxy
end function
end interface
interface
REAL*8 function eyy(epsxx, epsyy, epszz)
implicit none
REAL*8, intent(in) :: epsxx
REAL*8, intent(in) :: epsyy
REAL*8, intent(in) :: epszz
end function
end interface
interface
REAL*8 function eyz(epsyz)
implicit none
REAL*8, intent(in) :: epsyz
end function
end interface
interface
REAL*8 function ezx(epszx)
implicit none
REAL*8, intent(in) :: epszx
end function
end interface
interface
REAL*8 function ezz(epsxx, epsyy, epszz)
implicit none
REAL*8, intent(in) :: epsxx
REAL*8, intent(in) :: epsyy
REAL*8, intent(in) :: epszz
end function
end interface
interface
REAL*8 function I4(Bx, By, Bz)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: By
REAL*8, intent(in) :: Bz
end function
end interface
interface
REAL*8 function I5(Bx, By, Bz, exx, exy, eyy, eyz, ezx, ezz)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: By
REAL*8, intent(in) :: Bz
REAL*8, intent(in) :: exx
REAL*8, intent(in) :: exy
REAL*8, intent(in) :: eyy
REAL*8, intent(in) :: eyz
REAL*8, intent(in) :: ezx
REAL*8, intent(in) :: ezz
end function
end interface
interface
REAL*8 function I6(Bx, By, Bz, exx, exy, eyy, eyz, ezx, ezz)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: By
REAL*8, intent(in) :: Bz
REAL*8, intent(in) :: exx
REAL*8, intent(in) :: exy
REAL*8, intent(in) :: eyy
REAL*8, intent(in) :: eyz
REAL*8, intent(in) :: ezx
REAL*8, intent(in) :: ezz
end function
end interface
interface
REAL*8 function u(u0, up)
implicit none
REAL*8, intent(in) :: u0
REAL*8, intent(in) :: up
end function
end interface
interface
REAL*8 function up(I4)
implicit none
REAL*8, intent(in) :: I4
end function
end interface
interface
REAL*8 function v(v0, vp)
implicit none
REAL*8, intent(in) :: v0
REAL*8, intent(in) :: vp
end function
end interface
interface
REAL*8 function vp(I4, I5)
implicit none
REAL*8, intent(in) :: I4
REAL*8, intent(in) :: I5
end function
end interface
interface
REAL*8 function w(w0, wp)
implicit none
REAL*8, intent(in) :: w0
REAL*8, intent(in) :: wp
end function
end interface
interface
REAL*8 function wp(I4, I5, I6)
implicit none
REAL*8, intent(in) :: I4
REAL*8, intent(in) :: I5
REAL*8, intent(in) :: I6
end function
end interface
interface
REAL*8 function epsM(epsxx, epsyy, epszz)
implicit none
REAL*8, intent(in) :: epsxx
REAL*8, intent(in) :: epsyy
REAL*8, intent(in) :: epszz
end function
end interface
interface
REAL*8 function phip(phi)
implicit none
REAL*8, intent(in) :: phi
end function
end interface

