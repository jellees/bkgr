
    .syntax unified

    .text

    .thumb
	.global sub_08016080
sub_08016080: @ 0x08016080
	push {lr}
	cmp r0, #1
	beq _080160D8
	cmp r0, #1
	bgt _08016090
	cmp r0, #0
	beq _0801609A
	b _080161C4
_08016090:
	cmp r0, #2
	beq _08016118
	cmp r0, #3
	beq _08016158
	b _080161C4
_0801609A:
	ldr r2, _080160A8
	ldrb r0, [r2, #0x14]
	cmp r0, #0
	bne _080160B0
	ldr r1, _080160AC
	ldr r0, [r2, #0x38]
	b _080160B4
	.align 2, 0
_080160A8: .4byte gRoomHeader
_080160AC: .4byte 0x02002080
_080160B0:
	ldr r1, _080160C8
	ldr r0, [r2, #0x3c]
_080160B4:
	str r0, [r1]
	ldr r2, _080160CC
	ldr r0, [r1]
	ldrh r1, [r0, #2]
	lsls r0, r1, #0x10
	orrs r0, r1
	str r0, [r2]
	ldr r1, _080160D0
	ldr r0, _080160D4
	b _08016186
	.align 2, 0
_080160C8: .4byte 0x02002080
_080160CC: .4byte 0x02002088
_080160D0: .4byte 0x02002084
_080160D4: .4byte 0x0600E380
_080160D8:
	ldr r2, _080160E8
	ldrb r0, [r2, #0x15]
	cmp r0, #0
	bne _080160F0
	ldr r1, _080160EC
	ldr r0, [r2, #0x38]
	b _080160F4
	.align 2, 0
_080160E8: .4byte gRoomHeader
_080160EC: .4byte 0x02002080
_080160F0:
	ldr r1, _08016108
	ldr r0, [r2, #0x3c]
_080160F4:
	str r0, [r1]
	ldr r2, _0801610C
	ldr r0, [r1]
	ldrh r1, [r0, #2]
	lsls r0, r1, #0x10
	orrs r0, r1
	str r0, [r2]
	ldr r1, _08016110
	ldr r0, _08016114
	b _08016186
	.align 2, 0
_08016108: .4byte 0x02002080
_0801610C: .4byte 0x02002088
_08016110: .4byte 0x02002084
_08016114: .4byte 0x0600EB80
_08016118:
	ldr r2, _08016128
	ldrb r0, [r2, #0x16]
	cmp r0, #0
	bne _08016130
	ldr r1, _0801612C
	ldr r0, [r2, #0x38]
	b _08016134
	.align 2, 0
_08016128: .4byte gRoomHeader
_0801612C: .4byte 0x02002080
_08016130:
	ldr r1, _08016148
	ldr r0, [r2, #0x3c]
_08016134:
	str r0, [r1]
	ldr r2, _0801614C
	ldr r0, [r1]
	ldrh r1, [r0, #2]
	lsls r0, r1, #0x10
	orrs r0, r1
	str r0, [r2]
	ldr r1, _08016150
	ldr r0, _08016154
	b _08016186
	.align 2, 0
_08016148: .4byte 0x02002080
_0801614C: .4byte 0x02002088
_08016150: .4byte 0x02002084
_08016154: .4byte 0x0600F380
_08016158:
	ldr r2, _08016168
	ldrb r0, [r2, #0x17]
	cmp r0, #0
	bne _08016170
	ldr r1, _0801616C
	ldr r0, [r2, #0x38]
	b _08016174
	.align 2, 0
_08016168: .4byte gRoomHeader
_0801616C: .4byte 0x02002080
_08016170:
	ldr r1, _080161A4
	ldr r0, [r2, #0x3c]
_08016174:
	str r0, [r1]
	ldr r2, _080161A8
	ldr r0, [r1]
	ldrh r1, [r0, #2]
	lsls r0, r1, #0x10
	orrs r0, r1
	str r0, [r2]
	ldr r1, _080161AC
	ldr r0, _080161B0
_08016186:
	str r0, [r1]
	ldr r1, _080161B4
	movs r0, #0x1a
	str r0, [r1]
	ldr r1, _080161B8
	movs r0, #2
	str r0, [r1]
	ldr r1, _080161BC
	subs r0, #3
	str r0, [r1]
	ldr r1, _080161C0
	movs r0, #1
	str r0, [r1]
	b _080161C8
	.align 2, 0
_080161A4: .4byte 0x02002080
_080161A8: .4byte 0x02002088
_080161AC: .4byte 0x02002084
_080161B0: .4byte 0x0600FB80
_080161B4: .4byte 0x02002074
_080161B8: .4byte 0x02002078
_080161BC: .4byte 0x0200207C
_080161C0: .4byte dword_2001470
_080161C4:
	.2byte 0xEE00, 0xEE00
_080161C8:
	pop {r0}
	bx r0


	.thumb
	.global sub_080161CC
sub_080161CC: @ 0x080161CC
	push {r4, lr}
	adds r2, r0, #0
	ldr r1, _080161E4
	movs r0, #0
	strb r0, [r1]
	cmp r2, #1
	beq _0801627C
	cmp r2, #1
	bgt _080161E8
	cmp r2, #0
	beq _080161F6
	b _08016408
	.align 2, 0
_080161E4: .4byte byte_200146C
_080161E8:
	cmp r2, #2
	bne _080161EE
	b _08016300
_080161EE:
	cmp r2, #3
	bne _080161F4
	b _08016388
_080161F4:
	b _08016408
_080161F6:
	ldr r1, _08016204
	ldrb r0, [r1, #0x14]
	cmp r0, #0
	bne _08016208
	ldr r3, [r1, #0x38]
	b _0801620A
	.align 2, 0
_08016204: .4byte gRoomHeader
_08016208:
	ldr r3, [r1, #0x3c]
_0801620A:
	ldrh r1, [r3, #2]
	lsls r0, r1, #0x10
	orrs r0, r1
	ldr r4, _08016238
	ldrb r2, [r3]
	ldrb r1, [r3, #1]
	muls r2, r1, r2
	asrs r2, r2, #1
	adds r1, r4, #0
	bl DmaFill32
	ldr r0, _0801623C
	adds r0, #0x5c
	ldrb r0, [r0]
	cmp r0, #0
	beq _08016244
	ldr r0, _08016240
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	b _08016254
	.align 2, 0
_08016238: .4byte 0x0600E380
_0801623C: .4byte gRoomHeader
_08016240: .4byte 0x04000010
_08016244:
	ldr r1, _08016268
	ldr r0, _0801626C
	ldrb r0, [r0]
	strh r0, [r1]
	adds r1, #2
	ldr r0, _08016270
	ldrb r0, [r0]
	strh r0, [r1]
_08016254:
	ldr r2, _08016274
	ldr r0, _08016278
	ldrh r1, [r2]
	ldrh r0, [r0]
	ands r0, r1
	strh r0, [r2]
	subs r2, #0x48
	ldrh r0, [r2]
	movs r1, #3
	b _0801636E
	.align 2, 0
_08016268: .4byte 0x04000010
_0801626C: .4byte gBGOffsetHorizontal
_08016270: .4byte gBGOffsetVertical
_08016274: .4byte 0x04000050
_08016278: .4byte gColorSpecEffectsSel
_0801627C:
	ldr r1, _08016288
	ldrb r0, [r1, #0x15]
	cmp r0, #0
	bne _0801628C
	ldr r3, [r1, #0x38]
	b _0801628E
	.align 2, 0
_08016288: .4byte gRoomHeader
_0801628C:
	ldr r3, [r1, #0x3c]
_0801628E:
	ldrh r1, [r3, #2]
	lsls r0, r1, #0x10
	orrs r0, r1
	ldr r4, _080162BC
	ldrb r2, [r3]
	ldrb r1, [r3, #1]
	muls r2, r1, r2
	asrs r2, r2, #1
	adds r1, r4, #0
	bl DmaFill32
	ldr r0, _080162C0
	adds r0, #0x5d
	ldrb r0, [r0]
	cmp r0, #0
	beq _080162C8
	ldr r0, _080162C4
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	b _080162D8
	.align 2, 0
_080162BC: .4byte 0x0600EB80
_080162C0: .4byte gRoomHeader
_080162C4: .4byte 0x04000014
_080162C8:
	ldr r1, _080162EC
	ldr r0, _080162F0
	ldrb r0, [r0]
	strh r0, [r1]
	adds r1, #2
	ldr r0, _080162F4
	ldrb r0, [r0]
	strh r0, [r1]
_080162D8:
	ldr r2, _080162F8
	ldr r0, _080162FC
	ldrh r1, [r2]
	ldrh r0, [r0]
	ands r0, r1
	strh r0, [r2]
	subs r2, #0x46
	ldrh r0, [r2]
	movs r1, #2
	b _0801636E
	.align 2, 0
_080162EC: .4byte 0x04000014
_080162F0: .4byte gBGOffsetHorizontal
_080162F4: .4byte gBGOffsetVertical
_080162F8: .4byte 0x04000050
_080162FC: .4byte gColorSpecEffectsSel
_08016300:
	ldr r1, _0801630C
	ldrb r0, [r1, #0x16]
	cmp r0, #0
	bne _08016310
	ldr r3, [r1, #0x38]
	b _08016312
	.align 2, 0
_0801630C: .4byte gRoomHeader
_08016310:
	ldr r3, [r1, #0x3c]
_08016312:
	ldrh r1, [r3, #2]
	lsls r0, r1, #0x10
	orrs r0, r1
	ldr r4, _08016340
	ldrb r2, [r3]
	ldrb r1, [r3, #1]
	muls r2, r1, r2
	asrs r2, r2, #1
	adds r1, r4, #0
	bl DmaFill32
	ldr r0, _08016344
	adds r0, #0x5e
	ldrb r0, [r0]
	cmp r0, #0
	beq _0801634C
	ldr r0, _08016348
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	b _0801635C
	.align 2, 0
_08016340: .4byte 0x0600F380
_08016344: .4byte gRoomHeader
_08016348: .4byte 0x04000018
_0801634C:
	ldr r1, _08016374
	ldr r0, _08016378
	ldrb r0, [r0]
	strh r0, [r1]
	adds r1, #2
	ldr r0, _0801637C
	ldrb r0, [r0]
	strh r0, [r1]
_0801635C:
	ldr r2, _08016380
	ldr r0, _08016384
	ldrh r1, [r2]
	ldrh r0, [r0]
	ands r0, r1
	strh r0, [r2]
	subs r2, #0x44
	ldrh r0, [r2]
	movs r1, #1
_0801636E:
	orrs r0, r1
	strh r0, [r2]
	b _0801640C
	.align 2, 0
_08016374: .4byte 0x04000018
_08016378: .4byte gBGOffsetHorizontal
_0801637C: .4byte gBGOffsetVertical
_08016380: .4byte 0x04000050
_08016384: .4byte gColorSpecEffectsSel
_08016388:
	ldr r1, _08016394
	ldrb r0, [r1, #0x17]
	cmp r0, #0
	bne _08016398
	ldr r3, [r1, #0x38]
	b _0801639A
	.align 2, 0
_08016394: .4byte gRoomHeader
_08016398:
	ldr r3, [r1, #0x3c]
_0801639A:
	ldrh r1, [r3, #2]
	lsls r0, r1, #0x10
	orrs r0, r1
	ldr r4, _080163C8
	ldrb r2, [r3]
	ldrb r1, [r3, #1]
	muls r2, r1, r2
	asrs r2, r2, #1
	adds r1, r4, #0
	bl DmaFill32
	ldr r0, _080163CC
	adds r0, #0x5f
	ldrb r0, [r0]
	cmp r0, #0
	beq _080163D4
	ldr r0, _080163D0
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	b _080163E4
	.align 2, 0
_080163C8: .4byte 0x0600FB80
_080163CC: .4byte gRoomHeader
_080163D0: .4byte 0x0400001C
_080163D4:
	ldr r1, _080163F4
	ldr r0, _080163F8
	ldrb r0, [r0]
	strh r0, [r1]
	adds r1, #2
	ldr r0, _080163FC
	ldrb r0, [r0]
	strh r0, [r1]
_080163E4:
	ldr r2, _08016400
	ldr r0, _08016404
	ldrh r1, [r2]
	ldrh r0, [r0]
	ands r0, r1
	strh r0, [r2]
	b _0801640C
	.align 2, 0
_080163F4: .4byte 0x0400001C
_080163F8: .4byte gBGOffsetHorizontal
_080163FC: .4byte gBGOffsetVertical
_08016400: .4byte 0x04000050
_08016404: .4byte gColorSpecEffectsSel
_08016408:
	.2byte 0xEE00, 0xEE00
_0801640C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

    .thumb
	.global RoomObjPaletteToVram
RoomObjPaletteToVram: @ 0x08016414
	push {lr}
	ldr r1, _0801642C
	lsls r0, r0, #3
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r0, [r0, #0x44]
	ldr r1, _08016430
	movs r2, #0x80
	bl DmaTransfer32
	pop {r0}
	bx r0
	.align 2, 0
_0801642C: .4byte dRoomIndexes
_08016430: .4byte 0x05000200

