    .syntax unified
    .text

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
