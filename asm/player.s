
    .syntax unified
    
    .text

    .thumb
sub_0800B04C: @ 0x0800B04C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x78
	adds r5, r0, #0
	adds r6, r1, #0
	mov r8, r2
	ldr r1, _0800B0C4
	ldr r0, [r1, #0x38]
	str r0, [sp]
	ldr r0, [r1, #0x3c]
	str r0, [sp, #4]
	ldr r0, [r1, #0x40]
	str r0, [sp, #8]
	mov r0, sp
	mov r1, sp
	bl sub_800395C
	adds r4, r0, #0
	asrs r1, r4, #8
	ldr r0, _0800B0C8
	cmp r1, r0
	bgt _0800B0D0
	adds r0, r5, #0
	mov r1, sp
	bl sub_800395C
	lsls r0, r0, #8
	lsls r1, r4, #8
	bl sub_800392C
	adds r1, r0, #0
	ldr r0, [sp]
	lsls r0, r0, #8
	str r0, [sp]
	ldr r0, [sp, #4]
	lsls r0, r0, #8
	str r0, [sp, #4]
	ldr r0, [sp, #8]
	lsls r0, r0, #8
	str r0, [sp, #8]
	mov r0, sp
	bl sub_8003994
	ldr r0, [sp]
	asrs r0, r0, #0x10
	bl Abs
	ldr r4, _0800B0CC
	cmp r0, r4
	bhi _0800B0BE
	ldr r0, [sp, #8]
	asrs r0, r0, #0x10
	bl Abs
	cmp r0, r4
	bls _0800B110
_0800B0BE:
	.2byte 0xEE00, 0xEE00
	b _0800B110
	.align 2, 0
_0800B0C4: .4byte 0x030029A4
_0800B0C8: .4byte 0x00007FFF
_0800B0CC: .4byte 0x0000FFFF
_0800B0D0:
	adds r0, r5, #0
	mov r1, sp
	bl sub_800395C
	adds r1, r4, #0
	bl sub_8003934
	adds r1, r0, #0
	mov r0, sp
	bl sub_800399C
	ldr r0, [sp]
	asrs r0, r0, #8
	bl Abs
	ldr r4, _0800B194
	cmp r0, r4
	bhi _0800B100
	ldr r0, [sp, #8]
	asrs r0, r0, #8
	bl Abs
	cmp r0, r4
	bls _0800B104
_0800B100:
	.2byte 0xEE00, 0xEE00
_0800B104:
	ldr r0, [sp]
	lsls r0, r0, #8
	str r0, [sp]
	ldr r0, [sp, #8]
	lsls r0, r0, #8
	str r0, [sp, #8]
_0800B110:
	ldr r0, _0800B198
	ldr r0, [r0]
	mov r1, sp
	adds r2, r5, #0
	bl sub_80038CC
	ldr r7, _0800B19C
	ldr r2, [r7]
	ldr r0, [r5]
	adds r2, r2, r0
	str r2, [r6]
	ldr r0, [r7, #8]
	ldr r1, [r5, #8]
	adds r0, r0, r1
	str r0, [r6, #8]
	mov r0, r8
	str r2, [r0]
	ldr r0, [r6, #8]
	mov r1, r8
	str r0, [r1, #8]
	add r5, sp, #0x18
	ldr r2, _0800B1A0
	adds r0, r5, #0
	adds r1, r6, #0
	movs r3, #0
	bl sub_80039CC
	add r1, sp, #0xc
	ldr r0, [r6]
	ldr r2, [r7]
	subs r0, r0, r2
	str r0, [sp, #0xc]
	ldr r0, [r6, #4]
	ldr r2, [r7, #4]
	subs r0, r0, r2
	str r0, [r1, #4]
	ldr r0, [r6, #8]
	ldr r2, [r7, #8]
	subs r0, r0, r2
	str r0, [r1, #8]
	adds r0, r5, #0
	bl sub_8006974
	ldr r4, _0800B1A4
	ldr r6, _0800B1A8
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r6, #0
	bl sub_8006FFC
	ldrb r0, [r4]
	cmp r0, #0
	bne _0800B1B0
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_8007434
	ldrb r0, [r6, #2]
	cmp r0, #0xa
	bne _0800B190
	ldr r0, _0800B1AC
	ldrb r0, [r0]
	cmp r0, #0
	beq _0800B1DC
_0800B190:
	movs r0, #1
	b _0800B1DE
	.align 2, 0
_0800B194: .4byte 0x0000FFFF
_0800B198: .4byte dword_2000FC8
_0800B19C: .4byte gPlayerPos
_0800B1A0: .4byte 0x0300331C
_0800B1A4: .4byte 0x030029A4
_0800B1A8: .4byte 0x030028FC
_0800B1AC: .4byte 0x03003588
_0800B1B0:
	ldr r1, _0800B1EC
	ldr r0, _0800B1F0
	ldrh r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r1
	cmp r0, #0
	beq _0800B1DC
	ldr r1, _0800B1F4
	ldr r0, [r7]
	str r0, [r1]
	ldr r0, [r7, #8]
	str r0, [r1, #8]
	ldr r2, _0800B1F8
	ldr r1, _0800B1FC
	ldr r0, [r1]
	str r0, [r2]
	ldr r0, [r1, #8]
	str r0, [r2, #8]
_0800B1DC:
	movs r0, #0
_0800B1DE:
	add sp, #0x78
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0800B1EC: .4byte gPlayerStateSettings
_0800B1F0: .4byte gPlayerState
_0800B1F4: .4byte 0x03003328
_0800B1F8: .4byte 0x03003334
_0800B1FC: .4byte gPlayerShadowPos

    .thumb
    .global update_player
update_player: @ 0x0800B200
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x84
	ldr r5, _0800B244
	ldr r6, _0800B248
	add r4, sp, #0x78
	adds r0, r5, #0
	adds r1, r6, #0
	adds r2, r4, #0
	mov r3, sp
	bl sub_800AA6C
	adds r0, r5, #0
	bl sub_802ADE8
	mov sb, r4
	cmp r0, #0
	beq _0800B22A
	b _0800B592
_0800B22A:
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_800A740
	ldr r0, _0800B24C
	ldrb r0, [r0]
	cmp r0, #3
	beq _0800B254
	ldr r1, _0800B250
	movs r2, #0x80
	lsls r2, r2, #0xb
	b _0800B25A
	.align 2, 0
_0800B244: .4byte 0x03003328
_0800B248: .4byte 0x03003334
_0800B24C: .4byte byte_20020B1
_0800B250: .4byte 0x0300331C
_0800B254:
	ldr r1, _0800B2A4
	movs r2, #0x80
	lsls r2, r2, #0xc
_0800B25A:
	str r2, [r1]
	ldr r0, _0800B2A8
	ldr r0, [r0]
	str r0, [r1, #4]
	str r2, [r1, #8]
	adds r2, r1, #0
	add r4, sp, #0xc
	ldr r6, _0800B2AC
	adds r0, r4, #0
	adds r1, r6, #0
	movs r3, #0
	bl sub_80039CC
	adds r0, r4, #0
	mov r1, sp
	bl sub_8006974
	ldr r0, _0800B2B0
	mov r8, r0
	ldr r7, _0800B2B4
	ldrh r0, [r7]
	lsls r0, r0, #1
	add r0, r8
	ldrh r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0800B2BC
	ldr r1, _0800B2B8
	adds r0, r6, #0
	bl sub_800AB54
	cmp r0, #0
	bne _0800B2A0
	b _0800B592
_0800B2A0:
	b _0800B542
	.align 2, 0
_0800B2A4: .4byte 0x0300331C
_0800B2A8: .4byte 0x03003308
_0800B2AC: .4byte 0x03003328
_0800B2B0: .4byte gPlayerStateSettings
_0800B2B4: .4byte gPlayerState
_0800B2B8: .4byte 0x03003334
_0800B2BC:
	ldr r5, _0800B314
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_08009208
	ldrb r0, [r5]
	cmp r0, #0
	bne _0800B2E6
	add r0, sp, #0x6c
	ldr r1, [r6]
	str r1, [sp, #0x6c]
	ldr r1, [r6, #4]
	movs r2, #0xa0
	lsls r2, r2, #0xb
	adds r1, r1, r2
	str r1, [r0, #4]
	ldr r1, [r6, #8]
	str r1, [r0, #8]
	adds r1, r5, #0
	bl sub_08009208
_0800B2E6:
	ldrh r0, [r7]
	lsls r0, r0, #1
	add r0, r8
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r1
	cmp r0, #0
	beq _0800B32C
	ldr r0, _0800B318
	ldr r0, [r0]
	bl sub_80038BC
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	beq _0800B320
	ldr r1, _0800B31C
	adds r0, r4, #0
	bl sub_8007434
	b _0800B334
	.align 2, 0
_0800B314: .4byte stru_3002950
_0800B318: .4byte dword_2000FC8
_0800B31C: .4byte 0x030028FC
_0800B320:
	ldr r0, _0800B328
	strb r1, [r0]
	b _0800B334
	.align 2, 0
_0800B328: .4byte 0x030028FC
_0800B32C:
	ldr r1, _0800B3A8
	adds r0, r4, #0
	bl sub_8007434
_0800B334:
	ldr r1, _0800B3AC
	ldr r0, _0800B3B0
	ldrh r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r1
	cmp r0, #0
	bne _0800B374
	ldr r3, _0800B3A8
	ldrb r0, [r3]
	cmp r0, #0
	bne _0800B374
	ldr r1, [r3, #0x2c]
	movs r0, #0xb4
	lsls r0, r0, #0xf
	cmp r1, r0
	beq _0800B374
	ldr r2, _0800B3B4
	ldr r0, [r2, #0x2c]
	cmp r0, r1
	bne _0800B36C
	ldr r1, [r2, #0x28]
	ldr r0, [r3, #0x28]
	cmp r1, r0
	beq _0800B374
_0800B36C:
	adds r0, r4, #0
	adds r1, r3, #0
	bl sub_08007890
_0800B374:
	ldr r6, _0800B3B8
	ldr r5, _0800B3A8
	adds r0, r4, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl sub_8006FFC
	adds r0, r4, #0
	bl sub_8007AC4
	ldr r2, _0800B3B4
	ldrb r0, [r2]
	cmp r0, #0
	bne _0800B3D8
	ldrb r0, [r5]
	ldr r1, _0800B3BC
	cmp r0, #0
	bne _0800B39E
	ldr r0, [r1]
	cmp r0, #0
	ble _0800B3C0
_0800B39E:
	movs r0, #1
	strb r0, [r2]
	ldr r0, [r1]
	subs r0, #1
	b _0800B3DC
	.align 2, 0
_0800B3A8: .4byte 0x030028FC
_0800B3AC: .4byte gPlayerStateSettings
_0800B3B0: .4byte gPlayerState
_0800B3B4: .4byte stru_3002950
_0800B3B8: .4byte 0x030029A4
_0800B3BC: .4byte 0x020011FC
_0800B3C0:
	ldrb r0, [r6]
	cmp r0, #0
	bne _0800B3DE
	ldr r0, _0800B3D4
	ldr r0, [r0]
	cmp r0, #0
	bne _0800B3D0
	b _0800B592
_0800B3D0:
	b _0800B3DE
	.align 2, 0
_0800B3D4: .4byte dword_203DFC4
_0800B3D8:
	ldr r1, _0800B470
	movs r0, #1
_0800B3DC:
	str r0, [r1]
_0800B3DE:
	ldr r5, _0800B474
	ldr r6, _0800B478
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_800A7DC
	cmp r0, #0
	beq _0800B3F0
	b _0800B542
_0800B3F0:
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_800ABD4
	cmp r0, #0
	bne _0800B3FE
	b _0800B592
_0800B3FE:
	bl sub_800AD64
	ldr r1, _0800B47C
	ldr r0, _0800B480
	ldrh r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r1
	cmp r0, #0
	bne _0800B490
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0800B490
	bl sub_800E61C
	ldr r0, _0800B484
	ldrb r0, [r0]
	cmp r0, #0
	beq _0800B440
	mov r0, sb
	adds r1, r5, #0
	adds r2, r6, #0
	adds r3, r4, #0
	bl sub_0800B04C
	cmp r0, #0
	bne _0800B440
	b _0800B542
_0800B440:
	adds r0, r5, #0
	adds r1, r6, #0
	mov r2, sp
	adds r3, r4, #0
	bl sub_800ADAC
	cmp r0, #0
	beq _0800B542
	ldr r1, _0800B488
	ldr r0, [r5]
	str r0, [r1]
	ldr r0, [r5, #4]
	str r0, [r1, #4]
	ldr r0, [r5, #8]
	str r0, [r1, #8]
	ldr r1, _0800B48C
	ldr r0, [r6]
	str r0, [r1]
	ldr r0, [r6, #4]
	str r0, [r1, #4]
	ldr r0, [r6, #8]
	str r0, [r1, #8]
	b _0800B542
	.align 2, 0
_0800B470: .4byte 0x020011FC
_0800B474: .4byte 0x03003328
_0800B478: .4byte 0x03003334
_0800B47C: .4byte gPlayerStateSettings
_0800B480: .4byte gPlayerState
_0800B484: .4byte 0x030029A4
_0800B488: .4byte gPlayerPos
_0800B48C: .4byte gPlayerShadowPos
_0800B490:
	bl sub_0800A8B4
	cmp r0, #0
	bne _0800B592
	ldr r7, _0800B5A0
	ldrb r0, [r7]
	cmp r0, #0
	beq _0800B4AC
	ldr r1, _0800B5A4
	ldr r2, _0800B5A8
	mov r0, sb
	adds r3, r4, #0
	bl sub_0800B04C
_0800B4AC:
	ldr r1, _0800B5AC
	ldr r0, _0800B5B0
	ldrh r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	ldr r5, _0800B5A4
	ldr r6, _0800B5A8
	cmp r0, #0
	beq _0800B4E0
	ldrb r0, [r7]
	cmp r0, #0
	beq _0800B4E0
	ldr r1, _0800B5B4
	ldr r0, [r1]
	str r0, [r5]
	ldr r0, [r1, #8]
	str r0, [r5, #8]
	ldr r1, _0800B5B8
	ldr r0, [r1]
	str r0, [r6]
	ldr r0, [r1, #8]
	str r0, [r6, #8]
_0800B4E0:
	adds r0, r5, #0
	adds r1, r6, #0
	adds r2, r4, #0
	bl sub_800AEFC
	cmp r0, #0
	beq _0800B542
	ldr r4, _0800B5B4
	ldr r0, [r5]
	str r0, [r4]
	ldr r0, [r5, #4]
	str r0, [r4, #4]
	ldr r0, [r5, #8]
	str r0, [r4, #8]
	ldr r1, _0800B5B8
	ldr r0, [r6]
	str r0, [r1]
	ldr r0, [r6, #4]
	str r0, [r1, #4]
	ldr r0, [r6, #8]
	str r0, [r1, #8]
	ldr r0, _0800B5BC
	ldrb r0, [r0]
	cmp r0, #0
	beq _0800B542
	ldr r5, _0800B5C0
	ldr r0, [r5]
	bl sub_80038BC
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0800B542
	ldr r1, _0800B5AC
	ldr r0, _0800B5B0
	ldrh r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0800B542
	ldr r0, [r5]
	bl sub_800387C
	adds r0, r4, #4
	bl sub_80181B8
_0800B542:
	ldr r0, _0800B5C4
	ldrb r0, [r0]
	cmp r0, #0
	bne _0800B592
	ldr r2, _0800B5C8
	ldr r0, _0800B5B4
	ldr r1, _0800B5CC
	ldr r6, [r1]
	asrs r6, r6, #1
	ldr r5, [r0]
	subs r1, r5, r6
	str r1, [r2]
	ldr r4, [r0, #4]
	mov r8, r4
	str r4, [r2, #4]
	ldr r1, _0800B5D0
	ldr r4, [r1]
	asrs r4, r4, #1
	ldr r3, [r0, #8]
	subs r1, r3, r4
	str r1, [r2, #8]
	ldr r2, _0800B5D4
	adds r5, r5, r6
	str r5, [r2]
	ldr r1, _0800B5D8
	ldr r1, [r1]
	add r8, r1
	mov r1, r8
	str r1, [r2, #4]
	adds r3, r3, r4
	str r3, [r2, #8]
	ldr r1, _0800B5DC
	ldr r1, [r1]
	ldr r2, _0800B5E0
	ldr r2, [r2]
	ldr r3, _0800B5E4
	movs r4, #0
	ldrsh r3, [r3, r4]
	bl CameraUpdate
_0800B592:
	add sp, #0x84
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800B5A0: .4byte 0x030029A4
_0800B5A4: .4byte 0x03003328
_0800B5A8: .4byte 0x03003334
_0800B5AC: .4byte gPlayerStateSettings
_0800B5B0: .4byte gPlayerState
_0800B5B4: .4byte gPlayerPos
_0800B5B8: .4byte gPlayerShadowPos
_0800B5BC: .4byte 0x030029F8
_0800B5C0: .4byte dword_2000FC8
_0800B5C4: .4byte gIsSlideMiniGame
_0800B5C8: .4byte 0x030032E8
_0800B5CC: .4byte 0x03003300
_0800B5D0: .4byte 0x03003304
_0800B5D4: .4byte 0x030032F4
_0800B5D8: .4byte 0x03003308
_0800B5DC: .4byte 0x02001110
_0800B5E0: .4byte 0x02001114
_0800B5E4: .4byte 0x02002EC2

    .thumb
CameraUpdate: @ 0x0800B5E8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	mov r8, r1
	mov sl, r2
	ldr r6, _0800B650
	ldr r5, [r6]
	ldr r1, _0800B654
	mov sb, r1
	ldr r7, [r1]
	str r7, [sp]
	ldr r4, _0800B658
	mov r1, r8
	lsls r2, r1, #0x10
	ldr r1, [r0]
	adds r1, r1, r2
	str r1, [r4]
	ldr r4, _0800B65C
	ldr r1, _0800B660
	ldrh r2, [r1]
	lsls r2, r2, #0x10
	ldr r1, [r0, #4]
	ldr r0, [r0, #8]
	adds r1, r1, r0
	mov r7, sl
	lsls r0, r7, #0x10
	adds r1, r1, r0
	lsls r0, r3, #0x10
	adds r1, r1, r0
	subs r2, r2, r1
	str r2, [r4]
	adds r0, r3, #0
	bl CameraMove
	ldr r0, [r6]
	subs r5, r5, r0
	movs r6, #1
	cmp r5, #0
	bge _0800B63E
	movs r6, #2
_0800B63E:
	mov r1, sb
	ldr r0, [r1]
	ldr r7, [sp]
	subs r0, r7, r0
	cmp r0, #0
	bge _0800B664
	movs r0, #8
	b _0800B666
	.align 2, 0
_0800B650: .4byte 0x0300330C
_0800B654: .4byte 0x03003310
_0800B658: .4byte 0x03003314
_0800B65C: .4byte 0x03003318
_0800B660: .4byte gMapPixelSizeY
_0800B664:
	movs r0, #4
_0800B666:
	orrs r6, r0
	ldr r2, _0800B6C4
	ldr r0, _0800B6C8
	ldr r5, _0800B6CC
	ldr r0, [r0]
	ldr r1, [r5]
	subs r0, r0, r1
	asrs r0, r0, #0x10
	adds r0, #0x78
	mov r1, r8
	subs r4, r0, r1
	strh r4, [r2, #6]
	ldr r0, _0800B6D0
	ldr r1, _0800B6D4
	ldr r0, [r0]
	ldr r1, [r1]
	subs r0, r0, r1
	asrs r0, r0, #0x10
	adds r0, #0x50
	mov r7, sl
	adds r3, r0, r7
	strb r3, [r2, #8]
	ldr r2, _0800B6D8
	strh r4, [r2, #6]
	ldr r0, _0800B6DC
	ldr r1, _0800B6E0
	ldr r0, [r0, #4]
	ldr r1, [r1, #4]
	subs r0, r0, r1
	asrs r0, r0, #0x10
	adds r0, r3, r0
	strb r0, [r2, #8]
	ldr r0, _0800B6E4
	ldrb r0, [r0]
	cmp r0, #0
	beq _0800B6B4
	ldr r0, _0800B6E8
	strh r4, [r0, #6]
	strb r3, [r0, #8]
_0800B6B4:
	movs r0, #1
	ands r0, r6
	cmp r0, #0
	beq _0800B6EC
	ldr r0, [r5]
	bl UpdateMapLeft
	b _0800B6FA
	.align 2, 0
_0800B6C4: .4byte gPlayerSprite
_0800B6C8: .4byte 0x03003314
_0800B6CC: .4byte 0x0300330C
_0800B6D0: .4byte 0x03003318
_0800B6D4: .4byte 0x03003310
_0800B6D8: .4byte gPlayerShadowSprite
_0800B6DC: .4byte gPlayerPos
_0800B6E0: .4byte gPlayerShadowPos
_0800B6E4: .4byte 0x020010AF
_0800B6E8: .4byte 0x02000FAC
_0800B6EC:
	movs r0, #2
	ands r0, r6
	cmp r0, #0
	beq _0800B6FA
	ldr r0, [r5]
	bl UpdateMapRight
_0800B6FA:
	movs r0, #4
	ands r0, r6
	cmp r0, #0
	beq _0800B710
	ldr r0, _0800B70C
	ldr r0, [r0]
	bl UpdateMapUp
	b _0800B720
	.align 2, 0
_0800B70C: .4byte 0x03003310
_0800B710:
	movs r0, #8
	ands r6, r0
	cmp r6, #0
	beq _0800B720
	ldr r0, _0800B730
	ldr r0, [r0]
	bl UpdateMapDown
_0800B720:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800B730: .4byte 0x03003310

    .thumb
CameraMove: @ 0x0800B734
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	ldr r7, _0800B764
	movs r0, #0
	strb r0, [r7]
	ldr r6, _0800B768
	ldr r1, [r6]
	ldr r5, _0800B76C
	ldr r0, [r5]
	subs r4, r1, r0
	adds r0, r4, #0
	bl Abs
	adds r1, r0, #0
	ldr r0, _0800B770
	cmp r1, r0
	bgt _0800B774
	ldr r0, [r5]
	str r0, [r6]
	movs r1, #0
	b _0800B780
	.align 2, 0
_0800B764: .4byte 0x02001118
_0800B768: .4byte 0x0300330C
_0800B76C: .4byte 0x03003314
_0800B770: .4byte 0x0000FFFF
_0800B774:
	adds r0, r4, #0
	bl CameraGetVelocity
	adds r1, r0, #0
	movs r0, #1
	strb r0, [r7]
_0800B780:
	ldr r3, _0800B79C
	ldr r0, [r3]
	adds r0, r0, r1
	str r0, [r3]
	asrs r2, r0, #0x10
	adds r1, r2, #0
	adds r1, #0x78
	ldr r0, _0800B7A0
	ldrh r0, [r0]
	cmp r1, r0
	blt _0800B7A4
	subs r0, #0x78
	lsls r0, r0, #0x10
	b _0800B7B0
	.align 2, 0
_0800B79C: .4byte 0x0300330C
_0800B7A0: .4byte gMapPixelSizeX
_0800B7A4:
	adds r0, r2, #0
	subs r0, #0x78
	cmp r0, #0
	bge _0800B7B8
	movs r0, #0xf0
	lsls r0, r0, #0xf
_0800B7B0:
	str r0, [r3]
	ldr r1, _0800B7E0
	movs r0, #0
	strb r0, [r1]
_0800B7B8:
	ldr r7, _0800B7E4
	movs r0, #0
	strb r0, [r7]
	ldr r6, _0800B7E8
	ldr r1, [r6]
	ldr r5, _0800B7EC
	ldr r0, [r5]
	subs r4, r1, r0
	adds r0, r4, #0
	bl Abs
	adds r1, r0, #0
	ldr r0, _0800B7F0
	cmp r1, r0
	bgt _0800B7F4
	ldr r0, [r5]
	str r0, [r6]
	movs r1, #0
	b _0800B800
	.align 2, 0
_0800B7E0: .4byte 0x02001118
_0800B7E4: .4byte 0x02001119
_0800B7E8: .4byte 0x03003310
_0800B7EC: .4byte 0x03003318
_0800B7F0: .4byte 0x0000FFFF
_0800B7F4:
	adds r0, r4, #0
	bl CameraGetVelocity
	adds r1, r0, #0
	movs r0, #1
	strb r0, [r7]
_0800B800:
	ldr r3, _0800B838
	ldr r0, [r3]
	adds r0, r0, r1
	str r0, [r3]
	asrs r2, r0, #0x10
	adds r0, r2, #0
	adds r0, #0x50
	ldr r4, _0800B83C
	ldrh r1, [r4]
	cmp r0, r1
	blt _0800B850
	adds r0, r1, #0
	subs r0, #0x50
	add r0, r8
	lsls r0, r0, #0x10
	str r0, [r3]
	asrs r2, r0, #0x10
	adds r0, r2, #0
	adds r0, #0x50
	ldrh r1, [r4]
	cmp r0, r1
	blt _0800B840
	adds r0, r1, #0
	subs r0, #0x50
	lsls r0, r0, #0x10
	str r0, [r3]
	b _0800B884
	.align 2, 0
_0800B838: .4byte 0x03003310
_0800B83C: .4byte gMapPixelSizeY
_0800B840:
	adds r0, r2, #0
	subs r0, #0x50
	cmp r0, #0
	bge _0800B88A
	movs r0, #0xa0
	lsls r0, r0, #0xf
	str r0, [r3]
	b _0800B884
_0800B850:
	adds r0, r2, #0
	subs r0, #0x50
	cmp r0, #0
	bge _0800B88A
	mov r1, r8
	lsls r0, r1, #0x10
	movs r5, #0xa0
	lsls r5, r5, #0xf
	adds r0, r0, r5
	str r0, [r3]
	asrs r2, r0, #0x10
	adds r0, r2, #0
	adds r0, #0x50
	ldrh r1, [r4]
	cmp r0, r1
	blt _0800B87A
	adds r0, r1, #0
	subs r0, #0x50
	lsls r0, r0, #0x10
	str r0, [r3]
	b _0800B884
_0800B87A:
	adds r0, r2, #0
	subs r0, #0x50
	cmp r0, #0
	bge _0800B88A
	str r5, [r3]
_0800B884:
	ldr r1, _0800B894
	movs r0, #0
	strb r0, [r1]
_0800B88A:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800B894: .4byte 0x02001119

    .thumb
CameraGetVelocity: @ 0x0800B898
	push {lr}
	adds r2, r0, #0
	ldr r0, _0800B8B0
	cmp r1, r0
	bgt _0800B8B8
	ldr r0, _0800B8B4
	cmp r2, #0
	bge _0800B94E
	movs r0, #0x80
	lsls r0, r0, #8
	b _0800B94E
	.align 2, 0
_0800B8B0: .4byte 0x00017FFF
_0800B8B4: .4byte 0xFFFF8000
_0800B8B8:
	ldr r0, _0800B8CC
	cmp r1, r0
	bgt _0800B8D4
	ldr r0, _0800B8D0
	cmp r2, #0
	bge _0800B94E
	movs r0, #0xc0
	lsls r0, r0, #9
	b _0800B94E
	.align 2, 0
_0800B8CC: .4byte 0x0001FFFF
_0800B8D0: .4byte 0xFFFE8000
_0800B8D4:
	ldr r0, _0800B8E8
	cmp r1, r0
	bgt _0800B8F0
	ldr r0, _0800B8EC
	cmp r2, #0
	bge _0800B94E
	movs r0, #0x80
	lsls r0, r0, #0xa
	b _0800B94E
	.align 2, 0
_0800B8E8: .4byte 0x00027FFF
_0800B8EC: .4byte 0xFFFE0000
_0800B8F0:
	ldr r0, _0800B904
	cmp r1, r0
	bgt _0800B90C
	ldr r0, _0800B908
	cmp r2, #0
	bge _0800B94E
	movs r0, #0xa0
	lsls r0, r0, #0xa
	b _0800B94E
	.align 2, 0
_0800B904: .4byte 0x0003FFFF
_0800B908: .4byte 0xFFFD8000
_0800B90C:
	ldr r0, _0800B920
	cmp r1, r0
	bgt _0800B928
	ldr r0, _0800B924
	cmp r2, #0
	bge _0800B94E
	movs r0, #0xc0
	lsls r0, r0, #0xa
	b _0800B94E
	.align 2, 0
_0800B920: .4byte 0x0005FFFF
_0800B924: .4byte 0xFFFD0000
_0800B928:
	ldr r0, _0800B93C
	cmp r1, r0
	bgt _0800B944
	ldr r0, _0800B940
	cmp r2, #0
	bge _0800B94E
	movs r0, #0xe0
	lsls r0, r0, #0xa
	b _0800B94E
	.align 2, 0
_0800B93C: .4byte 0x000FFFFF
_0800B940: .4byte 0xFFFC8000
_0800B944:
	ldr r0, _0800B954
	cmp r2, #0
	bge _0800B94E
	movs r0, #0xa0
	lsls r0, r0, #0xb
_0800B94E:
	pop {r1}
	bx r1
	.align 2, 0
_0800B954: .4byte 0xFFFB0000
