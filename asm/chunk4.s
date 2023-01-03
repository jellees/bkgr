
    .syntax unified

    .text

    .thumb
	.global sub_0800F02C
sub_0800F02C: @ 0x0800F02C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r4, r1, #0
	adds r3, r2, #0
	ldr r2, _0800F058
	movs r1, #1
	strb r1, [r2]
	ldr r1, _0800F05C
	str r0, [r1]
	ldr r1, _0800F060
	movs r0, #0
	strb r0, [r1]
	cmp r4, #1
	beq _0800F094
	cmp r4, #1
	bgt _0800F064
	cmp r4, #0
	beq _0800F06A
	b _0800F094
	.align 2, 0
_0800F058: .4byte byte_200110C
_0800F05C: .4byte 0x020011C8
_0800F060: .4byte 0x0200111F
_0800F064:
	cmp r4, #2
	beq _0800F080
	b _0800F094
_0800F06A:
	ldr r1, _0800F078
	movs r0, #0x18
	strb r0, [r1]
	ldr r1, _0800F07C
	movs r0, #0x28
	b _0800F09E
	.align 2, 0
_0800F078: .4byte 0x0200111E
_0800F07C: .4byte 0x0200111D
_0800F080:
	ldr r1, _0800F08C
	movs r0, #0x74
	strb r0, [r1]
	ldr r1, _0800F090
	movs r0, #0x84
	b _0800F09E
	.align 2, 0
_0800F08C: .4byte 0x0200111E
_0800F090: .4byte 0x0200111D
_0800F094:
	ldr r1, _0800F0B4
	movs r0, #0x40
	strb r0, [r1]
	ldr r1, _0800F0B8
	movs r0, #0x50
_0800F09E:
	strb r0, [r1]
	ldr r0, _0800F0BC
	ldrb r0, [r0]
	cmp r0, #4
	bls _0800F0AA
	b _0800F360
_0800F0AA:
	lsls r0, r0, #2
	ldr r1, _0800F0C0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0800F0B4: .4byte 0x0200111E
_0800F0B8: .4byte 0x0200111D
_0800F0BC: .4byte 0x02000320
_0800F0C0: .4byte 0x0800F0C4
_0800F0C4: @ jump table
	.4byte _0800F0D8 @ case 0
	.4byte _0800F148 @ case 1
	.4byte _0800F1B8 @ case 2
	.4byte _0800F298 @ case 3
	.4byte _0800F228 @ case 4
_0800F0D8:
	cmp r3, #1
	beq _0800F100
	cmp r3, #1
	bgt _0800F0E6
	cmp r3, #0
	beq _0800F0F0
	b _0800F364
_0800F0E6:
	cmp r3, #2
	beq _0800F11C
	cmp r3, #3
	beq _0800F138
	b _0800F364
_0800F0F0:
	ldr r2, _0800F0F8
	ldr r0, _0800F0FC
	b _0800F2B4
	.align 2, 0
_0800F0F8: .4byte 0x02001188
_0800F0FC: .4byte 0x08065F60
_0800F100:
	ldr r2, _0800F10C
	ldr r0, _0800F110
	str r0, [r2]
	ldr r1, _0800F114
	ldr r0, _0800F118
	b _0800F302
	.align 2, 0
_0800F10C: .4byte 0x02001188
_0800F110: .4byte 0x08065F60
_0800F114: .4byte 0x0200118C
_0800F118: .4byte 0x08065F70
_0800F11C:
	ldr r2, _0800F128
	ldr r0, _0800F12C
	str r0, [r2]
	ldr r1, _0800F130
	ldr r0, _0800F134
	b _0800F302
	.align 2, 0
_0800F128: .4byte 0x02001188
_0800F12C: .4byte 0x08065F60
_0800F130: .4byte 0x0200118C
_0800F134: .4byte 0x08065F7C
_0800F138:
	ldr r2, _0800F140
	ldr r0, _0800F144
	b _0800F32C
	.align 2, 0
_0800F140: .4byte 0x02001188
_0800F144: .4byte 0x08065F88
_0800F148:
	cmp r3, #1
	beq _0800F170
	cmp r3, #1
	bgt _0800F156
	cmp r3, #0
	beq _0800F160
	b _0800F364
