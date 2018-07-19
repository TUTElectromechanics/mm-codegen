!******************************************************************************
!*                       Code generated with sympy 1.0                        *
!*                                                                            *
!*              See http://www.sympy.org/ for more information.               *
!*                                                                            *
!*                 This file is part of 'elmer-mgs-galfenol'                  *
!******************************************************************************

REAL*8 function dexx_depsxx()
implicit none

dexx_depsxx = 2.0d0/3.0d0

end function

REAL*8 function dexx_depsyy()
implicit none

dexx_depsyy = -1.0d0/3.0d0

end function

REAL*8 function dexx_depszz()
implicit none

dexx_depszz = -1.0d0/3.0d0

end function

REAL*8 function dexy_depsxy()
implicit none

dexy_depsxy = 1

end function

REAL*8 function deyy_depsxx()
implicit none

deyy_depsxx = -1.0d0/3.0d0

end function

REAL*8 function deyy_depsyy()
implicit none

deyy_depsyy = 2.0d0/3.0d0

end function

REAL*8 function deyy_depszz()
implicit none

deyy_depszz = -1.0d0/3.0d0

end function

REAL*8 function deyz_depsyz()
implicit none

deyz_depsyz = 1

end function

REAL*8 function dezx_depszx()
implicit none

dezx_depszx = 1

end function

REAL*8 function dezz_depsxx()
implicit none

dezz_depsxx = -1.0d0/3.0d0

end function

REAL*8 function dezz_depsyy()
implicit none

dezz_depsyy = -1.0d0/3.0d0

end function

REAL*8 function dezz_depszz()
implicit none

dezz_depszz = 2.0d0/3.0d0

end function

REAL*8 function dI4_dBx(Bx)
implicit none
REAL*8, intent(in) :: Bx

dI4_dBx = 2*Bx

end function

REAL*8 function d2I4_dBx2()
implicit none

d2I4_dBx2 = 2

end function

REAL*8 function dI4_dBy(By)
implicit none
REAL*8, intent(in) :: By

dI4_dBy = 2*By

end function

REAL*8 function d2I4_dBy2()
implicit none

d2I4_dBy2 = 2

end function

REAL*8 function dI4_dBz(Bz)
implicit none
REAL*8, intent(in) :: Bz

dI4_dBz = 2*Bz

end function

REAL*8 function d2I4_dBz2()
implicit none

d2I4_dBz2 = 2

end function

REAL*8 function dI5_dBx(Bx, By, Bz, exx, exy, ezx)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: By
REAL*8, intent(in) :: Bz
REAL*8, intent(in) :: exx
REAL*8, intent(in) :: exy
REAL*8, intent(in) :: ezx

dI5_dBx = 2*Bx*exx + 2*By*exy + 2*Bz*ezx

end function

REAL*8 function d2I5_dBx2(exx)
implicit none
REAL*8, intent(in) :: exx

d2I5_dBx2 = 2*exx

end function

REAL*8 function d2I5_dBxdBy(exy)
implicit none
REAL*8, intent(in) :: exy

d2I5_dBxdBy = 2*exy

end function

REAL*8 function d2I5_dBxdBz(ezx)
implicit none
REAL*8, intent(in) :: ezx

d2I5_dBxdBz = 2*ezx

end function

REAL*8 function dI5_dBy(Bx, By, Bz, exy, eyy, eyz)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: By
REAL*8, intent(in) :: Bz
REAL*8, intent(in) :: exy
REAL*8, intent(in) :: eyy
REAL*8, intent(in) :: eyz

dI5_dBy = 2*Bx*exy + 2*By*eyy + 2*Bz*eyz

end function

REAL*8 function d2I5_dBy2(eyy)
implicit none
REAL*8, intent(in) :: eyy

d2I5_dBy2 = 2*eyy

end function

REAL*8 function d2I5_dBydBz(eyz)
implicit none
REAL*8, intent(in) :: eyz

d2I5_dBydBz = 2*eyz

end function

REAL*8 function dI5_dBz(Bx, By, Bz, eyz, ezx, ezz)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: By
REAL*8, intent(in) :: Bz
REAL*8, intent(in) :: eyz
REAL*8, intent(in) :: ezx
REAL*8, intent(in) :: ezz

dI5_dBz = 2*Bx*ezx + 2*By*eyz + 2*Bz*ezz

end function

REAL*8 function d2I5_dBz2(ezz)
implicit none
REAL*8, intent(in) :: ezz

d2I5_dBz2 = 2*ezz

end function

REAL*8 function dI5_dexx(Bx)
implicit none
REAL*8, intent(in) :: Bx

dI5_dexx = Bx**2

end function

REAL*8 function d2I5_dBxdexx(Bx)
implicit none
REAL*8, intent(in) :: Bx

d2I5_dBxdexx = 2*Bx

end function

REAL*8 function dI5_dexy(Bx, By)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: By

dI5_dexy = 2*Bx*By

end function

REAL*8 function d2I5_dBxdexy(By)
implicit none
REAL*8, intent(in) :: By

d2I5_dBxdexy = 2*By

end function

REAL*8 function d2I5_dBydexy(Bx)
implicit none
REAL*8, intent(in) :: Bx

