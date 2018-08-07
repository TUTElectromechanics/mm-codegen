!******************************************************************************
!*                       Code generated with sympy 1.0                        *
!*                                                                            *
!*              See http://www.sympy.org/ for more information.               *
!*                                                                            *
!*                 This file is part of 'elmer-mgs-galfenol'                  *
!******************************************************************************

REAL(KIND=dp) function dexx_depsxx()
use types
implicit none

dexx_depsxx = 2.0_dp/3.0_dp

end function

REAL(KIND=dp) function dexx_depsyy()
use types
implicit none

dexx_depsyy = -1.0_dp/3.0_dp

end function

REAL(KIND=dp) function dexx_depszz()
use types
implicit none

dexx_depszz = -1.0_dp/3.0_dp

end function

REAL(KIND=dp) function dexy_depsxy()
use types
implicit none

dexy_depsxy = 1

end function

REAL(KIND=dp) function deyy_depsxx()
use types
implicit none

deyy_depsxx = -1.0_dp/3.0_dp

end function

REAL(KIND=dp) function deyy_depsyy()
use types
implicit none

deyy_depsyy = 2.0_dp/3.0_dp

end function

REAL(KIND=dp) function deyy_depszz()
use types
implicit none

deyy_depszz = -1.0_dp/3.0_dp

end function

REAL(KIND=dp) function deyz_depsyz()
use types
implicit none

deyz_depsyz = 1

end function

REAL(KIND=dp) function dezx_depszx()
use types
implicit none

dezx_depszx = 1

end function

REAL(KIND=dp) function dezz_depsxx()
use types
implicit none

dezz_depsxx = -1.0_dp/3.0_dp

end function

REAL(KIND=dp) function dezz_depsyy()
use types
implicit none

dezz_depsyy = -1.0_dp/3.0_dp

end function

REAL(KIND=dp) function dezz_depszz()
use types
implicit none

dezz_depszz = 2.0_dp/3.0_dp

end function

REAL(KIND=dp) function dI4_dBx(Bx)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bx

dI4_dBx = 2*Bx

end function

REAL(KIND=dp) function d2I4_dBx2()
use types
implicit none

d2I4_dBx2 = 2

end function

REAL(KIND=dp) function dI4_dBy(By)
use types
implicit none
REAL(KIND=dp), intent(in) :: By

dI4_dBy = 2*By

end function

REAL(KIND=dp) function d2I4_dBy2()
use types
implicit none

d2I4_dBy2 = 2

end function

REAL(KIND=dp) function dI4_dBz(Bz)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bz

dI4_dBz = 2*Bz

end function

REAL(KIND=dp) function d2I4_dBz2()
use types
implicit none

d2I4_dBz2 = 2

end function

REAL(KIND=dp) function dI5_dBx(Bx, By, Bz, exx, exy, ezx)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bx
REAL(KIND=dp), intent(in) :: By
REAL(KIND=dp), intent(in) :: Bz
REAL(KIND=dp), intent(in) :: exx
REAL(KIND=dp), intent(in) :: exy
REAL(KIND=dp), intent(in) :: ezx

dI5_dBx = 2*Bx*exx + 2*By*exy + 2*Bz*ezx

end function

REAL(KIND=dp) function d2I5_dBx2(exx)
use types
implicit none
REAL(KIND=dp), intent(in) :: exx

d2I5_dBx2 = 2*exx

end function

REAL(KIND=dp) function d2I5_dBxdBy(exy)
use types
implicit none
REAL(KIND=dp), intent(in) :: exy

d2I5_dBxdBy = 2*exy

end function

REAL(KIND=dp) function d2I5_dBxdBz(ezx)
use types
implicit none
REAL(KIND=dp), intent(in) :: ezx

d2I5_dBxdBz = 2*ezx

end function

REAL(KIND=dp) function d2I5_dBxdexx(Bx)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bx

d2I5_dBxdexx = 2*Bx

end function

REAL(KIND=dp) function d2I5_dBxdexy(By)
use types
implicit none
REAL(KIND=dp), intent(in) :: By

d2I5_dBxdexy = 2*By

end function

REAL(KIND=dp) function d2I5_dBxdezx(Bz)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bz

d2I5_dBxdezx = 2*Bz

end function

REAL(KIND=dp) function dI5_dBy(Bx, By, Bz, exy, eyy, eyz)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bx
REAL(KIND=dp), intent(in) :: By
REAL(KIND=dp), intent(in) :: Bz
REAL(KIND=dp), intent(in) :: exy
REAL(KIND=dp), intent(in) :: eyy
REAL(KIND=dp), intent(in) :: eyz

dI5_dBy = 2*Bx*exy + 2*By*eyy + 2*Bz*eyz

end function

REAL(KIND=dp) function d2I5_dBy2(eyy)
use types
implicit none
REAL(KIND=dp), intent(in) :: eyy

d2I5_dBy2 = 2*eyy

end function

REAL(KIND=dp) function d2I5_dBydBz(eyz)
use types
implicit none
REAL(KIND=dp), intent(in) :: eyz

d2I5_dBydBz = 2*eyz

end function

REAL(KIND=dp) function d2I5_dBydexy(Bx)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bx

d2I5_dBydexy = 2*Bx

end function

REAL(KIND=dp) function d2I5_dBydeyy(By)
use types
implicit none
REAL(KIND=dp), intent(in) :: By

d2I5_dBydeyy = 2*By

end function

REAL(KIND=dp) function d2I5_dBydeyz(Bz)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bz

d2I5_dBydeyz = 2*Bz

end function

REAL(KIND=dp) function dI5_dBz(Bx, By, Bz, eyz, ezx, ezz)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bx
REAL(KIND=dp), intent(in) :: By
REAL(KIND=dp), intent(in) :: Bz
REAL(KIND=dp), intent(in) :: eyz
REAL(KIND=dp), intent(in) :: ezx
REAL(KIND=dp), intent(in) :: ezz

dI5_dBz = 2*Bx*ezx + 2*By*eyz + 2*Bz*ezz

end function

REAL(KIND=dp) function d2I5_dBz2(ezz)
use types
implicit none
REAL(KIND=dp), intent(in) :: ezz

d2I5_dBz2 = 2*ezz

end function

REAL(KIND=dp) function d2I5_dBzdeyz(By)
use types
implicit none
REAL(KIND=dp), intent(in) :: By

d2I5_dBzdeyz = 2*By

end function

REAL(KIND=dp) function d2I5_dBzdezx(Bx)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bx

d2I5_dBzdezx = 2*Bx

end function

REAL(KIND=dp) function d2I5_dBzdezz(Bz)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bz

d2I5_dBzdezz = 2*Bz

end function

REAL(KIND=dp) function dI5_dexx(Bx)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bx

dI5_dexx = Bx**2

end function

REAL(KIND=dp) function dI5_dexy(Bx, By)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bx
REAL(KIND=dp), intent(in) :: By

dI5_dexy = 2*Bx*By

end function

REAL(KIND=dp) function dI5_deyy(By)
use types
implicit none
REAL(KIND=dp), intent(in) :: By

dI5_deyy = By**2

end function

REAL(KIND=dp) function dI5_deyz(By, Bz)
use types
implicit none
REAL(KIND=dp), intent(in) :: By
REAL(KIND=dp), intent(in) :: Bz

dI5_deyz = 2*By*Bz

end function

REAL(KIND=dp) function dI5_dezx(Bx, Bz)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bx
REAL(KIND=dp), intent(in) :: Bz

dI5_dezx = 2*Bx*Bz

end function

REAL(KIND=dp) function dI5_dezz(Bz)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bz

dI5_dezz = Bz**2

end function

REAL(KIND=dp) function du_dup(u0)
use types
implicit none
REAL(KIND=dp), intent(in) :: u0

du_dup = 1.0/u0

end function

REAL(KIND=dp) function dup_dI4(I4)
use types
implicit none
REAL(KIND=dp), intent(in) :: I4

dup_dI4 = (1.0_dp/2.0_dp)/sqrt(I4)

end function

REAL(KIND=dp) function d2up_dI42(I4)
use types
implicit none
REAL(KIND=dp), intent(in) :: I4

d2up_dI42 = -1.0_dp/4.0_dp/I4**(3.0_dp/2.0_dp)

end function

REAL(KIND=dp) function dv_dvp(v0)
use types
implicit none
REAL(KIND=dp), intent(in) :: v0

dv_dvp = 1.0/v0

end function

REAL(KIND=dp) function dvp_dI4(I4, I5)
use types
implicit none
REAL(KIND=dp), intent(in) :: I4
REAL(KIND=dp), intent(in) :: I5

dvp_dI4 = -3.0_dp/2.0_dp*I5/I4**2

end function

REAL(KIND=dp) function d2vp_dI42(I4, I5)
use types
implicit none
REAL(KIND=dp), intent(in) :: I4
REAL(KIND=dp), intent(in) :: I5

d2vp_dI42 = 3*I5/I4**3

end function

REAL(KIND=dp) function d2vp_dI4dI5(I4)
use types
implicit none
REAL(KIND=dp), intent(in) :: I4

d2vp_dI4dI5 = -3.0_dp/2.0_dp/I4**2

end function

REAL(KIND=dp) function dvp_dI5(I4)
use types
implicit none
REAL(KIND=dp), intent(in) :: I4

dvp_dI5 = (3.0_dp/2.0_dp)/I4

end function

REAL(KIND=dp) function dphi_dBx(dI4_dBx, dI5_dBx, dphi_du, dphi_dv, du_dup, &
      dup_dI4, dv_dvp, dvp_dI4, dvp_dI5)
use types
implicit none
REAL(KIND=dp), intent(in) :: dI4_dBx
REAL(KIND=dp), intent(in) :: dI5_dBx
REAL(KIND=dp), intent(in) :: dphi_du
REAL(KIND=dp), intent(in) :: dphi_dv
REAL(KIND=dp), intent(in) :: du_dup
REAL(KIND=dp), intent(in) :: dup_dI4
REAL(KIND=dp), intent(in) :: dv_dvp
REAL(KIND=dp), intent(in) :: dvp_dI4
REAL(KIND=dp), intent(in) :: dvp_dI5

dphi_dBx = dI4_dBx*dphi_du*du_dup*dup_dI4 + dphi_dv*dv_dvp*(dI4_dBx* &
      dvp_dI4 + dI5_dBx*dvp_dI5)

end function

REAL(KIND=dp) function d2phi_dBx2(d2I4_dBx2, d2I5_dBx2, d2phi_du2, d2phi_dudv, &
      d2phi_dv2, d2up_dI42, d2vp_dI42, d2vp_dI4dI5, dI4_dBx, &
      dI5_dBx, dphi_du, dphi_dv, du_dup, dup_dI4, dv_dvp, dvp_dI4, &
      dvp_dI5)
use types
implicit none
REAL(KIND=dp), intent(in) :: d2I4_dBx2
REAL(KIND=dp), intent(in) :: d2I5_dBx2
REAL(KIND=dp), intent(in) :: d2phi_du2
REAL(KIND=dp), intent(in) :: d2phi_dudv
REAL(KIND=dp), intent(in) :: d2phi_dv2
REAL(KIND=dp), intent(in) :: d2up_dI42
REAL(KIND=dp), intent(in) :: d2vp_dI42
REAL(KIND=dp), intent(in) :: d2vp_dI4dI5
REAL(KIND=dp), intent(in) :: dI4_dBx
REAL(KIND=dp), intent(in) :: dI5_dBx
REAL(KIND=dp), intent(in) :: dphi_du
REAL(KIND=dp), intent(in) :: dphi_dv
REAL(KIND=dp), intent(in) :: du_dup
REAL(KIND=dp), intent(in) :: dup_dI4
REAL(KIND=dp), intent(in) :: dv_dvp
REAL(KIND=dp), intent(in) :: dvp_dI4
REAL(KIND=dp), intent(in) :: dvp_dI5

d2phi_dBx2 = d2I4_dBx2*dphi_du*du_dup*dup_dI4 + d2up_dI42*dI4_dBx**2* &
      dphi_du*du_dup + dI4_dBx*du_dup*dup_dI4*(d2phi_du2*dI4_dBx*du_dup &
      *dup_dI4 + d2phi_dudv*dv_dvp*(dI4_dBx*dvp_dI4 + dI5_dBx*dvp_dI5 &
      )) + dphi_dv*dv_dvp*(d2I4_dBx2*dvp_dI4 + d2I5_dBx2*dvp_dI5 + &
      d2vp_dI4dI5*dI4_dBx*dI5_dBx + dI4_dBx*(d2vp_dI42*dI4_dBx + &
      d2vp_dI4dI5*dI5_dBx)) + dv_dvp*(dI4_dBx*dvp_dI4 + dI5_dBx*dvp_dI5 &
      )*(d2phi_dudv*dI4_dBx*du_dup*dup_dI4 + d2phi_dv2*dv_dvp*(dI4_dBx* &
      dvp_dI4 + dI5_dBx*dvp_dI5))

