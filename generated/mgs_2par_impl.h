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
REAL*8 function d2I5_dBxdexx(Bx)
implicit none
REAL*8, intent(in) :: Bx
end function
end interface
interface
REAL*8 function d2I5_dBxdexy(By)
implicit none
REAL*8, intent(in) :: By
end function
end interface
interface
REAL*8 function d2I5_dBxdezx(Bz)
implicit none
REAL*8, intent(in) :: Bz
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
REAL*8 function d2I5_dBydexy(Bx)
implicit none
REAL*8, intent(in) :: Bx
end function
end interface
interface
REAL*8 function d2I5_dBydeyy(By)
implicit none
REAL*8, intent(in) :: By
end function
end interface
interface
REAL*8 function d2I5_dBydeyz(Bz)
implicit none
REAL*8, intent(in) :: Bz
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
REAL*8 function d2I5_dBzdeyz(By)
implicit none
REAL*8, intent(in) :: By
end function
end interface
interface
REAL*8 function d2I5_dBzdezx(Bx)
implicit none
REAL*8, intent(in) :: Bx
end function
end interface
interface
REAL*8 function d2I5_dBzdezz(Bz)
implicit none
REAL*8, intent(in) :: Bz
end function
end interface
interface
REAL*8 function dI5_dexx(Bx)
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
REAL*8 function dI5_deyy(By)
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
REAL*8 function dI5_dezx(Bx, Bz)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: Bz
end function
end interface
interface
REAL*8 function dI5_dezz(Bz)
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
REAL*8 function d2vp_dI4dI5(I4)
implicit none
REAL*8, intent(in) :: I4
end function
end interface
interface
REAL*8 function dvp_dI5(I4)
implicit none
REAL*8, intent(in) :: I4
end function
end interface
interface
REAL*8 function dphi_dBx(dI4_dBx, dI5_dBx, du_dup, dup_dI4, dv_dvp, dvp_dI4, &
dvp_dI5, dphi_du, dphi_dv)
implicit none
REAL*8, intent(in) :: dI4_dBx
REAL*8, intent(in) :: dI5_dBx
REAL*8, intent(in) :: du_dup
REAL*8, intent(in) :: dup_dI4
REAL*8, intent(in) :: dv_dvp
REAL*8, intent(in) :: dvp_dI4
REAL*8, intent(in) :: dvp_dI5
REAL*8, intent(in) :: dphi_du
REAL*8, intent(in) :: dphi_dv
end function
end interface
interface
REAL*8 function d2phi_dBx2(d2I4_dBx2, d2I5_dBx2, d2up_dI42, d2vp_dI42, &
d2vp_dI4dI5, d2phi_du2, d2phi_dudv, d2phi_dv2, dI4_dBx, dI5_dBx, &
du_dup, dup_dI4, dv_dvp, dvp_dI4, dvp_dI5, dphi_du, dphi_dv)
implicit none
REAL*8, intent(in) :: d2I4_dBx2
REAL*8, intent(in) :: d2I5_dBx2
REAL*8, intent(in) :: d2up_dI42
REAL*8, intent(in) :: d2vp_dI42
REAL*8, intent(in) :: d2vp_dI4dI5
REAL*8, intent(in) :: d2phi_du2
REAL*8, intent(in) :: d2phi_dudv
REAL*8, intent(in) :: d2phi_dv2
REAL*8, intent(in) :: dI4_dBx
REAL*8, intent(in) :: dI5_dBx
REAL*8, intent(in) :: du_dup
REAL*8, intent(in) :: dup_dI4
REAL*8, intent(in) :: dv_dvp
REAL*8, intent(in) :: dvp_dI4
REAL*8, intent(in) :: dvp_dI5
REAL*8, intent(in) :: dphi_du
REAL*8, intent(in) :: dphi_dv
end function
end interface
interface
REAL*8 function d2phi_dBxdBy(d2I5_dBxdBy, d2up_dI42, d2vp_dI42, d2vp_dI4dI5, &
d2phi_du2, d2phi_dudv, d2phi_dv2, dI4_dBx, dI4_dBy, dI5_dBx, &
dI5_dBy, du_dup, dup_dI4, dv_dvp, dvp_dI4, dvp_dI5, dphi_du, &
dphi_dv)
implicit none
REAL*8, intent(in) :: d2I5_dBxdBy
REAL*8, intent(in) :: d2up_dI42
REAL*8, intent(in) :: d2vp_dI42
REAL*8, intent(in) :: d2vp_dI4dI5
REAL*8, intent(in) :: d2phi_du2
REAL*8, intent(in) :: d2phi_dudv
REAL*8, intent(in) :: d2phi_dv2
REAL*8, intent(in) :: dI4_dBx
REAL*8, intent(in) :: dI4_dBy
REAL*8, intent(in) :: dI5_dBx
REAL*8, intent(in) :: dI5_dBy
REAL*8, intent(in) :: du_dup
REAL*8, intent(in) :: dup_dI4
REAL*8, intent(in) :: dv_dvp
REAL*8, intent(in) :: dvp_dI4
REAL*8, intent(in) :: dvp_dI5
REAL*8, intent(in) :: dphi_du
REAL*8, intent(in) :: dphi_dv
end function
end interface
interface
REAL*8 function d2phi_dBxdBz(d2I5_dBxdBz, d2up_dI42, d2vp_dI42, d2vp_dI4dI5, &
d2phi_du2, d2phi_dudv, d2phi_dv2, dI4_dBx, dI4_dBz, dI5_dBx, &
dI5_dBz, du_dup, dup_dI4, dv_dvp, dvp_dI4, dvp_dI5, dphi_du, &
dphi_dv)
implicit none
REAL*8, intent(in) :: d2I5_dBxdBz
REAL*8, intent(in) :: d2up_dI42
REAL*8, intent(in) :: d2vp_dI42
REAL*8, intent(in) :: d2vp_dI4dI5
REAL*8, intent(in) :: d2phi_du2
REAL*8, intent(in) :: d2phi_dudv
REAL*8, intent(in) :: d2phi_dv2
REAL*8, intent(in) :: dI4_dBx
REAL*8, intent(in) :: dI4_dBz
REAL*8, intent(in) :: dI5_dBx
REAL*8, intent(in) :: dI5_dBz
REAL*8, intent(in) :: du_dup
REAL*8, intent(in) :: dup_dI4
REAL*8, intent(in) :: dv_dvp
REAL*8, intent(in) :: dvp_dI4
REAL*8, intent(in) :: dvp_dI5
REAL*8, intent(in) :: dphi_du
REAL*8, intent(in) :: dphi_dv
end function
end interface
interface
REAL*8 function d2phi_dBxdepsxx(d2I5_dBxdexx, d2vp_dI4dI5, d2phi_dudv, d2phi_dv2, &
dI4_dBx, dI5_dBx, dI5_dexx, dI5_deyy, dI5_dezz, dexx_depsxx, &
deyy_depsxx, dezz_depsxx, du_dup, dup_dI4, dv_dvp, dvp_dI4, &
dvp_dI5, dphi_dv)
implicit none
REAL*8, intent(in) :: d2I5_dBxdexx
REAL*8, intent(in) :: d2vp_dI4dI5
REAL*8, intent(in) :: d2phi_dudv
REAL*8, intent(in) :: d2phi_dv2
REAL*8, intent(in) :: dI4_dBx
REAL*8, intent(in) :: dI5_dBx
REAL*8, intent(in) :: dI5_dexx
REAL*8, intent(in) :: dI5_deyy
REAL*8, intent(in) :: dI5_dezz
REAL*8, intent(in) :: dexx_depsxx
REAL*8, intent(in) :: deyy_depsxx
REAL*8, intent(in) :: dezz_depsxx
REAL*8, intent(in) :: du_dup
REAL*8, intent(in) :: dup_dI4
REAL*8, intent(in) :: dv_dvp
REAL*8, intent(in) :: dvp_dI4
REAL*8, intent(in) :: dvp_dI5
REAL*8, intent(in) :: dphi_dv
end function
end interface
interface
REAL*8 function d2phi_dBxdepsxy(d2I5_dBxdexy, d2vp_dI4dI5, d2phi_dudv, d2phi_dv2, &
dI4_dBx, dI5_dBx, dI5_dexy, dexy_depsxy, du_dup, dup_dI4, &
dv_dvp, dvp_dI4, dvp_dI5, dphi_dv)
implicit none
REAL*8, intent(in) :: d2I5_dBxdexy
REAL*8, intent(in) :: d2vp_dI4dI5
REAL*8, intent(in) :: d2phi_dudv
REAL*8, intent(in) :: d2phi_dv2
REAL*8, intent(in) :: dI4_dBx
REAL*8, intent(in) :: dI5_dBx
REAL*8, intent(in) :: dI5_dexy
REAL*8, intent(in) :: dexy_depsxy
REAL*8, intent(in) :: du_dup
REAL*8, intent(in) :: dup_dI4
REAL*8, intent(in) :: dv_dvp
REAL*8, intent(in) :: dvp_dI4
REAL*8, intent(in) :: dvp_dI5
REAL*8, intent(in) :: dphi_dv
end function
end interface
interface
REAL*8 function d2phi_dBxdepsyy(d2I5_dBxdexx, d2vp_dI4dI5, d2phi_dudv, d2phi_dv2, &
dI4_dBx, dI5_dBx, dI5_dexx, dI5_deyy, dI5_dezz, dexx_depsyy, &
deyy_depsyy, dezz_depsyy, du_dup, dup_dI4, dv_dvp, dvp_dI4, &
dvp_dI5, dphi_dv)
implicit none
REAL*8, intent(in) :: d2I5_dBxdexx
REAL*8, intent(in) :: d2vp_dI4dI5
REAL*8, intent(in) :: d2phi_dudv
REAL*8, intent(in) :: d2phi_dv2
REAL*8, intent(in) :: dI4_dBx
REAL*8, intent(in) :: dI5_dBx
REAL*8, intent(in) :: dI5_dexx
REAL*8, intent(in) :: dI5_deyy
REAL*8, intent(in) :: dI5_dezz
REAL*8, intent(in) :: dexx_depsyy
REAL*8, intent(in) :: deyy_depsyy
REAL*8, intent(in) :: dezz_depsyy
REAL*8, intent(in) :: du_dup
REAL*8, intent(in) :: dup_dI4
REAL*8, intent(in) :: dv_dvp
REAL*8, intent(in) :: dvp_dI4
REAL*8, intent(in) :: dvp_dI5
REAL*8, intent(in) :: dphi_dv
end function
end interface
interface
REAL*8 function d2phi_dBxdepsyz(d2vp_dI4dI5, d2phi_dudv, d2phi_dv2, dI4_dBx, &
dI5_dBx, dI5_deyz, deyz_depsyz, du_dup, dup_dI4, dv_dvp, &
dvp_dI4, dvp_dI5, dphi_dv)
implicit none
REAL*8, intent(in) :: d2vp_dI4dI5
REAL*8, intent(in) :: d2phi_dudv
REAL*8, intent(in) :: d2phi_dv2
REAL*8, intent(in) :: dI4_dBx
REAL*8, intent(in) :: dI5_dBx
REAL*8, intent(in) :: dI5_deyz
REAL*8, intent(in) :: deyz_depsyz
REAL*8, intent(in) :: du_dup
REAL*8, intent(in) :: dup_dI4
REAL*8, intent(in) :: dv_dvp
REAL*8, intent(in) :: dvp_dI4
REAL*8, intent(in) :: dvp_dI5
REAL*8, intent(in) :: dphi_dv
end function
end interface
interface
REAL*8 function d2phi_dBxdepszx(d2I5_dBxdezx, d2vp_dI4dI5, d2phi_dudv, d2phi_dv2, &
dI4_dBx, dI5_dBx, dI5_dezx, dezx_depszx, du_dup, dup_dI4, &
dv_dvp, dvp_dI4, dvp_dI5, dphi_dv)
implicit none
REAL*8, intent(in) :: d2I5_dBxdezx
REAL*8, intent(in) :: d2vp_dI4dI5
REAL*8, intent(in) :: d2phi_dudv
REAL*8, intent(in) :: d2phi_dv2
REAL*8, intent(in) :: dI4_dBx
REAL*8, intent(in) :: dI5_dBx
REAL*8, intent(in) :: dI5_dezx
REAL*8, intent(in) :: dezx_depszx
REAL*8, intent(in) :: du_dup
REAL*8, intent(in) :: dup_dI4
REAL*8, intent(in) :: dv_dvp
REAL*8, intent(in) :: dvp_dI4
REAL*8, intent(in) :: dvp_dI5
REAL*8, intent(in) :: dphi_dv
end function
end interface
interface
REAL*8 function d2phi_dBxdepszz(d2I5_dBxdexx, d2vp_dI4dI5, d2phi_dudv, d2phi_dv2, &
dI4_dBx, dI5_dBx, dI5_dexx, dI5_deyy, dI5_dezz, dexx_depszz, &
deyy_depszz, dezz_depszz, du_dup, dup_dI4, dv_dvp, dvp_dI4, &
dvp_dI5, dphi_dv)
implicit none
REAL*8, intent(in) :: d2I5_dBxdexx
REAL*8, intent(in) :: d2vp_dI4dI5
REAL*8, intent(in) :: d2phi_dudv
REAL*8, intent(in) :: d2phi_dv2
REAL*8, intent(in) :: dI4_dBx
REAL*8, intent(in) :: dI5_dBx
REAL*8, intent(in) :: dI5_dexx
REAL*8, intent(in) :: dI5_deyy
REAL*8, intent(in) :: dI5_dezz
REAL*8, intent(in) :: dexx_depszz
REAL*8, intent(in) :: deyy_depszz
REAL*8, intent(in) :: dezz_depszz
REAL*8, intent(in) :: du_dup
REAL*8, intent(in) :: dup_dI4
REAL*8, intent(in) :: dv_dvp
REAL*8, intent(in) :: dvp_dI4
REAL*8, intent(in) :: dvp_dI5
REAL*8, intent(in) :: dphi_dv
end function
end interface
interface
REAL*8 function dphi_dBy(dI4_dBy, dI5_dBy, du_dup, dup_dI4, dv_dvp, dvp_dI4, &
dvp_dI5, dphi_du, dphi_dv)
implicit none
REAL*8, intent(in) :: dI4_dBy
REAL*8, intent(in) :: dI5_dBy
REAL*8, intent(in) :: du_dup
REAL*8, intent(in) :: dup_dI4
REAL*8, intent(in) :: dv_dvp
REAL*8, intent(in) :: dvp_dI4
REAL*8, intent(in) :: dvp_dI5
REAL*8, intent(in) :: dphi_du
REAL*8, intent(in) :: dphi_dv
end function
end interface
interface
REAL*8 function d2phi_dBy2(d2I4_dBy2, d2I5_dBy2, d2up_dI42, d2vp_dI42, &
d2vp_dI4dI5, d2phi_du2, d2phi_dudv, d2phi_dv2, dI4_dBy, dI5_dBy, &
du_dup, dup_dI4, dv_dvp, dvp_dI4, dvp_dI5, dphi_du, dphi_dv)
implicit none
REAL*8, intent(in) :: d2I4_dBy2
REAL*8, intent(in) :: d2I5_dBy2
REAL*8, intent(in) :: d2up_dI42
REAL*8, intent(in) :: d2vp_dI42
REAL*8, intent(in) :: d2vp_dI4dI5
REAL*8, intent(in) :: d2phi_du2
REAL*8, intent(in) :: d2phi_dudv
REAL*8, intent(in) :: d2phi_dv2
REAL*8, intent(in) :: dI4_dBy
REAL*8, intent(in) :: dI5_dBy
REAL*8, intent(in) :: du_dup
REAL*8, intent(in) :: dup_dI4
REAL*8, intent(in) :: dv_dvp
REAL*8, intent(in) :: dvp_dI4
REAL*8, intent(in) :: dvp_dI5
REAL*8, intent(in) :: dphi_du
REAL*8, intent(in) :: dphi_dv
end function
end interface
interface
REAL*8 function d2phi_dBydBz(d2I5_dBydBz, d2up_dI42, d2vp_dI42, d2vp_dI4dI5, &
d2phi_du2, d2phi_dudv, d2phi_dv2, dI4_dBy, dI4_dBz, dI5_dBy, &
dI5_dBz, du_dup, dup_dI4, dv_dvp, dvp_dI4, dvp_dI5, dphi_du, &
dphi_dv)
implicit none
REAL*8, intent(in) :: d2I5_dBydBz
REAL*8, intent(in) :: d2up_dI42
REAL*8, intent(in) :: d2vp_dI42
REAL*8, intent(in) :: d2vp_dI4dI5
REAL*8, intent(in) :: d2phi_du2
REAL*8, intent(in) :: d2phi_dudv
REAL*8, intent(in) :: d2phi_dv2
REAL*8, intent(in) :: dI4_dBy
REAL*8, intent(in) :: dI4_dBz
REAL*8, intent(in) :: dI5_dBy
REAL*8, intent(in) :: dI5_dBz
REAL*8, intent(in) :: du_dup
REAL*8, intent(in) :: dup_dI4
REAL*8, intent(in) :: dv_dvp
REAL*8, intent(in) :: dvp_dI4
REAL*8, intent(in) :: dvp_dI5
REAL*8, intent(in) :: dphi_du
REAL*8, intent(in) :: dphi_dv
end function
end interface
interface
REAL*8 function d2phi_dBydepsxx(d2I5_dBydeyy, d2vp_dI4dI5, d2phi_dudv, d2phi_dv2, &
dI4_dBy, dI5_dBy, dI5_dexx, dI5_deyy, dI5_dezz, dexx_depsxx, &
deyy_depsxx, dezz_depsxx, du_dup, dup_dI4, dv_dvp, dvp_dI4, &
dvp_dI5, dphi_dv)
implicit none
REAL*8, intent(in) :: d2I5_dBydeyy
REAL*8, intent(in) :: d2vp_dI4dI5
REAL*8, intent(in) :: d2phi_dudv
REAL*8, intent(in) :: d2phi_dv2
REAL*8, intent(in) :: dI4_dBy
REAL*8, intent(in) :: dI5_dBy
REAL*8, intent(in) :: dI5_dexx
REAL*8, intent(in) :: dI5_deyy
REAL*8, intent(in) :: dI5_dezz
REAL*8, intent(in) :: dexx_depsxx
REAL*8, intent(in) :: deyy_depsxx
REAL*8, intent(in) :: dezz_depsxx
REAL*8, intent(in) :: du_dup
REAL*8, intent(in) :: dup_dI4
REAL*8, intent(in) :: dv_dvp
REAL*8, intent(in) :: dvp_dI4
REAL*8, intent(in) :: dvp_dI5
REAL*8, intent(in) :: dphi_dv
end function
end interface
interface
REAL*8 function d2phi_dBydepsxy(d2I5_dBydexy, d2vp_dI4dI5, d2phi_dudv, d2phi_dv2, &
dI4_dBy, dI5_dBy, dI5_dexy, dexy_depsxy, du_dup, dup_dI4, &
dv_dvp, dvp_dI4, dvp_dI5, dphi_dv)
implicit none
REAL*8, intent(in) :: d2I5_dBydexy
REAL*8, intent(in) :: d2vp_dI4dI5
REAL*8, intent(in) :: d2phi_dudv
REAL*8, intent(in) :: d2phi_dv2
REAL*8, intent(in) :: dI4_dBy
REAL*8, intent(in) :: dI5_dBy
REAL*8, intent(in) :: dI5_dexy
REAL*8, intent(in) :: dexy_depsxy
REAL*8, intent(in) :: du_dup
REAL*8, intent(in) :: dup_dI4
REAL*8, intent(in) :: dv_dvp
REAL*8, intent(in) :: dvp_dI4
REAL*8, intent(in) :: dvp_dI5
REAL*8, intent(in) :: dphi_dv
end function
end interface
interface
REAL*8 function d2phi_dBydepsyy(d2I5_dBydeyy, d2vp_dI4dI5, d2phi_dudv, d2phi_dv2, &
dI4_dBy, dI5_dBy, dI5_dexx, dI5_deyy, dI5_dezz, dexx_depsyy, &
deyy_depsyy, dezz_depsyy, du_dup, dup_dI4, dv_dvp, dvp_dI4, &
dvp_dI5, dphi_dv)
implicit none
REAL*8, intent(in) :: d2I5_dBydeyy
REAL*8, intent(in) :: d2vp_dI4dI5
REAL*8, intent(in) :: d2phi_dudv
REAL*8, intent(in) :: d2phi_dv2
REAL*8, intent(in) :: dI4_dBy
REAL*8, intent(in) :: dI5_dBy
REAL*8, intent(in) :: dI5_dexx
REAL*8, intent(in) :: dI5_deyy
REAL*8, intent(in) :: dI5_dezz
REAL*8, intent(in) :: dexx_depsyy
REAL*8, intent(in) :: deyy_depsyy
REAL*8, intent(in) :: dezz_depsyy
REAL*8, intent(in) :: du_dup
REAL*8, intent(in) :: dup_dI4
REAL*8, intent(in) :: dv_dvp
REAL*8, intent(in) :: dvp_dI4
REAL*8, intent(in) :: dvp_dI5
REAL*8, intent(in) :: dphi_dv
end function
end interface
interface
REAL*8 function d2phi_dBydepsyz(d2I5_dBydeyz, d2vp_dI4dI5, d2phi_dudv, d2phi_dv2, &
dI4_dBy, dI5_dBy, dI5_deyz, deyz_depsyz, du_dup, dup_dI4, &
dv_dvp, dvp_dI4, dvp_dI5, dphi_dv)
implicit none
REAL*8, intent(in) :: d2I5_dBydeyz
REAL*8, intent(in) :: d2vp_dI4dI5
REAL*8, intent(in) :: d2phi_dudv
REAL*8, intent(in) :: d2phi_dv2
REAL*8, intent(in) :: dI4_dBy
REAL*8, intent(in) :: dI5_dBy
REAL*8, intent(in) :: dI5_deyz
REAL*8, intent(in) :: deyz_depsyz
REAL*8, intent(in) :: du_dup
REAL*8, intent(in) :: dup_dI4
REAL*8, intent(in) :: dv_dvp
REAL*8, intent(in) :: dvp_dI4
REAL*8, intent(in) :: dvp_dI5
REAL*8, intent(in) :: dphi_dv
end function
end interface
interface
REAL*8 function d2phi_dBydepszx(d2vp_dI4dI5, d2phi_dudv, d2phi_dv2, dI4_dBy, &
dI5_dBy, dI5_dezx, dezx_depszx, du_dup, dup_dI4, dv_dvp, &
dvp_dI4, dvp_dI5, dphi_dv)
implicit none
REAL*8, intent(in) :: d2vp_dI4dI5
REAL*8, intent(in) :: d2phi_dudv
REAL*8, intent(in) :: d2phi_dv2
REAL*8, intent(in) :: dI4_dBy
REAL*8, intent(in) :: dI5_dBy
REAL*8, intent(in) :: dI5_dezx
REAL*8, intent(in) :: dezx_depszx
REAL*8, intent(in) :: du_dup
REAL*8, intent(in) :: dup_dI4
REAL*8, intent(in) :: dv_dvp
REAL*8, intent(in) :: dvp_dI4
REAL*8, intent(in) :: dvp_dI5
REAL*8, intent(in) :: dphi_dv
end function
end interface
interface
REAL*8 function d2phi_dBydepszz(d2I5_dBydeyy, d2vp_dI4dI5, d2phi_dudv, d2phi_dv2, &
dI4_dBy, dI5_dBy, dI5_dexx, dI5_deyy, dI5_dezz, dexx_depszz, &
deyy_depszz, dezz_depszz, du_dup, dup_dI4, dv_dvp, dvp_dI4, &
dvp_dI5, dphi_dv)
implicit none
REAL*8, intent(in) :: d2I5_dBydeyy
REAL*8, intent(in) :: d2vp_dI4dI5
REAL*8, intent(in) :: d2phi_dudv
REAL*8, intent(in) :: d2phi_dv2
REAL*8, intent(in) :: dI4_dBy
REAL*8, intent(in) :: dI5_dBy
REAL*8, intent(in) :: dI5_dexx
REAL*8, intent(in) :: dI5_deyy
REAL*8, intent(in) :: dI5_dezz
REAL*8, intent(in) :: dexx_depszz
REAL*8, intent(in) :: deyy_depszz
REAL*8, intent(in) :: dezz_depszz
REAL*8, intent(in) :: du_dup
REAL*8, intent(in) :: dup_dI4
REAL*8, intent(in) :: dv_dvp
REAL*8, intent(in) :: dvp_dI4
REAL*8, intent(in) :: dvp_dI5
REAL*8, intent(in) :: dphi_dv
end function
end interface
interface
REAL*8 function dphi_dBz(dI4_dBz, dI5_dBz, du_dup, dup_dI4, dv_dvp, dvp_dI4, &
dvp_dI5, dphi_du, dphi_dv)
implicit none
REAL*8, intent(in) :: dI4_dBz
REAL*8, intent(in) :: dI5_dBz
REAL*8, intent(in) :: du_dup
REAL*8, intent(in) :: dup_dI4
REAL*8, intent(in) :: dv_dvp
REAL*8, intent(in) :: dvp_dI4
REAL*8, intent(in) :: dvp_dI5
REAL*8, intent(in) :: dphi_du
REAL*8, intent(in) :: dphi_dv
end function
end interface
interface
REAL*8 function d2phi_dBz2(d2I4_dBz2, d2I5_dBz2, d2up_dI42, d2vp_dI42, &
d2vp_dI4dI5, d2phi_du2, d2phi_dudv, d2phi_dv2, dI4_dBz, dI5_dBz, &
du_dup, dup_dI4, dv_dvp, dvp_dI4, dvp_dI5, dphi_du, dphi_dv)
implicit none
REAL*8, intent(in) :: d2I4_dBz2
REAL*8, intent(in) :: d2I5_dBz2
REAL*8, intent(in) :: d2up_dI42
REAL*8, intent(in) :: d2vp_dI42
REAL*8, intent(in) :: d2vp_dI4dI5
REAL*8, intent(in) :: d2phi_du2
REAL*8, intent(in) :: d2phi_dudv
REAL*8, intent(in) :: d2phi_dv2
REAL*8, intent(in) :: dI4_dBz
REAL*8, intent(in) :: dI5_dBz
REAL*8, intent(in) :: du_dup
REAL*8, intent(in) :: dup_dI4
REAL*8, intent(in) :: dv_dvp
REAL*8, intent(in) :: dvp_dI4
REAL*8, intent(in) :: dvp_dI5
REAL*8, intent(in) :: dphi_du
REAL*8, intent(in) :: dphi_dv
end function
end interface
interface
REAL*8 function d2phi_dBzdepsxx(d2I5_dBzdezz, d2vp_dI4dI5, d2phi_dudv, d2phi_dv2, &
dI4_dBz, dI5_dBz, dI5_dexx, dI5_deyy, dI5_dezz, dexx_depsxx, &
deyy_depsxx, dezz_depsxx, du_dup, dup_dI4, dv_dvp, dvp_dI4, &
dvp_dI5, dphi_dv)
implicit none
REAL*8, intent(in) :: d2I5_dBzdezz
REAL*8, intent(in) :: d2vp_dI4dI5
REAL*8, intent(in) :: d2phi_dudv
REAL*8, intent(in) :: d2phi_dv2
REAL*8, intent(in) :: dI4_dBz
REAL*8, intent(in) :: dI5_dBz
REAL*8, intent(in) :: dI5_dexx
REAL*8, intent(in) :: dI5_deyy
REAL*8, intent(in) :: dI5_dezz
REAL*8, intent(in) :: dexx_depsxx
REAL*8, intent(in) :: deyy_depsxx
REAL*8, intent(in) :: dezz_depsxx
REAL*8, intent(in) :: du_dup
REAL*8, intent(in) :: dup_dI4
REAL*8, intent(in) :: dv_dvp
REAL*8, intent(in) :: dvp_dI4
REAL*8, intent(in) :: dvp_dI5
REAL*8, intent(in) :: dphi_dv
end function
end interface
interface
REAL*8 function d2phi_dBzdepsxy(d2vp_dI4dI5, d2phi_dudv, d2phi_dv2, dI4_dBz, &
dI5_dBz, dI5_dexy, dexy_depsxy, du_dup, dup_dI4, dv_dvp, &
dvp_dI4, dvp_dI5, dphi_dv)
implicit none
REAL*8, intent(in) :: d2vp_dI4dI5
REAL*8, intent(in) :: d2phi_dudv
REAL*8, intent(in) :: d2phi_dv2
REAL*8, intent(in) :: dI4_dBz
REAL*8, intent(in) :: dI5_dBz
REAL*8, intent(in) :: dI5_dexy
REAL*8, intent(in) :: dexy_depsxy
REAL*8, intent(in) :: du_dup
REAL*8, intent(in) :: dup_dI4
REAL*8, intent(in) :: dv_dvp
REAL*8, intent(in) :: dvp_dI4
REAL*8, intent(in) :: dvp_dI5
REAL*8, intent(in) :: dphi_dv
end function
end interface
interface
REAL*8 function d2phi_dBzdepsyy(d2I5_dBzdezz, d2vp_dI4dI5, d2phi_dudv, d2phi_dv2, &
dI4_dBz, dI5_dBz, dI5_dexx, dI5_deyy, dI5_dezz, dexx_depsyy, &
deyy_depsyy, dezz_depsyy, du_dup, dup_dI4, dv_dvp, dvp_dI4, &
dvp_dI5, dphi_dv)
implicit none
REAL*8, intent(in) :: d2I5_dBzdezz
REAL*8, intent(in) :: d2vp_dI4dI5
REAL*8, intent(in) :: d2phi_dudv
REAL*8, intent(in) :: d2phi_dv2
REAL*8, intent(in) :: dI4_dBz
REAL*8, intent(in) :: dI5_dBz
REAL*8, intent(in) :: dI5_dexx
REAL*8, intent(in) :: dI5_deyy
REAL*8, intent(in) :: dI5_dezz
REAL*8, intent(in) :: dexx_depsyy
REAL*8, intent(in) :: deyy_depsyy
REAL*8, intent(in) :: dezz_depsyy
REAL*8, intent(in) :: du_dup
REAL*8, intent(in) :: dup_dI4
REAL*8, intent(in) :: dv_dvp
REAL*8, intent(in) :: dvp_dI4
REAL*8, intent(in) :: dvp_dI5
REAL*8, intent(in) :: dphi_dv
end function
end interface
interface
REAL*8 function d2phi_dBzdepsyz(d2I5_dBzdeyz, d2vp_dI4dI5, d2phi_dudv, d2phi_dv2, &
dI4_dBz, dI5_dBz, dI5_deyz, deyz_depsyz, du_dup, dup_dI4, &
dv_dvp, dvp_dI4, dvp_dI5, dphi_dv)
implicit none
REAL*8, intent(in) :: d2I5_dBzdeyz
REAL*8, intent(in) :: d2vp_dI4dI5
REAL*8, intent(in) :: d2phi_dudv
REAL*8, intent(in) :: d2phi_dv2
REAL*8, intent(in) :: dI4_dBz
REAL*8, intent(in) :: dI5_dBz
REAL*8, intent(in) :: dI5_deyz
REAL*8, intent(in) :: deyz_depsyz
REAL*8, intent(in) :: du_dup
REAL*8, intent(in) :: dup_dI4
REAL*8, intent(in) :: dv_dvp
REAL*8, intent(in) :: dvp_dI4
REAL*8, intent(in) :: dvp_dI5
REAL*8, intent(in) :: dphi_dv
end function
end interface
interface
REAL*8 function d2phi_dBzdepszx(d2I5_dBzdezx, d2vp_dI4dI5, d2phi_dudv, d2phi_dv2, &
dI4_dBz, dI5_dBz, dI5_dezx, dezx_depszx, du_dup, dup_dI4, &
dv_dvp, dvp_dI4, dvp_dI5, dphi_dv)
implicit none
REAL*8, intent(in) :: d2I5_dBzdezx
REAL*8, intent(in) :: d2vp_dI4dI5
REAL*8, intent(in) :: d2phi_dudv
REAL*8, intent(in) :: d2phi_dv2
REAL*8, intent(in) :: dI4_dBz
REAL*8, intent(in) :: dI5_dBz
REAL*8, intent(in) :: dI5_dezx
REAL*8, intent(in) :: dezx_depszx
REAL*8, intent(in) :: du_dup
REAL*8, intent(in) :: dup_dI4
REAL*8, intent(in) :: dv_dvp
REAL*8, intent(in) :: dvp_dI4
REAL*8, intent(in) :: dvp_dI5
REAL*8, intent(in) :: dphi_dv
end function
end interface
interface
REAL*8 function d2phi_dBzdepszz(d2I5_dBzdezz, d2vp_dI4dI5, d2phi_dudv, d2phi_dv2, &
dI4_dBz, dI5_dBz, dI5_dexx, dI5_deyy, dI5_dezz, dexx_depszz, &
deyy_depszz, dezz_depszz, du_dup, dup_dI4, dv_dvp, dvp_dI4, &
dvp_dI5, dphi_dv)
implicit none
REAL*8, intent(in) :: d2I5_dBzdezz
REAL*8, intent(in) :: d2vp_dI4dI5
REAL*8, intent(in) :: d2phi_dudv
REAL*8, intent(in) :: d2phi_dv2
REAL*8, intent(in) :: dI4_dBz
REAL*8, intent(in) :: dI5_dBz
REAL*8, intent(in) :: dI5_dexx
REAL*8, intent(in) :: dI5_deyy
REAL*8, intent(in) :: dI5_dezz
REAL*8, intent(in) :: dexx_depszz
REAL*8, intent(in) :: deyy_depszz
REAL*8, intent(in) :: dezz_depszz
REAL*8, intent(in) :: du_dup
REAL*8, intent(in) :: dup_dI4
REAL*8, intent(in) :: dv_dvp
REAL*8, intent(in) :: dvp_dI4
REAL*8, intent(in) :: dvp_dI5
REAL*8, intent(in) :: dphi_dv
end function
end interface
interface
REAL*8 function dphi_depsxx(dI5_dexx, dI5_deyy, dI5_dezz, dexx_depsxx, deyy_depsxx, &
dezz_depsxx, dv_dvp, dvp_dI5, dphi_dv)
implicit none
REAL*8, intent(in) :: dI5_dexx
REAL*8, intent(in) :: dI5_deyy
REAL*8, intent(in) :: dI5_dezz
REAL*8, intent(in) :: dexx_depsxx
REAL*8, intent(in) :: deyy_depsxx
REAL*8, intent(in) :: dezz_depsxx
REAL*8, intent(in) :: dv_dvp
REAL*8, intent(in) :: dvp_dI5
REAL*8, intent(in) :: dphi_dv
end function
end interface
interface
REAL*8 function d2phi_depsxx2(d2phi_dv2, dI5_dexx, dI5_deyy, dI5_dezz, dexx_depsxx, &
deyy_depsxx, dezz_depsxx, dv_dvp, dvp_dI5)
implicit none
REAL*8, intent(in) :: d2phi_dv2
REAL*8, intent(in) :: dI5_dexx
REAL*8, intent(in) :: dI5_deyy
REAL*8, intent(in) :: dI5_dezz
REAL*8, intent(in) :: dexx_depsxx
REAL*8, intent(in) :: deyy_depsxx
REAL*8, intent(in) :: dezz_depsxx
REAL*8, intent(in) :: dv_dvp
REAL*8, intent(in) :: dvp_dI5
end function
end interface
interface
REAL*8 function d2phi_depsxxdepsxy(d2phi_dv2, dI5_dexx, dI5_dexy, dI5_deyy, &
dI5_dezz, dexx_depsxx, dexy_depsxy, deyy_depsxx, dezz_depsxx, &
dv_dvp, dvp_dI5)
implicit none
REAL*8, intent(in) :: d2phi_dv2
REAL*8, intent(in) :: dI5_dexx
REAL*8, intent(in) :: dI5_dexy
REAL*8, intent(in) :: dI5_deyy
REAL*8, intent(in) :: dI5_dezz
REAL*8, intent(in) :: dexx_depsxx
REAL*8, intent(in) :: dexy_depsxy
REAL*8, intent(in) :: deyy_depsxx
REAL*8, intent(in) :: dezz_depsxx
REAL*8, intent(in) :: dv_dvp
REAL*8, intent(in) :: dvp_dI5
end function
end interface
interface
REAL*8 function d2phi_depsxxdepsyy(d2phi_dv2, dI5_dexx, dI5_deyy, dI5_dezz, &
dexx_depsxx, dexx_depsyy, deyy_depsxx, deyy_depsyy, dezz_depsxx, &
dezz_depsyy, dv_dvp, dvp_dI5)
implicit none
REAL*8, intent(in) :: d2phi_dv2
REAL*8, intent(in) :: dI5_dexx
REAL*8, intent(in) :: dI5_deyy
REAL*8, intent(in) :: dI5_dezz
REAL*8, intent(in) :: dexx_depsxx
REAL*8, intent(in) :: dexx_depsyy
REAL*8, intent(in) :: deyy_depsxx
REAL*8, intent(in) :: deyy_depsyy
REAL*8, intent(in) :: dezz_depsxx
REAL*8, intent(in) :: dezz_depsyy
REAL*8, intent(in) :: dv_dvp
REAL*8, intent(in) :: dvp_dI5
end function
end interface
interface
REAL*8 function d2phi_depsxxdepsyz(d2phi_dv2, dI5_dexx, dI5_deyy, dI5_deyz, &
dI5_dezz, dexx_depsxx, deyy_depsxx, deyz_depsyz, dezz_depsxx, &
dv_dvp, dvp_dI5)
implicit none
REAL*8, intent(in) :: d2phi_dv2
REAL*8, intent(in) :: dI5_dexx
REAL*8, intent(in) :: dI5_deyy
REAL*8, intent(in) :: dI5_deyz
REAL*8, intent(in) :: dI5_dezz
REAL*8, intent(in) :: dexx_depsxx
REAL*8, intent(in) :: deyy_depsxx
REAL*8, intent(in) :: deyz_depsyz
REAL*8, intent(in) :: dezz_depsxx
REAL*8, intent(in) :: dv_dvp
REAL*8, intent(in) :: dvp_dI5
end function
end interface
interface
REAL*8 function d2phi_depsxxdepszx(d2phi_dv2, dI5_dexx, dI5_deyy, dI5_dezx, &
dI5_dezz, dexx_depsxx, deyy_depsxx, dezx_depszx, dezz_depsxx, &
dv_dvp, dvp_dI5)
implicit none
REAL*8, intent(in) :: d2phi_dv2
REAL*8, intent(in) :: dI5_dexx
REAL*8, intent(in) :: dI5_deyy
REAL*8, intent(in) :: dI5_dezx
REAL*8, intent(in) :: dI5_dezz
REAL*8, intent(in) :: dexx_depsxx
REAL*8, intent(in) :: deyy_depsxx
REAL*8, intent(in) :: dezx_depszx
REAL*8, intent(in) :: dezz_depsxx
REAL*8, intent(in) :: dv_dvp
REAL*8, intent(in) :: dvp_dI5
end function
end interface
interface
REAL*8 function d2phi_depsxxdepszz(d2phi_dv2, dI5_dexx, dI5_deyy, dI5_dezz, &
dexx_depsxx, dexx_depszz, deyy_depsxx, deyy_depszz, dezz_depsxx, &
dezz_depszz, dv_dvp, dvp_dI5)
implicit none
REAL*8, intent(in) :: d2phi_dv2
REAL*8, intent(in) :: dI5_dexx
REAL*8, intent(in) :: dI5_deyy
REAL*8, intent(in) :: dI5_dezz
REAL*8, intent(in) :: dexx_depsxx
REAL*8, intent(in) :: dexx_depszz
REAL*8, intent(in) :: deyy_depsxx
REAL*8, intent(in) :: deyy_depszz
REAL*8, intent(in) :: dezz_depsxx
REAL*8, intent(in) :: dezz_depszz
REAL*8, intent(in) :: dv_dvp
REAL*8, intent(in) :: dvp_dI5
end function
end interface
interface
REAL*8 function dphi_depsxy(dI5_dexy, dexy_depsxy, dv_dvp, dvp_dI5, dphi_dv)
implicit none
REAL*8, intent(in) :: dI5_dexy
REAL*8, intent(in) :: dexy_depsxy
REAL*8, intent(in) :: dv_dvp
REAL*8, intent(in) :: dvp_dI5
REAL*8, intent(in) :: dphi_dv
end function
end interface
interface
REAL*8 function d2phi_depsxy2(d2phi_dv2, dI5_dexy, dexy_depsxy, dv_dvp, dvp_dI5)
implicit none
REAL*8, intent(in) :: d2phi_dv2
REAL*8, intent(in) :: dI5_dexy
REAL*8, intent(in) :: dexy_depsxy
REAL*8, intent(in) :: dv_dvp
REAL*8, intent(in) :: dvp_dI5
end function
end interface
interface
REAL*8 function d2phi_depsxydepsyy(d2phi_dv2, dI5_dexx, dI5_dexy, dI5_deyy, &
dI5_dezz, dexx_depsyy, dexy_depsxy, deyy_depsyy, dezz_depsyy, &
dv_dvp, dvp_dI5)
implicit none
REAL*8, intent(in) :: d2phi_dv2
REAL*8, intent(in) :: dI5_dexx
REAL*8, intent(in) :: dI5_dexy
REAL*8, intent(in) :: dI5_deyy
REAL*8, intent(in) :: dI5_dezz
REAL*8, intent(in) :: dexx_depsyy
REAL*8, intent(in) :: dexy_depsxy
REAL*8, intent(in) :: deyy_depsyy
REAL*8, intent(in) :: dezz_depsyy
REAL*8, intent(in) :: dv_dvp
REAL*8, intent(in) :: dvp_dI5
end function
end interface
interface
REAL*8 function d2phi_depsxydepsyz(d2phi_dv2, dI5_dexy, dI5_deyz, dexy_depsxy, &
deyz_depsyz, dv_dvp, dvp_dI5)
implicit none
REAL*8, intent(in) :: d2phi_dv2
REAL*8, intent(in) :: dI5_dexy
REAL*8, intent(in) :: dI5_deyz
REAL*8, intent(in) :: dexy_depsxy
REAL*8, intent(in) :: deyz_depsyz
REAL*8, intent(in) :: dv_dvp
REAL*8, intent(in) :: dvp_dI5
end function
end interface
interface
REAL*8 function d2phi_depsxydepszx(d2phi_dv2, dI5_dexy, dI5_dezx, dexy_depsxy, &
dezx_depszx, dv_dvp, dvp_dI5)
implicit none
REAL*8, intent(in) :: d2phi_dv2
REAL*8, intent(in) :: dI5_dexy
REAL*8, intent(in) :: dI5_dezx
REAL*8, intent(in) :: dexy_depsxy
REAL*8, intent(in) :: dezx_depszx
REAL*8, intent(in) :: dv_dvp
REAL*8, intent(in) :: dvp_dI5
end function
end interface
interface
REAL*8 function d2phi_depsxydepszz(d2phi_dv2, dI5_dexx, dI5_dexy, dI5_deyy, &
dI5_dezz, dexx_depszz, dexy_depsxy, deyy_depszz, dezz_depszz, &
dv_dvp, dvp_dI5)
implicit none
REAL*8, intent(in) :: d2phi_dv2
REAL*8, intent(in) :: dI5_dexx
REAL*8, intent(in) :: dI5_dexy
REAL*8, intent(in) :: dI5_deyy
REAL*8, intent(in) :: dI5_dezz
REAL*8, intent(in) :: dexx_depszz
REAL*8, intent(in) :: dexy_depsxy
REAL*8, intent(in) :: deyy_depszz
REAL*8, intent(in) :: dezz_depszz
REAL*8, intent(in) :: dv_dvp
REAL*8, intent(in) :: dvp_dI5
end function
end interface
interface
REAL*8 function dphi_depsyy(dI5_dexx, dI5_deyy, dI5_dezz, dexx_depsyy, deyy_depsyy, &
dezz_depsyy, dv_dvp, dvp_dI5, dphi_dv)
implicit none
REAL*8, intent(in) :: dI5_dexx
REAL*8, intent(in) :: dI5_deyy
REAL*8, intent(in) :: dI5_dezz
REAL*8, intent(in) :: dexx_depsyy
REAL*8, intent(in) :: deyy_depsyy
REAL*8, intent(in) :: dezz_depsyy
REAL*8, intent(in) :: dv_dvp
REAL*8, intent(in) :: dvp_dI5
REAL*8, intent(in) :: dphi_dv
end function
end interface
interface
REAL*8 function d2phi_depsyy2(d2phi_dv2, dI5_dexx, dI5_deyy, dI5_dezz, dexx_depsyy, &
deyy_depsyy, dezz_depsyy, dv_dvp, dvp_dI5)
implicit none
REAL*8, intent(in) :: d2phi_dv2
REAL*8, intent(in) :: dI5_dexx
REAL*8, intent(in) :: dI5_deyy
REAL*8, intent(in) :: dI5_dezz
REAL*8, intent(in) :: dexx_depsyy
REAL*8, intent(in) :: deyy_depsyy
REAL*8, intent(in) :: dezz_depsyy
REAL*8, intent(in) :: dv_dvp
REAL*8, intent(in) :: dvp_dI5
end function
end interface
interface
REAL*8 function d2phi_depsyydepsyz(d2phi_dv2, dI5_dexx, dI5_deyy, dI5_deyz, &
dI5_dezz, dexx_depsyy, deyy_depsyy, deyz_depsyz, dezz_depsyy, &
dv_dvp, dvp_dI5)
implicit none
REAL*8, intent(in) :: d2phi_dv2
REAL*8, intent(in) :: dI5_dexx
REAL*8, intent(in) :: dI5_deyy
REAL*8, intent(in) :: dI5_deyz
REAL*8, intent(in) :: dI5_dezz
REAL*8, intent(in) :: dexx_depsyy
REAL*8, intent(in) :: deyy_depsyy
REAL*8, intent(in) :: deyz_depsyz
REAL*8, intent(in) :: dezz_depsyy
REAL*8, intent(in) :: dv_dvp
REAL*8, intent(in) :: dvp_dI5
end function
end interface
interface
REAL*8 function d2phi_depsyydepszx(d2phi_dv2, dI5_dexx, dI5_deyy, dI5_dezx, &
dI5_dezz, dexx_depsyy, deyy_depsyy, dezx_depszx, dezz_depsyy, &
dv_dvp, dvp_dI5)
implicit none
REAL*8, intent(in) :: d2phi_dv2
REAL*8, intent(in) :: dI5_dexx
REAL*8, intent(in) :: dI5_deyy
REAL*8, intent(in) :: dI5_dezx
REAL*8, intent(in) :: dI5_dezz
REAL*8, intent(in) :: dexx_depsyy
REAL*8, intent(in) :: deyy_depsyy
REAL*8, intent(in) :: dezx_depszx
REAL*8, intent(in) :: dezz_depsyy
REAL*8, intent(in) :: dv_dvp
REAL*8, intent(in) :: dvp_dI5
end function
end interface
interface
REAL*8 function d2phi_depsyydepszz(d2phi_dv2, dI5_dexx, dI5_deyy, dI5_dezz, &
dexx_depsyy, dexx_depszz, deyy_depsyy, deyy_depszz, dezz_depsyy, &
dezz_depszz, dv_dvp, dvp_dI5)
implicit none
REAL*8, intent(in) :: d2phi_dv2
REAL*8, intent(in) :: dI5_dexx
REAL*8, intent(in) :: dI5_deyy
REAL*8, intent(in) :: dI5_dezz
REAL*8, intent(in) :: dexx_depsyy
REAL*8, intent(in) :: dexx_depszz
REAL*8, intent(in) :: deyy_depsyy
REAL*8, intent(in) :: deyy_depszz
REAL*8, intent(in) :: dezz_depsyy
REAL*8, intent(in) :: dezz_depszz
REAL*8, intent(in) :: dv_dvp
REAL*8, intent(in) :: dvp_dI5
end function
end interface
interface
REAL*8 function dphi_depsyz(dI5_deyz, deyz_depsyz, dv_dvp, dvp_dI5, dphi_dv)
implicit none
REAL*8, intent(in) :: dI5_deyz
REAL*8, intent(in) :: deyz_depsyz
REAL*8, intent(in) :: dv_dvp
REAL*8, intent(in) :: dvp_dI5
REAL*8, intent(in) :: dphi_dv
end function
end interface
interface
REAL*8 function d2phi_depsyz2(d2phi_dv2, dI5_deyz, deyz_depsyz, dv_dvp, dvp_dI5)
implicit none
REAL*8, intent(in) :: d2phi_dv2
REAL*8, intent(in) :: dI5_deyz
REAL*8, intent(in) :: deyz_depsyz
REAL*8, intent(in) :: dv_dvp
REAL*8, intent(in) :: dvp_dI5
end function
end interface
interface
REAL*8 function d2phi_depsyzdepszx(d2phi_dv2, dI5_deyz, dI5_dezx, deyz_depsyz, &
dezx_depszx, dv_dvp, dvp_dI5)
implicit none
REAL*8, intent(in) :: d2phi_dv2
REAL*8, intent(in) :: dI5_deyz
REAL*8, intent(in) :: dI5_dezx
REAL*8, intent(in) :: deyz_depsyz
REAL*8, intent(in) :: dezx_depszx
REAL*8, intent(in) :: dv_dvp
REAL*8, intent(in) :: dvp_dI5
end function
end interface
interface
REAL*8 function d2phi_depsyzdepszz(d2phi_dv2, dI5_dexx, dI5_deyy, dI5_deyz, &
dI5_dezz, dexx_depszz, deyy_depszz, deyz_depsyz, dezz_depszz, &
dv_dvp, dvp_dI5)
implicit none
REAL*8, intent(in) :: d2phi_dv2
REAL*8, intent(in) :: dI5_dexx
REAL*8, intent(in) :: dI5_deyy
REAL*8, intent(in) :: dI5_deyz
REAL*8, intent(in) :: dI5_dezz
REAL*8, intent(in) :: dexx_depszz
REAL*8, intent(in) :: deyy_depszz
REAL*8, intent(in) :: deyz_depsyz
REAL*8, intent(in) :: dezz_depszz
REAL*8, intent(in) :: dv_dvp
REAL*8, intent(in) :: dvp_dI5
end function
end interface
interface
REAL*8 function dphi_depszx(dI5_dezx, dezx_depszx, dv_dvp, dvp_dI5, dphi_dv)
implicit none
REAL*8, intent(in) :: dI5_dezx
REAL*8, intent(in) :: dezx_depszx
REAL*8, intent(in) :: dv_dvp
REAL*8, intent(in) :: dvp_dI5
REAL*8, intent(in) :: dphi_dv
end function
end interface
interface
REAL*8 function d2phi_depszx2(d2phi_dv2, dI5_dezx, dezx_depszx, dv_dvp, dvp_dI5)
implicit none
REAL*8, intent(in) :: d2phi_dv2
REAL*8, intent(in) :: dI5_dezx
REAL*8, intent(in) :: dezx_depszx
REAL*8, intent(in) :: dv_dvp
REAL*8, intent(in) :: dvp_dI5
end function
end interface
interface
REAL*8 function d2phi_depszxdepszz(d2phi_dv2, dI5_dexx, dI5_deyy, dI5_dezx, &
dI5_dezz, dexx_depszz, deyy_depszz, dezx_depszx, dezz_depszz, &
dv_dvp, dvp_dI5)
implicit none
REAL*8, intent(in) :: d2phi_dv2
REAL*8, intent(in) :: dI5_dexx
REAL*8, intent(in) :: dI5_deyy
REAL*8, intent(in) :: dI5_dezx
REAL*8, intent(in) :: dI5_dezz
REAL*8, intent(in) :: dexx_depszz
REAL*8, intent(in) :: deyy_depszz
REAL*8, intent(in) :: dezx_depszx
REAL*8, intent(in) :: dezz_depszz
REAL*8, intent(in) :: dv_dvp
REAL*8, intent(in) :: dvp_dI5
end function
end interface
interface
REAL*8 function dphi_depszz(dI5_dexx, dI5_deyy, dI5_dezz, dexx_depszz, deyy_depszz, &
dezz_depszz, dv_dvp, dvp_dI5, dphi_dv)
implicit none
REAL*8, intent(in) :: dI5_dexx
REAL*8, intent(in) :: dI5_deyy
REAL*8, intent(in) :: dI5_dezz
REAL*8, intent(in) :: dexx_depszz
REAL*8, intent(in) :: deyy_depszz
REAL*8, intent(in) :: dezz_depszz
REAL*8, intent(in) :: dv_dvp
REAL*8, intent(in) :: dvp_dI5
REAL*8, intent(in) :: dphi_dv
end function
end interface
interface
REAL*8 function d2phi_depszz2(d2phi_dv2, dI5_dexx, dI5_deyy, dI5_dezz, dexx_depszz, &
deyy_depszz, dezz_depszz, dv_dvp, dvp_dI5)
implicit none
REAL*8, intent(in) :: d2phi_dv2
REAL*8, intent(in) :: dI5_dexx
REAL*8, intent(in) :: dI5_deyy
REAL*8, intent(in) :: dI5_dezz
REAL*8, intent(in) :: dexx_depszz
REAL*8, intent(in) :: deyy_depszz
REAL*8, intent(in) :: dezz_depszz
REAL*8, intent(in) :: dv_dvp
REAL*8, intent(in) :: dvp_dI5
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