d2I5_dBydexy = 2*Bx

end function

REAL*8 function dI5_deyy(By)
implicit none
REAL*8, intent(in) :: By

dI5_deyy = By**2

end function

REAL*8 function d2I5_dBydeyy(By)
implicit none
REAL*8, intent(in) :: By

d2I5_dBydeyy = 2*By

end function

REAL*8 function dI5_deyz(By, Bz)
implicit none
REAL*8, intent(in) :: By
REAL*8, intent(in) :: Bz

dI5_deyz = 2*By*Bz

end function

REAL*8 function d2I5_dBydeyz(Bz)
implicit none
REAL*8, intent(in) :: Bz

d2I5_dBydeyz = 2*Bz

end function

REAL*8 function d2I5_dBzdeyz(By)
implicit none
REAL*8, intent(in) :: By

d2I5_dBzdeyz = 2*By

end function

REAL*8 function dI5_dezx(Bx, Bz)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: Bz

dI5_dezx = 2*Bx*Bz

end function

REAL*8 function d2I5_dBxdezx(Bz)
implicit none
REAL*8, intent(in) :: Bz

d2I5_dBxdezx = 2*Bz

end function

REAL*8 function d2I5_dBzdezx(Bx)
implicit none
REAL*8, intent(in) :: Bx

d2I5_dBzdezx = 2*Bx

end function

REAL*8 function dI5_dezz(Bz)
implicit none
REAL*8, intent(in) :: Bz

dI5_dezz = Bz**2

end function

REAL*8 function d2I5_dBzdezz(Bz)
implicit none
REAL*8, intent(in) :: Bz

d2I5_dBzdezz = 2*Bz

end function

REAL*8 function du_dup(u0)
implicit none
REAL*8, intent(in) :: u0

du_dup = 1.0/u0

end function

REAL*8 function dup_dI4(I4)
implicit none
REAL*8, intent(in) :: I4

dup_dI4 = (1.0d0/2.0d0)/sqrt(I4)

end function

REAL*8 function d2up_dI42(I4)
implicit none
REAL*8, intent(in) :: I4

d2up_dI42 = -1.0d0/4.0d0/I4**(3.0d0/2.0d0)

end function

REAL*8 function dv_dvp(v0)
implicit none
REAL*8, intent(in) :: v0

dv_dvp = 1.0/v0

end function

REAL*8 function dvp_dI4(I4, I5)
implicit none
REAL*8, intent(in) :: I4
REAL*8, intent(in) :: I5

dvp_dI4 = -3.0d0/2.0d0*I5/I4**2

end function

REAL*8 function d2vp_dI42(I4, I5)
implicit none
REAL*8, intent(in) :: I4
REAL*8, intent(in) :: I5

d2vp_dI42 = 3*I5/I4**3

end function

REAL*8 function d2vp_dI4dI5(I4)
implicit none
REAL*8, intent(in) :: I4

d2vp_dI4dI5 = -3.0d0/2.0d0/I4**2

end function

REAL*8 function dvp_dI5(I4)
implicit none
REAL*8, intent(in) :: I4

dvp_dI5 = (3.0d0/2.0d0)/I4

end function

REAL*8 function d2vp_dI4dI5(I4)
implicit none
REAL*8, intent(in) :: I4

d2vp_dI4dI5 = -3.0d0/2.0d0/I4**2

end function

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

dphi_dBx = dI4_dBx*du_dup*dup_dI4*dphi_du + dv_dvp*dphi_dv*(dI4_dBx*dvp_dI4 + &
      dI5_dBx*dvp_dI5)

end function

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

d2phi_dBx2 = d2I4_dBx2*du_dup*dup_dI4*dphi_du + d2up_dI42*dI4_dBx**2*du_dup* &
      dphi_du + dI4_dBx*du_dup*dup_dI4*(d2phi_du2*dI4_dBx*du_dup*dup_dI4 + &
      d2phi_dudv*dv_dvp*(dI4_dBx*dvp_dI4 + dI5_dBx*dvp_dI5)) + dv_dvp*dphi &
      _dv*(d2I4_dBx2*dvp_dI4 + d2I5_dBx2*dvp_dI5 + d2vp_dI4dI5*dI4_dBx* &
      dI5_dBx + dI4_dBx*(d2vp_dI42*dI4_dBx + d2vp_dI4dI5*dI5_dBx)) + &
      dv_dvp*(dI4_dBx*dvp_dI4 + dI5_dBx*dvp_dI5)*(d2phi_dudv*dI4_dBx* &
      du_dup*dup_dI4 + d2phi_dv2*dv_dvp*(dI4_dBx*dvp_dI4 + dI5_dBx* &
      dvp_dI5))

end function

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

