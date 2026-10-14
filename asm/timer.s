    .syntax unified

    .text

    .thumb
    .global sub_80630C0
sub_80630C0: @ 0x080630C0
	push {r4, lr}
	sub sp, #4
	adds r3, r0, #0
	ldr r2, _080630E4
	movs r0, #0
	movs r4, #1
	strb r4, [r2, #0xb]
	strb r0, [r2, #0xc]
	strh r3, [r2]
	strh r1, [r2, #2]
	strh r3, [r2, #4]
	str r0, [r2, #0x10]
	cmp r3, r1
	ble _080630E8
	strb r0, [r2, #9]
	subs r0, r3, r1
	b _080630EC
	.align 2, 0
_080630E4: .4byte 0x0203FA68
_080630E8:
	strb r4, [r2, #9]
	subs r0, r1, r3
_080630EC:
	movs r1, #0x3c
	mov r2, sp
	bl sub_8064834
	ldr r4, _08063118
	strh r0, [r4, #6]
	ldr r0, [sp]
	adds r0, #0x3c
	strb r0, [r4, #8]
	ldrh r0, [r4, #6]
	bl hud_show_timer
	movs r1, #0
	cmp r0, #0
	bne _0806310C
	movs r1, #1
_0806310C:
	strb r1, [r4, #0xa]
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08063118: .4byte 0x0203FA68


	.thumb
    .global sub_806311C
sub_806311C: @ 0x0806311C
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r3, _08063140
	movs r0, #0
	movs r5, #1
	strb r5, [r3, #0xb]
	strb r0, [r3, #0xc]
	strh r4, [r3]
	strh r1, [r3, #2]
	strh r4, [r3, #4]
	str r2, [r3, #0x10]
	cmp r4, r1
	ble _08063144
	strb r0, [r3, #9]
	subs r0, r4, r1
	b _08063148
	.align 2, 0
_08063140: .4byte 0x0203FA68
_08063144:
	strb r5, [r3, #9]
	subs r0, r1, r4
_08063148:
	movs r1, #0x3c
	mov r2, sp
	bl sub_8064834
	ldr r4, _08063174
	strh r0, [r4, #6]
	ldr r0, [sp]
	adds r0, #0x3c
	strb r0, [r4, #8]
	ldrh r0, [r4, #6]
	bl hud_show_timer
	movs r1, #0
	cmp r0, #0
	bne _08063168
	movs r1, #1
_08063168:
	strb r1, [r4, #0xa]
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08063174: .4byte 0x0203FA68

    .thumb
    .global sub_8063178
sub_8063178: @ 0x08063178
	ldr r1, _08063184
	movs r0, #0
	strb r0, [r1, #0xb]
	str r0, [r1, #0x10]
	bx lr
	.align 2, 0
_08063184: .4byte 0x0203FA68

    .thumb
    .global sub_8063188
sub_8063188: @ 0x08063188
	ldr r1, _08063190
	movs r0, #1
	strb r0, [r1, #0xc]
	bx lr
	.align 2, 0
_08063190: .4byte 0x0203FA68

    .thumb
    .global sub_8063194
sub_8063194: @ 0x08063194
	ldr r1, _0806319C
	movs r0, #0
	strb r0, [r1, #0xc]
	bx lr
	.align 2, 0
_0806319C: .4byte 0x0203FA68

    .thumb
    .global sub_80631A0
sub_80631A0: @ 0x080631A0
	ldr r0, _080631A8
	ldrb r0, [r0, #0xb]
	bx lr
	.align 2, 0
_080631A8: .4byte 0x0203FA68

    .thumb
    .global sub_80631AC
sub_80631AC: @ 0x080631AC
	push {r4, r5, lr}
	ldr r4, _08063210
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	beq _0806322E
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _0806322E
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	beq _080631D2
	ldrh r0, [r4, #6]
	bl hud_show_timer
	movs r1, #0
	cmp r0, #0
	bne _080631D0
	movs r1, #1
_080631D0:
	strb r1, [r4, #0xa]
_080631D2:
	ldr r4, _08063210
	ldrh r0, [r4, #4]
	subs r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0
	bne _080631F2
	movs r0, #0
	strb r0, [r4, #0xb]
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq _080631F2
	bl _call_via_r0
	str r5, [r4, #0x10]
_080631F2:
	ldr r1, _08063210
	ldrb r0, [r1, #8]
	subs r0, #1
	strb r0, [r1, #8]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0806322E
	movs r0, #0x3c
	strb r0, [r1, #8]
	ldrb r0, [r1, #9]
	cmp r0, #0
	beq _08063214
	cmp r0, #1
	beq _0806321A
	b _08063220
	.align 2, 0
_08063210: .4byte 0x0203FA68
_08063214:
	ldrh r0, [r1, #6]
	subs r0, #1
	b _0806321E
_0806321A:
	ldrh r0, [r1, #6]
	adds r0, #1
_0806321E:
	strh r0, [r1, #6]
_08063220:
	ldrb r0, [r1, #0xa]
	cmp r0, #0
	bne _0806322E
	ldrh r1, [r1, #6]
	movs r0, #0x24
	bl hud_set_value
_0806322E:
	pop {r4, r5}
	pop {r0}
	bx r0
