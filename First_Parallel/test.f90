PROGRAM test
USE my_mod

IMPLICIT NONE
INTEGER, ALLOCATABLE, DIMENSION(:) :: x,y
INTEGER :: psl_x, psl_y, dist, N

N = 11

ALLOCATE(x(N), y(N))
x(1:N) = 1
y(1:N) = -1

CALL find_PSL(x, psl_x)
CALL find_PSL(y, psl_y)
CALL hamming_distance(x, y, dist)

WRITE(*,*) 'The hamming distance is', dist
WRITE(*,*) 'The PSL of x is', psl_x
WRITE(*,*) 'The PSL of y is', psl_y



DEALLOCATE(x,y)

END PROGRAM test
