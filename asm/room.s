
    .syntax unified

    .text

    .thumb
	.global BGFillBufferVertical
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

    .thumb
	.global BGFillBufferHorizontal
BGFillBufferHorizontal: @ 0x080151B0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x20
	mov sb, r1
	ldr r3, _080155A8
	asrs r1, r0, #2
	lsls r1, r1, #1
	mov sl, r1
	ldr r1, [r3, #0x4c]
	mov r2, sl
	adds r5, r1, r2
	movs r7, #3
	ands r0, r7
	lsls r0, r0, #1
	str r0, [sp]
	ldr r1, _080155AC
	ldr r0, [r1]
	ldr r2, [sp]
	adds r6, r0, r2
	mov r0, sb
	asrs r0, r0, #2
	str r0, [sp, #4]
	ldrh r0, [r3, #0xa]
	ldr r1, [sp, #4]
	muls r0, r1, r0
	lsls r0, r0, #1
	adds r0, r5, r0
	ldr r2, _080155B0
	ldrh r1, [r0]
	mov r0, sb
	ands r0, r7
	lsls r0, r0, #3
	str r0, [sp, #8]
	lsls r1, r1, #5
	adds r1, r1, r6
	adds r1, r0, r1
	ldrh r0, [r1]
	strh r0, [r2]
	mov r4, sb
	adds r4, #1
	asrs r1, r4, #2
	ldrh r0, [r3, #0xa]
	muls r0, r1, r0
	lsls r0, r0, #1
	adds r0, r5, r0
	ldrh r1, [r0]
	adds r0, r4, #0
	ands r0, r7
	lsls r0, r0, #3
	lsls r1, r1, #5
	adds r1, r1, r6
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #2]
	adds r4, #1
	asrs r1, r4, #2
	ldrh r0, [r3, #0xa]
	muls r0, r1, r0
	lsls r0, r0, #1
	adds r0, r5, r0
	ldrh r1, [r0]
	adds r0, r4, #0
	ands r0, r7
	lsls r0, r0, #3
	lsls r1, r1, #5
	adds r1, r1, r6
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #4]
	adds r4, #1
	asrs r1, r4, #2
	ldrh r0, [r3, #0xa]
	muls r0, r1, r0
	lsls r0, r0, #1
	adds r0, r5, r0
	ldrh r1, [r0]
	adds r0, r4, #0
	ands r0, r7
	lsls r0, r0, #3
	lsls r1, r1, #5
	adds r1, r1, r6
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #6]
	adds r4, #1
	asrs r1, r4, #2
	ldrh r0, [r3, #0xa]
	muls r0, r1, r0
	lsls r0, r0, #1
	adds r0, r5, r0
	ldrh r1, [r0]
	adds r0, r4, #0
	ands r0, r7
	lsls r0, r0, #3
	lsls r1, r1, #5
	adds r1, r1, r6
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #8]
	adds r4, #1
	asrs r1, r4, #2
	ldrh r0, [r3, #0xa]
	muls r0, r1, r0
	lsls r0, r0, #1
	adds r0, r5, r0
	ldrh r1, [r0]
	adds r0, r4, #0
	ands r0, r7
	lsls r0, r0, #3
	lsls r1, r1, #5
	adds r1, r1, r6
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0xa]
	adds r4, #1
	asrs r1, r4, #2
	ldrh r0, [r3, #0xa]
	muls r0, r1, r0
	lsls r0, r0, #1
	adds r0, r5, r0
	ldrh r1, [r0]
	adds r0, r4, #0
	ands r0, r7
	lsls r0, r0, #3
	lsls r1, r1, #5
	adds r1, r1, r6
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0xc]
	adds r4, #1
	asrs r1, r4, #2
	ldrh r0, [r3, #0xa]
	muls r0, r1, r0
	lsls r0, r0, #1
	adds r0, r5, r0
	ldrh r1, [r0]
	adds r0, r4, #0
	ands r0, r7
	lsls r0, r0, #3
	lsls r1, r1, #5
	adds r1, r1, r6
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0xe]
	adds r4, #1
	asrs r1, r4, #2
	ldrh r0, [r3, #0xa]
	muls r0, r1, r0
	lsls r0, r0, #1
	adds r0, r5, r0
	ldrh r1, [r0]
	adds r0, r4, #0
	ands r0, r7
	lsls r0, r0, #3
	lsls r1, r1, #5
	adds r1, r1, r6
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x10]
	adds r4, #1
	asrs r1, r4, #2
	ldrh r0, [r3, #0xa]
	muls r0, r1, r0
	lsls r0, r0, #1
	adds r0, r5, r0
	ldrh r1, [r0]
	adds r0, r4, #0
	ands r0, r7
	lsls r0, r0, #3
	lsls r1, r1, #5
	adds r1, r1, r6
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x12]
	adds r4, #1
	asrs r1, r4, #2
	ldrh r0, [r3, #0xa]
	muls r0, r1, r0
	lsls r0, r0, #1
	adds r0, r5, r0
	ldrh r1, [r0]
	adds r0, r4, #0
	ands r0, r7
	lsls r0, r0, #3
	lsls r1, r1, #5
	adds r1, r1, r6
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x14]
	adds r4, #1
	asrs r1, r4, #2
	ldrh r0, [r3, #0xa]
	muls r0, r1, r0
	lsls r0, r0, #1
	adds r0, r5, r0
	ldrh r1, [r0]
	adds r0, r4, #0
	ands r0, r7
	lsls r0, r0, #3
	lsls r1, r1, #5
	adds r1, r1, r6
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x16]
	adds r4, #1
	asrs r1, r4, #2
	ldrh r0, [r3, #0xa]
	muls r0, r1, r0
	lsls r0, r0, #1
	adds r0, r5, r0
	ldrh r1, [r0]
	adds r0, r4, #0
	ands r0, r7
	lsls r0, r0, #3
	lsls r1, r1, #5
	adds r1, r1, r6
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x18]
	adds r4, #1
	asrs r1, r4, #2
	ldrh r0, [r3, #0xa]
	muls r0, r1, r0
	lsls r0, r0, #1
	adds r0, r5, r0
	ldrh r1, [r0]
	adds r0, r4, #0
	ands r0, r7
	lsls r0, r0, #3
	lsls r1, r1, #5
	adds r1, r1, r6
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x1a]
	adds r4, #1
	asrs r1, r4, #2
	ldrh r0, [r3, #0xa]
	muls r0, r1, r0
	lsls r0, r0, #1
	adds r0, r5, r0
	ldrh r1, [r0]
	adds r0, r4, #0
	ands r0, r7
	lsls r0, r0, #3
	lsls r1, r1, #5
	adds r1, r1, r6
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x1c]
	adds r4, #1
	asrs r1, r4, #2
	ldrh r0, [r3, #0xa]
	muls r0, r1, r0
	lsls r0, r0, #1
	adds r0, r5, r0
	ldrh r1, [r0]
	adds r0, r4, #0
	ands r0, r7
	lsls r0, r0, #3
	lsls r1, r1, #5
	adds r1, r1, r6
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x1e]
	adds r4, #1
	asrs r1, r4, #2
	ldrh r0, [r3, #0xa]
	muls r0, r1, r0
	lsls r0, r0, #1
	adds r0, r5, r0
	ldrh r1, [r0]
	adds r0, r4, #0
	ands r0, r7
	lsls r0, r0, #3
	lsls r1, r1, #5
	adds r1, r1, r6
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x20]
	adds r4, #1
	asrs r1, r4, #2
	ldrh r0, [r3, #0xa]
	muls r0, r1, r0
	lsls r0, r0, #1
	adds r0, r5, r0
	ldrh r1, [r0]
	adds r0, r4, #0
	ands r0, r7
	lsls r0, r0, #3
	lsls r1, r1, #5
	adds r1, r1, r6
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x22]
	adds r4, #1
	asrs r1, r4, #2
	ldrh r0, [r3, #0xa]
	muls r0, r1, r0
	lsls r0, r0, #1
	adds r0, r5, r0
	ldrh r1, [r0]
	adds r0, r4, #0
	ands r0, r7
	lsls r0, r0, #3
	lsls r1, r1, #5
	adds r1, r1, r6
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x24]
	adds r4, #1
	asrs r1, r4, #2
	ldrh r0, [r3, #0xa]
	muls r0, r1, r0
	lsls r0, r0, #1
	adds r0, r5, r0
	ldrh r1, [r0]
	adds r0, r4, #0
	ands r0, r7
	lsls r0, r0, #3
	lsls r1, r1, #5
	adds r1, r1, r6
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x26]
	adds r4, #1
	asrs r1, r4, #2
	ldrh r0, [r3, #0xa]
	muls r0, r1, r0
	lsls r0, r0, #1
	adds r0, r5, r0
	ldrh r1, [r0]
	adds r0, r4, #0
	ands r0, r7
	lsls r0, r0, #3
	lsls r1, r1, #5
	adds r1, r1, r6
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x28]
	adds r4, #1
	asrs r1, r4, #2
	ldrh r0, [r3, #0xa]
	muls r0, r1, r0
	lsls r0, r0, #1
	adds r0, r5, r0
	ldrh r0, [r0]
	ands r4, r7
	lsls r1, r4, #3
	lsls r0, r0, #5
	adds r0, r0, r6
	adds r1, r1, r0
	ldrh r0, [r1]
	strh r0, [r2, #0x2a]
	ldrh r2, [r3, #8]
	str r2, [sp, #0xc]
	mov ip, r3
	cmp r2, #1
	bne _08015486
	bl _08015CB0
_08015486:
	ldr r0, [r3, #0x50]
	mov r1, sl
	adds r5, r0, r1
	ldr r2, _080155AC
	ldr r0, [r2, #4]
	ldr r1, [sp]
	adds r6, r0, r1
	ldrh r0, [r3, #0xa]
	ldr r2, [sp, #4]
	muls r0, r2, r0
	lsls r0, r0, #1
	adds r0, r5, r0
	ldr r2, _080155B4
	ldrh r0, [r0]
	lsls r0, r0, #5
	adds r0, r0, r6
	ldr r1, [sp, #8]
	adds r0, r1, r0
	ldrh r0, [r0]
	strh r0, [r2]
	mov r4, sb
	adds r4, #1
	asrs r1, r4, #2
	ldrh r0, [r3, #0xa]
	muls r0, r1, r0
	lsls r0, r0, #1
	adds r0, r5, r0
	ldrh r1, [r0]
	adds r0, r4, #0
	ands r0, r7
	lsls r0, r0, #3
	lsls r1, r1, #5
	adds r1, r1, r6
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #2]
	adds r4, #1
	asrs r1, r4, #2
	ldrh r0, [r3, #0xa]
	muls r0, r1, r0
	lsls r0, r0, #1
	adds r0, r5, r0
	ldrh r1, [r0]
	adds r0, r4, #0
	ands r0, r7
	lsls r0, r0, #3
	lsls r1, r1, #5
	adds r1, r1, r6
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #4]
	adds r4, #1
	asrs r1, r4, #2
	ldrh r0, [r3, #0xa]
	muls r0, r1, r0
	lsls r0, r0, #1
	adds r0, r5, r0
	ldrh r1, [r0]
	adds r0, r4, #0
	ands r0, r7
	lsls r0, r0, #3
	lsls r1, r1, #5
	adds r1, r1, r6
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #6]
	adds r4, #1
	asrs r1, r4, #2
	ldrh r0, [r3, #0xa]
	muls r0, r1, r0
	lsls r0, r0, #1
	adds r0, r5, r0
	ldrh r1, [r0]
	adds r0, r4, #0
	ands r0, r7
	lsls r0, r0, #3
	lsls r1, r1, #5
	adds r1, r1, r6
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #8]
	adds r4, #1
	asrs r1, r4, #2
	ldrh r0, [r3, #0xa]
	muls r0, r1, r0
	lsls r0, r0, #1
	adds r0, r5, r0
	ldrh r1, [r0]
	adds r0, r4, #0
	ands r0, r7
	lsls r0, r0, #3
	lsls r1, r1, #5
	adds r1, r1, r6
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0xa]
	adds r4, #1
	asrs r1, r4, #2
	ldrh r0, [r3, #0xa]
	muls r0, r1, r0
	lsls r0, r0, #1
	adds r0, r5, r0
	ldrh r1, [r0]
	adds r0, r4, #0
	ands r0, r7
	lsls r0, r0, #3
	lsls r1, r1, #5
	adds r1, r1, r6
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0xc]
	adds r4, #1
	asrs r1, r4, #2
	ldrh r0, [r3, #0xa]
	muls r0, r1, r0
	lsls r0, r0, #1
	adds r0, r5, r0
	ldrh r1, [r0]
	adds r0, r4, #0
	ands r0, r7
	lsls r0, r0, #3
	lsls r1, r1, #5
	adds r1, r1, r6
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0xe]
	adds r4, #1
	asrs r1, r4, #2
	ldrh r0, [r3, #0xa]
	muls r0, r1, r0
	lsls r0, r0, #1
	adds r0, r5, r0
	ldrh r1, [r0]
	adds r0, r4, #0
	ands r0, r7
	lsls r0, r0, #3
	lsls r1, r1, #5
	adds r1, r1, r6
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x10]
	adds r4, #1
	asrs r1, r4, #2
	ldrh r0, [r3, #0xa]
	b _080155B8
	.align 2, 0
_080155A8: .4byte gRoomHeader
_080155AC: .4byte gTileSetBG
_080155B0: .4byte gBG0HorizontalBuffer
_080155B4: .4byte gBG1HorizontalBuffer
_080155B8:
	muls r0, r1, r0
	lsls r0, r0, #1
	adds r0, r5, r0
	ldrh r1, [r0]
	adds r0, r4, #0
	ands r0, r7
	lsls r0, r0, #3
	lsls r1, r1, #5
	adds r1, r1, r6
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x12]
	adds r4, #1
	asrs r1, r4, #2
	ldrh r0, [r3, #0xa]
	muls r0, r1, r0
	lsls r0, r0, #1
	adds r0, r5, r0
	ldrh r1, [r0]
	adds r0, r4, #0
	ands r0, r7
	lsls r0, r0, #3
	lsls r1, r1, #5
	adds r1, r1, r6
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x14]
	adds r4, #1
	asrs r1, r4, #2
	ldrh r0, [r3, #0xa]
	muls r0, r1, r0
	lsls r0, r0, #1
	adds r0, r5, r0
	ldrh r1, [r0]
	movs r0, #3
	mov r8, r0
	adds r0, r4, #0
	ands r0, r7
	lsls r0, r0, #3
	lsls r1, r1, #5
	adds r1, r1, r6
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x16]
	adds r4, #1
	asrs r1, r4, #2
	ldrh r0, [r3, #0xa]
	muls r0, r1, r0
	lsls r0, r0, #1
	adds r0, r5, r0
	ldrh r1, [r0]
	adds r0, r4, #0
	ands r0, r7
	lsls r0, r0, #3
	lsls r1, r1, #5
	adds r1, r1, r6
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x18]
	adds r4, #1
	asrs r1, r4, #2
	ldrh r0, [r3, #0xa]
	muls r0, r1, r0
	lsls r0, r0, #1
	adds r0, r5, r0
	ldrh r1, [r0]
	adds r0, r4, #0
	ands r0, r7
	lsls r0, r0, #3
	lsls r1, r1, #5
	adds r1, r1, r6
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x1a]
	adds r4, #1
	asrs r1, r4, #2
	ldrh r0, [r3, #0xa]
	muls r0, r1, r0
	lsls r0, r0, #1
	adds r0, r5, r0
	ldrh r1, [r0]
	adds r0, r4, #0
	ands r0, r7
	lsls r0, r0, #3
	lsls r1, r1, #5
	adds r1, r1, r6
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x1c]
	adds r4, #1
	asrs r1, r4, #2
	ldrh r0, [r3, #0xa]
	muls r0, r1, r0
	lsls r0, r0, #1
	adds r0, r5, r0
	ldrh r1, [r0]
	adds r0, r4, #0
	ands r0, r7
	lsls r0, r0, #3
	lsls r1, r1, #5
	adds r1, r1, r6
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x1e]
	adds r4, #1
	asrs r1, r4, #2
	ldrh r0, [r3, #0xa]
	muls r0, r1, r0
	lsls r0, r0, #1
	adds r0, r5, r0
	ldrh r1, [r0]
	adds r0, r4, #0
	ands r0, r7
	lsls r0, r0, #3
	lsls r1, r1, #5
	adds r1, r1, r6
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x20]
	adds r4, #1
	asrs r1, r4, #2
	ldrh r0, [r3, #0xa]
	muls r0, r1, r0
	lsls r0, r0, #1
	adds r0, r5, r0
	ldrh r1, [r0]
	adds r0, r4, #0
	ands r0, r7
	lsls r0, r0, #3
	lsls r1, r1, #5
	adds r1, r1, r6
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x22]
	adds r4, #1
	asrs r1, r4, #2
	ldrh r0, [r3, #0xa]
	muls r0, r1, r0
	lsls r0, r0, #1
	adds r0, r5, r0
	ldrh r1, [r0]
	adds r0, r4, #0
	ands r0, r7
	lsls r0, r0, #3
	lsls r1, r1, #5
	adds r1, r1, r6
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x24]
	adds r4, #1
	asrs r1, r4, #2
	ldrh r0, [r3, #0xa]
	muls r0, r1, r0
	lsls r0, r0, #1
	adds r0, r5, r0
	ldrh r1, [r0]
	adds r0, r4, #0
	ands r0, r7
	lsls r0, r0, #3
	lsls r1, r1, #5
	adds r1, r1, r6
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x26]
	adds r4, #1
	asrs r1, r4, #2
	ldrh r0, [r3, #0xa]
	muls r0, r1, r0
	lsls r0, r0, #1
	adds r0, r5, r0
	ldrh r1, [r0]
	adds r0, r4, #0
	ands r0, r7
	lsls r0, r0, #3
	lsls r1, r1, #5
	adds r1, r1, r6
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x28]
	adds r4, #1
	asrs r1, r4, #2
	ldrh r0, [r3, #0xa]
	muls r0, r1, r0
	lsls r0, r0, #1
	adds r0, r5, r0
	ldrh r0, [r0]
	ands r4, r7
	lsls r1, r4, #3
	lsls r0, r0, #5
	adds r0, r0, r6
	adds r1, r1, r0
	ldrh r0, [r1]
	strh r0, [r2, #0x2a]
	ldr r1, [sp, #0xc]
	str r1, [sp, #0x10]
	mov r4, sb
	adds r4, #1
	cmp r1, #2
	bne _08015748
	b _08015CB0
_08015748:
	mov r2, sl
	str r2, [sp, #0x14]
	ldr r0, [r3, #0x54]
	adds r5, r0, r2
	ldr r0, [sp]
	str r0, [sp, #0x18]
	ldr r1, _08015B3C
	ldr r0, [r1, #8]
	ldr r2, [sp, #0x18]
	adds r6, r0, r2
	ldr r0, [sp, #4]
	mov sl, r0
	ldrh r0, [r3, #0xa]
	mov r1, sl
	muls r1, r0, r1
	adds r0, r1, #0
	lsls r0, r0, #1
	adds r0, r5, r0
	ldr r2, _08015B40
	ldrh r0, [r0]
	ldr r1, [sp, #8]
	str r1, [sp, #0x1c]
	lsls r0, r0, #5
	adds r0, r0, r6
	adds r0, r1, r0
	ldrh r0, [r0]
	strh r0, [r2]
	asrs r1, r4, #2
	ldrh r0, [r3, #0xa]
	muls r0, r1, r0
	lsls r0, r0, #1
	adds r0, r5, r0
	ldrh r1, [r0]
	adds r0, r4, #0
	ands r0, r7
	lsls r0, r0, #3
	lsls r1, r1, #5
	adds r1, r1, r6
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #2]
	adds r4, #1
	asrs r1, r4, #2
	ldrh r0, [r3, #0xa]
	muls r0, r1, r0
	lsls r0, r0, #1
	adds r0, r5, r0
	ldrh r1, [r0]
	adds r0, r4, #0
	ands r0, r7
	lsls r0, r0, #3
	lsls r1, r1, #5
	adds r1, r1, r6
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #4]
	adds r4, #1
	asrs r1, r4, #2
	ldrh r0, [r3, #0xa]
	muls r0, r1, r0
	lsls r0, r0, #1
	adds r0, r5, r0
	ldrh r1, [r0]
	adds r0, r4, #0
	ands r0, r7
	lsls r0, r0, #3
	lsls r1, r1, #5
	adds r1, r1, r6
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #6]
	adds r4, #1
	asrs r1, r4, #2
	ldrh r0, [r3, #0xa]
	muls r0, r1, r0
	lsls r0, r0, #1
	adds r0, r5, r0
	ldrh r1, [r0]
	adds r0, r4, #0
	ands r0, r7
	lsls r0, r0, #3
	lsls r1, r1, #5
	adds r1, r1, r6
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #8]
	adds r4, #1
	asrs r1, r4, #2
	ldrh r0, [r3, #0xa]
	muls r0, r1, r0
	lsls r0, r0, #1
	adds r0, r5, r0
	ldrh r1, [r0]
	adds r0, r4, #0
	ands r0, r7
	lsls r0, r0, #3
	lsls r1, r1, #5
	adds r1, r1, r6
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0xa]
	adds r4, #1
	asrs r1, r4, #2
	ldrh r0, [r3, #0xa]
	muls r0, r1, r0
	lsls r0, r0, #1
	adds r0, r5, r0
	ldrh r1, [r0]
	adds r0, r4, #0
	ands r0, r7
	lsls r0, r0, #3
	lsls r1, r1, #5
	adds r1, r1, r6
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0xc]
	adds r4, #1
	asrs r1, r4, #2
	ldrh r0, [r3, #0xa]
	muls r0, r1, r0
	lsls r0, r0, #1
	adds r0, r5, r0
	ldrh r1, [r0]
	adds r0, r4, #0
	ands r0, r7
	lsls r0, r0, #3
	lsls r1, r1, #5
	adds r1, r1, r6
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0xe]
	adds r4, #1
	asrs r1, r4, #2
	ldrh r0, [r3, #0xa]
	muls r0, r1, r0
	lsls r0, r0, #1
	adds r0, r5, r0
	ldrh r1, [r0]
	adds r0, r4, #0
	ands r0, r7
	lsls r0, r0, #3
	lsls r1, r1, #5
	adds r1, r1, r6
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x10]
	adds r4, #1
	asrs r1, r4, #2
	ldrh r0, [r3, #0xa]
	muls r0, r1, r0
	lsls r0, r0, #1
	adds r0, r5, r0
	ldrh r1, [r0]
	adds r0, r4, #0
	ands r0, r7
	lsls r0, r0, #3
	lsls r1, r1, #5
	adds r1, r1, r6
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x12]
	adds r4, #1
	asrs r1, r4, #2
	ldrh r0, [r3, #0xa]
	muls r0, r1, r0
	lsls r0, r0, #1
	adds r0, r5, r0
	ldrh r1, [r0]
	adds r0, r4, #0
	ands r0, r7
	lsls r0, r0, #3
	lsls r1, r1, #5
	adds r1, r1, r6
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x14]
	adds r4, #1
	asrs r1, r4, #2
	ldrh r0, [r3, #0xa]
	muls r0, r1, r0
	lsls r0, r0, #1
	adds r0, r5, r0
	ldrh r1, [r0]
	adds r0, r4, #0
	ands r0, r7
	lsls r0, r0, #3
	lsls r1, r1, #5
	adds r1, r1, r6
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x16]
	adds r4, #1
	asrs r1, r4, #2
	ldrh r0, [r3, #0xa]
	muls r0, r1, r0
	lsls r0, r0, #1
	adds r0, r5, r0
	ldrh r1, [r0]
	adds r0, r4, #0
	ands r0, r7
	lsls r0, r0, #3
	lsls r1, r1, #5
	adds r1, r1, r6
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x18]
	adds r4, #1
	asrs r1, r4, #2
	ldrh r0, [r3, #0xa]
	muls r0, r1, r0
	lsls r0, r0, #1
	adds r0, r5, r0
	ldrh r1, [r0]
	adds r0, r4, #0
	ands r0, r7
	lsls r0, r0, #3
	lsls r1, r1, #5
	adds r1, r1, r6
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x1a]
	adds r4, #1
	asrs r1, r4, #2
	ldrh r0, [r3, #0xa]
	muls r0, r1, r0
	lsls r0, r0, #1
	adds r0, r5, r0
	ldrh r1, [r0]
	adds r0, r4, #0
	ands r0, r7
	lsls r0, r0, #3
	lsls r1, r1, #5
	adds r1, r1, r6
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x1c]
	adds r4, #1
	asrs r1, r4, #2
	ldrh r0, [r3, #0xa]
	muls r0, r1, r0
	lsls r0, r0, #1
	adds r0, r5, r0
	ldrh r1, [r0]
	adds r0, r4, #0
	ands r0, r7
	lsls r0, r0, #3
	lsls r1, r1, #5
	adds r1, r1, r6
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x1e]
	adds r4, #1
	asrs r1, r4, #2
	ldrh r0, [r3, #0xa]
	muls r0, r1, r0
	lsls r0, r0, #1
	adds r0, r5, r0
	ldrh r1, [r0]
	adds r0, r4, #0
	mov r3, r8
	ands r0, r3
	lsls r0, r0, #3
	lsls r1, r1, #5
	adds r1, r1, r6
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x20]
	adds r4, #1
	asrs r1, r4, #2
	mov r7, ip
	ldrh r0, [r7, #0xa]
	muls r0, r1, r0
	lsls r0, r0, #1
	adds r0, r5, r0
	ldrh r1, [r0]
	adds r0, r4, #0
	ands r0, r3
	lsls r0, r0, #3
	lsls r1, r1, #5
	adds r1, r1, r6
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x22]
	adds r4, #1
	asrs r1, r4, #2
	ldrh r0, [r7, #0xa]
	muls r0, r1, r0
	lsls r0, r0, #1
	adds r0, r5, r0
	ldrh r1, [r0]
	adds r0, r4, #0
	ands r0, r3
	lsls r0, r0, #3
	lsls r1, r1, #5
	adds r1, r1, r6
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x24]
	adds r4, #1
	asrs r1, r4, #2
	ldrh r0, [r7, #0xa]
	muls r0, r1, r0
	lsls r0, r0, #1
	adds r0, r5, r0
	ldrh r1, [r0]
	adds r0, r4, #0
	ands r0, r3
	lsls r0, r0, #3
	lsls r1, r1, #5
	adds r1, r1, r6
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x26]
	adds r4, #1
	asrs r1, r4, #2
	ldrh r0, [r7, #0xa]
	muls r0, r1, r0
	lsls r0, r0, #1
	adds r0, r5, r0
	ldrh r1, [r0]
	adds r0, r4, #0
	ands r0, r3
	lsls r0, r0, #3
	lsls r1, r1, #5
	adds r1, r1, r6
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x28]
	adds r4, #1
	asrs r1, r4, #2
	ldrh r0, [r7, #0xa]
	muls r0, r1, r0
	lsls r0, r0, #1
	adds r0, r5, r0
	ldrh r0, [r0]
	ands r4, r3
	lsls r1, r4, #3
	lsls r0, r0, #5
	adds r0, r0, r6
	adds r1, r1, r0
	ldrh r0, [r1]
	strh r0, [r2, #0x2a]
	ldrh r1, [r7, #0xa]
	ldr r0, [sp, #0x10]
	cmp r0, #3
	bne _080159FE
	b _08015CB0
_080159FE:
	adds r2, r7, #0
	ldr r0, [r2, #0x58]
	ldr r3, [sp, #0x14]
	adds r5, r0, r3
	ldr r7, _08015B3C
	ldr r0, [r7, #0xc]
	ldr r2, [sp, #0x18]
	adds r6, r0, r2
	mov r0, sl
	muls r0, r1, r0
	lsls r0, r0, #1
	adds r0, r5, r0
	ldr r3, _08015B44
	ldrh r0, [r0]
	lsls r0, r0, #5
	adds r0, r0, r6
	ldr r7, [sp, #0x1c]
	adds r0, r7, r0
	ldrh r0, [r0]
	strh r0, [r3]
	mov r4, sb
	adds r4, #1
	asrs r1, r4, #2
	mov r2, ip
	ldrh r0, [r2, #0xa]
	muls r0, r1, r0
	lsls r0, r0, #1
	adds r0, r5, r0
	ldrh r1, [r0]
	movs r2, #3
	adds r0, r4, #0
	ands r0, r2
	lsls r0, r0, #3
	lsls r1, r1, #5
	adds r1, r1, r6
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r3, #2]
	adds r4, #1
	asrs r1, r4, #2
	mov r7, ip
	ldrh r0, [r7, #0xa]
	muls r0, r1, r0
	lsls r0, r0, #1
	adds r0, r5, r0
	ldrh r1, [r0]
	adds r0, r4, #0
	ands r0, r2
	lsls r0, r0, #3
	lsls r1, r1, #5
	adds r1, r1, r6
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r3, #4]
	adds r4, #1
	asrs r1, r4, #2
	ldrh r0, [r7, #0xa]
	muls r0, r1, r0
	lsls r0, r0, #1
	adds r0, r5, r0
	ldrh r1, [r0]
	adds r0, r4, #0
	ands r0, r2
	lsls r0, r0, #3
	lsls r1, r1, #5
	adds r1, r1, r6
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r3, #6]
	adds r4, #1
	asrs r1, r4, #2
	ldrh r0, [r7, #0xa]
	muls r0, r1, r0
	lsls r0, r0, #1
	adds r0, r5, r0
	ldrh r1, [r0]
	adds r0, r4, #0
	ands r0, r2
	lsls r0, r0, #3
	lsls r1, r1, #5
	adds r1, r1, r6
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r3, #8]
	adds r4, #1
	asrs r1, r4, #2
	ldrh r0, [r7, #0xa]
	muls r0, r1, r0
	lsls r0, r0, #1
	adds r0, r5, r0
	ldrh r1, [r0]
	adds r0, r4, #0
	ands r0, r2
	lsls r0, r0, #3
	lsls r1, r1, #5
	adds r1, r1, r6
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r3, #0xa]
	adds r4, #1
	asrs r1, r4, #2
	ldrh r0, [r7, #0xa]
	muls r0, r1, r0
	lsls r0, r0, #1
	adds r0, r5, r0
	ldrh r1, [r0]
	adds r0, r4, #0
	ands r0, r2
	lsls r0, r0, #3
	lsls r1, r1, #5
	adds r1, r1, r6
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r3, #0xc]
	adds r4, #1
	asrs r1, r4, #2
	ldrh r0, [r7, #0xa]
	muls r0, r1, r0
	lsls r0, r0, #1
	adds r0, r5, r0
	ldrh r1, [r0]
	adds r0, r4, #0
	ands r0, r2
	lsls r0, r0, #3
	lsls r1, r1, #5
	adds r1, r1, r6
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r3, #0xe]
	adds r4, #1
	asrs r1, r4, #2
	ldrh r0, [r7, #0xa]
	muls r0, r1, r0
	lsls r0, r0, #1
	adds r0, r5, r0
	ldrh r1, [r0]
	adds r0, r4, #0
	ands r0, r2
	lsls r0, r0, #3
	lsls r1, r1, #5
	adds r1, r1, r6
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r3, #0x10]
	adds r4, #1
	asrs r1, r4, #2
	ldrh r0, [r7, #0xa]
	muls r0, r1, r0
	lsls r0, r0, #1
	adds r0, r5, r0
	ldrh r1, [r0]
	adds r0, r4, #0
	ands r0, r2
	lsls r0, r0, #3
	lsls r1, r1, #5
	adds r1, r1, r6
	adds r0, r0, r1
	ldrh r0, [r0]
	b _08015B48
	.align 2, 0
_08015B3C: .4byte gTileSetBG
_08015B40: .4byte gBG2HorizontalBuffer
_08015B44: .4byte gBG3HorizontalBuffer
_08015B48:
	strh r0, [r3, #0x12]
	adds r4, #1
	asrs r1, r4, #2
	ldrh r0, [r7, #0xa]
	muls r0, r1, r0
	lsls r0, r0, #1
	adds r0, r5, r0
	ldrh r1, [r0]
	adds r0, r4, #0
	ands r0, r2
	lsls r0, r0, #3
	lsls r1, r1, #5
	adds r1, r1, r6
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r3, #0x14]
	adds r4, #1
	asrs r1, r4, #2
	ldrh r0, [r7, #0xa]
	muls r0, r1, r0
	lsls r0, r0, #1
	adds r0, r5, r0
	ldrh r1, [r0]
	adds r0, r4, #0
	ands r0, r2
	lsls r0, r0, #3
	lsls r1, r1, #5
	adds r1, r1, r6
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r3, #0x16]
	adds r4, #1
	asrs r1, r4, #2
	ldrh r0, [r7, #0xa]
	muls r0, r1, r0
	lsls r0, r0, #1
	adds r0, r5, r0
	ldrh r1, [r0]
	adds r0, r4, #0
	ands r0, r2
	lsls r0, r0, #3
	lsls r1, r1, #5
	adds r1, r1, r6
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r3, #0x18]
	adds r4, #1
	asrs r1, r4, #2
	ldrh r0, [r7, #0xa]
	muls r0, r1, r0
	lsls r0, r0, #1
	adds r0, r5, r0
	ldrh r1, [r0]
	adds r0, r4, #0
	ands r0, r2
	lsls r0, r0, #3
	lsls r1, r1, #5
	adds r1, r1, r6
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r3, #0x1a]
	adds r4, #1
	asrs r1, r4, #2
	ldrh r0, [r7, #0xa]
	muls r0, r1, r0
	lsls r0, r0, #1
	adds r0, r5, r0
	ldrh r1, [r0]
	adds r0, r4, #0
	ands r0, r2
	lsls r0, r0, #3
	lsls r1, r1, #5
	adds r1, r1, r6
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r3, #0x1c]
	adds r4, #1
	asrs r1, r4, #2
	ldrh r0, [r7, #0xa]
	muls r0, r1, r0
	lsls r0, r0, #1
	adds r0, r5, r0
	ldrh r1, [r0]
	adds r0, r4, #0
	ands r0, r2
	lsls r0, r0, #3
	lsls r1, r1, #5
	adds r1, r1, r6
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r3, #0x1e]
	adds r4, #1
	asrs r1, r4, #2
	ldrh r0, [r7, #0xa]
	muls r0, r1, r0
	lsls r0, r0, #1
	adds r0, r5, r0
	ldrh r1, [r0]
	adds r0, r4, #0
	ands r0, r2
	lsls r0, r0, #3
	lsls r1, r1, #5
	adds r1, r1, r6
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r3, #0x20]
	adds r4, #1
	asrs r1, r4, #2
	ldrh r0, [r7, #0xa]
	muls r0, r1, r0
	lsls r0, r0, #1
	adds r0, r5, r0
	ldrh r1, [r0]
	adds r0, r4, #0
	ands r0, r2
	lsls r0, r0, #3
	lsls r1, r1, #5
	adds r1, r1, r6
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r3, #0x22]
	adds r4, #1
	asrs r1, r4, #2
	ldrh r0, [r7, #0xa]
	muls r0, r1, r0
	lsls r0, r0, #1
	adds r0, r5, r0
	ldrh r1, [r0]
	adds r0, r4, #0
	ands r0, r2
	lsls r0, r0, #3
	lsls r1, r1, #5
	adds r1, r1, r6
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r3, #0x24]
	adds r4, #1
	asrs r1, r4, #2
	ldrh r0, [r7, #0xa]
	muls r0, r1, r0
	lsls r0, r0, #1
	adds r0, r5, r0
	ldrh r1, [r0]
	adds r0, r4, #0
	ands r0, r2
	lsls r0, r0, #3
	lsls r1, r1, #5
	adds r1, r1, r6
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r3, #0x26]
	adds r4, #1
	asrs r1, r4, #2
	ldrh r0, [r7, #0xa]
	muls r0, r1, r0
	lsls r0, r0, #1
	adds r0, r5, r0
	ldrh r1, [r0]
	adds r0, r4, #0
	ands r0, r2
	lsls r0, r0, #3
	lsls r1, r1, #5
	adds r1, r1, r6
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r3, #0x28]
	adds r4, #1
	asrs r1, r4, #2
	ldrh r0, [r7, #0xa]
	muls r0, r1, r0
	lsls r0, r0, #1
	adds r0, r5, r0
	ldrh r0, [r0]
	ands r4, r2
	lsls r1, r4, #3
	lsls r0, r0, #5
	adds r0, r0, r6
	adds r1, r1, r0
	ldrh r0, [r1]
	strh r0, [r3, #0x2a]
_08015CB0:
	add sp, #0x20
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	.thumb
	.global sub_08015CC0
sub_08015CC0: @ 0x08015CC0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r2, r0, #0
	ldr r1, _08015CE8
	movs r0, #1
	strb r0, [r1]
	ldr r1, _08015CEC
	movs r0, #0
	strb r0, [r1]
	cmp r2, #1
	beq _08015D90
	cmp r2, #1
	bgt _08015CF0
	cmp r2, #0
	beq _08015CFE
	b _08015F48
	.align 2, 0
_08015CE8: .4byte byte_200146C
_08015CEC: .4byte gBGControlActions
_08015CF0:
	cmp r2, #2
	bne _08015CF6
	b _08015E20
_08015CF6:
	cmp r2, #3
	bne _08015CFC
	b _08015EBC
_08015CFC:
	b _08015F48
_08015CFE:
	ldr r2, _08015D18
	ldrb r0, [r2, #0x14]
	cmp r0, #0
	bne _08015D20
	ldr r1, _08015D1C
	ldr r0, [r2, #0x38]
	str r0, [r1]
	cmp r0, #0
	bne _08015D2E
	.2byte 0xEE00, 0xEE00
	b _08015D2E
	.align 2, 0
_08015D18: .4byte gRoomHeader
_08015D1C: .4byte 0x02002080
_08015D20:
	ldr r1, _08015D70
	ldr r0, [r2, #0x3c]
	str r0, [r1]
	cmp r0, #0
	bne _08015D2E
	.2byte 0xEE00, 0xEE00
_08015D2E:
	ldr r2, _08015D74
	ldr r0, _08015D70
	ldr r0, [r0]
	ldrh r1, [r0, #2]
	lsls r0, r1, #0x10
	orrs r0, r1
	str r0, [r2]
	ldr r1, _08015D78
	movs r2, #0xa0
	lsls r2, r2, #1
	bl DmaFill32
	ldr r0, _08015D7C
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r1, _08015D80
	ldr r0, _08015D84
	str r0, [r1]
	ldr r2, _08015D88
	ldr r0, _08015D8C
	ldrh r1, [r2]
	ldrh r0, [r0]
	ands r0, r1
	strh r0, [r2]
	ldrh r0, [r2]
	movs r1, #0x41
	orrs r0, r1
	strh r0, [r2]
	subs r2, #0x48
	b _08015E8C
	.align 2, 0
_08015D70: .4byte 0x02002080
_08015D74: .4byte 0x02002088
_08015D78: .4byte 0x0600E000
_08015D7C: .4byte 0x04000010
_08015D80: .4byte 0x02002084
_08015D84: .4byte 0x0600E380
_08015D88: .4byte 0x04000050
_08015D8C: .4byte gColorSpecEffectsSel
_08015D90:
	ldr r2, _08015DA8
	ldrb r0, [r2, #0x15]
	cmp r0, #0
	bne _08015DB0
	ldr r1, _08015DAC
	ldr r0, [r2, #0x38]
	str r0, [r1]
	cmp r0, #0
	bne _08015DBE
	.2byte 0xEE00, 0xEE00
	b _08015DBE
	.align 2, 0
_08015DA8: .4byte gRoomHeader
_08015DAC: .4byte 0x02002080
_08015DB0:
	ldr r1, _08015E00
	ldr r0, [r2, #0x3c]
	str r0, [r1]
	cmp r0, #0
	bne _08015DBE
	.2byte 0xEE00, 0xEE00
_08015DBE:
	ldr r2, _08015E04
	ldr r0, _08015E00
	ldr r0, [r0]
	ldrh r1, [r0, #2]
	lsls r0, r1, #0x10
	orrs r0, r1
	str r0, [r2]
	ldr r1, _08015E08
	movs r2, #0xa0
	lsls r2, r2, #1
	bl DmaFill32
	ldr r0, _08015E0C
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r1, _08015E10
	ldr r0, _08015E14
	str r0, [r1]
	ldr r2, _08015E18
	ldr r0, _08015E1C
	ldrh r1, [r2]
	ldrh r0, [r0]
	ands r0, r1
	strh r0, [r2]
	ldrh r0, [r2]
	movs r1, #0x42
	orrs r0, r1
	strh r0, [r2]
	subs r2, #0x46
	b _08015E8C
	.align 2, 0
_08015E00: .4byte 0x02002080
_08015E04: .4byte 0x02002088
_08015E08: .4byte 0x0600E800
_08015E0C: .4byte 0x04000014
_08015E10: .4byte 0x02002084
_08015E14: .4byte 0x0600EB80
_08015E18: .4byte 0x04000050
_08015E1C: .4byte gColorSpecEffectsSel
_08015E20:
	ldr r2, _08015E38
	ldrb r0, [r2, #0x16]
	cmp r0, #0
	bne _08015E40
	ldr r1, _08015E3C
	ldr r0, [r2, #0x38]
	str r0, [r1]
	cmp r0, #0
	bne _08015E4E
	.2byte 0xEE00, 0xEE00
	b _08015E4E
	.align 2, 0
_08015E38: .4byte gRoomHeader
_08015E3C: .4byte 0x02002080
_08015E40:
	ldr r1, _08015E98
	ldr r0, [r2, #0x3c]
	str r0, [r1]
	cmp r0, #0
	bne _08015E4E
	.2byte 0xEE00, 0xEE00
_08015E4E:
	ldr r2, _08015E9C
	ldr r0, _08015E98
	ldr r0, [r0]
	ldrh r1, [r0, #2]
	lsls r0, r1, #0x10
	orrs r0, r1
	str r0, [r2]
	ldr r1, _08015EA0
	movs r2, #0xa0
	lsls r2, r2, #1
	bl DmaFill32
	ldr r0, _08015EA4
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r1, _08015EA8
	ldr r0, _08015EAC
	str r0, [r1]
	ldr r2, _08015EB0
	ldr r0, _08015EB4
	ldrh r1, [r2]
	ldrh r0, [r0]
	ands r0, r1
	strh r0, [r2]
	ldrh r0, [r2]
	movs r1, #0x44
	orrs r0, r1
	strh r0, [r2]
	subs r2, #0x44
_08015E8C:
	ldrh r1, [r2]
	ldr r0, _08015EB8
	ands r0, r1
	strh r0, [r2]
	b _08015F4E
	.align 2, 0
_08015E98: .4byte 0x02002080
_08015E9C: .4byte 0x02002088
_08015EA0: .4byte 0x0600F000
_08015EA4: .4byte 0x04000018
_08015EA8: .4byte 0x02002084
_08015EAC: .4byte 0x0600F380
_08015EB0: .4byte 0x04000050
_08015EB4: .4byte gColorSpecEffectsSel
_08015EB8: .4byte 0x0000FFFC
_08015EBC:
	ldr r2, _08015ED4
	ldrb r0, [r2, #0x17]
	cmp r0, #0
	bne _08015EDC
	ldr r1, _08015ED8
	ldr r0, [r2, #0x38]
	str r0, [r1]
	cmp r0, #0
	bne _08015EEA
	.2byte 0xEE00, 0xEE00
	b _08015EEA
	.align 2, 0
_08015ED4: .4byte gRoomHeader
_08015ED8: .4byte 0x02002080
_08015EDC:
	ldr r1, _08015F28
	ldr r0, [r2, #0x3c]
	str r0, [r1]
	cmp r0, #0
	bne _08015EEA
	.2byte 0xEE00, 0xEE00
_08015EEA:
	ldr r2, _08015F2C
	ldr r0, _08015F28
	ldr r0, [r0]
	ldrh r1, [r0, #2]
	lsls r0, r1, #0x10
	orrs r0, r1
	str r0, [r2]
	ldr r1, _08015F30
	movs r2, #0xa0
	lsls r2, r2, #1
	bl DmaFill32
	ldr r0, _08015F34
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r1, _08015F38
	ldr r0, _08015F3C
	str r0, [r1]
	ldr r2, _08015F40
	ldr r0, _08015F44
	ldrh r1, [r2]
	ldrh r0, [r0]
	ands r0, r1
	strh r0, [r2]
	ldrh r0, [r2]
	movs r1, #0x48
	orrs r0, r1
	strh r0, [r2]
	b _08015F4E
	.align 2, 0
_08015F28: .4byte 0x02002080
_08015F2C: .4byte 0x02002088
_08015F30: .4byte 0x0600F800
_08015F34: .4byte 0x0400001C
_08015F38: .4byte 0x02002084
_08015F3C: .4byte 0x0600FB80
_08015F40: .4byte 0x04000050
_08015F44: .4byte gColorSpecEffectsSel
_08015F48:
	.2byte 0xEE00, 0xEE00
	b _08015FAE
_08015F4E:
	movs r3, #0
	ldr r2, _08015FBC
	ldr r0, [r2]
	ldr r1, _08015FC0
	mov ip, r1
	ldr r1, _08015FC4
	mov r8, r1
	ldr r1, _08015FC8
	mov sb, r1
	ldr r1, _08015FCC
	mov sl, r1
	ldrb r0, [r0, #1]
	cmp r3, r0
	bge _08015F98
	ldr r7, _08015FD0
	adds r6, r2, #0
	movs r5, #4
	movs r4, #2
_08015F72:
	ldr r1, [r7]
	lsls r0, r3, #6
	adds r1, r0, r1
	ldr r2, [r6]
	adds r0, r2, r0
	ldrh r0, [r0, #4]
	strh r0, [r1]
	adds r0, r2, r4
	ldrh r0, [r0, #4]
	strh r0, [r1, #2]
	adds r0, r2, r5
	ldrh r0, [r0, #4]
	strh r0, [r1, #4]
	adds r5, #0x40
	adds r4, #0x40
	adds r3, #1
	ldrb r2, [r2, #1]
	cmp r3, r2
	blt _08015F72
_08015F98:
	movs r0, #3
	mov r1, ip
	str r0, [r1]
	movs r0, #0x1b
	mov r1, r8
	str r0, [r1]
	movs r0, #1
	mov r1, sb
	str r0, [r1]
	mov r1, sl
	str r0, [r1]
_08015FAE:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08015FBC: .4byte 0x02002080
_08015FC0: .4byte 0x02002074
_08015FC4: .4byte 0x02002078
_08015FC8: .4byte 0x0200207C
_08015FCC: .4byte dword_2001470
_08015FD0: .4byte 0x02002084

    .thumb
    .global sub_8015FD4
sub_8015FD4: @ 0x08015FD4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r3, #0
	ldr r2, _08016068
	ldr r0, [r2]
	ldr r1, _0801606C
	mov ip, r1
	ldr r1, _08016070
	mov sl, r1
	ldrb r0, [r0, #1]
	cmp r3, r0
	bge _0801603C
	mov sb, r2
	ldr r2, _08016074
	mov r8, r2
	movs r7, #0x3a
	movs r6, #0x38
	movs r5, #0x36
	movs r4, #0x34
_08016000:
	mov r0, ip
	ldr r1, [r0]
	mov r0, r8
	ldr r2, [r0]
	lsls r1, r1, #1
	lsls r0, r3, #6
	adds r0, r0, r2
	adds r1, r1, r0
	mov r0, sb
	ldr r2, [r0]
	adds r0, r2, r4
	ldrh r0, [r0, #4]
	strh r0, [r1]
	adds r0, r2, r5
	ldrh r0, [r0, #4]
	strh r0, [r1, #2]
	adds r0, r2, r6
	ldrh r0, [r0, #4]
	strh r0, [r1, #4]
	adds r0, r2, r7
	ldrh r0, [r0, #4]
	strh r0, [r1, #6]
	adds r7, #0x40
	adds r6, #0x40
	adds r5, #0x40
	adds r4, #0x40
	adds r3, #1
	ldrb r2, [r2, #1]
	cmp r3, r2
	blt _08016000
_0801603C:
	mov r1, ip
	ldr r0, [r1]
	mov r2, sl
	ldr r1, [r2]
	adds r0, r0, r1
	mov r1, ip
	str r0, [r1]
	ldr r2, _08016078
	ldr r1, [r2]
	cmp r0, r1
	bne _08016058
	ldr r1, _0801607C
	movs r0, #0
	str r0, [r1]
_08016058:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08016068: .4byte 0x02002080
_0801606C: .4byte 0x02002074
_08016070: .4byte 0x0200207C
_08016074: .4byte 0x02002084
_08016078: .4byte 0x02002078
_0801607C: .4byte dword_2001470

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

