
    .syntax unified

    .text

    .thumb
    .global sub_08013378
sub_08013378: @ 0x08013378
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r5, r0, #0
	adds r7, r1, #0
	mov r8, r2
	mov sb, r3
	movs r6, #0
	cmp r5, #0x25
	bls _08013392
	.2byte 0xEE00, 0xEE00
_08013392:
	ldr r0, _08013490
	str r6, [r0]
	ldr r0, _08013494
	strb r6, [r0]
	ldr r0, _08013498
	strh r5, [r0]
	ldr r2, _0801349C
	ldr r0, _080134A0
	lsls r1, r5, #3
	adds r0, r1, r0
	ldrb r3, [r0, #4]
	ldrh r0, [r2]
	adds r4, r1, #0
	cmp r0, r3
	beq _080133BA
	cmp r3, #0xff
	beq _080133BA
	adds r0, r3, #0
	bl sub_800A710
_080133BA:
	ldr r2, _080134A4
	ldr r0, _080134A0
	adds r0, r4, r0
	ldrh r1, [r0, #6]
	ldrh r0, [r2]
	cmp r0, r1
	beq _080133D8
	strh r1, [r2]
	ldr r0, _080134A8
	ldrb r0, [r0]
	cmp r0, #0
	beq _080133D8
	ldrh r0, [r2]
	bl audio_start_tune
_080133D8:
	ldr r0, _080134A0
	adds r0, r4, r0
	ldr r0, [r0]
	ldr r4, _080134AC
	adds r1, r4, #0
	movs r2, #0x19
	bl DmaTransfer32
	ldr r1, _080134B0
	ldrh r0, [r4, #8]
	strh r0, [r1]
	ldr r0, [r4, #0x48]
	ldrh r0, [r0]
	cmp r0, #0xff
	bls _080133FA
	.2byte 0xEE00, 0xEE00
_080133FA:
	ldr r1, _080134B4
	ldrh r0, [r4, #0xa]
	lsls r0, r0, #5
	strh r0, [r1]
	ldr r1, _080134B8
	ldrh r0, [r4, #0xc]
	lsls r0, r0, #5
	strh r0, [r1]
	ldr r1, _080134BC
	adds r0, r4, #0
	adds r0, #0x5c
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _080134C0
	adds r0, r4, #0
	adds r0, #0x5d
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _080134C4
	adds r0, r4, #0
	adds r0, #0x5e
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _080134C8
	adds r0, r4, #0
	adds r0, #0x5f
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, [r4, #0x34]
	adds r1, r7, #0
	mov r2, r8
	mov r3, sb
	bl setup_collision_xyz
	ldr r0, _0801349C
	ldrh r0, [r0]
	bl sub_8038FA0
	ldr r2, [r4, #0x40]
	adds r0, r5, #0
	ldr r1, [sp, #0x1c]
	bl setup_entities
	ldr r0, [r4, #0x44]
	ldr r1, _080134CC
	movs r2, #0x80
	bl DmaTransfer32
	ldr r0, [r4, #0x18]
	movs r1, #0xa0
	lsls r1, r1, #0x13
	movs r2, #0x80
	bl DmaTransfer32
	ldr r1, _08013490
	ldr r0, [r1]
	cmp r0, #0
	beq _08013472
	movs r0, #0
	str r0, [r1]
_08013472:
	ldrh r0, [r4]
	cmp r0, #0
	beq _08013558
	ldr r1, [r4, #0x2c]
	cmp r1, #0
	bne _080134FE
	ldrb r0, [r4, #0xf]
	cmp r0, #1
	beq _080134E6
	cmp r0, #1
	bgt _080134D0
	cmp r0, #0
	beq _080134D6
	b _08013558
	.align 2, 0
_08013490: .4byte gLoadedTileAnimCount
_08013494: .4byte 0x030032A8
_08013498: .4byte gLoadedRoomIndex
_0801349C: .4byte gLoadedRoomLevel
_080134A0: .4byte 0x080CF4EC
_080134A4: .4byte gLoadedRoomBgm
_080134A8: .4byte 0x0203EA88
_080134AC: .4byte gRoomHeader
_080134B0: .4byte gEnabledBGs
_080134B4: .4byte gMapPixelSizeX
_080134B8: .4byte gMapPixelSizeY
_080134BC: .4byte 0x0200208C
_080134C0: .4byte 0x0200208D
_080134C4: .4byte 0x0200208E
_080134C8: .4byte 0x0200208F
_080134CC: .4byte 0x05000200
_080134D0:
	cmp r0, #2
	beq _080134F2
	b _08013558
_080134D6:
	ldr r0, [r4, #0x1c]
	movs r1, #0xc0
	lsls r1, r1, #0x13
	ldrh r2, [r4]
	lsls r2, r2, #3
	bl DmaTransfer32
	b _08013558
_080134E6:
	ldr r0, [r4, #0x1c]
	movs r1, #0xc0
	lsls r1, r1, #0x13
	bl LZ77UnCompReadNormalWrite16bit
	b _08013558
_080134F2:
	ldr r0, [r4, #0x1c]
	movs r1, #0xc0
	lsls r1, r1, #0x13
	bl HuffUnCompReadNormal
	b _08013558
_080134FE:
	ldrb r0, [r4, #0xf]
	cmp r0, #1
	beq _0801352A
	cmp r0, #1
	bgt _0801350E
	cmp r0, #0
	beq _08013514
	b _0801354C
_0801350E:
	cmp r0, #2
	beq _0801353C
	b _0801354C
_08013514:
	ldr r0, [r4, #0x1c]
	ldr r1, [r1]
	lsls r1, r1, #5
	movs r2, #0xc0
	lsls r2, r2, #0x13
	adds r1, r1, r2
	ldrh r2, [r4]
	lsls r2, r2, #3
	bl DmaTransfer32
	b _0801354C
_0801352A:
	ldr r0, [r4, #0x1c]
	ldr r1, [r1]
	lsls r1, r1, #5
	movs r3, #0xc0
	lsls r3, r3, #0x13
	adds r1, r1, r3
	bl LZ77UnCompReadNormalWrite16bit
	b _0801354C
_0801353C:
	ldr r0, [r4, #0x1c]
	ldr r1, [r1]
	lsls r1, r1, #5
	movs r2, #0xc0
	lsls r2, r2, #0x13
	adds r1, r1, r2
	bl HuffUnCompReadNormal
_0801354C:
	ldr r0, _08013578
	ldr r0, [r0, #0x2c]
	movs r1, #0xc0
	lsls r1, r1, #0x13
	bl SetupAnimationTiles
_08013558:
	ldr r2, _08013578
	ldrh r0, [r2, #4]
	cmp r0, #0
	beq _08013610
	ldr r1, [r2, #0x30]
	cmp r1, #0
	bne _080135B4
	ldrb r0, [r2, #0xf]
	cmp r0, #1
	beq _08013594
	cmp r0, #1
	bgt _0801357C
	cmp r0, #0
	beq _08013582
	b _08013610
	.align 2, 0
_08013578: .4byte gRoomHeader
_0801357C:
	cmp r0, #2
	beq _080135A4
	b _08013610
_08013582:
	ldr r0, [r2, #0x24]
	ldr r1, _08013590
	ldrh r2, [r2, #4]
	lsls r2, r2, #3
	bl DmaTransfer32
	b _08013610
	.align 2, 0
_08013590: .4byte 0x06008000
_08013594:
	ldr r0, [r2, #0x24]
	ldr r1, _080135A0
	bl LZ77UnCompReadNormalWrite16bit
	b _08013610
	.align 2, 0
_080135A0: .4byte 0x06008000
_080135A4:
	ldr r0, [r2, #0x24]
	ldr r1, _080135B0
	bl HuffUnCompReadNormal
	b _08013610
	.align 2, 0
_080135B0: .4byte 0x06008000
_080135B4:
	ldrb r0, [r2, #0xf]
	cmp r0, #1
	beq _080135E4
	cmp r0, #1
	bgt _080135C4
	cmp r0, #0
	beq _080135CA
	b _08013606
_080135C4:
	cmp r0, #2
	beq _080135F8
	b _08013606
_080135CA:
	ldr r0, [r2, #0x24]
	ldr r1, [r1]
	lsls r1, r1, #5
	ldr r3, _080135E0
	adds r1, r1, r3
	ldrh r2, [r2, #4]
	lsls r2, r2, #3
	bl DmaTransfer32
	b _08013606
	.align 2, 0
_080135E0: .4byte 0x06008000
_080135E4:
	ldr r0, [r2, #0x24]
	ldr r1, [r1]
	lsls r1, r1, #5
	ldr r2, _080135F4
	adds r1, r1, r2
	bl LZ77UnCompReadNormalWrite16bit
	b _08013606
	.align 2, 0
_080135F4: .4byte 0x06008000
_080135F8:
	ldr r0, [r2, #0x24]
	ldr r1, [r1]
	lsls r1, r1, #5
	ldr r3, _08013630
	adds r1, r1, r3
	bl HuffUnCompReadNormal
_08013606:
	ldr r0, _08013634
	ldr r0, [r0, #0x30]
	ldr r1, _08013630
	bl SetupAnimationTiles
_08013610:
	ldr r3, _08013638
	ldr r1, _08013634
	ldrh r2, [r1, #0xa]
	ldrh r0, [r1, #0xc]
	muls r0, r2, r0
	str r0, [r3]
	ldrh r0, [r1, #8]
	adds r4, r1, #0
	cmp r0, #2
	beq _08013684
	cmp r0, #2
	bgt _0801363C
	cmp r0, #1
	beq _08013648
	b _0801383C
	.align 2, 0
_08013630: .4byte 0x06008000
_08013634: .4byte gRoomHeader
_08013638: .4byte 0x0200206C
_0801363C:
	cmp r0, #3
	beq _080136EC
	cmp r0, #4
	bne _08013646
	b _08013780
_08013646:
	b _0801383C
_08013648:
	movs r6, #1
	ldr r2, _08013664
	ldrh r0, [r2]
	ldr r1, _08013668
	ands r1, r0
	strh r1, [r2]
	ldrb r0, [r4, #0x14]
	cmp r0, #0
	bne _08013670
	ldr r1, _0801366C
	ldr r0, [r4, #0x20]
	str r0, [r1]
	b _08013840
	.align 2, 0
_08013664: .4byte 0x04000008
_08013668: .4byte 0x0000FFF3
_0801366C: .4byte gTileSetBG
_08013670:
	ldrh r0, [r2]
	movs r1, #8
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _08013680
	ldr r0, [r4, #0x28]
	str r0, [r1]
	b _08013840
	.align 2, 0
_08013680: .4byte gTileSetBG
_08013684:
	movs r6, #3
	ldr r3, _080136A8
	ldrh r2, [r3]
	ldr r1, _080136AC
	adds r0, r1, #0
	ands r0, r2
	strh r0, [r3]
	ldr r2, _080136B0
	ldrh r0, [r2]
	ands r1, r0
	strh r1, [r2]
	ldrb r0, [r4, #0x14]
	cmp r0, #0
	bne _080136B8
	ldr r1, _080136B4
	ldr r0, [r4, #0x20]
	b _080136C4
	.align 2, 0
_080136A8: .4byte 0x04000008
_080136AC: .4byte 0x0000FFF3
_080136B0: .4byte 0x0400000A
_080136B4: .4byte gTileSetBG
_080136B8:
	ldrh r0, [r3]
	movs r1, #8
	orrs r0, r1
	strh r0, [r3]
	ldr r1, _080136D4
	ldr r0, [r4, #0x28]
_080136C4:
	str r0, [r1]
	adds r3, r1, #0
	ldrb r0, [r4, #0x15]
	cmp r0, #0
	bne _080136D8
	ldr r0, [r4, #0x20]
	str r0, [r3, #4]
	b _08013840
	.align 2, 0
_080136D4: .4byte gTileSetBG
_080136D8:
	ldr r2, _080136E8
	ldrh r0, [r2]
	movs r1, #8
	orrs r0, r1
	strh r0, [r2]
	ldr r0, [r4, #0x28]
	str r0, [r3, #4]
	b _08013840
	.align 2, 0
_080136E8: .4byte 0x0400000A
_080136EC:
	movs r6, #7
	ldr r5, _08013718
	ldrh r2, [r5]
	ldr r1, _0801371C
	adds r0, r1, #0
	ands r0, r2
	strh r0, [r5]
	ldr r3, _08013720
	ldrh r2, [r3]
	adds r0, r1, #0
	ands r0, r2
	strh r0, [r3]
	ldr r2, _08013724
	ldrh r0, [r2]
	ands r1, r0
	strh r1, [r2]
	ldrb r0, [r4, #0x14]
	cmp r0, #0
	bne _0801372C
	ldr r1, _08013728
	ldr r0, [r4, #0x20]
	b _08013738
	.align 2, 0
_08013718: .4byte 0x04000008
_0801371C: .4byte 0x0000FFF3
_08013720: .4byte 0x0400000A
_08013724: .4byte 0x0400000C
_08013728: .4byte gTileSetBG
_0801372C:
	ldrh r0, [r5]
	movs r1, #8
	orrs r0, r1
	strh r0, [r5]
	ldr r1, _08013748
	ldr r0, [r4, #0x28]
_08013738:
	str r0, [r1]
	adds r3, r1, #0
	ldrb r0, [r4, #0x15]
	cmp r0, #0
	bne _0801374C
	ldr r0, [r4, #0x20]
	b _08013758
	.align 2, 0
_08013748: .4byte gTileSetBG
_0801374C:
	ldr r2, _08013768
	ldrh r0, [r2]
	movs r1, #8
	orrs r0, r1
	strh r0, [r2]
	ldr r0, [r4, #0x28]
_08013758:
	str r0, [r3, #4]
	ldrb r0, [r4, #0x16]
	cmp r0, #0
	bne _0801376C
	ldr r0, [r4, #0x20]
	str r0, [r3, #8]
	b _08013840
	.align 2, 0
_08013768: .4byte 0x0400000A
_0801376C:
	ldr r2, _0801377C
	ldrh r0, [r2]
	movs r1, #8
	orrs r0, r1
	strh r0, [r2]
	ldr r0, [r4, #0x28]
	str r0, [r3, #8]
	b _08013840
	.align 2, 0
_0801377C: .4byte 0x0400000C
_08013780:
	movs r6, #0xf
	ldr r5, _080137B8
	ldrh r2, [r5]
	ldr r1, _080137BC
	adds r0, r1, #0
	ands r0, r2
	strh r0, [r5]
	ldr r3, _080137C0
	ldrh r2, [r3]
	adds r0, r1, #0
	ands r0, r2
	strh r0, [r3]
	adds r3, #2
	ldrh r2, [r3]
	adds r0, r1, #0
	ands r0, r2
	strh r0, [r3]
	ldr r2, _080137C4
	ldrh r0, [r2]
	ands r1, r0
	strh r1, [r2]
	ldrb r0, [r4, #0x14]
	cmp r0, #0
	bne _080137CC
	ldr r1, _080137C8
	ldr r0, [r4, #0x20]
	b _080137D8
	.align 2, 0
_080137B8: .4byte 0x04000008
_080137BC: .4byte 0x0000FFF3
_080137C0: .4byte 0x0400000A
_080137C4: .4byte 0x0400000E
_080137C8: .4byte gTileSetBG
_080137CC:
	ldrh r0, [r5]
	movs r1, #8
	orrs r0, r1
	strh r0, [r5]
	ldr r1, _080137E8
	ldr r0, [r4, #0x28]
_080137D8:
	str r0, [r1]
	adds r3, r1, #0
	ldrb r0, [r4, #0x15]
	cmp r0, #0
	bne _080137EC
	ldr r0, [r4, #0x20]
	b _080137F8
	.align 2, 0
_080137E8: .4byte gTileSetBG
_080137EC:
	ldr r2, _08013804
	ldrh r0, [r2]
	movs r1, #8
	orrs r0, r1
	strh r0, [r2]
	ldr r0, [r4, #0x28]
_080137F8:
	str r0, [r3, #4]
	ldrb r0, [r4, #0x16]
	cmp r0, #0
	bne _08013808
	ldr r0, [r4, #0x20]
	b _08013814
	.align 2, 0
_08013804: .4byte 0x0400000A
_08013808:
	ldr r2, _08013824
	ldrh r0, [r2]
	movs r1, #8
	orrs r0, r1
	strh r0, [r2]
	ldr r0, [r4, #0x28]
_08013814:
	str r0, [r3, #8]
	ldrb r0, [r4, #0x17]
	cmp r0, #0
	bne _08013828
	ldr r0, [r4, #0x20]
	str r0, [r3, #0xc]
	b _08013840
	.align 2, 0
_08013824: .4byte 0x0400000C
_08013828:
	ldr r2, _08013838
	ldrh r0, [r2]
	movs r1, #8
	orrs r0, r1
	strh r0, [r2]
	ldr r0, [r4, #0x28]
	str r0, [r3, #0xc]
	b _08013840
	.align 2, 0
_08013838: .4byte 0x0400000E
_0801383C:
	.2byte 0xEE00, 0xEE00
_08013840:
	movs r2, #0x80
	lsls r2, r2, #0x13
	ldrh r1, [r2]
	ldr r0, _0801386C
	ands r0, r1
	strh r0, [r2]
	lsls r0, r6, #8
	ldrh r1, [r2]
	orrs r0, r1
	strh r0, [r2]
	bl SetupBGOffsets
	ldr r1, _08013870
	movs r0, #0
	strb r0, [r1]
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801386C: .4byte 0x0000F0FF
_08013870: .4byte gBGControlActions

    .thumb
	.global SetupAnimationTiles
SetupAnimationTiles: @ 0x08013874
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov r8, r0
	adds r3, r1, #0
	ldr r2, [r0]
	cmp r2, #0
	bne _0801388C
	.2byte 0xEE00, 0xEE00
_0801388C:
	ldr r1, _08013924
	ldr r0, [r1]
	adds r0, r2, r0
	cmp r0, #0xff
	ble _0801389A
	.2byte 0xEE00, 0xEE00
_0801389A:
	movs r0, #0
	mov ip, r0
	cmp ip, r2
	bge _08013914
	ldr r6, _08013928
	adds r5, r1, #0
	mov sb, r0
	movs r1, #8
	adds r1, r1, r6
	mov sl, r1
	adds r7, r3, #0
	mov r4, r8
	adds r4, #4
_080138B4:
	ldr r1, [r5]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r1, [r4, #2]
	strb r1, [r0, #1]
	ldr r1, [r5]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r1, [r4]
	strb r1, [r0, #3]
	ldr r1, [r5]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	mov r1, sb
	strb r1, [r0, #2]
	ldr r1, [r5]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	mov r1, sb
	strb r1, [r0]
	ldr r3, [r5]
	lsls r0, r3, #1
	adds r0, r0, r3
	lsls r0, r0, #2
	adds r1, r6, #4
	adds r1, r0, r1
	ldr r2, [r4, #4]
	str r2, [r1]
	add r0, sl
	str r7, [r0]
	adds r3, #1
	str r3, [r5]
	adds r7, #0x20
	adds r4, #8
	movs r0, #1
	add ip, r0
	mov r1, r8
	ldr r0, [r1]
	cmp ip, r0
	blt _080138B4
_08013914:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08013924: .4byte gLoadedTileAnimCount
_08013928: .4byte 0x02001474

    .thumb
	.global sub_801392C
sub_801392C: @ 0x0801392C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _08013954
	ldr r3, [r0]
	cmp r3, #0
	beq _080139CC
	ldr r2, _08013958
	ldr r1, [r2]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _080139CC
	cmp r1, #0
	beq _0801395C
	subs r0, r1, #1
	str r0, [r2]
	b _080139CC
	.align 2, 0
_08013954: .4byte gLoadedTileAnimCount
_08013958: .4byte 0x0200031C
_0801395C:
	ldr r0, _080139DC
	ldr r0, [r0]
	str r0, [r2]
	movs r5, #0
	cmp r5, r3
	bge _080139CC
	ldr r0, _080139E0
	mov ip, r0
	mov sl, r5
	ldr r1, _080139E4
	mov r8, r1
	ldr r4, _080139E8
	movs r0, #4
	add r0, r8
	mov sb, r0
	mov r3, ip
	adds r3, #2
	mov r7, ip
	movs r6, #0
_08013982:
	ldrb r0, [r3]
	adds r0, #1
	strb r0, [r3]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldrb r1, [r3, #1]
	cmp r0, r1
	bne _08013996
	mov r0, sl
	strb r0, [r3]
_08013996:
	ldrb r2, [r4]
	lsls r2, r2, #3
	add r2, r8
	mov r0, ip
	adds r0, #4
	adds r0, r6, r0
	ldrb r1, [r3]
	lsls r1, r1, #5
	ldr r0, [r0]
	adds r0, r0, r1
	str r0, [r2]
	ldrb r0, [r4]
	lsls r0, r0, #3
	add r0, sb
	ldr r1, [r7, #8]
	str r1, [r0]
	ldrb r0, [r4]
	adds r0, #1
	strb r0, [r4]
	adds r3, #0xc
	adds r7, #0xc
	adds r6, #0xc
	adds r5, #1
	ldr r1, _080139EC
	ldr r0, [r1]
	cmp r5, r0
	blt _08013982
_080139CC:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080139DC: .4byte 0x02000318
_080139E0: .4byte 0x02001474
_080139E4: .4byte 0x03002AB0
_080139E8: .4byte 0x030032A8
_080139EC: .4byte gLoadedTileAnimCount

    .thumb
	.global sub_80139F0
sub_80139F0: @ 0x080139F0
	push {lr}
	adds r1, r0, #0
	ldr r0, _08013A08
	str r1, [r0]
	ldr r2, _08013A0C
	ldr r0, [r2]
	cmp r0, #0
	bge _08013A02
	str r1, [r2]
_08013A02:
	pop {r0}
	bx r0
	.align 2, 0
_08013A08: .4byte 0x02000318
_08013A0C: .4byte 0x0200031C

    .thumb
    .global sub_8013A10
sub_8013A10: @ 0x08013A10
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x28
	str r0, [sp]
	str r1, [sp, #4]
	asrs r3, r3, #3
	movs r0, #0x1f
	ands r3, r0
	lsls r3, r3, #5
	asrs r2, r2, #3
	ands r2, r0
	adds r3, r3, r2
	lsls r3, r3, #1
	str r3, [sp, #8]
	ldr r1, _08013A4C
	adds r0, r1, #0
	adds r0, #0x5c
	ldrb r0, [r0]
	str r1, [sp, #0x18]
	cmp r0, #0
	beq _08013A54
	ldr r3, _08013A50
	movs r0, #0
	str r0, [sp, #0xc]
	movs r1, #0
	b _08013A60
	.align 2, 0
_08013A4C: .4byte gRoomHeader
_08013A50: .4byte 0x0600E000
_08013A54:
	ldr r0, _08013B10
	ldr r1, [sp, #8]
	adds r3, r1, r0
	ldr r2, [sp]
	str r2, [sp, #0xc]
	ldr r1, [sp, #4]
_08013A60:
	movs r5, #0xfc
	lsls r5, r5, #9
	ands r5, r3
	str r5, [sp, #0x10]
	ldr r2, [sp, #0x48]
	adds r0, r1, r2
	cmp r1, r0
	bgt _08013AF0
	str r0, [sp, #0x1c]
_08013A72:
	ldr r4, _08013B14
	ands r4, r3
	adds r6, r3, #0
	ldr r2, [sp, #0xc]
	ldr r5, [sp, #0x4c]
	adds r0, r2, r5
	adds r7, r1, #1
	cmp r2, r0
	bge _08013ADC
	ldr r0, _08013B18
	ldr r0, [r0, #0x4c]
	mov sb, r0
	asrs r5, r1, #2
	mov r8, r5
	ldr r0, _08013B1C
	ldr r0, [r0]
	mov ip, r0
	movs r5, #3
	mov sl, r5
	ands r1, r5
	lsls r1, r1, #3
	str r1, [sp, #0x20]
_08013A9E:
	ldr r1, _08013B18
	ldrh r0, [r1, #0xa]
	mov r1, r8
	muls r1, r0, r1
	lsls r1, r1, #1
	add r1, sb
	asrs r0, r2, #2
	lsls r0, r0, #1
	adds r1, r1, r0
	ldrh r1, [r1]
	lsls r1, r1, #5
	add r1, ip
	adds r0, r2, #0
	mov r5, sl
	ands r0, r5
	lsls r0, r0, #1
	ldr r5, [sp, #0x20]
	adds r1, r5, r1
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r3]
	adds r3, #2
	ldr r0, _08013B20
	ands r3, r0
	orrs r3, r4
	adds r2, #1
	ldr r1, [sp, #0xc]
	ldr r5, [sp, #0x4c]
	adds r0, r1, r5
	cmp r2, r0
	blt _08013A9E
_08013ADC:
	adds r3, r6, #0
	adds r3, #0x40
	ldr r0, _08013B24
	ands r3, r0
	ldr r1, [sp, #0x10]
	orrs r3, r1
	adds r1, r7, #0
	ldr r2, [sp, #0x1c]
	cmp r1, r2
	ble _08013A72
_08013AF0:
	ldr r5, [sp, #0x18]
	ldrh r0, [r5, #8]
	cmp r0, #1
	bne _08013AFA
	b _08013DA6
_08013AFA:
	adds r0, r5, #0
	adds r0, #0x5d
	ldrb r0, [r0]
	cmp r0, #0
	beq _08013B2C
	ldr r3, _08013B28
	movs r0, #0
	str r0, [sp, #0xc]
	movs r1, #0
	b _08013B38
	.align 2, 0
_08013B10: .4byte 0x0600E000
_08013B14: .4byte 0x0001FFC0
_08013B18: .4byte gRoomHeader
_08013B1C: .4byte gTileSetBG
_08013B20: .4byte 0xFFFE003F
_08013B24: .4byte 0xFFFE07FF
_08013B28: .4byte 0x0600E800
_08013B2C:
	ldr r1, [sp, #8]
	ldr r2, _08013BF4
	adds r3, r1, r2
	ldr r5, [sp]
	str r5, [sp, #0xc]
	ldr r1, [sp, #4]
_08013B38:
	movs r0, #0xfc
	lsls r0, r0, #9
	ands r0, r3
	str r0, [sp, #0x10]
	ldr r2, [sp, #0x48]
	adds r0, r1, r2
	cmp r1, r0
	bgt _08013BD4
	str r0, [sp, #0x1c]
_08013B4A:
	ldr r4, _08013BF8
	ands r4, r3
	adds r6, r3, #0
	ldr r2, [sp, #0xc]
	ldr r5, [sp, #0x4c]
	adds r0, r2, r5
	adds r7, r1, #1
	cmp r2, r0
	bge _08013BC0
	asrs r0, r1, #2
	mov sl, r0
	ldr r5, _08013BFC
	ldr r5, [r5, #4]
	mov ip, r5
	movs r0, #3
	ands r1, r0
	lsls r1, r1, #3
	mov sb, r1
	ldr r1, _08013C00
	mov r8, r1
	ldr r5, _08013C04
	ldr r5, [r5, #0x4c]
	str r5, [sp, #0x20]
_08013B78:
	mov r0, r8
	ldr r1, [r0]
	lsls r1, r1, #1
	ldr r5, [sp, #0x20]
	adds r1, r5, r1
	ldr r5, _08013C04
	ldrh r0, [r5, #0xa]
	mov r5, sl
	muls r5, r0, r5
	adds r0, r5, #0
	lsls r0, r0, #1
	adds r1, r1, r0
	asrs r0, r2, #2
	lsls r0, r0, #1
	adds r1, r1, r0
	ldrh r1, [r1]
	lsls r1, r1, #5
	add r1, ip
	adds r0, r2, #0
	movs r5, #3
	ands r0, r5
	lsls r0, r0, #1
	add r1, sb
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r3]
	adds r3, #2
	ldr r0, _08013C08
	ands r3, r0
	orrs r3, r4
	adds r2, #1
	ldr r1, [sp, #0xc]
	ldr r5, [sp, #0x4c]
	adds r0, r1, r5
	cmp r2, r0
	blt _08013B78
_08013BC0:
	adds r3, r6, #0
	adds r3, #0x40
	ldr r0, _08013C0C
	ands r3, r0
	ldr r1, [sp, #0x10]
	orrs r3, r1
	adds r1, r7, #0
	ldr r2, [sp, #0x1c]
	cmp r1, r2
	ble _08013B4A
_08013BD4:
	ldr r5, [sp, #0x18]
	ldrh r0, [r5, #8]
	cmp r0, #2
	bne _08013BDE
	b _08013DA6
_08013BDE:
	adds r0, r5, #0
	adds r0, #0x5e
	ldrb r0, [r0]
	cmp r0, #0
	beq _08013C14
	ldr r3, _08013C10
	movs r0, #0
	str r0, [sp, #0xc]
	movs r1, #0
	b _08013C20
	.align 2, 0
_08013BF4: .4byte 0x0600E800
_08013BF8: .4byte 0x0001FFC0
_08013BFC: .4byte gTileSetBG
_08013C00: .4byte 0x0200206C
_08013C04: .4byte gRoomHeader
_08013C08: .4byte 0xFFFE003F
_08013C0C: .4byte 0xFFFE07FF
_08013C10: .4byte 0x0600F000
_08013C14:
	ldr r0, _08013CD8
	ldr r1, [sp, #8]
	adds r3, r1, r0
	ldr r2, [sp]
	str r2, [sp, #0xc]
	ldr r1, [sp, #4]
_08013C20:
	movs r5, #0xfc
	lsls r5, r5, #9
	ands r5, r3
	str r5, [sp, #0x10]
	ldr r2, [sp, #0x48]
	adds r0, r1, r2
	cmp r1, r0
	bgt _08013CBC
	str r0, [sp, #0x1c]
_08013C32:
	ldr r4, _08013CDC
	ands r4, r3
	adds r6, r3, #0
	ldr r2, [sp, #0xc]
	ldr r5, [sp, #0x4c]
	adds r0, r2, r5
	adds r7, r1, #1
	cmp r2, r0
	bge _08013CA8
	asrs r0, r1, #2
	mov sl, r0
	ldr r5, _08013CE0
	ldr r5, [r5, #8]
	mov ip, r5
	movs r0, #3
	ands r1, r0
	lsls r1, r1, #3
	mov sb, r1
	ldr r1, _08013CE4
	mov r8, r1
	ldr r5, _08013CE8
	ldr r5, [r5, #0x4c]
	str r5, [sp, #0x20]
_08013C60:
	mov r0, r8
	ldr r1, [r0]
	lsls r1, r1, #2
	ldr r5, [sp, #0x20]
	adds r1, r5, r1
	ldr r5, _08013CE8
	ldrh r0, [r5, #0xa]
	mov r5, sl
	muls r5, r0, r5
	adds r0, r5, #0
	lsls r0, r0, #1
	adds r1, r1, r0
	asrs r0, r2, #2
	lsls r0, r0, #1
	adds r1, r1, r0
	ldrh r1, [r1]
	lsls r1, r1, #5
	add r1, ip
	adds r0, r2, #0
	movs r5, #3
	ands r0, r5
	lsls r0, r0, #1
	add r1, sb
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r3]
	adds r3, #2
	ldr r0, _08013CEC
	ands r3, r0
	orrs r3, r4
	adds r2, #1
	ldr r1, [sp, #0xc]
	ldr r5, [sp, #0x4c]
	adds r0, r1, r5
	cmp r2, r0
	blt _08013C60
_08013CA8:
	adds r3, r6, #0
	adds r3, #0x40
	ldr r0, _08013CF0
	ands r3, r0
	ldr r1, [sp, #0x10]
	orrs r3, r1
	adds r1, r7, #0
	ldr r2, [sp, #0x1c]
	cmp r1, r2
	ble _08013C32
_08013CBC:
	ldr r5, [sp, #0x18]
	ldrh r0, [r5, #8]
	cmp r0, #3
	beq _08013DA6
	adds r0, r5, #0
	adds r0, #0x5f
	ldrb r0, [r0]
	cmp r0, #0
	beq _08013CF8
	ldr r3, _08013CF4
	movs r0, #0
	str r0, [sp, #0xc]
	movs r1, #0
	b _08013D04
	.align 2, 0
_08013CD8: .4byte 0x0600F000
_08013CDC: .4byte 0x0001FFC0
_08013CE0: .4byte gTileSetBG
_08013CE4: .4byte 0x0200206C
_08013CE8: .4byte gRoomHeader
_08013CEC: .4byte 0xFFFE003F
_08013CF0: .4byte 0xFFFE07FF
_08013CF4: .4byte 0x0600F800
_08013CF8:
	ldr r1, [sp, #8]
	ldr r2, _08013DB8
	adds r3, r1, r2
	ldr r5, [sp]
	str r5, [sp, #0xc]
	ldr r1, [sp, #4]
_08013D04:
	movs r0, #0xfc
	lsls r0, r0, #9
	ands r0, r3
	str r0, [sp, #0x10]
	ldr r2, [sp, #0x48]
	adds r0, r1, r2
	cmp r1, r0
	bgt _08013DA6
	str r0, [sp, #0x1c]
_08013D16:
	ldr r4, _08013DBC
	ands r4, r3
	adds r6, r3, #0
	ldr r2, [sp, #0xc]
	ldr r5, [sp, #0x4c]
	adds r0, r2, r5
	adds r7, r1, #1
	cmp r2, r0
	bge _08013D92
	asrs r0, r1, #2
	str r0, [sp, #0x14]
	ldr r5, _08013DC0
	ldr r5, [r5, #0xc]
	mov sl, r5
	movs r0, #3
	ands r1, r0
	lsls r1, r1, #3
	mov ip, r1
	ldr r1, _08013DC4
	mov sb, r1
	ldr r5, _08013DC8
	ldr r5, [r5, #0x4c]
	mov r8, r5
_08013D44:
	mov r1, sb
	ldr r0, [r1]
	movs r5, #3
	adds r1, r0, #0
	muls r1, r5, r1
	lsls r1, r1, #1
	add r1, r8
	str r1, [sp, #0x24]
	ldr r1, _08013DC8
	ldrh r0, [r1, #0xa]
	ldr r5, [sp, #0x14]
	muls r0, r5, r0
	lsls r0, r0, #1
	ldr r5, [sp, #0x24]
	adds r1, r5, r0
	asrs r0, r2, #2
	lsls r0, r0, #1
	adds r1, r1, r0
	ldrh r1, [r1]
	lsls r1, r1, #5
	add r1, sl
	adds r0, r2, #0
	movs r5, #3
	ands r0, r5
	lsls r0, r0, #1
	add r1, ip
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r3]
	adds r3, #2
	ldr r0, _08013DCC
	ands r3, r0
	orrs r3, r4
	adds r2, #1
	ldr r1, [sp, #0xc]
	ldr r5, [sp, #0x4c]
	adds r0, r1, r5
	cmp r2, r0
	blt _08013D44
_08013D92:
	adds r3, r6, #0
	adds r3, #0x40
	ldr r0, _08013DD0
	ands r3, r0
	ldr r1, [sp, #0x10]
	orrs r3, r1
	adds r1, r7, #0
	ldr r2, [sp, #0x1c]
	cmp r1, r2
	ble _08013D16
_08013DA6:
	add sp, #0x28
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08013DB8: .4byte 0x0600F800
_08013DBC: .4byte 0x0001FFC0
_08013DC0: .4byte gTileSetBG
_08013DC4: .4byte 0x0200206C
_08013DC8: .4byte gRoomHeader
_08013DCC: .4byte 0xFFFE003F
_08013DD0: .4byte 0xFFFE07FF

    .thumb
    .global sub_8013DD4
sub_8013DD4: @ 0x08013DD4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	str r0, [sp]
	str r1, [sp, #4]
	ldr r0, _08013DFC
	adds r1, r0, #0
	adds r1, #0x5c
	ldrb r1, [r1]
	cmp r1, #0
	beq _08013E7C
	ldr r2, _08013E00
	movs r0, #0xe0
	lsls r0, r0, #8
	str r0, [sp, #8]
	movs r1, #0
	b _08013E76
	.align 2, 0
_08013DFC: .4byte gRoomHeader
_08013E00: .4byte 0x0600E000
_08013E04:
	ldr r4, _08014088
	ands r4, r2
	adds r6, r2, #0
	movs r3, #0
	adds r7, r1, #1
	ldr r0, [sp, #4]
	cmp r3, r0
	bge _08013E68
	ldr r5, _0801408C
	ldr r5, [r5, #0x4c]
	mov sb, r5
	asrs r0, r1, #2
	mov r8, r0
	ldr r5, _08014090
	ldr r5, [r5]
	mov ip, r5
	movs r0, #3
	mov sl, r0
	ands r1, r0
	lsls r1, r1, #3
	str r1, [sp, #0x10]
_08013E2E:
	ldr r1, _0801408C
	ldrh r0, [r1, #0xa]
	mov r1, r8
	muls r1, r0, r1
	lsls r1, r1, #1
	add r1, sb
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r1, r1, r0
	ldrh r1, [r1]
	lsls r1, r1, #5
	add r1, ip
	adds r0, r3, #0
	mov r5, sl
	ands r0, r5
	lsls r0, r0, #1
	ldr r5, [sp, #0x10]
	adds r1, r5, r1
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2]
	adds r2, #2
	ldr r0, _08014094
	ands r2, r0
	orrs r2, r4
	adds r3, #1
	ldr r1, [sp, #4]
	cmp r3, r1
	blt _08013E2E
_08013E68:
	adds r2, r6, #0
	adds r2, #0x40
	ldr r5, _08014098
	ands r2, r5
	ldr r0, [sp, #8]
	orrs r2, r0
	adds r1, r7, #0
_08013E76:
	ldr r5, [sp]
	cmp r1, r5
	ble _08013E04
_08013E7C:
	ldr r1, _0801408C
	ldrh r0, [r1, #8]
	cmp r0, #1
	bne _08013E86
	b _08014078
_08013E86:
	adds r0, r1, #0
	adds r0, #0x5d
	ldrb r0, [r0]
	cmp r0, #0
	beq _08013F24
	ldr r2, _0801409C
	movs r5, #0xe8
	lsls r5, r5, #8
	str r5, [sp, #8]
	movs r1, #0
	ldr r0, [sp]
	cmp r1, r0
	bgt _08013F24
_08013EA0:
	ldr r4, _08014088
	ands r4, r2
	adds r6, r2, #0
	movs r3, #0
	adds r7, r1, #1
	ldr r5, [sp, #4]
	cmp r3, r5
	bge _08013F10
	asrs r0, r1, #2
	mov sl, r0
	ldr r5, _08014090
	ldr r5, [r5, #4]
	mov ip, r5
	movs r0, #3
	ands r1, r0
	lsls r1, r1, #3
	mov sb, r1
	ldr r1, _080140A0
	mov r8, r1
	ldr r5, _0801408C
	ldr r5, [r5, #0x4c]
	str r5, [sp, #0x10]
_08013ECC:
	mov r0, r8
	ldr r1, [r0]
	lsls r1, r1, #1
	ldr r5, [sp, #0x10]
	adds r1, r5, r1
	ldr r5, _0801408C
	ldrh r0, [r5, #0xa]
	mov r5, sl
	muls r5, r0, r5
	adds r0, r5, #0
	lsls r0, r0, #1
	adds r1, r1, r0
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r1, r1, r0
	ldrh r1, [r1]
	lsls r1, r1, #5
	add r1, ip
	adds r0, r3, #0
	movs r5, #3
	ands r0, r5
	lsls r0, r0, #1
	add r1, sb
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2]
	adds r2, #2
	ldr r0, _08014094
	ands r2, r0
	orrs r2, r4
	adds r3, #1
	ldr r1, [sp, #4]
	cmp r3, r1
	blt _08013ECC
_08013F10:
	adds r2, r6, #0
	adds r2, #0x40
	ldr r5, _08014098
	ands r2, r5
	ldr r0, [sp, #8]
	orrs r2, r0
	adds r1, r7, #0
	ldr r5, [sp]
	cmp r1, r5
	ble _08013EA0
_08013F24:
	ldr r1, _0801408C
	ldrh r0, [r1, #8]
	cmp r0, #2
	bne _08013F2E
	b _08014078
_08013F2E:
	adds r0, r1, #0
	adds r0, #0x5e
	ldrb r0, [r0]
	cmp r0, #0
	beq _08013FCC
	ldr r2, _080140A4
	movs r5, #0xf0
	lsls r5, r5, #8
	str r5, [sp, #8]
	movs r1, #0
	ldr r0, [sp]
	cmp r1, r0
	bgt _08013FCC
_08013F48:
	ldr r4, _08014088
	ands r4, r2
	adds r6, r2, #0
	movs r3, #0
	adds r7, r1, #1
	ldr r5, [sp, #4]
	cmp r3, r5
	bge _08013FB8
	asrs r0, r1, #2
	mov sl, r0
	ldr r5, _08014090
	ldr r5, [r5, #8]
	mov ip, r5
	movs r0, #3
	ands r1, r0
	lsls r1, r1, #3
	mov sb, r1
	ldr r1, _080140A0
	mov r8, r1
	ldr r5, _0801408C
	ldr r5, [r5, #0x4c]
	str r5, [sp, #0x10]
_08013F74:
	mov r0, r8
	ldr r1, [r0]
	lsls r1, r1, #2
	ldr r5, [sp, #0x10]
	adds r1, r5, r1
	ldr r5, _0801408C
	ldrh r0, [r5, #0xa]
	mov r5, sl
	muls r5, r0, r5
	adds r0, r5, #0
	lsls r0, r0, #1
	adds r1, r1, r0
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r1, r1, r0
	ldrh r1, [r1]
	lsls r1, r1, #5
	add r1, ip
	adds r0, r3, #0
	movs r5, #3
	ands r0, r5
	lsls r0, r0, #1
	add r1, sb
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2]
	adds r2, #2
	ldr r0, _08014094
	ands r2, r0
	orrs r2, r4
	adds r3, #1
	ldr r1, [sp, #4]
	cmp r3, r1
	blt _08013F74
_08013FB8:
	adds r2, r6, #0
	adds r2, #0x40
	ldr r5, _08014098
	ands r2, r5
	ldr r0, [sp, #8]
	orrs r2, r0
	adds r1, r7, #0
	ldr r5, [sp]
	cmp r1, r5
	ble _08013F48
_08013FCC:
	ldr r1, _0801408C
	ldrh r0, [r1, #8]
	cmp r0, #3
	beq _08014078
	adds r0, r1, #0
	adds r0, #0x5f
	ldrb r0, [r0]
	cmp r0, #0
	beq _08014078
	ldr r2, _080140A8
	movs r5, #0xf8
	lsls r5, r5, #8
	str r5, [sp, #8]
	movs r1, #0
	ldr r0, [sp]
	cmp r1, r0
	bgt _08014078
_08013FEE:
	ldr r4, _08014088
	ands r4, r2
	adds r6, r2, #0
	movs r3, #0
	adds r7, r1, #1
	ldr r5, [sp, #4]
	cmp r3, r5
	bge _08014064
	asrs r0, r1, #2
	str r0, [sp, #0xc]
	ldr r5, _08014090
	ldr r5, [r5, #0xc]
	mov sl, r5
	movs r0, #3
	ands r1, r0
	lsls r1, r1, #3
	mov ip, r1
	ldr r1, _080140A0
	mov sb, r1
	ldr r5, _0801408C
	ldr r5, [r5, #0x4c]
	mov r8, r5
_0801401A:
	mov r1, sb
	ldr r0, [r1]
	movs r5, #3
	adds r1, r0, #0
	muls r1, r5, r1
	lsls r1, r1, #1
	add r1, r8
	str r1, [sp, #0x14]
	ldr r1, _0801408C
	ldrh r0, [r1, #0xa]
	ldr r5, [sp, #0xc]
	muls r0, r5, r0
	lsls r0, r0, #1
	ldr r5, [sp, #0x14]
	adds r1, r5, r0
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r1, r1, r0
	ldrh r1, [r1]
	lsls r1, r1, #5
	add r1, sl
	adds r0, r3, #0
	movs r5, #3
	ands r0, r5
	lsls r0, r0, #1
	add r1, ip
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2]
	adds r2, #2
	ldr r0, _08014094
	ands r2, r0
	orrs r2, r4
	adds r3, #1
	ldr r1, [sp, #4]
	cmp r3, r1
	blt _0801401A
_08014064:
	adds r2, r6, #0
	adds r2, #0x40
	ldr r5, _08014098
	ands r2, r5
	ldr r0, [sp, #8]
	orrs r2, r0
	adds r1, r7, #0
	ldr r5, [sp]
	cmp r1, r5
	ble _08013FEE
_08014078:
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08014088: .4byte 0x0001FFC0
_0801408C: .4byte gRoomHeader
_08014090: .4byte gTileSetBG
_08014094: .4byte 0xFFFE003F
_08014098: .4byte 0xFFFE07FF
_0801409C: .4byte 0x0600E800
_080140A0: .4byte 0x0200206C
_080140A4: .4byte 0x0600F000
_080140A8: .4byte 0x0600F800

    .thumb
	.global UpdateMapUp
UpdateMapUp: @ 0x080140AC
	push {r4, r5, lr}
	asrs r0, r0, #0x10
	subs r0, #0x50
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r3, r0, #0
	lsls r1, r3, #0x10
	movs r2, #0xa0
	lsls r2, r2, #0x10
	adds r0, r1, r2
	lsrs r2, r0, #0x10
	cmp r1, #0
	bge _080140D0
	ldr r1, _080140CC
	movs r0, #0
	b _080140E6
	.align 2, 0
_080140CC: .4byte gCameraPixelY
_080140D0:
	ldr r0, _080140EC
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	ldrh r2, [r0]
	movs r4, #0
	ldrsh r0, [r0, r4]
	cmp r1, r0
	ble _080140F4
	ldr r1, _080140F0
	adds r0, r2, #0
	subs r0, #0xa0
_080140E6:
	strh r0, [r1]
	adds r0, r1, #0
	b _080140F8
	.align 2, 0
_080140EC: .4byte gMapPixelSizeY
_080140F0: .4byte gCameraPixelY
_080140F4:
	ldr r0, _08014140
	strh r3, [r0]
_080140F8:
	ldr r4, _08014144
	ldrb r1, [r4]
	ldrh r2, [r0]
	strb r2, [r4]
	lsls r0, r2, #0x18
	movs r5, #0x1f
	lsrs r1, r1, #3
	lsrs r0, r0, #0x1b
	cmp r1, r0
	beq _08014158
	ldr r0, _08014148
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x13
	lsls r1, r2, #0x10
	asrs r1, r1, #0x13
	bl BGFillBufferVertical
	ldr r2, _0801414C
	ldrb r1, [r4]
	lsrs r1, r1, #3
	ands r1, r5
	lsls r1, r1, #5
	ldr r0, _08014150
	ldrb r0, [r0]
	lsrs r0, r0, #3
	ands r0, r5
	adds r1, r1, r0
	lsls r1, r1, #1
	str r1, [r2]
	ldr r2, _08014154
	ldrb r0, [r2]
	movs r1, #0x24
	orrs r0, r1
	strb r0, [r2]
	b _08014162
	.align 2, 0
_08014140: .4byte gCameraPixelY
_08014144: .4byte gBGOffsetVertical
_08014148: .4byte gCameraPixelX
_0801414C: .4byte gBGMapOffsetVertical
_08014150: .4byte gBGOffsetHorizontal
_08014154: .4byte gBGControlActions
_08014158:
	ldr r0, _08014168
	ldrb r1, [r0]
	movs r2, #4
	orrs r1, r2
	strb r1, [r0]
_08014162:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08014168: .4byte gBGControlActions

    .thumb
	.global UpdateMapDown
UpdateMapDown: @ 0x0801416C
	push {r4, r5, lr}
	asrs r0, r0, #0x10
	subs r0, #0x50
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r3, r0, #0
	lsls r1, r3, #0x10
	movs r2, #0xa0
	lsls r2, r2, #0x10
	adds r0, r1, r2
	lsrs r2, r0, #0x10
	cmp r1, #0
	bge _08014190
	ldr r1, _0801418C
	movs r0, #0
	b _080141A6
	.align 2, 0
_0801418C: .4byte gCameraPixelY
_08014190:
	ldr r0, _080141AC
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	ldrh r2, [r0]
	movs r4, #0
	ldrsh r0, [r0, r4]
	cmp r1, r0
	ble _080141B4
	ldr r1, _080141B0
	adds r0, r2, #0
	subs r0, #0xa0
_080141A6:
	strh r0, [r1]
	adds r2, r1, #0
	b _080141BA
	.align 2, 0
_080141AC: .4byte gMapPixelSizeY
_080141B0: .4byte gCameraPixelY
_080141B4:
	ldr r0, _08014218
	strh r3, [r0]
	adds r2, r0, #0
_080141BA:
	ldr r4, _0801421C
	ldrb r1, [r4]
	ldrh r0, [r2]
	strb r0, [r4]
	lsls r0, r0, #0x18
	movs r5, #0x1f
	lsrs r1, r1, #3
	lsrs r0, r0, #0x1b
	cmp r1, r0
	beq _08014234
	ldr r0, _08014220
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x13
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r1, #0xa0
	asrs r1, r1, #3
	bl BGFillBufferVertical
	ldr r3, _08014224
	ldrb r0, [r4]
	lsrs r0, r0, #3
	ands r0, r5
	lsls r0, r0, #5
	ldr r1, _08014228
	ldrb r1, [r1]
	lsrs r1, r1, #3
	ands r1, r5
	adds r0, r0, r1
	lsls r0, r0, #1
	ldr r2, _0801422C
	movs r1, #0xfc
	lsls r1, r1, #9
	ands r1, r0
	movs r4, #0xa0
	lsls r4, r4, #3
	adds r0, r0, r4
	ands r0, r2
	orrs r0, r1
	str r0, [r3]
	ldr r2, _08014230
	ldrb r0, [r2]
	movs r1, #0x28
	orrs r0, r1
	strb r0, [r2]
	b _0801423E
	.align 2, 0
_08014218: .4byte gCameraPixelY
_0801421C: .4byte gBGOffsetVertical
_08014220: .4byte gCameraPixelX
_08014224: .4byte gBGMapOffsetVertical
_08014228: .4byte gBGOffsetHorizontal
_0801422C: .4byte 0xFFFE07FF
_08014230: .4byte gBGControlActions
_08014234:
	ldr r0, _08014244
	ldrb r1, [r0]
	movs r2, #8
	orrs r1, r2
	strb r1, [r0]
_0801423E:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08014244: .4byte gBGControlActions

    .thumb
	.global UpdateMapLeft
UpdateMapLeft: @ 0x08014248
	push {r4, r5, lr}
	asrs r0, r0, #0x10
	subs r0, #0x78
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r3, r0, #0
	lsls r1, r3, #0x10
	movs r2, #0xf0
	lsls r2, r2, #0x10
	adds r0, r1, r2
	lsrs r2, r0, #0x10
	cmp r1, #0
	bge _0801426C
	ldr r1, _08014268
	movs r0, #0
	b _08014282
	.align 2, 0
_08014268: .4byte gCameraPixelX
_0801426C:
	ldr r0, _08014288
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	ldrh r2, [r0]
	movs r4, #0
	ldrsh r0, [r0, r4]
	cmp r1, r0
	ble _08014290
	ldr r1, _0801428C
	adds r0, r2, #0
	subs r0, #0xf0
_08014282:
	strh r0, [r1]
	adds r0, r1, #0
	b _08014294
	.align 2, 0
_08014288: .4byte gMapPixelSizeX
_0801428C: .4byte gCameraPixelX
_08014290:
	ldr r0, _080142DC
	strh r3, [r0]
_08014294:
	ldr r4, _080142E0
	ldrb r1, [r4]
	ldrh r2, [r0]
	strb r2, [r4]
	lsls r0, r2, #0x18
	movs r5, #0x1f
	lsrs r1, r1, #3
	lsrs r0, r0, #0x1b
	cmp r1, r0
	beq _080142F4
	lsls r0, r2, #0x10
	asrs r0, r0, #0x13
	ldr r1, _080142E4
	ldrh r1, [r1]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x13
	bl BGFillBufferHorizontal
	ldr r2, _080142E8
	ldr r0, _080142EC
	ldrb r0, [r0]
	lsrs r0, r0, #3
	ands r0, r5
	lsls r0, r0, #5
	ldrb r1, [r4]
	lsrs r1, r1, #3
	ands r1, r5
	adds r0, r0, r1
	lsls r0, r0, #1
	str r0, [r2]
	ldr r2, _080142F0
	ldrb r0, [r2]
	movs r1, #0x11
	orrs r0, r1
	strb r0, [r2]
	b _080142FE
	.align 2, 0
_080142DC: .4byte gCameraPixelX
_080142E0: .4byte gBGOffsetHorizontal
_080142E4: .4byte gCameraPixelY
_080142E8: .4byte gBGMapOffsetHorizontal
_080142EC: .4byte gBGOffsetVertical
_080142F0: .4byte gBGControlActions
_080142F4:
	ldr r0, _08014304
	ldrb r1, [r0]
	movs r2, #1
	orrs r1, r2
	strb r1, [r0]
_080142FE:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08014304: .4byte gBGControlActions

    .thumb
	.global UpdateMapRight
UpdateMapRight: @ 0x08014308
	push {r4, r5, lr}
	asrs r0, r0, #0x10
	subs r0, #0x78
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r3, r0, #0
	lsls r1, r3, #0x10
	movs r2, #0xf0
	lsls r2, r2, #0x10
	adds r0, r1, r2
	lsrs r2, r0, #0x10
	cmp r1, #0
	bge _0801432C
	ldr r1, _08014328
	movs r0, #0
	b _08014342
	.align 2, 0
_08014328: .4byte gCameraPixelX
_0801432C:
	ldr r0, _08014348
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	ldrh r2, [r0]
	movs r4, #0
	ldrsh r0, [r0, r4]
	cmp r1, r0
	ble _08014350
	ldr r1, _0801434C
	adds r0, r2, #0
	subs r0, #0xf0
_08014342:
	strh r0, [r1]
	adds r2, r1, #0
	b _08014356
	.align 2, 0
_08014348: .4byte gMapPixelSizeX
_0801434C: .4byte gCameraPixelX
_08014350:
	ldr r0, _080143B0
	strh r3, [r0]
	adds r2, r0, #0
_08014356:
	ldr r4, _080143B4
	ldrb r1, [r4]
	ldrh r0, [r2]
	strb r0, [r4]
	lsls r0, r0, #0x18
	movs r5, #0x1f
	lsrs r1, r1, #3
	lsrs r0, r0, #0x1b
	cmp r1, r0
	beq _080143D0
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r0, #0xf0
	asrs r0, r0, #3
	ldr r1, _080143B8
	ldrh r1, [r1]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x13
	bl BGFillBufferHorizontal
	ldr r3, _080143BC
	ldr r0, _080143C0
	ldrb r0, [r0]
	lsrs r0, r0, #3
	ands r0, r5
	lsls r0, r0, #5
	ldrb r1, [r4]
	lsrs r1, r1, #3
	ands r1, r5
	adds r0, r0, r1
	lsls r0, r0, #1
	ldr r2, _080143C4
	ldr r1, _080143C8
	ands r1, r0
	adds r0, #0x3c
	ands r0, r2
	orrs r0, r1
	str r0, [r3]
	ldr r2, _080143CC
	ldrb r0, [r2]
	movs r1, #0x12
	orrs r0, r1
	strb r0, [r2]
	b _080143DA
	.align 2, 0
_080143B0: .4byte gCameraPixelX
_080143B4: .4byte gBGOffsetHorizontal
_080143B8: .4byte gCameraPixelY
_080143BC: .4byte gBGMapOffsetHorizontal
_080143C0: .4byte gBGOffsetVertical
_080143C4: .4byte 0xFFFE003F
_080143C8: .4byte 0x0001FFC0
_080143CC: .4byte gBGControlActions
_080143D0:
	ldr r0, _080143E0
	ldrb r1, [r0]
	movs r2, #2
	orrs r1, r2
	strb r1, [r0]
_080143DA:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080143E0: .4byte gBGControlActions

    .thumb
BGFillBufferVertical: @ 0x080143E4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	mov ip, r0
	mov sl, r1
	ldr r0, _080147E0
	mov r8, r0
	asrs r1, r1, #2
	str r1, [sp]
	ldrh r0, [r0, #0xa]
	muls r0, r1, r0
	lsls r0, r0, #1
	mov r2, r8
	ldr r1, [r2, #0x4c]
	adds r4, r1, r0
	movs r6, #3
	mov r0, sl
	ands r0, r6
	lsls r0, r0, #3
	str r0, [sp, #4]
	ldr r3, _080147E4
	ldr r0, [r3]
	ldr r1, [sp, #4]
	adds r5, r0, r1
	mov r2, ip
	asrs r0, r2, #2
	lsls r0, r0, #1
	str r0, [sp, #8]
	adds r0, r4, r0
	ldr r2, _080147E8
	ldrh r1, [r0]
	mov r0, ip
	ands r0, r6
	lsls r0, r0, #1
	str r0, [sp, #0xc]
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r1, r0, r1
	ldrh r0, [r1]
	strh r0, [r2]
	mov r3, ip
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #2]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #4]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #6]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #8]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0xa]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0xc]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0xe]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x10]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x12]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x14]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x16]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x18]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x1a]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x1c]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x1e]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x20]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x22]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x24]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x26]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x28]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x2a]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x2c]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x2e]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x30]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x32]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x34]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x36]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x38]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x3a]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x3c]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r0, [r0]
	ands r3, r6
	lsls r1, r3, #1
	lsls r0, r0, #5
	adds r0, r0, r5
	adds r1, r1, r0
	ldrh r0, [r1]
	strh r0, [r2, #0x3e]
	mov r3, r8
	ldrh r3, [r3, #8]
	str r3, [sp, #0x10]
	cmp r3, #1
	bne _0801476E
	bl _080151A0
_0801476E:
	mov r1, r8
	ldrh r0, [r1, #0xa]
	ldr r2, [sp]
	muls r0, r2, r0
	lsls r0, r0, #1
	ldr r1, [r1, #0x50]
	adds r4, r1, r0
	ldr r3, _080147E4
	ldr r0, [r3, #4]
	ldr r1, [sp, #4]
	adds r5, r0, r1
	ldr r2, [sp, #8]
	adds r0, r4, r2
	ldr r2, _080147EC
	ldrh r0, [r0]
	lsls r0, r0, #5
	adds r0, r0, r5
	ldr r3, [sp, #0xc]
	adds r0, r3, r0
	ldrh r0, [r0]
	strh r0, [r2]
	mov r3, ip
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #2]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #4]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	b _080147F0
	.align 2, 0
_080147E0: .4byte gRoomHeader
_080147E4: .4byte gTileSetBG
_080147E8: .4byte gBG0VerticalBuffer
_080147EC: .4byte gBG1VerticalBuffer
_080147F0:
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #6]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #8]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0xa]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0xc]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0xe]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x10]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x12]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x14]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x16]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x18]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x1a]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x1c]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x1e]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x20]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x22]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x24]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x26]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x28]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x2a]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x2c]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x2e]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x30]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x32]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x34]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x36]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x38]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x3a]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x3c]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r0, [r0]
	ands r3, r6
	lsls r1, r3, #1
	lsls r0, r0, #5
	adds r0, r0, r5
	adds r1, r1, r0
	ldrh r0, [r1]
	strh r0, [r2, #0x3e]
	mov r7, ip
	adds r7, #1
	ldr r0, [sp, #0x10]
	cmp r0, #2
	bne _08014ADE
	b _080151A0
_08014ADE:
	mov r1, r8
	ldrh r0, [r1, #0xa]
	ldr r2, [sp]
	muls r0, r2, r0
	lsls r0, r0, #1
	ldr r1, [r1, #0x54]
	adds r4, r1, r0
	ldr r3, _08014ED4
	ldr r0, [r3, #8]
	ldr r1, [sp, #4]
	adds r5, r0, r1
	ldr r2, [sp, #8]
	adds r0, r4, r2
	ldr r2, _08014ED8
	ldrh r0, [r0]
	lsls r0, r0, #5
	adds r0, r0, r5
	ldr r3, [sp, #0xc]
	adds r0, r3, r0
	ldrh r0, [r0]
	strh r0, [r2]
	asrs r0, r7, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r7, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #2]
	adds r3, r7, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #4]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #6]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #8]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0xa]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0xc]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0xe]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x10]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x12]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x14]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x16]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x18]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x1a]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x1c]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x1e]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x20]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x22]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x24]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x26]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x28]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x2a]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x2c]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x2e]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x30]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x32]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x34]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x36]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x38]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x3a]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x3c]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r0, [r0]
	ands r3, r6
	lsls r1, r3, #1
	lsls r0, r0, #5
	adds r0, r0, r5
	adds r1, r1, r0
	ldrh r0, [r1]
	strh r0, [r2, #0x3e]
	ldr r1, _08014EDC
	ldrh r0, [r1, #8]
	mov r2, sl
	asrs r1, r2, #2
	mov r3, ip
	asrs r2, r3, #2
	cmp r0, #3
	bne _08014E3C
	b _080151A0
_08014E3C:
	ldr r3, _08014EDC
	ldrh r0, [r3, #0xa]
	muls r0, r1, r0
	lsls r0, r0, #1
	ldr r1, [r3, #0x58]
	adds r4, r1, r0
	mov r0, sl
	ands r0, r6
	lsls r1, r0, #3
	ldr r3, _08014ED4
	ldr r0, [r3, #0xc]
	adds r5, r0, r1
	lsls r0, r2, #1
	adds r0, r4, r0
	ldr r2, _08014EE0
	ldrh r0, [r0]
	mov r1, ip
	ands r1, r6
	lsls r1, r1, #1
	lsls r0, r0, #5
	adds r0, r0, r5
	adds r1, r1, r0
	ldrh r0, [r1]
	strh r0, [r2]
	asrs r0, r7, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r7, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #2]
	adds r3, r7, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #4]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #6]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #8]
	b _08014EE4
	.align 2, 0
_08014ED4: .4byte gTileSetBG
_08014ED8: .4byte gBG2VerticalBuffer
_08014EDC: .4byte gRoomHeader
_08014EE0: .4byte gBG3VerticalBuffer
_08014EE4:
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0xa]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0xc]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0xe]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x10]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x12]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x14]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x16]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x18]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x1a]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x1c]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x1e]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x20]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x22]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x24]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x26]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x28]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x2a]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x2c]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x2e]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x30]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x32]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x34]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x36]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x38]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x3a]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	lsls r1, r1, #5
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x3c]
	adds r3, #1
	asrs r0, r3, #2
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r0, [r0]
	ands r3, r6
	lsls r1, r3, #1
	lsls r0, r0, #5
	adds r0, r0, r5
	adds r1, r1, r0
	ldrh r0, [r1]
	strh r0, [r2, #0x3e]
_080151A0:
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

    .thumb
BGFillBufferHorizontal: @ 0x080151B0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x20
	mov sb, r1
	ldr r3, _080155A8
	asrs r1, r0, #2
	lsls r1, r1, #1
	mov sl, r1
	ldr r1, [r3, #0x4c]
	mov r2, sl
	adds r5, r1, r2
	movs r7, #3
	ands r0, r7
	lsls r0, r0, #1
	str r0, [sp]
	ldr r1, _080155AC
	ldr r0, [r1]
	ldr r2, [sp]
	adds r6, r0, r2
	mov r0, sb
	asrs r0, r0, #2
	str r0, [sp, #4]
	ldrh r0, [r3, #0xa]
	ldr r1, [sp, #4]
	muls r0, r1, r0
	lsls r0, r0, #1
	adds r0, r5, r0
	ldr r2, _080155B0
	ldrh r1, [r0]
	mov r0, sb
	ands r0, r7
	lsls r0, r0, #3
	str r0, [sp, #8]
	lsls r1, r1, #5
	adds r1, r1, r6
	adds r1, r0, r1
	ldrh r0, [r1]
	strh r0, [r2]
	mov r4, sb
	adds r4, #1
	asrs r1, r4, #2
	ldrh r0, [r3, #0xa]
	muls r0, r1, r0
	lsls r0, r0, #1
	adds r0, r5, r0
	ldrh r1, [r0]
	adds r0, r4, #0
	ands r0, r7
	lsls r0, r0, #3
	lsls r1, r1, #5
	adds r1, r1, r6
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #2]
	adds r4, #1
	asrs r1, r4, #2
	ldrh r0, [r3, #0xa]
	muls r0, r1, r0
	lsls r0, r0, #1
	adds r0, r5, r0
	ldrh r1, [r0]
	adds r0, r4, #0
	ands r0, r7
	lsls r0, r0, #3
	lsls r1, r1, #5
	adds r1, r1, r6
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #4]
	adds r4, #1
	asrs r1, r4, #2
	ldrh r0, [r3, #0xa]
	muls r0, r1, r0
	lsls r0, r0, #1
	adds r0, r5, r0
	ldrh r1, [r0]
	adds r0, r4, #0
	ands r0, r7
	lsls r0, r0, #3
	lsls r1, r1, #5
	adds r1, r1, r6
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #6]
	adds r4, #1
	asrs r1, r4, #2
	ldrh r0, [r3, #0xa]
	muls r0, r1, r0
	lsls r0, r0, #1
	adds r0, r5, r0
	ldrh r1, [r0]
	adds r0, r4, #0
	ands r0, r7
	lsls r0, r0, #3
	lsls r1, r1, #5
	adds r1, r1, r6
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #8]
	adds r4, #1
	asrs r1, r4, #2
	ldrh r0, [r3, #0xa]
	muls r0, r1, r0
	lsls r0, r0, #1
	adds r0, r5, r0
	ldrh r1, [r0]
	adds r0, r4, #0
	ands r0, r7
	lsls r0, r0, #3
	lsls r1, r1, #5
	adds r1, r1, r6
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0xa]
	adds r4, #1
	asrs r1, r4, #2
	ldrh r0, [r3, #0xa]
	muls r0, r1, r0
	lsls r0, r0, #1
	adds r0, r5, r0
	ldrh r1, [r0]
	adds r0, r4, #0
	ands r0, r7
	lsls r0, r0, #3
	lsls r1, r1, #5
	adds r1, r1, r6
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0xc]
	adds r4, #1
	asrs r1, r4, #2
	ldrh r0, [r3, #0xa]
	muls r0, r1, r0
	lsls r0, r0, #1
	adds r0, r5, r0
	ldrh r1, [r0]
	adds r0, r4, #0
	ands r0, r7
	lsls r0, r0, #3
	lsls r1, r1, #5
	adds r1, r1, r6
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0xe]
	adds r4, #1
	asrs r1, r4, #2
	ldrh r0, [r3, #0xa]
	muls r0, r1, r0
	lsls r0, r0, #1
	adds r0, r5, r0
	ldrh r1, [r0]
	adds r0, r4, #0
	ands r0, r7
	lsls r0, r0, #3
	lsls r1, r1, #5
	adds r1, r1, r6
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x10]
	adds r4, #1
	asrs r1, r4, #2
	ldrh r0, [r3, #0xa]
	muls r0, r1, r0
	lsls r0, r0, #1
	adds r0, r5, r0
	ldrh r1, [r0]
	adds r0, r4, #0
	ands r0, r7
	lsls r0, r0, #3
	lsls r1, r1, #5
	adds r1, r1, r6
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x12]
	adds r4, #1
	asrs r1, r4, #2
	ldrh r0, [r3, #0xa]
	muls r0, r1, r0
	lsls r0, r0, #1
	adds r0, r5, r0
	ldrh r1, [r0]
	adds r0, r4, #0
	ands r0, r7
	lsls r0, r0, #3
	lsls r1, r1, #5
	adds r1, r1, r6
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x14]
	adds r4, #1
	asrs r1, r4, #2
	ldrh r0, [r3, #0xa]
	muls r0, r1, r0
	lsls r0, r0, #1
	adds r0, r5, r0
	ldrh r1, [r0]
	adds r0, r4, #0
	ands r0, r7
	lsls r0, r0, #3
	lsls r1, r1, #5
	adds r1, r1, r6
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x16]
	adds r4, #1
	asrs r1, r4, #2
	ldrh r0, [r3, #0xa]
	muls r0, r1, r0
	lsls r0, r0, #1
	adds r0, r5, r0
	ldrh r1, [r0]
	adds r0, r4, #0
	ands r0, r7
	lsls r0, r0, #3
	lsls r1, r1, #5
	adds r1, r1, r6
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x18]
	adds r4, #1
	asrs r1, r4, #2
	ldrh r0, [r3, #0xa]
	muls r0, r1, r0
	lsls r0, r0, #1
	adds r0, r5, r0
	ldrh r1, [r0]
	adds r0, r4, #0
	ands r0, r7
	lsls r0, r0, #3
	lsls r1, r1, #5
	adds r1, r1, r6
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x1a]
	adds r4, #1
	asrs r1, r4, #2
	ldrh r0, [r3, #0xa]
	muls r0, r1, r0
	lsls r0, r0, #1
	adds r0, r5, r0
	ldrh r1, [r0]
	adds r0, r4, #0
	ands r0, r7
	lsls r0, r0, #3
	lsls r1, r1, #5
	adds r1, r1, r6
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x1c]
	adds r4, #1
	asrs r1, r4, #2
	ldrh r0, [r3, #0xa]
	muls r0, r1, r0
	lsls r0, r0, #1
	adds r0, r5, r0
	ldrh r1, [r0]
	adds r0, r4, #0
	ands r0, r7
	lsls r0, r0, #3
	lsls r1, r1, #5
	adds r1, r1, r6
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x1e]
	adds r4, #1
	asrs r1, r4, #2
	ldrh r0, [r3, #0xa]
	muls r0, r1, r0
	lsls r0, r0, #1
	adds r0, r5, r0
	ldrh r1, [r0]
	adds r0, r4, #0
	ands r0, r7
	lsls r0, r0, #3
	lsls r1, r1, #5
	adds r1, r1, r6
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x20]
	adds r4, #1
	asrs r1, r4, #2
	ldrh r0, [r3, #0xa]
	muls r0, r1, r0
	lsls r0, r0, #1
	adds r0, r5, r0
	ldrh r1, [r0]
	adds r0, r4, #0
	ands r0, r7
	lsls r0, r0, #3
	lsls r1, r1, #5
	adds r1, r1, r6
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x22]
	adds r4, #1
	asrs r1, r4, #2
	ldrh r0, [r3, #0xa]
	muls r0, r1, r0
	lsls r0, r0, #1
	adds r0, r5, r0
	ldrh r1, [r0]
	adds r0, r4, #0
	ands r0, r7
	lsls r0, r0, #3
	lsls r1, r1, #5
	adds r1, r1, r6
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x24]
	adds r4, #1
	asrs r1, r4, #2
	ldrh r0, [r3, #0xa]
	muls r0, r1, r0
	lsls r0, r0, #1
	adds r0, r5, r0
	ldrh r1, [r0]
	adds r0, r4, #0
	ands r0, r7
	lsls r0, r0, #3
	lsls r1, r1, #5
	adds r1, r1, r6
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x26]
	adds r4, #1
	asrs r1, r4, #2
	ldrh r0, [r3, #0xa]
	muls r0, r1, r0
	lsls r0, r0, #1
	adds r0, r5, r0
	ldrh r1, [r0]
	adds r0, r4, #0
	ands r0, r7
	lsls r0, r0, #3
	lsls r1, r1, #5
	adds r1, r1, r6
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x28]
	adds r4, #1
	asrs r1, r4, #2
	ldrh r0, [r3, #0xa]
	muls r0, r1, r0
	lsls r0, r0, #1
	adds r0, r5, r0
	ldrh r0, [r0]
	ands r4, r7
	lsls r1, r4, #3
	lsls r0, r0, #5
	adds r0, r0, r6
	adds r1, r1, r0
	ldrh r0, [r1]
	strh r0, [r2, #0x2a]
	ldrh r2, [r3, #8]
	str r2, [sp, #0xc]
	mov ip, r3
	cmp r2, #1
	bne _08015486
	bl _08015CB0
_08015486:
	ldr r0, [r3, #0x50]
	mov r1, sl
	adds r5, r0, r1
	ldr r2, _080155AC
	ldr r0, [r2, #4]
	ldr r1, [sp]
	adds r6, r0, r1
	ldrh r0, [r3, #0xa]
	ldr r2, [sp, #4]
	muls r0, r2, r0
	lsls r0, r0, #1
	adds r0, r5, r0
	ldr r2, _080155B4
	ldrh r0, [r0]
	lsls r0, r0, #5
	adds r0, r0, r6
	ldr r1, [sp, #8]
	adds r0, r1, r0
	ldrh r0, [r0]
	strh r0, [r2]
	mov r4, sb
	adds r4, #1
	asrs r1, r4, #2
	ldrh r0, [r3, #0xa]
	muls r0, r1, r0
	lsls r0, r0, #1
	adds r0, r5, r0
	ldrh r1, [r0]
	adds r0, r4, #0
	ands r0, r7
	lsls r0, r0, #3
	lsls r1, r1, #5
	adds r1, r1, r6
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #2]
	adds r4, #1
	asrs r1, r4, #2
	ldrh r0, [r3, #0xa]
	muls r0, r1, r0
	lsls r0, r0, #1
	adds r0, r5, r0
	ldrh r1, [r0]
	adds r0, r4, #0
	ands r0, r7
	lsls r0, r0, #3
	lsls r1, r1, #5
	adds r1, r1, r6
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #4]
	adds r4, #1
	asrs r1, r4, #2
	ldrh r0, [r3, #0xa]
	muls r0, r1, r0
	lsls r0, r0, #1
	adds r0, r5, r0
	ldrh r1, [r0]
	adds r0, r4, #0
	ands r0, r7
	lsls r0, r0, #3
	lsls r1, r1, #5
	adds r1, r1, r6
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #6]
	adds r4, #1
	asrs r1, r4, #2
	ldrh r0, [r3, #0xa]
	muls r0, r1, r0
	lsls r0, r0, #1
	adds r0, r5, r0
	ldrh r1, [r0]
	adds r0, r4, #0
	ands r0, r7
	lsls r0, r0, #3
	lsls r1, r1, #5
	adds r1, r1, r6
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #8]
	adds r4, #1
	asrs r1, r4, #2
	ldrh r0, [r3, #0xa]
	muls r0, r1, r0
	lsls r0, r0, #1
	adds r0, r5, r0
	ldrh r1, [r0]
	adds r0, r4, #0
	ands r0, r7
	lsls r0, r0, #3
	lsls r1, r1, #5
	adds r1, r1, r6
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0xa]
	adds r4, #1
	asrs r1, r4, #2
	ldrh r0, [r3, #0xa]
	muls r0, r1, r0
	lsls r0, r0, #1
	adds r0, r5, r0
	ldrh r1, [r0]
	adds r0, r4, #0
	ands r0, r7
	lsls r0, r0, #3
	lsls r1, r1, #5
	adds r1, r1, r6
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0xc]
	adds r4, #1
	asrs r1, r4, #2
	ldrh r0, [r3, #0xa]
	muls r0, r1, r0
	lsls r0, r0, #1
	adds r0, r5, r0
	ldrh r1, [r0]
	adds r0, r4, #0
	ands r0, r7
	lsls r0, r0, #3
	lsls r1, r1, #5
	adds r1, r1, r6
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0xe]
	adds r4, #1
	asrs r1, r4, #2
	ldrh r0, [r3, #0xa]
	muls r0, r1, r0
	lsls r0, r0, #1
	adds r0, r5, r0
	ldrh r1, [r0]
	adds r0, r4, #0
	ands r0, r7
	lsls r0, r0, #3
	lsls r1, r1, #5
	adds r1, r1, r6
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x10]
	adds r4, #1
	asrs r1, r4, #2
	ldrh r0, [r3, #0xa]
	b _080155B8
	.align 2, 0
_080155A8: .4byte gRoomHeader
_080155AC: .4byte gTileSetBG
_080155B0: .4byte gBG0HorizontalBuffer
_080155B4: .4byte gBG1HorizontalBuffer
_080155B8:
	muls r0, r1, r0
	lsls r0, r0, #1
	adds r0, r5, r0
	ldrh r1, [r0]
	adds r0, r4, #0
	ands r0, r7
	lsls r0, r0, #3
	lsls r1, r1, #5
	adds r1, r1, r6
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x12]
	adds r4, #1
	asrs r1, r4, #2
	ldrh r0, [r3, #0xa]
	muls r0, r1, r0
	lsls r0, r0, #1
	adds r0, r5, r0
	ldrh r1, [r0]
	adds r0, r4, #0
	ands r0, r7
	lsls r0, r0, #3
	lsls r1, r1, #5
	adds r1, r1, r6
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x14]
	adds r4, #1
	asrs r1, r4, #2
	ldrh r0, [r3, #0xa]
	muls r0, r1, r0
	lsls r0, r0, #1
	adds r0, r5, r0
	ldrh r1, [r0]
	movs r0, #3
	mov r8, r0
	adds r0, r4, #0
	ands r0, r7
	lsls r0, r0, #3
	lsls r1, r1, #5
	adds r1, r1, r6
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x16]
	adds r4, #1
	asrs r1, r4, #2
	ldrh r0, [r3, #0xa]
	muls r0, r1, r0
	lsls r0, r0, #1
	adds r0, r5, r0
	ldrh r1, [r0]
	adds r0, r4, #0
	ands r0, r7
	lsls r0, r0, #3
	lsls r1, r1, #5
	adds r1, r1, r6
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x18]
	adds r4, #1
	asrs r1, r4, #2
	ldrh r0, [r3, #0xa]
	muls r0, r1, r0
	lsls r0, r0, #1
	adds r0, r5, r0
	ldrh r1, [r0]
	adds r0, r4, #0
	ands r0, r7
	lsls r0, r0, #3
	lsls r1, r1, #5
	adds r1, r1, r6
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x1a]
	adds r4, #1
	asrs r1, r4, #2
	ldrh r0, [r3, #0xa]
	muls r0, r1, r0
	lsls r0, r0, #1
	adds r0, r5, r0
	ldrh r1, [r0]
	adds r0, r4, #0
	ands r0, r7
	lsls r0, r0, #3
	lsls r1, r1, #5
	adds r1, r1, r6
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x1c]
	adds r4, #1
	asrs r1, r4, #2
	ldrh r0, [r3, #0xa]
	muls r0, r1, r0
	lsls r0, r0, #1
	adds r0, r5, r0
	ldrh r1, [r0]
	adds r0, r4, #0
	ands r0, r7
	lsls r0, r0, #3
	lsls r1, r1, #5
	adds r1, r1, r6
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x1e]
	adds r4, #1
	asrs r1, r4, #2
	ldrh r0, [r3, #0xa]
	muls r0, r1, r0
	lsls r0, r0, #1
	adds r0, r5, r0
	ldrh r1, [r0]
	adds r0, r4, #0
	ands r0, r7
	lsls r0, r0, #3
	lsls r1, r1, #5
	adds r1, r1, r6
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x20]
	adds r4, #1
	asrs r1, r4, #2
	ldrh r0, [r3, #0xa]
	muls r0, r1, r0
	lsls r0, r0, #1
	adds r0, r5, r0
	ldrh r1, [r0]
	adds r0, r4, #0
	ands r0, r7
	lsls r0, r0, #3
	lsls r1, r1, #5
	adds r1, r1, r6
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x22]
	adds r4, #1
	asrs r1, r4, #2
	ldrh r0, [r3, #0xa]
	muls r0, r1, r0
	lsls r0, r0, #1
	adds r0, r5, r0
	ldrh r1, [r0]
	adds r0, r4, #0
	ands r0, r7
	lsls r0, r0, #3
	lsls r1, r1, #5
	adds r1, r1, r6
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x24]
	adds r4, #1
	asrs r1, r4, #2
	ldrh r0, [r3, #0xa]
	muls r0, r1, r0
	lsls r0, r0, #1
	adds r0, r5, r0
	ldrh r1, [r0]
	adds r0, r4, #0
	ands r0, r7
	lsls r0, r0, #3
	lsls r1, r1, #5
	adds r1, r1, r6
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x26]
	adds r4, #1
	asrs r1, r4, #2
	ldrh r0, [r3, #0xa]
	muls r0, r1, r0
	lsls r0, r0, #1
	adds r0, r5, r0
	ldrh r1, [r0]
	adds r0, r4, #0
	ands r0, r7
	lsls r0, r0, #3
	lsls r1, r1, #5
	adds r1, r1, r6
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x28]
	adds r4, #1
	asrs r1, r4, #2
	ldrh r0, [r3, #0xa]
	muls r0, r1, r0
	lsls r0, r0, #1
	adds r0, r5, r0
	ldrh r0, [r0]
	ands r4, r7
	lsls r1, r4, #3
	lsls r0, r0, #5
	adds r0, r0, r6
	adds r1, r1, r0
	ldrh r0, [r1]
	strh r0, [r2, #0x2a]
	ldr r1, [sp, #0xc]
	str r1, [sp, #0x10]
	mov r4, sb
	adds r4, #1
	cmp r1, #2
	bne _08015748
	b _08015CB0
_08015748:
	mov r2, sl
	str r2, [sp, #0x14]
	ldr r0, [r3, #0x54]
	adds r5, r0, r2
	ldr r0, [sp]
	str r0, [sp, #0x18]
	ldr r1, _08015B3C
	ldr r0, [r1, #8]
	ldr r2, [sp, #0x18]
	adds r6, r0, r2
	ldr r0, [sp, #4]
	mov sl, r0
	ldrh r0, [r3, #0xa]
	mov r1, sl
	muls r1, r0, r1
	adds r0, r1, #0
	lsls r0, r0, #1
	adds r0, r5, r0
	ldr r2, _08015B40
	ldrh r0, [r0]
	ldr r1, [sp, #8]
	str r1, [sp, #0x1c]
	lsls r0, r0, #5
	adds r0, r0, r6
	adds r0, r1, r0
	ldrh r0, [r0]
	strh r0, [r2]
	asrs r1, r4, #2
	ldrh r0, [r3, #0xa]
	muls r0, r1, r0
	lsls r0, r0, #1
	adds r0, r5, r0
	ldrh r1, [r0]
	adds r0, r4, #0
	ands r0, r7
	lsls r0, r0, #3
	lsls r1, r1, #5
	adds r1, r1, r6
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #2]
	adds r4, #1
	asrs r1, r4, #2
	ldrh r0, [r3, #0xa]
	muls r0, r1, r0
	lsls r0, r0, #1
	adds r0, r5, r0
	ldrh r1, [r0]
	adds r0, r4, #0
	ands r0, r7
	lsls r0, r0, #3
	lsls r1, r1, #5
	adds r1, r1, r6
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #4]
	adds r4, #1
	asrs r1, r4, #2
	ldrh r0, [r3, #0xa]
	muls r0, r1, r0
	lsls r0, r0, #1
	adds r0, r5, r0
	ldrh r1, [r0]
	adds r0, r4, #0
	ands r0, r7
	lsls r0, r0, #3
	lsls r1, r1, #5
	adds r1, r1, r6
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #6]
	adds r4, #1
	asrs r1, r4, #2
	ldrh r0, [r3, #0xa]
	muls r0, r1, r0
	lsls r0, r0, #1
	adds r0, r5, r0
	ldrh r1, [r0]
	adds r0, r4, #0
	ands r0, r7
	lsls r0, r0, #3
	lsls r1, r1, #5
	adds r1, r1, r6
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #8]
	adds r4, #1
	asrs r1, r4, #2
	ldrh r0, [r3, #0xa]
	muls r0, r1, r0
	lsls r0, r0, #1
	adds r0, r5, r0
	ldrh r1, [r0]
	adds r0, r4, #0
	ands r0, r7
	lsls r0, r0, #3
	lsls r1, r1, #5
	adds r1, r1, r6
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0xa]
	adds r4, #1
	asrs r1, r4, #2
	ldrh r0, [r3, #0xa]
	muls r0, r1, r0
	lsls r0, r0, #1
	adds r0, r5, r0
	ldrh r1, [r0]
	adds r0, r4, #0
	ands r0, r7
	lsls r0, r0, #3
	lsls r1, r1, #5
	adds r1, r1, r6
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0xc]
	adds r4, #1
	asrs r1, r4, #2
	ldrh r0, [r3, #0xa]
	muls r0, r1, r0
	lsls r0, r0, #1
	adds r0, r5, r0
	ldrh r1, [r0]
	adds r0, r4, #0
	ands r0, r7
	lsls r0, r0, #3
	lsls r1, r1, #5
	adds r1, r1, r6
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0xe]
	adds r4, #1
	asrs r1, r4, #2
	ldrh r0, [r3, #0xa]
	muls r0, r1, r0
	lsls r0, r0, #1
	adds r0, r5, r0
	ldrh r1, [r0]
	adds r0, r4, #0
	ands r0, r7
	lsls r0, r0, #3
	lsls r1, r1, #5
	adds r1, r1, r6
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x10]
	adds r4, #1
	asrs r1, r4, #2
	ldrh r0, [r3, #0xa]
	muls r0, r1, r0
	lsls r0, r0, #1
	adds r0, r5, r0
	ldrh r1, [r0]
	adds r0, r4, #0
	ands r0, r7
	lsls r0, r0, #3
	lsls r1, r1, #5
	adds r1, r1, r6
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x12]
	adds r4, #1
	asrs r1, r4, #2
	ldrh r0, [r3, #0xa]
	muls r0, r1, r0
	lsls r0, r0, #1
	adds r0, r5, r0
	ldrh r1, [r0]
	adds r0, r4, #0
	ands r0, r7
	lsls r0, r0, #3
	lsls r1, r1, #5
	adds r1, r1, r6
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x14]
	adds r4, #1
	asrs r1, r4, #2
	ldrh r0, [r3, #0xa]
	muls r0, r1, r0
	lsls r0, r0, #1
	adds r0, r5, r0
	ldrh r1, [r0]
	adds r0, r4, #0
	ands r0, r7
	lsls r0, r0, #3
	lsls r1, r1, #5
	adds r1, r1, r6
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x16]
	adds r4, #1
	asrs r1, r4, #2
	ldrh r0, [r3, #0xa]
	muls r0, r1, r0
	lsls r0, r0, #1
	adds r0, r5, r0
	ldrh r1, [r0]
	adds r0, r4, #0
	ands r0, r7
	lsls r0, r0, #3
	lsls r1, r1, #5
	adds r1, r1, r6
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x18]
	adds r4, #1
	asrs r1, r4, #2
	ldrh r0, [r3, #0xa]
	muls r0, r1, r0
	lsls r0, r0, #1
	adds r0, r5, r0
	ldrh r1, [r0]
	adds r0, r4, #0
	ands r0, r7
	lsls r0, r0, #3
	lsls r1, r1, #5
	adds r1, r1, r6
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x1a]
	adds r4, #1
	asrs r1, r4, #2
	ldrh r0, [r3, #0xa]
	muls r0, r1, r0
	lsls r0, r0, #1
	adds r0, r5, r0
	ldrh r1, [r0]
	adds r0, r4, #0
	ands r0, r7
	lsls r0, r0, #3
	lsls r1, r1, #5
	adds r1, r1, r6
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x1c]
	adds r4, #1
	asrs r1, r4, #2
	ldrh r0, [r3, #0xa]
	muls r0, r1, r0
	lsls r0, r0, #1
	adds r0, r5, r0
	ldrh r1, [r0]
	adds r0, r4, #0
	ands r0, r7
	lsls r0, r0, #3
	lsls r1, r1, #5
	adds r1, r1, r6
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x1e]
	adds r4, #1
	asrs r1, r4, #2
	ldrh r0, [r3, #0xa]
	muls r0, r1, r0
	lsls r0, r0, #1
	adds r0, r5, r0
	ldrh r1, [r0]
	adds r0, r4, #0
	mov r3, r8
	ands r0, r3
	lsls r0, r0, #3
	lsls r1, r1, #5
	adds r1, r1, r6
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x20]
	adds r4, #1
	asrs r1, r4, #2
	mov r7, ip
	ldrh r0, [r7, #0xa]
	muls r0, r1, r0
	lsls r0, r0, #1
	adds r0, r5, r0
	ldrh r1, [r0]
	adds r0, r4, #0
	ands r0, r3
	lsls r0, r0, #3
	lsls r1, r1, #5
	adds r1, r1, r6
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x22]
	adds r4, #1
	asrs r1, r4, #2
	ldrh r0, [r7, #0xa]
	muls r0, r1, r0
	lsls r0, r0, #1
	adds r0, r5, r0
	ldrh r1, [r0]
	adds r0, r4, #0
	ands r0, r3
	lsls r0, r0, #3
	lsls r1, r1, #5
	adds r1, r1, r6
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x24]
	adds r4, #1
	asrs r1, r4, #2
	ldrh r0, [r7, #0xa]
	muls r0, r1, r0
	lsls r0, r0, #1
	adds r0, r5, r0
	ldrh r1, [r0]
	adds r0, r4, #0
	ands r0, r3
	lsls r0, r0, #3
	lsls r1, r1, #5
	adds r1, r1, r6
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x26]
	adds r4, #1
	asrs r1, r4, #2
	ldrh r0, [r7, #0xa]
	muls r0, r1, r0
	lsls r0, r0, #1
	adds r0, r5, r0
	ldrh r1, [r0]
	adds r0, r4, #0
	ands r0, r3
	lsls r0, r0, #3
	lsls r1, r1, #5
	adds r1, r1, r6
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0x28]
	adds r4, #1
	asrs r1, r4, #2
	ldrh r0, [r7, #0xa]
	muls r0, r1, r0
	lsls r0, r0, #1
	adds r0, r5, r0
	ldrh r0, [r0]
	ands r4, r3
	lsls r1, r4, #3
	lsls r0, r0, #5
	adds r0, r0, r6
	adds r1, r1, r0
	ldrh r0, [r1]
	strh r0, [r2, #0x2a]
	ldrh r1, [r7, #0xa]
	ldr r0, [sp, #0x10]
	cmp r0, #3
	bne _080159FE
	b _08015CB0
_080159FE:
	adds r2, r7, #0
	ldr r0, [r2, #0x58]
	ldr r3, [sp, #0x14]
	adds r5, r0, r3
	ldr r7, _08015B3C
	ldr r0, [r7, #0xc]
	ldr r2, [sp, #0x18]
	adds r6, r0, r2
	mov r0, sl
	muls r0, r1, r0
	lsls r0, r0, #1
	adds r0, r5, r0
	ldr r3, _08015B44
	ldrh r0, [r0]
	lsls r0, r0, #5
	adds r0, r0, r6
	ldr r7, [sp, #0x1c]
	adds r0, r7, r0
	ldrh r0, [r0]
	strh r0, [r3]
	mov r4, sb
	adds r4, #1
	asrs r1, r4, #2
	mov r2, ip
	ldrh r0, [r2, #0xa]
	muls r0, r1, r0
	lsls r0, r0, #1
	adds r0, r5, r0
	ldrh r1, [r0]
	movs r2, #3
	adds r0, r4, #0
	ands r0, r2
	lsls r0, r0, #3
	lsls r1, r1, #5
	adds r1, r1, r6
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r3, #2]
	adds r4, #1
	asrs r1, r4, #2
	mov r7, ip
	ldrh r0, [r7, #0xa]
	muls r0, r1, r0
	lsls r0, r0, #1
	adds r0, r5, r0
	ldrh r1, [r0]
	adds r0, r4, #0
	ands r0, r2
	lsls r0, r0, #3
	lsls r1, r1, #5
	adds r1, r1, r6
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r3, #4]
	adds r4, #1
	asrs r1, r4, #2
	ldrh r0, [r7, #0xa]
	muls r0, r1, r0
	lsls r0, r0, #1
	adds r0, r5, r0
	ldrh r1, [r0]
	adds r0, r4, #0
	ands r0, r2
	lsls r0, r0, #3
	lsls r1, r1, #5
	adds r1, r1, r6
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r3, #6]
	adds r4, #1
	asrs r1, r4, #2
	ldrh r0, [r7, #0xa]
	muls r0, r1, r0
	lsls r0, r0, #1
	adds r0, r5, r0
	ldrh r1, [r0]
	adds r0, r4, #0
	ands r0, r2
	lsls r0, r0, #3
	lsls r1, r1, #5
	adds r1, r1, r6
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r3, #8]
	adds r4, #1
	asrs r1, r4, #2
	ldrh r0, [r7, #0xa]
	muls r0, r1, r0
	lsls r0, r0, #1
	adds r0, r5, r0
	ldrh r1, [r0]
	adds r0, r4, #0
	ands r0, r2
	lsls r0, r0, #3
	lsls r1, r1, #5
	adds r1, r1, r6
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r3, #0xa]
	adds r4, #1
	asrs r1, r4, #2
	ldrh r0, [r7, #0xa]
	muls r0, r1, r0
	lsls r0, r0, #1
	adds r0, r5, r0
	ldrh r1, [r0]
	adds r0, r4, #0
	ands r0, r2
	lsls r0, r0, #3
	lsls r1, r1, #5
	adds r1, r1, r6
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r3, #0xc]
	adds r4, #1
	asrs r1, r4, #2
	ldrh r0, [r7, #0xa]
	muls r0, r1, r0
	lsls r0, r0, #1
	adds r0, r5, r0
	ldrh r1, [r0]
	adds r0, r4, #0
	ands r0, r2
	lsls r0, r0, #3
	lsls r1, r1, #5
	adds r1, r1, r6
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r3, #0xe]
	adds r4, #1
	asrs r1, r4, #2
	ldrh r0, [r7, #0xa]
	muls r0, r1, r0
	lsls r0, r0, #1
	adds r0, r5, r0
	ldrh r1, [r0]
	adds r0, r4, #0
	ands r0, r2
	lsls r0, r0, #3
	lsls r1, r1, #5
	adds r1, r1, r6
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r3, #0x10]
	adds r4, #1
	asrs r1, r4, #2
	ldrh r0, [r7, #0xa]
	muls r0, r1, r0
	lsls r0, r0, #1
	adds r0, r5, r0
	ldrh r1, [r0]
	adds r0, r4, #0
	ands r0, r2
	lsls r0, r0, #3
	lsls r1, r1, #5
	adds r1, r1, r6
	adds r0, r0, r1
	ldrh r0, [r0]
	b _08015B48
	.align 2, 0
_08015B3C: .4byte gTileSetBG
_08015B40: .4byte gBG2HorizontalBuffer
_08015B44: .4byte gBG3HorizontalBuffer
_08015B48:
	strh r0, [r3, #0x12]
	adds r4, #1
	asrs r1, r4, #2
	ldrh r0, [r7, #0xa]
	muls r0, r1, r0
	lsls r0, r0, #1
	adds r0, r5, r0
	ldrh r1, [r0]
	adds r0, r4, #0
	ands r0, r2
	lsls r0, r0, #3
	lsls r1, r1, #5
	adds r1, r1, r6
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r3, #0x14]
	adds r4, #1
	asrs r1, r4, #2
	ldrh r0, [r7, #0xa]
	muls r0, r1, r0
	lsls r0, r0, #1
	adds r0, r5, r0
	ldrh r1, [r0]
	adds r0, r4, #0
	ands r0, r2
	lsls r0, r0, #3
	lsls r1, r1, #5
	adds r1, r1, r6
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r3, #0x16]
	adds r4, #1
	asrs r1, r4, #2
	ldrh r0, [r7, #0xa]
	muls r0, r1, r0
	lsls r0, r0, #1
	adds r0, r5, r0
	ldrh r1, [r0]
	adds r0, r4, #0
	ands r0, r2
	lsls r0, r0, #3
	lsls r1, r1, #5
	adds r1, r1, r6
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r3, #0x18]
	adds r4, #1
	asrs r1, r4, #2
	ldrh r0, [r7, #0xa]
	muls r0, r1, r0
	lsls r0, r0, #1
	adds r0, r5, r0
	ldrh r1, [r0]
	adds r0, r4, #0
	ands r0, r2
	lsls r0, r0, #3
	lsls r1, r1, #5
	adds r1, r1, r6
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r3, #0x1a]
	adds r4, #1
	asrs r1, r4, #2
	ldrh r0, [r7, #0xa]
	muls r0, r1, r0
	lsls r0, r0, #1
	adds r0, r5, r0
	ldrh r1, [r0]
	adds r0, r4, #0
	ands r0, r2
	lsls r0, r0, #3
	lsls r1, r1, #5
	adds r1, r1, r6
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r3, #0x1c]
	adds r4, #1
	asrs r1, r4, #2
	ldrh r0, [r7, #0xa]
	muls r0, r1, r0
	lsls r0, r0, #1
	adds r0, r5, r0
	ldrh r1, [r0]
	adds r0, r4, #0
	ands r0, r2
	lsls r0, r0, #3
	lsls r1, r1, #5
	adds r1, r1, r6
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r3, #0x1e]
	adds r4, #1
	asrs r1, r4, #2
	ldrh r0, [r7, #0xa]
	muls r0, r1, r0
	lsls r0, r0, #1
	adds r0, r5, r0
	ldrh r1, [r0]
	adds r0, r4, #0
	ands r0, r2
	lsls r0, r0, #3
	lsls r1, r1, #5
	adds r1, r1, r6
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r3, #0x20]
	adds r4, #1
	asrs r1, r4, #2
	ldrh r0, [r7, #0xa]
	muls r0, r1, r0
	lsls r0, r0, #1
	adds r0, r5, r0
	ldrh r1, [r0]
	adds r0, r4, #0
	ands r0, r2
	lsls r0, r0, #3
	lsls r1, r1, #5
	adds r1, r1, r6
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r3, #0x22]
	adds r4, #1
	asrs r1, r4, #2
	ldrh r0, [r7, #0xa]
	muls r0, r1, r0
	lsls r0, r0, #1
	adds r0, r5, r0
	ldrh r1, [r0]
	adds r0, r4, #0
	ands r0, r2
	lsls r0, r0, #3
	lsls r1, r1, #5
	adds r1, r1, r6
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r3, #0x24]
	adds r4, #1
	asrs r1, r4, #2
	ldrh r0, [r7, #0xa]
	muls r0, r1, r0
	lsls r0, r0, #1
	adds r0, r5, r0
	ldrh r1, [r0]
	adds r0, r4, #0
	ands r0, r2
	lsls r0, r0, #3
	lsls r1, r1, #5
	adds r1, r1, r6
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r3, #0x26]
	adds r4, #1
	asrs r1, r4, #2
	ldrh r0, [r7, #0xa]
	muls r0, r1, r0
	lsls r0, r0, #1
	adds r0, r5, r0
	ldrh r1, [r0]
	adds r0, r4, #0
	ands r0, r2
	lsls r0, r0, #3
	lsls r1, r1, #5
	adds r1, r1, r6
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r3, #0x28]
	adds r4, #1
	asrs r1, r4, #2
	ldrh r0, [r7, #0xa]
	muls r0, r1, r0
	lsls r0, r0, #1
	adds r0, r5, r0
	ldrh r0, [r0]
	ands r4, r2
	lsls r1, r4, #3
	lsls r0, r0, #5
	adds r0, r0, r6
	adds r1, r1, r0
	ldrh r0, [r1]
	strh r0, [r3, #0x2a]
_08015CB0:
	add sp, #0x20
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	.thumb
	.global sub_08015CC0
sub_08015CC0: @ 0x08015CC0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r2, r0, #0
	ldr r1, _08015CE8
	movs r0, #1
	strb r0, [r1]
	ldr r1, _08015CEC
	movs r0, #0
	strb r0, [r1]
	cmp r2, #1
	beq _08015D90
	cmp r2, #1
	bgt _08015CF0
	cmp r2, #0
	beq _08015CFE
	b _08015F48
	.align 2, 0
_08015CE8: .4byte dword_200146C
_08015CEC: .4byte gBGControlActions
_08015CF0:
	cmp r2, #2
	bne _08015CF6
	b _08015E20
_08015CF6:
	cmp r2, #3
	bne _08015CFC
	b _08015EBC
_08015CFC:
	b _08015F48
_08015CFE:
	ldr r2, _08015D18
	ldrb r0, [r2, #0x14]
	cmp r0, #0
	bne _08015D20
	ldr r1, _08015D1C
	ldr r0, [r2, #0x38]
	str r0, [r1]
	cmp r0, #0
	bne _08015D2E
	.2byte 0xEE00, 0xEE00
	b _08015D2E
	.align 2, 0
_08015D18: .4byte gRoomHeader
_08015D1C: .4byte 0x02002080
_08015D20:
	ldr r1, _08015D70
	ldr r0, [r2, #0x3c]
	str r0, [r1]
	cmp r0, #0
	bne _08015D2E
	.2byte 0xEE00, 0xEE00
_08015D2E:
	ldr r2, _08015D74
	ldr r0, _08015D70
	ldr r0, [r0]
	ldrh r1, [r0, #2]
	lsls r0, r1, #0x10
	orrs r0, r1
	str r0, [r2]
	ldr r1, _08015D78
	movs r2, #0xa0
	lsls r2, r2, #1
	bl DmaFill32
	ldr r0, _08015D7C
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r1, _08015D80
	ldr r0, _08015D84
	str r0, [r1]
	ldr r2, _08015D88
	ldr r0, _08015D8C
	ldrh r1, [r2]
	ldrh r0, [r0]
	ands r0, r1
	strh r0, [r2]
	ldrh r0, [r2]
	movs r1, #0x41
	orrs r0, r1
	strh r0, [r2]
	subs r2, #0x48
	b _08015E8C
	.align 2, 0
_08015D70: .4byte 0x02002080
_08015D74: .4byte 0x02002088
_08015D78: .4byte 0x0600E000
_08015D7C: .4byte 0x04000010
_08015D80: .4byte 0x02002084
_08015D84: .4byte 0x0600E380
_08015D88: .4byte 0x04000050
_08015D8C: .4byte gColorSpecEffectsSel
_08015D90:
	ldr r2, _08015DA8
	ldrb r0, [r2, #0x15]
	cmp r0, #0
	bne _08015DB0
	ldr r1, _08015DAC
	ldr r0, [r2, #0x38]
	str r0, [r1]
	cmp r0, #0
	bne _08015DBE
	.2byte 0xEE00, 0xEE00
	b _08015DBE
	.align 2, 0
_08015DA8: .4byte gRoomHeader
_08015DAC: .4byte 0x02002080
_08015DB0:
	ldr r1, _08015E00
	ldr r0, [r2, #0x3c]
	str r0, [r1]
	cmp r0, #0
	bne _08015DBE
	.2byte 0xEE00, 0xEE00
_08015DBE:
	ldr r2, _08015E04
	ldr r0, _08015E00
	ldr r0, [r0]
	ldrh r1, [r0, #2]
	lsls r0, r1, #0x10
	orrs r0, r1
	str r0, [r2]
	ldr r1, _08015E08
	movs r2, #0xa0
	lsls r2, r2, #1
	bl DmaFill32
	ldr r0, _08015E0C
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r1, _08015E10
	ldr r0, _08015E14
	str r0, [r1]
	ldr r2, _08015E18
	ldr r0, _08015E1C
	ldrh r1, [r2]
	ldrh r0, [r0]
	ands r0, r1
	strh r0, [r2]
	ldrh r0, [r2]
	movs r1, #0x42
	orrs r0, r1
	strh r0, [r2]
	subs r2, #0x46
	b _08015E8C
	.align 2, 0
_08015E00: .4byte 0x02002080
_08015E04: .4byte 0x02002088
_08015E08: .4byte 0x0600E800
_08015E0C: .4byte 0x04000014
_08015E10: .4byte 0x02002084
_08015E14: .4byte 0x0600EB80
_08015E18: .4byte 0x04000050
_08015E1C: .4byte gColorSpecEffectsSel
_08015E20:
	ldr r2, _08015E38
	ldrb r0, [r2, #0x16]
	cmp r0, #0
	bne _08015E40
	ldr r1, _08015E3C
	ldr r0, [r2, #0x38]
	str r0, [r1]
	cmp r0, #0
	bne _08015E4E
	.2byte 0xEE00, 0xEE00
	b _08015E4E
	.align 2, 0
_08015E38: .4byte gRoomHeader
_08015E3C: .4byte 0x02002080
_08015E40:
	ldr r1, _08015E98
	ldr r0, [r2, #0x3c]
	str r0, [r1]
	cmp r0, #0
	bne _08015E4E
	.2byte 0xEE00, 0xEE00
_08015E4E:
	ldr r2, _08015E9C
	ldr r0, _08015E98
	ldr r0, [r0]
	ldrh r1, [r0, #2]
	lsls r0, r1, #0x10
	orrs r0, r1
	str r0, [r2]
	ldr r1, _08015EA0
	movs r2, #0xa0
	lsls r2, r2, #1
	bl DmaFill32
	ldr r0, _08015EA4
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r1, _08015EA8
	ldr r0, _08015EAC
	str r0, [r1]
	ldr r2, _08015EB0
	ldr r0, _08015EB4
	ldrh r1, [r2]
	ldrh r0, [r0]
	ands r0, r1
	strh r0, [r2]
	ldrh r0, [r2]
	movs r1, #0x44
	orrs r0, r1
	strh r0, [r2]
	subs r2, #0x44
_08015E8C:
	ldrh r1, [r2]
	ldr r0, _08015EB8
	ands r0, r1
	strh r0, [r2]
	b _08015F4E
	.align 2, 0
_08015E98: .4byte 0x02002080
_08015E9C: .4byte 0x02002088
_08015EA0: .4byte 0x0600F000
_08015EA4: .4byte 0x04000018
_08015EA8: .4byte 0x02002084
_08015EAC: .4byte 0x0600F380
_08015EB0: .4byte 0x04000050
_08015EB4: .4byte gColorSpecEffectsSel
_08015EB8: .4byte 0x0000FFFC
_08015EBC:
	ldr r2, _08015ED4
	ldrb r0, [r2, #0x17]
	cmp r0, #0
	bne _08015EDC
	ldr r1, _08015ED8
	ldr r0, [r2, #0x38]
	str r0, [r1]
	cmp r0, #0
	bne _08015EEA
	.2byte 0xEE00, 0xEE00
	b _08015EEA
	.align 2, 0
_08015ED4: .4byte gRoomHeader
_08015ED8: .4byte 0x02002080
_08015EDC:
	ldr r1, _08015F28
	ldr r0, [r2, #0x3c]
	str r0, [r1]
	cmp r0, #0
	bne _08015EEA
	.2byte 0xEE00, 0xEE00
_08015EEA:
	ldr r2, _08015F2C
	ldr r0, _08015F28
	ldr r0, [r0]
	ldrh r1, [r0, #2]
	lsls r0, r1, #0x10
	orrs r0, r1
	str r0, [r2]
	ldr r1, _08015F30
	movs r2, #0xa0
	lsls r2, r2, #1
	bl DmaFill32
	ldr r0, _08015F34
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r1, _08015F38
	ldr r0, _08015F3C
	str r0, [r1]
	ldr r2, _08015F40
	ldr r0, _08015F44
	ldrh r1, [r2]
	ldrh r0, [r0]
	ands r0, r1
	strh r0, [r2]
	ldrh r0, [r2]
	movs r1, #0x48
	orrs r0, r1
	strh r0, [r2]
	b _08015F4E
	.align 2, 0
_08015F28: .4byte 0x02002080
_08015F2C: .4byte 0x02002088
_08015F30: .4byte 0x0600F800
_08015F34: .4byte 0x0400001C
_08015F38: .4byte 0x02002084
_08015F3C: .4byte 0x0600FB80
_08015F40: .4byte 0x04000050
_08015F44: .4byte gColorSpecEffectsSel
_08015F48:
	.2byte 0xEE00, 0xEE00
	b _08015FAE
_08015F4E:
	movs r3, #0
	ldr r2, _08015FBC
	ldr r0, [r2]
	ldr r1, _08015FC0
	mov ip, r1
	ldr r1, _08015FC4
	mov r8, r1
	ldr r1, _08015FC8
	mov sb, r1
	ldr r1, _08015FCC
	mov sl, r1
	ldrb r0, [r0, #1]
	cmp r3, r0
	bge _08015F98
	ldr r7, _08015FD0
	adds r6, r2, #0
	movs r5, #4
	movs r4, #2
_08015F72:
	ldr r1, [r7]
	lsls r0, r3, #6
	adds r1, r0, r1
	ldr r2, [r6]
	adds r0, r2, r0
	ldrh r0, [r0, #4]
	strh r0, [r1]
	adds r0, r2, r4
	ldrh r0, [r0, #4]
	strh r0, [r1, #2]
	adds r0, r2, r5
	ldrh r0, [r0, #4]
	strh r0, [r1, #4]
	adds r5, #0x40
	adds r4, #0x40
	adds r3, #1
	ldrb r2, [r2, #1]
	cmp r3, r2
	blt _08015F72
_08015F98:
	movs r0, #3
	mov r1, ip
	str r0, [r1]
	movs r0, #0x1b
	mov r1, r8
	str r0, [r1]
	movs r0, #1
	mov r1, sb
	str r0, [r1]
	mov r1, sl
	str r0, [r1]
_08015FAE:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08015FBC: .4byte 0x02002080
_08015FC0: .4byte 0x02002074
_08015FC4: .4byte 0x02002078
_08015FC8: .4byte 0x0200207C
_08015FCC: .4byte dword_2001470
_08015FD0: .4byte 0x02002084

    .thumb
    .global sub_8015FD4
sub_8015FD4: @ 0x08015FD4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r3, #0
	ldr r2, _08016068
	ldr r0, [r2]
	ldr r1, _0801606C
	mov ip, r1
	ldr r1, _08016070
	mov sl, r1
	ldrb r0, [r0, #1]
	cmp r3, r0
	bge _0801603C
	mov sb, r2
	ldr r2, _08016074
	mov r8, r2
	movs r7, #0x3a
	movs r6, #0x38
	movs r5, #0x36
	movs r4, #0x34
_08016000:
	mov r0, ip
	ldr r1, [r0]
	mov r0, r8
	ldr r2, [r0]
	lsls r1, r1, #1
	lsls r0, r3, #6
	adds r0, r0, r2
	adds r1, r1, r0
	mov r0, sb
	ldr r2, [r0]
	adds r0, r2, r4
	ldrh r0, [r0, #4]
	strh r0, [r1]
	adds r0, r2, r5
	ldrh r0, [r0, #4]
	strh r0, [r1, #2]
	adds r0, r2, r6
	ldrh r0, [r0, #4]
	strh r0, [r1, #4]
	adds r0, r2, r7
	ldrh r0, [r0, #4]
	strh r0, [r1, #6]
	adds r7, #0x40
	adds r6, #0x40
	adds r5, #0x40
	adds r4, #0x40
	adds r3, #1
	ldrb r2, [r2, #1]
	cmp r3, r2
	blt _08016000
_0801603C:
	mov r1, ip
	ldr r0, [r1]
	mov r2, sl
	ldr r1, [r2]
	adds r0, r0, r1
	mov r1, ip
	str r0, [r1]
	ldr r2, _08016078
	ldr r1, [r2]
	cmp r0, r1
	bne _08016058
	ldr r1, _0801607C
	movs r0, #0
	str r0, [r1]
_08016058:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08016068: .4byte 0x02002080
_0801606C: .4byte 0x02002074
_08016070: .4byte 0x0200207C
_08016074: .4byte 0x02002084
_08016078: .4byte 0x02002078
_0801607C: .4byte dword_2001470

    .thumb
	.global sub_08016080
sub_08016080: @ 0x08016080
	push {lr}
	cmp r0, #1
	beq _080160D8
	cmp r0, #1
	bgt _08016090
	cmp r0, #0
	beq _0801609A
	b _080161C4
_08016090:
	cmp r0, #2
	beq _08016118
	cmp r0, #3
	beq _08016158
	b _080161C4
_0801609A:
	ldr r2, _080160A8
	ldrb r0, [r2, #0x14]
	cmp r0, #0
	bne _080160B0
	ldr r1, _080160AC
	ldr r0, [r2, #0x38]
	b _080160B4
	.align 2, 0
_080160A8: .4byte gRoomHeader
_080160AC: .4byte 0x02002080
_080160B0:
	ldr r1, _080160C8
	ldr r0, [r2, #0x3c]
_080160B4:
	str r0, [r1]
	ldr r2, _080160CC
	ldr r0, [r1]
	ldrh r1, [r0, #2]
	lsls r0, r1, #0x10
	orrs r0, r1
	str r0, [r2]
	ldr r1, _080160D0
	ldr r0, _080160D4
	b _08016186
	.align 2, 0
_080160C8: .4byte 0x02002080
_080160CC: .4byte 0x02002088
_080160D0: .4byte 0x02002084
_080160D4: .4byte 0x0600E380
_080160D8:
	ldr r2, _080160E8
	ldrb r0, [r2, #0x15]
	cmp r0, #0
	bne _080160F0
	ldr r1, _080160EC
	ldr r0, [r2, #0x38]
	b _080160F4
	.align 2, 0
_080160E8: .4byte gRoomHeader
_080160EC: .4byte 0x02002080
_080160F0:
	ldr r1, _08016108
	ldr r0, [r2, #0x3c]
_080160F4:
	str r0, [r1]
	ldr r2, _0801610C
	ldr r0, [r1]
	ldrh r1, [r0, #2]
	lsls r0, r1, #0x10
	orrs r0, r1
	str r0, [r2]
	ldr r1, _08016110
	ldr r0, _08016114
	b _08016186
	.align 2, 0
_08016108: .4byte 0x02002080
_0801610C: .4byte 0x02002088
_08016110: .4byte 0x02002084
_08016114: .4byte 0x0600EB80
_08016118:
	ldr r2, _08016128
	ldrb r0, [r2, #0x16]
	cmp r0, #0
	bne _08016130
	ldr r1, _0801612C
	ldr r0, [r2, #0x38]
	b _08016134
	.align 2, 0
_08016128: .4byte gRoomHeader
_0801612C: .4byte 0x02002080
_08016130:
	ldr r1, _08016148
	ldr r0, [r2, #0x3c]
_08016134:
	str r0, [r1]
	ldr r2, _0801614C
	ldr r0, [r1]
	ldrh r1, [r0, #2]
	lsls r0, r1, #0x10
	orrs r0, r1
	str r0, [r2]
	ldr r1, _08016150
	ldr r0, _08016154
	b _08016186
	.align 2, 0
_08016148: .4byte 0x02002080
_0801614C: .4byte 0x02002088
_08016150: .4byte 0x02002084
_08016154: .4byte 0x0600F380
_08016158:
	ldr r2, _08016168
	ldrb r0, [r2, #0x17]
	cmp r0, #0
	bne _08016170
	ldr r1, _0801616C
	ldr r0, [r2, #0x38]
	b _08016174
	.align 2, 0
_08016168: .4byte gRoomHeader
_0801616C: .4byte 0x02002080
_08016170:
	ldr r1, _080161A4
	ldr r0, [r2, #0x3c]
_08016174:
	str r0, [r1]
	ldr r2, _080161A8
	ldr r0, [r1]
	ldrh r1, [r0, #2]
	lsls r0, r1, #0x10
	orrs r0, r1
	str r0, [r2]
	ldr r1, _080161AC
	ldr r0, _080161B0
_08016186:
	str r0, [r1]
	ldr r1, _080161B4
	movs r0, #0x1a
	str r0, [r1]
	ldr r1, _080161B8
	movs r0, #2
	str r0, [r1]
	ldr r1, _080161BC
	subs r0, #3
	str r0, [r1]
	ldr r1, _080161C0
	movs r0, #1
	str r0, [r1]
	b _080161C8
	.align 2, 0
_080161A4: .4byte 0x02002080
_080161A8: .4byte 0x02002088
_080161AC: .4byte 0x02002084
_080161B0: .4byte 0x0600FB80
_080161B4: .4byte 0x02002074
_080161B8: .4byte 0x02002078
_080161BC: .4byte 0x0200207C
_080161C0: .4byte dword_2001470
_080161C4:
	.2byte 0xEE00, 0xEE00
_080161C8:
	pop {r0}
	bx r0


	.thumb
	.global sub_080161CC
sub_080161CC: @ 0x080161CC
	push {r4, lr}
	adds r2, r0, #0
	ldr r1, _080161E4
	movs r0, #0
	strb r0, [r1]
	cmp r2, #1
	beq _0801627C
	cmp r2, #1
	bgt _080161E8
	cmp r2, #0
	beq _080161F6
	b _08016408
	.align 2, 0
_080161E4: .4byte dword_200146C
_080161E8:
	cmp r2, #2
	bne _080161EE
	b _08016300
_080161EE:
	cmp r2, #3
	bne _080161F4
	b _08016388
_080161F4:
	b _08016408
_080161F6:
	ldr r1, _08016204
	ldrb r0, [r1, #0x14]
	cmp r0, #0
	bne _08016208
	ldr r3, [r1, #0x38]
	b _0801620A
	.align 2, 0
_08016204: .4byte gRoomHeader
_08016208:
	ldr r3, [r1, #0x3c]
_0801620A:
	ldrh r1, [r3, #2]
	lsls r0, r1, #0x10
	orrs r0, r1
	ldr r4, _08016238
	ldrb r2, [r3]
	ldrb r1, [r3, #1]
	muls r2, r1, r2
	asrs r2, r2, #1
	adds r1, r4, #0
	bl DmaFill32
	ldr r0, _0801623C
	adds r0, #0x5c
	ldrb r0, [r0]
	cmp r0, #0
	beq _08016244
	ldr r0, _08016240
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	b _08016254
	.align 2, 0
_08016238: .4byte 0x0600E380
_0801623C: .4byte gRoomHeader
_08016240: .4byte 0x04000010
_08016244:
	ldr r1, _08016268
	ldr r0, _0801626C
	ldrb r0, [r0]
	strh r0, [r1]
	adds r1, #2
	ldr r0, _08016270
	ldrb r0, [r0]
	strh r0, [r1]
_08016254:
	ldr r2, _08016274
	ldr r0, _08016278
	ldrh r1, [r2]
	ldrh r0, [r0]
	ands r0, r1
	strh r0, [r2]
	subs r2, #0x48
	ldrh r0, [r2]
	movs r1, #3
	b _0801636E
	.align 2, 0
_08016268: .4byte 0x04000010
_0801626C: .4byte gBGOffsetHorizontal
_08016270: .4byte gBGOffsetVertical
_08016274: .4byte 0x04000050
_08016278: .4byte gColorSpecEffectsSel
_0801627C:
	ldr r1, _08016288
	ldrb r0, [r1, #0x15]
	cmp r0, #0
	bne _0801628C
	ldr r3, [r1, #0x38]
	b _0801628E
	.align 2, 0
_08016288: .4byte gRoomHeader
_0801628C:
	ldr r3, [r1, #0x3c]
_0801628E:
	ldrh r1, [r3, #2]
	lsls r0, r1, #0x10
	orrs r0, r1
	ldr r4, _080162BC
	ldrb r2, [r3]
	ldrb r1, [r3, #1]
	muls r2, r1, r2
	asrs r2, r2, #1
	adds r1, r4, #0
	bl DmaFill32
	ldr r0, _080162C0
	adds r0, #0x5d
	ldrb r0, [r0]
	cmp r0, #0
	beq _080162C8
	ldr r0, _080162C4
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	b _080162D8
	.align 2, 0
_080162BC: .4byte 0x0600EB80
_080162C0: .4byte gRoomHeader
_080162C4: .4byte 0x04000014
_080162C8:
	ldr r1, _080162EC
	ldr r0, _080162F0
	ldrb r0, [r0]
	strh r0, [r1]
	adds r1, #2
	ldr r0, _080162F4
	ldrb r0, [r0]
	strh r0, [r1]
_080162D8:
	ldr r2, _080162F8
	ldr r0, _080162FC
	ldrh r1, [r2]
	ldrh r0, [r0]
	ands r0, r1
	strh r0, [r2]
	subs r2, #0x46
	ldrh r0, [r2]
	movs r1, #2
	b _0801636E
	.align 2, 0
_080162EC: .4byte 0x04000014
_080162F0: .4byte gBGOffsetHorizontal
_080162F4: .4byte gBGOffsetVertical
_080162F8: .4byte 0x04000050
_080162FC: .4byte gColorSpecEffectsSel
_08016300:
	ldr r1, _0801630C
	ldrb r0, [r1, #0x16]
	cmp r0, #0
	bne _08016310
	ldr r3, [r1, #0x38]
	b _08016312
	.align 2, 0
_0801630C: .4byte gRoomHeader
_08016310:
	ldr r3, [r1, #0x3c]
_08016312:
	ldrh r1, [r3, #2]
	lsls r0, r1, #0x10
	orrs r0, r1
	ldr r4, _08016340
	ldrb r2, [r3]
	ldrb r1, [r3, #1]
	muls r2, r1, r2
	asrs r2, r2, #1
	adds r1, r4, #0
	bl DmaFill32
	ldr r0, _08016344
	adds r0, #0x5e
	ldrb r0, [r0]
	cmp r0, #0
	beq _0801634C
	ldr r0, _08016348
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	b _0801635C
	.align 2, 0
_08016340: .4byte 0x0600F380
_08016344: .4byte gRoomHeader
_08016348: .4byte 0x04000018
_0801634C:
	ldr r1, _08016374
	ldr r0, _08016378
	ldrb r0, [r0]
	strh r0, [r1]
	adds r1, #2
	ldr r0, _0801637C
	ldrb r0, [r0]
	strh r0, [r1]
_0801635C:
	ldr r2, _08016380
	ldr r0, _08016384
	ldrh r1, [r2]
	ldrh r0, [r0]
	ands r0, r1
	strh r0, [r2]
	subs r2, #0x44
	ldrh r0, [r2]
	movs r1, #1
_0801636E:
	orrs r0, r1
	strh r0, [r2]
	b _0801640C
	.align 2, 0
_08016374: .4byte 0x04000018
_08016378: .4byte gBGOffsetHorizontal
_0801637C: .4byte gBGOffsetVertical
_08016380: .4byte 0x04000050
_08016384: .4byte gColorSpecEffectsSel
_08016388:
	ldr r1, _08016394
	ldrb r0, [r1, #0x17]
	cmp r0, #0
	bne _08016398
	ldr r3, [r1, #0x38]
	b _0801639A
	.align 2, 0
_08016394: .4byte gRoomHeader
_08016398:
	ldr r3, [r1, #0x3c]
_0801639A:
	ldrh r1, [r3, #2]
	lsls r0, r1, #0x10
	orrs r0, r1
	ldr r4, _080163C8
	ldrb r2, [r3]
	ldrb r1, [r3, #1]
	muls r2, r1, r2
	asrs r2, r2, #1
	adds r1, r4, #0
	bl DmaFill32
	ldr r0, _080163CC
	adds r0, #0x5f
	ldrb r0, [r0]
	cmp r0, #0
	beq _080163D4
	ldr r0, _080163D0
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	b _080163E4
	.align 2, 0
_080163C8: .4byte 0x0600FB80
_080163CC: .4byte gRoomHeader
_080163D0: .4byte 0x0400001C
_080163D4:
	ldr r1, _080163F4
	ldr r0, _080163F8
	ldrb r0, [r0]
	strh r0, [r1]
	adds r1, #2
	ldr r0, _080163FC
	ldrb r0, [r0]
	strh r0, [r1]
_080163E4:
	ldr r2, _08016400
	ldr r0, _08016404
	ldrh r1, [r2]
	ldrh r0, [r0]
	ands r0, r1
	strh r0, [r2]
	b _0801640C
	.align 2, 0
_080163F4: .4byte 0x0400001C
_080163F8: .4byte gBGOffsetHorizontal
_080163FC: .4byte gBGOffsetVertical
_08016400: .4byte 0x04000050
_08016404: .4byte gColorSpecEffectsSel
_08016408:
	.2byte 0xEE00, 0xEE00
_0801640C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

    .thumb
	.global RoomObjPaletteToVram
RoomObjPaletteToVram: @ 0x08016414
	push {lr}
	ldr r1, _0801642C
	lsls r0, r0, #3
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r0, [r0, #0x44]
	ldr r1, _08016430
	movs r2, #0x80
	bl DmaTransfer32
	pop {r0}
	bx r0
	.align 2, 0
_0801642C: .4byte 0x080CF4EC
_08016430: .4byte 0x05000200

