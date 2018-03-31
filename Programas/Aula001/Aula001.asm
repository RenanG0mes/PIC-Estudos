
_main:

;Aula001.c,3 :: 		void main()
;Aula001.c,5 :: 		TRISB = 0b00000000;
	CLRF       TRISB+0
;Aula001.c,6 :: 		PORTB = 0b00000000;
	CLRF       PORTB+0
;Aula001.c,8 :: 		while(1)
L_main0:
;Aula001.c,10 :: 		RB1_bit = 1;
	BSF        RB1_bit+0, BitPos(RB1_bit+0)
;Aula001.c,11 :: 		delay_ms(1000);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main2:
	DECFSZ     R13+0, 1
	GOTO       L_main2
	DECFSZ     R12+0, 1
	GOTO       L_main2
	DECFSZ     R11+0, 1
	GOTO       L_main2
	NOP
	NOP
;Aula001.c,12 :: 		RB1_bit = 0;
	BCF        RB1_bit+0, BitPos(RB1_bit+0)
;Aula001.c,13 :: 		delay_ms(1000);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
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
;Aula001.c,15 :: 		}
	GOTO       L_main0
;Aula001.c,17 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
