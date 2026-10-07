    .thumb
sub_08015CC0: @ 0x08015CC0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r2, r0, #0
	ldr r1, _08015CE8
	movs r0, #1
	strb r0, [r1]
	ldr r1, _08015CEC
	movs r0, #0
	strb r0, [r1]
	cmp r2, #1
	beq _08015D90
	cmp r2, #1
	bgt _08015CF0
	cmp r2, #0
	beq _08015CFE
	b _08015F48
	.align 2, 0
_08015CE8: .4byte byte_200146C
_08015CEC: .4byte gBGControlActions
_08015CF0:
	cmp r2, #2
	bne _08015CF6
	b _08015E20
_08015CF6:
	cmp r2, #3
	bne _08015CFC
	b _08015EBC
_08015CFC:
	b _08015F48
_08015CFE:
	ldr r2, _08015D18
	ldrb r0, [r2, #0x14]
	cmp r0, #0
	bne _08015D20
	ldr r1, _08015D1C
	ldr r0, [r2, #0x38]
	str r0, [r1]
	cmp r0, #0
	bne _08015D2E
	.2byte 0xEE00, 0xEE00
	b _08015D2E
	.align 2, 0
_08015D18: .4byte gRoomHeader
_08015D1C: .4byte 0x02002080
_08015D20:
	ldr r1, _08015D70
	ldr r0, [r2, #0x3c]
	str r0, [r1]
	cmp r0, #0
	bne _08015D2E
	.2byte 0xEE00, 0xEE00
_08015D2E:
	ldr r2, _08015D74
	ldr r0, _08015D70
	ldr r0, [r0]
	ldrh r1, [r0, #2]
	lsls r0, r1, #0x10
	orrs r0, r1
	str r0, [r2]
	ldr r1, _08015D78
	movs r2, #0xa0
	lsls r2, r2, #1
	bl DmaFill32
	ldr r0, _08015D7C
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r1, _08015D80
	ldr r0, _08015D84
	str r0, [r1]
	ldr r2, _08015D88
	ldr r0, _08015D8C
	ldrh r1, [r2]
	ldrh r0, [r0]
	ands r0, r1
	strh r0, [r2]
	ldrh r0, [r2]
	movs r1, #0x41
	orrs r0, r1
	strh r0, [r2]
	subs r2, #0x48
	b _08015E8C
	.align 2, 0
_08015D70: .4byte 0x02002080
_08015D74: .4byte 0x02002088
_08015D78: .4byte 0x0600E000
_08015D7C: .4byte 0x04000010
_08015D80: .4byte 0x02002084
_08015D84: .4byte 0x0600E380
_08015D88: .4byte 0x04000050
_08015D8C: .4byte gColorSpecEffectsSel
_08015D90:
	ldr r2, _08015DA8
	ldrb r0, [r2, #0x15]
	cmp r0, #0
	bne _08015DB0
	ldr r1, _08015DAC
	ldr r0, [r2, #0x38]
	str r0, [r1]
	cmp r0, #0
	bne _08015DBE
	.2byte 0xEE00, 0xEE00
	b _08015DBE
	.align 2, 0
_08015DA8: .4byte gRoomHeader
_08015DAC: .4byte 0x02002080
_08015DB0:
	ldr r1, _08015E00
	ldr r0, [r2, #0x3c]
	str r0, [r1]
	cmp r0, #0
	bne _08015DBE
	.2byte 0xEE00, 0xEE00
_08015DBE:
	ldr r2, _08015E04
	ldr r0, _08015E00
	ldr r0, [r0]
	ldrh r1, [r0, #2]
	lsls r0, r1, #0x10
	orrs r0, r1
	str r0, [r2]
	ldr r1, _08015E08
	movs r2, #0xa0
	lsls r2, r2, #1
	bl DmaFill32
	ldr r0, _08015E0C
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r1, _08015E10
	ldr r0, _08015E14
	str r0, [r1]
	ldr r2, _08015E18
	ldr r0, _08015E1C
	ldrh r1, [r2]
	ldrh r0, [r0]
	ands r0, r1
	strh r0, [r2]
	ldrh r0, [r2]
	movs r1, #0x42
	orrs r0, r1
	strh r0, [r2]
	subs r2, #0x46
	b _08015E8C
	.align 2, 0
_08015E00: .4byte 0x02002080
_08015E04: .4byte 0x02002088
_08015E08: .4byte 0x0600E800
_08015E0C: .4byte 0x04000014
_08015E10: .4byte 0x02002084
_08015E14: .4byte 0x0600EB80
_08015E18: .4byte 0x04000050
_08015E1C: .4byte gColorSpecEffectsSel
_08015E20:
	ldr r2, _08015E38
	ldrb r0, [r2, #0x16]
	cmp r0, #0
	bne _08015E40
	ldr r1, _08015E3C
	ldr r0, [r2, #0x38]
	str r0, [r1]
	cmp r0, #0
	bne _08015E4E
	.2byte 0xEE00, 0xEE00
	b _08015E4E
	.align 2, 0
_08015E38: .4byte gRoomHeader
_08015E3C: .4byte 0x02002080
_08015E40:
	ldr r1, _08015E98
	ldr r0, [r2, #0x3c]
	str r0, [r1]
	cmp r0, #0
	bne _08015E4E
	.2byte 0xEE00, 0xEE00
_08015E4E:
	ldr r2, _08015E9C
	ldr r0, _08015E98
	ldr r0, [r0]
	ldrh r1, [r0, #2]
	lsls r0, r1, #0x10
	orrs r0, r1
	str r0, [r2]
	ldr r1, _08015EA0
	movs r2, #0xa0
	lsls r2, r2, #1
	bl DmaFill32
	ldr r0, _08015EA4
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r1, _08015EA8
	ldr r0, _08015EAC
	str r0, [r1]
	ldr r2, _08015EB0
	ldr r0, _08015EB4
	ldrh r1, [r2]
	ldrh r0, [r0]
	ands r0, r1
	strh r0, [r2]
	ldrh r0, [r2]
	movs r1, #0x44
	orrs r0, r1
	strh r0, [r2]
	subs r2, #0x44
_08015E8C:
	ldrh r1, [r2]
	ldr r0, _08015EB8
	ands r0, r1
	strh r0, [r2]
	b _08015F4E
	.align 2, 0
_08015E98: .4byte 0x02002080
_08015E9C: .4byte 0x02002088
_08015EA0: .4byte 0x0600F000
_08015EA4: .4byte 0x04000018
_08015EA8: .4byte 0x02002084
_08015EAC: .4byte 0x0600F380
_08015EB0: .4byte 0x04000050
_08015EB4: .4byte gColorSpecEffectsSel
_08015EB8: .4byte 0x0000FFFC
_08015EBC:
	ldr r2, _08015ED4
	ldrb r0, [r2, #0x17]
	cmp r0, #0
	bne _08015EDC
	ldr r1, _08015ED8
	ldr r0, [r2, #0x38]
	str r0, [r1]
	cmp r0, #0
	bne _08015EEA
	.2byte 0xEE00, 0xEE00
	b _08015EEA
	.align 2, 0
_08015ED4: .4byte gRoomHeader
_08015ED8: .4byte 0x02002080
_08015EDC:
	ldr r1, _08015F28
	ldr r0, [r2, #0x3c]
	str r0, [r1]
	cmp r0, #0
	bne _08015EEA
	.2byte 0xEE00, 0xEE00
_08015EEA:
	ldr r2, _08015F2C
	ldr r0, _08015F28
	ldr r0, [r0]
	ldrh r1, [r0, #2]
	lsls r0, r1, #0x10
	orrs r0, r1
	str r0, [r2]
	ldr r1, _08015F30
	movs r2, #0xa0
	lsls r2, r2, #1
	bl DmaFill32
	ldr r0, _08015F34
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r1, _08015F38
	ldr r0, _08015F3C
	str r0, [r1]
	ldr r2, _08015F40
	ldr r0, _08015F44
	ldrh r1, [r2]
	ldrh r0, [r0]
	ands r0, r1
	strh r0, [r2]
	ldrh r0, [r2]
	movs r1, #0x48
	orrs r0, r1
	strh r0, [r2]
	b _08015F4E
	.align 2, 0
_08015F28: .4byte 0x02002080
_08015F2C: .4byte 0x02002088
_08015F30: .4byte 0x0600F800
_08015F34: .4byte 0x0400001C
_08015F38: .4byte 0x02002084
_08015F3C: .4byte 0x0600FB80
_08015F40: .4byte 0x04000050
_08015F44: .4byte gColorSpecEffectsSel
_08015F48:
	.2byte 0xEE00, 0xEE00
	b _08015FAE
_08015F4E:
	movs r3, #0
	ldr r2, _08015FBC
	ldr r0, [r2]
	ldr r1, _08015FC0
	mov ip, r1
	ldr r1, _08015FC4
	mov r8, r1
	ldr r1, _08015FC8
	mov sb, r1
	ldr r1, _08015FCC
	mov sl, r1
	ldrb r0, [r0, #1]
	cmp r3, r0
	bge _08015F98
	ldr r7, _08015FD0
	adds r6, r2, #0
	movs r5, #4
	movs r4, #2
_08015F72:
	ldr r1, [r7]
	lsls r0, r3, #6
	adds r1, r0, r1
	ldr r2, [r6]
	adds r0, r2, r0
	ldrh r0, [r0, #4]
	strh r0, [r1]
	adds r0, r2, r4
	ldrh r0, [r0, #4]
	strh r0, [r1, #2]
	adds r0, r2, r5
	ldrh r0, [r0, #4]
	strh r0, [r1, #4]
	adds r5, #0x40
	adds r4, #0x40
	adds r3, #1
	ldrb r2, [r2, #1]
	cmp r3, r2
	blt _08015F72
_08015F98:
	movs r0, #3
	mov r1, ip
	str r0, [r1]
	movs r0, #0x1b
	mov r1, r8
	str r0, [r1]
	movs r0, #1
	mov r1, sb
	str r0, [r1]
	mov r1, sl
	str r0, [r1]
_08015FAE:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08015FBC: .4byte 0x02002080
_08015FC0: .4byte 0x02002074
_08015FC4: .4byte 0x02002078
_08015FC8: .4byte 0x0200207C
_08015FCC: .4byte dword_2001470
_08015FD0: .4byte 0x02002084
