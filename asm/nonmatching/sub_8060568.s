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
