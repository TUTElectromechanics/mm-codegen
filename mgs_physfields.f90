!******************************************************************************
!*           Material model plugin for Elmer's MagnetoStriction.f90           *
!*                                                                            *
!*                 This file is part of 'elmer-mgs-galfenol'                  *
!******************************************************************************

!***************************************************
! This file is manually implemented, do not delete!
!***************************************************

! Do not compact the format of the intent declarations. The rudimentary parser
! in the stage2 code generator only understands this one-item-per-line format.
! (This format is also produced by SymPy.)
!
! This file contains essentially additional, user-defined stage1 functions
! and subroutines.
!
! These routines implement H, ∂H/∂B, σ, and ∂σ/∂ε in terms of partial derivatives
! of the potential ϕ. These are needed in the material model for Elmer's
! MagnetoStriction.f90. An adaptor is needed to fit the interface, because
! we cannot here control the ordering of the formal parameter list produced
! by stage2 for the public API.

! To introduce dependencies on other stage1 functions (e.g. the ones automatically
! generated from the mathematical model), the formal parameter name must **exactly**
! match the name of the function that is the target of the dependency.
!
! Any parameters whose names do not match any stage1 function are assumed to be
! free parameters, intended to be supplied by the user of the public API.
!
! Free parameters will be automatically propagated to the public API, also when
! a dependency on another stage1 function introduces a new free parameter
! anywhere in the call chain.
!
! Subroutines are only allowed in the top layer of the cake. No function may
! depend on a subroutine, because the stage2 code generator currently does not
! know how to handle that case.

! The routines here mostly just pack the data into an array of the right shape.
!
! ("Mostly": the routines H() and dH_dB() also account for the minus sign
!  in the definition.)
!
! The purpose is twofold: separation of concerns (modularize this packing step),
! and the explicit declaration of dependencies on the stage1 functions, so that
! stage2 can generate the code to retrieve the data to be packed.
!
! Because all the dependencies for the components of the same tensor appear
! in the parameters of the same function (or subroutine), stage2 will automatically
! avoid duplicating calculations of any dependent quantities in the corresponding,
! generated public API function. (E.g. the invariant I4 is computed only once,
! even if it is needed by several components of the same tensor.)

! H = -∂ϕ/∂B
subroutine H(dphi_dBx, dphi_dBy, dphi_dBz,
             H_out)
implicit none
REAL*8, intent(in) :: dphi_dBx
REAL*8, intent(in) :: dphi_dBy
REAL*8, intent(in) :: dphi_dBz
REAL*8, intent(out), dimension(1:3, 1:1) :: H_out

H_out(1, 1) = -dphi_dBx
H_out(2, 1) = -dphi_dBy
H_out(3, 1) = -dphi_dBz

end subroutine

subroutine dH_dB(d2phi_dBx2, d2phi_dBy2, d2phi_dBz2,
                 d2phi_dBxdBy, d2phi_dBxdBz, d2phi_dBydBz,
                 dH_dB_out)
implicit none
REAL*8, intent(in) :: d2phi_dBx2
REAL*8, intent(in) :: d2phi_dBy2
REAL*8, intent(in) :: d2phi_dBz2
REAL*8, intent(in) :: d2phi_dBxdBy
REAL*8, intent(in) :: d2phi_dBxdBz
REAL*8, intent(in) :: d2phi_dBydBz
REAL*8, intent(out), dimension(1:3, 1:3) :: dH_dB_out

dH_dB_out(1, 1) = -d2phi_dBx2
dH_dB_out(1, 2) = -d2phi_dBxdBy
dH_dB_out(1, 3) = -d2phi_dBxdBz
dH_dB_out(2, 1) = -d2phi_dBxdBy ! symm.
dH_dB_out(2, 2) = -d2phi_dBy2
dH_dB_out(2, 3) = -d2phi_dBydBz
dH_dB_out(3, 1) = -d2phi_dBxdBz ! symm.
dH_dB_out(3, 2) = -d2phi_dBydBz ! symm.
dH_dB_out(3, 3) = -d2phi_dBz2

end subroutine

! σ = +∂ϕ/∂ε
subroutine S(dphi_depsxx, dphi_depsyy, dphi_depszz,
             dphi_depsyz, dphi_depszx, dphi_depsxy,
             S_out)
implicit none
REAL*8, intent(in) :: dphi_depsxx
REAL*8, intent(in) :: dphi_depsyy
REAL*8, intent(in) :: dphi_depszz
REAL*8, intent(in) :: dphi_depsyz
REAL*8, intent(in) :: dphi_depszx
REAL*8, intent(in) :: dphi_depsxy
REAL*8, intent(out), dimension(1:3, 1:3) :: S_out

S_out(1, 1) = dphi_depsxx
S_out(1, 2) = dphi_depsxy
S_out(1, 3) = dphi_depszx
S_out(2, 1) = dphi_depsxy ! symm.
S_out(2, 2) = dphi_depsyy
S_out(2, 3) = dphi_depsyz
S_out(3, 1) = dphi_depszx ! symm.
S_out(3, 2) = dphi_depsyz ! symm.
S_out(3, 3) = dphi_depszz

