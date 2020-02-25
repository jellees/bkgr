
    .syntax unified

    .text

    .thumb
sub_8044E5C: @ 0x08044E5C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r4, _08044F70
	movs r0, #8
	adds r0, r0, r4
	mov r8, r0
	ldr r1, _08044F74
	adds r7, r4, r1
	ldr r5, _08044F78
	ldr r1, [r5]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bge _08044E8A
	ldr r0, _08044F7C
	ldr r0, [r0]
	ldr r3, _08044F80
	adds r0, r0, r3
	bl sub_8044E28
_08044E8A:
	ldr r0, _08044F84
	str r0, [r5]
	ldr r1, _08044F88
	adds r0, r4, #4
	str r0, [r1]
	ldr r1, [r4]
	ldr r2, [r4, #4]
	movs r5, #0xe3
	mov sl, r4
	movs r0, #0x80
	lsls r0, r0, #0x18
	mov ip, r0
	ldr r6, _08044F8C
_08044EA4:
	mov r3, ip
	ands r1, r3
	adds r0, r2, #0
	ands r0, r6
	orrs r0, r1
	lsrs r0, r0, #1
	ldm r7!, {r1}
	adds r3, r4, #0
	adds r4, #4
	eors r1, r0
	movs r0, #1
	ands r0, r2
	cmp r0, #0
	beq _08044EC4
	ldr r0, _08044F90
	eors r1, r0
_08044EC4:
	str r1, [r3]
	adds r1, r2, #0
	mov r0, r8
	adds r0, #4
	mov r8, r0
	subs r0, #4
	ldm r0!, {r2}
	subs r5, #1
	cmp r5, #0
	bne _08044EA4
	mov r7, sl
	movs r5, #0xc6
	lsls r5, r5, #1
	movs r3, #0x80
	lsls r3, r3, #0x18
	mov sb, r3
	ldr r0, _08044F8C
	mov ip, r0
_08044EE8:
	mov r3, sb
	ands r1, r3
	adds r0, r2, #0
	mov r3, ip
	ands r0, r3
	orrs r0, r1
	lsrs r0, r0, #1
	ldm r7!, {r1}
	adds r3, r4, #0
	adds r4, #4
	eors r1, r0
	movs r6, #1
	adds r0, r2, #0
	ands r0, r6
	cmp r0, #0
	beq _08044F0C
	ldr r0, _08044F90
	eors r1, r0
_08044F0C:
	str r1, [r3]
	adds r1, r2, #0
	mov r0, r8
	adds r0, #4
	mov r8, r0
	subs r0, #4
	ldm r0!, {r2}
	subs r5, #1
	cmp r5, #0
	bne _08044EE8
	mov r3, sl
	ldr r2, [r3]
	movs r0, #0x80
	lsls r0, r0, #0x18
	ands r0, r1
	ldr r1, _08044F8C
	ands r1, r2
	orrs r1, r0
	lsrs r1, r1, #1
	ldr r3, [r7]
	eors r3, r1
	str r3, [r4]
	adds r0, r2, #0
	ands r0, r6
	cmp r0, #0
	beq _08044F46
	ldr r0, _08044F90
	eors r3, r0
	str r3, [r4]
_08044F46:
	lsrs r0, r2, #0xb
	eors r2, r0
	lsls r0, r2, #7
	ldr r1, _08044F94
	ands r0, r1
	eors r2, r0
	lsls r0, r2, #0xf
	ldr r1, _08044F98
	ands r0, r1
	eors r2, r0
	lsrs r0, r2, #0x12
	eors r2, r0
	adds r0, r2, #0
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08044F70: .4byte 0x0203EAE4
_08044F74: .4byte 0x00000634
_08044F78: .4byte 0x0203F4AC
_08044F7C: .4byte 0x0203F4B0
_08044F80: .4byte 0x00001105
_08044F84: .4byte 0x0000026F
_08044F88: .4byte 0x0203F4A8
_08044F8C: .4byte 0x7FFFFFFF
_08044F90: .4byte 0x9908B0DF
_08044F94: .4byte 0x9D2C5680
_08044F98: .4byte 0xEFC60000

    .thumb
    .global RandomMinMax
RandomMinMax: @ 0x08044F9C
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r6, r0, #0
	cmp r6, r1
	bne _08044FAA
	.2byte 0xEE00, 0xEE00
_08044FAA:
	cmp r6, r1
	bls _08044FB2
	.2byte 0xEE00, 0xEE00
_08044FB2:
	ldr r5, _08044FF4
	subs r4, r1, r6
	adds r0, r5, #0
	movs r1, #0x20
	adds r2, r4, #0
	bl sub_80039DC
	adds r1, r0, #0
	cmp r1, #0x1f
	bls _08044FCA
	.2byte 0xEE00, 0xEE00
_08044FCA:
	lsls r0, r1, #2
	adds r0, r0, r5
	ldr r0, [r0]
	cmp r0, r4
	bhs _08044FD6
	adds r1, #1
_08044FD6:
	lsls r0, r1, #2
	ldr r3, _08044FF8
	ldr r7, _08044FFC
	adds r5, r0, r5
_08044FDE:
	ldr r0, [r3]
	subs r0, #1
	str r0, [r3]
	cmp r0, #0
	bge _08045000
	str r3, [sp]
	bl sub_8044E5C
	adds r1, r0, #0
	ldr r3, [sp]
	b _0804501E
	.align 2, 0
_08044FF4: .4byte 0x080AF500
_08044FF8: .4byte 0x0203F4AC
_08044FFC: .4byte 0x0203F4A8
_08045000:
	ldr r0, [r7]
	ldm r0!, {r2}
	str r0, [r7]
	lsrs r0, r2, #0xb
	eors r2, r0
	lsls r0, r2, #7
	ldr r1, _08045030
	ands r0, r1
	eors r2, r0
	lsls r0, r2, #0xf
	ldr r1, _08045034
	ands r0, r1
	eors r2, r0
	lsrs r1, r2, #0x12
	eors r1, r2
_0804501E:
	ldr r0, [r5]
	ands r0, r1
	cmp r0, r4
	bhi _08044FDE
	adds r0, r0, r6
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08045030: .4byte 0x9D2C5680
_08045034: .4byte 0xEFC60000