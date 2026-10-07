    .thumb
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

