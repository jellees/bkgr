    .thumb
sub_803F75C: @ 0x0803F75C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	adds r5, r0, #0
	mov sb, r2
	mov r8, r3
	ldrh r0, [r5, #6]
	lsls r0, r0, #3
	ldr r2, _0803F7F8
	adds r0, r0, r2
	adds r6, r1, #0
	ldrh r1, [r5, #4]
	cmp r6, r1
	bge _0803F7E2
	ldr r2, _0803F7FC
	mov sl, r2
	adds r7, r0, #0
	lsls r0, r6, #3
	subs r0, r0, r6
	lsls r4, r0, #3
_0803F78A:
	ldr r1, [r5]
	adds r1, r4, r1
	mov r2, sb
	lsls r0, r2, #0x10
	str r0, [r1, #0x1c]
	mov r2, r8
	lsls r0, r2, #0x10
	str r0, [r1, #0x20]
	ldrh r0, [r1, #6]
	mov r0, sb
	strh r0, [r1, #6]
	ldr r0, [r5]
	adds r0, r4, r0
	ldrb r1, [r0, #8]
	strb r2, [r0, #8]
	ldr r0, [r5]
	adds r0, r0, r4
	ldrb r1, [r7]
	lsls r1, r1, #1
	add r1, sl
	ldrh r1, [r1]
	movs r2, #0
	str r2, [sp]
	mov r2, sb
	str r2, [sp, #4]
	mov r2, r8
	str r2, [sp, #8]
	movs r2, #2
	str r2, [sp, #0xc]
	movs r2, #0
	movs r3, #0
	bl SetSprite
	ldr r0, [r5]
	adds r0, r4, r0
	adds r0, #0x35
	movs r1, #1
	strb r1, [r0]
	adds r7, #1
	adds r4, #0x38
	adds r6, #1
	ldrh r0, [r5, #4]
	cmp r6, r0
	blt _0803F78A
_0803F7E2:
	movs r0, #0xa
	strh r0, [r5, #0x18]
	movs r0, #2
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0803F7F8: .4byte 0x080A8CF6
_0803F7FC: .4byte 0x080A8CF0