end function

REAL(KIND=dp) function d2phi_dBxdBy(d2I5_dBxdBy, d2phi_du2, d2phi_dudv, d2phi_dv2, &
      d2up_dI42, d2vp_dI42, d2vp_dI4dI5, dI4_dBx, dI4_dBy, &
      dI5_dBx, dI5_dBy, dphi_du, dphi_dv, du_dup, dup_dI4, dv_dvp, &
      dvp_dI4, dvp_dI5)
use types
implicit none
REAL(KIND=dp), intent(in) :: d2I5_dBxdBy
REAL(KIND=dp), intent(in) :: d2phi_du2
REAL(KIND=dp), intent(in) :: d2phi_dudv
REAL(KIND=dp), intent(in) :: d2phi_dv2
REAL(KIND=dp), intent(in) :: d2up_dI42
REAL(KIND=dp), intent(in) :: d2vp_dI42
REAL(KIND=dp), intent(in) :: d2vp_dI4dI5
REAL(KIND=dp), intent(in) :: dI4_dBx
REAL(KIND=dp), intent(in) :: dI4_dBy
REAL(KIND=dp), intent(in) :: dI5_dBx
REAL(KIND=dp), intent(in) :: dI5_dBy
REAL(KIND=dp), intent(in) :: dphi_du
REAL(KIND=dp), intent(in) :: dphi_dv
REAL(KIND=dp), intent(in) :: du_dup
REAL(KIND=dp), intent(in) :: dup_dI4
REAL(KIND=dp), intent(in) :: dv_dvp
REAL(KIND=dp), intent(in) :: dvp_dI4
REAL(KIND=dp), intent(in) :: dvp_dI5

d2phi_dBxdBy = d2up_dI42*dI4_dBx*dI4_dBy*dphi_du*du_dup + dI4_dBx*du_dup &
      *dup_dI4*(d2phi_du2*dI4_dBy*du_dup*dup_dI4 + d2phi_dudv*dv_dvp*( &
      dI4_dBy*dvp_dI4 + dI5_dBy*dvp_dI5)) + dphi_dv*dv_dvp*(d2I5_dBxdBy &
      *dvp_dI5 + d2vp_dI4dI5*dI4_dBy*dI5_dBx + dI4_dBx*(d2vp_dI42* &
      dI4_dBy + d2vp_dI4dI5*dI5_dBy)) + dv_dvp*(dI4_dBx*dvp_dI4 + &
      dI5_dBx*dvp_dI5)*(d2phi_dudv*dI4_dBy*du_dup*dup_dI4 + d2phi_dv2* &
      dv_dvp*(dI4_dBy*dvp_dI4 + dI5_dBy*dvp_dI5))

end function

REAL(KIND=dp) function d2phi_dBxdBz(d2I5_dBxdBz, d2phi_du2, d2phi_dudv, d2phi_dv2, &
      d2up_dI42, d2vp_dI42, d2vp_dI4dI5, dI4_dBx, dI4_dBz, &
      dI5_dBx, dI5_dBz, dphi_du, dphi_dv, du_dup, dup_dI4, dv_dvp, &
      dvp_dI4, dvp_dI5)
use types
implicit none
REAL(KIND=dp), intent(in) :: d2I5_dBxdBz
REAL(KIND=dp), intent(in) :: d2phi_du2
REAL(KIND=dp), intent(in) :: d2phi_dudv
REAL(KIND=dp), intent(in) :: d2phi_dv2
REAL(KIND=dp), intent(in) :: d2up_dI42
REAL(KIND=dp), intent(in) :: d2vp_dI42
REAL(KIND=dp), intent(in) :: d2vp_dI4dI5
REAL(KIND=dp), intent(in) :: dI4_dBx
REAL(KIND=dp), intent(in) :: dI4_dBz
REAL(KIND=dp), intent(in) :: dI5_dBx
REAL(KIND=dp), intent(in) :: dI5_dBz
REAL(KIND=dp), intent(in) :: dphi_du
REAL(KIND=dp), intent(in) :: dphi_dv
REAL(KIND=dp), intent(in) :: du_dup
REAL(KIND=dp), intent(in) :: dup_dI4
REAL(KIND=dp), intent(in) :: dv_dvp
REAL(KIND=dp), intent(in) :: dvp_dI4
REAL(KIND=dp), intent(in) :: dvp_dI5

d2phi_dBxdBz = d2up_dI42*dI4_dBx*dI4_dBz*dphi_du*du_dup + dI4_dBx*du_dup &
      *dup_dI4*(d2phi_du2*dI4_dBz*du_dup*dup_dI4 + d2phi_dudv*dv_dvp*( &
      dI4_dBz*dvp_dI4 + dI5_dBz*dvp_dI5)) + dphi_dv*dv_dvp*(d2I5_dBxdBz &
      *dvp_dI5 + d2vp_dI4dI5*dI4_dBz*dI5_dBx + dI4_dBx*(d2vp_dI42* &
      dI4_dBz + d2vp_dI4dI5*dI5_dBz)) + dv_dvp*(dI4_dBx*dvp_dI4 + &
      dI5_dBx*dvp_dI5)*(d2phi_dudv*dI4_dBz*du_dup*dup_dI4 + d2phi_dv2* &
      dv_dvp*(dI4_dBz*dvp_dI4 + dI5_dBz*dvp_dI5))

end function

REAL(KIND=dp) function d2phi_dBxdepsxx(d2I5_dBxdexx, d2phi_dudv, d2phi_dv2, &
      d2vp_dI4dI5, dI4_dBx, dI5_dBx, dI5_dexx, dI5_deyy, dI5_dezz, &
      dexx_depsxx, deyy_depsxx, dezz_depsxx, dphi_dv, du_dup, &
      dup_dI4, dv_dvp, dvp_dI4, dvp_dI5)
use types
implicit none
REAL(KIND=dp), intent(in) :: d2I5_dBxdexx
REAL(KIND=dp), intent(in) :: d2phi_dudv
REAL(KIND=dp), intent(in) :: d2phi_dv2
REAL(KIND=dp), intent(in) :: d2vp_dI4dI5
REAL(KIND=dp), intent(in) :: dI4_dBx
REAL(KIND=dp), intent(in) :: dI5_dBx
REAL(KIND=dp), intent(in) :: dI5_dexx
REAL(KIND=dp), intent(in) :: dI5_deyy
REAL(KIND=dp), intent(in) :: dI5_dezz
REAL(KIND=dp), intent(in) :: dexx_depsxx
REAL(KIND=dp), intent(in) :: deyy_depsxx
REAL(KIND=dp), intent(in) :: dezz_depsxx
REAL(KIND=dp), intent(in) :: dphi_dv
REAL(KIND=dp), intent(in) :: du_dup
REAL(KIND=dp), intent(in) :: dup_dI4
REAL(KIND=dp), intent(in) :: dv_dvp
REAL(KIND=dp), intent(in) :: dvp_dI4
REAL(KIND=dp), intent(in) :: dvp_dI5

d2phi_dBxdepsxx = d2phi_dudv*dI4_dBx*du_dup*dup_dI4*dv_dvp*dvp_dI5*( &
      dI5_dexx*dexx_depsxx + dI5_deyy*deyy_depsxx + dI5_dezz* &
      dezz_depsxx) + d2phi_dv2*dv_dvp**2*dvp_dI5*(dI4_dBx*dvp_dI4 + &
      dI5_dBx*dvp_dI5)*(dI5_dexx*dexx_depsxx + dI5_deyy*deyy_depsxx + &
      dI5_dezz*dezz_depsxx) + dphi_dv*dv_dvp*(d2I5_dBxdexx*dexx_depsxx* &
      dvp_dI5 + d2vp_dI4dI5*dI4_dBx*(dI5_dexx*dexx_depsxx + dI5_deyy* &
      deyy_depsxx + dI5_dezz*dezz_depsxx))

end function

REAL(KIND=dp) function d2phi_dBxdepsxy(d2I5_dBxdexy, d2phi_dudv, d2phi_dv2, &
      d2vp_dI4dI5, dI4_dBx, dI5_dBx, dI5_dexy, dexy_depsxy, &
      dphi_dv, du_dup, dup_dI4, dv_dvp, dvp_dI4, dvp_dI5)
use types
implicit none
REAL(KIND=dp), intent(in) :: d2I5_dBxdexy
REAL(KIND=dp), intent(in) :: d2phi_dudv
REAL(KIND=dp), intent(in) :: d2phi_dv2
REAL(KIND=dp), intent(in) :: d2vp_dI4dI5
REAL(KIND=dp), intent(in) :: dI4_dBx
REAL(KIND=dp), intent(in) :: dI5_dBx
REAL(KIND=dp), intent(in) :: dI5_dexy
REAL(KIND=dp), intent(in) :: dexy_depsxy
REAL(KIND=dp), intent(in) :: dphi_dv
REAL(KIND=dp), intent(in) :: du_dup
REAL(KIND=dp), intent(in) :: dup_dI4
REAL(KIND=dp), intent(in) :: dv_dvp
REAL(KIND=dp), intent(in) :: dvp_dI4
REAL(KIND=dp), intent(in) :: dvp_dI5

d2phi_dBxdepsxy = d2phi_dudv*dI4_dBx*dI5_dexy*dexy_depsxy*du_dup*dup_dI4 &
      *dv_dvp*dvp_dI5 + d2phi_dv2*dI5_dexy*dexy_depsxy*dv_dvp**2* &
      dvp_dI5*(dI4_dBx*dvp_dI4 + dI5_dBx*dvp_dI5) + dphi_dv*dv_dvp*( &
      d2I5_dBxdexy*dexy_depsxy*dvp_dI5 + d2vp_dI4dI5*dI4_dBx*dI5_dexy* &
      dexy_depsxy)

end function

REAL(KIND=dp) function d2phi_dBxdepsyy(d2I5_dBxdexx, d2phi_dudv, d2phi_dv2, &
      d2vp_dI4dI5, dI4_dBx, dI5_dBx, dI5_dexx, dI5_deyy, dI5_dezz, &
      dexx_depsyy, deyy_depsyy, dezz_depsyy, dphi_dv, du_dup, &
      dup_dI4, dv_dvp, dvp_dI4, dvp_dI5)
use types
implicit none
REAL(KIND=dp), intent(in) :: d2I5_dBxdexx
REAL(KIND=dp), intent(in) :: d2phi_dudv
REAL(KIND=dp), intent(in) :: d2phi_dv2
REAL(KIND=dp), intent(in) :: d2vp_dI4dI5
REAL(KIND=dp), intent(in) :: dI4_dBx
REAL(KIND=dp), intent(in) :: dI5_dBx
REAL(KIND=dp), intent(in) :: dI5_dexx
REAL(KIND=dp), intent(in) :: dI5_deyy
REAL(KIND=dp), intent(in) :: dI5_dezz
REAL(KIND=dp), intent(in) :: dexx_depsyy
REAL(KIND=dp), intent(in) :: deyy_depsyy
REAL(KIND=dp), intent(in) :: dezz_depsyy
REAL(KIND=dp), intent(in) :: dphi_dv
REAL(KIND=dp), intent(in) :: du_dup
REAL(KIND=dp), intent(in) :: dup_dI4
REAL(KIND=dp), intent(in) :: dv_dvp
REAL(KIND=dp), intent(in) :: dvp_dI4
REAL(KIND=dp), intent(in) :: dvp_dI5

d2phi_dBxdepsyy = d2phi_dudv*dI4_dBx*du_dup*dup_dI4*dv_dvp*dvp_dI5*( &
      dI5_dexx*dexx_depsyy + dI5_deyy*deyy_depsyy + dI5_dezz* &
      dezz_depsyy) + d2phi_dv2*dv_dvp**2*dvp_dI5*(dI4_dBx*dvp_dI4 + &
      dI5_dBx*dvp_dI5)*(dI5_dexx*dexx_depsyy + dI5_deyy*deyy_depsyy + &
      dI5_dezz*dezz_depsyy) + dphi_dv*dv_dvp*(d2I5_dBxdexx*dexx_depsyy* &
      dvp_dI5 + d2vp_dI4dI5*dI4_dBx*(dI5_dexx*dexx_depsyy + dI5_deyy* &
      deyy_depsyy + dI5_dezz*dezz_depsyy))

