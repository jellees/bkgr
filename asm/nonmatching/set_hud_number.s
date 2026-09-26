set_hud_number: @ 0x08040204
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	adds r4, r1, #0
	cmp r6, #0x39
	bls _08040218
	.2byte 0xEE00, 0xEE00
	b _08040770
_08040218:
	lsls r0, r6, #2
	ldr r1, _08040224
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08040224: .4byte 0x08040228
_08040228: @ jump table
	.4byte _0804041C @ case 0
	.4byte _0804044C @ case 1
	.4byte _0804047C @ case 2
	.4byte _08040748 @ case 3
	.4byte _08040498 @ case 4
	.4byte _080404B4 @ case 5
	.4byte _080403EC @ case 6
	.4byte _080404E4 @ case 7
	.4byte _08040514 @ case 8
	.4byte _08040748 @ case 9
	.4byte _08040748 @ case 10
	.4byte _08040748 @ case 11
	.4byte _08040748 @ case 12
	.4byte _08040748 @ case 13
	.4byte _08040544 @ case 14
	.4byte _08040574 @ case 15
	.4byte _08040590 @ case 16
	.4byte _080405AC @ case 17
	.4byte _080405DC @ case 18
	.4byte _0804061C @ case 19
	.4byte _08040770 @ case 20
	.4byte _08040770 @ case 21
	.4byte _08040748 @ case 22
	.4byte _08040770 @ case 23
	.4byte _08040770 @ case 24
	.4byte _08040770 @ case 25
	.4byte _08040770 @ case 26
	.4byte _08040770 @ case 27
	.4byte _08040770 @ case 28
	.4byte _08040770 @ case 29
	.4byte _08040770 @ case 30
	.4byte _08040770 @ case 31
	.4byte _08040770 @ case 32
	.4byte _08040770 @ case 33
	.4byte _08040770 @ case 34
	.4byte _08040770 @ case 35
	.4byte _0804060C @ case 36
	.4byte _08040748 @ case 37
	.4byte _08040748 @ case 38
	.4byte _0804062C @ case 39
	.4byte _08040648 @ case 40
	.4byte _08040664 @ case 41
	.4byte _08040748 @ case 42
	.4byte _0804075C @ case 43
	.4byte _08040680 @ case 44
	.4byte _0804069C @ case 45
	.4byte _080406B8 @ case 46
	.4byte _080406D4 @ case 47
	.4byte _080406F0 @ case 48
	.4byte _08040710 @ case 49
	.4byte _08040748 @ case 50
	.4byte _08040748 @ case 51
	.4byte _08040748 @ case 52
	.4byte _08040748 @ case 53
	.4byte _08040748 @ case 54
	.4byte _080403D4 @ case 55
	.4byte _08040310 @ case 56
	.4byte _080403A4 @ case 57
