    .thumb
s_load_object: @ 0x080295E8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x30
	adds r2, r0, #0
	ldr r0, _08029658
	ldr r0, [r0]
	ldrb r0, [r0, #0xc]
	cmp r0, #1
	bne _08029664
	adds r0, r2, #0
	adds r0, #0xa0
	str r0, [sp, #0x10]
	ldr r0, _0802965C
	ldrh r0, [r0]
	ldr r3, [sp, #0x10]
	cmp r3, r0
	blt _08029614
	subs r0, #1
	str r0, [sp, #0x10]
_08029614:
	adds r5, r2, #0
	subs r5, #0xa0
	cmp r5, #0
	bge _08029624
	ldr r0, [sp, #0x10]
	subs r0, r0, r5
	str r0, [sp, #0x10]
	movs r5, #0
_08029624:
	adds r2, r1, #0
	adds r2, #0xa0
	str r2, [sp, #0x18]
	ldr r0, _08029660
	ldrh r0, [r0]
	cmp r2, r0
	blt _08029636
	subs r0, #1
	str r0, [sp, #0x18]
_08029636:
	subs r1, #0x73
	str r1, [sp, #0x14]
	cmp r1, #0
	bge _08029648
	ldr r3, [sp, #0x18]
	subs r3, r3, r1
	str r3, [sp, #0x18]
	movs r0, #0
	str r0, [sp, #0x14]
_08029648:
	adds r0, r5, #0
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #0x14]
	ldr r3, [sp, #0x18]
	bl sub_802A34C
	b _080296B6
	.align 2, 0
_08029658: .4byte 0x0203DFB0
_0802965C: .4byte gMapPixelSizeX
_08029660: .4byte gMapPixelSizeY
_08029664:
	adds r3, r1, #0
	adds r3, #0xa0
	str r3, [sp, #0x10]
	ldr r0, _08029794
	ldrh r0, [r0]
	cmp r3, r0
	blt _08029676
	subs r0, #1
	str r0, [sp, #0x10]
_08029676:
	adds r5, r1, #0
	subs r5, #0x73
	cmp r5, #0
	bge _08029686
	ldr r0, [sp, #0x10]
	subs r0, r0, r5
	str r0, [sp, #0x10]
	movs r5, #0
_08029686:
	adds r1, r2, #0
	adds r1, #0xa0
	str r1, [sp, #0x18]
	ldr r0, _08029798
	ldrh r0, [r0]
	cmp r1, r0
	blt _08029698
	subs r0, #1
	str r0, [sp, #0x18]
_08029698:
	subs r2, #0xa0
	str r2, [sp, #0x14]
	cmp r2, #0
	bge _080296AA
	ldr r3, [sp, #0x18]
	subs r3, r3, r2
	str r3, [sp, #0x18]
	movs r0, #0
	str r0, [sp, #0x14]
_080296AA:
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0x18]
	adds r2, r5, #0
	ldr r3, [sp, #0x10]
	bl sub_802A34C
_080296B6:
	ldr r4, _0802979C
	ldr r1, [r4]
	ldr r0, [r1]
	ldrh r1, [r1, #8]
	adds r2, r5, #0
	bl sub_80039DC
	adds r5, r0, #0
	ldr r1, [r4]
	ldr r0, [r1]
	ldrh r1, [r1, #8]
	ldr r2, [sp, #0x10]
	bl sub_80039DC
	str r0, [sp, #0x10]
	str r5, [sp, #0x1c]
	cmp r5, r0
	ble _080296DC
	b _08029C0A
_080296DC:
	ldr r0, _0802979C
	ldr r0, [r0]
	ldr r0, [r0, #4]
	ldr r2, [sp, #0x1c]
	lsls r1, r2, #3
	adds r0, r1, r0
	ldr r3, [r0]
	mov sb, r3
	movs r2, #0
	str r2, [sp, #0x20]
	str r1, [sp, #0x2c]
	ldr r3, [sp, #0x1c]
	adds r3, #1
	str r3, [sp, #0x28]
	ldrh r0, [r0, #4]
	cmp r2, r0
	blt _08029700
	b _08029BFE
_08029700:
	movs r0, #2
	mov sl, r0
_08029704:
	mov r1, sb
	ldrh r0, [r1]
	ldr r2, [sp, #0x14]
	cmp r0, r2
	bge _08029710
	b _08029BE2
_08029710:
	ldr r3, [sp, #0x18]
	cmp r0, r3
	ble _08029718
	b _08029BE2
_08029718:
	ldrh r0, [r1, #2]
	cmp r0, #0xa8
	bls _08029720
	b _08029BE2
_08029720:
	ldr r1, _080297A0
	mov r2, sb
	ldrh r0, [r2, #2]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	beq _08029736
	b _08029BE2
_08029736:
	ldrh r1, [r2, #8]
	ldr r0, _080297A4
	ldr r0, [r0]
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _08029746
	b _08029BE2
_08029746:
	mov r0, sb
	ldr r1, [sp, #0x1c]
	bl sub_80343F0
	cmp r0, #0
	bne _08029754
	b _08029BE2
_08029754:
	mov r3, sb
	ldrh r0, [r3, #2]
	movs r2, #6
	ldrsh r1, [r3, r2]
	bl is_obj_disabled
	cmp r0, #0
	beq _08029766
	b _08029BE2
_08029766:
	mov r0, sb
	bl actor_alloc
	adds r5, r0, #0
	adds r1, r5, #0
	adds r1, #0x2e
	movs r0, #1
	strb r0, [r1]
	ldr r0, _0802979C
	ldr r1, [r0]
	ldrb r0, [r1, #0xc]
	cmp r0, #1
	bne _080297A8
	ldr r1, [r1]
	ldr r3, [sp, #0x1c]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r0, [r0]
	strh r0, [r5, #2]
	mov r1, sb
	ldrh r0, [r1]
	b _080297B8
	.align 2, 0
_08029794: .4byte gMapPixelSizeY
_08029798: .4byte gMapPixelSizeX
_0802979C: .4byte 0x0203DFB0
_080297A0: .4byte 0x080CC2B0
_080297A4: .4byte 0x0203E010
_080297A8:
	mov r2, sb
	ldrh r0, [r2]
	strh r0, [r5, #2]
	ldr r1, [r1]
	ldr r3, [sp, #0x1c]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r0, [r0]
_080297B8:
	strh r0, [r5, #4]
	mov r1, sb
	ldrh r0, [r1, #4]
	strh r0, [r5, #6]
	ldrb r0, [r1, #0xa]
	strb r0, [r5, #8]
	ldrh r0, [r1, #2]
	strh r0, [r5]
	ldrb r0, [r1, #0xb]
	strb r0, [r5, #9]
	ldrb r0, [r1, #0xc]
	strb r0, [r5, #0xa]
	ldrb r0, [r1, #0xd]
	strb r0, [r5, #0xb]
	ldrb r0, [r1, #0xe]
	strb r0, [r5, #0xc]
	ldrb r0, [r1, #0xf]
	strb r0, [r5, #0x10]
	ldrb r0, [r1, #0x11]
	strb r0, [r5, #0x14]
	ldrb r0, [r1, #0x12]
	strb r0, [r5, #0x18]
	ldrb r1, [r1, #0x13]
	adds r0, r5, #0
	adds r0, #0x24
	strb r1, [r0]
	mov r2, sb
	ldrb r1, [r2, #0x14]
	adds r0, #4
	strb r1, [r0]
	ldrb r0, [r2, #0x10]
	adds r3, r5, #0
	adds r3, #0x45
	strb r0, [r3]
	ldrh r0, [r2, #6]
	strh r0, [r5, #0x1c]
	ldrh r0, [r2, #8]
	strh r0, [r5, #0x1e]
	movs r0, #0
	strh r0, [r5, #0x20]
	adds r0, r5, #0
	adds r0, #0x44
	movs r1, #0
	strb r1, [r0]
	subs r0, #8
	strb r1, [r0]
	ldrb r0, [r2, #0x15]
	adds r2, r5, #0
	adds r2, #0x2f
	strb r0, [r2]
	adds r0, r5, #0
	adds r0, #0x49
	strb r1, [r0]
	mov r0, sb
	ldrb r1, [r0, #0x16]
	adds r0, r5, #0
	adds r0, #0x30
	strb r1, [r0]
	mov r0, sb
	ldrb r1, [r0, #0x18]
	adds r0, r5, #0
	adds r0, #0x38
	strb r1, [r0]
	mov r0, sb
	ldrb r1, [r0, #0x17]
	adds r0, r5, #0
	adds r0, #0x34
	strb r1, [r0]
	mov r0, sb
	ldrh r1, [r0, #0x1a]
	adds r0, r5, #0
	adds r0, #0x40
	strh r1, [r0]
	ldr r1, _0802986C
	ldrh r4, [r5]
	lsls r0, r4, #2
	adds r0, r0, r1
	ldr r1, [r0]
	movs r0, #1
	ands r1, r0
	str r3, [sp, #0x24]
	adds r6, r2, #0
	cmp r1, #0
	beq _08029870
	ldrb r0, [r5, #0x18]
	adds r1, r5, #0
	adds r1, #0x46
	strh r0, [r1]
	b _0802987E
	.align 2, 0
_0802986C: .4byte 0x080CC2B0
_08029870:
	ldr r0, _080298F4
	lsls r1, r4, #3
	adds r1, r1, r0
	ldrb r0, [r1, #2]
	adds r2, r5, #0
	adds r2, #0x46
	strh r0, [r2]
_0802987E:
	adds r0, r5, #0
	bl sub_80293C0
	ldrh r1, [r5, #0x1e]
	ldr r0, _080298F8
	ldr r0, [r0]
	adds r0, r0, r1
	movs r1, #1
	strb r1, [r0]
	ldrh r0, [r5]
	subs r0, #0x97
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x11
	bhi _0802989E
	b _08029BE2
_0802989E:
	ldrh r1, [r5, #2]
	ldr r0, _080298FC
	movs r2, #0
	ldrsh r0, [r0, r2]
	subs r1, r1, r0
	mov r8, r1
	ldrh r1, [r5, #4]
	ldr r0, _08029900
	movs r3, #0
	ldrsh r0, [r0, r3]
	subs r7, r1, r0
	ldrb r0, [r6]
	cmp r0, #0
	bne _08029922
	adds r4, r5, #0
	adds r4, #0xbc
	movs r0, #1
	str r0, [sp]
	mov r0, r8
	str r0, [sp, #4]
	str r7, [sp, #8]
	mov r1, sl
	str r1, [sp, #0xc]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl SetSprite
	ldrb r1, [r5, #8]
	adds r0, r4, #0
	bl sprite_set_priority
	ldrb r1, [r5, #9]
	ldr r0, _08029904
	ldr r0, [r0]
	adds r6, r4, #0
	cmp r1, r0
	bge _0802990C
	ldr r0, _08029908
	adds r0, r1, r0
	ldrb r1, [r0]
	b _0802990E
	.align 2, 0
_080298F4: .4byte 0x080CC938
_080298F8: .4byte 0x0203E010
_080298FC: .4byte gCameraPixelX
_08029900: .4byte gCameraPixelY
_08029904: .4byte dword_80CEBC4
_08029908: .4byte byte_80CEB84
_0802990C:
	movs r1, #5
_0802990E:
	adds r0, r4, #0
	bl sprite_set_locked_frame
	adds r0, r6, #0
	bl sprite_lock_anim
	adds r1, r5, #0
	adds r1, #0xcc
	movs r0, #1
	strb r0, [r1]
_08029922:
	ldrb r0, [r5, #9]
	subs r7, r7, r0
	ldr r2, _08029968
	ldrh r1, [r5]
	lsls r0, r1, #2
	adds r0, r0, r2
	ldr r6, [r0]
	movs r4, #1
	ands r6, r4
	adds r3, r1, #0
	cmp r6, #0
	beq _0802998C
	movs r2, #0x1c
	ldrsh r1, [r5, r2]
	ldrb r2, [r5, #0xc]
	adds r0, r3, #0
	bl sub_8033118
	cmp r0, #0
	beq _08029970
	adds r0, r5, #0
	adds r0, #0xa0
	ldr r2, _0802996C
	ldrh r1, [r5]
	lsls r1, r1, #3
	adds r1, r1, r2
	ldrh r1, [r1, #4]
	str r4, [sp]
	mov r3, r8
	str r3, [sp, #4]
	str r7, [sp, #8]
	mov r2, sl
	str r2, [sp, #0xc]
	b _08029B2A
	.align 2, 0
_08029968: .4byte 0x080CC2B0
_0802996C: .4byte 0x080CC938
_08029970:
	adds r0, r5, #0
	adds r0, #0xa0
	ldrh r1, [r5]
	ldr r3, _08029988
	adds r1, r1, r3
	str r4, [sp]
	mov r2, r8
	str r2, [sp, #4]
	str r7, [sp, #8]
	mov r3, sl
	str r3, [sp, #0xc]
	b _08029B2A
	.align 2, 0
_08029988: .4byte 0x00000221
_0802998C:
	ldr r1, [sp, #0x24]
	ldrb r0, [r1]
	cmp r0, #7
	bne _080299D4
	adds r0, r5, #0
	bl sub_8033CCC
	cmp r0, #0
	bne _080299BC
	adds r0, r5, #0
	adds r0, #0xa0
	ldrh r1, [r5]
	ldr r2, _080299B8
	adds r1, r1, r2
	str r6, [sp]
	mov r3, r8
	str r3, [sp, #4]
	str r7, [sp, #8]
	mov r2, sl
	str r2, [sp, #0xc]
	b _08029B2A
	.align 2, 0
_080299B8: .4byte 0x00000221
_080299BC:
	adds r0, r5, #0
	adds r0, #0xa0
	str r6, [sp]
	mov r3, r8
	str r3, [sp, #4]
	str r7, [sp, #8]
	mov r1, sl
	str r1, [sp, #0xc]
	ldr r1, _080299D0
	b _08029B2A
	.align 2, 0
_080299D0: .4byte 0x00000451
_080299D4:
	cmp r3, #0x39
	bne _080299DA
	b _08029B92
_080299DA:
	cmp r3, #0x39
	bgt _080299FC
	cmp r3, #0x15
	bne _080299E4
	b _08029AF4
_080299E4:
	cmp r3, #0x15
	bgt _080299EE
	cmp r3, #0x14
	beq _08029AB8
	b _08029BC4
_080299EE:
	cmp r3, #0x16
	bne _080299F4
	b _08029B38
_080299F4:
	cmp r3, #0x17
	bne _080299FA
	b _08029B6C
_080299FA:
	b _08029BC4
_080299FC:
	cmp r3, #0x6d
	beq _08029A78
	cmp r3, #0x6d
	bgt _08029A0A
	cmp r3, #0x6c
	beq _08029A3A
	b _08029BC4
_08029A0A:
	cmp r3, #0x6f
	beq _08029A16
	cmp r3, #0x93
	bne _08029A14
	b _08029B38
_08029A14:
	b _08029BC4
_08029A16:
	adds r0, r5, #0
	adds r0, #0xa0
	str r6, [sp]
	mov r2, r8
	str r2, [sp, #4]
	str r7, [sp, #8]
	mov r3, sl
	str r3, [sp, #0xc]
	movs r1, #0xa4
	lsls r1, r1, #2
	movs r2, #0
	movs r3, #0
	bl SetSprite
	adds r0, r5, #0
	adds r0, #0xb0
	strb r4, [r0]
	b _08029BE2
_08029A3A:
	movs r0, #0xcd
	movs r1, #0
	bl is_obj_disabled
	cmp r0, #0
	beq _08029A5C
	adds r0, r5, #0
	adds r0, #0xa0
	str r6, [sp]
	mov r1, r8
	str r1, [sp, #4]
	str r7, [sp, #8]
	mov r2, sl
	str r2, [sp, #0xc]
	movs r1, #0xb7
	lsls r1, r1, #2
	b _08029B2A
_08029A5C:
	adds r0, r5, #0
	adds r0, #0xa0
	ldrh r1, [r5]
	ldr r3, _08029A74
	adds r1, r1, r3
	str r6, [sp]
	mov r2, r8
	str r2, [sp, #4]
	str r7, [sp, #8]
	mov r3, sl
	str r3, [sp, #0xc]
	b _08029B2A
	.align 2, 0
_08029A74: .4byte 0x00000221
_08029A78:
	movs r0, #0xcd
	movs r1, #0
	bl is_obj_disabled
	cmp r0, #0
	beq _08029A9C
	adds r0, r5, #0
	adds r0, #0xa0
	str r6, [sp]
	mov r1, r8
	str r1, [sp, #4]
	str r7, [sp, #8]
	mov r2, sl
	str r2, [sp, #0xc]
	ldr r1, _08029A98
	b _08029B2A
	.align 2, 0
_08029A98: .4byte 0x000002DB
_08029A9C:
	adds r0, r5, #0
	adds r0, #0xa0
	ldrh r1, [r5]
	ldr r3, _08029AB4
	adds r1, r1, r3
	str r6, [sp]
	mov r2, r8
	str r2, [sp, #4]
	str r7, [sp, #8]
	mov r3, sl
	str r3, [sp, #0xc]
	b _08029B2A
	.align 2, 0
_08029AB4: .4byte 0x00000221
_08029AB8:
	ldr r0, _08029AD8
	ldrb r0, [r0, #0x16]
	cmp r0, #0
	bne _08029ADC
	adds r0, r5, #0
	adds r0, #0xa0
	str r6, [sp]
	mov r1, r8
	str r1, [sp, #4]
	str r7, [sp, #8]
	mov r2, sl
	str r2, [sp, #0xc]
	movs r1, #0xb6
	lsls r1, r1, #2
	b _08029B2A
	.align 2, 0
_08029AD8: .4byte 0x0200209A
_08029ADC:
	adds r0, r5, #0
	adds r0, #0xa0
	str r6, [sp]
	mov r3, r8
	str r3, [sp, #4]
	str r7, [sp, #8]
	mov r1, sl
	str r1, [sp, #0xc]
	ldr r1, _08029AF0
	b _08029B2A
	.align 2, 0
_08029AF0: .4byte 0x00000235
_08029AF4:
	ldr r0, _08029B10
	ldrb r0, [r0, #5]
	cmp r0, #0
	bne _08029B18
	adds r0, r5, #0
	adds r0, #0xa0
	str r6, [sp]
	mov r2, r8
	str r2, [sp, #4]
	str r7, [sp, #8]
	mov r3, sl
	str r3, [sp, #0xc]
	ldr r1, _08029B14
	b _08029B2A
	.align 2, 0
_08029B10: .4byte 0x0200209A
_08029B14: .4byte 0x000002D9
_08029B18:
	adds r0, r5, #0
	adds r0, #0xa0
	str r6, [sp]
	mov r1, r8
	str r1, [sp, #4]
	str r7, [sp, #8]
	mov r2, sl
	str r2, [sp, #0xc]
	ldr r1, _08029B34
_08029B2A:
	movs r2, #0
	movs r3, #0
	bl SetSprite
	b _08029BE2
	.align 2, 0
_08029B34: .4byte 0x00000236
_08029B38:
	adds r4, r5, #0
	adds r4, #0xa0
	ldr r0, _08029B68
	adds r1, r3, r0
	movs r2, #0
	str r2, [sp]
	mov r3, r8
	str r3, [sp, #4]
	str r7, [sp, #8]
	mov r0, sl
	str r0, [sp, #0xc]
	adds r0, r4, #0
	movs r3, #0
	bl SetSprite
	adds r1, r5, #0
	adds r1, #0xae
	movs r0, #0x14
	strb r0, [r1]
	adds r0, r4, #0
	movs r1, #0
	bl sprite_lock_anim_on_frame
	b _08029BB6
	.align 2, 0
_08029B68: .4byte 0x00000221
_08029B6C:
	adds r4, r5, #0
	adds r4, #0xa0
	str r6, [sp]
	mov r1, r8
	str r1, [sp, #4]
	str r7, [sp, #8]
	mov r2, sl
	str r2, [sp, #0xc]
	adds r0, r4, #0
	movs r1, #0x8e
	lsls r1, r1, #2
	movs r2, #0
	movs r3, #0
	bl SetSprite
	adds r1, r5, #0
	adds r1, #0xae
	movs r0, #0x14
	b _08029BB4
_08029B92:
	adds r4, r5, #0
	adds r4, #0xa0
	str r6, [sp]
	mov r3, r8
	str r3, [sp, #4]
	str r7, [sp, #8]
	mov r0, sl
	str r0, [sp, #0xc]
	adds r0, r4, #0
	ldr r1, _08029BC0
	movs r2, #0
	movs r3, #0
	bl SetSprite
	adds r1, r5, #0
	adds r1, #0xae
	movs r0, #4
_08029BB4:
	strb r0, [r1]
_08029BB6:
	adds r0, r4, #0
	movs r1, #0
	bl sprite_set_locked_frame
	b _08029BE2
	.align 2, 0
_08029BC0: .4byte 0x0000025A
_08029BC4:
	adds r0, r5, #0
	adds r0, #0xa0
	ldr r2, _08029C28
	adds r1, r3, r2
	movs r3, #0
	str r3, [sp]
	mov r2, r8
	str r2, [sp, #4]
	str r7, [sp, #8]
	mov r3, sl
	str r3, [sp, #0xc]
	movs r2, #0
	movs r3, #0
	bl SetSprite
_08029BE2:
	movs r0, #0x1c
	add sb, r0
	ldr r1, [sp, #0x20]
	adds r1, #1
	str r1, [sp, #0x20]
	ldr r0, _08029C2C
	ldr r0, [r0]
	ldr r0, [r0, #4]
	ldr r2, [sp, #0x2c]
	adds r0, r2, r0
	ldrh r0, [r0, #4]
	cmp r1, r0
	bge _08029BFE
	b _08029704
_08029BFE:
	ldr r3, [sp, #0x28]
	str r3, [sp, #0x1c]
	ldr r0, [sp, #0x10]
	cmp r3, r0
	bgt _08029C0A
	b _080296DC
_08029C0A:
	bl sub_802C968
	bl despawn_aged_projectiles
	bl play_jinjo_sounds
	add sp, #0x30
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08029C28: .4byte 0x00000221
_08029C2C: .4byte 0x0203DFB0

