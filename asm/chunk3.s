
    .syntax unified

    .text

    .thumb
	.global sub_800B958
sub_800B958: @ 0x0800B958
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r7, r1, #0
	ldr r0, _0800B9A0
	movs r1, #0
	strb r1, [r0]
	ldr r0, _0800B9A4
	strb r1, [r0]
	ldr r0, _0800B9A8
	movs r1, #0
	ldrsh r0, [r0, r1]
	lsls r0, r0, #0x10
	adds r5, r7, r0
	asrs r4, r5, #0x10
	adds r1, r4, #0
	adds r1, #0x50
	ldr r0, _0800B9AC
	ldrh r0, [r0]
	cmp r1, r0
	bge _0800B988
	adds r0, r4, #0
	subs r0, #0x50
	cmp r0, #0
	bge _0800B98A
_0800B988:
	adds r5, r7, #0
_0800B98A:
	subs r0, r2, r6
	movs r4, #1
	cmp r0, #0
	bge _0800B994
	movs r4, #2
_0800B994:
	subs r0, r3, r5
	cmp r0, #0
	bge _0800B9B0
	movs r0, #8
	b _0800B9B2
	.align 2, 0
_0800B9A0: .4byte 0x02001118
_0800B9A4: .4byte 0x02001119
_0800B9A8: .4byte 0x02002EC2
_0800B9AC: .4byte gMapPixelSizeY
_0800B9B0:
	movs r0, #4
_0800B9B2:
	orrs r4, r0
	movs r0, #1
	ands r0, r4
	cmp r0, #0
	beq _0800B9C4
	adds r0, r6, #0
	bl UpdateMapLeft
	b _0800B9D2
_0800B9C4:
	movs r0, #2
	ands r0, r4
	cmp r0, #0
	beq _0800B9D2
	adds r0, r6, #0
	bl UpdateMapRight
_0800B9D2:
	movs r0, #4
	ands r0, r4
	cmp r0, #0
	beq _0800B9E2
	adds r0, r5, #0
	bl UpdateMapUp
	b _0800B9F0
_0800B9E2:
	movs r0, #8
	ands r4, r0
	cmp r4, #0
	beq _0800B9F0
	adds r0, r5, #0
	bl UpdateMapDown
