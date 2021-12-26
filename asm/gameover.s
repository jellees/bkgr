
    .syntax unified

    .text

    .thumb
	.global sub_8062FC4
sub_8062FC4: @ 0x08062FC4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0
	adds r5, r1, #0
	mov r8, r2
	ldr r6, _08062FE0
	ldrb r0, [r6]
	cmp r0, #4
	beq _08062FE4
	cmp r0, #5
	beq _08063044
	b _080630AC
	.align 2, 0
_08062FE0: .4byte gMenuId
_08062FE4:
	bl GetCurrentMenuEntry
	cmp r0, #0
	beq _08062FF2
	cmp r0, #1
	beq _08062FF6
	b _080630AC
_08062FF2:
	movs r0, #1
	b _080630AE
_08062FF6:
	ldr r1, _0806303C
	ldrb r0, [r6]
	strb r0, [r1]
	movs r0, #5
	strb r0, [r6]
	ldr r0, _08063040
	ldrb r1, [r0]
	movs r0, #5
	bl InitMenu
	movs r0, #0x41
	strb r0, [r5]
	movs r4, #0x52
	strb r4, [r5, #1]
	movs r3, #0x45
	strb r3, [r5, #2]
	movs r2, #0x20
	strb r2, [r5, #3]
	movs r0, #0x59
	strb r0, [r5, #4]
	movs r0, #0x4f
	strb r0, [r5, #5]
	movs r1, #0x55
	strb r1, [r5, #6]
	strb r2, [r5, #7]
	movs r0, #0x53
	strb r0, [r5, #8]
	strb r1, [r5, #9]
	strb r4, [r5, #0xa]
	strb r3, [r5, #0xb]
	movs r0, #0x3f
	strb r0, [r5, #0xc]
	movs r0, #0xff
	strb r0, [r5, #0xd]
	b _080630A0
	.align 2, 0
_0806303C: .4byte gMenuParentId
_08063040: .4byte 0x02000320
_08063044:
	bl GetCurrentMenuEntry
	cmp r0, #0
	beq _08063052
	cmp r0, #1
	beq _08063068
	b _080630AC
_08063052:
	ldr r0, _08063064
	movs r1, #1
	bl sub_80271A4
	movs r0, #0xff
	bl sub_080643D0
	b _080630AC
	.align 2, 0
_08063064: .4byte 0x00000FFF
_08063068:
	ldr r0, _080630B8
	movs r4, #0xff
	strb r4, [r0]
	movs r0, #4
	strb r0, [r6]
	ldr r0, _080630BC
	ldrb r1, [r0]
	movs r0, #4
	bl InitMenu
	movs r0, #0x47
	strb r0, [r5]
	movs r0, #0x41
	strb r0, [r5, #1]
	movs r0, #0x4d
	strb r0, [r5, #2]
	movs r1, #0x45
	strb r1, [r5, #3]
	movs r0, #0x20
	strb r0, [r5, #4]
	movs r0, #0x4f
	strb r0, [r5, #5]
	movs r0, #0x56
	strb r0, [r5, #6]
	strb r1, [r5, #7]
	movs r0, #0x52
	strb r0, [r5, #8]
	strb r4, [r5, #9]
_080630A0:
	adds r0, r5, #0
	adds r1, r7, #0
	bl sub_8025870
	mov r1, r8
	str r0, [r1]
_080630AC:
	movs r0, #0
_080630AE:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080630B8: .4byte gMenuParentId
_080630BC: .4byte 0x02000320
