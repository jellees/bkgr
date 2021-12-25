
    .syntax unified

    .text

    .thumb
    .global sub_08062D04
sub_08062D04: @ 0x08062D04
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x2c
	add r4, sp, #0x14
	movs r2, #0
	movs r0, #0x47
	strb r0, [r4]
	movs r0, #0x41
	strb r0, [r4, #1]
	movs r0, #0x4d
	strb r0, [r4, #2]
	movs r1, #0x45
	strb r1, [r4, #3]
	movs r0, #0x20
	strb r0, [r4, #4]
	movs r0, #0x4f
	strb r0, [r4, #5]
	movs r0, #0x56
	strb r0, [r4, #6]
	strb r1, [r4, #7]
	movs r0, #0x52
	strb r0, [r4, #8]
	movs r0, #0xff
	strb r0, [r4, #9]
	mov r1, sp
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
	ldr r0, _08062DC4
	str r0, [sp, #4]
	adds r0, r4, #0
	bl sub_8025870
	str r0, [sp, #0x24]
	movs r0, #0xe
	bl init_function
	movs r7, #1
	movs r0, #0
	str r0, [sp, #0x28]
	mov sb, r4
	ldr r6, _08062DC8
	ldr r1, _08062DCC
	adds r1, r1, r6
	mov sl, r1
	mov r5, sb
	ldr r2, _08062DD0
	mov r8, r2
_08062D80:
	ldr r3, [sp, #0x28]
	cmp r3, #0
	beq _08062D88
	b _08062F00
_08062D88:
	cmp r7, #0
	beq _08062D8E
	b _08062F00
_08062D8E:
	ldr r4, _08062DD4
	ldr r0, _08062DD8
	adds r1, r4, #0
	ldr r2, _08062DDC
	bl ReadKeys
	ldrh r4, [r4]
	movs r0, #2
	ands r0, r4
	cmp r0, #0
	beq _08062E3C
	ldr r2, _08062DE0
	ldrb r1, [r2]
	adds r0, r1, #0
	cmp r0, #0xff
	beq _08062E62
	ldr r0, _08062DE4
	strb r1, [r0]
	ldrb r0, [r2]
	cmp r0, #4
	beq _08062DE8
	cmp r0, #5
	beq _08062E22
	.2byte 0xEE00, 0xEE00
	b _08062E26
	.align 2, 0
_08062DC4: .4byte 0x080B01B8
_08062DC8: .4byte 0x080CE440
_08062DCC: .4byte 0x00000664
_08062DD0: .4byte gOAMBuffer1
_08062DD4: .4byte gKeysDown
_08062DD8: .4byte gKeysPressed
_08062DDC: .4byte gPreviousKeys
_08062DE0: .4byte gMenuParentId
_08062DE4: .4byte gMenuId
_08062DE8:
	movs r0, #0xff
	strb r0, [r2]
	movs r0, #0x47
	strb r0, [r5]
	movs r0, #0x41
	strb r0, [r5, #1]
	movs r0, #0x4d
	strb r0, [r5, #2]
	movs r1, #0x45
	strb r1, [r5, #3]
	movs r0, #0x20
	strb r0, [r5, #4]
	movs r0, #0x4f
	strb r0, [r5, #5]
	movs r0, #0x56
	strb r0, [r5, #6]
	strb r1, [r5, #7]
	movs r0, #0x52
	strb r0, [r5, #8]
	ldrb r0, [r5, #9]
	movs r1, #0xff
	orrs r0, r1
	strb r0, [r5, #9]
	adds r0, r5, #0
	mov r1, sp
	bl sub_8025870
	str r0, [sp, #0x24]
	b _08062E26
_08062E22:
	movs r0, #4
	strb r0, [r2]
_08062E26:
	ldr r0, _08062E34
	ldrb r0, [r0]
	ldr r1, _08062E38
	ldrb r1, [r1]
	bl InitMenu
	b _08062E62
	.align 2, 0
_08062E34: .4byte gMenuId
_08062E38: .4byte 0x02000320
_08062E3C:
	movs r0, #1
	ands r0, r4
	cmp r0, #0
	beq _08062E62
	mov r0, sp
	mov r1, sb
	add r2, sp, #0x24
	bl sub_8062FC4
	cmp r0, #0
	beq _08062E62
	movs r2, #1
	str r2, [sp, #0x28]
	movs r0, #2
	bl sub_805E1DC
	movs r0, #0xf
	bl init_function
_08062E62:
	ldr r0, _08062EA8
	ldrh r1, [r0]
	ldr r3, _08062EAC
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	bne _08062F08
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08062EBC
	ldr r0, _08062EB0
	ldrb r0, [r0]
	cmp r0, #0
	beq _08062EA2
	movs r1, #0xcc
	lsls r1, r1, #3
	adds r0, r6, r1
	ldrh r0, [r0]
	ldr r2, _08062EB4
	ldr r3, _08062EB8
	adds r1, r6, r3
	ldrb r2, [r2]
	adds r1, r1, r2
	ldrb r1, [r1]
	mov r3, sl
	ldr r2, [r3]
	movs r3, #0x80
	lsls r3, r3, #9
	adds r2, r2, r3
	bl audio_new_fx
_08062EA2:
	bl AdvanceMenuEntryUp
	b _08062F08
	.align 2, 0
_08062EA8: .4byte gKeysDown
_08062EAC: .4byte 0x0000030F
_08062EB0: .4byte byte_203EA89
_08062EB4: .4byte byte_203EA8C
_08062EB8: .4byte 0x00000662
_08062EBC:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08062F08
	ldr r0, _08062EF4
	ldrb r0, [r0]
	cmp r0, #0
	beq _08062EEE
	movs r1, #0xcc
	lsls r1, r1, #3
	adds r0, r6, r1
	ldrh r0, [r0]
	ldr r2, _08062EF8
	ldr r3, _08062EFC
	adds r1, r6, r3
	ldrb r2, [r2]
	adds r1, r1, r2
	ldrb r1, [r1]
	mov r3, sl
	ldr r2, [r3]
	movs r3, #0x80
	lsls r3, r3, #9
	adds r2, r2, r3
	bl audio_new_fx
_08062EEE:
	bl AdvanceMenuEntryDown
	b _08062F08
	.align 2, 0
_08062EF4: .4byte byte_203EA89
_08062EF8: .4byte byte_203EA8C
_08062EFC: .4byte 0x00000662
_08062F00:
	ldr r0, _08062F8C
	ldrb r0, [r0]
	cmp r0, #0
	beq _08062FAC
_08062F08:
	movs r0, #0
	bl SetTextSpriteCount
	movs r0, #0xaa
	mov r1, r8
	movs r2, #0x80
	lsls r2, r2, #1
	bl DmaFill32
	ldr r0, _08062F90
	mov r1, r8
	str r1, [r0]
	ldr r0, _08062F94
	ldr r2, _08062F98
	str r2, [r0]
	ldr r1, _08062F9C
	ldr r0, _08062FA0
	str r0, [r1]
	ldr r1, _08062FA4
	movs r0, #0x80
	lsls r0, r0, #2
	str r0, [r1]
	bl call_functions
	bl sub_805E088
	mov r2, sp
	ldr r1, [sp, #0x24]
	movs r0, #0xf0
	subs r0, r0, r1
	asrs r0, r0, #1
	movs r3, #0
	strh r0, [r2]
	mov r1, sp
	movs r0, #0x14
	strh r0, [r1, #2]
	mov r0, sp
	strh r3, [r0, #0xc]
	mov r1, sb
	bl AddStringToBuffer
	bl FlushMenuToTextBuffer
	bl RenderText
	bl RenderMenuSprites
	bl CheckStacks
	bl SyncVblank
	bl UpdateVideo
	bl SkipVblank
	cmp r7, #0
	bne _08062F7C
	b _08062D80
_08062F7C:
	movs r7, #0
	ldr r0, _08062FA8
	movs r1, #1
	movs r2, #0
	bl sub_8026E48
	b _08062D80
	.align 2, 0
_08062F8C: .4byte byte_203F99E
_08062F90: .4byte gOAMBufferFramePtr
_08062F94: .4byte gOAMBufferEnd
_08062F98: .4byte gOAMBufferFramePtr
_08062F9C: .4byte gOBJTileFramePtr
_08062FA0: .4byte 0x06014000
_08062FA4: .4byte gOBJTileCount
_08062FA8: .4byte 0x00000FFF
_08062FAC:
	movs r0, #0
	bl SetTextSpriteCount
	add sp, #0x2c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

    .thumb
sub_8062FC4: @ 0x08062FC4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0
	adds r5, r1, #0
	mov r8, r2
	ldr r6, _08062FE0
	ldrb r0, [r6]
	cmp r0, #4
	beq _08062FE4
	cmp r0, #5
	beq _08063044
	b _080630AC
	.align 2, 0
_08062FE0: .4byte gMenuId
_08062FE4:
	bl GetCurrentMenuEntry
	cmp r0, #0
	beq _08062FF2
	cmp r0, #1
	beq _08062FF6
	b _080630AC
_08062FF2:
	movs r0, #1
	b _080630AE
_08062FF6:
	ldr r1, _0806303C
	ldrb r0, [r6]
	strb r0, [r1]
	movs r0, #5
	strb r0, [r6]
	ldr r0, _08063040
	ldrb r1, [r0]
	movs r0, #5
	bl InitMenu
	movs r0, #0x41
	strb r0, [r5]
	movs r4, #0x52
	strb r4, [r5, #1]
	movs r3, #0x45
	strb r3, [r5, #2]
	movs r2, #0x20
	strb r2, [r5, #3]
	movs r0, #0x59
	strb r0, [r5, #4]
	movs r0, #0x4f
	strb r0, [r5, #5]
	movs r1, #0x55
	strb r1, [r5, #6]
	strb r2, [r5, #7]
	movs r0, #0x53
	strb r0, [r5, #8]
	strb r1, [r5, #9]
	strb r4, [r5, #0xa]
	strb r3, [r5, #0xb]
	movs r0, #0x3f
	strb r0, [r5, #0xc]
	movs r0, #0xff
	strb r0, [r5, #0xd]
	b _080630A0
	.align 2, 0
_0806303C: .4byte gMenuParentId
_08063040: .4byte 0x02000320
_08063044:
	bl GetCurrentMenuEntry
	cmp r0, #0
	beq _08063052
	cmp r0, #1
	beq _08063068
	b _080630AC
_08063052:
	ldr r0, _08063064
	movs r1, #1
	bl sub_80271A4
	movs r0, #0xff
	bl sub_080643D0
	b _080630AC
	.align 2, 0
_08063064: .4byte 0x00000FFF
_08063068:
	ldr r0, _080630B8
	movs r4, #0xff
	strb r4, [r0]
	movs r0, #4
	strb r0, [r6]
	ldr r0, _080630BC
	ldrb r1, [r0]
	movs r0, #4
	bl InitMenu
	movs r0, #0x47
	strb r0, [r5]
	movs r0, #0x41
	strb r0, [r5, #1]
	movs r0, #0x4d
	strb r0, [r5, #2]
	movs r1, #0x45
	strb r1, [r5, #3]
	movs r0, #0x20
	strb r0, [r5, #4]
	movs r0, #0x4f
	strb r0, [r5, #5]
	movs r0, #0x56
	strb r0, [r5, #6]
	strb r1, [r5, #7]
	movs r0, #0x52
	strb r0, [r5, #8]
	strb r4, [r5, #9]
_080630A0:
	adds r0, r5, #0
	adds r1, r7, #0
	bl sub_8025870
	mov r1, r8
	str r0, [r1]
_080630AC:
	movs r0, #0
_080630AE:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080630B8: .4byte gMenuParentId
_080630BC: .4byte 0x02000320
