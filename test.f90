! Abstract Data Type Example module driver
! kgh03@fsu.edu

PROGRAM TEST
use adt

implicit none
integer :: c,x,y,z

!-- instanciate and initialize.
!   kgh: this doesn't feel right. we should be passing s as a pointer to
!   adtinit.
type(adtstruct)  :: s
s = adtinit(4,4)

! populate the array a within the boundries of x,y
c = 0
do y = 1,s%y ,1 
   do x = 1,s%x,1
      s%a(x,y)=c
      c=c+1
      !debugging output
      write (*,*) x,y, s%a(x,y)
  enddo
enddo

! run a trivial method
call adtdump(s) 

!todo write a destructor and call it.
END PROGRAM
