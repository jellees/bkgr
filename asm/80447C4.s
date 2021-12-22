
@     .syntax unified

@     .text

@     .thumb
@     .global sub_8044D70
@ sub_8044D70: @ 0x08044D70
@ 	push {r4, r5, r6, r7, lr}
@ 	sub sp, #4
@ 	adds r4, r0, #0
@ 	bl sub_80447C4
@ 	ldr r2, _08044DC8
@ 	ldr r6, [r2]
@ 	ldr r1, _08044DCC
@ 	ldr r0, _08044DD0
@ 	adds r4, r4, r0
@ 	ldrb r0, [r4]
@ 	lsls r0, r0, #2
@ 	adds r0, r0, r1
@ 	ldr r0, [r0]
@ 	movs r5, #0
@ 	adds r7, r2, #0
@ 	lsls r4, r0, #0x10
@ _08044D92:
@ 	lsrs r0, r4, #0x10
@ 	lsls r2, r5, #3
@ 	ldr r1, [r7]
@ 	adds r1, r1, r2
@ 	bl sub_80645D4
@ 	lsls r0, r0, #0x10
@ 	cmp r0, #0
@ 	beq _08044DA8
@ 	.2byte 0xEE00, 0xEE00
@ _08044DA8:
@ 	movs r0, #0x80
@ 	lsls r0, r0, #9
@ 	adds r4, r4, r0
@ 	adds r5, #1
@ 	cmp r5, #0xfe
@ 	ble _08044D92
@ 	ldrb r0, [r6]
@ 	cmp r0, #0x84
@ 	bne _08044DC0
@ 	ldrb r0, [r6, #1]
@ 	cmp r0, #0x48
@ 	beq _08044DD4
@ _08044DC0:
@ 	bl sub_8044828
@ 	movs r0, #2
@ 	b _08044DF2
@ 	.align 2, 0
@ _08044DC8: .4byte 0x0203EADC
@ _08044DCC: .4byte 0x080AF4F0
@ _08044DD0: .4byte 0x0203EAE0
@ _08044DD4:
@ 	movs r0, #5
@ 	str r0, [sp]
@ 	adds r0, r6, #0
@ 	mov r1, sp
@ 	bl sub_8037C08
@ 	cmp r0, #0
@ 	beq _08044DEC
@ 	bl sub_8044828
@ 	movs r0, #1
@ 	b _08044DF2
@ _08044DEC:
@ 	bl sub_8044828
@ 	movs r0, #0
@ _08044DF2:
@ 	add sp, #4
@ 	pop {r4, r5, r6, r7}
@ 	pop {r1}
@ 	bx r1
@ 	.align 2, 0
