
    .syntax unified

    .text

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
	bl init_room_name
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
	bl init_room_name
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
_0800DC34: .4byte gCanPlaySfx
_0800DC38: .4byte 0x080CE440
_0800DC3C: .4byte gSfxVolume
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
    .global enable_poison_effect
enable_poison_effect: @ 0x0800DEE4
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
_0800E160: .4byte gCanPlaySfx
_0800E164: .4byte 0x080CE440
_0800E168: .4byte gSfxVolume
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
	.global decrease_player_health
decrease_player_health: @ 0x0800E178
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
_0800E1D8: .4byte gCanPlaySfx
_0800E1DC: .4byte 0x080CE440
_0800E1E0: .4byte gSfxVolume
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
