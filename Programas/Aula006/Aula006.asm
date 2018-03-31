
_main:

;Aula006.c,8 :: 		void main()
;Aula006.c,10 :: 		ANSEL = 0;
	CLRF       ANSEL+0
;Aula006.c,11 :: 		CMCON = 7;
	MOVLW      7
	MOVWF      CMCON+0
;Aula006.c,13 :: 		TRISIO0_bit = 1;
	BSF        TRISIO0_bit+0, BitPos(TRISIO0_bit+0)
;Aula006.c,14 :: 		TRISIO1_bit = 1;
	BSF        TRISIO1_bit+0, BitPos(TRISIO1_bit+0)
;Aula006.c,15 :: 		TRISIO4_bit = 0;
	BCF        TRISIO4_bit+0, BitPos(TRISIO4_bit+0)
;Aula006.c,16 :: 		TRISIO5_bit = 0;
	BCF        TRISIO5_bit+0, BitPos(TRISIO5_bit+0)
;Aula006.c,18 :: 		S1 = 1;
	BSF        GPIO+0, 0
;Aula006.c,19 :: 		S2 = 1;
	BSF        GPIO+0, 1
;Aula006.c,20 :: 		D1 = 0;
	BCF        GPIO+0, 4
;Aula006.c,21 :: 		D2 = 0;
	BCF        GPIO+0, 5
;Aula006.c,23 :: 		while(1)
L_main0:
;Aula006.c,25 :: 		if(S1 == 0)
	BTFSC      GPIO+0, 0
	GOTO       L_main2
;Aula006.c,27 :: 		D1 = ~D1;
	MOVLW      16
	XORWF      GPIO+0, 1
;Aula006.c,28 :: 		delay_ms(300);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      134
	MOVWF      R12+0
	MOVLW      153
	MOVWF      R13+0
L_main3:
	DECFSZ     R13+0, 1
	GOTO       L_main3
	DECFSZ     R12+0, 1
	GOTO       L_main3
	DECFSZ     R11+0, 1
	GOTO       L_main3
;Aula006.c,29 :: 		}
L_main2:
;Aula006.c,31 :: 		if(S2 == 0)
	BTFSC      GPIO+0, 1
	GOTO       L_main4
;Aula006.c,33 :: 		D2 = ~D2;
	MOVLW      32
	XORWF      GPIO+0, 1
;Aula006.c,34 :: 		delay_ms(300);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      134
	MOVWF      R12+0
	MOVLW      153
	MOVWF      R13+0
L_main5:
	DECFSZ     R13+0, 1
	GOTO       L_main5
	DECFSZ     R12+0, 1
	GOTO       L_main5
	DECFSZ     R11+0, 1
	GOTO       L_main5
;Aula006.c,35 :: 		}
L_main4:
;Aula006.c,37 :: 		}
	GOTO       L_main0
;Aula006.c,39 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
