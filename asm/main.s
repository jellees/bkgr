    .syntax unified

    .text

    .thumb
    .global UpdateGame
UpdateGame: @ 0x0800976C
	push {r4, r5, lr}
	ldr r0, _080097BC
	ldrb r0, [r0]
	cmp r0, #0
	beq _0800977A
	bl sub_8026DC0
_0800977A:
	bl call_functions
	bl sub_80631AC
	bl sub_800EACC
	bl sub_800ECB4
	ldr r0, _080097C0
	ldrb r0, [r0]
	cmp r0, #0
	beq _08009796
	bl sub_800F430
_08009796:
	bl sub_80344DC
	ldr r0, _080097C4
	ldrb r0, [r0]
	cmp r0, #0
	bne _080097D8
	ldr r0, _080097C8
	ldr r1, _080097CC
	ldr r2, _080097D0
	bl ReadKeys
	ldr r0, _080097D4
	ldrb r0, [r0]
	cmp r0, #0
	beq _080097E2
	bl Unused_InputFunction
	b _080097E2
	.align 2, 0
_080097BC: .4byte 0x02007884
_080097C0: .4byte 0x0200110C
_080097C4: .4byte 0x0203F9A1
_080097C8: .4byte 0x030032C6
_080097CC: .4byte 0x030032C8
_080097D0: .4byte 0x030032C4
_080097D4: .4byte 0x02000F70
_080097D8:
	ldr r0, _080099E8
	ldr r1, _080099EC
	ldr r2, _080099F0
	bl ReadKeysEx
_080097E2:
	ldr r0, _080099F4
	ldr r0, [r0]
	bl thunk_r0
	bl sub_806127C
	ldr r0, _080099F8
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0xc
	bne _0800983E
	ldr r0, _080099FC
	ldrb r0, [r0]
	cmp r0, #0
	beq _0800983E
	ldr r1, _08009A00
	ldr r0, _08009A04
	ldrh r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #4
	ands r0, r1
	cmp r0, #0
	bne _0800983E
	ldr r0, _08009A08
	ldrb r0, [r0]
	cmp r0, #0
	bne _0800982A
	ldr r0, _080099EC
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0800983E
_0800982A:
	ldr r0, _08009A0C
	movs r1, #1
	bl sub_80271A4
	movs r0, #2
	bl sub_805E1DC
	movs r0, #0x2b
	bl init_function
_0800983E:
	ldr r0, _08009A10
	ldr r0, [r0]
	cmp r0, #0
	beq _0800984A
	bl sub_8015FD4
_0800984A:
	ldr r0, _080099EC
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	bne _08009858
	b _0800997C
_08009858:
	ldr r1, _08009A00
	ldr r0, _08009A04
	ldrh r2, [r0]
	lsls r0, r2, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #4
	ands r0, r1
	cmp r0, #0
	beq _08009870
	b _0800997C
_08009870:
	ldr r0, _08009A14
	ldrb r0, [r0]
	cmp r0, #0
	beq _0800987A
	b _0800997C
