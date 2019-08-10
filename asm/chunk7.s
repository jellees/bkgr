
    .syntax unified

    .text

    .thumb
sub_80447C4: @ 0x080447C4
	push {r4, lr}
	movs r0, #0x40
	bl sub_80643E8
	ldr r1, _08044814
	movs r0, #3
	bl sub_8064450
	ldr r4, _08044818
	movs r0, #0xff
	lsls r0, r0, #3
	movs r1, #9
	movs r2, #4
	bl Alloc
	adds r1, r0, #0
	str r1, [r4]
	movs r2, #0xff
	lsls r2, r2, #1
	movs r0, #0
	bl DmaFill32
	ldr r1, _0804481C
	movs r0, #0
	strh r0, [r1]
	bl SyncVblank
	bl SyncVblank
	bl audio_pause
	ldr r1, _08044820
	movs r0, #1
	strb r0, [r1]
	ldr r1, _08044824
	movs r0, #0x1f
	strb r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08044814: .4byte 0x03002A84
_08044818: .4byte 0x0203EADC
_0804481C: .4byte 0x04000208
_08044820: .4byte 0x0203EAD4
_08044824: .4byte 0x0203EAD8

    .thumb
sub_8044828: @ 0x08044828
	push {lr}
	ldr r1, _0804484C
	ldr r0, _08044850
	str r0, [r1, #0x18]
	ldr r0, _08044854
	ldr r0, [r0]
	movs r1, #4
	bl Free
	ldr r1, _08044858
	movs r0, #1
	strh r0, [r1]
	ldr r1, _0804485C
	movs r0, #0
	strb r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_0804484C: .4byte 0x03002A6C
_08044850: .4byte 0x0800A4A1
_08044854: .4byte 0x0203EADC
_08044858: .4byte 0x04000208
_0804485C: .4byte 0x0203EAD4

    .thumb
    .global sub_08044860
sub_08044860: @ 0x08044860
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	bl sub_80447C4
	ldr r0, _080448A4
	mov sl, r0
	ldr r4, [r0]
	ldr r1, _080448A8
	mov sb, r1
	movs r0, #0
	strh r0, [r1]
	ldr r1, _080448AC
	mov r8, r1
	strb r0, [r1]
	movs r0, #1
	strb r0, [r1, #1]
	movs r0, #2
	strb r0, [r1, #2]
	movs r0, #3
	ldr r1, _080448B0
	strb r0, [r1]
	movs r0, #0
	adds r1, r4, #0
	bl sub_80645D4
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080448B4
	.2byte 0xEE00, 0xEE00
	b _0804490E
	.align 2, 0
_080448A4: .4byte 0x0203EADC
_080448A8: .4byte 0x0203EAD6
_080448AC: .4byte 0x0203EAE0
_080448B0: .4byte 0x0203EAE3
_080448B4:
	ldrb r5, [r4]
	ldrb r7, [r4, #1]
	adds r0, r5, r7
	ldrb r1, [r4, #2]
	adds r0, r0, r1
	ldrb r3, [r4, #3]
	adds r0, r3, r0
	ldrb r6, [r4, #4]
	adds r0, r6, r0
	ldrb r1, [r4, #5]
	adds r0, r0, r1
	ldrb r2, [r4, #7]
	lsls r2, r2, #8
	ldrb r1, [r4, #6]
	orrs r1, r2
	cmp r1, r0
	bne _0804490E
	cmp r5, #0x84
	bne _0804490E
	cmp r7, #0x48
	bne _0804490E
	lsls r0, r6, #8
	orrs r3, r0
	mov r0, sb
	strh r3, [r0]
	ldr r1, _08044918
	ldrb r0, [r4, #2]
	ldrb r1, [r1]
	cmp r0, r1
	bne _0804490E
	ldrb r1, [r4, #5]
	cmp r1, #5
	bhi _0804490E
	ldr r0, _0804491C
	strb r1, [r0]
	mov r0, sl
	ldr r1, [r0]
	movs r0, #1
	bl sub_80645D4
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08044920
	.2byte 0xEE00, 0xEE00
_0804490E:
	bl sub_8044828
	movs r0, #0
	b _0804499A
	.align 2, 0
_08044918: .4byte 0x0203EAD8
_0804491C: .4byte 0x02000320
_08044920:
	ldrb r0, [r4]
	mov r1, r8
	strb r0, [r1]
	ldrb r2, [r4, #1]
	strb r2, [r1, #1]
	ldrb r3, [r4, #2]
	strb r3, [r1, #2]
	ldrb r1, [r4, #3]
	ldr r4, _080449A8
	strb r1, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #3
	bhi _08044954
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #3
	bhi _08044954
	lsls r0, r3, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #3
	bhi _08044954
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #3
	bls _08044958
_08044954:
	.2byte 0xEE00, 0xEE00
_08044958:
	ldr r0, _080449AC
	ldrb r1, [r0]
	adds r2, r0, #0
	ldr r3, _080449A8
	ldrb r0, [r2, #1]
	cmp r1, r0
	beq _08044972
	ldrb r4, [r2, #2]
	cmp r1, r4
	beq _08044972
	ldrb r0, [r3]
	cmp r1, r0
	bne _08044976
_08044972:
	.2byte 0xEE00, 0xEE00
_08044976:
	ldrb r0, [r2, #1]
	ldrb r1, [r2, #2]
	cmp r0, r1
	beq _08044984
	ldrb r4, [r3]
	cmp r0, r4
	bne _08044988
_08044984:
	.2byte 0xEE00, 0xEE00
_08044988:
	ldrb r0, [r2, #2]
	ldrb r3, [r3]
	cmp r0, r3
	bne _08044994
	.2byte 0xEE00, 0xEE00
_08044994:
	bl sub_8044828
	movs r0, #1
_0804499A:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080449A8: .4byte 0x0203EAE3
_080449AC: .4byte 0x0203EAE0

    .thumb
    .global sub_080449B0
sub_080449B0: @ 0x080449B0
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	mov sb, r0
	adds r4, r1, #0
	bl sub_80447C4
	ldr r5, _08044A14
	ldr r6, [r5]
	cmp r4, #0
	beq _08044A38
	movs r0, #0x84
	strb r0, [r6]
	movs r0, #0x48
	strb r0, [r6, #1]
	ldr r0, _08044A18
	ldrb r0, [r0]
	strb r0, [r6, #2]
	ldrb r1, [r6, #2]
	ldr r2, _08044A1C
	ldrh r0, [r2]
	strb r0, [r6, #3]
	adds r1, #0xcc
	adds r1, r1, r0
	ldrh r0, [r2]
	lsrs r0, r0, #8
	strb r0, [r6, #4]
	ldrb r0, [r6, #4]
	adds r1, r1, r0
	lsls r1, r1, #0x10
	ldr r0, _08044A20
	ldrb r0, [r0]
	strb r0, [r6, #5]
	lsrs r1, r1, #0x10
	adds r1, r1, r0
	strb r1, [r6, #6]
	lsrs r1, r1, #8
	strb r1, [r6, #7]
	ldr r1, [r5]
	movs r0, #0
	bl sub_8064684
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08044A24
	.2byte 0xEE00, 0xEE00
	b _08044BEA
	.align 2, 0
_08044A14: .4byte 0x0203EADC
_08044A18: .4byte 0x0203EAD8
_08044A1C: .4byte 0x0203EAD6
_08044A20: .4byte 0x02000320
_08044A24:
	ldr r1, [r5]
	movs r0, #0
	bl sub_8064760
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08044A38
	.2byte 0xEE00, 0xEE00
	b _08044BEA
_08044A38:
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	movs r0, #0x84
	strb r0, [r6]
	ldr r1, [sp]
	adds r0, r6, r1
	ldrb r2, [r0]
	ldr r0, [sp, #4]
	adds r0, r0, r2
	str r0, [sp, #4]
	adds r1, #1
	str r1, [sp]
	adds r1, r6, r1
	movs r0, #0x48
	strb r0, [r1]
	ldr r1, [sp]
	adds r0, r6, r1
	ldrb r2, [r0]
	ldr r0, [sp, #4]
	adds r0, r0, r2
	str r0, [sp, #4]
	adds r1, #1
	str r1, [sp]
	adds r1, r6, r1
	ldr r0, _08044BA8
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, [sp]
	adds r0, r6, r1
	ldrb r2, [r0]
	ldr r0, [sp, #4]
	adds r0, r0, r2
	str r0, [sp, #4]
	adds r1, #1
	str r1, [sp]
	adds r1, r6, r1
	ldr r3, _08044BAC
	ldrh r0, [r3]
	strb r0, [r1]
	ldr r1, [sp]
	adds r0, r6, r1
	ldrb r2, [r0]
	ldr r0, [sp, #4]
	adds r0, r0, r2
	str r0, [sp, #4]
	adds r1, #1
	str r1, [sp]
	adds r1, r6, r1
	ldrh r0, [r3]
	lsrs r0, r0, #8
	strb r0, [r1]
	ldr r1, [sp]
	adds r0, r6, r1
	ldrb r2, [r0]
	ldr r0, [sp, #4]
	adds r0, r0, r2
	str r0, [sp, #4]
	adds r1, #1
	str r1, [sp]
	add r4, sp, #4
	adds r0, r6, #0
	mov r1, sp
	adds r2, r4, #0
	bl sub_8034970
	adds r0, r6, #0
	mov r1, sp
	adds r2, r4, #0
	bl sub_800E204
	adds r0, r6, #0
	mov r1, sp
	adds r2, r4, #0
	bl sub_80164E0
	ldr r1, [sp]
	adds r2, r6, r1
	ldr r0, [sp, #4]
	strb r0, [r2]
	adds r1, #1
	str r1, [sp]
	adds r2, r6, r1
	ldr r0, [sp, #4]
	lsrs r0, r0, #8
	strb r0, [r2]
	adds r1, #1
	str r1, [sp]
	adds r2, r6, r1
	ldr r0, [sp, #4]
	lsrs r0, r0, #0x10
	strb r0, [r2]
	adds r1, #1
	str r1, [sp]
	adds r2, r6, r1
	ldr r0, [sp, #4]
	lsrs r0, r0, #0x18
	strb r0, [r2]
	adds r1, #1
	str r1, [sp]
	ldr r0, _08044BB0
	cmp r1, r0
	ble _08044B0A
	.2byte 0xEE00, 0xEE00
_08044B0A:
	mov r0, sb
	cmp r0, #2
	bls _08044B14
	.2byte 0xEE00, 0xEE00
_08044B14:
	ldr r1, _08044BB4
	ldr r0, _08044BB8
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r7, [r0]
	movs r4, #0
	ldr r3, _08044BBC
	mov r8, r3
	lsls r5, r7, #0x10
_08044B28:
	lsrs r0, r5, #0x10
	lsls r2, r4, #3
	mov r3, r8
	ldr r1, [r3]
	adds r1, r1, r2
	bl sub_8064684
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08044BDA
	movs r0, #0x80
	lsls r0, r0, #9
	adds r5, r5, r0
	adds r4, #1
	cmp r4, #0xfe
	ble _08044B28
	movs r4, #0
	ldr r3, _08044BBC
	mov r8, r3
	lsls r5, r7, #0x10
_08044B50:
	lsrs r0, r5, #0x10
	lsls r2, r4, #3
	mov r3, r8
	ldr r1, [r3]
	adds r1, r1, r2
	bl sub_8064760
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08044BE0
	movs r0, #0x80
	lsls r0, r0, #9
	adds r5, r5, r0
	adds r4, #1
	cmp r4, #0xfe
	ble _08044B50
	ldr r3, _08044BB8
	ldrb r4, [r3]
	ldr r1, _08044BC0
	mov r0, sb
	adds r2, r0, r1
	ldrb r0, [r2]
	strb r0, [r3]
	strb r4, [r2]
	ldrb r0, [r1]
	strb r0, [r6]
	ldrb r0, [r1, #1]
	strb r0, [r6, #1]
	ldrb r0, [r1, #2]
	strb r0, [r6, #2]
	ldrb r0, [r1, #3]
	strb r0, [r6, #3]
	ldr r4, _08044BBC
	ldr r1, [r4]
	movs r0, #1
	bl sub_8064684
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08044BC4
	.2byte 0xEE00, 0xEE00
	b _08044BEA
	.align 2, 0
_08044BA8: .4byte 0x0203EAD8
_08044BAC: .4byte 0x0203EAD6
_08044BB0: .4byte 0x000007F7
_08044BB4: .4byte 0x080AF4F0
_08044BB8: .4byte 0x0203EAE3
_08044BBC: .4byte 0x0203EADC
_08044BC0: .4byte 0x0203EAE0
_08044BC4:
	ldr r1, [r4]
	movs r0, #1
	bl sub_8064760
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08044BE6
	bl sub_8044828
	movs r0, #1
	b _08044BF0
_08044BDA:
	.2byte 0xEE00, 0xEE00
	b _08044BEA
_08044BE0:
	.2byte 0xEE00, 0xEE00
	b _08044BEA
_08044BE6:
	.2byte 0xEE00, 0xEE00
_08044BEA:
	bl sub_8044828
	movs r0, #0
_08044BF0:
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

    .thumb
    .global sub_08044C00
sub_08044C00: @ 0x08044C00
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r4, r0, #0
	bl sub_80447C4
	ldr r2, _08044D04
	ldr r6, [r2]
	ldr r1, _08044D08
	ldr r0, _08044D0C
	adds r4, r4, r0
	ldrb r0, [r4]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	movs r5, #0
	adds r7, r2, #0
	lsls r4, r0, #0x10
_08044C22:
	lsrs r0, r4, #0x10
	lsls r2, r5, #3
	ldr r1, [r7]
	adds r1, r1, r2
	bl sub_80645D4
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0
	bne _08044D1C
	movs r0, #0x80
	lsls r0, r0, #9
	adds r4, r4, r0
	adds r5, #1
	cmp r5, #0xfe
	ble _08044C22
	ldrb r0, [r6]
	cmp r0, #0x84
	bne _08044D20
	ldrb r0, [r6, #1]
	cmp r0, #0x48
	bne _08044D20
	ldrb r0, [r6, #4]
	lsls r0, r0, #8
	ldrb r2, [r6, #3]
	orrs r2, r0
	ldr r1, _08044D10
	ldrb r0, [r6, #2]
	ldrb r1, [r1]
	cmp r0, r1
	bne _08044D20
	ldr r0, _08044D14
	ldrh r0, [r0]
	cmp r2, r0
	bne _08044D20
	str r3, [sp]
	str r3, [sp, #4]
	ldrb r0, [r6]
	str r0, [sp, #4]
	movs r1, #1
	str r1, [sp]
	ldrb r1, [r6, #1]
	adds r0, r0, r1
	str r0, [sp, #4]
	movs r1, #2
	str r1, [sp]
	ldrb r1, [r6, #2]
	adds r0, r0, r1
	str r0, [sp, #4]
	movs r1, #3
	str r1, [sp]
	ldrb r1, [r6, #3]
	adds r0, r0, r1
	str r0, [sp, #4]
	movs r1, #4
	str r1, [sp]
	ldrb r1, [r6, #4]
	adds r0, r0, r1
	str r0, [sp, #4]
	movs r0, #5
	str r0, [sp]
	add r4, sp, #4
	adds r0, r6, #0
	mov r1, sp
	adds r2, r4, #0
	bl sub_8036138
	adds r0, r6, #0
	mov r1, sp
	adds r2, r4, #0
	bl sub_800E408
	adds r0, r6, #0
	mov r1, sp
	adds r2, r4, #0
	bl sub_801657C
	ldr r1, [sp]
	adds r0, r6, r1
	ldrb r2, [r0]
	adds r1, #1
	str r1, [sp]
	adds r0, r6, r1
	ldrb r0, [r0]
	lsls r0, r0, #8
	orrs r2, r0
	adds r1, #1
	str r1, [sp]
	adds r0, r6, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x10
	orrs r2, r0
	adds r1, #1
	str r1, [sp]
	adds r0, r6, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	orrs r2, r0
	adds r1, #1
	str r1, [sp]
	ldr r0, _08044D18
	cmp r1, r0
	ble _08044CF4
	.2byte 0xEE00, 0xEE00
_08044CF4:
	ldr r0, [sp, #4]
	cmp r2, r0
	bne _08044D20
	bl sub_8044828
	movs r0, #1
	b _08044D26
	.align 2, 0
_08044D04: .4byte 0x0203EADC
_08044D08: .4byte 0x080AF4F0
_08044D0C: .4byte 0x0203EAE0
_08044D10: .4byte 0x0203EAD8
_08044D14: .4byte 0x0203EAD6
_08044D18: .4byte 0x000007F7
_08044D1C:
	.2byte 0xEE00, 0xEE00
_08044D20:
	bl sub_8044828
	movs r0, #0
_08044D26:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

    .thumb
    .global sub_8044D30
sub_8044D30: @ 0x08044D30
	push {r4, r5, lr}
	sub sp, #8
	mov r1, sp
	ldr r0, _08044D68
	strh r0, [r1]
	movs r0, #1
	rsbs r0, r0, #0
	strh r0, [r1, #2]
	strh r0, [r1, #4]
	strh r0, [r1, #6]
	bl sub_80447C4
	movs r4, #0
	ldr r5, _08044D6C
_08044D4C:
	lsls r0, r4, #0x10
	lsrs r0, r0, #0x10
	mov r1, sp
	bl sub_8064684
	adds r4, #1
	cmp r4, r5
	ble _08044D4C
	bl sub_8044828
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08044D68: .4byte 0x0000FFFF
_08044D6C: .4byte 0x000003FE

    .thumb
    .global sub_8044D70
sub_8044D70: @ 0x08044D70
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r4, r0, #0
	bl sub_80447C4
	ldr r2, _08044DC8
	ldr r6, [r2]
	ldr r1, _08044DCC
	ldr r0, _08044DD0
	adds r4, r4, r0
	ldrb r0, [r4]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	movs r5, #0
	adds r7, r2, #0
	lsls r4, r0, #0x10
_08044D92:
	lsrs r0, r4, #0x10
	lsls r2, r5, #3
	ldr r1, [r7]
	adds r1, r1, r2
	bl sub_80645D4
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08044DA8
	.2byte 0xEE00, 0xEE00
_08044DA8:
	movs r0, #0x80
	lsls r0, r0, #9
	adds r4, r4, r0
	adds r5, #1
	cmp r5, #0xfe
	ble _08044D92
	ldrb r0, [r6]
	cmp r0, #0x84
	bne _08044DC0
	ldrb r0, [r6, #1]
	cmp r0, #0x48
	beq _08044DD4
_08044DC0:
	bl sub_8044828
	movs r0, #2
	b _08044DF2
	.align 2, 0
_08044DC8: .4byte 0x0203EADC
_08044DCC: .4byte 0x080AF4F0
_08044DD0: .4byte 0x0203EAE0
_08044DD4:
	movs r0, #5
	str r0, [sp]
	adds r0, r6, #0
	mov r1, sp
	bl sub_8037C08
	cmp r0, #0
	beq _08044DEC
	bl sub_8044828
	movs r0, #1
	b _08044DF2
_08044DEC:
	bl sub_8044828
	movs r0, #0
_08044DF2:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

    .thumb
    .global sub_8044DFC
sub_8044DFC: @ 0x08044DFC
	push {lr}
	ldr r1, _08044E1C
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r1]
	ldr r2, _08044E20
	ldr r0, _08044E24
	ldrh r1, [r0]
	movs r0, #1
	orrs r0, r1
	str r0, [r2]
	bl sub_8044E28
	pop {r0}
	bx r0
	.align 2, 0
_08044E1C: .4byte 0x0203F4AC
_08044E20: .4byte 0x0203F4B0
_08044E24: .4byte 0x0400010C

    .thumb
sub_8044E28: @ 0x08044E28
	push {lr}
	adds r2, r0, #0
	movs r0, #1
	orrs r2, r0
	ldr r3, _08044E4C
	ldr r1, _08044E50
	movs r0, #0
	str r0, [r1]
	stm r3!, {r2}
	ldr r0, _08044E54
	ldr r1, _08044E58
_08044E3E:
	muls r2, r1, r2
	stm r3!, {r2}
	subs r0, #1
	cmp r0, #0
	bne _08044E3E
	pop {r0}
	bx r0
	.align 2, 0
_08044E4C: .4byte 0x0203EAE4
_08044E50: .4byte 0x0203F4AC
_08044E54: .4byte 0x0000026F
_08044E58: .4byte 0x00010DCD

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

    .thumb
    .global audio_init_p
audio_init_p: @ 0x08045038
	push {lr}
	bl audio_init
	pop {r0}
	bx r0
	.align 2, 0

    .thumb
    .global sub_8045044
sub_8045044: @ 0x08045044
	push {lr}
	bl audio_vsync_asm
	pop {r0}
	bx r0
	.align 2, 0

    .thumb
	.global seq_update_p
seq_update_p: @ 0x08045050
	push {lr}
	bl seq_update
	pop {r0}
	bx r0
	.align 2, 0
