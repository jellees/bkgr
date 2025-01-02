    .syntax unified
    .text
	
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
