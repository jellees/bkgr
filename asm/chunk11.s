
    .syntax unified

    .text

    .thumb
    .global sub_8016434
sub_8016434: @ 0x08016434
	push {lr}
	bl sub_8016440
	pop {r0}
	bx r0
	.align 2, 0

    .thumb
    .global sub_8016440
sub_8016440: @ 0x08016440
	push {lr}
	ldr r0, _080164AC
	movs r1, #0
	strb r1, [r0]
	ldr r0, _080164B0
	strb r1, [r0]
	ldr r0, _080164B4
	strb r1, [r0]
	ldr r0, _080164B8
	strb r1, [r0]
	ldr r0, _080164BC
	strb r1, [r0]
	ldr r0, _080164C0
	strb r1, [r0]
	ldr r1, _080164C4
	movs r0, #1
	strb r0, [r1]
	ldr r0, _080164C8
	movs r1, #1
	rsbs r1, r1, #0
	str r1, [r0]
	ldr r0, _080164CC
	str r1, [r0]
	ldr r0, _080164D0
	str r1, [r0]
	ldr r1, _080164D4
	adds r3, r1, #0
	movs r2, #0
	adds r0, r1, #0
	adds r0, #0x16
_0801647C:
	strb r2, [r0]
	subs r0, #1
	cmp r0, r3
	bge _0801647C
	movs r0, #1
	strb r0, [r1]
	strb r0, [r1, #0x10]
	strb r0, [r1, #0x11]
	strb r0, [r1, #0xa]
	strb r0, [r1, #0xe]
	strb r0, [r1, #0xb]
	ldr r3, _080164D8
	ldr r2, _080164DC
	movs r1, #0x7f
_08016498:
	ldrh r0, [r3]
	strh r0, [r2]
	adds r3, #2
	adds r2, #2
	subs r1, #1
	cmp r1, #0
	bge _08016498
	pop {r0}
	bx r0
	.align 2, 0
_080164AC: .4byte byte_20020BC
_080164B0: .4byte 0x020021C5
_080164B4: .4byte 0x020021C6
_080164B8: .4byte 0x020021C7
_080164BC: .4byte byte_20020B3
_080164C0: .4byte 0x020021BE
_080164C4: .4byte 0x020021C4
_080164C8: .4byte dword_20020B8
_080164CC: .4byte dword_20020B4
_080164D0: .4byte 0x020021DC
_080164D4: .4byte 0x0200209A
_080164D8: .4byte 0x08065104
_080164DC: .4byte gPlayerStateSettings

    .thumb
	.global sub_80164E0
sub_80164E0: @ 0x080164E0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r6, r0, #0
	mov ip, r1
	mov r8, r2
	ldr r3, [r1]
	ldr r5, [r2]
	movs r1, #0
	movs r2, #0
	movs r4, #0
	ldr r0, _08016520
	mov sb, r0
	ldr r0, _08016524
	mov sl, r0
	ldr r7, _08016528
_08016504:
	adds r0, r4, r7
	ldrb r0, [r0]
	orrs r1, r0
	adds r2, #1
	cmp r2, #8
	bne _0801652C
	adds r0, r6, r3
	strb r1, [r0]
	ldrb r0, [r0]
	adds r5, r5, r0
	adds r3, #1
	movs r1, #0
	movs r2, #0
	b _08016530
	.align 2, 0
_08016520: .4byte byte_20020B1
_08016524: .4byte 0x020021BE
_08016528: .4byte 0x0200209A
_0801652C:
	lsls r0, r1, #0x19
	lsrs r1, r0, #0x18
_08016530:
	adds r4, #1
	cmp r4, #0x16
	ble _08016504
	cmp r2, #0
	beq _0801654A
	movs r0, #7
	subs r0, r0, r2
	lsls r1, r0
	adds r0, r6, r3
	strb r1, [r0]
	ldrb r0, [r0]
	adds r5, r5, r0
	adds r3, #1
_0801654A:
	adds r1, r6, r3
	mov r2, sb
	ldrb r0, [r2]
	strb r0, [r1]
	ldrb r1, [r1]
	adds r3, #1
	adds r2, r6, r3
	mov r4, sl
	ldrb r0, [r4]
	strb r0, [r2]
	adds r1, r5, r1
	adds r5, r1, r0
	adds r3, #1
	mov r0, ip
	str r3, [r0]
	mov r2, r8
	str r5, [r2]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

    .thumb
	.global sub_801657C
sub_801657C: @ 0x0801657C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	str r0, [sp, #8]
	str r1, [sp]
	str r2, [sp, #4]
	ldr r3, [r1]
	ldr r5, [r2]
	movs r0, #0
	mov ip, r0
	ldr r1, [sp, #8]
	adds r0, r1, r3
	ldrb r4, [r0]
	adds r5, r5, r4
	adds r3, #1
	movs r6, #0
	ldr r2, _08016618
	mov sl, r2
	movs r7, #7
	mov sb, r7
	movs r0, #1
	mov r8, r0
_080165AE:
	mov r1, ip
	cmp r1, #8
	bne _080165C2
	movs r2, #0
	mov ip, r2
	ldr r4, [sp, #8]
	adds r0, r4, r3
	ldrb r4, [r0]
	adds r5, r5, r4
	adds r3, #1
_080165C2:
	mov r7, sl
	adds r2, r6, r7
	mov r0, sb
	mov r7, ip
	subs r1, r0, r7
	adds r0, r4, #0
	asrs r0, r1
	mov r1, r8
	ands r0, r1
	strb r0, [r2]
	movs r2, #1
	add ip, r2
	adds r6, #1
	cmp r6, #0x16
	ble _080165AE
	ldr r4, [sp, #8]
	adds r1, r4, r3
	ldrb r0, [r1]
	ldr r7, _0801661C
	strb r0, [r7]
	ldrb r1, [r1]
	adds r3, #1
	adds r2, r4, r3
	ldrb r0, [r2]
	ldr r4, _08016620
	strb r0, [r4]
	adds r1, r5, r1
	ldrb r2, [r2]
	adds r5, r1, r2
	adds r3, #1
	ldr r7, [sp]
	str r3, [r7]
	ldr r0, [sp, #4]
	str r5, [r0]
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08016618: .4byte 0x0200209A
_0801661C: .4byte byte_20020B1
_08016620: .4byte 0x020021BE

    .thumb
	.global sub_8016624
sub_8016624: @ 0x08016624
	push {lr}
	adds r1, r0, #0
	ldr r2, _0801665C
	ldrb r0, [r2]
	cmp r0, #0
	beq _0801666A
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08016668
	ldr r1, _08016660
	ldr r0, [r1]
	movs r2, #0xc0
	lsls r2, r2, #3
	adds r0, r0, r2
	str r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #5
	cmp r0, r2
	ble _0801664E
	str r2, [r1]
_0801664E:
	ldr r0, _08016664
	ldr r0, [r0]
	ldr r1, [r1]
	bl sub_80038D4
	b _0801666A
	.align 2, 0
_0801665C: .4byte 0x020021CB
_08016660: .4byte 0x020021E0
_08016664: .4byte dword_2000FC8
_08016668:
	strb r0, [r2]
_0801666A:
	pop {r0}
	bx r0
	.align 2, 0

    .thumb
sub_8016670: @ 0x08016670
	ldr r2, _08016680
	ldr r1, _08016684
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0x23
	strh r0, [r1]
	bx lr
	.align 2, 0
_08016680: .4byte gPreviousPlayerState
_08016684: .4byte gPlayerState

    .thumb
	.global sub_8016688
sub_8016688: @ 0x08016688
	ldr r2, _08016698
	ldr r1, _0801669C
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0x65
	strh r0, [r1]
	bx lr
	.align 2, 0
_08016698: .4byte gPreviousPlayerState
_0801669C: .4byte gPlayerState

    .thumb
	.global sub_80166A0
sub_80166A0: @ 0x080166A0
	push {lr}
	bl sub_8063578
	ldr r0, _080166C8
	ldrb r0, [r0]
	cmp r0, #0
	beq _080166F4
	ldr r1, _080166CC
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r1, _080166D0
	ldr r1, [r1]
	cmp r0, r1
	bne _080166D8
	ldr r0, _080166D4
	bl sub_0802FEDC
	b _080166DE
	.align 2, 0
_080166C8: .4byte 0x0203FA88
_080166CC: .4byte 0x02001108
_080166D0: .4byte 0x080CEF78
_080166D4: .4byte 0x0000014F
_080166D8:
	ldr r0, _080166EC
	bl sub_0802FEDC
_080166DE:
	ldr r0, _080166F0
	movs r1, #0
	movs r2, #4
	movs r3, #0
	bl sub_8034460
	b _0801670A
	.align 2, 0
_080166EC: .4byte 0x0000014D
_080166F0: .4byte 0x0000014B
_080166F4:
	movs r0, #0xa7
	lsls r0, r0, #1
	bl sub_0802FEDC
	movs r0, #0xa5
	lsls r0, r0, #1
	movs r1, #0
	movs r2, #4
	movs r3, #0
	bl sub_8034460
_0801670A:
	pop {r0}
	bx r0
	.align 2, 0

    .thumb
	.global sub_8016710
sub_8016710: @ 0x08016710
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	ldr r0, _08016724
	ldrb r0, [r0]
	cmp r0, #0
	bne _08016728
	movs r0, #0
	b _08016788
	.align 2, 0
_08016724: .4byte byte_20020BC
_08016728:
	ldr r0, [r4]
	ldr r1, _08016770
	ands r0, r1
	cmp r0, #1
	bne _08016780
	bl sub_8016B0C
	ldr r0, _08016774
	ldrb r0, [r0]
	cmp r0, #0
	beq _08016766
	ldr r3, _08016778
	movs r1, #0xa8
	lsls r1, r1, #1
	adds r0, r3, r1
	ldrh r0, [r0]
	ldr r2, _0801677C
	movs r6, #0xa9
	lsls r6, r6, #1
	adds r1, r3, r6
	ldrb r2, [r2]
	adds r1, r1, r2
	ldrb r1, [r1]
	adds r6, #2
	adds r2, r3, r6
	ldr r2, [r2]
	movs r3, #0x80
	lsls r3, r3, #9
	adds r2, r2, r3
	bl audio_new_fx
_08016766:
	movs r0, #0
	str r0, [r5]
	str r0, [r4]
	b _08016788
	.align 2, 0
_08016770: .4byte 0x0000030F
_08016774: .4byte byte_203EA89
_08016778: .4byte 0x080CE440
_0801677C: .4byte byte_203EA8C
_08016780:
	movs r0, #0
	str r0, [r5]
	str r0, [r4]
	movs r0, #1
_08016788:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

    .thumb
	.global sub_8016790
sub_8016790: @ 0x08016790
	push {r4, lr}
	adds r4, r0, #0
	ldr r3, _080167F8
	ldr r2, _080167FC
	lsls r1, r1, #2
	lsls r0, r4, #5
	adds r1, r1, r0
	adds r2, r1, r2
	ldr r0, [r2]
	lsls r0, r0, #0x10
	str r0, [r3]
	ldr r0, _08016800
	adds r0, r1, r0
	ldr r0, [r0]
	lsls r0, r0, #0x10
	str r0, [r3, #4]
	ldr r0, _08016804
	adds r1, r1, r0
	ldr r0, [r1]
	lsls r0, r0, #0x10
	str r0, [r3, #8]
	ldr r0, _08016808
	adds r0, r4, r0
	ldrb r0, [r0]
	strb r0, [r3, #0xe]
	ldr r1, _0801680C
	lsls r0, r4, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r3, #0xc]
	ldr r0, _08016810
	adds r0, r4, r0
	ldrb r1, [r0]
	ldr r0, _08016814
	ldrb r2, [r0]
	cmp r1, r2
	beq _080167DC
	strb r1, [r0]
_080167DC:
	ldrb r0, [r0]
	cmp r0, #0
	bne _08016824
	ldr r0, _08016818
	ldr r0, [r0]
	ldr r2, _0801681C
	ldr r1, _08016820
	ldrb r1, [r1, #2]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl sub_8003894
	b _08016838
	.align 2, 0
_080167F8: .4byte 0x03003578
_080167FC: .4byte 0x080CB9F0
_08016800: .4byte 0x080CBCD0
_08016804: .4byte 0x080CBFB0
_08016808: .4byte 0x080CB94C
_0801680C: .4byte 0x080CB964
_08016810: .4byte 0x080CB992
_08016814: .4byte 0x03003588
_08016818: .4byte dword_2000FC8
_0801681C: .4byte 0x080CC7EC
_08016820: .4byte byte_3002950
_08016824:
	ldr r0, _08016870
	ldr r0, [r0]
	ldr r2, _08016874
	ldr r1, _08016878
	ldrb r1, [r1, #2]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl sub_8003894
_08016838:
	ldr r0, _0801687C
	ldrb r0, [r0]
	cmp r0, #0
	bne _08016868
	ldr r3, _08016880
	ldr r2, _08016884
	lsls r1, r4, #1
	adds r1, r1, r4
	adds r0, r1, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x10
	str r0, [r3]
	ldr r3, _08016888
	adds r0, r2, #1
	adds r0, r1, r0
	ldrb r0, [r0]
	lsls r0, r0, #0x10
	str r0, [r3]
	ldr r3, _0801688C
	adds r2, #2
	adds r1, r1, r2
	ldrb r0, [r1]
	lsls r0, r0, #0x10
	str r0, [r3]
_08016868:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08016870: .4byte dword_2000FC8
_08016874: .4byte 0x080CC818
_08016878: .4byte byte_3002950
_0801687C: .4byte byte_20020B1
_08016880: .4byte 0x03003300
_08016884: .4byte 0x080CB9A9
_08016888: .4byte 0x03003308
_0801688C: .4byte 0x03003304

    .thumb
	.global sub_8016890
sub_8016890: @ 0x08016890
	push {r4, r5, lr}
	ldr r1, _080168CC
	ldr r4, _080168D0
	ldrh r0, [r4]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080168AA
	bl sub_800DE9C
_080168AA:
	ldr r0, _080168D4
	ldrh r1, [r4]
	strh r1, [r0]
	ldr r0, _080168D8
	ldrb r0, [r0]
	cmp r0, #1
	bne _080168E8
	movs r0, #0x37
	strh r0, [r4]
	ldr r0, _080168DC
	ldrb r0, [r0]
	cmp r0, #0
	bne _08016968
	ldr r0, _080168E0
	ldr r1, _080168E4
	b _0801697C
	.align 2, 0
_080168CC: .4byte gPlayerStateSettings
_080168D0: .4byte gPlayerState
_080168D4: .4byte gPreviousPlayerState
_080168D8: .4byte byte_20020B1
_080168DC: .4byte byte_20020B3
_080168E0: .4byte gPlayerSprite
_080168E4: .4byte 0x00000121
_080168E8:
	cmp r0, #2
	bne _0801690C
	movs r0, #0x39
	strh r0, [r4]
	ldr r0, _08016900
	ldrb r0, [r0]
	cmp r0, #0
	bne _08016968
	ldr r0, _08016904
	ldr r1, _08016908
	b _0801697C
	.align 2, 0
_08016900: .4byte byte_20020B3
_08016904: .4byte gPlayerSprite
_08016908: .4byte 0x00000159
_0801690C:
	cmp r0, #3
	bne _08016958
	ldr r4, _08016940
	ldr r0, [r4]
	bl audio_fx_still_active
	cmp r0, #0
	beq _0801692A
	ldr r0, _08016944
	ldrb r0, [r0]
	cmp r0, #0
	beq _0801692A
	ldr r0, [r4]
	bl audio_halt_fx
_0801692A:
	ldr r1, _08016948
	movs r0, #0x4d
	strh r0, [r1]
	ldr r0, _0801694C
	ldrb r0, [r0]
	cmp r0, #0
	bne _08016968
	ldr r0, _08016950
	ldr r1, _08016954
	b _0801697C
	.align 2, 0
_08016940: .4byte 0x020021DC
_08016944: .4byte byte_203EA89
_08016948: .4byte gPlayerState
_0801694C: .4byte byte_20020B3
_08016950: .4byte gPlayerSprite
_08016954: .4byte 0x00000199
_08016958:
	cmp r0, #4
	bne _08016990
	movs r0, #0x5c
	strh r0, [r4]
	ldr r0, _08016970
	ldrb r0, [r0]
	cmp r0, #0
	beq _08016978
_08016968:
	ldr r1, _08016974
	movs r0, #0
	strb r0, [r1, #0x13]
	b _080169BC
	.align 2, 0
_08016970: .4byte byte_20020B3
_08016974: .4byte gPlayerShadowSprite
_08016978:
	ldr r0, _08016988
	ldr r1, _0801698C
_0801697C:
	movs r2, #0
	movs r3, #1
	bl sub_8003368
	b _080169BC
	.align 2, 0
_08016988: .4byte gPlayerSprite
_0801698C: .4byte 0x000001E1
_08016990:
	ldr r2, _080169A8
	movs r1, #0
	strb r1, [r2, #0x13]
	movs r0, #0x1f
	strh r0, [r4]
	ldr r0, _080169AC
	ldrb r0, [r0]
	cmp r0, #0
	beq _080169B0
	strb r1, [r2, #0x13]
	b _080169BC
	.align 2, 0
_080169A8: .4byte gPlayerShadowSprite
_080169AC: .4byte byte_20020B3
_080169B0:
	ldr r0, _080169F0
	movs r1, #0xd9
	movs r2, #0
	movs r3, #1
	bl sub_8003368
_080169BC:
	ldr r4, _080169F4
	ldr r0, _080169F8
	ldrb r0, [r0]
	cmp r0, #0
	beq _08016A0C
	ldr r2, _080169FC
	movs r1, #0xad
	lsls r1, r1, #3
	adds r0, r2, r1
	ldrh r0, [r0]
	ldr r3, _08016A00
	ldr r5, _08016A04
	adds r1, r2, r5
	ldrb r3, [r3]
	adds r1, r1, r3
	ldrb r1, [r1]
	ldr r3, _08016A08
	adds r2, r2, r3
	ldr r2, [r2]
	movs r5, #0x80
	lsls r5, r5, #9
	adds r2, r2, r5
	bl audio_new_fx
	b _08016A10
	.align 2, 0
_080169F0: .4byte gPlayerSprite
_080169F4: .4byte 0x020021D8
_080169F8: .4byte byte_203EA89
_080169FC: .4byte 0x080CE440
_08016A00: .4byte byte_203EA8C
_08016A04: .4byte 0x0000056A
_08016A08: .4byte 0x0000056C
_08016A0C:
	movs r0, #1
	rsbs r0, r0, #0
_08016A10:
	str r0, [r4]
	ldr r0, _08016A48
	ldr r0, [r0]
	ldr r2, _08016A4C
	ldr r4, _08016A50
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
	ldr r1, _08016A54
	movs r0, #0
	strb r0, [r1]
	movs r1, #0
	strb r1, [r4, #0x10]
	ldr r0, _08016A58
	strb r1, [r0]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08016A48: .4byte dword_2000FC8
_08016A4C: .4byte dword_80CC290
_08016A50: .4byte gPlayerSprite
_08016A54: .4byte 0x0200108D
_08016A58: .4byte 0x0200108E

    .thumb
	.global sub_8016A5C
sub_8016A5C: @ 0x08016A5C
	push {lr}
	cmp r0, #2
	beq _08016A7A
	cmp r0, #2
	bgt _08016A6C
	cmp r0, #1
	beq _08016A76
	b _08016A8C
_08016A6C:
	cmp r0, #3
	beq _08016A7E
	cmp r0, #4
	beq _08016A82
	b _08016A8C
_08016A76:
	movs r0, #0xdb
	b _08016A84
_08016A7A:
	movs r0, #0xdc
	b _08016A84
_08016A7E:
	movs r0, #0xdd
	b _08016A84
_08016A82:
	movs r0, #0xde
_08016A84:
	movs r1, #0
	bl sub_80342CC
	b _08016A8E
_08016A8C:
	movs r0, #0
_08016A8E:
	pop {r1}
	bx r1
	.align 2, 0

	.thumb
	.global sub_8016A94
sub_8016A94: @ 0x08016A94
	push {lr}
	adds r2, r0, #0
	ldr r1, _08016AEC
	ldr r0, _08016AF0
	ldrh r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	bne _08016AE8
	ldr r0, _08016AF4
	ldrb r0, [r0, #0x13]
	cmp r0, #0
	beq _08016AE8
	movs r0, #0x80
	lsls r0, r0, #5
	ands r0, r1
	cmp r0, #0
	bne _08016AE8
	movs r0, #0x38
	adds r1, r2, #0
	bl sub_08040204
	ldr r0, _08016AF8
	movs r1, #1
	strb r1, [r0]
	ldr r0, _08016AFC
	strb r1, [r0]
	ldr r0, _08016B00
	ldr r0, [r0]
	ldr r2, _08016B04
	ldr r1, _08016B08
	ldrb r1, [r1, #0xa]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r2, [r1]
	movs r1, #0
	movs r3, #0
	bl sub_8003884
_08016AE8:
	pop {r0}
	bx r0
	.align 2, 0
_08016AEC: .4byte gPlayerStateSettings
_08016AF0: .4byte gPlayerState
_08016AF4: .4byte gGameStatus
_08016AF8: .4byte byte_20020BC
_08016AFC: .4byte 0x0200108E
_08016B00: .4byte dword_2000FC8
_08016B04: .4byte dword_80CC290
_08016B08: .4byte gPlayerSprite

    .thumb
    .global sub_8016B0C
sub_8016B0C: @ 0x08016B0C
	push {lr}
	bl sub_8042250
	pop {r0}
	bx r0
	.align 2, 0

	.thumb
	.global sub_8016B18
sub_8016B18: @ 0x08016B18
	push {lr}
	movs r0, #0x2a
	bl init_function
	movs r0, #0xfd
	movs r1, #0
	movs r2, #5
	movs r3, #0
	bl sub_8034460
	ldr r0, _08016B40
	ldrb r0, [r0]
	cmp r0, #0
	beq _08016B3A
	movs r0, #6
	bl audio_start_tune
_08016B3A:
	pop {r0}
	bx r0
	.align 2, 0
_08016B40: .4byte 0x0203EA88

	.thumb
	.global sub_8016B44
sub_8016B44: @ 0x08016B44
	push {r4, lr}
	bl sub_8048B1C
	ldr r2, _08016BB0
	ldr r1, _08016BB4
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0x62
	strh r0, [r1]
	ldr r4, _08016BB8
	ldr r1, _08016BBC
	adds r0, r4, #0
	movs r2, #0
	movs r3, #1
	bl sub_8003368
	ldr r0, _08016BC0
	ldrb r0, [r0]
	cmp r0, #0
	beq _08016B90
	ldr r3, _08016BC4
	adds r0, r3, #0
	adds r0, #0xa8
	ldrh r0, [r0]
	ldr r2, _08016BC8
	adds r1, r3, #0
	adds r1, #0xaa
	ldrb r2, [r2]
	adds r1, r1, r2
	ldrb r1, [r1]
	adds r2, r3, #0
	adds r2, #0xac
	ldr r2, [r2]
	movs r3, #0x80
	lsls r3, r3, #9
	adds r2, r2, r3
	bl audio_new_fx
_08016B90:
	ldrb r1, [r4, #0xa]
	movs r0, #0
	bl sub_8016790
	ldr r1, _08016BCC
	movs r0, #0
	strb r0, [r1]
	movs r0, #0xf
	bl sub_800DCE4
	bl sub_800DE04
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08016BB0: .4byte gPreviousPlayerState
_08016BB4: .4byte gPlayerState
_08016BB8: .4byte gPlayerSprite
_08016BBC: .4byte 0x00000109
_08016BC0: .4byte byte_203EA89
_08016BC4: .4byte 0x080CE440
_08016BC8: .4byte byte_203EA8C
_08016BCC: .4byte 0x0200108C

    .thumb
	.global sub_8016BD0
sub_8016BD0: @ 0x08016BD0
	push {r4, r5, lr}
	adds r5, r0, #0
	cmp r5, #0
	bne _08016BEC
	ldr r0, _08016C48
	ldr r0, [r0]
	ldr r0, [r0]
	ldrh r1, [r0, #0x1e]
	ldr r0, _08016C4C
	ldr r0, [r0]
	adds r0, r0, r1
	ldrb r0, [r0]
	bl sub_804888C
_08016BEC:
	ldr r0, _08016C50
	ldrb r0, [r0]
	cmp r0, #0
	beq _08016BFA
	movs r0, #1
	bl audio_start_tune
_08016BFA:
	bl sub_800DE9C
	ldr r2, _08016C54
	ldr r1, _08016C58
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0
	strh r0, [r1]
	ldr r4, _08016C5C
	adds r0, r4, #0
	movs r1, #0x19
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldrb r1, [r4, #0xa]
	movs r0, #0
	bl sub_8016790
	ldr r0, _08016C60
	strb r5, [r0]
	ldr r0, _08016C64
	movs r3, #1
	strb r3, [r0]
	ldr r1, _08016C68
	ldr r0, _08016C6C
	ldr r2, [r0]
	str r2, [r1]
	ldr r0, _08016C70
	strb r3, [r0]
	ldr r0, _08016C74
	str r2, [r0]
	movs r0, #1
	bl sub_80186F4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08016C48: .4byte 0x0203F8B4
_08016C4C: .4byte 0x0203DFB8
_08016C50: .4byte 0x0203EA88
_08016C54: .4byte gPreviousPlayerState
_08016C58: .4byte gPlayerState
_08016C5C: .4byte gPlayerSprite
_08016C60: .4byte 0x02002E4D
_08016C64: .4byte 0x02002E4C
_08016C68: .4byte 0x0203DFDC
_08016C6C: .4byte 0x020021C0
_08016C70: .4byte gInInteractionArea
_08016C74: .4byte 0x0203DFE0

    .thumb
    .global sub_8016C78
sub_8016C78: @ 0x08016C78
	push {r4, r5, lr}
	ldr r4, _08016C98
	strb r0, [r4, #0xa]
	ldr r0, _08016C9C
	ldrb r0, [r0]
	cmp r0, #1
	bne _08016CAC
	ldr r2, _08016CA0
	ldr r1, _08016CA4
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0x32
	strh r0, [r1]
	ldr r1, _08016CA8
	b _08016E0E
	.align 2, 0
_08016C98: .4byte gPlayerSprite
_08016C9C: .4byte byte_20020B1
_08016CA0: .4byte gPreviousPlayerState
_08016CA4: .4byte gPlayerState
_08016CA8: .4byte 0x00000141
_08016CAC:
	cmp r0, #2
	bne _08016CCC
	ldr r2, _08016CC0
	ldr r1, _08016CC4
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0x3d
	strh r0, [r1]
	ldr r1, _08016CC8
	b _08016E0E
	.align 2, 0
_08016CC0: .4byte gPreviousPlayerState
_08016CC4: .4byte gPlayerState
_08016CC8: .4byte 0x00000179
_08016CCC:
	cmp r0, #3
	bne _08016CEC
	ldr r2, _08016CE0
	ldr r1, _08016CE4
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0x4c
	strh r0, [r1]
	ldr r1, _08016CE8
	b _08016E0E
	.align 2, 0
_08016CE0: .4byte gPreviousPlayerState
_08016CE4: .4byte gPlayerState
_08016CE8: .4byte 0x000001A1
_08016CEC:
	cmp r0, #4
	bne _08016D44
	ldr r0, _08016D20
	ldr r3, _08016D24
	ldrh r2, [r3]
	lsls r1, r2, #1
	adds r1, r1, r0
	ldrh r1, [r1]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08016D08
	b _08016E18
_08016D08:
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08016D30
	ldr r0, _08016D28
	strh r2, [r0]
	movs r0, #0x51
	strh r0, [r3]
	ldr r1, _08016D2C
	b _08016E0E
	.align 2, 0
_08016D20: .4byte gPlayerStateSettings
_08016D24: .4byte gPlayerState
_08016D28: .4byte gPreviousPlayerState
_08016D2C: .4byte 0x000001D9
_08016D30:
	ldr r0, _08016D3C
	strh r2, [r0]
	movs r0, #0x50
	strh r0, [r3]
	ldr r1, _08016D40
	b _08016E0E
	.align 2, 0
_08016D3C: .4byte gPreviousPlayerState
_08016D40: .4byte 0x000001D1
_08016D44:
	ldr r0, _08016D74
	ldr r3, _08016D78
	ldrh r2, [r3]
	lsls r1, r2, #1
	adds r1, r1, r0
	ldrh r1, [r1]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08016E18
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08016D80
	ldr r0, _08016D7C
	strh r2, [r0]
	movs r0, #0x1b
	strh r0, [r3]
	adds r0, r4, #0
	movs r1, #0x69
	b _08016E10
	.align 2, 0
_08016D74: .4byte gPlayerStateSettings
_08016D78: .4byte gPlayerState
_08016D7C: .4byte gPreviousPlayerState
_08016D80:
	movs r0, #0x80
	lsls r0, r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08016DFC
	ldr r0, _08016DE4
	strh r2, [r0]
	movs r0, #0xc
	strh r0, [r3]
	adds r0, r4, #0
	movs r1, #0x31
	movs r2, #7
	movs r3, #0
	bl sub_80033A4
	adds r0, r4, #0
	movs r1, #6
	bl sub_800378C
	ldr r0, _08016DE8
	ldr r0, [r0]
	ldr r2, _08016DEC
	ldrb r1, [r4, #0xa]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r2, [r1]
	movs r1, #0
	movs r3, #0
	bl sub_8003884
	ldr r5, _08016DF0
	ldr r1, [r5]
	movs r4, #1
	rsbs r4, r4, #0
	cmp r1, r4
	beq _08016DD8
	ldr r0, _08016DF4
	ldrb r0, [r0]
	cmp r0, #0
	beq _08016DD6
	adds r0, r1, #0
	bl audio_halt_fx
_08016DD6:
	str r4, [r5]
_08016DD8:
	ldr r0, _08016DF8
	ldrb r1, [r0, #0xa]
	movs r0, #0xf
	bl sub_8016790
	b _08016ECC
	.align 2, 0
_08016DE4: .4byte gPreviousPlayerState
_08016DE8: .4byte dword_2000FC8
_08016DEC: .4byte dword_80CC290
_08016DF0: .4byte dword_20020B8
_08016DF4: .4byte byte_203EA89
_08016DF8: .4byte gPlayerSprite
_08016DFC:
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _08016E48
	ldr r0, _08016E38
	strh r2, [r0]
	movs r0, #0x47
	strh r0, [r3]
	ldr r1, _08016E3C
_08016E0E:
	adds r0, r4, #0
_08016E10:
	movs r2, #0
	movs r3, #0
	bl sub_8003368
_08016E18:
	ldr r0, _08016E40
	ldr r0, [r0]
	ldr r2, _08016E44
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
	b _08016ECC
	.align 2, 0
_08016E38: .4byte gPreviousPlayerState
_08016E3C: .4byte 0x00000101
_08016E40: .4byte dword_2000FC8
_08016E44: .4byte dword_80CC290
_08016E48:
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0
	beq _08016E9C
	ldr r0, _08016E8C
	strh r2, [r0]
	movs r0, #0x27
	strh r0, [r3]
	ldr r1, _08016E90
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r0, _08016E94
	ldr r0, [r0]
	ldr r2, _08016E98
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
	b _08016ECC
	.align 2, 0
_08016E8C: .4byte gPreviousPlayerState
_08016E90: .4byte 0x000001F9
_08016E94: .4byte dword_2000FC8
_08016E98: .4byte dword_80CC290
_08016E9C:
	ldr r0, _08016ED4
	strh r2, [r0]
	strh r1, [r3]
	adds r0, r4, #0
	movs r1, #0x19
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r0, _08016ED8
	ldr r0, [r0]
	ldr r2, _08016EDC
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
_08016ECC:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08016ED4: .4byte gPreviousPlayerState
_08016ED8: .4byte dword_2000FC8
_08016EDC: .4byte dword_80CC290

    .thumb
	.global sub_08016EE0
sub_08016EE0: @ 0x08016EE0
	push {r4, r5, r6, r7, lr}
	ldr r0, _08016EF0
	ldrb r0, [r0]
	cmp r0, #0
	bne _08016EF4
	movs r0, #0
	b _08017232
	.align 2, 0
_08016EF0: .4byte 0x0203DFC8
_08016EF4:
	movs r7, #1
	ldr r5, _08016F30
	ldr r1, [r5]
	movs r4, #1
	rsbs r4, r4, #0
	cmp r1, r4
	beq _08016F12
	ldr r0, _08016F34
	ldrb r0, [r0]
	cmp r0, #0
	beq _08016F10
	adds r0, r1, #0
	bl audio_halt_fx
_08016F10:
	str r4, [r5]
_08016F12:
	ldr r0, _08016F38
	ldrh r0, [r0]
	cmp r0, #0x6c
	beq _08016FE0
	cmp r0, #0x6c
	bgt _08016F42
	cmp r0, #0x15
	bne _08016F24
	b _08017158
_08016F24:
	cmp r0, #0x15
	bgt _08016F3C
	cmp r0, #0x14
	bne _08016F2E
	b _08017090
_08016F2E:
	b _08017228
	.align 2, 0
_08016F30: .4byte dword_20020B8
_08016F34: .4byte byte_203EA89
_08016F38: .4byte 0x0203DFCA
_08016F3C:
	cmp r0, #0x2b
	beq _08017018
	b _08017228
_08016F42:
	cmp r0, #0x76
	beq _08016F80
	cmp r0, #0x76
	bgt _08016F50
	cmp r0, #0x6d
	beq _08016FFA
	b _08017228
_08016F50:
	cmp r0, #0x98
	beq _08016F56
	b _08017228
_08016F56:
	ldr r0, _08016F78
	ldrh r0, [r0]
	cmp r0, #0x65
	bne _08016F60
	b _0801722C
_08016F60:
	ldr r0, _08016F7C
	ldr r0, [r0]
	movs r1, #0
	movs r2, #0
	bl sub_800386C
	movs r0, #0
	bl sub_8016C78
	bl sub_08046D78
	b _0801722C
	.align 2, 0
_08016F78: .4byte gPlayerState
_08016F7C: .4byte dword_2000FC8
_08016F80:
	ldr r0, _08016FC4
	ldrh r0, [r0]
	cmp r0, #0x23
	bne _08016F8A
	b _0801722C
_08016F8A:
	ldr r1, _08016FC8
	ldrb r0, [r1]
	cmp r0, #0
	bne _08016F94
	b _0801722C
_08016F94:
	movs r0, #0
	strb r0, [r1]
	ldr r0, _08016FCC
	ldr r0, [r0]
	movs r1, #0
	movs r2, #0
	bl sub_800386C
	movs r0, #0
	bl sub_8016C78
	bl sub_8016670
	movs r4, #0xa4
	lsls r4, r4, #1
	adds r0, r4, #0
	movs r1, #0
	bl sub_80342CC
	cmp r0, #0
	bne _08016FD0
	adds r0, r4, #0
	b _08016FD2
	.align 2, 0
_08016FC4: .4byte gPlayerState
_08016FC8: .4byte 0x020021C4
_08016FCC: .4byte dword_2000FC8
_08016FD0:
	ldr r0, _08016FDC
_08016FD2:
	movs r1, #0
	bl sub_80342F8
	b _0801722C
	.align 2, 0
_08016FDC: .4byte 0x00000149
_08016FE0:
	movs r0, #0xcd
	movs r1, #0
	bl sub_80342CC
	cmp r0, #0
	beq _08016FEE
	b _08017172
_08016FEE:
	movs r0, #0x11
	bl init_function
	movs r0, #0xcb
	lsls r0, r0, #1
	b _08017062
_08016FFA:
	movs r0, #0xcd
	movs r1, #0
	bl sub_80342CC
	cmp r0, #0
	bne _08017008
	b _08017172
_08017008:
	movs r0, #0x11
	bl init_function
	ldr r0, _08017014
	b _08017062
	.align 2, 0
_08017014: .4byte 0x00000197
_08017018:
	ldr r0, _08017070
	ldrb r0, [r0]
	cmp r0, #0
	bne _08017022
	b _08017172
_08017022:
	ldr r1, _08017074
	movs r0, #1
	strb r0, [r1]
	ldr r4, _08017078
	ldrb r1, [r4]
	movs r0, #0xdf
	bl sub_80342F8
	ldr r1, _0801707C
	ldr r0, _08017080
	str r0, [r1]
	ldr r1, _08017084
	ldr r0, _08017088
	ldr r0, [r0]
	strh r0, [r1]
	ldr r2, _0801708C
	ldrb r0, [r4]
	adds r1, r0, #1
	strb r1, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	adds r0, r0, r2
	ldr r0, [r0]
	bl init_function
	movs r0, #0xe4
	movs r1, #0
	movs r2, #2
	movs r3, #0
	bl sub_8034460
	movs r0, #0xe5
_08017062:
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_8034460
	b _0801722C
	.align 2, 0
_08017070: .4byte 0x0203E10F
_08017074: .4byte byte_20020B2
_08017078: .4byte 0x0200107E
_0801707C: .4byte 0x0203F98C
_08017080: .4byte 0x080B21B4
_08017084: .4byte 0x0203F992
_08017088: .4byte 0x080B21B8
_0801708C: .4byte 0x080CEBC8
_08017090:
	ldr r0, _0801712C
	ldrb r0, [r0, #0x16]
	cmp r0, #0
	beq _08017172
	ldr r2, _08017130
	ldr r1, _08017134
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0x26
	strh r0, [r1]
	ldr r4, _08017138
	adds r0, r4, #0
	movs r1, #0xe9
	movs r2, #0xd
	movs r3, #1
	bl sub_8003368
	ldr r0, _0801713C
	ldr r0, [r0]
	ldr r2, _08017140
	ldrb r1, [r4, #0xa]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r2, [r1]
	movs r1, #0
	movs r3, #0
	bl sub_8003884
	ldrb r1, [r4, #0xa]
	movs r0, #0x16
	bl sub_8016790
	ldr r6, _08017144
	ldrb r0, [r6]
	cmp r0, #0
	bne _080170DA
	b _0801722C
_080170DA:
	ldr r4, _08017148
	adds r0, r4, #0
	adds r0, #0x98
	ldrh r0, [r0]
	ldr r5, _0801714C
	adds r1, r4, #0
	adds r1, #0x9a
	ldrb r2, [r5]
	adds r1, r1, r2
	ldrb r1, [r1]
	adds r2, r4, #0
	adds r2, #0x9c
	ldr r2, [r2]
	movs r3, #0x80
	lsls r3, r3, #9
	adds r2, r2, r3
	bl audio_new_fx
	ldrb r0, [r6]
	cmp r0, #0
	bne _08017106
	b _0801722C
_08017106:
	movs r1, #0xd1
	lsls r1, r1, #3
	adds r0, r4, r1
	ldrh r0, [r0]
	ldr r2, _08017150
	adds r1, r4, r2
	ldrb r5, [r5]
	adds r1, r1, r5
	ldrb r1, [r1]
	ldr r3, _08017154
	adds r2, r4, r3
	ldr r2, [r2]
	movs r4, #0x80
	lsls r4, r4, #9
	adds r2, r2, r4
	bl audio_new_fx
	b _0801722C
	.align 2, 0
_0801712C: .4byte 0x0200209A
_08017130: .4byte gPreviousPlayerState
_08017134: .4byte gPlayerState
_08017138: .4byte gPlayerSprite
_0801713C: .4byte dword_2000FC8
_08017140: .4byte dword_80CC290
_08017144: .4byte byte_203EA89
_08017148: .4byte 0x080CE440
_0801714C: .4byte byte_203EA8C
_08017150: .4byte 0x0000068A
_08017154: .4byte 0x0000068C
_08017158:
	ldr r0, _08017178
	ldrb r0, [r0, #5]
	cmp r0, #0
	beq _08017172
	ldr r1, _0801717C
	movs r0, #0x12
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bne _08017180
	adds r1, r0, #0
	movs r0, #3
	bl sub_08040204
_08017172:
	movs r7, #0
	b _0801722C
	.align 2, 0
_08017178: .4byte 0x0200209A
_0801717C: .4byte gGameStatus
_08017180:
	ldr r2, _080171F4
	ldr r1, _080171F8
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0x43
	strh r0, [r1]
	ldr r4, _080171FC
	ldr r1, _08017200
	adds r0, r4, #0
	movs r2, #0
	movs r3, #1
	bl sub_8003368
	ldr r0, _08017204
	ldr r0, [r0]
	ldr r2, _08017208
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
	ldr r0, _0801720C
	ldrb r0, [r0]
	cmp r0, #0
	beq _080171E6
	ldr r2, _08017210
	movs r1, #0xce
	lsls r1, r1, #3
	adds r0, r2, r1
	ldrh r0, [r0]
	ldr r3, _08017214
	ldr r4, _08017218
	adds r1, r2, r4
	ldrb r3, [r3]
	adds r1, r1, r3
	ldrb r1, [r1]
	ldr r3, _0801721C
	adds r2, r2, r3
	ldr r2, [r2]
	movs r4, #0x80
	lsls r4, r4, #9
	adds r2, r2, r4
	bl audio_new_fx
_080171E6:
	ldr r0, _08017220
	movs r1, #0xb4
	strb r1, [r0]
	ldr r0, _08017224
	strb r1, [r0]
	b _0801722C
	.align 2, 0
_080171F4: .4byte gPreviousPlayerState
_080171F8: .4byte gPlayerState
_080171FC: .4byte gPlayerSprite
_08017200: .4byte 0x000001F1
_08017204: .4byte dword_2000FC8
_08017208: .4byte dword_80CC290
_0801720C: .4byte byte_203EA89
_08017210: .4byte 0x080CE440
_08017214: .4byte byte_203EA8C
_08017218: .4byte 0x00000672
_0801721C: .4byte 0x00000674
_08017220: .4byte 0x02002094
_08017224: .4byte 0x02002095
_08017228:
	.2byte 0xEE00, 0xEE00
_0801722C:
	bl sub_800DE9C
	adds r0, r7, #0
_08017232:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

    .thumb
	.global DoPackWack
DoPackWack: @ 0x08017238
	push {r4, lr}
	ldr r0, _08017280
	ldrb r0, [r0, #1]
	cmp r0, #0
	beq _0801727A
	ldr r2, _08017284
	ldr r1, _08017288
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #8
	strh r0, [r1]
	ldr r4, _0801728C
	adds r0, r4, #0
	movs r1, #0xb1
	movs r2, #0
	movs r3, #1
	bl sub_8003368
	ldrb r1, [r4, #0xa]
	movs r0, #0
	bl sub_8016790
	ldr r0, _08017290
	ldr r0, [r0]
	ldr r2, _08017294
	ldrb r1, [r4, #0xa]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r2, [r1]
	movs r1, #0
	movs r3, #0
	bl sub_8003884
_0801727A:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08017280: .4byte 0x0200209A
_08017284: .4byte gPreviousPlayerState
_08017288: .4byte gPlayerState
_0801728C: .4byte gPlayerSprite
_08017290: .4byte dword_2000FC8
_08017294: .4byte dword_80CC290

    .thumb
	.global DoJump
DoJump: @ 0x08017298
	push {r4, r5, r6, r7, lr}
	ldr r0, _08017358
	ldrb r0, [r0]
	cmp r0, #0
	bne _080172B0
	ldr r1, _0801735C
	ldrb r0, [r1]
	cmp r0, #0
	beq _080172B0
	ldrb r0, [r1, #2]
	cmp r0, #0xa
	beq _08017350
_080172B0:
	bl sub_8017D9C
	ldr r2, _08017360
	ldr r1, _08017364
	ldrh r0, [r1]
	strh r0, [r2]
	movs r4, #1
	strh r4, [r1]
	ldr r7, _08017368
	adds r0, r7, #0
	movs r1, #9
	movs r2, #0
	movs r3, #1
	bl sub_8003368
	ldr r0, _0801736C
	ldr r2, _08017370
	str r2, [r0]
	ldr r0, _08017374
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #0xb
	bl CallARM_store_jump_and_other_value
	ldr r0, _08017378
	strb r4, [r0]
	ldr r0, _0801737C
	ldrb r0, [r0]
	cmp r0, #0
	beq _08017330
	ldr r4, _08017380
	movs r0, #0
	movs r1, #2
	bl RandomMinMax
	lsls r0, r0, #3
	adds r0, r0, r4
	ldrh r6, [r0]
	movs r0, #0
	movs r1, #2
	bl RandomMinMax
	ldr r1, _08017384
	lsls r0, r0, #3
	ldrb r1, [r1]
	adds r0, r0, r1
	adds r1, r4, #2
	adds r0, r0, r1
	ldrb r5, [r0]
	movs r0, #0
	movs r1, #2
	bl RandomMinMax
	lsls r0, r0, #3
	adds r4, #4
	adds r0, r0, r4
	ldr r2, [r0]
	movs r0, #0x80
	lsls r0, r0, #9
	adds r2, r2, r0
	adds r0, r6, #0
	adds r1, r5, #0
	bl audio_new_fx
_08017330:
	ldrb r1, [r7, #0xa]
	movs r0, #0
	bl sub_8016790
	ldr r0, _0801735C
	ldr r1, [r0, #0x2c]
	movs r0, #0xb4
	lsls r0, r0, #0xf
	cmp r1, r0
	beq _08017350
	ldr r1, _08017388
	ldr r0, [r1, #4]
	movs r2, #0xc0
	lsls r2, r2, #0xa
	adds r0, r0, r2
	str r0, [r1, #4]
_08017350:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08017358: .4byte 0x03003588
_0801735C: .4byte 0x030028FC
_08017360: .4byte gPreviousPlayerState
_08017364: .4byte gPlayerState
_08017368: .4byte gPlayerSprite
_0801736C: .4byte 0x020021E0
_08017370: .4byte 0xFFFFE000
_08017374: .4byte dword_2000FC8
_08017378: .4byte 0x020021CB
_0801737C: .4byte byte_203EA89
_08017380: .4byte 0x080CE440
_08017384: .4byte byte_203EA8C
_08017388: .4byte gPlayerPos



	.thumb
	.global sub_801738C
sub_801738C: @ 0x0801738C
	push {r4, r5, r6, r7, lr}
	ldr r0, _08017448
	ldrb r0, [r0]
	cmp r0, #0
	bne _080173A4
	ldr r1, _0801744C
	ldrb r0, [r1]
	cmp r0, #0
	beq _080173A4
	ldrb r0, [r1, #2]
	cmp r0, #0xa
	beq _08017442
_080173A4:
	ldr r2, _08017450
	ldr r1, _08017454
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0x21
	strh r0, [r1]
	ldr r7, _08017458
	ldr r1, _0801745C
	adds r0, r7, #0
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r0, _08017460
	ldr r2, _08017464
	str r2, [r0]
	ldr r0, _08017468
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #0xb
	bl CallARM_store_jump_and_other_value
	ldr r1, _0801746C
	movs r0, #1
	strb r0, [r1]
	ldr r0, _08017470
	ldrb r0, [r0]
	cmp r0, #0
	beq _08017422
	ldr r4, _08017474
	movs r0, #0
	movs r1, #2
	bl RandomMinMax
	lsls r0, r0, #3
	adds r0, r0, r4
	ldrh r6, [r0]
	movs r0, #0
	movs r1, #2
	bl RandomMinMax
	ldr r1, _08017478
	lsls r0, r0, #3
	ldrb r1, [r1]
	adds r0, r0, r1
	adds r1, r4, #2
	adds r0, r0, r1
	ldrb r5, [r0]
	movs r0, #0
	movs r1, #2
	bl RandomMinMax
	lsls r0, r0, #3
	adds r4, #4
	adds r0, r0, r4
	ldr r2, [r0]
	movs r0, #0x80
	lsls r0, r0, #9
	adds r2, r2, r0
	adds r0, r6, #0
	adds r1, r5, #0
	bl audio_new_fx
_08017422:
	ldrb r1, [r7, #0xa]
	movs r0, #0
	bl sub_8016790
	ldr r0, _0801744C
	ldr r1, [r0, #0x2c]
	movs r0, #0xb4
	lsls r0, r0, #0xf
	cmp r1, r0
	beq _08017442
	ldr r1, _0801747C
	ldr r0, [r1, #4]
	movs r2, #0xc0
	lsls r2, r2, #0xa
	adds r0, r0, r2
	str r0, [r1, #4]
_08017442:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08017448: .4byte 0x03003588
_0801744C: .4byte 0x030028FC
_08017450: .4byte gPreviousPlayerState
_08017454: .4byte gPlayerState
_08017458: .4byte gPlayerSprite
_0801745C: .4byte 0x00000111
_08017460: .4byte 0x020021E0
_08017464: .4byte 0xFFFFE000
_08017468: .4byte dword_2000FC8
_0801746C: .4byte 0x020021CB
_08017470: .4byte byte_203EA89
_08017474: .4byte 0x080CE440
_08017478: .4byte byte_203EA8C
_0801747C: .4byte gPlayerPos




    .thumb
	.global sub_8017480
sub_8017480: @ 0x08017480
	push {r4, r5, lr}
	ldr r0, _08017534
	ldrb r0, [r0]
	cmp r0, #0
	bne _08017492
	ldr r0, _08017538
	ldr r0, [r0]
	cmp r0, #0
	beq _0801752C
_08017492:
	ldr r2, _0801753C
	ldr r1, _08017540
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0xb
	strh r0, [r1]
	ldr r0, _08017544
	movs r1, #0xc1
	movs r2, #0
	movs r3, #1
	bl sub_8003368
	ldr r0, _08017548
	ldr r2, _0801754C
	str r2, [r0]
	ldr r0, _08017550
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #0xb
	bl CallARM_store_jump_and_other_value
	ldr r1, _08017554
	movs r0, #1
	strb r0, [r1]
	ldr r5, _08017558
	ldr r1, [r5]
	movs r4, #1
	rsbs r4, r4, #0
	cmp r1, r4
	beq _080174DE
	ldr r0, _0801755C
	ldrb r0, [r0]
	cmp r0, #0
	beq _080174DC
	adds r0, r1, #0
	bl audio_halt_fx
_080174DC:
	str r4, [r5]
_080174DE:
	ldr r0, _0801755C
	ldrb r0, [r0]
	cmp r0, #0
	beq _0801750A
	ldr r3, _08017560
	adds r0, r3, #0
	adds r0, #0xa0
	ldrh r0, [r0]
	ldr r2, _08017564
	adds r1, r3, #0
	adds r1, #0xa2
	ldrb r2, [r2]
	adds r1, r1, r2
	ldrb r1, [r1]
	adds r2, r3, #0
	adds r2, #0xa4
	ldr r2, [r2]
	movs r3, #0x80
	lsls r3, r3, #9
	adds r2, r2, r3
	bl audio_new_fx
_0801750A:
	ldr r0, _08017544
	ldrb r1, [r0, #0xa]
	movs r0, #0xf
	bl sub_8016790
	ldr r0, _08017534
	ldr r1, [r0, #0x2c]
	movs r0, #0xb4
	lsls r0, r0, #0xf
	cmp r1, r0
	beq _0801752C
	ldr r1, _08017568
	ldr r0, [r1, #4]
	movs r2, #0xc0
	lsls r2, r2, #0xa
	adds r0, r0, r2
	str r0, [r1, #4]
_0801752C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08017534: .4byte 0x030028FC
_08017538: .4byte dword_203DFC4
_0801753C: .4byte gPreviousPlayerState
_08017540: .4byte gPlayerState
_08017544: .4byte gPlayerSprite
_08017548: .4byte 0x020021E0
_0801754C: .4byte 0xFFFFE000
_08017550: .4byte dword_2000FC8
_08017554: .4byte 0x020021CB
_08017558: .4byte dword_20020B8
_0801755C: .4byte byte_203EA89
_08017560: .4byte 0x080CE440
_08017564: .4byte byte_203EA8C
_08017568: .4byte gPlayerPos


	.thumb
	.global sub_801756C
sub_801756C: @ 0x0801756C
	push {r4, r5, r6, r7, lr}
	ldr r0, _0801762C
	ldrb r0, [r0]
	cmp r0, #0
	bne _08017584
	ldr r1, _08017630
	ldrb r0, [r1]
	cmp r0, #0
	beq _08017584
	ldrb r0, [r1, #2]
	cmp r0, #0xa
	beq _08017626
_08017584:
	bl sub_8017D9C
	ldr r2, _08017634
	ldr r1, _08017638
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0x29
	strh r0, [r1]
	ldr r7, _0801763C
	ldr r1, _08017640
	adds r0, r7, #0
	movs r2, #0
	movs r3, #1
	bl sub_8003368
	ldr r0, _08017644
	ldr r2, _08017648
	str r2, [r0]
	ldr r0, _0801764C
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #0xb
	bl CallARM_store_jump_and_other_value
	ldr r1, _08017650
	movs r0, #1
	strb r0, [r1]
	ldr r0, _08017654
	ldrb r0, [r0]
	cmp r0, #0
	beq _08017606
	ldr r4, _08017658
	movs r0, #0
	movs r1, #2
	bl RandomMinMax
	lsls r0, r0, #3
	adds r0, r0, r4
	ldrh r6, [r0]
	movs r0, #0
	movs r1, #2
	bl RandomMinMax
	ldr r1, _0801765C
	lsls r0, r0, #3
	ldrb r1, [r1]
	adds r0, r0, r1
	adds r1, r4, #2
	adds r0, r0, r1
	ldrb r5, [r0]
	movs r0, #0
	movs r1, #2
	bl RandomMinMax
	lsls r0, r0, #3
	adds r4, #4
	adds r0, r0, r4
	ldr r2, [r0]
	movs r0, #0x80
	lsls r0, r0, #9
	adds r2, r2, r0
	adds r0, r6, #0
	adds r1, r5, #0
	bl audio_new_fx
_08017606:
	ldrb r1, [r7, #0xa]
	movs r0, #5
	bl sub_8016790
	ldr r0, _08017630
	ldr r1, [r0, #0x2c]
	movs r0, #0xb4
	lsls r0, r0, #0xf
	cmp r1, r0
	beq _08017626
	ldr r1, _08017660
	ldr r0, [r1, #4]
	movs r2, #0xc0
	lsls r2, r2, #0xa
	adds r0, r0, r2
	str r0, [r1, #4]
_08017626:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801762C: .4byte 0x03003588
_08017630: .4byte 0x030028FC
_08017634: .4byte gPreviousPlayerState
_08017638: .4byte gPlayerState
_0801763C: .4byte gPlayerSprite
_08017640: .4byte 0x00000201
_08017644: .4byte 0x020021E0
_08017648: .4byte 0xFFFFE000
_0801764C: .4byte dword_2000FC8
_08017650: .4byte 0x020021CB
_08017654: .4byte byte_203EA89
_08017658: .4byte 0x080CE440
_0801765C: .4byte byte_203EA8C
_08017660: .4byte gPlayerPos

	.thumb
	.global sub_8017664
sub_8017664: @ 0x08017664
	push {r4, r5, r6, lr}
	ldr r0, _0801770C
	ldrb r0, [r0]
	cmp r0, #0
	bne _0801767C
	ldr r1, _08017710
	ldrb r0, [r1]
	cmp r0, #0
	beq _0801767C
	ldrb r0, [r1, #2]
	cmp r0, #0xa
	beq _08017706
_0801767C:
	ldr r2, _08017714
	ldr r1, _08017718
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0x33
	strh r0, [r1]
	ldr r6, _0801771C
	ldr r1, _08017720
	adds r0, r6, #0
	movs r2, #0
	movs r3, #1
	bl sub_8003368
	ldr r0, _08017724
	ldr r2, _08017728
	str r2, [r0]
	ldr r0, _0801772C
	ldr r0, [r0]
	movs r1, #0xd0
	lsls r1, r1, #0xa
	bl CallARM_store_jump_and_other_value
	ldr r1, _08017730
	movs r0, #1
	strb r0, [r1]
	ldr r0, _08017734
	ldrb r0, [r0]
	cmp r0, #0
	beq _080176E6
	ldr r4, _08017738
	movs r0, #0
	movs r1, #2
	bl RandomMinMax
	lsls r0, r0, #3
	adds r0, r0, r4
	ldrh r5, [r0]
	movs r0, #0
	movs r1, #2
	bl RandomMinMax
	ldr r1, _0801773C
	lsls r0, r0, #3
	ldrb r1, [r1]
	adds r0, r0, r1
	adds r4, #2
	adds r0, r0, r4
	ldrb r1, [r0]
	movs r2, #0xc0
	lsls r2, r2, #9
	adds r0, r5, #0
	bl audio_new_fx
_080176E6:
	ldrb r1, [r6, #0xa]
	movs r0, #0
	bl sub_8016790
	ldr r0, _08017710
	ldr r1, [r0, #0x2c]
	movs r0, #0xb4
	lsls r0, r0, #0xf
	cmp r1, r0
	beq _08017706
	ldr r1, _08017740
	ldr r0, [r1, #4]
	movs r2, #0xc0
	lsls r2, r2, #0xa
	adds r0, r0, r2
	str r0, [r1, #4]
_08017706:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0801770C: .4byte 0x03003588
_08017710: .4byte 0x030028FC
_08017714: .4byte gPreviousPlayerState
_08017718: .4byte gPlayerState
_0801771C: .4byte gPlayerSprite
_08017720: .4byte 0x00000131
_08017724: .4byte 0x020021E0
_08017728: .4byte 0xFFFFE000
_0801772C: .4byte dword_2000FC8
_08017730: .4byte 0x020021CB
_08017734: .4byte byte_203EA89
_08017738: .4byte 0x080CE440
_0801773C: .4byte byte_203EA8C
_08017740: .4byte gPlayerPos

	.thumb
	.global sub_8017744
sub_8017744: @ 0x08017744
	push {r4, r5, r6, lr}
	ldr r0, _080177EC
	ldrb r0, [r0]
	cmp r0, #0
	bne _0801775C
	ldr r1, _080177F0
	ldrb r0, [r1]
	cmp r0, #0
	beq _0801775C
	ldrb r0, [r1, #2]
	cmp r0, #0xa
	beq _080177E6
_0801775C:
	ldr r2, _080177F4
	ldr r1, _080177F8
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0x3e
	strh r0, [r1]
	ldr r6, _080177FC
	ldr r1, _08017800
	adds r0, r6, #0
	movs r2, #0
	movs r3, #1
	bl sub_8003368
	ldr r0, _08017804
	ldr r2, _08017808
	str r2, [r0]
	ldr r0, _0801780C
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #0xb
	bl CallARM_store_jump_and_other_value
	ldr r1, _08017810
	movs r0, #1
	strb r0, [r1]
	ldr r0, _08017814
	ldrb r0, [r0]
	cmp r0, #0
	beq _080177C6
	ldr r4, _08017818
	movs r0, #0
	movs r1, #2
	bl RandomMinMax
	lsls r0, r0, #3
	adds r0, r0, r4
	ldrh r5, [r0]
	movs r0, #0
	movs r1, #2
	bl RandomMinMax
	ldr r1, _0801781C
	lsls r0, r0, #3
	ldrb r1, [r1]
	adds r0, r0, r1
	adds r4, #2
	adds r0, r0, r4
	ldrb r1, [r0]
	movs r2, #0xc0
	lsls r2, r2, #9
	adds r0, r5, #0
	bl audio_new_fx
_080177C6:
	ldrb r1, [r6, #0xa]
	movs r0, #0
	bl sub_8016790
	ldr r0, _080177F0
	ldr r1, [r0, #0x2c]
	movs r0, #0xb4
	lsls r0, r0, #0xf
	cmp r1, r0
	beq _080177E6
	ldr r1, _08017820
	ldr r0, [r1, #4]
	movs r2, #0xc0
	lsls r2, r2, #0xa
	adds r0, r0, r2
	str r0, [r1, #4]
_080177E6:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080177EC: .4byte 0x03003588
_080177F0: .4byte 0x030028FC
_080177F4: .4byte gPreviousPlayerState
_080177F8: .4byte gPlayerState
_080177FC: .4byte gPlayerSprite
_08017800: .4byte 0x00000181
_08017804: .4byte 0x020021E0
_08017808: .4byte 0xFFFFE000
_0801780C: .4byte dword_2000FC8
_08017810: .4byte 0x020021CB
_08017814: .4byte byte_203EA89
_08017818: .4byte 0x080CE440
_0801781C: .4byte byte_203EA8C
_08017820: .4byte gPlayerPos

	.thumb
	.global sub_8017824
sub_8017824: @ 0x08017824
	push {r4, lr}
	ldr r0, _0801787C
	ldrb r0, [r0]
	cmp r0, #0
	bne _0801783C
	ldr r1, _08017880
	ldrb r0, [r1]
	cmp r0, #0
	beq _0801783C
	ldrb r0, [r1, #2]
	cmp r0, #0xa
	beq _08017918
_0801783C:
	ldr r1, _08017884
	ldr r4, _08017888
	ldrh r2, [r4]
	lsls r0, r2, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0801789C
	bl sub_8017D9C
	ldr r1, _0801788C
	ldrh r0, [r4]
	strh r0, [r1]
	movs r0, #0x57
	strh r0, [r4]
	ldr r0, _08017890
	ldr r1, _08017894
	movs r2, #0
	movs r3, #1
	bl sub_8003368
	ldr r0, _08017898
	ldr r0, [r0]
	movs r1, #0xb0
	lsls r1, r1, #0xb
	movs r2, #0
	bl CallARM_store_jump_and_other_value
	b _080178C8
	.align 2, 0
_0801787C: .4byte 0x03003588
_08017880: .4byte 0x030028FC
_08017884: .4byte gPlayerStateSettings
_08017888: .4byte gPlayerState
_0801788C: .4byte gPreviousPlayerState
_08017890: .4byte gPlayerSprite
_08017894: .4byte 0x000001B1
_08017898: .4byte dword_2000FC8
_0801789C:
	ldr r0, _08017920
	strh r2, [r0]
	movs r0, #0x55
	strh r0, [r4]
	ldr r0, _08017924
	ldr r1, _08017928
	movs r2, #0
	movs r3, #1
	bl sub_8003368
	ldr r0, _0801792C
	ldr r2, _08017930
	str r2, [r0]
	ldr r0, _08017934
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #0xb
	bl CallARM_store_jump_and_other_value
	ldr r1, _08017938
	movs r0, #1
	strb r0, [r1]
_080178C8:
	ldr r0, _0801793C
	ldrb r0, [r0]
	cmp r0, #0
	beq _080178F6
	ldr r2, _08017940
	movs r1, #0xc1
	lsls r1, r1, #3
	adds r0, r2, r1
	ldrh r0, [r0]
	ldr r3, _08017944
	ldr r4, _08017948
	adds r1, r2, r4
	ldrb r3, [r3]
	adds r1, r1, r3
	ldrb r1, [r1]
	ldr r3, _0801794C
	adds r2, r2, r3
	ldr r2, [r2]
	movs r4, #0x80
	lsls r4, r4, #9
	adds r2, r2, r4
	bl audio_new_fx
_080178F6:
	ldr r0, _08017924
	ldrb r1, [r0, #0xa]
	movs r0, #0
	bl sub_8016790
	ldr r0, _08017950
	ldr r1, [r0, #0x2c]
	movs r0, #0xb4
	lsls r0, r0, #0xf
	cmp r1, r0
	beq _08017918
	ldr r1, _08017954
	ldr r0, [r1, #4]
	movs r2, #0xc0
	lsls r2, r2, #0xa
	adds r0, r0, r2
	str r0, [r1, #4]
_08017918:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08017920: .4byte gPreviousPlayerState
_08017924: .4byte gPlayerSprite
_08017928: .4byte 0x000001B1
_0801792C: .4byte 0x020021E0
_08017930: .4byte 0xFFFFE000
_08017934: .4byte dword_2000FC8
_08017938: .4byte 0x020021CB
_0801793C: .4byte byte_203EA89
_08017940: .4byte 0x080CE440
_08017944: .4byte byte_203EA8C
_08017948: .4byte 0x0000060A
_0801794C: .4byte 0x0000060C
_08017950: .4byte 0x030028FC
_08017954: .4byte gPlayerPos


    .thumb
	.global sub_8017958
sub_8017958: @ 0x08017958
	push {r4, lr}
	ldr r0, _080179A4
	ldrb r0, [r0, #0x15]
	cmp r0, #0
	bne _0801796A
	ldr r0, _080179A8
	ldrb r0, [r0]
	cmp r0, #4
	bne _08017A28
_0801796A:
	ldr r2, _080179AC
	ldrb r1, [r2, #5]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08017A28
	ldr r1, _080179B0
	ldrb r0, [r2, #5]
	str r0, [r1]
	ldr r1, _080179B4
	ldrb r0, [r2, #4]
	str r0, [r1]
	ldr r0, _080179A8
	ldrb r0, [r0]
	cmp r0, #4
	beq _080179C4
	ldr r2, _080179B8
	ldr r1, _080179BC
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #6
	strh r0, [r1]
	ldr r0, _080179C0
	movs r1, #0x71
	movs r2, #0
	movs r3, #1
	bl sub_8003368
	b _080179DC
	.align 2, 0
_080179A4: .4byte 0x0200209A
_080179A8: .4byte byte_20020B1
_080179AC: .4byte 0x030028FC
_080179B0: .4byte 0x020021E8
_080179B4: .4byte 0x020021EC
_080179B8: .4byte gPreviousPlayerState
_080179BC: .4byte gPlayerState
_080179C0: .4byte gPlayerSprite
_080179C4:
	ldr r2, _08017A30
	ldr r1, _08017A34
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0x5e
	strh r0, [r1]
	ldr r0, _08017A38
	ldr r1, _08017A3C
	movs r2, #0
	movs r3, #1
	bl sub_8003368
_080179DC:
	ldr r0, _08017A40
	ldr r0, [r0]
	ldr r2, _08017A44
	ldr r4, _08017A38
	ldrb r1, [r4, #0xa]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r2, [r1]
	movs r1, #0
	movs r3, #0
	bl sub_8003884
	ldr r0, _08017A48
	ldrb r0, [r0]
	cmp r0, #0
	beq _08017A1C
	ldr r3, _08017A4C
	adds r0, r3, #0
	adds r0, #0x60
	ldrh r0, [r0]
	ldr r2, _08017A50
	adds r1, r3, #0
	adds r1, #0x62
	ldrb r2, [r2]
	adds r1, r1, r2
	ldrb r1, [r1]
	ldr r2, [r3, #0x64]
	movs r3, #0x80
	lsls r3, r3, #9
	adds r2, r2, r3
	bl audio_new_fx
_08017A1C:
	ldrb r1, [r4, #0xa]
	movs r0, #0
	bl sub_8016790
	bl sub_800C604
_08017A28:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08017A30: .4byte gPreviousPlayerState
_08017A34: .4byte gPlayerState
_08017A38: .4byte gPlayerSprite
_08017A3C: .4byte 0x000001E9
_08017A40: .4byte dword_2000FC8
_08017A44: .4byte dword_80CC290
_08017A48: .4byte byte_203EA89
_08017A4C: .4byte 0x080CE440
_08017A50: .4byte byte_203EA8C

    .thumb
	.global sub_8017A54
sub_8017A54: @ 0x08017A54
	push {r4, r5, lr}
	ldr r1, _08017A78
	ldr r2, _08017A7C
	ldrh r0, [r2]
	strh r0, [r1]
	ldr r0, _08017A80
	ldrb r0, [r0]
	cmp r0, #4
	bne _08017A8C
	movs r0, #0x50
	strh r0, [r2]
	ldr r0, _08017A84
	ldr r1, _08017A88
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	b _08017AE6
	.align 2, 0
_08017A78: .4byte gPreviousPlayerState
_08017A7C: .4byte gPlayerState
_08017A80: .4byte byte_20020B1
_08017A84: .4byte gPlayerSprite
_08017A88: .4byte 0x000001D1
_08017A8C:
	movs r0, #0
	strh r0, [r2]
	ldr r0, _08017B14
	movs r1, #0x19
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	movs r0, #0x39
	bl sub_0804200C
	ldr r1, _08017B18
	ldrb r2, [r1, #0x17]
	ldrb r0, [r1, #0x16]
	cmp r0, r2
	beq _08017AE6
	strb r2, [r1, #0x16]
	ldrb r1, [r1, #0x16]
	movs r0, #0x39
	bl sub_08040204
	ldr r0, _08017B1C
	ldrb r0, [r0]
	cmp r0, #0
	beq _08017AE6
	ldr r2, _08017B20
	movs r1, #0xf8
	lsls r1, r1, #2
	adds r0, r2, r1
	ldrh r0, [r0]
	ldr r3, _08017B24
	ldr r4, _08017B28
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
_08017AE6:
	ldr r5, _08017B2C
	ldr r0, [r5]
	ldr r2, _08017B30
	ldr r4, _08017B14
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
	ldr r0, [r5]
	bl sub_800387C
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08017B14: .4byte gPlayerSprite
_08017B18: .4byte gGameStatus
_08017B1C: .4byte byte_203EA89
_08017B20: .4byte 0x080CE440
_08017B24: .4byte byte_203EA8C
_08017B28: .4byte 0x000003E2
_08017B2C: .4byte dword_2000FC8
_08017B30: .4byte dword_80CC290

    .thumb
    .global sub_8017B34
sub_8017B34: @ 0x08017B34
	push {r4, lr}
	adds r4, r0, #0
	cmp r4, #0
	bne _08017BE0
	ldr r0, _08017BAC
	ldrb r0, [r0]
	ldr r3, _08017BB0
	cmp r0, #0
	beq _08017B58
	ldr r0, _08017BB4
	ldrb r0, [r0]
	strb r0, [r3, #0xa]
	ldr r2, _08017BB8
	ldr r0, _08017BBC
	ldrh r1, [r0]
	ldr r0, _08017BC0
	ands r0, r1
	strh r0, [r2]
_08017B58:
	ldr r2, _08017BC4
	ldr r1, _08017BC8
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0x2d
	strh r0, [r1]
	adds r0, r3, #0
	movs r1, #0x39
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r0, _08017BCC
	strb r4, [r0, #0x13]
	ldr r0, _08017BD0
	ldr r0, [r0]
	movs r2, #0xc4
	lsls r2, r2, #6
	movs r1, #0
	bl CallARM_store_jump_and_other_value
	ldr r0, _08017BD4
	movs r2, #0x96
	lsls r2, r2, #2
	adds r1, r2, #0
	strh r1, [r0]
	ldr r0, _08017BD8
	strh r1, [r0]
	movs r0, #0x38
	bl sub_080420E8
	cmp r0, #0
	bne _08017C22
	ldr r0, _08017BDC
	ldrb r1, [r0, #0x16]
	movs r0, #0x39
	bl sub_08040204
	movs r0, #0x39
	bl sub_08041FA4
	b _08017C22
	.align 2, 0
_08017BAC: .4byte 0x020010A4
_08017BB0: .4byte gPlayerSprite
_08017BB4: .4byte 0x020010A5
_08017BB8: .4byte word_20010AC
_08017BBC: .4byte gKeysPressed
_08017BC0: .4byte 0x000003FF
_08017BC4: .4byte gPreviousPlayerState
_08017BC8: .4byte gPlayerState
_08017BCC: .4byte gPlayerShadowSprite
_08017BD0: .4byte dword_2000FC8
_08017BD4: .4byte 0x02002096
_08017BD8: .4byte 0x02002098
_08017BDC: .4byte gGameStatus
_08017BE0:
	ldr r0, _08017C28
	ldrb r0, [r0]
	ldr r3, _08017C2C
	cmp r0, #0
	beq _08017BFC
	ldr r0, _08017C30
	ldrb r0, [r0]
	strb r0, [r3, #0xa]
	ldr r2, _08017C34
	ldr r0, _08017C38
	ldrh r1, [r0]
	ldr r0, _08017C3C
	ands r0, r1
	strh r0, [r2]
_08017BFC:
	ldr r2, _08017C40
	ldr r1, _08017C44
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0x54
	strh r0, [r1]
	ldr r1, _08017C48
	adds r0, r3, #0
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r0, _08017C4C
	ldr r0, [r0]
	movs r2, #0xc4
	lsls r2, r2, #6
	movs r1, #0
	bl CallARM_store_jump_and_other_value
_08017C22:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08017C28: .4byte 0x020010A4
_08017C2C: .4byte gPlayerSprite
_08017C30: .4byte 0x020010A5
_08017C34: .4byte word_20010AC
_08017C38: .4byte gKeysPressed
_08017C3C: .4byte 0x000003FF
_08017C40: .4byte gPreviousPlayerState
_08017C44: .4byte gPlayerState
_08017C48: .4byte 0x000001C9
_08017C4C: .4byte dword_2000FC8

    .thumb
	.global sub_8017C50
sub_8017C50: @ 0x08017C50
	push {r4, r5, lr}
	ldr r5, _08017CC4
	ldr r4, _08017CC8
	ldrh r0, [r4]
	lsls r0, r0, #1
	adds r0, r0, r5
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08017C6A
	b _08017D72
_08017C6A:
	movs r0, #0x80
	lsls r0, r0, #4
	ands r0, r1
	cmp r0, #0
	beq _08017C76
	b _08017D72
_08017C76:
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r1
	cmp r0, #0
	bne _08017D72
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _08017C8C
	bl sub_800DE9C
_08017C8C:
	ldrh r0, [r4]
	lsls r0, r0, #1
	adds r0, r0, r5
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r1
	cmp r0, #0
	beq _08017CA4
	movs r0, #3
	bl sub_0804200C
_08017CA4:
	ldr r1, _08017CCC
	ldrh r0, [r4]
	strh r0, [r1]
	ldr r0, _08017CD0
	ldrb r0, [r0]
	cmp r0, #4
	bne _08017CDC
	movs r0, #0x51
	strh r0, [r4]
	ldr r0, _08017CD4
	ldr r1, _08017CD8
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	b _08017CEC
	.align 2, 0
_08017CC4: .4byte gPlayerStateSettings
_08017CC8: .4byte gPlayerState
_08017CCC: .4byte gPreviousPlayerState
_08017CD0: .4byte byte_20020B1
_08017CD4: .4byte gPlayerSprite
_08017CD8: .4byte 0x000001D9
_08017CDC:
	movs r0, #0x1b
	strh r0, [r4]
	ldr r0, _08017D78
	movs r1, #0x69
	movs r2, #0
	movs r3, #0
	bl sub_8003368
_08017CEC:
	ldr r0, _08017D7C
	ldr r0, [r0]
	ldr r2, _08017D80
	ldr r1, _08017D78
	ldrb r1, [r1, #0xa]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r2, [r1]
	movs r1, #0
	movs r3, #0
	bl sub_8003884
	ldr r1, _08017D84
	movs r0, #1
	strb r0, [r1, #0x13]
	ldr r5, _08017D88
	ldr r1, [r5]
	movs r4, #1
	rsbs r4, r4, #0
	cmp r1, r4
	beq _08017D26
	ldr r0, _08017D8C
	ldrb r0, [r0]
	cmp r0, #0
	beq _08017D24
	adds r0, r1, #0
	bl audio_halt_fx
_08017D24:
	str r4, [r5]
_08017D26:
	ldr r4, _08017D90
	ldr r0, [r4]
	bl audio_fx_still_active
	cmp r0, #0
	beq _08017D40
	ldr r0, _08017D8C
	ldrb r0, [r0]
	cmp r0, #0
	beq _08017D68
	ldr r0, [r4]
	bl audio_halt_fx
_08017D40:
	ldr r0, _08017D8C
	ldrb r0, [r0]
	cmp r0, #0
	beq _08017D68
	ldr r3, _08017D94
	adds r0, r3, #0
	adds r0, #0x60
	ldrh r0, [r0]
	ldr r2, _08017D98
	adds r1, r3, #0
	adds r1, #0x62
	ldrb r2, [r2]
	adds r1, r1, r2
	ldrb r1, [r1]
	ldr r2, [r3, #0x64]
	movs r3, #0x80
	lsls r3, r3, #9
	adds r2, r2, r3
	bl audio_new_fx
_08017D68:
	ldr r0, _08017D78
	ldrb r1, [r0, #0xa]
	movs r0, #0
	bl sub_8016790
_08017D72:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08017D78: .4byte gPlayerSprite
_08017D7C: .4byte dword_2000FC8
_08017D80: .4byte dword_80CC290
_08017D84: .4byte gPlayerShadowSprite
_08017D88: .4byte dword_20020B8
_08017D8C: .4byte byte_203EA89
_08017D90: .4byte dword_20020B4
_08017D94: .4byte 0x080CE440
_08017D98: .4byte byte_203EA8C

    .thumb
	.global sub_8017D9C
sub_8017D9C: @ 0x08017D9C
	push {lr}
	ldr r1, _08017DDC
	ldr r2, _08017DE0
	ldrh r0, [r2]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08017E0E
	ldr r1, _08017DE4
	movs r0, #0
	strb r0, [r1, #0x13]
	ldr r0, _08017DE8
	ldrb r0, [r0]
	cmp r0, #4
	bne _08017DF8
	ldr r1, _08017DEC
	ldrh r0, [r2]
	strh r0, [r1]
	movs r0, #0x52
	strh r0, [r2]
	ldr r0, _08017DF0
	ldr r1, _08017DF4
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	b _08017E0E
	.align 2, 0
_08017DDC: .4byte gPlayerStateSettings
_08017DE0: .4byte gPlayerState
_08017DE4: .4byte gPlayerShadowSprite
_08017DE8: .4byte byte_20020B1
_08017DEC: .4byte gPreviousPlayerState
_08017DF0: .4byte gPlayerSprite
_08017DF4: .4byte 0x000001A9
_08017DF8:
	ldr r1, _08017E14
	ldrh r0, [r2]
	strh r0, [r1]
	movs r0, #4
	strh r0, [r2]
	ldr r0, _08017E18
	movs r1, #1
	movs r2, #0
	movs r3, #0
	bl sub_8003368
_08017E0E:
	pop {r0}
	bx r0
	.align 2, 0
_08017E14: .4byte gPreviousPlayerState
_08017E18: .4byte gPlayerSprite

    .thumb
	.global sub_8017E1C
sub_8017E1C: @ 0x08017E1C
	push {r4, r5, r6, lr}
	ldr r0, _08017EDC
	ldrb r0, [r0, #0x12]
	cmp r0, #0
	beq _08017ED4
	ldr r6, _08017EE0
	ldr r5, _08017EE4
	ldrh r0, [r5]
	lsls r0, r0, #1
	adds r0, r0, r6
	ldrh r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _08017ED4
	ldr r0, _08017EE8
	ldrb r4, [r0]
	cmp r4, #0
	bne _08017ED4
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _08017E4E
	bl sub_800DE9C
_08017E4E:
	ldrh r0, [r5]
	lsls r0, r0, #1
	adds r0, r0, r6
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r1
	cmp r0, #0
	beq _08017E96
	ldr r5, _08017EEC
	ldr r0, [r5]
	bl sub_80038AC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08017E84
	ldr r0, [r5]
	ldr r1, _08017EF0
	ldr r3, _08017EF4
	ldr r2, _08017EF8
	ldrb r2, [r2, #0xa]
	lsls r2, r2, #2
	adds r2, r2, r3
	ldr r2, [r2]
	movs r3, #0
	bl sub_8003884
_08017E84:
	ldr r0, [r5]
	bl sub_800387C
	ldr r0, _08017EFC
	strb r4, [r0]
	ldr r0, _08017F00
	strb r4, [r0]
	ldr r0, _08017F04
	strb r4, [r0]
_08017E96:
	ldr r2, _08017F08
	ldr r1, _08017EE4
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #3
	strh r0, [r1]
	ldr r0, _08017EF8
	movs r1, #0x79
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r5, _08017F0C
	ldr r1, [r5]
	movs r4, #1
	rsbs r4, r4, #0
	cmp r1, r4
	beq _08017ECA
	ldr r0, _08017F10
	ldrb r0, [r0]
	cmp r0, #0
	beq _08017EC8
	adds r0, r1, #0
	bl audio_halt_fx
_08017EC8:
	str r4, [r5]
_08017ECA:
	ldr r0, _08017EF8
	ldrb r1, [r0, #0xa]
	movs r0, #0
	bl sub_8016790
_08017ED4:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08017EDC: .4byte 0x0200209A
_08017EE0: .4byte gPlayerStateSettings
_08017EE4: .4byte gPlayerState
_08017EE8: .4byte byte_20020B1
_08017EEC: .4byte dword_2000FC8
_08017EF0: .4byte 0x00019999
_08017EF4: .4byte dword_80CC290
_08017EF8: .4byte gPlayerSprite
_08017EFC: .4byte 0x020021C5
_08017F00: .4byte 0x020021C6
_08017F04: .4byte 0x020021C7
_08017F08: .4byte gPreviousPlayerState
_08017F0C: .4byte dword_20020B8
_08017F10: .4byte byte_203EA89

    .thumb
	.global sub_8017F14
sub_8017F14: @ 0x08017F14
	push {r4, lr}
	ldr r1, _08017F5C
	ldr r3, _08017F60
	ldrh r2, [r3]
	lsls r0, r2, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08017F56
	ldr r0, _08017F64
	strh r2, [r0]
	movs r0, #0
	strh r0, [r3]
	ldr r4, _08017F68
	adds r0, r4, #0
	movs r1, #0x19
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r0, _08017F6C
	ldr r0, [r0]
	ldr r2, _08017F70
	ldrb r1, [r4, #0xa]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r2, [r1]
	movs r1, #0
	movs r3, #0
	bl sub_8003884
_08017F56:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08017F5C: .4byte gPlayerStateSettings
_08017F60: .4byte gPlayerState
_08017F64: .4byte gPreviousPlayerState
_08017F68: .4byte gPlayerSprite
_08017F6C: .4byte dword_2000FC8
_08017F70: .4byte dword_80CC290

    .thumb
	.global DoFeatheryFlap
DoFeatheryFlap: @ 0x08017F74
	push {r4, r5, lr}
	ldr r0, _08017FF4
	ldrb r0, [r0, #0x13]
	cmp r0, #0
	beq _08017FEE
	ldr r4, _08017FF8
	ldrb r0, [r4]
	cmp r0, #0
	bne _08017FEE
	ldr r0, _08017FFC
	ldrb r0, [r0, #0x13]
	cmp r0, #0
	beq _08017FEE
	ldr r2, _08018000
	ldr r1, _08018004
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0xe
	strh r0, [r1]
	ldr r5, _08018008
	adds r0, r5, #0
	movs r1, #0x59
	movs r2, #0
	movs r3, #1
	bl sub_8003368
	ldr r0, _0801800C
	ldr r0, [r0]
	movs r2, #0xc0
	lsls r2, r2, #6
	movs r1, #0
	bl CallARM_store_jump_and_other_value
	movs r0, #1
	strb r0, [r4]
	ldr r0, _08018010
	ldrb r0, [r0]
	cmp r0, #0
	beq _08017FE6
	ldr r3, _08018014
	adds r0, r3, #0
	adds r0, #0x98
	ldrh r0, [r0]
	ldr r2, _08018018
	adds r1, r3, #0
	adds r1, #0x9a
	ldrb r2, [r2]
	adds r1, r1, r2
	ldrb r1, [r1]
	adds r2, r3, #0
	adds r2, #0x9c
	ldr r2, [r2]
	movs r3, #0x80
	lsls r3, r3, #9
	adds r2, r2, r3
	bl audio_new_fx
_08017FE6:
	ldrb r1, [r5, #0xa]
	movs r0, #0
	bl sub_8016790
_08017FEE:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08017FF4: .4byte 0x0200209A
_08017FF8: .4byte 0x020021C7
_08017FFC: .4byte gGameStatus
_08018000: .4byte gPreviousPlayerState
_08018004: .4byte gPlayerState
_08018008: .4byte gPlayerSprite
_0801800C: .4byte dword_2000FC8
_08018010: .4byte byte_203EA89
_08018014: .4byte 0x080CE440
_08018018: .4byte byte_203EA8C

    .thumb
	.global DoAirAttack
DoAirAttack: @ 0x0801801C
	push {r4, r5, lr}
	ldr r0, _08018094
	ldrb r0, [r0, #3]
	cmp r0, #0
	beq _080180D4
	ldr r5, _08018098
	ldrb r4, [r5]
	cmp r4, #0
	bne _080180D4
	ldr r0, _0801809C
	ldrb r0, [r0, #0x13]
	cmp r0, #0
	beq _080180D4
	ldr r2, _080180A0
	ldr r1, _080180A4
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0x11
	strh r0, [r1]
	ldr r0, _080180A8
	movs r1, #0xa9
	movs r2, #0
	movs r3, #1
	bl sub_8003368
	ldr r0, _080180AC
	ldr r0, [r0]
	movs r2, #0xc0
	lsls r2, r2, #6
	movs r1, #0
	bl CallARM_store_jump_and_other_value
	movs r0, #1
	strb r0, [r5]
	ldr r0, _080180B0
	strb r4, [r0]
	ldr r4, _080180B4
	ldr r0, _080180B8
	ldrb r0, [r0]
	cmp r0, #0
	beq _080180C4
	ldr r3, _080180BC
	adds r0, r3, #0
	adds r0, #0xe8
	ldrh r0, [r0]
	ldr r2, _080180C0
	adds r1, r3, #0
	adds r1, #0xea
	ldrb r2, [r2]
	adds r1, r1, r2
	ldrb r1, [r1]
	adds r2, r3, #0
	adds r2, #0xec
	ldr r2, [r2]
	movs r3, #0x80
	lsls r3, r3, #9
	adds r2, r2, r3
	bl audio_new_fx
	b _080180C8
	.align 2, 0
_08018094: .4byte 0x0200209A
_08018098: .4byte 0x020021C6
_0801809C: .4byte gGameStatus
_080180A0: .4byte gPreviousPlayerState
_080180A4: .4byte gPlayerState
_080180A8: .4byte gPlayerSprite
_080180AC: .4byte dword_2000FC8
_080180B0: .4byte 0x020021C8
_080180B4: .4byte 0x020021D0
_080180B8: .4byte byte_203EA89
_080180BC: .4byte 0x080CE440
_080180C0: .4byte byte_203EA8C
_080180C4:
	movs r0, #1
	rsbs r0, r0, #0
_080180C8:
	str r0, [r4]
	ldr r0, _080180DC
	ldrb r1, [r0, #0xa]
	movs r0, #3
	bl sub_8016790
_080180D4:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080180DC: .4byte gPlayerSprite

    .thumb
	.global DoBillDrill
DoBillDrill: @ 0x080180E0
	push {r4, r5, r6, lr}
	ldr r0, _0801816C
	ldrb r0, [r0, #4]
	cmp r0, #0
	beq _080181AC
	ldr r6, _08018170
	ldrb r0, [r6]
	cmp r0, #0
	bne _080181AC
	ldr r0, _08018174
	ldrb r0, [r0, #0x13]
	cmp r0, #0
	beq _080181AC
	ldr r2, _08018178
	ldr r1, _0801817C
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0x10
	strh r0, [r1]
	ldr r5, _08018180
	adds r0, r5, #0
	movs r1, #0x81
	movs r2, #0
	movs r3, #1
	bl sub_8003368
	ldr r4, _08018184
	ldr r0, [r4]
	movs r2, #0xc0
	lsls r2, r2, #6
	movs r1, #0
	bl CallARM_store_jump_and_other_value
	ldr r0, [r4]
	ldr r2, _08018188
	ldrb r1, [r5, #0xa]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r2, [r1]
	movs r1, #0
	movs r3, #0
	bl sub_8003884
	movs r0, #1
	strb r0, [r6]
	ldr r4, _0801818C
	ldr r0, _08018190
	ldrb r0, [r0]
	cmp r0, #0
	beq _0801819C
	ldr r3, _08018194
	adds r0, r3, #0
	adds r0, #0xb8
	ldrh r0, [r0]
	ldr r2, _08018198
	adds r1, r3, #0
	adds r1, #0xba
	ldrb r2, [r2]
	adds r1, r1, r2
	ldrb r1, [r1]
	adds r2, r3, #0
	adds r2, #0xbc
	ldr r2, [r2]
	movs r3, #0x80
	lsls r3, r3, #9
	adds r2, r2, r3
	bl audio_new_fx
	b _080181A0
	.align 2, 0
_0801816C: .4byte 0x0200209A
_08018170: .4byte 0x020021C5
_08018174: .4byte gGameStatus
_08018178: .4byte gPreviousPlayerState
_0801817C: .4byte gPlayerState
_08018180: .4byte gPlayerSprite
_08018184: .4byte dword_2000FC8
_08018188: .4byte dword_80CC290
_0801818C: .4byte dword_20020B4
_08018190: .4byte byte_203EA89
_08018194: .4byte 0x080CE440
_08018198: .4byte byte_203EA8C
_0801819C:
	movs r0, #1
	rsbs r0, r0, #0
_080181A0:
	str r0, [r4]
	ldr r0, _080181B4
	ldrb r1, [r0, #0xa]
	movs r0, #0
	bl sub_8016790
_080181AC:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080181B4: .4byte gPlayerSprite

    .thumb
	.global sub_80181B8
sub_80181B8: @ 0x080181B8
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r1, _08018228
	ldr r0, _0801822C
	ldrh r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _080181D2
	b _0801852C
_080181D2:
	ldr r5, _08018230
	ldr r0, [r5]
	bl audio_fx_still_active
	cmp r0, #0
	beq _080181EC
	ldr r0, _08018234
	ldrb r0, [r0]
	cmp r0, #0
	beq _080181EC
	ldr r0, [r5]
	bl audio_halt_fx
_080181EC:
	bl sub_8017D9C
	ldr r1, _08018238
	ldrb r0, [r1]
	cmp r0, #0
	beq _0801820C
	movs r0, #0
	strb r0, [r1]
	ldr r0, [r4]
	ldr r1, _0801823C
	adds r0, r0, r1
	str r0, [r4]
	cmp r0, #0
	bge _0801820C
	movs r0, #0
	str r0, [r4]
_0801820C:
	ldr r1, _08018240
	ldr r2, _0801822C
	ldrh r0, [r2]
	strh r0, [r1]
	ldrh r0, [r1]
	subs r0, #9
	cmp r0, #0x53
	bls _0801821E
	b _080184F0
_0801821E:
	lsls r0, r0, #2
	ldr r1, _08018244
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08018228: .4byte gPlayerStateSettings
_0801822C: .4byte gPlayerState
_08018230: .4byte dword_20020B4
_08018234: .4byte byte_203EA89
_08018238: .4byte 0x0203DFE8
_0801823C: .4byte 0xFFFB0000
_08018240: .4byte gPreviousPlayerState
_08018244: .4byte 0x08018248
_08018248: @ jump table
	.4byte _08018398 @ case 0
	.4byte _08018430 @ case 1
	.4byte _08018430 @ case 2
	.4byte _08018430 @ case 3
	.4byte _080184D8 @ case 4
	.4byte _080184F0 @ case 5
	.4byte _080184F0 @ case 6
	.4byte _080184F0 @ case 7
	.4byte _080184F0 @ case 8
	.4byte _080184F0 @ case 9
	.4byte _080184F0 @ case 10
	.4byte _08018430 @ case 11
	.4byte _080184F0 @ case 12
	.4byte _080184F0 @ case 13
	.4byte _080184F0 @ case 14
	.4byte _080184F0 @ case 15
	.4byte _080184EC @ case 16
	.4byte _080184F0 @ case 17
	.4byte _080184F0 @ case 18
	.4byte _080184F0 @ case 19
	.4byte _080184F0 @ case 20
	.4byte _080184F0 @ case 21
	.4byte _080184F0 @ case 22
	.4byte _080184F0 @ case 23
	.4byte _08018398 @ case 24
	.4byte _08018398 @ case 25
	.4byte _080184F0 @ case 26
	.4byte _080184F0 @ case 27
	.4byte _080184F0 @ case 28
	.4byte _080184F0 @ case 29
	.4byte _08018494 @ case 30
	.4byte _08018494 @ case 31
	.4byte _08018494 @ case 32
	.4byte _08018494 @ case 33
	.4byte _080184F0 @ case 34
	.4byte _080184F0 @ case 35
	.4byte _080184F0 @ case 36
	.4byte _080184F0 @ case 37
	.4byte _080184F0 @ case 38
	.4byte _080184F0 @ case 39
	.4byte _080183C4 @ case 40
	.4byte _080183C4 @ case 41
	.4byte _080183C4 @ case 42
	.4byte _080183C4 @ case 43
	.4byte _080184F0 @ case 44
	.4byte _080183C4 @ case 45
	.4byte _080183C4 @ case 46
	.4byte _080183C4 @ case 47
	.4byte _080183B2 @ case 48
	.4byte _080183AC @ case 49
	.4byte _080183B2 @ case 50
	.4byte _080183B2 @ case 51
	.4byte _080183B2 @ case 52
	.4byte _080183B2 @ case 53
	.4byte _080183B2 @ case 54
	.4byte _080184F0 @ case 55
	.4byte _080183B2 @ case 56
	.4byte _080183B2 @ case 57
	.4byte _080184F0 @ case 58
	.4byte _080184F0 @ case 59
	.4byte _080184F0 @ case 60
	.4byte _08018398 @ case 61
	.4byte _08018398 @ case 62
	.4byte _08018398 @ case 63
	.4byte _08018398 @ case 64
	.4byte _08018398 @ case 65
	.4byte _080183D8 @ case 66
	.4byte _080183D8 @ case 67
	.4byte _080183D8 @ case 68
	.4byte _080184F0 @ case 69
	.4byte _080183D8 @ case 70
	.4byte _080183EC @ case 71
	.4byte _080183EC @ case 72
	.4byte _080183EC @ case 73
	.4byte _080183EC @ case 74
	.4byte _080184F0 @ case 75
	.4byte _080183EC @ case 76
	.4byte _080183EC @ case 77
	.4byte _080183EC @ case 78
	.4byte _080183EC @ case 79
	.4byte _080183EC @ case 80
	.4byte _080183EC @ case 81
	.4byte _080184F0 @ case 82
	.4byte _080183EC @ case 83
_08018398:
	movs r0, #0x49
	strh r0, [r2]
	ldr r4, _080183A8
	adds r0, r4, #0
	movs r1, #0
	bl sub_800378C
	b _080183FE
	.align 2, 0
_080183A8: .4byte gPlayerSprite
_080183AC:
	movs r0, #0x64
	strh r0, [r2]
	b _08018522
_080183B2:
	movs r0, #0x40
	strh r0, [r2]
	ldr r4, _080183BC
	ldr r1, _080183C0
	b _080183F4
	.align 2, 0
_080183BC: .4byte gPlayerSprite
_080183C0: .4byte 0x00000189
_080183C4:
	movs r0, #0x35
	strh r0, [r2]
	ldr r4, _080183D0
	ldr r1, _080183D4
	b _080183F4
	.align 2, 0
_080183D0: .4byte gPlayerSprite
_080183D4: .4byte 0x00000139
_080183D8:
	movs r0, #0x4e
	strh r0, [r2]
	ldr r4, _080183E4
	ldr r1, _080183E8
	b _080183F4
	.align 2, 0
_080183E4: .4byte gPlayerSprite
_080183E8: .4byte 0x000001A1
_080183EC:
	movs r0, #0x5d
	strh r0, [r2]
	ldr r4, _08018420
	ldr r1, _08018424
_080183F4:
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_8003368
_080183FE:
	ldr r0, _08018428
	ldr r0, [r0]
	ldr r2, _0801842C
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
	b _08018522
	.align 2, 0
_08018420: .4byte gPlayerSprite
_08018424: .4byte 0x000001B9
_08018428: .4byte dword_2000FC8
_0801842C: .4byte dword_80CC290
_08018430:
	movs r0, #0x16
	strh r0, [r2]
	ldr r4, _08018480
	adds r0, r4, #0
	movs r1, #0xc9
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r0, _08018484
	ldr r0, [r0]
	ldr r2, _08018488
	ldrb r1, [r4, #0xa]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r2, [r1]
	movs r1, #0
	movs r3, #0
	bl sub_8003884
	ldr r5, _0801848C
	ldr r1, [r5]
	movs r4, #1
	rsbs r4, r4, #0
	cmp r1, r4
	beq _08018474
	ldr r0, _08018490
	ldrb r0, [r0]
	cmp r0, #0
	beq _08018472
	adds r0, r1, #0
	bl audio_halt_fx
_08018472:
	str r4, [r5]
_08018474:
	ldr r0, _08018480
	ldrb r1, [r0, #0xa]
	movs r0, #0xf
	bl sub_8016790
	b _08018522
	.align 2, 0
_08018480: .4byte gPlayerSprite
_08018484: .4byte dword_2000FC8
_08018488: .4byte dword_80CC290
_0801848C: .4byte dword_20020B8
_08018490: .4byte byte_203EA89
_08018494:
	movs r0, #0x2b
	strh r0, [r2]
	ldr r4, _080184C8
	ldr r1, _080184CC
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r0, _080184D0
	ldr r0, [r0]
	ldr r2, _080184D4
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
	b _08018522
	.align 2, 0
_080184C8: .4byte gPlayerSprite
_080184CC: .4byte 0x00000201
_080184D0: .4byte dword_2000FC8
_080184D4: .4byte dword_80CC290
_080184D8:
	movs r0, #7
	strh r0, [r2]
	ldr r0, _080184E8
	ldrb r1, [r0, #0xa]
	movs r0, #2
	bl sub_8016790
	b _08018522
	.align 2, 0
_080184E8: .4byte gPlayerSprite
_080184EC:
	bl sub_8026714
_080184F0:
	ldr r1, _08018534
	movs r0, #0x13
	strh r0, [r1]
	ldr r4, _08018538
	adds r0, r4, #0
	movs r1, #0xe1
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r0, _0801853C
	ldr r0, [r0]
	ldr r2, _08018540
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
_08018522:
	ldr r0, _0801853C
	ldr r0, [r0]
	movs r1, #0
	bl sub_80038D4
_0801852C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08018534: .4byte gPlayerState
_08018538: .4byte gPlayerSprite
_0801853C: .4byte dword_2000FC8
_08018540: .4byte dword_80CC290

	.thumb
	.global sub_8018544
sub_8018544: @ 0x08018544
	push {r4, r5, lr}
	ldr r0, _080185BC
	ldrb r0, [r0, #0xa]
	cmp r0, #0
	beq _080185F6
	ldr r2, _080185C0
	ldr r1, _080185C4
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0x3a
	strh r0, [r1]
	ldr r4, _080185C8
	ldr r1, _080185CC
	adds r0, r4, #0
	movs r2, #0
	movs r3, #1
	bl sub_8003368
	ldr r0, _080185D0
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #0xa
	ldr r3, _080185D4
	ldrb r2, [r4, #0xa]
	lsls r2, r2, #2
	adds r2, r2, r3
	ldr r2, [r2]
	movs r3, #0
	bl sub_8003884
	ldrb r1, [r4, #0xa]
	movs r0, #0xa
	bl sub_8016790
	ldr r4, _080185D8
	ldr r0, _080185DC
	ldrb r0, [r0]
	cmp r0, #0
	beq _080185F0
	ldr r2, _080185E0
	movs r1, #0xba
	lsls r1, r1, #3
	adds r0, r2, r1
	ldrh r0, [r0]
	ldr r3, _080185E4
	ldr r5, _080185E8
	adds r1, r2, r5
	ldrb r3, [r3]
	adds r1, r1, r3
	ldrb r1, [r1]
	ldr r3, _080185EC
	adds r2, r2, r3
	ldr r2, [r2]
	movs r5, #0x80
	lsls r5, r5, #9
	adds r2, r2, r5
	bl audio_new_fx
	b _080185F4
	.align 2, 0
_080185BC: .4byte 0x0200209A
_080185C0: .4byte gPreviousPlayerState
_080185C4: .4byte gPlayerState
_080185C8: .4byte gPlayerSprite
_080185CC: .4byte 0x00000161
_080185D0: .4byte dword_2000FC8
_080185D4: .4byte dword_80CC290
_080185D8: .4byte 0x020021D4
_080185DC: .4byte byte_203EA89
_080185E0: .4byte 0x080CE440
_080185E4: .4byte byte_203EA8C
_080185E8: .4byte 0x000005D2
_080185EC: .4byte 0x000005D4
_080185F0:
	movs r0, #1
	rsbs r0, r0, #0
_080185F4:
	str r0, [r4]
_080185F6:
	pop {r4, r5}
	pop {r0}
	bx r0

	.thumb
	.global sub_80185FC
sub_80185FC: @ 0x080185FC
	push {r4, lr}
	ldr r0, _08018654
	ldr r1, _08018658
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	beq _0801864C
	bl sub_8030A88
	cmp r0, #0
	bne _0801864C
	ldr r1, _0801865C
	ldr r0, _08018660
	ldrb r2, [r0, #3]
	movs r0, #5
	bl sub_0802D0A0
	ldr r0, _08018664
	ldrb r0, [r0]
	cmp r0, #0
	beq _0801864C
	ldr r2, _08018668
	movs r1, #0xbb
	lsls r1, r1, #3
	adds r0, r2, r1
	ldrh r0, [r0]
	ldr r3, _0801866C
	ldr r4, _08018670
	adds r1, r2, r4
	ldrb r3, [r3]
	adds r1, r1, r3
	ldrb r1, [r1]
	ldr r3, _08018674
	adds r2, r2, r3
	ldr r2, [r2]
	movs r4, #0x80
	lsls r4, r4, #9
	adds r2, r2, r4
	bl audio_new_fx
_0801864C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08018654: .4byte 0x0203DFD4
_08018658: .4byte 0x0203DFD5
_0801865C: .4byte gPlayerPos
_08018660: .4byte byte_3002950
_08018664: .4byte byte_203EA89
_08018668: .4byte 0x080CE440
_0801866C: .4byte byte_203EA8C
_08018670: .4byte 0x000005DA
_08018674: .4byte 0x000005DC

	.thumb
	.global sub_8018678
sub_8018678: @ 0x08018678
	push {r4, lr}
	ldr r0, _080186D0
	ldr r1, _080186D4
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	beq _080186C8
	bl sub_8030A88
	cmp r0, #1
	bgt _080186C8
	ldr r1, _080186D8
	ldr r0, _080186DC
	ldrb r2, [r0, #3]
	movs r0, #6
	bl sub_0802D0A0
	ldr r0, _080186E0
	ldrb r0, [r0]
	cmp r0, #0
	beq _080186C8
	ldr r2, _080186E4
	movs r1, #0xb8
	lsls r1, r1, #3
	adds r0, r2, r1
	ldrh r0, [r0]
	ldr r3, _080186E8
	ldr r4, _080186EC
	adds r1, r2, r4
	ldrb r3, [r3]
	adds r1, r1, r3
	ldrb r1, [r1]
	ldr r3, _080186F0
	adds r2, r2, r3
	ldr r2, [r2]
	movs r4, #0x80
	lsls r4, r4, #9
	adds r2, r2, r4
	bl audio_new_fx
_080186C8:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080186D0: .4byte 0x0203DFD4
_080186D4: .4byte 0x0203DFD5
_080186D8: .4byte gPlayerPos
_080186DC: .4byte byte_3002950
_080186E0: .4byte byte_203EA89
_080186E4: .4byte 0x080CE440
_080186E8: .4byte byte_203EA8C
_080186EC: .4byte 0x000005C2
_080186F0: .4byte 0x000005C4


    .thumb
	.global sub_80186F4
sub_80186F4: @ 0x080186F4
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r1, _0801872C
	ldr r0, _08018730
	ldrh r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r1
	cmp r0, #0
	bne _08018726
	ldr r0, _08018734
	ldrb r0, [r0]
	cmp r0, #0
	bne _08018726
	ldr r0, _08018738
	ldrb r0, [r0]
	cmp r0, #0
	bne _08018726
	ldr r0, _0801873C
	ldrb r0, [r0, #0x13]
	cmp r0, #0
	bne _08018740
_08018726:
	movs r0, #0
	b _080187DE
	.align 2, 0
_0801872C: .4byte gPlayerStateSettings
_08018730: .4byte gPlayerState
_08018734: .4byte 0x0203E16A
_08018738: .4byte 0x0203E16B
_0801873C: .4byte gGameStatus
_08018740:
	ldr r5, _080187E4
	ldr r1, [r5]
	movs r4, #1
	rsbs r4, r4, #0
	cmp r1, r4
	beq _0801875C
	ldr r0, _080187E8
	ldrb r0, [r0]
	cmp r0, #0
	beq _0801875A
	adds r0, r1, #0
	bl audio_halt_fx
_0801875A:
	str r4, [r5]
_0801875C:
	ldr r4, _080187EC
	ldr r0, [r4]
	bl audio_fx_still_active
	cmp r0, #0
	beq _0801877C
	ldr r0, _080187E8
	ldrb r0, [r0]
	cmp r0, #0
	beq _08018776
	ldr r0, [r4]
	bl audio_halt_fx
_08018776:
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r4]
_0801877C:
	ldr r1, _080187F0
	ldr r4, _080187F4
	ldrh r0, [r4]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _08018794
	bl sub_800DE9C
_08018794:
	bl sub_800EEC0
	ldr r1, _080187F8
	ldrh r0, [r4]
	strh r0, [r1]
	movs r0, #0x63
	strh r0, [r4]
	ldr r1, _080187FC
	movs r0, #0
	strb r0, [r1]
	ldr r4, _08018800
	ldr r0, [r4]
	movs r1, #0
	movs r2, #0
	bl sub_800386C
	ldr r0, [r4]
	bl sub_800387C
	ldr r0, [r4]
	ldr r2, _08018804
	ldr r4, _08018808
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
	ldr r0, _0801880C
	strb r6, [r0]
	movs r0, #1
_080187DE:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080187E4: .4byte dword_20020B8
_080187E8: .4byte byte_203EA89
_080187EC: .4byte dword_20020B4
_080187F0: .4byte gPlayerStateSettings
_080187F4: .4byte gPlayerState
_080187F8: .4byte gPreviousPlayerState
_080187FC: .4byte gBGControlActions
_08018800: .4byte dword_2000FC8
_08018804: .4byte dword_80CC290
_08018808: .4byte gPlayerSprite
_0801880C: .4byte 0x0203DFE9

    .thumb
	.global sub_8018810
sub_8018810: @ 0x08018810
	push {lr}
	bl sub_802FDC8
	ldr r1, _08018820
	movs r0, #0x2c
	strh r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_08018820: .4byte gPlayerState








	.thumb
	.global sub_08018824
sub_08018824: @ 0x08018824
	push {r4, r5, lr}
	ldr r5, _08018838
	ldrb r0, [r5, #0x13]
	cmp r0, #0
	bne _08018844
	ldr r0, _0801883C
	ldr r1, _08018840
	ldrh r1, [r1]
	strh r1, [r0]
	b _08018A80
	.align 2, 0
_08018838: .4byte gGameStatus
_0801883C: .4byte gPlayerState
_08018840: .4byte gPreviousPlayerState
_08018844:
	ldr r0, _08018888
	ldrb r2, [r0]
	cmp r2, #0
	beq _0801884E
	b _08018984
_0801884E:
	ldr r0, _0801888C
	ldr r3, _08018890
	ldrh r4, [r3]
	lsls r1, r4, #1
	adds r1, r1, r0
	ldrh r1, [r1]
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0801889C
	ldr r1, _08018894
	ldrh r0, [r1]
	strh r0, [r3]
	movs r0, #0x1b
	strh r0, [r1]
	ldr r4, _08018898
	adds r0, r4, #0
	movs r1, #0x69
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldrb r1, [r4, #0xa]
	movs r0, #0x11
	bl sub_8016790
	b _08018A68
	.align 2, 0
_08018888: .4byte byte_20020B1
_0801888C: .4byte gPlayerStateSettings
_08018890: .4byte gPreviousPlayerState
_08018894: .4byte gPlayerState
_08018898: .4byte gPlayerSprite
_0801889C:
	movs r0, #0x80
	lsls r0, r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080188C4
	ldr r1, _080188BC
	ldrh r0, [r1]
	strh r0, [r3]
	movs r0, #0xc
	strh r0, [r1]
	ldr r0, _080188C0
	ldrb r1, [r0, #0xa]
	movs r0, #0xf
	bl sub_8016790
	b _08018A68
	.align 2, 0
_080188BC: .4byte gPlayerState
_080188C0: .4byte gPlayerSprite
_080188C4:
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080188E4
	ldr r1, _080188DC
	ldrh r0, [r1]
	strh r0, [r3]
	movs r0, #0x47
	strh r0, [r1]
	ldr r0, _080188E0
	ldrb r1, [r0, #0xa]
	b _08018A50
	.align 2, 0
_080188DC: .4byte gPlayerState
_080188E0: .4byte gPlayerSprite
_080188E4:
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r1
	cmp r0, #0
	beq _0801891C
	ldr r1, _08018914
	ldrh r0, [r1]
	strh r0, [r3]
	movs r0, #0x27
	strh r0, [r1]
	movs r1, #0x12
	ldrsb r1, [r5, r1]
	movs r0, #3
	bl sub_08040204
	movs r0, #3
	bl sub_08041FA4
	ldr r0, _08018918
	ldrb r1, [r0, #0xa]
	movs r0, #5
	bl sub_8016790
	b _08018A68
	.align 2, 0
_08018914: .4byte gPlayerState
_08018918: .4byte gPlayerSprite
_0801891C:
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08018950
	ldr r1, _08018948
	ldrh r0, [r1]
	strh r0, [r3]
	movs r0, #0x2d
	strh r0, [r1]
	ldr r4, _0801894C
	adds r0, r4, #0
	movs r1, #0x39
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldrb r1, [r4, #0xa]
	movs r0, #0x15
	bl sub_8016790
	b _08018A68
	.align 2, 0
_08018948: .4byte gPlayerState
_0801894C: .4byte gPlayerSprite
_08018950:
	movs r0, #0x80
	lsls r0, r0, #5
	ands r0, r1
	cmp r0, #0
	beq _0801896C
	ldr r0, _08018964
	strh r4, [r0]
	ldr r0, _08018968
	ldrb r1, [r0, #0xa]
	b _08018A50
	.align 2, 0
_08018964: .4byte gPlayerState
_08018968: .4byte gPlayerSprite
_0801896C:
	ldr r1, _0801897C
	ldrh r0, [r1]
	strh r0, [r3]
	strh r2, [r1]
	ldr r4, _08018980
	adds r0, r4, #0
	movs r1, #0x19
	b _08018A46
	.align 2, 0
_0801897C: .4byte gPlayerState
_08018980: .4byte gPlayerSprite
_08018984:
	cmp r2, #1
	bne _080189AC
	ldr r2, _0801899C
	ldr r1, _080189A0
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0x32
	strh r0, [r1]
	ldr r4, _080189A4
	ldr r1, _080189A8
	b _08018A44
	.align 2, 0
_0801899C: .4byte gPreviousPlayerState
_080189A0: .4byte gPlayerState
_080189A4: .4byte gPlayerSprite
_080189A8: .4byte 0x00000141
_080189AC:
	cmp r2, #2
	bne _080189D4
	ldr r2, _080189C4
	ldr r1, _080189C8
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0x3d
	strh r0, [r1]
	ldr r4, _080189CC
	ldr r1, _080189D0
	b _08018A44
	.align 2, 0
_080189C4: .4byte gPreviousPlayerState
_080189C8: .4byte gPlayerState
_080189CC: .4byte gPlayerSprite
_080189D0: .4byte 0x00000179
_080189D4:
	cmp r2, #3
	bne _080189FC
	ldr r2, _080189EC
	ldr r1, _080189F0
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0x4c
	strh r0, [r1]
	ldr r4, _080189F4
	ldr r1, _080189F8
	b _08018A44
	.align 2, 0
_080189EC: .4byte gPreviousPlayerState
_080189F0: .4byte gPlayerState
_080189F4: .4byte gPlayerSprite
_080189F8: .4byte 0x000001A1
_080189FC:
	cmp r2, #4
	bne _08018A64
	ldr r1, _08018A24
	ldr r3, _08018A28
	ldrh r2, [r3]
	lsls r0, r2, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08018A38
	ldr r0, _08018A2C
	strh r2, [r0]
	movs r0, #0x51
	strh r0, [r3]
	ldr r4, _08018A30
	ldr r1, _08018A34
	b _08018A44
	.align 2, 0
_08018A24: .4byte gPlayerStateSettings
_08018A28: .4byte gPlayerState
_08018A2C: .4byte gPreviousPlayerState
_08018A30: .4byte gPlayerSprite
_08018A34: .4byte 0x000001D9
_08018A38:
	ldr r0, _08018A58
	strh r2, [r0]
	movs r0, #0x50
	strh r0, [r3]
	ldr r4, _08018A5C
	ldr r1, _08018A60
_08018A44:
	adds r0, r4, #0
_08018A46:
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldrb r1, [r4, #0xa]
_08018A50:
	movs r0, #0
	bl sub_8016790
	b _08018A68
	.align 2, 0
_08018A58: .4byte gPreviousPlayerState
_08018A5C: .4byte gPlayerSprite
_08018A60: .4byte 0x000001D1
_08018A64:
	.2byte 0xEE00, 0xEE00
_08018A68:
	ldr r0, _08018A88
	ldr r0, [r0]
	ldr r2, _08018A8C
	ldr r1, _08018A90
	ldrb r1, [r1, #0xa]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r2, [r1]
	movs r1, #0
	movs r3, #0
	bl sub_8003884
_08018A80:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08018A88: .4byte dword_2000FC8
_08018A8C: .4byte dword_80CC290
_08018A90: .4byte gPlayerSprite


    .thumb
	.global sub_08018A94
sub_08018A94: @ 0x08018A94
	push {r4, lr}
	adds r2, r0, #0
	ldr r0, _08018AC0
	ldrb r0, [r0]
	cmp r0, #0
	bne _08018B1C
	ldr r1, _08018AC4
	ldr r0, _08018AC8
	ldrh r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08018AD0
	ldr r0, _08018ACC
	strb r2, [r0, #0xa]
	movs r1, #0x69
	b _08018B92
	.align 2, 0
_08018AC0: .4byte byte_20020B1
_08018AC4: .4byte gPlayerStateSettings
_08018AC8: .4byte gPlayerState
_08018ACC: .4byte gPlayerSprite
_08018AD0:
	movs r0, #0x80
	lsls r0, r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08018AF8
	ldr r4, _08018AF4
	strb r2, [r4, #0xa]
	adds r0, r4, #0
	movs r1, #6
	bl sub_800378C
	adds r0, r4, #0
	movs r1, #0x31
	movs r2, #7
	movs r3, #0
	bl sub_80033A4
	b _08018BA8
	.align 2, 0
_08018AF4: .4byte gPlayerSprite
_08018AF8:
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _08018B10
	ldr r0, _08018B08
	strb r2, [r0, #0xa]
	ldr r1, _08018B0C
	b _08018B92
	.align 2, 0
_08018B08: .4byte gPlayerSprite
_08018B0C: .4byte 0x00000101
_08018B10:
	ldr r0, _08018B18
	strb r2, [r0, #0xa]
	movs r1, #0x19
	b _08018B92
	.align 2, 0
_08018B18: .4byte gPlayerSprite
_08018B1C:
	cmp r0, #1
	bne _08018B30
	ldr r0, _08018B28
	strb r2, [r0, #0xa]
	ldr r1, _08018B2C
	b _08018B92
	.align 2, 0
_08018B28: .4byte gPlayerSprite
_08018B2C: .4byte 0x00000141
_08018B30:
	cmp r0, #2
	bne _08018B44
	ldr r0, _08018B3C
	strb r2, [r0, #0xa]
	ldr r1, _08018B40
	b _08018B92
	.align 2, 0
_08018B3C: .4byte gPlayerSprite
_08018B40: .4byte 0x00000179
_08018B44:
	cmp r0, #3
	bne _08018B58
	ldr r0, _08018B50
	strb r2, [r0, #0xa]
	ldr r1, _08018B54
	b _08018B92
	.align 2, 0
_08018B50: .4byte gPlayerSprite
_08018B54: .4byte 0x000001A1
_08018B58:
	cmp r0, #4
	bne _08018BA4
	ldr r1, _08018B7C
	ldr r0, _08018B80
	ldrh r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08018B8C
	ldr r0, _08018B84
	strb r2, [r0, #0xa]
	ldr r1, _08018B88
	b _08018B92
	.align 2, 0
_08018B7C: .4byte gPlayerStateSettings
_08018B80: .4byte gPlayerState
_08018B84: .4byte gPlayerSprite
_08018B88: .4byte 0x000001D9
_08018B8C:
	ldr r0, _08018B9C
	strb r2, [r0, #0xa]
	ldr r1, _08018BA0
_08018B92:
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	b _08018BA8
	.align 2, 0
_08018B9C: .4byte gPlayerSprite
_08018BA0: .4byte 0x000001D1
_08018BA4:
	.2byte 0xEE00, 0xEE00
_08018BA8:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

    .thumb
	.global sub_8018BB0
sub_8018BB0: @ 0x08018BB0
	push {r4, r5, lr}
	ldr r1, _08018C10
	ldr r0, _08018C14
	ldrh r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r1
	cmp r0, #0
	bne _08018BCA
	b _080192B4
_08018BCA:
	ldr r1, _08018C18
	ldrb r0, [r1]
	cmp r0, #0
	beq _08018BD6
	movs r0, #0
	strb r0, [r1]
_08018BD6:
	ldr r4, _08018C1C
	ldr r0, [r4]
	bl audio_fx_still_active
	cmp r0, #0
	beq _08018BF0
	ldr r0, _08018C20
	ldrb r0, [r0]
	cmp r0, #0
	beq _08018BF0
	ldr r0, [r4]
	bl audio_halt_fx
_08018BF0:
	ldr r0, _08018C24
	ldrb r0, [r0, #0x13]
	cmp r0, #0
	bne _08018C34
	ldr r0, _08018C28
	ldrb r0, [r0]
	cmp r0, #0
	bne _08018C30
	ldr r0, _08018C2C
	ldr r0, [r0]
	bl sub_800387C
	bl sub_8016890
	movs r0, #0
	b _080192B6
	.align 2, 0
_08018C10: .4byte gPlayerStateSettings
_08018C14: .4byte gPlayerState
_08018C18: .4byte 0x0203DFE8
_08018C1C: .4byte dword_20020B4
_08018C20: .4byte byte_203EA89
_08018C24: .4byte gGameStatus
_08018C28: .4byte 0x02001370
_08018C2C: .4byte dword_2000FC8
_08018C30:
	bl sub_800F7A0
_08018C34:
	ldr r1, _08018C50
	ldr r2, _08018C54
	ldrh r0, [r2]
	strh r0, [r1]
	ldrh r0, [r1]
	subs r0, #7
	cmp r0, #0x5d
	bls _08018C46
	b _08019236
_08018C46:
	lsls r0, r0, #2
	ldr r1, _08018C58
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08018C50: .4byte gPreviousPlayerState
_08018C54: .4byte gPlayerState
_08018C58: .4byte 0x08018C5C
_08018C5C: @ jump table
	.4byte _0801921C @ case 0
	.4byte _08019236 @ case 1
	.4byte _08019236 @ case 2
	.4byte _08019236 @ case 3
	.4byte _08018E6C @ case 4
	.4byte _08019236 @ case 5
	.4byte _08019236 @ case 6
	.4byte _08019236 @ case 7
	.4byte _08019236 @ case 8
	.4byte _08019236 @ case 9
	.4byte _08019236 @ case 10
	.4byte _08019236 @ case 11
	.4byte _08019236 @ case 12
	.4byte _08018E6C @ case 13
	.4byte _08019236 @ case 14
	.4byte _08018E6C @ case 15
	.4byte _08019236 @ case 16
	.4byte _08018DD4 @ case 17
	.4byte _08019236 @ case 18
	.4byte _08019236 @ case 19
	.4byte _08019236 @ case 20
	.4byte _08019236 @ case 21
	.4byte _08019236 @ case 22
	.4byte _08018E6C @ case 23
	.4byte _08019236 @ case 24
	.4byte _08019236 @ case 25
	.4byte _0801919C @ case 26
	.4byte _0801919C @ case 27
	.4byte _08019236 @ case 28
	.4byte _08019236 @ case 29
	.4byte _08019236 @ case 30
	.4byte _08019236 @ case 31
	.4byte _08019236 @ case 32
	.4byte _08019236 @ case 33
	.4byte _08019120 @ case 34
	.4byte _08019120 @ case 35
	.4byte _08019120 @ case 36
	.4byte _08019236 @ case 37
	.4byte _08019236 @ case 38
	.4byte _08019236 @ case 39
	.4byte _08019236 @ case 40
	.4byte _08019236 @ case 41
	.4byte _08019236 @ case 42
	.4byte _08019236 @ case 43
	.4byte _08018EF8 @ case 44
	.4byte _08018EF8 @ case 45
	.4byte _08018EF8 @ case 46
	.4byte _08019236 @ case 47
	.4byte _08019236 @ case 48
	.4byte _08018EF8 @ case 49
	.4byte _08019236 @ case 50
	.4byte _08019236 @ case 51
	.4byte _08018F4C @ case 52
	.4byte _08019236 @ case 53
	.4byte _08019236 @ case 54
	.4byte _08018F4C @ case 55
	.4byte _08018F4C @ case 56
	.4byte _08018F4C @ case 57
	.4byte _0801910C @ case 58
	.4byte _0801910C @ case 59
	.4byte _08019236 @ case 60
	.4byte _08019236 @ case 61
	.4byte _08019236 @ case 62
	.4byte _08019236 @ case 63
	.4byte _08019236 @ case 64
	.4byte _0801919C @ case 65
	.4byte _0801919C @ case 66
	.4byte _08019236 @ case 67
	.4byte _08019236 @ case 68
	.4byte _08019236 @ case 69
	.4byte _08019236 @ case 70
	.4byte _080190B8 @ case 71
	.4byte _080190B8 @ case 72
	.4byte _08019236 @ case 73
	.4byte _08019236 @ case 74
	.4byte _08019236 @ case 75
	.4byte _08019236 @ case 76
	.4byte _08019236 @ case 77
	.4byte _08018FDC @ case 78
	.4byte _08018FDC @ case 79
	.4byte _08018FDC @ case 80
	.4byte _08018FDC @ case 81
	.4byte _08018FDC @ case 82
	.4byte _08019236 @ case 83
	.4byte _08018FA0 @ case 84
	.4byte _08019236 @ case 85
	.4byte _08018FDC @ case 86
	.4byte _08019236 @ case 87
	.4byte _08019236 @ case 88
	.4byte _08019236 @ case 89
	.4byte _08019236 @ case 90
	.4byte _08019236 @ case 91
	.4byte _08019236 @ case 92
	.4byte _08019230 @ case 93
_08018DD4:
	movs r0, #0x19
	strh r0, [r2]
	ldr r0, _08018E3C
	movs r1, #0x99
	movs r2, #0
	movs r3, #2
	bl sub_80033A4
	ldr r0, _08018E40
	ldrb r1, [r0]
	movs r0, #3
	movs r2, #2
	bl sub_80266C8
	ldr r4, _08018E44
	ldr r0, [r4]
	bl audio_fx_still_active
	cmp r0, #0
	beq _08018E0A
	ldr r0, _08018E48
	ldrb r0, [r0]
	cmp r0, #0
	beq _08018E0A
	ldr r0, [r4]
	bl audio_halt_fx
_08018E0A:
	ldr r4, _08018E44
	ldr r0, _08018E48
	ldrb r0, [r0]
	cmp r0, #0
	beq _08018E54
	ldr r3, _08018E4C
	adds r0, r3, #0
	adds r0, #0xb0
	ldrh r0, [r0]
	ldr r2, _08018E50
	adds r1, r3, #0
	adds r1, #0xb2
	ldrb r2, [r2]
	adds r1, r1, r2
	ldrb r1, [r1]
	adds r2, r3, #0
	adds r2, #0xb4
	ldr r2, [r2]
	movs r3, #0x80
	lsls r3, r3, #9
	adds r2, r2, r3
	bl audio_new_fx
	b _08018E58
	.align 2, 0
_08018E3C: .4byte gPlayerSprite
_08018E40: .4byte gBGOffsetVertical
_08018E44: .4byte dword_20020B4
_08018E48: .4byte byte_203EA89
_08018E4C: .4byte 0x080CE440
_08018E50: .4byte byte_203EA8C
_08018E54:
	movs r0, #1
	rsbs r0, r0, #0
_08018E58:
	str r0, [r4]
	ldr r0, _08018E68
	ldrb r1, [r0, #0xa]
	movs r0, #4
	bl sub_8016790
	b _0801929E
	.align 2, 0
_08018E68: .4byte gPlayerSprite
_08018E6C:
	ldr r5, _08018EB0
	ldr r0, [r5]
	bl sub_80038AC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08018EC0
	ldr r1, _08018EB4
	movs r0, #0xa
	strh r0, [r1]
	ldr r4, _08018EB8
	adds r0, r4, #0
	movs r1, #0x31
	movs r2, #7
	movs r3, #0
	bl sub_8003368
	adds r0, r4, #0
	movs r1, #6
	bl sub_80037F4
	ldr r0, [r5]
	movs r1, #0xa0
	lsls r1, r1, #0xa
	ldr r3, _08018EBC
	ldrb r2, [r4, #0xa]
	lsls r2, r2, #2
	adds r2, r2, r3
	ldr r2, [r2]
	movs r3, #0
	bl sub_8003884
	b _08018EE4
	.align 2, 0
_08018EB0: .4byte dword_2000FC8
_08018EB4: .4byte gPlayerState
_08018EB8: .4byte gPlayerSprite
_08018EBC: .4byte dword_80CC290
_08018EC0:
	ldr r0, _08018EF0
	movs r1, #0xc
	strh r1, [r0]
	ldr r4, _08018EF4
	adds r0, r4, #0
	movs r1, #0x31
	movs r2, #7
	movs r3, #0
	bl sub_8003368
	adds r0, r4, #0
	movs r1, #6
	bl sub_80037F4
	adds r0, r4, #0
	movs r1, #6
	bl sub_800378C
_08018EE4:
	ldr r0, _08018EF4
	ldrb r1, [r0, #0xa]
	movs r0, #0xf
	bl sub_8016790
	b _0801929E
	.align 2, 0
_08018EF0: .4byte gPlayerState
_08018EF4: .4byte gPlayerSprite
_08018EF8:
	ldr r5, _08018F24
	ldr r0, [r5]
	bl sub_80038AC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08018F34
	ldr r1, _08018F28
	movs r0, #0x31
	strh r0, [r1]
	ldr r4, _08018F2C
	ldr r1, _08018F30
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r0, [r5]
	movs r1, #0xa0
	lsls r1, r1, #0xa
	b _080191C8
	.align 2, 0
_08018F24: .4byte dword_2000FC8
_08018F28: .4byte gPlayerState
_08018F2C: .4byte gPlayerSprite
_08018F30: .4byte 0x00000149
_08018F34:
	ldr r1, _08018F40
	movs r0, #0x32
	strh r0, [r1]
	ldr r0, _08018F44
	ldr r1, _08018F48
	b _080191FA
	.align 2, 0
_08018F40: .4byte gPlayerState
_08018F44: .4byte gPlayerSprite
_08018F48: .4byte 0x00000141
_08018F4C:
	ldr r5, _08018F74
	ldr r0, [r5]
	bl sub_80038AC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08018F88
	ldr r1, _08018F78
	movs r0, #0x3c
	strh r0, [r1]
	ldr r4, _08018F7C
	ldr r1, _08018F80
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r0, [r5]
	ldr r1, _08018F84
	b _080191C8
	.align 2, 0
_08018F74: .4byte dword_2000FC8
_08018F78: .4byte gPlayerState
_08018F7C: .4byte gPlayerSprite
_08018F80: .4byte 0x00000171
_08018F84: .4byte 0x00019999
_08018F88:
	ldr r1, _08018F94
	movs r0, #0x3d
	strh r0, [r1]
	ldr r0, _08018F98
	ldr r1, _08018F9C
	b _080191FA
	.align 2, 0
_08018F94: .4byte gPlayerState
_08018F98: .4byte gPlayerSprite
_08018F9C: .4byte 0x00000179
_08018FA0:
	movs r0, #0x54
	strh r0, [r2]
	ldr r4, _08018FCC
	ldr r1, _08018FD0
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r0, _08018FD4
	ldr r0, [r0]
	ldr r2, _08018FD8
	ldrb r1, [r4, #0xa]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r2, [r1]
	movs r1, #0
	movs r3, #0
	bl sub_8003884
	ldrb r1, [r4, #0xa]
	b _08019206
	.align 2, 0
_08018FCC: .4byte gPlayerSprite
_08018FD0: .4byte 0x000001C9
_08018FD4: .4byte dword_2000FC8
_08018FD8: .4byte dword_80CC290
_08018FDC:
	ldr r5, _0801904C
	ldr r0, [r5]
	bl sub_80038AC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080190A0
	ldr r1, _08019050
	ldrb r0, [r1, #1]
	cmp r0, #2
	beq _08018FF8
	ldrb r0, [r1, #2]
	cmp r0, #2
	bne _08019074
_08018FF8:
	ldr r1, _08019054
	movs r0, #0x53
	strh r0, [r1]
	ldr r4, _08019058
	ldr r1, _0801905C
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r0, [r5]
	ldr r1, _08019060
	ldr r3, _08019064
	ldrb r2, [r4, #0xa]
	lsls r2, r2, #2
	adds r2, r2, r3
	ldr r2, [r2]
	movs r3, #0
	bl sub_8003884
	ldr r0, _08019068
	ldrb r0, [r0]
	cmp r0, #0
	bne _0801902A
	b _08019202
_0801902A:
	ldr r3, _0801906C
	adds r0, r3, #0
	adds r0, #0x60
	ldrh r0, [r0]
	ldr r2, _08019070
	adds r1, r3, #0
	adds r1, #0x62
	ldrb r2, [r2]
	adds r1, r1, r2
	ldrb r1, [r1]
	ldr r2, [r3, #0x64]
	movs r3, #0x80
	lsls r3, r3, #9
	adds r2, r2, r3
	bl audio_new_fx
	b _08019202
	.align 2, 0
_0801904C: .4byte dword_2000FC8
_08019050: .4byte 0x030028FC
_08019054: .4byte gPlayerState
_08019058: .4byte gPlayerSprite
_0801905C: .4byte 0x000001C1
_08019060: .4byte 0x0001CCCD
_08019064: .4byte dword_80CC290
_08019068: .4byte byte_203EA89
_0801906C: .4byte 0x080CE440
_08019070: .4byte byte_203EA8C
_08019074:
	ldr r1, _08019090
	movs r0, #0x52
	strh r0, [r1]
	ldr r4, _08019094
	ldr r1, _08019098
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r0, [r5]
	ldr r1, _0801909C
	b _080191C8
	.align 2, 0
_08019090: .4byte gPlayerState
_08019094: .4byte gPlayerSprite
_08019098: .4byte 0x000001A9
_0801909C: .4byte 0x00019999
_080190A0:
	ldr r1, _080190AC
	movs r0, #0x50
	strh r0, [r1]
	ldr r0, _080190B0
	ldr r1, _080190B4
	b _080191FA
	.align 2, 0
_080190AC: .4byte gPlayerState
_080190B0: .4byte gPlayerSprite
_080190B4: .4byte 0x000001D1
_080190B8:
	ldr r5, _080190E4
	ldr r0, [r5]
	bl sub_80038AC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080190F4
	ldr r1, _080190E8
	movs r0, #0x4b
	strh r0, [r1]
	ldr r4, _080190EC
	ldr r1, _080190F0
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r0, [r5]
	movs r1, #0xa0
	lsls r1, r1, #0xa
	b _080191C8
	.align 2, 0
_080190E4: .4byte dword_2000FC8
_080190E8: .4byte gPlayerState
_080190EC: .4byte gPlayerSprite
_080190F0: .4byte 0x00000191
_080190F4:
	ldr r1, _08019100
	movs r0, #0x4c
	strh r0, [r1]
	ldr r0, _08019104
	ldr r1, _08019108
	b _080191FA
	.align 2, 0
_08019100: .4byte gPlayerState
_08019104: .4byte gPlayerSprite
_08019108: .4byte 0x000001A1
_0801910C:
	movs r0, #0x3a
	strh r0, [r2]
	ldr r0, _0801911C
	ldrb r1, [r0, #0xa]
	movs r0, #0xa
	bl sub_8016790
	b _0801929E
	.align 2, 0
_0801911C: .4byte gPlayerSprite
_08019120:
	ldr r5, _08019158
	ldr r0, [r5]
	bl sub_80038AC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08019170
	ldr r1, _0801915C
	movs r0, #0x28
	strh r0, [r1]
	ldr r4, _08019160
	ldr r1, _08019164
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r0, [r5]
	ldr r1, _08019168
	ldr r3, _0801916C
	ldrb r2, [r4, #0xa]
	lsls r2, r2, #2
	adds r2, r2, r3
	ldr r2, [r2]
	movs r3, #0
	bl sub_8003884
	b _08019182
	.align 2, 0
_08019158: .4byte dword_2000FC8
_0801915C: .4byte gPlayerState
_08019160: .4byte gPlayerSprite
_08019164: .4byte 0x00000209
_08019168: .4byte 0x00019999
_0801916C: .4byte dword_80CC290
_08019170:
	ldr r1, _08019190
	movs r0, #0x27
	strh r0, [r1]
	ldr r0, _08019194
	ldr r1, _08019198
	movs r2, #0
	movs r3, #0
	bl sub_8003368
_08019182:
	ldr r0, _08019194
	ldrb r1, [r0, #0xa]
	movs r0, #5
	bl sub_8016790
	b _0801929E
	.align 2, 0
_08019190: .4byte gPlayerState
_08019194: .4byte gPlayerSprite
_08019198: .4byte 0x000001F9
_0801919C:
	ldr r4, _080191DC
	adds r0, r4, #0
	bl sub_80037A0
	ldr r5, _080191E0
	ldr r0, [r5]
	bl sub_80038AC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080191F0
	ldr r1, _080191E4
	movs r0, #0x46
	strh r0, [r1]
	adds r0, r4, #0
	movs r1, #0xf9
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r0, [r5]
	ldr r1, _080191E8
_080191C8:
	ldr r3, _080191EC
	ldrb r2, [r4, #0xa]
	lsls r2, r2, #2
	adds r2, r2, r3
	ldr r2, [r2]
	movs r3, #0
	bl sub_8003884
	b _08019202
	.align 2, 0
_080191DC: .4byte gPlayerSprite
_080191E0: .4byte dword_2000FC8
_080191E4: .4byte gPlayerState
_080191E8: .4byte 0x00014CCD
_080191EC: .4byte dword_80CC290
_080191F0:
	ldr r0, _08019210
	movs r1, #0x47
	strh r1, [r0]
	ldr r1, _08019214
	adds r0, r4, #0
_080191FA:
	movs r2, #0
	movs r3, #0
	bl sub_8003368
_08019202:
	ldr r0, _08019218
	ldrb r1, [r0, #0xa]
_08019206:
	movs r0, #0
	bl sub_8016790
	b _0801929E
	.align 2, 0
_08019210: .4byte gPlayerState
_08019214: .4byte 0x00000101
_08019218: .4byte gPlayerSprite
_0801921C:
	movs r0, #0xd
	strh r0, [r2]
	ldr r0, _0801922C
	ldrb r1, [r0, #0xa]
	movs r0, #2
	bl sub_8016790
	b _0801929E
	.align 2, 0
_0801922C: .4byte gPlayerSprite
_08019230:
	movs r0, #0x3a
	strh r0, [r2]
	b _0801929E
_08019236:
	ldr r5, _08019270
	ldr r0, [r5]
	bl sub_80038AC
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	beq _08019284
	ldr r1, _08019274
	movs r0, #4
	strh r0, [r1]
	ldr r4, _08019278
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r0, [r5]
	ldr r1, _0801927C
	ldr r3, _08019280
	ldrb r2, [r4, #0xa]
	lsls r2, r2, #2
	adds r2, r2, r3
	ldr r2, [r2]
	movs r3, #0
	bl sub_8003884
	b _08019294
	.align 2, 0
_08019270: .4byte dword_2000FC8
_08019274: .4byte gPlayerState
_08019278: .4byte gPlayerSprite
_0801927C: .4byte 0x00019999
_08019280: .4byte dword_80CC290
_08019284:
	ldr r0, _080192BC
	strh r1, [r0]
	ldr r0, _080192C0
	movs r1, #0x19
	movs r2, #0
	movs r3, #0
	bl sub_8003368
_08019294:
	ldr r0, _080192C0
	ldrb r1, [r0, #0xa]
	movs r0, #0
	bl sub_8016790
_0801929E:
	ldr r0, _080192C4
	ldr r0, [r0]
	bl sub_800387C
	ldr r0, _080192C8
	movs r1, #0
	strb r1, [r0]
	ldr r0, _080192CC
	strb r1, [r0]
	ldr r0, _080192D0
	strb r1, [r0]
_080192B4:
	movs r0, #1
_080192B6:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080192BC: .4byte gPlayerState
_080192C0: .4byte gPlayerSprite
_080192C4: .4byte dword_2000FC8
_080192C8: .4byte 0x020021C5
_080192CC: .4byte 0x020021C6
_080192D0: .4byte 0x020021C7

    .thumb
	.global sub_80192D4
sub_80192D4: @ 0x080192D4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	mov sb, r0
	adds r4, r1, #0
	adds r7, r2, #0
	ldr r0, _08019374
	mov r8, r0
	ldrb r0, [r0, #0x13]
	cmp r0, #0
	bne _080192EE
	b _080198EC
_080192EE:
	ldr r1, _08019378
	movs r0, #0
	strh r0, [r1]
	ldr r0, _0801937C
	ldrb r0, [r0]
	cmp r0, #0
	bne _08019304
	ldr r5, _08019380
	ldrh r0, [r5]
	cmp r0, #0x23
	bne _08019394
_08019304:
	ldr r0, _08019384
	ldrb r0, [r0]
	cmp r0, #0
	beq _08019350
	ldr r4, _08019388
	movs r0, #4
	movs r1, #5
	bl RandomMinMax
	lsls r0, r0, #3
	adds r0, r0, r4
	ldrh r6, [r0]
	movs r0, #4
	movs r1, #5
	bl RandomMinMax
	ldr r1, _0801938C
	lsls r0, r0, #3
	ldrb r1, [r1]
	adds r0, r0, r1
	adds r1, r4, #2
	adds r0, r0, r1
	ldrb r5, [r0]
	movs r0, #4
	movs r1, #5
	bl RandomMinMax
	lsls r0, r0, #3
	adds r4, #4
	adds r0, r0, r4
	ldr r2, [r0]
	movs r1, #0x80
	lsls r1, r1, #9
	adds r2, r2, r1
	adds r0, r6, #0
	adds r1, r5, #0
	bl audio_new_fx
_08019350:
	mov r0, sb
	bl sub_800E178
	mov r2, r8
	ldrb r0, [r2, #0x13]
	cmp r0, #0
	beq _08019360
	b _080198EC
_08019360:
	cmp r7, #0
	beq _08019366
	b _080198EC
_08019366:
	ldr r0, _08019390
	ldrb r0, [r0]
	cmp r0, #0
	beq _08019370
	b _0801989C
_08019370:
	b _080198CC
	.align 2, 0
_08019374: .4byte gGameStatus
_08019378: .4byte word_20010AC
_0801937C: .4byte gIsSlideMiniGame
_08019380: .4byte gPlayerState
_08019384: .4byte byte_203EA89
_08019388: .4byte 0x080CE440
_0801938C: .4byte byte_203EA8C
_08019390: .4byte 0x02001370
_08019394:
	ldr r6, _080193C4
	ldrh r0, [r5]
	lsls r0, r0, #1
	adds r0, r0, r6
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r1
	cmp r0, #0
	beq _080193AE
	movs r0, #3
	bl sub_0804200C
_080193AE:
	bl sub_8026714
	ldr r0, _080193C8
	ldrb r0, [r0]
	cmp r0, #0
	beq _080193CC
	adds r0, r4, #0
	adds r1, r7, #0
	bl sub_08019AAC
	b _08019882
	.align 2, 0
_080193C4: .4byte gPlayerStateSettings
_080193C8: .4byte byte_20020B1
_080193CC:
	ldrh r2, [r5]
	lsls r0, r2, #1
	adds r0, r0, r6
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	bne _080193E0
	b _080194F8
_080193E0:
	cmp r7, #1
	beq _0801946C
	cmp r7, #1
	ble _08019480
	cmp r7, #2
	bne _08019480
	ldr r0, _0801941C
	strh r2, [r0]
	movs r0, #0x45
	strh r0, [r5]
	cmp r4, #0
	blt _0801942C
	ldr r2, _08019420
	adds r0, r4, #4
	movs r1, #7
	ands r0, r1
	strb r0, [r2, #0xa]
	ldr r0, _08019424
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #0xa
	ldr r3, _08019428
	lsls r2, r4, #2
	adds r2, r2, r3
	ldr r2, [r2]
	movs r3, #0
	bl sub_8003884
	b _0801944C
	.align 2, 0
_0801941C: .4byte gPreviousPlayerState
_08019420: .4byte gPlayerSprite
_08019424: .4byte dword_2000FC8
_08019428: .4byte dword_80CC290
_0801942C:
	ldr r0, _0801945C
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #0xa
	ldr r4, _08019460
	ldr r2, _08019464
	ldrb r2, [r2, #0xa]
	adds r2, #4
	movs r3, #7
	ands r2, r3
	lsls r2, r2, #2
	adds r2, r2, r4
	ldr r2, [r2]
	movs r3, #0
	bl sub_8003884
_0801944C:
	ldr r0, _08019464
	ldr r1, _08019468
	movs r2, #0
	movs r3, #1
	bl sub_8003368
	b _08019480
	.align 2, 0
_0801945C: .4byte dword_2000FC8
_08019460: .4byte dword_80CC290
_08019464: .4byte gPlayerSprite
_08019468: .4byte 0x00000219
_0801946C:
	ldr r0, _080194E0
	strh r2, [r0]
	movs r0, #0x45
	strh r0, [r5]
	ldr r0, _080194E4
	ldr r1, _080194E8
	movs r2, #0
	movs r3, #1
	bl sub_8003368
_08019480:
	ldr r4, _080194E4
	ldr r1, _080194E8
	adds r0, r4, #0
	movs r2, #0
	movs r3, #1
	bl sub_8003368
	ldrb r1, [r4, #0xa]
	movs r0, #0
	bl sub_8016790
	ldr r0, _080194EC
	ldrb r0, [r0]
	cmp r0, #0
	bne _080194A0
	b _08019882
_080194A0:
	ldr r4, _080194F0
	movs r0, #4
	movs r1, #5
	bl RandomMinMax
	lsls r0, r0, #3
	adds r0, r0, r4
	ldrh r6, [r0]
	movs r0, #4
	movs r1, #5
	bl RandomMinMax
	ldr r1, _080194F4
	lsls r0, r0, #3
	ldrb r1, [r1]
	adds r0, r0, r1
	adds r1, r4, #2
	adds r0, r0, r1
	ldrb r5, [r0]
	movs r0, #4
	movs r1, #5
	bl RandomMinMax
	lsls r0, r0, #3
	adds r4, #4
	adds r0, r0, r4
	ldr r2, [r0]
	movs r0, #0x80
	lsls r0, r0, #9
	adds r2, r2, r0
	b _080195F8
	.align 2, 0
_080194E0: .4byte gPreviousPlayerState
_080194E4: .4byte gPlayerSprite
_080194E8: .4byte 0x00000219
_080194EC: .4byte byte_203EA89
_080194F0: .4byte 0x080CE440
_080194F4: .4byte byte_203EA8C
_080194F8:
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _08019502
	b _08019618
_08019502:
	cmp r7, #1
	beq _08019594
	cmp r7, #1
	ble _080195A8
	cmp r7, #2
	bne _080195A8
	ldr r0, _0801953C
	strh r2, [r0]
	movs r0, #0x48
	strh r0, [r5]
	cmp r4, #0
	blt _0801954C
	ldr r2, _08019540
	adds r0, r4, #4
	movs r1, #7
	ands r0, r1
	strb r0, [r2, #0xa]
	ldr r0, _08019544
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #0xa
	ldr r3, _08019548
	lsls r2, r4, #2
	adds r2, r2, r3
	ldr r2, [r2]
	movs r3, #0
	bl sub_8003884
	b _0801956C
	.align 2, 0
_0801953C: .4byte gPreviousPlayerState
_08019540: .4byte gPlayerSprite
_08019544: .4byte dword_2000FC8
_08019548: .4byte dword_80CC290
_0801954C:
	ldr r0, _08019588
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #0xa
	ldr r4, _0801958C
	ldr r2, _08019590
	ldrb r2, [r2, #0xa]
	adds r2, #4
	movs r3, #7
	ands r2, r3
	lsls r2, r2, #2
	adds r2, r2, r4
	ldr r2, [r2]
	movs r3, #0
	bl sub_8003884
_0801956C:
	ldr r0, _08019588
	ldr r0, [r0]
	movs r1, #0xc0
	lsls r1, r1, #0xa
	movs r2, #0
	bl CallARM_store_jump_and_other_value
	ldr r0, _08019590
	movs r1, #0xf1
	movs r2, #0
	movs r3, #1
	bl sub_8003368
	b _080195A8
	.align 2, 0
_08019588: .4byte dword_2000FC8
_0801958C: .4byte dword_80CC290
_08019590: .4byte gPlayerSprite
_08019594:
	ldr r0, _08019604
	strh r2, [r0]
	movs r0, #0x48
	strh r0, [r5]
	ldr r0, _08019608
	movs r1, #0xf1
	movs r2, #0
	movs r3, #1
	bl sub_8003368
_080195A8:
	ldr r0, _08019608
	ldrb r1, [r0, #0xa]
	movs r0, #0
	bl sub_8016790
	ldr r0, _0801960C
	ldrb r0, [r0]
	cmp r0, #0
	bne _080195BC
	b _08019882
_080195BC:
	ldr r4, _08019610
	movs r0, #4
	movs r1, #5
	bl RandomMinMax
	lsls r0, r0, #3
	adds r0, r0, r4
	ldrh r6, [r0]
	movs r0, #4
	movs r1, #5
	bl RandomMinMax
	ldr r1, _08019614
	lsls r0, r0, #3
	ldrb r1, [r1]
	adds r0, r0, r1
	adds r1, r4, #2
	adds r0, r0, r1
	ldrb r5, [r0]
	movs r0, #4
	movs r1, #5
	bl RandomMinMax
	lsls r0, r0, #3
	adds r4, #4
	adds r0, r0, r4
	ldr r2, [r0]
	movs r1, #0x80
	lsls r1, r1, #9
	adds r2, r2, r1
_080195F8:
	adds r0, r6, #0
	adds r1, r5, #0
	bl audio_new_fx
	b _08019882
	.align 2, 0
_08019604: .4byte gPreviousPlayerState
_08019608: .4byte gPlayerSprite
_0801960C: .4byte byte_203EA89
_08019610: .4byte 0x080CE440
_08019614: .4byte byte_203EA8C
_08019618:
	movs r0, #0x80
	lsls r0, r0, #8
	ands r0, r1
	cmp r0, #0
	bne _08019624
	b _08019758
_08019624:
	cmp r7, #1
	beq _080196B8
	cmp r7, #1
	ble _080196DA
	cmp r7, #2
	bne _080196DA
	ldr r0, _08019660
	strh r2, [r0]
	movs r0, #0x1e
	strh r0, [r5]
	cmp r4, #0
	blt _08019670
	ldr r2, _08019664
	adds r0, r4, #4
	movs r1, #7
	ands r0, r1
	strb r0, [r2, #0xa]
	ldr r0, _08019668
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #0xa
	ldr r3, _0801966C
	lsls r2, r4, #2
	adds r2, r2, r3
	ldr r2, [r2]
	movs r3, #0
	bl sub_8003884
	b _08019690
	.align 2, 0
_08019660: .4byte gPreviousPlayerState
_08019664: .4byte gPlayerSprite
_08019668: .4byte dword_2000FC8
_0801966C: .4byte dword_80CC290
_08019670:
	ldr r0, _080196AC
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #0xa
	ldr r4, _080196B0
	ldr r2, _080196B4
	ldrb r2, [r2, #0xa]
	adds r2, #4
	movs r3, #7
	ands r2, r3
	lsls r2, r2, #2
	adds r2, r2, r4
	ldr r2, [r2]
	movs r3, #0
	bl sub_8003884
_08019690:
	ldr r0, _080196AC
	ldr r0, [r0]
	movs r1, #0xc0
	lsls r1, r1, #0xa
	movs r2, #0
	bl CallARM_store_jump_and_other_value
	ldr r0, _080196B4
	movs r1, #0xd1
	movs r2, #0
	movs r3, #1
	bl sub_8003368
	b _080196DA
	.align 2, 0
_080196AC: .4byte dword_2000FC8
_080196B0: .4byte dword_80CC290
_080196B4: .4byte gPlayerSprite
_080196B8:
	ldr r0, _08019738
	strh r2, [r0]
	movs r0, #0x1e
	strh r0, [r5]
	ldr r0, _0801973C
	ldr r0, [r0]
	movs r1, #0xc0
	lsls r1, r1, #0xa
	ldr r2, _08019740
	bl CallARM_store_jump_and_other_value
	ldr r0, _08019744
	movs r1, #0xd1
	movs r2, #0
	movs r3, #1
	bl sub_8003368
_080196DA:
	ldr r0, _08019744
	ldrb r1, [r0, #0xa]
	movs r0, #0
	bl sub_8016790
	ldr r2, _08019748
	mov r8, r2
	ldrb r0, [r2]
	cmp r0, #0
	beq _08019732
	ldr r4, _0801974C
	movs r0, #4
	movs r1, #5
	bl RandomMinMax
	lsls r0, r0, #3
	adds r0, r0, r4
	ldrh r6, [r0]
	movs r0, #4
	movs r1, #5
	bl RandomMinMax
	ldr r1, _08019750
	lsls r0, r0, #3
	ldrb r1, [r1]
	adds r0, r0, r1
	adds r1, r4, #2
	adds r0, r0, r1
	ldrb r5, [r0]
	movs r0, #4
	movs r1, #5
	bl RandomMinMax
	lsls r0, r0, #3
	adds r4, #4
	adds r0, r0, r4
	ldr r2, [r0]
	movs r0, #0x80
	lsls r0, r0, #9
	adds r2, r2, r0
	adds r0, r6, #0
	adds r1, r5, #0
	bl audio_new_fx
_08019732:
	ldr r5, _08019754
	b _08019868
	.align 2, 0
_08019738: .4byte gPreviousPlayerState
_0801973C: .4byte dword_2000FC8
_08019740: .4byte 0xFFFFE000
_08019744: .4byte gPlayerSprite
_08019748: .4byte byte_203EA89
_0801974C: .4byte 0x080CE440
_08019750: .4byte byte_203EA8C
_08019754: .4byte dword_20020B8
_08019758:
	cmp r7, #1
	beq _080197EC
	cmp r7, #1
	ble _0801980E
	cmp r7, #2
	bne _0801980E
	ldr r0, _08019794
	strh r2, [r0]
	movs r0, #0x1d
	strh r0, [r5]
	cmp r4, #0
	blt _080197A4
	ldr r2, _08019798
	adds r0, r4, #4
	movs r1, #7
	ands r0, r1
	strb r0, [r2, #0xa]
	ldr r0, _0801979C
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #0xa
	ldr r3, _080197A0
	lsls r2, r4, #2
	adds r2, r2, r3
	ldr r2, [r2]
	movs r3, #0
	bl sub_8003884
	b _080197C4
	.align 2, 0
_08019794: .4byte gPreviousPlayerState
_08019798: .4byte gPlayerSprite
_0801979C: .4byte dword_2000FC8
_080197A0: .4byte dword_80CC290
_080197A4:
	ldr r0, _080197E0
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #0xa
	ldr r4, _080197E4
	ldr r2, _080197E8
	ldrb r2, [r2, #0xa]
	adds r2, #4
	movs r3, #7
	ands r2, r3
	lsls r2, r2, #2
	adds r2, r2, r4
	ldr r2, [r2]
	movs r3, #0
	bl sub_8003884
_080197C4:
	ldr r0, _080197E0
	ldr r0, [r0]
	movs r1, #0xc0
	lsls r1, r1, #0xa
	movs r2, #0
	bl CallARM_store_jump_and_other_value
	ldr r0, _080197E8
	movs r1, #0xa1
	movs r2, #0
	movs r3, #1
	bl sub_8003368
	b _0801980E
	.align 2, 0
_080197E0: .4byte dword_2000FC8
_080197E4: .4byte dword_80CC290
_080197E8: .4byte gPlayerSprite
_080197EC:
	ldr r0, _080198A4
	strh r2, [r0]
	movs r0, #0x1d
	strh r0, [r5]
	ldr r0, _080198A8
	ldr r0, [r0]
	movs r1, #0xc0
	lsls r1, r1, #0xa
	ldr r2, _080198AC
	bl CallARM_store_jump_and_other_value
	ldr r0, _080198B0
	movs r1, #0xa1
	movs r2, #0
	movs r3, #1
	bl sub_8003368
_0801980E:
	ldr r0, _080198B0
	ldrb r1, [r0, #0xa]
	movs r0, #0
	bl sub_8016790
	ldr r0, _080198B4
	mov r8, r0
	ldrb r0, [r0]
	cmp r0, #0
	beq _08019866
	ldr r4, _080198B8
	movs r0, #4
	movs r1, #5
	bl RandomMinMax
	lsls r0, r0, #3
	adds r0, r0, r4
	ldrh r6, [r0]
	movs r0, #4
	movs r1, #5
	bl RandomMinMax
	ldr r1, _080198BC
	lsls r0, r0, #3
	ldrb r1, [r1]
	adds r0, r0, r1
	adds r1, r4, #2
	adds r0, r0, r1
	ldrb r5, [r0]
	movs r0, #4
	movs r1, #5
	bl RandomMinMax
	lsls r0, r0, #3
	adds r4, #4
	adds r0, r0, r4
	ldr r2, [r0]
	movs r1, #0x80
	lsls r1, r1, #9
	adds r2, r2, r1
	adds r0, r6, #0
	adds r1, r5, #0
	bl audio_new_fx
_08019866:
	ldr r5, _080198C0
_08019868:
	ldr r1, [r5]
	movs r4, #1
	rsbs r4, r4, #0
	cmp r1, r4
	beq _08019882
	mov r2, r8
	ldrb r0, [r2]
	cmp r0, #0
	beq _08019880
	adds r0, r1, #0
	bl audio_halt_fx
_08019880:
	str r4, [r5]
_08019882:
	mov r0, sb
	bl sub_800E178
	ldr r0, _080198C4
	ldrb r0, [r0, #0x13]
	cmp r0, #0
	bne _080198D2
	cmp r7, #0
	bne _080198EC
	ldr r0, _080198C8
	ldrb r0, [r0]
	cmp r0, #0
	beq _080198CC
_0801989C:
	bl sub_800F7A0
	b _080198EC
	.align 2, 0
_080198A4: .4byte gPreviousPlayerState
_080198A8: .4byte dword_2000FC8
_080198AC: .4byte 0xFFFFE000
_080198B0: .4byte gPlayerSprite
_080198B4: .4byte byte_203EA89
_080198B8: .4byte 0x080CE440
_080198BC: .4byte byte_203EA8C
_080198C0: .4byte dword_20020B4
_080198C4: .4byte gGameStatus
_080198C8: .4byte 0x02001370
_080198CC:
	bl sub_8016890
	b _080198EC
_080198D2:
	ldr r1, _080198F8
	movs r0, #1
	strb r0, [r1]
	ldr r0, _080198FC
	movs r2, #0x78
	strh r2, [r0]
	ldr r0, _08019900
	movs r1, #1
	strb r1, [r0, #0x10]
	ldr r0, _08019904
	strb r1, [r0]
	ldr r0, _08019908
	strh r2, [r0]
_080198EC:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080198F8: .4byte 0x0200108D
_080198FC: .4byte 0x02001090
_08019900: .4byte gPlayerSprite
_08019904: .4byte 0x0200108E
_08019908: .4byte 0x02001092

    .thumb
	.global sub_801990C
sub_801990C: @ 0x0801990C
	push {r4, r5, r6, lr}
	bl sub_8026714
	ldr r5, _08019944
	ldr r4, _08019948
	ldrh r0, [r4]
	lsls r0, r0, #1
	adds r0, r0, r5
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r1
	cmp r0, #0
	beq _0801992E
	movs r0, #3
	bl sub_0804200C
_0801992E:
	ldr r0, _0801994C
	ldrb r0, [r0]
	cmp r0, #0
	beq _08019950
	movs r0, #1
	rsbs r0, r0, #0
	movs r1, #2
	bl sub_08019AAC
	b _08019A88
	.align 2, 0
_08019944: .4byte gPlayerStateSettings
_08019948: .4byte gPlayerState
_0801994C: .4byte byte_20020B1
_08019950:
	ldrh r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r5
	ldrh r2, [r0]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r2
	cmp r0, #0
	beq _080199A4
	ldr r0, _08019990
	strh r1, [r0]
	movs r0, #0x45
	strh r0, [r4]
	ldr r0, _08019994
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #9
	ldr r5, _08019998
	ldr r4, _0801999C
	ldrb r2, [r4, #0xa]
	adds r2, #4
	movs r3, #7
	ands r2, r3
	lsls r2, r2, #2
	adds r2, r2, r5
	ldr r2, [r2]
	movs r3, #0
	bl sub_8003884
	ldr r1, _080199A0
	adds r0, r4, #0
	b _080199E4
	.align 2, 0
_08019990: .4byte gPreviousPlayerState
_08019994: .4byte dword_2000FC8
_08019998: .4byte dword_80CC290
_0801999C: .4byte gPlayerSprite
_080199A0: .4byte 0x00000219
_080199A4:
	movs r0, #4
	ands r0, r2
	cmp r0, #0
	beq _08019A08
	ldr r0, _080199F8
	strh r1, [r0]
	movs r0, #0x48
	strh r0, [r4]
	ldr r6, _080199FC
	ldr r0, [r6]
	movs r1, #0x98
	lsls r1, r1, #9
	ldr r5, _08019A00
	ldr r4, _08019A04
	ldrb r2, [r4, #0xa]
	adds r2, #4
	movs r3, #7
	ands r2, r3
	lsls r2, r2, #2
	adds r2, r2, r5
	ldr r2, [r2]
	movs r3, #0
	bl sub_8003884
	ldr r0, [r6]
	movs r1, #0xc0
	lsls r1, r1, #0xa
	movs r2, #0
	bl CallARM_store_jump_and_other_value
	adds r0, r4, #0
	movs r1, #0xf1
_080199E4:
	movs r2, #0
	movs r3, #1
	bl sub_8003368
	ldrb r1, [r4, #0xa]
	movs r0, #0
	bl sub_8016790
	b _08019A88
	.align 2, 0
_080199F8: .4byte gPreviousPlayerState
_080199FC: .4byte dword_2000FC8
_08019A00: .4byte dword_80CC290
_08019A04: .4byte gPlayerSprite
_08019A08:
	ldr r0, _08019A90
	strh r1, [r0]
	movs r0, #0x1d
	strh r0, [r4]
	ldr r6, _08019A94
	ldr r0, [r6]
	movs r1, #0x98
	lsls r1, r1, #9
	ldr r5, _08019A98
	ldr r4, _08019A9C
	ldrb r2, [r4, #0xa]
	adds r2, #4
	movs r3, #7
	ands r2, r3
	lsls r2, r2, #2
	adds r2, r2, r5
	ldr r2, [r2]
	movs r3, #0
	bl sub_8003884
	ldr r0, [r6]
	movs r1, #0xc0
	lsls r1, r1, #0xa
	movs r2, #0
	bl CallARM_store_jump_and_other_value
	adds r0, r4, #0
	movs r1, #0xa1
	movs r2, #0
	movs r3, #1
	bl sub_8003368
	ldrb r1, [r4, #0xa]
	movs r0, #0
	bl sub_8016790
	ldr r5, _08019AA0
	ldr r1, [r5]
	movs r4, #1
	rsbs r4, r4, #0
	cmp r1, r4
	beq _08019A6C
	ldr r0, _08019AA4
	ldrb r0, [r0]
	cmp r0, #0
	beq _08019A6A
	adds r0, r1, #0
	bl audio_halt_fx
_08019A6A:
	str r4, [r5]
_08019A6C:
	ldr r5, _08019AA8
	ldr r1, [r5]
	movs r4, #1
	rsbs r4, r4, #0
	cmp r1, r4
	beq _08019A88
	ldr r0, _08019AA4
	ldrb r0, [r0]
	cmp r0, #0
	beq _08019A86
	adds r0, r1, #0
	bl audio_halt_fx
_08019A86:
	str r4, [r5]
_08019A88:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08019A90: .4byte gPreviousPlayerState
_08019A94: .4byte dword_2000FC8
_08019A98: .4byte dword_80CC290
_08019A9C: .4byte gPlayerSprite
_08019AA0: .4byte dword_20020B8
_08019AA4: .4byte byte_203EA89
_08019AA8: .4byte dword_20020B4

    .thumb
sub_08019AAC: @ 0x08019AAC
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r2, r1, #0
	ldr r0, _08019AFC
	ldrb r0, [r0]
	cmp r0, #1
	bne _08019B90
	cmp r2, #1
	beq _08019B58
	cmp r2, #1
	bgt _08019AC4
	b _08019F5A
_08019AC4:
	cmp r2, #2
	beq _08019ACA
	b _08019F5A
_08019ACA:
	ldr r2, _08019B00
	ldr r1, _08019B04
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0x38
	strh r0, [r1]
	cmp r4, #0
	blt _08019B14
	ldr r2, _08019B08
	adds r0, r4, #4
	movs r1, #7
	ands r0, r1
	strb r0, [r2, #0xa]
	ldr r0, _08019B0C
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #0xa
	ldr r3, _08019B10
	lsls r2, r4, #2
	adds r2, r2, r3
	ldr r2, [r2]
	movs r3, #0
	bl sub_8003884
	b _08019B34
	.align 2, 0
_08019AFC: .4byte byte_20020B1
_08019B00: .4byte gPreviousPlayerState
_08019B04: .4byte gPlayerState
_08019B08: .4byte gPlayerSprite
_08019B0C: .4byte dword_2000FC8
_08019B10: .4byte dword_80CC290
_08019B14:
	ldr r0, _08019B48
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #0xa
	ldr r4, _08019B4C
	ldr r2, _08019B50
	ldrb r2, [r2, #0xa]
	adds r2, #4
	movs r3, #7
	ands r2, r3
	lsls r2, r2, #2
	adds r2, r2, r4
	ldr r2, [r2]
	movs r3, #0
	bl sub_8003884
_08019B34:
	ldr r0, _08019B48
	ldr r0, [r0]
	movs r1, #0xc0
	lsls r1, r1, #0xa
	movs r2, #0
	bl CallARM_store_jump_and_other_value
	ldr r0, _08019B50
	ldr r1, _08019B54
	b _08019F1E
	.align 2, 0
_08019B48: .4byte dword_2000FC8
_08019B4C: .4byte dword_80CC290
_08019B50: .4byte gPlayerSprite
_08019B54: .4byte 0x00000151
_08019B58:
	ldr r2, _08019B78
	ldr r1, _08019B7C
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0x38
	strh r0, [r1]
	ldr r0, _08019B80
	ldr r0, [r0]
	movs r1, #0xc0
	lsls r1, r1, #0xa
	ldr r2, _08019B84
	bl CallARM_store_jump_and_other_value
	ldr r0, _08019B88
	ldr r1, _08019B8C
	b _08019F52
	.align 2, 0
_08019B78: .4byte gPreviousPlayerState
_08019B7C: .4byte gPlayerState
_08019B80: .4byte dword_2000FC8
_08019B84: .4byte 0xFFFFE000
_08019B88: .4byte gPlayerSprite
_08019B8C: .4byte 0x00000151
_08019B90:
	cmp r0, #2
	beq _08019B96
	b _08019CA4
_08019B96:
	cmp r2, #1
	beq _08019C34
	cmp r2, #1
	ble _08019C5A
	cmp r2, #2
	bne _08019C5A
	ldr r2, _08019BD4
	ldr r1, _08019BD8
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0x3b
	strh r0, [r1]
	cmp r4, #0
	blt _08019BE8
	ldr r2, _08019BDC
	adds r0, r4, #4
	movs r1, #7
	ands r0, r1
	strb r0, [r2, #0xa]
	ldr r0, _08019BE0
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #0xa
	ldr r3, _08019BE4
	lsls r2, r4, #2
	adds r2, r2, r3
	ldr r2, [r2]
	movs r3, #0
	bl sub_8003884
	b _08019C08
	.align 2, 0
_08019BD4: .4byte gPreviousPlayerState
_08019BD8: .4byte gPlayerState
_08019BDC: .4byte gPlayerSprite
_08019BE0: .4byte dword_2000FC8
_08019BE4: .4byte dword_80CC290
_08019BE8:
	ldr r0, _08019C24
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #0xa
	ldr r4, _08019C28
	ldr r2, _08019C2C
	ldrb r2, [r2, #0xa]
	adds r2, #4
	movs r3, #7
	ands r2, r3
	lsls r2, r2, #2
	adds r2, r2, r4
	ldr r2, [r2]
	movs r3, #0
	bl sub_8003884
_08019C08:
	ldr r0, _08019C24
	ldr r0, [r0]
	movs r1, #0xc0
	lsls r1, r1, #0xa
	movs r2, #0
	bl CallARM_store_jump_and_other_value
	ldr r0, _08019C2C
	ldr r1, _08019C30
	movs r2, #0
	movs r3, #1
	bl sub_8003368
	b _08019C5A
	.align 2, 0
_08019C24: .4byte dword_2000FC8
_08019C28: .4byte dword_80CC290
_08019C2C: .4byte gPlayerSprite
_08019C30: .4byte 0x00000169
_08019C34:
	ldr r2, _08019C84
	ldr r1, _08019C88
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0x3b
	strh r0, [r1]
	ldr r0, _08019C8C
	ldr r0, [r0]
	movs r1, #0xc0
	lsls r1, r1, #0xa
	ldr r2, _08019C90
	bl CallARM_store_jump_and_other_value
	ldr r0, _08019C94
	ldr r1, _08019C98
	movs r2, #0
	movs r3, #1
	bl sub_8003368
_08019C5A:
	ldr r0, _08019C94
	ldrb r1, [r0, #0xa]
	movs r0, #0
	bl sub_8016790
	ldr r4, _08019C9C
	ldr r0, [r4]
	bl audio_fx_still_active
	cmp r0, #0
	bne _08019C72
	b _08019F64
_08019C72:
	ldr r0, _08019CA0
	ldrb r0, [r0]
	cmp r0, #0
	bne _08019C7C
	b _08019FC4
_08019C7C:
	ldr r0, [r4]
	bl audio_halt_fx
	b _08019F64
	.align 2, 0
_08019C84: .4byte gPreviousPlayerState
_08019C88: .4byte gPlayerState
_08019C8C: .4byte dword_2000FC8
_08019C90: .4byte 0xFFFFE000
_08019C94: .4byte gPlayerSprite
_08019C98: .4byte 0x00000169
_08019C9C: .4byte 0x020021D4
_08019CA0: .4byte byte_203EA89
_08019CA4:
	cmp r0, #3
	beq _08019CAA
	b _08019DEC
_08019CAA:
	cmp r2, #1
	beq _08019D48
	cmp r2, #1
	ble _08019D6E
	cmp r2, #2
	bne _08019D6E
	ldr r2, _08019CE8
	ldr r1, _08019CEC
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0x4f
	strh r0, [r1]
	cmp r4, #0
	blt _08019CFC
	ldr r2, _08019CF0
	adds r0, r4, #4
	movs r1, #7
	ands r0, r1
	strb r0, [r2, #0xa]
	ldr r0, _08019CF4
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #0xa
	ldr r3, _08019CF8
	lsls r2, r4, #2
	adds r2, r2, r3
	ldr r2, [r2]
	movs r3, #0
	bl sub_8003884
	b _08019D1C
	.align 2, 0
_08019CE8: .4byte gPreviousPlayerState
_08019CEC: .4byte gPlayerState
_08019CF0: .4byte gPlayerSprite
_08019CF4: .4byte dword_2000FC8
_08019CF8: .4byte dword_80CC290
_08019CFC:
	ldr r0, _08019D38
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #0xa
	ldr r4, _08019D3C
	ldr r2, _08019D40
	ldrb r2, [r2, #0xa]
	adds r2, #4
	movs r3, #7
	ands r2, r3
	lsls r2, r2, #2
	adds r2, r2, r4
	ldr r2, [r2]
	movs r3, #0
	bl sub_8003884
_08019D1C:
	ldr r0, _08019D38
	ldr r0, [r0]
	movs r1, #0xc0
	lsls r1, r1, #0xa
	movs r2, #0
	bl CallARM_store_jump_and_other_value
	ldr r0, _08019D40
	ldr r1, _08019D44
	movs r2, #0
	movs r3, #1
	bl sub_8003368
	b _08019D6E
	.align 2, 0
_08019D38: .4byte dword_2000FC8
_08019D3C: .4byte dword_80CC290
_08019D40: .4byte gPlayerSprite
_08019D44: .4byte 0x000001A1
_08019D48:
	ldr r2, _08019DC8
	ldr r1, _08019DCC
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0x4f
	strh r0, [r1]
	ldr r0, _08019DD0
	ldr r0, [r0]
	movs r1, #0xc0
	lsls r1, r1, #0xa
	ldr r2, _08019DD4
	bl CallARM_store_jump_and_other_value
	ldr r0, _08019DD8
	ldr r1, _08019DDC
	movs r2, #0
	movs r3, #1
	bl sub_8003368
_08019D6E:
	ldr r0, _08019DD8
	ldrb r1, [r0, #0xa]
	movs r0, #0
	bl sub_8016790
	ldr r0, _08019DE0
	ldrb r0, [r0]
	cmp r0, #0
	bne _08019D82
	b _08019FC4
_08019D82:
	ldr r4, _08019DE4
	movs r0, #4
	movs r1, #5
	bl RandomMinMax
	lsls r0, r0, #3
	adds r0, r0, r4
	ldrh r6, [r0]
	movs r0, #4
	movs r1, #5
	bl RandomMinMax
	ldr r1, _08019DE8
	lsls r0, r0, #3
	ldrb r1, [r1]
	adds r0, r0, r1
	adds r1, r4, #2
	adds r0, r0, r1
	ldrb r5, [r0]
	movs r0, #4
	movs r1, #5
	bl RandomMinMax
	lsls r0, r0, #3
	adds r4, #4
	adds r0, r0, r4
	ldr r2, [r0]
	movs r0, #0x80
	lsls r0, r0, #9
	adds r2, r2, r0
	adds r0, r6, #0
	adds r1, r5, #0
	bl audio_new_fx
	b _08019FC4
	.align 2, 0
_08019DC8: .4byte gPreviousPlayerState
_08019DCC: .4byte gPlayerState
_08019DD0: .4byte dword_2000FC8
_08019DD4: .4byte 0xFFFFE000
_08019DD8: .4byte gPlayerSprite
_08019DDC: .4byte 0x000001A1
_08019DE0: .4byte byte_203EA89
_08019DE4: .4byte 0x080CE440
_08019DE8: .4byte byte_203EA8C
_08019DEC:
	cmp r0, #4
	beq _08019DF2
	b _08019FC0
_08019DF2:
	ldr r1, _08019E48
	ldr r5, _08019E4C
	ldrh r3, [r5]
	lsls r0, r3, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08019EA0
	cmp r2, #1
	beq _08019E90
	cmp r2, #1
	bgt _08019E12
	b _08019F5A
_08019E12:
	cmp r2, #2
	beq _08019E18
	b _08019F5A
_08019E18:
	ldr r0, _08019E50
	strh r3, [r0]
	movs r0, #0x5b
	strh r0, [r5]
	cmp r4, #0
	blt _08019E60
	ldr r2, _08019E54
	adds r0, r4, #4
	movs r1, #7
	ands r0, r1
	strb r0, [r2, #0xa]
	ldr r0, _08019E58
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #0xa
	ldr r3, _08019E5C
	lsls r2, r4, #2
	adds r2, r2, r3
	ldr r2, [r2]
	movs r3, #0
	bl sub_8003884
	b _08019F1A
	.align 2, 0
_08019E48: .4byte gPlayerStateSettings
_08019E4C: .4byte gPlayerState
_08019E50: .4byte gPreviousPlayerState
_08019E54: .4byte gPlayerSprite
_08019E58: .4byte dword_2000FC8
_08019E5C: .4byte dword_80CC290
_08019E60:
	ldr r0, _08019E84
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #0xa
	ldr r4, _08019E88
	ldr r2, _08019E8C
	ldrb r2, [r2, #0xa]
	adds r2, #4
	movs r3, #7
	ands r2, r3
	lsls r2, r2, #2
	adds r2, r2, r4
	ldr r2, [r2]
	movs r3, #0
	bl sub_8003884
	b _08019F1A
	.align 2, 0
_08019E84: .4byte dword_2000FC8
_08019E88: .4byte dword_80CC290
_08019E8C: .4byte gPlayerSprite
_08019E90:
	ldr r0, _08019E9C
	strh r3, [r0]
	movs r0, #0x5b
	strh r0, [r5]
	b _08019F5A
	.align 2, 0
_08019E9C: .4byte gPreviousPlayerState
_08019EA0:
	cmp r2, #1
	beq _08019F38
	cmp r2, #1
	ble _08019F5A
	cmp r2, #2
	bne _08019F5A
	ldr r0, _08019EDC
	strh r3, [r0]
	movs r0, #0x59
	strh r0, [r5]
	cmp r4, #0
	blt _08019EEC
	ldr r2, _08019EE0
	adds r0, r4, #4
	movs r1, #7
	ands r0, r1
	strb r0, [r2, #0xa]
	ldr r0, _08019EE4
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #0xa
	ldr r3, _08019EE8
	lsls r2, r4, #2
	adds r2, r2, r3
	ldr r2, [r2]
	movs r3, #0
	bl sub_8003884
	b _08019F0C
	.align 2, 0
_08019EDC: .4byte gPreviousPlayerState
_08019EE0: .4byte gPlayerSprite
_08019EE4: .4byte dword_2000FC8
_08019EE8: .4byte dword_80CC290
_08019EEC:
	ldr r0, _08019F28
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #0xa
	ldr r4, _08019F2C
	ldr r2, _08019F30
	ldrb r2, [r2, #0xa]
	adds r2, #4
	movs r3, #7
	ands r2, r3
	lsls r2, r2, #2
	adds r2, r2, r4
	ldr r2, [r2]
	movs r3, #0
	bl sub_8003884
_08019F0C:
	ldr r0, _08019F28
	ldr r0, [r0]
	movs r1, #0xc0
	lsls r1, r1, #0xa
	movs r2, #0
	bl CallARM_store_jump_and_other_value
_08019F1A:
	ldr r0, _08019F30
	ldr r1, _08019F34
_08019F1E:
	movs r2, #0
	movs r3, #1
	bl sub_8003368
	b _08019F5A
	.align 2, 0
_08019F28: .4byte dword_2000FC8
_08019F2C: .4byte dword_80CC290
_08019F30: .4byte gPlayerSprite
_08019F34: .4byte 0x000001E1
_08019F38:
	ldr r0, _08019FA0
	strh r3, [r0]
	movs r0, #0x59
	strh r0, [r5]
	ldr r0, _08019FA4
	ldr r0, [r0]
	movs r1, #0xc0
	lsls r1, r1, #0xa
	ldr r2, _08019FA8
	bl CallARM_store_jump_and_other_value
	ldr r0, _08019FAC
	ldr r1, _08019FB0
_08019F52:
	movs r2, #0
	movs r3, #1
	bl sub_8003368
_08019F5A:
	ldr r0, _08019FAC
	ldrb r1, [r0, #0xa]
	movs r0, #0
	bl sub_8016790
_08019F64:
	ldr r0, _08019FB4
	ldrb r0, [r0]
	cmp r0, #0
	beq _08019FC4
	ldr r4, _08019FB8
	movs r0, #4
	movs r1, #5
	bl RandomMinMax
	lsls r0, r0, #3
	adds r0, r0, r4
	ldrh r5, [r0]
	movs r0, #4
	movs r1, #5
	bl RandomMinMax
	ldr r1, _08019FBC
	lsls r0, r0, #3
	ldrb r1, [r1]
	adds r0, r0, r1
	adds r4, #2
	adds r0, r0, r4
	ldrb r1, [r0]
	movs r2, #0xc0
	lsls r2, r2, #9
	adds r0, r5, #0
	bl audio_new_fx
	b _08019FC4
	.align 2, 0
_08019FA0: .4byte gPreviousPlayerState
_08019FA4: .4byte dword_2000FC8
_08019FA8: .4byte 0xFFFFE000
_08019FAC: .4byte gPlayerSprite
_08019FB0: .4byte 0x000001E1
_08019FB4: .4byte byte_203EA89
_08019FB8: .4byte 0x080CE440
_08019FBC: .4byte byte_203EA8C
_08019FC0:
	.2byte 0xEE00, 0xEE00
_08019FC4:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

    .thumb
    .global sub_08019FCC
sub_08019FCC: @ 0x08019FCC
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	cmp r5, #4
	bls _08019FD6
	b _0801A2D0
_08019FD6:
	lsls r0, r5, #2
	ldr r1, _08019FE0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08019FE0: .4byte 0x08019FE4
_08019FE4: @ jump table
	.4byte _08019FF8 @ case 0
	.4byte _0801A05C @ case 1
	.4byte _0801A0D8 @ case 2
	.4byte _0801A158 @ case 3
	.4byte _0801A228 @ case 4
_08019FF8:
	ldr r2, _0801A040
	ldr r1, _0801A044
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0
	strh r0, [r1]
	ldr r4, _0801A048
	adds r0, r4, #0
	movs r1, #0x19
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r0, _0801A04C
	ldr r0, [r0]
	ldr r2, _0801A050
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
	ldr r1, _0801A054
	movs r0, #0xb0
	lsls r0, r0, #0xd
	str r0, [r1]
	ldr r1, _0801A058
	movs r0, #0x90
	lsls r0, r0, #0xe
	b _0801A278
	.align 2, 0
_0801A040: .4byte gPreviousPlayerState
_0801A044: .4byte gPlayerState
_0801A048: .4byte gPlayerSprite
_0801A04C: .4byte dword_2000FC8
_0801A050: .4byte dword_80CC290
_0801A054: .4byte 0x03003300
_0801A058: .4byte 0x03003308
_0801A05C:
	ldr r2, _0801A0B0
	ldr r1, _0801A0B4
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0x32
	strh r0, [r1]
	ldr r4, _0801A0B8
	ldr r1, _0801A0BC
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r0, _0801A0C0
	ldr r0, [r0]
	ldr r2, _0801A0C4
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
	ldr r0, _0801A0C8
	movs r1, #7
	movs r2, #7
	bl DmaTransferObjPalette
	ldr r0, _0801A0CC
	movs r1, #0x80
	lsls r1, r1, #0xd
	str r1, [r0]
	ldr r0, _0801A0D0
	str r1, [r0]
	ldr r0, _0801A0D4
	str r1, [r0]
	b _0801A282
	.align 2, 0
_0801A0B0: .4byte gPreviousPlayerState
_0801A0B4: .4byte gPlayerState
_0801A0B8: .4byte gPlayerSprite
_0801A0BC: .4byte 0x00000141
_0801A0C0: .4byte dword_2000FC8
_0801A0C4: .4byte dword_80CC290
_0801A0C8: .4byte 0x083FD734
_0801A0CC: .4byte 0x03003300
_0801A0D0: .4byte 0x03003308
_0801A0D4: .4byte 0x03003304
_0801A0D8:
	ldr r2, _0801A130
	ldr r1, _0801A134
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0x3d
	strh r0, [r1]
	ldr r4, _0801A138
	ldr r1, _0801A13C
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r0, _0801A140
	ldr r0, [r0]
	ldr r2, _0801A144
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
	ldr r0, _0801A148
	movs r1, #7
	movs r2, #7
	bl DmaTransferObjPalette
	ldr r1, _0801A14C
	movs r0, #0xb0
	lsls r0, r0, #0xd
	str r0, [r1]
	ldr r0, _0801A150
	movs r1, #0xc0
	lsls r1, r1, #0xd
	str r1, [r0]
	ldr r0, _0801A154
	str r1, [r0]
	b _0801A282
	.align 2, 0
_0801A130: .4byte gPreviousPlayerState
_0801A134: .4byte gPlayerState
_0801A138: .4byte gPlayerSprite
_0801A13C: .4byte 0x00000179
_0801A140: .4byte dword_2000FC8
_0801A144: .4byte dword_80CC290
_0801A148: .4byte 0x083FD754
_0801A14C: .4byte 0x03003300
_0801A150: .4byte 0x03003308
_0801A154: .4byte 0x03003304
_0801A158:
	ldr r2, _0801A1CC
	ldr r1, _0801A1D0
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0x4c
	strh r0, [r1]
	ldr r4, _0801A1D4
	ldr r1, _0801A1D8
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r0, _0801A1DC
	ldr r0, [r0]
	ldr r2, _0801A1E0
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
	ldr r0, _0801A1E4
	movs r1, #7
	movs r2, #7
	bl DmaTransferObjPalette
	ldr r4, _0801A1E8
	ldr r0, _0801A1EC
	ldrb r0, [r0]
	cmp r0, #0
	beq _0801A200
	ldr r2, _0801A1F0
	movs r1, #0xc2
	lsls r1, r1, #3
	adds r0, r2, r1
	ldrh r0, [r0]
	ldr r3, _0801A1F4
	ldr r6, _0801A1F8
	adds r1, r2, r6
	ldrb r3, [r3]
	adds r1, r1, r3
	ldrb r1, [r1]
	ldr r3, _0801A1FC
	adds r2, r2, r3
	ldr r2, [r2]
	movs r6, #0x80
	lsls r6, r6, #9
	adds r2, r2, r6
	bl audio_new_fx
	b _0801A204
	.align 2, 0
_0801A1CC: .4byte gPreviousPlayerState
_0801A1D0: .4byte gPlayerState
_0801A1D4: .4byte gPlayerSprite
_0801A1D8: .4byte 0x000001A1
_0801A1DC: .4byte dword_2000FC8
_0801A1E0: .4byte dword_80CC290
_0801A1E4: .4byte 0x083FD774
_0801A1E8: .4byte 0x020021DC
_0801A1EC: .4byte byte_203EA89
_0801A1F0: .4byte 0x080CE440
_0801A1F4: .4byte byte_203EA8C
_0801A1F8: .4byte 0x00000612
_0801A1FC: .4byte 0x00000614
_0801A200:
	movs r0, #1
	rsbs r0, r0, #0
_0801A204:
	str r0, [r4]
	ldr r0, _0801A21C
	movs r2, #0x80
	lsls r2, r2, #0xe
	str r2, [r0]
	ldr r1, _0801A220
	movs r0, #0x90
	lsls r0, r0, #0xe
	str r0, [r1]
	ldr r0, _0801A224
	str r2, [r0]
	b _0801A2D4
	.align 2, 0
_0801A21C: .4byte 0x03003300
_0801A220: .4byte 0x03003308
_0801A224: .4byte 0x03003304
_0801A228:
	ldr r2, _0801A2A0
	ldr r1, _0801A2A4
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0x50
	strh r0, [r1]
	ldr r4, _0801A2A8
	ldr r1, _0801A2AC
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r0, _0801A2B0
	ldr r0, [r0]
	ldr r2, _0801A2B4
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
	ldr r0, _0801A2B8
	movs r1, #7
	movs r2, #7
	bl DmaTransferObjPalette
	ldr r1, _0801A2BC
	movs r0, #0xb0
	lsls r0, r0, #0xd
	str r0, [r1]
	ldr r1, _0801A2C0
	movs r0, #0x80
	lsls r0, r0, #0xd
_0801A278:
	str r0, [r1]
	ldr r1, _0801A2C4
	movs r0, #0xc0
	lsls r0, r0, #0xd
	str r0, [r1]
_0801A282:
	ldr r4, _0801A2C8
	ldr r0, [r4]
	bl audio_fx_still_active
	cmp r0, #0
	beq _0801A2D4
	ldr r0, _0801A2CC
	ldrb r0, [r0]
	cmp r0, #0
	beq _0801A2D4
	ldr r0, [r4]
	bl audio_halt_fx
	b _0801A2D4
	.align 2, 0
_0801A2A0: .4byte gPreviousPlayerState
_0801A2A4: .4byte gPlayerState
_0801A2A8: .4byte gPlayerSprite
_0801A2AC: .4byte 0x000001D1
_0801A2B0: .4byte dword_2000FC8
_0801A2B4: .4byte dword_80CC290
_0801A2B8: .4byte 0x083FD794
_0801A2BC: .4byte 0x03003300
_0801A2C0: .4byte 0x03003308
_0801A2C4: .4byte 0x03003304
_0801A2C8: .4byte 0x020021DC
_0801A2CC: .4byte byte_203EA89
_0801A2D0:
	.2byte 0xEE00, 0xEE00
_0801A2D4:
	ldr r0, _0801A2E0
	strb r5, [r0]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0801A2E0: .4byte byte_20020B1

    .thumb
    .global sub_801A2E4
sub_801A2E4: @ 0x0801A2E4
	push {lr}
	ldr r0, _0801A2F4
	ldrb r0, [r0]
	cmp r0, #1
	bne _0801A2FC
	ldr r0, _0801A2F8
	b _0801A30E
	.align 2, 0
_0801A2F4: .4byte byte_20020B1
_0801A2F8: .4byte 0x083FD734
_0801A2FC:
	cmp r0, #2
	bne _0801A308
	ldr r0, _0801A304
	b _0801A30E
	.align 2, 0
_0801A304: .4byte 0x083FD754
_0801A308:
	cmp r0, #3
	bne _0801A31C
	ldr r0, _0801A318
_0801A30E:
	movs r1, #7
	movs r2, #7
	bl DmaTransferObjPalette
	b _0801A32A
	.align 2, 0
_0801A318: .4byte 0x083FD774
_0801A31C:
	cmp r0, #4
	bne _0801A32A
	ldr r0, _0801A330
	movs r1, #7
	movs r2, #7
	bl DmaTransferObjPalette
_0801A32A:
	pop {r0}
	bx r0
	.align 2, 0
_0801A330: .4byte 0x083FD794


	.thumb
	.global sub_801A334
sub_801A334: @ 0x0801A334
	push {r4, lr}
	ldr r2, _0801A38C
	ldrb r0, [r2]
	cmp r0, #0
	bne _0801A3D0
	ldr r1, _0801A390
	ldrb r3, [r1, #0x12]
	movs r0, #0x12
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bne _0801A3AC
	ldr r2, _0801A394
	ldr r1, _0801A398
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0x44
	strh r0, [r1]
	ldr r4, _0801A39C
	ldr r1, _0801A3A0
	adds r0, r4, #0
	movs r2, #0
	movs r3, #1
	bl sub_8003368
	ldr r0, _0801A3A4
	ldr r0, [r0]
	ldr r2, _0801A3A8
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
	movs r0, #1
	b _0801A3D6
	.align 2, 0
_0801A38C: .4byte 0x02002095
_0801A390: .4byte gGameStatus
_0801A394: .4byte gPreviousPlayerState
_0801A398: .4byte gPlayerState
_0801A39C: .4byte gPlayerSprite
_0801A3A0: .4byte 0x00000211
_0801A3A4: .4byte dword_2000FC8
_0801A3A8: .4byte dword_80CC290
_0801A3AC:
	ldr r0, _0801A3CC
	ldrb r0, [r0]
	strb r0, [r2]
	subs r0, r3, #1
	strb r0, [r1, #0x12]
	ldrb r1, [r1, #0x12]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	movs r0, #3
	bl sub_08040204
	movs r0, #3
	bl sub_08041FA4
	b _0801A3D4
	.align 2, 0
_0801A3CC: .4byte 0x02002094
_0801A3D0:
	subs r0, #1
	strb r0, [r2]
_0801A3D4:
	movs r0, #0
_0801A3D6:
	pop {r4}
	pop {r1}
	bx r1

	.thumb
	.global sub_801A3DC
sub_801A3DC: @ 0x0801A3DC
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0801A410
	ldr r1, _0801A414
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	beq _0801A474
	bl sub_8030A88
	cmp r0, #1
	bgt _0801A474
	ldr r0, _0801A418
	movs r1, #0
	ldrsb r1, [r0, r1]
	adds r2, r0, #0
	cmp r1, #0
	bge _0801A420
	ldr r0, _0801A41C
	ldrb r0, [r0, #0xe]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _0801A432
	b _0801A474
	.align 2, 0
_0801A410: .4byte 0x0203DFD4
_0801A414: .4byte 0x0203DFD5
_0801A418: .4byte 0x0200108C
_0801A41C: .4byte gGameStatus
_0801A420:
	ldr r0, _0801A47C
	movs r1, #0
	ldrsb r1, [r2, r1]
	adds r0, #0xe
	adds r1, r1, r0
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	beq _0801A474
_0801A432:
	movs r0, #0
	ldrsb r0, [r2, r0]
	ldr r1, _0801A480
	ldr r2, _0801A484
	ldrb r2, [r2, #3]
	bl sub_0802D0A0
	movs r0, #1
	adds r1, r4, #0
	bl sub_800DC4C
	ldr r0, _0801A488
	ldrb r0, [r0]
	cmp r0, #0
	beq _0801A474
	ldr r3, _0801A48C
	adds r0, r3, #0
	adds r0, #0xc0
	ldrh r0, [r0]
	ldr r2, _0801A490
	adds r1, r3, #0
	adds r1, #0xc2
	ldrb r2, [r2]
	adds r1, r1, r2
	ldrb r1, [r1]
	adds r2, r3, #0
	adds r2, #0xc4
	ldr r2, [r2]
	movs r3, #0x80
	lsls r3, r3, #9
	adds r2, r2, r3
	bl audio_new_fx
_0801A474:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801A47C: .4byte gGameStatus
_0801A480: .4byte gPlayerPos
_0801A484: .4byte byte_3002950
_0801A488: .4byte byte_203EA89
_0801A48C: .4byte 0x080CE440
_0801A490: .4byte byte_203EA8C
