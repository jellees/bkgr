
    .syntax unified

    .text

    .thumb
	.global sub_080466EC
sub_080466EC: @ 0x080466EC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x38
	mov r0, sp
	movs r2, #0
	movs r1, #1
	strb r1, [r0, #0x10]
	strb r2, [r0, #0x12]
	strb r1, [r0, #0xa]
	movs r3, #0
	mov r8, r3
	movs r6, #0xf0
	strh r6, [r0, #8]
	movs r4, #0xa
	strh r4, [r0, #0xe]
	strh r2, [r0, #0xc]
	movs r3, #6
	strb r3, [r0, #0x11]
	ldr r0, _08046788
	str r0, [sp, #4]
	add r5, sp, #0x14
	strb r1, [r5, #0x10]
	mov r7, r8
	strb r7, [r5, #0x12]
	strb r1, [r5, #0xa]
	strh r6, [r5, #8]
	strh r4, [r5, #0xe]
	strh r2, [r5, #0xc]
	strb r3, [r5, #0x11]
	str r0, [r5, #4]
	add r6, sp, #0x28
	movs r0, #0x7b
	mov r8, r0
	mov r1, r8
	strb r1, [r6]
	movs r2, #0x20
	mov sb, r2
	mov r3, sb
	strb r3, [r6, #1]
	ldr r0, _0804678C
	ldrb r0, [r0]
	movs r7, #0x2a
	add r7, sp
	mov sl, r7
	mov r1, sl
	bl IntegerToAsciiBw
	mov r0, sb
	strb r0, [r6, #3]
	movs r7, #0x7d
	strb r7, [r6, #4]
	movs r0, #0xff
	strb r0, [r6, #5]
	add r4, sp, #0x30
	mov r1, r8
	strb r1, [r4]
	mov r2, sb
	strb r2, [r4, #1]
	ldr r0, _08046790
	ldrb r0, [r0]
	movs r3, #0x32
	add r3, sp
	mov r8, r3
	mov r1, r8
	bl IntegerToAsciiBw
	mov r0, sb
	strb r0, [r4, #3]
	strb r7, [r4, #4]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r4, #5]
	mov sb, r5
	b _080467EA
	.align 2, 0
_08046788: .4byte 0x080B01B0
_0804678C: .4byte gBgmVolumeIndex
_08046790: .4byte gSfxVolumeIndex
_08046794:
	bl sub_804087C
	movs r0, #0
	bl SetTextSpriteCount
	ldr r4, _080468B8
	movs r0, #0xaa
	adds r1, r4, #0
	adds r2, r6, #0
	bl DmaFill32
	ldr r0, _080468BC
	str r4, [r0]
	ldr r0, _080468C0
	movs r1, #0x80
	lsls r1, r1, #3
	adds r4, r4, r1
	str r4, [r0]
	ldr r1, _080468C4
	ldr r0, _080468C8
	str r0, [r1]
	ldr r0, _080468CC
	str r5, [r0]
	bl sub_804095C
	bl FlushMenuToTextBuffer
	bl RenderText
	bl sub_80408F0
	bl RenderMenuSprites
	bl sub_8046D44
	bl CheckStacks
	bl SyncVblank
	bl UpdateVideo
	bl SkipVblank
_080467EA:
	ldr r1, _080468D0
	ldr r0, _080468D4
	ldrh r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	movs r6, #0x80
	lsls r6, r6, #1
	adds r0, r6, #0
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_8040FF4
	adds r5, r0, #0
	cmp r5, #0
	beq _08046794
	movs r0, #2
	movs r1, #0
	bl FadeOutObjects
	movs r0, #0
	bl SetTextSpriteCount
	ldr r4, _080468B8
	movs r0, #0xaa
	adds r1, r4, #0
	adds r2, r6, #0
	bl DmaFill32
	ldr r0, _080468BC
	str r4, [r0]
	ldr r0, _080468C0
	movs r2, #0x80
	lsls r2, r2, #3
	adds r4, r4, r2
	str r4, [r0]
	ldr r1, _080468C4
	ldr r0, _080468C8
	str r0, [r1]
	ldr r1, _080468CC
	movs r0, #0
	str r0, [r1]
	bl SyncVblank
	bl UpdateVideo
	bl SkipVblank
	ldr r1, _080468D8
	movs r3, #0xfc
	lsls r3, r3, #6
	adds r0, r3, #0
	strh r0, [r1]
	adds r1, #2
	ldr r7, _080468DC
	adds r0, r7, #0
	strh r0, [r1]
	ldr r0, _080468E0
	ldrb r1, [r0]
	movs r0, #8
	bl InitMenu
	ldr r2, _080468E4
	ldr r1, _080468E8
	ldrb r0, [r1]
	strb r0, [r2]
	movs r0, #8
	strb r0, [r1]
	movs r6, #0
	bl SetObjectsFullAlpha
	movs r0, #1
	mov sl, r0
	ldr r1, _080468EC
	mov r8, r1
	ldr r5, _080468F0
	mov r7, sp
_08046886:
	ldr r4, _080468F4
	ldr r0, _080468F8
	adds r1, r4, #0
	ldr r2, _080468FC
	bl ReadKeys
	ldrh r4, [r4]
	movs r0, #2
	ands r0, r4
	cmp r0, #0
	beq _0804689E
	b _08046CC0
_0804689E:
	movs r0, #0x20
	ands r0, r4
	cmp r0, #0
	beq _08046982
	bl GetCurrentMenuEntry
	cmp r0, #1
	beq _08046920
	cmp r0, #1
	bgt _08046900
	cmp r0, #0
	beq _0804690A
	b _0804697C
	.align 2, 0
_080468B8: .4byte gOAMBuffer1
_080468BC: .4byte gOAMBufferFramePtr
_080468C0: .4byte gOAMBufferEnd
_080468C4: .4byte gOBJTileFramePtr
_080468C8: .4byte 0x06010000
_080468CC: .4byte gOBJTileCount
_080468D0: .4byte gPlayerStateSettings
_080468D4: .4byte gPlayerState
_080468D8: .4byte 0x04000050
_080468DC: .4byte 0x00000907
_080468E0: .4byte 0x02000320
_080468E4: .4byte gMenuParentId
_080468E8: .4byte gMenuId
_080468EC: .4byte dVolumes
_080468F0: .4byte 0x080CE440
_080468F4: .4byte gKeysDown
_080468F8: .4byte gKeysPressed
_080468FC: .4byte gPreviousKeys
_08046900:
	cmp r0, #2
	beq _08046934
	cmp r0, #3
	beq _08046968
	b _0804697C
_0804690A:
	ldr r1, _0804691C
	ldrb r0, [r1]
	cmp r0, #0
	bne _08046914
	b _08046AF2
_08046914:
	subs r0, #1
	strb r0, [r1]
	b _08046AF2
	.align 2, 0
_0804691C: .4byte 0x02001100
_08046920:
	ldr r4, _08046930
	ldrb r0, [r4]
	cmp r0, #0
	bne _0804692A
	b _08046AF2
_0804692A:
	subs r0, #1
	b _080469C8
	.align 2, 0
_08046930: .4byte gBgmVolumeIndex
_08046934:
	ldr r4, _08046960
	ldrb r0, [r4]
	cmp r0, #0
	bne _0804693E
	b _08046AF2
_0804693E:
	subs r0, #1
	strb r0, [r4]
	ldrb r0, [r4]
	lsls r0, r0, #2
	add r0, r8
	ldr r0, [r0]
	bl audio_set_fx_vol
	ldr r0, _08046964
	ldrb r0, [r0]
	cmp r0, #0
	beq _08046A2C
	movs r2, #0xc8
	lsls r2, r2, #3
	adds r0, r5, r2
	b _08046A10
	.align 2, 0
_08046960: .4byte gSfxVolumeIndex
_08046964: .4byte byte_203EA89
_08046968:
	ldr r1, _08046978
	ldrb r0, [r1]
	cmp r0, #0
	bne _08046972
	b _08046AF2
_08046972:
	subs r0, #1
	b _08046A56
	.align 2, 0
_08046978: .4byte 0x02000320
_0804697C:
	.2byte 0xEE00, 0xEE00
	b _08046AF2
_08046982:
	movs r0, #0x10
	ands r0, r4
	cmp r0, #0
	beq _08046A72
	bl GetCurrentMenuEntry
	cmp r0, #1
	beq _080469BC
	cmp r0, #1
	bgt _0804699C
	cmp r0, #0
	beq _080469A6
	b _08046A6C
_0804699C:
	cmp r0, #2
	beq _080469E8
	cmp r0, #3
	beq _08046A4C
	b _08046A6C
_080469A6:
	ldr r1, _080469B8
	ldrb r0, [r1]
	cmp r0, #1
	bls _080469B0
	b _08046AF2
_080469B0:
	adds r0, #1
	strb r0, [r1]
	b _08046AF2
	.align 2, 0
_080469B8: .4byte 0x02001100
_080469BC:
	ldr r4, _080469E4
	ldrb r0, [r4]
	cmp r0, #8
	bls _080469C6
	b _08046AF2
_080469C6:
	adds r0, #1
_080469C8:
	strb r0, [r4]
	ldrb r0, [r4]
	lsls r0, r0, #2
	add r0, r8
	ldr r0, [r0]
	bl audio_set_tune_vol
	ldrb r0, [r4]
	mov r1, sp
	adds r1, #0x2a
	bl IntegerToAsciiBw
	b _08046AF2
	.align 2, 0
_080469E4: .4byte gBgmVolumeIndex
_080469E8:
	ldr r4, _08046A38
	ldrb r0, [r4]
	cmp r0, #8
	bls _080469F2
	b _08046AF2
_080469F2:
	adds r0, #1
	strb r0, [r4]
	ldrb r0, [r4]
	lsls r0, r0, #2
	add r0, r8
	ldr r0, [r0]
	bl audio_set_fx_vol
	ldr r0, _08046A3C
	ldrb r0, [r0]
	cmp r0, #0
	beq _08046A2C
	movs r1, #0xc8
	lsls r1, r1, #3
	adds r0, r5, r1
_08046A10:
	ldrh r0, [r0]
	ldr r2, _08046A40
	ldr r3, _08046A44
	adds r1, r5, r3
	ldrb r2, [r2]
	adds r1, r1, r2
	ldrb r1, [r1]
	ldr r3, _08046A48
	ldr r2, [r3]
	movs r3, #0x80
	lsls r3, r3, #9
	adds r2, r2, r3
	bl audio_new_fx
_08046A2C:
	ldrb r0, [r4]
	mov r1, sp
	adds r1, #0x32
	bl IntegerToAsciiBw
	b _08046AF2
	.align 2, 0
_08046A38: .4byte gSfxVolumeIndex
_08046A3C: .4byte byte_203EA89
_08046A40: .4byte byte_203EA8C
_08046A44: .4byte 0x00000642
_08046A48: .4byte 0x080CEA84
_08046A4C:
	ldr r1, _08046A64
	ldrb r0, [r1]
	cmp r0, #3
	bhi _08046AF2
	adds r0, #1
_08046A56:
	strb r0, [r1]
	ldr r0, _08046A68
	ldrh r0, [r0]
	bl sub_8025E44
	b _08046AF2
	.align 2, 0
_08046A64: .4byte 0x02000320
_08046A68: .4byte gLoadedRoomLevel
_08046A6C:
	.2byte 0xEE00, 0xEE00
	b _08046AF2
_08046A72:
	movs r0, #0x40
	ands r0, r4
	cmp r0, #0
	beq _08046ABC
	ldr r0, _08046AAC
	ldrb r0, [r0]
	cmp r0, #0
	beq _08046AA4
	movs r1, #0xcc
	lsls r1, r1, #3
	adds r0, r5, r1
	ldrh r0, [r0]
	ldr r2, _08046AB0
	ldr r3, _08046AB4
	adds r1, r5, r3
	ldrb r2, [r2]
	adds r1, r1, r2
	ldrb r1, [r1]
	ldr r3, _08046AB8
	ldr r2, [r3]
	movs r3, #0x80
	lsls r3, r3, #9
	adds r2, r2, r3
	bl audio_new_fx
_08046AA4:
	bl AdvanceMenuEntryUp
	b _08046AF2
	.align 2, 0
_08046AAC: .4byte byte_203EA89
_08046AB0: .4byte byte_203EA8C
_08046AB4: .4byte 0x00000662
_08046AB8: .4byte 0x080CEAA4
_08046ABC:
	movs r0, #0x80
	ands r0, r4
	cmp r0, #0
	beq _08046AF2
	ldr r0, _08046B54
	ldrb r0, [r0]
	cmp r0, #0
	beq _08046AEE
	movs r1, #0xcc
	lsls r1, r1, #3
	adds r0, r5, r1
	ldrh r0, [r0]
	ldr r2, _08046B58
	ldr r3, _08046B5C
	adds r1, r5, r3
	ldrb r2, [r2]
	adds r1, r1, r2
	ldrb r1, [r1]
	ldr r3, _08046B60
	ldr r2, [r3]
	movs r3, #0x80
	lsls r3, r3, #9
	adds r2, r2, r3
	bl audio_new_fx
_08046AEE:
	bl AdvanceMenuEntryDown
_08046AF2:
	cmp r6, #0
	beq _08046AF8
	b _08046CC0
_08046AF8:
	movs r0, #0
	bl SetTextSpriteCount
	ldr r4, _08046B64
	movs r0, #0xaa
	adds r1, r4, #0
	movs r2, #0x80
	lsls r2, r2, #1
	bl DmaFill32
	ldr r0, _08046B68
	str r4, [r0]
	ldr r0, _08046B6C
	movs r1, #0x80
	lsls r1, r1, #3
	adds r4, r4, r1
	str r4, [r0]
	ldr r1, _08046B70
	ldr r0, _08046B74
	str r0, [r1]
	ldr r0, _08046B78
	str r6, [r0]
	ldr r0, _08046B7C
	ldr r1, _08046B80
	ldr r2, [r1]
	movs r1, #0xf0
	subs r1, r1, r2
	asrs r1, r1, #1
	strh r1, [r0]
	movs r1, #8
	strh r1, [r0, #2]
	strh r6, [r0, #0xc]
	ldr r1, _08046B84
	ldr r1, [r1]
	bl AddStringToBuffer
	ldr r0, _08046B88
	ldrb r0, [r0]
	cmp r0, #1
	beq _08046BC8
	cmp r0, #1
	bgt _08046B8C
	cmp r0, #0
	beq _08046B92
	b _08046C30
	.align 2, 0
_08046B54: .4byte byte_203EA89
_08046B58: .4byte byte_203EA8C
_08046B5C: .4byte 0x00000662
_08046B60: .4byte 0x080CEAA4
_08046B64: .4byte gOAMBuffer1
_08046B68: .4byte gOAMBufferFramePtr
_08046B6C: .4byte gOAMBufferEnd
_08046B70: .4byte gOBJTileFramePtr
_08046B74: .4byte 0x06010000
_08046B78: .4byte gOBJTileCount
_08046B7C: .4byte 0x0203F55C
_08046B80: .4byte 0x0203F558
_08046B84: .4byte 0x0203F554
_08046B88: .4byte 0x02001100
_08046B8C:
	cmp r0, #2
	beq _08046BFC
	b _08046C30
_08046B92:
	ldr r4, _08046BAC
	movs r0, #0x78
	strh r0, [r4]
	movs r0, #0x24
	strh r0, [r4, #2]
	strh r6, [r4, #0xc]
	bl GetCurrentMenuEntry
	cmp r0, #0
	bne _08046BB0
	movs r0, #0xa
	b _08046BB2
	.align 2, 0
_08046BAC: .4byte 0x0203F670
_08046BB0:
	movs r0, #0xf
_08046BB2:
	strh r0, [r4, #0xe]
	ldr r0, _08046BC0
	ldr r1, [r0]
	ldr r0, _08046BC4
	bl AddStringToBuffer
	b _08046C34
	.align 2, 0
_08046BC0: .4byte 0x0203F664
_08046BC4: .4byte 0x0203F670
_08046BC8:
	ldr r4, _08046BE0
	movs r0, #0x78
	strh r0, [r4, #0x14]
	movs r0, #0x24
	strh r0, [r4, #0x16]
	strh r6, [r4, #0x20]
	bl GetCurrentMenuEntry
	cmp r0, #0
	bne _08046BE4
	movs r0, #0xa
	b _08046BE6
	.align 2, 0
_08046BE0: .4byte 0x0203F670
_08046BE4:
	movs r0, #0xf
_08046BE6:
	strh r0, [r4, #0x22]
	ldr r0, _08046BF4
	ldr r1, [r0, #4]
	ldr r0, _08046BF8
	bl AddStringToBuffer
	b _08046C34
	.align 2, 0
_08046BF4: .4byte 0x0203F664
_08046BF8: .4byte 0x0203F684
_08046BFC:
	ldr r4, _08046C14
	movs r0, #0x78
	strh r0, [r4, #0x28]
	movs r0, #0x24
	strh r0, [r4, #0x2a]
	strh r6, [r4, #0x34]
	bl GetCurrentMenuEntry
	cmp r0, #0
	bne _08046C18
	movs r0, #0xa
	b _08046C1A
	.align 2, 0
_08046C14: .4byte 0x0203F670
_08046C18:
	movs r0, #0xf
_08046C1A:
	strh r0, [r4, #0x36]
	ldr r0, _08046C28
	ldr r1, [r0, #8]
	ldr r0, _08046C2C
	bl AddStringToBuffer
	b _08046C34
	.align 2, 0
_08046C28: .4byte 0x0203F664
_08046C2C: .4byte 0x0203F698
_08046C30:
	.2byte 0xEE00, 0xEE00
_08046C34:
	movs r1, #0
	movs r0, #0x78
	strh r0, [r7]
	movs r0, #0x38
	strh r0, [r7, #2]
	strh r1, [r7, #0xc]
	bl GetCurrentMenuEntry
	cmp r0, #1
	bne _08046C4C
	movs r0, #0xa
	b _08046C4E
_08046C4C:
	movs r0, #0xf
_08046C4E:
	strh r0, [r7, #0xe]
	mov r0, sp
	add r1, sp, #0x28
	bl AddStringToBuffer
	movs r1, #0
	movs r0, #0x78
	mov r2, sb
	strh r0, [r2]
	movs r0, #0x4c
	strh r0, [r2, #2]
	strh r1, [r2, #0xc]
	bl GetCurrentMenuEntry
	cmp r0, #2
	bne _08046C76
	movs r0, #0xa
	mov r3, sb
	strh r0, [r3, #0xe]
	b _08046C7C
_08046C76:
	movs r0, #0xf
	mov r1, sb
	strh r0, [r1, #0xe]
_08046C7C:
	mov r0, sb
	add r1, sp, #0x30
	bl AddStringToBuffer
	bl FlushMenuToTextBuffer
	bl RenderText
	bl RenderMenuSprites
	bl sub_8046D44
	movs r0, #4
	bl CheckHeap
	bl CheckStacks
	bl SyncVblank
	bl UpdateVideo
	bl SkipVblank
	mov r2, sl
	cmp r2, #0
	bne _08046CB2
	b _08046886
_08046CB2:
	movs r0, #2
	movs r1, #0
	bl sub_08026BA8
	movs r3, #0
	mov sl, r3
	b _08046886
_08046CC0:
	movs r0, #2
	movs r1, #0
	bl FadeOutObjects
	movs r0, #0
	bl SetTextSpriteCount
	ldr r4, _08046D24
	movs r2, #0x80
	lsls r2, r2, #1
	movs r0, #0xaa
	adds r1, r4, #0
	bl DmaFill32
	ldr r0, _08046D28
	str r4, [r0]
	ldr r0, _08046D2C
	movs r7, #0x80
	lsls r7, r7, #3
	adds r4, r4, r7
	str r4, [r0]
	ldr r1, _08046D30
	ldr r0, _08046D34
	str r0, [r1]
	ldr r1, _08046D38
	movs r0, #0
	str r0, [r1]
	bl SyncVblank
	bl UpdateVideo
	bl SkipVblank
	ldr r1, _08046D3C
	movs r2, #0xfc
	lsls r2, r2, #6
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #2
	ldr r3, _08046D40
	adds r0, r3, #0
	strh r0, [r1]
	add sp, #0x38
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08046D24: .4byte gOAMBuffer1
_08046D28: .4byte gOAMBufferFramePtr
_08046D2C: .4byte gOAMBufferEnd
_08046D30: .4byte gOBJTileFramePtr
_08046D34: .4byte 0x06010000
_08046D38: .4byte gOBJTileCount
_08046D3C: .4byte 0x04000050
_08046D40: .4byte 0x00000907

    .thumb
	.global sub_8046D44
sub_8046D44: @ 0x08046D44
	push {r4, r5, r6, lr}
	movs r4, #0
	ldr r6, _08046D70
	movs r5, #0
_08046D4C:
	ldr r0, _08046D74
	ldr r0, [r0]
	adds r0, r0, r4
	ldrb r0, [r0]
	cmp r0, #0
	beq _08046D60
	ldr r0, [r6]
	adds r0, r0, r5
	bl RenderSprite
_08046D60:
	adds r5, #0x1c
	adds r4, #1
	cmp r4, #2
	ble _08046D4C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08046D70: .4byte 0x0203F4EC
_08046D74: .4byte 0x0203F4F0
