
    .syntax unified
    
    .text

    .thumb
	.global CameraUpdate
CameraUpdate: @ 0x0800B5E8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	mov r8, r1
	mov sl, r2
	ldr r6, _0800B650
	ldr r5, [r6]
	ldr r1, _0800B654
	mov sb, r1
	ldr r7, [r1]
	str r7, [sp]
	ldr r4, _0800B658
	mov r1, r8
	lsls r2, r1, #0x10
	ldr r1, [r0]
	adds r1, r1, r2
	str r1, [r4]
	ldr r4, _0800B65C
	ldr r1, _0800B660
	ldrh r2, [r1]
	lsls r2, r2, #0x10
	ldr r1, [r0, #4]
	ldr r0, [r0, #8]
	adds r1, r1, r0
	mov r7, sl
	lsls r0, r7, #0x10
	adds r1, r1, r0
	lsls r0, r3, #0x10
	adds r1, r1, r0
	subs r2, r2, r1
	str r2, [r4]
	adds r0, r3, #0
	bl CameraMove
	ldr r0, [r6]
	subs r5, r5, r0
	movs r6, #1
	cmp r5, #0
	bge _0800B63E
	movs r6, #2
_0800B63E:
	mov r1, sb
	ldr r0, [r1]
	ldr r7, [sp]
	subs r0, r7, r0
	cmp r0, #0
	bge _0800B664
	movs r0, #8
	b _0800B666
	.align 2, 0
_0800B650: .4byte 0x0300330C
_0800B654: .4byte 0x03003310
_0800B658: .4byte 0x03003314
_0800B65C: .4byte 0x03003318
_0800B660: .4byte gMapPixelSizeY
_0800B664:
	movs r0, #4
_0800B666:
	orrs r6, r0
	ldr r2, _0800B6C4
	ldr r0, _0800B6C8
	ldr r5, _0800B6CC
	ldr r0, [r0]
	ldr r1, [r5]
	subs r0, r0, r1
	asrs r0, r0, #0x10
	adds r0, #0x78
	mov r1, r8
	subs r4, r0, r1
	strh r4, [r2, #6]
	ldr r0, _0800B6D0
	ldr r1, _0800B6D4
	ldr r0, [r0]
	ldr r1, [r1]
	subs r0, r0, r1
	asrs r0, r0, #0x10
	adds r0, #0x50
	mov r7, sl
	adds r3, r0, r7
	strb r3, [r2, #8]
	ldr r2, _0800B6D8
	strh r4, [r2, #6]
	ldr r0, _0800B6DC
	ldr r1, _0800B6E0
	ldr r0, [r0, #4]
	ldr r1, [r1, #4]
	subs r0, r0, r1
	asrs r0, r0, #0x10
	adds r0, r3, r0
	strb r0, [r2, #8]
	ldr r0, _0800B6E4
	ldrb r0, [r0]
	cmp r0, #0
	beq _0800B6B4
	ldr r0, _0800B6E8
	strh r4, [r0, #6]
	strb r3, [r0, #8]
_0800B6B4:
	movs r0, #1
	ands r0, r6
	cmp r0, #0
	beq _0800B6EC
	ldr r0, [r5]
	bl UpdateMapLeft
	b _0800B6FA
	.align 2, 0
_0800B6C4: .4byte gPlayerSprite
_0800B6C8: .4byte 0x03003314
_0800B6CC: .4byte 0x0300330C
_0800B6D0: .4byte 0x03003318
_0800B6D4: .4byte 0x03003310
_0800B6D8: .4byte gPlayerShadowSprite
_0800B6DC: .4byte gPlayerPos
_0800B6E0: .4byte gPlayerShadowPos
_0800B6E4: .4byte 0x020010AF
_0800B6E8: .4byte 0x02000FAC
_0800B6EC:
	movs r0, #2
	ands r0, r6
	cmp r0, #0
	beq _0800B6FA
	ldr r0, [r5]
	bl UpdateMapRight
_0800B6FA:
	movs r0, #4
	ands r0, r6
	cmp r0, #0
	beq _0800B710
	ldr r0, _0800B70C
	ldr r0, [r0]
	bl UpdateMapUp
	b _0800B720
	.align 2, 0
_0800B70C: .4byte 0x03003310
_0800B710:
	movs r0, #8
	ands r6, r0
	cmp r6, #0
	beq _0800B720
	ldr r0, _0800B730
	ldr r0, [r0]
	bl UpdateMapDown
_0800B720:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800B730: .4byte 0x03003310

    .thumb
CameraMove: @ 0x0800B734
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	ldr r7, _0800B764
	movs r0, #0
	strb r0, [r7]
	ldr r6, _0800B768
	ldr r1, [r6]
	ldr r5, _0800B76C
	ldr r0, [r5]
	subs r4, r1, r0
	adds r0, r4, #0
	bl Abs
	adds r1, r0, #0
	ldr r0, _0800B770
	cmp r1, r0
	bgt _0800B774
	ldr r0, [r5]
	str r0, [r6]
	movs r1, #0
	b _0800B780
	.align 2, 0
_0800B764: .4byte 0x02001118
_0800B768: .4byte 0x0300330C
_0800B76C: .4byte 0x03003314
_0800B770: .4byte 0x0000FFFF
_0800B774:
	adds r0, r4, #0
	bl CameraGetVelocity
	adds r1, r0, #0
	movs r0, #1
	strb r0, [r7]
_0800B780:
	ldr r3, _0800B79C
	ldr r0, [r3]
	adds r0, r0, r1
	str r0, [r3]
	asrs r2, r0, #0x10
	adds r1, r2, #0
	adds r1, #0x78
	ldr r0, _0800B7A0
	ldrh r0, [r0]
	cmp r1, r0
	blt _0800B7A4
	subs r0, #0x78
	lsls r0, r0, #0x10
	b _0800B7B0
	.align 2, 0
_0800B79C: .4byte 0x0300330C
_0800B7A0: .4byte gMapPixelSizeX
_0800B7A4:
	adds r0, r2, #0
	subs r0, #0x78
	cmp r0, #0
	bge _0800B7B8
	movs r0, #0xf0
	lsls r0, r0, #0xf
_0800B7B0:
	str r0, [r3]
	ldr r1, _0800B7E0
	movs r0, #0
	strb r0, [r1]
_0800B7B8:
	ldr r7, _0800B7E4
	movs r0, #0
	strb r0, [r7]
	ldr r6, _0800B7E8
	ldr r1, [r6]
	ldr r5, _0800B7EC
	ldr r0, [r5]
	subs r4, r1, r0
	adds r0, r4, #0
	bl Abs
	adds r1, r0, #0
	ldr r0, _0800B7F0
	cmp r1, r0
	bgt _0800B7F4
	ldr r0, [r5]
	str r0, [r6]
	movs r1, #0
	b _0800B800
	.align 2, 0
_0800B7E0: .4byte 0x02001118
_0800B7E4: .4byte 0x02001119
_0800B7E8: .4byte 0x03003310
_0800B7EC: .4byte 0x03003318
_0800B7F0: .4byte 0x0000FFFF
_0800B7F4:
	adds r0, r4, #0
	bl CameraGetVelocity
	adds r1, r0, #0
	movs r0, #1
	strb r0, [r7]
_0800B800:
	ldr r3, _0800B838
	ldr r0, [r3]
	adds r0, r0, r1
	str r0, [r3]
	asrs r2, r0, #0x10
	adds r0, r2, #0
	adds r0, #0x50
	ldr r4, _0800B83C
	ldrh r1, [r4]
	cmp r0, r1
	blt _0800B850
	adds r0, r1, #0
	subs r0, #0x50
	add r0, r8
	lsls r0, r0, #0x10
	str r0, [r3]
	asrs r2, r0, #0x10
	adds r0, r2, #0
	adds r0, #0x50
	ldrh r1, [r4]
	cmp r0, r1
	blt _0800B840
	adds r0, r1, #0
	subs r0, #0x50
	lsls r0, r0, #0x10
	str r0, [r3]
	b _0800B884
	.align 2, 0
_0800B838: .4byte 0x03003310
_0800B83C: .4byte gMapPixelSizeY
_0800B840:
	adds r0, r2, #0
	subs r0, #0x50
	cmp r0, #0
	bge _0800B88A
	movs r0, #0xa0
	lsls r0, r0, #0xf
	str r0, [r3]
	b _0800B884
_0800B850:
	adds r0, r2, #0
	subs r0, #0x50
	cmp r0, #0
	bge _0800B88A
	mov r1, r8
	lsls r0, r1, #0x10
	movs r5, #0xa0
	lsls r5, r5, #0xf
	adds r0, r0, r5
	str r0, [r3]
	asrs r2, r0, #0x10
	adds r0, r2, #0
	adds r0, #0x50
	ldrh r1, [r4]
	cmp r0, r1
	blt _0800B87A
	adds r0, r1, #0
	subs r0, #0x50
	lsls r0, r0, #0x10
	str r0, [r3]
	b _0800B884
_0800B87A:
	adds r0, r2, #0
	subs r0, #0x50
	cmp r0, #0
	bge _0800B88A
	str r5, [r3]
_0800B884:
	ldr r1, _0800B894
	movs r0, #0
	strb r0, [r1]
_0800B88A:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800B894: .4byte 0x02001119

    .thumb
CameraGetVelocity: @ 0x0800B898
	push {lr}
	adds r2, r0, #0
	ldr r0, _0800B8B0
	cmp r1, r0
	bgt _0800B8B8
	ldr r0, _0800B8B4
	cmp r2, #0
	bge _0800B94E
	movs r0, #0x80
	lsls r0, r0, #8
	b _0800B94E
	.align 2, 0
_0800B8B0: .4byte 0x00017FFF
_0800B8B4: .4byte 0xFFFF8000
_0800B8B8:
	ldr r0, _0800B8CC
	cmp r1, r0
	bgt _0800B8D4
	ldr r0, _0800B8D0
	cmp r2, #0
	bge _0800B94E
	movs r0, #0xc0
	lsls r0, r0, #9
	b _0800B94E
	.align 2, 0
_0800B8CC: .4byte 0x0001FFFF
_0800B8D0: .4byte 0xFFFE8000
_0800B8D4:
	ldr r0, _0800B8E8
	cmp r1, r0
	bgt _0800B8F0
	ldr r0, _0800B8EC
	cmp r2, #0
	bge _0800B94E
	movs r0, #0x80
	lsls r0, r0, #0xa
	b _0800B94E
	.align 2, 0
_0800B8E8: .4byte 0x00027FFF
_0800B8EC: .4byte 0xFFFE0000
_0800B8F0:
	ldr r0, _0800B904
	cmp r1, r0
	bgt _0800B90C
	ldr r0, _0800B908
	cmp r2, #0
	bge _0800B94E
	movs r0, #0xa0
	lsls r0, r0, #0xa
	b _0800B94E
	.align 2, 0
_0800B904: .4byte 0x0003FFFF
_0800B908: .4byte 0xFFFD8000
_0800B90C:
	ldr r0, _0800B920
	cmp r1, r0
	bgt _0800B928
	ldr r0, _0800B924
	cmp r2, #0
	bge _0800B94E
	movs r0, #0xc0
	lsls r0, r0, #0xa
	b _0800B94E
	.align 2, 0
_0800B920: .4byte 0x0005FFFF
_0800B924: .4byte 0xFFFD0000
_0800B928:
	ldr r0, _0800B93C
	cmp r1, r0
	bgt _0800B944
	ldr r0, _0800B940
	cmp r2, #0
	bge _0800B94E
	movs r0, #0xe0
	lsls r0, r0, #0xa
	b _0800B94E
	.align 2, 0
_0800B93C: .4byte 0x000FFFFF
_0800B940: .4byte 0xFFFC8000
_0800B944:
	ldr r0, _0800B954
	cmp r2, #0
	bge _0800B94E
	movs r0, #0xa0
	lsls r0, r0, #0xb
_0800B94E:
	pop {r1}
	bx r1
	.align 2, 0
_0800B954: .4byte 0xFFFB0000
