#line 1 "C:/Users/renan/Desktop/PIC/Programas/Aula002/Aula002.c"
void main()
{

 TRISB = 0b00000000;
 PORTB = 0b00000000;

 while(1)
 {
 PORTB++;
 delay_ms(50);
 }

}
