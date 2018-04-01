
_main:

;Aula007.c,4 :: 		void main()
;Aula007.c,6 :: 		TRISB = 0;
	CLRF       TRISB+0
;Aula007.c,7 :: 		PORTB = 0xFF;
	MOVLW      255
	MOVWF      PORTB+0
;Aula007.c,9 :: 		while(1)
L_main0:
;Aula007.c,11 :: 		PORTB = control;
	MOVF       _control+0, 0
	MOVWF      PORTB+0
;Aula007.c,12 :: 		delay_ms(300);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      134
	MOVWF      R12+0
	MOVLW      153
	MOVWF      R13+0
L_main2:
	DECFSZ     R13+0, 1
	GOTO       L_main2
	DECFSZ     R12+0, 1
	GOTO       L_main2
	DECFSZ     R11+0, 1
	GOTO       L_main2
;Aula007.c,14 :: 		control = control << 1;
	MOVF       _control+0, 0
	MOVWF      R1+0
	MOVF       _control+1, 0
	MOVWF      R1+1
	RLF        R1+0, 1
	RLF        R1+1, 1
	BCF        R1+0, 0
	MOVF       R1+0, 0
	MOVWF      _control+0
	MOVF       R1+1, 0
	MOVWF      _control+1
;Aula007.c,16 :: 		if (control == 0)
	MOVLW      0
	XORWF      R1+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main5
	MOVLW      0
	XORWF      R1+0, 0
L__main5:
	BTFSS      STATUS+0, 2
	GOTO       L_main3
;Aula007.c,18 :: 		control = 0xFF;
	MOVLW      255
	MOVWF      _control+0
	CLRF       _control+1
;Aula007.c,19 :: 		}
L_main3:
;Aula007.c,22 :: 		}
	GOTO       L_main0
;Aula007.c,23 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
