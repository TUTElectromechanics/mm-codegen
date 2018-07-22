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

REAL*8 function d2I5_dBxdexx(Bx)
implicit none
REAL*8, intent(in) :: Bx

d2I5_dBxdexx = 2*Bx

end function

REAL*8 function d2I5_dBxdexy(By)
implicit none
REAL*8, intent(in) :: By

d2I5_dBxdexy = 2*By

end function

REAL*8 function d2I5_dBxdezx(Bz)
implicit none
REAL*8, intent(in) :: Bz

d2I5_dBxdezx = 2*Bz

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

REAL*8 function d2I5_dBydexy(Bx)
implicit none
REAL*8, intent(in) :: Bx

d2I5_dBydexy = 2*Bx

end function

REAL*8 function d2I5_dBydeyy(By)
implicit none
REAL*8, intent(in) :: By

d2I5_dBydeyy = 2*By

end function

REAL*8 function d2I5_dBydeyz(Bz)
implicit none
REAL*8, intent(in) :: Bz

d2I5_dBydeyz = 2*Bz

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

REAL*8 function d2I5_dBzdeyz(By)
implicit none
REAL*8, intent(in) :: By

d2I5_dBzdeyz = 2*By

end function

REAL*8 function d2I5_dBzdezx(Bx)
implicit none
REAL*8, intent(in) :: Bx

d2I5_dBzdezx = 2*Bx

end function

REAL*8 function d2I5_dBzdezz(Bz)
implicit none
REAL*8, intent(in) :: Bz

d2I5_dBzdezz = 2*Bz

end function

REAL*8 function dI5_dexx(Bx)
implicit none
REAL*8, intent(in) :: Bx

dI5_dexx = Bx**2

end function

REAL*8 function dI5_dexy(Bx, By)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: By

dI5_dexy = 2*Bx*By

end function

REAL*8 function dI5_deyy(By)
implicit none
REAL*8, intent(in) :: By

dI5_deyy = By**2

end function

REAL*8 function dI5_deyz(By, Bz)
implicit none
REAL*8, intent(in) :: By
REAL*8, intent(in) :: Bz

dI5_deyz = 2*By*Bz

end function

REAL*8 function dI5_dezx(Bx, Bz)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: Bz

dI5_dezx = 2*Bx*Bz

end function

REAL*8 function dI5_dezz(Bz)
implicit none
REAL*8, intent(in) :: Bz

dI5_dezz = Bz**2

end function

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

dI6_dBx = 2*Bx*(exx**2 + exy**2 + ezx**2) + 2*By*(exx*exy + exy*eyy + &
      eyz*ezx) + 2*Bz*(exx*ezx + exy*eyz + ezx*ezz)

end function

REAL*8 function d2I6_dBx2(exx, exy, ezx)
implicit none
REAL*8, intent(in) :: exx
REAL*8, intent(in) :: exy
REAL*8, intent(in) :: ezx

d2I6_dBx2 = 2*exx**2 + 2*exy**2 + 2*ezx**2

end function

REAL*8 function d2I6_dBxdBy(exx, exy, eyy, eyz, ezx)
implicit none
REAL*8, intent(in) :: exx
REAL*8, intent(in) :: exy
REAL*8, intent(in) :: eyy
REAL*8, intent(in) :: eyz
REAL*8, intent(in) :: ezx

d2I6_dBxdBy = 2*exx*exy + 2*exy*eyy + 2*eyz*ezx

end function

REAL*8 function d2I6_dBxdBz(exx, exy, eyz, ezx, ezz)
implicit none
REAL*8, intent(in) :: exx
REAL*8, intent(in) :: exy
REAL*8, intent(in) :: eyz
REAL*8, intent(in) :: ezx
REAL*8, intent(in) :: ezz

d2I6_dBxdBz = 2*exx*ezx + 2*exy*eyz + 2*ezx*ezz

end function

REAL*8 function d2I6_dBxdexx(Bx, By, Bz, exx, exy, ezx)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: By
REAL*8, intent(in) :: Bz
REAL*8, intent(in) :: exx
REAL*8, intent(in) :: exy
REAL*8, intent(in) :: ezx

d2I6_dBxdexx = 4*Bx*exx + 2*By*exy + 2*Bz*ezx

end function

REAL*8 function d2I6_dBxdexy(Bx, By, Bz, exx, exy, eyy, eyz)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: By
REAL*8, intent(in) :: Bz
REAL*8, intent(in) :: exx
REAL*8, intent(in) :: exy
REAL*8, intent(in) :: eyy
REAL*8, intent(in) :: eyz

d2I6_dBxdexy = 4*Bx*exy + 2*By*(exx + eyy) + 2*Bz*eyz

end function

REAL*8 function d2I6_dBxdeyy(By, exy)
implicit none
REAL*8, intent(in) :: By
REAL*8, intent(in) :: exy

d2I6_dBxdeyy = 2*By*exy

end function

REAL*8 function d2I6_dBxdeyz(By, Bz, exy, ezx)
implicit none
REAL*8, intent(in) :: By
REAL*8, intent(in) :: Bz
REAL*8, intent(in) :: exy
REAL*8, intent(in) :: ezx

d2I6_dBxdeyz = 2*By*ezx + 2*Bz*exy

end function

REAL*8 function d2I6_dBxdezx(Bx, By, Bz, exx, eyz, ezx, ezz)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: By
REAL*8, intent(in) :: Bz
REAL*8, intent(in) :: exx
REAL*8, intent(in) :: eyz
REAL*8, intent(in) :: ezx
REAL*8, intent(in) :: ezz

d2I6_dBxdezx = 4*Bx*ezx + 2*By*eyz + 2*Bz*(exx + ezz)

end function

REAL*8 function d2I6_dBxdezz(Bz, ezx)
implicit none
REAL*8, intent(in) :: Bz
REAL*8, intent(in) :: ezx

d2I6_dBxdezz = 2*Bz*ezx

end function

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

dI6_dBy = 2*Bx*(exx*exy + exy*eyy + eyz*ezx) + 2*By*(exy**2 + eyy**2 + &
      eyz**2) + 2*Bz*(exy*ezx + eyy*eyz + eyz*ezz)

end function

REAL*8 function d2I6_dBy2(exy, eyy, eyz)
implicit none
REAL*8, intent(in) :: exy
REAL*8, intent(in) :: eyy
REAL*8, intent(in) :: eyz

d2I6_dBy2 = 2*exy**2 + 2*eyy**2 + 2*eyz**2

end function

REAL*8 function d2I6_dBydBz(exy, eyy, eyz, ezx, ezz)
implicit none
REAL*8, intent(in) :: exy
REAL*8, intent(in) :: eyy
REAL*8, intent(in) :: eyz
REAL*8, intent(in) :: ezx
REAL*8, intent(in) :: ezz

d2I6_dBydBz = 2*exy*ezx + 2*eyy*eyz + 2*eyz*ezz

end function

REAL*8 function d2I6_dBydexx(Bx, exy)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: exy

d2I6_dBydexx = 2*Bx*exy

end function

REAL*8 function d2I6_dBydexy(Bx, By, Bz, exx, exy, eyy, ezx)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: By
REAL*8, intent(in) :: Bz
REAL*8, intent(in) :: exx
REAL*8, intent(in) :: exy
REAL*8, intent(in) :: eyy
REAL*8, intent(in) :: ezx

d2I6_dBydexy = 2*Bx*(exx + eyy) + 4*By*exy + 2*Bz*ezx

end function

REAL*8 function d2I6_dBydeyy(Bx, By, Bz, exy, eyy, eyz)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: By
REAL*8, intent(in) :: Bz
REAL*8, intent(in) :: exy
REAL*8, intent(in) :: eyy
REAL*8, intent(in) :: eyz

d2I6_dBydeyy = 2*Bx*exy + 4*By*eyy + 2*Bz*eyz

end function

REAL*8 function d2I6_dBydeyz(Bx, By, Bz, eyy, eyz, ezx, ezz)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: By
REAL*8, intent(in) :: Bz
REAL*8, intent(in) :: eyy
REAL*8, intent(in) :: eyz
REAL*8, intent(in) :: ezx
REAL*8, intent(in) :: ezz

d2I6_dBydeyz = 2*Bx*ezx + 4*By*eyz + 2*Bz*(eyy + ezz)

end function

REAL*8 function d2I6_dBydezx(Bx, Bz, exy, eyz)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: Bz
REAL*8, intent(in) :: exy
REAL*8, intent(in) :: eyz

d2I6_dBydezx = 2*Bx*eyz + 2*Bz*exy

end function

REAL*8 function d2I6_dBydezz(Bz, eyz)
implicit none
REAL*8, intent(in) :: Bz
REAL*8, intent(in) :: eyz

d2I6_dBydezz = 2*Bz*eyz

end function

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

dI6_dBz = 2*Bx*(exx*ezx + exy*eyz + ezx*ezz) + 2*By*(exy*ezx + eyy*eyz + &
      eyz*ezz) + 2*Bz*(eyz**2 + ezx**2 + ezz**2)

end function

REAL*8 function d2I6_dBz2(eyz, ezx, ezz)
implicit none
REAL*8, intent(in) :: eyz
REAL*8, intent(in) :: ezx
REAL*8, intent(in) :: ezz

d2I6_dBz2 = 2*eyz**2 + 2*ezx**2 + 2*ezz**2

end function

REAL*8 function d2I6_dBzdexx(Bx, ezx)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: ezx

d2I6_dBzdexx = 2*Bx*ezx

end function

REAL*8 function d2I6_dBzdexy(Bx, By, eyz, ezx)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: By
REAL*8, intent(in) :: eyz
REAL*8, intent(in) :: ezx

d2I6_dBzdexy = 2*Bx*eyz + 2*By*ezx

end function

REAL*8 function d2I6_dBzdeyy(By, eyz)
implicit none
REAL*8, intent(in) :: By
REAL*8, intent(in) :: eyz

d2I6_dBzdeyy = 2*By*eyz

end function

REAL*8 function d2I6_dBzdeyz(Bx, By, Bz, exy, eyy, eyz, ezz)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: By
REAL*8, intent(in) :: Bz
REAL*8, intent(in) :: exy
REAL*8, intent(in) :: eyy
REAL*8, intent(in) :: eyz
REAL*8, intent(in) :: ezz

d2I6_dBzdeyz = 2*Bx*exy + 2*By*(eyy + ezz) + 4*Bz*eyz

end function

REAL*8 function d2I6_dBzdezx(Bx, By, Bz, exx, exy, ezx, ezz)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: By
REAL*8, intent(in) :: Bz
REAL*8, intent(in) :: exx
REAL*8, intent(in) :: exy
REAL*8, intent(in) :: ezx
REAL*8, intent(in) :: ezz

d2I6_dBzdezx = 2*Bx*(exx + ezz) + 2*By*exy + 4*Bz*ezx

end function

REAL*8 function d2I6_dBzdezz(Bx, By, Bz, eyz, ezx, ezz)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: By
REAL*8, intent(in) :: Bz
REAL*8, intent(in) :: eyz
REAL*8, intent(in) :: ezx
REAL*8, intent(in) :: ezz

d2I6_dBzdezz = 2*Bx*ezx + 2*By*eyz + 4*Bz*ezz

end function

REAL*8 function dI6_dexx(Bx, By, Bz, exx, exy, ezx)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: By
REAL*8, intent(in) :: Bz
REAL*8, intent(in) :: exx
REAL*8, intent(in) :: exy
REAL*8, intent(in) :: ezx

dI6_dexx = 2*Bx*(Bx*exx + By*exy + Bz*ezx)

end function

REAL*8 function d2I6_dexx2(Bx)
implicit none
REAL*8, intent(in) :: Bx

d2I6_dexx2 = 2*Bx**2

end function

REAL*8 function d2I6_dexxdexy(Bx, By)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: By

d2I6_dexxdexy = 2*Bx*By

end function

REAL*8 function d2I6_dexxdezx(Bx, Bz)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: Bz

d2I6_dexxdezx = 2*Bx*Bz

end function

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

dI6_dexy = 2*Bx**2*exy + 2*Bx*(By*(exx + eyy) + Bz*eyz) + 2*By**2*exy + &
      2*By*Bz*ezx

end function

REAL*8 function d2I6_dexy2(Bx, By)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: By

d2I6_dexy2 = 2*Bx**2 + 2*By**2

end function

REAL*8 function d2I6_dexydeyy(Bx, By)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: By

d2I6_dexydeyy = 2*Bx*By

end function

REAL*8 function d2I6_dexydeyz(Bx, Bz)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: Bz

d2I6_dexydeyz = 2*Bx*Bz

end function

REAL*8 function d2I6_dexydezx(By, Bz)
implicit none
REAL*8, intent(in) :: By
REAL*8, intent(in) :: Bz

d2I6_dexydezx = 2*By*Bz

end function

REAL*8 function dI6_deyy(Bx, By, Bz, exy, eyy, eyz)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: By
REAL*8, intent(in) :: Bz
REAL*8, intent(in) :: exy
REAL*8, intent(in) :: eyy
REAL*8, intent(in) :: eyz

dI6_deyy = 2*By*(Bx*exy + By*eyy + Bz*eyz)

end function

REAL*8 function d2I6_deyy2(By)
implicit none
REAL*8, intent(in) :: By

d2I6_deyy2 = 2*By**2

end function

REAL*8 function d2I6_deyydeyz(By, Bz)
implicit none
REAL*8, intent(in) :: By
REAL*8, intent(in) :: Bz

d2I6_deyydeyz = 2*By*Bz

end function

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

dI6_deyz = 2*Bx*By*ezx + 2*By**2*eyz + 2*Bz**2*eyz + 2*Bz*(Bx*exy + By*( &
      eyy + ezz))

end function

REAL*8 function d2I6_deyz2(By, Bz)
implicit none
REAL*8, intent(in) :: By
REAL*8, intent(in) :: Bz

d2I6_deyz2 = 2*By**2 + 2*Bz**2

end function

REAL*8 function d2I6_deyzdezx(Bx, By)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: By

d2I6_deyzdezx = 2*Bx*By

end function

REAL*8 function d2I6_deyzdezz(By, Bz)
implicit none
REAL*8, intent(in) :: By
REAL*8, intent(in) :: Bz

d2I6_deyzdezz = 2*By*Bz

end function

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

dI6_dezx = 2*Bx**2*ezx + 2*Bx*By*eyz + 2*Bz**2*ezx + 2*Bz*(Bx*(exx + ezz &
      ) + By*exy)

end function

REAL*8 function d2I6_dezx2(Bx, Bz)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: Bz

d2I6_dezx2 = 2*Bx**2 + 2*Bz**2

end function

REAL*8 function d2I6_dezxdezz(Bx, Bz)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: Bz

d2I6_dezxdezz = 2*Bx*Bz

end function

REAL*8 function dI6_dezz(Bx, By, Bz, eyz, ezx, ezz)
implicit none
REAL*8, intent(in) :: Bx
REAL*8, intent(in) :: By
REAL*8, intent(in) :: Bz
REAL*8, intent(in) :: eyz
REAL*8, intent(in) :: ezx
REAL*8, intent(in) :: ezz

dI6_dezz = 2*Bz*(Bx*ezx + By*eyz + Bz*ezz)

end function

REAL*8 function d2I6_dezz2(Bz)
implicit none
REAL*8, intent(in) :: Bz

d2I6_dezz2 = 2*Bz**2

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

REAL*8 function dw_dwp(w0)
implicit none
REAL*8, intent(in) :: w0

dw_dwp = 1.0/w0

end function

REAL*8 function dwp_dI4(I4, I5, I6)
implicit none
REAL*8, intent(in) :: I4
REAL*8, intent(in) :: I5
REAL*8, intent(in) :: I6

dwp_dI4 = (1.0d0/2.0d0)*(-I4*I6 + 2*I5**2)/(I4**2*sqrt(I4*I6 - I5**2))

end function

REAL*8 function d2wp_dI42(I4, I5, I6)
implicit none
REAL*8, intent(in) :: I4
REAL*8, intent(in) :: I5
REAL*8, intent(in) :: I6

d2wp_dI42 = (1.0d0/4.0d0)*(-I4**2*I6**2 - 4*I4*I6*(I4*I6 - I5**2) + 8*( &
      I4*I6 - I5**2)**2)/(I4**3*(I4*I6 - I5**2)**(3.0d0/2.0d0))

end function

REAL*8 function d2wp_dI4dI5(I4, I5, I6)
implicit none
REAL*8, intent(in) :: I4
REAL*8, intent(in) :: I5
REAL*8, intent(in) :: I6

d2wp_dI4dI5 = (1.0d0/2.0d0)*I5*(3*I4*I6 - 2*I5**2)/(I4**2*(I4*I6 - I5**2 &
      )**(3.0d0/2.0d0))

end function

REAL*8 function d2wp_dI4dI6(I4, I5, I6)
implicit none
REAL*8, intent(in) :: I4
REAL*8, intent(in) :: I5
REAL*8, intent(in) :: I6