_0800F156:
	cmp r3, #2
	beq _0800F18C
	cmp r3, #3
	beq _0800F1A8
	b _0800F364
_0800F160:
	ldr r2, _0800F168
	ldr r0, _0800F16C
	b _0800F2B4
	.align 2, 0
_0800F168: .4byte 0x02001188
_0800F16C: .4byte 0x08065FA0
_0800F170:
	ldr r2, _0800F17C
	ldr r0, _0800F180
	str r0, [r2]
	ldr r1, _0800F184
	ldr r0, _0800F188
	b _0800F302
	.align 2, 0
_0800F17C: .4byte 0x02001188
_0800F180: .4byte 0x08065FA0
_0800F184: .4byte 0x0200118C
_0800F188: .4byte 0x08065FB4
_0800F18C:
	ldr r2, _0800F198
	ldr r0, _0800F19C
	str r0, [r2]
	ldr r1, _0800F1A0
	ldr r0, _0800F1A4
	b _0800F302
	.align 2, 0
_0800F198: .4byte 0x02001188
_0800F19C: .4byte 0x08065FA0
_0800F1A0: .4byte 0x0200118C
_0800F1A4: .4byte 0x08065FC4
_0800F1A8:
	ldr r2, _0800F1B0
	ldr r0, _0800F1B4
	b _0800F32C
	.align 2, 0
_0800F1B0: .4byte 0x02001188
_0800F1B4: .4byte 0x08065FD0
_0800F1B8:
	cmp r3, #1
	beq _0800F1E0
	cmp r3, #1
	bgt _0800F1C6
	cmp r3, #0
	beq _0800F1D0
	b _0800F364
_0800F1C6:
	cmp r3, #2
	beq _0800F1FC
	cmp r3, #3
	beq _0800F218
	b _0800F364
_0800F1D0:
	ldr r2, _0800F1D8
	ldr r0, _0800F1DC
	b _0800F2B4
	.align 2, 0
_0800F1D8: .4byte 0x02001188
_0800F1DC: .4byte 0x08066044
_0800F1E0:
	ldr r2, _0800F1EC
	ldr r0, _0800F1F0
	str r0, [r2]
	ldr r1, _0800F1F4
	ldr r0, _0800F1F8
	b _0800F302
	.align 2, 0
_0800F1EC: .4byte 0x02001188
_0800F1F0: .4byte 0x08066044
_0800F1F4: .4byte 0x0200118C
_0800F1F8: .4byte 0x08066054
_0800F1FC:
	ldr r2, _0800F208
	ldr r0, _0800F20C
	str r0, [r2]
	ldr r1, _0800F210
	ldr r0, _0800F214
	b _0800F302
	.align 2, 0
_0800F208: .4byte 0x02001188
_0800F20C: .4byte 0x08066044
_0800F210: .4byte 0x0200118C
_0800F214: .4byte 0x0806606C
_0800F218:
	ldr r2, _0800F220
	ldr r0, _0800F224
	b _0800F32C
	.align 2, 0
_0800F220: .4byte 0x02001188
_0800F224: .4byte 0x08066078
_0800F228:
	cmp r3, #1
	beq _0800F250
	cmp r3, #1
	bgt _0800F236
	cmp r3, #0
	beq _0800F240
	b _0800F364
_0800F236:
	cmp r3, #2
	beq _0800F26C
	cmp r3, #3
	beq _0800F288
	b _0800F364
_0800F240:
	ldr r2, _0800F248
	ldr r0, _0800F24C
	b _0800F2B4
	.align 2, 0
_0800F248: .4byte 0x02001188
_0800F24C: .4byte 0x08066094
_0800F250:
	ldr r2, _0800F25C
	ldr r0, _0800F260
	str r0, [r2]
	ldr r1, _0800F264
	ldr r0, _0800F268
	b _0800F302
	.align 2, 0
_0800F25C: .4byte 0x02001188
_0800F260: .4byte 0x08066094
_0800F264: .4byte 0x0200118C
_0800F268: .4byte 0x080660A4
_0800F26C:
	ldr r2, _0800F278
	ldr r0, _0800F27C
	str r0, [r2]
	ldr r1, _0800F280
	ldr r0, _0800F284
	b _0800F302
	.align 2, 0
