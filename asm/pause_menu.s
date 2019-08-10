
    .syntax unified

    .text

    .thumb
    .global OpenPauseMenu
OpenPauseMenu: @ 0x0804505C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r1, _080451D8
	movs r0, #1
	strb r0, [r1]
	bl audio_halt_all_fx
	movs r0, #1
	bl sub_80528D8
	bl RemovePaletteEffect
	ldr r0, _080451DC
	movs r3, #0
	movs r2, #1
	strb r2, [r0, #0x10]
	strb r3, [r0, #0x12]
	strb r2, [r0, #0xa]
	movs r1, #0
	mov r8, r1
	movs r7, #0xf0
	mov sb, r7
	mov r1, sb
	strh r1, [r0, #8]
	movs r4, #0xa
	strh r4, [r0, #0xe]
	strh r3, [r0, #0xc]
	movs r6, #6
	strb r6, [r0, #0x11]
	ldr r5, _080451E0
	str r5, [r0, #4]
	ldr r0, _080451E4
	strb r2, [r0, #0x10]
	mov r7, r8
	strb r7, [r0, #0x12]
	strb r2, [r0, #0xa]
	strh r1, [r0, #8]
	strh r4, [r0, #0xe]
	strh r3, [r0, #0xc]
	strb r6, [r0, #0x11]
	str r5, [r0, #4]
	ldr r1, _080451E8
	strb r2, [r1, #0x10]
	mov r0, r8
	strb r0, [r1, #0x12]
	strb r2, [r1, #0xa]
	mov r7, sb
	strh r7, [r1, #8]
	strh r4, [r1, #0xe]
	strh r3, [r1, #0xc]
	strb r6, [r1, #0x11]
	str r5, [r1, #4]
	adds r0, r1, #0
	adds r0, #0x24
	strb r2, [r0]
	adds r0, #2
	mov r7, r8
	strb r7, [r0]
	strb r2, [r1, #0x1e]
	mov r0, sb
	strh r0, [r1, #0x1c]
	strh r4, [r1, #0x22]
	strh r3, [r1, #0x20]
	adds r0, r1, #0
	adds r0, #0x25
	strb r6, [r0]
	str r5, [r1, #0x18]
	adds r0, #0x13
	strb r2, [r0]
	adds r0, #2
	strb r7, [r0]
	subs r0, #8
	strb r2, [r0]
	mov r0, sb
	strh r0, [r1, #0x30]
	strh r4, [r1, #0x36]
	strh r3, [r1, #0x34]
	adds r0, r1, #0
	adds r0, #0x39
	strb r6, [r0]
	str r5, [r1, #0x2c]
	ldr r1, _080451EC
	mov sl, r1
	strb r2, [r1, #0x10]
	strb r7, [r1, #0x12]
	strb r2, [r1, #0xa]
	mov r0, sb
	strh r0, [r1, #8]
	strh r4, [r1, #0xe]
	strh r3, [r1, #0xc]
	strb r6, [r1, #0x11]
	str r5, [r1, #4]
	mov r0, sl
	adds r0, #0x24
	strb r2, [r0]
	adds r0, #2
	mov r1, r8
	strb r1, [r0]
	mov r7, sl
	strb r2, [r7, #0x1e]
	mov r0, sb
	strh r0, [r7, #0x1c]
	strh r4, [r7, #0x22]
	strh r3, [r7, #0x20]
	mov r0, sl
	adds r0, #0x25
	strb r6, [r0]
	str r5, [r7, #0x18]
	adds r0, #0x13
	strb r2, [r0]
	adds r0, #2
	strb r1, [r0]
	subs r0, #8
	strb r2, [r0]
	mov r1, sb
	strh r1, [r7, #0x30]
	strh r4, [r7, #0x36]
	strh r3, [r7, #0x34]
	adds r0, #7
	strb r6, [r0]
	str r5, [r7, #0x2c]
	adds r0, #0x13
	strb r2, [r0]
	adds r0, #2
	mov r7, r8
	strb r7, [r0]
	mov r1, sl
	adds r1, #0x46
	movs r0, #2
	strb r0, [r1]
	subs r1, #2
	movs r0, #0xd0
	strh r0, [r1]
	mov r0, sl
	adds r0, #0x4a
	strh r4, [r0]
	subs r0, #2
	strh r3, [r0]
	adds r0, #5
	strb r6, [r0]
	mov r0, sl
	str r5, [r0, #0x40]
	adds r0, #0x60
	strb r2, [r0]
	adds r0, #2
	mov r1, r8
	strb r1, [r0]
	subs r0, #8
	strb r2, [r0]
	subs r0, #2
	mov r7, sb
	strh r7, [r0]
	adds r0, #6
	strh r4, [r0]
	subs r0, #2
	strh r3, [r0]
	adds r0, #5
	strb r6, [r0]
	mov r0, sl
	str r5, [r0, #0x54]
	adds r0, #0x74
	strb r2, [r0]
	adds r0, #2
	strb r1, [r0]
	subs r0, #8
	strb r2, [r0]
	subs r0, #2
	mov r1, sb
	strh r1, [r0]
	adds r0, #6
	strh r4, [r0]
	subs r0, #2
	strh r3, [r0]
	adds r0, #5
	strb r6, [r0]
	mov r2, sl
	str r5, [r2, #0x68]
	ldr r0, _080451F0
	ldrb r0, [r0]
	cmp r0, #4
	bls _080451CE
	b _08045440
_080451CE:
	lsls r0, r0, #2
	ldr r1, _080451F4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080451D8: .4byte 0x0203F4D8
_080451DC: .4byte 0x0203F55C
_080451E0: .4byte 0x080B01B0
_080451E4: .4byte 0x0203F5A8
_080451E8: .4byte 0x0203F670
_080451EC: .4byte 0x0203F5EC
_080451F0: .4byte 0x02000320
_080451F4: .4byte 0x080451F8
_080451F8: @ jump table
	.4byte _0804520C @ case 0
	.4byte _0804527C @ case 1
	.4byte _080452EC @ case 2
	.4byte _080453CC @ case 3
	.4byte _0804535C @ case 4
_0804520C:
	ldr r1, _08045240
	ldr r0, _08045244
	str r0, [r1]
	ldr r1, _08045248
	ldr r0, _0804524C
	str r0, [r1]
	ldr r2, _08045250
	ldr r0, _08045254
	str r0, [r2]
	ldr r0, _08045258
	str r0, [r2, #4]
	ldr r0, _0804525C
	str r0, [r2, #8]
	ldr r0, _08045260
	str r0, [r2, #0xc]
	ldr r0, _08045264
	str r0, [r2, #0x10]
	ldr r0, _08045268
	str r0, [r2, #0x14]
	ldr r1, _0804526C
	ldr r0, _08045270
	str r0, [r1]
	ldr r0, _08045274
	str r0, [r1, #4]
	ldr r0, _08045278
	b _080453FE
	.align 2, 0
_08045240: .4byte 0x0203F550
_08045244: .4byte 0x086AD9E0
_08045248: .4byte 0x0203F554
_0804524C: .4byte 0x08067DC0
_08045250: .4byte 0x0203F5BC
_08045254: .4byte 0x08068058
_08045258: .4byte 0x08068064
_0804525C: .4byte 0x08068074
_08045260: .4byte 0x08068084
_08045264: .4byte 0x080680B0
_08045268: .4byte 0x080680BC
_0804526C: .4byte 0x0203F664
_08045270: .4byte 0x08067DB4
_08045274: .4byte 0x08067DA8
_08045278: .4byte 0x08067D9C
_0804527C:
	ldr r1, _080452B0
	ldr r0, _080452B4
	str r0, [r1]
	ldr r1, _080452B8
	ldr r0, _080452BC
	str r0, [r1]
	ldr r2, _080452C0
	ldr r0, _080452C4
	str r0, [r2]
	ldr r0, _080452C8
	str r0, [r2, #4]
	ldr r0, _080452CC
	str r0, [r2, #8]
	ldr r0, _080452D0
	str r0, [r2, #0xc]
	ldr r0, _080452D4
	str r0, [r2, #0x10]
	ldr r0, _080452D8
	str r0, [r2, #0x14]
	ldr r1, _080452DC
	ldr r0, _080452E0
	str r0, [r1]
	ldr r0, _080452E4
	str r0, [r1, #4]
	ldr r0, _080452E8
	b _080453FE
	.align 2, 0
_080452B0: .4byte 0x0203F550
_080452B4: .4byte 0x086ADAA8
_080452B8: .4byte 0x0203F554
_080452BC: .4byte 0x08067E58
_080452C0: .4byte 0x0203F5BC
_080452C4: .4byte 0x080680E8
_080452C8: .4byte 0x080680FC
_080452CC: .4byte 0x0806810C
_080452D0: .4byte 0x08068120
_080452D4: .4byte 0x08068148
_080452D8: .4byte 0x0806815C
_080452DC: .4byte 0x0203F664
_080452E0: .4byte 0x08067E4C
_080452E4: .4byte 0x08067E3C
_080452E8: .4byte 0x08067E30
_080452EC:
	ldr r1, _08045320
	ldr r0, _08045324
	str r0, [r1]
	ldr r1, _08045328
	ldr r0, _0804532C
	str r0, [r1]
	ldr r2, _08045330
	ldr r0, _08045334
	str r0, [r2]
	ldr r0, _08045338
	str r0, [r2, #4]
	ldr r0, _0804533C
	str r0, [r2, #8]
	ldr r0, _08045340
	str r0, [r2, #0xc]
	ldr r0, _08045344
	str r0, [r2, #0x10]
	ldr r0, _08045348
	str r0, [r2, #0x14]
	ldr r1, _0804534C
	ldr r0, _08045350
	str r0, [r1]
	ldr r0, _08045354
	str r0, [r1, #4]
	ldr r0, _08045358
	b _080453FE
	.align 2, 0
_08045320: .4byte 0x0203F550
_08045324: .4byte 0x086ADC38
_08045328: .4byte 0x0203F554
_0804532C: .4byte 0x08067FB0
_08045330: .4byte 0x0203F5BC
_08045334: .4byte 0x08068244
_08045338: .4byte 0x08068258
_0804533C: .4byte 0x08068264
_08045340: .4byte 0x08068274
_08045344: .4byte 0x08068298
_08045348: .4byte 0x080682AC
_0804534C: .4byte 0x0203F664
_08045350: .4byte 0x08067FA4
_08045354: .4byte 0x08067F98
_08045358: .4byte 0x08067F8C
_0804535C:
	ldr r1, _08045390
	ldr r0, _08045394
	str r0, [r1]
	ldr r1, _08045398
	ldr r0, _0804539C
	str r0, [r1]
	ldr r2, _080453A0
	ldr r0, _080453A4
	str r0, [r2]
	ldr r0, _080453A8
	str r0, [r2, #4]
	ldr r0, _080453AC
	str r0, [r2, #8]
	ldr r0, _080453B0
	str r0, [r2, #0xc]
	ldr r0, _080453B4
	str r0, [r2, #0x10]
	ldr r0, _080453B8
	str r0, [r2, #0x14]
	ldr r1, _080453BC
	ldr r0, _080453C0
	str r0, [r1]
	ldr r0, _080453C4
	str r0, [r1, #4]
	ldr r0, _080453C8
	b _080453FE
	.align 2, 0
_08045390: .4byte 0x0203F550
_08045394: .4byte 0x086ADD00
_08045398: .4byte 0x0203F554
_0804539C: .4byte 0x0806803C
_080453A0: .4byte 0x0203F5BC
_080453A4: .4byte 0x080682E4
_080453A8: .4byte 0x080682F4
_080453AC: .4byte 0x08068304
_080453B0: .4byte 0x08068314
_080453B4: .4byte 0x0806833C
_080453B8: .4byte 0x08068350
_080453BC: .4byte 0x0203F664
_080453C0: .4byte 0x08068030
_080453C4: .4byte 0x08068020
_080453C8: .4byte 0x08068014
_080453CC:
	ldr r1, _08045404
	ldr r0, _08045408
	str r0, [r1]
	ldr r1, _0804540C
	ldr r0, _08045410
	str r0, [r1]
	ldr r2, _08045414
	ldr r0, _08045418
	str r0, [r2]
	ldr r0, _0804541C
	str r0, [r2, #4]
	ldr r0, _08045420
	str r0, [r2, #8]
	ldr r0, _08045424
	str r0, [r2, #0xc]
	ldr r0, _08045428
	str r0, [r2, #0x10]
	ldr r0, _0804542C
	str r0, [r2, #0x14]
	ldr r1, _08045430
	ldr r0, _08045434
	str r0, [r1]
	ldr r0, _08045438
	str r0, [r1, #4]
	ldr r0, _0804543C
_080453FE:
	str r0, [r1, #8]
	adds r6, r2, #0
	b _08045446
	.align 2, 0
_08045404: .4byte 0x0203F550
_08045408: .4byte 0x086ADB70
_0804540C: .4byte 0x0203F554
_08045410: .4byte 0x08067F08
_08045414: .4byte 0x0203F5BC
_08045418: .4byte 0x08068190
_0804541C: .4byte 0x080681A4
_08045420: .4byte 0x080681B8
_08045424: .4byte 0x080681CC
_08045428: .4byte 0x08068208
_0804542C: .4byte 0x0806821C
_08045430: .4byte 0x0203F664
_08045434: .4byte 0x08067EF8
_08045438: .4byte 0x08067EEC
_0804543C: .4byte 0x08067EE0
_08045440:
	.2byte 0xEE00, 0xEE00
	ldr r6, _08045604
_08045446:
	ldr r0, [r6]
	ldr r5, _08045608
	adds r1, r5, #0
	bl sub_8025870
	ldr r4, _0804560C
	str r0, [r4]
	ldr r0, [r6, #4]
	adds r1, r5, #0
	adds r1, #0x14
	bl sub_8025870
	str r0, [r4, #4]
	ldr r0, [r6, #8]
	adds r1, r5, #0
	adds r1, #0x28
	bl sub_8025870
	str r0, [r4, #8]
	ldr r0, [r6, #0xc]
	adds r1, r5, #0
	adds r1, #0x3c
	bl sub_8025870
	str r0, [r4, #0xc]
	ldr r0, [r6, #0x10]
	adds r1, r5, #0
	adds r1, #0x50
	bl sub_8025870
	str r0, [r4, #0x10]
	ldr r0, [r6, #0x14]
	adds r1, r5, #0
	adds r1, #0x64
	bl sub_8025870
	str r0, [r4, #0x14]
	ldr r0, _08045610
	ldr r0, [r0]
	ldr r1, _08045614
	bl sub_8025870
	ldr r1, _08045618
	str r0, [r1]
	ldr r4, _0804561C
	movs r0, #0x54
	movs r1, #0xf
	movs r2, #4
	bl Alloc
	str r0, [r4]
	ldr r4, _08045620
	movs r0, #3
	movs r1, #0xf
	movs r2, #4
	bl Alloc
	str r0, [r4]
	movs r1, #0
	movs r2, #0
_080454BE:
	ldr r0, [r4]
	adds r0, r0, r1
	strb r2, [r0]
	adds r1, #1
	cmp r1, #2
	ble _080454BE
	movs r0, #0
	bl SetTextSpriteCount
	ldr r4, _08045624
	movs r0, #0xaa
	adds r1, r4, #0
	movs r2, #0x80
	lsls r2, r2, #1
	bl DmaFill32
	ldr r7, _08045628
	str r4, [r7]
	movs r0, #0x80
	lsls r0, r0, #3
	adds r7, r4, r0
	ldr r1, _0804562C
	str r7, [r1]
	ldr r2, _08045630
	mov sl, r2
	ldr r0, _08045634
	mov sb, r0
	str r0, [r2]
	ldr r1, _08045638
	mov r8, r1
	movs r6, #0
	str r6, [r1]
	bl SyncVblank
	bl UpdateVideo
	bl SkipVblank
	ldr r5, _0804563C
	adds r0, r5, #0
	ldr r1, _08045640
	movs r2, #0x80
	bl DmaTransfer32
	ldr r0, _08045644
	adds r1, r5, #0
	movs r2, #0x80
	bl DmaTransfer32
	movs r0, #0x80
	lsls r0, r0, #4
	movs r1, #0xb0
	lsls r1, r1, #8
	bl sub_8026CC8
	bl DisableBackgrounds
	bl InitPauseMenu
	bl PauseMenuBehavior
	movs r0, #2
	movs r1, #0
	bl FadeOutObjects
	movs r0, #0
	bl SetTextSpriteCount
	movs r0, #0xaa
	adds r1, r4, #0
	movs r2, #0x80
	lsls r2, r2, #1
	bl DmaFill32
	ldr r2, _08045628
	str r4, [r2]
	ldr r0, _0804562C
	str r7, [r0]
	mov r1, sb
	mov r2, sl
	str r1, [r2]
	mov r7, r8
	str r6, [r7]
	bl SyncVblank
	bl UpdateVideo
	bl SkipVblank
	ldr r4, _08045648
	movs r1, #0xfc
	lsls r1, r1, #6
	adds r0, r1, #0
	strh r0, [r4]
	ldr r1, _0804564C
	ldr r2, _08045650
	adds r0, r2, #0
	strh r0, [r1]
	bl EnableBGAlphaBlending
	ldr r0, _08045654
	ldrh r0, [r0]
	strh r0, [r4]
	bl EnableBackgrounds
	bl sub_8026D84
	ldr r0, _08045640
	adds r1, r5, #0
	movs r2, #0x80
	bl DmaTransfer32
	bl sub_800EECC
	ldr r0, _08045658
	ldrb r0, [r0]
	cmp r0, #0
	bne _080455AE
	bl sub_801A2E4
_080455AE:
	ldr r0, _0804565C
	ldrh r0, [r0]
	cmp r0, #0x1e
	beq _080455BA
	cmp r0, #9
	bne _080455C2
_080455BA:
	bl sub_800EC94
	bl sub_800ECB4
_080455C2:
	bl sub_8047BEC
	bl sub_80524D8
	movs r0, #4
	movs r1, #0xf
	bl FreeById
	bl ResetMenu
	movs r0, #4
	movs r1, #0xf
	bl DoesMemBlockExistById
	cmp r0, #0
	beq _080455E6
	.2byte 0xEE00, 0xEE00
_080455E6:
	ldr r1, _08045660
	movs r0, #0
	strb r0, [r1]
	movs r0, #0
	bl sub_80528D8
	bl RestorePaletteEffect
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08045604: .4byte 0x0203F5BC
_08045608: .4byte 0x0203F5EC
_0804560C: .4byte 0x0203F5D4
_08045610: .4byte 0x0203F554
_08045614: .4byte 0x0203F55C
_08045618: .4byte 0x0203F558
_0804561C: .4byte 0x0203F4EC
_08045620: .4byte 0x0203F4F0
_08045624: .4byte gOAMBuffer1
_08045628: .4byte gOAMBufferFramePtr
_0804562C: .4byte gOAMBufferEnd
_08045630: .4byte gOBJTileFramePtr
_08045634: .4byte 0x06010000
_08045638: .4byte gOBJTileCount
_0804563C: .4byte 0x05000200
_08045640: .4byte 0x0203F6AE
_08045644: .4byte 0x083FD254
_08045648: .4byte 0x04000050
_0804564C: .4byte 0x04000052
_08045650: .4byte 0x00000907
_08045654: .4byte gColorSpecEffectsSel
_08045658: .4byte gIsSlideMiniGame
_0804565C: .4byte gLoadedRoomIndex
_08045660: .4byte 0x0203F4D8

    .thumb
InitPauseMenu: @ 0x08045664
	push {r4, r5, r6, lr}
	mov r6, sl
	mov r5, sb
	mov r4, r8
	push {r4, r5, r6}
	sub sp, #0x10
	ldr r1, _08045758
	ldr r0, _0804575C
	ldrh r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_8040B3C
	ldr r0, _08045760
	ldrb r1, [r0]
	movs r0, #1
	bl InitMenu
	ldr r1, _08045764
	movs r0, #1
	strb r0, [r1]
	ldr r1, _08045768
	movs r0, #0xff
	strb r0, [r1]
	ldr r1, _0804576C
	movs r5, #0
	movs r4, #0
	movs r0, #0x5c
	strh r0, [r1]
	movs r0, #0x83
	mov sl, r0
	mov r2, sl
	strh r2, [r1, #2]
	movs r0, #1
	mov sb, r0
	mov r2, sb
	strb r2, [r1, #0x10]
	strb r5, [r1, #0x12]
	strb r2, [r1, #0xa]
	movs r0, #0xf0
	mov r8, r0
	mov r2, r8
	strh r2, [r1, #8]
	movs r6, #0xa
	strh r6, [r1, #0xe]
	strh r4, [r1, #0xc]
	movs r3, #6
	strb r3, [r1, #0x11]
	ldr r2, _08045770
	str r2, [r1, #4]
	ldr r0, _08045774
	strh r4, [r0]
	strh r4, [r0, #2]
	mov r1, sb
	strb r1, [r0, #0x10]
	strb r5, [r0, #0x12]
	movs r5, #2
	strb r5, [r0, #0xa]
	mov r1, r8
	strh r1, [r0, #8]
	strh r6, [r0, #0xe]
	strh r4, [r0, #0xc]
	strb r3, [r0, #0x11]
	str r2, [r0, #4]
	ldr r0, _08045778
	ldr r1, _0804577C
	str r4, [sp]
	movs r2, #0x48
	str r2, [sp, #4]
	mov r2, sl
	str r2, [sp, #8]
	str r5, [sp, #0xc]
	movs r2, #0
	movs r3, #0
	bl SetSprite
	ldr r0, _08045780
	mov r8, r0
	ldr r0, [r0]
	adds r0, #0x1c
	ldr r1, _08045784
	str r4, [sp]
	movs r2, #0xa4
	str r2, [sp, #4]
	movs r6, #0x90
	str r6, [sp, #8]
	str r5, [sp, #0xc]
	movs r2, #0
	movs r3, #0
	bl SetSprite
	mov r1, r8
	ldr r0, [r1]
	adds r0, #0x38
	ldr r1, _08045788
	str r4, [sp]
	movs r2, #0x4c
	str r2, [sp, #4]
	str r6, [sp, #8]
	str r5, [sp, #0xc]
	movs r2, #0
	movs r3, #0
	bl SetSprite
	ldr r0, _0804578C
	mov r2, sb
	strb r2, [r0]
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08045758: .4byte gPlayerStateSettings
_0804575C: .4byte gPlayerState
_08045760: .4byte 0x02000320
_08045764: .4byte gMenuId
_08045768: .4byte gMenuParentId
_0804576C: .4byte 0x0203F4FC
_08045770: .4byte 0x080B01B0
_08045774: .4byte 0x0203F538
_08045778: .4byte 0x0203F510
_0804577C: .4byte 0x0000047A
_08045780: .4byte 0x0203F4EC
_08045784: .4byte 0x00000486
_08045788: .4byte 0x00000487
_0804578C: .4byte 0x0203F54C

    .thumb
PauseMenuBehavior: @ 0x08045790
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	movs r6, #0
	bl SetObjectsFullAlpha
	movs r0, #1
	str r0, [sp, #4]
	str r6, [sp]
	ldr r1, _080457EC
	mov sb, r1
	ldr r3, _080457F0
	mov r8, r3
	ldr r0, _080457F4
	mov sl, r0
	movs r1, #0x80
	lsls r1, r1, #1
	adds r7, r1, #0
_080457BA:
	ldr r0, _080457F8
	ldrb r0, [r0]
	cmp r0, #1
	bne _08045800
	ldr r5, _080457FC
	movs r4, #0
	mov r3, r8
	ldrh r0, [r3]
	lsls r0, r0, #1
	add r0, sb
	ldrh r0, [r0]
	ands r0, r7
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_8040E8C
	cmp r0, #0
	beq _080457E4
	cmp r6, #0
	bne _080457E4
	movs r4, #1
_080457E4:
	strb r4, [r5]
	ldr r1, _080457FC
	b _0804580C
	.align 2, 0
_080457EC: .4byte gPlayerStateSettings
_080457F0: .4byte gPlayerState
_080457F4: .4byte 0x080CE440
_080457F8: .4byte gMenuId
_080457FC: .4byte 0x0203F54C
_08045800:
	movs r0, #0
	ldr r1, _08045830
	cmp r6, #0
	bne _0804580A
	movs r0, #1
_0804580A:
	strb r0, [r1]
_0804580C:
	ldrb r0, [r1]
	cmp r0, #0
	bne _08045814
	b _08045992
_08045814:
	ldr r4, _08045834
	ldr r0, _08045838
	adds r1, r4, #0
	ldr r2, _0804583C
	bl ReadKeys
	ldrh r4, [r4]
	movs r0, #8
	ands r0, r4
	cmp r0, #0
	beq _08045840
	mov r1, r8
	ldrh r0, [r1]
	b _0804585A
	.align 2, 0
_08045830: .4byte 0x0203F54C
_08045834: .4byte gKeysDown
_08045838: .4byte gKeysPressed
_0804583C: .4byte gPreviousKeys
_08045840:
	movs r0, #2
	ands r0, r4
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0
	beq _080458C0
	ldr r2, _08045878
	ldrb r1, [r2]
	adds r0, r1, #0
	cmp r0, #0xff
	bne _0804587C
	mov r3, r8
	ldrh r0, [r3]
_0804585A:
	lsls r0, r0, #1
	add r0, sb
	ldrh r0, [r0]
	ands r0, r7
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_8040E8C
	cmp r0, #0
	bne _08045870
	b _08045992
_08045870:
	movs r6, #1
	bl sub_8040E74
	b _08045992
	.align 2, 0
_08045878: .4byte gMenuParentId
_0804587C:
	ldr r0, _080458A0
	strb r1, [r0]
	ldrb r0, [r0]
	cmp r0, #1
	bne _080458A4
	movs r0, #0xff
	strb r0, [r2]
	mov r1, r8
	ldrh r0, [r1]
	lsls r0, r0, #1
	add r0, sb
	ldrh r0, [r0]
	ands r0, r7
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_8040B3C
	b _080458A8
	.align 2, 0
_080458A0: .4byte gMenuId
_080458A4:
	.2byte 0xEE00, 0xEE00
_080458A8:
	ldr r0, _080458B8
	ldrb r0, [r0]
	ldr r1, _080458BC
	ldrb r1, [r1]
	bl InitMenu
	b _08045992
	.align 2, 0
_080458B8: .4byte gMenuId
_080458BC: .4byte 0x02000320
_080458C0:
	movs r0, #1
	ands r0, r4
	cmp r0, #0
	beq _08045914
	mov r0, sp
	bl PauseMenuChooseEntry
	cmp r0, #0
	beq _080458D8
	movs r6, #1
	bl sub_8040E74
_080458D8:
	ldr r0, [sp]
	cmp r0, #0
	beq _08045992
	str r5, [sp]
	ldr r0, _0804590C
	ldrb r0, [r0]
	ldr r1, _08045910
	ldrb r1, [r1]
	bl InitMenu
	mov r3, r8
	ldrh r0, [r3]
	lsls r0, r0, #1
	add r0, sb
	ldrh r0, [r0]
	ands r0, r7
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_8040B3C
	bl SetObjectsFullAlpha
	movs r0, #1
	str r0, [sp, #4]
	b _08045992
	.align 2, 0
_0804590C: .4byte gMenuId
_08045910: .4byte 0x02000320
_08045914:
	movs r0, #0x40
	ands r0, r4
	cmp r0, #0
	beq _0804595C
	ldr r0, _0804594C
	ldrb r0, [r0]
	cmp r0, #0
	beq _08045946
	movs r0, #0xcc
	lsls r0, r0, #3
	add r0, sl
	ldrh r0, [r0]
	ldr r2, _08045950
	ldr r1, _08045954
	add r1, sl
	ldrb r2, [r2]
	adds r1, r1, r2
	ldrb r1, [r1]
	ldr r3, _08045958
	ldr r2, [r3]
	movs r3, #0x80
	lsls r3, r3, #9
	adds r2, r2, r3
	bl audio_new_fx
_08045946:
	bl AdvanceMenuEntryUp
	b _08045992
	.align 2, 0
_0804594C: .4byte byte_203EA89
_08045950: .4byte byte_203EA8C
_08045954: .4byte 0x00000662
_08045958: .4byte 0x080CEAA4
_0804595C:
	movs r0, #0x80
	ands r0, r4
	cmp r0, #0
	beq _08045992
	ldr r0, _08045A38
	ldrb r0, [r0]
	cmp r0, #0
	beq _0804598E
	movs r0, #0xcc
	lsls r0, r0, #3
	add r0, sl
	ldrh r0, [r0]
	ldr r2, _08045A3C
	ldr r1, _08045A40
	add r1, sl
	ldrb r2, [r2]
	adds r1, r1, r2
	ldrb r1, [r1]
	ldr r3, _08045A44
	ldr r2, [r3]
	movs r3, #0x80
	lsls r3, r3, #9
	adds r2, r2, r3
	bl audio_new_fx
_0804598E:
	bl AdvanceMenuEntryDown
_08045992:
	cmp r6, #0
	beq _080459C0
	mov r1, r8
	ldrh r0, [r1]
	lsls r0, r0, #1
	add r0, sb
	ldrh r0, [r0]
	ands r0, r7
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_8040FF4
	cmp r0, #0
	beq _080459C0
	ldr r1, _08045A48
	ldrb r0, [r1]
	cmp r0, #1
	beq _08045A68
	ldr r1, _08045A4C
	ldrb r1, [r1]
	bl InitMenu
	movs r6, #0
_080459C0:
	bl sub_804087C
	movs r0, #0
	bl SetTextSpriteCount
	ldr r4, _08045A50
	movs r0, #0xaa
	adds r1, r4, #0
	movs r2, #0x80
	lsls r2, r2, #1
	bl DmaFill32
	ldr r0, _08045A54
	str r4, [r0]
	ldr r0, _08045A58
	movs r3, #0x80
	lsls r3, r3, #3
	adds r4, r4, r3
	str r4, [r0]
	ldr r1, _08045A5C
	ldr r0, _08045A60
	str r0, [r1]
	ldr r1, _08045A64
	movs r0, #0
	str r0, [r1]
	bl sub_804095C
	bl FlushMenuToTextBuffer
	bl RenderText
	bl sub_80408F0
	bl RenderMenuSprites
	bl sub_8046D44
	movs r0, #4
	bl CheckHeap
	bl CheckStacks
	bl SyncVblank
	bl UpdateVideo
	bl SkipVblank
	ldr r0, [sp, #4]
	cmp r0, #0
	bne _08045A28
	b _080457BA
_08045A28:
	movs r0, #2
	movs r1, #0
	bl sub_08026BA8
	movs r1, #0
	str r1, [sp, #4]
	b _080457BA
	.align 2, 0
_08045A38: .4byte byte_203EA89
_08045A3C: .4byte byte_203EA8C
_08045A40: .4byte 0x00000662
_08045A44: .4byte 0x080CEAA4
_08045A48: .4byte gMenuId
_08045A4C: .4byte 0x02000320
_08045A50: .4byte gOAMBuffer1
_08045A54: .4byte gOAMBufferFramePtr
_08045A58: .4byte gOAMBufferEnd
_08045A5C: .4byte gOBJTileFramePtr
_08045A60: .4byte 0x06010000
_08045A64: .4byte gOBJTileCount
_08045A68:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	.thumb
sub_8045A78: @ 0x08045A78
	push {r4, r5, r6, lr}
	ldr r4, _08045AC8
	movs r6, #0
	movs r0, #0x30
	strb r0, [r4]
	strb r0, [r4, #1]
	movs r1, #0x3a
	strb r1, [r4, #2]
	strb r0, [r4, #3]
	strb r0, [r4, #4]
	strb r1, [r4, #5]
	strb r0, [r4, #6]
	strb r0, [r4, #7]
	movs r0, #0xff
	strb r0, [r4, #8]
	ldr r5, _08045ACC
	ldrb r0, [r5, #8]
	adds r1, r4, #1
	bl IntegerToAsciiBw
	ldrb r0, [r5, #9]
	adds r1, r4, #4
	bl IntegerToAsciiBw
	ldrb r0, [r5, #0xa]
	adds r1, r4, #7
	bl IntegerToAsciiBw
	ldr r0, _08045AD0
	movs r1, #0x5c
	strh r1, [r0]
	movs r1, #0x83
	strh r1, [r0, #2]
	strh r6, [r0, #0xc]
	adds r1, r4, #0
	bl AddStringToBuffer
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08045AC8: .4byte 0x0203F52C
_08045ACC: .4byte gGameStatus
_08045AD0: .4byte 0x0203F4FC

    .thumb
PauseMenuChooseEntry: @ 0x08045AD4
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r6, _08045AF4
	ldrb r4, [r6]
	cmp r4, #1
	bne _08045B44
	bl GetCurrentMenuEntry
	cmp r0, #1
	beq _08045B02
	cmp r0, #1
	bgt _08045AF8
	cmp r0, #0
	beq _08045B3C
	b _08045B44
	.align 2, 0
_08045AF4: .4byte gMenuId
_08045AF8:
	cmp r0, #2
	beq _08045B0E
	cmp r0, #3
	beq _08045B28
	b _08045B44
_08045B02:
	bl sub_8040E74
	bl sub_8045C08
	str r4, [r5]
	b _08045B44
_08045B0E:
	bl sub_8040E74
	bl sub_080466EC
_08045B16:
	strb r4, [r6]
	ldr r1, _08045B24
	movs r0, #0xff
	strb r0, [r1]
	str r4, [r5]
	b _08045B44
	.align 2, 0
_08045B24: .4byte gMenuParentId
_08045B28:
	bl sub_8040E74
	bl sub_08045F14
	cmp r0, #0
	beq _08045B16
	strb r4, [r6]
	ldr r1, _08045B40
	movs r0, #0xff
	strb r0, [r1]
_08045B3C:
	movs r0, #1
	b _08045B46
	.align 2, 0
_08045B40: .4byte gMenuParentId
_08045B44:
	movs r0, #0
_08045B46:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

    .thumb
sub_8045B4C: @ 0x08045B4C
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r6, _08045B84
	ldr r0, [r6]
	lsls r5, r5, #2
	adds r0, r5, r0
	ldr r0, [r0]
	ldr r4, _08045B88
	adds r1, r4, #0
	bl sub_8025870
	movs r1, #0xf0
	subs r1, r1, r0
	asrs r1, r1, #1
	movs r2, #0
	strh r1, [r4]
	movs r0, #8
	strh r0, [r4, #2]
	strh r2, [r4, #0xc]
	ldr r0, [r6]
	adds r5, r5, r0
	ldr r1, [r5]
	adds r0, r4, #0
	bl AddStringToBuffer
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08045B84: .4byte 0x0203F550
_08045B88: .4byte 0x0203F538

    .thumb
sub_8045B8C: @ 0x08045B8C
	push {lr}
	cmp r0, #6
	bhi _08045BFE
	lsls r0, r0, #2
	ldr r1, _08045B9C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08045B9C: .4byte 0x08045BA0
_08045BA0: @ jump table
	.4byte _08045BBC @ case 0
	.4byte _08045BC4 @ case 1
	.4byte _08045BCC @ case 2
	.4byte _08045BD4 @ case 3
	.4byte _08045BDC @ case 4
	.4byte _08045BE4 @ case 5
	.4byte _08045BF4 @ case 6
_08045BBC:
	ldr r0, _08045BC0
	b _08045BE6
	.align 2, 0
_08045BC0: .4byte 0x083FD894
_08045BC4:
	ldr r0, _08045BC8
	b _08045BE6
	.align 2, 0
_08045BC8: .4byte 0x083FD8B4
_08045BCC:
	ldr r0, _08045BD0
	b _08045BE6
	.align 2, 0
_08045BD0: .4byte 0x083FD8D4
_08045BD4:
	ldr r0, _08045BD8
	b _08045BE6
	.align 2, 0
_08045BD8: .4byte 0x083FD8F4
_08045BDC:
	ldr r0, _08045BE0
	b _08045BE6
	.align 2, 0
_08045BE0: .4byte 0x083FD914
_08045BE4:
	ldr r0, _08045BF0
_08045BE6:
	movs r1, #2
	movs r2, #2
	bl DmaTransferObjPalette
	b _08045BFE
	.align 2, 0
_08045BF0: .4byte 0x083FD934
_08045BF4:
	ldr r0, _08045C04
	movs r1, #2
	movs r2, #2
	bl DmaTransferObjPalette
_08045BFE:
	pop {r0}
	bx r0
	.align 2, 0
_08045C04: .4byte 0x083FD954

    .thumb
sub_8045C08: @ 0x08045C08
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _08045C24
	mov r8, r0
	movs r6, #0x80
	lsls r6, r6, #1
	ldr r5, _08045C28
	movs r1, #0x80
	lsls r1, r1, #3
	adds r7, r5, r1
	b _08045C7A
	.align 2, 0
_08045C24: .4byte gPlayerStateSettings
_08045C28: .4byte gOAMBuffer1
_08045C2C:
	bl sub_804087C
	movs r0, #0
	bl SetTextSpriteCount
	movs r0, #0xaa
	adds r1, r5, #0
	adds r2, r6, #0
	bl DmaFill32
	ldr r0, _08045D44
	str r5, [r0]
	ldr r0, _08045D48
	str r7, [r0]
	ldr r1, _08045D4C
	ldr r0, _08045D50
	str r0, [r1]
	ldr r0, _08045D54
	str r4, [r0]
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
_08045C7A:
	ldr r0, _08045D58
	ldrh r0, [r0]
	lsls r0, r0, #1
	add r0, r8
	ldrh r1, [r0]
	adds r0, r6, #0
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_8040FF4
	adds r4, r0, #0
	cmp r4, #0
	beq _08045C2C
	movs r0, #2
	movs r1, #0
	bl FadeOutObjects
	movs r0, #0
	bl SetTextSpriteCount
	ldr r4, _08045D5C
	movs r2, #0x80
	lsls r2, r2, #1
	movs r0, #0xaa
	adds r1, r4, #0
	bl DmaFill32
	ldr r0, _08045D44
	str r4, [r0]
	ldr r0, _08045D48
	movs r2, #0x80
	lsls r2, r2, #3
	adds r5, r4, r2
	str r5, [r0]
	ldr r1, _08045D4C
	ldr r0, _08045D50
	str r0, [r1]
	ldr r1, _08045D54
	movs r0, #0
	str r0, [r1]
	bl SyncVblank
	bl UpdateVideo
	bl SkipVblank
	ldr r1, _08045D60
	movs r2, #0xfc
	lsls r2, r2, #6
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #2
	ldr r2, _08045D64
	adds r0, r2, #0
	strh r0, [r1]
	ldr r0, _08045D68
	ldrh r6, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	mov r8, r0
	adds r0, r6, #0
	bl sub_0804147C
	adds r0, r6, #0
	bl sub_8045B8C
	movs r7, #0
	bl SetObjectsFullAlpha
	movs r1, #1
	mov sl, r1
	mov sb, r4
_08045D0C:
	adds r0, r6, #0
	bl sub_08041AC0
	cmp r0, #0
	beq _08045DF0
	cmp r7, #0
	bne _08045DF4
	ldr r4, _08045D6C
	ldr r0, _08045D70
	adds r1, r4, #0
	ldr r2, _08045D74
	bl ReadKeys
	ldrh r4, [r4]
	movs r0, #2
	ands r0, r4
	cmp r0, #0
	beq _08045D78
	adds r0, r6, #0
	bl sub_08041AC0
	cmp r0, #0
	beq _08045DF0
	movs r7, #1
	movs r2, #1
	rsbs r2, r2, #0
	mov r8, r2
	b _08045DA8
	.align 2, 0
_08045D44: .4byte gOAMBufferFramePtr
_08045D48: .4byte gOAMBufferEnd
_08045D4C: .4byte gOBJTileFramePtr
_08045D50: .4byte 0x06010000
_08045D54: .4byte gOBJTileCount
_08045D58: .4byte gPlayerState
_08045D5C: .4byte gOAMBuffer1
_08045D60: .4byte 0x04000050
_08045D64: .4byte 0x00000907
_08045D68: .4byte gLoadedRoomLevel
_08045D6C: .4byte gKeysDown
_08045D70: .4byte gKeysPressed
_08045D74: .4byte gPreviousKeys
_08045D78:
	movs r0, #0x20
	ands r0, r4
	cmp r0, #0
	beq _08045DB8
	subs r0, r6, #1
	mov r8, r0
	cmp r0, #0
	bge _08045D8C
	movs r1, #6
	mov r8, r1
_08045D8C:
	ldr r2, _08045DB0
	ldr r1, _08045DB4
	ldrb r0, [r2]
	ldrb r1, [r1]
	cmp r0, r1
	beq _08045DA6
	mov r0, r8
	cmp r0, #6
	beq _08045DA6
	ldrb r0, [r2]
	cmp r8, r0
	ble _08045DA6
	mov r8, r0
_08045DA6:
	movs r7, #1
_08045DA8:
	adds r0, r6, #0
	bl sub_8041AAC
	b _08045DF0
	.align 2, 0
_08045DB0: .4byte 0x0200107E
_08045DB4: .4byte 0x0200107F
_08045DB8:
	movs r0, #0x10
	ands r0, r4
	cmp r0, #0
	beq _08045DF0
	adds r1, r6, #1
	mov r8, r1
	cmp r1, #6
	ble _08045DCC
	movs r2, #0
	mov r8, r2
_08045DCC:
	ldr r2, _08045EE0
	ldr r1, _08045EE4
	ldrb r0, [r2]
	ldrb r1, [r1]
	cmp r0, r1
	beq _08045DE8
	mov r0, r8
	cmp r0, #6
	beq _08045DE8
	ldrb r2, [r2]
	cmp r8, r2
	ble _08045DE8
	movs r1, #6
	mov r8, r1
_08045DE8:
	movs r7, #1
	adds r0, r6, #0
	bl sub_8041AAC
_08045DF0:
	cmp r7, #0
	beq _08045E70
_08045DF4:
	adds r0, r6, #0
	bl sub_08041C8C
	cmp r0, #0
	beq _08045E70
	movs r0, #6
	bl sub_8045B8C
	movs r0, #2
	movs r1, #0
	bl FadeOutObjects
	movs r0, #0
	bl SetTextSpriteCount
	movs r0, #0xaa
	mov r1, sb
	movs r2, #0x80
	lsls r2, r2, #1
	bl DmaFill32
	ldr r0, _08045EE8
	mov r2, sb
	str r2, [r0]
	ldr r0, _08045EEC
	str r5, [r0]
	ldr r1, _08045EF0
	ldr r0, _08045EF4
	str r0, [r1]
	ldr r1, _08045EF8
	movs r0, #0
	str r0, [r1]
	bl SyncVblank
	bl UpdateVideo
	bl SkipVblank
	ldr r1, _08045EFC
	movs r2, #0xfc
	lsls r2, r2, #6
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #2
	ldr r2, _08045F00
	adds r0, r2, #0
	strh r0, [r1]
	mov r0, r8
	cmp r0, #0
	blt _08045F04
	mov r6, r8
	adds r0, r6, #0
	bl sub_0804147C
	adds r0, r6, #0
	bl sub_8045B8C
	movs r7, #0
	bl SetObjectsFullAlpha
	movs r1, #1
	mov sl, r1
_08045E70:
	bl sub_804087C
	movs r0, #0
	bl SetTextSpriteCount
	movs r0, #0xaa
	mov r1, sb
	movs r2, #0x80
	lsls r2, r2, #1
	bl DmaFill32
	ldr r0, _08045EE8
	mov r2, sb
	str r2, [r0]
	ldr r0, _08045EEC
	str r5, [r0]
	ldr r1, _08045EF0
	ldr r0, _08045EF4
	str r0, [r1]
	ldr r1, _08045EF8
	movs r0, #0
	str r0, [r1]
	adds r0, r6, #0
	bl sub_8045B4C
	bl sub_804095C
	bl RenderText
	bl sub_80408F0
	bl sub_8046D44
	movs r0, #4
	bl CheckHeap
	bl CheckStacks
	bl SyncVblank
	bl UpdateVideo
	bl SkipVblank
	mov r0, sl
	cmp r0, #0
	bne _08045ED0
	b _08045D0C
_08045ED0:
	movs r0, #2
	movs r1, #0
	bl sub_08026BA8
	movs r1, #0
	mov sl, r1
	b _08045D0C
	.align 2, 0
_08045EE0: .4byte 0x0200107E
_08045EE4: .4byte 0x0200107F
_08045EE8: .4byte gOAMBufferFramePtr
_08045EEC: .4byte gOAMBufferEnd
_08045EF0: .4byte gOBJTileFramePtr
_08045EF4: .4byte 0x06010000
_08045EF8: .4byte gOBJTileCount
_08045EFC: .4byte 0x04000050
_08045F00: .4byte 0x00000907
_08045F04:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

    .thumb
sub_08045F14: @ 0x08045F14
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x44
	movs r0, #0
	str r0, [sp, #0x24]
	movs r1, #0
	str r1, [sp, #0x28]
	movs r2, #1
	rsbs r2, r2, #0
	str r2, [sp, #0x2c]
	str r2, [sp, #0x30]
	movs r3, #1
	str r3, [sp, #0x34]
	movs r4, #0
	str r4, [sp, #0x38]
	mov sb, r4
	str r0, [sp, #0x3c]
	str r1, [sp, #0x40]
	mov r0, sp
	strb r3, [r0, #0x10]
	add r3, sp, #0x28
	ldrb r3, [r3]
	strb r3, [r0, #0x12]
	add r4, sp, #0x34
	ldrb r4, [r4]
	strb r4, [r0, #0xa]
	mov r1, sp
	movs r0, #0xf0
	strh r0, [r1, #8]
	movs r0, #0xa
	strh r0, [r1, #0xe]
	mov r0, sp
	ldrh r1, [r0, #0x28]
	strh r1, [r0, #0xc]
	mov r1, sp
	movs r0, #6
	strb r0, [r1, #0x11]
	ldr r0, _08045F7C
	str r0, [sp, #4]
	ldr r2, _08045F80
	mov r8, r2
	movs r6, #0x80
	lsls r6, r6, #1
	ldr r5, _08045F84
	movs r3, #0x80
	lsls r3, r3, #3
	adds r7, r5, r3
	b _08045FD6
	.align 2, 0
_08045F7C: .4byte 0x080B01B0
_08045F80: .4byte gPlayerStateSettings
_08045F84: .4byte gOAMBuffer1
_08045F88:
	bl sub_804087C
	movs r0, #0
	bl SetTextSpriteCount
	movs r0, #0xaa
	adds r1, r5, #0
	adds r2, r6, #0
	bl DmaFill32
	ldr r0, _080460D8
	str r5, [r0]
	ldr r0, _080460DC
	str r7, [r0]
	ldr r1, _080460E0
	ldr r0, _080460E4
	str r0, [r1]
	ldr r0, _080460E8
	str r4, [r0]
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
_08045FD6:
	ldr r0, _080460EC
	ldrh r0, [r0]
	lsls r0, r0, #1
	add r0, r8
	ldrh r1, [r0]
	adds r0, r6, #0
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_8040FF4
	adds r4, r0, #0
	cmp r4, #0
	beq _08045F88
	movs r0, #2
	movs r1, #0
	bl FadeOutObjects
	movs r0, #0
	bl SetTextSpriteCount
	ldr r4, _080460F0
	movs r2, #0x80
	lsls r2, r2, #1
	movs r0, #0xaa
	adds r1, r4, #0
	bl DmaFill32
	ldr r0, _080460D8
	str r4, [r0]
	ldr r0, _080460DC
	movs r1, #0x80
	lsls r1, r1, #3
	adds r4, r4, r1
	str r4, [r0]
	ldr r1, _080460E0
	ldr r0, _080460E4
	str r0, [r1]
	ldr r1, _080460E8
	movs r0, #0
	str r0, [r1]
	bl SyncVblank
	bl UpdateVideo
	bl SkipVblank
	ldr r1, _080460F4
	movs r2, #0xfc
	lsls r2, r2, #6
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #2
	ldr r3, _080460F8
	adds r0, r3, #0
	strh r0, [r1]
	ldr r0, _080460FC
	ldrb r1, [r0]
	movs r0, #7
	bl InitMenu
	ldr r2, _08046100
	ldr r1, _08046104
	ldrb r0, [r1]
	strb r0, [r2]
	movs r0, #7
	strb r0, [r1]
	movs r4, #0
	ldr r1, _08046108
	ldr r0, [r1]
	cmp r4, r0
	bge _08046074
	adds r5, r1, #0
_08046068:
	bl AdvanceMenuEntryDown
	adds r4, #1
	ldr r0, [r5]
	cmp r4, r0
	blt _08046068
_08046074:
	movs r4, #0
	mov sl, r4
	bl SetObjectsFullAlpha
	movs r0, #1
	str r0, [sp, #0x14]
	movs r1, #0
	str r1, [sp, #0x18]
	movs r2, #0
	str r2, [sp, #0x1c]
	movs r3, #1
	rsbs r3, r3, #0
	str r3, [sp, #0x20]
	mov r8, r3
_08046090:
	ldr r0, _0804610C
	ldr r4, _08046110
	ldr r2, _08046114
	adds r1, r4, #0
	bl ReadKeys
	ldrh r4, [r4]
	movs r0, #2
	ands r0, r4
	cmp r0, #0
	beq _08046128
	ldr r0, _08046118
	ldrb r0, [r0]
	cmp r0, #0
	bne _080460B0
	b _08046250
_080460B0:
	ldr r2, _0804611C
	movs r4, #0xd0
	lsls r4, r4, #3
	adds r0, r2, r4
	ldrh r0, [r0]
	ldr r3, _08046120
	adds r4, #2
	adds r1, r2, r4
	ldrb r3, [r3]
	adds r1, r1, r3
	ldrb r1, [r1]
	ldr r3, _08046124
	adds r2, r2, r3
	ldr r2, [r2]
	movs r4, #0x80
	lsls r4, r4, #9
	adds r2, r2, r4
	bl audio_new_fx
	b _08046250
	.align 2, 0
_080460D8: .4byte gOAMBufferFramePtr
_080460DC: .4byte gOAMBufferEnd
_080460E0: .4byte gOBJTileFramePtr
_080460E4: .4byte 0x06010000
_080460E8: .4byte gOBJTileCount
_080460EC: .4byte gPlayerState
_080460F0: .4byte gOAMBuffer1
_080460F4: .4byte 0x04000050
_080460F8: .4byte 0x00000907
_080460FC: .4byte 0x02000320
_08046100: .4byte gMenuParentId
_08046104: .4byte gMenuId
_08046108: .4byte 0x0203F4DC
_0804610C: .4byte gKeysPressed
_08046110: .4byte gKeysDown
_08046114: .4byte gPreviousKeys
_08046118: .4byte byte_203EA89
_0804611C: .4byte 0x080CE440
_08046120: .4byte byte_203EA8C
_08046124: .4byte 0x00000684
_08046128:
	movs r0, #1
	ands r0, r4
	cmp r0, #0
	beq _080461C2
	mov r0, sl
	cmp r0, #0
	beq _0804613C
	cmp r0, #2
	beq _080461B8
	b _0804624A
_0804613C:
	movs r1, #1
	mov sl, r1
	bl GetCurrentMenuEntry
	cmp r0, #1
	beq _08046174
	cmp r0, #1
	bgt _08046152
	cmp r0, #0
	beq _08046158
	b _0804624A
_08046152:
	cmp r0, #2
	beq _08046190
	b _0804624A
_08046158:
	movs r2, #0x10
	str r2, [sp, #0x38]
	movs r3, #0xa0
	lsls r3, r3, #0xe
	mov sb, r3
	mov r4, sb
	str r4, [sp, #0x3c]
	ldr r0, _08046170
	str r0, [sp, #0x40]
	movs r1, #0
	b _080461A6
	.align 2, 0
_08046170: .4byte 0x020010B2
_08046174:
	movs r2, #0x10
	str r2, [sp, #0x38]
	movs r3, #0x90
	lsls r3, r3, #0xf
	mov sb, r3
	movs r4, #0xa0
	lsls r4, r4, #0xe
	str r4, [sp, #0x3c]
	ldr r0, _0804618C
	str r0, [sp, #0x40]
	movs r1, #1
	b _080461A6
	.align 2, 0
_0804618C: .4byte 0x020010CC
_08046190:
	movs r2, #0x10
	str r2, [sp, #0x38]
	movs r3, #0xd0
	lsls r3, r3, #0xf
	mov sb, r3
	movs r4, #0xa0
	lsls r4, r4, #0xe
	str r4, [sp, #0x3c]
	ldr r0, _080461B0
	str r0, [sp, #0x40]
	movs r1, #2
_080461A6:
	mov r8, r1
	ldr r0, _080461B4
	str r1, [r0]
	b _0804624A
	.align 2, 0
_080461B0: .4byte 0x020010E6
_080461B4: .4byte 0x0203F4DC
_080461B8:
	movs r2, #3
	mov sl, r2
	movs r3, #1
	str r3, [sp, #0x18]
	b _0804624A
_080461C2:
	movs r0, #0x40
	ands r0, r4
	cmp r0, #0
	beq _08046210
	ldr r0, _08046200
	ldrb r0, [r0]
	cmp r0, #0
	beq _080461F8
	ldr r2, _08046204
	movs r4, #0xcc
	lsls r4, r4, #3
	adds r0, r2, r4
	ldrh r0, [r0]
	ldr r3, _08046208
	adds r4, #2
	adds r1, r2, r4
	ldrb r3, [r3]
	adds r1, r1, r3
	ldrb r1, [r1]
	ldr r3, _0804620C
	adds r2, r2, r3
	ldr r2, [r2]
	movs r4, #0x80
	lsls r4, r4, #9
	adds r2, r2, r4
	bl audio_new_fx
_080461F8:
	bl AdvanceMenuEntryUp
	b _0804624A
	.align 2, 0
_08046200: .4byte byte_203EA89
_08046204: .4byte 0x080CE440
_08046208: .4byte byte_203EA8C
_0804620C: .4byte 0x00000664
_08046210:
	movs r0, #0x80
	ands r0, r4
	cmp r0, #0
	beq _0804624A
	ldr r0, _080462A8
	ldrb r0, [r0]
	cmp r0, #0
	beq _08046246
	ldr r2, _080462AC
	movs r1, #0xcc
	lsls r1, r1, #3
	adds r0, r2, r1
	ldrh r0, [r0]
	ldr r3, _080462B0
	ldr r4, _080462B4
	adds r1, r2, r4
	ldrb r3, [r3]
	adds r1, r1, r3
	ldrb r1, [r1]
	ldr r3, _080462B8
	adds r2, r2, r3
	ldr r2, [r2]
	movs r4, #0x80
	lsls r4, r4, #9
	adds r2, r2, r4
	bl audio_new_fx
_08046246:
	bl AdvanceMenuEntryDown
_0804624A:
	movs r0, #0
	cmp r0, #0
	beq _080462DC
_08046250:
	movs r0, #2
	movs r1, #0
	bl FadeOutObjects
	movs r0, #0
	bl SetTextSpriteCount
	ldr r4, _080462BC
	movs r2, #0x80
	lsls r2, r2, #1
	movs r0, #0xaa
	adds r1, r4, #0
	bl DmaFill32
	ldr r0, _080462C0
	str r4, [r0]
	ldr r0, _080462C4
	movs r1, #0x80
	lsls r1, r1, #3
	adds r4, r4, r1
	str r4, [r0]
	ldr r1, _080462C8
	ldr r0, _080462CC
	str r0, [r1]
	ldr r1, _080462D0
	movs r0, #0
	str r0, [r1]
	bl SyncVblank
	bl UpdateVideo
	bl SkipVblank
	ldr r1, _080462D4
	movs r2, #0xfc
	lsls r2, r2, #6
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #2
	ldr r3, _080462D8
	adds r0, r3, #0
	strh r0, [r1]
	movs r0, #0
	b _080466BC
	.align 2, 0
_080462A8: .4byte byte_203EA89
_080462AC: .4byte 0x080CE440
_080462B0: .4byte byte_203EA8C
_080462B4: .4byte 0x00000662
_080462B8: .4byte 0x00000664
_080462BC: .4byte gOAMBuffer1
_080462C0: .4byte gOAMBufferFramePtr
_080462C4: .4byte gOAMBufferEnd
_080462C8: .4byte gOBJTileFramePtr
_080462CC: .4byte 0x06010000
_080462D0: .4byte gOBJTileCount
_080462D4: .4byte 0x04000050
_080462D8: .4byte 0x00000907
_080462DC:
	movs r0, #0
	bl SetTextSpriteCount
	ldr r4, _0804633C
	movs r2, #0x80
	lsls r2, r2, #1
	movs r0, #0xaa
	adds r1, r4, #0
	bl DmaFill32
	ldr r0, _08046340
	str r4, [r0]
	ldr r0, _08046344
	movs r1, #0x80
	lsls r1, r1, #3
	adds r4, r4, r1
	str r4, [r0]
	ldr r1, _08046348
	ldr r0, _0804634C
	str r0, [r1]
	ldr r0, _08046350
	movs r2, #0
	str r2, [r0]
	ldr r0, _08046354
	ldr r1, _08046358
	ldr r2, [r1]
	movs r1, #0xf0
	subs r1, r1, r2
	asrs r1, r1, #1
	strh r1, [r0]
	movs r1, #8
	strh r1, [r0, #2]
	movs r3, #0
	strh r3, [r0, #0xc]
	ldr r1, _0804635C
	ldr r1, [r1]
	bl AddStringToBuffer
	mov r4, sl
	cmp r4, #4
	bls _08046330
	b _08046564
_08046330:
	lsls r0, r4, #2
	ldr r1, _08046360
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0804633C: .4byte gOAMBuffer1
_08046340: .4byte gOAMBufferFramePtr
_08046344: .4byte gOAMBufferEnd
_08046348: .4byte gOBJTileFramePtr
_0804634C: .4byte 0x06010000
_08046350: .4byte gOBJTileCount
_08046354: .4byte 0x0203F5EC
_08046358: .4byte 0x0203F5D4
_0804635C: .4byte 0x0203F5BC
_08046360: .4byte 0x08046364
_08046364: @ jump table
	.4byte _08046378 @ case 0
	.4byte _0804638A @ case 1
	.4byte _080463BC @ case 2
	.4byte _0804646C @ case 3
	.4byte _080464AC @ case 4
_08046378:
	bl FlushMenuToTextBuffer
	bl RenderText
	bl RenderMenuSprites
	bl sub_8046D44
	b _08046564
_0804638A:
	mov r0, sp
	movs r2, #0
	ldrh r1, [r0, #0x38]
	strh r1, [r0]
	mov r1, sp
	mov r3, sb
	asrs r0, r3, #0x10
	strh r0, [r1, #2]
	mov r0, sp
	strh r2, [r0, #0xc]
	ldr r1, [sp, #0x40]
	bl AddStringToBuffer
	ldr r4, _080463B8
	add sb, r4
	ldr r0, [sp, #0x3c]
	cmp sb, r0
	bgt _0804649C
	mov sb, r0
	movs r1, #2
	mov sl, r1
	b _0804649C
	.align 2, 0
_080463B8: .4byte 0xFFFC8000
_080463BC:
	mov r0, sp
	movs r7, #0
	ldrh r2, [r0, #0x38]
	strh r2, [r0]
	mov r3, sb
	asrs r4, r3, #0x10
	strh r4, [r0, #2]
	strh r7, [r0, #0xc]
	ldr r1, [sp, #0x40]
	bl AddStringToBuffer
	ldr r1, _08046404
	mov r2, r8
	lsls r0, r2, #3
	adds r0, r0, r1
	ldrb r5, [r0, #7]
	adds r6, r4, #0
	cmp r5, #0
	beq _08046414
	ldr r0, _08046408
	ldr r1, _0804640C
	ldr r2, [r1, #4]
	movs r1, #0xf0
	subs r1, r1, r2
	asrs r1, r1, #1
	strh r1, [r0, #0x14]
	adds r1, r6, #0
	adds r1, #0x20
	strh r1, [r0, #0x16]
	strh r7, [r0, #0x20]
	adds r0, #0x14
	ldr r1, _08046410
	ldr r1, [r1, #4]
	bl AddStringToBuffer
	b _0804643E
	.align 2, 0
_08046404: .4byte 0x02001064
_08046408: .4byte 0x0203F5EC
_0804640C: .4byte 0x0203F5D4
_08046410: .4byte 0x0203F5BC
_08046414:
	ldr r2, _08046460
	ldr r0, _08046464
	ldr r0, [r0, #0x14]
	movs r1, #0xf0
	subs r1, r1, r0
	asrs r1, r1, #1
	adds r0, r2, #0
	adds r0, #0x64
	strh r1, [r0]
	adds r1, r6, #0
	adds r1, #0x20
	adds r3, r2, #0
	adds r3, #0x66
	strh r1, [r3]
	adds r1, r2, #0
	adds r1, #0x70
	strh r5, [r1]
	ldr r1, _08046468
	ldr r1, [r1, #0x14]
	bl AddStringToBuffer
_0804643E:
	ldr r0, _08046460
	ldr r1, _08046464
	ldr r2, [r1, #8]
	movs r1, #0xf0
	subs r1, r1, r2
	asrs r1, r1, #1
	movs r2, #0
	strh r1, [r0, #0x28]
	adds r1, r6, #0
	adds r1, #0x40
	strh r1, [r0, #0x2a]
	strh r2, [r0, #0x34]
	adds r0, #0x28
	ldr r1, _08046468
	ldr r1, [r1, #8]
	b _08046498
	.align 2, 0
_08046460: .4byte 0x0203F5EC
_08046464: .4byte 0x0203F5D4
_08046468: .4byte 0x0203F5BC
_0804646C:
	mov r0, sp
	movs r5, #0
	ldrh r3, [r0, #0x38]
	strh r3, [r0]
	mov r1, sb
	asrs r4, r1, #0x10
	strh r4, [r0, #2]
	strh r5, [r0, #0xc]
	ldr r1, [sp, #0x40]
	bl AddStringToBuffer
	ldr r0, _080464A4
	movs r1, #0x10
	strh r1, [r0, #0x3c]
	adds r4, #0x20
	strh r4, [r0, #0x3e]
	adds r1, r0, #0
	adds r1, #0x48
	strh r5, [r1]
	adds r0, #0x3c
	ldr r1, _080464A8
	ldr r1, [r1, #0xc]
_08046498:
	bl AddStringToBuffer
_0804649C:
	bl RenderText
	b _08046564
	.align 2, 0
_080464A4: .4byte 0x0203F5EC
_080464A8: .4byte 0x0203F5BC
_080464AC:
	mov r2, sb
	asrs r6, r2, #0x10
	ldr r3, [sp, #0x1c]
	cmp r3, #0
	beq _08046524
	ldr r0, [sp, #0x30]
	bl audio_fx_still_active
	cmp r0, #0
	bne _08046524
	ldr r5, [sp, #0x34]
	subs r5, #1
_080464C4:
	ldr r0, [sp, #0x24]
	ldr r1, [sp, #0x28]
	bl RandomMinMax
	ldr r4, [sp, #0x2c]
	cmp r0, r4
	beq _080464C4
	str r0, [sp, #0x2c]
	ldr r0, _08046508
	ldrb r0, [r0]
	cmp r0, #0
	beq _08046514
	ldr r3, _0804650C
	ldr r0, [sp, #0x2c]
	lsls r4, r0, #3
	adds r0, r4, r3
	ldrh r0, [r0]
	ldr r1, _08046510
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
	str r0, [sp, #0x30]
	b _0804651A
	.align 2, 0
_08046508: .4byte byte_203EA89
_0804650C: .4byte 0x080CE440
_08046510: .4byte byte_203EA8C
_08046514:
	movs r4, #1
	rsbs r4, r4, #0
	str r4, [sp, #0x30]
_0804651A:
	str r5, [sp, #0x34]
	cmp r5, #0
	bne _08046524
	movs r0, #0
	str r0, [sp, #0x1c]
_08046524:
	mov r0, sp
	movs r4, #0
	ldrh r1, [r0, #0x38]
	strh r1, [r0]
	strh r6, [r0, #2]
	strh r4, [r0, #0xc]
	ldr r1, [sp, #0x40]
	bl AddStringToBuffer
	ldr r2, _08046604
	ldr r0, _08046608
	ldr r0, [r0, #0x10]
	movs r1, #0xf0
	subs r1, r1, r0
	asrs r1, r1, #1
	adds r0, r2, #0
	adds r0, #0x50
	strh r1, [r0]
	adds r1, r6, #0
	adds r1, #0x20
	adds r3, r2, #0
	adds r3, #0x52
	strh r1, [r3]
	adds r1, r2, #0
	adds r1, #0x5c
	strh r4, [r1]
	ldr r1, _0804660C
	ldr r1, [r1, #0x10]
	bl AddStringToBuffer
	bl RenderText
_08046564:
	movs r0, #4
	bl CheckHeap
	bl CheckStacks
	bl SyncVblank
	bl UpdateVideo
	bl SkipVblank
	ldr r2, [sp, #0x14]
	cmp r2, #0
	beq _0804658C
	movs r0, #2
	movs r1, #0
	bl sub_08026BA8
	movs r3, #0
	str r3, [sp, #0x14]
_0804658C:
	ldr r4, [sp, #0x18]
	cmp r4, #0
	beq _08046654
	mov r0, r8
	cmp r0, #0
	bge _0804659C
	.2byte 0xEE00, 0xEE00
_0804659C:
	ldr r0, _08046610
	mov r2, r8
	lsls r1, r2, #3
	adds r1, r1, r0
	ldr r2, _08046614
	ldrb r0, [r2, #8]
	strb r0, [r1, #4]
	ldrb r0, [r2, #9]
	strb r0, [r1, #5]
	ldrb r0, [r2, #0xa]
	strb r0, [r1, #6]
	ldrb r0, [r2]
	movs r3, #0
	strh r0, [r1]
	ldrh r0, [r2, #0xc]
	strh r0, [r1, #2]
	strb r3, [r1, #7]
	bl MakeFileStrings
	ldr r0, _08046618
	ldrb r1, [r0]
	mov r0, r8
	bl sub_080449B0
	movs r0, #4
	bl CheckHeap
	movs r0, #4
	movs r1, #9
	bl DoesMemBlockExistById
	cmp r0, #0
	beq _080465E2
	.2byte 0xEE00, 0xEE00
_080465E2:
	movs r3, #4
	mov sl, r3
	movs r4, #0x28
	str r4, [sp, #0x20]
	movs r0, #0
	str r0, [sp, #0x18]
	movs r1, #1
	str r1, [sp, #0x1c]
	mov r2, r8
	cmp r2, #1
	beq _08046632
	cmp r2, #1
	bgt _0804661C
	cmp r2, #0
	beq _08046624
	b _0804664C
	.align 2, 0
_08046604: .4byte 0x0203F5EC
_08046608: .4byte 0x0203F5D4
_0804660C: .4byte 0x0203F5BC
_08046610: .4byte 0x02001064
_08046614: .4byte gGameStatus
_08046618: .4byte 0x02000335
_0804661C:
	mov r3, r8
	cmp r3, #2
	beq _08046640
	b _0804664C
_08046624:
	movs r4, #8
	str r4, [sp, #0x24]
	movs r0, #0xb
	str r0, [sp, #0x28]
	movs r1, #2
	str r1, [sp, #0x34]
	b _0804664C
_08046632:
	movs r2, #0xf
	str r2, [sp, #0x24]
	movs r3, #0x12
	str r3, [sp, #0x28]
	movs r4, #2
	str r4, [sp, #0x34]
	b _0804664C
_08046640:
	movs r0, #0x43
	str r0, [sp, #0x24]
	movs r1, #0x45
	str r1, [sp, #0x28]
	movs r2, #4
	str r2, [sp, #0x34]
_0804664C:
	movs r3, #1
	rsbs r3, r3, #0
	str r3, [sp, #0x30]
	str r3, [sp, #0x2c]
_08046654:
	ldr r4, [sp, #0x20]
	cmp r4, #0
	bge _0804665C
	b _08046090
_0804665C:
	cmp r4, #0
	beq _08046666
	subs r4, #1
	str r4, [sp, #0x20]
	b _08046090
_08046666:
	movs r0, #2
	movs r1, #0
	bl FadeOutObjects
	movs r0, #0
	bl SetTextSpriteCount
	ldr r4, _080466CC
	movs r2, #0x80
	lsls r2, r2, #1
	movs r0, #0xaa
	adds r1, r4, #0
	bl DmaFill32
	ldr r0, _080466D0
	str r4, [r0]
	ldr r0, _080466D4
	movs r1, #0x80
	lsls r1, r1, #3
	adds r4, r4, r1
	str r4, [r0]
	ldr r1, _080466D8
	ldr r0, _080466DC
	str r0, [r1]
	ldr r0, _080466E0
	ldr r2, [sp, #0x20]
	str r2, [r0]
	bl SyncVblank
	bl UpdateVideo
	bl SkipVblank
	ldr r1, _080466E4
	movs r3, #0xfc
	lsls r3, r3, #6
	adds r0, r3, #0
	strh r0, [r1]
	adds r1, #2
	ldr r4, _080466E8
	adds r0, r4, #0
	strh r0, [r1]
	movs r0, #1
_080466BC:
	add sp, #0x44
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080466CC: .4byte gOAMBuffer1
_080466D0: .4byte gOAMBufferFramePtr
_080466D4: .4byte gOAMBufferEnd
_080466D8: .4byte gOBJTileFramePtr
_080466DC: .4byte 0x06010000
_080466E0: .4byte gOBJTileCount
_080466E4: .4byte 0x04000050
_080466E8: .4byte 0x00000907

    .thumb
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
_080468EC: .4byte 0x080CEB5C
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