_0800B9F0:
	ldr r0, [sp, #0x14]
	cmp r0, #0
	beq _0800BAE2
	ldr r3, _0800BA40
	movs r2, #2
	ldrsh r1, [r3, r2]
	ldr r0, _0800BA44
	movs r4, #0
	ldrsh r0, [r0, r4]
	subs r5, r1, r0
	ldr r4, _0800BA48
	ldrh r0, [r4]
	lsls r0, r0, #0x10
	ldr r1, [r3, #4]
	ldr r2, [r3, #8]
	adds r1, r1, r2
	subs r0, r0, r1
	asrs r0, r0, #0x10
	ldr r2, _0800BA4C
	movs r6, #0
	ldrsh r1, [r2, r6]
	subs r1, r0, r1
	ldr r0, _0800BA50
	strh r5, [r0, #6]
	strb r1, [r0, #8]
	adds r1, #0x14
	adds r6, r2, #0
	adds r2, r0, #0
	cmp r1, #0xf7
	bhi _0800BA3C
	movs r0, #0x14
	rsbs r0, r0, #0
	cmp r5, r0
	blt _0800BA3C
	movs r0, #0x82
	lsls r0, r0, #1
	cmp r5, r0
	ble _0800BA54
_0800BA3C:
	movs r0, #1
	b _0800BA56
	.align 2, 0
_0800BA40: .4byte gPlayerPos
_0800BA44: .4byte gCameraPixelX
_0800BA48: .4byte gMapPixelSizeY
_0800BA4C: .4byte gCameraPixelY
_0800BA50: .4byte gPlayerSprite
_0800BA54:
	movs r0, #0
_0800BA56:
	strb r0, [r2, #0x13]
	ldrh r5, [r2, #6]
	ldrh r1, [r4]
	lsls r1, r1, #0x10
	ldr r0, _0800BA9C
	ldr r2, [r0, #4]
	ldr r0, [r0, #8]
	adds r0, r2, r0
	subs r1, r1, r0
	asrs r1, r1, #0x10
	movs r4, #0
	ldrsh r0, [r6, r4]
	subs r1, r1, r0
	ldr r0, [r3, #4]
	subs r0, r0, r2
	asrs r0, r0, #0x10
	subs r1, r1, r0
	ldr r0, _0800BAA0
	strh r5, [r0, #6]
	strb r1, [r0, #8]
	adds r1, #0x14
	adds r4, r0, #0
	cmp r1, #0xf7
	bhi _0800BA96
	movs r0, #0x14
	rsbs r0, r0, #0
	cmp r5, r0
	blt _0800BA96
	movs r0, #0x82
	lsls r0, r0, #1
	cmp r5, r0
	ble _0800BAA4
_0800BA96:
	movs r0, #1
	b _0800BAE0
	.align 2, 0
_0800BA9C: .4byte gPlayerShadowPos
_0800BAA0: .4byte gPlayerShadowSprite
_0800BAA4:
	ldr r1, _0800BAE8
	ldr r2, _0800BAEC
	ldrh r0, [r2]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r3, [r0]
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r3
	cmp r0, #0
	bne _0800BACC
	movs r0, #0x80
	ands r0, r3
	cmp r0, #0
	bne _0800BACC
	movs r0, #0x80
	lsls r0, r0, #4
	ands r0, r3
	cmp r0, #0
	beq _0800BADE
_0800BACC:
	ldrh r0, [r2]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0800BAE2
_0800BADE:
	movs r0, #0
_0800BAE0:
	strb r0, [r4, #0x13]
_0800BAE2:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800BAE8: .4byte gPlayerStateSettings
_0800BAEC: .4byte gPlayerState

    .thumb
    .global sub_800BAF0
sub_800BAF0: @ 0x0800BAF0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x28
	adds r7, r0, #0
	mov sb, r1
	ldr r0, _0800BBA8
	ldrb r0, [r0]
	mov sl, r0
	cmp r0, #0
	beq _0800BB0C
	b _0800BCBC
_0800BB0C:
	ldr r0, _0800BBAC
	ldrh r0, [r0]
	cmp r0, #0x23
	bne _0800BB16
	b _0800BCBC
_0800BB16:
	ldr r1, _0800BBB0
	movs r2, #0
	ldrsh r0, [r1, r2]
	str r0, [sp]
	ldr r2, _0800BBB4
	movs r3, #0
	ldrsh r0, [r2, r3]
	str r0, [sp, #4]
	movs r4, #0
	ldrsh r0, [r1, r4]
	adds r0, #0xf0
	str r0, [sp, #8]
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r0, #0xa0
	add r2, sp, #8
	mov r8, r2
	str r0, [r2, #4]
	ldr r1, _0800BBB8
	ldr r0, _0800BBBC
	ldr r5, [r0]
	asrs r5, r5, #1
	ldr r2, [r1]
	subs r0, r2, r5
	asrs r0, r0, #0x10
	str r0, [sp, #0x10]
	ldr r6, _0800BBC0
	ldrh r4, [r6]
	ldr r3, [r1, #4]
	ldr r0, [r1, #8]
	adds r3, r3, r0
	ldr r0, _0800BBC4
	ldr r0, [r0]
	adds r0, r3, r0
	ldr r1, _0800BBC8
	ldr r1, [r1]
	asrs r1, r1, #1
	adds r0, r0, r1
	asrs r0, r0, #0x10
	subs r4, r4, r0
	add r0, sp, #0x10
	str r4, [r0, #4]
	adds r2, r2, r5
	asrs r2, r2, #0x10
	str r2, [sp, #0x18]
	ldrh r2, [r6]
	subs r3, r3, r1
	asrs r3, r3, #0x10
	subs r2, r2, r3
	add r1, sp, #0x18
	str r2, [r1, #4]
	ldr r3, _0800BBCC
	movs r4, #2
	ldrsh r2, [r3, r4]
	str r2, [sp, #0x20]
	ldrh r4, [r6]
	ldr r2, [r3, #4]
	ldr r3, [r3, #8]
	adds r2, r2, r3
	asrs r2, r2, #0x10
	subs r4, r4, r2
	add r5, sp, #0x20
	str r4, [r5, #4]
	mov r2, sp
	mov r3, r8
	bl sub_8003974
	cmp r0, #0
	bne _0800BBD4
	ldr r1, _0800BBD0
	movs r0, #1
	strb r0, [r1, #0x13]
	b _0800BBDA
	.align 2, 0
_0800BBA8: .4byte 0x0203F9A2
_0800BBAC: .4byte gPlayerState
_0800BBB0: .4byte gCameraPixelX
_0800BBB4: .4byte gCameraPixelY
_0800BBB8: .4byte gPlayerPos
_0800BBBC: .4byte 0x03003300
_0800BBC0: .4byte gMapPixelSizeY
_0800BBC4: .4byte 0x03003308
_0800BBC8: .4byte 0x03003304
_0800BBCC: .4byte gPlayerShadowPos
_0800BBD0: .4byte gPlayerSprite
_0800BBD4:
	ldr r0, _0800BC5C
	mov r1, sl
	strb r1, [r0, #0x13]
_0800BBDA:
	ldr r0, _0800BC60
	ldrb r0, [r0]
	cmp r0, #0
	beq _0800BC00
	ldr r4, _0800BC64
	ldr r1, [r7]
	adds r0, r4, #0
	bl sub_80033DC
	ldr r1, [r7]
	ldrb r0, [r4, #4]
	lsls r0, r0, #0x1e
	str r0, [r1]
	adds r1, #0xc
	str r1, [r7]
	mov r2, sb
	ldr r0, [r2]
	adds r0, #1
	str r0, [r2]
_0800BC00:
	ldr r4, _0800BC5C
	ldr r1, [r7]
	adds r0, r4, #0
	bl sub_80033DC
	ldr r2, [r7]
	ldrb r1, [r4, #4]
	lsls r1, r1, #0x1e
	ldr r0, _0800BC68
	ldr r0, [r0, #8]
	lsrs r0, r0, #4
	orrs r1, r0
	str r1, [r2]
	adds r2, #0xc
	str r2, [r7]
	mov r3, sb
	ldr r0, [r3]
	adds r0, #1
	str r0, [r3]
	ldr r6, _0800BC6C
	ldr r4, _0800BC70
	ldrh r0, [r4]
	lsls r0, r0, #1
	adds r0, r0, r6
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0800BC52
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0800BC52
	adds r0, r5, #0
	mov r1, sp
	mov r2, r8
	bl sub_800397C
	cmp r0, #0
	bne _0800BC78
_0800BC52:
	ldr r1, _0800BC74
	movs r0, #1
	strb r0, [r1, #0x13]
	adds r4, r1, #0
	b _0800BC92
	.align 2, 0
_0800BC5C: .4byte gPlayerSprite
_0800BC60: .4byte 0x020010AF
_0800BC64: .4byte 0x02000FAC
_0800BC68: .4byte gPlayerPos
_0800BC6C: .4byte gPlayerStateSettings
_0800BC70: .4byte gPlayerState
_0800BC74: .4byte gPlayerShadowSprite
_0800BC78:
	ldrh r0, [r4]
	lsls r0, r0, #1
	adds r0, r0, r6
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #4
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r4, _0800BCCC
	cmp r0, #0
	bne _0800BC92
	strb r0, [r4, #0x13]
_0800BC92:
	ldr r1, [r7]
	adds r0, r4, #0
	bl sub_80033DC
	ldr r3, [r7]
	ldrb r2, [r4, #4]
	lsls r2, r2, #0x1e
	ldr r0, _0800BCD0
	ldr r0, [r0, #8]
	lsrs r0, r0, #4
	movs r1, #0x80
	lsls r1, r1, #0x15
	orrs r0, r1
	orrs r2, r0
	str r2, [r3]
	adds r3, #0xc
	str r3, [r7]
	mov r4, sb
	ldr r0, [r4]
	adds r0, #1
	str r0, [r4]
_0800BCBC:
	add sp, #0x28
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800BCCC: .4byte gPlayerShadowSprite
_0800BCD0: .4byte gPlayerShadowPos

    .thumb
	.global sub_0800BCD4
sub_0800BCD4: @ 0x0800BCD4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	adds r6, r0, #0
	ldrb r0, [r6, #5]
	movs r1, #0x80
	ands r1, r0
	lsls r1, r1, #0x18
	lsrs r7, r1, #0x18
	movs r1, #0x7f
	ands r1, r0
	subs r4, r1, #1
	cmp r4, #0
	bge _0800BCF8
	.2byte 0xEE00, 0xEE00
_0800BCF8:
	ldr r5, _0800BD44
	ldrh r0, [r5]
	mov sb, r0
	ldr r0, _0800BD48
	ldrh r0, [r0]
	cmp r0, #6
	bne _0800BD60
	bl audio_halt_all_fx
	movs r1, #1
	mov r8, r1
	ldr r0, _0800BD4C
	bl sub_80270AC
	ldr r3, _0800BD50
	ldr r1, _0800BD54
	ldrh r0, [r5]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r3]
	ldr r2, _0800BD58
	ldr r1, _0800BD5C
	ldrh r0, [r5]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r2]
	ldrb r0, [r3]
	ldrb r1, [r2]
	movs r2, #1
	movs r3, #0
	bl SetupRoom
	bl sub_803FE78
	b _0800BE20
	.align 2, 0
_0800BD44: .4byte gLoadedRoomLevel
_0800BD48: .4byte gLoadedRoomIndex
_0800BD4C: .4byte 0x00000FFF
_0800BD50: .4byte 0x020010A8
_0800BD54: .4byte 0x080CEBF8
_0800BD58: .4byte 0x020010A9
_0800BD5C: .4byte 0x080CEBE0
_0800BD60:
	ldrb r1, [r6, #4]
	adds r0, r4, #0
	bl sub_0800C63C
	cmp r0, #1
	bne _0800BD6E
	b _0800BF7E
_0800BD6E:
	cmp r0, #1
	ble _0800BD7A
	cmp r0, #2
	bne _0800BD7A
	movs r0, #0
	b _0800BF80
_0800BD7A:
	movs r0, #1
	bl sub_805E1DC
	bl audio_halt_all_fx
	ldr r2, _0800BDDC
	ldr r1, _0800BDE0
	lsls r0, r4, #3
	adds r0, r0, r1
	ldrh r1, [r2]
	ldrh r0, [r0, #6]
	eors r1, r0
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r0, r0, #0x1f
	mov r8, r0
	ldr r0, _0800BDE4
	mov r1, r8
	bl sub_80270AC
	ldrb r1, [r6, #5]
	movs r0, #0x7f
	ands r0, r1
	subs r4, r0, #1
	cmp r7, #0
	bne _0800BE14
	ldr r0, _0800BDE8
	ldr r3, _0800BDEC
	ldrh r1, [r3]
	lsls r2, r1, #2
	adds r0, r2, r0
	ldr r0, [r0]
	cmp r0, r4
	bne _0800BDCA
	ldr r0, _0800BDF0
	adds r0, r2, r0
	ldr r0, [r0]
	ldrb r1, [r6, #4]
	cmp r0, r1
	beq _0800BE14
_0800BDCA:
	cmp r4, #6
	beq _0800BDFC
	ldr r0, _0800BDF4
	strb r4, [r0]
	ldr r1, _0800BDF8
	ldrb r0, [r6, #4]
	strb r0, [r1]
	b _0800BE14
	.align 2, 0
_0800BDDC: .4byte gLoadedRoomBgm
_0800BDE0: .4byte 0x080CF4EC
_0800BDE4: .4byte 0x00000FFF
_0800BDE8: .4byte 0x080CEE5C
_0800BDEC: .4byte gLoadedRoomLevel
_0800BDF0: .4byte 0x080CEE74
_0800BDF4: .4byte 0x020010A8
_0800BDF8: .4byte 0x020010A9
_0800BDFC:
	ldr r1, _0800BE84
	ldr r0, _0800BE88
	adds r0, r2, r0
	ldr r0, [r0]
	strb r0, [r1]
	ldr r2, _0800BE8C
	ldr r1, _0800BE90
	ldrh r0, [r3]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r2]
_0800BE14:
	ldrb r1, [r6, #4]
	adds r0, r4, #0
	movs r2, #1
	movs r3, #0
	bl SetupRoom
_0800BE20:
	ldr r0, _0800BE94
	ldrh r0, [r0]
	bl sub_8025E44
	ldr r0, _0800BE98
	ldrh r0, [r0]
	ldr r1, _0800BE9C
	ldrh r1, [r1]
	ldr r2, _0800BEA0
	ldrh r2, [r2]
	ldr r3, _0800BEA4
	ldrh r3, [r3]
	movs r4, #0x15
	str r4, [sp]
	movs r4, #0x20
	str r4, [sp, #4]
	bl sub_8013A10
	ldr r0, _0800BEA8
	ldr r0, [r0]
	ldr r2, _0800BEAC
	ldr r1, _0800BEB0
	ldrb r1, [r1, #0xe]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl sub_800389C
	ldr r0, _0800BEB4
	bl sub_8018BB0
	bl audio_halt_all_fx
	bl sub_801A2E4
	bl EnableBGAlphaBlending
	cmp r7, #0
	beq _0800BEBC
	ldr r0, _0800BEB8
	ldrb r0, [r0]
	cmp r0, #0
	bne _0800BE7C
	movs r0, #1
	bl sub_800EB58
_0800BE7C:
	bl sub_800ECB4
	b _0800BECA
	.align 2, 0
_0800BE84: .4byte 0x020010A8
_0800BE88: .4byte 0x080CEBF8
_0800BE8C: .4byte 0x020010A9
_0800BE90: .4byte 0x080CEBE0
_0800BE94: .4byte gLoadedRoomLevel
_0800BE98: .4byte 0x0200145C
_0800BE9C: .4byte 0x0200145E
_0800BEA0: .4byte 0x02001460
_0800BEA4: .4byte 0x02001462
_0800BEA8: .4byte dword_2000FC8
_0800BEAC: .4byte 0x080CC844
_0800BEB0: .4byte gRoomHeader
_0800BEB4: .4byte gPlayerSprite
_0800BEB8: .4byte 0x020010B1
_0800BEBC:
	ldr r1, _0800BF28
	ldrb r0, [r1]
	cmp r0, #0
	beq _0800BECA
	strb r7, [r1]
	bl sub_80275A4
_0800BECA:
	bl init_efx
	bl sub_800DEE4
	bl sub_0800ED80
	ldrb r0, [r6, #4]
	bl sub_800EF6C
	ldr r0, _0800BF2C
	mov r1, r8
	movs r2, #1
	bl sub_8026E48
	ldr r4, _0800BF30
	ldr r0, _0800BF34
	ldrh r2, [r0]
	strh r2, [r4, #6]
	ldr r0, _0800BF38
	ldrh r1, [r0]
	strb r1, [r4, #8]
	ldr r0, _0800BF3C
	strh r2, [r0, #6]
	strb r1, [r0, #8]
	bl sub_8041E88
	ldr r0, _0800BF40
	ldrh r0, [r0]
	cmp sb, r0
	beq _0800BF0A
	bl sub_8040178
_0800BF0A:
	ldr r0, _0800BF44
	ldrb r0, [r0]
	cmp r0, #0
	beq _0800BF58
	ldr r0, _0800BF48
	ldrb r0, [r0]
	bl sub_8016C78
	ldr r2, _0800BF4C
	ldr r0, _0800BF50
	ldrh r1, [r0]
	ldr r0, _0800BF54
	ands r0, r1
	strh r0, [r2]
	b _0800BF5E
	.align 2, 0
_0800BF28: .4byte 0x020010B1
_0800BF2C: .4byte 0x00000FFF
_0800BF30: .4byte gPlayerSprite
_0800BF34: .4byte 0x02001464
_0800BF38: .4byte 0x02001466
_0800BF3C: .4byte gPlayerShadowSprite
_0800BF40: .4byte gLoadedRoomLevel
_0800BF44: .4byte 0x020010A4
_0800BF48: .4byte 0x020010A5
_0800BF4C: .4byte word_20010AC
_0800BF50: .4byte gKeysPressed
_0800BF54: .4byte 0x000003FF
_0800BF58:
	ldrb r0, [r4, #0xa]
	bl sub_8016C78
_0800BF5E:
	bl sub_8039210
	ldr r1, _0800BF90
	ldrb r0, [r1]
	cmp r0, #0
	beq _0800BF74
	movs r0, #0
	strb r0, [r1]
	ldr r1, _0800BF94
	movs r0, #0
	str r0, [r1]
_0800BF74:
	ldr r0, _0800BF98
	movs r1, #0
	strb r1, [r0]
	ldr r0, _0800BF9C
	strb r1, [r0, #0x13]
_0800BF7E:
	movs r0, #1
_0800BF80:
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0800BF90: .4byte gInInteractionArea
_0800BF94: .4byte 0x0203DFE0
_0800BF98: .4byte 0x030028FC
_0800BF9C: .4byte gPlayerSprite

    .thumb
	.global sub_800BFA0
sub_800BFA0: @ 0x0800BFA0
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	adds r4, r0, #0
	adds r6, r1, #0
	adds r7, r2, #0
	ldr r5, _0800C004
	ldrh r0, [r5]
	mov sb, r0
	movs r0, #1
	bl sub_805E1DC
	bl audio_halt_all_fx
	ldr r0, _0800C008
	ldrh r0, [r0]
	cmp r0, #6
	bne _0800C020
	movs r0, #1
	mov r8, r0
	ldr r0, _0800C00C
	movs r1, #1
	bl sub_80270AC
	ldr r3, _0800C010
	ldr r1, _0800C014
	ldrh r0, [r5]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r3]
	ldr r2, _0800C018
	ldr r1, _0800C01C
	ldrh r0, [r5]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r2]
	ldrb r0, [r3]
	ldrb r1, [r2]
	movs r2, #1
	movs r3, #0
	bl SetupRoom
	bl sub_803FE78
	b _0800C0A8
	.align 2, 0
_0800C004: .4byte gLoadedRoomLevel
_0800C008: .4byte gLoadedRoomIndex
_0800C00C: .4byte 0x00000FFF
_0800C010: .4byte 0x020010A8
_0800C014: .4byte 0x080CEBF8
_0800C018: .4byte 0x020010A9
_0800C01C: .4byte 0x080CEBE0
_0800C020:
	ldr r2, _0800C068
	ldr r1, _0800C06C
	lsls r0, r4, #3
	adds r0, r0, r1
	ldrh r1, [r2]
	ldrh r0, [r0, #6]
	eors r1, r0
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r0, r0, #0x1f
	mov r8, r0
	ldr r0, _0800C070
	mov r1, r8
	bl sub_80270AC
	ldr r0, _0800C074
	ldrh r1, [r5]
	lsls r2, r1, #2
	adds r0, r2, r0
	ldr r0, [r0]
	cmp r0, r4
	bne _0800C056
	ldr r0, _0800C078
	adds r0, r2, r0
	ldr r0, [r0]
	cmp r0, r6
	beq _0800C09C
_0800C056:
	cmp r7, #0
	beq _0800C09C
	cmp r4, #6
	beq _0800C084
	ldr r0, _0800C07C
	strb r4, [r0]
	ldr r0, _0800C080
	strb r6, [r0]
	b _0800C09C
	.align 2, 0
_0800C068: .4byte gLoadedRoomBgm
_0800C06C: .4byte 0x080CF4EC
_0800C070: .4byte 0x00000FFF
_0800C074: .4byte 0x080CEE5C
_0800C078: .4byte 0x080CEE74
_0800C07C: .4byte 0x020010A8
_0800C080: .4byte 0x020010A9
_0800C084:
	ldr r1, _0800C154
	ldr r0, _0800C158
	adds r0, r2, r0
	ldr r0, [r0]
	strb r0, [r1]
	ldr r2, _0800C15C
	ldr r1, _0800C160
	ldrh r0, [r5]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r2]
_0800C09C:
	adds r0, r4, #0
	adds r1, r6, #0
	movs r2, #1
	movs r3, #0
	bl SetupRoom
_0800C0A8:
	ldr r5, _0800C164
	ldrh r0, [r5]
	bl sub_8025E44
	ldr r0, _0800C168
	ldrh r0, [r0]
	ldr r1, _0800C16C
	ldrh r1, [r1]
	ldr r2, _0800C170
	ldrh r2, [r2]
	ldr r3, _0800C174
	ldrh r3, [r3]
	movs r4, #0x15
	str r4, [sp]
	movs r4, #0x20
	str r4, [sp, #4]
	bl sub_8013A10
	ldr r0, _0800C178
	ldr r0, [r0]
	ldr r2, _0800C17C
	ldr r1, _0800C180
	ldrb r1, [r1, #0xe]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl sub_800389C
	ldr r4, _0800C184
	adds r0, r4, #0
	bl sub_8018BB0
	bl audio_halt_all_fx
	bl sub_801A2E4
	bl EnableBGAlphaBlending
	bl sub_800EB14
	bl init_efx
	bl sub_800DEE4
	bl sub_0800ED80
	adds r0, r6, #0
	bl sub_800EF6C
	ldr r0, _0800C188
	mov r1, r8
	movs r2, #1
	bl sub_8026E48
	ldr r0, _0800C18C
	ldrh r2, [r0]
	strh r2, [r4, #6]
	ldr r0, _0800C190
	ldrh r1, [r0]
	strb r1, [r4, #8]
	ldr r0, _0800C194
	strh r2, [r0, #6]
	strb r1, [r0, #8]
	bl sub_8041E88
	ldrh r5, [r5]
	cmp sb, r5
	beq _0800C134
	bl sub_8040178
_0800C134:
	ldr r0, _0800C198
	ldrb r0, [r0]
	cmp r0, #0
	beq _0800C1AC
	ldr r0, _0800C19C
	ldrb r0, [r0]
	bl sub_8016C78
	ldr r2, _0800C1A0
	ldr r0, _0800C1A4
	ldrh r1, [r0]
	ldr r0, _0800C1A8
	ands r0, r1
	strh r0, [r2]
	b _0800C1B2
	.align 2, 0
_0800C154: .4byte 0x020010A8
_0800C158: .4byte 0x080CEBF8
_0800C15C: .4byte 0x020010A9
_0800C160: .4byte 0x080CEBE0
_0800C164: .4byte gLoadedRoomLevel
_0800C168: .4byte 0x0200145C
_0800C16C: .4byte 0x0200145E
_0800C170: .4byte 0x02001460
_0800C174: .4byte 0x02001462
_0800C178: .4byte dword_2000FC8
_0800C17C: .4byte 0x080CC844
_0800C180: .4byte gRoomHeader
_0800C184: .4byte gPlayerSprite
_0800C188: .4byte 0x00000FFF
_0800C18C: .4byte 0x02001464
_0800C190: .4byte 0x02001466
_0800C194: .4byte gPlayerShadowSprite
_0800C198: .4byte 0x020010A4
_0800C19C: .4byte 0x020010A5
_0800C1A0: .4byte word_20010AC
_0800C1A4: .4byte gKeysPressed
_0800C1A8: .4byte 0x000003FF
_0800C1AC:
	ldrb r0, [r4, #0xa]
	bl sub_8016C78
_0800C1B2:
	bl sub_8039210
	ldr r1, _0800C1DC
	ldrb r0, [r1]
	cmp r0, #0
	beq _0800C1C8
	movs r0, #0
	strb r0, [r1]
	ldr r1, _0800C1E0
	movs r0, #0
	str r0, [r1]
_0800C1C8:
	ldr r1, _0800C1E4
	movs r0, #0
	strb r0, [r1, #0x13]
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800C1DC: .4byte gInInteractionArea
_0800C1E0: .4byte 0x0203DFE0
_0800C1E4: .4byte gPlayerSprite

    .thumb
	.global sub_800C1E8
sub_800C1E8: @ 0x0800C1E8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	adds r4, r0, #0
	adds r5, r1, #0
	adds r6, r2, #0
	adds r7, r3, #0
	ldr r0, _0800C32C
	movs r1, #0
	mov sl, r1
	strb r1, [r0]
	ldr r0, _0800C330
	mov r8, r0
	ldrh r1, [r0]
	str r1, [sp, #8]
	ldr r0, [sp, #0x30]
	cmp r0, #2
	beq _0800C218
	movs r0, #1
	bl sub_805E1DC
_0800C218:
	bl audio_halt_all_fx
	ldr r2, _0800C334
	ldr r1, _0800C338
	lsls r0, r4, #3
	adds r0, r0, r1
	ldrh r1, [r2]
	ldrh r0, [r0, #6]
	eors r1, r0
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r0, r0, #0x1f
	mov sb, r0
	ldr r0, _0800C33C
	mov r1, sb
	bl sub_80270AC
	ldr r1, [sp, #0x30]
	str r1, [sp]
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r6, #0
	adds r3, r7, #0
	bl sub_08013378
	mov r1, r8
	ldrh r0, [r1]
	bl sub_8025E44
	ldr r0, _0800C340
	ldrh r0, [r0]
	ldr r1, _0800C344
	ldrh r1, [r1]
	ldr r2, _0800C348
	ldrh r2, [r2]
	ldr r3, _0800C34C
	ldrh r3, [r3]
	movs r4, #0x15
	str r4, [sp]
	movs r4, #0x20
	str r4, [sp, #4]
	bl sub_8013A10
	ldr r0, _0800C350
	ldr r0, [r0]
	ldr r2, _0800C354
	ldr r1, _0800C358
	ldrb r1, [r1, #0xe]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl sub_800389C
	bl sub_801A2E4
	bl EnableBGAlphaBlending
	bl sub_800EB14
	bl init_efx
	bl sub_800DEE4
	ldr r0, _0800C35C
	ldrh r0, [r0]
	cmp r0, #0x1e
	beq _0800C2A2
	cmp r0, #9
	bne _0800C2B6
_0800C2A2:
	ldr r0, _0800C360
	mov r1, sl
	strb r1, [r0]
	ldr r0, _0800C364
	ldrb r1, [r0]
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r0, r0, #0x1f
	bl sub_8017B34
_0800C2B6:
	ldr r0, _0800C368
	ldr r0, [r0]
	cmp r0, #1
	bne _0800C2CA
	ldr r0, _0800C36C
	movs r1, #0xa0
	lsls r1, r1, #0x13
	movs r2, #0x80
	bl DmaTransfer32
_0800C2CA:
	ldr r0, [sp, #0x2c]
	cmp r0, #0
	beq _0800C2DA
	ldr r0, _0800C33C
	mov r1, sb
	movs r2, #1
	bl sub_8026E48
_0800C2DA:
	ldr r4, _0800C370
	ldr r0, _0800C374
	ldrh r2, [r0]
	movs r5, #0
	strh r2, [r4, #6]
	ldr r0, _0800C378
	ldrh r1, [r0]
	strb r1, [r4, #8]
	ldr r0, _0800C37C
	strh r2, [r0, #6]
	strb r1, [r0, #8]
	bl sub_803FE78
	bl sub_8041E88
	ldr r0, _0800C330
	ldr r1, [sp, #8]
	ldrh r0, [r0]
	cmp r1, r0
	beq _0800C306
	bl sub_8040178
_0800C306:
	bl sub_8039210
	strb r5, [r4, #0x13]
	ldr r1, _0800C380
	ldrb r0, [r1]
	cmp r0, #0
	beq _0800C31C
	strb r5, [r1]
	ldr r1, _0800C384
	movs r0, #0
	str r0, [r1]
_0800C31C:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800C32C: .4byte 0x0200116D
_0800C330: .4byte gLoadedRoomLevel
_0800C334: .4byte gLoadedRoomBgm
_0800C338: .4byte 0x080CF4EC
_0800C33C: .4byte 0x00000FFF
_0800C340: .4byte 0x0200145C
_0800C344: .4byte 0x0200145E
_0800C348: .4byte 0x02001460
_0800C34C: .4byte 0x02001462
_0800C350: .4byte dword_2000FC8
_0800C354: .4byte 0x080CC844
_0800C358: .4byte gRoomHeader
_0800C35C: .4byte gLoadedRoomIndex
_0800C360: .4byte 0x020010A4
_0800C364: .4byte byte_20020B1
_0800C368: .4byte 0x02001104
_0800C36C: .4byte 0x083FCF14
_0800C370: .4byte gPlayerSprite
_0800C374: .4byte 0x02001464
_0800C378: .4byte 0x02001466
_0800C37C: .4byte gPlayerShadowSprite
_0800C380: .4byte gInInteractionArea
_0800C384: .4byte 0x0203DFE0


	.thumb
	.global sub_0800C388
sub_0800C388: @ 0x0800C388
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	adds r2, r0, #0
	adds r5, r1, #0
	movs r0, #0x80
	ands r0, r2
	cmp r0, #0
	bne _0800C3A2
	.2byte 0xEE00, 0xEE00
_0800C3A2:
	ldr r7, _0800C4C0
	ldrh r0, [r7]
	mov sb, r0
	movs r0, #0x7f
	ands r0, r2
	subs r4, r0, #1
	cmp r4, #0
	bge _0800C3B6
	.2byte 0xEE00, 0xEE00
_0800C3B6:
	movs r0, #1
	bl sub_805E1DC
	bl audio_halt_all_fx
	ldr r2, _0800C4C4
	ldr r1, _0800C4C8
	lsls r0, r4, #3
	adds r0, r0, r1
	ldrh r1, [r2]
	ldrh r0, [r0, #6]
	eors r1, r0
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r6, r0, #0x1f
	ldr r0, _0800C4CC
	mov r8, r0
	adds r1, r6, #0
	bl sub_80270AC
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #1
	movs r3, #0
	bl SetupRoom
	ldrh r0, [r7]
	bl sub_8025E44
	ldr r0, _0800C4D0
	ldrh r0, [r0]
	ldr r1, _0800C4D4
	ldrh r1, [r1]
	ldr r2, _0800C4D8
	ldrh r2, [r2]
	ldr r3, _0800C4DC
	ldrh r3, [r3]
	movs r4, #0x15
	str r4, [sp]
	movs r4, #0x20
	str r4, [sp, #4]
	bl sub_8013A10
	ldr r0, _0800C4E0
	ldr r0, [r0]
	ldr r2, _0800C4E4
	ldr r1, _0800C4E8
	ldrb r1, [r1, #0xe]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl sub_800389C
	bl sub_801A2E4
	bl EnableBGAlphaBlending
	ldr r0, _0800C4EC
	ldrb r0, [r0]
	cmp r0, #0
	bne _0800C436
	movs r0, #1
	bl sub_800EB58
_0800C436:
	bl sub_800ECB4
	bl init_efx
	bl sub_800DEE4
	bl sub_0800ED80
	movs r0, #0x38
	bl sub_08040A38
	mov r0, r8
	adds r1, r6, #0
	movs r2, #1
	bl sub_8026E48
	ldr r4, _0800C4F0
	ldr r0, _0800C4F4
	ldrh r2, [r0]
	strh r2, [r4, #6]
	ldr r0, _0800C4F8
	ldrh r1, [r0]
	strb r1, [r4, #8]
	ldr r0, _0800C4FC
	strh r2, [r0, #6]
	strb r1, [r0, #8]
	bl sub_803FE78
	bl sub_8041E88
	ldrh r7, [r7]
	cmp sb, r7
	beq _0800C47C
	bl sub_8040178
_0800C47C:
	bl sub_8039210
	movs r0, #0
	strb r0, [r4, #0x13]
	ldr r0, _0800C500
	ldrh r0, [r0]
	cmp r0, #9
	bne _0800C49E
	movs r0, #0x5e
	movs r1, #0
	bl sub_80342CC
	cmp r0, #0
	bne _0800C49E
	movs r0, #0x50
	bl init_function
_0800C49E:
	ldr r1, _0800C504
	ldrb r0, [r1]
	cmp r0, #0
	beq _0800C4B0
	movs r0, #0
	strb r0, [r1]
	ldr r1, _0800C508
	movs r0, #0
	str r0, [r1]
_0800C4B0:
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800C4C0: .4byte gLoadedRoomLevel
_0800C4C4: .4byte gLoadedRoomBgm
_0800C4C8: .4byte 0x080CF4EC
_0800C4CC: .4byte 0x00000FFF
_0800C4D0: .4byte 0x0200145C
_0800C4D4: .4byte 0x0200145E
_0800C4D8: .4byte 0x02001460
_0800C4DC: .4byte 0x02001462
_0800C4E0: .4byte dword_2000FC8
_0800C4E4: .4byte 0x080CC844
_0800C4E8: .4byte gRoomHeader
_0800C4EC: .4byte 0x020010B1
_0800C4F0: .4byte gPlayerSprite
_0800C4F4: .4byte 0x02001464
_0800C4F8: .4byte 0x02001466
_0800C4FC: .4byte gPlayerShadowSprite
_0800C500: .4byte gLoadedRoomIndex
_0800C504: .4byte gInInteractionArea
_0800C508: .4byte 0x0203DFE0


    .thumb
    .global sub_800C50C
sub_800C50C: @ 0x0800C50C
	push {r4, lr}
	ldr r0, _0800C548
	ldr r4, [r0]
	cmp r4, #0
	beq _0800C55C
	ldrh r1, [r4, #0x1e]
	ldr r0, _0800C54C
	ldr r0, [r0]
	adds r0, r0, r1
	ldrb r3, [r0]
	ldr r0, _0800C550
	adds r1, r4, #0
	adds r1, #0x98
	ldr r2, [r0, #4]
	ldr r0, [r1]
	subs r2, r2, r0
	asrs r2, r2, #0x10
	ldr r0, _0800C554
	ldr r1, [r0]
	lsls r0, r3, #1
	adds r0, r0, r3
	lsls r0, r0, #4
	adds r0, r0, r1
	ldrh r1, [r0, #0x28]
	cmp r2, r1
	blt _0800C558
	adds r0, #0x27
	ldrb r0, [r0]
	b _0800C5FE
	.align 2, 0
_0800C548: .4byte dword_203DFC4
_0800C54C: .4byte 0x0203DFC0
_0800C550: .4byte gPlayerPos
_0800C554: .4byte 0x0203FA5C
_0800C558:
	ldrb r0, [r4, #8]
	b _0800C5FE
_0800C55C:
	ldr r0, _0800C570
	ldr r1, _0800C574
	ldrh r2, [r0]
	ldrh r0, [r1]
	ands r0, r2
	cmp r0, #0
	beq _0800C57C
	ldr r0, _0800C578
	ldrb r0, [r0]
	b _0800C5FE
	.align 2, 0
_0800C570: .4byte gKeysPressed
_0800C574: .4byte word_20010AC
_0800C578: .4byte 0x020010A7
_0800C57C:
	ldr r0, _0800C5B8
	ldr r1, _0800C5BC
	ldr r2, [r0, #4]
	ldr r0, [r1, #4]
	subs r2, r2, r0
	ldr r1, _0800C5C0
	ldr r0, _0800C5C4
	ldrh r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r1
	cmp r0, #0
	bne _0800C5E4
	cmp r2, #0
	beq _0800C5D8
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0800C5CC
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _0800C5CC
	ldr r0, _0800C5C8
	ldrb r0, [r0, #3]
	b _0800C5FE
	.align 2, 0
_0800C5B8: .4byte gPlayerPos
_0800C5BC: .4byte gPlayerShadowPos
_0800C5C0: .4byte gPlayerStateSettings
_0800C5C4: .4byte gPlayerState
_0800C5C8: .4byte 0x030028FC
_0800C5CC:
	ldr r0, _0800C5D4
	ldrb r0, [r0, #3]
	b _0800C5FE
	.align 2, 0
_0800C5D4: .4byte stru_3002950
_0800C5D8:
	ldr r0, _0800C5E0
	ldrb r0, [r0, #3]
	b _0800C5FE
	.align 2, 0
_0800C5E0: .4byte stru_3002950
_0800C5E4:
	asrs r1, r2, #0x10
	ldr r3, _0800C5F8
	adds r0, r3, #0
	adds r0, #0x48
	ldrh r0, [r0]
	cmp r1, r0
	bge _0800C5FC
	ldrb r0, [r3, #3]
	b _0800C5FE
	.align 2, 0
_0800C5F8: .4byte stru_3002950
_0800C5FC:
	ldrb r0, [r3, #6]
_0800C5FE:
	pop {r4}
	pop {r1}
	bx r1

    .thumb
	.global sub_800C604
sub_800C604: @ 0x0800C604
	ldr r1, _0800C624
	ldr r0, _0800C628
	ldrh r0, [r0]
	strb r0, [r1]
	ldr r2, _0800C62C
	ldr r1, _0800C630
	ldr r0, [r1]
	str r0, [r2]
	ldr r2, _0800C634
	ldr r0, [r1, #4]
	str r0, [r2]
	ldr r2, _0800C638
	ldr r0, [r1, #8]
	str r0, [r2]
	bx lr
	.align 2, 0
_0800C624: .4byte 0x02001094
_0800C628: .4byte gLoadedRoomIndex
_0800C62C: .4byte 0x02001098
_0800C630: .4byte gPlayerPos
_0800C634: .4byte 0x0200109C
_0800C638: .4byte 0x020010A0

    .thumb
sub_0800C63C: @ 0x0800C63C
	push {r4, r5, lr}
	adds r5, r1, #0
	subs r0, #0xc
	cmp r0, #0x19
	bls _0800C648
	b _0800CD8C
_0800C648:
	lsls r0, r0, #2
	ldr r1, _0800C654
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0800C654: .4byte 0x0800C658
_0800C658: @ jump table
	.4byte _0800C6C0 @ case 0
	.4byte _0800CD8C @ case 1
	.4byte _0800C8B6 @ case 2
	.4byte _0800CD8C @ case 3
	.4byte _0800CA1C @ case 4
	.4byte _0800CD8C @ case 5
	.4byte _0800CD8C @ case 6
	.4byte _0800CD8C @ case 7
	.4byte _0800CD8C @ case 8
	.4byte _0800CD8C @ case 9
	.4byte _0800CD8C @ case 10
	.4byte _0800CD8C @ case 11
	.4byte _0800CD8C @ case 12
	.4byte _0800CD8C @ case 13
	.4byte _0800CD8C @ case 14
	.4byte _0800CD8C @ case 15
	.4byte _0800CAC4 @ case 16
	.4byte _0800CD8C @ case 17
	.4byte _0800CD8C @ case 18
	.4byte _0800CD8C @ case 19
	.4byte _0800CD8C @ case 20
	.4byte _0800CD8C @ case 21
	.4byte _0800CD8C @ case 22
	.4byte _0800C96C @ case 23
	.4byte _0800CD8C @ case 24
	.4byte _0800CB70 @ case 25
_0800C6C0:
	ldr r0, _0800C6D4
	ldrh r0, [r0]
	cmp r0, #0xd
	beq _0800C778
	cmp r0, #0xd
	bgt _0800C6D8
	cmp r0, #4
	beq _0800C6E0
	b _0800C8B0
	.align 2, 0
_0800C6D4: .4byte gLoadedRoomIndex
_0800C6D8:
	cmp r0, #0x1b
	bne _0800C6DE
	b _0800C810
_0800C6DE:
	b _0800C8B0
_0800C6E0:
	bl audio_halt_all_fx
	ldr r0, _0800C73C
	movs r1, #1
	bl sub_80270AC
	bl sub_800DE9C
	movs r0, #0
	bl sub_8016C78
	ldr r0, _0800C740
	movs r1, #0
	strb r1, [r0]
	ldr r0, _0800C744
	strb r1, [r0]
	ldr r0, _0800C748
	strb r1, [r0]
	ldr r0, _0800C74C
	strh r5, [r0]
	ldr r1, _0800C750
	movs r0, #1
	strb r0, [r1]
	ldr r1, _0800C754
	movs r0, #0x80
	lsls r0, r0, #0x13
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r1, _0800C758
	ldr r0, _0800C75C
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r1, _0800C760
	ldr r0, _0800C764
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r1, _0800C768
	ldr r0, _0800C76C
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r1, _0800C770
	ldr r0, _0800C774
	ldrh r0, [r0]
	strh r0, [r1]
	movs r0, #9
	b _0800C86A
	.align 2, 0
_0800C73C: .4byte 0x00000FFF
_0800C740: .4byte 0x02001118
_0800C744: .4byte 0x02001119
_0800C748: .4byte 0x0200116D
_0800C74C: .4byte 0x02001128
_0800C750: .4byte 0x020010B0
_0800C754: .4byte 0x02000342
_0800C758: .4byte 0x02000344
_0800C75C: .4byte 0x04000008
_0800C760: .4byte 0x02000346
_0800C764: .4byte 0x0400000A
_0800C768: .4byte 0x02000348
_0800C76C: .4byte 0x0400000C
_0800C770: .4byte 0x0200034A
_0800C774: .4byte 0x0400000E
_0800C778:
	bl audio_halt_all_fx
	ldr r0, _0800C7D4
	movs r1, #1
	bl sub_80270AC
	bl sub_800DE9C
	movs r0, #0
	bl sub_8016C78
	ldr r0, _0800C7D8
	movs r1, #0
	strb r1, [r0]
	ldr r0, _0800C7DC
	strb r1, [r0]
	ldr r0, _0800C7E0
	strb r1, [r0]
	ldr r0, _0800C7E4
	strh r5, [r0]
	ldr r1, _0800C7E8
	movs r0, #1
	strb r0, [r1]
	ldr r1, _0800C7EC
	movs r0, #0x80
	lsls r0, r0, #0x13
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r1, _0800C7F0
	ldr r0, _0800C7F4
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r1, _0800C7F8
	ldr r0, _0800C7FC
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r1, _0800C800
	ldr r0, _0800C804
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r1, _0800C808
	ldr r0, _0800C80C
	ldrh r0, [r0]
	strh r0, [r1]
	movs r0, #0
	b _0800C86A
	.align 2, 0
_0800C7D4: .4byte 0x00000FFF
_0800C7D8: .4byte 0x02001118
_0800C7DC: .4byte 0x02001119
_0800C7E0: .4byte 0x0200116D
_0800C7E4: .4byte 0x02001128
_0800C7E8: .4byte 0x020010B0
_0800C7EC: .4byte 0x02000342
_0800C7F0: .4byte 0x02000344
_0800C7F4: .4byte 0x04000008
_0800C7F8: .4byte 0x02000346
_0800C7FC: .4byte 0x0400000A
_0800C800: .4byte 0x02000348
_0800C804: .4byte 0x0400000C
_0800C808: .4byte 0x0200034A
_0800C80C: .4byte 0x0400000E
_0800C810:
	bl audio_halt_all_fx
	ldr r0, _0800C874
	movs r1, #1
	bl sub_80270AC
	bl sub_800DE9C
	movs r0, #0
	bl sub_8016C78
	ldr r0, _0800C878
	movs r1, #0
	strb r1, [r0]
	ldr r0, _0800C87C
	strb r1, [r0]
	ldr r0, _0800C880
	strb r1, [r0]
	ldr r0, _0800C884
	strh r5, [r0]
	ldr r1, _0800C888
	movs r0, #1
	strb r0, [r1]
	ldr r1, _0800C88C
	movs r0, #0x80
	lsls r0, r0, #0x13
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r1, _0800C890
	ldr r0, _0800C894
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r1, _0800C898
	ldr r0, _0800C89C
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r1, _0800C8A0
	ldr r0, _0800C8A4
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r1, _0800C8A8
	ldr r0, _0800C8AC
	ldrh r0, [r0]
	strh r0, [r1]
	movs r0, #5
_0800C86A:
	movs r1, #0
	bl sub_080593D0
	b _0800C9DA
	.align 2, 0
_0800C874: .4byte 0x00000FFF
_0800C878: .4byte 0x02001118
_0800C87C: .4byte 0x02001119
_0800C880: .4byte 0x0200116D
_0800C884: .4byte 0x02001128
_0800C888: .4byte 0x020010B0
_0800C88C: .4byte 0x02000342
_0800C890: .4byte 0x02000344
_0800C894: .4byte 0x04000008
_0800C898: .4byte 0x02000346
_0800C89C: .4byte 0x0400000A
_0800C8A0: .4byte 0x02000348
_0800C8A4: .4byte 0x0400000C
_0800C8A8: .4byte 0x0200034A
_0800C8AC: .4byte 0x0400000E
_0800C8B0:
	.2byte 0xEE00, 0xEE00
	b _0800C9DA
_0800C8B6:
	ldr r0, _0800C92C
	ldrb r0, [r0, #6]
	cmp r0, #0
	bne _0800C8C0
	b _0800CCEA
_0800C8C0:
	movs r0, #0xd9
	movs r1, #0xa
	bl sub_80342CC
	adds r4, r0, #0
	cmp r4, #0
	beq _0800C8D0
	b _0800CCEA
_0800C8D0:
	bl audio_halt_all_fx
	ldr r0, _0800C930
	movs r1, #1
	bl sub_80270AC
	bl sub_800DE9C
	movs r0, #0
	bl sub_8016C78
	ldr r0, _0800C934
	strb r4, [r0]
	ldr r0, _0800C938
	strb r4, [r0]
	ldr r0, _0800C93C
	strb r4, [r0]
	ldr r1, _0800C940
	movs r0, #1
	strb r0, [r1]
	ldr r1, _0800C944
	movs r0, #0x80
	lsls r0, r0, #0x13
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r1, _0800C948
	ldr r0, _0800C94C
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r1, _0800C950
	ldr r0, _0800C954
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r1, _0800C958
	ldr r0, _0800C95C
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r1, _0800C960
	ldr r0, _0800C964
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r0, _0800C968
	strh r5, [r0]
	movs r0, #1
	b _0800C9D4
	.align 2, 0
_0800C92C: .4byte 0x0200209A
_0800C930: .4byte 0x00000FFF
_0800C934: .4byte 0x02001118
_0800C938: .4byte 0x02001119
_0800C93C: .4byte 0x0200116D
_0800C940: .4byte 0x020010B0
_0800C944: .4byte 0x02000342
_0800C948: .4byte 0x02000344
_0800C94C: .4byte 0x04000008
_0800C950: .4byte 0x02000346
_0800C954: .4byte 0x0400000A
_0800C958: .4byte 0x02000348
_0800C95C: .4byte 0x0400000C
_0800C960: .4byte 0x0200034A
_0800C964: .4byte 0x0400000E
_0800C968: .4byte 0x02001128
_0800C96C:
	movs r0, #0xcd
	movs r1, #0
	bl sub_80342CC
	adds r4, r0, #0
	cmp r4, #0
	beq _0800C97C
	b _0800CCEA
_0800C97C:
	bl audio_halt_all_fx
	ldr r0, _0800C9E0
	movs r1, #1
	bl sub_80270AC
	bl sub_800DE9C
	movs r0, #0
	bl sub_8016C78
	ldr r0, _0800C9E4
	strb r4, [r0]
	ldr r0, _0800C9E8
	strb r4, [r0]
	ldr r0, _0800C9EC
	strb r4, [r0]
	ldr r1, _0800C9F0
	movs r0, #1
	strb r0, [r1]
	ldr r1, _0800C9F4
	movs r0, #0x80
	lsls r0, r0, #0x13
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r1, _0800C9F8
	ldr r0, _0800C9FC
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r1, _0800CA00
	ldr r0, _0800CA04
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r1, _0800CA08
	ldr r0, _0800CA0C
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r1, _0800CA10
	ldr r0, _0800CA14
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r0, _0800CA18
	strh r5, [r0]
	movs r0, #2
_0800C9D4:
	movs r1, #0
	bl sub_08052B58
_0800C9DA:
	movs r0, #1
	b _0800CD8E
	.align 2, 0
_0800C9E0: .4byte 0x00000FFF
_0800C9E4: .4byte 0x02001118
_0800C9E8: .4byte 0x02001119
_0800C9EC: .4byte 0x0200116D
_0800C9F0: .4byte 0x020010B0
_0800C9F4: .4byte 0x02000342
_0800C9F8: .4byte 0x02000344
_0800C9FC: .4byte 0x04000008
_0800CA00: .4byte 0x02000346
_0800CA04: .4byte 0x0400000A
_0800CA08: .4byte 0x02000348
_0800CA0C: .4byte 0x0400000C
_0800CA10: .4byte 0x0200034A
_0800CA14: .4byte 0x0400000E
_0800CA18: .4byte 0x02001128
_0800CA1C:
	movs r0, #0xd9
	movs r1, #0xe
	bl sub_80342CC
	adds r4, r0, #0
	cmp r4, #0
	beq _0800CA2C
	b _0800CCEA
_0800CA2C:
	bl audio_halt_all_fx
	ldr r0, _0800CA88
	movs r1, #1
	bl sub_80270AC
	bl sub_800DE9C
	movs r0, #0
	bl sub_8016C78
	ldr r0, _0800CA8C
	strb r4, [r0]
	ldr r0, _0800CA90
	strb r4, [r0]
	ldr r0, _0800CA94
	strb r4, [r0]
	ldr r1, _0800CA98
	movs r0, #1
	strb r0, [r1]
	ldr r1, _0800CA9C
	movs r0, #0x80
	lsls r0, r0, #0x13
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r1, _0800CAA0
	ldr r0, _0800CAA4
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r1, _0800CAA8
	ldr r0, _0800CAAC
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r1, _0800CAB0
	ldr r0, _0800CAB4
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r1, _0800CAB8
	ldr r0, _0800CABC
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r0, _0800CAC0
	strh r5, [r0]
	movs r0, #4
	b _0800CB2C
	.align 2, 0
_0800CA88: .4byte 0x00000FFF
_0800CA8C: .4byte 0x02001118
_0800CA90: .4byte 0x02001119
_0800CA94: .4byte 0x0200116D
_0800CA98: .4byte 0x020010B0
_0800CA9C: .4byte 0x02000342
_0800CAA0: .4byte 0x02000344
_0800CAA4: .4byte 0x04000008
_0800CAA8: .4byte 0x02000346
_0800CAAC: .4byte 0x0400000A
_0800CAB0: .4byte 0x02000348
_0800CAB4: .4byte 0x0400000C
_0800CAB8: .4byte 0x0200034A
_0800CABC: .4byte 0x0400000E
_0800CAC0: .4byte 0x02001128
_0800CAC4:
	movs r0, #0xd9
	movs r1, #0xb
	bl sub_80342CC
	adds r4, r0, #0
	cmp r4, #0
	beq _0800CAD4
	b _0800CCEA
_0800CAD4:
	bl audio_halt_all_fx
	ldr r0, _0800CB34
	movs r1, #1
	bl sub_80270AC
	bl sub_800DE9C
	movs r0, #0
	bl sub_8016C78
	ldr r0, _0800CB38
	strb r4, [r0]
	ldr r0, _0800CB3C
	strb r4, [r0]
	ldr r0, _0800CB40
	strb r4, [r0]
	ldr r1, _0800CB44
	movs r0, #1
	strb r0, [r1]
	ldr r1, _0800CB48
	movs r0, #0x80
	lsls r0, r0, #0x13
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r1, _0800CB4C
	ldr r0, _0800CB50
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r1, _0800CB54
	ldr r0, _0800CB58
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r1, _0800CB5C
	ldr r0, _0800CB60
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r1, _0800CB64
	ldr r0, _0800CB68
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r0, _0800CB6C
	strh r5, [r0]
	movs r0, #3
_0800CB2C:
	movs r1, #0
	bl sub_08055A14
	b _0800C9DA
	.align 2, 0
_0800CB34: .4byte 0x00000FFF
_0800CB38: .4byte 0x02001118
_0800CB3C: .4byte 0x02001119
_0800CB40: .4byte 0x0200116D
_0800CB44: .4byte 0x020010B0
_0800CB48: .4byte 0x02000342
_0800CB4C: .4byte 0x02000344
_0800CB50: .4byte 0x04000008
_0800CB54: .4byte 0x02000346
_0800CB58: .4byte 0x0400000A
_0800CB5C: .4byte 0x02000348
_0800CB60: .4byte 0x0400000C
_0800CB64: .4byte 0x0200034A
_0800CB68: .4byte 0x0400000E
_0800CB6C: .4byte 0x02001128
_0800CB70:
	ldr r0, _0800CB84
	ldrh r0, [r0]
	cmp r0, #0xf
	bne _0800CB7A
	b _0800CCDC
_0800CB7A:
	cmp r0, #0xf
	bgt _0800CB88
	cmp r0, #5
	beq _0800CB8E
	b _0800CD8C
	.align 2, 0
_0800CB84: .4byte gLoadedRoomIndex
_0800CB88:
	cmp r0, #0x14
	beq _0800CC34
	b _0800CD8C
_0800CB8E:
	movs r0, #0xd9
	movs r1, #0xf
	bl sub_80342CC
	adds r4, r0, #0
	cmp r4, #0
	beq _0800CB9E
	b _0800CCEA
_0800CB9E:
	bl audio_halt_all_fx
	ldr r0, _0800CBF8
	movs r1, #1
	bl sub_80270AC
	bl sub_800DE9C
	movs r0, #0
	bl sub_8016C78
	ldr r0, _0800CBFC
	strb r4, [r0]
	ldr r0, _0800CC00
	strb r4, [r0]
	ldr r0, _0800CC04
	strb r4, [r0]
	ldr r1, _0800CC08
	movs r0, #1
	strb r0, [r1]
	ldr r1, _0800CC0C
	movs r0, #0x80
	lsls r0, r0, #0x13
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r1, _0800CC10
	ldr r0, _0800CC14
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r1, _0800CC18
	ldr r0, _0800CC1C
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r1, _0800CC20
	ldr r0, _0800CC24
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r1, _0800CC28
	ldr r0, _0800CC2C
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r0, _0800CC30
	strh r5, [r0]
	movs r0, #6
	b _0800CD46
	.align 2, 0
_0800CBF8: .4byte 0x00000FFF
_0800CBFC: .4byte 0x02001118
_0800CC00: .4byte 0x02001119
_0800CC04: .4byte 0x0200116D
_0800CC08: .4byte 0x020010B0
_0800CC0C: .4byte 0x02000342
_0800CC10: .4byte 0x02000344
_0800CC14: .4byte 0x04000008
_0800CC18: .4byte 0x02000346
_0800CC1C: .4byte 0x0400000A
_0800CC20: .4byte 0x02000348
_0800CC24: .4byte 0x0400000C
_0800CC28: .4byte 0x0200034A
_0800CC2C: .4byte 0x0400000E
_0800CC30: .4byte 0x02001128
_0800CC34:
	movs r0, #0xd9
	movs r1, #0x11
	bl sub_80342CC
	adds r4, r0, #0
	cmp r4, #0
	bne _0800CCEA
	bl pause_efx
	bl audio_halt_all_fx
	ldr r0, _0800CCA0
	movs r1, #1
	bl sub_80270AC
	bl sub_800DE9C
	movs r0, #0
	bl sub_8016C78
	ldr r0, _0800CCA4
	strb r4, [r0]
	ldr r0, _0800CCA8
	strb r4, [r0]
	ldr r0, _0800CCAC
	strb r4, [r0]
	ldr r1, _0800CCB0
	movs r0, #1
	strb r0, [r1]
	ldr r1, _0800CCB4
	movs r0, #0x80
	lsls r0, r0, #0x13
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r1, _0800CCB8
	ldr r0, _0800CCBC
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r1, _0800CCC0
	ldr r0, _0800CCC4
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r1, _0800CCC8
	ldr r0, _0800CCCC
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r1, _0800CCD0
	ldr r0, _0800CCD4
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r0, _0800CCD8
	strh r5, [r0]
	movs r0, #7
	b _0800CD46
	.align 2, 0
_0800CCA0: .4byte 0x00000FFF
_0800CCA4: .4byte 0x02001118
_0800CCA8: .4byte 0x02001119
_0800CCAC: .4byte 0x0200116D
_0800CCB0: .4byte 0x020010B0
_0800CCB4: .4byte 0x02000342
_0800CCB8: .4byte 0x02000344
_0800CCBC: .4byte 0x04000008
_0800CCC0: .4byte 0x02000346
_0800CCC4: .4byte 0x0400000A
_0800CCC8: .4byte 0x02000348
_0800CCCC: .4byte 0x0400000C
_0800CCD0: .4byte 0x0200034A
_0800CCD4: .4byte 0x0400000E
_0800CCD8: .4byte 0x02001128
_0800CCDC:
	movs r0, #0xd9
	movs r1, #0x12
	bl sub_80342CC
	adds r4, r0, #0
	cmp r4, #0
	beq _0800CCEE
_0800CCEA:
	movs r0, #2
	b _0800CD8E
_0800CCEE:
	bl audio_halt_all_fx
	ldr r0, _0800CD50
	movs r1, #1
	bl sub_80270AC
	bl sub_800DE9C
	movs r0, #0
	bl sub_8016C78
	ldr r0, _0800CD54
	strb r4, [r0]
	ldr r0, _0800CD58
	strb r4, [r0]
	ldr r0, _0800CD5C
	strb r4, [r0]
	ldr r1, _0800CD60
	movs r0, #1
	strb r0, [r1]
	ldr r1, _0800CD64
	movs r0, #0x80
	lsls r0, r0, #0x13
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r1, _0800CD68
	ldr r0, _0800CD6C
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r1, _0800CD70
	ldr r0, _0800CD74
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r1, _0800CD78
	ldr r0, _0800CD7C
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r1, _0800CD80
	ldr r0, _0800CD84
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r0, _0800CD88
	strh r5, [r0]
	movs r0, #8
_0800CD46:
	movs r1, #0
	bl sub_0805BA1C
	b _0800C9DA
	.align 2, 0
_0800CD50: .4byte 0x00000FFF
_0800CD54: .4byte 0x02001118
_0800CD58: .4byte 0x02001119
_0800CD5C: .4byte 0x0200116D
_0800CD60: .4byte 0x020010B0
_0800CD64: .4byte 0x02000342
_0800CD68: .4byte 0x02000344
_0800CD6C: .4byte 0x04000008
_0800CD70: .4byte 0x02000346
_0800CD74: .4byte 0x0400000A
_0800CD78: .4byte 0x02000348
_0800CD7C: .4byte 0x0400000C
_0800CD80: .4byte 0x0200034A
_0800CD84: .4byte 0x0400000E
_0800CD88: .4byte 0x02001128
_0800CD8C:
	movs r0, #0
_0800CD8E:
	pop {r4, r5}
	pop {r1}
	bx r1

    .thumb
	.global sub_0800CD94
sub_0800CD94: @ 0x0800CD94
	push {lr}
	cmp r0, #9
	bls _0800CD9C
	b _0800D1A0
_0800CD9C:
	lsls r0, r0, #2
	ldr r1, _0800CDA8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0800CDA8: .4byte 0x0800CDAC
_0800CDAC: @ jump table
	.4byte _0800CE4C @ case 0
	.4byte _0800D1A0 @ case 1
	.4byte _0800D1A0 @ case 2
	.4byte _0800CF40 @ case 3
	.4byte _0800CFB8 @ case 4
	.4byte _0800CEC4 @ case 5
	.4byte _0800D034 @ case 6
	.4byte _0800D0AC @ case 7
	.4byte _0800D124 @ case 8
	.4byte _0800CDD4 @ case 9
_0800CDD4:
	bl audio_halt_all_fx
	ldr r0, _0800CE1C
	movs r1, #1
	bl sub_80270AC
	ldr r1, _0800CE20
	movs r0, #0
	strb r0, [r1]
	ldr r1, _0800CE24
	movs r0, #1
	strb r0, [r1]
	ldr r1, _0800CE28
	movs r0, #0x80
	lsls r0, r0, #0x13
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r1, _0800CE2C
	ldr r0, _0800CE30
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r1, _0800CE34
	ldr r0, _0800CE38
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r1, _0800CE3C
	ldr r0, _0800CE40
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r1, _0800CE44
	ldr r0, _0800CE48
	ldrh r0, [r0]
	strh r0, [r1]
	movs r0, #9
	b _0800CF08
	.align 2, 0
_0800CE1C: .4byte 0x00000FFF
_0800CE20: .4byte 0x0200116D
_0800CE24: .4byte 0x020010B0
_0800CE28: .4byte 0x02000342
_0800CE2C: .4byte 0x02000344
_0800CE30: .4byte 0x04000008
_0800CE34: .4byte 0x02000346
_0800CE38: .4byte 0x0400000A
_0800CE3C: .4byte 0x02000348
_0800CE40: .4byte 0x0400000C
_0800CE44: .4byte 0x0200034A
_0800CE48: .4byte 0x0400000E
_0800CE4C:
	bl audio_halt_all_fx
	ldr r0, _0800CE94
	movs r1, #1
	bl sub_80270AC
	ldr r1, _0800CE98
	movs r0, #0
	strb r0, [r1]
	ldr r1, _0800CE9C
	movs r0, #1
	strb r0, [r1]
	ldr r1, _0800CEA0
	movs r0, #0x80
	lsls r0, r0, #0x13
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r1, _0800CEA4
	ldr r0, _0800CEA8
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r1, _0800CEAC
	ldr r0, _0800CEB0
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r1, _0800CEB4
	ldr r0, _0800CEB8
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r1, _0800CEBC
	ldr r0, _0800CEC0
	ldrh r0, [r0]
	strh r0, [r1]
	movs r0, #0
	b _0800CF08
	.align 2, 0
_0800CE94: .4byte 0x00000FFF
_0800CE98: .4byte 0x0200116D
_0800CE9C: .4byte 0x020010B0
_0800CEA0: .4byte 0x02000342
_0800CEA4: .4byte 0x02000344
_0800CEA8: .4byte 0x04000008
_0800CEAC: .4byte 0x02000346
_0800CEB0: .4byte 0x0400000A
_0800CEB4: .4byte 0x02000348
_0800CEB8: .4byte 0x0400000C
_0800CEBC: .4byte 0x0200034A
_0800CEC0: .4byte 0x0400000E
_0800CEC4:
	bl audio_halt_all_fx
	ldr r0, _0800CF10
	movs r1, #1
	bl sub_80270AC
	ldr r1, _0800CF14
	movs r0, #0
	strb r0, [r1]
	ldr r1, _0800CF18
	movs r0, #1
	strb r0, [r1]
	ldr r1, _0800CF1C
	movs r0, #0x80
	lsls r0, r0, #0x13
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r1, _0800CF20
	ldr r0, _0800CF24
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r1, _0800CF28
	ldr r0, _0800CF2C
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r1, _0800CF30
	ldr r0, _0800CF34
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r1, _0800CF38
	ldr r0, _0800CF3C
	ldrh r0, [r0]
	strh r0, [r1]
	movs r0, #5
_0800CF08:
	movs r1, #1
	bl sub_080593D0
	b _0800D1A4
	.align 2, 0
_0800CF10: .4byte 0x00000FFF
_0800CF14: .4byte 0x0200116D
_0800CF18: .4byte 0x020010B0
_0800CF1C: .4byte 0x02000342
_0800CF20: .4byte 0x02000344
_0800CF24: .4byte 0x04000008
_0800CF28: .4byte 0x02000346
_0800CF2C: .4byte 0x0400000A
_0800CF30: .4byte 0x02000348
_0800CF34: .4byte 0x0400000C
_0800CF38: .4byte 0x0200034A
_0800CF3C: .4byte 0x0400000E
_0800CF40:
	bl audio_halt_all_fx
	ldr r0, _0800CF88
	movs r1, #1
	bl sub_80270AC
	ldr r1, _0800CF8C
	movs r0, #0
	strb r0, [r1]
	ldr r1, _0800CF90
	movs r0, #1
	strb r0, [r1]
	ldr r1, _0800CF94
	movs r0, #0x80
	lsls r0, r0, #0x13
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r1, _0800CF98
	ldr r0, _0800CF9C
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r1, _0800CFA0
	ldr r0, _0800CFA4
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r1, _0800CFA8
	ldr r0, _0800CFAC
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r1, _0800CFB0
	ldr r0, _0800CFB4
	ldrh r0, [r0]
	strh r0, [r1]
	movs r0, #3
	b _0800CFFC
	.align 2, 0
_0800CF88: .4byte 0x00000FFF
_0800CF8C: .4byte 0x0200116D
_0800CF90: .4byte 0x020010B0
_0800CF94: .4byte 0x02000342
_0800CF98: .4byte 0x02000344
_0800CF9C: .4byte 0x04000008
_0800CFA0: .4byte 0x02000346
_0800CFA4: .4byte 0x0400000A
_0800CFA8: .4byte 0x02000348
_0800CFAC: .4byte 0x0400000C
_0800CFB0: .4byte 0x0200034A
_0800CFB4: .4byte 0x0400000E
_0800CFB8:
	bl audio_halt_all_fx
	ldr r0, _0800D004
	movs r1, #1
	bl sub_80270AC
	ldr r1, _0800D008
	movs r0, #0
	strb r0, [r1]
	ldr r1, _0800D00C
	movs r0, #1
	strb r0, [r1]
	ldr r1, _0800D010
	movs r0, #0x80
	lsls r0, r0, #0x13
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r1, _0800D014
	ldr r0, _0800D018
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r1, _0800D01C
	ldr r0, _0800D020
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r1, _0800D024
	ldr r0, _0800D028
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r1, _0800D02C
	ldr r0, _0800D030
	ldrh r0, [r0]
	strh r0, [r1]
	movs r0, #4
_0800CFFC:
	movs r1, #1
	bl sub_08055A14
	b _0800D1A4
	.align 2, 0
_0800D004: .4byte 0x00000FFF
_0800D008: .4byte 0x0200116D
_0800D00C: .4byte 0x020010B0
_0800D010: .4byte 0x02000342
_0800D014: .4byte 0x02000344
_0800D018: .4byte 0x04000008
_0800D01C: .4byte 0x02000346
_0800D020: .4byte 0x0400000A
_0800D024: .4byte 0x02000348
_0800D028: .4byte 0x0400000C
_0800D02C: .4byte 0x0200034A
_0800D030: .4byte 0x0400000E
_0800D034:
	bl audio_halt_all_fx
	ldr r0, _0800D07C
	movs r1, #1
	bl sub_80270AC
	ldr r1, _0800D080
	movs r0, #0
	strb r0, [r1]
	ldr r1, _0800D084
	movs r0, #1
	strb r0, [r1]
	ldr r1, _0800D088
	movs r0, #0x80
	lsls r0, r0, #0x13
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r1, _0800D08C
	ldr r0, _0800D090
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r1, _0800D094
	ldr r0, _0800D098
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r1, _0800D09C
	ldr r0, _0800D0A0
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r1, _0800D0A4
	ldr r0, _0800D0A8
	ldrh r0, [r0]
	strh r0, [r1]
	movs r0, #6
	b _0800D168
	.align 2, 0
_0800D07C: .4byte 0x00000FFF
_0800D080: .4byte 0x0200116D
_0800D084: .4byte 0x020010B0
_0800D088: .4byte 0x02000342
_0800D08C: .4byte 0x02000344
_0800D090: .4byte 0x04000008
_0800D094: .4byte 0x02000346
_0800D098: .4byte 0x0400000A
_0800D09C: .4byte 0x02000348
_0800D0A0: .4byte 0x0400000C
_0800D0A4: .4byte 0x0200034A
_0800D0A8: .4byte 0x0400000E
_0800D0AC:
	bl audio_halt_all_fx
	ldr r0, _0800D0F4
	movs r1, #1
	bl sub_80270AC
	ldr r1, _0800D0F8
	movs r0, #0
	strb r0, [r1]
	ldr r1, _0800D0FC
	movs r0, #1
	strb r0, [r1]
	ldr r1, _0800D100
	movs r0, #0x80
	lsls r0, r0, #0x13
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r1, _0800D104
	ldr r0, _0800D108
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r1, _0800D10C
	ldr r0, _0800D110
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r1, _0800D114
	ldr r0, _0800D118
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r1, _0800D11C
	ldr r0, _0800D120
	ldrh r0, [r0]
	strh r0, [r1]
	movs r0, #7
	b _0800D168
	.align 2, 0
_0800D0F4: .4byte 0x00000FFF
_0800D0F8: .4byte 0x0200116D
_0800D0FC: .4byte 0x020010B0
_0800D100: .4byte 0x02000342
_0800D104: .4byte 0x02000344
_0800D108: .4byte 0x04000008
_0800D10C: .4byte 0x02000346
_0800D110: .4byte 0x0400000A
_0800D114: .4byte 0x02000348
_0800D118: .4byte 0x0400000C
_0800D11C: .4byte 0x0200034A
_0800D120: .4byte 0x0400000E
_0800D124:
	bl audio_halt_all_fx
	ldr r0, _0800D170
	movs r1, #1
	bl sub_80270AC
	ldr r1, _0800D174
	movs r0, #0
	strb r0, [r1]
	ldr r1, _0800D178
	movs r0, #1
	strb r0, [r1]
	ldr r1, _0800D17C
	movs r0, #0x80
	lsls r0, r0, #0x13
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r1, _0800D180
	ldr r0, _0800D184
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r1, _0800D188
	ldr r0, _0800D18C
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r1, _0800D190
	ldr r0, _0800D194
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r1, _0800D198
	ldr r0, _0800D19C
	ldrh r0, [r0]
	strh r0, [r1]
	movs r0, #8
_0800D168:
	movs r1, #1
	bl sub_0805BA1C
	b _0800D1A4
	.align 2, 0
_0800D170: .4byte 0x00000FFF
_0800D174: .4byte 0x0200116D
_0800D178: .4byte 0x020010B0
_0800D17C: .4byte 0x02000342
_0800D180: .4byte 0x02000344
_0800D184: .4byte 0x04000008
_0800D188: .4byte 0x02000346
_0800D18C: .4byte 0x0400000A
_0800D190: .4byte 0x02000348
_0800D194: .4byte 0x0400000C
_0800D198: .4byte 0x0200034A
_0800D19C: .4byte 0x0400000E
_0800D1A0:
	.2byte 0xEE00, 0xEE00
_0800D1A4:
	pop {r0}
	bx r0

    .thumb
	.global sub_0800D1A8
sub_0800D1A8: @ 0x0800D1A8
	push {lr}
	cmp r0, #9
	bls _0800D1B0
	b _0800D5F4
_0800D1B0:
	lsls r0, r0, #2
	ldr r1, _0800D1BC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0800D1BC: .4byte 0x0800D1C0
_0800D1C0: @ jump table
	.4byte _0800D268 @ case 0
	.4byte _0800D5F4 @ case 1
	.4byte _0800D5F4 @ case 2
	.4byte _0800D36C @ case 3
	.4byte _0800D3EC @ case 4
	.4byte _0800D2E8 @ case 5
	.4byte _0800D470 @ case 6
	.4byte _0800D4F0 @ case 7
	.4byte _0800D570 @ case 8
	.4byte _0800D1E8 @ case 9
_0800D1E8:
	bl audio_halt_all_fx
	ldr r0, _0800D234
	movs r1, #1
	bl sub_80270AC
	ldr r1, _0800D238
	movs r0, #0
	strb r0, [r1]
	ldr r0, _0800D23C
	movs r1, #1
	strb r1, [r0]
	ldr r0, _0800D240
	strb r1, [r0]
	ldr r1, _0800D244
	movs r0, #0x80
	lsls r0, r0, #0x13
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r1, _0800D248
	ldr r0, _0800D24C
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r1, _0800D250
	ldr r0, _0800D254
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r1, _0800D258
	ldr r0, _0800D25C
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r1, _0800D260
	ldr r0, _0800D264
	ldrh r0, [r0]
	strh r0, [r1]
	movs r0, #9
	b _0800D330
	.align 2, 0
_0800D234: .4byte 0x00000FFF
_0800D238: .4byte 0x0200116D
_0800D23C: .4byte 0x020010B0
_0800D240: .4byte 0x0203F4E0
_0800D244: .4byte 0x02000342
_0800D248: .4byte 0x02000344
_0800D24C: .4byte 0x04000008
_0800D250: .4byte 0x02000346
_0800D254: .4byte 0x0400000A
_0800D258: .4byte 0x02000348
_0800D25C: .4byte 0x0400000C
_0800D260: .4byte 0x0200034A
_0800D264: .4byte 0x0400000E
_0800D268:
	bl audio_halt_all_fx
	ldr r0, _0800D2B4
	movs r1, #1
	bl sub_80270AC
	ldr r1, _0800D2B8
	movs r0, #0
	strb r0, [r1]
	ldr r0, _0800D2BC
	movs r1, #1
	strb r1, [r0]
	ldr r0, _0800D2C0
	strb r1, [r0]
	ldr r1, _0800D2C4
	movs r0, #0x80
	lsls r0, r0, #0x13
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r1, _0800D2C8
	ldr r0, _0800D2CC
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r1, _0800D2D0
	ldr r0, _0800D2D4
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r1, _0800D2D8
	ldr r0, _0800D2DC
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r1, _0800D2E0
	ldr r0, _0800D2E4
	ldrh r0, [r0]
	strh r0, [r1]
	movs r0, #0
	b _0800D330
	.align 2, 0
_0800D2B4: .4byte 0x00000FFF
_0800D2B8: .4byte 0x0200116D
_0800D2BC: .4byte 0x020010B0
_0800D2C0: .4byte 0x0203F4E0
_0800D2C4: .4byte 0x02000342
_0800D2C8: .4byte 0x02000344
_0800D2CC: .4byte 0x04000008
_0800D2D0: .4byte 0x02000346
_0800D2D4: .4byte 0x0400000A
_0800D2D8: .4byte 0x02000348
_0800D2DC: .4byte 0x0400000C
_0800D2E0: .4byte 0x0200034A
_0800D2E4: .4byte 0x0400000E
_0800D2E8:
	bl audio_halt_all_fx
	ldr r0, _0800D338
	movs r1, #1
	bl sub_80270AC
	ldr r1, _0800D33C
	movs r0, #0
	strb r0, [r1]
	ldr r0, _0800D340
	movs r1, #1
	strb r1, [r0]
	ldr r0, _0800D344
	strb r1, [r0]
	ldr r1, _0800D348
	movs r0, #0x80
	lsls r0, r0, #0x13
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r1, _0800D34C
	ldr r0, _0800D350
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r1, _0800D354
	ldr r0, _0800D358
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r1, _0800D35C
	ldr r0, _0800D360
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r1, _0800D364
	ldr r0, _0800D368
	ldrh r0, [r0]
	strh r0, [r1]
	movs r0, #5
_0800D330:
	movs r1, #2
	bl sub_080593D0
	b _0800D5F8
	.align 2, 0
_0800D338: .4byte 0x00000FFF
_0800D33C: .4byte 0x0200116D
_0800D340: .4byte 0x020010B0
_0800D344: .4byte 0x0203F4E0
_0800D348: .4byte 0x02000342
_0800D34C: .4byte 0x02000344
_0800D350: .4byte 0x04000008
_0800D354: .4byte 0x02000346
_0800D358: .4byte 0x0400000A
_0800D35C: .4byte 0x02000348
_0800D360: .4byte 0x0400000C
_0800D364: .4byte 0x0200034A
_0800D368: .4byte 0x0400000E
_0800D36C:
	bl audio_halt_all_fx
	ldr r0, _0800D3B8
	movs r1, #1
	bl sub_80270AC
	ldr r1, _0800D3BC
	movs r0, #0
	strb r0, [r1]
	ldr r0, _0800D3C0
	movs r1, #1
	strb r1, [r0]
	ldr r0, _0800D3C4
	strb r1, [r0]
	ldr r1, _0800D3C8
	movs r0, #0x80
	lsls r0, r0, #0x13
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r1, _0800D3CC
	ldr r0, _0800D3D0
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r1, _0800D3D4
	ldr r0, _0800D3D8
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r1, _0800D3DC
	ldr r0, _0800D3E0
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r1, _0800D3E4
	ldr r0, _0800D3E8
	ldrh r0, [r0]
	strh r0, [r1]
	movs r0, #3
	b _0800D434
	.align 2, 0
_0800D3B8: .4byte 0x00000FFF
_0800D3BC: .4byte 0x0200116D
_0800D3C0: .4byte 0x020010B0
_0800D3C4: .4byte 0x0203F4E0
_0800D3C8: .4byte 0x02000342
_0800D3CC: .4byte 0x02000344
_0800D3D0: .4byte 0x04000008
_0800D3D4: .4byte 0x02000346
_0800D3D8: .4byte 0x0400000A
_0800D3DC: .4byte 0x02000348
_0800D3E0: .4byte 0x0400000C
_0800D3E4: .4byte 0x0200034A
_0800D3E8: .4byte 0x0400000E
_0800D3EC:
	bl audio_halt_all_fx
	ldr r0, _0800D43C
	movs r1, #1
	bl sub_80270AC
	ldr r1, _0800D440
	movs r0, #0
	strb r0, [r1]
	ldr r0, _0800D444
	movs r1, #1
	strb r1, [r0]
	ldr r0, _0800D448
	strb r1, [r0]
	ldr r1, _0800D44C
	movs r0, #0x80
	lsls r0, r0, #0x13
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r1, _0800D450
	ldr r0, _0800D454
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r1, _0800D458
	ldr r0, _0800D45C
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r1, _0800D460
	ldr r0, _0800D464
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r1, _0800D468
	ldr r0, _0800D46C
	ldrh r0, [r0]
	strh r0, [r1]
	movs r0, #4
_0800D434:
	movs r1, #2
	bl sub_08055A14
	b _0800D5F8
	.align 2, 0
_0800D43C: .4byte 0x00000FFF
_0800D440: .4byte 0x0200116D
_0800D444: .4byte 0x020010B0
_0800D448: .4byte 0x0203F4E0
_0800D44C: .4byte 0x02000342
_0800D450: .4byte 0x02000344
_0800D454: .4byte 0x04000008
_0800D458: .4byte 0x02000346
_0800D45C: .4byte 0x0400000A
_0800D460: .4byte 0x02000348
_0800D464: .4byte 0x0400000C
_0800D468: .4byte 0x0200034A
_0800D46C: .4byte 0x0400000E
_0800D470:
	bl audio_halt_all_fx
	ldr r0, _0800D4BC
	movs r1, #1
	bl sub_80270AC
	ldr r1, _0800D4C0
	movs r0, #0
	strb r0, [r1]
	ldr r0, _0800D4C4
	movs r1, #1
	strb r1, [r0]
	ldr r0, _0800D4C8
	strb r1, [r0]
	ldr r1, _0800D4CC
	movs r0, #0x80
	lsls r0, r0, #0x13
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r1, _0800D4D0
	ldr r0, _0800D4D4
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r1, _0800D4D8
	ldr r0, _0800D4DC
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r1, _0800D4E0
	ldr r0, _0800D4E4
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r1, _0800D4E8
	ldr r0, _0800D4EC
	ldrh r0, [r0]
	strh r0, [r1]
	movs r0, #6
	b _0800D5B8
	.align 2, 0
_0800D4BC: .4byte 0x00000FFF
_0800D4C0: .4byte 0x0200116D
_0800D4C4: .4byte 0x020010B0
_0800D4C8: .4byte 0x0203F4E0
_0800D4CC: .4byte 0x02000342
_0800D4D0: .4byte 0x02000344
_0800D4D4: .4byte 0x04000008
_0800D4D8: .4byte 0x02000346
_0800D4DC: .4byte 0x0400000A
_0800D4E0: .4byte 0x02000348
_0800D4E4: .4byte 0x0400000C
_0800D4E8: .4byte 0x0200034A
_0800D4EC: .4byte 0x0400000E
_0800D4F0:
	bl audio_halt_all_fx
	ldr r0, _0800D53C
	movs r1, #1
	bl sub_80270AC
	ldr r1, _0800D540
	movs r0, #0
	strb r0, [r1]
	ldr r0, _0800D544
	movs r1, #1
	strb r1, [r0]
	ldr r0, _0800D548
	strb r1, [r0]
	ldr r1, _0800D54C
	movs r0, #0x80
	lsls r0, r0, #0x13
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r1, _0800D550
	ldr r0, _0800D554
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r1, _0800D558
	ldr r0, _0800D55C
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r1, _0800D560
	ldr r0, _0800D564
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r1, _0800D568
	ldr r0, _0800D56C
	ldrh r0, [r0]
	strh r0, [r1]
	movs r0, #7
	b _0800D5B8
	.align 2, 0
_0800D53C: .4byte 0x00000FFF
_0800D540: .4byte 0x0200116D
_0800D544: .4byte 0x020010B0
_0800D548: .4byte 0x0203F4E0
_0800D54C: .4byte 0x02000342
_0800D550: .4byte 0x02000344
_0800D554: .4byte 0x04000008
_0800D558: .4byte 0x02000346
_0800D55C: .4byte 0x0400000A
_0800D560: .4byte 0x02000348
_0800D564: .4byte 0x0400000C
_0800D568: .4byte 0x0200034A
_0800D56C: .4byte 0x0400000E
_0800D570:
	bl audio_halt_all_fx
	ldr r0, _0800D5C0
	movs r1, #1
	bl sub_80270AC
	ldr r1, _0800D5C4
	movs r0, #0
	strb r0, [r1]
	ldr r0, _0800D5C8
	movs r1, #1
	strb r1, [r0]
	ldr r0, _0800D5CC
	strb r1, [r0]
	ldr r1, _0800D5D0
	movs r0, #0x80
	lsls r0, r0, #0x13
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r1, _0800D5D4
	ldr r0, _0800D5D8
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r1, _0800D5DC
	ldr r0, _0800D5E0
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r1, _0800D5E4
	ldr r0, _0800D5E8
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r1, _0800D5EC
	ldr r0, _0800D5F0
	ldrh r0, [r0]
	strh r0, [r1]
	movs r0, #8
_0800D5B8:
	movs r1, #2
	bl sub_0805BA1C
	b _0800D5F8
	.align 2, 0
_0800D5C0: .4byte 0x00000FFF
_0800D5C4: .4byte 0x0200116D
_0800D5C8: .4byte 0x020010B0
_0800D5CC: .4byte 0x0203F4E0
_0800D5D0: .4byte 0x02000342
_0800D5D4: .4byte 0x02000344
_0800D5D8: .4byte 0x04000008
_0800D5DC: .4byte 0x02000346
_0800D5E0: .4byte 0x0400000A
_0800D5E4: .4byte 0x02000348
_0800D5E8: .4byte 0x0400000C
_0800D5EC: .4byte 0x0200034A
_0800D5F0: .4byte 0x0400000E
_0800D5F4:
	.2byte 0xEE00, 0xEE00
_0800D5F8:
	pop {r0}
	bx r0

	.thumb
	.global sub_800D5FC
sub_800D5FC: @ 0x0800D5FC
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r3, r0, #0
	adds r4, r1, #0
	adds r7, r2, #0
	ldr r1, _0800D620
	movs r0, #0
	strb r0, [r1]
	movs r6, #0
	movs r5, #0
	cmp r3, #9
	bls _0800D616
	b _0800D7A2
_0800D616:
	lsls r0, r3, #2
	ldr r1, _0800D624
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0800D620: .4byte 0x020010B0
_0800D624: .4byte 0x0800D628
_0800D628: @ jump table
	.4byte _0800D676 @ case 0
	.4byte _0800D6C2 @ case 1
	.4byte _0800D6E4 @ case 2
	.4byte _0800D706 @ case 3
	.4byte _0800D71E @ case 4
	.4byte _0800D69C @ case 5
	.4byte _0800D73C @ case 6
	.4byte _0800D75E @ case 7
	.4byte _0800D780 @ case 8
	.4byte _0800D650 @ case 9
_0800D650:
	movs r6, #4
	movs r0, #0xd9
	movs r1, #0x10
	bl sub_80342CC
	cmp r0, #0
	bne _0800D738
	cmp r4, #0
	beq _0800D672
	movs r0, #0xd9
	movs r1, #0x10
	movs r2, #0
	movs r3, #0
	bl sub_8034460
	movs r5, #0x45
	b _0800D7A6
_0800D672:
	movs r5, #0x46
	b _0800D7A6
_0800D676:
	movs r6, #8
	movs r0, #0xd9
	movs r1, #9
	bl sub_80342CC
	cmp r0, #0
	bne _0800D738
	cmp r4, #0
	beq _0800D698
	movs r0, #0xd9
	movs r1, #9
	movs r2, #0
	movs r3, #0
	bl sub_8034460
	movs r5, #0x54
	b _0800D7A6
_0800D698:
	movs r5, #0x55
	b _0800D7A6
_0800D69C:
	movs r6, #0x1a
	movs r0, #0xd9
	movs r1, #0xd
	bl sub_80342CC
	cmp r0, #0
	bne _0800D738
	cmp r4, #0
	beq _0800D6BE
	movs r0, #0xd9
	movs r1, #0xd
	movs r2, #0
	movs r3, #0
	bl sub_8034460
	movs r5, #0x76
	b _0800D7A6
_0800D6BE:
	movs r5, #0x77
	b _0800D7A6
_0800D6C2:
	movs r6, #8
	cmp r4, #0
	beq _0800D738
	movs r0, #0xd9
	movs r1, #0xa
	bl sub_80342CC
	cmp r0, #0
	bne _0800D738
	movs r0, #0xd9
	movs r1, #0xa
	movs r2, #0
	movs r3, #0
	bl sub_8034460
	movs r5, #0x4e
	b _0800D7A6
_0800D6E4:
	movs r6, #0x16
	cmp r4, #0
	beq _0800D738
	movs r0, #0xcd
	movs r1, #0
	bl sub_80342CC
	cmp r0, #0
	bne _0800D738
	movs r0, #0xcd
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_8034460
	movs r5, #0x81
	b _0800D7A6
_0800D706:
	movs r6, #8
	cmp r4, #0
	beq _0800D738
	movs r0, #0xd9
	movs r1, #0xb
	bl sub_80342CC
	cmp r0, #0
	bne _0800D738
	movs r0, #0xd9
	movs r1, #0xb
	b _0800D734
_0800D71E:
	movs r6, #0xf
	cmp r4, #0
	beq _0800D738
	movs r0, #0xd9
	movs r1, #0xe
	bl sub_80342CC
	cmp r0, #0
	bne _0800D738
	movs r0, #0xd9
	movs r1, #0xe
_0800D734:
	bl sub_80342F8
_0800D738:
	movs r5, #0
	b _0800D7A6
_0800D73C:
	movs r6, #5
	cmp r4, #0
	beq _0800D738
	movs r0, #0xd9
	movs r1, #0xf
	bl sub_80342CC
	cmp r0, #0
	bne _0800D738
	movs r0, #0xd9
	movs r1, #0xf
	movs r2, #0
	movs r3, #0
	bl sub_8034460
	movs r5, #0x48
	b _0800D7A6
_0800D75E:
	movs r6, #0x14
	cmp r4, #0
	beq _0800D738
	movs r0, #0xd9
	movs r1, #0x11
	bl sub_80342CC
	cmp r0, #0
	bne _0800D738
	movs r0, #0xd9
	movs r1, #0x11
	movs r2, #0
	movs r3, #0
	bl sub_8034460
	movs r5, #0x67
	b _0800D7A6
_0800D780:
	movs r6, #0xf
	cmp r4, #0
	beq _0800D738
	movs r0, #0xd9
	movs r1, #0x12
	bl sub_80342CC
	cmp r0, #0
	bne _0800D738
	movs r0, #0xd9
	movs r1, #0x12
	movs r2, #0
	movs r3, #0
	bl sub_8034460
	movs r5, #0x93
	b _0800D7A6
_0800D7A2:
	.2byte 0xEE00, 0xEE00
_0800D7A6:
	ldr r0, _0800D82C
	strb r6, [r0]
	ldr r1, _0800D830
	ldr r0, _0800D834
	ldrh r0, [r0]
	strb r0, [r1]
	ldrb r1, [r1]
	adds r0, r6, #0
	movs r2, #1
	movs r3, #0
	bl SetupRoom
	ldr r0, _0800D838
	ldrh r0, [r0]
	bl sub_8025E44
	ldr r0, _0800D83C
	ldrh r0, [r0]
	ldr r1, _0800D840
	ldrh r1, [r1]
	ldr r2, _0800D844
	ldrh r2, [r2]
	ldr r3, _0800D848
	ldrh r3, [r3]
	movs r4, #0x15
	str r4, [sp]
	movs r4, #0x20
	str r4, [sp, #4]
	bl sub_8013A10
	ldr r0, _0800D84C
	ldr r0, [r0]
	ldr r2, _0800D850
	ldr r1, _0800D854
	ldrb r1, [r1, #0xe]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl sub_800389C
	ldr r4, _0800D858
	adds r0, r4, #0
	bl sub_8018BB0
	bl sub_801A2E4
	ldr r1, _0800D85C
	movs r0, #0
	strb r0, [r1]
	movs r1, #0
	strb r1, [r4, #0x10]
	ldr r0, _0800D860
	strb r1, [r0]
	bl EnableBGAlphaBlending
	bl init_efx
	bl sub_0800ED80
	cmp r7, #0
	bne _0800D868
	ldr r0, _0800D864
	movs r1, #1
	movs r2, #1
	bl sub_8026E48
	b _0800D872
	.align 2, 0
_0800D82C: .4byte 0x020010A8
_0800D830: .4byte 0x020010A9
_0800D834: .4byte 0x02001128
_0800D838: .4byte gLoadedRoomLevel
_0800D83C: .4byte 0x0200145C
_0800D840: .4byte 0x0200145E
_0800D844: .4byte 0x02001460
_0800D848: .4byte 0x02001462
_0800D84C: .4byte dword_2000FC8
_0800D850: .4byte 0x080CC844
_0800D854: .4byte gRoomHeader
_0800D858: .4byte gPlayerSprite
_0800D85C: .4byte 0x0200108D
_0800D860: .4byte 0x0200108E
_0800D864: .4byte 0x00000FFF
_0800D868:
	ldr r0, _0800D8C0
	movs r1, #1
	movs r2, #1
	bl sub_8026F78
_0800D872:
	ldr r2, _0800D8C4
	ldr r0, _0800D8C8
	ldrh r3, [r0]
	strh r3, [r2, #6]
	ldr r0, _0800D8CC
	ldrh r1, [r0]
	strb r1, [r2, #8]
	ldr r0, _0800D8D0
	strh r3, [r0, #6]
	strb r1, [r0, #8]
	bl sub_803FE78
	bl sub_8040178
	ldr r0, _0800D8D4
	ldrb r0, [r0]
	cmp r0, #0
	beq _0800D8AA
	ldr r0, _0800D8D8
	ldrb r0, [r0]
	bl sub_8016C78
	ldr r2, _0800D8DC
	ldr r0, _0800D8E0
	ldrh r1, [r0]
	ldr r0, _0800D8E4
	ands r0, r1
	strh r0, [r2]
_0800D8AA:
	bl sub_8063178
	cmp r5, #0
	beq _0800D8B8
	adds r0, r5, #0
	bl init_function
_0800D8B8:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800D8C0: .4byte 0x00000FFF
_0800D8C4: .4byte gPlayerSprite
_0800D8C8: .4byte 0x02001464
_0800D8CC: .4byte 0x02001466
_0800D8D0: .4byte gPlayerShadowSprite
_0800D8D4: .4byte 0x020010A4
_0800D8D8: .4byte 0x020010A5
_0800D8DC: .4byte word_20010AC
_0800D8E0: .4byte gKeysPressed
_0800D8E4: .4byte 0x000003FF

    .thumb
	.global sub_800D8E8
sub_800D8E8: @ 0x0800D8E8
	push {r4, r5, r6, lr}
	sub sp, #8
	ldr r0, _0800D9A4
	movs r5, #0
	strb r5, [r0]
	ldr r0, _0800D9A8
	strb r5, [r0]
	ldr r0, _0800D9AC
	strb r1, [r0]
	ldr r0, _0800D9B0
	strb r2, [r0]
	ldr r0, _0800D9B4
	ldr r0, [r0]
	ldr r6, _0800D9B8
	ldr r1, [r6]
	movs r2, #1
	movs r3, #0
	bl SetupRoom
	ldr r0, _0800D9BC
	ldrh r0, [r0]
	bl sub_8025E44
	ldr r0, _0800D9C0
	ldrh r0, [r0]
	ldr r1, _0800D9C4
	ldrh r1, [r1]
	ldr r2, _0800D9C8
	ldrh r2, [r2]
	ldr r3, _0800D9CC
	ldrh r3, [r3]
	movs r4, #0x15
	str r4, [sp]
	movs r4, #0x20
	str r4, [sp, #4]
	bl sub_8013A10
	ldr r0, _0800D9D0
	ldr r0, [r0]
	ldr r2, _0800D9D4
	ldr r1, _0800D9D8
	ldrb r1, [r1, #0xe]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl sub_800389C
	bl EnableBGAlphaBlending
	bl sub_0800ED80
	ldr r0, _0800D9DC
	strb r5, [r0]
	ldr r4, _0800D9E0
	movs r1, #0
	strb r1, [r4, #0x10]
	ldr r0, _0800D9E4
	strb r1, [r0]
	ldr r0, [r6]
	bl sub_800EF6C
	ldr r0, _0800D9E8
	ldrh r2, [r0]
	strh r2, [r4, #6]
	ldr r0, _0800D9EC
	ldrh r1, [r0]
	strb r1, [r4, #8]
	ldr r0, _0800D9F0
	strh r2, [r0, #6]
	strb r1, [r0, #8]
	bl sub_803FE78
	bl sub_8040178
	bl sub_80409DC
	bl sub_8063178
	ldr r2, _0800D9F4
	ldr r0, _0800D9F8
	movs r3, #0
	ldrsh r1, [r0, r3]
	movs r0, #0x88
	subs r0, r0, r1
	str r0, [r2]
	ldr r1, _0800D9FC
	ldr r0, _0800DA00
	movs r2, #0
	ldrsh r0, [r0, r2]
	str r0, [r1]
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800D9A4: .4byte 0x020010B0
_0800D9A8: .4byte 0x0203FA95
_0800D9AC: .4byte 0x0203FA94
_0800D9B0: .4byte 0x0203FA96
_0800D9B4: .4byte 0x0203FA8C
_0800D9B8: .4byte 0x0203FA90
_0800D9BC: .4byte gLoadedRoomLevel
_0800D9C0: .4byte 0x0200145C
_0800D9C4: .4byte 0x0200145E
_0800D9C8: .4byte 0x02001460
_0800D9CC: .4byte 0x02001462
_0800D9D0: .4byte dword_2000FC8
_0800D9D4: .4byte 0x080CC844
_0800D9D8: .4byte gRoomHeader
_0800D9DC: .4byte 0x0200108D
_0800D9E0: .4byte gPlayerSprite
_0800D9E4: .4byte 0x0200108E
_0800D9E8: .4byte 0x02001464
_0800D9EC: .4byte 0x02001466
_0800D9F0: .4byte gPlayerShadowSprite
_0800D9F4: .4byte 0x02001110
_0800D9F8: .4byte gCameraPixelX
_0800D9FC: .4byte 0x02001114
_0800DA00: .4byte gCameraPixelY

    .thumb
	.global sub_800DA04
sub_800DA04: @ 0x0800DA04
	push {r4, r5, lr}
	sub sp, #8
	adds r5, r2, #0
	ldr r0, _0800DAA0
	movs r1, #0
	strb r1, [r0]
	ldr r0, _0800DAA4
	strb r1, [r0]
	ldr r0, _0800DAA8
	ldr r0, [r0]
	ldr r1, _0800DAAC
	ldr r1, [r1]
	movs r2, #1
	movs r3, #0
	bl SetupRoom
	ldr r0, _0800DAB0
	ldrb r0, [r0]
	cmp r0, #0
	beq _0800DA32
	movs r0, #0xf
	bl audio_start_tune
_0800DA32:
	ldr r0, _0800DAB4
	ldrh r0, [r0]
	bl sub_8025E44
	ldr r0, _0800DAB8
	ldrh r0, [r0]
	ldr r1, _0800DABC
	ldrh r1, [r1]
	ldr r2, _0800DAC0
	ldrh r2, [r2]
	ldr r3, _0800DAC4
	ldrh r3, [r3]
	movs r4, #0x15
	str r4, [sp]
	movs r4, #0x20
	str r4, [sp, #4]
	bl sub_8013A10
	ldr r0, _0800DAC8
	ldr r0, [r0]
	ldr r2, _0800DACC
	ldr r1, _0800DAD0
	ldrb r1, [r1, #0xe]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl sub_800389C
	bl EnableBGAlphaBlending
	ldr r2, _0800DAD4
	ldr r0, _0800DAD8
	ldrh r3, [r0]
	strh r3, [r2, #6]
	ldr r0, _0800DADC
	ldrh r1, [r0]
	strb r1, [r2, #8]
	ldr r0, _0800DAE0
	strh r3, [r0, #6]
	strb r1, [r0, #8]
	bl sub_803FE78
	bl sub_8040178
	bl sub_80409DC
	bl sub_8063178
	adds r0, r5, #0
	bl sub_8047000
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800DAA0: .4byte 0x020010B0
_0800DAA4: .4byte 0x0203F4E0
_0800DAA8: .4byte 0x0203F4E4
_0800DAAC: .4byte 0x0203F4E8
_0800DAB0: .4byte 0x0203EA88
_0800DAB4: .4byte gLoadedRoomLevel
_0800DAB8: .4byte 0x0200145C
_0800DABC: .4byte 0x0200145E
_0800DAC0: .4byte 0x02001460
_0800DAC4: .4byte 0x02001462
_0800DAC8: .4byte dword_2000FC8
_0800DACC: .4byte 0x080CC844
_0800DAD0: .4byte gRoomHeader
_0800DAD4: .4byte gPlayerSprite
_0800DAD8: .4byte 0x02001464
_0800DADC: .4byte 0x02001466
_0800DAE0: .4byte gPlayerShadowSprite

    .thumb
	.global sub_800DAE4
sub_800DAE4: @ 0x0800DAE4
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r5, _0800DB40
	movs r0, #0
	ldrsb r0, [r5, r0]
	cmp r0, #0
	bge _0800DAFA
	ldr r0, _0800DB44
	ldr r1, _0800DB48
	bl sub_080121F0
_0800DAFA:
	cmp r4, #0
	bne _0800DB50
	movs r0, #0
	ldrsb r0, [r5, r0]
	adds r0, #9
	bl sub_0804207C
	cmp r0, #0
	bne _0800DB50
	movs r0, #0
	ldrsb r0, [r5, r0]
	adds r0, #9
	bl sub_080420E8
	cmp r0, #0
	beq _0800DB1C
	b _0800DC46
_0800DB1C:
	movs r0, #0
	ldrsb r0, [r5, r0]
	adds r0, #9
	bl sub_08041FA4
	movs r2, #0
	ldrsb r2, [r5, r2]
	adds r0, r2, #0
	adds r0, #9
	ldr r1, _0800DB4C
	adds r1, #0xe
	adds r2, r2, r1
	movs r1, #0
	ldrsb r1, [r2, r1]
	bl sub_08040204
	b _0800DC46
	.align 2, 0
_0800DB40: .4byte 0x0200108C
_0800DB44: .4byte 0x08064848
_0800DB48: .4byte 0x08064850
_0800DB4C: .4byte gGameStatus
_0800DB50:
	ldr r0, _0800DC20
	movs r5, #0
	ldrsb r5, [r0, r5]
	movs r1, #0
	adds r2, r5, #0
	ldr r7, _0800DC24
	ldr r6, _0800DC28
	movs r3, #3
_0800DB60:
	adds r5, #1
	ands r5, r3
	cmp r5, r2
	beq _0800DC46
	adds r0, r5, #6
	adds r0, r0, r7
	ldrb r0, [r0]
	cmp r0, #0
	beq _0800DB84
	cmp r4, #0
	beq _0800DB88
	adds r0, r5, r6
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _0800DB84
	movs r1, #1
_0800DB84:
	cmp r1, #0
	beq _0800DB60
_0800DB88:
	cmp r4, #0
	beq _0800DBA4
	ldr r0, _0800DC20
	movs r2, #0
	ldrsb r2, [r0, r2]
	adds r0, r2, #0
	adds r0, #9
	ldr r1, _0800DC2C
	adds r1, #0xe
	adds r2, r2, r1
	movs r1, #0
	ldrsb r1, [r2, r1]
	bl sub_08040204
_0800DBA4:
	ldr r4, _0800DC20
	movs r0, #0
	ldrsb r0, [r4, r0]
	adds r0, #9
	bl sub_0804200C
	strb r5, [r4]
	movs r0, #0
	ldrsb r0, [r4, r0]
	adds r0, #9
	bl sub_08041FA4
	movs r2, #0
	ldrsb r2, [r4, r2]
	adds r0, r2, #0
	adds r0, #9
	ldr r1, _0800DC2C
	adds r1, #0xe
	adds r2, r2, r1
	movs r1, #0
	ldrsb r1, [r2, r1]
	bl sub_08040204
	ldr r4, _0800DC30
	ldr r0, [r4]
	bl audio_fx_still_active
	cmp r0, #0
	beq _0800DBEC
	ldr r0, _0800DC34
	ldrb r0, [r0]
	cmp r0, #0
	beq _0800DBEC
	ldr r0, [r4]
	bl audio_halt_fx
_0800DBEC:
	ldr r4, _0800DC30
	ldr r0, _0800DC34
	ldrb r0, [r0]
	cmp r0, #0
	beq _0800DC40
	ldr r3, _0800DC38
	movs r1, #0x9c
	lsls r1, r1, #1
	adds r0, r3, r1
	ldrh r0, [r0]
	ldr r2, _0800DC3C
	movs r5, #0x9d
	lsls r5, r5, #1
	adds r1, r3, r5
	ldrb r2, [r2]
	adds r1, r1, r2
	ldrb r1, [r1]
	adds r5, #2
	adds r2, r3, r5
	ldr r2, [r2]
	movs r3, #0x80
	lsls r3, r3, #9
	adds r2, r2, r3
	bl audio_new_fx
	b _0800DC44
	.align 2, 0
_0800DC20: .4byte 0x0200108C
_0800DC24: .4byte 0x0200209A
_0800DC28: .4byte 0x02001052
_0800DC2C: .4byte gGameStatus
_0800DC30: .4byte 0x02001124
_0800DC34: .4byte byte_203EA89
_0800DC38: .4byte 0x080CE440
_0800DC3C: .4byte byte_203EA8C
_0800DC40:
	movs r0, #1
	rsbs r0, r0, #0
_0800DC44:
	str r0, [r4]
_0800DC46:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

    .thumb
	.global sub_800DC4C
sub_800DC4C: @ 0x0800DC4C
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r3, _0800DC88
	movs r0, #0
	ldrsb r0, [r3, r0]
	cmp r0, #0
	bge _0800DC90
	ldr r1, _0800DC8C
	ldrb r0, [r1, #0xe]
	subs r0, r0, r4
	strb r0, [r1, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bgt _0800DC78
	movs r0, #0
	strb r0, [r1, #0xe]
	cmp r5, #0
	beq _0800DC78
	movs r0, #1
	bl sub_800DAE4
_0800DC78:
	ldr r0, _0800DC8C
	movs r1, #0xe
	ldrsb r1, [r0, r1]
	movs r0, #9
	bl sub_08040204
	b _0800DCD4
	.align 2, 0
_0800DC88: .4byte 0x0200108C
_0800DC8C: .4byte gGameStatus
_0800DC90:
	ldr r2, _0800DCDC
	movs r1, #0
	ldrsb r1, [r3, r1]
	adds r2, #0xe
	adds r1, r1, r2
	ldrb r0, [r1]
	subs r0, r0, r4
	strb r0, [r1]
	movs r0, #0
	ldrsb r0, [r3, r0]
	adds r1, r0, r2
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bgt _0800DCBC
	movs r0, #0
	strb r0, [r1]
	cmp r5, #0
	beq _0800DCBC
	movs r0, #1
	bl sub_800DAE4
_0800DCBC:
	ldr r0, _0800DCE0
	movs r2, #0
	ldrsb r2, [r0, r2]
	adds r0, r2, #0
	adds r0, #9
	ldr r1, _0800DCDC
	adds r1, #0xe
	adds r2, r2, r1
	movs r1, #0
	ldrsb r1, [r2, r1]
	bl sub_08040204
_0800DCD4:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800DCDC: .4byte gGameStatus
_0800DCE0: .4byte 0x0200108C

    .thumb
	.global sub_800DCE4
sub_800DCE4: @ 0x0800DCE4
	push {r4, r5, r6, lr}
	adds r3, r0, #0
	ldr r6, _0800DD1C
	movs r0, #0
	ldrsb r0, [r6, r0]
	cmp r0, #0
	bge _0800DD28
	ldr r2, _0800DD20
	ldrb r0, [r2, #0xe]
	adds r0, r0, r3
	strb r0, [r2, #0xe]
	ldr r1, _0800DD24
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrb r3, [r1, #0xe]
	ldrb r1, [r1, #0xe]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	cmp r0, r1
	ble _0800DD0E
	strb r3, [r2, #0xe]
_0800DD0E:
	movs r1, #0xe
	ldrsb r1, [r2, r1]
	movs r0, #9
	bl sub_08040204
	b _0800DD6A
	.align 2, 0
_0800DD1C: .4byte 0x0200108C
_0800DD20: .4byte gGameStatus
_0800DD24: .4byte 0x080CC8C4
_0800DD28:
	ldr r0, _0800DD70
	movs r1, #0
	ldrsb r1, [r6, r1]
	adds r5, r0, #0
	adds r5, #0xe
	adds r1, r1, r5
	ldrb r0, [r1]
	adds r0, r0, r3
	strb r0, [r1]
	movs r1, #0
	ldrsb r1, [r6, r1]
	adds r4, r1, r5
	ldr r0, _0800DD74
	adds r0, #0xe
	adds r1, r1, r0
	movs r2, #0
	ldrsb r2, [r4, r2]
	ldrb r3, [r1]
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r2, r0
	ble _0800DD56
	strb r3, [r4]
_0800DD56:
	movs r1, #0
	ldrsb r1, [r6, r1]
	adds r0, r1, #0
	adds r0, #9
	adds r1, r1, r5
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	bl sub_08040204
_0800DD6A:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800DD70: .4byte gGameStatus
_0800DD74: .4byte 0x080CC8C4

	.thumb
sub_800DD78: @ 0x0800DD78
	push {r4, r5, r6, lr}
	adds r2, r0, #0
	ldr r6, _0800DDAC
	movs r0, #0
	ldrsb r0, [r6, r0]
	cmp r0, #0
	bge _0800DDB8
	ldr r3, _0800DDB0
	strb r2, [r3, #0xe]
	ldr r0, _0800DDB4
	lsls r1, r2, #0x18
	asrs r1, r1, #0x18
	ldrb r2, [r0, #0xe]
	ldrb r0, [r0, #0xe]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r1, r0
	ble _0800DD9E
	strb r2, [r3, #0xe]
_0800DD9E:
	movs r1, #0xe
	ldrsb r1, [r3, r1]
	movs r0, #9
	bl sub_08040204
	b _0800DDF6
	.align 2, 0
_0800DDAC: .4byte 0x0200108C
_0800DDB0: .4byte gGameStatus
_0800DDB4: .4byte 0x080CC8C4
_0800DDB8:
	ldr r1, _0800DDFC
	movs r0, #0
	ldrsb r0, [r6, r0]
	adds r5, r1, #0
	adds r5, #0xe
	adds r0, r0, r5
	strb r2, [r0]
	movs r1, #0
	ldrsb r1, [r6, r1]
	adds r4, r1, r5
	ldr r0, _0800DE00
	adds r0, #0xe
	adds r1, r1, r0
	movs r2, #0
	ldrsb r2, [r4, r2]
	ldrb r3, [r1]
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r2, r0
	ble _0800DDE2
	strb r3, [r4]
_0800DDE2:
	movs r1, #0
	ldrsb r1, [r6, r1]
	adds r0, r1, #0
	adds r0, #9
	adds r1, r1, r5
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	bl sub_08040204
_0800DDF6:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800DDFC: .4byte gGameStatus
_0800DE00: .4byte 0x080CC8C4

    .thumb
    .global sub_800DE04
sub_800DE04: @ 0x0800DE04
	push {r4, lr}
	ldr r2, _0800DE1C
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #0
	bge _0800DE46
	ldr r1, _0800DE20
	ldrb r0, [r1, #6]
	cmp r0, #0
	beq _0800DE24
	movs r0, #0
	b _0800DE44
	.align 2, 0
_0800DE1C: .4byte 0x0200108C
_0800DE20: .4byte 0x0200209A
_0800DE24:
	ldrb r0, [r1, #7]
	cmp r0, #0
	beq _0800DE2E
	movs r0, #1
	b _0800DE44
_0800DE2E:
	ldrb r0, [r1, #8]
	cmp r0, #0
	beq _0800DE38
	movs r0, #2
	b _0800DE44
_0800DE38:
	ldrb r0, [r1, #9]
	cmp r0, #0
	bne _0800DE42
	movs r0, #0
	b _0800DE8E
_0800DE42:
	movs r0, #3
_0800DE44:
	strb r0, [r2]
_0800DE46:
	movs r4, #0xe0
	lsls r4, r4, #0xb
	movs r0, #9
	adds r1, r4, #0
	bl sub_08041F3C
	movs r0, #0xa
	adds r1, r4, #0
	bl sub_08041F3C
	movs r0, #0xb
	adds r1, r4, #0
	bl sub_08041F3C
	movs r0, #0xc
	adds r1, r4, #0
	bl sub_08041F3C
	ldr r4, _0800DE94
	movs r0, #0
	ldrsb r0, [r4, r0]
	adds r0, #9
	bl sub_08041FA4
	movs r2, #0
	ldrsb r2, [r4, r2]
	adds r0, r2, #0
	adds r0, #9
	ldr r1, _0800DE98
	adds r1, #0xe
	adds r2, r2, r1
	movs r1, #0
	ldrsb r1, [r2, r1]
	bl sub_08040204
	movs r0, #1
_0800DE8E:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0800DE94: .4byte 0x0200108C
_0800DE98: .4byte gGameStatus

    .thumb
	.global sub_800DE9C
sub_800DE9C: @ 0x0800DE9C
	push {r4, r5, lr}
	ldr r5, _0800DEDC
	movs r0, #0
	ldrsb r0, [r5, r0]
	cmp r0, #0
	blt _0800DED4
	ldr r4, _0800DEE0
	movs r0, #9
	adds r1, r4, #0
	bl sub_08041F3C
	movs r0, #0xa
	adds r1, r4, #0
	bl sub_08041F3C
	movs r0, #0xb
	adds r1, r4, #0
	bl sub_08041F3C
	movs r0, #0xc
	adds r1, r4, #0
	bl sub_08041F3C
	movs r0, #0
	ldrsb r0, [r5, r0]
	adds r0, #9
	bl sub_0804200C
_0800DED4:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800DEDC: .4byte 0x0200108C
_0800DEE0: .4byte 0x0002CCCC

    .thumb
    .global sub_800DEE4
sub_800DEE4: @ 0x0800DEE4
	push {lr}
	ldr r0, _0800DF0C
	ldrh r0, [r0]
	cmp r0, #0x21
	bgt _0800DF20
	cmp r0, #0x20
	blt _0800DF20
	ldr r0, _0800DF10
	ldrb r0, [r0]
	cmp r0, #3
	beq _0800DF2C
	ldr r0, _0800DF14
	movs r1, #1
	str r1, [r0]
	ldr r0, _0800DF18
	str r1, [r0]
	ldr r1, _0800DF1C
	movs r0, #0xf0
	b _0800DF2A
	.align 2, 0
_0800DF0C: .4byte gLoadedRoomIndex
_0800DF10: .4byte byte_20020B1
_0800DF14: .4byte gPoisonEffectEnabled
_0800DF18: .4byte 0x020011F8
_0800DF1C: .4byte gPoisonHitTimer
_0800DF20:
	ldr r1, _0800DF30
	ldr r0, [r1]
	cmp r0, #0
	beq _0800DF2C
	movs r0, #0
_0800DF2A:
	str r0, [r1]
_0800DF2C:
	pop {r0}
	bx r0
	.align 2, 0
_0800DF30: .4byte gPoisonEffectEnabled

    .thumb
    .global sub_800DF34
sub_800DF34: @ 0x0800DF34
	push {r4, r5, lr}
	ldr r0, _0800DF6C
	ldr r0, [r0]
	cmp r0, #0
	beq _0800DF84
	ldr r0, _0800DF70
	ldrb r0, [r0]
	cmp r0, #0
	bne _0800DF84
	ldr r0, _0800DF74
	ldrb r0, [r0, #0x13]
	cmp r0, #0
	beq _0800DF84
	ldr r1, _0800DF78
	ldr r0, [r1]
	cmp r0, #0
	bne _0800DF80
	movs r0, #0xf0
	str r0, [r1]
	ldr r0, _0800DF7C
	ldr r0, [r0]
	movs r1, #1
	rsbs r1, r1, #0
	movs r2, #1
	bl sub_80192D4
	b _0800DF84
	.align 2, 0
_0800DF6C: .4byte gPoisonEffectEnabled
_0800DF70: .4byte byte_203F99C
_0800DF74: .4byte gGameStatus
_0800DF78: .4byte gPoisonHitTimer
_0800DF7C: .4byte 0x020011F8
_0800DF80:
	subs r0, #1
	str r0, [r1]
_0800DF84:
	ldr r3, _0800DFA0
	ldrb r0, [r3]
	cmp r0, #0
	beq _0800DFB0
	ldr r2, _0800DFA4
	ldrh r0, [r2]
	adds r1, r0, #0
	cmp r1, #0
	bne _0800DFAC
	strb r1, [r3]
	ldr r0, _0800DFA8
	strb r1, [r0, #0x10]
	b _0800DFB0
	.align 2, 0
_0800DFA0: .4byte 0x0200108D
_0800DFA4: .4byte 0x02001090
_0800DFA8: .4byte gPlayerSprite
_0800DFAC:
	subs r0, #1
	strh r0, [r2]
_0800DFB0:
	ldr r3, _0800DFD0
	ldrb r0, [r3]
	cmp r0, #0
	beq _0800DFE2
	ldr r0, _0800DFD4
	ldrh r1, [r0]
	adds r2, r0, #0
	cmp r1, #0
	bne _0800DFDC
	ldr r0, _0800DFD8
	ldrb r0, [r0]
	cmp r0, #0
	bne _0800DFDC
	strb r0, [r3]
	b _0800DFE2
	.align 2, 0
_0800DFD0: .4byte 0x0200108E
_0800DFD4: .4byte 0x02001092
_0800DFD8: .4byte byte_20020BC
_0800DFDC:
	ldrh r0, [r2]
	subs r0, #1
	strh r0, [r2]
_0800DFE2:
	ldr r0, _0800E048
	ldrb r0, [r0]
	cmp r0, #0
	bne _0800DFEC
	b _0800E172
_0800DFEC:
	ldr r0, _0800E04C
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r2, r0, #0
	ldr r4, _0800E050
	cmp r1, #0
	bne _0800E070
	ldrb r0, [r4]
	cmp r0, #0
	bne _0800E070
	ldr r1, _0800E054
	movs r0, #1
	strb r0, [r1, #0x13]
	ldr r1, _0800E058
	ldr r0, _0800E05C
	ldrh r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #4
	ands r0, r1
	cmp r0, #0
	beq _0800E01E
	b _0800E172
_0800E01E:
	bl sub_800E7A0
	ldr r0, _0800E060
	ldrb r0, [r0, #0x13]
	cmp r0, #0
	bne _0800E02C
	b _0800E172
_0800E02C:
	ldr r2, _0800E064
	ldr r0, _0800E068
	ldrh r1, [r0]
	lsls r1, r1, #2
	adds r2, r1, r2
	ldr r0, [r2]
	ldr r2, _0800E06C
	adds r1, r1, r2
	ldr r1, [r1]
	movs r2, #1
	bl sub_800BFA0
	b _0800E172
	.align 2, 0
_0800E048: .4byte byte_200112A
_0800E04C: .4byte 0x0200112C
_0800E050: .4byte 0x0200113D
_0800E054: .4byte 0x02000FAC
_0800E058: .4byte gPlayerStateSettings
_0800E05C: .4byte gPlayerState
_0800E060: .4byte gGameStatus
_0800E064: .4byte 0x080CEBF8
_0800E068: .4byte gLoadedRoomLevel
_0800E06C: .4byte 0x080CEBE0
_0800E070:
	ldrh r0, [r2]
	subs r0, #1
	strh r0, [r2]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _0800E080
	movs r0, #0
	strh r0, [r2]
_0800E080:
	adds r5, r4, #0
	ldrb r0, [r5]
	cmp r0, #0
	beq _0800E0C4
	ldr r2, _0800E0B8
	ldrh r0, [r2]
	movs r1, #0
	ldrsh r3, [r2, r1]
	cmp r3, #0
	bne _0800E100
	ldr r1, _0800E0BC
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #2
	bgt _0800E0A8
	movs r0, #3
	strh r0, [r1]
_0800E0A8:
	ldrh r0, [r1]
	strh r0, [r2]
	strb r3, [r5]
	ldr r1, _0800E0C0
	movs r0, #1
	strb r0, [r1, #0x13]
	b _0800E104
	.align 2, 0
_0800E0B8: .4byte 0x0200112E
_0800E0BC: .4byte 0x02001130
_0800E0C0: .4byte 0x02000FAC
_0800E0C4:
	ldr r2, _0800E0F4
	ldrh r0, [r2]
	movs r1, #0
	ldrsh r3, [r2, r1]
	cmp r3, #0
	bne _0800E100
	ldr r1, _0800E0F8
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #2
	bgt _0800E0E4
	movs r0, #3
	strh r0, [r1]
_0800E0E4:
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #1
	strb r0, [r4]
	ldr r0, _0800E0FC
	strb r3, [r0, #0x13]
	b _0800E104
	.align 2, 0
_0800E0F4: .4byte 0x02001132
_0800E0F8: .4byte 0x02001134
_0800E0FC: .4byte 0x02000FAC
_0800E100:
	subs r0, #1
	strh r0, [r2]
_0800E104:
	ldr r0, _0800E158
	ldr r0, [r0]
	bl audio_fx_still_active
	cmp r0, #0
	bne _0800E172
	ldr r5, _0800E15C
_0800E112:
	movs r0, #0x43
	movs r1, #0x45
	bl RandomMinMax
	adds r4, r0, #0
	ldrb r2, [r5]
	cmp r4, r2
	beq _0800E112
	ldr r0, _0800E15C
	strb r4, [r0]
	ldr r5, _0800E158
	ldr r0, _0800E160
	ldrb r0, [r0]
	cmp r0, #0
	beq _0800E16C
	ldr r3, _0800E164
	lsls r4, r4, #3
	adds r0, r4, r3
	ldrh r0, [r0]
	ldr r1, _0800E168
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
	b _0800E170
	.align 2, 0
_0800E158: .4byte 0x02001138
_0800E15C: .4byte 0x0200113C
_0800E160: .4byte byte_203EA89
_0800E164: .4byte 0x080CE440
_0800E168: .4byte byte_203EA8C
_0800E16C:
	movs r0, #1
	rsbs r0, r0, #0
_0800E170:
	str r0, [r5]
_0800E172:
	pop {r4, r5}
	pop {r0}
	bx r0

    .thumb
	.global sub_800E178
sub_800E178: @ 0x0800E178
	push {r4, lr}
	cmp r0, #0
	beq _0800E1FC
	ldr r2, _0800E1D4
	ldrb r1, [r2, #0x13]
	cmp r1, r0
	bgt _0800E1F0
	movs r0, #0
	strb r0, [r2, #0x13]
	movs r0, #0x38
	movs r1, #0
	bl sub_08040204
	ldr r0, _0800E1D8
	ldrb r0, [r0]
	cmp r0, #0
	beq _0800E1C2
	ldr r2, _0800E1DC
	movs r1, #0x9e
	lsls r1, r1, #2
	adds r0, r2, r1
	ldrh r0, [r0]
	ldr r3, _0800E1E0
	ldr r4, _0800E1E4
	adds r1, r2, r4
	ldrb r3, [r3]
	adds r1, r1, r3
	ldrb r1, [r1]
	movs r3, #0x9f
	lsls r3, r3, #2
	adds r2, r2, r3
	ldr r2, [r2]
	movs r4, #0x80
	lsls r4, r4, #9
	adds r2, r2, r4
	bl audio_new_fx
_0800E1C2:
	ldr r0, _0800E1E8
	ldrb r0, [r0]
	cmp r0, #0
	beq _0800E1FC
	ldr r1, _0800E1EC
	movs r0, #1
	strb r0, [r1]
	b _0800E1FC
	.align 2, 0
_0800E1D4: .4byte gGameStatus
_0800E1D8: .4byte byte_203EA89
_0800E1DC: .4byte 0x080CE440
_0800E1E0: .4byte byte_203EA8C
_0800E1E4: .4byte 0x0000027A
_0800E1E8: .4byte gIsSlideMiniGame
_0800E1EC: .4byte 0x020010B0
_0800E1F0:
	subs r0, r1, r0
	strb r0, [r2, #0x13]
	ldrb r1, [r2, #0x13]
	movs r0, #0x38
	bl sub_08040204
_0800E1FC:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

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
_0800E3FC: .4byte gBgmVolumeIndex
_0800E400: .4byte gSfxVolumeIndex
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
_0800E610: .4byte gBgmVolumeIndex
_0800E614: .4byte gSfxVolumeIndex
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
_0800E6C8: .4byte byte_20020B1
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
_0800E784: .4byte byte_203EA89
_0800E788: .4byte 0x080CE440
_0800E78C: .4byte byte_203EA8C
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
