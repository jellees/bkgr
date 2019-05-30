
    .syntax unified

    .text

	.thumb
    .global sub_800FA58
sub_800FA58: @ 0x0800FA58
	push {lr}
	ldr r2, _0800FA7C
	ldr r1, _0800FA80
	ldrb r0, [r1, #0xe]
	strb r0, [r2, #0xe]
	ldrb r0, [r1, #0xf]
	strb r0, [r2, #0xf]
	ldrb r0, [r1, #0x11]
	strb r0, [r2, #0x11]
	ldrb r0, [r1, #0x10]
	strb r0, [r2, #0x10]
	ldrb r0, [r1, #0x12]
	strb r0, [r2, #0x12]
	bl sub_803FE78
	pop {r0}
	bx r0
	.align 2, 0
_0800FA7C: .4byte gGameStatus
_0800FA80: .4byte 0x080CC8C4

    .thumb
    .global sub_800FA84
sub_800FA84: @ 0x0800FA84
	push {r4, lr}
	ldr r0, _0800FBC4
	movs r2, #0
	str r2, [r0]
	ldr r0, _0800FBC8
	str r2, [r0]
	ldr r0, _0800FBCC
	movs r3, #1
	str r3, [r0]
	ldr r0, _0800FBD0
	str r3, [r0]
	ldr r0, _0800FBD4
	strb r2, [r0]
	ldr r0, _0800FBD8
	str r2, [r0]
	ldr r0, _0800FBDC
	str r2, [r0]
	ldr r0, _0800FBE0
	str r2, [r0]
	ldr r0, _0800FBE4
	str r2, [r0]
	ldr r0, _0800FBE8
	str r2, [r0]
	ldr r0, _0800FBEC
	str r2, [r0]
	ldr r0, _0800FBF0
	str r2, [r0]
	ldr r0, _0800FBF4
	str r2, [r0]
	ldr r0, _0800FBF8
	str r2, [r0]
	ldr r0, _0800FBFC
	str r2, [r0]
	ldr r0, _0800FC00
	str r2, [r0]
	ldr r0, _0800FC04
	str r2, [r0]
	ldr r0, _0800FC08
	str r2, [r0]
	ldr r0, _0800FC0C
	str r2, [r0]
	ldr r0, _0800FC10
	str r2, [r0]
	ldr r0, _0800FC14
	str r2, [r0]
	ldr r0, _0800FC18
	str r2, [r0]
	ldr r0, _0800FC1C
	str r2, [r0]
	ldr r0, _0800FC20
	str r2, [r0]
	ldr r0, _0800FC24
	str r2, [r0]
	ldr r0, _0800FC28
	str r2, [r0]
	ldr r0, _0800FC2C
	str r2, [r0]
	ldr r0, _0800FC30
	str r2, [r0]
	ldr r0, _0800FC34
	str r2, [r0]
	ldr r0, _0800FC38
	str r2, [r0]
	ldr r0, _0800FC3C
	str r2, [r0]
	ldr r0, _0800FC40
	str r2, [r0]
	ldr r0, _0800FC44
	str r2, [r0]
	ldr r0, _0800FC48
	str r2, [r0]
	ldr r0, _0800FC4C
	str r2, [r0]
	ldr r0, _0800FC50
	str r2, [r0]
	ldr r0, _0800FC54
	str r2, [r0]
	ldr r0, _0800FC58
	str r2, [r0]
	ldr r0, _0800FC5C
	str r2, [r0]
	ldr r0, _0800FC60
	str r2, [r0]
	ldr r0, _0800FC64
	str r2, [r0]
	ldr r0, _0800FC68
	str r3, [r0]
	ldr r0, _0800FC6C
	str r3, [r0]
	ldr r0, _0800FC70
	str r3, [r0]
	ldr r0, _0800FC74
	str r3, [r0]
	ldr r0, _0800FC78
	str r3, [r0]
	ldr r0, _0800FC7C
	str r3, [r0]
	ldr r0, _0800FC80
	str r3, [r0]
	ldr r0, _0800FC84
	str r3, [r0]
	ldr r0, _0800FC88
	str r3, [r0]
	ldr r0, _0800FC8C
	str r3, [r0]
	ldr r0, _0800FC90
	str r3, [r0]
	ldr r0, _0800FC94
	str r3, [r0]
	ldr r0, _0800FC98
	str r3, [r0]
	ldr r0, _0800FC9C
	str r3, [r0]
	ldr r0, _0800FCA0
	str r3, [r0]
	ldr r0, _0800FCA4
	str r3, [r0]
	ldr r0, _0800FCA8
	str r3, [r0]
	ldr r0, _0800FCAC
	str r3, [r0]
	ldr r0, _0800FCB0
	strb r3, [r0]
	ldr r1, _0800FCB4
	movs r0, #0x3c
	strb r0, [r1]
	ldr r0, _0800FCB8
	strb r2, [r0]
	ldr r1, _0800FCBC
	movs r4, #0
	movs r0, #0x52
	strh r0, [r1]
	movs r0, #0x98
	strh r0, [r1, #2]
	strb r3, [r1, #0x10]
	movs r0, #8
	strb r0, [r1, #0x11]
	strb r4, [r1, #0x12]
	strb r3, [r1, #0xa]
	movs r0, #0xf0
	strh r0, [r1, #8]
	movs r0, #0xa
	strh r0, [r1, #0xe]
	strh r2, [r1, #0xc]
	ldr r0, _0800FCC0
	str r0, [r1, #4]
	ldr r0, _0800FCC4
	strb r3, [r0]
	ldr r0, _0800FCC8
	strb r4, [r0]
	ldr r0, _0800FCCC
	strb r4, [r0]
	ldr r0, _0800FCD0
	strb r4, [r0]
	ldr r0, _0800FCD4
	strb r4, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800FBC4: .4byte 0x02001394
_0800FBC8: .4byte 0x02001398
_0800FBCC: .4byte 0x0200138C
_0800FBD0: .4byte 0x02001390
_0800FBD4: .4byte 0x0200145B
_0800FBD8: .4byte 0x02001208
_0800FBDC: .4byte 0x0200120C
_0800FBE0: .4byte 0x02001210
_0800FBE4: .4byte 0x02001214
_0800FBE8: .4byte 0x02001218
_0800FBEC: .4byte 0x0200121C
_0800FBF0: .4byte 0x02001220
_0800FBF4: .4byte 0x02001224
_0800FBF8: .4byte 0x02001228
_0800FBFC: .4byte 0x0200122C
_0800FC00: .4byte 0x02001230
_0800FC04: .4byte 0x02001234
_0800FC08: .4byte 0x02001238
_0800FC0C: .4byte 0x0200123C
_0800FC10: .4byte 0x02001240
_0800FC14: .4byte 0x02001244
_0800FC18: .4byte 0x02001248
_0800FC1C: .4byte 0x0200124C
_0800FC20: .4byte 0x02001250
_0800FC24: .4byte 0x02001254
_0800FC28: .4byte 0x02001258
_0800FC2C: .4byte 0x0200125C
_0800FC30: .4byte 0x02001260
_0800FC34: .4byte 0x02001264
_0800FC38: .4byte 0x02001268
_0800FC3C: .4byte 0x0200126C
_0800FC40: .4byte 0x02001270
_0800FC44: .4byte 0x02001274
_0800FC48: .4byte 0x02001278
_0800FC4C: .4byte 0x0200127C
_0800FC50: .4byte 0x02001280
_0800FC54: .4byte 0x02001284
_0800FC58: .4byte 0x02001288
_0800FC5C: .4byte 0x0200128C
_0800FC60: .4byte 0x02001290
_0800FC64: .4byte 0x02001294
_0800FC68: .4byte 0x02001298
_0800FC6C: .4byte 0x0200129C
_0800FC70: .4byte 0x020012A0
_0800FC74: .4byte 0x020012A4
_0800FC78: .4byte 0x020012A8
_0800FC7C: .4byte 0x020012AC
_0800FC80: .4byte 0x020012B0
_0800FC84: .4byte 0x020012B4
_0800FC88: .4byte 0x020012B8
_0800FC8C: .4byte 0x020012BC
_0800FC90: .4byte 0x020012C0
_0800FC94: .4byte 0x020012C4
_0800FC98: .4byte 0x020012C8
_0800FC9C: .4byte 0x020012CC
_0800FCA0: .4byte 0x020012D0
_0800FCA4: .4byte 0x020012D4
_0800FCA8: .4byte 0x020012D8
_0800FCAC: .4byte 0x020012DC
_0800FCB0: .4byte 0x0200138A
_0800FCB4: .4byte 0x02001200
_0800FCB8: .4byte gMainFrameCounter
_0800FCBC: .4byte 0x0200139C
_0800FCC0: .4byte 0x080B01A8
_0800FCC4: .4byte 0x0200143C
_0800FCC8: .4byte 0x02001370
_0800FCCC: .4byte 0x0200143D
_0800FCD0: .4byte 0x02001388
_0800FCD4: .4byte 0x02001442

	.thumb
sub_800FCD8: @ 0x0800FCD8
	push {lr}
	ldr r0, _0800FCF0
	ldrb r1, [r0]
	adds r3, r0, #0
	cmp r1, #9
	bls _0800FCE6
	b _0800FF48
_0800FCE6:
	lsls r0, r1, #2
	ldr r1, _0800FCF4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0800FCF0: .4byte 0x0200145B
_0800FCF4: .4byte 0x0800FCF8
_0800FCF8: @ jump table
	.4byte _0800FD20 @ case 0
	.4byte _0800FD64 @ case 1
	.4byte _0800FD9C @ case 2
	.4byte _0800FDD4 @ case 3
	.4byte _0800FE0C @ case 4
	.4byte _0800FE44 @ case 5
	.4byte _0800FE7C @ case 6
	.4byte _0800FEB4 @ case 7
	.4byte _0800FEEC @ case 8
	.4byte _0800FF24 @ case 9
_0800FD20:
	ldr r1, _0800FD48
	movs r0, #5
	strb r0, [r1]
	ldr r0, _0800FD4C
	movs r2, #0
	str r2, [r0]
	ldr r0, _0800FD50
	str r2, [r0]
	ldr r0, _0800FD54
	movs r1, #1
	str r1, [r0]
	ldr r0, _0800FD58
	str r1, [r0]
	ldr r0, _0800FD5C
	strb r2, [r0]
	ldr r0, _0800FD60
	strb r2, [r0]
	ldrb r0, [r3]
	adds r0, #1
	b _0800FF46
	.align 2, 0
_0800FD48: .4byte 0x02001388
_0800FD4C: .4byte 0x02001394
_0800FD50: .4byte 0x02001398
_0800FD54: .4byte 0x0200138C
_0800FD58: .4byte 0x02001390
_0800FD5C: .4byte 0x02001389
_0800FD60: .4byte 0x0200138A
_0800FD64:
	ldr r1, _0800FD8C
	movs r0, #9
	strb r0, [r1]
	ldr r1, _0800FD90
	movs r0, #0
	strb r0, [r1]
	ldr r1, _0800FD94
	movs r0, #0x80
	strh r0, [r1]
	adds r1, #4
	movs r0, #0x84
	strh r0, [r1]
	ldr r0, _0800FD98
	movs r1, #0
	strh r1, [r0]
	adds r0, #4
	strh r1, [r0]
	ldrb r0, [r3]
	adds r0, #1
	b _0800FF46
	.align 2, 0
_0800FD8C: .4byte 0x02001388
_0800FD90: .4byte 0x0200138A
_0800FD94: .4byte 0x0400010A
_0800FD98: .4byte 0x04000108
_0800FD9C:
	ldr r1, _0800FDC4
	movs r0, #0xc
	strb r0, [r1]
	ldr r1, _0800FDC8
	movs r0, #0
	strb r0, [r1]
	ldr r1, _0800FDCC
	movs r0, #0x80
	strh r0, [r1]
	adds r1, #4
	movs r0, #0x84
	strh r0, [r1]
	ldr r0, _0800FDD0
	movs r1, #0
	strh r1, [r0]
	adds r0, #4
	strh r1, [r0]
	ldrb r0, [r3]
	adds r0, #1
	b _0800FF46
	.align 2, 0
_0800FDC4: .4byte 0x02001388
_0800FDC8: .4byte 0x0200138A
_0800FDCC: .4byte 0x0400010A
_0800FDD0: .4byte 0x04000108
_0800FDD4:
	ldr r1, _0800FDFC
	movs r0, #0xd
	strb r0, [r1]
	ldr r1, _0800FE00
	movs r0, #0
	strb r0, [r1]
	ldr r1, _0800FE04
	movs r0, #0x80
	strh r0, [r1]
	adds r1, #4
	movs r0, #0x84
	strh r0, [r1]
	ldr r0, _0800FE08
	movs r1, #0
	strh r1, [r0]
	adds r0, #4
	strh r1, [r0]
	ldrb r0, [r3]
	adds r0, #1
	b _0800FF46
	.align 2, 0
_0800FDFC: .4byte 0x02001388
_0800FE00: .4byte 0x0200138A
_0800FE04: .4byte 0x0400010A
_0800FE08: .4byte 0x04000108
_0800FE0C:
	ldr r1, _0800FE34
	movs r0, #0xe
	strb r0, [r1]
	ldr r1, _0800FE38
	movs r0, #0
	strb r0, [r1]
	ldr r1, _0800FE3C
	movs r0, #0x80
	strh r0, [r1]
	adds r1, #4
	movs r0, #0x84
	strh r0, [r1]
	ldr r0, _0800FE40
	movs r1, #0
	strh r1, [r0]
	adds r0, #4
	strh r1, [r0]
	ldrb r0, [r3]
	adds r0, #1
	b _0800FF46
	.align 2, 0
_0800FE34: .4byte 0x02001388
_0800FE38: .4byte 0x0200138A
_0800FE3C: .4byte 0x0400010A
_0800FE40: .4byte 0x04000108
_0800FE44:
	ldr r1, _0800FE6C
	movs r0, #0xf
	strb r0, [r1]
	ldr r1, _0800FE70
	movs r0, #0
	strb r0, [r1]
	ldr r1, _0800FE74
	movs r0, #0x80
	strh r0, [r1]
	adds r1, #4
	movs r0, #0x84
	strh r0, [r1]
	ldr r0, _0800FE78
	movs r1, #0
	strh r1, [r0]
	adds r0, #4
	strh r1, [r0]
	ldrb r0, [r3]
	adds r0, #1
	b _0800FF46
	.align 2, 0
_0800FE6C: .4byte 0x02001388
_0800FE70: .4byte 0x0200138A
_0800FE74: .4byte 0x0400010A
_0800FE78: .4byte 0x04000108
_0800FE7C:
	ldr r1, _0800FEA4
	movs r0, #0x10
	strb r0, [r1]
	ldr r1, _0800FEA8
	movs r0, #0
	strb r0, [r1]
	ldr r1, _0800FEAC
	movs r0, #0x80
	strh r0, [r1]
	adds r1, #4
	movs r0, #0x84
	strh r0, [r1]
	ldr r0, _0800FEB0
	movs r1, #0
	strh r1, [r0]
	adds r0, #4
	strh r1, [r0]
	ldrb r0, [r3]
	adds r0, #1
	b _0800FF46
	.align 2, 0
_0800FEA4: .4byte 0x02001388
_0800FEA8: .4byte 0x0200138A
_0800FEAC: .4byte 0x0400010A
_0800FEB0: .4byte 0x04000108
_0800FEB4:
	ldr r1, _0800FEDC
	movs r0, #0x11
	strb r0, [r1]
	ldr r1, _0800FEE0
	movs r0, #0
	strb r0, [r1]
	ldr r1, _0800FEE4
	movs r0, #0x80
	strh r0, [r1]
	adds r1, #4
	movs r0, #0x84
	strh r0, [r1]
	ldr r0, _0800FEE8
	movs r1, #0
	strh r1, [r0]
	adds r0, #4
	strh r1, [r0]
	ldrb r0, [r3]
	adds r0, #1
	b _0800FF46
	.align 2, 0
_0800FEDC: .4byte 0x02001388
_0800FEE0: .4byte 0x0200138A
_0800FEE4: .4byte 0x0400010A
_0800FEE8: .4byte 0x04000108
_0800FEEC:
	ldr r1, _0800FF14
	movs r0, #0x12
	strb r0, [r1]
	ldr r1, _0800FF18
	movs r0, #0
	strb r0, [r1]
	ldr r1, _0800FF1C
	movs r0, #0x80
	strh r0, [r1]
	adds r1, #4
	movs r0, #0x84
	strh r0, [r1]
	ldr r0, _0800FF20
	movs r1, #0
	strh r1, [r0]
	adds r0, #4
	strh r1, [r0]
	ldrb r0, [r3]
	adds r0, #1
	b _0800FF46
	.align 2, 0
_0800FF14: .4byte 0x02001388
_0800FF18: .4byte 0x0200138A
_0800FF1C: .4byte 0x0400010A
_0800FF20: .4byte 0x04000108
_0800FF24:
	ldr r1, _0800FF4C
	movs r0, #0x13
	strb r0, [r1]
	ldr r1, _0800FF50
	movs r0, #0
	strb r0, [r1]
	ldr r1, _0800FF54
	movs r0, #0x80
	strh r0, [r1]
	adds r1, #4
	movs r0, #0x84
	strh r0, [r1]
	subs r1, #6
	movs r0, #0
	strh r0, [r1]
	adds r1, #4
	strh r0, [r1]
_0800FF46:
	strb r0, [r3]
_0800FF48:
	pop {r0}
	bx r0
	.align 2, 0
_0800FF4C: .4byte 0x02001388
_0800FF50: .4byte 0x0200138A
_0800FF54: .4byte 0x0400010A

    .thumb
    .global Debug_ShowInfo
Debug_ShowInfo: @ 0x0800FF58
	push {r4, r5, r6, lr}
	ldr r0, _0800FF70
	ldrb r0, [r0]
	cmp r0, #0x13
	bls _0800FF66
	bl sub_08010722
_0800FF66:
	lsls r0, r0, #2
	ldr r1, _0800FF74
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0800FF70: .4byte 0x02001388
_0800FF74: .4byte 0x0800FF78
_0800FF78: @ jump table
	.4byte _08010732 @ case 0
	.4byte _0800FFC8 @ case 1
	.4byte _0800FFC8 @ case 2
	.4byte _0800FFC8 @ case 3
	.4byte _0800FFC8 @ case 4
	.4byte _08010084 @ case 5
	.4byte _08010140 @ case 6
	.4byte _08010140 @ case 7
	.4byte _08010140 @ case 8
	.4byte _08010200 @ case 9
	.4byte _08010200 @ case 10
	.4byte _08010200 @ case 11
	.4byte _08010298 @ case 12
	.4byte _08010328 @ case 13
	.4byte _080103B8 @ case 14
	.4byte _08010448 @ case 15
	.4byte _080104D8 @ case 16
	.4byte _08010568 @ case 17
	.4byte _080105F8 @ case 18
	.4byte _08010688 @ case 19
_0800FFC8:
	ldr r0, _08010024
	movs r1, #0x30
	strb r1, [r0]
	strb r1, [r0, #1]
	movs r2, #0x20
	strb r2, [r0, #2]
	strb r1, [r0, #3]
	strb r1, [r0, #4]
	strb r1, [r0, #5]
	strb r2, [r0, #6]
	strb r1, [r0, #7]
	strb r1, [r0, #8]
	strb r1, [r0, #9]
	movs r1, #0xff
	strb r1, [r0, #0xa]
	ldr r1, _08010028
	ldrb r0, [r1]
	cmp r0, #0
	bne _08010044
	movs r0, #8
	strb r0, [r1]
	ldr r0, _0801002C
	ldr r1, _08010030
	ldr r0, [r0]
	ldr r1, [r1]
	subs r0, r0, r1
	adds r0, #1
	bl sub_8010744
	ldr r0, _08010034
	ldr r1, _08010038
	ldr r0, [r0]
	ldr r1, [r1]
	subs r0, r0, r1
	adds r0, #1
	bl sub_80107E8
	ldr r0, _0801003C
	ldr r1, _08010040
	ldr r0, [r0]
	ldr r1, [r1]
	subs r0, r0, r1
	adds r0, #1
	bl sub_801088C
	b _08010048
	.align 2, 0
_08010024: .4byte 0x02001371
_08010028: .4byte 0x0200138A
_0801002C: .4byte 0x020012E4
_08010030: .4byte 0x020012E0
_08010034: .4byte 0x020012EC
_08010038: .4byte 0x020012E8
_0801003C: .4byte 0x020012F4
_08010040: .4byte 0x020012F0
_08010044:
	subs r0, #1
	strb r0, [r1]
_08010048:
	ldr r0, _08010070
	ldrb r0, [r0]
	ldr r4, _08010074
	adds r1, r4, #0
	bl IntegerToAsciiBw
	ldr r0, _08010078
	ldrb r0, [r0]
	adds r1, r4, #4
	bl IntegerToAsciiBw
	ldr r0, _0801007C
	ldrb r0, [r0]
	adds r4, #8
	adds r1, r4, #0
	bl IntegerToAsciiBw
	ldr r1, _08010080
	movs r0, #0x52
	b _08010720
	.align 2, 0
_08010070: .4byte gDebugFPS
_08010074: .4byte 0x02001372
_08010078: .4byte gDebugESN
_0801007C: .4byte gDebugESV
_08010080: .4byte 0x0200139C
_08010084:
	ldr r0, _080100E0
	movs r1, #0x30
	strb r1, [r0]
	strb r1, [r0, #1]
	movs r2, #0x20
	strb r2, [r0, #2]
	strb r1, [r0, #3]
	strb r1, [r0, #4]
	strb r1, [r0, #5]
	strb r2, [r0, #6]
	strb r1, [r0, #7]
	strb r1, [r0, #8]
	strb r1, [r0, #9]
	movs r1, #0xff
	strb r1, [r0, #0xa]
	ldr r1, _080100E4
	ldrb r0, [r1]
	cmp r0, #0
	bne _08010100
	movs r0, #8
	strb r0, [r1]
	ldr r0, _080100E8
	ldr r1, _080100EC
	ldr r0, [r0]
	ldr r1, [r1]
	subs r0, r0, r1
	adds r0, #1
	bl sub_8010744
	ldr r0, _080100F0
	ldr r1, _080100F4
	ldr r0, [r0]
	ldr r1, [r1]
	subs r0, r0, r1
	adds r0, #1
	bl sub_80107E8
	ldr r0, _080100F8
	ldr r1, _080100FC
	ldr r0, [r0]
	ldr r1, [r1]
	subs r0, r0, r1
	adds r0, #1
	bl sub_801088C
	b _08010104
	.align 2, 0
_080100E0: .4byte 0x02001371
_080100E4: .4byte 0x0200138A
_080100E8: .4byte 0x020012E4
_080100EC: .4byte 0x020012E0
_080100F0: .4byte 0x020012EC
_080100F4: .4byte 0x020012E8
_080100F8: .4byte 0x020012F4
_080100FC: .4byte 0x020012F0
_08010100:
	subs r0, #1
	strb r0, [r1]
_08010104:
	ldr r0, _0801012C
	ldrb r0, [r0]
	ldr r4, _08010130
	adds r1, r4, #0
	bl IntegerToAsciiBw
	ldr r0, _08010134
	ldrb r0, [r0]
	adds r1, r4, #4
	bl IntegerToAsciiBw
	ldr r0, _08010138
	ldrb r0, [r0]
	adds r4, #8
	adds r1, r4, #0
	bl IntegerToAsciiBw
	ldr r1, _0801013C
	movs r0, #0x52
	b _08010720
	.align 2, 0
_0801012C: .4byte gDebugFPS
_08010130: .4byte 0x02001372
_08010134: .4byte gDebugESN
_08010138: .4byte 0x02001389
_0801013C: .4byte 0x0200139C
_08010140:
	ldr r0, _080101A0
	movs r1, #0x30
	strb r1, [r0]
	strb r1, [r0, #1]
	strb r1, [r0, #2]
	movs r2, #0x20
	strb r2, [r0, #3]
	strb r1, [r0, #4]
	strb r1, [r0, #5]
	strb r1, [r0, #6]
	strb r2, [r0, #7]
	strb r1, [r0, #8]
	strb r1, [r0, #9]
	strb r1, [r0, #0xa]
	movs r1, #0xff
	strb r1, [r0, #0xb]
	ldr r1, _080101A4
	ldrb r0, [r1]
	cmp r0, #0
	bne _080101C0
	movs r0, #8
	strb r0, [r1]
	ldr r0, _080101A8
	ldr r1, _080101AC
	ldr r0, [r0]
	ldr r1, [r1]
	subs r0, r0, r1
	adds r0, #1
	bl sub_8010744
	ldr r0, _080101B0
	ldr r1, _080101B4
	ldr r0, [r0]
	ldr r1, [r1]
	subs r0, r0, r1
	adds r0, #1
	bl sub_80107E8
	ldr r0, _080101B8
	ldr r1, _080101BC
	ldr r0, [r0]
	ldr r1, [r1]
	subs r0, r0, r1
	adds r0, #1
	bl sub_801088C
	b _080101C4
	.align 2, 0
_080101A0: .4byte 0x02001371
_080101A4: .4byte 0x0200138A
_080101A8: .4byte 0x020012E4
_080101AC: .4byte 0x020012E0
_080101B0: .4byte 0x020012EC
_080101B4: .4byte 0x020012E8
_080101B8: .4byte 0x020012F4
_080101BC: .4byte 0x020012F0
_080101C0:
	subs r0, #1
	strb r0, [r1]
_080101C4:
	ldr r0, _080101EC
	ldrb r0, [r0]
	ldr r4, _080101F0
	adds r1, r4, #0
	bl IntegerToAsciiBw
	ldr r0, _080101F4
	ldrb r0, [r0]
	adds r1, r4, #4
	bl IntegerToAsciiBw
	ldr r0, _080101F8
	ldrb r0, [r0]
	adds r4, #8
	adds r1, r4, #0
	bl IntegerToAsciiBw
	ldr r1, _080101FC
	movs r0, #0x52
	b _08010720
	.align 2, 0
_080101EC: .4byte 0x02001208
_080101F0: .4byte 0x02001373
_080101F4: .4byte 0x0200120C
_080101F8: .4byte 0x02001210
_080101FC: .4byte 0x0200139C
_08010200:
	ldr r3, _08010258
	ldr r6, _0801025C
	adds r2, r3, #0
	movs r1, #0x30
	adds r0, r3, #0
	adds r0, #9
_0801020C:
	strb r1, [r0]
	subs r0, #1
	cmp r0, r2
	bge _0801020C
	movs r0, #0x20
	strb r0, [r3, #0xa]
	movs r1, #0xb
	movs r2, #0x30
_0801021C:
	adds r0, r1, r3
	strb r2, [r0]
	adds r1, #1
	cmp r1, #0x14
	ble _0801021C
	ldr r1, _08010258
	movs r0, #0xff
	strb r0, [r1, #0x15]
	ldrb r0, [r6]
	cmp r0, #0
	bne _08010270
	movs r0, #8
	strb r0, [r6]
	ldr r0, _08010260
	ldr r1, _08010264
	ldr r0, [r0]
	ldr r1, [r1]
	subs r0, r0, r1
	adds r0, #1
	bl sub_8010744
	ldr r0, _08010268
	ldr r1, _0801026C
	ldr r0, [r0]
	ldr r1, [r1]
	subs r0, r0, r1
	adds r0, #1
	bl sub_80107E8
	b _08010274
	.align 2, 0
_08010258: .4byte 0x02001371
_0801025C: .4byte 0x0200138A
_08010260: .4byte 0x020012E4
_08010264: .4byte 0x020012E0
_08010268: .4byte 0x020012EC
_0801026C: .4byte 0x020012E8
_08010270:
	subs r0, #1
	strb r0, [r6]
_08010274:
	ldr r0, _0801028C
	ldr r0, [r0]
	ldr r4, _08010290
	adds r1, r4, #0
	bl IntegerToAsciiBw
	ldr r0, _08010294
	ldr r0, [r0]
	adds r4, #0xb
	adds r1, r4, #0
	b _08010718
	.align 2, 0
_0801028C: .4byte 0x02001208
_08010290: .4byte 0x0200137A
_08010294: .4byte 0x0200120C
_08010298:
	ldr r3, _080102F4
	ldr r6, _080102F8
	ldr r4, _080102FC
	adds r5, r3, #0
	adds r5, #9
	adds r2, r3, #0
	movs r1, #0x30
	adds r0, r5, #0
_080102A8:
	strb r1, [r0]
	subs r0, #1
	cmp r0, r2
	bge _080102A8
	movs r0, #0x20
	strb r0, [r3, #0xa]
	movs r1, #0xb
	movs r2, #0x30
_080102B8:
	adds r0, r1, r3
	strb r2, [r0]
	adds r1, #1
	cmp r1, #0x14
	ble _080102B8
	ldr r1, _080102F4
	movs r0, #0xff
	strb r0, [r1, #0x15]
	ldrb r0, [r6]
	cmp r0, #0
	bne _08010314
	movs r0, #8
	strb r0, [r6]
	ldr r0, _08010300
	ldr r1, _08010304
	ldr r0, [r0]
	ldr r1, [r1]
	subs r0, r0, r1
	adds r0, #1
	str r0, [r4]
	ldr r2, _08010308
	ldr r0, _0801030C
	ldr r1, _08010310
	ldr r0, [r0]
	ldr r1, [r1]
	subs r0, r0, r1
	adds r0, #1
	str r0, [r2]
	b _08010318
	.align 2, 0
_080102F4: .4byte 0x02001371
_080102F8: .4byte 0x0200138A
_080102FC: .4byte 0x02001210
_08010300: .4byte 0x020012F4
_08010304: .4byte 0x020012F0
_08010308: .4byte 0x02001214
_0801030C: .4byte 0x020012FC
_08010310: .4byte 0x020012F8
_08010314:
	subs r0, #1
	strb r0, [r6]
_08010318:
	ldr r0, [r4]
	adds r1, r5, #0
	bl IntegerToAsciiBw
	ldr r0, _08010324
	b _08010712
	.align 2, 0
_08010324: .4byte 0x02001214
_08010328:
	ldr r3, _08010384
	ldr r6, _08010388
	adds r5, r3, #0
	adds r5, #9
	ldr r4, _0801038C
	adds r2, r3, #0
	movs r1, #0x30
	adds r0, r5, #0
_08010338:
	strb r1, [r0]
	subs r0, #1
	cmp r0, r2
	bge _08010338
	movs r0, #0x20
	strb r0, [r3, #0xa]
	movs r1, #0xb
	movs r2, #0x30
_08010348:
	adds r0, r1, r3
	strb r2, [r0]
	adds r1, #1
	cmp r1, #0x14
	ble _08010348
	ldr r1, _08010384
	movs r0, #0xff
	strb r0, [r1, #0x15]
	ldrb r0, [r6]
	cmp r0, #0
	bne _080103A4
	movs r0, #8
	strb r0, [r6]
	ldr r0, _08010390
	ldr r1, _08010394
	ldr r0, [r0]
	ldr r1, [r1]
	subs r0, r0, r1
	adds r0, #1
	str r0, [r4]
	ldr r2, _08010398
	ldr r0, _0801039C
	ldr r1, _080103A0
	ldr r0, [r0]
	ldr r1, [r1]
	subs r0, r0, r1
	adds r0, #1
	str r0, [r2]
	b _080103A8
	.align 2, 0
_08010384: .4byte 0x02001371
_08010388: .4byte 0x0200138A
_0801038C: .4byte 0x02001218
_08010390: .4byte 0x02001304
_08010394: .4byte 0x02001300
_08010398: .4byte 0x0200121C
_0801039C: .4byte 0x0200130C
_080103A0: .4byte 0x02001308
_080103A4:
	subs r0, #1
	strb r0, [r6]
_080103A8:
	ldr r0, [r4]
	adds r1, r5, #0
	bl IntegerToAsciiBw
	ldr r0, _080103B4
	b _08010712
	.align 2, 0
_080103B4: .4byte 0x0200121C
_080103B8:
	ldr r3, _08010414
	ldr r6, _08010418
	adds r5, r3, #0
	adds r5, #9
	ldr r4, _0801041C
	adds r2, r3, #0
	movs r1, #0x30
	adds r0, r5, #0
_080103C8:
	strb r1, [r0]
	subs r0, #1
	cmp r0, r2
	bge _080103C8
	movs r0, #0x20
	strb r0, [r3, #0xa]
	movs r1, #0xb
	movs r2, #0x30
_080103D8:
	adds r0, r1, r3
	strb r2, [r0]
	adds r1, #1
	cmp r1, #0x14
	ble _080103D8
	ldr r1, _08010414
	movs r0, #0xff
	strb r0, [r1, #0x15]
	ldrb r0, [r6]
	cmp r0, #0
	bne _08010434
	movs r0, #8
	strb r0, [r6]
	ldr r0, _08010420
	ldr r1, _08010424
	ldr r0, [r0]
	ldr r1, [r1]
	subs r0, r0, r1
	adds r0, #1
	str r0, [r4]
	ldr r2, _08010428
	ldr r0, _0801042C
	ldr r1, _08010430
	ldr r0, [r0]
	ldr r1, [r1]
	subs r0, r0, r1
	adds r0, #1
	str r0, [r2]
	b _08010438
	.align 2, 0
_08010414: .4byte 0x02001371
_08010418: .4byte 0x0200138A
_0801041C: .4byte 0x02001220
_08010420: .4byte 0x02001314
_08010424: .4byte 0x02001310
_08010428: .4byte 0x02001224
_0801042C: .4byte 0x0200131C
_08010430: .4byte 0x02001318
_08010434:
	subs r0, #1
	strb r0, [r6]
_08010438:
	ldr r0, [r4]
	adds r1, r5, #0
	bl IntegerToAsciiBw
	ldr r0, _08010444
	b _08010712
	.align 2, 0
_08010444: .4byte 0x02001224
_08010448:
	ldr r3, _080104A4
	ldr r6, _080104A8
	adds r5, r3, #0
	adds r5, #9
	ldr r4, _080104AC
	adds r2, r3, #0
	movs r1, #0x30
	adds r0, r5, #0
_08010458:
	strb r1, [r0]
	subs r0, #1
	cmp r0, r2
	bge _08010458
	movs r0, #0x20
	strb r0, [r3, #0xa]
	movs r1, #0xb
	movs r2, #0x30
_08010468:
	adds r0, r1, r3
	strb r2, [r0]
	adds r1, #1
	cmp r1, #0x14
	ble _08010468
	ldr r1, _080104A4
	movs r0, #0xff
	strb r0, [r1, #0x15]
	ldrb r0, [r6]
	cmp r0, #0
	bne _080104C4
	movs r0, #8
	strb r0, [r6]
	ldr r0, _080104B0
	ldr r1, _080104B4
	ldr r0, [r0]
	ldr r1, [r1]
	subs r0, r0, r1
	adds r0, #1
	str r0, [r4]
	ldr r2, _080104B8
	ldr r0, _080104BC
	ldr r1, _080104C0
	ldr r0, [r0]
	ldr r1, [r1]
	subs r0, r0, r1
	adds r0, #1
	str r0, [r2]
	b _080104C8
	.align 2, 0
_080104A4: .4byte 0x02001371
_080104A8: .4byte 0x0200138A
_080104AC: .4byte 0x02001228
_080104B0: .4byte 0x02001324
_080104B4: .4byte 0x02001320
_080104B8: .4byte 0x0200122C
_080104BC: .4byte 0x0200132C
_080104C0: .4byte 0x02001328
_080104C4:
	subs r0, #1
	strb r0, [r6]
_080104C8:
	ldr r0, [r4]
	adds r1, r5, #0
	bl IntegerToAsciiBw
	ldr r0, _080104D4
	b _08010712
	.align 2, 0
_080104D4: .4byte 0x0200122C
_080104D8:
	ldr r3, _08010534
	ldr r6, _08010538
	adds r5, r3, #0
	adds r5, #9
	ldr r4, _0801053C
	adds r2, r3, #0
	movs r1, #0x30
	adds r0, r5, #0
_080104E8:
	strb r1, [r0]
	subs r0, #1
	cmp r0, r2
	bge _080104E8
	movs r0, #0x20
	strb r0, [r3, #0xa]
	movs r1, #0xb
	movs r2, #0x30
_080104F8:
	adds r0, r1, r3
	strb r2, [r0]
	adds r1, #1
	cmp r1, #0x14
	ble _080104F8
	ldr r1, _08010534
	movs r0, #0xff
	strb r0, [r1, #0x15]
	ldrb r0, [r6]
	cmp r0, #0
	bne _08010554
	movs r0, #8
	strb r0, [r6]
	ldr r0, _08010540
	ldr r1, _08010544
	ldr r0, [r0]
	ldr r1, [r1]
	subs r0, r0, r1
	adds r0, #1
	str r0, [r4]
	ldr r2, _08010548
	ldr r0, _0801054C
	ldr r1, _08010550
	ldr r0, [r0]
	ldr r1, [r1]
	subs r0, r0, r1
	adds r0, #1
	str r0, [r2]
	b _08010558
	.align 2, 0
_08010534: .4byte 0x02001371
_08010538: .4byte 0x0200138A
_0801053C: .4byte 0x02001230
_08010540: .4byte 0x02001334
_08010544: .4byte 0x02001330
_08010548: .4byte 0x02001234
_0801054C: .4byte 0x0200133C
_08010550: .4byte 0x02001338
_08010554:
	subs r0, #1
	strb r0, [r6]
_08010558:
	ldr r0, [r4]
	adds r1, r5, #0
	bl IntegerToAsciiBw
	ldr r0, _08010564
	b _08010712
	.align 2, 0
_08010564: .4byte 0x02001234
_08010568:
	ldr r3, _080105C4
	ldr r6, _080105C8
	adds r5, r3, #0
	adds r5, #9
	ldr r4, _080105CC
	adds r2, r3, #0
	movs r1, #0x30
	adds r0, r5, #0
_08010578:
	strb r1, [r0]
	subs r0, #1
	cmp r0, r2
	bge _08010578
	movs r0, #0x20
	strb r0, [r3, #0xa]
	movs r1, #0xb
	movs r2, #0x30
_08010588:
	adds r0, r1, r3
	strb r2, [r0]
	adds r1, #1
	cmp r1, #0x14
	ble _08010588
	ldr r1, _080105C4
	movs r0, #0xff
	strb r0, [r1, #0x15]
	ldrb r0, [r6]
	cmp r0, #0
	bne _080105E4
	movs r0, #8
	strb r0, [r6]
	ldr r0, _080105D0
	ldr r1, _080105D4
	ldr r0, [r0]
	ldr r1, [r1]
	subs r0, r0, r1
	adds r0, #1
	str r0, [r4]
	ldr r2, _080105D8
	ldr r0, _080105DC
	ldr r1, _080105E0
	ldr r0, [r0]
	ldr r1, [r1]
	subs r0, r0, r1
	adds r0, #1
	str r0, [r2]
	b _080105E8
	.align 2, 0
_080105C4: .4byte 0x02001371
_080105C8: .4byte 0x0200138A
_080105CC: .4byte 0x02001238
_080105D0: .4byte 0x02001344
_080105D4: .4byte 0x02001340
_080105D8: .4byte 0x0200123C
_080105DC: .4byte 0x0200134C
_080105E0: .4byte 0x02001348
_080105E4:
	subs r0, #1
	strb r0, [r6]
_080105E8:
	ldr r0, [r4]
	adds r1, r5, #0
	bl IntegerToAsciiBw
	ldr r0, _080105F4
	b _08010712
	.align 2, 0
_080105F4: .4byte 0x0200123C
_080105F8:
	ldr r3, _08010654
	ldr r6, _08010658
	adds r5, r3, #0
	adds r5, #9
	ldr r4, _0801065C
	adds r2, r3, #0
	movs r1, #0x30
	adds r0, r5, #0
_08010608:
	strb r1, [r0]
	subs r0, #1
	cmp r0, r2
	bge _08010608
	movs r0, #0x20
	strb r0, [r3, #0xa]
	movs r1, #0xb
	movs r2, #0x30
_08010618:
	adds r0, r1, r3
	strb r2, [r0]
	adds r1, #1
	cmp r1, #0x14
	ble _08010618
	ldr r1, _08010654
	movs r0, #0xff
	strb r0, [r1, #0x15]
	ldrb r0, [r6]
	cmp r0, #0
	bne _08010674
	movs r0, #8
	strb r0, [r6]
	ldr r0, _08010660
	ldr r1, _08010664
	ldr r0, [r0]
	ldr r1, [r1]
	subs r0, r0, r1
	adds r0, #1
	str r0, [r4]
	ldr r2, _08010668
	ldr r0, _0801066C
	ldr r1, _08010670
	ldr r0, [r0]
	ldr r1, [r1]
	subs r0, r0, r1
	adds r0, #1
	str r0, [r2]
	b _08010678
	.align 2, 0
_08010654: .4byte 0x02001371
_08010658: .4byte 0x0200138A
_0801065C: .4byte 0x02001240
_08010660: .4byte 0x02001354
_08010664: .4byte 0x02001350
_08010668: .4byte 0x02001244
_0801066C: .4byte 0x0200135C
_08010670: .4byte 0x02001358
_08010674:
	subs r0, #1
	strb r0, [r6]
_08010678:
	ldr r0, [r4]
	adds r1, r5, #0
	bl IntegerToAsciiBw
	ldr r0, _08010684
	b _08010712
	.align 2, 0
_08010684: .4byte 0x02001244
_08010688:
	ldr r3, _080106E4
	ldr r6, _080106E8
	adds r5, r3, #0
	adds r5, #9
	ldr r4, _080106EC
	adds r2, r3, #0
	movs r1, #0x30
	adds r0, r5, #0
_08010698:
	strb r1, [r0]
	subs r0, #1
	cmp r0, r2
	bge _08010698
	movs r0, #0x20
	strb r0, [r3, #0xa]
	movs r1, #0xb
	movs r2, #0x30
_080106A8:
	adds r0, r1, r3
	strb r2, [r0]
	adds r1, #1
	cmp r1, #0x14
	ble _080106A8
	ldr r1, _080106E4
	movs r0, #0xff
	strb r0, [r1, #0x15]
	ldrb r0, [r6]
	cmp r0, #0
	bne _08010704
	movs r0, #8
	strb r0, [r6]
	ldr r0, _080106F0
	ldr r1, _080106F4
	ldr r0, [r0]
	ldr r1, [r1]
	subs r0, r0, r1
	adds r0, #1
	str r0, [r4]
	ldr r2, _080106F8
	ldr r0, _080106FC
	ldr r1, _08010700
	ldr r0, [r0]
	ldr r1, [r1]
	subs r0, r0, r1
	adds r0, #1
	str r0, [r2]
	b _08010708
	.align 2, 0
_080106E4: .4byte 0x02001371
_080106E8: .4byte 0x0200138A
_080106EC: .4byte 0x02001248
_080106F0: .4byte 0x02001364
_080106F4: .4byte 0x02001360
_080106F8: .4byte 0x0200124C
_080106FC: .4byte 0x0200136C
_08010700: .4byte 0x02001368
_08010704:
	subs r0, #1
	strb r0, [r6]
_08010708:
	ldr r0, [r4]
	adds r1, r5, #0
	bl IntegerToAsciiBw
	ldr r0, _08010738
_08010712:
	ldr r0, [r0]
	adds r1, r5, #0
	adds r1, #0xb
_08010718:
	bl IntegerToAsciiBw
	ldr r1, _0801073C
	movs r0, #0x24
_08010720:
	strh r0, [r1]

    .thumb
sub_08010722: @ 0x08010722
	ldr r0, _0801073C
	movs r2, #0
	movs r1, #0x98
	strh r1, [r0, #2]
	strh r2, [r0, #0xc]
	ldr r1, _08010740
	bl AddStringToBuffer
_08010732:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08010738: .4byte 0x0200124C
_0801073C: .4byte 0x0200139C
_08010740: .4byte 0x02001371

    .thumb
sub_8010744: @ 0x08010744
	push {r4, lr}
	adds r2, r0, #0
	ldr r0, _0801075C
	ldrb r0, [r0]
	subs r0, #6
	cmp r0, #5
	bhi _080107D4
	lsls r0, r0, #2
	ldr r1, _08010760
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0801075C: .4byte 0x02001388
_08010760: .4byte 0x08010764
_08010764: @ jump table
	.4byte _0801077C @ case 0
	.4byte _08010788 @ case 1
	.4byte _080107B4 @ case 2
	.4byte _0801077C @ case 3
	.4byte _08010788 @ case 4
	.4byte _080107B4 @ case 5
_0801077C:
	ldr r0, _08010784
	str r2, [r0]
	b _080107D4
	.align 2, 0
_08010784: .4byte 0x02001208
_08010788:
	ldr r3, _080107A8
	ldr r0, [r3]
	adds r4, r0, r2
	str r4, [r3]
	ldr r1, _080107AC
	ldr r0, [r1]
	subs r2, r0, #1
	str r2, [r1]
	cmp r2, #0
	bne _080107D4
	movs r0, #2
	str r0, [r1]
	ldr r1, _080107B0
	asrs r0, r4, #1
	b _080107D0
	.align 2, 0
_080107A8: .4byte 0x02001250
_080107AC: .4byte 0x02001298
_080107B0: .4byte 0x02001208
_080107B4:
	ldr r3, _080107DC
	ldr r0, [r3]
	adds r4, r0, r2
	str r4, [r3]
	ldr r1, _080107E0
	ldr r0, [r1]
	subs r2, r0, #1
	str r2, [r1]
	cmp r2, #0
	bne _080107D4
	movs r0, #4
	str r0, [r1]
	ldr r1, _080107E4
	asrs r0, r4, #2
_080107D0:
	str r0, [r1]
	str r2, [r3]
_080107D4:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080107DC: .4byte 0x02001250
_080107E0: .4byte 0x02001298
_080107E4: .4byte 0x02001208

    .thumb
sub_80107E8: @ 0x080107E8
	push {r4, lr}
	adds r2, r0, #0
	ldr r0, _08010800
	ldrb r0, [r0]
	subs r0, #6
	cmp r0, #5
	bhi _08010878
	lsls r0, r0, #2
	ldr r1, _08010804
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08010800: .4byte 0x02001388
_08010804: .4byte 0x08010808
_08010808: @ jump table
	.4byte _08010820 @ case 0
	.4byte _0801082C @ case 1
	.4byte _08010858 @ case 2
	.4byte _08010820 @ case 3
	.4byte _0801082C @ case 4
	.4byte _08010858 @ case 5
_08010820:
	ldr r0, _08010828
	str r2, [r0]
	b _08010878
	.align 2, 0
_08010828: .4byte 0x0200120C
_0801082C:
	ldr r3, _0801084C
	ldr r0, [r3]
	adds r4, r0, r2
	str r4, [r3]
	ldr r1, _08010850
	ldr r0, [r1]
	subs r2, r0, #1
	str r2, [r1]
	cmp r2, #0
	bne _08010878
	movs r0, #2
	str r0, [r1]
	ldr r1, _08010854
	asrs r0, r4, #1
	b _08010874
	.align 2, 0
_0801084C: .4byte 0x02001254
_08010850: .4byte 0x0200129C
_08010854: .4byte 0x0200120C
_08010858:
	ldr r3, _08010880
	ldr r0, [r3]
	adds r4, r0, r2
	str r4, [r3]
	ldr r1, _08010884
	ldr r0, [r1]
	subs r2, r0, #1
	str r2, [r1]
	cmp r2, #0
	bne _08010878
	movs r0, #4
	str r0, [r1]
	ldr r1, _08010888
	asrs r0, r4, #2
_08010874:
	str r0, [r1]
	str r2, [r3]
_08010878:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08010880: .4byte 0x02001254
_08010884: .4byte 0x0200129C
_08010888: .4byte 0x0200120C

    .thumb
sub_801088C: @ 0x0801088C
	push {r4, lr}
	adds r1, r0, #0
	ldr r0, _080108A4
	ldrb r0, [r0]
	cmp r0, #7
	beq _080108B8
	cmp r0, #7
	bgt _080108A8
	cmp r0, #6
	beq _080108AE
	b _08010904
	.align 2, 0
_080108A4: .4byte 0x02001388
_080108A8:
	cmp r0, #8
	beq _080108E4
	b _08010904
_080108AE:
	ldr r0, _080108B4
	str r1, [r0]
	b _08010904
	.align 2, 0
_080108B4: .4byte 0x02001210
_080108B8:
	ldr r3, _080108D8
	ldr r0, [r3]
	adds r4, r0, r1
	str r4, [r3]
	ldr r1, _080108DC
	ldr r0, [r1]
	subs r2, r0, #1
	str r2, [r1]
	cmp r2, #0
	bne _08010904
	movs r0, #2
	str r0, [r1]
	ldr r1, _080108E0
	asrs r0, r4, #1
	b _08010900
	.align 2, 0
_080108D8: .4byte 0x02001258
_080108DC: .4byte 0x020012A0
_080108E0: .4byte 0x02001210
_080108E4:
	ldr r3, _0801090C
	ldr r0, [r3]
	adds r4, r0, r1
	str r4, [r3]
	ldr r1, _08010910
	ldr r0, [r1]
	subs r2, r0, #1
	str r2, [r1]
	cmp r2, #0
	bne _08010904
	movs r0, #4
	str r0, [r1]
	ldr r1, _08010914
	asrs r0, r4, #2
_08010900:
	str r0, [r1]
	str r2, [r3]
_08010904:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801090C: .4byte 0x02001258
_08010910: .4byte 0x020012A0
_08010914: .4byte 0x02001210

    .thumb
    .global Debug_SetAfterGameUpdate
Debug_SetAfterGameUpdate: @ 0x08010918
	push {r4, lr}
	adds r2, r0, #0
	ldr r0, _08010930
	ldrb r0, [r0]
	cmp r0, #5
	bhi _080109EE
	lsls r0, r0, #2
	ldr r1, _08010934
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08010930: .4byte 0x02001388
_08010934: .4byte 0x08010938
_08010938: @ jump table
	.4byte _080109EE @ case 0
	.4byte _08010950 @ case 1
	.4byte _08010958 @ case 2
	.4byte _08010984 @ case 3
	.4byte _080109B0 @ case 4
	.4byte _080109E0 @ case 5
_08010950:
	ldr r0, _08010954
	b _080109EC
	.align 2, 0
_08010954: .4byte gDebugESN
_08010958:
	ldr r3, _08010978
	ldr r0, [r3]
	adds r4, r0, r2
	str r4, [r3]
	ldr r1, _0801097C
	ldr r0, [r1]
	subs r2, r0, #1
	str r2, [r1]
	cmp r2, #0
	bne _080109EE
	movs r0, #2
	str r0, [r1]
	ldr r1, _08010980
	asrs r0, r4, #1
	b _080109CC
	.align 2, 0
_08010978: .4byte 0x02001394
_0801097C: .4byte 0x0200138C
_08010980: .4byte gDebugESN
_08010984:
	ldr r3, _080109A4
	ldr r0, [r3]
	adds r4, r0, r2
	str r4, [r3]
	ldr r1, _080109A8
	ldr r0, [r1]
	subs r2, r0, #1
	str r2, [r1]
	cmp r2, #0
	bne _080109EE
	movs r0, #4
	str r0, [r1]
	ldr r1, _080109AC
	asrs r0, r4, #2
	b _080109CC
	.align 2, 0
_080109A4: .4byte 0x02001394
_080109A8: .4byte 0x0200138C
_080109AC: .4byte gDebugESN
_080109B0:
	ldr r3, _080109D4
	ldr r0, [r3]
	adds r4, r0, r2
	str r4, [r3]
	ldr r1, _080109D8
	ldr r0, [r1]
	subs r2, r0, #1
	str r2, [r1]
	cmp r2, #0
	bne _080109EE
	movs r0, #8
	str r0, [r1]
	ldr r1, _080109DC
	asrs r0, r4, #3
_080109CC:
	strb r0, [r1]
	str r2, [r3]
	b _080109EE
	.align 2, 0
_080109D4: .4byte 0x02001394
_080109D8: .4byte 0x0200138C
_080109DC: .4byte gDebugESN
_080109E0:
	ldr r0, _080109F4
	strb r2, [r0]
	ldr r0, _080109F8
	ldrb r1, [r0]
	cmp r2, r1
	ble _080109EE
_080109EC:
	strb r2, [r0]
_080109EE:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080109F4: .4byte gDebugESN
_080109F8: .4byte 0x02001389

    .thumb
    .global Debug_SetAfterVideoUpdate
Debug_SetAfterVideoUpdate: @ 0x080109FC
	push {lr}
	adds r1, r0, #0
	ldr r0, _08010A18
	ldrb r0, [r0]
	cmp r0, #0
	beq _08010A14
	cmp r0, #0
	blt _08010A14
	cmp r0, #5
	bgt _08010A14
	ldr r0, _08010A1C
	strb r1, [r0]
_08010A14:
	pop {r0}
	bx r0
	.align 2, 0
_08010A18: .4byte 0x02001388
_08010A1C: .4byte gDebugESV
