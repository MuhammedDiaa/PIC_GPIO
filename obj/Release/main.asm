;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Jun 20 2015) (MINGW32)
; This file was generated Tue Jun 30 16:56:50 2020
;--------------------------------------------------------
; PIC port for the 14-bit core
;--------------------------------------------------------
;	.file	"main.c"
	list	p=16f877a
	radix dec
	include "p16f877a.inc"
;--------------------------------------------------------
; config word(s)
;--------------------------------------------------------
	__config 0x3f32
;--------------------------------------------------------
; external declarations
;--------------------------------------------------------
	extern	__print_format
	extern	_printf_small
	extern	_printf
	extern	_vprintf
	extern	_sprintf
	extern	_vsprintf
	extern	_puts
	extern	_gets
	extern	_getchar
	extern	_putchar
	extern	_calloc
	extern	_malloc
	extern	_realloc
	extern	_free
	extern	_abs
	extern	_labs
	extern	_atof
	extern	_atoi
	extern	_atol
	extern	__uitoa
	extern	__itoa
	extern	__ultoa
	extern	__ltoa
	extern	_rand
	extern	_srand
	extern	_GPIO_Init_Port_pin
	extern	_GPIO_Init_Port
	extern	_GPIO_Set_Port_pin
	extern	_GPIO_Set_Port
	extern	_GPIO_Get_Port_Pin
	extern	_GPIO_Get_Port
	extern	_STATUSbits
	extern	_PORTAbits
	extern	_PORTBbits
	extern	_PORTCbits
	extern	_PORTDbits
	extern	_PORTEbits
	extern	_INTCONbits
	extern	_PIR1bits
	extern	_PIR2bits
	extern	_T1CONbits
	extern	_T2CONbits
	extern	_SSPCONbits
	extern	_CCP1CONbits
	extern	_RCSTAbits
	extern	_CCP2CONbits
	extern	_ADCON0bits
	extern	_OPTION_REGbits
	extern	_TRISAbits
	extern	_TRISBbits
	extern	_TRISCbits
	extern	_TRISDbits
	extern	_TRISEbits
	extern	_PIE1bits
	extern	_PIE2bits
	extern	_PCONbits
	extern	_SSPCON2bits
	extern	_SSPSTATbits
	extern	_TXSTAbits
	extern	_CMCONbits
	extern	_CVRCONbits
	extern	_ADCON1bits
	extern	_EECON1bits
	extern	_INDF
	extern	_TMR0
	extern	_PCL
	extern	_STATUS
	extern	_FSR
	extern	_PORTA
	extern	_PORTB
	extern	_PORTC
	extern	_PORTD
	extern	_PORTE
	extern	_PCLATH
	extern	_INTCON
	extern	_PIR1
	extern	_PIR2
	extern	_TMR1
	extern	_TMR1L
	extern	_TMR1H
	extern	_T1CON
	extern	_TMR2
	extern	_T2CON
	extern	_SSPBUF
	extern	_SSPCON
	extern	_CCPR1
	extern	_CCPR1L
	extern	_CCPR1H
	extern	_CCP1CON
	extern	_RCSTA
	extern	_TXREG
	extern	_RCREG
	extern	_CCPR2
	extern	_CCPR2L
	extern	_CCPR2H
	extern	_CCP2CON
	extern	_ADRESH
	extern	_ADCON0
	extern	_OPTION_REG
	extern	_TRISA
	extern	_TRISB
	extern	_TRISC
	extern	_TRISD
	extern	_TRISE
	extern	_PIE1
	extern	_PIE2
	extern	_PCON
	extern	_SSPCON2
	extern	_PR2
	extern	_SSPADD
	extern	_SSPSTAT
	extern	_TXSTA
	extern	_SPBRG
	extern	_CMCON
	extern	_CVRCON
	extern	_ADRESL
	extern	_ADCON1
	extern	_EEDATA
	extern	_EEADR
	extern	_EEDATH
	extern	_EEADRH
	extern	_EECON1
	extern	_EECON2
	extern	__sdcc_gsinit_startup
;--------------------------------------------------------
; global declarations
;--------------------------------------------------------
	global	_main

	global PSAVE
	global SSAVE
	global WSAVE
	global STK12
	global STK11
	global STK10
	global STK09
	global STK08
	global STK07
	global STK06
	global STK05
	global STK04
	global STK03
	global STK02
	global STK01
	global STK00

sharebank udata_ovr 0x0070
PSAVE	res 1
SSAVE	res 1
WSAVE	res 1
STK12	res 1
STK11	res 1
STK10	res 1
STK09	res 1
STK08	res 1
STK07	res 1
STK06	res 1
STK05	res 1
STK04	res 1
STK03	res 1
STK02	res 1
STK01	res 1
STK00	res 1

;--------------------------------------------------------
; global definitions
;--------------------------------------------------------
;--------------------------------------------------------
; absolute symbol definitions
;--------------------------------------------------------
;--------------------------------------------------------
; compiler-defined variables
;--------------------------------------------------------
;--------------------------------------------------------
; initialized data
;--------------------------------------------------------
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
;	udata_ovr
;--------------------------------------------------------
; reset vector 
;--------------------------------------------------------
STARTUP	code 0x0000
	nop
	pagesel __sdcc_gsinit_startup
	goto	__sdcc_gsinit_startup
;--------------------------------------------------------
; code
;--------------------------------------------------------
code_main	code
;***
;  pBlock Stats: dbName = M
;***
;entry:  _main	;Function start
; 2 exit points
;has an exit
;functions called:
;   _GPIO_Init_Port
;   _GPIO_Set_Port
;   _GPIO_Get_Port
;   _GPIO_Set_Port
;   _GPIO_Init_Port
;   _GPIO_Set_Port
;   _GPIO_Get_Port
;   _GPIO_Set_Port
;2 compiler assigned registers:
;   STK00
;   r0x1000
;; Starting pCode block
_main	;Function start
; 2 exit points
;	.line	10; "main.c"	GPIO_Init_Port(PORT_B , OUT ) ;
	MOVLW	0x00
	MOVWF	STK00
	MOVLW	0x06
	PAGESEL	_GPIO_Init_Port
	CALL	_GPIO_Init_Port
	PAGESEL	$
;	.line	11; "main.c"	GPIO_Set_Port(PORT_B , 0b00000111);
	MOVLW	0x07
	MOVWF	STK00
	MOVLW	0x06
	PAGESEL	_GPIO_Set_Port
	CALL	_GPIO_Set_Port
	PAGESEL	$
_00108_DS_
;	.line	15; "main.c"	if(GPIO_Get_Port(PORT_B) == 0b00000111)
	MOVLW	0x06
	PAGESEL	_GPIO_Get_Port
	CALL	_GPIO_Get_Port
	PAGESEL	$
;;1	MOVWF	r0x1000
	XORLW	0x07
	BTFSS	STATUS,2
	GOTO	_00108_DS_
;	.line	17; "main.c"	GPIO_Set_Port(PORT_B , 0b00001100);
	MOVLW	0x0c
	MOVWF	STK00
	MOVLW	0x06
	PAGESEL	_GPIO_Set_Port
	CALL	_GPIO_Set_Port
	PAGESEL	$
	GOTO	_00108_DS_
;	.line	21; "main.c"	return 0;
	RETURN	
; exit point of _main


;	code size estimation:
;	   19+    8 =    27 instructions (   70 byte)

	end