d2wp_dI4dI6 = -1.0d0/4.0d0*I6/(I4*I6 - I5**2)**(3.0d0/2.0d0)

end function

REAL*8 function dwp_dI5(I4, I5, I6)
implicit none
REAL*8, intent(in) :: I4
REAL*8, intent(in) :: I5
REAL*8, intent(in) :: I6

dwp_dI5 = -I5/(I4*sqrt(I4*I6 - I5**2))

end function

REAL*8 function d2wp_dI52(I4, I5, I6)
implicit none
REAL*8, intent(in) :: I4
REAL*8, intent(in) :: I5
REAL*8, intent(in) :: I6

d2wp_dI52 = -I6/(I4*I6 - I5**2)**(3.0d0/2.0d0)

end function

REAL*8 function d2wp_dI5dI6(I4, I5, I6)
implicit none
REAL*8, intent(in) :: I4
REAL*8, intent(in) :: I5
REAL*8, intent(in) :: I6

d2wp_dI5dI6 = (1.0d0/2.0d0)*I5/(I4*I6 - I5**2)**(3.0d0/2.0d0)

end function

REAL*8 function dwp_dI6(I4, I5, I6)
implicit none
REAL*8, intent(in) :: I4
REAL*8, intent(in) :: I5
REAL*8, intent(in) :: I6

dwp_dI6 = (1.0d0/2.0d0)/sqrt(I4*I6 - I5**2)

end function

REAL*8 function d2wp_dI62(I4, I5, I6)
implicit none
REAL*8, intent(in) :: I4
REAL*8, intent(in) :: I5
REAL*8, intent(in) :: I6

d2wp_dI62 = -1.0d0/4.0d0*I4/(I4*I6 - I5**2)**(3.0d0/2.0d0)

end function

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

dphi_dBx = dI4_dBx*du_dup*dup_dI4*dphi_du + dv_dvp*dphi_dv*(dI4_dBx*dvp_dI4 + &
      dI5_dBx*dvp_dI5) + dw_dwp*dphi_dw*(dI4_dBx*dwp_dI4 + dI5_dBx* &
      dwp_dI5 + dI6_dBx*dwp_dI6)

end function

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

d2phi_dBx2 = d2I4_dBx2*du_dup*dup_dI4*dphi_du + d2up_dI42*dI4_dBx**2*du_dup* &
      dphi_du + dI4_dBx*du_dup*dup_dI4*(d2phi_du2*dI4_dBx*du_dup*dup_dI4 + &
      d2phi_dudv*dv_dvp*(dI4_dBx*dvp_dI4 + dI5_dBx*dvp_dI5) + d2phi_dudw* &
      dw_dwp*(dI4_dBx*dwp_dI4 + dI5_dBx*dwp_dI5 + dI6_dBx*dwp_dI6)) + &
      dv_dvp*dphi_dv*(d2I4_dBx2*dvp_dI4 + d2I5_dBx2*dvp_dI5 + d2vp_dI4dI5 &
      *dI4_dBx*dI5_dBx + dI4_dBx*(d2vp_dI42*dI4_dBx + d2vp_dI4dI5* &
      dI5_dBx)) + dv_dvp*(dI4_dBx*dvp_dI4 + dI5_dBx*dvp_dI5)*(d2phi_dudv* &
      dI4_dBx*du_dup*dup_dI4 + d2phi_dv2*dv_dvp*(dI4_dBx*dvp_dI4 + &
      dI5_dBx*dvp_dI5) + d2phi_dvdw*dw_dwp*(dI4_dBx*dwp_dI4 + dI5_dBx* &
      dwp_dI5 + dI6_dBx*dwp_dI6)) + dw_dwp*dphi_dw*(d2I4_dBx2*dwp_dI4 + &
      d2I5_dBx2*dwp_dI5 + d2I6_dBx2*dwp_dI6 + dI4_dBx*(d2wp_dI42* &
      dI4_dBx + d2wp_dI4dI5*dI5_dBx + d2wp_dI4dI6*dI6_dBx) + dI5_dBx*( &
      d2wp_dI4dI5*dI4_dBx + d2wp_dI52*dI5_dBx + d2wp_dI5dI6*dI6_dBx) + &
      dI6_dBx*(d2wp_dI4dI6*dI4_dBx + d2wp_dI5dI6*dI5_dBx + d2wp_dI62* &
      dI6_dBx)) + dw_dwp*(dI4_dBx*dwp_dI4 + dI5_dBx*dwp_dI5 + dI6_dBx* &
      dwp_dI6)*(d2phi_dudw*dI4_dBx*du_dup*dup_dI4 + d2phi_dvdw*dv_dvp*( &
      dI4_dBx*dvp_dI4 + dI5_dBx*dvp_dI5) + d2phi_dw2*dw_dwp*(dI4_dBx* &
      dwp_dI4 + dI5_dBx*dwp_dI5 + dI6_dBx*dwp_dI6))

end function

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

d2phi_dBxdBy = d2up_dI42*dI4_dBx*dI4_dBy*du_dup*dphi_du + dI4_dBx*du_dup* &
      dup_dI4*(d2phi_du2*dI4_dBy*du_dup*dup_dI4 + d2phi_dudv*dv_dvp*( &
      dI4_dBy*dvp_dI4 + dI5_dBy*dvp_dI5) + d2phi_dudw*dw_dwp*(dI4_dBy* &
      dwp_dI4 + dI5_dBy*dwp_dI5 + dI6_dBy*dwp_dI6)) + dv_dvp*dphi_dv*( &
      d2I5_dBxdBy*dvp_dI5 + d2vp_dI4dI5*dI4_dBy*dI5_dBx + dI4_dBx*( &
      d2vp_dI42*dI4_dBy + d2vp_dI4dI5*dI5_dBy)) + dv_dvp*(dI4_dBx* &
      dvp_dI4 + dI5_dBx*dvp_dI5)*(d2phi_dudv*dI4_dBy*du_dup*dup_dI4 + d2phi &
      _dv2*dv_dvp*(dI4_dBy*dvp_dI4 + dI5_dBy*dvp_dI5) + d2phi_dvdw*dw_dwp &
      *(dI4_dBy*dwp_dI4 + dI5_dBy*dwp_dI5 + dI6_dBy*dwp_dI6)) + dw_dwp* &
      dphi_dw*(d2I5_dBxdBy*dwp_dI5 + d2I6_dBxdBy*dwp_dI6 + dI4_dBx*( &
      d2wp_dI42*dI4_dBy + d2wp_dI4dI5*dI5_dBy + d2wp_dI4dI6*dI6_dBy) + &
      dI5_dBx*(d2wp_dI4dI5*dI4_dBy + d2wp_dI52*dI5_dBy + d2wp_dI5dI6* &
      dI6_dBy) + dI6_dBx*(d2wp_dI4dI6*dI4_dBy + d2wp_dI5dI6*dI5_dBy + &
      d2wp_dI62*dI6_dBy)) + dw_dwp*(dI4_dBx*dwp_dI4 + dI5_dBx*dwp_dI5 + &
      dI6_dBx*dwp_dI6)*(d2phi_dudw*dI4_dBy*du_dup*dup_dI4 + d2phi_dvdw* &
      dv_dvp*(dI4_dBy*dvp_dI4 + dI5_dBy*dvp_dI5) + d2phi_dw2*dw_dwp*( &
      dI4_dBy*dwp_dI4 + dI5_dBy*dwp_dI5 + dI6_dBy*dwp_dI6))

end function

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

d2phi_dBxdBz = d2up_dI42*dI4_dBx*dI4_dBz*du_dup*dphi_du + dI4_dBx*du_dup* &
      dup_dI4*(d2phi_du2*dI4_dBz*du_dup*dup_dI4 + d2phi_dudv*dv_dvp*( &
      dI4_dBz*dvp_dI4 + dI5_dBz*dvp_dI5) + d2phi_dudw*dw_dwp*(dI4_dBz* &
      dwp_dI4 + dI5_dBz*dwp_dI5 + dI6_dBz*dwp_dI6)) + dv_dvp*dphi_dv*( &
      d2I5_dBxdBz*dvp_dI5 + d2vp_dI4dI5*dI4_dBz*dI5_dBx + dI4_dBx*( &
      d2vp_dI42*dI4_dBz + d2vp_dI4dI5*dI5_dBz)) + dv_dvp*(dI4_dBx* &
      dvp_dI4 + dI5_dBx*dvp_dI5)*(d2phi_dudv*dI4_dBz*du_dup*dup_dI4 + d2phi &
      _dv2*dv_dvp*(dI4_dBz*dvp_dI4 + dI5_dBz*dvp_dI5) + d2phi_dvdw*dw_dwp &
      *(dI4_dBz*dwp_dI4 + dI5_dBz*dwp_dI5 + dI6_dBz*dwp_dI6)) + dw_dwp* &
      dphi_dw*(d2I5_dBxdBz*dwp_dI5 + d2I6_dBxdBz*dwp_dI6 + dI4_dBx*( &
      d2wp_dI42*dI4_dBz + d2wp_dI4dI5*dI5_dBz + d2wp_dI4dI6*dI6_dBz) + &
      dI5_dBx*(d2wp_dI4dI5*dI4_dBz + d2wp_dI52*dI5_dBz + d2wp_dI5dI6* &
      dI6_dBz) + dI6_dBx*(d2wp_dI4dI6*dI4_dBz + d2wp_dI5dI6*dI5_dBz + &
      d2wp_dI62*dI6_dBz)) + dw_dwp*(dI4_dBx*dwp_dI4 + dI5_dBx*dwp_dI5 + &
      dI6_dBx*dwp_dI6)*(d2phi_dudw*dI4_dBz*du_dup*dup_dI4 + d2phi_dvdw* &
      dv_dvp*(dI4_dBz*dvp_dI4 + dI5_dBz*dvp_dI5) + d2phi_dw2*dw_dwp*( &
      dI4_dBz*dwp_dI4 + dI5_dBz*dwp_dI5 + dI6_dBz*dwp_dI6))

end function

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

d2phi_dBxdepsxx = dI4_dBx*du_dup*dup_dI4*(d2phi_dudv*dv_dvp*dvp_dI5*(dI5_dexx* &
      dexx_depsxx + dI5_deyy*deyy_depsxx + dI5_dezz*dezz_depsxx) + d2phi_dudw* &
      dw_dwp*(dwp_dI5*(dI5_dexx*dexx_depsxx + dI5_deyy*deyy_depsxx + &
      dI5_dezz*dezz_depsxx) + dwp_dI6*(dI6_dexx*dexx_depsxx + dI6_deyy* &
      deyy_depsxx + dI6_dezz*dezz_depsxx))) + dv_dvp*dphi_dv*(d2I5_dBxdexx* &
      dexx_depsxx*dvp_dI5 + d2vp_dI4dI5*dI4_dBx*(dI5_dexx*dexx_depsxx + &
      dI5_deyy*deyy_depsxx + dI5_dezz*dezz_depsxx)) + dv_dvp*(dI4_dBx* &
      dvp_dI4 + dI5_dBx*dvp_dI5)*(d2phi_dv2*dv_dvp*dvp_dI5*(dI5_dexx* &
      dexx_depsxx + dI5_deyy*deyy_depsxx + dI5_dezz*dezz_depsxx) + d2phi_dvdw* &
      dw_dwp*(dwp_dI5*(dI5_dexx*dexx_depsxx + dI5_deyy*deyy_depsxx + &
      dI5_dezz*dezz_depsxx) + dwp_dI6*(dI6_dexx*dexx_depsxx + dI6_deyy* &
      deyy_depsxx + dI6_dezz*dezz_depsxx))) + dw_dwp*dphi_dw*(d2I5_dBxdexx* &
      dexx_depsxx*dwp_dI5 + dI4_dBx*(d2wp_dI4dI5*(dI5_dexx*dexx_depsxx + &
      dI5_deyy*deyy_depsxx + dI5_dezz*dezz_depsxx) + d2wp_dI4dI6*(dI6_dexx* &
      dexx_depsxx + dI6_deyy*deyy_depsxx + dI6_dezz*dezz_depsxx)) + dI5_dBx*( &
      d2wp_dI52*(dI5_dexx*dexx_depsxx + dI5_deyy*deyy_depsxx + dI5_dezz* &
      dezz_depsxx) + d2wp_dI5dI6*(dI6_dexx*dexx_depsxx + dI6_deyy*deyy_depsxx &
      + dI6_dezz*dezz_depsxx)) + dI6_dBx*(d2wp_dI5dI6*(dI5_dexx*dexx_depsxx &
      + dI5_deyy*deyy_depsxx + dI5_dezz*dezz_depsxx) + d2wp_dI62*(dI6_dexx* &
      dexx_depsxx + dI6_deyy*deyy_depsxx + dI6_dezz*dezz_depsxx)) + dwp_dI6*( &
      d2I6_dBxdexx*dexx_depsxx + d2I6_dBxdeyy*deyy_depsxx + d2I6_dBxdezz* &
      dezz_depsxx)) + dw_dwp*(d2phi_dvdw*dv_dvp*dvp_dI5*(dI5_dexx*dexx_depsxx &
      + dI5_deyy*deyy_depsxx + dI5_dezz*dezz_depsxx) + d2phi_dw2*dw_dwp*( &
      dwp_dI5*(dI5_dexx*dexx_depsxx + dI5_deyy*deyy_depsxx + dI5_dezz* &
      dezz_depsxx) + dwp_dI6*(dI6_dexx*dexx_depsxx + dI6_deyy*deyy_depsxx + &
      dI6_dezz*dezz_depsxx)))*(dI4_dBx*dwp_dI4 + dI5_dBx*dwp_dI5 + &
      dI6_dBx*dwp_dI6)

end function

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

d2phi_dBxdepsxy = dI4_dBx*du_dup*dup_dI4*(d2phi_dudv*dI5_dexy*dexy_depsxy*dv_dvp &
      *dvp_dI5 + d2phi_dudw*dw_dwp*(dI5_dexy*dexy_depsxy*dwp_dI5 + dI6_dexy &
      *dexy_depsxy*dwp_dI6)) + dv_dvp*dphi_dv*(d2I5_dBxdexy*dexy_depsxy* &
      dvp_dI5 + d2vp_dI4dI5*dI4_dBx*dI5_dexy*dexy_depsxy) + dv_dvp*( &
      dI4_dBx*dvp_dI4 + dI5_dBx*dvp_dI5)*(d2phi_dv2*dI5_dexy*dexy_depsxy* &
      dv_dvp*dvp_dI5 + d2phi_dvdw*dw_dwp*(dI5_dexy*dexy_depsxy*dwp_dI5 + &
      dI6_dexy*dexy_depsxy*dwp_dI6)) + dw_dwp*dphi_dw*(d2I5_dBxdexy*dexy_deps &
      xy*dwp_dI5 + d2I6_dBxdexy*dexy_depsxy*dwp_dI6 + dI4_dBx*( &
      d2wp_dI4dI5*dI5_dexy*dexy_depsxy + d2wp_dI4dI6*dI6_dexy*dexy_depsxy) &
      + dI5_dBx*(d2wp_dI52*dI5_dexy*dexy_depsxy + d2wp_dI5dI6*dI6_dexy* &
      dexy_depsxy) + dI6_dBx*(d2wp_dI5dI6*dI5_dexy*dexy_depsxy + d2wp_dI62* &
      dI6_dexy*dexy_depsxy)) + dw_dwp*(d2phi_dvdw*dI5_dexy*dexy_depsxy*dv_dvp &
      *dvp_dI5 + d2phi_dw2*dw_dwp*(dI5_dexy*dexy_depsxy*dwp_dI5 + dI6_dexy* &
      dexy_depsxy*dwp_dI6))*(dI4_dBx*dwp_dI4 + dI5_dBx*dwp_dI5 + dI6_dBx* &
      dwp_dI6)

end function

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

