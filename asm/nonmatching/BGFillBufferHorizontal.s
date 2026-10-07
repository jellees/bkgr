    .thumb
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