end subroutine

subroutine dS_deps(d2phi_depsxx2, d2phi_depsyy2, d2phi_depszz2,
                   d2phi_depsyz2, d2phi_depszx2, d2phi_depsxy2,
                   d2phi_depsxxdepsxy, d2phi_depsxxdepsyy,
                   d2phi_depsxxdepsyz, d2phi_depsxxdepszx,
                   d2phi_depsxxdepszz,
                   d2phi_depsxydepsyy, d2phi_depsxydepsyz,
                   d2phi_depsxydepszx, d2phi_depsxydepszz,
                   d2phi_depsyydepsyz, d2phi_depsyydepszx,
                   d2phi_depsyydepszz,
                   d2phi_depsyzdepszx, d2phi_depsyzdepszz,
                   d2phi_depszxdepszz,
                   dS_deps_out)
implicit none
REAL*8, intent(in) :: d2phi_depsxx2
REAL*8, intent(in) :: d2phi_depsyy2
REAL*8, intent(in) :: d2phi_depszz2
REAL*8, intent(in) :: d2phi_depsyz2
REAL*8, intent(in) :: d2phi_depszx2
REAL*8, intent(in) :: d2phi_depsxy2
REAL*8, intent(in) :: d2phi_depsxxdepsxy
REAL*8, intent(in) :: d2phi_depsxxdepsyy
REAL*8, intent(in) :: d2phi_depsxxdepsyz
REAL*8, intent(in) :: d2phi_depsxxdepszx
REAL*8, intent(in) :: d2phi_depsxxdepszz
REAL*8, intent(in) :: d2phi_depsxydepsyy
REAL*8, intent(in) :: d2phi_depsxydepsyz
REAL*8, intent(in) :: d2phi_depsxydepszx
REAL*8, intent(in) :: d2phi_depsxydepszz
REAL*8, intent(in) :: d2phi_depsyydepsyz
REAL*8, intent(in) :: d2phi_depsyydepszx
REAL*8, intent(in) :: d2phi_depsyydepszz
REAL*8, intent(in) :: d2phi_depsyzdepszx
REAL*8, intent(in) :: d2phi_depsyzdepszz
REAL*8, intent(in) :: d2phi_depszxdepszz
REAL*8, intent(out), dimension(1:9, 1:9) :: dS_deps_out