d2phi_dBxdepsyy = dI4_dBx*du_dup*dup_dI4*(d2phi_dudv*dv_dvp*dvp_dI5*(dI5_dexx* &
      dexx_depsyy + dI5_deyy*deyy_depsyy + dI5_dezz*dezz_depsyy) + d2phi_dudw* &
      dw_dwp*(dwp_dI5*(dI5_dexx*dexx_depsyy + dI5_deyy*deyy_depsyy + &
      dI5_dezz*dezz_depsyy) + dwp_dI6*(dI6_dexx*dexx_depsyy + dI6_deyy* &
      deyy_depsyy + dI6_dezz*dezz_depsyy))) + dv_dvp*dphi_dv*(d2I5_dBxdexx* &
      dexx_depsyy*dvp_dI5 + d2vp_dI4dI5*dI4_dBx*(dI5_dexx*dexx_depsyy + &
      dI5_deyy*deyy_depsyy + dI5_dezz*dezz_depsyy)) + dv_dvp*(dI4_dBx* &
      dvp_dI4 + dI5_dBx*dvp_dI5)*(d2phi_dv2*dv_dvp*dvp_dI5*(dI5_dexx* &
      dexx_depsyy + dI5_deyy*deyy_depsyy + dI5_dezz*dezz_depsyy) + d2phi_dvdw* &
      dw_dwp*(dwp_dI5*(dI5_dexx*dexx_depsyy + dI5_deyy*deyy_depsyy + &
      dI5_dezz*dezz_depsyy) + dwp_dI6*(dI6_dexx*dexx_depsyy + dI6_deyy* &
      deyy_depsyy + dI6_dezz*dezz_depsyy))) + dw_dwp*dphi_dw*(d2I5_dBxdexx* &
      dexx_depsyy*dwp_dI5 + dI4_dBx*(d2wp_dI4dI5*(dI5_dexx*dexx_depsyy + &
      dI5_deyy*deyy_depsyy + dI5_dezz*dezz_depsyy) + d2wp_dI4dI6*(dI6_dexx* &
      dexx_depsyy + dI6_deyy*deyy_depsyy + dI6_dezz*dezz_depsyy)) + dI5_dBx*( &
      d2wp_dI52*(dI5_dexx*dexx_depsyy + dI5_deyy*deyy_depsyy + dI5_dezz* &
      dezz_depsyy) + d2wp_dI5dI6*(dI6_dexx*dexx_depsyy + dI6_deyy*deyy_depsyy &
      + dI6_dezz*dezz_depsyy)) + dI6_dBx*(d2wp_dI5dI6*(dI5_dexx*dexx_depsyy &
      + dI5_deyy*deyy_depsyy + dI5_dezz*dezz_depsyy) + d2wp_dI62*(dI6_dexx* &
      dexx_depsyy + dI6_deyy*deyy_depsyy + dI6_dezz*dezz_depsyy)) + dwp_dI6*( &
      d2I6_dBxdexx*dexx_depsyy + d2I6_dBxdeyy*deyy_depsyy + d2I6_dBxdezz* &
      dezz_depsyy)) + dw_dwp*(d2phi_dvdw*dv_dvp*dvp_dI5*(dI5_dexx*dexx_depsyy &
      + dI5_deyy*deyy_depsyy + dI5_dezz*dezz_depsyy) + d2phi_dw2*dw_dwp*( &
      dwp_dI5*(dI5_dexx*dexx_depsyy + dI5_deyy*deyy_depsyy + dI5_dezz* &
      dezz_depsyy) + dwp_dI6*(dI6_dexx*dexx_depsyy + dI6_deyy*deyy_depsyy + &
      dI6_dezz*dezz_depsyy)))*(dI4_dBx*dwp_dI4 + dI5_dBx*dwp_dI5 + &
      dI6_dBx*dwp_dI6)

end function

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

d2phi_dBxdepsyz = d2vp_dI4dI5*dI4_dBx*dI5_deyz*deyz_depsyz*dv_dvp*dphi_dv + &
      dI4_dBx*du_dup*dup_dI4*(d2phi_dudv*dI5_deyz*deyz_depsyz*dv_dvp* &
      dvp_dI5 + d2phi_dudw*dw_dwp*(dI5_deyz*deyz_depsyz*dwp_dI5 + dI6_deyz* &
      deyz_depsyz*dwp_dI6)) + dv_dvp*(dI4_dBx*dvp_dI4 + dI5_dBx*dvp_dI5)* &
      (d2phi_dv2*dI5_deyz*deyz_depsyz*dv_dvp*dvp_dI5 + d2phi_dvdw*dw_dwp*( &
      dI5_deyz*deyz_depsyz*dwp_dI5 + dI6_deyz*deyz_depsyz*dwp_dI6)) + &
      dw_dwp*dphi_dw*(d2I6_dBxdeyz*deyz_depsyz*dwp_dI6 + dI4_dBx*( &
      d2wp_dI4dI5*dI5_deyz*deyz_depsyz + d2wp_dI4dI6*dI6_deyz*deyz_depsyz) &
      + dI5_dBx*(d2wp_dI52*dI5_deyz*deyz_depsyz + d2wp_dI5dI6*dI6_deyz* &
      deyz_depsyz) + dI6_dBx*(d2wp_dI5dI6*dI5_deyz*deyz_depsyz + d2wp_dI62* &
      dI6_deyz*deyz_depsyz)) + dw_dwp*(d2phi_dvdw*dI5_deyz*deyz_depsyz*dv_dvp &
      *dvp_dI5 + d2phi_dw2*dw_dwp*(dI5_deyz*deyz_depsyz*dwp_dI5 + dI6_deyz* &
      deyz_depsyz*dwp_dI6))*(dI4_dBx*dwp_dI4 + dI5_dBx*dwp_dI5 + dI6_dBx* &
      dwp_dI6)

end function

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

d2phi_dBxdepszx = dI4_dBx*du_dup*dup_dI4*(d2phi_dudv*dI5_dezx*dezx_depszx*dv_dvp &
      *dvp_dI5 + d2phi_dudw*dw_dwp*(dI5_dezx*dezx_depszx*dwp_dI5 + dI6_dezx &
      *dezx_depszx*dwp_dI6)) + dv_dvp*dphi_dv*(d2I5_dBxdezx*dezx_depszx* &
      dvp_dI5 + d2vp_dI4dI5*dI4_dBx*dI5_dezx*dezx_depszx) + dv_dvp*( &
      dI4_dBx*dvp_dI4 + dI5_dBx*dvp_dI5)*(d2phi_dv2*dI5_dezx*dezx_depszx* &
      dv_dvp*dvp_dI5 + d2phi_dvdw*dw_dwp*(dI5_dezx*dezx_depszx*dwp_dI5 + &
      dI6_dezx*dezx_depszx*dwp_dI6)) + dw_dwp*dphi_dw*(d2I5_dBxdezx*dezx_deps &
      zx*dwp_dI5 + d2I6_dBxdezx*dezx_depszx*dwp_dI6 + dI4_dBx*( &
      d2wp_dI4dI5*dI5_dezx*dezx_depszx + d2wp_dI4dI6*dI6_dezx*dezx_depszx) &
      + dI5_dBx*(d2wp_dI52*dI5_dezx*dezx_depszx + d2wp_dI5dI6*dI6_dezx* &
      dezx_depszx) + dI6_dBx*(d2wp_dI5dI6*dI5_dezx*dezx_depszx + d2wp_dI62* &
      dI6_dezx*dezx_depszx)) + dw_dwp*(d2phi_dvdw*dI5_dezx*dezx_depszx*dv_dvp &
      *dvp_dI5 + d2phi_dw2*dw_dwp*(dI5_dezx*dezx_depszx*dwp_dI5 + dI6_dezx* &
      dezx_depszx*dwp_dI6))*(dI4_dBx*dwp_dI4 + dI5_dBx*dwp_dI5 + dI6_dBx* &
      dwp_dI6)

end function

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

d2phi_dBxdepszz = dI4_dBx*du_dup*dup_dI4*(d2phi_dudv*dv_dvp*dvp_dI5*(dI5_dexx* &
      dexx_depszz + dI5_deyy*deyy_depszz + dI5_dezz*dezz_depszz) + d2phi_dudw* &
      dw_dwp*(dwp_dI5*(dI5_dexx*dexx_depszz + dI5_deyy*deyy_depszz + &
      dI5_dezz*dezz_depszz) + dwp_dI6*(dI6_dexx*dexx_depszz + dI6_deyy* &
      deyy_depszz + dI6_dezz*dezz_depszz))) + dv_dvp*dphi_dv*(d2I5_dBxdexx* &
      dexx_depszz*dvp_dI5 + d2vp_dI4dI5*dI4_dBx*(dI5_dexx*dexx_depszz + &
      dI5_deyy*deyy_depszz + dI5_dezz*dezz_depszz)) + dv_dvp*(dI4_dBx* &
      dvp_dI4 + dI5_dBx*dvp_dI5)*(d2phi_dv2*dv_dvp*dvp_dI5*(dI5_dexx* &
      dexx_depszz + dI5_deyy*deyy_depszz + dI5_dezz*dezz_depszz) + d2phi_dvdw* &
      dw_dwp*(dwp_dI5*(dI5_dexx*dexx_depszz + dI5_deyy*deyy_depszz + &
      dI5_dezz*dezz_depszz) + dwp_dI6*(dI6_dexx*dexx_depszz + dI6_deyy* &
      deyy_depszz + dI6_dezz*dezz_depszz))) + dw_dwp*dphi_dw*(d2I5_dBxdexx* &
      dexx_depszz*dwp_dI5 + dI4_dBx*(d2wp_dI4dI5*(dI5_dexx*dexx_depszz + &
      dI5_deyy*deyy_depszz + dI5_dezz*dezz_depszz) + d2wp_dI4dI6*(dI6_dexx* &
      dexx_depszz + dI6_deyy*deyy_depszz + dI6_dezz*dezz_depszz)) + dI5_dBx*( &
      d2wp_dI52*(dI5_dexx*dexx_depszz + dI5_deyy*deyy_depszz + dI5_dezz* &
      dezz_depszz) + d2wp_dI5dI6*(dI6_dexx*dexx_depszz + dI6_deyy*deyy_depszz &
      + dI6_dezz*dezz_depszz)) + dI6_dBx*(d2wp_dI5dI6*(dI5_dexx*dexx_depszz &
      + dI5_deyy*deyy_depszz + dI5_dezz*dezz_depszz) + d2wp_dI62*(dI6_dexx* &
      dexx_depszz + dI6_deyy*deyy_depszz + dI6_dezz*dezz_depszz)) + dwp_dI6*( &
      d2I6_dBxdexx*dexx_depszz + d2I6_dBxdeyy*deyy_depszz + d2I6_dBxdezz* &
      dezz_depszz)) + dw_dwp*(d2phi_dvdw*dv_dvp*dvp_dI5*(dI5_dexx*dexx_depszz &
      + dI5_deyy*deyy_depszz + dI5_dezz*dezz_depszz) + d2phi_dw2*dw_dwp*( &
      dwp_dI5*(dI5_dexx*dexx_depszz + dI5_deyy*deyy_depszz + dI5_dezz* &
      dezz_depszz) + dwp_dI6*(dI6_dexx*dexx_depszz + dI6_deyy*deyy_depszz + &
      dI6_dezz*dezz_depszz)))*(dI4_dBx*dwp_dI4 + dI5_dBx*dwp_dI5 + &
      dI6_dBx*dwp_dI6)

end function

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

dphi_dBy = dI4_dBy*du_dup*dup_dI4*dphi_du + dv_dvp*dphi_dv*(dI4_dBy*dvp_dI4 + &
      dI5_dBy*dvp_dI5) + dw_dwp*dphi_dw*(dI4_dBy*dwp_dI4 + dI5_dBy* &
      dwp_dI5 + dI6_dBy*dwp_dI6)

end function

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

d2phi_dBy2 = d2I4_dBy2*du_dup*dup_dI4*dphi_du + d2up_dI42*dI4_dBy**2*du_dup* &
      dphi_du + dI4_dBy*du_dup*dup_dI4*(d2phi_du2*dI4_dBy*du_dup*dup_dI4 + &
      d2phi_dudv*dv_dvp*(dI4_dBy*dvp_dI4 + dI5_dBy*dvp_dI5) + d2phi_dudw* &
      dw_dwp*(dI4_dBy*dwp_dI4 + dI5_dBy*dwp_dI5 + dI6_dBy*dwp_dI6)) + &
      dv_dvp*dphi_dv*(d2I4_dBy2*dvp_dI4 + d2I5_dBy2*dvp_dI5 + d2vp_dI4dI5 &
      *dI4_dBy*dI5_dBy + dI4_dBy*(d2vp_dI42*dI4_dBy + d2vp_dI4dI5* &
      dI5_dBy)) + dv_dvp*(dI4_dBy*dvp_dI4 + dI5_dBy*dvp_dI5)*(d2phi_dudv* &
      dI4_dBy*du_dup*dup_dI4 + d2phi_dv2*dv_dvp*(dI4_dBy*dvp_dI4 + &
      dI5_dBy*dvp_dI5) + d2phi_dvdw*dw_dwp*(dI4_dBy*dwp_dI4 + dI5_dBy* &
      dwp_dI5 + dI6_dBy*dwp_dI6)) + dw_dwp*dphi_dw*(d2I4_dBy2*dwp_dI4 + &
      d2I5_dBy2*dwp_dI5 + d2I6_dBy2*dwp_dI6 + dI4_dBy*(d2wp_dI42* &
      dI4_dBy + d2wp_dI4dI5*dI5_dBy + d2wp_dI4dI6*dI6_dBy) + dI5_dBy*( &
      d2wp_dI4dI5*dI4_dBy + d2wp_dI52*dI5_dBy + d2wp_dI5dI6*dI6_dBy) + &
      dI6_dBy*(d2wp_dI4dI6*dI4_dBy + d2wp_dI5dI6*dI5_dBy + d2wp_dI62* &
      dI6_dBy)) + dw_dwp*(dI4_dBy*dwp_dI4 + dI5_dBy*dwp_dI5 + dI6_dBy* &
      dwp_dI6)*(d2phi_dudw*dI4_dBy*du_dup*dup_dI4 + d2phi_dvdw*dv_dvp*( &
      dI4_dBy*dvp_dI4 + dI5_dBy*dvp_dI5) + d2phi_dw2*dw_dwp*(dI4_dBy* &
      dwp_dI4 + dI5_dBy*dwp_dI5 + dI6_dBy*dwp_dI6))

end function

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

d2phi_dBydBz = d2up_dI42*dI4_dBy*dI4_dBz*du_dup*dphi_du + dI4_dBy*du_dup* &
      dup_dI4*(d2phi_du2*dI4_dBz*du_dup*dup_dI4 + d2phi_dudv*dv_dvp*( &
      dI4_dBz*dvp_dI4 + dI5_dBz*dvp_dI5) + d2phi_dudw*dw_dwp*(dI4_dBz* &
      dwp_dI4 + dI5_dBz*dwp_dI5 + dI6_dBz*dwp_dI6)) + dv_dvp*dphi_dv*( &
      d2I5_dBydBz*dvp_dI5 + d2vp_dI4dI5*dI4_dBz*dI5_dBy + dI4_dBy*( &
      d2vp_dI42*dI4_dBz + d2vp_dI4dI5*dI5_dBz)) + dv_dvp*(dI4_dBy* &
      dvp_dI4 + dI5_dBy*dvp_dI5)*(d2phi_dudv*dI4_dBz*du_dup*dup_dI4 + d2phi &
      _dv2*dv_dvp*(dI4_dBz*dvp_dI4 + dI5_dBz*dvp_dI5) + d2phi_dvdw*dw_dwp &
      *(dI4_dBz*dwp_dI4 + dI5_dBz*dwp_dI5 + dI6_dBz*dwp_dI6)) + dw_dwp* &
      dphi_dw*(d2I5_dBydBz*dwp_dI5 + d2I6_dBydBz*dwp_dI6 + dI4_dBy*( &
      d2wp_dI42*dI4_dBz + d2wp_dI4dI5*dI5_dBz + d2wp_dI4dI6*dI6_dBz) + &
      dI5_dBy*(d2wp_dI4dI5*dI4_dBz + d2wp_dI52*dI5_dBz + d2wp_dI5dI6* &
      dI6_dBz) + dI6_dBy*(d2wp_dI4dI6*dI4_dBz + d2wp_dI5dI6*dI5_dBz + &
      d2wp_dI62*dI6_dBz)) + dw_dwp*(dI4_dBy*dwp_dI4 + dI5_dBy*dwp_dI5 + &
      dI6_dBy*dwp_dI6)*(d2phi_dudw*dI4_dBz*du_dup*dup_dI4 + d2phi_dvdw* &
      dv_dvp*(dI4_dBz*dvp_dI4 + dI5_dBz*dvp_dI5) + d2phi_dw2*dw_dwp*( &
      dI4_dBz*dwp_dI4 + dI5_dBz*dwp_dI5 + dI6_dBz*dwp_dI6))

end function

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

