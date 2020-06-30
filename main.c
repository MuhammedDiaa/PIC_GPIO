#include <stdio.h>
#include <stdlib.h>
#include "GPIO.h"
#include <pic16f877a.h>

unsigned int  __at(0x2007) CONFIG = _HS_OSC & _WDT_OFF & _PWRTE_ON & _BODEN_OFF & _LVP_OFF & _CPD_OFF & _WRT_OFF & _DEBUG_OFF & _CP_OFF;

int main()
{
    GPIO_Init_Port(PORT_B , OUT ) ;
    GPIO_Set_Port(PORT_B , 0b00000111);
    while(1)
    {

        if(GPIO_Get_Port(PORT_B) == 0b00000111)
        {
            GPIO_Set_Port(PORT_B , 0b00001100);
        }
    }

    return 0;
}