end function

REAL(KIND=dp) function d2phi_dBxdepsyz(d2phi_dudv, d2phi_dv2, d2vp_dI4dI5, dI4_dBx, &
      dI5_dBx, dI5_deyz, deyz_depsyz, dphi_dv, du_dup, dup_dI4, &
      dv_dvp, dvp_dI4, dvp_dI5)
use types
implicit none
REAL(KIND=dp), intent(in) :: d2phi_dudv
REAL(KIND=dp), intent(in) :: d2phi_dv2
REAL(KIND=dp), intent(in) :: d2vp_dI4dI5
REAL(KIND=dp), intent(in) :: dI4_dBx
REAL(KIND=dp), intent(in) :: dI5_dBx
REAL(KIND=dp), intent(in) :: dI5_deyz
REAL(KIND=dp), intent(in) :: deyz_depsyz
REAL(KIND=dp), intent(in) :: dphi_dv
REAL(KIND=dp), intent(in) :: du_dup
REAL(KIND=dp), intent(in) :: dup_dI4
REAL(KIND=dp), intent(in) :: dv_dvp
REAL(KIND=dp), intent(in) :: dvp_dI4
REAL(KIND=dp), intent(in) :: dvp_dI5

d2phi_dBxdepsyz = d2phi_dudv*dI4_dBx*dI5_deyz*deyz_depsyz*du_dup*dup_dI4 &
      *dv_dvp*dvp_dI5 + d2phi_dv2*dI5_deyz*deyz_depsyz*dv_dvp**2* &
      dvp_dI5*(dI4_dBx*dvp_dI4 + dI5_dBx*dvp_dI5) + d2vp_dI4dI5*dI4_dBx &
      *dI5_deyz*deyz_depsyz*dphi_dv*dv_dvp

end function

REAL(KIND=dp) function d2phi_dBxdepszx(d2I5_dBxdezx, d2phi_dudv, d2phi_dv2, &
      d2vp_dI4dI5, dI4_dBx, dI5_dBx, dI5_dezx, dezx_depszx, &
      dphi_dv, du_dup, dup_dI4, dv_dvp, dvp_dI4, dvp_dI5)
use types
implicit none
REAL(KIND=dp), intent(in) :: d2I5_dBxdezx
REAL(KIND=dp), intent(in) :: d2phi_dudv
REAL(KIND=dp), intent(in) :: d2phi_dv2
REAL(KIND=dp), intent(in) :: d2vp_dI4dI5
REAL(KIND=dp), intent(in) :: dI4_dBx
REAL(KIND=dp), intent(in) :: dI5_dBx
REAL(KIND=dp), intent(in) :: dI5_dezx
REAL(KIND=dp), intent(in) :: dezx_depszx
REAL(KIND=dp), intent(in) :: dphi_dv
REAL(KIND=dp), intent(in) :: du_dup
REAL(KIND=dp), intent(in) :: dup_dI4
REAL(KIND=dp), intent(in) :: dv_dvp
REAL(KIND=dp), intent(in) :: dvp_dI4
REAL(KIND=dp), intent(in) :: dvp_dI5

d2phi_dBxdepszx = d2phi_dudv*dI4_dBx*dI5_dezx*dezx_depszx*du_dup*dup_dI4 &
      *dv_dvp*dvp_dI5 + d2phi_dv2*dI5_dezx*dezx_depszx*dv_dvp**2* &
      dvp_dI5*(dI4_dBx*dvp_dI4 + dI5_dBx*dvp_dI5) + dphi_dv*dv_dvp*( &
      d2I5_dBxdezx*dezx_depszx*dvp_dI5 + d2vp_dI4dI5*dI4_dBx*dI5_dezx* &
      dezx_depszx)

end function

REAL(KIND=dp) function d2phi_dBxdepszz(d2I5_dBxdexx, d2phi_dudv, d2phi_dv2, &
      d2vp_dI4dI5, dI4_dBx, dI5_dBx, dI5_dexx, dI5_deyy, dI5_dezz, &
      dexx_depszz, deyy_depszz, dezz_depszz, dphi_dv, du_dup, &
      dup_dI4, dv_dvp, dvp_dI4, dvp_dI5)
use types
implicit none
REAL(KIND=dp), intent(in) :: d2I5_dBxdexx
REAL(KIND=dp), intent(in) :: d2phi_dudv
REAL(KIND=dp), intent(in) :: d2phi_dv2
REAL(KIND=dp), intent(in) :: d2vp_dI4dI5
REAL(KIND=dp), intent(in) :: dI4_dBx
REAL(KIND=dp), intent(in) :: dI5_dBx
REAL(KIND=dp), intent(in) :: dI5_dexx
REAL(KIND=dp), intent(in) :: dI5_deyy
REAL(KIND=dp), intent(in) :: dI5_dezz
REAL(KIND=dp), intent(in) :: dexx_depszz
REAL(KIND=dp), intent(in) :: deyy_depszz
REAL(KIND=dp), intent(in) :: dezz_depszz
REAL(KIND=dp), intent(in) :: dphi_dv
REAL(KIND=dp), intent(in) :: du_dup
REAL(KIND=dp), intent(in) :: dup_dI4
REAL(KIND=dp), intent(in) :: dv_dvp
REAL(KIND=dp), intent(in) :: dvp_dI4
REAL(KIND=dp), intent(in) :: dvp_dI5

d2phi_dBxdepszz = d2phi_dudv*dI4_dBx*du_dup*dup_dI4*dv_dvp*dvp_dI5*( &
      dI5_dexx*dexx_depszz + dI5_deyy*deyy_depszz + dI5_dezz* &
      dezz_depszz) + d2phi_dv2*dv_dvp**2*dvp_dI5*(dI4_dBx*dvp_dI4 + &
      dI5_dBx*dvp_dI5)*(dI5_dexx*dexx_depszz + dI5_deyy*deyy_depszz + &
      dI5_dezz*dezz_depszz) + dphi_dv*dv_dvp*(d2I5_dBxdexx*dexx_depszz* &
      dvp_dI5 + d2vp_dI4dI5*dI4_dBx*(dI5_dexx*dexx_depszz + dI5_deyy* &
      deyy_depszz + dI5_dezz*dezz_depszz))

end function

REAL(KIND=dp) function dphi_dBy(dI4_dBy, dI5_dBy, dphi_du, dphi_dv, du_dup, &
      dup_dI4, dv_dvp, dvp_dI4, dvp_dI5)
use types
implicit none
REAL(KIND=dp), intent(in) :: dI4_dBy
REAL(KIND=dp), intent(in) :: dI5_dBy
REAL(KIND=dp), intent(in) :: dphi_du
REAL(KIND=dp), intent(in) :: dphi_dv
REAL(KIND=dp), intent(in) :: du_dup
REAL(KIND=dp), intent(in) :: dup_dI4
REAL(KIND=dp), intent(in) :: dv_dvp
REAL(KIND=dp), intent(in) :: dvp_dI4
REAL(KIND=dp), intent(in) :: dvp_dI5

dphi_dBy = dI4_dBy*dphi_du*du_dup*dup_dI4 + dphi_dv*dv_dvp*(dI4_dBy* &
      dvp_dI4 + dI5_dBy*dvp_dI5)

end function

REAL(KIND=dp) function d2phi_dBy2(d2I4_dBy2, d2I5_dBy2, d2phi_du2, d2phi_dudv, &
      d2phi_dv2, d2up_dI42, d2vp_dI42, d2vp_dI4dI5, dI4_dBy, &
      dI5_dBy, dphi_du, dphi_dv, du_dup, dup_dI4, dv_dvp, dvp_dI4, &
      dvp_dI5)
use types
implicit none
REAL(KIND=dp), intent(in) :: d2I4_dBy2
REAL(KIND=dp), intent(in) :: d2I5_dBy2
REAL(KIND=dp), intent(in) :: d2phi_du2
REAL(KIND=dp), intent(in) :: d2phi_dudv
REAL(KIND=dp), intent(in) :: d2phi_dv2
REAL(KIND=dp), intent(in) :: d2up_dI42
REAL(KIND=dp), intent(in) :: d2vp_dI42
REAL(KIND=dp), intent(in) :: d2vp_dI4dI5
REAL(KIND=dp), intent(in) :: dI4_dBy
REAL(KIND=dp), intent(in) :: dI5_dBy
REAL(KIND=dp), intent(in) :: dphi_du
REAL(KIND=dp), intent(in) :: dphi_dv
REAL(KIND=dp), intent(in) :: du_dup
REAL(KIND=dp), intent(in) :: dup_dI4
REAL(KIND=dp), intent(in) :: dv_dvp
REAL(KIND=dp), intent(in) :: dvp_dI4
REAL(KIND=dp), intent(in) :: dvp_dI5

d2phi_dBy2 = d2I4_dBy2*dphi_du*du_dup*dup_dI4 + d2up_dI42*dI4_dBy**2* &
      dphi_du*du_dup + dI4_dBy*du_dup*dup_dI4*(d2phi_du2*dI4_dBy*du_dup &
      *dup_dI4 + d2phi_dudv*dv_dvp*(dI4_dBy*dvp_dI4 + dI5_dBy*dvp_dI5 &
      )) + dphi_dv*dv_dvp*(d2I4_dBy2*dvp_dI4 + d2I5_dBy2*dvp_dI5 + &
      d2vp_dI4dI5*dI4_dBy*dI5_dBy + dI4_dBy*(d2vp_dI42*dI4_dBy + &
      d2vp_dI4dI5*dI5_dBy)) + dv_dvp*(dI4_dBy*dvp_dI4 + dI5_dBy*dvp_dI5 &
      )*(d2phi_dudv*dI4_dBy*du_dup*dup_dI4 + d2phi_dv2*dv_dvp*(dI4_dBy* &
      dvp_dI4 + dI5_dBy*dvp_dI5))

end function

REAL(KIND=dp) function d2phi_dBydBz(d2I5_dBydBz, d2phi_du2, d2phi_dudv, d2phi_dv2, &
      d2up_dI42, d2vp_dI42, d2vp_dI4dI5, dI4_dBy, dI4_dBz, &
      dI5_dBy, dI5_dBz, dphi_du, dphi_dv, du_dup, dup_dI4, dv_dvp, &
      dvp_dI4, dvp_dI5)
use types
implicit none
REAL(KIND=dp), intent(in) :: d2I5_dBydBz
REAL(KIND=dp), intent(in) :: d2phi_du2
REAL(KIND=dp), intent(in) :: d2phi_dudv
REAL(KIND=dp), intent(in) :: d2phi_dv2
REAL(KIND=dp), intent(in) :: d2up_dI42
REAL(KIND=dp), intent(in) :: d2vp_dI42
REAL(KIND=dp), intent(in) :: d2vp_dI4dI5
REAL(KIND=dp), intent(in) :: dI4_dBy
REAL(KIND=dp), intent(in) :: dI4_dBz
REAL(KIND=dp), intent(in) :: dI5_dBy
REAL(KIND=dp), intent(in) :: dI5_dBz
REAL(KIND=dp), intent(in) :: dphi_du
REAL(KIND=dp), intent(in) :: dphi_dv
REAL(KIND=dp), intent(in) :: du_dup
REAL(KIND=dp), intent(in) :: dup_dI4
REAL(KIND=dp), intent(in) :: dv_dvp
REAL(KIND=dp), intent(in) :: dvp_dI4
REAL(KIND=dp), intent(in) :: dvp_dI5

d2phi_dBydBz = d2up_dI42*dI4_dBy*dI4_dBz*dphi_du*du_dup + dI4_dBy*du_dup &
      *dup_dI4*(d2phi_du2*dI4_dBz*du_dup*dup_dI4 + d2phi_dudv*dv_dvp*( &
      dI4_dBz*dvp_dI4 + dI5_dBz*dvp_dI5)) + dphi_dv*dv_dvp*(d2I5_dBydBz &
      *dvp_dI5 + d2vp_dI4dI5*dI4_dBz*dI5_dBy + dI4_dBy*(d2vp_dI42* &
      dI4_dBz + d2vp_dI4dI5*dI5_dBz)) + dv_dvp*(dI4_dBy*dvp_dI4 + &
      dI5_dBy*dvp_dI5)*(d2phi_dudv*dI4_dBz*du_dup*dup_dI4 + d2phi_dv2* &
      dv_dvp*(dI4_dBz*dvp_dI4 + dI5_dBz*dvp_dI5))

end function

