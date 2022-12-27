
    .syntax unified

    .text

@     .thumb
@ 	.global sub_800DAE4
@ sub_800DAE4: @ 0x0800DAE4
@ 	push {r4, r5, r6, r7, lr}
@ 	adds r4, r0, #0
@ 	ldr r5, _0800DB40
@ 	movs r0, #0
@ 	ldrsb r0, [r5, r0]
@ 	cmp r0, #0
@ 	bge _0800DAFA
@ 	ldr r0, _0800DB44
@ 	ldr r1, _0800DB48
@ 	bl sub_080121F0
@ _0800DAFA:
@ 	cmp r4, #0
@ 	bne _0800DB50
@ 	movs r0, #0
@ 	ldrsb r0, [r5, r0]
@ 	adds r0, #9
@ 	bl sub_0804207C
@ 	cmp r0, #0
@ 	bne _0800DB50
@ 	movs r0, #0
@ 	ldrsb r0, [r5, r0]
@ 	adds r0, #9
@ 	bl sub_080420E8
@ 	cmp r0, #0
@ 	beq _0800DB1C
@ 	b _0800DC46
@ _0800DB1C:
@ 	movs r0, #0
@ 	ldrsb r0, [r5, r0]
@ 	adds r0, #9
@ 	bl sub_08041FA4
@ 	movs r2, #0
@ 	ldrsb r2, [r5, r2]
@ 	adds r0, r2, #0
@ 	adds r0, #9
@ 	ldr r1, _0800DB4C
@ 	adds r1, #0xe
@ 	adds r2, r2, r1
@ 	movs r1, #0
@ 	ldrsb r1, [r2, r1]
@ 	bl sub_08040204
@ 	b _0800DC46
@ 	.align 2, 0
@ _0800DB40: .4byte 0x0200108C
@ _0800DB44: .4byte 0x08064848
@ _0800DB48: .4byte 0x08064850
@ _0800DB4C: .4byte gGameStatus
@ _0800DB50:
@ 	ldr r0, _0800DC20
@ 	movs r5, #0
@ 	ldrsb r5, [r0, r5]
@ 	movs r1, #0
@ 	adds r2, r5, #0
@ 	ldr r7, _0800DC24
@ 	ldr r6, _0800DC28
@ 	movs r3, #3
@ _0800DB60:
@ 	adds r5, #1
@ 	ands r5, r3
@ 	cmp r5, r2
@ 	beq _0800DC46
@ 	adds r0, r5, #6
@ 	adds r0, r0, r7
@ 	ldrb r0, [r0]
@ 	cmp r0, #0
@ 	beq _0800DB84
@ 	cmp r4, #0
@ 	beq _0800DB88
@ 	adds r0, r5, r6
@ 	ldrb r0, [r0]
@ 	lsls r0, r0, #0x18
@ 	asrs r0, r0, #0x18
@ 	cmp r0, #0
@ 	beq _0800DB84
@ 	movs r1, #1
@ _0800DB84:
@ 	cmp r1, #0
@ 	beq _0800DB60
@ _0800DB88:
@ 	cmp r4, #0
@ 	beq _0800DBA4
@ 	ldr r0, _0800DC20
@ 	movs r2, #0
@ 	ldrsb r2, [r0, r2]
@ 	adds r0, r2, #0
@ 	adds r0, #9
@ 	ldr r1, _0800DC2C
@ 	adds r1, #0xe
@ 	adds r2, r2, r1
@ 	movs r1, #0
@ 	ldrsb r1, [r2, r1]
@ 	bl sub_08040204
@ _0800DBA4:
@ 	ldr r4, _0800DC20
@ 	movs r0, #0
@ 	ldrsb r0, [r4, r0]
@ 	adds r0, #9
@ 	bl sub_0804200C
@ 	strb r5, [r4]
@ 	movs r0, #0
@ 	ldrsb r0, [r4, r0]
@ 	adds r0, #9
@ 	bl sub_08041FA4
@ 	movs r2, #0
@ 	ldrsb r2, [r4, r2]
@ 	adds r0, r2, #0
@ 	adds r0, #9
@ 	ldr r1, _0800DC2C
@ 	adds r1, #0xe
@ 	adds r2, r2, r1
@ 	movs r1, #0
@ 	ldrsb r1, [r2, r1]
@ 	bl sub_08040204
@ 	ldr r4, _0800DC30
@ 	ldr r0, [r4]
@ 	bl audio_fx_still_active
@ 	cmp r0, #0
@ 	beq _0800DBEC
@ 	ldr r0, _0800DC34
@ 	ldrb r0, [r0]
@ 	cmp r0, #0
@ 	beq _0800DBEC
@ 	ldr r0, [r4]
@ 	bl audio_halt_fx
@ _0800DBEC:
@ 	ldr r4, _0800DC30
@ 	ldr r0, _0800DC34
@ 	ldrb r0, [r0]
@ 	cmp r0, #0
@ 	beq _0800DC40
@ 	ldr r3, _0800DC38
@ 	movs r1, #0x9c
@ 	lsls r1, r1, #1
@ 	adds r0, r3, r1
@ 	ldrh r0, [r0]
@ 	ldr r2, _0800DC3C
@ 	movs r5, #0x9d
@ 	lsls r5, r5, #1
@ 	adds r1, r3, r5
@ 	ldrb r2, [r2]
@ 	adds r1, r1, r2
@ 	ldrb r1, [r1]
@ 	adds r5, #2
@ 	adds r2, r3, r5
@ 	ldr r2, [r2]
@ 	movs r3, #0x80
@ 	lsls r3, r3, #9
@ 	adds r2, r2, r3
@ 	bl audio_new_fx
@ 	b _0800DC44
@ 	.align 2, 0
@ _0800DC20: .4byte 0x0200108C
@ _0800DC24: .4byte 0x0200209A
@ _0800DC28: .4byte 0x02001052
@ _0800DC2C: .4byte gGameStatus
@ _0800DC30: .4byte 0x02001124
@ _0800DC34: .4byte gCanPlaySfx
@ _0800DC38: .4byte 0x080CE440
@ _0800DC3C: .4byte gSfxVolume
@ _0800DC40:
@ 	movs r0, #1
@ 	rsbs r0, r0, #0
@ _0800DC44:
@ 	str r0, [r4]
@ _0800DC46:
@ 	pop {r4, r5, r6, r7}
@ 	pop {r0}
@ 	bx r0

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
