
    .syntax unified

    .text

    .thumb
    .global InitMenu
InitMenu: @ 0x080424B0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	adds r5, r0, #0
	mov sl, r1
	ldr r4, _08042500
	ldr r0, [r4, #0x34]
	cmp r0, #0
	beq _080424D2
	movs r1, #4
	bl Free
	movs r0, #0
	str r0, [r4, #0x34]
_080424D2:
	adds r0, r4, #0
	adds r0, #0x3b
	ldrb r0, [r0]
	cmp r0, #0
	beq _080424EC
	ldr r0, [r4, #0x3c]
	cmp r0, #0
	beq _080424EC
	movs r1, #4
	bl Free
	movs r0, #0
	str r0, [r4, #0x3c]
_080424EC:
	cmp r5, #0x1b
	bls _080424F4
	bl _08044610
_080424F4:
	lsls r0, r5, #2
	ldr r1, _08042504
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08042500: .4byte gMenu
_08042504: .4byte 0x08042508
_08042508: @ jump table
	.4byte _0804262C @ case 0
	.4byte _080428DC @ case 1
	.4byte _08042B14 @ case 2
	.4byte _08042578 @ case 3
	.4byte _08042CA8 @ case 4
	.4byte _08042E3C @ case 5
	.4byte _08042FD0 @ case 6
	.4byte _0804306C @ case 7
	.4byte _08042770 @ case 8
	.4byte _08043110 @ case 9
	.4byte _08043230 @ case 10
	.4byte _080436BC @ case 11
	.4byte _08043B48 @ case 12
	.4byte _08043CB8 @ case 13
	.4byte _08043D70 @ case 14
	.4byte _08043E28 @ case 15
	.4byte _08043EE0 @ case 16
	.4byte _08043F98 @ case 17
	.4byte _08044040 @ case 18
	.4byte _08043C0C @ case 19
	.4byte _080440D8 @ case 20
	.4byte _08044610 @ case 21
	.4byte _08044190 @ case 22
	.4byte _08044250 @ case 23
	.4byte _08044310 @ case 24
	.4byte _080443D0 @ case 25
	.4byte _08044490 @ case 26
	.4byte _08044550 @ case 27
_08042578:
	ldr r7, _08042610
	movs r0, #0
	mov sb, r0
	movs r5, #0
	movs r2, #0x55
	strh r2, [r7]
	movs r1, #0x28
	strh r1, [r7, #2]
	strh r2, [r7, #8]
	strh r1, [r7, #0xa]
	movs r4, #1
	strb r4, [r7, #0x18]
	mov r0, sb
	strb r0, [r7, #0x1a]
	strb r4, [r7, #0x12]
	movs r6, #0xf0
	strh r6, [r7, #0x10]
	movs r0, #6
	mov r8, r0
	mov r0, r8
	strb r0, [r7, #0x19]
	strh r5, [r7, #0x14]
	movs r0, #0xf
	strh r0, [r7, #0x16]
	ldr r3, _08042614
	str r3, [r7, #0xc]
	strh r2, [r7, #0x1c]
	strh r1, [r7, #0x1e]
	adds r0, r7, #0
	adds r0, #0x2c
	strb r4, [r0]
	adds r0, #2
	mov r1, sb
	strb r1, [r0]
	subs r0, #8
	strb r4, [r0]
	strh r6, [r7, #0x24]
	adds r0, #7
	mov r2, r8
	strb r2, [r0]
	strh r5, [r7, #0x28]
	movs r0, #0xa
	strh r0, [r7, #0x2a]
	str r3, [r7, #0x20]
	movs r0, #5
	str r0, [r7, #0x30]
	movs r0, #0x14
	movs r1, #0xf
	movs r2, #4
	bl Alloc
	str r0, [r7, #0x34]
	strh r5, [r7, #0x38]
	adds r1, r7, #0
	adds r1, #0x3a
	strb r4, [r1]
	movs r1, #0x10
	strh r1, [r7, #4]
	strh r5, [r7, #6]
	adds r1, r7, #0
	adds r1, #0x3b
	mov r4, sb
	strb r4, [r1]
	ldr r1, _08042618
	str r1, [r0]
	ldr r1, _0804261C
	str r1, [r0, #4]
	ldr r1, _08042620
	str r1, [r0, #8]
	ldr r1, _08042624
	str r1, [r0, #0xc]
	ldr r1, _08042628
	str r1, [r0, #0x10]
	bl _08044614
	.align 2, 0
_08042610: .4byte gMenu
_08042614: .4byte 0x080B01B0
_08042618: .4byte 0x08065220
_0804261C: .4byte 0x0806522C
_08042620: .4byte 0x08065238
_08042624: .4byte 0x08065244
_08042628: .4byte 0x08065250
_0804262C:
	ldr r7, _080426BC
	movs r5, #0
	mov sb, r5
	movs r5, #0
	movs r2, #0x4d
	strh r2, [r7]
	movs r1, #0x7a
	strh r1, [r7, #2]
	strh r2, [r7, #8]
	strh r1, [r7, #0xa]
	movs r4, #1
	strb r4, [r7, #0x18]
	mov r0, sb
	strb r0, [r7, #0x1a]
	strb r4, [r7, #0x12]
	movs r6, #0xf0
	strh r6, [r7, #0x10]
	movs r0, #6
	mov r8, r0
	mov r0, r8
	strb r0, [r7, #0x19]
	strh r5, [r7, #0x14]
	movs r0, #0xf
	strh r0, [r7, #0x16]
	ldr r3, _080426C0
	str r3, [r7, #0xc]
	strh r2, [r7, #0x1c]
	strh r1, [r7, #0x1e]
	adds r0, r7, #0
	adds r0, #0x2c
	strb r4, [r0]
	adds r0, #2
	mov r1, sb
	strb r1, [r0]
	subs r0, #8
	strb r4, [r0]
	strh r6, [r7, #0x24]
	adds r0, #7
	mov r2, r8
	strb r2, [r0]
	strh r5, [r7, #0x28]
	movs r0, #0xa
	strh r0, [r7, #0x2a]
	str r3, [r7, #0x20]
	movs r0, #2
	str r0, [r7, #0x30]
	movs r0, #8
	movs r1, #0xf
	movs r2, #4
	bl Alloc
	str r0, [r7, #0x34]
	strh r5, [r7, #0x38]
	adds r0, r7, #0
	adds r0, #0x3a
	strb r4, [r0]
	movs r0, #0x10
	strh r0, [r7, #4]
	strh r5, [r7, #6]
	adds r0, r7, #0
	adds r0, #0x3b
	mov r4, sb
	strb r4, [r0]
	mov r5, sl
	cmp r5, #4
	bhi _08042768
	lsls r0, r5, #2
	ldr r1, _080426C4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080426BC: .4byte gMenu
_080426C0: .4byte 0x080B01B0
_080426C4: .4byte 0x080426C8
_080426C8: @ jump table
	.4byte _080426DC @ case 0
	.4byte _080426F8 @ case 1
	.4byte _08042714 @ case 2
	.4byte _0804274C @ case 3
	.4byte _08042730 @ case 4
_080426DC:
	ldr r0, _080426EC
	ldr r1, [r0, #0x34]
	ldr r0, _080426F0
	str r0, [r1]
	ldr r0, _080426F4
	str r0, [r1, #4]
	bl _08044614
	.align 2, 0
_080426EC: .4byte gMenu
_080426F0: .4byte 0x08068434
_080426F4: .4byte 0x08068440
_080426F8:
	ldr r0, _08042708
	ldr r1, [r0, #0x34]
	ldr r0, _0804270C
	str r0, [r1]
	ldr r0, _08042710
	str r0, [r1, #4]
	bl _08044614
	.align 2, 0
_08042708: .4byte gMenu
_0804270C: .4byte 0x08068460
_08042710: .4byte 0x08068474
_08042714:
	ldr r0, _08042724
	ldr r1, [r0, #0x34]
	ldr r0, _08042728
	str r0, [r1]
	ldr r0, _0804272C
	str r0, [r1, #4]
	bl _08044614
	.align 2, 0
_08042724: .4byte gMenu
_08042728: .4byte 0x080684C4
_0804272C: .4byte 0x080684D4
_08042730:
	ldr r0, _08042740
	ldr r1, [r0, #0x34]
	ldr r0, _08042744
	str r0, [r1]
	ldr r0, _08042748
	str r0, [r1, #4]
	bl _08044614
	.align 2, 0
_08042740: .4byte gMenu
_08042744: .4byte 0x080684F0
_08042748: .4byte 0x08068500
_0804274C:
	ldr r0, _0804275C
	ldr r1, [r0, #0x34]
	ldr r0, _08042760
	str r0, [r1]
	ldr r0, _08042764
	str r0, [r1, #4]
	bl _08044614
	.align 2, 0
_0804275C: .4byte gMenu
_08042760: .4byte 0x08068490
_08042764: .4byte 0x080684A0
_08042768:
	.2byte 0xEE00, 0xEE00
	bl _08044614
_08042770:
	ldr r7, _08042800
	movs r0, #0
	mov sb, r0
	movs r5, #0
	movs r2, #8
	strh r2, [r7]
	movs r1, #0x24
	strh r1, [r7, #2]
	strh r2, [r7, #8]
	strh r1, [r7, #0xa]
	movs r4, #1
	strb r4, [r7, #0x18]
	mov r0, sb
	strb r0, [r7, #0x1a]
	strb r4, [r7, #0x12]
	movs r6, #0xf0
	strh r6, [r7, #0x10]
	movs r0, #6
	mov r8, r0
	mov r0, r8
	strb r0, [r7, #0x19]
	strh r5, [r7, #0x14]
	movs r0, #0xf
	strh r0, [r7, #0x16]
	ldr r3, _08042804
	str r3, [r7, #0xc]
	strh r2, [r7, #0x1c]
	strh r1, [r7, #0x1e]
	adds r0, r7, #0
	adds r0, #0x2c
	strb r4, [r0]
	adds r0, #2
	mov r1, sb
	strb r1, [r0]
	subs r0, #8
	strb r4, [r0]
	strh r6, [r7, #0x24]
	adds r0, #7
	mov r2, r8
	strb r2, [r0]
	strh r5, [r7, #0x28]
	movs r0, #0xa
	strh r0, [r7, #0x2a]
	str r3, [r7, #0x20]
	movs r0, #3
	str r0, [r7, #0x30]
	movs r0, #0xc
	movs r1, #0xf
	movs r2, #4
	bl Alloc
	str r0, [r7, #0x34]
	strh r5, [r7, #0x38]
	adds r0, r7, #0
	adds r0, #0x3a
	strb r4, [r0]
	movs r0, #0x14
	strh r0, [r7, #4]
	strh r5, [r7, #6]
	adds r0, r7, #0
	adds r0, #0x3b
	mov r4, sb
	strb r4, [r0]
	mov r5, sl
	cmp r5, #4
	bhi _080428D4
	lsls r0, r5, #2
	ldr r1, _08042808
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08042800: .4byte gMenu
_08042804: .4byte 0x080B01B0
_08042808: .4byte 0x0804280C
_0804280C: @ jump table
	.4byte _08042820 @ case 0
	.4byte _08042844 @ case 1
	.4byte _08042868 @ case 2
	.4byte _080428B0 @ case 3
	.4byte _0804288C @ case 4
_08042820:
	ldr r0, _08042834
	ldr r1, [r0, #0x34]
	ldr r0, _08042838
	str r0, [r1]
	ldr r0, _0804283C
	str r0, [r1, #4]
	ldr r0, _08042840
	str r0, [r1, #8]
	bl _08044614
	.align 2, 0
_08042834: .4byte gMenu
_08042838: .4byte 0x08067D6C
_0804283C: .4byte 0x08067D78
_08042840: .4byte 0x08067D84
_08042844:
	ldr r0, _08042858
	ldr r1, [r0, #0x34]
	ldr r0, _0804285C
	str r0, [r1]
	ldr r0, _08042860
	str r0, [r1, #4]
	ldr r0, _08042864
	str r0, [r1, #8]
	bl _08044614
	.align 2, 0
_08042858: .4byte gMenu
_0804285C: .4byte 0x08067DFC
_08042860: .4byte 0x08067E0C
_08042864: .4byte 0x08067E18
_08042868:
	ldr r0, _0804287C
	ldr r1, [r0, #0x34]
	ldr r0, _08042880
	str r0, [r1]
	ldr r0, _08042884
	str r0, [r1, #4]
	ldr r0, _08042888
	str r0, [r1, #8]
	bl _08044614
	.align 2, 0
_0804287C: .4byte gMenu
_08042880: .4byte 0x08067F44
_08042884: .4byte 0x08067F58
_08042888: .4byte 0x08067F70
_0804288C:
	ldr r0, _080428A0
	ldr r1, [r0, #0x34]
	ldr r0, _080428A4
	str r0, [r1]
	ldr r0, _080428A8
	str r0, [r1, #4]
	ldr r0, _080428AC
	str r0, [r1, #8]
	bl _08044614
	.align 2, 0
_080428A0: .4byte gMenu
_080428A4: .4byte 0x08067FE4
_080428A8: .4byte 0x08067FF4
_080428AC: .4byte 0x08067FFC
_080428B0:
	ldr r0, _080428C4
	ldr r1, [r0, #0x34]
	ldr r0, _080428C8
	str r0, [r1]
	ldr r0, _080428CC
	str r0, [r1, #4]
	ldr r0, _080428D0
	str r0, [r1, #8]
	bl _08044614
	.align 2, 0
_080428C4: .4byte gMenu
_080428C8: .4byte 0x08067E94
_080428CC: .4byte 0x08067EAC
_080428D0: .4byte 0x08067EC0
_080428D4:
	.2byte 0xEE00, 0xEE00
	bl _08044614
_080428DC:
	ldr r7, _08042A04
	movs r0, #0
	mov sb, r0
	movs r1, #0
	mov r8, r1
	movs r2, #0x34
	strh r2, [r7]
	movs r1, #0x24
	strh r1, [r7, #2]
	strh r2, [r7, #8]
	strh r1, [r7, #0xa]
	movs r4, #1
	strb r4, [r7, #0x18]
	mov r5, sb
	strb r5, [r7, #0x1a]
	strb r4, [r7, #0x12]
	movs r5, #0xf0
	strh r5, [r7, #0x10]
	movs r6, #6
	strb r6, [r7, #0x19]
	mov r0, r8
	strh r0, [r7, #0x14]
	movs r0, #0xf
	strh r0, [r7, #0x16]
	ldr r3, _08042A08
	str r3, [r7, #0xc]
	strh r2, [r7, #0x1c]
	strh r1, [r7, #0x1e]
	adds r0, r7, #0
	adds r0, #0x2c
	strb r4, [r0]
	adds r0, #2
	mov r1, sb
	strb r1, [r0]
	subs r0, #8
	strb r4, [r0]
	strh r5, [r7, #0x24]
	adds r0, #7
	strb r6, [r0]
	mov r2, r8
	strh r2, [r7, #0x28]
	movs r0, #0xa
	strh r0, [r7, #0x2a]
	str r3, [r7, #0x20]
	movs r0, #4
	str r0, [r7, #0x30]
	movs r0, #0x10
	movs r1, #0xf
	movs r2, #4
	bl Alloc
	str r0, [r7, #0x34]
	mov r5, r8
	strh r5, [r7, #0x38]
	adds r0, r7, #0
	adds r0, #0x3a
	strb r4, [r0]
	movs r0, #0x18
	strh r0, [r7, #4]
	movs r0, #0x14
	strh r0, [r7, #6]
	adds r0, r7, #0
	adds r0, #0x3b
	strb r4, [r0]
	ldr r1, [r7, #0x30]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	movs r1, #0xf
	movs r2, #4
	bl Alloc
	str r0, [r7, #0x3c]
	movs r3, #0
	ldr r1, _08042A0C
	str r3, [sp]
	ldrh r2, [r7]
	str r2, [sp, #4]
	ldrh r2, [r7, #2]
	str r2, [sp, #8]
	movs r4, #2
	str r4, [sp, #0xc]
	movs r2, #0
	bl SetSprite
	ldr r0, [r7, #0x3c]
	adds r0, #0x1c
	ldr r1, _08042A10
	mov r2, r8
	str r2, [sp]
	ldrh r2, [r7]
	str r2, [sp, #4]
	ldrh r2, [r7, #2]
	ldrh r3, [r7, #4]
	adds r2, r2, r3
	str r2, [sp, #8]
	str r4, [sp, #0xc]
	movs r2, #0
	movs r3, #0
	bl SetSprite
	movs r3, #2
	ldr r0, [r7, #0x3c]
	adds r0, #0x38
	movs r1, #0x8f
	lsls r1, r1, #3
	mov r5, r8
	str r5, [sp]
	ldrh r2, [r7]
	str r2, [sp, #4]
	ldrh r2, [r7, #4]
	lsls r2, r2, #1
	ldrh r5, [r7, #2]
	adds r2, r2, r5
	str r2, [sp, #8]
	str r3, [sp, #0xc]
	movs r2, #0
	movs r3, #0
	bl SetSprite
	movs r3, #3
	ldr r0, [r7, #0x3c]
	adds r0, #0x54
	ldr r1, _08042A14
	mov r2, r8
	str r2, [sp]
	ldrh r2, [r7]
	str r2, [sp, #4]
	ldrh r2, [r7, #4]
	muls r2, r3, r2
	ldrh r7, [r7, #2]
	adds r2, r2, r7
	str r2, [sp, #8]
	str r4, [sp, #0xc]
	movs r2, #0
	movs r3, #0
	bl SetSprite
	mov r4, sl
	cmp r4, #4
	bls _080429F8
	b _08042B0C
_080429F8:
	lsls r0, r4, #2
	ldr r1, _08042A18
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08042A04: .4byte gMenu
_08042A08: .4byte 0x080B01B0
_08042A0C: .4byte 0x00000476
_08042A10: .4byte 0x00000477
_08042A14: .4byte 0x00000479
_08042A18: .4byte 0x08042A1C
_08042A1C: @ jump table
	.4byte _08042A30 @ case 0
	.4byte _08042A5C @ case 1
	.4byte _08042A88 @ case 2
	.4byte _08042AE0 @ case 3
	.4byte _08042AB4 @ case 4
_08042A30:
	ldr r0, _08042A48
	ldr r1, [r0, #0x34]
	ldr r0, _08042A4C
	str r0, [r1]
	ldr r0, _08042A50
	str r0, [r1, #4]
	ldr r0, _08042A54
	str r0, [r1, #8]
	ldr r0, _08042A58
	str r0, [r1, #0xc]
	bl _08044614
	.align 2, 0
_08042A48: .4byte gMenu
_08042A4C: .4byte 0x08067D44
_08042A50: .4byte 0x08067D50
_08042A54: .4byte 0x08067D58
_08042A58: .4byte 0x08067D64
_08042A5C:
	ldr r0, _08042A74
	ldr r1, [r0, #0x34]
	ldr r0, _08042A78
	str r0, [r1]
	ldr r0, _08042A7C
	str r0, [r1, #4]
	ldr r0, _08042A80
	str r0, [r1, #8]
	ldr r0, _08042A84
	str r0, [r1, #0xc]
	bl _08044614
	.align 2, 0
_08042A74: .4byte gMenu
_08042A78: .4byte 0x08067DCC
_08042A7C: .4byte 0x08067DD8
_08042A80: .4byte 0x08067DE0
_08042A84: .4byte 0x08067DEC
_08042A88:
	ldr r0, _08042AA0
	ldr r1, [r0, #0x34]
	ldr r0, _08042AA4
	str r0, [r1]
	ldr r0, _08042AA8
	str r0, [r1, #4]
	ldr r0, _08042AAC
	str r0, [r1, #8]
	ldr r0, _08042AB0
	str r0, [r1, #0xc]
	bl _08044614
	.align 2, 0
_08042AA0: .4byte gMenu
_08042AA4: .4byte 0x08067F14
_08042AA8: .4byte 0x08067F20
_08042AAC: .4byte 0x08067F2C
_08042AB0: .4byte 0x08067F38
_08042AB4:
	ldr r0, _08042ACC
	ldr r1, [r0, #0x34]
	ldr r0, _08042AD0
	str r0, [r1]
	ldr r0, _08042AD4
	str r0, [r1, #4]
	ldr r0, _08042AD8
	str r0, [r1, #8]
	ldr r0, _08042ADC
	str r0, [r1, #0xc]
	bl _08044614
	.align 2, 0
_08042ACC: .4byte gMenu
_08042AD0: .4byte 0x08067FBC
_08042AD4: .4byte 0x08067FC8
_08042AD8: .4byte 0x08067FD0
_08042ADC: .4byte 0x08067FDC
_08042AE0:
	ldr r0, _08042AF8
	ldr r1, [r0, #0x34]
	ldr r0, _08042AFC
	str r0, [r1]
	ldr r0, _08042B00
	str r0, [r1, #4]
	ldr r0, _08042B04
	str r0, [r1, #8]
	ldr r0, _08042B08
	str r0, [r1, #0xc]
	bl _08044614
	.align 2, 0
_08042AF8: .4byte gMenu
_08042AFC: .4byte 0x08067E64
_08042B00: .4byte 0x08067E70
_08042B04: .4byte 0x08067E7C
_08042B08: .4byte 0x08067E88
_08042B0C:
	.2byte 0xEE00, 0xEE00
	bl _08044614
_08042B14:
	ldr r7, _08042BEC
	movs r5, #0
	mov sb, r5
	movs r0, #0
	mov r8, r0
	movs r2, #0x34
	strh r2, [r7]
	movs r1, #0x24
	strh r1, [r7, #2]
	strh r2, [r7, #8]
	strh r1, [r7, #0xa]
	movs r4, #1
	strb r4, [r7, #0x18]
	mov r5, sb
	strb r5, [r7, #0x1a]
	strb r4, [r7, #0x12]
	movs r5, #0xf0
	strh r5, [r7, #0x10]
	movs r6, #6
	strb r6, [r7, #0x19]
	mov r0, r8
	strh r0, [r7, #0x14]
	movs r0, #0xf
	strh r0, [r7, #0x16]
	ldr r3, _08042BF0
	str r3, [r7, #0xc]
	strh r2, [r7, #0x1c]
	strh r1, [r7, #0x1e]
	adds r0, r7, #0
	adds r0, #0x2c
	strb r4, [r0]
	adds r0, #2
	mov r1, sb
	strb r1, [r0]
	subs r0, #8
	strb r4, [r0]
	strh r5, [r7, #0x24]
	adds r0, #7
	strb r6, [r0]
	mov r2, r8
	strh r2, [r7, #0x28]
	movs r0, #0xa
	strh r0, [r7, #0x2a]
	str r3, [r7, #0x20]
	movs r5, #2
	str r5, [r7, #0x30]
	movs r0, #8
	movs r1, #0xf
	movs r2, #4
	bl Alloc
	str r0, [r7, #0x34]
	mov r0, r8
	strh r0, [r7, #0x38]
	adds r0, r7, #0
	adds r0, #0x3a
	strb r4, [r0]
	movs r0, #0x18
	strh r0, [r7, #4]
	movs r0, #0x14
	strh r0, [r7, #6]
	adds r0, r7, #0
	adds r0, #0x3b
	strb r4, [r0]
	ldr r1, [r7, #0x30]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	movs r1, #0xf
	movs r2, #4
	bl Alloc
	str r0, [r7, #0x3c]
	movs r3, #0
	ldr r1, _08042BF4
	str r3, [sp]
	ldrh r2, [r7]
	str r2, [sp, #4]
	ldrh r2, [r7, #2]
	str r2, [sp, #8]
	str r5, [sp, #0xc]
	movs r2, #0
	bl SetSprite
	ldr r0, [r7, #0x3c]
	adds r0, #0x1c
	ldr r1, _08042BF8
	mov r2, r8
	str r2, [sp]
	ldrh r2, [r7]
	str r2, [sp, #4]
	ldrh r2, [r7, #2]
	ldrh r3, [r7, #4]
	adds r2, r2, r3
	str r2, [sp, #8]
	str r5, [sp, #0xc]
	movs r2, #0
	movs r3, #0
	bl SetSprite
	mov r4, sl
	cmp r4, #4
	bhi _08042CA0
	lsls r0, r4, #2
	ldr r1, _08042BFC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08042BEC: .4byte gMenu
_08042BF0: .4byte 0x080B01B0
_08042BF4: .4byte 0x00000476
_08042BF8: .4byte 0x00000477
_08042BFC: .4byte 0x08042C00
_08042C00: @ jump table
	.4byte _08042C14 @ case 0
	.4byte _08042C30 @ case 1
	.4byte _08042C4C @ case 2
	.4byte _08042C84 @ case 3
	.4byte _08042C68 @ case 4
_08042C14:
	ldr r0, _08042C24
	ldr r1, [r0, #0x34]
	ldr r0, _08042C28
	str r0, [r1]
	ldr r0, _08042C2C
	str r0, [r1, #4]
	bl _08044614
	.align 2, 0
_08042C24: .4byte gMenu
_08042C28: .4byte 0x08068058
_08042C2C: .4byte 0x08068064
_08042C30:
	ldr r0, _08042C40
	ldr r1, [r0, #0x34]
	ldr r0, _08042C44
	str r0, [r1]
	ldr r0, _08042C48
	str r0, [r1, #4]
	bl _08044614
	.align 2, 0
_08042C40: .4byte gMenu
_08042C44: .4byte 0x080680E8
_08042C48: .4byte 0x080680FC
_08042C4C:
	ldr r0, _08042C5C
	ldr r1, [r0, #0x34]
	ldr r0, _08042C60
	str r0, [r1]
	ldr r0, _08042C64
	str r0, [r1, #4]
	bl _08044614
	.align 2, 0
_08042C5C: .4byte gMenu
_08042C60: .4byte 0x08068244
_08042C64: .4byte 0x08068258
_08042C68:
	ldr r0, _08042C78
	ldr r1, [r0, #0x34]
	ldr r0, _08042C7C
	str r0, [r1]
	ldr r0, _08042C80
	str r0, [r1, #4]
	bl _08044614
	.align 2, 0
_08042C78: .4byte gMenu
_08042C7C: .4byte 0x080682E4
_08042C80: .4byte 0x080682F4
_08042C84:
	ldr r0, _08042C94
	ldr r1, [r0, #0x34]
	ldr r0, _08042C98
	str r0, [r1]
	ldr r0, _08042C9C
	str r0, [r1, #4]
	bl _08044614
	.align 2, 0
_08042C94: .4byte gMenu
_08042C98: .4byte 0x08068190
_08042C9C: .4byte 0x080681A4
_08042CA0:
	.2byte 0xEE00, 0xEE00
	bl _08044614
_08042CA8:
	ldr r7, _08042D80
	movs r5, #0
	mov sb, r5
	movs r0, #0
	mov r8, r0
	movs r2, #0x34
	strh r2, [r7]
	movs r1, #0x66
	strh r1, [r7, #2]
	strh r2, [r7, #8]
	strh r1, [r7, #0xa]
	movs r4, #1
	strb r4, [r7, #0x18]
	mov r5, sb
	strb r5, [r7, #0x1a]
	strb r4, [r7, #0x12]
	movs r5, #0xf0
	strh r5, [r7, #0x10]
	movs r6, #6
	strb r6, [r7, #0x19]
	mov r0, r8
	strh r0, [r7, #0x14]
	movs r0, #0xf
	strh r0, [r7, #0x16]
	ldr r3, _08042D84
	str r3, [r7, #0xc]
	strh r2, [r7, #0x1c]
	strh r1, [r7, #0x1e]
	adds r0, r7, #0
	adds r0, #0x2c
	strb r4, [r0]
	adds r0, #2
	mov r1, sb
	strb r1, [r0]
	subs r0, #8
	strb r4, [r0]
	strh r5, [r7, #0x24]
	adds r0, #7
	strb r6, [r0]
	mov r2, r8
	strh r2, [r7, #0x28]
	movs r0, #0xa
	strh r0, [r7, #0x2a]
	str r3, [r7, #0x20]
	movs r5, #2
	str r5, [r7, #0x30]
	movs r0, #8
	movs r1, #0xf
	movs r2, #4
	bl Alloc
	str r0, [r7, #0x34]
	mov r0, r8
	strh r0, [r7, #0x38]
	adds r0, r7, #0
	adds r0, #0x3a
	strb r4, [r0]
	movs r0, #0x18
	strh r0, [r7, #4]
	movs r0, #0x14
	strh r0, [r7, #6]
	adds r0, r7, #0
	adds r0, #0x3b
	strb r4, [r0]
	ldr r1, [r7, #0x30]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	movs r1, #0xf
	movs r2, #4
	bl Alloc
	str r0, [r7, #0x3c]
	movs r3, #0
	ldr r1, _08042D88
	str r3, [sp]
	ldrh r2, [r7]
	str r2, [sp, #4]
	ldrh r2, [r7, #2]
	str r2, [sp, #8]
	str r5, [sp, #0xc]
	movs r2, #0
	bl SetSprite
	ldr r0, [r7, #0x3c]
	adds r0, #0x1c
	ldr r1, _08042D8C
	mov r2, r8
	str r2, [sp]
	ldrh r2, [r7]
	str r2, [sp, #4]
	ldrh r2, [r7, #2]
	ldrh r3, [r7, #4]
	adds r2, r2, r3
	str r2, [sp, #8]
	str r5, [sp, #0xc]
	movs r2, #0
	movs r3, #0
	bl SetSprite
	mov r4, sl
	cmp r4, #4
	bhi _08042E34
	lsls r0, r4, #2
	ldr r1, _08042D90
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08042D80: .4byte gMenu
_08042D84: .4byte 0x080B01B0
_08042D88: .4byte 0x00000476
_08042D8C: .4byte 0x00000477
_08042D90: .4byte 0x08042D94
_08042D94: @ jump table
	.4byte _08042DA8 @ case 0
	.4byte _08042DC4 @ case 1
	.4byte _08042DE0 @ case 2
	.4byte _08042E18 @ case 3
	.4byte _08042DFC @ case 4
_08042DA8:
	ldr r0, _08042DB8
	ldr r1, [r0, #0x34]
	ldr r0, _08042DBC
	str r0, [r1]
	ldr r0, _08042DC0
	str r0, [r1, #4]
	bl _08044614
	.align 2, 0
_08042DB8: .4byte gMenu
_08042DBC: .4byte 0x08068370
_08042DC0: .4byte 0x08068380
_08042DC4:
	ldr r0, _08042DD4
	ldr r1, [r0, #0x34]
	ldr r0, _08042DD8
	str r0, [r1]
	ldr r0, _08042DDC
	str r0, [r1, #4]
	bl _08044614
	.align 2, 0
_08042DD4: .4byte gMenu
_08042DD8: .4byte 0x08068388
_08042DDC: .4byte 0x0806839C
_08042DE0:
	ldr r0, _08042DF0
	ldr r1, [r0, #0x34]
	ldr r0, _08042DF4
	str r0, [r1]
	ldr r0, _08042DF8
	str r0, [r1, #4]
	bl _08044614
	.align 2, 0
_08042DF0: .4byte gMenu
_08042DF4: .4byte 0x080683C4
_08042DF8: .4byte 0x080683D8
_08042DFC:
	ldr r0, _08042E0C
	ldr r1, [r0, #0x34]
	ldr r0, _08042E10
	str r0, [r1]
	ldr r0, _08042E14
	str r0, [r1, #4]
	bl _08044614
	.align 2, 0
_08042E0C: .4byte gMenu
_08042E10: .4byte 0x080683E0
_08042E14: .4byte 0x080683F4
_08042E18:
	ldr r0, _08042E28
	ldr r1, [r0, #0x34]
	ldr r0, _08042E2C
	str r0, [r1]
	ldr r0, _08042E30
	str r0, [r1, #4]
	bl _08044614
	.align 2, 0
_08042E28: .4byte gMenu
_08042E2C: .4byte 0x080683A4
_08042E30: .4byte 0x080683B8
_08042E34:
	.2byte 0xEE00, 0xEE00
	bl _08044614
_08042E3C:
	ldr r7, _08042F14
	movs r5, #0
	mov sb, r5
	movs r0, #0
	mov r8, r0
	movs r2, #0x5c
	strh r2, [r7]
	movs r1, #0x66
	strh r1, [r7, #2]
	strh r2, [r7, #8]
	strh r1, [r7, #0xa]
	movs r4, #1
	strb r4, [r7, #0x18]
	mov r5, sb
	strb r5, [r7, #0x1a]
	strb r4, [r7, #0x12]
	movs r5, #0xf0
	strh r5, [r7, #0x10]
	movs r6, #6
	strb r6, [r7, #0x19]
	mov r0, r8
	strh r0, [r7, #0x14]
	movs r0, #0xf
	strh r0, [r7, #0x16]
	ldr r3, _08042F18
	str r3, [r7, #0xc]
	strh r2, [r7, #0x1c]
	strh r1, [r7, #0x1e]
	adds r0, r7, #0
	adds r0, #0x2c
	strb r4, [r0]
	adds r0, #2
	mov r1, sb
	strb r1, [r0]
	subs r0, #8
	strb r4, [r0]
	strh r5, [r7, #0x24]
	adds r0, #7
	strb r6, [r0]
	mov r2, r8
	strh r2, [r7, #0x28]
	movs r0, #0xa
	strh r0, [r7, #0x2a]
	str r3, [r7, #0x20]
	movs r5, #2
	str r5, [r7, #0x30]
	movs r0, #8
	movs r1, #0xf
	movs r2, #4
	bl Alloc
	str r0, [r7, #0x34]
	mov r0, r8
	strh r0, [r7, #0x38]
	adds r0, r7, #0
	adds r0, #0x3a
	strb r4, [r0]
	movs r0, #0x18
	strh r0, [r7, #4]
	movs r0, #0x14
	strh r0, [r7, #6]
	adds r0, r7, #0
	adds r0, #0x3b
	strb r4, [r0]
	ldr r1, [r7, #0x30]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	movs r1, #0xf
	movs r2, #4
	bl Alloc
	str r0, [r7, #0x3c]
	movs r3, #0
	ldr r1, _08042F1C
	str r3, [sp]
	ldrh r2, [r7]
	str r2, [sp, #4]
	ldrh r2, [r7, #2]
	str r2, [sp, #8]
	str r5, [sp, #0xc]
	movs r2, #0
	bl SetSprite
	ldr r0, [r7, #0x3c]
	adds r0, #0x1c
	ldr r1, _08042F20
	mov r2, r8
	str r2, [sp]
	ldrh r2, [r7]
	str r2, [sp, #4]
	ldrh r2, [r7, #2]
	ldrh r3, [r7, #4]
	adds r2, r2, r3
	str r2, [sp, #8]
	str r5, [sp, #0xc]
	movs r2, #0
	movs r3, #0
	bl SetSprite
	mov r4, sl
	cmp r4, #4
	bhi _08042FC8
	lsls r0, r4, #2
	ldr r1, _08042F24
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08042F14: .4byte gMenu
_08042F18: .4byte 0x080B01B0
_08042F1C: .4byte 0x00000476
_08042F20: .4byte 0x00000477
_08042F24: .4byte 0x08042F28
_08042F28: @ jump table
	.4byte _08042F3C @ case 0
	.4byte _08042F58 @ case 1
	.4byte _08042F74 @ case 2
	.4byte _08042FAC @ case 3
	.4byte _08042F90 @ case 4
_08042F3C:
	ldr r0, _08042F4C
	ldr r1, [r0, #0x34]
	ldr r0, _08042F50
	str r0, [r1]
	ldr r0, _08042F54
	str r0, [r1, #4]
	bl _08044614
	.align 2, 0
_08042F4C: .4byte gMenu
_08042F50: .4byte 0x080683FC
_08042F54: .4byte 0x08068404
_08042F58:
	ldr r0, _08042F68
	ldr r1, [r0, #0x34]
	ldr r0, _08042F6C
	str r0, [r1]
	ldr r0, _08042F70
	str r0, [r1, #4]
	bl _08044614
	.align 2, 0
_08042F68: .4byte gMenu
_08042F6C: .4byte 0x08068408
_08042F70: .4byte 0x08068410
_08042F74:
	ldr r0, _08042F84
	ldr r1, [r0, #0x34]
	ldr r0, _08042F88
	str r0, [r1]
	ldr r0, _08042F8C
	str r0, [r1, #4]
	bl _08044614
	.align 2, 0
_08042F84: .4byte gMenu
_08042F88: .4byte 0x08068424
_08042F8C: .4byte 0x08068428
_08042F90:
	ldr r0, _08042FA0
	ldr r1, [r0, #0x34]
	ldr r0, _08042FA4
	str r0, [r1]
	ldr r0, _08042FA8
	str r0, [r1, #4]
	bl _08044614
	.align 2, 0
_08042FA0: .4byte gMenu
_08042FA4: .4byte 0x0806842C
_08042FA8: .4byte 0x08068430
_08042FAC:
	ldr r0, _08042FBC
	ldr r1, [r0, #0x34]
	ldr r0, _08042FC0
	str r0, [r1]
	ldr r0, _08042FC4
	str r0, [r1, #4]
	bl _08044614
	.align 2, 0
_08042FBC: .4byte gMenu
_08042FC0: .4byte 0x08068418
_08042FC4: .4byte 0x0806841C
_08042FC8:
	.2byte 0xEE00, 0xEE00
	bl _08044614
_08042FD0:
	ldr r7, _0804305C
	movs r5, #0
	mov sb, r5
	movs r5, #0
	movs r2, #0x5f
	strh r2, [r7]
	movs r1, #0x46
	strh r1, [r7, #2]
	strh r2, [r7, #8]
	strh r1, [r7, #0xa]
	movs r4, #1
	strb r4, [r7, #0x18]
	mov r0, sb
	strb r0, [r7, #0x1a]
	strb r4, [r7, #0x12]
	movs r6, #0xf0
	strh r6, [r7, #0x10]
	movs r0, #6
	mov r8, r0
	mov r0, r8
	strb r0, [r7, #0x19]
	strh r5, [r7, #0x14]
	movs r0, #0xf
	strh r0, [r7, #0x16]
	ldr r3, _08043060
	str r3, [r7, #0xc]
	strh r2, [r7, #0x1c]
	strh r1, [r7, #0x1e]
	adds r0, r7, #0
	adds r0, #0x2c
	strb r4, [r0]
	adds r0, #2
	mov r1, sb
	strb r1, [r0]
	subs r0, #8
	strb r4, [r0]
	strh r6, [r7, #0x24]
	adds r0, #7
	mov r2, r8
	strb r2, [r0]
	strh r5, [r7, #0x28]
	movs r0, #0xa
	strh r0, [r7, #0x2a]
	str r3, [r7, #0x20]
	movs r0, #2
	str r0, [r7, #0x30]
	movs r0, #8
	movs r1, #0xf
	movs r2, #4
	bl Alloc
	str r0, [r7, #0x34]
	strh r5, [r7, #0x38]
	adds r1, r7, #0
	adds r1, #0x3a
	strb r4, [r1]
	movs r1, #0x10
	strh r1, [r7, #4]
	strh r5, [r7, #6]
	adds r1, r7, #0
	adds r1, #0x3b
	mov r4, sb
	strb r4, [r1]
	ldr r1, _08043064
	str r1, [r0]
	ldr r1, _08043068
	str r1, [r0, #4]
	bl _08044614
	.align 2, 0
_0804305C: .4byte gMenu
_08043060: .4byte 0x080B01B0
_08043064: .4byte 0x08065320
_08043068: .4byte 0x08065328
_0804306C:
	ldr r7, _080430FC
	movs r5, #0
	mov sb, r5
	movs r5, #0
	movs r2, #0x10
	strh r2, [r7]
	movs r1, #0x28
	strh r1, [r7, #2]
	strh r2, [r7, #8]
	strh r1, [r7, #0xa]
	movs r4, #1
	strb r4, [r7, #0x18]
	mov r0, sb
	strb r0, [r7, #0x1a]
	strb r4, [r7, #0x12]
	movs r6, #0xf0
	strh r6, [r7, #0x10]
	movs r0, #6
	mov r8, r0
	mov r0, r8
	strb r0, [r7, #0x19]
	strh r5, [r7, #0x14]
	movs r0, #0xf
	strh r0, [r7, #0x16]
	ldr r3, _08043100
	str r3, [r7, #0xc]
	strh r2, [r7, #0x1c]
	strh r1, [r7, #0x1e]
	adds r0, r7, #0
	adds r0, #0x2c
	strb r4, [r0]
	adds r0, #2
	mov r1, sb
	strb r1, [r0]
	subs r0, #8
	strb r4, [r0]
	strh r6, [r7, #0x24]
	adds r0, #7
	mov r2, r8
	strb r2, [r0]
	strh r5, [r7, #0x28]
	movs r0, #0xa
	strh r0, [r7, #0x2a]
	str r3, [r7, #0x20]
	movs r0, #3
	str r0, [r7, #0x30]
	movs r0, #0xc
	movs r1, #0xf
	movs r2, #4
	bl Alloc
	str r0, [r7, #0x34]
	strh r5, [r7, #0x38]
	adds r1, r7, #0
	adds r1, #0x3a
	strb r4, [r1]
	movs r1, #0x20
	strh r1, [r7, #4]
	strh r5, [r7, #6]
	adds r1, r7, #0
	adds r1, #0x3b
	mov r4, sb
	strb r4, [r1]
	ldr r1, _08043104
	str r1, [r0]
	ldr r1, _08043108
	str r1, [r0, #4]
	ldr r1, _0804310C
	str r1, [r0, #8]
	bl _08044614
	.align 2, 0
_080430FC: .4byte gMenu
_08043100: .4byte 0x080B01B0
_08043104: .4byte 0x020010B2
_08043108: .4byte 0x020010CC
_0804310C: .4byte 0x020010E6
_08043110:
	ldr r7, _08043214
	movs r5, #0
	mov sb, r5
	movs r0, #0
	mov r8, r0
	movs r5, #0x14
	strh r5, [r7]
	movs r1, #0x3c
	strh r1, [r7, #2]
	strh r5, [r7, #8]
	strh r1, [r7, #0xa]
	movs r4, #1
	strb r4, [r7, #0x18]
	mov r2, sb
	strb r2, [r7, #0x1a]
	strb r4, [r7, #0x12]
	movs r3, #0xf0
	strh r3, [r7, #0x10]
	movs r6, #6
	strb r6, [r7, #0x19]
	mov r0, r8
	strh r0, [r7, #0x14]
	movs r0, #0xf
	strh r0, [r7, #0x16]
	ldr r2, _08043218
	str r2, [r7, #0xc]
	strh r5, [r7, #0x1c]
	strh r1, [r7, #0x1e]
	adds r0, r7, #0
	adds r0, #0x2c
	strb r4, [r0]
	adds r0, #2
	mov r1, sb
	strb r1, [r0]
	subs r0, #8
	strb r4, [r0]
	strh r3, [r7, #0x24]
	adds r0, #7
	strb r6, [r0]
	mov r0, r8
	strh r0, [r7, #0x28]
	movs r0, #0xa
	strh r0, [r7, #0x2a]
	str r2, [r7, #0x20]
	movs r0, #3
	str r0, [r7, #0x30]
	movs r0, #0xc
	movs r1, #0xf
	movs r2, #4
	bl Alloc
	str r0, [r7, #0x34]
	mov r1, r8
	strh r1, [r7, #0x38]
	adds r0, r7, #0
	adds r0, #0x3a
	strb r4, [r0]
	strh r5, [r7, #4]
	strh r5, [r7, #6]
	adds r0, #1
	strb r4, [r0]
	ldr r1, [r7, #0x30]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	movs r1, #0xf
	movs r2, #4
	bl Alloc
	str r0, [r7, #0x3c]
	movs r3, #0
	ldr r1, _0804321C
	str r3, [sp]
	ldrh r2, [r7]
	str r2, [sp, #4]
	ldrh r2, [r7, #2]
	str r2, [sp, #8]
	movs r4, #2
	str r4, [sp, #0xc]
	movs r2, #0
	bl SetSprite
	ldr r0, [r7, #0x3c]
	adds r0, #0x1c
	ldr r1, _08043220
	mov r2, r8
	str r2, [sp]
	ldrh r2, [r7]
	str r2, [sp, #4]
	ldrh r2, [r7, #2]
	ldrh r3, [r7, #4]
	adds r2, r2, r3
	str r2, [sp, #8]
	str r4, [sp, #0xc]
	movs r2, #0
	movs r3, #0
	bl SetSprite
	movs r3, #2
	ldr r0, [r7, #0x3c]
	adds r0, #0x38
	movs r1, #0x8f
	lsls r1, r1, #3
	mov r4, r8
	str r4, [sp]
	ldrh r2, [r7]
	str r2, [sp, #4]
	ldrh r2, [r7, #4]
	lsls r2, r2, #1
	ldrh r5, [r7, #2]
	adds r2, r2, r5
	str r2, [sp, #8]
	str r3, [sp, #0xc]
	movs r2, #0
	movs r3, #0
	bl SetSprite
	ldr r1, [r7, #0x34]
	ldr r0, _08043224
	ldr r0, [r0]
	str r0, [r1]
	ldr r0, _08043228
	ldr r0, [r0]
	str r0, [r1, #4]
	ldr r0, _0804322C
	ldr r0, [r0]
	str r0, [r1, #8]
	bl _08044614
	.align 2, 0
_08043214: .4byte gMenu
_08043218: .4byte 0x080B01B0
_0804321C: .4byte 0x00000476
_08043220: .4byte 0x00000477
_08043224: .4byte 0x0203FA7C
_08043228: .4byte 0x0203FA80
_0804322C: .4byte 0x0203FA84
_08043230:
	ldr r7, _080432C0
	movs r0, #0
	mov sb, r0
	movs r5, #0
	movs r2, #0x42
	strh r2, [r7]
	movs r1, #0x30
	strh r1, [r7, #2]
	strh r2, [r7, #8]
	strh r1, [r7, #0xa]
	movs r4, #1
	strb r4, [r7, #0x18]
	mov r0, sb
	strb r0, [r7, #0x1a]
	strb r4, [r7, #0x12]
	movs r6, #0xf0
	strh r6, [r7, #0x10]
	movs r0, #6
	mov r8, r0
	mov r0, r8
	strb r0, [r7, #0x19]
	strh r5, [r7, #0x14]
	movs r0, #0xf
	strh r0, [r7, #0x16]
	ldr r3, _080432C4
	str r3, [r7, #0xc]
	strh r2, [r7, #0x1c]
	strh r1, [r7, #0x1e]
	adds r0, r7, #0
	adds r0, #0x2c
	strb r4, [r0]
	adds r0, #2
	mov r1, sb
	strb r1, [r0]
	subs r0, #8
	strb r4, [r0]
	strh r6, [r7, #0x24]
	adds r0, #7
	mov r2, r8
	strb r2, [r0]
	strh r5, [r7, #0x28]
	movs r0, #0xa
	strh r0, [r7, #0x2a]
	str r3, [r7, #0x20]
	movs r0, #5
	str r0, [r7, #0x30]
	movs r6, #0x14
	movs r0, #0x14
	movs r1, #0xf
	movs r2, #4
	bl Alloc
	str r0, [r7, #0x34]
	strh r5, [r7, #0x38]
	adds r0, r7, #0
	adds r0, #0x3a
	strb r4, [r0]
	strh r6, [r7, #4]
	strh r5, [r7, #6]
	adds r0, #1
	mov r4, sb
	strb r4, [r0]
	mov r5, sl
	cmp r5, #4
	bls _080432B4
	b _080436B4
_080432B4:
	lsls r0, r5, #2
	ldr r1, _080432C8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080432C0: .4byte gMenu
_080432C4: .4byte 0x080B01B0
_080432C8: .4byte 0x080432CC
_080432CC: @ jump table
	.4byte _080432E0 @ case 0
	.4byte _080433A4 @ case 1
	.4byte _08043468 @ case 2
	.4byte _080435F0 @ case 3
	.4byte _0804352C @ case 4
_080432E0:
	ldr r1, _080432F8
	ldrb r3, [r1]
	ldr r0, _080432FC
	ldr r2, [r0]
	adds r4, r1, #0
	adds r5, r0, #0
	cmp r3, r2
	blt _08043308
	ldr r2, _08043300
	ldr r1, [r2, #0x34]
	ldr r0, _08043304
	b _0804330E
	.align 2, 0
_080432F8: .4byte 0x0203E16C
_080432FC: .4byte 0x080CF3B0
_08043300: .4byte gMenu
_08043304: .4byte 0x0806570C
_08043308:
	ldr r2, _08043324
	ldr r1, [r2, #0x34]
	ldr r0, _08043328
_0804330E:
	str r0, [r1]
	movs r3, #1
	ldrb r1, [r4]
	ldr r0, [r5, #4]
	cmp r1, r0
	blt _08043330
	ldr r0, [r2, #0x34]
	lsls r1, r3, #2
	adds r1, r1, r0
	ldr r0, _0804332C
	b _08043338
	.align 2, 0
_08043324: .4byte gMenu
_08043328: .4byte 0x080657B0
_0804332C: .4byte 0x0806571C
_08043330:
	ldr r0, [r2, #0x34]
	lsls r1, r3, #2
	adds r1, r1, r0
	ldr r0, _08043350
_08043338:
	str r0, [r1]
	adds r3, #1
	ldrb r1, [r4]
	ldr r0, [r5, #8]
	cmp r1, r0
	blt _08043358
	ldr r0, [r2, #0x34]
	lsls r1, r3, #2
	adds r1, r1, r0
	ldr r0, _08043354
	b _08043360
	.align 2, 0
_08043350: .4byte 0x080657C4
_08043354: .4byte 0x08065728
_08043358:
	ldr r0, [r2, #0x34]
	lsls r1, r3, #2
	adds r1, r1, r0
	ldr r0, _08043378
_08043360:
	str r0, [r1]
	adds r3, #1
	ldrb r1, [r4]
	ldr r0, [r5, #0xc]
	cmp r1, r0
	blt _08043380
	ldr r0, [r2, #0x34]
	lsls r1, r3, #2
	adds r1, r1, r0
	ldr r0, _0804337C
	b _08043388
	.align 2, 0
_08043378: .4byte 0x080657D8
_0804337C: .4byte 0x08065738
_08043380:
	ldr r0, [r2, #0x34]
	lsls r1, r3, #2
	adds r1, r1, r0
	ldr r0, _0804339C
_08043388:
	str r0, [r1]
	adds r3, #1
	ldr r0, [r2, #0x34]
	lsls r1, r3, #2
	adds r1, r1, r0
	ldr r0, _080433A0
	str r0, [r1]
	bl _08044614
	.align 2, 0
_0804339C: .4byte 0x080657EC
_080433A0: .4byte 0x08065788
_080433A4:
	ldr r1, _080433BC
	ldrb r3, [r1]
	ldr r0, _080433C0
	ldr r2, [r0]
	adds r4, r1, #0
	adds r5, r0, #0
	cmp r3, r2
	blt _080433CC
	ldr r2, _080433C4
	ldr r1, [r2, #0x34]
	ldr r0, _080433C8
	b _080433D2
	.align 2, 0
_080433BC: .4byte 0x0203E16C
_080433C0: .4byte 0x080CF3B0
_080433C4: .4byte gMenu
_080433C8: .4byte 0x08065850
_080433CC:
	ldr r2, _080433E8
	ldr r1, [r2, #0x34]
	ldr r0, _080433EC
_080433D2:
	str r0, [r1]
	movs r3, #1
	ldrb r1, [r4]
	ldr r0, [r5, #4]
	cmp r1, r0
	blt _080433F4
	ldr r0, [r2, #0x34]
	lsls r1, r3, #2
	adds r1, r1, r0
	ldr r0, _080433F0
	b _080433FC
	.align 2, 0
_080433E8: .4byte gMenu
_080433EC: .4byte 0x08065928
_080433F0: .4byte 0x08065868
_080433F4:
	ldr r0, [r2, #0x34]
	lsls r1, r3, #2
	adds r1, r1, r0
	ldr r0, _08043414
_080433FC:
	str r0, [r1]
	adds r3, #1
	ldrb r1, [r4]
	ldr r0, [r5, #8]
	cmp r1, r0
	blt _0804341C
	ldr r0, [r2, #0x34]
	lsls r1, r3, #2
	adds r1, r1, r0
	ldr r0, _08043418
	b _08043424
	.align 2, 0
_08043414: .4byte 0x0806593C
_08043418: .4byte 0x0806587C
_0804341C:
	ldr r0, [r2, #0x34]
	lsls r1, r3, #2
	adds r1, r1, r0
	ldr r0, _0804343C
_08043424:
	str r0, [r1]
	adds r3, #1
	ldrb r1, [r4]
	ldr r0, [r5, #0xc]
	cmp r1, r0
	blt _08043444
	ldr r0, [r2, #0x34]
	lsls r1, r3, #2
	adds r1, r1, r0
	ldr r0, _08043440
	b _0804344C
	.align 2, 0
_0804343C: .4byte 0x08065950
_08043440: .4byte 0x08065894
_08043444:
	ldr r0, [r2, #0x34]
	lsls r1, r3, #2
	adds r1, r1, r0
	ldr r0, _08043460
_0804344C:
	str r0, [r1]
	adds r3, #1
	ldr r0, [r2, #0x34]
	lsls r1, r3, #2
	adds r1, r1, r0
	ldr r0, _08043464
	str r0, [r1]
	bl _08044614
	.align 2, 0
_08043460: .4byte 0x08065964
_08043464: .4byte 0x080658FC
_08043468:
	ldr r1, _08043480
	ldrb r3, [r1]
	ldr r0, _08043484
	ldr r2, [r0]
	adds r4, r1, #0
	adds r5, r0, #0
	cmp r3, r2
	blt _08043490
	ldr r2, _08043488
	ldr r1, [r2, #0x34]
	ldr r0, _0804348C
	b _08043496
	.align 2, 0
_08043480: .4byte 0x0203E16C
_08043484: .4byte 0x080CF3B0
_08043488: .4byte gMenu
_0804348C: .4byte 0x08065B1C
_08043490:
	ldr r2, _080434AC
	ldr r1, [r2, #0x34]
	ldr r0, _080434B0
_08043496:
	str r0, [r1]
	movs r3, #1
	ldrb r1, [r4]
	ldr r0, [r5, #4]
	cmp r1, r0
	blt _080434B8
	ldr r0, [r2, #0x34]
	lsls r1, r3, #2
	adds r1, r1, r0
	ldr r0, _080434B4
	b _080434C0
	.align 2, 0
_080434AC: .4byte gMenu
_080434B0: .4byte 0x08065BE4
_080434B4: .4byte 0x08065B2C
_080434B8:
	ldr r0, [r2, #0x34]
	lsls r1, r3, #2
	adds r1, r1, r0
	ldr r0, _080434D8
_080434C0:
	str r0, [r1]
	adds r3, #1
	ldrb r1, [r4]
	ldr r0, [r5, #8]
	cmp r1, r0
	blt _080434E0
	ldr r0, [r2, #0x34]
	lsls r1, r3, #2
	adds r1, r1, r0
	ldr r0, _080434DC
	b _080434E8
	.align 2, 0
_080434D8: .4byte 0x08065BF8
_080434DC: .4byte 0x08065B40
_080434E0:
	ldr r0, [r2, #0x34]
	lsls r1, r3, #2
	adds r1, r1, r0
	ldr r0, _08043500
_080434E8:
	str r0, [r1]
	adds r3, #1
	ldrb r1, [r4]
	ldr r0, [r5, #0xc]
	cmp r1, r0
	blt _08043508
	ldr r0, [r2, #0x34]
	lsls r1, r3, #2
	adds r1, r1, r0
	ldr r0, _08043504
	b _08043510
	.align 2, 0
_08043500: .4byte 0x08065C0C
_08043504: .4byte 0x08065B50
_08043508:
	ldr r0, [r2, #0x34]
	lsls r1, r3, #2
	adds r1, r1, r0
	ldr r0, _08043524
_08043510:
	str r0, [r1]
	adds r3, #1
	ldr r0, [r2, #0x34]
	lsls r1, r3, #2
	adds r1, r1, r0
	ldr r0, _08043528
	str r0, [r1]
	bl _08044614
	.align 2, 0
_08043524: .4byte 0x08065C20
_08043528: .4byte 0x08065BB8
_0804352C:
	ldr r1, _08043544
	ldrb r3, [r1]
	ldr r0, _08043548
	ldr r2, [r0]
	adds r4, r1, #0
	adds r5, r0, #0
	cmp r3, r2
	blt _08043554
	ldr r2, _0804354C
	ldr r1, [r2, #0x34]
	ldr r0, _08043550
	b _0804355A
	.align 2, 0
_08043544: .4byte 0x0203E16C
_08043548: .4byte 0x080CF3B0
_0804354C: .4byte gMenu
_08043550: .4byte 0x08065C84
_08043554:
	ldr r2, _08043570
	ldr r1, [r2, #0x34]
	ldr r0, _08043574
_0804355A:
	str r0, [r1]
	movs r3, #1
	ldrb r1, [r4]
	ldr r0, [r5, #4]
	cmp r1, r0
	blt _0804357C
	ldr r0, [r2, #0x34]
	lsls r1, r3, #2
	adds r1, r1, r0
	ldr r0, _08043578
	b _08043584
	.align 2, 0
_08043570: .4byte gMenu
_08043574: .4byte 0x08065D4C
_08043578: .4byte 0x08065C98
_0804357C:
	ldr r0, [r2, #0x34]
	lsls r1, r3, #2
	adds r1, r1, r0
	ldr r0, _0804359C
_08043584:
	str r0, [r1]
	adds r3, #1
	ldrb r1, [r4]
	ldr r0, [r5, #8]
	cmp r1, r0
	blt _080435A4
	ldr r0, [r2, #0x34]
	lsls r1, r3, #2
	adds r1, r1, r0
	ldr r0, _080435A0
	b _080435AC
	.align 2, 0
_0804359C: .4byte 0x08065D60
_080435A0: .4byte 0x08065CB0
_080435A4:
	ldr r0, [r2, #0x34]
	lsls r1, r3, #2
	adds r1, r1, r0
	ldr r0, _080435C4
_080435AC:
	str r0, [r1]
	adds r3, #1
	ldrb r1, [r4]
	ldr r0, [r5, #0xc]
	cmp r1, r0
	blt _080435CC
	ldr r0, [r2, #0x34]
	lsls r1, r3, #2
	adds r1, r1, r0
	ldr r0, _080435C8
	b _080435D4
	.align 2, 0
_080435C4: .4byte 0x08065D74
_080435C8: .4byte 0x08065CC0
_080435CC:
	ldr r0, [r2, #0x34]
	lsls r1, r3, #2
	adds r1, r1, r0
	ldr r0, _080435E8
_080435D4:
	str r0, [r1]
	adds r3, #1
	ldr r0, [r2, #0x34]
	lsls r1, r3, #2
	adds r1, r1, r0
	ldr r0, _080435EC
	str r0, [r1]
	bl _08044614
	.align 2, 0
_080435E8: .4byte 0x08065D88
_080435EC: .4byte 0x08065D24
_080435F0:
	ldr r1, _08043608
	ldrb r3, [r1]
	ldr r0, _0804360C
	ldr r2, [r0]
	adds r4, r1, #0
	adds r5, r0, #0
	cmp r3, r2
	blt _08043618
	ldr r2, _08043610
	ldr r1, [r2, #0x34]
	ldr r0, _08043614
	b _0804361E
	.align 2, 0
_08043608: .4byte 0x0203E16C
_0804360C: .4byte 0x080CF3B0
_08043610: .4byte gMenu
_08043614: .4byte 0x080659C8
_08043618:
	ldr r2, _08043634
	ldr r1, [r2, #0x34]
	ldr r0, _08043638
_0804361E:
	str r0, [r1]
	movs r3, #1
	ldrb r1, [r4]
	ldr r0, [r5, #4]
	cmp r1, r0
	blt _08043640
	ldr r0, [r2, #0x34]
	lsls r1, r3, #2
	adds r1, r1, r0
	ldr r0, _0804363C
	b _08043648
	.align 2, 0
_08043634: .4byte gMenu
_08043638: .4byte 0x08065A7C
_0804363C: .4byte 0x080659D4
_08043640:
	ldr r0, [r2, #0x34]
	lsls r1, r3, #2
	adds r1, r1, r0
	ldr r0, _08043660
_08043648:
	str r0, [r1]
	adds r3, #1
	ldrb r1, [r4]
	ldr r0, [r5, #8]
	cmp r1, r0
	blt _08043668
	ldr r0, [r2, #0x34]
	lsls r1, r3, #2
	adds r1, r1, r0
	ldr r0, _08043664
	b _08043670
	.align 2, 0
_08043660: .4byte 0x08065A90
_08043664: .4byte 0x080659E4
_08043668:
	ldr r0, [r2, #0x34]
	lsls r1, r3, #2
	adds r1, r1, r0
	ldr r0, _08043688
_08043670:
	str r0, [r1]
	adds r3, #1
	ldrb r1, [r4]
	ldr r0, [r5, #0xc]
	cmp r1, r0
	blt _08043690
	ldr r0, [r2, #0x34]
	lsls r1, r3, #2
	adds r1, r1, r0
	ldr r0, _0804368C
	b _08043698
	.align 2, 0
_08043688: .4byte 0x08065AA4
_0804368C: .4byte 0x080659F0
_08043690:
	ldr r0, [r2, #0x34]
	lsls r1, r3, #2
	adds r1, r1, r0
	ldr r0, _080436AC
_08043698:
	str r0, [r1]
	adds r3, #1
	ldr r0, [r2, #0x34]
	lsls r1, r3, #2
	adds r1, r1, r0
	ldr r0, _080436B0
	str r0, [r1]
	bl _08044614
	.align 2, 0
_080436AC: .4byte 0x08065AB8
_080436B0: .4byte 0x08065A4C
_080436B4:
	.2byte 0xEE00, 0xEE00
	bl _08044614
_080436BC:
	ldr r7, _0804374C
	movs r0, #0
	mov sb, r0
	movs r5, #0
	movs r2, #0x42
	strh r2, [r7]
	movs r1, #0x30
	strh r1, [r7, #2]
	strh r2, [r7, #8]
	strh r1, [r7, #0xa]
	movs r4, #1
	strb r4, [r7, #0x18]
	mov r0, sb
	strb r0, [r7, #0x1a]
	strb r4, [r7, #0x12]
	movs r6, #0xf0
	strh r6, [r7, #0x10]
	movs r0, #6
	mov r8, r0
	mov r0, r8
	strb r0, [r7, #0x19]
	strh r5, [r7, #0x14]
	movs r0, #0xf
	strh r0, [r7, #0x16]
	ldr r3, _08043750
	str r3, [r7, #0xc]
	strh r2, [r7, #0x1c]
	strh r1, [r7, #0x1e]
	adds r0, r7, #0
	adds r0, #0x2c
	strb r4, [r0]
	adds r0, #2
	mov r1, sb
	strb r1, [r0]
	subs r0, #8
	strb r4, [r0]
	strh r6, [r7, #0x24]
	adds r0, #7
	mov r2, r8
	strb r2, [r0]
	strh r5, [r7, #0x28]
	movs r0, #0xa
	strh r0, [r7, #0x2a]
	str r3, [r7, #0x20]
	movs r0, #5
	str r0, [r7, #0x30]
	movs r6, #0x14
	movs r0, #0x14
	movs r1, #0xf
	movs r2, #4
	bl Alloc
	str r0, [r7, #0x34]
	strh r5, [r7, #0x38]
	adds r0, r7, #0
	adds r0, #0x3a
	strb r4, [r0]
	strh r6, [r7, #4]
	strh r5, [r7, #6]
	adds r0, #1
	mov r4, sb
	strb r4, [r0]
	mov r5, sl
	cmp r5, #4
	bls _08043740
	b _08043B40
_08043740:
	lsls r0, r5, #2
	ldr r1, _08043754
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0804374C: .4byte gMenu
_08043750: .4byte 0x080B01B0
_08043754: .4byte 0x08043758
_08043758: @ jump table
	.4byte _0804376C @ case 0
	.4byte _08043830 @ case 1
	.4byte _080438F4 @ case 2
	.4byte _08043A7C @ case 3
	.4byte _080439B8 @ case 4
_0804376C:
	ldr r1, _08043784
	ldrb r3, [r1]
	ldr r0, _08043788
	ldr r2, [r0, #0x10]
	adds r4, r1, #0
	adds r5, r0, #0
	cmp r3, r2
	blt _08043794
	ldr r2, _0804378C
	ldr r1, [r2, #0x34]
	ldr r0, _08043790
	b _0804379A
	.align 2, 0
_08043784: .4byte 0x0203E16C
_08043788: .4byte 0x080CF3B0
_0804378C: .4byte gMenu
_08043790: .4byte 0x08065748
_08043794:
	ldr r2, _080437B0
	ldr r1, [r2, #0x34]
	ldr r0, _080437B4
_0804379A:
	str r0, [r1]
	movs r3, #1
	ldrb r1, [r4]
	ldr r0, [r5, #0x14]
	cmp r1, r0
	blt _080437BC
	ldr r0, [r2, #0x34]
	lsls r1, r3, #2
	adds r1, r1, r0
	ldr r0, _080437B8
	b _080437C4
	.align 2, 0
_080437B0: .4byte gMenu
_080437B4: .4byte 0x08065800
_080437B8: .4byte 0x08065758
_080437BC:
	ldr r0, [r2, #0x34]
	lsls r1, r3, #2
	adds r1, r1, r0
	ldr r0, _080437DC
_080437C4:
	str r0, [r1]
	adds r3, #1
	ldrb r1, [r4]
	ldr r0, [r5, #0x18]
	cmp r1, r0
	blt _080437E4
	ldr r0, [r2, #0x34]
	lsls r1, r3, #2
	adds r1, r1, r0
	ldr r0, _080437E0
	b _080437EC
	.align 2, 0
_080437DC: .4byte 0x08065814
_080437E0: .4byte 0x08065768
_080437E4:
	ldr r0, [r2, #0x34]
	lsls r1, r3, #2
	adds r1, r1, r0
	ldr r0, _08043804
_080437EC:
	str r0, [r1]
	adds r3, #1
	ldrb r1, [r4]
	ldr r0, [r5, #0x1c]
	cmp r1, r0
	blt _0804380C
	ldr r0, [r2, #0x34]
	lsls r1, r3, #2
	adds r1, r1, r0
	ldr r0, _08043808
	b _08043814
	.align 2, 0
_08043804: .4byte 0x08065828
_08043808: .4byte 0x08065778
_0804380C:
	ldr r0, [r2, #0x34]
	lsls r1, r3, #2
	adds r1, r1, r0
	ldr r0, _08043828
_08043814:
	str r0, [r1]
	adds r3, #1
	ldr r0, [r2, #0x34]
	lsls r1, r3, #2
	adds r1, r1, r0
	ldr r0, _0804382C
	str r0, [r1]
	bl _08044614
	.align 2, 0
_08043828: .4byte 0x0806583C
_0804382C: .4byte 0x08065790
_08043830:
	ldr r1, _08043848
	ldrb r3, [r1]
	ldr r0, _0804384C
	ldr r2, [r0, #0x10]
	adds r4, r1, #0
	adds r5, r0, #0
	cmp r3, r2
	blt _08043858
	ldr r2, _08043850
	ldr r1, [r2, #0x34]
	ldr r0, _08043854
	b _0804385E
	.align 2, 0
_08043848: .4byte 0x0203E16C
_0804384C: .4byte 0x080CF3B0
_08043850: .4byte gMenu
_08043854: .4byte 0x080658AC
_08043858:
	ldr r2, _08043874
	ldr r1, [r2, #0x34]
	ldr r0, _08043878
_0804385E:
	str r0, [r1]
	movs r3, #1
	ldrb r1, [r4]
	ldr r0, [r5, #0x14]
	cmp r1, r0
	blt _08043880
	ldr r0, [r2, #0x34]
	lsls r1, r3, #2
	adds r1, r1, r0
	ldr r0, _0804387C
	b _08043888
	.align 2, 0
_08043874: .4byte gMenu
_08043878: .4byte 0x08065978
_0804387C: .4byte 0x080658C0
_08043880:
	ldr r0, [r2, #0x34]
	lsls r1, r3, #2
	adds r1, r1, r0
	ldr r0, _080438A0
_08043888:
	str r0, [r1]
	adds r3, #1
	ldrb r1, [r4]
	ldr r0, [r5, #0x18]
	cmp r1, r0
	blt _080438A8
	ldr r0, [r2, #0x34]
	lsls r1, r3, #2
	adds r1, r1, r0
	ldr r0, _080438A4
	b _080438B0
	.align 2, 0
_080438A0: .4byte 0x0806598C
_080438A4: .4byte 0x080658D4
_080438A8:
	ldr r0, [r2, #0x34]
	lsls r1, r3, #2
	adds r1, r1, r0
	ldr r0, _080438C8
_080438B0:
	str r0, [r1]
	adds r3, #1
	ldrb r1, [r4]
	ldr r0, [r5, #0x1c]
	cmp r1, r0
	blt _080438D0
	ldr r0, [r2, #0x34]
	lsls r1, r3, #2
	adds r1, r1, r0
	ldr r0, _080438CC
	b _080438D8
	.align 2, 0
_080438C8: .4byte 0x080659A0
_080438CC: .4byte 0x080658E8
_080438D0:
	ldr r0, [r2, #0x34]
	lsls r1, r3, #2
	adds r1, r1, r0
	ldr r0, _080438EC
_080438D8:
	str r0, [r1]
	adds r3, #1
	ldr r0, [r2, #0x34]
	lsls r1, r3, #2
	adds r1, r1, r0
	ldr r0, _080438F0
	str r0, [r1]
	bl _08044614
	.align 2, 0
_080438EC: .4byte 0x080659B4
_080438F0: .4byte 0x08065908
_080438F4:
	ldr r1, _0804390C
	ldrb r3, [r1]
	ldr r0, _08043910
	ldr r2, [r0, #0x10]
	adds r4, r1, #0
	adds r5, r0, #0
	cmp r3, r2
	blt _0804391C
	ldr r2, _08043914
	ldr r1, [r2, #0x34]
	ldr r0, _08043918
	b _08043922
	.align 2, 0
_0804390C: .4byte 0x0203E16C
_08043910: .4byte 0x080CF3B0
_08043914: .4byte gMenu
_08043918: .4byte 0x08065B68
_0804391C:
	ldr r2, _08043938
	ldr r1, [r2, #0x34]
	ldr r0, _0804393C
_08043922:
	str r0, [r1]
	movs r3, #1
	ldrb r1, [r4]
	ldr r0, [r5, #0x14]
	cmp r1, r0
	blt _08043944
	ldr r0, [r2, #0x34]
	lsls r1, r3, #2
	adds r1, r1, r0
	ldr r0, _08043940
	b _0804394C
	.align 2, 0
_08043938: .4byte gMenu
_0804393C: .4byte 0x08065C34
_08043940: .4byte 0x08065B7C
_08043944:
	ldr r0, [r2, #0x34]
	lsls r1, r3, #2
	adds r1, r1, r0
	ldr r0, _08043964
_0804394C:
	str r0, [r1]
	adds r3, #1
	ldrb r1, [r4]
	ldr r0, [r5, #0x18]
	cmp r1, r0
	blt _0804396C
	ldr r0, [r2, #0x34]
	lsls r1, r3, #2
	adds r1, r1, r0
	ldr r0, _08043968
	b _08043974
	.align 2, 0
_08043964: .4byte 0x08065C48
_08043968: .4byte 0x08065B90
_0804396C:
	ldr r0, [r2, #0x34]
	lsls r1, r3, #2
	adds r1, r1, r0
	ldr r0, _0804398C
_08043974:
	str r0, [r1]
	adds r3, #1
	ldrb r1, [r4]
	ldr r0, [r5, #0x1c]
	cmp r1, r0
	blt _08043994
	ldr r0, [r2, #0x34]
	lsls r1, r3, #2
	adds r1, r1, r0
	ldr r0, _08043990
	b _0804399C
	.align 2, 0
_0804398C: .4byte 0x08065C5C
_08043990: .4byte 0x08065BA4
_08043994:
	ldr r0, [r2, #0x34]
	lsls r1, r3, #2
	adds r1, r1, r0
	ldr r0, _080439B0
_0804399C:
	str r0, [r1]
	adds r3, #1
	ldr r0, [r2, #0x34]
	lsls r1, r3, #2
	adds r1, r1, r0
	ldr r0, _080439B4
	str r0, [r1]
	bl _08044614
	.align 2, 0
_080439B0: .4byte 0x08065C70
_080439B4: .4byte 0x08065BC4
_080439B8:
	ldr r1, _080439D0
	ldrb r3, [r1]
	ldr r0, _080439D4
	ldr r2, [r0, #0x10]
	adds r4, r1, #0
	adds r5, r0, #0
	cmp r3, r2
	blt _080439E0
	ldr r2, _080439D8
	ldr r1, [r2, #0x34]
	ldr r0, _080439DC
	b _080439E6
	.align 2, 0
_080439D0: .4byte 0x0203E16C
_080439D4: .4byte 0x080CF3B0
_080439D8: .4byte gMenu
_080439DC: .4byte 0x08065CD4
_080439E0:
	ldr r2, _080439FC
	ldr r1, [r2, #0x34]
	ldr r0, _08043A00
_080439E6:
	str r0, [r1]
	movs r3, #1
	ldrb r1, [r4]
	ldr r0, [r5, #0x14]
	cmp r1, r0
	blt _08043A08
	ldr r0, [r2, #0x34]
	lsls r1, r3, #2
	adds r1, r1, r0
	ldr r0, _08043A04
	b _08043A10
	.align 2, 0
_080439FC: .4byte gMenu
_08043A00: .4byte 0x08065D9C
_08043A04: .4byte 0x08065CE8
_08043A08:
	ldr r0, [r2, #0x34]
	lsls r1, r3, #2
	adds r1, r1, r0
	ldr r0, _08043A28
_08043A10:
	str r0, [r1]
	adds r3, #1
	ldrb r1, [r4]
	ldr r0, [r5, #0x18]
	cmp r1, r0
	blt _08043A30
	ldr r0, [r2, #0x34]
	lsls r1, r3, #2
	adds r1, r1, r0
	ldr r0, _08043A2C
	b _08043A38
	.align 2, 0
_08043A28: .4byte 0x08065DB0
_08043A2C: .4byte 0x08065D00
_08043A30:
	ldr r0, [r2, #0x34]
	lsls r1, r3, #2
	adds r1, r1, r0
	ldr r0, _08043A50
_08043A38:
	str r0, [r1]
	adds r3, #1
	ldrb r1, [r4]
	ldr r0, [r5, #0x1c]
	cmp r1, r0
	blt _08043A58
	ldr r0, [r2, #0x34]
	lsls r1, r3, #2
	adds r1, r1, r0
	ldr r0, _08043A54
	b _08043A60
	.align 2, 0
_08043A50: .4byte 0x08065DC4
_08043A54: .4byte 0x08065D14
_08043A58:
	ldr r0, [r2, #0x34]
	lsls r1, r3, #2
	adds r1, r1, r0
	ldr r0, _08043A74
_08043A60:
	str r0, [r1]
	adds r3, #1
	ldr r0, [r2, #0x34]
	lsls r1, r3, #2
	adds r1, r1, r0
	ldr r0, _08043A78
	str r0, [r1]
	bl _08044614
	.align 2, 0
_08043A74: .4byte 0x08065DD8
_08043A78: .4byte 0x08065D2C
_08043A7C:
	ldr r1, _08043A94
	ldrb r3, [r1]
	ldr r0, _08043A98
	ldr r2, [r0, #0x10]
	adds r4, r1, #0
	adds r5, r0, #0
	cmp r3, r2
	blt _08043AA4
	ldr r2, _08043A9C
	ldr r1, [r2, #0x34]
	ldr r0, _08043AA0
	b _08043AAA
	.align 2, 0
_08043A94: .4byte 0x0203E16C
_08043A98: .4byte 0x080CF3B0
_08043A9C: .4byte gMenu
_08043AA0: .4byte 0x080659FC
_08043AA4:
	ldr r2, _08043AC0
	ldr r1, [r2, #0x34]
	ldr r0, _08043AC4
_08043AAA:
	str r0, [r1]
	movs r3, #1
	ldrb r1, [r4]
	ldr r0, [r5, #0x14]
	cmp r1, r0
	blt _08043ACC
	ldr r0, [r2, #0x34]
	lsls r1, r3, #2
	adds r1, r1, r0
	ldr r0, _08043AC8
	b _08043AD4
	.align 2, 0
_08043AC0: .4byte gMenu
_08043AC4: .4byte 0x08065ACC
_08043AC8: .4byte 0x08065A10
_08043ACC:
	ldr r0, [r2, #0x34]
	lsls r1, r3, #2
	adds r1, r1, r0
	ldr r0, _08043AEC
_08043AD4:
	str r0, [r1]
	adds r3, #1
	ldrb r1, [r4]
	ldr r0, [r5, #0x18]
	cmp r1, r0
	blt _08043AF4
	ldr r0, [r2, #0x34]
	lsls r1, r3, #2
	adds r1, r1, r0
	ldr r0, _08043AF0
	b _08043AFC
	.align 2, 0
_08043AEC: .4byte 0x08065AE0
_08043AF0: .4byte 0x08065A28
_08043AF4:
	ldr r0, [r2, #0x34]
	lsls r1, r3, #2
	adds r1, r1, r0
	ldr r0, _08043B14
_08043AFC:
	str r0, [r1]
	adds r3, #1
	ldrb r1, [r4]
	ldr r0, [r5, #0x1c]
	cmp r1, r0
	blt _08043B1C
	ldr r0, [r2, #0x34]
	lsls r1, r3, #2
	adds r1, r1, r0
	ldr r0, _08043B18
	b _08043B24
	.align 2, 0
_08043B14: .4byte 0x08065AF4
_08043B18: .4byte 0x08065A3C
_08043B1C:
	ldr r0, [r2, #0x34]
	lsls r1, r3, #2
	adds r1, r1, r0
	ldr r0, _08043B38
_08043B24:
	str r0, [r1]
	adds r3, #1
	ldr r0, [r2, #0x34]
	lsls r1, r3, #2
	adds r1, r1, r0
	ldr r0, _08043B3C
	str r0, [r1]
	bl _08044614
	.align 2, 0
_08043B38: .4byte 0x08065B08
_08043B3C: .4byte 0x08065A58
_08043B40:
	.2byte 0xEE00, 0xEE00
	bl _08044614
_08043B48:
	ldr r7, _08043BE8
	movs r0, #0
	mov sb, r0
	movs r5, #0
	movs r2, #0x10
	strh r2, [r7]
	movs r1, #0x48
	strh r1, [r7, #2]
	strh r2, [r7, #8]
	strh r1, [r7, #0xa]
	movs r4, #1
	strb r4, [r7, #0x18]
	mov r0, sb
	strb r0, [r7, #0x1a]
	strb r4, [r7, #0x12]
	movs r6, #0xf0
	strh r6, [r7, #0x10]
	movs r0, #6
	mov r8, r0
	mov r0, r8
	strb r0, [r7, #0x19]
	strh r5, [r7, #0x14]
	movs r0, #0xf
	strh r0, [r7, #0x16]
	ldr r3, _08043BEC
	str r3, [r7, #0xc]
	strh r2, [r7, #0x1c]
	strh r1, [r7, #0x1e]
	adds r0, r7, #0
	adds r0, #0x2c
	strb r4, [r0]
	adds r0, #2
	mov r1, sb
	strb r1, [r0]
	subs r0, #8
	strb r4, [r0]
	strh r6, [r7, #0x24]
	adds r0, #7
	mov r2, r8
	strb r2, [r0]
	strh r5, [r7, #0x28]
	movs r0, #0xa
	strh r0, [r7, #0x2a]
	str r3, [r7, #0x20]
	movs r0, #7
	str r0, [r7, #0x30]
	movs r0, #0x1c
	movs r1, #0xf
	movs r2, #4
	bl Alloc
	str r0, [r7, #0x34]
	strh r5, [r7, #0x38]
	adds r1, r7, #0
	adds r1, #0x3a
	strb r4, [r1]
	movs r1, #8
	strh r1, [r7, #4]
	strh r5, [r7, #6]
	adds r1, r7, #0
	adds r1, #0x3b
	mov r4, sb
	strb r4, [r1]
	ldr r1, _08043BF0
	str r1, [r0]
	ldr r1, _08043BF4
	str r1, [r0, #4]
	ldr r1, _08043BF8
	str r1, [r0, #8]
	ldr r1, _08043BFC
	str r1, [r0, #0xc]
	ldr r1, _08043C00
	str r1, [r0, #0x10]
	ldr r1, _08043C04
	str r1, [r0, #0x14]
	ldr r1, _08043C08
	str r1, [r0, #0x18]
	bl _08044614
	.align 2, 0
_08043BE8: .4byte gMenu
_08043BEC: .4byte 0x080B01A8
_08043BF0: .4byte 0x08064A8C
_08043BF4: .4byte 0x08064A98
_08043BF8: .4byte 0x08064AA4
_08043BFC: .4byte 0x08064AB0
_08043C00: .4byte 0x08064AB8
_08043C04: .4byte 0x08064AC4
_08043C08: .4byte 0x08064AD0
_08043C0C:
	ldr r7, _08043CA0
	movs r5, #0
	mov sb, r5
	movs r5, #0
	movs r2, #0x10
	strh r2, [r7]
	movs r1, #0x48
	strh r1, [r7, #2]
	strh r2, [r7, #8]
	strh r1, [r7, #0xa]
	movs r4, #1
	strb r4, [r7, #0x18]
	mov r0, sb
	strb r0, [r7, #0x1a]
	strb r4, [r7, #0x12]
	movs r6, #0xf0
	strh r6, [r7, #0x10]
	movs r0, #6
	mov r8, r0
	mov r0, r8
	strb r0, [r7, #0x19]
	strh r5, [r7, #0x14]
	movs r0, #0xf
	strh r0, [r7, #0x16]
	ldr r3, _08043CA4
	str r3, [r7, #0xc]
	strh r2, [r7, #0x1c]
	strh r1, [r7, #0x1e]
	adds r0, r7, #0
	adds r0, #0x2c
	strb r4, [r0]
	adds r0, #2
	mov r1, sb
	strb r1, [r0]
	subs r0, #8
	strb r4, [r0]
	strh r6, [r7, #0x24]
	adds r0, #7
	mov r2, r8
	strb r2, [r0]
	strh r5, [r7, #0x28]
	movs r0, #0xa
	strh r0, [r7, #0x2a]
	str r3, [r7, #0x20]
	movs r0, #4
	str r0, [r7, #0x30]
	movs r0, #0x10
	movs r1, #0xf
	movs r2, #4
	bl Alloc
	str r0, [r7, #0x34]
	strh r5, [r7, #0x38]
	adds r1, r7, #0
	adds r1, #0x3a
	strb r4, [r1]
	movs r1, #8
	strh r1, [r7, #4]
	strh r5, [r7, #6]
	adds r1, r7, #0
	adds r1, #0x3b
	mov r4, sb
	strb r4, [r1]
	ldr r1, _08043CA8
	str r1, [r0]
	ldr r1, _08043CAC
	str r1, [r0, #4]
	ldr r1, _08043CB0
	str r1, [r0, #8]
	ldr r1, _08043CB4
	str r1, [r0, #0xc]
	bl _08044614
	.align 2, 0
_08043CA0: .4byte gMenu
_08043CA4: .4byte 0x080B01A8
_08043CA8: .4byte 0x08064E30
_08043CAC: .4byte 0x08064E40
_08043CB0: .4byte 0x08064E4C
_08043CB4: .4byte 0x08064E58
_08043CB8:
	ldr r7, _08043D50
	movs r5, #0
	mov sb, r5
	movs r5, #0
	movs r2, #0x10
	strh r2, [r7]
	movs r1, #0x48
	strh r1, [r7, #2]
	strh r2, [r7, #8]
	strh r1, [r7, #0xa]
	movs r4, #1
	strb r4, [r7, #0x18]
	mov r0, sb
	strb r0, [r7, #0x1a]
	strb r4, [r7, #0x12]
	movs r0, #0xf0
	mov r8, r0
	mov r0, r8
	strh r0, [r7, #0x10]
	movs r3, #6
	strb r3, [r7, #0x19]
	strh r5, [r7, #0x14]
	movs r0, #0xf
	strh r0, [r7, #0x16]
	ldr r6, _08043D54
	str r6, [r7, #0xc]
	strh r2, [r7, #0x1c]
	strh r1, [r7, #0x1e]
	adds r0, r7, #0
	adds r0, #0x2c
	strb r4, [r0]
	adds r0, #2
	mov r1, sb
	strb r1, [r0]
	subs r0, #8
	strb r4, [r0]
	mov r2, r8
	strh r2, [r7, #0x24]
	adds r0, #7
	strb r3, [r0]
	strh r5, [r7, #0x28]
	movs r0, #0xa
	strh r0, [r7, #0x2a]
	str r6, [r7, #0x20]
	str r3, [r7, #0x30]
	movs r0, #0x18
	movs r1, #0xf
	movs r2, #4
	bl Alloc
	str r0, [r7, #0x34]
	strh r5, [r7, #0x38]
	adds r1, r7, #0
	adds r1, #0x3a
	strb r4, [r1]
	movs r1, #8
	strh r1, [r7, #4]
	strh r5, [r7, #6]
	adds r1, r7, #0
	adds r1, #0x3b
	mov r4, sb
	strb r4, [r1]
	ldr r1, _08043D58
	str r1, [r0]
	ldr r1, _08043D5C
	str r1, [r0, #4]
	ldr r1, _08043D60
	str r1, [r0, #8]
	ldr r1, _08043D64
	str r1, [r0, #0xc]
	ldr r1, _08043D68
	str r1, [r0, #0x10]
	ldr r1, _08043D6C
	str r1, [r0, #0x14]
	bl _08044614
	.align 2, 0
_08043D50: .4byte gMenu
_08043D54: .4byte 0x080B01A8
_08043D58: .4byte 0x08064CBC
_08043D5C: .4byte 0x08064CC4
_08043D60: .4byte 0x08064CD4
_08043D64: .4byte 0x08064CE8
_08043D68: .4byte 0x08064CFC
_08043D6C: .4byte 0x08064D10
_08043D70:
	ldr r7, _08043E08
	movs r5, #0
	mov sb, r5
	movs r5, #0
	movs r2, #0x10
	strh r2, [r7]
	movs r1, #0x48
	strh r1, [r7, #2]
	strh r2, [r7, #8]
	strh r1, [r7, #0xa]
	movs r4, #1
	strb r4, [r7, #0x18]
	mov r0, sb
	strb r0, [r7, #0x1a]
	strb r4, [r7, #0x12]
	movs r0, #0xf0
	mov r8, r0
	mov r0, r8
	strh r0, [r7, #0x10]
	movs r3, #6
	strb r3, [r7, #0x19]
	strh r5, [r7, #0x14]
	movs r0, #0xf
	strh r0, [r7, #0x16]
	ldr r6, _08043E0C
	str r6, [r7, #0xc]
	strh r2, [r7, #0x1c]
	strh r1, [r7, #0x1e]
	adds r0, r7, #0
	adds r0, #0x2c
	strb r4, [r0]
	adds r0, #2
	mov r1, sb
	strb r1, [r0]
	subs r0, #8
	strb r4, [r0]
	mov r2, r8
	strh r2, [r7, #0x24]
	adds r0, #7
	strb r3, [r0]
	strh r5, [r7, #0x28]
	movs r0, #0xa
	strh r0, [r7, #0x2a]
	str r6, [r7, #0x20]
	str r3, [r7, #0x30]
	movs r0, #0x18
	movs r1, #0xf
	movs r2, #4
	bl Alloc
	str r0, [r7, #0x34]
	strh r5, [r7, #0x38]
	adds r1, r7, #0
	adds r1, #0x3a
	strb r4, [r1]
	movs r1, #8
	strh r1, [r7, #4]
	strh r5, [r7, #6]
	adds r1, r7, #0
	adds r1, #0x3b
	mov r4, sb
	strb r4, [r1]
	ldr r1, _08043E10
	str r1, [r0]
	ldr r1, _08043E14
	str r1, [r0, #4]
	ldr r1, _08043E18
	str r1, [r0, #8]
	ldr r1, _08043E1C
	str r1, [r0, #0xc]
	ldr r1, _08043E20
	str r1, [r0, #0x10]
	ldr r1, _08043E24
	str r1, [r0, #0x14]
	bl _08044614
	.align 2, 0
_08043E08: .4byte gMenu
_08043E0C: .4byte 0x080B01A8
_08043E10: .4byte 0x08064D18
_08043E14: .4byte 0x08064D28
_08043E18: .4byte 0x08064D34
_08043E1C: .4byte 0x08064D44
_08043E20: .4byte 0x08064D54
_08043E24: .4byte 0x08064D60
_08043E28:
	ldr r7, _08043EC0
	movs r5, #0
	mov sb, r5
	movs r5, #0
	movs r2, #0x10
	strh r2, [r7]
	movs r1, #0x48
	strh r1, [r7, #2]
	strh r2, [r7, #8]
	strh r1, [r7, #0xa]
	movs r4, #1
	strb r4, [r7, #0x18]
	mov r0, sb
	strb r0, [r7, #0x1a]
	strb r4, [r7, #0x12]
	movs r0, #0xf0
	mov r8, r0
	mov r0, r8
	strh r0, [r7, #0x10]
	movs r3, #6
	strb r3, [r7, #0x19]
	strh r5, [r7, #0x14]
	movs r0, #0xf
	strh r0, [r7, #0x16]
	ldr r6, _08043EC4
	str r6, [r7, #0xc]
	strh r2, [r7, #0x1c]
	strh r1, [r7, #0x1e]
	adds r0, r7, #0
	adds r0, #0x2c
	strb r4, [r0]
	adds r0, #2
	mov r1, sb
	strb r1, [r0]
	subs r0, #8
	strb r4, [r0]
	mov r2, r8
	strh r2, [r7, #0x24]
	adds r0, #7
	strb r3, [r0]
	strh r5, [r7, #0x28]
	movs r0, #0xa
	strh r0, [r7, #0x2a]
	str r6, [r7, #0x20]
	str r3, [r7, #0x30]
	movs r0, #0x18
	movs r1, #0xf
	movs r2, #4
	bl Alloc
	str r0, [r7, #0x34]
	strh r5, [r7, #0x38]
	adds r1, r7, #0
	adds r1, #0x3a
	strb r4, [r1]
	movs r1, #8
	strh r1, [r7, #4]
	strh r5, [r7, #6]
	adds r1, r7, #0
	adds r1, #0x3b
	mov r4, sb
	strb r4, [r1]
	ldr r1, _08043EC8
	str r1, [r0]
	ldr r1, _08043ECC
	str r1, [r0, #4]
	ldr r1, _08043ED0
	str r1, [r0, #8]
	ldr r1, _08043ED4
	str r1, [r0, #0xc]
	ldr r1, _08043ED8
	str r1, [r0, #0x10]
	ldr r1, _08043EDC
	str r1, [r0, #0x14]
	b _08044614
	.align 2, 0
_08043EC0: .4byte gMenu
_08043EC4: .4byte 0x080B01A8
_08043EC8: .4byte 0x08064D68
_08043ECC: .4byte 0x08064D74
_08043ED0: .4byte 0x08064D80
_08043ED4: .4byte 0x08064D8C
_08043ED8: .4byte 0x08064D98
_08043EDC: .4byte 0x08064DA4
_08043EE0:
	ldr r7, _08043F78
	movs r5, #0
	mov sb, r5
	movs r5, #0
	movs r2, #0x10
	strh r2, [r7]
	movs r1, #0x48
	strh r1, [r7, #2]
	strh r2, [r7, #8]
	strh r1, [r7, #0xa]
	movs r4, #1
	strb r4, [r7, #0x18]
	mov r0, sb
	strb r0, [r7, #0x1a]
	strb r4, [r7, #0x12]
	movs r0, #0xf0
	mov r8, r0
	mov r0, r8
	strh r0, [r7, #0x10]
	movs r3, #6
	strb r3, [r7, #0x19]
	strh r5, [r7, #0x14]
	movs r0, #0xf
	strh r0, [r7, #0x16]
	ldr r6, _08043F7C
	str r6, [r7, #0xc]
	strh r2, [r7, #0x1c]
	strh r1, [r7, #0x1e]
	adds r0, r7, #0
	adds r0, #0x2c
	strb r4, [r0]
	adds r0, #2
	mov r1, sb
	strb r1, [r0]
	subs r0, #8
	strb r4, [r0]
	mov r2, r8
	strh r2, [r7, #0x24]
	adds r0, #7
	strb r3, [r0]
	strh r5, [r7, #0x28]
	movs r0, #0xa
	strh r0, [r7, #0x2a]
	str r6, [r7, #0x20]
	str r3, [r7, #0x30]
	movs r0, #0x18
	movs r1, #0xf
	movs r2, #4
	bl Alloc
	str r0, [r7, #0x34]
	strh r5, [r7, #0x38]
	adds r1, r7, #0
	adds r1, #0x3a
	strb r4, [r1]
	movs r1, #8
	strh r1, [r7, #4]
	strh r5, [r7, #6]
	adds r1, r7, #0
	adds r1, #0x3b
	mov r4, sb
	strb r4, [r1]
	ldr r1, _08043F80
	str r1, [r0]
	ldr r1, _08043F84
	str r1, [r0, #4]
	ldr r1, _08043F88
	str r1, [r0, #8]
	ldr r1, _08043F8C
	str r1, [r0, #0xc]
	ldr r1, _08043F90
	str r1, [r0, #0x10]
	ldr r1, _08043F94
	str r1, [r0, #0x14]
	b _08044614
	.align 2, 0
_08043F78: .4byte gMenu
_08043F7C: .4byte 0x080B01A8
_08043F80: .4byte 0x08064DAC
_08043F84: .4byte 0x08064DB8
_08043F88: .4byte 0x08064DC4
_08043F8C: .4byte 0x08064DD0
_08043F90: .4byte 0x08064DDC
_08043F94: .4byte 0x08064DE8
_08043F98:
	ldr r7, _08044028
	movs r5, #0
	mov sb, r5
	movs r5, #0
	movs r2, #0x10
	strh r2, [r7]
	movs r1, #0x48
	strh r1, [r7, #2]
	strh r2, [r7, #8]
	strh r1, [r7, #0xa]
	movs r4, #1
	strb r4, [r7, #0x18]
	mov r0, sb
	strb r0, [r7, #0x1a]
	strb r4, [r7, #0x12]
	movs r6, #0xf0
	strh r6, [r7, #0x10]
	movs r0, #6
	mov r8, r0
	mov r0, r8
	strb r0, [r7, #0x19]
	strh r5, [r7, #0x14]
	movs r0, #0xf
	strh r0, [r7, #0x16]
	ldr r3, _0804402C
	str r3, [r7, #0xc]
	strh r2, [r7, #0x1c]
	strh r1, [r7, #0x1e]
	adds r0, r7, #0
	adds r0, #0x2c
	strb r4, [r0]
	adds r0, #2
	mov r1, sb
	strb r1, [r0]
	subs r0, #8
	strb r4, [r0]
	strh r6, [r7, #0x24]
	adds r0, #7
	mov r2, r8
	strb r2, [r0]
	strh r5, [r7, #0x28]
	movs r0, #0xa
	strh r0, [r7, #0x2a]
	str r3, [r7, #0x20]
	movs r0, #4
	str r0, [r7, #0x30]
	movs r0, #0x10
	movs r1, #0xf
	movs r2, #4
	bl Alloc
	str r0, [r7, #0x34]
	strh r5, [r7, #0x38]
	adds r1, r7, #0
	adds r1, #0x3a
	strb r4, [r1]
	movs r1, #8
	strh r1, [r7, #4]
	strh r5, [r7, #6]
	adds r1, r7, #0
	adds r1, #0x3b
	mov r4, sb
	strb r4, [r1]
	ldr r1, _08044030
	str r1, [r0]
	ldr r1, _08044034
	str r1, [r0, #4]
	ldr r1, _08044038
	str r1, [r0, #8]
	ldr r1, _0804403C
	str r1, [r0, #0xc]
	b _08044614
	.align 2, 0
_08044028: .4byte gMenu
_0804402C: .4byte 0x080B01A8
_08044030: .4byte 0x08064DF4
_08044034: .4byte 0x08064DFC
_08044038: .4byte 0x08064E04
_0804403C: .4byte 0x08064E10
_08044040:
	ldr r7, _080440C8
	movs r5, #0
	mov sb, r5
	movs r5, #0
	movs r2, #0x10
	strh r2, [r7]
	movs r1, #0x48
	strh r1, [r7, #2]
	strh r2, [r7, #8]
	strh r1, [r7, #0xa]
	movs r4, #1
	strb r4, [r7, #0x18]
	mov r0, sb
	strb r0, [r7, #0x1a]
	strb r4, [r7, #0x12]
	movs r6, #0xf0
	strh r6, [r7, #0x10]
	movs r0, #6
	mov r8, r0
	mov r0, r8
	strb r0, [r7, #0x19]
	strh r5, [r7, #0x14]
	movs r0, #0xf
	strh r0, [r7, #0x16]
	ldr r3, _080440CC
	str r3, [r7, #0xc]
	strh r2, [r7, #0x1c]
	strh r1, [r7, #0x1e]
	adds r0, r7, #0
	adds r0, #0x2c
	strb r4, [r0]
	adds r0, #2
	mov r1, sb
	strb r1, [r0]
	subs r0, #8
	strb r4, [r0]
	strh r6, [r7, #0x24]
	adds r0, #7
	mov r2, r8
	strb r2, [r0]
	strh r5, [r7, #0x28]
	movs r0, #0xa
	strh r0, [r7, #0x2a]
	str r3, [r7, #0x20]
	movs r0, #2
	str r0, [r7, #0x30]
	movs r6, #8
	movs r0, #8
	movs r1, #0xf
	movs r2, #4
	bl Alloc
	str r0, [r7, #0x34]
	strh r5, [r7, #0x38]
	adds r1, r7, #0
	adds r1, #0x3a
	strb r4, [r1]
	strh r6, [r7, #4]
	strh r5, [r7, #6]
	adds r1, #1
	mov r4, sb
	strb r4, [r1]
	ldr r1, _080440D0
	str r1, [r0]
	ldr r1, _080440D4
	str r1, [r0, #4]
	b _08044614
	.align 2, 0
_080440C8: .4byte gMenu
_080440CC: .4byte 0x080B01A8
_080440D0: .4byte 0x08064E1C
_080440D4: .4byte 0x08064E24
_080440D8:
	ldr r7, _08044170
	movs r5, #0
	mov sb, r5
	movs r5, #0
	movs r2, #0x10
	strh r2, [r7]
	movs r1, #0x48
	strh r1, [r7, #2]
	strh r2, [r7, #8]
	strh r1, [r7, #0xa]
	movs r4, #1
	strb r4, [r7, #0x18]
	mov r0, sb
	strb r0, [r7, #0x1a]
	strb r4, [r7, #0x12]
	movs r0, #0xf0
	mov r8, r0
	mov r0, r8
	strh r0, [r7, #0x10]
	movs r3, #6
	strb r3, [r7, #0x19]
	strh r5, [r7, #0x14]
	movs r0, #0xf
	strh r0, [r7, #0x16]
	ldr r6, _08044174
	str r6, [r7, #0xc]
	strh r2, [r7, #0x1c]
	strh r1, [r7, #0x1e]
	adds r0, r7, #0
	adds r0, #0x2c
	strb r4, [r0]
	adds r0, #2
	mov r1, sb
	strb r1, [r0]
	subs r0, #8
	strb r4, [r0]
	mov r2, r8
	strh r2, [r7, #0x24]
	adds r0, #7
	strb r3, [r0]
	strh r5, [r7, #0x28]
	movs r0, #0xa
	strh r0, [r7, #0x2a]
	str r6, [r7, #0x20]
	str r3, [r7, #0x30]
	movs r0, #0x18
	movs r1, #0xf
	movs r2, #4
	bl Alloc
	str r0, [r7, #0x34]
	strh r5, [r7, #0x38]
	adds r1, r7, #0
	adds r1, #0x3a
	strb r4, [r1]
	movs r1, #8
	strh r1, [r7, #4]
	strh r5, [r7, #6]
	adds r1, r7, #0
	adds r1, #0x3b
	mov r4, sb
	strb r4, [r1]
	ldr r1, _08044178
	str r1, [r0]
	ldr r1, _0804417C
	str r1, [r0, #4]
	ldr r1, _08044180
	str r1, [r0, #8]
	ldr r1, _08044184
	str r1, [r0, #0xc]
	ldr r1, _08044188
	str r1, [r0, #0x10]
	ldr r1, _0804418C
	str r1, [r0, #0x14]
	b _08044614
	.align 2, 0
_08044170: .4byte gMenu
_08044174: .4byte 0x080B01A8
_08044178: .4byte 0x08064E64
_0804417C: .4byte 0x08064E6C
_08044180: .4byte 0x08064E74
_08044184: .4byte 0x08064E7C
_08044188: .4byte 0x08064E84
_0804418C: .4byte 0x08064E90
_08044190:
	ldr r7, _0804422C
	movs r5, #0
	mov sb, r5
	movs r5, #0
	movs r2, #0x10
	strh r2, [r7]
	movs r1, #0x48
	strh r1, [r7, #2]
	strh r2, [r7, #8]
	strh r1, [r7, #0xa]
	movs r4, #1
	strb r4, [r7, #0x18]
	mov r0, sb
	strb r0, [r7, #0x1a]
	strb r4, [r7, #0x12]
	movs r6, #0xf0
	strh r6, [r7, #0x10]
	movs r0, #6
	mov r8, r0
	mov r0, r8
	strb r0, [r7, #0x19]
	strh r5, [r7, #0x14]
	movs r0, #0xf
	strh r0, [r7, #0x16]
	ldr r3, _08044230
	str r3, [r7, #0xc]
	strh r2, [r7, #0x1c]
	strh r1, [r7, #0x1e]
	adds r0, r7, #0
	adds r0, #0x2c
	strb r4, [r0]
	adds r0, #2
	mov r1, sb
	strb r1, [r0]
	subs r0, #8
	strb r4, [r0]
	strh r6, [r7, #0x24]
	adds r0, #7
	mov r2, r8
	strb r2, [r0]
	strh r5, [r7, #0x28]
	movs r0, #0xa
	strh r0, [r7, #0x2a]
	str r3, [r7, #0x20]
	movs r0, #7
	str r0, [r7, #0x30]
	movs r0, #0x1c
	movs r1, #0xf
	movs r2, #4
	bl Alloc
	str r0, [r7, #0x34]
	strh r5, [r7, #0x38]
	adds r1, r7, #0
	adds r1, #0x3a
	strb r4, [r1]
	movs r1, #8
	strh r1, [r7, #4]
	strh r5, [r7, #6]
	adds r1, r7, #0
	adds r1, #0x3b
	mov r4, sb
	strb r4, [r1]
	ldr r1, _08044234
	str r1, [r0]
	ldr r1, _08044238
	str r1, [r0, #4]
	ldr r1, _0804423C
	str r1, [r0, #8]
	ldr r1, _08044240
	str r1, [r0, #0xc]
	ldr r1, _08044244
	str r1, [r0, #0x10]
	ldr r1, _08044248
	str r1, [r0, #0x14]
	ldr r1, _0804424C
	str r1, [r0, #0x18]
	b _08044614
	.align 2, 0
_0804422C: .4byte gMenu
_08044230: .4byte 0x080B01A8
_08044234: .4byte 0x08064ADC
_08044238: .4byte 0x08064AE8
_0804423C: .4byte 0x08064AF8
_08044240: .4byte 0x08064B08
_08044244: .4byte 0x08064B14
_08044248: .4byte 0x08064B20
_0804424C: .4byte 0x08064B2C
_08044250:
	ldr r7, _080442EC
	movs r5, #0
	mov sb, r5
	movs r5, #0
	movs r2, #0x10
	strh r2, [r7]
	movs r1, #0x48
	strh r1, [r7, #2]
	strh r2, [r7, #8]
	strh r1, [r7, #0xa]
	movs r4, #1
	strb r4, [r7, #0x18]
	mov r0, sb
	strb r0, [r7, #0x1a]
	strb r4, [r7, #0x12]
	movs r6, #0xf0
	strh r6, [r7, #0x10]
	movs r0, #6
	mov r8, r0
	mov r0, r8
	strb r0, [r7, #0x19]
	strh r5, [r7, #0x14]
	movs r0, #0xf
	strh r0, [r7, #0x16]
	ldr r3, _080442F0
	str r3, [r7, #0xc]
	strh r2, [r7, #0x1c]
	strh r1, [r7, #0x1e]
	adds r0, r7, #0
	adds r0, #0x2c
	strb r4, [r0]
	adds r0, #2
	mov r1, sb
	strb r1, [r0]
	subs r0, #8
	strb r4, [r0]
	strh r6, [r7, #0x24]
	adds r0, #7
	mov r2, r8
	strb r2, [r0]
	strh r5, [r7, #0x28]
	movs r0, #0xa
	strh r0, [r7, #0x2a]
	str r3, [r7, #0x20]
	movs r0, #7
	str r0, [r7, #0x30]
	movs r0, #0x1c
	movs r1, #0xf
	movs r2, #4
	bl Alloc
	str r0, [r7, #0x34]
	strh r5, [r7, #0x38]
	adds r1, r7, #0
	adds r1, #0x3a
	strb r4, [r1]
	movs r1, #8
	strh r1, [r7, #4]
	strh r5, [r7, #6]
	adds r1, r7, #0
	adds r1, #0x3b
	mov r4, sb
	strb r4, [r1]
	ldr r1, _080442F4
	str r1, [r0]
	ldr r1, _080442F8
	str r1, [r0, #4]
	ldr r1, _080442FC
	str r1, [r0, #8]
	ldr r1, _08044300
	str r1, [r0, #0xc]
	ldr r1, _08044304
	str r1, [r0, #0x10]
	ldr r1, _08044308
	str r1, [r0, #0x14]
	ldr r1, _0804430C
	str r1, [r0, #0x18]
	b _08044614
	.align 2, 0
_080442EC: .4byte gMenu
_080442F0: .4byte 0x080B01A8
_080442F4: .4byte 0x08064B34
_080442F8: .4byte 0x08064B40
_080442FC: .4byte 0x08064B4C
_08044300: .4byte 0x08064B58
_08044304: .4byte 0x08064B64
_08044308: .4byte 0x08064B70
_0804430C: .4byte 0x08064B7C
_08044310:
	ldr r7, _080443AC
	movs r5, #0
	mov sb, r5
	movs r5, #0
	movs r2, #0x10
	strh r2, [r7]
	movs r1, #0x48
	strh r1, [r7, #2]
	strh r2, [r7, #8]
	strh r1, [r7, #0xa]
	movs r4, #1
	strb r4, [r7, #0x18]
	mov r0, sb
	strb r0, [r7, #0x1a]
	strb r4, [r7, #0x12]
	movs r6, #0xf0
	strh r6, [r7, #0x10]
	movs r0, #6
	mov r8, r0
	mov r0, r8
	strb r0, [r7, #0x19]
	strh r5, [r7, #0x14]
	movs r0, #0xf
	strh r0, [r7, #0x16]
	ldr r3, _080443B0
	str r3, [r7, #0xc]
	strh r2, [r7, #0x1c]
	strh r1, [r7, #0x1e]
	adds r0, r7, #0
	adds r0, #0x2c
	strb r4, [r0]
	adds r0, #2
	mov r1, sb
	strb r1, [r0]
	subs r0, #8
	strb r4, [r0]
	strh r6, [r7, #0x24]
	adds r0, #7
	mov r2, r8
	strb r2, [r0]
	strh r5, [r7, #0x28]
	movs r0, #0xa
	strh r0, [r7, #0x2a]
	str r3, [r7, #0x20]
	movs r0, #7
	str r0, [r7, #0x30]
	movs r0, #0x1c
	movs r1, #0xf
	movs r2, #4
	bl Alloc
	str r0, [r7, #0x34]
	strh r5, [r7, #0x38]
	adds r1, r7, #0
	adds r1, #0x3a
	strb r4, [r1]
	movs r1, #8
	strh r1, [r7, #4]
	strh r5, [r7, #6]
	adds r1, r7, #0
	adds r1, #0x3b
	mov r4, sb
	strb r4, [r1]
	ldr r1, _080443B4
	str r1, [r0]
	ldr r1, _080443B8
	str r1, [r0, #4]
	ldr r1, _080443BC
	str r1, [r0, #8]
	ldr r1, _080443C0
	str r1, [r0, #0xc]
	ldr r1, _080443C4
	str r1, [r0, #0x10]
	ldr r1, _080443C8
	str r1, [r0, #0x14]
	ldr r1, _080443CC
	str r1, [r0, #0x18]
	b _08044614
	.align 2, 0
_080443AC: .4byte gMenu
_080443B0: .4byte 0x080B01A8
_080443B4: .4byte 0x08064B84
_080443B8: .4byte 0x08064B8C
_080443BC: .4byte 0x08064B98
_080443C0: .4byte 0x08064BA4
_080443C4: .4byte 0x08064BB0
_080443C8: .4byte 0x08064BBC
_080443CC: .4byte 0x08064BC8
_080443D0:
	ldr r7, _0804446C
	movs r5, #0
	mov sb, r5
	movs r5, #0
	movs r2, #0x10
	strh r2, [r7]
	movs r1, #0x48
	strh r1, [r7, #2]
	strh r2, [r7, #8]
	strh r1, [r7, #0xa]
	movs r4, #1
	strb r4, [r7, #0x18]
	mov r0, sb
	strb r0, [r7, #0x1a]
	strb r4, [r7, #0x12]
	movs r6, #0xf0
	strh r6, [r7, #0x10]
	movs r0, #6
	mov r8, r0
	mov r0, r8
	strb r0, [r7, #0x19]
	strh r5, [r7, #0x14]
	movs r0, #0xf
	strh r0, [r7, #0x16]
	ldr r3, _08044470
	str r3, [r7, #0xc]
	strh r2, [r7, #0x1c]
	strh r1, [r7, #0x1e]
	adds r0, r7, #0
	adds r0, #0x2c
	strb r4, [r0]
	adds r0, #2
	mov r1, sb
	strb r1, [r0]
	subs r0, #8
	strb r4, [r0]
	strh r6, [r7, #0x24]
	adds r0, #7
	mov r2, r8
	strb r2, [r0]
	strh r5, [r7, #0x28]
	movs r0, #0xa
	strh r0, [r7, #0x2a]
	str r3, [r7, #0x20]
	movs r0, #7
	str r0, [r7, #0x30]
	movs r0, #0x1c
	movs r1, #0xf
	movs r2, #4
	bl Alloc
	str r0, [r7, #0x34]
	strh r5, [r7, #0x38]
	adds r1, r7, #0
	adds r1, #0x3a
	strb r4, [r1]
	movs r1, #8
	strh r1, [r7, #4]
	strh r5, [r7, #6]
	adds r1, r7, #0
	adds r1, #0x3b
	mov r4, sb
	strb r4, [r1]
	ldr r1, _08044474
	str r1, [r0]
	ldr r1, _08044478
	str r1, [r0, #4]
	ldr r1, _0804447C
	str r1, [r0, #8]
	ldr r1, _08044480
	str r1, [r0, #0xc]
	ldr r1, _08044484
	str r1, [r0, #0x10]
	ldr r1, _08044488
	str r1, [r0, #0x14]
	ldr r1, _0804448C
	str r1, [r0, #0x18]
	b _08044614
	.align 2, 0
_0804446C: .4byte gMenu
_08044470: .4byte 0x080B01A8
_08044474: .4byte 0x08064BD0
_08044478: .4byte 0x08064BDC
_0804447C: .4byte 0x08064BE8
_08044480: .4byte 0x08064BF4
_08044484: .4byte 0x08064C00
_08044488: .4byte 0x08064C0C
_0804448C: .4byte 0x08064C18
_08044490:
	ldr r7, _0804452C
	movs r5, #0
	mov sb, r5
	movs r5, #0
	movs r2, #0x10
	strh r2, [r7]
	movs r1, #0x48
	strh r1, [r7, #2]
	strh r2, [r7, #8]
	strh r1, [r7, #0xa]
	movs r4, #1
	strb r4, [r7, #0x18]
	mov r0, sb
	strb r0, [r7, #0x1a]
	strb r4, [r7, #0x12]
	movs r6, #0xf0
	strh r6, [r7, #0x10]
	movs r0, #6
	mov r8, r0
	mov r0, r8
	strb r0, [r7, #0x19]
	strh r5, [r7, #0x14]
	movs r0, #0xf
	strh r0, [r7, #0x16]
	ldr r3, _08044530
	str r3, [r7, #0xc]
	strh r2, [r7, #0x1c]
	strh r1, [r7, #0x1e]
	adds r0, r7, #0
	adds r0, #0x2c
	strb r4, [r0]
	adds r0, #2
	mov r1, sb
	strb r1, [r0]
	subs r0, #8
	strb r4, [r0]
	strh r6, [r7, #0x24]
	adds r0, #7
	mov r2, r8
	strb r2, [r0]
	strh r5, [r7, #0x28]
	movs r0, #0xa
	strh r0, [r7, #0x2a]
	str r3, [r7, #0x20]
	movs r0, #7
	str r0, [r7, #0x30]
	movs r0, #0x1c
	movs r1, #0xf
	movs r2, #4
	bl Alloc
	str r0, [r7, #0x34]
	strh r5, [r7, #0x38]
	adds r1, r7, #0
	adds r1, #0x3a
	strb r4, [r1]
	movs r1, #8
	strh r1, [r7, #4]
	strh r5, [r7, #6]
	adds r1, r7, #0
	adds r1, #0x3b
	mov r4, sb
	strb r4, [r1]
	ldr r1, _08044534
	str r1, [r0]
	ldr r1, _08044538
	str r1, [r0, #4]
	ldr r1, _0804453C
	str r1, [r0, #8]
	ldr r1, _08044540
	str r1, [r0, #0xc]
	ldr r1, _08044544
	str r1, [r0, #0x10]
	ldr r1, _08044548
	str r1, [r0, #0x14]
	ldr r1, _0804454C
	str r1, [r0, #0x18]
	b _08044614
	.align 2, 0
_0804452C: .4byte gMenu
_08044530: .4byte 0x080B01A8
_08044534: .4byte 0x08064C20
_08044538: .4byte 0x08064C2C
_0804453C: .4byte 0x08064C38
_08044540: .4byte 0x08064C44
_08044544: .4byte 0x08064C50
_08044548: .4byte 0x08064C5C
_0804454C: .4byte 0x08064C68
_08044550:
	ldr r7, _080445EC
	movs r5, #0
	mov sb, r5
	movs r5, #0
	movs r2, #0x10
	strh r2, [r7]
	movs r1, #0x48
	strh r1, [r7, #2]
	strh r2, [r7, #8]
	strh r1, [r7, #0xa]
	movs r4, #1
	strb r4, [r7, #0x18]
	mov r0, sb
	strb r0, [r7, #0x1a]
	strb r4, [r7, #0x12]
	movs r6, #0xf0
	strh r6, [r7, #0x10]
	movs r0, #6
	mov r8, r0
	mov r0, r8
	strb r0, [r7, #0x19]
	strh r5, [r7, #0x14]
	movs r0, #0xf
	strh r0, [r7, #0x16]
	ldr r3, _080445F0
	str r3, [r7, #0xc]
	strh r2, [r7, #0x1c]
	strh r1, [r7, #0x1e]
	adds r0, r7, #0
	adds r0, #0x2c
	strb r4, [r0]
	adds r0, #2
	mov r1, sb
	strb r1, [r0]
	subs r0, #8
	strb r4, [r0]
	strh r6, [r7, #0x24]
	adds r0, #7
	mov r2, r8
	strb r2, [r0]
	strh r5, [r7, #0x28]
	movs r0, #0xa
	strh r0, [r7, #0x2a]
	str r3, [r7, #0x20]
	movs r0, #7
	str r0, [r7, #0x30]
	movs r0, #0x1c
	movs r1, #0xf
	movs r2, #4
	bl Alloc
	str r0, [r7, #0x34]
	strh r5, [r7, #0x38]
	adds r1, r7, #0
	adds r1, #0x3a
	strb r4, [r1]
	movs r1, #8
	strh r1, [r7, #4]
	strh r5, [r7, #6]
	adds r1, r7, #0
	adds r1, #0x3b
	mov r4, sb
	strb r4, [r1]
	ldr r1, _080445F4
	str r1, [r0]
	ldr r1, _080445F8
	str r1, [r0, #4]
	ldr r1, _080445FC
	str r1, [r0, #8]
	ldr r1, _08044600
	str r1, [r0, #0xc]
	ldr r1, _08044604
	str r1, [r0, #0x10]
	ldr r1, _08044608
	str r1, [r0, #0x14]
	ldr r1, _0804460C
	str r1, [r0, #0x18]
	b _08044614
	.align 2, 0
_080445EC: .4byte gMenu
_080445F0: .4byte 0x080B01A8
_080445F4: .4byte 0x08064C70
_080445F8: .4byte 0x08064C78
_080445FC: .4byte 0x08064C84
_08044600: .4byte 0x08064C90
_08044604: .4byte 0x08064C9C
_08044608: .4byte 0x08064CA8
_0804460C: .4byte 0x08064CB4
_08044610:
	.2byte 0xEE00, 0xEE00
_08044614:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

    .thumb
    .global AdvanceMenuEntryDown
AdvanceMenuEntryDown: @ 0x08044624
	push {r4, lr}
	ldr r4, _0804465C
	adds r0, r4, #0
	adds r0, #0x3b
	ldrb r0, [r0]
	cmp r0, #0
	beq _08044644
	ldrh r0, [r4, #0x38]
	lsls r1, r0, #3
	subs r1, r1, r0
	lsls r1, r1, #2
	ldr r0, [r4, #0x3c]
	adds r0, r0, r1
	movs r1, #0
	bl sprite_lock_anim_on_frame
_08044644:
	ldrh r1, [r4, #0x38]
	ldr r0, [r4, #0x30]
	subs r0, #1
	cmp r1, r0
	bne _08044660
	adds r0, r4, #0
	adds r0, #0x3a
	ldrb r0, [r0]
	cmp r0, #0
	beq _08044664
	movs r0, #0
	b _08044662
	.align 2, 0
_0804465C: .4byte gMenu
_08044660:
	adds r0, r1, #1
_08044662:
	strh r0, [r4, #0x38]
_08044664:
	ldr r2, _08044688
	adds r0, r2, #0
	adds r0, #0x3b
	ldrb r0, [r0]
	cmp r0, #0
	beq _08044680
	ldrh r0, [r2, #0x38]
	lsls r1, r0, #3
	subs r1, r1, r0
	lsls r1, r1, #2
	ldr r0, [r2, #0x3c]
	adds r0, r0, r1
	bl sprite_unlock_anim
_08044680:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08044688: .4byte gMenu

    .thumb
    .global AdvanceMenuEntryUp
AdvanceMenuEntryUp: @ 0x0804468C
	push {r4, lr}
	ldr r4, _080446E4
	adds r0, r4, #0
	adds r0, #0x3b
	ldrb r0, [r0]
	cmp r0, #0
	beq _080446AC
	ldrh r0, [r4, #0x38]
	lsls r1, r0, #3
	subs r1, r1, r0
	lsls r1, r1, #2
	ldr r0, [r4, #0x3c]
	adds r0, r0, r1
	movs r1, #0
	bl sprite_lock_anim_on_frame
_080446AC:
	ldrh r0, [r4, #0x38]
	cmp r0, #0
	bne _080446BE
	adds r0, r4, #0
	adds r0, #0x3a
	ldrb r0, [r0]
	cmp r0, #0
	beq _080446C2
	ldr r0, [r4, #0x30]
_080446BE:
	subs r0, #1
	strh r0, [r4, #0x38]
_080446C2:
	ldr r2, _080446E4
	adds r0, r2, #0
	adds r0, #0x3b
	ldrb r0, [r0]
	cmp r0, #0
	beq _080446DE
	ldrh r0, [r2, #0x38]
	lsls r1, r0, #3
	subs r1, r1, r0
	lsls r1, r1, #2
	ldr r0, [r2, #0x3c]
	adds r0, r0, r1
	bl sprite_unlock_anim
_080446DE:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080446E4: .4byte gMenu

    .thumb
    .global FlushMenuToTextBuffer
FlushMenuToTextBuffer: @ 0x080446E8
	push {r4, r5, r6, lr}
	movs r4, #0
	ldr r2, _08044724
	ldr r0, [r2, #0x30]
	cmp r4, r0
	bge _08044756
	movs r6, #0
	movs r5, #0
_080446F8:
	ldrh r0, [r2, #0x38]
	cmp r0, r4
	bne _08044728
	ldrh r0, [r2, #6]
	ldrh r1, [r2]
	adds r0, r0, r1
	strh r0, [r2, #0x1c]
	ldrh r0, [r2, #4]
	muls r0, r4, r0
	ldrh r1, [r2, #2]
	adds r0, r0, r1
	strh r0, [r2, #0x1e]
	strh r6, [r2, #0x28]
	ldr r0, [r2, #0x34]
	adds r0, r5, r0
	ldr r1, [r0]
	adds r0, r2, #0
	adds r0, #0x1c
	bl AddStringToBuffer
	b _0804474A
	.align 2, 0
_08044724: .4byte gMenu
_08044728:
	ldrh r0, [r2, #6]
	ldrh r1, [r2]
	adds r0, r0, r1
	strh r0, [r2, #8]
	ldrh r0, [r2, #4]
	muls r0, r4, r0
	ldrh r1, [r2, #2]
	adds r0, r0, r1
	strh r0, [r2, #0xa]
	strh r6, [r2, #0x14]
	ldr r0, [r2, #0x34]
	adds r0, r5, r0
	ldr r1, [r0]
	adds r0, r2, #0
	adds r0, #8
	bl AddStringToBuffer
_0804474A:
	adds r5, #4
	adds r4, #1
	ldr r2, _0804475C
	ldr r0, [r2, #0x30]
	cmp r4, r0
	blt _080446F8
_08044756:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0804475C: .4byte gMenu

    .thumb
    .global RenderMenuSprites
RenderMenuSprites: @ 0x08044760
	push {r4, r5, r6, lr}
	ldr r1, _08044794
	adds r0, r1, #0
	adds r0, #0x3b
	ldrb r0, [r0]
	cmp r0, #0
	beq _0804478C
	movs r4, #0
	ldr r0, [r1, #0x30]
	cmp r4, r0
	bge _0804478C
	adds r6, r1, #0
	movs r5, #0
_0804477A:
	ldr r0, [r6, #0x3c]
	adds r0, r0, r5
	bl sprite_render
	adds r5, #0x1c
	adds r4, #1
	ldr r0, [r6, #0x30]
	cmp r4, r0
	blt _0804477A
_0804478C:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08044794: .4byte gMenu

    .thumb
    .global GetCurrentMenuEntry
GetCurrentMenuEntry: @ 0x08044798
	ldr r0, _080447A0
	ldrh r0, [r0, #0x38]
	bx lr
	.align 2, 0
_080447A0: .4byte gMenu

    .thumb
    .global SetMenuEntry
SetMenuEntry: @ 0x080447A4
	push {lr}
	adds r1, r0, #0
	ldr r2, _080447C0
	cmp r1, #0
	blt _080447B4
	ldr r0, [r2, #0x30]
	cmp r1, r0
	blt _080447B8
_080447B4:
	.2byte 0xEE00, 0xEE00
_080447B8:
	strh r1, [r2, #0x38]
	pop {r0}
	bx r0
	.align 2, 0
_080447C0: .4byte gMenu