d2phi_dBydepsxx = dI4_dBy*du_dup*dup_dI4*(d2phi_dudv*dv_dvp*dvp_dI5*(dI5_dexx* &
      dexx_depsxx + dI5_deyy*deyy_depsxx + dI5_dezz*dezz_depsxx) + d2phi_dudw* &
      dw_dwp*(dwp_dI5*(dI5_dexx*dexx_depsxx + dI5_deyy*deyy_depsxx + &
      dI5_dezz*dezz_depsxx) + dwp_dI6*(dI6_dexx*dexx_depsxx + dI6_deyy* &
      deyy_depsxx + dI6_dezz*dezz_depsxx))) + dv_dvp*dphi_dv*(d2I5_dBydeyy* &
      deyy_depsxx*dvp_dI5 + d2vp_dI4dI5*dI4_dBy*(dI5_dexx*dexx_depsxx + &
      dI5_deyy*deyy_depsxx + dI5_dezz*dezz_depsxx)) + dv_dvp*(dI4_dBy* &
      dvp_dI4 + dI5_dBy*dvp_dI5)*(d2phi_dv2*dv_dvp*dvp_dI5*(dI5_dexx* &
      dexx_depsxx + dI5_deyy*deyy_depsxx + dI5_dezz*dezz_depsxx) + d2phi_dvdw* &
      dw_dwp*(dwp_dI5*(dI5_dexx*dexx_depsxx + dI5_deyy*deyy_depsxx + &
      dI5_dezz*dezz_depsxx) + dwp_dI6*(dI6_dexx*dexx_depsxx + dI6_deyy* &
      deyy_depsxx + dI6_dezz*dezz_depsxx))) + dw_dwp*dphi_dw*(d2I5_dBydeyy* &
      deyy_depsxx*dwp_dI5 + dI4_dBy*(d2wp_dI4dI5*(dI5_dexx*dexx_depsxx + &
      dI5_deyy*deyy_depsxx + dI5_dezz*dezz_depsxx) + d2wp_dI4dI6*(dI6_dexx* &
      dexx_depsxx + dI6_deyy*deyy_depsxx + dI6_dezz*dezz_depsxx)) + dI5_dBy*( &
      d2wp_dI52*(dI5_dexx*dexx_depsxx + dI5_deyy*deyy_depsxx + dI5_dezz* &
      dezz_depsxx) + d2wp_dI5dI6*(dI6_dexx*dexx_depsxx + dI6_deyy*deyy_depsxx &
      + dI6_dezz*dezz_depsxx)) + dI6_dBy*(d2wp_dI5dI6*(dI5_dexx*dexx_depsxx &
      + dI5_deyy*deyy_depsxx + dI5_dezz*dezz_depsxx) + d2wp_dI62*(dI6_dexx* &
      dexx_depsxx + dI6_deyy*deyy_depsxx + dI6_dezz*dezz_depsxx)) + dwp_dI6*( &
      d2I6_dBydexx*dexx_depsxx + d2I6_dBydeyy*deyy_depsxx + d2I6_dBydezz* &
      dezz_depsxx)) + dw_dwp*(d2phi_dvdw*dv_dvp*dvp_dI5*(dI5_dexx*dexx_depsxx &
      + dI5_deyy*deyy_depsxx + dI5_dezz*dezz_depsxx) + d2phi_dw2*dw_dwp*( &
      dwp_dI5*(dI5_dexx*dexx_depsxx + dI5_deyy*deyy_depsxx + dI5_dezz* &
      dezz_depsxx) + dwp_dI6*(dI6_dexx*dexx_depsxx + dI6_deyy*deyy_depsxx + &
      dI6_dezz*dezz_depsxx)))*(dI4_dBy*dwp_dI4 + dI5_dBy*dwp_dI5 + &
      dI6_dBy*dwp_dI6)

end function

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

d2phi_dBydepsxy = dI4_dBy*du_dup*dup_dI4*(d2phi_dudv*dI5_dexy*dexy_depsxy*dv_dvp &
      *dvp_dI5 + d2phi_dudw*dw_dwp*(dI5_dexy*dexy_depsxy*dwp_dI5 + dI6_dexy &
      *dexy_depsxy*dwp_dI6)) + dv_dvp*dphi_dv*(d2I5_dBydexy*dexy_depsxy* &
      dvp_dI5 + d2vp_dI4dI5*dI4_dBy*dI5_dexy*dexy_depsxy) + dv_dvp*( &
      dI4_dBy*dvp_dI4 + dI5_dBy*dvp_dI5)*(d2phi_dv2*dI5_dexy*dexy_depsxy* &
      dv_dvp*dvp_dI5 + d2phi_dvdw*dw_dwp*(dI5_dexy*dexy_depsxy*dwp_dI5 + &
      dI6_dexy*dexy_depsxy*dwp_dI6)) + dw_dwp*dphi_dw*(d2I5_dBydexy*dexy_deps &
      xy*dwp_dI5 + d2I6_dBydexy*dexy_depsxy*dwp_dI6 + dI4_dBy*( &
      d2wp_dI4dI5*dI5_dexy*dexy_depsxy + d2wp_dI4dI6*dI6_dexy*dexy_depsxy) &
      + dI5_dBy*(d2wp_dI52*dI5_dexy*dexy_depsxy + d2wp_dI5dI6*dI6_dexy* &
      dexy_depsxy) + dI6_dBy*(d2wp_dI5dI6*dI5_dexy*dexy_depsxy + d2wp_dI62* &
      dI6_dexy*dexy_depsxy)) + dw_dwp*(d2phi_dvdw*dI5_dexy*dexy_depsxy*dv_dvp &
      *dvp_dI5 + d2phi_dw2*dw_dwp*(dI5_dexy*dexy_depsxy*dwp_dI5 + dI6_dexy* &
      dexy_depsxy*dwp_dI6))*(dI4_dBy*dwp_dI4 + dI5_dBy*dwp_dI5 + dI6_dBy* &
      dwp_dI6)

end function

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

d2phi_dBydepsyy = dI4_dBy*du_dup*dup_dI4*(d2phi_dudv*dv_dvp*dvp_dI5*(dI5_dexx* &
      dexx_depsyy + dI5_deyy*deyy_depsyy + dI5_dezz*dezz_depsyy) + d2phi_dudw* &
      dw_dwp*(dwp_dI5*(dI5_dexx*dexx_depsyy + dI5_deyy*deyy_depsyy + &
      dI5_dezz*dezz_depsyy) + dwp_dI6*(dI6_dexx*dexx_depsyy + dI6_deyy* &
      deyy_depsyy + dI6_dezz*dezz_depsyy))) + dv_dvp*dphi_dv*(d2I5_dBydeyy* &
      deyy_depsyy*dvp_dI5 + d2vp_dI4dI5*dI4_dBy*(dI5_dexx*dexx_depsyy + &
      dI5_deyy*deyy_depsyy + dI5_dezz*dezz_depsyy)) + dv_dvp*(dI4_dBy* &
      dvp_dI4 + dI5_dBy*dvp_dI5)*(d2phi_dv2*dv_dvp*dvp_dI5*(dI5_dexx* &
      dexx_depsyy + dI5_deyy*deyy_depsyy + dI5_dezz*dezz_depsyy) + d2phi_dvdw* &
      dw_dwp*(dwp_dI5*(dI5_dexx*dexx_depsyy + dI5_deyy*deyy_depsyy + &
      dI5_dezz*dezz_depsyy) + dwp_dI6*(dI6_dexx*dexx_depsyy + dI6_deyy* &
      deyy_depsyy + dI6_dezz*dezz_depsyy))) + dw_dwp*dphi_dw*(d2I5_dBydeyy* &
      deyy_depsyy*dwp_dI5 + dI4_dBy*(d2wp_dI4dI5*(dI5_dexx*dexx_depsyy + &
      dI5_deyy*deyy_depsyy + dI5_dezz*dezz_depsyy) + d2wp_dI4dI6*(dI6_dexx* &
      dexx_depsyy + dI6_deyy*deyy_depsyy + dI6_dezz*dezz_depsyy)) + dI5_dBy*( &
      d2wp_dI52*(dI5_dexx*dexx_depsyy + dI5_deyy*deyy_depsyy + dI5_dezz* &
      dezz_depsyy) + d2wp_dI5dI6*(dI6_dexx*dexx_depsyy + dI6_deyy*deyy_depsyy &
      + dI6_dezz*dezz_depsyy)) + dI6_dBy*(d2wp_dI5dI6*(dI5_dexx*dexx_depsyy &
      + dI5_deyy*deyy_depsyy + dI5_dezz*dezz_depsyy) + d2wp_dI62*(dI6_dexx* &
      dexx_depsyy + dI6_deyy*deyy_depsyy + dI6_dezz*dezz_depsyy)) + dwp_dI6*( &
      d2I6_dBydexx*dexx_depsyy + d2I6_dBydeyy*deyy_depsyy + d2I6_dBydezz* &
      dezz_depsyy)) + dw_dwp*(d2phi_dvdw*dv_dvp*dvp_dI5*(dI5_dexx*dexx_depsyy &
      + dI5_deyy*deyy_depsyy + dI5_dezz*dezz_depsyy) + d2phi_dw2*dw_dwp*( &
      dwp_dI5*(dI5_dexx*dexx_depsyy + dI5_deyy*deyy_depsyy + dI5_dezz* &
      dezz_depsyy) + dwp_dI6*(dI6_dexx*dexx_depsyy + dI6_deyy*deyy_depsyy + &
      dI6_dezz*dezz_depsyy)))*(dI4_dBy*dwp_dI4 + dI5_dBy*dwp_dI5 + &
      dI6_dBy*dwp_dI6)

end function

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

d2phi_dBydepsyz = dI4_dBy*du_dup*dup_dI4*(d2phi_dudv*dI5_deyz*deyz_depsyz*dv_dvp &
      *dvp_dI5 + d2phi_dudw*dw_dwp*(dI5_deyz*deyz_depsyz*dwp_dI5 + dI6_deyz &
      *deyz_depsyz*dwp_dI6)) + dv_dvp*dphi_dv*(d2I5_dBydeyz*deyz_depsyz* &
      dvp_dI5 + d2vp_dI4dI5*dI4_dBy*dI5_deyz*deyz_depsyz) + dv_dvp*( &
      dI4_dBy*dvp_dI4 + dI5_dBy*dvp_dI5)*(d2phi_dv2*dI5_deyz*deyz_depsyz* &
      dv_dvp*dvp_dI5 + d2phi_dvdw*dw_dwp*(dI5_deyz*deyz_depsyz*dwp_dI5 + &
      dI6_deyz*deyz_depsyz*dwp_dI6)) + dw_dwp*dphi_dw*(d2I5_dBydeyz*deyz_deps &
      yz*dwp_dI5 + d2I6_dBydeyz*deyz_depsyz*dwp_dI6 + dI4_dBy*( &
      d2wp_dI4dI5*dI5_deyz*deyz_depsyz + d2wp_dI4dI6*dI6_deyz*deyz_depsyz) &
      + dI5_dBy*(d2wp_dI52*dI5_deyz*deyz_depsyz + d2wp_dI5dI6*dI6_deyz* &
      deyz_depsyz) + dI6_dBy*(d2wp_dI5dI6*dI5_deyz*deyz_depsyz + d2wp_dI62* &
      dI6_deyz*deyz_depsyz)) + dw_dwp*(d2phi_dvdw*dI5_deyz*deyz_depsyz*dv_dvp &
      *dvp_dI5 + d2phi_dw2*dw_dwp*(dI5_deyz*deyz_depsyz*dwp_dI5 + dI6_deyz* &
      deyz_depsyz*dwp_dI6))*(dI4_dBy*dwp_dI4 + dI5_dBy*dwp_dI5 + dI6_dBy* &
      dwp_dI6)

end function

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

d2phi_dBydepszx = d2vp_dI4dI5*dI4_dBy*dI5_dezx*dezx_depszx*dv_dvp*dphi_dv + &
      dI4_dBy*du_dup*dup_dI4*(d2phi_dudv*dI5_dezx*dezx_depszx*dv_dvp* &
      dvp_dI5 + d2phi_dudw*dw_dwp*(dI5_dezx*dezx_depszx*dwp_dI5 + dI6_dezx* &
      dezx_depszx*dwp_dI6)) + dv_dvp*(dI4_dBy*dvp_dI4 + dI5_dBy*dvp_dI5)* &
      (d2phi_dv2*dI5_dezx*dezx_depszx*dv_dvp*dvp_dI5 + d2phi_dvdw*dw_dwp*( &
      dI5_dezx*dezx_depszx*dwp_dI5 + dI6_dezx*dezx_depszx*dwp_dI6)) + &
      dw_dwp*dphi_dw*(d2I6_dBydezx*dezx_depszx*dwp_dI6 + dI4_dBy*( &
      d2wp_dI4dI5*dI5_dezx*dezx_depszx + d2wp_dI4dI6*dI6_dezx*dezx_depszx) &
      + dI5_dBy*(d2wp_dI52*dI5_dezx*dezx_depszx + d2wp_dI5dI6*dI6_dezx* &
      dezx_depszx) + dI6_dBy*(d2wp_dI5dI6*dI5_dezx*dezx_depszx + d2wp_dI62* &
      dI6_dezx*dezx_depszx)) + dw_dwp*(d2phi_dvdw*dI5_dezx*dezx_depszx*dv_dvp &
      *dvp_dI5 + d2phi_dw2*dw_dwp*(dI5_dezx*dezx_depszx*dwp_dI5 + dI6_dezx* &
      dezx_depszx*dwp_dI6))*(dI4_dBy*dwp_dI4 + dI5_dBy*dwp_dI5 + dI6_dBy* &
      dwp_dI6)

end function

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

d2phi_dBydepszz = dI4_dBy*du_dup*dup_dI4*(d2phi_dudv*dv_dvp*dvp_dI5*(dI5_dexx* &
      dexx_depszz + dI5_deyy*deyy_depszz + dI5_dezz*dezz_depszz) + d2phi_dudw* &
      dw_dwp*(dwp_dI5*(dI5_dexx*dexx_depszz + dI5_deyy*deyy_depszz + &
      dI5_dezz*dezz_depszz) + dwp_dI6*(dI6_dexx*dexx_depszz + dI6_deyy* &
      deyy_depszz + dI6_dezz*dezz_depszz))) + dv_dvp*dphi_dv*(d2I5_dBydeyy* &
      deyy_depszz*dvp_dI5 + d2vp_dI4dI5*dI4_dBy*(dI5_dexx*dexx_depszz + &
      dI5_deyy*deyy_depszz + dI5_dezz*dezz_depszz)) + dv_dvp*(dI4_dBy* &
      dvp_dI4 + dI5_dBy*dvp_dI5)*(d2phi_dv2*dv_dvp*dvp_dI5*(dI5_dexx* &
      dexx_depszz + dI5_deyy*deyy_depszz + dI5_dezz*dezz_depszz) + d2phi_dvdw* &
      dw_dwp*(dwp_dI5*(dI5_dexx*dexx_depszz + dI5_deyy*deyy_depszz + &
      dI5_dezz*dezz_depszz) + dwp_dI6*(dI6_dexx*dexx_depszz + dI6_deyy* &
      deyy_depszz + dI6_dezz*dezz_depszz))) + dw_dwp*dphi_dw*(d2I5_dBydeyy* &
      deyy_depszz*dwp_dI5 + dI4_dBy*(d2wp_dI4dI5*(dI5_dexx*dexx_depszz + &
      dI5_deyy*deyy_depszz + dI5_dezz*dezz_depszz) + d2wp_dI4dI6*(dI6_dexx* &
      dexx_depszz + dI6_deyy*deyy_depszz + dI6_dezz*dezz_depszz)) + dI5_dBy*( &
      d2wp_dI52*(dI5_dexx*dexx_depszz + dI5_deyy*deyy_depszz + dI5_dezz* &
      dezz_depszz) + d2wp_dI5dI6*(dI6_dexx*dexx_depszz + dI6_deyy*deyy_depszz &
      + dI6_dezz*dezz_depszz)) + dI6_dBy*(d2wp_dI5dI6*(dI5_dexx*dexx_depszz &
      + dI5_deyy*deyy_depszz + dI5_dezz*dezz_depszz) + d2wp_dI62*(dI6_dexx* &
      dexx_depszz + dI6_deyy*deyy_depszz + dI6_dezz*dezz_depszz)) + dwp_dI6*( &
      d2I6_dBydexx*dexx_depszz + d2I6_dBydeyy*deyy_depszz + d2I6_dBydezz* &
      dezz_depszz)) + dw_dwp*(d2phi_dvdw*dv_dvp*dvp_dI5*(dI5_dexx*dexx_depszz &
      + dI5_deyy*deyy_depszz + dI5_dezz*dezz_depszz) + d2phi_dw2*dw_dwp*( &
      dwp_dI5*(dI5_dexx*dexx_depszz + dI5_deyy*deyy_depszz + dI5_dezz* &
      dezz_depszz) + dwp_dI6*(dI6_dexx*dexx_depszz + dI6_deyy*deyy_depszz + &
      dI6_dezz*dezz_depszz)))*(dI4_dBy*dwp_dI4 + dI5_dBy*dwp_dI5 + &
      dI6_dBy*dwp_dI6)

end function

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

dphi_dBz = dI4_dBz*du_dup*dup_dI4*dphi_du + dv_dvp*dphi_dv*(dI4_dBz*dvp_dI4 + &
      dI5_dBz*dvp_dI5) + dw_dwp*dphi_dw*(dI4_dBz*dwp_dI4 + dI5_dBz* &
      dwp_dI5 + dI6_dBz*dwp_dI6)

end function

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

