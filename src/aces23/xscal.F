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
      subroutine xscal(n,da,dx,incx)
      implicit none
      double precision da,dx(*)
#ifdef ACES64
      integer*8 n, incx
#else
      integer n, incx
#endif

      integer i,p,nincx

      if (n.le.0 .or. incx.le.0 .or. da.eq.1.d0) return

         do i = 1, n
            dx(i) = da*dx(i)
         end do

      return
c     end subroutine xscal
      end

      subroutine dscal(n,da,dx,incx)
      implicit none
      double precision da,dx(*)
#ifdef ACES64
      integer*8 n, incx
#else
      integer n, incx
#endif

      integer i,p,nincx

      if (n.le.0 .or. incx.le.0 .or. da.eq.1.d0) return

         do i = 1, n
            dx(i) = da*dx(i)
         end do

      return
c     end subroutine dscal
      end

