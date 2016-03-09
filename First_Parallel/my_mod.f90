MODULE my_mod

CONTAINS

SUBROUTINE hamming_distance(x, y, d)
IMPLICIT NONE
INTEGER, ALLOCATABLE, DIMENSION(:) :: x, y !binary sequences
INTEGER :: d, i

DO i = 1, SIZE(x)
  
  IF(x(i) .NE. y(i)) THEN
    d = d + 1
  END IF


END DO

END SUBROUTINE hamming_distance


SUBROUTINE find_PSL(x, psl)
IMPLICIT NONE
INTEGER, ALLOCATABLE, DIMENSION(:) :: x, PSL_x
INTEGER :: psl, N, i, j

N = SIZE(x)
ALLOCATE(PSL_x(N-1))

PSL_x(1:N-1) = 0

DO j = 1, N-1
  
  DO i = 1, N-j
    
    PSL_x(j) = PSL_x(j) + x(i)*x(i+j)

  END DO

  PSL_x(j) = ABS(PSL_x(j))

END DO

psl = MAXVAL(PSL_x)

DEALLOCATE(PSL_x)

END SUBROUTINE find_PSL



END MODULE my_mod