d2phi_dBz2 = d2I4_dBz2*du_dup*dup_dI4*dphi_du + d2up_dI42*dI4_dBz**2*du_dup* &
      dphi_du + dI4_dBz*du_dup*dup_dI4*(d2phi_du2*dI4_dBz*du_dup*dup_dI4 + &
      d2phi_dudv*dv_dvp*(dI4_dBz*dvp_dI4 + dI5_dBz*dvp_dI5) + d2phi_dudw* &
      dw_dwp*(dI4_dBz*dwp_dI4 + dI5_dBz*dwp_dI5 + dI6_dBz*dwp_dI6)) + &
      dv_dvp*dphi_dv*(d2I4_dBz2*dvp_dI4 + d2I5_dBz2*dvp_dI5 + d2vp_dI4dI5 &
      *dI4_dBz*dI5_dBz + dI4_dBz*(d2vp_dI42*dI4_dBz + d2vp_dI4dI5* &
      dI5_dBz)) + dv_dvp*(dI4_dBz*dvp_dI4 + dI5_dBz*dvp_dI5)*(d2phi_dudv* &
      dI4_dBz*du_dup*dup_dI4 + d2phi_dv2*dv_dvp*(dI4_dBz*dvp_dI4 + &
      dI5_dBz*dvp_dI5) + d2phi_dvdw*dw_dwp*(dI4_dBz*dwp_dI4 + dI5_dBz* &
      dwp_dI5 + dI6_dBz*dwp_dI6)) + dw_dwp*dphi_dw*(d2I4_dBz2*dwp_dI4 + &
      d2I5_dBz2*dwp_dI5 + d2I6_dBz2*dwp_dI6 + dI4_dBz*(d2wp_dI42* &
      dI4_dBz + d2wp_dI4dI5*dI5_dBz + d2wp_dI4dI6*dI6_dBz) + dI5_dBz*( &
      d2wp_dI4dI5*dI4_dBz + d2wp_dI52*dI5_dBz + d2wp_dI5dI6*dI6_dBz) + &
      dI6_dBz*(d2wp_dI4dI6*dI4_dBz + d2wp_dI5dI6*dI5_dBz + d2wp_dI62* &
      dI6_dBz)) + dw_dwp*(dI4_dBz*dwp_dI4 + dI5_dBz*dwp_dI5 + dI6_dBz* &
      dwp_dI6)*(d2phi_dudw*dI4_dBz*du_dup*dup_dI4 + d2phi_dvdw*dv_dvp*( &
      dI4_dBz*dvp_dI4 + dI5_dBz*dvp_dI5) + d2phi_dw2*dw_dwp*(dI4_dBz* &
      dwp_dI4 + dI5_dBz*dwp_dI5 + dI6_dBz*dwp_dI6))

end function

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

d2phi_dBzdepsxx = dI4_dBz*du_dup*dup_dI4*(d2phi_dudv*dv_dvp*dvp_dI5*(dI5_dexx* &
      dexx_depsxx + dI5_deyy*deyy_depsxx + dI5_dezz*dezz_depsxx) + d2phi_dudw* &
      dw_dwp*(dwp_dI5*(dI5_dexx*dexx_depsxx + dI5_deyy*deyy_depsxx + &
      dI5_dezz*dezz_depsxx) + dwp_dI6*(dI6_dexx*dexx_depsxx + dI6_deyy* &
      deyy_depsxx + dI6_dezz*dezz_depsxx))) + dv_dvp*dphi_dv*(d2I5_dBzdezz* &
      dezz_depsxx*dvp_dI5 + d2vp_dI4dI5*dI4_dBz*(dI5_dexx*dexx_depsxx + &
      dI5_deyy*deyy_depsxx + dI5_dezz*dezz_depsxx)) + dv_dvp*(dI4_dBz* &
      dvp_dI4 + dI5_dBz*dvp_dI5)*(d2phi_dv2*dv_dvp*dvp_dI5*(dI5_dexx* &
      dexx_depsxx + dI5_deyy*deyy_depsxx + dI5_dezz*dezz_depsxx) + d2phi_dvdw* &
      dw_dwp*(dwp_dI5*(dI5_dexx*dexx_depsxx + dI5_deyy*deyy_depsxx + &
      dI5_dezz*dezz_depsxx) + dwp_dI6*(dI6_dexx*dexx_depsxx + dI6_deyy* &
      deyy_depsxx + dI6_dezz*dezz_depsxx))) + dw_dwp*dphi_dw*(d2I5_dBzdezz* &
      dezz_depsxx*dwp_dI5 + dI4_dBz*(d2wp_dI4dI5*(dI5_dexx*dexx_depsxx + &
      dI5_deyy*deyy_depsxx + dI5_dezz*dezz_depsxx) + d2wp_dI4dI6*(dI6_dexx* &
      dexx_depsxx + dI6_deyy*deyy_depsxx + dI6_dezz*dezz_depsxx)) + dI5_dBz*( &
      d2wp_dI52*(dI5_dexx*dexx_depsxx + dI5_deyy*deyy_depsxx + dI5_dezz* &
      dezz_depsxx) + d2wp_dI5dI6*(dI6_dexx*dexx_depsxx + dI6_deyy*deyy_depsxx &
      + dI6_dezz*dezz_depsxx)) + dI6_dBz*(d2wp_dI5dI6*(dI5_dexx*dexx_depsxx &
      + dI5_deyy*deyy_depsxx + dI5_dezz*dezz_depsxx) + d2wp_dI62*(dI6_dexx* &
      dexx_depsxx + dI6_deyy*deyy_depsxx + dI6_dezz*dezz_depsxx)) + dwp_dI6*( &
      d2I6_dBzdexx*dexx_depsxx + d2I6_dBzdeyy*deyy_depsxx + d2I6_dBzdezz* &
      dezz_depsxx)) + dw_dwp*(d2phi_dvdw*dv_dvp*dvp_dI5*(dI5_dexx*dexx_depsxx &
      + dI5_deyy*deyy_depsxx + dI5_dezz*dezz_depsxx) + d2phi_dw2*dw_dwp*( &
      dwp_dI5*(dI5_dexx*dexx_depsxx + dI5_deyy*deyy_depsxx + dI5_dezz* &
      dezz_depsxx) + dwp_dI6*(dI6_dexx*dexx_depsxx + dI6_deyy*deyy_depsxx + &
      dI6_dezz*dezz_depsxx)))*(dI4_dBz*dwp_dI4 + dI5_dBz*dwp_dI5 + &
      dI6_dBz*dwp_dI6)

end function

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

d2phi_dBzdepsxy = d2vp_dI4dI5*dI4_dBz*dI5_dexy*dexy_depsxy*dv_dvp*dphi_dv + &
      dI4_dBz*du_dup*dup_dI4*(d2phi_dudv*dI5_dexy*dexy_depsxy*dv_dvp* &
      dvp_dI5 + d2phi_dudw*dw_dwp*(dI5_dexy*dexy_depsxy*dwp_dI5 + dI6_dexy* &
      dexy_depsxy*dwp_dI6)) + dv_dvp*(dI4_dBz*dvp_dI4 + dI5_dBz*dvp_dI5)* &
      (d2phi_dv2*dI5_dexy*dexy_depsxy*dv_dvp*dvp_dI5 + d2phi_dvdw*dw_dwp*( &
      dI5_dexy*dexy_depsxy*dwp_dI5 + dI6_dexy*dexy_depsxy*dwp_dI6)) + &
      dw_dwp*dphi_dw*(d2I6_dBzdexy*dexy_depsxy*dwp_dI6 + dI4_dBz*( &
      d2wp_dI4dI5*dI5_dexy*dexy_depsxy + d2wp_dI4dI6*dI6_dexy*dexy_depsxy) &
      + dI5_dBz*(d2wp_dI52*dI5_dexy*dexy_depsxy + d2wp_dI5dI6*dI6_dexy* &
      dexy_depsxy) + dI6_dBz*(d2wp_dI5dI6*dI5_dexy*dexy_depsxy + d2wp_dI62* &
      dI6_dexy*dexy_depsxy)) + dw_dwp*(d2phi_dvdw*dI5_dexy*dexy_depsxy*dv_dvp &
      *dvp_dI5 + d2phi_dw2*dw_dwp*(dI5_dexy*dexy_depsxy*dwp_dI5 + dI6_dexy* &
      dexy_depsxy*dwp_dI6))*(dI4_dBz*dwp_dI4 + dI5_dBz*dwp_dI5 + dI6_dBz* &
      dwp_dI6)

end function

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

d2phi_dBzdepsyy = dI4_dBz*du_dup*dup_dI4*(d2phi_dudv*dv_dvp*dvp_dI5*(dI5_dexx* &
      dexx_depsyy + dI5_deyy*deyy_depsyy + dI5_dezz*dezz_depsyy) + d2phi_dudw* &
      dw_dwp*(dwp_dI5*(dI5_dexx*dexx_depsyy + dI5_deyy*deyy_depsyy + &
      dI5_dezz*dezz_depsyy) + dwp_dI6*(dI6_dexx*dexx_depsyy + dI6_deyy* &
      deyy_depsyy + dI6_dezz*dezz_depsyy))) + dv_dvp*dphi_dv*(d2I5_dBzdezz* &
      dezz_depsyy*dvp_dI5 + d2vp_dI4dI5*dI4_dBz*(dI5_dexx*dexx_depsyy + &
      dI5_deyy*deyy_depsyy + dI5_dezz*dezz_depsyy)) + dv_dvp*(dI4_dBz* &
      dvp_dI4 + dI5_dBz*dvp_dI5)*(d2phi_dv2*dv_dvp*dvp_dI5*(dI5_dexx* &
      dexx_depsyy + dI5_deyy*deyy_depsyy + dI5_dezz*dezz_depsyy) + d2phi_dvdw* &
      dw_dwp*(dwp_dI5*(dI5_dexx*dexx_depsyy + dI5_deyy*deyy_depsyy + &
      dI5_dezz*dezz_depsyy) + dwp_dI6*(dI6_dexx*dexx_depsyy + dI6_deyy* &
      deyy_depsyy + dI6_dezz*dezz_depsyy))) + dw_dwp*dphi_dw*(d2I5_dBzdezz* &
      dezz_depsyy*dwp_dI5 + dI4_dBz*(d2wp_dI4dI5*(dI5_dexx*dexx_depsyy + &
      dI5_deyy*deyy_depsyy + dI5_dezz*dezz_depsyy) + d2wp_dI4dI6*(dI6_dexx* &
      dexx_depsyy + dI6_deyy*deyy_depsyy + dI6_dezz*dezz_depsyy)) + dI5_dBz*( &
      d2wp_dI52*(dI5_dexx*dexx_depsyy + dI5_deyy*deyy_depsyy + dI5_dezz* &
      dezz_depsyy) + d2wp_dI5dI6*(dI6_dexx*dexx_depsyy + dI6_deyy*deyy_depsyy &
      + dI6_dezz*dezz_depsyy)) + dI6_dBz*(d2wp_dI5dI6*(dI5_dexx*dexx_depsyy &
      + dI5_deyy*deyy_depsyy + dI5_dezz*dezz_depsyy) + d2wp_dI62*(dI6_dexx* &
      dexx_depsyy + dI6_deyy*deyy_depsyy + dI6_dezz*dezz_depsyy)) + dwp_dI6*( &
      d2I6_dBzdexx*dexx_depsyy + d2I6_dBzdeyy*deyy_depsyy + d2I6_dBzdezz* &
      dezz_depsyy)) + dw_dwp*(d2phi_dvdw*dv_dvp*dvp_dI5*(dI5_dexx*dexx_depsyy &
      + dI5_deyy*deyy_depsyy + dI5_dezz*dezz_depsyy) + d2phi_dw2*dw_dwp*( &
      dwp_dI5*(dI5_dexx*dexx_depsyy + dI5_deyy*deyy_depsyy + dI5_dezz* &
      dezz_depsyy) + dwp_dI6*(dI6_dexx*dexx_depsyy + dI6_deyy*deyy_depsyy + &
      dI6_dezz*dezz_depsyy)))*(dI4_dBz*dwp_dI4 + dI5_dBz*dwp_dI5 + &
      dI6_dBz*dwp_dI6)

end function

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

d2phi_dBzdepsyz = dI4_dBz*du_dup*dup_dI4*(d2phi_dudv*dI5_deyz*deyz_depsyz*dv_dvp &
      *dvp_dI5 + d2phi_dudw*dw_dwp*(dI5_deyz*deyz_depsyz*dwp_dI5 + dI6_deyz &
      *deyz_depsyz*dwp_dI6)) + dv_dvp*dphi_dv*(d2I5_dBzdeyz*deyz_depsyz* &
      dvp_dI5 + d2vp_dI4dI5*dI4_dBz*dI5_deyz*deyz_depsyz) + dv_dvp*( &
      dI4_dBz*dvp_dI4 + dI5_dBz*dvp_dI5)*(d2phi_dv2*dI5_deyz*deyz_depsyz* &
      dv_dvp*dvp_dI5 + d2phi_dvdw*dw_dwp*(dI5_deyz*deyz_depsyz*dwp_dI5 + &
      dI6_deyz*deyz_depsyz*dwp_dI6)) + dw_dwp*dphi_dw*(d2I5_dBzdeyz*deyz_deps &
      yz*dwp_dI5 + d2I6_dBzdeyz*deyz_depsyz*dwp_dI6 + dI4_dBz*( &
      d2wp_dI4dI5*dI5_deyz*deyz_depsyz + d2wp_dI4dI6*dI6_deyz*deyz_depsyz) &
      + dI5_dBz*(d2wp_dI52*dI5_deyz*deyz_depsyz + d2wp_dI5dI6*dI6_deyz* &
      deyz_depsyz) + dI6_dBz*(d2wp_dI5dI6*dI5_deyz*deyz_depsyz + d2wp_dI62* &
      dI6_deyz*deyz_depsyz)) + dw_dwp*(d2phi_dvdw*dI5_deyz*deyz_depsyz*dv_dvp &
      *dvp_dI5 + d2phi_dw2*dw_dwp*(dI5_deyz*deyz_depsyz*dwp_dI5 + dI6_deyz* &
      deyz_depsyz*dwp_dI6))*(dI4_dBz*dwp_dI4 + dI5_dBz*dwp_dI5 + dI6_dBz* &
      dwp_dI6)

end function

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

d2phi_dBzdepszx = dI4_dBz*du_dup*dup_dI4*(d2phi_dudv*dI5_dezx*dezx_depszx*dv_dvp &
      *dvp_dI5 + d2phi_dudw*dw_dwp*(dI5_dezx*dezx_depszx*dwp_dI5 + dI6_dezx &
      *dezx_depszx*dwp_dI6)) + dv_dvp*dphi_dv*(d2I5_dBzdezx*dezx_depszx* &
      dvp_dI5 + d2vp_dI4dI5*dI4_dBz*dI5_dezx*dezx_depszx) + dv_dvp*( &
      dI4_dBz*dvp_dI4 + dI5_dBz*dvp_dI5)*(d2phi_dv2*dI5_dezx*dezx_depszx* &
      dv_dvp*dvp_dI5 + d2phi_dvdw*dw_dwp*(dI5_dezx*dezx_depszx*dwp_dI5 + &
      dI6_dezx*dezx_depszx*dwp_dI6)) + dw_dwp*dphi_dw*(d2I5_dBzdezx*dezx_deps &
      zx*dwp_dI5 + d2I6_dBzdezx*dezx_depszx*dwp_dI6 + dI4_dBz*( &
      d2wp_dI4dI5*dI5_dezx*dezx_depszx + d2wp_dI4dI6*dI6_dezx*dezx_depszx) &
      + dI5_dBz*(d2wp_dI52*dI5_dezx*dezx_depszx + d2wp_dI5dI6*dI6_dezx* &
      dezx_depszx) + dI6_dBz*(d2wp_dI5dI6*dI5_dezx*dezx_depszx + d2wp_dI62* &
      dI6_dezx*dezx_depszx)) + dw_dwp*(d2phi_dvdw*dI5_dezx*dezx_depszx*dv_dvp &
      *dvp_dI5 + d2phi_dw2*dw_dwp*(dI5_dezx*dezx_depszx*dwp_dI5 + dI6_dezx* &
      dezx_depszx*dwp_dI6))*(dI4_dBz*dwp_dI4 + dI5_dBz*dwp_dI5 + dI6_dBz* &
      dwp_dI6)

end function

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

