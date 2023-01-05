
    .syntax unified

    .text

    .thumb
    .global sub_800F430
sub_800F430: @ 0x0800F430
	push {r4, r5, r6, r7, lr}
	ldr r6, _0800F44C
	ldrb r0, [r6]
	cmp r0, #0
	bne _0800F43C
	b _0800F76A
_0800F43C:
	adds r1, r0, #0
	cmp r1, #2
	beq _0800F4D8
	cmp r1, #2
	bgt _0800F450
	cmp r1, #1
	beq _0800F458
	b _0800F76A
	.align 2, 0
_0800F44C: .4byte byte_200110C
_0800F450:
	cmp r1, #3
	bne _0800F456
	b _0800F6C8
_0800F456:
	b _0800F76A
_0800F458:
	ldr r0, _0800F4B0
	ldrb r0, [r0]
	cmp r0, #0
	bne _0800F462
	b _0800F6F8
_0800F462:
	ldr r0, _0800F4B4
	ldrb r0, [r0]
	cmp r0, #0
	bne _0800F46C
	b _0800F6F8
_0800F46C:
	movs r0, #2
	strb r0, [r6]
	ldr r0, _0800F4B8
	ldr r3, [r0]
	cmp r3, #0
	beq _0800F492
	ldr r0, _0800F4BC
	ldr r1, _0800F4C0
	movs r2, #2
	ldrsh r1, [r1, r2]
	movs r2, #0
	strh r1, [r0]
	ldr r1, _0800F4C4
	ldrb r1, [r1]
	strh r1, [r0, #2]
	strh r2, [r0, #0xc]
	adds r1, r3, #0
	bl AddStringToBuffer
_0800F492:
	ldr r0, _0800F4C8
	ldr r1, _0800F4CC
	movs r3, #2
	ldrsh r1, [r1, r3]
	movs r2, #0
	strh r1, [r0]
	ldr r1, _0800F4D0
	ldrb r1, [r1]
	strh r1, [r0, #2]
	strh r2, [r0, #0xc]
	ldr r1, _0800F4D4
	ldr r1, [r1]
	bl AddStringToBuffer
	b _0800F76A
	.align 2, 0
_0800F4B0: .4byte 0x02001120
_0800F4B4: .4byte 0x0200111F
_0800F4B8: .4byte 0x0200118C
_0800F4BC: .4byte 0x020011A4
_0800F4C0: .4byte 0x020011C4
_0800F4C4: .4byte 0x0200111E
_0800F4C8: .4byte 0x02001190
_0800F4CC: .4byte 0x020011C0
_0800F4D0: .4byte 0x0200111D
_0800F4D4: .4byte 0x02001188
_0800F4D8:
	ldr r0, _0800F544
	ldrb r4, [r0]
	cmp r4, #0
	beq _0800F4E2
	b _0800F608
_0800F4E2:
	ldr r0, _0800F548
	ldrh r0, [r0]
	movs r7, #1
	movs r5, #1
	ands r5, r0
	cmp r5, #0
	beq _0800F574
	ldr r0, _0800F54C
	ldrb r0, [r0]
	cmp r0, #0
	beq _0800F51E
	ldr r2, _0800F550
	movs r5, #0xcf
	lsls r5, r5, #3
	adds r0, r2, r5
	ldrh r0, [r0]
	ldr r3, _0800F554
	adds r5, #2
	adds r1, r2, r5
	ldrb r3, [r3]
	adds r1, r1, r3
	ldrb r1, [r1]
	ldr r3, _0800F558
	adds r2, r2, r3
	ldr r2, [r2]
	movs r5, #0x80
	lsls r5, r5, #9
	adds r2, r2, r5
	bl audio_new_fx
_0800F51E:
	ldr r0, _0800F55C
	strb r7, [r0]
	movs r0, #3
	strb r0, [r6]
	ldr r0, _0800F560
	movs r1, #0xfa
	lsls r1, r1, #0x10
	str r1, [r0]
	ldr r0, _0800F564
	str r1, [r0]
	ldr r0, _0800F568
	strb r4, [r0]
	ldr r0, _0800F56C
	ldr r0, [r0]
	cmp r0, #0
	beq _0800F5FC
	ldr r0, _0800F570
	strb r4, [r0]
	b _0800F668
	.align 2, 0
_0800F544: .4byte 0x02001121
_0800F548: .4byte gKeysDown
_0800F54C: .4byte gCanPlaySfx
_0800F550: .4byte 0x080CE440
_0800F554: .4byte gSfxVolume
_0800F558: .4byte 0x0000067C
_0800F55C: .4byte 0x0200111C
_0800F560: .4byte 0x020011B8
_0800F564: .4byte 0x020011BC
_0800F568: .4byte 0x0200111F
_0800F56C: .4byte 0x0200118C
_0800F570: .4byte 0x02001120
_0800F574:
	ands r1, r0
	cmp r1, #0
	beq _0800F668
	ldr r0, _0800F5D0
	ldrb r0, [r0]
	cmp r0, #0
	beq _0800F5A8
	ldr r2, _0800F5D4
	movs r1, #0xd0
	lsls r1, r1, #3
	adds r0, r2, r1
	ldrh r0, [r0]
	ldr r3, _0800F5D8
	ldr r4, _0800F5DC
	adds r1, r2, r4
	ldrb r3, [r3]
	adds r1, r1, r3
	ldrb r1, [r1]
	ldr r3, _0800F5E0
	adds r2, r2, r3
	ldr r2, [r2]
	movs r4, #0x80
	lsls r4, r4, #9
	adds r2, r2, r4
	bl audio_new_fx
_0800F5A8:
	ldr r0, _0800F5E4
	strb r5, [r0]
	movs r0, #3
	strb r0, [r6]
	ldr r0, _0800F5E8
	movs r1, #0xfa
	lsls r1, r1, #0x10
	str r1, [r0]
	ldr r0, _0800F5EC
	str r1, [r0]
	ldr r0, _0800F5F0
	strb r5, [r0]
	ldr r0, _0800F5F4
	ldr r0, [r0]
	cmp r0, #0
	beq _0800F5FC
	ldr r0, _0800F5F8
	strb r5, [r0]
	b _0800F668
	.align 2, 0
_0800F5D0: .4byte gCanPlaySfx
_0800F5D4: .4byte 0x080CE440
_0800F5D8: .4byte gSfxVolume
_0800F5DC: .4byte 0x00000682
_0800F5E0: .4byte 0x00000684
_0800F5E4: .4byte 0x0200111C
_0800F5E8: .4byte 0x020011B8
_0800F5EC: .4byte 0x020011BC
_0800F5F0: .4byte 0x0200111F
_0800F5F4: .4byte 0x0200118C
_0800F5F8: .4byte 0x02001120
_0800F5FC:
	ldr r0, _0800F604
	strb r7, [r0]
	b _0800F668
	.align 2, 0
_0800F604: .4byte 0x02001120
_0800F608:
	ldr r1, _0800F63C
	ldrb r0, [r1]
	adds r2, r0, #0
	cmp r2, #0
	bne _0800F664
	ldr r0, _0800F640
	movs r3, #1
	strb r3, [r0]
	movs r0, #3
	strb r0, [r6]
	ldr r0, _0800F644
	movs r1, #0xfa
	lsls r1, r1, #0x10
	str r1, [r0]
	ldr r0, _0800F648
	str r1, [r0]
	ldr r0, _0800F64C
	strb r2, [r0]
	ldr r0, _0800F650
	ldr r0, [r0]
	cmp r0, #0
	beq _0800F658
	ldr r0, _0800F654
	strb r2, [r0]
	b _0800F668
	.align 2, 0
_0800F63C: .4byte 0x02001122
_0800F640: .4byte 0x0200111C
_0800F644: .4byte 0x020011B8
_0800F648: .4byte 0x020011BC
_0800F64C: .4byte 0x0200111F
_0800F650: .4byte 0x0200118C
_0800F654: .4byte 0x02001120
_0800F658:
	ldr r0, _0800F660
	strb r3, [r0]
	b _0800F668
	.align 2, 0
_0800F660: .4byte 0x02001120
_0800F664:
	subs r0, #1
	strb r0, [r1]
_0800F668:
	ldr r0, _0800F6A8
	ldr r1, _0800F6AC
	movs r5, #2
	ldrsh r1, [r1, r5]
	movs r4, #0
	strh r1, [r0]
	ldr r1, _0800F6B0
	ldrb r1, [r1]
	strh r1, [r0, #2]
	strh r4, [r0, #0xc]
	ldr r1, _0800F6B4
	ldr r1, [r1]
	bl AddStringToBuffer
	ldr r0, _0800F6B8
	ldr r2, [r0]
	cmp r2, #0
	beq _0800F76A
	ldr r0, _0800F6BC
	ldr r1, _0800F6C0
	movs r3, #2
	ldrsh r1, [r1, r3]
	strh r1, [r0]
	ldr r1, _0800F6C4
	ldrb r1, [r1]
	strh r1, [r0, #2]
	strh r4, [r0, #0xc]
	adds r1, r2, #0
	bl AddStringToBuffer
	b _0800F76A
	.align 2, 0
_0800F6A8: .4byte 0x02001190
_0800F6AC: .4byte 0x020011C0
_0800F6B0: .4byte 0x0200111D
_0800F6B4: .4byte 0x02001188
_0800F6B8: .4byte 0x0200118C
_0800F6BC: .4byte 0x020011A4
_0800F6C0: .4byte 0x020011C4
_0800F6C4: .4byte 0x0200111E
_0800F6C8:
	ldr r0, _0800F6E8
	ldrb r0, [r0]
	cmp r0, #0
	beq _0800F6F8
	ldr r0, _0800F6EC
	ldrb r0, [r0]
	cmp r0, #0
	beq _0800F6F8
	movs r0, #0
	strb r0, [r6]
	ldr r0, _0800F6F0
	ldr r1, [r0]
	ldr r0, _0800F6F4
	ldrb r0, [r0]
	str r0, [r1]
	b _0800F76A
	.align 2, 0
_0800F6E8: .4byte 0x02001120
_0800F6EC: .4byte 0x0200111F
_0800F6F0: .4byte 0x020011C8
_0800F6F4: .4byte 0x0200111C
_0800F6F8:
	ldr r0, _0800F770
	ldr r3, [r0]
	cmp r3, #0
	beq _0800F734
	ldr r0, _0800F774
	ldr r4, _0800F778
	movs r5, #2
	ldrsh r1, [r4, r5]
	movs r2, #0
	strh r1, [r0]
	ldr r1, _0800F77C
	ldrb r1, [r1]
	strh r1, [r0, #2]
	strh r2, [r0, #0xc]
	adds r1, r3, #0
	bl AddStringToBuffer
	ldr r0, [r4]
	movs r1, #0x80
	lsls r1, r1, #0xb
	adds r0, r0, r1
	str r0, [r4]
	ldr r1, _0800F780
	ldr r1, [r1]
	cmp r0, r1
	blt _0800F734
	str r1, [r4]
	ldr r1, _0800F784
	movs r0, #1
	strb r0, [r1]
_0800F734:
	ldr r0, _0800F788
	ldr r4, _0800F78C
	movs r2, #2
	ldrsh r1, [r4, r2]
	movs r2, #0
	strh r1, [r0]
	ldr r1, _0800F790
	ldrb r1, [r1]
	strh r1, [r0, #2]
	strh r2, [r0, #0xc]
	ldr r1, _0800F794
	ldr r1, [r1]
	bl AddStringToBuffer
	ldr r0, [r4]
	movs r3, #0x80
	lsls r3, r3, #0xb
	adds r0, r0, r3
	str r0, [r4]
	ldr r1, _0800F798
	ldr r1, [r1]
	cmp r0, r1
	blt _0800F76A
	str r1, [r4]
	ldr r1, _0800F79C
	movs r0, #1
	strb r0, [r1]
_0800F76A:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800F770: .4byte 0x0200118C
_0800F774: .4byte 0x020011A4
_0800F778: .4byte 0x020011C4
_0800F77C: .4byte 0x0200111E
_0800F780: .4byte 0x020011BC
_0800F784: .4byte 0x02001120
_0800F788: .4byte 0x02001190
_0800F78C: .4byte 0x020011C0
_0800F790: .4byte 0x0200111D
_0800F794: .4byte 0x02001188
_0800F798: .4byte 0x020011B8
_0800F79C: .4byte 0x0200111F

    .thumb
	.global sub_800F7A0
sub_800F7A0: @ 0x0800F7A0
	push {r4, lr}
	ldr r3, _0800F7F4
	ldrb r2, [r3, #0x13]
	ldrb r1, [r3, #0x15]
	ldrb r0, [r3, #0x14]
	adds r0, #1
	muls r1, r0, r1
	cmp r2, r1
	bge _0800F7EC
	strb r1, [r3, #0x13]
	ldrb r1, [r3, #0x13]
	movs r0, #0x38
	bl sub_08040204
	ldr r0, _0800F7F8
	ldrb r0, [r0]
	cmp r0, #0
	beq _0800F7EC
	ldr r3, _0800F7FC
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r3, r1
	ldrh r0, [r0]
	ldr r2, _0800F800
	movs r4, #0xa1
	lsls r4, r4, #1
	adds r1, r3, r4
	ldrb r2, [r2]
	adds r1, r1, r2
	ldrb r1, [r1]
	adds r4, #2
	adds r2, r3, r4
	ldr r2, [r2]
	movs r3, #0x80
	lsls r3, r3, #9
	adds r2, r2, r3
	bl audio_new_fx
_0800F7EC:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800F7F4: .4byte gGameStatus
_0800F7F8: .4byte gCanPlaySfx
_0800F7FC: .4byte 0x080CE440
_0800F800: .4byte gSfxVolume

    .thumb
	.global IsGameComplete
IsGameComplete: @ 0x0800F804
	push {r4, lr}
	movs r3, #0
	ldr r1, _0800F828
	ldr r2, _0800F82C
	ldrh r0, [r1, #0xc]
	ldrh r4, [r2, #0xc]
	cmp r0, r4
	bne _0800F81E
	ldrh r0, [r1]
	ldrh r2, [r2]
	cmp r0, r2
	bne _0800F81E
	movs r3, #1
_0800F81E:
	adds r0, r3, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0800F828: .4byte gGameStatus
_0800F82C: .4byte 0x080CC8C4

