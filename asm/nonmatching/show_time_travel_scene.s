
    .thumb
script_cmd_display_time_travel_scene: @ 0x08060210
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
	bl sprite_set_affine
	b _080604C2
	.align 2, 0
_080604B4: .4byte byte_2000F55
_080604B8:
	adds r2, #0x80
	movs r0, #0
	mov r1, r8
	bl sprite_set_affine
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