d2phi_dBzdepszz = dI4_dBz*du_dup*dup_dI4*(d2phi_dudv*dv_dvp*dvp_dI5*(dI5_dexx* &
      dexx_depszz + dI5_deyy*deyy_depszz + dI5_dezz*dezz_depszz) + d2phi_dudw* &
      dw_dwp*(dwp_dI5*(dI5_dexx*dexx_depszz + dI5_deyy*deyy_depszz + &
      dI5_dezz*dezz_depszz) + dwp_dI6*(dI6_dexx*dexx_depszz + dI6_deyy* &
      deyy_depszz + dI6_dezz*dezz_depszz))) + dv_dvp*dphi_dv*(d2I5_dBzdezz* &
      dezz_depszz*dvp_dI5 + d2vp_dI4dI5*dI4_dBz*(dI5_dexx*dexx_depszz + &
      dI5_deyy*deyy_depszz + dI5_dezz*dezz_depszz)) + dv_dvp*(dI4_dBz* &
      dvp_dI4 + dI5_dBz*dvp_dI5)*(d2phi_dv2*dv_dvp*dvp_dI5*(dI5_dexx* &
      dexx_depszz + dI5_deyy*deyy_depszz + dI5_dezz*dezz_depszz) + d2phi_dvdw* &
      dw_dwp*(dwp_dI5*(dI5_dexx*dexx_depszz + dI5_deyy*deyy_depszz + &
      dI5_dezz*dezz_depszz) + dwp_dI6*(dI6_dexx*dexx_depszz + dI6_deyy* &
      deyy_depszz + dI6_dezz*dezz_depszz))) + dw_dwp*dphi_dw*(d2I5_dBzdezz* &
      dezz_depszz*dwp_dI5 + dI4_dBz*(d2wp_dI4dI5*(dI5_dexx*dexx_depszz + &
      dI5_deyy*deyy_depszz + dI5_dezz*dezz_depszz) + d2wp_dI4dI6*(dI6_dexx* &
      dexx_depszz + dI6_deyy*deyy_depszz + dI6_dezz*dezz_depszz)) + dI5_dBz*( &
      d2wp_dI52*(dI5_dexx*dexx_depszz + dI5_deyy*deyy_depszz + dI5_dezz* &
      dezz_depszz) + d2wp_dI5dI6*(dI6_dexx*dexx_depszz + dI6_deyy*deyy_depszz &
      + dI6_dezz*dezz_depszz)) + dI6_dBz*(d2wp_dI5dI6*(dI5_dexx*dexx_depszz &
      + dI5_deyy*deyy_depszz + dI5_dezz*dezz_depszz) + d2wp_dI62*(dI6_dexx* &
      dexx_depszz + dI6_deyy*deyy_depszz + dI6_dezz*dezz_depszz)) + dwp_dI6*( &
      d2I6_dBzdexx*dexx_depszz + d2I6_dBzdeyy*deyy_depszz + d2I6_dBzdezz* &
      dezz_depszz)) + dw_dwp*(d2phi_dvdw*dv_dvp*dvp_dI5*(dI5_dexx*dexx_depszz &
      + dI5_deyy*deyy_depszz + dI5_dezz*dezz_depszz) + d2phi_dw2*dw_dwp*( &
      dwp_dI5*(dI5_dexx*dexx_depszz + dI5_deyy*deyy_depszz + dI5_dezz* &
      dezz_depszz) + dwp_dI6*(dI6_dexx*dexx_depszz + dI6_deyy*deyy_depszz + &
      dI6_dezz*dezz_depszz)))*(dI4_dBz*dwp_dI4 + dI5_dBz*dwp_dI5 + &
      dI6_dBz*dwp_dI6)

end function

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

dphi_depsxx = dv_dvp*dvp_dI5*dphi_dv*(dI5_dexx*dexx_depsxx + dI5_deyy*deyy_depsxx &
      + dI5_dezz*dezz_depsxx) + dw_dwp*dphi_dw*(dwp_dI5*(dI5_dexx*dexx_depsxx &
      + dI5_deyy*deyy_depsxx + dI5_dezz*dezz_depsxx) + dwp_dI6*(dI6_dexx* &
      dexx_depsxx + dI6_deyy*deyy_depsxx + dI6_dezz*dezz_depsxx))

end function

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

d2phi_depsxx2 = dv_dvp*dvp_dI5*(d2phi_dv2*dv_dvp*dvp_dI5*(dI5_dexx*dexx_depsxx + &
      dI5_deyy*deyy_depsxx + dI5_dezz*dezz_depsxx) + d2phi_dvdw*dw_dwp*( &
      dwp_dI5*(dI5_dexx*dexx_depsxx + dI5_deyy*deyy_depsxx + dI5_dezz* &
      dezz_depsxx) + dwp_dI6*(dI6_dexx*dexx_depsxx + dI6_deyy*deyy_depsxx + &
      dI6_dezz*dezz_depsxx)))*(dI5_dexx*dexx_depsxx + dI5_deyy*deyy_depsxx + &
      dI5_dezz*dezz_depsxx) + dw_dwp*dphi_dw*(dwp_dI6*(d2I6_dexx2*dexx_depsxx &
      **2 + d2I6_deyy2*deyy_depsxx**2 + d2I6_dezz2*dezz_depsxx**2) + ( &
      d2wp_dI52*(dI5_dexx*dexx_depsxx + dI5_deyy*deyy_depsxx + dI5_dezz* &
      dezz_depsxx) + d2wp_dI5dI6*(dI6_dexx*dexx_depsxx + dI6_deyy*deyy_depsxx &
      + dI6_dezz*dezz_depsxx))*(dI5_dexx*dexx_depsxx + dI5_deyy*deyy_depsxx + &
      dI5_dezz*dezz_depsxx) + (d2wp_dI5dI6*(dI5_dexx*dexx_depsxx + dI5_deyy &
      *deyy_depsxx + dI5_dezz*dezz_depsxx) + d2wp_dI62*(dI6_dexx*dexx_depsxx &
      + dI6_deyy*deyy_depsxx + dI6_dezz*dezz_depsxx))*(dI6_dexx*dexx_depsxx + &
      dI6_deyy*deyy_depsxx + dI6_dezz*dezz_depsxx)) + dw_dwp*(dwp_dI5*( &
      dI5_dexx*dexx_depsxx + dI5_deyy*deyy_depsxx + dI5_dezz*dezz_depsxx) + &
      dwp_dI6*(dI6_dexx*dexx_depsxx + dI6_deyy*deyy_depsxx + dI6_dezz* &
      dezz_depsxx))*(d2phi_dvdw*dv_dvp*dvp_dI5*(dI5_dexx*dexx_depsxx + &
      dI5_deyy*deyy_depsxx + dI5_dezz*dezz_depsxx) + d2phi_dw2*dw_dwp*( &
      dwp_dI5*(dI5_dexx*dexx_depsxx + dI5_deyy*deyy_depsxx + dI5_dezz* &
      dezz_depsxx) + dwp_dI6*(dI6_dexx*dexx_depsxx + dI6_deyy*deyy_depsxx + &
      dI6_dezz*dezz_depsxx)))

end function

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

d2phi_depsxxdepsxy = dv_dvp*dvp_dI5*(d2phi_dv2*dI5_dexy*dexy_depsxy*dv_dvp*dvp_dI5 &
      + d2phi_dvdw*dw_dwp*(dI5_dexy*dexy_depsxy*dwp_dI5 + dI6_dexy*dexy_deps &
      xy*dwp_dI6))*(dI5_dexx*dexx_depsxx + dI5_deyy*deyy_depsxx + dI5_dezz* &
      dezz_depsxx) + dw_dwp*dphi_dw*(dwp_dI6*(d2I6_dexxdexy*dexx_depsxx* &
      dexy_depsxy + d2I6_dexydeyy*dexy_depsxy*deyy_depsxx) + (d2wp_dI52* &
      dI5_dexy*dexy_depsxy + d2wp_dI5dI6*dI6_dexy*dexy_depsxy)*(dI5_dexx* &
      dexx_depsxx + dI5_deyy*deyy_depsxx + dI5_dezz*dezz_depsxx) + ( &
      d2wp_dI5dI6*dI5_dexy*dexy_depsxy + d2wp_dI62*dI6_dexy*dexy_depsxy)*( &
      dI6_dexx*dexx_depsxx + dI6_deyy*deyy_depsxx + dI6_dezz*dezz_depsxx)) + &
      dw_dwp*(dwp_dI5*(dI5_dexx*dexx_depsxx + dI5_deyy*deyy_depsxx + &
      dI5_dezz*dezz_depsxx) + dwp_dI6*(dI6_dexx*dexx_depsxx + dI6_deyy* &
      deyy_depsxx + dI6_dezz*dezz_depsxx))*(d2phi_dvdw*dI5_dexy*dexy_depsxy* &
      dv_dvp*dvp_dI5 + d2phi_dw2*dw_dwp*(dI5_dexy*dexy_depsxy*dwp_dI5 + &
      dI6_dexy*dexy_depsxy*dwp_dI6))

end function

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

d2phi_depsxxdepsyy = dv_dvp*dvp_dI5*(d2phi_dv2*dv_dvp*dvp_dI5*(dI5_dexx*dexx_deps &
      yy + dI5_deyy*deyy_depsyy + dI5_dezz*dezz_depsyy) + d2phi_dvdw*dw_dwp*( &
      dwp_dI5*(dI5_dexx*dexx_depsyy + dI5_deyy*deyy_depsyy + dI5_dezz* &
      dezz_depsyy) + dwp_dI6*(dI6_dexx*dexx_depsyy + dI6_deyy*deyy_depsyy + &
      dI6_dezz*dezz_depsyy)))*(dI5_dexx*dexx_depsxx + dI5_deyy*deyy_depsxx + &
      dI5_dezz*dezz_depsxx) + dw_dwp*dphi_dw*(dwp_dI6*(d2I6_dexx2*dexx_depsxx &
      *dexx_depsyy + d2I6_deyy2*deyy_depsxx*deyy_depsyy + d2I6_dezz2*dezz_deps &
      xx*dezz_depsyy) + (d2wp_dI52*(dI5_dexx*dexx_depsyy + dI5_deyy*deyy_deps &
      yy + dI5_dezz*dezz_depsyy) + d2wp_dI5dI6*(dI6_dexx*dexx_depsyy + &
      dI6_deyy*deyy_depsyy + dI6_dezz*dezz_depsyy))*(dI5_dexx*dexx_depsxx + &
      dI5_deyy*deyy_depsxx + dI5_dezz*dezz_depsxx) + (d2wp_dI5dI6*(dI5_dexx &
      *dexx_depsyy + dI5_deyy*deyy_depsyy + dI5_dezz*dezz_depsyy) + d2wp_dI62 &
      *(dI6_dexx*dexx_depsyy + dI6_deyy*deyy_depsyy + dI6_dezz*dezz_depsyy))* &
      (dI6_dexx*dexx_depsxx + dI6_deyy*deyy_depsxx + dI6_dezz*dezz_depsxx)) + &
      dw_dwp*(dwp_dI5*(dI5_dexx*dexx_depsxx + dI5_deyy*deyy_depsxx + &
      dI5_dezz*dezz_depsxx) + dwp_dI6*(dI6_dexx*dexx_depsxx + dI6_deyy* &
      deyy_depsxx + dI6_dezz*dezz_depsxx))*(d2phi_dvdw*dv_dvp*dvp_dI5*( &
      dI5_dexx*dexx_depsyy + dI5_deyy*deyy_depsyy + dI5_dezz*dezz_depsyy) + &
      d2phi_dw2*dw_dwp*(dwp_dI5*(dI5_dexx*dexx_depsyy + dI5_deyy*deyy_depsyy &
      + dI5_dezz*dezz_depsyy) + dwp_dI6*(dI6_dexx*dexx_depsyy + dI6_deyy* &
      deyy_depsyy + dI6_dezz*dezz_depsyy)))

end function

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

d2phi_depsxxdepsyz = dv_dvp*dvp_dI5*(d2phi_dv2*dI5_deyz*deyz_depsyz*dv_dvp*dvp_dI5 &
      + d2phi_dvdw*dw_dwp*(dI5_deyz*deyz_depsyz*dwp_dI5 + dI6_deyz*deyz_deps &
      yz*dwp_dI6))*(dI5_dexx*dexx_depsxx + dI5_deyy*deyy_depsxx + dI5_dezz* &
      dezz_depsxx) + dw_dwp*dphi_dw*(dwp_dI6*(d2I6_deyydeyz*deyy_depsxx* &
      deyz_depsyz + d2I6_deyzdezz*deyz_depsyz*dezz_depsxx) + (d2wp_dI52* &
      dI5_deyz*deyz_depsyz + d2wp_dI5dI6*dI6_deyz*deyz_depsyz)*(dI5_dexx* &
      dexx_depsxx + dI5_deyy*deyy_depsxx + dI5_dezz*dezz_depsxx) + ( &
      d2wp_dI5dI6*dI5_deyz*deyz_depsyz + d2wp_dI62*dI6_deyz*deyz_depsyz)*( &
      dI6_dexx*dexx_depsxx + dI6_deyy*deyy_depsxx + dI6_dezz*dezz_depsxx)) + &
      dw_dwp*(dwp_dI5*(dI5_dexx*dexx_depsxx + dI5_deyy*deyy_depsxx + &
      dI5_dezz*dezz_depsxx) + dwp_dI6*(dI6_dexx*dexx_depsxx + dI6_deyy* &
      deyy_depsxx + dI6_dezz*dezz_depsxx))*(d2phi_dvdw*dI5_deyz*deyz_depsyz* &
      dv_dvp*dvp_dI5 + d2phi_dw2*dw_dwp*(dI5_deyz*deyz_depsyz*dwp_dI5 + &
      dI6_deyz*deyz_depsyz*dwp_dI6))

end function

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

d2phi_depsxxdepszx = dv_dvp*dvp_dI5*(d2phi_dv2*dI5_dezx*dezx_depszx*dv_dvp*dvp_dI5 &
      + d2phi_dvdw*dw_dwp*(dI5_dezx*dezx_depszx*dwp_dI5 + dI6_dezx*dezx_deps &
      zx*dwp_dI6))*(dI5_dexx*dexx_depsxx + dI5_deyy*deyy_depsxx + dI5_dezz* &
      dezz_depsxx) + dw_dwp*dphi_dw*(dwp_dI6*(d2I6_dexxdezx*dexx_depsxx* &
      dezx_depszx + d2I6_dezxdezz*dezx_depszx*dezz_depsxx) + (d2wp_dI52* &
      dI5_dezx*dezx_depszx + d2wp_dI5dI6*dI6_dezx*dezx_depszx)*(dI5_dexx* &
      dexx_depsxx + dI5_deyy*deyy_depsxx + dI5_dezz*dezz_depsxx) + ( &
      d2wp_dI5dI6*dI5_dezx*dezx_depszx + d2wp_dI62*dI6_dezx*dezx_depszx)*( &
      dI6_dexx*dexx_depsxx + dI6_deyy*deyy_depsxx + dI6_dezz*dezz_depsxx)) + &
      dw_dwp*(dwp_dI5*(dI5_dexx*dexx_depsxx + dI5_deyy*deyy_depsxx + &
      dI5_dezz*dezz_depsxx) + dwp_dI6*(dI6_dexx*dexx_depsxx + dI6_deyy* &
      deyy_depsxx + dI6_dezz*dezz_depsxx))*(d2phi_dvdw*dI5_dezx*dezx_depszx* &
      dv_dvp*dvp_dI5 + d2phi_dw2*dw_dwp*(dI5_dezx*dezx_depszx*dwp_dI5 + &
      dI6_dezx*dezx_depszx*dwp_dI6))

end function

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

d2phi_depsxxdepszz = dv_dvp*dvp_dI5*(d2phi_dv2*dv_dvp*dvp_dI5*(dI5_dexx*dexx_deps &
      zz + dI5_deyy*deyy_depszz + dI5_dezz*dezz_depszz) + d2phi_dvdw*dw_dwp*( &
      dwp_dI5*(dI5_dexx*dexx_depszz + dI5_deyy*deyy_depszz + dI5_dezz* &
      dezz_depszz) + dwp_dI6*(dI6_dexx*dexx_depszz + dI6_deyy*deyy_depszz + &
      dI6_dezz*dezz_depszz)))*(dI5_dexx*dexx_depsxx + dI5_deyy*deyy_depsxx + &
      dI5_dezz*dezz_depsxx) + dw_dwp*dphi_dw*(dwp_dI6*(d2I6_dexx2*dexx_depsxx &
      *dexx_depszz + d2I6_deyy2*deyy_depsxx*deyy_depszz + d2I6_dezz2*dezz_deps &
      xx*dezz_depszz) + (d2wp_dI52*(dI5_dexx*dexx_depszz + dI5_deyy*deyy_deps &
      zz + dI5_dezz*dezz_depszz) + d2wp_dI5dI6*(dI6_dexx*dexx_depszz + &
      dI6_deyy*deyy_depszz + dI6_dezz*dezz_depszz))*(dI5_dexx*dexx_depsxx + &
      dI5_deyy*deyy_depsxx + dI5_dezz*dezz_depsxx) + (d2wp_dI5dI6*(dI5_dexx &
      *dexx_depszz + dI5_deyy*deyy_depszz + dI5_dezz*dezz_depszz) + d2wp_dI62 &
      *(dI6_dexx*dexx_depszz + dI6_deyy*deyy_depszz + dI6_dezz*dezz_depszz))* &
      (dI6_dexx*dexx_depsxx + dI6_deyy*deyy_depsxx + dI6_dezz*dezz_depsxx)) + &
      dw_dwp*(dwp_dI5*(dI5_dexx*dexx_depsxx + dI5_deyy*deyy_depsxx + &
      dI5_dezz*dezz_depsxx) + dwp_dI6*(dI6_dexx*dexx_depsxx + dI6_deyy* &
      deyy_depsxx + dI6_dezz*dezz_depsxx))*(d2phi_dvdw*dv_dvp*dvp_dI5*( &
      dI5_dexx*dexx_depszz + dI5_deyy*deyy_depszz + dI5_dezz*dezz_depszz) + &
      d2phi_dw2*dw_dwp*(dwp_dI5*(dI5_dexx*dexx_depszz + dI5_deyy*deyy_depszz &
      + dI5_dezz*dezz_depszz) + dwp_dI6*(dI6_dexx*dexx_depszz + dI6_deyy* &
      deyy_depszz + dI6_dezz*dezz_depszz)))

