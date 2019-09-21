
    .syntax unified

    .text

    .thumb
    .global exec_erasedata_screen
exec_erasedata_screen: @ 0x08024BC4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x30
	ldr r0, _08024C88
	movs r6, #0
	strh r6, [r0]
	adds r0, #4
	strh r6, [r0]
	subs r0, #0xa
	strh r6, [r0]
	adds r0, #2
	strh r6, [r0]
	subs r0, #4
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r2, #0
	strh r1, [r0]
	adds r0, #6
	strh r1, [r0]
	bl InitPregame
	mov r0, sp
	movs r3, #0
	mov sb, r3
	movs r1, #1
	mov r8, r1
	mov r2, r8
	strb r2, [r0, #0x10]
	strb r6, [r0, #0x12]
	movs r3, #5
	strb r3, [r0, #0xa]
	mov r1, sp
	movs r0, #0xf0
	strh r0, [r1, #8]
	mov r0, sp
	movs r2, #0xa
	strh r2, [r0, #0xe]
	mov r1, sb
	strh r1, [r0, #0xc]
	movs r5, #6
	strb r5, [r0, #0x11]
	ldr r1, _08024C8C
	str r1, [sp, #4]
	add r4, sp, #0x14
	mov r0, r8
	strb r0, [r4, #0x10]
	strb r6, [r4, #0x12]
	strb r3, [r4, #0xa]
	movs r0, #0xd0
	strh r0, [r4, #8]
	strh r2, [r4, #0xe]
	mov r2, sb
	strh r2, [r4, #0xc]
	strb r5, [r4, #0x11]
	str r1, [r4, #4]
	movs r0, #6
	movs r1, #0
	bl InitMenu
	ldr r0, _08024C90
	strb r5, [r0]
	ldr r1, _08024C94
	movs r0, #0xff
	strb r0, [r1]
	movs r7, #1
	rsbs r7, r7, #0
	movs r3, #1
	str r3, [sp, #0x28]
	mov r8, r7
	movs r0, #0
	str r0, [sp, #0x2c]
	mov sl, r3
	ldr r1, _08024C98
	mov sb, r1
_08024C5E:
	ldr r2, [sp, #0x28]
	cmp r2, #0
	beq _08024D56
	ldr r0, _08024C9C
	ldr r1, _08024CA0
	ldr r2, _08024CA4
	bl ReadKeys
	ldr r3, _08024CA0
	ldrh r1, [r3]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08024CC2
	bl GetCurrentMenuEntry
	cmp r0, #0
	beq _08024CA8
	cmp r0, #1
	beq _08024CB6
	b _08024CC2
	.align 2, 0
_08024C88: .4byte 0x04000028
_08024C8C: .4byte 0x080B01B0
_08024C90: .4byte gMenuId
_08024C94: .4byte gMenuParentId
_08024C98: .4byte 0x080CE440
_08024C9C: .4byte gKeysPressed
_08024CA0: .4byte gKeysDown
_08024CA4: .4byte gPreviousKeys
_08024CA8:
	movs r0, #0
	str r0, [sp, #0x28]
	movs r7, #1
	movs r1, #1
	str r1, [sp, #0x2c]
	mov sl, r0
	b _08024CC2
_08024CB6:
	movs r2, #0
	str r2, [sp, #0x28]
	movs r7, #3
	movs r3, #0xb4
	mov r8, r3
	mov sl, r2
_08024CC2:
	ldr r0, _08024D08
	ldrh r1, [r0]
	ldr r2, _08024D0C
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	bne _08024D56
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08024D20
	ldr r0, _08024D10
	ldrb r0, [r0]
	cmp r0, #0
	beq _08024D02
	movs r0, #0xcc
	lsls r0, r0, #3
	add r0, sb
	ldrh r0, [r0]
	ldr r2, _08024D14
	ldr r1, _08024D18
	add r1, sb
	ldrb r2, [r2]
	adds r1, r1, r2
	ldrb r1, [r1]
	ldr r3, _08024D1C
	ldr r2, [r3]
	movs r3, #0x80
	lsls r3, r3, #9
	adds r2, r2, r3
	bl audio_new_fx
_08024D02:
	bl AdvanceMenuEntryUp
	b _08024D56
	.align 2, 0
_08024D08: .4byte gKeysDown
_08024D0C: .4byte 0x0000030F
_08024D10: .4byte byte_203EA89
_08024D14: .4byte byte_203EA8C
_08024D18: .4byte 0x00000662
_08024D1C: .4byte 0x080CEAA4
_08024D20:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08024D56
	ldr r0, _08024DA4
	ldrb r0, [r0]
	cmp r0, #0
	beq _08024D52
	movs r0, #0xcc
	lsls r0, r0, #3
	add r0, sb
	ldrh r0, [r0]
	ldr r2, _08024DA8
	ldr r1, _08024DAC
	add r1, sb
	ldrb r2, [r2]
	adds r1, r1, r2
	ldrb r1, [r1]
	ldr r3, _08024DB0
	ldr r2, [r3]
	movs r3, #0x80
	lsls r3, r3, #9
	adds r2, r2, r3
	bl audio_new_fx
_08024D52:
	bl AdvanceMenuEntryDown
_08024D56:
	movs r0, #0
	bl SetTextSpriteCount
	movs r0, #0xaa
	ldr r1, _08024DB4
	movs r2, #0x80
	lsls r2, r2, #1
	bl DmaFill32
	ldr r0, _08024DB8
	ldr r1, _08024DB4
	str r1, [r0]
	ldr r0, _08024DBC
	ldr r2, _08024DC0
	str r2, [r0]
	ldr r1, _08024DC4
	ldr r0, _08024DC8
	str r0, [r1]
	ldr r1, _08024DCC
	movs r0, #0x80
	lsls r0, r0, #2
	str r0, [r1]
	mov r0, sp
	movs r6, #0
	movs r5, #0x10
	strh r5, [r0]
	strh r5, [r0, #2]
	strh r6, [r0, #0xc]
	ldr r1, _08024DD0
	bl AddStringToBuffer
	cmp r7, #2
	beq _08024DF0
	cmp r7, #2
	bgt _08024DD4
	cmp r7, #1
	beq _08024DDA
	b _08024E18
	.align 2, 0
_08024DA4: .4byte byte_203EA89
_08024DA8: .4byte byte_203EA8C
_08024DAC: .4byte 0x00000662
_08024DB0: .4byte 0x080CEAA4
_08024DB4: .4byte gOAMBuffer1
_08024DB8: .4byte gOAMBufferFramePtr
_08024DBC: .4byte gOAMBufferEnd
_08024DC0: .4byte gOAMBufferFramePtr
_08024DC4: .4byte gOBJTileFramePtr
_08024DC8: .4byte 0x06014000
_08024DCC: .4byte gOBJTileCount
_08024DD0: .4byte 0x080652AC
_08024DD4:
	cmp r7, #3
	beq _08024E08
	b _08024E18
_08024DDA:
	strh r5, [r4]
	movs r0, #0x46
	strh r0, [r4, #2]
	strh r6, [r4, #0xc]
	adds r0, r4, #0
	ldr r1, _08024DEC
	bl AddStringToBuffer
	b _08024E18
	.align 2, 0
_08024DEC: .4byte 0x080652C4
_08024DF0:
	strh r5, [r4]
	movs r0, #0x46
	strh r0, [r4, #2]
	strh r6, [r4, #0xc]
	adds r0, r4, #0
	ldr r1, _08024E04
	bl AddStringToBuffer
	b _08024E18
	.align 2, 0
_08024E04: .4byte 0x080652F0
_08024E08:
	strh r5, [r4]
	movs r0, #0x46
	strh r0, [r4, #2]
	strh r6, [r4, #0xc]
	adds r0, r4, #0
	ldr r1, _08024E60
	bl AddStringToBuffer
_08024E18:
	mov r3, sl
	cmp r3, #0
	beq _08024E22
	bl FlushMenuToTextBuffer
_08024E22:
	bl RenderText
	bl CheckStacks
	bl SyncVblank
	bl UpdateVideo
	bl SkipVblank
	ldr r0, [sp, #0x2c]
	cmp r0, #0
	beq _08024E4A
	bl sub_8044D30
	movs r1, #0xb4
	mov r8, r1
	movs r7, #2
	movs r2, #0
	str r2, [sp, #0x2c]
_08024E4A:
	movs r0, #1
	rsbs r0, r0, #0
	cmp r8, r0
	bne _08024E54
	b _08024C5E
_08024E54:
	mov r3, r8
	cmp r3, #0
	bne _08024E64
	bl sub_800A594
	b _08024C5E
	.align 2, 0
_08024E60: .4byte 0x08065304
_08024E64:
	movs r0, #1
	rsbs r0, r0, #0
	add r8, r0
	b _08024C5E

    .thumb
	.global exec_flashscreens
exec_flashscreens: @ 0x08024E6C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r4, _08024F24
	adds r0, r4, #0
	movs r1, #0
	bl sub_80270AC
	ldr r0, _08024F28
	ldr r1, _08024F2C
	movs r2, #0x80
	bl DmaTransfer32
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	bl sub_8026E48
	ldr r4, _08024F30
	movs r0, #0x8c
	lsls r0, r0, #3
	movs r1, #0xb
	movs r2, #4
	bl Alloc
	adds r1, r0, #0
	str r1, [r4]
	movs r2, #0x8c
	lsls r2, r2, #1
	movs r0, #0
	bl DmaFill32
	ldr r0, _08024F34
	movs r1, #0
	strb r1, [r0]
	ldr r0, _08024F38
	strb r1, [r0]
	ldr r0, _08024F3C
	strb r1, [r0]
	ldr r2, _08024F40
	movs r0, #0xa
	strb r0, [r2]
	ldr r0, _08024F44
	strb r1, [r0]
	movs r0, #7
	bl init_function
	movs r4, #0xc2
	lsls r4, r4, #1
	ldr r6, _08024F48
	movs r5, #0
	ldr r0, _08024F4C
	ldrb r0, [r0]
	cmp r0, #0
	beq _08024FC6
	ldr r0, _08024F50
	mov r8, r0
	ldr r7, _08024F54
	movs r1, #0x80
	lsls r1, r1, #3
	adds r1, r1, r7
	mov sb, r1
_08024EEA:
	ldr r0, _08024F58
	mov r1, r8
	ldr r2, _08024F5C
	bl ReadKeys
	cmp r5, #0
	beq _08024F16
	mov r0, r8
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08024F16
	bl audio_halt_all_fx
	movs r0, #2
	bl sub_805E1DC
	movs r0, #8
	bl init_function
	movs r5, #0
_08024F16:
	cmp r4, #0
	bne _08024F60
	movs r5, #1
	movs r4, #1
	rsbs r4, r4, #0
	b _08024F66
	.align 2, 0
_08024F24: .4byte 0x00000FFF
_08024F28: .4byte 0x083FD454
_08024F2C: .4byte 0x05000200
_08024F30: .4byte 0x0200032C
_08024F34: .4byte 0x02000331
_08024F38: .4byte 0x02000330
_08024F3C: .4byte 0x02000332
_08024F40: .4byte 0x02000333
_08024F44: .4byte 0x02000334
_08024F48: .4byte 0x0000029E
_08024F4C: .4byte 0x0203F99E
_08024F50: .4byte gKeysDown
_08024F54: .4byte gOAMBuffer1
_08024F58: .4byte gKeysPressed
_08024F5C: .4byte gPreviousKeys
_08024F60:
	cmp r4, #0
	ble _08024F66
	subs r4, #1
_08024F66:
	cmp r6, #0
	bne _08024F6E
	movs r5, #0
	b _08024F70
_08024F6E:
	subs r6, #1
_08024F70:
	ldr r0, _08024FE0
	ldrb r0, [r0]
	cmp r0, #0
	beq _08024F7C
	bl sub_8026DC0
_08024F7C:
	movs r0, #0
	bl SetTextSpriteCount
	movs r0, #0xaa
	adds r1, r7, #0
	movs r2, #0x80
	lsls r2, r2, #1
	bl DmaFill32
	ldr r0, _08024FE4
	str r7, [r0]
	ldr r0, _08024FE8
	mov r1, sb
	str r1, [r0]
	ldr r1, _08024FEC
	ldr r0, _08024FF0
	str r0, [r1]
	ldr r1, _08024FF4
	movs r0, #0x80
	lsls r0, r0, #2
	str r0, [r1]
	bl call_functions
	bl sub_805E088
	bl CheckStacks
	bl SyncVblank
	bl UpdateVideo
	bl SkipVblank
	ldr r0, _08024FF8
	ldrb r0, [r0]
	cmp r0, #0
	bne _08024EEA
_08024FC6:
	ldr r0, _08024FFC
	movs r1, #0
	bl sub_80270AC
	movs r0, #0
	bl SetTextSpriteCount
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08024FE0: .4byte gIsPaletteEffectsActive
_08024FE4: .4byte gOAMBufferFramePtr
_08024FE8: .4byte gOAMBufferEnd
_08024FEC: .4byte gOBJTileFramePtr
_08024FF0: .4byte 0x06014000
_08024FF4: .4byte gOBJTileCount
_08024FF8: .4byte 0x0203F99E
_08024FFC: .4byte 0x00000FFF
