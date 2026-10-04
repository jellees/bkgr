    .thumb
sub_8025278: @ 0x08025278
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	ldr r0, _080252C0
	ldrb r0, [r0]
	cmp r0, #0
	beq _08025352
	ldr r0, _080252C4
	ldr r0, [r0]
	ldr r1, _080252C8
	ldr r1, [r1]
	bl CallARM_FX_Mul16
	adds r7, r0, #0
	movs r6, #1
	movs r5, #0
	ldr r0, _080252CC
	ldr r0, [r0]
	cmp r5, r0
	bge _08025314
	ldr r3, _080252D0
	movs r4, #0
_080252A2:
	ldr r0, [r3]
	adds r2, r4, r0
	ldrb r0, [r2]
	cmp r0, #0
	beq _08025308
	movs r6, #0
	ldr r0, [r2, #0xc]
	subs r1, r0, r7
	str r1, [r2, #0xc]
	ldr r0, _080252D4
	cmp r1, r0
	bgt _080252D8
	strb r6, [r2]
	b _08025308
	.align 2, 0
_080252C0: .4byte byte_20021F0
_080252C4: .4byte 0x0200222C
_080252C8: .4byte 0x020021F4
_080252CC: .4byte 0x02002200
_080252D0: .4byte 0x020021FC
_080252D4: .4byte 0xFFEE0000
_080252D8:
	asrs r0, r1, #0x10
	strh r0, [r2, #0x16]
	ldrb r1, [r2, #1]
	movs r0, #0xf0
	subs r0, r0, r1
	asrs r0, r0, #1
	strh r0, [r2, #0x14]
	strh r6, [r2, #0x20]
	adds r0, r2, #0
	adds r0, #0x14
	ldr r1, [r2, #0x10]
	str r3, [sp]
	bl AddStringToBuffer
	ldr r3, [sp]
	ldr r0, [r3]
	adds r1, r4, r0
	ldr r2, [r1, #8]
	ldr r0, [r1, #4]
	cmp r2, r0
	bge _08025308
	adds r0, r2, r7
	str r0, [r1, #8]
	b _08025314
_08025308:
	adds r4, #0x28
	adds r5, #1
	ldr r0, _0802535C
	ldr r0, [r0]
	cmp r5, r0
	blt _080252A2
_08025314:
	cmp r6, #0
	beq _08025352
	ldr r4, _08025360
	ldr r2, _08025364
	ldr r0, [r4, #0xc]
	ldr r1, [r2]
	subs r0, r0, r1
	str r0, [r4, #0xc]
	movs r1, #0x90
	lsls r1, r1, #0xf
	cmp r0, r1
	bgt _08025334
	movs r0, #0
	str r0, [r2]
	bl sub_805B278
_08025334:
	movs r1, #0xe
	ldrsh r0, [r4, r1]
	movs r2, #0
	strh r0, [r4, #0x16]
	ldrb r1, [r4, #1]
	movs r0, #0xf0
	subs r0, r0, r1
	asrs r0, r0, #1
	strh r0, [r4, #0x14]
	strh r2, [r4, #0x20]
	adds r0, r4, #0
	adds r0, #0x14
	ldr r1, [r4, #0x10]
	bl AddStringToBuffer
_08025352:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802535C: .4byte 0x02002200
_08025360: .4byte 0x02002204
_08025364: .4byte 0x0200222C
