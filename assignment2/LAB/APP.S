
APP.o:     file format elf32-littlearm


Disassembly of section .text:

00000000 <main>:
   0:	e92d4800 	push	{fp, lr}
   4:	e28db004 	add	fp, sp, #4
   8:	e59f0004 	ldr	r0, [pc, #4]	; 14 <main+0x14>
   c:	ebfffffe 	bl	0 <uart_send_string>
  10:	e8bd8800 	pop	{fp, pc}
  14:	00000000 	andeq	r0, r0, r0

Disassembly of section .data:

00000000 <string_buffer>:
   0:	6c6c6568 	cfstr64vs	mvdx6, [ip], #-416	; 0xfffffe60
   4:	6f77206f 	svcvs	0x0077206f
   8:	2064656c 	rsbcs	r6, r4, ip, ror #10
   c:	68207c7c 	stmdavs	r0!, {r2, r3, r4, r5, r6, sl, fp, ip, sp, lr}
  10:	6173736f 	cmnvs	r3, pc, ror #6
  14:	616d206d 	cmnvs	sp, sp, rrx
  18:	00796467 	rsbseq	r6, r9, r7, ror #8
	...

Disassembly of section .debug_abbrev:

00000000 <.debug_abbrev>:
   0:	25011101 	strcs	r1, [r1, #-257]	; 0x101
   4:	030b130e 	movweq	r1, #45838	; 0xb30e
   8:	110e1b0e 	tstne	lr, lr, lsl #22
   c:	10011201 	andne	r1, r1, r1, lsl #4
  10:	02000006 	andeq	r0, r0, #6
  14:	0c3f002e 	ldceq	0, cr0, [pc], #-184	; 0xffffff48
  18:	0b3a0e03 	bleq	e8382c <main+0xe8382c>
  1c:	0c270b3b 	stceq	11, cr0, [r7], #-236	; 0xffffff14
  20:	01120111 	tsteq	r2, r1, lsl r1
  24:	00000640 	andeq	r0, r0, r0, asr #12
  28:	49010103 	stmdbmi	r1, {r0, r1, r8}
  2c:	00130113 	andseq	r0, r3, r3, lsl r1
  30:	00210400 	eoreq	r0, r1, r0, lsl #8
  34:	0b2f1349 	bleq	bc4d60 <main+0xbc4d60>
  38:	24050000 	strcs	r0, [r5]
  3c:	3e0b0b00 	vmlacc.f64	d0, d11, d0
  40:	0600000b 	streq	r0, [r0], -fp
  44:	0b0b0024 	bleq	2c00dc <main+0x2c00dc>
  48:	0e030b3e 	vmoveq.16	d3[0], r0
  4c:	34070000 	strcc	r0, [r7]
  50:	3a0e0300 	bcc	380c58 <main+0x380c58>
  54:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
  58:	3c0c3f13 	stccc	15, cr3, [ip], {19}
  5c:	0800000c 	stmdaeq	r0, {r2, r3}
  60:	0e030034 	mcreq	0, 0, r0, cr3, cr4, {1}
  64:	0b3b0b3a 	bleq	ec2d54 <main+0xec2d54>
  68:	0c3f1349 	ldceq	3, cr1, [pc], #-292	; 0xfffffedc
  6c:	00000a02 	andeq	r0, r0, r2, lsl #20
  70:	49002609 	stmdbmi	r0, {r0, r3, r9, sl, sp}
  74:	00000013 	andeq	r0, r0, r3, lsl r0

Disassembly of section .debug_info:

00000000 <.debug_info>:
   0:	00000087 	andeq	r0, r0, r7, lsl #1
   4:	00000002 	andeq	r0, r0, r2
   8:	01040000 	tsteq	r4, r0
   c:	000000a7 	andeq	r0, r0, r7, lsr #1
  10:	0000b301 	andeq	fp, r0, r1, lsl #6
  14:	00000e00 	andeq	r0, r0, r0, lsl #28
  18:	00000000 	andeq	r0, r0, r0
  1c:	00001800 	andeq	r1, r0, r0, lsl #16
  20:	00000000 	andeq	r0, r0, r0
  24:	b9010200 	stmdblt	r1, {r9}
  28:	01000000 	tsteq	r0, r0
  2c:	00000107 	andeq	r0, r0, r7, lsl #2
  30:	00180000 	andseq	r0, r8, r0
  34:	00000000 	andeq	r0, r0, r0
  38:	4d030000 	stcmi	0, cr0, [r3]
  3c:	4a000000 	bmi	44 <.debug_info+0x44>
  40:	04000000 	streq	r0, [r0]
  44:	0000004a 	andeq	r0, r0, sl, asr #32
  48:	04050063 	streq	r0, [r5], #-99	; 0x63
  4c:	08010607 	stmdaeq	r1, {r0, r1, r2, r9, sl}
  50:	00000000 	andeq	r0, r0, r0
  54:	00008907 	andeq	r8, r0, r7, lsl #18
  58:	3a040100 	bcc	100460 <main+0x100460>
  5c:	01000000 	tsteq	r0, r0
  60:	00890801 	addeq	r0, r9, r1, lsl #16
  64:	04010000 	streq	r0, [r1]
  68:	0000003a 	andeq	r0, r0, sl, lsr r0
  6c:	00030501 	andeq	r0, r3, r1, lsl #10
  70:	08000000 	stmdaeq	r0, {}
  74:	00000097 	muleq	r0, r7, r0
  78:	00850501 	addeq	r0, r5, r1, lsl #10
  7c:	05010000 	streq	r0, [r1]
  80:	00000003 	andeq	r0, r0, r3
  84:	003a0900 	eorseq	r0, sl, r0, lsl #18
  88:	Address 0x00000088 is out of bounds.


Disassembly of section .debug_line:

00000000 <.debug_line>:
   0:	00000031 	andeq	r0, r0, r1, lsr r0
   4:	001c0002 	andseq	r0, ip, r2
   8:	01020000 	tsteq	r2, r0
   c:	000d0efb 	strdeq	r0, [sp], -fp
  10:	01010101 	tsteq	r1, r1, lsl #2
  14:	01000000 	tsteq	r0, r0
  18:	00010000 	andeq	r0, r1, r0
  1c:	2e505041 	cdpcs	0, 5, cr5, cr0, cr1, {2}
  20:	00000063 	andeq	r0, r0, r3, rrx
  24:	05000000 	streq	r0, [r0]
  28:	00000002 	andeq	r0, r0, r2
  2c:	4b4c1800 	blmi	1306034 <main+0x1306034>
  30:	01000402 	tsteq	r0, r2, lsl #8
  34:	Address 0x00000034 is out of bounds.


Disassembly of section .rodata:

00000000 <string_buffer_2>:
   0:	6c6c6568 	cfstr64vs	mvdx6, [ip], #-416	; 0xfffffe60
   4:	6f77206f 	svcvs	0x0077206f
   8:	2064656c 	rsbcs	r6, r4, ip, ror #10
   c:	68207c7c 	stmdavs	r0!, {r2, r3, r4, r5, r6, sl, fp, ip, sp, lr}
  10:	6173736f 	cmnvs	r3, pc, ror #6
  14:	616d206d 	cmnvs	sp, sp, rrx
  18:	00796467 	rsbseq	r6, r9, r7, ror #8
	...

Disassembly of section .debug_loc:

00000000 <.debug_loc>:
   0:	00000000 	andeq	r0, r0, r0
   4:	00000004 	andeq	r0, r0, r4
   8:	007d0002 	rsbseq	r0, sp, r2
   c:	00000004 	andeq	r0, r0, r4
  10:	00000008 	andeq	r0, r0, r8
  14:	087d0002 	ldmdaeq	sp!, {r1}^
  18:	00000008 	andeq	r0, r0, r8
  1c:	00000018 	andeq	r0, r0, r8, lsl r0
  20:	047b0002 	ldrbteq	r0, [fp], #-2
	...

Disassembly of section .debug_pubnames:

00000000 <.debug_pubnames>:
   0:	0000003d 	andeq	r0, r0, sp, lsr r0
   4:	00000002 	andeq	r0, r0, r2
   8:	008b0000 	addeq	r0, fp, r0
   c:	00250000 	eoreq	r0, r5, r0
  10:	616d0000 	cmnvs	sp, r0
  14:	61006e69 	tstvs	r0, r9, ror #28
  18:	73000000 	movwvc	r0, #0
  1c:	6e697274 	mcrvs	2, 3, r7, cr9, cr4, {3}
  20:	75625f67 	strbvc	r5, [r2, #-3943]!	; 0xf67
  24:	72656666 	rsbvc	r6, r5, #106954752	; 0x6600000
  28:	00007300 	andeq	r7, r0, r0, lsl #6
  2c:	72747300 	rsbsvc	r7, r4, #0
  30:	5f676e69 	svcpl	0x00676e69
  34:	66667562 	strbtvs	r7, [r6], -r2, ror #10
  38:	325f7265 	subscc	r7, pc, #1342177286	; 0x50000006
  3c:	00000000 	andeq	r0, r0, r0
	...

Disassembly of section .debug_aranges:

00000000 <.debug_aranges>:
   0:	0000001c 	andeq	r0, r0, ip, lsl r0
   4:	00000002 	andeq	r0, r0, r2
   8:	00040000 	andeq	r0, r4, r0
	...
  14:	00000018 	andeq	r0, r0, r8, lsl r0
	...

Disassembly of section .debug_str:

00000000 <.debug_str>:
   0:	69736e75 	ldmdbvs	r3!, {r0, r2, r4, r5, r6, r9, sl, fp, sp, lr}^
   4:	64656e67 	strbtvs	r6, [r5], #-3687	; 0xe67
   8:	61686320 	cmnvs	r8, r0, lsr #6
   c:	3a460072 	bcc	11801dc <main+0x11801dc>
  10:	74616d5c 	strbtvc	r6, [r1], #-3420	; 0xd5c
  14:	61697265 	cmnvs	r9, r5, ror #4
  18:	75415c6c 	strbvc	r5, [r1, #-3180]	; 0xc6c
  1c:	6f6d6f74 	svcvs	0x006d6f74
  20:	65766974 	ldrbvs	r6, [r6, #-2420]!	; 0x974
  24:	626d4520 	rsbvs	r4, sp, #134217728	; 0x8000000
  28:	65646465 	strbvs	r6, [r4, #-1125]!	; 0x465
  2c:	79532064 	ldmdbvc	r3, {r2, r5, r6, sp}^
  30:	6d657473 	cfstrdvs	mvd7, [r5, #-460]!	; 0xfffffe34
  34:	756f4320 	strbvc	r4, [pc, #-800]!	; fffffd1c <main+0xfffffd1c>
  38:	5c657372 	stclpl	3, cr7, [r5], #-456	; 0xfffffe38
  3c:	6f72656b 	svcvs	0x0072656b
  40:	2073696c 	rsbscs	r6, r3, ip, ror #18
  44:	6e6f6873 	mcrvs	8, 3, r6, cr15, cr3, {3}
  48:	5c61646f 	cfstrdpl	mvd6, [r1], #-444	; 0xfffffe44
  4c:	72756f63 	rsbsvc	r6, r5, #396	; 0x18c
  50:	65206563 	strvs	r6, [r0, #-1379]!	; 0x563
  54:	6465626d 	strbtvs	r6, [r5], #-621	; 0x26d
  58:	20646465 	rsbcs	r6, r4, r5, ror #8
  5c:	74737973 	ldrbtvc	r7, [r3], #-2419	; 0x973
  60:	6f206d65 	svcvs	0x00206d65
  64:	6e696c6e 	cdpvs	12, 6, cr6, cr9, cr14, {3}
  68:	6e755c65 	cdpvs	12, 7, cr5, cr5, cr5, {3}
  6c:	28337469 	ldmdacs	r3!, {r0, r3, r5, r6, sl, ip, sp, lr}
  70:	65626d65 	strbvs	r6, [r2, #-3429]!	; 0xd65
  74:	64646564 	strbtvs	r6, [r4], #-1380	; 0x564
  78:	5c29635f 	stcpl	3, cr6, [r9], #-380	; 0xfffffe84
  7c:	7463656c 	strbtvc	r6, [r3], #-1388	; 0x56c
  80:	32657275 	rsbcc	r7, r5, #1342177287	; 0x50000007
  84:	42414c5c 	submi	r4, r1, #23552	; 0x5c00
  88:	72747300 	rsbsvc	r7, r4, #0
  8c:	5f676e69 	svcpl	0x00676e69
  90:	66667562 	strbtvs	r7, [r6], -r2, ror #10
  94:	73007265 	movwvc	r7, #613	; 0x265
  98:	6e697274 	mcrvs	2, 3, r7, cr9, cr4, {3}
  9c:	75625f67 	strbvc	r5, [r2, #-3943]!	; 0xf67
  a0:	72656666 	rsbvc	r6, r5, #106954752	; 0x6600000
  a4:	4700325f 	smlsdmi	r0, pc, r2, r3
  a8:	4320554e 	teqmi	r0, #327155712	; 0x13800000
  ac:	352e3420 	strcc	r3, [lr, #-1056]!	; 0x420
  b0:	4100302e 	tstmi	r0, lr, lsr #32
  b4:	632e5050 	teqvs	lr, #80	; 0x50
  b8:	69616d00 	stmdbvs	r1!, {r8, sl, fp, sp, lr}^
  bc:	Address 0x000000bc is out of bounds.


Disassembly of section .comment:

00000000 <.comment>:
   0:	43434700 	movtmi	r4, #14080	; 0x3700
   4:	4728203a 	undefined instruction 0x4728203a
   8:	2029554e 	eorcs	r5, r9, lr, asr #10
   c:	2e352e34 	mrccs	14, 1, r2, cr5, cr4, {1}
  10:	Address 0x00000010 is out of bounds.


Disassembly of section .ARM.attributes:

00000000 <.ARM.attributes>:
   0:	00003141 	andeq	r3, r0, r1, asr #2
   4:	61656100 	cmnvs	r5, r0, lsl #2
   8:	01006962 	tsteq	r0, r2, ror #18
   c:	00000027 	andeq	r0, r0, r7, lsr #32
  10:	4d524105 	ldfmie	f4, [r2, #-20]	; 0xffffffec
  14:	45363239 	ldrmi	r3, [r6, #-569]!	; 0x239
  18:	00532d4a 	subseq	r2, r3, sl, asr #26
  1c:	01080506 	tsteq	r8, r6, lsl #10
  20:	04120109 	ldreq	r0, [r2], #-265	; 0x109
  24:	01150114 	tsteq	r5, r4, lsl r1
  28:	01180317 	tsteq	r8, r7, lsl r3
  2c:	011a0119 	tsteq	sl, r9, lsl r1
  30:	Address 0x00000030 is out of bounds.


Disassembly of section .debug_frame:

00000000 <.debug_frame>:
   0:	0000000c 	andeq	r0, r0, ip
   4:	ffffffff 	undefined instruction 0xffffffff
   8:	7c020001 	stcvc	0, cr0, [r2], {1}
   c:	000d0c0e 	andeq	r0, sp, lr, lsl #24
  10:	00000018 	andeq	r0, r0, r8, lsl r0
	...
  1c:	00000018 	andeq	r0, r0, r8, lsl r0
  20:	42080e42 	andmi	r0, r8, #1056	; 0x420
  24:	028b018e 	addeq	r0, fp, #-2147483613	; 0x80000023
  28:	00040b0c 	andeq	r0, r4, ip, lsl #22
