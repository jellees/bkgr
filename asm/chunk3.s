
    .syntax unified

    .text

    .thumb
	.global sub_800E204
sub_800E204: @ 0x0800E204
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r7, r0, #0
	mov r8, r1
	mov sb, r2
	ldr r5, [r1]
	ldr r6, [r2]
	ldr r0, _0800E3CC
	mov ip, r0
	ldr r2, _0800E3D0
	mov sl, r2
	ldr r0, _0800E3D4
	adds r4, r0, #0
	adds r4, #8
	adds r2, r5, r7
	movs r3, #5
_0800E22A:
	ldrb r0, [r4]
	strb r0, [r2]
	ldrb r1, [r2]
	adds r2, #1
	ldrb r0, [r4, #5]
	strb r0, [r2]
	adds r1, r6, r1
	adds r6, r1, r0
	adds r2, #1
	adds r5, #2
	adds r4, #0x14
	subs r3, #1
	cmp r3, #0
	bge _0800E22A
	adds r1, r7, r5
	mov r3, ip
	ldrb r0, [r3, #6]
	strb r0, [r1]
	ldrb r1, [r1]
	adds r5, #1
	adds r2, r7, r5
	ldrb r0, [r3, #8]
	strb r0, [r2]
	adds r1, r6, r1
	adds r6, r1, r0
	adds r5, #1
	adds r1, r7, r5
	ldrb r0, [r3, #9]
	strb r0, [r1]
	ldrb r1, [r1]
	adds r5, #1
	adds r2, r7, r5
	ldrb r0, [r3, #0xa]
	strb r0, [r2]
	adds r1, r6, r1
	adds r6, r1, r0
	adds r5, #1
	adds r1, r7, r5
	ldrb r0, [r3, #0x14]
	strb r0, [r1]
	ldrb r1, [r1]
	adds r5, #1
	adds r2, r7, r5
	ldrb r0, [r3, #7]
	strb r0, [r2]
	adds r1, r6, r1
	adds r6, r1, r0
	adds r5, #1
	adds r1, r7, r5
	ldrb r0, [r3, #0x1b]
	strb r0, [r1]
	ldrb r0, [r1]
	adds r6, r6, r0
	adds r5, #1
	movs r3, #0
	mov r2, ip
	adds r2, #0xe
_0800E29C:
	adds r1, r7, r5
	adds r0, r3, r2
	ldrb r0, [r0]
	strb r0, [r1]
	ldrb r0, [r1]
	adds r6, r6, r0
	adds r5, #1
	adds r3, #1
	cmp r3, #3
	ble _0800E29C
	adds r1, r7, r5
	mov r2, ip
	ldrb r0, [r2, #0x12]
	strb r0, [r1]
	ldrb r1, [r1]
	adds r5, #1
	adds r2, r7, r5
	mov r3, ip
	ldrb r0, [r3, #0x15]
	strb r0, [r2]
	adds r1, r6, r1
	adds r6, r1, r0
	adds r5, #1
	adds r1, r7, r5
	ldrb r0, [r3, #0x13]
	strb r0, [r1]
	ldrb r1, [r1]
	adds r5, #1
	adds r2, r7, r5
	mov r3, sl
	ldrb r0, [r3]
	strb r0, [r2]
	adds r1, r6, r1
	adds r6, r1, r0
	adds r5, #1
	adds r1, r7, r5
	ldr r2, _0800E3D8
	ldrb r0, [r2]
	strb r0, [r1]
	ldrb r1, [r1]
	adds r5, #1
	adds r2, r7, r5
	ldr r3, _0800E3DC
	ldrb r0, [r3]
	strb r0, [r2]
	adds r1, r6, r1
	adds r6, r1, r0
	adds r5, #1
	adds r1, r7, r5
	ldr r2, _0800E3E0
	ldrb r0, [r2]
	strb r0, [r1]
	ldrb r1, [r1]
	adds r5, #1
	adds r2, r7, r5
	ldr r3, _0800E3E4
	ldrb r0, [r3]
	strb r0, [r2]
	adds r1, r6, r1
	adds r6, r1, r0
	adds r5, #1
	adds r1, r7, r5
	ldr r2, _0800E3E8
	ldrb r0, [r2]
	strb r0, [r1]
	ldrb r2, [r1]
	adds r5, #1
	adds r3, r7, r5
	ldr r0, _0800E3EC
	ldr r1, [r0]
	movs r4, #0xff
	lsls r4, r4, #0x10
	adds r0, r1, #0
	ands r0, r4
	asrs r0, r0, #0x10
	strb r0, [r3]
	adds r2, r6, r2
	adds r6, r2, r0
	adds r5, #1
	adds r0, r7, r5
	asrs r1, r1, #0x18
	strb r1, [r0]
	ldrb r2, [r0]
	adds r5, #1
	adds r3, r7, r5
	ldr r0, _0800E3F0
	ldr r1, [r0]
	adds r0, r1, #0
	ands r0, r4
	asrs r0, r0, #0x10
	strb r0, [r3]
	adds r2, r6, r2
	adds r6, r2, r0
	adds r5, #1
	adds r0, r7, r5
	asrs r1, r1, #0x18
	strb r1, [r0]
	ldrb r2, [r0]
	adds r5, #1
	adds r3, r7, r5
	ldr r0, _0800E3F4
	ldr r1, [r0]
	adds r0, r1, #0
	ands r0, r4
	asrs r0, r0, #0x10
	strb r0, [r3]
	adds r2, r6, r2
	adds r6, r2, r0
	adds r5, #1
	adds r0, r7, r5
	asrs r1, r1, #0x18
	strb r1, [r0]
	ldrb r1, [r0]
	adds r5, #1
	adds r2, r7, r5
	ldr r3, _0800E3F8
	ldrb r0, [r3]
	strb r0, [r2]
	adds r1, r6, r1
	adds r6, r1, r0
	adds r5, #1
	adds r1, r7, r5
	ldr r2, _0800E3FC
	ldrb r0, [r2]
	strb r0, [r1]
	ldrb r1, [r1]
	adds r5, #1
	adds r2, r7, r5
	ldr r3, _0800E400
	ldrb r0, [r3]
	strb r0, [r2]
	adds r1, r6, r1
	adds r6, r1, r0
	adds r5, #1
	adds r1, r7, r5
	ldr r2, _0800E404
	ldrb r0, [r2]
	strb r0, [r1]
	ldrb r0, [r1]
	adds r6, r6, r0
	adds r5, #1
	mov r3, r8
	str r5, [r3]
	mov r0, sb
	str r6, [r0]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800E3CC: .4byte gGameStatus
_0800E3D0: .4byte 0x0200107C
_0800E3D4: .4byte 0x02000FCC
_0800E3D8: .4byte 0x0200107E
_0800E3DC: .4byte 0x020010AA
_0800E3E0: .4byte 0x020010A8
_0800E3E4: .4byte 0x020010A9
_0800E3E8: .4byte 0x02001094
_0800E3EC: .4byte 0x02001098
_0800E3F0: .4byte 0x0200109C
_0800E3F4: .4byte 0x020010A0
_0800E3F8: .4byte gTextSpeed
_0800E3FC: .4byte gBgmMainVolume
_0800E400: .4byte gSfxMainVolume
_0800E404: .4byte 0x02000320

    .thumb
	.global sub_800E408
sub_800E408: @ 0x0800E408
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r7, r0, #0
	mov r8, r1
	mov sb, r2
	ldr r4, [r1]
	ldr r5, [r2]
	ldr r0, _0800E5E0
	mov ip, r0
	ldr r2, _0800E5E4
	mov sl, r2
	ldr r0, _0800E5E8
	adds r6, r0, #0
	adds r6, #8
	adds r2, r4, r7
	movs r3, #5
_0800E42E:
	ldrb r0, [r2]
	strb r0, [r6]
	ldrb r1, [r2]
	adds r2, #1
	ldrb r0, [r2]
	strb r0, [r6, #5]
	adds r1, r5, r1
	ldrb r0, [r2]
	adds r5, r1, r0
	adds r2, #1
	adds r4, #2
	adds r6, #0x14
	subs r3, #1
	cmp r3, #0
	bge _0800E42E
	adds r1, r7, r4
	ldrb r0, [r1]
	mov r2, ip
	strb r0, [r2, #6]
	ldrb r1, [r1]
	adds r4, #1
	adds r2, r7, r4
	ldrb r0, [r2]
	mov r3, ip
	strb r0, [r3, #8]
	adds r1, r5, r1
	ldrb r2, [r2]
	adds r5, r1, r2
	adds r4, #1
	adds r1, r7, r4
	ldrb r0, [r1]
	strb r0, [r3, #9]
	ldrb r1, [r1]
	adds r4, #1
	adds r2, r7, r4
	ldrb r0, [r2]
	strb r0, [r3, #0xa]
	adds r1, r5, r1
	ldrb r2, [r2]
	adds r5, r1, r2
	adds r4, #1
	adds r1, r7, r4
	ldrb r0, [r1]
	strb r0, [r3, #0x14]
	ldrb r1, [r1]
	adds r4, #1
	adds r2, r7, r4
	ldrb r0, [r2]
	strb r0, [r3, #7]
	adds r1, r5, r1
	ldrb r2, [r2]
	adds r5, r1, r2
	adds r4, #1
	adds r1, r7, r4
	ldrb r0, [r1]
	strb r0, [r3, #0x1b]
	ldrb r0, [r1]
	adds r5, r5, r0
	adds r4, #1
	movs r3, #0
	mov r6, ip
	adds r6, #0xe
_0800E4AA:
	adds r2, r3, r6
	adds r1, r7, r4
	ldrb r0, [r1]
	strb r0, [r2]
	ldrb r0, [r1]
	adds r5, r5, r0
	adds r4, #1
	adds r3, #1
	cmp r3, #3
	ble _0800E4AA
	adds r1, r7, r4
	ldrb r0, [r1]
	mov r2, ip
	strb r0, [r2, #0x12]
	ldrb r1, [r1]
	adds r4, #1
	adds r2, r7, r4
	ldrb r0, [r2]
	mov r3, ip
	strb r0, [r3, #0x15]
	adds r1, r5, r1
	ldrb r2, [r2]
	adds r5, r1, r2
	adds r4, #1
	adds r0, r7, r4
	ldrb r1, [r0]
	adds r4, #1
	adds r2, r7, r4
	ldrb r0, [r2]
	mov r3, sl
	strb r0, [r3]
	adds r1, r5, r1
	ldrb r2, [r2]
	adds r5, r1, r2
	adds r4, #1
	adds r1, r7, r4
	ldrb r0, [r1]
	ldr r2, _0800E5EC
	strb r0, [r2]
	ldrb r1, [r1]
	adds r4, #1
	adds r2, r7, r4
	ldrb r0, [r2]
	ldr r3, _0800E5F0
	strb r0, [r3]
	adds r1, r5, r1
	ldrb r2, [r2]
	adds r5, r1, r2
	adds r4, #1
	adds r1, r7, r4
	ldrb r0, [r1]
	ldr r2, _0800E5F4
	strb r0, [r2]
	ldrb r1, [r1]
	adds r4, #1
	adds r2, r7, r4
	ldrb r0, [r2]
	ldr r3, _0800E5F8
	strb r0, [r3]
	adds r1, r5, r1
	ldrb r2, [r2]
	adds r5, r1, r2
	adds r4, #1
	adds r1, r7, r4
	ldrb r0, [r1]
	ldr r2, _0800E5FC
	strb r0, [r2]
	ldrb r3, [r1]
	adds r4, #1
	adds r2, r7, r4
	ldrb r1, [r2]
	lsls r1, r1, #0x10
	ldrb r0, [r2, #1]
	lsls r0, r0, #0x18
	orrs r1, r0
	ldr r0, _0800E600
	str r1, [r0]
	adds r3, r5, r3
	ldrb r2, [r2]
	adds r5, r3, r2
	adds r4, #1
	adds r0, r7, r4
	ldrb r3, [r0]
	adds r4, #1
	adds r2, r7, r4
	ldrb r1, [r2]
	lsls r1, r1, #0x10
	ldrb r0, [r2, #1]
	lsls r0, r0, #0x18
	orrs r1, r0
	ldr r0, _0800E604
	str r1, [r0]
	adds r3, r5, r3
	ldrb r2, [r2]
	adds r5, r3, r2
	adds r4, #1
	adds r0, r7, r4
	ldrb r3, [r0]
	adds r4, #1
	adds r2, r7, r4
	ldrb r1, [r2]
	lsls r1, r1, #0x10
	ldrb r0, [r2, #1]
	lsls r0, r0, #0x18
	orrs r1, r0
	ldr r0, _0800E608
	str r1, [r0]
	adds r3, r5, r3
	ldrb r2, [r2]
	adds r5, r3, r2
	adds r4, #1
	adds r0, r7, r4
	ldrb r1, [r0]
	adds r4, #1
	adds r2, r7, r4
	ldrb r0, [r2]
	ldr r3, _0800E60C
	strb r0, [r3]
	adds r1, r5, r1
	ldrb r2, [r2]
	adds r5, r1, r2
	adds r4, #1
	adds r1, r7, r4
	ldrb r0, [r1]
	ldr r2, _0800E610
	strb r0, [r2]
	ldrb r1, [r1]
	adds r4, #1
	adds r2, r7, r4
	ldrb r0, [r2]
	ldr r3, _0800E614
	strb r0, [r3]
	adds r1, r5, r1
	ldrb r2, [r2]
	adds r5, r1, r2
	adds r4, #1
	adds r1, r7, r4
	ldrb r0, [r1]
	ldr r2, _0800E618
	strb r0, [r2]
	ldrb r0, [r1]
	adds r5, r5, r0
	adds r4, #1
	mov r3, r8
	str r4, [r3]
	mov r0, sb
	str r5, [r0]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800E5E0: .4byte gGameStatus
_0800E5E4: .4byte 0x0200107C
_0800E5E8: .4byte 0x02000FCC
_0800E5EC: .4byte 0x0200107E
_0800E5F0: .4byte 0x020010AA
_0800E5F4: .4byte 0x020010A8
_0800E5F8: .4byte 0x020010A9
_0800E5FC: .4byte 0x02001094
_0800E600: .4byte 0x02001098
_0800E604: .4byte 0x0200109C
_0800E608: .4byte 0x020010A0
_0800E60C: .4byte gTextSpeed
_0800E610: .4byte gBgmMainVolume
_0800E614: .4byte gSfxMainVolume
_0800E618: .4byte 0x02000320

    .thumb
	.global sub_800E61C
sub_800E61C: @ 0x0800E61C
	push {r4, lr}
	ldr r2, _0800E6C4
	ldrb r0, [r2]
	cmp r0, #0
	beq _0800E6BC
	ldr r0, _0800E6C8
	ldrb r1, [r0]
	cmp r1, #0
	beq _0800E6BC
	movs r4, #0
	adds r0, r2, #0
	adds r0, #0x50
	ldrb r0, [r0]
	cmp r0, #0
	beq _0800E64C
	movs r4, #1
	ldr r0, _0800E6CC
	ldrb r0, [r0]
	cmp r0, #0
	bne _0800E64C
	cmp r1, #1
	bne _0800E64C
	bl sub_800E6D0
_0800E64C:
	ldr r0, _0800E6C4
	adds r0, #0x51
	ldrb r0, [r0]
	cmp r0, #0
	beq _0800E66C
	movs r4, #1
	ldr r0, _0800E6CC
	ldrb r0, [r0]
	cmp r0, #0
	bne _0800E66C
	ldr r0, _0800E6C8
	ldrb r0, [r0]
	cmp r0, #2
	bne _0800E66C
	bl sub_800E6D0
_0800E66C:
	ldr r0, _0800E6C4
	adds r0, #0x52
	ldrb r0, [r0]
	cmp r0, #0
	beq _0800E68C
	movs r4, #1
	ldr r0, _0800E6CC
	ldrb r0, [r0]
	cmp r0, #0
	bne _0800E68C
	ldr r0, _0800E6C8
	ldrb r0, [r0]
	cmp r0, #3
	bne _0800E68C
	bl sub_800E6D0
_0800E68C:
	ldr r0, _0800E6C4
	adds r0, #0x53
	ldrb r0, [r0]
	cmp r0, #0
	beq _0800E6AC
	movs r4, #1
	ldr r0, _0800E6CC
	ldrb r0, [r0]
	cmp r0, #0
	bne _0800E6AC
	ldr r0, _0800E6C8
	ldrb r0, [r0]
	cmp r0, #4
	bne _0800E6AC
	bl sub_800E6D0
_0800E6AC:
	cmp r4, #0
	bne _0800E6BC
	ldr r0, _0800E6CC
	ldrb r0, [r0]
	cmp r0, #0
	beq _0800E6BC
	bl sub_800E7A0
_0800E6BC:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800E6C4: .4byte 0x030028FC
_0800E6C8: .4byte gTransformation
_0800E6CC: .4byte byte_200112A

    .thumb
sub_800E6D0: @ 0x0800E6D0
	push {r4, r5, r6, lr}
	sub sp, #0x10
	ldr r0, _0800E754
	movs r2, #1
	strb r2, [r0]
	ldr r1, _0800E758
	movs r0, #0x3c
	strh r0, [r1]
	ldr r0, _0800E75C
	strb r2, [r0]
	ldr r0, _0800E760
	movs r1, #0xa
	strh r1, [r0]
	ldr r0, _0800E764
	strh r1, [r0]
	ldr r0, _0800E768
	strh r1, [r0]
	ldr r0, _0800E76C
	strh r1, [r0]
	ldr r0, _0800E770
	ldr r1, _0800E774
	movs r2, #0
	str r2, [sp]
	ldr r3, _0800E778
	ldrh r2, [r3, #6]
	str r2, [sp, #4]
	ldrb r2, [r3, #8]
	str r2, [sp, #8]
	movs r2, #2
	str r2, [sp, #0xc]
	movs r2, #0
	movs r3, #0
	bl SetSprite
	ldr r5, _0800E77C
	movs r0, #0x43
	movs r1, #0x45
	bl RandomMinMax
	strb r0, [r5]
	ldr r6, _0800E780
	ldr r0, _0800E784
	ldrb r0, [r0]
	cmp r0, #0
	beq _0800E790
	ldr r4, _0800E788
	ldrb r2, [r5]
	lsls r2, r2, #3
	adds r0, r2, r4
	ldrh r0, [r0]
	ldr r1, _0800E78C
	ldrb r1, [r1]
	adds r1, r1, r2
	adds r3, r4, #2
	adds r1, r1, r3
	ldrb r1, [r1]
	adds r4, #4
	adds r2, r2, r4
	ldr r2, [r2]
	movs r3, #0x80
	lsls r3, r3, #9
	adds r2, r2, r3
	bl audio_new_fx
	b _0800E794
	.align 2, 0
_0800E754: .4byte byte_200112A
_0800E758: .4byte 0x0200112C
_0800E75C: .4byte 0x020010AF
_0800E760: .4byte 0x0200112E
_0800E764: .4byte 0x02001132
_0800E768: .4byte 0x02001130
_0800E76C: .4byte 0x02001134
_0800E770: .4byte 0x02000FAC
_0800E774: .4byte 0x000004CB
_0800E778: .4byte gPlayerSprite
_0800E77C: .4byte 0x0200113C
_0800E780: .4byte 0x02001138
_0800E784: .4byte gCanPlaySfx
_0800E788: .4byte 0x080CE440
_0800E78C: .4byte gSfxVolume
_0800E790:
	movs r0, #1
	rsbs r0, r0, #0
_0800E794:
	str r0, [r6]
	add sp, #0x10
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

    .thumb
	.global sub_800E7A0
sub_800E7A0: @ 0x0800E7A0
	ldr r0, _0800E7AC
	movs r1, #0
	strb r1, [r0]
	ldr r0, _0800E7B0
	strb r1, [r0]
	bx lr
	.align 2, 0
_0800E7AC: .4byte byte_200112A
_0800E7B0: .4byte 0x020010AF