_0800F278: .4byte 0x02001188
_0800F27C: .4byte 0x08066094
_0800F280: .4byte 0x0200118C
_0800F284: .4byte 0x080660B0
_0800F288:
	ldr r2, _0800F290
	ldr r0, _0800F294
	b _0800F32C
	.align 2, 0
_0800F290: .4byte 0x02001188
_0800F294: .4byte 0x080660B8
_0800F298:
	cmp r3, #1
	beq _0800F2DC
	cmp r3, #1
	bgt _0800F2A6
	cmp r3, #0
	beq _0800F2B0
	b _0800F364
_0800F2A6:
	cmp r3, #2
	beq _0800F2F8
	cmp r3, #3
	beq _0800F328
	b _0800F364
_0800F2B0:
	ldr r2, _0800F2C8
	ldr r0, _0800F2CC
_0800F2B4:
	str r0, [r2]
	ldr r0, _0800F2D0
	str r3, [r0]
	ldr r1, _0800F2D4
	movs r0, #1
	strb r0, [r1]
	ldr r0, _0800F2D8
	strb r3, [r0]
	b _0800F364
	.align 2, 0
_0800F2C8: .4byte 0x02001188
_0800F2CC: .4byte 0x08065FF4
_0800F2D0: .4byte 0x0200118C
_0800F2D4: .4byte 0x02001120
_0800F2D8: .4byte 0x02001121
_0800F2DC:
	ldr r2, _0800F2E8
	ldr r0, _0800F2EC
	str r0, [r2]
	ldr r1, _0800F2F0
	ldr r0, _0800F2F4
	b _0800F302
	.align 2, 0
_0800F2E8: .4byte 0x02001188
_0800F2EC: .4byte 0x08065FF4
_0800F2F0: .4byte 0x0200118C
_0800F2F4: .4byte 0x08066008
_0800F2F8:
	ldr r2, _0800F310
	ldr r0, _0800F314
	str r0, [r2]
	ldr r1, _0800F318
	ldr r0, _0800F31C
_0800F302:
	str r0, [r1]
	ldr r0, _0800F320
	movs r1, #0
	strb r1, [r0]
	ldr r0, _0800F324
	strb r1, [r0]
	b _0800F364
	.align 2, 0
_0800F310: .4byte 0x02001188
_0800F314: .4byte 0x08065FF4
_0800F318: .4byte 0x0200118C
_0800F31C: .4byte 0x08066014
_0800F320: .4byte 0x02001120
_0800F324: .4byte 0x02001121
_0800F328:
	ldr r2, _0800F348
	ldr r0, _0800F34C
_0800F32C:
	str r0, [r2]
	ldr r1, _0800F350
	movs r0, #0
	str r0, [r1]
	ldr r0, _0800F354
	movs r1, #1
	strb r1, [r0]
	ldr r0, _0800F358
	strb r1, [r0]
	ldr r1, _0800F35C
	movs r0, #0x1e
	strb r0, [r1]
	b _0800F364
	.align 2, 0
_0800F348: .4byte 0x02001188
_0800F34C: .4byte 0x08066024
_0800F350: .4byte 0x0200118C
_0800F354: .4byte 0x02001120
_0800F358: .4byte 0x02001121
_0800F35C: .4byte 0x02001122
_0800F360:
	.2byte 0xEE00, 0xEE00
