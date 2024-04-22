;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (MINGW32)
;--------------------------------------------------------
	.module unipolar
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _ex1_isr
	.globl _CY
	.globl _AC
	.globl _F0
	.globl _RS1
	.globl _RS0
	.globl _OV
	.globl _F1
	.globl _P
	.globl _PS
	.globl _PT1
	.globl _PX1
	.globl _PT0
	.globl _PX0
	.globl _RD
	.globl _WR
	.globl _T1
	.globl _T0
	.globl _INT1
	.globl _INT0
	.globl _TXD
	.globl _RXD
	.globl _P3_7
	.globl _P3_6
	.globl _P3_5
	.globl _P3_4
	.globl _P3_3
	.globl _P3_2
	.globl _P3_1
	.globl _P3_0
	.globl _EA
	.globl _ES
	.globl _ET1
	.globl _EX1
	.globl _ET0
	.globl _EX0
	.globl _P2_7
	.globl _P2_6
	.globl _P2_5
	.globl _P2_4
	.globl _P2_3
	.globl _P2_2
	.globl _P2_1
	.globl _P2_0
	.globl _SM0
	.globl _SM1
	.globl _SM2
	.globl _REN
	.globl _TB8
	.globl _RB8
	.globl _TI
	.globl _RI
	.globl _P1_7
	.globl _P1_6
	.globl _P1_5
	.globl _P1_4
	.globl _P1_3
	.globl _P1_2
	.globl _P1_1
	.globl _P1_0
	.globl _TF1
	.globl _TR1
	.globl _TF0
	.globl _TR0
	.globl _IE1
	.globl _IT1
	.globl _IE0
	.globl _IT0
	.globl _P0_7
	.globl _P0_6
	.globl _P0_5
	.globl _P0_4
	.globl _P0_3
	.globl _P0_2
	.globl _P0_1
	.globl _P0_0
	.globl _B
	.globl _ACC
	.globl _PSW
	.globl _IP
	.globl _P3
	.globl _IE
	.globl _P2
	.globl _SBUF
	.globl _SCON
	.globl _P1
	.globl _TH1
	.globl _TH0
	.globl _TL1
	.globl _TL0
	.globl _TMOD
	.globl _TCON
	.globl _PCON
	.globl _DPH
	.globl _DPL
	.globl _SP
	.globl _P0
	.globl _StepCount
	.globl _direction
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0	=	0x0080
_SP	=	0x0081
_DPL	=	0x0082
_DPH	=	0x0083
_PCON	=	0x0087
_TCON	=	0x0088
_TMOD	=	0x0089
_TL0	=	0x008a
_TL1	=	0x008b
_TH0	=	0x008c
_TH1	=	0x008d
_P1	=	0x0090
_SCON	=	0x0098
_SBUF	=	0x0099
_P2	=	0x00a0
_IE	=	0x00a8
_P3	=	0x00b0
_IP	=	0x00b8
_PSW	=	0x00d0
_ACC	=	0x00e0
_B	=	0x00f0
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0_0	=	0x0080
_P0_1	=	0x0081
_P0_2	=	0x0082
_P0_3	=	0x0083
_P0_4	=	0x0084
_P0_5	=	0x0085
_P0_6	=	0x0086
_P0_7	=	0x0087
_IT0	=	0x0088
_IE0	=	0x0089
_IT1	=	0x008a
_IE1	=	0x008b
_TR0	=	0x008c
_TF0	=	0x008d
_TR1	=	0x008e
_TF1	=	0x008f
_P1_0	=	0x0090
_P1_1	=	0x0091
_P1_2	=	0x0092
_P1_3	=	0x0093
_P1_4	=	0x0094
_P1_5	=	0x0095
_P1_6	=	0x0096
_P1_7	=	0x0097
_RI	=	0x0098
_TI	=	0x0099
_RB8	=	0x009a
_TB8	=	0x009b
_REN	=	0x009c
_SM2	=	0x009d
_SM1	=	0x009e
_SM0	=	0x009f
_P2_0	=	0x00a0
_P2_1	=	0x00a1
_P2_2	=	0x00a2
_P2_3	=	0x00a3
_P2_4	=	0x00a4
_P2_5	=	0x00a5
_P2_6	=	0x00a6
_P2_7	=	0x00a7
_EX0	=	0x00a8
_ET0	=	0x00a9
_EX1	=	0x00aa
_ET1	=	0x00ab
_ES	=	0x00ac
_EA	=	0x00af
_P3_0	=	0x00b0
_P3_1	=	0x00b1
_P3_2	=	0x00b2
_P3_3	=	0x00b3
_P3_4	=	0x00b4
_P3_5	=	0x00b5
_P3_6	=	0x00b6
_P3_7	=	0x00b7
_RXD	=	0x00b0
_TXD	=	0x00b1
_INT0	=	0x00b2
_INT1	=	0x00b3
_T0	=	0x00b4
_T1	=	0x00b5
_WR	=	0x00b6
_RD	=	0x00b7
_PX0	=	0x00b8
_PT0	=	0x00b9
_PX1	=	0x00ba
_PT1	=	0x00bb
_PS	=	0x00bc
_P	=	0x00d0
_F1	=	0x00d1
_OV	=	0x00d2
_RS0	=	0x00d3
_RS1	=	0x00d4
_F0	=	0x00d5
_AC	=	0x00d6
_CY	=	0x00d7
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_direction::
	.ds 1