_0800987A:
	ldr r0, _08009A18
	ldrb r0, [r0]
	cmp r0, #0
	bne _0800997C
	ldr r0, _08009A1C
	ldrb r0, [r0, #0x13]
	cmp r0, #0
	beq _0800997C
	ldr r0, _08009A20
	ldrb r0, [r0]
	cmp r0, #0
	bne _0800997C
	ldr r0, _08009A24
	ldrb r0, [r0]
	cmp r0, #0
	bne _0800997C
	cmp r2, #0x65
	bne _080098A6
	ldr r0, _08009A28
	ldrb r0, [r0]
	cmp r0, #0
	beq _08009984
_080098A6:
	ldr r0, _08009A2C
	ldrb r0, [r0]
	cmp r0, #0
	bne _0800997C
	ldr r0, _08009A30
	ldrb r0, [r0]
	cmp r0, #0
	beq _080098BE
	bl sub_8016B0C
	bl sub_804087C
_080098BE:
	bl sub_80409DC
	ldr r5, _08009A34
	ldr r1, [r5]
	movs r4, #1
	rsbs r4, r4, #0
	cmp r1, r4
	beq _080098DE
	ldr r0, _08009A38
	ldrb r0, [r0]
	cmp r0, #0
	beq _080098DC
	adds r0, r1, #0
	bl audio_halt_fx
_080098DC:
	str r4, [r5]
_080098DE:
	ldr r4, _08009A3C
	ldr r0, [r4]
	bl audio_fx_still_active
	cmp r0, #0
	beq _080098F8
	ldr r0, _08009A38
	ldrb r0, [r0]
	cmp r0, #0
	beq _080098F8
	ldr r0, [r4]
	bl audio_halt_fx
_080098F8:
	ldr r4, _08009A04
	ldrh r0, [r4]
	cmp r0, #0x23
	bne _08009904
	bl sub_8064380
_08009904:
	bl OpenPauseMenu
	ldrh r0, [r4]
	cmp r0, #0x23
	bne _08009912
	bl sub_806438C
_08009912:
	ldr r0, _08009A28
	ldrb r0, [r0]
	cmp r0, #0
	bne _08009926
	movs r0, #0x15
	movs r1, #0x20
	bl sub_8013DD4
	bl EnableBGAlphaBlending
_08009926:
	ldr r1, _08009A40
	ldr r0, _08009A44
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r0, _080099EC
	movs r1, #0
	strh r1, [r0]
	ldr r0, _080099E8
	strh r1, [r0]
	ldr r1, _08009A00
	ldrh r0, [r4]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08009964
	ldr r0, _08009A48
	ldrb r0, [r0]
	cmp r0, #4
	beq _08009964
	ldr r0, _08009A1C
	ldrb r1, [r0, #0x16]
	movs r0, #0x39
	bl sub_08040204
	movs r0, #0x39
	bl sub_08041FA4
_08009964:
	ldr r1, _08009A00
	ldr r0, _08009A04
	ldrh r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _0800997C
	bl sub_800DE04
_0800997C:
	ldr r0, _08009A28
	ldrb r0, [r0]
	cmp r0, #0
	bne _080099A0
_08009984:
	ldr r0, _08009A4C
	movs r2, #0
	ldrsh r0, [r0, r2]
	adds r0, #0x78
	ldr r1, _08009A50
	movs r3, #0
	ldrsh r1, [r1, r3]
	adds r1, #0x50
	bl s_load_object
	bl sub_800DF34
	bl sub_8062484
_080099A0:
	ldr r0, _08009A18
	ldrb r0, [r0]
	cmp r0, #0
	beq _080099B2
	ldr r0, _08009A54
	ldrb r0, [r0]
	cmp r0, #0
	bne _080099B2
	b _08009ABC
_080099B2:
	ldr r0, _08009A24
	ldrb r0, [r0]
	cmp r0, #0
	beq _080099BC
	b _08009ABC
_080099BC:
	ldr r4, _080099E8
	ldr r2, _08009A58
	ldrh r0, [r4]
	ldrh r1, [r2]
	ands r1, r0
	cmp r1, #0
	bne _08009A92
	strh r1, [r2]
	ldr r0, _08009A28
	ldrb r0, [r0]
	cmp r0, #0
	bne _08009A60
	ldr r0, _08009A5C
	ldrb r0, [r0]
	cmp r0, #0
	bne _08009A92
	ldrh r0, [r4]
	ldr r1, _080099EC
	ldrh r1, [r1]
	bl UpdatePlayerBehavior
	b _08009A92
	.align 2, 0
_080099E8: .4byte 0x030032C6
_080099EC: .4byte 0x030032C8
_080099F0: .4byte 0x030032C4
_080099F4: .4byte 0x03002AA4
_080099F8: .4byte 0x0203F998
_080099FC: .4byte 0x020021F8
_08009A00: .4byte 0x020020BE
_08009A04: .4byte 0x02002092
_08009A08: .4byte 0x02000F55
_08009A0C: .4byte 0x00000FFF
_08009A10: .4byte 0x02001470
_08009A14: .4byte 0x020021F0
_08009A18: .4byte 0x0203F99C
_08009A1C: .4byte 0x02001044
_08009A20: .4byte 0x02007884
_08009A24: .4byte 0x0203FA35
_08009A28: .4byte 0x030032A9
_08009A2C: .4byte 0x02000F57
_08009A30: .4byte 0x020020BC
_08009A34: .4byte 0x020020B8
_08009A38: .4byte 0x0203EA89
_08009A3C: .4byte 0x020020B4
_08009A40: .4byte 0x04000050
_08009A44: .4byte 0x02000336
_08009A48: .4byte 0x020020B1
_08009A4C: .4byte 0x02001468
_08009A50: .4byte 0x0200146A
_08009A54: .4byte 0x0203F9A1
_08009A58: .4byte 0x020010AC
_08009A5C: .4byte 0x0200110C
_08009A60:
	ldr r0, _08009AA8
	ldr r0, [r0]
	bl sub_80038A4
	ldr r1, _08009AAC
	ldr r0, _08009AB0
	ldrh r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #4
	ands r0, r1
	cmp r0, #0
	bne _08009A88
	movs r0, #0x80
	lsls r0, r0, #5
	ands r0, r1
	cmp r0, #0
	beq _08009A92
_08009A88:
	ldrh r0, [r4]
	ldr r1, _08009AB4
	ldrh r1, [r1]
	bl UpdatePlayerBehavior
_08009A92:
	ldr r0, _08009AB8
	ldrb r0, [r0]
	cmp r0, #0
	bne _08009AD0
	ldr r0, _08009AA8
	ldr r0, [r0]
	bl sub_80038A4
	bl update_player
	b _08009AD0
	.align 2, 0
_08009AA8: .4byte 0x02000FC8
_08009AAC: .4byte 0x020020BE
_08009AB0: .4byte 0x02002092
_08009AB4: .4byte 0x030032C8
_08009AB8: .4byte 0x030032A9
_08009ABC:
	ldr r0, _08009B5C
	ldrb r0, [r0]
	cmp r0, #0
	beq _08009AD0
	ldr r0, _08009B60
	ldrh r0, [r0]
	ldr r1, _08009B64
	ldrh r1, [r1]
	bl UpdatePlayerBehavior
_08009AD0:
	ldr r1, _08009B68
	ldr r3, _08009B6C
	movs r4, #0
	ldrsh r0, [r3, r4]
	subs r0, #0x14
	str r0, [r1]
	ldr r2, _08009B70
	movs r4, #0
	ldrsh r0, [r2, r4]
	subs r0, #5
	str r0, [r1, #4]
	ldr r1, _08009B74
	movs r4, #0
	ldrsh r0, [r3, r4]
	movs r3, #0x82
	lsls r3, r3, #1
	adds r0, r0, r3
	str r0, [r1]
	movs r4, #0
	ldrsh r0, [r2, r4]
	adds r0, #0xaa
	str r0, [r1, #4]
	ldr r4, _08009B78
	ldrh r0, [r4]
	cmp r0, #0x23
	bne _08009B08
	bl sub_8063B5C
_08009B08:
	ldr r0, _08009B7C
	ldrb r0, [r0]
	cmp r0, #0
	bne _08009B1A
	ldrh r0, [r4]
	cmp r0, #0x65
	beq _08009B1A
	bl sub_8048C78
_08009B1A:
	bl sub_804087C
	ldr r0, _08009B7C
	ldrb r0, [r0]
	cmp r0, #0
	bne _08009BE4
	bl sub_800C50C
	adds r4, r0, #0
	ldr r0, _08009B80
	adds r1, r4, #0
	bl SetSpritePriority
	ldr r0, _08009B84
	ldr r1, _08009B88
	ldr r0, [r0, #4]
	ldr r1, [r1, #4]
	subs r0, r0, r1
	bl Abs
	ldr r1, _08009B8C
	cmp r0, r1
	bls _08009B50
	ldr r0, _08009B90
	ldr r0, [r0]
	cmp r0, #0
	beq _08009B98
_08009B50:
	ldr r0, _08009B94
	adds r1, r4, #0
	bl SetSpritePriority
	b _08009BA2
	.align 2, 0
_08009B5C: .4byte 0x0203F99F
_08009B60: .4byte 0x030032C6
_08009B64: .4byte 0x030032C8
_08009B68: .4byte 0x030032B4
_08009B6C: .4byte 0x02001468
_08009B70: .4byte 0x0200146A
_08009B74: .4byte 0x030032BC
_08009B78: .4byte 0x02002092
_08009B7C: .4byte 0x030032A9
_08009B80: .4byte 0x02000F74
_08009B84: .4byte 0x030032D0
_08009B88: .4byte 0x030032DC
_08009B8C: .4byte 0x0004FFFF
_08009B90: .4byte 0x0203DFC4
_08009B94: .4byte 0x02000F90
_08009B98:
	ldr r0, _08009BC0
	ldr r1, _08009BC4
	ldrb r1, [r1, #3]
	bl SetSpritePriority
_08009BA2:
	ldr r2, _08009BC0
	ldr r0, _08009BC8
	ldr r1, _08009BCC
	ldr r0, [r0, #4]
	ldr r1, [r1, #4]
	subs r0, r0, r1
	asrs r1, r0, #0x10
	ldr r0, _08009BD0
	ldr r0, [r0]
	cmp r1, r0
	blt _08009BD8
	ldr r1, _08009BD4
	subs r0, #1
	adds r0, r0, r1
	b _08009BDC
	.align 2, 0
_08009BC0: .4byte 0x02000F90
_08009BC4: .4byte 0x03002950
_08009BC8: .4byte 0x030032D0
_08009BCC: .4byte 0x030032DC
_08009BD0: .4byte 0x080CEBC4
_08009BD4: .4byte 0x080CEB84
_08009BD8:
	ldr r0, _08009C58
	adds r0, r1, r0
_08009BDC:
	ldrb r1, [r0]
	adds r0, r2, #0
	bl sub_80037F4
_08009BE4:
	ldr r4, _08009C5C
	movs r2, #0x80
	lsls r2, r2, #1
	movs r0, #0xaa
	adds r1, r4, #0
	bl DmaFill32
	ldr r0, _08009C60
	str r4, [r0]
	ldr r0, _08009C64
	movs r1, #0x80
	lsls r1, r1, #3
	adds r4, r4, r1
	str r4, [r0]
	ldr r1, _08009C68
	ldr r0, _08009C6C
	ldr r0, [r0]
	str r0, [r1]
	ldr r1, _08009C70
	ldr r0, _08009C74
	ldr r0, [r0]
	str r0, [r1]
	bl sub_08047108
	bl sub_8025278
	bl sub_800EE68
	bl sub_804095C
	ldr r1, _08009C78
	ldr r0, _08009C7C
	ldrh r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #4
	ands r0, r1
	cmp r0, #0
	beq _08009CAC
	ldr r4, _08009C80
	ldrb r1, [r4]
	cmp r1, #0
	beq _08009C88
	movs r0, #0
	bl sub_8025948
	ldr r0, _08009C84
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08009CB0
	movs r0, #0
	strb r0, [r4]
	b _08009CB0
	.align 2, 0
_08009C58: .4byte 0x080CEB84
_08009C5C: .4byte 0x0300398C
_08009C60: .4byte 0x03003D8C
_08009C64: .4byte 0x03003D90
_08009C68: .4byte 0x03003D94
_08009C6C: .4byte 0x03003D9C
_08009C70: .4byte 0x03003D98
_08009C74: .4byte 0x03003DA0
_08009C78: .4byte 0x020020BE
_08009C7C: .4byte 0x02002092
_08009C80: .4byte 0x02000F5D
_08009C84: .4byte 0x030032C8
_08009C88:
	ldr r2, _08009CA4
	ldrb r0, [r2]
	cmp r0, #0
	beq _08009C96
	strb r1, [r2]
	movs r0, #1
	strb r0, [r4]
_08009C96:
	ldr r0, _08009CA8
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	bl sub_8025948
	b _08009CB0
	.align 2, 0
_08009CA4: .4byte 0x02002E4A
_08009CA8: .4byte 0x030032C6
_08009CAC:
	bl RenderText
_08009CB0:
	bl sub_8026234
	bl sub_80408F0
	bl sub_8061F80
	bl sub_8064234
	bl sub_80473BC
	ldr r0, _08009D10
	ldr r0, [r0]
	bl thunk_r0
	ldr r0, _08009D14
	ldrb r0, [r0]
	cmp r0, #0
	bne _08009D08
	ldr r0, _08009D18
	ldrh r0, [r0]
	cmp r0, #0x65
	beq _08009D08
	bl sub_8009D2C
	ldr r4, _08009D1C
	ldr r5, _08009D20
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_805DF84
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_800BAF0
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_802ADB0
	ldr r0, [r5]
	ldr r1, _08009D24
	ldr r1, [r1]
	ldr r2, _08009D28
	bl sub_8003A34
_08009D08:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08009D10: .4byte 0x03002AA8
_08009D14: .4byte 0x030032A9
_08009D18: .4byte 0x02002092
_08009D1C: .4byte 0x030032AC
_08009D20: .4byte 0x030032CC
_08009D24: .4byte 0x030032B0
_08009D28: .4byte 0x03003DA4

    .thumb
sub_8009D2C: @ 0x08009D2C
	ldr r2, _08009D58
	ldr r1, _08009D5C
	ldr r0, [r1]
	str r0, [r2]
	ldr r2, _08009D60
	str r2, [r1]
	ldr r3, _08009D64
	ldr r1, _08009D68
	subs r0, r0, r1
	asrs r0, r0, #1
	lsls r0, r0, #1
	ldr r1, _08009D6C
	adds r0, r0, r1
	subs r2, r2, r0
	str r2, [r3]
	ldr r1, _08009D70
	ldr r0, _08009D74
	str r0, [r1]
	ldr r1, _08009D78
	movs r0, #0
	str r0, [r1]
	bx lr
	.align 2, 0
_08009D58: .4byte 0x030032B0
_08009D5C: .4byte 0x03003D8C
_08009D60: .4byte 0x0300358C
_08009D64: .4byte 0x03003D90
_08009D68: .4byte 0x0300398C
_08009D6C: .4byte 0xFFFFFC00
_08009D70: .4byte 0x030032AC
_08009D74: .4byte 0x03003DA4
_08009D78: .4byte 0x030032CC

    .thumb
    .global sub_08009D7C
sub_08009D7C: @ 0x08009D7C
	push {r4, lr}
	ldr r4, _08009DA4
	ldr r2, [r4]
	ldr r1, _08009DA8
	ldr r3, [r1]
	lsls r1, r2, #2
	adds r1, r1, r3
	str r0, [r1]
	adds r2, #1
	str r2, [r4]
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r2, r0
	bne _08009D9C
	.2byte 0xEE00, 0xEE00
_08009D9C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08009DA4: .4byte 0x02000F64
_08009DA8: .4byte 0x02000F60

    .thumb
    .global sub_08009DAC
sub_08009DAC: @ 0x08009DAC
	push {lr}
	ldr r1, _08009DCC
	ldr r0, [r1]
	cmp r0, #0
	bne _08009DBA
	.2byte 0xEE00, 0xEE00
_08009DBA:
	subs r0, #1
	str r0, [r1]
	ldr r1, _08009DD0
	ldr r1, [r1]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	pop {r1}
	bx r1
	.align 2, 0
_08009DCC: .4byte 0x02000F64
_08009DD0: .4byte 0x02000F60

    .thumb
nullsub_3: @ 0x08009DD4
	bx lr
	.align 2, 0

    .thumb
nullsub_4: @ 0x08009DD8
	bx lr
	.align 2, 0

    .thumb
nullsub_5: @ 0x08009DDC
	bx lr
	.align 2, 0

    .thumb
    .global prepare_wram
prepare_wram: @ 0x08009DE0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _08009E5C
	ldrb r6, [r0]
	ldr r2, _08009E60
	mov r8, r2
	ldrb r7, [r2]
	ldr r5, _08009E64
	ldrb r0, [r5]
	mov sl, r0
	ldr r4, _08009E68
	ldrb r2, [r4]
	mov sb, r2
	movs r0, #0xfd
	bl RegisterRamReset
	movs r1, #0x80
	lsls r1, r1, #0x12
	movs r2, #0x80
	lsls r2, r2, #9
	movs r0, #0
	bl DmaFill32
	movs r1, #0xc0
	lsls r1, r1, #0x12
	ldr r2, _08009E6C
	movs r0, #0
	bl DmaFill32
	bl copy_sub_80001EC_to_iram
	ldr r1, _08009E70
	ldr r0, _08009E74
	str r0, [r1]
	ldr r1, _08009E78
	ldr r2, _08009E7C
	adds r0, r2, #0
	strh r0, [r1]
	subs r1, #0xf8
	movs r0, #0
	strh r0, [r1]
	adds r1, #2
	movs r0, #0x80
	strh r0, [r1]
	ldr r0, _08009E5C
	strb r6, [r0]
	mov r2, r8
	strb r7, [r2]
	mov r0, sl
	strb r0, [r5]
	mov r2, sb
	strh r2, [r4]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08009E5C: .4byte 0x02000F58
_08009E60: .4byte 0x02000F59
_08009E64: .4byte 0x02000F5A
_08009E68: .4byte 0x030032C6
_08009E6C: .4byte 0x00001D27
_08009E70: .4byte 0x03007FFC
_08009E74: .4byte 0x03000C24
_08009E78: .4byte 0x04000204
_08009E7C: .4byte 0x00004014

    .thumb
    .global EnableDisplay
EnableDisplay: @ 0x08009E80
	movs r1, #0x80
	lsls r1, r1, #0x13
	movs r2, #0xfa
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #8
	ldr r2, _08009ED0
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #2
	adds r2, #0xff
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #2
	adds r2, #0xff
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #2
	adds r2, #0xff
	adds r0, r2, #0
	strh r0, [r1]
	ldr r0, _08009ED4
	movs r1, #0
	strh r1, [r0]
	adds r0, #4
	strh r1, [r0]
	adds r0, #4
	strh r1, [r0]
	adds r0, #4
	strh r1, [r0]
	subs r0, #0xa
	strh r1, [r0]
	adds r0, #4
	strh r1, [r0]
	adds r0, #4
	strh r1, [r0]
	adds r0, #4
	strh r1, [r0]
	bx lr
	.align 2, 0
_08009ED0: .4byte 0x00001C03
_08009ED4: .4byte 0x04000010

    .thumb
sub_8009ED8: @ 0x08009ED8
	push {r4, r5, r6, lr}
	ldr r0, _08009F24
	movs r1, #0
	str r1, [r0]
	ldr r0, _08009F28
	str r1, [r0]
	ldr r1, _08009F2C
	ldr r4, _08009F30
	ldr r5, _08009F34
	ldr r6, _08009F38
	adds r3, r1, #0
	ldr r2, _08009F3C
	adds r0, r1, #0
	adds r0, #0x34
_08009EF4:
	str r2, [r0]
	subs r0, #4
	cmp r0, r3
	bge _08009EF4
	str r4, [r1]
	str r5, [r1, #8]
	str r6, [r1, #0x30]
	ldr r1, _08009F40
	movs r0, #0x28
	strh r0, [r1]
	ldr r1, _08009F44
	ldr r2, _08009F48
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #8
	movs r0, #1
	strh r0, [r1]
	subs r1, #0xd6
	ldr r2, _08009F4C
	adds r0, r2, #0
	strh r0, [r1]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08009F24: .4byte 0x02000F68
_08009F28: .4byte 0x02000F6C
_08009F2C: .4byte 0x03002A6C
_08009F30: .4byte 0x0800A37D
_08009F34: .4byte 0x0800A529
_08009F38: .4byte 0x0800A595
_08009F3C: .4byte 0x0800A4A1
_08009F40: .4byte 0x04000004
_08009F44: .4byte 0x04000200
_08009F48: .4byte 0x00001005
_08009F4C: .4byte 0x0000C00F

    .thumb
copy_sub_80001EC_to_iram: @ 0x08009F50
	push {lr}
	ldr r0, _08009F68
	ldr r1, _08009F6C
	ldr r2, _08009F70
	subs r2, r2, r0
	asrs r2, r2, #2
	adds r2, #1
	bl DmaTransfer32
	pop {r0}
	bx r0
	.align 2, 0
_08009F68: .4byte 0x080001EC
_08009F6C: .4byte 0x03000000
_08009F70: .4byte 0x08002AC4

    .thumb
    .global StartGame
StartGame: @ 0x08009F74
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	ldr r0, _0800A14C
	movs r1, #0
	strb r1, [r0]
	ldr r0, _0800A150
	strb r1, [r0]
	ldr r0, _0800A154
	strb r1, [r0]
	ldr r6, _0800A158
	movs r2, #0xfc
	lsls r2, r2, #6
	adds r0, r2, #0
	strh r0, [r6]
	ldr r0, _0800A15C
	strb r1, [r0]
	ldr r0, _0800A160
	mov r8, r0
	strb r1, [r0]
	ldr r0, _0800A164
	strb r1, [r0]
	ldr r0, _0800A168
	strb r1, [r0]
	ldr r0, _0800A16C
	strb r1, [r0]
	ldr r0, _0800A170
	strb r1, [r0]
	ldr r0, _0800A174
	strb r1, [r0]
	ldr r0, _0800A178
	movs r7, #0
	str r7, [r0]
	ldr r0, _0800A17C
	str r7, [r0]
	ldr r4, _0800A180
	movs r5, #0x80
	lsls r5, r5, #1
	movs r0, #0xaa
	adds r1, r4, #0
	adds r2, r5, #0
	bl DmaFill32
	ldr r0, _0800A184
	str r4, [r0]
	ldr r0, _0800A188
	ldr r1, _0800A18C
	str r1, [r0]
	ldr r0, _0800A190
	str r1, [r0]
	ldr r0, _0800A194
	str r7, [r0]
	ldr r0, _0800A198
	str r7, [r0]
	ldr r1, _0800A19C
	ldr r0, _0800A1A0
	str r0, [r1]
	ldr r1, _0800A1A4
	ldr r0, _0800A1A8
	str r0, [r1]
	ldr r1, _0800A1AC
	ldr r0, _0800A1B0
	str r0, [r1]
	ldr r0, _0800A1B4
	strb r7, [r0]
	ldr r0, _0800A1B8
	ldr r0, [r0]
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_8003884
	bl InitAllHeaps
	bl sub_800A344
	bl sub_8016440
	bl audio_init_p1
	bl ResetMenuEx
	bl ResetTileAnimCount
	bl sub_80266B4
	bl sub_80400B4
	bl sub_080281A8
	bl sub_800A5F4
	bl sub_08030C68
	bl sub_08047504
	bl sub_805D158
	bl sub_08063234
	bl sub_8044DFC
	ldr r0, _0800A1BC
	strb r7, [r0]
	ldr r1, _0800A1C0
	mov sl, r1
	strb r7, [r1]
	ldr r0, _0800A1C4
	strb r7, [r0]
	ldr r4, _0800A1C8
	movs r0, #0x80
	lsls r0, r0, #3
	movs r1, #0x13
	movs r2, #4
	bl Alloc
	str r0, [r4]
	ldr r0, _0800A1CC
	str r7, [r0]
	bl sub_8009ED8
	ldr r4, _0800A1D0
	bl sub_80266A8
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_8025798
	ldr r0, _0800A1D4
	ldrb r0, [r0]
	cmp r0, #0
	beq _0800A086
	bl exec_erasedata_screen
_0800A086:
	bl exec_pregame
	movs r1, #0xe0
	lsls r1, r1, #0x13
	movs r0, #0xaa
	adds r2, r5, #0
	bl DmaFill32
	ldr r1, _0800A1D8
	ldrh r0, [r6]
	strh r0, [r1]
	adds r1, #2
	ldr r2, _0800A1DC
	adds r0, r2, #0
	strh r0, [r1]
	ldr r2, _0800A1E0
	ldrh r1, [r2]
	ldr r0, _0800A1E4
	ands r0, r1
	strh r0, [r2]
	ldrh r0, [r2]
	movs r1, #2
	orrs r0, r1
	strh r0, [r2]
	mov r1, r8
	ldrb r0, [r1]
	cmp r0, #0
	beq _0800A0C0
	b _0800A20C
_0800A0C0:
	ldr r0, _0800A1E8
	strb r7, [r0]
	ldr r0, _0800A1EC
	strb r7, [r0]
	ldr r0, _0800A1F0
	strb r7, [r0]
	movs r0, #0
	bl sub_8025E44
	ldr r4, _0800A1F4
	ldr r0, _0800A1F8
	ldrb r1, [r0, #3]
	adds r0, r4, #0
	bl SetSpritePriority
	str r7, [sp]
	ldr r2, _0800A1FC
	mov r8, r2
	ldrh r0, [r2]
	str r0, [sp, #4]
	ldr r6, _0800A200
	ldrh r0, [r6]
	str r0, [sp, #8]
	movs r5, #2
	str r5, [sp, #0xc]
	adds r0, r4, #0
	movs r1, #0x1d
	movs r2, #0
	movs r3, #4
	bl SetSprite
	ldr r4, _0800A204
	movs r0, #1
	mov sb, r0
	str r0, [sp]
	mov r1, r8
	ldrh r0, [r1]
	str r0, [sp, #4]
	ldrh r0, [r6]
	str r0, [sp, #8]
	str r5, [sp, #0xc]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl SetSprite
	adds r0, r4, #0
	movs r1, #0
	bl sub_800378C
	mov r2, sb
	strb r2, [r4, #0x10]
	strb r7, [r4, #0x13]
	ldr r1, _0800A208
	ldrb r0, [r1]
	cmp r0, #0
	beq _0800A138
	bl sub_08019FCC
_0800A138:
	bl sub_8044DFC
	movs r0, #0xc
	bl init_function
	mov r1, sb
	mov r0, sl
	strb r1, [r0]
	b _0800A2F2
	.align 2, 0
_0800A14C: .4byte 0x02000F54
_0800A150: .4byte 0x030032A8
_0800A154: .4byte 0x02000314
_0800A158: .4byte 0x02000336
_0800A15C: .4byte 0x020010AF
_0800A160: .4byte 0x020010AE
_0800A164: .4byte 0x02000F5E
_0800A168: .4byte 0x0203F4D8
_0800A16C: .4byte 0x02000F55
_0800A170: .4byte 0x02000F57
_0800A174: .4byte 0x0203EAD4
_0800A178: .4byte 0x02000328
_0800A17C: .4byte 0x02000324
_0800A180: .4byte 0x0300358C
_0800A184: .4byte 0x03003D8C
_0800A188: .4byte 0x03003D94
_0800A18C: .4byte 0x06010000
_0800A190: .4byte 0x03003D9C
_0800A194: .4byte 0x03003D98
_0800A198: .4byte 0x03003DA0
_0800A19C: .4byte 0x03002AA4
_0800A1A0: .4byte 0x08009DD5
_0800A1A4: .4byte 0x03002AA8
_0800A1A8: .4byte 0x08009DD9
_0800A1AC: .4byte 0x03002AAC
_0800A1B0: .4byte 0x08009DDD
_0800A1B4: .4byte 0x030032A9
_0800A1B8: .4byte 0x02000FC8
_0800A1BC: .4byte 0x02000F5B
_0800A1C0: .4byte 0x02000F5C
_0800A1C4: .4byte 0x02000F5D
_0800A1C8: .4byte 0x02000F60
_0800A1CC: .4byte 0x02000F64
_0800A1D0: .4byte 0x080CC8F8
_0800A1D4: .4byte 0x02000F58
_0800A1D8: .4byte 0x04000050
_0800A1DC: .4byte 0x00000907
_0800A1E0: .4byte 0x0400000A
_0800A1E4: .4byte 0x0000FFFC
_0800A1E8: .4byte 0x020010A8
_0800A1EC: .4byte 0x020010A9
_0800A1F0: .4byte 0x020010AA
_0800A1F4: .4byte 0x02000F74
_0800A1F8: .4byte 0x03002950
_0800A1FC: .4byte 0x02001464
_0800A200: .4byte 0x02001466
_0800A204: .4byte 0x02000F90
_0800A208: .4byte 0x020020B1
_0800A20C:
	ldr r4, _0800A304
	movs r0, #0xff
	strh r0, [r4]
	ldr r0, _0800A308
	ldrb r0, [r0]
	ldr r1, _0800A30C
	ldrb r1, [r1]
	movs r2, #1
	movs r3, #0
	bl SetupRoom
	ldr r0, _0800A310
	ldrh r0, [r0]
	cmp r0, #6
	bne _0800A230
	ldr r0, _0800A314
	ldrb r0, [r0]
	strh r0, [r4]
_0800A230:
	ldrh r0, [r4]
	bl sub_8025E44
	bl sub_80409DC
	bl sub_803FE78
	ldr r2, _0800A318
	mov sb, r2
	ldr r0, _0800A31C
	ldrb r1, [r0, #3]
	mov r0, sb
	bl SetSpritePriority
	ldr r0, _0800A320
	ldrh r0, [r0]
	ldr r1, _0800A324
	ldrh r1, [r1]
	ldr r2, _0800A328
	ldrh r2, [r2]
	ldr r3, _0800A32C
	ldrh r3, [r3]
	movs r4, #0x15
	str r4, [sp]
	movs r4, #0x20
	str r4, [sp, #4]
	bl sub_8013A10
	bl EnableBGAlphaBlending
	bl InitPaletteEffects
	bl sub_800DEE4
	bl sub_0800ED80
	str r7, [sp]
	ldr r0, _0800A330
	mov r8, r0
	ldrh r0, [r0]
	str r0, [sp, #4]
	ldr r6, _0800A334
	ldrh r0, [r6]
	str r0, [sp, #8]
	movs r5, #2
	str r5, [sp, #0xc]
	mov r0, sb
	movs r1, #0x1d
	movs r2, #0
	movs r3, #4
	bl SetSprite
	ldr r4, _0800A338
	movs r1, #1
	mov sb, r1
	str r1, [sp]
	mov r2, r8
	ldrh r0, [r2]
	str r0, [sp, #4]
	ldrh r0, [r6]
	str r0, [sp, #8]
	str r5, [sp, #0xc]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl SetSprite
	adds r0, r4, #0
	movs r1, #0
	bl sub_800378C
	mov r0, sb
	strb r0, [r4, #0x10]
	strb r7, [r4, #0x13]
	ldr r1, _0800A33C
	ldrb r0, [r1]
	cmp r0, #0
	beq _0800A2D6
	bl sub_08019FCC
	bl sub_801A2E4
_0800A2D6:
	ldr r0, _0800A340
	movs r1, #1
	movs r2, #1
	bl sub_8026E48
	movs r0, #0x15
	movs r1, #0x20
	bl sub_8013DD4
	bl sub_8044DFC
	mov r2, sb
	mov r1, sl
	strb r2, [r1]
_0800A2F2:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800A304: .4byte 0x02001082
_0800A308: .4byte 0x020010A8
_0800A30C: .4byte 0x020010A9
_0800A310: .4byte 0x02001080
_0800A314: .4byte 0x020010AA
_0800A318: .4byte 0x02000F74
_0800A31C: .4byte 0x03002950
_0800A320: .4byte 0x0200145C
_0800A324: .4byte 0x0200145E
_0800A328: .4byte 0x02001460
_0800A32C: .4byte 0x02001462
_0800A330: .4byte 0x02001464
_0800A334: .4byte 0x02001466
_0800A338: .4byte 0x02000F90
_0800A33C: .4byte 0x020020B1
_0800A340: .4byte 0x00000FFF

    .thumb
sub_800A344: @ 0x0800A344
	ldr r0, _0800A364
	movs r1, #0
	strb r1, [r0]
	ldr r0, _0800A368
	strb r1, [r0]
	ldr r0, _0800A36C
	strb r1, [r0]
	ldr r0, _0800A370
	strb r1, [r0]
	ldr r0, _0800A374
	strb r1, [r0]
	ldr r1, _0800A378
	movs r0, #0
	str r0, [r1]
	bx lr
	.align 2, 0
_0800A364: .4byte 0x02000330
_0800A368: .4byte 0x02000331
_0800A36C: .4byte 0x02000332
_0800A370: .4byte 0x02000333
_0800A374: .4byte 0x02000334
_0800A378: .4byte 0x0200032C

    .thumb
sub_800A37C: @ 0x0800A37C
	push {r4, lr}
	ldr r4, _0800A44C
	ldr r0, [r4]
	cmp r0, #0
	beq _0800A38A
	.2byte 0xEE00, 0xEE00
_0800A38A:
	adds r0, #1
	str r0, [r4]
	ldr r0, _0800A450
	ldrb r0, [r0]
	cmp r0, #0
	bne _0800A39A
	bl sub_8045044
_0800A39A:
	ldr r0, [r4]
	subs r0, #1
	str r0, [r4]
	ldr r0, _0800A454
	ldrb r0, [r0]
	cmp r0, #0
	beq _0800A3FC
	ldr r0, _0800A458
	ldrb r2, [r0]
	cmp r2, #0
	bne _0800A3FC
	ldr r1, _0800A45C
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x3c
	bne _0800A3FC
	strb r2, [r1]
	ldr r1, _0800A460
	ldrb r0, [r1, #0xa]
	adds r0, #1
	strb r0, [r1, #0xa]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x3c
	bne _0800A3FC
	strb r2, [r1, #0xa]
	ldrb r0, [r1, #9]
	adds r0, #1
	strb r0, [r1, #9]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x3c
	bne _0800A3FC
	strb r2, [r1, #9]
	ldrb r0, [r1, #8]
	adds r0, #1
	strb r0, [r1, #8]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x64
	bne _0800A3FC
	movs r0, #0x63
	strb r0, [r1, #8]
	movs r0, #0x3b
	strb r0, [r1, #9]
	strb r0, [r1, #0xa]
_0800A3FC:
	ldr r1, _0800A464
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0
	bne _0800A41A
	movs r0, #0x3c
	strb r0, [r1]
	ldr r2, _0800A468
	ldr r1, _0800A46C
	ldrb r0, [r1]
	strb r0, [r2]
	strb r3, [r1]
_0800A41A:
	ldr r0, _0800A470
	ldr r4, _0800A474
	ldrb r1, [r4]
	bl sub_8003A3C
	movs r0, #0
	strb r0, [r4]
	ldr r2, _0800A478
	ldrb r0, [r2]
	cmp r0, #0
	bne _0800A484
	ldr r0, _0800A47C
	ldrb r0, [r0]
	cmp r0, #0
	beq _0800A494
	ldr r0, _0800A480
	ldrh r1, [r0]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #0
	bne _0800A494
	movs r0, #5
	strb r0, [r2]
	b _0800A494
	.align 2, 0
_0800A44C: .4byte 0x02000F6C
_0800A450: .4byte 0x0203EAD4
_0800A454: .4byte 0x02000F5C
_0800A458: .4byte 0x0203F4D8
_0800A45C: .4byte 0x02000F5B
_0800A460: .4byte 0x02001044
_0800A464: .4byte 0x02001200
_0800A468: .4byte 0x02001202
_0800A46C: .4byte 0x02001201
_0800A470: .4byte 0x03002AB0
_0800A474: .4byte 0x030032A8
_0800A478: .4byte 0x02000F5A
_0800A47C: .4byte 0x02000F59
_0800A480: .4byte 0x030032C6
_0800A484:
	subs r0, #1
	strb r0, [r2]
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	bne _0800A494
	ldr r0, _0800A49C
	strb r1, [r0]
_0800A494:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800A49C: .4byte 0x02000F59

	.thumb
nullsub_15: @ 0x0800A4A0
	bx lr
	.align 2, 0

    .thumb
    .global UpdateVideo
UpdateVideo: @ 0x0800A4A4
	push {r4, r5, r6, lr}
	ldr r0, _0800A510
	movs r1, #0xe0
	lsls r1, r1, #0x13
	movs r2, #0x80
	lsls r2, r2, #1
	bl DmaTransfer32
	ldr r0, _0800A514
	ldr r1, [r0]
	cmp r1, #0
	beq _0800A4C4
	ldr r0, _0800A518
	ldr r0, [r0]
	bl CallARM_SetOamMatrices
_0800A4C4:
	ldr r0, _0800A51C
	ldrb r0, [r0]
	cmp r0, #0
	bne _0800A4D0
	bl UpdateBackgrounds
_0800A4D0:
	ldr r1, _0800A520
	ldrb r0, [r1]
	cmp r0, #0
	beq _0800A506
	adds r4, r1, #0
	ldr r5, _0800A524
	adds r6, r5, #0
	adds r6, #8
_0800A4E0:
	ldrb r0, [r4]
	subs r0, #1
	strb r0, [r4]
	ldrb r0, [r4]
	lsls r2, r0, #1
	adds r2, r2, r0
	lsls r2, r2, #2
	adds r0, r2, r5
	ldr r0, [r0]
	adds r1, r5, #4
	adds r1, r2, r1
	ldr r1, [r1]
	adds r2, r2, r6
	ldr r2, [r2]
	bl DmaTransfer32
	ldrb r0, [r4]
	cmp r0, #0
	bne _0800A4E0
_0800A506:
	bl HandlePaletteEffects
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800A510: .4byte 0x0300398C
_0800A514: .4byte 0x02000328
_0800A518: .4byte 0x02000324
_0800A51C: .4byte 0x0200146C
_0800A520: .4byte 0x02000F54
_0800A524: .4byte 0x02000360

    .thumb
sub_800A528: @ 0x0800A528
	push {r4, lr}
	ldr r4, _0800A564
	ldr r0, [r4]
	cmp r0, #0
	beq _0800A536
	.2byte 0xEE00, 0xEE00
_0800A536:
	adds r0, #1
	str r0, [r4]
	ldr r0, _0800A568
	ldrb r0, [r0]
	cmp r0, #0
	bne _0800A546
	bl seq_update_p
_0800A546:
	ldr r0, [r4]
	subs r0, #1
	str r0, [r4]
	ldr r0, _0800A56C
	ldrb r0, [r0]
	cmp r0, #0
	bne _0800A580
	ldr r0, _0800A570
	ldr r1, _0800A574
	ldr r1, [r1]
	ldr r2, _0800A578
	ldr r3, _0800A57C
	bl sub_8003A44
	b _0800A58A
	.align 2, 0
_0800A564: .4byte 0x02000F68
_0800A568: .4byte 0x0203EAD4
_0800A56C: .4byte 0x02000314
_0800A570: .4byte 0x02001474
_0800A574: .4byte 0x02002068
_0800A578: .4byte 0x03002AB0
_0800A57C: .4byte 0x030032A8
_0800A580:
	ldr r1, _0800A590
	movs r0, #0
	strb r0, [r1]
	bl sub_801392C
_0800A58A:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800A590: .4byte 0x030032A8

    .thumb
	.global sub_800A594
sub_800A594: @ 0x0800A594
	push {r4, lr}
	ldr r0, _0800A5D4
	ldrb r4, [r0]
	cmp r4, #0
	bne _0800A5CE
	bl audio_pause
	ldr r0, _0800A5D8
	movs r1, #0
	strh r4, [r0]
	ldr r0, _0800A5DC
	strh r4, [r0]
	ldr r0, _0800A5E0
	strh r4, [r0]
	subs r0, #0xce
	strh r4, [r0]
	subs r0, #0x78
	strh r4, [r0]
	adds r0, #0xc
	strh r4, [r0]
	adds r0, #0xc
	strh r4, [r0]
	adds r0, #0xc
	strh r4, [r0]
	ldr r0, _0800A5E4
	strb r1, [r0]
	movs r0, #0
	bl sub_080643D0
_0800A5CE:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800A5D4: .4byte 0x02000F59
_0800A5D8: .4byte 0x04000208
_0800A5DC: .4byte 0x04000004
_0800A5E0: .4byte 0x04000200
_0800A5E4: .4byte 0x03007FFA

    .thumb
	.global sub_800A5E8
sub_800A5E8: @ 0x0800A5E8
	push {lr}
	bl sub_800A5F4
	pop {r0}
	bx r0
	.align 2, 0

    .thumb
    .global sub_800A5F4
sub_800A5F4: @ 0x0800A5F4
	push {r4, r5, r6, lr}
	ldr r1, _0800A6A4
	movs r0, #0
	movs r2, #0x1e
	bl DmaFill32
	ldr r4, _0800A6A8
	movs r0, #0
	adds r1, r4, #0
	movs r2, #8
	bl DmaFill32
	ldr r0, _0800A6AC
	movs r2, #0
	str r2, [r0]
	ldr r0, _0800A6B0
	str r2, [r0]
	ldr r0, _0800A6B4
	strb r2, [r0]
	ldr r0, _0800A6B8
	movs r3, #0
	strh r2, [r0]
	ldr r0, _0800A6BC
	strb r3, [r0]
	ldr r0, _0800A6C0
	strb r3, [r0]
	ldr r0, _0800A6C4
	str r2, [r0]
	ldr r1, _0800A6C8
	ldr r5, _0800A6CC
	adds r0, r5, #0
	strh r0, [r1]
	ldr r5, _0800A6D0
	ldrb r0, [r5, #0x16]
	strb r0, [r4, #0x16]
	ldrb r0, [r5, #0x17]
	strb r0, [r4, #0x17]
	ldr r1, _0800A6D4
	movs r6, #1
	rsbs r6, r6, #0
	adds r0, r6, #0
	strb r0, [r1]
	ldr r0, _0800A6D8
	strb r3, [r0]
	ldr r0, _0800A6DC
	strb r3, [r0]
	ldr r1, _0800A6E0
	movs r0, #1
	strb r0, [r1]
	ldr r0, _0800A6E4
	str r2, [r0]
	ldr r0, _0800A6E8
	str r2, [r0]
	ldr r1, _0800A6EC
	movs r0, #1
	str r0, [r1]
	movs r0, #4
	strb r0, [r4, #0x13]
	strb r3, [r4, #0x14]
	strb r0, [r4, #0x15]
	ldr r0, _0800A6F0
	strb r3, [r0]
	ldr r1, _0800A6F4
	ldrb r0, [r5, #0x15]
	subs r0, #4
	strb r0, [r1]
	ldr r0, _0800A6F8
	strb r3, [r0]
	ldr r1, _0800A6FC
	ldr r0, _0800A700
	ldr r0, [r0]
	strb r0, [r1]
	ldr r1, _0800A704
	movs r0, #0xb0
	lsls r0, r0, #0xd
	str r0, [r1]
	ldr r1, _0800A708
	movs r0, #0x90
	lsls r0, r0, #0xe
	str r0, [r1]
	ldr r1, _0800A70C
	movs r0, #0xc0
	lsls r0, r0, #0xd
	str r0, [r1]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800A6A4: .4byte 0x02000FCC
_0800A6A8: .4byte 0x02001044
_0800A6AC: .4byte 0x02001104
_0800A6B0: .4byte 0x02001108
_0800A6B4: .4byte 0x0200110C
_0800A6B8: .4byte 0x020010AC
_0800A6BC: .4byte 0x0200112A
_0800A6C0: .4byte 0x020010B1
_0800A6C4: .4byte 0x020011CC
_0800A6C8: .4byte 0x02001084
_0800A6CC: .4byte 0x0000FFFF
_0800A6D0: .4byte 0x080CC8C4
_0800A6D4: .4byte 0x0200108C
_0800A6D8: .4byte 0x020020B1
_0800A6DC: .4byte 0x020010B0
_0800A6E0: .4byte 0x02001100
_0800A6E4: .4byte 0x02001110
_0800A6E8: .4byte 0x02001114
_0800A6EC: .4byte 0x020011FC
_0800A6F0: .4byte 0x0200107C
_0800A6F4: .4byte 0x0200107D
_0800A6F8: .4byte 0x0200107E
_0800A6FC: .4byte 0x0200107F
_0800A700: .4byte 0x080CC8F4
_0800A704: .4byte 0x03003300
_0800A708: .4byte 0x03003308
_0800A70C: .4byte 0x03003304

    .thumb
	.global sub_800A710
sub_800A710: @ 0x0800A710
	push {lr}
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #5
	bls _0800A722
	cmp r1, #0xff
	beq _0800A722
	.2byte 0xEE00, 0xEE00
_0800A722:
	ldr r0, _0800A738
	strh r1, [r0]
	ldr r0, _0800A73C
	strb r1, [r0]
	bl sub_8040178
	bl sub_8039234
	pop {r0}
	bx r0
	.align 2, 0
_0800A738: .4byte 0x02001082
_0800A73C: .4byte 0x020010AA