_08040310:
	ldr r0, _08040364
	ldr r0, [r0]
	movs r1, #0xe4
	lsls r1, r1, #4
	adds r0, r0, r1
	ldrb r0, [r0, #0x1f]
	movs r6, #0x3b
	cmp r0, #0
	beq _08040328
	cmp r0, #6
	beq _08040328
	movs r6, #0x3a
_08040328:
	ldr r7, _08040364
	ldr r0, [r7]
	lsls r1, r6, #6
	adds r2, r1, r0
	movs r0, #0
	mov r8, r0
	movs r0, #0xa
	strh r0, [r2, #0x18]
	adds r5, r1, #0
	cmp r4, #0x11
	bne _08040368
	movs r0, #0x96
	lsls r0, r0, #2
	strh r0, [r2, #0x1a]
	mov r1, r8
	strb r1, [r2, #0x1c]
	ldr r1, [r7]
	adds r1, r5, r1
	mov r2, r8
	strb r2, [r1, #0x1e]
	movs r1, #0
	bl sub_80630C0
	ldr r0, [r7]
	adds r0, r5, r0
	strh r4, [r0, #6]
	movs r1, #0xff
	strb r1, [r0, #0x1d]
	b _0804038A
	.align 2, 0
_08040364: .4byte 0x0203EA7C
_08040368:
	cmp r4, #0x12
	bne _08040390
	movs r0, #0x96
	lsls r0, r0, #2
	strh r0, [r2, #0x1a]
	mov r1, r8
	strb r1, [r2, #0x1c]
	ldr r1, [r7]
	adds r1, r5, r1
	mov r2, r8
	strb r2, [r1, #0x1e]
	movs r1, #0
	bl sub_80630C0
	ldr r0, [r7]
	adds r0, r5, r0
	strh r4, [r0, #6]
_0804038A:
	ldr r0, _0804039C
	mov r1, r8
	strb r1, [r0]
_08040390:
	ldr r0, _080403A0
	ldr r0, [r0]
	adds r0, r5, r0
	strh r4, [r0, #8]
	b _08040776
	.align 2, 0
_0804039C: .4byte 0x0203EA81
_080403A0: .4byte 0x0203EA7C
_080403A4:
	ldr r0, _080403D0
	ldr r0, [r0]
	movs r2, #0xec
	lsls r2, r2, #4
	adds r0, r0, r2
	ldrb r0, [r0, #0x1f]
	movs r6, #0x39
	cmp r0, #0
	beq _080403BC
	cmp r0, #6
	beq _080403BC
	movs r6, #0x38
_080403BC:
	ldr r0, _080403D0
	ldr r0, [r0]
	lsls r2, r6, #6
	adds r0, r2, r0
	movs r1, #0xa
	strh r1, [r0, #0x18]
	strh r4, [r0, #8]
	adds r5, r2, #0
	b _08040776
	.align 2, 0
_080403D0: .4byte 0x0203EA7C
_080403D4:
	ldr r0, _080403E8
	ldr r0, [r0]
	lsls r1, r6, #6
	adds r0, r1, r0
	strh r4, [r0, #8]
	strh r4, [r0, #0xa]
	strh r4, [r0, #6]
	adds r5, r1, #0
	b _08040776
	.align 2, 0
_080403E8: .4byte 0x0203EA7C
_080403EC:
	ldr r0, _08040418
	ldr r0, [r0]
	lsls r1, r6, #6
	adds r2, r1, r0
	ldrh r0, [r2, #6]
	adds r5, r1, #0
	cmp r0, r4
	ble _08040400
	.2byte 0xEE00, 0xEE00
_08040400:
	strh r4, [r2, #8]
	movs r0, #0x28
	bl sub_08042150
	adds r1, r0, #0
	cmp r1, #0
	bge _08040410
	b _08040776
_08040410:
	movs r0, #0x28
	bl set_hud_number
	b _08040776
	.align 2, 0
_08040418: .4byte 0x0203EA7C
_0804041C:
	ldr r0, _08040448
	ldr r0, [r0]
	lsls r1, r6, #6
	adds r2, r1, r0
	ldrh r0, [r2, #6]
	adds r5, r1, #0
	cmp r0, r4
	blt _08040430
	.2byte 0xEE00, 0xEE00
_08040430:
	strh r4, [r2, #8]
	movs r0, #0x27
	bl sub_08042150
	adds r1, r0, #0
	cmp r1, #0
	bge _08040440
	b _08040776
_08040440:
	movs r0, #0x27
	bl set_hud_number
	b _08040776
	.align 2, 0
_08040448: .4byte 0x0203EA7C
_0804044C:
	ldr r0, _08040478
	ldr r0, [r0]
	lsls r1, r6, #6
	adds r2, r1, r0
	ldrh r0, [r2, #6]
	adds r5, r1, #0
	cmp r0, r4
	blt _08040460
	.2byte 0xEE00, 0xEE00
_08040460:
	strh r4, [r2, #8]
	movs r0, #0x29
	bl sub_08042150
	adds r1, r0, #0
	cmp r1, #0
	bge _08040470
	b _08040776
_08040470:
	movs r0, #0x29
	bl set_hud_number
	b _08040776
	.align 2, 0
_08040478: .4byte 0x0203EA7C
_0804047C:
	ldr r0, _08040494
	ldr r0, [r0]
	lsls r1, r6, #6
	adds r2, r1, r0
	ldrh r0, [r2, #6]
	adds r5, r1, #0
	cmp r0, r4
	bge _0804048E
	b _080405A4
_0804048E:
	.2byte 0xEE00, 0xEE00
	b _080405A4
	.align 2, 0
_08040494: .4byte 0x0203EA7C
_08040498:
	ldr r0, _080404B0
	ldr r0, [r0]
	lsls r1, r6, #6
	adds r2, r1, r0
	ldrh r0, [r2, #6]
	adds r5, r1, #0
	cmp r0, r4
	bgt _080404AA
	b _080405A4
_080404AA:
	.2byte 0xEE00, 0xEE00
	b _080405A4
	.align 2, 0
_080404B0: .4byte 0x0203EA7C
_080404B4:
	ldr r0, _080404E0
	ldr r0, [r0]
	lsls r1, r6, #6
	adds r2, r1, r0
	ldrh r0, [r2, #6]
	adds r5, r1, #0
	cmp r0, r4
	blt _080404C8
	.2byte 0xEE00, 0xEE00
_080404C8:
	strh r4, [r2, #8]
	movs r0, #0x2d
	bl sub_08042150
	adds r1, r0, #0
	cmp r1, #0
	bge _080404D8
	b _08040776
_080404D8:
	movs r0, #0x2d
	bl set_hud_number
	b _08040776
	.align 2, 0
_080404E0: .4byte 0x0203EA7C
_080404E4:
	ldr r0, _08040510
	ldr r0, [r0]
	lsls r1, r6, #6
	adds r2, r1, r0
	ldrh r0, [r2, #6]
	adds r5, r1, #0
	cmp r0, r4
	blt _080404F8
	.2byte 0xEE00, 0xEE00
_080404F8:
	strh r4, [r2, #8]
	movs r0, #0x31
	bl sub_08042150
	adds r1, r0, #0
	cmp r1, #0
	bge _08040508
	b _08040776
_08040508:
	movs r0, #0x31
	bl set_hud_number
	b _08040776
	.align 2, 0
_08040510: .4byte 0x0203EA7C
_08040514:
	ldr r0, _08040540
	ldr r0, [r0]
	lsls r1, r6, #6
	adds r2, r1, r0
	ldrh r0, [r2, #6]
	adds r5, r1, #0
	cmp r0, r4
	blt _08040528
	.2byte 0xEE00, 0xEE00
_08040528:
	strh r4, [r2, #8]
	movs r0, #0x2f
	bl sub_08042150
	adds r1, r0, #0
	cmp r1, #0
	bge _08040538
	b _08040776
_08040538:
	movs r0, #0x2f
	bl set_hud_number
	b _08040776
	.align 2, 0
_08040540: .4byte 0x0203EA7C
_08040544:
	ldr r0, _08040570
	ldr r0, [r0]
	lsls r1, r6, #6
	adds r2, r1, r0
	ldrh r0, [r2, #6]
	adds r5, r1, #0
	cmp r0, r4
	blt _08040558
	.2byte 0xEE00, 0xEE00
_08040558:
	strh r4, [r2, #8]
	movs r0, #0x2e
	bl sub_08042150
	adds r1, r0, #0
	cmp r1, #0
	bge _08040568
	b _08040776
_08040568:
	movs r0, #0x2e
	bl set_hud_number
	b _08040776
	.align 2, 0
_08040570: .4byte 0x0203EA7C
_08040574:
	ldr r0, _0804058C
	ldr r0, [r0]
	lsls r1, r6, #6
	adds r2, r1, r0
	ldrh r0, [r2, #6]
	adds r5, r1, #0
	cmp r0, r4
	blt _080405A4
	.2byte 0xEE00, 0xEE00
	b _080405A4
	.align 2, 0
_0804058C: .4byte 0x0203EA7C
_08040590:
	ldr r0, _080405A8
	ldr r0, [r0]
	lsls r1, r6, #6
	adds r2, r1, r0
	ldrh r0, [r2, #6]
	adds r5, r1, #0
	cmp r0, r4
	blt _080405A4
	.2byte 0xEE00, 0xEE00
_080405A4:
	strh r4, [r2, #8]
	b _08040776
	.align 2, 0
_080405A8: .4byte 0x0203EA7C
_080405AC:
	ldr r0, _080405D8
	ldr r0, [r0]
	lsls r1, r6, #6
	adds r2, r1, r0
	ldrh r0, [r2, #6]
	adds r5, r1, #0
	cmp r0, r4
	blt _080405C0
	.2byte 0xEE00, 0xEE00
_080405C0:
	strh r4, [r2, #8]
	movs r0, #0x2c
	bl sub_08042150
	adds r1, r0, #0
	cmp r1, #0
	bge _080405D0
	b _08040776
_080405D0:
	movs r0, #0x2c
	bl set_hud_number
	b _08040776
	.align 2, 0
_080405D8: .4byte 0x0203EA7C
_080405DC:
	ldr r0, _08040608
	ldr r0, [r0]
	lsls r1, r6, #6
	adds r2, r1, r0
	ldrh r0, [r2, #6]
	adds r5, r1, #0
	cmp r0, r4
	blt _080405F0
	.2byte 0xEE00, 0xEE00
_080405F0:
	strh r4, [r2, #8]
	movs r0, #0x30
	bl sub_08042150
	adds r1, r0, #0
	cmp r1, #0
	bge _08040600
	b _08040776
_08040600:
	movs r0, #0x30
	bl set_hud_number
	b _08040776
	.align 2, 0
_08040608: .4byte 0x0203EA7C
_0804060C:
	ldr r0, _08040618
	ldr r0, [r0]
	lsls r1, r6, #6
	adds r0, r1, r0
	strh r4, [r0, #6]
	b _08040750
	.align 2, 0
_08040618: .4byte 0x0203EA7C
_0804061C:
	ldr r0, _08040628
	ldr r0, [r0]
	lsls r1, r6, #6
	adds r0, r1, r0
	strh r4, [r0, #6]
	b _08040750
	.align 2, 0
_08040628: .4byte 0x0203EA7C
_0804062C:
	ldr r0, _08040640
	ldr r1, [r0]
	lsls r3, r6, #6
	adds r1, r3, r1
	strh r4, [r1, #0xa]
	ldr r2, _08040644
	ldrh r0, [r2, #0xc]
	strh r0, [r1, #6]
	ldrh r0, [r2, #0xc]
	b _08040702
	.align 2, 0
_08040640: .4byte 0x0203EA7C
_08040644: .4byte gGameStatus
_08040648:
	ldr r0, _0804065C
	ldr r1, [r0]
	lsls r3, r6, #6
	adds r1, r3, r1
	strh r4, [r1, #0xa]
	ldr r2, _08040660
	ldrb r0, [r2, #1]
	strh r0, [r1, #6]
	ldrb r0, [r2, #1]
	b _08040702
	.align 2, 0
_0804065C: .4byte 0x0203EA7C
_08040660: .4byte gGameStatus
_08040664:
	ldr r0, _08040678
	ldr r1, [r0]
	lsls r3, r6, #6
	adds r1, r3, r1
	strh r4, [r1, #0xa]
	ldr r2, _0804067C
	ldrb r0, [r2]
	strh r0, [r1, #6]
	ldrb r0, [r2]
	b _08040702
	.align 2, 0
_08040678: .4byte 0x0203EA7C
_0804067C: .4byte gGameStatus
_08040680:
	ldr r0, _08040694
	ldr r1, [r0]
	lsls r3, r6, #6
	adds r1, r3, r1
	strh r4, [r1, #0xa]
	ldr r2, _08040698
	ldrb r0, [r2, #0x1d]
	strh r0, [r1, #6]
	ldrb r0, [r2, #0x1d]
	b _08040702
	.align 2, 0
_08040694: .4byte 0x0203EA7C
_08040698: .4byte gGameStatus
_0804069C:
	ldr r0, _080406B0
	ldr r1, [r0]
	lsls r3, r6, #6
	adds r1, r3, r1
	strh r4, [r1, #0xa]
	ldr r2, _080406B4
	ldrb r0, [r2, #0x18]
	strh r0, [r1, #6]
	ldrb r0, [r2, #0x18]
	b _08040702
	.align 2, 0
_080406B0: .4byte 0x0203EA7C
_080406B4: .4byte gGameStatus
_080406B8:
	ldr r0, _080406CC
	ldr r1, [r0]
	lsls r3, r6, #6
	adds r1, r3, r1
	strh r4, [r1, #0xa]
	ldr r2, _080406D0
	ldrb r0, [r2, #0x1a]
	strh r0, [r1, #6]
	ldrb r0, [r2, #0x1a]
	b _08040702
	.align 2, 0
_080406CC: .4byte 0x0203EA7C
_080406D0: .4byte gGameStatus
_080406D4:
	ldr r0, _080406E8
	ldr r1, [r0]
	lsls r3, r6, #6
	adds r1, r3, r1
	strh r4, [r1, #0xa]
	ldr r2, _080406EC
	ldrb r0, [r2, #0x19]
	strh r0, [r1, #6]
	ldrb r0, [r2, #0x19]
	b _08040702
	.align 2, 0
_080406E8: .4byte 0x0203EA7C
_080406EC: .4byte gGameStatus
_080406F0:
	ldr r0, _08040708
	ldr r1, [r0]
	lsls r3, r6, #6
	adds r1, r3, r1
	strh r4, [r1, #0xa]
	ldr r2, _0804070C
	ldrb r0, [r2, #0x1e]
	strh r0, [r1, #6]
	ldrb r0, [r2, #0x1e]
_08040702:
	strh r0, [r1, #8]
	adds r5, r3, #0
	b _08040776
	.align 2, 0
_08040708: .4byte 0x0203EA7C
_0804070C: .4byte gGameStatus
_08040710:
	ldr r0, _0804073C
	ldr r2, [r0]
	lsls r5, r6, #6
	adds r2, r5, r2
	strh r4, [r2, #0xa]
	ldr r4, _08040740
	ldr r3, _08040744
	ldrh r1, [r3]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r4
	ldrb r0, [r0, #5]
	strh r0, [r2, #6]
	ldrh r1, [r3]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r4
	ldrb r0, [r0, #5]
	strh r0, [r2, #8]
	b _08040776
	.align 2, 0
_0804073C: .4byte 0x0203EA7C
_08040740: .4byte 0x02000FCC
_08040744: .4byte gLoadedRoomLevel
_08040748:
	ldr r0, _08040758
	ldr r0, [r0]
	lsls r1, r6, #6
	adds r0, r1, r0
_08040750:
	strh r4, [r0, #8]
	adds r5, r1, #0
	b _08040776
	.align 2, 0
_08040758: .4byte 0x0203EA7C
_0804075C:
	ldr r0, _08040790
	ldr r1, [r0]
	lsls r0, r6, #6
	adds r1, r0, r1
	ldrh r0, [r1, #6]
	cmp r0, r4
	blt _0804076E
	.2byte 0xEE00, 0xEE00
_0804076E:
	strh r4, [r1, #8]
_08040770:
	.2byte 0xEE00, 0xEE00
	lsls r5, r6, #6
_08040776:
	ldr r1, _08040790
	ldr r0, [r1]
	adds r4, r5, r0
	ldrb r0, [r4, #0x1f]
	adds r7, r1, #0
	cmp r0, #5
	bgt _08040794
	cmp r0, #3
	bge _080407AA
	cmp r0, #0
	beq _0804079A
	b _080407EC
	.align 2, 0
_08040790: .4byte 0x0203EA7C
_08040794:
	cmp r0, #6
	beq _080407A0
	b _080407EC
_0804079A:
	movs r0, #1
	strb r0, [r4, #0x1f]
	b _080407EC
_080407A0:
	adds r1, r4, #0
	adds r1, #0x29
	movs r0, #1
	strb r0, [r1]
	b _080407EC
_080407AA:
	ldr r2, _080407C4
	lsls r3, r6, #3
	adds r1, r2, #4
	adds r1, r3, r1
	ldrh r0, [r4, #0xc]
	ldr r1, [r1]
	lsls r0, r0, #4
	adds r0, r0, r1
	ldr r4, [r0]
	ldr r0, [r0, #4]
	adds r6, r2, #0
	b _080407E2
	.align 2, 0
_080407C4: .4byte 0x080AF310
_080407C8:
	ldr r2, [r7]
	adds r2, r5, r2
	ldrh r0, [r2, #0xc]
	subs r0, #1
	strh r0, [r2, #0xc]
	adds r1, r6, #4
	adds r1, r3, r1
	ldrh r0, [r2, #0xc]
	ldr r1, [r1]
	lsls r0, r0, #4
	adds r0, r0, r1
	ldr r4, [r0]
	ldr r0, [r0, #4]
_080407E2:
	cmp r4, #0xb
	bne _080407C8
	subs r0, #3
	cmp r0, #1
	bhi _080407C8
_080407EC:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
