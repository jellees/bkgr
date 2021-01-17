    .syntax unified

    .text

    .thumb
	.global sub_800A344
sub_800A344: @ 0x0800A344
	ldr r0, _0800A364
	movs r1, #0
	strb r1, [r0]
	ldr r0, _0800A368
	strb r1, [r0]
	ldr r0, _0800A36C
	strb r1, [r0]
	ldr r0, _0800A370
	strb r1, [r0]
	ldr r0, _0800A374
	strb r1, [r0]
	ldr r1, _0800A378
	movs r0, #0
	str r0, [r1]
	bx lr
	.align 2, 0
_0800A364: .4byte byte_2000330
_0800A368: .4byte byte_2000331
_0800A36C: .4byte byte_2000332
_0800A370: .4byte byte_2000333
_0800A374: .4byte byte_2000334
_0800A378: .4byte dword_200032C

    .thumb
	.thumb_func
	.global sub_800A37C
sub_800A37C: @ 0x0800A37C
	push {r4, lr}
	ldr r4, _0800A44C
	ldr r0, [r4]
	cmp r0, #0
	beq _0800A38A
	.2byte 0xEE00, 0xEE00
_0800A38A:
	adds r0, #1
	str r0, [r4]
	ldr r0, _0800A450
	ldrb r0, [r0]
	cmp r0, #0
	bne _0800A39A
	bl sub_8045044