d2phi_dBxdBy = d2up_dI42*dI4_dBx*dI4_dBy*du_dup*dphi_du + dI4_dBx*du_dup* &
      dup_dI4*(d2phi_du2*dI4_dBy*du_dup*dup_dI4 + d2phi_dudv*dv_dvp*( &
      dI4_dBy*dvp_dI4 + dI5_dBy*dvp_dI5)) + dv_dvp*dphi_dv*(d2I5_dBxdBy* &
      dvp_dI5 + d2vp_dI4dI5*dI4_dBy*dI5_dBx + dI4_dBx*(d2vp_dI42* &
      dI4_dBy + d2vp_dI4dI5*dI5_dBy)) + dv_dvp*(dI4_dBx*dvp_dI4 + &
      dI5_dBx*dvp_dI5)*(d2phi_dudv*dI4_dBy*du_dup*dup_dI4 + d2phi_dv2* &
      dv_dvp*(dI4_dBy*dvp_dI4 + dI5_dBy*dvp_dI5))

end function

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

d2phi_dBxdBz = d2up_dI42*dI4_dBx*dI4_dBz*du_dup*dphi_du + dI4_dBx*du_dup* &
      dup_dI4*(d2phi_du2*dI4_dBz*du_dup*dup_dI4 + d2phi_dudv*dv_dvp*( &
      dI4_dBz*dvp_dI4 + dI5_dBz*dvp_dI5)) + dv_dvp*dphi_dv*(d2I5_dBxdBz* &
      dvp_dI5 + d2vp_dI4dI5*dI4_dBz*dI5_dBx + dI4_dBx*(d2vp_dI42* &
      dI4_dBz + d2vp_dI4dI5*dI5_dBz)) + dv_dvp*(dI4_dBx*dvp_dI4 + &
      dI5_dBx*dvp_dI5)*(d2phi_dudv*dI4_dBz*du_dup*dup_dI4 + d2phi_dv2* &
      dv_dvp*(dI4_dBz*dvp_dI4 + dI5_dBz*dvp_dI5))

end function

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

d2phi_dBxdepsxx = d2phi_dudv*dI4_dBx*du_dup*dup_dI4*dv_dvp*dvp_dI5*(dI5_dexx* &
      dexx_depsxx + dI5_deyy*deyy_depsxx + dI5_dezz*dezz_depsxx) + d2phi_dv2* &
      dv_dvp**2*dvp_dI5*(dI4_dBx*dvp_dI4 + dI5_dBx*dvp_dI5)*(dI5_dexx* &
      dexx_depsxx + dI5_deyy*deyy_depsxx + dI5_dezz*dezz_depsxx) + dv_dvp*dphi &
      _dv*(d2I5_dBxdexx*dexx_depsxx*dvp_dI5 + d2vp_dI4dI5*dI4_dBx*( &
      dI5_dexx*dexx_depsxx + dI5_deyy*deyy_depsxx + dI5_dezz*dezz_depsxx))

end function

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

d2phi_dBxdepsxy = d2phi_dudv*dI4_dBx*dI5_dexy*dexy_depsxy*du_dup*dup_dI4*dv_dvp* &
      dvp_dI5 + d2phi_dv2*dI5_dexy*dexy_depsxy*dv_dvp**2*dvp_dI5*(dI4_dBx* &
      dvp_dI4 + dI5_dBx*dvp_dI5) + dv_dvp*dphi_dv*(d2I5_dBxdexy*dexy_depsxy &
      *dvp_dI5 + d2vp_dI4dI5*dI4_dBx*dI5_dexy*dexy_depsxy)

end function

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

d2phi_dBxdepsyy = d2phi_dudv*dI4_dBx*du_dup*dup_dI4*dv_dvp*dvp_dI5*(dI5_dexx* &
      dexx_depsyy + dI5_deyy*deyy_depsyy + dI5_dezz*dezz_depsyy) + d2phi_dv2* &
      dv_dvp**2*dvp_dI5*(dI4_dBx*dvp_dI4 + dI5_dBx*dvp_dI5)*(dI5_dexx* &
      dexx_depsyy + dI5_deyy*deyy_depsyy + dI5_dezz*dezz_depsyy) + dv_dvp*dphi &
      _dv*(d2I5_dBxdexx*dexx_depsyy*dvp_dI5 + d2vp_dI4dI5*dI4_dBx*( &
      dI5_dexx*dexx_depsyy + dI5_deyy*deyy_depsyy + dI5_dezz*dezz_depsyy))

end function

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

d2phi_dBxdepsyz = d2vp_dI4dI5*dI4_dBx*dI5_deyz*deyz_depsyz*dv_dvp*dphi_dv + d2phi &
      _dudv*dI4_dBx*dI5_deyz*deyz_depsyz*du_dup*dup_dI4*dv_dvp*dvp_dI5 + &
      d2phi_dv2*dI5_deyz*deyz_depsyz*dv_dvp**2*dvp_dI5*(dI4_dBx*dvp_dI4 + &
      dI5_dBx*dvp_dI5)

end function

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

d2phi_dBxdepszx = d2phi_dudv*dI4_dBx*dI5_dezx*dezx_depszx*du_dup*dup_dI4*dv_dvp* &
      dvp_dI5 + d2phi_dv2*dI5_dezx*dezx_depszx*dv_dvp**2*dvp_dI5*(dI4_dBx* &
      dvp_dI4 + dI5_dBx*dvp_dI5) + dv_dvp*dphi_dv*(d2I5_dBxdezx*dezx_depszx &
      *dvp_dI5 + d2vp_dI4dI5*dI4_dBx*dI5_dezx*dezx_depszx)

