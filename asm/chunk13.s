    .syntax unified
    .text

    .thumb
sub_8060DCC: @ 0x08060DCC
	push {r4, lr}
	ldr r1, _08060E10
	movs r0, #0
	strh r0, [r1]
	ldr r4, _08060E14
	movs r0, #0x50
	movs r1, #7
	movs r2, #5
	bl Alloc
	str r0, [r4]
	movs r2, #0
	movs r3, #0
_08060DE6:
	ldr r1, [r4]
	lsls r0, r2, #2
	adds r0, r0, r1
	str r3, [r0]
	adds r2, #1
	cmp r2, #0x13
	ble _08060DE6
	ldr r1, _08060E18
	movs r0, #0x80
	strh r0, [r1]
	adds r1, #4
	movs r0, #0x84
	strh r0, [r1]
	ldr r0, _08060E1C
	movs r1, #0
	strh r1, [r0]
	adds r0, #4
	strh r1, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08060E10: .4byte 0x0203FA30
_08060E14: .4byte 0x0203FA2C
_08060E18: .4byte 0x0400010A
_08060E1C: .4byte 0x04000108

	.thumb
sub_8060E20: @ 0x08060E20
	push {r4, r5, r6, lr}
	movs r5, #0
	ldr r6, _08060E60
_08060E26:
	ldr r0, [r6]
	lsls r4, r5, #2
	adds r0, r4, r0
	ldr r0, [r0]
	cmp r0, #0
	beq _08060E46
	ldr r0, [r0, #8]
	movs r1, #5
	bl Free
	ldr r0, [r6]
	adds r0, r4, r0
	ldr r0, [r0]
	movs r1, #5
	bl Free
_08060E46:
	adds r5, #1
	cmp r5, #0x13
	ble _08060E26
	ldr r0, _08060E60
	ldr r0, [r0]
	movs r1, #5
	bl Free
	bl sub_8060DCC
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08060E60: .4byte 0x0203FA2C

	.thumb
sub_8060E64: @ 0x08060E64
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	movs r1, #0
	ldr r7, _08060EF8
_08060E6E:
	ldr r0, [r7]
	lsls r4, r1, #2
	adds r0, r4, r0
	ldr r2, [r0]
	adds r1, #1
	mov r8, r1
	cmp r2, #0
	beq _08060EE8
	ldrb r0, [r2]
	movs r1, #0
	strb r0, [r2, #1]
	ldr r0, [r7]
	adds r0, r4, r0
	ldr r0, [r0]
	strb r1, [r0]
	ldr r0, [r7]
	adds r0, r4, r0
	ldr r1, [r0]
	ldrb r0, [r1, #3]
	ldrb r2, [r1, #2]
	cmp r0, r2
	bls _08060EE8
	ldr r0, [r1, #8]
	movs r1, #5
	bl Free
	ldr r0, [r7]
	adds r0, r4, r0
	ldr r0, [r0]
	ldrb r0, [r0, #3]
	lsls r0, r0, #2
	movs r1, #7
	movs r2, #5
	bl Alloc
	ldr r1, [r7]
	adds r1, r4, r1
	ldr r1, [r1]
	str r0, [r1, #8]
	ldrb r0, [r1, #3]
	strb r0, [r1, #2]
	movs r3, #0
	ldr r0, [r7]
	adds r0, r4, r0
	ldr r0, [r0]
	ldrb r0, [r0, #2]
	cmp r3, r0
	bge _08060EE8
	ldr r6, _08060EF8
	movs r5, #0
_08060ED2:
	ldr r0, [r6]
	adds r0, r4, r0
	ldr r2, [r0]
	ldr r1, [r2, #8]
	lsls r0, r3, #2
	adds r0, r0, r1
	str r5, [r0]
	adds r3, #1
	ldrb r2, [r2, #2]
	cmp r3, r2
	blt _08060ED2
_08060EE8:
	mov r1, r8
	cmp r1, #0x13
	ble _08060E6E
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08060EF8: .4byte 0x0203FA2C

	.thumb
sub_8060EFC: @ 0x08060EFC
	push {r4, r5, r6, r7, lr}
	ldr r1, _08060F90
	ldrh r1, [r1]
	cmp r1, #0x13
	bne _08060F0A
	.2byte 0xEE00, 0xEE00
_08060F0A:
	movs r7, #0
	ldr r6, _08060F94
	movs r5, #0
_08060F10:
	ldr r1, [r6]
	adds r1, r5, r1
	ldr r4, [r1]
	cmp r4, #0
	bne _08060F98
	movs r0, #0xc
	movs r1, #7
	movs r2, #5
	bl Alloc
	ldr r1, [r6]
	adds r1, r5, r1
	str r0, [r1]
	strb r4, [r0]
	ldr r0, [r6]
	adds r0, r5, r0
	ldr r0, [r0]
	strb r4, [r0, #1]
	ldr r0, [r6]
	adds r0, r5, r0
	ldr r0, [r0]
	movs r1, #0xa
	strb r1, [r0, #2]
	ldr r0, [r6]
	adds r0, r5, r0
	ldr r0, [r0]
	strb r1, [r0, #3]
	ldr r0, [r6]
	adds r0, r5, r0
	ldr r0, [r0]
	ldrb r0, [r0, #2]
	lsls r0, r0, #2
	movs r1, #7
	movs r2, #5
	bl Alloc
	ldr r1, [r6]
	adds r1, r5, r1
	ldr r1, [r1]
	str r0, [r1, #8]
	movs r3, #0
	ldrb r1, [r1, #2]
	cmp r3, r1
	bge _08060F84
	ldr r6, _08060F94
	adds r4, r5, #0
	movs r5, #0
_08060F6E:
	ldr r0, [r6]
	adds r0, r4, r0
	ldr r2, [r0]
	ldr r1, [r2, #8]
	lsls r0, r3, #2
	adds r0, r0, r1
	str r5, [r0]
	adds r3, #1
	ldrb r2, [r2, #2]
	cmp r3, r2
	blt _08060F6E
_08060F84:
	ldr r1, _08060F90
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	adds r0, r7, #0
	b _08060FA4
	.align 2, 0
_08060F90: .4byte 0x0203FA30
_08060F94: .4byte 0x0203FA2C
_08060F98:
	adds r5, #4
	adds r7, #1
	cmp r7, #0x13
	ble _08060F10
	.2byte 0xEE00, 0xEE00
_08060FA4:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	.thumb
sub_8060FAC: @ 0x08060FAC
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r6, _08060FF0
	ldrh r0, [r6]
	cmp r0, #0
	bne _08060FBC
	.2byte 0xEE00, 0xEE00
_08060FBC:
	ldr r5, _08060FF4
	ldr r0, [r5]
	lsls r4, r4, #2
	adds r0, r4, r0
	ldr r0, [r0]
	ldr r0, [r0, #8]
	movs r1, #5
	bl Free
	ldr r0, [r5]
	adds r0, r4, r0
	ldr r0, [r0]
	movs r1, #5
	bl Free
	ldr r0, [r5]
	adds r4, r4, r0
	movs r0, #0
	str r0, [r4]
	ldrh r0, [r6]
	subs r0, #1
	strh r0, [r6]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08060FF0: .4byte 0x0203FA30
_08060FF4: .4byte 0x0203FA2C

	.thumb
    .global sub_8060FF8
sub_8060FF8: @ 0x08060FF8
	push {r4, r5, r6, lr}
	movs r2, #0
	ldr r0, _08061030
	ldr r5, [r0]
	adds r6, r0, #0
_08061002:
	lsls r1, r2, #2
	adds r0, r1, r5
	ldr r0, [r0]
	adds r4, r2, #1
	cmp r0, #0
	beq _08061024
	movs r2, #0
	ldrb r0, [r0, #1]
	cmp r2, r0
	bge _08061024
	ldr r3, [r6]
_08061018:
	adds r0, r1, r3
	ldr r0, [r0]
	adds r2, #1
	ldrb r0, [r0, #1]
	cmp r2, r0
	blt _08061018
_08061024:
	adds r2, r4, #0
	cmp r2, #0x13
	ble _08061002
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08061030: .4byte 0x0203FA2C

	.thumb
sub_8061034: @ 0x08061034
	push {lr}
	ldr r1, _0806105C
	ldr r1, [r1]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r2, [r0]
	cmp r2, #0
	bne _08061048
	.2byte 0xEE00, 0xEE00
_08061048:
	ldr r0, _08061060
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	ldr r1, _08061064
	ldrh r1, [r1]
	orrs r0, r1
	str r0, [r2, #4]
	pop {r0}
	bx r0
	.align 2, 0
_0806105C: .4byte 0x0203FA2C
_08061060: .4byte 0x0400010C
_08061064: .4byte 0x04000108

	.thumb
sub_8061068: @ 0x08061068
	push {r4, r5, r6, lr}
	ldr r5, _080610AC
	ldr r1, _080610B0
	ldrh r1, [r1]
	lsls r1, r1, #0x10
	ldr r2, _080610B4
	ldrh r2, [r2]
	orrs r1, r2
	str r1, [r5]
	ldr r4, _080610B8
	ldr r1, [r4]
	lsls r3, r0, #2
	adds r1, r3, r1
	ldr r1, [r1]
	ldrb r0, [r1]
	adds r2, r0, #0
	ldrb r6, [r1, #2]
	cmp r2, r6
	bhs _080610BC
	adds r0, #1
	strb r0, [r1]
	ldr r0, [r1, #8]
	lsls r2, r2, #2
	adds r2, r2, r0
	ldr r0, [r4]
	adds r0, r3, r0
	ldr r1, [r0]
	ldr r0, [r5]
	ldr r1, [r1, #4]
	subs r0, r0, r1
	adds r0, #1
	str r0, [r2]
	b _080610C2
	.align 2, 0
_080610AC: .4byte 0x03006EF4
_080610B0: .4byte 0x0400010C
_080610B4: .4byte 0x04000108
_080610B8: .4byte 0x0203FA2C
_080610BC:
	ldrb r0, [r1, #3]
	adds r0, #1
	strb r0, [r1, #3]
_080610C2:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

    .thumb
sub_80610C8: @ 0x080610C8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	str r2, [sp, #4]
	movs r6, #0
	lsls r0, r1, #8
	mov r8, r0
	ldr r2, _08061184
	mov sl, r2
	ldr r0, _08061188
	mov sb, r0
	movs r0, #0x3c
	subs r7, r0, r1
_080610F6:
	ldr r1, [sp, #4]
	cmp r6, r1
	bne _08061104
	ldr r0, _0806118C
	ldrb r0, [r0]
	cmp r0, #0
	beq _0806116A
_08061104:
	lsls r4, r6, #1
	adds r4, r4, r6
	lsls r0, r4, #4
	adds r4, r4, r0
	ldr r2, [sp]
	subs r4, r2, r4
	movs r0, #0xff
	ands r4, r0
	lsls r0, r4, #1
	add r0, sl
	movs r2, #0
	ldrsh r1, [r0, r2]
	mov r0, r8
	bl CallARM_FX_Mul8
	mov r1, sb
	ldr r2, [r1]
	lsls r5, r6, #3
	subs r5, r5, r6
	lsls r5, r5, #2
	adds r2, r5, r2
	asrs r0, r0, #8
	movs r1, #0x78
	subs r1, r1, r0
	strh r1, [r2, #6]
	adds r4, #0x40
	lsls r4, r4, #1
	add r4, sl
	movs r2, #0
	ldrsh r1, [r4, r2]
	mov r0, r8
	bl CallARM_FX_Mul8
	mov r2, sb
	ldr r1, [r2]
	adds r5, r5, r1
	asrs r0, r0, #8
	movs r1, #0x50
	subs r1, r1, r0
	strb r1, [r5, #8]
	lsls r2, r7, #4
	subs r2, r2, r7
	movs r0, #0x80
	lsls r0, r0, #1
	adds r2, r2, r0
	lsls r2, r2, #0x10
	adds r0, r6, #0
	movs r1, #0
	lsrs r2, r2, #0x10
	bl sub_8025718
_0806116A:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #4
	bls _080610F6
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08061184: .4byte 0x080B1AE4
_08061188: .4byte 0x0203FA38
_0806118C: .4byte 0x0203FA53

    .thumb
sub_8061190: @ 0x08061190
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #0x10
	ldr r4, _08061230
	movs r0, #0x38
	movs r1, #1
	movs r2, #3
	bl Alloc
	str r0, [r4]
	ldr r1, _08061234
	movs r2, #0
	str r2, [sp]
	ldr r2, _08061238
	mov sb, r2
	movs r3, #0
	ldrsh r2, [r2, r3]
	str r2, [sp, #4]
	ldr r5, _0806123C
	mov r8, r5
	movs r3, #0
	ldrsh r2, [r5, r3]
	str r2, [sp, #8]
	movs r6, #2
	str r6, [sp, #0xc]
	movs r2, #0
	movs r3, #0
	bl SetSprite
	ldr r0, [r4]
	movs r1, #0
	bl sprite_set_locked_frame
	ldr r0, [r4]
	movs r1, #2
	bl sprite_set_priority
	ldr r0, [r4]
	adds r0, #0x1c
	movs r5, #1
	str r5, [sp]
	mov r2, sb
	movs r3, #0
	ldrsh r1, [r2, r3]
	str r1, [sp, #4]
	mov r2, r8
	movs r3, #0
	ldrsh r1, [r2, r3]
	str r1, [sp, #8]
	str r6, [sp, #0xc]
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl SetSprite
	ldr r0, [r4]
	adds r0, #0x1c
	movs r1, #2
	bl sprite_set_priority
	ldr r0, [r4]
	adds r0, #0x1c
	movs r1, #0
	bl sprite_lock_anim_on_frame
	ldr r0, [r4]
	adds r0, #0x2c
	strb r5, [r0]
	ldr r0, _08061240
	strb r5, [r0]
	add sp, #0x10
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08061230: .4byte 0x0203FA3C
_08061234: .4byte 0x000004C2
_08061238: .4byte 0x0203F994
_0806123C: .4byte 0x0203F996
_08061240: .4byte 0x0203FA54

    .thumb
sub_8061244: @ 0x08061244
	push {lr}
	ldr r0, _0806125C
	ldr r0, [r0]
	movs r1, #3
	bl Free
	ldr r1, _08061260
	movs r0, #0
	strb r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_0806125C: .4byte 0x0203FA3C
_08061260: .4byte 0x0203FA54

    .thumb
sub_8061264: @ 0x08061264
	ldr r1, _08061274
	ldrb r0, [r1]
	subs r0, #3
	strb r0, [r1]
	ldr r2, _08061278
	ldrb r0, [r1]
	strh r0, [r2]
	bx lr
	.align 2, 0
_08061274: .4byte 0x0203FA52
_08061278: .4byte 0x04000010

    .thumb
    .global sub_806127C
sub_806127C: @ 0x0806127C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	ldr r0, _080612A0
	ldrb r1, [r0]
	adds r3, r0, #0
	cmp r1, #0x13
	bls _08061296
	bl _08061F68
_08061296:
	lsls r0, r1, #2
	ldr r1, _080612A4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080612A0: .4byte 0x0203FA34
_080612A4: .4byte 0x080612A8
_080612A8: @ jump table
	.4byte _08061F68 @ case 0
	.4byte _080612F8 @ case 1
	.4byte _08061328 @ case 2
	.4byte _0806134C @ case 3
	.4byte _08061360 @ case 4
	.4byte _08061384 @ case 5
	.4byte _08061510 @ case 6
	.4byte _08061578 @ case 7
	.4byte _08061890 @ case 8
	.4byte _08061974 @ case 9
	.4byte _08061AD4 @ case 10
	.4byte _08061C68 @ case 11
	.4byte _08061D0C @ case 12
	.4byte _08061D64 @ case 13
	.4byte _08061F68 @ case 14
	.4byte _08061DE8 @ case 15
	.4byte _08061F04 @ case 16
	.4byte _08061F50 @ case 17
	.4byte _08061F68 @ case 18
	.4byte _08061F56 @ case 19
_080612F8:
	movs r0, #4
	bl start_script
	ldr r1, _08061318
	movs r0, #2
	strb r0, [r1]
	ldr r1, _0806131C
	movs r0, #5
	str r0, [r1]
	ldr r0, _08061320
	movs r1, #0
	strb r1, [r0]
	ldr r0, _08061324
	strb r1, [r0]
	bl _08061F68
	.align 2, 0
_08061318: .4byte 0x0203FA34
_0806131C: .4byte gMatricesCount
_08061320: .4byte byte_203FA35
_08061324: .4byte 0x0203FA54
_08061328:
	ldr r0, _08061344
	ldrb r0, [r0]
	cmp r0, #0
	beq _08061334
	bl _08061F68
_08061334:
	movs r0, #3
	strb r0, [r3]
	ldr r1, _08061348
	movs r0, #1
	strb r0, [r1]
	bl _08061F68
	.align 2, 0
_08061344: .4byte byte_203F99E
_08061348: .4byte byte_203FA35
_0806134C:
	movs r0, #3
	bl start_script
	ldr r1, _0806135C
	movs r0, #4
	strb r0, [r1]
	bl _08061F68
	.align 2, 0
_0806135C: .4byte 0x0203FA34
_08061360:
	ldr r0, _0806137C
	ldrb r0, [r0]
	cmp r0, #0
	beq _0806136C
	bl _08061F68
_0806136C:
	bl sub_8061190
	ldr r1, _08061380
	movs r0, #5
	strb r0, [r1]
	bl _08061F68
	.align 2, 0
_0806137C: .4byte byte_203F99C
_08061380: .4byte 0x0203FA34
_08061384:
	ldr r4, _080613B4
	movs r0, #0x8c
	movs r1, #1
	movs r2, #3
	bl Alloc
	str r0, [r4]
	ldr r4, _080613B8
	movs r0, #0x50
	movs r1, #1
	movs r2, #3
	bl Alloc
	str r0, [r4]
	movs r0, #4
	mov sb, r0
	ldr r0, _080613BC
	ldrb r0, [r0]
	cmp r0, #0
	beq _080613C0
	movs r1, #1
	str r1, [sp, #0x10]
	b _08061410
	.align 2, 0
_080613B4: .4byte 0x0203FA38
_080613B8: .4byte gMatrices
_080613BC: .4byte gTransformation
_080613C0:
	ldr r0, _080613D4
	ldrh r1, [r0]
	adds r2, r0, #0
	cmp r1, #0x24
	beq _080613EC
	cmp r1, #0x24
	bgt _080613D8
	cmp r1, #0x23
	beq _080613E2
	b _08061408
	.align 2, 0
_080613D4: .4byte 0x0203E140
_080613D8:
	cmp r1, #0x25
	beq _080613FE
	cmp r1, #0x26
	beq _080613F4
	b _08061408
_080613E2:
	movs r3, #0
	mov sb, r3
	movs r4, #1
	str r4, [sp, #0x10]
	b _0806140C
_080613EC:
	movs r5, #1
	mov sb, r5
	movs r0, #1
	b _0806140A
_080613F4:
	movs r1, #2
	mov sb, r1
	movs r3, #1
	str r3, [sp, #0x10]
	b _0806140C
_080613FE:
	movs r4, #3
	mov sb, r4
	movs r5, #1
	str r5, [sp, #0x10]
	b _0806140C
_08061408:
	movs r0, #0
_0806140A:
	str r0, [sp, #0x10]
_0806140C:
	movs r0, #0
	strh r0, [r2]
_08061410:
	movs r6, #0
	ldr r7, _08061484
	movs r1, #1
	mov sl, r1
_08061418:
	lsls r0, r6, #3
	subs r0, r0, r6
	lsls r5, r0, #2
	ldr r0, [r7]
	adds r0, r0, r5
	ldr r1, _08061488
	lsls r2, r6, #2
	mov r8, r2
	add r1, r8
	ldr r1, [r1]
	movs r2, #0
	str r2, [sp]
	movs r2, #0xfa
	str r2, [sp, #4]
	movs r2, #0xc8
	str r2, [sp, #8]
	movs r2, #2
	str r2, [sp, #0xc]
	movs r2, #0
	movs r3, #0
	bl SetSprite
	ldr r0, [r7]
	adds r0, r0, r5
	movs r1, #1
	adds r2, r6, #0
	bl sub_8003820
	ldr r0, [r7]
	adds r0, r0, r5
	movs r1, #1
	bl sprite_set_priority
	ldr r0, [r7]
	adds r0, r5, r0
	mov r3, sl
	strb r3, [r0, #0x10]
	ldr r0, _0806148C
	adds r0, r6, r0
	ldrb r4, [r0]
	adds r0, r4, #0
	bl sub_8016A5C
	cmp r0, #0
	bne _08061476
	cmp r4, #0
	bne _08061490
_08061476:
	ldr r4, [sp, #0x10]
	cmp r4, #0
	bne _080614B4
	movs r5, #1
	str r5, [sp, #0x10]
	mov sb, r6
	b _080614B4
	.align 2, 0
_08061484: .4byte 0x0203FA38
_08061488: .4byte 0x080CF438
_0806148C: .4byte 0x080CF460
_08061490:
	ldr r0, [r7]
	adds r0, r0, r5
	ldr r1, _080614F4
	movs r2, #0
	movs r3, #0
	bl sprite_set_anim
	ldr r0, [r7]
	adds r0, r0, r5
	ldr r1, _080614F8
	add r1, r8
	ldr r1, [r1]
	bl sprite_set_palette
	ldr r0, [r7]
	adds r0, r5, r0
	mov r1, sl
	strb r1, [r0, #0x12]
_080614B4:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #4
	bls _08061418
	ldr r2, _080614FC
	mov r3, sb
	lsls r0, r3, #1
	add r0, sb
	lsls r1, r0, #4
	adds r0, r0, r1
	lsls r0, r0, #8
	strh r0, [r2]
	ldr r0, _08061500
	ldr r1, [r0]
	lsls r0, r3, #3
	subs r0, r0, r3
	lsls r0, r0, #2
	adds r0, r0, r1
	movs r1, #0
	strb r1, [r0, #0x10]
	ldr r0, _08061504
	strb r3, [r0]
	ldr r1, _08061508
	movs r0, #0x10
	strb r0, [r1]
	ldr r1, _0806150C
	movs r0, #6
	strb r0, [r1]
	bl _08061F68
	.align 2, 0
_080614F4: .4byte 0x000004B9
_080614F8: .4byte 0x080CF44C
_080614FC: .4byte 0x0203FA44
_08061500: .4byte 0x0203FA38
_08061504: .4byte 0x0203FA4D
_08061508: .4byte 0x0203FA4C
_0806150C: .4byte 0x0203FA34
_08061510:
	ldr r2, _0806153C
	ldrb r1, [r2]
	adds r0, r1, #2
	strb r0, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x3b
	bhi _08061548
	ldr r0, _08061540
	ldrh r0, [r0]
	lsrs r0, r0, #8
	subs r1, #0x3a
	subs r0, r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldrb r1, [r2]
	ldr r2, _08061544
	ldrb r2, [r2]
	bl sub_80610C8
	bl _08061F68
	.align 2, 0
_0806153C: .4byte 0x0203FA4C
_08061540: .4byte 0x0203FA44
_08061544: .4byte 0x0203FA4D
_08061548:
	movs r6, #0
_0806154A:
	adds r0, r6, #0
	movs r1, #0
	movs r2, #0x80
	lsls r2, r2, #1
	bl sub_8025718
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #4
	bls _0806154A
	ldr r1, _08061570
	movs r0, #7
	strb r0, [r1]
	ldr r1, _08061574
	movs r0, #0
	strh r0, [r1]
	bl _08061F68
	.align 2, 0
_08061570: .4byte 0x0203FA34
_08061574: .4byte 0x0203FA46
_08061578:
	ldr r2, _080615E0
	ldrh r1, [r2]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08061614
	ldr r0, _080615E4
	movs r4, #0
	ldrsh r0, [r0, r4]
	cmp r0, #0
	bne _0806160A
	ldr r0, _080615E8
	ldrb r1, [r0]
	ldr r0, _080615EC
	ldr r2, [r0]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r1, #1
	strb r1, [r0, #0x10]
	ldr r4, _080615F0
	ldr r0, [r4]
	bl audio_fx_still_active
	cmp r0, #0
	bne _0806160A
	ldr r0, _080615F4
	ldrb r0, [r0]
	cmp r0, #0
	beq _08061604
	ldr r2, _080615F8
	movs r5, #0xcd
	lsls r5, r5, #3
	adds r0, r2, r5
	ldrh r0, [r0]
	ldr r3, _080615FC
	adds r5, #2
	adds r1, r2, r5
	ldrb r3, [r3]
	adds r1, r1, r3
	ldrb r1, [r1]
	ldr r3, _08061600
	adds r2, r2, r3
	ldr r2, [r2]
	movs r5, #0x80
	lsls r5, r5, #9
	adds r2, r2, r5
	bl audio_new_fx
	b _08061608
	.align 2, 0
_080615E0: .4byte gKeysPressed
_080615E4: .4byte 0x0203FA46
_080615E8: .4byte 0x0203FA4D
_080615EC: .4byte 0x0203FA38
_080615F0: .4byte 0x0203FA40
_080615F4: .4byte gCanPlaySfx
_080615F8: .4byte 0x080CE440
_080615FC: .4byte gSfxVolume
_08061600: .4byte 0x0000066C
_08061604:
	movs r0, #1
	rsbs r0, r0, #0
_08061608:
	str r0, [r4]
_0806160A:
	ldr r1, _08061678
	ldr r2, _0806167C
	adds r0, r2, #0
	strh r0, [r1]
	ldr r2, _08061680
_08061614:
	ldrh r1, [r2]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080616B2
	ldr r0, _08061678
	movs r3, #0
	ldrsh r0, [r0, r3]
	cmp r0, #0
	bne _080616A6
	ldr r0, _08061684
	ldrb r1, [r0]
	ldr r0, _08061688
	ldr r2, [r0]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r1, #1
	strb r1, [r0, #0x10]
	ldr r4, _0806168C
	ldr r0, [r4]
	bl audio_fx_still_active
	cmp r0, #0
	bne _080616A6
	ldr r0, _08061690
	ldrb r0, [r0]
	cmp r0, #0
	beq _080616A0
	ldr r2, _08061694
	movs r5, #0xcd
	lsls r5, r5, #3
	adds r0, r2, r5
	ldrh r0, [r0]
	ldr r3, _08061698
	adds r5, #2
	adds r1, r2, r5
	ldrb r3, [r3]
	adds r1, r1, r3
	ldrb r1, [r1]
	ldr r3, _0806169C
	adds r2, r2, r3
	ldr r2, [r2]
	movs r5, #0x80
	lsls r5, r5, #9
	adds r2, r2, r5
	bl audio_new_fx
	b _080616A4
	.align 2, 0
_08061678: .4byte 0x0203FA46
_0806167C: .4byte 0xFFFFFE00
_08061680: .4byte gKeysPressed
_08061684: .4byte 0x0203FA4D
_08061688: .4byte 0x0203FA38
_0806168C: .4byte 0x0203FA40
_08061690: .4byte gCanPlaySfx
_08061694: .4byte 0x080CE440
_08061698: .4byte gSfxVolume
_0806169C: .4byte 0x0000066C
_080616A0:
	movs r0, #1
	rsbs r0, r0, #0
_080616A4:
	str r0, [r4]
_080616A6:
	ldr r1, _08061718
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r2, #0
	strh r0, [r1]
	ldr r2, _0806171C
_080616B2:
	ldr r0, _08061718
	movs r4, #0
	ldrsh r3, [r0, r4]
	cmp r3, #0
	bne _0806177A
	ldrh r1, [r2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0806177A
	ldr r1, _08061720
	ldr r0, _08061724
	ldrb r0, [r0]
	adds r0, r0, r1
	ldr r1, _08061728
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	bne _08061740
	ldr r1, _0806172C
	movs r0, #1
	strb r0, [r1]
	bl sub_8061244
	movs r0, #6
	bl start_script
	ldr r0, _08061730
	ldrb r0, [r0]
	cmp r0, #0
	beq _08061772
	ldr r2, _08061734
	movs r5, #0xd0
	lsls r5, r5, #3
	adds r0, r2, r5
	ldrh r0, [r0]
	ldr r3, _08061738
	ldr r4, _0806173C
	adds r1, r2, r4
	ldrb r3, [r3]
	adds r1, r1, r3
	ldrb r1, [r1]
	adds r5, #4
	adds r2, r2, r5
	ldr r2, [r2]
	movs r3, #0x80
	lsls r3, r3, #9
	adds r2, r2, r3
	bl audio_new_fx
	b _08061772
	.align 2, 0
_08061718: .4byte 0x0203FA46
_0806171C: .4byte gKeysPressed
_08061720: .4byte 0x080CF460
_08061724: .4byte 0x0203FA4D
_08061728: .4byte gTransformation
_0806172C: .4byte 0x0203FA53
_08061730: .4byte gCanPlaySfx
_08061734: .4byte 0x080CE440
_08061738: .4byte gSfxVolume
_0806173C: .4byte 0x00000682
_08061740:
	ldr r0, _08061854
	strb r3, [r0]
	ldr r0, _08061858
	ldrb r0, [r0]
	cmp r0, #0
	beq _08061772
	ldr r2, _0806185C
	movs r4, #0xcf
	lsls r4, r4, #3
	adds r0, r2, r4
	ldrh r0, [r0]
	ldr r3, _08061860
	ldr r5, _08061864
	adds r1, r2, r5
	ldrb r3, [r3]
	adds r1, r1, r3
	ldrb r1, [r1]
	ldr r3, _08061868
	adds r2, r2, r3
	ldr r2, [r2]
	movs r4, #0x80
	lsls r4, r4, #9
	adds r2, r2, r4
	bl audio_new_fx
_08061772:
	ldr r1, _0806186C
	movs r0, #8
	strb r0, [r1]
	ldr r2, _08061870
_0806177A:
	ldrh r1, [r2]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080617D6
	ldr r4, _08061858
	ldrb r0, [r4]
	cmp r0, #0
	beq _08061794
	ldr r0, _08061874
	ldr r0, [r0]
	bl audio_halt_fx
_08061794:
	ldr r0, _08061854
	movs r1, #1
	strb r1, [r0]
	bl sub_8061244
	movs r0, #6
	bl start_script
	ldrb r0, [r4]
	cmp r0, #0
	beq _080617D0
	ldr r2, _0806185C
	movs r5, #0xd0
	lsls r5, r5, #3
	adds r0, r2, r5
	ldrh r0, [r0]
	ldr r3, _08061860
	ldr r4, _08061878
	adds r1, r2, r4
	ldrb r3, [r3]
	adds r1, r1, r3
	ldrb r1, [r1]
	adds r5, #4
	adds r2, r2, r5
	ldr r2, [r2]
	movs r3, #0x80
	lsls r3, r3, #9
	adds r2, r2, r3
	bl audio_new_fx
_080617D0:
	ldr r1, _0806186C
	movs r0, #8
	strb r0, [r1]
_080617D6:
	ldr r2, _0806187C
	ldr r1, _08061880
	ldrh r0, [r2]
	ldrh r1, [r1]
	subs r0, r0, r1
	strh r0, [r2]
	movs r6, #0
	movs r5, #0
_080617E6:
	ldr r0, _0806187C
	ldrh r0, [r0]
	lsrs r2, r0, #8
	lsls r0, r6, #1
	adds r0, r0, r6
	lsls r1, r0, #4
	adds r1, r0, r1
	adds r0, r1, #2
	cmp r2, r0
	bge _08061838
	cmp r2, r1
	blt _08061838
	ldr r0, _08061884
	adds r0, r6, r0
	ldrb r4, [r0]
	adds r0, r4, #0
	bl sub_8016A5C
	cmp r0, #0
	bne _08061812
	cmp r4, #0
	bne _08061838
_08061812:
	ldr r0, _08061880
	strh r5, [r0]
	ldr r0, _08061888
	ldr r1, [r0]
	lsls r0, r6, #3
	subs r0, r0, r6
	lsls r0, r0, #2
	adds r0, r0, r1
	strb r5, [r0, #0x10]
	ldr r0, _0806188C
	strb r6, [r0]
	ldr r0, _08061858
	ldrb r0, [r0]
	cmp r0, #0
	beq _08061838
	ldr r0, _08061874
	ldr r0, [r0]
	bl audio_halt_fx
_08061838:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #4
	bls _080617E6
	ldr r0, _0806187C
	ldrh r0, [r0]
	lsrs r0, r0, #8
	movs r1, #0x3c
	movs r2, #0x63
	bl sub_80610C8
	b _08061F68
	.align 2, 0
_08061854: .4byte 0x0203FA53
_08061858: .4byte gCanPlaySfx
_0806185C: .4byte 0x080CE440
_08061860: .4byte gSfxVolume
_08061864: .4byte 0x0000067A
_08061868: .4byte 0x0000067C
_0806186C: .4byte 0x0203FA34
_08061870: .4byte gKeysPressed
_08061874: .4byte 0x0203FA40
_08061878: .4byte 0x00000682
_0806187C: .4byte 0x0203FA44
_08061880: .4byte 0x0203FA46
_08061884: .4byte 0x080CF460
_08061888: .4byte 0x0203FA38
_0806188C: .4byte 0x0203FA4D
_08061890:
	ldr r1, _080618C0
	ldrb r0, [r1]
	subs r0, #2
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r1
	cmp r0, #0x10
	bls _080618D0
	ldr r4, _080618C4
	ldrh r0, [r4]
	lsrs r0, r0, #8
	ldrb r1, [r1]
	ldr r2, _080618C8
	ldrb r2, [r2]
	bl sub_80610C8
	ldr r5, _080618CC
	adds r0, r5, #0
	ldrh r1, [r4]
	adds r0, r0, r1
	strh r0, [r4]
	b _08061F68
	.align 2, 0
_080618C0: .4byte 0x0203FA4C
_080618C4: .4byte 0x0203FA44
_080618C8: .4byte 0x0203FA4D
_080618CC: .4byte 0xFFFFFE00
_080618D0:
	movs r6, #0
	ldr r7, _08061904
	ldr r5, _08061908
	ldr r4, _0806190C
	movs r2, #0xc8
_080618DA:
	ldrb r0, [r5]
	cmp r6, r0
	beq _080618EC
	ldr r1, [r4]
	lsls r0, r6, #3
	subs r0, r0, r6
	lsls r0, r0, #2
	adds r0, r0, r1
	strb r2, [r0, #8]
_080618EC:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #4
	bls _080618DA
	ldrb r2, [r7]
	cmp r2, #0
	beq _08061910
	movs r0, #0x10
	strb r0, [r3]
	b _08061F68
	.align 2, 0
_08061904: .4byte 0x0203FA53
_08061908: .4byte 0x0203FA4D
_0806190C: .4byte 0x0203FA38
_08061910:
	ldr r1, _08061958
	movs r0, #2
	strb r0, [r1]
	movs r0, #0x3c
	mov r1, r8
	strb r0, [r1]
	ldr r0, _0806195C
	strh r2, [r0]
	movs r0, #9
	strb r0, [r3]
	ldr r0, _08061960
	ldrb r0, [r0]
	cmp r0, #0
	bne _0806192E
	b _08061F68
_0806192E:
	ldr r2, _08061964
	movs r3, #0xe2
	lsls r3, r3, #3
	adds r0, r2, r3
	ldrh r0, [r0]
	ldr r3, _08061968
	ldr r4, _0806196C
	adds r1, r2, r4
	ldrb r3, [r3]
	adds r1, r1, r3
	ldrb r1, [r1]
	ldr r5, _08061970
	adds r2, r2, r5
	ldr r2, [r2]
	movs r3, #0x80
	lsls r3, r3, #9
	adds r2, r2, r3
	bl audio_new_fx
	b _08061F68
	.align 2, 0
_08061958: .4byte 0x0203FA4E
_0806195C: .4byte 0x0203FA44
_08061960: .4byte gCanPlaySfx
_08061964: .4byte 0x080CE440
_08061968: .4byte gSfxVolume
_0806196C: .4byte 0x00000712
_08061970: .4byte 0x00000714
_08061974:
	ldr r2, _08061A3C
	ldrb r1, [r2]
	subs r1, #1
	strb r1, [r2]
	ldr r4, _08061A40
	movs r5, #0x80
	lsls r5, r5, #4
	adds r0, r5, #0
	ldrh r3, [r4]
	adds r0, r0, r3
	strh r0, [r4]
	lsls r1, r1, #0x18
	ldr r5, _08061A44
	mov r8, r5
	cmp r1, #0
	bne _0806199E
	ldrb r0, [r5]
	subs r0, #1
	strb r0, [r5]
	movs r0, #2
	strb r0, [r2]
_0806199E:
	ldrh r4, [r4]
	lsrs r4, r4, #8
	mov r1, r8
	ldrb r0, [r1]
	lsls r0, r0, #8
	ldr r5, _08061A48
	lsls r1, r4, #1
	adds r1, r1, r5
	movs r2, #0
	ldrsh r1, [r1, r2]
	bl CallARM_FX_Mul8
	ldr r6, _08061A4C
	ldrb r1, [r6]
	ldr r7, _08061A50
	ldr r3, [r7]
	lsls r2, r1, #3
	subs r2, r2, r1
	lsls r2, r2, #2
	adds r2, r2, r3
	asrs r0, r0, #8
	movs r1, #0x78
	subs r1, r1, r0
	strh r1, [r2, #6]
	mov r3, r8
	ldrb r0, [r3]
	movs r1, #0xd0
	bl CallARM_FX_Mul8
	lsls r0, r0, #8
	adds r4, #0x40
	lsls r4, r4, #1
	adds r4, r4, r5
	movs r5, #0
	ldrsh r1, [r4, r5]
	bl CallARM_FX_Mul8
	ldrb r1, [r6]
	ldr r3, [r7]
	lsls r2, r1, #3
	subs r2, r2, r1
	lsls r2, r2, #2
	adds r2, r2, r3
	asrs r0, r0, #8
	movs r1, #0x41
	subs r1, r1, r0
	strb r1, [r2, #8]
	ldrb r0, [r6]
	mov r1, r8
	ldrb r2, [r1]
	movs r1, #0x3c
	subs r1, r1, r2
	lsls r2, r1, #4
	subs r2, r2, r1
	movs r3, #0x80
	lsls r3, r3, #1
	adds r2, r2, r3
	movs r1, #0
	bl sub_8025718
	mov r4, r8
	ldrb r0, [r4]
	cmp r0, #0x10
	beq _08061A20
	b _08061F68
_08061A20:
	ldrb r1, [r6]
	ldr r2, [r7]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r1, #0xc8
	strb r1, [r0, #8]
	ldrb r0, [r6]
	cmp r0, #0
	bne _08061A58
	ldr r1, _08061A54
	movs r0, #1
	b _08061A5C
	.align 2, 0
_08061A3C: .4byte 0x0203FA4E
_08061A40: .4byte 0x0203FA44
_08061A44: .4byte 0x0203FA4C
_08061A48: .4byte 0x080B1AE4
_08061A4C: .4byte 0x0203FA4D
_08061A50: .4byte 0x0203FA38
_08061A54: .4byte 0x0203FA51
_08061A58:
	ldr r1, _08061AC0
	movs r0, #0
_08061A5C:
	strb r0, [r1]
	adds r5, r1, #0
	ldr r4, _08061AC4
	ldrb r0, [r5]
	lsls r1, r0, #3
	subs r1, r1, r0
	lsls r1, r1, #2
	ldr r0, [r4]
	adds r0, r0, r1
	ldr r1, _08061AC8
	movs r2, #0
	movs r3, #0
	bl sprite_set_anim
	ldrb r1, [r5]
	ldr r2, [r4]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r1, #0
	strb r1, [r0, #0x10]
	ldrb r0, [r5]
	movs r2, #0xc0
	lsls r2, r2, #2
	bl sub_8025718
	ldrb r1, [r5]
	ldr r2, [r4]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r3, #0
	movs r1, #0x78
	strh r1, [r0, #6]
	ldrb r1, [r5]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r1, #0x41
	strb r1, [r0, #8]
	ldr r0, _08061ACC
	strb r3, [r0]
	ldr r1, _08061AD0
	movs r0, #0xa
	strb r0, [r1]
	b _08061F68
	.align 2, 0
_08061AC0: .4byte 0x0203FA51
_08061AC4: .4byte 0x0203FA38
_08061AC8: .4byte 0x000004BF
_08061ACC: .4byte 0x0203FA4E
_08061AD0: .4byte 0x0203FA34
_08061AD4:
	ldr r7, _08061C04
	ldrb r0, [r7]
	adds r0, #2
	strb r0, [r7]
	ldr r6, _08061C08
	ldrb r4, [r6]
	ldr r1, _08061C0C
	ldrb r0, [r7]
	lsls r0, r0, #1
	adds r0, r0, r1
	movs r5, #0
	ldrsh r0, [r0, r5]
	movs r1, #0xc0
	lsls r1, r1, #1
	bl CallARM_FX_Mul8
	movs r2, #0xa0
	lsls r2, r2, #2
	subs r2, r2, r0
	adds r0, r4, #0
	movs r1, #0
	bl sub_8025718
	movs r0, #0
	ldrsb r0, [r7, r0]
	cmp r0, #0
	blt _08061B0C
	b _08061F68
_08061B0C:
	ldrb r1, [r6]
	ldr r4, _08061C10
	ldr r2, [r4]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r5, #0
	strb r5, [r0, #0x12]
	ldrb r0, [r6]
	lsls r1, r0, #3
	subs r1, r1, r0
	lsls r1, r1, #2
	ldr r0, [r4]
	adds r0, r0, r1
	ldr r1, _08061C14
	movs r2, #0
	movs r3, #0
	bl sprite_set_anim
	ldrb r0, [r6]
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	bl sub_8025718
	ldrb r1, [r6]
	ldr r2, [r4]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	strb r5, [r0, #0x10]
	ldrb r0, [r6]
	lsls r1, r0, #3
	subs r1, r1, r0
	lsls r1, r1, #2
	ldr r0, [r4]
	adds r0, r0, r1
	movs r1, #0
	bl sprite_set_priority
	ldrb r1, [r6]
	ldr r3, [r4]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r3
	movs r2, #0
	movs r1, #0x78
	strh r1, [r0, #6]
	ldrb r1, [r6]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r3
	strb r2, [r0, #8]
	movs r0, #5
	strb r0, [r7]
	ldr r1, _08061C18
	ldr r0, _08061C1C
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _08061C20
	ldr r0, _08061C24
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _08061C28
	strb r2, [r0, #0x10]
	ldr r0, _08061C2C
	ldr r0, [r0]
	adds r0, #0x2c
	strb r2, [r0]
	ldr r2, _08061C30
	ldr r1, _08061C34
	ldrh r0, [r1]
	strh r0, [r2]
	ldr r2, _08061C38
	adds r0, r2, #0
	strh r0, [r1]
	ldr r1, _08061C3C
	ldrb r0, [r7]
	strb r0, [r1]
	ldr r1, _08061C40
	ldr r0, _08061C44
	str r0, [r1]
	movs r0, #0
	bl SetAlphaBlending
	ldr r2, _08061C48
	ldrh r1, [r2]
	ldr r0, _08061C4C
	ands r0, r1
	strh r0, [r2]
	ldr r0, _08061C50
	strh r5, [r0]
	ldr r0, _08061C54
	ldr r0, [r0]
	bl audio_set_tune_vol
	ldr r0, _08061C58
	ldrb r0, [r0]
	cmp r0, #0
	beq _08061BFC
	ldr r3, _08061C5C
	adds r0, r3, #0
	adds r0, #0x70
	ldrh r0, [r0]
	ldr r2, _08061C60
	adds r1, r3, #0
	adds r1, #0x72
	ldrb r2, [r2]
	adds r1, r1, r2
	ldrb r1, [r1]
	ldr r2, [r3, #0x74]
	movs r3, #0x80
	lsls r3, r3, #9
	adds r2, r2, r3
	bl audio_new_fx
_08061BFC:
	ldr r1, _08061C64
	movs r0, #0xb
	strb r0, [r1]
	b _08061F68
	.align 2, 0
_08061C04: .4byte 0x0203FA4E
_08061C08: .4byte 0x0203FA51
_08061C0C: .4byte 0x080B1AE4
_08061C10: .4byte 0x0203FA38
_08061C14: .4byte 0x000004BE
_08061C18: .4byte 0x0203FA4F
_08061C1C: .4byte gBGOffsetHorizontal
_08061C20: .4byte 0x0203FA50
_08061C24: .4byte gBGOffsetVertical
_08061C28: .4byte gPlayerShadowSprite
_08061C2C: .4byte 0x0203FA3C
_08061C30: .4byte 0x0203FA4A
_08061C34: .4byte 0x04000050
_08061C38: .4byte 0x00003F61
_08061C3C: .4byte 0x0203FA52
_08061C40: .4byte gNullsub_5
_08061C44: .4byte 0x08061265
_08061C48: .4byte 0x04000008
_08061C4C: .4byte 0x0000FFFC
_08061C50: .4byte 0x0203FA48
_08061C54: .4byte dVolumes
_08061C58: .4byte gCanPlaySfx
_08061C5C: .4byte 0x080CE440
_08061C60: .4byte gSfxVolume
_08061C64: .4byte 0x0203FA34
_08061C68:
	ldr r5, _08061CEC
	ldrb r0, [r5]
	subs r0, #1
	strb r0, [r5]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08061CB4
	ldr r4, _08061CF0
	ldrb r1, [r4]
	ldr r3, _08061CF4
	ldr r2, [r3]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrb r1, [r0, #8]
	adds r1, #1
	strb r1, [r0, #8]
	movs r0, #5
	strb r0, [r5]
	ldrb r1, [r4]
	ldr r2, [r3]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrb r1, [r0, #8]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08061CB4
	ldr r0, _08061CF8
	ldrh r1, [r0]
	adds r1, #1
	strh r1, [r0]
	ldrh r0, [r0]
	bl SetAlphaBlending
_08061CB4:
	ldr r0, _08061CF0
	ldrb r1, [r0]
	ldr r0, _08061CF4
	ldr r2, [r0]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrb r0, [r0, #8]
	cmp r0, #0x28
	beq _08061CCC
	b _08061F68
_08061CCC:
	ldr r1, _08061CEC
	movs r0, #3
	strb r0, [r1]
	ldr r0, _08061CF8
	movs r1, #0
	strh r1, [r0]
	ldr r0, _08061CFC
	strh r1, [r0]
	ldr r1, _08061D00
	ldr r4, _08061D04
	adds r0, r4, #0
	strh r0, [r1]
	ldr r1, _08061D08
	movs r0, #0xc
	strb r0, [r1]
	b _08061F68
	.align 2, 0
_08061CEC: .4byte 0x0203FA4E
_08061CF0: .4byte 0x0203FA51
_08061CF4: .4byte 0x0203FA38
_08061CF8: .4byte 0x0203FA48
_08061CFC: .4byte 0x04000054
_08061D00: .4byte 0x04000050
_08061D04: .4byte 0x00003FBF
_08061D08: .4byte 0x0203FA34
_08061D0C:
	ldr r4, _08061D4C
	ldrb r0, [r4]
	subs r0, #1
	strb r0, [r4]
	lsls r0, r0, #0x18
	ldr r2, _08061D50
	cmp r0, #0
	bne _08061D2A
	movs r0, #3
	strb r0, [r4]
	ldrh r0, [r2]
	adds r0, #1
	strh r0, [r2]
	ldr r1, _08061D54
	strh r0, [r1]
_08061D2A:
	ldrh r0, [r2]
	cmp r0, #0x10
	beq _08061D32
	b _08061F68
_08061D32:
	ldr r1, _08061D58
	ldr r0, _08061D5C
	ldrb r0, [r0]
	adds r0, r0, r1
	ldrb r0, [r0]
	bl sub_08019FCC
	movs r0, #3
	strb r0, [r4]
	ldr r1, _08061D60
	movs r0, #0xd
	strb r0, [r1]
	b _08061F68
	.align 2, 0
_08061D4C: .4byte 0x0203FA4E
_08061D50: .4byte 0x0203FA48
_08061D54: .4byte 0x04000054
_08061D58: .4byte 0x080CF460
_08061D5C: .4byte 0x0203FA4D
_08061D60: .4byte 0x0203FA34
_08061D64:
	ldr r5, _08061DC8
	ldrb r0, [r5]
	subs r0, #1
	strb r0, [r5]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08061D9C
	movs r0, #3
	strb r0, [r5]
	ldr r2, _08061DCC
	ldrh r0, [r2]
	subs r0, #1
	strh r0, [r2]
	ldr r1, _08061DD0
	strh r0, [r1]
	ldr r4, _08061DD4
	ldr r0, _08061DD8
	ldrb r3, [r0]
	ldrh r1, [r2]
	movs r0, #0x10
	subs r0, r0, r1
	muls r0, r3, r0
	asrs r0, r0, #4
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	bl audio_set_tune_vol
_08061D9C:
	ldr r2, _08061DCC
	ldrh r0, [r2]
	cmp r0, #0
	beq _08061DA6
	b _08061F68
_08061DA6:
	ldr r1, _08061DDC
	ldr r3, _08061DE0
	adds r0, r3, #0
	strh r0, [r1]
	movs r1, #0xf
	strh r1, [r2]
	movs r0, #5
	strb r0, [r5]
	ldr r0, _08061DE4
	strb r1, [r0]
	bl sub_8061244
	movs r0, #6
	bl start_script
	b _08061F68
	.align 2, 0
_08061DC8: .4byte 0x0203FA4E
_08061DCC: .4byte 0x0203FA48
_08061DD0: .4byte 0x04000054
_08061DD4: .4byte dVolumes
_08061DD8: .4byte gBgmMainVolume
_08061DDC: .4byte 0x04000050
_08061DE0: .4byte 0x00003F61
_08061DE4: .4byte 0x0203FA34
_08061DE8:
	ldr r5, _08061EB0
	ldrb r0, [r5]
	subs r0, #1
	strb r0, [r5]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08061E38
	ldr r4, _08061EB4
	ldrb r1, [r4]
	ldr r3, _08061EB8
	ldr r2, [r3]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrb r1, [r0, #8]
	subs r1, #1
	strb r1, [r0, #8]
	movs r0, #5
	strb r0, [r5]
	ldrb r1, [r4]
	ldr r2, [r3]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrb r1, [r0, #8]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08061E38
	ldr r1, _08061EBC
	ldrh r0, [r1]
	cmp r0, #0
	beq _08061E38
	subs r0, #1
	strh r0, [r1]
	ldrh r0, [r1]
	bl SetAlphaBlending
_08061E38:
	ldr r0, _08061EB4
	ldrb r1, [r0]
	ldr r0, _08061EB8
	ldr r2, [r0]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrb r0, [r0, #8]
	cmp r0, #0
	beq _08061E50
	b _08061F68
_08061E50:
	ldr r0, _08061EC0
	ldrb r0, [r0]
	cmp r0, #0
	beq _08061E5A
	b _08061F68
_08061E5A:
	ldr r1, _08061EC4
	ldr r0, _08061EC8
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _08061ECC
	ldr r0, _08061ED0
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r2, _08061ED4
	ldrh r0, [r2]
	movs r1, #3
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _08061ED8
	ldr r0, _08061EDC
	ldrh r0, [r0]
	strh r0, [r1]
	movs r0, #7
	bl SetAlphaBlending
	ldr r1, _08061EE0
	ldr r0, _08061EE4
	str r0, [r1]
	ldr r1, _08061EE8
	ldr r0, _08061EEC
	str r0, [r1]
	ldr r1, _08061EF0
	ldr r0, _08061EF4
	str r0, [r1]
	ldr r0, _08061EF8
	movs r1, #1
	strb r1, [r0, #0x10]
	ldr r0, _08061EFC
	ldr r0, [r0]
	adds r0, #0x2c
	strb r1, [r0]
	bl restore_full_health
	ldr r1, _08061F00
	movs r0, #0x10
	strb r0, [r1]
	b _08061F68
	.align 2, 0
_08061EB0: .4byte 0x0203FA4E
_08061EB4: .4byte 0x0203FA51
_08061EB8: .4byte 0x0203FA38
_08061EBC: .4byte 0x0203FA48
_08061EC0: .4byte byte_203F99C
_08061EC4: .4byte gBGOffsetHorizontal
_08061EC8: .4byte 0x0203FA4F
_08061ECC: .4byte gBGOffsetVertical
_08061ED0: .4byte 0x0203FA50
_08061ED4: .4byte 0x04000008
_08061ED8: .4byte 0x04000050
_08061EDC: .4byte 0x0203FA4A
_08061EE0: .4byte gNullsub_3
_08061EE4: .4byte 0x08009DD5
_08061EE8: .4byte gNullsub_4
_08061EEC: .4byte 0x08009DD9
_08061EF0: .4byte gNullsub_5
_08061EF4: .4byte 0x08009DDD
_08061EF8: .4byte gPlayerShadowSprite
_08061EFC: .4byte 0x0203FA3C
_08061F00: .4byte 0x0203FA34
_08061F04:
	ldr r0, _08061F28
	ldr r0, [r0]
	movs r1, #3
	bl Free
	ldr r0, _08061F2C
	ldr r0, [r0]
	movs r1, #3
	bl Free
	ldr r0, _08061F30
	ldrb r0, [r0]
	cmp r0, #0
	beq _08061F38
	ldr r1, _08061F34
	movs r0, #0x13
	strb r0, [r1]
	b _08061F68
	.align 2, 0
_08061F28: .4byte gMatrices
_08061F2C: .4byte 0x0203FA38
_08061F30: .4byte 0x0203FA53
_08061F34: .4byte 0x0203FA34
_08061F38:
	ldr r0, _08061F48
	ldrb r0, [r0]
	cmp r0, #0
	bne _08061F68
	ldr r1, _08061F4C
	movs r0, #0x11
	strb r0, [r1]
	b _08061F68
	.align 2, 0
_08061F48: .4byte byte_203F99C
_08061F4C: .4byte 0x0203FA34
_08061F50:
	movs r0, #0x13
	strb r0, [r3]
	b _08061F68
_08061F56:
	movs r1, #0
	strb r1, [r3]
	ldr r0, _08061F78
	strb r1, [r0]
	bl sub_8030934
	ldr r1, _08061F7C
	movs r0, #0
	str r0, [r1]
_08061F68:
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08061F78: .4byte byte_203FA35
_08061F7C: .4byte gMatricesCount

    .thumb
    .global sub_8061F80
sub_8061F80: @ 0x08061F80
	push {r4, r5, lr}
	ldr r0, _08061FD0
	ldrb r0, [r0]
	cmp r0, #0
	beq _08061FC8
	subs r0, #6
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #9
	bhi _08061FB0
	movs r4, #0
	ldr r5, _08061FD4
_08061F98:
	lsls r1, r4, #3
	subs r1, r1, r4
	lsls r1, r1, #2
	ldr r0, [r5]
	adds r0, r0, r1
	bl sprite_render
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #4
	bls _08061F98
_08061FB0:
	ldr r0, _08061FD8
	ldrb r0, [r0]
	cmp r0, #0
	beq _08061FC8
	ldr r4, _08061FDC
	ldr r0, [r4]
	bl sprite_render
	ldr r0, [r4]
	adds r0, #0x1c
	bl sprite_render
_08061FC8:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08061FD0: .4byte 0x0203FA34
_08061FD4: .4byte 0x0203FA38
_08061FD8: .4byte 0x0203FA54
_08061FDC: .4byte 0x0203FA3C

	.thumb
sub_8061FE0: @ 0x08061FE0
	ldr r0, _08061FEC
	movs r1, #0
	str r1, [r0]
	ldr r0, _08061FF0
	str r1, [r0]
	bx lr
	.align 2, 0
_08061FEC: .4byte 0x0203FA60
_08061FF0: .4byte 0x0203FA5C

    .thumb
sub_8061FF4: @ 0x08061FF4
	push {lr}
	ldr r0, _0806201C
	ldr r0, [r0]
	bl sub_8009D7C
	ldr r0, _08062020
	ldr r0, [r0]
	bl sub_8009D7C
	ldr r0, _08062024
	ldrb r0, [r0]
	bl sub_8009D7C
	ldr r0, _08062028
	ldr r0, [r0]
	bl sub_8009D7C
	pop {r0}
	bx r0
	.align 2, 0
_0806201C: .4byte 0x0203FA5C
_08062020: .4byte 0x0203FA60
_08062024: .4byte 0x0203FA58
_08062028: .4byte 0x0203FA64

    .thumb
sub_806202C: @ 0x0806202C
	push {r4, lr}
	bl sub_8009DAC
	ldr r1, _08062054
	str r0, [r1]
	ldr r4, _08062058
	bl sub_8009DAC
	strb r0, [r4]
	bl sub_8009DAC
	ldr r1, _0806205C
	str r0, [r1]
	ldr r4, _08062060
	bl sub_8009DAC
	str r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08062054: .4byte 0x0203FA64
_08062058: .4byte 0x0203FA58
_0806205C: .4byte 0x0203FA60
_08062060: .4byte 0x0203FA5C

    .thumb
    .global sub_8062064
sub_8062064: @ 0x08062064
	push {r4, r5, lr}
	adds r4, r0, #0
	cmp r1, #1
	beq _08062072
	cmp r1, #2
	beq _08062078
	b _0806207E
_08062072:
	bl sub_8061FF4
	b _0806207E
_08062078:
	bl sub_806202C
	b _080620AE
_0806207E:
	ldr r5, _080620B4
	ldr r0, [r5]
	cmp r0, #0
	beq _08062090
	movs r1, #2
	bl Free
	movs r0, #0
	str r0, [r5]
_08062090:
	cmp r4, #0
	beq _080620A4
	lsls r0, r4, #1
	adds r0, r0, r4
	lsls r0, r0, #4
	movs r1, #0xc
	movs r2, #2
	bl Alloc
	str r0, [r5]
_080620A4:
	ldr r0, _080620B8
	movs r1, #0
	str r1, [r0]
	ldr r0, _080620BC
	str r4, [r0]
_080620AE:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080620B4: .4byte 0x0203FA5C
_080620B8: .4byte 0x0203FA60
_080620BC: .4byte 0x0203FA64

    .thumb
sub_80620C0: @ 0x080620C0
	push {r4, r5, r6, lr}
	sub sp, #0xc
	ldr r5, [r0]
	movs r6, #0
	ldr r0, [r5, #0x4c]
	asrs r0, r0, #1
	str r0, [sp]
	ldr r0, [r5, #0x50]
	str r0, [sp, #4]
	ldr r0, [r5, #0x54]
	asrs r0, r0, #1
	str r0, [sp, #8]
	adds r0, r5, #0
	adds r0, #0x94
	ldr r1, _08062124
	ldrh r3, [r1]
	mov r1, sp
	movs r2, #0
	bl sub_8003A74
	cmp r0, #0
	beq _08062134
	ldrh r1, [r5, #0x1e]
	ldr r4, _08062128
	ldr r0, [r4]
	adds r0, r0, r1
	ldrb r0, [r0]
	ldr r3, _0806212C
	ldr r1, [r3]
	movs r2, #0xd8
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0xb3
	strb r6, [r0]
	ldrh r1, [r5, #0x1e]
	ldr r0, [r4]
	adds r0, r0, r1
	ldrb r0, [r0]
	ldr r1, [r3]
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x48
	movs r1, #1
	strb r1, [r0]
	ldr r1, _08062130
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	movs r6, #1
	b _0806214E
	.align 2, 0
_08062124: .4byte gMapPixelSizeY
_08062128: .4byte 0x0203DFC0
_0806212C: .4byte 0x0203DFBC
_08062130: .4byte 0x0203DFE5
_08062134:
	ldrh r1, [r5, #0x1e]
	ldr r0, _080621AC
	ldr r0, [r0]
	adds r0, r0, r1
	ldrb r2, [r0]
	ldr r0, _080621B0
	ldr r1, [r0]
	movs r0, #0xd8
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0xb3
	movs r1, #1
	strb r1, [r0]
_0806214E:
	adds r0, r5, #0
	adds r0, #0x94
	ldrb r1, [r5, #9]
	rsbs r1, r1, #0
	ldr r2, _080621B4
	ldrh r2, [r2]
	bl sub_8003A7C
	cmp r0, #0
	beq _080621BC
	adds r0, r5, #0
	adds r0, #0x2f
	ldrb r3, [r0]
	cmp r3, #0
	bne _08062184
	ldrh r1, [r5, #0x1e]
	ldr r0, _080621AC
	ldr r0, [r0]
	adds r0, r0, r1
	ldrb r2, [r0]
	ldr r0, _080621B0
	ldr r1, [r0]
	movs r0, #0xd8
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0xcf
	strb r3, [r0]
_08062184:
	cmp r6, #0
	bne _080621FC
	ldrh r1, [r5, #0x1e]
	ldr r0, _080621AC
	ldr r0, [r0]
	adds r0, r0, r1
	ldrb r2, [r0]
	ldr r0, _080621B0
	ldr r1, [r0]
	movs r0, #0xd8
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x48
	movs r1, #1
	strb r1, [r0]
	ldr r1, _080621B8
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	b _080621FC
	.align 2, 0
_080621AC: .4byte 0x0203DFC0
_080621B0: .4byte 0x0203DFBC
_080621B4: .4byte gMapPixelSizeY
_080621B8: .4byte 0x0203DFE5
_080621BC:
	adds r0, r5, #0
	adds r0, #0x2f
	ldrb r0, [r0]
	cmp r0, #0
	bne _080621E0
	ldrh r1, [r5, #0x1e]
	ldr r0, _08062204
	ldr r0, [r0]
	adds r0, r0, r1
	ldrb r2, [r0]
	ldr r0, _08062208
	ldr r1, [r0]
	movs r0, #0xd8
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0xcf
	movs r1, #1
	strb r1, [r0]
_080621E0:
	cmp r6, #0
	bne _080621FC
	ldrh r1, [r5, #0x1e]
	ldr r0, _08062204
	ldr r0, [r0]
	adds r0, r0, r1
	ldrb r2, [r0]
	ldr r0, _08062208
	ldr r1, [r0]
	movs r0, #0xd8
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x48
	strb r6, [r0]
_080621FC:
	add sp, #0xc
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08062204: .4byte 0x0203DFC0
_08062208: .4byte 0x0203DFBC

    .thumb
    .global sub_0806220C
sub_0806220C: @ 0x0806220C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x2c
	adds r7, r0, #0
	adds r6, r1, #0
	adds r1, r2, #0
	ldr r5, _080623E8
	ldr r0, [r5]
	lsls r4, r6, #1
	adds r4, r4, r6
	lsls r4, r4, #4
	adds r0, r4, r0
	str r7, [r0]
	str r1, [r0, #4]
	movs r0, #0
	bl sub_800385C
	ldr r0, [r5]
	adds r0, r4, r0
	ldr r0, [r0, #4]
	ldr r2, _080623EC
	ldr r1, _080623F0
	mov r8, r1
	ldrb r1, [r1, #0xe]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl sub_800389C
	ldr r0, [r5]
	adds r4, r4, r0
	ldr r0, [r4, #4]
	ldr r2, _080623F4
	ldr r1, _080623F8
	ldrb r1, [r1, #2]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl sub_8003894
	ldrb r0, [r7, #0xc]
	cmp r0, #0xff
	bne _0806226C
	.2byte 0xEE00, 0xEE00
_0806226C:
	adds r3, r7, #0
	adds r3, #0x94
	movs r2, #2
	ldrsh r4, [r3, r2]
	mov r0, r8
	ldr r2, [r0, #0x48]
	ldrb r1, [r7, #0xc]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r2, r2, r0
	movs r1, #4
	ldrsh r0, [r2, r1]
	mov sl, r3
	movs r3, #0x98
	adds r3, r3, r7
	mov r8, r3
	movs r1, #0x9c
	adds r1, r1, r7
	mov sb, r1
	cmp r4, r0
	bne _080622BA
	ldr r3, [r3]
	asrs r1, r3, #0x10
	movs r4, #6
	ldrsh r0, [r2, r4]
	cmp r1, r0
	bne _080622BA
	ldr r0, _080623FC
	ldrh r1, [r0]
	mov r4, sb
	ldr r0, [r4]
	adds r0, r0, r3
	asrs r0, r0, #0x10
	subs r1, r1, r0
	movs r3, #8
	ldrsh r0, [r2, r3]
	cmp r1, r0
	beq _080622BE
_080622BA:
	.2byte 0xEE00, 0xEE00
_080622BE:
	ldr r5, _080623E8
	ldr r1, [r5]
	lsls r4, r6, #1
	adds r4, r4, r6
	lsls r4, r4, #4
	adds r1, r4, r1
	mov r2, sl
	ldr r0, [r2]
	str r0, [r1, #0x14]
	mov r3, r8
	ldr r0, [r3]
	str r0, [r1, #0x18]
	mov r2, sb
	ldr r0, [r2]
	str r0, [r1, #0x1c]
	ldrb r0, [r7, #0xc]
	adds r1, #0x22
	movs r6, #0
	strb r0, [r1]
	ldr r0, [r5]
	adds r0, r0, r4
	bl sub_08062518
	ldr r0, [r5]
	adds r4, r4, r0
	ldrb r0, [r7, #9]
	lsls r0, r0, #0x10
	str r0, [r4, #0x2c]
	adds r4, #0x26
	strb r6, [r4]
	ldr r1, _08062400
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r1, _08062404
	ldr r1, [r1]
	cmp r0, r1
	ble _0806230E
	.2byte 0xEE00, 0xEE00
_0806230E:
	ldrh r1, [r7, #2]
	ldr r0, _08062408
	movs r3, #0
	ldrsh r0, [r0, r3]
	subs r1, r1, r0
	str r1, [sp, #0x28]
	ldrh r1, [r7, #4]
	ldr r0, _0806240C
	movs r4, #0
	ldrsh r0, [r0, r4]
	subs r5, r1, r0
	adds r4, r7, #0
	adds r4, #0xbc
	movs r6, #1
	str r6, [sp]
	ldr r0, [sp, #0x28]
	str r0, [sp, #4]
	str r5, [sp, #8]
	movs r0, #2
	str r0, [sp, #0xc]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl SetSprite
	add r2, sp, #0x1c
	mov r1, sl
	ldr r0, [r1]
	str r0, [sp, #0x1c]
	ldrb r1, [r7, #9]
	lsls r1, r1, #0x10
	mov r3, r8
	ldr r0, [r3]
	subs r0, r0, r1
	str r0, [r2, #4]
	mov r1, sb
	ldr r0, [r1]
	str r0, [r2, #8]
	ldr r0, _080623FC
	ldrh r2, [r0]
	mov r0, sl
	movs r1, #0
	bl sub_8003A7C
	cmp r0, #0
	beq _08062376
	adds r0, r7, #0
	adds r0, #0x2f
	ldrb r0, [r0]
	cmp r0, #0
	beq _0806237C
_08062376:
	adds r0, r7, #0
	adds r0, #0xcf
	strb r6, [r0]
_0806237C:
	ldrb r0, [r7, #9]
	subs r5, r5, r0
	adds r6, r7, #0
	adds r6, #0xa0
	ldrh r1, [r7]
	ldr r2, _08062410
	adds r1, r1, r2
	movs r0, #0
	str r0, [sp]
	ldr r3, [sp, #0x28]
	str r3, [sp, #4]
	str r5, [sp, #8]
	movs r0, #2
	str r0, [sp, #0xc]
	adds r0, r6, #0
	movs r2, #0
	movs r3, #0
	bl SetSprite
	ldr r0, [r7, #0x4c]
	asrs r0, r0, #1
	str r0, [sp, #0x10]
	ldr r0, [r7, #0x50]
	str r0, [sp, #0x14]
	ldr r0, [r7, #0x54]
	asrs r0, r0, #1
	str r0, [sp, #0x18]
	ldr r0, _080623FC
	ldrh r3, [r0]
	mov r0, sl
	add r1, sp, #0x10
	movs r2, #0
	bl sub_8003A74
	cmp r0, #0
	bne _080623CC
	adds r1, r7, #0
	adds r1, #0xb3
	movs r0, #1
	strb r0, [r1]
_080623CC:
	ldrb r1, [r7, #8]
	adds r0, r6, #0
	bl sprite_set_priority
	adds r2, r4, #0
	ldrb r3, [r7, #9]
	ldr r0, _08062414
	ldr r0, [r0]
	cmp r3, r0
	blt _0806241C
	ldr r1, _08062418
	subs r0, #1
	adds r0, r0, r1
	b _08062420
	.align 2, 0
_080623E8: .4byte 0x0203FA5C
_080623EC: .4byte dword_80CC844
_080623F0: .4byte gRoomHeader
_080623F4: .4byte dword_80CC818
_080623F8: .4byte 0x030028FC
_080623FC: .4byte gMapPixelSizeY
_08062400: .4byte 0x0203FA60
_08062404: .4byte 0x0203FA64
_08062408: .4byte gCameraPixelX
_0806240C: .4byte gCameraPixelY
_08062410: .4byte 0x00000221
_08062414: .4byte dword_80CEBC4
_08062418: .4byte byte_80CEB84
_0806241C:
	ldr r0, _08062440
	adds r0, r3, r0
_08062420:
	ldrb r1, [r0]
	adds r0, r2, #0
	bl sprite_set_locked_frame
	adds r0, r4, #0
	bl sprite_lock_anim
	add sp, #0x2c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08062440: .4byte byte_80CEB84

    .thumb
	.global sub_8062444
sub_8062444: @ 0x08062444
	push {r4, r5, lr}
	ldr r5, _08062480
	lsls r4, r0, #1
	adds r4, r4, r0
	lsls r4, r4, #4
	ldr r5, [r5]
	adds r5, r5, r4
	ldr r0, [r5]
	mov ip, r0
	adds r0, #0x94
	ldr r0, [r0]
	ldr r4, [r5, #0x14]
	subs r0, r0, r4
	str r0, [r1]
	mov r0, ip
	adds r0, #0x98
	ldr r0, [r0]
	ldr r1, [r5, #0x18]
	subs r0, r0, r1
	str r0, [r2]
	mov r0, ip
	adds r0, #0x9c
	ldr r0, [r0]
	ldr r1, [r5, #0x1c]
	subs r0, r0, r1
	str r0, [r3]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08062480: .4byte 0x0203FA5C

    .thumb
    .global sub_8062484
sub_8062484: @ 0x08062484
	push {r4, r5, r6, lr}
	ldr r1, _08062508
	movs r0, #0
	strb r0, [r1]
	movs r6, #0
	ldr r0, _0806250C
	ldr r0, [r0]
	cmp r6, r0
	bge _08062500
	ldr r5, _08062510
	movs r4, #0
_0806249A:
	ldr r0, [r5]
	adds r1, r4, r0
	ldr r0, [r1]
	adds r0, #0x2e
	ldrb r0, [r0]
	cmp r0, #0
	beq _080624F4
	adds r0, r1, #0
	bl sub_80620C0
	ldr r0, [r5]
	adds r1, r4, r0
	adds r0, r1, #0
	adds r0, #0x26
	ldrb r0, [r0]
	cmp r0, #0
	bne _080624F4
	ldr r0, [r1]
	bl sub_8034310
	cmp r0, #0
	beq _080624F4
	ldr r0, [r5]
	adds r0, r4, r0
	ldr r1, [r0]
	ldrh r0, [r1]
	movs r2, #0x1c
	ldrsh r1, [r1, r2]
	bl sub_80342CC
	cmp r0, #0
	bne _080624F4
	ldr r0, _08062514
	ldrb r0, [r0]
	cmp r0, #0
	bne _080624F4
	ldr r0, [r5]
	adds r0, r4, r0
	ldr r0, [r0, #4]
	bl sub_80038A4
	ldr r0, [r5]
	adds r0, r0, r4
	bl sub_80628A8
_080624F4:
	adds r4, #0x30
	adds r6, #1
	ldr r0, _0806250C
	ldr r0, [r0]
	cmp r6, r0
	blt _0806249A
_08062500:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08062508: .4byte 0x0203DFE5
_0806250C: .4byte 0x0203FA60
_08062510: .4byte 0x0203FA5C
_08062514: .4byte 0x0203FA58

    .thumb
sub_08062518: @ 0x08062518
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r6, r0, #0
	ldr r3, [r6]
	ldr r0, _08062674
	mov sl, r0
	ldr r2, [r0, #0x48]
	adds r4, r6, #0
	adds r4, #0x22
	ldrb r1, [r4]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r2, r2, r0
	ldrb r0, [r2, #0x13]
	strb r0, [r3, #8]
	mov r1, sl
	ldr r3, [r1, #0x48]
	ldrb r1, [r4]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r3, r0
	ldrb r0, [r0, #0x14]
	adds r1, r6, #0
	adds r1, #0x27
	strb r0, [r1]
	ldrb r1, [r4]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r3, r0
	ldrh r0, [r0, #0x16]
	strh r0, [r6, #0x28]
	ldrb r0, [r4]
	movs r1, #0x23
	adds r1, r1, r6
	mov sb, r1
	strb r0, [r1]
	ldrb r1, [r4]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r3, r0
	ldrb r0, [r0, #0x11]
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _08062586
	.2byte 0xEE00, 0xEE00
_08062586:
	ldrb r1, [r4]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r3, r0
	movs r1, #4
	ldrsh r0, [r0, r1]
	lsls r0, r0, #0x10
	str r0, [r6, #8]
	ldrb r1, [r4]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r3, r0
	movs r1, #6
	ldrsh r0, [r0, r1]
	lsls r0, r0, #0x10
	str r0, [r6, #0xc]
	ldr r0, _08062678
	ldrh r2, [r0]
	ldrb r1, [r4]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r3, r0
	movs r4, #8
	ldrsh r1, [r0, r4]
	movs r4, #6
	ldrsh r0, [r0, r4]
	adds r1, r1, r0
	subs r2, r2, r1
	lsls r2, r2, #0x10
	str r2, [r6, #0x10]
	mov r0, sb
	ldrb r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r3, r0
	ldrh r0, [r0, #0xa]
	strh r0, [r6, #0x20]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080625F8
	ldr r1, [r6]
	adds r0, r1, #0
	adds r0, #0x94
	ldr r0, [r0]
	str r0, [r6, #0x14]
	adds r0, r1, #0
	adds r0, #0x98
	ldr r0, [r0]
	str r0, [r6, #0x18]
	adds r0, r1, #0
	adds r0, #0x9c
	ldr r0, [r0]
	str r0, [r6, #0x1c]
_080625F8:
	movs r1, #0xe
	ldrsh r3, [r6, r1]
	mov r4, sl
	ldr r2, [r4, #0x48]
	mov r0, sb
	ldrb r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r2, r2, r0
	movs r1, #6
	ldrsh r0, [r2, r1]
	cmp r3, r0
	bne _080626B6
	ldr r0, [r6, #4]
	bl sub_800387C
	ldr r1, [r6]
	adds r0, r1, #0
	adds r0, #0x94
	ldr r2, [r6, #8]
	ldr r0, [r0]
	subs r2, r2, r0
	mov r8, r2
	adds r1, #0x9c
	ldr r2, [r6, #0x10]
	ldr r0, [r1]
	subs r7, r2, r0
	mov r0, r8
	bl Abs
	adds r4, r0, #0
	adds r0, r7, #0
	bl Abs
	cmp r4, r0
	bls _0806267C
	ldr r5, [r6, #4]
	mov r4, sl
	ldr r1, [r4, #0x48]
	mov r0, sb
	ldrb r2, [r0]
	lsls r0, r2, #2
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r1, #0xc
	adds r1, r1, r0
	ldr r4, [r1]
	adds r0, r7, #0
	mov r1, r8
	bl sub_80039AC
	adds r2, r0, #0
	adds r0, r5, #0
	adds r1, r4, #0
	movs r3, #0
	bl sub_8003884
	adds r1, r6, #0
	adds r1, #0x25
	movs r0, #0
	b _080626AC
	.align 2, 0
_08062674: .4byte gRoomHeader
_08062678: .4byte gMapPixelSizeY
_0806267C:
	ldr r5, [r6, #4]
	mov r4, sl
	ldr r1, [r4, #0x48]
	mov r0, sb
	ldrb r2, [r0]
	lsls r0, r2, #2
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r1, #0xc
	adds r1, r1, r0
	ldr r4, [r1]
	mov r0, r8
	adds r1, r7, #0
	bl sub_80039B4
	adds r2, r0, #0
	adds r0, r5, #0
	adds r1, r4, #0
	movs r3, #0
	bl sub_8003884
	adds r1, r6, #0
	adds r1, #0x25
	movs r0, #2
_080626AC:
	strb r0, [r1]
	adds r1, r6, #0
	adds r1, #0x24
	movs r0, #0
	b _08062708
_080626B6:
	ldr r0, [r6, #4]
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_8003884
	movs r1, #0xe
	ldrsh r2, [r6, r1]
	mov r0, sl
	ldr r4, [r0, #0x48]
	mov r0, sb
	ldrb r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r3, r0, #2
	adds r0, r4, r3
	movs r1, #6
	ldrsh r0, [r0, r1]
	cmp r2, r0
	ble _080626F0
	ldr r0, [r6, #4]
	adds r1, r4, #0
	adds r1, #0xc
	adds r1, r1, r3
	ldr r1, [r1]
	movs r2, #0
	bl CallARM_store_jump_and_other_value
	b _08062702
_080626F0:
	ldr r0, [r6, #4]
	adds r1, r4, #0
	adds r1, #0xc
	adds r1, r1, r3
	ldr r1, [r1]
	rsbs r1, r1, #0
	movs r2, #0
	bl CallARM_store_jump_and_other_value
_08062702:
	adds r1, r6, #0
	adds r1, #0x24
	movs r0, #1
_08062708:
	strb r0, [r1]
	ldr r0, _08062738
	ldr r2, [r0, #0x48]
	adds r0, r6, #0
	adds r0, #0x23
	ldrb r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r2, r2, r0
	ldrb r0, [r2, #0x10]
	cmp r0, #0
	bne _0806272A
	adds r1, r6, #0
	adds r1, #0x26
	movs r0, #1
	strb r0, [r1]
_0806272A:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08062738: .4byte gRoomHeader

    .thumb
sub_806273C: @ 0x0806273C
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	mov ip, r0
	ldr r3, [r0, #0x4c]
	asrs r3, r3, #1
	ldr r5, [r1]
	subs r4, r5, r3
	ldr r6, _080628A4
	ldrh r2, [r0]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #3
	adds r0, r0, r6
	movs r2, #0
	ldrsh r0, [r0, r2]
	lsls r0, r0, #0x10
	adds r4, r4, r0
	mov r0, ip
	str r4, [r0, #0x64]
	adds r3, r5, r3
	ldrh r2, [r0]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #3
	adds r0, r0, r6
	movs r2, #0
	ldrsh r0, [r0, r2]
	lsls r0, r0, #0x10
	adds r3, r3, r0
	mov r0, ip
	str r3, [r0, #0x70]
	ldr r4, [r1, #4]
	ldr r3, [r0, #0x50]
	adds r3, r4, r3
	ldrh r2, [r0]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #3
	adds r0, r0, r6
	movs r2, #2
	ldrsh r0, [r0, r2]
	lsls r0, r0, #0x10
	adds r3, r3, r0
	mov r0, ip
	str r3, [r0, #0x74]
	ldrh r2, [r0]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #3
	adds r0, r0, r6
	movs r2, #2
	ldrsh r0, [r0, r2]
	lsls r0, r0, #0x10
	adds r0, r4, r0
	mov r2, ip
	str r0, [r2, #0x68]
	ldr r2, [r2, #0x54]
	asrs r2, r2, #1
	ldr r1, [r1, #8]
	mov r8, r1
	subs r3, r1, r2
	mov r0, ip
	ldrh r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r6
	movs r1, #4
	ldrsh r0, [r0, r1]
	lsls r0, r0, #0x10
	adds r3, r3, r0
	mov r0, ip
	str r3, [r0, #0x6c]
	add r2, r8
	ldrh r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r6
	movs r1, #4
	ldrsh r0, [r0, r1]
	lsls r0, r0, #0x10
	adds r2, r2, r0
	mov r0, ip
	str r2, [r0, #0x78]
	ldr r3, [r0, #0x58]
	asrs r3, r3, #1
	subs r2, r5, r3
	ldrh r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r6
	movs r1, #6
	ldrsh r0, [r0, r1]
	lsls r0, r0, #0x10
	adds r2, r2, r0
	mov r0, ip
	str r2, [r0, #0x7c]
	mov r2, ip
	adds r2, #0x88
	adds r5, r5, r3
	ldrh r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r6
	movs r1, #6
	ldrsh r0, [r0, r1]
	lsls r0, r0, #0x10
	adds r5, r5, r0
	str r5, [r2]
	subs r2, #8
	mov r0, ip
	ldrh r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r6
	movs r1, #8
	ldrsh r0, [r0, r1]
	lsls r0, r0, #0x10
	adds r0, r4, r0
	str r0, [r2]
	adds r2, #0xc
	mov r1, ip
	ldr r0, [r1, #0x5c]
	adds r4, r4, r0
	ldrh r1, [r1]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r6
	movs r1, #8
	ldrsh r0, [r0, r1]
	lsls r0, r0, #0x10
	adds r4, r4, r0
	str r4, [r2]
	mov r3, ip
	adds r3, #0x90
	mov r2, ip
	ldr r1, [r2, #0x60]
	asrs r1, r1, #1
	add r1, r8
	ldrh r2, [r2]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #3
	adds r0, r0, r6
	movs r2, #0xa
	ldrsh r0, [r0, r2]
	lsls r0, r0, #0x10
	adds r1, r1, r0
	str r1, [r3]
	mov r2, ip
	adds r2, #0x84
	mov r1, ip
	ldr r0, [r1, #0x60]
	asrs r0, r0, #1
	mov r1, r8
	subs r1, r1, r0
	mov r8, r1
	mov r0, ip
	ldrh r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r6
	movs r1, #0xa
	ldrsh r0, [r0, r1]
	lsls r0, r0, #0x10
	add r8, r0
	mov r0, r8
	str r0, [r2]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080628A4: .4byte 0x080CCFFC

    .thumb
sub_80628A8: @ 0x080628A8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0xc
	adds r5, r0, #0
	ldr r7, [r5]
	adds r6, r7, #0
	adds r6, #0x94
	ldrh r0, [r5, #0x20]
	cmp r0, #0
	beq _080628C4
	subs r0, #1
	strh r0, [r5, #0x20]
	b _080629D6
_080628C4:
	ldr r0, [r6]
	str r0, [r5, #0x14]
	ldr r0, [r6, #4]
	str r0, [r5, #0x18]
	ldr r0, [r6, #8]
	str r0, [r5, #0x1c]
	ldr r0, [r5, #4]
	add r2, sp, #4
	add r3, sp, #8
	mov r1, sp
	bl sub_80038C4
	ldr r0, [r6]
	ldr r1, [sp]
	adds r0, r0, r1
	str r0, [r6]
	ldr r0, [r5, #0x2c]
	ldr r1, [sp, #4]
	adds r0, r0, r1
	str r0, [r5, #0x2c]
	lsrs r0, r0, #0x10
	strb r0, [r7, #9]
	ldr r0, [r6, #4]
	ldr r1, [sp, #4]
	adds r0, r0, r1
	str r0, [r6, #4]
	ldr r0, [r6, #8]
	ldr r1, [sp, #8]
	adds r0, r0, r1
	str r0, [r6, #8]
	movs r1, #2
	ldrsh r0, [r6, r1]
	strh r0, [r7, #2]
	ldr r2, _08062930
	ldr r1, [r6, #8]
	ldr r0, [r6, #4]
	adds r1, r1, r0
	asrs r1, r1, #0x10
	ldrh r0, [r2]
	subs r0, r0, r1
	ldrb r1, [r7, #9]
	adds r0, r0, r1
	strh r0, [r7, #4]
	adds r2, r7, #0
	adds r2, #0xbc
	ldrb r1, [r7, #9]
	ldr r0, _08062934
	ldr r0, [r0]
	cmp r1, r0
	blt _0806293C
	ldr r1, _08062938
	subs r0, #1
	adds r0, r0, r1
	b _08062940
	.align 2, 0
_08062930: .4byte gMapPixelSizeY
_08062934: .4byte dword_80CEBC4
_08062938: .4byte byte_80CEB84
_0806293C:
	ldr r0, _080629E4
	adds r0, r1, r0
_08062940:
	ldrb r1, [r0]
	adds r0, r2, #0
	bl sprite_set_locked_frame
	movs r0, #0x24
	adds r0, r0, r5
	mov r8, r0
	ldrb r0, [r0]
	cmp r0, #0
	beq _08062972
	ldr r0, [r6, #4]
	ldr r1, [r5, #0xc]
	subs r0, r0, r1
	bl Abs
	adds r4, r0, #0
	ldr r0, [sp, #4]
	bl Abs
	cmp r4, r0
	blo _080629B2
	mov r1, r8
	ldrb r0, [r1]
	cmp r0, #0
	bne _080629CE
_08062972:
	movs r0, #0x25
	adds r0, r0, r5
	mov r8, r0
	ldrb r0, [r0]
	cmp r0, #0
	bne _08062994
	ldr r0, [r6]
	ldr r1, [r5, #8]
	subs r0, r0, r1
	bl Abs
	adds r4, r0, #0
	ldr r0, [sp]
	bl Abs
	cmp r4, r0
	blo _080629B2
_08062994:
	mov r1, r8
	ldrb r0, [r1]
	cmp r0, #2
	bne _080629CE
	ldr r0, [r6, #8]
	ldr r1, [r5, #0x10]
	subs r0, r0, r1
	bl Abs
	adds r4, r0, #0
	ldr r0, [sp, #8]
	bl Abs
	cmp r4, r0
	bhs _080629CE
_080629B2:
	ldr r0, [r5, #8]
	str r0, [r6]
	ldr r0, [r5, #0xc]
	str r0, [r6, #4]
	ldr r0, [r5, #0x10]
	str r0, [r6, #8]
	ldrh r1, [r7, #6]
	lsls r1, r1, #0x10
	ldr r0, [r5, #0xc]
	subs r0, r0, r1
	str r0, [r5, #0x2c]
	adds r0, r5, #0
	bl sub_08062518
_080629CE:
	adds r0, r7, #0
	adds r1, r6, #0
	bl sub_806273C
_080629D6:
	add sp, #0xc
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080629E4: .4byte byte_80CEB84
