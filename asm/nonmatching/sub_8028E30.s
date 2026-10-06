    .thumb
sub_8028E30: @ 0x08028E30
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x34
	movs r0, #0
	str r0, [sp, #0x1c]
	ldr r1, _08028EF0
	ldr r0, [r1]
	ldr r2, [sp, #0x1c]
	ldrh r0, [r0, #8]
	cmp r2, r0
	blt _08028E4E
	b _080293A2
_08028E4E:
	ldr r0, [r1]
	ldr r0, [r0, #4]
	ldr r3, [sp, #0x1c]
	lsls r1, r3, #3
	adds r0, r1, r0
	ldr r2, [r0]
	mov sb, r2
	movs r3, #0
	str r3, [sp, #0x20]
	str r1, [sp, #0x30]
	ldr r1, [sp, #0x1c]
	adds r1, #1
	str r1, [sp, #0x2c]
	ldrh r0, [r0, #4]
	cmp r3, r0
	blt _08028E70
	b _08029392
_08028E70:
	mov r2, sb
	ldrh r0, [r2, #2]
	cmp r0, #0xa8
	bls _08028E7A
	b _08029374
_08028E7A:
	ldr r1, _08028EF4
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	beq _08028E8C
	b _08029374
_08028E8C:
	ldrb r0, [r2, #0x16]
	cmp r0, #0
	bne _08028E94
	b _08029374
_08028E94:
	ldrh r1, [r2, #8]
	ldr r0, _08028EF8
	ldr r0, [r0]
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _08028EA4
	b _08029374
_08028EA4:
	mov r0, sb
	ldr r1, [sp, #0x1c]
	bl sub_80343F0
	cmp r0, #0
	bne _08028EB2
	b _08029374
_08028EB2:
	mov r3, sb
	ldrh r0, [r3, #2]
	movs r2, #6
	ldrsh r1, [r3, r2]
	bl is_obj_disabled
	cmp r0, #0
	beq _08028EC4
	b _08029374
_08028EC4:
	mov r0, sb
	bl actor_alloc
	adds r5, r0, #0
	adds r1, r5, #0
	adds r1, #0x2e
	movs r0, #1
	strb r0, [r1]
	ldr r0, _08028EF0
	ldr r1, [r0]
	ldrb r0, [r1, #0xc]
	cmp r0, #1
	bne _08028EFC
	ldr r1, [r1]
	ldr r3, [sp, #0x1c]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r0, [r0]
	strh r0, [r5, #2]
	mov r1, sb
	ldrh r0, [r1]
	b _08028F0C
	.align 2, 0
_08028EF0: .4byte 0x0203DFB0
_08028EF4: .4byte 0x080CC2B0
_08028EF8: .4byte 0x0203E010
_08028EFC:
	mov r2, sb
	ldrh r0, [r2]
	strh r0, [r5, #2]
	ldr r1, [r1]
	ldr r3, [sp, #0x1c]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r0, [r0]
_08028F0C:
	strh r0, [r5, #4]
	mov r1, sb
	ldrh r0, [r1, #4]
	movs r3, #0
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
	adds r4, r5, #0
	adds r4, #0x45
	strb r0, [r4]
	ldrh r0, [r2, #6]
	strh r0, [r5, #0x1c]
	ldrh r0, [r2, #8]
	strh r0, [r5, #0x1e]
	strh r3, [r5, #0x20]
	adds r0, r5, #0
	adds r0, #0x44
	strb r3, [r0]
	subs r0, #8
	strb r3, [r0]
	ldrb r0, [r2, #0x15]
	adds r2, r5, #0
	adds r2, #0x2f
	strb r0, [r2]
	adds r0, r5, #0
	adds r0, #0x49
	strb r3, [r0]
	mov r3, sb
	ldrb r1, [r3, #0x16]
	subs r0, #0x19
	strb r1, [r0]
	ldrb r1, [r3, #0x18]
	adds r0, #8
	strb r1, [r0]
	ldrb r1, [r3, #0x17]
	subs r0, #4
	strb r1, [r0]
	ldrh r1, [r3, #0x1a]
	adds r0, #0xc
	strh r1, [r0]
	ldr r1, _08028FB0
	ldrh r3, [r5]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r1, [r0]
	movs r0, #1
	ands r1, r0
	str r4, [sp, #0x24]
	adds r4, r2, #0
	cmp r1, #0
	beq _08028FB4
	ldrb r0, [r5, #0x18]
	adds r1, r5, #0
	adds r1, #0x46
	strh r0, [r1]
	b _08028FC2
	.align 2, 0
_08028FB0: .4byte 0x080CC2B0
_08028FB4:
	ldr r0, _08029040
	lsls r1, r3, #3
	adds r1, r1, r0
	ldrb r0, [r1, #2]
	adds r2, r5, #0
	adds r2, #0x46
	strh r0, [r2]
_08028FC2:
	adds r0, r5, #0
	bl sub_80293C0
	ldrh r1, [r5, #0x1e]
	ldr r0, _08029044
	ldr r0, [r0]
	adds r0, r0, r1
	movs r1, #1
	strb r1, [r0]
	ldrh r0, [r5]
	subs r0, #0x97
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x11
	bhi _08028FE2
	b _08029374
_08028FE2:
	ldrh r1, [r5, #2]
	ldr r0, _08029048
	movs r2, #0
	ldrsh r0, [r0, r2]
	subs r1, r1, r0
	mov r8, r1
	ldrh r1, [r5, #4]
	ldr r0, _0802904C
	movs r3, #0
	ldrsh r0, [r0, r3]
	subs r7, r1, r0
	ldrb r0, [r4]
	adds r1, r5, #0
	adds r1, #0x94
	str r1, [sp, #0x28]
	cmp r0, #0
	bne _08029086
	adds r4, r5, #0
	adds r4, #0xbc
	movs r0, #1
	str r0, [sp]
	mov r2, r8
	str r2, [sp, #4]
	str r7, [sp, #8]
	movs r3, #2
	str r3, [sp, #0xc]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl SetSprite
	ldrb r1, [r5, #8]
	adds r0, r4, #0
	bl sprite_set_priority
	ldrb r1, [r5, #9]
	ldr r0, _08029050
	ldr r0, [r0]
	adds r6, r4, #0
	cmp r1, r0
	bge _08029058
	ldr r0, _08029054
	adds r0, r1, r0
	ldrb r1, [r0]
	b _0802905A
	.align 2, 0
_08029040: .4byte 0x080CC938
_08029044: .4byte 0x0203E010
_08029048: .4byte gCameraPixelX
_0802904C: .4byte gCameraPixelY
_08029050: .4byte dword_80CEBC4
_08029054: .4byte byte_80CEB84
_08029058:
	movs r1, #5
_0802905A:
	adds r0, r4, #0
	bl sprite_set_locked_frame
	adds r0, r6, #0
	bl sprite_lock_anim
	adds r4, r5, #0
	adds r4, #0x94
	ldrb r1, [r5, #9]
	rsbs r1, r1, #0
	ldr r0, _080290D0
	ldrh r2, [r0]
	adds r0, r4, #0
	bl sub_8003A7C
	str r4, [sp, #0x28]
	cmp r0, #0
	bne _08029086
	adds r1, r5, #0
	adds r1, #0xcf
	movs r0, #1
	strb r0, [r1]
_08029086:
	ldrb r0, [r5, #9]
	subs r7, r7, r0
	ldr r2, _080290D4
	ldrh r1, [r5]
	lsls r0, r1, #2
	adds r0, r0, r2
	ldr r6, [r0]
	movs r0, #1
	mov sl, r0
	ands r6, r0
	adds r3, r1, #0
	cmp r6, #0
	beq _080290FC
	movs r2, #0x1c
	ldrsh r1, [r5, r2]
	ldrb r2, [r5, #0xc]
	adds r0, r3, #0
	bl sub_8033118
	cmp r0, #0
	beq _080290DC
	adds r4, r5, #0
	adds r4, #0xa0
	ldr r1, _080290D8
	ldrh r0, [r5]
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrh r1, [r0, #4]
	mov r3, sl
	str r3, [sp]
	mov r0, r8
	str r0, [sp, #4]
	str r7, [sp, #8]
	movs r2, #2
	str r2, [sp, #0xc]
	adds r0, r4, #0
	b _08029288
	.align 2, 0
_080290D0: .4byte gMapPixelSizeY
_080290D4: .4byte 0x080CC2B0
_080290D8: .4byte 0x080CC938
_080290DC:
	adds r4, r5, #0
	adds r4, #0xa0
	ldrh r1, [r5]
	ldr r3, _080290F8
	adds r1, r1, r3
	mov r0, sl
	str r0, [sp]
	mov r2, r8
	str r2, [sp, #4]
	str r7, [sp, #8]
	movs r3, #2
	str r3, [sp, #0xc]
	adds r0, r4, #0
	b _08029288
	.align 2, 0
_080290F8: .4byte 0x00000221
_080290FC:
	ldr r1, [sp, #0x24]
	ldrb r0, [r1]
	cmp r0, #7
	bne _08029148
	adds r0, r5, #0
	bl sub_8033CCC
	cmp r0, #0
	bne _0802912C
	adds r4, r5, #0
	adds r4, #0xa0
	ldrh r1, [r5]
	ldr r2, _08029128
	adds r1, r1, r2
	str r6, [sp]
	mov r3, r8
	str r3, [sp, #4]
	str r7, [sp, #8]
	movs r0, #2
	str r0, [sp, #0xc]
	adds r0, r4, #0
	b _08029288
	.align 2, 0
_08029128: .4byte 0x00000221
_0802912C:
	adds r4, r5, #0
	adds r4, #0xa0
	str r6, [sp]
	mov r1, r8
	str r1, [sp, #4]
	str r7, [sp, #8]
	movs r2, #2
	str r2, [sp, #0xc]
	adds r0, r4, #0
	ldr r1, _08029144
	b _08029288
	.align 2, 0
_08029144: .4byte 0x00000451
_08029148:
	cmp r3, #0x17
	bne _0802914E
	b _080292CC
_0802914E:
	cmp r3, #0x17
	bgt _08029164
	cmp r3, #0x15
	bne _08029158
	b _0802924C
_08029158:
	cmp r3, #0x15
	ble _0802915E
	b _08029298
_0802915E:
	cmp r3, #0x14
	beq _0802920C
	b _08029324
_08029164:
	cmp r3, #0x6c
	beq _08029180
	cmp r3, #0x6c
	bgt _08029174
	cmp r3, #0x39
	bne _08029172
	b _080292F2
_08029172:
	b _08029324
_08029174:
	cmp r3, #0x6d
	beq _080291C4
	cmp r3, #0x93
	bne _0802917E
	b _08029298
_0802917E:
	b _08029324
_08029180:
	movs r0, #0xcd
	movs r1, #0
	bl is_obj_disabled
	cmp r0, #0
	beq _080291A4
	adds r4, r5, #0
	adds r4, #0xa0
	str r6, [sp]
	mov r3, r8
	str r3, [sp, #4]
	str r7, [sp, #8]
	movs r0, #2
	str r0, [sp, #0xc]
	adds r0, r4, #0
	movs r1, #0xb7
	lsls r1, r1, #2
	b _08029288
_080291A4:
	adds r4, r5, #0
	adds r4, #0xa0
	ldrh r1, [r5]
	ldr r2, _080291C0
	adds r1, r1, r2
	str r6, [sp]
	mov r3, r8
	str r3, [sp, #4]
	str r7, [sp, #8]
	movs r0, #2
	str r0, [sp, #0xc]
	adds r0, r4, #0
	b _08029288
	.align 2, 0
_080291C0: .4byte 0x00000221
_080291C4:
	movs r0, #0xcd
	movs r1, #0
	bl is_obj_disabled
	cmp r0, #0
	beq _080291EC
	adds r4, r5, #0
	adds r4, #0xa0
	str r6, [sp]
	mov r1, r8
	str r1, [sp, #4]
	str r7, [sp, #8]
	movs r2, #2
	str r2, [sp, #0xc]
	adds r0, r4, #0
	ldr r1, _080291E8
	b _08029288
	.align 2, 0
_080291E8: .4byte 0x000002DB
_080291EC:
	adds r4, r5, #0
	adds r4, #0xa0
	ldrh r1, [r5]
	ldr r3, _08029208
	adds r1, r1, r3
	str r6, [sp]
	mov r0, r8
	str r0, [sp, #4]
	str r7, [sp, #8]
	movs r2, #2
	str r2, [sp, #0xc]
	adds r0, r4, #0
	b _08029288
	.align 2, 0
_08029208: .4byte 0x00000221
_0802920C:
	ldr r0, _0802922C
	ldrb r0, [r0, #0x16]
	cmp r0, #0
	bne _08029230
	adds r4, r5, #0
	adds r4, #0xa0
	str r6, [sp]
	mov r3, r8
	str r3, [sp, #4]
	str r7, [sp, #8]
	movs r0, #2
	str r0, [sp, #0xc]
	adds r0, r4, #0
	movs r1, #0xb6
	lsls r1, r1, #2
	b _08029288
	.align 2, 0
_0802922C: .4byte 0x0200209A
_08029230:
	adds r4, r5, #0
	adds r4, #0xa0
	str r6, [sp]
	mov r1, r8
	str r1, [sp, #4]
	str r7, [sp, #8]
	movs r2, #2
	str r2, [sp, #0xc]
	adds r0, r4, #0
	ldr r1, _08029248
	b _08029288
	.align 2, 0
_08029248: .4byte 0x00000235
_0802924C:
	ldr r0, _0802926C
	ldrb r0, [r0, #5]
	cmp r0, #0
	bne _08029274
	adds r4, r5, #0
	adds r4, #0xa0
	str r6, [sp]
	mov r3, r8
	str r3, [sp, #4]
	str r7, [sp, #8]
	movs r0, #2
	str r0, [sp, #0xc]
	adds r0, r4, #0
	ldr r1, _08029270
	b _08029288
	.align 2, 0
_0802926C: .4byte 0x0200209A
_08029270: .4byte 0x000002D9
_08029274:
	adds r4, r5, #0
	adds r4, #0xa0
	str r6, [sp]
	mov r1, r8
	str r1, [sp, #4]
	str r7, [sp, #8]
	movs r2, #2
	str r2, [sp, #0xc]
	adds r0, r4, #0
	ldr r1, _08029294
_08029288:
	movs r2, #0
	movs r3, #0
	bl SetSprite
	b _08029342
	.align 2, 0
_08029294: .4byte 0x00000236
_08029298:
	adds r4, r5, #0
	adds r4, #0xa0
	ldr r0, _080292C8
	adds r1, r3, r0
	movs r2, #0
	str r2, [sp]
	mov r3, r8
	str r3, [sp, #4]
	str r7, [sp, #8]
	movs r0, #2
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
	b _08029316
	.align 2, 0
_080292C8: .4byte 0x00000221
_080292CC:
	adds r4, r5, #0
	adds r4, #0xa0
	str r6, [sp]
	mov r1, r8
	str r1, [sp, #4]
	str r7, [sp, #8]
	movs r2, #2
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
	b _08029314
_080292F2:
	adds r4, r5, #0
	adds r4, #0xa0
	str r6, [sp]
	mov r3, r8
	str r3, [sp, #4]
	str r7, [sp, #8]
	movs r0, #2
	str r0, [sp, #0xc]
	adds r0, r4, #0
	ldr r1, _08029320
	movs r2, #0
	movs r3, #0
	bl SetSprite
	adds r1, r5, #0
	adds r1, #0xae
	movs r0, #4
_08029314:
	strb r0, [r1]
_08029316:
	adds r0, r4, #0
	movs r1, #0
	bl sprite_set_locked_frame
	b _08029342
	.align 2, 0
_08029320: .4byte 0x0000025A
_08029324:
	adds r4, r5, #0
	adds r4, #0xa0
	ldr r2, _080293B4
	adds r1, r3, r2
	movs r3, #0
	str r3, [sp]
	mov r0, r8
	str r0, [sp, #4]
	str r7, [sp, #8]
	movs r2, #2
	str r2, [sp, #0xc]
	adds r0, r4, #0
	movs r2, #0
	bl SetSprite
_08029342:
	ldr r0, [r5, #0x4c]
	asrs r0, r0, #1
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x50]
	str r0, [sp, #0x14]
	ldr r0, [r5, #0x54]
	asrs r0, r0, #1
	str r0, [sp, #0x18]
	ldr r0, _080293B8
	ldrh r3, [r0]
	ldr r0, [sp, #0x28]
	add r1, sp, #0x10
	movs r2, #0
	bl sub_8003A74
	cmp r0, #0
	bne _0802936C
	adds r1, r5, #0
	adds r1, #0xb3
	movs r0, #1
	strb r0, [r1]
_0802936C:
	ldrb r1, [r5, #8]
	adds r0, r4, #0
	bl sprite_set_priority
_08029374:
	movs r3, #0x1c
	add sb, r3
	ldr r0, [sp, #0x20]
	adds r0, #1
	str r0, [sp, #0x20]
	ldr r0, _080293BC
	ldr r0, [r0]
	ldr r0, [r0, #4]
	ldr r1, [sp, #0x30]
	adds r0, r1, r0
	ldr r2, [sp, #0x20]
	ldrh r0, [r0, #4]
	cmp r2, r0
	bge _08029392
	b _08028E70
_08029392:
	ldr r3, [sp, #0x2c]
	str r3, [sp, #0x1c]
	ldr r1, _080293BC
	ldr r0, [r1]
	ldrh r0, [r0, #8]
	cmp r3, r0
	bge _080293A2
	b _08028E4E
_080293A2:
	add sp, #0x34
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080293B4: .4byte 0x00000221
_080293B8: .4byte gMapPixelSizeY
_080293BC: .4byte 0x0203DFB0