end function

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

d2phi_dBxdepszz = d2phi_dudv*dI4_dBx*du_dup*dup_dI4*dv_dvp*dvp_dI5*(dI5_dexx* &
      dexx_depszz + dI5_deyy*deyy_depszz + dI5_dezz*dezz_depszz) + d2phi_dv2* &
      dv_dvp**2*dvp_dI5*(dI4_dBx*dvp_dI4 + dI5_dBx*dvp_dI5)*(dI5_dexx* &
      dexx_depszz + dI5_deyy*deyy_depszz + dI5_dezz*dezz_depszz) + dv_dvp*dphi &
      _dv*(d2I5_dBxdexx*dexx_depszz*dvp_dI5 + d2vp_dI4dI5*dI4_dBx*( &
      dI5_dexx*dexx_depszz + dI5_deyy*deyy_depszz + dI5_dezz*dezz_depszz))

end function

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

dphi_dBy = dI4_dBy*du_dup*dup_dI4*dphi_du + dv_dvp*dphi_dv*(dI4_dBy*dvp_dI4 + &
      dI5_dBy*dvp_dI5)

end function

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

d2phi_dBy2 = d2I4_dBy2*du_dup*dup_dI4*dphi_du + d2up_dI42*dI4_dBy**2*du_dup* &
      dphi_du + dI4_dBy*du_dup*dup_dI4*(d2phi_du2*dI4_dBy*du_dup*dup_dI4 + &
      d2phi_dudv*dv_dvp*(dI4_dBy*dvp_dI4 + dI5_dBy*dvp_dI5)) + dv_dvp*dphi &
      _dv*(d2I4_dBy2*dvp_dI4 + d2I5_dBy2*dvp_dI5 + d2vp_dI4dI5*dI4_dBy* &
      dI5_dBy + dI4_dBy*(d2vp_dI42*dI4_dBy + d2vp_dI4dI5*dI5_dBy)) + &
      dv_dvp*(dI4_dBy*dvp_dI4 + dI5_dBy*dvp_dI5)*(d2phi_dudv*dI4_dBy* &
      du_dup*dup_dI4 + d2phi_dv2*dv_dvp*(dI4_dBy*dvp_dI4 + dI5_dBy* &
      dvp_dI5))

end function

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

d2phi_dBydBz = d2up_dI42*dI4_dBy*dI4_dBz*du_dup*dphi_du + dI4_dBy*du_dup* &
      dup_dI4*(d2phi_du2*dI4_dBz*du_dup*dup_dI4 + d2phi_dudv*dv_dvp*( &
      dI4_dBz*dvp_dI4 + dI5_dBz*dvp_dI5)) + dv_dvp*dphi_dv*(d2I5_dBydBz* &
      dvp_dI5 + d2vp_dI4dI5*dI4_dBz*dI5_dBy + dI4_dBy*(d2vp_dI42* &
      dI4_dBz + d2vp_dI4dI5*dI5_dBz)) + dv_dvp*(dI4_dBy*dvp_dI4 + &
      dI5_dBy*dvp_dI5)*(d2phi_dudv*dI4_dBz*du_dup*dup_dI4 + d2phi_dv2* &
      dv_dvp*(dI4_dBz*dvp_dI4 + dI5_dBz*dvp_dI5))

end function

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

d2phi_dBydepsxx = d2phi_dudv*dI4_dBy*du_dup*dup_dI4*dv_dvp*dvp_dI5*(dI5_dexx* &
      dexx_depsxx + dI5_deyy*deyy_depsxx + dI5_dezz*dezz_depsxx) + d2phi_dv2* &
      dv_dvp**2*dvp_dI5*(dI4_dBy*dvp_dI4 + dI5_dBy*dvp_dI5)*(dI5_dexx* &
      dexx_depsxx + dI5_deyy*deyy_depsxx + dI5_dezz*dezz_depsxx) + dv_dvp*dphi &
      _dv*(d2I5_dBydeyy*deyy_depsxx*dvp_dI5 + d2vp_dI4dI5*dI4_dBy*( &
      dI5_dexx*dexx_depsxx + dI5_deyy*deyy_depsxx + dI5_dezz*dezz_depsxx))

end function

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

d2phi_dBydepsxy = d2phi_dudv*dI4_dBy*dI5_dexy*dexy_depsxy*du_dup*dup_dI4*dv_dvp* &
      dvp_dI5 + d2phi_dv2*dI5_dexy*dexy_depsxy*dv_dvp**2*dvp_dI5*(dI4_dBy* &
      dvp_dI4 + dI5_dBy*dvp_dI5) + dv_dvp*dphi_dv*(d2I5_dBydexy*dexy_depsxy &
      *dvp_dI5 + d2vp_dI4dI5*dI4_dBy*dI5_dexy*dexy_depsxy)

end function

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

