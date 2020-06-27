#ifndef GPIO_H_INCLUDED
#define GPIO_H_INCLUDED

typedef enum {
    PORT_A ,
    PORT_B ,
    PORT_C ,
    PORT_D ,
    PORT_E
}tPort ;


typedef enum {
    IN = 1 ,
    OUT = 0
}tPortDir ;



/*to initialize the port with specific direction*/
void GPIO_Init_Port_pin(tPort Port , unsigned char pin , tPortDir direction );
void GPIO_Init_Port(tPort Port , tPortDir direction );

/*to set the pins of the port with certain values*/
void GPIO_Set_Port_pin(tPort Port , unsigned char pin , unsigned char data);
void GPIO_Set_Port(tPort Port , unsigned char data);

/*to get the data on the port or the pin*/
unsigned char GPIO_Get_Port_Pin(tPort Port , unsigned char pin );
unsigned char GPIO_Get_Port(tPort Port);





#endif // GPIO_H_INCLUDED
