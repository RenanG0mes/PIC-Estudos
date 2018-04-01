
int control = 0xFF;

void main() 
{
     TRISB = 0;
     PORTB = 0xFF;
     
     while(1)
     {
             PORTB = control;
             delay_ms(300);

             control = control << 1;

             if (control == 0)
             {
             control = 0xFF;
             }
    
    
     }
}