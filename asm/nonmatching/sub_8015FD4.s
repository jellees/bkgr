    .thumb
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