_0800A39A:
	ldr r0, [r4]
	subs r0, #1
	str r0, [r4]
	ldr r0, _0800A454
	ldrb r0, [r0]
	cmp r0, #0
	beq _0800A3FC
	ldr r0, _0800A458
	ldrb r2, [r0]
	cmp r2, #0
	bne _0800A3FC
	ldr r1, _0800A45C
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x3c
	bne _0800A3FC
	strb r2, [r1]
	ldr r1, _0800A460
	ldrb r0, [r1, #0xa]
	adds r0, #1
	strb r0, [r1, #0xa]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x3c
	bne _0800A3FC
	strb r2, [r1, #0xa]
	ldrb r0, [r1, #9]
	adds r0, #1
	strb r0, [r1, #9]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x3c
	bne _0800A3FC
	strb r2, [r1, #9]
	ldrb r0, [r1, #8]
	adds r0, #1
	strb r0, [r1, #8]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x64
	bne _0800A3FC
	movs r0, #0x63
	strb r0, [r1, #8]
	movs r0, #0x3b
	strb r0, [r1, #9]
	strb r0, [r1, #0xa]
_0800A3FC:
	ldr r1, _0800A464
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0
	bne _0800A41A
	movs r0, #0x3c
	strb r0, [r1]
	ldr r2, _0800A468
	ldr r1, _0800A46C
	ldrb r0, [r1]
	strb r0, [r2]
	strb r3, [r1]
_0800A41A:
	ldr r0, _0800A470
	ldr r4, _0800A474
	ldrb r1, [r4]
	bl sub_8003A3C
	movs r0, #0
	strb r0, [r4]
	ldr r2, _0800A478
	ldrb r0, [r2]
	cmp r0, #0
	bne _0800A484
	ldr r0, _0800A47C
	ldrb r0, [r0]
	cmp r0, #0
	beq _0800A494
	ldr r0, _0800A480
	ldrh r1, [r0]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #0
	bne _0800A494
	movs r0, #5
	strb r0, [r2]
	b _0800A494
	.align 2, 0
_0800A44C: .4byte 0x02000F6C
_0800A450: .4byte 0x0203EAD4
_0800A454: .4byte 0x02000F5C
_0800A458: .4byte 0x0203F4D8
_0800A45C: .4byte 0x02000F5B
_0800A460: .4byte gGameStatus
_0800A464: .4byte 0x02001200
_0800A468: .4byte gDebugFPS
_0800A46C: .4byte gMainFrameCounter
_0800A470: .4byte 0x03002AB0
_0800A474: .4byte 0x030032A8
_0800A478: .4byte 0x02000F5A
_0800A47C: .4byte 0x02000F59
_0800A480: .4byte gKeysPressed
_0800A484:
	subs r0, #1
	strb r0, [r2]
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	bne _0800A494
	ldr r0, _0800A49C
	strb r1, [r0]
_0800A494:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800A49C: .4byte 0x02000F59

	.thumb
	.thumb_func
	.global nullsub_15
nullsub_15: @ 0x0800A4A0
	bx lr
	.align 2, 0

    .thumb
    .global UpdateVideo
UpdateVideo: @ 0x0800A4A4
	push {r4, r5, r6, lr}
	ldr r0, _0800A510
	movs r1, #0xe0
	lsls r1, r1, #0x13
	movs r2, #0x80
	lsls r2, r2, #1
	bl DmaTransfer32
	ldr r0, _0800A514
	ldr r1, [r0]
	cmp r1, #0
	beq _0800A4C4
	ldr r0, _0800A518
	ldr r0, [r0]
	bl CallARM_SetOamMatrices
_0800A4C4:
	ldr r0, _0800A51C
	ldrb r0, [r0]
	cmp r0, #0
	bne _0800A4D0
	bl UpdateBackgrounds
_0800A4D0:
	ldr r1, _0800A520
	ldrb r0, [r1]
	cmp r0, #0
	beq _0800A506
	adds r4, r1, #0
	ldr r5, _0800A524
	adds r6, r5, #0
	adds r6, #8
_0800A4E0:
	ldrb r0, [r4]
	subs r0, #1
	strb r0, [r4]
	ldrb r0, [r4]
	lsls r2, r0, #1
	adds r2, r2, r0
	lsls r2, r2, #2
	adds r0, r2, r5
	ldr r0, [r0]
	adds r1, r5, #4
	adds r1, r2, r1
	ldr r1, [r1]
	adds r2, r2, r6
	ldr r2, [r2]
	bl DmaTransfer32
	ldrb r0, [r4]
	cmp r0, #0
	bne _0800A4E0
_0800A506:
	bl HandlePaletteEffects
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800A510: .4byte gOAMBuffer1
_0800A514: .4byte gMatricesCount
_0800A518: .4byte gMatrices
_0800A51C: .4byte dword_200146C
_0800A520: .4byte 0x02000F54
_0800A524: .4byte 0x02000360

    .thumb
	.thumb_func
	.global sub_800A528
sub_800A528: @ 0x0800A528
	push {r4, lr}
	ldr r4, _0800A564
	ldr r0, [r4]
	cmp r0, #0
	beq _0800A536
	.2byte 0xEE00, 0xEE00
_0800A536:
	adds r0, #1
	str r0, [r4]
	ldr r0, _0800A568
	ldrb r0, [r0]
	cmp r0, #0
	bne _0800A546
	bl seq_update_p
_0800A546:
	ldr r0, [r4]
	subs r0, #1
	str r0, [r4]
	ldr r0, _0800A56C
	ldrb r0, [r0]
	cmp r0, #0
	bne _0800A580
	ldr r0, _0800A570
	ldr r1, _0800A574
	ldr r1, [r1]
	ldr r2, _0800A578
	ldr r3, _0800A57C
	bl sub_8003A44
	b _0800A58A
	.align 2, 0
_0800A564: .4byte 0x02000F68
_0800A568: .4byte 0x0203EAD4
_0800A56C: .4byte 0x02000314
_0800A570: .4byte 0x02001474
_0800A574: .4byte gLoadedTileAnimCount
_0800A578: .4byte 0x03002AB0
_0800A57C: .4byte 0x030032A8
_0800A580:
	ldr r1, _0800A590
	movs r0, #0
	strb r0, [r1]
	bl sub_801392C
_0800A58A:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800A590: .4byte 0x030032A8

    .thumb
	.thumb_func
	.global sub_800A594
sub_800A594: @ 0x0800A594
	push {r4, lr}
	ldr r0, _0800A5D4
	ldrb r4, [r0]
	cmp r4, #0
	bne _0800A5CE
	bl audio_pause
	ldr r0, _0800A5D8
	movs r1, #0
	strh r4, [r0]
	ldr r0, _0800A5DC
	strh r4, [r0]
	ldr r0, _0800A5E0
	strh r4, [r0]
	subs r0, #0xce
	strh r4, [r0]
	subs r0, #0x78
	strh r4, [r0]
	adds r0, #0xc
	strh r4, [r0]
	adds r0, #0xc
	strh r4, [r0]
	adds r0, #0xc
	strh r4, [r0]
	ldr r0, _0800A5E4
	strb r1, [r0]
	movs r0, #0
	bl sub_080643D0
_0800A5CE:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800A5D4: .4byte 0x02000F59
_0800A5D8: .4byte 0x04000208
_0800A5DC: .4byte 0x04000004
_0800A5E0: .4byte 0x04000200
_0800A5E4: .4byte 0x03007FFA

    .thumb
	.global sub_800A5E8
sub_800A5E8: @ 0x0800A5E8
	push {lr}
	bl sub_800A5F4
	pop {r0}
	bx r0
	.align 2, 0

    .thumb
    .global sub_800A5F4
sub_800A5F4: @ 0x0800A5F4
	push {r4, r5, r6, lr}
	ldr r1, _0800A6A4
	movs r0, #0
	movs r2, #0x1e
	bl DmaFill32
	ldr r4, _0800A6A8
	movs r0, #0
	adds r1, r4, #0
	movs r2, #8
	bl DmaFill32
	ldr r0, _0800A6AC
	movs r2, #0
	str r2, [r0]
	ldr r0, _0800A6B0
	str r2, [r0]
	ldr r0, _0800A6B4
	strb r2, [r0]
	ldr r0, _0800A6B8
	movs r3, #0
	strh r2, [r0]
	ldr r0, _0800A6BC
	strb r3, [r0]
	ldr r0, _0800A6C0
	strb r3, [r0]
	ldr r0, _0800A6C4
	str r2, [r0]
	ldr r1, _0800A6C8
	ldr r5, _0800A6CC
	adds r0, r5, #0
	strh r0, [r1]
	ldr r5, _0800A6D0
	ldrb r0, [r5, #0x16]
	strb r0, [r4, #0x16]
	ldrb r0, [r5, #0x17]
	strb r0, [r4, #0x17]
	ldr r1, _0800A6D4
	movs r6, #1
	rsbs r6, r6, #0
	adds r0, r6, #0
	strb r0, [r1]
	ldr r0, _0800A6D8
	strb r3, [r0]
	ldr r0, _0800A6DC
	strb r3, [r0]
	ldr r1, _0800A6E0
	movs r0, #1
	strb r0, [r1]
	ldr r0, _0800A6E4
	str r2, [r0]
	ldr r0, _0800A6E8
	str r2, [r0]
	ldr r1, _0800A6EC
	movs r0, #1
	str r0, [r1]
	movs r0, #4
	strb r0, [r4, #0x13]
	strb r3, [r4, #0x14]
	strb r0, [r4, #0x15]
	ldr r0, _0800A6F0
	strb r3, [r0]
	ldr r1, _0800A6F4
	ldrb r0, [r5, #0x15]
	subs r0, #4
	strb r0, [r1]
	ldr r0, _0800A6F8
	strb r3, [r0]
	ldr r1, _0800A6FC
	ldr r0, _0800A700
	ldr r0, [r0]
	strb r0, [r1]
	ldr r1, _0800A704
	movs r0, #0xb0
	lsls r0, r0, #0xd
	str r0, [r1]
	ldr r1, _0800A708
	movs r0, #0x90
	lsls r0, r0, #0xe
	str r0, [r1]
	ldr r1, _0800A70C
	movs r0, #0xc0
	lsls r0, r0, #0xd
	str r0, [r1]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800A6A4: .4byte 0x02000FCC
_0800A6A8: .4byte gGameStatus
_0800A6AC: .4byte 0x02001104
_0800A6B0: .4byte 0x02001108
_0800A6B4: .4byte byte_200110C
_0800A6B8: .4byte word_20010AC
_0800A6BC: .4byte 0x0200112A
_0800A6C0: .4byte 0x020010B1
_0800A6C4: .4byte gPaletteEffects
_0800A6C8: .4byte gLoadedRoomBgm
_0800A6CC: .4byte 0x0000FFFF
_0800A6D0: .4byte 0x080CC8C4
_0800A6D4: .4byte 0x0200108C
_0800A6D8: .4byte byte_20020B1
_0800A6DC: .4byte 0x020010B0
_0800A6E0: .4byte 0x02001100
_0800A6E4: .4byte 0x02001110
_0800A6E8: .4byte 0x02001114
_0800A6EC: .4byte 0x020011FC
_0800A6F0: .4byte 0x0200107C
_0800A6F4: .4byte 0x0200107D
_0800A6F8: .4byte 0x0200107E
_0800A6FC: .4byte 0x0200107F
_0800A700: .4byte 0x080CC8F4
_0800A704: .4byte 0x03003300
_0800A708: .4byte 0x03003308
_0800A70C: .4byte 0x03003304

    .thumb
	.global sub_800A710
sub_800A710: @ 0x0800A710
	push {lr}
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #5
	bls _0800A722
	cmp r1, #0xff
	beq _0800A722
	.2byte 0xEE00, 0xEE00
_0800A722:
	ldr r0, _0800A738
	strh r1, [r0]
	ldr r0, _0800A73C
	strb r1, [r0]
	bl sub_8040178
	bl sub_8039234
	pop {r0}
	bx r0
	.align 2, 0
_0800A738: .4byte gLoadedRoomLevel
_0800A73C: .4byte 0x020010AA
