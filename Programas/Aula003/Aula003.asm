
_main:

;Aula003.c,1 :: 		void main() {
;Aula003.c,3 :: 		ANSEL = 0;
	CLRF       ANSEL+0
;Aula003.c,4 :: 		CMCON = 7;
	MOVLW      7
	MOVWF      CMCON+0
;Aula003.c,5 :: 		TRISIO0_bit = 0;
	BCF        TRISIO0_bit+0, BitPos(TRISIO0_bit+0)
;Aula003.c,6 :: 		TRISIO1_bit = 0;
	BCF        TRISIO1_bit+0, BitPos(TRISIO1_bit+0)
;Aula003.c,8 :: 		GPIO = 0;
	CLRF       GPIO+0
;Aula003.c,10 :: 		while(1)
L_main0:
;Aula003.c,12 :: 		GPIO.F0 = 1;
	BSF        GPIO+0, 0
;Aula003.c,13 :: 		GPIO.F1 = 0;
	BCF        GPIO+0, 1
;Aula003.c,14 :: 		delay_ms(100);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_main2:
	DECFSZ     R13+0, 1
	GOTO       L_main2
	DECFSZ     R12+0, 1
	GOTO       L_main2
	NOP
	NOP
;Aula003.c,15 :: 		GPIO.F0 = 0;
	BCF        GPIO+0, 0
;Aula003.c,16 :: 		GPIO.F1 = 1;
	BSF        GPIO+0, 1
;Aula003.c,17 :: 		delay_ms(100);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_main3:
	DECFSZ     R13+0, 1
	GOTO       L_main3
	DECFSZ     R12+0, 1
	GOTO       L_main3
	NOP
	NOP
;Aula003.c,18 :: 		}
	GOTO       L_main0
;Aula003.c,20 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
