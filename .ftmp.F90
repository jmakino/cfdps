# 1 "../../../src/fdps/fdps//src/fortran_interface/modules/FDPS_super_particle.F90"
# 1 "<組み込み>"
# 1 "<コマンドライン>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<コマンドライン>" 2
# 1 "../../../src/fdps/fdps//src/fortran_interface/modules/FDPS_super_particle.F90"
!==================================
! MODULE: FDPS super particle
!==================================
module fdps_super_particle
   use, intrinsic :: iso_c_binding
   use fdps_vector
   use fdps_matrix
   implicit none
# 67 "../../../src/fdps/fdps//src/fortran_interface/modules/FDPS_super_particle.F90"
   !**** PS::SPJMonopole
   type, public, bind(c) :: fdps_spj_monopole
      real(kind=c_double) :: mass
      type(fdps_f64vec) :: pos
   end type fdps_spj_monopole

   !**** PS::SPJQuadrupole
   type, public, bind(c) :: fdps_spj_quadrupole
      real(kind=c_double) :: mass
      type(fdps_f64vec) :: pos
      type(fdps_f64mat) :: quad
   end type fdps_spj_quadrupole

   !**** PS::SPJMonopoleGeometricCenter
   type, public, bind(c) :: fdps_spj_monopole_geomcen
      integer(kind=c_long_long) :: n_ptcl
      real(kind=c_double) :: charge
      type(fdps_f64vec) :: pos
   end type fdps_spj_monopole_geomcen

   !**** PS::SPJDipoleGeometricCenter
   type, public, bind(c) :: fdps_spj_dipole_geomcen
      integer(kind=c_long_long) :: n_ptcl
      real(kind=c_double) :: charge
      type(fdps_f64vec) :: pos
      type(fdps_f64vec) :: dipole
   end type fdps_spj_dipole_geomcen

   !**** PS::SPJQuadrupoleGeometricCenter
   type, public, bind(c) :: fdps_spj_quadrupole_geomcen
      integer(kind=c_long_long) :: n_ptcl
      real(kind=c_double) :: charge
      type(fdps_f64vec) :: pos
      type(fdps_f64vec) :: dipole
      type(fdps_f64mat) :: quadrupole
   end type fdps_spj_quadrupole_geomcen

   !**** PS::SPJMonopoleScatter
   type, public, bind(c) :: fdps_spj_monopole_scatter
      real(kind=c_double) :: mass
      type(fdps_f64vec) :: pos
   end type fdps_spj_monopole_scatter

   !**** PS::SPJQuadrupoleScatter
   type, public, bind(c) :: fdps_spj_quadrupole_scatter
      real(kind=c_double) :: mass
      type(fdps_f64vec) :: pos
      type(fdps_f64mat) :: quad
   end type fdps_spj_quadrupole_scatter

   !**** PS::SPJMonopoleCutoff
   type, public, bind(c) :: fdps_spj_monopole_cutoff
      real(kind=c_double) :: mass
      type(fdps_f64vec) :: pos
   end type fdps_spj_monopole_cutoff


   ! [TODO]
   ! PS::SPJMonopolePeriodic
   ! PS::SPJMonopoleCutoffScatter

end module fdps_super_particle
