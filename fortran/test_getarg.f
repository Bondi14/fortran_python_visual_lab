program test_getarg
  integer :: i
  character(len=32) :: arg

  do i = 1, iargc()
    call getarg(i, arg)
    write (*,*) arg
  end do
end program
