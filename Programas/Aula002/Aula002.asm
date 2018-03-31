
_main:

;Aula002.c,1 :: 		void main()
;Aula002.c,4 :: 		TRISB = 0b00000000;
	CLRF       TRISB+0
;Aula002.c,5 :: 		PORTB = 0b00000000;
	CLRF       PORTB+0
;Aula002.c,7 :: 		while(1)
L_main0:
;Aula002.c,9 :: 		PORTB++;
	INCF       PORTB+0, 0
	MOVWF      R0+0
	MOVF       R0+0, 0
	MOVWF      PORTB+0
;Aula002.c,10 :: 		delay_ms(50);
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
;Aula002.c,11 :: 		}
	GOTO       L_main0
;Aula002.c,13 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