d2phi_dBydepsyy = d2phi_dudv*dI4_dBy*du_dup*dup_dI4*dv_dvp*dvp_dI5*(dI5_dexx* &
      dexx_depsyy + dI5_deyy*deyy_depsyy + dI5_dezz*dezz_depsyy) + d2phi_dv2* &
      dv_dvp**2*dvp_dI5*(dI4_dBy*dvp_dI4 + dI5_dBy*dvp_dI5)*(dI5_dexx* &
      dexx_depsyy + dI5_deyy*deyy_depsyy + dI5_dezz*dezz_depsyy) + dv_dvp*dphi &
      _dv*(d2I5_dBydeyy*deyy_depsyy*dvp_dI5 + d2vp_dI4dI5*dI4_dBy*( &
      dI5_dexx*dexx_depsyy + dI5_deyy*deyy_depsyy + dI5_dezz*dezz_depsyy))

end function

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

d2phi_dBydepsyz = d2phi_dudv*dI4_dBy*dI5_deyz*deyz_depsyz*du_dup*dup_dI4*dv_dvp* &
      dvp_dI5 + d2phi_dv2*dI5_deyz*deyz_depsyz*dv_dvp**2*dvp_dI5*(dI4_dBy* &
      dvp_dI4 + dI5_dBy*dvp_dI5) + dv_dvp*dphi_dv*(d2I5_dBydeyz*deyz_depsyz &
      *dvp_dI5 + d2vp_dI4dI5*dI4_dBy*dI5_deyz*deyz_depsyz)

end function

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

d2phi_dBydepszx = d2vp_dI4dI5*dI4_dBy*dI5_dezx*dezx_depszx*dv_dvp*dphi_dv + d2phi &
      _dudv*dI4_dBy*dI5_dezx*dezx_depszx*du_dup*dup_dI4*dv_dvp*dvp_dI5 + &
      d2phi_dv2*dI5_dezx*dezx_depszx*dv_dvp**2*dvp_dI5*(dI4_dBy*dvp_dI4 + &
      dI5_dBy*dvp_dI5)

end function

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

d2phi_dBydepszz = d2phi_dudv*dI4_dBy*du_dup*dup_dI4*dv_dvp*dvp_dI5*(dI5_dexx* &
      dexx_depszz + dI5_deyy*deyy_depszz + dI5_dezz*dezz_depszz) + d2phi_dv2* &
      dv_dvp**2*dvp_dI5*(dI4_dBy*dvp_dI4 + dI5_dBy*dvp_dI5)*(dI5_dexx* &
      dexx_depszz + dI5_deyy*deyy_depszz + dI5_dezz*dezz_depszz) + dv_dvp*dphi &
      _dv*(d2I5_dBydeyy*deyy_depszz*dvp_dI5 + d2vp_dI4dI5*dI4_dBy*( &
      dI5_dexx*dexx_depszz + dI5_deyy*deyy_depszz + dI5_dezz*dezz_depszz))

end function

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

dphi_dBz = dI4_dBz*du_dup*dup_dI4*dphi_du + dv_dvp*dphi_dv*(dI4_dBz*dvp_dI4 + &
      dI5_dBz*dvp_dI5)

end function

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

d2phi_dBz2 = d2I4_dBz2*du_dup*dup_dI4*dphi_du + d2up_dI42*dI4_dBz**2*du_dup* &
      dphi_du + dI4_dBz*du_dup*dup_dI4*(d2phi_du2*dI4_dBz*du_dup*dup_dI4 + &
      d2phi_dudv*dv_dvp*(dI4_dBz*dvp_dI4 + dI5_dBz*dvp_dI5)) + dv_dvp*dphi &
      _dv*(d2I4_dBz2*dvp_dI4 + d2I5_dBz2*dvp_dI5 + d2vp_dI4dI5*dI4_dBz* &
      dI5_dBz + dI4_dBz*(d2vp_dI42*dI4_dBz + d2vp_dI4dI5*dI5_dBz)) + &
      dv_dvp*(dI4_dBz*dvp_dI4 + dI5_dBz*dvp_dI5)*(d2phi_dudv*dI4_dBz* &
      du_dup*dup_dI4 + d2phi_dv2*dv_dvp*(dI4_dBz*dvp_dI4 + dI5_dBz* &
      dvp_dI5))

end function

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

d2phi_dBzdepsxx = d2phi_dudv*dI4_dBz*du_dup*dup_dI4*dv_dvp*dvp_dI5*(dI5_dexx* &
      dexx_depsxx + dI5_deyy*deyy_depsxx + dI5_dezz*dezz_depsxx) + d2phi_dv2* &
      dv_dvp**2*dvp_dI5*(dI4_dBz*dvp_dI4 + dI5_dBz*dvp_dI5)*(dI5_dexx* &
      dexx_depsxx + dI5_deyy*deyy_depsxx + dI5_dezz*dezz_depsxx) + dv_dvp*dphi &
      _dv*(d2I5_dBzdezz*dezz_depsxx*dvp_dI5 + d2vp_dI4dI5*dI4_dBz*( &
      dI5_dexx*dexx_depsxx + dI5_deyy*deyy_depsxx + dI5_dezz*dezz_depsxx))

end function

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

d2phi_dBzdepsxy = d2vp_dI4dI5*dI4_dBz*dI5_dexy*dexy_depsxy*dv_dvp*dphi_dv + d2phi &
      _dudv*dI4_dBz*dI5_dexy*dexy_depsxy*du_dup*dup_dI4*dv_dvp*dvp_dI5 + &
      d2phi_dv2*dI5_dexy*dexy_depsxy*dv_dvp**2*dvp_dI5*(dI4_dBz*dvp_dI4 + &
      dI5_dBz*dvp_dI5)