REAL(KIND=dp) function d2phi_dBydepsxx(d2I5_dBydeyy, d2phi_dudv, d2phi_dv2, &
      d2vp_dI4dI5, dI4_dBy, dI5_dBy, dI5_dexx, dI5_deyy, dI5_dezz, &
      dexx_depsxx, deyy_depsxx, dezz_depsxx, dphi_dv, du_dup, &
      dup_dI4, dv_dvp, dvp_dI4, dvp_dI5)
use types
implicit none
REAL(KIND=dp), intent(in) :: d2I5_dBydeyy
REAL(KIND=dp), intent(in) :: d2phi_dudv
REAL(KIND=dp), intent(in) :: d2phi_dv2
REAL(KIND=dp), intent(in) :: d2vp_dI4dI5
REAL(KIND=dp), intent(in) :: dI4_dBy
REAL(KIND=dp), intent(in) :: dI5_dBy
REAL(KIND=dp), intent(in) :: dI5_dexx
REAL(KIND=dp), intent(in) :: dI5_deyy
REAL(KIND=dp), intent(in) :: dI5_dezz
REAL(KIND=dp), intent(in) :: dexx_depsxx
REAL(KIND=dp), intent(in) :: deyy_depsxx
REAL(KIND=dp), intent(in) :: dezz_depsxx
REAL(KIND=dp), intent(in) :: dphi_dv
REAL(KIND=dp), intent(in) :: du_dup
REAL(KIND=dp), intent(in) :: dup_dI4
REAL(KIND=dp), intent(in) :: dv_dvp
REAL(KIND=dp), intent(in) :: dvp_dI4
REAL(KIND=dp), intent(in) :: dvp_dI5

d2phi_dBydepsxx = d2phi_dudv*dI4_dBy*du_dup*dup_dI4*dv_dvp*dvp_dI5*( &
      dI5_dexx*dexx_depsxx + dI5_deyy*deyy_depsxx + dI5_dezz* &
      dezz_depsxx) + d2phi_dv2*dv_dvp**2*dvp_dI5*(dI4_dBy*dvp_dI4 + &
      dI5_dBy*dvp_dI5)*(dI5_dexx*dexx_depsxx + dI5_deyy*deyy_depsxx + &
      dI5_dezz*dezz_depsxx) + dphi_dv*dv_dvp*(d2I5_dBydeyy*deyy_depsxx* &
      dvp_dI5 + d2vp_dI4dI5*dI4_dBy*(dI5_dexx*dexx_depsxx + dI5_deyy* &
      deyy_depsxx + dI5_dezz*dezz_depsxx))

end function

REAL(KIND=dp) function d2phi_dBydepsxy(d2I5_dBydexy, d2phi_dudv, d2phi_dv2, &
      d2vp_dI4dI5, dI4_dBy, dI5_dBy, dI5_dexy, dexy_depsxy, &
      dphi_dv, du_dup, dup_dI4, dv_dvp, dvp_dI4, dvp_dI5)
use types
implicit none
REAL(KIND=dp), intent(in) :: d2I5_dBydexy
REAL(KIND=dp), intent(in) :: d2phi_dudv
REAL(KIND=dp), intent(in) :: d2phi_dv2
REAL(KIND=dp), intent(in) :: d2vp_dI4dI5
REAL(KIND=dp), intent(in) :: dI4_dBy
REAL(KIND=dp), intent(in) :: dI5_dBy
REAL(KIND=dp), intent(in) :: dI5_dexy
REAL(KIND=dp), intent(in) :: dexy_depsxy
REAL(KIND=dp), intent(in) :: dphi_dv
REAL(KIND=dp), intent(in) :: du_dup
REAL(KIND=dp), intent(in) :: dup_dI4
REAL(KIND=dp), intent(in) :: dv_dvp
REAL(KIND=dp), intent(in) :: dvp_dI4
REAL(KIND=dp), intent(in) :: dvp_dI5

d2phi_dBydepsxy = d2phi_dudv*dI4_dBy*dI5_dexy*dexy_depsxy*du_dup*dup_dI4 &
      *dv_dvp*dvp_dI5 + d2phi_dv2*dI5_dexy*dexy_depsxy*dv_dvp**2* &
      dvp_dI5*(dI4_dBy*dvp_dI4 + dI5_dBy*dvp_dI5) + dphi_dv*dv_dvp*( &
      d2I5_dBydexy*dexy_depsxy*dvp_dI5 + d2vp_dI4dI5*dI4_dBy*dI5_dexy* &
      dexy_depsxy)

end function

REAL(KIND=dp) function d2phi_dBydepsyy(d2I5_dBydeyy, d2phi_dudv, d2phi_dv2, &
      d2vp_dI4dI5, dI4_dBy, dI5_dBy, dI5_dexx, dI5_deyy, dI5_dezz, &
      dexx_depsyy, deyy_depsyy, dezz_depsyy, dphi_dv, du_dup, &
      dup_dI4, dv_dvp, dvp_dI4, dvp_dI5)
use types
implicit none
REAL(KIND=dp), intent(in) :: d2I5_dBydeyy
REAL(KIND=dp), intent(in) :: d2phi_dudv
REAL(KIND=dp), intent(in) :: d2phi_dv2
REAL(KIND=dp), intent(in) :: d2vp_dI4dI5
REAL(KIND=dp), intent(in) :: dI4_dBy
REAL(KIND=dp), intent(in) :: dI5_dBy
REAL(KIND=dp), intent(in) :: dI5_dexx
REAL(KIND=dp), intent(in) :: dI5_deyy
REAL(KIND=dp), intent(in) :: dI5_dezz
REAL(KIND=dp), intent(in) :: dexx_depsyy
REAL(KIND=dp), intent(in) :: deyy_depsyy
REAL(KIND=dp), intent(in) :: dezz_depsyy
REAL(KIND=dp), intent(in) :: dphi_dv
REAL(KIND=dp), intent(in) :: du_dup
REAL(KIND=dp), intent(in) :: dup_dI4
REAL(KIND=dp), intent(in) :: dv_dvp
REAL(KIND=dp), intent(in) :: dvp_dI4
REAL(KIND=dp), intent(in) :: dvp_dI5

d2phi_dBydepsyy = d2phi_dudv*dI4_dBy*du_dup*dup_dI4*dv_dvp*dvp_dI5*( &
      dI5_dexx*dexx_depsyy + dI5_deyy*deyy_depsyy + dI5_dezz* &
      dezz_depsyy) + d2phi_dv2*dv_dvp**2*dvp_dI5*(dI4_dBy*dvp_dI4 + &
      dI5_dBy*dvp_dI5)*(dI5_dexx*dexx_depsyy + dI5_deyy*deyy_depsyy + &
      dI5_dezz*dezz_depsyy) + dphi_dv*dv_dvp*(d2I5_dBydeyy*deyy_depsyy* &
      dvp_dI5 + d2vp_dI4dI5*dI4_dBy*(dI5_dexx*dexx_depsyy + dI5_deyy* &
      deyy_depsyy + dI5_dezz*dezz_depsyy))

end function

REAL(KIND=dp) function d2phi_dBydepsyz(d2I5_dBydeyz, d2phi_dudv, d2phi_dv2, &
      d2vp_dI4dI5, dI4_dBy, dI5_dBy, dI5_deyz, deyz_depsyz, &
      dphi_dv, du_dup, dup_dI4, dv_dvp, dvp_dI4, dvp_dI5)
use types
implicit none
REAL(KIND=dp), intent(in) :: d2I5_dBydeyz
REAL(KIND=dp), intent(in) :: d2phi_dudv
REAL(KIND=dp), intent(in) :: d2phi_dv2
REAL(KIND=dp), intent(in) :: d2vp_dI4dI5
REAL(KIND=dp), intent(in) :: dI4_dBy
REAL(KIND=dp), intent(in) :: dI5_dBy
REAL(KIND=dp), intent(in) :: dI5_deyz
REAL(KIND=dp), intent(in) :: deyz_depsyz
REAL(KIND=dp), intent(in) :: dphi_dv
REAL(KIND=dp), intent(in) :: du_dup
REAL(KIND=dp), intent(in) :: dup_dI4
REAL(KIND=dp), intent(in) :: dv_dvp
REAL(KIND=dp), intent(in) :: dvp_dI4
REAL(KIND=dp), intent(in) :: dvp_dI5

d2phi_dBydepsyz = d2phi_dudv*dI4_dBy*dI5_deyz*deyz_depsyz*du_dup*dup_dI4 &
      *dv_dvp*dvp_dI5 + d2phi_dv2*dI5_deyz*deyz_depsyz*dv_dvp**2* &
      dvp_dI5*(dI4_dBy*dvp_dI4 + dI5_dBy*dvp_dI5) + dphi_dv*dv_dvp*( &
      d2I5_dBydeyz*deyz_depsyz*dvp_dI5 + d2vp_dI4dI5*dI4_dBy*dI5_deyz* &
      deyz_depsyz)

end function

REAL(KIND=dp) function d2phi_dBydepszx(d2phi_dudv, d2phi_dv2, d2vp_dI4dI5, dI4_dBy, &
      dI5_dBy, dI5_dezx, dezx_depszx, dphi_dv, du_dup, dup_dI4, &
      dv_dvp, dvp_dI4, dvp_dI5)
use types
implicit none
REAL(KIND=dp), intent(in) :: d2phi_dudv
REAL(KIND=dp), intent(in) :: d2phi_dv2
REAL(KIND=dp), intent(in) :: d2vp_dI4dI5
REAL(KIND=dp), intent(in) :: dI4_dBy
REAL(KIND=dp), intent(in) :: dI5_dBy
REAL(KIND=dp), intent(in) :: dI5_dezx
REAL(KIND=dp), intent(in) :: dezx_depszx
REAL(KIND=dp), intent(in) :: dphi_dv
REAL(KIND=dp), intent(in) :: du_dup
REAL(KIND=dp), intent(in) :: dup_dI4
REAL(KIND=dp), intent(in) :: dv_dvp
REAL(KIND=dp), intent(in) :: dvp_dI4
REAL(KIND=dp), intent(in) :: dvp_dI5

d2phi_dBydepszx = d2phi_dudv*dI4_dBy*dI5_dezx*dezx_depszx*du_dup*dup_dI4 &
      *dv_dvp*dvp_dI5 + d2phi_dv2*dI5_dezx*dezx_depszx*dv_dvp**2* &
      dvp_dI5*(dI4_dBy*dvp_dI4 + dI5_dBy*dvp_dI5) + d2vp_dI4dI5*dI4_dBy &
      *dI5_dezx*dezx_depszx*dphi_dv*dv_dvp

end function

REAL(KIND=dp) function d2phi_dBydepszz(d2I5_dBydeyy, d2phi_dudv, d2phi_dv2, &
      d2vp_dI4dI5, dI4_dBy, dI5_dBy, dI5_dexx, dI5_deyy, dI5_dezz, &
      dexx_depszz, deyy_depszz, dezz_depszz, dphi_dv, du_dup, &
      dup_dI4, dv_dvp, dvp_dI4, dvp_dI5)
use types
implicit none
REAL(KIND=dp), intent(in) :: d2I5_dBydeyy
REAL(KIND=dp), intent(in) :: d2phi_dudv
REAL(KIND=dp), intent(in) :: d2phi_dv2
REAL(KIND=dp), intent(in) :: d2vp_dI4dI5
REAL(KIND=dp), intent(in) :: dI4_dBy
REAL(KIND=dp), intent(in) :: dI5_dBy
REAL(KIND=dp), intent(in) :: dI5_dexx
REAL(KIND=dp), intent(in) :: dI5_deyy
REAL(KIND=dp), intent(in) :: dI5_dezz
REAL(KIND=dp), intent(in) :: dexx_depszz
REAL(KIND=dp), intent(in) :: deyy_depszz
REAL(KIND=dp), intent(in) :: dezz_depszz
REAL(KIND=dp), intent(in) :: dphi_dv
REAL(KIND=dp), intent(in) :: du_dup
REAL(KIND=dp), intent(in) :: dup_dI4
REAL(KIND=dp), intent(in) :: dv_dvp
REAL(KIND=dp), intent(in) :: dvp_dI4
REAL(KIND=dp), intent(in) :: dvp_dI5

