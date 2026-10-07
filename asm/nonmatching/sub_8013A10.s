
    .thumb
sub_8013A10: @ 0x08013A10
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x28
	str r0, [sp]
	str r1, [sp, #4]
	asrs r3, r3, #3
	movs r0, #0x1f
	ands r3, r0
	lsls r3, r3, #5
	asrs r2, r2, #3
	ands r2, r0
	adds r3, r3, r2
	lsls r3, r3, #1
	str r3, [sp, #8]
	ldr r1, _08013A4C
	adds r0, r1, #0
	adds r0, #0x5c
	ldrb r0, [r0]
	str r1, [sp, #0x18]
	cmp r0, #0
	beq _08013A54
	ldr r3, _08013A50
	movs r0, #0
	str r0, [sp, #0xc]
	movs r1, #0
	b _08013A60
	.align 2, 0
_08013A4C: .4byte gRoomHeader
_08013A50: .4byte 0x0600E000
_08013A54:
	ldr r0, _08013B10
	ldr r1, [sp, #8]
	adds r3, r1, r0
	ldr r2, [sp]
	str r2, [sp, #0xc]
	ldr r1, [sp, #4]
_08013A60:
	movs r5, #0xfc
	lsls r5, r5, #9
	ands r5, r3
	str r5, [sp, #0x10]
	ldr r2, [sp, #0x48]
	adds r0, r1, r2
	cmp r1, r0
	bgt _08013AF0
	str r0, [sp, #0x1c]
_08013A72:
	ldr r4, _08013B14
	ands r4, r3
	adds r6, r3, #0
	ldr r2, [sp, #0xc]
	ldr r5, [sp, #0x4c]
	adds r0, r2, r5
	adds r7, r1, #1
	cmp r2, r0
	bge _08013ADC
	ldr r0, _08013B18
	ldr r0, [r0, #0x4c]
	mov sb, r0
	asrs r5, r1, #2
	mov r8, r5
	ldr r0, _08013B1C
	ldr r0, [r0]
	mov ip, r0
	movs r5, #3
	mov sl, r5
	ands r1, r5
	lsls r1, r1, #3
	str r1, [sp, #0x20]
_08013A9E:
	ldr r1, _08013B18
	ldrh r0, [r1, #0xa]
	mov r1, r8
	muls r1, r0, r1
	lsls r1, r1, #1
	add r1, sb
	asrs r0, r2, #2
	lsls r0, r0, #1
	adds r1, r1, r0
	ldrh r1, [r1]
	lsls r1, r1, #5
	add r1, ip
	adds r0, r2, #0
	mov r5, sl
	ands r0, r5
	lsls r0, r0, #1
	ldr r5, [sp, #0x20]
	adds r1, r5, r1
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r3]
	adds r3, #2
	ldr r0, _08013B20
	ands r3, r0
	orrs r3, r4
	adds r2, #1
	ldr r1, [sp, #0xc]
	ldr r5, [sp, #0x4c]
	adds r0, r1, r5
	cmp r2, r0
	blt _08013A9E
_08013ADC:
	adds r3, r6, #0
	adds r3, #0x40
	ldr r0, _08013B24
	ands r3, r0
	ldr r1, [sp, #0x10]
	orrs r3, r1
	adds r1, r7, #0
	ldr r2, [sp, #0x1c]
	cmp r1, r2
	ble _08013A72
_08013AF0:
	ldr r5, [sp, #0x18]
	ldrh r0, [r5, #8]
	cmp r0, #1
	bne _08013AFA
	b _08013DA6
_08013AFA:
	adds r0, r5, #0
	adds r0, #0x5d
	ldrb r0, [r0]
	cmp r0, #0
	beq _08013B2C
	ldr r3, _08013B28
	movs r0, #0
	str r0, [sp, #0xc]
	movs r1, #0
	b _08013B38
	.align 2, 0
_08013B10: .4byte 0x0600E000
_08013B14: .4byte 0x0001FFC0
_08013B18: .4byte gRoomHeader
_08013B1C: .4byte gTileSetBG
_08013B20: .4byte 0xFFFE003F
_08013B24: .4byte 0xFFFE07FF
_08013B28: .4byte 0x0600E800
_08013B2C:
	ldr r1, [sp, #8]
	ldr r2, _08013BF4
	adds r3, r1, r2
	ldr r5, [sp]
	str r5, [sp, #0xc]
	ldr r1, [sp, #4]
_08013B38:
	movs r0, #0xfc
	lsls r0, r0, #9
	ands r0, r3
	str r0, [sp, #0x10]
	ldr r2, [sp, #0x48]
	adds r0, r1, r2
	cmp r1, r0
	bgt _08013BD4
	str r0, [sp, #0x1c]
_08013B4A:
	ldr r4, _08013BF8
	ands r4, r3
	adds r6, r3, #0
	ldr r2, [sp, #0xc]
	ldr r5, [sp, #0x4c]
	adds r0, r2, r5
	adds r7, r1, #1
	cmp r2, r0
	bge _08013BC0
	asrs r0, r1, #2
	mov sl, r0
	ldr r5, _08013BFC
	ldr r5, [r5, #4]
	mov ip, r5
	movs r0, #3
	ands r1, r0
	lsls r1, r1, #3
	mov sb, r1
	ldr r1, _08013C00
	mov r8, r1
	ldr r5, _08013C04
	ldr r5, [r5, #0x4c]
	str r5, [sp, #0x20]
_08013B78:
	mov r0, r8
	ldr r1, [r0]
	lsls r1, r1, #1
	ldr r5, [sp, #0x20]
	adds r1, r5, r1
	ldr r5, _08013C04
	ldrh r0, [r5, #0xa]
	mov r5, sl
	muls r5, r0, r5
	adds r0, r5, #0
	lsls r0, r0, #1
	adds r1, r1, r0
	asrs r0, r2, #2
	lsls r0, r0, #1
	adds r1, r1, r0
	ldrh r1, [r1]
	lsls r1, r1, #5
	add r1, ip
	adds r0, r2, #0
	movs r5, #3
	ands r0, r5
	lsls r0, r0, #1
	add r1, sb
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r3]
	adds r3, #2
	ldr r0, _08013C08
	ands r3, r0
	orrs r3, r4
	adds r2, #1
	ldr r1, [sp, #0xc]
	ldr r5, [sp, #0x4c]
	adds r0, r1, r5
	cmp r2, r0
	blt _08013B78
_08013BC0:
	adds r3, r6, #0
	adds r3, #0x40
	ldr r0, _08013C0C
	ands r3, r0
	ldr r1, [sp, #0x10]
	orrs r3, r1
	adds r1, r7, #0
	ldr r2, [sp, #0x1c]
	cmp r1, r2
	ble _08013B4A
_08013BD4:
	ldr r5, [sp, #0x18]
	ldrh r0, [r5, #8]
	cmp r0, #2
	bne _08013BDE
	b _08013DA6
_08013BDE:
	adds r0, r5, #0
	adds r0, #0x5e
	ldrb r0, [r0]
	cmp r0, #0
	beq _08013C14
	ldr r3, _08013C10
	movs r0, #0
	str r0, [sp, #0xc]
	movs r1, #0
	b _08013C20
	.align 2, 0
_08013BF4: .4byte 0x0600E800
_08013BF8: .4byte 0x0001FFC0
_08013BFC: .4byte gTileSetBG
_08013C00: .4byte 0x0200206C
_08013C04: .4byte gRoomHeader
_08013C08: .4byte 0xFFFE003F
_08013C0C: .4byte 0xFFFE07FF
_08013C10: .4byte 0x0600F000
_08013C14:
	ldr r0, _08013CD8
	ldr r1, [sp, #8]
	adds r3, r1, r0
	ldr r2, [sp]
	str r2, [sp, #0xc]
	ldr r1, [sp, #4]
_08013C20:
	movs r5, #0xfc
	lsls r5, r5, #9
	ands r5, r3
	str r5, [sp, #0x10]
	ldr r2, [sp, #0x48]
	adds r0, r1, r2
	cmp r1, r0
	bgt _08013CBC
	str r0, [sp, #0x1c]
_08013C32:
	ldr r4, _08013CDC
	ands r4, r3
	adds r6, r3, #0
	ldr r2, [sp, #0xc]
	ldr r5, [sp, #0x4c]
	adds r0, r2, r5
	adds r7, r1, #1
	cmp r2, r0
	bge _08013CA8
	asrs r0, r1, #2
	mov sl, r0
	ldr r5, _08013CE0
	ldr r5, [r5, #8]
	mov ip, r5
	movs r0, #3
	ands r1, r0
	lsls r1, r1, #3
	mov sb, r1
	ldr r1, _08013CE4
	mov r8, r1
	ldr r5, _08013CE8
	ldr r5, [r5, #0x4c]
	str r5, [sp, #0x20]
_08013C60:
	mov r0, r8
	ldr r1, [r0]
	lsls r1, r1, #2
	ldr r5, [sp, #0x20]
	adds r1, r5, r1
	ldr r5, _08013CE8
	ldrh r0, [r5, #0xa]
	mov r5, sl
	muls r5, r0, r5
	adds r0, r5, #0
	lsls r0, r0, #1
	adds r1, r1, r0
	asrs r0, r2, #2
	lsls r0, r0, #1
	adds r1, r1, r0
	ldrh r1, [r1]
	lsls r1, r1, #5
	add r1, ip
	adds r0, r2, #0
	movs r5, #3
	ands r0, r5
	lsls r0, r0, #1
	add r1, sb
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r3]
	adds r3, #2
	ldr r0, _08013CEC
	ands r3, r0
	orrs r3, r4
	adds r2, #1
	ldr r1, [sp, #0xc]
	ldr r5, [sp, #0x4c]
	adds r0, r1, r5
	cmp r2, r0
	blt _08013C60
_08013CA8:
	adds r3, r6, #0
	adds r3, #0x40
	ldr r0, _08013CF0
	ands r3, r0
	ldr r1, [sp, #0x10]
	orrs r3, r1
	adds r1, r7, #0
	ldr r2, [sp, #0x1c]
	cmp r1, r2
	ble _08013C32
_08013CBC:
	ldr r5, [sp, #0x18]
	ldrh r0, [r5, #8]
	cmp r0, #3
	beq _08013DA6
	adds r0, r5, #0
	adds r0, #0x5f
	ldrb r0, [r0]
	cmp r0, #0
	beq _08013CF8
	ldr r3, _08013CF4
	movs r0, #0
	str r0, [sp, #0xc]
	movs r1, #0
	b _08013D04
	.align 2, 0
_08013CD8: .4byte 0x0600F000
_08013CDC: .4byte 0x0001FFC0
_08013CE0: .4byte gTileSetBG
_08013CE4: .4byte 0x0200206C
_08013CE8: .4byte gRoomHeader
_08013CEC: .4byte 0xFFFE003F
_08013CF0: .4byte 0xFFFE07FF
_08013CF4: .4byte 0x0600F800
_08013CF8:
	ldr r1, [sp, #8]
	ldr r2, _08013DB8
	adds r3, r1, r2
	ldr r5, [sp]
	str r5, [sp, #0xc]
	ldr r1, [sp, #4]
_08013D04:
	movs r0, #0xfc
	lsls r0, r0, #9
	ands r0, r3
	str r0, [sp, #0x10]
	ldr r2, [sp, #0x48]
	adds r0, r1, r2
	cmp r1, r0
	bgt _08013DA6
	str r0, [sp, #0x1c]
_08013D16:
	ldr r4, _08013DBC
	ands r4, r3
	adds r6, r3, #0
	ldr r2, [sp, #0xc]
	ldr r5, [sp, #0x4c]
	adds r0, r2, r5
	adds r7, r1, #1
	cmp r2, r0
	bge _08013D92
	asrs r0, r1, #2
	str r0, [sp, #0x14]
	ldr r5, _08013DC0
	ldr r5, [r5, #0xc]
	mov sl, r5
	movs r0, #3
	ands r1, r0
	lsls r1, r1, #3
	mov ip, r1
	ldr r1, _08013DC4
	mov sb, r1
	ldr r5, _08013DC8
	ldr r5, [r5, #0x4c]
	mov r8, r5
_08013D44:
	mov r1, sb
	ldr r0, [r1]
	movs r5, #3
	adds r1, r0, #0
	muls r1, r5, r1
	lsls r1, r1, #1
	add r1, r8
	str r1, [sp, #0x24]
	ldr r1, _08013DC8
	ldrh r0, [r1, #0xa]
	ldr r5, [sp, #0x14]
	muls r0, r5, r0
	lsls r0, r0, #1
	ldr r5, [sp, #0x24]
	adds r1, r5, r0
	asrs r0, r2, #2
	lsls r0, r0, #1
	adds r1, r1, r0
	ldrh r1, [r1]
	lsls r1, r1, #5
	add r1, sl
	adds r0, r2, #0
	movs r5, #3
	ands r0, r5
	lsls r0, r0, #1
	add r1, ip
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r3]
	adds r3, #2
	ldr r0, _08013DCC
	ands r3, r0
	orrs r3, r4
	adds r2, #1
	ldr r1, [sp, #0xc]
	ldr r5, [sp, #0x4c]
	adds r0, r1, r5
	cmp r2, r0
	blt _08013D44
_08013D92:
	adds r3, r6, #0
	adds r3, #0x40
	ldr r0, _08013DD0
	ands r3, r0
	ldr r1, [sp, #0x10]
	orrs r3, r1
	adds r1, r7, #0
	ldr r2, [sp, #0x1c]
	cmp r1, r2
	ble _08013D16
_08013DA6:
	add sp, #0x28
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08013DB8: .4byte 0x0600F800
_08013DBC: .4byte 0x0001FFC0
_08013DC0: .4byte gTileSetBG
_08013DC4: .4byte 0x0200206C
_08013DC8: .4byte gRoomHeader
_08013DCC: .4byte 0xFFFE003F
_08013DD0: .4byte 0xFFFE07FF

