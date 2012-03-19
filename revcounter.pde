#include <LCD4Bit_mod.h> 
//create object to control an LCD.  
//number of lines in display=1
LCD4Bit_mod lcd = LCD4Bit_mod(2); 


volatile byte NbTopsFan;
int hallsensor = 2;

void rpm()
{
 NbTopsFan++;
}


/***************************************/
void setup()
{
   attachInterrupt(0, rpm, RISING);
};

void loop ()
{
   NbTopsFan = 0;
   
   delay (1000);
   NbTopsFan = NbTopsFan * 30;
   lcd.print( NbTopsFan );
};