d2phi_dBydepszz = d2phi_dudv*dI4_dBy*du_dup*dup_dI4*dv_dvp*dvp_dI5*( &
      dI5_dexx*dexx_depszz + dI5_deyy*deyy_depszz + dI5_dezz* &
      dezz_depszz) + d2phi_dv2*dv_dvp**2*dvp_dI5*(dI4_dBy*dvp_dI4 + &
      dI5_dBy*dvp_dI5)*(dI5_dexx*dexx_depszz + dI5_deyy*deyy_depszz + &
      dI5_dezz*dezz_depszz) + dphi_dv*dv_dvp*(d2I5_dBydeyy*deyy_depszz* &
      dvp_dI5 + d2vp_dI4dI5*dI4_dBy*(dI5_dexx*dexx_depszz + dI5_deyy* &
      deyy_depszz + dI5_dezz*dezz_depszz))

end function

REAL(KIND=dp) function dphi_dBz(dI4_dBz, dI5_dBz, dphi_du, dphi_dv, du_dup, &
      dup_dI4, dv_dvp, dvp_dI4, dvp_dI5)
use types
implicit none
REAL(KIND=dp), intent(in) :: dI4_dBz
REAL(KIND=dp), intent(in) :: dI5_dBz
REAL(KIND=dp), intent(in) :: dphi_du
REAL(KIND=dp), intent(in) :: dphi_dv
REAL(KIND=dp), intent(in) :: du_dup
REAL(KIND=dp), intent(in) :: dup_dI4
REAL(KIND=dp), intent(in) :: dv_dvp
REAL(KIND=dp), intent(in) :: dvp_dI4
REAL(KIND=dp), intent(in) :: dvp_dI5

dphi_dBz = dI4_dBz*dphi_du*du_dup*dup_dI4 + dphi_dv*dv_dvp*(dI4_dBz* &
      dvp_dI4 + dI5_dBz*dvp_dI5)

end function

REAL(KIND=dp) function d2phi_dBz2(d2I4_dBz2, d2I5_dBz2, d2phi_du2, d2phi_dudv, &
      d2phi_dv2, d2up_dI42, d2vp_dI42, d2vp_dI4dI5, dI4_dBz, &
      dI5_dBz, dphi_du, dphi_dv, du_dup, dup_dI4, dv_dvp, dvp_dI4, &
      dvp_dI5)
use types
implicit none
REAL(KIND=dp), intent(in) :: d2I4_dBz2
REAL(KIND=dp), intent(in) :: d2I5_dBz2
REAL(KIND=dp), intent(in) :: d2phi_du2
REAL(KIND=dp), intent(in) :: d2phi_dudv
REAL(KIND=dp), intent(in) :: d2phi_dv2
REAL(KIND=dp), intent(in) :: d2up_dI42
REAL(KIND=dp), intent(in) :: d2vp_dI42
REAL(KIND=dp), intent(in) :: d2vp_dI4dI5
REAL(KIND=dp), intent(in) :: dI4_dBz
REAL(KIND=dp), intent(in) :: dI5_dBz
REAL(KIND=dp), intent(in) :: dphi_du
REAL(KIND=dp), intent(in) :: dphi_dv
REAL(KIND=dp), intent(in) :: du_dup
REAL(KIND=dp), intent(in) :: dup_dI4
REAL(KIND=dp), intent(in) :: dv_dvp
REAL(KIND=dp), intent(in) :: dvp_dI4
REAL(KIND=dp), intent(in) :: dvp_dI5

d2phi_dBz2 = d2I4_dBz2*dphi_du*du_dup*dup_dI4 + d2up_dI42*dI4_dBz**2* &
      dphi_du*du_dup + dI4_dBz*du_dup*dup_dI4*(d2phi_du2*dI4_dBz*du_dup &
      *dup_dI4 + d2phi_dudv*dv_dvp*(dI4_dBz*dvp_dI4 + dI5_dBz*dvp_dI5 &
      )) + dphi_dv*dv_dvp*(d2I4_dBz2*dvp_dI4 + d2I5_dBz2*dvp_dI5 + &
      d2vp_dI4dI5*dI4_dBz*dI5_dBz + dI4_dBz*(d2vp_dI42*dI4_dBz + &
      d2vp_dI4dI5*dI5_dBz)) + dv_dvp*(dI4_dBz*dvp_dI4 + dI5_dBz*dvp_dI5 &
      )*(d2phi_dudv*dI4_dBz*du_dup*dup_dI4 + d2phi_dv2*dv_dvp*(dI4_dBz* &
      dvp_dI4 + dI5_dBz*dvp_dI5))

end function

REAL(KIND=dp) function d2phi_dBzdepsxx(d2I5_dBzdezz, d2phi_dudv, d2phi_dv2, &
      d2vp_dI4dI5, dI4_dBz, dI5_dBz, dI5_dexx, dI5_deyy, dI5_dezz, &
      dexx_depsxx, deyy_depsxx, dezz_depsxx, dphi_dv, du_dup, &
      dup_dI4, dv_dvp, dvp_dI4, dvp_dI5)
use types
implicit none
REAL(KIND=dp), intent(in) :: d2I5_dBzdezz
REAL(KIND=dp), intent(in) :: d2phi_dudv
REAL(KIND=dp), intent(in) :: d2phi_dv2
REAL(KIND=dp), intent(in) :: d2vp_dI4dI5
REAL(KIND=dp), intent(in) :: dI4_dBz
REAL(KIND=dp), intent(in) :: dI5_dBz
REAL(KIND=dp), intent(in) :: dI5_dexx
REAL(KIND=dp), intent(in) :: dI5_deyy
REAL(KIND=dp), intent(in) :: dI5_dezz
REAL(KIND=dp), intent(in) :: dexx_depsxx
REAL(KIND=dp), intent(in) :: deyy_depsxx
REAL(KIND=dp), intent(in) :: dezz_depsxx
REAL(KIND=dp), intent(in) :: dphi_dv
REAL(KIND=dp), intent(in) :: du_dup
REAL(KIND=dp), intent(in) :: dup_dI4
REAL(KIND=dp), intent(in) :: dv_dvp
REAL(KIND=dp), intent(in) :: dvp_dI4
REAL(KIND=dp), intent(in) :: dvp_dI5

d2phi_dBzdepsxx = d2phi_dudv*dI4_dBz*du_dup*dup_dI4*dv_dvp*dvp_dI5*( &
      dI5_dexx*dexx_depsxx + dI5_deyy*deyy_depsxx + dI5_dezz* &
      dezz_depsxx) + d2phi_dv2*dv_dvp**2*dvp_dI5*(dI4_dBz*dvp_dI4 + &
      dI5_dBz*dvp_dI5)*(dI5_dexx*dexx_depsxx + dI5_deyy*deyy_depsxx + &
      dI5_dezz*dezz_depsxx) + dphi_dv*dv_dvp*(d2I5_dBzdezz*dezz_depsxx* &
      dvp_dI5 + d2vp_dI4dI5*dI4_dBz*(dI5_dexx*dexx_depsxx + dI5_deyy* &
      deyy_depsxx + dI5_dezz*dezz_depsxx))

end function

REAL(KIND=dp) function d2phi_dBzdepsxy(d2phi_dudv, d2phi_dv2, d2vp_dI4dI5, dI4_dBz, &
      dI5_dBz, dI5_dexy, dexy_depsxy, dphi_dv, du_dup, dup_dI4, &
      dv_dvp, dvp_dI4, dvp_dI5)
use types
implicit none
REAL(KIND=dp), intent(in) :: d2phi_dudv
REAL(KIND=dp), intent(in) :: d2phi_dv2
REAL(KIND=dp), intent(in) :: d2vp_dI4dI5
REAL(KIND=dp), intent(in) :: dI4_dBz
REAL(KIND=dp), intent(in) :: dI5_dBz
REAL(KIND=dp), intent(in) :: dI5_dexy
REAL(KIND=dp), intent(in) :: dexy_depsxy
REAL(KIND=dp), intent(in) :: dphi_dv
REAL(KIND=dp), intent(in) :: du_dup
REAL(KIND=dp), intent(in) :: dup_dI4
REAL(KIND=dp), intent(in) :: dv_dvp
REAL(KIND=dp), intent(in) :: dvp_dI4
REAL(KIND=dp), intent(in) :: dvp_dI5

d2phi_dBzdepsxy = d2phi_dudv*dI4_dBz*dI5_dexy*dexy_depsxy*du_dup*dup_dI4 &
      *dv_dvp*dvp_dI5 + d2phi_dv2*dI5_dexy*dexy_depsxy*dv_dvp**2* &
      dvp_dI5*(dI4_dBz*dvp_dI4 + dI5_dBz*dvp_dI5) + d2vp_dI4dI5*dI4_dBz &
      *dI5_dexy*dexy_depsxy*dphi_dv*dv_dvp

end function

REAL(KIND=dp) function d2phi_dBzdepsyy(d2I5_dBzdezz, d2phi_dudv, d2phi_dv2, &
      d2vp_dI4dI5, dI4_dBz, dI5_dBz, dI5_dexx, dI5_deyy, dI5_dezz, &
      dexx_depsyy, deyy_depsyy, dezz_depsyy, dphi_dv, du_dup, &
      dup_dI4, dv_dvp, dvp_dI4, dvp_dI5)
use types
implicit none
REAL(KIND=dp), intent(in) :: d2I5_dBzdezz
REAL(KIND=dp), intent(in) :: d2phi_dudv
REAL(KIND=dp), intent(in) :: d2phi_dv2
REAL(KIND=dp), intent(in) :: d2vp_dI4dI5
REAL(KIND=dp), intent(in) :: dI4_dBz
REAL(KIND=dp), intent(in) :: dI5_dBz
REAL(KIND=dp), intent(in) :: dI5_dexx
REAL(KIND=dp), intent(in) :: dI5_deyy
REAL(KIND=dp), intent(in) :: dI5_dezz
REAL(KIND=dp), intent(in) :: dexx_depsyy
REAL(KIND=dp), intent(in) :: deyy_depsyy
REAL(KIND=dp), intent(in) :: dezz_depsyy
REAL(KIND=dp), intent(in) :: dphi_dv
REAL(KIND=dp), intent(in) :: du_dup
REAL(KIND=dp), intent(in) :: dup_dI4
REAL(KIND=dp), intent(in) :: dv_dvp
REAL(KIND=dp), intent(in) :: dvp_dI4
REAL(KIND=dp), intent(in) :: dvp_dI5

d2phi_dBzdepsyy = d2phi_dudv*dI4_dBz*du_dup*dup_dI4*dv_dvp*dvp_dI5*( &
      dI5_dexx*dexx_depsyy + dI5_deyy*deyy_depsyy + dI5_dezz* &
      dezz_depsyy) + d2phi_dv2*dv_dvp**2*dvp_dI5*(dI4_dBz*dvp_dI4 + &
      dI5_dBz*dvp_dI5)*(dI5_dexx*dexx_depsyy + dI5_deyy*deyy_depsyy + &
      dI5_dezz*dezz_depsyy) + dphi_dv*dv_dvp*(d2I5_dBzdezz*dezz_depsyy* &
      dvp_dI5 + d2vp_dI4dI5*dI4_dBz*(dI5_dexx*dexx_depsyy + dI5_deyy* &
      deyy_depsyy + dI5_dezz*dezz_depsyy))

end function

REAL(KIND=dp) function d2phi_dBzdepsyz(d2I5_dBzdeyz, d2phi_dudv, d2phi_dv2, &
      d2vp_dI4dI5, dI4_dBz, dI5_dBz, dI5_deyz, deyz_depsyz, &
      dphi_dv, du_dup, dup_dI4, dv_dvp, dvp_dI4, dvp_dI5)
use types
implicit none
REAL(KIND=dp), intent(in) :: d2I5_dBzdeyz
REAL(KIND=dp), intent(in) :: d2phi_dudv
REAL(KIND=dp), intent(in) :: d2phi_dv2
REAL(KIND=dp), intent(in) :: d2vp_dI4dI5
REAL(KIND=dp), intent(in) :: dI4_dBz
REAL(KIND=dp), intent(in) :: dI5_dBz
REAL(KIND=dp), intent(in) :: dI5_deyz
REAL(KIND=dp), intent(in) :: deyz_depsyz
REAL(KIND=dp), intent(in) :: dphi_dv
REAL(KIND=dp), intent(in) :: du_dup
REAL(KIND=dp), intent(in) :: dup_dI4
REAL(KIND=dp), intent(in) :: dv_dvp
REAL(KIND=dp), intent(in) :: dvp_dI4
REAL(KIND=dp), intent(in) :: dvp_dI5

