
dumpprog:     file format elf64-littleaarch64


Disassembly of section .init:

0000000000400610 <_init>:
  400610:	a9bf7bfd 	stp	x29, x30, [sp,#-16]!
  400614:	910003fd 	mov	x29, sp
  400618:	94000048 	bl	400738 <call_weak_fn>
  40061c:	a8c17bfd 	ldp	x29, x30, [sp],#16
  400620:	d65f03c0 	ret

Disassembly of section .plt:

0000000000400630 <__libc_start_main@plt-0x20>:
  400630:	a9bf7bf0 	stp	x16, x30, [sp,#-16]!
  400634:	b0000090 	adrp	x16, 411000 <_DYNAMIC+0x1a8>
  400638:	f9403e11 	ldr	x17, [x16,#120]
  40063c:	9101e210 	add	x16, x16, #0x78
  400640:	d61f0220 	br	x17
  400644:	d503201f 	nop
  400648:	d503201f 	nop
  40064c:	d503201f 	nop

0000000000400650 <__libc_start_main@plt>:
  400650:	b0000090 	adrp	x16, 411000 <_DYNAMIC+0x1a8>
  400654:	f9404211 	ldr	x17, [x16,#128]
  400658:	91020210 	add	x16, x16, #0x80
  40065c:	d61f0220 	br	x17

0000000000400660 <time@plt>:
  400660:	b0000090 	adrp	x16, 411000 <_DYNAMIC+0x1a8>
  400664:	f9404611 	ldr	x17, [x16,#136]
  400668:	91022210 	add	x16, x16, #0x88
  40066c:	d61f0220 	br	x17

0000000000400670 <__gmon_start__@plt>:
  400670:	b0000090 	adrp	x16, 411000 <_DYNAMIC+0x1a8>
  400674:	f9404a11 	ldr	x17, [x16,#144]
  400678:	91024210 	add	x16, x16, #0x90
  40067c:	d61f0220 	br	x17

0000000000400680 <qsort@plt>:
  400680:	b0000090 	adrp	x16, 411000 <_DYNAMIC+0x1a8>
  400684:	f9404e11 	ldr	x17, [x16,#152]
  400688:	91026210 	add	x16, x16, #0x98
  40068c:	d61f0220 	br	x17

0000000000400690 <abort@plt>:
  400690:	b0000090 	adrp	x16, 411000 <_DYNAMIC+0x1a8>
  400694:	f9405211 	ldr	x17, [x16,#160]
  400698:	91028210 	add	x16, x16, #0xa0
  40069c:	d61f0220 	br	x17

00000000004006a0 <rand@plt>:
  4006a0:	b0000090 	adrp	x16, 411000 <_DYNAMIC+0x1a8>
  4006a4:	f9405611 	ldr	x17, [x16,#168]
  4006a8:	9102a210 	add	x16, x16, #0xa8
  4006ac:	d61f0220 	br	x17

00000000004006b0 <malloc@plt>:
  4006b0:	b0000090 	adrp	x16, 411000 <_DYNAMIC+0x1a8>
  4006b4:	f9405a11 	ldr	x17, [x16,#176]
  4006b8:	9102c210 	add	x16, x16, #0xb0
  4006bc:	d61f0220 	br	x17

00000000004006c0 <free@plt>:
  4006c0:	b0000090 	adrp	x16, 411000 <_DYNAMIC+0x1a8>
  4006c4:	f9405e11 	ldr	x17, [x16,#184]
  4006c8:	9102e210 	add	x16, x16, #0xb8
  4006cc:	d61f0220 	br	x17

00000000004006d0 <srand@plt>:
  4006d0:	b0000090 	adrp	x16, 411000 <_DYNAMIC+0x1a8>
  4006d4:	f9406211 	ldr	x17, [x16,#192]
  4006d8:	91030210 	add	x16, x16, #0xc0
  4006dc:	d61f0220 	br	x17

00000000004006e0 <memset@plt>:
  4006e0:	b0000090 	adrp	x16, 411000 <_DYNAMIC+0x1a8>
  4006e4:	f9406611 	ldr	x17, [x16,#200]
  4006e8:	91032210 	add	x16, x16, #0xc8
  4006ec:	d61f0220 	br	x17

Disassembly of section .text:

00000000004006f0 <_start>:
  4006f0:	d280001d 	mov	x29, #0x0                   	// #0
  4006f4:	d280001e 	mov	x30, #0x0                   	// #0
  4006f8:	910003fd 	mov	x29, sp
  4006fc:	aa0003e5 	mov	x5, x0
  400700:	f94003e1 	ldr	x1, [sp]
  400704:	910023e2 	add	x2, sp, #0x8
  400708:	910003e6 	mov	x6, sp
  40070c:	580000a0 	ldr	x0, 400720 <_start+0x30>
  400710:	580000c3 	ldr	x3, 400728 <_start+0x38>
  400714:	580000e4 	ldr	x4, 400730 <_start+0x40>
  400718:	97ffffce 	bl	400650 <__libc_start_main@plt>
  40071c:	97ffffdd 	bl	400690 <abort@plt>
  400720:	00400ad4 	.word	0x00400ad4
  400724:	00000000 	.word	0x00000000
  400728:	00400ba0 	.word	0x00400ba0
  40072c:	00000000 	.word	0x00000000
  400730:	00400c18 	.word	0x00400c18
  400734:	00000000 	.word	0x00000000

0000000000400738 <call_weak_fn>:
  400738:	b0000080 	adrp	x0, 411000 <_DYNAMIC+0x1a8>
  40073c:	f9403000 	ldr	x0, [x0,#96]
  400740:	b4000040 	cbz	x0, 400748 <call_weak_fn+0x10>
  400744:	17ffffcb 	b	400670 <__gmon_start__@plt>
  400748:	d65f03c0 	ret
  40074c:	00000000 	.inst	0x00000000 ; undefined

0000000000400750 <deregister_tm_clones>:
  400750:	b0000081 	adrp	x1, 411000 <_DYNAMIC+0x1a8>
  400754:	b0000080 	adrp	x0, 411000 <_DYNAMIC+0x1a8>
  400758:	91036021 	add	x1, x1, #0xd8
  40075c:	91036000 	add	x0, x0, #0xd8
  400760:	91001c21 	add	x1, x1, #0x7
  400764:	a9bf7bfd 	stp	x29, x30, [sp,#-16]!
  400768:	cb000021 	sub	x1, x1, x0
  40076c:	f100383f 	cmp	x1, #0xe
  400770:	910003fd 	mov	x29, sp
  400774:	54000089 	b.ls	400784 <deregister_tm_clones+0x34>
  400778:	580000c1 	ldr	x1, 400790 <deregister_tm_clones+0x40>
  40077c:	b4000041 	cbz	x1, 400784 <deregister_tm_clones+0x34>
  400780:	d63f0020 	blr	x1
  400784:	a8c17bfd 	ldp	x29, x30, [sp],#16
  400788:	d65f03c0 	ret
  40078c:	d503201f 	nop
	...

0000000000400798 <register_tm_clones>:
  400798:	b0000080 	adrp	x0, 411000 <_DYNAMIC+0x1a8>
  40079c:	b0000081 	adrp	x1, 411000 <_DYNAMIC+0x1a8>
  4007a0:	91036000 	add	x0, x0, #0xd8
  4007a4:	91036021 	add	x1, x1, #0xd8
  4007a8:	cb000021 	sub	x1, x1, x0
  4007ac:	9343fc22 	asr	x2, x1, #3
  4007b0:	a9bf7bfd 	stp	x29, x30, [sp,#-16]!
  4007b4:	8b42fc42 	add	x2, x2, x2, lsr #63
  4007b8:	9341fc41 	asr	x1, x2, #1
  4007bc:	910003fd 	mov	x29, sp
  4007c0:	b4000081 	cbz	x1, 4007d0 <register_tm_clones+0x38>
  4007c4:	580000a2 	ldr	x2, 4007d8 <register_tm_clones+0x40>
  4007c8:	b4000042 	cbz	x2, 4007d0 <register_tm_clones+0x38>
  4007cc:	d63f0040 	blr	x2
  4007d0:	a8c17bfd 	ldp	x29, x30, [sp],#16
  4007d4:	d65f03c0 	ret
	...

00000000004007e0 <__do_global_dtors_aux>:
  4007e0:	a9be7bfd 	stp	x29, x30, [sp,#-32]!
  4007e4:	910003fd 	mov	x29, sp
  4007e8:	f9000bf3 	str	x19, [sp,#16]
  4007ec:	b0000093 	adrp	x19, 411000 <_DYNAMIC+0x1a8>
  4007f0:	39435260 	ldrb	w0, [x19,#212]
  4007f4:	35000080 	cbnz	w0, 400804 <__do_global_dtors_aux+0x24>
  4007f8:	97ffffd6 	bl	400750 <deregister_tm_clones>
  4007fc:	52800020 	mov	w0, #0x1                   	// #1
  400800:	39035260 	strb	w0, [x19,#212]
  400804:	f9400bf3 	ldr	x19, [sp,#16]
  400808:	a8c27bfd 	ldp	x29, x30, [sp],#32
  40080c:	d65f03c0 	ret

0000000000400810 <frame_dummy>:
  400810:	a9bf7bfd 	stp	x29, x30, [sp,#-16]!
  400814:	90000080 	adrp	x0, 410000 <__FRAME_END__+0xf1c8>
  400818:	910003fd 	mov	x29, sp
  40081c:	91394000 	add	x0, x0, #0xe50
  400820:	f9400001 	ldr	x1, [x0]
  400824:	b5000061 	cbnz	x1, 400830 <frame_dummy+0x20>
  400828:	a8c17bfd 	ldp	x29, x30, [sp],#16
  40082c:	17ffffdb 	b	400798 <register_tm_clones>
  400830:	58000081 	ldr	x1, 400840 <frame_dummy+0x30>
  400834:	b4ffffa1 	cbz	x1, 400828 <frame_dummy+0x18>
  400838:	d63f0020 	blr	x1
  40083c:	17fffffb 	b	400828 <frame_dummy+0x18>
	...

0000000000400848 <_Z10comparatorPKvS0_>:
  400848:	d10043ff 	sub	sp, sp, #0x10
  40084c:	f90007e0 	str	x0, [sp,#8]
  400850:	f90003e1 	str	x1, [sp]
  400854:	f94007e0 	ldr	x0, [sp,#8]
  400858:	b9400001 	ldr	w1, [x0]
  40085c:	f94003e0 	ldr	x0, [sp]
  400860:	b9400000 	ldr	w0, [x0]
  400864:	4b000020 	sub	w0, w1, w0
  400868:	910043ff 	add	sp, sp, #0x10
  40086c:	d65f03c0 	ret

0000000000400870 <_Z3fooPij>:
  400870:	a9bc7bfd 	stp	x29, x30, [sp,#-64]!
  400874:	910003fd 	mov	x29, sp
  400878:	f9000bf3 	str	x19, [sp,#16]
  40087c:	f90017a0 	str	x0, [x29,#40]
  400880:	b90027a1 	str	w1, [x29,#36]
  400884:	b94027a1 	ldr	w1, [x29,#36]
  400888:	90000000 	adrp	x0, 400000 <_init-0x610>
  40088c:	91212003 	add	x3, x0, #0x848
  400890:	f94017a0 	ldr	x0, [x29,#40]
  400894:	d2800082 	mov	x2, #0x4                   	// #4
  400898:	97ffff7a 	bl	400680 <qsort@plt>
  40089c:	18000840 	ldr	w0, 4009a4 <_Z3fooPij+0x134>
  4008a0:	b9003ba0 	str	w0, [x29,#56]
  4008a4:	d2800000 	mov	x0, #0x0                   	// #0
  4008a8:	97ffff6e 	bl	400660 <time@plt>
  4008ac:	97ffff89 	bl	4006d0 <srand@plt>
  4008b0:	b9003fbf 	str	wzr, [x29,#60]
  4008b4:	14000033 	b	400980 <_Z3fooPij+0x110>
  4008b8:	b9803fa0 	ldrsw	x0, [x29,#60]
  4008bc:	d37ef400 	lsl	x0, x0, #2
  4008c0:	f94017a1 	ldr	x1, [x29,#40]
  4008c4:	8b000022 	add	x2, x1, x0
  4008c8:	b9803fa0 	ldrsw	x0, [x29,#60]
  4008cc:	d37ef400 	lsl	x0, x0, #2
  4008d0:	f94017a1 	ldr	x1, [x29,#40]
  4008d4:	8b000020 	add	x0, x1, x0
  4008d8:	b9400001 	ldr	w1, [x0]
  4008dc:	2a0103e0 	mov	w0, w1
  4008e0:	531e7400 	lsl	w0, w0, #2
  4008e4:	0b010000 	add	w0, w0, w1
  4008e8:	531f7800 	lsl	w0, w0, #1
  4008ec:	b9000040 	str	w0, [x2]
  4008f0:	b9803fa0 	ldrsw	x0, [x29,#60]
  4008f4:	d37ef400 	lsl	x0, x0, #2
  4008f8:	f94017a1 	ldr	x1, [x29,#40]
  4008fc:	8b000020 	add	x0, x1, x0
  400900:	b9400000 	ldr	w0, [x0]
  400904:	1e220000 	scvtf	s0, w0
  400908:	1e260013 	fmov	w19, s0
  40090c:	97ffff65 	bl	4006a0 <rand@plt>
  400910:	2a0003e2 	mov	w2, w0
  400914:	528ccce0 	mov	w0, #0x6667                	// #26215
  400918:	72acccc0 	movk	w0, #0x6666, lsl #16
  40091c:	9b207c40 	smull	x0, w2, w0
  400920:	d360fc00 	lsr	x0, x0, #32
  400924:	13027c01 	asr	w1, w0, #2
  400928:	131f7c40 	asr	w0, w2, #31
  40092c:	4b000021 	sub	w1, w1, w0
  400930:	2a0103e0 	mov	w0, w1
  400934:	531e7400 	lsl	w0, w0, #2
  400938:	0b010000 	add	w0, w0, w1
  40093c:	531f7800 	lsl	w0, w0, #1
  400940:	4b000041 	sub	w1, w2, w0
  400944:	1e220020 	scvtf	s0, w1
  400948:	1e260000 	fmov	w0, s0
  40094c:	1e270260 	fmov	s0, w19
  400950:	1e270001 	fmov	s1, w0
  400954:	1e211800 	fdiv	s0, s0, s1
  400958:	1e260000 	fmov	w0, s0
  40095c:	b9403ba1 	ldr	w1, [x29,#56]
  400960:	1e270020 	fmov	s0, w1
  400964:	1e270001 	fmov	s1, w0
  400968:	1e212800 	fadd	s0, s0, s1
  40096c:	1e260000 	fmov	w0, s0
  400970:	b9003ba0 	str	w0, [x29,#56]
  400974:	b9403fa0 	ldr	w0, [x29,#60]
  400978:	11000400 	add	w0, w0, #0x1
  40097c:	b9003fa0 	str	w0, [x29,#60]
  400980:	b9403fa1 	ldr	w1, [x29,#60]
  400984:	b94027a0 	ldr	w0, [x29,#36]
  400988:	6b00003f 	cmp	w1, w0
  40098c:	54fff963 	b.cc	4008b8 <_Z3fooPij+0x48>
  400990:	b9403ba0 	ldr	w0, [x29,#56]
  400994:	1e270000 	fmov	s0, w0
  400998:	f9400bf3 	ldr	x19, [sp,#16]
  40099c:	a8c47bfd 	ldp	x29, x30, [sp],#64
  4009a0:	d65f03c0 	ret
  4009a4:	00000000 	.word	0x00000000

00000000004009a8 <_Z3bari>:
  4009a8:	a9bb7bfd 	stp	x29, x30, [sp,#-80]!
  4009ac:	910003fd 	mov	x29, sp
  4009b0:	f9000bf3 	str	x19, [sp,#16]
  4009b4:	b9002fa0 	str	w0, [x29,#44]
  4009b8:	b9802fa0 	ldrsw	x0, [x29,#44]
  4009bc:	97ffff3d 	bl	4006b0 <malloc@plt>
  4009c0:	f90023a0 	str	x0, [x29,#64]
  4009c4:	52800c20 	mov	w0, #0x61                  	// #97
  4009c8:	3900e3a0 	strb	w0, [x29,#56]
  4009cc:	52800c40 	mov	w0, #0x62                  	// #98
  4009d0:	3900e7a0 	strb	w0, [x29,#57]
  4009d4:	f94023a0 	ldr	x0, [x29,#64]
  4009d8:	eb1f001f 	cmp	x0, xzr
  4009dc:	54000720 	b.eq	400ac0 <_Z3bari+0x118>
  4009e0:	b9802fa2 	ldrsw	x2, [x29,#44]
  4009e4:	f94023a0 	ldr	x0, [x29,#64]
  4009e8:	52800001 	mov	w1, #0x0                   	// #0
  4009ec:	97ffff3d 	bl	4006e0 <memset@plt>
  4009f0:	d2800000 	mov	x0, #0x0                   	// #0
  4009f4:	97ffff1b 	bl	400660 <time@plt>
  4009f8:	97ffff36 	bl	4006d0 <srand@plt>
  4009fc:	b9004fbf 	str	wzr, [x29,#76]
  400a00:	14000013 	b	400a4c <_Z3bari+0xa4>
  400a04:	b9804fa0 	ldrsw	x0, [x29,#76]
  400a08:	f94023a1 	ldr	x1, [x29,#64]
  400a0c:	8b000033 	add	x19, x1, x0
  400a10:	97ffff24 	bl	4006a0 <rand@plt>
  400a14:	2a0003e1 	mov	w1, w0
  400a18:	131f7c20 	asr	w0, w1, #31
  400a1c:	531f7c00 	lsr	w0, w0, #31
  400a20:	0b000021 	add	w1, w1, w0
  400a24:	12000021 	and	w1, w1, #0x1
  400a28:	4b000020 	sub	w0, w1, w0
  400a2c:	93407c00 	sxtw	x0, w0
  400a30:	910143a1 	add	x1, x29, #0x50
  400a34:	8b000020 	add	x0, x1, x0
  400a38:	385e8000 	ldrb	w0, [x0,#-24]
  400a3c:	39000260 	strb	w0, [x19]
  400a40:	b9404fa0 	ldr	w0, [x29,#76]
  400a44:	11000400 	add	w0, w0, #0x1
  400a48:	b9004fa0 	str	w0, [x29,#76]
  400a4c:	b9404fa1 	ldr	w1, [x29,#76]
  400a50:	b9402fa0 	ldr	w0, [x29,#44]
  400a54:	6b00003f 	cmp	w1, w0
  400a58:	54fffd6b 	b.lt	400a04 <_Z3bari+0x5c>
  400a5c:	b9004fbf 	str	wzr, [x29,#76]
  400a60:	14000010 	b	400aa0 <_Z3bari+0xf8>
  400a64:	b9804fa0 	ldrsw	x0, [x29,#76]
  400a68:	f94023a1 	ldr	x1, [x29,#64]
  400a6c:	8b000020 	add	x0, x1, x0
  400a70:	b9402fa2 	ldr	w2, [x29,#44]
  400a74:	b9404fa1 	ldr	w1, [x29,#76]
  400a78:	4b010041 	sub	w1, w2, w1
  400a7c:	93407c21 	sxtw	x1, w1
  400a80:	91000421 	add	x1, x1, #0x1
  400a84:	f94023a2 	ldr	x2, [x29,#64]
  400a88:	8b010041 	add	x1, x2, x1
  400a8c:	39400021 	ldrb	w1, [x1]
  400a90:	39000001 	strb	w1, [x0]
  400a94:	b9404fa0 	ldr	w0, [x29,#76]
  400a98:	11000400 	add	w0, w0, #0x1
  400a9c:	b9004fa0 	str	w0, [x29,#76]
  400aa0:	b9402fa0 	ldr	w0, [x29,#44]
  400aa4:	531f7c01 	lsr	w1, w0, #31
  400aa8:	0b000020 	add	w0, w1, w0
  400aac:	13017c00 	asr	w0, w0, #1
  400ab0:	2a0003e1 	mov	w1, w0
  400ab4:	b9404fa0 	ldr	w0, [x29,#76]
  400ab8:	6b00003f 	cmp	w1, w0
  400abc:	54fffd4c 	b.gt	400a64 <_Z3bari+0xbc>
  400ac0:	f94023a0 	ldr	x0, [x29,#64]
  400ac4:	97fffeff 	bl	4006c0 <free@plt>
  400ac8:	f9400bf3 	ldr	x19, [sp,#16]
  400acc:	a8c57bfd 	ldp	x29, x30, [sp],#80
  400ad0:	d65f03c0 	ret

0000000000400ad4 <main>:
  400ad4:	a9bc7bfd 	stp	x29, x30, [sp,#-64]!
  400ad8:	910003fd 	mov	x29, sp
  400adc:	910043a0 	add	x0, x29, #0x10
  400ae0:	528005a1 	mov	w1, #0x2d                  	// #45
  400ae4:	b9000001 	str	w1, [x0]
  400ae8:	910043a0 	add	x0, x29, #0x10
  400aec:	528009c1 	mov	w1, #0x4e                  	// #78
  400af0:	b9000401 	str	w1, [x0,#4]
  400af4:	910043a0 	add	x0, x29, #0x10
  400af8:	52800181 	mov	w1, #0xc                   	// #12
  400afc:	b9000801 	str	w1, [x0,#8]
  400b00:	910043a0 	add	x0, x29, #0x10
  400b04:	52800c61 	mov	w1, #0x63                  	// #99
  400b08:	b9000c01 	str	w1, [x0,#12]
  400b0c:	910043a0 	add	x0, x29, #0x10
  400b10:	52800821 	mov	w1, #0x41                  	// #65
  400b14:	b9001001 	str	w1, [x0,#16]
  400b18:	910043a0 	add	x0, x29, #0x10
  400b1c:	52800401 	mov	w1, #0x20                  	// #32
  400b20:	b9001401 	str	w1, [x0,#20]
  400b24:	910043a0 	add	x0, x29, #0x10
  400b28:	52800121 	mov	w1, #0x9                   	// #9
  400b2c:	b9001801 	str	w1, [x0,#24]
  400b30:	910043a0 	add	x0, x29, #0x10
  400b34:	52800161 	mov	w1, #0xb                   	// #11
  400b38:	b9001c01 	str	w1, [x0,#28]
  400b3c:	910043a0 	add	x0, x29, #0x10
  400b40:	52800ae1 	mov	w1, #0x57                  	// #87
  400b44:	b9002001 	str	w1, [x0,#32]
  400b48:	910043a0 	add	x0, x29, #0x10
  400b4c:	52800641 	mov	w1, #0x32                  	// #50
  400b50:	b9002401 	str	w1, [x0,#36]
  400b54:	910043a0 	add	x0, x29, #0x10
  400b58:	52800141 	mov	w1, #0xa                   	// #10
  400b5c:	97ffff45 	bl	400870 <_Z3fooPij>
  400b60:	1e260000 	fmov	w0, s0
  400b64:	b9003fa0 	str	w0, [x29,#60]
  400b68:	b9403fa0 	ldr	w0, [x29,#60]
  400b6c:	1e270000 	fmov	s0, w0
  400b70:	1e380001 	fcvtzs	w1, s0
  400b74:	528ccce0 	mov	w0, #0x6667                	// #26215
  400b78:	72acccc0 	movk	w0, #0x6666, lsl #16
  400b7c:	9b207c20 	smull	x0, w1, w0
  400b80:	d360fc00 	lsr	x0, x0, #32
  400b84:	13027c02 	asr	w2, w0, #2
  400b88:	131f7c20 	asr	w0, w1, #31
  400b8c:	4b000040 	sub	w0, w2, w0
  400b90:	97ffff86 	bl	4009a8 <_Z3bari>
  400b94:	52800000 	mov	w0, #0x0                   	// #0
  400b98:	a8c47bfd 	ldp	x29, x30, [sp],#64
  400b9c:	d65f03c0 	ret

0000000000400ba0 <__libc_csu_init>:
  400ba0:	a9bc7bfd 	stp	x29, x30, [sp,#-64]!
  400ba4:	910003fd 	mov	x29, sp
  400ba8:	a90153f3 	stp	x19, x20, [sp,#16]
  400bac:	a9025bf5 	stp	x21, x22, [sp,#32]
  400bb0:	a90363f7 	stp	x23, x24, [sp,#48]
  400bb4:	aa0203f6 	mov	x22, x2
  400bb8:	2a0003f8 	mov	w24, w0
  400bbc:	aa0103f7 	mov	x23, x1
  400bc0:	97fffe94 	bl	400610 <_init>
  400bc4:	90000094 	adrp	x20, 410000 <__FRAME_END__+0xf1c8>
  400bc8:	90000080 	adrp	x0, 410000 <__FRAME_END__+0xf1c8>
  400bcc:	91390294 	add	x20, x20, #0xe40
  400bd0:	91392000 	add	x0, x0, #0xe48
  400bd4:	cb140000 	sub	x0, x0, x20
  400bd8:	d2800013 	mov	x19, #0x0                   	// #0
  400bdc:	9343fc15 	asr	x21, x0, #3
  400be0:	b4000135 	cbz	x21, 400c04 <__libc_csu_init+0x64>
  400be4:	f8737a83 	ldr	x3, [x20,x19,lsl #3]
  400be8:	2a1803e0 	mov	w0, w24
  400bec:	aa1703e1 	mov	x1, x23
  400bf0:	aa1603e2 	mov	x2, x22
  400bf4:	91000673 	add	x19, x19, #0x1
  400bf8:	d63f0060 	blr	x3
  400bfc:	eb15027f 	cmp	x19, x21
  400c00:	54ffff21 	b.ne	400be4 <__libc_csu_init+0x44>
  400c04:	a94153f3 	ldp	x19, x20, [sp,#16]
  400c08:	a9425bf5 	ldp	x21, x22, [sp,#32]
  400c0c:	a94363f7 	ldp	x23, x24, [sp,#48]
  400c10:	a8c47bfd 	ldp	x29, x30, [sp],#64
  400c14:	d65f03c0 	ret

0000000000400c18 <__libc_csu_fini>:
  400c18:	d65f03c0 	ret

Disassembly of section .fini:

0000000000400c1c <_fini>:
  400c1c:	a9bf7bfd 	stp	x29, x30, [sp,#-16]!
  400c20:	910003fd 	mov	x29, sp
  400c24:	a8c17bfd 	ldp	x29, x30, [sp],#16
  400c28:	d65f03c0 	ret