_StepCount::
	.ds 1
;--------------------------------------------------------
; overlayable items in internal ram
;--------------------------------------------------------
;--------------------------------------------------------
; Stack segment in internal ram
;--------------------------------------------------------
	.area SSEG
__start__stack:
	.ds	1

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
; uninitialized external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; initialized external ram data
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
; interrupt vector
;--------------------------------------------------------
	.area HOME    (CODE)
__interrupt_vect:
	ljmp	__sdcc_gsinit_startup
	reti
	.ds	7
	reti
	.ds	7
	ljmp	_ex1_isr
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
	.globl __sdcc_gsinit_startup
	.globl __sdcc_program_startup
	.globl __start__stack
	.globl __mcs51_genXINIT
	.globl __mcs51_genXRAMCLEAR
	.globl __mcs51_genRAMCLEAR
;	F:\nithy_files\all\sdcc\unipolar\unipolar.c:9: volatile unsigned char direction = 0;         // Direction of rotation (0: counterclockwise, 1: clockwise)
	mov	_direction,#0x00
;	F:\nithy_files\all\sdcc\unipolar\unipolar.c:10: volatile unsigned char StepCount = 1;        // Step counter variable
	mov	_StepCount,#0x01
	.area GSFINAL (CODE)
	ljmp	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
__sdcc_program_startup:
	ljmp	_main
