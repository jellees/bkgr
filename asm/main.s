    .syntax unified

    .text

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
