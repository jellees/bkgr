
    .syntax unified

    .text

    .thumb
	.global sub_8024200
sub_8024200: @ 0x08024200
	push {r4, r5, lr}
	ldr r5, _08024218
	ldrb r0, [r5]
	cmp r0, #3
	bne _0802420C
	b _0802436A
_0802420C:
	cmp r0, #3
	bgt _0802421C
	cmp r0, #0
	beq _08024222
	b _080243D0
	.align 2, 0
_08024218: .4byte gMenuId
_0802421C:
	cmp r0, #7
	beq _080242A8
	b _080243D0
_08024222:
	bl GetCurrentMenuEntry
	cmp r0, #0
	beq _08024230
	cmp r0, #1
	beq _08024264
	b _080243D0
_08024230:
	movs r0, #2
	movs r1, #2
	bl FadeOutObjects
	ldr r2, _0802425C
	ldrh r0, [r2]
	movs r1, #3
	orrs r0, r1
	strh r0, [r2]
	bl sub_80254E0
	bl sub_8026D84
	movs r0, #2
	bl sub_805E1DC
	movs r0, #0
	bl SetTextSpriteCount
	ldr r1, _08024260
	movs r0, #1
	b _080243C8
	.align 2, 0
_0802425C: .4byte 0x0400000A
_08024260: .4byte byte_20021F9
_08024264:
	movs r0, #2
	movs r1, #2
	bl FadeOutObjects
	ldr r0, _08024284
	ldrh r1, [r0]
	movs r2, #3
	orrs r1, r2
	strh r1, [r0]
	bl sub_080246C8
	adds r4, r0, #0
	cmp r4, #0
	beq _08024288
_08024280:
	movs r0, #1
	b _080243D2
	.align 2, 0
_08024284: .4byte 0x0400000A
_08024288:
	ldr r0, _080242A0
	ldrb r1, [r0]
	movs r0, #0
	bl InitMenu
	strb r4, [r5]
	ldr r1, _080242A4
	movs r0, #0xff
	strb r0, [r1]
	bl AdvanceMenuEntryDown
	b _080243D0
	.align 2, 0
_080242A0: .4byte 0x02000320
_080242A4: .4byte gMenuParentId
_080242A8:
	bl GetCurrentMenuEntry
	adds r5, r0, #0
	cmp r5, #1
	beq _080242FA
	cmp r5, #1
	bgt _080242BC
	cmp r5, #0
	beq _080242C2
	b _080243D0
_080242BC:
	cmp r5, #2
	beq _08024332
	b _080243D0
_080242C2:
	ldr r0, _080242E8
	ldrb r0, [r0]
	cmp r0, #0
	bne _08024280
	ldr r4, _080242EC
	movs r0, #0
	bl sub_08044C00
	strb r0, [r4]
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080242F4
	bl sub_8038A34
	bl sub_803FE78
	ldr r0, _080242F0
	str r5, [r0]
	b _08024280
	.align 2, 0
_080242E8: .4byte byte_20021F9
_080242EC: .4byte 0x020010AE
_080242F0: .4byte dword_203F4DC
_080242F4:
	.2byte 0xEE00, 0xEE00
	b _08024280
_080242FA:
	ldr r0, _08024320
	ldrb r0, [r0]
	cmp r0, #0
	bne _08024280
	ldr r4, _08024324
	movs r0, #1
	bl sub_08044C00
	strb r0, [r4]
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0802432C
	bl sub_8038A34
	bl sub_803FE78
	ldr r0, _08024328
	str r5, [r0]
	b _08024280
	.align 2, 0
_08024320: .4byte byte_20021F9
_08024324: .4byte 0x020010AE
_08024328: .4byte dword_203F4DC
_0802432C:
	.2byte 0xEE00, 0xEE00
	b _08024280
_08024332:
	ldr r0, _08024358
	ldrb r0, [r0]
	cmp r0, #0
	bne _08024280
	ldr r4, _0802435C
	movs r0, #2
	bl sub_08044C00
	strb r0, [r4]
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08024364
	bl sub_8038A34
	bl sub_803FE78
	ldr r0, _08024360
	str r5, [r0]
	b _08024280
	.align 2, 0