end function

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

dphi_depsxy = dI5_dexy*dexy_depsxy*dv_dvp*dvp_dI5*dphi_dv + dw_dwp*dphi_dw*( &
      dI5_dexy*dexy_depsxy*dwp_dI5 + dI6_dexy*dexy_depsxy*dwp_dI6)

end function

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

d2phi_depsxy2 = dI5_dexy*dexy_depsxy*dv_dvp*dvp_dI5*(d2phi_dv2*dI5_dexy*dexy_deps &
      xy*dv_dvp*dvp_dI5 + d2phi_dvdw*dw_dwp*(dI5_dexy*dexy_depsxy*dwp_dI5 + &
      dI6_dexy*dexy_depsxy*dwp_dI6)) + dw_dwp*dphi_dw*(d2I6_dexy2*dexy_depsxy &
      **2*dwp_dI6 + dI5_dexy*dexy_depsxy*(d2wp_dI52*dI5_dexy*dexy_depsxy + &
      d2wp_dI5dI6*dI6_dexy*dexy_depsxy) + dI6_dexy*dexy_depsxy*(d2wp_dI5dI6 &
      *dI5_dexy*dexy_depsxy + d2wp_dI62*dI6_dexy*dexy_depsxy)) + dw_dwp*( &
      dI5_dexy*dexy_depsxy*dwp_dI5 + dI6_dexy*dexy_depsxy*dwp_dI6)*(d2phi &
      _dvdw*dI5_dexy*dexy_depsxy*dv_dvp*dvp_dI5 + d2phi_dw2*dw_dwp*( &
      dI5_dexy*dexy_depsxy*dwp_dI5 + dI6_dexy*dexy_depsxy*dwp_dI6))

end function

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

d2phi_depsxydepsyy = dI5_dexy*dexy_depsxy*dv_dvp*dvp_dI5*(d2phi_dv2*dv_dvp*dvp_dI5 &
      *(dI5_dexx*dexx_depsyy + dI5_deyy*deyy_depsyy + dI5_dezz*dezz_depsyy) + &
      d2phi_dvdw*dw_dwp*(dwp_dI5*(dI5_dexx*dexx_depsyy + dI5_deyy*deyy_depsyy &
      + dI5_dezz*dezz_depsyy) + dwp_dI6*(dI6_dexx*dexx_depsyy + dI6_deyy* &
      deyy_depsyy + dI6_dezz*dezz_depsyy))) + dw_dwp*dphi_dw*(dI5_dexy*dexy_d &
      epsxy*(d2wp_dI52*(dI5_dexx*dexx_depsyy + dI5_deyy*deyy_depsyy + &
      dI5_dezz*dezz_depsyy) + d2wp_dI5dI6*(dI6_dexx*dexx_depsyy + dI6_deyy* &
      deyy_depsyy + dI6_dezz*dezz_depsyy)) + dI6_dexy*dexy_depsxy*( &
      d2wp_dI5dI6*(dI5_dexx*dexx_depsyy + dI5_deyy*deyy_depsyy + dI5_dezz* &
      dezz_depsyy) + d2wp_dI62*(dI6_dexx*dexx_depsyy + dI6_deyy*deyy_depsyy + &
      dI6_dezz*dezz_depsyy)) + dexy_depsxy*dwp_dI6*(d2I6_dexxdexy*dexx_depsyy &
      + d2I6_dexydeyy*deyy_depsyy)) + dw_dwp*(dI5_dexy*dexy_depsxy*dwp_dI5 &
      + dI6_dexy*dexy_depsxy*dwp_dI6)*(d2phi_dvdw*dv_dvp*dvp_dI5*(dI5_dexx* &
      dexx_depsyy + dI5_deyy*deyy_depsyy + dI5_dezz*dezz_depsyy) + d2phi_dw2* &
      dw_dwp*(dwp_dI5*(dI5_dexx*dexx_depsyy + dI5_deyy*deyy_depsyy + &
      dI5_dezz*dezz_depsyy) + dwp_dI6*(dI6_dexx*dexx_depsyy + dI6_deyy* &
      deyy_depsyy + dI6_dezz*dezz_depsyy)))

end function

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

d2phi_depsxydepsyz = dI5_dexy*dexy_depsxy*dv_dvp*dvp_dI5*(d2phi_dv2*dI5_deyz* &
      deyz_depsyz*dv_dvp*dvp_dI5 + d2phi_dvdw*dw_dwp*(dI5_deyz*deyz_depsyz* &
      dwp_dI5 + dI6_deyz*deyz_depsyz*dwp_dI6)) + dw_dwp*dphi_dw*( &
      d2I6_dexydeyz*dexy_depsxy*deyz_depsyz*dwp_dI6 + dI5_dexy*dexy_depsxy*( &
      d2wp_dI52*dI5_deyz*deyz_depsyz + d2wp_dI5dI6*dI6_deyz*deyz_depsyz) + &
      dI6_dexy*dexy_depsxy*(d2wp_dI5dI6*dI5_deyz*deyz_depsyz + d2wp_dI62* &
      dI6_deyz*deyz_depsyz)) + dw_dwp*(dI5_dexy*dexy_depsxy*dwp_dI5 + &
      dI6_dexy*dexy_depsxy*dwp_dI6)*(d2phi_dvdw*dI5_deyz*deyz_depsyz*dv_dvp* &
      dvp_dI5 + d2phi_dw2*dw_dwp*(dI5_deyz*deyz_depsyz*dwp_dI5 + dI6_deyz* &
      deyz_depsyz*dwp_dI6))

end function

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

d2phi_depsxydepszx = dI5_dexy*dexy_depsxy*dv_dvp*dvp_dI5*(d2phi_dv2*dI5_dezx* &
      dezx_depszx*dv_dvp*dvp_dI5 + d2phi_dvdw*dw_dwp*(dI5_dezx*dezx_depszx* &
      dwp_dI5 + dI6_dezx*dezx_depszx*dwp_dI6)) + dw_dwp*dphi_dw*( &
      d2I6_dexydezx*dexy_depsxy*dezx_depszx*dwp_dI6 + dI5_dexy*dexy_depsxy*( &
      d2wp_dI52*dI5_dezx*dezx_depszx + d2wp_dI5dI6*dI6_dezx*dezx_depszx) + &
      dI6_dexy*dexy_depsxy*(d2wp_dI5dI6*dI5_dezx*dezx_depszx + d2wp_dI62* &
      dI6_dezx*dezx_depszx)) + dw_dwp*(dI5_dexy*dexy_depsxy*dwp_dI5 + &
      dI6_dexy*dexy_depsxy*dwp_dI6)*(d2phi_dvdw*dI5_dezx*dezx_depszx*dv_dvp* &
      dvp_dI5 + d2phi_dw2*dw_dwp*(dI5_dezx*dezx_depszx*dwp_dI5 + dI6_dezx* &
      dezx_depszx*dwp_dI6))

end function

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

d2phi_depsxydepszz = dI5_dexy*dexy_depsxy*dv_dvp*dvp_dI5*(d2phi_dv2*dv_dvp*dvp_dI5 &
      *(dI5_dexx*dexx_depszz + dI5_deyy*deyy_depszz + dI5_dezz*dezz_depszz) + &
      d2phi_dvdw*dw_dwp*(dwp_dI5*(dI5_dexx*dexx_depszz + dI5_deyy*deyy_depszz &
      + dI5_dezz*dezz_depszz) + dwp_dI6*(dI6_dexx*dexx_depszz + dI6_deyy* &
      deyy_depszz + dI6_dezz*dezz_depszz))) + dw_dwp*dphi_dw*(dI5_dexy*dexy_d &
      epsxy*(d2wp_dI52*(dI5_dexx*dexx_depszz + dI5_deyy*deyy_depszz + &
      dI5_dezz*dezz_depszz) + d2wp_dI5dI6*(dI6_dexx*dexx_depszz + dI6_deyy* &
      deyy_depszz + dI6_dezz*dezz_depszz)) + dI6_dexy*dexy_depsxy*( &
      d2wp_dI5dI6*(dI5_dexx*dexx_depszz + dI5_deyy*deyy_depszz + dI5_dezz* &
      dezz_depszz) + d2wp_dI62*(dI6_dexx*dexx_depszz + dI6_deyy*deyy_depszz + &
      dI6_dezz*dezz_depszz)) + dexy_depsxy*dwp_dI6*(d2I6_dexxdexy*dexx_depszz &
      + d2I6_dexydeyy*deyy_depszz)) + dw_dwp*(dI5_dexy*dexy_depsxy*dwp_dI5 &
      + dI6_dexy*dexy_depsxy*dwp_dI6)*(d2phi_dvdw*dv_dvp*dvp_dI5*(dI5_dexx* &
      dexx_depszz + dI5_deyy*deyy_depszz + dI5_dezz*dezz_depszz) + d2phi_dw2* &
      dw_dwp*(dwp_dI5*(dI5_dexx*dexx_depszz + dI5_deyy*deyy_depszz + &
      dI5_dezz*dezz_depszz) + dwp_dI6*(dI6_dexx*dexx_depszz + dI6_deyy* &
      deyy_depszz + dI6_dezz*dezz_depszz)))

end function

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

dphi_depsyy = dv_dvp*dvp_dI5*dphi_dv*(dI5_dexx*dexx_depsyy + dI5_deyy*deyy_depsyy &
      + dI5_dezz*dezz_depsyy) + dw_dwp*dphi_dw*(dwp_dI5*(dI5_dexx*dexx_depsyy &
      + dI5_deyy*deyy_depsyy + dI5_dezz*dezz_depsyy) + dwp_dI6*(dI6_dexx* &
      dexx_depsyy + dI6_deyy*deyy_depsyy + dI6_dezz*dezz_depsyy))

end function

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

d2phi_depsyy2 = dv_dvp*dvp_dI5*(d2phi_dv2*dv_dvp*dvp_dI5*(dI5_dexx*dexx_depsyy + &
      dI5_deyy*deyy_depsyy + dI5_dezz*dezz_depsyy) + d2phi_dvdw*dw_dwp*( &
      dwp_dI5*(dI5_dexx*dexx_depsyy + dI5_deyy*deyy_depsyy + dI5_dezz* &
      dezz_depsyy) + dwp_dI6*(dI6_dexx*dexx_depsyy + dI6_deyy*deyy_depsyy + &
      dI6_dezz*dezz_depsyy)))*(dI5_dexx*dexx_depsyy + dI5_deyy*deyy_depsyy + &
      dI5_dezz*dezz_depsyy) + dw_dwp*dphi_dw*(dwp_dI6*(d2I6_dexx2*dexx_depsyy &
      **2 + d2I6_deyy2*deyy_depsyy**2 + d2I6_dezz2*dezz_depsyy**2) + ( &
      d2wp_dI52*(dI5_dexx*dexx_depsyy + dI5_deyy*deyy_depsyy + dI5_dezz* &
      dezz_depsyy) + d2wp_dI5dI6*(dI6_dexx*dexx_depsyy + dI6_deyy*deyy_depsyy &
      + dI6_dezz*dezz_depsyy))*(dI5_dexx*dexx_depsyy + dI5_deyy*deyy_depsyy + &
      dI5_dezz*dezz_depsyy) + (d2wp_dI5dI6*(dI5_dexx*dexx_depsyy + dI5_deyy &
      *deyy_depsyy + dI5_dezz*dezz_depsyy) + d2wp_dI62*(dI6_dexx*dexx_depsyy &
      + dI6_deyy*deyy_depsyy + dI6_dezz*dezz_depsyy))*(dI6_dexx*dexx_depsyy + &
      dI6_deyy*deyy_depsyy + dI6_dezz*dezz_depsyy)) + dw_dwp*(dwp_dI5*( &
      dI5_dexx*dexx_depsyy + dI5_deyy*deyy_depsyy + dI5_dezz*dezz_depsyy) + &
      dwp_dI6*(dI6_dexx*dexx_depsyy + dI6_deyy*deyy_depsyy + dI6_dezz* &
      dezz_depsyy))*(d2phi_dvdw*dv_dvp*dvp_dI5*(dI5_dexx*dexx_depsyy + &
      dI5_deyy*deyy_depsyy + dI5_dezz*dezz_depsyy) + d2phi_dw2*dw_dwp*( &
      dwp_dI5*(dI5_dexx*dexx_depsyy + dI5_deyy*deyy_depsyy + dI5_dezz* &
      dezz_depsyy) + dwp_dI6*(dI6_dexx*dexx_depsyy + dI6_deyy*deyy_depsyy + &
      dI6_dezz*dezz_depsyy)))

end function

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

d2phi_depsyydepsyz = dv_dvp*dvp_dI5*(d2phi_dv2*dI5_deyz*deyz_depsyz*dv_dvp*dvp_dI5 &
      + d2phi_dvdw*dw_dwp*(dI5_deyz*deyz_depsyz*dwp_dI5 + dI6_deyz*deyz_deps &
      yz*dwp_dI6))*(dI5_dexx*dexx_depsyy + dI5_deyy*deyy_depsyy + dI5_dezz* &
      dezz_depsyy) + dw_dwp*dphi_dw*(dwp_dI6*(d2I6_deyydeyz*deyy_depsyy* &
      deyz_depsyz + d2I6_deyzdezz*deyz_depsyz*dezz_depsyy) + (d2wp_dI52* &
      dI5_deyz*deyz_depsyz + d2wp_dI5dI6*dI6_deyz*deyz_depsyz)*(dI5_dexx* &
      dexx_depsyy + dI5_deyy*deyy_depsyy + dI5_dezz*dezz_depsyy) + ( &
      d2wp_dI5dI6*dI5_deyz*deyz_depsyz + d2wp_dI62*dI6_deyz*deyz_depsyz)*( &
      dI6_dexx*dexx_depsyy + dI6_deyy*deyy_depsyy + dI6_dezz*dezz_depsyy)) + &
      dw_dwp*(dwp_dI5*(dI5_dexx*dexx_depsyy + dI5_deyy*deyy_depsyy + &
      dI5_dezz*dezz_depsyy) + dwp_dI6*(dI6_dexx*dexx_depsyy + dI6_deyy* &
      deyy_depsyy + dI6_dezz*dezz_depsyy))*(d2phi_dvdw*dI5_deyz*deyz_depsyz* &
      dv_dvp*dvp_dI5 + d2phi_dw2*dw_dwp*(dI5_deyz*deyz_depsyz*dwp_dI5 + &
      dI6_deyz*deyz_depsyz*dwp_dI6))

end function

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

d2phi_depsyydepszx = dv_dvp*dvp_dI5*(d2phi_dv2*dI5_dezx*dezx_depszx*dv_dvp*dvp_dI5 &
      + d2phi_dvdw*dw_dwp*(dI5_dezx*dezx_depszx*dwp_dI5 + dI6_dezx*dezx_deps &
      zx*dwp_dI6))*(dI5_dexx*dexx_depsyy + dI5_deyy*deyy_depsyy + dI5_dezz* &
      dezz_depsyy) + dw_dwp*dphi_dw*(dwp_dI6*(d2I6_dexxdezx*dexx_depsyy* &
      dezx_depszx + d2I6_dezxdezz*dezx_depszx*dezz_depsyy) + (d2wp_dI52* &
      dI5_dezx*dezx_depszx + d2wp_dI5dI6*dI6_dezx*dezx_depszx)*(dI5_dexx* &
      dexx_depsyy + dI5_deyy*deyy_depsyy + dI5_dezz*dezz_depsyy) + ( &
      d2wp_dI5dI6*dI5_dezx*dezx_depszx + d2wp_dI62*dI6_dezx*dezx_depszx)*( &
      dI6_dexx*dexx_depsyy + dI6_deyy*deyy_depsyy + dI6_dezz*dezz_depsyy)) + &
      dw_dwp*(dwp_dI5*(dI5_dexx*dexx_depsyy + dI5_deyy*deyy_depsyy + &
      dI5_dezz*dezz_depsyy) + dwp_dI6*(dI6_dexx*dexx_depsyy + dI6_deyy* &
      deyy_depsyy + dI6_dezz*dezz_depsyy))*(d2phi_dvdw*dI5_dezx*dezx_depszx* &
      dv_dvp*dvp_dI5 + d2phi_dw2*dw_dwp*(dI5_dezx*dezx_depszx*dwp_dI5 + &
      dI6_dezx*dezx_depszx*dwp_dI6))

