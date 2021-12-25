
    .syntax unified

    .text

    .thumb
    .global sub_80630C0
sub_80630C0: @ 0x080630C0
	push {r4, lr}
	sub sp, #4
	adds r3, r0, #0
	ldr r2, _080630E4
	movs r0, #0
	movs r4, #1
	strb r4, [r2, #0xb]
	strb r0, [r2, #0xc]
	strh r3, [r2]
	strh r1, [r2, #2]
	strh r3, [r2, #4]
	str r0, [r2, #0x10]
	cmp r3, r1
	ble _080630E8
	strb r0, [r2, #9]
	subs r0, r3, r1
	b _080630EC
	.align 2, 0
_080630E4: .4byte 0x0203FA68
_080630E8:
	strb r4, [r2, #9]
	subs r0, r1, r3
_080630EC:
	movs r1, #0x3c
	mov r2, sp
	bl sub_8064834
	ldr r4, _08063118
	strh r0, [r4, #6]
	ldr r0, [sp]
	adds r0, #0x3c
	strb r0, [r4, #8]
	ldrh r0, [r4, #6]
	bl sub_8042218
	movs r1, #0
	cmp r0, #0
	bne _0806310C
	movs r1, #1
_0806310C:
	strb r1, [r4, #0xa]
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08063118: .4byte 0x0203FA68


	.thumb
    .global sub_806311C
sub_806311C: @ 0x0806311C
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r3, _08063140
	movs r0, #0
	movs r5, #1
	strb r5, [r3, #0xb]
	strb r0, [r3, #0xc]
	strh r4, [r3]
	strh r1, [r3, #2]
	strh r4, [r3, #4]
	str r2, [r3, #0x10]
	cmp r4, r1
	ble _08063144
	strb r0, [r3, #9]
	subs r0, r4, r1
	b _08063148
	.align 2, 0
_08063140: .4byte 0x0203FA68
_08063144:
	strb r5, [r3, #9]
	subs r0, r1, r4
_08063148:
	movs r1, #0x3c
	mov r2, sp
	bl sub_8064834
	ldr r4, _08063174
	strh r0, [r4, #6]
	ldr r0, [sp]
	adds r0, #0x3c
	strb r0, [r4, #8]
	ldrh r0, [r4, #6]
	bl sub_8042218
	movs r1, #0
	cmp r0, #0
	bne _08063168
	movs r1, #1
_08063168:
	strb r1, [r4, #0xa]
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08063174: .4byte 0x0203FA68

    .thumb
    .global sub_8063178
sub_8063178: @ 0x08063178
	ldr r1, _08063184
	movs r0, #0
	strb r0, [r1, #0xb]
	str r0, [r1, #0x10]
	bx lr
	.align 2, 0
_08063184: .4byte 0x0203FA68

    .thumb
    .global sub_8063188
sub_8063188: @ 0x08063188
	ldr r1, _08063190
	movs r0, #1
	strb r0, [r1, #0xc]
	bx lr
	.align 2, 0
_08063190: .4byte 0x0203FA68

    .thumb
    .global sub_8063194
sub_8063194: @ 0x08063194
	ldr r1, _0806319C
	movs r0, #0
	strb r0, [r1, #0xc]
	bx lr
	.align 2, 0
_0806319C: .4byte 0x0203FA68

    .thumb
    .global sub_80631A0
sub_80631A0: @ 0x080631A0
	ldr r0, _080631A8
	ldrb r0, [r0, #0xb]
	bx lr
	.align 2, 0
_080631A8: .4byte 0x0203FA68

    .thumb
    .global sub_80631AC
sub_80631AC: @ 0x080631AC
	push {r4, r5, lr}
	ldr r4, _08063210
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	beq _0806322E
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _0806322E
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	beq _080631D2
	ldrh r0, [r4, #6]
	bl sub_8042218
	movs r1, #0
	cmp r0, #0
	bne _080631D0
	movs r1, #1
_080631D0:
	strb r1, [r4, #0xa]
_080631D2:
	ldr r4, _08063210
	ldrh r0, [r4, #4]
	subs r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0
	bne _080631F2
	movs r0, #0
	strb r0, [r4, #0xb]
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq _080631F2
	bl _call_via_r0
	str r5, [r4, #0x10]
_080631F2:
	ldr r1, _08063210
	ldrb r0, [r1, #8]
	subs r0, #1
	strb r0, [r1, #8]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0806322E
	movs r0, #0x3c
	strb r0, [r1, #8]
	ldrb r0, [r1, #9]
	cmp r0, #0
	beq _08063214
	cmp r0, #1
	beq _0806321A
	b _08063220
	.align 2, 0
_08063210: .4byte 0x0203FA68
_08063214:
	ldrh r0, [r1, #6]
	subs r0, #1
	b _0806321E
_0806321A:
	ldrh r0, [r1, #6]
	adds r0, #1
_0806321E:
	strh r0, [r1, #6]
_08063220:
	ldrb r0, [r1, #0xa]
	cmp r0, #0
	bne _0806322E
	ldrh r1, [r1, #6]
	movs r0, #0x24
	bl sub_08040204
_0806322E:
	pop {r4, r5}
	pop {r0}
	bx r0

    .thumb
    .global sub_08063234
sub_08063234: @ 0x08063234
	push {lr}
	bl sub_806359C
	ldr r0, _08063250
	ldrb r0, [r0]
	cmp r0, #4
	bls _08063244
	b _08063460
_08063244:
	lsls r0, r0, #2
	ldr r1, _08063254
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08063250: .4byte 0x02000320
_08063254: .4byte 0x08063258
_08063258: @ jump table
	.4byte _0806326C @ case 0
	.4byte _080632D0 @ case 1
	.4byte _08063334 @ case 2
	.4byte _080633FC @ case 3
	.4byte _08063398 @ case 4
_0806326C:
	ldr r1, _08063298
	ldr r0, _0806329C
	str r0, [r1]
	ldr r1, _080632A0
	ldr r0, _080632A4
	str r0, [r1]
	ldr r1, _080632A8
	ldr r0, _080632AC
	str r0, [r1]
	ldr r1, _080632B0
	ldr r0, _080632B4
	str r0, [r1]
	ldr r1, _080632B8
	ldr r0, _080632BC
	str r0, [r1]
	ldr r1, _080632C0
	ldr r0, _080632C4
	str r0, [r1]
	ldr r1, _080632C8
	ldr r0, _080632CC
	str r0, [r1]
	b _08063464
	.align 2, 0
_08063298: .4byte 0x0203FAF8
_0806329C: .4byte 0x086AD4E0
_080632A0: .4byte 0x0203FAFC
_080632A4: .4byte 0x086AD504
_080632A8: .4byte 0x0203FB00
_080632AC: .4byte 0x086AD524
_080632B0: .4byte 0x0203FB04
_080632B4: .4byte 0x086AD53C
_080632B8: .4byte 0x0203FB08
_080632BC: .4byte 0x086AD554
_080632C0: .4byte 0x0203FB0C
_080632C4: .4byte 0x086AD59C
_080632C8: .4byte 0x0203FB10
_080632CC: .4byte 0x086AD5CC
_080632D0:
	ldr r1, _080632FC
	ldr r0, _08063300
	str r0, [r1]
	ldr r1, _08063304
	ldr r0, _08063308
	str r0, [r1]
	ldr r1, _0806330C
	ldr r0, _08063310
	str r0, [r1]
	ldr r1, _08063314
	ldr r0, _08063318
	str r0, [r1]
	ldr r1, _0806331C
	ldr r0, _08063320
	str r0, [r1]
	ldr r1, _08063324
	ldr r0, _08063328
	str r0, [r1]
	ldr r1, _0806332C
	ldr r0, _08063330
	str r0, [r1]
	b _08063464
	.align 2, 0
_080632FC: .4byte 0x0203FAF8
_08063300: .4byte 0x086AD5E0
_08063304: .4byte 0x0203FAFC
_08063308: .4byte 0x086AD604
_0806330C: .4byte 0x0203FB00
_08063310: .4byte 0x086AD624
_08063314: .4byte 0x0203FB04
_08063318: .4byte 0x086AD63C
_0806331C: .4byte 0x0203FB08
_08063320: .4byte 0x086AD654
_08063324: .4byte 0x0203FB0C
_08063328: .4byte 0x086AD69C
_0806332C: .4byte 0x0203FB10
_08063330: .4byte 0x086AD6CC
_08063334:
	ldr r1, _08063360
	ldr r0, _08063364
	str r0, [r1]
	ldr r1, _08063368
	ldr r0, _0806336C
	str r0, [r1]
	ldr r1, _08063370
	ldr r0, _08063374
	str r0, [r1]
	ldr r1, _08063378
	ldr r0, _0806337C
	str r0, [r1]
	ldr r1, _08063380
	ldr r0, _08063384
	str r0, [r1]
	ldr r1, _08063388
	ldr r0, _0806338C
	str r0, [r1]
	ldr r1, _08063390
	ldr r0, _08063394
	str r0, [r1]
	b _08063464
	.align 2, 0
_08063360: .4byte 0x0203FAF8
_08063364: .4byte 0x086AD7E0
_08063368: .4byte 0x0203FAFC
_0806336C: .4byte 0x086AD804
_08063370: .4byte 0x0203FB00
_08063374: .4byte 0x086AD824
_08063378: .4byte 0x0203FB04
_0806337C: .4byte 0x086AD83C
_08063380: .4byte 0x0203FB08
_08063384: .4byte 0x086AD854
_08063388: .4byte 0x0203FB0C
_0806338C: .4byte 0x086AD89C
_08063390: .4byte 0x0203FB10
_08063394: .4byte 0x086AD8CC
_08063398:
	ldr r1, _080633C4
	ldr r0, _080633C8
	str r0, [r1]
	ldr r1, _080633CC
	ldr r0, _080633D0
	str r0, [r1]
	ldr r1, _080633D4
	ldr r0, _080633D8
	str r0, [r1]
	ldr r1, _080633DC
	ldr r0, _080633E0
	str r0, [r1]
	ldr r1, _080633E4
	ldr r0, _080633E8
	str r0, [r1]
	ldr r1, _080633EC
	ldr r0, _080633F0
	str r0, [r1]
	ldr r1, _080633F4
	ldr r0, _080633F8
	str r0, [r1]
	b _08063464
	.align 2, 0
_080633C4: .4byte 0x0203FAF8
_080633C8: .4byte 0x086AD8E0
_080633CC: .4byte 0x0203FAFC
_080633D0: .4byte 0x086AD904
_080633D4: .4byte 0x0203FB00
_080633D8: .4byte 0x086AD924
_080633DC: .4byte 0x0203FB04
_080633E0: .4byte 0x086AD93C
_080633E4: .4byte 0x0203FB08
_080633E8: .4byte 0x086AD954
_080633EC: .4byte 0x0203FB0C
_080633F0: .4byte 0x086AD99C
_080633F4: .4byte 0x0203FB10
_080633F8: .4byte 0x086AD9CC
_080633FC:
	ldr r1, _08063428
	ldr r0, _0806342C
	str r0, [r1]
	ldr r1, _08063430
	ldr r0, _08063434
	str r0, [r1]
	ldr r1, _08063438
	ldr r0, _0806343C
	str r0, [r1]
	ldr r1, _08063440
	ldr r0, _08063444
	str r0, [r1]
	ldr r1, _08063448
	ldr r0, _0806344C
	str r0, [r1]
	ldr r1, _08063450
	ldr r0, _08063454
	str r0, [r1]
	ldr r1, _08063458
	ldr r0, _0806345C
	str r0, [r1]
	b _08063464
	.align 2, 0
_08063428: .4byte 0x0203FAF8
_0806342C: .4byte 0x086AD6E0
_08063430: .4byte 0x0203FAFC
_08063434: .4byte 0x086AD704
_08063438: .4byte 0x0203FB00
_0806343C: .4byte 0x086AD724
_08063440: .4byte 0x0203FB04
_08063444: .4byte 0x086AD73C
_08063448: .4byte 0x0203FB08
_0806344C: .4byte 0x086AD754
_08063450: .4byte 0x0203FB0C
_08063454: .4byte 0x086AD79C
_08063458: .4byte 0x0203FB10
_0806345C: .4byte 0x086AD7CC
_08063460:
	.2byte 0xEE00, 0xEE00
_08063464:
	pop {r0}
	bx r0


	.thumb
    .global sub_8063468
sub_8063468: @ 0x08063468
	push {r4, r5, r6, lr}
	sub sp, #0x10
	ldr r0, _08063538
	movs r1, #0
	strb r1, [r0]
	ldr r0, _0806353C
	strb r1, [r0]
	ldr r2, _08063540
	ldr r1, _08063544
	ldr r0, _08063548
	ldr r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r2]
	ldr r4, _0806354C
	ldrb r0, [r2]
	lsls r0, r0, #1
	subs r0, #1
	strb r0, [r4]
	ldr r6, _08063550
	ldrb r1, [r4]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	movs r1, #2
	movs r2, #4
	bl Alloc
	str r0, [r6]
	ldr r5, _08063554
	ldrb r0, [r4]
	movs r1, #2
	movs r2, #4
	bl Alloc
	str r0, [r5]
	ldr r2, _08063558
	ldrb r1, [r4]
	lsls r1, r1, #3
	movs r0, #0xf0
	subs r0, r0, r1
	asrs r0, r0, #1
	str r0, [r2]
	movs r5, #0
	ldrb r4, [r4]
	cmp r5, r4
	bge _08063504
	movs r4, #0
_080634CA:
	ldr r0, _08063554
	ldr r0, [r0]
	adds r0, r0, r5
	movs r1, #0
	strb r1, [r0]
	lsls r2, r5, #3
	ldr r0, [r6]
	adds r0, r0, r4
	movs r1, #0
	str r1, [sp]
	ldr r1, _08063558
	ldr r1, [r1]
	adds r1, r1, r2
	str r1, [sp, #4]
	movs r1, #0x88
	str r1, [sp, #8]
	movs r1, #2
	str r1, [sp, #0xc]
	ldr r1, _0806355C
	movs r2, #0
	movs r3, #0
	bl SetSprite
	adds r4, #0x1c
	adds r5, #1
	ldr r0, _0806354C
	ldrb r0, [r0]
	cmp r5, r0
	blt _080634CA
_08063504:
	ldr r1, _08063560
	movs r0, #0
	strb r0, [r1]
	movs r0, #0x12
	bl RoomObjPaletteToVram
	ldr r2, _08063564
	ldr r0, _08063568
	movs r3, #0
	ldrsh r1, [r0, r3]
	movs r0, #0x88
	subs r0, r0, r1
	str r0, [r2]
	ldr r1, _0806356C
	ldr r0, _08063570
	movs r2, #0
	ldrsh r0, [r0, r2]
	str r0, [r1]
	ldr r1, _08063574
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r1]
	add sp, #0x10
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08063538: .4byte 0x0203FA97
_0806353C: .4byte 0x0203FA98
_08063540: .4byte 0x0203FA99
_08063544: .4byte 0x080CEF70
_08063548: .4byte 0x02001108
_0806354C: .4byte 0x0203FA9A
_08063550: .4byte 0x0203FB14
_08063554: .4byte 0x0203FB18
_08063558: .4byte 0x0203FB1C
_0806355C: .4byte 0x000004D7
_08063560: .4byte 0x0203FA9B
_08063564: .4byte 0x02001110
_08063568: .4byte gCameraPixelX
_0806356C: .4byte 0x02001114
_08063570: .4byte gCameraPixelY
_08063574: .4byte 0x0203FAD8

    .thumb
    .global sub_8063578
sub_8063578: @ 0x08063578
	push {lr}
	ldr r0, _08063594
	ldr r0, [r0]
	movs r1, #4
	bl Free
	ldr r0, _08063598
	ldr r0, [r0]
	movs r1, #4
	bl Free
	pop {r0}
	bx r0
	.align 2, 0
_08063594: .4byte 0x0203FB14
_08063598: .4byte 0x0203FB18

    .thumb
sub_806359C: @ 0x0806359C
	push {r4, r5, r6, r7, lr}
	ldr r3, _08063624
	ldr r4, _08063628
	ldr r5, _0806362C
	ldr r6, _08063630
	ldr r7, _08063634
	ldr r0, _08063638
	mov ip, r0
	ldr r1, _0806363C
	movs r2, #0
	adds r0, r1, #4
_080635B2:
	strb r2, [r0]
	subs r0, #1
	cmp r0, r1
	bge _080635B2
	movs r0, #0
	strb r0, [r3]
	ldr r1, _08063640
	movs r2, #0
	adds r0, r1, #0
	adds r0, #8
_080635C6:
	strb r2, [r0]
	subs r0, #1
	cmp r0, r1
	bge _080635C6
	movs r0, #0
	strb r0, [r4]
	ldr r1, _08063644
	movs r2, #0
	adds r0, r1, #7
_080635D8:
	strb r2, [r0]
	subs r0, #1
	cmp r0, r1
	bge _080635D8
	movs r0, #0
	strb r0, [r5]
	ldr r1, _08063648
	movs r2, #0
	adds r0, r1, #5
_080635EA:
	strb r2, [r0]
	subs r0, #1
	cmp r0, r1
	bge _080635EA
	movs r0, #0
	strb r0, [r6]
	ldr r1, _0806364C
	movs r2, #0
	adds r0, r1, #5
_080635FC:
	strb r2, [r0]
	subs r0, #1
	cmp r0, r1
	bge _080635FC
	movs r0, #0
	strb r0, [r7]
	ldr r1, _08063650
	movs r2, #0
	adds r0, r1, #7
_0806360E:
	strb r2, [r0]
	subs r0, #1
	cmp r0, r1
	bge _0806360E
	movs r0, #0
	mov r1, ip
	strb r0, [r1]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08063624: .4byte 0x0203FAA1
_08063628: .4byte 0x0203FAAB
_0806362C: .4byte 0x0203FAB4
_08063630: .4byte 0x0203FABB
_08063634: .4byte 0x0203FAC2
_08063638: .4byte 0x0203FACB
_0806363C: .4byte 0x0203FA9C
_08063640: .4byte 0x0203FAA2
_08063644: .4byte 0x0203FAAC
_08063648: .4byte 0x0203FAB5
_0806364C: .4byte 0x0203FABC
_08063650: .4byte 0x0203FAC3

    .thumb
sub_08063654: @ 0x08063654
	push {r4, r5, lr}
	sub sp, #0xc
	ldr r0, _080636A4
	ldrb r0, [r0]
	cmp r0, #5
	bne _08063664
	bl sub_806359C
_08063664:
	movs r1, #0
	movs r3, #0
	ldr r2, _080636A8
_0806366A:
	adds r0, r3, r2
	ldrb r0, [r0]
	cmp r0, #0
	bne _0806367E
	adds r0, r1, #0
	adds r1, r0, #1
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	add r0, sp
	strb r3, [r0]
_0806367E:
	adds r3, #1
	cmp r3, #4
	ble _0806366A
	cmp r1, #0
	bne _0806368C
	.2byte 0xEE00, 0xEE00
_0806368C:
	cmp r1, #1
	bls _080636B0
	ldr r4, _080636AC
	subs r1, #1
	movs r0, #0
	bl RandomMinMax
	add r0, sp
	ldrb r0, [r0]
	str r0, [r4]
	b _080636B8
	.align 2, 0
_080636A4: .4byte 0x0203FAA1
_080636A8: .4byte 0x0203FA9C
_080636AC: .4byte 0x0203FACC
_080636B0:
	ldr r0, _080636CC
	mov r1, sp
	ldrb r1, [r1]
	str r1, [r0]
_080636B8:
	ldr r0, _080636CC
	ldr r0, [r0]
	cmp r0, #4
	bls _080636C2
	b _080638A0
_080636C2:
	lsls r0, r0, #2
	ldr r1, _080636D0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080636CC: .4byte 0x0203FACC
_080636D0: .4byte 0x080636D4
_080636D4: @ jump table
	.4byte _080636E8 @ case 0
	.4byte _08063748 @ case 1
	.4byte _080637A8 @ case 2
	.4byte _08063808 @ case 3
	.4byte _08063868 @ case 4
_080636E8:
	ldr r1, _08063718
	ldr r0, _0806371C
	str r0, [r1]
	ldr r1, _08063720
	ldr r0, _08063724
	str r0, [r1]
	ldr r2, _08063728
	movs r0, #9
	strb r0, [r2]
	ldr r1, _0806372C
	ldr r0, _08063730
	ldr r0, [r0]
	str r0, [r1]
	ldr r1, _08063734
	ldr r0, _08063738
	ldr r0, [r0]
	str r0, [r1]
	ldr r1, _0806373C
	movs r0, #0x12
	str r0, [r1]
	ldr r1, _08063740
	ldr r0, _08063744
	str r0, [r1]
	b _080638A6
	.align 2, 0
_08063718: .4byte 0x0203FAE0
_0806371C: .4byte 0x0203FAA2
_08063720: .4byte 0x0203FAE4
_08063724: .4byte 0x0203FAAB
_08063728: .4byte 0x0203FADC
_0806372C: .4byte 0x0203FAE8
_08063730: .4byte 0x0203FAF8
_08063734: .4byte 0x0203FAEC
_08063738: .4byte 0x0203FB08
_0806373C: .4byte 0x0203FAF0
_08063740: .4byte 0x0203FAF4
_08063744: .4byte 0x080CEEBC
_08063748:
	ldr r1, _08063778
	ldr r0, _0806377C
	str r0, [r1]
	ldr r1, _08063780
	ldr r0, _08063784
	str r0, [r1]
	ldr r2, _08063788
	movs r0, #8
	strb r0, [r2]
	ldr r1, _0806378C
	ldr r0, _08063790
	ldr r0, [r0]
	str r0, [r1]
	ldr r1, _08063794
	ldr r0, _08063798
	ldr r0, [r0]
	str r0, [r1]
	ldr r1, _0806379C
	movs r0, #0x12
	str r0, [r1]
	ldr r1, _080637A0
	ldr r0, _080637A4
	str r0, [r1]
	b _080638A6
	.align 2, 0
_08063778: .4byte 0x0203FAE0
_0806377C: .4byte 0x0203FAAC
_08063780: .4byte 0x0203FAE4
_08063784: .4byte 0x0203FAB4
_08063788: .4byte 0x0203FADC
_0806378C: .4byte 0x0203FAE8
_08063790: .4byte 0x0203FAFC
_08063794: .4byte 0x0203FAEC
_08063798: .4byte 0x0203FB08
_0806379C: .4byte 0x0203FAF0
_080637A0: .4byte 0x0203FAF4
_080637A4: .4byte 0x080CEEE0
_080637A8:
	ldr r1, _080637D8
	ldr r0, _080637DC
	str r0, [r1]
	ldr r1, _080637E0
	ldr r0, _080637E4
	str r0, [r1]
	ldr r2, _080637E8
	movs r0, #6
	strb r0, [r2]
	ldr r1, _080637EC
	ldr r0, _080637F0
	ldr r0, [r0]
	str r0, [r1]
	ldr r1, _080637F4
	ldr r0, _080637F8
	ldr r0, [r0]
	str r0, [r1]
	ldr r1, _080637FC
	movs r0, #0xc
	str r0, [r1]
	ldr r1, _08063800
	ldr r0, _08063804
	str r0, [r1]
	b _080638A6
	.align 2, 0
_080637D8: .4byte 0x0203FAE0
_080637DC: .4byte 0x0203FAB5
_080637E0: .4byte 0x0203FAE4
_080637E4: .4byte 0x0203FABB
_080637E8: .4byte 0x0203FADC
_080637EC: .4byte 0x0203FAE8
_080637F0: .4byte 0x0203FB00
_080637F4: .4byte 0x0203FAEC
_080637F8: .4byte 0x0203FB0C
_080637FC: .4byte 0x0203FAF0
_08063800: .4byte 0x0203FAF4
_08063804: .4byte 0x080CEF00
_08063808:
	ldr r1, _08063838
	ldr r0, _0806383C
	str r0, [r1]
	ldr r1, _08063840
	ldr r0, _08063844
	str r0, [r1]
	ldr r2, _08063848
	movs r0, #6
	strb r0, [r2]
	ldr r1, _0806384C
	ldr r0, _08063850
	ldr r0, [r0]
	str r0, [r1]
	ldr r1, _08063854
	ldr r0, _08063858
	ldr r0, [r0]
	str r0, [r1]
	ldr r1, _0806385C
	movs r0, #0x12
	str r0, [r1]
	ldr r1, _08063860
	ldr r0, _08063864
	str r0, [r1]
	b _080638A6
	.align 2, 0
_08063838: .4byte 0x0203FAE0
_0806383C: .4byte 0x0203FABC
_08063840: .4byte 0x0203FAE4
_08063844: .4byte 0x0203FAC2
_08063848: .4byte 0x0203FADC
_0806384C: .4byte 0x0203FAE8
_08063850: .4byte 0x0203FB04
_08063854: .4byte 0x0203FAEC
_08063858: .4byte 0x0203FB08
_0806385C: .4byte 0x0203FAF0
_08063860: .4byte 0x0203FAF4
_08063864: .4byte 0x080CEF18
_08063868:
	ldr r1, _08063884
	ldr r0, _08063888
	str r0, [r1]
	ldr r1, _0806388C
	ldr r0, _08063890
	str r0, [r1]
	ldr r2, _08063894
	movs r0, #8
	strb r0, [r2]
	ldr r1, _08063898
	ldr r0, _0806389C
	str r0, [r1]
	b _080638A6
	.align 2, 0
_08063884: .4byte 0x0203FAE0
_08063888: .4byte 0x0203FAC3
_0806388C: .4byte 0x0203FAE4
_08063890: .4byte 0x0203FACB
_08063894: .4byte 0x0203FADC
_08063898: .4byte 0x0203FAF4
_0806389C: .4byte 0x080CEF30
_080638A0:
	.2byte 0xEE00, 0xEE00
	ldr r2, _080638E8
_080638A6:
	movs r1, #0
	movs r3, #0
	ldrb r2, [r2]
	ldr r5, _080638EC
	cmp r1, r2
	bge _080638D0
	ldr r0, _080638F0
	ldr r4, [r0]
_080638B6:
	adds r0, r4, r3
	ldrb r0, [r0]
	cmp r0, #0
	bne _080638CA
	adds r0, r1, #0
	adds r1, r0, #1
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	add r0, sp
	strb r3, [r0]
_080638CA:
	adds r3, #1
	cmp r3, r2
	blt _080638B6
_080638D0:
	cmp r1, #0
	bne _080638D8
	.2byte 0xEE00, 0xEE00
_080638D8:
	cmp r1, #1
	bls _080638F4
	subs r1, #1
	movs r0, #0
	bl RandomMinMax
	add r0, sp
	b _080638F6
	.align 2, 0
_080638E8: .4byte 0x0203FADC
_080638EC: .4byte 0x0203FAD0
_080638F0: .4byte 0x0203FAE0
_080638F4:
	mov r0, sp
_080638F6:
	ldrb r0, [r0]
	str r0, [r5]
	add sp, #0xc
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

    .thumb
sub_08063904: @ 0x08063904
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0xc
	ldr r4, _0806393C
	movs r0, #0
	movs r1, #2
	bl RandomMinMax
	adds r3, r0, #0
	str r3, [r4]
	lsls r0, r3, #2
	mov r1, sp
	adds r2, r1, r0
	ldr r0, _08063940
	ldr r0, [r0]
	ldr r1, _08063944
	ldr r1, [r1]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [r2]
	cmp r3, #0
	bne _08063948
	movs r6, #1
	movs r7, #2
	b _08063956
	.align 2, 0
_0806393C: .4byte 0x0203FAD4
_08063940: .4byte 0x0203FAD0
_08063944: .4byte 0x0203FAE8
_08063948:
	cmp r3, #1
	bne _08063952
	movs r6, #0
	movs r7, #2
	b _08063956
_08063952:
	movs r6, #0
	movs r7, #1
_08063956:
	ldr r0, _08063964
	ldr r0, [r0]
	cmp r0, #0
	bne _08063968
	movs r0, #0
	b _08063970
	.align 2, 0
_08063964: .4byte 0x0203FACC
_08063968:
	movs r0, #0
	movs r1, #2
	bl RandomMinMax
_08063970:
	cmp r0, #1
	beq _080639D8
	cmp r0, #1
	bgt _0806397E
	cmp r0, #0
	beq _08063986
	b _08063B24
_0806397E:
	cmp r0, #2
	bne _08063984
	b _08063AB4
_08063984:
	b _08063B24
_08063986:
	ldr r4, _080639D0
	ldr r1, [r4]
	subs r1, #1
	movs r0, #0
	bl RandomMinMax
	adds r3, r0, #0
	adds r5, r3, #0
	lsls r6, r6, #2
	lsls r7, r7, #2
_0806399A:
	ldr r1, [r4]
	subs r1, #1
	movs r0, #0
	bl RandomMinMax
	adds r3, r0, #0
	cmp r3, r5
	beq _0806399A
	cmp r5, r3
	bne _080639B2
	.2byte 0xEE00, 0xEE00
_080639B2:
	mov r4, sp
	adds r1, r4, r6
	ldr r0, _080639D4
	ldr r2, [r0]
	lsls r0, r5, #2
	adds r0, r0, r2
	ldr r0, [r0]
	str r0, [r1]
	adds r1, r4, r7
	lsls r0, r3, #2
	adds r0, r0, r2
	ldr r0, [r0]
	str r0, [r1]
	b _08063B24
	.align 2, 0
_080639D0: .4byte 0x0203FAF0
_080639D4: .4byte 0x0203FAEC
_080639D8:
	movs r0, #0
	movs r1, #1
	bl RandomMinMax
	cmp r0, #0
	bne _08063A4C
	lsls r6, r6, #2
	lsls r7, r7, #2
	ldr r0, _08063A38
	mov r8, r0
	ldr r4, _08063A3C
_080639EE:
	mov r0, r8
	ldrb r1, [r0]
	subs r1, #1
	movs r0, #0
	bl RandomMinMax
	adds r5, r0, #0
	ldr r0, [r4]
	cmp r5, r0
	beq _080639EE
	ldr r0, _08063A40
	ldr r1, [r0]
	subs r1, #1
	movs r0, #0
	bl RandomMinMax
	adds r3, r0, #0
	ldr r0, _08063A3C
	ldr r0, [r0]
	cmp r0, r5
	bne _08063A1C
	.2byte 0xEE00, 0xEE00
_08063A1C:
	mov r1, sp
	adds r2, r1, r6
	ldr r0, _08063A44
	ldr r1, [r0]
	lsls r0, r5, #2
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [r2]
	mov r4, sp
	adds r2, r4, r7
	ldr r0, _08063A48
	ldr r1, [r0]
	b _08063B1C
	.align 2, 0
_08063A38: .4byte 0x0203FADC
_08063A3C: .4byte 0x0203FAD0
_08063A40: .4byte 0x0203FAF0
_08063A44: .4byte 0x0203FAE8
_08063A48: .4byte 0x0203FAEC
_08063A4C:
	ldr r0, _08063AA0
	ldr r1, [r0]
	subs r1, #1
	movs r0, #0
	bl RandomMinMax
	adds r5, r0, #0
	lsls r6, r6, #2
	lsls r7, r7, #2
	ldr r0, _08063AA4
	mov r8, r0
	ldr r4, _08063AA8
_08063A64:
	mov r0, r8
	ldrb r1, [r0]
	subs r1, #1
	movs r0, #0
	bl RandomMinMax
	adds r3, r0, #0
	ldr r0, [r4]
	cmp r3, r0
	beq _08063A64
	ldr r0, _08063AA8
	ldr r0, [r0]
	cmp r0, r3
	bne _08063A84
	.2byte 0xEE00, 0xEE00
_08063A84:
	mov r1, sp
	adds r2, r1, r6
	ldr r0, _08063AAC
	ldr r1, [r0]
	lsls r0, r5, #2
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [r2]
	mov r4, sp
	adds r2, r4, r7
	ldr r0, _08063AB0
	ldr r1, [r0]
	b _08063B1C
	.align 2, 0
_08063AA0: .4byte 0x0203FAF0
_08063AA4: .4byte 0x0203FADC
_08063AA8: .4byte 0x0203FAD0
_08063AAC: .4byte 0x0203FAEC
_08063AB0: .4byte 0x0203FAE8
_08063AB4:
	lsls r6, r6, #2
	lsls r7, r7, #2
	ldr r0, _08063B44
	mov r8, r0
	ldr r4, _08063B48
_08063ABE:
	mov r0, r8
	ldrb r1, [r0]
	subs r1, #1
	movs r0, #0
	bl RandomMinMax
	adds r5, r0, #0
	ldr r0, [r4]
	cmp r5, r0
	beq _08063ABE
	lsls r1, r5, #2
	mov sb, r1
	ldr r4, _08063B44
	mov r8, r4
	ldr r4, _08063B48
_08063ADC:
	mov r0, r8
	ldrb r1, [r0]
	subs r1, #1
	movs r0, #0
	bl RandomMinMax
	adds r3, r0, #0
	ldr r0, [r4]
	cmp r3, r0
	beq _08063ADC
	cmp r3, r5
	beq _08063ADC
	ldr r0, _08063B48
	ldr r0, [r0]
	cmp r0, r5
	beq _08063B04
	cmp r0, r3
	beq _08063B04
	cmp r5, r3
	bne _08063B08
_08063B04:
	.2byte 0xEE00, 0xEE00
_08063B08:
	mov r1, sp
	adds r2, r1, r6
	ldr r0, _08063B4C
	ldr r1, [r0]
	mov r4, sb
	adds r0, r4, r1
	ldr r0, [r0]
	str r0, [r2]
	mov r0, sp
	adds r2, r0, r7
_08063B1C:
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [r2]
_08063B24:
	ldr r1, _08063B50
	ldr r0, [sp]
	str r0, [r1]
	ldr r1, _08063B54
	ldr r0, [sp, #4]
	str r0, [r1]
	ldr r1, _08063B58
	ldr r0, [sp, #8]
	str r0, [r1]
	add sp, #0xc
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08063B44: .4byte 0x0203FADC
_08063B48: .4byte 0x0203FAD0
_08063B4C: .4byte 0x0203FAE8
_08063B50: .4byte 0x0203FA7C
_08063B54: .4byte 0x0203FA80
_08063B58: .4byte 0x0203FA84

    .thumb
    .global sub_8063B5C
sub_8063B5C: @ 0x08063B5C
	push {r4, r5, lr}
	ldr r0, _08063B80
	ldrb r0, [r0]
	cmp r0, #0
	beq _08063B68
	b _0806422A
_08063B68:
	ldr r0, _08063B84
	ldrb r1, [r0]
	adds r2, r0, #0
	cmp r1, #6
	bls _08063B74
	b _0806422A
_08063B74:
	lsls r0, r1, #2
	ldr r1, _08063B88
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08063B80: .4byte 0x0203FB34
_08063B84: .4byte 0x0203FA9B
_08063B88: .4byte 0x08063B8C
_08063B8C: @ jump table
	.4byte _08063BA8 @ case 0
	.4byte _08063BCC @ case 1
	.4byte _08063C28 @ case 2
	.4byte _08063D28 @ case 3
	.4byte _08063FC8 @ case 4
	.4byte _08063FF8 @ case 5
	.4byte _0806401C @ case 6
_08063BA8:
	ldr r0, _08063BC4
	ldrb r0, [r0]
	cmp r0, #0
	beq _08063BB2
	b _0806422A
_08063BB2:
	ldr r0, _08063BC8
	ldrb r0, [r0]
	cmp r0, #0
	beq _08063BBC
	b _0806422A
_08063BBC:
	movs r0, #1
	strb r0, [r2]
	b _0806422A
	.align 2, 0
_08063BC4: .4byte 0x02001118
_08063BC8: .4byte 0x02001119
_08063BCC:
	ldr r0, _08063C14
	ldr r0, [r0]
	bl audio_fx_still_active
	adds r5, r0, #0
	cmp r5, #0
	beq _08063BDC
	b _0806422A
_08063BDC:
	bl sub_08063654
	ldr r1, _08063C18
	movs r0, #1
	strb r0, [r1, #0x10]
	strb r5, [r1, #0x12]
	movs r4, #2
	strb r4, [r1, #0xa]
	movs r0, #0xc8
	strh r0, [r1, #8]
	movs r0, #0xa
	strh r0, [r1, #0xe]
	strh r5, [r1, #0xc]
	movs r0, #6
	strb r0, [r1, #0x11]
	ldr r0, _08063C1C
	str r0, [r1, #4]
	ldr r0, _08063C20
	ldr r0, [r0]
	ldr r1, _08063C24
	ldr r1, [r1]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl init_function
	b _08063CCC
	.align 2, 0
_08063C14: .4byte 0x0203FAD8
_08063C18: .4byte 0x0203FB20
_08063C1C: .4byte 0x080B01B0
_08063C20: .4byte 0x0203FAD0
_08063C24: .4byte 0x0203FAF4
_08063C28:
	ldr r0, _08063C90
	ldrh r0, [r0]
	cmp r0, #0x12
	bne _08063C50
	ldr r0, _08063C94
	movs r2, #0
	movs r1, #0x14
	strh r1, [r0]
	movs r1, #0x10
	strh r1, [r0, #2]
	strh r2, [r0, #0xc]
	ldr r1, _08063C98
	ldr r1, [r1]
	ldr r2, _08063C9C
	ldr r2, [r2]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl AddStringToBuffer
_08063C50:
	ldr r0, _08063CA0
	ldrb r0, [r0]
	cmp r0, #0
	beq _08063C5A
	b _0806422A
_08063C5A:
	ldr r0, _08063CA4
	ldrb r0, [r0]
	cmp r0, #0
	beq _08063C64
	b _0806422A
_08063C64:
	ldr r0, _08063CA8
	ldrb r0, [r0]
	cmp r0, #0
	beq _08063C6E
	b _0806422A
_08063C6E:
	ldr r0, _08063C98
	ldr r4, [r0]
	cmp r4, #3
	beq _08063CB4
	cmp r4, #4
	beq _08063CE0
	bl sub_08063904
	ldr r0, _08063CAC
	ldrb r1, [r0]
	movs r0, #9
	bl InitMenu
	ldr r1, _08063CB0
	movs r0, #3
	b _08064228
	.align 2, 0
_08063C90: .4byte gLoadedRoomIndex
_08063C94: .4byte 0x0203FB20
_08063C98: .4byte 0x0203FACC
_08063C9C: .4byte 0x0203FB10
_08063CA0: .4byte byte_203F99E
_08063CA4: .4byte 0x02001118
_08063CA8: .4byte 0x02001119
_08063CAC: .4byte 0x02000320
_08063CB0: .4byte 0x0203FA9B
_08063CB4:
	ldr r0, _08063CD4
	movs r1, #0
	movs r2, #1
	bl sub_8026E48
	bl sub_08063904
	ldr r0, _08063CD8
	ldrb r1, [r0]
	movs r0, #9
	bl InitMenu
_08063CCC:
	ldr r0, _08063CDC
	strb r4, [r0]
	b _0806422A
	.align 2, 0
_08063CD4: .4byte 0x00000FFF
_08063CD8: .4byte 0x02000320
_08063CDC: .4byte 0x0203FA9B
_08063CE0:
	ldr r1, _08063D10
	movs r0, #6
	strb r0, [r1]
	ldr r1, _08063D14
	movs r0, #0x12
	str r0, [r1]
	ldr r1, _08063D18
	movs r0, #3
	str r0, [r1]
	ldr r1, _08063D1C
	movs r0, #1
	strb r0, [r1]
	ldr r1, _08063D20
	ldr r0, _08063D24
	ldr r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl sub_0800CD94
	movs r0, #0
	bl SetTextSpriteCount
	b _0806422A
	.align 2, 0
_08063D10: .4byte 0x0203FA9B
_08063D14: .4byte 0x0203FA8C
_08063D18: .4byte 0x0203FA90
_08063D1C: .4byte 0x0203FA95
_08063D20: .4byte 0x080CEF50
_08063D24: .4byte 0x0203FAD0
_08063D28:
	ldr r0, _08063DBC
	movs r2, #0
	movs r1, #0x14
	strh r1, [r0]
	movs r1, #0x10
	strh r1, [r0, #2]
	strh r2, [r0, #0xc]
	ldr r1, _08063DC0
	ldr r1, [r1]
	ldr r2, _08063DC4
	ldr r2, [r2]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl AddStringToBuffer
	bl FlushMenuToTextBuffer
	ldr r0, _08063DC8
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08063D5A
	b _08063F24
_08063D5A:
	bl GetCurrentMenuEntry
	ldr r1, _08063DCC
	ldr r1, [r1]
	cmp r0, r1
	bne _08063E54
	ldr r2, _08063DD0
	ldr r0, _08063DD4
	ldrb r0, [r0]
	ldr r1, _08063DD8
	ldrb r1, [r1]
	adds r0, r0, r1
	lsls r1, r0, #3
	subs r1, r1, r0
	lsls r1, r1, #2
	ldr r0, [r2]
	adds r0, r0, r1
	movs r1, #0x9b
	lsls r1, r1, #3
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r4, _08063DDC
	ldr r0, _08063DE0
	ldrb r0, [r0]
	cmp r0, #0
	beq _08063DEC
	ldr r3, _08063DE4
	movs r1, #0xa8
	lsls r1, r1, #1
	adds r0, r3, r1
	ldrh r0, [r0]
	ldr r2, _08063DE8
	movs r5, #0xa9
	lsls r5, r5, #1
	adds r1, r3, r5
	ldrb r2, [r2]
	adds r1, r1, r2
	ldrb r1, [r1]
	adds r5, #2
	adds r2, r3, r5
	ldr r2, [r2]
	movs r3, #0x80
	lsls r3, r3, #9
	adds r2, r2, r3
	bl audio_new_fx
	b _08063DF0
	.align 2, 0
_08063DBC: .4byte 0x0203FB20
_08063DC0: .4byte 0x0203FACC
_08063DC4: .4byte 0x0203FB10
_08063DC8: .4byte gKeysDown
_08063DCC: .4byte 0x0203FAD4
_08063DD0: .4byte 0x0203FB14
_08063DD4: .4byte 0x0203FA97
_08063DD8: .4byte 0x0203FA98
_08063DDC: .4byte 0x0203FAD8
_08063DE0: .4byte byte_203EA89
_08063DE4: .4byte 0x080CE440
_08063DE8: .4byte byte_203EA8C
_08063DEC:
	movs r0, #1
	rsbs r0, r0, #0
_08063DF0:
	str r0, [r4]
	ldr r3, _08063E34
	ldrb r0, [r3]
	adds r0, #1
	strb r0, [r3]
	ldr r0, _08063E38
	ldr r1, [r0]
	ldr r0, _08063E3C
	ldr r0, [r0]
	adds r1, r1, r0
	movs r0, #1
	strb r0, [r1]
	ldr r2, _08063E40
	ldr r1, [r2]
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldr r0, [r2]
	ldr r1, _08063E44
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	bne _08063ED8
	ldr r1, _08063E48
	ldr r0, _08063E4C
	ldr r0, [r0]
	adds r0, r0, r1
	movs r1, #1
	strb r1, [r0]
	ldr r1, _08063E50
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	b _08063ED8
	.align 2, 0
_08063E34: .4byte 0x0203FA97
_08063E38: .4byte 0x0203FAE0
_08063E3C: .4byte 0x0203FAD0
_08063E40: .4byte 0x0203FAE4
_08063E44: .4byte 0x0203FADC
_08063E48: .4byte 0x0203FA9C
_08063E4C: .4byte 0x0203FACC
_08063E50: .4byte 0x0203FAA1
_08063E54:
	ldr r2, _08063EA8
	ldr r0, _08063EAC
	ldrb r0, [r0]
	ldr r1, _08063EB0
	ldrb r1, [r1]
	adds r0, r0, r1
	lsls r1, r0, #3
	subs r1, r1, r0
	lsls r1, r1, #2
	ldr r0, [r2]
	adds r0, r0, r1
	ldr r1, _08063EB4
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r4, _08063EB8
	ldr r0, _08063EBC
	ldrb r0, [r0]
	cmp r0, #0
	beq _08063EC8
	ldr r2, _08063EC0
	movs r5, #0x9e
	lsls r5, r5, #2
	adds r0, r2, r5
	ldrh r0, [r0]
	ldr r3, _08063EC4
	adds r5, #2
	adds r1, r2, r5
	ldrb r3, [r3]
	adds r1, r1, r3
	ldrb r1, [r1]
	movs r3, #0x9f
	lsls r3, r3, #2
	adds r2, r2, r3
	ldr r2, [r2]
	movs r5, #0x80
	lsls r5, r5, #9
	adds r2, r2, r5
	bl audio_new_fx
	b _08063ECC
	.align 2, 0
_08063EA8: .4byte 0x0203FB14
_08063EAC: .4byte 0x0203FA97
_08063EB0: .4byte 0x0203FA98
_08063EB4: .4byte 0x000004D9
_08063EB8: .4byte 0x0203FAD8
_08063EBC: .4byte byte_203EA89
_08063EC0: .4byte 0x080CE440
_08063EC4: .4byte byte_203EA8C
_08063EC8:
	movs r0, #1
	rsbs r0, r0, #0
_08063ECC:
	str r0, [r4]
	ldr r1, _08063EEC
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldr r3, _08063EF0
_08063ED8:
	ldr r0, _08063EF4
	ldrb r1, [r3]
	ldrb r2, [r0]
	cmp r1, r2
	bne _08063F00
	ldr r1, _08063EF8
	movs r0, #4
	strb r0, [r1]
	ldr r1, _08063EFC
	b _08064226
	.align 2, 0
_08063EEC: .4byte 0x0203FA98
_08063EF0: .4byte 0x0203FA97
_08063EF4: .4byte 0x0203FA99
_08063EF8: .4byte 0x0203FA9B
_08063EFC: .4byte 0x0203FA88
_08063F00:
	ldr r0, _08063F18
	ldrb r0, [r0]
	cmp r0, r2
	beq _08063F0A
	b _08064224
_08063F0A:
	ldr r1, _08063F1C
	movs r0, #4
	strb r0, [r1]
	ldr r1, _08063F20
	movs r0, #0
	b _08064228
	.align 2, 0
_08063F18: .4byte 0x0203FA98
_08063F1C: .4byte 0x0203FA9B
_08063F20: .4byte 0x0203FA88
_08063F24:
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08063F74
	ldr r0, _08063F60
	ldrb r0, [r0]
	cmp r0, #0
	beq _08063F5A
	ldr r2, _08063F64
	movs r1, #0xcc
	lsls r1, r1, #3
	adds r0, r2, r1
	ldrh r0, [r0]
	ldr r3, _08063F68
	ldr r4, _08063F6C
	adds r1, r2, r4
	ldrb r3, [r3]
	adds r1, r1, r3
	ldrb r1, [r1]
	ldr r5, _08063F70
	adds r2, r2, r5
	ldr r2, [r2]
	movs r3, #0x80
	lsls r3, r3, #9
	adds r2, r2, r3
	bl audio_new_fx
_08063F5A:
	bl AdvanceMenuEntryUp
	b _0806422A
	.align 2, 0
_08063F60: .4byte byte_203EA89
_08063F64: .4byte 0x080CE440
_08063F68: .4byte byte_203EA8C
_08063F6C: .4byte 0x00000662
_08063F70: .4byte 0x00000664
_08063F74:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08063F7E
	b _0806422A
_08063F7E:
	ldr r0, _08063FB4
	ldrb r0, [r0]
	cmp r0, #0
	beq _08063FAC
	ldr r2, _08063FB8
	movs r4, #0xcc
	lsls r4, r4, #3
	adds r0, r2, r4
	ldrh r0, [r0]
	ldr r3, _08063FBC
	ldr r5, _08063FC0
	adds r1, r2, r5
	ldrb r3, [r3]
	adds r1, r1, r3
	ldrb r1, [r1]
	ldr r3, _08063FC4
	adds r2, r2, r3
	ldr r2, [r2]
	movs r4, #0x80
	lsls r4, r4, #9
	adds r2, r2, r4
	bl audio_new_fx
_08063FAC:
	bl AdvanceMenuEntryDown
	b _0806422A
	.align 2, 0
_08063FB4: .4byte byte_203EA89
_08063FB8: .4byte 0x080CE440
_08063FBC: .4byte byte_203EA8C
_08063FC0: .4byte 0x00000662
_08063FC4: .4byte 0x00000664
_08063FC8:
	ldr r0, _08063FE8
	ldr r0, [r0]
	bl audio_fx_still_active
	adds r1, r0, #0
	cmp r1, #0
	beq _08063FD8
	b _0806422A
_08063FD8:
	ldr r0, _08063FEC
	str r1, [r0]
	ldr r0, _08063FF0
	str r1, [r0]
	ldr r1, _08063FF4
	movs r0, #5
	b _08064228
	.align 2, 0
_08063FE8: .4byte 0x0203FAD8
_08063FEC: .4byte 0x02001110
_08063FF0: .4byte 0x02001114
_08063FF4: .4byte 0x0203FA9B
_08063FF8:
	ldr r0, _08064014
	ldrb r0, [r0]
	cmp r0, #0
	beq _08064002
	b _0806422A
_08064002:
	ldr r0, _08064018
	ldrb r0, [r0]
	cmp r0, #0
	beq _0806400C
	b _0806422A
_0806400C:
	bl sub_80166A0
	b _0806422A
	.align 2, 0
_08064014: .4byte 0x02001118
_08064018: .4byte 0x02001119
_0806401C:
	ldr r0, _08064050
	ldrb r0, [r0]
	cmp r0, #0
	beq _08064026
	b _0806422A
_08064026:
	ldr r0, _08064054
	ldrb r0, [r0]
	cmp r0, #0
	beq _08064030
	b _0806422A
_08064030:
	ldr r0, _08064058
	ldrb r0, [r0]
	cmp r0, #0
	beq _0806403A
	b _0806422A
_0806403A:
	ldr r0, _0806405C
	ldrb r0, [r0]
	cmp r0, #0
	bne _08064064
	ldr r0, _08064060
	movs r1, #1
	movs r2, #1
	bl sub_8026E48
	b _0806406E
	.align 2, 0
_08064050: .4byte 0x0203FA95
_08064054: .4byte 0x02001118
_08064058: .4byte 0x02001119
_0806405C: .4byte 0x0203FA96
_08064060: .4byte 0x00000FFF
_08064064:
	ldr r0, _080640CC
	movs r1, #1
	movs r2, #1
	bl sub_8026F78
_0806406E:
	ldr r0, _080640D0
	ldrb r0, [r0]
	cmp r0, #0
	beq _08064158
	ldr r2, _080640D4
	ldr r0, _080640D8
	ldrb r0, [r0]
	ldr r1, _080640DC
	ldrb r1, [r1]
	adds r0, r0, r1
	lsls r1, r0, #3
	subs r1, r1, r0
	lsls r1, r1, #2
	ldr r0, [r2]
	adds r0, r0, r1
	movs r1, #0x9b
	lsls r1, r1, #3
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r4, _080640E0
	ldr r0, _080640E4
	ldrb r0, [r0]
	cmp r0, #0
	beq _080640F0
	ldr r3, _080640E8
	movs r5, #0xa8
	lsls r5, r5, #1
	adds r0, r3, r5
	ldrh r0, [r0]
	ldr r2, _080640EC
	adds r5, #2
	adds r1, r3, r5
	ldrb r2, [r2]
	adds r1, r1, r2
	ldrb r1, [r1]
	adds r5, #2
	adds r2, r3, r5
	ldr r2, [r2]
	movs r3, #0x80
	lsls r3, r3, #9
	adds r2, r2, r3
	bl audio_new_fx
	b _080640F4
	.align 2, 0
_080640CC: .4byte 0x00000FFF
_080640D0: .4byte 0x0203FA94
_080640D4: .4byte 0x0203FB14
_080640D8: .4byte 0x0203FA97
_080640DC: .4byte 0x0203FA98
_080640E0: .4byte 0x0203FAD8
_080640E4: .4byte byte_203EA89
_080640E8: .4byte 0x080CE440
_080640EC: .4byte byte_203EA8C
_080640F0:
	movs r0, #1
	rsbs r0, r0, #0
_080640F4:
	str r0, [r4]
	ldr r3, _08064138
	ldrb r0, [r3]
	adds r0, #1
	strb r0, [r3]
	ldr r0, _0806413C
	ldr r1, [r0]
	ldr r0, _08064140
	ldr r0, [r0]
	adds r1, r1, r0
	movs r0, #1
	strb r0, [r1]
	ldr r2, _08064144
	ldr r1, [r2]
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldr r0, [r2]
	ldr r1, _08064148
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	bne _080641DC
	ldr r1, _0806414C
	ldr r0, _08064150
	ldr r0, [r0]
	adds r0, r0, r1
	movs r1, #1
	strb r1, [r0]
	ldr r1, _08064154
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	b _080641DC
	.align 2, 0
_08064138: .4byte 0x0203FA97
_0806413C: .4byte 0x0203FAE0
_08064140: .4byte 0x0203FAD0
_08064144: .4byte 0x0203FAE4
_08064148: .4byte 0x0203FADC
_0806414C: .4byte 0x0203FA9C
_08064150: .4byte 0x0203FACC
_08064154: .4byte 0x0203FAA1
_08064158:
	ldr r2, _080641AC
	ldr r0, _080641B0
	ldrb r0, [r0]
	ldr r1, _080641B4
	ldrb r1, [r1]
	adds r0, r0, r1
	lsls r1, r0, #3
	subs r1, r1, r0
	lsls r1, r1, #2
	ldr r0, [r2]
	adds r0, r0, r1
	ldr r1, _080641B8
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r4, _080641BC
	ldr r0, _080641C0
	ldrb r0, [r0]
	cmp r0, #0
	beq _080641CC
	ldr r2, _080641C4
	movs r5, #0x9e
	lsls r5, r5, #2
	adds r0, r2, r5
	ldrh r0, [r0]
	ldr r3, _080641C8
	adds r5, #2
	adds r1, r2, r5
	ldrb r3, [r3]
	adds r1, r1, r3
	ldrb r1, [r1]
	movs r3, #0x9f
	lsls r3, r3, #2
	adds r2, r2, r3
	ldr r2, [r2]
	movs r5, #0x80
	lsls r5, r5, #9
	adds r2, r2, r5
	bl audio_new_fx
	b _080641D0
	.align 2, 0
_080641AC: .4byte 0x0203FB14
_080641B0: .4byte 0x0203FA97
_080641B4: .4byte 0x0203FA98
_080641B8: .4byte 0x000004D9
_080641BC: .4byte 0x0203FAD8
_080641C0: .4byte byte_203EA89
_080641C4: .4byte 0x080CE440
_080641C8: .4byte byte_203EA8C
_080641CC:
	movs r0, #1
	rsbs r0, r0, #0
_080641D0:
	str r0, [r4]
	ldr r1, _080641F0
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldr r3, _080641F4
_080641DC:
	ldr r0, _080641F8
	ldrb r1, [r3]
	ldrb r2, [r0]
	cmp r1, r2
	bne _08064204
	ldr r1, _080641FC
	movs r0, #4
	strb r0, [r1]
	ldr r1, _08064200
	b _08064226
	.align 2, 0
_080641F0: .4byte 0x0203FA98
_080641F4: .4byte 0x0203FA97
_080641F8: .4byte 0x0203FA99
_080641FC: .4byte 0x0203FA9B
_08064200: .4byte 0x0203FA88
_08064204:
	ldr r0, _08064218
	ldrb r0, [r0]
	cmp r0, r2
	bne _08064224
	ldr r1, _0806421C
	movs r0, #4
	strb r0, [r1]
	ldr r1, _08064220
	movs r0, #0
	b _08064228
	.align 2, 0
_08064218: .4byte 0x0203FA98
_0806421C: .4byte 0x0203FA9B
_08064220: .4byte 0x0203FA88
_08064224:
	ldr r1, _08064230
_08064226:
	movs r0, #1
_08064228:
	strb r0, [r1]
_0806422A:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08064230: .4byte 0x0203FA9B

    .thumb
    .global sub_8064234
sub_8064234: @ 0x08064234
	push {r4, r5, r6, r7, lr}
	ldr r0, _08064260
	ldrh r0, [r0]
	cmp r0, #0x23
	beq _08064240
	b _0806436E
_08064240:
	ldr r0, _08064264
	ldrb r0, [r0]
	cmp r0, #0
	beq _0806424A
	b _0806436E
_0806424A:
	ldr r0, _08064268
	ldrb r0, [r0]
	cmp r0, #6
	bls _08064254
	b _0806436E
_08064254:
	lsls r0, r0, #2
	ldr r1, _0806426C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08064260: .4byte gPlayerState
_08064264: .4byte 0x0203FB34
_08064268: .4byte 0x0203FA9B
_0806426C: .4byte 0x08064270
_08064270: @ jump table
	.4byte _0806436E @ case 0
	.4byte _0806428C @ case 1
	.4byte _080642C4 @ case 2
	.4byte _080642FC @ case 3
	.4byte _08064344 @ case 4
	.4byte _0806436E @ case 5
	.4byte _0806436E @ case 6
_0806428C:
	ldr r0, _080642B8
	ldrh r0, [r0]
	cmp r0, #0x12
	bne _0806436E
	movs r4, #0
	ldr r0, _080642BC
	ldrb r1, [r0]
	cmp r4, r1
	bge _0806436E
	ldr r7, _080642C0
	movs r5, #0
	adds r6, r0, #0
_080642A4:
	ldr r0, [r7]
	adds r0, r0, r5
	bl RenderSprite
	adds r5, #0x1c
	adds r4, #1
	ldrb r0, [r6]
	cmp r4, r0
	blt _080642A4
	b _0806436E
	.align 2, 0
_080642B8: .4byte gLoadedRoomIndex
_080642BC: .4byte 0x0203FA9A
_080642C0: .4byte 0x0203FB14
_080642C4:
	ldr r0, _080642F0
	ldrh r0, [r0]
	cmp r0, #0x12
	bne _0806436E
	movs r4, #0
	ldr r0, _080642F4
	ldrb r1, [r0]
	cmp r4, r1
	bge _0806436E
	ldr r7, _080642F8
	movs r5, #0
	adds r6, r0, #0
_080642DC:
	ldr r0, [r7]
	adds r0, r0, r5
	bl RenderSprite
	adds r5, #0x1c
	adds r4, #1
	ldrb r0, [r6]
	cmp r4, r0
	blt _080642DC
	b _0806436E
	.align 2, 0
_080642F0: .4byte gLoadedRoomIndex
_080642F4: .4byte 0x0203FA9A
_080642F8: .4byte 0x0203FB14
_080642FC:
	ldr r0, _08064334
	ldrh r0, [r0]
	cmp r0, #0x12
	beq _0806430C
	ldr r0, _08064338
	ldrb r0, [r0]
	cmp r0, #0
	beq _0806436E
_0806430C:
	bl RenderMenuSprites
	movs r4, #0
	ldr r0, _0806433C
	ldrb r1, [r0]
	cmp r4, r1
	bge _0806436E
	ldr r7, _08064340
	movs r5, #0
	adds r6, r0, #0
_08064320:
	ldr r0, [r7]
	adds r0, r0, r5
	bl RenderSprite
	adds r5, #0x1c
	adds r4, #1
	ldrb r0, [r6]
	cmp r4, r0
	blt _08064320
	b _0806436E
	.align 2, 0
_08064334: .4byte gLoadedRoomIndex
_08064338: .4byte byte_203F99E
_0806433C: .4byte 0x0203FA9A
_08064340: .4byte 0x0203FB14
_08064344:
	ldr r0, _08064374
	ldrh r0, [r0]
	cmp r0, #0x12
	bne _0806436E
	movs r4, #0
	ldr r0, _08064378
	ldrb r1, [r0]
	cmp r4, r1
	bge _0806436E
	ldr r7, _0806437C
	movs r5, #0
	adds r6, r0, #0
_0806435C:
	ldr r0, [r7]
	adds r0, r0, r5
	bl RenderSprite
	adds r5, #0x1c
	adds r4, #1
	ldrb r0, [r6]
	cmp r4, r0
	blt _0806435C
_0806436E:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08064374: .4byte gLoadedRoomIndex
_08064378: .4byte 0x0203FA9A
_0806437C: .4byte 0x0203FB14

    .thumb
    .global sub_8064380
sub_8064380: @ 0x08064380
	ldr r1, _08064388
	movs r0, #1
	strb r0, [r1]
	bx lr
	.align 2, 0
_08064388: .4byte 0x0203FB34

    .thumb
    .global sub_806438C
sub_806438C: @ 0x0806438C
	push {lr}
	ldr r1, _080643B4
	movs r0, #0
	strb r0, [r1]
	ldr r0, _080643B8
	ldrb r0, [r0]
	cmp r0, #3
	bne _080643AE
	ldr r0, _080643BC
	ldr r0, [r0]
	cmp r0, #4
	beq _080643AE
	ldr r0, _080643C0
	ldrb r1, [r0]
	movs r0, #9
	bl InitMenu
_080643AE:
	pop {r0}
	bx r0
	.align 2, 0
_080643B4: .4byte 0x0203FB34
_080643B8: .4byte 0x0203FA9B
_080643BC: .4byte 0x0203FACC
_080643C0: .4byte 0x02000320

    .thumb
    .global HuffUnCompReadNormal
HuffUnCompReadNormal: @ 0x080643C4
	svc #0x13
	bx lr

    .thumb
    .global LZ77UnCompReadNormalWrite16bit
LZ77UnCompReadNormalWrite16bit: @ 0x080643C8
	svc #0x12
	bx lr

    .thumb
    .global RegisterRamReset
RegisterRamReset: @ 0x080643CC
	svc #1
	bx lr

    .thumb
	.global sub_080643D0
sub_080643D0: @ 0x080643D0
	ldr r3, _080643E0
	movs r2, #0
	strb r2, [r3]
	ldr r1, _080643E4
	mov sp, r1
	svc #1
	svc #0
	movs r0, r0
	.align 2, 0
_080643E0: .4byte 0x04000208
_080643E4: .4byte 0x03007F00
