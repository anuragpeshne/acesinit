C  Copyright (c) 2003-2010 University of Florida
C
C  This program is free software; you can redistribute it and/or modify
C  it under the terms of the GNU General Public License as published by
C  the Free Software Foundation; either version 2 of the License, or
C  (at your option) any later version.

C  This program is distributed in the hope that it will be useful,
C  but WITHOUT ANY WARRANTY; without even the implied warranty of
C  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
C  GNU General Public License for more details.

C  The GNU General Public License is included in this distribution
C  in the file COPYRIGHT.
#ifdef ACES64
      integer*8 function idamax(n,dx,incx)
      integer*8 n, incx
#else
      integer function idamax(n,dx,incx)
      integer n, incx
#endif
      double precision dx(*)

      integer i, iii
      double precision x, xmx
   
      xmx = dabs(dx(1))
      iii = 1
      do i = 2, n
         x = dabs(dx(1+(i-1)*incx))
         if (x .gt.  xmx) then
            xmx = x
            iii = i
         endif
      enddo
      
      idamax = iii 
      return
      end


#ifdef ACES64
      integer*8 function isamax(n,dx,incx)
      integer*8 n, incx
#else
      integer function isamax(n,dx,incx)
      integer n, incx
#endif
      double precision dx(*)

      integer i, iii
      double precision x, xmx
   
      xmx = dabs(dx(1))
      iii = 1
      do i = 2, n
         x = dabs(dx(1+(i-1)*incx))
         if (x .gt.  xmx) then
            xmx = x
            iii = i
         endif
      enddo
      
      isamax = iii 
      return
      end


