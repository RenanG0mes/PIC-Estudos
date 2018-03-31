#line 1 "C:/Users/renan/Desktop/PIC/Programas/Aula001/Aula001.c"


void main()
{
 TRISB = 0b00000000;
 PORTB = 0b00000000;

 while(1)
 {
 RB1_bit = 1;
 delay_ms(1000);
 RB1_bit = 0;
 delay_ms(1000);

 }

}
