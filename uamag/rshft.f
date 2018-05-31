C RSHFT.FOR
      CHARACTER*(*) FUNCTION RSHFT(ARRAY)
C
C  PROGRAM TO RIGHT-JUSTIFY A CHARACTER VARIABLE
C
C  ARRAY - A CHARACTER VARIABLE
      CHARACTER*(*) ARRAY
      CHARACTER*132 TEMP
C
C  GET LENGTH OF ARRAY
C
      N = LEN(ARRAY)
      RSHFT = ARRAY
      IF (N .EQ. 0) RETURN
C
C  FIND THE POSITION OF THE FIRST NON-BLANK CHARACTER FROM THE RIGHT
C
      DO 10 I = 1, N
        J1 = N -I + 1
        IF (ARRAY(J1:J1) .NE. ' ') GO TO 20
   10 CONTINUE
C
C  ALL CHARACTERS ARE BLANK, SO RETURN
C
      RETURN
C
C  SHIFT CHARACTERS TO RIGHT
C
   20 IF (J1 .EQ. N) RETURN
      TEMP(1:J1) = RSHFT(1:J1)
      RSHFT(N-J1+1:N) = TEMP(1:J1)
      RSHFT(1:N-J1) = ' '
      RETURN
      END
C END RSHFT