_08024358: .4byte byte_20021F9
_0802435C: .4byte 0x020010AE
_08024360: .4byte dword_203F4DC
_08024364:
	.2byte 0xEE00, 0xEE00
	b _08024280
_0802436A:
	bl GetCurrentMenuEntry
	cmp r0, #4
	bhi _080243D0
	lsls r0, r0, #2
	ldr r1, _0802437C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0802437C: .4byte 0x08024380
_08024380: @ jump table
	.4byte _08024394 @ case 0
	.4byte _080243A0 @ case 1
	.4byte _080243AC @ case 2
	.4byte _080243B8 @ case 3
	.4byte _080243C4 @ case 4
_08024394:
	ldr r1, _0802439C
	movs r0, #0
	b _080243C8
	.align 2, 0
_0802439C: .4byte 0x02000320
_080243A0:
	ldr r1, _080243A8
	movs r0, #1
	b _080243C8
	.align 2, 0
_080243A8: .4byte 0x02000320
_080243AC:
	ldr r1, _080243B4
	movs r0, #2
	b _080243C8
	.align 2, 0
_080243B4: .4byte 0x02000320
_080243B8:
	ldr r1, _080243C0
	movs r0, #3
	b _080243C8
	.align 2, 0
_080243C0: .4byte 0x02000320
_080243C4:
	ldr r1, _080243CC
	movs r0, #4
_080243C8:
	strb r0, [r1]
	b _08024280
	.align 2, 0
_080243CC: .4byte 0x02000320
_080243D0:
	movs r0, #0
_080243D2:
	pop {r4, r5}
	pop {r1}
	bx r1

    .thumb
	.global exec_press_start_screen