end function

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

d2phi_dBzdepsyy = d2phi_dudv*dI4_dBz*du_dup*dup_dI4*dv_dvp*dvp_dI5*(dI5_dexx* &
      dexx_depsyy + dI5_deyy*deyy_depsyy + dI5_dezz*dezz_depsyy) + d2phi_dv2* &
      dv_dvp**2*dvp_dI5*(dI4_dBz*dvp_dI4 + dI5_dBz*dvp_dI5)*(dI5_dexx* &
      dexx_depsyy + dI5_deyy*deyy_depsyy + dI5_dezz*dezz_depsyy) + dv_dvp*dphi &
      _dv*(d2I5_dBzdezz*dezz_depsyy*dvp_dI5 + d2vp_dI4dI5*dI4_dBz*( &
      dI5_dexx*dexx_depsyy + dI5_deyy*deyy_depsyy + dI5_dezz*dezz_depsyy))

end function

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

d2phi_dBzdepsyz = d2phi_dudv*dI4_dBz*dI5_deyz*deyz_depsyz*du_dup*dup_dI4*dv_dvp* &
      dvp_dI5 + d2phi_dv2*dI5_deyz*deyz_depsyz*dv_dvp**2*dvp_dI5*(dI4_dBz* &
      dvp_dI4 + dI5_dBz*dvp_dI5) + dv_dvp*dphi_dv*(d2I5_dBzdeyz*deyz_depsyz &
      *dvp_dI5 + d2vp_dI4dI5*dI4_dBz*dI5_deyz*deyz_depsyz)

end function

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

d2phi_dBzdepszx = d2phi_dudv*dI4_dBz*dI5_dezx*dezx_depszx*du_dup*dup_dI4*dv_dvp* &
      dvp_dI5 + d2phi_dv2*dI5_dezx*dezx_depszx*dv_dvp**2*dvp_dI5*(dI4_dBz* &
      dvp_dI4 + dI5_dBz*dvp_dI5) + dv_dvp*dphi_dv*(d2I5_dBzdezx*dezx_depszx &
      *dvp_dI5 + d2vp_dI4dI5*dI4_dBz*dI5_dezx*dezx_depszx)

end function

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

d2phi_dBzdepszz = d2phi_dudv*dI4_dBz*du_dup*dup_dI4*dv_dvp*dvp_dI5*(dI5_dexx* &
      dexx_depszz + dI5_deyy*deyy_depszz + dI5_dezz*dezz_depszz) + d2phi_dv2* &
      dv_dvp**2*dvp_dI5*(dI4_dBz*dvp_dI4 + dI5_dBz*dvp_dI5)*(dI5_dexx* &
      dexx_depszz + dI5_deyy*deyy_depszz + dI5_dezz*dezz_depszz) + dv_dvp*dphi &
      _dv*(d2I5_dBzdezz*dezz_depszz*dvp_dI5 + d2vp_dI4dI5*dI4_dBz*( &
      dI5_dexx*dexx_depszz + dI5_deyy*deyy_depszz + dI5_dezz*dezz_depszz))

end function

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

dphi_depsxx = dv_dvp*dvp_dI5*dphi_dv*(dI5_dexx*dexx_depsxx + dI5_deyy*deyy_depsxx &
      + dI5_dezz*dezz_depsxx)

end function

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

d2phi_depsxx2 = d2phi_dv2*dv_dvp**2*dvp_dI5**2*(dI5_dexx*dexx_depsxx + dI5_deyy* &
      deyy_depsxx + dI5_dezz*dezz_depsxx)**2

end function

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

d2phi_depsxxdepsxy = d2phi_dv2*dI5_dexy*dexy_depsxy*dv_dvp**2*dvp_dI5**2*(dI5_dexx &
      *dexx_depsxx + dI5_deyy*deyy_depsxx + dI5_dezz*dezz_depsxx)

end function

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

d2phi_depsxxdepsyy = d2phi_dv2*dv_dvp**2*dvp_dI5**2*(dI5_dexx*dexx_depsxx + &
      dI5_deyy*deyy_depsxx + dI5_dezz*dezz_depsxx)*(dI5_dexx*dexx_depsyy + &
      dI5_deyy*deyy_depsyy + dI5_dezz*dezz_depsyy)

end function

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

d2phi_depsxxdepsyz = d2phi_dv2*dI5_deyz*deyz_depsyz*dv_dvp**2*dvp_dI5**2*(dI5_dexx &
      *dexx_depsxx + dI5_deyy*deyy_depsxx + dI5_dezz*dezz_depsxx)

end function

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

d2phi_depsxxdepszx = d2phi_dv2*dI5_dezx*dezx_depszx*dv_dvp**2*dvp_dI5**2*(dI5_dexx &
      *dexx_depsxx + dI5_deyy*deyy_depsxx + dI5_dezz*dezz_depsxx)

end function

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

