@	ARM_FUNC_START sub_80001EC
sub_80001EC: @ 0x080001EC
	push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov r3, r0
	ldr sb, _08000D60
	ldrb sb, [sb]
	ldr fp, _08000D64
	ldrb fp, [fp]
	cmp sb, fp
	bhs _08000298
	ldr ip, _08000D68
	ldr ip, [ip]
	ldr sl, _08000D6C
	ldrb sl, [sl]
	mov r0, #0x70
	mla ip, r0, sl, ip
	ldr fp, _08000D70
	ldrb fp, [fp]
	mov sl, fp
_08000230:
	ldrb r5, [ip]
	cmp r5, #0
	beq _08000258
	add ip, ip, r0
	subs fp, fp, #1
	bne _08000230
	cdp p14, #0, c14, c0, c0, #0
	mov r0, #0xff
	pop {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bx lr
_08000258:
	lsr r2, r0, #2
	mov r0, #0
	mov r1, ip
	bl UnsafeDmaFill32
	mov r0, #1
	strb r0, [ip]
	str r3, [ip, #0x28]
	rsb r0, fp, sl
	ldr fp, _08000D74
	ldrb fp, [fp]
	add r0, r0, fp
	ldr sl, _08000D78
	add sb, sb, #1
	strb sb, [sl]
	pop {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bx lr
_08000298:
	cdp p14, #0, c14, c0, c0, #0
	mov r0, #0xff
	pop {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bx lr

@	ARM_FUNC_START sub_80002A8
sub_80002A8: @ 0x080002A8
	push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov r3, r0
	mov fp, r1
	ldr ip, _08000D7C
	ldr ip, [ip]
	mov r0, #0x70
	mla ip, r0, fp, ip
	lsr r2, r0, #2
	mov r0, #0
	mov r1, ip
	bl UnsafeDmaFill32
	mov r0, #1
	strb r0, [ip]
	str r3, [ip, #0x28]
	pop {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bx lr

@	ARM_FUNC_START sub_80002E8
sub_80002E8: @ 0x080002E8
	ldr r1, _08000D80
	ldr r1, [r1]
	mov r2, #0x70
	mla r0, r2, r0, r1
	mov r1, #0
	strb r1, [r0]
	ldr r0, _08000D84
	ldrb r1, [r0]
	sub r1, r1, #1
	strb r1, [r0]
	bx lr

@	ARM_FUNC_START sub_8000314
sub_8000314: @ 0x08000314
	push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	ldr ip, _08000D88
	ldr ip, [ip]
	mov r4, #0x70
	mla ip, r4, r0, ip
	mov fp, r1
	mov sl, r1
	mov sb, #0x40000
	smull sl, r4, sb, sl
	ldr sl, _08000D8C
	ldr sb, [sl, r4, lsl #2]
	mov sl, #0x40000
	smull r2, r1, sl, r2
	ldr r2, _08000D90
	ldr sl, [r2, r1, lsl #2]
	smull r2, r1, sl, fp
	lsl r8, r1, #0x10
	orr r8, r8, r2, lsr #16
	smull r2, r1, sb, fp
	lsl sb, r1, #0x10
	orr sb, sb, r2, lsr #16
	str r8, [ip, #4]
	str sb, [ip, #8]
	mov r0, #0
	strb r0, [ip, #1]
	pop {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bx lr

@	ARM_FUNC_START sub_8000380
sub_8000380: @ 0x08000380
	ldr ip, _08000D94
	ldr ip, [ip]
	mov r3, #0x70
	mla ip, r3, r0, ip
	str r1, [ip, #0xc]
	str r2, [ip, #0x30]
	bx lr

@	ARM_FUNC_START sub_800039C
sub_800039C: @ 0x0800039C
	ldr ip, _08000D98
	ldr ip, [ip]
	mov r2, #0x70
	mla ip, r2, r0, ip
	mov r1, #0
	str r1, [ip, #0xc]
	ldr r1, [ip, #0x2c]
	rsb r1, r1, #0
	ldr r0, [ip, #0x28]
	smull r3, r2, r1, r0
	lsl r0, r2, #0x10
	orr r0, r0, r3, lsr #16
	str r0, [ip, #0x30]
	bx lr

@	ARM_FUNC_START sub_80003D4
sub_80003D4: @ 0x080003D4
	push {r4, r5, r6, r7, r8, sb, sl, fp}
	ldr ip, _08000D9C
	ldr ip, [ip]
	mov r4, #0x70
	mla ip, r4, r0, ip
	ldr r3, [ip, #4]
	ldr r4, [ip, #8]
	cmp r3, #0
	bne _08000424
	cmp r4, #0
	bne _08000424
	str r1, [ip, #0x20]
	str r2, [ip, #0x24]
	cmp r1, #0
	bne _0800041C
	str r1, [ip, #0x38]
	str r1, [ip, #0x3c]
	strb r1, [ip, #3]
_0800041C:
	pop {r4, r5, r6, r7, r8, sb, sl, fp}
	bx lr
_08000424:
	str r3, [ip, #0x18]
	str r4, [ip, #0x1c]
	mov r3, #0
	str r3, [ip, #4]
	str r3, [ip, #8]
	str r3, [ip, #0x10]
	str r3, [ip, #0x14]
	mov r3, #1
	strb r3, [ip, #1]
	str r1, [ip, #0x20]
	str r2, [ip, #0x24]
	ldr fp, [ip, #0x34]
	mov sl, r2
	mov sb, #0x40000
	smull sl, r1, sb, sl
	ldr sl, _08000DA0
	ldr sb, [sl, r1, lsl #2]
	mov sl, #0x40000
	smull r2, r1, sl, r2
	ldr r2, _08000DA4
	ldr sl, [r2, r1, lsl #2]
	smull r2, r1, sl, fp
	lsl r8, r1, #0x10
	orr r8, r8, r2, lsr #16
	smull r2, r1, sb, fp
	lsl sb, r1, #0x10
	orr sb, sb, r2, lsr #16
	add r1, ip, #0x38
	stm r1, {r8, sb}
	mov r1, #1
	strb r1, [ip, #3]
	pop {r4, r5, r6, r7, r8, sb, sl, fp}
	bx lr

@	ARM_FUNC_START sub_80004A8
sub_80004A8: @ 0x080004A8
	stmdb sp!, {fp}
	ldr ip, _08000DA8
	ldr ip, [ip]
	mov r3, #0x70
	mla ip, r3, r0, ip
	str r1, [ip, #0x40]
	str r2, [ip, #0x44]
	mov fp, r1
	mov r3, r2
	mov r1, #0x40000
	smull r3, r0, r1, r3
	ldr r3, _08000DAC
	ldr r1, [r3, r0, lsl #2]
	smull r3, r0, r1, fp
	lsl r1, r0, #0x10
	orr r1, r1, r3, lsr #16
	str r1, [ip, #0x48]
	mov r3, #0x40000
	smull r2, r0, r3, r2
	ldr r2, _08000DB0
	ldr r3, [r2, r0, lsl #2]
	smull r1, r0, r3, fp
	lsl r3, r0, #0x10
	orr r3, r3, r1, lsr #16
	str r3, [ip, #0x4c]
	ldm sp!, {fp}
	bx lr

@	ARM_FUNC_START sub_8000514
sub_8000514: @ 0x08000514
	push {sl, fp}
	ldr fp, _08000DB4
	ldr fp, [fp]
	mov sl, #0x70
	mla ip, sl, r0, fp
	str r1, [ip, #0x34]
	pop {sl, fp}
	bx lr

@	ARM_FUNC_START sub_8000534
sub_8000534: @ 0x08000534
	ldr ip, _08000DB8
	ldr ip, [ip]
	mov r3, #0x70
	mla ip, r0, r3, ip
	str r1, [ip, #0x2c]
	ldr r2, [ip, #0xc]
	cmp r2, #0
	bne _0800056C
	rsb r1, r1, #0
	ldr r0, [ip, #0x28]
	smull r3, r2, r1, r0
	lsl r0, r2, #0x10
	orr r0, r0, r3, lsr #16
	str r0, [ip, #0x30]
_0800056C:
	bx lr

@	ARM_FUNC_START sub_8000570
sub_8000570: @ 0x08000570
	ldr ip, _08000DBC
	ldr ip, [ip]
	mov r3, #0x70
	mla ip, r3, r0, ip
	str r1, [ip, #0x30]
	bx lr

@	ARM_FUNC_START sub_8000588
sub_8000588: @ 0x08000588
	push {sl, fp, lr}
	mov r0, fp
	mov r1, sl
	movs r8, r0
	rsbmi r8, r8, #0
	movs sb, r1
	rsbmi sb, sb, #0
	cmp r8, sb
	bgt _080005BC
	stmdb sp!, {ip}
	bl sub_8001600
	ldm sp!, {ip}
	b sub_80005D0
_080005BC:
	mov r0, sl
	mov r1, fp
	stmdb sp!, {ip}
	bl sub_800169C
	ldm sp!, {ip}
sub_80005D0:
	mov sl, r0
	add r0, r0, #0xb40000
	cmp r0, #0x1680000
	subge r0, r0, #0x1680000
	mov r2, r0
	mov r1, #0x40000
	smull r0, fp, r1, r0
	ldr r0, _08000DC0
	ldr r1, [r0, fp, lsl #2]
	mov r0, #0x40000
	smull r2, fp, r0, r2
	ldr r2, _08000DC4
	ldr r0, [r2, fp, lsl #2]
	ldr r2, [ip, #0x34]
	smull r4, r3, r2, r0
	lsl r0, r3, #0x10
	orr r0, r0, r4, lsr #16
	smull r4, r3, r2, r1
	lsl r1, r3, #0x10
	orr r1, r1, r4, lsr #16
	pop {sl, fp, lr}
	bx lr

@	ARM_FUNC_START sub_8000628
sub_8000628: @ 0x08000628
	stmdb sp!, {lr}
	ldr r1, [ip, #0x24]
	mov fp, r1
	mov sb, #0x40000
	smull fp, r3, sb, fp
	ldr fp, _08000DC8
	ldr sb, [fp, r3, lsl #2]
	mov sl, #0x40000
	smull r1, r3, sl, r1
	ldr r1, _08000DCC
	ldr sl, [r1, r3, lsl #2]
	ldr fp, [ip, #0x20]
	smull r4, r3, fp, sl
	lsl r1, r3, #0x10
	orr r1, r1, r4, lsr #16
	smull r4, r3, fp, sb
	lsl r2, r3, #0x10
	orr r2, r2, r4, lsr #16
	ldm sp!, {lr}
	bx lr

@	ARM_FUNC_START sub_8000678
sub_8000678: @ 0x08000678
	push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	ldr r1, _08000DD0
	ldr r1, [r1]
	mov fp, #0x70
	mla ip, r0, fp, r1
	bl sub_80009FC
	bl sub_8000990
	ldrb r4, [ip, #1]
	cmp r4, #1
	beq _080007F8
	ldr r1, [ip, #0x20]
	cmp r1, #0
	beq _08000700
	ldr fp, [ip, #0x34]
	ldr r1, [ip, #0x24]
	mov sl, r1
	mov sb, #0x40000
	smull sl, r2, sb, sl
	ldr sl, _08000DD4
	ldr sb, [sl, r2, lsl #2]
	mov sl, #0x40000
	smull r1, r2, sl, r1
	ldr r1, _08000DD8
	ldr sl, [r1, r2, lsl #2]
	smull r1, r0, sl, fp
	lsl r8, r0, #0x10
	orr r8, r8, r1, lsr #16
	smull r1, r0, sb, fp
	lsl sb, r0, #0x10
	orr sb, sb, r1, lsr #16
	add r0, ip, #0x38
	stm r0, {r8, sb}
	mov r0, #1
	strb r0, [ip, #3]
_08000700:
	bl sub_8000628
	movs r3, r1
	rsblt r3, r3, #0
	movs r4, r2
	rsblt r4, r4, #0
	ldr sl, [ip, #4]
	movs r5, sl
	rsblt r5, r5, #0
	ldr fp, [ip, #8]
	movs r6, fp
	rsblt r6, r6, #0
	cmp r3, r5
	bgt _0800073C
	cmp r4, r6
	ble _08000770
_0800073C:
	ldr r7, [ip, #0x38]
	ldr r8, [ip, #0x3c]
	add sl, sl, r7
	add fp, fp, r8
	movs r5, sl
	rsbmi r5, r5, #0
	movs r6, fp
	rsbmi r6, r6, #0
	cmp r5, r3
	movgt sl, r1
	cmp r6, r4
	movgt fp, r2
	b _080007B8
_08000770:
	ldrb r0, [ip, #3]
	cmp r0, #0
	bne _080007B8
	bl sub_8000588
	movs r2, sl
	rsbmi r2, r2, #0
	movs r3, fp
	rsbmi r3, r3, #0
	movs r4, r0
	rsbmi r4, r4, #0
	movs r5, r1
	rsbmi r5, r5, #0
	cmp r2, r4
	addgt sl, sl, r0
	movle sl, #0
	cmp r3, r5
	addgt fp, fp, r1
	movle fp, #0
_080007B8:
	movs r0, sl
	rsbmi r0, r0, #0
	cmp r0, #0x280
	bgt _080007E8
	movs r1, fp
	rsbmi r1, r1, #0
	cmp r1, #0x280
	bgt _080007E8
	mov sl, #0
	mov fp, #0
	mov r0, #0
	strb r0, [ip, #3]
_080007E8:
	str sl, [ip, #4]
	str fp, [ip, #8]
	pop {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bx lr
_080007F8:
	ldr sl, [ip, #0x18]
	ldr fp, [ip, #0x1c]
	bl sub_8000588
	movs r2, r0
	rsbmi r2, r2, #0
	movs r3, r1
	rsbmi r3, r3, #0
	movs r4, sl
	rsbmi r4, r4, #0
	movs r5, fp
	rsbmi r5, r5, #0
	cmp r4, r2
	addgt sl, sl, r0
	movle sl, #0
	cmp r5, r3
	addgt fp, fp, r1
	movle fp, #0
	str sl, [ip, #0x18]
	str fp, [ip, #0x1c]
	push {sl, fp}
	bl sub_8000628
	movs r3, r1
	rsblt r3, r3, #0
	movs r4, r2
	rsblt r4, r4, #0
	ldr sl, [ip, #0x10]
	movs r5, sl
	rsblt r5, r5, #0
	ldr fp, [ip, #0x14]
	movs r6, fp
	rsblt r6, r6, #0
	cmp r3, r5
	bgt _08000884
	cmp r4, r6
	ble _080008B8
_08000884:
	ldr r7, [ip, #0x38]
	ldr r8, [ip, #0x3c]
	add sl, sl, r7
	add fp, fp, r8
	movs r5, sl
	rsbmi r5, r5, #0
	movs r6, fp
	rsbmi r6, r6, #0
	cmp r5, r3
	movgt sl, r1
	cmp r6, r4
	movgt fp, r2
	b _08000900
_080008B8:
	ldrb r0, [ip, #3]
	cmp r0, #0
	bne _08000900
	bl sub_8000588
	movs r2, sl
	rsbmi r2, r2, #0
	movs r3, fp
	rsbmi r3, r3, #0
	movs r4, r0
	rsbmi r4, r4, #0
	movs r5, r1
	rsbmi r5, r5, #0
	cmp r2, r4
	addgt sl, sl, r0
	movle sl, #0
	cmp r3, r5
	addgt fp, fp, r1
	movle fp, #0
_08000900:
	str sl, [ip, #0x10]
	str fp, [ip, #0x14]
	pop {r8, sb}
	add sl, sl, r8
	add fp, fp, sb
	cmp r8, #0
	rsblt r8, r8, #0
	cmp sb, #0
	rsblt sb, sb, #0
	cmp r8, #0x280
	bgt _08000950
	cmp sb, #0x280
	bgt _08000950
	mov r8, #0
	str r8, [ip, #0x18]
	str r8, [ip, #0x1c]
	strb r8, [ip, #1]
	ldr sl, [ip, #0x10]
	ldr fp, [ip, #0x14]
	b _08000980
_08000950:
	movs r0, sl
	rsbmi r0, r0, #0
	cmp r0, #0x280
	bgt _08000980
	movs r1, fp
	rsbmi r1, r1, #0
	cmp r1, #0x280
	bgt _08000980
	mov sl, #0
	mov fp, #0
	mov r0, #0
	strb r0, [ip, #3]
_08000980:
	str sl, [ip, #4]
	str fp, [ip, #8]
	pop {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bx lr

@	ARM_FUNC_START sub_8000990
sub_8000990: @ 0x08000990
	ldr r3, [ip, #0xc]
	ldr r2, [ip, #0x2c]
	ldr r4, [ip, #0x28]
	smull r1, r0, r2, r4
	lsl r2, r0, #0x10
	orr r2, r2, r1, lsr #16
	add r3, r3, r2
	ldr r2, [ip, #0x30]
	add r3, r3, r2
	ldr r2, [ip, #4]
	smull r1, r0, r2, r2
	lsl r2, r0, #0x10
	orr r2, r2, r1, lsr #16
	ldr r4, [ip, #8]
	smull r1, r0, r4, r4
	lsl r4, r0, #0x10
	orr r4, r4, r1, lsr #16
	add r2, r2, r4
	mov r4, r3
	smull r1, r0, r4, r4
	lsl r4, r0, #0x10
	orr r4, r4, r1, lsr #16
	add r2, r2, r4
	mov r4, #0x240000
	cmp r2, r4
	strlt r3, [ip, #0xc]
	bx lr

@	ARM_FUNC_START sub_80009FC
sub_80009FC: @ 0x080009FC
	ldrb r0, [ip, #2]
	cmp r0, #0
	bxeq lr
	.byte 0x68, 0x00, 0x9C, 0xE5, 0x00, 0x00, 0x50, 0xE3
	.byte 0x0B, 0x00, 0x00, 0x0A, 0x60, 0x10, 0x9C, 0xE5, 0x01, 0x00, 0x50, 0xE1, 0x08, 0x00, 0x00, 0x0A
	.byte 0x58, 0x20, 0x9C, 0xE5, 0x02, 0x10, 0x81, 0xE0, 0x01, 0x30, 0xB0, 0xE1, 0x00, 0x30, 0x63, 0x42
	.byte 0x00, 0x40, 0xB0, 0xE1, 0x00, 0x40, 0x64, 0x42, 0x04, 0x00, 0x53, 0xE1, 0x60, 0x00, 0x8C, 0xC5
	.byte 0x60, 0x10, 0x8C, 0xD5, 0x6C, 0x00, 0x9C, 0xE5, 0x00, 0x00, 0x50, 0xE3, 0x0B, 0x00, 0x00, 0x0A
	.byte 0x64, 0x10, 0x9C, 0xE5, 0x01, 0x00, 0x50, 0xE1, 0x08, 0x00, 0x00, 0x0A, 0x5C, 0x20, 0x9C, 0xE5
	.byte 0x02, 0x10, 0x81, 0xE0, 0x01, 0x30, 0xB0, 0xE1, 0x00, 0x30, 0x63, 0x42, 0x00, 0x40, 0xB0, 0xE1
	.byte 0x00, 0x40, 0x64, 0x42, 0x04, 0x00, 0x53, 0xE1, 0x64, 0x00, 0x8C, 0xC5, 0x64, 0x10, 0x8C, 0xD5
	.byte 0x1E, 0xFF, 0x2F, 0xE1

@	ARM_FUNC_START sub_8000A84
sub_8000A84: @ 0x08000A84
	ldr r1, _08000DDC
	ldr r1, [r1]
	mov r2, #0x70
	mla ip, r0, r2, r1
	add ip, ip, #4
	ldm ip, {r0, r1}
	cmp r0, #0
	rsbmi r0, r0, #0
	cmp r0, #0x280
	movls r0, #0x40000000
	msrls cpsr_fc, r0
	bne _08000AD8
	mov r0, r1
	cmp r0, #0
	rsbmi r0, r0, #0
	cmp r0, #0x280
	movls r0, #0x40000000
	msrls cpsr_fc, r0
	bne _08000AD8
	mov r0, #0
	bx lr
_08000AD8:
	mov r0, #1
	bx lr

@	ARM_FUNC_START sub_8000AE0
sub_8000AE0: @ 0x08000AE0
	ldr ip, _08000DE0
	ldr ip, [ip]
	mov r2, #0x70
	mla ip, r2, r0, ip
	ldr r1, [ip, #0xc]
	cmp r1, #0
	rsbmi r1, r1, #0
	cmp sl, #0x280
	movls r1, #0x40000000
	msrls cpsr_fc, r1
	bx lr

@	ARM_FUNC_START sub_8000B0C
sub_8000B0C: @ 0x08000B0C
	ldr ip, _08000DE4
	ldr ip, [ip]
	mov r2, #0x70
	mla ip, r2, r0, ip
	ldr r0, [ip, #0xc]
	cmp r0, #0
	movgt r0, #0
	movle r0, #1
	bx lr

@	ARM_FUNC_START sub_8000B30
sub_8000B30: @ 0x08000B30
	push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	ldr ip, _08000DE8
	ldr ip, [ip]
	mov fp, #0x70
	mla ip, fp, r0, ip
	ldr sl, [ip, #4]
	ldr sb, [ip, #0x48]
	add sl, sl, sb
	ldr sb, [ip, #0x60]
	add sl, sl, sb
	ldr fp, [ip, #8]
	ldr sb, [ip, #0x4c]
	add fp, fp, sb
	ldr sb, [ip, #0x64]
	add fp, fp, sb
	ldr sb, [ip, #0xc]
	str sl, [r1]
	str sb, [r2]
	str fp, [r3]
	orr sb, sb, sl
	orr r0, sb, fp
	pop {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bx lr

@	ARM_FUNC_START sub_8000B8C
sub_8000B8C: @ 0x08000B8C
	push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	ldr ip, _08000DEC
	ldr ip, [ip]
	mov fp, #0x70
	mla ip, fp, r0, ip
	ldr sl, [r1]
	ldr sb, [ip, #0x48]
	add sl, sl, sb
	ldr sb, [ip, #0x60]
	add sl, sl, sb
	ldr fp, [r1, #8]
	ldr sb, [ip, #0x4c]
	add fp, fp, sb
	ldr sb, [ip, #0x64]
	add fp, fp, sb
	ldr sb, [ip, #0xc]
	str sl, [r2]
	str sb, [r2, #4]
	str fp, [r2, #8]
	pop {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bx lr

@	ARM_FUNC_START sub_8000BE0
sub_8000BE0: @ 0x08000BE0
	push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	ldr ip, _08000DF0
	ldr ip, [ip]
	mov r4, #0x70
	mla ip, r4, r0, ip
	ldrb sb, [ip, #2]
	mov fp, sb
	cmp r3, sb
	bne _08000C1C
	ldr sb, [ip, #0x50]
	cmp r1, sb
	bne _08000C1C
	ldr sb, [ip, #0x54]
	cmp r2, sb
	beq _08000D14
_08000C1C:
	strb r3, [ip, #2]
	str r1, [ip, #0x50]
	str r2, [ip, #0x54]
	cmp r2, #0x5a0000
	beq _08000D1C
	add r2, r2, #0x5a0000
	mov sb, r1
	mov sl, r2
	ldr fp, _08000DF4
	mov r0, #0x40000
	smull r2, r3, r0, r2
	ldr r2, _08000DF8
	ldr r0, [r2, r3, lsl #2]
	smull r3, r2, fp, r0
	lsl fp, r2, #0x10
	orr fp, fp, r3, lsr #16
	mov r0, r1
	mov r2, #0x40000
	smull r0, r3, r2, r0
	ldr r0, _08000DFC
	ldr r2, [r0, r3, lsl #2]
	smull r4, r3, r2, fp
	lsl r2, r3, #0x10
	orr r2, r2, r4, lsr #16
	str r2, [ip, #0x58]
	mov r0, #0x40000
	smull r1, r2, r0, r1
	ldr r1, _08000E00
	ldr r0, [r1, r2, lsl #2]
	smull r4, r3, r0, fp
	lsl r0, r3, #0x10
	orr r0, r0, r4, lsr #16
	str r0, [ip, #0x5c]
	mov fp, #0x38000
	mov r0, #0x40000
	smull sl, r3, r0, sl
	ldr sl, _08000E04
	ldr r0, [sl, r3, lsl #2]
	smull r3, r2, fp, r0
	lsl fp, r2, #0x10
	orr fp, fp, r3, lsr #16
	mov r0, sb
	mov r2, #0x40000
	smull r0, r3, r2, r0
	ldr r0, _08000E08
	ldr r2, [r0, r3, lsl #2]
	smull r4, r3, r2, fp
	lsl r2, r3, #0x10
	orr r2, r2, r4, lsr #16
	str r2, [ip, #0x68]
	mov r0, #0x40000
	smull sb, r2, r0, sb
	ldr sb, _08000E0C
	ldr r0, [sb, r2, lsl #2]
	smull r4, r3, r0, fp
	lsl r0, r3, #0x10
	orr r0, r0, r4, lsr #16
	str r0, [ip, #0x6c]
	mov r0, #0
	str r0, [ip, #0x60]
	str r0, [ip, #0x64]
	bl sub_80009FC
_08000D14:
	pop {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bx lr
_08000D1C:
	mov r0, #0
	cmp fp, #1
	bne _08000D40
	str r0, [ip, #4]
	str r0, [ip, #8]
	str r0, [ip, #0x10]
	str r0, [ip, #0x14]
	str r0, [ip, #0x18]
	str r0, [ip, #0x1c]
_08000D40:
	str r0, [ip, #0x58]
	str r0, [ip, #0x5c]
	str r0, [ip, #0x60]
	str r0, [ip, #0x64]
	str r0, [ip, #0x68]
	str r0, [ip, #0x6c]
	pop {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bx lr
	.align 2, 0
_08000D60: .4byte byte_2000332
_08000D64: .4byte byte_2000333
_08000D68: .4byte dword_200032C
_08000D6C: .4byte byte_2000334
_08000D70: .4byte byte_2000333
_08000D74: .4byte byte_2000331
_08000D78: .4byte byte_2000332
_08000D7C: .4byte dword_200032C
_08000D80: .4byte dword_200032C
_08000D84: .4byte byte_2000332
_08000D88: .4byte dword_200032C
_08000D8C: .4byte 0x086A30D8
_08000D90: .4byte 0x086A4758
_08000D94: .4byte dword_200032C
_08000D98: .4byte dword_200032C
_08000D9C: .4byte dword_200032C
_08000DA0: .4byte 0x086A30D8
_08000DA4: .4byte 0x086A4758
_08000DA8: .4byte dword_200032C
_08000DAC: .4byte 0x086A4758
_08000DB0: .4byte 0x086A30D8
_08000DB4: .4byte dword_200032C
_08000DB8: .4byte dword_200032C
_08000DBC: .4byte dword_200032C
_08000DC0: .4byte 0x086A30D8
_08000DC4: .4byte 0x086A4758
_08000DC8: .4byte 0x086A30D8
_08000DCC: .4byte 0x086A4758
_08000DD0: .4byte dword_200032C
_08000DD4: .4byte 0x086A30D8
_08000DD8: .4byte 0x086A4758
_08000DDC: .4byte dword_200032C
_08000DE0: .4byte dword_200032C
_08000DE4: .4byte dword_200032C
_08000DE8: .4byte dword_200032C
_08000DEC: .4byte dword_200032C
_08000DF0: .4byte dword_200032C
_08000DF4: .4byte 0x00002666
_08000DF8: .4byte 0x086A30D8
_08000DFC: .4byte 0x086A4758
_08000E00: .4byte 0x086A30D8
_08000E04: .4byte 0x086A30D8
_08000E08: .4byte 0x086A4758
_08000E0C: .4byte 0x086A30D8