;	return from main will return to caller
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'ex1_isr'
;------------------------------------------------------------
;	F:\nithy_files\all\sdcc\unipolar\unipolar.c:13: void ex1_isr(void) __interrupt(2) {
;	-----------------------------------------
;	 function ex1_isr
;	-----------------------------------------
_ex1_isr:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	push	acc
	push	psw
;	F:\nithy_files\all\sdcc\unipolar\unipolar.c:15: if (!StepPin) {
	jb	_P3_3,00111$
;	F:\nithy_files\all\sdcc\unipolar\unipolar.c:17: if (direction) {
	mov	a,_direction
	jz	00102$
;	F:\nithy_files\all\sdcc\unipolar\unipolar.c:18: StepCount++;  // Clockwise rotation
	mov	a,_StepCount
	inc	a
	mov	_StepCount,a
	sjmp	00103$
00102$:
;	F:\nithy_files\all\sdcc\unipolar\unipolar.c:20: StepCount--;  // Counterclockwise rotation
	mov	a,_StepCount
	dec	a
	mov	_StepCount,a
00103$:
;	F:\nithy_files\all\sdcc\unipolar\unipolar.c:24: if (StepCount > 8) {
	mov	a,_StepCount
	add	a,#0xff - 0x08
	jnc	00107$
;	F:\nithy_files\all\sdcc\unipolar\unipolar.c:25: StepCount = 1;  // Reset step count to 1
	mov	_StepCount,#0x01
	sjmp	00111$
00107$:
;	F:\nithy_files\all\sdcc\unipolar\unipolar.c:26: } else if (StepCount < 1) {
	mov	a,#0x100 - 0x01
	add	a,_StepCount
	jc	00111$
;	F:\nithy_files\all\sdcc\unipolar\unipolar.c:27: StepCount = 8;  // Reset step count to 8
	mov	_StepCount,#0x08
00111$:
;	F:\nithy_files\all\sdcc\unipolar\unipolar.c:30: }
	pop	psw
	pop	acc
	reti
;	eliminated unneeded mov psw,# (no regs used in bank)
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;	F:\nithy_files\all\sdcc\unipolar\unipolar.c:32: void main(void) {
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	F:\nithy_files\all\sdcc\unipolar\unipolar.c:34: DirPin = 1;      // Input mode for DIR (Direction)
;	assignBit
	setb	_P3_4
;	F:\nithy_files\all\sdcc\unipolar\unipolar.c:35: EnablePin = 1;   // Input mode for ENABLE (Motor Enable)
;	assignBit
	setb	_P3_5
;	F:\nithy_files\all\sdcc\unipolar\unipolar.c:36: StepPin = 1;     // Input mode for STEP (Step Pulse)
;	assignBit
	setb	_P3_3
;	F:\nithy_files\all\sdcc\unipolar\unipolar.c:39: P1 = P1 | 0x0F;  // Set P1.0-P1.3 as outputs (0x0F = 0b00001111)
	orl	_P1,#0x0f
;	F:\nithy_files\all\sdcc\unipolar\unipolar.c:41: EA = 1;          // Enable global interrupts
;	assignBit
	setb	_EA
;	F:\nithy_files\all\sdcc\unipolar\unipolar.c:42: EX1 = 1;         // Enable external interrupt 1 (INT1)
;	assignBit
	setb	_EX1
;	F:\nithy_files\all\sdcc\unipolar\unipolar.c:43: IT1 = 1;         // Trigger on falling edge for external interrupt 1
;	assignBit
	setb	_IT1
;	F:\nithy_files\all\sdcc\unipolar\unipolar.c:45: while (1) {
00115$:
;	F:\nithy_files\all\sdcc\unipolar\unipolar.c:47: direction = DirPin;    // Update direction based on DIR pin state
	mov	c,_P3_4
	clr	a
	rlc	a
	mov	_direction,a
;	F:\nithy_files\all\sdcc\unipolar\unipolar.c:50: if (!EnablePin) {
	jnb	_P3_5,00137$
	ljmp	00112$
00137$:
;	F:\nithy_files\all\sdcc\unipolar\unipolar.c:52: switch (StepCount) {
	mov	a,_StepCount
	mov	r7,a
	add	a,#0xff - 0x08
	jc	00109$
	mov	a,r7
	mov	b,a
	add	a,#(00139$-3-.)
	movc	a,@a+pc
	mov	dpl,a
	mov	a,b
	add	a,#(00140$-3-.)
	movc	a,@a+pc
	mov	dph,a
	clr	a
	jmp	@a+dptr
00139$:
	.db	00109$
	.db	00101$
	.db	00102$
	.db	00103$
	.db	00104$
	.db	00105$
	.db	00106$
	.db	00107$
	.db	00108$
00140$:
	.db	00109$>>8
	.db	00101$>>8
	.db	00102$>>8
	.db	00103$>>8
	.db	00104$>>8
	.db	00105$>>8
	.db	00106$>>8
	.db	00107$>>8
	.db	00108$>>8
;	F:\nithy_files\all\sdcc\unipolar\unipolar.c:53: case 1:
00101$:
;	F:\nithy_files\all\sdcc\unipolar\unipolar.c:54: P1 = (P1 & 0xF0) | 0b00000001;  // Output pattern for Step 1 on P1.0
	mov	a,_P1
	anl	a,#0xf0
	orl	a,#0x01
	mov	_P1,a
;	F:\nithy_files\all\sdcc\unipolar\unipolar.c:55: break;
;	F:\nithy_files\all\sdcc\unipolar\unipolar.c:56: case 2:
	sjmp	00115$
00102$:
;	F:\nithy_files\all\sdcc\unipolar\unipolar.c:57: P1 = (P1 & 0xF0) | 0b00000011;  // Output pattern for Step 2 on P1.0 and P1.1
	mov	a,_P1
	anl	a,#0xf0
	orl	a,#0x03
	mov	_P1,a
;	F:\nithy_files\all\sdcc\unipolar\unipolar.c:58: break;
;	F:\nithy_files\all\sdcc\unipolar\unipolar.c:59: case 3:
	sjmp	00115$
00103$:
;	F:\nithy_files\all\sdcc\unipolar\unipolar.c:60: P1 = (P1 & 0xF0) | 0b00000010;  // Output pattern for Step 3 on P1.1
	mov	a,_P1
	anl	a,#0xf0
	orl	a,#0x02
	mov	_P1,a
;	F:\nithy_files\all\sdcc\unipolar\unipolar.c:61: break;
;	F:\nithy_files\all\sdcc\unipolar\unipolar.c:62: case 4:
	sjmp	00115$
00104$:
;	F:\nithy_files\all\sdcc\unipolar\unipolar.c:63: P1 = (P1 & 0xF0) | 0b00000110;  // Output pattern for Step 4 on P1.1 and P1.2
	mov	a,_P1
	anl	a,#0xf0
	orl	a,#0x06
	mov	_P1,a
;	F:\nithy_files\all\sdcc\unipolar\unipolar.c:64: break;
;	F:\nithy_files\all\sdcc\unipolar\unipolar.c:65: case 5:
	sjmp	00115$
00105$:
;	F:\nithy_files\all\sdcc\unipolar\unipolar.c:66: P1 = (P1 & 0xF0) | 0b00000100;  // Output pattern for Step 5 on P1.2
	mov	a,_P1
	anl	a,#0xf0
	orl	a,#0x04
	mov	_P1,a
;	F:\nithy_files\all\sdcc\unipolar\unipolar.c:67: break;
;	F:\nithy_files\all\sdcc\unipolar\unipolar.c:68: case 6:
	sjmp	00115$
00106$:
;	F:\nithy_files\all\sdcc\unipolar\unipolar.c:69: P1 = (P1 & 0xF0) | 0b00001100;  // Output pattern for Step 6 on P1.2 and P1.3
	mov	a,_P1
	anl	a,#0xf0
	orl	a,#0x0c
	mov	_P1,a
;	F:\nithy_files\all\sdcc\unipolar\unipolar.c:70: break;
;	F:\nithy_files\all\sdcc\unipolar\unipolar.c:71: case 7:
	sjmp	00115$
00107$:
;	F:\nithy_files\all\sdcc\unipolar\unipolar.c:72: P1 = (P1 & 0xF0) | 0b00001000;  // Output pattern for Step 7 on P1.3
	mov	a,_P1
	anl	a,#0xf0
	orl	a,#0x08
	mov	_P1,a
;	F:\nithy_files\all\sdcc\unipolar\unipolar.c:73: break;
	ljmp	00115$
;	F:\nithy_files\all\sdcc\unipolar\unipolar.c:74: case 8:
00108$:
;	F:\nithy_files\all\sdcc\unipolar\unipolar.c:75: P1 = (P1 & 0xF0) | 0b00001001;  // Output pattern for Step 8 on P1.3 and P1.0
	mov	a,_P1
	anl	a,#0xf0
	orl	a,#0x09
	mov	_P1,a
;	F:\nithy_files\all\sdcc\unipolar\unipolar.c:76: break;
	ljmp	00115$
;	F:\nithy_files\all\sdcc\unipolar\unipolar.c:77: default:
00109$:
;	F:\nithy_files\all\sdcc\unipolar\unipolar.c:78: P1 &= 0xF0;  // Turn off motor if StepCount is out of range
	anl	_P1,#0xf0
;	F:\nithy_files\all\sdcc\unipolar\unipolar.c:80: }
	ljmp	00115$
00112$:
;	F:\nithy_files\all\sdcc\unipolar\unipolar.c:82: P1 &= 0xF0;  // Turn off motor if not enabled
	anl	_P1,#0xf0
;	F:\nithy_files\all\sdcc\unipolar\unipolar.c:85: }
	ljmp	00115$
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