d2phi_depsxxdepszz = d2phi_dv2*dv_dvp**2*dvp_dI5**2*(dI5_dexx*dexx_depsxx + &
      dI5_deyy*deyy_depsxx + dI5_dezz*dezz_depsxx)*(dI5_dexx*dexx_depszz + &
      dI5_deyy*deyy_depszz + dI5_dezz*dezz_depszz)

end function

REAL*8 function dphi_depsxy(dI5_dexy, dexy_depsxy, dv_dvp, dvp_dI5, dphi_dv)
implicit none
REAL*8, intent(in) :: dI5_dexy
REAL*8, intent(in) :: dexy_depsxy
REAL*8, intent(in) :: dv_dvp
REAL*8, intent(in) :: dvp_dI5
REAL*8, intent(in) :: dphi_dv

dphi_depsxy = dI5_dexy*dexy_depsxy*dv_dvp*dvp_dI5*dphi_dv

end function

REAL*8 function d2phi_depsxy2(d2phi_dv2, dI5_dexy, dexy_depsxy, dv_dvp, dvp_dI5)
implicit none
REAL*8, intent(in) :: d2phi_dv2
REAL*8, intent(in) :: dI5_dexy
REAL*8, intent(in) :: dexy_depsxy
REAL*8, intent(in) :: dv_dvp
REAL*8, intent(in) :: dvp_dI5

d2phi_depsxy2 = d2phi_dv2*dI5_dexy**2*dexy_depsxy**2*dv_dvp**2*dvp_dI5**2

end function

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

d2phi_depsxydepsyy = d2phi_dv2*dI5_dexy*dexy_depsxy*dv_dvp**2*dvp_dI5**2*(dI5_dexx &
      *dexx_depsyy + dI5_deyy*deyy_depsyy + dI5_dezz*dezz_depsyy)

end function

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

d2phi_depsxydepsyz = d2phi_dv2*dI5_dexy*dI5_deyz*dexy_depsxy*deyz_depsyz*dv_dvp**2* &
      dvp_dI5**2

end function

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

d2phi_depsxydepszx = d2phi_dv2*dI5_dexy*dI5_dezx*dexy_depsxy*dezx_depszx*dv_dvp**2* &
      dvp_dI5**2

end function

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

d2phi_depsxydepszz = d2phi_dv2*dI5_dexy*dexy_depsxy*dv_dvp**2*dvp_dI5**2*(dI5_dexx &
      *dexx_depszz + dI5_deyy*deyy_depszz + dI5_dezz*dezz_depszz)

end function

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

dphi_depsyy = dv_dvp*dvp_dI5*dphi_dv*(dI5_dexx*dexx_depsyy + dI5_deyy*deyy_depsyy &
      + dI5_dezz*dezz_depsyy)

end function

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

d2phi_depsyy2 = d2phi_dv2*dv_dvp**2*dvp_dI5**2*(dI5_dexx*dexx_depsyy + dI5_deyy* &
      deyy_depsyy + dI5_dezz*dezz_depsyy)**2

end function

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

d2phi_depsyydepsyz = d2phi_dv2*dI5_deyz*deyz_depsyz*dv_dvp**2*dvp_dI5**2*(dI5_dexx &
      *dexx_depsyy + dI5_deyy*deyy_depsyy + dI5_dezz*dezz_depsyy)

end function

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

d2phi_depsyydepszx = d2phi_dv2*dI5_dezx*dezx_depszx*dv_dvp**2*dvp_dI5**2*(dI5_dexx &
      *dexx_depsyy + dI5_deyy*deyy_depsyy + dI5_dezz*dezz_depsyy)

end function

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

d2phi_depsyydepszz = d2phi_dv2*dv_dvp**2*dvp_dI5**2*(dI5_dexx*dexx_depsyy + &
      dI5_deyy*deyy_depsyy + dI5_dezz*dezz_depsyy)*(dI5_dexx*dexx_depszz + &
      dI5_deyy*deyy_depszz + dI5_dezz*dezz_depszz)

end function

REAL*8 function dphi_depsyz(dI5_deyz, deyz_depsyz, dv_dvp, dvp_dI5, dphi_dv)
implicit none
REAL*8, intent(in) :: dI5_deyz
REAL*8, intent(in) :: deyz_depsyz
REAL*8, intent(in) :: dv_dvp
REAL*8, intent(in) :: dvp_dI5
REAL*8, intent(in) :: dphi_dv

dphi_depsyz = dI5_deyz*deyz_depsyz*dv_dvp*dvp_dI5*dphi_dv

end function

REAL*8 function d2phi_depsyz2(d2phi_dv2, dI5_deyz, deyz_depsyz, dv_dvp, dvp_dI5)
implicit none
REAL*8, intent(in) :: d2phi_dv2
REAL*8, intent(in) :: dI5_deyz
REAL*8, intent(in) :: deyz_depsyz
REAL*8, intent(in) :: dv_dvp
REAL*8, intent(in) :: dvp_dI5

d2phi_depsyz2 = d2phi_dv2*dI5_deyz**2*deyz_depsyz**2*dv_dvp**2*dvp_dI5**2

end function

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

d2phi_depsyzdepszx = d2phi_dv2*dI5_deyz*dI5_dezx*deyz_depsyz*dezx_depszx*dv_dvp**2* &
      dvp_dI5**2

