;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Jun 20 2015) (MINGW32)
; This file was generated Mon Jun 29 18:28:45 2020
;--------------------------------------------------------
	.module GPIO
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _GPIO_Set_Port_pin_PARM_3
	.globl _GPIO_Set_Port_pin_PARM_2
	.globl _GPIO_Init_Port_pin_PARM_3
	.globl _GPIO_Init_Port_pin_PARM_2
	.globl _GPIO_Init_Port_pin
	.globl _GPIO_Set_Port_pin
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
LGPIO.GPIO_Init_Port_pin$pin$1$7==.
_GPIO_Init_Port_pin_PARM_2:
	.ds 1
LGPIO.GPIO_Init_Port_pin$direction$1$7==.
_GPIO_Init_Port_pin_PARM_3:
	.ds 1
	.area	OSEG    (OVR,DATA)
LGPIO.GPIO_Set_Port_pin$pin$1$9==.
_GPIO_Set_Port_pin_PARM_2:
	.ds 1
LGPIO.GPIO_Set_Port_pin$data$1$9==.
_GPIO_Set_Port_pin_PARM_3:
	.ds 1
;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'GPIO_Init_Port_pin'
;------------------------------------------------------------
;pin                       Allocated with name '_GPIO_Init_Port_pin_PARM_2'
;direction                 Allocated with name '_GPIO_Init_Port_pin_PARM_3'
;Port                      Allocated to registers r7 
;------------------------------------------------------------
	G$GPIO_Init_Port_pin$0$0 ==.
	C$GPIO.c$5$0$0 ==.
;	GPIO.c:5: void GPIO_Init_Port_pin(tPort Port , unsigned char pin , tPortDir direction )
;	-----------------------------------------
;	 function GPIO_Init_Port_pin
;	-----------------------------------------
_GPIO_Init_Port_pin:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	r7,dpl
	C$GPIO.c$7$1$8 ==.
;	GPIO.c:7: REG_SET_BIT(Port + Direction_REG_OFFSIT ,pin , direction);
	clr	a
	mov	r6,a
	mov	r5,a
	mov	a,#0x80
	add	a,r7
	mov	r7,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	lcall	__gptrget
	mov	r4,a
	mov	b,_GPIO_Init_Port_pin_PARM_2
	inc	b
	mov	a,#0x01
	sjmp	00105$
00103$:
	add	a,acc
00105$:
	djnz	b,00103$
	cpl	a
	mov	r3,a
	anl	ar4,a
	mov	b,_GPIO_Init_Port_pin_PARM_2
	inc	b
	mov	a,_GPIO_Init_Port_pin_PARM_3
	sjmp	00108$
00106$:
	add	a,acc
00108$:
	djnz	b,00106$
	orl	ar4,a
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	mov	a,r4
	lcall	__gptrput
	C$GPIO.c$8$1$8 ==.
	XG$GPIO_Init_Port_pin$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'GPIO_Set_Port_pin'
;------------------------------------------------------------
;pin                       Allocated with name '_GPIO_Set_Port_pin_PARM_2'
;data                      Allocated with name '_GPIO_Set_Port_pin_PARM_3'
;Port                      Allocated to registers r7 
;------------------------------------------------------------
	G$GPIO_Set_Port_pin$0$0 ==.
	C$GPIO.c$10$1$8 ==.
;	GPIO.c:10: void GPIO_Set_Port_pin(tPort Port , unsigned char pin , unsigned char data)
;	-----------------------------------------
;	 function GPIO_Set_Port_pin
;	-----------------------------------------
_GPIO_Set_Port_pin:
	mov	r7,dpl
	C$GPIO.c$12$1$10 ==.
;	GPIO.c:12: REG_SET_BIT(Port , pin ,data);
	mov	r6,#0x00
	mov	r5,#0x00
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	lcall	__gptrget
	mov	r4,a
	mov	b,_GPIO_Set_Port_pin_PARM_2
	inc	b
	mov	a,#0x01
	sjmp	00105$
00103$:
	add	a,acc
00105$:
	djnz	b,00103$
	cpl	a
	mov	r3,a
	anl	ar4,a
	mov	b,_GPIO_Set_Port_pin_PARM_2
	inc	b
	mov	a,_GPIO_Set_Port_pin_PARM_3
	sjmp	00108$
00106$:
	add	a,acc
00108$:
	djnz	b,00106$
	orl	ar4,a
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	mov	a,r4
	lcall	__gptrput
	C$GPIO.c$14$1$10 ==.
	XG$GPIO_Set_Port_pin$0$0 ==.
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
