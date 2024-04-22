                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ISO C Compiler 
                                      3 ; Version 4.4.0 #14620 (MINGW32)
                                      4 ;--------------------------------------------------------
                                      5 	.module unipolar
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _main
                                     12 	.globl _ex1_isr
                                     13 	.globl _CY
                                     14 	.globl _AC
                                     15 	.globl _F0
                                     16 	.globl _RS1
                                     17 	.globl _RS0
                                     18 	.globl _OV
                                     19 	.globl _F1
                                     20 	.globl _P
                                     21 	.globl _PS
                                     22 	.globl _PT1
                                     23 	.globl _PX1
                                     24 	.globl _PT0
                                     25 	.globl _PX0
                                     26 	.globl _RD
                                     27 	.globl _WR
                                     28 	.globl _T1
                                     29 	.globl _T0
                                     30 	.globl _INT1
                                     31 	.globl _INT0
                                     32 	.globl _TXD
                                     33 	.globl _RXD
                                     34 	.globl _P3_7
                                     35 	.globl _P3_6
                                     36 	.globl _P3_5
                                     37 	.globl _P3_4
                                     38 	.globl _P3_3
                                     39 	.globl _P3_2
                                     40 	.globl _P3_1
                                     41 	.globl _P3_0
                                     42 	.globl _EA
                                     43 	.globl _ES
                                     44 	.globl _ET1
                                     45 	.globl _EX1
                                     46 	.globl _ET0
                                     47 	.globl _EX0
                                     48 	.globl _P2_7
                                     49 	.globl _P2_6
                                     50 	.globl _P2_5
                                     51 	.globl _P2_4
                                     52 	.globl _P2_3
                                     53 	.globl _P2_2
                                     54 	.globl _P2_1
                                     55 	.globl _P2_0
                                     56 	.globl _SM0
                                     57 	.globl _SM1
                                     58 	.globl _SM2
                                     59 	.globl _REN
                                     60 	.globl _TB8
                                     61 	.globl _RB8
                                     62 	.globl _TI
                                     63 	.globl _RI
                                     64 	.globl _P1_7
                                     65 	.globl _P1_6
                                     66 	.globl _P1_5
                                     67 	.globl _P1_4
                                     68 	.globl _P1_3
                                     69 	.globl _P1_2
                                     70 	.globl _P1_1
                                     71 	.globl _P1_0
                                     72 	.globl _TF1
                                     73 	.globl _TR1
                                     74 	.globl _TF0
                                     75 	.globl _TR0
                                     76 	.globl _IE1
                                     77 	.globl _IT1
                                     78 	.globl _IE0
                                     79 	.globl _IT0
                                     80 	.globl _P0_7
                                     81 	.globl _P0_6
                                     82 	.globl _P0_5
                                     83 	.globl _P0_4
                                     84 	.globl _P0_3
                                     85 	.globl _P0_2
                                     86 	.globl _P0_1
                                     87 	.globl _P0_0
                                     88 	.globl _B
                                     89 	.globl _ACC
                                     90 	.globl _PSW
                                     91 	.globl _IP
                                     92 	.globl _P3
                                     93 	.globl _IE
                                     94 	.globl _P2
                                     95 	.globl _SBUF
                                     96 	.globl _SCON
                                     97 	.globl _P1
                                     98 	.globl _TH1
                                     99 	.globl _TH0
                                    100 	.globl _TL1
                                    101 	.globl _TL0
                                    102 	.globl _TMOD
                                    103 	.globl _TCON
                                    104 	.globl _PCON
                                    105 	.globl _DPH
                                    106 	.globl _DPL
                                    107 	.globl _SP
                                    108 	.globl _P0
                                    109 	.globl _StepCount
                                    110 	.globl _direction
                                    111 ;--------------------------------------------------------
                                    112 ; special function registers
                                    113 ;--------------------------------------------------------
                                    114 	.area RSEG    (ABS,DATA)
      000000                        115 	.org 0x0000
                           000080   116 _P0	=	0x0080
                           000081   117 _SP	=	0x0081
                           000082   118 _DPL	=	0x0082
                           000083   119 _DPH	=	0x0083
                           000087   120 _PCON	=	0x0087
                           000088   121 _TCON	=	0x0088
                           000089   122 _TMOD	=	0x0089
                           00008A   123 _TL0	=	0x008a
                           00008B   124 _TL1	=	0x008b
                           00008C   125 _TH0	=	0x008c
                           00008D   126 _TH1	=	0x008d
                           000090   127 _P1	=	0x0090
                           000098   128 _SCON	=	0x0098
                           000099   129 _SBUF	=	0x0099
                           0000A0   130 _P2	=	0x00a0
                           0000A8   131 _IE	=	0x00a8
                           0000B0   132 _P3	=	0x00b0
                           0000B8   133 _IP	=	0x00b8
                           0000D0   134 _PSW	=	0x00d0
                           0000E0   135 _ACC	=	0x00e0
                           0000F0   136 _B	=	0x00f0
                                    137 ;--------------------------------------------------------
                                    138 ; special function bits
                                    139 ;--------------------------------------------------------
                                    140 	.area RSEG    (ABS,DATA)
      000000                        141 	.org 0x0000
                           000080   142 _P0_0	=	0x0080
                           000081   143 _P0_1	=	0x0081
                           000082   144 _P0_2	=	0x0082
                           000083   145 _P0_3	=	0x0083
                           000084   146 _P0_4	=	0x0084
                           000085   147 _P0_5	=	0x0085
                           000086   148 _P0_6	=	0x0086
                           000087   149 _P0_7	=	0x0087
                           000088   150 _IT0	=	0x0088
                           000089   151 _IE0	=	0x0089
                           00008A   152 _IT1	=	0x008a
                           00008B   153 _IE1	=	0x008b
                           00008C   154 _TR0	=	0x008c
                           00008D   155 _TF0	=	0x008d
                           00008E   156 _TR1	=	0x008e
                           00008F   157 _TF1	=	0x008f
                           000090   158 _P1_0	=	0x0090
                           000091   159 _P1_1	=	0x0091
                           000092   160 _P1_2	=	0x0092
                           000093   161 _P1_3	=	0x0093
                           000094   162 _P1_4	=	0x0094
                           000095   163 _P1_5	=	0x0095
                           000096   164 _P1_6	=	0x0096
                           000097   165 _P1_7	=	0x0097
                           000098   166 _RI	=	0x0098
                           000099   167 _TI	=	0x0099
                           00009A   168 _RB8	=	0x009a
                           00009B   169 _TB8	=	0x009b
                           00009C   170 _REN	=	0x009c
                           00009D   171 _SM2	=	0x009d
                           00009E   172 _SM1	=	0x009e
                           00009F   173 _SM0	=	0x009f
                           0000A0   174 _P2_0	=	0x00a0
                           0000A1   175 _P2_1	=	0x00a1
                           0000A2   176 _P2_2	=	0x00a2
                           0000A3   177 _P2_3	=	0x00a3
                           0000A4   178 _P2_4	=	0x00a4
                           0000A5   179 _P2_5	=	0x00a5
                           0000A6   180 _P2_6	=	0x00a6
                           0000A7   181 _P2_7	=	0x00a7
                           0000A8   182 _EX0	=	0x00a8
                           0000A9   183 _ET0	=	0x00a9
                           0000AA   184 _EX1	=	0x00aa
                           0000AB   185 _ET1	=	0x00ab
                           0000AC   186 _ES	=	0x00ac
                           0000AF   187 _EA	=	0x00af
                           0000B0   188 _P3_0	=	0x00b0
                           0000B1   189 _P3_1	=	0x00b1
                           0000B2   190 _P3_2	=	0x00b2
                           0000B3   191 _P3_3	=	0x00b3
                           0000B4   192 _P3_4	=	0x00b4
                           0000B5   193 _P3_5	=	0x00b5
                           0000B6   194 _P3_6	=	0x00b6
                           0000B7   195 _P3_7	=	0x00b7
                           0000B0   196 _RXD	=	0x00b0
                           0000B1   197 _TXD	=	0x00b1
                           0000B2   198 _INT0	=	0x00b2
                           0000B3   199 _INT1	=	0x00b3
                           0000B4   200 _T0	=	0x00b4
                           0000B5   201 _T1	=	0x00b5
                           0000B6   202 _WR	=	0x00b6
                           0000B7   203 _RD	=	0x00b7
                           0000B8   204 _PX0	=	0x00b8
                           0000B9   205 _PT0	=	0x00b9
                           0000BA   206 _PX1	=	0x00ba
                           0000BB   207 _PT1	=	0x00bb
                           0000BC   208 _PS	=	0x00bc
                           0000D0   209 _P	=	0x00d0
                           0000D1   210 _F1	=	0x00d1
                           0000D2   211 _OV	=	0x00d2
                           0000D3   212 _RS0	=	0x00d3
                           0000D4   213 _RS1	=	0x00d4
                           0000D5   214 _F0	=	0x00d5
                           0000D6   215 _AC	=	0x00d6
                           0000D7   216 _CY	=	0x00d7
                                    217 ;--------------------------------------------------------
                                    218 ; overlayable register banks
                                    219 ;--------------------------------------------------------
                                    220 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        221 	.ds 8
                                    222 ;--------------------------------------------------------
                                    223 ; internal ram data
                                    224 ;--------------------------------------------------------
                                    225 	.area DSEG    (DATA)
      000008                        226 _direction::
      000008                        227 	.ds 1
      000009                        228 _StepCount::
      000009                        229 	.ds 1
                                    230 ;--------------------------------------------------------
                                    231 ; overlayable items in internal ram
                                    232 ;--------------------------------------------------------
                                    233 ;--------------------------------------------------------
                                    234 ; Stack segment in internal ram
                                    235 ;--------------------------------------------------------
                                    236 	.area SSEG
      00000A                        237 __start__stack:
      00000A                        238 	.ds	1
                                    239 
                                    240 ;--------------------------------------------------------
                                    241 ; indirectly addressable internal ram data
                                    242 ;--------------------------------------------------------
                                    243 	.area ISEG    (DATA)
                                    244 ;--------------------------------------------------------
                                    245 ; absolute internal ram data
                                    246 ;--------------------------------------------------------
                                    247 	.area IABS    (ABS,DATA)
                                    248 	.area IABS    (ABS,DATA)
                                    249 ;--------------------------------------------------------
                                    250 ; bit data
                                    251 ;--------------------------------------------------------
                                    252 	.area BSEG    (BIT)
                                    253 ;--------------------------------------------------------
                                    254 ; paged external ram data
                                    255 ;--------------------------------------------------------
                                    256 	.area PSEG    (PAG,XDATA)
                                    257 ;--------------------------------------------------------
                                    258 ; uninitialized external ram data
                                    259 ;--------------------------------------------------------
                                    260 	.area XSEG    (XDATA)
                                    261 ;--------------------------------------------------------
                                    262 ; absolute external ram data
                                    263 ;--------------------------------------------------------
                                    264 	.area XABS    (ABS,XDATA)
                                    265 ;--------------------------------------------------------
                                    266 ; initialized external ram data
                                    267 ;--------------------------------------------------------
                                    268 	.area XISEG   (XDATA)
                                    269 	.area HOME    (CODE)
                                    270 	.area GSINIT0 (CODE)
                                    271 	.area GSINIT1 (CODE)
                                    272 	.area GSINIT2 (CODE)
                                    273 	.area GSINIT3 (CODE)
                                    274 	.area GSINIT4 (CODE)
                                    275 	.area GSINIT5 (CODE)
                                    276 	.area GSINIT  (CODE)
                                    277 	.area GSFINAL (CODE)
                                    278 	.area CSEG    (CODE)
                                    279 ;--------------------------------------------------------
                                    280 ; interrupt vector
                                    281 ;--------------------------------------------------------
                                    282 	.area HOME    (CODE)
      000000                        283 __interrupt_vect:
      000000 02 00 19         [24]  284 	ljmp	__sdcc_gsinit_startup
      000003 32               [24]  285 	reti
      000004                        286 	.ds	7
      00000B 32               [24]  287 	reti
      00000C                        288 	.ds	7
      000013 02 00 7B         [24]  289 	ljmp	_ex1_isr
                                    290 ;--------------------------------------------------------
                                    291 ; global & static initialisations
                                    292 ;--------------------------------------------------------
                                    293 	.area HOME    (CODE)
                                    294 	.area GSINIT  (CODE)
                                    295 	.area GSFINAL (CODE)
                                    296 	.area GSINIT  (CODE)
                                    297 	.globl __sdcc_gsinit_startup
                                    298 	.globl __sdcc_program_startup
                                    299 	.globl __start__stack
                                    300 	.globl __mcs51_genXINIT
                                    301 	.globl __mcs51_genXRAMCLEAR
                                    302 	.globl __mcs51_genRAMCLEAR
                                    303 ;	F:\nithy_files\all\sdcc\unipolar\unipolar.c:9: volatile unsigned char direction = 0;         // Direction of rotation (0: counterclockwise, 1: clockwise)
      000072 75 08 00         [24]  304 	mov	_direction,#0x00
                                    305 ;	F:\nithy_files\all\sdcc\unipolar\unipolar.c:10: volatile unsigned char StepCount = 1;        // Step counter variable
      000075 75 09 01         [24]  306 	mov	_StepCount,#0x01
                                    307 	.area GSFINAL (CODE)
      000078 02 00 16         [24]  308 	ljmp	__sdcc_program_startup
                                    309 ;--------------------------------------------------------
                                    310 ; Home
                                    311 ;--------------------------------------------------------
                                    312 	.area HOME    (CODE)
                                    313 	.area HOME    (CODE)
      000016                        314 __sdcc_program_startup:
      000016 02 00 AB         [24]  315 	ljmp	_main
                                    316 ;	return from main will return to caller
                                    317 ;--------------------------------------------------------
                                    318 ; code
                                    319 ;--------------------------------------------------------
                                    320 	.area CSEG    (CODE)
                                    321 ;------------------------------------------------------------
                                    322 ;Allocation info for local variables in function 'ex1_isr'
                                    323 ;------------------------------------------------------------
                                    324 ;	F:\nithy_files\all\sdcc\unipolar\unipolar.c:13: void ex1_isr(void) __interrupt(2) {
                                    325 ;	-----------------------------------------
                                    326 ;	 function ex1_isr
                                    327 ;	-----------------------------------------
      00007B                        328 _ex1_isr:
                           000007   329 	ar7 = 0x07
                           000006   330 	ar6 = 0x06
                           000005   331 	ar5 = 0x05
                           000004   332 	ar4 = 0x04
                           000003   333 	ar3 = 0x03
                           000002   334 	ar2 = 0x02
                           000001   335 	ar1 = 0x01
                           000000   336 	ar0 = 0x00
      00007B C0 E0            [24]  337 	push	acc
      00007D C0 D0            [24]  338 	push	psw
                                    339 ;	F:\nithy_files\all\sdcc\unipolar\unipolar.c:15: if (!StepPin) {
      00007F 20 B3 24         [24]  340 	jb	_P3_3,00111$
                                    341 ;	F:\nithy_files\all\sdcc\unipolar\unipolar.c:17: if (direction) {
      000082 E5 08            [12]  342 	mov	a,_direction
      000084 60 07            [24]  343 	jz	00102$
                                    344 ;	F:\nithy_files\all\sdcc\unipolar\unipolar.c:18: StepCount++;  // Clockwise rotation
      000086 E5 09            [12]  345 	mov	a,_StepCount
      000088 04               [12]  346 	inc	a
      000089 F5 09            [12]  347 	mov	_StepCount,a
      00008B 80 05            [24]  348 	sjmp	00103$
      00008D                        349 00102$:
                                    350 ;	F:\nithy_files\all\sdcc\unipolar\unipolar.c:20: StepCount--;  // Counterclockwise rotation
      00008D E5 09            [12]  351 	mov	a,_StepCount
      00008F 14               [12]  352 	dec	a
      000090 F5 09            [12]  353 	mov	_StepCount,a
      000092                        354 00103$:
                                    355 ;	F:\nithy_files\all\sdcc\unipolar\unipolar.c:24: if (StepCount > 8) {
      000092 E5 09            [12]  356 	mov	a,_StepCount
      000094 24 F7            [12]  357 	add	a,#0xff - 0x08
      000096 50 05            [24]  358 	jnc	00107$
                                    359 ;	F:\nithy_files\all\sdcc\unipolar\unipolar.c:25: StepCount = 1;  // Reset step count to 1
      000098 75 09 01         [24]  360 	mov	_StepCount,#0x01
      00009B 80 09            [24]  361 	sjmp	00111$
      00009D                        362 00107$:
                                    363 ;	F:\nithy_files\all\sdcc\unipolar\unipolar.c:26: } else if (StepCount < 1) {
      00009D 74 FF            [12]  364 	mov	a,#0x100 - 0x01
      00009F 25 09            [12]  365 	add	a,_StepCount
      0000A1 40 03            [24]  366 	jc	00111$
                                    367 ;	F:\nithy_files\all\sdcc\unipolar\unipolar.c:27: StepCount = 8;  // Reset step count to 8
      0000A3 75 09 08         [24]  368 	mov	_StepCount,#0x08
      0000A6                        369 00111$:
                                    370 ;	F:\nithy_files\all\sdcc\unipolar\unipolar.c:30: }
      0000A6 D0 D0            [24]  371 	pop	psw
      0000A8 D0 E0            [24]  372 	pop	acc
      0000AA 32               [24]  373 	reti
                                    374 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                    375 ;	eliminated unneeded push/pop dpl
                                    376 ;	eliminated unneeded push/pop dph
                                    377 ;	eliminated unneeded push/pop b
                                    378 ;------------------------------------------------------------
                                    379 ;Allocation info for local variables in function 'main'
                                    380 ;------------------------------------------------------------
                                    381 ;	F:\nithy_files\all\sdcc\unipolar\unipolar.c:32: void main(void) {
                                    382 ;	-----------------------------------------
                                    383 ;	 function main
                                    384 ;	-----------------------------------------
      0000AB                        385 _main:
                                    386 ;	F:\nithy_files\all\sdcc\unipolar\unipolar.c:34: DirPin = 1;      // Input mode for DIR (Direction)
                                    387 ;	assignBit
      0000AB D2 B4            [12]  388 	setb	_P3_4
                                    389 ;	F:\nithy_files\all\sdcc\unipolar\unipolar.c:35: EnablePin = 1;   // Input mode for ENABLE (Motor Enable)
                                    390 ;	assignBit
      0000AD D2 B5            [12]  391 	setb	_P3_5
                                    392 ;	F:\nithy_files\all\sdcc\unipolar\unipolar.c:36: StepPin = 1;     // Input mode for STEP (Step Pulse)
                                    393 ;	assignBit
      0000AF D2 B3            [12]  394 	setb	_P3_3
                                    395 ;	F:\nithy_files\all\sdcc\unipolar\unipolar.c:39: P1 = P1 | 0x0F;  // Set P1.0-P1.3 as outputs (0x0F = 0b00001111)
      0000B1 43 90 0F         [24]  396 	orl	_P1,#0x0f
                                    397 ;	F:\nithy_files\all\sdcc\unipolar\unipolar.c:41: EA = 1;          // Enable global interrupts
                                    398 ;	assignBit
      0000B4 D2 AF            [12]  399 	setb	_EA
                                    400 ;	F:\nithy_files\all\sdcc\unipolar\unipolar.c:42: EX1 = 1;         // Enable external interrupt 1 (INT1)
                                    401 ;	assignBit
      0000B6 D2 AA            [12]  402 	setb	_EX1
                                    403 ;	F:\nithy_files\all\sdcc\unipolar\unipolar.c:43: IT1 = 1;         // Trigger on falling edge for external interrupt 1
                                    404 ;	assignBit
      0000B8 D2 8A            [12]  405 	setb	_IT1
                                    406 ;	F:\nithy_files\all\sdcc\unipolar\unipolar.c:45: while (1) {
      0000BA                        407 00115$:
                                    408 ;	F:\nithy_files\all\sdcc\unipolar\unipolar.c:47: direction = DirPin;    // Update direction based on DIR pin state
      0000BA A2 B4            [12]  409 	mov	c,_P3_4
      0000BC E4               [12]  410 	clr	a
      0000BD 33               [12]  411 	rlc	a
      0000BE F5 08            [12]  412 	mov	_direction,a
                                    413 ;	F:\nithy_files\all\sdcc\unipolar\unipolar.c:50: if (!EnablePin) {
      0000C0 30 B5 03         [24]  414 	jnb	_P3_5,00137$
      0000C3 02 01 48         [24]  415 	ljmp	00112$
      0000C6                        416 00137$:
                                    417 ;	F:\nithy_files\all\sdcc\unipolar\unipolar.c:52: switch (StepCount) {
      0000C6 E5 09            [12]  418 	mov	a,_StepCount
      0000C8 FF               [12]  419 	mov	r7,a
      0000C9 24 F7            [12]  420 	add	a,#0xff - 0x08
      0000CB 40 75            [24]  421 	jc	00109$
      0000CD EF               [12]  422 	mov	a,r7
      0000CE F5 F0            [12]  423 	mov	b,a
      0000D0 24 0B            [12]  424 	add	a,#(00139$-3-.)
      0000D2 83               [24]  425 	movc	a,@a+pc
      0000D3 F5 82            [12]  426 	mov	dpl,a
      0000D5 E5 F0            [12]  427 	mov	a,b
      0000D7 24 0D            [12]  428 	add	a,#(00140$-3-.)
      0000D9 83               [24]  429 	movc	a,@a+pc
      0000DA F5 83            [12]  430 	mov	dph,a
      0000DC E4               [12]  431 	clr	a
      0000DD 73               [24]  432 	jmp	@a+dptr
      0000DE                        433 00139$:
      0000DE 42                     434 	.db	00109$
      0000DF F0                     435 	.db	00101$
      0000E0 FA                     436 	.db	00102$
      0000E1 04                     437 	.db	00103$
      0000E2 0E                     438 	.db	00104$
      0000E3 18                     439 	.db	00105$
      0000E4 22                     440 	.db	00106$
      0000E5 2C                     441 	.db	00107$
      0000E6 37                     442 	.db	00108$
      0000E7                        443 00140$:
      0000E7 01                     444 	.db	00109$>>8
      0000E8 00                     445 	.db	00101$>>8
      0000E9 00                     446 	.db	00102$>>8
      0000EA 01                     447 	.db	00103$>>8
      0000EB 01                     448 	.db	00104$>>8
      0000EC 01                     449 	.db	00105$>>8
      0000ED 01                     450 	.db	00106$>>8
      0000EE 01                     451 	.db	00107$>>8
      0000EF 01                     452 	.db	00108$>>8
                                    453 ;	F:\nithy_files\all\sdcc\unipolar\unipolar.c:53: case 1:
      0000F0                        454 00101$:
                                    455 ;	F:\nithy_files\all\sdcc\unipolar\unipolar.c:54: P1 = (P1 & 0xF0) | 0b00000001;  // Output pattern for Step 1 on P1.0
      0000F0 E5 90            [12]  456 	mov	a,_P1
      0000F2 54 F0            [12]  457 	anl	a,#0xf0
      0000F4 44 01            [12]  458 	orl	a,#0x01
      0000F6 F5 90            [12]  459 	mov	_P1,a
                                    460 ;	F:\nithy_files\all\sdcc\unipolar\unipolar.c:55: break;
                                    461 ;	F:\nithy_files\all\sdcc\unipolar\unipolar.c:56: case 2:
      0000F8 80 C0            [24]  462 	sjmp	00115$
      0000FA                        463 00102$:
                                    464 ;	F:\nithy_files\all\sdcc\unipolar\unipolar.c:57: P1 = (P1 & 0xF0) | 0b00000011;  // Output pattern for Step 2 on P1.0 and P1.1
      0000FA E5 90            [12]  465 	mov	a,_P1
      0000FC 54 F0            [12]  466 	anl	a,#0xf0
      0000FE 44 03            [12]  467 	orl	a,#0x03
      000100 F5 90            [12]  468 	mov	_P1,a
                                    469 ;	F:\nithy_files\all\sdcc\unipolar\unipolar.c:58: break;
                                    470 ;	F:\nithy_files\all\sdcc\unipolar\unipolar.c:59: case 3:
      000102 80 B6            [24]  471 	sjmp	00115$
      000104                        472 00103$:
                                    473 ;	F:\nithy_files\all\sdcc\unipolar\unipolar.c:60: P1 = (P1 & 0xF0) | 0b00000010;  // Output pattern for Step 3 on P1.1
      000104 E5 90            [12]  474 	mov	a,_P1
      000106 54 F0            [12]  475 	anl	a,#0xf0
      000108 44 02            [12]  476 	orl	a,#0x02
      00010A F5 90            [12]  477 	mov	_P1,a
                                    478 ;	F:\nithy_files\all\sdcc\unipolar\unipolar.c:61: break;
                                    479 ;	F:\nithy_files\all\sdcc\unipolar\unipolar.c:62: case 4:
      00010C 80 AC            [24]  480 	sjmp	00115$
      00010E                        481 00104$:
                                    482 ;	F:\nithy_files\all\sdcc\unipolar\unipolar.c:63: P1 = (P1 & 0xF0) | 0b00000110;  // Output pattern for Step 4 on P1.1 and P1.2
      00010E E5 90            [12]  483 	mov	a,_P1
      000110 54 F0            [12]  484 	anl	a,#0xf0
      000112 44 06            [12]  485 	orl	a,#0x06
      000114 F5 90            [12]  486 	mov	_P1,a
                                    487 ;	F:\nithy_files\all\sdcc\unipolar\unipolar.c:64: break;
                                    488 ;	F:\nithy_files\all\sdcc\unipolar\unipolar.c:65: case 5:
      000116 80 A2            [24]  489 	sjmp	00115$
      000118                        490 00105$:
                                    491 ;	F:\nithy_files\all\sdcc\unipolar\unipolar.c:66: P1 = (P1 & 0xF0) | 0b00000100;  // Output pattern for Step 5 on P1.2
      000118 E5 90            [12]  492 	mov	a,_P1
      00011A 54 F0            [12]  493 	anl	a,#0xf0
      00011C 44 04            [12]  494 	orl	a,#0x04
      00011E F5 90            [12]  495 	mov	_P1,a
                                    496 ;	F:\nithy_files\all\sdcc\unipolar\unipolar.c:67: break;
                                    497 ;	F:\nithy_files\all\sdcc\unipolar\unipolar.c:68: case 6:
      000120 80 98            [24]  498 	sjmp	00115$
      000122                        499 00106$:
                                    500 ;	F:\nithy_files\all\sdcc\unipolar\unipolar.c:69: P1 = (P1 & 0xF0) | 0b00001100;  // Output pattern for Step 6 on P1.2 and P1.3
      000122 E5 90            [12]  501 	mov	a,_P1
      000124 54 F0            [12]  502 	anl	a,#0xf0
      000126 44 0C            [12]  503 	orl	a,#0x0c
      000128 F5 90            [12]  504 	mov	_P1,a
                                    505 ;	F:\nithy_files\all\sdcc\unipolar\unipolar.c:70: break;
                                    506 ;	F:\nithy_files\all\sdcc\unipolar\unipolar.c:71: case 7:
      00012A 80 8E            [24]  507 	sjmp	00115$
      00012C                        508 00107$:
                                    509 ;	F:\nithy_files\all\sdcc\unipolar\unipolar.c:72: P1 = (P1 & 0xF0) | 0b00001000;  // Output pattern for Step 7 on P1.3
      00012C E5 90            [12]  510 	mov	a,_P1
      00012E 54 F0            [12]  511 	anl	a,#0xf0
      000130 44 08            [12]  512 	orl	a,#0x08
      000132 F5 90            [12]  513 	mov	_P1,a
                                    514 ;	F:\nithy_files\all\sdcc\unipolar\unipolar.c:73: break;
      000134 02 00 BA         [24]  515 	ljmp	00115$
                                    516 ;	F:\nithy_files\all\sdcc\unipolar\unipolar.c:74: case 8:
      000137                        517 00108$:
                                    518 ;	F:\nithy_files\all\sdcc\unipolar\unipolar.c:75: P1 = (P1 & 0xF0) | 0b00001001;  // Output pattern for Step 8 on P1.3 and P1.0
      000137 E5 90            [12]  519 	mov	a,_P1
      000139 54 F0            [12]  520 	anl	a,#0xf0
      00013B 44 09            [12]  521 	orl	a,#0x09
      00013D F5 90            [12]  522 	mov	_P1,a
                                    523 ;	F:\nithy_files\all\sdcc\unipolar\unipolar.c:76: break;
      00013F 02 00 BA         [24]  524 	ljmp	00115$
                                    525 ;	F:\nithy_files\all\sdcc\unipolar\unipolar.c:77: default:
      000142                        526 00109$:
                                    527 ;	F:\nithy_files\all\sdcc\unipolar\unipolar.c:78: P1 &= 0xF0;  // Turn off motor if StepCount is out of range
      000142 53 90 F0         [24]  528 	anl	_P1,#0xf0
                                    529 ;	F:\nithy_files\all\sdcc\unipolar\unipolar.c:80: }
      000145 02 00 BA         [24]  530 	ljmp	00115$
      000148                        531 00112$:
                                    532 ;	F:\nithy_files\all\sdcc\unipolar\unipolar.c:82: P1 &= 0xF0;  // Turn off motor if not enabled
      000148 53 90 F0         [24]  533 	anl	_P1,#0xf0
                                    534 ;	F:\nithy_files\all\sdcc\unipolar\unipolar.c:85: }
      00014B 02 00 BA         [24]  535 	ljmp	00115$
                                    536 	.area CSEG    (CODE)
                                    537 	.area CONST   (CODE)
                                    538 	.area XINIT   (CODE)
                                    539 	.area CABS    (ABS,CODE)
