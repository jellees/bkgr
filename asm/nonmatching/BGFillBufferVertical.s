    .thumb
BGFillBufferVertical: @ 0x080143E4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	mov ip, r0
	mov sl, r1
	ldr r0, _080147E0
	mov r8, r0
	asrs r1, r1, #2
	str r1, [sp]
	ldrh r0, [r0, #0xa]
	muls r0, r1, r0
	lsls r0, r0, #1
	mov r2, r8
	ldr r1, [r2, #0x4c]
	adds r4, r1, r0
	movs r6, #3
	mov r0, sl
	ands r0, r6
	lsls r0, r0, #3
	str r0, [sp, #4]
	ldr r3, _080147E4
	ldr r0, [r3]
	ldr r1, [sp, #4]
	adds r5, r0, r1
	mov r2, ip
	asrs r0, r2, #2
	lsls r0, r0, #1
	str r0, [sp, #8]
	adds r0, r4, r0
	ldr r2, _080147E8
	ldrh r1, [r0]
	mov r0, ip
	ands r0, r6
	lsls r0, r0, #1
	str r0, [sp, #0xc]
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r1, r0, r1
	ldrh r0, [r1]
	strh r0, [r2]
	mov r3, ip
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #2]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #4]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #6]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #8]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0xa]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0xc]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0xe]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x10]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x12]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x14]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x16]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x18]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x1a]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x1c]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x1e]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x20]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x22]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x24]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x26]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x28]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x2a]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x2c]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x2e]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x30]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x32]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x34]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x36]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x38]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x3a]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x3c]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r0, [r0]
	ands r3, r6
	lsls r1, r3, #1
	lsls r0, r0, #5
	adds r0, r0, r5
	adds r1, r1, r0
	ldrh r0, [r1]
	strh r0, [r2, #0x3e]
	mov r3, r8
	ldrh r3, [r3, #8]
	str r3, [sp, #0x10]
	cmp r3, #1
	bne _0801476E
	bl _080151A0
_0801476E:
	mov r1, r8
	ldrh r0, [r1, #0xa]
	ldr r2, [sp]
	muls r0, r2, r0
	lsls r0, r0, #1
	ldr r1, [r1, #0x50]
	adds r4, r1, r0
	ldr r3, _080147E4
	ldr r0, [r3, #4]
	ldr r1, [sp, #4]
	adds r5, r0, r1
	ldr r2, [sp, #8]
	adds r0, r4, r2
	ldr r2, _080147EC
	ldrh r0, [r0]
	lsls r0, r0, #5
	adds r0, r0, r5
	ldr r3, [sp, #0xc]
	adds r0, r3, r0
	ldrh r0, [r0]
	strh r0, [r2]
	mov r3, ip
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #2]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #4]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	b _080147F0
	.align 2, 0
_080147E0: .4byte gRoomHeader
_080147E4: .4byte gTileSetBG
_080147E8: .4byte gBG0VerticalBuffer
_080147EC: .4byte gBG1VerticalBuffer
_080147F0:
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #6]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #8]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0xa]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0xc]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0xe]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x10]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x12]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x14]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x16]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x18]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x1a]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x1c]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x1e]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x20]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x22]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x24]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x26]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x28]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x2a]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x2c]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x2e]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x30]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x32]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x34]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x36]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x38]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x3a]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x3c]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r0, [r0]
	ands r3, r6
	lsls r1, r3, #1
	lsls r0, r0, #5
	adds r0, r0, r5
	adds r1, r1, r0
	ldrh r0, [r1]
	strh r0, [r2, #0x3e]
	mov r7, ip
	adds r7, #1
	ldr r0, [sp, #0x10]
	cmp r0, #2
	bne _08014ADE
	b _080151A0
_08014ADE:
	mov r1, r8
	ldrh r0, [r1, #0xa]
	ldr r2, [sp]
	muls r0, r2, r0
	lsls r0, r0, #1
	ldr r1, [r1, #0x54]
	adds r4, r1, r0
	ldr r3, _08014ED4
	ldr r0, [r3, #8]
	ldr r1, [sp, #4]
	adds r5, r0, r1
	ldr r2, [sp, #8]
	adds r0, r4, r2
	ldr r2, _08014ED8
	ldrh r0, [r0]
	lsls r0, r0, #5
	adds r0, r0, r5
	ldr r3, [sp, #0xc]
	adds r0, r3, r0
	ldrh r0, [r0]
	strh r0, [r2]
	asrs r0, r7, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r7, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #2]
	adds r3, r7, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #4]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #6]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #8]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0xa]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0xc]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0xe]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x10]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x12]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x14]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x16]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x18]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x1a]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x1c]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x1e]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x20]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x22]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x24]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x26]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x28]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x2a]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x2c]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x2e]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x30]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x32]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x34]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x36]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x38]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x3a]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x3c]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r0, [r0]
	ands r3, r6
	lsls r1, r3, #1
	lsls r0, r0, #5
	adds r0, r0, r5
	adds r1, r1, r0
	ldrh r0, [r1]
	strh r0, [r2, #0x3e]
	ldr r1, _08014EDC
	ldrh r0, [r1, #8]
	mov r2, sl
	asrs r1, r2, #2
	mov r3, ip
	asrs r2, r3, #2
	cmp r0, #3
	bne _08014E3C
	b _080151A0
_08014E3C:
	ldr r3, _08014EDC
	ldrh r0, [r3, #0xa]
	muls r0, r1, r0
	lsls r0, r0, #1
	ldr r1, [r3, #0x58]
	adds r4, r1, r0
	mov r0, sl
	ands r0, r6
	lsls r1, r0, #3
	ldr r3, _08014ED4
	ldr r0, [r3, #0xc]
	adds r5, r0, r1
	lsls r0, r2, #1
	adds r0, r4, r0
	ldr r2, _08014EE0
	ldrh r0, [r0]
	mov r1, ip
	ands r1, r6
	lsls r1, r1, #1
	lsls r0, r0, #5
	adds r0, r0, r5
	adds r1, r1, r0
	ldrh r0, [r1]
	strh r0, [r2]
	asrs r0, r7, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r7, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #2]
	adds r3, r7, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #4]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #6]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #8]
	b _08014EE4
	.align 2, 0
_08014ED4: .4byte gTileSetBG
_08014ED8: .4byte gBG2VerticalBuffer
_08014EDC: .4byte gRoomHeader
_08014EE0: .4byte gBG3VerticalBuffer
_08014EE4:
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0xa]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0xc]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0xe]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x10]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x12]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x14]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x16]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x18]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x1a]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x1c]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x1e]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x20]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x22]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x24]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x26]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x28]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x2a]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x2c]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x2e]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x30]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x32]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x34]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x36]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x38]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x3a]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x3c]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r0, [r0]
	ands r3, r6
	lsls r1, r3, #1
	lsls r0, r0, #5
	adds r0, r0, r5
	adds r1, r1, r0
	ldrh r0, [r1]
	strh r0, [r2, #0x3e]
_080151A0:
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