d2phi_dBzdepsyz = d2phi_dudv*dI4_dBz*dI5_deyz*deyz_depsyz*du_dup*dup_dI4 &
      *dv_dvp*dvp_dI5 + d2phi_dv2*dI5_deyz*deyz_depsyz*dv_dvp**2* &
      dvp_dI5*(dI4_dBz*dvp_dI4 + dI5_dBz*dvp_dI5) + dphi_dv*dv_dvp*( &
      d2I5_dBzdeyz*deyz_depsyz*dvp_dI5 + d2vp_dI4dI5*dI4_dBz*dI5_deyz* &
      deyz_depsyz)

end function

REAL(KIND=dp) function d2phi_dBzdepszx(d2I5_dBzdezx, d2phi_dudv, d2phi_dv2, &
      d2vp_dI4dI5, dI4_dBz, dI5_dBz, dI5_dezx, dezx_depszx, &
      dphi_dv, du_dup, dup_dI4, dv_dvp, dvp_dI4, dvp_dI5)
use types
implicit none
REAL(KIND=dp), intent(in) :: d2I5_dBzdezx
REAL(KIND=dp), intent(in) :: d2phi_dudv
REAL(KIND=dp), intent(in) :: d2phi_dv2
REAL(KIND=dp), intent(in) :: d2vp_dI4dI5
REAL(KIND=dp), intent(in) :: dI4_dBz
REAL(KIND=dp), intent(in) :: dI5_dBz
REAL(KIND=dp), intent(in) :: dI5_dezx
REAL(KIND=dp), intent(in) :: dezx_depszx
REAL(KIND=dp), intent(in) :: dphi_dv
REAL(KIND=dp), intent(in) :: du_dup
REAL(KIND=dp), intent(in) :: dup_dI4
REAL(KIND=dp), intent(in) :: dv_dvp
REAL(KIND=dp), intent(in) :: dvp_dI4
REAL(KIND=dp), intent(in) :: dvp_dI5

d2phi_dBzdepszx = d2phi_dudv*dI4_dBz*dI5_dezx*dezx_depszx*du_dup*dup_dI4 &
      *dv_dvp*dvp_dI5 + d2phi_dv2*dI5_dezx*dezx_depszx*dv_dvp**2* &
      dvp_dI5*(dI4_dBz*dvp_dI4 + dI5_dBz*dvp_dI5) + dphi_dv*dv_dvp*( &
      d2I5_dBzdezx*dezx_depszx*dvp_dI5 + d2vp_dI4dI5*dI4_dBz*dI5_dezx* &
      dezx_depszx)

end function

REAL(KIND=dp) function d2phi_dBzdepszz(d2I5_dBzdezz, d2phi_dudv, d2phi_dv2, &
      d2vp_dI4dI5, dI4_dBz, dI5_dBz, dI5_dexx, dI5_deyy, dI5_dezz, &
      dexx_depszz, deyy_depszz, dezz_depszz, dphi_dv, du_dup, &
      dup_dI4, dv_dvp, dvp_dI4, dvp_dI5)
use types
implicit none
REAL(KIND=dp), intent(in) :: d2I5_dBzdezz
REAL(KIND=dp), intent(in) :: d2phi_dudv
REAL(KIND=dp), intent(in) :: d2phi_dv2
REAL(KIND=dp), intent(in) :: d2vp_dI4dI5
REAL(KIND=dp), intent(in) :: dI4_dBz
REAL(KIND=dp), intent(in) :: dI5_dBz
REAL(KIND=dp), intent(in) :: dI5_dexx
REAL(KIND=dp), intent(in) :: dI5_deyy
REAL(KIND=dp), intent(in) :: dI5_dezz
REAL(KIND=dp), intent(in) :: dexx_depszz
REAL(KIND=dp), intent(in) :: deyy_depszz
REAL(KIND=dp), intent(in) :: dezz_depszz
REAL(KIND=dp), intent(in) :: dphi_dv
REAL(KIND=dp), intent(in) :: du_dup
REAL(KIND=dp), intent(in) :: dup_dI4
REAL(KIND=dp), intent(in) :: dv_dvp
REAL(KIND=dp), intent(in) :: dvp_dI4
REAL(KIND=dp), intent(in) :: dvp_dI5

d2phi_dBzdepszz = d2phi_dudv*dI4_dBz*du_dup*dup_dI4*dv_dvp*dvp_dI5*( &
      dI5_dexx*dexx_depszz + dI5_deyy*deyy_depszz + dI5_dezz* &
      dezz_depszz) + d2phi_dv2*dv_dvp**2*dvp_dI5*(dI4_dBz*dvp_dI4 + &
      dI5_dBz*dvp_dI5)*(dI5_dexx*dexx_depszz + dI5_deyy*deyy_depszz + &
      dI5_dezz*dezz_depszz) + dphi_dv*dv_dvp*(d2I5_dBzdezz*dezz_depszz* &
      dvp_dI5 + d2vp_dI4dI5*dI4_dBz*(dI5_dexx*dexx_depszz + dI5_deyy* &
      deyy_depszz + dI5_dezz*dezz_depszz))

end function

REAL(KIND=dp) function dphi_depsxx(dI5_dexx, dI5_deyy, dI5_dezz, dexx_depsxx, &
      deyy_depsxx, dezz_depsxx, dphi_dv, dv_dvp, dvp_dI5)
use types
implicit none
REAL(KIND=dp), intent(in) :: dI5_dexx
REAL(KIND=dp), intent(in) :: dI5_deyy
REAL(KIND=dp), intent(in) :: dI5_dezz
REAL(KIND=dp), intent(in) :: dexx_depsxx
REAL(KIND=dp), intent(in) :: deyy_depsxx
REAL(KIND=dp), intent(in) :: dezz_depsxx
REAL(KIND=dp), intent(in) :: dphi_dv
REAL(KIND=dp), intent(in) :: dv_dvp
REAL(KIND=dp), intent(in) :: dvp_dI5

dphi_depsxx = dphi_dv*dv_dvp*dvp_dI5*(dI5_dexx*dexx_depsxx + dI5_deyy* &
      deyy_depsxx + dI5_dezz*dezz_depsxx)

end function

REAL(KIND=dp) function d2phi_depsxx2(d2phi_dv2, dI5_dexx, dI5_deyy, dI5_dezz, &
      dexx_depsxx, deyy_depsxx, dezz_depsxx, dv_dvp, dvp_dI5)
use types
implicit none
REAL(KIND=dp), intent(in) :: d2phi_dv2
REAL(KIND=dp), intent(in) :: dI5_dexx
REAL(KIND=dp), intent(in) :: dI5_deyy
REAL(KIND=dp), intent(in) :: dI5_dezz
REAL(KIND=dp), intent(in) :: dexx_depsxx
REAL(KIND=dp), intent(in) :: deyy_depsxx
REAL(KIND=dp), intent(in) :: dezz_depsxx
REAL(KIND=dp), intent(in) :: dv_dvp
REAL(KIND=dp), intent(in) :: dvp_dI5

d2phi_depsxx2 = d2phi_dv2*dv_dvp**2*dvp_dI5**2*(dI5_dexx*dexx_depsxx + &
      dI5_deyy*deyy_depsxx + dI5_dezz*dezz_depsxx)**2

end function

REAL(KIND=dp) function d2phi_depsxxdepsxy(d2phi_dv2, dI5_dexx, dI5_dexy, dI5_deyy, &
      dI5_dezz, dexx_depsxx, dexy_depsxy, deyy_depsxx, &
      dezz_depsxx, dv_dvp, dvp_dI5)
use types
implicit none
REAL(KIND=dp), intent(in) :: d2phi_dv2
REAL(KIND=dp), intent(in) :: dI5_dexx
REAL(KIND=dp), intent(in) :: dI5_dexy
REAL(KIND=dp), intent(in) :: dI5_deyy
REAL(KIND=dp), intent(in) :: dI5_dezz
REAL(KIND=dp), intent(in) :: dexx_depsxx
REAL(KIND=dp), intent(in) :: dexy_depsxy
REAL(KIND=dp), intent(in) :: deyy_depsxx
REAL(KIND=dp), intent(in) :: dezz_depsxx
REAL(KIND=dp), intent(in) :: dv_dvp
REAL(KIND=dp), intent(in) :: dvp_dI5

d2phi_depsxxdepsxy = d2phi_dv2*dI5_dexy*dexy_depsxy*dv_dvp**2*dvp_dI5**2 &
      *(dI5_dexx*dexx_depsxx + dI5_deyy*deyy_depsxx + dI5_dezz* &
      dezz_depsxx)

end function

REAL(KIND=dp) function d2phi_depsxxdepsyy(d2phi_dv2, dI5_dexx, dI5_deyy, dI5_dezz, &
      dexx_depsxx, dexx_depsyy, deyy_depsxx, deyy_depsyy, &
      dezz_depsxx, dezz_depsyy, dv_dvp, dvp_dI5)
use types
implicit none
REAL(KIND=dp), intent(in) :: d2phi_dv2
REAL(KIND=dp), intent(in) :: dI5_dexx
REAL(KIND=dp), intent(in) :: dI5_deyy
REAL(KIND=dp), intent(in) :: dI5_dezz
REAL(KIND=dp), intent(in) :: dexx_depsxx
REAL(KIND=dp), intent(in) :: dexx_depsyy
REAL(KIND=dp), intent(in) :: deyy_depsxx
REAL(KIND=dp), intent(in) :: deyy_depsyy
REAL(KIND=dp), intent(in) :: dezz_depsxx
REAL(KIND=dp), intent(in) :: dezz_depsyy
REAL(KIND=dp), intent(in) :: dv_dvp
REAL(KIND=dp), intent(in) :: dvp_dI5

d2phi_depsxxdepsyy = d2phi_dv2*dv_dvp**2*dvp_dI5**2*(dI5_dexx* &
      dexx_depsxx + dI5_deyy*deyy_depsxx + dI5_dezz*dezz_depsxx)*( &
      dI5_dexx*dexx_depsyy + dI5_deyy*deyy_depsyy + dI5_dezz* &
      dezz_depsyy)

end function

REAL(KIND=dp) function d2phi_depsxxdepsyz(d2phi_dv2, dI5_dexx, dI5_deyy, dI5_deyz, &
      dI5_dezz, dexx_depsxx, deyy_depsxx, deyz_depsyz, &
      dezz_depsxx, dv_dvp, dvp_dI5)
use types
implicit none
REAL(KIND=dp), intent(in) :: d2phi_dv2
REAL(KIND=dp), intent(in) :: dI5_dexx
REAL(KIND=dp), intent(in) :: dI5_deyy
REAL(KIND=dp), intent(in) :: dI5_deyz
REAL(KIND=dp), intent(in) :: dI5_dezz
REAL(KIND=dp), intent(in) :: dexx_depsxx
REAL(KIND=dp), intent(in) :: deyy_depsxx
REAL(KIND=dp), intent(in) :: deyz_depsyz
REAL(KIND=dp), intent(in) :: dezz_depsxx
REAL(KIND=dp), intent(in) :: dv_dvp
REAL(KIND=dp), intent(in) :: dvp_dI5

d2phi_depsxxdepsyz = d2phi_dv2*dI5_deyz*deyz_depsyz*dv_dvp**2*dvp_dI5**2 &
      *(dI5_dexx*dexx_depsxx + dI5_deyy*deyy_depsxx + dI5_dezz* &
      dezz_depsxx)

end function

REAL(KIND=dp) function d2phi_depsxxdepszx(d2phi_dv2, dI5_dexx, dI5_deyy, dI5_dezx, &
      dI5_dezz, dexx_depsxx, deyy_depsxx, dezx_depszx, &
      dezz_depsxx, dv_dvp, dvp_dI5)
use types
implicit none
REAL(KIND=dp), intent(in) :: d2phi_dv2
REAL(KIND=dp), intent(in) :: dI5_dexx
REAL(KIND=dp), intent(in) :: dI5_deyy
REAL(KIND=dp), intent(in) :: dI5_dezx
REAL(KIND=dp), intent(in) :: dI5_dezz
REAL(KIND=dp), intent(in) :: dexx_depsxx
REAL(KIND=dp), intent(in) :: deyy_depsxx
REAL(KIND=dp), intent(in) :: dezx_depszx
REAL(KIND=dp), intent(in) :: dezz_depsxx
REAL(KIND=dp), intent(in) :: dv_dvp
REAL(KIND=dp), intent(in) :: dvp_dI5

d2phi_depsxxdepszx = d2phi_dv2*dI5_dezx*dezx_depszx*dv_dvp**2*dvp_dI5**2 &
      *(dI5_dexx*dexx_depsxx + dI5_deyy*deyy_depsxx + dI5_dezz* &
      dezz_depsxx)

end function

