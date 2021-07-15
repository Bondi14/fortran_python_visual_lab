C program fortran_template.f
C This program computes something.
C
C Inputs :
C    Tw: sea surface temperature (C)
C    Ta: air temperature (C)
C    Va: wind speed (m/s)
C 
C Outputs:
C    output_variable1, etc.
C 
      character*10 arg1, arg2, arg3
C
C The next section takes the inputs that are passed via the html form,
C and converts characters to Reals.
      call getarg(1,arg1)
      read(arg1,*) Tw     
      call getarg(2,arg2)
      read(arg2,*)  Ta  
      call getarg(3,arg3)
      read(arg3,*) Va 
C
C Put the body of the Fortran program here:


      output_variable1 = Tw + Ta + Va


      print *,  output_variable1
C
C Example of output:
C
C Write results (including any html tags):
C     write(6,10) output_variable1
C  10 format(' <P> The output from this program is: ',F5.1,'<P>')
C
      end