! rank-4 tensor packed into rank-2 array
!
! Definition in index notation:
!   (∂σ/∂ε)_{ijkl} = ∂(σ_{ij}/∂(ε_{kl})
!
! where i, j, k and l = 1,2,3 (each independently)
!
! Then pack ij (and respectively kl):
!   11 -> 1, 12 -> 2, 13 -> 3
!   21 -> 4, 22 -> 5, 23 -> 6
!   31 -> 7, 32 -> 8, 33 -> 9
!
! TODO: confirm Elmer's packing convention with Juhani

integer, parameter i11 = 1
integer, parameter i12 = 2
integer, parameter i13 = 3
integer, parameter i21 = 4
integer, parameter i22 = 5
integer, parameter i23 = 6
integer, parameter i31 = 7
integer, parameter i32 = 8
integer, parameter i33 = 9

dS_deps_out(i11, i11) = d2phi_depsxx2
dS_deps_out(i11, i12) = d2phi_depsxxdepsxy
dS_deps_out(i11, i13) = d2phi_depsxxdepszx
dS_deps_out(i11, i21) = d2phi_depsxxdepsxy ! symm.
dS_deps_out(i11, i22) = d2phi_depsxxdepsyy
dS_deps_out(i11, i23) = d2phi_depsxxdepsyz
dS_deps_out(i11, i31) = d2phi_depsxxdepszx ! symm.
dS_deps_out(i11, i32) = d2phi_depsxxdepsyz ! symm.
dS_deps_out(i11, i33) = d2phi_depsxxdepszz

dS_deps_out(i12, i11) = d2phi_depsxxdepsxy ! symm.
dS_deps_out(i12, i12) = d2phi_depsxy2
dS_deps_out(i12, i13) = d2phi_depsxydepszx
dS_deps_out(i12, i21) = d2phi_depsxy2      ! symm.
dS_deps_out(i12, i22) = d2phi_depsxydepsyy
dS_deps_out(i12, i23) = d2phi_depsxydepsyz
dS_deps_out(i12, i31) = d2phi_depsxydepszx ! symm.
dS_deps_out(i12, i32) = d2phi_depsxydepsyz ! symm.
dS_deps_out(i12, i33) = d2phi_depsxydepszz

dS_deps_out(i13, i11) = d2phi_depsxxdepszx ! symm.
dS_deps_out(i13, i12) = d2phi_depsxydepszx ! symm.
dS_deps_out(i13, i13) = d2phi_depszx2
dS_deps_out(i13, i21) = d2phi_depsxydepszx ! symm.
dS_deps_out(i13, i22) = d2phi_depsyydepszx
dS_deps_out(i13, i23) = d2phi_depsyzdepszx
dS_deps_out(i13, i31) = d2phi_depszx2      ! symm.
dS_deps_out(i13, i32) = d2phi_depsyzdepszx ! symm.
dS_deps_out(i13, i33) = d2phi_depszxdepszz

dS_deps_out(i21, i11) = d2phi_depsxxdepsxy ! symm.
dS_deps_out(i21, i12) = d2phi_depsxy2      ! symm.
dS_deps_out(i21, i13) = d2phi_depsxydepszx ! symm.
dS_deps_out(i21, i21) = d2phi_depsxy2      ! symm.
dS_deps_out(i21, i22) = d2phi_depsxydepsyy ! symm.
dS_deps_out(i21, i23) = d2phi_depsxydepsyz ! symm.
dS_deps_out(i21, i31) = d2phi_depsxydepszx ! symm.
dS_deps_out(i21, i32) = d2phi_depsxydepsyz ! symm.
dS_deps_out(i21, i33) = d2phi_depsxydepszz ! symm.

dS_deps_out(i22, i11) = d2phi_depsxxdepsyy ! symm.
dS_deps_out(i22, i12) = d2phi_depsxydepsyy ! symm.
dS_deps_out(i22, i13) = d2phi_depsyydepszx ! symm.
dS_deps_out(i22, i21) = d2phi_depsxydepsyy ! symm.
dS_deps_out(i22, i22) = d2phi_depsyy2
dS_deps_out(i22, i23) = d2phi_depsyydepsyz
dS_deps_out(i22, i31) = d2phi_depsyydepszx ! symm.
dS_deps_out(i22, i32) = d2phi_depsyydepsyz ! symm.
dS_deps_out(i22, i33) = d2phi_depsyydepszz

dS_deps_out(i23, i11) = d2phi_depsxxdepsyz ! symm.
dS_deps_out(i23, i12) = d2phi_depsxydepsyz ! symm.
dS_deps_out(i23, i13) = d2phi_depsyzdepszx ! symm.
dS_deps_out(i23, i21) = d2phi_depsxydepsyz ! symm.
dS_deps_out(i23, i22) = d2phi_depsyydepsyz ! symm.
dS_deps_out(i23, i23) = d2phi_depsyz2
dS_deps_out(i23, i31) = d2phi_depsyzdepszx ! symm.
dS_deps_out(i23, i32) = d2phi_depsyz2      ! symm.
dS_deps_out(i23, i33) = d2phi_depsyzdepszz

dS_deps_out(i31, i11) = d2phi_depsxxdepszx ! symm.
dS_deps_out(i31, i12) = d2phi_depsxydepszx ! symm.
dS_deps_out(i31, i13) = d2phi_depszx2      ! symm.
dS_deps_out(i31, i21) = d2phi_depsxydepszx ! symm.
dS_deps_out(i31, i22) = d2phi_depsyydepszx ! symm.
dS_deps_out(i31, i23) = d2phi_depsyzdepszx ! symm.
dS_deps_out(i31, i31) = d2phi_depszx2      ! symm.
dS_deps_out(i31, i32) = d2phi_depsyzdepszx ! symm.
dS_deps_out(i31, i33) = d2phi_depszxdepszz ! symm.

dS_deps_out(i32, i11) = d2phi_depsxxdepsyz ! symm.
dS_deps_out(i32, i12) = d2phi_depsxydepsyz ! symm.
dS_deps_out(i32, i13) = d2phi_depsyzdepszx ! symm.
dS_deps_out(i32, i21) = d2phi_depsxydepsyz ! symm.
dS_deps_out(i32, i22) = d2phi_depsyydepsyz ! symm.
dS_deps_out(i32, i23) = d2phi_depsyz2      ! symm.
dS_deps_out(i32, i31) = d2phi_depsyzdepszx ! symm.
dS_deps_out(i32, i32) = d2phi_depsyz2      ! symm.
dS_deps_out(i32, i33) = d2phi_depsyzdepszz ! symm.

dS_deps_out(i33, i11) = d2phi_depsxxdepszz ! symm.
dS_deps_out(i33, i12) = d2phi_depsxydepszz ! symm.
dS_deps_out(i33, i13) = d2phi_depszxdepszz ! symm.
dS_deps_out(i33, i21) = d2phi_depsxydepszz ! symm.
dS_deps_out(i33, i22) = d2phi_depsyydepszz ! symm.
dS_deps_out(i33, i23) = d2phi_depsyzdepszz ! symm.
dS_deps_out(i33, i31) = d2phi_depszxdepszz ! symm.
dS_deps_out(i33, i32) = d2phi_depsyzdepszz ! symm.
dS_deps_out(i33, i33) = d2phi_depszz2

end subroutine