REAL(KIND=dp) function d2phi_depsxxdepszz(d2phi_dv2, dI5_dexx, dI5_deyy, dI5_dezz, &
      dexx_depsxx, dexx_depszz, deyy_depsxx, deyy_depszz, &
      dezz_depsxx, dezz_depszz, dv_dvp, dvp_dI5)
use types
implicit none
REAL(KIND=dp), intent(in) :: d2phi_dv2
REAL(KIND=dp), intent(in) :: dI5_dexx
REAL(KIND=dp), intent(in) :: dI5_deyy
REAL(KIND=dp), intent(in) :: dI5_dezz
REAL(KIND=dp), intent(in) :: dexx_depsxx
REAL(KIND=dp), intent(in) :: dexx_depszz
REAL(KIND=dp), intent(in) :: deyy_depsxx
REAL(KIND=dp), intent(in) :: deyy_depszz
REAL(KIND=dp), intent(in) :: dezz_depsxx
REAL(KIND=dp), intent(in) :: dezz_depszz
REAL(KIND=dp), intent(in) :: dv_dvp
REAL(KIND=dp), intent(in) :: dvp_dI5

d2phi_depsxxdepszz = d2phi_dv2*dv_dvp**2*dvp_dI5**2*(dI5_dexx* &
      dexx_depsxx + dI5_deyy*deyy_depsxx + dI5_dezz*dezz_depsxx)*( &
      dI5_dexx*dexx_depszz + dI5_deyy*deyy_depszz + dI5_dezz* &
      dezz_depszz)

end function

REAL(KIND=dp) function dphi_depsxy(dI5_dexy, dexy_depsxy, dphi_dv, dv_dvp, dvp_dI5)
use types
implicit none
REAL(KIND=dp), intent(in) :: dI5_dexy
REAL(KIND=dp), intent(in) :: dexy_depsxy
REAL(KIND=dp), intent(in) :: dphi_dv
REAL(KIND=dp), intent(in) :: dv_dvp
REAL(KIND=dp), intent(in) :: dvp_dI5

dphi_depsxy = dI5_dexy*dexy_depsxy*dphi_dv*dv_dvp*dvp_dI5

end function

REAL(KIND=dp) function d2phi_depsxy2(d2phi_dv2, dI5_dexy, dexy_depsxy, dv_dvp, &
      dvp_dI5)
use types
implicit none
REAL(KIND=dp), intent(in) :: d2phi_dv2
REAL(KIND=dp), intent(in) :: dI5_dexy
REAL(KIND=dp), intent(in) :: dexy_depsxy
REAL(KIND=dp), intent(in) :: dv_dvp
REAL(KIND=dp), intent(in) :: dvp_dI5

d2phi_depsxy2 = d2phi_dv2*dI5_dexy**2*dexy_depsxy**2*dv_dvp**2*dvp_dI5** &
      2

end function

REAL(KIND=dp) function d2phi_depsxydepsyy(d2phi_dv2, dI5_dexx, dI5_dexy, dI5_deyy, &
      dI5_dezz, dexx_depsyy, dexy_depsxy, deyy_depsyy, &
      dezz_depsyy, dv_dvp, dvp_dI5)
use types
implicit none
REAL(KIND=dp), intent(in) :: d2phi_dv2
REAL(KIND=dp), intent(in) :: dI5_dexx
REAL(KIND=dp), intent(in) :: dI5_dexy
REAL(KIND=dp), intent(in) :: dI5_deyy
REAL(KIND=dp), intent(in) :: dI5_dezz
REAL(KIND=dp), intent(in) :: dexx_depsyy
REAL(KIND=dp), intent(in) :: dexy_depsxy
REAL(KIND=dp), intent(in) :: deyy_depsyy
REAL(KIND=dp), intent(in) :: dezz_depsyy
REAL(KIND=dp), intent(in) :: dv_dvp
REAL(KIND=dp), intent(in) :: dvp_dI5

d2phi_depsxydepsyy = d2phi_dv2*dI5_dexy*dexy_depsxy*dv_dvp**2*dvp_dI5**2 &
      *(dI5_dexx*dexx_depsyy + dI5_deyy*deyy_depsyy + dI5_dezz* &
      dezz_depsyy)

end function

REAL(KIND=dp) function d2phi_depsxydepsyz(d2phi_dv2, dI5_dexy, dI5_deyz, &
      dexy_depsxy, deyz_depsyz, dv_dvp, dvp_dI5)
use types
implicit none
REAL(KIND=dp), intent(in) :: d2phi_dv2
REAL(KIND=dp), intent(in) :: dI5_dexy
REAL(KIND=dp), intent(in) :: dI5_deyz
REAL(KIND=dp), intent(in) :: dexy_depsxy
REAL(KIND=dp), intent(in) :: deyz_depsyz
REAL(KIND=dp), intent(in) :: dv_dvp
REAL(KIND=dp), intent(in) :: dvp_dI5

d2phi_depsxydepsyz = d2phi_dv2*dI5_dexy*dI5_deyz*dexy_depsxy*deyz_depsyz &
      *dv_dvp**2*dvp_dI5**2

end function

REAL(KIND=dp) function d2phi_depsxydepszx(d2phi_dv2, dI5_dexy, dI5_dezx, &
      dexy_depsxy, dezx_depszx, dv_dvp, dvp_dI5)
use types
implicit none
REAL(KIND=dp), intent(in) :: d2phi_dv2
REAL(KIND=dp), intent(in) :: dI5_dexy
REAL(KIND=dp), intent(in) :: dI5_dezx
REAL(KIND=dp), intent(in) :: dexy_depsxy
REAL(KIND=dp), intent(in) :: dezx_depszx
REAL(KIND=dp), intent(in) :: dv_dvp
REAL(KIND=dp), intent(in) :: dvp_dI5

d2phi_depsxydepszx = d2phi_dv2*dI5_dexy*dI5_dezx*dexy_depsxy*dezx_depszx &
      *dv_dvp**2*dvp_dI5**2

end function

REAL(KIND=dp) function d2phi_depsxydepszz(d2phi_dv2, dI5_dexx, dI5_dexy, dI5_deyy, &
      dI5_dezz, dexx_depszz, dexy_depsxy, deyy_depszz, &
      dezz_depszz, dv_dvp, dvp_dI5)
use types
implicit none
REAL(KIND=dp), intent(in) :: d2phi_dv2
REAL(KIND=dp), intent(in) :: dI5_dexx
REAL(KIND=dp), intent(in) :: dI5_dexy
REAL(KIND=dp), intent(in) :: dI5_deyy
REAL(KIND=dp), intent(in) :: dI5_dezz
REAL(KIND=dp), intent(in) :: dexx_depszz
REAL(KIND=dp), intent(in) :: dexy_depsxy
REAL(KIND=dp), intent(in) :: deyy_depszz
REAL(KIND=dp), intent(in) :: dezz_depszz
REAL(KIND=dp), intent(in) :: dv_dvp
REAL(KIND=dp), intent(in) :: dvp_dI5

d2phi_depsxydepszz = d2phi_dv2*dI5_dexy*dexy_depsxy*dv_dvp**2*dvp_dI5**2 &
      *(dI5_dexx*dexx_depszz + dI5_deyy*deyy_depszz + dI5_dezz* &
      dezz_depszz)

end function

REAL(KIND=dp) function dphi_depsyy(dI5_dexx, dI5_deyy, dI5_dezz, dexx_depsyy, &
      deyy_depsyy, dezz_depsyy, dphi_dv, dv_dvp, dvp_dI5)
use types
implicit none
REAL(KIND=dp), intent(in) :: dI5_dexx
REAL(KIND=dp), intent(in) :: dI5_deyy
REAL(KIND=dp), intent(in) :: dI5_dezz
REAL(KIND=dp), intent(in) :: dexx_depsyy
REAL(KIND=dp), intent(in) :: deyy_depsyy
REAL(KIND=dp), intent(in) :: dezz_depsyy
REAL(KIND=dp), intent(in) :: dphi_dv
REAL(KIND=dp), intent(in) :: dv_dvp
REAL(KIND=dp), intent(in) :: dvp_dI5

dphi_depsyy = dphi_dv*dv_dvp*dvp_dI5*(dI5_dexx*dexx_depsyy + dI5_deyy* &
      deyy_depsyy + dI5_dezz*dezz_depsyy)

end function

REAL(KIND=dp) function d2phi_depsyy2(d2phi_dv2, dI5_dexx, dI5_deyy, dI5_dezz, &
      dexx_depsyy, deyy_depsyy, dezz_depsyy, dv_dvp, dvp_dI5)
use types
implicit none
REAL(KIND=dp), intent(in) :: d2phi_dv2
REAL(KIND=dp), intent(in) :: dI5_dexx
REAL(KIND=dp), intent(in) :: dI5_deyy
REAL(KIND=dp), intent(in) :: dI5_dezz
REAL(KIND=dp), intent(in) :: dexx_depsyy
REAL(KIND=dp), intent(in) :: deyy_depsyy
REAL(KIND=dp), intent(in) :: dezz_depsyy
REAL(KIND=dp), intent(in) :: dv_dvp
REAL(KIND=dp), intent(in) :: dvp_dI5

d2phi_depsyy2 = d2phi_dv2*dv_dvp**2*dvp_dI5**2*(dI5_dexx*dexx_depsyy + &
      dI5_deyy*deyy_depsyy + dI5_dezz*dezz_depsyy)**2

end function

REAL(KIND=dp) function d2phi_depsyydepsyz(d2phi_dv2, dI5_dexx, dI5_deyy, dI5_deyz, &
      dI5_dezz, dexx_depsyy, deyy_depsyy, deyz_depsyz, &
      dezz_depsyy, dv_dvp, dvp_dI5)
use types
implicit none
REAL(KIND=dp), intent(in) :: d2phi_dv2
REAL(KIND=dp), intent(in) :: dI5_dexx
REAL(KIND=dp), intent(in) :: dI5_deyy
REAL(KIND=dp), intent(in) :: dI5_deyz
REAL(KIND=dp), intent(in) :: dI5_dezz
REAL(KIND=dp), intent(in) :: dexx_depsyy
REAL(KIND=dp), intent(in) :: deyy_depsyy
REAL(KIND=dp), intent(in) :: deyz_depsyz
REAL(KIND=dp), intent(in) :: dezz_depsyy
REAL(KIND=dp), intent(in) :: dv_dvp
REAL(KIND=dp), intent(in) :: dvp_dI5

d2phi_depsyydepsyz = d2phi_dv2*dI5_deyz*deyz_depsyz*dv_dvp**2*dvp_dI5**2 &
      *(dI5_dexx*dexx_depsyy + dI5_deyy*deyy_depsyy + dI5_dezz* &
      dezz_depsyy)

end function

REAL(KIND=dp) function d2phi_depsyydepszx(d2phi_dv2, dI5_dexx, dI5_deyy, dI5_dezx, &
      dI5_dezz, dexx_depsyy, deyy_depsyy, dezx_depszx, &
      dezz_depsyy, dv_dvp, dvp_dI5)
use types
implicit none
REAL(KIND=dp), intent(in) :: d2phi_dv2
REAL(KIND=dp), intent(in) :: dI5_dexx
REAL(KIND=dp), intent(in) :: dI5_deyy
REAL(KIND=dp), intent(in) :: dI5_dezx
REAL(KIND=dp), intent(in) :: dI5_dezz
REAL(KIND=dp), intent(in) :: dexx_depsyy
REAL(KIND=dp), intent(in) :: deyy_depsyy
REAL(KIND=dp), intent(in) :: dezx_depszx
REAL(KIND=dp), intent(in) :: dezz_depsyy
REAL(KIND=dp), intent(in) :: dv_dvp
REAL(KIND=dp), intent(in) :: dvp_dI5

d2phi_depsyydepszx = d2phi_dv2*dI5_dezx*dezx_depszx*dv_dvp**2*dvp_dI5**2 &
      *(dI5_dexx*dexx_depsyy + dI5_deyy*deyy_depsyy + dI5_dezz* &
      dezz_depsyy)

end function

REAL(KIND=dp) function d2phi_depsyydepszz(d2phi_dv2, dI5_dexx, dI5_deyy, dI5_dezz, &
      dexx_depsyy, dexx_depszz, deyy_depsyy, deyy_depszz, &
      dezz_depsyy, dezz_depszz, dv_dvp, dvp_dI5)
