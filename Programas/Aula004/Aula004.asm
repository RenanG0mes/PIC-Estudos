
_main:

;Aula004.c,2 :: 		void main()
;Aula004.c,4 :: 		ANSEL = 0x00;      //Desliga portas analógicas
	CLRF       ANSEL+0
;Aula004.c,5 :: 		CMCON = 7;         //Desliga os comparadores
	MOVLW      7
	MOVWF      CMCON+0
;Aula004.c,8 :: 		TRISIO4_bit = 1;
	BSF        TRISIO4_bit+0, BitPos(TRISIO4_bit+0)
;Aula004.c,9 :: 		TRISIO5_bit = 0;
	BCF        TRISIO5_bit+0, BitPos(TRISIO5_bit+0)
;Aula004.c,11 :: 		GPIO = 0;
	CLRF       GPIO+0
;Aula004.c,13 :: 		while(1)
L_main0:
;Aula004.c,15 :: 		if(GPIO.F4 ==1)
	BTFSS      GPIO+0, 4
	GOTO       L_main2
;Aula004.c,17 :: 		GPIO.F5 = 1;
	BSF        GPIO+0, 5
;Aula004.c,18 :: 		delay_ms(2000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main3:
	DECFSZ     R13+0, 1
	GOTO       L_main3
	DECFSZ     R12+0, 1
	GOTO       L_main3
	DECFSZ     R11+0, 1
	GOTO       L_main3
	NOP
	NOP
;Aula004.c,19 :: 		}
	GOTO       L_main4
L_main2:
;Aula004.c,22 :: 		GPIO.F5 = 0;
	BCF        GPIO+0, 5
;Aula004.c,23 :: 		}
L_main4:
;Aula004.c,24 :: 		}
	GOTO       L_main0
;Aula004.c,25 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
