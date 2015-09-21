
a.out:     file format elf64-littleaarch64


Disassembly of section .init:

0000000000400528 <_init>:
  400528:	a9bf7bfd 	stp	x29, x30, [sp,#-16]!
  40052c:	910003fd 	mov	x29, sp
  400530:	94000036 	bl	400608 <call_weak_fn>
  400534:	a8c17bfd 	ldp	x29, x30, [sp],#16
  400538:	d65f03c0 	ret

Disassembly of section .plt:

0000000000400540 <__libc_start_main@plt-0x20>:
  400540:	a9bf7bf0 	stp	x16, x30, [sp,#-16]!
  400544:	90000090 	adrp	x16, 410000 <__FRAME_END__+0xf400>
  400548:	f9472211 	ldr	x17, [x16,#3648]
  40054c:	91390210 	add	x16, x16, #0xe40
  400550:	d61f0220 	br	x17
  400554:	d503201f 	nop
  400558:	d503201f 	nop
  40055c:	d503201f 	nop

0000000000400560 <__libc_start_main@plt>:
  400560:	90000090 	adrp	x16, 410000 <__FRAME_END__+0xf400>
  400564:	f9472611 	ldr	x17, [x16,#3656]
  400568:	91392210 	add	x16, x16, #0xe48
  40056c:	d61f0220 	br	x17

0000000000400570 <__gmon_start__@plt>:
  400570:	90000090 	adrp	x16, 410000 <__FRAME_END__+0xf400>
  400574:	f9472a11 	ldr	x17, [x16,#3664]
  400578:	91394210 	add	x16, x16, #0xe50
  40057c:	d61f0220 	br	x17

0000000000400580 <memcpy@plt>:
  400580:	90000090 	adrp	x16, 410000 <__FRAME_END__+0xf400>
  400584:	f9472e11 	ldr	x17, [x16,#3672]
  400588:	91396210 	add	x16, x16, #0xe58
  40058c:	d61f0220 	br	x17

0000000000400590 <abort@plt>:
  400590:	90000090 	adrp	x16, 410000 <__FRAME_END__+0xf400>
  400594:	f9473211 	ldr	x17, [x16,#3680]
  400598:	91398210 	add	x16, x16, #0xe60
  40059c:	d61f0220 	br	x17

00000000004005a0 <puts@plt>:
  4005a0:	90000090 	adrp	x16, 410000 <__FRAME_END__+0xf400>
  4005a4:	f9473611 	ldr	x17, [x16,#3688]
  4005a8:	9139a210 	add	x16, x16, #0xe68
  4005ac:	d61f0220 	br	x17

00000000004005b0 <printf@plt>:
  4005b0:	90000090 	adrp	x16, 410000 <__FRAME_END__+0xf400>
  4005b4:	f9473a11 	ldr	x17, [x16,#3696]
  4005b8:	9139c210 	add	x16, x16, #0xe70
  4005bc:	d61f0220 	br	x17

Disassembly of section .text:

00000000004005c0 <_start>:
  4005c0:	d280001d 	mov	x29, #0x0                   	// #0
  4005c4:	d280001e 	mov	x30, #0x0                   	// #0
  4005c8:	910003fd 	mov	x29, sp
  4005cc:	aa0003e5 	mov	x5, x0
  4005d0:	f94003e1 	ldr	x1, [sp]
  4005d4:	910023e2 	add	x2, sp, #0x8
  4005d8:	910003e6 	mov	x6, sp
  4005dc:	580000a0 	ldr	x0, 4005f0 <_start+0x30>
  4005e0:	580000c3 	ldr	x3, 4005f8 <_start+0x38>
  4005e4:	580000e4 	ldr	x4, 400600 <_start+0x40>
  4005e8:	97ffffde 	bl	400560 <__libc_start_main@plt>
  4005ec:	97ffffe9 	bl	400590 <abort@plt>
  4005f0:	0040082c 	.word	0x0040082c
  4005f4:	00000000 	.word	0x00000000
  4005f8:	00400948 	.word	0x00400948
  4005fc:	00000000 	.word	0x00000000
  400600:	004009c0 	.word	0x004009c0
  400604:	00000000 	.word	0x00000000

0000000000400608 <call_weak_fn>:
  400608:	90000080 	adrp	x0, 410000 <__FRAME_END__+0xf400>
  40060c:	f9471400 	ldr	x0, [x0,#3624]
  400610:	b4000040 	cbz	x0, 400618 <call_weak_fn+0x10>
  400614:	17ffffd7 	b	400570 <__gmon_start__@plt>
  400618:	d65f03c0 	ret
  40061c:	00000000 	.inst	0x00000000 ; undefined

0000000000400620 <deregister_tm_clones>:
  400620:	90000081 	adrp	x1, 410000 <__FRAME_END__+0xf400>
  400624:	90000080 	adrp	x0, 410000 <__FRAME_END__+0xf400>
  400628:	913a0021 	add	x1, x1, #0xe80
  40062c:	913a0000 	add	x0, x0, #0xe80
  400630:	91001c21 	add	x1, x1, #0x7
  400634:	a9bf7bfd 	stp	x29, x30, [sp,#-16]!
  400638:	cb000021 	sub	x1, x1, x0
  40063c:	f100383f 	cmp	x1, #0xe
  400640:	910003fd 	mov	x29, sp
  400644:	54000089 	b.ls	400654 <deregister_tm_clones+0x34>
  400648:	580000c1 	ldr	x1, 400660 <deregister_tm_clones+0x40>
  40064c:	b4000041 	cbz	x1, 400654 <deregister_tm_clones+0x34>
  400650:	d63f0020 	blr	x1
  400654:	a8c17bfd 	ldp	x29, x30, [sp],#16
  400658:	d65f03c0 	ret
  40065c:	d503201f 	nop
	...

0000000000400668 <register_tm_clones>:
  400668:	90000080 	adrp	x0, 410000 <__FRAME_END__+0xf400>
  40066c:	90000081 	adrp	x1, 410000 <__FRAME_END__+0xf400>
  400670:	913a0000 	add	x0, x0, #0xe80
  400674:	913a0021 	add	x1, x1, #0xe80
  400678:	cb000021 	sub	x1, x1, x0
  40067c:	9343fc22 	asr	x2, x1, #3
  400680:	a9bf7bfd 	stp	x29, x30, [sp,#-16]!
  400684:	8b42fc42 	add	x2, x2, x2, lsr #63
  400688:	9341fc41 	asr	x1, x2, #1
  40068c:	910003fd 	mov	x29, sp
  400690:	b4000081 	cbz	x1, 4006a0 <register_tm_clones+0x38>
  400694:	580000a2 	ldr	x2, 4006a8 <register_tm_clones+0x40>
  400698:	b4000042 	cbz	x2, 4006a0 <register_tm_clones+0x38>
  40069c:	d63f0040 	blr	x2
  4006a0:	a8c17bfd 	ldp	x29, x30, [sp],#16
  4006a4:	d65f03c0 	ret
	...

00000000004006b0 <__do_global_dtors_aux>:
  4006b0:	a9be7bfd 	stp	x29, x30, [sp,#-32]!
  4006b4:	910003fd 	mov	x29, sp
  4006b8:	f9000bf3 	str	x19, [sp,#16]
  4006bc:	90000093 	adrp	x19, 410000 <__FRAME_END__+0xf400>
  4006c0:	397a0260 	ldrb	w0, [x19,#3712]
  4006c4:	35000080 	cbnz	w0, 4006d4 <__do_global_dtors_aux+0x24>
  4006c8:	97ffffd6 	bl	400620 <deregister_tm_clones>
  4006cc:	52800020 	mov	w0, #0x1                   	// #1
  4006d0:	393a0260 	strb	w0, [x19,#3712]
  4006d4:	f9400bf3 	ldr	x19, [sp,#16]
  4006d8:	a8c27bfd 	ldp	x29, x30, [sp],#32
  4006dc:	d65f03c0 	ret

00000000004006e0 <frame_dummy>:
  4006e0:	a9bf7bfd 	stp	x29, x30, [sp,#-16]!
  4006e4:	90000080 	adrp	x0, 410000 <__FRAME_END__+0xf400>
  4006e8:	910003fd 	mov	x29, sp
  4006ec:	91306000 	add	x0, x0, #0xc18
  4006f0:	f9400001 	ldr	x1, [x0]
  4006f4:	b5000061 	cbnz	x1, 400700 <frame_dummy+0x20>
  4006f8:	a8c17bfd 	ldp	x29, x30, [sp],#16
  4006fc:	17ffffdb 	b	400668 <register_tm_clones>
  400700:	58000081 	ldr	x1, 400710 <frame_dummy+0x30>
  400704:	b4ffffa1 	cbz	x1, 4006f8 <frame_dummy+0x18>
  400708:	d63f0020 	blr	x1
  40070c:	17fffffb 	b	4006f8 <frame_dummy+0x18>
	...

0000000000400718 <_Z4funciii>:
  400718:	a9bc7bfd 	stp	x29, x30, [sp,#-64]!
  40071c:	910003fd 	mov	x29, sp
  400720:	b9001fa0 	str	w0, [x29,#28]
  400724:	b9001ba1 	str	w1, [x29,#24]
  400728:	b90017a2 	str	w2, [x29,#20]
  40072c:	90000000 	adrp	x0, 400000 <_init-0x528>
  400730:	9127a000 	add	x0, x0, #0x9e8
  400734:	97ffff9b 	bl	4005a0 <puts@plt>
  400738:	aa1d03e0 	mov	x0, x29
  40073c:	f9001fa0 	str	x0, [x29,#56]
  400740:	90000000 	adrp	x0, 400000 <_init-0x528>
  400744:	9127e000 	add	x0, x0, #0x9f8
  400748:	f9401fa1 	ldr	x1, [x29,#56]
  40074c:	97ffff99 	bl	4005b0 <printf@plt>
  400750:	b9001fbf 	str	wzr, [x29,#28]
  400754:	52800020 	mov	w0, #0x1                   	// #1
  400758:	b9001ba0 	str	w0, [x29,#24]
  40075c:	52800040 	mov	w0, #0x2                   	// #2
  400760:	b90017a0 	str	w0, [x29,#20]
  400764:	aa1e03e0 	mov	x0, x30
  400768:	f9001ba0 	str	x0, [x29,#48]
  40076c:	90000000 	adrp	x0, 400000 <_init-0x528>
  400770:	91280000 	add	x0, x0, #0xa00
  400774:	f9401ba1 	ldr	x1, [x29,#48]
  400778:	97ffff8e 	bl	4005b0 <printf@plt>
  40077c:	910003e0 	mov	x0, sp
  400780:	f90017a0 	str	x0, [x29,#40]
  400784:	90000000 	adrp	x0, 400000 <_init-0x528>
  400788:	91282000 	add	x0, x0, #0xa08
  40078c:	f94017a1 	ldr	x1, [x29,#40]
  400790:	97ffff88 	bl	4005b0 <printf@plt>
  400794:	90000080 	adrp	x0, 410000 <__FRAME_END__+0xf400>
  400798:	913a2000 	add	x0, x0, #0xe88
  40079c:	f94017a1 	ldr	x1, [x29,#40]
  4007a0:	d2800202 	mov	x2, #0x10                  	// #16
  4007a4:	97ffff77 	bl	400580 <memcpy@plt>
  4007a8:	90000080 	adrp	x0, 410000 <__FRAME_END__+0xf400>
  4007ac:	913a2000 	add	x0, x0, #0xe88
  4007b0:	f9400001 	ldr	x1, [x0]
  4007b4:	90000080 	adrp	x0, 410000 <__FRAME_END__+0xf400>
  4007b8:	913a2000 	add	x0, x0, #0xe88
  4007bc:	f9400402 	ldr	x2, [x0,#8]
  4007c0:	90000000 	adrp	x0, 400000 <_init-0x528>
  4007c4:	91284000 	add	x0, x0, #0xa10
  4007c8:	97ffff7a 	bl	4005b0 <printf@plt>
  4007cc:	90000000 	adrp	x0, 400000 <_init-0x528>
  4007d0:	9128a000 	add	x0, x0, #0xa28
  4007d4:	97ffff73 	bl	4005a0 <puts@plt>
  4007d8:	f94017a0 	ldr	x0, [x29,#40]
  4007dc:	f90013a0 	str	x0, [x29,#32]
  4007e0:	f94013a0 	ldr	x0, [x29,#32]
  4007e4:	f9400001 	ldr	x1, [x0]
  4007e8:	f94013a0 	ldr	x0, [x29,#32]
  4007ec:	f9400402 	ldr	x2, [x0,#8]
  4007f0:	90000000 	adrp	x0, 400000 <_init-0x528>
  4007f4:	91284000 	add	x0, x0, #0xa10
  4007f8:	97ffff6e 	bl	4005b0 <printf@plt>
  4007fc:	f9401fa0 	ldr	x0, [x29,#56]
  400800:	f90013a0 	str	x0, [x29,#32]
  400804:	f94013a0 	ldr	x0, [x29,#32]
  400808:	f9400001 	ldr	x1, [x0]
  40080c:	f94013a0 	ldr	x0, [x29,#32]
  400810:	f9400402 	ldr	x2, [x0,#8]
  400814:	90000000 	adrp	x0, 400000 <_init-0x528>
  400818:	91284000 	add	x0, x0, #0xa10
  40081c:	97ffff65 	bl	4005b0 <printf@plt>
  400820:	d503201f 	nop
  400824:	a8c47bfd 	ldp	x29, x30, [sp],#64
  400828:	d65f03c0 	ret

000000000040082c <main>:
  40082c:	a9bb7bfd 	stp	x29, x30, [sp,#-80]!
  400830:	910003fd 	mov	x29, sp
  400834:	aa1d03e0 	mov	x0, x29
  400838:	f90027a0 	str	x0, [x29,#72]
  40083c:	90000000 	adrp	x0, 400000 <_init-0x528>
  400840:	9127e000 	add	x0, x0, #0x9f8
  400844:	f94027a1 	ldr	x1, [x29,#72]
  400848:	97ffff5a 	bl	4005b0 <printf@plt>
  40084c:	b90047bf 	str	wzr, [x29,#68]
  400850:	52800020 	mov	w0, #0x1                   	// #1
  400854:	b90043a0 	str	w0, [x29,#64]
  400858:	52800040 	mov	w0, #0x2                   	// #2
  40085c:	b9003fa0 	str	w0, [x29,#60]
  400860:	910003e0 	mov	x0, sp
  400864:	f9001ba0 	str	x0, [x29,#48]
  400868:	90000000 	adrp	x0, 400000 <_init-0x528>
  40086c:	91282000 	add	x0, x0, #0xa08
  400870:	f9401ba1 	ldr	x1, [x29,#48]
  400874:	97ffff4f 	bl	4005b0 <printf@plt>
  400878:	52800000 	mov	w0, #0x0                   	// #0
  40087c:	52800021 	mov	w1, #0x1                   	// #1
  400880:	52800042 	mov	w2, #0x2                   	// #2
  400884:	97ffffa5 	bl	400718 <_Z4funciii>
  400888:	aa1d03e0 	mov	x0, x29
  40088c:	f90027a0 	str	x0, [x29,#72]
  400890:	90000000 	adrp	x0, 400000 <_init-0x528>
  400894:	9127e000 	add	x0, x0, #0x9f8
  400898:	f94027a1 	ldr	x1, [x29,#72]
  40089c:	97ffff45 	bl	4005b0 <printf@plt>
  4008a0:	aa1e03e0 	mov	x0, x30
  4008a4:	f90017a0 	str	x0, [x29,#40]
  4008a8:	90000000 	adrp	x0, 400000 <_init-0x528>
  4008ac:	91280000 	add	x0, x0, #0xa00
  4008b0:	f94017a1 	ldr	x1, [x29,#40]
  4008b4:	97ffff3f 	bl	4005b0 <printf@plt>
  4008b8:	910003e0 	mov	x0, sp
  4008bc:	f9001ba0 	str	x0, [x29,#48]
  4008c0:	90000000 	adrp	x0, 400000 <_init-0x528>
  4008c4:	91282000 	add	x0, x0, #0xa08
  4008c8:	f9401ba1 	ldr	x1, [x29,#48]
  4008cc:	97ffff39 	bl	4005b0 <printf@plt>
  4008d0:	a94007e0 	ldp	x0, x1, [sp]
  4008d4:	f90013a1 	str	x1, [x29,#32]
  4008d8:	f9000fa0 	str	x0, [x29,#24]
  4008dc:	90000000 	adrp	x0, 400000 <_init-0x528>
  4008e0:	9128e000 	add	x0, x0, #0xa38
  4008e4:	f94013a1 	ldr	x1, [x29,#32]
  4008e8:	f94013a2 	ldr	x2, [x29,#32]
  4008ec:	97ffff31 	bl	4005b0 <printf@plt>
  4008f0:	90000000 	adrp	x0, 400000 <_init-0x528>
  4008f4:	91292000 	add	x0, x0, #0xa48
  4008f8:	f9400fa1 	ldr	x1, [x29,#24]
  4008fc:	f9400fa2 	ldr	x2, [x29,#24]
  400900:	97ffff2c 	bl	4005b0 <printf@plt>
  400904:	90000080 	adrp	x0, 410000 <__FRAME_END__+0xf400>
  400908:	913a2000 	add	x0, x0, #0xe88
  40090c:	f9401ba1 	ldr	x1, [x29,#48]
  400910:	d2800202 	mov	x2, #0x10                  	// #16
  400914:	97ffff1b 	bl	400580 <memcpy@plt>
  400918:	90000080 	adrp	x0, 410000 <__FRAME_END__+0xf400>
  40091c:	913a2000 	add	x0, x0, #0xe88
  400920:	f9400001 	ldr	x1, [x0]
  400924:	90000080 	adrp	x0, 410000 <__FRAME_END__+0xf400>
  400928:	913a2000 	add	x0, x0, #0xe88
  40092c:	f9400402 	ldr	x2, [x0,#8]
  400930:	90000000 	adrp	x0, 400000 <_init-0x528>
  400934:	91284000 	add	x0, x0, #0xa10
  400938:	97ffff1e 	bl	4005b0 <printf@plt>
  40093c:	52800000 	mov	w0, #0x0                   	// #0
  400940:	a8c57bfd 	ldp	x29, x30, [sp],#80
  400944:	d65f03c0 	ret

0000000000400948 <__libc_csu_init>:
  400948:	a9bc7bfd 	stp	x29, x30, [sp,#-64]!
  40094c:	910003fd 	mov	x29, sp
  400950:	a90153f3 	stp	x19, x20, [sp,#16]
  400954:	a9025bf5 	stp	x21, x22, [sp,#32]
  400958:	a90363f7 	stp	x23, x24, [sp,#48]
  40095c:	aa0203f6 	mov	x22, x2
  400960:	2a0003f8 	mov	w24, w0
  400964:	aa0103f7 	mov	x23, x1
  400968:	97fffef0 	bl	400528 <_init>
  40096c:	90000094 	adrp	x20, 410000 <__FRAME_END__+0xf400>
  400970:	90000080 	adrp	x0, 410000 <__FRAME_END__+0xf400>
  400974:	91302294 	add	x20, x20, #0xc08
  400978:	91304000 	add	x0, x0, #0xc10
  40097c:	cb140000 	sub	x0, x0, x20
  400980:	d2800013 	mov	x19, #0x0                   	// #0
  400984:	9343fc15 	asr	x21, x0, #3
  400988:	b4000135 	cbz	x21, 4009ac <__libc_csu_init+0x64>
  40098c:	f8737a83 	ldr	x3, [x20,x19,lsl #3]
  400990:	2a1803e0 	mov	w0, w24
  400994:	aa1703e1 	mov	x1, x23
  400998:	aa1603e2 	mov	x2, x22
  40099c:	91000673 	add	x19, x19, #0x1
  4009a0:	d63f0060 	blr	x3
  4009a4:	eb15027f 	cmp	x19, x21
  4009a8:	54ffff21 	b.ne	40098c <__libc_csu_init+0x44>
  4009ac:	a94153f3 	ldp	x19, x20, [sp,#16]
  4009b0:	a9425bf5 	ldp	x21, x22, [sp,#32]
  4009b4:	a94363f7 	ldp	x23, x24, [sp,#48]
  4009b8:	a8c47bfd 	ldp	x29, x30, [sp],#64
  4009bc:	d65f03c0 	ret

00000000004009c0 <__libc_csu_fini>:
  4009c0:	d65f03c0 	ret

Disassembly of section .fini:

00000000004009c4 <_fini>:
  4009c4:	a9bf7bfd 	stp	x29, x30, [sp,#-16]!
  4009c8:	910003fd 	mov	x29, sp
  4009cc:	a8c17bfd 	ldp	x29, x30, [sp],#16
  4009d0:	d65f03c0 	ret
