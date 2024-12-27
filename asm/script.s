    .syntax unified
    .text

    .thumb
    .global render_scripts
render_scripts: @ 0x0805DF84
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r6, r0, #0
	str r1, [sp]
	ldr r0, _0805E024
	ldrb r0, [r0]
	cmp r0, #0
	beq _0805E074
	movs r2, #0
_0805DF9E:
	lsls r0, r2, #2
	adds r0, r0, r2
	lsls r0, r0, #3
	ldr r1, _0805E028
	adds r5, r0, r1
	adds r0, r5, #0
	adds r0, #0x22
	ldrb r0, [r0]
	adds r1, r2, #1
	mov sl, r1
	cmp r0, #0
	beq _0805E06A
	adds r0, r5, #0
	adds r0, #0x23
	ldrb r0, [r0]
	cmp r0, #0
	bne _0805DFC8
	ldr r0, _0805E02C
	ldrb r0, [r0]
	cmp r0, #0
	bne _0805E06A
_0805DFC8:
	movs r0, #0
	mov r8, r0
	adds r0, r5, #0
	adds r0, #0x20
	mov sb, r0
	adds r2, #1
	mov sl, r2
	ldrb r1, [r0]
	cmp r8, r1
	bge _0805E06A
	movs r7, #0
_0805DFDE:
	ldr r0, [r5]
	adds r2, r7, r0
	adds r0, r2, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, #0
	beq _0805E05C
	ldrb r0, [r2, #0x13]
	cmp r0, #0
	bne _0805E05C
	ldr r1, [r6]
	adds r0, r2, #0
	bl sprite_render_ex
	ldr r0, [r5]
	adds r4, r7, r0
	ldrb r0, [r4, #0x10]
	cmp r0, #1
	bne _0805E034
	ldr r3, [r6]
	ldrb r2, [r4, #4]
	lsls r2, r2, #0x1e
	ldr r0, _0805E030
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	ldr r1, [r4, #0x20]
	subs r0, r0, r1
	ldr r1, [r4, #0x38]
	subs r0, r0, r1
	lsrs r0, r0, #4
	movs r1, #0x80
	lsls r1, r1, #0x15
	orrs r0, r1
	b _0805E04A
	.align 2, 0
_0805E024: .4byte byte_203F99E
_0805E028: .4byte 0x0203F9A4
_0805E02C: .4byte 0x0203FA16
_0805E030: .4byte gMapPixelSizeY
_0805E034:
	ldr r3, [r6]
	ldrb r2, [r4, #4]
	lsls r2, r2, #0x1e
	ldr r0, _0805E084
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	ldr r1, [r4, #0x20]
	subs r0, r0, r1
	ldr r1, [r4, #0x38]
	subs r0, r0, r1
	lsrs r0, r0, #4
_0805E04A:
	orrs r2, r0
	str r2, [r3]
	adds r0, r3, #0
	adds r0, #0xc
	str r0, [r6]
	ldr r1, [sp]
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
_0805E05C:
	adds r7, #0x60
	movs r0, #1
	add r8, r0
	mov r1, sb
	ldrb r1, [r1]
	cmp r8, r1
	blt _0805DFDE
_0805E06A:
	mov r1, sl
	lsls r0, r1, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #1
	bls _0805DF9E
_0805E074:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805E084: .4byte gMapPixelSizeY

    .thumb
    .global render_scripts_direct
render_scripts_direct: @ 0x0805E088
	push {r4, r5, r6, r7, lr}
	movs r2, #0
_0805E08C:
	lsls r0, r2, #2
	adds r0, r0, r2
	lsls r0, r0, #3
	ldr r1, _0805E0D8
	adds r4, r0, r1
	movs r6, #0
	adds r0, r4, #0
	adds r0, #0x20
	adds r7, r2, #1
	ldrb r0, [r0]
	cmp r6, r0
	bge _0805E0C8
	movs r5, #0
_0805E0A6:
	ldr r0, [r4]
	adds r1, r5, r0
	adds r0, r1, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, #0
	beq _0805E0BA
	adds r0, r1, #0
	bl sprite_render
_0805E0BA:
	adds r5, #0x60
	adds r6, #1
	adds r0, r4, #0
	adds r0, #0x20
	ldrb r0, [r0]
	cmp r6, r0
	blt _0805E0A6
_0805E0C8:
	lsls r0, r7, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #1
	bls _0805E08C
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805E0D8: .4byte 0x0203F9A4

    .thumb
remove_actors: @ 0x0805E0DC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	adds r1, r6, #0
	adds r1, #0x20
	ldrb r0, [r1]
	cmp r0, #0
	beq _0805E14A
	movs r5, #0
	adds r7, r1, #0
	ldr r2, [r6]
	cmp r5, r0
	bhs _0805E13E
	movs r0, #1
	rsbs r0, r0, #0
	mov r8, r0
_0805E0FE:
	lsls r0, r5, #1
	adds r0, r0, r5
	lsls r4, r0, #5
	adds r1, r4, r2
	adds r0, r1, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, #0
	beq _0805E132
	adds r1, #0x55
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, r8
	beq _0805E128
	bl sub_8003864
	ldr r0, [r6]
	adds r0, r4, r0
	adds r0, #0x55
	movs r1, #0xff
	strb r1, [r0]
_0805E128:
	ldr r1, _0805E154
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	ldr r2, [r6]
_0805E132:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	ldrb r0, [r7]
	cmp r5, r0
	blo _0805E0FE
_0805E13E:
	adds r0, r2, #0
	movs r1, #3
	bl Free
	movs r0, #0
	strb r0, [r7]
_0805E14A:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805E154: .4byte 0x0203F9A0

    .thumb
    .global end_script
end_script: @ 0x0805E158
	push {r4, r5, lr}
	adds r4, r0, #0
	bl remove_actors
	adds r1, r4, #0
	adds r1, #0x21
	movs r3, #0
	movs r0, #1
	strb r0, [r1]
	adds r2, r4, #0
	adds r2, #0x23
	ldrb r0, [r2]
	cmp r0, #0
	beq _0805E198
	ldr r0, _0805E1C4
	strb r3, [r0]
	ldr r0, _0805E1C8
	movs r5, #1
	rsbs r5, r5, #0
	adds r1, r5, #0
	strh r1, [r0]
	ldr r0, _0805E1CC
	strh r1, [r0]
	strb r3, [r2]
	ldr r0, _0805E1D0
	strb r3, [r0]
	ldr r0, _0805E1D4
	ldrb r0, [r0]
	cmp r0, #0
	beq _0805E198
	.2byte 0xEE00, 0xEE00
_0805E198:
	adds r1, r4, #0
	adds r1, #0x22
	movs r0, #0
	strb r0, [r1]
	bl sub_805D568
	ldr r0, _0805E1D8
	ldrb r0, [r0]
	cmp r0, #0
	bne _0805E1BC
	movs r0, #3
	movs r1, #5
	bl DoesMemBlockExistById
	cmp r0, #0
	beq _0805E1BC
	.2byte 0xEE00, 0xEE00
_0805E1BC:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0805E1C4: .4byte byte_203F99C
_0805E1C8: .4byte word_203F998
_0805E1CC: .4byte word_203F99A
_0805E1D0: .4byte 0x0203FA14
_0805E1D4: .4byte 0x0203FA15
_0805E1D8: .4byte byte_203F99E

    .thumb
    .global end_all_scripts
end_all_scripts: @ 0x0805E1DC
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, _0805E224
	ldrb r0, [r0]
	cmp r0, #0
	beq _0805E1FC
	cmp r4, #0
	beq _0805E1F0
	cmp r4, #2
	bne _0805E1FC
_0805E1F0:
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_0805F8DC
_0805E1FC:
	movs r5, #0
	ldr r7, _0805E228
	ldr r6, _0805E22C
_0805E202:
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #3
	adds r1, r0, r7
	adds r0, r1, #0
	adds r0, #0x22
	ldrb r0, [r0]
	cmp r0, #0
	beq _0805E25A
	cmp r4, #1
	beq _0805E242
	cmp r4, #1
	bgt _0805E230
	cmp r4, #0
	beq _0805E236
	b _0805E25A
	.align 2, 0
_0805E224: .4byte 0x0203FA15
_0805E228: .4byte 0x0203F9A4
_0805E22C: .4byte 0x0203F9F4
_0805E230:
	cmp r4, #2
	beq _0805E254
	b _0805E25A
_0805E236:
	ldr r0, [r6]
	adds r0, #0x23
	ldrb r0, [r0]
	cmp r0, #0
	beq _0805E25A
	b _0805E24C
_0805E242:
	ldr r0, [r6]
	adds r0, #0x23
	ldrb r0, [r0]
	cmp r0, #0
	bne _0805E25A
_0805E24C:
	adds r0, r1, #0
	bl end_script
	b _0805E25A
_0805E254:
	adds r0, r1, #0
	bl end_script
_0805E25A:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #1
	bls _0805E202
	bl sub_805D568
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

    .thumb
sub_0805E270: @ 0x0805E270
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	mov r8, r0
	adds r7, r1, #0
	adds r6, r2, #0
	adds r5, r3, #0
	cmp r8, r7
	bge _0805E28C
	cmp r6, r5
	blt _0805E290
_0805E28C:
	.2byte 0xEE00, 0xEE00
_0805E290:
	mov r1, r8
	subs r0, r7, r1
	asrs r0, r0, #2
	str r0, [sp, #8]
	subs r0, r5, r6
	asrs r0, r0, #2
	str r0, [sp, #0xc]
	ldr r2, _0805E304
	mov ip, r2
	ldr r3, [r2]
	ldr r2, [r3, #8]
	asrs r1, r2, #0x10
	subs r0, r7, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #4]
	mov r0, r8
	subs r1, r1, r0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	str r1, [sp]
	ldr r4, [r3, #0xc]
	asrs r1, r4, #0x10
	subs r0, r5, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sl, r0
	subs r1, r1, r6
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov sb, r1
	ldr r0, [r3, #0x10]
	cmp r0, r2
	bne _0805E3BC
	ldr r0, [r3, #0x14]
	cmp r0, r4
	bne _0805E3BC
	mov r4, ip
_0805E2DC:
	ldr r1, [sp, #4]
	ldr r2, [sp]
	cmp r1, r2
	bhs _0805E33A
	cmp sb, sl
	bhs _0805E31E
	cmp r1, sb
	bhs _0805E308
	mov r0, r8
	ldr r1, [sp, #8]
	add r1, r8
	bl RandomMinMax
	ldr r1, [r4]
	lsls r0, r0, #0x10
	str r0, [r1, #0x10]
	adds r0, r6, #0
	adds r1, r5, #0
	b _0805E3A0
	.align 2, 0
_0805E304: .4byte 0x0203FA18
_0805E308:
	mov r0, r8
	adds r1, r7, #0
	bl RandomMinMax
	ldr r1, [r4]
	lsls r0, r0, #0x10
	str r0, [r1, #0x10]
	ldr r1, [sp, #0xc]
	subs r0, r5, r1
	adds r1, r5, #0
	b _0805E3A0
_0805E31E:
	ldr r2, [sp, #4]
	cmp r2, sl
	bhs _0805E38C
	mov r0, r8
	ldr r1, [sp, #8]
	add r1, r8
	bl RandomMinMax
	ldr r1, [r4]
	lsls r0, r0, #0x10
	str r0, [r1, #0x10]
	adds r0, r6, #0
	adds r1, r5, #0
	b _0805E3A0
_0805E33A:
	cmp sb, sl
	bhs _0805E370
	ldr r0, [sp]
	cmp r0, sb
	bhs _0805E35A
	ldr r1, [sp, #8]
	subs r0, r7, r1
	adds r1, r7, #0
	bl RandomMinMax
	ldr r1, [r4]
	lsls r0, r0, #0x10
	str r0, [r1, #0x10]
	adds r0, r6, #0
	adds r1, r5, #0
	b _0805E3A0
_0805E35A:
	mov r0, r8
	adds r1, r7, #0
	bl RandomMinMax
	ldr r1, [r4]
	lsls r0, r0, #0x10
	str r0, [r1, #0x10]
	ldr r2, [sp, #0xc]
	subs r0, r5, r2
	adds r1, r5, #0
	b _0805E3A0
_0805E370:
	ldr r0, [sp]
	cmp r0, sl
	bhs _0805E38C
	ldr r1, [sp, #8]
	subs r0, r7, r1
	adds r1, r7, #0
	bl RandomMinMax
	ldr r1, [r4]
	lsls r0, r0, #0x10
	str r0, [r1, #0x10]
	adds r0, r6, #0
	adds r1, r5, #0
	b _0805E3A0
_0805E38C:
	mov r0, r8
	adds r1, r7, #0
	bl RandomMinMax
	ldr r1, [r4]
	lsls r0, r0, #0x10
	str r0, [r1, #0x10]
	adds r0, r6, #0
	ldr r2, [sp, #0xc]
	adds r1, r6, r2
_0805E3A0:
	bl RandomMinMax
	ldr r1, [r4]
	lsls r0, r0, #0x10
	str r0, [r1, #0x14]
	ldr r2, [r4]
	ldr r1, [r2, #0x10]
	ldr r0, [r2, #8]
	cmp r1, r0
	bne _0805E3BC
	ldr r1, [r2, #0x14]
	ldr r0, [r2, #0xc]
	cmp r1, r0
	beq _0805E2DC
_0805E3BC:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

    .thumb
sub_805E3CC: @ 0x0805E3CC
	push {lr}
	adds r2, r0, #0
	cmp r2, #0
	bge _0805E3DA
	movs r0, #0xb4
	lsls r0, r0, #0xd
	adds r2, r2, r0
_0805E3DA:
	ldr r0, _0805E3E8
	adds r1, r2, r0
	ldr r0, _0805E3EC
	cmp r1, r0
	bls _0805E3F0
	movs r0, #2
	b _0805E452
	.align 2, 0
_0805E3E8: .4byte 0xFFE98000
_0805E3EC: .4byte 0x013B0000
_0805E3F0:
	ldr r0, _0805E3FC
	cmp r2, r0
	bgt _0805E400
	movs r0, #3
	b _0805E452
	.align 2, 0
_0805E3FC: .4byte 0x00437FFF
_0805E400:
	ldr r0, _0805E40C
	cmp r2, r0
	bgt _0805E410
	movs r0, #4
	b _0805E452
	.align 2, 0
_0805E40C: .4byte 0x00707FFF
_0805E410:
	ldr r0, _0805E41C
	cmp r2, r0
	bgt _0805E420
	movs r0, #5
	b _0805E452
	.align 2, 0
_0805E41C: .4byte 0x009D7FFF
_0805E420:
	ldr r0, _0805E42C
	cmp r2, r0
	bgt _0805E430
	movs r0, #6
	b _0805E452
	.align 2, 0
_0805E42C: .4byte 0x00CA7FFF
_0805E430:
	ldr r0, _0805E43C
	cmp r2, r0
	bgt _0805E440
	movs r0, #7
	b _0805E452
	.align 2, 0
_0805E43C: .4byte 0x00F77FFF
_0805E440:
	ldr r0, _0805E44C
	cmp r2, r0
	ble _0805E450
	movs r0, #1
	b _0805E452
	.align 2, 0
_0805E44C: .4byte 0x01247FFF
_0805E450:
	movs r0, #0
_0805E452:
	pop {r1}
	bx r1
	.align 2, 0

    .thumb
script_cmd_alloc_actors: @ 0x0805E458
	push {r4, lr}
	adds r1, r0, #0
	ldr r4, _0805E4DC
	ldr r0, [r4]
	adds r0, #0x20
	strb r1, [r0]
	cmp r1, #0
	beq _0805E4D2
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #5
	movs r1, #5
	movs r2, #3
	bl Alloc
	ldr r1, [r4]
	str r0, [r1]
	movs r3, #0
	adds r1, #0x20
	ldrb r1, [r1]
	cmp r3, r1
	bhs _0805E4D2
	adds r2, r4, #0
	movs r4, #0
_0805E488:
	ldr r0, [r2]
	ldr r0, [r0]
	lsls r1, r3, #1
	adds r1, r1, r3
	lsls r1, r1, #5
	adds r0, r1, r0
	adds r0, #0x56
	strb r4, [r0]
	ldr r0, [r2]
	ldr r0, [r0]
	adds r0, r1, r0
	adds r0, #0x57
	strb r4, [r0]
	ldr r0, [r2]
	ldr r0, [r0]
	adds r0, r1, r0
	adds r0, #0x58
	strb r4, [r0]
	ldr r0, [r2]
	ldr r0, [r0]
	adds r0, r1, r0
	adds r0, #0x59
	strb r4, [r0]
	ldr r0, [r2]
	ldr r0, [r0]
	adds r1, r1, r0
	adds r1, #0x55
	movs r0, #0xff
	strb r0, [r1]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	ldr r0, [r2]
	adds r0, #0x20
	ldrb r0, [r0]
	cmp r3, r0
	blo _0805E488
_0805E4D2:
	movs r0, #1
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0805E4DC: .4byte 0x0203F9F4

    .thumb
script_cmd_load_and_store_room: @ 0x0805E4E0
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	adds r7, r0, #0
	mov r8, r1
	mov sb, r2
	adds r5, r3, #0
	bl audio_halt_all_fx
	ldr r2, _0805E520
	ldr r1, [r2]
	ldr r0, _0805E524
	ldrh r0, [r0]
	strb r0, [r1, #4]
	ldr r2, [r2]
	ldr r1, _0805E528
	ldr r0, [r1]
	str r0, [r2, #8]
	ldr r0, [r1, #4]
	str r0, [r2, #0xc]
	ldr r0, [r1, #8]
	str r0, [r2, #0x10]
	mov r0, sb
	cmp r0, #0
	beq _0805E530
	ldr r0, _0805E52C
	adds r1, r5, #0
	bl sub_80271A4
	b _0805E538
	.align 2, 0
_0805E520: .4byte 0x0203F9F4
_0805E524: .4byte gLoadedRoomIndex
_0805E528: .4byte gPlayerPos
_0805E52C: .4byte 0x00000FFF
_0805E530:
	ldr r0, _0805E5CC
	adds r1, r5, #0
	bl sub_80270AC
_0805E538:
	ldr r4, _0805E5D0
	ldrb r0, [r4]
	cmp r0, #0
	beq _0805E54C
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_0805F8DC
_0805E54C:
	ldr r0, _0805E5D4
	ldr r0, [r0]
	bl remove_actors
	ldrb r0, [r4]
	cmp r0, #0
	beq _0805E566
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_0805F8DC
_0805E566:
	ldr r0, _0805E5D8
	movs r6, #1
	strb r6, [r0]
	adds r0, r7, #0
	mov r1, r8
	adds r2, r5, #0
	movs r3, #1
	bl SetupRoom
	ldr r0, _0805E5DC
	ldrh r0, [r0]
	ldr r1, _0805E5E0
	ldrh r1, [r1]
	ldr r2, _0805E5E4
	ldrh r2, [r2]
	ldr r3, _0805E5E8
	ldrh r3, [r3]
	movs r4, #0x15
	str r4, [sp]
	movs r4, #0x20
	str r4, [sp, #4]
	bl sub_8013A10
	bl EnableBGAlphaBlending
	bl sub_800EB14
	bl init_efx
	bl init_room_name
	bl sub_80631A0
	cmp r0, #0
	beq _0805E5B4
	ldr r0, _0805E5EC
	strb r6, [r0]
	bl sub_8063188
_0805E5B4:
	ldr r1, _0805E5F0
	movs r0, #0
	strb r0, [r1, #0x13]
	mov r0, sb
	cmp r0, #0
	beq _0805E5F4
	ldr r0, _0805E5CC
	adds r1, r5, #0
	movs r2, #1
	bl sub_8026F78
	b _0805E5FE
	.align 2, 0
_0805E5CC: .4byte 0x00000FFF
_0805E5D0: .4byte 0x0203FA15
_0805E5D4: .4byte 0x0203F9F4
_0805E5D8: .4byte 0x0203FA16
_0805E5DC: .4byte 0x0200145C
_0805E5E0: .4byte 0x0200145E
_0805E5E4: .4byte 0x02001460
_0805E5E8: .4byte 0x02001462
_0805E5EC: .4byte 0x0203E137
_0805E5F0: .4byte gPlayerSprite
_0805E5F4:
	ldr r0, _0805E63C
	adds r1, r5, #0
	movs r2, #1
	bl sub_8026E48
_0805E5FE:
	ldr r2, _0805E640
	ldr r0, _0805E644
	ldrh r3, [r0]
	strh r3, [r2, #6]
	ldr r0, _0805E648
	ldrh r1, [r0]
	strb r1, [r2, #8]
	ldr r0, _0805E64C
	strh r3, [r0, #6]
	strb r1, [r0, #8]
	ldr r0, _0805E650
	ldrb r0, [r0]
	cmp r0, #0
	beq _0805E626
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl script_cmd_store_camera_position
_0805E626:
	bl sub_8041E58
	movs r0, #1
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0805E63C: .4byte 0x00000FFF
_0805E640: .4byte gPlayerSprite
_0805E644: .4byte 0x02001464
_0805E648: .4byte 0x02001466
_0805E64C: .4byte gPlayerShadowSprite
_0805E650: .4byte 0x0203FA15

    .thumb
script_cmd_load_room: @ 0x0805E654
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	adds r6, r0, #0
	adds r7, r1, #0
	mov r8, r2
	adds r5, r3, #0
	bl audio_halt_all_fx
	mov r0, r8
	cmp r0, #0
	beq _0805E67C
	ldr r0, _0805E678
	adds r1, r5, #0
	bl sub_80271A4
	b _0805E684
	.align 2, 0
_0805E678: .4byte 0x00000FFF
_0805E67C:
	ldr r0, _0805E714
	adds r1, r5, #0
	bl sub_80270AC
_0805E684:
	ldr r4, _0805E718
	ldrb r0, [r4]
	cmp r0, #0
	beq _0805E698
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_0805F8DC
_0805E698:
	ldr r0, _0805E71C
	ldr r0, [r0]
	bl remove_actors
	ldrb r0, [r4]
	cmp r0, #0
	beq _0805E6B2
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_0805F8DC
_0805E6B2:
	adds r0, r6, #0
	adds r1, r7, #0
	adds r2, r5, #0
	movs r3, #0
	bl SetupRoom
	ldr r0, _0805E720
	ldrh r0, [r0]
	ldr r1, _0805E724
	ldrh r1, [r1]
	ldr r2, _0805E728
	ldrh r2, [r2]
	ldr r3, _0805E72C
	ldrh r3, [r3]
	movs r4, #0x15
	str r4, [sp]
	movs r4, #0x20
	str r4, [sp, #4]
	bl sub_8013A10
	bl EnableBGAlphaBlending
	bl sub_800EB14
	bl init_efx
	bl init_room_name
	bl sub_80631A0
	cmp r0, #0
	beq _0805E6FC
	ldr r1, _0805E730
	movs r0, #1
	strb r0, [r1]
	bl sub_8063188
_0805E6FC:
	ldr r1, _0805E734
	movs r0, #0
	strb r0, [r1, #0x13]
	mov r0, r8
	cmp r0, #0
	beq _0805E738
	ldr r0, _0805E714
	adds r1, r5, #0
	movs r2, #1
	bl sub_8026F78
	b _0805E742
	.align 2, 0
_0805E714: .4byte 0x00000FFF
_0805E718: .4byte 0x0203FA15
_0805E71C: .4byte 0x0203F9F4
_0805E720: .4byte 0x0200145C
_0805E724: .4byte 0x0200145E
_0805E728: .4byte 0x02001460
_0805E72C: .4byte 0x02001462
_0805E730: .4byte 0x0203E137
_0805E734: .4byte gPlayerSprite
_0805E738:
	ldr r0, _0805E764
	adds r1, r5, #0
	movs r2, #1
	bl sub_8026E48
_0805E742:
	ldr r2, _0805E768
	ldr r0, _0805E76C
	ldrh r3, [r0]
	strh r3, [r2, #6]
	ldr r0, _0805E770
	ldrh r1, [r0]
	strb r1, [r2, #8]
	ldr r0, _0805E774
	strh r3, [r0, #6]
	strb r1, [r0, #8]
	movs r0, #1
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0805E764: .4byte 0x00000FFF
_0805E768: .4byte gPlayerSprite
_0805E76C: .4byte 0x02001464
_0805E770: .4byte 0x02001466
_0805E774: .4byte gPlayerShadowSprite

    .thumb
script_cmd_restore_room: @ 0x0805E778
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r6, r0, #0
	ldr r0, _0805E7F4
	ldrb r0, [r0]
	cmp r0, #0
	beq _0805E792
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_0805F8DC
_0805E792:
	ldr r4, _0805E7F8
	ldr r0, [r4]
	bl remove_actors
	ldr r5, _0805E7FC
	ldr r2, _0805E800
	ldr r3, [r4]
	ldrb r0, [r3, #4]
	lsls r1, r0, #3
	adds r1, r1, r2
	ldrh r2, [r5]
	ldrh r1, [r1, #6]
	eors r2, r1
	rsbs r1, r2, #0
	orrs r1, r2
	lsrs r7, r1, #0x1f
	ldr r1, [r3, #8]
	ldr r2, [r3, #0xc]
	ldr r3, [r3, #0x10]
	movs r5, #0
	str r5, [sp]
	movs r4, #2
	str r4, [sp, #4]
	bl sub_800C1E8
	bl sub_80631A0
	cmp r0, #0
	beq _0805E7D4
	ldr r0, _0805E804
	strb r5, [r0]
	bl sub_8063194
_0805E7D4:
	movs r0, #0x80
	lsls r0, r0, #1
	bl sub_8029DA8
	cmp r6, #1
	beq _0805E80C
	cmp r6, #1
	ble _0805E7E8
	cmp r6, #3
	beq _0805E816
_0805E7E8:
	ldr r0, _0805E808
	adds r1, r7, #0
	movs r2, #1
	bl sub_8026E48
	b _0805E816
	.align 2, 0
_0805E7F4: .4byte 0x0203FA15
_0805E7F8: .4byte 0x0203F9F4
_0805E7FC: .4byte gLoadedRoomBgm
_0805E800: .4byte 0x080CF4EC
_0805E804: .4byte 0x0203E137
_0805E808: .4byte 0x00000FFF
_0805E80C:
	ldr r0, _0805E83C
	adds r1, r7, #0
	movs r2, #1
	bl sub_8026F78
_0805E816:
	ldr r1, _0805E840
	movs r0, #0
	strb r0, [r1]
	ldr r0, _0805E844
	ldrb r0, [r0]
	cmp r0, #0
	beq _0805E830
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl script_cmd_store_camera_position
_0805E830:
	movs r0, #1
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0805E83C: .4byte 0x00000FFF
_0805E840: .4byte 0x0203FA16
_0805E844: .4byte 0x0203FA15

	.thumb
script_cmd_jump: @ 0x0805E848
	ldr r2, _0805E858
	ldr r2, [r2]
	strh r0, [r2, #0x18]
	subs r1, #1
	strh r1, [r2, #0x1c]
	movs r0, #1
	bx lr
	.align 2, 0
_0805E858: .4byte 0x0203F9F4

    .thumb
script_cmd_jump_cond: @ 0x0805E85C
	push {r4, r5, r6, lr}
	adds r4, r1, #0
	adds r5, r2, #0
	movs r6, #0
	cmp r0, #5
	bhi _0805E8BE
	lsls r0, r0, #2
	ldr r1, _0805E874
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0805E874: .4byte 0x0805E878
_0805E878: @ jump table
	.4byte _0805E8BE @ case 0
	.4byte _0805E8BE @ case 1
	.4byte _0805E890 @ case 2
	.4byte _0805E896 @ case 3
	.4byte _0805E8A4 @ case 4
	.4byte _0805E8B4 @ case 5
_0805E890:
	bl is_game_complete
	b _0805E89A
_0805E896:
	ldr r0, _0805E8A0
	ldrb r0, [r0]
_0805E89A:
	cmp r0, #0
	beq _0805E8BE
	b _0805E8C2
	.align 2, 0
_0805E8A0: .4byte gTransformation
_0805E8A4:
	ldr r0, _0805E8B0
	ldrb r0, [r0, #0x16]
	cmp r0, #0
	bne _0805E8BE
	b _0805E8C2
	.align 2, 0
_0805E8B0: .4byte 0x0200209A
_0805E8B4:
	ldr r0, _0805E8D4
	ldrb r0, [r0, #5]
	cmp r0, #0
	bne _0805E8BE
	movs r6, #1
_0805E8BE:
	cmp r6, #0
	beq _0805E8CC
_0805E8C2:
	ldr r0, _0805E8D8
	ldr r1, [r0]
	strh r4, [r1, #0x18]
	subs r0, r5, #1
	strh r0, [r1, #0x1c]
_0805E8CC:
	movs r0, #1
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0805E8D4: .4byte 0x0200209A
_0805E8D8: .4byte 0x0203F9F4

    .thumb
script_cmd_hide_player: @ 0x0805E8DC
	push {lr}
	adds r2, r0, #0
	cmp r2, #0
	beq _0805E8F0
	ldr r1, _0805E8EC
	movs r0, #1
	strb r0, [r1]
	b _0805E8F8
	.align 2, 0
_0805E8EC: .4byte 0x0200108D
_0805E8F0:
	ldr r0, _0805E904
	strb r2, [r0]
	ldr r0, _0805E908
	strb r2, [r0, #0x10]
_0805E8F8:
	ldr r0, _0805E90C
	strb r2, [r0]
	movs r0, #1
	pop {r1}
	bx r1
	.align 2, 0
_0805E904: .4byte 0x0200108D
_0805E908: .4byte gPlayerSprite
_0805E90C: .4byte 0x0203F9A2

    .thumb
script_cmd_actor_init: @ 0x0805E910
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x10
	mov r8, r0
	ldr r5, _0805E9F4
	ldr r0, [r5]
	mov r1, r8
	lsls r4, r1, #1
	add r4, r8
	lsls r4, r4, #5
	ldr r0, [r0]
	adds r0, r0, r4
	ldr r1, _0805E9F8
	movs r6, #1
	str r6, [sp]
	movs r2, #0xf0
	str r2, [sp, #4]
	movs r2, #0xc8
	str r2, [sp, #8]
	movs r2, #2
	str r2, [sp, #0xc]
	movs r2, #0
	movs r3, #0
	bl SetSprite
	ldr r0, [r5]
	ldr r0, [r0]
	adds r0, r4, r0
	adds r0, #0x56
	movs r2, #0
	strb r6, [r0]
	ldr r0, [r5]
	ldr r0, [r0]
	adds r0, r4, r0
	adds r0, #0x57
	strb r2, [r0]
	ldr r0, [r5]
	ldr r0, [r0]
	adds r0, r4, r0
	adds r0, #0x58
	strb r2, [r0]
	ldr r0, [r5]
	ldr r0, [r0]
	adds r0, r4, r0
	adds r0, #0x59
	strb r2, [r0]
	ldr r0, [r5]
	ldr r0, [r0]
	adds r0, r4, r0
	adds r0, #0x5a
	strb r2, [r0]
	ldr r0, [r5]
	ldr r1, [r0]
	adds r1, r4, r1
	ldr r0, _0805E9FC
	movs r3, #0
	ldrsh r0, [r0, r3]
	ldrh r3, [r1, #6]
	adds r0, r0, r3
	lsls r0, r0, #0x10
	str r0, [r1, #0x1c]
	ldr r0, _0805EA00
	movs r3, #0
	ldrsh r0, [r0, r3]
	ldrb r3, [r1, #8]
	adds r0, r0, r3
	lsls r0, r0, #0x10
	str r0, [r1, #0x20]
	str r2, [r1, #0x30]
	str r2, [r1, #0x34]
	str r2, [r1, #0x2c]
	adds r1, #0x55
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, [r5]
	ldr r0, [r0]
	adds r0, r4, r0
	adds r0, #0x5b
	strb r2, [r0]
	ldr r0, [r5]
	ldr r0, [r0]
	adds r0, r4, r0
	str r2, [r0, #0x38]
	movs r1, #0x80
	lsls r1, r1, #0x11
	str r1, [r0, #0x3c]
	str r1, [r0, #0x40]
	str r2, [r0, #0x44]
	adds r0, #0x54
	strb r2, [r0]
	ldr r0, [r5]
	ldr r0, [r0]
	adds r4, r4, r0
	str r2, [r4, #0x50]
	str r2, [r4, #0x48]
	str r2, [r4, #0x4c]
	adds r4, #0x5c
	strb r2, [r4]
	ldr r1, _0805EA04
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldr r0, [r5]
	mov r1, r8
	bl sub_805D614
	movs r0, #1
	add sp, #0x10
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0805E9F4: .4byte 0x0203F9F4
_0805E9F8: .4byte 0x00000451
_0805E9FC: .4byte gCameraPixelX
_0805EA00: .4byte gCameraPixelY
_0805EA04: .4byte 0x0203F9A0

    .thumb
script_cmd_actor_disable: @ 0x0805EA08
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r6, _0805EA9C
	ldr r2, [r6]
	ldr r0, [r2]
	lsls r1, r5, #1
	adds r1, r1, r5
	lsls r4, r1, #5
	adds r0, r4, r0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, #0
	beq _0805EA50
	ldr r1, _0805EAA0
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	ldr r0, [r2]
	adds r0, r4, r0
	adds r2, r0, #0
	adds r2, #0x55
	movs r1, #0
	ldrsb r1, [r2, r1]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _0805EA50
	adds r0, r1, #0
	bl sub_8003864
	ldr r0, [r6]
	ldr r0, [r0]
	adds r0, r4, r0
	adds r0, #0x55
	movs r1, #0xff
	strb r1, [r0]
_0805EA50:
	ldr r3, _0805EA9C
	ldr r0, [r3]
	ldr r0, [r0]
	lsls r1, r5, #1
	adds r1, r1, r5
	lsls r1, r1, #5
	adds r0, r1, r0
	adds r0, #0x56
	movs r2, #0
	strb r2, [r0]
	ldr r0, [r3]
	ldr r0, [r0]
	adds r0, r1, r0
	adds r0, #0x57
	strb r2, [r0]
	ldr r0, [r3]
	ldr r0, [r0]
	adds r0, r1, r0
	adds r0, #0x58
	strb r2, [r0]
	ldr r0, [r3]
	ldr r0, [r0]
	adds r0, r1, r0
	adds r0, #0x59
	strb r2, [r0]
	ldr r0, [r3]
	ldr r0, [r0]
	adds r1, r1, r0
	ldr r0, [r1, #0x1c]
	str r0, [r1, #0x24]
	ldr r0, [r1, #0x20]
	str r0, [r1, #0x28]
	movs r0, #1
	strb r0, [r1, #0x13]
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0805EA9C: .4byte 0x0203F9F4
_0805EAA0: .4byte 0x0203F9A0

    .thumb
script_cmd_actor_enable: @ 0x0805EAA4
	push {r4, lr}
	ldr r4, _0805EAE4
	ldr r1, [r4]
	ldr r2, [r1]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r3, r1, #5
	adds r2, r3, r2
	adds r2, #0x56
	ldrb r0, [r2]
	cmp r0, #0
	bne _0805EAC4
	ldr r1, _0805EAE8
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
_0805EAC4:
	ldr r0, [r4]
	ldr r0, [r0]
	adds r0, r3, r0
	adds r0, #0x56
	movs r2, #0
	movs r1, #1
	strb r1, [r0]
	ldr r0, [r4]
	ldr r0, [r0]
	adds r0, r3, r0
	strb r2, [r0, #0x13]
	movs r0, #1
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0805EAE4: .4byte 0x0203F9F4
_0805EAE8: .4byte 0x0203F9A0

    .thumb
	.global script_cmd_actor_set_anim
script_cmd_actor_set_anim: @ 0x0805EAEC
	push {r4, lr}
	adds r3, r2, #0
	ldr r2, _0805EB0C
	ldr r4, [r2]
	lsls r2, r0, #1
	adds r2, r2, r0
	lsls r2, r2, #5
	ldr r0, [r4]
	adds r0, r0, r2
	movs r2, #0
	bl sprite_set_anim
	movs r0, #1
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0805EB0C: .4byte 0x0203F9F4

	.thumb
sub_805EB10: @ 0x0805EB10
	push {r4, lr}
	adds r4, r0, #0
	adds r2, r1, #0
	ldr r1, _0805EB2C
	ldrb r1, [r1]
	cmp r1, #0
	bne _0805EB54
	cmp r2, #1
	beq _0805EB48
	cmp r2, #1
	bgt _0805EB30
	cmp r2, #0
	beq _0805EB36
	b _0805ED14
	.align 2, 0
_0805EB2C: .4byte gTransformation
_0805EB30:
	cmp r2, #2
	beq _0805EB4E
	b _0805ED14
_0805EB36:
	ldr r1, _0805EB44
	adds r0, r4, #0
	movs r2, #1
	movs r3, #0
	bl script_cmd_actor_set_anim
	b _0805ED14
	.align 2, 0
_0805EB44: .4byte 0x000004EA
_0805EB48:
	adds r0, r4, #0
	movs r1, #9
	b _0805ECE0
_0805EB4E:
	adds r0, r4, #0
	movs r1, #1
	b _0805ED00
_0805EB54:
	cmp r1, #1
	bne _0805EBB8
	cmp r2, #1
	beq _0805EBA8
	cmp r2, #1
	bgt _0805EB66
	cmp r2, #0
	beq _0805EB6C
	b _0805ED14
_0805EB66:
	cmp r2, #2
	beq _0805EBB0
	b _0805ED14
_0805EB6C:
	ldr r1, _0805EBA0
	adds r0, r4, #0
	movs r2, #1
	movs r3, #0
	bl script_cmd_actor_set_anim
	adds r0, r4, #0
	movs r1, #6
	movs r2, #0
	movs r3, #0
	bl script_cmd_actor_set_direction
	adds r0, r4, #0
	movs r1, #5
	movs r2, #0
	movs r3, #0
	bl sub_805F0A8
	adds r0, r4, #0
	movs r1, #5
	movs r2, #0
	movs r3, #0
	bl sub_805F0E8
	ldr r0, _0805EBA4
	b _0805ECCA
	.align 2, 0
_0805EBA0: .4byte 0x00000141
_0805EBA4: .4byte 0x083FD734
_0805EBA8:
	ldr r1, _0805EBAC
	b _0805ECDE
	.align 2, 0
_0805EBAC: .4byte 0x00000131
_0805EBB0:
	ldr r1, _0805EBB4
	b _0805ECFE
	.align 2, 0
_0805EBB4: .4byte 0x00000149
_0805EBB8:
	cmp r1, #2
	bne _0805EC1C
	cmp r2, #1
	beq _0805EC0C
	cmp r2, #1
	bgt _0805EBCA
	cmp r2, #0
	beq _0805EBD0
	b _0805ED14
_0805EBCA:
	cmp r2, #2
	beq _0805EC14
	b _0805ED14
_0805EBD0:
	ldr r1, _0805EC04
	adds r0, r4, #0
	movs r2, #1
	movs r3, #0
	bl script_cmd_actor_set_anim
	adds r0, r4, #0
	movs r1, #5
	movs r2, #0
	movs r3, #0
	bl script_cmd_actor_set_direction
	adds r0, r4, #0
	movs r1, #8
	movs r2, #0
	movs r3, #0
	bl sub_805F0A8
	adds r0, r4, #0
	movs r1, #8
	movs r2, #0
	movs r3, #0
	bl sub_805F0E8
	ldr r0, _0805EC08
	b _0805ECCA
	.align 2, 0
_0805EC04: .4byte 0x00000169
_0805EC08: .4byte 0x083FD754
_0805EC0C:
	ldr r1, _0805EC10
	b _0805ECDE
	.align 2, 0
_0805EC10: .4byte 0x00000181
_0805EC14:
	ldr r1, _0805EC18
	b _0805ECFE
	.align 2, 0
_0805EC18: .4byte 0x00000171
_0805EC1C:
	cmp r1, #4
	bne _0805EC80
	cmp r2, #1
	beq _0805EC70
	cmp r2, #1
	bgt _0805EC2E
	cmp r2, #0
	beq _0805EC34
	b _0805ED14
_0805EC2E:
	cmp r2, #2
	beq _0805EC78
	b _0805ED14
_0805EC34:
	ldr r1, _0805EC68
	adds r0, r4, #0
	movs r2, #1
	movs r3, #0
	bl script_cmd_actor_set_anim
	adds r0, r4, #0
	movs r1, #5
	movs r2, #0
	movs r3, #0
	bl script_cmd_actor_set_direction
	adds r0, r4, #0
	movs r1, #3
	movs r2, #0
	movs r3, #0
	bl sub_805F0A8
	adds r0, r4, #0
	movs r1, #3
	movs r2, #0
	movs r3, #0
	bl sub_805F0E8
	ldr r0, _0805EC6C
	b _0805ECCA
	.align 2, 0
_0805EC68: .4byte 0x000001D1
_0805EC6C: .4byte 0x083FD794
_0805EC70:
	ldr r1, _0805EC74
	b _0805ECDE
	.align 2, 0
_0805EC74: .4byte 0x000001B1
_0805EC78:
	ldr r1, _0805EC7C
	b _0805ECFE
	.align 2, 0
_0805EC7C: .4byte 0x000001A9
_0805EC80:
	cmp r1, #3
	bne _0805ED1C
	cmp r2, #1
	beq _0805ECDC
	cmp r2, #1
	bgt _0805EC92
	cmp r2, #0
	beq _0805EC98
	b _0805ED14
_0805EC92:
	cmp r2, #2
	beq _0805ECFC
	b _0805ED14
_0805EC98:
	ldr r1, _0805ECD4
	adds r0, r4, #0
	movs r2, #1
	movs r3, #0
	bl script_cmd_actor_set_anim
	adds r0, r4, #0
	movs r1, #5
	movs r2, #0
	movs r3, #0
	bl script_cmd_actor_set_direction
	adds r0, r4, #0
	movs r1, #9
	movs r2, #0
	movs r3, #0
	bl sub_805F0A8
	adds r0, r4, #0
	movs r1, #9
	movs r2, #0
	movs r3, #0
	bl sub_805F0E8
	ldr r0, _0805ECD8
_0805ECCA:
	movs r1, #7
	movs r2, #7
	bl DmaTransferObjPalette
	b _0805ED14
	.align 2, 0
_0805ECD4: .4byte 0x00000191
_0805ECD8: .4byte 0x083FD774
_0805ECDC:
	ldr r1, _0805ECF8
_0805ECDE:
	adds r0, r4, #0
_0805ECE0:
	movs r2, #1
	movs r3, #0
	bl script_cmd_actor_set_anim
	adds r0, r4, #0
	movs r1, #6
	movs r2, #0
	movs r3, #0
	bl script_cmd_actor_set_direction
	b _0805ED14
	.align 2, 0
_0805ECF8: .4byte 0x000001A1
_0805ECFC:
	ldr r1, _0805ED18
_0805ECFE:
	adds r0, r4, #0
_0805ED00:
	movs r2, #0
	movs r3, #0
	bl script_cmd_actor_set_anim
	adds r0, r4, #0
	movs r1, #6
	movs r2, #0
	movs r3, #0
	bl script_cmd_actor_set_direction
_0805ED14:
	movs r0, #1
	b _0805ED20
	.align 2, 0
_0805ED18: .4byte 0x00000191
_0805ED1C:
	.2byte 0xEE00, 0xEE00
_0805ED20:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

    .thumb
script_cmd_actor_set_position: @ 0x0805ED28
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	ldr r6, _0805ED88
	ldr r3, [r6]
	ldr r3, [r3]
	lsls r4, r0, #1
	adds r4, r4, r0
	lsls r4, r4, #5
	adds r3, r4, r3
	lsls r5, r1, #0x10
	str r5, [r3, #0x1c]
	lsls r0, r2, #0x10
	str r0, [r3, #0x20]
	str r5, [r3, #0x24]
	str r0, [r3, #0x28]
	adds r3, #0x57
	movs r0, #0
	strb r0, [r3]
	ldr r5, [r6]
	ldr r3, [r5]
	adds r3, r4, r3
	str r0, [r3, #0x2c]
	ldr r0, _0805ED8C
	ldrh r0, [r0]
	subs r1, r1, r0
	movs r0, #0
	mov r8, r0
	strh r1, [r3, #6]
	ldr r1, [r5]
	adds r1, r4, r1
	ldr r0, _0805ED90
	ldrb r0, [r0]
	subs r2, r2, r0
	strb r2, [r1, #8]
	ldr r0, [r6]
	ldr r0, [r0]
	adds r4, r4, r0
	adds r4, #0x5a
	mov r0, r8
	strb r0, [r4]
	movs r0, #1
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0805ED88: .4byte 0x0203F9F4
_0805ED8C: .4byte gCameraPixelX
_0805ED90: .4byte gCameraPixelY

    .thumb
sub_805ED94: @ 0x0805ED94
	push {r4, lr}
	adds r3, r1, #0
	adds r4, r2, #0
	ldr r1, _0805EDB8
	movs r2, #0
	ldrsh r1, [r1, r2]
	adds r1, r1, r3
	ldr r2, _0805EDBC
	movs r3, #0
	ldrsh r2, [r2, r3]
	adds r2, r2, r4
	movs r3, #0
	bl script_cmd_actor_set_position
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0805EDB8: .4byte 0x0203F994
_0805EDBC: .4byte 0x0203F996

    .thumb
script_cmd_actor_set_position_from_cam: @ 0x0805EDC0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r3, _0805EE30
	mov r8, r3
	ldr r3, [r3]
	ldr r3, [r3]
	lsls r4, r0, #1
	adds r4, r4, r0
	lsls r4, r4, #5
	adds r3, r4, r3
	ldr r6, _0805EE34
	movs r5, #0
	ldrsh r0, [r6, r5]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	str r0, [r3, #0x1c]
	ldr r5, _0805EE38
	movs r7, #0
	ldrsh r0, [r5, r7]
	adds r0, r0, r2
	lsls r0, r0, #0x10
	str r0, [r3, #0x20]
	movs r7, #0
	ldrsh r0, [r6, r7]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	str r0, [r3, #0x24]
	movs r6, #0
	ldrsh r0, [r5, r6]
	adds r0, r0, r2
	lsls r0, r0, #0x10
	str r0, [r3, #0x28]
	adds r3, #0x57
	movs r5, #0
	strb r5, [r3]
	mov r7, r8
	ldr r3, [r7]
	ldr r0, [r3]
	adds r0, r4, r0
	str r5, [r0, #0x2c]
	strh r1, [r0, #6]
	ldr r0, [r3]
	adds r0, r4, r0
	strb r2, [r0, #8]
	ldr r0, [r7]
	ldr r0, [r0]
	adds r4, r4, r0
	adds r4, #0x5a
	strb r5, [r4]
	movs r0, #1
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0805EE30: .4byte 0x0203F9F4
_0805EE34: .4byte gCameraPixelX
_0805EE38: .4byte gCameraPixelY

    .thumb
	.global script_cmd_actor_set_position_absolute
script_cmd_actor_set_position_absolute: @ 0x0805EE3C
	push {r4, r5, r6, lr}
	ldr r6, _0805EE80
	ldr r3, [r6]
	ldr r3, [r3]
	lsls r4, r0, #1
	adds r4, r4, r0
	lsls r4, r4, #5
	adds r3, r4, r3
	lsls r5, r1, #0x10
	str r5, [r3, #0x1c]
	lsls r0, r2, #0x10
	str r0, [r3, #0x20]
	str r5, [r3, #0x24]
	str r0, [r3, #0x28]
	adds r3, #0x57
	movs r5, #0
	strb r5, [r3]
	ldr r3, [r6]
	ldr r0, [r3]
	adds r0, r4, r0
	str r5, [r0, #0x2c]
	strh r1, [r0, #6]
	ldr r0, [r3]
	adds r0, r4, r0
	strb r2, [r0, #8]
	ldr r0, [r6]
	ldr r0, [r0]
	adds r4, r4, r0
	adds r4, #0x5a
	movs r0, #1
	strb r0, [r4]
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0805EE80: .4byte 0x0203F9F4

	.thumb
script_cmd_actor_save_position: @ 0x0805EE84
	ldr r3, _0805EEAC
	ldr r1, _0805EEB0
	ldr r1, [r1]
	ldr r2, [r1]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #5
	adds r1, r1, r2
	ldrh r0, [r1, #6]
	strh r0, [r3]
	ldr r2, _0805EEB4
	ldrb r0, [r1, #8]
	strh r0, [r2]
	ldr r2, _0805EEB8
	ldrb r1, [r1, #4]
	movs r0, #3
	subs r0, r0, r1
	strb r0, [r2]
	movs r0, #1
	bx lr
	.align 2, 0
_0805EEAC: .4byte 0x0203F994
_0805EEB0: .4byte 0x0203F9F4
_0805EEB4: .4byte 0x0203F996
_0805EEB8: .4byte byte_203F99D

    .thumb
sub_805EEBC: @ 0x0805EEBC
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, _0805EF04
	movs r0, #2
	ldrsh r1, [r4, r0]
	ldr r0, _0805EF08
	ldrh r2, [r0]
	ldr r0, [r4, #4]
	ldr r3, [r4, #8]
	adds r0, r0, r3
	asrs r0, r0, #0x10
	subs r2, r2, r0
	adds r0, r5, #0
	movs r3, #0
	bl script_cmd_actor_set_position
	bl sub_800C50C
	movs r1, #3
	subs r1, r1, r0
	adds r0, r5, #0
	movs r2, #0
	movs r3, #0
	bl script_cmd_actor_set_priority
	ldr r1, [r4, #4]
	adds r0, r5, #0
	movs r2, #0
	movs r3, #0
	bl sub_805F04C
	movs r0, #1
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0805EF04: .4byte gPlayerPos
_0805EF08: .4byte gMapPixelSizeY

    .thumb
sub_805EF0C: @ 0x0805EF0C
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, _0805EF54
	movs r0, #2
	ldrsh r1, [r4, r0]
	ldr r0, _0805EF58
	ldrh r2, [r0]
	ldr r0, [r4, #4]
	ldr r3, [r4, #8]
	adds r0, r0, r3
	asrs r0, r0, #0x10
	subs r2, r2, r0
	adds r0, r5, #0
	movs r3, #0
	bl script_cmd_actor_set_position
	bl sub_800C50C
	movs r1, #3
	subs r1, r1, r0
	adds r0, r5, #0
	movs r2, #0
	movs r3, #0
	bl script_cmd_actor_set_priority
	ldr r1, [r4, #4]
	adds r0, r5, #0
	movs r2, #0
	movs r3, #0
	bl sub_805F04C
	movs r0, #1
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0805EF54: .4byte gPlayerShadowPos
_0805EF58: .4byte gMapPixelSizeY

    .thumb
script_cmd_actor_set_direction: @ 0x0805EF5C
	push {r4, r5, lr}
	adds r5, r1, #0
	ldr r4, _0805EF90
	ldr r1, [r4]
	ldr r2, [r1]
	lsls r3, r0, #1
	adds r3, r3, r0
	lsls r3, r3, #5
	adds r2, r3, r2
	ldrb r0, [r2, #0xa]
	ldrh r1, [r2]
	subs r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	strb r5, [r2, #0xa]
	ldr r0, [r4]
	ldr r0, [r0]
	adds r0, r0, r3
	ldrb r3, [r0, #0xb]
	movs r2, #0
	bl sprite_set_anim
	movs r0, #1
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0805EF90: .4byte 0x0203F9F4

	.thumb
sub_805EF94: @ 0x0805EF94
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	ldr r2, _0805EFEC
	ldr r0, [r2]
	ldr r1, [r0]
	lsls r0, r7, #1
	adds r0, r0, r7
	lsls r0, r0, #5
	adds r1, r0, r1
	ldr r0, [r1, #0x30]
	cmp r0, #0
	bne _0805EFB6
	ldr r0, [r1, #0x34]
	cmp r0, #0
	bne _0805EFB6
	.2byte 0xEE00, 0xEE00
_0805EFB6:
	ldr r0, [r2]
	ldr r1, [r0]
	lsls r0, r7, #1
	adds r0, r0, r7
	lsls r0, r0, #5
	adds r0, r0, r1
	ldr r2, [r0, #0x24]
	ldr r1, [r0, #0x1c]
	subs r6, r2, r1
	ldr r1, [r0, #0x28]
	ldr r0, [r0, #0x20]
	subs r5, r1, r0
	adds r0, r6, #0
	bl Abs
	adds r4, r0, #0
	adds r0, r5, #0
	bl Abs
	cmp r4, r0
	bls _0805EFF0
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_80039AC
	b _0805EFF8
	.align 2, 0
_0805EFEC: .4byte 0x0203F9F4
_0805EFF0:
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_80039B4
_0805EFF8:
	bl sub_805E3CC
	adds r1, r0, #0
	adds r0, r7, #0
	movs r2, #0
	movs r3, #0
	bl script_cmd_actor_set_direction
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

    .thumb
script_cmd_actor_set_priority: @ 0x0805F010
	push {lr}
	adds r3, r1, #0
	ldr r1, _0805F030
	ldr r2, [r1]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #5
	ldr r0, [r2]
	adds r0, r0, r1
	movs r1, #3
	subs r1, r1, r3
	bl sprite_set_priority
	movs r0, #1
	pop {r1}
	bx r1
	.align 2, 0
_0805F030: .4byte 0x0203F9F4

    .thumb
sub_805F034: @ 0x0805F034
	push {lr}
	ldr r1, _0805F048
	ldrb r1, [r1]
	movs r2, #0
	movs r3, #0
	bl script_cmd_actor_set_priority
	pop {r1}
	bx r1
	.align 2, 0
_0805F048: .4byte byte_203F99D

    .thumb
sub_805F04C: @ 0x0805F04C
	ldr r2, _0805F064
	ldr r2, [r2]
	ldr r3, [r2]
	lsls r2, r0, #1
	adds r2, r2, r0
	lsls r2, r2, #5
	adds r2, r2, r3
	lsls r1, r1, #0x10
	str r1, [r2, #0x38]
	movs r0, #1
	bx lr
	.align 2, 0
_0805F064: .4byte 0x0203F9F4

	.thumb
script_cmd_actor_set_obj_mode: @ 0x0805F068
	ldr r2, _0805F07C
	ldr r2, [r2]
	ldr r3, [r2]
	lsls r2, r0, #1
	adds r2, r2, r0
	lsls r2, r2, #5
	adds r2, r2, r3
	strb r1, [r2, #0x10]
	movs r0, #1
	bx lr
	.align 2, 0
_0805F07C: .4byte 0x0203F9F4

    .thumb
script_cmd_actor_set_palette: @ 0x0805F080
	push {r4, r5, lr}
	ldr r5, _0805F0A4
	ldr r2, [r5]
	lsls r4, r0, #1
	adds r4, r4, r0
	lsls r4, r4, #5
	ldr r0, [r2]
	adds r0, r0, r4
	bl sprite_set_palette
	ldr r0, [r5]
	ldr r0, [r0]
	adds r4, r4, r0
	movs r0, #1
	strb r0, [r4, #0x12]
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0805F0A4: .4byte 0x0203F9F4

    .thumb
sub_805F0A8: @ 0x0805F0A8
	push {lr}
	ldr r2, _0805F0C4
	ldr r3, [r2]
	lsls r2, r0, #1
	adds r2, r2, r0
	lsls r2, r2, #5
	ldr r0, [r3]
	adds r0, r0, r2
	bl sprite_lock_anim_on_frame
	movs r0, #1
	pop {r1}
	bx r1
	.align 2, 0
_0805F0C4: .4byte 0x0203F9F4

    .thumb
script_cmd_actor_unlock_anim: @ 0x0805F0C8
	push {lr}
	ldr r1, _0805F0E4
	ldr r2, [r1]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #5
	ldr r0, [r2]
	adds r0, r0, r1
	bl sprite_unlock_anim
	movs r0, #1
	pop {r1}
	bx r1
	.align 2, 0
_0805F0E4: .4byte 0x0203F9F4

    .thumb
sub_805F0E8: @ 0x0805F0E8
	push {lr}
	ldr r2, _0805F104
	ldr r3, [r2]
	lsls r2, r0, #1
	adds r2, r2, r0
	lsls r2, r2, #5
	ldr r0, [r3]
	adds r0, r0, r2
	bl sprite_set_locked_frame
	movs r0, #1
	pop {r1}
	bx r1
	.align 2, 0
_0805F104: .4byte 0x0203F9F4

	.thumb
sub_805F108: @ 0x0805F108
	ldr r2, _0805F11C
	ldr r2, [r2]
	ldr r3, [r2]
	lsls r2, r0, #1
	adds r2, r2, r0
	lsls r2, r2, #5
	adds r2, r2, r3
	strb r1, [r2, #0xe]
	movs r0, #1
	bx lr
	.align 2, 0
_0805F11C: .4byte 0x0203F9F4

    .thumb
sub_805F120: @ 0x0805F120
	push {lr}
	ldr r1, _0805F140
	ldr r2, [r1]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #5
	ldr r0, [r2]
	adds r0, r0, r1
	ldr r2, _0805F144
	movs r1, #0xf
	bl sub_800E9EC
	movs r0, #1
	pop {r1}
	bx r1
	.align 2, 0
_0805F140: .4byte 0x0203F9F4
_0805F144: .4byte 0x00001FFF

    .thumb
	.global script_cmd_actor_move
script_cmd_actor_move: @ 0x0805F148
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov sb, r0
	adds r4, r1, #0
	adds r6, r2, #0
	mov sl, r3
	ldr r0, _0805F234
	mov r8, r0
	ldr r0, [r0]
	ldr r1, [r0]
	mov r2, sb
	lsls r0, r2, #1
	add r0, sb
	lsls r5, r0, #5
	adds r1, r5, r1
	adds r1, #0x55
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _0805F190
	movs r0, #0x96
	lsls r0, r0, #0xf
	bl sub_8003854
	mov r2, r8
	ldr r1, [r2]
	ldr r1, [r1]
	adds r1, r5, r1
	adds r1, #0x55
	strb r0, [r1]
_0805F190:
	mov r1, r8
	ldr r0, [r1]
	ldr r0, [r0]
	adds r0, r5, r0
	adds r0, #0x55
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldr r1, _0805F238
	ldr r1, [r1]
	bl sub_800389C
	mov r2, r8
	ldr r0, [r2]
	ldr r0, [r0]
	adds r0, r5, r0
	adds r0, #0x55
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldr r1, _0805F23C
	ldr r1, [r1]
	bl sub_8003894
	mov r1, r8
	ldr r0, [r1]
	ldr r0, [r0]
	adds r0, r5, r0
	lsls r2, r4, #0x10
	str r2, [r0, #0x24]
	lsls r3, r6, #0x10
	str r3, [r0, #0x28]
	ldr r1, [r0, #0x1c]
	subs r7, r2, r1
	ldr r1, [r0, #0x20]
	subs r6, r3, r1
	mov r2, sl
	str r2, [r0, #0x2c]
	adds r0, r7, #0
	bl Abs
	mov r2, r8
	ldr r1, [r2]
	ldr r1, [r1]
	adds r1, r5, r1
	str r0, [r1, #0x30]
	adds r0, r6, #0
	bl Abs
	mov r2, r8
	ldr r1, [r2]
	ldr r1, [r1]
	adds r1, r5, r1
	str r0, [r1, #0x34]
	adds r0, r7, #0
	bl Abs
	adds r4, r0, #0
	adds r0, r6, #0
	bl Abs
	cmp r4, r0
	bls _0805F240
	mov r1, r8
	ldr r0, [r1]
	ldr r0, [r0]
	adds r0, r5, r0
	adds r0, #0x55
	movs r4, #0
	ldrsb r4, [r0, r4]
	adds r0, r6, #0
	adds r1, r7, #0
	bl sub_80039AC
	adds r2, r0, #0
	adds r0, r4, #0
	mov r1, sl
	movs r3, #0
	bl sub_8003884
	b _0805F262
	.align 2, 0
_0805F234: .4byte 0x0203F9F4
_0805F238: .4byte 0x080CC844
_0805F23C: .4byte 0x080CC7EC
_0805F240:
	mov r2, r8
	ldr r0, [r2]
	ldr r0, [r0]
	adds r0, r5, r0
	adds r0, #0x55
	movs r4, #0
	ldrsb r4, [r0, r4]
	adds r0, r7, #0
	adds r1, r6, #0
	bl sub_80039B4
	adds r2, r0, #0
	adds r0, r4, #0
	mov r1, sl
	movs r3, #0
	bl sub_8003884
_0805F262:
	ldr r0, _0805F288
	ldr r0, [r0]
	ldr r1, [r0]
	mov r2, sb
	lsls r0, r2, #1
	add r0, sb
	lsls r0, r0, #5
	adds r0, r0, r1
	adds r0, #0x57
	movs r1, #1
	strb r1, [r0]
	movs r0, #1
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0805F288: .4byte 0x0203F9F4

    .thumb
sub_805F28C: @ 0x0805F28C
	push {r4, lr}
	adds r3, r1, #0
	ldr r1, _0805F2A8
	movs r2, #0
	ldrsh r1, [r1, r2]
	ldr r2, _0805F2AC
	movs r4, #0
	ldrsh r2, [r2, r4]
	bl script_cmd_actor_move
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0805F2A8: .4byte 0x0203F994
_0805F2AC: .4byte 0x0203F996

    .thumb
sub_805F2B0: @ 0x0805F2B0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov sb, r0
	adds r4, r1, #0
	adds r6, r2, #0
	mov sl, r3
	ldr r0, _0805F3AC
	mov r8, r0
	ldr r0, [r0]
	ldr r1, [r0]
	mov r2, sb
	lsls r0, r2, #1
	add r0, sb
	lsls r5, r0, #5
	adds r1, r5, r1
	adds r1, #0x55
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _0805F2F8
	movs r0, #0x96
	lsls r0, r0, #0xf
	bl sub_8003854
	mov r2, r8
	ldr r1, [r2]
	ldr r1, [r1]
	adds r1, r5, r1
	adds r1, #0x55
	strb r0, [r1]
_0805F2F8:
	mov r1, r8
	ldr r0, [r1]
	ldr r0, [r0]
	adds r0, r5, r0
	adds r0, #0x55
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldr r1, _0805F3B0
	ldr r1, [r1]
	bl sub_800389C
	mov r2, r8
	ldr r0, [r2]
	ldr r0, [r0]
	adds r0, r5, r0
	adds r0, #0x55
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldr r1, _0805F3B4
	ldr r1, [r1]
	bl sub_8003894
	mov r1, r8
	ldr r0, [r1]
	ldr r2, [r0]
	adds r2, r5, r2
	ldr r0, _0805F3B8
	movs r1, #0
	ldrsh r3, [r0, r1]
	adds r3, r3, r4
	lsls r3, r3, #0x10
	str r3, [r2, #0x24]
	ldr r0, _0805F3BC
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r0, r0, r6
	lsls r0, r0, #0x10
	str r0, [r2, #0x28]
	ldr r1, [r2, #0x1c]
	subs r7, r3, r1
	ldr r1, [r2, #0x20]
	subs r6, r0, r1
	mov r0, sl
	str r0, [r2, #0x2c]
	adds r0, r7, #0
	bl Abs
	mov r2, r8
	ldr r1, [r2]
	ldr r1, [r1]
	adds r1, r5, r1
	str r0, [r1, #0x30]
	adds r0, r6, #0
	bl Abs
	mov r2, r8
	ldr r1, [r2]
	ldr r1, [r1]
	adds r1, r5, r1
	str r0, [r1, #0x34]
	adds r0, r7, #0
	bl Abs
	adds r4, r0, #0
	adds r0, r6, #0
	bl Abs
	cmp r4, r0
	bls _0805F3C0
	mov r1, r8
	ldr r0, [r1]
	ldr r0, [r0]
	adds r0, r5, r0
	adds r0, #0x55
	movs r4, #0
	ldrsb r4, [r0, r4]
	adds r0, r6, #0
	adds r1, r7, #0
	bl sub_80039AC
	adds r2, r0, #0
	adds r0, r4, #0
	mov r1, sl
	movs r3, #0
	bl sub_8003884
	b _0805F3E2
	.align 2, 0
_0805F3AC: .4byte 0x0203F9F4
_0805F3B0: .4byte 0x080CC844
_0805F3B4: .4byte 0x080CC7EC
_0805F3B8: .4byte gCameraPixelX
_0805F3BC: .4byte gCameraPixelY
_0805F3C0:
	mov r2, r8
	ldr r0, [r2]
	ldr r0, [r0]
	adds r0, r5, r0
	adds r0, #0x55
	movs r4, #0
	ldrsb r4, [r0, r4]
	adds r0, r7, #0
	adds r1, r6, #0
	bl sub_80039B4
	adds r2, r0, #0
	adds r0, r4, #0
	mov r1, sl
	movs r3, #0
	bl sub_8003884
_0805F3E2:
	ldr r0, _0805F408
	ldr r0, [r0]
	ldr r1, [r0]
	mov r2, sb
	lsls r0, r2, #1
	add r0, sb
	lsls r0, r0, #5
	adds r0, r0, r1
	adds r0, #0x57
	movs r1, #1
	strb r1, [r0]
	movs r0, #1
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0805F408: .4byte 0x0203F9F4

	.thumb
sub_805F40C: @ 0x0805F40C
	ldr r2, _0805F424
	ldr r2, [r2]
	ldr r3, [r2]
	lsls r2, r0, #1
	adds r2, r2, r0
	lsls r2, r2, #5
	adds r2, r2, r3
	adds r2, #0x5b
	strb r1, [r2]
	movs r0, #1
	bx lr
	.align 2, 0
_0805F424: .4byte 0x0203F9F4

	.thumb
sub_805F428: @ 0x0805F428
	ldr r2, _0805F440
	ldr r2, [r2]
	ldr r3, [r2]
	lsls r2, r0, #1
	adds r2, r2, r0
	lsls r2, r2, #5
	adds r2, r2, r3
	adds r2, #0x5c
	strb r1, [r2]
	movs r0, #1
	bx lr
	.align 2, 0
_0805F440: .4byte 0x0203F9F4

    .thumb
script_cmd_alloc_oam_matrices: @ 0x0805F444
	push {r4, lr}
	ldr r1, _0805F460
	str r0, [r1]
	ldr r4, _0805F464
	lsls r0, r0, #4
	movs r1, #5
	movs r2, #3
	bl Alloc
	str r0, [r4]
	movs r0, #1
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0805F460: .4byte gMatricesCount
_0805F464: .4byte gMatrices

    .thumb
script_cmd_free_oam_matrices: @ 0x0805F468
	push {lr}
	ldr r0, _0805F47C
	ldr r0, [r0]
	movs r1, #3
	bl Free
	movs r0, #1
	pop {r1}
	bx r1
	.align 2, 0
_0805F47C: .4byte gMatrices

    .thumb
sub_805F480: @ 0x0805F480
	push {r4, lr}
	adds r2, r1, #0
	ldr r4, _0805F4AC
	ldr r1, [r4]
	ldr r1, [r1]
	lsls r3, r0, #1
	adds r3, r3, r0
	lsls r3, r3, #5
	adds r1, r3, r1
	adds r1, #0x54
	strb r2, [r1]
	ldr r0, [r4]
	ldr r0, [r0]
	adds r0, r0, r3
	movs r1, #1
	bl sub_8003820
	movs r0, #1
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0805F4AC: .4byte 0x0203F9F4

    .thumb
sub_805F4B0: @ 0x0805F4B0
	push {r4, lr}
	ldr r3, _0805F4D8
	ldr r3, [r3]
	ldr r4, [r3]
	lsls r3, r0, #1
	adds r3, r3, r0
	lsls r3, r3, #5
	adds r3, r3, r4
	lsls r0, r1, #0x10
	str r0, [r3, #0x50]
	lsls r0, r2, #0x10
	str r0, [r3, #0x3c]
	adds r3, #0x54
	ldrb r0, [r3]
	bl sub_8025718
	movs r0, #1
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0805F4D8: .4byte 0x0203F9F4

	.thumb
sub_805F4DC: @ 0x0805F4DC
	push {r4, lr}
	adds r4, r2, #0
	ldr r2, _0805F508
	ldr r3, [r2]
	lsls r2, r0, #1
	adds r2, r2, r0
	lsls r2, r2, #5
	ldr r0, [r3]
	adds r2, r0, r2
	lsls r1, r1, #0x10
	str r1, [r2, #0x40]
	cmp r4, #0
	bne _0805F4FA
	.2byte 0xEE00, 0xEE00
_0805F4FA:
	ldr r0, [r2, #0x3c]
	cmp r0, r1
	ble _0805F50C
	rsbs r0, r4, #0
	str r0, [r2, #0x44]
	b _0805F50E
	.align 2, 0
_0805F508: .4byte 0x0203F9F4
_0805F50C:
	str r4, [r2, #0x44]
_0805F50E:
	adds r1, r2, #0
	adds r1, #0x58
	movs r0, #1
	strb r0, [r1]
	pop {r4}
	pop {r1}
	bx r1

	.thumb
sub_805F51C: @ 0x0805F51C
	push {r4, r5, lr}
	adds r4, r2, #0
	adds r5, r3, #0
	ldr r2, _0805F544
	ldr r3, [r2]
	lsls r2, r0, #1
	adds r2, r2, r0
	lsls r2, r2, #5
	ldr r0, [r3]
	adds r2, r0, r2
	lsls r1, r1, #0x10
	str r1, [r2, #0x48]
	cmp r4, #0
	bne _0805F53C
	.2byte 0xEE00, 0xEE00
_0805F53C:
	cmp r5, #0
	beq _0805F548
	str r4, [r2, #0x4c]
	b _0805F54C
	.align 2, 0
_0805F544: .4byte 0x0203F9F4
_0805F548:
	rsbs r0, r4, #0
	str r0, [r2, #0x4c]
_0805F54C:
	adds r1, r2, #0
	adds r1, #0x59
	movs r0, #1
	strb r0, [r1]
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

    .thumb
script_cmd_play_bgm: @ 0x0805F55C
	push {lr}
	adds r1, r0, #0
	ldr r0, _0805F578
	strh r1, [r0]
	ldr r0, _0805F57C
	ldrb r0, [r0]
	cmp r0, #0
	beq _0805F572
	adds r0, r1, #0
	bl audio_start_tune
_0805F572:
	movs r0, #1
	pop {r1}
	bx r1
	.align 2, 0
_0805F578: .4byte gLoadedRoomBgm
_0805F57C: .4byte 0x0203EA88

    .thumb
script_cmd_stop_bgm: @ 0x0805F580
	push {lr}
	bl audio_halt_tune
	movs r0, #1
	pop {r1}
	bx r1

    .thumb
script_cmd_play_sfx: @ 0x0805F58C
	push {r4, r5, lr}
	adds r4, r0, #0
	cmp r1, #0
	beq _0805F5E2
	ldr r0, _0805F5C8
	ldr r5, [r0]
	ldr r0, _0805F5CC
	ldrb r0, [r0]
	cmp r0, #0
	beq _0805F5D8
	ldr r3, _0805F5D0
	lsls r4, r4, #3
	adds r0, r4, r3
	ldrh r0, [r0]
	ldr r1, _0805F5D4
	ldrb r1, [r1]
	adds r1, r1, r4
	adds r2, r3, #2
	adds r1, r1, r2
	ldrb r1, [r1]
	adds r3, #4
	adds r4, r4, r3
	ldr r2, [r4]
	movs r3, #0x80
	lsls r3, r3, #9
	adds r2, r2, r3
	bl audio_new_fx
	adds r1, r0, #0
	b _0805F5DA
	.align 2, 0
_0805F5C8: .4byte 0x0203F9F4
_0805F5CC: .4byte gCanPlaySfx
_0805F5D0: .4byte 0x080CE440
_0805F5D4: .4byte gSfxVolume
_0805F5D8:
	movs r1, #0xff
_0805F5DA:
	adds r0, r5, #0
	adds r0, #0x25
	strb r1, [r0]
	b _0805F60E
_0805F5E2:
	ldr r0, _0805F618
	ldrb r0, [r0]
	cmp r0, #0
	beq _0805F60E
	ldr r3, _0805F61C
	lsls r4, r4, #3
	adds r0, r4, r3
	ldrh r0, [r0]
	ldr r1, _0805F620
	ldrb r1, [r1]
	adds r1, r1, r4
	adds r2, r3, #2
	adds r1, r1, r2
	ldrb r1, [r1]
	adds r3, #4
	adds r4, r4, r3
	ldr r2, [r4]
	movs r3, #0x80
	lsls r3, r3, #9
	adds r2, r2, r3
	bl audio_new_fx
_0805F60E:
	movs r0, #1
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0805F618: .4byte gCanPlaySfx
_0805F61C: .4byte 0x080CE440
_0805F620: .4byte gSfxVolume

    .thumb
script_cmd_stop_sfx: @ 0x0805F624
	push {lr}
	ldr r0, _0805F640
	ldrb r0, [r0]
	cmp r0, #0
	beq _0805F648
	ldr r0, _0805F644
	ldr r0, [r0]
	adds r0, #0x25
	ldrb r0, [r0]
	bl audio_halt_fx
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	b _0805F64A
	.align 2, 0
_0805F640: .4byte gCanPlaySfx
_0805F644: .4byte 0x0203F9F4
_0805F648:
	movs r0, #0
_0805F64A:
	cmp r0, #0
	bne _0805F652
	bl audio_halt_all_fx
_0805F652:
	movs r0, #1
	pop {r1}
	bx r1

    .thumb
script_cmd_stop_all_sfx: @ 0x0805F658
	push {lr}
	bl audio_halt_all_fx
	movs r0, #1
	pop {r1}
	bx r1

    .thumb
script_cmd_play_bill_drill_sfx: @ 0x0805F664
	push {r4, r5, lr}
	ldr r4, _0805F6A4
	ldrb r0, [r4]
	cmp r0, #0
	beq _0805F676
	ldr r0, _0805F6A8
	ldr r0, [r0]
	bl audio_halt_fx
_0805F676:
	ldr r5, _0805F6A8
	ldrb r0, [r4]
	cmp r0, #0
	beq _0805F6B4
	ldr r3, _0805F6AC
	adds r0, r3, #0
	adds r0, #0xb0
	ldrh r0, [r0]
	ldr r2, _0805F6B0
	adds r1, r3, #0
	adds r1, #0xb2
	ldrb r2, [r2]
	adds r1, r1, r2
	ldrb r1, [r1]
	adds r2, r3, #0
	adds r2, #0xb4
	ldr r2, [r2]
	movs r3, #0x80
	lsls r3, r3, #9
	adds r2, r2, r3
	bl audio_new_fx
	b _0805F6B8
	.align 2, 0
_0805F6A4: .4byte gCanPlaySfx
_0805F6A8: .4byte gBillDrillSfx
_0805F6AC: .4byte 0x080CE440
_0805F6B0: .4byte gSfxVolume
_0805F6B4:
	movs r0, #1
	rsbs r0, r0, #0
_0805F6B8:
	str r0, [r5]
	movs r0, #1
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

    .thumb
script_cmd_stop_bill_drill_sfx: @ 0x0805F6C4
	push {lr}
	ldr r0, _0805F6DC
	ldrb r0, [r0]
	cmp r0, #0
	beq _0805F6D6
	ldr r0, _0805F6E0
	ldr r0, [r0]
	bl audio_halt_fx
_0805F6D6:
	movs r0, #1
	pop {r1}
	bx r1
	.align 2, 0
_0805F6DC: .4byte gCanPlaySfx
_0805F6E0: .4byte gBillDrillSfx

    .thumb
audio_set_tune_volByIndex: @ 0x0805F6E4
	push {lr}
	adds r2, r0, #0
	cmp r1, #0
	beq _0805F708
	ldr r1, _0805F700
	ldr r0, _0805F704
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl audio_set_tune_vol
	b _0805F714
	.align 2, 0
_0805F700: .4byte dVolumes
_0805F704: .4byte gBgmMainVolume
_0805F708:
	ldr r0, _0805F71C
	lsls r1, r2, #2
	adds r1, r1, r0
	ldr r0, [r1]
	bl audio_set_tune_vol
_0805F714:
	movs r0, #1
	pop {r1}
	bx r1
	.align 2, 0
_0805F71C: .4byte dVolumes

    .thumb
script_cmd_set_bgm_volume_if_louder: @ 0x0805F720
	push {lr}
	adds r2, r0, #0
	cmp r1, #0
	beq _0805F744
	ldr r1, _0805F73C
	ldr r0, _0805F740
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl audio_set_tune_vol
	b _0805F758
	.align 2, 0
_0805F73C: .4byte dVolumes
_0805F740: .4byte gBgmMainVolume
_0805F744:
	ldr r0, _0805F760
	ldrb r0, [r0]
	cmp r0, r2
	ble _0805F758
	ldr r0, _0805F764
	lsls r1, r2, #2
	adds r1, r1, r0
	ldr r0, [r1]
	bl audio_set_tune_vol
_0805F758:
	movs r0, #1
	pop {r1}
	bx r1
	.align 2, 0
_0805F760: .4byte gBgmMainVolume
_0805F764: .4byte dVolumes

    .thumb
sub_805F768: @ 0x0805F768
	push {lr}
	adds r2, r0, #0
	cmp r1, #0
	beq _0805F78C
	ldr r1, _0805F784
	ldr r0, _0805F788
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl audio_set_fx_vol
	b _0805F798
	.align 2, 0
_0805F784: .4byte dVolumes
_0805F788: .4byte gSfxMainVolume
_0805F78C:
	ldr r0, _0805F7A0
	lsls r1, r2, #2
	adds r1, r1, r0
	ldr r0, [r1]
	bl audio_set_fx_vol
_0805F798:
	movs r0, #1
	pop {r1}
	bx r1
	.align 2, 0
_0805F7A0: .4byte dVolumes

    .thumb
sub_805F7A4: @ 0x0805F7A4
	push {lr}
	cmp r0, #0
	beq _0805F7C4
	ldr r1, _0805F7BC
	ldr r0, _0805F7C0
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl audio_set_tune_vol
	b _0805F7CC
	.align 2, 0
_0805F7BC: .4byte dVolumes
_0805F7C0: .4byte gBgmMainVolume
_0805F7C4:
	ldr r0, _0805F7D4
	ldr r0, [r0]
	bl audio_set_tune_vol
_0805F7CC:
	movs r0, #1
	pop {r1}
	bx r1
	.align 2, 0
_0805F7D4: .4byte dVolumes

	.thumb
sub_805F7D8: @ 0x0805F7D8
	push {r4, lr}
	adds r1, r0, #0
	ldr r4, _0805F7F8
	ldrb r0, [r4]
	cmp r0, #0
	beq _0805F7E8
	.2byte 0xEE00, 0xEE00
_0805F7E8:
	adds r0, r1, #0
	bl sub_0802FEDC
	cmp r0, #0
	beq _0805F7FC
	movs r0, #1
	strb r0, [r4]
	b _0805F800
	.align 2, 0
_0805F7F8: .4byte byte_203F99F
_0805F7FC:
	.2byte 0xEE00, 0xEE00
_0805F800:
	movs r0, #1
	pop {r4}
	pop {r1}
	bx r1

	.thumb
sub_805F808: @ 0x0805F808
	push {lr}
	adds r3, r0, #0
	ldr r0, _0805F838
	ldrb r0, [r0]
	cmp r0, #0
	beq _0805F818
	.2byte 0xEE00, 0xEE00
_0805F818:
	ldr r1, _0805F83C
	ldr r0, [r1]
	adds r0, #0x22
	movs r2, #0
	strb r2, [r0]
	ldr r0, [r1]
	adds r0, #0x24
	movs r1, #1
	strb r1, [r0]
	ldr r0, _0805F840
	strh r2, [r0]
	cmp r3, #0
	beq _0805F848
	ldr r0, _0805F844
	strh r2, [r0]
	b _0805F852
	.align 2, 0
_0805F838: .4byte byte_203F9A1
_0805F83C: .4byte 0x0203F9F4
_0805F840: .4byte 0x0203FA10
_0805F844: .4byte 0x0203F990
_0805F848:
	ldr r1, _0805F85C
	ldr r0, _0805F860
	ldrh r0, [r0]
	subs r0, #1
	strh r0, [r1]
_0805F852:
	ldr r0, _0805F864
	strb r3, [r0]
	movs r0, #1
	pop {r1}
	bx r1
	.align 2, 0
_0805F85C: .4byte 0x0203F990
_0805F860: .4byte 0x0203F992
_0805F864: .4byte 0x0203FA13

    .thumb
script_cmd_store_camera_position: @ 0x0805F868
	push {r4, r5, r6, lr}
	ldr r5, _0805F8CC
	ldrb r0, [r5]
	cmp r0, #0
	beq _0805F876
	.2byte 0xEE00, 0xEE00
_0805F876:
	ldr r4, _0805F8D0
	movs r0, #0x28
	movs r1, #5
	movs r2, #3
	bl Alloc
	str r0, [r4]
	adds r0, #0x25
	movs r3, #0
	strb r3, [r0]
	ldr r2, [r4]
	ldr r0, _0805F8D4
	movs r6, #0
	ldrsh r1, [r0, r6]
	adds r1, #0x78
	lsls r1, r1, #0x10
	str r1, [r2]
	ldr r0, _0805F8D8
	movs r6, #0
	ldrsh r0, [r0, r6]
	adds r0, #0x50
	lsls r0, r0, #0x10
	str r0, [r2, #4]
	str r1, [r2, #8]
	str r0, [r2, #0xc]
	str r1, [r2, #0x10]
	str r0, [r2, #0x14]
	str r3, [r2, #0x18]
	str r3, [r2, #0x1c]
	str r3, [r2, #0x20]
	adds r2, #0x26
	strb r3, [r2]
	ldr r0, [r4]
	adds r0, #0x24
	movs r1, #0xff
	strb r1, [r0]
	movs r0, #1
	strb r0, [r5]
	movs r0, #1
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0805F8CC: .4byte 0x0203FA15
_0805F8D0: .4byte 0x0203FA18
_0805F8D4: .4byte gCameraPixelX
_0805F8D8: .4byte gCameraPixelY

    .thumb
sub_0805F8DC: @ 0x0805F8DC
	push {r4, r5, lr}
	ldr r5, _0805F920
	ldrb r0, [r5]
	cmp r0, #0
	bne _0805F8EA
	.2byte 0xEE00, 0xEE00
_0805F8EA:
	ldr r4, _0805F924
	ldr r0, [r4]
	adds r2, r0, #0
	adds r2, #0x24
	movs r1, #0
	ldrsb r1, [r2, r1]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _0805F90C
	adds r0, r1, #0
	bl sub_8003864
	ldr r0, [r4]
	adds r0, #0x24
	movs r1, #0xff
	strb r1, [r0]
_0805F90C:
	ldr r0, [r4]
	movs r1, #3
	bl Free
	movs r0, #0
	strb r0, [r5]
	movs r0, #1
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0805F920: .4byte 0x0203FA15
_0805F924: .4byte 0x0203FA18

    .thumb
script_cmd_move_camera: @ 0x0805F928
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	adds r5, r1, #0
	mov r8, r2
	ldr r0, _0805F9A4
	ldrb r0, [r0]
	cmp r0, #0
	bne _0805F940
	.2byte 0xEE00, 0xEE00
_0805F940:
	ldr r6, _0805F9A8
	ldr r0, [r6]
	adds r0, #0x24
	movs r1, #0
	ldrsb r1, [r0, r1]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _0805F960
	movs r0, #0x96
	lsls r0, r0, #0xf
	bl sub_8003854
	ldr r1, [r6]
	adds r1, #0x24
	strb r0, [r1]
_0805F960:
	ldr r0, [r6]
	adds r0, #0x24
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldr r1, _0805F9AC
	ldr r1, [r1]
	bl sub_800389C
	ldr r0, [r6]
	adds r0, #0x24
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldr r1, _0805F9B0
	ldr r1, [r1]
	bl sub_8003894
	cmp r4, #0
	bne _0805F9BC
	cmp r5, #0
	bne _0805F9BC
	ldr r0, _0805F9B4
	ldrh r1, [r0]
	subs r1, #0x78
	ldr r0, _0805F9B8
	ldrh r3, [r0]
	subs r3, #0x50
	movs r0, #0x78
	movs r2, #0x50
	bl sub_0805E270
	b _0805F9EC
	.align 2, 0
_0805F9A4: .4byte 0x0203FA15
_0805F9A8: .4byte 0x0203FA18
_0805F9AC: .4byte 0x080CC844
_0805F9B0: .4byte 0x080CC7EC
_0805F9B4: .4byte gMapPixelSizeX
_0805F9B8: .4byte gMapPixelSizeY
_0805F9BC:
	ldr r0, _0805FA68
	ldrh r0, [r0]
	subs r0, #0x78
	cmp r4, r0
	bls _0805F9C8
	adds r4, r0, #0
_0805F9C8:
	cmp r4, #0x77
	bgt _0805F9CE
	movs r4, #0x78
_0805F9CE:
	ldr r0, _0805FA6C
	ldrh r0, [r0]
	subs r0, #0x50
	cmp r5, r0
	bls _0805F9DA
	adds r5, r0, #0
_0805F9DA:
	cmp r5, #0x4f
	bgt _0805F9E0
	movs r5, #0x50
_0805F9E0:
	ldr r0, _0805FA70
	ldr r1, [r0]
	lsls r0, r4, #0x10
	str r0, [r1, #0x10]
	lsls r0, r5, #0x10
	str r0, [r1, #0x14]
_0805F9EC:
	ldr r4, _0805FA70
	ldr r0, [r4]
	ldr r2, [r0, #0x10]
	ldr r1, [r0, #8]
	subs r6, r2, r1
	ldr r1, [r0, #0x14]
	ldr r0, [r0, #0xc]
	subs r5, r1, r0
	adds r0, r6, #0
	bl Abs
	ldr r1, [r4]
	str r0, [r1, #0x18]
	adds r0, r5, #0
	bl Abs
	ldr r1, [r4]
	str r0, [r1, #0x1c]
	cmp r6, #0
	bne _0805FA1C
	cmp r5, #0
	bne _0805FA1C
	.2byte 0xEE00, 0xEE00
_0805FA1C:
	ldr r2, _0805FA74
	ldr r7, _0805FA70
	ldr r1, [r7]
	ldr r0, [r1, #0x18]
	str r0, [r2]
	ldr r2, _0805FA78
	ldr r0, [r1, #0x1c]
	str r0, [r2]
	ldr r2, _0805FA7C
	ldr r0, [r1, #8]
	str r0, [r2]
	ldr r2, _0805FA80
	ldr r0, [r1, #0xc]
	str r0, [r2]
	adds r0, r6, #0
	bl Abs
	adds r4, r0, #0
	adds r0, r5, #0
	bl Abs
	cmp r4, r0
	bls _0805FA84
	ldr r0, [r7]
	adds r0, #0x24
	movs r4, #0
	ldrsb r4, [r0, r4]
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_80039AC
	adds r2, r0, #0
	adds r0, r4, #0
	mov r1, r8
	movs r3, #0
	bl sub_8003884
	b _0805FAA0
	.align 2, 0
_0805FA68: .4byte gMapPixelSizeX
_0805FA6C: .4byte gMapPixelSizeY
_0805FA70: .4byte 0x0203FA18
_0805FA74: .4byte 0x0203FA1C
_0805FA78: .4byte 0x0203FA20
_0805FA7C: .4byte 0x0203FA24
_0805FA80: .4byte 0x0203FA28
_0805FA84:
	ldr r0, [r7]
	adds r0, #0x24
	movs r4, #0
	ldrsb r4, [r0, r4]
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_80039B4
	adds r2, r0, #0
	adds r0, r4, #0
	mov r1, r8
	movs r3, #0
	bl sub_8003884
_0805FAA0:
	ldr r4, _0805FACC
	ldr r0, [r4]
	adds r0, #0x24
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	movs r1, #0
	movs r2, #0
	bl sub_800386C
	ldr r0, [r4]
	mov r1, r8
	str r1, [r0, #0x20]
	adds r0, #0x25
	movs r1, #1
	strb r1, [r0]
	movs r0, #1
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0805FACC: .4byte 0x0203FA18

    .thumb
script_cmd_move_camera_to_actor_position: @ 0x0805FAD0
	push {lr}
	adds r2, r0, #0
	ldr r0, _0805FAEC
	movs r1, #0
	ldrsh r0, [r0, r1]
	ldr r1, _0805FAF0
	movs r3, #0
	ldrsh r1, [r1, r3]
	movs r3, #0
	bl script_cmd_move_camera
	pop {r1}
	bx r1
	.align 2, 0
_0805FAEC: .4byte 0x0203F994
_0805FAF0: .4byte 0x0203F996

    .thumb
sub_805FAF4: @ 0x0805FAF4
	push {lr}
	adds r2, r0, #0
	ldr r0, _0805FB10
	movs r1, #2
	ldrsh r0, [r0, r1]
	ldr r1, _0805FB14
	movs r3, #2
	ldrsh r1, [r1, r3]
	movs r3, #0
	bl script_cmd_move_camera
	pop {r1}
	bx r1
	.align 2, 0
_0805FB10: .4byte 0x0203FA08
_0805FB14: .4byte 0x0203FA0C

	.thumb
sub_805FB18: @ 0x0805FB18
	ldr r1, _0805FB2C
	ldr r0, _0805FB30
	ldr r2, [r0]
	ldr r0, [r2, #8]
	str r0, [r1]
	ldr r1, _0805FB34
	ldr r0, [r2, #0xc]
	str r0, [r1]
	movs r0, #1
	bx lr
	.align 2, 0
_0805FB2C: .4byte 0x0203FA08
_0805FB30: .4byte 0x0203FA18
_0805FB34: .4byte 0x0203FA0C

	.thumb
sub_805FB38: @ 0x0805FB38
	ldr r1, _0805FB44
	ldr r1, [r1]
	adds r1, #0x26
	strb r0, [r1]
	movs r0, #1
	bx lr
	.align 2, 0
_0805FB44: .4byte 0x0203FA18

	.thumb
script_cmd_return_camera: @ 0x0805FB48
	push {lr}
	adds r2, r0, #0
	ldr r0, _0805FB78
	ldrb r0, [r0]
	cmp r0, #0
	bne _0805FB58
	.2byte 0xEE00, 0xEE00
_0805FB58:
	ldr r1, _0805FB7C
	cmp r2, #0
	bne _0805FB62
	ldr r0, [r1]
	ldr r2, [r0, #0x20]
_0805FB62:
	ldr r1, [r1]
	movs r3, #2
	ldrsh r0, [r1, r3]
	movs r3, #6
	ldrsh r1, [r1, r3]
	movs r3, #0
	bl script_cmd_move_camera
	movs r0, #1
	pop {r1}
	bx r1
	.align 2, 0
_0805FB78: .4byte 0x0203FA15
_0805FB7C: .4byte 0x0203FA18

    .thumb
sub_805FB80: @ 0x0805FB80
	push {lr}
	ldr r1, _0805FB9C
	movs r0, #1
	strb r0, [r1]
	ldr r0, _0805FBA0
	movs r2, #0
	ldrsh r1, [r0, r2]
	movs r0, #2
	movs r2, #2
	bl sub_80266C8
	movs r0, #1
	pop {r1}
	bx r1
	.align 2, 0
_0805FB9C: .4byte 0x0203FA14
_0805FBA0: .4byte gCameraPixelY
	
	.thumb
sub_805FBA4: @ 0x0805FBA4
	ldr r1, _0805FBB0
	movs r0, #2
	strb r0, [r1]
	movs r0, #1
	bx lr
	.align 2, 0
_0805FBB0: .4byte 0x0203FA14

    .thumb
sub_805FBB4: @ 0x0805FBB4
	push {lr}
	cmp r0, #1
	beq _0805FBD8
	cmp r0, #1
	bgt _0805FBC4
	cmp r0, #0
	beq _0805FBCA
	b _0805FBEA
_0805FBC4:
	cmp r0, #2
	beq _0805FBE4
	b _0805FBEA
_0805FBCA:
	ldr r0, _0805FBD4
	bl sub_80270AC
	b _0805FBEA
	.align 2, 0
_0805FBD4: .4byte 0x00000FFF
_0805FBD8:
	ldr r0, _0805FBE0
	bl sub_80271A4
	b _0805FBEA
	.align 2, 0
_0805FBE0: .4byte 0x00000FFF
_0805FBE4:
	ldr r0, _0805FBF0
	bl sub_8026C24
_0805FBEA:
	movs r0, #1
	pop {r1}
	bx r1
	.align 2, 0
_0805FBF0: .4byte 0x00000FFF

    .thumb
sub_805FBF4: @ 0x0805FBF4
	push {lr}
	cmp r0, #1
	beq _0805FC18
	cmp r0, #1
	bgt _0805FC04
	cmp r0, #0
	beq _0805FC0A
	b _0805FC2C
_0805FC04:
	cmp r0, #2
	beq _0805FC28
	b _0805FC2C
_0805FC0A:
	ldr r0, _0805FC14
	movs r2, #1
	bl sub_8026E48
	b _0805FC2C
	.align 2, 0
_0805FC14: .4byte 0x00000FFF
_0805FC18:
	ldr r0, _0805FC24
	movs r2, #1
	bl sub_8026F78
	b _0805FC2C
	.align 2, 0
_0805FC24: .4byte 0x00000FFF
_0805FC28:
	bl sub_8026C8C
_0805FC2C:
	movs r0, #1
	pop {r1}
	bx r1
	.align 2, 0

    .thumb
sub_805FC34: @ 0x0805FC34
	push {lr}
	adds r1, r0, #0
	ldr r2, _0805FC48
	cmp r1, #0
	beq _0805FC4C
	ldrb r0, [r2]
	cmp r0, #0
	beq _0805FC4C
	movs r0, #0
	b _0805FC92
	.align 2, 0
_0805FC48: .4byte byte_203F99C
_0805FC4C:
	strb r1, [r2]
	ldr r2, _0805FC68
	ldr r0, [r2]
	adds r0, #0x23
	strb r1, [r0]
	cmp r1, #0
	beq _0805FC74
	ldr r1, _0805FC6C
	ldr r2, [r2]
	ldrh r0, [r2, #0x1a]
	strh r0, [r1]
	ldr r1, _0805FC70
	b _0805FC7E
	.align 2, 0
_0805FC68: .4byte 0x0203F9F4
_0805FC6C: .4byte word_203F998
_0805FC70: .4byte word_203F99A
_0805FC74:
	ldr r1, _0805FC98
	ldr r2, [r2]
	ldrh r0, [r2, #0x1a]
	strh r0, [r1]
	ldr r1, _0805FC9C
_0805FC7E:
	movs r3, #0
	ldrsh r0, [r1, r3]
	ldrh r2, [r2, #0x1a]
	cmp r0, r2
	bne _0805FC90
	movs r2, #1
	rsbs r2, r2, #0
	adds r0, r2, #0
	strh r0, [r1]
_0805FC90:
	movs r0, #1
_0805FC92:
	pop {r1}
	bx r1
	.align 2, 0
_0805FC98: .4byte word_203F99A
_0805FC9C: .4byte word_203F998

	.thumb
script_cmd_wait_frames: @ 0x0805FCA0
	ldr r1, _0805FCAC
	ldr r1, [r1]
	strh r0, [r1, #0x1e]
	movs r0, #1
	bx lr
	.align 2, 0
_0805FCAC: .4byte 0x0203F9F4

    .thumb
sub_805FCB0: @ 0x0805FCB0
	ldr r2, _0805FCD4
	lsls r0, r0, #0x10
	str r0, [r2]
	ldr r2, _0805FCD8
	ldr r0, _0805FCDC
	ldrh r0, [r0]
	subs r0, r0, r1
	lsls r0, r0, #0x10
	str r0, [r2]
	ldr r1, _0805FCE0
	movs r0, #1
	strb r0, [r1]
	ldr r1, _0805FCE4
	ldr r2, _0805FCE8
	adds r0, r2, #0
	strh r0, [r1]
	movs r0, #1
	bx lr
	.align 2, 0
_0805FCD4: .4byte 0x0203F9F8
_0805FCD8: .4byte 0x0203F9FC
_0805FCDC: .4byte gMapPixelSizeY
_0805FCE0: .4byte byte_203F9A1
_0805FCE4: .4byte gKeyInput
_0805FCE8: .4byte 0x000003FF

    .thumb
sub_805FCEC: @ 0x0805FCEC
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r6, r1, #0
	adds r5, r3, #0
	ldr r0, _0805FD10
	ldrh r3, [r0]
	ldr r1, _0805FD14
	ldr r0, [r1, #8]
	ldr r1, [r1, #4]
	adds r0, r0, r1
	asrs r0, r0, #0x10
	subs r3, r3, r0
	cmp r3, r2
	bge _0805FD18
	adds r0, r4, #0
	adds r1, r6, #0
	b _0805FD1C
	.align 2, 0
_0805FD10: .4byte gMapPixelSizeY
_0805FD14: .4byte gPlayerShadowPos
_0805FD18:
	adds r0, r4, #0
	adds r1, r5, #0
_0805FD1C:
	movs r2, #0
	movs r3, #0
	bl sub_805FCB0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

    .thumb
sub_805FD2C: @ 0x0805FD2C
	push {lr}
	bl sub_08018A94
	movs r0, #1
	pop {r1}
	bx r1

	.thumb
sub_805FD38: @ 0x0805FD38
	push {r4, lr}
	adds r2, r1, #0
	movs r4, #0
	cmp r0, #0x10
	bls _0805FD44
	b _0805FF4C
_0805FD44:
	lsls r0, r0, #2
	ldr r1, _0805FD50
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0805FD50: .4byte 0x0805FD54
_0805FD54: @ jump table
	.4byte _0805FD98 @ case 0
	.4byte _0805FDA4 @ case 1
	.4byte _0805FDBC @ case 2
	.4byte _0805FDD4 @ case 3
	.4byte _0805FDEC @ case 4
	.4byte _0805FE04 @ case 5
	.4byte _0805FE34 @ case 6
	.4byte _0805FE48 @ case 7
	.4byte _0805FE54 @ case 8
	.4byte _0805FE5C @ case 9
	.4byte _0805FE62 @ case 10
	.4byte _0805FEA8 @ case 11
	.4byte _0805FEF0 @ case 12
	.4byte _0805FF04 @ case 13
	.4byte _0805FF1C @ case 14
	.4byte _0805FF30 @ case 15
	.4byte _0805FF40 @ case 16
_0805FD98:
	ldr r0, _0805FDA0
	ldr r0, [r0]
	ldrh r0, [r0, #0x1e]
	b _0805FF34
	.align 2, 0
_0805FDA0: .4byte 0x0203F9F4
_0805FDA4:
	ldr r0, _0805FDB8
	ldr r0, [r0]
	ldr r1, [r0]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #5
	adds r0, r0, r1
	adds r0, #0x57
	b _0805FF32
	.align 2, 0
_0805FDB8: .4byte 0x0203F9F4
_0805FDBC:
	ldr r0, _0805FDD0
	ldr r0, [r0]
	ldr r1, [r0]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #5
	adds r0, r0, r1
	adds r0, #0x58
	b _0805FF32
	.align 2, 0
_0805FDD0: .4byte 0x0203F9F4
_0805FDD4:
	ldr r0, _0805FDE8
	ldr r0, [r0]
	ldr r1, [r0]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #5
	adds r0, r0, r1
	adds r0, #0x59
	b _0805FF32
	.align 2, 0
_0805FDE8: .4byte 0x0203F9F4
_0805FDEC:
	ldr r0, _0805FE00
	ldr r0, [r0]
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #5
	ldr r0, [r0]
	adds r0, r0, r1
	bl sprite_is_anim_done_once
	b _0805FF46
	.align 2, 0
_0805FE00: .4byte 0x0203F9F4
_0805FE04:
	ldr r1, _0805FE28
	ldr r0, _0805FE2C
	ldrh r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #4
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0
	beq _0805FE20
	b _0805FF50
_0805FE20:
	ldr r0, _0805FE30
	strb r1, [r0]
	b _0805FF54
	.align 2, 0
_0805FE28: .4byte gPlayerStateFlags
_0805FE2C: .4byte gPlayerState
_0805FE30: .4byte byte_203F99F
_0805FE34:
	movs r1, #0
	ldr r0, _0805FE44
	ldrb r0, [r0]
	cmp r0, #0
	bne _0805FE40
	movs r1, #1
_0805FE40:
	adds r4, r1, #0
	b _0805FF50
	.align 2, 0
_0805FE44: .4byte byte_203F9A1
_0805FE48:
	ldr r0, _0805FE50
	ldr r0, [r0]
	adds r0, #0x25
	b _0805FF32
	.align 2, 0
_0805FE50: .4byte 0x0203FA18
_0805FE54:
	ldr r0, _0805FE58
	b _0805FF32
	.align 2, 0
_0805FE58: .4byte 0x0203FA14
_0805FE5C:
	bl sub_805DB38
	b _0805FF46
_0805FE62:
	ldr r0, _0805FE98
	ldr r0, [r0]
	ldrh r0, [r0, #0x1e]
	cmp r0, #0
	bne _0805FED4
	ldr r1, _0805FE9C
	ldr r0, _0805FEA0
	ldrh r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0805FE94
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0805FE94
	movs r0, #0x80
	lsls r0, r0, #5
	ands r0, r1
	cmp r0, #0
	beq _0805FED4
_0805FE94:
	ldr r1, _0805FEA4
	b _0805FF26
	.align 2, 0
_0805FE98: .4byte 0x0203F9F4
_0805FE9C: .4byte gPlayerStateFlags
_0805FEA0: .4byte gPlayerState
_0805FEA4: .4byte byte_203F9A1
_0805FEA8:
	ldr r0, _0805FEC8
	ldr r0, [r0]
	ldrh r0, [r0, #0x1e]
	cmp r0, #0
	bne _0805FED4
	ldr r0, _0805FECC
	ldr r0, [r0]
	bl sub_80038AC
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	bne _0805FED4
	ldr r0, _0805FED0
	strb r1, [r0]
	b _0805FF54
	.align 2, 0
_0805FEC8: .4byte 0x0203F9F4
_0805FECC: .4byte dword_2000FC8
_0805FED0: .4byte byte_203F9A1
_0805FED4:
	ldr r1, _0805FEE4
	movs r0, #1
	strb r0, [r1]
	ldr r1, _0805FEE8
	ldr r2, _0805FEEC
	adds r0, r2, #0
	strh r0, [r1]
	b _0805FF5E
	.align 2, 0
_0805FEE4: .4byte byte_203F9A1
_0805FEE8: .4byte gKeyInput
_0805FEEC: .4byte 0x000003FF
_0805FEF0:
	ldr r0, _0805FF00
	ldr r0, [r0]
	adds r0, #0x25
	ldrb r0, [r0]
	bl audio_fx_still_active
	b _0805FF34
	.align 2, 0
_0805FF00: .4byte 0x0203F9F4
_0805FF04:
	ldr r0, _0805FF18
	ldr r0, [r0]
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #5
	ldr r0, [r0]
	adds r0, r0, r1
	bl sub_80037A8
	b _0805FF46
	.align 2, 0
_0805FF18: .4byte 0x0203F9F4
_0805FF1C:
	bl sub_805DD20
	cmp r0, #0
	beq _0805FF50
	ldr r1, _0805FF2C
_0805FF26:
	movs r0, #0
	strb r0, [r1]
	b _0805FF54
	.align 2, 0
_0805FF2C: .4byte byte_203F99F
_0805FF30:
	ldr r0, _0805FF3C
_0805FF32:
	ldrb r0, [r0]
_0805FF34:
	cmp r0, #0
	bne _0805FF50
	b _0805FF54
	.align 2, 0
_0805FF3C: .4byte gIsPaletteEffectsActive
_0805FF40:
	movs r0, #0
	bl sub_0804207C
_0805FF46:
	cmp r0, #0
	beq _0805FF50
	b _0805FF54
_0805FF4C:
	.2byte 0xEE00, 0xEE00
_0805FF50:
	cmp r4, #0
	beq _0805FF5E
_0805FF54:
	ldr r0, _0805FF68
	ldr r1, [r0]
	ldrh r0, [r1, #0x1c]
	adds r0, #1
	strh r0, [r1, #0x1c]
_0805FF5E:
	movs r0, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0805FF68: .4byte 0x0203F9F4

	.thumb
script_cmd_end: @ 0x0805FF6C
	ldr r0, _0805FF7C
	ldr r0, [r0]
	adds r0, #0x21
	movs r1, #1
	strb r1, [r0]
	movs r0, #0
	bx lr
	.align 2, 0
_0805FF7C: .4byte 0x0203F9F4

	.thumb
sub_805FF80: @ 0x0805FF80
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	adds r4, r0, #0
	ldr r0, _0805FFD8
	movs r1, #0
	bl sub_80270AC
	movs r1, #0xa0
	lsls r1, r1, #0x13
	movs r0, #0
	movs r2, #0x80
	bl DmaFill32
	mov r1, sp
	movs r2, #0
	movs r0, #0xfe
	strb r0, [r1, #0x10]
	mov r0, sp
	strb r2, [r0, #0x12]
	movs r0, #2
	strb r0, [r1, #0xa]
	movs r0, #0xf0
	strh r0, [r1, #8]
	movs r0, #1
	strh r0, [r1, #0xe]
	mov r0, sp
	strh r2, [r0, #0xc]
	movs r0, #6
	strb r0, [r1, #0x11]
	ldr r0, _0805FFDC
	str r0, [sp, #4]
	movs r7, #0
	cmp r4, #0
	beq _0805FFE0
	cmp r4, #1
	beq _08060038
	.2byte 0xEE00, 0xEE00
	b _0806008A
	.align 2, 0
_0805FFD8: .4byte 0x00000FFF
_0805FFDC: .4byte 0x080B01B8
_0805FFE0:
	ldr r0, _0805FFF4
	ldrb r0, [r0]
	cmp r0, #4
	bhi _0806008A
	lsls r0, r0, #2
	ldr r1, _0805FFF8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0805FFF4: .4byte 0x02000320
_0805FFF8: .4byte 0x0805FFFC
_0805FFFC: @ jump table
	.4byte _08060010 @ case 0
	.4byte _08060018 @ case 1
	.4byte _08060028 @ case 2
	.4byte _08060020 @ case 3
	.4byte _08060030 @ case 4
_08060010:
	ldr r7, _08060014
	b _0806008A
	.align 2, 0
_08060014: .4byte 0x0808D5D8
_08060018:
	ldr r7, _0806001C
	b _0806008A
	.align 2, 0
_0806001C: .4byte 0x0808DBE8
_08060020:
	ldr r7, _08060024
	b _0806008A
	.align 2, 0
_08060024: .4byte 0x0808E2F8
_08060028:
	ldr r7, _0806002C
	b _0806008A
	.align 2, 0
_0806002C: .4byte 0x0808E944
_08060030:
	ldr r7, _08060034
	b _0806008A
	.align 2, 0
_08060034: .4byte 0x0808EF84
_08060038:
	ldr r0, _0806004C
	ldrb r0, [r0]
	cmp r0, #4
	bhi _0806008A
	lsls r0, r0, #2
	ldr r1, _08060050
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0806004C: .4byte 0x02000320
_08060050: .4byte 0x08060054
_08060054: @ jump table
	.4byte _08060068 @ case 0
	.4byte _08060070 @ case 1
	.4byte _08060080 @ case 2
	.4byte _08060078 @ case 3
	.4byte _08060088 @ case 4
_08060068:
	ldr r7, _0806006C
	b _0806008A
	.align 2, 0
_0806006C: .4byte 0x0808D5E8
_08060070:
	ldr r7, _08060074
	b _0806008A
	.align 2, 0
_08060074: .4byte 0x0808DC00
_08060078:
	ldr r7, _0806007C
	b _0806008A
	.align 2, 0
_0806007C: .4byte 0x0808E30C
_08060080:
	ldr r7, _08060084
	b _0806008A
	.align 2, 0
_08060084: .4byte 0x0808E954
_08060088:
	ldr r7, _080601D4
_0806008A:
	adds r0, r7, #0
	mov r1, sp
	bl sub_8025870
	str r0, [sp, #0x14]
	movs r0, #0
	bl SetTextSpriteCount
	ldr r4, _080601D8
	movs r2, #0x80
	lsls r2, r2, #1
	movs r0, #0xaa
	adds r1, r4, #0
	bl DmaFill32
	ldr r0, _080601DC
	str r4, [r0]
	ldr r0, _080601E0
	movs r1, #0x80
	lsls r1, r1, #3
	adds r5, r4, r1
	str r5, [r0]
	ldr r1, _080601E4
	ldr r0, _080601E8
	str r0, [r1]
	ldr r1, _080601EC
	movs r0, #0x80
	lsls r0, r0, #2
	str r0, [r1]
	bl SyncVblank
	bl update_video
	bl SkipVblank
	bl SetObjectsFullAlpha
	movs r2, #1
	str r2, [sp, #0x18]
	movs r6, #0x5a
	mov r4, sp
_080600DC:
	ldr r0, _080601F0
	ldrb r0, [r0]
	cmp r0, #0
	beq _08060102
	ldr r0, _080601F4
	ldr r1, _080601F8
	ldr r2, _080601FC
	bl ReadKeys
	ldr r0, _080601F8
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08060102
	ldr r1, _08060200
	movs r0, #1
	strb r0, [r1]
	movs r6, #1
_08060102:
	subs r6, #1
	movs r0, #0
	bl SetTextSpriteCount
	movs r0, #0xaa
	ldr r1, _080601D8
	movs r2, #0x80
	lsls r2, r2, #1
	bl DmaFill32
	ldr r1, _080601DC
	mov sl, r1
	ldr r2, _080601D8
	str r2, [r1]
	ldr r0, _08060204
	ldr r1, _080601E0
	str r0, [r1]
	ldr r2, _080601E8
	mov sb, r2
	ldr r0, _080601E4
	str r2, [r0]
	ldr r1, _080601EC
	mov r8, r1
	movs r5, #0x80
	lsls r5, r5, #2
	str r5, [r1]
	movs r0, #0xf0
	ldr r2, [sp, #0x14]
	subs r0, r0, r2
	asrs r0, r0, #1
	movs r1, #0
	strh r0, [r4]
	movs r0, #0x48
	strh r0, [r4, #2]
	strh r1, [r4, #0xc]
	mov r0, sp
	adds r1, r7, #0
	bl AddStringToBuffer
	bl RenderText
	bl CheckStacks
	bl SyncVblank
	bl update_video
	bl SkipVblank
	ldr r0, [sp, #0x18]
	cmp r0, #0
	beq _08060176
	movs r0, #2
	movs r1, #0
	bl sub_08026BA8
	movs r1, #0
	str r1, [sp, #0x18]
_08060176:
	cmp r6, #0
	bne _080600DC
	movs r0, #2
	movs r1, #0
	bl FadeOutObjects
	movs r0, #0
	bl SetTextSpriteCount
	ldr r4, _080601D8
	movs r2, #0x80
	lsls r2, r2, #1
	movs r0, #0xaa
	adds r1, r4, #0
	bl DmaFill32
	mov r2, sl
	str r4, [r2]
	movs r0, #0x80
	lsls r0, r0, #3
	adds r4, r4, r0
	ldr r1, _080601E0
	str r4, [r1]
	mov r2, sb
	ldr r0, _080601E4
	str r2, [r0]
	mov r1, r8
	str r5, [r1]
	bl SyncVblank
	bl update_video
	bl SkipVblank
	ldr r1, _08060208
	ldr r2, _0806020C
	adds r0, r2, #0
	strh r0, [r1]
	movs r0, #1
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080601D4: .4byte 0x0808EF98
_080601D8: .4byte gOAMBuffer1
_080601DC: .4byte gOAMBufferFramePtr
_080601E0: .4byte gOAMBufferEnd
_080601E4: .4byte gOBJTileFramePtr
_080601E8: .4byte 0x06014000
_080601EC: .4byte gOBJTileCount
_080601F0: .4byte byte_20021F8
_080601F4: .4byte gKeysPressed
_080601F8: .4byte gKeysDown
_080601FC: .4byte gPreviousKeys
_08060200: .4byte byte_2000F55
_08060204: .4byte gOAMBufferFramePtr
_08060208: .4byte 0x04000052
_0806020C: .4byte 0x00000907

    .thumb
show_time_travel_scene: @ 0x08060210
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x30
	mov sl, r0
	ldr r1, _0806039C
	movs r6, #0x80
	lsls r6, r6, #0x13
	ldrh r0, [r6]
	strh r0, [r1]
	ldr r1, _080603A0
	ldr r0, _080603A4
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r1, _080603A8
	ldr r0, _080603AC
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r1, _080603B0
	ldr r5, _080603B4
	ldrh r0, [r5]
	strh r0, [r1]
	ldr r1, _080603B8
	ldr r0, _080603BC
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r7, _080603C0
	adds r0, r7, #0
	movs r1, #0
	bl sub_80271A4
	ldr r0, _080603C4
	ldrb r0, [r0]
	cmp r0, #0
	beq _08060260
	movs r0, #0x11
	bl audio_start_tune
_08060260:
	ldr r0, _080603C8
	movs r4, #0
	str r4, [r0]
	ldr r0, _080603CC
	strb r4, [r0]
	ldr r1, _080603D0
	adds r0, r1, #0
	strh r0, [r6]
	strh r4, [r5]
	movs r5, #0xc0
	lsls r5, r5, #0x13
	movs r2, #0xa0
	lsls r2, r2, #7
	movs r0, #0
	adds r1, r5, #0
	bl DmaFill32
	movs r1, #0xa0
	lsls r1, r1, #0x13
	movs r0, #0
	movs r2, #0x80
	bl DmaFill32
	movs r0, #0xc
	bl RoomObjPaletteToVram
	ldr r0, _080603D4
	movs r1, #0
	movs r2, #4
	bl DmaTransferBGPalette
	movs r0, #0x96
	lsls r0, r0, #8
	movs r1, #0xd
	movs r2, #1
	bl Alloc
	str r0, [sp, #0x2c]
	bl sub_8003A0C
	movs r2, #0x96
	lsls r2, r2, #7
	ldr r0, [sp, #0x2c]
	adds r1, r5, #0
	bl DmaTransfer16
	adds r0, r7, #0
	movs r1, #0
	movs r2, #1
	bl sub_8026F78
	ldr r1, _080603D8
	str r4, [sp]
	movs r0, #0xf0
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #2
	str r0, [sp, #0xc]
	add r0, sp, #0x10
	movs r2, #0
	movs r3, #0
	bl SetSprite
	add r0, sp, #0x10
	movs r1, #0
	bl sprite_set_priority
	ldr r1, _080603DC
	movs r0, #1
	str r0, [r1]
	ldr r4, _080603E0
	movs r0, #0x10
	movs r1, #5
	movs r2, #3
	bl Alloc
	str r0, [r4]
	add r0, sp, #0x10
	movs r1, #1
	movs r2, #0
	bl sub_8003820
	add r0, sp, #0x10
	movs r1, #1
	bl sub_8003808
	movs r6, #0
	movs r7, #0
	movs r2, #0
	mov r8, r2
	ldr r0, _080603E4
	mov sb, r0
_08060318:
	ldr r0, _080603E8
	ldrb r0, [r0]
	cmp r0, #0
	beq _08060340
	ldr r4, _080603EC
	ldr r0, _080603F0
	adds r1, r4, #0
	ldr r2, _080603F4
	bl ReadKeys
	ldrh r1, [r4]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08060340
	ldr r1, _080603F8
	movs r0, #1
	strb r0, [r1]
	movs r6, #0x91
	lsls r6, r6, #2
_08060340:
	ldr r0, _080603FC
	ldrb r0, [r0]
	cmp r0, #0
	beq _0806034C
	bl sub_8026DC0
_0806034C:
	movs r4, #0x80
	lsls r4, r4, #1
	movs r0, #0xaa
	ldr r1, _08060400
	adds r2, r4, #0
	bl DmaFill32
	ldr r0, _08060404
	ldr r1, _08060400
	str r1, [r0]
	ldr r0, _08060408
	ldr r2, _0806040C
	str r2, [r0]
	ldr r1, _08060410
	ldr r0, _08060414
	str r0, [r1]
	ldr r1, _08060418
	movs r0, #0x80
	lsls r0, r0, #2
	str r0, [r1]
	lsls r0, r6, #8
	movs r1, #0x91
	lsls r1, r1, #0xa
	bl sub_8003934
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	mov r0, sl
	cmp r0, #0
	bne _0806041C
	subs r0, r4, r5
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r0, r7, #0
	adds r0, #0x40
	lsls r0, r0, #1
	add r0, sb
	movs r2, #0
	ldrsh r1, [r0, r2]
	b _0806042A
	.align 2, 0
_0806039C: .4byte 0x02000338
_080603A0: .4byte 0x0200033A
_080603A4: .4byte 0x04000008
_080603A8: .4byte 0x0200033C
_080603AC: .4byte 0x0400000A
_080603B0: .4byte 0x0200033E
_080603B4: .4byte 0x0400000C
_080603B8: .4byte 0x02000340
_080603BC: .4byte 0x0400000E
_080603C0: .4byte 0x00000FFF
_080603C4: .4byte 0x0203EA88
_080603C8: .4byte gLoadedTileAnimCount
_080603CC: .4byte 0x030032A8
_080603D0: .4byte 0x00001444
_080603D4: .4byte 0x083FD1D4
_080603D8: .4byte 0x000004AF
_080603DC: .4byte gMatricesCount
_080603E0: .4byte gMatrices
_080603E4: .4byte 0x080B1AE4
_080603E8: .4byte byte_20021F8
_080603EC: .4byte gKeysDown
_080603F0: .4byte gKeysPressed
_080603F4: .4byte gPreviousKeys
_080603F8: .4byte byte_2000F55
_080603FC: .4byte gIsPaletteEffectsActive
_08060400: .4byte gOAMBuffer1
_08060404: .4byte gOAMBufferFramePtr
_08060408: .4byte gOAMBufferEnd
_0806040C: .4byte gOAMBufferFramePtr
_08060410: .4byte gOBJTileFramePtr
_08060414: .4byte 0x06014000
_08060418: .4byte gOBJTileCount
_0806041C:
	adds r0, r7, #0
	adds r0, #0x40
	lsls r0, r0, #1
	add r0, sb
	movs r2, #0
	ldrsh r1, [r0, r2]
	rsbs r1, r1, #0
_0806042A:
	adds r0, r5, #0
	bl CallARM_FX_Mul8
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x64
	bl CallARM_FX_Mul8
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	lsls r0, r7, #1
	add r0, sb
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r0, r5, #0
	bl CallARM_FX_Mul8
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x64
	bl CallARM_FX_Mul8
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	add r1, sp, #0x10
	lsls r0, r4, #0x10
	asrs r2, r0, #0x10
	adds r0, r2, #0
	adds r0, #0x68
	strh r0, [r1, #6]
	adds r0, r3, #0
	adds r0, #0x40
	strb r0, [r1, #8]
	cmp r2, #0x7f
	bgt _080604C2
	lsls r0, r3, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0x57
	bgt _080604C2
	movs r0, #0x7f
	rsbs r0, r0, #0
	cmp r2, r0
	ble _080604C2
	adds r0, #0x27
	cmp r1, r0
	ble _080604C2
	ldr r0, _080604B4
	ldrb r0, [r0]
	cmp r0, #0
	bne _080604C2
	add r0, sp, #0x10
	bl sprite_render
	lsrs r2, r6, #1
	movs r0, #0x91
	lsls r0, r0, #1
	mov r1, sl
	cmp r1, #0
	beq _080604B8
	subs r2, r0, r2
	adds r2, #0x80
	movs r0, #0
	mov r1, r8
	bl sub_8025718
	b _080604C2
	.align 2, 0
_080604B4: .4byte byte_2000F55
_080604B8:
	adds r2, #0x80
	movs r0, #0
	mov r1, r8
	bl sub_8025718
_080604C2:
	bl CheckStacks
	bl SyncVblank
	bl update_video
	bl sub_8003A14
	bl SkipVblank
	adds r6, #1
	subs r0, r7, #3
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	mov r0, r8
	adds r0, #5
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	ldr r0, _08060548
	cmp r6, r0
	bhi _080604F0
	b _08060318
_080604F0:
	ldr r0, _0806054C
	movs r1, #1
	bl sub_80271A4
	ldr r0, _08060550
	ldr r0, [r0]
	movs r1, #3
	bl Free
	ldr r0, [sp, #0x2c]
	movs r1, #1
	bl Free
	movs r1, #0x80
	lsls r1, r1, #0x13
	ldr r0, _08060554
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #8
	ldr r0, _08060558
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #2
	ldr r0, _0806055C
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #2
	ldr r0, _08060560
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #2
	ldr r0, _08060564
	ldrh r0, [r0]
	strh r0, [r1]
	movs r0, #1
	add sp, #0x30
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08060548: .4byte 0x00000243
_0806054C: .4byte 0x00000FFF
_08060550: .4byte gMatrices
_08060554: .4byte 0x02000338
_08060558: .4byte 0x0200033A
_0806055C: .4byte 0x0200033C
_08060560: .4byte 0x0200033E
_08060564: .4byte 0x02000340

    .thumb
sub_8060568: @ 0x08060568
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x48
	ldr r1, _0806068C
	movs r5, #0x80
	lsls r5, r5, #0x13
	ldrh r0, [r5]
	strh r0, [r1]
	ldr r1, _08060690
	ldr r0, _08060694
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r1, _08060698
	ldr r0, _0806069C
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r1, _080606A0
	ldr r4, _080606A4
	ldrh r0, [r4]
	strh r0, [r1]
	ldr r1, _080606A8
	ldr r0, _080606AC
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r0, _080606B0
	movs r1, #0
	bl sub_80270AC
	ldr r0, _080606B4
	movs r7, #0
	str r7, [r0]
	ldr r0, _080606B8
	strb r7, [r0]
	ldr r1, _080606BC
	adds r0, r1, #0
	strh r0, [r5]
	movs r6, #0
	mov sb, r6
	strh r7, [r4]
	movs r4, #0xc0
	lsls r4, r4, #0x13
	movs r2, #0xa0
	lsls r2, r2, #7
	movs r0, #0
	adds r1, r4, #0
	bl DmaFill32
	bl SyncVblank
	ldr r0, _080606C0
	adds r1, r4, #0
	bl LZ77UnCompReadNormalWrite16bit
	ldr r0, _080606C4
	movs r1, #0xa0
	lsls r1, r1, #0x13
	movs r2, #0x80
	bl DmaTransfer32
	ldr r0, _080606C8
	ldr r1, _080606CC
	movs r2, #0x80
	bl DmaTransfer32
	movs r0, #1
	mov r8, r0
	ldr r2, _080606D0
	ldr r3, _080606D4
	ldrb r0, [r2]
	ldrb r1, [r3]
	cmp r0, r1
	bne _08060602
	movs r6, #2
	mov r8, r6
_08060602:
	ldrh r0, [r2, #0xc]
	ldrh r1, [r3, #0xc]
	cmp r0, r1
	bne _0806060E
	movs r6, #1
	add r8, r6
_0806060E:
	ldrb r0, [r2, #1]
	ldrb r1, [r3, #1]
	cmp r0, r1
	bne _0806061A
	movs r6, #1
	add r8, r6
_0806061A:
	ldrb r0, [r2, #8]
	lsls r1, r0, #4
	subs r1, r1, r0
	lsls r1, r1, #2
	ldrb r2, [r2, #9]
	adds r1, r1, r2
	ldrb r2, [r3, #8]
	lsls r0, r2, #4
	subs r0, r0, r2
	lsls r0, r0, #2
	ldrb r3, [r3, #9]
	adds r0, r0, r3
	cmp r1, r0
	bgt _0806063A
	movs r0, #1
	add r8, r0
_0806063A:
	add r0, sp, #0x10
	movs r6, #0xfe
	strb r6, [r0, #0x10]
	mov r1, sb
	strb r1, [r0, #0x12]
	movs r1, #1
	strb r1, [r0, #0xa]
	movs r4, #0xf0
	strh r4, [r0, #8]
	movs r5, #1
	strh r1, [r0, #0xe]
	strh r7, [r0, #0xc]
	movs r3, #6
	strb r3, [r0, #0x11]
	ldr r2, _080606D8
	str r2, [sp, #0x14]
	add r0, sp, #0x24
	strb r6, [r0, #0x10]
	mov r6, sb
	strb r6, [r0, #0x12]
	strb r5, [r0, #0xa]
	strh r4, [r0, #8]
	strh r1, [r0, #0xe]
	strh r7, [r0, #0xc]
	strb r3, [r0, #0x11]
	str r2, [r0, #4]
	movs r1, #0
	mov sb, r1
	movs r6, #0
	str r6, [sp, #0x38]
	ldr r1, _080606DC
	ldrb r1, [r1]
	mov sl, r0
	cmp r1, #4
	bhi _0806074A
	lsls r0, r1, #2
	ldr r1, _080606E0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0806068C: .4byte 0x02000338
_08060690: .4byte 0x0200033A
_08060694: .4byte 0x04000008
_08060698: .4byte 0x0200033C
_0806069C: .4byte 0x0400000A
_080606A0: .4byte 0x0200033E
_080606A4: .4byte 0x0400000C
_080606A8: .4byte 0x02000340
_080606AC: .4byte 0x0400000E
_080606B0: .4byte 0x00000FFF
_080606B4: .4byte gLoadedTileAnimCount
_080606B8: .4byte 0x030032A8
_080606BC: .4byte 0x00001444
_080606C0: .4byte 0x087E233C
_080606C4: .4byte 0x083FC314
_080606C8: .4byte 0x083FD254
_080606CC: .4byte 0x05000200
_080606D0: .4byte gGameStatus
_080606D4: .4byte 0x080CC8C4
_080606D8: .4byte 0x080B01B8
_080606DC: .4byte 0x02000320
_080606E0: .4byte 0x080606E4
_080606E4: @ jump table
	.4byte _080606F8 @ case 0
	.4byte _08060708 @ case 1
	.4byte _08060728 @ case 2
	.4byte _08060718 @ case 3
	.4byte _08060738 @ case 4
_080606F8:
	ldr r0, _08060700
	str r0, [sp, #0x38]
	ldr r1, _08060704
	b _0806073E
	.align 2, 0
_08060700: .4byte 0x08065E24
_08060704: .4byte 0x086AD47C
_08060708:
	ldr r1, _08060710
	str r1, [sp, #0x38]
	ldr r1, _08060714
	b _0806073E
	.align 2, 0
_08060710: .4byte 0x08065E78
_08060714: .4byte 0x086AD490
_08060718:
	ldr r6, _08060720
	str r6, [sp, #0x38]
	ldr r1, _08060724
	b _0806073E
	.align 2, 0
_08060720: .4byte 0x08065ECC
_08060724: .4byte 0x086AD4A4
_08060728:
	ldr r0, _08060730
	str r0, [sp, #0x38]
	ldr r1, _08060734
	b _0806073E
	.align 2, 0
_08060730: .4byte 0x08065F14
_08060734: .4byte 0x086AD4B8
_08060738:
	ldr r1, _08060794
	str r1, [sp, #0x38]
	ldr r1, _08060798
_0806073E:
	mov r0, r8
	subs r0, #1
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	mov sb, r0
_0806074A:
	mov r0, sb
	add r1, sp, #0x10
	bl sub_8025870
	str r0, [sp, #0x3c]
	ldr r0, [sp, #0x38]
	mov r1, sl
	bl sub_8025870
	adds r4, r0, #0
	movs r0, #0x8c
	movs r1, #0x14
	movs r2, #4
	bl Alloc
	str r0, [sp, #0x44]
	adds r4, #0x18
	movs r7, #0
	adds r5, r0, #0
	movs r6, #4
_08060772:
	movs r0, #0
	str r0, [sp]
	str r4, [sp, #4]
	movs r0, #0x91
	str r0, [sp, #8]
	movs r0, #2
	str r0, [sp, #0xc]
	adds r0, r5, #0
	ldr r1, _0806079C
	movs r2, #0
	movs r3, #0
	bl SetSprite
	cmp r7, r8
	bge _080607A0
	adds r7, #1
	b _080607A4
	.align 2, 0
_08060794: .4byte 0x08065F58
_08060798: .4byte 0x086AD4CC
_0806079C: .4byte 0x00000226
_080607A0:
	movs r0, #1
	strb r0, [r5, #0x10]
_080607A4:
	adds r4, #0x20
	adds r5, #0x1c
	subs r6, #1
	cmp r6, #0
	bge _08060772
	movs r0, #0
	bl SetTextSpriteCount
	ldr r4, _08060830
	movs r2, #0x80
	lsls r2, r2, #1
	movs r0, #0xaa
	adds r1, r4, #0
	bl DmaFill32
	ldr r0, _08060834
	str r4, [r0]
	ldr r0, _08060838
	movs r1, #0x80
	lsls r1, r1, #3
	adds r5, r4, r1
	str r5, [r0]
	ldr r1, _0806083C
	ldr r0, _08060840
	str r0, [r1]
	ldr r1, _08060844
	movs r0, #0x80
	lsls r0, r0, #2
	str r0, [r1]
	bl SyncVblank
	bl update_video
	bl SkipVblank
	ldr r0, _08060848
	movs r1, #0
	movs r2, #1
	bl sub_8026E48
	bl SetObjectsFullAlpha
	movs r6, #1
	str r6, [sp, #0x40]
	movs r0, #0x96
	lsls r0, r0, #3
	mov r8, r0
	add r7, sp, #0x10
	movs r5, #0
_08060806:
	ldr r4, _0806084C
	ldr r0, _08060850
	adds r1, r4, #0
	ldr r2, _08060854
	bl ReadKeys
	ldrh r1, [r4]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08060820
	movs r1, #1
	mov r8, r1
_08060820:
	ldr r0, _08060858
	ldrb r0, [r0]
	cmp r0, #0
	beq _0806085C
	bl sub_8026DC0
	b _08060862
	.align 2, 0
_08060830: .4byte gOAMBuffer1
_08060834: .4byte gOAMBufferFramePtr
_08060838: .4byte gOAMBufferEnd
_0806083C: .4byte gOBJTileFramePtr
_08060840: .4byte 0x06014000
_08060844: .4byte gOBJTileCount
_08060848: .4byte 0x00000FFF
_0806084C: .4byte gKeysDown
_08060850: .4byte gKeysPressed
_08060854: .4byte gPreviousKeys
_08060858: .4byte gIsPaletteEffectsActive
_0806085C:
	movs r6, #1
	rsbs r6, r6, #0
	add r8, r6
_08060862:
	movs r0, #0
	bl SetTextSpriteCount
	movs r0, #0xaa
	ldr r1, _08060944
	movs r2, #0x80
	lsls r2, r2, #1
	bl DmaFill32
	ldr r0, _08060948
	ldr r1, _08060944
	str r1, [r0]
	ldr r0, _0806094C
	ldr r6, _08060950
	str r6, [r0]
	ldr r1, _08060954
	ldr r0, _08060958
	str r0, [r1]
	ldr r1, _0806095C
	movs r0, #0x80
	lsls r0, r0, #2
	str r0, [r1]
	movs r0, #0xf0
	ldr r1, [sp, #0x3c]
	subs r0, r0, r1
	asrs r0, r0, #1
	strh r0, [r7]
	movs r6, #8
	strh r6, [r7, #2]
	strh r5, [r7, #0xc]
	add r0, sp, #0x10
	mov r1, sb
	bl AddStringToBuffer
	movs r1, #0x10
	mov r0, sl
	strh r1, [r0]
	movs r6, #0x69
	strh r6, [r0, #2]
	strh r5, [r0, #0xc]
	ldr r1, [sp, #0x38]
	bl AddStringToBuffer
	bl RenderText
	ldr r4, [sp, #0x44]
	movs r6, #4
_080608C0:
	adds r0, r4, #0
	bl sprite_render
	adds r4, #0x1c
	subs r6, #1
	cmp r6, #0
	bge _080608C0
	bl CheckStacks
	bl SyncVblank
	bl update_video
	bl SkipVblank
	ldr r0, [sp, #0x40]
	cmp r0, #0
	beq _080608F0
	movs r0, #2
	movs r1, #0
	bl sub_08026BA8
	movs r1, #0
	str r1, [sp, #0x40]
_080608F0:
	mov r6, r8
	cmp r6, #0
	bne _08060806
	ldr r0, _08060960
	movs r1, #1
	bl sub_80270AC
	ldr r0, [sp, #0x44]
	movs r1, #4
	bl Free
	movs r1, #0x80
	lsls r1, r1, #0x13
	ldr r0, _08060964
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #8
	ldr r0, _08060968
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #2
	ldr r0, _0806096C
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #2
	ldr r0, _08060970
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #2
	ldr r0, _08060974
	ldrh r0, [r0]
	strh r0, [r1]
	movs r0, #1
	add sp, #0x48
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08060944: .4byte gOAMBuffer1
_08060948: .4byte gOAMBufferFramePtr
_0806094C: .4byte gOAMBufferEnd
_08060950: .4byte gOAMBufferFramePtr
_08060954: .4byte gOBJTileFramePtr
_08060958: .4byte 0x06014000
_0806095C: .4byte gOBJTileCount
_08060960: .4byte 0x00000FFF
_08060964: .4byte 0x02000338
_08060968: .4byte 0x0200033A
_0806096C: .4byte 0x0200033C
_08060970: .4byte 0x0200033E
_08060974: .4byte 0x02000340

    .thumb
show_licence_screen: @ 0x08060978
	push {r4, r5, r6, lr}
	ldr r1, _08060A44
	movs r5, #0x80
	lsls r5, r5, #0x13
	ldrh r0, [r5]
	strh r0, [r1]
	ldr r1, _08060A48
	ldr r0, _08060A4C
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r1, _08060A50
	ldr r0, _08060A54
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r1, _08060A58
	ldr r4, _08060A5C
	ldrh r0, [r4]
	strh r0, [r1]
	ldr r1, _08060A60
	ldr r0, _08060A64
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r6, _08060A68
	adds r0, r6, #0
	movs r1, #0
	bl sub_80270AC
	ldr r0, _08060A6C
	movs r1, #0
	str r1, [r0]
	ldr r0, _08060A70
	strb r1, [r0]
	ldr r2, _08060A74
	adds r0, r2, #0
	strh r0, [r5]
	strh r1, [r4]
	movs r4, #0xc0
	lsls r4, r4, #0x13
	movs r2, #0xa0
	lsls r2, r2, #7
	movs r0, #0
	adds r1, r4, #0
	bl DmaFill32
	bl SyncVblank
	ldr r0, _08060A78
	adds r1, r4, #0
	bl LZ77UnCompReadNormalWrite16bit
	ldr r0, _08060A7C
	movs r1, #0xa0
	lsls r1, r1, #0x13
	movs r2, #0x80
	bl DmaTransfer32
	ldr r4, _08060A80
	movs r2, #0x80
	lsls r2, r2, #1
	movs r0, #0xaa
	adds r1, r4, #0
	bl DmaFill32
	ldr r0, _08060A84
	str r4, [r0]
	ldr r0, _08060A88
	movs r1, #0x80
	lsls r1, r1, #3
	adds r5, r4, r1
	str r5, [r0]
	ldr r1, _08060A8C
	ldr r0, _08060A90
	str r0, [r1]
	ldr r1, _08060A94
	movs r0, #0x80
	lsls r0, r0, #2
	str r0, [r1]
	bl SyncVblank
	bl update_video
	bl SkipVblank
	adds r0, r6, #0
	movs r1, #0
	movs r2, #0
	bl sub_8026E48
	movs r6, #0xb4
_08060A2A:
	ldr r0, _08060A98
	ldr r1, _08060A9C
	ldr r2, _08060AA0
	bl ReadKeys
	ldr r0, _08060AA4
	ldrb r0, [r0]
	cmp r0, #0
	beq _08060AA8
	bl sub_8026DC0
	b _08060AAA
	.align 2, 0
_08060A44: .4byte 0x02000338
_08060A48: .4byte 0x0200033A
_08060A4C: .4byte 0x04000008
_08060A50: .4byte 0x0200033C
_08060A54: .4byte 0x0400000A
_08060A58: .4byte 0x0200033E
_08060A5C: .4byte 0x0400000C
_08060A60: .4byte 0x02000340
_08060A64: .4byte 0x0400000E
_08060A68: .4byte 0x00000FFF
_08060A6C: .4byte gLoadedTileAnimCount
_08060A70: .4byte 0x030032A8
_08060A74: .4byte 0x00001444
_08060A78: .4byte 0x087E61A8
_08060A7C: .4byte 0x083FC514
_08060A80: .4byte gOAMBuffer1
_08060A84: .4byte gOAMBufferFramePtr
_08060A88: .4byte gOAMBufferEnd
_08060A8C: .4byte gOBJTileFramePtr
_08060A90: .4byte 0x06014000
_08060A94: .4byte gOBJTileCount
_08060A98: .4byte gKeysPressed
_08060A9C: .4byte gKeysDown
_08060AA0: .4byte gPreviousKeys
_08060AA4: .4byte gIsPaletteEffectsActive
_08060AA8:
	subs r6, #1
_08060AAA:
	movs r0, #0
	bl SetTextSpriteCount
	movs r0, #0xaa
	adds r1, r4, #0
	movs r2, #0x80
	lsls r2, r2, #1
	bl DmaFill32
	ldr r0, _08060B58
	str r4, [r0]
	ldr r0, _08060B5C
	str r5, [r0]
	ldr r1, _08060B60
	ldr r0, _08060B64
	str r0, [r1]
	ldr r1, _08060B68
	movs r0, #0x80
	lsls r0, r0, #2
	str r0, [r1]
	bl CheckStacks
	bl SyncVblank
	bl update_video
	bl SkipVblank
	cmp r6, #0
	bne _08060A2A
	ldr r4, _08060B6C
	adds r0, r4, #0
	movs r1, #0
	bl sub_80270AC
	movs r1, #0x80
	lsls r1, r1, #0x13
	ldr r0, _08060B70
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #8
	ldr r0, _08060B74
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #2
	ldr r0, _08060B78
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #2
	ldr r0, _08060B7C
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #2
	ldr r0, _08060B80
	ldrh r0, [r0]
	strh r0, [r1]
	movs r1, #0xc0
	lsls r1, r1, #0x13
	movs r2, #0xa0
	lsls r2, r2, #7
	movs r0, #0
	bl DmaFill32
	ldr r0, _08060B84
	strh r6, [r0]
	ldr r0, _08060B88
	ldrb r0, [r0]
	cmp r0, #0
	beq _08060B3A
	movs r0, #0
	bl audio_start_tune
_08060B3A:
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	bl sub_8026E48
	ldr r0, _08060B8C
	movs r1, #0xa0
	lsls r1, r1, #0x13
	movs r2, #0x80
	bl DmaTransfer32
	movs r0, #1
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08060B58: .4byte gOAMBufferFramePtr
_08060B5C: .4byte gOAMBufferEnd
_08060B60: .4byte gOBJTileFramePtr
_08060B64: .4byte 0x06014000
_08060B68: .4byte gOBJTileCount
_08060B6C: .4byte 0x00000FFF
_08060B70: .4byte 0x02000338
_08060B74: .4byte 0x0200033A
_08060B78: .4byte 0x0200033C
_08060B7C: .4byte 0x0200033E
_08060B80: .4byte 0x02000340
_08060B84: .4byte gLoadedRoomBgm
_08060B88: .4byte 0x0203EA88
_08060B8C: .4byte 0x083FC514

	.thumb
sub_8060B90: @ 0x08060B90
	ldr r2, _08060BB4
	ldr r0, _08060BB8
	ldr r0, [r0]
	ldr r1, [r0]
	ldrh r0, [r1, #2]
	strh r0, [r2]
	ldr r2, _08060BBC
	ldrh r0, [r1, #4]
	strh r0, [r2]
	ldr r2, _08060BC0
	adds r1, #0xa4
	ldrb r1, [r1]
	movs r0, #3
	subs r0, r0, r1
	strb r0, [r2]
	movs r0, #1
	bx lr
	.align 2, 0
_08060BB4: .4byte 0x0203F994
_08060BB8: .4byte 0x0203F8B4
_08060BBC: .4byte 0x0203F996
_08060BC0: .4byte byte_203F99D


    .thumb
sub_8060BC4: @ 0x08060BC4
	push {r4, lr}
	ldr r1, _08060BF8
	ldr r2, _08060BFC
	movs r3, #2
	ldrsh r0, [r2, r3]
	strh r0, [r1]
	ldr r4, _08060C00
	ldr r3, _08060C04
	ldr r1, [r2, #8]
	ldr r0, [r2, #4]
	adds r1, r1, r0
	asrs r1, r1, #0x10
	ldrh r0, [r3]
	subs r0, r0, r1
	strh r0, [r4]
	ldr r2, _08060C08
	ldr r0, _08060C0C
	ldrb r1, [r0, #4]
	movs r0, #3
	subs r0, r0, r1
	strb r0, [r2]
	movs r0, #1
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08060BF8: .4byte 0x0203F994
_08060BFC: .4byte gPlayerPos
_08060C00: .4byte 0x0203F996
_08060C04: .4byte gMapPixelSizeY
_08060C08: .4byte byte_203F99D
_08060C0C: .4byte gPlayerSprite

	.thumb
sub_8060C10: @ 0x08060C10
	push {lr}
	ldr r0, _08060C30
	ldr r0, [r0]
	adds r0, #0x23
	ldrb r0, [r0]
	cmp r0, #0
	bne _08060C22
	.2byte 0xEE00, 0xEE00
_08060C22:
	movs r0, #1
	bl end_all_scripts
	movs r0, #1
	pop {r1}
	bx r1
	.align 2, 0
_08060C30: .4byte 0x0203F9F4


    .thumb
sub_8060C34: @ 0x08060C34
	push {r4, lr}
	adds r4, r0, #0
	bl SyncVblank
	adds r0, r4, #0
	bl RoomObjPaletteToVram
	movs r0, #1
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	.thumb
sub_8060C4C: @ 0x08060C4C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	adds r6, r2, #0
	bl SyncVblank
	cmp r4, #0
	bne _08060C6C
	ldr r0, _08060C68
	adds r1, r5, #0
	adds r2, r6, #0
	bl DmaTransferObjPalette
	b _08060C70
	.align 2, 0
_08060C68: .4byte 0x083FD834
_08060C6C:
	.2byte 0xEE00, 0xEE00
_08060C70:
	movs r0, #1
	pop {r4, r5, r6}
	pop {r1}
	bx r1

    .thumb
sub_8060C78: @ 0x08060C78
	push {lr}
	ldr r1, _08060CAC
	ldr r0, _08060CB0
	ldrh r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _08060CA6
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _08060CA6
	ldr r0, _08060CB4
	ldrb r0, [r0]
	cmp r0, #3
	beq _08060CA6
	cmp r0, #4
	beq _08060CA6
	bl sub_801990C
_08060CA6:
	movs r0, #1
	pop {r1}
	bx r1
	.align 2, 0
_08060CAC: .4byte gPlayerStateFlags
_08060CB0: .4byte gPlayerState
_08060CB4: .4byte gTransformation

	.thumb
sub_8060CB8: @ 0x08060CB8
	ldr r1, _08060CC0
	strb r0, [r1]
	movs r0, #1
	bx lr
	.align 2, 0
_08060CC0: .4byte 0x0203FA58

	.thumb
sub_8060CC4: @ 0x08060CC4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	mov r8, r0
	ldr r0, _08060D64
	ldrh r2, [r0]
	lsls r2, r2, #0x10
	ldr r1, _08060D68
	ldr r0, [r1, #8]
	ldr r1, [r1, #4]
	adds r0, r0, r1
	subs r2, r2, r0
	str r2, [sp]
	movs r7, #0
	movs r0, #0
	mov sl, r0
	ldr r1, _08060D6C
	mov sb, r1
_08060CEE:
	ldr r1, _08060D70
	lsls r0, r7, #3
	adds r4, r0, r1
	ldrh r0, [r4]
	lsls r6, r0, #0x10
	ldrh r0, [r4, #2]
	lsls r5, r0, #0x10
	ldr r0, _08060D68
	ldr r0, [r0]
	subs r0, r0, r6
	bl Abs
	cmp r0, sb
	bhi _08060D3E
	ldr r1, [sp]
	subs r0, r1, r5
	bl Abs
	cmp r0, sb
	bhi _08060D3E
	movs r0, #1
	mov sl, r0
	asrs r1, r6, #0x10
	asrs r2, r5, #0x10
	mov r0, r8
	movs r3, #0
	bl script_cmd_actor_set_position
	ldrb r1, [r4, #4]
	mov r0, r8
	movs r2, #0
	movs r3, #0
	bl script_cmd_actor_set_priority
	ldrh r1, [r4, #6]
	mov r0, r8
	movs r2, #0
	movs r3, #0
	bl sub_805F04C
_08060D3E:
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	mov r1, sl
	cmp r1, #0
	bne _08060D52
	cmp r7, #5
	bls _08060CEE
	.2byte 0xEE00, 0xEE00
_08060D52:
	movs r0, #1
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08060D64: .4byte gMapPixelSizeY
_08060D68: .4byte gPlayerPos
_08060D6C: .4byte 0x002FFFFF
_08060D70: .4byte 0x080B21D4

    .thumb
sub_8060D74: @ 0x08060D74
	push {lr}
	bl sub_8041E58
	movs r0, #1
	pop {r1}
	bx r1

    .thumb
sub_8060D80: @ 0x08060D80
	ldr r1, _08060D8C
	movs r0, #1
	strb r0, [r1]
	movs r0, #1
	bx lr
	.align 2, 0
_08060D8C: .4byte 0x0203E138

    .thumb
sub_8060D90: @ 0x08060D90
	push {lr}
	movs r0, #0
	movs r1, #2
	bl RandomMinMax
	adds r1, r0, #0
	cmp r1, #1
	beq _08060DAE
	cmp r1, #1
	blo _08060DAA
	cmp r1, #2
	beq _08060DBC
	b _08060DC8
_08060DAA:
	movs r0, #0xdf
	b _08060DB0
_08060DAE:
	movs r0, #0xe0
_08060DB0:
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl script_cmd_play_sfx
	b _08060DC8
_08060DBC:
	movs r0, #0xe1
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl script_cmd_play_sfx
_08060DC8:
	pop {r1}
	bx r1