use types
implicit none
REAL(KIND=dp), intent(in) :: d2phi_dv2
REAL(KIND=dp), intent(in) :: dI5_dexx
REAL(KIND=dp), intent(in) :: dI5_deyy
REAL(KIND=dp), intent(in) :: dI5_dezz
REAL(KIND=dp), intent(in) :: dexx_depsyy
REAL(KIND=dp), intent(in) :: dexx_depszz
REAL(KIND=dp), intent(in) :: deyy_depsyy
REAL(KIND=dp), intent(in) :: deyy_depszz
REAL(KIND=dp), intent(in) :: dezz_depsyy
REAL(KIND=dp), intent(in) :: dezz_depszz
REAL(KIND=dp), intent(in) :: dv_dvp
REAL(KIND=dp), intent(in) :: dvp_dI5

d2phi_depsyydepszz = d2phi_dv2*dv_dvp**2*dvp_dI5**2*(dI5_dexx* &
      dexx_depsyy + dI5_deyy*deyy_depsyy + dI5_dezz*dezz_depsyy)*( &
      dI5_dexx*dexx_depszz + dI5_deyy*deyy_depszz + dI5_dezz* &
      dezz_depszz)

end function

REAL(KIND=dp) function dphi_depsyz(dI5_deyz, deyz_depsyz, dphi_dv, dv_dvp, dvp_dI5)
use types
implicit none
REAL(KIND=dp), intent(in) :: dI5_deyz
REAL(KIND=dp), intent(in) :: deyz_depsyz
REAL(KIND=dp), intent(in) :: dphi_dv
REAL(KIND=dp), intent(in) :: dv_dvp
REAL(KIND=dp), intent(in) :: dvp_dI5

dphi_depsyz = dI5_deyz*deyz_depsyz*dphi_dv*dv_dvp*dvp_dI5

end function

REAL(KIND=dp) function d2phi_depsyz2(d2phi_dv2, dI5_deyz, deyz_depsyz, dv_dvp, &
      dvp_dI5)
use types
implicit none
REAL(KIND=dp), intent(in) :: d2phi_dv2
REAL(KIND=dp), intent(in) :: dI5_deyz
REAL(KIND=dp), intent(in) :: deyz_depsyz
REAL(KIND=dp), intent(in) :: dv_dvp
REAL(KIND=dp), intent(in) :: dvp_dI5

d2phi_depsyz2 = d2phi_dv2*dI5_deyz**2*deyz_depsyz**2*dv_dvp**2*dvp_dI5** &
      2

end function

REAL(KIND=dp) function d2phi_depsyzdepszx(d2phi_dv2, dI5_deyz, dI5_dezx, &
      deyz_depsyz, dezx_depszx, dv_dvp, dvp_dI5)
use types
implicit none
REAL(KIND=dp), intent(in) :: d2phi_dv2
REAL(KIND=dp), intent(in) :: dI5_deyz
REAL(KIND=dp), intent(in) :: dI5_dezx
REAL(KIND=dp), intent(in) :: deyz_depsyz
REAL(KIND=dp), intent(in) :: dezx_depszx
REAL(KIND=dp), intent(in) :: dv_dvp
REAL(KIND=dp), intent(in) :: dvp_dI5

d2phi_depsyzdepszx = d2phi_dv2*dI5_deyz*dI5_dezx*deyz_depsyz*dezx_depszx &
      *dv_dvp**2*dvp_dI5**2

end function

REAL(KIND=dp) function d2phi_depsyzdepszz(d2phi_dv2, dI5_dexx, dI5_deyy, dI5_deyz, &
      dI5_dezz, dexx_depszz, deyy_depszz, deyz_depsyz, &
      dezz_depszz, dv_dvp, dvp_dI5)
use types
implicit none
REAL(KIND=dp), intent(in) :: d2phi_dv2
REAL(KIND=dp), intent(in) :: dI5_dexx
REAL(KIND=dp), intent(in) :: dI5_deyy
REAL(KIND=dp), intent(in) :: dI5_deyz
REAL(KIND=dp), intent(in) :: dI5_dezz
REAL(KIND=dp), intent(in) :: dexx_depszz
REAL(KIND=dp), intent(in) :: deyy_depszz
REAL(KIND=dp), intent(in) :: deyz_depsyz
REAL(KIND=dp), intent(in) :: dezz_depszz
REAL(KIND=dp), intent(in) :: dv_dvp
REAL(KIND=dp), intent(in) :: dvp_dI5

d2phi_depsyzdepszz = d2phi_dv2*dI5_deyz*deyz_depsyz*dv_dvp**2*dvp_dI5**2 &
      *(dI5_dexx*dexx_depszz + dI5_deyy*deyy_depszz + dI5_dezz* &
      dezz_depszz)

end function

REAL(KIND=dp) function dphi_depszx(dI5_dezx, dezx_depszx, dphi_dv, dv_dvp, dvp_dI5)
use types
implicit none
REAL(KIND=dp), intent(in) :: dI5_dezx
REAL(KIND=dp), intent(in) :: dezx_depszx
REAL(KIND=dp), intent(in) :: dphi_dv
REAL(KIND=dp), intent(in) :: dv_dvp
REAL(KIND=dp), intent(in) :: dvp_dI5

dphi_depszx = dI5_dezx*dezx_depszx*dphi_dv*dv_dvp*dvp_dI5

end function

REAL(KIND=dp) function d2phi_depszx2(d2phi_dv2, dI5_dezx, dezx_depszx, dv_dvp, &
      dvp_dI5)
use types
implicit none
REAL(KIND=dp), intent(in) :: d2phi_dv2
REAL(KIND=dp), intent(in) :: dI5_dezx
REAL(KIND=dp), intent(in) :: dezx_depszx
REAL(KIND=dp), intent(in) :: dv_dvp
REAL(KIND=dp), intent(in) :: dvp_dI5

d2phi_depszx2 = d2phi_dv2*dI5_dezx**2*dezx_depszx**2*dv_dvp**2*dvp_dI5** &
      2

end function

REAL(KIND=dp) function d2phi_depszxdepszz(d2phi_dv2, dI5_dexx, dI5_deyy, dI5_dezx, &
      dI5_dezz, dexx_depszz, deyy_depszz, dezx_depszx, &
      dezz_depszz, dv_dvp, dvp_dI5)
use types
implicit none
REAL(KIND=dp), intent(in) :: d2phi_dv2
REAL(KIND=dp), intent(in) :: dI5_dexx
REAL(KIND=dp), intent(in) :: dI5_deyy
REAL(KIND=dp), intent(in) :: dI5_dezx
REAL(KIND=dp), intent(in) :: dI5_dezz
REAL(KIND=dp), intent(in) :: dexx_depszz
REAL(KIND=dp), intent(in) :: deyy_depszz
REAL(KIND=dp), intent(in) :: dezx_depszx
REAL(KIND=dp), intent(in) :: dezz_depszz
REAL(KIND=dp), intent(in) :: dv_dvp
REAL(KIND=dp), intent(in) :: dvp_dI5

d2phi_depszxdepszz = d2phi_dv2*dI5_dezx*dezx_depszx*dv_dvp**2*dvp_dI5**2 &
      *(dI5_dexx*dexx_depszz + dI5_deyy*deyy_depszz + dI5_dezz* &
      dezz_depszz)

end function

REAL(KIND=dp) function dphi_depszz(dI5_dexx, dI5_deyy, dI5_dezz, dexx_depszz, &
      deyy_depszz, dezz_depszz, dphi_dv, dv_dvp, dvp_dI5)
use types
implicit none
REAL(KIND=dp), intent(in) :: dI5_dexx
REAL(KIND=dp), intent(in) :: dI5_deyy
REAL(KIND=dp), intent(in) :: dI5_dezz
REAL(KIND=dp), intent(in) :: dexx_depszz
REAL(KIND=dp), intent(in) :: deyy_depszz
REAL(KIND=dp), intent(in) :: dezz_depszz
REAL(KIND=dp), intent(in) :: dphi_dv
REAL(KIND=dp), intent(in) :: dv_dvp
REAL(KIND=dp), intent(in) :: dvp_dI5

dphi_depszz = dphi_dv*dv_dvp*dvp_dI5*(dI5_dexx*dexx_depszz + dI5_deyy* &
      deyy_depszz + dI5_dezz*dezz_depszz)

end function

REAL(KIND=dp) function d2phi_depszz2(d2phi_dv2, dI5_dexx, dI5_deyy, dI5_dezz, &
      dexx_depszz, deyy_depszz, dezz_depszz, dv_dvp, dvp_dI5)
use types
implicit none
REAL(KIND=dp), intent(in) :: d2phi_dv2
REAL(KIND=dp), intent(in) :: dI5_dexx
REAL(KIND=dp), intent(in) :: dI5_deyy
REAL(KIND=dp), intent(in) :: dI5_dezz
REAL(KIND=dp), intent(in) :: dexx_depszz
REAL(KIND=dp), intent(in) :: deyy_depszz
REAL(KIND=dp), intent(in) :: dezz_depszz
REAL(KIND=dp), intent(in) :: dv_dvp
REAL(KIND=dp), intent(in) :: dvp_dI5

d2phi_depszz2 = d2phi_dv2*dv_dvp**2*dvp_dI5**2*(dI5_dexx*dexx_depszz + &
      dI5_deyy*deyy_depszz + dI5_dezz*dezz_depszz)**2

end function

REAL(KIND=dp) function exx(epsxx, epsyy, epszz)
use types
implicit none
REAL(KIND=dp), intent(in) :: epsxx
REAL(KIND=dp), intent(in) :: epsyy
REAL(KIND=dp), intent(in) :: epszz

exx = (2.0_dp/3.0_dp)*epsxx - 1.0_dp/3.0_dp*epsyy - 1.0_dp/3.0_dp*epszz

end function

REAL(KIND=dp) function exy(epsxy)
use types
implicit none
REAL(KIND=dp), intent(in) :: epsxy

exy = epsxy

end function

REAL(KIND=dp) function eyy(epsxx, epsyy, epszz)
use types
implicit none
REAL(KIND=dp), intent(in) :: epsxx
REAL(KIND=dp), intent(in) :: epsyy
REAL(KIND=dp), intent(in) :: epszz

eyy = -1.0_dp/3.0_dp*epsxx + (2.0_dp/3.0_dp)*epsyy - 1.0_dp/3.0_dp*epszz

end function

REAL(KIND=dp) function eyz(epsyz)
use types
implicit none
REAL(KIND=dp), intent(in) :: epsyz

eyz = epsyz

end function

REAL(KIND=dp) function ezx(epszx)
use types
implicit none
REAL(KIND=dp), intent(in) :: epszx

ezx = epszx

end function

REAL(KIND=dp) function ezz(epsxx, epsyy, epszz)
use types
implicit none
REAL(KIND=dp), intent(in) :: epsxx
REAL(KIND=dp), intent(in) :: epsyy
REAL(KIND=dp), intent(in) :: epszz

ezz = -1.0_dp/3.0_dp*epsxx - 1.0_dp/3.0_dp*epsyy + (2.0_dp/3.0_dp)*epszz

end function

REAL(KIND=dp) function I4(Bx, By, Bz)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bx
REAL(KIND=dp), intent(in) :: By
REAL(KIND=dp), intent(in) :: Bz

I4 = Bx**2 + By**2 + Bz**2

end function

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

I5 = Bx**2*exx + 2*Bx*By*exy + By**2*eyy + Bz**2*ezz + 2*Bz*(Bx*ezx + By &
      *eyz)

end function

REAL(KIND=dp) function u(u0, up)
use types
implicit none
REAL(KIND=dp), intent(in) :: u0
REAL(KIND=dp), intent(in) :: up

u = up/u0

end function

REAL(KIND=dp) function up(I4)
use types
implicit none
REAL(KIND=dp), intent(in) :: I4

up = sqrt(I4)

end function

REAL(KIND=dp) function v(v0, vp)
use types
implicit none
REAL(KIND=dp), intent(in) :: v0
REAL(KIND=dp), intent(in) :: vp

v = vp/v0

end function

REAL(KIND=dp) function vp(I4, I5)
use types
implicit none
REAL(KIND=dp), intent(in) :: I4
REAL(KIND=dp), intent(in) :: I5

vp = (3.0_dp/2.0_dp)*I5/I4

end function

REAL(KIND=dp) function epsM(epsxx, epsyy, epszz)
use types
implicit none
REAL(KIND=dp), intent(in) :: epsxx
REAL(KIND=dp), intent(in) :: epsyy
REAL(KIND=dp), intent(in) :: epszz

epsM = (1.0_dp/3.0_dp)*epsxx + (1.0_dp/3.0_dp)*epsyy + (1.0_dp/3.0_dp)*epszz

end function

REAL(KIND=dp) function phip(phi)
use types
implicit none
REAL(KIND=dp), intent(in) :: phi

phip = phi

end function
