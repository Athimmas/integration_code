module abortutils

  !use shr_sys_mod, only: endrun => shr_sys_abort
  use cam_logfile, only : iulog

  implicit none
  private
  save

  public :: endrun

  contains 
 
  !DIR$ ATTRIBUTES OFFLOAD : mic :: endrun 
  subroutine endrun(string,rc)
  IMPLICIT none

  character(*)        ,optional :: string  ! error message string
  integer(kind(1)),optional :: rc      ! error code

  write(iulog,*) "Fucking crap something went wrong man."
  end subroutine endrun

end module abortutils
