
    .syntax unified

    .text

	.thumb
sub_801B4C8: @ 0x0801B4C8
	push {r4, r5, lr}
	sub sp, #8
	str r0, [sp]
	str r1, [sp, #4]
	add r1, sp, #4
	mov r0, sp
	bl sub_8016710
	ldr r4, _0801B508
	adds r0, r4, #0
	bl sub_80037A8
	cmp r0, #0
	bne _0801B4E6
	b _0801B7F0
_0801B4E6:
	ldr r1, [sp, #4]
	ldr r0, _0801B50C
	ands r1, r0
	cmp r1, #1
	beq _0801B510
	movs r0, #0x80
	lsls r0, r0, #2
	cmp r1, r0
	beq _0801B520
	ldr r1, [sp]
	movs r0, #0xf0
	ands r1, r0
	cmp r1, #0x50
	beq _0801B5C6
	cmp r1, #0x50
	bgt _0801B5AC
	b _0801B594
	.align 2, 0
_0801B508: .4byte gPlayerSprite
_0801B50C: .4byte 0x0000030F
_0801B510:
	bl sub_08016EE0
	cmp r0, #0
	beq _0801B51A
	b _0801B7F0
_0801B51A:
	bl sub_8017480
	b _0801B7F0
_0801B520:
	ldr r2, _0801B578
	ldr r1, _0801B57C
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0
	strh r0, [r1]
	adds r0, r4, #0
	movs r1, #0x19
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r0, _0801B580
	ldr r0, [r0]
	ldr r2, _0801B584
	ldrb r1, [r4, #0xa]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r2, [r1]
	movs r1, #0
	movs r3, #0
	bl sub_8003884
	ldr r5, _0801B588
	ldr r1, [r5]
	movs r4, #1
	rsbs r4, r4, #0
	cmp r1, r4
	beq _0801B56A
	ldr r0, _0801B58C
	ldrb r0, [r0]
	cmp r0, #0
	beq _0801B568
	adds r0, r1, #0
	bl audio_halt_fx
_0801B568:
	str r4, [r5]
_0801B56A:
	ldr r0, _0801B590
	ldrb r1, [r0, #0xa]
	movs r0, #0
	bl sub_8016790
	b _0801B7F0
	.align 2, 0
_0801B578: .4byte gPreviousPlayerState
_0801B57C: .4byte gPlayerState
_0801B580: .4byte dword_2000FC8
_0801B584: .4byte dword_80CC290
_0801B588: .4byte dword_20020B8
_0801B58C: .4byte byte_203EA89
_0801B590: .4byte gPlayerSprite
_0801B594:
	cmp r1, #0x20
	bne _0801B59A
	b _0801B6EC
_0801B59A:
	cmp r1, #0x20
	bgt _0801B5A6
	cmp r1, #0x10
	bne _0801B5A4
	b _0801B71C
_0801B5A4:
	b _0801B79E
_0801B5A6:
	cmp r1, #0x40
	beq _0801B694
	b _0801B79E
_0801B5AC:
	cmp r1, #0x80
	bne _0801B5B2
	b _0801B6C4
_0801B5B2:
	cmp r1, #0x80
	bgt _0801B5BC
	cmp r1, #0x60
	beq _0801B66C
	b _0801B79E
_0801B5BC:
	cmp r1, #0x90
	beq _0801B618
	cmp r1, #0xa0
	beq _0801B644
	b _0801B79E
_0801B5C6:
	ldrb r0, [r4, #0xa]
	cmp r0, #1
	beq _0801B5EE
	movs r0, #1
	strb r0, [r4, #0xa]
	adds r0, r4, #0
	movs r1, #0x31
	movs r2, #7
	movs r3, #0
	bl sub_80033A4
	ldr r0, _0801B60C
	ldr r0, [r0]
	movs r1, #0xa0
	lsls r1, r1, #0xa
	movs r2, #0xb4
	lsls r2, r2, #0xe
_0801B5E8:
	movs r3, #0
	bl sub_8003884
_0801B5EE:
	ldr r1, _0801B610
	ldr r2, [r1]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r2, r0
	beq _0801B5FC
	b _0801B7F0
_0801B5FC:
	adds r4, r1, #0
	ldr r0, _0801B614
	ldrb r0, [r0]
	cmp r0, #0
	beq _0801B608
	b _0801B75A
_0801B608:
	b _0801B798
	.align 2, 0
_0801B60C: .4byte dword_2000FC8
_0801B610: .4byte dword_20020B8
_0801B614: .4byte byte_203EA89
_0801B618:
	ldrb r0, [r4, #0xa]
	cmp r0, #3
	beq _0801B5EE
	movs r0, #3
	strb r0, [r4, #0xa]
	adds r0, r4, #0
	movs r1, #0x31
	movs r2, #7
	movs r3, #0
	bl sub_80033A4
	ldr r0, _0801B63C
	ldr r0, [r0]
	movs r1, #0xa0
	lsls r1, r1, #0xa
	ldr r2, _0801B640
	b _0801B5E8
	.align 2, 0
_0801B63C: .4byte dword_2000FC8
_0801B640: .4byte 0x013B0000
_0801B644:
	ldrb r0, [r4, #0xa]
	cmp r0, #5
	beq _0801B5EE
	movs r0, #5
	strb r0, [r4, #0xa]
	adds r0, r4, #0
	movs r1, #0x31
	movs r2, #7
	movs r3, #0
	bl sub_80033A4
	ldr r0, _0801B668
	ldr r0, [r0]
	movs r1, #0xa0
	lsls r1, r1, #0xa
	movs r2, #0xe1
	lsls r2, r2, #0x10
	b _0801B5E8
	.align 2, 0
_0801B668: .4byte dword_2000FC8
_0801B66C:
	ldrb r0, [r4, #0xa]
	cmp r0, #7
	beq _0801B5EE
	movs r0, #7
	strb r0, [r4, #0xa]
	adds r0, r4, #0
	movs r1, #0x31
	movs r2, #7
	movs r3, #0
	bl sub_80033A4
	ldr r0, _0801B690
	ldr r0, [r0]
	movs r1, #0xa0
	lsls r1, r1, #0xa
	movs r2, #0x87
	lsls r2, r2, #0x10
	b _0801B5E8
	.align 2, 0
_0801B690: .4byte dword_2000FC8
_0801B694:
	ldr r1, _0801B6BC
	ldrb r0, [r1, #0xa]
	cmp r0, #0
	beq _0801B5EE
	movs r0, #0
	strb r0, [r1, #0xa]
	adds r0, r1, #0
	movs r1, #0x31
	movs r2, #7
	movs r3, #0
	bl sub_80033A4
	ldr r0, _0801B6C0
	ldr r0, [r0]
	movs r1, #0xa0
	lsls r1, r1, #0xa
	movs r2, #0xb4
	lsls r2, r2, #0xf
	b _0801B5E8
	.align 2, 0
_0801B6BC: .4byte gPlayerSprite
_0801B6C0: .4byte dword_2000FC8
_0801B6C4:
	ldrb r0, [r4, #0xa]
	cmp r0, #4
	beq _0801B5EE
	movs r0, #4
	strb r0, [r4, #0xa]
	adds r0, r4, #0
	movs r1, #0x31
	movs r2, #7
	movs r3, #0
	bl sub_80033A4
	ldr r0, _0801B6E8
	ldr r0, [r0]
	movs r1, #0xa0
	lsls r1, r1, #0xa
	movs r2, #0x87
	lsls r2, r2, #0x11
	b _0801B5E8
	.align 2, 0
_0801B6E8: .4byte dword_2000FC8
_0801B6EC:
	ldr r1, _0801B714
	ldrb r0, [r1, #0xa]
	cmp r0, #6
	bne _0801B6F6
	b _0801B5EE
_0801B6F6:
	movs r0, #6
	strb r0, [r1, #0xa]
	adds r0, r1, #0
	movs r1, #0x31
	movs r2, #7
	movs r3, #0
	bl sub_80033A4
	ldr r0, _0801B718
	ldr r0, [r0]
	movs r1, #0xa0
	lsls r1, r1, #0xa
	movs r2, #0xb4
	lsls r2, r2, #0x10
	b _0801B5E8
	.align 2, 0
_0801B714: .4byte gPlayerSprite
_0801B718: .4byte dword_2000FC8
_0801B71C:
	ldr r1, _0801B780
	ldrb r0, [r1, #0xa]
	cmp r0, #2
	beq _0801B744
	movs r0, #2
	strb r0, [r1, #0xa]
	adds r0, r1, #0
	movs r1, #0x31
	movs r2, #7
	movs r3, #0
	bl sub_80033A4
	ldr r0, _0801B784
	ldr r0, [r0]
	movs r1, #0xa0
	lsls r1, r1, #0xa
	movs r2, #0
	movs r3, #0
	bl sub_8003884
_0801B744:
	ldr r1, _0801B788
	ldr r2, [r1]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r2, r0
	bne _0801B7F0
	adds r4, r1, #0
	ldr r0, _0801B78C
	ldrb r0, [r0]
	cmp r0, #0
	beq _0801B798
_0801B75A:
	ldr r3, _0801B790
	adds r0, r3, #0
	adds r0, #0xf0
	ldrh r0, [r0]
	ldr r2, _0801B794
	adds r1, r3, #0
	adds r1, #0xf2
	ldrb r2, [r2]
	adds r1, r1, r2
	ldrb r1, [r1]
	adds r2, r3, #0
	adds r2, #0xf4
	ldr r2, [r2]
	movs r3, #0x80
	lsls r3, r3, #9
	adds r2, r2, r3
	bl audio_new_fx
	b _0801B79A
	.align 2, 0
_0801B780: .4byte gPlayerSprite
_0801B784: .4byte dword_2000FC8
_0801B788: .4byte dword_20020B8
_0801B78C: .4byte byte_203EA89
_0801B790: .4byte 0x080CE440
_0801B794: .4byte byte_203EA8C
_0801B798:
	adds r0, r2, #0
_0801B79A:
	str r0, [r4]
	b _0801B7F0
_0801B79E:
	ldr r2, _0801B7F8
	ldr r1, _0801B7FC
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0xc
	strh r0, [r1]
	ldr r4, _0801B800
	adds r0, r4, #0
	movs r1, #6
	bl sub_800378C
	ldr r0, _0801B804
	ldr r0, [r0]
	ldr r2, _0801B808
	ldrb r1, [r4, #0xa]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r2, [r1]
	movs r1, #0
	movs r3, #0
	bl sub_8003884
	ldr r5, _0801B80C
	ldr r1, [r5]
	movs r4, #1
	rsbs r4, r4, #0
	cmp r1, r4
	beq _0801B7E6
	ldr r0, _0801B810
	ldrb r0, [r0]
	cmp r0, #0
	beq _0801B7E4
	adds r0, r1, #0
	bl audio_halt_fx
_0801B7E4:
	str r4, [r5]
_0801B7E6:
	ldr r0, _0801B800
	ldrb r1, [r0, #0xa]
	movs r0, #0xf
	bl sub_8016790
_0801B7F0:
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801B7F8: .4byte gPreviousPlayerState
_0801B7FC: .4byte gPlayerState
_0801B800: .4byte gPlayerSprite
_0801B804: .4byte dword_2000FC8
_0801B808: .4byte dword_80CC290
_0801B80C: .4byte dword_20020B8
_0801B810: .4byte byte_203EA89

	.thumb
sub_801B814: @ 0x0801B814
	push {r4, r5, lr}
	sub sp, #8
	str r0, [sp]
	str r1, [sp, #4]
	add r1, sp, #4
	mov r0, sp
	bl sub_8016710
	ldr r4, _0801B854
	adds r0, r4, #0
	bl sub_80037A8
	cmp r0, #0
	bne _0801B832
	b _0801BBFA
_0801B832:
	ldr r1, [sp, #4]
	ldr r0, _0801B858
	ands r1, r0
	cmp r1, #1
	beq _0801B85C
	movs r0, #0x80
	lsls r0, r0, #2
	cmp r1, r0
	beq _0801B880
	ldr r1, [sp]
	movs r0, #0xf0
	ands r1, r0
	cmp r1, #0x50
	beq _0801B928
	cmp r1, #0x50
	bgt _0801B90E
	b _0801B8F4
	.align 2, 0
_0801B854: .4byte gPlayerSprite
_0801B858: .4byte 0x0000030F
_0801B85C:
	ldr r0, _0801B86C
	ldrb r0, [r0]
	cmp r0, #0
	beq _0801B870
	movs r0, #0
	bl sub_80186F4
	b _0801BBFA
	.align 2, 0
_0801B86C: .4byte gInInteractionArea
_0801B870:
	bl sub_08016EE0
	cmp r0, #0
	beq _0801B87A
	b _0801BBFA
_0801B87A:
	bl sub_8017480
	b _0801BBFA
_0801B880:
	ldr r2, _0801B8D8
	ldr r1, _0801B8DC
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0
	strh r0, [r1]
	adds r0, r4, #0
	movs r1, #0x19
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r0, _0801B8E0
	ldr r0, [r0]
	ldr r2, _0801B8E4
	ldrb r1, [r4, #0xa]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r2, [r1]
	movs r1, #0
	movs r3, #0
	bl sub_8003884
	ldr r5, _0801B8E8
	ldr r1, [r5]
	movs r4, #1
	rsbs r4, r4, #0
	cmp r1, r4
	beq _0801B8CA
	ldr r0, _0801B8EC
	ldrb r0, [r0]
	cmp r0, #0
	beq _0801B8C8
	adds r0, r1, #0
	bl audio_halt_fx
_0801B8C8:
	str r4, [r5]
_0801B8CA:
	ldr r0, _0801B8F0
	ldrb r1, [r0, #0xa]
	movs r0, #0
	bl sub_8016790
	b _0801BBFA
	.align 2, 0
_0801B8D8: .4byte gPreviousPlayerState
_0801B8DC: .4byte gPlayerState
_0801B8E0: .4byte dword_2000FC8
_0801B8E4: .4byte dword_80CC290
_0801B8E8: .4byte dword_20020B8
_0801B8EC: .4byte byte_203EA89
_0801B8F0: .4byte gPlayerSprite
_0801B8F4:
	cmp r1, #0x20
	bne _0801B8FA
	b _0801BAD4
_0801B8FA:
	cmp r1, #0x20
	bgt _0801B906
	cmp r1, #0x10
	bne _0801B904
	b _0801BB18
_0801B904:
	b _0801BBC0
_0801B906:
	cmp r1, #0x40
	bne _0801B90C
	b _0801BA50
_0801B90C:
	b _0801BBC0
_0801B90E:
	cmp r1, #0x80
	bne _0801B914
	b _0801BA94
_0801B914:
	cmp r1, #0x80
	bgt _0801B91E
	cmp r1, #0x60
	beq _0801BA10
	b _0801BBC0
_0801B91E:
	cmp r1, #0x90
	beq _0801B990
	cmp r1, #0xa0
	beq _0801B9D0
	b _0801BBC0
_0801B928:
	ldr r2, _0801B97C
	ldr r1, _0801B980
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0xa
	strh r0, [r1]
	movs r0, #1
	strb r0, [r4, #0xa]
	adds r0, r4, #0
	movs r1, #0x31
	movs r2, #7
	movs r3, #0
	bl sub_80033A4
	adds r0, r4, #0
	movs r1, #7
	bl sub_80037F4
	ldr r0, _0801B984
	ldr r0, [r0]
	movs r1, #0xa0
	lsls r1, r1, #0xa
	movs r2, #0xb4
	lsls r2, r2, #0xe
_0801B958:
	movs r3, #0
	bl sub_8003884
	ldr r1, _0801B988
	ldr r2, [r1]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r2, r0
	beq _0801B96C
	b _0801BBB0
_0801B96C:
	adds r4, r1, #0
	ldr r0, _0801B98C
	ldrb r0, [r0]
	cmp r0, #0
	beq _0801B978
	b _0801BB64
_0801B978:
	b _0801BBAC
	.align 2, 0
_0801B97C: .4byte gPreviousPlayerState
_0801B980: .4byte gPlayerState
_0801B984: .4byte dword_2000FC8
_0801B988: .4byte dword_20020B8
_0801B98C: .4byte byte_203EA89
_0801B990:
	ldr r2, _0801B9C0
	ldr r1, _0801B9C4
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0xa
	strh r0, [r1]
	movs r0, #3
	strb r0, [r4, #0xa]
	adds r0, r4, #0
	movs r1, #0x31
	movs r2, #7
	movs r3, #0
	bl sub_80033A4
	adds r0, r4, #0
	movs r1, #7
	bl sub_80037F4
	ldr r0, _0801B9C8
	ldr r0, [r0]
	movs r1, #0xa0
	lsls r1, r1, #0xa
	ldr r2, _0801B9CC
	b _0801B958
	.align 2, 0
_0801B9C0: .4byte gPreviousPlayerState
_0801B9C4: .4byte gPlayerState
_0801B9C8: .4byte dword_2000FC8
_0801B9CC: .4byte 0x013B0000
_0801B9D0:
	ldr r2, _0801BA04
	ldr r1, _0801BA08
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0xa
	strh r0, [r1]
	movs r0, #5
	strb r0, [r4, #0xa]
	adds r0, r4, #0
	movs r1, #0x31
	movs r2, #7
	movs r3, #0
	bl sub_80033A4
	adds r0, r4, #0
	movs r1, #7
	bl sub_80037F4
	ldr r0, _0801BA0C
	ldr r0, [r0]
	movs r1, #0xa0
	lsls r1, r1, #0xa
	movs r2, #0xe1
	lsls r2, r2, #0x10
	b _0801B958
	.align 2, 0
_0801BA04: .4byte gPreviousPlayerState
_0801BA08: .4byte gPlayerState
_0801BA0C: .4byte dword_2000FC8
_0801BA10:
	ldr r2, _0801BA44
	ldr r1, _0801BA48
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0xa
	strh r0, [r1]
	movs r0, #7
	strb r0, [r4, #0xa]
	adds r0, r4, #0
	movs r1, #0x31
	movs r2, #7
	movs r3, #0
	bl sub_80033A4
	adds r0, r4, #0
	movs r1, #7
	bl sub_80037F4
	ldr r0, _0801BA4C
	ldr r0, [r0]
	movs r1, #0xa0
	lsls r1, r1, #0xa
	movs r2, #0x87
	lsls r2, r2, #0x10
	b _0801B958
	.align 2, 0
_0801BA44: .4byte gPreviousPlayerState
_0801BA48: .4byte gPlayerState
_0801BA4C: .4byte dword_2000FC8
_0801BA50:
	ldr r2, _0801BA84
	ldr r1, _0801BA88
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0xa
	strh r0, [r1]
	ldr r4, _0801BA8C
	movs r0, #0
	strb r0, [r4, #0xa]
	adds r0, r4, #0
	movs r1, #0x31
	movs r2, #7
	movs r3, #0
	bl sub_80033A4
	adds r0, r4, #0
	movs r1, #7
	bl sub_80037F4
	ldr r0, _0801BA90
	ldr r0, [r0]
	movs r1, #0xa0
	lsls r1, r1, #0xa
	movs r2, #0xb4
	lsls r2, r2, #0xf
	b _0801B958
	.align 2, 0
_0801BA84: .4byte gPreviousPlayerState
_0801BA88: .4byte gPlayerState
_0801BA8C: .4byte gPlayerSprite
_0801BA90: .4byte dword_2000FC8
_0801BA94:
	ldr r2, _0801BAC8
	ldr r1, _0801BACC
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0xa
	strh r0, [r1]
	movs r0, #4
	strb r0, [r4, #0xa]
	adds r0, r4, #0
	movs r1, #0x31
	movs r2, #7
	movs r3, #0
	bl sub_80033A4
	adds r0, r4, #0
	movs r1, #7
	bl sub_80037F4
	ldr r0, _0801BAD0
	ldr r0, [r0]
	movs r1, #0xa0
	lsls r1, r1, #0xa
	movs r2, #0x87
	lsls r2, r2, #0x11
	b _0801B958
	.align 2, 0
_0801BAC8: .4byte gPreviousPlayerState
_0801BACC: .4byte gPlayerState
_0801BAD0: .4byte dword_2000FC8
_0801BAD4:
	ldr r2, _0801BB08
	ldr r1, _0801BB0C
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0xa
	strh r0, [r1]
	ldr r4, _0801BB10
	movs r0, #6
	strb r0, [r4, #0xa]
	adds r0, r4, #0
	movs r1, #0x31
	movs r2, #7
	movs r3, #0
	bl sub_80033A4
	adds r0, r4, #0
	movs r1, #7
	bl sub_80037F4
	ldr r0, _0801BB14
	ldr r0, [r0]
	movs r1, #0xa0
	lsls r1, r1, #0xa
	movs r2, #0xb4
	lsls r2, r2, #0x10
	b _0801B958
	.align 2, 0
_0801BB08: .4byte gPreviousPlayerState
_0801BB0C: .4byte gPlayerState
_0801BB10: .4byte gPlayerSprite
_0801BB14: .4byte dword_2000FC8
_0801BB18:
	ldr r2, _0801BB8C
	ldr r1, _0801BB90
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0xa
	strh r0, [r1]
	ldr r4, _0801BB94
	movs r0, #2
	strb r0, [r4, #0xa]
	adds r0, r4, #0
	movs r1, #0x31
	movs r2, #7
	movs r3, #0
	bl sub_80033A4
	adds r0, r4, #0
	movs r1, #7
	bl sub_80037F4
	ldr r0, _0801BB98
	ldr r0, [r0]
	movs r1, #0xa0
	lsls r1, r1, #0xa
	movs r2, #0
	movs r3, #0
	bl sub_8003884
	ldr r1, _0801BB9C
	ldr r2, [r1]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r2, r0
	bne _0801BBB0
	adds r4, r1, #0
	ldr r0, _0801BBA0
	ldrb r0, [r0]
	cmp r0, #0
	beq _0801BBAC
_0801BB64:
	ldr r3, _0801BBA4
	adds r0, r3, #0
	adds r0, #0xf0
	ldrh r0, [r0]
	ldr r2, _0801BBA8
	adds r1, r3, #0
	adds r1, #0xf2
	ldrb r2, [r2]
	adds r1, r1, r2
	ldrb r1, [r1]
	adds r2, r3, #0
	adds r2, #0xf4
	ldr r2, [r2]
	movs r3, #0x80
	lsls r3, r3, #9
	adds r2, r2, r3
	bl audio_new_fx
	b _0801BBAE
	.align 2, 0
_0801BB8C: .4byte gPreviousPlayerState
_0801BB90: .4byte gPlayerState
_0801BB94: .4byte gPlayerSprite
_0801BB98: .4byte dword_2000FC8
_0801BB9C: .4byte dword_20020B8
_0801BBA0: .4byte byte_203EA89
_0801BBA4: .4byte 0x080CE440
_0801BBA8: .4byte byte_203EA8C
_0801BBAC:
	adds r0, r2, #0
_0801BBAE:
	str r0, [r4]
_0801BBB0:
	ldr r0, _0801BBBC
	ldrb r1, [r0, #0xa]
	movs r0, #0xf
	bl sub_8016790
	b _0801BBFA
	.align 2, 0
_0801BBBC: .4byte gPlayerSprite
_0801BBC0:
	ldr r2, _0801BC04
	ldr r1, _0801BC08
	ldrh r0, [r2]
	ldrh r3, [r1]
	cmp r0, r3
	beq _0801BBFA
	strh r0, [r1]
	movs r0, #0xc
	strh r0, [r2]
	ldr r4, _0801BC0C
	adds r0, r4, #0
	movs r1, #6
	bl sub_800378C
	ldr r0, _0801BC10
	ldr r0, [r0]
	ldr r2, _0801BC14
	ldrb r1, [r4, #0xa]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r2, [r1]
	movs r1, #0
	movs r3, #0
	bl sub_8003884
	ldrb r1, [r4, #0xa]
	movs r0, #0xf
	bl sub_8016790
_0801BBFA:
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801BC04: .4byte gPlayerState
_0801BC08: .4byte gPreviousPlayerState
_0801BC0C: .4byte gPlayerSprite
_0801BC10: .4byte dword_2000FC8
_0801BC14: .4byte dword_80CC290

	.thumb
sub_801BC18: @ 0x0801BC18
	push {r4, r5, lr}
	sub sp, #8
	str r0, [sp]
	str r1, [sp, #4]
	add r1, sp, #4
	mov r0, sp
	bl sub_8016710
	ldr r0, [sp]
	ldr r1, [sp, #4]
	bl sub_8016624
	ldr r0, [sp, #4]
	ldr r1, _0801BC40
	ands r0, r1
	cmp r0, #2
	bne _0801BC44
	bl DoAirAttack
	b _0801BDEE
	.align 2, 0
_0801BC40: .4byte 0x0000030F
_0801BC44:
	ldr r5, _0801BC8C
	ldr r0, [r5]
	bl sub_80038BC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0801BC6A
	ldr r2, _0801BC90
	ldr r1, _0801BC94
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0x14
	strh r0, [r1]
	ldr r0, _0801BC98
	movs r1, #0xc9
	movs r2, #0
	movs r3, #1
	bl sub_8003368
_0801BC6A:
	ldr r1, [sp]
	movs r0, #0xf0
	ands r1, r0
	cmp r1, #0x50
	beq _0801BCBA
	cmp r1, #0x50
	bgt _0801BCA2
	cmp r1, #0x20
	bne _0801BC7E
	b _0801BD68
_0801BC7E:
	cmp r1, #0x20
	bgt _0801BC9C
	cmp r1, #0x10
	bne _0801BC88
	b _0801BD84
_0801BC88:
	b _0801BDC8
	.align 2, 0
_0801BC8C: .4byte dword_2000FC8
_0801BC90: .4byte gPreviousPlayerState
_0801BC94: .4byte gPlayerState
_0801BC98: .4byte gPlayerSprite
_0801BC9C:
	cmp r1, #0x40
	beq _0801BD30
	b _0801BDC8
_0801BCA2:
	cmp r1, #0x80
	beq _0801BD4C
	cmp r1, #0x80
	bgt _0801BCB0
	cmp r1, #0x60
	beq _0801BD14
	b _0801BDC8
_0801BCB0:
	cmp r1, #0x90
	beq _0801BCD8
	cmp r1, #0xa0
	beq _0801BCF8
	b _0801BDC8
_0801BCBA:
	ldr r4, _0801BCD4
	ldrb r0, [r4, #0xa]
	cmp r0, #1
	bne _0801BCD0
	ldr r0, [r5]
	bl sub_80038AC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0801BCD0
	b _0801BDEE
_0801BCD0:
	movs r0, #1
	b _0801BD9A
	.align 2, 0
_0801BCD4: .4byte gPlayerSprite
_0801BCD8:
	ldr r4, _0801BCF4
	ldrb r0, [r4, #0xa]
	cmp r0, #3
	bne _0801BCEE
	ldr r0, [r5]
	bl sub_80038AC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0801BCEE
	b _0801BDEE
_0801BCEE:
	movs r0, #3
	b _0801BD9A
	.align 2, 0
_0801BCF4: .4byte gPlayerSprite
_0801BCF8:
	ldr r4, _0801BD10
	ldrb r0, [r4, #0xa]
	cmp r0, #5
	bne _0801BD0C
	ldr r0, [r5]
	bl sub_80038AC
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0801BDEE
_0801BD0C:
	movs r0, #5
	b _0801BD9A
	.align 2, 0
_0801BD10: .4byte gPlayerSprite
_0801BD14:
	ldr r4, _0801BD2C
	ldrb r0, [r4, #0xa]
	cmp r0, #7
	bne _0801BD28
	ldr r0, [r5]
	bl sub_80038AC
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0801BDEE
_0801BD28:
	movs r0, #7
	b _0801BD9A
	.align 2, 0
_0801BD2C: .4byte gPlayerSprite
_0801BD30:
	ldr r4, _0801BD48
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _0801BD44
	ldr r0, [r5]
	bl sub_80038AC
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0801BDEE
_0801BD44:
	movs r0, #0
	b _0801BD9A
	.align 2, 0
_0801BD48: .4byte gPlayerSprite
_0801BD4C:
	ldr r4, _0801BD64
	ldrb r0, [r4, #0xa]
	cmp r0, #4
	bne _0801BD60
	ldr r0, [r5]
	bl sub_80038AC
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0801BDEE
_0801BD60:
	movs r0, #4
	b _0801BD9A
	.align 2, 0
_0801BD64: .4byte gPlayerSprite
_0801BD68:
	ldr r4, _0801BD80
	ldrb r0, [r4, #0xa]
	cmp r0, #6
	bne _0801BD7C
	ldr r0, [r5]
	bl sub_80038AC
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0801BDEE
_0801BD7C:
	movs r0, #6
	b _0801BD9A
	.align 2, 0
_0801BD80: .4byte gPlayerSprite
_0801BD84:
	ldr r4, _0801BDC0
	ldrb r0, [r4, #0xa]
	cmp r0, #2
	bne _0801BD98
	ldr r0, [r5]
	bl sub_80038AC
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0801BDEE
_0801BD98:
	movs r0, #2
_0801BD9A:
	strb r0, [r4, #0xa]
	adds r0, r4, #0
	movs r1, #0xc1
	movs r2, #0
	movs r3, #1
	bl sub_8003368
	ldr r0, [r5]
	movs r1, #0xa0
	lsls r1, r1, #0xa
	ldr r3, _0801BDC4
	ldrb r2, [r4, #0xa]
	lsls r2, r2, #2
	adds r2, r2, r3
	ldr r2, [r2]
	movs r3, #0
	bl sub_8003884
	b _0801BDEE
	.align 2, 0
_0801BDC0: .4byte gPlayerSprite
_0801BDC4: .4byte dword_80CC290
_0801BDC8:
	ldr r4, _0801BDF8
	ldr r0, [r4]
	bl sub_80038AC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0801BDEE
	ldr r0, [r4]
	movs r1, #0xc0
	lsls r1, r1, #6
	ldr r3, _0801BDFC
	ldr r2, _0801BE00
	ldrb r2, [r2, #0xa]
	lsls r2, r2, #2
	adds r2, r2, r3
	ldr r2, [r2]
	movs r3, #0
	bl sub_8003884
_0801BDEE:
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801BDF8: .4byte dword_2000FC8
_0801BDFC: .4byte dword_80CC290
_0801BE00: .4byte gPlayerSprite

	.thumb
sub_801BE04: @ 0x0801BE04
	push {r4, lr}
	sub sp, #8
	str r0, [sp]
	str r1, [sp, #4]
	add r1, sp, #4
	mov r0, sp
	bl sub_8016710
	ldr r0, [sp, #4]
	ldr r1, _0801BE24
	ands r0, r1
	cmp r0, #2
	bne _0801BE28
	bl DoAirAttack
	b _0801BFD6
	.align 2, 0
_0801BE24: .4byte 0x0000030F
_0801BE28:
	ldr r1, [sp]
	movs r0, #0xf0
	ands r1, r0
	cmp r1, #0x50
	beq _0801BE66
	cmp r1, #0x50
	bgt _0801BE4E
	cmp r1, #0x20
	bne _0801BE3C
	b _0801BF40
_0801BE3C:
	cmp r1, #0x20
	bgt _0801BE48
	cmp r1, #0x10
	bne _0801BE46
	b _0801BF64
_0801BE46:
	b _0801BFB0
_0801BE48:
	cmp r1, #0x40
	beq _0801BEF8
	b _0801BFB0
_0801BE4E:
	cmp r1, #0x80
	beq _0801BF1C
	cmp r1, #0x80
	bgt _0801BE5C
	cmp r1, #0x60
	beq _0801BED4
	b _0801BFB0
_0801BE5C:
	cmp r1, #0x90
	beq _0801BE8C
	cmp r1, #0xa0
	beq _0801BEB0
	b _0801BFB0
_0801BE66:
	ldr r4, _0801BE84
	ldrb r0, [r4, #0xa]
	cmp r0, #1
	bne _0801BE7E
	ldr r0, _0801BE88
	ldr r0, [r0]
	bl sub_80038AC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0801BE7E
	b _0801BFD6
_0801BE7E:
	movs r0, #1
	b _0801BF7C
	.align 2, 0
_0801BE84: .4byte gPlayerSprite
_0801BE88: .4byte dword_2000FC8
_0801BE8C:
	ldr r4, _0801BEA8
	ldrb r0, [r4, #0xa]
	cmp r0, #3
	bne _0801BEA4
	ldr r0, _0801BEAC
	ldr r0, [r0]
	bl sub_80038AC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0801BEA4
	b _0801BFD6
_0801BEA4:
	movs r0, #3
	b _0801BF7C
	.align 2, 0
_0801BEA8: .4byte gPlayerSprite
_0801BEAC: .4byte dword_2000FC8
_0801BEB0:
	ldr r4, _0801BECC
	ldrb r0, [r4, #0xa]
	cmp r0, #5
	bne _0801BEC8
	ldr r0, _0801BED0
	ldr r0, [r0]
	bl sub_80038AC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0801BEC8
	b _0801BFD6
_0801BEC8:
	movs r0, #5
	b _0801BF7C
	.align 2, 0
_0801BECC: .4byte gPlayerSprite
_0801BED0: .4byte dword_2000FC8
_0801BED4:
	ldr r4, _0801BEF0
	ldrb r0, [r4, #0xa]
	cmp r0, #7
	bne _0801BEEA
	ldr r0, _0801BEF4
	ldr r0, [r0]
	bl sub_80038AC
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0801BFD6
_0801BEEA:
	movs r0, #7
	b _0801BF7C
	.align 2, 0
_0801BEF0: .4byte gPlayerSprite
_0801BEF4: .4byte dword_2000FC8
_0801BEF8:
	ldr r4, _0801BF14
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _0801BF0E
	ldr r0, _0801BF18
	ldr r0, [r0]
	bl sub_80038AC
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0801BFD6
_0801BF0E:
	movs r0, #0
	b _0801BF7C
	.align 2, 0
_0801BF14: .4byte gPlayerSprite
_0801BF18: .4byte dword_2000FC8
_0801BF1C:
	ldr r4, _0801BF38
	ldrb r0, [r4, #0xa]
	cmp r0, #4
	bne _0801BF32
	ldr r0, _0801BF3C
	ldr r0, [r0]
	bl sub_80038AC
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0801BFD6
_0801BF32:
	movs r0, #4
	b _0801BF7C
	.align 2, 0
_0801BF38: .4byte gPlayerSprite
_0801BF3C: .4byte dword_2000FC8
_0801BF40:
	ldr r4, _0801BF5C
	ldrb r0, [r4, #0xa]
	cmp r0, #6
	bne _0801BF56
	ldr r0, _0801BF60
	ldr r0, [r0]
	bl sub_80038AC
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0801BFD6
_0801BF56:
	movs r0, #6
	b _0801BF7C
	.align 2, 0
_0801BF5C: .4byte gPlayerSprite
_0801BF60: .4byte dword_2000FC8
_0801BF64:
	ldr r4, _0801BFA4
	ldrb r0, [r4, #0xa]
	cmp r0, #2
	bne _0801BF7A
	ldr r0, _0801BFA8
	ldr r0, [r0]
	bl sub_80038AC
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0801BFD6
_0801BF7A:
	movs r0, #2
_0801BF7C:
	strb r0, [r4, #0xa]
	adds r0, r4, #0
	movs r1, #0xc9
	movs r2, #0
	movs r3, #1
	bl sub_8003368
	ldr r0, _0801BFA8
	ldr r0, [r0]
	movs r1, #0xa0
	lsls r1, r1, #0xa
	ldr r3, _0801BFAC
	ldrb r2, [r4, #0xa]
	lsls r2, r2, #2
	adds r2, r2, r3
	ldr r2, [r2]
	movs r3, #0
	bl sub_8003884
	b _0801BFD6
	.align 2, 0
_0801BFA4: .4byte gPlayerSprite
_0801BFA8: .4byte dword_2000FC8
_0801BFAC: .4byte dword_80CC290
_0801BFB0:
	ldr r4, _0801BFE0
	ldr r0, [r4]
	bl sub_80038AC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0801BFD6
	ldr r0, [r4]
	movs r1, #0xc0
	lsls r1, r1, #6
	ldr r3, _0801BFE4
	ldr r2, _0801BFE8
	ldrb r2, [r2, #0xa]
	lsls r2, r2, #2
	adds r2, r2, r3
	ldr r2, [r2]
	movs r3, #0
	bl sub_8003884
_0801BFD6:
	add sp, #8
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801BFE0: .4byte dword_2000FC8
_0801BFE4: .4byte dword_80CC290
_0801BFE8: .4byte gPlayerSprite

	.thumb
sub_801BFEC: @ 0x0801BFEC
	push {r4, r5, lr}
	sub sp, #8
	str r0, [sp]
	str r1, [sp, #4]
	add r1, sp, #4
	mov r0, sp
	bl sub_8016710
	ldr r5, _0801C05C
	adds r0, r5, #0
	bl sub_8003770
	cmp r0, #0
	beq _0801C0E2
	ldr r0, _0801C060
	ldrb r0, [r0, #0x13]
	cmp r0, #0
	bne _0801C0A4
	ldr r0, _0801C064
	ldrb r0, [r0]
	cmp r0, #0
	beq _0801C078
	bl sub_800F7A0
	ldr r2, _0801C068
	ldr r1, _0801C06C
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0xc
	strh r0, [r1]
	adds r0, r5, #0
	movs r1, #0x31
	movs r2, #7
	movs r3, #0
	bl sub_8003368
	adds r0, r5, #0
	movs r1, #7
	bl sub_80037F4
	ldrb r1, [r5, #0xa]
	movs r0, #0xf
	bl sub_8016790
	ldr r0, _0801C070
	ldr r0, [r0]
	ldr r2, _0801C074
	ldrb r1, [r5, #0xa]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r2, [r1]
	movs r1, #0
	movs r3, #0
	bl sub_8003884
	b _0801C0E2
	.align 2, 0
_0801C05C: .4byte gPlayerSprite
_0801C060: .4byte gGameStatus
_0801C064: .4byte 0x02001370
_0801C068: .4byte gPreviousPlayerState
_0801C06C: .4byte gPlayerState
_0801C070: .4byte dword_2000FC8
_0801C074: .4byte dword_80CC290
_0801C078:
	ldr r4, _0801C09C
	ldr r0, [r4]
	ldr r2, _0801C0A0
	ldrb r1, [r5, #0xa]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r2, [r1]
	movs r1, #0
	movs r3, #0
	bl sub_8003884
	ldr r0, [r4]
	bl sub_800387C
	bl sub_8016890
	b _0801C0E2
	.align 2, 0
_0801C09C: .4byte dword_2000FC8
_0801C0A0: .4byte dword_80CC290
_0801C0A4:
	ldr r2, _0801C0EC
	ldr r1, _0801C0F0
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0xc
	strh r0, [r1]
	adds r0, r5, #0
	movs r1, #0x31
	movs r2, #7
	movs r3, #0
	bl sub_8003368
	adds r0, r5, #0
	movs r1, #7
	bl sub_80037F4
	ldrb r1, [r5, #0xa]
	movs r0, #0xf
	bl sub_8016790
	ldr r0, _0801C0F4
	ldr r0, [r0]
	ldr r2, _0801C0F8
	ldrb r1, [r5, #0xa]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r2, [r1]
	movs r1, #0
	movs r3, #0
	bl sub_8003884
_0801C0E2:
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801C0EC: .4byte gPreviousPlayerState
_0801C0F0: .4byte gPlayerState
_0801C0F4: .4byte dword_2000FC8
_0801C0F8: .4byte dword_80CC290

	.thumb
sub_801C0FC: @ 0x0801C0FC
	push {lr}
	sub sp, #8
	str r0, [sp]
	str r1, [sp, #4]
	add r1, sp, #4
	mov r0, sp
	bl sub_8016710
	ldr r0, [sp, #4]
	ldr r1, _0801C120
	ands r0, r1
	cmp r0, #2
	bne _0801C11A
	bl DoAirAttack
_0801C11A:
	add sp, #8
	pop {r0}
	bx r0
	.align 2, 0
_0801C120: .4byte 0x0000030F

	.thumb
sub_801C124: @ 0x0801C124
	push {lr}
	sub sp, #8
	str r0, [sp]
	str r1, [sp, #4]
	add r1, sp, #4
	mov r0, sp
	bl sub_8016710
	ldr r0, [sp, #4]
	ldr r1, _0801C148
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #2
	cmp r0, r1
	bne _0801C14C
	bl DoBillDrill
	b _0801C172
	.align 2, 0
_0801C148: .4byte 0x0000030F
_0801C14C:
	ldr r0, _0801C178
	ldr r0, [r0]
	bl sub_80038BC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0801C172
	ldr r2, _0801C17C
	ldr r1, _0801C180
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0x15
	strh r0, [r1]
	ldr r0, _0801C184
	movs r1, #0x51
	movs r2, #0
	movs r3, #1
	bl sub_8003368
_0801C172:
	add sp, #8
	pop {r0}
	bx r0
	.align 2, 0
_0801C178: .4byte dword_2000FC8
_0801C17C: .4byte gPreviousPlayerState
_0801C180: .4byte gPlayerState
_0801C184: .4byte gPlayerSprite

	.thumb
sub_801C188: @ 0x0801C188
	push {r4, lr}
	sub sp, #8
	str r0, [sp]
	str r1, [sp, #4]
	add r1, sp, #4
	mov r0, sp
	bl sub_8016710
	ldr r0, [sp, #4]
	ldr r1, _0801C1AC
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #2
	cmp r0, r1
	bne _0801C1B0
	bl DoBillDrill
	b _0801C354
	.align 2, 0
_0801C1AC: .4byte 0x0000030F
_0801C1B0:
	ldr r1, [sp]
	movs r0, #0xf0
	ands r1, r0
	cmp r1, #0x50
	beq _0801C1EE
	cmp r1, #0x50
	bgt _0801C1D6
	cmp r1, #0x20
	bne _0801C1C4
	b _0801C2C8
_0801C1C4:
	cmp r1, #0x20
	bgt _0801C1D0
	cmp r1, #0x10
	bne _0801C1CE
	b _0801C318
_0801C1CE:
	b _0801C354
_0801C1D0:
	cmp r1, #0x40
	beq _0801C280
	b _0801C354
_0801C1D6:
	cmp r1, #0x80
	beq _0801C2A4
	cmp r1, #0x80
	bgt _0801C1E4
	cmp r1, #0x60
	beq _0801C25C
	b _0801C354
_0801C1E4:
	cmp r1, #0x90
	beq _0801C214
	cmp r1, #0xa0
	beq _0801C238
	b _0801C354
_0801C1EE:
	ldr r4, _0801C20C
	ldrb r0, [r4, #0xa]
	cmp r0, #1
	bne _0801C206
	ldr r0, _0801C210
	ldr r0, [r0]
	bl sub_80038AC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0801C206
	b _0801C354
_0801C206:
	movs r0, #1
	b _0801C2E0
	.align 2, 0
_0801C20C: .4byte gPlayerSprite
_0801C210: .4byte dword_2000FC8
_0801C214:
	ldr r4, _0801C230
	ldrb r0, [r4, #0xa]
	cmp r0, #3
	bne _0801C22C
	ldr r0, _0801C234
	ldr r0, [r0]
	bl sub_80038AC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0801C22C
	b _0801C354
_0801C22C:
	movs r0, #3
	b _0801C2E0
	.align 2, 0
_0801C230: .4byte gPlayerSprite
_0801C234: .4byte dword_2000FC8
_0801C238:
	ldr r4, _0801C254
	ldrb r0, [r4, #0xa]
	cmp r0, #5
	bne _0801C250
	ldr r0, _0801C258
	ldr r0, [r0]
	bl sub_80038AC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0801C250
	b _0801C354
_0801C250:
	movs r0, #5
	b _0801C2E0
	.align 2, 0
_0801C254: .4byte gPlayerSprite
_0801C258: .4byte dword_2000FC8
_0801C25C:
	ldr r4, _0801C278
	ldrb r0, [r4, #0xa]
	cmp r0, #7
	bne _0801C272
	ldr r0, _0801C27C
	ldr r0, [r0]
	bl sub_80038AC
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0801C354
_0801C272:
	movs r0, #7
	b _0801C2E0
	.align 2, 0
_0801C278: .4byte gPlayerSprite
_0801C27C: .4byte dword_2000FC8
_0801C280:
	ldr r4, _0801C29C
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _0801C296
	ldr r0, _0801C2A0
	ldr r0, [r0]
	bl sub_80038AC
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0801C354
_0801C296:
	movs r0, #0
	b _0801C2E0
	.align 2, 0
_0801C29C: .4byte gPlayerSprite
_0801C2A0: .4byte dword_2000FC8
_0801C2A4:
	ldr r4, _0801C2C0
	ldrb r0, [r4, #0xa]
	cmp r0, #4
	bne _0801C2BA
	ldr r0, _0801C2C4
	ldr r0, [r0]
	bl sub_80038AC
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0801C354
_0801C2BA:
	movs r0, #4
	b _0801C2E0
	.align 2, 0
_0801C2C0: .4byte gPlayerSprite
_0801C2C4: .4byte dword_2000FC8
_0801C2C8:
	ldr r4, _0801C308
	ldrb r0, [r4, #0xa]
	cmp r0, #6
	bne _0801C2DE
	ldr r0, _0801C30C
	ldr r0, [r0]
	bl sub_80038AC
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0801C354
_0801C2DE:
	movs r0, #6
_0801C2E0:
	strb r0, [r4, #0xa]
	adds r0, r4, #0
	movs r1, #0x51
	movs r2, #0
	movs r3, #1
	bl sub_8003368
	ldr r0, _0801C30C
	ldr r0, [r0]
	ldr r1, _0801C310
	ldr r3, _0801C314
	ldrb r2, [r4, #0xa]
	lsls r2, r2, #2
	adds r2, r2, r3
	ldr r2, [r2]
	movs r3, #0
	bl sub_8003884
	b _0801C354
	.align 2, 0
_0801C308: .4byte gPlayerSprite
_0801C30C: .4byte dword_2000FC8
_0801C310: .4byte 0x00019999
_0801C314: .4byte dword_80CC290
_0801C318:
	ldr r4, _0801C35C
	ldrb r0, [r4, #0xa]
	cmp r0, #2
	bne _0801C32E
	ldr r0, _0801C360
	ldr r0, [r0]
	bl sub_80038AC
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0801C354
_0801C32E:
	movs r0, #2
	strb r0, [r4, #0xa]
	adds r0, r4, #0
	movs r1, #0x51
	movs r2, #0
	movs r3, #1
	bl sub_8003368
	ldr r0, _0801C360
	ldr r0, [r0]
	ldr r1, _0801C364
	ldr r3, _0801C368
	ldrb r2, [r4, #0xa]
	lsls r2, r2, #2
	adds r2, r2, r3
	ldr r2, [r2]
	movs r3, #0
	bl sub_8003884
_0801C354:
	add sp, #8
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801C35C: .4byte gPlayerSprite
_0801C360: .4byte dword_2000FC8
_0801C364: .4byte 0x00019999
_0801C368: .4byte dword_80CC290

	.thumb
sub_801C36C: @ 0x0801C36C
	push {r4, r5, lr}
	sub sp, #8
	str r0, [sp]
	str r1, [sp, #4]
	add r1, sp, #4
	mov r0, sp
	bl sub_8016710
	ldr r4, _0801C394
	adds r0, r4, #0
	bl sub_8003770
	adds r5, r0, #0
	cmp r5, #0
	beq _0801C39C
	ldr r0, _0801C398
	bl sub_80181B8
	b _0801C522
	.align 2, 0
_0801C394: .4byte gPlayerSprite
_0801C398: .4byte 0x030032D4
_0801C39C:
	ldr r0, [sp, #4]
	ldr r1, _0801C3B0
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #2
	cmp r0, r1
	bne _0801C3B4
	bl DoBillDrill
	b _0801C522
	.align 2, 0
_0801C3B0: .4byte 0x0000030F
_0801C3B4:
	ldr r1, [sp]
	movs r0, #0xf0
	ands r1, r0
	cmp r1, #0x50
	beq _0801C3F0
	cmp r1, #0x50
	bgt _0801C3D8
	cmp r1, #0x20
	beq _0801C4A0
	cmp r1, #0x20
	bgt _0801C3D2
	cmp r1, #0x10
	bne _0801C3D0
	b _0801C4E8
_0801C3D0:
	b _0801C522
_0801C3D2:
	cmp r1, #0x40
	beq _0801C468
	b _0801C522
_0801C3D8:
	cmp r1, #0x80
	beq _0801C484
	cmp r1, #0x80
	bgt _0801C3E6
	cmp r1, #0x60
	beq _0801C44C
	b _0801C522
_0801C3E6:
	cmp r1, #0x90
	beq _0801C410
	cmp r1, #0xa0
	beq _0801C430
	b _0801C522
_0801C3F0:
	ldrb r0, [r4, #0xa]
	cmp r0, #1
	bne _0801C406
	ldr r0, _0801C40C
	ldr r0, [r0]
	bl sub_80038AC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0801C406
	b _0801C522
_0801C406:
	movs r0, #1
	b _0801C4B6
	.align 2, 0
_0801C40C: .4byte dword_2000FC8
_0801C410:
	ldrb r0, [r4, #0xa]
	cmp r0, #3
	bne _0801C426
	ldr r0, _0801C42C
	ldr r0, [r0]
	bl sub_80038AC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0801C426
	b _0801C522
_0801C426:
	movs r0, #3
	b _0801C4B6
	.align 2, 0
_0801C42C: .4byte dword_2000FC8
_0801C430:
	ldrb r0, [r4, #0xa]
	cmp r0, #5
	bne _0801C444
	ldr r0, _0801C448
	ldr r0, [r0]
	bl sub_80038AC
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0801C522
_0801C444:
	movs r0, #5
	b _0801C4B6
	.align 2, 0
_0801C448: .4byte dword_2000FC8
_0801C44C:
	ldrb r0, [r4, #0xa]
	cmp r0, #7
	bne _0801C460
	ldr r0, _0801C464
	ldr r0, [r0]
	bl sub_80038AC
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0801C522
_0801C460:
	movs r0, #7
	b _0801C4B6
	.align 2, 0
_0801C464: .4byte dword_2000FC8
_0801C468:
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _0801C47C
	ldr r0, _0801C480
	ldr r0, [r0]
	bl sub_80038AC
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0801C522
_0801C47C:
	strb r5, [r4, #0xa]
	b _0801C4B8
	.align 2, 0
_0801C480: .4byte dword_2000FC8
_0801C484:
	ldrb r0, [r4, #0xa]
	cmp r0, #4
	bne _0801C498
	ldr r0, _0801C49C
	ldr r0, [r0]
	bl sub_80038AC
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0801C522
_0801C498:
	movs r0, #4
	b _0801C4B6
	.align 2, 0
_0801C49C: .4byte dword_2000FC8
_0801C4A0:
	ldrb r0, [r4, #0xa]
	cmp r0, #6
	bne _0801C4B4
	ldr r0, _0801C4DC
	ldr r0, [r0]
	bl sub_80038AC
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0801C522
_0801C4B4:
	movs r0, #6
_0801C4B6:
	strb r0, [r4, #0xa]
_0801C4B8:
	adds r0, r4, #0
	movs r1, #0x59
	movs r2, #0
	movs r3, #1
	bl sub_80033A4
	ldr r0, _0801C4DC
	ldr r0, [r0]
	ldr r1, _0801C4E0
	ldr r3, _0801C4E4
	ldrb r2, [r4, #0xa]
	lsls r2, r2, #2
	adds r2, r2, r3
	ldr r2, [r2]
	movs r3, #0
	bl sub_8003884
	b _0801C522
	.align 2, 0
_0801C4DC: .4byte dword_2000FC8
_0801C4E0: .4byte 0x00019999
_0801C4E4: .4byte dword_80CC290
_0801C4E8:
	ldrb r0, [r4, #0xa]
	cmp r0, #2
	bne _0801C4FC
	ldr r0, _0801C52C
	ldr r0, [r0]
	bl sub_80038AC
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0801C522
_0801C4FC:
	movs r0, #2
	strb r0, [r4, #0xa]
	adds r0, r4, #0
	movs r1, #0x59
	movs r2, #0
	movs r3, #1
	bl sub_80033A4
	ldr r0, _0801C52C
	ldr r0, [r0]
	ldr r1, _0801C530
	ldr r3, _0801C534
	ldrb r2, [r4, #0xa]
	lsls r2, r2, #2
	adds r2, r2, r3
	ldr r2, [r2]
	movs r3, #0
	bl sub_8003884
_0801C522:
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801C52C: .4byte dword_2000FC8
_0801C530: .4byte 0x00019999
_0801C534: .4byte dword_80CC290

	.thumb
sub_801C538: @ 0x0801C538
	push {r4, lr}
	sub sp, #8
	str r0, [sp]
	str r1, [sp, #4]
	add r1, sp, #4
	mov r0, sp
	bl sub_8016710
	ldr r4, _0801C568
	ldr r0, [r4]
	bl audio_fx_still_active
	cmp r0, #0
	bne _0801C620
	ldr r1, _0801C56C
	ldrb r0, [r1]
	cmp r0, #1
	beq _0801C5AC
	cmp r0, #1
	bgt _0801C570
	cmp r0, #0
	beq _0801C576
	b _0801C620
	.align 2, 0
_0801C568: .4byte 0x020021D0
_0801C56C: .4byte 0x020021C8
_0801C570:
	cmp r0, #2
	beq _0801C5E8
	b _0801C620
_0801C576:
	movs r0, #1
	strb r0, [r1]
	ldr r0, _0801C5A0
	ldrb r0, [r0]
	cmp r0, #0
	beq _0801C5E0
	ldr r1, _0801C5A4
	adds r0, r1, #0
	adds r0, #0xe8
	ldrh r0, [r0]
	ldr r2, _0801C5A8
	adds r1, #0xea
	ldrb r2, [r2]
	adds r1, r1, r2
	ldrb r1, [r1]
	movs r2, #0x80
	lsls r2, r2, #9
	bl audio_new_fx
	b _0801C5E4
	.align 2, 0
_0801C5A0: .4byte byte_203EA89
_0801C5A4: .4byte 0x080CE440
_0801C5A8: .4byte byte_203EA8C
_0801C5AC:
	movs r0, #2
	strb r0, [r1]
	ldr r0, _0801C5D4
	ldrb r0, [r0]
	cmp r0, #0
	beq _0801C5E0
	ldr r1, _0801C5D8
	adds r0, r1, #0
	adds r0, #0xe8
	ldrh r0, [r0]
	ldr r2, _0801C5DC
	adds r1, #0xea
	ldrb r2, [r2]
	adds r1, r1, r2
	ldrb r1, [r1]
	movs r2, #0x90
	lsls r2, r2, #9
	bl audio_new_fx
	b _0801C5E4
	.align 2, 0
_0801C5D4: .4byte byte_203EA89
_0801C5D8: .4byte 0x080CE440
_0801C5DC: .4byte byte_203EA8C
_0801C5E0:
	movs r0, #1
	rsbs r0, r0, #0
_0801C5E4:
	str r0, [r4]
	b _0801C620
_0801C5E8:
	ldr r0, _0801C614
	bl sub_8003770
	cmp r0, #0
	beq _0801C620
	ldr r0, [r4]
	bl audio_fx_still_active
	cmp r0, #0
	beq _0801C60A
	ldr r0, _0801C618
	ldrb r0, [r0]
	cmp r0, #0
	beq _0801C60A
	ldr r0, [r4]
	bl audio_halt_fx
_0801C60A:
	ldr r0, _0801C61C
	bl sub_80181B8
	b _0801C72A
	.align 2, 0
_0801C614: .4byte gPlayerSprite
_0801C618: .4byte byte_203EA89
_0801C61C: .4byte 0x030032D4
_0801C620:
	ldr r1, [sp]
	movs r0, #0xf0
	ands r1, r0
	cmp r1, #0x50
	beq _0801C65A
	cmp r1, #0x50
	bgt _0801C642
	cmp r1, #0x20
	beq _0801C6BC
	cmp r1, #0x20
	bgt _0801C63C
	cmp r1, #0x10
	beq _0801C6FC
	b _0801C72A
_0801C63C:
	cmp r1, #0x40
	beq _0801C69C
	b _0801C72A
_0801C642:
	cmp r1, #0x80
	beq _0801C6AC
	cmp r1, #0x80
	bgt _0801C650
	cmp r1, #0x60
	beq _0801C68C
	b _0801C72A
_0801C650:
	cmp r1, #0x90
	beq _0801C66C
	cmp r1, #0xa0
	beq _0801C67C
	b _0801C72A
_0801C65A:
	ldr r4, _0801C668
	ldrb r0, [r4, #0xa]
	cmp r0, #1
	beq _0801C72A
	movs r0, #1
	b _0801C6C6
	.align 2, 0
_0801C668: .4byte gPlayerSprite
_0801C66C:
	ldr r4, _0801C678
	ldrb r0, [r4, #0xa]
	cmp r0, #3
	beq _0801C72A
	movs r0, #3
	b _0801C6C6
	.align 2, 0
_0801C678: .4byte gPlayerSprite
_0801C67C:
	ldr r4, _0801C688
	ldrb r0, [r4, #0xa]
	cmp r0, #5
	beq _0801C72A
	movs r0, #5
	b _0801C6C6
	.align 2, 0
_0801C688: .4byte gPlayerSprite
_0801C68C:
	ldr r4, _0801C698
	ldrb r0, [r4, #0xa]
	cmp r0, #7
	beq _0801C72A
	movs r0, #7
	b _0801C6C6
	.align 2, 0
_0801C698: .4byte gPlayerSprite
_0801C69C:
	ldr r4, _0801C6A8
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	beq _0801C72A
	movs r0, #0
	b _0801C6C6
	.align 2, 0
_0801C6A8: .4byte gPlayerSprite
_0801C6AC:
	ldr r4, _0801C6B8
	ldrb r0, [r4, #0xa]
	cmp r0, #4
	beq _0801C72A
	movs r0, #4
	b _0801C6C6
	.align 2, 0
_0801C6B8: .4byte gPlayerSprite
_0801C6BC:
	ldr r4, _0801C6EC
	ldrb r0, [r4, #0xa]
	cmp r0, #6
	beq _0801C72A
	movs r0, #6
_0801C6C6:
	strb r0, [r4, #0xa]
	adds r0, r4, #0
	movs r1, #0xa9
	movs r2, #0
	movs r3, #1
	bl sub_80033A4
	ldr r0, _0801C6F0
	ldr r0, [r0]
	ldr r1, _0801C6F4
	ldr r3, _0801C6F8
	ldrb r2, [r4, #0xa]
	lsls r2, r2, #2
	adds r2, r2, r3
	ldr r2, [r2]
	movs r3, #0
	bl sub_8003884
	b _0801C72A
	.align 2, 0
_0801C6EC: .4byte gPlayerSprite
_0801C6F0: .4byte dword_2000FC8
_0801C6F4: .4byte 0x00019999
_0801C6F8: .4byte dword_80CC290
_0801C6FC:
	ldr r4, _0801C734
	ldrb r0, [r4, #0xa]
	cmp r0, #2
	beq _0801C72A
	movs r0, #2
	strb r0, [r4, #0xa]
	adds r0, r4, #0
	movs r1, #0xa9
	movs r2, #0
	movs r3, #1
	bl sub_80033A4
	ldr r0, _0801C738
	ldr r0, [r0]
	ldr r1, _0801C73C
	ldr r3, _0801C740
	ldrb r2, [r4, #0xa]
	lsls r2, r2, #2
	adds r2, r2, r3
	ldr r2, [r2]
	movs r3, #0
	bl sub_8003884
_0801C72A:
	add sp, #8
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801C734: .4byte gPlayerSprite
_0801C738: .4byte dword_2000FC8
_0801C73C: .4byte 0x00019999
_0801C740: .4byte dword_80CC290

	.thumb
sub_801C744: @ 0x0801C744
	push {r4, lr}
	sub sp, #8
	str r0, [sp]
	str r1, [sp, #4]
	add r1, sp, #4
	mov r0, sp
	bl sub_8016710
	ldr r4, _0801C794
	adds r0, r4, #0
	bl sub_8003770
	cmp r0, #0
	beq _0801C78C
	ldr r2, _0801C798
	ldr r1, _0801C79C
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0x18
	strh r0, [r1]
	adds r0, r4, #0
	movs r1, #0x91
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r0, _0801C7A0
	ldr r0, [r0]
	movs r1, #0
	movs r2, #0
	bl CallARM_store_jump_and_other_value
	ldrb r1, [r4, #0xa]
	movs r0, #4
	bl sub_8016790
_0801C78C:
	add sp, #8
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801C794: .4byte gPlayerSprite
_0801C798: .4byte gPreviousPlayerState
_0801C79C: .4byte gPlayerState
_0801C7A0: .4byte dword_2000FC8

	.thumb
sub_801C7A4: @ 0x0801C7A4
	push {r4, lr}
	sub sp, #8
	str r0, [sp]
	str r1, [sp, #4]
	add r1, sp, #4
	mov r0, sp
	bl sub_8016710
	ldr r4, _0801C7E8
	adds r0, r4, #0
	bl sub_8003770
	cmp r0, #0
	beq _0801C7E0
	ldr r2, _0801C7EC
	ldr r1, _0801C7F0
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0
	strh r0, [r1]
	adds r0, r4, #0
	movs r1, #0x19
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldrb r1, [r4, #0xa]
	movs r0, #0
	bl sub_8016790
_0801C7E0:
	add sp, #8
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801C7E8: .4byte gPlayerSprite
_0801C7EC: .4byte gPreviousPlayerState
_0801C7F0: .4byte gPlayerState

	.thumb
sub_801C7F4: @ 0x0801C7F4
	push {lr}
	sub sp, #8
	str r0, [sp]
	str r1, [sp, #4]
	add r1, sp, #4
	mov r0, sp
	bl sub_8016710
	add sp, #8
	pop {r0}
	bx r0
	.align 2, 0

	.thumb
sub_801C80C: @ 0x0801C80C
	push {r4, r5, lr}
	sub sp, #8
	str r0, [sp]
	str r1, [sp, #4]
	add r1, sp, #4
	mov r0, sp
	bl sub_8016710
	ldr r4, _0801C878
	adds r0, r4, #0
	bl sub_8003770
	cmp r0, #0
	beq _0801C894
	ldr r0, _0801C87C
	ldr r1, _0801C880
	movs r3, #0
	ldrsh r2, [r0, r3]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r2, r0
	bne _0801C894
	ldr r2, _0801C884
	ldr r1, _0801C888
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0x17
	strh r0, [r1]
	movs r0, #4
	strb r0, [r4, #0xa]
	adds r0, r4, #0
	movs r1, #0x89
	movs r2, #0
	movs r3, #1
	bl sub_8003368
	bl sub_8026714
	ldr r5, _0801C88C
	ldr r1, [r5]
	movs r4, #1
	rsbs r4, r4, #0
	cmp r1, r4
	beq _0801C898
	ldr r0, _0801C890
	ldrb r0, [r0]
	cmp r0, #0
	beq _0801C872
	adds r0, r1, #0
	bl audio_halt_fx
_0801C872:
	str r4, [r5]
	b _0801C898
	.align 2, 0
_0801C878: .4byte gPlayerSprite
_0801C87C: .4byte 0x02002EC2
_0801C880: .4byte 0x02002EC0
_0801C884: .4byte gPreviousPlayerState
_0801C888: .4byte gPlayerState
_0801C88C: .4byte dword_20020B4
_0801C890: .4byte byte_203EA89
_0801C894:
	bl sub_802672C
_0801C898:
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0

	.thumb
sub_801C8A0: @ 0x0801C8A0
	push {r4, lr}
	sub sp, #8
	str r0, [sp]
	str r1, [sp, #4]
	add r1, sp, #4
	mov r0, sp
	bl sub_8016710
	ldr r0, [sp, #4]
	ldr r1, _0801C8C0
	ands r0, r1
	cmp r0, #1
	bne _0801C8C4
	bl DoJump
	b _0801CA66
	.align 2, 0
_0801C8C0: .4byte 0x0000030F
_0801C8C4:
	ldr r1, [sp]
	movs r0, #0xf0
	ands r1, r0
	cmp r1, #0x50
	beq _0801C902
	cmp r1, #0x50
	bgt _0801C8EA
	cmp r1, #0x20
	bne _0801C8D8
	b _0801C9DC
_0801C8D8:
	cmp r1, #0x20
	bgt _0801C8E4
	cmp r1, #0x10
	bne _0801C8E2
	b _0801CA00
_0801C8E2:
	b _0801CA48
_0801C8E4:
	cmp r1, #0x40
	beq _0801C994
	b _0801CA48
_0801C8EA:
	cmp r1, #0x80
	beq _0801C9B8
	cmp r1, #0x80
	bgt _0801C8F8
	cmp r1, #0x60
	beq _0801C970
	b _0801CA48
_0801C8F8:
	cmp r1, #0x90
	beq _0801C928
	cmp r1, #0xa0
	beq _0801C94C
	b _0801CA48
_0801C902:
	ldr r4, _0801C920
	ldrb r0, [r4, #0xa]
	cmp r0, #1
	bne _0801C91A
	ldr r0, _0801C924
	ldr r0, [r0]
	bl sub_80038AC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0801C91A
	b _0801CA66
_0801C91A:
	movs r0, #1
	b _0801CA18
	.align 2, 0
_0801C920: .4byte gPlayerSprite
_0801C924: .4byte dword_2000FC8
_0801C928:
	ldr r4, _0801C944
	ldrb r0, [r4, #0xa]
	cmp r0, #3
	bne _0801C940
	ldr r0, _0801C948
	ldr r0, [r0]
	bl sub_80038AC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0801C940
	b _0801CA66
_0801C940:
	movs r0, #3
	b _0801CA18
	.align 2, 0
_0801C944: .4byte gPlayerSprite
_0801C948: .4byte dword_2000FC8
_0801C94C:
	ldr r4, _0801C968
	ldrb r0, [r4, #0xa]
	cmp r0, #5
	bne _0801C964
	ldr r0, _0801C96C
	ldr r0, [r0]
	bl sub_80038AC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0801C964
	b _0801CA66
_0801C964:
	movs r0, #5
	b _0801CA18
	.align 2, 0
_0801C968: .4byte gPlayerSprite
_0801C96C: .4byte dword_2000FC8
_0801C970:
	ldr r4, _0801C98C
	ldrb r0, [r4, #0xa]
	cmp r0, #7
	bne _0801C986
	ldr r0, _0801C990
	ldr r0, [r0]
	bl sub_80038AC
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0801CA66
_0801C986:
	movs r0, #7
	b _0801CA18
	.align 2, 0
_0801C98C: .4byte gPlayerSprite
_0801C990: .4byte dword_2000FC8
_0801C994:
	ldr r4, _0801C9B0
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _0801C9AA
	ldr r0, _0801C9B4
	ldr r0, [r0]
	bl sub_80038AC
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0801CA66
_0801C9AA:
	movs r0, #0
	b _0801CA18
	.align 2, 0
_0801C9B0: .4byte gPlayerSprite
_0801C9B4: .4byte dword_2000FC8
_0801C9B8:
	ldr r4, _0801C9D4
	ldrb r0, [r4, #0xa]
	cmp r0, #4
	bne _0801C9CE
	ldr r0, _0801C9D8
	ldr r0, [r0]
	bl sub_80038AC
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0801CA66
_0801C9CE:
	movs r0, #4
	b _0801CA18
	.align 2, 0
_0801C9D4: .4byte gPlayerSprite
_0801C9D8: .4byte dword_2000FC8
_0801C9DC:
	ldr r4, _0801C9F8
	ldrb r0, [r4, #0xa]
	cmp r0, #6
	bne _0801C9F2
	ldr r0, _0801C9FC
	ldr r0, [r0]
	bl sub_80038AC
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0801CA66
_0801C9F2:
	movs r0, #6
	b _0801CA18
	.align 2, 0
_0801C9F8: .4byte gPlayerSprite
_0801C9FC: .4byte dword_2000FC8
_0801CA00:
	ldr r4, _0801CA38
	ldrb r0, [r4, #0xa]
	cmp r0, #2
	bne _0801CA16
	ldr r0, _0801CA3C
	ldr r0, [r0]
	bl sub_80038AC
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0801CA66
_0801CA16:
	movs r0, #2
_0801CA18:
	strb r0, [r4, #0xa]
	adds r0, r4, #0
	bl sub_80037A0
	ldr r0, _0801CA3C
	ldr r0, [r0]
	ldr r1, _0801CA40
	ldr r3, _0801CA44
	ldrb r2, [r4, #0xa]
	lsls r2, r2, #2
	adds r2, r2, r3
	ldr r2, [r2]
	movs r3, #0
	bl sub_8003884
	b _0801CA66
	.align 2, 0
_0801CA38: .4byte gPlayerSprite
_0801CA3C: .4byte dword_2000FC8
_0801CA40: .4byte 0x00013333
_0801CA44: .4byte dword_80CC290
_0801CA48:
	ldr r4, _0801CA70
	adds r0, r4, #0
	bl sub_8003794
	ldr r0, _0801CA74
	ldr r0, [r0]
	ldr r2, _0801CA78
	ldrb r1, [r4, #0xa]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r2, [r1]
	movs r1, #0
	movs r3, #0
	bl sub_8003884
_0801CA66:
	add sp, #8
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801CA70: .4byte gPlayerSprite
_0801CA74: .4byte dword_2000FC8
_0801CA78: .4byte dword_80CC290

	.thumb
sub_801CA7C: @ 0x0801CA7C
	push {r4, lr}
	sub sp, #8
	str r0, [sp]
	str r1, [sp, #4]
	add r1, sp, #4
	mov r0, sp
	bl sub_8016710
	ldr r1, [sp, #4]
	ldr r0, _0801CAB0
	ands r1, r0
	cmp r1, #1
	beq _0801CAB4
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	beq _0801CABA
	ldr r1, [sp]
	movs r0, #0xf0
	ands r1, r0
	cmp r1, #0x50
	beq _0801CAF4
	cmp r1, #0x50
	bgt _0801CADA
	b _0801CAC0
	.align 2, 0
_0801CAB0: .4byte 0x0000030F
_0801CAB4:
	bl DoJump
	b _0801CD58
_0801CABA:
	bl sub_8017958
	b _0801CD58
_0801CAC0:
	cmp r1, #0x20
	bne _0801CAC6
	b _0801CC9C
_0801CAC6:
	cmp r1, #0x20
	bgt _0801CAD2
	cmp r1, #0x10
	bne _0801CAD0
	b _0801CCE0
_0801CAD0:
	b _0801CD28
_0801CAD2:
	cmp r1, #0x40
	bne _0801CAD8
	b _0801CC10
_0801CAD8:
	b _0801CD28
_0801CADA:
	cmp r1, #0x80
	bne _0801CAE0
	b _0801CC58
_0801CAE0:
	cmp r1, #0x80
	bgt _0801CAEA
	cmp r1, #0x60
	beq _0801CBC8
	b _0801CD28
_0801CAEA:
	cmp r1, #0x90
	beq _0801CB3C
	cmp r1, #0xa0
	beq _0801CB84
	b _0801CD28
_0801CAF4:
	ldr r2, _0801CB28
	ldr r1, _0801CB2C
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #5
	strh r0, [r1]
	ldr r1, _0801CB30
	ldrb r0, [r1, #0xa]
	cmp r0, #1
	bne _0801CB0A
	b _0801CD58
_0801CB0A:
	movs r0, #1
	strb r0, [r1, #0xa]
	adds r0, r1, #0
	movs r1, #0x29
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r0, _0801CB34
	ldr r0, [r0]
	ldr r1, _0801CB38
	movs r2, #0xb4
	lsls r2, r2, #0xe
	b _0801CD0C
	.align 2, 0
_0801CB28: .4byte gPreviousPlayerState
_0801CB2C: .4byte gPlayerState
_0801CB30: .4byte gPlayerSprite
_0801CB34: .4byte dword_2000FC8
_0801CB38: .4byte 0x00013333
_0801CB3C:
	ldr r2, _0801CB6C
	ldr r1, _0801CB70
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #5
	strh r0, [r1]
	ldr r1, _0801CB74
	ldrb r0, [r1, #0xa]
	cmp r0, #3
	bne _0801CB52
	b _0801CD58
_0801CB52:
	movs r0, #3
	strb r0, [r1, #0xa]
	adds r0, r1, #0
	movs r1, #0x29
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r0, _0801CB78
	ldr r0, [r0]
	ldr r1, _0801CB7C
	ldr r2, _0801CB80
	b _0801CD0C
	.align 2, 0
_0801CB6C: .4byte gPreviousPlayerState
_0801CB70: .4byte gPlayerState
_0801CB74: .4byte gPlayerSprite
_0801CB78: .4byte dword_2000FC8
_0801CB7C: .4byte 0x00013333
_0801CB80: .4byte 0x013B0000
_0801CB84:
	ldr r2, _0801CBB4
	ldr r1, _0801CBB8
	ldrh r0, [r1]
	strh r0, [r2]
	movs r2, #5
	strh r2, [r1]
	ldr r1, _0801CBBC
	ldrb r0, [r1, #0xa]
	cmp r0, #5
	bne _0801CB9A
	b _0801CD58
_0801CB9A:
	strb r2, [r1, #0xa]
	adds r0, r1, #0
	movs r1, #0x29
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r0, _0801CBC0
	ldr r0, [r0]
	ldr r1, _0801CBC4
	movs r2, #0xe1
	lsls r2, r2, #0x10
	b _0801CD0C
	.align 2, 0
_0801CBB4: .4byte gPreviousPlayerState
_0801CBB8: .4byte gPlayerState
_0801CBBC: .4byte gPlayerSprite
_0801CBC0: .4byte dword_2000FC8
_0801CBC4: .4byte 0x00013333
_0801CBC8:
	ldr r2, _0801CBFC
	ldr r1, _0801CC00
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #5
	strh r0, [r1]
	ldr r1, _0801CC04
	ldrb r0, [r1, #0xa]
	cmp r0, #7
	bne _0801CBDE
	b _0801CD58
_0801CBDE:
	movs r0, #7
	strb r0, [r1, #0xa]
	adds r0, r1, #0
	movs r1, #0x29
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r0, _0801CC08
	ldr r0, [r0]
	ldr r1, _0801CC0C
	movs r2, #0x87
	lsls r2, r2, #0x10
	b _0801CD0C
	.align 2, 0
_0801CBFC: .4byte gPreviousPlayerState
_0801CC00: .4byte gPlayerState
_0801CC04: .4byte gPlayerSprite
_0801CC08: .4byte dword_2000FC8
_0801CC0C: .4byte 0x00013333
_0801CC10:
	ldr r2, _0801CC44
	ldr r1, _0801CC48
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #5
	strh r0, [r1]
	ldr r1, _0801CC4C
	ldrb r0, [r1, #0xa]
	cmp r0, #0
	bne _0801CC26
	b _0801CD58
_0801CC26:
	movs r0, #0
	strb r0, [r1, #0xa]
	adds r0, r1, #0
	movs r1, #0x29
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r0, _0801CC50
	ldr r0, [r0]
	ldr r1, _0801CC54
	movs r2, #0xb4
	lsls r2, r2, #0xf
	b _0801CD0C
	.align 2, 0
_0801CC44: .4byte gPreviousPlayerState
_0801CC48: .4byte gPlayerState
_0801CC4C: .4byte gPlayerSprite
_0801CC50: .4byte dword_2000FC8
_0801CC54: .4byte 0x00013333
_0801CC58:
	ldr r2, _0801CC88
	ldr r1, _0801CC8C
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #5
	strh r0, [r1]
	ldr r1, _0801CC90
	ldrb r0, [r1, #0xa]
	cmp r0, #4
	beq _0801CD58
	movs r0, #4
	strb r0, [r1, #0xa]
	adds r0, r1, #0
	movs r1, #0x29
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r0, _0801CC94
	ldr r0, [r0]
	ldr r1, _0801CC98
	movs r2, #0x87
	lsls r2, r2, #0x11
	b _0801CD0C
	.align 2, 0
_0801CC88: .4byte gPreviousPlayerState
_0801CC8C: .4byte gPlayerState
_0801CC90: .4byte gPlayerSprite
_0801CC94: .4byte dword_2000FC8
_0801CC98: .4byte 0x00013333
_0801CC9C:
	ldr r2, _0801CCCC
	ldr r1, _0801CCD0
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #5
	strh r0, [r1]
	ldr r1, _0801CCD4
	ldrb r0, [r1, #0xa]
	cmp r0, #6
	beq _0801CD58
	movs r0, #6
	strb r0, [r1, #0xa]
	adds r0, r1, #0
	movs r1, #0x29
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r0, _0801CCD8
	ldr r0, [r0]
	ldr r1, _0801CCDC
	movs r2, #0xb4
	lsls r2, r2, #0x10
	b _0801CD0C
	.align 2, 0
_0801CCCC: .4byte gPreviousPlayerState
_0801CCD0: .4byte gPlayerState
_0801CCD4: .4byte gPlayerSprite
_0801CCD8: .4byte dword_2000FC8
_0801CCDC: .4byte 0x00013333
_0801CCE0:
	ldr r2, _0801CD14
	ldr r1, _0801CD18
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #5
	strh r0, [r1]
	ldr r1, _0801CD1C
	ldrb r0, [r1, #0xa]
	cmp r0, #2
	beq _0801CD58
	movs r0, #2
	strb r0, [r1, #0xa]
	adds r0, r1, #0
	movs r1, #0x29
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r0, _0801CD20
	ldr r0, [r0]
	ldr r1, _0801CD24
	movs r2, #0
_0801CD0C:
	movs r3, #0
	bl sub_8003884
	b _0801CD58
	.align 2, 0
_0801CD14: .4byte gPreviousPlayerState
_0801CD18: .4byte gPlayerState
_0801CD1C: .4byte gPlayerSprite
_0801CD20: .4byte dword_2000FC8
_0801CD24: .4byte 0x00013333
_0801CD28:
	ldr r2, _0801CD60
	ldr r1, _0801CD64
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0x1b
	strh r0, [r1]
	ldr r4, _0801CD68
	adds r0, r4, #0
	movs r1, #0x69
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r0, _0801CD6C
	ldr r0, [r0]
	ldr r2, _0801CD70
	ldrb r1, [r4, #0xa]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r2, [r1]
	movs r1, #0
	movs r3, #0
	bl sub_8003884
_0801CD58:
	add sp, #8
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801CD60: .4byte gPreviousPlayerState
_0801CD64: .4byte gPlayerState
_0801CD68: .4byte gPlayerSprite
_0801CD6C: .4byte dword_2000FC8
_0801CD70: .4byte dword_80CC290

	.thumb
sub_801CD74: @ 0x0801CD74
	push {lr}
	sub sp, #8
	str r0, [sp]
	str r1, [sp, #4]
	add r1, sp, #4
	mov r0, sp
	bl sub_8016710
	add sp, #8
	pop {r0}
	bx r0
	.align 2, 0

	.thumb
sub_801CD8C: @ 0x0801CD8C
	push {r4, lr}
	sub sp, #8
	str r0, [sp]
	str r1, [sp, #4]
	add r1, sp, #4
	mov r0, sp
	bl sub_8016710
	ldr r1, [sp, #4]
	ldr r0, _0801CDC0
	ands r1, r0
	cmp r1, #1
	beq _0801CDC4
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	beq _0801CDDE
	ldr r1, [sp]
	movs r0, #0xf0
	ands r1, r0
	cmp r1, #0x50
	beq _0801CE18
	cmp r1, #0x50
	bgt _0801CDFE
	b _0801CDE4
	.align 2, 0
_0801CDC0: .4byte 0x0000030F
_0801CDC4:
	ldr r0, _0801CDD4
	ldrb r0, [r0]
	cmp r0, #0
	beq _0801CDD8
	movs r0, #0
	bl sub_80186F4
	b _0801D014
	.align 2, 0
_0801CDD4: .4byte gInInteractionArea
_0801CDD8:
	bl DoJump
	b _0801D014
_0801CDDE:
	bl sub_8017958
	b _0801D014
_0801CDE4:
	cmp r1, #0x20
	bne _0801CDEA
	b _0801CF94
_0801CDEA:
	cmp r1, #0x20
	bgt _0801CDF6
	cmp r1, #0x10
	bne _0801CDF4
	b _0801CFE0
_0801CDF4:
	b _0801D014
_0801CDF6:
	cmp r1, #0x40
	bne _0801CDFC
	b _0801CF14
_0801CDFC:
	b _0801D014
_0801CDFE:
	cmp r1, #0x80
	bne _0801CE04
	b _0801CF54
_0801CE04:
	cmp r1, #0x80
	bgt _0801CE0E
	cmp r1, #0x60
	beq _0801CED4
	b _0801D014
_0801CE0E:
	cmp r1, #0x90
	beq _0801CE58
	cmp r1, #0xa0
	beq _0801CE98
	b _0801D014
_0801CE18:
	ldr r2, _0801CE44
	ldr r1, _0801CE48
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #5
	strh r0, [r1]
	ldr r4, _0801CE4C
	movs r0, #1
	strb r0, [r4, #0xa]
	adds r0, r4, #0
	movs r1, #0x29
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r0, _0801CE50
	ldr r0, [r0]
	ldr r1, _0801CE54
	movs r2, #0xb4
	lsls r2, r2, #0xe
	b _0801CFBC
	.align 2, 0
_0801CE44: .4byte gPreviousPlayerState
_0801CE48: .4byte gPlayerState
_0801CE4C: .4byte gPlayerSprite
_0801CE50: .4byte dword_2000FC8
_0801CE54: .4byte 0x00013333
_0801CE58:
	ldr r2, _0801CE80
	ldr r1, _0801CE84
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #5
	strh r0, [r1]
	ldr r4, _0801CE88
	movs r0, #3
	strb r0, [r4, #0xa]
	adds r0, r4, #0
	movs r1, #0x29
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r0, _0801CE8C
	ldr r0, [r0]
	ldr r1, _0801CE90
	ldr r2, _0801CE94
	b _0801CFBC
	.align 2, 0
_0801CE80: .4byte gPreviousPlayerState
_0801CE84: .4byte gPlayerState
_0801CE88: .4byte gPlayerSprite
_0801CE8C: .4byte dword_2000FC8
_0801CE90: .4byte 0x00013333
_0801CE94: .4byte 0x013B0000
_0801CE98:
	ldr r2, _0801CEC0
	ldr r1, _0801CEC4
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #5
	strh r0, [r1]
	ldr r4, _0801CEC8
	strb r0, [r4, #0xa]
	adds r0, r4, #0
	movs r1, #0x29
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r0, _0801CECC
	ldr r0, [r0]
	ldr r1, _0801CED0
	movs r2, #0xe1
	lsls r2, r2, #0x10
	b _0801CFBC
	.align 2, 0
_0801CEC0: .4byte gPreviousPlayerState
_0801CEC4: .4byte gPlayerState
_0801CEC8: .4byte gPlayerSprite
_0801CECC: .4byte dword_2000FC8
_0801CED0: .4byte 0x00013333
_0801CED4:
	ldr r2, _0801CF00
	ldr r1, _0801CF04
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #5
	strh r0, [r1]
	ldr r4, _0801CF08
	movs r0, #7
	strb r0, [r4, #0xa]
	adds r0, r4, #0
	movs r1, #0x29
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r0, _0801CF0C
	ldr r0, [r0]
	ldr r1, _0801CF10
	movs r2, #0x87
	lsls r2, r2, #0x10
	b _0801CFBC
	.align 2, 0
_0801CF00: .4byte gPreviousPlayerState
_0801CF04: .4byte gPlayerState
_0801CF08: .4byte gPlayerSprite
_0801CF0C: .4byte dword_2000FC8
_0801CF10: .4byte 0x00013333
_0801CF14:
	ldr r2, _0801CF40
	ldr r1, _0801CF44
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #5
	strh r0, [r1]
	ldr r4, _0801CF48
	movs r0, #0
	strb r0, [r4, #0xa]
	adds r0, r4, #0
	movs r1, #0x29
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r0, _0801CF4C
	ldr r0, [r0]
	ldr r1, _0801CF50
	movs r2, #0xb4
	lsls r2, r2, #0xf
	b _0801CFBC
	.align 2, 0
_0801CF40: .4byte gPreviousPlayerState
_0801CF44: .4byte gPlayerState
_0801CF48: .4byte gPlayerSprite
_0801CF4C: .4byte dword_2000FC8
_0801CF50: .4byte 0x00013333
_0801CF54:
	ldr r2, _0801CF80
	ldr r1, _0801CF84
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #5
	strh r0, [r1]
	ldr r4, _0801CF88
	movs r0, #4
	strb r0, [r4, #0xa]
	adds r0, r4, #0
	movs r1, #0x29
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r0, _0801CF8C
	ldr r0, [r0]
	ldr r1, _0801CF90
	movs r2, #0x87
	lsls r2, r2, #0x11
	b _0801CFBC
	.align 2, 0
_0801CF80: .4byte gPreviousPlayerState
_0801CF84: .4byte gPlayerState
_0801CF88: .4byte gPlayerSprite
_0801CF8C: .4byte dword_2000FC8
_0801CF90: .4byte 0x00013333
_0801CF94:
	ldr r2, _0801CFCC
	ldr r1, _0801CFD0
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #5
	strh r0, [r1]
	ldr r4, _0801CFD4
	movs r0, #6
	strb r0, [r4, #0xa]
	adds r0, r4, #0
	movs r1, #0x29
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r0, _0801CFD8
	ldr r0, [r0]
	ldr r1, _0801CFDC
	movs r2, #0xb4
	lsls r2, r2, #0x10
_0801CFBC:
	movs r3, #0
	bl sub_8003884
	ldrb r1, [r4, #0xa]
	movs r0, #0
	bl sub_8016790
	b _0801D014
	.align 2, 0
_0801CFCC: .4byte gPreviousPlayerState
_0801CFD0: .4byte gPlayerState
_0801CFD4: .4byte gPlayerSprite
_0801CFD8: .4byte dword_2000FC8
_0801CFDC: .4byte 0x00013333
_0801CFE0:
	ldr r2, _0801D01C
	ldr r1, _0801D020
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #5
	strh r0, [r1]
	ldr r4, _0801D024
	movs r0, #2
	strb r0, [r4, #0xa]
	adds r0, r4, #0
	movs r1, #0x29
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r0, _0801D028
	ldr r0, [r0]
	ldr r1, _0801D02C
	movs r2, #0
	movs r3, #0
	bl sub_8003884
	ldrb r1, [r4, #0xa]
	movs r0, #0
	bl sub_8016790
_0801D014:
	add sp, #8
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801D01C: .4byte gPreviousPlayerState
_0801D020: .4byte gPlayerState
_0801D024: .4byte gPlayerSprite
_0801D028: .4byte dword_2000FC8
_0801D02C: .4byte 0x00013333

	.thumb
sub_801D030: @ 0x0801D030
	push {lr}
	sub sp, #8
	str r0, [sp]
	str r1, [sp, #4]
	add r1, sp, #4
	mov r0, sp
	bl sub_8016710
	add sp, #8
	pop {r0}
	bx r0
	.align 2, 0

	.thumb
sub_801D048: @ 0x0801D048
	push {lr}
	ldr r0, _0801D06C
	ldrb r0, [r0]
	cmp r0, #0
	beq _0801D078
	ldr r0, _0801D070
	ldr r0, [r0]
	bl audio_fx_still_active
	cmp r0, #0
	bne _0801D09A
	ldr r0, _0801D074
	ldrb r0, [r0]
	cmp r0, #0
	bne _0801D09A
	bl sub_80629E8
	b _0801D09A
	.align 2, 0
_0801D06C: .4byte byte_20020B3
_0801D070: .4byte 0x020021D8
_0801D074: .4byte byte_203F99C
_0801D078:
	ldr r0, _0801D0A0
	bl sub_8003770
	cmp r0, #0
	beq _0801D09A
	ldr r0, _0801D0A4
	ldr r0, [r0]
	bl audio_fx_still_active
	cmp r0, #0
	bne _0801D09A
	ldr r0, _0801D0A8
	ldrb r0, [r0]
	cmp r0, #0
	bne _0801D09A
	bl sub_80629E8
_0801D09A:
	pop {r0}
	bx r0
	.align 2, 0
_0801D0A0: .4byte gPlayerSprite
_0801D0A4: .4byte 0x020021D8
_0801D0A8: .4byte byte_203F99C

	.thumb
sub_801D0AC: @ 0x0801D0AC
	push {r4, r5, r6, lr}
	adds r6, r1, #0
	ldr r5, _0801D0F4
	ldrb r4, [r5]
	cmp r4, #0
	bne _0801D0C8
	bl sub_0802E080
	strb r0, [r5]
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0801D182
	ldr r0, _0801D0F8
	strb r4, [r0]
_0801D0C8:
	ldr r1, _0801D0F8
	ldrb r0, [r1]
	cmp r0, #0
	bne _0801D104
	ldr r0, _0801D0FC
	ldr r0, [r0]
	cmp r0, #0
	bne _0801D182
	movs r0, #1
	strb r0, [r1]
	bl sub_8025FBC
	bl sub_8026180
	bl sub_802625C
	ldr r1, _0801D100
	movs r0, #0x96
	lsls r0, r0, #1
	str r0, [r1]
	b _0801D182
	.align 2, 0
_0801D0F4: .4byte 0x020021C9
_0801D0F8: .4byte 0x020021CA
_0801D0FC: .4byte dword_2001470
_0801D100: .4byte 0x020021E4
_0801D104:
	ldr r0, _0801D134
	ldrb r0, [r0]
	cmp r0, #0
	bne _0801D160
	ldr r0, _0801D138
	ands r0, r6
	cmp r0, #1
	beq _0801D148
	cmp r0, #2
	beq _0801D158
	ldr r0, _0801D13C
	ldr r1, _0801D140
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	bne _0801D17A
	ldr r1, _0801D144
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	cmp r0, #0
	bne _0801D17A
	b _0801D16C
	.align 2, 0
_0801D134: .4byte 0x02002E49
_0801D138: .4byte 0x000003FF
_0801D13C: .4byte 0x02002233
_0801D140: .4byte 0x02002232
_0801D144: .4byte 0x020021E4
_0801D148:
	ldr r0, _0801D154
	movs r1, #0x96
	lsls r1, r1, #1
	str r1, [r0]
	b _0801D172
	.align 2, 0
_0801D154: .4byte 0x020021E4
_0801D158:
	ldr r0, _0801D168
	ldrb r0, [r0]
	cmp r0, #0
	beq _0801D17A
_0801D160:
	bl sub_8018810
	b _0801D182
	.align 2, 0
_0801D168: .4byte 0x02002E4E
_0801D16C:
	movs r0, #0x96
	lsls r0, r0, #1
	str r0, [r1]
_0801D172:
	bl sub_8025FF8
	cmp r0, #0
	bne _0801D182
_0801D17A:
	bl sub_8026180
	bl sub_80265D8
_0801D182:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	.thumb
sub_801D188: @ 0x0801D188
	push {r4, r5, lr}
	ldr r5, _0801D1C0
	ldrb r0, [r5]
	cmp r0, #0
	beq _0801D1AE
	ldr r0, _0801D1C4
	ldr r4, [r0]
	cmp r4, #0
	bne _0801D1BA
	ldr r0, _0801D1C8
	ldr r0, [r0]
	ldrb r0, [r0, #0x10]
	bl sub_080161CC
	movs r0, #0x15
	movs r1, #0x20
	bl sub_8013DD4
	strb r4, [r5]
_0801D1AE:
	bl sub_802FDC8
	cmp r0, #0
	beq _0801D1BA
	bl sub_08018824
_0801D1BA:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801D1C0: .4byte 0x020021CA
_0801D1C4: .4byte dword_2001470
_0801D1C8: .4byte 0x0203DFDC

	.thumb
sub_801D1CC: @ 0x0801D1CC
	push {r4, r5, lr}
	sub sp, #0xc
	ldr r0, _0801D224
	ldr r0, [r0]
	add r2, sp, #4
	add r3, sp, #8
	mov r1, sp
	bl sub_80038C4
	cmp r0, #0
	beq _0801D1E4
	b _0801D3E6
_0801D1E4:
	ldr r0, _0801D228
	ldrb r0, [r0]
	cmp r0, #0
	beq _0801D1EE
	b _0801D3E6
_0801D1EE:
	ldr r0, _0801D22C
	ldrb r0, [r0]
	cmp r0, #0
	beq _0801D1F8
	b _0801D3E6
_0801D1F8:
	ldr r0, _0801D230
	ldr r3, [r0]
	adds r0, r3, #0
	adds r0, #0x34
	ldrb r0, [r0]
	cmp r0, #0
	beq _0801D238
	ldr r1, _0801D234
	ldr r0, [r1]
	ldr r1, [r1, #8]
	adds r2, r3, #0
	adds r2, #0x94
	ldr r2, [r2]
	adds r3, #0x9c
	ldr r3, [r3]
	bl sub_8003A6C
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0xff
	bne _0801D264
	b _0801D25C
	.align 2, 0
_0801D224: .4byte dword_2000FC8
_0801D228: .4byte 0x02001118
_0801D22C: .4byte 0x02001119
_0801D230: .4byte 0x0203DFDC
_0801D234: .4byte gPlayerPos
_0801D238:
	ldr r0, _0801D250
	ldrb r0, [r0]
	cmp r0, #0
	bne _0801D248
	ldr r0, _0801D254
	ldrb r0, [r0]
	cmp r0, #0
	beq _0801D25C
_0801D248:
	ldr r0, _0801D258
	ldrb r2, [r0, #0xa]
	b _0801D25E
	.align 2, 0
_0801D250: .4byte 0x0203DFDA
_0801D254: .4byte 0x0203DFE9
_0801D258: .4byte gPlayerSprite
_0801D25C:
	movs r2, #0
_0801D25E:
	cmp r2, #0xff
	bne _0801D264
	b _0801D3CC
_0801D264:
	ldr r0, _0801D294
	ldrb r0, [r0, #0x13]
	cmp r0, #0
	bne _0801D26E
	b _0801D3CC
_0801D26E:
	ldr r0, _0801D298
	ldrb r0, [r0]
	cmp r0, #0
	bne _0801D340
	ldr r1, _0801D29C
	ldr r0, _0801D2A0
	ldrh r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0801D2A8
	ldr r0, _0801D2A4
	strb r2, [r0, #0xa]
	movs r1, #0x69
	b _0801D3B6
	.align 2, 0
_0801D294: .4byte gGameStatus
_0801D298: .4byte byte_20020B1
_0801D29C: .4byte gPlayerStateSettings
_0801D2A0: .4byte gPreviousPlayerState
_0801D2A4: .4byte gPlayerSprite
_0801D2A8:
	movs r0, #0x80
	lsls r0, r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0801D2E8
	ldr r0, _0801D2DC
	movs r1, #6
	bl sub_800378C
	ldr r5, _0801D2E0
	ldr r1, [r5]
	movs r4, #1
	rsbs r4, r4, #0
	cmp r1, r4
	bne _0801D2C8
	b _0801D3CC
_0801D2C8:
	ldr r0, _0801D2E4
	ldrb r0, [r0]
	cmp r0, #0
	beq _0801D2D6
	adds r0, r1, #0
	bl audio_halt_fx
_0801D2D6:
	str r4, [r5]
	b _0801D3CC
	.align 2, 0
_0801D2DC: .4byte gPlayerSprite
_0801D2E0: .4byte dword_20020B8
_0801D2E4: .4byte byte_203EA89
_0801D2E8:
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _0801D300
	ldr r0, _0801D2F8
	ldr r1, _0801D2FC
	b _0801D3B6
	.align 2, 0
_0801D2F8: .4byte gPlayerSprite
_0801D2FC: .4byte 0x00000101
_0801D300:
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r1
	cmp r0, #0
	beq _0801D328
	ldr r0, _0801D320
	strb r2, [r0, #0xa]
	ldr r1, _0801D324
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	movs r0, #3
	bl sub_0804200C
	b _0801D3CC
	.align 2, 0
_0801D320: .4byte gPlayerSprite
_0801D324: .4byte 0x000001F9
_0801D328:
	movs r0, #0x80
	lsls r0, r0, #5
	ands r0, r1
	cmp r0, #0
	bne _0801D3CC
	ldr r0, _0801D33C
	strb r2, [r0, #0xa]
	movs r1, #0x19
	b _0801D3B6
	.align 2, 0
_0801D33C: .4byte gPlayerSprite
_0801D340:
	cmp r0, #1
	bne _0801D354
	ldr r0, _0801D34C
	strb r2, [r0, #0xa]
	ldr r1, _0801D350
	b _0801D3B6
	.align 2, 0
_0801D34C: .4byte gPlayerSprite
_0801D350: .4byte 0x00000141
_0801D354:
	cmp r0, #2
	bne _0801D368
	ldr r0, _0801D360
	strb r2, [r0, #0xa]
	ldr r1, _0801D364
	b _0801D3B6
	.align 2, 0
_0801D360: .4byte gPlayerSprite
_0801D364: .4byte 0x00000179
_0801D368:
	cmp r0, #3
	bne _0801D37C
	ldr r0, _0801D374
	strb r2, [r0, #0xa]
	ldr r1, _0801D378
	b _0801D3B6
	.align 2, 0
_0801D374: .4byte gPlayerSprite
_0801D378: .4byte 0x000001A1
_0801D37C:
	cmp r0, #4
	bne _0801D3C8
	ldr r1, _0801D3A0
	ldr r0, _0801D3A4
	ldrh r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0801D3B0
	ldr r0, _0801D3A8
	strb r2, [r0, #0xa]
	ldr r1, _0801D3AC
	b _0801D3B6
	.align 2, 0
_0801D3A0: .4byte gPlayerStateSettings
_0801D3A4: .4byte gPreviousPlayerState
_0801D3A8: .4byte gPlayerSprite
_0801D3AC: .4byte 0x000001D9
_0801D3B0:
	ldr r0, _0801D3C0
	strb r2, [r0, #0xa]
	ldr r1, _0801D3C4
_0801D3B6:
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	b _0801D3CC
	.align 2, 0
_0801D3C0: .4byte gPlayerSprite
_0801D3C4: .4byte 0x000001D1
_0801D3C8:
	.2byte 0xEE00, 0xEE00
_0801D3CC:
	ldr r1, _0801D3F0
	movs r0, #0x20
	strh r0, [r1]
	ldr r0, _0801D3F4
	ldrb r1, [r0, #0xa]
	movs r0, #0
	bl sub_8016790
	ldr r0, _0801D3F8
	movs r1, #0
	strb r1, [r0]
	ldr r0, _0801D3FC
	strb r1, [r0]
_0801D3E6:
	add sp, #0xc
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801D3F0: .4byte gPlayerState
_0801D3F4: .4byte gPlayerSprite
_0801D3F8: .4byte byte_2002E4A
_0801D3FC: .4byte 0x020021C9

	.thumb
sub_801D400: @ 0x0801D400
	push {lr}
	sub sp, #8
	str r0, [sp]
	str r1, [sp, #4]
	add r1, sp, #4
	mov r0, sp
	bl sub_8016710
	ldr r0, _0801D43C
	bl sub_80037A8
	cmp r0, #0
	beq _0801D436
	ldr r2, _0801D440
	ldr r1, _0801D444
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0x24
	strh r0, [r1]
	ldr r0, _0801D448
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #0xb
	movs r2, #0x80
	lsls r2, r2, #6
	bl CallARM_store_jump_and_other_value
_0801D436:
	add sp, #8
	pop {r0}
	bx r0
	.align 2, 0
_0801D43C: .4byte gPlayerSprite
_0801D440: .4byte gPreviousPlayerState
_0801D444: .4byte gPlayerState
_0801D448: .4byte dword_2000FC8

	.thumb
sub_801D44C: @ 0x0801D44C
	push {r4, r5, r6, lr}
	sub sp, #8
	str r0, [sp]
	str r1, [sp, #4]
	add r1, sp, #4
	mov r0, sp
	bl sub_8016710
	ldr r5, _0801D488
	ldr r0, [r5]
	bl sub_80038BC
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #0
	beq _0801D498
	ldr r2, _0801D48C
	ldr r1, _0801D490
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0x25
	strh r0, [r1]
	ldr r0, _0801D494
	movs r1, #0x11
	movs r2, #0
	movs r3, #1
	bl sub_8003368
	b _0801D602
	.align 2, 0
_0801D488: .4byte dword_2000FC8
_0801D48C: .4byte gPreviousPlayerState
_0801D490: .4byte gPlayerState
_0801D494: .4byte gPlayerSprite
_0801D498:
	ldr r1, [sp]
	movs r0, #0xf0
	ands r1, r0
	cmp r1, #0x50
	beq _0801D4D4
	cmp r1, #0x50
	bgt _0801D4BC
	cmp r1, #0x20
	beq _0801D584
	cmp r1, #0x20
	bgt _0801D4B6
	cmp r1, #0x10
	bne _0801D4B4
	b _0801D5C8
_0801D4B4:
	b _0801D602
_0801D4B6:
	cmp r1, #0x40
	beq _0801D54C
	b _0801D602
_0801D4BC:
	cmp r1, #0x80
	beq _0801D568
	cmp r1, #0x80
	bgt _0801D4CA
	cmp r1, #0x60
	beq _0801D530
	b _0801D602
_0801D4CA:
	cmp r1, #0x90
	beq _0801D4F4
	cmp r1, #0xa0
	beq _0801D514
	b _0801D602
_0801D4D4:
	ldr r4, _0801D4F0
	ldrb r0, [r4, #0xa]
	cmp r0, #1
	bne _0801D4EA
	ldr r0, [r5]
	bl sub_80038AC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0801D4EA
	b _0801D602
_0801D4EA:
	movs r0, #1
	b _0801D59A
	.align 2, 0
_0801D4F0: .4byte gPlayerSprite
_0801D4F4:
	ldr r4, _0801D510
	ldrb r0, [r4, #0xa]
	cmp r0, #3
	bne _0801D50A
	ldr r0, [r5]
	bl sub_80038AC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0801D50A
	b _0801D602
_0801D50A:
	movs r0, #3
	b _0801D59A
	.align 2, 0
_0801D510: .4byte gPlayerSprite
_0801D514:
	ldr r4, _0801D52C
	ldrb r0, [r4, #0xa]
	cmp r0, #5
	bne _0801D528
	ldr r0, [r5]
	bl sub_80038AC
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0801D602
_0801D528:
	movs r0, #5
	b _0801D59A
	.align 2, 0
_0801D52C: .4byte gPlayerSprite
_0801D530:
	ldr r4, _0801D548
	ldrb r0, [r4, #0xa]
	cmp r0, #7
	bne _0801D544
	ldr r0, [r5]
	bl sub_80038AC
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0801D602
_0801D544:
	movs r0, #7
	b _0801D59A
	.align 2, 0
_0801D548: .4byte gPlayerSprite
_0801D54C:
	ldr r4, _0801D564
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _0801D560
	ldr r0, [r5]
	bl sub_80038AC
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0801D602
_0801D560:
	strb r6, [r4, #0xa]
	b _0801D59C
	.align 2, 0
_0801D564: .4byte gPlayerSprite
_0801D568:
	ldr r4, _0801D580
	ldrb r0, [r4, #0xa]
	cmp r0, #4
	bne _0801D57C
	ldr r0, [r5]
	bl sub_80038AC
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0801D602
_0801D57C:
	movs r0, #4
	b _0801D59A
	.align 2, 0
_0801D580: .4byte gPlayerSprite
_0801D584:
	ldr r4, _0801D5C0
	ldrb r0, [r4, #0xa]
	cmp r0, #6
	bne _0801D598
	ldr r0, [r5]
	bl sub_80038AC
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0801D602
_0801D598:
	movs r0, #6
_0801D59A:
	strb r0, [r4, #0xa]
_0801D59C:
	adds r0, r4, #0
	movs r1, #0xe9
	movs r2, #0
	movs r3, #1
	bl sub_80033A4
	ldr r0, [r5]
	movs r1, #0x80
	lsls r1, r1, #9
	ldr r3, _0801D5C4
	ldrb r2, [r4, #0xa]
	lsls r2, r2, #2
	adds r2, r2, r3
	ldr r2, [r2]
	movs r3, #0
	bl sub_8003884
	b _0801D602
	.align 2, 0
_0801D5C0: .4byte gPlayerSprite
_0801D5C4: .4byte dword_80CC290
_0801D5C8:
	ldr r4, _0801D60C
	ldrb r0, [r4, #0xa]
	cmp r0, #2
	bne _0801D5DC
	ldr r0, [r5]
	bl sub_80038AC
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0801D602
_0801D5DC:
	movs r0, #2
	strb r0, [r4, #0xa]
	adds r0, r4, #0
	movs r1, #0xe9
	movs r2, #0
	movs r3, #1
	bl sub_80033A4
	ldr r0, [r5]
	movs r1, #0x80
	lsls r1, r1, #9
	ldr r3, _0801D610
	ldrb r2, [r4, #0xa]
	lsls r2, r2, #2
	adds r2, r2, r3
	ldr r2, [r2]
	movs r3, #0
	bl sub_8003884
_0801D602:
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0801D60C: .4byte gPlayerSprite
_0801D610: .4byte dword_80CC290

	.thumb
sub_801D614: @ 0x0801D614
	push {r4, lr}
	sub sp, #8
	str r0, [sp]
	str r1, [sp, #4]
	add r1, sp, #4
	mov r0, sp
	bl sub_8016710
	ldr r1, [sp, #4]
	ldr r0, _0801D638
	ands r1, r0
	cmp r1, #2
	beq _0801D64C
	cmp r1, #2
	bgt _0801D63C
	cmp r1, #1
	beq _0801D646
	b _0801D658
	.align 2, 0
_0801D638: .4byte 0x0000030F
_0801D63C:
	movs r0, #0x80
	lsls r0, r0, #2
	cmp r1, r0
	beq _0801D652
	b _0801D658
_0801D646:
	bl DoFeatheryFlap
	b _0801D7FA
_0801D64C:
	bl DoAirAttack
	b _0801D7FA
_0801D652:
	bl DoBillDrill
	b _0801D7FA
_0801D658:
	ldr r1, [sp]
	movs r0, #0xf0
	ands r1, r0
	cmp r1, #0x50
	beq _0801D696
	cmp r1, #0x50
	bgt _0801D67E
	cmp r1, #0x20
	bne _0801D66C
	b _0801D770
_0801D66C:
	cmp r1, #0x20
	bgt _0801D678
	cmp r1, #0x10
	bne _0801D676
	b _0801D7BC
_0801D676:
	b _0801D7FA
_0801D678:
	cmp r1, #0x40
	beq _0801D728
	b _0801D7FA
_0801D67E:
	cmp r1, #0x80
	beq _0801D74C
	cmp r1, #0x80
	bgt _0801D68C
	cmp r1, #0x60
	beq _0801D704
	b _0801D7FA
_0801D68C:
	cmp r1, #0x90
	beq _0801D6BC
	cmp r1, #0xa0
	beq _0801D6E0
	b _0801D7FA
_0801D696:
	ldr r4, _0801D6B4
	ldrb r0, [r4, #0xa]
	cmp r0, #1
	bne _0801D6AE
	ldr r0, _0801D6B8
	ldr r0, [r0]
	bl sub_80038AC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0801D6AE
	b _0801D7FA
_0801D6AE:
	movs r0, #1
	b _0801D788
	.align 2, 0
_0801D6B4: .4byte gPlayerSprite
_0801D6B8: .4byte dword_2000FC8
_0801D6BC:
	ldr r4, _0801D6D8
	ldrb r0, [r4, #0xa]
	cmp r0, #3
	bne _0801D6D4
	ldr r0, _0801D6DC
	ldr r0, [r0]
	bl sub_80038AC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0801D6D4
	b _0801D7FA
_0801D6D4:
	movs r0, #3
	b _0801D788
	.align 2, 0
_0801D6D8: .4byte gPlayerSprite
_0801D6DC: .4byte dword_2000FC8
_0801D6E0:
	ldr r4, _0801D6FC
	ldrb r0, [r4, #0xa]
	cmp r0, #5
	bne _0801D6F8
	ldr r0, _0801D700
	ldr r0, [r0]
	bl sub_80038AC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0801D6F8
	b _0801D7FA
_0801D6F8:
	movs r0, #5
	b _0801D788
	.align 2, 0
_0801D6FC: .4byte gPlayerSprite
_0801D700: .4byte dword_2000FC8
_0801D704:
	ldr r4, _0801D720
	ldrb r0, [r4, #0xa]
	cmp r0, #7
	bne _0801D71A
	ldr r0, _0801D724
	ldr r0, [r0]
	bl sub_80038AC
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0801D7FA
_0801D71A:
	movs r0, #7
	b _0801D788
	.align 2, 0
_0801D720: .4byte gPlayerSprite
_0801D724: .4byte dword_2000FC8
_0801D728:
	ldr r4, _0801D744
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _0801D73E
	ldr r0, _0801D748
	ldr r0, [r0]
	bl sub_80038AC
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0801D7FA
_0801D73E:
	movs r0, #0
	b _0801D788
	.align 2, 0
_0801D744: .4byte gPlayerSprite
_0801D748: .4byte dword_2000FC8
_0801D74C:
	ldr r4, _0801D768
	ldrb r0, [r4, #0xa]
	cmp r0, #4
	bne _0801D762
	ldr r0, _0801D76C
	ldr r0, [r0]
	bl sub_80038AC
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0801D7FA
_0801D762:
	movs r0, #4
	b _0801D788
	.align 2, 0
_0801D768: .4byte gPlayerSprite
_0801D76C: .4byte dword_2000FC8
_0801D770:
	ldr r4, _0801D7B0
	ldrb r0, [r4, #0xa]
	cmp r0, #6
	bne _0801D786
	ldr r0, _0801D7B4
	ldr r0, [r0]
	bl sub_80038AC
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0801D7FA
_0801D786:
	movs r0, #6
_0801D788:
	strb r0, [r4, #0xa]
	adds r0, r4, #0
	movs r1, #0x11
	movs r2, #0
	movs r3, #1
	bl sub_80033A4
	ldr r0, _0801D7B4
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #9
	ldr r3, _0801D7B8
	ldrb r2, [r4, #0xa]
	lsls r2, r2, #2
	adds r2, r2, r3
	ldr r2, [r2]
	movs r3, #0
	bl sub_8003884
	b _0801D7FA
	.align 2, 0
_0801D7B0: .4byte gPlayerSprite
_0801D7B4: .4byte dword_2000FC8
_0801D7B8: .4byte dword_80CC290
_0801D7BC:
	ldr r4, _0801D804
	ldrb r0, [r4, #0xa]
	cmp r0, #2
	bne _0801D7D2
	ldr r0, _0801D808
	ldr r0, [r0]
	bl sub_80038AC
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0801D7FA
_0801D7D2:
	movs r0, #2
	strb r0, [r4, #0xa]
	adds r0, r4, #0
	movs r1, #0x11
	movs r2, #0
	movs r3, #1
	bl sub_80033A4
	ldr r0, _0801D808
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #9
	ldr r3, _0801D80C
	ldrb r2, [r4, #0xa]
	lsls r2, r2, #2
	adds r2, r2, r3
	ldr r2, [r2]
	movs r3, #0
	bl sub_8003884
_0801D7FA:
	add sp, #8
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801D804: .4byte gPlayerSprite
_0801D808: .4byte dword_2000FC8
_0801D80C: .4byte dword_80CC290

	.thumb
sub_801D810: @ 0x0801D810
	push {r4, lr}
	sub sp, #8
	str r0, [sp]
	str r1, [sp, #4]
	add r1, sp, #4
	mov r0, sp
	bl sub_8016710
	ldr r4, _0801D8B0
	adds r0, r4, #0
	bl sub_8003770
	cmp r0, #0
	beq _0801D8A6
	ldr r0, _0801D8B4
	ldr r0, [r0]
	ldr r1, _0801D8B8
	ldr r1, [r1]
	bl sub_0800C388
	ldr r0, _0801D8BC
	ldrb r0, [r0]
	cmp r0, #0
	beq _0801D852
	ldr r0, _0801D8C0
	ldrb r0, [r0]
	strb r0, [r4, #0xa]
	ldr r2, _0801D8C4
	ldr r0, _0801D8C8
	ldrh r1, [r0]
	ldr r0, _0801D8CC
	ands r0, r1
	strh r0, [r2]
_0801D852:
	ldr r2, _0801D8D0
	ldr r1, _0801D8D4
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0x2d
	strh r0, [r1]
	adds r0, r4, #0
	movs r1, #0x39
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r1, _0801D8D8
	movs r0, #0
	strb r0, [r1, #0x13]
	ldr r0, _0801D8DC
	ldr r0, [r0]
	movs r2, #0xc4
	lsls r2, r2, #6
	movs r1, #0
	bl CallARM_store_jump_and_other_value
	ldr r0, _0801D8E0
	movs r2, #0x96
	lsls r2, r2, #2
	adds r1, r2, #0
	strh r1, [r0]
	ldr r0, _0801D8E4
	strh r1, [r0]
	movs r0, #0x38
	bl sub_080420E8
	cmp r0, #0
	bne _0801D8A6
	ldr r0, _0801D8E8
	ldrb r1, [r0, #0x16]
	movs r0, #0x39
	bl sub_08040204
	movs r0, #0x39
	bl sub_08041FA4
_0801D8A6:
	add sp, #8
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801D8B0: .4byte gPlayerSprite
_0801D8B4: .4byte 0x020021E8
_0801D8B8: .4byte 0x020021EC
_0801D8BC: .4byte 0x020010A4
_0801D8C0: .4byte 0x020010A5
_0801D8C4: .4byte word_20010AC
_0801D8C8: .4byte gKeysPressed
_0801D8CC: .4byte 0x000003FF
_0801D8D0: .4byte gPreviousPlayerState
_0801D8D4: .4byte gPlayerState
_0801D8D8: .4byte gPlayerShadowSprite
_0801D8DC: .4byte dword_2000FC8
_0801D8E0: .4byte 0x02002096
_0801D8E4: .4byte 0x02002098
_0801D8E8: .4byte gGameStatus

	.thumb
sub_801D8EC: @ 0x0801D8EC
	push {r4, lr}
	sub sp, #0x14
	str r0, [sp]
	str r1, [sp, #4]
	add r1, sp, #4
	mov r0, sp
	bl sub_8016710
	ldr r0, _0801D944
	ldr r1, _0801D948
	ldr r2, [r0, #4]
	ldr r0, [r1, #4]
	cmp r2, r0
	bne _0801D916
	ldr r0, _0801D94C
	ldr r0, [r0]
	movs r2, #0xc4
	lsls r2, r2, #6
	movs r1, #0
	bl CallARM_store_jump_and_other_value
_0801D916:
	ldr r0, [sp]
	ldr r1, _0801D950
	ands r0, r1
	cmp r0, #1
	bne _0801D960
	ldr r0, _0801D954
	ldrb r0, [r0]
	cmp r0, #0
	bne _0801D960
	ldr r2, _0801D958
	ldr r1, _0801D95C
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0x2e
	strh r0, [r1]
	ldr r0, _0801D94C
	ldr r0, [r0]
	movs r1, #0xc0
	lsls r1, r1, #9
	movs r2, #0
	bl CallARM_store_jump_and_other_value
	b _0801DD08
	.align 2, 0
_0801D944: .4byte gPlayerPos
_0801D948: .4byte gPlayerShadowPos
_0801D94C: .4byte dword_2000FC8
_0801D950: .4byte 0x0000030F
_0801D954: .4byte 0x030029F8
_0801D958: .4byte gPreviousPlayerState
_0801D95C: .4byte gPlayerState
_0801D960:
	ldr r0, [sp, #4]
	ldr r1, _0801D98C
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #1
	cmp r0, r1
	bne _0801D9A0
	ldr r2, _0801D990
	ldr r1, _0801D994
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0x30
	strh r0, [r1]
	ldr r0, _0801D998
	movs r1, #0x41
	movs r2, #0
	movs r3, #1
	bl sub_8003368
	ldr r0, _0801D99C
	ldr r0, [r0]
	b _0801D9E2
	.align 2, 0
_0801D98C: .4byte 0x0000030F
_0801D990: .4byte gPreviousPlayerState
_0801D994: .4byte gPlayerState
_0801D998: .4byte gPlayerSprite
_0801D99C: .4byte dword_2000FC8
_0801D9A0:
	ldr r4, _0801D9F0
	ldr r0, [r4]
	add r1, sp, #8
	add r2, sp, #0xc
	add r3, sp, #0x10
	bl sub_80038C4
	ldr r0, [sp, #0xc]
	ldr r1, _0801D9F4
	cmp r0, r1
	bge _0801D9C0
	ldr r0, [r4]
	movs r2, #0xc4
	lsls r2, r2, #6
	bl CallARM_store_jump_and_other_value
_0801D9C0:
	ldr r2, _0801D9F8
	ldrb r3, [r2, #0x16]
	cmp r3, #0
	bne _0801DA08
	ldr r2, _0801D9FC
	ldr r1, _0801DA00
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0x30
	strh r0, [r1]
	ldr r0, _0801DA04
	movs r1, #0x41
	movs r2, #0
	movs r3, #1
	bl sub_8003368
	ldr r0, [r4]
_0801D9E2:
	movs r1, #0x80
	lsls r1, r1, #0xa
	movs r2, #0x80
	lsls r2, r2, #7
	bl CallARM_store_jump_and_other_value
	b _0801DD08
	.align 2, 0
_0801D9F0: .4byte dword_2000FC8
_0801D9F4: .4byte 0xFFFF4000
_0801D9F8: .4byte gGameStatus
_0801D9FC: .4byte gPreviousPlayerState
_0801DA00: .4byte gPlayerState
_0801DA04: .4byte gPlayerSprite
_0801DA08:
	ldr r1, _0801DA5C
	ldrh r0, [r1]
	cmp r0, #0
	bne _0801DA74
	ldr r0, _0801DA60
	ldrh r0, [r0]
	strh r0, [r1]
	subs r0, r3, #1
	strb r0, [r2, #0x16]
	ldrb r1, [r2, #0x16]
	movs r0, #0x39
	bl sub_08040204
	movs r0, #0x39
	bl sub_08041FA4
	ldr r0, _0801DA64
	ldrb r0, [r0]
	cmp r0, #0
	beq _0801DA78
	ldr r2, _0801DA68
	movs r1, #0xf6
	lsls r1, r1, #2
	adds r0, r2, r1
	ldrh r0, [r0]
	ldr r3, _0801DA6C
	ldr r4, _0801DA70
	adds r1, r2, r4
	ldrb r3, [r3]
	adds r1, r1, r3
	ldrb r1, [r1]
	movs r3, #0xf7
	lsls r3, r3, #2
	adds r2, r2, r3
	ldr r2, [r2]
	movs r4, #0x80
	lsls r4, r4, #9
	adds r2, r2, r4
	bl audio_new_fx
	b _0801DA78
	.align 2, 0
_0801DA5C: .4byte 0x02002098
_0801DA60: .4byte 0x02002096
_0801DA64: .4byte byte_203EA89
_0801DA68: .4byte 0x080CE440
_0801DA6C: .4byte byte_203EA8C
_0801DA70: .4byte 0x000003DA
_0801DA74:
	subs r0, #1
	strh r0, [r1]
_0801DA78:
	ldr r1, [sp]
	movs r0, #0xf0
	ands r1, r0
	cmp r1, #0x50
	beq _0801DABA
	cmp r1, #0x50
	bgt _0801DAA0
	cmp r1, #0x20
	bne _0801DA8C
	b _0801DC64
_0801DA8C:
	cmp r1, #0x20
	bgt _0801DA98
	cmp r1, #0x10
	bne _0801DA96
	b _0801DCA8
_0801DA96:
	b _0801DCF0
_0801DA98:
	cmp r1, #0x40
	bne _0801DA9E
	b _0801DBD8
_0801DA9E:
	b _0801DCF0
_0801DAA0:
	cmp r1, #0x80
	bne _0801DAA6
	b _0801DC20
_0801DAA6:
	cmp r1, #0x80
	bgt _0801DAB0
	cmp r1, #0x60
	beq _0801DB90
	b _0801DCF0
_0801DAB0:
	cmp r1, #0x90
	beq _0801DB00
	cmp r1, #0xa0
	beq _0801DB48
	b _0801DCF0
_0801DABA:
	ldr r4, _0801DAF4
	ldrb r0, [r4, #0xa]
	cmp r0, #1
	bne _0801DAD8
	ldr r0, _0801DAF8
	ldr r0, [r0]
	bl sub_80038AC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0801DAD2
	b _0801DD08
_0801DAD2:
	ldrb r0, [r4, #0xa]
	cmp r0, #1
	beq _0801DAE8
_0801DAD8:
	movs r0, #1
	strb r0, [r4, #0xa]
	adds r0, r4, #0
	movs r1, #0x39
	movs r2, #0
	movs r3, #0
	bl sub_8003368
_0801DAE8:
	ldr r0, _0801DAF8
	ldr r0, [r0]
	ldr r1, _0801DAFC
	movs r2, #0xb4
	lsls r2, r2, #0xe
	b _0801DCDC
	.align 2, 0
_0801DAF4: .4byte gPlayerSprite
_0801DAF8: .4byte dword_2000FC8
_0801DAFC: .4byte 0x0001199A
_0801DB00:
	ldr r4, _0801DB38
	ldrb r0, [r4, #0xa]
	cmp r0, #3
	bne _0801DB1E
	ldr r0, _0801DB3C
	ldr r0, [r0]
	bl sub_80038AC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0801DB18
	b _0801DD08
_0801DB18:
	ldrb r0, [r4, #0xa]
	cmp r0, #3
	beq _0801DB2E
_0801DB1E:
	movs r0, #3
	strb r0, [r4, #0xa]
	adds r0, r4, #0
	movs r1, #0x39
	movs r2, #0
	movs r3, #0
	bl sub_8003368
_0801DB2E:
	ldr r0, _0801DB3C
	ldr r0, [r0]
	ldr r1, _0801DB40
	ldr r2, _0801DB44
	b _0801DCDC
	.align 2, 0
_0801DB38: .4byte gPlayerSprite
_0801DB3C: .4byte dword_2000FC8
_0801DB40: .4byte 0x0001199A
_0801DB44: .4byte 0x013B0000
_0801DB48:
	ldr r4, _0801DB84
	ldrb r0, [r4, #0xa]
	cmp r0, #5
	bne _0801DB66
	ldr r0, _0801DB88
	ldr r0, [r0]
	bl sub_80038AC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0801DB60
	b _0801DD08
_0801DB60:
	ldrb r0, [r4, #0xa]
	cmp r0, #5
	beq _0801DB76
_0801DB66:
	movs r0, #5
	strb r0, [r4, #0xa]
	adds r0, r4, #0
	movs r1, #0x39
	movs r2, #0
	movs r3, #0
	bl sub_8003368
_0801DB76:
	ldr r0, _0801DB88
	ldr r0, [r0]
	ldr r1, _0801DB8C
	movs r2, #0xe1
	lsls r2, r2, #0x10
	b _0801DCDC
	.align 2, 0
_0801DB84: .4byte gPlayerSprite
_0801DB88: .4byte dword_2000FC8
_0801DB8C: .4byte 0x0001199A
_0801DB90:
	ldr r4, _0801DBCC
	ldrb r0, [r4, #0xa]
	cmp r0, #7
	bne _0801DBAE
	ldr r0, _0801DBD0
	ldr r0, [r0]
	bl sub_80038AC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0801DBA8
	b _0801DD08
_0801DBA8:
	ldrb r0, [r4, #0xa]
	cmp r0, #7
	beq _0801DBBE
_0801DBAE:
	movs r0, #7
	strb r0, [r4, #0xa]
	adds r0, r4, #0
	movs r1, #0x39
	movs r2, #0
	movs r3, #0
	bl sub_8003368
_0801DBBE:
	ldr r0, _0801DBD0
	ldr r0, [r0]
	ldr r1, _0801DBD4
	movs r2, #0x87
	lsls r2, r2, #0x10
	b _0801DCDC
	.align 2, 0
_0801DBCC: .4byte gPlayerSprite
_0801DBD0: .4byte dword_2000FC8
_0801DBD4: .4byte 0x0001199A
_0801DBD8:
	ldr r4, _0801DC14
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _0801DBF6
	ldr r0, _0801DC18
	ldr r0, [r0]
	bl sub_80038AC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0801DBF0
	b _0801DD08
_0801DBF0:
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	beq _0801DC06
_0801DBF6:
	movs r0, #0
	strb r0, [r4, #0xa]
	adds r0, r4, #0
	movs r1, #0x39
	movs r2, #0
	movs r3, #0
	bl sub_8003368
_0801DC06:
	ldr r0, _0801DC18
	ldr r0, [r0]
	ldr r1, _0801DC1C
	movs r2, #0xb4
	lsls r2, r2, #0xf
	b _0801DCDC
	.align 2, 0
_0801DC14: .4byte gPlayerSprite
_0801DC18: .4byte dword_2000FC8
_0801DC1C: .4byte 0x0001199A
_0801DC20:
	ldr r4, _0801DC58
	ldrb r0, [r4, #0xa]
	cmp r0, #4
	bne _0801DC3C
	ldr r0, _0801DC5C
	ldr r0, [r0]
	bl sub_80038AC
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0801DD08
	ldrb r0, [r4, #0xa]
	cmp r0, #4
	beq _0801DC4C
_0801DC3C:
	movs r0, #4
	strb r0, [r4, #0xa]
	adds r0, r4, #0
	movs r1, #0x39
	movs r2, #0
	movs r3, #0
	bl sub_8003368
_0801DC4C:
	ldr r0, _0801DC5C
	ldr r0, [r0]
	ldr r1, _0801DC60
	movs r2, #0x87
	lsls r2, r2, #0x11
	b _0801DCDC
	.align 2, 0
_0801DC58: .4byte gPlayerSprite
_0801DC5C: .4byte dword_2000FC8
_0801DC60: .4byte 0x0001199A
_0801DC64:
	ldr r4, _0801DC9C
	ldrb r0, [r4, #0xa]
	cmp r0, #6
	bne _0801DC80
	ldr r0, _0801DCA0
	ldr r0, [r0]
	bl sub_80038AC
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0801DD08
	ldrb r0, [r4, #0xa]
	cmp r0, #6
	beq _0801DC90
_0801DC80:
	movs r0, #6
	strb r0, [r4, #0xa]
	adds r0, r4, #0
	movs r1, #0x39
	movs r2, #0
	movs r3, #0
	bl sub_8003368
_0801DC90:
	ldr r0, _0801DCA0
	ldr r0, [r0]
	ldr r1, _0801DCA4
	movs r2, #0xb4
	lsls r2, r2, #0x10
	b _0801DCDC
	.align 2, 0
_0801DC9C: .4byte gPlayerSprite
_0801DCA0: .4byte dword_2000FC8
_0801DCA4: .4byte 0x0001199A
_0801DCA8:
	ldr r4, _0801DCE4
	ldrb r0, [r4, #0xa]
	cmp r0, #2
	bne _0801DCC4
	ldr r0, _0801DCE8
	ldr r0, [r0]
	bl sub_80038AC
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0801DD08
	ldrb r0, [r4, #0xa]
	cmp r0, #2
	beq _0801DCD4
_0801DCC4:
	movs r0, #2
	strb r0, [r4, #0xa]
	adds r0, r4, #0
	movs r1, #0x39
	movs r2, #0
	movs r3, #0
	bl sub_8003368
_0801DCD4:
	ldr r0, _0801DCE8
	ldr r0, [r0]
	ldr r1, _0801DCEC
	movs r2, #0
_0801DCDC:
	movs r3, #0
	bl sub_8003884
	b _0801DD08
	.align 2, 0
_0801DCE4: .4byte gPlayerSprite
_0801DCE8: .4byte dword_2000FC8
_0801DCEC: .4byte 0x0001199A
_0801DCF0:
	ldr r0, _0801DD10
	ldr r0, [r0]
	ldr r2, _0801DD14
	ldr r1, _0801DD18
	ldrb r1, [r1, #0xa]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r2, [r1]
	movs r1, #0
	movs r3, #0
	bl sub_8003884
_0801DD08:
	add sp, #0x14
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801DD10: .4byte dword_2000FC8
_0801DD14: .4byte dword_80CC290
_0801DD18: .4byte gPlayerSprite

	.thumb
sub_801DD1C: @ 0x0801DD1C
	push {r4, lr}
	sub sp, #8
	str r0, [sp]
	str r1, [sp, #4]
	add r1, sp, #4
	mov r0, sp
	bl sub_8016710
	ldr r2, _0801DD88
	ldrb r3, [r2, #0x16]
	cmp r3, #0
	beq _0801DDB6
	ldr r1, _0801DD8C
	ldrh r0, [r1]
	cmp r0, #0
	bne _0801DDA4
	ldr r0, _0801DD90
	ldrh r0, [r0]
	strh r0, [r1]
	subs r0, r3, #1
	strb r0, [r2, #0x16]
	ldrb r1, [r2, #0x16]
	movs r0, #0x39
	bl sub_08040204
	movs r0, #0x39
	bl sub_08041FA4
	ldr r0, _0801DD94
	ldrb r0, [r0]
	cmp r0, #0
	beq _0801DDA8
	ldr r2, _0801DD98
	movs r1, #0xf6
	lsls r1, r1, #2
	adds r0, r2, r1
	ldrh r0, [r0]
	ldr r3, _0801DD9C
	ldr r4, _0801DDA0
	adds r1, r2, r4
	ldrb r3, [r3]
	adds r1, r1, r3
	ldrb r1, [r1]
	movs r3, #0xf7
	lsls r3, r3, #2
	adds r2, r2, r3
	ldr r2, [r2]
	movs r4, #0x80
	lsls r4, r4, #9
	adds r2, r2, r4
	bl audio_new_fx
	b _0801DDA8
	.align 2, 0
_0801DD88: .4byte gGameStatus
_0801DD8C: .4byte 0x02002098
_0801DD90: .4byte 0x02002096
_0801DD94: .4byte byte_203EA89
_0801DD98: .4byte 0x080CE440
_0801DD9C: .4byte byte_203EA8C
_0801DDA0: .4byte 0x000003DA
_0801DDA4:
	subs r0, #1
	strh r0, [r1]
_0801DDA8:
	ldr r0, [sp, #4]
	ldr r2, _0801DDE0
	ands r0, r2
	movs r1, #0x80
	lsls r1, r1, #1
	cmp r0, r1
	bne _0801DDF4
_0801DDB6:
	ldr r2, _0801DDE4
	ldr r1, _0801DDE8
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0x30
	strh r0, [r1]
	ldr r0, _0801DDEC
	movs r1, #0x41
	movs r2, #0
	movs r3, #1
	bl sub_8003368
	ldr r0, _0801DDF0
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #0xa
	movs r2, #0x80
	lsls r2, r2, #7
	bl CallARM_store_jump_and_other_value
	b _0801E0E0
	.align 2, 0
_0801DDE0: .4byte 0x0000030F
_0801DDE4: .4byte gPreviousPlayerState
_0801DDE8: .4byte gPlayerState
_0801DDEC: .4byte gPlayerSprite
_0801DDF0: .4byte dword_2000FC8
_0801DDF4:
	ldr r0, [sp]
	ands r0, r2
	cmp r0, #1
	beq _0801DE30
	ldr r4, _0801DE24
	ldr r0, [r4]
	bl sub_80038BC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0801DE48
	ldr r2, _0801DE28
	ldr r1, _0801DE2C
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0x2d
	strh r0, [r1]
	ldr r0, [r4]
	movs r2, #0xc4
	lsls r2, r2, #6
	movs r1, #0
	bl CallARM_store_jump_and_other_value
	b _0801E0E0
	.align 2, 0
_0801DE24: .4byte dword_2000FC8
_0801DE28: .4byte gPreviousPlayerState
_0801DE2C: .4byte gPlayerState
_0801DE30:
	ldr r0, _0801DE68
	ldrb r0, [r0]
	cmp r0, #0
	bne _0801DE48
	ldr r0, _0801DE6C
	ldr r0, [r0]
	movs r1, #0xc0
	lsls r1, r1, #9
	movs r2, #0x80
	lsls r2, r2, #6
	bl CallARM_store_jump_and_other_value
_0801DE48:
	ldr r1, [sp]
	movs r0, #0xf0
	ands r1, r0
	cmp r1, #0x50
	beq _0801DE92
	cmp r1, #0x50
	bgt _0801DE78
	cmp r1, #0x20
	bne _0801DE5C
	b _0801E03C
_0801DE5C:
	cmp r1, #0x20
	bgt _0801DE70
	cmp r1, #0x10
	bne _0801DE66
	b _0801E080
_0801DE66:
	b _0801E0C8
	.align 2, 0
_0801DE68: .4byte 0x030029F8
_0801DE6C: .4byte dword_2000FC8
_0801DE70:
	cmp r1, #0x40
	bne _0801DE76
	b _0801DFB0
_0801DE76:
	b _0801E0C8
_0801DE78:
	cmp r1, #0x80
	bne _0801DE7E
	b _0801DFF8
_0801DE7E:
	cmp r1, #0x80
	bgt _0801DE88
	cmp r1, #0x60
	beq _0801DF68
	b _0801E0C8
_0801DE88:
	cmp r1, #0x90
	beq _0801DED8
	cmp r1, #0xa0
	beq _0801DF20
	b _0801E0C8
_0801DE92:
	ldr r4, _0801DECC
	ldrb r0, [r4, #0xa]
	cmp r0, #1
	bne _0801DEB0
	ldr r0, _0801DED0
	ldr r0, [r0]
	bl sub_80038AC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0801DEAA
	b _0801E0E0
_0801DEAA:
	ldrb r0, [r4, #0xa]
	cmp r0, #1
	beq _0801DEC0
_0801DEB0:
	movs r0, #1
	strb r0, [r4, #0xa]
	adds r0, r4, #0
	movs r1, #0x39
	movs r2, #0
	movs r3, #0
	bl sub_8003368
_0801DEC0:
	ldr r0, _0801DED0
	ldr r0, [r0]
	ldr r1, _0801DED4
	movs r2, #0xb4
	lsls r2, r2, #0xe
	b _0801E0B4
	.align 2, 0
_0801DECC: .4byte gPlayerSprite
_0801DED0: .4byte dword_2000FC8
_0801DED4: .4byte 0x0001199A
_0801DED8:
	ldr r4, _0801DF10
	ldrb r0, [r4, #0xa]
	cmp r0, #3
	bne _0801DEF6
	ldr r0, _0801DF14
	ldr r0, [r0]
	bl sub_80038AC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0801DEF0
	b _0801E0E0
_0801DEF0:
	ldrb r0, [r4, #0xa]
	cmp r0, #3
	beq _0801DF06
_0801DEF6:
	movs r0, #3
	strb r0, [r4, #0xa]
	adds r0, r4, #0
	movs r1, #0x39
	movs r2, #0
	movs r3, #0
	bl sub_8003368
_0801DF06:
	ldr r0, _0801DF14
	ldr r0, [r0]
	ldr r1, _0801DF18
	ldr r2, _0801DF1C
	b _0801E0B4
	.align 2, 0
_0801DF10: .4byte gPlayerSprite
_0801DF14: .4byte dword_2000FC8
_0801DF18: .4byte 0x0001199A
_0801DF1C: .4byte 0x013B0000
_0801DF20:
	ldr r4, _0801DF5C
	ldrb r0, [r4, #0xa]
	cmp r0, #5
	bne _0801DF3E
	ldr r0, _0801DF60
	ldr r0, [r0]
	bl sub_80038AC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0801DF38
	b _0801E0E0
_0801DF38:
	ldrb r0, [r4, #0xa]
	cmp r0, #5
	beq _0801DF4E
_0801DF3E:
	movs r0, #5
	strb r0, [r4, #0xa]
	adds r0, r4, #0
	movs r1, #0x39
	movs r2, #0
	movs r3, #0
	bl sub_8003368
_0801DF4E:
	ldr r0, _0801DF60
	ldr r0, [r0]
	ldr r1, _0801DF64
	movs r2, #0xe1
	lsls r2, r2, #0x10
	b _0801E0B4
	.align 2, 0
_0801DF5C: .4byte gPlayerSprite
_0801DF60: .4byte dword_2000FC8
_0801DF64: .4byte 0x0001199A
_0801DF68:
	ldr r4, _0801DFA4
	ldrb r0, [r4, #0xa]
	cmp r0, #7
	bne _0801DF86
	ldr r0, _0801DFA8
	ldr r0, [r0]
	bl sub_80038AC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0801DF80
	b _0801E0E0
_0801DF80:
	ldrb r0, [r4, #0xa]
	cmp r0, #7
	beq _0801DF96
_0801DF86:
	movs r0, #7
	strb r0, [r4, #0xa]
	adds r0, r4, #0
	movs r1, #0x39
	movs r2, #0
	movs r3, #0
	bl sub_8003368
_0801DF96:
	ldr r0, _0801DFA8
	ldr r0, [r0]
	ldr r1, _0801DFAC
	movs r2, #0x87
	lsls r2, r2, #0x10
	b _0801E0B4
	.align 2, 0
_0801DFA4: .4byte gPlayerSprite
_0801DFA8: .4byte dword_2000FC8
_0801DFAC: .4byte 0x0001199A
_0801DFB0:
	ldr r4, _0801DFEC
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _0801DFCE
	ldr r0, _0801DFF0
	ldr r0, [r0]
	bl sub_80038AC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0801DFC8
	b _0801E0E0
_0801DFC8:
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	beq _0801DFDE
_0801DFCE:
	movs r0, #0
	strb r0, [r4, #0xa]
	adds r0, r4, #0
	movs r1, #0x39
	movs r2, #0
	movs r3, #0
	bl sub_8003368
_0801DFDE:
	ldr r0, _0801DFF0
	ldr r0, [r0]
	ldr r1, _0801DFF4
	movs r2, #0xb4
	lsls r2, r2, #0xf
	b _0801E0B4
	.align 2, 0
_0801DFEC: .4byte gPlayerSprite
_0801DFF0: .4byte dword_2000FC8
_0801DFF4: .4byte 0x0001199A
_0801DFF8:
	ldr r4, _0801E030
	ldrb r0, [r4, #0xa]
	cmp r0, #4
	bne _0801E014
	ldr r0, _0801E034
	ldr r0, [r0]
	bl sub_80038AC
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0801E0E0
	ldrb r0, [r4, #0xa]
	cmp r0, #4
	beq _0801E024
_0801E014:
	movs r0, #4
	strb r0, [r4, #0xa]
	adds r0, r4, #0
	movs r1, #0x39
	movs r2, #0
	movs r3, #0
	bl sub_8003368
_0801E024:
	ldr r0, _0801E034
	ldr r0, [r0]
	ldr r1, _0801E038
	movs r2, #0x87
	lsls r2, r2, #0x11
	b _0801E0B4
	.align 2, 0
_0801E030: .4byte gPlayerSprite
_0801E034: .4byte dword_2000FC8
_0801E038: .4byte 0x0001199A
_0801E03C:
	ldr r4, _0801E074
	ldrb r0, [r4, #0xa]
	cmp r0, #6
	bne _0801E058
	ldr r0, _0801E078
	ldr r0, [r0]
	bl sub_80038AC
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0801E0E0
	ldrb r0, [r4, #0xa]
	cmp r0, #6
	beq _0801E068
_0801E058:
	movs r0, #6
	strb r0, [r4, #0xa]
	adds r0, r4, #0
	movs r1, #0x39
	movs r2, #0
	movs r3, #0
	bl sub_8003368
_0801E068:
	ldr r0, _0801E078
	ldr r0, [r0]
	ldr r1, _0801E07C
	movs r2, #0xb4
	lsls r2, r2, #0x10
	b _0801E0B4
	.align 2, 0
_0801E074: .4byte gPlayerSprite
_0801E078: .4byte dword_2000FC8
_0801E07C: .4byte 0x0001199A
_0801E080:
	ldr r4, _0801E0BC
	ldrb r0, [r4, #0xa]
	cmp r0, #2
	bne _0801E09C
	ldr r0, _0801E0C0
	ldr r0, [r0]
	bl sub_80038AC
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0801E0E0
	ldrb r0, [r4, #0xa]
	cmp r0, #2
	beq _0801E0AC
_0801E09C:
	movs r0, #2
	strb r0, [r4, #0xa]
	adds r0, r4, #0
	movs r1, #0x39
	movs r2, #0
	movs r3, #0
	bl sub_8003368
_0801E0AC:
	ldr r0, _0801E0C0
	ldr r0, [r0]
	ldr r1, _0801E0C4
	movs r2, #0
_0801E0B4:
	movs r3, #0
	bl sub_8003884
	b _0801E0E0
	.align 2, 0
_0801E0BC: .4byte gPlayerSprite
_0801E0C0: .4byte dword_2000FC8
_0801E0C4: .4byte 0x0001199A
_0801E0C8:
	ldr r0, _0801E0E8
	ldr r0, [r0]
	ldr r2, _0801E0EC
	ldr r1, _0801E0F0
	ldrb r1, [r1, #0xa]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r2, [r1]
	movs r1, #0
	movs r3, #0
	bl sub_8003884
_0801E0E0:
	add sp, #8
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801E0E8: .4byte dword_2000FC8
_0801E0EC: .4byte dword_80CC290
_0801E0F0: .4byte gPlayerSprite

	.thumb
sub_801E0F4: @ 0x0801E0F4
	push {r4, r5, lr}
	adds r4, r0, #0
	.2byte 0xEE00, 0xEE00
	ldr r2, _0801E130
	ldrb r3, [r2, #0x16]
	cmp r3, #0
	bne _0801E144
	ldr r2, _0801E134
	ldr r1, _0801E138
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0x30
	strh r0, [r1]
	ldr r0, _0801E13C
	movs r1, #0x41
	movs r2, #0
	movs r3, #1
	bl sub_8003368
	ldr r0, _0801E140
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #0xa
	movs r2, #0x80
	lsls r2, r2, #7
	bl CallARM_store_jump_and_other_value
	b _0801E1D0
	.align 2, 0
_0801E130: .4byte gGameStatus
_0801E134: .4byte gPreviousPlayerState
_0801E138: .4byte gPlayerState
_0801E13C: .4byte gPlayerSprite
_0801E140: .4byte dword_2000FC8
_0801E144:
	ldr r1, _0801E198
	ldrh r0, [r1]
	cmp r0, #0
	bne _0801E1B0
	ldr r0, _0801E19C
	ldrh r0, [r0]
	strh r0, [r1]
	subs r0, r3, #1
	strb r0, [r2, #0x16]
	ldrb r1, [r2, #0x16]
	movs r0, #0x39
	bl sub_08040204
	movs r0, #0x39
	bl sub_08041FA4
	ldr r0, _0801E1A0
	ldrb r0, [r0]
	cmp r0, #0
	beq _0801E1B4
	ldr r2, _0801E1A4
	movs r1, #0xf6
	lsls r1, r1, #2
	adds r0, r2, r1
	ldrh r0, [r0]
	ldr r3, _0801E1A8
	ldr r5, _0801E1AC
	adds r1, r2, r5
	ldrb r3, [r3]
	adds r1, r1, r3
	ldrb r1, [r1]
	movs r3, #0xf7
	lsls r3, r3, #2
	adds r2, r2, r3
	ldr r2, [r2]
	movs r5, #0x80
	lsls r5, r5, #9
	adds r2, r2, r5
	bl audio_new_fx
	b _0801E1B4
	.align 2, 0
_0801E198: .4byte 0x02002098
_0801E19C: .4byte 0x02002096
_0801E1A0: .4byte byte_203EA89
_0801E1A4: .4byte 0x080CE440
_0801E1A8: .4byte byte_203EA8C
_0801E1AC: .4byte 0x000003DA
_0801E1B0:
	subs r0, #1
	strh r0, [r1]
_0801E1B4:
	movs r0, #2
	ands r0, r4
	cmp r0, #0
	bne _0801E1D0
	ldr r2, _0801E1D8
	ldr r1, _0801E1DC
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0x2d
	strh r0, [r1]
	ldr r0, _0801E1E0
	ldr r0, [r0]
	bl sub_800387C
_0801E1D0:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801E1D8: .4byte gPreviousPlayerState
_0801E1DC: .4byte gPlayerState
_0801E1E0: .4byte dword_2000FC8

	.thumb
sub_801E1E4: @ 0x0801E1E4
	push {r4, lr}
	sub sp, #0x10
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	add r1, sp, #0xc
	add r0, sp, #8
	bl sub_8016710
	ldr r0, _0801E284
	bl sub_8003770
	cmp r0, #0
	beq _0801E27C
	ldr r2, _0801E288
	ldr r1, _0801E28C
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0
	strh r0, [r1]
	ldr r0, _0801E290
	ldrb r0, [r0]
	ldr r1, _0801E294
	ldr r1, [r1]
	ldr r2, _0801E298
	ldr r2, [r2]
	ldr r3, _0801E29C
	ldr r3, [r3]
	movs r4, #1
	str r4, [sp]
	movs r4, #0
	str r4, [sp, #4]
	bl sub_800C1E8
	bl sub_8017C50
	movs r0, #0x39
	bl sub_0804200C
	ldr r1, _0801E2A0
	ldrb r2, [r1, #0x17]
	ldrb r0, [r1, #0x16]
	cmp r0, r2
	beq _0801E274
	strb r2, [r1, #0x16]
	ldrb r1, [r1, #0x16]
	movs r0, #0x39
	bl sub_08040204
	ldr r0, _0801E2A4
	ldrb r0, [r0]
	cmp r0, #0
	beq _0801E274
	ldr r2, _0801E2A8
	movs r1, #0xf8
	lsls r1, r1, #2
	adds r0, r2, r1
	ldrh r0, [r0]
	ldr r3, _0801E2AC
	ldr r4, _0801E2B0
	adds r1, r2, r4
	ldrb r3, [r3]
	adds r1, r1, r3
	ldrb r1, [r1]
	movs r3, #0xf9
	lsls r3, r3, #2
	adds r2, r2, r3
	ldr r2, [r2]
	movs r4, #0x80
	lsls r4, r4, #9
	adds r2, r2, r4
	bl audio_new_fx
_0801E274:
	ldr r0, _0801E2B4
	ldr r0, [r0]
	bl sub_800387C
_0801E27C:
	add sp, #0x10
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801E284: .4byte gPlayerSprite
_0801E288: .4byte gPreviousPlayerState
_0801E28C: .4byte gPlayerState
_0801E290: .4byte 0x02001094
_0801E294: .4byte 0x02001098
_0801E298: .4byte 0x0200109C
_0801E29C: .4byte 0x020010A0
_0801E2A0: .4byte gGameStatus
_0801E2A4: .4byte byte_203EA89
_0801E2A8: .4byte 0x080CE440
_0801E2AC: .4byte byte_203EA8C
_0801E2B0: .4byte 0x000003E2
_0801E2B4: .4byte dword_2000FC8

	.thumb
sub_801E2B8: @ 0x0801E2B8
	push {r4, lr}
	ldr r4, _0801E314
	adds r0, r4, #0
	bl sub_8003770
	cmp r0, #0
	beq _0801E36C
	ldr r0, _0801E318
	ldrb r0, [r0, #0x13]
	cmp r0, #0
	bne _0801E336
	ldr r0, _0801E31C
	ldrb r0, [r0]
	cmp r0, #0
	beq _0801E330
	bl sub_800F7A0
	ldr r2, _0801E320
	ldr r1, _0801E324
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0x2d
	strh r0, [r1]
	adds r0, r4, #0
	movs r1, #0x39
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r0, _0801E328
	ldr r0, [r0]
	ldr r2, _0801E32C
	ldrb r1, [r4, #0xa]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r2, [r1]
	movs r1, #0
	movs r3, #0
	bl sub_8003884
	ldrb r1, [r4, #0xa]
	movs r0, #0
	bl sub_8016790
	b _0801E36C
	.align 2, 0
_0801E314: .4byte gPlayerSprite
_0801E318: .4byte gGameStatus
_0801E31C: .4byte 0x02001370
_0801E320: .4byte gPreviousPlayerState
_0801E324: .4byte gPlayerState
_0801E328: .4byte dword_2000FC8
_0801E32C: .4byte dword_80CC290
_0801E330:
	bl sub_8016890
	b _0801E36C
_0801E336:
	ldr r2, _0801E374
	ldr r1, _0801E378
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0x2d
	strh r0, [r1]
	adds r0, r4, #0
	movs r1, #0x39
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r0, _0801E37C
	ldr r0, [r0]
	ldr r2, _0801E380
	ldrb r1, [r4, #0xa]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r2, [r1]
	movs r1, #0
	movs r3, #0
	bl sub_8003884
	ldrb r1, [r4, #0xa]
	movs r0, #0
	bl sub_8016790
_0801E36C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801E374: .4byte gPreviousPlayerState
_0801E378: .4byte gPlayerState
_0801E37C: .4byte dword_2000FC8
_0801E380: .4byte dword_80CC290

	.thumb
sub_801E384: @ 0x0801E384
	push {r4, lr}
	sub sp, #8
	str r0, [sp]
	str r1, [sp, #4]
	add r1, sp, #4
	mov r0, sp
	bl sub_8016710
	ldr r0, [sp, #4]
	ldr r1, _0801E3A4
	ands r0, r1
	cmp r0, #1
	bne _0801E3A8
	bl sub_8017664
	b _0801E674
	.align 2, 0
_0801E3A4: .4byte 0x0000030F
_0801E3A8:
	ldr r1, [sp]
	movs r0, #0xf0
	ands r1, r0
	cmp r1, #0x50
	beq _0801E3EA
	cmp r1, #0x50
	bgt _0801E3D0
	cmp r1, #0x20
	bne _0801E3BC
	b _0801E5A0
_0801E3BC:
	cmp r1, #0x20
	bgt _0801E3C8
	cmp r1, #0x10
	bne _0801E3C6
	b _0801E5E8
_0801E3C6:
	b _0801E63C
_0801E3C8:
	cmp r1, #0x40
	bne _0801E3CE
	b _0801E510
_0801E3CE:
	b _0801E63C
_0801E3D0:
	cmp r1, #0x80
	bne _0801E3D6
	b _0801E558
_0801E3D6:
	cmp r1, #0x80
	bgt _0801E3E0
	cmp r1, #0x60
	beq _0801E4C8
	b _0801E63C
_0801E3E0:
	cmp r1, #0x90
	beq _0801E434
	cmp r1, #0xa0
	beq _0801E480
	b _0801E63C
_0801E3EA:
	ldr r2, _0801E420
	ldr r1, _0801E424
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0x31
	strh r0, [r1]
	ldr r4, _0801E428
	ldrb r0, [r4, #0xa]
	cmp r0, #1
	bne _0801E400
	b _0801E61C
_0801E400:
	movs r0, #1
	strb r0, [r4, #0xa]
	ldr r1, _0801E42C
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r0, _0801E430
	ldr r0, [r0]
	movs r1, #0xa0
	lsls r1, r1, #0xa
	movs r2, #0xb4
	lsls r2, r2, #0xe
	b _0801E616
	.align 2, 0
_0801E420: .4byte gPreviousPlayerState
_0801E424: .4byte gPlayerState
_0801E428: .4byte gPlayerSprite
_0801E42C: .4byte 0x00000149
_0801E430: .4byte dword_2000FC8
_0801E434:
	ldr r2, _0801E468
	ldr r1, _0801E46C
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0x31
	strh r0, [r1]
	ldr r4, _0801E470
	ldrb r0, [r4, #0xa]
	cmp r0, #3
	bne _0801E44A
	b _0801E61C
_0801E44A:
	movs r0, #3
	strb r0, [r4, #0xa]
	ldr r1, _0801E474
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r0, _0801E478
	ldr r0, [r0]
	movs r1, #0xa0
	lsls r1, r1, #0xa
	ldr r2, _0801E47C
	b _0801E616
	.align 2, 0
_0801E468: .4byte gPreviousPlayerState
_0801E46C: .4byte gPlayerState
_0801E470: .4byte gPlayerSprite
_0801E474: .4byte 0x00000149
_0801E478: .4byte dword_2000FC8
_0801E47C: .4byte 0x013B0000
_0801E480:
	ldr r2, _0801E4B4
	ldr r1, _0801E4B8
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0x31
	strh r0, [r1]
	ldr r4, _0801E4BC
	ldrb r0, [r4, #0xa]
	cmp r0, #5
	bne _0801E496
	b _0801E61C
_0801E496:
	movs r0, #5
	strb r0, [r4, #0xa]
	ldr r1, _0801E4C0
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r0, _0801E4C4
	ldr r0, [r0]
	movs r1, #0xa0
	lsls r1, r1, #0xa
	movs r2, #0xe1
	lsls r2, r2, #0x10
	b _0801E616
	.align 2, 0
_0801E4B4: .4byte gPreviousPlayerState
_0801E4B8: .4byte gPlayerState
_0801E4BC: .4byte gPlayerSprite
_0801E4C0: .4byte 0x00000149
_0801E4C4: .4byte dword_2000FC8
_0801E4C8:
	ldr r2, _0801E4FC
	ldr r1, _0801E500
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0x31
	strh r0, [r1]
	ldr r4, _0801E504
	ldrb r0, [r4, #0xa]
	cmp r0, #7
	bne _0801E4DE
	b _0801E61C
_0801E4DE:
	movs r0, #7
	strb r0, [r4, #0xa]
	ldr r1, _0801E508
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r0, _0801E50C
	ldr r0, [r0]
	movs r1, #0xa0
	lsls r1, r1, #0xa
	movs r2, #0x87
	lsls r2, r2, #0x10
	b _0801E616
	.align 2, 0
_0801E4FC: .4byte gPreviousPlayerState
_0801E500: .4byte gPlayerState
_0801E504: .4byte gPlayerSprite
_0801E508: .4byte 0x00000149
_0801E50C: .4byte dword_2000FC8
_0801E510:
	ldr r2, _0801E544
	ldr r1, _0801E548
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0x31
	strh r0, [r1]
	ldr r4, _0801E54C
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	beq _0801E61C
	movs r0, #0
	strb r0, [r4, #0xa]
	ldr r1, _0801E550
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r0, _0801E554
	ldr r0, [r0]
	movs r1, #0xa0
	lsls r1, r1, #0xa
	movs r2, #0xb4
	lsls r2, r2, #0xf
	b _0801E616
	.align 2, 0
_0801E544: .4byte gPreviousPlayerState
_0801E548: .4byte gPlayerState
_0801E54C: .4byte gPlayerSprite
_0801E550: .4byte 0x00000149
_0801E554: .4byte dword_2000FC8
_0801E558:
	ldr r2, _0801E58C
	ldr r1, _0801E590
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0x31
	strh r0, [r1]
	ldr r4, _0801E594
	ldrb r0, [r4, #0xa]
	cmp r0, #4
	beq _0801E61C
	movs r0, #4
	strb r0, [r4, #0xa]
	ldr r1, _0801E598
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r0, _0801E59C
	ldr r0, [r0]
	movs r1, #0xa0
	lsls r1, r1, #0xa
	movs r2, #0x87
	lsls r2, r2, #0x11
	b _0801E616
	.align 2, 0
_0801E58C: .4byte gPreviousPlayerState
_0801E590: .4byte gPlayerState
_0801E594: .4byte gPlayerSprite
_0801E598: .4byte 0x00000149
_0801E59C: .4byte dword_2000FC8
_0801E5A0:
	ldr r2, _0801E5D4
	ldr r1, _0801E5D8
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0x31
	strh r0, [r1]
	ldr r4, _0801E5DC
	ldrb r0, [r4, #0xa]
	cmp r0, #6
	beq _0801E61C
	movs r0, #6
	strb r0, [r4, #0xa]
	ldr r1, _0801E5E0
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r0, _0801E5E4
	ldr r0, [r0]
	movs r1, #0xa0
	lsls r1, r1, #0xa
	movs r2, #0xb4
	lsls r2, r2, #0x10
	b _0801E616
	.align 2, 0
_0801E5D4: .4byte gPreviousPlayerState
_0801E5D8: .4byte gPlayerState
_0801E5DC: .4byte gPlayerSprite
_0801E5E0: .4byte 0x00000149
_0801E5E4: .4byte dword_2000FC8
_0801E5E8:
	ldr r2, _0801E628
	ldr r1, _0801E62C
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0x31
	strh r0, [r1]
	ldr r4, _0801E630
	ldrb r0, [r4, #0xa]
	cmp r0, #2
	beq _0801E61C
	movs r0, #2
	strb r0, [r4, #0xa]
	ldr r1, _0801E634
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r0, _0801E638
	ldr r0, [r0]
	movs r1, #0xa0
	lsls r1, r1, #0xa
	movs r2, #0
_0801E616:
	movs r3, #0
	bl sub_8003884
_0801E61C:
	ldrb r1, [r4, #0xa]
	movs r0, #0
	bl sub_8016790
	b _0801E674
	.align 2, 0
_0801E628: .4byte gPreviousPlayerState
_0801E62C: .4byte gPlayerState
_0801E630: .4byte gPlayerSprite
_0801E634: .4byte 0x00000149
_0801E638: .4byte dword_2000FC8
_0801E63C:
	ldr r2, _0801E67C
	ldr r1, _0801E680
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0x32
	strh r0, [r1]
	ldr r4, _0801E684
	ldr r1, _0801E688
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r0, _0801E68C
	ldr r0, [r0]
	ldr r2, _0801E690
	ldrb r1, [r4, #0xa]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r2, [r1]
	movs r1, #0
	movs r3, #0
	bl sub_8003884
	ldrb r1, [r4, #0xa]
	movs r0, #0
	bl sub_8016790
_0801E674:
	add sp, #8
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801E67C: .4byte gPreviousPlayerState
_0801E680: .4byte gPlayerState
_0801E684: .4byte gPlayerSprite
_0801E688: .4byte 0x00000141
_0801E68C: .4byte dword_2000FC8
_0801E690: .4byte dword_80CC290

	.thumb
sub_801E694: @ 0x0801E694
	push {r4, lr}
	sub sp, #8
	str r0, [sp]
	str r1, [sp, #4]
	add r1, sp, #4
	mov r0, sp
	bl sub_8016710
	ldr r1, [sp, #4]
	ldr r0, _0801E6C4
	ands r1, r0
	cmp r1, #1
	beq _0801E6C8
	cmp r1, #2
	beq _0801E6E2
	ldr r1, [sp]
	movs r0, #0xf0
	ands r1, r0
	cmp r1, #0x50
	beq _0801E790
	cmp r1, #0x50
	bgt _0801E776
	b _0801E75C
	.align 2, 0
_0801E6C4: .4byte 0x0000030F
_0801E6C8:
	ldr r0, _0801E6D8
	ldrb r0, [r0]
	cmp r0, #0
	beq _0801E6DC
	movs r0, #0
	bl sub_80186F4
	b _0801E99A
	.align 2, 0
_0801E6D8: .4byte gInInteractionArea
_0801E6DC:
	bl sub_8017664
	b _0801E99A
_0801E6E2:
	ldr r2, _0801E738
	ldr r1, _0801E73C
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0x36
	strh r0, [r1]
	ldr r4, _0801E740
	ldr r1, _0801E744
	adds r0, r4, #0
	movs r2, #0
	movs r3, #3
	bl sub_8003368
	ldrb r1, [r4, #0xa]
	movs r0, #0xe
	bl sub_8016790
	ldr r0, _0801E748
	ldrb r0, [r0]
	cmp r0, #0
	bne _0801E70E
	b _0801E99A
_0801E70E:
	ldr r2, _0801E74C
	movs r1, #0xc0
	lsls r1, r1, #3
	adds r0, r2, r1
	ldrh r0, [r0]
	ldr r3, _0801E750
	ldr r4, _0801E754
	adds r1, r2, r4
	ldrb r3, [r3]
	adds r1, r1, r3
	ldrb r1, [r1]
	ldr r3, _0801E758
	adds r2, r2, r3
	ldr r2, [r2]
	movs r4, #0x80
	lsls r4, r4, #9
	adds r2, r2, r4
	bl audio_new_fx
	b _0801E99A
	.align 2, 0
_0801E738: .4byte gPreviousPlayerState
_0801E73C: .4byte gPlayerState
_0801E740: .4byte gPlayerSprite
_0801E744: .4byte 0x00000129
_0801E748: .4byte byte_203EA89
_0801E74C: .4byte 0x080CE440
_0801E750: .4byte byte_203EA8C
_0801E754: .4byte 0x00000602
_0801E758: .4byte 0x00000604
_0801E75C:
	cmp r1, #0x20
	bne _0801E762
	b _0801E914
_0801E762:
	cmp r1, #0x20
	bgt _0801E76E
	cmp r1, #0x10
	bne _0801E76C
	b _0801E964
_0801E76C:
	b _0801E99A
_0801E76E:
	cmp r1, #0x40
	bne _0801E774
	b _0801E894
_0801E774:
	b _0801E99A
_0801E776:
	cmp r1, #0x80
	bne _0801E77C
	b _0801E8D4
_0801E77C:
	cmp r1, #0x80
	bgt _0801E786
	cmp r1, #0x60
	beq _0801E854
	b _0801E99A
_0801E786:
	cmp r1, #0x90
	beq _0801E7D0
	cmp r1, #0xa0
	beq _0801E814
	b _0801E99A
_0801E790:
	ldr r2, _0801E7BC
	ldr r1, _0801E7C0
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0x31
	strh r0, [r1]
	ldr r4, _0801E7C4
	movs r0, #1
	strb r0, [r4, #0xa]
	ldr r1, _0801E7C8
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r0, _0801E7CC
	ldr r0, [r0]
	movs r1, #0xa0
	lsls r1, r1, #0xa
	movs r2, #0xb4
	lsls r2, r2, #0xe
	b _0801E93E
	.align 2, 0
_0801E7BC: .4byte gPreviousPlayerState
_0801E7C0: .4byte gPlayerState
_0801E7C4: .4byte gPlayerSprite
_0801E7C8: .4byte 0x00000149
_0801E7CC: .4byte dword_2000FC8
_0801E7D0:
	ldr r2, _0801E7FC
	ldr r1, _0801E800
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0x31
	strh r0, [r1]
	ldr r4, _0801E804
	movs r0, #3
	strb r0, [r4, #0xa]
	ldr r1, _0801E808
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r0, _0801E80C
	ldr r0, [r0]
	movs r1, #0xa0
	lsls r1, r1, #0xa
	ldr r2, _0801E810
	b _0801E93E
	.align 2, 0
_0801E7FC: .4byte gPreviousPlayerState
_0801E800: .4byte gPlayerState
_0801E804: .4byte gPlayerSprite
_0801E808: .4byte 0x00000149
_0801E80C: .4byte dword_2000FC8
_0801E810: .4byte 0x013B0000
_0801E814:
	ldr r2, _0801E840
	ldr r1, _0801E844
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0x31
	strh r0, [r1]
	ldr r4, _0801E848
	movs r0, #5
	strb r0, [r4, #0xa]
	ldr r1, _0801E84C
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r0, _0801E850
	ldr r0, [r0]
	movs r1, #0xa0
	lsls r1, r1, #0xa
	movs r2, #0xe1
	lsls r2, r2, #0x10
	b _0801E93E
	.align 2, 0
_0801E840: .4byte gPreviousPlayerState
_0801E844: .4byte gPlayerState
_0801E848: .4byte gPlayerSprite
_0801E84C: .4byte 0x00000149
_0801E850: .4byte dword_2000FC8
_0801E854:
	ldr r2, _0801E880
	ldr r1, _0801E884
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0x31
	strh r0, [r1]
	ldr r4, _0801E888
	movs r0, #7
	strb r0, [r4, #0xa]
	ldr r1, _0801E88C
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r0, _0801E890
	ldr r0, [r0]
	movs r1, #0xa0
	lsls r1, r1, #0xa
	movs r2, #0x87
	lsls r2, r2, #0x10
	b _0801E93E
	.align 2, 0
_0801E880: .4byte gPreviousPlayerState
_0801E884: .4byte gPlayerState
_0801E888: .4byte gPlayerSprite
_0801E88C: .4byte 0x00000149
_0801E890: .4byte dword_2000FC8
_0801E894:
	ldr r2, _0801E8C0
	ldr r1, _0801E8C4
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0x31
	strh r0, [r1]
	ldr r4, _0801E8C8
	movs r0, #0
	strb r0, [r4, #0xa]
	ldr r1, _0801E8CC
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r0, _0801E8D0
	ldr r0, [r0]
	movs r1, #0xa0
	lsls r1, r1, #0xa
	movs r2, #0xb4
	lsls r2, r2, #0xf
	b _0801E93E
	.align 2, 0
_0801E8C0: .4byte gPreviousPlayerState
_0801E8C4: .4byte gPlayerState
_0801E8C8: .4byte gPlayerSprite
_0801E8CC: .4byte 0x00000149
_0801E8D0: .4byte dword_2000FC8
_0801E8D4:
	ldr r2, _0801E900
	ldr r1, _0801E904
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0x31
	strh r0, [r1]
	ldr r4, _0801E908
	movs r0, #4
	strb r0, [r4, #0xa]
	ldr r1, _0801E90C
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r0, _0801E910
	ldr r0, [r0]
	movs r1, #0xa0
	lsls r1, r1, #0xa
	movs r2, #0x87
	lsls r2, r2, #0x11
	b _0801E93E
	.align 2, 0
_0801E900: .4byte gPreviousPlayerState
_0801E904: .4byte gPlayerState
_0801E908: .4byte gPlayerSprite
_0801E90C: .4byte 0x00000149
_0801E910: .4byte dword_2000FC8
_0801E914:
	ldr r2, _0801E950
	ldr r1, _0801E954
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0x31
	strh r0, [r1]
	ldr r4, _0801E958
	movs r0, #6
	strb r0, [r4, #0xa]
	ldr r1, _0801E95C
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r0, _0801E960
	ldr r0, [r0]
	movs r1, #0xa0
	lsls r1, r1, #0xa
	movs r2, #0xb4
	lsls r2, r2, #0x10
_0801E93E:
	movs r3, #0
	bl sub_8003884
	ldrb r1, [r4, #0xa]
	movs r0, #0
	bl sub_8016790
	b _0801E99A
	.align 2, 0
_0801E950: .4byte gPreviousPlayerState
_0801E954: .4byte gPlayerState
_0801E958: .4byte gPlayerSprite
_0801E95C: .4byte 0x00000149
_0801E960: .4byte dword_2000FC8
_0801E964:
	ldr r2, _0801E9A4
	ldr r1, _0801E9A8
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0x31
	strh r0, [r1]
	ldr r4, _0801E9AC
	movs r0, #2
	strb r0, [r4, #0xa]
	ldr r1, _0801E9B0
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r0, _0801E9B4
	ldr r0, [r0]
	movs r1, #0xa0
	lsls r1, r1, #0xa
	movs r2, #0
	movs r3, #0
	bl sub_8003884
	ldrb r1, [r4, #0xa]
	movs r0, #0
	bl sub_8016790
_0801E99A:
	add sp, #8
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801E9A4: .4byte gPreviousPlayerState
_0801E9A8: .4byte gPlayerState
_0801E9AC: .4byte gPlayerSprite
_0801E9B0: .4byte 0x00000149
_0801E9B4: .4byte dword_2000FC8

	.thumb
sub_801E9B8: @ 0x0801E9B8
	push {r4, r5, lr}
	sub sp, #8
	str r0, [sp]
	str r1, [sp, #4]
	add r1, sp, #4
	mov r0, sp
	bl sub_8016710
	ldr r0, [sp]
	ldr r1, [sp, #4]
	bl sub_8016624
	ldr r5, _0801EA18
	ldr r0, [r5]
	bl sub_80038BC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0801E9F6
	ldr r2, _0801EA1C
	ldr r1, _0801EA20
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0x34
	strh r0, [r1]
	ldr r0, _0801EA24
	ldr r1, _0801EA28
	movs r2, #0
	movs r3, #1
	bl sub_8003368
_0801E9F6:
	ldr r1, [sp]
	movs r0, #0xf0
	ands r1, r0
	cmp r1, #0x50
	beq _0801EA4A
	cmp r1, #0x50
	bgt _0801EA32
	cmp r1, #0x20
	bne _0801EA0A
	b _0801EAF8
_0801EA0A:
	cmp r1, #0x20
	bgt _0801EA2C
	cmp r1, #0x10
	bne _0801EA14
	b _0801EB14
_0801EA14:
	b _0801EB5C
	.align 2, 0
_0801EA18: .4byte dword_2000FC8
_0801EA1C: .4byte gPreviousPlayerState
_0801EA20: .4byte gPlayerState
_0801EA24: .4byte gPlayerSprite
_0801EA28: .4byte 0x00000139
_0801EA2C:
	cmp r1, #0x40
	beq _0801EAC0
	b _0801EB5C
_0801EA32:
	cmp r1, #0x80
	beq _0801EADC
	cmp r1, #0x80
	bgt _0801EA40
	cmp r1, #0x60
	beq _0801EAA4
	b _0801EB5C
_0801EA40:
	cmp r1, #0x90
	beq _0801EA68
	cmp r1, #0xa0
	beq _0801EA88
	b _0801EB5C
_0801EA4A:
	ldr r4, _0801EA64
	ldrb r0, [r4, #0xa]
	cmp r0, #1
	bne _0801EA60
	ldr r0, [r5]
	bl sub_80038AC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0801EA60
	b _0801EB82
_0801EA60:
	movs r0, #1
	b _0801EB2A
	.align 2, 0
_0801EA64: .4byte gPlayerSprite
_0801EA68:
	ldr r4, _0801EA84
	ldrb r0, [r4, #0xa]
	cmp r0, #3
	bne _0801EA7E
	ldr r0, [r5]
	bl sub_80038AC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0801EA7E
	b _0801EB82
_0801EA7E:
	movs r0, #3
	b _0801EB2A
	.align 2, 0
_0801EA84: .4byte gPlayerSprite
_0801EA88:
	ldr r4, _0801EAA0
	ldrb r0, [r4, #0xa]
	cmp r0, #5
	bne _0801EA9C
	ldr r0, [r5]
	bl sub_80038AC
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0801EB82
_0801EA9C:
	movs r0, #5
	b _0801EB2A
	.align 2, 0
_0801EAA0: .4byte gPlayerSprite
_0801EAA4:
	ldr r4, _0801EABC
	ldrb r0, [r4, #0xa]
	cmp r0, #7
	bne _0801EAB8
	ldr r0, [r5]
	bl sub_80038AC
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0801EB82
_0801EAB8:
	movs r0, #7
	b _0801EB2A
	.align 2, 0
_0801EABC: .4byte gPlayerSprite
_0801EAC0:
	ldr r4, _0801EAD8
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _0801EAD4
	ldr r0, [r5]
	bl sub_80038AC
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0801EB82
_0801EAD4:
	movs r0, #0
	b _0801EB2A
	.align 2, 0
_0801EAD8: .4byte gPlayerSprite
_0801EADC:
	ldr r4, _0801EAF4
	ldrb r0, [r4, #0xa]
	cmp r0, #4
	bne _0801EAF0
	ldr r0, [r5]
	bl sub_80038AC
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0801EB82
_0801EAF0:
	movs r0, #4
	b _0801EB2A
	.align 2, 0
_0801EAF4: .4byte gPlayerSprite
_0801EAF8:
	ldr r4, _0801EB10
	ldrb r0, [r4, #0xa]
	cmp r0, #6
	bne _0801EB0C
	ldr r0, [r5]
	bl sub_80038AC
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0801EB82
_0801EB0C:
	movs r0, #6
	b _0801EB2A
	.align 2, 0
_0801EB10: .4byte gPlayerSprite
_0801EB14:
	ldr r4, _0801EB50
	ldrb r0, [r4, #0xa]
	cmp r0, #2
	bne _0801EB28
	ldr r0, [r5]
	bl sub_80038AC
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0801EB82
_0801EB28:
	movs r0, #2
_0801EB2A:
	strb r0, [r4, #0xa]
	ldr r1, _0801EB54
	adds r0, r4, #0
	movs r2, #0
	movs r3, #1
	bl sub_8003368
	ldr r0, [r5]
	movs r1, #0x98
	lsls r1, r1, #9
	ldr r3, _0801EB58
	ldrb r2, [r4, #0xa]
	lsls r2, r2, #2
	adds r2, r2, r3
	ldr r2, [r2]
	movs r3, #0
	bl sub_8003884
	b _0801EB82
	.align 2, 0
_0801EB50: .4byte gPlayerSprite
_0801EB54: .4byte 0x00000131
_0801EB58: .4byte dword_80CC290
_0801EB5C:
	ldr r4, _0801EB8C
	ldr r0, [r4]
	bl sub_80038AC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0801EB82
	ldr r0, [r4]
	movs r1, #0xc0
	lsls r1, r1, #6
	ldr r3, _0801EB90
	ldr r2, _0801EB94
	ldrb r2, [r2, #0xa]
	lsls r2, r2, #2
	adds r2, r2, r3
	ldr r2, [r2]
	movs r3, #0
	bl sub_8003884
_0801EB82:
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801EB8C: .4byte dword_2000FC8
_0801EB90: .4byte dword_80CC290
_0801EB94: .4byte gPlayerSprite

	.thumb
sub_801EB98: @ 0x0801EB98
	push {r4, lr}
	sub sp, #8
	str r0, [sp]
	str r1, [sp, #4]
	add r1, sp, #4
	mov r0, sp
	bl sub_8016710
	ldr r0, [sp]
	ldr r1, [sp, #4]
	bl sub_8016624
	ldr r1, [sp]
	movs r0, #0xf0
	ands r1, r0
	cmp r1, #0x50
	beq _0801EBEE
	cmp r1, #0x50
	bgt _0801EBD6
	cmp r1, #0x20
	bne _0801EBC4
	b _0801ECC8
_0801EBC4:
	cmp r1, #0x20
	bgt _0801EBD0
	cmp r1, #0x10
	bne _0801EBCE
	b _0801ECEC
_0801EBCE:
	b _0801ED3C
_0801EBD0:
	cmp r1, #0x40
	beq _0801EC80
	b _0801ED3C
_0801EBD6:
	cmp r1, #0x80
	beq _0801ECA4
	cmp r1, #0x80
	bgt _0801EBE4
	cmp r1, #0x60
	beq _0801EC5C
	b _0801ED3C
_0801EBE4:
	cmp r1, #0x90
	beq _0801EC14
	cmp r1, #0xa0
	beq _0801EC38
	b _0801ED3C
_0801EBEE:
	ldr r4, _0801EC0C
	ldrb r0, [r4, #0xa]
	cmp r0, #1
	bne _0801EC06
	ldr r0, _0801EC10
	ldr r0, [r0]
	bl sub_80038AC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0801EC06
	b _0801ED62
_0801EC06:
	movs r0, #1
	b _0801ED04
	.align 2, 0
_0801EC0C: .4byte gPlayerSprite
_0801EC10: .4byte dword_2000FC8
_0801EC14:
	ldr r4, _0801EC30
	ldrb r0, [r4, #0xa]
	cmp r0, #3
	bne _0801EC2C
	ldr r0, _0801EC34
	ldr r0, [r0]
	bl sub_80038AC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0801EC2C
	b _0801ED62
_0801EC2C:
	movs r0, #3
	b _0801ED04
	.align 2, 0
_0801EC30: .4byte gPlayerSprite
_0801EC34: .4byte dword_2000FC8
_0801EC38:
	ldr r4, _0801EC54
	ldrb r0, [r4, #0xa]
	cmp r0, #5
	bne _0801EC50
	ldr r0, _0801EC58
	ldr r0, [r0]
	bl sub_80038AC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0801EC50
	b _0801ED62
_0801EC50:
	movs r0, #5
	b _0801ED04
	.align 2, 0
_0801EC54: .4byte gPlayerSprite
_0801EC58: .4byte dword_2000FC8
_0801EC5C:
	ldr r4, _0801EC78
	ldrb r0, [r4, #0xa]
	cmp r0, #7
	bne _0801EC72
	ldr r0, _0801EC7C
	ldr r0, [r0]
	bl sub_80038AC
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0801ED62
_0801EC72:
	movs r0, #7
	b _0801ED04
	.align 2, 0
_0801EC78: .4byte gPlayerSprite
_0801EC7C: .4byte dword_2000FC8
_0801EC80:
	ldr r4, _0801EC9C
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _0801EC96
	ldr r0, _0801ECA0
	ldr r0, [r0]
	bl sub_80038AC
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0801ED62
_0801EC96:
	movs r0, #0
	b _0801ED04
	.align 2, 0
_0801EC9C: .4byte gPlayerSprite
_0801ECA0: .4byte dword_2000FC8
_0801ECA4:
	ldr r4, _0801ECC0
	ldrb r0, [r4, #0xa]
	cmp r0, #4
	bne _0801ECBA
	ldr r0, _0801ECC4
	ldr r0, [r0]
	bl sub_80038AC
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0801ED62
_0801ECBA:
	movs r0, #4
	b _0801ED04
	.align 2, 0
_0801ECC0: .4byte gPlayerSprite
_0801ECC4: .4byte dword_2000FC8
_0801ECC8:
	ldr r4, _0801ECE4
	ldrb r0, [r4, #0xa]
	cmp r0, #6
	bne _0801ECDE
	ldr r0, _0801ECE8
	ldr r0, [r0]
	bl sub_80038AC
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0801ED62
_0801ECDE:
	movs r0, #6
	b _0801ED04
	.align 2, 0
_0801ECE4: .4byte gPlayerSprite
_0801ECE8: .4byte dword_2000FC8
_0801ECEC:
	ldr r4, _0801ED2C
	ldrb r0, [r4, #0xa]
	cmp r0, #2
	bne _0801ED02
	ldr r0, _0801ED30
	ldr r0, [r0]
	bl sub_80038AC
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0801ED62
_0801ED02:
	movs r0, #2
_0801ED04:
	strb r0, [r4, #0xa]
	ldr r1, _0801ED34
	adds r0, r4, #0
	movs r2, #0
	movs r3, #1
	bl sub_8003368
	ldr r0, _0801ED30
	ldr r0, [r0]
	movs r1, #0x98
	lsls r1, r1, #9
	ldr r3, _0801ED38
	ldrb r2, [r4, #0xa]
	lsls r2, r2, #2
	adds r2, r2, r3
	ldr r2, [r2]
	movs r3, #0
	bl sub_8003884
	b _0801ED62
	.align 2, 0
_0801ED2C: .4byte gPlayerSprite
_0801ED30: .4byte dword_2000FC8
_0801ED34: .4byte 0x00000139
_0801ED38: .4byte dword_80CC290
_0801ED3C:
	ldr r4, _0801ED6C
	ldr r0, [r4]
	bl sub_80038AC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0801ED62
	ldr r0, [r4]
	movs r1, #0xc0
	lsls r1, r1, #6
	ldr r3, _0801ED70
	ldr r2, _0801ED74
	ldrb r2, [r2, #0xa]
	lsls r2, r2, #2
	adds r2, r2, r3
	ldr r2, [r2]
	movs r3, #0
	bl sub_8003884
_0801ED62:
	add sp, #8
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801ED6C: .4byte dword_2000FC8
_0801ED70: .4byte dword_80CC290
_0801ED74: .4byte gPlayerSprite

	.thumb
sub_801ED78: @ 0x0801ED78
	push {lr}
	sub sp, #8
	str r0, [sp]
	str r1, [sp, #4]
	add r1, sp, #4
	mov r0, sp
	bl sub_8016710
	add sp, #8
	pop {r0}
	bx r0
	.align 2, 0

	.thumb
sub_801ED90: @ 0x0801ED90
	push {r4, lr}
	sub sp, #8
	str r0, [sp]
	str r1, [sp, #4]
	add r1, sp, #4
	mov r0, sp
	bl sub_8016710
	ldr r4, _0801EDD4
	adds r0, r4, #0
	bl sub_8003770
	cmp r0, #0
	beq _0801EDCC
	ldr r2, _0801EDD8
	ldr r1, _0801EDDC
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0x32
	strh r0, [r1]
	ldr r1, _0801EDE0
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldrb r1, [r4, #0xa]
	movs r0, #0
	bl sub_8016790
_0801EDCC:
	add sp, #8
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801EDD4: .4byte gPlayerSprite
_0801EDD8: .4byte gPreviousPlayerState
_0801EDDC: .4byte gPlayerState
_0801EDE0: .4byte 0x00000141

	.thumb
sub_801EDE4: @ 0x0801EDE4
	push {lr}
	ldr r0, _0801EE08
	ldrb r0, [r0]
	cmp r0, #0
	beq _0801EE14
	ldr r0, _0801EE0C
	ldr r0, [r0]
	bl audio_fx_still_active
	cmp r0, #0
	bne _0801EE36
	ldr r0, _0801EE10
	ldrb r0, [r0]
	cmp r0, #0
	bne _0801EE36
	bl sub_80629E8
	b _0801EE36
	.align 2, 0
_0801EE08: .4byte byte_20020B3
_0801EE0C: .4byte 0x020021D8
_0801EE10: .4byte byte_203F99C
_0801EE14:
	ldr r0, _0801EE3C
	bl sub_8003770
	cmp r0, #0
	beq _0801EE36
	ldr r0, _0801EE40
	ldr r0, [r0]
	bl audio_fx_still_active
	cmp r0, #0
	bne _0801EE36
	ldr r0, _0801EE44
	ldrb r0, [r0]
	cmp r0, #0
	bne _0801EE36
	bl sub_80629E8
_0801EE36:
	pop {r0}
	bx r0
	.align 2, 0
_0801EE3C: .4byte gPlayerSprite
_0801EE40: .4byte 0x020021D8
_0801EE44: .4byte byte_203F99C

	.thumb
sub_801EE48: @ 0x0801EE48
	push {r4, lr}
	sub sp, #8
	str r0, [sp]
	str r1, [sp, #4]
	add r1, sp, #4
	mov r0, sp
	bl sub_8016710
	ldr r4, _0801EEA4
	adds r0, r4, #0
	bl sub_8003770
	cmp r0, #0
	beq _0801EE9A
	ldr r2, _0801EEA8
	ldr r1, _0801EEAC
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0x32
	strh r0, [r1]
	ldr r1, _0801EEB0
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r0, _0801EEB4
	ldr r0, [r0]
	ldr r2, _0801EEB8
	ldrb r1, [r4, #0xa]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r2, [r1]
	movs r1, #0
	movs r3, #0
	bl sub_8003884
	ldrb r1, [r4, #0xa]
	movs r0, #0
	bl sub_8016790
_0801EE9A:
	add sp, #8
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801EEA4: .4byte gPlayerSprite
_0801EEA8: .4byte gPreviousPlayerState
_0801EEAC: .4byte gPlayerState
_0801EEB0: .4byte 0x00000141
_0801EEB4: .4byte dword_2000FC8
_0801EEB8: .4byte dword_80CC290

	.thumb
sub_801EEBC: @ 0x0801EEBC
	push {lr}
	ldr r0, _0801EEE0
	ldrb r0, [r0]
	cmp r0, #0
	beq _0801EEEC
	ldr r0, _0801EEE4
	ldr r0, [r0]
	bl audio_fx_still_active
	cmp r0, #0
	bne _0801EF0E
	ldr r0, _0801EEE8
	ldrb r0, [r0]
	cmp r0, #0
	bne _0801EF0E
	bl sub_80629E8
	b _0801EF0E
	.align 2, 0
_0801EEE0: .4byte byte_20020B3
_0801EEE4: .4byte 0x020021D8
_0801EEE8: .4byte byte_203F99C
_0801EEEC:
	ldr r0, _0801EF14
	bl sub_8003770
	cmp r0, #0
	beq _0801EF0E
	ldr r0, _0801EF18
	ldr r0, [r0]
	bl audio_fx_still_active
	cmp r0, #0
	bne _0801EF0E
	ldr r0, _0801EF1C
	ldrb r0, [r0]
	cmp r0, #0
	bne _0801EF0E
	bl sub_80629E8
_0801EF0E:
	pop {r0}
	bx r0
	.align 2, 0
_0801EF14: .4byte gPlayerSprite
_0801EF18: .4byte 0x020021D8
_0801EF1C: .4byte byte_203F99C

	.thumb
sub_801EF20: @ 0x0801EF20
	push {r4, r5, r6, lr}
	sub sp, #8
	str r0, [sp]
	str r1, [sp, #4]
	add r1, sp, #4
	mov r0, sp
	bl sub_8016710
	ldr r6, _0801EF8C
	adds r0, r6, #0
	bl sub_8003770
	cmp r0, #0
	beq _0801EF82
	ldr r2, _0801EF90
	ldr r1, _0801EF94
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0x3d
	strh r0, [r1]
	ldr r1, _0801EF98
	adds r0, r6, #0
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r4, _0801EF9C
	ldr r0, [r4]
	ldr r5, _0801EFA0
	ldrb r1, [r6, #0xa]
	lsls r1, r1, #2
	adds r1, r1, r5
	ldr r2, [r1]
	movs r1, #0
	bl sub_800386C
	ldr r0, [r4]
	ldrb r1, [r6, #0xa]
	lsls r1, r1, #2
	adds r1, r1, r5
	ldr r2, [r1]
	movs r1, #0
	movs r3, #0
	bl sub_8003884
	ldrb r1, [r6, #0xa]
	movs r0, #0
	bl sub_8016790
_0801EF82:
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0801EF8C: .4byte gPlayerSprite
_0801EF90: .4byte gPreviousPlayerState
_0801EF94: .4byte gPlayerState
_0801EF98: .4byte 0x00000179
_0801EF9C: .4byte dword_2000FC8
_0801EFA0: .4byte dword_80CC290

	.thumb
sub_801EFA4: @ 0x0801EFA4
	push {r4, r5, r6, lr}
	sub sp, #8
	str r0, [sp]
	str r1, [sp, #4]
	add r1, sp, #4
	mov r0, sp
	bl sub_8016710
	ldr r6, _0801F010
	adds r0, r6, #0
	bl sub_8003770
	cmp r0, #0
	beq _0801F006
	ldr r2, _0801F014
	ldr r1, _0801F018
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0x3d
	strh r0, [r1]
	ldr r1, _0801F01C
	adds r0, r6, #0
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r4, _0801F020
	ldr r0, [r4]
	ldr r5, _0801F024
	ldrb r1, [r6, #0xa]
	lsls r1, r1, #2
	adds r1, r1, r5
	ldr r2, [r1]
	movs r1, #0
	bl sub_800386C
	ldr r0, [r4]
	ldrb r1, [r6, #0xa]
	lsls r1, r1, #2
	adds r1, r1, r5
	ldr r2, [r1]
	movs r1, #0
	movs r3, #0
	bl sub_8003884
	ldrb r1, [r6, #0xa]
	movs r0, #0
	bl sub_8016790
_0801F006:
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0801F010: .4byte gPlayerSprite
_0801F014: .4byte gPreviousPlayerState
_0801F018: .4byte gPlayerState
_0801F01C: .4byte 0x00000179
_0801F020: .4byte dword_2000FC8
_0801F024: .4byte dword_80CC290

	.thumb
sub_801F028: @ 0x0801F028
	push {r4, lr}
	sub sp, #8
	str r0, [sp]
	str r1, [sp, #4]
	add r1, sp, #4
	mov r0, sp
	bl sub_8016710
	ldr r4, _0801F084
	adds r0, r4, #0
	bl sub_8003770
	cmp r0, #0
	beq _0801F07A
	ldr r2, _0801F088
	ldr r1, _0801F08C
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0x3d
	strh r0, [r1]
	ldr r1, _0801F090
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r0, _0801F094
	ldr r0, [r0]
	ldr r2, _0801F098
	ldrb r1, [r4, #0xa]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r2, [r1]
	movs r1, #0
	movs r3, #0
	bl sub_8003884
	ldrb r1, [r4, #0xa]
	movs r0, #0
	bl sub_8016790
_0801F07A:
	add sp, #8
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801F084: .4byte gPlayerSprite
_0801F088: .4byte gPreviousPlayerState
_0801F08C: .4byte gPlayerState
_0801F090: .4byte 0x00000179
_0801F094: .4byte dword_2000FC8
_0801F098: .4byte dword_80CC290

	.thumb
sub_801F09C: @ 0x0801F09C
	push {r4, lr}
	sub sp, #8
	str r0, [sp]
	str r1, [sp, #4]
	add r1, sp, #4
	mov r0, sp
	bl sub_8016710
	ldr r1, [sp, #4]
	ldr r0, _0801F0CC
	ands r1, r0
	cmp r1, #1
	beq _0801F0D0
	cmp r1, #2
	beq _0801F0D6
	ldr r1, [sp]
	movs r0, #0xf0
	ands r1, r0
	cmp r1, #0x50
	beq _0801F110
	cmp r1, #0x50
	bgt _0801F0F6
	b _0801F0DC
	.align 2, 0
_0801F0CC: .4byte 0x0000030F
_0801F0D0:
	bl sub_8017744
	b _0801F3A8
_0801F0D6:
	bl sub_8018544
	b _0801F3A8
_0801F0DC:
	cmp r1, #0x20
	bne _0801F0E2
	b _0801F2D4
_0801F0E2:
	cmp r1, #0x20
	bgt _0801F0EE
	cmp r1, #0x10
	bne _0801F0EC
	b _0801F31C
_0801F0EC:
	b _0801F370
_0801F0EE:
	cmp r1, #0x40
	bne _0801F0F4
	b _0801F240
_0801F0F4:
	b _0801F370
_0801F0F6:
	cmp r1, #0x80
	bne _0801F0FC
	b _0801F28C
_0801F0FC:
	cmp r1, #0x80
	bgt _0801F106
	cmp r1, #0x60
	beq _0801F1F4
	b _0801F370
_0801F106:
	cmp r1, #0x90
	beq _0801F15C
	cmp r1, #0xa0
	beq _0801F1A8
	b _0801F370
_0801F110:
	ldr r2, _0801F144
	ldr r1, _0801F148
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0x3c
	strh r0, [r1]
	ldr r4, _0801F14C
	ldrb r0, [r4, #0xa]
	cmp r0, #1
	bne _0801F126
	b _0801F34E
_0801F126:
	movs r0, #1
	strb r0, [r4, #0xa]
	ldr r1, _0801F150
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r0, _0801F154
	ldr r0, [r0]
	ldr r1, _0801F158
	movs r2, #0xb4
	lsls r2, r2, #0xe
	b _0801F348
	.align 2, 0
_0801F144: .4byte gPreviousPlayerState
_0801F148: .4byte gPlayerState
_0801F14C: .4byte gPlayerSprite
_0801F150: .4byte 0x00000171
_0801F154: .4byte dword_2000FC8
_0801F158: .4byte 0x00019999
_0801F15C:
	ldr r2, _0801F18C
	ldr r1, _0801F190
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0x3c
	strh r0, [r1]
	ldr r4, _0801F194
	ldrb r0, [r4, #0xa]
	cmp r0, #3
	bne _0801F172
	b _0801F34E
_0801F172:
	movs r0, #3
	strb r0, [r4, #0xa]
	ldr r1, _0801F198
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r0, _0801F19C
	ldr r0, [r0]
	ldr r1, _0801F1A0
	ldr r2, _0801F1A4
	b _0801F348
	.align 2, 0
_0801F18C: .4byte gPreviousPlayerState
_0801F190: .4byte gPlayerState
_0801F194: .4byte gPlayerSprite
_0801F198: .4byte 0x00000171
_0801F19C: .4byte dword_2000FC8
_0801F1A0: .4byte 0x00019999
_0801F1A4: .4byte 0x013B0000
_0801F1A8:
	ldr r2, _0801F1DC
	ldr r1, _0801F1E0
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0x3c
	strh r0, [r1]
	ldr r4, _0801F1E4
	ldrb r0, [r4, #0xa]
	cmp r0, #5
	bne _0801F1BE
	b _0801F34E
_0801F1BE:
	movs r0, #5
	strb r0, [r4, #0xa]
	ldr r1, _0801F1E8
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r0, _0801F1EC
	ldr r0, [r0]
	ldr r1, _0801F1F0
	movs r2, #0xe1
	lsls r2, r2, #0x10
	b _0801F348
	.align 2, 0
_0801F1DC: .4byte gPreviousPlayerState
_0801F1E0: .4byte gPlayerState
_0801F1E4: .4byte gPlayerSprite
_0801F1E8: .4byte 0x00000171
_0801F1EC: .4byte dword_2000FC8
_0801F1F0: .4byte 0x00019999
_0801F1F4:
	ldr r2, _0801F228
	ldr r1, _0801F22C
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0x3c
	strh r0, [r1]
	ldr r4, _0801F230
	ldrb r0, [r4, #0xa]
	cmp r0, #7
	bne _0801F20A
	b _0801F34E
_0801F20A:
	movs r0, #7
	strb r0, [r4, #0xa]
	ldr r1, _0801F234
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r0, _0801F238
	ldr r0, [r0]
	ldr r1, _0801F23C
	movs r2, #0x87
	lsls r2, r2, #0x10
	b _0801F348
	.align 2, 0
_0801F228: .4byte gPreviousPlayerState
_0801F22C: .4byte gPlayerState
_0801F230: .4byte gPlayerSprite
_0801F234: .4byte 0x00000171
_0801F238: .4byte dword_2000FC8
_0801F23C: .4byte 0x00019999
_0801F240:
	ldr r2, _0801F274
	ldr r1, _0801F278
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0x3c
	strh r0, [r1]
	ldr r4, _0801F27C
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _0801F256
	b _0801F34E
_0801F256:
	movs r0, #0
	strb r0, [r4, #0xa]
	ldr r1, _0801F280
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r0, _0801F284
	ldr r0, [r0]
	ldr r1, _0801F288
	movs r2, #0xb4
	lsls r2, r2, #0xf
	b _0801F348
	.align 2, 0
_0801F274: .4byte gPreviousPlayerState
_0801F278: .4byte gPlayerState
_0801F27C: .4byte gPlayerSprite
_0801F280: .4byte 0x00000171
_0801F284: .4byte dword_2000FC8
_0801F288: .4byte 0x00019999
_0801F28C:
	ldr r2, _0801F2BC
	ldr r1, _0801F2C0
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0x3c
	strh r0, [r1]
	ldr r4, _0801F2C4
	ldrb r0, [r4, #0xa]
	cmp r0, #4
	beq _0801F34E
	movs r0, #4
	strb r0, [r4, #0xa]
	ldr r1, _0801F2C8
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r0, _0801F2CC
	ldr r0, [r0]
	ldr r1, _0801F2D0
	movs r2, #0x87
	lsls r2, r2, #0x11
	b _0801F348
	.align 2, 0
_0801F2BC: .4byte gPreviousPlayerState
_0801F2C0: .4byte gPlayerState
_0801F2C4: .4byte gPlayerSprite
_0801F2C8: .4byte 0x00000171
_0801F2CC: .4byte dword_2000FC8
_0801F2D0: .4byte 0x00019999
_0801F2D4:
	ldr r2, _0801F304
	ldr r1, _0801F308
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0x3c
	strh r0, [r1]
	ldr r4, _0801F30C
	ldrb r0, [r4, #0xa]
	cmp r0, #6
	beq _0801F34E
	movs r0, #6
	strb r0, [r4, #0xa]
	ldr r1, _0801F310
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r0, _0801F314
	ldr r0, [r0]
	ldr r1, _0801F318
	movs r2, #0xb4
	lsls r2, r2, #0x10
	b _0801F348
	.align 2, 0
_0801F304: .4byte gPreviousPlayerState
_0801F308: .4byte gPlayerState
_0801F30C: .4byte gPlayerSprite
_0801F310: .4byte 0x00000171
_0801F314: .4byte dword_2000FC8
_0801F318: .4byte 0x00019999
_0801F31C:
	ldr r2, _0801F358
	ldr r1, _0801F35C
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0x3c
	strh r0, [r1]
	ldr r4, _0801F360
	ldrb r0, [r4, #0xa]
	cmp r0, #2
	beq _0801F34E
	movs r0, #2
	strb r0, [r4, #0xa]
	ldr r1, _0801F364
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r0, _0801F368
	ldr r0, [r0]
	ldr r1, _0801F36C
	movs r2, #0
_0801F348:
	movs r3, #0
	bl sub_8003884
_0801F34E:
	ldrb r1, [r4, #0xa]
	movs r0, #0
	bl sub_8016790
	b _0801F3A8
	.align 2, 0
_0801F358: .4byte gPreviousPlayerState
_0801F35C: .4byte gPlayerState
_0801F360: .4byte gPlayerSprite
_0801F364: .4byte 0x00000171
_0801F368: .4byte dword_2000FC8
_0801F36C: .4byte 0x00019999
_0801F370:
	ldr r2, _0801F3B0
	ldr r1, _0801F3B4
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0x3d
	strh r0, [r1]
	ldr r4, _0801F3B8
	ldr r1, _0801F3BC
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r0, _0801F3C0
	ldr r0, [r0]
	ldr r2, _0801F3C4
	ldrb r1, [r4, #0xa]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r2, [r1]
	movs r1, #0
	movs r3, #0
	bl sub_8003884
	ldrb r1, [r4, #0xa]
	movs r0, #0
	bl sub_8016790
_0801F3A8:
	add sp, #8
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801F3B0: .4byte gPreviousPlayerState
_0801F3B4: .4byte gPlayerState
_0801F3B8: .4byte gPlayerSprite
_0801F3BC: .4byte 0x00000179
_0801F3C0: .4byte dword_2000FC8
_0801F3C4: .4byte dword_80CC290

	.thumb
sub_801F3C8: @ 0x0801F3C8
	push {r4, lr}
	sub sp, #8
	str r0, [sp]
	str r1, [sp, #4]
	add r1, sp, #4
	mov r0, sp
	bl sub_8016710
	ldr r1, [sp, #4]
	ldr r0, _0801F3F8
	ands r1, r0
	cmp r1, #1
	beq _0801F3FC
	cmp r1, #2
	beq _0801F416
	ldr r1, [sp]
	movs r0, #0xf0
	ands r1, r0
	cmp r1, #0x50
	beq _0801F450
	cmp r1, #0x50
	bgt _0801F436
	b _0801F41C
	.align 2, 0
_0801F3F8: .4byte 0x0000030F
_0801F3FC:
	ldr r0, _0801F40C
	ldrb r0, [r0]
	cmp r0, #0
	beq _0801F410
	movs r0, #0
	bl sub_80186F4
	b _0801F66C
	.align 2, 0
_0801F40C: .4byte gInInteractionArea
_0801F410:
	bl sub_8017744
	b _0801F66C
_0801F416:
	bl sub_8018544
	b _0801F66C
_0801F41C:
	cmp r1, #0x20
	bne _0801F422
	b _0801F5E8
_0801F422:
	cmp r1, #0x20
	bgt _0801F42E
	cmp r1, #0x10
	bne _0801F42C
	b _0801F638
_0801F42C:
	b _0801F66C
_0801F42E:
	cmp r1, #0x40
	bne _0801F434
	b _0801F560
_0801F434:
	b _0801F66C
_0801F436:
	cmp r1, #0x80
	bne _0801F43C
	b _0801F5A4
_0801F43C:
	cmp r1, #0x80
	bgt _0801F446
	cmp r1, #0x60
	beq _0801F51C
	b _0801F66C
_0801F446:
	cmp r1, #0x90
	beq _0801F494
	cmp r1, #0xa0
	beq _0801F4D8
	b _0801F66C
_0801F450:
	ldr r2, _0801F47C
	ldr r1, _0801F480
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0x3c
	strh r0, [r1]
	ldr r4, _0801F484
	movs r0, #1
	strb r0, [r4, #0xa]
	ldr r1, _0801F488
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r0, _0801F48C
	ldr r0, [r0]
	ldr r1, _0801F490
	movs r2, #0xb4
	lsls r2, r2, #0xe
	b _0801F610
	.align 2, 0
_0801F47C: .4byte gPreviousPlayerState
_0801F480: .4byte gPlayerState
_0801F484: .4byte gPlayerSprite
_0801F488: .4byte 0x00000171
_0801F48C: .4byte dword_2000FC8
_0801F490: .4byte 0x00019999
_0801F494:
	ldr r2, _0801F4BC
	ldr r1, _0801F4C0
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0x3c
	strh r0, [r1]
	ldr r4, _0801F4C4
	movs r0, #3
	strb r0, [r4, #0xa]
	ldr r1, _0801F4C8
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r0, _0801F4CC
	ldr r0, [r0]
	ldr r1, _0801F4D0
	ldr r2, _0801F4D4
	b _0801F610
	.align 2, 0
_0801F4BC: .4byte gPreviousPlayerState
_0801F4C0: .4byte gPlayerState
_0801F4C4: .4byte gPlayerSprite
_0801F4C8: .4byte 0x00000171
_0801F4CC: .4byte dword_2000FC8
_0801F4D0: .4byte 0x00019999
_0801F4D4: .4byte 0x013B0000
_0801F4D8:
	ldr r2, _0801F504
	ldr r1, _0801F508
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0x3c
	strh r0, [r1]
	ldr r4, _0801F50C
	movs r0, #5
	strb r0, [r4, #0xa]
	ldr r1, _0801F510
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r0, _0801F514
	ldr r0, [r0]
	ldr r1, _0801F518
	movs r2, #0xe1
	lsls r2, r2, #0x10
	b _0801F610
	.align 2, 0
_0801F504: .4byte gPreviousPlayerState
_0801F508: .4byte gPlayerState
_0801F50C: .4byte gPlayerSprite
_0801F510: .4byte 0x00000171
_0801F514: .4byte dword_2000FC8
_0801F518: .4byte 0x00019999
_0801F51C:
	ldr r2, _0801F548
	ldr r1, _0801F54C
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0x3c
	strh r0, [r1]
	ldr r4, _0801F550
	movs r0, #7
	strb r0, [r4, #0xa]
	ldr r1, _0801F554
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r0, _0801F558
	ldr r0, [r0]
	ldr r1, _0801F55C
	movs r2, #0x87
	lsls r2, r2, #0x10
	b _0801F610
	.align 2, 0
_0801F548: .4byte gPreviousPlayerState
_0801F54C: .4byte gPlayerState
_0801F550: .4byte gPlayerSprite
_0801F554: .4byte 0x00000171
_0801F558: .4byte dword_2000FC8
_0801F55C: .4byte 0x00019999
_0801F560:
	ldr r2, _0801F58C
	ldr r1, _0801F590
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0x3c
	strh r0, [r1]
	ldr r4, _0801F594
	movs r0, #0
	strb r0, [r4, #0xa]
	ldr r1, _0801F598
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r0, _0801F59C
	ldr r0, [r0]
	ldr r1, _0801F5A0
	movs r2, #0xb4
	lsls r2, r2, #0xf
	b _0801F610
	.align 2, 0
_0801F58C: .4byte gPreviousPlayerState
_0801F590: .4byte gPlayerState
_0801F594: .4byte gPlayerSprite
_0801F598: .4byte 0x00000171
_0801F59C: .4byte dword_2000FC8
_0801F5A0: .4byte 0x00019999
_0801F5A4:
	ldr r2, _0801F5D0
	ldr r1, _0801F5D4
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0x3c
	strh r0, [r1]
	ldr r4, _0801F5D8
	movs r0, #4
	strb r0, [r4, #0xa]
	ldr r1, _0801F5DC
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r0, _0801F5E0
	ldr r0, [r0]
	ldr r1, _0801F5E4
	movs r2, #0x87
	lsls r2, r2, #0x11
	b _0801F610
	.align 2, 0
_0801F5D0: .4byte gPreviousPlayerState
_0801F5D4: .4byte gPlayerState
_0801F5D8: .4byte gPlayerSprite
_0801F5DC: .4byte 0x00000171
_0801F5E0: .4byte dword_2000FC8
_0801F5E4: .4byte 0x00019999
_0801F5E8:
	ldr r2, _0801F620
	ldr r1, _0801F624
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0x3c
	strh r0, [r1]
	ldr r4, _0801F628
	movs r0, #6
	strb r0, [r4, #0xa]
	ldr r1, _0801F62C
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r0, _0801F630
	ldr r0, [r0]
	ldr r1, _0801F634
	movs r2, #0xb4
	lsls r2, r2, #0x10
_0801F610:
	movs r3, #0
	bl sub_8003884
	ldrb r1, [r4, #0xa]
	movs r0, #0
	bl sub_8016790
	b _0801F66C
	.align 2, 0
_0801F620: .4byte gPreviousPlayerState
_0801F624: .4byte gPlayerState
_0801F628: .4byte gPlayerSprite
_0801F62C: .4byte 0x00000171
_0801F630: .4byte dword_2000FC8
_0801F634: .4byte 0x00019999
_0801F638:
	ldr r2, _0801F674
	ldr r1, _0801F678
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0x3c
	strh r0, [r1]
	ldr r4, _0801F67C
	movs r0, #2
	strb r0, [r4, #0xa]
	ldr r1, _0801F680
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r0, _0801F684
	ldr r0, [r0]
	ldr r1, _0801F688
	movs r2, #0
	movs r3, #0
	bl sub_8003884
	ldrb r1, [r4, #0xa]
	movs r0, #0
	bl sub_8016790
_0801F66C:
	add sp, #8
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801F674: .4byte gPreviousPlayerState
_0801F678: .4byte gPlayerState
_0801F67C: .4byte gPlayerSprite
_0801F680: .4byte 0x00000171
_0801F684: .4byte dword_2000FC8
_0801F688: .4byte 0x00019999

	.thumb
sub_801F68C: @ 0x0801F68C
	push {r4, r5, lr}
	sub sp, #8
	str r0, [sp]
	str r1, [sp, #4]
	add r1, sp, #4
	mov r0, sp
	bl sub_8016710
	ldr r0, [sp]
	ldr r1, [sp, #4]
	bl sub_8016624
	ldr r0, [sp, #4]
	ldr r1, _0801F704
	ands r0, r1
	cmp r0, #2
	bne _0801F738
	ldr r2, _0801F708
	ldr r1, _0801F70C
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0x41
	strh r0, [r1]
	ldr r4, _0801F710
	ldr r1, _0801F714
	adds r0, r4, #0
	movs r2, #0
	movs r3, #1
	bl sub_8003368
	ldrb r1, [r4, #0xa]
	movs r0, #0xa
	bl sub_8016790
	ldr r4, _0801F718
	ldr r0, _0801F71C
	ldrb r0, [r0]
	cmp r0, #0
	beq _0801F730
	ldr r2, _0801F720
	movs r1, #0xba
	lsls r1, r1, #3
	adds r0, r2, r1
	ldrh r0, [r0]
	ldr r3, _0801F724
	ldr r5, _0801F728
	adds r1, r2, r5
	ldrb r3, [r3]
	adds r1, r1, r3
	ldrb r1, [r1]
	ldr r3, _0801F72C
	adds r2, r2, r3
	ldr r2, [r2]
	movs r5, #0x80
	lsls r5, r5, #9
	adds r2, r2, r5
	bl audio_new_fx
	b _0801F734
	.align 2, 0
_0801F704: .4byte 0x0000030F
_0801F708: .4byte gPreviousPlayerState
_0801F70C: .4byte gPlayerState
_0801F710: .4byte gPlayerSprite
_0801F714: .4byte 0x00000161
_0801F718: .4byte 0x020021D4
_0801F71C: .4byte byte_203EA89
_0801F720: .4byte 0x080CE440
_0801F724: .4byte byte_203EA8C
_0801F728: .4byte 0x000005D2
_0801F72C: .4byte 0x000005D4
_0801F730:
	movs r0, #1
	rsbs r0, r0, #0
_0801F734:
	str r0, [r4]
	b _0801F8EA
_0801F738:
	ldr r5, _0801F780
	ldr r0, [r5]
	bl sub_80038BC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0801F75E
	ldr r2, _0801F784
	ldr r1, _0801F788
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0x3f
	strh r0, [r1]
	ldr r0, _0801F78C
	ldr r1, _0801F790
	movs r2, #0
	movs r3, #1
	bl sub_8003368
_0801F75E:
	ldr r1, [sp]
	movs r0, #0xf0
	ands r1, r0
	cmp r1, #0x50
	beq _0801F7B2
	cmp r1, #0x50
	bgt _0801F79A
	cmp r1, #0x20
	bne _0801F772
	b _0801F860
_0801F772:
	cmp r1, #0x20
	bgt _0801F794
	cmp r1, #0x10
	bne _0801F77C
	b _0801F87C
_0801F77C:
	b _0801F8C4
	.align 2, 0
_0801F780: .4byte dword_2000FC8
_0801F784: .4byte gPreviousPlayerState
_0801F788: .4byte gPlayerState
_0801F78C: .4byte gPlayerSprite
_0801F790: .4byte 0x00000189
_0801F794:
	cmp r1, #0x40
	beq _0801F828
	b _0801F8C4
_0801F79A:
	cmp r1, #0x80
	beq _0801F844
	cmp r1, #0x80
	bgt _0801F7A8
	cmp r1, #0x60
	beq _0801F80C
	b _0801F8C4
_0801F7A8:
	cmp r1, #0x90
	beq _0801F7D0
	cmp r1, #0xa0
	beq _0801F7F0
	b _0801F8C4
_0801F7B2:
	ldr r4, _0801F7CC
	ldrb r0, [r4, #0xa]
	cmp r0, #1
	bne _0801F7C8
	ldr r0, [r5]
	bl sub_80038AC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0801F7C8
	b _0801F8EA
_0801F7C8:
	movs r0, #1
	b _0801F892
	.align 2, 0
_0801F7CC: .4byte gPlayerSprite
_0801F7D0:
	ldr r4, _0801F7EC
	ldrb r0, [r4, #0xa]
	cmp r0, #3
	bne _0801F7E6
	ldr r0, [r5]
	bl sub_80038AC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0801F7E6
	b _0801F8EA
_0801F7E6:
	movs r0, #3
	b _0801F892
	.align 2, 0
_0801F7EC: .4byte gPlayerSprite
_0801F7F0:
	ldr r4, _0801F808
	ldrb r0, [r4, #0xa]
	cmp r0, #5
	bne _0801F804
	ldr r0, [r5]
	bl sub_80038AC
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0801F8EA
_0801F804:
	movs r0, #5
	b _0801F892
	.align 2, 0
_0801F808: .4byte gPlayerSprite
_0801F80C:
	ldr r4, _0801F824
	ldrb r0, [r4, #0xa]
	cmp r0, #7
	bne _0801F820
	ldr r0, [r5]
	bl sub_80038AC
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0801F8EA
_0801F820:
	movs r0, #7
	b _0801F892
	.align 2, 0
_0801F824: .4byte gPlayerSprite
_0801F828:
	ldr r4, _0801F840
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _0801F83C
	ldr r0, [r5]
	bl sub_80038AC
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0801F8EA
_0801F83C:
	movs r0, #0
	b _0801F892
	.align 2, 0
_0801F840: .4byte gPlayerSprite
_0801F844:
	ldr r4, _0801F85C
	ldrb r0, [r4, #0xa]
	cmp r0, #4
	bne _0801F858
	ldr r0, [r5]
	bl sub_80038AC
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0801F8EA
_0801F858:
	movs r0, #4
	b _0801F892
	.align 2, 0
_0801F85C: .4byte gPlayerSprite
_0801F860:
	ldr r4, _0801F878
	ldrb r0, [r4, #0xa]
	cmp r0, #6
	bne _0801F874
	ldr r0, [r5]
	bl sub_80038AC
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0801F8EA
_0801F874:
	movs r0, #6
	b _0801F892
	.align 2, 0
_0801F878: .4byte gPlayerSprite
_0801F87C:
	ldr r4, _0801F8B8
	ldrb r0, [r4, #0xa]
	cmp r0, #2
	bne _0801F890
	ldr r0, [r5]
	bl sub_80038AC
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0801F8EA
_0801F890:
	movs r0, #2
_0801F892:
	strb r0, [r4, #0xa]
	ldr r1, _0801F8BC
	adds r0, r4, #0
	movs r2, #0
	movs r3, #1
	bl sub_8003368
	ldr r0, [r5]
	movs r1, #0x98
	lsls r1, r1, #9
	ldr r3, _0801F8C0
	ldrb r2, [r4, #0xa]
	lsls r2, r2, #2
	adds r2, r2, r3
	ldr r2, [r2]
	movs r3, #0
	bl sub_8003884
	b _0801F8EA
	.align 2, 0
_0801F8B8: .4byte gPlayerSprite
_0801F8BC: .4byte 0x00000181
_0801F8C0: .4byte dword_80CC290
_0801F8C4:
	ldr r4, _0801F8F4
	ldr r0, [r4]
	bl sub_80038AC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0801F8EA
	ldr r0, [r4]
	movs r1, #0xc0
	lsls r1, r1, #6
	ldr r3, _0801F8F8
	ldr r2, _0801F8FC
	ldrb r2, [r2, #0xa]
	lsls r2, r2, #2
	adds r2, r2, r3
	ldr r2, [r2]
	movs r3, #0
	bl sub_8003884
_0801F8EA:
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801F8F4: .4byte dword_2000FC8
_0801F8F8: .4byte dword_80CC290
_0801F8FC: .4byte gPlayerSprite

	.thumb
sub_801F900: @ 0x0801F900
	push {r4, r5, lr}
	sub sp, #8
	str r0, [sp]
	str r1, [sp, #4]
	add r1, sp, #4
	mov r0, sp
	bl sub_8016710
	ldr r0, [sp]
	ldr r1, [sp, #4]
	bl sub_8016624
	ldr r0, [sp, #4]
	ldr r1, _0801F978
	ands r0, r1
	cmp r0, #2
	bne _0801F9AC
	ldr r2, _0801F97C
	ldr r1, _0801F980
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0x42
	strh r0, [r1]
	ldr r4, _0801F984
	ldr r1, _0801F988
	adds r0, r4, #0
	movs r2, #0
	movs r3, #1
	bl sub_8003368
	ldrb r1, [r4, #0xa]
	movs r0, #0xa
	bl sub_8016790
	ldr r4, _0801F98C
	ldr r0, _0801F990
	ldrb r0, [r0]
	cmp r0, #0
	beq _0801F9A4
	ldr r2, _0801F994
	movs r1, #0xba
	lsls r1, r1, #3
	adds r0, r2, r1
	ldrh r0, [r0]
	ldr r3, _0801F998
	ldr r5, _0801F99C
	adds r1, r2, r5
	ldrb r3, [r3]
	adds r1, r1, r3
	ldrb r1, [r1]
	ldr r3, _0801F9A0
	adds r2, r2, r3
	ldr r2, [r2]
	movs r5, #0x80
	lsls r5, r5, #9
	adds r2, r2, r5
	bl audio_new_fx
	b _0801F9A8
	.align 2, 0
_0801F978: .4byte 0x0000030F
_0801F97C: .4byte gPreviousPlayerState
_0801F980: .4byte gPlayerState
_0801F984: .4byte gPlayerSprite
_0801F988: .4byte 0x00000161
_0801F98C: .4byte 0x020021D4
_0801F990: .4byte byte_203EA89
_0801F994: .4byte 0x080CE440
_0801F998: .4byte byte_203EA8C
_0801F99C: .4byte 0x000005D2
_0801F9A0: .4byte 0x000005D4
_0801F9A4:
	movs r0, #1
	rsbs r0, r0, #0
_0801F9A8:
	str r0, [r4]
	b _0801FB5E
_0801F9AC:
	ldr r1, [sp]
	movs r0, #0xf0
	ands r1, r0
	cmp r1, #0x50
	beq _0801F9EA
	cmp r1, #0x50
	bgt _0801F9D2
	cmp r1, #0x20
	bne _0801F9C0
	b _0801FAC4
_0801F9C0:
	cmp r1, #0x20
	bgt _0801F9CC
	cmp r1, #0x10
	bne _0801F9CA
	b _0801FAE8
_0801F9CA:
	b _0801FB38
_0801F9CC:
	cmp r1, #0x40
	beq _0801FA7C
	b _0801FB38
_0801F9D2:
	cmp r1, #0x80
	beq _0801FAA0
	cmp r1, #0x80
	bgt _0801F9E0
	cmp r1, #0x60
	beq _0801FA58
	b _0801FB38
_0801F9E0:
	cmp r1, #0x90
	beq _0801FA10
	cmp r1, #0xa0
	beq _0801FA34
	b _0801FB38
_0801F9EA:
	ldr r4, _0801FA08
	ldrb r0, [r4, #0xa]
	cmp r0, #1
	bne _0801FA02
	ldr r0, _0801FA0C
	ldr r0, [r0]
	bl sub_80038AC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0801FA02
	b _0801FB5E
_0801FA02:
	movs r0, #1
	b _0801FB00
	.align 2, 0
_0801FA08: .4byte gPlayerSprite
_0801FA0C: .4byte dword_2000FC8
_0801FA10:
	ldr r4, _0801FA2C
	ldrb r0, [r4, #0xa]
	cmp r0, #3
	bne _0801FA28
	ldr r0, _0801FA30
	ldr r0, [r0]
	bl sub_80038AC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0801FA28
	b _0801FB5E
_0801FA28:
	movs r0, #3
	b _0801FB00
	.align 2, 0
_0801FA2C: .4byte gPlayerSprite
_0801FA30: .4byte dword_2000FC8
_0801FA34:
	ldr r4, _0801FA50
	ldrb r0, [r4, #0xa]
	cmp r0, #5
	bne _0801FA4C
	ldr r0, _0801FA54
	ldr r0, [r0]
	bl sub_80038AC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0801FA4C
	b _0801FB5E
_0801FA4C:
	movs r0, #5
	b _0801FB00
	.align 2, 0
_0801FA50: .4byte gPlayerSprite
_0801FA54: .4byte dword_2000FC8
_0801FA58:
	ldr r4, _0801FA74
	ldrb r0, [r4, #0xa]
	cmp r0, #7
	bne _0801FA6E
	ldr r0, _0801FA78
	ldr r0, [r0]
	bl sub_80038AC
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0801FB5E
_0801FA6E:
	movs r0, #7
	b _0801FB00
	.align 2, 0
_0801FA74: .4byte gPlayerSprite
_0801FA78: .4byte dword_2000FC8
_0801FA7C:
	ldr r4, _0801FA98
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _0801FA92
	ldr r0, _0801FA9C
	ldr r0, [r0]
	bl sub_80038AC
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0801FB5E
_0801FA92:
	movs r0, #0
	b _0801FB00
	.align 2, 0
_0801FA98: .4byte gPlayerSprite
_0801FA9C: .4byte dword_2000FC8
_0801FAA0:
	ldr r4, _0801FABC
	ldrb r0, [r4, #0xa]
	cmp r0, #4
	bne _0801FAB6
	ldr r0, _0801FAC0
	ldr r0, [r0]
	bl sub_80038AC
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0801FB5E
_0801FAB6:
	movs r0, #4
	b _0801FB00
	.align 2, 0
_0801FABC: .4byte gPlayerSprite
_0801FAC0: .4byte dword_2000FC8
_0801FAC4:
	ldr r4, _0801FAE0
	ldrb r0, [r4, #0xa]
	cmp r0, #6
	bne _0801FADA
	ldr r0, _0801FAE4
	ldr r0, [r0]
	bl sub_80038AC
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0801FB5E
_0801FADA:
	movs r0, #6
	b _0801FB00
	.align 2, 0
_0801FAE0: .4byte gPlayerSprite
_0801FAE4: .4byte dword_2000FC8
_0801FAE8:
	ldr r4, _0801FB28
	ldrb r0, [r4, #0xa]
	cmp r0, #2
	bne _0801FAFE
	ldr r0, _0801FB2C
	ldr r0, [r0]
	bl sub_80038AC
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0801FB5E
_0801FAFE:
	movs r0, #2
_0801FB00:
	strb r0, [r4, #0xa]
	ldr r1, _0801FB30
	adds r0, r4, #0
	movs r2, #0
	movs r3, #1
	bl sub_8003368
	ldr r0, _0801FB2C
	ldr r0, [r0]
	movs r1, #0x98
	lsls r1, r1, #9
	ldr r3, _0801FB34
	ldrb r2, [r4, #0xa]
	lsls r2, r2, #2
	adds r2, r2, r3
	ldr r2, [r2]
	movs r3, #0
	bl sub_8003884
	b _0801FB5E
	.align 2, 0
_0801FB28: .4byte gPlayerSprite
_0801FB2C: .4byte dword_2000FC8
_0801FB30: .4byte 0x00000189
_0801FB34: .4byte dword_80CC290
_0801FB38:
	ldr r4, _0801FB68
	ldr r0, [r4]
	bl sub_80038AC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0801FB5E
	ldr r0, [r4]
	movs r1, #0xc0
	lsls r1, r1, #6
	ldr r3, _0801FB6C
	ldr r2, _0801FB70
	ldrb r2, [r2, #0xa]
	lsls r2, r2, #2
	adds r2, r2, r3
	ldr r2, [r2]
	movs r3, #0
	bl sub_8003884
_0801FB5E:
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801FB68: .4byte dword_2000FC8
_0801FB6C: .4byte dword_80CC290
_0801FB70: .4byte gPlayerSprite

	.thumb
sub_801FB74: @ 0x0801FB74
	push {lr}
	sub sp, #8
	str r0, [sp]
	str r1, [sp, #4]
	add r1, sp, #4
	mov r0, sp
	bl sub_8016710
	add sp, #8
	pop {r0}
	bx r0
	.align 2, 0

	.thumb
sub_801FB8C: @ 0x0801FB8C
	push {r4, lr}
	sub sp, #8
	str r0, [sp]
	str r1, [sp, #4]
	add r1, sp, #4
	mov r0, sp
	bl sub_8016710
	ldr r0, _0801FBEC
	ldr r0, [r0]
	bl sub_80038BC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0801FBB6
	ldr r2, _0801FBF0
	ldr r1, _0801FBF4
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0x42
	strh r0, [r1]
_0801FBB6:
	ldr r4, _0801FBF8
	adds r0, r4, #0
	bl sub_8003770
	cmp r0, #0
	beq _0801FBE2
	ldr r2, _0801FBF0
	ldr r1, _0801FBF4
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0x3e
	strh r0, [r1]
	ldr r1, _0801FBFC
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldrb r1, [r4, #0xa]
	movs r0, #0
	bl sub_8016790
_0801FBE2:
	add sp, #8
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801FBEC: .4byte dword_2000FC8
_0801FBF0: .4byte gPreviousPlayerState
_0801FBF4: .4byte gPlayerState
_0801FBF8: .4byte gPlayerSprite
_0801FBFC: .4byte 0x00000181

	.thumb
sub_801FC00: @ 0x0801FC00
	push {r4, lr}
	sub sp, #8
	str r0, [sp]
	str r1, [sp, #4]
	add r1, sp, #4
	mov r0, sp
	bl sub_8016710
	ldr r4, _0801FC44
	adds r0, r4, #0
	bl sub_8003770
	cmp r0, #0
	beq _0801FC3C
	ldr r2, _0801FC48
	ldr r1, _0801FC4C
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0x3f
	strh r0, [r1]
	ldr r1, _0801FC50
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldrb r1, [r4, #0xa]
	movs r0, #0
	bl sub_8016790
_0801FC3C:
	add sp, #8
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801FC44: .4byte gPlayerSprite
_0801FC48: .4byte gPreviousPlayerState
_0801FC4C: .4byte gPlayerState
_0801FC50: .4byte 0x00000189

	.thumb
sub_801FC54: @ 0x0801FC54
	push {r4, lr}
	sub sp, #8
	str r0, [sp]
	str r1, [sp, #4]
	add r1, sp, #4
	mov r0, sp
	bl sub_8016710
	ldr r1, [sp, #4]
	ldr r0, _0801FC8C
	ands r1, r0
	cmp r1, #1
	beq _0801FC90
	movs r0, #0x80
	lsls r0, r0, #2
	cmp r1, r0
	beq _0801FC96
	bl sub_801A334
	cmp r0, #0
	beq _0801FC80
	b _0801FF44
_0801FC80:
	ldr r1, [sp]
	movs r0, #0xf0
	ands r1, r0
	cmp r1, #0x50
	beq _0801FD28
	b _0801FCF0
	.align 2, 0
_0801FC8C: .4byte 0x0000030F
_0801FC90:
	bl sub_801756C
	b _0801FF44
_0801FC96:
	ldr r2, _0801FCD8
	ldr r1, _0801FCDC
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0x44
	strh r0, [r1]
	ldr r4, _0801FCE0
	ldr r1, _0801FCE4
	adds r0, r4, #0
	movs r2, #0
	movs r3, #1
	bl sub_8003368
	ldr r0, _0801FCE8
	ldr r0, [r0]
	ldr r2, _0801FCEC
	ldrb r1, [r4, #0xa]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r2, [r1]
	movs r1, #0
	movs r3, #0
	bl sub_8003884
	ldrb r1, [r4, #0xa]
	movs r0, #0
	bl sub_8016790
	movs r0, #3
	bl sub_0804200C
	b _0801FF44
	.align 2, 0
_0801FCD8: .4byte gPreviousPlayerState
_0801FCDC: .4byte gPlayerState
_0801FCE0: .4byte gPlayerSprite
_0801FCE4: .4byte 0x00000211
_0801FCE8: .4byte dword_2000FC8
_0801FCEC: .4byte dword_80CC290
_0801FCF0:
	cmp r1, #0x50
	bgt _0801FD0E
	cmp r1, #0x20
	bne _0801FCFA
	b _0801FEC0
_0801FCFA:
	cmp r1, #0x20
	bgt _0801FD06
	cmp r1, #0x10
	bne _0801FD04
	b _0801FF10
_0801FD04:
	b _0801FF44
_0801FD06:
	cmp r1, #0x40
	bne _0801FD0C
	b _0801FE38
_0801FD0C:
	b _0801FF44
_0801FD0E:
	cmp r1, #0x80
	bne _0801FD14
	b _0801FE7C
_0801FD14:
	cmp r1, #0x80
	bgt _0801FD1E
	cmp r1, #0x60
	beq _0801FDF4
	b _0801FF44
_0801FD1E:
	cmp r1, #0x90
	beq _0801FD6C
	cmp r1, #0xa0
	beq _0801FDB0
	b _0801FF44
_0801FD28:
	ldr r2, _0801FD54
	ldr r1, _0801FD58
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0x28
	strh r0, [r1]
	ldr r4, _0801FD5C
	movs r0, #1
	strb r0, [r4, #0xa]
	ldr r1, _0801FD60
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r0, _0801FD64
	ldr r0, [r0]
	ldr r1, _0801FD68
	movs r2, #0xb4
	lsls r2, r2, #0xe
	b _0801FEE8
	.align 2, 0
_0801FD54: .4byte gPreviousPlayerState
_0801FD58: .4byte gPlayerState
_0801FD5C: .4byte gPlayerSprite
_0801FD60: .4byte 0x00000209
_0801FD64: .4byte dword_2000FC8
_0801FD68: .4byte 0x00019999
_0801FD6C:
	ldr r2, _0801FD94
	ldr r1, _0801FD98
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0x28
	strh r0, [r1]
	ldr r4, _0801FD9C
	movs r0, #3
	strb r0, [r4, #0xa]
	ldr r1, _0801FDA0
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r0, _0801FDA4
	ldr r0, [r0]
	ldr r1, _0801FDA8
	ldr r2, _0801FDAC
	b _0801FEE8
	.align 2, 0
_0801FD94: .4byte gPreviousPlayerState
_0801FD98: .4byte gPlayerState
_0801FD9C: .4byte gPlayerSprite
_0801FDA0: .4byte 0x00000209
_0801FDA4: .4byte dword_2000FC8
_0801FDA8: .4byte 0x00019999
_0801FDAC: .4byte 0x013B0000
_0801FDB0:
	ldr r2, _0801FDDC
	ldr r1, _0801FDE0
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0x28
	strh r0, [r1]
	ldr r4, _0801FDE4
	movs r0, #5
	strb r0, [r4, #0xa]
	ldr r1, _0801FDE8
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r0, _0801FDEC
	ldr r0, [r0]
	ldr r1, _0801FDF0
	movs r2, #0xe1
	lsls r2, r2, #0x10
	b _0801FEE8
	.align 2, 0
_0801FDDC: .4byte gPreviousPlayerState
_0801FDE0: .4byte gPlayerState
_0801FDE4: .4byte gPlayerSprite
_0801FDE8: .4byte 0x00000209
_0801FDEC: .4byte dword_2000FC8
_0801FDF0: .4byte 0x00019999
_0801FDF4:
	ldr r2, _0801FE20
	ldr r1, _0801FE24
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0x28
	strh r0, [r1]
	ldr r4, _0801FE28
	movs r0, #7
	strb r0, [r4, #0xa]
	ldr r1, _0801FE2C
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r0, _0801FE30
	ldr r0, [r0]
	ldr r1, _0801FE34
	movs r2, #0x87
	lsls r2, r2, #0x10
	b _0801FEE8
	.align 2, 0
_0801FE20: .4byte gPreviousPlayerState
_0801FE24: .4byte gPlayerState
_0801FE28: .4byte gPlayerSprite
_0801FE2C: .4byte 0x00000209
_0801FE30: .4byte dword_2000FC8
_0801FE34: .4byte 0x00019999
_0801FE38:
	ldr r2, _0801FE64
	ldr r1, _0801FE68
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0x28
	strh r0, [r1]
	ldr r4, _0801FE6C
	movs r0, #0
	strb r0, [r4, #0xa]
	ldr r1, _0801FE70
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r0, _0801FE74
	ldr r0, [r0]
	ldr r1, _0801FE78
	movs r2, #0xb4
	lsls r2, r2, #0xf
	b _0801FEE8
	.align 2, 0
_0801FE64: .4byte gPreviousPlayerState
_0801FE68: .4byte gPlayerState
_0801FE6C: .4byte gPlayerSprite
_0801FE70: .4byte 0x00000209
_0801FE74: .4byte dword_2000FC8
_0801FE78: .4byte 0x00019999
_0801FE7C:
	ldr r2, _0801FEA8
	ldr r1, _0801FEAC
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0x28
	strh r0, [r1]
	ldr r4, _0801FEB0
	movs r0, #4
	strb r0, [r4, #0xa]
	ldr r1, _0801FEB4
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r0, _0801FEB8
	ldr r0, [r0]
	ldr r1, _0801FEBC
	movs r2, #0x87
	lsls r2, r2, #0x11
	b _0801FEE8
	.align 2, 0
_0801FEA8: .4byte gPreviousPlayerState
_0801FEAC: .4byte gPlayerState
_0801FEB0: .4byte gPlayerSprite
_0801FEB4: .4byte 0x00000209
_0801FEB8: .4byte dword_2000FC8
_0801FEBC: .4byte 0x00019999
_0801FEC0:
	ldr r2, _0801FEF8
	ldr r1, _0801FEFC
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0x28
	strh r0, [r1]
	ldr r4, _0801FF00
	movs r0, #6
	strb r0, [r4, #0xa]
	ldr r1, _0801FF04
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r0, _0801FF08
	ldr r0, [r0]
	ldr r1, _0801FF0C
	movs r2, #0xb4
	lsls r2, r2, #0x10
_0801FEE8:
	movs r3, #0
	bl sub_8003884
	ldrb r1, [r4, #0xa]
	movs r0, #5
	bl sub_8016790
	b _0801FF44
	.align 2, 0
_0801FEF8: .4byte gPreviousPlayerState
_0801FEFC: .4byte gPlayerState
_0801FF00: .4byte gPlayerSprite
_0801FF04: .4byte 0x00000209
_0801FF08: .4byte dword_2000FC8
_0801FF0C: .4byte 0x00019999
_0801FF10:
	ldr r2, _0801FF4C
	ldr r1, _0801FF50
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0x28
	strh r0, [r1]
	ldr r4, _0801FF54
	movs r0, #2
	strb r0, [r4, #0xa]
	ldr r1, _0801FF58
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r0, _0801FF5C
	ldr r0, [r0]
	ldr r1, _0801FF60
	movs r2, #0
	movs r3, #0
	bl sub_8003884
	ldrb r1, [r4, #0xa]
	movs r0, #5
	bl sub_8016790
_0801FF44:
	add sp, #8
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801FF4C: .4byte gPreviousPlayerState
_0801FF50: .4byte gPlayerState
_0801FF54: .4byte gPlayerSprite
_0801FF58: .4byte 0x00000209
_0801FF5C: .4byte dword_2000FC8
_0801FF60: .4byte 0x00019999

	.thumb
sub_801FF64: @ 0x0801FF64
	push {r4, lr}
	sub sp, #8
	str r0, [sp]
	str r1, [sp, #4]
	add r1, sp, #4
	mov r0, sp
	bl sub_8016710
	ldr r1, [sp, #4]
	ldr r0, _0801FF9C
	ands r1, r0
	cmp r1, #1
	beq _0801FFA0
	movs r0, #0x80
	lsls r0, r0, #2
	cmp r1, r0
	beq _0801FFA6
	bl sub_801A334
	cmp r0, #0
	beq _0801FF90
	b _080202D0
_0801FF90:
	ldr r1, [sp]
	movs r0, #0xf0
	ands r1, r0
	cmp r1, #0x50
	beq _08020038
	b _08020000
	.align 2, 0
_0801FF9C: .4byte 0x0000030F
_0801FFA0:
	bl sub_801756C
	b _080202D0
_0801FFA6:
	ldr r2, _0801FFE8
	ldr r1, _0801FFEC
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0x44
	strh r0, [r1]
	ldr r4, _0801FFF0
	ldr r1, _0801FFF4
	adds r0, r4, #0
	movs r2, #0
	movs r3, #1
	bl sub_8003368
	ldr r0, _0801FFF8
	ldr r0, [r0]
	ldr r2, _0801FFFC
	ldrb r1, [r4, #0xa]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r2, [r1]
	movs r1, #0
	movs r3, #0
	bl sub_8003884
	ldrb r1, [r4, #0xa]
	movs r0, #0
	bl sub_8016790
	movs r0, #3
	bl sub_0804200C
	b _080202D0
	.align 2, 0
_0801FFE8: .4byte gPreviousPlayerState
_0801FFEC: .4byte gPlayerState
_0801FFF0: .4byte gPlayerSprite
_0801FFF4: .4byte 0x00000211
_0801FFF8: .4byte dword_2000FC8
_0801FFFC: .4byte dword_80CC290
_08020000:
	cmp r1, #0x50
	bgt _0802001E
	cmp r1, #0x20
	bne _0802000A
	b _080201FC
_0802000A:
	cmp r1, #0x20
	bgt _08020016
	cmp r1, #0x10
	bne _08020014
	b _08020244
_08020014:
	b _08020298
_08020016:
	cmp r1, #0x40
	bne _0802001C
	b _08020168
_0802001C:
	b _08020298
_0802001E:
	cmp r1, #0x80
	bne _08020024
	b _080201B4
_08020024:
	cmp r1, #0x80
	bgt _0802002E
	cmp r1, #0x60
	beq _0802011C
	b _08020298
_0802002E:
	cmp r1, #0x90
	beq _08020084
	cmp r1, #0xa0
	beq _080200D0
	b _08020298
_08020038:
	ldr r2, _0802006C
	ldr r1, _08020070
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0x28
	strh r0, [r1]
	ldr r4, _08020074
	ldrb r0, [r4, #0xa]
	cmp r0, #1
	bne _0802004E
	b _08020276
_0802004E:
	movs r0, #1
	strb r0, [r4, #0xa]
	ldr r1, _08020078
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r0, _0802007C
	ldr r0, [r0]
	ldr r1, _08020080
	movs r2, #0xb4
	lsls r2, r2, #0xe
	b _08020270
	.align 2, 0
_0802006C: .4byte gPreviousPlayerState
_08020070: .4byte gPlayerState
_08020074: .4byte gPlayerSprite
_08020078: .4byte 0x00000209
_0802007C: .4byte dword_2000FC8
_08020080: .4byte 0x00019999
_08020084:
	ldr r2, _080200B4
	ldr r1, _080200B8
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0x28
	strh r0, [r1]
	ldr r4, _080200BC
	ldrb r0, [r4, #0xa]
	cmp r0, #3
	bne _0802009A
	b _08020276
_0802009A:
	movs r0, #3
	strb r0, [r4, #0xa]
	ldr r1, _080200C0
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r0, _080200C4
	ldr r0, [r0]
	ldr r1, _080200C8
	ldr r2, _080200CC
	b _08020270
	.align 2, 0
_080200B4: .4byte gPreviousPlayerState
_080200B8: .4byte gPlayerState
_080200BC: .4byte gPlayerSprite
_080200C0: .4byte 0x00000209
_080200C4: .4byte dword_2000FC8
_080200C8: .4byte 0x00019999
_080200CC: .4byte 0x013B0000
_080200D0:
	ldr r2, _08020104
	ldr r1, _08020108
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0x28
	strh r0, [r1]
	ldr r4, _0802010C
	ldrb r0, [r4, #0xa]
	cmp r0, #5
	bne _080200E6
	b _08020276
_080200E6:
	movs r0, #5
	strb r0, [r4, #0xa]
	ldr r1, _08020110
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r0, _08020114
	ldr r0, [r0]
	ldr r1, _08020118
	movs r2, #0xe1
	lsls r2, r2, #0x10
	b _08020270
	.align 2, 0
_08020104: .4byte gPreviousPlayerState
_08020108: .4byte gPlayerState
_0802010C: .4byte gPlayerSprite
_08020110: .4byte 0x00000209
_08020114: .4byte dword_2000FC8
_08020118: .4byte 0x00019999
_0802011C:
	ldr r2, _08020150
	ldr r1, _08020154
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0x28
	strh r0, [r1]
	ldr r4, _08020158
	ldrb r0, [r4, #0xa]
	cmp r0, #7
	bne _08020132
	b _08020276
_08020132:
	movs r0, #7
	strb r0, [r4, #0xa]
	ldr r1, _0802015C
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r0, _08020160
	ldr r0, [r0]
	ldr r1, _08020164
	movs r2, #0x87
	lsls r2, r2, #0x10
	b _08020270
	.align 2, 0
_08020150: .4byte gPreviousPlayerState
_08020154: .4byte gPlayerState
_08020158: .4byte gPlayerSprite
_0802015C: .4byte 0x00000209
_08020160: .4byte dword_2000FC8
_08020164: .4byte 0x00019999
_08020168:
	ldr r2, _0802019C
	ldr r1, _080201A0
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0x28
	strh r0, [r1]
	ldr r4, _080201A4
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _0802017E
	b _08020276
_0802017E:
	movs r0, #0
	strb r0, [r4, #0xa]
	ldr r1, _080201A8
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r0, _080201AC
	ldr r0, [r0]
	ldr r1, _080201B0
	movs r2, #0xb4
	lsls r2, r2, #0xf
	b _08020270
	.align 2, 0
_0802019C: .4byte gPreviousPlayerState
_080201A0: .4byte gPlayerState
_080201A4: .4byte gPlayerSprite
_080201A8: .4byte 0x00000209
_080201AC: .4byte dword_2000FC8
_080201B0: .4byte 0x00019999
_080201B4:
	ldr r2, _080201E4
	ldr r1, _080201E8
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0x28
	strh r0, [r1]
	ldr r4, _080201EC
	ldrb r0, [r4, #0xa]
	cmp r0, #4
	beq _08020276
	movs r0, #4
	strb r0, [r4, #0xa]
	ldr r1, _080201F0
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r0, _080201F4
	ldr r0, [r0]
	ldr r1, _080201F8
	movs r2, #0x87
	lsls r2, r2, #0x11
	b _08020270
	.align 2, 0
_080201E4: .4byte gPreviousPlayerState
_080201E8: .4byte gPlayerState
_080201EC: .4byte gPlayerSprite
_080201F0: .4byte 0x00000209
_080201F4: .4byte dword_2000FC8
_080201F8: .4byte 0x00019999
_080201FC:
	ldr r2, _0802022C
	ldr r1, _08020230
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0x28
	strh r0, [r1]
	ldr r4, _08020234
	ldrb r0, [r4, #0xa]
	cmp r0, #6
	beq _08020276
	movs r0, #6
	strb r0, [r4, #0xa]
	ldr r1, _08020238
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r0, _0802023C
	ldr r0, [r0]
	ldr r1, _08020240
	movs r2, #0xb4
	lsls r2, r2, #0x10
	b _08020270
	.align 2, 0
_0802022C: .4byte gPreviousPlayerState
_08020230: .4byte gPlayerState
_08020234: .4byte gPlayerSprite
_08020238: .4byte 0x00000209
_0802023C: .4byte dword_2000FC8
_08020240: .4byte 0x00019999
_08020244:
	ldr r2, _08020280
	ldr r1, _08020284
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0x28
	strh r0, [r1]
	ldr r4, _08020288
	ldrb r0, [r4, #0xa]
	cmp r0, #2
	beq _08020276
	movs r0, #2
	strb r0, [r4, #0xa]
	ldr r1, _0802028C
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r0, _08020290
	ldr r0, [r0]
	ldr r1, _08020294
	movs r2, #0
_08020270:
	movs r3, #0
	bl sub_8003884
_08020276:
	ldrb r1, [r4, #0xa]
	movs r0, #5
	bl sub_8016790
	b _080202D0
	.align 2, 0
_08020280: .4byte gPreviousPlayerState
_08020284: .4byte gPlayerState
_08020288: .4byte gPlayerSprite
_0802028C: .4byte 0x00000209
_08020290: .4byte dword_2000FC8
_08020294: .4byte 0x00019999
_08020298:
	ldr r2, _080202D8
	ldr r1, _080202DC
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0x27
	strh r0, [r1]
	ldr r4, _080202E0
	ldr r1, _080202E4
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r0, _080202E8
	ldr r0, [r0]
	ldr r2, _080202EC
	ldrb r1, [r4, #0xa]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r2, [r1]
	movs r1, #0
	movs r3, #0
	bl sub_8003884
	ldrb r1, [r4, #0xa]
	movs r0, #5
	bl sub_8016790
_080202D0:
	add sp, #8
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080202D8: .4byte gPreviousPlayerState
_080202DC: .4byte gPlayerState
_080202E0: .4byte gPlayerSprite
_080202E4: .4byte 0x000001F9
_080202E8: .4byte dword_2000FC8
_080202EC: .4byte dword_80CC290

	.thumb
sub_80202F0: @ 0x080202F0
	push {r4, r5, r6, lr}
	sub sp, #8
	str r0, [sp]
	str r1, [sp, #4]
	add r1, sp, #4
	mov r0, sp
	bl sub_8016710
	ldr r0, [sp]
	ldr r1, [sp, #4]
	bl sub_8016624
	ldr r5, _0802034C
	ldr r0, [r5]
	bl sub_80038BC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08020322
	ldr r2, _08020350
	ldr r1, _08020354
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0x2a
	strh r0, [r1]
_08020322:
	bl sub_801A334
	adds r6, r0, #0
	cmp r6, #0
	beq _0802032E
	b _080204AE
_0802032E:
	ldr r1, [sp]
	movs r0, #0xf0
	ands r1, r0
	cmp r1, #0x50
	beq _08020376
	cmp r1, #0x50
	bgt _0802035E
	cmp r1, #0x20
	beq _08020424
	cmp r1, #0x20
	bgt _08020358
	cmp r1, #0x10
	bne _0802034A
	b _08020440
_0802034A:
	b _08020488
	.align 2, 0
_0802034C: .4byte dword_2000FC8
_08020350: .4byte gPreviousPlayerState
_08020354: .4byte gPlayerState
_08020358:
	cmp r1, #0x40
	beq _080203EC
	b _08020488
_0802035E:
	cmp r1, #0x80
	beq _08020408
	cmp r1, #0x80
	bgt _0802036C
	cmp r1, #0x60
	beq _080203D0
	b _08020488
_0802036C:
	cmp r1, #0x90
	beq _08020394
	cmp r1, #0xa0
	beq _080203B4
	b _08020488
_08020376:
	ldr r4, _08020390
	ldrb r0, [r4, #0xa]
	cmp r0, #1
	bne _0802038C
	ldr r0, [r5]
	bl sub_80038AC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0802038C
	b _080204AE
_0802038C:
	movs r0, #1
	b _08020456
	.align 2, 0
_08020390: .4byte gPlayerSprite
_08020394:
	ldr r4, _080203B0
	ldrb r0, [r4, #0xa]
	cmp r0, #3
	bne _080203AA
	ldr r0, [r5]
	bl sub_80038AC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080203AA
	b _080204AE
_080203AA:
	movs r0, #3
	b _08020456
	.align 2, 0
_080203B0: .4byte gPlayerSprite
_080203B4:
	ldr r4, _080203CC
	ldrb r0, [r4, #0xa]
	cmp r0, #5
	bne _080203C8
	ldr r0, [r5]
	bl sub_80038AC
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080204AE
_080203C8:
	movs r0, #5
	b _08020456
	.align 2, 0
_080203CC: .4byte gPlayerSprite
_080203D0:
	ldr r4, _080203E8
	ldrb r0, [r4, #0xa]
	cmp r0, #7
	bne _080203E4
	ldr r0, [r5]
	bl sub_80038AC
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080204AE
_080203E4:
	movs r0, #7
	b _08020456
	.align 2, 0
_080203E8: .4byte gPlayerSprite
_080203EC:
	ldr r4, _08020404
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _08020400
	ldr r0, [r5]
	bl sub_80038AC
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080204AE
_08020400:
	strb r6, [r4, #0xa]
	b _08020458
	.align 2, 0
_08020404: .4byte gPlayerSprite
_08020408:
	ldr r4, _08020420
	ldrb r0, [r4, #0xa]
	cmp r0, #4
	bne _0802041C
	ldr r0, [r5]
	bl sub_80038AC
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080204AE
_0802041C:
	movs r0, #4
	b _08020456
	.align 2, 0
_08020420: .4byte gPlayerSprite
_08020424:
	ldr r4, _0802043C
	ldrb r0, [r4, #0xa]
	cmp r0, #6
	bne _08020438
	ldr r0, [r5]
	bl sub_80038AC
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080204AE
_08020438:
	movs r0, #6
	b _08020456
	.align 2, 0
_0802043C: .4byte gPlayerSprite
_08020440:
	ldr r4, _0802047C
	ldrb r0, [r4, #0xa]
	cmp r0, #2
	bne _08020454
	ldr r0, [r5]
	bl sub_80038AC
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080204AE
_08020454:
	movs r0, #2
_08020456:
	strb r0, [r4, #0xa]
_08020458:
	ldr r1, _08020480
	adds r0, r4, #0
	movs r2, #0
	movs r3, #1
	bl sub_8003368
	ldr r0, [r5]
	movs r1, #0x98
	lsls r1, r1, #9
	ldr r3, _08020484
	ldrb r2, [r4, #0xa]
	lsls r2, r2, #2
	adds r2, r2, r3
	ldr r2, [r2]
	movs r3, #0
	bl sub_8003884
	b _080204AE
	.align 2, 0
_0802047C: .4byte gPlayerSprite
_08020480: .4byte 0x00000201
_08020484: .4byte dword_80CC290
_08020488:
	ldr r4, _080204B8
	ldr r0, [r4]
	bl sub_80038AC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080204AE
	ldr r0, [r4]
	movs r1, #0xc0
	lsls r1, r1, #6
	ldr r3, _080204BC
	ldr r2, _080204C0
	ldrb r2, [r2, #0xa]
	lsls r2, r2, #2
	adds r2, r2, r3
	ldr r2, [r2]
	movs r3, #0
	bl sub_8003884
_080204AE:
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080204B8: .4byte dword_2000FC8
_080204BC: .4byte dword_80CC290
_080204C0: .4byte gPlayerSprite

	.thumb
sub_80204C4: @ 0x080204C4
	push {r4, r5, lr}
	sub sp, #8
	str r0, [sp]
	str r1, [sp, #4]
	add r1, sp, #4
	mov r0, sp
	bl sub_8016710
	bl sub_801A334
	adds r5, r0, #0
	cmp r5, #0
	beq _080204E0
	b _08020692
_080204E0:
	ldr r1, [sp]
	movs r0, #0xf0
	ands r1, r0
	cmp r1, #0x50
	beq _0802051E
	cmp r1, #0x50
	bgt _08020506
	cmp r1, #0x20
	bne _080204F4
	b _080205F8
_080204F4:
	cmp r1, #0x20
	bgt _08020500
	cmp r1, #0x10
	bne _080204FE
	b _0802061C
_080204FE:
	b _0802066C
_08020500:
	cmp r1, #0x40
	beq _080205B0
	b _0802066C
_08020506:
	cmp r1, #0x80
	beq _080205D4
	cmp r1, #0x80
	bgt _08020514
	cmp r1, #0x60
	beq _0802058C
	b _0802066C
_08020514:
	cmp r1, #0x90
	beq _08020544
	cmp r1, #0xa0
	beq _08020568
	b _0802066C
_0802051E:
	ldr r4, _0802053C
	ldrb r0, [r4, #0xa]
	cmp r0, #1
	bne _08020536
	ldr r0, _08020540
	ldr r0, [r0]
	bl sub_80038AC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08020536
	b _08020692
_08020536:
	movs r0, #1
	b _08020634
	.align 2, 0
_0802053C: .4byte gPlayerSprite
_08020540: .4byte dword_2000FC8
_08020544:
	ldr r4, _08020560
	ldrb r0, [r4, #0xa]
	cmp r0, #3
	bne _0802055C
	ldr r0, _08020564
	ldr r0, [r0]
	bl sub_80038AC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0802055C
	b _08020692
_0802055C:
	movs r0, #3
	b _08020634
	.align 2, 0
_08020560: .4byte gPlayerSprite
_08020564: .4byte dword_2000FC8
_08020568:
	ldr r4, _08020584
	ldrb r0, [r4, #0xa]
	cmp r0, #5
	bne _08020580
	ldr r0, _08020588
	ldr r0, [r0]
	bl sub_80038AC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08020580
	b _08020692
_08020580:
	movs r0, #5
	b _08020634
	.align 2, 0
_08020584: .4byte gPlayerSprite
_08020588: .4byte dword_2000FC8
_0802058C:
	ldr r4, _080205A8
	ldrb r0, [r4, #0xa]
	cmp r0, #7
	bne _080205A2
	ldr r0, _080205AC
	ldr r0, [r0]
	bl sub_80038AC
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08020692
_080205A2:
	movs r0, #7
	b _08020634
	.align 2, 0
_080205A8: .4byte gPlayerSprite
_080205AC: .4byte dword_2000FC8
_080205B0:
	ldr r4, _080205CC
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _080205C6
	ldr r0, _080205D0
	ldr r0, [r0]
	bl sub_80038AC
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08020692
_080205C6:
	strb r5, [r4, #0xa]
	b _08020636
	.align 2, 0
_080205CC: .4byte gPlayerSprite
_080205D0: .4byte dword_2000FC8
_080205D4:
	ldr r4, _080205F0
	ldrb r0, [r4, #0xa]
	cmp r0, #4
	bne _080205EA
	ldr r0, _080205F4
	ldr r0, [r0]
	bl sub_80038AC
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08020692
_080205EA:
	movs r0, #4
	b _08020634
	.align 2, 0
_080205F0: .4byte gPlayerSprite
_080205F4: .4byte dword_2000FC8
_080205F8:
	ldr r4, _08020614
	ldrb r0, [r4, #0xa]
	cmp r0, #6
	bne _0802060E
	ldr r0, _08020618
	ldr r0, [r0]
	bl sub_80038AC
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08020692
_0802060E:
	movs r0, #6
	b _08020634
	.align 2, 0
_08020614: .4byte gPlayerSprite
_08020618: .4byte dword_2000FC8
_0802061C:
	ldr r4, _0802065C
	ldrb r0, [r4, #0xa]
	cmp r0, #2
	bne _08020632
	ldr r0, _08020660
	ldr r0, [r0]
	bl sub_80038AC
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08020692
_08020632:
	movs r0, #2
_08020634:
	strb r0, [r4, #0xa]
_08020636:
	ldr r1, _08020664
	adds r0, r4, #0
	movs r2, #0
	movs r3, #1
	bl sub_8003368
	ldr r0, _08020660
	ldr r0, [r0]
	movs r1, #0x98
	lsls r1, r1, #9
	ldr r3, _08020668
	ldrb r2, [r4, #0xa]
	lsls r2, r2, #2
	adds r2, r2, r3
	ldr r2, [r2]
	movs r3, #0
	bl sub_8003884
	b _08020692
	.align 2, 0
_0802065C: .4byte gPlayerSprite
_08020660: .4byte dword_2000FC8
_08020664: .4byte 0x00000201
_08020668: .4byte dword_80CC290
_0802066C:
	ldr r4, _0802069C
	ldr r0, [r4]
	bl sub_80038AC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08020692
	ldr r0, [r4]
	movs r1, #0xc0
	lsls r1, r1, #6
	ldr r3, _080206A0
	ldr r2, _080206A4
	ldrb r2, [r2, #0xa]
	lsls r2, r2, #2
	adds r2, r2, r3
	ldr r2, [r2]
	movs r3, #0
	bl sub_8003884
_08020692:
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0802069C: .4byte dword_2000FC8
_080206A0: .4byte dword_80CC290
_080206A4: .4byte gPlayerSprite

	.thumb
sub_80206A8: @ 0x080206A8
	push {lr}
	sub sp, #8
	str r0, [sp]
	str r1, [sp, #4]
	add r1, sp, #4
	mov r0, sp
	bl sub_8016710
	bl sub_801A334
	add sp, #8
	pop {r0}
	bx r0
	.align 2, 0

	.thumb
sub_80206C4: @ 0x080206C4
	push {r4, lr}
	sub sp, #8
	str r0, [sp]
	str r1, [sp, #4]
	add r1, sp, #4
	mov r0, sp
	bl sub_8016710
	ldr r4, _08020724
	adds r0, r4, #0
	bl sub_8003770
	cmp r0, #0
	beq _0802071A
	ldr r2, _08020728
	ldr r1, _0802072C
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0x27
	strh r0, [r1]
	ldr r1, _08020730
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldrb r1, [r4, #0xa]
	movs r0, #5
	bl sub_8016790
	ldr r1, _08020734
	ldrb r0, [r1, #0x12]
	subs r0, #1
	strb r0, [r1, #0x12]
	ldrb r1, [r1, #0x12]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	movs r0, #3
	bl sub_08040204
	movs r0, #3
	bl sub_08041FA4
_0802071A:
	add sp, #8
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08020724: .4byte gPlayerSprite
_08020728: .4byte gPreviousPlayerState
_0802072C: .4byte gPlayerState
_08020730: .4byte 0x000001F9
_08020734: .4byte gGameStatus

	.thumb
sub_8020738: @ 0x08020738
	push {r4, lr}
	sub sp, #8
	str r0, [sp]
	str r1, [sp, #4]
	add r1, sp, #4
	mov r0, sp
	bl sub_8016710
	ldr r4, _08020794
	adds r0, r4, #0
	bl sub_8003770
	cmp r0, #0
	beq _0802078A
	ldr r2, _08020798
	ldr r1, _0802079C
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0
	strh r0, [r1]
	adds r0, r4, #0
	movs r1, #0x19
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r0, _080207A0
	ldr r0, [r0]
	ldr r2, _080207A4
	ldrb r1, [r4, #0xa]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r2, [r1]
	movs r1, #0
	movs r3, #0
	bl sub_8003884
	ldrb r1, [r4, #0xa]
	movs r0, #0
	bl sub_8016790
_0802078A:
	add sp, #8
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08020794: .4byte gPlayerSprite
_08020798: .4byte gPreviousPlayerState
_0802079C: .4byte gPlayerState
_080207A0: .4byte dword_2000FC8
_080207A4: .4byte dword_80CC290

	.thumb
sub_80207A8: @ 0x080207A8
	push {r4, lr}
	sub sp, #8
	str r0, [sp]
	str r1, [sp, #4]
	add r1, sp, #4
	mov r0, sp
	bl sub_8016710
	ldr r4, _080207EC
	adds r0, r4, #0
	bl sub_8003770
	cmp r0, #0
	beq _080207E4
	ldr r2, _080207F0
	ldr r1, _080207F4
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0x47
	strh r0, [r1]
	ldr r1, _080207F8
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldrb r1, [r4, #0xa]
	movs r0, #0
	bl sub_8016790
_080207E4:
	add sp, #8
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080207EC: .4byte gPlayerSprite
_080207F0: .4byte gPreviousPlayerState
_080207F4: .4byte gPlayerState
_080207F8: .4byte 0x00000101

	.thumb
sub_80207FC: @ 0x080207FC
	push {r4, lr}
	sub sp, #8
	str r0, [sp]
	str r1, [sp, #4]
	add r1, sp, #4
	mov r0, sp
	bl sub_8016710
	ldr r1, [sp, #4]
	ldr r0, _08020820
	ands r1, r0
	cmp r1, #2
	beq _08020846
	cmp r1, #2
	bgt _08020824
	cmp r1, #1
	beq _08020836
	b _0802089E
	.align 2, 0
_08020820: .4byte 0x0000030F
_08020824:
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	beq _08020898
	movs r0, #0x80
	lsls r0, r0, #2
	cmp r1, r0
	beq _0802084E
	b _0802089E
_08020836:
	bl sub_08016EE0
	cmp r0, #0
	beq _08020840
	b _08020B54
_08020840:
	bl sub_801738C
	b _08020B54
_08020846:
	movs r0, #1
	bl sub_801A3DC
	b _08020B54
_0802084E:
	ldr r2, _08020880
	ldr r1, _08020884
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0x4a
	strh r0, [r1]
	ldr r4, _08020888
	ldr r1, _0802088C
	adds r0, r4, #0
	movs r2, #0
	movs r3, #1
	bl sub_8003368
	ldr r0, _08020890
	ldr r0, [r0]
	ldr r2, _08020894
	ldrb r1, [r4, #0xa]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r2, [r1]
	movs r1, #0
	movs r3, #0
	bl sub_8003884
	b _08020AFE
	.align 2, 0
_08020880: .4byte gPreviousPlayerState
_08020884: .4byte gPlayerState
_08020888: .4byte gPlayerSprite
_0802088C: .4byte 0x00000211
_08020890: .4byte dword_2000FC8
_08020894: .4byte dword_80CC290
_08020898:
	movs r0, #0
	bl sub_800DAE4
_0802089E:
	ldr r1, [sp]
	movs r0, #0xf0
	ands r1, r0
	cmp r1, #0x50
	beq _080208E0
	cmp r1, #0x50
	bgt _080208C6
	cmp r1, #0x20
	bne _080208B2
	b _08020A88
_080208B2:
	cmp r1, #0x20
	bgt _080208BE
	cmp r1, #0x10
	bne _080208BC
	b _08020ACC
_080208BC:
	b _08020B1C
_080208BE:
	cmp r1, #0x40
	bne _080208C4
	b _08020A00
_080208C4:
	b _08020B1C
_080208C6:
	cmp r1, #0x80
	bne _080208CC
	b _08020A44
_080208CC:
	cmp r1, #0x80
	bgt _080208D6
	cmp r1, #0x60
	beq _080209B8
	b _08020B1C
_080208D6:
	cmp r1, #0x90
	beq _08020928
	cmp r1, #0xa0
	beq _08020970
	b _08020B1C
_080208E0:
	ldr r2, _08020914
	ldr r1, _08020918
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0x46
	strh r0, [r1]
	ldr r4, _0802091C
	ldrb r0, [r4, #0xa]
	cmp r0, #1
	bne _080208F6
	b _08020AFE
_080208F6:
	movs r0, #1
	strb r0, [r4, #0xa]
	adds r0, r4, #0
	movs r1, #0xf9
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r0, _08020920
	ldr r0, [r0]
	ldr r1, _08020924
	movs r2, #0xb4
	lsls r2, r2, #0xe
	b _08020AF8
	.align 2, 0
_08020914: .4byte gPreviousPlayerState
_08020918: .4byte gPlayerState
_0802091C: .4byte gPlayerSprite
_08020920: .4byte dword_2000FC8
_08020924: .4byte 0x00014CCD
_08020928:
	ldr r2, _08020958
	ldr r1, _0802095C
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0x46
	strh r0, [r1]
	ldr r4, _08020960
	ldrb r0, [r4, #0xa]
	cmp r0, #3
	bne _0802093E
	b _08020AFE
_0802093E:
	movs r0, #3
	strb r0, [r4, #0xa]
	adds r0, r4, #0
	movs r1, #0xf9
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r0, _08020964
	ldr r0, [r0]
	ldr r1, _08020968
	ldr r2, _0802096C
	b _08020AF8
	.align 2, 0
_08020958: .4byte gPreviousPlayerState
_0802095C: .4byte gPlayerState
_08020960: .4byte gPlayerSprite
_08020964: .4byte dword_2000FC8
_08020968: .4byte 0x00014CCD
_0802096C: .4byte 0x013B0000
_08020970:
	ldr r2, _080209A4
	ldr r1, _080209A8
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0x46
	strh r0, [r1]
	ldr r4, _080209AC
	ldrb r0, [r4, #0xa]
	cmp r0, #5
	bne _08020986
	b _08020AFE
_08020986:
	movs r0, #5
	strb r0, [r4, #0xa]
	adds r0, r4, #0
	movs r1, #0xf9
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r0, _080209B0
	ldr r0, [r0]
	ldr r1, _080209B4
	movs r2, #0xe1
	lsls r2, r2, #0x10
	b _08020AF8
	.align 2, 0
_080209A4: .4byte gPreviousPlayerState
_080209A8: .4byte gPlayerState
_080209AC: .4byte gPlayerSprite
_080209B0: .4byte dword_2000FC8
_080209B4: .4byte 0x00014CCD
_080209B8:
	ldr r2, _080209EC
	ldr r1, _080209F0
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0x46
	strh r0, [r1]
	ldr r4, _080209F4
	ldrb r0, [r4, #0xa]
	cmp r0, #7
	bne _080209CE
	b _08020AFE
_080209CE:
	movs r0, #7
	strb r0, [r4, #0xa]
	adds r0, r4, #0
	movs r1, #0xf9
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r0, _080209F8
	ldr r0, [r0]
	ldr r1, _080209FC
	movs r2, #0x87
	lsls r2, r2, #0x10
	b _08020AF8
	.align 2, 0
_080209EC: .4byte gPreviousPlayerState
_080209F0: .4byte gPlayerState
_080209F4: .4byte gPlayerSprite
_080209F8: .4byte dword_2000FC8
_080209FC: .4byte 0x00014CCD
_08020A00:
	ldr r2, _08020A30
	ldr r1, _08020A34
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0x46
	strh r0, [r1]
	ldr r4, _08020A38
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	beq _08020AFE
	movs r0, #0
	strb r0, [r4, #0xa]
	adds r0, r4, #0
	movs r1, #0xf9
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r0, _08020A3C
	ldr r0, [r0]
	ldr r1, _08020A40
	movs r2, #0xb4
	lsls r2, r2, #0xf
	b _08020AF8
	.align 2, 0
_08020A30: .4byte gPreviousPlayerState
_08020A34: .4byte gPlayerState
_08020A38: .4byte gPlayerSprite
_08020A3C: .4byte dword_2000FC8
_08020A40: .4byte 0x00014CCD
_08020A44:
	ldr r2, _08020A74
	ldr r1, _08020A78
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0x46
	strh r0, [r1]
	ldr r4, _08020A7C
	ldrb r0, [r4, #0xa]
	cmp r0, #4
	beq _08020AFE
	movs r0, #4
	strb r0, [r4, #0xa]
	adds r0, r4, #0
	movs r1, #0xf9
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r0, _08020A80
	ldr r0, [r0]
	ldr r1, _08020A84
	movs r2, #0x87
	lsls r2, r2, #0x11
	b _08020AF8
	.align 2, 0
_08020A74: .4byte gPreviousPlayerState
_08020A78: .4byte gPlayerState
_08020A7C: .4byte gPlayerSprite
_08020A80: .4byte dword_2000FC8
_08020A84: .4byte 0x00014CCD
_08020A88:
	ldr r2, _08020AB8
	ldr r1, _08020ABC
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0x46
	strh r0, [r1]
	ldr r4, _08020AC0
	ldrb r0, [r4, #0xa]
	cmp r0, #6
	beq _08020AFE
	movs r0, #6
	strb r0, [r4, #0xa]
	adds r0, r4, #0
	movs r1, #0xf9
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r0, _08020AC4
	ldr r0, [r0]
	ldr r1, _08020AC8
	movs r2, #0xb4
	lsls r2, r2, #0x10
	b _08020AF8
	.align 2, 0
_08020AB8: .4byte gPreviousPlayerState
_08020ABC: .4byte gPlayerState
_08020AC0: .4byte gPlayerSprite
_08020AC4: .4byte dword_2000FC8
_08020AC8: .4byte 0x00014CCD
_08020ACC:
	ldr r2, _08020B08
	ldr r1, _08020B0C
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0x46
	strh r0, [r1]
	ldr r4, _08020B10
	ldrb r0, [r4, #0xa]
	cmp r0, #2
	beq _08020AFE
	movs r0, #2
	strb r0, [r4, #0xa]
	adds r0, r4, #0
	movs r1, #0xf9
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r0, _08020B14
	ldr r0, [r0]
	ldr r1, _08020B18
	movs r2, #0
_08020AF8:
	movs r3, #0
	bl sub_8003884
_08020AFE:
	ldrb r1, [r4, #0xa]
	movs r0, #0
	bl sub_8016790
	b _08020B54
	.align 2, 0
_08020B08: .4byte gPreviousPlayerState
_08020B0C: .4byte gPlayerState
_08020B10: .4byte gPlayerSprite
_08020B14: .4byte dword_2000FC8
_08020B18: .4byte 0x00014CCD
_08020B1C:
	ldr r2, _08020B5C
	ldr r1, _08020B60
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0x47
	strh r0, [r1]
	ldr r4, _08020B64
	ldr r1, _08020B68
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r0, _08020B6C
	ldr r0, [r0]
	ldr r2, _08020B70
	ldrb r1, [r4, #0xa]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r2, [r1]
	movs r1, #0
	movs r3, #0
	bl sub_8003884
	ldrb r1, [r4, #0xa]
	movs r0, #0
	bl sub_8016790
_08020B54:
	add sp, #8
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08020B5C: .4byte gPreviousPlayerState
_08020B60: .4byte gPlayerState
_08020B64: .4byte gPlayerSprite
_08020B68: .4byte 0x00000101
_08020B6C: .4byte dword_2000FC8
_08020B70: .4byte dword_80CC290

	.thumb
sub_8020B74: @ 0x08020B74
	push {r4, lr}
	sub sp, #8
	str r0, [sp]
	str r1, [sp, #4]
	add r1, sp, #4
	mov r0, sp
	bl sub_8016710
	ldr r1, [sp, #4]
	ldr r0, _08020B98
	ands r1, r0
	cmp r1, #2
	beq _08020BD8
	cmp r1, #2
	bgt _08020B9C
	cmp r1, #1
	beq _08020BAE
	b _08020C12
	.align 2, 0
_08020B98: .4byte 0x0000030F
_08020B9C:
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	beq _08020C0C
	movs r0, #0x80
	lsls r0, r0, #2
	cmp r1, r0
	beq _08020BE0
	b _08020C12
_08020BAE:
	ldr r0, _08020BC4
	ldrb r0, [r0]
	cmp r0, #0
	beq _08020BC8
	bl sub_800DE9C
	movs r0, #0
	bl sub_80186F4
	b _08020E54
	.align 2, 0
_08020BC4: .4byte gInInteractionArea
_08020BC8:
	bl sub_08016EE0
	cmp r0, #0
	beq _08020BD2
	b _08020E54
_08020BD2:
	bl sub_801738C
	b _08020E54
_08020BD8:
	movs r0, #1
	bl sub_801A3DC
	b _08020E54
_08020BE0:
	ldr r2, _08020BFC
	ldr r1, _08020C00
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0x4a
	strh r0, [r1]
	ldr r4, _08020C04
	ldr r1, _08020C08
	adds r0, r4, #0
	movs r2, #0
	movs r3, #1
	bl sub_8003368
	b _08020E02
	.align 2, 0
_08020BFC: .4byte gPreviousPlayerState
_08020C00: .4byte gPlayerState
_08020C04: .4byte gPlayerSprite
_08020C08: .4byte 0x00000211
_08020C0C:
	movs r0, #0
	bl sub_800DAE4
_08020C12:
	ldr r1, [sp]
	movs r0, #0xf0
	ands r1, r0
	cmp r1, #0x50
	beq _08020C54
	cmp r1, #0x50
	bgt _08020C3A
	cmp r1, #0x20
	bne _08020C26
	b _08020DD4
_08020C26:
	cmp r1, #0x20
	bgt _08020C32
	cmp r1, #0x10
	bne _08020C30
	b _08020E20
_08020C30:
	b _08020E54
_08020C32:
	cmp r1, #0x40
	bne _08020C38
	b _08020D54
_08020C38:
	b _08020E54
_08020C3A:
	cmp r1, #0x80
	bne _08020C40
	b _08020D94
_08020C40:
	cmp r1, #0x80
	bgt _08020C4A
	cmp r1, #0x60
	beq _08020D14
	b _08020E54
_08020C4A:
	cmp r1, #0x90
	beq _08020C94
	cmp r1, #0xa0
	beq _08020CD4
	b _08020E54
_08020C54:
	ldr r2, _08020C80
	ldr r1, _08020C84
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0x46
	strh r0, [r1]
	ldr r4, _08020C88
	movs r0, #1
	strb r0, [r4, #0xa]
	adds r0, r4, #0
	movs r1, #0xf9
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r0, _08020C8C
	ldr r0, [r0]
	ldr r1, _08020C90
	movs r2, #0xb4
	lsls r2, r2, #0xe
	b _08020DFC
	.align 2, 0
_08020C80: .4byte gPreviousPlayerState
_08020C84: .4byte gPlayerState
_08020C88: .4byte gPlayerSprite
_08020C8C: .4byte dword_2000FC8
_08020C90: .4byte 0x00014CCD
_08020C94:
	ldr r2, _08020CBC
	ldr r1, _08020CC0
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0x46
	strh r0, [r1]
	ldr r4, _08020CC4
	movs r0, #3
	strb r0, [r4, #0xa]
	adds r0, r4, #0
	movs r1, #0xf9
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r0, _08020CC8
	ldr r0, [r0]
	ldr r1, _08020CCC
	ldr r2, _08020CD0
	b _08020DFC
	.align 2, 0
_08020CBC: .4byte gPreviousPlayerState
_08020CC0: .4byte gPlayerState
_08020CC4: .4byte gPlayerSprite
_08020CC8: .4byte dword_2000FC8
_08020CCC: .4byte 0x00014CCD
_08020CD0: .4byte 0x013B0000
_08020CD4:
	ldr r2, _08020D00
	ldr r1, _08020D04
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0x46
	strh r0, [r1]
	ldr r4, _08020D08
	movs r0, #5
	strb r0, [r4, #0xa]
	adds r0, r4, #0
	movs r1, #0xf9
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r0, _08020D0C
	ldr r0, [r0]
	ldr r1, _08020D10
	movs r2, #0xe1
	lsls r2, r2, #0x10
	b _08020DFC
	.align 2, 0
_08020D00: .4byte gPreviousPlayerState
_08020D04: .4byte gPlayerState
_08020D08: .4byte gPlayerSprite
_08020D0C: .4byte dword_2000FC8
_08020D10: .4byte 0x00014CCD
_08020D14:
	ldr r2, _08020D40
	ldr r1, _08020D44
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0x46
	strh r0, [r1]
	ldr r4, _08020D48
	movs r0, #7
	strb r0, [r4, #0xa]
	adds r0, r4, #0
	movs r1, #0xf9
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r0, _08020D4C
	ldr r0, [r0]
	ldr r1, _08020D50
	movs r2, #0x87
	lsls r2, r2, #0x10
	b _08020DFC
	.align 2, 0
_08020D40: .4byte gPreviousPlayerState
_08020D44: .4byte gPlayerState
_08020D48: .4byte gPlayerSprite
_08020D4C: .4byte dword_2000FC8
_08020D50: .4byte 0x00014CCD
_08020D54:
	ldr r2, _08020D80
	ldr r1, _08020D84
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0x46
	strh r0, [r1]
	ldr r4, _08020D88
	movs r0, #0
	strb r0, [r4, #0xa]
	adds r0, r4, #0
	movs r1, #0xf9
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r0, _08020D8C
	ldr r0, [r0]
	ldr r1, _08020D90
	movs r2, #0xb4
	lsls r2, r2, #0xf
	b _08020DFC
	.align 2, 0
_08020D80: .4byte gPreviousPlayerState
_08020D84: .4byte gPlayerState
_08020D88: .4byte gPlayerSprite
_08020D8C: .4byte dword_2000FC8
_08020D90: .4byte 0x00014CCD
_08020D94:
	ldr r2, _08020DC0
	ldr r1, _08020DC4
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0x46
	strh r0, [r1]
	ldr r4, _08020DC8
	movs r0, #4
	strb r0, [r4, #0xa]
	adds r0, r4, #0
	movs r1, #0xf9
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r0, _08020DCC
	ldr r0, [r0]
	ldr r1, _08020DD0
	movs r2, #0x87
	lsls r2, r2, #0x11
	b _08020DFC
	.align 2, 0
_08020DC0: .4byte gPreviousPlayerState
_08020DC4: .4byte gPlayerState
_08020DC8: .4byte gPlayerSprite
_08020DCC: .4byte dword_2000FC8
_08020DD0: .4byte 0x00014CCD
_08020DD4:
	ldr r2, _08020E0C
	ldr r1, _08020E10
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0x46
	strh r0, [r1]
	ldr r4, _08020E14
	movs r0, #6
	strb r0, [r4, #0xa]
	adds r0, r4, #0
	movs r1, #0xf9
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r0, _08020E18
	ldr r0, [r0]
	ldr r1, _08020E1C
	movs r2, #0xb4
	lsls r2, r2, #0x10
_08020DFC:
	movs r3, #0
	bl sub_8003884
_08020E02:
	ldrb r1, [r4, #0xa]
	movs r0, #0
	bl sub_8016790
	b _08020E54
	.align 2, 0
_08020E0C: .4byte gPreviousPlayerState
_08020E10: .4byte gPlayerState
_08020E14: .4byte gPlayerSprite
_08020E18: .4byte dword_2000FC8
_08020E1C: .4byte 0x00014CCD
_08020E20:
	ldr r2, _08020E5C
	ldr r1, _08020E60
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0x46
	strh r0, [r1]
	ldr r4, _08020E64
	movs r0, #2
	strb r0, [r4, #0xa]
	adds r0, r4, #0
	movs r1, #0xf9
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r0, _08020E68
	ldr r0, [r0]
	ldr r1, _08020E6C
	movs r2, #0
	movs r3, #0
	bl sub_8003884
	ldrb r1, [r4, #0xa]
	movs r0, #0
	bl sub_8016790
_08020E54:
	add sp, #8
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08020E5C: .4byte gPreviousPlayerState
_08020E60: .4byte gPlayerState
_08020E64: .4byte gPlayerSprite
_08020E68: .4byte dword_2000FC8
_08020E6C: .4byte 0x00014CCD

	.thumb
sub_8020E70: @ 0x08020E70
	push {lr}
	sub sp, #8
	str r0, [sp]
	str r1, [sp, #4]
	add r1, sp, #4
	mov r0, sp
	bl sub_8016710
	add sp, #8
	pop {r0}
	bx r0
	.align 2, 0

	.thumb
sub_8020E88: @ 0x08020E88
	push {lr}
	sub sp, #8
	str r0, [sp]
	str r1, [sp, #4]
	add r1, sp, #4
	mov r0, sp
	bl sub_8016710
	add sp, #8
	pop {r0}
	bx r0
	.align 2, 0

	.thumb
sub_8020EA0: @ 0x08020EA0
	push {r4, lr}
	sub sp, #8
	str r0, [sp]
	str r1, [sp, #4]
	add r1, sp, #4
	mov r0, sp
	bl sub_8016710
	bl sub_800DE9C
	ldr r2, _08020EE0
	ldr r1, _08020EE4
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0
	strh r0, [r1]
	ldr r4, _08020EE8
	adds r0, r4, #0
	movs r1, #0x19
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldrb r1, [r4, #0xa]
	movs r0, #0
	bl sub_8016790
	add sp, #8
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08020EE0: .4byte gPreviousPlayerState
_08020EE4: .4byte gPlayerState
_08020EE8: .4byte gPlayerSprite

	.thumb
sub_8020EEC: @ 0x08020EEC
	push {r4, lr}
	sub sp, #8
	str r0, [sp]
	str r1, [sp, #4]
	add r1, sp, #4
	mov r0, sp
	bl sub_8016710
	ldr r0, [sp]
	ldr r1, [sp, #4]
	bl sub_8016624
	ldr r0, _08020F40
	ldr r0, [r0]
	bl sub_80038BC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08020F2A
	ldr r2, _08020F44
	ldr r1, _08020F48
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0x22
	strh r0, [r1]
	ldr r0, _08020F4C
	ldr r1, _08020F50
	movs r2, #0
	movs r3, #0
	bl sub_80033A4
_08020F2A:
	ldr r1, [sp, #4]
	ldr r0, _08020F54
	ands r1, r0
	cmp r1, #2
	beq _08020F58
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	beq _08020F60
	b _08020F66
	.align 2, 0
_08020F40: .4byte dword_2000FC8
_08020F44: .4byte gPreviousPlayerState
_08020F48: .4byte gPlayerState
_08020F4C: .4byte gPlayerSprite
_08020F50: .4byte 0x00000119
_08020F54: .4byte 0x0000030F
_08020F58:
	movs r0, #1
	bl sub_801A3DC
	b _08021116
_08020F60:
	movs r0, #0
	bl sub_800DAE4
_08020F66:
	ldr r1, [sp]
	movs r0, #0xf0
	ands r1, r0
	cmp r1, #0x50
	beq _08020FA4
	cmp r1, #0x50
	bgt _08020F8C
	cmp r1, #0x20
	bne _08020F7A
	b _0802107C
_08020F7A:
	cmp r1, #0x20
	bgt _08020F86
	cmp r1, #0x10
	bne _08020F84
	b _080210A0
_08020F84:
	b _080210F0
_08020F86:
	cmp r1, #0x40
	beq _08021034
	b _080210F0
_08020F8C:
	cmp r1, #0x80
	beq _08021058
	cmp r1, #0x80
	bgt _08020F9A
	cmp r1, #0x60
	beq _08021010
	b _080210F0
_08020F9A:
	cmp r1, #0x90
	beq _08020FC8
	cmp r1, #0xa0
	beq _08020FEC
	b _080210F0
_08020FA4:
	ldr r4, _08020FC0
	ldrb r0, [r4, #0xa]
	cmp r0, #1
	bne _08020FBC
	ldr r0, _08020FC4
	ldr r0, [r0]
	bl sub_80038AC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08020FBC
	b _08021116
_08020FBC:
	movs r0, #1
	b _080210B8
	.align 2, 0
_08020FC0: .4byte gPlayerSprite
_08020FC4: .4byte dword_2000FC8
_08020FC8:
	ldr r4, _08020FE4
	ldrb r0, [r4, #0xa]
	cmp r0, #3
	bne _08020FE0
	ldr r0, _08020FE8
	ldr r0, [r0]
	bl sub_80038AC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08020FE0
	b _08021116
_08020FE0:
	movs r0, #3
	b _080210B8
	.align 2, 0
_08020FE4: .4byte gPlayerSprite
_08020FE8: .4byte dword_2000FC8
_08020FEC:
	ldr r4, _08021008
	ldrb r0, [r4, #0xa]
	cmp r0, #5
	bne _08021004
	ldr r0, _0802100C
	ldr r0, [r0]
	bl sub_80038AC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08021004
	b _08021116
_08021004:
	movs r0, #5
	b _080210B8
	.align 2, 0
_08021008: .4byte gPlayerSprite
_0802100C: .4byte dword_2000FC8
_08021010:
	ldr r4, _0802102C
	ldrb r0, [r4, #0xa]
	cmp r0, #7
	bne _08021026
	ldr r0, _08021030
	ldr r0, [r0]
	bl sub_80038AC
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08021116
_08021026:
	movs r0, #7
	b _080210B8
	.align 2, 0
_0802102C: .4byte gPlayerSprite
_08021030: .4byte dword_2000FC8
_08021034:
	ldr r4, _08021050
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _0802104A
	ldr r0, _08021054
	ldr r0, [r0]
	bl sub_80038AC
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08021116
_0802104A:
	movs r0, #0
	b _080210B8
	.align 2, 0
_08021050: .4byte gPlayerSprite
_08021054: .4byte dword_2000FC8
_08021058:
	ldr r4, _08021074
	ldrb r0, [r4, #0xa]
	cmp r0, #4
	bne _0802106E
	ldr r0, _08021078
	ldr r0, [r0]
	bl sub_80038AC
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08021116
_0802106E:
	movs r0, #4
	b _080210B8
	.align 2, 0
_08021074: .4byte gPlayerSprite
_08021078: .4byte dword_2000FC8
_0802107C:
	ldr r4, _08021098
	ldrb r0, [r4, #0xa]
	cmp r0, #6
	bne _08021092
	ldr r0, _0802109C
	ldr r0, [r0]
	bl sub_80038AC
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08021116
_08021092:
	movs r0, #6
	b _080210B8
	.align 2, 0
_08021098: .4byte gPlayerSprite
_0802109C: .4byte dword_2000FC8
_080210A0:
	ldr r4, _080210E0
	ldrb r0, [r4, #0xa]
	cmp r0, #2
	bne _080210B6
	ldr r0, _080210E4
	ldr r0, [r0]
	bl sub_80038AC
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08021116
_080210B6:
	movs r0, #2
_080210B8:
	strb r0, [r4, #0xa]
	ldr r1, _080210E8
	adds r0, r4, #0
	movs r2, #0
	movs r3, #1
	bl sub_8003368
	ldr r0, _080210E4
	ldr r0, [r0]
	movs r1, #0x98
	lsls r1, r1, #9
	ldr r3, _080210EC
	ldrb r2, [r4, #0xa]
	lsls r2, r2, #2
	adds r2, r2, r3
	ldr r2, [r2]
	movs r3, #0
	bl sub_8003884
	b _08021116
	.align 2, 0
_080210E0: .4byte gPlayerSprite
_080210E4: .4byte dword_2000FC8
_080210E8: .4byte 0x00000111
_080210EC: .4byte dword_80CC290
_080210F0:
	ldr r4, _08021120
	ldr r0, [r4]
	bl sub_80038AC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08021116
	ldr r0, [r4]
	movs r1, #0xc0
	lsls r1, r1, #6
	ldr r3, _08021124
	ldr r2, _08021128
	ldrb r2, [r2, #0xa]
	lsls r2, r2, #2
	adds r2, r2, r3
	ldr r2, [r2]
	movs r3, #0
	bl sub_8003884
_08021116:
	add sp, #8
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08021120: .4byte dword_2000FC8
_08021124: .4byte dword_80CC290
_08021128: .4byte gPlayerSprite

	.thumb
sub_802112C: @ 0x0802112C
	push {r4, lr}
	sub sp, #8
	str r0, [sp]
	str r1, [sp, #4]
	add r1, sp, #4
	mov r0, sp
	bl sub_8016710
	ldr r1, [sp, #4]
	ldr r0, _08021150
	ands r1, r0
	cmp r1, #2
	beq _08021154
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	beq _0802115C
	b _08021162
	.align 2, 0
_08021150: .4byte 0x0000030F
_08021154:
	movs r0, #1
	bl sub_801A3DC
	b _08021312
_0802115C:
	movs r0, #0
	bl sub_800DAE4
_08021162:
	ldr r1, [sp]
	movs r0, #0xf0
	ands r1, r0
	cmp r1, #0x50
	beq _080211A0
	cmp r1, #0x50
	bgt _08021188
	cmp r1, #0x20
	bne _08021176
	b _08021278
_08021176:
	cmp r1, #0x20
	bgt _08021182
	cmp r1, #0x10
	bne _08021180
	b _0802129C
_08021180:
	b _080212EC
_08021182:
	cmp r1, #0x40
	beq _08021230
	b _080212EC
_08021188:
	cmp r1, #0x80
	beq _08021254
	cmp r1, #0x80
	bgt _08021196
	cmp r1, #0x60
	beq _0802120C
	b _080212EC
_08021196:
	cmp r1, #0x90
	beq _080211C4
	cmp r1, #0xa0
	beq _080211E8
	b _080212EC
_080211A0:
	ldr r4, _080211BC
	ldrb r0, [r4, #0xa]
	cmp r0, #1
	bne _080211B8
	ldr r0, _080211C0
	ldr r0, [r0]
	bl sub_80038AC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080211B8
	b _08021312
_080211B8:
	movs r0, #1
	b _080212B4
	.align 2, 0
_080211BC: .4byte gPlayerSprite
_080211C0: .4byte dword_2000FC8
_080211C4:
	ldr r4, _080211E0
	ldrb r0, [r4, #0xa]
	cmp r0, #3
	bne _080211DC
	ldr r0, _080211E4
	ldr r0, [r0]
	bl sub_80038AC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080211DC
	b _08021312
_080211DC:
	movs r0, #3
	b _080212B4
	.align 2, 0
_080211E0: .4byte gPlayerSprite
_080211E4: .4byte dword_2000FC8
_080211E8:
	ldr r4, _08021204
	ldrb r0, [r4, #0xa]
	cmp r0, #5
	bne _08021200
	ldr r0, _08021208
	ldr r0, [r0]
	bl sub_80038AC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08021200
	b _08021312
_08021200:
	movs r0, #5
	b _080212B4
	.align 2, 0
_08021204: .4byte gPlayerSprite
_08021208: .4byte dword_2000FC8
_0802120C:
	ldr r4, _08021228
	ldrb r0, [r4, #0xa]
	cmp r0, #7
	bne _08021222
	ldr r0, _0802122C
	ldr r0, [r0]
	bl sub_80038AC
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08021312
_08021222:
	movs r0, #7
	b _080212B4
	.align 2, 0
_08021228: .4byte gPlayerSprite
_0802122C: .4byte dword_2000FC8
_08021230:
	ldr r4, _0802124C
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _08021246
	ldr r0, _08021250
	ldr r0, [r0]
	bl sub_80038AC
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08021312
_08021246:
	movs r0, #0
	b _080212B4
	.align 2, 0
_0802124C: .4byte gPlayerSprite
_08021250: .4byte dword_2000FC8
_08021254:
	ldr r4, _08021270
	ldrb r0, [r4, #0xa]
	cmp r0, #4
	bne _0802126A
	ldr r0, _08021274
	ldr r0, [r0]
	bl sub_80038AC
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08021312
_0802126A:
	movs r0, #4
	b _080212B4
	.align 2, 0
_08021270: .4byte gPlayerSprite
_08021274: .4byte dword_2000FC8
_08021278:
	ldr r4, _08021294
	ldrb r0, [r4, #0xa]
	cmp r0, #6
	bne _0802128E
	ldr r0, _08021298
	ldr r0, [r0]
	bl sub_80038AC
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08021312
_0802128E:
	movs r0, #6
	b _080212B4
	.align 2, 0
_08021294: .4byte gPlayerSprite
_08021298: .4byte dword_2000FC8
_0802129C:
	ldr r4, _080212DC
	ldrb r0, [r4, #0xa]
	cmp r0, #2
	bne _080212B2
	ldr r0, _080212E0
	ldr r0, [r0]
	bl sub_80038AC
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08021312
_080212B2:
	movs r0, #2
_080212B4:
	strb r0, [r4, #0xa]
	ldr r1, _080212E4
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r0, _080212E0
	ldr r0, [r0]
	movs r1, #0x98
	lsls r1, r1, #9
	ldr r3, _080212E8
	ldrb r2, [r4, #0xa]
	lsls r2, r2, #2
	adds r2, r2, r3
	ldr r2, [r2]
	movs r3, #0
	bl sub_8003884
	b _08021312
	.align 2, 0
_080212DC: .4byte gPlayerSprite
_080212E0: .4byte dword_2000FC8
_080212E4: .4byte 0x00000119
_080212E8: .4byte dword_80CC290
_080212EC:
	ldr r4, _0802131C
	ldr r0, [r4]
	bl sub_80038AC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08021312
	ldr r0, [r4]
	movs r1, #0xc0
	lsls r1, r1, #6
	ldr r3, _08021320
	ldr r2, _08021324
	ldrb r2, [r2, #0xa]
	lsls r2, r2, #2
	adds r2, r2, r3
	ldr r2, [r2]
	movs r3, #0
	bl sub_8003884
_08021312:
	add sp, #8
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0802131C: .4byte dword_2000FC8
_08021320: .4byte dword_80CC290
_08021324: .4byte gPlayerSprite

	.thumb
sub_8021328: @ 0x08021328
	push {r4, r5, lr}
	sub sp, #8
	str r0, [sp]
	str r1, [sp, #4]
	add r1, sp, #4
	mov r0, sp
	bl sub_8016710
	ldr r0, [sp, #4]
	ldr r1, _08021348
	ands r0, r1
	cmp r0, #2
	bne _0802134C
	bl sub_80185FC
	b _080216A6
	.align 2, 0
_08021348: .4byte 0x0000030F
_0802134C:
	ldr r1, [sp]
	movs r0, #0xf0
	ands r1, r0
	cmp r1, #0x50
	beq _0802138E
	cmp r1, #0x50
	bgt _08021374
	cmp r1, #0x20
	bne _08021360
	b _08021550
_08021360:
	cmp r1, #0x20
	bgt _0802136C
	cmp r1, #0x10
	bne _0802136A
	b _08021598
_0802136A:
	b _080215EC
_0802136C:
	cmp r1, #0x40
	bne _08021372
	b _080214BC
_08021372:
	b _080215EC
_08021374:
	cmp r1, #0x80
	bne _0802137A
	b _08021508
_0802137A:
	cmp r1, #0x80
	bgt _08021384
	cmp r1, #0x60
	beq _08021470
	b _080215EC
_08021384:
	cmp r1, #0x90
	beq _080213D8
	cmp r1, #0xa0
	beq _08021424
	b _080215EC
_0802138E:
	ldr r2, _080213C0
	ldr r1, _080213C4
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0x4b
	strh r0, [r1]
	ldr r4, _080213C8
	ldrb r0, [r4, #0xa]
	cmp r0, #1
	bne _080213A4
	b _080215CA
_080213A4:
	movs r0, #1
	strb r0, [r4, #0xa]
	ldr r1, _080213CC
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r0, _080213D0
	ldr r0, [r0]
	ldr r1, _080213D4
	movs r2, #0xb4
	lsls r2, r2, #0xe
	b _080215C4
	.align 2, 0
_080213C0: .4byte gPreviousPlayerState
_080213C4: .4byte gPlayerState
_080213C8: .4byte gPlayerSprite
_080213CC: .4byte 0x00000191
_080213D0: .4byte dword_2000FC8
_080213D4: .4byte 0x00019999
_080213D8:
	ldr r2, _08021408
	ldr r1, _0802140C
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0x4b
	strh r0, [r1]
	ldr r4, _08021410
	ldrb r0, [r4, #0xa]
	cmp r0, #3
	bne _080213EE
	b _080215CA
_080213EE:
	movs r0, #3
	strb r0, [r4, #0xa]
	ldr r1, _08021414
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r0, _08021418
	ldr r0, [r0]
	ldr r1, _0802141C
	ldr r2, _08021420
	b _080215C4
	.align 2, 0
_08021408: .4byte gPreviousPlayerState
_0802140C: .4byte gPlayerState
_08021410: .4byte gPlayerSprite
_08021414: .4byte 0x00000191
_08021418: .4byte dword_2000FC8
_0802141C: .4byte 0x00019999
_08021420: .4byte 0x013B0000
_08021424:
	ldr r2, _08021458
	ldr r1, _0802145C
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0x4b
	strh r0, [r1]
	ldr r4, _08021460
	ldrb r0, [r4, #0xa]
	cmp r0, #5
	bne _0802143A
	b _080215CA
_0802143A:
	movs r0, #5
	strb r0, [r4, #0xa]
	ldr r1, _08021464
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r0, _08021468
	ldr r0, [r0]
	ldr r1, _0802146C
	movs r2, #0xe1
	lsls r2, r2, #0x10
	b _080215C4
	.align 2, 0
_08021458: .4byte gPreviousPlayerState
_0802145C: .4byte gPlayerState
_08021460: .4byte gPlayerSprite
_08021464: .4byte 0x00000191
_08021468: .4byte dword_2000FC8
_0802146C: .4byte 0x00019999
_08021470:
	ldr r2, _080214A4
	ldr r1, _080214A8
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0x4b
	strh r0, [r1]
	ldr r4, _080214AC
	ldrb r0, [r4, #0xa]
	cmp r0, #7
	bne _08021486
	b _080215CA
_08021486:
	movs r0, #7
	strb r0, [r4, #0xa]
	ldr r1, _080214B0
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r0, _080214B4
	ldr r0, [r0]
	ldr r1, _080214B8
	movs r2, #0x87
	lsls r2, r2, #0x10
	b _080215C4
	.align 2, 0
_080214A4: .4byte gPreviousPlayerState
_080214A8: .4byte gPlayerState
_080214AC: .4byte gPlayerSprite
_080214B0: .4byte 0x00000191
_080214B4: .4byte dword_2000FC8
_080214B8: .4byte 0x00019999
_080214BC:
	ldr r2, _080214F0
	ldr r1, _080214F4
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0x4b
	strh r0, [r1]
	ldr r4, _080214F8
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _080214D2
	b _080215CA
_080214D2:
	movs r0, #0
	strb r0, [r4, #0xa]
	ldr r1, _080214FC
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r0, _08021500
	ldr r0, [r0]
	ldr r1, _08021504
	movs r2, #0xb4
	lsls r2, r2, #0xf
	b _080215C4
	.align 2, 0
_080214F0: .4byte gPreviousPlayerState
_080214F4: .4byte gPlayerState
_080214F8: .4byte gPlayerSprite
_080214FC: .4byte 0x00000191
_08021500: .4byte dword_2000FC8
_08021504: .4byte 0x00019999
_08021508:
	ldr r2, _08021538
	ldr r1, _0802153C
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0x4b
	strh r0, [r1]
	ldr r4, _08021540
	ldrb r0, [r4, #0xa]
	cmp r0, #4
	beq _080215CA
	movs r0, #4
	strb r0, [r4, #0xa]
	ldr r1, _08021544
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r0, _08021548
	ldr r0, [r0]
	ldr r1, _0802154C
	movs r2, #0x87
	lsls r2, r2, #0x11
	b _080215C4
	.align 2, 0
_08021538: .4byte gPreviousPlayerState
_0802153C: .4byte gPlayerState
_08021540: .4byte gPlayerSprite
_08021544: .4byte 0x00000191
_08021548: .4byte dword_2000FC8
_0802154C: .4byte 0x00019999
_08021550:
	ldr r2, _08021580
	ldr r1, _08021584
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0x4b
	strh r0, [r1]
	ldr r4, _08021588
	ldrb r0, [r4, #0xa]
	cmp r0, #6
	beq _080215CA
	movs r0, #6
	strb r0, [r4, #0xa]
	ldr r1, _0802158C
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r0, _08021590
	ldr r0, [r0]
	ldr r1, _08021594
	movs r2, #0xb4
	lsls r2, r2, #0x10
	b _080215C4
	.align 2, 0
_08021580: .4byte gPreviousPlayerState
_08021584: .4byte gPlayerState
_08021588: .4byte gPlayerSprite
_0802158C: .4byte 0x00000191
_08021590: .4byte dword_2000FC8
_08021594: .4byte 0x00019999
_08021598:
	ldr r2, _080215D4
	ldr r1, _080215D8
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0x4b
	strh r0, [r1]
	ldr r4, _080215DC
	ldrb r0, [r4, #0xa]
	cmp r0, #2
	beq _080215CA
	movs r0, #2
	strb r0, [r4, #0xa]
	ldr r1, _080215E0
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r0, _080215E4
	ldr r0, [r0]
	ldr r1, _080215E8
	movs r2, #0
_080215C4:
	movs r3, #0
	bl sub_8003884
_080215CA:
	ldrb r1, [r4, #0xa]
	movs r0, #0
	bl sub_8016790
	b _080216A6
	.align 2, 0
_080215D4: .4byte gPreviousPlayerState
_080215D8: .4byte gPlayerState
_080215DC: .4byte gPlayerSprite
_080215E0: .4byte 0x00000191
_080215E4: .4byte dword_2000FC8
_080215E8: .4byte 0x00019999
_080215EC:
	ldr r2, _08021670
	ldr r1, _08021674
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0x4c
	strh r0, [r1]
	ldr r4, _08021678
	ldr r1, _0802167C
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r0, _08021680
	ldr r0, [r0]
	ldr r2, _08021684
	ldrb r1, [r4, #0xa]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r2, [r1]
	movs r1, #0
	movs r3, #0
	bl sub_8003884
	ldrb r1, [r4, #0xa]
	movs r0, #0
	bl sub_8016790
	ldr r4, _08021688
	ldr r0, [r4]
	bl audio_fx_still_active
	cmp r0, #0
	beq _0802163E
	ldr r0, _0802168C
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802163E
	ldr r0, [r4]
	bl audio_halt_fx
_0802163E:
	ldr r4, _08021688
	ldr r0, _0802168C
	ldrb r0, [r0]
	cmp r0, #0
	beq _080216A0
	ldr r2, _08021690
	movs r1, #0xc2
	lsls r1, r1, #3
	adds r0, r2, r1
	ldrh r0, [r0]
	ldr r3, _08021694
	ldr r5, _08021698
	adds r1, r2, r5
	ldrb r3, [r3]
	adds r1, r1, r3
	ldrb r1, [r1]
	ldr r3, _0802169C
	adds r2, r2, r3
	ldr r2, [r2]
	movs r5, #0x80
	lsls r5, r5, #9
	adds r2, r2, r5
	bl audio_new_fx
	b _080216A4
	.align 2, 0
_08021670: .4byte gPreviousPlayerState
_08021674: .4byte gPlayerState
_08021678: .4byte gPlayerSprite
_0802167C: .4byte 0x000001A1
_08021680: .4byte dword_2000FC8
_08021684: .4byte dword_80CC290
_08021688: .4byte 0x020021DC
_0802168C: .4byte byte_203EA89
_08021690: .4byte 0x080CE440
_08021694: .4byte byte_203EA8C
_08021698: .4byte 0x00000612
_0802169C: .4byte 0x00000614
_080216A0:
	movs r0, #1
	rsbs r0, r0, #0
_080216A4:
	str r0, [r4]
_080216A6:
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	.thumb
sub_80216B0: @ 0x080216B0
	push {r4, r5, lr}
	sub sp, #8
	str r0, [sp]
	str r1, [sp, #4]
	add r1, sp, #4
	mov r0, sp
	bl sub_8016710
	ldr r1, [sp, #4]
	ldr r0, _080216E0
	ands r1, r0
	cmp r1, #1
	beq _080216E4
	cmp r1, #2
	beq _0802171C
	ldr r1, [sp]
	movs r0, #0xf0
	ands r1, r0
	cmp r1, #0x50
	beq _0802175A
	cmp r1, #0x50
	bgt _0802173C
	b _08021722
	.align 2, 0
_080216E0: .4byte 0x0000030F
_080216E4:
	ldr r0, _08021710
	ldrb r0, [r0]
	cmp r0, #0
	bne _080216EE
	b _08021CEE
_080216EE:
	ldr r4, _08021714
	ldr r0, [r4]
	bl audio_fx_still_active
	cmp r0, #0
	beq _08021708
	ldr r0, _08021718
	ldrb r0, [r0]
	cmp r0, #0
	beq _08021708
	ldr r0, [r4]
	bl audio_halt_fx
_08021708:
	movs r0, #0
	bl sub_80186F4
	b _08021CEE
	.align 2, 0
_08021710: .4byte gInInteractionArea
_08021714: .4byte 0x020021DC
_08021718: .4byte byte_203EA89
_0802171C:
	bl sub_80185FC
	b _08021CEE
_08021722:
	cmp r1, #0x20
	bne _08021728
	b _08021B48
_08021728:
	cmp r1, #0x20
	bgt _08021734
	cmp r1, #0x10
	bne _08021732
	b _08021BF0
_08021732:
	b _08021C94
_08021734:
	cmp r1, #0x40
	bne _0802173A
	b _080219F8
_0802173A:
	b _08021C94
_0802173C:
	cmp r1, #0x80
	bne _08021742
	b _08021AA0
_08021742:
	cmp r1, #0x80
	bgt _0802174E
	cmp r1, #0x60
	bne _0802174C
	b _08021950
_0802174C:
	b _08021C94
_0802174E:
	cmp r1, #0x90
	beq _08021800
	cmp r1, #0xa0
	bne _08021758
	b _080218A8
_08021758:
	b _08021C94
_0802175A:
	ldr r2, _080217D0
	ldr r1, _080217D4
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0x4b
	strh r0, [r1]
	ldr r4, _080217D8
	movs r0, #1
	strb r0, [r4, #0xa]
	ldr r1, _080217DC
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r0, _080217E0
	ldr r0, [r0]
	ldr r1, _080217E4
	movs r2, #0xb4
	lsls r2, r2, #0xe
	movs r3, #0
	bl sub_8003884
	ldrb r1, [r4, #0xa]
	movs r0, #0
	bl sub_8016790
	ldr r4, _080217E8
	ldr r0, [r4]
	bl audio_fx_still_active
	cmp r0, #0
	beq _080217AA
	ldr r0, _080217EC
	ldrb r0, [r0]
	cmp r0, #0
	beq _080217AA
	ldr r0, [r4]
	bl audio_halt_fx
_080217AA:
	ldr r4, _080217E8
	ldr r0, _080217EC
	ldrb r0, [r0]
	cmp r0, #0
	bne _080217B6
	b _08021CE8
_080217B6:
	ldr r2, _080217F0
	movs r1, #0xc3
	lsls r1, r1, #3
	adds r0, r2, r1
	ldrh r0, [r0]
	ldr r3, _080217F4
	ldr r5, _080217F8
	adds r1, r2, r5
	ldrb r3, [r3]
	adds r1, r1, r3
	ldrb r1, [r1]
	ldr r3, _080217FC
	b _08021CC0
	.align 2, 0
_080217D0: .4byte gPreviousPlayerState
_080217D4: .4byte gPlayerState
_080217D8: .4byte gPlayerSprite
_080217DC: .4byte 0x00000191
_080217E0: .4byte dword_2000FC8
_080217E4: .4byte 0x00019999
_080217E8: .4byte 0x020021DC
_080217EC: .4byte byte_203EA89
_080217F0: .4byte 0x080CE440
_080217F4: .4byte byte_203EA8C
_080217F8: .4byte 0x0000061A
_080217FC: .4byte 0x0000061C
_08021800:
	ldr r2, _08021874
	ldr r1, _08021878
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0x4b
	strh r0, [r1]
	ldr r4, _0802187C
	movs r0, #3
	strb r0, [r4, #0xa]
	ldr r1, _08021880
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r0, _08021884
	ldr r0, [r0]
	ldr r1, _08021888
	ldr r2, _0802188C
	movs r3, #0
	bl sub_8003884
	ldrb r1, [r4, #0xa]
	movs r0, #0
	bl sub_8016790
	ldr r4, _08021890
	ldr r0, [r4]
	bl audio_fx_still_active
	cmp r0, #0
	beq _0802184E
	ldr r0, _08021894
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802184E
	ldr r0, [r4]
	bl audio_halt_fx
_0802184E:
	ldr r4, _08021890
	ldr r0, _08021894
	ldrb r0, [r0]
	cmp r0, #0
	bne _0802185A
	b _08021CE8
_0802185A:
	ldr r2, _08021898
	movs r1, #0xc3
	lsls r1, r1, #3
	adds r0, r2, r1
	ldrh r0, [r0]
	ldr r3, _0802189C
	ldr r5, _080218A0
	adds r1, r2, r5
	ldrb r3, [r3]
	adds r1, r1, r3
	ldrb r1, [r1]
	ldr r3, _080218A4
	b _08021CC0
	.align 2, 0
_08021874: .4byte gPreviousPlayerState
_08021878: .4byte gPlayerState
_0802187C: .4byte gPlayerSprite
_08021880: .4byte 0x00000191
_08021884: .4byte dword_2000FC8
_08021888: .4byte 0x00019999
_0802188C: .4byte 0x013B0000
_08021890: .4byte 0x020021DC
_08021894: .4byte byte_203EA89
_08021898: .4byte 0x080CE440
_0802189C: .4byte byte_203EA8C
_080218A0: .4byte 0x0000061A
_080218A4: .4byte 0x0000061C
_080218A8:
	ldr r2, _08021920
	ldr r1, _08021924
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0x4b
	strh r0, [r1]
	ldr r4, _08021928
	movs r0, #5
	strb r0, [r4, #0xa]
	ldr r1, _0802192C
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r0, _08021930
	ldr r0, [r0]
	ldr r1, _08021934
	movs r2, #0xe1
	lsls r2, r2, #0x10
	movs r3, #0
	bl sub_8003884
	ldrb r1, [r4, #0xa]
	movs r0, #0
	bl sub_8016790
	ldr r4, _08021938
	ldr r0, [r4]
	bl audio_fx_still_active
	cmp r0, #0
	beq _080218F8
	ldr r0, _0802193C
	ldrb r0, [r0]
	cmp r0, #0
	beq _080218F8
	ldr r0, [r4]
	bl audio_halt_fx
_080218F8:
	ldr r4, _08021938
	ldr r0, _0802193C
	ldrb r0, [r0]
	cmp r0, #0
	bne _08021904
	b _08021CE8
_08021904:
	ldr r2, _08021940
	movs r1, #0xc3
	lsls r1, r1, #3
	adds r0, r2, r1
	ldrh r0, [r0]
	ldr r3, _08021944
	ldr r5, _08021948
	adds r1, r2, r5
	ldrb r3, [r3]
	adds r1, r1, r3
	ldrb r1, [r1]
	ldr r3, _0802194C
	b _08021CC0
	.align 2, 0
_08021920: .4byte gPreviousPlayerState
_08021924: .4byte gPlayerState
_08021928: .4byte gPlayerSprite
_0802192C: .4byte 0x00000191
_08021930: .4byte dword_2000FC8
_08021934: .4byte 0x00019999
_08021938: .4byte 0x020021DC
_0802193C: .4byte byte_203EA89
_08021940: .4byte 0x080CE440
_08021944: .4byte byte_203EA8C
_08021948: .4byte 0x0000061A
_0802194C: .4byte 0x0000061C
_08021950:
	ldr r2, _080219C8
	ldr r1, _080219CC
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0x4b
	strh r0, [r1]
	ldr r4, _080219D0
	movs r0, #7
	strb r0, [r4, #0xa]
	ldr r1, _080219D4
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r0, _080219D8
	ldr r0, [r0]
	ldr r1, _080219DC
	movs r2, #0x87
	lsls r2, r2, #0x10
	movs r3, #0
	bl sub_8003884
	ldrb r1, [r4, #0xa]
	movs r0, #0
	bl sub_8016790
	ldr r4, _080219E0
	ldr r0, [r4]
	bl audio_fx_still_active
	cmp r0, #0
	beq _080219A0
	ldr r0, _080219E4
	ldrb r0, [r0]
	cmp r0, #0
	beq _080219A0
	ldr r0, [r4]
	bl audio_halt_fx
_080219A0:
	ldr r4, _080219E0
	ldr r0, _080219E4
	ldrb r0, [r0]
	cmp r0, #0
	bne _080219AC
	b _08021CE8
_080219AC:
	ldr r2, _080219E8
	movs r1, #0xc3
	lsls r1, r1, #3
	adds r0, r2, r1
	ldrh r0, [r0]
	ldr r3, _080219EC
	ldr r5, _080219F0
	adds r1, r2, r5
	ldrb r3, [r3]
	adds r1, r1, r3
	ldrb r1, [r1]
	ldr r3, _080219F4
	b _08021CC0
	.align 2, 0
_080219C8: .4byte gPreviousPlayerState
_080219CC: .4byte gPlayerState
_080219D0: .4byte gPlayerSprite
_080219D4: .4byte 0x00000191
_080219D8: .4byte dword_2000FC8
_080219DC: .4byte 0x00019999
_080219E0: .4byte 0x020021DC
_080219E4: .4byte byte_203EA89
_080219E8: .4byte 0x080CE440
_080219EC: .4byte byte_203EA8C
_080219F0: .4byte 0x0000061A
_080219F4: .4byte 0x0000061C
_080219F8:
	ldr r2, _08021A70
	ldr r1, _08021A74
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0x4b
	strh r0, [r1]
	ldr r4, _08021A78
	movs r0, #0
	strb r0, [r4, #0xa]
	ldr r1, _08021A7C
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r0, _08021A80
	ldr r0, [r0]
	ldr r1, _08021A84
	movs r2, #0xb4
	lsls r2, r2, #0xf
	movs r3, #0
	bl sub_8003884
	ldrb r1, [r4, #0xa]
	movs r0, #0
	bl sub_8016790
	ldr r4, _08021A88
	ldr r0, [r4]
	bl audio_fx_still_active
	cmp r0, #0
	beq _08021A48
	ldr r0, _08021A8C
	ldrb r0, [r0]
	cmp r0, #0
	beq _08021A48
	ldr r0, [r4]
	bl audio_halt_fx
_08021A48:
	ldr r4, _08021A88
	ldr r0, _08021A8C
	ldrb r0, [r0]
	cmp r0, #0
	bne _08021A54
	b _08021CE8
_08021A54:
	ldr r2, _08021A90
	movs r1, #0xc3
	lsls r1, r1, #3
	adds r0, r2, r1
	ldrh r0, [r0]
	ldr r3, _08021A94
	ldr r5, _08021A98
	adds r1, r2, r5
	ldrb r3, [r3]
	adds r1, r1, r3
	ldrb r1, [r1]
	ldr r3, _08021A9C
	b _08021CC0
	.align 2, 0
_08021A70: .4byte gPreviousPlayerState
_08021A74: .4byte gPlayerState
_08021A78: .4byte gPlayerSprite
_08021A7C: .4byte 0x00000191
_08021A80: .4byte dword_2000FC8
_08021A84: .4byte 0x00019999
_08021A88: .4byte 0x020021DC
_08021A8C: .4byte byte_203EA89
_08021A90: .4byte 0x080CE440
_08021A94: .4byte byte_203EA8C
_08021A98: .4byte 0x0000061A
_08021A9C: .4byte 0x0000061C
_08021AA0:
	ldr r2, _08021B18
	ldr r1, _08021B1C
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0x4b
	strh r0, [r1]
	ldr r4, _08021B20
	movs r0, #4
	strb r0, [r4, #0xa]
	ldr r1, _08021B24
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r0, _08021B28
	ldr r0, [r0]
	ldr r1, _08021B2C
	movs r2, #0x87
	lsls r2, r2, #0x11
	movs r3, #0
	bl sub_8003884
	ldrb r1, [r4, #0xa]
	movs r0, #0
	bl sub_8016790
	ldr r4, _08021B30
	ldr r0, [r4]
	bl audio_fx_still_active
	cmp r0, #0
	beq _08021AF0
	ldr r0, _08021B34
	ldrb r0, [r0]
	cmp r0, #0
	beq _08021AF0
	ldr r0, [r4]
	bl audio_halt_fx
_08021AF0:
	ldr r4, _08021B30
	ldr r0, _08021B34
	ldrb r0, [r0]
	cmp r0, #0
	bne _08021AFC
	b _08021CE8
_08021AFC:
	ldr r2, _08021B38
	movs r1, #0xc3
	lsls r1, r1, #3
	adds r0, r2, r1
	ldrh r0, [r0]
	ldr r3, _08021B3C
	ldr r5, _08021B40
	adds r1, r2, r5
	ldrb r3, [r3]
	adds r1, r1, r3
	ldrb r1, [r1]
	ldr r3, _08021B44
	b _08021CC0
	.align 2, 0
_08021B18: .4byte gPreviousPlayerState
_08021B1C: .4byte gPlayerState
_08021B20: .4byte gPlayerSprite
_08021B24: .4byte 0x00000191
_08021B28: .4byte dword_2000FC8
_08021B2C: .4byte 0x00019999
_08021B30: .4byte 0x020021DC
_08021B34: .4byte byte_203EA89
_08021B38: .4byte 0x080CE440
_08021B3C: .4byte byte_203EA8C
_08021B40: .4byte 0x0000061A
_08021B44: .4byte 0x0000061C
_08021B48:
	ldr r2, _08021BC0
	ldr r1, _08021BC4
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0x4b
	strh r0, [r1]
	ldr r4, _08021BC8
	movs r0, #6
	strb r0, [r4, #0xa]
	ldr r1, _08021BCC
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r0, _08021BD0
	ldr r0, [r0]
	ldr r1, _08021BD4
	movs r2, #0xb4
	lsls r2, r2, #0x10
	movs r3, #0
	bl sub_8003884
	ldrb r1, [r4, #0xa]
	movs r0, #0
	bl sub_8016790
	ldr r4, _08021BD8
	ldr r0, [r4]
	bl audio_fx_still_active
	cmp r0, #0
	beq _08021B98
	ldr r0, _08021BDC
	ldrb r0, [r0]
	cmp r0, #0
	beq _08021B98
	ldr r0, [r4]
	bl audio_halt_fx
_08021B98:
	ldr r4, _08021BD8
	ldr r0, _08021BDC
	ldrb r0, [r0]
	cmp r0, #0
	bne _08021BA4
	b _08021CE8
_08021BA4:
	ldr r2, _08021BE0
	movs r1, #0xc3
	lsls r1, r1, #3
	adds r0, r2, r1
	ldrh r0, [r0]
	ldr r3, _08021BE4
	ldr r5, _08021BE8
	adds r1, r2, r5
	ldrb r3, [r3]
	adds r1, r1, r3
	ldrb r1, [r1]
	ldr r3, _08021BEC
	b _08021CC0
	.align 2, 0
_08021BC0: .4byte gPreviousPlayerState
_08021BC4: .4byte gPlayerState
_08021BC8: .4byte gPlayerSprite
_08021BCC: .4byte 0x00000191
_08021BD0: .4byte dword_2000FC8
_08021BD4: .4byte 0x00019999
_08021BD8: .4byte 0x020021DC
_08021BDC: .4byte byte_203EA89
_08021BE0: .4byte 0x080CE440
_08021BE4: .4byte byte_203EA8C
_08021BE8: .4byte 0x0000061A
_08021BEC: .4byte 0x0000061C
_08021BF0:
	ldr r2, _08021C64
	ldr r1, _08021C68
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0x4b
	strh r0, [r1]
	ldr r4, _08021C6C
	movs r0, #2
	strb r0, [r4, #0xa]
	ldr r1, _08021C70
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r0, _08021C74
	ldr r0, [r0]
	ldr r1, _08021C78
	movs r2, #0
	movs r3, #0
	bl sub_8003884
	ldrb r1, [r4, #0xa]
	movs r0, #0
	bl sub_8016790
	ldr r4, _08021C7C
	ldr r0, [r4]
	bl audio_fx_still_active
	cmp r0, #0
	beq _08021C3E
	ldr r0, _08021C80
	ldrb r0, [r0]
	cmp r0, #0
	beq _08021C3E
	ldr r0, [r4]
	bl audio_halt_fx
_08021C3E:
	ldr r4, _08021C7C
	ldr r0, _08021C80
	ldrb r0, [r0]
	cmp r0, #0
	beq _08021CE8
	ldr r2, _08021C84
	movs r1, #0xc3
	lsls r1, r1, #3
	adds r0, r2, r1
	ldrh r0, [r0]
	ldr r3, _08021C88
	ldr r5, _08021C8C
	adds r1, r2, r5
	ldrb r3, [r3]
	adds r1, r1, r3
	ldrb r1, [r1]
	ldr r3, _08021C90
	b _08021CC0
	.align 2, 0
_08021C64: .4byte gPreviousPlayerState
_08021C68: .4byte gPlayerState
_08021C6C: .4byte gPlayerSprite
_08021C70: .4byte 0x00000191
_08021C74: .4byte dword_2000FC8
_08021C78: .4byte 0x00019999
_08021C7C: .4byte 0x020021DC
_08021C80: .4byte byte_203EA89
_08021C84: .4byte 0x080CE440
_08021C88: .4byte byte_203EA8C
_08021C8C: .4byte 0x0000061A
_08021C90: .4byte 0x0000061C
_08021C94:
	ldr r4, _08021CD0
	ldr r0, [r4]
	bl audio_fx_still_active
	cmp r0, #0
	bne _08021CEE
	ldr r0, _08021CD4
	ldrb r0, [r0]
	cmp r0, #0
	beq _08021CE8
	ldr r2, _08021CD8
	movs r1, #0xc2
	lsls r1, r1, #3
	adds r0, r2, r1
	ldrh r0, [r0]
	ldr r3, _08021CDC
	ldr r5, _08021CE0
	adds r1, r2, r5
	ldrb r3, [r3]
	adds r1, r1, r3
	ldrb r1, [r1]
	ldr r3, _08021CE4
_08021CC0:
	adds r2, r2, r3
	ldr r2, [r2]
	movs r5, #0x80
	lsls r5, r5, #9
	adds r2, r2, r5
	bl audio_new_fx
	b _08021CEC
	.align 2, 0
_08021CD0: .4byte 0x020021DC
_08021CD4: .4byte byte_203EA89
_08021CD8: .4byte 0x080CE440
_08021CDC: .4byte byte_203EA8C
_08021CE0: .4byte 0x00000612
_08021CE4: .4byte 0x00000614
_08021CE8:
	movs r0, #1
	rsbs r0, r0, #0
_08021CEC:
	str r0, [r4]
_08021CEE:
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	.thumb
sub_8021CF8: @ 0x08021CF8
	push {lr}
	ldr r0, _08021D1C
	ldrb r0, [r0]
	cmp r0, #0
	beq _08021D28
	ldr r0, _08021D20
	ldr r0, [r0]
	bl audio_fx_still_active
	cmp r0, #0
	bne _08021D4A
	ldr r0, _08021D24
	ldrb r0, [r0]
	cmp r0, #0
	bne _08021D4A
	bl sub_80629E8
	b _08021D4A
	.align 2, 0
_08021D1C: .4byte byte_20020B3
_08021D20: .4byte 0x020021D8
_08021D24: .4byte byte_203F99C
_08021D28:
	ldr r0, _08021D50
	bl sub_8003770
	cmp r0, #0
	beq _08021D4A
	ldr r0, _08021D54
	ldr r0, [r0]
	bl audio_fx_still_active
	cmp r0, #0
	bne _08021D4A
	ldr r0, _08021D58
	ldrb r0, [r0]
	cmp r0, #0
	bne _08021D4A
	bl sub_80629E8
_08021D4A:
	pop {r0}
	bx r0
	.align 2, 0
_08021D50: .4byte gPlayerSprite
_08021D54: .4byte 0x020021D8
_08021D58: .4byte byte_203F99C

	.thumb
sub_8021D5C: @ 0x08021D5C
	push {lr}
	sub sp, #8
	str r0, [sp]
	str r1, [sp, #4]
	add r1, sp, #4
	mov r0, sp
	bl sub_8016710
	add sp, #8
	pop {r0}
	bx r0
	.align 2, 0

	.thumb
sub_8021D74: @ 0x08021D74
	push {r4, r5, lr}
	sub sp, #8
	str r0, [sp]
	str r1, [sp, #4]
	add r1, sp, #4
	mov r0, sp
	bl sub_8016710
	ldr r4, _08021E14
	adds r0, r4, #0
	bl sub_8003770
	cmp r0, #0
	beq _08021E4A
	ldr r2, _08021E18
	ldr r1, _08021E1C
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0x4c
	strh r0, [r1]
	ldr r1, _08021E20
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r0, _08021E24
	ldr r0, [r0]
	ldr r2, _08021E28
	ldrb r1, [r4, #0xa]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r2, [r1]
	movs r1, #0
	movs r3, #0
	bl sub_8003884
	ldrb r1, [r4, #0xa]
	movs r0, #0
	bl sub_8016790
	ldr r4, _08021E2C
	ldr r0, [r4]
	bl audio_fx_still_active
	cmp r0, #0
	beq _08021DE0
	ldr r0, _08021E30
	ldrb r0, [r0]
	cmp r0, #0
	beq _08021DE0
	ldr r0, [r4]
	bl audio_halt_fx
_08021DE0:
	ldr r4, _08021E2C
	ldr r0, _08021E30
	ldrb r0, [r0]
	cmp r0, #0
	beq _08021E44
	ldr r2, _08021E34
	movs r1, #0xc2
	lsls r1, r1, #3
	adds r0, r2, r1
	ldrh r0, [r0]
	ldr r3, _08021E38
	ldr r5, _08021E3C
	adds r1, r2, r5
	ldrb r3, [r3]
	adds r1, r1, r3
	ldrb r1, [r1]
	ldr r3, _08021E40
	adds r2, r2, r3
	ldr r2, [r2]
	movs r5, #0x80
	lsls r5, r5, #9
	adds r2, r2, r5
	bl audio_new_fx
	b _08021E48
	.align 2, 0
_08021E14: .4byte gPlayerSprite
_08021E18: .4byte gPreviousPlayerState
_08021E1C: .4byte gPlayerState
_08021E20: .4byte 0x000001A1
_08021E24: .4byte dword_2000FC8
_08021E28: .4byte dword_80CC290
_08021E2C: .4byte 0x020021DC
_08021E30: .4byte byte_203EA89
_08021E34: .4byte 0x080CE440
_08021E38: .4byte byte_203EA8C
_08021E3C: .4byte 0x00000612
_08021E40: .4byte 0x00000614
_08021E44:
	movs r0, #1
	rsbs r0, r0, #0
_08021E48:
	str r0, [r4]
_08021E4A:
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	.thumb
sub_8021E54: @ 0x08021E54
	push {r4, lr}
	sub sp, #8
	str r0, [sp]
	str r1, [sp, #4]
	add r1, sp, #4
	mov r0, sp
	bl sub_8016710
	ldr r1, [sp, #4]
	ldr r0, _08021E84
	ands r1, r0
	cmp r1, #1
	beq _08021E88
	cmp r1, #2
	beq _08021EA2
	ldr r1, [sp]
	movs r0, #0xf0
	ands r1, r0
	cmp r1, #0x50
	beq _08021EDC
	cmp r1, #0x50
	bgt _08021EC2
	b _08021EA8
	.align 2, 0
_08021E84: .4byte 0x0000030F
_08021E88:
	ldr r0, _08021E98
	ldrb r0, [r0]
	cmp r0, #0
	beq _08021E9C
	movs r0, #0
	bl sub_80186F4
	b _080220F8
	.align 2, 0
_08021E98: .4byte gInInteractionArea
_08021E9C:
	bl sub_8017824
	b _080220F8
_08021EA2:
	bl sub_8018678
	b _080220F8
_08021EA8:
	cmp r1, #0x20
	bne _08021EAE
	b _08022074
_08021EAE:
	cmp r1, #0x20
	bgt _08021EBA
	cmp r1, #0x10
	bne _08021EB8
	b _080220C4
_08021EB8:
	b _080220F8
_08021EBA:
	cmp r1, #0x40
	bne _08021EC0
	b _08021FEC
_08021EC0:
	b _080220F8
_08021EC2:
	cmp r1, #0x80
	bne _08021EC8
	b _08022030
_08021EC8:
	cmp r1, #0x80
	bgt _08021ED2
	cmp r1, #0x60
	beq _08021FA8
	b _080220F8
_08021ED2:
	cmp r1, #0x90
	beq _08021F20
	cmp r1, #0xa0
	beq _08021F64
	b _080220F8
_08021EDC:
	ldr r2, _08021F08
	ldr r1, _08021F0C
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0x52
	strh r0, [r1]
	ldr r4, _08021F10
	movs r0, #1
	strb r0, [r4, #0xa]
	ldr r1, _08021F14
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r0, _08021F18
	ldr r0, [r0]
	ldr r1, _08021F1C
	movs r2, #0xb4
	lsls r2, r2, #0xe
	b _0802209C
	.align 2, 0
_08021F08: .4byte gPreviousPlayerState
_08021F0C: .4byte gPlayerState
_08021F10: .4byte gPlayerSprite
_08021F14: .4byte 0x000001A9
_08021F18: .4byte dword_2000FC8
_08021F1C: .4byte 0x00019999
_08021F20:
	ldr r2, _08021F48
	ldr r1, _08021F4C
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0x52
	strh r0, [r1]
	ldr r4, _08021F50
	movs r0, #3
	strb r0, [r4, #0xa]
	ldr r1, _08021F54
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r0, _08021F58
	ldr r0, [r0]
	ldr r1, _08021F5C
	ldr r2, _08021F60
	b _0802209C
	.align 2, 0
_08021F48: .4byte gPreviousPlayerState
_08021F4C: .4byte gPlayerState
_08021F50: .4byte gPlayerSprite
_08021F54: .4byte 0x000001A9
_08021F58: .4byte dword_2000FC8
_08021F5C: .4byte 0x00019999
_08021F60: .4byte 0x013B0000
_08021F64:
	ldr r2, _08021F90
	ldr r1, _08021F94
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0x52
	strh r0, [r1]
	ldr r4, _08021F98
	movs r0, #5
	strb r0, [r4, #0xa]
	ldr r1, _08021F9C
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r0, _08021FA0
	ldr r0, [r0]
	ldr r1, _08021FA4
	movs r2, #0xe1
	lsls r2, r2, #0x10
	b _0802209C
	.align 2, 0
_08021F90: .4byte gPreviousPlayerState
_08021F94: .4byte gPlayerState
_08021F98: .4byte gPlayerSprite
_08021F9C: .4byte 0x000001A9
_08021FA0: .4byte dword_2000FC8
_08021FA4: .4byte 0x00019999
_08021FA8:
	ldr r2, _08021FD4
	ldr r1, _08021FD8
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0x52
	strh r0, [r1]
	ldr r4, _08021FDC
	movs r0, #7
	strb r0, [r4, #0xa]
	ldr r1, _08021FE0
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r0, _08021FE4
	ldr r0, [r0]
	ldr r1, _08021FE8
	movs r2, #0x87
	lsls r2, r2, #0x10
	b _0802209C
	.align 2, 0
_08021FD4: .4byte gPreviousPlayerState
_08021FD8: .4byte gPlayerState
_08021FDC: .4byte gPlayerSprite
_08021FE0: .4byte 0x000001A9
_08021FE4: .4byte dword_2000FC8
_08021FE8: .4byte 0x00019999
_08021FEC:
	ldr r2, _08022018
	ldr r1, _0802201C
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0x52
	strh r0, [r1]
	ldr r4, _08022020
	movs r0, #0
	strb r0, [r4, #0xa]
	ldr r1, _08022024
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r0, _08022028
	ldr r0, [r0]
	ldr r1, _0802202C
	movs r2, #0xb4
	lsls r2, r2, #0xf
	b _0802209C
	.align 2, 0
_08022018: .4byte gPreviousPlayerState
_0802201C: .4byte gPlayerState
_08022020: .4byte gPlayerSprite
_08022024: .4byte 0x000001A9
_08022028: .4byte dword_2000FC8
_0802202C: .4byte 0x00019999
_08022030:
	ldr r2, _0802205C
	ldr r1, _08022060
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0x52
	strh r0, [r1]
	ldr r4, _08022064
	movs r0, #4
	strb r0, [r4, #0xa]
	ldr r1, _08022068
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r0, _0802206C
	ldr r0, [r0]
	ldr r1, _08022070
	movs r2, #0x87
	lsls r2, r2, #0x11
	b _0802209C
	.align 2, 0
_0802205C: .4byte gPreviousPlayerState
_08022060: .4byte gPlayerState
_08022064: .4byte gPlayerSprite
_08022068: .4byte 0x000001A9
_0802206C: .4byte dword_2000FC8
_08022070: .4byte 0x00019999
_08022074:
	ldr r2, _080220AC
	ldr r1, _080220B0
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0x52
	strh r0, [r1]
	ldr r4, _080220B4
	movs r0, #6
	strb r0, [r4, #0xa]
	ldr r1, _080220B8
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r0, _080220BC
	ldr r0, [r0]
	ldr r1, _080220C0
	movs r2, #0xb4
	lsls r2, r2, #0x10
_0802209C:
	movs r3, #0
	bl sub_8003884
	ldrb r1, [r4, #0xa]
	movs r0, #0
	bl sub_8016790
	b _080220F8
	.align 2, 0
_080220AC: .4byte gPreviousPlayerState
_080220B0: .4byte gPlayerState
_080220B4: .4byte gPlayerSprite
_080220B8: .4byte 0x000001A9
_080220BC: .4byte dword_2000FC8
_080220C0: .4byte 0x00019999
_080220C4:
	ldr r2, _08022100
	ldr r1, _08022104
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0x52
	strh r0, [r1]
	ldr r4, _08022108
	movs r0, #2
	strb r0, [r4, #0xa]
	ldr r1, _0802210C
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r0, _08022110
	ldr r0, [r0]
	ldr r1, _08022114
	movs r2, #0
	movs r3, #0
	bl sub_8003884
	ldrb r1, [r4, #0xa]
	movs r0, #0
	bl sub_8016790
_080220F8:
	add sp, #8
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08022100: .4byte gPreviousPlayerState
_08022104: .4byte gPlayerState
_08022108: .4byte gPlayerSprite
_0802210C: .4byte 0x000001A9
_08022110: .4byte dword_2000FC8
_08022114: .4byte 0x00019999

	.thumb
sub_8022118: @ 0x08022118
	push {r4, lr}
	sub sp, #8
	str r0, [sp]
	str r1, [sp, #4]
	add r1, sp, #4
	mov r0, sp
	bl sub_8016710
	ldr r1, [sp, #4]
	ldr r0, _0802213C
	ands r1, r0
	cmp r1, #2
	beq _08022166
	cmp r1, #2
	bgt _08022140
	cmp r1, #1
	beq _0802214A
	b _08022172
	.align 2, 0
_0802213C: .4byte 0x0000030F
_08022140:
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	beq _0802216C
	b _08022172
_0802214A:
	ldr r0, _0802215C
	ldrb r0, [r0]
	cmp r0, #0
	beq _08022160
	movs r0, #0
	bl sub_80186F4
	b _080223D0
	.align 2, 0
_0802215C: .4byte gInInteractionArea
_08022160:
	bl sub_8017824
	b _080223D0
_08022166:
	bl sub_8018678
	b _080223D0
_0802216C:
	bl sub_8017958
	b _080223D0
_08022172:
	ldr r1, [sp]
	movs r0, #0xf0
	ands r1, r0
	cmp r1, #0x50
	beq _080221B4
	cmp r1, #0x50
	bgt _0802219A
	cmp r1, #0x20
	bne _08022186
	b _0802234C
_08022186:
	cmp r1, #0x20
	bgt _08022192
	cmp r1, #0x10
	bne _08022190
	b _0802239C
_08022190:
	b _080223D0
_08022192:
	cmp r1, #0x40
	bne _08022198
	b _080222C4
_08022198:
	b _080223D0
_0802219A:
	cmp r1, #0x80
	bne _080221A0
	b _08022308
_080221A0:
	cmp r1, #0x80
	bgt _080221AA
	cmp r1, #0x60
	beq _08022280
	b _080223D0
_080221AA:
	cmp r1, #0x90
	beq _080221F8
	cmp r1, #0xa0
	beq _0802223C
	b _080223D0
_080221B4:
	ldr r2, _080221E0
	ldr r1, _080221E4
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0x53
	strh r0, [r1]
	ldr r4, _080221E8
	movs r0, #1
	strb r0, [r4, #0xa]
	ldr r1, _080221EC
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r0, _080221F0
	ldr r0, [r0]
	ldr r1, _080221F4
	movs r2, #0xb4
	lsls r2, r2, #0xe
	b _08022374
	.align 2, 0
_080221E0: .4byte gPreviousPlayerState
_080221E4: .4byte gPlayerState
_080221E8: .4byte gPlayerSprite
_080221EC: .4byte 0x000001C1
_080221F0: .4byte dword_2000FC8
_080221F4: .4byte 0x0001CCCD
_080221F8:
	ldr r2, _08022220
	ldr r1, _08022224
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0x53
	strh r0, [r1]
	ldr r4, _08022228
	movs r0, #3
	strb r0, [r4, #0xa]
	ldr r1, _0802222C
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r0, _08022230
	ldr r0, [r0]
	ldr r1, _08022234
	ldr r2, _08022238
	b _08022374
	.align 2, 0
_08022220: .4byte gPreviousPlayerState
_08022224: .4byte gPlayerState
_08022228: .4byte gPlayerSprite
_0802222C: .4byte 0x000001C1
_08022230: .4byte dword_2000FC8
_08022234: .4byte 0x0001CCCD
_08022238: .4byte 0x013B0000
_0802223C:
	ldr r2, _08022268
	ldr r1, _0802226C
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0x53
	strh r0, [r1]
	ldr r4, _08022270
	movs r0, #5
	strb r0, [r4, #0xa]
	ldr r1, _08022274
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r0, _08022278
	ldr r0, [r0]
	ldr r1, _0802227C
	movs r2, #0xe1
	lsls r2, r2, #0x10
	b _08022374
	.align 2, 0
_08022268: .4byte gPreviousPlayerState
_0802226C: .4byte gPlayerState
_08022270: .4byte gPlayerSprite
_08022274: .4byte 0x000001C1
_08022278: .4byte dword_2000FC8
_0802227C: .4byte 0x0001CCCD
_08022280:
	ldr r2, _080222AC
	ldr r1, _080222B0
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0x53
	strh r0, [r1]
	ldr r4, _080222B4
	movs r0, #7
	strb r0, [r4, #0xa]
	ldr r1, _080222B8
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r0, _080222BC
	ldr r0, [r0]
	ldr r1, _080222C0
	movs r2, #0x87
	lsls r2, r2, #0x10
	b _08022374
	.align 2, 0
_080222AC: .4byte gPreviousPlayerState
_080222B0: .4byte gPlayerState
_080222B4: .4byte gPlayerSprite
_080222B8: .4byte 0x000001C1
_080222BC: .4byte dword_2000FC8
_080222C0: .4byte 0x0001CCCD
_080222C4:
	ldr r2, _080222F0
	ldr r1, _080222F4
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0x53
	strh r0, [r1]
	ldr r4, _080222F8
	movs r0, #0
	strb r0, [r4, #0xa]
	ldr r1, _080222FC
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r0, _08022300
	ldr r0, [r0]
	ldr r1, _08022304
	movs r2, #0xb4
	lsls r2, r2, #0xf
	b _08022374
	.align 2, 0
_080222F0: .4byte gPreviousPlayerState
_080222F4: .4byte gPlayerState
_080222F8: .4byte gPlayerSprite
_080222FC: .4byte 0x000001C1
_08022300: .4byte dword_2000FC8
_08022304: .4byte 0x0001CCCD
_08022308:
	ldr r2, _08022334
	ldr r1, _08022338
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0x53
	strh r0, [r1]
	ldr r4, _0802233C
	movs r0, #4
	strb r0, [r4, #0xa]
	ldr r1, _08022340
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r0, _08022344
	ldr r0, [r0]
	ldr r1, _08022348
	movs r2, #0x87
	lsls r2, r2, #0x11
	b _08022374
	.align 2, 0
_08022334: .4byte gPreviousPlayerState
_08022338: .4byte gPlayerState
_0802233C: .4byte gPlayerSprite
_08022340: .4byte 0x000001C1
_08022344: .4byte dword_2000FC8
_08022348: .4byte 0x0001CCCD
_0802234C:
	ldr r2, _08022384
	ldr r1, _08022388
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0x53
	strh r0, [r1]
	ldr r4, _0802238C
	movs r0, #6
	strb r0, [r4, #0xa]
	ldr r1, _08022390
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r0, _08022394
	ldr r0, [r0]
	ldr r1, _08022398
	movs r2, #0xb4
	lsls r2, r2, #0x10
_08022374:
	movs r3, #0
	bl sub_8003884
	ldrb r1, [r4, #0xa]
	movs r0, #0
	bl sub_8016790
	b _080223D0
	.align 2, 0
_08022384: .4byte gPreviousPlayerState
_08022388: .4byte gPlayerState
_0802238C: .4byte gPlayerSprite
_08022390: .4byte 0x000001C1
_08022394: .4byte dword_2000FC8
_08022398: .4byte 0x0001CCCD
_0802239C:
	ldr r2, _080223D8
	ldr r1, _080223DC
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0x53
	strh r0, [r1]
	ldr r4, _080223E0
	movs r0, #2
	strb r0, [r4, #0xa]
	ldr r1, _080223E4
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r0, _080223E8
	ldr r0, [r0]
	ldr r1, _080223EC
	movs r2, #0
	movs r3, #0
	bl sub_8003884
	ldrb r1, [r4, #0xa]
	movs r0, #0
	bl sub_8016790
_080223D0:
	add sp, #8
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080223D8: .4byte gPreviousPlayerState
_080223DC: .4byte gPlayerState
_080223E0: .4byte gPlayerSprite
_080223E4: .4byte 0x000001C1
_080223E8: .4byte dword_2000FC8
_080223EC: .4byte 0x0001CCCD

	.thumb
sub_80223F0: @ 0x080223F0
	push {r4, lr}
	sub sp, #8
	str r0, [sp]
	str r1, [sp, #4]
	add r1, sp, #4
	mov r0, sp
	bl sub_8016710
	ldr r1, [sp, #4]
	ldr r0, _08022420
	ands r1, r0
	cmp r1, #1
	beq _08022424
	cmp r1, #2
	beq _0802242A
	ldr r1, [sp]
	movs r0, #0xf0
	ands r1, r0
	cmp r1, #0x50
	beq _08022464
	cmp r1, #0x50
	bgt _0802244A
	b _08022430
	.align 2, 0
_08022420: .4byte 0x0000030F
_08022424:
	bl sub_8017824
	b _080226FC
_0802242A:
	bl sub_8018678
	b _080226FC
_08022430:
	cmp r1, #0x20
	bne _08022436
	b _08022628
_08022436:
	cmp r1, #0x20
	bgt _08022442
	cmp r1, #0x10
	bne _08022440
	b _08022670
_08022440:
	b _080226C4
_08022442:
	cmp r1, #0x40
	bne _08022448
	b _08022594
_08022448:
	b _080226C4
_0802244A:
	cmp r1, #0x80
	bne _08022450
	b _080225E0
_08022450:
	cmp r1, #0x80
	bgt _0802245A
	cmp r1, #0x60
	beq _08022548
	b _080226C4
_0802245A:
	cmp r1, #0x90
	beq _080224B0
	cmp r1, #0xa0
	beq _080224FC
	b _080226C4
_08022464:
	ldr r2, _08022498
	ldr r1, _0802249C
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0x52
	strh r0, [r1]
	ldr r4, _080224A0
	ldrb r0, [r4, #0xa]
	cmp r0, #1
	bne _0802247A
	b _080226A2
_0802247A:
	movs r0, #1
	strb r0, [r4, #0xa]
	ldr r1, _080224A4
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r0, _080224A8
	ldr r0, [r0]
	ldr r1, _080224AC
	movs r2, #0xb4
	lsls r2, r2, #0xe
	b _0802269C
	.align 2, 0
_08022498: .4byte gPreviousPlayerState
_0802249C: .4byte gPlayerState
_080224A0: .4byte gPlayerSprite
_080224A4: .4byte 0x000001A9
_080224A8: .4byte dword_2000FC8
_080224AC: .4byte 0x00019999
_080224B0:
	ldr r2, _080224E0
	ldr r1, _080224E4
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0x52
	strh r0, [r1]
	ldr r4, _080224E8
	ldrb r0, [r4, #0xa]
	cmp r0, #3
	bne _080224C6
	b _080226A2
_080224C6:
	movs r0, #3
	strb r0, [r4, #0xa]
	ldr r1, _080224EC
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r0, _080224F0
	ldr r0, [r0]
	ldr r1, _080224F4
	ldr r2, _080224F8
	b _0802269C
	.align 2, 0
_080224E0: .4byte gPreviousPlayerState
_080224E4: .4byte gPlayerState
_080224E8: .4byte gPlayerSprite
_080224EC: .4byte 0x000001A9
_080224F0: .4byte dword_2000FC8
_080224F4: .4byte 0x00019999
_080224F8: .4byte 0x013B0000
_080224FC:
	ldr r2, _08022530
	ldr r1, _08022534
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0x52
	strh r0, [r1]
	ldr r4, _08022538
	ldrb r0, [r4, #0xa]
	cmp r0, #5
	bne _08022512
	b _080226A2
_08022512:
	movs r0, #5
	strb r0, [r4, #0xa]
	ldr r1, _0802253C
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r0, _08022540
	ldr r0, [r0]
	ldr r1, _08022544
	movs r2, #0xe1
	lsls r2, r2, #0x10
	b _0802269C
	.align 2, 0
_08022530: .4byte gPreviousPlayerState
_08022534: .4byte gPlayerState
_08022538: .4byte gPlayerSprite
_0802253C: .4byte 0x000001A9
_08022540: .4byte dword_2000FC8
_08022544: .4byte 0x00019999
_08022548:
	ldr r2, _0802257C
	ldr r1, _08022580
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0x52
	strh r0, [r1]
	ldr r4, _08022584
	ldrb r0, [r4, #0xa]
	cmp r0, #7
	bne _0802255E
	b _080226A2
_0802255E:
	movs r0, #7
	strb r0, [r4, #0xa]
	ldr r1, _08022588
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r0, _0802258C
	ldr r0, [r0]
	ldr r1, _08022590
	movs r2, #0x87
	lsls r2, r2, #0x10
	b _0802269C
	.align 2, 0
_0802257C: .4byte gPreviousPlayerState
_08022580: .4byte gPlayerState
_08022584: .4byte gPlayerSprite
_08022588: .4byte 0x000001A9
_0802258C: .4byte dword_2000FC8
_08022590: .4byte 0x00019999
_08022594:
	ldr r2, _080225C8
	ldr r1, _080225CC
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0x52
	strh r0, [r1]
	ldr r4, _080225D0
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _080225AA
	b _080226A2
_080225AA:
	movs r0, #0
	strb r0, [r4, #0xa]
	ldr r1, _080225D4
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r0, _080225D8
	ldr r0, [r0]
	ldr r1, _080225DC
	movs r2, #0xb4
	lsls r2, r2, #0xf
	b _0802269C
	.align 2, 0
_080225C8: .4byte gPreviousPlayerState
_080225CC: .4byte gPlayerState
_080225D0: .4byte gPlayerSprite
_080225D4: .4byte 0x000001A9
_080225D8: .4byte dword_2000FC8
_080225DC: .4byte 0x00019999
_080225E0:
	ldr r2, _08022610
	ldr r1, _08022614
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0x52
	strh r0, [r1]
	ldr r4, _08022618
	ldrb r0, [r4, #0xa]
	cmp r0, #4
	beq _080226A2
	movs r0, #4
	strb r0, [r4, #0xa]
	ldr r1, _0802261C
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r0, _08022620
	ldr r0, [r0]
	ldr r1, _08022624
	movs r2, #0x87
	lsls r2, r2, #0x11
	b _0802269C
	.align 2, 0
_08022610: .4byte gPreviousPlayerState
_08022614: .4byte gPlayerState
_08022618: .4byte gPlayerSprite
_0802261C: .4byte 0x000001A9
_08022620: .4byte dword_2000FC8
_08022624: .4byte 0x00019999
_08022628:
	ldr r2, _08022658
	ldr r1, _0802265C
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0x52
	strh r0, [r1]
	ldr r4, _08022660
	ldrb r0, [r4, #0xa]
	cmp r0, #6
	beq _080226A2
	movs r0, #6
	strb r0, [r4, #0xa]
	ldr r1, _08022664
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r0, _08022668
	ldr r0, [r0]
	ldr r1, _0802266C
	movs r2, #0xb4
	lsls r2, r2, #0x10
	b _0802269C
	.align 2, 0
_08022658: .4byte gPreviousPlayerState
_0802265C: .4byte gPlayerState
_08022660: .4byte gPlayerSprite
_08022664: .4byte 0x000001A9
_08022668: .4byte dword_2000FC8
_0802266C: .4byte 0x00019999
_08022670:
	ldr r2, _080226AC
	ldr r1, _080226B0
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0x52
	strh r0, [r1]
	ldr r4, _080226B4
	ldrb r0, [r4, #0xa]
	cmp r0, #2
	beq _080226A2
	movs r0, #2
	strb r0, [r4, #0xa]
	ldr r1, _080226B8
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r0, _080226BC
	ldr r0, [r0]
	ldr r1, _080226C0
	movs r2, #0
_0802269C:
	movs r3, #0
	bl sub_8003884
_080226A2:
	ldrb r1, [r4, #0xa]
	movs r0, #0
	bl sub_8016790
	b _080226FC
	.align 2, 0
_080226AC: .4byte gPreviousPlayerState
_080226B0: .4byte gPlayerState
_080226B4: .4byte gPlayerSprite
_080226B8: .4byte 0x000001A9
_080226BC: .4byte dword_2000FC8
_080226C0: .4byte 0x00019999
_080226C4:
	ldr r2, _08022704
	ldr r1, _08022708
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0x50
	strh r0, [r1]
	ldr r4, _0802270C
	ldr r1, _08022710
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r0, _08022714
	ldr r0, [r0]
	ldr r2, _08022718
	ldrb r1, [r4, #0xa]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r2, [r1]
	movs r1, #0
	movs r3, #0
	bl sub_8003884
	ldrb r1, [r4, #0xa]
	movs r0, #0
	bl sub_8016790
_080226FC:
	add sp, #8
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08022704: .4byte gPreviousPlayerState
_08022708: .4byte gPlayerState
_0802270C: .4byte gPlayerSprite
_08022710: .4byte 0x000001D1
_08022714: .4byte dword_2000FC8
_08022718: .4byte dword_80CC290

	.thumb
sub_802271C: @ 0x0802271C
	push {r4, lr}
	sub sp, #8
	str r0, [sp]
	str r1, [sp, #4]
	add r1, sp, #4
	mov r0, sp
	bl sub_8016710
	ldr r1, [sp, #4]
	ldr r0, _08022740
	ands r1, r0
	cmp r1, #2
	beq _08022754
	cmp r1, #2
	bgt _08022744
	cmp r1, #1
	beq _0802274E
	b _08022760
	.align 2, 0
_08022740: .4byte 0x0000030F
_08022744:
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	beq _0802275A
	b _08022760
_0802274E:
	bl sub_8017824
	b _08022A2C
_08022754:
	bl sub_8018678
	b _08022A2C
_0802275A:
	bl sub_8017958
	b _08022A2C
_08022760:
	ldr r1, [sp]
	movs r0, #0xf0
	ands r1, r0
	cmp r1, #0x50
	beq _080227A2
	cmp r1, #0x50
	bgt _08022788
	cmp r1, #0x20
	bne _08022774
	b _08022968
_08022774:
	cmp r1, #0x20
	bgt _08022780
	cmp r1, #0x10
	bne _0802277E
	b _080229B0
_0802277E:
	b _080229FC
_08022780:
	cmp r1, #0x40
	bne _08022786
	b _080228D0
_08022786:
	b _080229FC
_08022788:
	cmp r1, #0x80
	bne _0802278E
	b _0802291C
_0802278E:
	cmp r1, #0x80
	bgt _08022798
	cmp r1, #0x60
	beq _08022884
	b _080229FC
_08022798:
	cmp r1, #0x90
	beq _080227EC
	cmp r1, #0xa0
	beq _08022838
	b _080229FC
_080227A2:
	ldr r2, _080227D4
	ldr r1, _080227D8
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0x53
	strh r0, [r1]
	ldr r2, _080227DC
	ldrb r0, [r2, #0xa]
	cmp r0, #1
	bne _080227B8
	b _08022A2C
_080227B8:
	movs r0, #1
	strb r0, [r2, #0xa]
	ldr r1, _080227E0
	adds r0, r2, #0
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r0, _080227E4
	ldr r0, [r0]
	ldr r1, _080227E8
	movs r2, #0xb4
	lsls r2, r2, #0xe
	b _080229DC
	.align 2, 0
_080227D4: .4byte gPreviousPlayerState
_080227D8: .4byte gPlayerState
_080227DC: .4byte gPlayerSprite
_080227E0: .4byte 0x000001C1
_080227E4: .4byte dword_2000FC8
_080227E8: .4byte 0x0001CCCD
_080227EC:
	ldr r2, _0802281C
	ldr r1, _08022820
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0x53
	strh r0, [r1]
	ldr r2, _08022824
	ldrb r0, [r2, #0xa]
	cmp r0, #3
	bne _08022802
	b _08022A2C
_08022802:
	movs r0, #3
	strb r0, [r2, #0xa]
	ldr r1, _08022828
	adds r0, r2, #0
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r0, _0802282C
	ldr r0, [r0]
	ldr r1, _08022830
	ldr r2, _08022834
	b _080229DC
	.align 2, 0
_0802281C: .4byte gPreviousPlayerState
_08022820: .4byte gPlayerState
_08022824: .4byte gPlayerSprite
_08022828: .4byte 0x000001C1
_0802282C: .4byte dword_2000FC8
_08022830: .4byte 0x0001CCCD
_08022834: .4byte 0x013B0000
_08022838:
	ldr r2, _0802286C
	ldr r1, _08022870
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0x53
	strh r0, [r1]
	ldr r2, _08022874
	ldrb r0, [r2, #0xa]
	cmp r0, #5
	bne _0802284E
	b _08022A2C
_0802284E:
	movs r0, #5
	strb r0, [r2, #0xa]
	ldr r1, _08022878
	adds r0, r2, #0
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r0, _0802287C
	ldr r0, [r0]
	ldr r1, _08022880
	movs r2, #0xe1
	lsls r2, r2, #0x10
	b _080229DC
	.align 2, 0
_0802286C: .4byte gPreviousPlayerState
_08022870: .4byte gPlayerState
_08022874: .4byte gPlayerSprite
_08022878: .4byte 0x000001C1
_0802287C: .4byte dword_2000FC8
_08022880: .4byte 0x0001CCCD
_08022884:
	ldr r2, _080228B8
	ldr r1, _080228BC
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0x53
	strh r0, [r1]
	ldr r2, _080228C0
	ldrb r0, [r2, #0xa]
	cmp r0, #7
	bne _0802289A
	b _08022A2C
_0802289A:
	movs r0, #7
	strb r0, [r2, #0xa]
	ldr r1, _080228C4
	adds r0, r2, #0
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r0, _080228C8
	ldr r0, [r0]
	ldr r1, _080228CC
	movs r2, #0x87
	lsls r2, r2, #0x10
	b _080229DC
	.align 2, 0
_080228B8: .4byte gPreviousPlayerState
_080228BC: .4byte gPlayerState
_080228C0: .4byte gPlayerSprite
_080228C4: .4byte 0x000001C1
_080228C8: .4byte dword_2000FC8
_080228CC: .4byte 0x0001CCCD
_080228D0:
	ldr r2, _08022904
	ldr r1, _08022908
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0x53
	strh r0, [r1]
	ldr r2, _0802290C
	ldrb r0, [r2, #0xa]
	cmp r0, #0
	bne _080228E6
	b _08022A2C
_080228E6:
	movs r0, #0
	strb r0, [r2, #0xa]
	ldr r1, _08022910
	adds r0, r2, #0
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r0, _08022914
	ldr r0, [r0]
	ldr r1, _08022918
	movs r2, #0xb4
	lsls r2, r2, #0xf
	b _080229DC
	.align 2, 0
_08022904: .4byte gPreviousPlayerState
_08022908: .4byte gPlayerState
_0802290C: .4byte gPlayerSprite
_08022910: .4byte 0x000001C1
_08022914: .4byte dword_2000FC8
_08022918: .4byte 0x0001CCCD
_0802291C:
	ldr r2, _08022950
	ldr r1, _08022954
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0x53
	strh r0, [r1]
	ldr r2, _08022958
	ldrb r0, [r2, #0xa]
	cmp r0, #4
	bne _08022932
	b _08022A2C
_08022932:
	movs r0, #4
	strb r0, [r2, #0xa]
	ldr r1, _0802295C
	adds r0, r2, #0
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r0, _08022960
	ldr r0, [r0]
	ldr r1, _08022964
	movs r2, #0x87
	lsls r2, r2, #0x11
	b _080229DC
	.align 2, 0
_08022950: .4byte gPreviousPlayerState
_08022954: .4byte gPlayerState
_08022958: .4byte gPlayerSprite
_0802295C: .4byte 0x000001C1
_08022960: .4byte dword_2000FC8
_08022964: .4byte 0x0001CCCD
_08022968:
	ldr r2, _08022998
	ldr r1, _0802299C
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0x53
	strh r0, [r1]
	ldr r2, _080229A0
	ldrb r0, [r2, #0xa]
	cmp r0, #6
	beq _08022A2C
	movs r0, #6
	strb r0, [r2, #0xa]
	ldr r1, _080229A4
	adds r0, r2, #0
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r0, _080229A8
	ldr r0, [r0]
	ldr r1, _080229AC
	movs r2, #0xb4
	lsls r2, r2, #0x10
	b _080229DC
	.align 2, 0
_08022998: .4byte gPreviousPlayerState
_0802299C: .4byte gPlayerState
_080229A0: .4byte gPlayerSprite
_080229A4: .4byte 0x000001C1
_080229A8: .4byte dword_2000FC8
_080229AC: .4byte 0x0001CCCD
_080229B0:
	ldr r2, _080229E4
	ldr r1, _080229E8
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0x53
	strh r0, [r1]
	ldr r2, _080229EC
	ldrb r0, [r2, #0xa]
	cmp r0, #2
	beq _08022A2C
	movs r0, #2
	strb r0, [r2, #0xa]
	ldr r1, _080229F0
	adds r0, r2, #0
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r0, _080229F4
	ldr r0, [r0]
	ldr r1, _080229F8
	movs r2, #0
_080229DC:
	movs r3, #0
	bl sub_8003884
	b _08022A2C
	.align 2, 0
_080229E4: .4byte gPreviousPlayerState
_080229E8: .4byte gPlayerState
_080229EC: .4byte gPlayerSprite
_080229F0: .4byte 0x000001C1
_080229F4: .4byte dword_2000FC8
_080229F8: .4byte 0x0001CCCD
_080229FC:
	ldr r2, _08022A34
	ldr r1, _08022A38
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0x51
	strh r0, [r1]
	ldr r4, _08022A3C
	ldr r1, _08022A40
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r0, _08022A44
	ldr r0, [r0]
	ldr r2, _08022A48
	ldrb r1, [r4, #0xa]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r2, [r1]
	movs r1, #0
	movs r3, #0
	bl sub_8003884
_08022A2C:
	add sp, #8
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08022A34: .4byte gPreviousPlayerState
_08022A38: .4byte gPlayerState
_08022A3C: .4byte gPlayerSprite
_08022A40: .4byte 0x000001D9
_08022A44: .4byte dword_2000FC8
_08022A48: .4byte dword_80CC290

	.thumb
sub_8022A4C: @ 0x08022A4C
	push {r4, lr}
	sub sp, #0x14
	str r0, [sp]
	str r1, [sp, #4]
	add r1, sp, #4
	mov r0, sp
	bl sub_8016710
	ldr r0, _08022AA4
	ldr r1, _08022AA8
	ldr r2, [r0, #4]
	ldr r0, [r1, #4]
	cmp r2, r0
	bne _08022A76
	ldr r0, _08022AAC
	ldr r0, [r0]
	movs r2, #0xc4
	lsls r2, r2, #6
	movs r1, #0
	bl CallARM_store_jump_and_other_value
_08022A76:
	ldr r0, [sp]
	ldr r1, _08022AB0
	ands r0, r1
	cmp r0, #1
	bne _08022AC0
	ldr r0, _08022AB4
	ldrb r0, [r0]
	cmp r0, #0
	bne _08022AC0
	ldr r2, _08022AB8
	ldr r1, _08022ABC
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0x5f
	strh r0, [r1]
	ldr r0, _08022AAC
	ldr r0, [r0]
	movs r1, #0xc0
	lsls r1, r1, #9
	movs r2, #0
	bl CallARM_store_jump_and_other_value
	b _08022DF4
	.align 2, 0
_08022AA4: .4byte gPlayerPos
_08022AA8: .4byte gPlayerShadowPos
_08022AAC: .4byte dword_2000FC8
_08022AB0: .4byte 0x0000030F
_08022AB4: .4byte 0x030029F8
_08022AB8: .4byte gPreviousPlayerState
_08022ABC: .4byte gPlayerState
_08022AC0:
	ldr r1, [sp, #4]
	ldr r0, _08022AF4
	ands r1, r0
	cmp r1, #2
	beq _08022B00
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	beq _08022B06
	ldr r4, _08022AF8
	ldr r0, [r4]
	add r1, sp, #8
	add r2, sp, #0xc
	add r3, sp, #0x10
	bl sub_80038C4
	ldr r0, [sp, #0xc]
	ldr r1, _08022AFC
	cmp r0, r1
	bge _08022B44
	ldr r0, [r4]
	movs r2, #0xc4
	lsls r2, r2, #6
	bl CallARM_store_jump_and_other_value
	b _08022B44
	.align 2, 0
_08022AF4: .4byte 0x0000030F
_08022AF8: .4byte dword_2000FC8
_08022AFC: .4byte 0xFFFF4000
_08022B00:
	bl sub_8018678
	b _08022DF4
_08022B06:
	ldr r2, _08022B30
	ldr r1, _08022B34
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0x60
	strh r0, [r1]
	ldr r0, _08022B38
	ldr r1, _08022B3C
	movs r2, #0
	movs r3, #1
	bl sub_8003368
	ldr r0, _08022B40
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #0xa
	movs r2, #0x80
	lsls r2, r2, #7
	bl CallARM_store_jump_and_other_value
	b _08022DF4
	.align 2, 0
_08022B30: .4byte gPreviousPlayerState
_08022B34: .4byte gPlayerState
_08022B38: .4byte gPlayerSprite
_08022B3C: .4byte 0x000001C9
_08022B40: .4byte dword_2000FC8
_08022B44:
	ldr r1, [sp]
	movs r0, #0xf0
	ands r1, r0
	cmp r1, #0x50
	beq _08022B86
	cmp r1, #0x50
	bgt _08022B6C
	cmp r1, #0x20
	bne _08022B58
	b _08022D48
_08022B58:
	cmp r1, #0x20
	bgt _08022B64
	cmp r1, #0x10
	bne _08022B62
	b _08022D90
_08022B62:
	b _08022DDC
_08022B64:
	cmp r1, #0x40
	bne _08022B6A
	b _08022CB4
_08022B6A:
	b _08022DDC
_08022B6C:
	cmp r1, #0x80
	bne _08022B72
	b _08022D00
_08022B72:
	cmp r1, #0x80
	bgt _08022B7C
	cmp r1, #0x60
	beq _08022C68
	b _08022DDC
_08022B7C:
	cmp r1, #0x90
	beq _08022BD0
	cmp r1, #0xa0
	beq _08022C1C
	b _08022DDC
_08022B86:
	ldr r4, _08022BC0
	ldrb r0, [r4, #0xa]
	cmp r0, #1
	bne _08022BA4
	ldr r0, _08022BC4
	ldr r0, [r0]
	bl sub_80038AC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08022B9E
	b _08022DF4
_08022B9E:
	ldrb r0, [r4, #0xa]
	cmp r0, #1
	beq _08022BB4
_08022BA4:
	movs r0, #1
	strb r0, [r4, #0xa]
	ldr r1, _08022BC8
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_8003368
_08022BB4:
	ldr r0, _08022BC4
	ldr r0, [r0]
	ldr r1, _08022BCC
	movs r2, #0xb4
	lsls r2, r2, #0xe
	b _08022DC4
	.align 2, 0
_08022BC0: .4byte gPlayerSprite
_08022BC4: .4byte dword_2000FC8
_08022BC8: .4byte 0x000001C9
_08022BCC: .4byte 0x0001CCCD
_08022BD0:
	ldr r4, _08022C08
	ldrb r0, [r4, #0xa]
	cmp r0, #3
	bne _08022BEE
	ldr r0, _08022C0C
	ldr r0, [r0]
	bl sub_80038AC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08022BE8
	b _08022DF4
_08022BE8:
	ldrb r0, [r4, #0xa]
	cmp r0, #3
	beq _08022BFE
_08022BEE:
	movs r0, #3
	strb r0, [r4, #0xa]
	ldr r1, _08022C10
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_8003368
_08022BFE:
	ldr r0, _08022C0C
	ldr r0, [r0]
	ldr r1, _08022C14
	ldr r2, _08022C18
	b _08022DC4
	.align 2, 0
_08022C08: .4byte gPlayerSprite
_08022C0C: .4byte dword_2000FC8
_08022C10: .4byte 0x000001C9
_08022C14: .4byte 0x0001CCCD
_08022C18: .4byte 0x013B0000
_08022C1C:
	ldr r4, _08022C58
	ldrb r0, [r4, #0xa]
	cmp r0, #5
	bne _08022C3A
	ldr r0, _08022C5C
	ldr r0, [r0]
	bl sub_80038AC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08022C34
	b _08022DF4
_08022C34:
	ldrb r0, [r4, #0xa]
	cmp r0, #5
	beq _08022C4A
_08022C3A:
	movs r0, #5
	strb r0, [r4, #0xa]
	ldr r1, _08022C60
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_8003368
_08022C4A:
	ldr r0, _08022C5C
	ldr r0, [r0]
	ldr r1, _08022C64
	movs r2, #0xe1
	lsls r2, r2, #0x10
	b _08022DC4
	.align 2, 0
_08022C58: .4byte gPlayerSprite
_08022C5C: .4byte dword_2000FC8
_08022C60: .4byte 0x000001C9
_08022C64: .4byte 0x0001CCCD
_08022C68:
	ldr r4, _08022CA4
	ldrb r0, [r4, #0xa]
	cmp r0, #7
	bne _08022C86
	ldr r0, _08022CA8
	ldr r0, [r0]
	bl sub_80038AC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08022C80
	b _08022DF4
_08022C80:
	ldrb r0, [r4, #0xa]
	cmp r0, #7
	beq _08022C96
_08022C86:
	movs r0, #7
	strb r0, [r4, #0xa]
	ldr r1, _08022CAC
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_8003368
_08022C96:
	ldr r0, _08022CA8
	ldr r0, [r0]
	ldr r1, _08022CB0
	movs r2, #0x87
	lsls r2, r2, #0x10
	b _08022DC4
	.align 2, 0
_08022CA4: .4byte gPlayerSprite
_08022CA8: .4byte dword_2000FC8
_08022CAC: .4byte 0x000001C9
_08022CB0: .4byte 0x0001CCCD
_08022CB4:
	ldr r4, _08022CF0
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _08022CD2
	ldr r0, _08022CF4
	ldr r0, [r0]
	bl sub_80038AC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08022CCC
	b _08022DF4
_08022CCC:
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	beq _08022CE2
_08022CD2:
	movs r0, #0
	strb r0, [r4, #0xa]
	ldr r1, _08022CF8
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_8003368
_08022CE2:
	ldr r0, _08022CF4
	ldr r0, [r0]
	ldr r1, _08022CFC
	movs r2, #0xb4
	lsls r2, r2, #0xf
	b _08022DC4
	.align 2, 0
_08022CF0: .4byte gPlayerSprite
_08022CF4: .4byte dword_2000FC8
_08022CF8: .4byte 0x000001C9
_08022CFC: .4byte 0x0001CCCD
_08022D00:
	ldr r4, _08022D38
	ldrb r0, [r4, #0xa]
	cmp r0, #4
	bne _08022D1C
	ldr r0, _08022D3C
	ldr r0, [r0]
	bl sub_80038AC
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08022DF4
	ldrb r0, [r4, #0xa]
	cmp r0, #4
	beq _08022D2C
_08022D1C:
	movs r0, #4
	strb r0, [r4, #0xa]
	ldr r1, _08022D40
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_8003368
_08022D2C:
	ldr r0, _08022D3C
	ldr r0, [r0]
	ldr r1, _08022D44
	movs r2, #0x87
	lsls r2, r2, #0x11
	b _08022DC4
	.align 2, 0
_08022D38: .4byte gPlayerSprite
_08022D3C: .4byte dword_2000FC8
_08022D40: .4byte 0x000001C9
_08022D44: .4byte 0x0001CCCD
_08022D48:
	ldr r4, _08022D80
	ldrb r0, [r4, #0xa]
	cmp r0, #6
	bne _08022D64
	ldr r0, _08022D84
	ldr r0, [r0]
	bl sub_80038AC
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08022DF4
	ldrb r0, [r4, #0xa]
	cmp r0, #6
	beq _08022D74
_08022D64:
	movs r0, #6
	strb r0, [r4, #0xa]
	ldr r1, _08022D88
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_8003368
_08022D74:
	ldr r0, _08022D84
	ldr r0, [r0]
	ldr r1, _08022D8C
	movs r2, #0xb4
	lsls r2, r2, #0x10
	b _08022DC4
	.align 2, 0
_08022D80: .4byte gPlayerSprite
_08022D84: .4byte dword_2000FC8
_08022D88: .4byte 0x000001C9
_08022D8C: .4byte 0x0001CCCD
_08022D90:
	ldr r4, _08022DCC
	ldrb r0, [r4, #0xa]
	cmp r0, #2
	bne _08022DAC
	ldr r0, _08022DD0
	ldr r0, [r0]
	bl sub_80038AC
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08022DF4
	ldrb r0, [r4, #0xa]
	cmp r0, #2
	beq _08022DBC
_08022DAC:
	movs r0, #2
	strb r0, [r4, #0xa]
	ldr r1, _08022DD4
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_8003368
_08022DBC:
	ldr r0, _08022DD0
	ldr r0, [r0]
	ldr r1, _08022DD8
	movs r2, #0
_08022DC4:
	movs r3, #0
	bl sub_8003884
	b _08022DF4
	.align 2, 0
_08022DCC: .4byte gPlayerSprite
_08022DD0: .4byte dword_2000FC8
_08022DD4: .4byte 0x000001C9
_08022DD8: .4byte 0x0001CCCD
_08022DDC:
	ldr r0, _08022DFC
	ldr r0, [r0]
	ldr r2, _08022E00
	ldr r1, _08022E04
	ldrb r1, [r1, #0xa]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r2, [r1]
	movs r1, #0
	movs r3, #0
	bl sub_8003884
_08022DF4:
	add sp, #0x14
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08022DFC: .4byte dword_2000FC8
_08022E00: .4byte dword_80CC290
_08022E04: .4byte gPlayerSprite

	.thumb
sub_8022E08: @ 0x08022E08
	push {r4, r5, lr}
	sub sp, #8
	str r0, [sp]
	str r1, [sp, #4]
	add r1, sp, #4
	mov r0, sp
	bl sub_8016710
	ldr r1, [sp, #4]
	ldr r2, _08022E50
	ands r1, r2
	cmp r1, #2
	beq _08022E60
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	beq _08022E66
	ldr r4, [sp]
	ands r4, r2
	cmp r4, #1
	beq _08022EA4
	ldr r2, _08022E54
	ldr r1, _08022E58
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0x54
	strh r0, [r1]
	ldr r0, _08022E5C
	ldr r0, [r0]
	movs r2, #0xc4
	lsls r2, r2, #6
	movs r1, #0
	bl CallARM_store_jump_and_other_value
	b _08023174
	.align 2, 0
_08022E50: .4byte 0x0000030F
_08022E54: .4byte gPreviousPlayerState
_08022E58: .4byte gPlayerState
_08022E5C: .4byte dword_2000FC8
_08022E60:
	bl sub_8018678
	b _08023174
_08022E66:
	ldr r2, _08022E90
	ldr r1, _08022E94
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0x60
	strh r0, [r1]
	ldr r0, _08022E98
	ldr r1, _08022E9C
	movs r2, #0
	movs r3, #1
	bl sub_8003368
	ldr r0, _08022EA0
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #0xa
	movs r2, #0x80
	lsls r2, r2, #7
	bl CallARM_store_jump_and_other_value
	b _08023174
	.align 2, 0
_08022E90: .4byte gPreviousPlayerState
_08022E94: .4byte gPlayerState
_08022E98: .4byte gPlayerSprite
_08022E9C: .4byte 0x000001C9
_08022EA0: .4byte dword_2000FC8
_08022EA4:
	ldr r0, _08022EDC
	ldrb r0, [r0]
	cmp r0, #0
	bne _08022EBA
	ldr r0, _08022EE0
	ldr r0, [r0]
	movs r1, #0xc0
	lsls r1, r1, #9
	movs r2, #0
	bl CallARM_store_jump_and_other_value
_08022EBA:
	ldr r1, [sp]
	movs r0, #0xf0
	ands r1, r0
	cmp r1, #0x50
	beq _08022F06
	cmp r1, #0x50
	bgt _08022EEC
	cmp r1, #0x20
	bne _08022ECE
	b _080230C8
_08022ECE:
	cmp r1, #0x20
	bgt _08022EE4
	cmp r1, #0x10
	bne _08022ED8
	b _08023110
_08022ED8:
	b _0802315C
	.align 2, 0
_08022EDC: .4byte 0x030029F8
_08022EE0: .4byte dword_2000FC8
_08022EE4:
	cmp r1, #0x40
	bne _08022EEA
	b _08023034
_08022EEA:
	b _0802315C
_08022EEC:
	cmp r1, #0x80
	bne _08022EF2
	b _08023080
_08022EF2:
	cmp r1, #0x80
	bgt _08022EFC
	cmp r1, #0x60
	beq _08022FE8
	b _0802315C
_08022EFC:
	cmp r1, #0x90
	beq _08022F50
	cmp r1, #0xa0
	beq _08022F9C
	b _0802315C
_08022F06:
	ldr r5, _08022F40
	ldrb r0, [r5, #0xa]
	cmp r0, #1
	bne _08022F24
	ldr r0, _08022F44
	ldr r0, [r0]
	bl sub_80038AC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08022F1E
	b _08023174
_08022F1E:
	ldrb r0, [r5, #0xa]
	cmp r0, #1
	beq _08022F32
_08022F24:
	strb r4, [r5, #0xa]
	ldr r1, _08022F48
	adds r0, r5, #0
	movs r2, #0
	movs r3, #0
	bl sub_8003368
_08022F32:
	ldr r0, _08022F44
	ldr r0, [r0]
	ldr r1, _08022F4C
	movs r2, #0xb4
	lsls r2, r2, #0xe
	b _08023144
	.align 2, 0
_08022F40: .4byte gPlayerSprite
_08022F44: .4byte dword_2000FC8
_08022F48: .4byte 0x000001C9
_08022F4C: .4byte 0x0001CCCD
_08022F50:
	ldr r4, _08022F88
	ldrb r0, [r4, #0xa]
	cmp r0, #3
	bne _08022F6E
	ldr r0, _08022F8C
	ldr r0, [r0]
	bl sub_80038AC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08022F68
	b _08023174
_08022F68:
	ldrb r0, [r4, #0xa]
	cmp r0, #3
	beq _08022F7E
_08022F6E:
	movs r0, #3
	strb r0, [r4, #0xa]
	ldr r1, _08022F90
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_8003368
_08022F7E:
	ldr r0, _08022F8C
	ldr r0, [r0]
	ldr r1, _08022F94
	ldr r2, _08022F98
	b _08023144
	.align 2, 0
_08022F88: .4byte gPlayerSprite
_08022F8C: .4byte dword_2000FC8
_08022F90: .4byte 0x000001C9
_08022F94: .4byte 0x0001CCCD
_08022F98: .4byte 0x013B0000
_08022F9C:
	ldr r4, _08022FD8
	ldrb r0, [r4, #0xa]
	cmp r0, #5
	bne _08022FBA
	ldr r0, _08022FDC
	ldr r0, [r0]
	bl sub_80038AC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08022FB4
	b _08023174
_08022FB4:
	ldrb r0, [r4, #0xa]
	cmp r0, #5
	beq _08022FCA
_08022FBA:
	movs r0, #5
	strb r0, [r4, #0xa]
	ldr r1, _08022FE0
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_8003368
_08022FCA:
	ldr r0, _08022FDC
	ldr r0, [r0]
	ldr r1, _08022FE4
	movs r2, #0xe1
	lsls r2, r2, #0x10
	b _08023144
	.align 2, 0
_08022FD8: .4byte gPlayerSprite
_08022FDC: .4byte dword_2000FC8
_08022FE0: .4byte 0x000001C9
_08022FE4: .4byte 0x0001CCCD
_08022FE8:
	ldr r4, _08023024
	ldrb r0, [r4, #0xa]
	cmp r0, #7
	bne _08023006
	ldr r0, _08023028
	ldr r0, [r0]
	bl sub_80038AC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08023000
	b _08023174
_08023000:
	ldrb r0, [r4, #0xa]
	cmp r0, #7
	beq _08023016
_08023006:
	movs r0, #7
	strb r0, [r4, #0xa]
	ldr r1, _0802302C
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_8003368
_08023016:
	ldr r0, _08023028
	ldr r0, [r0]
	ldr r1, _08023030
	movs r2, #0x87
	lsls r2, r2, #0x10
	b _08023144
	.align 2, 0
_08023024: .4byte gPlayerSprite
_08023028: .4byte dword_2000FC8
_0802302C: .4byte 0x000001C9
_08023030: .4byte 0x0001CCCD
_08023034:
	ldr r4, _08023070
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _08023052
	ldr r0, _08023074
	ldr r0, [r0]
	bl sub_80038AC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0802304C
	b _08023174
_0802304C:
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	beq _08023062
_08023052:
	movs r0, #0
	strb r0, [r4, #0xa]
	ldr r1, _08023078
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_8003368
_08023062:
	ldr r0, _08023074
	ldr r0, [r0]
	ldr r1, _0802307C
	movs r2, #0xb4
	lsls r2, r2, #0xf
	b _08023144
	.align 2, 0
_08023070: .4byte gPlayerSprite
_08023074: .4byte dword_2000FC8
_08023078: .4byte 0x000001C9
_0802307C: .4byte 0x0001CCCD
_08023080:
	ldr r4, _080230B8
	ldrb r0, [r4, #0xa]
	cmp r0, #4
	bne _0802309C
	ldr r0, _080230BC
	ldr r0, [r0]
	bl sub_80038AC
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08023174
	ldrb r0, [r4, #0xa]
	cmp r0, #4
	beq _080230AC
_0802309C:
	movs r0, #4
	strb r0, [r4, #0xa]
	ldr r1, _080230C0
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_8003368
_080230AC:
	ldr r0, _080230BC
	ldr r0, [r0]
	ldr r1, _080230C4
	movs r2, #0x87
	lsls r2, r2, #0x11
	b _08023144
	.align 2, 0
_080230B8: .4byte gPlayerSprite
_080230BC: .4byte dword_2000FC8
_080230C0: .4byte 0x000001C9
_080230C4: .4byte 0x0001CCCD
_080230C8:
	ldr r4, _08023100
	ldrb r0, [r4, #0xa]
	cmp r0, #6
	bne _080230E4
	ldr r0, _08023104
	ldr r0, [r0]
	bl sub_80038AC
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08023174
	ldrb r0, [r4, #0xa]
	cmp r0, #6
	beq _080230F4
_080230E4:
	movs r0, #6
	strb r0, [r4, #0xa]
	ldr r1, _08023108
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_8003368
_080230F4:
	ldr r0, _08023104
	ldr r0, [r0]
	ldr r1, _0802310C
	movs r2, #0xb4
	lsls r2, r2, #0x10
	b _08023144
	.align 2, 0
_08023100: .4byte gPlayerSprite
_08023104: .4byte dword_2000FC8
_08023108: .4byte 0x000001C9
_0802310C: .4byte 0x0001CCCD
_08023110:
	ldr r4, _0802314C
	ldrb r0, [r4, #0xa]
	cmp r0, #2
	bne _0802312C
	ldr r0, _08023150
	ldr r0, [r0]
	bl sub_80038AC
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08023174
	ldrb r0, [r4, #0xa]
	cmp r0, #2
	beq _0802313C
_0802312C:
	movs r0, #2
	strb r0, [r4, #0xa]
	ldr r1, _08023154
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_8003368
_0802313C:
	ldr r0, _08023150
	ldr r0, [r0]
	ldr r1, _08023158
	movs r2, #0
_08023144:
	movs r3, #0
	bl sub_8003884
	b _08023174
	.align 2, 0
_0802314C: .4byte gPlayerSprite
_08023150: .4byte dword_2000FC8
_08023154: .4byte 0x000001C9
_08023158: .4byte 0x0001CCCD
_0802315C:
	ldr r0, _0802317C
	ldr r0, [r0]
	ldr r2, _08023180
	ldr r1, _08023184
	ldrb r1, [r1, #0xa]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r2, [r1]
	movs r1, #0
	movs r3, #0
	bl sub_8003884
_08023174:
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0802317C: .4byte dword_2000FC8
_08023180: .4byte dword_80CC290
_08023184: .4byte gPlayerSprite

	.thumb
sub_8023188: @ 0x08023188
	push {r4, lr}
	sub sp, #0x10
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	add r1, sp, #0xc
	add r0, sp, #8
	bl sub_8016710
	ldr r0, _080231E0
	bl sub_8003770
	cmp r0, #0
	beq _080231D6
	ldr r2, _080231E4
	ldr r1, _080231E8
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0x50
	strh r0, [r1]
	ldr r0, _080231EC
	ldrb r0, [r0]
	ldr r1, _080231F0
	ldr r1, [r1]
	ldr r2, _080231F4
	ldr r2, [r2]
	ldr r3, _080231F8
	ldr r3, [r3]
	movs r4, #1
	str r4, [sp]
	movs r4, #0
	str r4, [sp, #4]
	bl sub_800C1E8
	bl sub_8017C50
	ldr r0, _080231FC
	ldr r0, [r0]
	bl sub_800387C
_080231D6:
	add sp, #0x10
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080231E0: .4byte gPlayerSprite
_080231E4: .4byte gPreviousPlayerState
_080231E8: .4byte gPlayerState
_080231EC: .4byte 0x02001094
_080231F0: .4byte 0x02001098
_080231F4: .4byte 0x0200109C
_080231F8: .4byte 0x020010A0
_080231FC: .4byte dword_2000FC8

	.thumb
sub_8023200: @ 0x08023200
	push {r4, r5, lr}
	sub sp, #8
	str r0, [sp]
	str r1, [sp, #4]
	add r1, sp, #4
	mov r0, sp
	bl sub_8016710
	ldr r0, [sp]
	ldr r1, [sp, #4]
	bl sub_8016624
	ldr r0, [sp, #4]
	ldr r1, _0802326C
	ands r0, r1
	cmp r0, #2
	bne _08023226
	bl sub_8018678
_08023226:
	ldr r5, _08023270
	ldr r0, [r5]
	bl sub_80038BC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0802324C
	ldr r2, _08023274
	ldr r1, _08023278
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0x56
	strh r0, [r1]
	ldr r0, _0802327C
	ldr r1, _08023280
	movs r2, #0
	movs r3, #1
	bl sub_8003368
_0802324C:
	ldr r1, [sp]
	movs r0, #0xf0
	ands r1, r0
	cmp r1, #0x50
	beq _080232A2
	cmp r1, #0x50
	bgt _0802328A
	cmp r1, #0x20
	bne _08023260
	b _08023350
_08023260:
	cmp r1, #0x20
	bgt _08023284
	cmp r1, #0x10
	bne _0802326A
	b _0802336C
_0802326A:
	b _080233B4
	.align 2, 0
_0802326C: .4byte 0x0000030F
_08023270: .4byte dword_2000FC8
_08023274: .4byte gPreviousPlayerState
_08023278: .4byte gPlayerState
_0802327C: .4byte gPlayerSprite
_08023280: .4byte 0x000001B9
_08023284:
	cmp r1, #0x40
	beq _08023318
	b _080233B4
_0802328A:
	cmp r1, #0x80
	beq _08023334
	cmp r1, #0x80
	bgt _08023298
	cmp r1, #0x60
	beq _080232FC
	b _080233B4
_08023298:
	cmp r1, #0x90
	beq _080232C0
	cmp r1, #0xa0
	beq _080232E0
	b _080233B4
_080232A2:
	ldr r4, _080232BC
	ldrb r0, [r4, #0xa]
	cmp r0, #1
	bne _080232B8
	ldr r0, [r5]
	bl sub_80038AC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080232B8
	b _080233DA
_080232B8:
	movs r0, #1
	b _08023382
	.align 2, 0
_080232BC: .4byte gPlayerSprite
_080232C0:
	ldr r4, _080232DC
	ldrb r0, [r4, #0xa]
	cmp r0, #3
	bne _080232D6
	ldr r0, [r5]
	bl sub_80038AC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080232D6
	b _080233DA
_080232D6:
	movs r0, #3
	b _08023382
	.align 2, 0
_080232DC: .4byte gPlayerSprite
_080232E0:
	ldr r4, _080232F8
	ldrb r0, [r4, #0xa]
	cmp r0, #5
	bne _080232F4
	ldr r0, [r5]
	bl sub_80038AC
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080233DA
_080232F4:
	movs r0, #5
	b _08023382
	.align 2, 0
_080232F8: .4byte gPlayerSprite
_080232FC:
	ldr r4, _08023314
	ldrb r0, [r4, #0xa]
	cmp r0, #7
	bne _08023310
	ldr r0, [r5]
	bl sub_80038AC
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080233DA
_08023310:
	movs r0, #7
	b _08023382
	.align 2, 0
_08023314: .4byte gPlayerSprite
_08023318:
	ldr r4, _08023330
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _0802332C
	ldr r0, [r5]
	bl sub_80038AC
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080233DA
_0802332C:
	movs r0, #0
	b _08023382
	.align 2, 0
_08023330: .4byte gPlayerSprite
_08023334:
	ldr r4, _0802334C
	ldrb r0, [r4, #0xa]
	cmp r0, #4
	bne _08023348
	ldr r0, [r5]
	bl sub_80038AC
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080233DA
_08023348:
	movs r0, #4
	b _08023382
	.align 2, 0
_0802334C: .4byte gPlayerSprite
_08023350:
	ldr r4, _08023368
	ldrb r0, [r4, #0xa]
	cmp r0, #6
	bne _08023364
	ldr r0, [r5]
	bl sub_80038AC
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080233DA
_08023364:
	movs r0, #6
	b _08023382
	.align 2, 0
_08023368: .4byte gPlayerSprite
_0802336C:
	ldr r4, _080233A8
	ldrb r0, [r4, #0xa]
	cmp r0, #2
	bne _08023380
	ldr r0, [r5]
	bl sub_80038AC
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080233DA
_08023380:
	movs r0, #2
_08023382:
	strb r0, [r4, #0xa]
	ldr r1, _080233AC
	adds r0, r4, #0
	movs r2, #0
	movs r3, #1
	bl sub_8003368
	ldr r0, [r5]
	movs r1, #0x98
	lsls r1, r1, #9
	ldr r3, _080233B0
	ldrb r2, [r4, #0xa]
	lsls r2, r2, #2
	adds r2, r2, r3
	ldr r2, [r2]
	movs r3, #0
	bl sub_8003884
	b _080233DA
	.align 2, 0
_080233A8: .4byte gPlayerSprite
_080233AC: .4byte 0x000001B1
_080233B0: .4byte dword_80CC290
_080233B4:
	ldr r4, _080233E4
	ldr r0, [r4]
	bl sub_80038AC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080233DA
	ldr r0, [r4]
	movs r1, #0xc0
	lsls r1, r1, #6
	ldr r3, _080233E8
	ldr r2, _080233EC
	ldrb r2, [r2, #0xa]
	lsls r2, r2, #2
	adds r2, r2, r3
	ldr r2, [r2]
	movs r3, #0
	bl sub_8003884
_080233DA:
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080233E4: .4byte dword_2000FC8
_080233E8: .4byte dword_80CC290
_080233EC: .4byte gPlayerSprite

	.thumb
sub_80233F0: @ 0x080233F0
	push {r4, lr}
	sub sp, #8
	str r0, [sp]
	str r1, [sp, #4]
	add r1, sp, #4
	mov r0, sp
	bl sub_8016710
	ldr r0, [sp]
	ldr r1, [sp, #4]
	bl sub_8016624
	ldr r0, [sp, #4]
	ldr r1, _08023438
	ands r0, r1
	cmp r0, #2
	bne _08023416
	bl sub_8018678
_08023416:
	ldr r1, [sp]
	movs r0, #0xf0
	ands r1, r0
	cmp r1, #0x50
	beq _0802345A
	cmp r1, #0x50
	bgt _08023442
	cmp r1, #0x20
	bne _0802342A
	b _08023534
_0802342A:
	cmp r1, #0x20
	bgt _0802343C
	cmp r1, #0x10
	bne _08023434
	b _08023558
_08023434:
	b _080235A8
	.align 2, 0
_08023438: .4byte 0x0000030F
_0802343C:
	cmp r1, #0x40
	beq _080234EC
	b _080235A8
_08023442:
	cmp r1, #0x80
	beq _08023510
	cmp r1, #0x80
	bgt _08023450
	cmp r1, #0x60
	beq _080234C8
	b _080235A8
_08023450:
	cmp r1, #0x90
	beq _08023480
	cmp r1, #0xa0
	beq _080234A4
	b _080235A8
_0802345A:
	ldr r4, _08023478
	ldrb r0, [r4, #0xa]
	cmp r0, #1
	bne _08023472
	ldr r0, _0802347C
	ldr r0, [r0]
	bl sub_80038AC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08023472
	b _080235CE
_08023472:
	movs r0, #1
	b _08023570
	.align 2, 0
_08023478: .4byte gPlayerSprite
_0802347C: .4byte dword_2000FC8
_08023480:
	ldr r4, _0802349C
	ldrb r0, [r4, #0xa]
	cmp r0, #3
	bne _08023498
	ldr r0, _080234A0
	ldr r0, [r0]
	bl sub_80038AC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08023498
	b _080235CE
_08023498:
	movs r0, #3
	b _08023570
	.align 2, 0
_0802349C: .4byte gPlayerSprite
_080234A0: .4byte dword_2000FC8
_080234A4:
	ldr r4, _080234C0
	ldrb r0, [r4, #0xa]
	cmp r0, #5
	bne _080234BC
	ldr r0, _080234C4
	ldr r0, [r0]
	bl sub_80038AC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080234BC
	b _080235CE
_080234BC:
	movs r0, #5
	b _08023570
	.align 2, 0
_080234C0: .4byte gPlayerSprite
_080234C4: .4byte dword_2000FC8
_080234C8:
	ldr r4, _080234E4
	ldrb r0, [r4, #0xa]
	cmp r0, #7
	bne _080234DE
	ldr r0, _080234E8
	ldr r0, [r0]
	bl sub_80038AC
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080235CE
_080234DE:
	movs r0, #7
	b _08023570
	.align 2, 0
_080234E4: .4byte gPlayerSprite
_080234E8: .4byte dword_2000FC8
_080234EC:
	ldr r4, _08023508
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _08023502
	ldr r0, _0802350C
	ldr r0, [r0]
	bl sub_80038AC
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080235CE
_08023502:
	movs r0, #0
	b _08023570
	.align 2, 0
_08023508: .4byte gPlayerSprite
_0802350C: .4byte dword_2000FC8
_08023510:
	ldr r4, _0802352C
	ldrb r0, [r4, #0xa]
	cmp r0, #4
	bne _08023526
	ldr r0, _08023530
	ldr r0, [r0]
	bl sub_80038AC
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080235CE
_08023526:
	movs r0, #4
	b _08023570
	.align 2, 0
_0802352C: .4byte gPlayerSprite
_08023530: .4byte dword_2000FC8
_08023534:
	ldr r4, _08023550
	ldrb r0, [r4, #0xa]
	cmp r0, #6
	bne _0802354A
	ldr r0, _08023554
	ldr r0, [r0]
	bl sub_80038AC
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080235CE
_0802354A:
	movs r0, #6
	b _08023570
	.align 2, 0
_08023550: .4byte gPlayerSprite
_08023554: .4byte dword_2000FC8
_08023558:
	ldr r4, _08023598
	ldrb r0, [r4, #0xa]
	cmp r0, #2
	bne _0802356E
	ldr r0, _0802359C
	ldr r0, [r0]
	bl sub_80038AC
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080235CE
_0802356E:
	movs r0, #2
_08023570:
	strb r0, [r4, #0xa]
	ldr r1, _080235A0
	adds r0, r4, #0
	movs r2, #0
	movs r3, #1
	bl sub_8003368
	ldr r0, _0802359C
	ldr r0, [r0]
	movs r1, #0x98
	lsls r1, r1, #9
	ldr r3, _080235A4
	ldrb r2, [r4, #0xa]
	lsls r2, r2, #2
	adds r2, r2, r3
	ldr r2, [r2]
	movs r3, #0
	bl sub_8003884
	b _080235CE
	.align 2, 0
_08023598: .4byte gPlayerSprite
_0802359C: .4byte dword_2000FC8
_080235A0: .4byte 0x000001B9
_080235A4: .4byte dword_80CC290
_080235A8:
	ldr r4, _080235D8
	ldr r0, [r4]
	bl sub_80038AC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080235CE
	ldr r0, [r4]
	movs r1, #0xc0
	lsls r1, r1, #6
	ldr r3, _080235DC
	ldr r2, _080235E0
	ldrb r2, [r2, #0xa]
	lsls r2, r2, #2
	adds r2, r2, r3
	ldr r2, [r2]
	movs r3, #0
	bl sub_8003884
_080235CE:
	add sp, #8
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080235D8: .4byte dword_2000FC8
_080235DC: .4byte dword_80CC290
_080235E0: .4byte gPlayerSprite

	.thumb
sub_80235E4: @ 0x080235E4
	push {r4, r5, lr}
	sub sp, #8
	str r0, [sp]
	str r1, [sp, #4]
	add r1, sp, #4
	mov r0, sp
	bl sub_8016710
	ldr r0, [sp, #4]
	ldr r1, _08023650
	ands r0, r1
	cmp r0, #2
	bne _08023602
	bl sub_8018678
_08023602:
	ldr r5, _08023654
	ldr r0, [r5]
	bl sub_80038BC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08023630
	ldr r2, _08023658
	ldr r1, _0802365C
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0x58
	strh r0, [r1]
	ldr r0, _08023660
	ldr r1, _08023664
	movs r2, #0
	movs r3, #1
	bl sub_8003368
	ldr r0, [r5]
	movs r1, #0
	bl sub_80038D4
_08023630:
	ldr r1, [sp]
	movs r0, #0xf0
	ands r1, r0
	cmp r1, #0x50
	beq _08023686
	cmp r1, #0x50
	bgt _0802366E
	cmp r1, #0x20
	bne _08023644
	b _08023734
_08023644:
	cmp r1, #0x20
	bgt _08023668
	cmp r1, #0x10
	bne _0802364E
	b _08023750
_0802364E:
	b _08023798
	.align 2, 0
_08023650: .4byte 0x0000030F
_08023654: .4byte dword_2000FC8
_08023658: .4byte gPreviousPlayerState
_0802365C: .4byte gPlayerState
_08023660: .4byte gPlayerSprite
_08023664: .4byte 0x000001B9
_08023668:
	cmp r1, #0x40
	beq _080236FC
	b _08023798
_0802366E:
	cmp r1, #0x80
	beq _08023718
	cmp r1, #0x80
	bgt _0802367C
	cmp r1, #0x60
	beq _080236E0
	b _08023798
_0802367C:
	cmp r1, #0x90
	beq _080236A4
	cmp r1, #0xa0
	beq _080236C4
	b _08023798
_08023686:
	ldr r4, _080236A0
	ldrb r0, [r4, #0xa]
	cmp r0, #1
	bne _0802369C
	ldr r0, [r5]
	bl sub_80038AC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0802369C
	b _080237BE
_0802369C:
	movs r0, #1
	b _08023766
	.align 2, 0
_080236A0: .4byte gPlayerSprite
_080236A4:
	ldr r4, _080236C0
	ldrb r0, [r4, #0xa]
	cmp r0, #3
	bne _080236BA
	ldr r0, [r5]
	bl sub_80038AC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080236BA
	b _080237BE
_080236BA:
	movs r0, #3
	b _08023766
	.align 2, 0
_080236C0: .4byte gPlayerSprite
_080236C4:
	ldr r4, _080236DC
	ldrb r0, [r4, #0xa]
	cmp r0, #5
	bne _080236D8
	ldr r0, [r5]
	bl sub_80038AC
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080237BE
_080236D8:
	movs r0, #5
	b _08023766
	.align 2, 0
_080236DC: .4byte gPlayerSprite
_080236E0:
	ldr r4, _080236F8
	ldrb r0, [r4, #0xa]
	cmp r0, #7
	bne _080236F4
	ldr r0, [r5]
	bl sub_80038AC
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080237BE
_080236F4:
	movs r0, #7
	b _08023766
	.align 2, 0
_080236F8: .4byte gPlayerSprite
_080236FC:
	ldr r4, _08023714
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _08023710
	ldr r0, [r5]
	bl sub_80038AC
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080237BE
_08023710:
	movs r0, #0
	b _08023766
	.align 2, 0
_08023714: .4byte gPlayerSprite
_08023718:
	ldr r4, _08023730
	ldrb r0, [r4, #0xa]
	cmp r0, #4
	bne _0802372C
	ldr r0, [r5]
	bl sub_80038AC
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080237BE
_0802372C:
	movs r0, #4
	b _08023766
	.align 2, 0
_08023730: .4byte gPlayerSprite
_08023734:
	ldr r4, _0802374C
	ldrb r0, [r4, #0xa]
	cmp r0, #6
	bne _08023748
	ldr r0, [r5]
	bl sub_80038AC
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080237BE
_08023748:
	movs r0, #6
	b _08023766
	.align 2, 0
_0802374C: .4byte gPlayerSprite
_08023750:
	ldr r4, _0802378C
	ldrb r0, [r4, #0xa]
	cmp r0, #2
	bne _08023764
	ldr r0, [r5]
	bl sub_80038AC
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080237BE
_08023764:
	movs r0, #2
_08023766:
	strb r0, [r4, #0xa]
	ldr r1, _08023790
	adds r0, r4, #0
	movs r2, #0
	movs r3, #1
	bl sub_8003368
	ldr r0, [r5]
	movs r1, #0x98
	lsls r1, r1, #9
	ldr r3, _08023794
	ldrb r2, [r4, #0xa]
	lsls r2, r2, #2
	adds r2, r2, r3
	ldr r2, [r2]
	movs r3, #0
	bl sub_8003884
	b _080237BE
	.align 2, 0
_0802378C: .4byte gPlayerSprite
_08023790: .4byte 0x000001B1
_08023794: .4byte dword_80CC290
_08023798:
	ldr r4, _080237C8
	ldr r0, [r4]
	bl sub_80038AC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080237BE
	ldr r0, [r4]
	movs r1, #0xc0
	lsls r1, r1, #6
	ldr r3, _080237CC
	ldr r2, _080237D0
	ldrb r2, [r2, #0xa]
	lsls r2, r2, #2
	adds r2, r2, r3
	ldr r2, [r2]
	movs r3, #0
	bl sub_8003884
_080237BE:
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080237C8: .4byte dword_2000FC8
_080237CC: .4byte dword_80CC290
_080237D0: .4byte gPlayerSprite

	.thumb
sub_80237D4: @ 0x080237D4
	push {r4, lr}
	sub sp, #8
	str r0, [sp]
	str r1, [sp, #4]
	add r1, sp, #4
	mov r0, sp
	bl sub_8016710
	ldr r0, [sp, #4]
	ldr r1, _08023814
	ands r0, r1
	cmp r0, #2
	bne _080237F2
	bl sub_8018678
_080237F2:
	ldr r1, [sp]
	movs r0, #0xf0
	ands r1, r0
	cmp r1, #0x50
	beq _08023836
	cmp r1, #0x50
	bgt _0802381E
	cmp r1, #0x20
	bne _08023806
	b _08023910
_08023806:
	cmp r1, #0x20
	bgt _08023818
	cmp r1, #0x10
	bne _08023810
	b _08023934
_08023810:
	b _08023984
	.align 2, 0
_08023814: .4byte 0x0000030F
_08023818:
	cmp r1, #0x40
	beq _080238C8
	b _08023984
_0802381E:
	cmp r1, #0x80
	beq _080238EC
	cmp r1, #0x80
	bgt _0802382C
	cmp r1, #0x60
	beq _080238A4
	b _08023984
_0802382C:
	cmp r1, #0x90
	beq _0802385C
	cmp r1, #0xa0
	beq _08023880
	b _08023984
_08023836:
	ldr r4, _08023854
	ldrb r0, [r4, #0xa]
	cmp r0, #1
	bne _0802384E
	ldr r0, _08023858
	ldr r0, [r0]
	bl sub_80038AC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0802384E
	b _080239AA
_0802384E:
	movs r0, #1
	b _0802394C
	.align 2, 0
_08023854: .4byte gPlayerSprite
_08023858: .4byte dword_2000FC8
_0802385C:
	ldr r4, _08023878
	ldrb r0, [r4, #0xa]
	cmp r0, #3
	bne _08023874
	ldr r0, _0802387C
	ldr r0, [r0]
	bl sub_80038AC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08023874
	b _080239AA
_08023874:
	movs r0, #3
	b _0802394C
	.align 2, 0
_08023878: .4byte gPlayerSprite
_0802387C: .4byte dword_2000FC8
_08023880:
	ldr r4, _0802389C
	ldrb r0, [r4, #0xa]
	cmp r0, #5
	bne _08023898
	ldr r0, _080238A0
	ldr r0, [r0]
	bl sub_80038AC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08023898
	b _080239AA
_08023898:
	movs r0, #5
	b _0802394C
	.align 2, 0
_0802389C: .4byte gPlayerSprite
_080238A0: .4byte dword_2000FC8
_080238A4:
	ldr r4, _080238C0
	ldrb r0, [r4, #0xa]
	cmp r0, #7
	bne _080238BA
	ldr r0, _080238C4
	ldr r0, [r0]
	bl sub_80038AC
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080239AA
_080238BA:
	movs r0, #7
	b _0802394C
	.align 2, 0
_080238C0: .4byte gPlayerSprite
_080238C4: .4byte dword_2000FC8
_080238C8:
	ldr r4, _080238E4
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _080238DE
	ldr r0, _080238E8
	ldr r0, [r0]
	bl sub_80038AC
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080239AA
_080238DE:
	movs r0, #0
	b _0802394C
	.align 2, 0
_080238E4: .4byte gPlayerSprite
_080238E8: .4byte dword_2000FC8
_080238EC:
	ldr r4, _08023908
	ldrb r0, [r4, #0xa]
	cmp r0, #4
	bne _08023902
	ldr r0, _0802390C
	ldr r0, [r0]
	bl sub_80038AC
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080239AA
_08023902:
	movs r0, #4
	b _0802394C
	.align 2, 0
_08023908: .4byte gPlayerSprite
_0802390C: .4byte dword_2000FC8
_08023910:
	ldr r4, _0802392C
	ldrb r0, [r4, #0xa]
	cmp r0, #6
	bne _08023926
	ldr r0, _08023930
	ldr r0, [r0]
	bl sub_80038AC
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080239AA
_08023926:
	movs r0, #6
	b _0802394C
	.align 2, 0
_0802392C: .4byte gPlayerSprite
_08023930: .4byte dword_2000FC8
_08023934:
	ldr r4, _08023974
	ldrb r0, [r4, #0xa]
	cmp r0, #2
	bne _0802394A
	ldr r0, _08023978
	ldr r0, [r0]
	bl sub_80038AC
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080239AA
_0802394A:
	movs r0, #2
_0802394C:
	strb r0, [r4, #0xa]
	ldr r1, _0802397C
	adds r0, r4, #0
	movs r2, #0
	movs r3, #1
	bl sub_8003368
	ldr r0, _08023978
	ldr r0, [r0]
	movs r1, #0x98
	lsls r1, r1, #9
	ldr r3, _08023980
	ldrb r2, [r4, #0xa]
	lsls r2, r2, #2
	adds r2, r2, r3
	ldr r2, [r2]
	movs r3, #0
	bl sub_8003884
	b _080239AA
	.align 2, 0
_08023974: .4byte gPlayerSprite
_08023978: .4byte dword_2000FC8
_0802397C: .4byte 0x000001B9
_08023980: .4byte dword_80CC290
_08023984:
	ldr r4, _080239B4
	ldr r0, [r4]
	bl sub_80038AC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080239AA
	ldr r0, [r4]
	movs r1, #0xc0
	lsls r1, r1, #6
	ldr r3, _080239B8
	ldr r2, _080239BC
	ldrb r2, [r2, #0xa]
	lsls r2, r2, #2
	adds r2, r2, r3
	ldr r2, [r2]
	movs r3, #0
	bl sub_8003884
_080239AA:
	add sp, #8
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080239B4: .4byte dword_2000FC8
_080239B8: .4byte dword_80CC290
_080239BC: .4byte gPlayerSprite

	.thumb
sub_80239C0: @ 0x080239C0
	push {r4, lr}
	sub sp, #8
	str r0, [sp]
	str r1, [sp, #4]
	add r1, sp, #4
	mov r0, sp
	bl sub_8016710
	ldr r4, _08023A24
	adds r0, r4, #0
	bl sub_8003770
	cmp r0, #0
	beq _08023A1A
	ldr r0, _08023A28
	ldrb r0, [r0, #0x13]
	cmp r0, #0
	beq _08023A1A
	ldr r2, _08023A2C
	ldr r1, _08023A30
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0x50
	strh r0, [r1]
	ldr r1, _08023A34
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r0, _08023A38
	ldr r0, [r0]
	ldr r2, _08023A3C
	ldrb r1, [r4, #0xa]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r2, [r1]
	movs r1, #0
	movs r3, #0
	bl sub_8003884
	ldrb r1, [r4, #0xa]
	movs r0, #0
	bl sub_8016790
_08023A1A:
	add sp, #8
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08023A24: .4byte gPlayerSprite
_08023A28: .4byte gGameStatus
_08023A2C: .4byte gPreviousPlayerState
_08023A30: .4byte gPlayerState
_08023A34: .4byte 0x000001D1
_08023A38: .4byte dword_2000FC8
_08023A3C: .4byte dword_80CC290

	.thumb
sub_8023A40: @ 0x08023A40
	push {r4, lr}
	sub sp, #8
	str r0, [sp]
	str r1, [sp, #4]
	add r1, sp, #4
	mov r0, sp
	bl sub_8016710
	ldr r4, _08023A9C
	adds r0, r4, #0
	bl sub_8003770
	cmp r0, #0
	beq _08023A92
	ldr r2, _08023AA0
	ldr r1, _08023AA4
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0x51
	strh r0, [r1]
	ldr r1, _08023AA8
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r0, _08023AAC
	ldr r0, [r0]
	ldr r2, _08023AB0
	ldrb r1, [r4, #0xa]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r2, [r1]
	movs r1, #0
	movs r3, #0
	bl sub_8003884
	ldrb r1, [r4, #0xa]
	movs r0, #0
	bl sub_8016790
_08023A92:
	add sp, #8
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08023A9C: .4byte gPlayerSprite
_08023AA0: .4byte gPreviousPlayerState
_08023AA4: .4byte gPlayerState
_08023AA8: .4byte 0x000001D9
_08023AAC: .4byte dword_2000FC8
_08023AB0: .4byte dword_80CC290

	.thumb
sub_8023AB4: @ 0x08023AB4
	push {r4, lr}
	ldr r4, _08023B10
	adds r0, r4, #0
	bl sub_8003770
	cmp r0, #0
	beq _08023B6C
	ldr r0, _08023B14
	ldrb r0, [r0, #0x13]
	cmp r0, #0
	bne _08023B36
	ldr r0, _08023B18
	ldrb r0, [r0]
	cmp r0, #0
	beq _08023B30
	bl sub_800F7A0
	ldr r2, _08023B1C
	ldr r1, _08023B20
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0x54
	strh r0, [r1]
	ldr r1, _08023B24
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r0, _08023B28
	ldr r0, [r0]
	ldr r2, _08023B2C
	ldrb r1, [r4, #0xa]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r2, [r1]
	movs r1, #0
	movs r3, #0
	bl sub_8003884
	ldrb r1, [r4, #0xa]
	movs r0, #0
	bl sub_8016790
	b _08023B6C
	.align 2, 0
_08023B10: .4byte gPlayerSprite
_08023B14: .4byte gGameStatus
_08023B18: .4byte 0x02001370
_08023B1C: .4byte gPreviousPlayerState
_08023B20: .4byte gPlayerState
_08023B24: .4byte 0x000001C9
_08023B28: .4byte dword_2000FC8
_08023B2C: .4byte dword_80CC290
_08023B30:
	bl sub_8016890
	b _08023B6C
_08023B36:
	ldr r2, _08023B74
	ldr r1, _08023B78
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0x54
	strh r0, [r1]
	ldr r1, _08023B7C
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r0, _08023B80
	ldr r0, [r0]
	ldr r2, _08023B84
	ldrb r1, [r4, #0xa]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r2, [r1]
	movs r1, #0
	movs r3, #0
	bl sub_8003884
	ldrb r1, [r4, #0xa]
	movs r0, #0
	bl sub_8016790
_08023B6C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08023B74: .4byte gPreviousPlayerState
_08023B78: .4byte gPlayerState
_08023B7C: .4byte 0x000001C9
_08023B80: .4byte dword_2000FC8
_08023B84: .4byte dword_80CC290

	.thumb
sub_8023B88: @ 0x08023B88
	push {lr}
	ldr r0, _08023BAC
	ldrb r0, [r0]
	cmp r0, #0
	beq _08023BB8
	ldr r0, _08023BB0
	ldr r0, [r0]
	bl audio_fx_still_active
	cmp r0, #0
	bne _08023BDA
	ldr r0, _08023BB4
	ldrb r0, [r0]
	cmp r0, #0
	bne _08023BDA
	bl sub_80629E8
	b _08023BDA
	.align 2, 0
_08023BAC: .4byte byte_20020B3
_08023BB0: .4byte 0x020021D8
_08023BB4: .4byte byte_203F99C
_08023BB8:
	ldr r0, _08023BE0
	bl sub_8003770
	cmp r0, #0
	beq _08023BDA
	ldr r0, _08023BE4
	ldr r0, [r0]
	bl audio_fx_still_active
	cmp r0, #0
	bne _08023BDA
	ldr r0, _08023BE8
	ldrb r0, [r0]
	cmp r0, #0
	bne _08023BDA
	bl sub_80629E8
_08023BDA:
	pop {r0}
	bx r0
	.align 2, 0
_08023BE0: .4byte gPlayerSprite
_08023BE4: .4byte 0x020021D8
_08023BE8: .4byte byte_203F99C

	.thumb
sub_8023BEC: @ 0x08023BEC
	push {lr}
	sub sp, #8
	str r0, [sp]
	str r1, [sp, #4]
	add r1, sp, #4
	mov r0, sp
	bl sub_8016710
	add sp, #8
	pop {r0}
	bx r0
	.align 2, 0

	.thumb
sub_8023C04: @ 0x08023C04
	push {r4, lr}
	ldr r4, _08023C64
	adds r0, r4, #0
	bl sub_8003770
	cmp r0, #0
	beq _08023C5E
	ldr r0, _08023C68
	ldr r0, [r0]
	ldr r1, _08023C6C
	ldr r1, [r1]
	bl sub_0800C388
	ldr r0, _08023C70
	ldrb r0, [r0]
	cmp r0, #0
	beq _08023C38
	ldr r0, _08023C74
	ldrb r0, [r0]
	strb r0, [r4, #0xa]
	ldr r2, _08023C78
	ldr r0, _08023C7C
	ldrh r1, [r0]
	ldr r0, _08023C80
	ands r0, r1
	strh r0, [r2]
_08023C38:
	ldr r2, _08023C84
	ldr r1, _08023C88
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0x54
	strh r0, [r1]
	ldr r1, _08023C8C
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r0, _08023C90
	ldr r0, [r0]
	movs r2, #0xc4
	lsls r2, r2, #6
	movs r1, #0
	bl CallARM_store_jump_and_other_value
_08023C5E:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08023C64: .4byte gPlayerSprite
_08023C68: .4byte 0x020021E8
_08023C6C: .4byte 0x020021EC
_08023C70: .4byte 0x020010A4
_08023C74: .4byte 0x020010A5
_08023C78: .4byte word_20010AC
_08023C7C: .4byte gKeysPressed
_08023C80: .4byte 0x000003FF
_08023C84: .4byte gPreviousPlayerState
_08023C88: .4byte gPlayerState
_08023C8C: .4byte 0x000001C9
_08023C90: .4byte dword_2000FC8

	.thumb
sub_8023C94: @ 0x08023C94
	push {r4, lr}
	adds r2, r0, #0
	ldr r0, _08023CA8
	ands r0, r1
	cmp r0, #2
	bne _08023CAC
	movs r0, #0
	bl sub_801A3DC
	b _08023D6A
	.align 2, 0
_08023CA8: .4byte 0x0000030F
_08023CAC:
	movs r0, #0xf0
	ands r0, r2
	cmp r0, #0x50
	beq _08023CE4
	cmp r0, #0x50
	bgt _08023CCC
	cmp r0, #0x20
	beq _08023D2C
	cmp r0, #0x20
	bgt _08023CC6
	cmp r0, #0x10
	beq _08023D50
	b _08023D6A
_08023CC6:
	cmp r0, #0x40
	beq _08023D14
	b _08023D6A
_08023CCC:
	cmp r0, #0x80
	beq _08023D20
	cmp r0, #0x80
	bgt _08023CDA
	cmp r0, #0x60
	beq _08023D08
	b _08023D6A
_08023CDA:
	cmp r0, #0x90
	beq _08023CF0
	cmp r0, #0xa0
	beq _08023CFC
	b _08023D6A
_08023CE4:
	ldr r4, _08023CEC
	movs r0, #1
	b _08023D30
	.align 2, 0
_08023CEC: .4byte gPlayerSprite
_08023CF0:
	ldr r4, _08023CF8
	movs r0, #3
	b _08023D30
	.align 2, 0
_08023CF8: .4byte gPlayerSprite
_08023CFC:
	ldr r4, _08023D04
	movs r0, #5
	b _08023D30
	.align 2, 0
_08023D04: .4byte gPlayerSprite
_08023D08:
	ldr r4, _08023D10
	movs r0, #7
	b _08023D30
	.align 2, 0
_08023D10: .4byte gPlayerSprite
_08023D14:
	ldr r4, _08023D1C
	movs r0, #0
	b _08023D30
	.align 2, 0
_08023D1C: .4byte gPlayerSprite
_08023D20:
	ldr r4, _08023D28
	movs r0, #4
	b _08023D30
	.align 2, 0
_08023D28: .4byte gPlayerSprite
_08023D2C:
	ldr r4, _08023D48
	movs r0, #6
_08023D30:
	strb r0, [r4, #0xa]
	ldr r1, _08023D4C
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldrb r1, [r4, #0xa]
	movs r0, #0
	bl sub_8016790
	b _08023D6A
	.align 2, 0
_08023D48: .4byte gPlayerSprite
_08023D4C: .4byte 0x00000101
_08023D50:
	ldr r4, _08023D70
	movs r0, #2
	strb r0, [r4, #0xa]
	ldr r1, _08023D74
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldrb r1, [r4, #0xa]
	movs r0, #0
	bl sub_8016790
_08023D6A:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08023D70: .4byte gPlayerSprite
_08023D74: .4byte 0x00000101

	.thumb
sub_8023D78: @ 0x08023D78
	push {r4, lr}
	ldr r4, _08023DAC
	adds r0, r4, #0
	bl sub_8003770
	cmp r0, #0
	beq _08023DA6
	ldr r2, _08023DB0
	ldr r1, _08023DB4
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0x61
	strh r0, [r1]
	ldr r1, _08023DB8
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldrb r1, [r4, #0xa]
	movs r0, #0
	bl sub_8016790
_08023DA6:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08023DAC: .4byte gPlayerSprite
_08023DB0: .4byte gPreviousPlayerState
_08023DB4: .4byte gPlayerState
_08023DB8: .4byte 0x00000101

	.thumb
nullsub_7: @ 0x08023DBC
	bx lr
	.align 2, 0
