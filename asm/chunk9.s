
    .syntax unified

    .text

	.thumb
	.global sub_8025000
sub_8025000: @ 0x08025000
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	ldr r0, _08025038
	ldrb r0, [r0]
	cmp r0, #0
	beq _08025014
	b _08025258
_08025014:
	movs r4, #0
	movs r1, #0
	movs r7, #0
	ldr r5, _0802503C
	ldr r6, _08025040
	ldr r3, _08025044
_08025020:
	lsls r0, r7, #2
	adds r0, r0, r3
	ldr r2, [r0]
	ldrb r0, [r2]
	cmp r0, #0xfe
	beq _0802504E
	cmp r0, #0xfe
	bgt _08025048
	cmp r0, #0xfb
	beq _0802504E
	b _08025052
	.align 2, 0
_08025038: .4byte byte_20021F0
_0802503C: .4byte 0x02002200
_08025040: .4byte 0x020021FC
_08025044: .4byte 0x086AD314
_08025048:
	cmp r0, #0xff
	bne _08025052
	b _0802505A
_0802504E:
	adds r7, #1
	b _08025056
_08025052:
	adds r7, #1
	adds r1, #1
_08025056:
	cmp r4, #0
	beq _08025020
_0802505A:
	str r1, [r5]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	movs r1, #0x11
	movs r2, #4
	bl Alloc
	str r0, [r6]
	movs r7, #0
	ldr r0, [r5]
	cmp r7, r0
	bge _08025164
	adds r5, r6, #0
	movs r0, #0
	mov r8, r0
	movs r3, #1
	movs r4, #0
	ldr r6, _080250CC
	movs r1, #0xf0
	mov sb, r1
