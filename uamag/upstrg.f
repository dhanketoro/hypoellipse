C UPSTRG.FOR
      CHARACTER*(*) FUNCTION UPSTRG(ARRAY)
C
C  PROGRAM TO CHANGE STRING TO UPPERCASE
C
C  ARRAY - A CHARACTER VARIABLE
      CHARACTER*(*) ARRAY
      INTEGER OFFSET
      DATA OFFSET/32/
C
C  GET LENGTH OF ARRAY
C
      LENSTR = LEN(ARRAY)
      UPSTRG = ARRAY
      IF (LENSTR .EQ. 0) RETURN
      DO 10 I=1,LENSTR
         IC = ICHAR(ARRAY(I:I))
         IF ((IC .LT. 97) .OR. (IC .GT. 122)) GO TO 10
         ARRAY(I:I) = CHAR(IC-OFFSET)
   10 CONTINUE
      UPSTRG = ARRAY
      RETURN
      END
C END UPSTRG