exec_press_start_screen: @ 0x080243D8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x7c
	bl EnableDisplay
	ldr r0, _080245F0
	movs r7, #0
	strh r7, [r0]
	adds r0, #4
	strh r7, [r0]
	subs r0, #0xa
	strh r7, [r0]
	adds r0, #2
	strh r7, [r0]
	subs r0, #4
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r2, #0
	strh r1, [r0]
	adds r0, #6
	strh r1, [r0]
	movs r0, #0x22
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl SetupRoom
	ldr r0, _080245F4
	ldrh r0, [r0]
	ldr r1, _080245F8
	ldrh r1, [r1]
	ldr r2, _080245FC
	ldrh r2, [r2]
	ldr r3, _08024600
	ldrh r3, [r3]
	movs r4, #0x15
	str r4, [sp]
	movs r5, #0x20
	str r5, [sp, #4]
	bl sub_8013A10
	bl EnableBGAlphaBlending
	ldr r2, _08024604
	ldrh r1, [r2]
	ldr r0, _08024608
	ands r0, r1
	strh r0, [r2]
	movs r0, #0x80
	lsls r0, r0, #4
	movs r1, #0xe0
	lsls r1, r1, #7
	movs r3, #0x80
	lsls r3, r3, #1
	movs r2, #0x20
	bl sub_8026D20
	ldr r0, _0802460C
	movs r1, #0
	movs r2, #0
	bl sub_8026E48
	movs r0, #0xa
	bl init_function
	add r1, sp, #0x1c
	ldr r0, _08024610
	str r0, [r1, #4]
	movs r2, #0xf0
	strh r2, [r1, #8]
	movs r0, #1
	strb r0, [r1, #0xa]
	movs r0, #0xa
	strh r0, [r1, #0xe]
	movs r2, #1
	strb r2, [r1, #0x10]
	movs r0, #6
	strb r0, [r1, #0x11]
	strb r7, [r1, #0x12]
	strb r7, [r1, #0x13]
	add r0, sp, #0x30
	movs r1, #0xa9
	strb r1, [r0]
	strb r5, [r0, #1]
	movs r1, #0x26
	strb r1, [r0, #2]
	strb r5, [r0, #3]
	movs r1, #0x28
	strb r1, [r0, #4]
	movs r1, #0x50
	strb r1, [r0, #5]
	movs r1, #0x29
	strb r1, [r0, #6]
	strb r5, [r0, #7]
	movs r1, #0x32
	strb r1, [r0, #8]
	movs r1, #0x30
	strb r1, [r0, #9]
	strb r1, [r0, #0xa]
	movs r1, #0x33
	strb r1, [r0, #0xb]
	strb r5, [r0, #0xc]
	movs r2, #0x52
	strb r2, [r0, #0xd]
	movs r4, #0x41
	strb r4, [r0, #0xe]
	strb r2, [r0, #0xf]
	movs r3, #0x45
	strb r3, [r0, #0x10]
	strb r5, [r0, #0x11]
	movs r6, #0x4c
	strb r6, [r0, #0x12]
	movs r1, #0x49
	mov r8, r1
	mov r1, r8
	strb r1, [r0, #0x13]
	movs r1, #0x4d
	strb r1, [r0, #0x14]
	mov r1, r8
	strb r1, [r0, #0x15]
	movs r1, #0x54
	mov sl, r1
	mov r1, sl
	strb r1, [r0, #0x16]
	strb r3, [r0, #0x17]
	movs r1, #0x44
	mov sb, r1
	mov r1, sb
	strb r1, [r0, #0x18]
	movs r1, #0x2e
	mov ip, r1
	mov r1, ip
	strb r1, [r0, #0x19]
	movs r1, #0xff
	strb r1, [r0, #0x1a]
	add r0, sp, #0x4c
	strb r4, [r0]
	strb r6, [r0, #1]
	strb r6, [r0, #2]
	strb r5, [r0, #3]
	strb r2, [r0, #4]
	mov r1, r8
	strb r1, [r0, #5]
	movs r1, #0x47
	strb r1, [r0, #6]
	movs r1, #0x48
	strb r1, [r0, #7]
	mov r1, sl
	strb r1, [r0, #8]
	movs r4, #0x53
	strb r4, [r0, #9]
	strb r5, [r0, #0xa]
	strb r2, [r0, #0xb]
	strb r3, [r0, #0xc]
	strb r4, [r0, #0xd]
	strb r3, [r0, #0xe]
	strb r2, [r0, #0xf]
	movs r1, #0x56
	strb r1, [r0, #0x10]
	strb r3, [r0, #0x11]
	mov r2, sb
	strb r2, [r0, #0x12]
	mov r1, ip
	strb r1, [r0, #0x13]
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r0, #0x14]
	add r0, sp, #0x64
	strb r6, [r0]
	mov r2, r8
	strb r2, [r0, #1]
	movs r1, #0x43
	strb r1, [r0, #2]
	strb r3, [r0, #3]
	movs r2, #0x4e
	strb r2, [r0, #4]
	strb r4, [r0, #5]
	strb r3, [r0, #6]
	mov r1, sb
	strb r1, [r0, #7]
	strb r5, [r0, #8]
	movs r1, #0x42
	strb r1, [r0, #9]
	movs r1, #0x59
	strb r1, [r0, #0xa]
	strb r5, [r0, #0xb]
	strb r2, [r0, #0xc]
	mov r1, r8
	strb r1, [r0, #0xd]
	strb r2, [r0, #0xe]
	mov r1, sl
	strb r1, [r0, #0xf]
	strb r3, [r0, #0x10]
	strb r2, [r0, #0x11]
	mov r2, sb
	strb r2, [r0, #0x12]
	movs r1, #0x4f
	strb r1, [r0, #0x13]
	subs r1, #0x50
	strb r1, [r0, #0x14]
	add r1, sp, #8
	movs r0, #0xfe
	strb r0, [r1, #0x10]
	adds r0, r1, #0
	strb r7, [r0, #0x12]
	movs r0, #2
	strb r0, [r1, #0xa]
	adds r0, r1, #0
	movs r1, #0xf0
	strh r1, [r0, #8]
	movs r2, #1
	strh r2, [r0, #0xe]
	movs r1, #0
	strh r1, [r0, #0xc]
	movs r2, #6
	strb r2, [r0, #0x11]
	ldr r0, _08024610
	adds r0, #0x10
	str r0, [sp, #0xc]
	ldr r0, _08024614
	mov r8, r0
	add r1, sp, #8
	bl sub_8025870
	mov sl, r0
	movs r1, #0
	mov sb, r1
	ldr r6, _08024618
	add r5, sp, #8
	ldr r7, _0802461C
_080245AA:
	ldr r0, _08024620
	adds r1, r7, #0
	ldr r2, _08024624
	bl ReadKeys
	ldrh r1, [r7]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	bne _080245C6
	movs r4, #1
	ands r4, r1
	cmp r4, #0
	beq _0802463C
_080245C6:
	ldr r0, _08024628
	ldrb r0, [r0]
	cmp r0, #0xff
	bne _0802462C
	movs r0, #2
	movs r1, #2
	bl FadeOutObjects
	ldr r0, _08024604
	ldrh r1, [r0]
	movs r2, #3
	orrs r1, r2
	strh r1, [r0]
	movs r0, #0
	bl SetTextSpriteCount
	bl exec_language_select_screen
	movs r2, #1
	mov sb, r2
	b _080246AC
	.align 2, 0
_080245F0: .4byte 0x04000028
_080245F4: .4byte 0x0200145C
_080245F8: .4byte 0x0200145E
_080245FC: .4byte 0x02001460
_08024600: .4byte 0x02001462
_08024604: .4byte 0x0400000A
_08024608: .4byte 0x0000FFFC
_0802460C: .4byte 0x00000FFF
_08024610: .4byte 0x080B01A8
_08024614: .4byte 0x08065210
_08024618: .4byte gOAMBuffer1
_0802461C: .4byte gKeysDown
_08024620: .4byte gKeysPressed
_08024624: .4byte gPreviousKeys
_08024628: .4byte 0x02000320
_0802462C:
	movs r0, #2
	movs r1, #0
	bl FadeOutObjects
	movs r0, #0
	bl SetTextSpriteCount
	b _080246AC
_0802463C:
	bl call_functions
	movs r0, #0
	bl SetTextSpriteCount
	movs r0, #0xaa
	adds r1, r6, #0
	movs r2, #0x80
	lsls r2, r2, #1
	bl DmaFill32
	ldr r0, _08024694
	str r6, [r0]
	ldr r0, _08024698
	ldr r1, _0802469C
	str r1, [r0]
	ldr r1, _080246A0
	ldr r0, _080246A4
	str r0, [r1]
	ldr r0, _080246A8
	str r4, [r0]
	movs r0, #0xf0
	mov r2, sl
	subs r0, r0, r2
	asrs r0, r0, #1
	strh r0, [r5]
	movs r0, #0x80
	strh r0, [r5, #2]
	strh r4, [r5, #0xc]
	add r0, sp, #8
	mov r1, r8
	bl AddStringToBuffer
	bl RenderText
	bl CheckStacks
	bl SyncVblank
	bl UpdateVideo
	bl SkipVblank
	b _080245AA
	.align 2, 0
_08024694: .4byte gOAMBufferFramePtr
_08024698: .4byte gOAMBufferEnd
_0802469C: .4byte gOAMBufferFramePtr
_080246A0: .4byte gOBJTileFramePtr
_080246A4: .4byte 0x06010000
_080246A8: .4byte gOBJTileCount
_080246AC:
	bl SyncVblank
	bl SkipVblank
	mov r0, sb
	add sp, #0x7c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

    .thumb
sub_080246C8: @ 0x080246C8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	mov r1, sp
	movs r3, #0
	movs r0, #0xfe
	strb r0, [r1, #0x10]
	mov r0, sp
	strb r3, [r0, #0x12]
	movs r2, #1
	strb r2, [r0, #0xa]
	movs r0, #0xf0
	strh r0, [r1, #8]
	mov r0, sp
	strh r2, [r0, #0xe]
	strh r3, [r0, #0xc]
	movs r0, #6
	strb r0, [r1, #0x11]
	ldr r0, _0802470C
	str r0, [sp, #4]
	movs r7, #0
	ldr r0, _08024710
	ldrb r0, [r0]
	cmp r0, #4
	bhi _0802474E
	lsls r0, r0, #2
	ldr r1, _08024714
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0802470C: .4byte 0x080B01B8
_08024710: .4byte 0x02000320
_08024714: .4byte 0x08024718
_08024718: @ jump table
	.4byte _0802472C @ case 0
	.4byte _08024734 @ case 1
	.4byte _08024744 @ case 2
	.4byte _0802473C @ case 3
	.4byte _0802474C @ case 4
_0802472C:
	ldr r7, _08024730
	b _0802474E
	.align 2, 0
_08024730: .4byte 0x08068048
_08024734:
	ldr r7, _08024738
	b _0802474E
	.align 2, 0
_08024738: .4byte 0x080680D4
_0802473C:
	ldr r7, _08024740
	b _0802474E
	.align 2, 0
_08024740: .4byte 0x0806817C
_08024744:
	ldr r7, _08024748
	b _0802474E
	.align 2, 0
_08024748: .4byte 0x08068238
_0802474C:
	ldr r7, _08024780
_0802474E:
	adds r0, r7, #0
	mov r1, sp
	bl sub_8025870
	str r0, [sp, #0x14]
	ldr r0, _08024784
	ldrb r1, [r0]
	movs r0, #7
	bl InitMenu
	ldr r2, _08024788
	ldr r1, _0802478C
	ldrb r0, [r1]
	strb r0, [r2]
	movs r0, #7
	strb r0, [r1]
	ldr r1, _08024790
	ldrb r0, [r1, #7]
	cmp r0, #0
	bne _08024794
	movs r0, #0
	bl SetMenuEntry
	b _080247B4
	.align 2, 0
_08024780: .4byte 0x080682D0
_08024784: .4byte 0x02000320
_08024788: .4byte gMenuParentId
_0802478C: .4byte gMenuId
_08024790: .4byte gSaveFiles
_08024794:
	ldrb r0, [r1, #0xf]
	cmp r0, #0
	bne _080247A2
	movs r0, #1
	bl SetMenuEntry
	b _080247B4
_080247A2:
	ldrb r0, [r1, #0x17]
	cmp r0, #0
	bne _080247B0
	movs r0, #2
	bl SetMenuEntry
	b _080247B4
_080247B0:
	.2byte 0xEE00, 0xEE00
_080247B4:
	movs r0, #0
	bl SetTextSpriteCount
	ldr r4, _08024840
	movs r2, #0x80
	lsls r2, r2, #1
	movs r0, #0xaa
	adds r1, r4, #0
	bl DmaFill32
	ldr r0, _08024844
	str r4, [r0]
	ldr r0, _08024848
	movs r1, #0x80
	lsls r1, r1, #3
	adds r5, r4, r1
	str r5, [r0]
	ldr r1, _0802484C
	ldr r0, _08024850
	str r0, [r1]
	ldr r1, _08024854
	movs r0, #0
	str r0, [r1]
	bl SetObjectsFullAlpha
	movs r2, #1
	str r2, [sp, #0x18]
	bl SyncVblank
	bl SkipVblank
	ldr r6, _08024858
	ldr r3, _0802485C
	adds r3, r3, r6
	mov sl, r3
	ldr r0, _08024860
	mov r8, r0
	mov sb, r4
_08024800:
	ldr r0, _08024864
	mov r1, r8
	ldr r2, _08024868
	bl ReadKeys
	mov r2, r8
	ldrh r1, [r2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0802481E
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08024870
_0802481E:
	bl sub_8024200
	cmp r0, #0
	beq _0802488A
	ldr r0, _0802486C
	movs r1, #0
	bl sub_80270AC
	movs r0, #2
	bl sub_805E1DC
	movs r0, #0
	bl SetTextSpriteCount
	movs r0, #1
	b _080249D4
	.align 2, 0
_08024840: .4byte gOAMBuffer1
_08024844: .4byte gOAMBufferFramePtr
_08024848: .4byte gOAMBufferEnd
_0802484C: .4byte gOBJTileFramePtr
_08024850: .4byte 0x06010000
_08024854: .4byte gOBJTileCount
_08024858: .4byte 0x080CE440
_0802485C: .4byte 0x00000664
_08024860: .4byte gKeysDown
_08024864: .4byte gKeysPressed
_08024868: .4byte gPreviousKeys
_0802486C: .4byte 0x00000FFF
_08024870:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0802488A
	movs r0, #2
	movs r1, #0
	bl FadeOutObjects
	movs r0, #0
	bl SetTextSpriteCount
	movs r0, #0
	b _080249D4
_0802488A:
	mov r3, r8
	ldrh r1, [r3]
	ldr r2, _080248E0
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	bne _08024936
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080248F0
	ldr r0, _080248E4
	ldrb r0, [r0]
	cmp r0, #0
	beq _080248CA
	movs r3, #0xcc
	lsls r3, r3, #3
	adds r0, r6, r3
	ldrh r0, [r0]
	ldr r2, _080248E8
	adds r3, #2
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
_080248CA:
	ldr r4, _080248EC
_080248CC:
	bl AdvanceMenuEntryUp
	bl GetCurrentMenuEntry
	lsls r0, r0, #3
	adds r0, r0, r4
	ldrb r0, [r0, #7]
	cmp r0, #0
	bne _080248CC
	b _08024936
	.align 2, 0
_080248E0: .4byte 0x0000030F
_080248E4: .4byte byte_203EA89
_080248E8: .4byte byte_203EA8C
_080248EC: .4byte gSaveFiles
_080248F0:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08024936
	ldr r0, _080249B0
	ldrb r0, [r0]
	cmp r0, #0
	beq _08024922
	movs r1, #0xcc
	lsls r1, r1, #3
	adds r0, r6, r1
	ldrh r0, [r0]
	ldr r2, _080249B4
	ldr r3, _080249B8
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
_08024922:
	ldr r4, _080249BC
_08024924:
	bl AdvanceMenuEntryDown
	bl GetCurrentMenuEntry
	lsls r0, r0, #3
	adds r0, r0, r4
	ldrb r0, [r0, #7]
	cmp r0, #0
	bne _08024924
_08024936:
	bl call_functions
	movs r0, #0
	bl SetTextSpriteCount
	movs r0, #0xaa
	mov r1, sb
	movs r2, #0x80
	lsls r2, r2, #1
	bl DmaFill32
	ldr r0, _080249C0
	mov r1, sb
	str r1, [r0]
	ldr r0, _080249C4
	str r5, [r0]
	ldr r1, _080249C8
	ldr r0, _080249CC
	str r0, [r1]
	ldr r0, _080249D0
	movs r2, #0
	str r2, [r0]
	mov r1, sp
	movs r0, #0xf0
	ldr r3, [sp, #0x14]
	subs r0, r0, r3
	asrs r0, r0, #1
	strh r0, [r1]
	movs r0, #8
	strh r0, [r1, #2]
	mov r0, sp
	strh r2, [r0, #0xc]
	adds r1, r7, #0
	bl AddStringToBuffer
	bl FlushMenuToTextBuffer
	bl RenderText
	bl RenderMenuSprites
	bl CheckStacks
	bl SyncVblank
	bl UpdateVideo
	bl SkipVblank
	ldr r0, [sp, #0x18]
	cmp r0, #0
	bne _080249A0
	b _08024800
_080249A0:
	movs r0, #2
	movs r1, #0
	bl sub_08026BA8
	movs r1, #0
	str r1, [sp, #0x18]
	b _08024800
	.align 2, 0
_080249B0: .4byte byte_203EA89
_080249B4: .4byte byte_203EA8C
_080249B8: .4byte 0x00000662
_080249BC: .4byte gSaveFiles
_080249C0: .4byte gOAMBufferFramePtr
_080249C4: .4byte gOAMBufferEnd
_080249C8: .4byte gOBJTileFramePtr
_080249CC: .4byte 0x06010000
_080249D0: .4byte gOBJTileCount
_080249D4:
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

    .thumb
exec_language_select_screen: @ 0x080249E4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	movs r0, #3
	movs r1, #0
	bl InitMenu
	ldr r1, _08024AB4
	movs r0, #3
	strb r0, [r1]
	ldr r1, _08024AB8
	movs r0, #0xff
	strb r0, [r1]
	movs r0, #0
	bl SetTextSpriteCount
	ldr r4, _08024ABC
	movs r2, #0x80
	lsls r2, r2, #1
	movs r0, #0xaa
	adds r1, r4, #0
	bl DmaFill32
	ldr r0, _08024AC0
	str r4, [r0]
	ldr r0, _08024AC4
	movs r1, #0x80
	lsls r1, r1, #3
	adds r5, r4, r1
	str r5, [r0]
	ldr r1, _08024AC8
	ldr r0, _08024ACC
	str r0, [r1]
	ldr r1, _08024AD0
	movs r0, #0
	str r0, [r1]
	bl SetObjectsFullAlpha
	movs r2, #1
	mov sb, r2
	bl SyncVblank
	bl SkipVblank
	ldr r7, _08024AD4
	ldr r6, _08024AD8
	ldr r3, _08024ADC
	adds r3, r3, r6
	mov r8, r3
_08024A48:
	ldr r0, _08024AE0
	adds r1, r7, #0
	ldr r2, _08024AE4
	bl ReadKeys
	ldrh r1, [r7]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08024A64
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08024A6E
_08024A64:
	bl sub_8024200
	cmp r0, #0
	beq _08024A6E
	b _08024BA0
_08024A6E:
	ldrh r1, [r7]
	ldr r2, _08024AE8
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	bne _08024B2A
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08024AF4
	ldr r0, _08024AEC
	ldrb r0, [r0]
	cmp r0, #0
	beq _08024AAC
	movs r3, #0xcc
	lsls r3, r3, #3
	adds r0, r6, r3
	ldrh r0, [r0]
	ldr r2, _08024AF0
	adds r3, #2
	adds r1, r6, r3
	ldrb r2, [r2]
	adds r1, r1, r2
	ldrb r1, [r1]
	mov r3, r8
	ldr r2, [r3]
	movs r3, #0x80
	lsls r3, r3, #9
	adds r2, r2, r3
	bl audio_new_fx
_08024AAC:
	bl AdvanceMenuEntryUp
	b _08024B2A
	.align 2, 0
_08024AB4: .4byte gMenuId
_08024AB8: .4byte gMenuParentId
_08024ABC: .4byte gOAMBuffer1
_08024AC0: .4byte gOAMBufferFramePtr
_08024AC4: .4byte gOAMBufferEnd
_08024AC8: .4byte gOBJTileFramePtr
_08024ACC: .4byte 0x06010000
_08024AD0: .4byte gOBJTileCount
_08024AD4: .4byte gKeysDown
_08024AD8: .4byte 0x080CE440
_08024ADC: .4byte 0x00000664
_08024AE0: .4byte gKeysPressed
_08024AE4: .4byte gPreviousKeys
_08024AE8: .4byte 0x0000030F
_08024AEC: .4byte byte_203EA89
_08024AF0: .4byte byte_203EA8C
_08024AF4:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08024B2A
	ldr r0, _08024B80
	ldrb r0, [r0]
	cmp r0, #0
	beq _08024B26
	movs r1, #0xcc
	lsls r1, r1, #3
	adds r0, r6, r1
	ldrh r0, [r0]
	ldr r2, _08024B84
	ldr r3, _08024B88
	adds r1, r6, r3
	ldrb r2, [r2]
	adds r1, r1, r2
	ldrb r1, [r1]
	mov r3, r8
	ldr r2, [r3]
	movs r3, #0x80
	lsls r3, r3, #9
	adds r2, r2, r3
	bl audio_new_fx
_08024B26:
	bl AdvanceMenuEntryDown
_08024B2A:
	movs r0, #0
	bl SetTextSpriteCount
	movs r0, #0xaa
	adds r1, r4, #0
	movs r2, #0x80
	lsls r2, r2, #1
	bl DmaFill32
	ldr r0, _08024B8C
	str r4, [r0]
	ldr r0, _08024B90
	str r5, [r0]
	ldr r1, _08024B94
	ldr r0, _08024B98
	str r0, [r1]
	ldr r1, _08024B9C
	movs r0, #0
	str r0, [r1]
	bl FlushMenuToTextBuffer
	bl RenderText
	bl CheckStacks
	bl SyncVblank
	bl UpdateVideo
	bl SkipVblank
	mov r0, sb
	cmp r0, #0
	bne _08024B70
	b _08024A48
_08024B70:
	movs r0, #2
	movs r1, #0
	bl sub_08026BA8
	movs r1, #0
	mov sb, r1
	b _08024A48
	.align 2, 0
_08024B80: .4byte byte_203EA89
_08024B84: .4byte byte_203EA8C
_08024B88: .4byte 0x00000662
_08024B8C: .4byte gOAMBufferFramePtr
_08024B90: .4byte gOAMBufferEnd
_08024B94: .4byte gOBJTileFramePtr
_08024B98: .4byte 0x06010000
_08024B9C: .4byte gOBJTileCount
_08024BA0:
	movs r0, #2
	movs r1, #0
	bl FadeOutObjects
	movs r0, #0
	bl SetTextSpriteCount
	bl SyncVblank
	bl SkipVblank
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

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
