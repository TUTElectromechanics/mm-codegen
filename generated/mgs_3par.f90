!******************************************************************************
!*              Code generated with mgs-galfenol-codegen stage2               *
!*                                                                            *
!* See https://github.com/TUTElectromechanics/mm-codegen for more information *
!*                                                                            *
!*                 This file is part of 'elmer-mgs-galfenol'                  *
!******************************************************************************

REAL(KIND=dp) function dexx_depsxx_public()
use types
implicit none

dexx_depsxx_public = dexx_depsxx()

end function

REAL(KIND=dp) function dexx_depsyy_public()
use types
implicit none

dexx_depsyy_public = dexx_depsyy()

end function

REAL(KIND=dp) function dexx_depszz_public()
use types
implicit none

dexx_depszz_public = dexx_depszz()

end function

REAL(KIND=dp) function dexy_depsxy_public()
use types
implicit none

dexy_depsxy_public = dexy_depsxy()

end function

REAL(KIND=dp) function deyy_depsxx_public()
use types
implicit none

deyy_depsxx_public = deyy_depsxx()

end function

REAL(KIND=dp) function deyy_depsyy_public()
use types
implicit none

deyy_depsyy_public = deyy_depsyy()

end function

REAL(KIND=dp) function deyy_depszz_public()
use types
implicit none

deyy_depszz_public = deyy_depszz()

end function

REAL(KIND=dp) function deyz_depsyz_public()
use types
implicit none

deyz_depsyz_public = deyz_depsyz()

end function

REAL(KIND=dp) function dezx_depszx_public()
use types
implicit none

dezx_depszx_public = dezx_depszx()

end function

REAL(KIND=dp) function dezz_depsxx_public()
use types
implicit none

dezz_depsxx_public = dezz_depsxx()

end function

REAL(KIND=dp) function dezz_depsyy_public()
use types
implicit none

dezz_depsyy_public = dezz_depsyy()

end function

REAL(KIND=dp) function dezz_depszz_public()
use types
implicit none

dezz_depszz_public = dezz_depszz()

end function

REAL(KIND=dp) function dI4_dBx_public(Bx)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bx

dI4_dBx_public = dI4_dBx(Bx)

end function

REAL(KIND=dp) function d2I4_dBx2_public()
use types
implicit none

d2I4_dBx2_public = d2I4_dBx2()

end function

REAL(KIND=dp) function dI4_dBy_public(By)
use types
implicit none
REAL(KIND=dp), intent(in) :: By

dI4_dBy_public = dI4_dBy(By)

end function

REAL(KIND=dp) function d2I4_dBy2_public()
use types
implicit none

d2I4_dBy2_public = d2I4_dBy2()

end function

REAL(KIND=dp) function dI4_dBz_public(Bz)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bz

dI4_dBz_public = dI4_dBz(Bz)

end function

REAL(KIND=dp) function d2I4_dBz2_public()
use types
implicit none

d2I4_dBz2_public = d2I4_dBz2()

end function

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
REAL(KIND=dp) exx_
REAL(KIND=dp) exy_
REAL(KIND=dp) ezx_

exx_ = exx(epsxx, epsyy, epszz)
exy_ = exy(epsxy)
ezx_ = ezx(epszx)

dI5_dBx_public = dI5_dBx(Bx, By, Bz, exx_, exy_, ezx_)

end function

REAL(KIND=dp) function d2I5_dBx2_public(epsxx, epsyy, epszz)
use types
implicit none
REAL(KIND=dp), intent(in) :: epsxx
REAL(KIND=dp), intent(in) :: epsyy
REAL(KIND=dp), intent(in) :: epszz
REAL(KIND=dp) exx_

exx_ = exx(epsxx, epsyy, epszz)

d2I5_dBx2_public = d2I5_dBx2(exx_)

end function

REAL(KIND=dp) function d2I5_dBxdBy_public(epsxy)
use types
implicit none
REAL(KIND=dp), intent(in) :: epsxy
REAL(KIND=dp) exy_

exy_ = exy(epsxy)

d2I5_dBxdBy_public = d2I5_dBxdBy(exy_)

end function

REAL(KIND=dp) function d2I5_dBxdBz_public(epszx)
use types
implicit none
REAL(KIND=dp), intent(in) :: epszx
REAL(KIND=dp) ezx_

ezx_ = ezx(epszx)

d2I5_dBxdBz_public = d2I5_dBxdBz(ezx_)

end function

REAL(KIND=dp) function d2I5_dBxdexx_public(Bx)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bx

d2I5_dBxdexx_public = d2I5_dBxdexx(Bx)

end function

REAL(KIND=dp) function d2I5_dBxdexy_public(By)
use types
implicit none
REAL(KIND=dp), intent(in) :: By

d2I5_dBxdexy_public = d2I5_dBxdexy(By)

end function

REAL(KIND=dp) function d2I5_dBxdezx_public(Bz)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bz

d2I5_dBxdezx_public = d2I5_dBxdezx(Bz)

end function

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
REAL(KIND=dp) exy_
REAL(KIND=dp) eyy_
REAL(KIND=dp) eyz_

exy_ = exy(epsxy)
eyy_ = eyy(epsxx, epsyy, epszz)
eyz_ = eyz(epsyz)

dI5_dBy_public = dI5_dBy(Bx, By, Bz, exy_, eyy_, eyz_)

end function

REAL(KIND=dp) function d2I5_dBy2_public(epsxx, epsyy, epszz)
use types
implicit none
REAL(KIND=dp), intent(in) :: epsxx
REAL(KIND=dp), intent(in) :: epsyy
REAL(KIND=dp), intent(in) :: epszz
REAL(KIND=dp) eyy_

eyy_ = eyy(epsxx, epsyy, epszz)

d2I5_dBy2_public = d2I5_dBy2(eyy_)

end function

REAL(KIND=dp) function d2I5_dBydBz_public(epsyz)
use types
implicit none
REAL(KIND=dp), intent(in) :: epsyz
REAL(KIND=dp) eyz_

eyz_ = eyz(epsyz)

d2I5_dBydBz_public = d2I5_dBydBz(eyz_)

end function

REAL(KIND=dp) function d2I5_dBydexy_public(Bx)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bx

d2I5_dBydexy_public = d2I5_dBydexy(Bx)

end function

REAL(KIND=dp) function d2I5_dBydeyy_public(By)
use types
implicit none
REAL(KIND=dp), intent(in) :: By

d2I5_dBydeyy_public = d2I5_dBydeyy(By)

end function

REAL(KIND=dp) function d2I5_dBydeyz_public(Bz)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bz

d2I5_dBydeyz_public = d2I5_dBydeyz(Bz)

end function

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
REAL(KIND=dp) eyz_
REAL(KIND=dp) ezx_
REAL(KIND=dp) ezz_

eyz_ = eyz(epsyz)
ezx_ = ezx(epszx)
ezz_ = ezz(epsxx, epsyy, epszz)

dI5_dBz_public = dI5_dBz(Bx, By, Bz, eyz_, ezx_, ezz_)

end function

REAL(KIND=dp) function d2I5_dBz2_public(epsxx, epsyy, epszz)
use types
implicit none
REAL(KIND=dp), intent(in) :: epsxx
REAL(KIND=dp), intent(in) :: epsyy
REAL(KIND=dp), intent(in) :: epszz
REAL(KIND=dp) ezz_

ezz_ = ezz(epsxx, epsyy, epszz)

d2I5_dBz2_public = d2I5_dBz2(ezz_)

end function

REAL(KIND=dp) function d2I5_dBzdeyz_public(By)
use types
implicit none
REAL(KIND=dp), intent(in) :: By

d2I5_dBzdeyz_public = d2I5_dBzdeyz(By)

end function

REAL(KIND=dp) function d2I5_dBzdezx_public(Bx)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bx

d2I5_dBzdezx_public = d2I5_dBzdezx(Bx)

end function

REAL(KIND=dp) function d2I5_dBzdezz_public(Bz)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bz

d2I5_dBzdezz_public = d2I5_dBzdezz(Bz)

end function

REAL(KIND=dp) function dI5_dexx_public(Bx)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bx

dI5_dexx_public = dI5_dexx(Bx)

end function

REAL(KIND=dp) function dI5_dexy_public(Bx, By)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bx
REAL(KIND=dp), intent(in) :: By

dI5_dexy_public = dI5_dexy(Bx, By)

end function

REAL(KIND=dp) function dI5_deyy_public(By)
use types
implicit none
REAL(KIND=dp), intent(in) :: By

dI5_deyy_public = dI5_deyy(By)

end function

REAL(KIND=dp) function dI5_deyz_public(By, Bz)
use types
implicit none
REAL(KIND=dp), intent(in) :: By
REAL(KIND=dp), intent(in) :: Bz

dI5_deyz_public = dI5_deyz(By, Bz)

end function

REAL(KIND=dp) function dI5_dezx_public(Bx, Bz)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bx
REAL(KIND=dp), intent(in) :: Bz

dI5_dezx_public = dI5_dezx(Bx, Bz)

end function

REAL(KIND=dp) function dI5_dezz_public(Bz)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bz

dI5_dezz_public = dI5_dezz(Bz)

end function

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
REAL(KIND=dp) exx_
REAL(KIND=dp) exy_
REAL(KIND=dp) eyy_
REAL(KIND=dp) eyz_
REAL(KIND=dp) ezx_
REAL(KIND=dp) ezz_

exx_ = exx(epsxx, epsyy, epszz)
exy_ = exy(epsxy)
eyy_ = eyy(epsxx, epsyy, epszz)
eyz_ = eyz(epsyz)
ezx_ = ezx(epszx)
ezz_ = ezz(epsxx, epsyy, epszz)

dI6_dBx_public = dI6_dBx(Bx, By, Bz, exx_, exy_, eyy_, eyz_, ezx_, ezz_)

end function

REAL(KIND=dp) function d2I6_dBx2_public(epsxx, epsxy, epsyy, epszx, epszz)
use types
implicit none
REAL(KIND=dp), intent(in) :: epsxx
REAL(KIND=dp), intent(in) :: epsxy
REAL(KIND=dp), intent(in) :: epsyy
REAL(KIND=dp), intent(in) :: epszx
REAL(KIND=dp), intent(in) :: epszz
REAL(KIND=dp) exx_
REAL(KIND=dp) exy_
REAL(KIND=dp) ezx_

exx_ = exx(epsxx, epsyy, epszz)
exy_ = exy(epsxy)
ezx_ = ezx(epszx)

d2I6_dBx2_public = d2I6_dBx2(exx_, exy_, ezx_)

end function

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
REAL(KIND=dp) exx_
REAL(KIND=dp) exy_
REAL(KIND=dp) eyy_
REAL(KIND=dp) eyz_
REAL(KIND=dp) ezx_

exx_ = exx(epsxx, epsyy, epszz)
exy_ = exy(epsxy)
eyy_ = eyy(epsxx, epsyy, epszz)
eyz_ = eyz(epsyz)
ezx_ = ezx(epszx)

d2I6_dBxdBy_public = d2I6_dBxdBy(exx_, exy_, eyy_, eyz_, ezx_)

end function

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
REAL(KIND=dp) exx_
REAL(KIND=dp) exy_
REAL(KIND=dp) eyz_
REAL(KIND=dp) ezx_
REAL(KIND=dp) ezz_

exx_ = exx(epsxx, epsyy, epszz)
exy_ = exy(epsxy)
eyz_ = eyz(epsyz)
ezx_ = ezx(epszx)
ezz_ = ezz(epsxx, epsyy, epszz)

d2I6_dBxdBz_public = d2I6_dBxdBz(exx_, exy_, eyz_, ezx_, ezz_)

end function

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
REAL(KIND=dp) exx_
REAL(KIND=dp) exy_
REAL(KIND=dp) ezx_

exx_ = exx(epsxx, epsyy, epszz)
exy_ = exy(epsxy)
ezx_ = ezx(epszx)

d2I6_dBxdexx_public = d2I6_dBxdexx(Bx, By, Bz, exx_, exy_, ezx_)

end function

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
REAL(KIND=dp) exx_
REAL(KIND=dp) exy_
REAL(KIND=dp) eyy_
REAL(KIND=dp) eyz_

exx_ = exx(epsxx, epsyy, epszz)
exy_ = exy(epsxy)
eyy_ = eyy(epsxx, epsyy, epszz)
eyz_ = eyz(epsyz)

d2I6_dBxdexy_public = d2I6_dBxdexy(Bx, By, Bz, exx_, exy_, eyy_, eyz_)

end function

REAL(KIND=dp) function d2I6_dBxdeyy_public(By, epsxy)
use types
implicit none
REAL(KIND=dp), intent(in) :: By
REAL(KIND=dp), intent(in) :: epsxy
REAL(KIND=dp) exy_

exy_ = exy(epsxy)

d2I6_dBxdeyy_public = d2I6_dBxdeyy(By, exy_)

end function

REAL(KIND=dp) function d2I6_dBxdeyz_public(By, Bz, epsxy, epszx)
use types
implicit none
REAL(KIND=dp), intent(in) :: By
REAL(KIND=dp), intent(in) :: Bz
REAL(KIND=dp), intent(in) :: epsxy
REAL(KIND=dp), intent(in) :: epszx
REAL(KIND=dp) exy_
REAL(KIND=dp) ezx_

exy_ = exy(epsxy)
ezx_ = ezx(epszx)

d2I6_dBxdeyz_public = d2I6_dBxdeyz(By, Bz, exy_, ezx_)

end function

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
REAL(KIND=dp) exx_
REAL(KIND=dp) eyz_
REAL(KIND=dp) ezx_
REAL(KIND=dp) ezz_

exx_ = exx(epsxx, epsyy, epszz)
eyz_ = eyz(epsyz)
ezx_ = ezx(epszx)
ezz_ = ezz(epsxx, epsyy, epszz)

d2I6_dBxdezx_public = d2I6_dBxdezx(Bx, By, Bz, exx_, eyz_, ezx_, ezz_)

end function

REAL(KIND=dp) function d2I6_dBxdezz_public(Bz, epszx)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bz
REAL(KIND=dp), intent(in) :: epszx
REAL(KIND=dp) ezx_

ezx_ = ezx(epszx)

d2I6_dBxdezz_public = d2I6_dBxdezz(Bz, ezx_)

end function

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
REAL(KIND=dp) exx_
REAL(KIND=dp) exy_
REAL(KIND=dp) eyy_
REAL(KIND=dp) eyz_
REAL(KIND=dp) ezx_
REAL(KIND=dp) ezz_

exx_ = exx(epsxx, epsyy, epszz)
exy_ = exy(epsxy)
eyy_ = eyy(epsxx, epsyy, epszz)
eyz_ = eyz(epsyz)
ezx_ = ezx(epszx)
ezz_ = ezz(epsxx, epsyy, epszz)

dI6_dBy_public = dI6_dBy(Bx, By, Bz, exx_, exy_, eyy_, eyz_, ezx_, ezz_)

end function

REAL(KIND=dp) function d2I6_dBy2_public(epsxx, epsxy, epsyy, epsyz, epszz)
use types
implicit none
REAL(KIND=dp), intent(in) :: epsxx
REAL(KIND=dp), intent(in) :: epsxy
REAL(KIND=dp), intent(in) :: epsyy
REAL(KIND=dp), intent(in) :: epsyz
REAL(KIND=dp), intent(in) :: epszz
REAL(KIND=dp) exy_
REAL(KIND=dp) eyy_
REAL(KIND=dp) eyz_

exy_ = exy(epsxy)
eyy_ = eyy(epsxx, epsyy, epszz)
eyz_ = eyz(epsyz)

d2I6_dBy2_public = d2I6_dBy2(exy_, eyy_, eyz_)

end function

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
REAL(KIND=dp) exy_
REAL(KIND=dp) eyy_
REAL(KIND=dp) eyz_
REAL(KIND=dp) ezx_
REAL(KIND=dp) ezz_

exy_ = exy(epsxy)
eyy_ = eyy(epsxx, epsyy, epszz)
eyz_ = eyz(epsyz)
ezx_ = ezx(epszx)
ezz_ = ezz(epsxx, epsyy, epszz)

d2I6_dBydBz_public = d2I6_dBydBz(exy_, eyy_, eyz_, ezx_, ezz_)

end function

REAL(KIND=dp) function d2I6_dBydexx_public(Bx, epsxy)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bx
REAL(KIND=dp), intent(in) :: epsxy
REAL(KIND=dp) exy_

exy_ = exy(epsxy)

d2I6_dBydexx_public = d2I6_dBydexx(Bx, exy_)

end function

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
REAL(KIND=dp) exx_
REAL(KIND=dp) exy_
REAL(KIND=dp) eyy_
REAL(KIND=dp) ezx_

exx_ = exx(epsxx, epsyy, epszz)
exy_ = exy(epsxy)
eyy_ = eyy(epsxx, epsyy, epszz)
ezx_ = ezx(epszx)

d2I6_dBydexy_public = d2I6_dBydexy(Bx, By, Bz, exx_, exy_, eyy_, ezx_)

end function

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
REAL(KIND=dp) exy_
REAL(KIND=dp) eyy_
REAL(KIND=dp) eyz_

exy_ = exy(epsxy)
eyy_ = eyy(epsxx, epsyy, epszz)
eyz_ = eyz(epsyz)

d2I6_dBydeyy_public = d2I6_dBydeyy(Bx, By, Bz, exy_, eyy_, eyz_)

end function

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
REAL(KIND=dp) eyy_
REAL(KIND=dp) eyz_
REAL(KIND=dp) ezx_
REAL(KIND=dp) ezz_

eyy_ = eyy(epsxx, epsyy, epszz)
eyz_ = eyz(epsyz)
ezx_ = ezx(epszx)
ezz_ = ezz(epsxx, epsyy, epszz)

d2I6_dBydeyz_public = d2I6_dBydeyz(Bx, By, Bz, eyy_, eyz_, ezx_, ezz_)

end function

REAL(KIND=dp) function d2I6_dBydezx_public(Bx, Bz, epsxy, epsyz)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bx
REAL(KIND=dp), intent(in) :: Bz
REAL(KIND=dp), intent(in) :: epsxy
REAL(KIND=dp), intent(in) :: epsyz
REAL(KIND=dp) exy_
REAL(KIND=dp) eyz_

exy_ = exy(epsxy)
eyz_ = eyz(epsyz)

d2I6_dBydezx_public = d2I6_dBydezx(Bx, Bz, exy_, eyz_)

end function

REAL(KIND=dp) function d2I6_dBydezz_public(Bz, epsyz)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bz
REAL(KIND=dp), intent(in) :: epsyz
REAL(KIND=dp) eyz_

eyz_ = eyz(epsyz)

d2I6_dBydezz_public = d2I6_dBydezz(Bz, eyz_)

end function

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
REAL(KIND=dp) exx_
REAL(KIND=dp) exy_
REAL(KIND=dp) eyy_
REAL(KIND=dp) eyz_
REAL(KIND=dp) ezx_
REAL(KIND=dp) ezz_

exx_ = exx(epsxx, epsyy, epszz)
exy_ = exy(epsxy)
eyy_ = eyy(epsxx, epsyy, epszz)
eyz_ = eyz(epsyz)
ezx_ = ezx(epszx)
ezz_ = ezz(epsxx, epsyy, epszz)

dI6_dBz_public = dI6_dBz(Bx, By, Bz, exx_, exy_, eyy_, eyz_, ezx_, ezz_)

end function

REAL(KIND=dp) function d2I6_dBz2_public(epsxx, epsyy, epsyz, epszx, epszz)
use types
implicit none
REAL(KIND=dp), intent(in) :: epsxx
REAL(KIND=dp), intent(in) :: epsyy
REAL(KIND=dp), intent(in) :: epsyz
REAL(KIND=dp), intent(in) :: epszx
REAL(KIND=dp), intent(in) :: epszz
REAL(KIND=dp) eyz_
REAL(KIND=dp) ezx_
REAL(KIND=dp) ezz_

eyz_ = eyz(epsyz)
ezx_ = ezx(epszx)
ezz_ = ezz(epsxx, epsyy, epszz)

d2I6_dBz2_public = d2I6_dBz2(eyz_, ezx_, ezz_)

end function

REAL(KIND=dp) function d2I6_dBzdexx_public(Bx, epszx)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bx
REAL(KIND=dp), intent(in) :: epszx
REAL(KIND=dp) ezx_

ezx_ = ezx(epszx)

d2I6_dBzdexx_public = d2I6_dBzdexx(Bx, ezx_)

end function

REAL(KIND=dp) function d2I6_dBzdexy_public(Bx, By, epsyz, epszx)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bx
REAL(KIND=dp), intent(in) :: By
REAL(KIND=dp), intent(in) :: epsyz
REAL(KIND=dp), intent(in) :: epszx
REAL(KIND=dp) eyz_
REAL(KIND=dp) ezx_

eyz_ = eyz(epsyz)
ezx_ = ezx(epszx)

d2I6_dBzdexy_public = d2I6_dBzdexy(Bx, By, eyz_, ezx_)

end function

REAL(KIND=dp) function d2I6_dBzdeyy_public(By, epsyz)
use types
implicit none
REAL(KIND=dp), intent(in) :: By
REAL(KIND=dp), intent(in) :: epsyz
REAL(KIND=dp) eyz_

eyz_ = eyz(epsyz)

d2I6_dBzdeyy_public = d2I6_dBzdeyy(By, eyz_)

end function

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
REAL(KIND=dp) exy_
REAL(KIND=dp) eyy_
REAL(KIND=dp) eyz_
REAL(KIND=dp) ezz_

exy_ = exy(epsxy)
eyy_ = eyy(epsxx, epsyy, epszz)
eyz_ = eyz(epsyz)
ezz_ = ezz(epsxx, epsyy, epszz)

d2I6_dBzdeyz_public = d2I6_dBzdeyz(Bx, By, Bz, exy_, eyy_, eyz_, ezz_)

end function

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
REAL(KIND=dp) exx_
REAL(KIND=dp) exy_
REAL(KIND=dp) ezx_
REAL(KIND=dp) ezz_

exx_ = exx(epsxx, epsyy, epszz)
exy_ = exy(epsxy)
ezx_ = ezx(epszx)
ezz_ = ezz(epsxx, epsyy, epszz)

d2I6_dBzdezx_public = d2I6_dBzdezx(Bx, By, Bz, exx_, exy_, ezx_, ezz_)

end function

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
REAL(KIND=dp) eyz_
REAL(KIND=dp) ezx_
REAL(KIND=dp) ezz_

eyz_ = eyz(epsyz)
ezx_ = ezx(epszx)
ezz_ = ezz(epsxx, epsyy, epszz)

d2I6_dBzdezz_public = d2I6_dBzdezz(Bx, By, Bz, eyz_, ezx_, ezz_)

end function

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
REAL(KIND=dp) exx_
REAL(KIND=dp) exy_
REAL(KIND=dp) ezx_

exx_ = exx(epsxx, epsyy, epszz)
exy_ = exy(epsxy)
ezx_ = ezx(epszx)

dI6_dexx_public = dI6_dexx(Bx, By, Bz, exx_, exy_, ezx_)

end function

REAL(KIND=dp) function d2I6_dexx2_public(Bx)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bx

d2I6_dexx2_public = d2I6_dexx2(Bx)

end function

REAL(KIND=dp) function d2I6_dexxdexy_public(Bx, By)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bx
REAL(KIND=dp), intent(in) :: By

d2I6_dexxdexy_public = d2I6_dexxdexy(Bx, By)

end function

REAL(KIND=dp) function d2I6_dexxdezx_public(Bx, Bz)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bx
REAL(KIND=dp), intent(in) :: Bz

d2I6_dexxdezx_public = d2I6_dexxdezx(Bx, Bz)

end function

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
REAL(KIND=dp) exx_
REAL(KIND=dp) exy_
REAL(KIND=dp) eyy_
REAL(KIND=dp) eyz_
REAL(KIND=dp) ezx_

exx_ = exx(epsxx, epsyy, epszz)
exy_ = exy(epsxy)
eyy_ = eyy(epsxx, epsyy, epszz)
eyz_ = eyz(epsyz)
ezx_ = ezx(epszx)

dI6_dexy_public = dI6_dexy(Bx, By, Bz, exx_, exy_, eyy_, eyz_, ezx_)

end function

REAL(KIND=dp) function d2I6_dexy2_public(Bx, By)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bx
REAL(KIND=dp), intent(in) :: By

d2I6_dexy2_public = d2I6_dexy2(Bx, By)

end function

REAL(KIND=dp) function d2I6_dexydeyy_public(Bx, By)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bx
REAL(KIND=dp), intent(in) :: By

d2I6_dexydeyy_public = d2I6_dexydeyy(Bx, By)

end function

REAL(KIND=dp) function d2I6_dexydeyz_public(Bx, Bz)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bx
REAL(KIND=dp), intent(in) :: Bz

d2I6_dexydeyz_public = d2I6_dexydeyz(Bx, Bz)

end function

REAL(KIND=dp) function d2I6_dexydezx_public(By, Bz)
use types
implicit none
REAL(KIND=dp), intent(in) :: By
REAL(KIND=dp), intent(in) :: Bz

d2I6_dexydezx_public = d2I6_dexydezx(By, Bz)

end function

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
REAL(KIND=dp) exy_
REAL(KIND=dp) eyy_
REAL(KIND=dp) eyz_

exy_ = exy(epsxy)
eyy_ = eyy(epsxx, epsyy, epszz)
eyz_ = eyz(epsyz)

dI6_deyy_public = dI6_deyy(Bx, By, Bz, exy_, eyy_, eyz_)

end function

REAL(KIND=dp) function d2I6_deyy2_public(By)
use types
implicit none
REAL(KIND=dp), intent(in) :: By

d2I6_deyy2_public = d2I6_deyy2(By)

end function

REAL(KIND=dp) function d2I6_deyydeyz_public(By, Bz)
use types
implicit none
REAL(KIND=dp), intent(in) :: By
REAL(KIND=dp), intent(in) :: Bz

d2I6_deyydeyz_public = d2I6_deyydeyz(By, Bz)

end function

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
REAL(KIND=dp) exy_
REAL(KIND=dp) eyy_
REAL(KIND=dp) eyz_
REAL(KIND=dp) ezx_
REAL(KIND=dp) ezz_

exy_ = exy(epsxy)
eyy_ = eyy(epsxx, epsyy, epszz)
eyz_ = eyz(epsyz)
ezx_ = ezx(epszx)
ezz_ = ezz(epsxx, epsyy, epszz)

dI6_deyz_public = dI6_deyz(Bx, By, Bz, exy_, eyy_, eyz_, ezx_, ezz_)

end function

REAL(KIND=dp) function d2I6_deyz2_public(By, Bz)
use types
implicit none
REAL(KIND=dp), intent(in) :: By
REAL(KIND=dp), intent(in) :: Bz

d2I6_deyz2_public = d2I6_deyz2(By, Bz)

end function

REAL(KIND=dp) function d2I6_deyzdezx_public(Bx, By)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bx
REAL(KIND=dp), intent(in) :: By

d2I6_deyzdezx_public = d2I6_deyzdezx(Bx, By)

end function

REAL(KIND=dp) function d2I6_deyzdezz_public(By, Bz)
use types
implicit none
REAL(KIND=dp), intent(in) :: By
REAL(KIND=dp), intent(in) :: Bz

d2I6_deyzdezz_public = d2I6_deyzdezz(By, Bz)

end function

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
REAL(KIND=dp) exx_
REAL(KIND=dp) exy_
REAL(KIND=dp) eyz_
REAL(KIND=dp) ezx_
REAL(KIND=dp) ezz_

exx_ = exx(epsxx, epsyy, epszz)
exy_ = exy(epsxy)
eyz_ = eyz(epsyz)
ezx_ = ezx(epszx)
ezz_ = ezz(epsxx, epsyy, epszz)

dI6_dezx_public = dI6_dezx(Bx, By, Bz, exx_, exy_, eyz_, ezx_, ezz_)

end function

REAL(KIND=dp) function d2I6_dezx2_public(Bx, Bz)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bx
REAL(KIND=dp), intent(in) :: Bz

d2I6_dezx2_public = d2I6_dezx2(Bx, Bz)

end function

REAL(KIND=dp) function d2I6_dezxdezz_public(Bx, Bz)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bx
REAL(KIND=dp), intent(in) :: Bz

d2I6_dezxdezz_public = d2I6_dezxdezz(Bx, Bz)

end function

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
REAL(KIND=dp) eyz_
REAL(KIND=dp) ezx_
REAL(KIND=dp) ezz_

eyz_ = eyz(epsyz)
ezx_ = ezx(epszx)
ezz_ = ezz(epsxx, epsyy, epszz)

dI6_dezz_public = dI6_dezz(Bx, By, Bz, eyz_, ezx_, ezz_)

end function

REAL(KIND=dp) function d2I6_dezz2_public(Bz)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bz

d2I6_dezz2_public = d2I6_dezz2(Bz)

end function

REAL(KIND=dp) function du_dup_public(u0)
use types
implicit none
REAL(KIND=dp), intent(in) :: u0

du_dup_public = du_dup(u0)

end function

REAL(KIND=dp) function dup_dI4_public(Bx, By, Bz)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bx
REAL(KIND=dp), intent(in) :: By
REAL(KIND=dp), intent(in) :: Bz
REAL(KIND=dp) I4_

I4_ = I4(Bx, By, Bz)

dup_dI4_public = dup_dI4(I4_)

end function

REAL(KIND=dp) function d2up_dI42_public(Bx, By, Bz)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bx
REAL(KIND=dp), intent(in) :: By
REAL(KIND=dp), intent(in) :: Bz
REAL(KIND=dp) I4_

I4_ = I4(Bx, By, Bz)

d2up_dI42_public = d2up_dI42(I4_)

end function

REAL(KIND=dp) function dv_dvp_public(v0)
use types
implicit none
REAL(KIND=dp), intent(in) :: v0

dv_dvp_public = dv_dvp(v0)

end function

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
REAL(KIND=dp) exx_
REAL(KIND=dp) exy_
REAL(KIND=dp) eyy_
REAL(KIND=dp) eyz_
REAL(KIND=dp) ezx_
REAL(KIND=dp) ezz_
REAL(KIND=dp) I4_
REAL(KIND=dp) I5_

exx_ = exx(epsxx, epsyy, epszz)
exy_ = exy(epsxy)
eyy_ = eyy(epsxx, epsyy, epszz)
eyz_ = eyz(epsyz)
ezx_ = ezx(epszx)
ezz_ = ezz(epsxx, epsyy, epszz)
I4_ = I4(Bx, By, Bz)
I5_ = I5(Bx, By, Bz, exx_, exy_, eyy_, eyz_, ezx_, ezz_)

dvp_dI4_public = dvp_dI4(I4_, I5_)

end function

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
REAL(KIND=dp) exx_
REAL(KIND=dp) exy_
REAL(KIND=dp) eyy_
REAL(KIND=dp) eyz_
REAL(KIND=dp) ezx_
REAL(KIND=dp) ezz_
REAL(KIND=dp) I4_
REAL(KIND=dp) I5_

exx_ = exx(epsxx, epsyy, epszz)
exy_ = exy(epsxy)
eyy_ = eyy(epsxx, epsyy, epszz)
eyz_ = eyz(epsyz)
ezx_ = ezx(epszx)
ezz_ = ezz(epsxx, epsyy, epszz)
I4_ = I4(Bx, By, Bz)
I5_ = I5(Bx, By, Bz, exx_, exy_, eyy_, eyz_, ezx_, ezz_)

d2vp_dI42_public = d2vp_dI42(I4_, I5_)

end function

REAL(KIND=dp) function d2vp_dI4dI5_public(Bx, By, Bz)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bx
REAL(KIND=dp), intent(in) :: By
REAL(KIND=dp), intent(in) :: Bz
REAL(KIND=dp) I4_

I4_ = I4(Bx, By, Bz)

d2vp_dI4dI5_public = d2vp_dI4dI5(I4_)

end function

REAL(KIND=dp) function dvp_dI5_public(Bx, By, Bz)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bx
REAL(KIND=dp), intent(in) :: By
REAL(KIND=dp), intent(in) :: Bz
REAL(KIND=dp) I4_

I4_ = I4(Bx, By, Bz)

dvp_dI5_public = dvp_dI5(I4_)

end function

REAL(KIND=dp) function dw_dwp_public(w0)
use types
implicit none
REAL(KIND=dp), intent(in) :: w0

dw_dwp_public = dw_dwp(w0)

end function

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
REAL(KIND=dp) exx_
REAL(KIND=dp) exy_
REAL(KIND=dp) eyy_
REAL(KIND=dp) eyz_
REAL(KIND=dp) ezx_
REAL(KIND=dp) ezz_
REAL(KIND=dp) I4_
REAL(KIND=dp) I5_
REAL(KIND=dp) I6_

exx_ = exx(epsxx, epsyy, epszz)
exy_ = exy(epsxy)
eyy_ = eyy(epsxx, epsyy, epszz)
eyz_ = eyz(epsyz)
ezx_ = ezx(epszx)
ezz_ = ezz(epsxx, epsyy, epszz)
I4_ = I4(Bx, By, Bz)
I5_ = I5(Bx, By, Bz, exx_, exy_, eyy_, eyz_, ezx_, ezz_)
I6_ = I6(Bx, By, Bz, exx_, exy_, eyy_, eyz_, ezx_, ezz_)

dwp_dI4_public = dwp_dI4(I4_, I5_, I6_)

end function

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
REAL(KIND=dp) exx_
REAL(KIND=dp) exy_
REAL(KIND=dp) eyy_
REAL(KIND=dp) eyz_
REAL(KIND=dp) ezx_
REAL(KIND=dp) ezz_
REAL(KIND=dp) I4_
REAL(KIND=dp) I5_
REAL(KIND=dp) I6_

exx_ = exx(epsxx, epsyy, epszz)
exy_ = exy(epsxy)
eyy_ = eyy(epsxx, epsyy, epszz)
eyz_ = eyz(epsyz)
ezx_ = ezx(epszx)
ezz_ = ezz(epsxx, epsyy, epszz)
I4_ = I4(Bx, By, Bz)
I5_ = I5(Bx, By, Bz, exx_, exy_, eyy_, eyz_, ezx_, ezz_)
I6_ = I6(Bx, By, Bz, exx_, exy_, eyy_, eyz_, ezx_, ezz_)

d2wp_dI42_public = d2wp_dI42(I4_, I5_, I6_)

end function

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
REAL(KIND=dp) exx_
REAL(KIND=dp) exy_
REAL(KIND=dp) eyy_
REAL(KIND=dp) eyz_
REAL(KIND=dp) ezx_
REAL(KIND=dp) ezz_
REAL(KIND=dp) I4_
REAL(KIND=dp) I5_
REAL(KIND=dp) I6_

exx_ = exx(epsxx, epsyy, epszz)
exy_ = exy(epsxy)
eyy_ = eyy(epsxx, epsyy, epszz)
eyz_ = eyz(epsyz)
ezx_ = ezx(epszx)
ezz_ = ezz(epsxx, epsyy, epszz)
I4_ = I4(Bx, By, Bz)
I5_ = I5(Bx, By, Bz, exx_, exy_, eyy_, eyz_, ezx_, ezz_)
I6_ = I6(Bx, By, Bz, exx_, exy_, eyy_, eyz_, ezx_, ezz_)

d2wp_dI4dI5_public = d2wp_dI4dI5(I4_, I5_, I6_)

end function

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
REAL(KIND=dp) exx_
REAL(KIND=dp) exy_
REAL(KIND=dp) eyy_
REAL(KIND=dp) eyz_
REAL(KIND=dp) ezx_
REAL(KIND=dp) ezz_
REAL(KIND=dp) I4_
REAL(KIND=dp) I5_
REAL(KIND=dp) I6_

exx_ = exx(epsxx, epsyy, epszz)
exy_ = exy(epsxy)
eyy_ = eyy(epsxx, epsyy, epszz)
eyz_ = eyz(epsyz)
ezx_ = ezx(epszx)
ezz_ = ezz(epsxx, epsyy, epszz)
I4_ = I4(Bx, By, Bz)
I5_ = I5(Bx, By, Bz, exx_, exy_, eyy_, eyz_, ezx_, ezz_)
I6_ = I6(Bx, By, Bz, exx_, exy_, eyy_, eyz_, ezx_, ezz_)

d2wp_dI4dI6_public = d2wp_dI4dI6(I4_, I5_, I6_)

end function

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
REAL(KIND=dp) exx_
REAL(KIND=dp) exy_
REAL(KIND=dp) eyy_
REAL(KIND=dp) eyz_
REAL(KIND=dp) ezx_
REAL(KIND=dp) ezz_
REAL(KIND=dp) I4_
REAL(KIND=dp) I5_
REAL(KIND=dp) I6_

exx_ = exx(epsxx, epsyy, epszz)
exy_ = exy(epsxy)
eyy_ = eyy(epsxx, epsyy, epszz)
eyz_ = eyz(epsyz)
ezx_ = ezx(epszx)
ezz_ = ezz(epsxx, epsyy, epszz)
I4_ = I4(Bx, By, Bz)
I5_ = I5(Bx, By, Bz, exx_, exy_, eyy_, eyz_, ezx_, ezz_)
I6_ = I6(Bx, By, Bz, exx_, exy_, eyy_, eyz_, ezx_, ezz_)

dwp_dI5_public = dwp_dI5(I4_, I5_, I6_)

end function

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
REAL(KIND=dp) exx_
REAL(KIND=dp) exy_
REAL(KIND=dp) eyy_
REAL(KIND=dp) eyz_
REAL(KIND=dp) ezx_
REAL(KIND=dp) ezz_
REAL(KIND=dp) I4_
REAL(KIND=dp) I5_
REAL(KIND=dp) I6_

exx_ = exx(epsxx, epsyy, epszz)
exy_ = exy(epsxy)
eyy_ = eyy(epsxx, epsyy, epszz)
eyz_ = eyz(epsyz)
ezx_ = ezx(epszx)
ezz_ = ezz(epsxx, epsyy, epszz)
I4_ = I4(Bx, By, Bz)
I5_ = I5(Bx, By, Bz, exx_, exy_, eyy_, eyz_, ezx_, ezz_)
I6_ = I6(Bx, By, Bz, exx_, exy_, eyy_, eyz_, ezx_, ezz_)

d2wp_dI52_public = d2wp_dI52(I4_, I5_, I6_)

end function

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
REAL(KIND=dp) exx_
REAL(KIND=dp) exy_
REAL(KIND=dp) eyy_
REAL(KIND=dp) eyz_
REAL(KIND=dp) ezx_
REAL(KIND=dp) ezz_
REAL(KIND=dp) I4_
REAL(KIND=dp) I5_
REAL(KIND=dp) I6_

exx_ = exx(epsxx, epsyy, epszz)
exy_ = exy(epsxy)
eyy_ = eyy(epsxx, epsyy, epszz)
eyz_ = eyz(epsyz)
ezx_ = ezx(epszx)
ezz_ = ezz(epsxx, epsyy, epszz)
I4_ = I4(Bx, By, Bz)
I5_ = I5(Bx, By, Bz, exx_, exy_, eyy_, eyz_, ezx_, ezz_)
I6_ = I6(Bx, By, Bz, exx_, exy_, eyy_, eyz_, ezx_, ezz_)

d2wp_dI5dI6_public = d2wp_dI5dI6(I4_, I5_, I6_)

end function

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
REAL(KIND=dp) exx_
REAL(KIND=dp) exy_
REAL(KIND=dp) eyy_
REAL(KIND=dp) eyz_
REAL(KIND=dp) ezx_
REAL(KIND=dp) ezz_
REAL(KIND=dp) I4_
REAL(KIND=dp) I5_
REAL(KIND=dp) I6_

exx_ = exx(epsxx, epsyy, epszz)
exy_ = exy(epsxy)
eyy_ = eyy(epsxx, epsyy, epszz)
eyz_ = eyz(epsyz)
ezx_ = ezx(epszx)
ezz_ = ezz(epsxx, epsyy, epszz)
I4_ = I4(Bx, By, Bz)
I5_ = I5(Bx, By, Bz, exx_, exy_, eyy_, eyz_, ezx_, ezz_)
I6_ = I6(Bx, By, Bz, exx_, exy_, eyy_, eyz_, ezx_, ezz_)

dwp_dI6_public = dwp_dI6(I4_, I5_, I6_)

end function

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
REAL(KIND=dp) exx_
REAL(KIND=dp) exy_
REAL(KIND=dp) eyy_
REAL(KIND=dp) eyz_
REAL(KIND=dp) ezx_
REAL(KIND=dp) ezz_
REAL(KIND=dp) I4_
REAL(KIND=dp) I5_
REAL(KIND=dp) I6_

exx_ = exx(epsxx, epsyy, epszz)
exy_ = exy(epsxy)
eyy_ = eyy(epsxx, epsyy, epszz)
eyz_ = eyz(epsyz)
ezx_ = ezx(epszx)
ezz_ = ezz(epsxx, epsyy, epszz)
I4_ = I4(Bx, By, Bz)
I5_ = I5(Bx, By, Bz, exx_, exy_, eyy_, eyz_, ezx_, ezz_)
I6_ = I6(Bx, By, Bz, exx_, exy_, eyy_, eyz_, ezx_, ezz_)

d2wp_dI62_public = d2wp_dI62(I4_, I5_, I6_)

end function

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
REAL(KIND=dp) exx_
REAL(KIND=dp) exy_
REAL(KIND=dp) eyy_
REAL(KIND=dp) eyz_
REAL(KIND=dp) ezx_
REAL(KIND=dp) ezz_
REAL(KIND=dp) I4_
REAL(KIND=dp) I5_
REAL(KIND=dp) I6_
REAL(KIND=dp) up_
REAL(KIND=dp) vp_
REAL(KIND=dp) wp_
REAL(KIND=dp) u_
REAL(KIND=dp) v_
REAL(KIND=dp) w_
REAL(KIND=dp) dI4_dBx_
REAL(KIND=dp) dI5_dBx_
REAL(KIND=dp) dI6_dBx_
REAL(KIND=dp) dphi_du_
REAL(KIND=dp) dphi_dv_
REAL(KIND=dp) dphi_dw_
REAL(KIND=dp) du_dup_
REAL(KIND=dp) dup_dI4_
REAL(KIND=dp) dv_dvp_
REAL(KIND=dp) dvp_dI4_
REAL(KIND=dp) dvp_dI5_
REAL(KIND=dp) dw_dwp_
REAL(KIND=dp) dwp_dI4_
REAL(KIND=dp) dwp_dI5_
REAL(KIND=dp) dwp_dI6_

exx_ = exx(epsxx, epsyy, epszz)
exy_ = exy(epsxy)
eyy_ = eyy(epsxx, epsyy, epszz)
eyz_ = eyz(epsyz)
ezx_ = ezx(epszx)
ezz_ = ezz(epsxx, epsyy, epszz)
I4_ = I4(Bx, By, Bz)
I5_ = I5(Bx, By, Bz, exx_, exy_, eyy_, eyz_, ezx_, ezz_)
I6_ = I6(Bx, By, Bz, exx_, exy_, eyy_, eyz_, ezx_, ezz_)
up_ = up(I4_)
vp_ = vp(I4_, I5_)
wp_ = wp(I4_, I5_, I6_)
u_ = u(u0, up_)
v_ = v(v0, vp_)
w_ = w(w0, wp_)
dI4_dBx_ = dI4_dBx(Bx)
dI5_dBx_ = dI5_dBx(Bx, By, Bz, exx_, exy_, ezx_)
dI6_dBx_ = dI6_dBx(Bx, By, Bz, exx_, exy_, eyy_, eyz_, ezx_, ezz_)
dphi_du_ = dphi_du(u_, v_, w_, young_E, poisson_nu)
dphi_dv_ = dphi_dv(u_, v_, w_, young_E, poisson_nu)
dphi_dw_ = dphi_dw(u_, v_, w_, young_E, poisson_nu)
du_dup_ = du_dup(u0)
dup_dI4_ = dup_dI4(I4_)
dv_dvp_ = dv_dvp(v0)
dvp_dI4_ = dvp_dI4(I4_, I5_)
dvp_dI5_ = dvp_dI5(I4_)
dw_dwp_ = dw_dwp(w0)
dwp_dI4_ = dwp_dI4(I4_, I5_, I6_)
dwp_dI5_ = dwp_dI5(I4_, I5_, I6_)
dwp_dI6_ = dwp_dI6(I4_, I5_, I6_)

dphi_dBx_public = dphi_dBx(dI4_dBx_, dI5_dBx_, dI6_dBx_, dphi_du_, dphi_dv_, &
      dphi_dw_, du_dup_, dup_dI4_, dv_dvp_, dvp_dI4_, dvp_dI5_, dw_dwp_, &
      dwp_dI4_, dwp_dI5_, dwp_dI6_)

end function

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
REAL(KIND=dp) exx_
REAL(KIND=dp) exy_
REAL(KIND=dp) eyy_
REAL(KIND=dp) eyz_
REAL(KIND=dp) ezx_
REAL(KIND=dp) ezz_
REAL(KIND=dp) I4_
REAL(KIND=dp) I5_
REAL(KIND=dp) I6_
REAL(KIND=dp) up_
REAL(KIND=dp) vp_
REAL(KIND=dp) wp_
REAL(KIND=dp) u_
REAL(KIND=dp) v_
REAL(KIND=dp) w_
REAL(KIND=dp) d2I4_dBx2_
REAL(KIND=dp) d2I5_dBx2_
REAL(KIND=dp) d2I6_dBx2_
REAL(KIND=dp) d2phi_du2_
REAL(KIND=dp) d2phi_dudv_
REAL(KIND=dp) d2phi_dudw_
REAL(KIND=dp) d2phi_dv2_
REAL(KIND=dp) d2phi_dvdw_
REAL(KIND=dp) d2phi_dw2_
REAL(KIND=dp) d2up_dI42_
REAL(KIND=dp) d2vp_dI42_
REAL(KIND=dp) d2vp_dI4dI5_
REAL(KIND=dp) d2wp_dI42_
REAL(KIND=dp) d2wp_dI4dI5_
REAL(KIND=dp) d2wp_dI4dI6_
REAL(KIND=dp) d2wp_dI52_
REAL(KIND=dp) d2wp_dI5dI6_
REAL(KIND=dp) d2wp_dI62_
REAL(KIND=dp) dI4_dBx_
REAL(KIND=dp) dI5_dBx_
REAL(KIND=dp) dI6_dBx_
REAL(KIND=dp) dphi_du_
REAL(KIND=dp) dphi_dv_
REAL(KIND=dp) dphi_dw_
REAL(KIND=dp) du_dup_
REAL(KIND=dp) dup_dI4_
REAL(KIND=dp) dv_dvp_
REAL(KIND=dp) dvp_dI4_
REAL(KIND=dp) dvp_dI5_
REAL(KIND=dp) dw_dwp_
REAL(KIND=dp) dwp_dI4_
REAL(KIND=dp) dwp_dI5_
REAL(KIND=dp) dwp_dI6_

exx_ = exx(epsxx, epsyy, epszz)
exy_ = exy(epsxy)
eyy_ = eyy(epsxx, epsyy, epszz)
eyz_ = eyz(epsyz)
ezx_ = ezx(epszx)
ezz_ = ezz(epsxx, epsyy, epszz)
I4_ = I4(Bx, By, Bz)
I5_ = I5(Bx, By, Bz, exx_, exy_, eyy_, eyz_, ezx_, ezz_)
I6_ = I6(Bx, By, Bz, exx_, exy_, eyy_, eyz_, ezx_, ezz_)
up_ = up(I4_)
vp_ = vp(I4_, I5_)
wp_ = wp(I4_, I5_, I6_)
u_ = u(u0, up_)
v_ = v(v0, vp_)
w_ = w(w0, wp_)
d2I4_dBx2_ = d2I4_dBx2()
d2I5_dBx2_ = d2I5_dBx2(exx_)
d2I6_dBx2_ = d2I6_dBx2(exx_, exy_, ezx_)
d2phi_du2_ = d2phi_du2(u_, v_, w_, young_E, poisson_nu)
d2phi_dudv_ = d2phi_dudv(u_, v_, w_, young_E, poisson_nu)
d2phi_dudw_ = d2phi_dudw(u_, v_, w_, young_E, poisson_nu)
d2phi_dv2_ = d2phi_dv2(u_, v_, w_, young_E, poisson_nu)
d2phi_dvdw_ = d2phi_dvdw(u_, v_, w_, young_E, poisson_nu)
d2phi_dw2_ = d2phi_dw2(u_, v_, w_, young_E, poisson_nu)
d2up_dI42_ = d2up_dI42(I4_)
d2vp_dI42_ = d2vp_dI42(I4_, I5_)
d2vp_dI4dI5_ = d2vp_dI4dI5(I4_)
d2wp_dI42_ = d2wp_dI42(I4_, I5_, I6_)
d2wp_dI4dI5_ = d2wp_dI4dI5(I4_, I5_, I6_)
d2wp_dI4dI6_ = d2wp_dI4dI6(I4_, I5_, I6_)
d2wp_dI52_ = d2wp_dI52(I4_, I5_, I6_)
d2wp_dI5dI6_ = d2wp_dI5dI6(I4_, I5_, I6_)
d2wp_dI62_ = d2wp_dI62(I4_, I5_, I6_)
dI4_dBx_ = dI4_dBx(Bx)
dI5_dBx_ = dI5_dBx(Bx, By, Bz, exx_, exy_, ezx_)
dI6_dBx_ = dI6_dBx(Bx, By, Bz, exx_, exy_, eyy_, eyz_, ezx_, ezz_)
dphi_du_ = dphi_du(u_, v_, w_, young_E, poisson_nu)
dphi_dv_ = dphi_dv(u_, v_, w_, young_E, poisson_nu)
dphi_dw_ = dphi_dw(u_, v_, w_, young_E, poisson_nu)
du_dup_ = du_dup(u0)
dup_dI4_ = dup_dI4(I4_)
dv_dvp_ = dv_dvp(v0)
dvp_dI4_ = dvp_dI4(I4_, I5_)
dvp_dI5_ = dvp_dI5(I4_)
dw_dwp_ = dw_dwp(w0)
dwp_dI4_ = dwp_dI4(I4_, I5_, I6_)
dwp_dI5_ = dwp_dI5(I4_, I5_, I6_)
dwp_dI6_ = dwp_dI6(I4_, I5_, I6_)

d2phi_dBx2_public = d2phi_dBx2(d2I4_dBx2_, d2I5_dBx2_, d2I6_dBx2_, &
      d2phi_du2_, d2phi_dudv_, d2phi_dudw_, d2phi_dv2_, d2phi_dvdw_, &
      d2phi_dw2_, d2up_dI42_, d2vp_dI42_, d2vp_dI4dI5_, d2wp_dI42_, &
      d2wp_dI4dI5_, d2wp_dI4dI6_, d2wp_dI52_, d2wp_dI5dI6_, d2wp_dI62_, &
      dI4_dBx_, dI5_dBx_, dI6_dBx_, dphi_du_, dphi_dv_, dphi_dw_, du_dup_, &
      dup_dI4_, dv_dvp_, dvp_dI4_, dvp_dI5_, dw_dwp_, dwp_dI4_, dwp_dI5_, &
      dwp_dI6_)

end function

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
REAL(KIND=dp) exx_
REAL(KIND=dp) exy_
REAL(KIND=dp) eyy_
REAL(KIND=dp) eyz_
REAL(KIND=dp) ezx_
REAL(KIND=dp) ezz_
REAL(KIND=dp) I4_
REAL(KIND=dp) I5_
REAL(KIND=dp) I6_
REAL(KIND=dp) up_
REAL(KIND=dp) vp_
REAL(KIND=dp) wp_
REAL(KIND=dp) u_
REAL(KIND=dp) v_
REAL(KIND=dp) w_
REAL(KIND=dp) d2I5_dBxdBy_
REAL(KIND=dp) d2I6_dBxdBy_
REAL(KIND=dp) d2phi_du2_
REAL(KIND=dp) d2phi_dudv_
REAL(KIND=dp) d2phi_dudw_
REAL(KIND=dp) d2phi_dv2_
REAL(KIND=dp) d2phi_dvdw_
REAL(KIND=dp) d2phi_dw2_
REAL(KIND=dp) d2up_dI42_
REAL(KIND=dp) d2vp_dI42_
REAL(KIND=dp) d2vp_dI4dI5_
REAL(KIND=dp) d2wp_dI42_
REAL(KIND=dp) d2wp_dI4dI5_
REAL(KIND=dp) d2wp_dI4dI6_
REAL(KIND=dp) d2wp_dI52_
REAL(KIND=dp) d2wp_dI5dI6_
REAL(KIND=dp) d2wp_dI62_
REAL(KIND=dp) dI4_dBx_
REAL(KIND=dp) dI4_dBy_
REAL(KIND=dp) dI5_dBx_
REAL(KIND=dp) dI5_dBy_
REAL(KIND=dp) dI6_dBx_
REAL(KIND=dp) dI6_dBy_
REAL(KIND=dp) dphi_du_
REAL(KIND=dp) dphi_dv_
REAL(KIND=dp) dphi_dw_
REAL(KIND=dp) du_dup_
REAL(KIND=dp) dup_dI4_
REAL(KIND=dp) dv_dvp_
REAL(KIND=dp) dvp_dI4_
REAL(KIND=dp) dvp_dI5_
REAL(KIND=dp) dw_dwp_
REAL(KIND=dp) dwp_dI4_
REAL(KIND=dp) dwp_dI5_
REAL(KIND=dp) dwp_dI6_

exx_ = exx(epsxx, epsyy, epszz)
exy_ = exy(epsxy)
eyy_ = eyy(epsxx, epsyy, epszz)
eyz_ = eyz(epsyz)
ezx_ = ezx(epszx)
ezz_ = ezz(epsxx, epsyy, epszz)
I4_ = I4(Bx, By, Bz)
I5_ = I5(Bx, By, Bz, exx_, exy_, eyy_, eyz_, ezx_, ezz_)
I6_ = I6(Bx, By, Bz, exx_, exy_, eyy_, eyz_, ezx_, ezz_)
up_ = up(I4_)
vp_ = vp(I4_, I5_)
wp_ = wp(I4_, I5_, I6_)
u_ = u(u0, up_)
v_ = v(v0, vp_)
w_ = w(w0, wp_)
d2I5_dBxdBy_ = d2I5_dBxdBy(exy_)
d2I6_dBxdBy_ = d2I6_dBxdBy(exx_, exy_, eyy_, eyz_, ezx_)
d2phi_du2_ = d2phi_du2(u_, v_, w_, young_E, poisson_nu)
d2phi_dudv_ = d2phi_dudv(u_, v_, w_, young_E, poisson_nu)
d2phi_dudw_ = d2phi_dudw(u_, v_, w_, young_E, poisson_nu)
d2phi_dv2_ = d2phi_dv2(u_, v_, w_, young_E, poisson_nu)
d2phi_dvdw_ = d2phi_dvdw(u_, v_, w_, young_E, poisson_nu)
d2phi_dw2_ = d2phi_dw2(u_, v_, w_, young_E, poisson_nu)
d2up_dI42_ = d2up_dI42(I4_)
d2vp_dI42_ = d2vp_dI42(I4_, I5_)
d2vp_dI4dI5_ = d2vp_dI4dI5(I4_)
d2wp_dI42_ = d2wp_dI42(I4_, I5_, I6_)
d2wp_dI4dI5_ = d2wp_dI4dI5(I4_, I5_, I6_)
d2wp_dI4dI6_ = d2wp_dI4dI6(I4_, I5_, I6_)
d2wp_dI52_ = d2wp_dI52(I4_, I5_, I6_)
d2wp_dI5dI6_ = d2wp_dI5dI6(I4_, I5_, I6_)
d2wp_dI62_ = d2wp_dI62(I4_, I5_, I6_)
dI4_dBx_ = dI4_dBx(Bx)
dI4_dBy_ = dI4_dBy(By)
dI5_dBx_ = dI5_dBx(Bx, By, Bz, exx_, exy_, ezx_)
dI5_dBy_ = dI5_dBy(Bx, By, Bz, exy_, eyy_, eyz_)
dI6_dBx_ = dI6_dBx(Bx, By, Bz, exx_, exy_, eyy_, eyz_, ezx_, ezz_)
dI6_dBy_ = dI6_dBy(Bx, By, Bz, exx_, exy_, eyy_, eyz_, ezx_, ezz_)
dphi_du_ = dphi_du(u_, v_, w_, young_E, poisson_nu)
dphi_dv_ = dphi_dv(u_, v_, w_, young_E, poisson_nu)
dphi_dw_ = dphi_dw(u_, v_, w_, young_E, poisson_nu)
du_dup_ = du_dup(u0)
dup_dI4_ = dup_dI4(I4_)
dv_dvp_ = dv_dvp(v0)
dvp_dI4_ = dvp_dI4(I4_, I5_)
dvp_dI5_ = dvp_dI5(I4_)
dw_dwp_ = dw_dwp(w0)
dwp_dI4_ = dwp_dI4(I4_, I5_, I6_)
dwp_dI5_ = dwp_dI5(I4_, I5_, I6_)
dwp_dI6_ = dwp_dI6(I4_, I5_, I6_)

d2phi_dBxdBy_public = d2phi_dBxdBy(d2I5_dBxdBy_, d2I6_dBxdBy_, d2phi_du2_, &
      d2phi_dudv_, d2phi_dudw_, d2phi_dv2_, d2phi_dvdw_, d2phi_dw2_, &
      d2up_dI42_, d2vp_dI42_, d2vp_dI4dI5_, d2wp_dI42_, d2wp_dI4dI5_, &
      d2wp_dI4dI6_, d2wp_dI52_, d2wp_dI5dI6_, d2wp_dI62_, dI4_dBx_, &
      dI4_dBy_, dI5_dBx_, dI5_dBy_, dI6_dBx_, dI6_dBy_, dphi_du_, dphi_dv_, &
      dphi_dw_, du_dup_, dup_dI4_, dv_dvp_, dvp_dI4_, dvp_dI5_, dw_dwp_, &
      dwp_dI4_, dwp_dI5_, dwp_dI6_)

end function

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
REAL(KIND=dp) exx_
REAL(KIND=dp) exy_
REAL(KIND=dp) eyy_
REAL(KIND=dp) eyz_
REAL(KIND=dp) ezx_
REAL(KIND=dp) ezz_
REAL(KIND=dp) I4_
REAL(KIND=dp) I5_
REAL(KIND=dp) I6_
REAL(KIND=dp) up_
REAL(KIND=dp) vp_
REAL(KIND=dp) wp_
REAL(KIND=dp) u_
REAL(KIND=dp) v_
REAL(KIND=dp) w_
REAL(KIND=dp) d2I5_dBxdBz_
REAL(KIND=dp) d2I6_dBxdBz_
REAL(KIND=dp) d2phi_du2_
REAL(KIND=dp) d2phi_dudv_
REAL(KIND=dp) d2phi_dudw_
REAL(KIND=dp) d2phi_dv2_
REAL(KIND=dp) d2phi_dvdw_
REAL(KIND=dp) d2phi_dw2_
REAL(KIND=dp) d2up_dI42_
REAL(KIND=dp) d2vp_dI42_
REAL(KIND=dp) d2vp_dI4dI5_
REAL(KIND=dp) d2wp_dI42_
REAL(KIND=dp) d2wp_dI4dI5_
REAL(KIND=dp) d2wp_dI4dI6_
REAL(KIND=dp) d2wp_dI52_
REAL(KIND=dp) d2wp_dI5dI6_
REAL(KIND=dp) d2wp_dI62_
REAL(KIND=dp) dI4_dBx_
REAL(KIND=dp) dI4_dBz_
REAL(KIND=dp) dI5_dBx_
REAL(KIND=dp) dI5_dBz_
REAL(KIND=dp) dI6_dBx_
REAL(KIND=dp) dI6_dBz_
REAL(KIND=dp) dphi_du_
REAL(KIND=dp) dphi_dv_
REAL(KIND=dp) dphi_dw_
REAL(KIND=dp) du_dup_
REAL(KIND=dp) dup_dI4_
REAL(KIND=dp) dv_dvp_
REAL(KIND=dp) dvp_dI4_
REAL(KIND=dp) dvp_dI5_
REAL(KIND=dp) dw_dwp_
REAL(KIND=dp) dwp_dI4_
REAL(KIND=dp) dwp_dI5_
REAL(KIND=dp) dwp_dI6_

exx_ = exx(epsxx, epsyy, epszz)
exy_ = exy(epsxy)
eyy_ = eyy(epsxx, epsyy, epszz)
eyz_ = eyz(epsyz)
ezx_ = ezx(epszx)
ezz_ = ezz(epsxx, epsyy, epszz)
I4_ = I4(Bx, By, Bz)
I5_ = I5(Bx, By, Bz, exx_, exy_, eyy_, eyz_, ezx_, ezz_)
I6_ = I6(Bx, By, Bz, exx_, exy_, eyy_, eyz_, ezx_, ezz_)
up_ = up(I4_)
vp_ = vp(I4_, I5_)
wp_ = wp(I4_, I5_, I6_)
u_ = u(u0, up_)
v_ = v(v0, vp_)
w_ = w(w0, wp_)
d2I5_dBxdBz_ = d2I5_dBxdBz(ezx_)
d2I6_dBxdBz_ = d2I6_dBxdBz(exx_, exy_, eyz_, ezx_, ezz_)
d2phi_du2_ = d2phi_du2(u_, v_, w_, young_E, poisson_nu)
d2phi_dudv_ = d2phi_dudv(u_, v_, w_, young_E, poisson_nu)
d2phi_dudw_ = d2phi_dudw(u_, v_, w_, young_E, poisson_nu)
d2phi_dv2_ = d2phi_dv2(u_, v_, w_, young_E, poisson_nu)
d2phi_dvdw_ = d2phi_dvdw(u_, v_, w_, young_E, poisson_nu)
d2phi_dw2_ = d2phi_dw2(u_, v_, w_, young_E, poisson_nu)
d2up_dI42_ = d2up_dI42(I4_)
d2vp_dI42_ = d2vp_dI42(I4_, I5_)
d2vp_dI4dI5_ = d2vp_dI4dI5(I4_)
d2wp_dI42_ = d2wp_dI42(I4_, I5_, I6_)
d2wp_dI4dI5_ = d2wp_dI4dI5(I4_, I5_, I6_)
d2wp_dI4dI6_ = d2wp_dI4dI6(I4_, I5_, I6_)
d2wp_dI52_ = d2wp_dI52(I4_, I5_, I6_)
d2wp_dI5dI6_ = d2wp_dI5dI6(I4_, I5_, I6_)
d2wp_dI62_ = d2wp_dI62(I4_, I5_, I6_)
dI4_dBx_ = dI4_dBx(Bx)
dI4_dBz_ = dI4_dBz(Bz)
dI5_dBx_ = dI5_dBx(Bx, By, Bz, exx_, exy_, ezx_)
dI5_dBz_ = dI5_dBz(Bx, By, Bz, eyz_, ezx_, ezz_)
dI6_dBx_ = dI6_dBx(Bx, By, Bz, exx_, exy_, eyy_, eyz_, ezx_, ezz_)
dI6_dBz_ = dI6_dBz(Bx, By, Bz, exx_, exy_, eyy_, eyz_, ezx_, ezz_)
dphi_du_ = dphi_du(u_, v_, w_, young_E, poisson_nu)
dphi_dv_ = dphi_dv(u_, v_, w_, young_E, poisson_nu)
dphi_dw_ = dphi_dw(u_, v_, w_, young_E, poisson_nu)
du_dup_ = du_dup(u0)
dup_dI4_ = dup_dI4(I4_)
dv_dvp_ = dv_dvp(v0)
dvp_dI4_ = dvp_dI4(I4_, I5_)
dvp_dI5_ = dvp_dI5(I4_)
dw_dwp_ = dw_dwp(w0)
dwp_dI4_ = dwp_dI4(I4_, I5_, I6_)
dwp_dI5_ = dwp_dI5(I4_, I5_, I6_)
dwp_dI6_ = dwp_dI6(I4_, I5_, I6_)

d2phi_dBxdBz_public = d2phi_dBxdBz(d2I5_dBxdBz_, d2I6_dBxdBz_, d2phi_du2_, &
      d2phi_dudv_, d2phi_dudw_, d2phi_dv2_, d2phi_dvdw_, d2phi_dw2_, &
      d2up_dI42_, d2vp_dI42_, d2vp_dI4dI5_, d2wp_dI42_, d2wp_dI4dI5_, &
      d2wp_dI4dI6_, d2wp_dI52_, d2wp_dI5dI6_, d2wp_dI62_, dI4_dBx_, &
      dI4_dBz_, dI5_dBx_, dI5_dBz_, dI6_dBx_, dI6_dBz_, dphi_du_, dphi_dv_, &
      dphi_dw_, du_dup_, dup_dI4_, dv_dvp_, dvp_dI4_, dvp_dI5_, dw_dwp_, &
      dwp_dI4_, dwp_dI5_, dwp_dI6_)

end function

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
REAL(KIND=dp) exx_
REAL(KIND=dp) exy_
REAL(KIND=dp) eyy_
REAL(KIND=dp) eyz_
REAL(KIND=dp) ezx_
REAL(KIND=dp) ezz_
REAL(KIND=dp) I4_
REAL(KIND=dp) I5_
REAL(KIND=dp) I6_
REAL(KIND=dp) up_
REAL(KIND=dp) vp_
REAL(KIND=dp) wp_
REAL(KIND=dp) u_
REAL(KIND=dp) v_
REAL(KIND=dp) w_
REAL(KIND=dp) d2I5_dBxdexx_
REAL(KIND=dp) d2I6_dBxdexx_
REAL(KIND=dp) d2I6_dBxdeyy_
REAL(KIND=dp) d2I6_dBxdezz_
REAL(KIND=dp) d2phi_dudv_
REAL(KIND=dp) d2phi_dudw_
REAL(KIND=dp) d2phi_dv2_
REAL(KIND=dp) d2phi_dvdw_
REAL(KIND=dp) d2phi_dw2_
REAL(KIND=dp) d2vp_dI4dI5_
REAL(KIND=dp) d2wp_dI4dI5_
REAL(KIND=dp) d2wp_dI4dI6_
REAL(KIND=dp) d2wp_dI52_
REAL(KIND=dp) d2wp_dI5dI6_
REAL(KIND=dp) d2wp_dI62_
REAL(KIND=dp) dI4_dBx_
REAL(KIND=dp) dI5_dBx_
REAL(KIND=dp) dI5_dexx_
REAL(KIND=dp) dI5_deyy_
REAL(KIND=dp) dI5_dezz_
REAL(KIND=dp) dI6_dBx_
REAL(KIND=dp) dI6_dexx_
REAL(KIND=dp) dI6_deyy_
REAL(KIND=dp) dI6_dezz_
REAL(KIND=dp) dexx_depsxx_
REAL(KIND=dp) deyy_depsxx_
REAL(KIND=dp) dezz_depsxx_
REAL(KIND=dp) dphi_dv_
REAL(KIND=dp) dphi_dw_
REAL(KIND=dp) du_dup_
REAL(KIND=dp) dup_dI4_
REAL(KIND=dp) dv_dvp_
REAL(KIND=dp) dvp_dI4_
REAL(KIND=dp) dvp_dI5_
REAL(KIND=dp) dw_dwp_
REAL(KIND=dp) dwp_dI4_
REAL(KIND=dp) dwp_dI5_
REAL(KIND=dp) dwp_dI6_

exx_ = exx(epsxx, epsyy, epszz)
exy_ = exy(epsxy)
eyy_ = eyy(epsxx, epsyy, epszz)
eyz_ = eyz(epsyz)
ezx_ = ezx(epszx)
ezz_ = ezz(epsxx, epsyy, epszz)
I4_ = I4(Bx, By, Bz)
I5_ = I5(Bx, By, Bz, exx_, exy_, eyy_, eyz_, ezx_, ezz_)
I6_ = I6(Bx, By, Bz, exx_, exy_, eyy_, eyz_, ezx_, ezz_)
up_ = up(I4_)
vp_ = vp(I4_, I5_)
wp_ = wp(I4_, I5_, I6_)
u_ = u(u0, up_)
v_ = v(v0, vp_)
w_ = w(w0, wp_)
d2I5_dBxdexx_ = d2I5_dBxdexx(Bx)
d2I6_dBxdexx_ = d2I6_dBxdexx(Bx, By, Bz, exx_, exy_, ezx_)
d2I6_dBxdeyy_ = d2I6_dBxdeyy(By, exy_)
d2I6_dBxdezz_ = d2I6_dBxdezz(Bz, ezx_)
d2phi_dudv_ = d2phi_dudv(u_, v_, w_, young_E, poisson_nu)
d2phi_dudw_ = d2phi_dudw(u_, v_, w_, young_E, poisson_nu)
d2phi_dv2_ = d2phi_dv2(u_, v_, w_, young_E, poisson_nu)
d2phi_dvdw_ = d2phi_dvdw(u_, v_, w_, young_E, poisson_nu)
d2phi_dw2_ = d2phi_dw2(u_, v_, w_, young_E, poisson_nu)
d2vp_dI4dI5_ = d2vp_dI4dI5(I4_)
d2wp_dI4dI5_ = d2wp_dI4dI5(I4_, I5_, I6_)
d2wp_dI4dI6_ = d2wp_dI4dI6(I4_, I5_, I6_)
d2wp_dI52_ = d2wp_dI52(I4_, I5_, I6_)
d2wp_dI5dI6_ = d2wp_dI5dI6(I4_, I5_, I6_)
d2wp_dI62_ = d2wp_dI62(I4_, I5_, I6_)
dI4_dBx_ = dI4_dBx(Bx)
dI5_dBx_ = dI5_dBx(Bx, By, Bz, exx_, exy_, ezx_)
dI5_dexx_ = dI5_dexx(Bx)
dI5_deyy_ = dI5_deyy(By)
dI5_dezz_ = dI5_dezz(Bz)
dI6_dBx_ = dI6_dBx(Bx, By, Bz, exx_, exy_, eyy_, eyz_, ezx_, ezz_)
dI6_dexx_ = dI6_dexx(Bx, By, Bz, exx_, exy_, ezx_)
dI6_deyy_ = dI6_deyy(Bx, By, Bz, exy_, eyy_, eyz_)
dI6_dezz_ = dI6_dezz(Bx, By, Bz, eyz_, ezx_, ezz_)
dexx_depsxx_ = dexx_depsxx()
deyy_depsxx_ = deyy_depsxx()
dezz_depsxx_ = dezz_depsxx()
dphi_dv_ = dphi_dv(u_, v_, w_, young_E, poisson_nu)
dphi_dw_ = dphi_dw(u_, v_, w_, young_E, poisson_nu)
du_dup_ = du_dup(u0)
dup_dI4_ = dup_dI4(I4_)
dv_dvp_ = dv_dvp(v0)
dvp_dI4_ = dvp_dI4(I4_, I5_)
dvp_dI5_ = dvp_dI5(I4_)
dw_dwp_ = dw_dwp(w0)
dwp_dI4_ = dwp_dI4(I4_, I5_, I6_)
dwp_dI5_ = dwp_dI5(I4_, I5_, I6_)
dwp_dI6_ = dwp_dI6(I4_, I5_, I6_)

d2phi_dBxdepsxx_public = d2phi_dBxdepsxx(d2I5_dBxdexx_, d2I6_dBxdexx_, &
      d2I6_dBxdeyy_, d2I6_dBxdezz_, d2phi_dudv_, d2phi_dudw_, d2phi_dv2_, &
      d2phi_dvdw_, d2phi_dw2_, d2vp_dI4dI5_, d2wp_dI4dI5_, d2wp_dI4dI6_, &
      d2wp_dI52_, d2wp_dI5dI6_, d2wp_dI62_, dI4_dBx_, dI5_dBx_, dI5_dexx_, &
      dI5_deyy_, dI5_dezz_, dI6_dBx_, dI6_dexx_, dI6_deyy_, dI6_dezz_, &
      dexx_depsxx_, deyy_depsxx_, dezz_depsxx_, dphi_dv_, dphi_dw_, du_dup_, &
      dup_dI4_, dv_dvp_, dvp_dI4_, dvp_dI5_, dw_dwp_, dwp_dI4_, dwp_dI5_, &
      dwp_dI6_)

end function

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
REAL(KIND=dp) exx_
REAL(KIND=dp) exy_
REAL(KIND=dp) eyy_
REAL(KIND=dp) eyz_
REAL(KIND=dp) ezx_
REAL(KIND=dp) ezz_
REAL(KIND=dp) I4_
REAL(KIND=dp) I5_
REAL(KIND=dp) I6_
REAL(KIND=dp) up_
REAL(KIND=dp) vp_
REAL(KIND=dp) wp_
REAL(KIND=dp) u_
REAL(KIND=dp) v_
REAL(KIND=dp) w_
REAL(KIND=dp) d2I5_dBxdexy_
REAL(KIND=dp) d2I6_dBxdexy_
REAL(KIND=dp) d2phi_dudv_
REAL(KIND=dp) d2phi_dudw_
REAL(KIND=dp) d2phi_dv2_
REAL(KIND=dp) d2phi_dvdw_
REAL(KIND=dp) d2phi_dw2_
REAL(KIND=dp) d2vp_dI4dI5_
REAL(KIND=dp) d2wp_dI4dI5_
REAL(KIND=dp) d2wp_dI4dI6_
REAL(KIND=dp) d2wp_dI52_
REAL(KIND=dp) d2wp_dI5dI6_
REAL(KIND=dp) d2wp_dI62_
REAL(KIND=dp) dI4_dBx_
REAL(KIND=dp) dI5_dBx_
REAL(KIND=dp) dI5_dexy_
REAL(KIND=dp) dI6_dBx_
REAL(KIND=dp) dI6_dexy_
REAL(KIND=dp) dexy_depsxy_
REAL(KIND=dp) dphi_dv_
REAL(KIND=dp) dphi_dw_
REAL(KIND=dp) du_dup_
REAL(KIND=dp) dup_dI4_
REAL(KIND=dp) dv_dvp_
REAL(KIND=dp) dvp_dI4_
REAL(KIND=dp) dvp_dI5_
REAL(KIND=dp) dw_dwp_
REAL(KIND=dp) dwp_dI4_
REAL(KIND=dp) dwp_dI5_
REAL(KIND=dp) dwp_dI6_

exx_ = exx(epsxx, epsyy, epszz)
exy_ = exy(epsxy)
eyy_ = eyy(epsxx, epsyy, epszz)
eyz_ = eyz(epsyz)
ezx_ = ezx(epszx)
ezz_ = ezz(epsxx, epsyy, epszz)
I4_ = I4(Bx, By, Bz)
I5_ = I5(Bx, By, Bz, exx_, exy_, eyy_, eyz_, ezx_, ezz_)
I6_ = I6(Bx, By, Bz, exx_, exy_, eyy_, eyz_, ezx_, ezz_)
up_ = up(I4_)
vp_ = vp(I4_, I5_)
wp_ = wp(I4_, I5_, I6_)
u_ = u(u0, up_)
v_ = v(v0, vp_)
w_ = w(w0, wp_)
d2I5_dBxdexy_ = d2I5_dBxdexy(By)
d2I6_dBxdexy_ = d2I6_dBxdexy(Bx, By, Bz, exx_, exy_, eyy_, eyz_)
d2phi_dudv_ = d2phi_dudv(u_, v_, w_, young_E, poisson_nu)
d2phi_dudw_ = d2phi_dudw(u_, v_, w_, young_E, poisson_nu)
d2phi_dv2_ = d2phi_dv2(u_, v_, w_, young_E, poisson_nu)
d2phi_dvdw_ = d2phi_dvdw(u_, v_, w_, young_E, poisson_nu)
d2phi_dw2_ = d2phi_dw2(u_, v_, w_, young_E, poisson_nu)
d2vp_dI4dI5_ = d2vp_dI4dI5(I4_)
d2wp_dI4dI5_ = d2wp_dI4dI5(I4_, I5_, I6_)
d2wp_dI4dI6_ = d2wp_dI4dI6(I4_, I5_, I6_)
d2wp_dI52_ = d2wp_dI52(I4_, I5_, I6_)
d2wp_dI5dI6_ = d2wp_dI5dI6(I4_, I5_, I6_)
d2wp_dI62_ = d2wp_dI62(I4_, I5_, I6_)
dI4_dBx_ = dI4_dBx(Bx)
dI5_dBx_ = dI5_dBx(Bx, By, Bz, exx_, exy_, ezx_)
dI5_dexy_ = dI5_dexy(Bx, By)
dI6_dBx_ = dI6_dBx(Bx, By, Bz, exx_, exy_, eyy_, eyz_, ezx_, ezz_)
dI6_dexy_ = dI6_dexy(Bx, By, Bz, exx_, exy_, eyy_, eyz_, ezx_)
dexy_depsxy_ = dexy_depsxy()
dphi_dv_ = dphi_dv(u_, v_, w_, young_E, poisson_nu)
dphi_dw_ = dphi_dw(u_, v_, w_, young_E, poisson_nu)
du_dup_ = du_dup(u0)
dup_dI4_ = dup_dI4(I4_)
dv_dvp_ = dv_dvp(v0)
dvp_dI4_ = dvp_dI4(I4_, I5_)
dvp_dI5_ = dvp_dI5(I4_)
dw_dwp_ = dw_dwp(w0)
dwp_dI4_ = dwp_dI4(I4_, I5_, I6_)
dwp_dI5_ = dwp_dI5(I4_, I5_, I6_)
dwp_dI6_ = dwp_dI6(I4_, I5_, I6_)

d2phi_dBxdepsxy_public = d2phi_dBxdepsxy(d2I5_dBxdexy_, d2I6_dBxdexy_, &
      d2phi_dudv_, d2phi_dudw_, d2phi_dv2_, d2phi_dvdw_, d2phi_dw2_, &
      d2vp_dI4dI5_, d2wp_dI4dI5_, d2wp_dI4dI6_, d2wp_dI52_, d2wp_dI5dI6_, &
      d2wp_dI62_, dI4_dBx_, dI5_dBx_, dI5_dexy_, dI6_dBx_, dI6_dexy_, &
      dexy_depsxy_, dphi_dv_, dphi_dw_, du_dup_, dup_dI4_, dv_dvp_, &
      dvp_dI4_, dvp_dI5_, dw_dwp_, dwp_dI4_, dwp_dI5_, dwp_dI6_)

end function

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
REAL(KIND=dp) exx_
REAL(KIND=dp) exy_
REAL(KIND=dp) eyy_
REAL(KIND=dp) eyz_
REAL(KIND=dp) ezx_
REAL(KIND=dp) ezz_
REAL(KIND=dp) I4_
REAL(KIND=dp) I5_
REAL(KIND=dp) I6_
REAL(KIND=dp) up_
REAL(KIND=dp) vp_
REAL(KIND=dp) wp_
REAL(KIND=dp) u_
REAL(KIND=dp) v_
REAL(KIND=dp) w_
REAL(KIND=dp) d2I5_dBxdexx_
REAL(KIND=dp) d2I6_dBxdexx_
REAL(KIND=dp) d2I6_dBxdeyy_
REAL(KIND=dp) d2I6_dBxdezz_
REAL(KIND=dp) d2phi_dudv_
REAL(KIND=dp) d2phi_dudw_
REAL(KIND=dp) d2phi_dv2_
REAL(KIND=dp) d2phi_dvdw_
REAL(KIND=dp) d2phi_dw2_
REAL(KIND=dp) d2vp_dI4dI5_
REAL(KIND=dp) d2wp_dI4dI5_
REAL(KIND=dp) d2wp_dI4dI6_
REAL(KIND=dp) d2wp_dI52_
REAL(KIND=dp) d2wp_dI5dI6_
REAL(KIND=dp) d2wp_dI62_
REAL(KIND=dp) dI4_dBx_
REAL(KIND=dp) dI5_dBx_
REAL(KIND=dp) dI5_dexx_
REAL(KIND=dp) dI5_deyy_
REAL(KIND=dp) dI5_dezz_
REAL(KIND=dp) dI6_dBx_
REAL(KIND=dp) dI6_dexx_
REAL(KIND=dp) dI6_deyy_
REAL(KIND=dp) dI6_dezz_
REAL(KIND=dp) dexx_depsyy_
REAL(KIND=dp) deyy_depsyy_
REAL(KIND=dp) dezz_depsyy_
REAL(KIND=dp) dphi_dv_
REAL(KIND=dp) dphi_dw_
REAL(KIND=dp) du_dup_
REAL(KIND=dp) dup_dI4_
REAL(KIND=dp) dv_dvp_
REAL(KIND=dp) dvp_dI4_
REAL(KIND=dp) dvp_dI5_
REAL(KIND=dp) dw_dwp_
REAL(KIND=dp) dwp_dI4_
REAL(KIND=dp) dwp_dI5_
REAL(KIND=dp) dwp_dI6_

exx_ = exx(epsxx, epsyy, epszz)
exy_ = exy(epsxy)
eyy_ = eyy(epsxx, epsyy, epszz)
eyz_ = eyz(epsyz)
ezx_ = ezx(epszx)
ezz_ = ezz(epsxx, epsyy, epszz)
I4_ = I4(Bx, By, Bz)
I5_ = I5(Bx, By, Bz, exx_, exy_, eyy_, eyz_, ezx_, ezz_)
I6_ = I6(Bx, By, Bz, exx_, exy_, eyy_, eyz_, ezx_, ezz_)
up_ = up(I4_)
vp_ = vp(I4_, I5_)
wp_ = wp(I4_, I5_, I6_)
u_ = u(u0, up_)
v_ = v(v0, vp_)
w_ = w(w0, wp_)
d2I5_dBxdexx_ = d2I5_dBxdexx(Bx)
d2I6_dBxdexx_ = d2I6_dBxdexx(Bx, By, Bz, exx_, exy_, ezx_)
d2I6_dBxdeyy_ = d2I6_dBxdeyy(By, exy_)
d2I6_dBxdezz_ = d2I6_dBxdezz(Bz, ezx_)
d2phi_dudv_ = d2phi_dudv(u_, v_, w_, young_E, poisson_nu)
d2phi_dudw_ = d2phi_dudw(u_, v_, w_, young_E, poisson_nu)
d2phi_dv2_ = d2phi_dv2(u_, v_, w_, young_E, poisson_nu)
d2phi_dvdw_ = d2phi_dvdw(u_, v_, w_, young_E, poisson_nu)
d2phi_dw2_ = d2phi_dw2(u_, v_, w_, young_E, poisson_nu)
d2vp_dI4dI5_ = d2vp_dI4dI5(I4_)
d2wp_dI4dI5_ = d2wp_dI4dI5(I4_, I5_, I6_)
d2wp_dI4dI6_ = d2wp_dI4dI6(I4_, I5_, I6_)
d2wp_dI52_ = d2wp_dI52(I4_, I5_, I6_)
d2wp_dI5dI6_ = d2wp_dI5dI6(I4_, I5_, I6_)
d2wp_dI62_ = d2wp_dI62(I4_, I5_, I6_)
dI4_dBx_ = dI4_dBx(Bx)
dI5_dBx_ = dI5_dBx(Bx, By, Bz, exx_, exy_, ezx_)
dI5_dexx_ = dI5_dexx(Bx)
dI5_deyy_ = dI5_deyy(By)
dI5_dezz_ = dI5_dezz(Bz)
dI6_dBx_ = dI6_dBx(Bx, By, Bz, exx_, exy_, eyy_, eyz_, ezx_, ezz_)
dI6_dexx_ = dI6_dexx(Bx, By, Bz, exx_, exy_, ezx_)
dI6_deyy_ = dI6_deyy(Bx, By, Bz, exy_, eyy_, eyz_)
dI6_dezz_ = dI6_dezz(Bx, By, Bz, eyz_, ezx_, ezz_)
dexx_depsyy_ = dexx_depsyy()
deyy_depsyy_ = deyy_depsyy()
dezz_depsyy_ = dezz_depsyy()
dphi_dv_ = dphi_dv(u_, v_, w_, young_E, poisson_nu)
dphi_dw_ = dphi_dw(u_, v_, w_, young_E, poisson_nu)
du_dup_ = du_dup(u0)
dup_dI4_ = dup_dI4(I4_)
dv_dvp_ = dv_dvp(v0)
dvp_dI4_ = dvp_dI4(I4_, I5_)
dvp_dI5_ = dvp_dI5(I4_)
dw_dwp_ = dw_dwp(w0)
dwp_dI4_ = dwp_dI4(I4_, I5_, I6_)
dwp_dI5_ = dwp_dI5(I4_, I5_, I6_)
dwp_dI6_ = dwp_dI6(I4_, I5_, I6_)

d2phi_dBxdepsyy_public = d2phi_dBxdepsyy(d2I5_dBxdexx_, d2I6_dBxdexx_, &
      d2I6_dBxdeyy_, d2I6_dBxdezz_, d2phi_dudv_, d2phi_dudw_, d2phi_dv2_, &
      d2phi_dvdw_, d2phi_dw2_, d2vp_dI4dI5_, d2wp_dI4dI5_, d2wp_dI4dI6_, &
      d2wp_dI52_, d2wp_dI5dI6_, d2wp_dI62_, dI4_dBx_, dI5_dBx_, dI5_dexx_, &
      dI5_deyy_, dI5_dezz_, dI6_dBx_, dI6_dexx_, dI6_deyy_, dI6_dezz_, &
      dexx_depsyy_, deyy_depsyy_, dezz_depsyy_, dphi_dv_, dphi_dw_, du_dup_, &
      dup_dI4_, dv_dvp_, dvp_dI4_, dvp_dI5_, dw_dwp_, dwp_dI4_, dwp_dI5_, &
      dwp_dI6_)

end function

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
REAL(KIND=dp) exx_
REAL(KIND=dp) exy_
REAL(KIND=dp) eyy_
REAL(KIND=dp) eyz_
REAL(KIND=dp) ezx_
REAL(KIND=dp) ezz_
REAL(KIND=dp) I4_
REAL(KIND=dp) I5_
REAL(KIND=dp) I6_
REAL(KIND=dp) up_
REAL(KIND=dp) vp_
REAL(KIND=dp) wp_
REAL(KIND=dp) u_
REAL(KIND=dp) v_
REAL(KIND=dp) w_
REAL(KIND=dp) d2I6_dBxdeyz_
REAL(KIND=dp) d2phi_dudv_
REAL(KIND=dp) d2phi_dudw_
REAL(KIND=dp) d2phi_dv2_
REAL(KIND=dp) d2phi_dvdw_
REAL(KIND=dp) d2phi_dw2_
REAL(KIND=dp) d2vp_dI4dI5_
REAL(KIND=dp) d2wp_dI4dI5_
REAL(KIND=dp) d2wp_dI4dI6_
REAL(KIND=dp) d2wp_dI52_
REAL(KIND=dp) d2wp_dI5dI6_
REAL(KIND=dp) d2wp_dI62_
REAL(KIND=dp) dI4_dBx_
REAL(KIND=dp) dI5_dBx_
REAL(KIND=dp) dI5_deyz_
REAL(KIND=dp) dI6_dBx_
REAL(KIND=dp) dI6_deyz_
REAL(KIND=dp) deyz_depsyz_
REAL(KIND=dp) dphi_dv_
REAL(KIND=dp) dphi_dw_
REAL(KIND=dp) du_dup_
REAL(KIND=dp) dup_dI4_
REAL(KIND=dp) dv_dvp_
REAL(KIND=dp) dvp_dI4_
REAL(KIND=dp) dvp_dI5_
REAL(KIND=dp) dw_dwp_
REAL(KIND=dp) dwp_dI4_
REAL(KIND=dp) dwp_dI5_
REAL(KIND=dp) dwp_dI6_

exx_ = exx(epsxx, epsyy, epszz)
exy_ = exy(epsxy)
eyy_ = eyy(epsxx, epsyy, epszz)
eyz_ = eyz(epsyz)
ezx_ = ezx(epszx)
ezz_ = ezz(epsxx, epsyy, epszz)
I4_ = I4(Bx, By, Bz)
I5_ = I5(Bx, By, Bz, exx_, exy_, eyy_, eyz_, ezx_, ezz_)
I6_ = I6(Bx, By, Bz, exx_, exy_, eyy_, eyz_, ezx_, ezz_)
up_ = up(I4_)
vp_ = vp(I4_, I5_)
wp_ = wp(I4_, I5_, I6_)
u_ = u(u0, up_)
v_ = v(v0, vp_)
w_ = w(w0, wp_)
d2I6_dBxdeyz_ = d2I6_dBxdeyz(By, Bz, exy_, ezx_)
d2phi_dudv_ = d2phi_dudv(u_, v_, w_, young_E, poisson_nu)
d2phi_dudw_ = d2phi_dudw(u_, v_, w_, young_E, poisson_nu)
d2phi_dv2_ = d2phi_dv2(u_, v_, w_, young_E, poisson_nu)
d2phi_dvdw_ = d2phi_dvdw(u_, v_, w_, young_E, poisson_nu)
d2phi_dw2_ = d2phi_dw2(u_, v_, w_, young_E, poisson_nu)
d2vp_dI4dI5_ = d2vp_dI4dI5(I4_)
d2wp_dI4dI5_ = d2wp_dI4dI5(I4_, I5_, I6_)
d2wp_dI4dI6_ = d2wp_dI4dI6(I4_, I5_, I6_)
d2wp_dI52_ = d2wp_dI52(I4_, I5_, I6_)
d2wp_dI5dI6_ = d2wp_dI5dI6(I4_, I5_, I6_)
d2wp_dI62_ = d2wp_dI62(I4_, I5_, I6_)
dI4_dBx_ = dI4_dBx(Bx)
dI5_dBx_ = dI5_dBx(Bx, By, Bz, exx_, exy_, ezx_)
dI5_deyz_ = dI5_deyz(By, Bz)
dI6_dBx_ = dI6_dBx(Bx, By, Bz, exx_, exy_, eyy_, eyz_, ezx_, ezz_)
dI6_deyz_ = dI6_deyz(Bx, By, Bz, exy_, eyy_, eyz_, ezx_, ezz_)
deyz_depsyz_ = deyz_depsyz()
dphi_dv_ = dphi_dv(u_, v_, w_, young_E, poisson_nu)
dphi_dw_ = dphi_dw(u_, v_, w_, young_E, poisson_nu)
du_dup_ = du_dup(u0)
dup_dI4_ = dup_dI4(I4_)
dv_dvp_ = dv_dvp(v0)
dvp_dI4_ = dvp_dI4(I4_, I5_)
dvp_dI5_ = dvp_dI5(I4_)
dw_dwp_ = dw_dwp(w0)
dwp_dI4_ = dwp_dI4(I4_, I5_, I6_)
dwp_dI5_ = dwp_dI5(I4_, I5_, I6_)
dwp_dI6_ = dwp_dI6(I4_, I5_, I6_)

d2phi_dBxdepsyz_public = d2phi_dBxdepsyz(d2I6_dBxdeyz_, d2phi_dudv_, &
      d2phi_dudw_, d2phi_dv2_, d2phi_dvdw_, d2phi_dw2_, d2vp_dI4dI5_, &
      d2wp_dI4dI5_, d2wp_dI4dI6_, d2wp_dI52_, d2wp_dI5dI6_, d2wp_dI62_, &
      dI4_dBx_, dI5_dBx_, dI5_deyz_, dI6_dBx_, dI6_deyz_, deyz_depsyz_, &
      dphi_dv_, dphi_dw_, du_dup_, dup_dI4_, dv_dvp_, dvp_dI4_, dvp_dI5_, &
      dw_dwp_, dwp_dI4_, dwp_dI5_, dwp_dI6_)

end function

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
REAL(KIND=dp) exx_
REAL(KIND=dp) exy_
REAL(KIND=dp) eyy_
REAL(KIND=dp) eyz_
REAL(KIND=dp) ezx_
REAL(KIND=dp) ezz_
REAL(KIND=dp) I4_
REAL(KIND=dp) I5_
REAL(KIND=dp) I6_
REAL(KIND=dp) up_
REAL(KIND=dp) vp_
REAL(KIND=dp) wp_
REAL(KIND=dp) u_
REAL(KIND=dp) v_
REAL(KIND=dp) w_
REAL(KIND=dp) d2I5_dBxdezx_
REAL(KIND=dp) d2I6_dBxdezx_
REAL(KIND=dp) d2phi_dudv_
REAL(KIND=dp) d2phi_dudw_
REAL(KIND=dp) d2phi_dv2_
REAL(KIND=dp) d2phi_dvdw_
REAL(KIND=dp) d2phi_dw2_
REAL(KIND=dp) d2vp_dI4dI5_
REAL(KIND=dp) d2wp_dI4dI5_
REAL(KIND=dp) d2wp_dI4dI6_
REAL(KIND=dp) d2wp_dI52_
REAL(KIND=dp) d2wp_dI5dI6_
REAL(KIND=dp) d2wp_dI62_
REAL(KIND=dp) dI4_dBx_
REAL(KIND=dp) dI5_dBx_
REAL(KIND=dp) dI5_dezx_
REAL(KIND=dp) dI6_dBx_
REAL(KIND=dp) dI6_dezx_
REAL(KIND=dp) dezx_depszx_
REAL(KIND=dp) dphi_dv_
REAL(KIND=dp) dphi_dw_
REAL(KIND=dp) du_dup_
REAL(KIND=dp) dup_dI4_
REAL(KIND=dp) dv_dvp_
REAL(KIND=dp) dvp_dI4_
REAL(KIND=dp) dvp_dI5_
REAL(KIND=dp) dw_dwp_
REAL(KIND=dp) dwp_dI4_
REAL(KIND=dp) dwp_dI5_
REAL(KIND=dp) dwp_dI6_

exx_ = exx(epsxx, epsyy, epszz)
exy_ = exy(epsxy)
eyy_ = eyy(epsxx, epsyy, epszz)
eyz_ = eyz(epsyz)
ezx_ = ezx(epszx)
ezz_ = ezz(epsxx, epsyy, epszz)
I4_ = I4(Bx, By, Bz)
I5_ = I5(Bx, By, Bz, exx_, exy_, eyy_, eyz_, ezx_, ezz_)
I6_ = I6(Bx, By, Bz, exx_, exy_, eyy_, eyz_, ezx_, ezz_)
up_ = up(I4_)
vp_ = vp(I4_, I5_)
wp_ = wp(I4_, I5_, I6_)
u_ = u(u0, up_)
v_ = v(v0, vp_)
w_ = w(w0, wp_)
d2I5_dBxdezx_ = d2I5_dBxdezx(Bz)
d2I6_dBxdezx_ = d2I6_dBxdezx(Bx, By, Bz, exx_, eyz_, ezx_, ezz_)
d2phi_dudv_ = d2phi_dudv(u_, v_, w_, young_E, poisson_nu)
d2phi_dudw_ = d2phi_dudw(u_, v_, w_, young_E, poisson_nu)
d2phi_dv2_ = d2phi_dv2(u_, v_, w_, young_E, poisson_nu)
d2phi_dvdw_ = d2phi_dvdw(u_, v_, w_, young_E, poisson_nu)
d2phi_dw2_ = d2phi_dw2(u_, v_, w_, young_E, poisson_nu)
d2vp_dI4dI5_ = d2vp_dI4dI5(I4_)
d2wp_dI4dI5_ = d2wp_dI4dI5(I4_, I5_, I6_)
d2wp_dI4dI6_ = d2wp_dI4dI6(I4_, I5_, I6_)
d2wp_dI52_ = d2wp_dI52(I4_, I5_, I6_)
d2wp_dI5dI6_ = d2wp_dI5dI6(I4_, I5_, I6_)
d2wp_dI62_ = d2wp_dI62(I4_, I5_, I6_)
dI4_dBx_ = dI4_dBx(Bx)
dI5_dBx_ = dI5_dBx(Bx, By, Bz, exx_, exy_, ezx_)
dI5_dezx_ = dI5_dezx(Bx, Bz)
dI6_dBx_ = dI6_dBx(Bx, By, Bz, exx_, exy_, eyy_, eyz_, ezx_, ezz_)
dI6_dezx_ = dI6_dezx(Bx, By, Bz, exx_, exy_, eyz_, ezx_, ezz_)
dezx_depszx_ = dezx_depszx()
dphi_dv_ = dphi_dv(u_, v_, w_, young_E, poisson_nu)
dphi_dw_ = dphi_dw(u_, v_, w_, young_E, poisson_nu)
du_dup_ = du_dup(u0)
dup_dI4_ = dup_dI4(I4_)
dv_dvp_ = dv_dvp(v0)
dvp_dI4_ = dvp_dI4(I4_, I5_)
dvp_dI5_ = dvp_dI5(I4_)
dw_dwp_ = dw_dwp(w0)
dwp_dI4_ = dwp_dI4(I4_, I5_, I6_)
dwp_dI5_ = dwp_dI5(I4_, I5_, I6_)
dwp_dI6_ = dwp_dI6(I4_, I5_, I6_)

d2phi_dBxdepszx_public = d2phi_dBxdepszx(d2I5_dBxdezx_, d2I6_dBxdezx_, &
      d2phi_dudv_, d2phi_dudw_, d2phi_dv2_, d2phi_dvdw_, d2phi_dw2_, &
      d2vp_dI4dI5_, d2wp_dI4dI5_, d2wp_dI4dI6_, d2wp_dI52_, d2wp_dI5dI6_, &
      d2wp_dI62_, dI4_dBx_, dI5_dBx_, dI5_dezx_, dI6_dBx_, dI6_dezx_, &
      dezx_depszx_, dphi_dv_, dphi_dw_, du_dup_, dup_dI4_, dv_dvp_, &
      dvp_dI4_, dvp_dI5_, dw_dwp_, dwp_dI4_, dwp_dI5_, dwp_dI6_)

end function

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
REAL(KIND=dp) exx_
REAL(KIND=dp) exy_
REAL(KIND=dp) eyy_
REAL(KIND=dp) eyz_
REAL(KIND=dp) ezx_
REAL(KIND=dp) ezz_
REAL(KIND=dp) I4_
REAL(KIND=dp) I5_
REAL(KIND=dp) I6_
REAL(KIND=dp) up_
REAL(KIND=dp) vp_
REAL(KIND=dp) wp_
REAL(KIND=dp) u_
REAL(KIND=dp) v_
REAL(KIND=dp) w_
REAL(KIND=dp) d2I5_dBxdexx_
REAL(KIND=dp) d2I6_dBxdexx_
REAL(KIND=dp) d2I6_dBxdeyy_
REAL(KIND=dp) d2I6_dBxdezz_
REAL(KIND=dp) d2phi_dudv_
REAL(KIND=dp) d2phi_dudw_
REAL(KIND=dp) d2phi_dv2_
REAL(KIND=dp) d2phi_dvdw_
REAL(KIND=dp) d2phi_dw2_
REAL(KIND=dp) d2vp_dI4dI5_
REAL(KIND=dp) d2wp_dI4dI5_
REAL(KIND=dp) d2wp_dI4dI6_
REAL(KIND=dp) d2wp_dI52_
REAL(KIND=dp) d2wp_dI5dI6_
REAL(KIND=dp) d2wp_dI62_
REAL(KIND=dp) dI4_dBx_
REAL(KIND=dp) dI5_dBx_
REAL(KIND=dp) dI5_dexx_
REAL(KIND=dp) dI5_deyy_
REAL(KIND=dp) dI5_dezz_
REAL(KIND=dp) dI6_dBx_
REAL(KIND=dp) dI6_dexx_
REAL(KIND=dp) dI6_deyy_
REAL(KIND=dp) dI6_dezz_
REAL(KIND=dp) dexx_depszz_
REAL(KIND=dp) deyy_depszz_
REAL(KIND=dp) dezz_depszz_
REAL(KIND=dp) dphi_dv_
REAL(KIND=dp) dphi_dw_
REAL(KIND=dp) du_dup_
REAL(KIND=dp) dup_dI4_
REAL(KIND=dp) dv_dvp_
REAL(KIND=dp) dvp_dI4_
REAL(KIND=dp) dvp_dI5_
REAL(KIND=dp) dw_dwp_
REAL(KIND=dp) dwp_dI4_
REAL(KIND=dp) dwp_dI5_
REAL(KIND=dp) dwp_dI6_

exx_ = exx(epsxx, epsyy, epszz)
exy_ = exy(epsxy)
eyy_ = eyy(epsxx, epsyy, epszz)
eyz_ = eyz(epsyz)
ezx_ = ezx(epszx)
ezz_ = ezz(epsxx, epsyy, epszz)
I4_ = I4(Bx, By, Bz)
I5_ = I5(Bx, By, Bz, exx_, exy_, eyy_, eyz_, ezx_, ezz_)
I6_ = I6(Bx, By, Bz, exx_, exy_, eyy_, eyz_, ezx_, ezz_)
up_ = up(I4_)
vp_ = vp(I4_, I5_)
wp_ = wp(I4_, I5_, I6_)
u_ = u(u0, up_)
v_ = v(v0, vp_)
w_ = w(w0, wp_)
d2I5_dBxdexx_ = d2I5_dBxdexx(Bx)
d2I6_dBxdexx_ = d2I6_dBxdexx(Bx, By, Bz, exx_, exy_, ezx_)
d2I6_dBxdeyy_ = d2I6_dBxdeyy(By, exy_)
d2I6_dBxdezz_ = d2I6_dBxdezz(Bz, ezx_)
d2phi_dudv_ = d2phi_dudv(u_, v_, w_, young_E, poisson_nu)
d2phi_dudw_ = d2phi_dudw(u_, v_, w_, young_E, poisson_nu)
d2phi_dv2_ = d2phi_dv2(u_, v_, w_, young_E, poisson_nu)
d2phi_dvdw_ = d2phi_dvdw(u_, v_, w_, young_E, poisson_nu)
d2phi_dw2_ = d2phi_dw2(u_, v_, w_, young_E, poisson_nu)
d2vp_dI4dI5_ = d2vp_dI4dI5(I4_)
d2wp_dI4dI5_ = d2wp_dI4dI5(I4_, I5_, I6_)
d2wp_dI4dI6_ = d2wp_dI4dI6(I4_, I5_, I6_)
d2wp_dI52_ = d2wp_dI52(I4_, I5_, I6_)
d2wp_dI5dI6_ = d2wp_dI5dI6(I4_, I5_, I6_)
d2wp_dI62_ = d2wp_dI62(I4_, I5_, I6_)
dI4_dBx_ = dI4_dBx(Bx)
dI5_dBx_ = dI5_dBx(Bx, By, Bz, exx_, exy_, ezx_)
dI5_dexx_ = dI5_dexx(Bx)
dI5_deyy_ = dI5_deyy(By)
dI5_dezz_ = dI5_dezz(Bz)
dI6_dBx_ = dI6_dBx(Bx, By, Bz, exx_, exy_, eyy_, eyz_, ezx_, ezz_)
dI6_dexx_ = dI6_dexx(Bx, By, Bz, exx_, exy_, ezx_)
dI6_deyy_ = dI6_deyy(Bx, By, Bz, exy_, eyy_, eyz_)
dI6_dezz_ = dI6_dezz(Bx, By, Bz, eyz_, ezx_, ezz_)
dexx_depszz_ = dexx_depszz()
deyy_depszz_ = deyy_depszz()
dezz_depszz_ = dezz_depszz()
dphi_dv_ = dphi_dv(u_, v_, w_, young_E, poisson_nu)
dphi_dw_ = dphi_dw(u_, v_, w_, young_E, poisson_nu)
du_dup_ = du_dup(u0)
dup_dI4_ = dup_dI4(I4_)
dv_dvp_ = dv_dvp(v0)
dvp_dI4_ = dvp_dI4(I4_, I5_)
dvp_dI5_ = dvp_dI5(I4_)
dw_dwp_ = dw_dwp(w0)
dwp_dI4_ = dwp_dI4(I4_, I5_, I6_)
dwp_dI5_ = dwp_dI5(I4_, I5_, I6_)
dwp_dI6_ = dwp_dI6(I4_, I5_, I6_)

d2phi_dBxdepszz_public = d2phi_dBxdepszz(d2I5_dBxdexx_, d2I6_dBxdexx_, &
      d2I6_dBxdeyy_, d2I6_dBxdezz_, d2phi_dudv_, d2phi_dudw_, d2phi_dv2_, &
      d2phi_dvdw_, d2phi_dw2_, d2vp_dI4dI5_, d2wp_dI4dI5_, d2wp_dI4dI6_, &
      d2wp_dI52_, d2wp_dI5dI6_, d2wp_dI62_, dI4_dBx_, dI5_dBx_, dI5_dexx_, &
      dI5_deyy_, dI5_dezz_, dI6_dBx_, dI6_dexx_, dI6_deyy_, dI6_dezz_, &
      dexx_depszz_, deyy_depszz_, dezz_depszz_, dphi_dv_, dphi_dw_, du_dup_, &
      dup_dI4_, dv_dvp_, dvp_dI4_, dvp_dI5_, dw_dwp_, dwp_dI4_, dwp_dI5_, &
      dwp_dI6_)

end function

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
REAL(KIND=dp) exx_
REAL(KIND=dp) exy_
REAL(KIND=dp) eyy_
REAL(KIND=dp) eyz_
REAL(KIND=dp) ezx_
REAL(KIND=dp) ezz_
REAL(KIND=dp) I4_
REAL(KIND=dp) I5_
REAL(KIND=dp) I6_
REAL(KIND=dp) up_
REAL(KIND=dp) vp_
REAL(KIND=dp) wp_
REAL(KIND=dp) u_
REAL(KIND=dp) v_
REAL(KIND=dp) w_
REAL(KIND=dp) dI4_dBy_
REAL(KIND=dp) dI5_dBy_
REAL(KIND=dp) dI6_dBy_
REAL(KIND=dp) dphi_du_
REAL(KIND=dp) dphi_dv_
REAL(KIND=dp) dphi_dw_
REAL(KIND=dp) du_dup_
REAL(KIND=dp) dup_dI4_
REAL(KIND=dp) dv_dvp_
REAL(KIND=dp) dvp_dI4_
REAL(KIND=dp) dvp_dI5_
REAL(KIND=dp) dw_dwp_
REAL(KIND=dp) dwp_dI4_
REAL(KIND=dp) dwp_dI5_
REAL(KIND=dp) dwp_dI6_

exx_ = exx(epsxx, epsyy, epszz)
exy_ = exy(epsxy)
eyy_ = eyy(epsxx, epsyy, epszz)
eyz_ = eyz(epsyz)
ezx_ = ezx(epszx)
ezz_ = ezz(epsxx, epsyy, epszz)
I4_ = I4(Bx, By, Bz)
I5_ = I5(Bx, By, Bz, exx_, exy_, eyy_, eyz_, ezx_, ezz_)
I6_ = I6(Bx, By, Bz, exx_, exy_, eyy_, eyz_, ezx_, ezz_)
up_ = up(I4_)
vp_ = vp(I4_, I5_)
wp_ = wp(I4_, I5_, I6_)
u_ = u(u0, up_)
v_ = v(v0, vp_)
w_ = w(w0, wp_)
dI4_dBy_ = dI4_dBy(By)
dI5_dBy_ = dI5_dBy(Bx, By, Bz, exy_, eyy_, eyz_)
dI6_dBy_ = dI6_dBy(Bx, By, Bz, exx_, exy_, eyy_, eyz_, ezx_, ezz_)
dphi_du_ = dphi_du(u_, v_, w_, young_E, poisson_nu)
dphi_dv_ = dphi_dv(u_, v_, w_, young_E, poisson_nu)
dphi_dw_ = dphi_dw(u_, v_, w_, young_E, poisson_nu)
du_dup_ = du_dup(u0)
dup_dI4_ = dup_dI4(I4_)
dv_dvp_ = dv_dvp(v0)
dvp_dI4_ = dvp_dI4(I4_, I5_)
dvp_dI5_ = dvp_dI5(I4_)
dw_dwp_ = dw_dwp(w0)
dwp_dI4_ = dwp_dI4(I4_, I5_, I6_)
dwp_dI5_ = dwp_dI5(I4_, I5_, I6_)
dwp_dI6_ = dwp_dI6(I4_, I5_, I6_)

dphi_dBy_public = dphi_dBy(dI4_dBy_, dI5_dBy_, dI6_dBy_, dphi_du_, dphi_dv_, &
      dphi_dw_, du_dup_, dup_dI4_, dv_dvp_, dvp_dI4_, dvp_dI5_, dw_dwp_, &
      dwp_dI4_, dwp_dI5_, dwp_dI6_)

end function

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
REAL(KIND=dp) exx_
REAL(KIND=dp) exy_
REAL(KIND=dp) eyy_
REAL(KIND=dp) eyz_
REAL(KIND=dp) ezx_
REAL(KIND=dp) ezz_
REAL(KIND=dp) I4_
REAL(KIND=dp) I5_
REAL(KIND=dp) I6_
REAL(KIND=dp) up_
REAL(KIND=dp) vp_
REAL(KIND=dp) wp_
REAL(KIND=dp) u_
REAL(KIND=dp) v_
REAL(KIND=dp) w_
REAL(KIND=dp) d2I4_dBy2_
REAL(KIND=dp) d2I5_dBy2_
REAL(KIND=dp) d2I6_dBy2_
REAL(KIND=dp) d2phi_du2_
REAL(KIND=dp) d2phi_dudv_
REAL(KIND=dp) d2phi_dudw_
REAL(KIND=dp) d2phi_dv2_
REAL(KIND=dp) d2phi_dvdw_
REAL(KIND=dp) d2phi_dw2_
REAL(KIND=dp) d2up_dI42_
REAL(KIND=dp) d2vp_dI42_
REAL(KIND=dp) d2vp_dI4dI5_
REAL(KIND=dp) d2wp_dI42_
REAL(KIND=dp) d2wp_dI4dI5_
REAL(KIND=dp) d2wp_dI4dI6_
REAL(KIND=dp) d2wp_dI52_
REAL(KIND=dp) d2wp_dI5dI6_
REAL(KIND=dp) d2wp_dI62_
REAL(KIND=dp) dI4_dBy_
REAL(KIND=dp) dI5_dBy_
REAL(KIND=dp) dI6_dBy_
REAL(KIND=dp) dphi_du_
REAL(KIND=dp) dphi_dv_
REAL(KIND=dp) dphi_dw_
REAL(KIND=dp) du_dup_
REAL(KIND=dp) dup_dI4_
REAL(KIND=dp) dv_dvp_
REAL(KIND=dp) dvp_dI4_
REAL(KIND=dp) dvp_dI5_
REAL(KIND=dp) dw_dwp_
REAL(KIND=dp) dwp_dI4_
REAL(KIND=dp) dwp_dI5_
REAL(KIND=dp) dwp_dI6_

exx_ = exx(epsxx, epsyy, epszz)
exy_ = exy(epsxy)
eyy_ = eyy(epsxx, epsyy, epszz)
eyz_ = eyz(epsyz)
ezx_ = ezx(epszx)
ezz_ = ezz(epsxx, epsyy, epszz)
I4_ = I4(Bx, By, Bz)
I5_ = I5(Bx, By, Bz, exx_, exy_, eyy_, eyz_, ezx_, ezz_)
I6_ = I6(Bx, By, Bz, exx_, exy_, eyy_, eyz_, ezx_, ezz_)
up_ = up(I4_)
vp_ = vp(I4_, I5_)
wp_ = wp(I4_, I5_, I6_)
u_ = u(u0, up_)
v_ = v(v0, vp_)
w_ = w(w0, wp_)
d2I4_dBy2_ = d2I4_dBy2()
d2I5_dBy2_ = d2I5_dBy2(eyy_)
d2I6_dBy2_ = d2I6_dBy2(exy_, eyy_, eyz_)
d2phi_du2_ = d2phi_du2(u_, v_, w_, young_E, poisson_nu)
d2phi_dudv_ = d2phi_dudv(u_, v_, w_, young_E, poisson_nu)
d2phi_dudw_ = d2phi_dudw(u_, v_, w_, young_E, poisson_nu)
d2phi_dv2_ = d2phi_dv2(u_, v_, w_, young_E, poisson_nu)
d2phi_dvdw_ = d2phi_dvdw(u_, v_, w_, young_E, poisson_nu)
d2phi_dw2_ = d2phi_dw2(u_, v_, w_, young_E, poisson_nu)
d2up_dI42_ = d2up_dI42(I4_)
d2vp_dI42_ = d2vp_dI42(I4_, I5_)
d2vp_dI4dI5_ = d2vp_dI4dI5(I4_)
d2wp_dI42_ = d2wp_dI42(I4_, I5_, I6_)
d2wp_dI4dI5_ = d2wp_dI4dI5(I4_, I5_, I6_)
d2wp_dI4dI6_ = d2wp_dI4dI6(I4_, I5_, I6_)
d2wp_dI52_ = d2wp_dI52(I4_, I5_, I6_)
d2wp_dI5dI6_ = d2wp_dI5dI6(I4_, I5_, I6_)
d2wp_dI62_ = d2wp_dI62(I4_, I5_, I6_)
dI4_dBy_ = dI4_dBy(By)
dI5_dBy_ = dI5_dBy(Bx, By, Bz, exy_, eyy_, eyz_)
dI6_dBy_ = dI6_dBy(Bx, By, Bz, exx_, exy_, eyy_, eyz_, ezx_, ezz_)
dphi_du_ = dphi_du(u_, v_, w_, young_E, poisson_nu)
dphi_dv_ = dphi_dv(u_, v_, w_, young_E, poisson_nu)
dphi_dw_ = dphi_dw(u_, v_, w_, young_E, poisson_nu)
du_dup_ = du_dup(u0)
dup_dI4_ = dup_dI4(I4_)
dv_dvp_ = dv_dvp(v0)
dvp_dI4_ = dvp_dI4(I4_, I5_)
dvp_dI5_ = dvp_dI5(I4_)
dw_dwp_ = dw_dwp(w0)
dwp_dI4_ = dwp_dI4(I4_, I5_, I6_)
dwp_dI5_ = dwp_dI5(I4_, I5_, I6_)
dwp_dI6_ = dwp_dI6(I4_, I5_, I6_)

d2phi_dBy2_public = d2phi_dBy2(d2I4_dBy2_, d2I5_dBy2_, d2I6_dBy2_, &
      d2phi_du2_, d2phi_dudv_, d2phi_dudw_, d2phi_dv2_, d2phi_dvdw_, &
      d2phi_dw2_, d2up_dI42_, d2vp_dI42_, d2vp_dI4dI5_, d2wp_dI42_, &
      d2wp_dI4dI5_, d2wp_dI4dI6_, d2wp_dI52_, d2wp_dI5dI6_, d2wp_dI62_, &
      dI4_dBy_, dI5_dBy_, dI6_dBy_, dphi_du_, dphi_dv_, dphi_dw_, du_dup_, &
      dup_dI4_, dv_dvp_, dvp_dI4_, dvp_dI5_, dw_dwp_, dwp_dI4_, dwp_dI5_, &
      dwp_dI6_)

end function

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
REAL(KIND=dp) exx_
REAL(KIND=dp) exy_
REAL(KIND=dp) eyy_
REAL(KIND=dp) eyz_
REAL(KIND=dp) ezx_
REAL(KIND=dp) ezz_
REAL(KIND=dp) I4_
REAL(KIND=dp) I5_
REAL(KIND=dp) I6_
REAL(KIND=dp) up_
REAL(KIND=dp) vp_
REAL(KIND=dp) wp_
REAL(KIND=dp) u_
REAL(KIND=dp) v_
REAL(KIND=dp) w_
REAL(KIND=dp) d2I5_dBydBz_
REAL(KIND=dp) d2I6_dBydBz_
REAL(KIND=dp) d2phi_du2_
REAL(KIND=dp) d2phi_dudv_
REAL(KIND=dp) d2phi_dudw_
REAL(KIND=dp) d2phi_dv2_
REAL(KIND=dp) d2phi_dvdw_
REAL(KIND=dp) d2phi_dw2_
REAL(KIND=dp) d2up_dI42_
REAL(KIND=dp) d2vp_dI42_
REAL(KIND=dp) d2vp_dI4dI5_
REAL(KIND=dp) d2wp_dI42_
REAL(KIND=dp) d2wp_dI4dI5_
REAL(KIND=dp) d2wp_dI4dI6_
REAL(KIND=dp) d2wp_dI52_
REAL(KIND=dp) d2wp_dI5dI6_
REAL(KIND=dp) d2wp_dI62_
REAL(KIND=dp) dI4_dBy_
REAL(KIND=dp) dI4_dBz_
REAL(KIND=dp) dI5_dBy_
REAL(KIND=dp) dI5_dBz_
REAL(KIND=dp) dI6_dBy_
REAL(KIND=dp) dI6_dBz_
REAL(KIND=dp) dphi_du_
REAL(KIND=dp) dphi_dv_
REAL(KIND=dp) dphi_dw_
REAL(KIND=dp) du_dup_
REAL(KIND=dp) dup_dI4_
REAL(KIND=dp) dv_dvp_
REAL(KIND=dp) dvp_dI4_
REAL(KIND=dp) dvp_dI5_
REAL(KIND=dp) dw_dwp_
REAL(KIND=dp) dwp_dI4_
REAL(KIND=dp) dwp_dI5_
REAL(KIND=dp) dwp_dI6_

exx_ = exx(epsxx, epsyy, epszz)
exy_ = exy(epsxy)
eyy_ = eyy(epsxx, epsyy, epszz)
eyz_ = eyz(epsyz)
ezx_ = ezx(epszx)
ezz_ = ezz(epsxx, epsyy, epszz)
I4_ = I4(Bx, By, Bz)
I5_ = I5(Bx, By, Bz, exx_, exy_, eyy_, eyz_, ezx_, ezz_)
I6_ = I6(Bx, By, Bz, exx_, exy_, eyy_, eyz_, ezx_, ezz_)
up_ = up(I4_)
vp_ = vp(I4_, I5_)
wp_ = wp(I4_, I5_, I6_)
u_ = u(u0, up_)
v_ = v(v0, vp_)
w_ = w(w0, wp_)
d2I5_dBydBz_ = d2I5_dBydBz(eyz_)
d2I6_dBydBz_ = d2I6_dBydBz(exy_, eyy_, eyz_, ezx_, ezz_)
d2phi_du2_ = d2phi_du2(u_, v_, w_, young_E, poisson_nu)
d2phi_dudv_ = d2phi_dudv(u_, v_, w_, young_E, poisson_nu)
d2phi_dudw_ = d2phi_dudw(u_, v_, w_, young_E, poisson_nu)
d2phi_dv2_ = d2phi_dv2(u_, v_, w_, young_E, poisson_nu)
d2phi_dvdw_ = d2phi_dvdw(u_, v_, w_, young_E, poisson_nu)
d2phi_dw2_ = d2phi_dw2(u_, v_, w_, young_E, poisson_nu)
d2up_dI42_ = d2up_dI42(I4_)
d2vp_dI42_ = d2vp_dI42(I4_, I5_)
d2vp_dI4dI5_ = d2vp_dI4dI5(I4_)
d2wp_dI42_ = d2wp_dI42(I4_, I5_, I6_)
d2wp_dI4dI5_ = d2wp_dI4dI5(I4_, I5_, I6_)
d2wp_dI4dI6_ = d2wp_dI4dI6(I4_, I5_, I6_)
d2wp_dI52_ = d2wp_dI52(I4_, I5_, I6_)
d2wp_dI5dI6_ = d2wp_dI5dI6(I4_, I5_, I6_)
d2wp_dI62_ = d2wp_dI62(I4_, I5_, I6_)
dI4_dBy_ = dI4_dBy(By)
dI4_dBz_ = dI4_dBz(Bz)
dI5_dBy_ = dI5_dBy(Bx, By, Bz, exy_, eyy_, eyz_)
dI5_dBz_ = dI5_dBz(Bx, By, Bz, eyz_, ezx_, ezz_)
dI6_dBy_ = dI6_dBy(Bx, By, Bz, exx_, exy_, eyy_, eyz_, ezx_, ezz_)
dI6_dBz_ = dI6_dBz(Bx, By, Bz, exx_, exy_, eyy_, eyz_, ezx_, ezz_)
dphi_du_ = dphi_du(u_, v_, w_, young_E, poisson_nu)
dphi_dv_ = dphi_dv(u_, v_, w_, young_E, poisson_nu)
dphi_dw_ = dphi_dw(u_, v_, w_, young_E, poisson_nu)
du_dup_ = du_dup(u0)
dup_dI4_ = dup_dI4(I4_)
dv_dvp_ = dv_dvp(v0)
dvp_dI4_ = dvp_dI4(I4_, I5_)
dvp_dI5_ = dvp_dI5(I4_)
dw_dwp_ = dw_dwp(w0)
dwp_dI4_ = dwp_dI4(I4_, I5_, I6_)
dwp_dI5_ = dwp_dI5(I4_, I5_, I6_)
dwp_dI6_ = dwp_dI6(I4_, I5_, I6_)

d2phi_dBydBz_public = d2phi_dBydBz(d2I5_dBydBz_, d2I6_dBydBz_, d2phi_du2_, &
      d2phi_dudv_, d2phi_dudw_, d2phi_dv2_, d2phi_dvdw_, d2phi_dw2_, &
      d2up_dI42_, d2vp_dI42_, d2vp_dI4dI5_, d2wp_dI42_, d2wp_dI4dI5_, &
      d2wp_dI4dI6_, d2wp_dI52_, d2wp_dI5dI6_, d2wp_dI62_, dI4_dBy_, &
      dI4_dBz_, dI5_dBy_, dI5_dBz_, dI6_dBy_, dI6_dBz_, dphi_du_, dphi_dv_, &
      dphi_dw_, du_dup_, dup_dI4_, dv_dvp_, dvp_dI4_, dvp_dI5_, dw_dwp_, &
      dwp_dI4_, dwp_dI5_, dwp_dI6_)

end function

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
REAL(KIND=dp) exx_
REAL(KIND=dp) exy_
REAL(KIND=dp) eyy_
REAL(KIND=dp) eyz_
REAL(KIND=dp) ezx_
REAL(KIND=dp) ezz_
REAL(KIND=dp) I4_
REAL(KIND=dp) I5_
REAL(KIND=dp) I6_
REAL(KIND=dp) up_
REAL(KIND=dp) vp_
REAL(KIND=dp) wp_
REAL(KIND=dp) u_
REAL(KIND=dp) v_
REAL(KIND=dp) w_
REAL(KIND=dp) d2I5_dBydeyy_
REAL(KIND=dp) d2I6_dBydexx_
REAL(KIND=dp) d2I6_dBydeyy_
REAL(KIND=dp) d2I6_dBydezz_
REAL(KIND=dp) d2phi_dudv_
REAL(KIND=dp) d2phi_dudw_
REAL(KIND=dp) d2phi_dv2_
REAL(KIND=dp) d2phi_dvdw_
REAL(KIND=dp) d2phi_dw2_
REAL(KIND=dp) d2vp_dI4dI5_
REAL(KIND=dp) d2wp_dI4dI5_
REAL(KIND=dp) d2wp_dI4dI6_
REAL(KIND=dp) d2wp_dI52_
REAL(KIND=dp) d2wp_dI5dI6_
REAL(KIND=dp) d2wp_dI62_
REAL(KIND=dp) dI4_dBy_
REAL(KIND=dp) dI5_dBy_
REAL(KIND=dp) dI5_dexx_
REAL(KIND=dp) dI5_deyy_
REAL(KIND=dp) dI5_dezz_
REAL(KIND=dp) dI6_dBy_
REAL(KIND=dp) dI6_dexx_
REAL(KIND=dp) dI6_deyy_
REAL(KIND=dp) dI6_dezz_
REAL(KIND=dp) dexx_depsxx_
REAL(KIND=dp) deyy_depsxx_
REAL(KIND=dp) dezz_depsxx_
REAL(KIND=dp) dphi_dv_
REAL(KIND=dp) dphi_dw_
REAL(KIND=dp) du_dup_
REAL(KIND=dp) dup_dI4_
REAL(KIND=dp) dv_dvp_
REAL(KIND=dp) dvp_dI4_
REAL(KIND=dp) dvp_dI5_
REAL(KIND=dp) dw_dwp_
REAL(KIND=dp) dwp_dI4_
REAL(KIND=dp) dwp_dI5_
REAL(KIND=dp) dwp_dI6_

exx_ = exx(epsxx, epsyy, epszz)
exy_ = exy(epsxy)
eyy_ = eyy(epsxx, epsyy, epszz)
eyz_ = eyz(epsyz)
ezx_ = ezx(epszx)
ezz_ = ezz(epsxx, epsyy, epszz)
I4_ = I4(Bx, By, Bz)
I5_ = I5(Bx, By, Bz, exx_, exy_, eyy_, eyz_, ezx_, ezz_)
I6_ = I6(Bx, By, Bz, exx_, exy_, eyy_, eyz_, ezx_, ezz_)
up_ = up(I4_)
vp_ = vp(I4_, I5_)
wp_ = wp(I4_, I5_, I6_)
u_ = u(u0, up_)
v_ = v(v0, vp_)
w_ = w(w0, wp_)
d2I5_dBydeyy_ = d2I5_dBydeyy(By)
d2I6_dBydexx_ = d2I6_dBydexx(Bx, exy_)
d2I6_dBydeyy_ = d2I6_dBydeyy(Bx, By, Bz, exy_, eyy_, eyz_)
d2I6_dBydezz_ = d2I6_dBydezz(Bz, eyz_)
d2phi_dudv_ = d2phi_dudv(u_, v_, w_, young_E, poisson_nu)
d2phi_dudw_ = d2phi_dudw(u_, v_, w_, young_E, poisson_nu)
d2phi_dv2_ = d2phi_dv2(u_, v_, w_, young_E, poisson_nu)
d2phi_dvdw_ = d2phi_dvdw(u_, v_, w_, young_E, poisson_nu)
d2phi_dw2_ = d2phi_dw2(u_, v_, w_, young_E, poisson_nu)
d2vp_dI4dI5_ = d2vp_dI4dI5(I4_)
d2wp_dI4dI5_ = d2wp_dI4dI5(I4_, I5_, I6_)
d2wp_dI4dI6_ = d2wp_dI4dI6(I4_, I5_, I6_)
d2wp_dI52_ = d2wp_dI52(I4_, I5_, I6_)
d2wp_dI5dI6_ = d2wp_dI5dI6(I4_, I5_, I6_)
d2wp_dI62_ = d2wp_dI62(I4_, I5_, I6_)
dI4_dBy_ = dI4_dBy(By)
dI5_dBy_ = dI5_dBy(Bx, By, Bz, exy_, eyy_, eyz_)
dI5_dexx_ = dI5_dexx(Bx)
dI5_deyy_ = dI5_deyy(By)
dI5_dezz_ = dI5_dezz(Bz)
dI6_dBy_ = dI6_dBy(Bx, By, Bz, exx_, exy_, eyy_, eyz_, ezx_, ezz_)
dI6_dexx_ = dI6_dexx(Bx, By, Bz, exx_, exy_, ezx_)
dI6_deyy_ = dI6_deyy(Bx, By, Bz, exy_, eyy_, eyz_)
dI6_dezz_ = dI6_dezz(Bx, By, Bz, eyz_, ezx_, ezz_)
dexx_depsxx_ = dexx_depsxx()
deyy_depsxx_ = deyy_depsxx()
dezz_depsxx_ = dezz_depsxx()
dphi_dv_ = dphi_dv(u_, v_, w_, young_E, poisson_nu)
dphi_dw_ = dphi_dw(u_, v_, w_, young_E, poisson_nu)
du_dup_ = du_dup(u0)
dup_dI4_ = dup_dI4(I4_)
dv_dvp_ = dv_dvp(v0)
dvp_dI4_ = dvp_dI4(I4_, I5_)
dvp_dI5_ = dvp_dI5(I4_)
dw_dwp_ = dw_dwp(w0)
dwp_dI4_ = dwp_dI4(I4_, I5_, I6_)
dwp_dI5_ = dwp_dI5(I4_, I5_, I6_)
dwp_dI6_ = dwp_dI6(I4_, I5_, I6_)

d2phi_dBydepsxx_public = d2phi_dBydepsxx(d2I5_dBydeyy_, d2I6_dBydexx_, &
      d2I6_dBydeyy_, d2I6_dBydezz_, d2phi_dudv_, d2phi_dudw_, d2phi_dv2_, &
      d2phi_dvdw_, d2phi_dw2_, d2vp_dI4dI5_, d2wp_dI4dI5_, d2wp_dI4dI6_, &
      d2wp_dI52_, d2wp_dI5dI6_, d2wp_dI62_, dI4_dBy_, dI5_dBy_, dI5_dexx_, &
      dI5_deyy_, dI5_dezz_, dI6_dBy_, dI6_dexx_, dI6_deyy_, dI6_dezz_, &
      dexx_depsxx_, deyy_depsxx_, dezz_depsxx_, dphi_dv_, dphi_dw_, du_dup_, &
      dup_dI4_, dv_dvp_, dvp_dI4_, dvp_dI5_, dw_dwp_, dwp_dI4_, dwp_dI5_, &
      dwp_dI6_)

end function

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
REAL(KIND=dp) exx_
REAL(KIND=dp) exy_
REAL(KIND=dp) eyy_
REAL(KIND=dp) eyz_
REAL(KIND=dp) ezx_
REAL(KIND=dp) ezz_
REAL(KIND=dp) I4_
REAL(KIND=dp) I5_
REAL(KIND=dp) I6_
REAL(KIND=dp) up_
REAL(KIND=dp) vp_
REAL(KIND=dp) wp_
REAL(KIND=dp) u_
REAL(KIND=dp) v_
REAL(KIND=dp) w_
REAL(KIND=dp) d2I5_dBydexy_
REAL(KIND=dp) d2I6_dBydexy_
REAL(KIND=dp) d2phi_dudv_
REAL(KIND=dp) d2phi_dudw_
REAL(KIND=dp) d2phi_dv2_
REAL(KIND=dp) d2phi_dvdw_
REAL(KIND=dp) d2phi_dw2_
REAL(KIND=dp) d2vp_dI4dI5_
REAL(KIND=dp) d2wp_dI4dI5_
REAL(KIND=dp) d2wp_dI4dI6_
REAL(KIND=dp) d2wp_dI52_
REAL(KIND=dp) d2wp_dI5dI6_
REAL(KIND=dp) d2wp_dI62_
REAL(KIND=dp) dI4_dBy_
REAL(KIND=dp) dI5_dBy_
REAL(KIND=dp) dI5_dexy_
REAL(KIND=dp) dI6_dBy_
REAL(KIND=dp) dI6_dexy_
REAL(KIND=dp) dexy_depsxy_
REAL(KIND=dp) dphi_dv_
REAL(KIND=dp) dphi_dw_
REAL(KIND=dp) du_dup_
REAL(KIND=dp) dup_dI4_
REAL(KIND=dp) dv_dvp_
REAL(KIND=dp) dvp_dI4_
REAL(KIND=dp) dvp_dI5_
REAL(KIND=dp) dw_dwp_
REAL(KIND=dp) dwp_dI4_
REAL(KIND=dp) dwp_dI5_
REAL(KIND=dp) dwp_dI6_

exx_ = exx(epsxx, epsyy, epszz)
exy_ = exy(epsxy)
eyy_ = eyy(epsxx, epsyy, epszz)
eyz_ = eyz(epsyz)
ezx_ = ezx(epszx)
ezz_ = ezz(epsxx, epsyy, epszz)
I4_ = I4(Bx, By, Bz)
I5_ = I5(Bx, By, Bz, exx_, exy_, eyy_, eyz_, ezx_, ezz_)
I6_ = I6(Bx, By, Bz, exx_, exy_, eyy_, eyz_, ezx_, ezz_)
up_ = up(I4_)
vp_ = vp(I4_, I5_)
wp_ = wp(I4_, I5_, I6_)
u_ = u(u0, up_)
v_ = v(v0, vp_)
w_ = w(w0, wp_)
d2I5_dBydexy_ = d2I5_dBydexy(Bx)
d2I6_dBydexy_ = d2I6_dBydexy(Bx, By, Bz, exx_, exy_, eyy_, ezx_)
d2phi_dudv_ = d2phi_dudv(u_, v_, w_, young_E, poisson_nu)
d2phi_dudw_ = d2phi_dudw(u_, v_, w_, young_E, poisson_nu)
d2phi_dv2_ = d2phi_dv2(u_, v_, w_, young_E, poisson_nu)
d2phi_dvdw_ = d2phi_dvdw(u_, v_, w_, young_E, poisson_nu)
d2phi_dw2_ = d2phi_dw2(u_, v_, w_, young_E, poisson_nu)
d2vp_dI4dI5_ = d2vp_dI4dI5(I4_)
d2wp_dI4dI5_ = d2wp_dI4dI5(I4_, I5_, I6_)
d2wp_dI4dI6_ = d2wp_dI4dI6(I4_, I5_, I6_)
d2wp_dI52_ = d2wp_dI52(I4_, I5_, I6_)
d2wp_dI5dI6_ = d2wp_dI5dI6(I4_, I5_, I6_)
d2wp_dI62_ = d2wp_dI62(I4_, I5_, I6_)
dI4_dBy_ = dI4_dBy(By)
dI5_dBy_ = dI5_dBy(Bx, By, Bz, exy_, eyy_, eyz_)
dI5_dexy_ = dI5_dexy(Bx, By)
dI6_dBy_ = dI6_dBy(Bx, By, Bz, exx_, exy_, eyy_, eyz_, ezx_, ezz_)
dI6_dexy_ = dI6_dexy(Bx, By, Bz, exx_, exy_, eyy_, eyz_, ezx_)
dexy_depsxy_ = dexy_depsxy()
dphi_dv_ = dphi_dv(u_, v_, w_, young_E, poisson_nu)
dphi_dw_ = dphi_dw(u_, v_, w_, young_E, poisson_nu)
du_dup_ = du_dup(u0)
dup_dI4_ = dup_dI4(I4_)
dv_dvp_ = dv_dvp(v0)
dvp_dI4_ = dvp_dI4(I4_, I5_)
dvp_dI5_ = dvp_dI5(I4_)
dw_dwp_ = dw_dwp(w0)
dwp_dI4_ = dwp_dI4(I4_, I5_, I6_)
dwp_dI5_ = dwp_dI5(I4_, I5_, I6_)
dwp_dI6_ = dwp_dI6(I4_, I5_, I6_)

d2phi_dBydepsxy_public = d2phi_dBydepsxy(d2I5_dBydexy_, d2I6_dBydexy_, &
      d2phi_dudv_, d2phi_dudw_, d2phi_dv2_, d2phi_dvdw_, d2phi_dw2_, &
      d2vp_dI4dI5_, d2wp_dI4dI5_, d2wp_dI4dI6_, d2wp_dI52_, d2wp_dI5dI6_, &
      d2wp_dI62_, dI4_dBy_, dI5_dBy_, dI5_dexy_, dI6_dBy_, dI6_dexy_, &
      dexy_depsxy_, dphi_dv_, dphi_dw_, du_dup_, dup_dI4_, dv_dvp_, &
      dvp_dI4_, dvp_dI5_, dw_dwp_, dwp_dI4_, dwp_dI5_, dwp_dI6_)

end function

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
REAL(KIND=dp) exx_
REAL(KIND=dp) exy_
REAL(KIND=dp) eyy_
REAL(KIND=dp) eyz_
REAL(KIND=dp) ezx_
REAL(KIND=dp) ezz_
REAL(KIND=dp) I4_
REAL(KIND=dp) I5_
REAL(KIND=dp) I6_
REAL(KIND=dp) up_
REAL(KIND=dp) vp_
REAL(KIND=dp) wp_
REAL(KIND=dp) u_
REAL(KIND=dp) v_
REAL(KIND=dp) w_
REAL(KIND=dp) d2I5_dBydeyy_
REAL(KIND=dp) d2I6_dBydexx_
REAL(KIND=dp) d2I6_dBydeyy_
REAL(KIND=dp) d2I6_dBydezz_
REAL(KIND=dp) d2phi_dudv_
REAL(KIND=dp) d2phi_dudw_
REAL(KIND=dp) d2phi_dv2_
REAL(KIND=dp) d2phi_dvdw_
REAL(KIND=dp) d2phi_dw2_
REAL(KIND=dp) d2vp_dI4dI5_
REAL(KIND=dp) d2wp_dI4dI5_
REAL(KIND=dp) d2wp_dI4dI6_
REAL(KIND=dp) d2wp_dI52_
REAL(KIND=dp) d2wp_dI5dI6_
REAL(KIND=dp) d2wp_dI62_
REAL(KIND=dp) dI4_dBy_
REAL(KIND=dp) dI5_dBy_
REAL(KIND=dp) dI5_dexx_
REAL(KIND=dp) dI5_deyy_
REAL(KIND=dp) dI5_dezz_
REAL(KIND=dp) dI6_dBy_
REAL(KIND=dp) dI6_dexx_
REAL(KIND=dp) dI6_deyy_
REAL(KIND=dp) dI6_dezz_
REAL(KIND=dp) dexx_depsyy_
REAL(KIND=dp) deyy_depsyy_
REAL(KIND=dp) dezz_depsyy_
REAL(KIND=dp) dphi_dv_
REAL(KIND=dp) dphi_dw_
REAL(KIND=dp) du_dup_
REAL(KIND=dp) dup_dI4_
REAL(KIND=dp) dv_dvp_
REAL(KIND=dp) dvp_dI4_
REAL(KIND=dp) dvp_dI5_
REAL(KIND=dp) dw_dwp_
REAL(KIND=dp) dwp_dI4_
REAL(KIND=dp) dwp_dI5_
REAL(KIND=dp) dwp_dI6_

exx_ = exx(epsxx, epsyy, epszz)
exy_ = exy(epsxy)
eyy_ = eyy(epsxx, epsyy, epszz)
eyz_ = eyz(epsyz)
ezx_ = ezx(epszx)
ezz_ = ezz(epsxx, epsyy, epszz)
I4_ = I4(Bx, By, Bz)
I5_ = I5(Bx, By, Bz, exx_, exy_, eyy_, eyz_, ezx_, ezz_)
I6_ = I6(Bx, By, Bz, exx_, exy_, eyy_, eyz_, ezx_, ezz_)
up_ = up(I4_)
vp_ = vp(I4_, I5_)
wp_ = wp(I4_, I5_, I6_)
u_ = u(u0, up_)
v_ = v(v0, vp_)
w_ = w(w0, wp_)
d2I5_dBydeyy_ = d2I5_dBydeyy(By)
d2I6_dBydexx_ = d2I6_dBydexx(Bx, exy_)
d2I6_dBydeyy_ = d2I6_dBydeyy(Bx, By, Bz, exy_, eyy_, eyz_)
d2I6_dBydezz_ = d2I6_dBydezz(Bz, eyz_)
d2phi_dudv_ = d2phi_dudv(u_, v_, w_, young_E, poisson_nu)
d2phi_dudw_ = d2phi_dudw(u_, v_, w_, young_E, poisson_nu)
d2phi_dv2_ = d2phi_dv2(u_, v_, w_, young_E, poisson_nu)
d2phi_dvdw_ = d2phi_dvdw(u_, v_, w_, young_E, poisson_nu)
d2phi_dw2_ = d2phi_dw2(u_, v_, w_, young_E, poisson_nu)
d2vp_dI4dI5_ = d2vp_dI4dI5(I4_)
d2wp_dI4dI5_ = d2wp_dI4dI5(I4_, I5_, I6_)
d2wp_dI4dI6_ = d2wp_dI4dI6(I4_, I5_, I6_)
d2wp_dI52_ = d2wp_dI52(I4_, I5_, I6_)
d2wp_dI5dI6_ = d2wp_dI5dI6(I4_, I5_, I6_)
d2wp_dI62_ = d2wp_dI62(I4_, I5_, I6_)
dI4_dBy_ = dI4_dBy(By)
dI5_dBy_ = dI5_dBy(Bx, By, Bz, exy_, eyy_, eyz_)
dI5_dexx_ = dI5_dexx(Bx)
dI5_deyy_ = dI5_deyy(By)
dI5_dezz_ = dI5_dezz(Bz)
dI6_dBy_ = dI6_dBy(Bx, By, Bz, exx_, exy_, eyy_, eyz_, ezx_, ezz_)
dI6_dexx_ = dI6_dexx(Bx, By, Bz, exx_, exy_, ezx_)
dI6_deyy_ = dI6_deyy(Bx, By, Bz, exy_, eyy_, eyz_)
dI6_dezz_ = dI6_dezz(Bx, By, Bz, eyz_, ezx_, ezz_)
dexx_depsyy_ = dexx_depsyy()
deyy_depsyy_ = deyy_depsyy()
dezz_depsyy_ = dezz_depsyy()
dphi_dv_ = dphi_dv(u_, v_, w_, young_E, poisson_nu)
dphi_dw_ = dphi_dw(u_, v_, w_, young_E, poisson_nu)
du_dup_ = du_dup(u0)
dup_dI4_ = dup_dI4(I4_)
dv_dvp_ = dv_dvp(v0)
dvp_dI4_ = dvp_dI4(I4_, I5_)
dvp_dI5_ = dvp_dI5(I4_)
dw_dwp_ = dw_dwp(w0)
dwp_dI4_ = dwp_dI4(I4_, I5_, I6_)
dwp_dI5_ = dwp_dI5(I4_, I5_, I6_)
dwp_dI6_ = dwp_dI6(I4_, I5_, I6_)

d2phi_dBydepsyy_public = d2phi_dBydepsyy(d2I5_dBydeyy_, d2I6_dBydexx_, &
      d2I6_dBydeyy_, d2I6_dBydezz_, d2phi_dudv_, d2phi_dudw_, d2phi_dv2_, &
      d2phi_dvdw_, d2phi_dw2_, d2vp_dI4dI5_, d2wp_dI4dI5_, d2wp_dI4dI6_, &
      d2wp_dI52_, d2wp_dI5dI6_, d2wp_dI62_, dI4_dBy_, dI5_dBy_, dI5_dexx_, &
      dI5_deyy_, dI5_dezz_, dI6_dBy_, dI6_dexx_, dI6_deyy_, dI6_dezz_, &
      dexx_depsyy_, deyy_depsyy_, dezz_depsyy_, dphi_dv_, dphi_dw_, du_dup_, &
      dup_dI4_, dv_dvp_, dvp_dI4_, dvp_dI5_, dw_dwp_, dwp_dI4_, dwp_dI5_, &
      dwp_dI6_)

end function

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
REAL(KIND=dp) exx_
REAL(KIND=dp) exy_
REAL(KIND=dp) eyy_
REAL(KIND=dp) eyz_
REAL(KIND=dp) ezx_
REAL(KIND=dp) ezz_
REAL(KIND=dp) I4_
REAL(KIND=dp) I5_
REAL(KIND=dp) I6_
REAL(KIND=dp) up_
REAL(KIND=dp) vp_
REAL(KIND=dp) wp_
REAL(KIND=dp) u_
REAL(KIND=dp) v_
REAL(KIND=dp) w_
REAL(KIND=dp) d2I5_dBydeyz_
REAL(KIND=dp) d2I6_dBydeyz_
REAL(KIND=dp) d2phi_dudv_
REAL(KIND=dp) d2phi_dudw_
REAL(KIND=dp) d2phi_dv2_
REAL(KIND=dp) d2phi_dvdw_
REAL(KIND=dp) d2phi_dw2_
REAL(KIND=dp) d2vp_dI4dI5_
REAL(KIND=dp) d2wp_dI4dI5_
REAL(KIND=dp) d2wp_dI4dI6_
REAL(KIND=dp) d2wp_dI52_
REAL(KIND=dp) d2wp_dI5dI6_
REAL(KIND=dp) d2wp_dI62_
REAL(KIND=dp) dI4_dBy_
REAL(KIND=dp) dI5_dBy_
REAL(KIND=dp) dI5_deyz_
REAL(KIND=dp) dI6_dBy_
REAL(KIND=dp) dI6_deyz_
REAL(KIND=dp) deyz_depsyz_
REAL(KIND=dp) dphi_dv_
REAL(KIND=dp) dphi_dw_
REAL(KIND=dp) du_dup_
REAL(KIND=dp) dup_dI4_
REAL(KIND=dp) dv_dvp_
REAL(KIND=dp) dvp_dI4_
REAL(KIND=dp) dvp_dI5_
REAL(KIND=dp) dw_dwp_
REAL(KIND=dp) dwp_dI4_
REAL(KIND=dp) dwp_dI5_
REAL(KIND=dp) dwp_dI6_

exx_ = exx(epsxx, epsyy, epszz)
exy_ = exy(epsxy)
eyy_ = eyy(epsxx, epsyy, epszz)
eyz_ = eyz(epsyz)
ezx_ = ezx(epszx)
ezz_ = ezz(epsxx, epsyy, epszz)
I4_ = I4(Bx, By, Bz)
I5_ = I5(Bx, By, Bz, exx_, exy_, eyy_, eyz_, ezx_, ezz_)
I6_ = I6(Bx, By, Bz, exx_, exy_, eyy_, eyz_, ezx_, ezz_)
up_ = up(I4_)
vp_ = vp(I4_, I5_)
wp_ = wp(I4_, I5_, I6_)
u_ = u(u0, up_)
v_ = v(v0, vp_)
w_ = w(w0, wp_)
d2I5_dBydeyz_ = d2I5_dBydeyz(Bz)
d2I6_dBydeyz_ = d2I6_dBydeyz(Bx, By, Bz, eyy_, eyz_, ezx_, ezz_)
d2phi_dudv_ = d2phi_dudv(u_, v_, w_, young_E, poisson_nu)
d2phi_dudw_ = d2phi_dudw(u_, v_, w_, young_E, poisson_nu)
d2phi_dv2_ = d2phi_dv2(u_, v_, w_, young_E, poisson_nu)
d2phi_dvdw_ = d2phi_dvdw(u_, v_, w_, young_E, poisson_nu)
d2phi_dw2_ = d2phi_dw2(u_, v_, w_, young_E, poisson_nu)
d2vp_dI4dI5_ = d2vp_dI4dI5(I4_)
d2wp_dI4dI5_ = d2wp_dI4dI5(I4_, I5_, I6_)
d2wp_dI4dI6_ = d2wp_dI4dI6(I4_, I5_, I6_)
d2wp_dI52_ = d2wp_dI52(I4_, I5_, I6_)
d2wp_dI5dI6_ = d2wp_dI5dI6(I4_, I5_, I6_)
d2wp_dI62_ = d2wp_dI62(I4_, I5_, I6_)
dI4_dBy_ = dI4_dBy(By)
dI5_dBy_ = dI5_dBy(Bx, By, Bz, exy_, eyy_, eyz_)
dI5_deyz_ = dI5_deyz(By, Bz)
dI6_dBy_ = dI6_dBy(Bx, By, Bz, exx_, exy_, eyy_, eyz_, ezx_, ezz_)
dI6_deyz_ = dI6_deyz(Bx, By, Bz, exy_, eyy_, eyz_, ezx_, ezz_)
deyz_depsyz_ = deyz_depsyz()
dphi_dv_ = dphi_dv(u_, v_, w_, young_E, poisson_nu)
dphi_dw_ = dphi_dw(u_, v_, w_, young_E, poisson_nu)
du_dup_ = du_dup(u0)
dup_dI4_ = dup_dI4(I4_)
dv_dvp_ = dv_dvp(v0)
dvp_dI4_ = dvp_dI4(I4_, I5_)
dvp_dI5_ = dvp_dI5(I4_)
dw_dwp_ = dw_dwp(w0)
dwp_dI4_ = dwp_dI4(I4_, I5_, I6_)
dwp_dI5_ = dwp_dI5(I4_, I5_, I6_)
dwp_dI6_ = dwp_dI6(I4_, I5_, I6_)

d2phi_dBydepsyz_public = d2phi_dBydepsyz(d2I5_dBydeyz_, d2I6_dBydeyz_, &
      d2phi_dudv_, d2phi_dudw_, d2phi_dv2_, d2phi_dvdw_, d2phi_dw2_, &
      d2vp_dI4dI5_, d2wp_dI4dI5_, d2wp_dI4dI6_, d2wp_dI52_, d2wp_dI5dI6_, &
      d2wp_dI62_, dI4_dBy_, dI5_dBy_, dI5_deyz_, dI6_dBy_, dI6_deyz_, &
      deyz_depsyz_, dphi_dv_, dphi_dw_, du_dup_, dup_dI4_, dv_dvp_, &
      dvp_dI4_, dvp_dI5_, dw_dwp_, dwp_dI4_, dwp_dI5_, dwp_dI6_)

end function

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
REAL(KIND=dp) exx_
REAL(KIND=dp) exy_
REAL(KIND=dp) eyy_
REAL(KIND=dp) eyz_
REAL(KIND=dp) ezx_
REAL(KIND=dp) ezz_
REAL(KIND=dp) I4_
REAL(KIND=dp) I5_
REAL(KIND=dp) I6_
REAL(KIND=dp) up_
REAL(KIND=dp) vp_
REAL(KIND=dp) wp_
REAL(KIND=dp) u_
REAL(KIND=dp) v_
REAL(KIND=dp) w_
REAL(KIND=dp) d2I6_dBydezx_
REAL(KIND=dp) d2phi_dudv_
REAL(KIND=dp) d2phi_dudw_
REAL(KIND=dp) d2phi_dv2_
REAL(KIND=dp) d2phi_dvdw_
REAL(KIND=dp) d2phi_dw2_
REAL(KIND=dp) d2vp_dI4dI5_
REAL(KIND=dp) d2wp_dI4dI5_
REAL(KIND=dp) d2wp_dI4dI6_
REAL(KIND=dp) d2wp_dI52_
REAL(KIND=dp) d2wp_dI5dI6_
REAL(KIND=dp) d2wp_dI62_
REAL(KIND=dp) dI4_dBy_
REAL(KIND=dp) dI5_dBy_
REAL(KIND=dp) dI5_dezx_
REAL(KIND=dp) dI6_dBy_
REAL(KIND=dp) dI6_dezx_
REAL(KIND=dp) dezx_depszx_
REAL(KIND=dp) dphi_dv_
REAL(KIND=dp) dphi_dw_
REAL(KIND=dp) du_dup_
REAL(KIND=dp) dup_dI4_
REAL(KIND=dp) dv_dvp_
REAL(KIND=dp) dvp_dI4_
REAL(KIND=dp) dvp_dI5_
REAL(KIND=dp) dw_dwp_
REAL(KIND=dp) dwp_dI4_
REAL(KIND=dp) dwp_dI5_
REAL(KIND=dp) dwp_dI6_

exx_ = exx(epsxx, epsyy, epszz)
exy_ = exy(epsxy)
eyy_ = eyy(epsxx, epsyy, epszz)
eyz_ = eyz(epsyz)
ezx_ = ezx(epszx)
ezz_ = ezz(epsxx, epsyy, epszz)
I4_ = I4(Bx, By, Bz)
I5_ = I5(Bx, By, Bz, exx_, exy_, eyy_, eyz_, ezx_, ezz_)
I6_ = I6(Bx, By, Bz, exx_, exy_, eyy_, eyz_, ezx_, ezz_)
up_ = up(I4_)
vp_ = vp(I4_, I5_)
wp_ = wp(I4_, I5_, I6_)
u_ = u(u0, up_)
v_ = v(v0, vp_)
w_ = w(w0, wp_)
d2I6_dBydezx_ = d2I6_dBydezx(Bx, Bz, exy_, eyz_)
d2phi_dudv_ = d2phi_dudv(u_, v_, w_, young_E, poisson_nu)
d2phi_dudw_ = d2phi_dudw(u_, v_, w_, young_E, poisson_nu)
d2phi_dv2_ = d2phi_dv2(u_, v_, w_, young_E, poisson_nu)
d2phi_dvdw_ = d2phi_dvdw(u_, v_, w_, young_E, poisson_nu)
d2phi_dw2_ = d2phi_dw2(u_, v_, w_, young_E, poisson_nu)
d2vp_dI4dI5_ = d2vp_dI4dI5(I4_)
d2wp_dI4dI5_ = d2wp_dI4dI5(I4_, I5_, I6_)
d2wp_dI4dI6_ = d2wp_dI4dI6(I4_, I5_, I6_)
d2wp_dI52_ = d2wp_dI52(I4_, I5_, I6_)
d2wp_dI5dI6_ = d2wp_dI5dI6(I4_, I5_, I6_)
d2wp_dI62_ = d2wp_dI62(I4_, I5_, I6_)
dI4_dBy_ = dI4_dBy(By)
dI5_dBy_ = dI5_dBy(Bx, By, Bz, exy_, eyy_, eyz_)
dI5_dezx_ = dI5_dezx(Bx, Bz)
dI6_dBy_ = dI6_dBy(Bx, By, Bz, exx_, exy_, eyy_, eyz_, ezx_, ezz_)
dI6_dezx_ = dI6_dezx(Bx, By, Bz, exx_, exy_, eyz_, ezx_, ezz_)
dezx_depszx_ = dezx_depszx()
dphi_dv_ = dphi_dv(u_, v_, w_, young_E, poisson_nu)
dphi_dw_ = dphi_dw(u_, v_, w_, young_E, poisson_nu)
du_dup_ = du_dup(u0)
dup_dI4_ = dup_dI4(I4_)
dv_dvp_ = dv_dvp(v0)
dvp_dI4_ = dvp_dI4(I4_, I5_)
dvp_dI5_ = dvp_dI5(I4_)
dw_dwp_ = dw_dwp(w0)
dwp_dI4_ = dwp_dI4(I4_, I5_, I6_)
dwp_dI5_ = dwp_dI5(I4_, I5_, I6_)
dwp_dI6_ = dwp_dI6(I4_, I5_, I6_)

d2phi_dBydepszx_public = d2phi_dBydepszx(d2I6_dBydezx_, d2phi_dudv_, &
      d2phi_dudw_, d2phi_dv2_, d2phi_dvdw_, d2phi_dw2_, d2vp_dI4dI5_, &
      d2wp_dI4dI5_, d2wp_dI4dI6_, d2wp_dI52_, d2wp_dI5dI6_, d2wp_dI62_, &
      dI4_dBy_, dI5_dBy_, dI5_dezx_, dI6_dBy_, dI6_dezx_, dezx_depszx_, &
      dphi_dv_, dphi_dw_, du_dup_, dup_dI4_, dv_dvp_, dvp_dI4_, dvp_dI5_, &
      dw_dwp_, dwp_dI4_, dwp_dI5_, dwp_dI6_)

end function

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
REAL(KIND=dp) exx_
REAL(KIND=dp) exy_
REAL(KIND=dp) eyy_
REAL(KIND=dp) eyz_
REAL(KIND=dp) ezx_
REAL(KIND=dp) ezz_
REAL(KIND=dp) I4_
REAL(KIND=dp) I5_
REAL(KIND=dp) I6_
REAL(KIND=dp) up_
REAL(KIND=dp) vp_
REAL(KIND=dp) wp_
REAL(KIND=dp) u_
REAL(KIND=dp) v_
REAL(KIND=dp) w_
REAL(KIND=dp) d2I5_dBydeyy_
REAL(KIND=dp) d2I6_dBydexx_
REAL(KIND=dp) d2I6_dBydeyy_
REAL(KIND=dp) d2I6_dBydezz_
REAL(KIND=dp) d2phi_dudv_
REAL(KIND=dp) d2phi_dudw_
REAL(KIND=dp) d2phi_dv2_
REAL(KIND=dp) d2phi_dvdw_
REAL(KIND=dp) d2phi_dw2_
REAL(KIND=dp) d2vp_dI4dI5_
REAL(KIND=dp) d2wp_dI4dI5_
REAL(KIND=dp) d2wp_dI4dI6_
REAL(KIND=dp) d2wp_dI52_
REAL(KIND=dp) d2wp_dI5dI6_
REAL(KIND=dp) d2wp_dI62_
REAL(KIND=dp) dI4_dBy_
REAL(KIND=dp) dI5_dBy_
REAL(KIND=dp) dI5_dexx_
REAL(KIND=dp) dI5_deyy_
REAL(KIND=dp) dI5_dezz_
REAL(KIND=dp) dI6_dBy_
REAL(KIND=dp) dI6_dexx_
REAL(KIND=dp) dI6_deyy_
REAL(KIND=dp) dI6_dezz_
REAL(KIND=dp) dexx_depszz_
REAL(KIND=dp) deyy_depszz_
REAL(KIND=dp) dezz_depszz_
REAL(KIND=dp) dphi_dv_
REAL(KIND=dp) dphi_dw_
REAL(KIND=dp) du_dup_
REAL(KIND=dp) dup_dI4_
REAL(KIND=dp) dv_dvp_
REAL(KIND=dp) dvp_dI4_
REAL(KIND=dp) dvp_dI5_
REAL(KIND=dp) dw_dwp_
REAL(KIND=dp) dwp_dI4_
REAL(KIND=dp) dwp_dI5_
REAL(KIND=dp) dwp_dI6_

exx_ = exx(epsxx, epsyy, epszz)
exy_ = exy(epsxy)
eyy_ = eyy(epsxx, epsyy, epszz)
eyz_ = eyz(epsyz)
ezx_ = ezx(epszx)
ezz_ = ezz(epsxx, epsyy, epszz)
I4_ = I4(Bx, By, Bz)
I5_ = I5(Bx, By, Bz, exx_, exy_, eyy_, eyz_, ezx_, ezz_)
I6_ = I6(Bx, By, Bz, exx_, exy_, eyy_, eyz_, ezx_, ezz_)
up_ = up(I4_)
vp_ = vp(I4_, I5_)
wp_ = wp(I4_, I5_, I6_)
u_ = u(u0, up_)
v_ = v(v0, vp_)
w_ = w(w0, wp_)
d2I5_dBydeyy_ = d2I5_dBydeyy(By)
d2I6_dBydexx_ = d2I6_dBydexx(Bx, exy_)
d2I6_dBydeyy_ = d2I6_dBydeyy(Bx, By, Bz, exy_, eyy_, eyz_)
d2I6_dBydezz_ = d2I6_dBydezz(Bz, eyz_)
d2phi_dudv_ = d2phi_dudv(u_, v_, w_, young_E, poisson_nu)
d2phi_dudw_ = d2phi_dudw(u_, v_, w_, young_E, poisson_nu)
d2phi_dv2_ = d2phi_dv2(u_, v_, w_, young_E, poisson_nu)
d2phi_dvdw_ = d2phi_dvdw(u_, v_, w_, young_E, poisson_nu)
d2phi_dw2_ = d2phi_dw2(u_, v_, w_, young_E, poisson_nu)
d2vp_dI4dI5_ = d2vp_dI4dI5(I4_)
d2wp_dI4dI5_ = d2wp_dI4dI5(I4_, I5_, I6_)
d2wp_dI4dI6_ = d2wp_dI4dI6(I4_, I5_, I6_)
d2wp_dI52_ = d2wp_dI52(I4_, I5_, I6_)
d2wp_dI5dI6_ = d2wp_dI5dI6(I4_, I5_, I6_)
d2wp_dI62_ = d2wp_dI62(I4_, I5_, I6_)
dI4_dBy_ = dI4_dBy(By)
dI5_dBy_ = dI5_dBy(Bx, By, Bz, exy_, eyy_, eyz_)
dI5_dexx_ = dI5_dexx(Bx)
dI5_deyy_ = dI5_deyy(By)
dI5_dezz_ = dI5_dezz(Bz)
dI6_dBy_ = dI6_dBy(Bx, By, Bz, exx_, exy_, eyy_, eyz_, ezx_, ezz_)
dI6_dexx_ = dI6_dexx(Bx, By, Bz, exx_, exy_, ezx_)
dI6_deyy_ = dI6_deyy(Bx, By, Bz, exy_, eyy_, eyz_)
dI6_dezz_ = dI6_dezz(Bx, By, Bz, eyz_, ezx_, ezz_)
dexx_depszz_ = dexx_depszz()
deyy_depszz_ = deyy_depszz()
dezz_depszz_ = dezz_depszz()
dphi_dv_ = dphi_dv(u_, v_, w_, young_E, poisson_nu)
dphi_dw_ = dphi_dw(u_, v_, w_, young_E, poisson_nu)
du_dup_ = du_dup(u0)
dup_dI4_ = dup_dI4(I4_)
dv_dvp_ = dv_dvp(v0)
dvp_dI4_ = dvp_dI4(I4_, I5_)
dvp_dI5_ = dvp_dI5(I4_)
dw_dwp_ = dw_dwp(w0)
dwp_dI4_ = dwp_dI4(I4_, I5_, I6_)
dwp_dI5_ = dwp_dI5(I4_, I5_, I6_)
dwp_dI6_ = dwp_dI6(I4_, I5_, I6_)

d2phi_dBydepszz_public = d2phi_dBydepszz(d2I5_dBydeyy_, d2I6_dBydexx_, &
      d2I6_dBydeyy_, d2I6_dBydezz_, d2phi_dudv_, d2phi_dudw_, d2phi_dv2_, &
      d2phi_dvdw_, d2phi_dw2_, d2vp_dI4dI5_, d2wp_dI4dI5_, d2wp_dI4dI6_, &
      d2wp_dI52_, d2wp_dI5dI6_, d2wp_dI62_, dI4_dBy_, dI5_dBy_, dI5_dexx_, &
      dI5_deyy_, dI5_dezz_, dI6_dBy_, dI6_dexx_, dI6_deyy_, dI6_dezz_, &
      dexx_depszz_, deyy_depszz_, dezz_depszz_, dphi_dv_, dphi_dw_, du_dup_, &
      dup_dI4_, dv_dvp_, dvp_dI4_, dvp_dI5_, dw_dwp_, dwp_dI4_, dwp_dI5_, &
      dwp_dI6_)

end function

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
REAL(KIND=dp) exx_
REAL(KIND=dp) exy_
REAL(KIND=dp) eyy_
REAL(KIND=dp) eyz_
REAL(KIND=dp) ezx_
REAL(KIND=dp) ezz_
REAL(KIND=dp) I4_
REAL(KIND=dp) I5_
REAL(KIND=dp) I6_
REAL(KIND=dp) up_
REAL(KIND=dp) vp_
REAL(KIND=dp) wp_
REAL(KIND=dp) u_
REAL(KIND=dp) v_
REAL(KIND=dp) w_
REAL(KIND=dp) dI4_dBz_
REAL(KIND=dp) dI5_dBz_
REAL(KIND=dp) dI6_dBz_
REAL(KIND=dp) dphi_du_
REAL(KIND=dp) dphi_dv_
REAL(KIND=dp) dphi_dw_
REAL(KIND=dp) du_dup_
REAL(KIND=dp) dup_dI4_
REAL(KIND=dp) dv_dvp_
REAL(KIND=dp) dvp_dI4_
REAL(KIND=dp) dvp_dI5_
REAL(KIND=dp) dw_dwp_
REAL(KIND=dp) dwp_dI4_
REAL(KIND=dp) dwp_dI5_
REAL(KIND=dp) dwp_dI6_

exx_ = exx(epsxx, epsyy, epszz)
exy_ = exy(epsxy)
eyy_ = eyy(epsxx, epsyy, epszz)
eyz_ = eyz(epsyz)
ezx_ = ezx(epszx)
ezz_ = ezz(epsxx, epsyy, epszz)
I4_ = I4(Bx, By, Bz)
I5_ = I5(Bx, By, Bz, exx_, exy_, eyy_, eyz_, ezx_, ezz_)
I6_ = I6(Bx, By, Bz, exx_, exy_, eyy_, eyz_, ezx_, ezz_)
up_ = up(I4_)
vp_ = vp(I4_, I5_)
wp_ = wp(I4_, I5_, I6_)
u_ = u(u0, up_)
v_ = v(v0, vp_)
w_ = w(w0, wp_)
dI4_dBz_ = dI4_dBz(Bz)
dI5_dBz_ = dI5_dBz(Bx, By, Bz, eyz_, ezx_, ezz_)
dI6_dBz_ = dI6_dBz(Bx, By, Bz, exx_, exy_, eyy_, eyz_, ezx_, ezz_)
dphi_du_ = dphi_du(u_, v_, w_, young_E, poisson_nu)
dphi_dv_ = dphi_dv(u_, v_, w_, young_E, poisson_nu)
dphi_dw_ = dphi_dw(u_, v_, w_, young_E, poisson_nu)
du_dup_ = du_dup(u0)
dup_dI4_ = dup_dI4(I4_)
dv_dvp_ = dv_dvp(v0)
dvp_dI4_ = dvp_dI4(I4_, I5_)
dvp_dI5_ = dvp_dI5(I4_)
dw_dwp_ = dw_dwp(w0)
dwp_dI4_ = dwp_dI4(I4_, I5_, I6_)
dwp_dI5_ = dwp_dI5(I4_, I5_, I6_)
dwp_dI6_ = dwp_dI6(I4_, I5_, I6_)

dphi_dBz_public = dphi_dBz(dI4_dBz_, dI5_dBz_, dI6_dBz_, dphi_du_, dphi_dv_, &
      dphi_dw_, du_dup_, dup_dI4_, dv_dvp_, dvp_dI4_, dvp_dI5_, dw_dwp_, &
      dwp_dI4_, dwp_dI5_, dwp_dI6_)

end function

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
REAL(KIND=dp) exx_
REAL(KIND=dp) exy_
REAL(KIND=dp) eyy_
REAL(KIND=dp) eyz_
REAL(KIND=dp) ezx_
REAL(KIND=dp) ezz_
REAL(KIND=dp) I4_
REAL(KIND=dp) I5_
REAL(KIND=dp) I6_
REAL(KIND=dp) up_
REAL(KIND=dp) vp_
REAL(KIND=dp) wp_
REAL(KIND=dp) u_
REAL(KIND=dp) v_
REAL(KIND=dp) w_
REAL(KIND=dp) d2I4_dBz2_
REAL(KIND=dp) d2I5_dBz2_
REAL(KIND=dp) d2I6_dBz2_
REAL(KIND=dp) d2phi_du2_
REAL(KIND=dp) d2phi_dudv_
REAL(KIND=dp) d2phi_dudw_
REAL(KIND=dp) d2phi_dv2_
REAL(KIND=dp) d2phi_dvdw_
REAL(KIND=dp) d2phi_dw2_
REAL(KIND=dp) d2up_dI42_
REAL(KIND=dp) d2vp_dI42_
REAL(KIND=dp) d2vp_dI4dI5_
REAL(KIND=dp) d2wp_dI42_
REAL(KIND=dp) d2wp_dI4dI5_
REAL(KIND=dp) d2wp_dI4dI6_
REAL(KIND=dp) d2wp_dI52_
REAL(KIND=dp) d2wp_dI5dI6_
REAL(KIND=dp) d2wp_dI62_
REAL(KIND=dp) dI4_dBz_
REAL(KIND=dp) dI5_dBz_
REAL(KIND=dp) dI6_dBz_
REAL(KIND=dp) dphi_du_
REAL(KIND=dp) dphi_dv_
REAL(KIND=dp) dphi_dw_
REAL(KIND=dp) du_dup_
REAL(KIND=dp) dup_dI4_
REAL(KIND=dp) dv_dvp_
REAL(KIND=dp) dvp_dI4_
REAL(KIND=dp) dvp_dI5_
REAL(KIND=dp) dw_dwp_
REAL(KIND=dp) dwp_dI4_
REAL(KIND=dp) dwp_dI5_
REAL(KIND=dp) dwp_dI6_

exx_ = exx(epsxx, epsyy, epszz)
exy_ = exy(epsxy)
eyy_ = eyy(epsxx, epsyy, epszz)
eyz_ = eyz(epsyz)
ezx_ = ezx(epszx)
ezz_ = ezz(epsxx, epsyy, epszz)
I4_ = I4(Bx, By, Bz)
I5_ = I5(Bx, By, Bz, exx_, exy_, eyy_, eyz_, ezx_, ezz_)
I6_ = I6(Bx, By, Bz, exx_, exy_, eyy_, eyz_, ezx_, ezz_)
up_ = up(I4_)
vp_ = vp(I4_, I5_)
wp_ = wp(I4_, I5_, I6_)
u_ = u(u0, up_)
v_ = v(v0, vp_)
w_ = w(w0, wp_)
d2I4_dBz2_ = d2I4_dBz2()
d2I5_dBz2_ = d2I5_dBz2(ezz_)
d2I6_dBz2_ = d2I6_dBz2(eyz_, ezx_, ezz_)
d2phi_du2_ = d2phi_du2(u_, v_, w_, young_E, poisson_nu)
d2phi_dudv_ = d2phi_dudv(u_, v_, w_, young_E, poisson_nu)
d2phi_dudw_ = d2phi_dudw(u_, v_, w_, young_E, poisson_nu)
d2phi_dv2_ = d2phi_dv2(u_, v_, w_, young_E, poisson_nu)
d2phi_dvdw_ = d2phi_dvdw(u_, v_, w_, young_E, poisson_nu)
d2phi_dw2_ = d2phi_dw2(u_, v_, w_, young_E, poisson_nu)
d2up_dI42_ = d2up_dI42(I4_)
d2vp_dI42_ = d2vp_dI42(I4_, I5_)
d2vp_dI4dI5_ = d2vp_dI4dI5(I4_)
d2wp_dI42_ = d2wp_dI42(I4_, I5_, I6_)
d2wp_dI4dI5_ = d2wp_dI4dI5(I4_, I5_, I6_)
d2wp_dI4dI6_ = d2wp_dI4dI6(I4_, I5_, I6_)
d2wp_dI52_ = d2wp_dI52(I4_, I5_, I6_)
d2wp_dI5dI6_ = d2wp_dI5dI6(I4_, I5_, I6_)
d2wp_dI62_ = d2wp_dI62(I4_, I5_, I6_)
dI4_dBz_ = dI4_dBz(Bz)
dI5_dBz_ = dI5_dBz(Bx, By, Bz, eyz_, ezx_, ezz_)
dI6_dBz_ = dI6_dBz(Bx, By, Bz, exx_, exy_, eyy_, eyz_, ezx_, ezz_)
dphi_du_ = dphi_du(u_, v_, w_, young_E, poisson_nu)
dphi_dv_ = dphi_dv(u_, v_, w_, young_E, poisson_nu)
dphi_dw_ = dphi_dw(u_, v_, w_, young_E, poisson_nu)
du_dup_ = du_dup(u0)
dup_dI4_ = dup_dI4(I4_)
dv_dvp_ = dv_dvp(v0)
dvp_dI4_ = dvp_dI4(I4_, I5_)
dvp_dI5_ = dvp_dI5(I4_)
dw_dwp_ = dw_dwp(w0)
dwp_dI4_ = dwp_dI4(I4_, I5_, I6_)
dwp_dI5_ = dwp_dI5(I4_, I5_, I6_)
dwp_dI6_ = dwp_dI6(I4_, I5_, I6_)

d2phi_dBz2_public = d2phi_dBz2(d2I4_dBz2_, d2I5_dBz2_, d2I6_dBz2_, &
      d2phi_du2_, d2phi_dudv_, d2phi_dudw_, d2phi_dv2_, d2phi_dvdw_, &
      d2phi_dw2_, d2up_dI42_, d2vp_dI42_, d2vp_dI4dI5_, d2wp_dI42_, &
      d2wp_dI4dI5_, d2wp_dI4dI6_, d2wp_dI52_, d2wp_dI5dI6_, d2wp_dI62_, &
      dI4_dBz_, dI5_dBz_, dI6_dBz_, dphi_du_, dphi_dv_, dphi_dw_, du_dup_, &
      dup_dI4_, dv_dvp_, dvp_dI4_, dvp_dI5_, dw_dwp_, dwp_dI4_, dwp_dI5_, &
      dwp_dI6_)

end function

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
REAL(KIND=dp) exx_
REAL(KIND=dp) exy_
REAL(KIND=dp) eyy_
REAL(KIND=dp) eyz_
REAL(KIND=dp) ezx_
REAL(KIND=dp) ezz_
REAL(KIND=dp) I4_
REAL(KIND=dp) I5_
REAL(KIND=dp) I6_
REAL(KIND=dp) up_
REAL(KIND=dp) vp_
REAL(KIND=dp) wp_
REAL(KIND=dp) u_
REAL(KIND=dp) v_
REAL(KIND=dp) w_
REAL(KIND=dp) d2I5_dBzdezz_
REAL(KIND=dp) d2I6_dBzdexx_
REAL(KIND=dp) d2I6_dBzdeyy_
REAL(KIND=dp) d2I6_dBzdezz_
REAL(KIND=dp) d2phi_dudv_
REAL(KIND=dp) d2phi_dudw_
REAL(KIND=dp) d2phi_dv2_
REAL(KIND=dp) d2phi_dvdw_
REAL(KIND=dp) d2phi_dw2_
REAL(KIND=dp) d2vp_dI4dI5_
REAL(KIND=dp) d2wp_dI4dI5_
REAL(KIND=dp) d2wp_dI4dI6_
REAL(KIND=dp) d2wp_dI52_
REAL(KIND=dp) d2wp_dI5dI6_
REAL(KIND=dp) d2wp_dI62_
REAL(KIND=dp) dI4_dBz_
REAL(KIND=dp) dI5_dBz_
REAL(KIND=dp) dI5_dexx_
REAL(KIND=dp) dI5_deyy_
REAL(KIND=dp) dI5_dezz_
REAL(KIND=dp) dI6_dBz_
REAL(KIND=dp) dI6_dexx_
REAL(KIND=dp) dI6_deyy_
REAL(KIND=dp) dI6_dezz_
REAL(KIND=dp) dexx_depsxx_
REAL(KIND=dp) deyy_depsxx_
REAL(KIND=dp) dezz_depsxx_
REAL(KIND=dp) dphi_dv_
REAL(KIND=dp) dphi_dw_
REAL(KIND=dp) du_dup_
REAL(KIND=dp) dup_dI4_
REAL(KIND=dp) dv_dvp_
REAL(KIND=dp) dvp_dI4_
REAL(KIND=dp) dvp_dI5_
REAL(KIND=dp) dw_dwp_
REAL(KIND=dp) dwp_dI4_
REAL(KIND=dp) dwp_dI5_
REAL(KIND=dp) dwp_dI6_

exx_ = exx(epsxx, epsyy, epszz)
exy_ = exy(epsxy)
eyy_ = eyy(epsxx, epsyy, epszz)
eyz_ = eyz(epsyz)
ezx_ = ezx(epszx)
ezz_ = ezz(epsxx, epsyy, epszz)
I4_ = I4(Bx, By, Bz)
I5_ = I5(Bx, By, Bz, exx_, exy_, eyy_, eyz_, ezx_, ezz_)
I6_ = I6(Bx, By, Bz, exx_, exy_, eyy_, eyz_, ezx_, ezz_)
up_ = up(I4_)
vp_ = vp(I4_, I5_)
wp_ = wp(I4_, I5_, I6_)
u_ = u(u0, up_)
v_ = v(v0, vp_)
w_ = w(w0, wp_)
d2I5_dBzdezz_ = d2I5_dBzdezz(Bz)
d2I6_dBzdexx_ = d2I6_dBzdexx(Bx, ezx_)
d2I6_dBzdeyy_ = d2I6_dBzdeyy(By, eyz_)
d2I6_dBzdezz_ = d2I6_dBzdezz(Bx, By, Bz, eyz_, ezx_, ezz_)
d2phi_dudv_ = d2phi_dudv(u_, v_, w_, young_E, poisson_nu)
d2phi_dudw_ = d2phi_dudw(u_, v_, w_, young_E, poisson_nu)
d2phi_dv2_ = d2phi_dv2(u_, v_, w_, young_E, poisson_nu)
d2phi_dvdw_ = d2phi_dvdw(u_, v_, w_, young_E, poisson_nu)
d2phi_dw2_ = d2phi_dw2(u_, v_, w_, young_E, poisson_nu)
d2vp_dI4dI5_ = d2vp_dI4dI5(I4_)
d2wp_dI4dI5_ = d2wp_dI4dI5(I4_, I5_, I6_)
d2wp_dI4dI6_ = d2wp_dI4dI6(I4_, I5_, I6_)
d2wp_dI52_ = d2wp_dI52(I4_, I5_, I6_)
d2wp_dI5dI6_ = d2wp_dI5dI6(I4_, I5_, I6_)
d2wp_dI62_ = d2wp_dI62(I4_, I5_, I6_)
dI4_dBz_ = dI4_dBz(Bz)
dI5_dBz_ = dI5_dBz(Bx, By, Bz, eyz_, ezx_, ezz_)
dI5_dexx_ = dI5_dexx(Bx)
dI5_deyy_ = dI5_deyy(By)
dI5_dezz_ = dI5_dezz(Bz)
dI6_dBz_ = dI6_dBz(Bx, By, Bz, exx_, exy_, eyy_, eyz_, ezx_, ezz_)
dI6_dexx_ = dI6_dexx(Bx, By, Bz, exx_, exy_, ezx_)
dI6_deyy_ = dI6_deyy(Bx, By, Bz, exy_, eyy_, eyz_)
dI6_dezz_ = dI6_dezz(Bx, By, Bz, eyz_, ezx_, ezz_)
dexx_depsxx_ = dexx_depsxx()
deyy_depsxx_ = deyy_depsxx()
dezz_depsxx_ = dezz_depsxx()
dphi_dv_ = dphi_dv(u_, v_, w_, young_E, poisson_nu)
dphi_dw_ = dphi_dw(u_, v_, w_, young_E, poisson_nu)
du_dup_ = du_dup(u0)
dup_dI4_ = dup_dI4(I4_)
dv_dvp_ = dv_dvp(v0)
dvp_dI4_ = dvp_dI4(I4_, I5_)
dvp_dI5_ = dvp_dI5(I4_)
dw_dwp_ = dw_dwp(w0)
dwp_dI4_ = dwp_dI4(I4_, I5_, I6_)
dwp_dI5_ = dwp_dI5(I4_, I5_, I6_)
dwp_dI6_ = dwp_dI6(I4_, I5_, I6_)

d2phi_dBzdepsxx_public = d2phi_dBzdepsxx(d2I5_dBzdezz_, d2I6_dBzdexx_, &
      d2I6_dBzdeyy_, d2I6_dBzdezz_, d2phi_dudv_, d2phi_dudw_, d2phi_dv2_, &
      d2phi_dvdw_, d2phi_dw2_, d2vp_dI4dI5_, d2wp_dI4dI5_, d2wp_dI4dI6_, &
      d2wp_dI52_, d2wp_dI5dI6_, d2wp_dI62_, dI4_dBz_, dI5_dBz_, dI5_dexx_, &
      dI5_deyy_, dI5_dezz_, dI6_dBz_, dI6_dexx_, dI6_deyy_, dI6_dezz_, &
      dexx_depsxx_, deyy_depsxx_, dezz_depsxx_, dphi_dv_, dphi_dw_, du_dup_, &
      dup_dI4_, dv_dvp_, dvp_dI4_, dvp_dI5_, dw_dwp_, dwp_dI4_, dwp_dI5_, &
      dwp_dI6_)

end function

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
REAL(KIND=dp) exx_
REAL(KIND=dp) exy_
REAL(KIND=dp) eyy_
REAL(KIND=dp) eyz_
REAL(KIND=dp) ezx_
REAL(KIND=dp) ezz_
REAL(KIND=dp) I4_
REAL(KIND=dp) I5_
REAL(KIND=dp) I6_
REAL(KIND=dp) up_
REAL(KIND=dp) vp_
REAL(KIND=dp) wp_
REAL(KIND=dp) u_
REAL(KIND=dp) v_
REAL(KIND=dp) w_
REAL(KIND=dp) d2I6_dBzdexy_
REAL(KIND=dp) d2phi_dudv_
REAL(KIND=dp) d2phi_dudw_
REAL(KIND=dp) d2phi_dv2_
REAL(KIND=dp) d2phi_dvdw_
REAL(KIND=dp) d2phi_dw2_
REAL(KIND=dp) d2vp_dI4dI5_
REAL(KIND=dp) d2wp_dI4dI5_
REAL(KIND=dp) d2wp_dI4dI6_
REAL(KIND=dp) d2wp_dI52_
REAL(KIND=dp) d2wp_dI5dI6_
REAL(KIND=dp) d2wp_dI62_
REAL(KIND=dp) dI4_dBz_
REAL(KIND=dp) dI5_dBz_
REAL(KIND=dp) dI5_dexy_
REAL(KIND=dp) dI6_dBz_
REAL(KIND=dp) dI6_dexy_
REAL(KIND=dp) dexy_depsxy_
REAL(KIND=dp) dphi_dv_
REAL(KIND=dp) dphi_dw_
REAL(KIND=dp) du_dup_
REAL(KIND=dp) dup_dI4_
REAL(KIND=dp) dv_dvp_
REAL(KIND=dp) dvp_dI4_
REAL(KIND=dp) dvp_dI5_
REAL(KIND=dp) dw_dwp_
REAL(KIND=dp) dwp_dI4_
REAL(KIND=dp) dwp_dI5_
REAL(KIND=dp) dwp_dI6_

exx_ = exx(epsxx, epsyy, epszz)
exy_ = exy(epsxy)
eyy_ = eyy(epsxx, epsyy, epszz)
eyz_ = eyz(epsyz)
ezx_ = ezx(epszx)
ezz_ = ezz(epsxx, epsyy, epszz)
I4_ = I4(Bx, By, Bz)
I5_ = I5(Bx, By, Bz, exx_, exy_, eyy_, eyz_, ezx_, ezz_)
I6_ = I6(Bx, By, Bz, exx_, exy_, eyy_, eyz_, ezx_, ezz_)
up_ = up(I4_)
vp_ = vp(I4_, I5_)
wp_ = wp(I4_, I5_, I6_)
u_ = u(u0, up_)
v_ = v(v0, vp_)
w_ = w(w0, wp_)
d2I6_dBzdexy_ = d2I6_dBzdexy(Bx, By, eyz_, ezx_)
d2phi_dudv_ = d2phi_dudv(u_, v_, w_, young_E, poisson_nu)
d2phi_dudw_ = d2phi_dudw(u_, v_, w_, young_E, poisson_nu)
d2phi_dv2_ = d2phi_dv2(u_, v_, w_, young_E, poisson_nu)
d2phi_dvdw_ = d2phi_dvdw(u_, v_, w_, young_E, poisson_nu)
d2phi_dw2_ = d2phi_dw2(u_, v_, w_, young_E, poisson_nu)
d2vp_dI4dI5_ = d2vp_dI4dI5(I4_)
d2wp_dI4dI5_ = d2wp_dI4dI5(I4_, I5_, I6_)
d2wp_dI4dI6_ = d2wp_dI4dI6(I4_, I5_, I6_)
d2wp_dI52_ = d2wp_dI52(I4_, I5_, I6_)
d2wp_dI5dI6_ = d2wp_dI5dI6(I4_, I5_, I6_)
d2wp_dI62_ = d2wp_dI62(I4_, I5_, I6_)
dI4_dBz_ = dI4_dBz(Bz)
dI5_dBz_ = dI5_dBz(Bx, By, Bz, eyz_, ezx_, ezz_)
dI5_dexy_ = dI5_dexy(Bx, By)
dI6_dBz_ = dI6_dBz(Bx, By, Bz, exx_, exy_, eyy_, eyz_, ezx_, ezz_)
dI6_dexy_ = dI6_dexy(Bx, By, Bz, exx_, exy_, eyy_, eyz_, ezx_)
dexy_depsxy_ = dexy_depsxy()
dphi_dv_ = dphi_dv(u_, v_, w_, young_E, poisson_nu)
dphi_dw_ = dphi_dw(u_, v_, w_, young_E, poisson_nu)
du_dup_ = du_dup(u0)
dup_dI4_ = dup_dI4(I4_)
dv_dvp_ = dv_dvp(v0)
dvp_dI4_ = dvp_dI4(I4_, I5_)
dvp_dI5_ = dvp_dI5(I4_)
dw_dwp_ = dw_dwp(w0)
dwp_dI4_ = dwp_dI4(I4_, I5_, I6_)
dwp_dI5_ = dwp_dI5(I4_, I5_, I6_)
dwp_dI6_ = dwp_dI6(I4_, I5_, I6_)

d2phi_dBzdepsxy_public = d2phi_dBzdepsxy(d2I6_dBzdexy_, d2phi_dudv_, &
      d2phi_dudw_, d2phi_dv2_, d2phi_dvdw_, d2phi_dw2_, d2vp_dI4dI5_, &
      d2wp_dI4dI5_, d2wp_dI4dI6_, d2wp_dI52_, d2wp_dI5dI6_, d2wp_dI62_, &
      dI4_dBz_, dI5_dBz_, dI5_dexy_, dI6_dBz_, dI6_dexy_, dexy_depsxy_, &
      dphi_dv_, dphi_dw_, du_dup_, dup_dI4_, dv_dvp_, dvp_dI4_, dvp_dI5_, &
      dw_dwp_, dwp_dI4_, dwp_dI5_, dwp_dI6_)

end function

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
REAL(KIND=dp) exx_
REAL(KIND=dp) exy_
REAL(KIND=dp) eyy_
REAL(KIND=dp) eyz_
REAL(KIND=dp) ezx_
REAL(KIND=dp) ezz_
REAL(KIND=dp) I4_
REAL(KIND=dp) I5_
REAL(KIND=dp) I6_
REAL(KIND=dp) up_
REAL(KIND=dp) vp_
REAL(KIND=dp) wp_
REAL(KIND=dp) u_
REAL(KIND=dp) v_
REAL(KIND=dp) w_
REAL(KIND=dp) d2I5_dBzdezz_
REAL(KIND=dp) d2I6_dBzdexx_
REAL(KIND=dp) d2I6_dBzdeyy_
REAL(KIND=dp) d2I6_dBzdezz_
REAL(KIND=dp) d2phi_dudv_
REAL(KIND=dp) d2phi_dudw_
REAL(KIND=dp) d2phi_dv2_
REAL(KIND=dp) d2phi_dvdw_
REAL(KIND=dp) d2phi_dw2_
REAL(KIND=dp) d2vp_dI4dI5_
REAL(KIND=dp) d2wp_dI4dI5_
REAL(KIND=dp) d2wp_dI4dI6_
REAL(KIND=dp) d2wp_dI52_
REAL(KIND=dp) d2wp_dI5dI6_
REAL(KIND=dp) d2wp_dI62_
REAL(KIND=dp) dI4_dBz_
REAL(KIND=dp) dI5_dBz_
REAL(KIND=dp) dI5_dexx_
REAL(KIND=dp) dI5_deyy_
REAL(KIND=dp) dI5_dezz_
REAL(KIND=dp) dI6_dBz_
REAL(KIND=dp) dI6_dexx_
REAL(KIND=dp) dI6_deyy_
REAL(KIND=dp) dI6_dezz_
REAL(KIND=dp) dexx_depsyy_
REAL(KIND=dp) deyy_depsyy_
REAL(KIND=dp) dezz_depsyy_
REAL(KIND=dp) dphi_dv_
REAL(KIND=dp) dphi_dw_
REAL(KIND=dp) du_dup_
REAL(KIND=dp) dup_dI4_
REAL(KIND=dp) dv_dvp_
REAL(KIND=dp) dvp_dI4_
REAL(KIND=dp) dvp_dI5_
REAL(KIND=dp) dw_dwp_
REAL(KIND=dp) dwp_dI4_
REAL(KIND=dp) dwp_dI5_
REAL(KIND=dp) dwp_dI6_

exx_ = exx(epsxx, epsyy, epszz)
exy_ = exy(epsxy)
eyy_ = eyy(epsxx, epsyy, epszz)
eyz_ = eyz(epsyz)
ezx_ = ezx(epszx)
ezz_ = ezz(epsxx, epsyy, epszz)
I4_ = I4(Bx, By, Bz)
I5_ = I5(Bx, By, Bz, exx_, exy_, eyy_, eyz_, ezx_, ezz_)
I6_ = I6(Bx, By, Bz, exx_, exy_, eyy_, eyz_, ezx_, ezz_)
up_ = up(I4_)
vp_ = vp(I4_, I5_)
wp_ = wp(I4_, I5_, I6_)
u_ = u(u0, up_)
v_ = v(v0, vp_)
w_ = w(w0, wp_)
d2I5_dBzdezz_ = d2I5_dBzdezz(Bz)
d2I6_dBzdexx_ = d2I6_dBzdexx(Bx, ezx_)
d2I6_dBzdeyy_ = d2I6_dBzdeyy(By, eyz_)
d2I6_dBzdezz_ = d2I6_dBzdezz(Bx, By, Bz, eyz_, ezx_, ezz_)
d2phi_dudv_ = d2phi_dudv(u_, v_, w_, young_E, poisson_nu)
d2phi_dudw_ = d2phi_dudw(u_, v_, w_, young_E, poisson_nu)
d2phi_dv2_ = d2phi_dv2(u_, v_, w_, young_E, poisson_nu)
d2phi_dvdw_ = d2phi_dvdw(u_, v_, w_, young_E, poisson_nu)
d2phi_dw2_ = d2phi_dw2(u_, v_, w_, young_E, poisson_nu)
d2vp_dI4dI5_ = d2vp_dI4dI5(I4_)
d2wp_dI4dI5_ = d2wp_dI4dI5(I4_, I5_, I6_)
d2wp_dI4dI6_ = d2wp_dI4dI6(I4_, I5_, I6_)
d2wp_dI52_ = d2wp_dI52(I4_, I5_, I6_)
d2wp_dI5dI6_ = d2wp_dI5dI6(I4_, I5_, I6_)
d2wp_dI62_ = d2wp_dI62(I4_, I5_, I6_)
dI4_dBz_ = dI4_dBz(Bz)
dI5_dBz_ = dI5_dBz(Bx, By, Bz, eyz_, ezx_, ezz_)
dI5_dexx_ = dI5_dexx(Bx)
dI5_deyy_ = dI5_deyy(By)
dI5_dezz_ = dI5_dezz(Bz)
dI6_dBz_ = dI6_dBz(Bx, By, Bz, exx_, exy_, eyy_, eyz_, ezx_, ezz_)
dI6_dexx_ = dI6_dexx(Bx, By, Bz, exx_, exy_, ezx_)
dI6_deyy_ = dI6_deyy(Bx, By, Bz, exy_, eyy_, eyz_)
dI6_dezz_ = dI6_dezz(Bx, By, Bz, eyz_, ezx_, ezz_)
dexx_depsyy_ = dexx_depsyy()
deyy_depsyy_ = deyy_depsyy()
dezz_depsyy_ = dezz_depsyy()
dphi_dv_ = dphi_dv(u_, v_, w_, young_E, poisson_nu)
dphi_dw_ = dphi_dw(u_, v_, w_, young_E, poisson_nu)
du_dup_ = du_dup(u0)
dup_dI4_ = dup_dI4(I4_)
dv_dvp_ = dv_dvp(v0)
dvp_dI4_ = dvp_dI4(I4_, I5_)
dvp_dI5_ = dvp_dI5(I4_)
dw_dwp_ = dw_dwp(w0)
dwp_dI4_ = dwp_dI4(I4_, I5_, I6_)
dwp_dI5_ = dwp_dI5(I4_, I5_, I6_)
dwp_dI6_ = dwp_dI6(I4_, I5_, I6_)

d2phi_dBzdepsyy_public = d2phi_dBzdepsyy(d2I5_dBzdezz_, d2I6_dBzdexx_, &
      d2I6_dBzdeyy_, d2I6_dBzdezz_, d2phi_dudv_, d2phi_dudw_, d2phi_dv2_, &
      d2phi_dvdw_, d2phi_dw2_, d2vp_dI4dI5_, d2wp_dI4dI5_, d2wp_dI4dI6_, &
      d2wp_dI52_, d2wp_dI5dI6_, d2wp_dI62_, dI4_dBz_, dI5_dBz_, dI5_dexx_, &
      dI5_deyy_, dI5_dezz_, dI6_dBz_, dI6_dexx_, dI6_deyy_, dI6_dezz_, &
      dexx_depsyy_, deyy_depsyy_, dezz_depsyy_, dphi_dv_, dphi_dw_, du_dup_, &
      dup_dI4_, dv_dvp_, dvp_dI4_, dvp_dI5_, dw_dwp_, dwp_dI4_, dwp_dI5_, &
      dwp_dI6_)

end function

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
REAL(KIND=dp) exx_
REAL(KIND=dp) exy_
REAL(KIND=dp) eyy_
REAL(KIND=dp) eyz_
REAL(KIND=dp) ezx_
REAL(KIND=dp) ezz_
REAL(KIND=dp) I4_
REAL(KIND=dp) I5_
REAL(KIND=dp) I6_
REAL(KIND=dp) up_
REAL(KIND=dp) vp_
REAL(KIND=dp) wp_
REAL(KIND=dp) u_
REAL(KIND=dp) v_
REAL(KIND=dp) w_
REAL(KIND=dp) d2I5_dBzdeyz_
REAL(KIND=dp) d2I6_dBzdeyz_
REAL(KIND=dp) d2phi_dudv_
REAL(KIND=dp) d2phi_dudw_
REAL(KIND=dp) d2phi_dv2_
REAL(KIND=dp) d2phi_dvdw_
REAL(KIND=dp) d2phi_dw2_
REAL(KIND=dp) d2vp_dI4dI5_
REAL(KIND=dp) d2wp_dI4dI5_
REAL(KIND=dp) d2wp_dI4dI6_
REAL(KIND=dp) d2wp_dI52_
REAL(KIND=dp) d2wp_dI5dI6_
REAL(KIND=dp) d2wp_dI62_
REAL(KIND=dp) dI4_dBz_
REAL(KIND=dp) dI5_dBz_
REAL(KIND=dp) dI5_deyz_
REAL(KIND=dp) dI6_dBz_
REAL(KIND=dp) dI6_deyz_
REAL(KIND=dp) deyz_depsyz_
REAL(KIND=dp) dphi_dv_
REAL(KIND=dp) dphi_dw_
REAL(KIND=dp) du_dup_
REAL(KIND=dp) dup_dI4_
REAL(KIND=dp) dv_dvp_
REAL(KIND=dp) dvp_dI4_
REAL(KIND=dp) dvp_dI5_
REAL(KIND=dp) dw_dwp_
REAL(KIND=dp) dwp_dI4_
REAL(KIND=dp) dwp_dI5_
REAL(KIND=dp) dwp_dI6_

exx_ = exx(epsxx, epsyy, epszz)
exy_ = exy(epsxy)
eyy_ = eyy(epsxx, epsyy, epszz)
eyz_ = eyz(epsyz)
ezx_ = ezx(epszx)
ezz_ = ezz(epsxx, epsyy, epszz)
I4_ = I4(Bx, By, Bz)
I5_ = I5(Bx, By, Bz, exx_, exy_, eyy_, eyz_, ezx_, ezz_)
I6_ = I6(Bx, By, Bz, exx_, exy_, eyy_, eyz_, ezx_, ezz_)
up_ = up(I4_)
vp_ = vp(I4_, I5_)
wp_ = wp(I4_, I5_, I6_)
u_ = u(u0, up_)
v_ = v(v0, vp_)
w_ = w(w0, wp_)
d2I5_dBzdeyz_ = d2I5_dBzdeyz(By)
d2I6_dBzdeyz_ = d2I6_dBzdeyz(Bx, By, Bz, exy_, eyy_, eyz_, ezz_)
d2phi_dudv_ = d2phi_dudv(u_, v_, w_, young_E, poisson_nu)
d2phi_dudw_ = d2phi_dudw(u_, v_, w_, young_E, poisson_nu)
d2phi_dv2_ = d2phi_dv2(u_, v_, w_, young_E, poisson_nu)
d2phi_dvdw_ = d2phi_dvdw(u_, v_, w_, young_E, poisson_nu)
d2phi_dw2_ = d2phi_dw2(u_, v_, w_, young_E, poisson_nu)
d2vp_dI4dI5_ = d2vp_dI4dI5(I4_)
d2wp_dI4dI5_ = d2wp_dI4dI5(I4_, I5_, I6_)
d2wp_dI4dI6_ = d2wp_dI4dI6(I4_, I5_, I6_)
d2wp_dI52_ = d2wp_dI52(I4_, I5_, I6_)
d2wp_dI5dI6_ = d2wp_dI5dI6(I4_, I5_, I6_)
d2wp_dI62_ = d2wp_dI62(I4_, I5_, I6_)
dI4_dBz_ = dI4_dBz(Bz)
dI5_dBz_ = dI5_dBz(Bx, By, Bz, eyz_, ezx_, ezz_)
dI5_deyz_ = dI5_deyz(By, Bz)
dI6_dBz_ = dI6_dBz(Bx, By, Bz, exx_, exy_, eyy_, eyz_, ezx_, ezz_)
dI6_deyz_ = dI6_deyz(Bx, By, Bz, exy_, eyy_, eyz_, ezx_, ezz_)
deyz_depsyz_ = deyz_depsyz()
dphi_dv_ = dphi_dv(u_, v_, w_, young_E, poisson_nu)
dphi_dw_ = dphi_dw(u_, v_, w_, young_E, poisson_nu)
du_dup_ = du_dup(u0)
dup_dI4_ = dup_dI4(I4_)
dv_dvp_ = dv_dvp(v0)
dvp_dI4_ = dvp_dI4(I4_, I5_)
dvp_dI5_ = dvp_dI5(I4_)
dw_dwp_ = dw_dwp(w0)
dwp_dI4_ = dwp_dI4(I4_, I5_, I6_)
dwp_dI5_ = dwp_dI5(I4_, I5_, I6_)
dwp_dI6_ = dwp_dI6(I4_, I5_, I6_)

d2phi_dBzdepsyz_public = d2phi_dBzdepsyz(d2I5_dBzdeyz_, d2I6_dBzdeyz_, &
      d2phi_dudv_, d2phi_dudw_, d2phi_dv2_, d2phi_dvdw_, d2phi_dw2_, &
      d2vp_dI4dI5_, d2wp_dI4dI5_, d2wp_dI4dI6_, d2wp_dI52_, d2wp_dI5dI6_, &
      d2wp_dI62_, dI4_dBz_, dI5_dBz_, dI5_deyz_, dI6_dBz_, dI6_deyz_, &
      deyz_depsyz_, dphi_dv_, dphi_dw_, du_dup_, dup_dI4_, dv_dvp_, &
      dvp_dI4_, dvp_dI5_, dw_dwp_, dwp_dI4_, dwp_dI5_, dwp_dI6_)

end function

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
REAL(KIND=dp) exx_
REAL(KIND=dp) exy_
REAL(KIND=dp) eyy_
REAL(KIND=dp) eyz_
REAL(KIND=dp) ezx_
REAL(KIND=dp) ezz_
REAL(KIND=dp) I4_
REAL(KIND=dp) I5_
REAL(KIND=dp) I6_
REAL(KIND=dp) up_
REAL(KIND=dp) vp_
REAL(KIND=dp) wp_
REAL(KIND=dp) u_
REAL(KIND=dp) v_
REAL(KIND=dp) w_
REAL(KIND=dp) d2I5_dBzdezx_
REAL(KIND=dp) d2I6_dBzdezx_
REAL(KIND=dp) d2phi_dudv_
REAL(KIND=dp) d2phi_dudw_
REAL(KIND=dp) d2phi_dv2_
REAL(KIND=dp) d2phi_dvdw_
REAL(KIND=dp) d2phi_dw2_
REAL(KIND=dp) d2vp_dI4dI5_
REAL(KIND=dp) d2wp_dI4dI5_
REAL(KIND=dp) d2wp_dI4dI6_
REAL(KIND=dp) d2wp_dI52_
REAL(KIND=dp) d2wp_dI5dI6_
REAL(KIND=dp) d2wp_dI62_
REAL(KIND=dp) dI4_dBz_
REAL(KIND=dp) dI5_dBz_
REAL(KIND=dp) dI5_dezx_
REAL(KIND=dp) dI6_dBz_
REAL(KIND=dp) dI6_dezx_
REAL(KIND=dp) dezx_depszx_
REAL(KIND=dp) dphi_dv_
REAL(KIND=dp) dphi_dw_
REAL(KIND=dp) du_dup_
REAL(KIND=dp) dup_dI4_
REAL(KIND=dp) dv_dvp_
REAL(KIND=dp) dvp_dI4_
REAL(KIND=dp) dvp_dI5_
REAL(KIND=dp) dw_dwp_
REAL(KIND=dp) dwp_dI4_
REAL(KIND=dp) dwp_dI5_
REAL(KIND=dp) dwp_dI6_

exx_ = exx(epsxx, epsyy, epszz)
exy_ = exy(epsxy)
eyy_ = eyy(epsxx, epsyy, epszz)
eyz_ = eyz(epsyz)
ezx_ = ezx(epszx)
ezz_ = ezz(epsxx, epsyy, epszz)
I4_ = I4(Bx, By, Bz)
I5_ = I5(Bx, By, Bz, exx_, exy_, eyy_, eyz_, ezx_, ezz_)
I6_ = I6(Bx, By, Bz, exx_, exy_, eyy_, eyz_, ezx_, ezz_)
up_ = up(I4_)
vp_ = vp(I4_, I5_)
wp_ = wp(I4_, I5_, I6_)
u_ = u(u0, up_)
v_ = v(v0, vp_)
w_ = w(w0, wp_)
d2I5_dBzdezx_ = d2I5_dBzdezx(Bx)
d2I6_dBzdezx_ = d2I6_dBzdezx(Bx, By, Bz, exx_, exy_, ezx_, ezz_)
d2phi_dudv_ = d2phi_dudv(u_, v_, w_, young_E, poisson_nu)
d2phi_dudw_ = d2phi_dudw(u_, v_, w_, young_E, poisson_nu)
d2phi_dv2_ = d2phi_dv2(u_, v_, w_, young_E, poisson_nu)
d2phi_dvdw_ = d2phi_dvdw(u_, v_, w_, young_E, poisson_nu)
d2phi_dw2_ = d2phi_dw2(u_, v_, w_, young_E, poisson_nu)
d2vp_dI4dI5_ = d2vp_dI4dI5(I4_)
d2wp_dI4dI5_ = d2wp_dI4dI5(I4_, I5_, I6_)
d2wp_dI4dI6_ = d2wp_dI4dI6(I4_, I5_, I6_)
d2wp_dI52_ = d2wp_dI52(I4_, I5_, I6_)
d2wp_dI5dI6_ = d2wp_dI5dI6(I4_, I5_, I6_)
d2wp_dI62_ = d2wp_dI62(I4_, I5_, I6_)
dI4_dBz_ = dI4_dBz(Bz)
dI5_dBz_ = dI5_dBz(Bx, By, Bz, eyz_, ezx_, ezz_)
dI5_dezx_ = dI5_dezx(Bx, Bz)
dI6_dBz_ = dI6_dBz(Bx, By, Bz, exx_, exy_, eyy_, eyz_, ezx_, ezz_)
dI6_dezx_ = dI6_dezx(Bx, By, Bz, exx_, exy_, eyz_, ezx_, ezz_)
dezx_depszx_ = dezx_depszx()
dphi_dv_ = dphi_dv(u_, v_, w_, young_E, poisson_nu)
dphi_dw_ = dphi_dw(u_, v_, w_, young_E, poisson_nu)
du_dup_ = du_dup(u0)
dup_dI4_ = dup_dI4(I4_)
dv_dvp_ = dv_dvp(v0)
dvp_dI4_ = dvp_dI4(I4_, I5_)
dvp_dI5_ = dvp_dI5(I4_)
dw_dwp_ = dw_dwp(w0)
dwp_dI4_ = dwp_dI4(I4_, I5_, I6_)
dwp_dI5_ = dwp_dI5(I4_, I5_, I6_)
dwp_dI6_ = dwp_dI6(I4_, I5_, I6_)

d2phi_dBzdepszx_public = d2phi_dBzdepszx(d2I5_dBzdezx_, d2I6_dBzdezx_, &
      d2phi_dudv_, d2phi_dudw_, d2phi_dv2_, d2phi_dvdw_, d2phi_dw2_, &
      d2vp_dI4dI5_, d2wp_dI4dI5_, d2wp_dI4dI6_, d2wp_dI52_, d2wp_dI5dI6_, &
      d2wp_dI62_, dI4_dBz_, dI5_dBz_, dI5_dezx_, dI6_dBz_, dI6_dezx_, &
      dezx_depszx_, dphi_dv_, dphi_dw_, du_dup_, dup_dI4_, dv_dvp_, &
      dvp_dI4_, dvp_dI5_, dw_dwp_, dwp_dI4_, dwp_dI5_, dwp_dI6_)

end function

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
REAL(KIND=dp) exx_
REAL(KIND=dp) exy_
REAL(KIND=dp) eyy_
REAL(KIND=dp) eyz_
REAL(KIND=dp) ezx_
REAL(KIND=dp) ezz_
REAL(KIND=dp) I4_
REAL(KIND=dp) I5_
REAL(KIND=dp) I6_
REAL(KIND=dp) up_
REAL(KIND=dp) vp_
REAL(KIND=dp) wp_
REAL(KIND=dp) u_
REAL(KIND=dp) v_
REAL(KIND=dp) w_
REAL(KIND=dp) d2I5_dBzdezz_
REAL(KIND=dp) d2I6_dBzdexx_
REAL(KIND=dp) d2I6_dBzdeyy_
REAL(KIND=dp) d2I6_dBzdezz_
REAL(KIND=dp) d2phi_dudv_
REAL(KIND=dp) d2phi_dudw_
REAL(KIND=dp) d2phi_dv2_
REAL(KIND=dp) d2phi_dvdw_
REAL(KIND=dp) d2phi_dw2_
REAL(KIND=dp) d2vp_dI4dI5_
REAL(KIND=dp) d2wp_dI4dI5_
REAL(KIND=dp) d2wp_dI4dI6_
REAL(KIND=dp) d2wp_dI52_
REAL(KIND=dp) d2wp_dI5dI6_
REAL(KIND=dp) d2wp_dI62_
REAL(KIND=dp) dI4_dBz_
REAL(KIND=dp) dI5_dBz_
REAL(KIND=dp) dI5_dexx_
REAL(KIND=dp) dI5_deyy_
REAL(KIND=dp) dI5_dezz_
REAL(KIND=dp) dI6_dBz_
REAL(KIND=dp) dI6_dexx_
REAL(KIND=dp) dI6_deyy_
REAL(KIND=dp) dI6_dezz_
REAL(KIND=dp) dexx_depszz_
REAL(KIND=dp) deyy_depszz_
REAL(KIND=dp) dezz_depszz_
REAL(KIND=dp) dphi_dv_
REAL(KIND=dp) dphi_dw_
REAL(KIND=dp) du_dup_
REAL(KIND=dp) dup_dI4_
REAL(KIND=dp) dv_dvp_
REAL(KIND=dp) dvp_dI4_
REAL(KIND=dp) dvp_dI5_
REAL(KIND=dp) dw_dwp_
REAL(KIND=dp) dwp_dI4_
REAL(KIND=dp) dwp_dI5_
REAL(KIND=dp) dwp_dI6_

exx_ = exx(epsxx, epsyy, epszz)
exy_ = exy(epsxy)
eyy_ = eyy(epsxx, epsyy, epszz)
eyz_ = eyz(epsyz)
ezx_ = ezx(epszx)
ezz_ = ezz(epsxx, epsyy, epszz)
I4_ = I4(Bx, By, Bz)
I5_ = I5(Bx, By, Bz, exx_, exy_, eyy_, eyz_, ezx_, ezz_)
I6_ = I6(Bx, By, Bz, exx_, exy_, eyy_, eyz_, ezx_, ezz_)
up_ = up(I4_)
vp_ = vp(I4_, I5_)
wp_ = wp(I4_, I5_, I6_)
u_ = u(u0, up_)
v_ = v(v0, vp_)
w_ = w(w0, wp_)
d2I5_dBzdezz_ = d2I5_dBzdezz(Bz)
d2I6_dBzdexx_ = d2I6_dBzdexx(Bx, ezx_)
d2I6_dBzdeyy_ = d2I6_dBzdeyy(By, eyz_)
d2I6_dBzdezz_ = d2I6_dBzdezz(Bx, By, Bz, eyz_, ezx_, ezz_)
d2phi_dudv_ = d2phi_dudv(u_, v_, w_, young_E, poisson_nu)
d2phi_dudw_ = d2phi_dudw(u_, v_, w_, young_E, poisson_nu)
d2phi_dv2_ = d2phi_dv2(u_, v_, w_, young_E, poisson_nu)
d2phi_dvdw_ = d2phi_dvdw(u_, v_, w_, young_E, poisson_nu)
d2phi_dw2_ = d2phi_dw2(u_, v_, w_, young_E, poisson_nu)
d2vp_dI4dI5_ = d2vp_dI4dI5(I4_)
d2wp_dI4dI5_ = d2wp_dI4dI5(I4_, I5_, I6_)
d2wp_dI4dI6_ = d2wp_dI4dI6(I4_, I5_, I6_)
d2wp_dI52_ = d2wp_dI52(I4_, I5_, I6_)
d2wp_dI5dI6_ = d2wp_dI5dI6(I4_, I5_, I6_)
d2wp_dI62_ = d2wp_dI62(I4_, I5_, I6_)
dI4_dBz_ = dI4_dBz(Bz)
dI5_dBz_ = dI5_dBz(Bx, By, Bz, eyz_, ezx_, ezz_)
dI5_dexx_ = dI5_dexx(Bx)
dI5_deyy_ = dI5_deyy(By)
dI5_dezz_ = dI5_dezz(Bz)
dI6_dBz_ = dI6_dBz(Bx, By, Bz, exx_, exy_, eyy_, eyz_, ezx_, ezz_)
dI6_dexx_ = dI6_dexx(Bx, By, Bz, exx_, exy_, ezx_)
dI6_deyy_ = dI6_deyy(Bx, By, Bz, exy_, eyy_, eyz_)
dI6_dezz_ = dI6_dezz(Bx, By, Bz, eyz_, ezx_, ezz_)
dexx_depszz_ = dexx_depszz()
deyy_depszz_ = deyy_depszz()
dezz_depszz_ = dezz_depszz()
dphi_dv_ = dphi_dv(u_, v_, w_, young_E, poisson_nu)
dphi_dw_ = dphi_dw(u_, v_, w_, young_E, poisson_nu)
du_dup_ = du_dup(u0)
dup_dI4_ = dup_dI4(I4_)
dv_dvp_ = dv_dvp(v0)
dvp_dI4_ = dvp_dI4(I4_, I5_)
dvp_dI5_ = dvp_dI5(I4_)
dw_dwp_ = dw_dwp(w0)
dwp_dI4_ = dwp_dI4(I4_, I5_, I6_)
dwp_dI5_ = dwp_dI5(I4_, I5_, I6_)
dwp_dI6_ = dwp_dI6(I4_, I5_, I6_)

d2phi_dBzdepszz_public = d2phi_dBzdepszz(d2I5_dBzdezz_, d2I6_dBzdexx_, &
      d2I6_dBzdeyy_, d2I6_dBzdezz_, d2phi_dudv_, d2phi_dudw_, d2phi_dv2_, &
      d2phi_dvdw_, d2phi_dw2_, d2vp_dI4dI5_, d2wp_dI4dI5_, d2wp_dI4dI6_, &
      d2wp_dI52_, d2wp_dI5dI6_, d2wp_dI62_, dI4_dBz_, dI5_dBz_, dI5_dexx_, &
      dI5_deyy_, dI5_dezz_, dI6_dBz_, dI6_dexx_, dI6_deyy_, dI6_dezz_, &
      dexx_depszz_, deyy_depszz_, dezz_depszz_, dphi_dv_, dphi_dw_, du_dup_, &
      dup_dI4_, dv_dvp_, dvp_dI4_, dvp_dI5_, dw_dwp_, dwp_dI4_, dwp_dI5_, &
      dwp_dI6_)

end function

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
REAL(KIND=dp) exx_
REAL(KIND=dp) exy_
REAL(KIND=dp) eyy_
REAL(KIND=dp) eyz_
REAL(KIND=dp) ezx_
REAL(KIND=dp) ezz_
REAL(KIND=dp) I4_
REAL(KIND=dp) I5_
REAL(KIND=dp) I6_
REAL(KIND=dp) up_
REAL(KIND=dp) vp_
REAL(KIND=dp) wp_
REAL(KIND=dp) u_
REAL(KIND=dp) v_
REAL(KIND=dp) w_
REAL(KIND=dp) dI5_dexx_
REAL(KIND=dp) dI5_deyy_
REAL(KIND=dp) dI5_dezz_
REAL(KIND=dp) dI6_dexx_
REAL(KIND=dp) dI6_deyy_
REAL(KIND=dp) dI6_dezz_
REAL(KIND=dp) dexx_depsxx_
REAL(KIND=dp) deyy_depsxx_
REAL(KIND=dp) dezz_depsxx_
REAL(KIND=dp) dphi_dv_
REAL(KIND=dp) dphi_dw_
REAL(KIND=dp) dv_dvp_
REAL(KIND=dp) dvp_dI5_
REAL(KIND=dp) dw_dwp_
REAL(KIND=dp) dwp_dI5_
REAL(KIND=dp) dwp_dI6_

exx_ = exx(epsxx, epsyy, epszz)
exy_ = exy(epsxy)
eyy_ = eyy(epsxx, epsyy, epszz)
eyz_ = eyz(epsyz)
ezx_ = ezx(epszx)
ezz_ = ezz(epsxx, epsyy, epszz)
I4_ = I4(Bx, By, Bz)
I5_ = I5(Bx, By, Bz, exx_, exy_, eyy_, eyz_, ezx_, ezz_)
I6_ = I6(Bx, By, Bz, exx_, exy_, eyy_, eyz_, ezx_, ezz_)
up_ = up(I4_)
vp_ = vp(I4_, I5_)
wp_ = wp(I4_, I5_, I6_)
u_ = u(u0, up_)
v_ = v(v0, vp_)
w_ = w(w0, wp_)
dI5_dexx_ = dI5_dexx(Bx)
dI5_deyy_ = dI5_deyy(By)
dI5_dezz_ = dI5_dezz(Bz)
dI6_dexx_ = dI6_dexx(Bx, By, Bz, exx_, exy_, ezx_)
dI6_deyy_ = dI6_deyy(Bx, By, Bz, exy_, eyy_, eyz_)
dI6_dezz_ = dI6_dezz(Bx, By, Bz, eyz_, ezx_, ezz_)
dexx_depsxx_ = dexx_depsxx()
deyy_depsxx_ = deyy_depsxx()
dezz_depsxx_ = dezz_depsxx()
dphi_dv_ = dphi_dv(u_, v_, w_, young_E, poisson_nu)
dphi_dw_ = dphi_dw(u_, v_, w_, young_E, poisson_nu)
dv_dvp_ = dv_dvp(v0)
dvp_dI5_ = dvp_dI5(I4_)
dw_dwp_ = dw_dwp(w0)
dwp_dI5_ = dwp_dI5(I4_, I5_, I6_)
dwp_dI6_ = dwp_dI6(I4_, I5_, I6_)

dphi_depsxx_public = dphi_depsxx(dI5_dexx_, dI5_deyy_, dI5_dezz_, dI6_dexx_, &
      dI6_deyy_, dI6_dezz_, dexx_depsxx_, deyy_depsxx_, dezz_depsxx_, &
      dphi_dv_, dphi_dw_, dv_dvp_, dvp_dI5_, dw_dwp_, dwp_dI5_, dwp_dI6_)

end function

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
REAL(KIND=dp) exx_
REAL(KIND=dp) exy_
REAL(KIND=dp) eyy_
REAL(KIND=dp) eyz_
REAL(KIND=dp) ezx_
REAL(KIND=dp) ezz_
REAL(KIND=dp) I4_
REAL(KIND=dp) I5_
REAL(KIND=dp) I6_
REAL(KIND=dp) up_
REAL(KIND=dp) vp_
REAL(KIND=dp) wp_
REAL(KIND=dp) u_
REAL(KIND=dp) v_
REAL(KIND=dp) w_
REAL(KIND=dp) d2I6_dexx2_
REAL(KIND=dp) d2I6_deyy2_
REAL(KIND=dp) d2I6_dezz2_
REAL(KIND=dp) d2phi_dv2_
REAL(KIND=dp) d2phi_dvdw_
REAL(KIND=dp) d2phi_dw2_
REAL(KIND=dp) d2wp_dI52_
REAL(KIND=dp) d2wp_dI5dI6_
REAL(KIND=dp) d2wp_dI62_
REAL(KIND=dp) dI5_dexx_
REAL(KIND=dp) dI5_deyy_
REAL(KIND=dp) dI5_dezz_
REAL(KIND=dp) dI6_dexx_
REAL(KIND=dp) dI6_deyy_
REAL(KIND=dp) dI6_dezz_
REAL(KIND=dp) dexx_depsxx_
REAL(KIND=dp) deyy_depsxx_
REAL(KIND=dp) dezz_depsxx_
REAL(KIND=dp) dphi_dw_
REAL(KIND=dp) dv_dvp_
REAL(KIND=dp) dvp_dI5_
REAL(KIND=dp) dw_dwp_
REAL(KIND=dp) dwp_dI5_
REAL(KIND=dp) dwp_dI6_

exx_ = exx(epsxx, epsyy, epszz)
exy_ = exy(epsxy)
eyy_ = eyy(epsxx, epsyy, epszz)
eyz_ = eyz(epsyz)
ezx_ = ezx(epszx)
ezz_ = ezz(epsxx, epsyy, epszz)
I4_ = I4(Bx, By, Bz)
I5_ = I5(Bx, By, Bz, exx_, exy_, eyy_, eyz_, ezx_, ezz_)
I6_ = I6(Bx, By, Bz, exx_, exy_, eyy_, eyz_, ezx_, ezz_)
up_ = up(I4_)
vp_ = vp(I4_, I5_)
wp_ = wp(I4_, I5_, I6_)
u_ = u(u0, up_)
v_ = v(v0, vp_)
w_ = w(w0, wp_)
d2I6_dexx2_ = d2I6_dexx2(Bx)
d2I6_deyy2_ = d2I6_deyy2(By)
d2I6_dezz2_ = d2I6_dezz2(Bz)
d2phi_dv2_ = d2phi_dv2(u_, v_, w_, young_E, poisson_nu)
d2phi_dvdw_ = d2phi_dvdw(u_, v_, w_, young_E, poisson_nu)
d2phi_dw2_ = d2phi_dw2(u_, v_, w_, young_E, poisson_nu)
d2wp_dI52_ = d2wp_dI52(I4_, I5_, I6_)
d2wp_dI5dI6_ = d2wp_dI5dI6(I4_, I5_, I6_)
d2wp_dI62_ = d2wp_dI62(I4_, I5_, I6_)
dI5_dexx_ = dI5_dexx(Bx)
dI5_deyy_ = dI5_deyy(By)
dI5_dezz_ = dI5_dezz(Bz)
dI6_dexx_ = dI6_dexx(Bx, By, Bz, exx_, exy_, ezx_)
dI6_deyy_ = dI6_deyy(Bx, By, Bz, exy_, eyy_, eyz_)
dI6_dezz_ = dI6_dezz(Bx, By, Bz, eyz_, ezx_, ezz_)
dexx_depsxx_ = dexx_depsxx()
deyy_depsxx_ = deyy_depsxx()
dezz_depsxx_ = dezz_depsxx()
dphi_dw_ = dphi_dw(u_, v_, w_, young_E, poisson_nu)
dv_dvp_ = dv_dvp(v0)
dvp_dI5_ = dvp_dI5(I4_)
dw_dwp_ = dw_dwp(w0)
dwp_dI5_ = dwp_dI5(I4_, I5_, I6_)
dwp_dI6_ = dwp_dI6(I4_, I5_, I6_)

d2phi_depsxx2_public = d2phi_depsxx2(d2I6_dexx2_, d2I6_deyy2_, d2I6_dezz2_, &
      d2phi_dv2_, d2phi_dvdw_, d2phi_dw2_, d2wp_dI52_, d2wp_dI5dI6_, &
      d2wp_dI62_, dI5_dexx_, dI5_deyy_, dI5_dezz_, dI6_dexx_, dI6_deyy_, &
      dI6_dezz_, dexx_depsxx_, deyy_depsxx_, dezz_depsxx_, dphi_dw_, &
      dv_dvp_, dvp_dI5_, dw_dwp_, dwp_dI5_, dwp_dI6_)

end function

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
REAL(KIND=dp) exx_
REAL(KIND=dp) exy_
REAL(KIND=dp) eyy_
REAL(KIND=dp) eyz_
REAL(KIND=dp) ezx_
REAL(KIND=dp) ezz_
REAL(KIND=dp) I4_
REAL(KIND=dp) I5_
REAL(KIND=dp) I6_
REAL(KIND=dp) up_
REAL(KIND=dp) vp_
REAL(KIND=dp) wp_
REAL(KIND=dp) u_
REAL(KIND=dp) v_
REAL(KIND=dp) w_
REAL(KIND=dp) d2I6_dexxdexy_
REAL(KIND=dp) d2I6_dexydeyy_
REAL(KIND=dp) d2phi_dv2_
REAL(KIND=dp) d2phi_dvdw_
REAL(KIND=dp) d2phi_dw2_
REAL(KIND=dp) d2wp_dI52_
REAL(KIND=dp) d2wp_dI5dI6_
REAL(KIND=dp) d2wp_dI62_
REAL(KIND=dp) dI5_dexx_
REAL(KIND=dp) dI5_dexy_
REAL(KIND=dp) dI5_deyy_
REAL(KIND=dp) dI5_dezz_
REAL(KIND=dp) dI6_dexx_
REAL(KIND=dp) dI6_dexy_
REAL(KIND=dp) dI6_deyy_
REAL(KIND=dp) dI6_dezz_
REAL(KIND=dp) dexx_depsxx_
REAL(KIND=dp) dexy_depsxy_
REAL(KIND=dp) deyy_depsxx_
REAL(KIND=dp) dezz_depsxx_
REAL(KIND=dp) dphi_dw_
REAL(KIND=dp) dv_dvp_
REAL(KIND=dp) dvp_dI5_
REAL(KIND=dp) dw_dwp_
REAL(KIND=dp) dwp_dI5_
REAL(KIND=dp) dwp_dI6_

exx_ = exx(epsxx, epsyy, epszz)
exy_ = exy(epsxy)
eyy_ = eyy(epsxx, epsyy, epszz)
eyz_ = eyz(epsyz)
ezx_ = ezx(epszx)
ezz_ = ezz(epsxx, epsyy, epszz)
I4_ = I4(Bx, By, Bz)
I5_ = I5(Bx, By, Bz, exx_, exy_, eyy_, eyz_, ezx_, ezz_)
I6_ = I6(Bx, By, Bz, exx_, exy_, eyy_, eyz_, ezx_, ezz_)
up_ = up(I4_)
vp_ = vp(I4_, I5_)
wp_ = wp(I4_, I5_, I6_)
u_ = u(u0, up_)
v_ = v(v0, vp_)
w_ = w(w0, wp_)
d2I6_dexxdexy_ = d2I6_dexxdexy(Bx, By)
d2I6_dexydeyy_ = d2I6_dexydeyy(Bx, By)
d2phi_dv2_ = d2phi_dv2(u_, v_, w_, young_E, poisson_nu)
d2phi_dvdw_ = d2phi_dvdw(u_, v_, w_, young_E, poisson_nu)
d2phi_dw2_ = d2phi_dw2(u_, v_, w_, young_E, poisson_nu)
d2wp_dI52_ = d2wp_dI52(I4_, I5_, I6_)
d2wp_dI5dI6_ = d2wp_dI5dI6(I4_, I5_, I6_)
d2wp_dI62_ = d2wp_dI62(I4_, I5_, I6_)
dI5_dexx_ = dI5_dexx(Bx)
dI5_dexy_ = dI5_dexy(Bx, By)
dI5_deyy_ = dI5_deyy(By)
dI5_dezz_ = dI5_dezz(Bz)
dI6_dexx_ = dI6_dexx(Bx, By, Bz, exx_, exy_, ezx_)
dI6_dexy_ = dI6_dexy(Bx, By, Bz, exx_, exy_, eyy_, eyz_, ezx_)
dI6_deyy_ = dI6_deyy(Bx, By, Bz, exy_, eyy_, eyz_)
dI6_dezz_ = dI6_dezz(Bx, By, Bz, eyz_, ezx_, ezz_)
dexx_depsxx_ = dexx_depsxx()
dexy_depsxy_ = dexy_depsxy()
deyy_depsxx_ = deyy_depsxx()
dezz_depsxx_ = dezz_depsxx()
dphi_dw_ = dphi_dw(u_, v_, w_, young_E, poisson_nu)
dv_dvp_ = dv_dvp(v0)
dvp_dI5_ = dvp_dI5(I4_)
dw_dwp_ = dw_dwp(w0)
dwp_dI5_ = dwp_dI5(I4_, I5_, I6_)
dwp_dI6_ = dwp_dI6(I4_, I5_, I6_)

d2phi_depsxxdepsxy_public = d2phi_depsxxdepsxy(d2I6_dexxdexy_, &
      d2I6_dexydeyy_, d2phi_dv2_, d2phi_dvdw_, d2phi_dw2_, d2wp_dI52_, &
      d2wp_dI5dI6_, d2wp_dI62_, dI5_dexx_, dI5_dexy_, dI5_deyy_, dI5_dezz_, &
      dI6_dexx_, dI6_dexy_, dI6_deyy_, dI6_dezz_, dexx_depsxx_, &
      dexy_depsxy_, deyy_depsxx_, dezz_depsxx_, dphi_dw_, dv_dvp_, dvp_dI5_, &
      dw_dwp_, dwp_dI5_, dwp_dI6_)

end function

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
REAL(KIND=dp) exx_
REAL(KIND=dp) exy_
REAL(KIND=dp) eyy_
REAL(KIND=dp) eyz_
REAL(KIND=dp) ezx_
REAL(KIND=dp) ezz_
REAL(KIND=dp) I4_
REAL(KIND=dp) I5_
REAL(KIND=dp) I6_
REAL(KIND=dp) up_
REAL(KIND=dp) vp_
REAL(KIND=dp) wp_
REAL(KIND=dp) u_
REAL(KIND=dp) v_
REAL(KIND=dp) w_
REAL(KIND=dp) d2I6_dexx2_
REAL(KIND=dp) d2I6_deyy2_
REAL(KIND=dp) d2I6_dezz2_
REAL(KIND=dp) d2phi_dv2_
REAL(KIND=dp) d2phi_dvdw_
REAL(KIND=dp) d2phi_dw2_
REAL(KIND=dp) d2wp_dI52_
REAL(KIND=dp) d2wp_dI5dI6_
REAL(KIND=dp) d2wp_dI62_
REAL(KIND=dp) dI5_dexx_
REAL(KIND=dp) dI5_deyy_
REAL(KIND=dp) dI5_dezz_
REAL(KIND=dp) dI6_dexx_
REAL(KIND=dp) dI6_deyy_
REAL(KIND=dp) dI6_dezz_
REAL(KIND=dp) dexx_depsxx_
REAL(KIND=dp) dexx_depsyy_
REAL(KIND=dp) deyy_depsxx_
REAL(KIND=dp) deyy_depsyy_
REAL(KIND=dp) dezz_depsxx_
REAL(KIND=dp) dezz_depsyy_
REAL(KIND=dp) dphi_dw_
REAL(KIND=dp) dv_dvp_
REAL(KIND=dp) dvp_dI5_
REAL(KIND=dp) dw_dwp_
REAL(KIND=dp) dwp_dI5_
REAL(KIND=dp) dwp_dI6_

exx_ = exx(epsxx, epsyy, epszz)
exy_ = exy(epsxy)
eyy_ = eyy(epsxx, epsyy, epszz)
eyz_ = eyz(epsyz)
ezx_ = ezx(epszx)
ezz_ = ezz(epsxx, epsyy, epszz)
I4_ = I4(Bx, By, Bz)
I5_ = I5(Bx, By, Bz, exx_, exy_, eyy_, eyz_, ezx_, ezz_)
I6_ = I6(Bx, By, Bz, exx_, exy_, eyy_, eyz_, ezx_, ezz_)
up_ = up(I4_)
vp_ = vp(I4_, I5_)
wp_ = wp(I4_, I5_, I6_)
u_ = u(u0, up_)
v_ = v(v0, vp_)
w_ = w(w0, wp_)
d2I6_dexx2_ = d2I6_dexx2(Bx)
d2I6_deyy2_ = d2I6_deyy2(By)
d2I6_dezz2_ = d2I6_dezz2(Bz)
d2phi_dv2_ = d2phi_dv2(u_, v_, w_, young_E, poisson_nu)
d2phi_dvdw_ = d2phi_dvdw(u_, v_, w_, young_E, poisson_nu)
d2phi_dw2_ = d2phi_dw2(u_, v_, w_, young_E, poisson_nu)
d2wp_dI52_ = d2wp_dI52(I4_, I5_, I6_)
d2wp_dI5dI6_ = d2wp_dI5dI6(I4_, I5_, I6_)
d2wp_dI62_ = d2wp_dI62(I4_, I5_, I6_)
dI5_dexx_ = dI5_dexx(Bx)
dI5_deyy_ = dI5_deyy(By)
dI5_dezz_ = dI5_dezz(Bz)
dI6_dexx_ = dI6_dexx(Bx, By, Bz, exx_, exy_, ezx_)
dI6_deyy_ = dI6_deyy(Bx, By, Bz, exy_, eyy_, eyz_)
dI6_dezz_ = dI6_dezz(Bx, By, Bz, eyz_, ezx_, ezz_)
dexx_depsxx_ = dexx_depsxx()
dexx_depsyy_ = dexx_depsyy()
deyy_depsxx_ = deyy_depsxx()
deyy_depsyy_ = deyy_depsyy()
dezz_depsxx_ = dezz_depsxx()
dezz_depsyy_ = dezz_depsyy()
dphi_dw_ = dphi_dw(u_, v_, w_, young_E, poisson_nu)
dv_dvp_ = dv_dvp(v0)
dvp_dI5_ = dvp_dI5(I4_)
dw_dwp_ = dw_dwp(w0)
dwp_dI5_ = dwp_dI5(I4_, I5_, I6_)
dwp_dI6_ = dwp_dI6(I4_, I5_, I6_)

d2phi_depsxxdepsyy_public = d2phi_depsxxdepsyy(d2I6_dexx2_, d2I6_deyy2_, &
      d2I6_dezz2_, d2phi_dv2_, d2phi_dvdw_, d2phi_dw2_, d2wp_dI52_, &
      d2wp_dI5dI6_, d2wp_dI62_, dI5_dexx_, dI5_deyy_, dI5_dezz_, dI6_dexx_, &
      dI6_deyy_, dI6_dezz_, dexx_depsxx_, dexx_depsyy_, deyy_depsxx_, &
      deyy_depsyy_, dezz_depsxx_, dezz_depsyy_, dphi_dw_, dv_dvp_, dvp_dI5_, &
      dw_dwp_, dwp_dI5_, dwp_dI6_)

end function

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
REAL(KIND=dp) exx_
REAL(KIND=dp) exy_
REAL(KIND=dp) eyy_
REAL(KIND=dp) eyz_
REAL(KIND=dp) ezx_
REAL(KIND=dp) ezz_
REAL(KIND=dp) I4_
REAL(KIND=dp) I5_
REAL(KIND=dp) I6_
REAL(KIND=dp) up_
REAL(KIND=dp) vp_
REAL(KIND=dp) wp_
REAL(KIND=dp) u_
REAL(KIND=dp) v_
REAL(KIND=dp) w_
REAL(KIND=dp) d2I6_deyydeyz_
REAL(KIND=dp) d2I6_deyzdezz_
REAL(KIND=dp) d2phi_dv2_
REAL(KIND=dp) d2phi_dvdw_
REAL(KIND=dp) d2phi_dw2_
REAL(KIND=dp) d2wp_dI52_
REAL(KIND=dp) d2wp_dI5dI6_
REAL(KIND=dp) d2wp_dI62_
REAL(KIND=dp) dI5_dexx_
REAL(KIND=dp) dI5_deyy_
REAL(KIND=dp) dI5_deyz_
REAL(KIND=dp) dI5_dezz_
REAL(KIND=dp) dI6_dexx_
REAL(KIND=dp) dI6_deyy_
REAL(KIND=dp) dI6_deyz_
REAL(KIND=dp) dI6_dezz_
REAL(KIND=dp) dexx_depsxx_
REAL(KIND=dp) deyy_depsxx_
REAL(KIND=dp) deyz_depsyz_
REAL(KIND=dp) dezz_depsxx_
REAL(KIND=dp) dphi_dw_
REAL(KIND=dp) dv_dvp_
REAL(KIND=dp) dvp_dI5_
REAL(KIND=dp) dw_dwp_
REAL(KIND=dp) dwp_dI5_
REAL(KIND=dp) dwp_dI6_

exx_ = exx(epsxx, epsyy, epszz)
exy_ = exy(epsxy)
eyy_ = eyy(epsxx, epsyy, epszz)
eyz_ = eyz(epsyz)
ezx_ = ezx(epszx)
ezz_ = ezz(epsxx, epsyy, epszz)
I4_ = I4(Bx, By, Bz)
I5_ = I5(Bx, By, Bz, exx_, exy_, eyy_, eyz_, ezx_, ezz_)
I6_ = I6(Bx, By, Bz, exx_, exy_, eyy_, eyz_, ezx_, ezz_)
up_ = up(I4_)
vp_ = vp(I4_, I5_)
wp_ = wp(I4_, I5_, I6_)
u_ = u(u0, up_)
v_ = v(v0, vp_)
w_ = w(w0, wp_)
d2I6_deyydeyz_ = d2I6_deyydeyz(By, Bz)
d2I6_deyzdezz_ = d2I6_deyzdezz(By, Bz)
d2phi_dv2_ = d2phi_dv2(u_, v_, w_, young_E, poisson_nu)
d2phi_dvdw_ = d2phi_dvdw(u_, v_, w_, young_E, poisson_nu)
d2phi_dw2_ = d2phi_dw2(u_, v_, w_, young_E, poisson_nu)
d2wp_dI52_ = d2wp_dI52(I4_, I5_, I6_)
d2wp_dI5dI6_ = d2wp_dI5dI6(I4_, I5_, I6_)
d2wp_dI62_ = d2wp_dI62(I4_, I5_, I6_)
dI5_dexx_ = dI5_dexx(Bx)
dI5_deyy_ = dI5_deyy(By)
dI5_deyz_ = dI5_deyz(By, Bz)
dI5_dezz_ = dI5_dezz(Bz)
dI6_dexx_ = dI6_dexx(Bx, By, Bz, exx_, exy_, ezx_)
dI6_deyy_ = dI6_deyy(Bx, By, Bz, exy_, eyy_, eyz_)
dI6_deyz_ = dI6_deyz(Bx, By, Bz, exy_, eyy_, eyz_, ezx_, ezz_)
dI6_dezz_ = dI6_dezz(Bx, By, Bz, eyz_, ezx_, ezz_)
dexx_depsxx_ = dexx_depsxx()
deyy_depsxx_ = deyy_depsxx()
deyz_depsyz_ = deyz_depsyz()
dezz_depsxx_ = dezz_depsxx()
dphi_dw_ = dphi_dw(u_, v_, w_, young_E, poisson_nu)
dv_dvp_ = dv_dvp(v0)
dvp_dI5_ = dvp_dI5(I4_)
dw_dwp_ = dw_dwp(w0)
dwp_dI5_ = dwp_dI5(I4_, I5_, I6_)
dwp_dI6_ = dwp_dI6(I4_, I5_, I6_)

d2phi_depsxxdepsyz_public = d2phi_depsxxdepsyz(d2I6_deyydeyz_, &
      d2I6_deyzdezz_, d2phi_dv2_, d2phi_dvdw_, d2phi_dw2_, d2wp_dI52_, &
      d2wp_dI5dI6_, d2wp_dI62_, dI5_dexx_, dI5_deyy_, dI5_deyz_, dI5_dezz_, &
      dI6_dexx_, dI6_deyy_, dI6_deyz_, dI6_dezz_, dexx_depsxx_, &
      deyy_depsxx_, deyz_depsyz_, dezz_depsxx_, dphi_dw_, dv_dvp_, dvp_dI5_, &
      dw_dwp_, dwp_dI5_, dwp_dI6_)

end function

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
REAL(KIND=dp) exx_
REAL(KIND=dp) exy_
REAL(KIND=dp) eyy_
REAL(KIND=dp) eyz_
REAL(KIND=dp) ezx_
REAL(KIND=dp) ezz_
REAL(KIND=dp) I4_
REAL(KIND=dp) I5_
REAL(KIND=dp) I6_
REAL(KIND=dp) up_
REAL(KIND=dp) vp_
REAL(KIND=dp) wp_
REAL(KIND=dp) u_
REAL(KIND=dp) v_
REAL(KIND=dp) w_
REAL(KIND=dp) d2I6_dexxdezx_
REAL(KIND=dp) d2I6_dezxdezz_
REAL(KIND=dp) d2phi_dv2_
REAL(KIND=dp) d2phi_dvdw_
REAL(KIND=dp) d2phi_dw2_
REAL(KIND=dp) d2wp_dI52_
REAL(KIND=dp) d2wp_dI5dI6_
REAL(KIND=dp) d2wp_dI62_
REAL(KIND=dp) dI5_dexx_
REAL(KIND=dp) dI5_deyy_
REAL(KIND=dp) dI5_dezx_
REAL(KIND=dp) dI5_dezz_
REAL(KIND=dp) dI6_dexx_
REAL(KIND=dp) dI6_deyy_
REAL(KIND=dp) dI6_dezx_
REAL(KIND=dp) dI6_dezz_
REAL(KIND=dp) dexx_depsxx_
REAL(KIND=dp) deyy_depsxx_
REAL(KIND=dp) dezx_depszx_
REAL(KIND=dp) dezz_depsxx_
REAL(KIND=dp) dphi_dw_
REAL(KIND=dp) dv_dvp_
REAL(KIND=dp) dvp_dI5_
REAL(KIND=dp) dw_dwp_
REAL(KIND=dp) dwp_dI5_
REAL(KIND=dp) dwp_dI6_

exx_ = exx(epsxx, epsyy, epszz)
exy_ = exy(epsxy)
eyy_ = eyy(epsxx, epsyy, epszz)
eyz_ = eyz(epsyz)
ezx_ = ezx(epszx)
ezz_ = ezz(epsxx, epsyy, epszz)
I4_ = I4(Bx, By, Bz)
I5_ = I5(Bx, By, Bz, exx_, exy_, eyy_, eyz_, ezx_, ezz_)
I6_ = I6(Bx, By, Bz, exx_, exy_, eyy_, eyz_, ezx_, ezz_)
up_ = up(I4_)
vp_ = vp(I4_, I5_)
wp_ = wp(I4_, I5_, I6_)
u_ = u(u0, up_)
v_ = v(v0, vp_)
w_ = w(w0, wp_)
d2I6_dexxdezx_ = d2I6_dexxdezx(Bx, Bz)
d2I6_dezxdezz_ = d2I6_dezxdezz(Bx, Bz)
d2phi_dv2_ = d2phi_dv2(u_, v_, w_, young_E, poisson_nu)
d2phi_dvdw_ = d2phi_dvdw(u_, v_, w_, young_E, poisson_nu)
d2phi_dw2_ = d2phi_dw2(u_, v_, w_, young_E, poisson_nu)
d2wp_dI52_ = d2wp_dI52(I4_, I5_, I6_)
d2wp_dI5dI6_ = d2wp_dI5dI6(I4_, I5_, I6_)
d2wp_dI62_ = d2wp_dI62(I4_, I5_, I6_)
dI5_dexx_ = dI5_dexx(Bx)
dI5_deyy_ = dI5_deyy(By)
dI5_dezx_ = dI5_dezx(Bx, Bz)
dI5_dezz_ = dI5_dezz(Bz)
dI6_dexx_ = dI6_dexx(Bx, By, Bz, exx_, exy_, ezx_)
dI6_deyy_ = dI6_deyy(Bx, By, Bz, exy_, eyy_, eyz_)
dI6_dezx_ = dI6_dezx(Bx, By, Bz, exx_, exy_, eyz_, ezx_, ezz_)
dI6_dezz_ = dI6_dezz(Bx, By, Bz, eyz_, ezx_, ezz_)
dexx_depsxx_ = dexx_depsxx()
deyy_depsxx_ = deyy_depsxx()
dezx_depszx_ = dezx_depszx()
dezz_depsxx_ = dezz_depsxx()
dphi_dw_ = dphi_dw(u_, v_, w_, young_E, poisson_nu)
dv_dvp_ = dv_dvp(v0)
dvp_dI5_ = dvp_dI5(I4_)
dw_dwp_ = dw_dwp(w0)
dwp_dI5_ = dwp_dI5(I4_, I5_, I6_)
dwp_dI6_ = dwp_dI6(I4_, I5_, I6_)

d2phi_depsxxdepszx_public = d2phi_depsxxdepszx(d2I6_dexxdezx_, &
      d2I6_dezxdezz_, d2phi_dv2_, d2phi_dvdw_, d2phi_dw2_, d2wp_dI52_, &
      d2wp_dI5dI6_, d2wp_dI62_, dI5_dexx_, dI5_deyy_, dI5_dezx_, dI5_dezz_, &
      dI6_dexx_, dI6_deyy_, dI6_dezx_, dI6_dezz_, dexx_depsxx_, &
      deyy_depsxx_, dezx_depszx_, dezz_depsxx_, dphi_dw_, dv_dvp_, dvp_dI5_, &
      dw_dwp_, dwp_dI5_, dwp_dI6_)

end function

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
REAL(KIND=dp) exx_
REAL(KIND=dp) exy_
REAL(KIND=dp) eyy_
REAL(KIND=dp) eyz_
REAL(KIND=dp) ezx_
REAL(KIND=dp) ezz_
REAL(KIND=dp) I4_
REAL(KIND=dp) I5_
REAL(KIND=dp) I6_
REAL(KIND=dp) up_
REAL(KIND=dp) vp_
REAL(KIND=dp) wp_
REAL(KIND=dp) u_
REAL(KIND=dp) v_
REAL(KIND=dp) w_
REAL(KIND=dp) d2I6_dexx2_
REAL(KIND=dp) d2I6_deyy2_
REAL(KIND=dp) d2I6_dezz2_
REAL(KIND=dp) d2phi_dv2_
REAL(KIND=dp) d2phi_dvdw_
REAL(KIND=dp) d2phi_dw2_
REAL(KIND=dp) d2wp_dI52_
REAL(KIND=dp) d2wp_dI5dI6_
REAL(KIND=dp) d2wp_dI62_
REAL(KIND=dp) dI5_dexx_
REAL(KIND=dp) dI5_deyy_
REAL(KIND=dp) dI5_dezz_
REAL(KIND=dp) dI6_dexx_
REAL(KIND=dp) dI6_deyy_
REAL(KIND=dp) dI6_dezz_
REAL(KIND=dp) dexx_depsxx_
REAL(KIND=dp) dexx_depszz_
REAL(KIND=dp) deyy_depsxx_
REAL(KIND=dp) deyy_depszz_
REAL(KIND=dp) dezz_depsxx_
REAL(KIND=dp) dezz_depszz_
REAL(KIND=dp) dphi_dw_
REAL(KIND=dp) dv_dvp_
REAL(KIND=dp) dvp_dI5_
REAL(KIND=dp) dw_dwp_
REAL(KIND=dp) dwp_dI5_
REAL(KIND=dp) dwp_dI6_

exx_ = exx(epsxx, epsyy, epszz)
exy_ = exy(epsxy)
eyy_ = eyy(epsxx, epsyy, epszz)
eyz_ = eyz(epsyz)
ezx_ = ezx(epszx)
ezz_ = ezz(epsxx, epsyy, epszz)
I4_ = I4(Bx, By, Bz)
I5_ = I5(Bx, By, Bz, exx_, exy_, eyy_, eyz_, ezx_, ezz_)
I6_ = I6(Bx, By, Bz, exx_, exy_, eyy_, eyz_, ezx_, ezz_)
up_ = up(I4_)
vp_ = vp(I4_, I5_)
wp_ = wp(I4_, I5_, I6_)
u_ = u(u0, up_)
v_ = v(v0, vp_)
w_ = w(w0, wp_)
d2I6_dexx2_ = d2I6_dexx2(Bx)
d2I6_deyy2_ = d2I6_deyy2(By)
d2I6_dezz2_ = d2I6_dezz2(Bz)
d2phi_dv2_ = d2phi_dv2(u_, v_, w_, young_E, poisson_nu)
d2phi_dvdw_ = d2phi_dvdw(u_, v_, w_, young_E, poisson_nu)
d2phi_dw2_ = d2phi_dw2(u_, v_, w_, young_E, poisson_nu)
d2wp_dI52_ = d2wp_dI52(I4_, I5_, I6_)
d2wp_dI5dI6_ = d2wp_dI5dI6(I4_, I5_, I6_)
d2wp_dI62_ = d2wp_dI62(I4_, I5_, I6_)
dI5_dexx_ = dI5_dexx(Bx)
dI5_deyy_ = dI5_deyy(By)
dI5_dezz_ = dI5_dezz(Bz)
dI6_dexx_ = dI6_dexx(Bx, By, Bz, exx_, exy_, ezx_)
dI6_deyy_ = dI6_deyy(Bx, By, Bz, exy_, eyy_, eyz_)
dI6_dezz_ = dI6_dezz(Bx, By, Bz, eyz_, ezx_, ezz_)
dexx_depsxx_ = dexx_depsxx()
dexx_depszz_ = dexx_depszz()
deyy_depsxx_ = deyy_depsxx()
deyy_depszz_ = deyy_depszz()
dezz_depsxx_ = dezz_depsxx()
dezz_depszz_ = dezz_depszz()
dphi_dw_ = dphi_dw(u_, v_, w_, young_E, poisson_nu)
dv_dvp_ = dv_dvp(v0)
dvp_dI5_ = dvp_dI5(I4_)
dw_dwp_ = dw_dwp(w0)
dwp_dI5_ = dwp_dI5(I4_, I5_, I6_)
dwp_dI6_ = dwp_dI6(I4_, I5_, I6_)

d2phi_depsxxdepszz_public = d2phi_depsxxdepszz(d2I6_dexx2_, d2I6_deyy2_, &
      d2I6_dezz2_, d2phi_dv2_, d2phi_dvdw_, d2phi_dw2_, d2wp_dI52_, &
      d2wp_dI5dI6_, d2wp_dI62_, dI5_dexx_, dI5_deyy_, dI5_dezz_, dI6_dexx_, &
      dI6_deyy_, dI6_dezz_, dexx_depsxx_, dexx_depszz_, deyy_depsxx_, &
      deyy_depszz_, dezz_depsxx_, dezz_depszz_, dphi_dw_, dv_dvp_, dvp_dI5_, &
      dw_dwp_, dwp_dI5_, dwp_dI6_)

end function

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
REAL(KIND=dp) exx_
REAL(KIND=dp) exy_
REAL(KIND=dp) eyy_
REAL(KIND=dp) eyz_
REAL(KIND=dp) ezx_
REAL(KIND=dp) ezz_
REAL(KIND=dp) I4_
REAL(KIND=dp) I5_
REAL(KIND=dp) I6_
REAL(KIND=dp) up_
REAL(KIND=dp) vp_
REAL(KIND=dp) wp_
REAL(KIND=dp) u_
REAL(KIND=dp) v_
REAL(KIND=dp) w_
REAL(KIND=dp) dI5_dexy_
REAL(KIND=dp) dI6_dexy_
REAL(KIND=dp) dexy_depsxy_
REAL(KIND=dp) dphi_dv_
REAL(KIND=dp) dphi_dw_
REAL(KIND=dp) dv_dvp_
REAL(KIND=dp) dvp_dI5_
REAL(KIND=dp) dw_dwp_
REAL(KIND=dp) dwp_dI5_
REAL(KIND=dp) dwp_dI6_

exx_ = exx(epsxx, epsyy, epszz)
exy_ = exy(epsxy)
eyy_ = eyy(epsxx, epsyy, epszz)
eyz_ = eyz(epsyz)
ezx_ = ezx(epszx)
ezz_ = ezz(epsxx, epsyy, epszz)
I4_ = I4(Bx, By, Bz)
I5_ = I5(Bx, By, Bz, exx_, exy_, eyy_, eyz_, ezx_, ezz_)
I6_ = I6(Bx, By, Bz, exx_, exy_, eyy_, eyz_, ezx_, ezz_)
up_ = up(I4_)
vp_ = vp(I4_, I5_)
wp_ = wp(I4_, I5_, I6_)
u_ = u(u0, up_)
v_ = v(v0, vp_)
w_ = w(w0, wp_)
dI5_dexy_ = dI5_dexy(Bx, By)
dI6_dexy_ = dI6_dexy(Bx, By, Bz, exx_, exy_, eyy_, eyz_, ezx_)
dexy_depsxy_ = dexy_depsxy()
dphi_dv_ = dphi_dv(u_, v_, w_, young_E, poisson_nu)
dphi_dw_ = dphi_dw(u_, v_, w_, young_E, poisson_nu)
dv_dvp_ = dv_dvp(v0)
dvp_dI5_ = dvp_dI5(I4_)
dw_dwp_ = dw_dwp(w0)
dwp_dI5_ = dwp_dI5(I4_, I5_, I6_)
dwp_dI6_ = dwp_dI6(I4_, I5_, I6_)

dphi_depsxy_public = dphi_depsxy(dI5_dexy_, dI6_dexy_, dexy_depsxy_, &
      dphi_dv_, dphi_dw_, dv_dvp_, dvp_dI5_, dw_dwp_, dwp_dI5_, dwp_dI6_)

end function

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
REAL(KIND=dp) exx_
REAL(KIND=dp) exy_
REAL(KIND=dp) eyy_
REAL(KIND=dp) eyz_
REAL(KIND=dp) ezx_
REAL(KIND=dp) ezz_
REAL(KIND=dp) I4_
REAL(KIND=dp) I5_
REAL(KIND=dp) I6_
REAL(KIND=dp) up_
REAL(KIND=dp) vp_
REAL(KIND=dp) wp_
REAL(KIND=dp) u_
REAL(KIND=dp) v_
REAL(KIND=dp) w_
REAL(KIND=dp) d2I6_dexy2_
REAL(KIND=dp) d2phi_dv2_
REAL(KIND=dp) d2phi_dvdw_
REAL(KIND=dp) d2phi_dw2_
REAL(KIND=dp) d2wp_dI52_
REAL(KIND=dp) d2wp_dI5dI6_
REAL(KIND=dp) d2wp_dI62_
REAL(KIND=dp) dI5_dexy_
REAL(KIND=dp) dI6_dexy_
REAL(KIND=dp) dexy_depsxy_
REAL(KIND=dp) dphi_dw_
REAL(KIND=dp) dv_dvp_
REAL(KIND=dp) dvp_dI5_
REAL(KIND=dp) dw_dwp_
REAL(KIND=dp) dwp_dI5_
REAL(KIND=dp) dwp_dI6_

exx_ = exx(epsxx, epsyy, epszz)
exy_ = exy(epsxy)
eyy_ = eyy(epsxx, epsyy, epszz)
eyz_ = eyz(epsyz)
ezx_ = ezx(epszx)
ezz_ = ezz(epsxx, epsyy, epszz)
I4_ = I4(Bx, By, Bz)
I5_ = I5(Bx, By, Bz, exx_, exy_, eyy_, eyz_, ezx_, ezz_)
I6_ = I6(Bx, By, Bz, exx_, exy_, eyy_, eyz_, ezx_, ezz_)
up_ = up(I4_)
vp_ = vp(I4_, I5_)
wp_ = wp(I4_, I5_, I6_)
u_ = u(u0, up_)
v_ = v(v0, vp_)
w_ = w(w0, wp_)
d2I6_dexy2_ = d2I6_dexy2(Bx, By)
d2phi_dv2_ = d2phi_dv2(u_, v_, w_, young_E, poisson_nu)
d2phi_dvdw_ = d2phi_dvdw(u_, v_, w_, young_E, poisson_nu)
d2phi_dw2_ = d2phi_dw2(u_, v_, w_, young_E, poisson_nu)
d2wp_dI52_ = d2wp_dI52(I4_, I5_, I6_)
d2wp_dI5dI6_ = d2wp_dI5dI6(I4_, I5_, I6_)
d2wp_dI62_ = d2wp_dI62(I4_, I5_, I6_)
dI5_dexy_ = dI5_dexy(Bx, By)
dI6_dexy_ = dI6_dexy(Bx, By, Bz, exx_, exy_, eyy_, eyz_, ezx_)
dexy_depsxy_ = dexy_depsxy()
dphi_dw_ = dphi_dw(u_, v_, w_, young_E, poisson_nu)
dv_dvp_ = dv_dvp(v0)
dvp_dI5_ = dvp_dI5(I4_)
dw_dwp_ = dw_dwp(w0)
dwp_dI5_ = dwp_dI5(I4_, I5_, I6_)
dwp_dI6_ = dwp_dI6(I4_, I5_, I6_)

d2phi_depsxy2_public = d2phi_depsxy2(d2I6_dexy2_, d2phi_dv2_, d2phi_dvdw_, &
      d2phi_dw2_, d2wp_dI52_, d2wp_dI5dI6_, d2wp_dI62_, dI5_dexy_, &
      dI6_dexy_, dexy_depsxy_, dphi_dw_, dv_dvp_, dvp_dI5_, dw_dwp_, &
      dwp_dI5_, dwp_dI6_)

end function

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
REAL(KIND=dp) exx_
REAL(KIND=dp) exy_
REAL(KIND=dp) eyy_
REAL(KIND=dp) eyz_
REAL(KIND=dp) ezx_
REAL(KIND=dp) ezz_
REAL(KIND=dp) I4_
REAL(KIND=dp) I5_
REAL(KIND=dp) I6_
REAL(KIND=dp) up_
REAL(KIND=dp) vp_
REAL(KIND=dp) wp_
REAL(KIND=dp) u_
REAL(KIND=dp) v_
REAL(KIND=dp) w_
REAL(KIND=dp) d2I6_dexxdexy_
REAL(KIND=dp) d2I6_dexydeyy_
REAL(KIND=dp) d2phi_dv2_
REAL(KIND=dp) d2phi_dvdw_
REAL(KIND=dp) d2phi_dw2_
REAL(KIND=dp) d2wp_dI52_
REAL(KIND=dp) d2wp_dI5dI6_
REAL(KIND=dp) d2wp_dI62_
REAL(KIND=dp) dI5_dexx_
REAL(KIND=dp) dI5_dexy_
REAL(KIND=dp) dI5_deyy_
REAL(KIND=dp) dI5_dezz_
REAL(KIND=dp) dI6_dexx_
REAL(KIND=dp) dI6_dexy_
REAL(KIND=dp) dI6_deyy_
REAL(KIND=dp) dI6_dezz_
REAL(KIND=dp) dexx_depsyy_
REAL(KIND=dp) dexy_depsxy_
REAL(KIND=dp) deyy_depsyy_
REAL(KIND=dp) dezz_depsyy_
REAL(KIND=dp) dphi_dw_
REAL(KIND=dp) dv_dvp_
REAL(KIND=dp) dvp_dI5_
REAL(KIND=dp) dw_dwp_
REAL(KIND=dp) dwp_dI5_
REAL(KIND=dp) dwp_dI6_

exx_ = exx(epsxx, epsyy, epszz)
exy_ = exy(epsxy)
eyy_ = eyy(epsxx, epsyy, epszz)
eyz_ = eyz(epsyz)
ezx_ = ezx(epszx)
ezz_ = ezz(epsxx, epsyy, epszz)
I4_ = I4(Bx, By, Bz)
I5_ = I5(Bx, By, Bz, exx_, exy_, eyy_, eyz_, ezx_, ezz_)
I6_ = I6(Bx, By, Bz, exx_, exy_, eyy_, eyz_, ezx_, ezz_)
up_ = up(I4_)
vp_ = vp(I4_, I5_)
wp_ = wp(I4_, I5_, I6_)
u_ = u(u0, up_)
v_ = v(v0, vp_)
w_ = w(w0, wp_)
d2I6_dexxdexy_ = d2I6_dexxdexy(Bx, By)
d2I6_dexydeyy_ = d2I6_dexydeyy(Bx, By)
d2phi_dv2_ = d2phi_dv2(u_, v_, w_, young_E, poisson_nu)
d2phi_dvdw_ = d2phi_dvdw(u_, v_, w_, young_E, poisson_nu)
d2phi_dw2_ = d2phi_dw2(u_, v_, w_, young_E, poisson_nu)
d2wp_dI52_ = d2wp_dI52(I4_, I5_, I6_)
d2wp_dI5dI6_ = d2wp_dI5dI6(I4_, I5_, I6_)
d2wp_dI62_ = d2wp_dI62(I4_, I5_, I6_)
dI5_dexx_ = dI5_dexx(Bx)
dI5_dexy_ = dI5_dexy(Bx, By)
dI5_deyy_ = dI5_deyy(By)
dI5_dezz_ = dI5_dezz(Bz)
dI6_dexx_ = dI6_dexx(Bx, By, Bz, exx_, exy_, ezx_)
dI6_dexy_ = dI6_dexy(Bx, By, Bz, exx_, exy_, eyy_, eyz_, ezx_)
dI6_deyy_ = dI6_deyy(Bx, By, Bz, exy_, eyy_, eyz_)
dI6_dezz_ = dI6_dezz(Bx, By, Bz, eyz_, ezx_, ezz_)
dexx_depsyy_ = dexx_depsyy()
dexy_depsxy_ = dexy_depsxy()
deyy_depsyy_ = deyy_depsyy()
dezz_depsyy_ = dezz_depsyy()
dphi_dw_ = dphi_dw(u_, v_, w_, young_E, poisson_nu)
dv_dvp_ = dv_dvp(v0)
dvp_dI5_ = dvp_dI5(I4_)
dw_dwp_ = dw_dwp(w0)
dwp_dI5_ = dwp_dI5(I4_, I5_, I6_)
dwp_dI6_ = dwp_dI6(I4_, I5_, I6_)

d2phi_depsxydepsyy_public = d2phi_depsxydepsyy(d2I6_dexxdexy_, &
      d2I6_dexydeyy_, d2phi_dv2_, d2phi_dvdw_, d2phi_dw2_, d2wp_dI52_, &
      d2wp_dI5dI6_, d2wp_dI62_, dI5_dexx_, dI5_dexy_, dI5_deyy_, dI5_dezz_, &
      dI6_dexx_, dI6_dexy_, dI6_deyy_, dI6_dezz_, dexx_depsyy_, &
      dexy_depsxy_, deyy_depsyy_, dezz_depsyy_, dphi_dw_, dv_dvp_, dvp_dI5_, &
      dw_dwp_, dwp_dI5_, dwp_dI6_)

end function

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
REAL(KIND=dp) exx_
REAL(KIND=dp) exy_
REAL(KIND=dp) eyy_
REAL(KIND=dp) eyz_
REAL(KIND=dp) ezx_
REAL(KIND=dp) ezz_
REAL(KIND=dp) I4_
REAL(KIND=dp) I5_
REAL(KIND=dp) I6_
REAL(KIND=dp) up_
REAL(KIND=dp) vp_
REAL(KIND=dp) wp_
REAL(KIND=dp) u_
REAL(KIND=dp) v_
REAL(KIND=dp) w_
REAL(KIND=dp) d2I6_dexydeyz_
REAL(KIND=dp) d2phi_dv2_
REAL(KIND=dp) d2phi_dvdw_
REAL(KIND=dp) d2phi_dw2_
REAL(KIND=dp) d2wp_dI52_
REAL(KIND=dp) d2wp_dI5dI6_
REAL(KIND=dp) d2wp_dI62_
REAL(KIND=dp) dI5_dexy_
REAL(KIND=dp) dI5_deyz_
REAL(KIND=dp) dI6_dexy_
REAL(KIND=dp) dI6_deyz_
REAL(KIND=dp) dexy_depsxy_
REAL(KIND=dp) deyz_depsyz_
REAL(KIND=dp) dphi_dw_
REAL(KIND=dp) dv_dvp_
REAL(KIND=dp) dvp_dI5_
REAL(KIND=dp) dw_dwp_
REAL(KIND=dp) dwp_dI5_
REAL(KIND=dp) dwp_dI6_

exx_ = exx(epsxx, epsyy, epszz)
exy_ = exy(epsxy)
eyy_ = eyy(epsxx, epsyy, epszz)
eyz_ = eyz(epsyz)
ezx_ = ezx(epszx)
ezz_ = ezz(epsxx, epsyy, epszz)
I4_ = I4(Bx, By, Bz)
I5_ = I5(Bx, By, Bz, exx_, exy_, eyy_, eyz_, ezx_, ezz_)
I6_ = I6(Bx, By, Bz, exx_, exy_, eyy_, eyz_, ezx_, ezz_)
up_ = up(I4_)
vp_ = vp(I4_, I5_)
wp_ = wp(I4_, I5_, I6_)
u_ = u(u0, up_)
v_ = v(v0, vp_)
w_ = w(w0, wp_)
d2I6_dexydeyz_ = d2I6_dexydeyz(Bx, Bz)
d2phi_dv2_ = d2phi_dv2(u_, v_, w_, young_E, poisson_nu)
d2phi_dvdw_ = d2phi_dvdw(u_, v_, w_, young_E, poisson_nu)
d2phi_dw2_ = d2phi_dw2(u_, v_, w_, young_E, poisson_nu)
d2wp_dI52_ = d2wp_dI52(I4_, I5_, I6_)
d2wp_dI5dI6_ = d2wp_dI5dI6(I4_, I5_, I6_)
d2wp_dI62_ = d2wp_dI62(I4_, I5_, I6_)
dI5_dexy_ = dI5_dexy(Bx, By)
dI5_deyz_ = dI5_deyz(By, Bz)
dI6_dexy_ = dI6_dexy(Bx, By, Bz, exx_, exy_, eyy_, eyz_, ezx_)
dI6_deyz_ = dI6_deyz(Bx, By, Bz, exy_, eyy_, eyz_, ezx_, ezz_)
dexy_depsxy_ = dexy_depsxy()
deyz_depsyz_ = deyz_depsyz()
dphi_dw_ = dphi_dw(u_, v_, w_, young_E, poisson_nu)
dv_dvp_ = dv_dvp(v0)
dvp_dI5_ = dvp_dI5(I4_)
dw_dwp_ = dw_dwp(w0)
dwp_dI5_ = dwp_dI5(I4_, I5_, I6_)
dwp_dI6_ = dwp_dI6(I4_, I5_, I6_)

d2phi_depsxydepsyz_public = d2phi_depsxydepsyz(d2I6_dexydeyz_, d2phi_dv2_, &
      d2phi_dvdw_, d2phi_dw2_, d2wp_dI52_, d2wp_dI5dI6_, d2wp_dI62_, &
      dI5_dexy_, dI5_deyz_, dI6_dexy_, dI6_deyz_, dexy_depsxy_, &
      deyz_depsyz_, dphi_dw_, dv_dvp_, dvp_dI5_, dw_dwp_, dwp_dI5_, &
      dwp_dI6_)

end function

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
REAL(KIND=dp) exx_
REAL(KIND=dp) exy_
REAL(KIND=dp) eyy_
REAL(KIND=dp) eyz_
REAL(KIND=dp) ezx_
REAL(KIND=dp) ezz_
REAL(KIND=dp) I4_
REAL(KIND=dp) I5_
REAL(KIND=dp) I6_
REAL(KIND=dp) up_
REAL(KIND=dp) vp_
REAL(KIND=dp) wp_
REAL(KIND=dp) u_
REAL(KIND=dp) v_
REAL(KIND=dp) w_
REAL(KIND=dp) d2I6_dexydezx_
REAL(KIND=dp) d2phi_dv2_
REAL(KIND=dp) d2phi_dvdw_
REAL(KIND=dp) d2phi_dw2_
REAL(KIND=dp) d2wp_dI52_
REAL(KIND=dp) d2wp_dI5dI6_
REAL(KIND=dp) d2wp_dI62_
REAL(KIND=dp) dI5_dexy_
REAL(KIND=dp) dI5_dezx_
REAL(KIND=dp) dI6_dexy_
REAL(KIND=dp) dI6_dezx_
REAL(KIND=dp) dexy_depsxy_
REAL(KIND=dp) dezx_depszx_
REAL(KIND=dp) dphi_dw_
REAL(KIND=dp) dv_dvp_
REAL(KIND=dp) dvp_dI5_
REAL(KIND=dp) dw_dwp_
REAL(KIND=dp) dwp_dI5_
REAL(KIND=dp) dwp_dI6_

exx_ = exx(epsxx, epsyy, epszz)
exy_ = exy(epsxy)
eyy_ = eyy(epsxx, epsyy, epszz)
eyz_ = eyz(epsyz)
ezx_ = ezx(epszx)
ezz_ = ezz(epsxx, epsyy, epszz)
I4_ = I4(Bx, By, Bz)
I5_ = I5(Bx, By, Bz, exx_, exy_, eyy_, eyz_, ezx_, ezz_)
I6_ = I6(Bx, By, Bz, exx_, exy_, eyy_, eyz_, ezx_, ezz_)
up_ = up(I4_)
vp_ = vp(I4_, I5_)
wp_ = wp(I4_, I5_, I6_)
u_ = u(u0, up_)
v_ = v(v0, vp_)
w_ = w(w0, wp_)
d2I6_dexydezx_ = d2I6_dexydezx(By, Bz)
d2phi_dv2_ = d2phi_dv2(u_, v_, w_, young_E, poisson_nu)
d2phi_dvdw_ = d2phi_dvdw(u_, v_, w_, young_E, poisson_nu)
d2phi_dw2_ = d2phi_dw2(u_, v_, w_, young_E, poisson_nu)
d2wp_dI52_ = d2wp_dI52(I4_, I5_, I6_)
d2wp_dI5dI6_ = d2wp_dI5dI6(I4_, I5_, I6_)
d2wp_dI62_ = d2wp_dI62(I4_, I5_, I6_)
dI5_dexy_ = dI5_dexy(Bx, By)
dI5_dezx_ = dI5_dezx(Bx, Bz)
dI6_dexy_ = dI6_dexy(Bx, By, Bz, exx_, exy_, eyy_, eyz_, ezx_)
dI6_dezx_ = dI6_dezx(Bx, By, Bz, exx_, exy_, eyz_, ezx_, ezz_)
dexy_depsxy_ = dexy_depsxy()
dezx_depszx_ = dezx_depszx()
dphi_dw_ = dphi_dw(u_, v_, w_, young_E, poisson_nu)
dv_dvp_ = dv_dvp(v0)
dvp_dI5_ = dvp_dI5(I4_)
dw_dwp_ = dw_dwp(w0)
dwp_dI5_ = dwp_dI5(I4_, I5_, I6_)
dwp_dI6_ = dwp_dI6(I4_, I5_, I6_)

d2phi_depsxydepszx_public = d2phi_depsxydepszx(d2I6_dexydezx_, d2phi_dv2_, &
      d2phi_dvdw_, d2phi_dw2_, d2wp_dI52_, d2wp_dI5dI6_, d2wp_dI62_, &
      dI5_dexy_, dI5_dezx_, dI6_dexy_, dI6_dezx_, dexy_depsxy_, &
      dezx_depszx_, dphi_dw_, dv_dvp_, dvp_dI5_, dw_dwp_, dwp_dI5_, &
      dwp_dI6_)

end function

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
REAL(KIND=dp) exx_
REAL(KIND=dp) exy_
REAL(KIND=dp) eyy_
REAL(KIND=dp) eyz_
REAL(KIND=dp) ezx_
REAL(KIND=dp) ezz_
REAL(KIND=dp) I4_
REAL(KIND=dp) I5_
REAL(KIND=dp) I6_
REAL(KIND=dp) up_
REAL(KIND=dp) vp_
REAL(KIND=dp) wp_
REAL(KIND=dp) u_
REAL(KIND=dp) v_
REAL(KIND=dp) w_
REAL(KIND=dp) d2I6_dexxdexy_
REAL(KIND=dp) d2I6_dexydeyy_
REAL(KIND=dp) d2phi_dv2_
REAL(KIND=dp) d2phi_dvdw_
REAL(KIND=dp) d2phi_dw2_
REAL(KIND=dp) d2wp_dI52_
REAL(KIND=dp) d2wp_dI5dI6_
REAL(KIND=dp) d2wp_dI62_
REAL(KIND=dp) dI5_dexx_
REAL(KIND=dp) dI5_dexy_
REAL(KIND=dp) dI5_deyy_
REAL(KIND=dp) dI5_dezz_
REAL(KIND=dp) dI6_dexx_
REAL(KIND=dp) dI6_dexy_
REAL(KIND=dp) dI6_deyy_
REAL(KIND=dp) dI6_dezz_
REAL(KIND=dp) dexx_depszz_
REAL(KIND=dp) dexy_depsxy_
REAL(KIND=dp) deyy_depszz_
REAL(KIND=dp) dezz_depszz_
REAL(KIND=dp) dphi_dw_
REAL(KIND=dp) dv_dvp_
REAL(KIND=dp) dvp_dI5_
REAL(KIND=dp) dw_dwp_
REAL(KIND=dp) dwp_dI5_
REAL(KIND=dp) dwp_dI6_

exx_ = exx(epsxx, epsyy, epszz)
exy_ = exy(epsxy)
eyy_ = eyy(epsxx, epsyy, epszz)
eyz_ = eyz(epsyz)
ezx_ = ezx(epszx)
ezz_ = ezz(epsxx, epsyy, epszz)
I4_ = I4(Bx, By, Bz)
I5_ = I5(Bx, By, Bz, exx_, exy_, eyy_, eyz_, ezx_, ezz_)
I6_ = I6(Bx, By, Bz, exx_, exy_, eyy_, eyz_, ezx_, ezz_)
up_ = up(I4_)
vp_ = vp(I4_, I5_)
wp_ = wp(I4_, I5_, I6_)
u_ = u(u0, up_)
v_ = v(v0, vp_)
w_ = w(w0, wp_)
d2I6_dexxdexy_ = d2I6_dexxdexy(Bx, By)
d2I6_dexydeyy_ = d2I6_dexydeyy(Bx, By)
d2phi_dv2_ = d2phi_dv2(u_, v_, w_, young_E, poisson_nu)
d2phi_dvdw_ = d2phi_dvdw(u_, v_, w_, young_E, poisson_nu)
d2phi_dw2_ = d2phi_dw2(u_, v_, w_, young_E, poisson_nu)
d2wp_dI52_ = d2wp_dI52(I4_, I5_, I6_)
d2wp_dI5dI6_ = d2wp_dI5dI6(I4_, I5_, I6_)
d2wp_dI62_ = d2wp_dI62(I4_, I5_, I6_)
dI5_dexx_ = dI5_dexx(Bx)
dI5_dexy_ = dI5_dexy(Bx, By)
dI5_deyy_ = dI5_deyy(By)
dI5_dezz_ = dI5_dezz(Bz)
dI6_dexx_ = dI6_dexx(Bx, By, Bz, exx_, exy_, ezx_)
dI6_dexy_ = dI6_dexy(Bx, By, Bz, exx_, exy_, eyy_, eyz_, ezx_)
dI6_deyy_ = dI6_deyy(Bx, By, Bz, exy_, eyy_, eyz_)
dI6_dezz_ = dI6_dezz(Bx, By, Bz, eyz_, ezx_, ezz_)
dexx_depszz_ = dexx_depszz()
dexy_depsxy_ = dexy_depsxy()
deyy_depszz_ = deyy_depszz()
dezz_depszz_ = dezz_depszz()
dphi_dw_ = dphi_dw(u_, v_, w_, young_E, poisson_nu)
dv_dvp_ = dv_dvp(v0)
dvp_dI5_ = dvp_dI5(I4_)
dw_dwp_ = dw_dwp(w0)
dwp_dI5_ = dwp_dI5(I4_, I5_, I6_)
dwp_dI6_ = dwp_dI6(I4_, I5_, I6_)

d2phi_depsxydepszz_public = d2phi_depsxydepszz(d2I6_dexxdexy_, &
      d2I6_dexydeyy_, d2phi_dv2_, d2phi_dvdw_, d2phi_dw2_, d2wp_dI52_, &
      d2wp_dI5dI6_, d2wp_dI62_, dI5_dexx_, dI5_dexy_, dI5_deyy_, dI5_dezz_, &
      dI6_dexx_, dI6_dexy_, dI6_deyy_, dI6_dezz_, dexx_depszz_, &
      dexy_depsxy_, deyy_depszz_, dezz_depszz_, dphi_dw_, dv_dvp_, dvp_dI5_, &
      dw_dwp_, dwp_dI5_, dwp_dI6_)

end function

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
REAL(KIND=dp) exx_
REAL(KIND=dp) exy_
REAL(KIND=dp) eyy_
REAL(KIND=dp) eyz_
REAL(KIND=dp) ezx_
REAL(KIND=dp) ezz_
REAL(KIND=dp) I4_
REAL(KIND=dp) I5_
REAL(KIND=dp) I6_
REAL(KIND=dp) up_
REAL(KIND=dp) vp_
REAL(KIND=dp) wp_
REAL(KIND=dp) u_
REAL(KIND=dp) v_
REAL(KIND=dp) w_
REAL(KIND=dp) dI5_dexx_
REAL(KIND=dp) dI5_deyy_
REAL(KIND=dp) dI5_dezz_
REAL(KIND=dp) dI6_dexx_
REAL(KIND=dp) dI6_deyy_
REAL(KIND=dp) dI6_dezz_
REAL(KIND=dp) dexx_depsyy_
REAL(KIND=dp) deyy_depsyy_
REAL(KIND=dp) dezz_depsyy_
REAL(KIND=dp) dphi_dv_
REAL(KIND=dp) dphi_dw_
REAL(KIND=dp) dv_dvp_
REAL(KIND=dp) dvp_dI5_
REAL(KIND=dp) dw_dwp_
REAL(KIND=dp) dwp_dI5_
REAL(KIND=dp) dwp_dI6_

exx_ = exx(epsxx, epsyy, epszz)
exy_ = exy(epsxy)
eyy_ = eyy(epsxx, epsyy, epszz)
eyz_ = eyz(epsyz)
ezx_ = ezx(epszx)
ezz_ = ezz(epsxx, epsyy, epszz)
I4_ = I4(Bx, By, Bz)
I5_ = I5(Bx, By, Bz, exx_, exy_, eyy_, eyz_, ezx_, ezz_)
I6_ = I6(Bx, By, Bz, exx_, exy_, eyy_, eyz_, ezx_, ezz_)
up_ = up(I4_)
vp_ = vp(I4_, I5_)
wp_ = wp(I4_, I5_, I6_)
u_ = u(u0, up_)
v_ = v(v0, vp_)
w_ = w(w0, wp_)
dI5_dexx_ = dI5_dexx(Bx)
dI5_deyy_ = dI5_deyy(By)
dI5_dezz_ = dI5_dezz(Bz)
dI6_dexx_ = dI6_dexx(Bx, By, Bz, exx_, exy_, ezx_)
dI6_deyy_ = dI6_deyy(Bx, By, Bz, exy_, eyy_, eyz_)
dI6_dezz_ = dI6_dezz(Bx, By, Bz, eyz_, ezx_, ezz_)
dexx_depsyy_ = dexx_depsyy()
deyy_depsyy_ = deyy_depsyy()
dezz_depsyy_ = dezz_depsyy()
dphi_dv_ = dphi_dv(u_, v_, w_, young_E, poisson_nu)
dphi_dw_ = dphi_dw(u_, v_, w_, young_E, poisson_nu)
dv_dvp_ = dv_dvp(v0)
dvp_dI5_ = dvp_dI5(I4_)
dw_dwp_ = dw_dwp(w0)
dwp_dI5_ = dwp_dI5(I4_, I5_, I6_)
dwp_dI6_ = dwp_dI6(I4_, I5_, I6_)

dphi_depsyy_public = dphi_depsyy(dI5_dexx_, dI5_deyy_, dI5_dezz_, dI6_dexx_, &
      dI6_deyy_, dI6_dezz_, dexx_depsyy_, deyy_depsyy_, dezz_depsyy_, &
      dphi_dv_, dphi_dw_, dv_dvp_, dvp_dI5_, dw_dwp_, dwp_dI5_, dwp_dI6_)

end function

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
REAL(KIND=dp) exx_
REAL(KIND=dp) exy_
REAL(KIND=dp) eyy_
REAL(KIND=dp) eyz_
REAL(KIND=dp) ezx_
REAL(KIND=dp) ezz_
REAL(KIND=dp) I4_
REAL(KIND=dp) I5_
REAL(KIND=dp) I6_
REAL(KIND=dp) up_
REAL(KIND=dp) vp_
REAL(KIND=dp) wp_
REAL(KIND=dp) u_
REAL(KIND=dp) v_
REAL(KIND=dp) w_
REAL(KIND=dp) d2I6_dexx2_
REAL(KIND=dp) d2I6_deyy2_
REAL(KIND=dp) d2I6_dezz2_
REAL(KIND=dp) d2phi_dv2_
REAL(KIND=dp) d2phi_dvdw_
REAL(KIND=dp) d2phi_dw2_
REAL(KIND=dp) d2wp_dI52_
REAL(KIND=dp) d2wp_dI5dI6_
REAL(KIND=dp) d2wp_dI62_
REAL(KIND=dp) dI5_dexx_
REAL(KIND=dp) dI5_deyy_
REAL(KIND=dp) dI5_dezz_
REAL(KIND=dp) dI6_dexx_
REAL(KIND=dp) dI6_deyy_
REAL(KIND=dp) dI6_dezz_
REAL(KIND=dp) dexx_depsyy_
REAL(KIND=dp) deyy_depsyy_
REAL(KIND=dp) dezz_depsyy_
REAL(KIND=dp) dphi_dw_
REAL(KIND=dp) dv_dvp_
REAL(KIND=dp) dvp_dI5_
REAL(KIND=dp) dw_dwp_
REAL(KIND=dp) dwp_dI5_
REAL(KIND=dp) dwp_dI6_

exx_ = exx(epsxx, epsyy, epszz)
exy_ = exy(epsxy)
eyy_ = eyy(epsxx, epsyy, epszz)
eyz_ = eyz(epsyz)
ezx_ = ezx(epszx)
ezz_ = ezz(epsxx, epsyy, epszz)
I4_ = I4(Bx, By, Bz)
I5_ = I5(Bx, By, Bz, exx_, exy_, eyy_, eyz_, ezx_, ezz_)
I6_ = I6(Bx, By, Bz, exx_, exy_, eyy_, eyz_, ezx_, ezz_)
up_ = up(I4_)
vp_ = vp(I4_, I5_)
wp_ = wp(I4_, I5_, I6_)
u_ = u(u0, up_)
v_ = v(v0, vp_)
w_ = w(w0, wp_)
d2I6_dexx2_ = d2I6_dexx2(Bx)
d2I6_deyy2_ = d2I6_deyy2(By)
d2I6_dezz2_ = d2I6_dezz2(Bz)
d2phi_dv2_ = d2phi_dv2(u_, v_, w_, young_E, poisson_nu)
d2phi_dvdw_ = d2phi_dvdw(u_, v_, w_, young_E, poisson_nu)
d2phi_dw2_ = d2phi_dw2(u_, v_, w_, young_E, poisson_nu)
d2wp_dI52_ = d2wp_dI52(I4_, I5_, I6_)
d2wp_dI5dI6_ = d2wp_dI5dI6(I4_, I5_, I6_)
d2wp_dI62_ = d2wp_dI62(I4_, I5_, I6_)
dI5_dexx_ = dI5_dexx(Bx)
dI5_deyy_ = dI5_deyy(By)
dI5_dezz_ = dI5_dezz(Bz)
dI6_dexx_ = dI6_dexx(Bx, By, Bz, exx_, exy_, ezx_)
dI6_deyy_ = dI6_deyy(Bx, By, Bz, exy_, eyy_, eyz_)
dI6_dezz_ = dI6_dezz(Bx, By, Bz, eyz_, ezx_, ezz_)
dexx_depsyy_ = dexx_depsyy()
deyy_depsyy_ = deyy_depsyy()
dezz_depsyy_ = dezz_depsyy()
dphi_dw_ = dphi_dw(u_, v_, w_, young_E, poisson_nu)
dv_dvp_ = dv_dvp(v0)
dvp_dI5_ = dvp_dI5(I4_)
dw_dwp_ = dw_dwp(w0)
dwp_dI5_ = dwp_dI5(I4_, I5_, I6_)
dwp_dI6_ = dwp_dI6(I4_, I5_, I6_)

d2phi_depsyy2_public = d2phi_depsyy2(d2I6_dexx2_, d2I6_deyy2_, d2I6_dezz2_, &
      d2phi_dv2_, d2phi_dvdw_, d2phi_dw2_, d2wp_dI52_, d2wp_dI5dI6_, &
      d2wp_dI62_, dI5_dexx_, dI5_deyy_, dI5_dezz_, dI6_dexx_, dI6_deyy_, &
      dI6_dezz_, dexx_depsyy_, deyy_depsyy_, dezz_depsyy_, dphi_dw_, &
      dv_dvp_, dvp_dI5_, dw_dwp_, dwp_dI5_, dwp_dI6_)

end function

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
REAL(KIND=dp) exx_
REAL(KIND=dp) exy_
REAL(KIND=dp) eyy_
REAL(KIND=dp) eyz_
REAL(KIND=dp) ezx_
REAL(KIND=dp) ezz_
REAL(KIND=dp) I4_
REAL(KIND=dp) I5_
REAL(KIND=dp) I6_
REAL(KIND=dp) up_
REAL(KIND=dp) vp_
REAL(KIND=dp) wp_
REAL(KIND=dp) u_
REAL(KIND=dp) v_
REAL(KIND=dp) w_
REAL(KIND=dp) d2I6_deyydeyz_
REAL(KIND=dp) d2I6_deyzdezz_
REAL(KIND=dp) d2phi_dv2_
REAL(KIND=dp) d2phi_dvdw_
REAL(KIND=dp) d2phi_dw2_
REAL(KIND=dp) d2wp_dI52_
REAL(KIND=dp) d2wp_dI5dI6_
REAL(KIND=dp) d2wp_dI62_
REAL(KIND=dp) dI5_dexx_
REAL(KIND=dp) dI5_deyy_
REAL(KIND=dp) dI5_deyz_
REAL(KIND=dp) dI5_dezz_
REAL(KIND=dp) dI6_dexx_
REAL(KIND=dp) dI6_deyy_
REAL(KIND=dp) dI6_deyz_
REAL(KIND=dp) dI6_dezz_
REAL(KIND=dp) dexx_depsyy_
REAL(KIND=dp) deyy_depsyy_
REAL(KIND=dp) deyz_depsyz_
REAL(KIND=dp) dezz_depsyy_
REAL(KIND=dp) dphi_dw_
REAL(KIND=dp) dv_dvp_
REAL(KIND=dp) dvp_dI5_
REAL(KIND=dp) dw_dwp_
REAL(KIND=dp) dwp_dI5_
REAL(KIND=dp) dwp_dI6_

exx_ = exx(epsxx, epsyy, epszz)
exy_ = exy(epsxy)
eyy_ = eyy(epsxx, epsyy, epszz)
eyz_ = eyz(epsyz)
ezx_ = ezx(epszx)
ezz_ = ezz(epsxx, epsyy, epszz)
I4_ = I4(Bx, By, Bz)
I5_ = I5(Bx, By, Bz, exx_, exy_, eyy_, eyz_, ezx_, ezz_)
I6_ = I6(Bx, By, Bz, exx_, exy_, eyy_, eyz_, ezx_, ezz_)
up_ = up(I4_)
vp_ = vp(I4_, I5_)
wp_ = wp(I4_, I5_, I6_)
u_ = u(u0, up_)
v_ = v(v0, vp_)
w_ = w(w0, wp_)
d2I6_deyydeyz_ = d2I6_deyydeyz(By, Bz)
d2I6_deyzdezz_ = d2I6_deyzdezz(By, Bz)
d2phi_dv2_ = d2phi_dv2(u_, v_, w_, young_E, poisson_nu)
d2phi_dvdw_ = d2phi_dvdw(u_, v_, w_, young_E, poisson_nu)
d2phi_dw2_ = d2phi_dw2(u_, v_, w_, young_E, poisson_nu)
d2wp_dI52_ = d2wp_dI52(I4_, I5_, I6_)
d2wp_dI5dI6_ = d2wp_dI5dI6(I4_, I5_, I6_)
d2wp_dI62_ = d2wp_dI62(I4_, I5_, I6_)
dI5_dexx_ = dI5_dexx(Bx)
dI5_deyy_ = dI5_deyy(By)
dI5_deyz_ = dI5_deyz(By, Bz)
dI5_dezz_ = dI5_dezz(Bz)
dI6_dexx_ = dI6_dexx(Bx, By, Bz, exx_, exy_, ezx_)
dI6_deyy_ = dI6_deyy(Bx, By, Bz, exy_, eyy_, eyz_)
dI6_deyz_ = dI6_deyz(Bx, By, Bz, exy_, eyy_, eyz_, ezx_, ezz_)
dI6_dezz_ = dI6_dezz(Bx, By, Bz, eyz_, ezx_, ezz_)
dexx_depsyy_ = dexx_depsyy()
deyy_depsyy_ = deyy_depsyy()
deyz_depsyz_ = deyz_depsyz()
dezz_depsyy_ = dezz_depsyy()
dphi_dw_ = dphi_dw(u_, v_, w_, young_E, poisson_nu)
dv_dvp_ = dv_dvp(v0)
dvp_dI5_ = dvp_dI5(I4_)
dw_dwp_ = dw_dwp(w0)
dwp_dI5_ = dwp_dI5(I4_, I5_, I6_)
dwp_dI6_ = dwp_dI6(I4_, I5_, I6_)

d2phi_depsyydepsyz_public = d2phi_depsyydepsyz(d2I6_deyydeyz_, &
      d2I6_deyzdezz_, d2phi_dv2_, d2phi_dvdw_, d2phi_dw2_, d2wp_dI52_, &
      d2wp_dI5dI6_, d2wp_dI62_, dI5_dexx_, dI5_deyy_, dI5_deyz_, dI5_dezz_, &
      dI6_dexx_, dI6_deyy_, dI6_deyz_, dI6_dezz_, dexx_depsyy_, &
      deyy_depsyy_, deyz_depsyz_, dezz_depsyy_, dphi_dw_, dv_dvp_, dvp_dI5_, &
      dw_dwp_, dwp_dI5_, dwp_dI6_)

end function

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
REAL(KIND=dp) exx_
REAL(KIND=dp) exy_
REAL(KIND=dp) eyy_
REAL(KIND=dp) eyz_
REAL(KIND=dp) ezx_
REAL(KIND=dp) ezz_
REAL(KIND=dp) I4_
REAL(KIND=dp) I5_
REAL(KIND=dp) I6_
REAL(KIND=dp) up_
REAL(KIND=dp) vp_
REAL(KIND=dp) wp_
REAL(KIND=dp) u_
REAL(KIND=dp) v_
REAL(KIND=dp) w_
REAL(KIND=dp) d2I6_dexxdezx_
REAL(KIND=dp) d2I6_dezxdezz_
REAL(KIND=dp) d2phi_dv2_
REAL(KIND=dp) d2phi_dvdw_
REAL(KIND=dp) d2phi_dw2_
REAL(KIND=dp) d2wp_dI52_
REAL(KIND=dp) d2wp_dI5dI6_
REAL(KIND=dp) d2wp_dI62_
REAL(KIND=dp) dI5_dexx_
REAL(KIND=dp) dI5_deyy_
REAL(KIND=dp) dI5_dezx_
REAL(KIND=dp) dI5_dezz_
REAL(KIND=dp) dI6_dexx_
REAL(KIND=dp) dI6_deyy_
REAL(KIND=dp) dI6_dezx_
REAL(KIND=dp) dI6_dezz_
REAL(KIND=dp) dexx_depsyy_
REAL(KIND=dp) deyy_depsyy_
REAL(KIND=dp) dezx_depszx_
REAL(KIND=dp) dezz_depsyy_
REAL(KIND=dp) dphi_dw_
REAL(KIND=dp) dv_dvp_
REAL(KIND=dp) dvp_dI5_
REAL(KIND=dp) dw_dwp_
REAL(KIND=dp) dwp_dI5_
REAL(KIND=dp) dwp_dI6_

exx_ = exx(epsxx, epsyy, epszz)
exy_ = exy(epsxy)
eyy_ = eyy(epsxx, epsyy, epszz)
eyz_ = eyz(epsyz)
ezx_ = ezx(epszx)
ezz_ = ezz(epsxx, epsyy, epszz)
I4_ = I4(Bx, By, Bz)
I5_ = I5(Bx, By, Bz, exx_, exy_, eyy_, eyz_, ezx_, ezz_)
I6_ = I6(Bx, By, Bz, exx_, exy_, eyy_, eyz_, ezx_, ezz_)
up_ = up(I4_)
vp_ = vp(I4_, I5_)
wp_ = wp(I4_, I5_, I6_)
u_ = u(u0, up_)
v_ = v(v0, vp_)
w_ = w(w0, wp_)
d2I6_dexxdezx_ = d2I6_dexxdezx(Bx, Bz)
d2I6_dezxdezz_ = d2I6_dezxdezz(Bx, Bz)
d2phi_dv2_ = d2phi_dv2(u_, v_, w_, young_E, poisson_nu)
d2phi_dvdw_ = d2phi_dvdw(u_, v_, w_, young_E, poisson_nu)
d2phi_dw2_ = d2phi_dw2(u_, v_, w_, young_E, poisson_nu)
d2wp_dI52_ = d2wp_dI52(I4_, I5_, I6_)
d2wp_dI5dI6_ = d2wp_dI5dI6(I4_, I5_, I6_)
d2wp_dI62_ = d2wp_dI62(I4_, I5_, I6_)
dI5_dexx_ = dI5_dexx(Bx)
dI5_deyy_ = dI5_deyy(By)
dI5_dezx_ = dI5_dezx(Bx, Bz)
dI5_dezz_ = dI5_dezz(Bz)
dI6_dexx_ = dI6_dexx(Bx, By, Bz, exx_, exy_, ezx_)
dI6_deyy_ = dI6_deyy(Bx, By, Bz, exy_, eyy_, eyz_)
dI6_dezx_ = dI6_dezx(Bx, By, Bz, exx_, exy_, eyz_, ezx_, ezz_)
dI6_dezz_ = dI6_dezz(Bx, By, Bz, eyz_, ezx_, ezz_)
dexx_depsyy_ = dexx_depsyy()
deyy_depsyy_ = deyy_depsyy()
dezx_depszx_ = dezx_depszx()
dezz_depsyy_ = dezz_depsyy()
dphi_dw_ = dphi_dw(u_, v_, w_, young_E, poisson_nu)
dv_dvp_ = dv_dvp(v0)
dvp_dI5_ = dvp_dI5(I4_)
dw_dwp_ = dw_dwp(w0)
dwp_dI5_ = dwp_dI5(I4_, I5_, I6_)
dwp_dI6_ = dwp_dI6(I4_, I5_, I6_)

d2phi_depsyydepszx_public = d2phi_depsyydepszx(d2I6_dexxdezx_, &
      d2I6_dezxdezz_, d2phi_dv2_, d2phi_dvdw_, d2phi_dw2_, d2wp_dI52_, &
      d2wp_dI5dI6_, d2wp_dI62_, dI5_dexx_, dI5_deyy_, dI5_dezx_, dI5_dezz_, &
      dI6_dexx_, dI6_deyy_, dI6_dezx_, dI6_dezz_, dexx_depsyy_, &
      deyy_depsyy_, dezx_depszx_, dezz_depsyy_, dphi_dw_, dv_dvp_, dvp_dI5_, &
      dw_dwp_, dwp_dI5_, dwp_dI6_)

end function

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
REAL(KIND=dp) exx_
REAL(KIND=dp) exy_
REAL(KIND=dp) eyy_
REAL(KIND=dp) eyz_
REAL(KIND=dp) ezx_
REAL(KIND=dp) ezz_
REAL(KIND=dp) I4_
REAL(KIND=dp) I5_
REAL(KIND=dp) I6_
REAL(KIND=dp) up_
REAL(KIND=dp) vp_
REAL(KIND=dp) wp_
REAL(KIND=dp) u_
REAL(KIND=dp) v_
REAL(KIND=dp) w_
REAL(KIND=dp) d2I6_dexx2_
REAL(KIND=dp) d2I6_deyy2_
REAL(KIND=dp) d2I6_dezz2_
REAL(KIND=dp) d2phi_dv2_
REAL(KIND=dp) d2phi_dvdw_
REAL(KIND=dp) d2phi_dw2_
REAL(KIND=dp) d2wp_dI52_
REAL(KIND=dp) d2wp_dI5dI6_
REAL(KIND=dp) d2wp_dI62_
REAL(KIND=dp) dI5_dexx_
REAL(KIND=dp) dI5_deyy_
REAL(KIND=dp) dI5_dezz_
REAL(KIND=dp) dI6_dexx_
REAL(KIND=dp) dI6_deyy_
REAL(KIND=dp) dI6_dezz_
REAL(KIND=dp) dexx_depsyy_
REAL(KIND=dp) dexx_depszz_
REAL(KIND=dp) deyy_depsyy_
REAL(KIND=dp) deyy_depszz_
REAL(KIND=dp) dezz_depsyy_
REAL(KIND=dp) dezz_depszz_
REAL(KIND=dp) dphi_dw_
REAL(KIND=dp) dv_dvp_
REAL(KIND=dp) dvp_dI5_
REAL(KIND=dp) dw_dwp_
REAL(KIND=dp) dwp_dI5_
REAL(KIND=dp) dwp_dI6_

exx_ = exx(epsxx, epsyy, epszz)
exy_ = exy(epsxy)
eyy_ = eyy(epsxx, epsyy, epszz)
eyz_ = eyz(epsyz)
ezx_ = ezx(epszx)
ezz_ = ezz(epsxx, epsyy, epszz)
I4_ = I4(Bx, By, Bz)
I5_ = I5(Bx, By, Bz, exx_, exy_, eyy_, eyz_, ezx_, ezz_)
I6_ = I6(Bx, By, Bz, exx_, exy_, eyy_, eyz_, ezx_, ezz_)
up_ = up(I4_)
vp_ = vp(I4_, I5_)
wp_ = wp(I4_, I5_, I6_)
u_ = u(u0, up_)
v_ = v(v0, vp_)
w_ = w(w0, wp_)
d2I6_dexx2_ = d2I6_dexx2(Bx)
d2I6_deyy2_ = d2I6_deyy2(By)
d2I6_dezz2_ = d2I6_dezz2(Bz)
d2phi_dv2_ = d2phi_dv2(u_, v_, w_, young_E, poisson_nu)
d2phi_dvdw_ = d2phi_dvdw(u_, v_, w_, young_E, poisson_nu)
d2phi_dw2_ = d2phi_dw2(u_, v_, w_, young_E, poisson_nu)
d2wp_dI52_ = d2wp_dI52(I4_, I5_, I6_)
d2wp_dI5dI6_ = d2wp_dI5dI6(I4_, I5_, I6_)
d2wp_dI62_ = d2wp_dI62(I4_, I5_, I6_)
dI5_dexx_ = dI5_dexx(Bx)
dI5_deyy_ = dI5_deyy(By)
dI5_dezz_ = dI5_dezz(Bz)
dI6_dexx_ = dI6_dexx(Bx, By, Bz, exx_, exy_, ezx_)
dI6_deyy_ = dI6_deyy(Bx, By, Bz, exy_, eyy_, eyz_)
dI6_dezz_ = dI6_dezz(Bx, By, Bz, eyz_, ezx_, ezz_)
dexx_depsyy_ = dexx_depsyy()
dexx_depszz_ = dexx_depszz()
deyy_depsyy_ = deyy_depsyy()
deyy_depszz_ = deyy_depszz()
dezz_depsyy_ = dezz_depsyy()
dezz_depszz_ = dezz_depszz()
dphi_dw_ = dphi_dw(u_, v_, w_, young_E, poisson_nu)
dv_dvp_ = dv_dvp(v0)
dvp_dI5_ = dvp_dI5(I4_)
dw_dwp_ = dw_dwp(w0)
dwp_dI5_ = dwp_dI5(I4_, I5_, I6_)
dwp_dI6_ = dwp_dI6(I4_, I5_, I6_)

d2phi_depsyydepszz_public = d2phi_depsyydepszz(d2I6_dexx2_, d2I6_deyy2_, &
      d2I6_dezz2_, d2phi_dv2_, d2phi_dvdw_, d2phi_dw2_, d2wp_dI52_, &
      d2wp_dI5dI6_, d2wp_dI62_, dI5_dexx_, dI5_deyy_, dI5_dezz_, dI6_dexx_, &
      dI6_deyy_, dI6_dezz_, dexx_depsyy_, dexx_depszz_, deyy_depsyy_, &
      deyy_depszz_, dezz_depsyy_, dezz_depszz_, dphi_dw_, dv_dvp_, dvp_dI5_, &
      dw_dwp_, dwp_dI5_, dwp_dI6_)

end function

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
REAL(KIND=dp) exx_
REAL(KIND=dp) exy_
REAL(KIND=dp) eyy_
REAL(KIND=dp) eyz_
REAL(KIND=dp) ezx_
REAL(KIND=dp) ezz_
REAL(KIND=dp) I4_
REAL(KIND=dp) I5_
REAL(KIND=dp) I6_
REAL(KIND=dp) up_
REAL(KIND=dp) vp_
REAL(KIND=dp) wp_
REAL(KIND=dp) u_
REAL(KIND=dp) v_
REAL(KIND=dp) w_
REAL(KIND=dp) dI5_deyz_
REAL(KIND=dp) dI6_deyz_
REAL(KIND=dp) deyz_depsyz_
REAL(KIND=dp) dphi_dv_
REAL(KIND=dp) dphi_dw_
REAL(KIND=dp) dv_dvp_
REAL(KIND=dp) dvp_dI5_
REAL(KIND=dp) dw_dwp_
REAL(KIND=dp) dwp_dI5_
REAL(KIND=dp) dwp_dI6_

exx_ = exx(epsxx, epsyy, epszz)
exy_ = exy(epsxy)
eyy_ = eyy(epsxx, epsyy, epszz)
eyz_ = eyz(epsyz)
ezx_ = ezx(epszx)
ezz_ = ezz(epsxx, epsyy, epszz)
I4_ = I4(Bx, By, Bz)
I5_ = I5(Bx, By, Bz, exx_, exy_, eyy_, eyz_, ezx_, ezz_)
I6_ = I6(Bx, By, Bz, exx_, exy_, eyy_, eyz_, ezx_, ezz_)
up_ = up(I4_)
vp_ = vp(I4_, I5_)
wp_ = wp(I4_, I5_, I6_)
u_ = u(u0, up_)
v_ = v(v0, vp_)
w_ = w(w0, wp_)
dI5_deyz_ = dI5_deyz(By, Bz)
dI6_deyz_ = dI6_deyz(Bx, By, Bz, exy_, eyy_, eyz_, ezx_, ezz_)
deyz_depsyz_ = deyz_depsyz()
dphi_dv_ = dphi_dv(u_, v_, w_, young_E, poisson_nu)
dphi_dw_ = dphi_dw(u_, v_, w_, young_E, poisson_nu)
dv_dvp_ = dv_dvp(v0)
dvp_dI5_ = dvp_dI5(I4_)
dw_dwp_ = dw_dwp(w0)
dwp_dI5_ = dwp_dI5(I4_, I5_, I6_)
dwp_dI6_ = dwp_dI6(I4_, I5_, I6_)

dphi_depsyz_public = dphi_depsyz(dI5_deyz_, dI6_deyz_, deyz_depsyz_, &
      dphi_dv_, dphi_dw_, dv_dvp_, dvp_dI5_, dw_dwp_, dwp_dI5_, dwp_dI6_)

end function

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
REAL(KIND=dp) exx_
REAL(KIND=dp) exy_
REAL(KIND=dp) eyy_
REAL(KIND=dp) eyz_
REAL(KIND=dp) ezx_
REAL(KIND=dp) ezz_
REAL(KIND=dp) I4_
REAL(KIND=dp) I5_
REAL(KIND=dp) I6_
REAL(KIND=dp) up_
REAL(KIND=dp) vp_
REAL(KIND=dp) wp_
REAL(KIND=dp) u_
REAL(KIND=dp) v_
REAL(KIND=dp) w_
REAL(KIND=dp) d2I6_deyz2_
REAL(KIND=dp) d2phi_dv2_
REAL(KIND=dp) d2phi_dvdw_
REAL(KIND=dp) d2phi_dw2_
REAL(KIND=dp) d2wp_dI52_
REAL(KIND=dp) d2wp_dI5dI6_
REAL(KIND=dp) d2wp_dI62_
REAL(KIND=dp) dI5_deyz_
REAL(KIND=dp) dI6_deyz_
REAL(KIND=dp) deyz_depsyz_
REAL(KIND=dp) dphi_dw_
REAL(KIND=dp) dv_dvp_
REAL(KIND=dp) dvp_dI5_
REAL(KIND=dp) dw_dwp_
REAL(KIND=dp) dwp_dI5_
REAL(KIND=dp) dwp_dI6_

exx_ = exx(epsxx, epsyy, epszz)
exy_ = exy(epsxy)
eyy_ = eyy(epsxx, epsyy, epszz)
eyz_ = eyz(epsyz)
ezx_ = ezx(epszx)
ezz_ = ezz(epsxx, epsyy, epszz)
I4_ = I4(Bx, By, Bz)
I5_ = I5(Bx, By, Bz, exx_, exy_, eyy_, eyz_, ezx_, ezz_)
I6_ = I6(Bx, By, Bz, exx_, exy_, eyy_, eyz_, ezx_, ezz_)
up_ = up(I4_)
vp_ = vp(I4_, I5_)
wp_ = wp(I4_, I5_, I6_)
u_ = u(u0, up_)
v_ = v(v0, vp_)
w_ = w(w0, wp_)
d2I6_deyz2_ = d2I6_deyz2(By, Bz)
d2phi_dv2_ = d2phi_dv2(u_, v_, w_, young_E, poisson_nu)
d2phi_dvdw_ = d2phi_dvdw(u_, v_, w_, young_E, poisson_nu)
d2phi_dw2_ = d2phi_dw2(u_, v_, w_, young_E, poisson_nu)
d2wp_dI52_ = d2wp_dI52(I4_, I5_, I6_)
d2wp_dI5dI6_ = d2wp_dI5dI6(I4_, I5_, I6_)
d2wp_dI62_ = d2wp_dI62(I4_, I5_, I6_)
dI5_deyz_ = dI5_deyz(By, Bz)
dI6_deyz_ = dI6_deyz(Bx, By, Bz, exy_, eyy_, eyz_, ezx_, ezz_)
deyz_depsyz_ = deyz_depsyz()
dphi_dw_ = dphi_dw(u_, v_, w_, young_E, poisson_nu)
dv_dvp_ = dv_dvp(v0)
dvp_dI5_ = dvp_dI5(I4_)
dw_dwp_ = dw_dwp(w0)
dwp_dI5_ = dwp_dI5(I4_, I5_, I6_)
dwp_dI6_ = dwp_dI6(I4_, I5_, I6_)

d2phi_depsyz2_public = d2phi_depsyz2(d2I6_deyz2_, d2phi_dv2_, d2phi_dvdw_, &
      d2phi_dw2_, d2wp_dI52_, d2wp_dI5dI6_, d2wp_dI62_, dI5_deyz_, &
      dI6_deyz_, deyz_depsyz_, dphi_dw_, dv_dvp_, dvp_dI5_, dw_dwp_, &
      dwp_dI5_, dwp_dI6_)

end function

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
REAL(KIND=dp) exx_
REAL(KIND=dp) exy_
REAL(KIND=dp) eyy_
REAL(KIND=dp) eyz_
REAL(KIND=dp) ezx_
REAL(KIND=dp) ezz_
REAL(KIND=dp) I4_
REAL(KIND=dp) I5_
REAL(KIND=dp) I6_
REAL(KIND=dp) up_
REAL(KIND=dp) vp_
REAL(KIND=dp) wp_
REAL(KIND=dp) u_
REAL(KIND=dp) v_
REAL(KIND=dp) w_
REAL(KIND=dp) d2I6_deyzdezx_
REAL(KIND=dp) d2phi_dv2_
REAL(KIND=dp) d2phi_dvdw_
REAL(KIND=dp) d2phi_dw2_
REAL(KIND=dp) d2wp_dI52_
REAL(KIND=dp) d2wp_dI5dI6_
REAL(KIND=dp) d2wp_dI62_
REAL(KIND=dp) dI5_deyz_
REAL(KIND=dp) dI5_dezx_
REAL(KIND=dp) dI6_deyz_
REAL(KIND=dp) dI6_dezx_
REAL(KIND=dp) deyz_depsyz_
REAL(KIND=dp) dezx_depszx_
REAL(KIND=dp) dphi_dw_
REAL(KIND=dp) dv_dvp_
REAL(KIND=dp) dvp_dI5_
REAL(KIND=dp) dw_dwp_
REAL(KIND=dp) dwp_dI5_
REAL(KIND=dp) dwp_dI6_

exx_ = exx(epsxx, epsyy, epszz)
exy_ = exy(epsxy)
eyy_ = eyy(epsxx, epsyy, epszz)
eyz_ = eyz(epsyz)
ezx_ = ezx(epszx)
ezz_ = ezz(epsxx, epsyy, epszz)
I4_ = I4(Bx, By, Bz)
I5_ = I5(Bx, By, Bz, exx_, exy_, eyy_, eyz_, ezx_, ezz_)
I6_ = I6(Bx, By, Bz, exx_, exy_, eyy_, eyz_, ezx_, ezz_)
up_ = up(I4_)
vp_ = vp(I4_, I5_)
wp_ = wp(I4_, I5_, I6_)
u_ = u(u0, up_)
v_ = v(v0, vp_)
w_ = w(w0, wp_)
d2I6_deyzdezx_ = d2I6_deyzdezx(Bx, By)
d2phi_dv2_ = d2phi_dv2(u_, v_, w_, young_E, poisson_nu)
d2phi_dvdw_ = d2phi_dvdw(u_, v_, w_, young_E, poisson_nu)
d2phi_dw2_ = d2phi_dw2(u_, v_, w_, young_E, poisson_nu)
d2wp_dI52_ = d2wp_dI52(I4_, I5_, I6_)
d2wp_dI5dI6_ = d2wp_dI5dI6(I4_, I5_, I6_)
d2wp_dI62_ = d2wp_dI62(I4_, I5_, I6_)
dI5_deyz_ = dI5_deyz(By, Bz)
dI5_dezx_ = dI5_dezx(Bx, Bz)
dI6_deyz_ = dI6_deyz(Bx, By, Bz, exy_, eyy_, eyz_, ezx_, ezz_)
dI6_dezx_ = dI6_dezx(Bx, By, Bz, exx_, exy_, eyz_, ezx_, ezz_)
deyz_depsyz_ = deyz_depsyz()
dezx_depszx_ = dezx_depszx()
dphi_dw_ = dphi_dw(u_, v_, w_, young_E, poisson_nu)
dv_dvp_ = dv_dvp(v0)
dvp_dI5_ = dvp_dI5(I4_)
dw_dwp_ = dw_dwp(w0)
dwp_dI5_ = dwp_dI5(I4_, I5_, I6_)
dwp_dI6_ = dwp_dI6(I4_, I5_, I6_)

d2phi_depsyzdepszx_public = d2phi_depsyzdepszx(d2I6_deyzdezx_, d2phi_dv2_, &
      d2phi_dvdw_, d2phi_dw2_, d2wp_dI52_, d2wp_dI5dI6_, d2wp_dI62_, &
      dI5_deyz_, dI5_dezx_, dI6_deyz_, dI6_dezx_, deyz_depsyz_, &
      dezx_depszx_, dphi_dw_, dv_dvp_, dvp_dI5_, dw_dwp_, dwp_dI5_, &
      dwp_dI6_)

end function

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
REAL(KIND=dp) exx_
REAL(KIND=dp) exy_
REAL(KIND=dp) eyy_
REAL(KIND=dp) eyz_
REAL(KIND=dp) ezx_
REAL(KIND=dp) ezz_
REAL(KIND=dp) I4_
REAL(KIND=dp) I5_
REAL(KIND=dp) I6_
REAL(KIND=dp) up_
REAL(KIND=dp) vp_
REAL(KIND=dp) wp_
REAL(KIND=dp) u_
REAL(KIND=dp) v_
REAL(KIND=dp) w_
REAL(KIND=dp) d2I6_deyydeyz_
REAL(KIND=dp) d2I6_deyzdezz_
REAL(KIND=dp) d2phi_dv2_
REAL(KIND=dp) d2phi_dvdw_
REAL(KIND=dp) d2phi_dw2_
REAL(KIND=dp) d2wp_dI52_
REAL(KIND=dp) d2wp_dI5dI6_
REAL(KIND=dp) d2wp_dI62_
REAL(KIND=dp) dI5_dexx_
REAL(KIND=dp) dI5_deyy_
REAL(KIND=dp) dI5_deyz_
REAL(KIND=dp) dI5_dezz_
REAL(KIND=dp) dI6_dexx_
REAL(KIND=dp) dI6_deyy_
REAL(KIND=dp) dI6_deyz_
REAL(KIND=dp) dI6_dezz_
REAL(KIND=dp) dexx_depszz_
REAL(KIND=dp) deyy_depszz_
REAL(KIND=dp) deyz_depsyz_
REAL(KIND=dp) dezz_depszz_
REAL(KIND=dp) dphi_dw_
REAL(KIND=dp) dv_dvp_
REAL(KIND=dp) dvp_dI5_
REAL(KIND=dp) dw_dwp_
REAL(KIND=dp) dwp_dI5_
REAL(KIND=dp) dwp_dI6_

exx_ = exx(epsxx, epsyy, epszz)
exy_ = exy(epsxy)
eyy_ = eyy(epsxx, epsyy, epszz)
eyz_ = eyz(epsyz)
ezx_ = ezx(epszx)
ezz_ = ezz(epsxx, epsyy, epszz)
I4_ = I4(Bx, By, Bz)
I5_ = I5(Bx, By, Bz, exx_, exy_, eyy_, eyz_, ezx_, ezz_)
I6_ = I6(Bx, By, Bz, exx_, exy_, eyy_, eyz_, ezx_, ezz_)
up_ = up(I4_)
vp_ = vp(I4_, I5_)
wp_ = wp(I4_, I5_, I6_)
u_ = u(u0, up_)
v_ = v(v0, vp_)
w_ = w(w0, wp_)
d2I6_deyydeyz_ = d2I6_deyydeyz(By, Bz)
d2I6_deyzdezz_ = d2I6_deyzdezz(By, Bz)
d2phi_dv2_ = d2phi_dv2(u_, v_, w_, young_E, poisson_nu)
d2phi_dvdw_ = d2phi_dvdw(u_, v_, w_, young_E, poisson_nu)
d2phi_dw2_ = d2phi_dw2(u_, v_, w_, young_E, poisson_nu)
d2wp_dI52_ = d2wp_dI52(I4_, I5_, I6_)
d2wp_dI5dI6_ = d2wp_dI5dI6(I4_, I5_, I6_)
d2wp_dI62_ = d2wp_dI62(I4_, I5_, I6_)
dI5_dexx_ = dI5_dexx(Bx)
dI5_deyy_ = dI5_deyy(By)
dI5_deyz_ = dI5_deyz(By, Bz)
dI5_dezz_ = dI5_dezz(Bz)
dI6_dexx_ = dI6_dexx(Bx, By, Bz, exx_, exy_, ezx_)
dI6_deyy_ = dI6_deyy(Bx, By, Bz, exy_, eyy_, eyz_)
dI6_deyz_ = dI6_deyz(Bx, By, Bz, exy_, eyy_, eyz_, ezx_, ezz_)
dI6_dezz_ = dI6_dezz(Bx, By, Bz, eyz_, ezx_, ezz_)
dexx_depszz_ = dexx_depszz()
deyy_depszz_ = deyy_depszz()
deyz_depsyz_ = deyz_depsyz()
dezz_depszz_ = dezz_depszz()
dphi_dw_ = dphi_dw(u_, v_, w_, young_E, poisson_nu)
dv_dvp_ = dv_dvp(v0)
dvp_dI5_ = dvp_dI5(I4_)
dw_dwp_ = dw_dwp(w0)
dwp_dI5_ = dwp_dI5(I4_, I5_, I6_)
dwp_dI6_ = dwp_dI6(I4_, I5_, I6_)

d2phi_depsyzdepszz_public = d2phi_depsyzdepszz(d2I6_deyydeyz_, &
      d2I6_deyzdezz_, d2phi_dv2_, d2phi_dvdw_, d2phi_dw2_, d2wp_dI52_, &
      d2wp_dI5dI6_, d2wp_dI62_, dI5_dexx_, dI5_deyy_, dI5_deyz_, dI5_dezz_, &
      dI6_dexx_, dI6_deyy_, dI6_deyz_, dI6_dezz_, dexx_depszz_, &
      deyy_depszz_, deyz_depsyz_, dezz_depszz_, dphi_dw_, dv_dvp_, dvp_dI5_, &
      dw_dwp_, dwp_dI5_, dwp_dI6_)

end function

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
REAL(KIND=dp) exx_
REAL(KIND=dp) exy_
REAL(KIND=dp) eyy_
REAL(KIND=dp) eyz_
REAL(KIND=dp) ezx_
REAL(KIND=dp) ezz_
REAL(KIND=dp) I4_
REAL(KIND=dp) I5_
REAL(KIND=dp) I6_
REAL(KIND=dp) up_
REAL(KIND=dp) vp_
REAL(KIND=dp) wp_
REAL(KIND=dp) u_
REAL(KIND=dp) v_
REAL(KIND=dp) w_
REAL(KIND=dp) dI5_dezx_
REAL(KIND=dp) dI6_dezx_
REAL(KIND=dp) dezx_depszx_
REAL(KIND=dp) dphi_dv_
REAL(KIND=dp) dphi_dw_
REAL(KIND=dp) dv_dvp_
REAL(KIND=dp) dvp_dI5_
REAL(KIND=dp) dw_dwp_
REAL(KIND=dp) dwp_dI5_
REAL(KIND=dp) dwp_dI6_

exx_ = exx(epsxx, epsyy, epszz)
exy_ = exy(epsxy)
eyy_ = eyy(epsxx, epsyy, epszz)
eyz_ = eyz(epsyz)
ezx_ = ezx(epszx)
ezz_ = ezz(epsxx, epsyy, epszz)
I4_ = I4(Bx, By, Bz)
I5_ = I5(Bx, By, Bz, exx_, exy_, eyy_, eyz_, ezx_, ezz_)
I6_ = I6(Bx, By, Bz, exx_, exy_, eyy_, eyz_, ezx_, ezz_)
up_ = up(I4_)
vp_ = vp(I4_, I5_)
wp_ = wp(I4_, I5_, I6_)
u_ = u(u0, up_)
v_ = v(v0, vp_)
w_ = w(w0, wp_)
dI5_dezx_ = dI5_dezx(Bx, Bz)
dI6_dezx_ = dI6_dezx(Bx, By, Bz, exx_, exy_, eyz_, ezx_, ezz_)
dezx_depszx_ = dezx_depszx()
dphi_dv_ = dphi_dv(u_, v_, w_, young_E, poisson_nu)
dphi_dw_ = dphi_dw(u_, v_, w_, young_E, poisson_nu)
dv_dvp_ = dv_dvp(v0)
dvp_dI5_ = dvp_dI5(I4_)
dw_dwp_ = dw_dwp(w0)
dwp_dI5_ = dwp_dI5(I4_, I5_, I6_)
dwp_dI6_ = dwp_dI6(I4_, I5_, I6_)

dphi_depszx_public = dphi_depszx(dI5_dezx_, dI6_dezx_, dezx_depszx_, &
      dphi_dv_, dphi_dw_, dv_dvp_, dvp_dI5_, dw_dwp_, dwp_dI5_, dwp_dI6_)

end function

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
REAL(KIND=dp) exx_
REAL(KIND=dp) exy_
REAL(KIND=dp) eyy_
REAL(KIND=dp) eyz_
REAL(KIND=dp) ezx_
REAL(KIND=dp) ezz_
REAL(KIND=dp) I4_
REAL(KIND=dp) I5_
REAL(KIND=dp) I6_
REAL(KIND=dp) up_
REAL(KIND=dp) vp_
REAL(KIND=dp) wp_
REAL(KIND=dp) u_
REAL(KIND=dp) v_
REAL(KIND=dp) w_
REAL(KIND=dp) d2I6_dezx2_
REAL(KIND=dp) d2phi_dv2_
REAL(KIND=dp) d2phi_dvdw_
REAL(KIND=dp) d2phi_dw2_
REAL(KIND=dp) d2wp_dI52_
REAL(KIND=dp) d2wp_dI5dI6_
REAL(KIND=dp) d2wp_dI62_
REAL(KIND=dp) dI5_dezx_
REAL(KIND=dp) dI6_dezx_
REAL(KIND=dp) dezx_depszx_
REAL(KIND=dp) dphi_dw_
REAL(KIND=dp) dv_dvp_
REAL(KIND=dp) dvp_dI5_
REAL(KIND=dp) dw_dwp_
REAL(KIND=dp) dwp_dI5_
REAL(KIND=dp) dwp_dI6_

exx_ = exx(epsxx, epsyy, epszz)
exy_ = exy(epsxy)
eyy_ = eyy(epsxx, epsyy, epszz)
eyz_ = eyz(epsyz)
ezx_ = ezx(epszx)
ezz_ = ezz(epsxx, epsyy, epszz)
I4_ = I4(Bx, By, Bz)
I5_ = I5(Bx, By, Bz, exx_, exy_, eyy_, eyz_, ezx_, ezz_)
I6_ = I6(Bx, By, Bz, exx_, exy_, eyy_, eyz_, ezx_, ezz_)
up_ = up(I4_)
vp_ = vp(I4_, I5_)
wp_ = wp(I4_, I5_, I6_)
u_ = u(u0, up_)
v_ = v(v0, vp_)
w_ = w(w0, wp_)
d2I6_dezx2_ = d2I6_dezx2(Bx, Bz)
d2phi_dv2_ = d2phi_dv2(u_, v_, w_, young_E, poisson_nu)
d2phi_dvdw_ = d2phi_dvdw(u_, v_, w_, young_E, poisson_nu)
d2phi_dw2_ = d2phi_dw2(u_, v_, w_, young_E, poisson_nu)
d2wp_dI52_ = d2wp_dI52(I4_, I5_, I6_)
d2wp_dI5dI6_ = d2wp_dI5dI6(I4_, I5_, I6_)
d2wp_dI62_ = d2wp_dI62(I4_, I5_, I6_)
dI5_dezx_ = dI5_dezx(Bx, Bz)
dI6_dezx_ = dI6_dezx(Bx, By, Bz, exx_, exy_, eyz_, ezx_, ezz_)
dezx_depszx_ = dezx_depszx()
dphi_dw_ = dphi_dw(u_, v_, w_, young_E, poisson_nu)
dv_dvp_ = dv_dvp(v0)
dvp_dI5_ = dvp_dI5(I4_)
dw_dwp_ = dw_dwp(w0)
dwp_dI5_ = dwp_dI5(I4_, I5_, I6_)
dwp_dI6_ = dwp_dI6(I4_, I5_, I6_)

d2phi_depszx2_public = d2phi_depszx2(d2I6_dezx2_, d2phi_dv2_, d2phi_dvdw_, &
      d2phi_dw2_, d2wp_dI52_, d2wp_dI5dI6_, d2wp_dI62_, dI5_dezx_, &
      dI6_dezx_, dezx_depszx_, dphi_dw_, dv_dvp_, dvp_dI5_, dw_dwp_, &
      dwp_dI5_, dwp_dI6_)

end function

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
REAL(KIND=dp) exx_
REAL(KIND=dp) exy_
REAL(KIND=dp) eyy_
REAL(KIND=dp) eyz_
REAL(KIND=dp) ezx_
REAL(KIND=dp) ezz_
REAL(KIND=dp) I4_
REAL(KIND=dp) I5_
REAL(KIND=dp) I6_
REAL(KIND=dp) up_
REAL(KIND=dp) vp_
REAL(KIND=dp) wp_
REAL(KIND=dp) u_
REAL(KIND=dp) v_
REAL(KIND=dp) w_
REAL(KIND=dp) d2I6_dexxdezx_
REAL(KIND=dp) d2I6_dezxdezz_
REAL(KIND=dp) d2phi_dv2_
REAL(KIND=dp) d2phi_dvdw_
REAL(KIND=dp) d2phi_dw2_
REAL(KIND=dp) d2wp_dI52_
REAL(KIND=dp) d2wp_dI5dI6_
REAL(KIND=dp) d2wp_dI62_
REAL(KIND=dp) dI5_dexx_
REAL(KIND=dp) dI5_deyy_
REAL(KIND=dp) dI5_dezx_
REAL(KIND=dp) dI5_dezz_
REAL(KIND=dp) dI6_dexx_
REAL(KIND=dp) dI6_deyy_
REAL(KIND=dp) dI6_dezx_
REAL(KIND=dp) dI6_dezz_
REAL(KIND=dp) dexx_depszz_
REAL(KIND=dp) deyy_depszz_
REAL(KIND=dp) dezx_depszx_
REAL(KIND=dp) dezz_depszz_
REAL(KIND=dp) dphi_dw_
REAL(KIND=dp) dv_dvp_
REAL(KIND=dp) dvp_dI5_
REAL(KIND=dp) dw_dwp_
REAL(KIND=dp) dwp_dI5_
REAL(KIND=dp) dwp_dI6_

exx_ = exx(epsxx, epsyy, epszz)
exy_ = exy(epsxy)
eyy_ = eyy(epsxx, epsyy, epszz)
eyz_ = eyz(epsyz)
ezx_ = ezx(epszx)
ezz_ = ezz(epsxx, epsyy, epszz)
I4_ = I4(Bx, By, Bz)
I5_ = I5(Bx, By, Bz, exx_, exy_, eyy_, eyz_, ezx_, ezz_)
I6_ = I6(Bx, By, Bz, exx_, exy_, eyy_, eyz_, ezx_, ezz_)
up_ = up(I4_)
vp_ = vp(I4_, I5_)
wp_ = wp(I4_, I5_, I6_)
u_ = u(u0, up_)
v_ = v(v0, vp_)
w_ = w(w0, wp_)
d2I6_dexxdezx_ = d2I6_dexxdezx(Bx, Bz)
d2I6_dezxdezz_ = d2I6_dezxdezz(Bx, Bz)
d2phi_dv2_ = d2phi_dv2(u_, v_, w_, young_E, poisson_nu)
d2phi_dvdw_ = d2phi_dvdw(u_, v_, w_, young_E, poisson_nu)
d2phi_dw2_ = d2phi_dw2(u_, v_, w_, young_E, poisson_nu)
d2wp_dI52_ = d2wp_dI52(I4_, I5_, I6_)
d2wp_dI5dI6_ = d2wp_dI5dI6(I4_, I5_, I6_)
d2wp_dI62_ = d2wp_dI62(I4_, I5_, I6_)
dI5_dexx_ = dI5_dexx(Bx)
dI5_deyy_ = dI5_deyy(By)
dI5_dezx_ = dI5_dezx(Bx, Bz)
dI5_dezz_ = dI5_dezz(Bz)
dI6_dexx_ = dI6_dexx(Bx, By, Bz, exx_, exy_, ezx_)
dI6_deyy_ = dI6_deyy(Bx, By, Bz, exy_, eyy_, eyz_)
dI6_dezx_ = dI6_dezx(Bx, By, Bz, exx_, exy_, eyz_, ezx_, ezz_)
dI6_dezz_ = dI6_dezz(Bx, By, Bz, eyz_, ezx_, ezz_)
dexx_depszz_ = dexx_depszz()
deyy_depszz_ = deyy_depszz()
dezx_depszx_ = dezx_depszx()
dezz_depszz_ = dezz_depszz()
dphi_dw_ = dphi_dw(u_, v_, w_, young_E, poisson_nu)
dv_dvp_ = dv_dvp(v0)
dvp_dI5_ = dvp_dI5(I4_)
dw_dwp_ = dw_dwp(w0)
dwp_dI5_ = dwp_dI5(I4_, I5_, I6_)
dwp_dI6_ = dwp_dI6(I4_, I5_, I6_)

d2phi_depszxdepszz_public = d2phi_depszxdepszz(d2I6_dexxdezx_, &
      d2I6_dezxdezz_, d2phi_dv2_, d2phi_dvdw_, d2phi_dw2_, d2wp_dI52_, &
      d2wp_dI5dI6_, d2wp_dI62_, dI5_dexx_, dI5_deyy_, dI5_dezx_, dI5_dezz_, &
      dI6_dexx_, dI6_deyy_, dI6_dezx_, dI6_dezz_, dexx_depszz_, &
      deyy_depszz_, dezx_depszx_, dezz_depszz_, dphi_dw_, dv_dvp_, dvp_dI5_, &
      dw_dwp_, dwp_dI5_, dwp_dI6_)

end function

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
REAL(KIND=dp) exx_
REAL(KIND=dp) exy_
REAL(KIND=dp) eyy_
REAL(KIND=dp) eyz_
REAL(KIND=dp) ezx_
REAL(KIND=dp) ezz_
REAL(KIND=dp) I4_
REAL(KIND=dp) I5_
REAL(KIND=dp) I6_
REAL(KIND=dp) up_
REAL(KIND=dp) vp_
REAL(KIND=dp) wp_
REAL(KIND=dp) u_
REAL(KIND=dp) v_
REAL(KIND=dp) w_
REAL(KIND=dp) dI5_dexx_
REAL(KIND=dp) dI5_deyy_
REAL(KIND=dp) dI5_dezz_
REAL(KIND=dp) dI6_dexx_
REAL(KIND=dp) dI6_deyy_
REAL(KIND=dp) dI6_dezz_
REAL(KIND=dp) dexx_depszz_
REAL(KIND=dp) deyy_depszz_
REAL(KIND=dp) dezz_depszz_
REAL(KIND=dp) dphi_dv_
REAL(KIND=dp) dphi_dw_
REAL(KIND=dp) dv_dvp_
REAL(KIND=dp) dvp_dI5_
REAL(KIND=dp) dw_dwp_
REAL(KIND=dp) dwp_dI5_
REAL(KIND=dp) dwp_dI6_

exx_ = exx(epsxx, epsyy, epszz)
exy_ = exy(epsxy)
eyy_ = eyy(epsxx, epsyy, epszz)
eyz_ = eyz(epsyz)
ezx_ = ezx(epszx)
ezz_ = ezz(epsxx, epsyy, epszz)
I4_ = I4(Bx, By, Bz)
I5_ = I5(Bx, By, Bz, exx_, exy_, eyy_, eyz_, ezx_, ezz_)
I6_ = I6(Bx, By, Bz, exx_, exy_, eyy_, eyz_, ezx_, ezz_)
up_ = up(I4_)
vp_ = vp(I4_, I5_)
wp_ = wp(I4_, I5_, I6_)
u_ = u(u0, up_)
v_ = v(v0, vp_)
w_ = w(w0, wp_)
dI5_dexx_ = dI5_dexx(Bx)
dI5_deyy_ = dI5_deyy(By)
dI5_dezz_ = dI5_dezz(Bz)
dI6_dexx_ = dI6_dexx(Bx, By, Bz, exx_, exy_, ezx_)
dI6_deyy_ = dI6_deyy(Bx, By, Bz, exy_, eyy_, eyz_)
dI6_dezz_ = dI6_dezz(Bx, By, Bz, eyz_, ezx_, ezz_)
dexx_depszz_ = dexx_depszz()
deyy_depszz_ = deyy_depszz()
dezz_depszz_ = dezz_depszz()
dphi_dv_ = dphi_dv(u_, v_, w_, young_E, poisson_nu)
dphi_dw_ = dphi_dw(u_, v_, w_, young_E, poisson_nu)
dv_dvp_ = dv_dvp(v0)
dvp_dI5_ = dvp_dI5(I4_)
dw_dwp_ = dw_dwp(w0)
dwp_dI5_ = dwp_dI5(I4_, I5_, I6_)
dwp_dI6_ = dwp_dI6(I4_, I5_, I6_)

dphi_depszz_public = dphi_depszz(dI5_dexx_, dI5_deyy_, dI5_dezz_, dI6_dexx_, &
      dI6_deyy_, dI6_dezz_, dexx_depszz_, deyy_depszz_, dezz_depszz_, &
      dphi_dv_, dphi_dw_, dv_dvp_, dvp_dI5_, dw_dwp_, dwp_dI5_, dwp_dI6_)

end function

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
REAL(KIND=dp) exx_
REAL(KIND=dp) exy_
REAL(KIND=dp) eyy_
REAL(KIND=dp) eyz_
REAL(KIND=dp) ezx_
REAL(KIND=dp) ezz_
REAL(KIND=dp) I4_
REAL(KIND=dp) I5_
REAL(KIND=dp) I6_
REAL(KIND=dp) up_
REAL(KIND=dp) vp_
REAL(KIND=dp) wp_
REAL(KIND=dp) u_
REAL(KIND=dp) v_
REAL(KIND=dp) w_
REAL(KIND=dp) d2I6_dexx2_
REAL(KIND=dp) d2I6_deyy2_
REAL(KIND=dp) d2I6_dezz2_
REAL(KIND=dp) d2phi_dv2_
REAL(KIND=dp) d2phi_dvdw_
REAL(KIND=dp) d2phi_dw2_
REAL(KIND=dp) d2wp_dI52_
REAL(KIND=dp) d2wp_dI5dI6_
REAL(KIND=dp) d2wp_dI62_
REAL(KIND=dp) dI5_dexx_
REAL(KIND=dp) dI5_deyy_
REAL(KIND=dp) dI5_dezz_
REAL(KIND=dp) dI6_dexx_
REAL(KIND=dp) dI6_deyy_
REAL(KIND=dp) dI6_dezz_
REAL(KIND=dp) dexx_depszz_
REAL(KIND=dp) deyy_depszz_
REAL(KIND=dp) dezz_depszz_
REAL(KIND=dp) dphi_dw_
REAL(KIND=dp) dv_dvp_
REAL(KIND=dp) dvp_dI5_
REAL(KIND=dp) dw_dwp_
REAL(KIND=dp) dwp_dI5_
REAL(KIND=dp) dwp_dI6_

exx_ = exx(epsxx, epsyy, epszz)
exy_ = exy(epsxy)
eyy_ = eyy(epsxx, epsyy, epszz)
eyz_ = eyz(epsyz)
ezx_ = ezx(epszx)
ezz_ = ezz(epsxx, epsyy, epszz)
I4_ = I4(Bx, By, Bz)
I5_ = I5(Bx, By, Bz, exx_, exy_, eyy_, eyz_, ezx_, ezz_)
I6_ = I6(Bx, By, Bz, exx_, exy_, eyy_, eyz_, ezx_, ezz_)
up_ = up(I4_)
vp_ = vp(I4_, I5_)
wp_ = wp(I4_, I5_, I6_)
u_ = u(u0, up_)
v_ = v(v0, vp_)
w_ = w(w0, wp_)
d2I6_dexx2_ = d2I6_dexx2(Bx)
d2I6_deyy2_ = d2I6_deyy2(By)
d2I6_dezz2_ = d2I6_dezz2(Bz)
d2phi_dv2_ = d2phi_dv2(u_, v_, w_, young_E, poisson_nu)
d2phi_dvdw_ = d2phi_dvdw(u_, v_, w_, young_E, poisson_nu)
d2phi_dw2_ = d2phi_dw2(u_, v_, w_, young_E, poisson_nu)
d2wp_dI52_ = d2wp_dI52(I4_, I5_, I6_)
d2wp_dI5dI6_ = d2wp_dI5dI6(I4_, I5_, I6_)
d2wp_dI62_ = d2wp_dI62(I4_, I5_, I6_)
dI5_dexx_ = dI5_dexx(Bx)
dI5_deyy_ = dI5_deyy(By)
dI5_dezz_ = dI5_dezz(Bz)
dI6_dexx_ = dI6_dexx(Bx, By, Bz, exx_, exy_, ezx_)
dI6_deyy_ = dI6_deyy(Bx, By, Bz, exy_, eyy_, eyz_)
dI6_dezz_ = dI6_dezz(Bx, By, Bz, eyz_, ezx_, ezz_)
dexx_depszz_ = dexx_depszz()
deyy_depszz_ = deyy_depszz()
dezz_depszz_ = dezz_depszz()
dphi_dw_ = dphi_dw(u_, v_, w_, young_E, poisson_nu)
dv_dvp_ = dv_dvp(v0)
dvp_dI5_ = dvp_dI5(I4_)
dw_dwp_ = dw_dwp(w0)
dwp_dI5_ = dwp_dI5(I4_, I5_, I6_)
dwp_dI6_ = dwp_dI6(I4_, I5_, I6_)

d2phi_depszz2_public = d2phi_depszz2(d2I6_dexx2_, d2I6_deyy2_, d2I6_dezz2_, &
      d2phi_dv2_, d2phi_dvdw_, d2phi_dw2_, d2wp_dI52_, d2wp_dI5dI6_, &
      d2wp_dI62_, dI5_dexx_, dI5_deyy_, dI5_dezz_, dI6_dexx_, dI6_deyy_, &
      dI6_dezz_, dexx_depszz_, deyy_depszz_, dezz_depszz_, dphi_dw_, &
      dv_dvp_, dvp_dI5_, dw_dwp_, dwp_dI5_, dwp_dI6_)

end function

REAL(KIND=dp) function exx_public(epsxx, epsyy, epszz)
use types
implicit none
REAL(KIND=dp), intent(in) :: epsxx
REAL(KIND=dp), intent(in) :: epsyy
REAL(KIND=dp), intent(in) :: epszz

exx_public = exx(epsxx, epsyy, epszz)

end function

REAL(KIND=dp) function exy_public(epsxy)
use types
implicit none
REAL(KIND=dp), intent(in) :: epsxy

exy_public = exy(epsxy)

end function

REAL(KIND=dp) function eyy_public(epsxx, epsyy, epszz)
use types
implicit none
REAL(KIND=dp), intent(in) :: epsxx
REAL(KIND=dp), intent(in) :: epsyy
REAL(KIND=dp), intent(in) :: epszz

eyy_public = eyy(epsxx, epsyy, epszz)

end function

REAL(KIND=dp) function eyz_public(epsyz)
use types
implicit none
REAL(KIND=dp), intent(in) :: epsyz

eyz_public = eyz(epsyz)

end function

REAL(KIND=dp) function ezx_public(epszx)
use types
implicit none
REAL(KIND=dp), intent(in) :: epszx

ezx_public = ezx(epszx)

end function

REAL(KIND=dp) function ezz_public(epsxx, epsyy, epszz)
use types
implicit none
REAL(KIND=dp), intent(in) :: epsxx
REAL(KIND=dp), intent(in) :: epsyy
REAL(KIND=dp), intent(in) :: epszz

ezz_public = ezz(epsxx, epsyy, epszz)

end function

REAL(KIND=dp) function I4_public(Bx, By, Bz)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bx
REAL(KIND=dp), intent(in) :: By
REAL(KIND=dp), intent(in) :: Bz

I4_public = I4(Bx, By, Bz)

end function

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
REAL(KIND=dp) exx_
REAL(KIND=dp) exy_
REAL(KIND=dp) eyy_
REAL(KIND=dp) eyz_
REAL(KIND=dp) ezx_
REAL(KIND=dp) ezz_

exx_ = exx(epsxx, epsyy, epszz)
exy_ = exy(epsxy)
eyy_ = eyy(epsxx, epsyy, epszz)
eyz_ = eyz(epsyz)
ezx_ = ezx(epszx)
ezz_ = ezz(epsxx, epsyy, epszz)

I5_public = I5(Bx, By, Bz, exx_, exy_, eyy_, eyz_, ezx_, ezz_)

end function

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
REAL(KIND=dp) exx_
REAL(KIND=dp) exy_
REAL(KIND=dp) eyy_
REAL(KIND=dp) eyz_
REAL(KIND=dp) ezx_
REAL(KIND=dp) ezz_

exx_ = exx(epsxx, epsyy, epszz)
exy_ = exy(epsxy)
eyy_ = eyy(epsxx, epsyy, epszz)
eyz_ = eyz(epsyz)
ezx_ = ezx(epszx)
ezz_ = ezz(epsxx, epsyy, epszz)

I6_public = I6(Bx, By, Bz, exx_, exy_, eyy_, eyz_, ezx_, ezz_)

end function

REAL(KIND=dp) function u_public(Bx, By, Bz, u0)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bx
REAL(KIND=dp), intent(in) :: By
REAL(KIND=dp), intent(in) :: Bz
REAL(KIND=dp), intent(in) :: u0
REAL(KIND=dp) I4_
REAL(KIND=dp) up_

I4_ = I4(Bx, By, Bz)
up_ = up(I4_)

u_public = u(u0, up_)

end function

REAL(KIND=dp) function up_public(Bx, By, Bz)
use types
implicit none
REAL(KIND=dp), intent(in) :: Bx
REAL(KIND=dp), intent(in) :: By
REAL(KIND=dp), intent(in) :: Bz
REAL(KIND=dp) I4_

I4_ = I4(Bx, By, Bz)

up_public = up(I4_)

end function

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
REAL(KIND=dp) exx_
REAL(KIND=dp) exy_
REAL(KIND=dp) eyy_
REAL(KIND=dp) eyz_
REAL(KIND=dp) ezx_
REAL(KIND=dp) ezz_
REAL(KIND=dp) I4_
REAL(KIND=dp) I5_
REAL(KIND=dp) vp_

exx_ = exx(epsxx, epsyy, epszz)
exy_ = exy(epsxy)
eyy_ = eyy(epsxx, epsyy, epszz)
eyz_ = eyz(epsyz)
ezx_ = ezx(epszx)
ezz_ = ezz(epsxx, epsyy, epszz)
I4_ = I4(Bx, By, Bz)
I5_ = I5(Bx, By, Bz, exx_, exy_, eyy_, eyz_, ezx_, ezz_)
vp_ = vp(I4_, I5_)

v_public = v(v0, vp_)

end function

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
REAL(KIND=dp) exx_
REAL(KIND=dp) exy_
REAL(KIND=dp) eyy_
REAL(KIND=dp) eyz_
REAL(KIND=dp) ezx_
REAL(KIND=dp) ezz_
REAL(KIND=dp) I4_
REAL(KIND=dp) I5_

exx_ = exx(epsxx, epsyy, epszz)
exy_ = exy(epsxy)
eyy_ = eyy(epsxx, epsyy, epszz)
eyz_ = eyz(epsyz)
ezx_ = ezx(epszx)
ezz_ = ezz(epsxx, epsyy, epszz)
I4_ = I4(Bx, By, Bz)
I5_ = I5(Bx, By, Bz, exx_, exy_, eyy_, eyz_, ezx_, ezz_)

vp_public = vp(I4_, I5_)

end function

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
REAL(KIND=dp) exx_
REAL(KIND=dp) exy_
REAL(KIND=dp) eyy_
REAL(KIND=dp) eyz_
REAL(KIND=dp) ezx_
REAL(KIND=dp) ezz_
REAL(KIND=dp) I4_
REAL(KIND=dp) I5_
REAL(KIND=dp) I6_
REAL(KIND=dp) wp_

exx_ = exx(epsxx, epsyy, epszz)
exy_ = exy(epsxy)
eyy_ = eyy(epsxx, epsyy, epszz)
eyz_ = eyz(epsyz)
ezx_ = ezx(epszx)
ezz_ = ezz(epsxx, epsyy, epszz)
I4_ = I4(Bx, By, Bz)
I5_ = I5(Bx, By, Bz, exx_, exy_, eyy_, eyz_, ezx_, ezz_)
I6_ = I6(Bx, By, Bz, exx_, exy_, eyy_, eyz_, ezx_, ezz_)
wp_ = wp(I4_, I5_, I6_)

w_public = w(w0, wp_)

end function

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
REAL(KIND=dp) exx_
REAL(KIND=dp) exy_
REAL(KIND=dp) eyy_
REAL(KIND=dp) eyz_
REAL(KIND=dp) ezx_
REAL(KIND=dp) ezz_
REAL(KIND=dp) I4_
REAL(KIND=dp) I5_
REAL(KIND=dp) I6_

exx_ = exx(epsxx, epsyy, epszz)
exy_ = exy(epsxy)
eyy_ = eyy(epsxx, epsyy, epszz)
eyz_ = eyz(epsyz)
ezx_ = ezx(epszx)
ezz_ = ezz(epsxx, epsyy, epszz)
I4_ = I4(Bx, By, Bz)
I5_ = I5(Bx, By, Bz, exx_, exy_, eyy_, eyz_, ezx_, ezz_)
I6_ = I6(Bx, By, Bz, exx_, exy_, eyy_, eyz_, ezx_, ezz_)

wp_public = wp(I4_, I5_, I6_)

end function

REAL(KIND=dp) function epsM_public(epsxx, epsyy, epszz)
use types
implicit none
REAL(KIND=dp), intent(in) :: epsxx
REAL(KIND=dp), intent(in) :: epsyy
REAL(KIND=dp), intent(in) :: epszz

epsM_public = epsM(epsxx, epsyy, epszz)

end function

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
REAL(KIND=dp) exx_
REAL(KIND=dp) exy_
REAL(KIND=dp) eyy_
REAL(KIND=dp) eyz_
REAL(KIND=dp) ezx_
REAL(KIND=dp) ezz_
REAL(KIND=dp) I4_
REAL(KIND=dp) I5_
REAL(KIND=dp) I6_
REAL(KIND=dp) up_
REAL(KIND=dp) vp_
REAL(KIND=dp) wp_
REAL(KIND=dp) u_
REAL(KIND=dp) v_
REAL(KIND=dp) w_
REAL(KIND=dp) phi_

exx_ = exx(epsxx, epsyy, epszz)
exy_ = exy(epsxy)
eyy_ = eyy(epsxx, epsyy, epszz)
eyz_ = eyz(epsyz)
ezx_ = ezx(epszx)
ezz_ = ezz(epsxx, epsyy, epszz)
I4_ = I4(Bx, By, Bz)
I5_ = I5(Bx, By, Bz, exx_, exy_, eyy_, eyz_, ezx_, ezz_)
I6_ = I6(Bx, By, Bz, exx_, exy_, eyy_, eyz_, ezx_, ezz_)
up_ = up(I4_)
vp_ = vp(I4_, I5_)
wp_ = wp(I4_, I5_, I6_)
u_ = u(u0, up_)
v_ = v(v0, vp_)
w_ = w(w0, wp_)
phi_ = phi(u_, v_, w_, young_E, poisson_nu)

phip_public = phip(phi_)

end function

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
REAL(KIND=dp) exx_
REAL(KIND=dp) exy_
REAL(KIND=dp) eyy_
REAL(KIND=dp) eyz_
REAL(KIND=dp) ezx_
REAL(KIND=dp) ezz_
REAL(KIND=dp) I4_
REAL(KIND=dp) I5_
REAL(KIND=dp) I6_
REAL(KIND=dp) up_
REAL(KIND=dp) vp_
REAL(KIND=dp) wp_
REAL(KIND=dp) u_
REAL(KIND=dp) v_
REAL(KIND=dp) w_

exx_ = exx(epsxx, epsyy, epszz)
exy_ = exy(epsxy)
eyy_ = eyy(epsxx, epsyy, epszz)
eyz_ = eyz(epsyz)
ezx_ = ezx(epszx)
ezz_ = ezz(epsxx, epsyy, epszz)
I4_ = I4(Bx, By, Bz)
I5_ = I5(Bx, By, Bz, exx_, exy_, eyy_, eyz_, ezx_, ezz_)
I6_ = I6(Bx, By, Bz, exx_, exy_, eyy_, eyz_, ezx_, ezz_)
up_ = up(I4_)
vp_ = vp(I4_, I5_)
wp_ = wp(I4_, I5_, I6_)
u_ = u(u0, up_)
v_ = v(v0, vp_)
w_ = w(w0, wp_)

phi_public = phi(u_, v_, w_, young_E, poisson_nu)

end function

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
REAL(KIND=dp) exx_
REAL(KIND=dp) exy_
REAL(KIND=dp) eyy_
REAL(KIND=dp) eyz_
REAL(KIND=dp) ezx_
REAL(KIND=dp) ezz_
REAL(KIND=dp) I4_
REAL(KIND=dp) I5_
REAL(KIND=dp) I6_
REAL(KIND=dp) up_
REAL(KIND=dp) vp_
REAL(KIND=dp) wp_
REAL(KIND=dp) u_
REAL(KIND=dp) v_
REAL(KIND=dp) w_

exx_ = exx(epsxx, epsyy, epszz)
exy_ = exy(epsxy)
eyy_ = eyy(epsxx, epsyy, epszz)
eyz_ = eyz(epsyz)
ezx_ = ezx(epszx)
ezz_ = ezz(epsxx, epsyy, epszz)
I4_ = I4(Bx, By, Bz)
I5_ = I5(Bx, By, Bz, exx_, exy_, eyy_, eyz_, ezx_, ezz_)
I6_ = I6(Bx, By, Bz, exx_, exy_, eyy_, eyz_, ezx_, ezz_)
up_ = up(I4_)
vp_ = vp(I4_, I5_)
wp_ = wp(I4_, I5_, I6_)
u_ = u(u0, up_)
v_ = v(v0, vp_)
w_ = w(w0, wp_)

dphi_du_public = dphi_du(u_, v_, w_, young_E, poisson_nu)

end function

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
REAL(KIND=dp) exx_
REAL(KIND=dp) exy_
REAL(KIND=dp) eyy_
REAL(KIND=dp) eyz_
REAL(KIND=dp) ezx_
REAL(KIND=dp) ezz_
REAL(KIND=dp) I4_
REAL(KIND=dp) I5_
REAL(KIND=dp) I6_
REAL(KIND=dp) up_
REAL(KIND=dp) vp_
REAL(KIND=dp) wp_
REAL(KIND=dp) u_
REAL(KIND=dp) v_
REAL(KIND=dp) w_

exx_ = exx(epsxx, epsyy, epszz)
exy_ = exy(epsxy)
eyy_ = eyy(epsxx, epsyy, epszz)
eyz_ = eyz(epsyz)
ezx_ = ezx(epszx)
ezz_ = ezz(epsxx, epsyy, epszz)
I4_ = I4(Bx, By, Bz)
I5_ = I5(Bx, By, Bz, exx_, exy_, eyy_, eyz_, ezx_, ezz_)
I6_ = I6(Bx, By, Bz, exx_, exy_, eyy_, eyz_, ezx_, ezz_)
up_ = up(I4_)
vp_ = vp(I4_, I5_)
wp_ = wp(I4_, I5_, I6_)
u_ = u(u0, up_)
v_ = v(v0, vp_)
w_ = w(w0, wp_)

dphi_dv_public = dphi_dv(u_, v_, w_, young_E, poisson_nu)

end function

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
REAL(KIND=dp) exx_
REAL(KIND=dp) exy_
REAL(KIND=dp) eyy_
REAL(KIND=dp) eyz_
REAL(KIND=dp) ezx_
REAL(KIND=dp) ezz_
REAL(KIND=dp) I4_
REAL(KIND=dp) I5_
REAL(KIND=dp) I6_
REAL(KIND=dp) up_
REAL(KIND=dp) vp_
REAL(KIND=dp) wp_
REAL(KIND=dp) u_
REAL(KIND=dp) v_
REAL(KIND=dp) w_

exx_ = exx(epsxx, epsyy, epszz)
exy_ = exy(epsxy)
eyy_ = eyy(epsxx, epsyy, epszz)
eyz_ = eyz(epsyz)
ezx_ = ezx(epszx)
ezz_ = ezz(epsxx, epsyy, epszz)
I4_ = I4(Bx, By, Bz)
I5_ = I5(Bx, By, Bz, exx_, exy_, eyy_, eyz_, ezx_, ezz_)
I6_ = I6(Bx, By, Bz, exx_, exy_, eyy_, eyz_, ezx_, ezz_)
up_ = up(I4_)
vp_ = vp(I4_, I5_)
wp_ = wp(I4_, I5_, I6_)
u_ = u(u0, up_)
v_ = v(v0, vp_)
w_ = w(w0, wp_)

dphi_dw_public = dphi_dw(u_, v_, w_, young_E, poisson_nu)

end function

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
REAL(KIND=dp) exx_
REAL(KIND=dp) exy_
REAL(KIND=dp) eyy_
REAL(KIND=dp) eyz_
REAL(KIND=dp) ezx_
REAL(KIND=dp) ezz_
REAL(KIND=dp) I4_
REAL(KIND=dp) I5_
REAL(KIND=dp) I6_
REAL(KIND=dp) up_
REAL(KIND=dp) vp_
REAL(KIND=dp) wp_
REAL(KIND=dp) u_
REAL(KIND=dp) v_
REAL(KIND=dp) w_

exx_ = exx(epsxx, epsyy, epszz)
exy_ = exy(epsxy)
eyy_ = eyy(epsxx, epsyy, epszz)
eyz_ = eyz(epsyz)
ezx_ = ezx(epszx)
ezz_ = ezz(epsxx, epsyy, epszz)
I4_ = I4(Bx, By, Bz)
I5_ = I5(Bx, By, Bz, exx_, exy_, eyy_, eyz_, ezx_, ezz_)
I6_ = I6(Bx, By, Bz, exx_, exy_, eyy_, eyz_, ezx_, ezz_)
up_ = up(I4_)
vp_ = vp(I4_, I5_)
wp_ = wp(I4_, I5_, I6_)
u_ = u(u0, up_)
v_ = v(v0, vp_)
w_ = w(w0, wp_)

d2phi_du2_public = d2phi_du2(u_, v_, w_, young_E, poisson_nu)

end function

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
REAL(KIND=dp) exx_
REAL(KIND=dp) exy_
REAL(KIND=dp) eyy_
REAL(KIND=dp) eyz_
REAL(KIND=dp) ezx_
REAL(KIND=dp) ezz_
REAL(KIND=dp) I4_
REAL(KIND=dp) I5_
REAL(KIND=dp) I6_
REAL(KIND=dp) up_
REAL(KIND=dp) vp_
REAL(KIND=dp) wp_
REAL(KIND=dp) u_
REAL(KIND=dp) v_
REAL(KIND=dp) w_

exx_ = exx(epsxx, epsyy, epszz)
exy_ = exy(epsxy)
eyy_ = eyy(epsxx, epsyy, epszz)
eyz_ = eyz(epsyz)
ezx_ = ezx(epszx)
ezz_ = ezz(epsxx, epsyy, epszz)
I4_ = I4(Bx, By, Bz)
I5_ = I5(Bx, By, Bz, exx_, exy_, eyy_, eyz_, ezx_, ezz_)
I6_ = I6(Bx, By, Bz, exx_, exy_, eyy_, eyz_, ezx_, ezz_)
up_ = up(I4_)
vp_ = vp(I4_, I5_)
wp_ = wp(I4_, I5_, I6_)
u_ = u(u0, up_)
v_ = v(v0, vp_)
w_ = w(w0, wp_)

d2phi_dv2_public = d2phi_dv2(u_, v_, w_, young_E, poisson_nu)

end function

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
REAL(KIND=dp) exx_
REAL(KIND=dp) exy_
REAL(KIND=dp) eyy_
REAL(KIND=dp) eyz_
REAL(KIND=dp) ezx_
REAL(KIND=dp) ezz_
REAL(KIND=dp) I4_
REAL(KIND=dp) I5_
REAL(KIND=dp) I6_
REAL(KIND=dp) up_
REAL(KIND=dp) vp_
REAL(KIND=dp) wp_
REAL(KIND=dp) u_
REAL(KIND=dp) v_
REAL(KIND=dp) w_

exx_ = exx(epsxx, epsyy, epszz)
exy_ = exy(epsxy)
eyy_ = eyy(epsxx, epsyy, epszz)
eyz_ = eyz(epsyz)
ezx_ = ezx(epszx)
ezz_ = ezz(epsxx, epsyy, epszz)
I4_ = I4(Bx, By, Bz)
I5_ = I5(Bx, By, Bz, exx_, exy_, eyy_, eyz_, ezx_, ezz_)
I6_ = I6(Bx, By, Bz, exx_, exy_, eyy_, eyz_, ezx_, ezz_)
up_ = up(I4_)
vp_ = vp(I4_, I5_)
wp_ = wp(I4_, I5_, I6_)
u_ = u(u0, up_)
v_ = v(v0, vp_)
w_ = w(w0, wp_)

d2phi_dw2_public = d2phi_dw2(u_, v_, w_, young_E, poisson_nu)

end function

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
REAL(KIND=dp) exx_
REAL(KIND=dp) exy_
REAL(KIND=dp) eyy_
REAL(KIND=dp) eyz_
REAL(KIND=dp) ezx_
REAL(KIND=dp) ezz_
REAL(KIND=dp) I4_
REAL(KIND=dp) I5_
REAL(KIND=dp) I6_
REAL(KIND=dp) up_
REAL(KIND=dp) vp_
REAL(KIND=dp) wp_
REAL(KIND=dp) u_
REAL(KIND=dp) v_
REAL(KIND=dp) w_

exx_ = exx(epsxx, epsyy, epszz)
exy_ = exy(epsxy)
eyy_ = eyy(epsxx, epsyy, epszz)
eyz_ = eyz(epsyz)
ezx_ = ezx(epszx)
ezz_ = ezz(epsxx, epsyy, epszz)
I4_ = I4(Bx, By, Bz)
I5_ = I5(Bx, By, Bz, exx_, exy_, eyy_, eyz_, ezx_, ezz_)
I6_ = I6(Bx, By, Bz, exx_, exy_, eyy_, eyz_, ezx_, ezz_)
up_ = up(I4_)
vp_ = vp(I4_, I5_)
wp_ = wp(I4_, I5_, I6_)
u_ = u(u0, up_)
v_ = v(v0, vp_)
w_ = w(w0, wp_)

d2phi_dudv_public = d2phi_dudv(u_, v_, w_, young_E, poisson_nu)

end function

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
REAL(KIND=dp) exx_
REAL(KIND=dp) exy_
REAL(KIND=dp) eyy_
REAL(KIND=dp) eyz_
REAL(KIND=dp) ezx_
REAL(KIND=dp) ezz_
REAL(KIND=dp) I4_
REAL(KIND=dp) I5_
REAL(KIND=dp) I6_
REAL(KIND=dp) up_
REAL(KIND=dp) vp_
REAL(KIND=dp) wp_
REAL(KIND=dp) u_
REAL(KIND=dp) v_
REAL(KIND=dp) w_

exx_ = exx(epsxx, epsyy, epszz)
exy_ = exy(epsxy)
eyy_ = eyy(epsxx, epsyy, epszz)
eyz_ = eyz(epsyz)
ezx_ = ezx(epszx)
ezz_ = ezz(epsxx, epsyy, epszz)
I4_ = I4(Bx, By, Bz)
I5_ = I5(Bx, By, Bz, exx_, exy_, eyy_, eyz_, ezx_, ezz_)
I6_ = I6(Bx, By, Bz, exx_, exy_, eyy_, eyz_, ezx_, ezz_)
up_ = up(I4_)
vp_ = vp(I4_, I5_)
wp_ = wp(I4_, I5_, I6_)
u_ = u(u0, up_)
v_ = v(v0, vp_)
w_ = w(w0, wp_)

d2phi_dvdw_public = d2phi_dvdw(u_, v_, w_, young_E, poisson_nu)

end function

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
REAL(KIND=dp) exx_
REAL(KIND=dp) exy_
REAL(KIND=dp) eyy_
REAL(KIND=dp) eyz_
REAL(KIND=dp) ezx_
REAL(KIND=dp) ezz_
REAL(KIND=dp) I4_
REAL(KIND=dp) I5_
REAL(KIND=dp) I6_
REAL(KIND=dp) up_
REAL(KIND=dp) vp_
REAL(KIND=dp) wp_
REAL(KIND=dp) u_
REAL(KIND=dp) v_
REAL(KIND=dp) w_

exx_ = exx(epsxx, epsyy, epszz)
exy_ = exy(epsxy)
eyy_ = eyy(epsxx, epsyy, epszz)
eyz_ = eyz(epsyz)
ezx_ = ezx(epszx)
ezz_ = ezz(epsxx, epsyy, epszz)
I4_ = I4(Bx, By, Bz)
I5_ = I5(Bx, By, Bz, exx_, exy_, eyy_, eyz_, ezx_, ezz_)
I6_ = I6(Bx, By, Bz, exx_, exy_, eyy_, eyz_, ezx_, ezz_)
up_ = up(I4_)
vp_ = vp(I4_, I5_)
wp_ = wp(I4_, I5_, I6_)
u_ = u(u0, up_)
v_ = v(v0, vp_)
w_ = w(w0, wp_)

d2phi_dudw_public = d2phi_dudw(u_, v_, w_, young_E, poisson_nu)

end function

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
REAL(KIND=dp) exx_
REAL(KIND=dp) exy_
REAL(KIND=dp) eyy_
REAL(KIND=dp) eyz_
REAL(KIND=dp) ezx_
REAL(KIND=dp) ezz_
REAL(KIND=dp) I4_
REAL(KIND=dp) I5_
REAL(KIND=dp) I6_
REAL(KIND=dp) up_
REAL(KIND=dp) vp_
REAL(KIND=dp) wp_
REAL(KIND=dp) u_
REAL(KIND=dp) v_
REAL(KIND=dp) w_
REAL(KIND=dp) dI4_dBx_
REAL(KIND=dp) dI4_dBy_
REAL(KIND=dp) dI4_dBz_
REAL(KIND=dp) dI5_dBx_
REAL(KIND=dp) dI5_dBy_
REAL(KIND=dp) dI5_dBz_
REAL(KIND=dp) dI6_dBx_
REAL(KIND=dp) dI6_dBy_
REAL(KIND=dp) dI6_dBz_
REAL(KIND=dp) dphi_du_
REAL(KIND=dp) dphi_dv_
REAL(KIND=dp) dphi_dw_
REAL(KIND=dp) du_dup_
REAL(KIND=dp) dup_dI4_
REAL(KIND=dp) dv_dvp_
REAL(KIND=dp) dvp_dI4_
REAL(KIND=dp) dvp_dI5_
REAL(KIND=dp) dw_dwp_
REAL(KIND=dp) dwp_dI4_
REAL(KIND=dp) dwp_dI5_
REAL(KIND=dp) dwp_dI6_
REAL(KIND=dp) dphi_dBx_
REAL(KIND=dp) dphi_dBy_
REAL(KIND=dp) dphi_dBz_

exx_ = exx(epsxx, epsyy, epszz)
exy_ = exy(epsxy)
eyy_ = eyy(epsxx, epsyy, epszz)
eyz_ = eyz(epsyz)
ezx_ = ezx(epszx)
ezz_ = ezz(epsxx, epsyy, epszz)
I4_ = I4(Bx, By, Bz)
I5_ = I5(Bx, By, Bz, exx_, exy_, eyy_, eyz_, ezx_, ezz_)
I6_ = I6(Bx, By, Bz, exx_, exy_, eyy_, eyz_, ezx_, ezz_)
up_ = up(I4_)
vp_ = vp(I4_, I5_)
wp_ = wp(I4_, I5_, I6_)
u_ = u(u0, up_)
v_ = v(v0, vp_)
w_ = w(w0, wp_)
dI4_dBx_ = dI4_dBx(Bx)
dI4_dBy_ = dI4_dBy(By)
dI4_dBz_ = dI4_dBz(Bz)
dI5_dBx_ = dI5_dBx(Bx, By, Bz, exx_, exy_, ezx_)
dI5_dBy_ = dI5_dBy(Bx, By, Bz, exy_, eyy_, eyz_)
dI5_dBz_ = dI5_dBz(Bx, By, Bz, eyz_, ezx_, ezz_)
dI6_dBx_ = dI6_dBx(Bx, By, Bz, exx_, exy_, eyy_, eyz_, ezx_, ezz_)
dI6_dBy_ = dI6_dBy(Bx, By, Bz, exx_, exy_, eyy_, eyz_, ezx_, ezz_)
dI6_dBz_ = dI6_dBz(Bx, By, Bz, exx_, exy_, eyy_, eyz_, ezx_, ezz_)
dphi_du_ = dphi_du(u_, v_, w_, young_E, poisson_nu)
dphi_dv_ = dphi_dv(u_, v_, w_, young_E, poisson_nu)
dphi_dw_ = dphi_dw(u_, v_, w_, young_E, poisson_nu)
du_dup_ = du_dup(u0)
dup_dI4_ = dup_dI4(I4_)
dv_dvp_ = dv_dvp(v0)
dvp_dI4_ = dvp_dI4(I4_, I5_)
dvp_dI5_ = dvp_dI5(I4_)
dw_dwp_ = dw_dwp(w0)
dwp_dI4_ = dwp_dI4(I4_, I5_, I6_)
dwp_dI5_ = dwp_dI5(I4_, I5_, I6_)
dwp_dI6_ = dwp_dI6(I4_, I5_, I6_)
dphi_dBx_ = dphi_dBx(dI4_dBx_, dI5_dBx_, dI6_dBx_, dphi_du_, dphi_dv_, &
      dphi_dw_, du_dup_, dup_dI4_, dv_dvp_, dvp_dI4_, dvp_dI5_, dw_dwp_, &
      dwp_dI4_, dwp_dI5_, dwp_dI6_)
dphi_dBy_ = dphi_dBy(dI4_dBy_, dI5_dBy_, dI6_dBy_, dphi_du_, dphi_dv_, &
      dphi_dw_, du_dup_, dup_dI4_, dv_dvp_, dvp_dI4_, dvp_dI5_, dw_dwp_, &
      dwp_dI4_, dwp_dI5_, dwp_dI6_)
dphi_dBz_ = dphi_dBz(dI4_dBz_, dI5_dBz_, dI6_dBz_, dphi_du_, dphi_dv_, &
      dphi_dw_, du_dup_, dup_dI4_, dv_dvp_, dvp_dI4_, dvp_dI5_, dw_dwp_, &
      dwp_dI4_, dwp_dI5_, dwp_dI6_)

call H(dphi_dBx_, dphi_dBy_, dphi_dBz_, H_out)

end subroutine

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
REAL(KIND=dp) exx_
REAL(KIND=dp) exy_
REAL(KIND=dp) eyy_
REAL(KIND=dp) eyz_
REAL(KIND=dp) ezx_
REAL(KIND=dp) ezz_
REAL(KIND=dp) I4_
REAL(KIND=dp) I5_
REAL(KIND=dp) I6_
REAL(KIND=dp) up_
REAL(KIND=dp) vp_
REAL(KIND=dp) wp_
REAL(KIND=dp) u_
REAL(KIND=dp) v_
REAL(KIND=dp) w_
REAL(KIND=dp) d2I4_dBx2_
REAL(KIND=dp) d2I4_dBy2_
REAL(KIND=dp) d2I4_dBz2_
REAL(KIND=dp) d2I5_dBx2_
REAL(KIND=dp) d2I5_dBxdBy_
REAL(KIND=dp) d2I5_dBxdBz_
REAL(KIND=dp) d2I5_dBy2_
REAL(KIND=dp) d2I5_dBydBz_
REAL(KIND=dp) d2I5_dBz2_
REAL(KIND=dp) d2I6_dBx2_
REAL(KIND=dp) d2I6_dBxdBy_
REAL(KIND=dp) d2I6_dBxdBz_
REAL(KIND=dp) d2I6_dBy2_
REAL(KIND=dp) d2I6_dBydBz_
REAL(KIND=dp) d2I6_dBz2_
REAL(KIND=dp) d2phi_du2_
REAL(KIND=dp) d2phi_dudv_
REAL(KIND=dp) d2phi_dudw_
REAL(KIND=dp) d2phi_dv2_
REAL(KIND=dp) d2phi_dvdw_
REAL(KIND=dp) d2phi_dw2_
REAL(KIND=dp) d2up_dI42_
REAL(KIND=dp) d2vp_dI42_
REAL(KIND=dp) d2vp_dI4dI5_
REAL(KIND=dp) d2wp_dI42_
REAL(KIND=dp) d2wp_dI4dI5_
REAL(KIND=dp) d2wp_dI4dI6_
REAL(KIND=dp) d2wp_dI52_
REAL(KIND=dp) d2wp_dI5dI6_
REAL(KIND=dp) d2wp_dI62_
REAL(KIND=dp) dI4_dBx_
REAL(KIND=dp) dI4_dBy_
REAL(KIND=dp) dI4_dBz_
REAL(KIND=dp) dI5_dBx_
REAL(KIND=dp) dI5_dBy_
REAL(KIND=dp) dI5_dBz_
REAL(KIND=dp) dI6_dBx_
REAL(KIND=dp) dI6_dBy_
REAL(KIND=dp) dI6_dBz_
REAL(KIND=dp) dphi_du_
REAL(KIND=dp) dphi_dv_
REAL(KIND=dp) dphi_dw_
REAL(KIND=dp) du_dup_
REAL(KIND=dp) dup_dI4_
REAL(KIND=dp) dv_dvp_
REAL(KIND=dp) dvp_dI4_
REAL(KIND=dp) dvp_dI5_
REAL(KIND=dp) dw_dwp_
REAL(KIND=dp) dwp_dI4_
REAL(KIND=dp) dwp_dI5_
REAL(KIND=dp) dwp_dI6_
REAL(KIND=dp) d2phi_dBx2_
REAL(KIND=dp) d2phi_dBxdBy_
REAL(KIND=dp) d2phi_dBxdBz_
REAL(KIND=dp) d2phi_dBy2_
REAL(KIND=dp) d2phi_dBydBz_
REAL(KIND=dp) d2phi_dBz2_

exx_ = exx(epsxx, epsyy, epszz)
exy_ = exy(epsxy)
eyy_ = eyy(epsxx, epsyy, epszz)
eyz_ = eyz(epsyz)
ezx_ = ezx(epszx)
ezz_ = ezz(epsxx, epsyy, epszz)
I4_ = I4(Bx, By, Bz)
I5_ = I5(Bx, By, Bz, exx_, exy_, eyy_, eyz_, ezx_, ezz_)
I6_ = I6(Bx, By, Bz, exx_, exy_, eyy_, eyz_, ezx_, ezz_)
up_ = up(I4_)
vp_ = vp(I4_, I5_)
wp_ = wp(I4_, I5_, I6_)
u_ = u(u0, up_)
v_ = v(v0, vp_)
w_ = w(w0, wp_)
d2I4_dBx2_ = d2I4_dBx2()
d2I4_dBy2_ = d2I4_dBy2()
d2I4_dBz2_ = d2I4_dBz2()
d2I5_dBx2_ = d2I5_dBx2(exx_)
d2I5_dBxdBy_ = d2I5_dBxdBy(exy_)
d2I5_dBxdBz_ = d2I5_dBxdBz(ezx_)
d2I5_dBy2_ = d2I5_dBy2(eyy_)
d2I5_dBydBz_ = d2I5_dBydBz(eyz_)
d2I5_dBz2_ = d2I5_dBz2(ezz_)
d2I6_dBx2_ = d2I6_dBx2(exx_, exy_, ezx_)
d2I6_dBxdBy_ = d2I6_dBxdBy(exx_, exy_, eyy_, eyz_, ezx_)
d2I6_dBxdBz_ = d2I6_dBxdBz(exx_, exy_, eyz_, ezx_, ezz_)
d2I6_dBy2_ = d2I6_dBy2(exy_, eyy_, eyz_)
d2I6_dBydBz_ = d2I6_dBydBz(exy_, eyy_, eyz_, ezx_, ezz_)
d2I6_dBz2_ = d2I6_dBz2(eyz_, ezx_, ezz_)
d2phi_du2_ = d2phi_du2(u_, v_, w_, young_E, poisson_nu)
d2phi_dudv_ = d2phi_dudv(u_, v_, w_, young_E, poisson_nu)
d2phi_dudw_ = d2phi_dudw(u_, v_, w_, young_E, poisson_nu)
d2phi_dv2_ = d2phi_dv2(u_, v_, w_, young_E, poisson_nu)
d2phi_dvdw_ = d2phi_dvdw(u_, v_, w_, young_E, poisson_nu)
d2phi_dw2_ = d2phi_dw2(u_, v_, w_, young_E, poisson_nu)
d2up_dI42_ = d2up_dI42(I4_)
d2vp_dI42_ = d2vp_dI42(I4_, I5_)
d2vp_dI4dI5_ = d2vp_dI4dI5(I4_)
d2wp_dI42_ = d2wp_dI42(I4_, I5_, I6_)
d2wp_dI4dI5_ = d2wp_dI4dI5(I4_, I5_, I6_)
d2wp_dI4dI6_ = d2wp_dI4dI6(I4_, I5_, I6_)
d2wp_dI52_ = d2wp_dI52(I4_, I5_, I6_)
d2wp_dI5dI6_ = d2wp_dI5dI6(I4_, I5_, I6_)
d2wp_dI62_ = d2wp_dI62(I4_, I5_, I6_)
dI4_dBx_ = dI4_dBx(Bx)
dI4_dBy_ = dI4_dBy(By)
dI4_dBz_ = dI4_dBz(Bz)
dI5_dBx_ = dI5_dBx(Bx, By, Bz, exx_, exy_, ezx_)
dI5_dBy_ = dI5_dBy(Bx, By, Bz, exy_, eyy_, eyz_)
dI5_dBz_ = dI5_dBz(Bx, By, Bz, eyz_, ezx_, ezz_)
dI6_dBx_ = dI6_dBx(Bx, By, Bz, exx_, exy_, eyy_, eyz_, ezx_, ezz_)
dI6_dBy_ = dI6_dBy(Bx, By, Bz, exx_, exy_, eyy_, eyz_, ezx_, ezz_)
dI6_dBz_ = dI6_dBz(Bx, By, Bz, exx_, exy_, eyy_, eyz_, ezx_, ezz_)
dphi_du_ = dphi_du(u_, v_, w_, young_E, poisson_nu)
dphi_dv_ = dphi_dv(u_, v_, w_, young_E, poisson_nu)
dphi_dw_ = dphi_dw(u_, v_, w_, young_E, poisson_nu)
du_dup_ = du_dup(u0)
dup_dI4_ = dup_dI4(I4_)
dv_dvp_ = dv_dvp(v0)
dvp_dI4_ = dvp_dI4(I4_, I5_)
dvp_dI5_ = dvp_dI5(I4_)
dw_dwp_ = dw_dwp(w0)
dwp_dI4_ = dwp_dI4(I4_, I5_, I6_)
dwp_dI5_ = dwp_dI5(I4_, I5_, I6_)
dwp_dI6_ = dwp_dI6(I4_, I5_, I6_)
d2phi_dBx2_ = d2phi_dBx2(d2I4_dBx2_, d2I5_dBx2_, d2I6_dBx2_, d2phi_du2_, &
      d2phi_dudv_, d2phi_dudw_, d2phi_dv2_, d2phi_dvdw_, d2phi_dw2_, &
      d2up_dI42_, d2vp_dI42_, d2vp_dI4dI5_, d2wp_dI42_, d2wp_dI4dI5_, &
      d2wp_dI4dI6_, d2wp_dI52_, d2wp_dI5dI6_, d2wp_dI62_, dI4_dBx_, &
      dI5_dBx_, dI6_dBx_, dphi_du_, dphi_dv_, dphi_dw_, du_dup_, dup_dI4_, &
      dv_dvp_, dvp_dI4_, dvp_dI5_, dw_dwp_, dwp_dI4_, dwp_dI5_, dwp_dI6_)
d2phi_dBxdBy_ = d2phi_dBxdBy(d2I5_dBxdBy_, d2I6_dBxdBy_, d2phi_du2_, &
      d2phi_dudv_, d2phi_dudw_, d2phi_dv2_, d2phi_dvdw_, d2phi_dw2_, &
      d2up_dI42_, d2vp_dI42_, d2vp_dI4dI5_, d2wp_dI42_, d2wp_dI4dI5_, &
      d2wp_dI4dI6_, d2wp_dI52_, d2wp_dI5dI6_, d2wp_dI62_, dI4_dBx_, &
      dI4_dBy_, dI5_dBx_, dI5_dBy_, dI6_dBx_, dI6_dBy_, dphi_du_, dphi_dv_, &
      dphi_dw_, du_dup_, dup_dI4_, dv_dvp_, dvp_dI4_, dvp_dI5_, dw_dwp_, &
      dwp_dI4_, dwp_dI5_, dwp_dI6_)
d2phi_dBxdBz_ = d2phi_dBxdBz(d2I5_dBxdBz_, d2I6_dBxdBz_, d2phi_du2_, &
      d2phi_dudv_, d2phi_dudw_, d2phi_dv2_, d2phi_dvdw_, d2phi_dw2_, &
      d2up_dI42_, d2vp_dI42_, d2vp_dI4dI5_, d2wp_dI42_, d2wp_dI4dI5_, &
      d2wp_dI4dI6_, d2wp_dI52_, d2wp_dI5dI6_, d2wp_dI62_, dI4_dBx_, &
      dI4_dBz_, dI5_dBx_, dI5_dBz_, dI6_dBx_, dI6_dBz_, dphi_du_, dphi_dv_, &
      dphi_dw_, du_dup_, dup_dI4_, dv_dvp_, dvp_dI4_, dvp_dI5_, dw_dwp_, &
      dwp_dI4_, dwp_dI5_, dwp_dI6_)
d2phi_dBy2_ = d2phi_dBy2(d2I4_dBy2_, d2I5_dBy2_, d2I6_dBy2_, d2phi_du2_, &
      d2phi_dudv_, d2phi_dudw_, d2phi_dv2_, d2phi_dvdw_, d2phi_dw2_, &
      d2up_dI42_, d2vp_dI42_, d2vp_dI4dI5_, d2wp_dI42_, d2wp_dI4dI5_, &
      d2wp_dI4dI6_, d2wp_dI52_, d2wp_dI5dI6_, d2wp_dI62_, dI4_dBy_, &
      dI5_dBy_, dI6_dBy_, dphi_du_, dphi_dv_, dphi_dw_, du_dup_, dup_dI4_, &
      dv_dvp_, dvp_dI4_, dvp_dI5_, dw_dwp_, dwp_dI4_, dwp_dI5_, dwp_dI6_)
d2phi_dBydBz_ = d2phi_dBydBz(d2I5_dBydBz_, d2I6_dBydBz_, d2phi_du2_, &
      d2phi_dudv_, d2phi_dudw_, d2phi_dv2_, d2phi_dvdw_, d2phi_dw2_, &
      d2up_dI42_, d2vp_dI42_, d2vp_dI4dI5_, d2wp_dI42_, d2wp_dI4dI5_, &
      d2wp_dI4dI6_, d2wp_dI52_, d2wp_dI5dI6_, d2wp_dI62_, dI4_dBy_, &
      dI4_dBz_, dI5_dBy_, dI5_dBz_, dI6_dBy_, dI6_dBz_, dphi_du_, dphi_dv_, &
      dphi_dw_, du_dup_, dup_dI4_, dv_dvp_, dvp_dI4_, dvp_dI5_, dw_dwp_, &
      dwp_dI4_, dwp_dI5_, dwp_dI6_)
d2phi_dBz2_ = d2phi_dBz2(d2I4_dBz2_, d2I5_dBz2_, d2I6_dBz2_, d2phi_du2_, &
      d2phi_dudv_, d2phi_dudw_, d2phi_dv2_, d2phi_dvdw_, d2phi_dw2_, &
      d2up_dI42_, d2vp_dI42_, d2vp_dI4dI5_, d2wp_dI42_, d2wp_dI4dI5_, &
      d2wp_dI4dI6_, d2wp_dI52_, d2wp_dI5dI6_, d2wp_dI62_, dI4_dBz_, &
      dI5_dBz_, dI6_dBz_, dphi_du_, dphi_dv_, dphi_dw_, du_dup_, dup_dI4_, &
      dv_dvp_, dvp_dI4_, dvp_dI5_, dw_dwp_, dwp_dI4_, dwp_dI5_, dwp_dI6_)

call dH_dB(d2phi_dBx2_, d2phi_dBy2_, d2phi_dBz2_, d2phi_dBxdBy_, &
      d2phi_dBxdBz_, d2phi_dBydBz_, dH_dB_out)

end subroutine

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
REAL(KIND=dp) exx_
REAL(KIND=dp) exy_
REAL(KIND=dp) eyy_
REAL(KIND=dp) eyz_
REAL(KIND=dp) ezx_
REAL(KIND=dp) ezz_
REAL(KIND=dp) I4_
REAL(KIND=dp) I5_
REAL(KIND=dp) I6_
REAL(KIND=dp) up_
REAL(KIND=dp) vp_
REAL(KIND=dp) wp_
REAL(KIND=dp) u_
REAL(KIND=dp) v_
REAL(KIND=dp) w_
REAL(KIND=dp) dI5_dexx_
REAL(KIND=dp) dI5_dexy_
REAL(KIND=dp) dI5_deyy_
REAL(KIND=dp) dI5_deyz_
REAL(KIND=dp) dI5_dezx_
REAL(KIND=dp) dI5_dezz_
REAL(KIND=dp) dI6_dexx_
REAL(KIND=dp) dI6_dexy_
REAL(KIND=dp) dI6_deyy_
REAL(KIND=dp) dI6_deyz_
REAL(KIND=dp) dI6_dezx_
REAL(KIND=dp) dI6_dezz_
REAL(KIND=dp) dexx_depsxx_
REAL(KIND=dp) dexx_depsyy_
REAL(KIND=dp) dexx_depszz_
REAL(KIND=dp) dexy_depsxy_
REAL(KIND=dp) deyy_depsxx_
REAL(KIND=dp) deyy_depsyy_
REAL(KIND=dp) deyy_depszz_
REAL(KIND=dp) deyz_depsyz_
REAL(KIND=dp) dezx_depszx_
REAL(KIND=dp) dezz_depsxx_
REAL(KIND=dp) dezz_depsyy_
REAL(KIND=dp) dezz_depszz_
REAL(KIND=dp) dphi_dv_
REAL(KIND=dp) dphi_dw_
REAL(KIND=dp) dv_dvp_
REAL(KIND=dp) dvp_dI5_
REAL(KIND=dp) dw_dwp_
REAL(KIND=dp) dwp_dI5_
REAL(KIND=dp) dwp_dI6_
REAL(KIND=dp) dphi_depsxx_
REAL(KIND=dp) dphi_depsxy_
REAL(KIND=dp) dphi_depsyy_
REAL(KIND=dp) dphi_depsyz_
REAL(KIND=dp) dphi_depszx_
REAL(KIND=dp) dphi_depszz_

exx_ = exx(epsxx, epsyy, epszz)
exy_ = exy(epsxy)
eyy_ = eyy(epsxx, epsyy, epszz)
eyz_ = eyz(epsyz)
ezx_ = ezx(epszx)
ezz_ = ezz(epsxx, epsyy, epszz)
I4_ = I4(Bx, By, Bz)
I5_ = I5(Bx, By, Bz, exx_, exy_, eyy_, eyz_, ezx_, ezz_)
I6_ = I6(Bx, By, Bz, exx_, exy_, eyy_, eyz_, ezx_, ezz_)
up_ = up(I4_)
vp_ = vp(I4_, I5_)
wp_ = wp(I4_, I5_, I6_)
u_ = u(u0, up_)
v_ = v(v0, vp_)
w_ = w(w0, wp_)
dI5_dexx_ = dI5_dexx(Bx)
dI5_dexy_ = dI5_dexy(Bx, By)
dI5_deyy_ = dI5_deyy(By)
dI5_deyz_ = dI5_deyz(By, Bz)
dI5_dezx_ = dI5_dezx(Bx, Bz)
dI5_dezz_ = dI5_dezz(Bz)
dI6_dexx_ = dI6_dexx(Bx, By, Bz, exx_, exy_, ezx_)
dI6_dexy_ = dI6_dexy(Bx, By, Bz, exx_, exy_, eyy_, eyz_, ezx_)
dI6_deyy_ = dI6_deyy(Bx, By, Bz, exy_, eyy_, eyz_)
dI6_deyz_ = dI6_deyz(Bx, By, Bz, exy_, eyy_, eyz_, ezx_, ezz_)
dI6_dezx_ = dI6_dezx(Bx, By, Bz, exx_, exy_, eyz_, ezx_, ezz_)
dI6_dezz_ = dI6_dezz(Bx, By, Bz, eyz_, ezx_, ezz_)
dexx_depsxx_ = dexx_depsxx()
dexx_depsyy_ = dexx_depsyy()
dexx_depszz_ = dexx_depszz()
dexy_depsxy_ = dexy_depsxy()
deyy_depsxx_ = deyy_depsxx()
deyy_depsyy_ = deyy_depsyy()
deyy_depszz_ = deyy_depszz()
deyz_depsyz_ = deyz_depsyz()
dezx_depszx_ = dezx_depszx()
dezz_depsxx_ = dezz_depsxx()
dezz_depsyy_ = dezz_depsyy()
dezz_depszz_ = dezz_depszz()
dphi_dv_ = dphi_dv(u_, v_, w_, young_E, poisson_nu)
dphi_dw_ = dphi_dw(u_, v_, w_, young_E, poisson_nu)
dv_dvp_ = dv_dvp(v0)
dvp_dI5_ = dvp_dI5(I4_)
dw_dwp_ = dw_dwp(w0)
dwp_dI5_ = dwp_dI5(I4_, I5_, I6_)
dwp_dI6_ = dwp_dI6(I4_, I5_, I6_)
dphi_depsxx_ = dphi_depsxx(dI5_dexx_, dI5_deyy_, dI5_dezz_, dI6_dexx_, &
      dI6_deyy_, dI6_dezz_, dexx_depsxx_, deyy_depsxx_, dezz_depsxx_, &
      dphi_dv_, dphi_dw_, dv_dvp_, dvp_dI5_, dw_dwp_, dwp_dI5_, dwp_dI6_)
dphi_depsxy_ = dphi_depsxy(dI5_dexy_, dI6_dexy_, dexy_depsxy_, dphi_dv_, &
      dphi_dw_, dv_dvp_, dvp_dI5_, dw_dwp_, dwp_dI5_, dwp_dI6_)
dphi_depsyy_ = dphi_depsyy(dI5_dexx_, dI5_deyy_, dI5_dezz_, dI6_dexx_, &
      dI6_deyy_, dI6_dezz_, dexx_depsyy_, deyy_depsyy_, dezz_depsyy_, &
      dphi_dv_, dphi_dw_, dv_dvp_, dvp_dI5_, dw_dwp_, dwp_dI5_, dwp_dI6_)
dphi_depsyz_ = dphi_depsyz(dI5_deyz_, dI6_deyz_, deyz_depsyz_, dphi_dv_, &
      dphi_dw_, dv_dvp_, dvp_dI5_, dw_dwp_, dwp_dI5_, dwp_dI6_)
dphi_depszx_ = dphi_depszx(dI5_dezx_, dI6_dezx_, dezx_depszx_, dphi_dv_, &
      dphi_dw_, dv_dvp_, dvp_dI5_, dw_dwp_, dwp_dI5_, dwp_dI6_)
dphi_depszz_ = dphi_depszz(dI5_dexx_, dI5_deyy_, dI5_dezz_, dI6_dexx_, &
      dI6_deyy_, dI6_dezz_, dexx_depszz_, deyy_depszz_, dezz_depszz_, &
      dphi_dv_, dphi_dw_, dv_dvp_, dvp_dI5_, dw_dwp_, dwp_dI5_, dwp_dI6_)

call S(dphi_depsxx_, dphi_depsyy_, dphi_depszz_, dphi_depsyz_, dphi_depszx_, &
      dphi_depsxy_, S_out)

end subroutine

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
REAL(KIND=dp) exx_
REAL(KIND=dp) exy_
REAL(KIND=dp) eyy_
REAL(KIND=dp) eyz_
REAL(KIND=dp) ezx_
REAL(KIND=dp) ezz_
REAL(KIND=dp) I4_
REAL(KIND=dp) I5_
REAL(KIND=dp) I6_
REAL(KIND=dp) up_
REAL(KIND=dp) vp_
REAL(KIND=dp) wp_
REAL(KIND=dp) u_
REAL(KIND=dp) v_
REAL(KIND=dp) w_
REAL(KIND=dp) d2I6_dexx2_
REAL(KIND=dp) d2I6_dexxdexy_
REAL(KIND=dp) d2I6_dexxdezx_
REAL(KIND=dp) d2I6_dexy2_
REAL(KIND=dp) d2I6_dexydeyy_
REAL(KIND=dp) d2I6_dexydeyz_
REAL(KIND=dp) d2I6_dexydezx_
REAL(KIND=dp) d2I6_deyy2_
REAL(KIND=dp) d2I6_deyydeyz_
REAL(KIND=dp) d2I6_deyz2_
REAL(KIND=dp) d2I6_deyzdezx_
REAL(KIND=dp) d2I6_deyzdezz_
REAL(KIND=dp) d2I6_dezx2_
REAL(KIND=dp) d2I6_dezxdezz_
REAL(KIND=dp) d2I6_dezz2_
REAL(KIND=dp) d2phi_dv2_
REAL(KIND=dp) d2phi_dvdw_
REAL(KIND=dp) d2phi_dw2_
REAL(KIND=dp) d2wp_dI52_
REAL(KIND=dp) d2wp_dI5dI6_
REAL(KIND=dp) d2wp_dI62_
REAL(KIND=dp) dI5_dexx_
REAL(KIND=dp) dI5_dexy_
REAL(KIND=dp) dI5_deyy_
REAL(KIND=dp) dI5_deyz_
REAL(KIND=dp) dI5_dezx_
REAL(KIND=dp) dI5_dezz_
REAL(KIND=dp) dI6_dexx_
REAL(KIND=dp) dI6_dexy_
REAL(KIND=dp) dI6_deyy_
REAL(KIND=dp) dI6_deyz_
REAL(KIND=dp) dI6_dezx_
REAL(KIND=dp) dI6_dezz_
REAL(KIND=dp) dexx_depsxx_
REAL(KIND=dp) dexx_depsyy_
REAL(KIND=dp) dexx_depszz_
REAL(KIND=dp) dexy_depsxy_
REAL(KIND=dp) deyy_depsxx_
REAL(KIND=dp) deyy_depsyy_
REAL(KIND=dp) deyy_depszz_
REAL(KIND=dp) deyz_depsyz_
REAL(KIND=dp) dezx_depszx_
REAL(KIND=dp) dezz_depsxx_
REAL(KIND=dp) dezz_depsyy_
REAL(KIND=dp) dezz_depszz_
REAL(KIND=dp) dphi_dw_
REAL(KIND=dp) dv_dvp_
REAL(KIND=dp) dvp_dI5_
REAL(KIND=dp) dw_dwp_
REAL(KIND=dp) dwp_dI5_
REAL(KIND=dp) dwp_dI6_
REAL(KIND=dp) d2phi_depsxx2_
REAL(KIND=dp) d2phi_depsxxdepsxy_
REAL(KIND=dp) d2phi_depsxxdepsyy_
REAL(KIND=dp) d2phi_depsxxdepsyz_
REAL(KIND=dp) d2phi_depsxxdepszx_
REAL(KIND=dp) d2phi_depsxxdepszz_
REAL(KIND=dp) d2phi_depsxy2_
REAL(KIND=dp) d2phi_depsxydepsyy_
REAL(KIND=dp) d2phi_depsxydepsyz_
REAL(KIND=dp) d2phi_depsxydepszx_
REAL(KIND=dp) d2phi_depsxydepszz_
REAL(KIND=dp) d2phi_depsyy2_
REAL(KIND=dp) d2phi_depsyydepsyz_
REAL(KIND=dp) d2phi_depsyydepszx_
REAL(KIND=dp) d2phi_depsyydepszz_
REAL(KIND=dp) d2phi_depsyz2_
REAL(KIND=dp) d2phi_depsyzdepszx_
REAL(KIND=dp) d2phi_depsyzdepszz_
REAL(KIND=dp) d2phi_depszx2_
REAL(KIND=dp) d2phi_depszxdepszz_
REAL(KIND=dp) d2phi_depszz2_

exx_ = exx(epsxx, epsyy, epszz)
exy_ = exy(epsxy)
eyy_ = eyy(epsxx, epsyy, epszz)
eyz_ = eyz(epsyz)
ezx_ = ezx(epszx)
ezz_ = ezz(epsxx, epsyy, epszz)
I4_ = I4(Bx, By, Bz)
I5_ = I5(Bx, By, Bz, exx_, exy_, eyy_, eyz_, ezx_, ezz_)
I6_ = I6(Bx, By, Bz, exx_, exy_, eyy_, eyz_, ezx_, ezz_)
up_ = up(I4_)
vp_ = vp(I4_, I5_)
wp_ = wp(I4_, I5_, I6_)
u_ = u(u0, up_)
v_ = v(v0, vp_)
w_ = w(w0, wp_)
d2I6_dexx2_ = d2I6_dexx2(Bx)
d2I6_dexxdexy_ = d2I6_dexxdexy(Bx, By)
d2I6_dexxdezx_ = d2I6_dexxdezx(Bx, Bz)
d2I6_dexy2_ = d2I6_dexy2(Bx, By)
d2I6_dexydeyy_ = d2I6_dexydeyy(Bx, By)
d2I6_dexydeyz_ = d2I6_dexydeyz(Bx, Bz)
d2I6_dexydezx_ = d2I6_dexydezx(By, Bz)
d2I6_deyy2_ = d2I6_deyy2(By)
d2I6_deyydeyz_ = d2I6_deyydeyz(By, Bz)
d2I6_deyz2_ = d2I6_deyz2(By, Bz)
d2I6_deyzdezx_ = d2I6_deyzdezx(Bx, By)
d2I6_deyzdezz_ = d2I6_deyzdezz(By, Bz)
d2I6_dezx2_ = d2I6_dezx2(Bx, Bz)
d2I6_dezxdezz_ = d2I6_dezxdezz(Bx, Bz)
d2I6_dezz2_ = d2I6_dezz2(Bz)
d2phi_dv2_ = d2phi_dv2(u_, v_, w_, young_E, poisson_nu)
d2phi_dvdw_ = d2phi_dvdw(u_, v_, w_, young_E, poisson_nu)
d2phi_dw2_ = d2phi_dw2(u_, v_, w_, young_E, poisson_nu)
d2wp_dI52_ = d2wp_dI52(I4_, I5_, I6_)
d2wp_dI5dI6_ = d2wp_dI5dI6(I4_, I5_, I6_)
d2wp_dI62_ = d2wp_dI62(I4_, I5_, I6_)
dI5_dexx_ = dI5_dexx(Bx)
dI5_dexy_ = dI5_dexy(Bx, By)
dI5_deyy_ = dI5_deyy(By)
dI5_deyz_ = dI5_deyz(By, Bz)
dI5_dezx_ = dI5_dezx(Bx, Bz)
dI5_dezz_ = dI5_dezz(Bz)
dI6_dexx_ = dI6_dexx(Bx, By, Bz, exx_, exy_, ezx_)
dI6_dexy_ = dI6_dexy(Bx, By, Bz, exx_, exy_, eyy_, eyz_, ezx_)
dI6_deyy_ = dI6_deyy(Bx, By, Bz, exy_, eyy_, eyz_)
dI6_deyz_ = dI6_deyz(Bx, By, Bz, exy_, eyy_, eyz_, ezx_, ezz_)
dI6_dezx_ = dI6_dezx(Bx, By, Bz, exx_, exy_, eyz_, ezx_, ezz_)
dI6_dezz_ = dI6_dezz(Bx, By, Bz, eyz_, ezx_, ezz_)
dexx_depsxx_ = dexx_depsxx()
dexx_depsyy_ = dexx_depsyy()
dexx_depszz_ = dexx_depszz()
dexy_depsxy_ = dexy_depsxy()
deyy_depsxx_ = deyy_depsxx()
deyy_depsyy_ = deyy_depsyy()
deyy_depszz_ = deyy_depszz()
deyz_depsyz_ = deyz_depsyz()
dezx_depszx_ = dezx_depszx()
dezz_depsxx_ = dezz_depsxx()
dezz_depsyy_ = dezz_depsyy()
dezz_depszz_ = dezz_depszz()
dphi_dw_ = dphi_dw(u_, v_, w_, young_E, poisson_nu)
dv_dvp_ = dv_dvp(v0)
dvp_dI5_ = dvp_dI5(I4_)
dw_dwp_ = dw_dwp(w0)
dwp_dI5_ = dwp_dI5(I4_, I5_, I6_)
dwp_dI6_ = dwp_dI6(I4_, I5_, I6_)
d2phi_depsxx2_ = d2phi_depsxx2(d2I6_dexx2_, d2I6_deyy2_, d2I6_dezz2_, &
      d2phi_dv2_, d2phi_dvdw_, d2phi_dw2_, d2wp_dI52_, d2wp_dI5dI6_, &
      d2wp_dI62_, dI5_dexx_, dI5_deyy_, dI5_dezz_, dI6_dexx_, dI6_deyy_, &
      dI6_dezz_, dexx_depsxx_, deyy_depsxx_, dezz_depsxx_, dphi_dw_, &
      dv_dvp_, dvp_dI5_, dw_dwp_, dwp_dI5_, dwp_dI6_)
d2phi_depsxxdepsxy_ = d2phi_depsxxdepsxy(d2I6_dexxdexy_, d2I6_dexydeyy_, &
      d2phi_dv2_, d2phi_dvdw_, d2phi_dw2_, d2wp_dI52_, d2wp_dI5dI6_, &
      d2wp_dI62_, dI5_dexx_, dI5_dexy_, dI5_deyy_, dI5_dezz_, dI6_dexx_, &
      dI6_dexy_, dI6_deyy_, dI6_dezz_, dexx_depsxx_, dexy_depsxy_, &
      deyy_depsxx_, dezz_depsxx_, dphi_dw_, dv_dvp_, dvp_dI5_, dw_dwp_, &
      dwp_dI5_, dwp_dI6_)
d2phi_depsxxdepsyy_ = d2phi_depsxxdepsyy(d2I6_dexx2_, d2I6_deyy2_, &
      d2I6_dezz2_, d2phi_dv2_, d2phi_dvdw_, d2phi_dw2_, d2wp_dI52_, &
      d2wp_dI5dI6_, d2wp_dI62_, dI5_dexx_, dI5_deyy_, dI5_dezz_, dI6_dexx_, &
      dI6_deyy_, dI6_dezz_, dexx_depsxx_, dexx_depsyy_, deyy_depsxx_, &
      deyy_depsyy_, dezz_depsxx_, dezz_depsyy_, dphi_dw_, dv_dvp_, dvp_dI5_, &
      dw_dwp_, dwp_dI5_, dwp_dI6_)
d2phi_depsxxdepsyz_ = d2phi_depsxxdepsyz(d2I6_deyydeyz_, d2I6_deyzdezz_, &
      d2phi_dv2_, d2phi_dvdw_, d2phi_dw2_, d2wp_dI52_, d2wp_dI5dI6_, &
      d2wp_dI62_, dI5_dexx_, dI5_deyy_, dI5_deyz_, dI5_dezz_, dI6_dexx_, &
      dI6_deyy_, dI6_deyz_, dI6_dezz_, dexx_depsxx_, deyy_depsxx_, &
      deyz_depsyz_, dezz_depsxx_, dphi_dw_, dv_dvp_, dvp_dI5_, dw_dwp_, &
      dwp_dI5_, dwp_dI6_)
d2phi_depsxxdepszx_ = d2phi_depsxxdepszx(d2I6_dexxdezx_, d2I6_dezxdezz_, &
      d2phi_dv2_, d2phi_dvdw_, d2phi_dw2_, d2wp_dI52_, d2wp_dI5dI6_, &
      d2wp_dI62_, dI5_dexx_, dI5_deyy_, dI5_dezx_, dI5_dezz_, dI6_dexx_, &
      dI6_deyy_, dI6_dezx_, dI6_dezz_, dexx_depsxx_, deyy_depsxx_, &
      dezx_depszx_, dezz_depsxx_, dphi_dw_, dv_dvp_, dvp_dI5_, dw_dwp_, &
      dwp_dI5_, dwp_dI6_)
d2phi_depsxxdepszz_ = d2phi_depsxxdepszz(d2I6_dexx2_, d2I6_deyy2_, &
      d2I6_dezz2_, d2phi_dv2_, d2phi_dvdw_, d2phi_dw2_, d2wp_dI52_, &
      d2wp_dI5dI6_, d2wp_dI62_, dI5_dexx_, dI5_deyy_, dI5_dezz_, dI6_dexx_, &
      dI6_deyy_, dI6_dezz_, dexx_depsxx_, dexx_depszz_, deyy_depsxx_, &
      deyy_depszz_, dezz_depsxx_, dezz_depszz_, dphi_dw_, dv_dvp_, dvp_dI5_, &
      dw_dwp_, dwp_dI5_, dwp_dI6_)
d2phi_depsxy2_ = d2phi_depsxy2(d2I6_dexy2_, d2phi_dv2_, d2phi_dvdw_, &
      d2phi_dw2_, d2wp_dI52_, d2wp_dI5dI6_, d2wp_dI62_, dI5_dexy_, &
      dI6_dexy_, dexy_depsxy_, dphi_dw_, dv_dvp_, dvp_dI5_, dw_dwp_, &
      dwp_dI5_, dwp_dI6_)
d2phi_depsxydepsyy_ = d2phi_depsxydepsyy(d2I6_dexxdexy_, d2I6_dexydeyy_, &
      d2phi_dv2_, d2phi_dvdw_, d2phi_dw2_, d2wp_dI52_, d2wp_dI5dI6_, &
      d2wp_dI62_, dI5_dexx_, dI5_dexy_, dI5_deyy_, dI5_dezz_, dI6_dexx_, &
      dI6_dexy_, dI6_deyy_, dI6_dezz_, dexx_depsyy_, dexy_depsxy_, &
      deyy_depsyy_, dezz_depsyy_, dphi_dw_, dv_dvp_, dvp_dI5_, dw_dwp_, &
      dwp_dI5_, dwp_dI6_)
d2phi_depsxydepsyz_ = d2phi_depsxydepsyz(d2I6_dexydeyz_, d2phi_dv2_, &
      d2phi_dvdw_, d2phi_dw2_, d2wp_dI52_, d2wp_dI5dI6_, d2wp_dI62_, &
      dI5_dexy_, dI5_deyz_, dI6_dexy_, dI6_deyz_, dexy_depsxy_, &
      deyz_depsyz_, dphi_dw_, dv_dvp_, dvp_dI5_, dw_dwp_, dwp_dI5_, &
      dwp_dI6_)
d2phi_depsxydepszx_ = d2phi_depsxydepszx(d2I6_dexydezx_, d2phi_dv2_, &
      d2phi_dvdw_, d2phi_dw2_, d2wp_dI52_, d2wp_dI5dI6_, d2wp_dI62_, &
      dI5_dexy_, dI5_dezx_, dI6_dexy_, dI6_dezx_, dexy_depsxy_, &
      dezx_depszx_, dphi_dw_, dv_dvp_, dvp_dI5_, dw_dwp_, dwp_dI5_, &
      dwp_dI6_)
d2phi_depsxydepszz_ = d2phi_depsxydepszz(d2I6_dexxdexy_, d2I6_dexydeyy_, &
      d2phi_dv2_, d2phi_dvdw_, d2phi_dw2_, d2wp_dI52_, d2wp_dI5dI6_, &
      d2wp_dI62_, dI5_dexx_, dI5_dexy_, dI5_deyy_, dI5_dezz_, dI6_dexx_, &
      dI6_dexy_, dI6_deyy_, dI6_dezz_, dexx_depszz_, dexy_depsxy_, &
      deyy_depszz_, dezz_depszz_, dphi_dw_, dv_dvp_, dvp_dI5_, dw_dwp_, &
      dwp_dI5_, dwp_dI6_)
d2phi_depsyy2_ = d2phi_depsyy2(d2I6_dexx2_, d2I6_deyy2_, d2I6_dezz2_, &
      d2phi_dv2_, d2phi_dvdw_, d2phi_dw2_, d2wp_dI52_, d2wp_dI5dI6_, &
      d2wp_dI62_, dI5_dexx_, dI5_deyy_, dI5_dezz_, dI6_dexx_, dI6_deyy_, &
      dI6_dezz_, dexx_depsyy_, deyy_depsyy_, dezz_depsyy_, dphi_dw_, &
      dv_dvp_, dvp_dI5_, dw_dwp_, dwp_dI5_, dwp_dI6_)
d2phi_depsyydepsyz_ = d2phi_depsyydepsyz(d2I6_deyydeyz_, d2I6_deyzdezz_, &
      d2phi_dv2_, d2phi_dvdw_, d2phi_dw2_, d2wp_dI52_, d2wp_dI5dI6_, &
      d2wp_dI62_, dI5_dexx_, dI5_deyy_, dI5_deyz_, dI5_dezz_, dI6_dexx_, &
      dI6_deyy_, dI6_deyz_, dI6_dezz_, dexx_depsyy_, deyy_depsyy_, &
      deyz_depsyz_, dezz_depsyy_, dphi_dw_, dv_dvp_, dvp_dI5_, dw_dwp_, &
      dwp_dI5_, dwp_dI6_)
d2phi_depsyydepszx_ = d2phi_depsyydepszx(d2I6_dexxdezx_, d2I6_dezxdezz_, &
      d2phi_dv2_, d2phi_dvdw_, d2phi_dw2_, d2wp_dI52_, d2wp_dI5dI6_, &
      d2wp_dI62_, dI5_dexx_, dI5_deyy_, dI5_dezx_, dI5_dezz_, dI6_dexx_, &
      dI6_deyy_, dI6_dezx_, dI6_dezz_, dexx_depsyy_, deyy_depsyy_, &
      dezx_depszx_, dezz_depsyy_, dphi_dw_, dv_dvp_, dvp_dI5_, dw_dwp_, &
      dwp_dI5_, dwp_dI6_)
d2phi_depsyydepszz_ = d2phi_depsyydepszz(d2I6_dexx2_, d2I6_deyy2_, &
      d2I6_dezz2_, d2phi_dv2_, d2phi_dvdw_, d2phi_dw2_, d2wp_dI52_, &
      d2wp_dI5dI6_, d2wp_dI62_, dI5_dexx_, dI5_deyy_, dI5_dezz_, dI6_dexx_, &
      dI6_deyy_, dI6_dezz_, dexx_depsyy_, dexx_depszz_, deyy_depsyy_, &
      deyy_depszz_, dezz_depsyy_, dezz_depszz_, dphi_dw_, dv_dvp_, dvp_dI5_, &
      dw_dwp_, dwp_dI5_, dwp_dI6_)
d2phi_depsyz2_ = d2phi_depsyz2(d2I6_deyz2_, d2phi_dv2_, d2phi_dvdw_, &
      d2phi_dw2_, d2wp_dI52_, d2wp_dI5dI6_, d2wp_dI62_, dI5_deyz_, &
      dI6_deyz_, deyz_depsyz_, dphi_dw_, dv_dvp_, dvp_dI5_, dw_dwp_, &
      dwp_dI5_, dwp_dI6_)
d2phi_depsyzdepszx_ = d2phi_depsyzdepszx(d2I6_deyzdezx_, d2phi_dv2_, &
      d2phi_dvdw_, d2phi_dw2_, d2wp_dI52_, d2wp_dI5dI6_, d2wp_dI62_, &
      dI5_deyz_, dI5_dezx_, dI6_deyz_, dI6_dezx_, deyz_depsyz_, &
      dezx_depszx_, dphi_dw_, dv_dvp_, dvp_dI5_, dw_dwp_, dwp_dI5_, &
      dwp_dI6_)
d2phi_depsyzdepszz_ = d2phi_depsyzdepszz(d2I6_deyydeyz_, d2I6_deyzdezz_, &
      d2phi_dv2_, d2phi_dvdw_, d2phi_dw2_, d2wp_dI52_, d2wp_dI5dI6_, &
      d2wp_dI62_, dI5_dexx_, dI5_deyy_, dI5_deyz_, dI5_dezz_, dI6_dexx_, &
      dI6_deyy_, dI6_deyz_, dI6_dezz_, dexx_depszz_, deyy_depszz_, &
      deyz_depsyz_, dezz_depszz_, dphi_dw_, dv_dvp_, dvp_dI5_, dw_dwp_, &
      dwp_dI5_, dwp_dI6_)
d2phi_depszx2_ = d2phi_depszx2(d2I6_dezx2_, d2phi_dv2_, d2phi_dvdw_, &
      d2phi_dw2_, d2wp_dI52_, d2wp_dI5dI6_, d2wp_dI62_, dI5_dezx_, &
      dI6_dezx_, dezx_depszx_, dphi_dw_, dv_dvp_, dvp_dI5_, dw_dwp_, &
      dwp_dI5_, dwp_dI6_)
d2phi_depszxdepszz_ = d2phi_depszxdepszz(d2I6_dexxdezx_, d2I6_dezxdezz_, &
      d2phi_dv2_, d2phi_dvdw_, d2phi_dw2_, d2wp_dI52_, d2wp_dI5dI6_, &
      d2wp_dI62_, dI5_dexx_, dI5_deyy_, dI5_dezx_, dI5_dezz_, dI6_dexx_, &
      dI6_deyy_, dI6_dezx_, dI6_dezz_, dexx_depszz_, deyy_depszz_, &
      dezx_depszx_, dezz_depszz_, dphi_dw_, dv_dvp_, dvp_dI5_, dw_dwp_, &
      dwp_dI5_, dwp_dI6_)
d2phi_depszz2_ = d2phi_depszz2(d2I6_dexx2_, d2I6_deyy2_, d2I6_dezz2_, &
      d2phi_dv2_, d2phi_dvdw_, d2phi_dw2_, d2wp_dI52_, d2wp_dI5dI6_, &
      d2wp_dI62_, dI5_dexx_, dI5_deyy_, dI5_dezz_, dI6_dexx_, dI6_deyy_, &
      dI6_dezz_, dexx_depszz_, deyy_depszz_, dezz_depszz_, dphi_dw_, &
      dv_dvp_, dvp_dI5_, dw_dwp_, dwp_dI5_, dwp_dI6_)

call dS_deps(d2phi_depsxx2_, d2phi_depsyy2_, d2phi_depszz2_, d2phi_depsyz2_, &
      d2phi_depszx2_, d2phi_depsxy2_, d2phi_depsxxdepsxy_, &
      d2phi_depsxxdepsyy_, d2phi_depsxxdepsyz_, d2phi_depsxxdepszx_, &
      d2phi_depsxxdepszz_, d2phi_depsxydepsyy_, d2phi_depsxydepsyz_, &
      d2phi_depsxydepszx_, d2phi_depsxydepszz_, d2phi_depsyydepsyz_, &
      d2phi_depsyydepszx_, d2phi_depsyydepszz_, d2phi_depsyzdepszx_, &
      d2phi_depsyzdepszz_, d2phi_depszxdepszz_, dS_deps_out)

end subroutine