end function

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

d2phi_depsyydepszz = dv_dvp*dvp_dI5*(d2phi_dv2*dv_dvp*dvp_dI5*(dI5_dexx*dexx_deps &
      zz + dI5_deyy*deyy_depszz + dI5_dezz*dezz_depszz) + d2phi_dvdw*dw_dwp*( &
      dwp_dI5*(dI5_dexx*dexx_depszz + dI5_deyy*deyy_depszz + dI5_dezz* &
      dezz_depszz) + dwp_dI6*(dI6_dexx*dexx_depszz + dI6_deyy*deyy_depszz + &
      dI6_dezz*dezz_depszz)))*(dI5_dexx*dexx_depsyy + dI5_deyy*deyy_depsyy + &
      dI5_dezz*dezz_depsyy) + dw_dwp*dphi_dw*(dwp_dI6*(d2I6_dexx2*dexx_depsyy &
      *dexx_depszz + d2I6_deyy2*deyy_depsyy*deyy_depszz + d2I6_dezz2*dezz_deps &
      yy*dezz_depszz) + (d2wp_dI52*(dI5_dexx*dexx_depszz + dI5_deyy*deyy_deps &
      zz + dI5_dezz*dezz_depszz) + d2wp_dI5dI6*(dI6_dexx*dexx_depszz + &
      dI6_deyy*deyy_depszz + dI6_dezz*dezz_depszz))*(dI5_dexx*dexx_depsyy + &
      dI5_deyy*deyy_depsyy + dI5_dezz*dezz_depsyy) + (d2wp_dI5dI6*(dI5_dexx &
      *dexx_depszz + dI5_deyy*deyy_depszz + dI5_dezz*dezz_depszz) + d2wp_dI62 &
      *(dI6_dexx*dexx_depszz + dI6_deyy*deyy_depszz + dI6_dezz*dezz_depszz))* &
      (dI6_dexx*dexx_depsyy + dI6_deyy*deyy_depsyy + dI6_dezz*dezz_depsyy)) + &
      dw_dwp*(dwp_dI5*(dI5_dexx*dexx_depsyy + dI5_deyy*deyy_depsyy + &
      dI5_dezz*dezz_depsyy) + dwp_dI6*(dI6_dexx*dexx_depsyy + dI6_deyy* &
      deyy_depsyy + dI6_dezz*dezz_depsyy))*(d2phi_dvdw*dv_dvp*dvp_dI5*( &
      dI5_dexx*dexx_depszz + dI5_deyy*deyy_depszz + dI5_dezz*dezz_depszz) + &
      d2phi_dw2*dw_dwp*(dwp_dI5*(dI5_dexx*dexx_depszz + dI5_deyy*deyy_depszz &
      + dI5_dezz*dezz_depszz) + dwp_dI6*(dI6_dexx*dexx_depszz + dI6_deyy* &
      deyy_depszz + dI6_dezz*dezz_depszz)))

end function

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

dphi_depsyz = dI5_deyz*deyz_depsyz*dv_dvp*dvp_dI5*dphi_dv + dw_dwp*dphi_dw*( &
      dI5_deyz*deyz_depsyz*dwp_dI5 + dI6_deyz*deyz_depsyz*dwp_dI6)

end function

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

d2phi_depsyz2 = dI5_deyz*deyz_depsyz*dv_dvp*dvp_dI5*(d2phi_dv2*dI5_deyz*deyz_deps &
      yz*dv_dvp*dvp_dI5 + d2phi_dvdw*dw_dwp*(dI5_deyz*deyz_depsyz*dwp_dI5 + &
      dI6_deyz*deyz_depsyz*dwp_dI6)) + dw_dwp*dphi_dw*(d2I6_deyz2*deyz_depsyz &
      **2*dwp_dI6 + dI5_deyz*deyz_depsyz*(d2wp_dI52*dI5_deyz*deyz_depsyz + &
      d2wp_dI5dI6*dI6_deyz*deyz_depsyz) + dI6_deyz*deyz_depsyz*(d2wp_dI5dI6 &
      *dI5_deyz*deyz_depsyz + d2wp_dI62*dI6_deyz*deyz_depsyz)) + dw_dwp*( &
      dI5_deyz*deyz_depsyz*dwp_dI5 + dI6_deyz*deyz_depsyz*dwp_dI6)*(d2phi &
      _dvdw*dI5_deyz*deyz_depsyz*dv_dvp*dvp_dI5 + d2phi_dw2*dw_dwp*( &
      dI5_deyz*deyz_depsyz*dwp_dI5 + dI6_deyz*deyz_depsyz*dwp_dI6))

end function

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

d2phi_depsyzdepszx = dI5_deyz*deyz_depsyz*dv_dvp*dvp_dI5*(d2phi_dv2*dI5_dezx* &
      dezx_depszx*dv_dvp*dvp_dI5 + d2phi_dvdw*dw_dwp*(dI5_dezx*dezx_depszx* &
      dwp_dI5 + dI6_dezx*dezx_depszx*dwp_dI6)) + dw_dwp*dphi_dw*( &
      d2I6_deyzdezx*deyz_depsyz*dezx_depszx*dwp_dI6 + dI5_deyz*deyz_depsyz*( &
      d2wp_dI52*dI5_dezx*dezx_depszx + d2wp_dI5dI6*dI6_dezx*dezx_depszx) + &
      dI6_deyz*deyz_depsyz*(d2wp_dI5dI6*dI5_dezx*dezx_depszx + d2wp_dI62* &
      dI6_dezx*dezx_depszx)) + dw_dwp*(dI5_deyz*deyz_depsyz*dwp_dI5 + &
      dI6_deyz*deyz_depsyz*dwp_dI6)*(d2phi_dvdw*dI5_dezx*dezx_depszx*dv_dvp* &
      dvp_dI5 + d2phi_dw2*dw_dwp*(dI5_dezx*dezx_depszx*dwp_dI5 + dI6_dezx* &
      dezx_depszx*dwp_dI6))

end function

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

d2phi_depsyzdepszz = dI5_deyz*deyz_depsyz*dv_dvp*dvp_dI5*(d2phi_dv2*dv_dvp*dvp_dI5 &
      *(dI5_dexx*dexx_depszz + dI5_deyy*deyy_depszz + dI5_dezz*dezz_depszz) + &
      d2phi_dvdw*dw_dwp*(dwp_dI5*(dI5_dexx*dexx_depszz + dI5_deyy*deyy_depszz &
      + dI5_dezz*dezz_depszz) + dwp_dI6*(dI6_dexx*dexx_depszz + dI6_deyy* &
      deyy_depszz + dI6_dezz*dezz_depszz))) + dw_dwp*dphi_dw*(dI5_deyz*deyz_d &
      epsyz*(d2wp_dI52*(dI5_dexx*dexx_depszz + dI5_deyy*deyy_depszz + &
      dI5_dezz*dezz_depszz) + d2wp_dI5dI6*(dI6_dexx*dexx_depszz + dI6_deyy* &
      deyy_depszz + dI6_dezz*dezz_depszz)) + dI6_deyz*deyz_depsyz*( &
      d2wp_dI5dI6*(dI5_dexx*dexx_depszz + dI5_deyy*deyy_depszz + dI5_dezz* &
      dezz_depszz) + d2wp_dI62*(dI6_dexx*dexx_depszz + dI6_deyy*deyy_depszz + &
      dI6_dezz*dezz_depszz)) + deyz_depsyz*dwp_dI6*(d2I6_deyydeyz*deyy_depszz &
      + d2I6_deyzdezz*dezz_depszz)) + dw_dwp*(dI5_deyz*deyz_depsyz*dwp_dI5 &
      + dI6_deyz*deyz_depsyz*dwp_dI6)*(d2phi_dvdw*dv_dvp*dvp_dI5*(dI5_dexx* &
      dexx_depszz + dI5_deyy*deyy_depszz + dI5_dezz*dezz_depszz) + d2phi_dw2* &
      dw_dwp*(dwp_dI5*(dI5_dexx*dexx_depszz + dI5_deyy*deyy_depszz + &
      dI5_dezz*dezz_depszz) + dwp_dI6*(dI6_dexx*dexx_depszz + dI6_deyy* &
      deyy_depszz + dI6_dezz*dezz_depszz)))

end function

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

dphi_depszx = dI5_dezx*dezx_depszx*dv_dvp*dvp_dI5*dphi_dv + dw_dwp*dphi_dw*( &
      dI5_dezx*dezx_depszx*dwp_dI5 + dI6_dezx*dezx_depszx*dwp_dI6)

end function

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

d2phi_depszx2 = dI5_dezx*dezx_depszx*dv_dvp*dvp_dI5*(d2phi_dv2*dI5_dezx*dezx_deps &
      zx*dv_dvp*dvp_dI5 + d2phi_dvdw*dw_dwp*(dI5_dezx*dezx_depszx*dwp_dI5 + &
      dI6_dezx*dezx_depszx*dwp_dI6)) + dw_dwp*dphi_dw*(d2I6_dezx2*dezx_depszx &
      **2*dwp_dI6 + dI5_dezx*dezx_depszx*(d2wp_dI52*dI5_dezx*dezx_depszx + &
      d2wp_dI5dI6*dI6_dezx*dezx_depszx) + dI6_dezx*dezx_depszx*(d2wp_dI5dI6 &
      *dI5_dezx*dezx_depszx + d2wp_dI62*dI6_dezx*dezx_depszx)) + dw_dwp*( &
      dI5_dezx*dezx_depszx*dwp_dI5 + dI6_dezx*dezx_depszx*dwp_dI6)*(d2phi &
      _dvdw*dI5_dezx*dezx_depszx*dv_dvp*dvp_dI5 + d2phi_dw2*dw_dwp*( &
      dI5_dezx*dezx_depszx*dwp_dI5 + dI6_dezx*dezx_depszx*dwp_dI6))

end function

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

d2phi_depszxdepszz = dI5_dezx*dezx_depszx*dv_dvp*dvp_dI5*(d2phi_dv2*dv_dvp*dvp_dI5 &
      *(dI5_dexx*dexx_depszz + dI5_deyy*deyy_depszz + dI5_dezz*dezz_depszz) + &
      d2phi_dvdw*dw_dwp*(dwp_dI5*(dI5_dexx*dexx_depszz + dI5_deyy*deyy_depszz &
      + dI5_dezz*dezz_depszz) + dwp_dI6*(dI6_dexx*dexx_depszz + dI6_deyy* &
      deyy_depszz + dI6_dezz*dezz_depszz))) + dw_dwp*dphi_dw*(dI5_dezx*dezx_d &
      epszx*(d2wp_dI52*(dI5_dexx*dexx_depszz + dI5_deyy*deyy_depszz + &
      dI5_dezz*dezz_depszz) + d2wp_dI5dI6*(dI6_dexx*dexx_depszz + dI6_deyy* &
      deyy_depszz + dI6_dezz*dezz_depszz)) + dI6_dezx*dezx_depszx*( &
      d2wp_dI5dI6*(dI5_dexx*dexx_depszz + dI5_deyy*deyy_depszz + dI5_dezz* &
      dezz_depszz) + d2wp_dI62*(dI6_dexx*dexx_depszz + dI6_deyy*deyy_depszz + &
      dI6_dezz*dezz_depszz)) + dezx_depszx*dwp_dI6*(d2I6_dexxdezx*dexx_depszz &
      + d2I6_dezxdezz*dezz_depszz)) + dw_dwp*(dI5_dezx*dezx_depszx*dwp_dI5 &
      + dI6_dezx*dezx_depszx*dwp_dI6)*(d2phi_dvdw*dv_dvp*dvp_dI5*(dI5_dexx* &
      dexx_depszz + dI5_deyy*deyy_depszz + dI5_dezz*dezz_depszz) + d2phi_dw2* &
      dw_dwp*(dwp_dI5*(dI5_dexx*dexx_depszz + dI5_deyy*deyy_depszz + &
      dI5_dezz*dezz_depszz) + dwp_dI6*(dI6_dexx*dexx_depszz + dI6_deyy* &
      deyy_depszz + dI6_dezz*dezz_depszz)))

end function

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

dphi_depszz = dv_dvp*dvp_dI5*dphi_dv*(dI5_dexx*dexx_depszz + dI5_deyy*deyy_depszz &
      + dI5_dezz*dezz_depszz) + dw_dwp*dphi_dw*(dwp_dI5*(dI5_dexx*dexx_depszz &
      + dI5_deyy*deyy_depszz + dI5_dezz*dezz_depszz) + dwp_dI6*(dI6_dexx* &
      dexx_depszz + dI6_deyy*deyy_depszz + dI6_dezz*dezz_depszz))

end function

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

d2phi_depszz2 = dv_dvp*dvp_dI5*(d2phi_dv2*dv_dvp*dvp_dI5*(dI5_dexx*dexx_depszz + &
      dI5_deyy*deyy_depszz + dI5_dezz*dezz_depszz) + d2phi_dvdw*dw_dwp*( &
      dwp_dI5*(dI5_dexx*dexx_depszz + dI5_deyy*deyy_depszz + dI5_dezz* &
      dezz_depszz) + dwp_dI6*(dI6_dexx*dexx_depszz + dI6_deyy*deyy_depszz + &
      dI6_dezz*dezz_depszz)))*(dI5_dexx*dexx_depszz + dI5_deyy*deyy_depszz + &
      dI5_dezz*dezz_depszz) + dw_dwp*dphi_dw*(dwp_dI6*(d2I6_dexx2*dexx_depszz &
      **2 + d2I6_deyy2*deyy_depszz**2 + d2I6_dezz2*dezz_depszz**2) + ( &
      d2wp_dI52*(dI5_dexx*dexx_depszz + dI5_deyy*deyy_depszz + dI5_dezz* &
      dezz_depszz) + d2wp_dI5dI6*(dI6_dexx*dexx_depszz + dI6_deyy*deyy_depszz &
      + dI6_dezz*dezz_depszz))*(dI5_dexx*dexx_depszz + dI5_deyy*deyy_depszz + &
      dI5_dezz*dezz_depszz) + (d2wp_dI5dI6*(dI5_dexx*dexx_depszz + dI5_deyy &
      *deyy_depszz + dI5_dezz*dezz_depszz) + d2wp_dI62*(dI6_dexx*dexx_depszz &
      + dI6_deyy*deyy_depszz + dI6_dezz*dezz_depszz))*(dI6_dexx*dexx_depszz + &
      dI6_deyy*deyy_depszz + dI6_dezz*dezz_depszz)) + dw_dwp*(dwp_dI5*( &
      dI5_dexx*dexx_depszz + dI5_deyy*deyy_depszz + dI5_dezz*dezz_depszz) + &
      dwp_dI6*(dI6_dexx*dexx_depszz + dI6_deyy*deyy_depszz + dI6_dezz* &
      dezz_depszz))*(d2phi_dvdw*dv_dvp*dvp_dI5*(dI5_dexx*dexx_depszz + &
      dI5_deyy*deyy_depszz + dI5_dezz*dezz_depszz) + d2phi_dw2*dw_dwp*( &
      dwp_dI5*(dI5_dexx*dexx_depszz + dI5_deyy*deyy_depszz + dI5_dezz* &
      dezz_depszz) + dwp_dI6*(dI6_dexx*dexx_depszz + dI6_deyy*deyy_depszz + &
      dI6_dezz*dezz_depszz)))

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

I5 = Bx**2*exx + 2*Bx*By*exy + By**2*eyy + Bz**2*ezz + 2*Bz*(Bx*ezx + By &
      *eyz)

end function

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

I6 = Bx**2*(exx**2 + exy**2 + ezx**2) + 2*Bx*By*(exx*exy + exy*eyy + eyz &
      *ezx) + By**2*(exy**2 + eyy**2 + eyz**2) + Bz**2*(eyz**2 + ezx**2 &
      + ezz**2) + 2*Bz*(Bx*(exx*ezx + exy*eyz + ezx*ezz) + By*(exy*ezx &
      + eyy*eyz + eyz*ezz))

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

REAL*8 function w(w0, wp)
implicit none
REAL*8, intent(in) :: w0
REAL*8, intent(in) :: wp

w = wp/w0

end function

REAL*8 function wp(I4, I5, I6)
implicit none
REAL*8, intent(in) :: I4
REAL*8, intent(in) :: I5
REAL*8, intent(in) :: I6

wp = sqrt(I4*I6 - I5**2)/I4

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