_0800F364:
	ldr r1, _0800F404
	movs r0, #0
	mov sl, r0
	movs r0, #0
	strh r0, [r1]
	strh r0, [r1, #2]
	movs r2, #0xfe
	mov r8, r2
	mov r3, r8
	strb r3, [r1, #0x10]
	mov r7, sl
	strb r7, [r1, #0x12]
	movs r2, #1
	strb r2, [r1, #0xa]
	movs r5, #0xf0
	strh r5, [r1, #8]
	movs r3, #1
	mov sb, r3
	strh r2, [r1, #0xe]
	strh r0, [r1, #0xc]
	movs r6, #6
	strb r6, [r1, #0x11]
	ldr r3, _0800F408
	str r3, [r1, #4]
	ldr r4, _0800F40C
	strh r0, [r4]
	strh r0, [r4, #2]
	mov r7, r8
	strb r7, [r4, #0x10]
	mov r7, sl
	strb r7, [r4, #0x12]
	mov r7, sb
	strb r7, [r4, #0xa]
	strh r5, [r4, #8]
	strh r2, [r4, #0xe]
	strh r0, [r4, #0xc]
	strb r6, [r4, #0x11]
	str r3, [r4, #4]
	ldr r6, _0800F410
	ldr r2, _0800F414
	ldr r0, [r2]
	bl sub_8025870
	strb r0, [r6]
	ldr r1, _0800F418
	ldrb r0, [r6]
	subs r0, r5, r0
	asrs r0, r0, #1
	lsls r0, r0, #0x10
	str r0, [r1]
	ldr r1, _0800F41C
	ldrb r0, [r6]
	rsbs r0, r0, #0
	lsls r0, r0, #0x10
	str r0, [r1]
	ldr r6, _0800F420
	ldr r0, _0800F424
	ldr r0, [r0]
	adds r1, r4, #0
	bl sub_8025870
	strb r0, [r6]
	ldr r1, _0800F428
	ldrb r0, [r6]
	subs r5, r5, r0
	asrs r5, r5, #1
	lsls r5, r5, #0x10
	str r5, [r1]
	ldr r1, _0800F42C
	ldrb r0, [r6]
	rsbs r0, r0, #0
	lsls r0, r0, #0x10
	str r0, [r1]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800F404: .4byte 0x02001190
_0800F408: .4byte 0x080B01B8
_0800F40C: .4byte 0x020011A4
_0800F410: .4byte 0x0200111A
_0800F414: .4byte 0x02001188
_0800F418: .4byte 0x020011B8
_0800F41C: .4byte 0x020011C0
_0800F420: .4byte 0x0200111B
_0800F424: .4byte 0x0200118C
_0800F428: .4byte 0x020011BC
_0800F42C: .4byte 0x020011C4

    .thumb
    .global sub_800F430
sub_800F430: @ 0x0800F430
	push {r4, r5, r6, r7, lr}
	ldr r6, _0800F44C
	ldrb r0, [r6]
	cmp r0, #0
	bne _0800F43C
	b _0800F76A
_0800F43C:
	adds r1, r0, #0
	cmp r1, #2
	beq _0800F4D8
	cmp r1, #2
	bgt _0800F450
	cmp r1, #1
	beq _0800F458
	b _0800F76A
	.align 2, 0
_0800F44C: .4byte byte_200110C
_0800F450:
	cmp r1, #3
	bne _0800F456
	b _0800F6C8
_0800F456:
	b _0800F76A
_0800F458:
	ldr r0, _0800F4B0
	ldrb r0, [r0]
	cmp r0, #0
	bne _0800F462
	b _0800F6F8
_0800F462:
	ldr r0, _0800F4B4
	ldrb r0, [r0]
	cmp r0, #0
	bne _0800F46C
	b _0800F6F8
_0800F46C:
	movs r0, #2
	strb r0, [r6]
	ldr r0, _0800F4B8
	ldr r3, [r0]
	cmp r3, #0
	beq _0800F492
	ldr r0, _0800F4BC
	ldr r1, _0800F4C0
	movs r2, #2
	ldrsh r1, [r1, r2]
	movs r2, #0
	strh r1, [r0]
	ldr r1, _0800F4C4
	ldrb r1, [r1]
	strh r1, [r0, #2]
	strh r2, [r0, #0xc]
	adds r1, r3, #0
	bl AddStringToBuffer
_0800F492:
	ldr r0, _0800F4C8
	ldr r1, _0800F4CC
	movs r3, #2
	ldrsh r1, [r1, r3]
	movs r2, #0
	strh r1, [r0]
	ldr r1, _0800F4D0
	ldrb r1, [r1]
	strh r1, [r0, #2]
	strh r2, [r0, #0xc]
	ldr r1, _0800F4D4
	ldr r1, [r1]
	bl AddStringToBuffer
	b _0800F76A
	.align 2, 0
_0800F4B0: .4byte 0x02001120
_0800F4B4: .4byte 0x0200111F
_0800F4B8: .4byte 0x0200118C
_0800F4BC: .4byte 0x020011A4
_0800F4C0: .4byte 0x020011C4
_0800F4C4: .4byte 0x0200111E
_0800F4C8: .4byte 0x02001190
_0800F4CC: .4byte 0x020011C0
_0800F4D0: .4byte 0x0200111D
_0800F4D4: .4byte 0x02001188
_0800F4D8:
	ldr r0, _0800F544
	ldrb r4, [r0]
	cmp r4, #0
	beq _0800F4E2
	b _0800F608
_0800F4E2:
	ldr r0, _0800F548
	ldrh r0, [r0]
	movs r7, #1
	movs r5, #1
	ands r5, r0
	cmp r5, #0
	beq _0800F574
	ldr r0, _0800F54C
	ldrb r0, [r0]
	cmp r0, #0
	beq _0800F51E
	ldr r2, _0800F550
	movs r5, #0xcf
	lsls r5, r5, #3
	adds r0, r2, r5
	ldrh r0, [r0]
	ldr r3, _0800F554
	adds r5, #2
	adds r1, r2, r5
	ldrb r3, [r3]
	adds r1, r1, r3
	ldrb r1, [r1]
	ldr r3, _0800F558
	adds r2, r2, r3
	ldr r2, [r2]
	movs r5, #0x80
	lsls r5, r5, #9
	adds r2, r2, r5
	bl audio_new_fx
_0800F51E:
	ldr r0, _0800F55C
	strb r7, [r0]
	movs r0, #3
	strb r0, [r6]
	ldr r0, _0800F560
	movs r1, #0xfa
	lsls r1, r1, #0x10
	str r1, [r0]
	ldr r0, _0800F564
	str r1, [r0]
	ldr r0, _0800F568
	strb r4, [r0]
	ldr r0, _0800F56C
	ldr r0, [r0]
	cmp r0, #0
	beq _0800F5FC
	ldr r0, _0800F570
	strb r4, [r0]
	b _0800F668
	.align 2, 0
_0800F544: .4byte 0x02001121
_0800F548: .4byte gKeysDown
_0800F54C: .4byte gCanPlaySfx
_0800F550: .4byte 0x080CE440
_0800F554: .4byte gSfxVolume
_0800F558: .4byte 0x0000067C
_0800F55C: .4byte 0x0200111C
_0800F560: .4byte 0x020011B8
_0800F564: .4byte 0x020011BC
_0800F568: .4byte 0x0200111F
_0800F56C: .4byte 0x0200118C
_0800F570: .4byte 0x02001120
_0800F574:
	ands r1, r0
	cmp r1, #0
	beq _0800F668
	ldr r0, _0800F5D0
	ldrb r0, [r0]
	cmp r0, #0
	beq _0800F5A8
	ldr r2, _0800F5D4
	movs r1, #0xd0
	lsls r1, r1, #3
	adds r0, r2, r1
	ldrh r0, [r0]
	ldr r3, _0800F5D8
	ldr r4, _0800F5DC
	adds r1, r2, r4
	ldrb r3, [r3]
	adds r1, r1, r3
	ldrb r1, [r1]
	ldr r3, _0800F5E0
	adds r2, r2, r3
	ldr r2, [r2]
	movs r4, #0x80
	lsls r4, r4, #9
	adds r2, r2, r4
	bl audio_new_fx
_0800F5A8:
	ldr r0, _0800F5E4
	strb r5, [r0]
	movs r0, #3
	strb r0, [r6]
	ldr r0, _0800F5E8
	movs r1, #0xfa
	lsls r1, r1, #0x10
	str r1, [r0]
	ldr r0, _0800F5EC
	str r1, [r0]
	ldr r0, _0800F5F0
	strb r5, [r0]
	ldr r0, _0800F5F4
	ldr r0, [r0]
	cmp r0, #0
	beq _0800F5FC
	ldr r0, _0800F5F8
	strb r5, [r0]
	b _0800F668
	.align 2, 0
_0800F5D0: .4byte gCanPlaySfx
_0800F5D4: .4byte 0x080CE440
_0800F5D8: .4byte gSfxVolume
_0800F5DC: .4byte 0x00000682
_0800F5E0: .4byte 0x00000684
_0800F5E4: .4byte 0x0200111C
_0800F5E8: .4byte 0x020011B8
_0800F5EC: .4byte 0x020011BC
_0800F5F0: .4byte 0x0200111F
_0800F5F4: .4byte 0x0200118C
_0800F5F8: .4byte 0x02001120
_0800F5FC:
	ldr r0, _0800F604
	strb r7, [r0]
	b _0800F668
	.align 2, 0
_0800F604: .4byte 0x02001120
_0800F608:
	ldr r1, _0800F63C
	ldrb r0, [r1]
	adds r2, r0, #0
	cmp r2, #0
	bne _0800F664
	ldr r0, _0800F640
	movs r3, #1
	strb r3, [r0]
	movs r0, #3
	strb r0, [r6]
	ldr r0, _0800F644
	movs r1, #0xfa
	lsls r1, r1, #0x10
	str r1, [r0]
	ldr r0, _0800F648
	str r1, [r0]
	ldr r0, _0800F64C
	strb r2, [r0]
	ldr r0, _0800F650
	ldr r0, [r0]
	cmp r0, #0
	beq _0800F658
	ldr r0, _0800F654
	strb r2, [r0]
	b _0800F668
	.align 2, 0
_0800F63C: .4byte 0x02001122
_0800F640: .4byte 0x0200111C
_0800F644: .4byte 0x020011B8
_0800F648: .4byte 0x020011BC
_0800F64C: .4byte 0x0200111F
_0800F650: .4byte 0x0200118C
_0800F654: .4byte 0x02001120
_0800F658:
	ldr r0, _0800F660
	strb r3, [r0]
	b _0800F668
	.align 2, 0
_0800F660: .4byte 0x02001120
_0800F664:
	subs r0, #1
	strb r0, [r1]
_0800F668:
	ldr r0, _0800F6A8
	ldr r1, _0800F6AC
	movs r5, #2
	ldrsh r1, [r1, r5]
	movs r4, #0
	strh r1, [r0]
	ldr r1, _0800F6B0
	ldrb r1, [r1]
	strh r1, [r0, #2]
	strh r4, [r0, #0xc]
	ldr r1, _0800F6B4
	ldr r1, [r1]
	bl AddStringToBuffer
	ldr r0, _0800F6B8
	ldr r2, [r0]
	cmp r2, #0
	beq _0800F76A
	ldr r0, _0800F6BC
	ldr r1, _0800F6C0
	movs r3, #2
	ldrsh r1, [r1, r3]
	strh r1, [r0]
	ldr r1, _0800F6C4
	ldrb r1, [r1]
	strh r1, [r0, #2]
	strh r4, [r0, #0xc]
	adds r1, r2, #0
	bl AddStringToBuffer
	b _0800F76A
	.align 2, 0
_0800F6A8: .4byte 0x02001190
_0800F6AC: .4byte 0x020011C0
_0800F6B0: .4byte 0x0200111D
_0800F6B4: .4byte 0x02001188
_0800F6B8: .4byte 0x0200118C
_0800F6BC: .4byte 0x020011A4
_0800F6C0: .4byte 0x020011C4
_0800F6C4: .4byte 0x0200111E
_0800F6C8:
	ldr r0, _0800F6E8
	ldrb r0, [r0]
	cmp r0, #0
	beq _0800F6F8
	ldr r0, _0800F6EC
	ldrb r0, [r0]
	cmp r0, #0
	beq _0800F6F8
	movs r0, #0
	strb r0, [r6]
	ldr r0, _0800F6F0
	ldr r1, [r0]
	ldr r0, _0800F6F4
	ldrb r0, [r0]
	str r0, [r1]
	b _0800F76A
	.align 2, 0
_0800F6E8: .4byte 0x02001120
_0800F6EC: .4byte 0x0200111F
_0800F6F0: .4byte 0x020011C8
_0800F6F4: .4byte 0x0200111C
_0800F6F8:
	ldr r0, _0800F770
	ldr r3, [r0]
	cmp r3, #0
	beq _0800F734
	ldr r0, _0800F774
	ldr r4, _0800F778
	movs r5, #2
	ldrsh r1, [r4, r5]
	movs r2, #0
	strh r1, [r0]
	ldr r1, _0800F77C
	ldrb r1, [r1]
	strh r1, [r0, #2]
	strh r2, [r0, #0xc]
	adds r1, r3, #0
	bl AddStringToBuffer
	ldr r0, [r4]
	movs r1, #0x80
	lsls r1, r1, #0xb
	adds r0, r0, r1
	str r0, [r4]
	ldr r1, _0800F780
	ldr r1, [r1]
	cmp r0, r1
	blt _0800F734
	str r1, [r4]
	ldr r1, _0800F784
	movs r0, #1
	strb r0, [r1]
_0800F734:
	ldr r0, _0800F788
	ldr r4, _0800F78C
	movs r2, #2
	ldrsh r1, [r4, r2]
	movs r2, #0
	strh r1, [r0]
	ldr r1, _0800F790
	ldrb r1, [r1]
	strh r1, [r0, #2]
	strh r2, [r0, #0xc]
	ldr r1, _0800F794
	ldr r1, [r1]
	bl AddStringToBuffer
	ldr r0, [r4]
	movs r3, #0x80
	lsls r3, r3, #0xb
	adds r0, r0, r3
	str r0, [r4]
	ldr r1, _0800F798
	ldr r1, [r1]
	cmp r0, r1
	blt _0800F76A
	str r1, [r4]
	ldr r1, _0800F79C
	movs r0, #1
	strb r0, [r1]
_0800F76A:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800F770: .4byte 0x0200118C
_0800F774: .4byte 0x020011A4
_0800F778: .4byte 0x020011C4
_0800F77C: .4byte 0x0200111E
_0800F780: .4byte 0x020011BC
_0800F784: .4byte 0x02001120
_0800F788: .4byte 0x02001190
_0800F78C: .4byte 0x020011C0
_0800F790: .4byte 0x0200111D
_0800F794: .4byte 0x02001188
_0800F798: .4byte 0x020011B8
_0800F79C: .4byte 0x0200111F

    .thumb
	.global sub_800F7A0
sub_800F7A0: @ 0x0800F7A0
	push {r4, lr}
	ldr r3, _0800F7F4
	ldrb r2, [r3, #0x13]
	ldrb r1, [r3, #0x15]
	ldrb r0, [r3, #0x14]
	adds r0, #1
	muls r1, r0, r1
	cmp r2, r1
	bge _0800F7EC
	strb r1, [r3, #0x13]
	ldrb r1, [r3, #0x13]
	movs r0, #0x38
	bl sub_08040204
	ldr r0, _0800F7F8
	ldrb r0, [r0]
	cmp r0, #0
	beq _0800F7EC
	ldr r3, _0800F7FC
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r3, r1
	ldrh r0, [r0]
	ldr r2, _0800F800
	movs r4, #0xa1
	lsls r4, r4, #1
	adds r1, r3, r4
	ldrb r2, [r2]
	adds r1, r1, r2
	ldrb r1, [r1]
	adds r4, #2
	adds r2, r3, r4
	ldr r2, [r2]
	movs r3, #0x80
	lsls r3, r3, #9
	adds r2, r2, r3
	bl audio_new_fx
_0800F7EC:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800F7F4: .4byte gGameStatus
_0800F7F8: .4byte gCanPlaySfx
_0800F7FC: .4byte 0x080CE440
_0800F800: .4byte gSfxVolume

    .thumb
	.global IsGameComplete
IsGameComplete: @ 0x0800F804
	push {r4, lr}
	movs r3, #0
	ldr r1, _0800F828
	ldr r2, _0800F82C
	ldrh r0, [r1, #0xc]
	ldrh r4, [r2, #0xc]
	cmp r0, r4
	bne _0800F81E
	ldrh r0, [r1]
	ldrh r2, [r2]
	cmp r0, r2
	bne _0800F81E
	movs r3, #1
_0800F81E:
	adds r0, r3, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0800F828: .4byte gGameStatus
_0800F82C: .4byte 0x080CC8C4