_08025084:
	ldr r2, [r6]
	movs r0, #0x24
	mov ip, r0
	ldrb r0, [r2]
	cmp r0, #0xfb
	bne _080250D4
	adds r6, #4
	ldr r2, [r6]
	ldr r0, [r5]
	adds r0, r4, r0
	adds r0, #0x24
	movs r1, #0xfe
	strb r1, [r0]
	ldr r0, [r5]
	adds r0, r4, r0
	adds r0, #0x26
	mov r1, r8
	strb r1, [r0]
	ldr r0, [r5]
	adds r0, r4, r0
	strb r3, [r0, #0x1e]
	ldr r0, [r5]
	adds r0, r4, r0
	mov r1, sb
	strh r1, [r0, #0x1c]
	strh r3, [r0, #0x22]
	mov r1, r8
	strh r1, [r0, #0x20]
	adds r0, #0x25
	movs r1, #6
	strb r1, [r0]
	ldr r0, [r5]
	adds r0, r4, r0
	ldr r1, _080250D0
	b _08025114
	.align 2, 0
_080250CC: .4byte 0x086AD314
_080250D0: .4byte 0x080B01B8
_080250D4:
	cmp r0, #0xfe
	bne _080250E0
	adds r6, #4
	ldr r2, [r6]
	movs r1, #0x46
	mov ip, r1
_080250E0:
	ldr r0, [r5]
	adds r0, r4, r0
	adds r0, #0x24
	strb r3, [r0]
	ldr r0, [r5]
	adds r0, r4, r0
	adds r0, #0x26
	mov r1, r8
	strb r1, [r0]
	ldr r0, [r5]
	adds r0, r4, r0
	strb r3, [r0, #0x1e]
	ldr r0, [r5]
	adds r0, r4, r0
	mov r1, sb
	strh r1, [r0, #0x1c]
	movs r1, #0xa
	strh r1, [r0, #0x22]
	mov r1, r8
	strh r1, [r0, #0x20]
	adds r0, #0x25
	movs r1, #6
	strb r1, [r0]
	ldr r0, [r5]
	adds r0, r4, r0
	ldr r1, _080251B8
_08025114:
	str r1, [r0, #0x18]
	ldr r0, [r5]
	adds r0, r4, r0
	strb r3, [r0]
	ldr r1, [r5]
	adds r1, r4, r1
	str r2, [r1, #0x10]
	mov r0, r8
	str r0, [r1, #8]
	mov r0, ip
	lsls r0, r0, #0x10
	str r0, [r1, #4]
	adds r1, #0x14
	adds r0, r2, #0
	str r3, [sp]
	bl sub_8025870
	ldr r1, [r5]
	adds r1, r4, r1
	strb r0, [r1, #1]
	ldr r1, [r5]
	adds r1, r4, r1
	ldrb r0, [r1, #1]
	mov r2, sb
	subs r0, r2, r0
	asrs r0, r0, #1
	strh r0, [r1, #0x14]
	movs r0, #0xaa
	strh r0, [r1, #0x16]
	movs r0, #0xaa
	lsls r0, r0, #0x10
	str r0, [r1, #0xc]
	adds r6, #4
	adds r4, #0x28
	adds r7, #1
	ldr r0, _080251BC
	ldr r0, [r0]
	ldr r3, [sp]
	cmp r7, r0
	blt _08025084
_08025164:
	ldr r1, _080251C0
	movs r0, #0xc0
	lsls r0, r0, #7
	str r0, [r1]
	ldr r3, _080251C4
	mov ip, r3
	mov r1, ip
	adds r1, #0x24
	movs r2, #0
	movs r0, #0xfe
	strb r0, [r1]
	mov r0, ip
	adds r0, #0x26
	strb r2, [r0]
	movs r1, #1
	mov r0, ip
	strb r1, [r0, #0x1e]
	movs r0, #0xf0
	strh r0, [r3, #0x1c]
	movs r3, #1
	mov r0, ip
	strh r1, [r0, #0x22]
	strh r2, [r0, #0x20]
	mov r1, ip
	adds r1, #0x25
	movs r0, #6
	strb r0, [r1]
	ldr r0, _080251C8
	mov r1, ip
	str r0, [r1, #0x18]
	strb r3, [r1]
	ldr r0, _080251CC
	ldrb r0, [r0]
	mov r4, ip
	cmp r0, #4
	bhi _0802520C
	lsls r0, r0, #2
	ldr r1, _080251D0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080251B8: .4byte 0x080B01B0
_080251BC: .4byte 0x02002200
_080251C0: .4byte 0x0200222C
_080251C4: .4byte 0x02002204
_080251C8: .4byte 0x080B01B8
_080251CC: .4byte 0x02000320
_080251D0: .4byte 0x080251D4
_080251D4: @ jump table
	.4byte _080251E8 @ case 0
	.4byte _080251F0 @ case 1
	.4byte _08025200 @ case 2
	.4byte _080251F8 @ case 3
	.4byte _08025208 @ case 4
_080251E8:
	ldr r0, _080251EC
	b _0802520A
	.align 2, 0
_080251EC: .4byte 0x0806844C
_080251F0:
	ldr r0, _080251F4
	b _0802520A
	.align 2, 0
_080251F4: .4byte 0x08068480
_080251F8:
	ldr r0, _080251FC
	b _0802520A
	.align 2, 0
_080251FC: .4byte 0x080684AC
_08025200:
	ldr r0, _08025204
	b _0802520A
	.align 2, 0
_08025204: .4byte 0x080684E0
_08025208:
	ldr r0, _08025268
_0802520A:
	str r0, [r4, #0x10]
_0802520C:
	movs r0, #0
	str r0, [r4, #8]
	str r0, [r4, #4]
	ldr r0, [r4, #0x10]
	adds r1, r4, #0
	adds r1, #0x14
	bl sub_8025870
	strb r0, [r4, #1]
	ldrb r1, [r4, #1]
	movs r0, #0xf0
	subs r0, r0, r1
	asrs r0, r0, #1
	strh r0, [r4, #0x14]
	movs r0, #0xaa
	strh r0, [r4, #0x16]
	movs r0, #0xaa
	lsls r0, r0, #0x10
	str r0, [r4, #0xc]
	ldr r1, _0802526C
	movs r0, #1
	strb r0, [r1]
	movs r0, #0xa
	movs r1, #0
	bl sub_080593D0
	ldr r0, _08025270
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802524E
	movs r0, #0xf
	bl audio_start_tune
_0802524E:
	ldr r0, _08025274
	movs r1, #1
	movs r2, #1
	bl sub_8026E48
_08025258:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08025268: .4byte 0x0806850C
_0802526C: .4byte byte_20021F0
_08025270: .4byte 0x0203EA88
_08025274: .4byte 0x00000FFF

    .thumb
    .global sub_8025278
sub_8025278: @ 0x08025278
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	ldr r0, _080252C0
	ldrb r0, [r0]
	cmp r0, #0
	beq _08025352
	ldr r0, _080252C4
	ldr r0, [r0]
	ldr r1, _080252C8
	ldr r1, [r1]
	bl CallARM_FX_Mul16
	adds r7, r0, #0
	movs r6, #1
	movs r5, #0
	ldr r0, _080252CC
	ldr r0, [r0]
	cmp r5, r0
	bge _08025314
	ldr r3, _080252D0
	movs r4, #0
_080252A2:
	ldr r0, [r3]
	adds r2, r4, r0
	ldrb r0, [r2]
	cmp r0, #0
	beq _08025308
	movs r6, #0
	ldr r0, [r2, #0xc]
	subs r1, r0, r7
	str r1, [r2, #0xc]
	ldr r0, _080252D4
	cmp r1, r0
	bgt _080252D8
	strb r6, [r2]
	b _08025308
	.align 2, 0
_080252C0: .4byte byte_20021F0
_080252C4: .4byte 0x0200222C
_080252C8: .4byte 0x020021F4
_080252CC: .4byte 0x02002200
_080252D0: .4byte 0x020021FC
_080252D4: .4byte 0xFFEE0000
_080252D8:
	asrs r0, r1, #0x10
	strh r0, [r2, #0x16]
	ldrb r1, [r2, #1]
	movs r0, #0xf0
	subs r0, r0, r1
	asrs r0, r0, #1
	strh r0, [r2, #0x14]
	strh r6, [r2, #0x20]
	adds r0, r2, #0
	adds r0, #0x14
	ldr r1, [r2, #0x10]
	str r3, [sp]
	bl AddStringToBuffer
	ldr r3, [sp]
	ldr r0, [r3]
	adds r1, r4, r0
	ldr r2, [r1, #8]
	ldr r0, [r1, #4]
	cmp r2, r0
	bge _08025308
	adds r0, r2, r7
	str r0, [r1, #8]
	b _08025314
_08025308:
	adds r4, #0x28
	adds r5, #1
	ldr r0, _0802535C
	ldr r0, [r0]
	cmp r5, r0
	blt _080252A2
_08025314:
	cmp r6, #0
	beq _08025352
	ldr r4, _08025360
	ldr r2, _08025364
	ldr r0, [r4, #0xc]
	ldr r1, [r2]
	subs r0, r0, r1
	str r0, [r4, #0xc]
	movs r1, #0x90
	lsls r1, r1, #0xf
	cmp r0, r1
	bgt _08025334
	movs r0, #0
	str r0, [r2]
	bl sub_805B278
_08025334:
	movs r1, #0xe
	ldrsh r0, [r4, r1]
	movs r2, #0
	strh r0, [r4, #0x16]
	ldrb r1, [r4, #1]
	movs r0, #0xf0
	subs r0, r0, r1
	asrs r0, r0, #1
	strh r0, [r4, #0x14]
	strh r2, [r4, #0x20]
	adds r0, r4, #0
	adds r0, #0x14
	ldr r1, [r4, #0x10]
	bl AddStringToBuffer
_08025352:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802535C: .4byte 0x02002200
_08025360: .4byte 0x02002204
_08025364: .4byte 0x0200222C

    .thumb
	.global sub_8025368
sub_8025368: @ 0x08025368
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	mov r1, sp
	movs r2, #0
	movs r0, #1
	strb r0, [r1, #0x10]
	mov r0, sp
	strb r2, [r0, #0x12]
	movs r0, #2
	strb r0, [r1, #0xa]
	movs r3, #0
	movs r0, #0xd0
	strh r0, [r1, #8]
	movs r0, #0xa
	strh r0, [r1, #0xe]
	mov r0, sp
	strh r2, [r0, #0xc]
	movs r0, #6
	strb r0, [r1, #0x11]
	ldr r0, _080253B4
	str r0, [sp, #4]
	mov r0, sp
	strb r3, [r0, #0x13]
	movs r5, #0
	ldr r0, _080253B8
	ldrb r0, [r0]
	cmp r0, #4
	bhi _080253F6
	lsls r0, r0, #2
	ldr r1, _080253BC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080253B4: .4byte 0x080B01B0
_080253B8: .4byte 0x02000320
_080253BC: .4byte 0x080253C0
_080253C0: @ jump table
	.4byte _080253D4 @ case 0
	.4byte _080253DC @ case 1
	.4byte _080253EC @ case 2
	.4byte _080253E4 @ case 3
	.4byte _080253F4 @ case 4
_080253D4:
	ldr r5, _080253D8
	b _080253F6
	.align 2, 0
_080253D8: .4byte 0x08068084
_080253DC:
	ldr r5, _080253E0
	b _080253F6
	.align 2, 0
_080253E0: .4byte 0x08068120
_080253E4:
	ldr r5, _080253E8
	b _080253F6
	.align 2, 0
_080253E8: .4byte 0x080681CC
_080253EC:
	ldr r5, _080253F0
	b _080253F6
	.align 2, 0
_080253F0: .4byte 0x08068274
_080253F4:
	ldr r5, _080254B0
_080253F6:
	bl SetObjectsFullAlpha
	movs r0, #1
	mov sb, r0
	movs r6, #3
	ldr r7, _080254B4
	movs r1, #0x80
	lsls r1, r1, #3
	adds r1, r1, r7
	mov sl, r1
	movs r0, #0
	mov r8, r0
	mov r4, sp
_08025410:
	movs r0, #0
	bl SetTextSpriteCount
	movs r0, #0xaa
	adds r1, r7, #0
	movs r2, #0x80
	lsls r2, r2, #1
	bl DmaFill32
	ldr r0, _080254B8
	str r7, [r0]
	ldr r0, _080254BC
	mov r1, sl
	str r1, [r0]
	ldr r1, _080254C0
	ldr r0, _080254C4
	str r0, [r1]
	ldr r0, _080254C8
	mov r1, r8
	str r1, [r0]
	movs r0, #0x10
	strh r0, [r4]
	movs r0, #0x3c
	strh r0, [r4, #2]
	strh r1, [r4, #0xc]
	mov r0, sp
	adds r1, r5, #0
	bl AddStringToBuffer
	bl RenderText
	bl CheckStacks
	bl SyncVblank
	bl update_video
	bl SkipVblank
	mov r0, sb
	cmp r0, #0
	beq _08025470
	movs r0, #2
	movs r1, #0
	bl sub_08026BA8
	movs r1, #0
	mov sb, r1
_08025470:
	subs r6, #1
	cmp r6, #0
	bne _08025410
	bl sub_80330F8
	ldr r0, _080254CC
	ldr r0, [r0]
	ldr r1, _080254D0
	ldrb r1, [r1]
	bl save_game
	ldr r0, _080254D4
	ldr r0, [r0]
	bl audio_set_tune_vol
	ldr r1, _080254D8
	movs r0, #1
	strb r0, [r1]
	ldr r0, _080254DC
	movs r1, #0
	bl sub_80271A4
	bl sub_800A594
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080254B0: .4byte 0x08068314
_080254B4: .4byte gOAMBuffer1
_080254B8: .4byte gOAMBufferFramePtr
_080254BC: .4byte gOAMBufferEnd
_080254C0: .4byte gOBJTileFramePtr
_080254C4: .4byte 0x06010000
_080254C8: .4byte gOBJTileCount
_080254CC: .4byte dword_203F4DC
_080254D0: .4byte byte_2000335
_080254D4: .4byte dVolumes
_080254D8: .4byte 0x0203EAD4
_080254DC: .4byte 0x00000FFF

    .thumb
    .global sub_80254E0
sub_80254E0: @ 0x080254E0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	mov r1, sp
	movs r2, #0
	movs r0, #1
	strb r0, [r1, #0x10]
	mov r0, sp
	strb r2, [r0, #0x12]
	movs r0, #4
	strb r0, [r1, #0xa]
	movs r3, #0
	movs r0, #0xdc
	strh r0, [r1, #8]
	movs r0, #0xa
	strh r0, [r1, #0xe]
	mov r0, sp
	strh r2, [r0, #0xc]
	movs r0, #6
	strb r0, [r1, #0x11]
	ldr r0, _0802552C
	str r0, [sp, #4]
	mov r0, sp
	strb r3, [r0, #0x13]
	movs r6, #0
	ldr r0, _08025530
	ldrb r0, [r0]
	cmp r0, #4
	bhi _0802558A
	lsls r0, r0, #2
	ldr r1, _08025534
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0802552C: .4byte 0x080B01B0
_08025530: .4byte 0x02000320
_08025534: .4byte 0x08025538
_08025538: @ jump table
	.4byte _0802554C @ case 0
	.4byte _08025554 @ case 1
	.4byte _08025564 @ case 2
	.4byte _0802555C @ case 3
	.4byte _08025588 @ case 4
_0802554C:
	ldr r6, _08025550
	b _0802558A
	.align 2, 0
_08025550: .4byte 0x0808D604
_08025554:
	ldr r6, _08025558
	b _0802558A
	.align 2, 0
_08025558: .4byte 0x0808DC20
_0802555C:
	ldr r6, _08025560
	b _0802558A
	.align 2, 0
_08025560: .4byte 0x0808E328
_08025564:
	ldr r6, _08025568
	b _0802558A
	.align 2, 0
_08025568: .4byte 0x0808E970
_0802556C:
	movs r0, #2
	movs r1, #0
	bl FadeOutObjects
	movs r0, #0
	bl SetTextSpriteCount
	ldr r1, _08025584
	movs r0, #1
	strb r0, [r1]
	b _08025684
	.align 2, 0
_08025584: .4byte byte_2000F55
_08025588:
	ldr r6, _08025654
_0802558A:
	bl SetObjectsFullAlpha
	movs r0, #1
	str r0, [sp, #0x14]
	movs r1, #0
	mov sb, r1
	mov sl, r1
	movs r5, #0xd2
	lsls r5, r5, #1
	ldr r7, _08025658
	ldr r0, _0802565C
	mov r8, r0
	mov r4, sp
_080255A4:
	ldr r0, _08025660
	adds r1, r7, #0
	ldr r2, _08025664
	bl ReadKeys
	ldr r0, _08025668
	ldrb r0, [r0]
	cmp r0, #0
	beq _080255C0
	ldrh r1, [r7]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0802556C
_080255C0:
	movs r0, #0
	bl SetTextSpriteCount
	movs r0, #0xaa
	mov r1, r8
	movs r2, #0x80
	lsls r2, r2, #1
	bl DmaFill32
	ldr r0, _0802566C
	mov r1, r8
	str r1, [r0]
	ldr r0, _08025670
	ldr r1, _08025674
	str r1, [r0]
	ldr r1, _08025678
	ldr r0, _0802567C
	str r0, [r1]
	ldr r1, _08025680
	movs r0, #0
	str r0, [r1]
	subs r5, #1
	cmp r5, #0
	beq _080255FA
	ldrh r1, [r7]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08025612
_080255FA:
	movs r5, #0xd2
	lsls r5, r5, #1
	movs r0, #2
	movs r1, #0
	bl FadeOutObjects
	movs r0, #1
	str r0, [sp, #0x14]
	ldrb r0, [r4, #0x13]
	cmp r0, #0
	bne _08025684
	mov sb, sl
_08025612:
	movs r0, #0xa
	strh r0, [r4]
	movs r0, #0x32
	strh r0, [r4, #2]
	mov r1, sb
	strh r1, [r4, #0xc]
	mov r0, sp
	adds r1, r6, #0
	bl AddStringToBuffer
	ldrh r0, [r4, #0xc]
	mov sl, r0
	bl RenderText
	bl CheckStacks
	bl SyncVblank
	bl update_video
	bl SkipVblank
	ldr r1, [sp, #0x14]
	cmp r1, #0
	beq _080255A4
	movs r0, #2
	movs r1, #0
	bl sub_08026BA8
	movs r0, #0
	str r0, [sp, #0x14]
	b _080255A4
	.align 2, 0
_08025654: .4byte 0x0808EFB0
_08025658: .4byte gKeysDown
_0802565C: .4byte gOAMBuffer1
_08025660: .4byte gKeysPressed
_08025664: .4byte gPreviousKeys
_08025668: .4byte byte_20021F8
_0802566C: .4byte gOAMBufferFramePtr
_08025670: .4byte gOAMBufferEnd
_08025674: .4byte gOAMBufferFramePtr
_08025678: .4byte gOBJTileFramePtr
_0802567C: .4byte 0x06010000
_08025680: .4byte gOBJTileCount
_08025684:
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

    .thumb
    .global SetSprite
SetSprite: @ 0x08025694
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r5, r2, #0
	ldr r4, [sp, #0x20]
	ldr r2, _080256E0
	lsls r0, r4, #2
	adds r0, r0, r2
	ldr r2, [r0]
	lsls r0, r1, #3
	adds r0, r0, r2
	ldr r7, [r0]
	ldr r0, [r0, #4]
	strb r0, [r6, #0x11]
	strb r4, [r6, #0x14]
	strb r5, [r6, #0xe]
	strb r3, [r6, #0xa]
	mov r0, sp
	ldrb r0, [r0, #0x14]
	strb r0, [r6, #0xb]
	strh r1, [r6]
	ldrb r0, [r7]
	strb r0, [r6, #3]
	ldr r1, [sp, #0x14]
	cmp r1, #0
	bne _080256E4
	cmp r5, #0
	bne _080256E4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _080256E4
	ldrb r1, [r6, #3]
	subs r1, #1
	movs r0, #0
	bl RandomMinMax
	b _080256E6
	.align 2, 0
_080256E0: .4byte 0x086AD304
_080256E4:
	movs r0, #0
_080256E6:
	strb r0, [r6, #2]
	ldrb r0, [r7, #1]
	movs r1, #0
	strb r0, [r6, #9]
	strb r1, [r6, #4]
	ldrh r0, [r7, #2]
	strh r0, [r6, #0xc]
	adds r0, r7, #4
	str r0, [r6, #0x18]
	ldrb r0, [r7, #0x10]
	strb r0, [r6, #5]
	ldr r0, [sp, #0x18]
	strh r0, [r6, #6]
	ldr r0, [sp, #0x1c]
	strb r0, [r6, #8]
	strb r1, [r6, #0x12]
	strb r1, [r6, #0x10]
	strb r1, [r6, #0x13]
	strb r1, [r6, #0xf]
	strb r1, [r6, #0x17]
	strb r1, [r6, #0x15]
	strb r1, [r6, #0x16]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

    .thumb
	.global sub_8025718
sub_8025718: @ 0x08025718
	push {r4, r5, r6, lr}
	mov r6, sl
	mov r5, sb
	mov r4, r8
	push {r4, r5, r6}
	adds r5, r0, #0
	adds r4, r1, #0
	mov r8, r2
	ldr r0, _08025790
	mov sb, r0
	adds r0, r4, #0
	adds r0, #0x40
	lsls r0, r0, #1
	add r0, sb
	movs r2, #0
	ldrsh r1, [r0, r2]
	mov sl, r1
	mov r0, sl
	mov r1, r8
	bl CallARM_FX_Mul8
	ldr r6, _08025794
	ldr r1, [r6]
	lsls r5, r5, #4
	adds r1, r5, r1
	str r0, [r1]
	lsls r4, r4, #1
	add r4, sb
	movs r0, #0
	ldrsh r4, [r4, r0]
	adds r0, r4, #0
	mov r1, r8
	bl CallARM_FX_Mul8
	ldr r1, [r6]
	adds r1, r5, r1
	str r0, [r1, #4]
	rsbs r4, r4, #0
	adds r0, r4, #0
	mov r1, r8
	bl CallARM_FX_Mul8
	ldr r1, [r6]
	adds r1, r5, r1
	str r0, [r1, #8]
	mov r0, sl
	mov r1, r8
	bl CallARM_FX_Mul8
	ldr r1, [r6]
	adds r5, r5, r1
	str r0, [r5, #0xc]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08025790: .4byte 0x080B1AE4
_08025794: .4byte gMatrices

    .thumb
    .global sub_8025798
sub_8025798: @ 0x08025798
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	ldr r0, _080257C4
	movs r4, #0
	strb r4, [r0]
	ldr r1, _080257C8
	ldr r2, _080257CC
	movs r0, #0
	bl DmaFill32
	ldr r0, _080257D0
	strb r4, [r0]
	ldr r0, _080257D4
	strb r4, [r0]
	ldr r0, _080257D8
	str r5, [r0]
	ldr r0, _080257DC
	strh r6, [r0]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080257C4: .4byte 0x02002230
_080257C8: .4byte 0x02002238
_080257CC: .4byte 0x00000302
_080257D0: .4byte 0x02002235
_080257D4: .4byte 0x02002236
_080257D8: .4byte 0x02002E40
_080257DC: .4byte 0x02002E44

    .thumb
    .global SetTextSpriteCount
SetTextSpriteCount: @ 0x080257E0
	push {lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r2, r0, #0
	ldr r3, _08025804
	ldrb r1, [r3]
	cmp r1, #0
	beq _080257FE
	cmp r0, r1
	beq _080257FE
	cmp r0, r1
	bls _080257FC
	.2byte 0xEE00, 0xEE00
_080257FC:
	strb r2, [r3]
_080257FE:
	pop {r0}
	bx r0
	.align 2, 0
_08025804: .4byte 0x02002230

    .thumb
sub_8025808: @ 0x08025808
	push {r4, r5, r6, lr}
	adds r3, r0, #0
	adds r5, r1, #0
	adds r4, r2, #0
	movs r2, #0
	ldrb r1, [r3]
	adds r0, r1, #0
	cmp r0, #0x20
	beq _08025866
	cmp r0, #0xfd
	beq _08025866
	cmp r0, #0xfe
	beq _08025866
	cmp r0, #0xff
	beq _08025866
	ldr r6, _0802583C
_08025828:
	cmp r1, #0xfc
	bne _08025840
	adds r3, #1
	ldrb r0, [r3]
	ldr r1, [r6]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrb r0, [r0, #2]
	b _0802584A
	.align 2, 0
_0802583C: .4byte 0x02002E40
_08025840:
	ldrb r0, [r3]
	lsls r0, r0, #2
	adds r0, r0, r5
	ldrh r0, [r0, #2]
	adds r0, r0, r4
_0802584A:
	adds r0, r2, r0
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	adds r3, #1
	ldrb r1, [r3]
	adds r0, r1, #0
	cmp r0, #0x20
	beq _08025866
	cmp r0, #0xfd
	beq _08025866
	cmp r0, #0xfe
	beq _08025866
	cmp r0, #0xff
	bne _08025828
_08025866:
	adds r0, r2, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

    .thumb
    .global sub_8025870
sub_8025870: @ 0x08025870
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r2, r0, #0
	movs r4, #0
	ldrh r0, [r1, #8]
	mov r8, r0
	ldrb r0, [r1, #0x11]
	mov ip, r0
	movs r0, #0x10
	ldrsb r0, [r1, r0]
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	ldr r0, [r1, #4]
	ldr r6, [r0, #4]
_0802588E:
	movs r3, #0
	ldrb r1, [r2]
	adds r0, r1, #0
	cmp r0, #0x20
	beq _080258E2
	cmp r0, #0xfd
	beq _080258E2
	cmp r0, #0xfe
	beq _080258E2
	cmp r0, #0xff
	beq _080258E2
	ldr r5, _080258B8
_080258A6:
	cmp r1, #0xfc
	bne _080258BC
	adds r2, #1
	ldrb r0, [r2]
	ldr r1, [r5]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrb r0, [r0, #2]
	b _080258C6
	.align 2, 0
_080258B8: .4byte 0x02002E40
_080258BC:
	ldrb r0, [r2]
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r0, [r0, #2]
	adds r0, r7, r0
_080258C6:
	adds r0, r3, r0
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	adds r2, #1
	ldrb r1, [r2]
	adds r0, r1, #0
	cmp r0, #0x20
	beq _080258E2
	cmp r0, #0xfd
	beq _080258E2
	cmp r0, #0xfe
	beq _080258E2
	cmp r0, #0xff
	bne _080258A6
_080258E2:
	adds r0, r4, r3
	cmp r0, r8
	bge _08025908
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldrb r0, [r2]
	cmp r0, #0x20
	bne _080258FC
	mov r1, ip
	adds r0, r4, r1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r2, #1
_080258FC:
	ldrb r0, [r2]
	adds r0, #3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bhi _0802588E
_08025908:
	adds r0, r4, #0
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

    .thumb
    .global RenderText
RenderText: @ 0x08025914
	push {r4, r5, r6, lr}
	ldr r1, _08025940
	ldrb r0, [r1]
	cmp r0, #0
	beq _0802593A
	movs r4, #0
	ldrb r0, [r1]
	cmp r4, r0
	bge _0802593A
	ldr r5, _08025944
	adds r6, r1, #0
_0802592A:
	adds r0, r5, #0
	bl sprite_render
	adds r5, #0x1c
	adds r4, #1
	ldrb r0, [r6]
	cmp r4, r0
	blt _0802592A
_0802593A:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08025940: .4byte 0x02002230
_08025944: .4byte 0x02002238

    .thumb
    .global sub_8025948
sub_8025948: @ 0x08025948
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	ldr r0, _08025998
	ldrb r0, [r0]
	cmp r0, #0
	beq _08025A08
	movs r5, #0
	ldr r0, _0802599C
	ldrb r1, [r0]
	cmp r5, r1
	bge _08025972
	ldr r4, _080259A0
	adds r6, r0, #0
_08025962:
	adds r0, r4, #0
	bl sprite_render
	adds r4, #0x1c
	adds r5, #1
	ldrb r0, [r6]
	cmp r5, r0
	blt _08025962
_08025972:
	ldr r1, _080259A4
	ldrb r0, [r1]
	cmp r0, #0
	beq _0802597E
	cmp r7, #0
	beq _080259B4
_0802597E:
	ldr r0, _080259A8
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _080259AC
	ldr r1, _080259B0
	ldrb r2, [r0]
	adds r3, r0, #0
	ldrb r1, [r1]
	cmp r2, r1
	bhs _080259BA
	adds r0, r2, #1
	strb r0, [r3]
	b _080259BA
	.align 2, 0
_08025998: .4byte 0x02002230
_0802599C: .4byte 0x02002231
_080259A0: .4byte 0x02002238
_080259A4: .4byte 0x02002236
_080259A8: .4byte 0x02002235
_080259AC: .4byte 0x02002233
_080259B0: .4byte 0x02002232
_080259B4:
	subs r0, #1
	strb r0, [r1]
	ldr r3, _08025A10
_080259BA:
	ldr r0, _08025A14
	ldrb r5, [r0]
	ldrb r1, [r3]
	cmp r5, r1
	bge _080259E0
	ldr r1, _08025A18
	lsls r0, r5, #3
	subs r0, r0, r5
	lsls r0, r0, #2
	adds r4, r0, r1
	adds r6, r3, #0
_080259D0:
	adds r0, r4, #0
	bl sprite_render
	adds r4, #0x1c
	adds r5, #1
	ldrb r0, [r6]
	cmp r5, r0
	blt _080259D0
_080259E0:
	ldr r0, _08025A1C
	ldrb r5, [r0]
	ldr r2, _08025A20
	ldrb r1, [r2]
	cmp r5, r1
	bge _08025A08
	ldr r1, _08025A18
	lsls r0, r5, #3
	subs r0, r0, r5
	lsls r0, r0, #2
	adds r4, r0, r1
	adds r6, r2, #0
_080259F8:
	adds r0, r4, #0
	bl sprite_render
	adds r4, #0x1c
	adds r5, #1
	ldrb r0, [r6]
	cmp r5, r0
	blt _080259F8
_08025A08:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08025A10: .4byte 0x02002233
_08025A14: .4byte 0x02002231
_08025A18: .4byte 0x02002238
_08025A1C: .4byte 0x02002232
_08025A20: .4byte 0x02002230

    .thumb
    .global AddStringToBuffer
AddStringToBuffer: @ 0x08025A24
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	adds r4, r0, #0
	str r1, [sp, #0x10]
	movs r0, #0
	mov sl, r0
	ldrh r1, [r4]
	str r1, [sp, #0x14]
	ldrh r0, [r4, #8]
	adds r0, r1, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x18]
	ldrh r0, [r4, #0xc]
	ldr r2, [sp, #0x10]
	adds r5, r2, r0
	ldrb r0, [r4, #0xa]
	cmp sl, r0
	blo _08025A54
	b _08025C1A
_08025A54:
	movs r1, #0
	mov r8, r1
_08025A58:
	ldr r0, [r4, #4]
	ldr r1, [r0, #4]
	movs r2, #0x10
	ldrsb r2, [r4, r2]
	adds r0, r5, #0
	bl sub_8025808
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r2, [r4]
	adds r0, r0, r2
	ldr r1, [sp, #0x18]
	cmp r0, r1
	blt _08025A76
	b _08025BE8
_08025A76:
	ldrb r0, [r5]
	cmp r0, #0x20
	bne _08025A7E
	b _08025B92
_08025A7E:
	cmp r0, #0xfd
	bne _08025A84
	b _08025B92
_08025A84:
	cmp r0, #0xfe
	bne _08025A8A
	b _08025B92
_08025A8A:
	cmp r0, #0xff
	bne _08025A90
	b _08025B92
_08025A90:
	ldr r6, _08025AF8
	ldr r7, _08025AFC
	movs r2, #1
	mov sb, r2
_08025A98:
	ldrb r0, [r6]
	cmp r0, #0x6d
	bls _08025AA2
	.2byte 0xEE00, 0xEE00
_08025AA2:
	ldrb r0, [r5]
	cmp r0, #0xfc
	bne _08025B08
	adds r5, #1
	ldrb r3, [r5]
	ldr r0, _08025B00
	ldrh r0, [r0]
	cmp r3, r0
	blo _08025AB8
	.2byte 0xEE00, 0xEE00
_08025AB8:
	ldrb r1, [r6]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldr r1, _08025B04
	ldr r2, [r1]
	lsls r1, r3, #2
	adds r1, r1, r2
	ldrh r1, [r1]
	mov r2, sb
	str r2, [sp]
	ldrh r2, [r4]
	str r2, [sp, #4]
	ldrh r2, [r4, #2]
	str r2, [sp, #8]
	movs r2, #2
	str r2, [sp, #0xc]
	movs r2, #0
	movs r3, #0
	bl SetSprite
	ldrb r0, [r5]
	ldr r2, _08025B04
	ldr r1, [r2]
	lsls r0, r0, #2
	adds r0, r0, r1
	movs r1, #0x10
	ldrsb r1, [r4, r1]
	ldrb r0, [r0, #2]
	b _08025B70
	.align 2, 0
_08025AF8: .4byte 0x02002230
_08025AFC: .4byte 0x02002238
_08025B00: .4byte 0x02002E44
_08025B04: .4byte 0x02002E40
_08025B08:
	ldr r3, [r4, #4]
	ldrb r0, [r5]
	ldr r1, [r3, #4]
	lsls r0, r0, #2
	adds r2, r0, r1
	ldrh r1, [r2]
	ldr r0, _08025BA4
	cmp r1, r0
	bne _08025B1E
	.2byte 0xEE00, 0xEE00
_08025B1E:
	ldrb r1, [r6]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrh r1, [r2]
	mov r2, sb
	str r2, [sp]
	ldrh r2, [r4]
	str r2, [sp, #4]
	ldrh r2, [r4, #2]
	str r2, [sp, #8]
	ldrb r2, [r3, #1]
	str r2, [sp, #0xc]
	movs r2, #0
	movs r3, #0
	bl SetSprite
	ldrb r1, [r6]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrh r1, [r4, #0xe]
	bl sprite_set_palette
	ldrb r1, [r6]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	mov r1, sb
	strb r1, [r0, #0x12]
	ldr r1, [r4, #4]
	ldrb r0, [r5]
	ldr r1, [r1, #4]
	lsls r0, r0, #2
	adds r0, r0, r1
	movs r1, #0x10
	ldrsb r1, [r4, r1]
	ldrh r0, [r0, #2]
_08025B70:
	adds r1, r1, r0
	ldrh r0, [r4]
	adds r0, r0, r1
	strh r0, [r4]
	ldrb r0, [r6]
	adds r0, #1
	strb r0, [r6]
	adds r5, #1
	ldrb r0, [r5]
	cmp r0, #0x20
	beq _08025B92
	cmp r0, #0xfd
	beq _08025B92
	cmp r0, #0xfe
	beq _08025B92
	cmp r0, #0xff
	bne _08025A98
_08025B92:
	ldrb r0, [r5]
	cmp r0, #0xfd
	beq _08025BB2
	cmp r0, #0xfd
	bgt _08025BA8
	cmp r0, #0x20
	beq _08025BC6
	b _08025BE2
	.align 2, 0
_08025BA4: .4byte 0x0000FFFF
_08025BA8:
	cmp r0, #0xfe
	beq _08025BBE
	cmp r0, #0xff
	beq _08025BD2
	b _08025BE2
_08025BB2:
	ldrb r2, [r4, #0xa]
	mov sl, r2
	movs r0, #1
	mov r8, r0
	adds r5, #1
	b _08025BEC
_08025BBE:
	movs r1, #1
	mov r8, r1
	adds r5, #1
	b _08025BEC
_08025BC6:
	ldrh r0, [r4]
	ldrb r2, [r4, #0x11]
	adds r0, r0, r2
	strh r0, [r4]
	adds r5, #1
	b _08025BEC
_08025BD2:
	movs r0, #1
	mov r8, r0
	ldr r1, [sp, #0x10]
	subs r0, r5, r1
	strh r0, [r4, #0xc]
	mov r2, r8
	strb r2, [r4, #0x13]
	b _08025C20
_08025BE2:
	.2byte 0xEE00, 0xEE00
	b _08025BEC
_08025BE8:
	movs r0, #1
	mov r8, r0
_08025BEC:
	mov r1, r8
	cmp r1, #0
	bne _08025BF4
	b _08025A58
_08025BF4:
	mov r0, sl
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	ldr r0, [r4, #4]
	ldrb r0, [r0]
	ldrb r1, [r4, #0x12]
	adds r0, r0, r1
	ldrh r2, [r4, #2]
	adds r0, r0, r2
	strh r0, [r4, #2]
	mov r0, sp
	ldrh r0, [r0, #0x14]
	strh r0, [r4]
	ldrb r1, [r4, #0xa]
	cmp sl, r1
	bhs _08025C1A
	b _08025A54
_08025C1A:
	ldr r2, [sp, #0x10]
	subs r0, r5, r2
	strh r0, [r4, #0xc]
_08025C20:
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

    .thumb
	.global sub_08025C30
sub_08025C30: @ 0x08025C30
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	adds r4, r0, #0
	str r1, [sp, #0x10]
	movs r0, #0
	mov sl, r0
	ldrh r1, [r4]
	str r1, [sp, #0x14]
	ldrh r0, [r4, #0xc]
	ldr r2, [sp, #0x10]
	adds r5, r2, r0
	ldrb r0, [r4, #0xa]
	cmp sl, r0
	blo _08025C56
	b _08025E2E
_08025C56:
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_8025870
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r4]
	subs r1, r1, r0
	strh r1, [r4]
	movs r1, #0
	mov r8, r1
_08025C6C:
	ldr r0, [r4, #4]
	ldr r1, [r0, #4]
	movs r2, #0x10
	ldrsb r2, [r4, r2]
	adds r0, r5, #0
	bl sub_8025808
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r2, [r4]
	adds r0, r0, r2
	ldr r1, [sp, #0x14]
	cmp r0, r1
	ble _08025C8A
	b _08025DFC
_08025C8A:
	ldrb r0, [r5]
	cmp r0, #0x20
	bne _08025C92
	b _08025DA6
_08025C92:
	cmp r0, #0xfd
	bne _08025C98
	b _08025DA6
_08025C98:
	cmp r0, #0xfe
	bne _08025C9E
	b _08025DA6
_08025C9E:
	cmp r0, #0xff
	bne _08025CA4
	b _08025DA6
_08025CA4:
	ldr r6, _08025D0C
	ldr r7, _08025D10
	movs r2, #1
	mov sb, r2
_08025CAC:
	ldrb r0, [r6]
	cmp r0, #0x6d
	bls _08025CB6
	.2byte 0xEE00, 0xEE00
_08025CB6:
	ldrb r0, [r5]
	cmp r0, #0xfc
	bne _08025D1C
	adds r5, #1
	ldrb r3, [r5]
	ldr r0, _08025D14
	ldrh r0, [r0]
	cmp r3, r0
	blo _08025CCC
	.2byte 0xEE00, 0xEE00
_08025CCC:
	ldrb r1, [r6]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldr r1, _08025D18
	ldr r2, [r1]
	lsls r1, r3, #2
	adds r1, r1, r2
	ldrh r1, [r1]
	mov r2, sb
	str r2, [sp]
	ldrh r2, [r4]
	str r2, [sp, #4]
	ldrh r2, [r4, #2]
	str r2, [sp, #8]
	movs r2, #2
	str r2, [sp, #0xc]
	movs r2, #0
	movs r3, #0
	bl SetSprite
	ldrb r0, [r5]
	ldr r2, _08025D18
	ldr r1, [r2]
	lsls r0, r0, #2
	adds r0, r0, r1
	movs r1, #0x10
	ldrsb r1, [r4, r1]
	ldrb r0, [r0, #2]
	b _08025D84
	.align 2, 0
_08025D0C: .4byte 0x02002230
_08025D10: .4byte 0x02002238
_08025D14: .4byte 0x02002E44
_08025D18: .4byte 0x02002E40
_08025D1C:
	ldr r3, [r4, #4]
	ldrb r0, [r5]
	ldr r1, [r3, #4]
	lsls r0, r0, #2
	adds r2, r0, r1
	ldrh r1, [r2]
	ldr r0, _08025DB8
	cmp r1, r0
	bne _08025D32
	.2byte 0xEE00, 0xEE00
_08025D32:
	ldrb r1, [r6]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrh r1, [r2]
	mov r2, sb
	str r2, [sp]
	ldrh r2, [r4]
	str r2, [sp, #4]
	ldrh r2, [r4, #2]
	str r2, [sp, #8]
	ldrb r2, [r3, #1]
	str r2, [sp, #0xc]
	movs r2, #0
	movs r3, #0
	bl SetSprite
	ldrb r1, [r6]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrh r1, [r4, #0xe]
	bl sprite_set_palette
	ldrb r1, [r6]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	mov r1, sb
	strb r1, [r0, #0x12]
	ldr r1, [r4, #4]
	ldrb r0, [r5]
	ldr r1, [r1, #4]
	lsls r0, r0, #2
	adds r0, r0, r1
	movs r1, #0x10
	ldrsb r1, [r4, r1]
	ldrh r0, [r0, #2]
_08025D84:
	adds r1, r1, r0
	ldrh r0, [r4]
	adds r0, r0, r1
	strh r0, [r4]
	ldrb r0, [r6]
	adds r0, #1
	strb r0, [r6]
	adds r5, #1
	ldrb r0, [r5]
	cmp r0, #0x20
	beq _08025DA6
	cmp r0, #0xfd
	beq _08025DA6
	cmp r0, #0xfe
	beq _08025DA6
	cmp r0, #0xff
	bne _08025CAC
_08025DA6:
	ldrb r0, [r5]
	cmp r0, #0xfd
	beq _08025DC6
	cmp r0, #0xfd
	bgt _08025DBC
	cmp r0, #0x20
	beq _08025DDA
	b _08025DF6
	.align 2, 0
_08025DB8: .4byte 0x0000FFFF
_08025DBC:
	cmp r0, #0xfe
	beq _08025DD2
	cmp r0, #0xff
	beq _08025DE6
	b _08025DF6
_08025DC6:
	ldrb r2, [r4, #0xa]
	mov sl, r2
	movs r0, #1
	mov r8, r0
	adds r5, #1
	b _08025E00
_08025DD2:
	movs r1, #1
	mov r8, r1
	adds r5, #1
	b _08025E00
_08025DDA:
	ldrh r0, [r4]
	ldrb r2, [r4, #0x11]
	adds r0, r0, r2
	strh r0, [r4]
	adds r5, #1
	b _08025E00
_08025DE6:
	movs r0, #1
	mov r8, r0
	ldr r1, [sp, #0x10]
	subs r0, r5, r1
	strh r0, [r4, #0xc]
	mov r2, r8
	strb r2, [r4, #0x13]
	b _08025E34
_08025DF6:
	.2byte 0xEE00, 0xEE00
	b _08025E00
_08025DFC:
	movs r0, #1
	mov r8, r0
_08025E00:
	mov r1, r8
	cmp r1, #0
	bne _08025E08
	b _08025C6C
_08025E08:
	mov r0, sl
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	ldr r0, [r4, #4]
	ldrb r0, [r0]
	ldrb r1, [r4, #0x12]
	adds r0, r0, r1
	ldrh r2, [r4, #2]
	adds r0, r0, r2
	strh r0, [r4, #2]
	mov r0, sp
	ldrh r0, [r0, #0x14]
	strh r0, [r4]
	ldrb r1, [r4, #0xa]
	cmp sl, r1
	bhs _08025E2E
	b _08025C56
_08025E2E:
	ldr r2, [sp, #0x10]
	subs r0, r5, r2
	strh r0, [r4, #0xc]
_08025E34:
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

    .thumb
    .global sub_8025E44
sub_8025E44: @ 0x08025E44
	push {lr}
	adds r3, r0, #0
	ldr r0, _08025E5C
	ldrb r0, [r0]
	cmp r0, #4
	bhi _08025ED0
	lsls r0, r0, #2
	ldr r1, _08025E60
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08025E5C: .4byte 0x02000320
_08025E60: .4byte 0x08025E64
_08025E64: @ jump table
	.4byte _08025E78 @ case 0
	.4byte _08025E88 @ case 1
	.4byte _08025E98 @ case 2
	.4byte _08025EB8 @ case 3
	.4byte _08025EA8 @ case 4
_08025E78:
	ldr r2, _08025E80
	ldr r1, _08025E84
	b _08025EBC
	.align 2, 0
_08025E80: .4byte 0x02002E68
_08025E84: .4byte 0x086ADDC8
_08025E88:
	ldr r2, _08025E90
	ldr r1, _08025E94
	b _08025EBC
	.align 2, 0
_08025E90: .4byte 0x02002E68
_08025E94: .4byte 0x086ADDE0
_08025E98:
	ldr r2, _08025EA0
	ldr r1, _08025EA4
	b _08025EBC
	.align 2, 0
_08025EA0: .4byte 0x02002E68
_08025EA4: .4byte 0x086ADDF8
_08025EA8:
	ldr r2, _08025EB0
	ldr r1, _08025EB4
	b _08025EBC
	.align 2, 0
_08025EB0: .4byte 0x02002E68
_08025EB4: .4byte 0x086ADE10
_08025EB8:
	ldr r2, _08025EC8
	ldr r1, _08025ECC
_08025EBC:
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [r2]
	b _08025ED4
	.align 2, 0
_08025EC8: .4byte 0x02002E68
_08025ECC: .4byte 0x086ADE28
_08025ED0:
	.2byte 0xEE00, 0xEE00
_08025ED4:
	ldr r0, _08025EE8
	movs r1, #0
	strb r1, [r0]
	ldr r0, _08025EEC
	strb r1, [r0]
	ldr r0, _08025EF0
	strb r1, [r0]
	pop {r0}
	bx r0
	.align 2, 0
_08025EE8: .4byte 0x02002E48
_08025EEC: .4byte 0x02002E70
_08025EF0: .4byte 0x02002E71

    .thumb
	.global sub_8025EF4
sub_8025EF4: @ 0x08025EF4
	push {r4, r5, lr}
	sub sp, #0x10
	ldr r2, _08025F80
	ldr r1, _08025F84
	lsls r0, r0, #3
	ldr r1, [r1]
	adds r1, r1, r0
	str r1, [r2]
	ldr r0, _08025F88
	movs r1, #0
	strb r1, [r0]
	ldr r0, _08025F8C
	strb r1, [r0]
	ldr r0, _08025F90
	movs r2, #0
	str r2, [r0]
	ldr r0, _08025F94
	str r2, [r0]
	ldr r1, _08025F98
	movs r4, #0
	movs r0, #0x30
	strh r0, [r1]
	movs r0, #0x72
	strh r0, [r1, #2]
	ldr r0, _08025F9C
	str r0, [r1, #4]
	movs r0, #0xa0
	strh r0, [r1, #8]
	movs r3, #2
	strb r3, [r1, #0xa]
	movs r0, #0xa
	strh r0, [r1, #0xe]
	movs r5, #1
	strb r5, [r1, #0x10]
	movs r0, #5
	strb r0, [r1, #0x11]
	strb r3, [r1, #0x12]
	strh r2, [r1, #0xc]
	strb r4, [r1, #0x13]
	ldr r0, _08025FA0
	ldr r1, _08025FA4
	str r2, [sp]
	movs r2, #0xd4
	str r2, [sp, #4]
	movs r2, #0x7c
	str r2, [sp, #8]
	str r3, [sp, #0xc]
	movs r2, #0
	movs r3, #0
	bl SetSprite
	ldr r2, _08025FA8
	ldr r3, _08025FAC
	ldr r1, _08025FB0
	ldrb r0, [r1]
	adds r0, r0, r3
	ldrb r0, [r0]
	strb r0, [r2]
	ldr r2, _08025FB4
	ldrb r0, [r1]
	adds r0, r0, r3
	ldrb r0, [r0]
	strb r0, [r2]
	ldr r0, _08025FB8
	strb r5, [r0]
	add sp, #0x10
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08025F80: .4byte 0x02002E6C
_08025F84: .4byte 0x02002E68
_08025F88: .4byte 0x02002E48
_08025F8C: .4byte 0x02002E49
_08025F90: .4byte 0x02002E74
_08025F94: .4byte 0x02002E78
_08025F98: .4byte 0x02002E54
_08025F9C: .4byte 0x080B01B0
_08025FA0: .4byte 0x02002E98
_08025FA4: .4byte 0x00000452
_08025FA8: .4byte 0x02002235
_08025FAC: .4byte 0x080CEDC0
_08025FB0: .4byte gTextSpeed
_08025FB4: .4byte 0x02002236
_08025FB8: .4byte 0x02002234

    .thumb
    .global sub_8025FBC
sub_8025FBC: @ 0x08025FBC
	ldr r1, _08025FC4
	movs r0, #1
	strb r0, [r1]
	bx lr
	.align 2, 0
_08025FC4: .4byte 0x02002E48

    .thumb
	.global sub_8025FC8
sub_8025FC8: @ 0x08025FC8
	ldr r1, _08025FE4
	movs r0, #0
	strb r0, [r1]
	ldr r1, _08025FE8
	movs r0, #1
	strb r0, [r1]
	ldr r2, _08025FEC
	ldr r0, _08025FF0
	ldrb r1, [r0]
	strb r1, [r2]
	ldr r0, _08025FF4
	strb r1, [r0]
	bx lr
	.align 2, 0
_08025FE4: .4byte 0x02002E48
_08025FE8: .4byte 0x02002234
_08025FEC: .4byte 0x02002232
_08025FF0: .4byte 0x02002231
_08025FF4: .4byte 0x02002233

    .thumb
    .global sub_8025FF8
sub_8025FF8: @ 0x08025FF8
	push {r4, r5, r6, r7, lr}
	ldr r0, _0802601C
	ldrb r0, [r0]
	cmp r0, #0
	beq _08026018
	ldr r4, _08026020
	ldrb r2, [r4]
	cmp r2, #0
	bne _08026018
	ldr r0, _08026024
	mov ip, r0
	ldr r7, _08026028
	ldrb r0, [r0]
	ldrb r1, [r7]
	cmp r0, r1
	beq _0802602C
_08026018:
	movs r0, #0
	b _080260EC
	.align 2, 0
_0802601C: .4byte 0x02002E48
_08026020: .4byte 0x02002E49
_08026024: .4byte 0x02002233
_08026028: .4byte 0x02002232
_0802602C:
	ldr r0, _08026060
	movs r3, #1
	strb r3, [r0]
	ldr r6, _08026064
	ldrb r0, [r6, #0x13]
	cmp r0, #0
	beq _080260A4
	ldr r1, _08026068
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r1, _0802606C
	ldr r1, [r1]
	ldrb r1, [r1]
	cmp r0, r1
	bne _08026078
	strb r3, [r4]
	ldr r0, _08026070
	ldrb r0, [r0]
	cmp r0, #0
	beq _080260EA
	ldr r0, _08026074
	ldr r0, [r0]
	bl audio_halt_fx
	b _080260EA
	.align 2, 0
_08026060: .4byte byte_2002E4A
_08026064: .4byte 0x02002E54
_08026068: .4byte 0x02002E74
_0802606C: .4byte 0x02002E6C
_08026070: .4byte gCanPlaySfx
_08026074: .4byte 0x02002EBC
_08026078:
	strb r2, [r6, #0x13]
	ldr r0, _08026098
	str r2, [r0]
	ldr r0, _0802609C
	strb r3, [r0]
	ldr r0, _080260A0
	ldrb r0, [r0]
	strb r0, [r7]
	mov r1, ip
	strb r0, [r1]
	bl sub_8026180
	bl sub_802625C
	b _080260EA
	.align 2, 0
_08026098: .4byte 0x02002E78
_0802609C: .4byte 0x02002234
_080260A0: .4byte 0x02002231
_080260A4:
	movs r3, #0
	movs r0, #0x30
	strh r0, [r6]
	movs r0, #0x72
	strh r0, [r6, #2]
	ldr r5, _080260F4
	ldr r0, [r5]
	strh r0, [r6, #0xc]
	ldr r2, _080260F8
	ldr r1, _080260FC
	ldrb r0, [r1]
	strb r0, [r7]
	ldr r4, _08026100
	ldrb r0, [r4]
	strb r0, [r1]
	mov r1, ip
	strb r0, [r1]
	strb r3, [r2]
	ldr r0, _08026104
	ldr r1, [r0]
	ldr r0, _08026108
	ldr r0, [r0]
	ldr r1, [r1, #4]
	lsls r0, r0, #3
	adds r0, r0, r1
	ldr r1, [r0, #4]
	adds r0, r6, #0
	bl AddStringToBuffer
	ldrb r0, [r4]
	strb r0, [r7]
	ldrh r0, [r6, #0xc]
	str r0, [r5]
	bl sub_80265D8
_080260EA:
	movs r0, #1
_080260EC:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080260F4: .4byte 0x02002E78
_080260F8: .4byte 0x02002234
_080260FC: .4byte 0x02002231
_08026100: .4byte 0x02002230
_08026104: .4byte 0x02002E6C
_08026108: .4byte 0x02002E74

	.thumb
sub_802610C: @ 0x0802610C
	push {lr}
	ldr r0, _0802615C
	ldrb r0, [r0]
	cmp r0, #0
	beq _08026156
	ldr r2, _08026160
	ldrb r0, [r2]
	cmp r0, #0
	bne _08026156
	ldr r0, _08026164
	ldr r1, _08026168
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	bne _08026156
	ldr r0, _0802616C
	ldrb r0, [r0, #0x13]
	cmp r0, #0
	beq _08026156
	ldr r0, _08026170
	ldr r0, [r0]
	adds r0, #1
	ldr r1, _08026174
	ldr r1, [r1]
	ldrb r1, [r1]
	cmp r0, r1
	bne _08026156
	movs r0, #1
	strb r0, [r2]
	ldr r0, _08026178
	ldrb r0, [r0]
	cmp r0, #0
	beq _08026156
	ldr r0, _0802617C
	ldr r0, [r0]
	bl audio_halt_fx
_08026156:
	pop {r0}
	bx r0
	.align 2, 0
_0802615C: .4byte 0x02002E48
_08026160: .4byte 0x02002E49
_08026164: .4byte 0x02002233
_08026168: .4byte 0x02002232
_0802616C: .4byte 0x02002E54
_08026170: .4byte 0x02002E74
_08026174: .4byte 0x02002E6C
_08026178: .4byte gCanPlaySfx
_0802617C: .4byte 0x02002EBC

    .thumb
    .global sub_8026180
sub_8026180: @ 0x08026180
	push {r4, r5, r6, lr}
	sub sp, #0x10
	ldr r0, _08026204
	ldrb r0, [r0]
	cmp r0, #0
	beq _080261FA
	ldr r3, _08026208
	movs r0, #0x30
	strh r0, [r3]
	movs r0, #0x72
	strh r0, [r3, #2]
	ldr r0, _0802620C
	ldr r0, [r0]
	strh r0, [r3, #0xc]
	ldr r0, _08026210
	ldr r6, _08026214
	ldrb r1, [r6]
	strb r1, [r0]
	ldr r2, _08026218
	ldrb r0, [r2]
	cmp r0, #0
	beq _080261B4
	ldr r0, _0802621C
	strb r1, [r0]
	movs r0, #0
	strb r0, [r2]
_080261B4:
	ldr r5, _08026220
	ldr r1, [r5]
	ldr r4, _08026224
	ldr r0, [r4]
	ldr r1, [r1, #4]
	lsls r0, r0, #3
	adds r0, r0, r1
	ldr r1, [r0, #4]
	adds r0, r3, #0
	bl AddStringToBuffer
	ldr r1, _08026228
	ldrb r0, [r6]
	strb r0, [r1]
	ldr r0, _0802622C
	ldr r2, [r5]
	ldr r1, [r4]
	ldr r2, [r2, #4]
	lsls r1, r1, #3
	adds r1, r1, r2
	ldrb r1, [r1]
	ldr r2, _08026230
	adds r1, r1, r2
	movs r2, #1
	str r2, [sp]
	movs r2, #0x10
	str r2, [sp, #4]
	movs r2, #0x78
	str r2, [sp, #8]
	movs r2, #2
	str r2, [sp, #0xc]
	movs r2, #0
	movs r3, #0
	bl SetSprite
_080261FA:
	add sp, #0x10
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08026204: .4byte 0x02002E48
_08026208: .4byte 0x02002E54
_0802620C: .4byte 0x02002E78
_08026210: .4byte 0x02002231
_08026214: .4byte 0x02002230
_08026218: .4byte 0x02002234
_0802621C: .4byte 0x02002233
_08026220: .4byte 0x02002E6C
_08026224: .4byte 0x02002E74
_08026228: .4byte 0x02002232
_0802622C: .4byte 0x02002E7C
_08026230: .4byte 0x00000494

    .thumb
    .global sub_8026234
sub_8026234: @ 0x08026234
	push {lr}
	ldr r0, _08026250
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802624A
	ldr r0, _08026254
	bl sprite_render
	ldr r0, _08026258
	bl sprite_render
_0802624A:
	pop {r0}
	bx r0
	.align 2, 0
_08026250: .4byte 0x02002E48
_08026254: .4byte 0x02002E7C
_08026258: .4byte 0x02002E98

    .thumb
    .global sub_802625C
sub_802625C: @ 0x0802625C
	push {r4, r5, lr}
	ldr r0, _08026290
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802626E
	ldr r0, _08026294
	ldr r0, [r0]
	bl audio_halt_fx
_0802626E:
	ldr r0, _08026298
	ldr r1, [r0]
	ldr r0, _0802629C
	ldr r0, [r0]
	ldr r1, [r1, #4]
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0x1a
	bls _08026284
	b _08026568
_08026284:
	lsls r0, r0, #2
	ldr r1, _080262A0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08026290: .4byte gCanPlaySfx
_08026294: .4byte 0x02002EBC
_08026298: .4byte 0x02002E6C
_0802629C: .4byte 0x02002E74
_080262A0: .4byte 0x080262A4
_080262A4: @ jump table
	.4byte _08026310 @ case 0
	.4byte _08026388 @ case 1
	.4byte _080263A0 @ case 2
	.4byte _08026358 @ case 3
	.4byte _08026328 @ case 4
	.4byte _08026370 @ case 5
	.4byte _08026340 @ case 6
	.4byte _080263B8 @ case 7
	.4byte _08026490 @ case 8
	.4byte _080263D0 @ case 9
	.4byte _080263E8 @ case 10
	.4byte _08026400 @ case 11
	.4byte _08026418 @ case 12
	.4byte _08026430 @ case 13
	.4byte _08026448 @ case 14
	.4byte _08026460 @ case 15
	.4byte _08026478 @ case 16
	.4byte _08026490 @ case 17
	.4byte _080264A8 @ case 18
	.4byte _080264C0 @ case 19
	.4byte _080264D8 @ case 20
	.4byte _080264F0 @ case 21
	.4byte _08026508 @ case 22
	.4byte _080263B8 @ case 23
	.4byte _08026538 @ case 24
	.4byte _08026520 @ case 25
	.4byte _08026550 @ case 26
_08026310:
	ldr r2, _08026320
	movs r0, #8
	strh r0, [r2]
	ldr r1, _08026324
	movs r0, #0xb
	strh r0, [r1]
	b _0802656C
	.align 2, 0
_08026320: .4byte 0x02002EB4
_08026324: .4byte 0x02002EB6
_08026328:
	ldr r2, _08026338
	movs r0, #0x2d
	strh r0, [r2]
	ldr r1, _0802633C
	movs r0, #0x2f
	strh r0, [r1]
	b _0802656C
	.align 2, 0
_08026338: .4byte 0x02002EB4
_0802633C: .4byte 0x02002EB6
_08026340:
	ldr r2, _08026350
	movs r0, #0x4a
	strh r0, [r2]
	ldr r1, _08026354
	movs r0, #0x4c
	strh r0, [r1]
	b _0802656C
	.align 2, 0
_08026350: .4byte 0x02002EB4
_08026354: .4byte 0x02002EB6
_08026358:
	ldr r2, _08026368
	movs r0, #0x3d
	strh r0, [r2]
	ldr r1, _0802636C
	movs r0, #0x3f
	strh r0, [r1]
	b _0802656C
	.align 2, 0
_08026368: .4byte 0x02002EB4
_0802636C: .4byte 0x02002EB6
_08026370:
	ldr r2, _08026380
	movs r0, #0x30
	strh r0, [r2]
	ldr r1, _08026384
	movs r0, #0x32
	strh r0, [r1]
	b _0802656C
	.align 2, 0
_08026380: .4byte 0x02002EB4
_08026384: .4byte 0x02002EB6
_08026388:
	ldr r2, _08026398
	movs r0, #0xf
	strh r0, [r2]
	ldr r1, _0802639C
	movs r0, #0x12
	strh r0, [r1]
	b _0802656C
	.align 2, 0
_08026398: .4byte 0x02002EB4
_0802639C: .4byte 0x02002EB6
_080263A0:
	ldr r2, _080263B0
	movs r0, #0x43
	strh r0, [r2]
	ldr r1, _080263B4
	movs r0, #0x45
	strh r0, [r1]
	b _0802656C
	.align 2, 0
_080263B0: .4byte 0x02002EB4
_080263B4: .4byte 0x02002EB6
_080263B8:
	ldr r2, _080263C8
	movs r0, #0x33
	strh r0, [r2]
	ldr r1, _080263CC
	movs r0, #0x35
	strh r0, [r1]
	b _0802656C
	.align 2, 0
_080263C8: .4byte 0x02002EB4
_080263CC: .4byte 0x02002EB6
_080263D0:
	ldr r2, _080263E0
	movs r0, #0x39
	strh r0, [r2]
	ldr r1, _080263E4
	movs r0, #0x3b
	strh r0, [r1]
	b _0802656C
	.align 2, 0
_080263E0: .4byte 0x02002EB4
_080263E4: .4byte 0x02002EB6
_080263E8:
	ldr r2, _080263F8
	movs r0, #0x53
	strh r0, [r2]
	ldr r1, _080263FC
	movs r0, #0x55
	strh r0, [r1]
	b _0802656C
	.align 2, 0
_080263F8: .4byte 0x02002EB4
_080263FC: .4byte 0x02002EB6
_08026400:
	ldr r2, _08026410
	movs r0, #0x56
	strh r0, [r2]
	ldr r1, _08026414
	movs r0, #0x58
	strh r0, [r1]
	b _0802656C
	.align 2, 0
_08026410: .4byte 0x02002EB4
_08026414: .4byte 0x02002EB6
_08026418:
	ldr r2, _08026428
	movs r0, #0x50
	strh r0, [r2]
	ldr r1, _0802642C
	movs r0, #0x52
	strh r0, [r1]
	b _0802656C
	.align 2, 0
_08026428: .4byte 0x02002EB4
_0802642C: .4byte 0x02002EB6
_08026430:
	ldr r2, _08026440
	movs r0, #0x5c
	strh r0, [r2]
	ldr r1, _08026444
	movs r0, #0x5e
	strh r0, [r1]
	b _0802656C
	.align 2, 0
_08026440: .4byte 0x02002EB4
_08026444: .4byte 0x02002EB6
_08026448:
	ldr r2, _08026458
	movs r0, #0x62
	strh r0, [r2]
	ldr r1, _0802645C
	movs r0, #0x64
	strh r0, [r1]
	b _0802656C
	.align 2, 0
_08026458: .4byte 0x02002EB4
_0802645C: .4byte 0x02002EB6
_08026460:
	ldr r2, _08026470
	movs r0, #0x5f
	strh r0, [r2]
	ldr r1, _08026474
	movs r0, #0x61
	strh r0, [r1]
	b _0802656C
	.align 2, 0
_08026470: .4byte 0x02002EB4
_08026474: .4byte 0x02002EB6
_08026478:
	ldr r2, _08026488
	movs r0, #0x68
	strh r0, [r2]
	ldr r1, _0802648C
	movs r0, #0x6a
	strh r0, [r1]
	b _0802656C
	.align 2, 0
_08026488: .4byte 0x02002EB4
_0802648C: .4byte 0x02002EB6
_08026490:
	ldr r2, _080264A0
	movs r0, #0x36
	strh r0, [r2]
	ldr r1, _080264A4
	movs r0, #0x38
	strh r0, [r1]
	b _0802656C
	.align 2, 0
_080264A0: .4byte 0x02002EB4
_080264A4: .4byte 0x02002EB6
_080264A8:
	ldr r2, _080264B8
	movs r0, #0x65
	strh r0, [r2]
	ldr r1, _080264BC
	movs r0, #0x67
	strh r0, [r1]
	b _0802656C
	.align 2, 0
_080264B8: .4byte 0x02002EB4
_080264BC: .4byte 0x02002EB6
_080264C0:
	ldr r2, _080264D0
	movs r0, #0x59
	strh r0, [r2]
	ldr r1, _080264D4
	movs r0, #0x5b
	strh r0, [r1]
	b _0802656C
	.align 2, 0
_080264D0: .4byte 0x02002EB4
_080264D4: .4byte 0x02002EB6
_080264D8:
	ldr r2, _080264E8
	movs r0, #0x6b
	strh r0, [r2]
	ldr r1, _080264EC
	movs r0, #0x6d
	strh r0, [r1]
	b _0802656C
	.align 2, 0
_080264E8: .4byte 0x02002EB4
_080264EC: .4byte 0x02002EB6
_080264F0:
	ldr r2, _08026500
	movs r0, #0x6e
	strh r0, [r2]
	ldr r1, _08026504
	movs r0, #0x70
	strh r0, [r1]
	b _0802656C
	.align 2, 0
_08026500: .4byte 0x02002EB4
_08026504: .4byte 0x02002EB6
_08026508:
	ldr r2, _08026518
	movs r0, #0x71
	strh r0, [r2]
	ldr r1, _0802651C
	movs r0, #0x73
	strh r0, [r1]
	b _0802656C
	.align 2, 0
_08026518: .4byte 0x02002EB4
_0802651C: .4byte 0x02002EB6
_08026520:
	ldr r2, _08026530
	movs r0, #0x77
	strh r0, [r2]
	ldr r1, _08026534
	movs r0, #0x7a
	strh r0, [r1]
	b _0802656C
	.align 2, 0
_08026530: .4byte 0x02002EB4
_08026534: .4byte 0x02002EB6
_08026538:
	ldr r2, _08026548
	movs r0, #0x74
	strh r0, [r2]
	ldr r1, _0802654C
	movs r0, #0x76
	strh r0, [r1]
	b _0802656C
	.align 2, 0
_08026548: .4byte 0x02002EB4
_0802654C: .4byte 0x02002EB6
_08026550:
	ldr r2, _08026560
	movs r0, #0xd6
	strh r0, [r2]
	ldr r1, _08026564
	movs r0, #0xd8
	strh r0, [r1]
	b _0802656C
	.align 2, 0
_08026560: .4byte 0x02002EB4
_08026564: .4byte 0x02002EB6
_08026568:
	.2byte 0xEE00, 0xEE00
_0802656C:
	ldr r4, _080265B0
	ldr r1, _080265B4
	ldrh r0, [r1]
	ldr r2, _080265B8
	ldrh r1, [r2]
	bl RandomMinMax
	adds r1, r0, #0
	str r1, [r4]
	ldr r5, _080265BC
	ldr r0, _080265C0
	ldrb r0, [r0]
	cmp r0, #0
	beq _080265CC
	ldr r3, _080265C4
	lsls r4, r1, #3
	adds r0, r4, r3
	ldrh r0, [r0]
	ldr r1, _080265C8
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
	b _080265D0
	.align 2, 0
_080265B0: .4byte 0x02002EB8
_080265B4: .4byte 0x02002EB4
_080265B8: .4byte 0x02002EB6
_080265BC: .4byte 0x02002EBC
_080265C0: .4byte gCanPlaySfx
_080265C4: .4byte 0x080CE440
_080265C8: .4byte gSfxVolume
_080265CC:
	movs r0, #1
	rsbs r0, r0, #0
_080265D0:
	str r0, [r5]
	pop {r4, r5}
	pop {r0}
	bx r0

    .thumb
    .global sub_80265D8
sub_80265D8: @ 0x080265D8
	push {r4, r5, r6, lr}
	ldr r0, _08026618
	ldr r0, [r0]
	bl audio_fx_still_active
	adds r2, r0, #0
	cmp r2, #0
	bne _080266A2
	ldr r3, _0802661C
	ldrb r0, [r3]
	cmp r0, #0
	beq _080265F4
	subs r0, #1
	strb r0, [r3]
_080265F4:
	ldr r0, _08026620
	ldr r1, _08026624
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	bne _0802662C
	ldrb r0, [r3]
	cmp r0, #0
	bne _08026632
	ldr r1, _08026628
	ldrb r0, [r1]
	cmp r0, #0
	bne _080266A2
	movs r0, #1
	strb r0, [r3]
	strb r0, [r1]
	b _08026632
	.align 2, 0
_08026618: .4byte 0x02002EBC
_0802661C: .4byte 0x02002E70
_08026620: .4byte 0x02002233
_08026624: .4byte 0x02002232
_08026628: .4byte 0x02002E71
_0802662C:
	strb r2, [r3]
	ldr r0, _0802667C
	strb r2, [r0]
_08026632:
	ldr r6, _08026680
	ldr r5, _08026684
_08026636:
	ldrh r0, [r6]
	ldrh r1, [r5]
	bl RandomMinMax
	adds r4, r0, #0
	ldr r1, _08026688
	ldr r0, [r1]
	cmp r4, r0
	beq _08026636
	str r4, [r1]
	ldr r5, _0802668C
	ldr r0, _08026690
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802669C
	ldr r3, _08026694
	lsls r4, r4, #3
	adds r0, r4, r3
	ldrh r0, [r0]
	ldr r1, _08026698
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
	b _080266A0
	.align 2, 0
_0802667C: .4byte 0x02002E71
_08026680: .4byte 0x02002EB4
_08026684: .4byte 0x02002EB6
_08026688: .4byte 0x02002EB8
_0802668C: .4byte 0x02002EBC
_08026690: .4byte gCanPlaySfx
_08026694: .4byte 0x080CE440
_08026698: .4byte gSfxVolume
_0802669C:
	movs r0, #1
	rsbs r0, r0, #0
_080266A0:
	str r0, [r5]
_080266A2:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

    .thumb
    .global sub_80266A8
sub_80266A8: @ 0x080266A8
	ldr r0, _080266B0
	ldr r0, [r0]
	bx lr
	.align 2, 0
_080266B0: .4byte 0x080CC934

    .thumb
    .global sub_80266B4
sub_80266B4: @ 0x080266B4
	push {lr}
	bl sub_80275A4
	ldr r1, _080266C4
	movs r0, #0
	strb r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_080266C4: .4byte gIsPaletteEffectsActive

    .thumb
	.global sub_80266C8
sub_80266C8: @ 0x080266C8
	push {r4, r5, lr}
	ldr r3, _080266FC
	strh r0, [r3]
	ldr r1, _08026700
	movs r0, #0
	strh r0, [r1]
	ldr r1, _08026704
	movs r4, #0
	ldrsh r0, [r3, r4]
	muls r0, r2, r0
	rsbs r0, r0, #0
	movs r4, #0
	strh r0, [r1]
	movs r5, #0
	ldrsh r0, [r3, r5]
	muls r0, r2, r0
	strh r0, [r1, #2]
	ldr r0, _08026708
	strh r4, [r0]
	ldr r0, _0802670C
	strh r4, [r0]
	ldr r0, _08026710
	strh r2, [r0]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080266FC: .4byte 0x02007886
_08026700: .4byte 0x02002EC0
_08026704: .4byte 0x02007888
_08026708: .4byte 0x0200788C
_0802670C: .4byte 0x02002EC2
_08026710: .4byte 0x0200788E

    .thumb
	.global sub_8026714
sub_8026714: @ 0x08026714
	ldr r1, _08026724
	movs r0, #0
	strb r0, [r1]
	ldr r1, _08026728
	movs r0, #0
	strh r0, [r1]
	bx lr
	.align 2, 0
_08026724: .4byte 0x030043A5
_08026728: .4byte 0x02002EC2

    .thumb
	.global sub_802672C
sub_802672C: @ 0x0802672C
	push {r4, lr}
	ldr r0, _08026748
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r3, r0, #0
	cmp r1, #0
	bne _08026754
	ldr r2, _0802674C
	ldr r1, _08026750
	ldrh r0, [r2]
	ldrh r1, [r1]
	subs r0, r0, r1
	strh r0, [r2]
	b _08026762
	.align 2, 0
_08026748: .4byte 0x0200788C
_0802674C: .4byte 0x02002EC2
_08026750: .4byte 0x0200788E
_08026754:
	ldr r1, _08026788
	ldr r0, _0802678C
	ldrh r0, [r0]
	ldrh r4, [r1]
	adds r0, r0, r4
	strh r0, [r1]
	adds r2, r1, #0
_08026762:
	ldr r1, _08026790
	movs r4, #0
	ldrsh r0, [r3, r4]
	lsls r0, r0, #1
	adds r0, r0, r1
	movs r4, #0
	ldrsh r1, [r2, r4]
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r1, r0
	bne _08026780
	ldrh r0, [r3]
	movs r1, #1
	eors r0, r1
	strh r0, [r3]
_08026780:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08026788: .4byte 0x02002EC2
_0802678C: .4byte 0x0200788E
_08026790: .4byte 0x02007888

    .thumb
sub_8026794: @ 0x08026794
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0
	adds r7, r1, #0
	movs r5, #0
	mov sb, r5
	cmp r4, #0
	bgt _080267AC
	.2byte 0xEE00, 0xEE00
_080267AC:
	cmp r7, #0
	beq _080267C4
	ldr r0, _080267DC
	ldrb r0, [r0]
	lsls r5, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #0xd
	adds r0, r5, #0
	bl sub_800392C
	mov sb, r0
	movs r5, #0
_080267C4:
	ldr r1, _080267E0
	ldr r2, _080267E4
	adds r0, r2, #0
	strh r0, [r1]
	movs r6, #0x10
	lsls r1, r4, #0x10
	lsrs r4, r1, #0x10
	ldr r0, _080267E8
	strh r6, [r0]
	mov r8, r1
	b _080267FC
	.align 2, 0
_080267DC: .4byte gBgmMainVolume
_080267E0: .4byte 0x04000050
_080267E4: .4byte 0x00003FFF
_080267E8: .4byte 0x04000054
_080267EC:
	bl SyncVblank
	lsls r0, r4, #0x10
	ldr r1, _08026860
	adds r0, r0, r1
	lsrs r4, r0, #0x10
	bl SkipVblank
_080267FC:
	cmp r4, #0
	bne _080267EC
	mov r2, r8
	lsrs r4, r2, #0x10
	lsls r0, r6, #0x10
	ldr r1, _08026864
	adds r0, r0, r1
	lsrs r6, r0, #0x10
	ldr r0, _08026868
	strh r6, [r0]
	cmp r7, #0
	beq _08026830
	add r5, sb
	ldr r0, _0802686C
	ldrb r0, [r0]
	lsls r0, r0, #0x10
	cmp r5, r0
	ble _08026822
	adds r5, r0, #0
_08026822:
	ldr r0, _08026870
	asrs r1, r5, #0x10
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r0, [r1]
	bl audio_set_tune_vol
_08026830:
	lsls r0, r6, #0x10
	cmp r0, #0
	bge _080267FC
	cmp r7, #0
	beq _0802684A
	ldr r1, _08026870
	ldr r0, _0802686C
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl audio_set_tune_vol
_0802684A:
	ldr r1, _08026874
	movs r2, #0xfc
	lsls r2, r2, #6
	adds r0, r2, #0
	strh r0, [r1]
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08026860: .4byte 0xFFFF0000
_08026864: .4byte 0xFFFE0000
_08026868: .4byte 0x04000054
_0802686C: .4byte gBgmMainVolume
_08026870: .4byte dVolumes
_08026874: .4byte 0x04000050



	.thumb
sub_8026878: @ 0x08026878
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0
	adds r7, r1, #0
	movs r6, #0
	mov sb, r6
	cmp r4, #0
	bgt _08026890
	.2byte 0xEE00, 0xEE00
_08026890:
	cmp r7, #0
	beq _080268A6
	ldr r0, _080268BC
	ldrb r0, [r0]
	lsls r6, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #0xd
	adds r0, r6, #0
	bl sub_800392C
	mov sb, r0
_080268A6:
	ldr r1, _080268C0
	ldr r2, _080268C4
	adds r0, r2, #0
	strh r0, [r1]
	movs r5, #0
	lsls r1, r4, #0x10
	lsrs r4, r1, #0x10
	ldr r0, _080268C8
	strh r5, [r0]
	mov r8, r1
	b _080268DC
	.align 2, 0
_080268BC: .4byte gBgmMainVolume
_080268C0: .4byte 0x04000050
_080268C4: .4byte 0x00003FFF
_080268C8: .4byte 0x04000054
_080268CC:
	bl SyncVblank
	lsls r0, r4, #0x10
	ldr r1, _0802693C
	adds r0, r0, r1
	lsrs r4, r0, #0x10
	bl SkipVblank
_080268DC:
	cmp r4, #0
	bne _080268CC
	mov r2, r8
	lsrs r4, r2, #0x10
	lsls r0, r5, #0x10
	movs r1, #0x80
	lsls r1, r1, #0xa
	adds r0, r0, r1
	lsrs r5, r0, #0x10
	ldr r0, _08026940
	strh r5, [r0]
	cmp r7, #0
	beq _0802690E
	mov r2, sb
	subs r6, r6, r2
	cmp r6, #0
	bge _08026900
	movs r6, #0
_08026900:
	ldr r0, _08026944
	asrs r1, r6, #0x10
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r0, [r1]
	bl audio_set_tune_vol
_0802690E:
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xf
	ble _080268DC
	cmp r7, #0
	beq _08026922
	ldr r0, _08026944
	ldr r0, [r0]
	bl audio_set_tune_vol
_08026922:
	movs r1, #0xe0
	lsls r1, r1, #0x13
	movs r2, #0x80
	lsls r2, r2, #1
	movs r0, #0xaa
	bl DmaFill32
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802693C: .4byte 0xFFFF0000
_08026940: .4byte 0x04000054
_08026944: .4byte dVolumes

	.thumb
sub_8026948: @ 0x08026948
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0
	adds r7, r1, #0
	movs r5, #0
	mov sb, r5
	cmp r4, #0
	bgt _08026960
	.2byte 0xEE00, 0xEE00
_08026960:
	cmp r7, #0
	beq _08026978
	ldr r0, _08026990
	ldrb r0, [r0]
	lsls r5, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #0xd
	adds r0, r5, #0
	bl sub_800392C
	mov sb, r0
	movs r5, #0
_08026978:
	ldr r1, _08026994
	ldr r2, _08026998
	adds r0, r2, #0
	strh r0, [r1]
	movs r6, #0x10
	lsls r1, r4, #0x10
	lsrs r4, r1, #0x10
	ldr r0, _0802699C
	strh r6, [r0]
	mov r8, r1
	b _080269B0
	.align 2, 0
_08026990: .4byte gBgmMainVolume
_08026994: .4byte 0x04000050
_08026998: .4byte 0x00003FBF
_0802699C: .4byte 0x04000054
_080269A0:
	bl SyncVblank
	lsls r0, r4, #0x10
	ldr r1, _08026A14
	adds r0, r0, r1
	lsrs r4, r0, #0x10
	bl SkipVblank
_080269B0:
	cmp r4, #0
	bne _080269A0
	mov r2, r8
	lsrs r4, r2, #0x10
	lsls r0, r6, #0x10
	ldr r1, _08026A18
	adds r0, r0, r1
	lsrs r6, r0, #0x10
	ldr r0, _08026A1C
	strh r6, [r0]
	cmp r7, #0
	beq _080269E4
	add r5, sb
	ldr r0, _08026A20
	ldrb r0, [r0]
	lsls r0, r0, #0x10
	cmp r5, r0
	ble _080269D6
	adds r5, r0, #0
_080269D6:
	ldr r0, _08026A24
	asrs r1, r5, #0x10
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r0, [r1]
	bl audio_set_tune_vol
_080269E4:
	lsls r0, r6, #0x10
	cmp r0, #0
	bge _080269B0
	cmp r7, #0
	beq _080269FE
	ldr r1, _08026A24
	ldr r0, _08026A20
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl audio_set_tune_vol
_080269FE:
	ldr r1, _08026A28
	movs r2, #0xfc
	lsls r2, r2, #6
	adds r0, r2, #0
	strh r0, [r1]
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08026A14: .4byte 0xFFFF0000
_08026A18: .4byte 0xFFFE0000
_08026A1C: .4byte 0x04000054
_08026A20: .4byte gBgmMainVolume
_08026A24: .4byte dVolumes
_08026A28: .4byte 0x04000050


    .thumb
sub_8026A2C: @ 0x08026A2C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0
	adds r7, r1, #0
	movs r6, #0
	mov sb, r6
	cmp r4, #0
	bgt _08026A44
	.2byte 0xEE00, 0xEE00
_08026A44:
	cmp r7, #0
	beq _08026A5A
	ldr r0, _08026A70
	ldrb r0, [r0]
	lsls r6, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #0xd
	adds r0, r6, #0
	bl sub_800392C
	mov sb, r0
_08026A5A:
	ldr r1, _08026A74
	ldr r2, _08026A78
	adds r0, r2, #0
	strh r0, [r1]
	movs r5, #0
	lsls r1, r4, #0x10
	lsrs r4, r1, #0x10
	ldr r0, _08026A7C
	strh r5, [r0]
	mov r8, r1
	b _08026A90
	.align 2, 0
_08026A70: .4byte gBgmMainVolume
_08026A74: .4byte 0x04000050
_08026A78: .4byte 0x00003FBF
_08026A7C: .4byte 0x04000054
_08026A80:
	bl SyncVblank
	lsls r0, r4, #0x10
	ldr r1, _08026AF0
	adds r0, r0, r1
	lsrs r4, r0, #0x10
	bl SkipVblank
_08026A90:
	cmp r4, #0
	bne _08026A80
	mov r2, r8
	lsrs r4, r2, #0x10
	lsls r0, r5, #0x10
	movs r1, #0x80
	lsls r1, r1, #0xa
	adds r0, r0, r1
	lsrs r5, r0, #0x10
	ldr r0, _08026AF4
	strh r5, [r0]
	cmp r7, #0
	beq _08026AC2
	mov r2, sb
	subs r6, r6, r2
	cmp r6, #0
	bge _08026AB4
	movs r6, #0
_08026AB4:
	ldr r0, _08026AF8
	asrs r1, r6, #0x10
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r0, [r1]
	bl audio_set_tune_vol
_08026AC2:
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xf
	ble _08026A90
	cmp r7, #0
	beq _08026AD6
	ldr r0, _08026AF8
	ldr r0, [r0]
	bl audio_set_tune_vol
_08026AD6:
	movs r1, #0xe0
	lsls r1, r1, #0x13
	movs r2, #0x80
	lsls r2, r2, #1
	movs r0, #0xaa
	bl DmaFill32
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08026AF0: .4byte 0xFFFF0000
_08026AF4: .4byte 0x04000054
_08026AF8: .4byte dVolumes

    .thumb
	.global SetAlphaBlending
SetAlphaBlending: @ 0x08026AFC
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r2, #0x10
	subs r2, r2, r0
	lsls r2, r2, #8
	movs r3, #0xf8
	lsls r3, r3, #5
	adds r1, r3, #0
	ands r2, r1
	movs r1, #0x1f
	ands r1, r0
	orrs r2, r1
	ldr r0, _08026B1C
	strh r2, [r0]
	bx lr
	.align 2, 0
_08026B1C: .4byte 0x04000052

    .thumb
	.global SetObjectsFullAlpha
SetObjectsFullAlpha: @ 0x08026B20
	push {lr}
	ldr r1, _08026B34
	ldr r2, _08026B38
	adds r0, r2, #0
	strh r0, [r1]
	movs r0, #0
	bl SetAlphaBlending
	pop {r0}
	bx r0
	.align 2, 0
_08026B34: .4byte 0x04000050
_08026B38: .4byte 0x00003F50

    .thumb
	.global FadeOutObjects
FadeOutObjects: @ 0x08026B3C
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r2, r1, #0
	cmp r4, #0
	bgt _08026B4A
	.2byte 0xEE00, 0xEE00
_08026B4A:
	ldr r0, _08026B98
	ldr r3, _08026B9C
	adds r1, r3, #0
	orrs r2, r1
	strh r2, [r0]
	movs r6, #0x10
	movs r0, #0x10
	bl SetAlphaBlending
	lsls r0, r4, #0x10
	lsrs r5, r0, #0x10
	adds r7, r0, #0
_08026B62:
	lsls r4, r6, #0x10
	cmp r5, #0
	beq _08026B78
_08026B68:
	bl SyncVblank
	lsls r0, r5, #0x10
	ldr r1, _08026BA0
	adds r0, r0, r1
	lsrs r5, r0, #0x10
	cmp r0, #0
	bne _08026B68
_08026B78:
	lsrs r5, r7, #0x10
	ldr r3, _08026BA4
	adds r0, r4, r3
	lsrs r6, r0, #0x10
	lsls r4, r6, #0x10
	lsrs r0, r4, #0x10
	bl SetAlphaBlending
	cmp r4, #0
	bgt _08026B62
	movs r0, #0
	bl SetAlphaBlending
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08026B98: .4byte 0x04000050
_08026B9C: .4byte 0x00003F50
_08026BA0: .4byte 0xFFFF0000
_08026BA4: .4byte 0xFFFE0000

    .thumb
	.global sub_08026BA8
sub_08026BA8: @ 0x08026BA8
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r2, r1, #0
	cmp r4, #0
	bgt _08026BB6
	.2byte 0xEE00, 0xEE00
_08026BB6:
	ldr r0, _08026C14
	ldr r3, _08026C18
	adds r1, r3, #0
	orrs r2, r1
	strh r2, [r0]
	movs r6, #0
	movs r0, #0
	bl SetAlphaBlending
	lsls r0, r4, #0x10
	lsrs r5, r0, #0x10
	adds r7, r0, #0
_08026BCE:
	lsls r4, r6, #0x10
	cmp r5, #0
	beq _08026BE4
_08026BD4:
	bl SyncVblank
	lsls r0, r5, #0x10
	ldr r1, _08026C1C
	adds r0, r0, r1
	lsrs r5, r0, #0x10
	cmp r0, #0
	bne _08026BD4
_08026BE4:
	lsrs r5, r7, #0x10
	movs r2, #0x80
	lsls r2, r2, #0xa
	adds r0, r4, r2
	lsrs r6, r0, #0x10
	lsls r4, r6, #0x10
	lsrs r0, r4, #0x10
	bl SetAlphaBlending
	asrs r4, r4, #0x10
	cmp r4, #0xf
	ble _08026BCE
	ldr r1, _08026C14
	movs r3, #0xfc
	lsls r3, r3, #6
	adds r0, r3, #0
	strh r0, [r1]
	adds r1, #2
	ldr r2, _08026C20
	adds r0, r2, #0
	strh r0, [r1]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08026C14: .4byte 0x04000050
_08026C18: .4byte 0x00003F50
_08026C1C: .4byte 0xFFFF0000
_08026C20: .4byte 0x00000907

    .thumb
	.global sub_8026C24
sub_8026C24: @ 0x08026C24
	push {r4, lr}
	ldr r4, _08026C58
	movs r2, #0
	movs r1, #1
	strb r1, [r4]
	movs r3, #0
	strh r2, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #2
	strh r1, [r4, #6]
	str r2, [r4, #8]
	str r0, [r4, #0xc]
	strb r3, [r4, #1]
	ldr r0, _08026C5C
	strh r0, [r4, #2]
	movs r0, #0xf8
	lsls r0, r0, #0xd
	str r0, [r4, #0x10]
	str r0, [r4, #0x14]
	str r0, [r4, #0x18]
	ldr r1, _08026C60
	ldr r2, _08026C64
	adds r0, r4, #0
	bl sub_80039EC
	b _08026C76
	.align 2, 0
_08026C58: .4byte 0x0200DC94
_08026C5C: .4byte 0x0000FFFF
_08026C60: .4byte 0x02007C90
_08026C64: .4byte 0x02009490
_08026C68:
	bl SyncVblank
	adds r0, r4, #0
	ldr r1, _08026C84
	ldr r2, _08026C88
	bl sub_80274FC
_08026C76:
	ldrb r0, [r4]
	cmp r0, #0
	bne _08026C68
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08026C84: .4byte 0x02007C90
_08026C88: .4byte 0x02009490

    .thumb
	.global sub_8026C8C
sub_8026C8C: @ 0x08026C8C
	push {r4, lr}
	ldr r1, _08026CBC
	ldr r0, [r1, #0xc]
	rsbs r0, r0, #0
	str r0, [r1, #0xc]
	movs r0, #0
	strh r0, [r1, #2]
	movs r0, #1
	strb r0, [r1]
	adds r4, r1, #0
_08026CA0:
	bl SyncVblank
	adds r0, r4, #0
	ldr r1, _08026CC0
	ldr r2, _08026CC4
	bl sub_80274FC
	ldrb r0, [r4]
	cmp r0, #0
	bne _08026CA0
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08026CBC: .4byte 0x0200DC94
_08026CC0: .4byte 0x02007C90
_08026CC4: .4byte 0x02009490

    .thumb
	.global sub_8026CC8
sub_8026CC8: @ 0x08026CC8
	push {r4, r5, lr}
	ldr r5, _08026D14
	movs r3, #0
	movs r2, #1
	strb r2, [r5]
	movs r4, #0
	strh r3, [r5, #4]
	adds r2, #0xff
	strh r2, [r5, #6]
	str r3, [r5, #8]
	str r0, [r5, #0xc]
	strb r4, [r5, #1]
	strh r1, [r5, #2]
	str r3, [r5, #0x10]
	str r3, [r5, #0x14]
	str r3, [r5, #0x18]
	ldr r1, _08026D18
	ldr r2, _08026D1C
	adds r0, r5, #0
	bl sub_80039EC
	ldrb r0, [r5]
	cmp r0, #0
	beq _08026D0E
	adds r4, r5, #0
_08026CFA:
	bl SyncVblank
	adds r0, r4, #0
	ldr r1, _08026D18
	ldr r2, _08026D1C
	bl sub_80274FC
	ldrb r0, [r4]
	cmp r0, #0
	bne _08026CFA
_08026D0E:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08026D14: .4byte 0x0200DC94
_08026D18: .4byte 0x02007C90
_08026D1C: .4byte 0x02009490

    .thumb
    .global sub_8026D20
sub_8026D20: @ 0x08026D20
	push {r4, r5, r6, lr}
	ldr r6, _08026D78
	movs r5, #0
	movs r4, #1
	strb r4, [r6]
	movs r4, #0
	strh r2, [r6, #4]
	strh r3, [r6, #6]
	str r5, [r6, #8]
	str r0, [r6, #0xc]
	strb r4, [r6, #1]
	strh r1, [r6, #2]
	str r5, [r6, #0x10]
	str r5, [r6, #0x14]
	str r5, [r6, #0x18]
	ldrh r0, [r6, #4]
	lsls r2, r0, #1
	adds r2, r2, r0
	lsls r2, r2, #2
	ldr r1, _08026D7C
	adds r1, r2, r1
	ldr r0, _08026D80
	adds r2, r2, r0
	adds r0, r6, #0
	bl sub_80039EC
	ldrb r0, [r6]
	cmp r0, #0
	beq _08026D70
	adds r4, r6, #0
_08026D5C:
	bl SyncVblank
	adds r0, r4, #0
	ldr r1, _08026D7C
	ldr r2, _08026D80
	bl sub_80274FC
	ldrb r0, [r4]
	cmp r0, #0
	bne _08026D5C
_08026D70:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08026D78: .4byte 0x0200DC94
_08026D7C: .4byte 0x02007C90
_08026D80: .4byte 0x02009490

    .thumb
	.global sub_8026D84
sub_8026D84: @ 0x08026D84
	push {r4, lr}
	ldr r1, _08026DB4
	ldr r0, [r1, #0xc]
	rsbs r0, r0, #0
	str r0, [r1, #0xc]
	movs r0, #0
	strh r0, [r1, #2]
	movs r0, #1
	strb r0, [r1]
	adds r4, r1, #0
_08026D98:
	bl SyncVblank
	adds r0, r4, #0
	ldr r1, _08026DB8
	ldr r2, _08026DBC
	bl sub_80274FC
	ldrb r0, [r4]
	cmp r0, #0
	bne _08026D98
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08026DB4: .4byte 0x0200DC94
_08026DB8: .4byte 0x02007C90
_08026DBC: .4byte 0x02009490

    .thumb
    .global sub_8026DC0
sub_8026DC0: @ 0x08026DC0
	push {lr}
	ldr r0, _08026E24
	ldr r1, _08026E28
	ldr r2, _08026E2C
	bl sub_80274FC
	ldr r0, _08026E30
	ldrb r0, [r0]
	cmp r0, #0
	beq _08026DFC
	ldr r2, _08026E34
	ldr r0, _08026E38
	ldr r1, [r2]
	ldr r0, [r0]
	adds r1, r1, r0
	str r1, [r2]
	ldr r0, _08026E3C
	ldrb r0, [r0]
	lsls r0, r0, #0x10
	cmp r1, r0
	ble _08026DEC
	str r0, [r2]
_08026DEC:
	ldr r0, _08026E40
	movs r3, #2
	ldrsh r1, [r2, r3]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r0, [r1]
	bl audio_set_tune_vol
_08026DFC:
	ldr r0, _08026E24
	ldrb r1, [r0]
	cmp r1, #0
	bne _08026E20
	ldr r0, _08026E44
	strb r1, [r0]
	ldr r0, _08026E30
	ldrb r0, [r0]
	cmp r0, #0
	beq _08026E20
	ldr r1, _08026E40
	ldr r0, _08026E3C
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl audio_set_tune_vol
_08026E20:
	pop {r0}
	bx r0
	.align 2, 0
_08026E24: .4byte 0x0200DCB0
_08026E28: .4byte 0x0200AC90
_08026E2C: .4byte 0x0200C490
_08026E30: .4byte 0x0200DCCC
_08026E34: .4byte 0x0200DCD0
_08026E38: .4byte 0x0200DCD4
_08026E3C: .4byte gBgmMainVolume
_08026E40: .4byte dVolumes
_08026E44: .4byte gIsPaletteEffectsActive

    .thumb
    .global sub_8026E48
sub_8026E48: @ 0x08026E48
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r5, r0, #0
	mov r8, r1
	mov sb, r2
	cmp r1, #0
	beq _08026E72
	ldr r4, _08026F30
	ldr r0, _08026F34
	ldrb r0, [r0]
	lsls r0, r0, #0x10
	str r0, [r4]
	adds r1, r5, #0
	bl CallARM_FX_Mul16
	ldr r1, _08026F38
	str r0, [r1]
	movs r0, #0
	str r0, [r4]
_08026E72:
	ldr r7, _08026F3C
	movs r6, #0
	movs r0, #1
	strb r0, [r7]
	strh r6, [r7, #4]
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r7, #6]
	ldr r0, _08026F40
	str r0, [r7, #8]
	rsbs r1, r5, #0
	str r1, [r7, #0xc]
	adds r1, r5, #0
	bl sub_800392C
	asrs r0, r0, #0x10
	strb r0, [r7, #1]
	strh r6, [r7, #2]
	str r6, [r7, #0x10]
	str r6, [r7, #0x14]
	str r6, [r7, #0x18]
	ldr r4, _08026F44
	ldr r5, _08026F48
	adds r0, r7, #0
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_80039EC
	adds r0, r7, #0
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_80039FC
	ldr r1, _08026F4C
	ldr r0, _08026F50
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r0, _08026F54
	strh r6, [r0]
	ldr r0, _08026F58
	mov r1, sb
	strb r1, [r0]
	mov r0, sb
	cmp r0, #0
	bne _08026F60
	ldrb r0, [r7]
	cmp r0, #0
	beq _08026F16
	ldr r4, _08026F5C
_08026ED4:
	bl SyncVblank
	ldr r0, _08026F3C
	ldr r1, _08026F44
	ldr r2, _08026F48
	bl sub_80274FC
	mov r1, r8
	cmp r1, #0
	beq _08026F0E
	ldr r2, _08026F30
	ldr r0, _08026F38
	ldr r1, [r2]
	ldr r0, [r0]
	adds r1, r1, r0
	str r1, [r2]
	ldr r0, _08026F34
	ldrb r0, [r0]
	lsls r0, r0, #0x10
	cmp r1, r0
	ble _08026F00
	str r0, [r2]
_08026F00:
	movs r1, #2
	ldrsh r0, [r2, r1]
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	bl audio_set_tune_vol
_08026F0E:
	ldr r0, _08026F3C
	ldrb r0, [r0]
	cmp r0, #0
	bne _08026ED4
_08026F16:
	mov r0, r8
	cmp r0, #0
	beq _08026F66
	ldr r1, _08026F5C
	ldr r0, _08026F34
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl audio_set_tune_vol
	b _08026F66
	.align 2, 0
_08026F30: .4byte 0x0200DCD0
_08026F34: .4byte gBgmMainVolume
_08026F38: .4byte 0x0200DCD4
_08026F3C: .4byte 0x0200DCB0
_08026F40: .4byte 0x0000FFFF
_08026F44: .4byte 0x0200AC90
_08026F48: .4byte 0x0200C490
_08026F4C: .4byte 0x04000050
_08026F50: .4byte gColorSpecEffectsSel
_08026F54: .4byte 0x04000054
_08026F58: .4byte gIsPaletteEffectsActive
_08026F5C: .4byte dVolumes
_08026F60:
	ldr r0, _08026F74
	mov r1, r8
	strb r1, [r0]
_08026F66:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08026F74: .4byte 0x0200DCCC

    .thumb
    .global sub_8026F78
sub_8026F78: @ 0x08026F78
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r5, r0, #0
	adds r6, r1, #0
	mov sb, r2
	cmp r6, #0
	beq _08026FA2
	ldr r4, _08027068
	ldr r0, _0802706C
	ldrb r0, [r0]
	lsls r0, r0, #0x10
	str r0, [r4]
	adds r1, r5, #0
	bl CallARM_FX_Mul16
	ldr r1, _08027070
	str r0, [r1]
	movs r0, #0
	str r0, [r4]
_08026FA2:
	ldr r7, _08027074
	movs r0, #0
	mov r8, r0
	movs r0, #1
	strb r0, [r7]
	mov r1, r8
	strh r1, [r7, #4]
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r7, #6]
	ldr r0, _08027078
	str r0, [r7, #8]
	rsbs r1, r5, #0
	str r1, [r7, #0xc]
	adds r1, r5, #0
	bl sub_800392C
	asrs r0, r0, #0x10
	strb r0, [r7, #1]
	mov r0, r8
	strh r0, [r7, #2]
	movs r0, #0xf8
	lsls r0, r0, #0xd
	str r0, [r7, #0x10]
	str r0, [r7, #0x14]
	str r0, [r7, #0x18]
	ldr r4, _0802707C
	ldr r5, _08027080
	adds r0, r7, #0
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_80039EC
	adds r0, r7, #0
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_80039FC
	ldr r1, _08027084
	ldr r0, _08027088
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r0, _0802708C
	mov r1, r8
	strh r1, [r0]
	ldr r0, _08027090
	mov r1, sb
	strb r1, [r0]
	mov r0, sb
	cmp r0, #0
	bne _08027098
	ldrb r0, [r7]
	cmp r0, #0
	beq _08027050
	ldr r4, _08027094
_08027010:
	bl SyncVblank
	ldr r0, _08027074
	ldr r1, _0802707C
	ldr r2, _08027080
	bl sub_80274FC
	cmp r6, #0
	beq _08027048
	ldr r2, _08027068
	ldr r0, _08027070
	ldr r1, [r2]
	ldr r0, [r0]
	adds r1, r1, r0
	str r1, [r2]
	ldr r0, _0802706C
	ldrb r0, [r0]
	lsls r0, r0, #0x10
	cmp r1, r0
	ble _0802703A
	str r0, [r2]
_0802703A:
	movs r1, #2
	ldrsh r0, [r2, r1]
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	bl audio_set_tune_vol
_08027048:
	ldr r0, _08027074
	ldrb r0, [r0]
	cmp r0, #0
	bne _08027010
_08027050:
	cmp r6, #0
	beq _0802709C
	ldr r1, _08027094
	ldr r0, _0802706C
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl audio_set_tune_vol
	b _0802709C
	.align 2, 0
_08027068: .4byte 0x0200DCD0
_0802706C: .4byte gBgmMainVolume
_08027070: .4byte 0x0200DCD4
_08027074: .4byte 0x0200DCB0
_08027078: .4byte 0x0000FFFF
_0802707C: .4byte 0x0200AC90
_08027080: .4byte 0x0200C490
_08027084: .4byte 0x04000050
_08027088: .4byte gColorSpecEffectsSel
_0802708C: .4byte 0x04000054
_08027090: .4byte gIsPaletteEffectsActive
_08027094: .4byte dVolumes
_08027098:
	ldr r0, _080270A8
	strb r6, [r0]
_0802709C:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080270A8: .4byte 0x0200DCCC

    .thumb
    .global sub_80270AC
sub_80270AC: @ 0x080270AC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	adds r6, r0, #0
	adds r5, r1, #0
	movs r4, #0
	movs r7, #0
	cmp r5, #0
	beq _080270CC
	ldr r0, _08027180
	ldrb r0, [r0]
	lsls r4, r0, #0x10
	adds r0, r4, #0
	adds r1, r6, #0
	bl CallARM_FX_Mul16
	adds r7, r0, #0
_080270CC:
	mov r1, sp
	movs r2, #0
	movs r0, #1
	strb r0, [r1]
	mov r0, sp
	movs r3, #0
	strh r2, [r0, #4]
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r1, #6]
	str r2, [sp, #8]
	str r6, [sp, #0xc]
	mov r0, sp
	strb r3, [r0, #1]
	ldr r0, _08027184
	strh r0, [r1, #2]
	str r2, [sp, #0x10]
	str r2, [sp, #0x14]
	str r2, [sp, #0x18]
	ldr r1, _08027188
	ldr r2, _0802718C
	mov r0, sp
	bl sub_80039EC
	mov r0, sp
	ldrb r0, [r0]
	cmp r0, #0
	beq _08027134
	ldr r6, _08027190
_08027106:
	bl SyncVblank
	mov r0, sp
	ldr r1, _08027188
	ldr r2, _0802718C
	bl sub_80274FC
	cmp r5, #0
	beq _0802712C
	subs r4, r4, r7
	cmp r4, #0
	bge _08027120
	movs r4, #0
_08027120:
	asrs r0, r4, #0x10
	lsls r0, r0, #2
	adds r0, r0, r6
	ldr r0, [r0]
	bl audio_set_tune_vol
_0802712C:
	mov r0, sp
	ldrb r0, [r0]
	cmp r0, #0
	bne _08027106
_08027134:
	cmp r5, #0
	beq _08027140
	ldr r0, _08027190
	ldr r0, [r0]
	bl audio_set_tune_vol
_08027140:
	movs r1, #0xe0
	lsls r1, r1, #0x13
	movs r2, #0x80
	lsls r2, r2, #1
	movs r0, #0xaa
	bl DmaFill32
	ldr r1, _08027194
	ldr r2, _08027198
	ldrh r0, [r2]
	strh r0, [r1]
	ldr r1, _0802719C
	movs r0, #0x10
	strh r0, [r1]
	ldr r1, _080271A0
	adds r0, r1, #0
	strh r0, [r2]
	movs r1, #0
	str r1, [sp, #8]
	mov r0, sp
	strb r1, [r0, #1]
	ldr r1, _08027188
	ldr r2, _0802718C
	bl sub_80039FC
	bl SkipVblank
	add sp, #0x1c
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08027180: .4byte gBgmMainVolume
_08027184: .4byte 0x0000FFFF
_08027188: .4byte 0x0200AC90
_0802718C: .4byte 0x0200C490
_08027190: .4byte dVolumes
_08027194: .4byte gColorSpecEffectsSel
_08027198: .4byte 0x04000050
_0802719C: .4byte 0x04000054
_080271A0: .4byte 0x00003FFF

    .thumb
    .global sub_80271A4
sub_80271A4: @ 0x080271A4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	adds r6, r0, #0
	adds r5, r1, #0
	movs r4, #0
	movs r7, #0
	cmp r5, #0
	beq _080271C4
	ldr r0, _0802727C
	ldrb r0, [r0]
	lsls r4, r0, #0x10
	adds r0, r4, #0
	adds r1, r6, #0
	bl CallARM_FX_Mul16
	adds r7, r0, #0
_080271C4:
	mov r1, sp
	movs r2, #0
	movs r0, #1
	strb r0, [r1]
	mov r0, sp
	movs r3, #0
	strh r2, [r0, #4]
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r1, #6]
	str r2, [sp, #8]
	str r6, [sp, #0xc]
	mov r0, sp
	strb r3, [r0, #1]
	ldr r0, _08027280
	strh r0, [r1, #2]
	movs r0, #0xf8
	lsls r0, r0, #0xd
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	str r0, [sp, #0x18]
	ldr r1, _08027284
	ldr r2, _08027288
	mov r0, sp
	bl sub_80039EC
	mov r0, sp
	ldrb r0, [r0]
	cmp r0, #0
	beq _08027230
	ldr r6, _0802728C
_08027202:
	bl SyncVblank
	mov r0, sp
	ldr r1, _08027284
	ldr r2, _08027288
	bl sub_80274FC
	cmp r5, #0
	beq _08027228
	subs r4, r4, r7
	cmp r4, #0
	bge _0802721C
	movs r4, #0
_0802721C:
	asrs r0, r4, #0x10
	lsls r0, r0, #2
	adds r0, r0, r6
	ldr r0, [r0]
	bl audio_set_tune_vol
_08027228:
	mov r0, sp
	ldrb r0, [r0]
	cmp r0, #0
	bne _08027202
_08027230:
	cmp r5, #0
	beq _0802723C
	ldr r0, _0802728C
	ldr r0, [r0]
	bl audio_set_tune_vol
_0802723C:
	movs r1, #0xe0
	lsls r1, r1, #0x13
	movs r2, #0x80
	lsls r2, r2, #1
	movs r0, #0xaa
	bl DmaFill32
	ldr r1, _08027290
	ldr r2, _08027294
	ldrh r0, [r2]
	strh r0, [r1]
	ldr r1, _08027298
	movs r0, #0x10
	strh r0, [r1]
	ldr r1, _0802729C
	adds r0, r1, #0
	strh r0, [r2]
	movs r1, #0
	str r1, [sp, #8]
	mov r0, sp
	strb r1, [r0, #1]
	ldr r1, _08027284
	ldr r2, _08027288
	bl sub_80039FC
	bl SkipVblank
	add sp, #0x1c
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802727C: .4byte gBgmMainVolume
_08027280: .4byte 0x0000FFFF
_08027284: .4byte 0x0200AC90
_08027288: .4byte 0x0200C490
_0802728C: .4byte dVolumes
_08027290: .4byte gColorSpecEffectsSel
_08027294: .4byte 0x04000050
_08027298: .4byte 0x04000054
_0802729C: .4byte 0x00003FBF

    .thumb
    .global sub_080272A0
sub_080272A0: @ 0x080272A0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r7, r0, #0
	adds r6, r1, #0
	mov r8, r2
	mov sb, r3
	ldr r0, _080272C0
	ldrb r0, [r0]
	cmp r0, #0x10
	bne _080272C4
	movs r0, #1
	rsbs r0, r0, #0
	b _0802735E
	.align 2, 0
_080272C0: .4byte 0x0200DC90
_080272C4:
	movs r5, #0
	ldr r1, _0802736C
	ldrb r0, [r1]
	mov ip, r1
	ldr r1, _08027370
	mov sl, r1
	cmp r0, #0
	beq _080272E4
	mov r1, ip
_080272D6:
	adds r1, #0x1c
	adds r5, #1
	cmp r5, #0xf
	bgt _080272E4
	ldrb r0, [r1]
	cmp r0, #0
	bne _080272D6
_080272E4:
	cmp r5, #0x10
	bne _080272EC
	.2byte 0xEE00, 0xEE00
_080272EC:
	lsls r3, r5, #3
	subs r3, r3, r5
	lsls r3, r3, #2
	mov r4, ip
	adds r0, r3, r4
	movs r4, #0
	movs r1, #1
	strb r1, [r0]
	ldrb r1, [r7]
	lsls r1, r1, #4
	movs r2, #0
	strh r1, [r0, #4]
	ldrb r1, [r7, #1]
	lsls r1, r1, #4
	adds r1, #0x10
	strh r1, [r0, #6]
	mov r1, ip
	adds r1, #8
	adds r1, r3, r1
	str r4, [r1]
	mov r1, ip
	adds r1, #0xc
	adds r1, r3, r1
	mov r4, r8
	str r4, [r1]
	strb r2, [r0, #1]
	mov r1, sb
	strh r1, [r0, #2]
	mov r2, ip
	adds r2, #0x10
	adds r2, r3, r2
	ldrb r1, [r6]
	lsls r1, r1, #0x10
	str r1, [r2]
	mov r2, ip
	adds r2, #0x14
	adds r2, r3, r2
	ldrb r1, [r6, #1]
	lsls r1, r1, #0x10
	str r1, [r2]
	mov r1, ip
	adds r1, #0x18
	adds r3, r3, r1
	ldrb r1, [r6, #2]
	lsls r1, r1, #0x10
	str r1, [r3]
	ldrh r1, [r0, #4]
	lsls r2, r1, #1
	adds r2, r2, r1
	lsls r2, r2, #2
	mov r3, sl
	adds r1, r2, r3
	ldr r4, _08027374
	adds r2, r2, r4
	bl sub_80039EC
	adds r0, r5, #0
_0802735E:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0802736C: .4byte 0x020076C4
_08027370: .4byte 0x02002EC4
_08027374: .4byte 0x020046C4

    .thumb
    .global sub_08027378
sub_08027378: @ 0x08027378
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r7, r0, #0
	mov sb, r1
	mov ip, r2
	mov r8, r3
	ldr r0, _08027398
	ldrb r0, [r0]
	cmp r0, #0x10
	bne _0802739C
	movs r0, #1
	rsbs r0, r0, #0
	b _08027412
	.align 2, 0
_08027398: .4byte 0x0200DC90
_0802739C:
	movs r5, #0
	ldr r0, _08027420
	ldrb r1, [r0]
	adds r6, r0, #0
	ldr r0, _08027424
	mov sl, r0
	cmp r1, #0
	beq _080273BC
	adds r1, r6, #0
_080273AE:
	adds r1, #0x1c
	adds r5, #1
	cmp r5, #0xf
	bgt _080273BC
	ldrb r0, [r1]
	cmp r0, #0
	bne _080273AE
_080273BC:
	cmp r5, #0x10
	bne _080273C4
	.2byte 0xEE00, 0xEE00
_080273C4:
	lsls r2, r5, #3
	subs r2, r2, r5
	lsls r2, r2, #2
	adds r0, r2, r6
	movs r4, #0
	movs r1, #1
	strb r1, [r0]
	ldrb r1, [r7]
	lsls r1, r1, #4
	movs r3, #0
	strh r1, [r0, #4]
	ldrb r1, [r7, #1]
	lsls r1, r1, #4
	adds r1, #0x10
	strh r1, [r0, #6]
	adds r1, r6, #0
	adds r1, #8
	adds r1, r2, r1
	str r4, [r1]
	adds r1, r6, #0
	adds r1, #0xc
	adds r2, r2, r1
	mov r1, ip
	str r1, [r2]
	strb r3, [r0, #1]
	mov r2, r8
	strh r2, [r0, #2]
	ldrh r1, [r0, #4]
	lsls r3, r1, #1
	adds r3, r3, r1
	lsls r3, r3, #2
	mov r4, sl
	adds r1, r3, r4
	ldr r4, _08027428
	adds r2, r3, r4
	add r3, sb
	bl sub_80039F4
	adds r0, r5, #0
_08027412:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08027420: .4byte 0x020076C4
_08027424: .4byte 0x02002EC4
_08027428: .4byte 0x020046C4

    .thumb
    .global sub_802742C
sub_802742C: @ 0x0802742C
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r6, r1, #0
	adds r7, r2, #0
	ldr r1, _08027464
	lsls r0, r4, #3
	subs r0, r0, r4
	lsls r2, r0, #2
	adds r0, r1, #0
	adds r0, #8
	adds r0, r2, r0
	ldr r3, [r0]
	adds r0, r1, #0
	adds r0, #0xc
	adds r0, r2, r0
	ldr r0, [r0]
	adds r3, r3, r0
	adds r5, r1, #0
	cmp r0, #0
	blt _08027468
	adds r1, r2, r5
	ldrh r0, [r1, #2]
	cmp r3, r0
	bgt _08027470
	ldrb r0, [r1, #1]
	adds r0, #1
	b _0802747C
	.align 2, 0
_08027464: .4byte 0x020076C4
_08027468:
	adds r1, r2, r5
	ldrh r0, [r1, #2]
	cmp r3, r0
	bge _08027478
_08027470:
	adds r3, r0, #0
	movs r0, #0
	strb r0, [r1]
	b _0802747E
_08027478:
	ldrb r0, [r1, #1]
	subs r0, #1
_0802747C:
	strb r0, [r1, #1]
_0802747E:
	lsls r0, r4, #3
	subs r0, r0, r4
	lsls r0, r0, #2
	adds r1, r5, #0
	adds r1, #8
	adds r1, r0, r1
	str r3, [r1]
	adds r0, r0, r5
	ldrh r1, [r0, #4]
	lsls r2, r1, #1
	adds r2, r2, r1
	lsls r2, r2, #2
	adds r1, r6, r2
	adds r2, r7, r2
	bl sub_80039FC
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

    .thumb
    .global sub_80274A4
sub_80274A4: @ 0x080274A4
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	mov sb, r1
	adds r6, r2, #0
	mov r8, r3
	ldr r5, _080274F8
	lsls r4, r0, #3
	subs r4, r4, r0
	lsls r4, r4, #2
	adds r0, r5, #0
	adds r0, #0xc
	adds r0, r4, r0
	ldr r0, [r0]
	lsls r1, r1, #0x10
	bl CallARM_FX_Mul16
	adds r1, r5, #0
	adds r1, #8
	adds r1, r4, r1
	str r0, [r1]
	adds r4, r4, r5
	mov r0, sb
	strb r0, [r4, #1]
	ldrh r1, [r4, #4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r6, r6, r0
	add r8, r0
	adds r0, r4, #0
	adds r1, r6, #0
	mov r2, r8
	bl sub_80039FC
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080274F8: .4byte 0x020076C4

    .thumb
sub_80274FC: @ 0x080274FC
	push {r4, lr}
	adds r3, r0, #0
	adds r4, r2, #0
	ldr r2, [r3, #8]
	ldr r0, [r3, #0xc]
	adds r2, r2, r0
	cmp r0, #0
	blt _08027518
	ldrh r0, [r3, #2]
	cmp r2, r0
	bgt _0802751E
	ldrb r0, [r3, #1]
	adds r0, #1
	b _0802752A
_08027518:
	ldrh r0, [r3, #2]
	cmp r2, r0
	bge _08027526
_0802751E:
	adds r2, r0, #0
	movs r0, #0
	strb r0, [r3]
	b _0802752C
_08027526:
	ldrb r0, [r3, #1]
	subs r0, #1
_0802752A:
	strb r0, [r3, #1]
_0802752C:
	str r2, [r3, #8]
	ldrh r0, [r3, #4]
	lsls r2, r0, #1
	adds r2, r2, r0
	lsls r2, r2, #2
	adds r1, r1, r2
	adds r2, r4, r2
	adds r0, r3, #0
	bl sub_80039FC
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	.thumb
sub_8027548: @ 0x08027548
	push {r4, r5, r6, r7, lr}
	lsls r2, r2, #4
	adds r2, #0x10
	lsls r5, r1, #4
	cmp r5, r2
	bge _0802759A
	movs r3, #0x1f
	mov ip, r3
	ldr r7, _080275A0
	lsls r6, r0, #5
	lsls r0, r1, #5
	movs r1, #0xa0
	lsls r1, r1, #0x13
	adds r4, r0, r1
	subs r5, r2, r5
_08027566:
	ldrh r2, [r4]
	mov r0, ip
	ands r0, r2
	lsls r2, r2, #0x10
	lsrs r1, r2, #0x15
	mov r3, ip
	ands r1, r3
	lsrs r2, r2, #0x1a
	adds r0, r6, r0
	adds r0, r0, r7
	ldrb r3, [r0]
	adds r1, r6, r1
	adds r1, r1, r7
	ldrb r1, [r1]
	adds r2, r6, r2
	adds r2, r2, r7
	ldrb r0, [r2]
	lsls r1, r1, #5
	orrs r3, r1
	lsls r0, r0, #0xa
	orrs r3, r0
	strh r3, [r4]
	adds r4, #2
	subs r5, #1
	cmp r5, #0
	bne _08027566
_0802759A:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080275A0: .4byte 0x080CECA0

    .thumb
    .global sub_80275A4
sub_80275A4: @ 0x080275A4
	push {lr}
	ldr r1, _080275C4
	movs r0, #0
	strb r0, [r1]
	ldr r1, _080275C8
	movs r2, #0
	movs r3, #0xd2
	lsls r3, r3, #1
	adds r0, r1, r3
_080275B6:
	strb r2, [r0]
	subs r0, #0x1c
	cmp r0, r1
	bge _080275B6
	pop {r0}
	bx r0
	.align 2, 0
_080275C4: .4byte 0x0200DC90
_080275C8: .4byte 0x020076C4

    .thumb
    .global sub_80275CC
sub_80275CC: @ 0x080275CC
	push {lr}
	adds r2, r0, #0
	ldr r1, _080275E0
	ldrb r0, [r1]
	cmp r0, #0
	bne _080275E4
	bl sub_80275A4
	b _080275F6
	.align 2, 0
_080275E0: .4byte 0x0200DC90
_080275E4:
	subs r0, #1
	strb r0, [r1]
	ldr r1, _080275FC
	lsls r0, r2, #3
	subs r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r1
	movs r1, #0
	strb r1, [r0]
_080275F6:
	pop {r0}
	bx r0
	.align 2, 0
_080275FC: .4byte 0x020076C4
