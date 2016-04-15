! Abstract Data Type example with un-contained methods
! kgh03@fsu.edu

! todo, figure out how to get the methods inside the TYPE declaration
! so they can have their own namespace. 

MODULE adt
  !-- like a c struct.
  implicit none
  TYPE , public :: adtstruct
     INTEGER :: x,y
     REAL, allocatable :: a(:,:)
  END TYPE adtstruct
  
contains
  !--  methods for module adt.
  FUNCTION  adtinit(x,y) result (this)
    !-- allocate a to the dimensions of x,y and returns a struct
    !   kgh: 'this' should be a pointer to an adtstruct in the parameter list
    !        not sure if we are leaking a few bytes here
    integer :: x,y
    type(adtstruct) :: this
    allocate (this%a(x,y))
    this%x=x
    this%y=y
  END FUNCTION adtinit

  
  SUBROUTINE adtdump( this)
    !--  prints out the array
    type(adtstruct):: this
    write (*,*) this%a(:,:)
  END SUBROUTINE adtdump

END MODULE adt