end function

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

d2phi_depsyzdepszz = d2phi_dv2*dI5_deyz*deyz_depsyz*dv_dvp**2*dvp_dI5**2*(dI5_dexx &
      *dexx_depszz + dI5_deyy*deyy_depszz + dI5_dezz*dezz_depszz)

end function

REAL*8 function dphi_depszx(dI5_dezx, dezx_depszx, dv_dvp, dvp_dI5, dphi_dv)
implicit none
REAL*8, intent(in) :: dI5_dezx
REAL*8, intent(in) :: dezx_depszx
REAL*8, intent(in) :: dv_dvp
REAL*8, intent(in) :: dvp_dI5
REAL*8, intent(in) :: dphi_dv

dphi_depszx = dI5_dezx*dezx_depszx*dv_dvp*dvp_dI5*dphi_dv

end function

REAL*8 function d2phi_depszx2(d2phi_dv2, dI5_dezx, dezx_depszx, dv_dvp, dvp_dI5)
implicit none
REAL*8, intent(in) :: d2phi_dv2
REAL*8, intent(in) :: dI5_dezx
REAL*8, intent(in) :: dezx_depszx
REAL*8, intent(in) :: dv_dvp
REAL*8, intent(in) :: dvp_dI5

d2phi_depszx2 = d2phi_dv2*dI5_dezx**2*dezx_depszx**2*dv_dvp**2*dvp_dI5**2

end function

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

d2phi_depszxdepszz = d2phi_dv2*dI5_dezx*dezx_depszx*dv_dvp**2*dvp_dI5**2*(dI5_dexx &
      *dexx_depszz + dI5_deyy*deyy_depszz + dI5_dezz*dezz_depszz)

end function

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

dphi_depszz = dv_dvp*dvp_dI5*dphi_dv*(dI5_dexx*dexx_depszz + dI5_deyy*deyy_depszz &
      + dI5_dezz*dezz_depszz)

end function

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

d2phi_depszz2 = d2phi_dv2*dv_dvp**2*dvp_dI5**2*(dI5_dexx*dexx_depszz + dI5_deyy* &
      deyy_depszz + dI5_dezz*dezz_depszz)**2

end function

REAL*8 function exx(epsxx, epsyy, epszz)
implicit none
REAL*8, intent(in) :: epsxx
REAL*8, intent(in) :: epsyy
REAL*8, intent(in) :: epszz

exx = (2.0d0/3.0d0)*epsxx - 1.0d0/3.0d0*epsyy - 1.0d0/3.0d0*epszz

end function

REAL*8 function exy(epsxy)
implicit none
REAL*8, intent(in) :: epsxy

exy = epsxy

end function

REAL*8 function eyy(epsxx, epsyy, epszz)
implicit none
REAL*8, intent(in) :: epsxx
REAL*8, intent(in) :: epsyy
REAL*8, intent(in) :: epszz

eyy = -1.0d0/3.0d0*epsxx + (2.0d0/3.0d0)*epsyy - 1.0d0/3.0d0*epszz

end function

REAL*8 function eyz(epsyz)
implicit none
REAL*8, intent(in) :: epsyz

eyz = epsyz

end function

REAL*8 function ezx(epszx)
implicit none
REAL*8, intent(in) :: epszx

ezx = epszx

end function

REAL*8 function ezz(epsxx, epsyy, epszz)
implicit none
REAL*8, intent(in) :: epsxx
REAL*8, intent(in) :: epsyy
REAL*8, intent(in) :: epszz

ezz = -1.0d0/3.0d0*epsxx - 1.0d0/3.0d0*epsyy + (2.0d0/3.0d0)*epszz

end function

REAL*8 function I4(Bx, By, Bz)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: By
REAL*8, intent(in) :: Bz

I4 = Bx**2 + By**2 + Bz**2

end function

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

I5 = Bx**2*exx + 2*Bx*Bz*ezx + By**2*eyy + 2*By*(Bx*exy + Bz*eyz) + Bz** &
      2*ezz

end function

REAL*8 function u(u0, up)
implicit none
REAL*8, intent(in) :: u0
REAL*8, intent(in) :: up

u = up/u0

end function

REAL*8 function up(I4)
implicit none
REAL*8, intent(in) :: I4

up = sqrt(I4)

end function

REAL*8 function v(v0, vp)
implicit none
REAL*8, intent(in) :: v0
REAL*8, intent(in) :: vp

v = vp/v0

end function

REAL*8 function vp(I4, I5)
implicit none
REAL*8, intent(in) :: I4
REAL*8, intent(in) :: I5

vp = (3.0d0/2.0d0)*I5/I4

end function

REAL*8 function epsM(epsxx, epsyy, epszz)
implicit none
REAL*8, intent(in) :: epsxx
REAL*8, intent(in) :: epsyy
REAL*8, intent(in) :: epszz

epsM = (1.0d0/3.0d0)*epsxx + (1.0d0/3.0d0)*epsyy + (1.0d0/3.0d0)*epszz

end function

REAL*8 function phip(phi)
implicit none
REAL*8, intent(in) :: phi

phip = phi

end function
