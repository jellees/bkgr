
    .syntax unified

    .text

    .thumb
sub_08027B40: @ 0x08027B40
	push {r4, r5, r6, lr}
	adds r1, r0, #0
	ldrh r0, [r1, #2]
	subs r0, #0x97
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x11
	bhi _08027BB2
	ldr r0, _08027B7C
	ldr r1, _08027B80
	ldrb r5, [r0]
	adds r3, r0, #0
	adds r4, r1, #0
	ldrb r0, [r4]
	cmp r5, r0
	bne _08027B64
	.2byte 0xEE00, 0xEE00
_08027B64:
	movs r2, #0
	ldr r6, _08027B84
	ldrb r0, [r4]
	cmp r2, r0
	bge _08027BA6
	ldr r0, [r6]
	adds r0, #0x2e
	ldrb r0, [r0]
	cmp r0, #0
	bne _08027B88
	adds r0, r5, #1
	b _08027BA4
	.align 2, 0
_08027B7C: .4byte 0x0203DFD2
_08027B80: .4byte 0x0203E00B
_08027B84: .4byte 0x0203DFFC
_08027B88:
	adds r2, #1
	ldrb r0, [r4]
	cmp r2, r0
	bge _08027BA6
	ldr r1, [r6]
	movs r0, #0xd8
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x2e
	ldrb r0, [r0]
	cmp r0, #0
	bne _08027B88
	ldrb r0, [r3]
	adds r0, #1
_08027BA4:
	strb r0, [r3]
_08027BA6:
	ldrb r4, [r4]
	cmp r2, r4
	bne _08027C7C
	.2byte 0xEE00, 0xEE00
	b _08027C7C
_08027BB2:
	ldrb r0, [r1, #0x15]
	cmp r0, #0
	beq _08027C1A
	ldr r0, _08027BE4
	ldr r1, _08027BE8
	ldrb r5, [r0]
	adds r3, r0, #0
	adds r4, r1, #0
	ldrb r0, [r4]
	cmp r5, r0
	bne _08027BCC
	.2byte 0xEE00, 0xEE00
_08027BCC:
	movs r2, #0
	ldr r6, _08027BEC
	ldrb r0, [r4]
	cmp r2, r0
	bge _08027C0E
	ldr r0, [r6]
	adds r0, #0x2e
	ldrb r0, [r0]
	cmp r0, #0
	bne _08027BF0
	adds r0, r5, #1
	b _08027C0C
	.align 2, 0
_08027BE4: .4byte 0x0203DFD1
_08027BE8: .4byte 0x0203E00A
_08027BEC: .4byte 0x0203DFF8
_08027BF0:
	adds r2, #1
	ldrb r0, [r4]
	cmp r2, r0
	bge _08027C0E
	ldr r1, [r6]
	movs r0, #0xd8
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x2e
	ldrb r0, [r0]
	cmp r0, #0
	bne _08027BF0
	ldrb r0, [r3]
	adds r0, #1
_08027C0C:
	strb r0, [r3]
_08027C0E:
	ldrb r4, [r4]
	cmp r2, r4
	bne _08027C7C
	.2byte 0xEE00, 0xEE00
	b _08027C7C
_08027C1A:
	ldr r0, _08027C48
	ldr r1, _08027C4C
	ldrb r5, [r0]
	adds r3, r0, #0
	adds r4, r1, #0
	ldrb r0, [r4]
	cmp r5, r0
	bne _08027C2E
	.2byte 0xEE00, 0xEE00
_08027C2E:
	movs r2, #0
	ldr r6, _08027C50
	ldrb r0, [r4]
	cmp r2, r0
	bge _08027C72
	ldr r0, [r6]
	adds r0, #0x2e
	ldrb r0, [r0]
	cmp r0, #0
	bne _08027C54
	adds r0, r5, #1
	b _08027C70
	.align 2, 0
_08027C48: .4byte 0x0203DFD0
_08027C4C: .4byte 0x0203E009
_08027C50: .4byte 0x0203DFF4
_08027C54:
	adds r2, #1
	ldrb r0, [r4]
	cmp r2, r0
	bge _08027C72
	ldr r1, [r6]
	movs r0, #0xd8
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x2e
	ldrb r0, [r0]
	cmp r0, #0
	bne _08027C54
	ldrb r0, [r3]
	adds r0, #1
_08027C70:
	strb r0, [r3]
_08027C72:
	ldrb r4, [r4]
	cmp r2, r4
	bne _08027C7C
	.2byte 0xEE00, 0xEE00
_08027C7C:
	movs r0, #0xd8
	adds r1, r2, #0
	muls r1, r0, r1
	ldr r0, [r6]
	adds r0, r0, r1
	pop {r4, r5, r6}
	pop {r1}
	bx r1

    .thumb
sub_8027C8C: @ 0x08027C8C
	push {r4, lr}
	movs r0, #0
	movs r1, #6
	movs r2, #0x12
	bl ReplaceMemBlockId
	ldr r0, _08027E44
	ldr r0, [r0]
	bl sub_8009D7C
	ldr r0, _08027E48
	ldrb r0, [r0]
	bl sub_8009D7C
	ldr r0, _08027E4C
	ldrb r0, [r0]
	bl sub_8009D7C
	ldr r0, _08027E50
	ldrb r0, [r0]
	bl sub_8009D7C
	ldr r0, _08027E54
	ldrb r0, [r0]
	bl sub_8009D7C
	ldr r0, _08027E58
	ldrb r0, [r0]
	bl sub_8009D7C
	ldr r4, _08027E5C
	ldr r0, [r4]
	bl sub_8009D7C
	movs r0, #0
	str r0, [r4]
	ldr r0, _08027E60
	ldr r0, [r0]
	bl sub_8009D7C
	ldr r0, _08027E64
	ldr r0, [r0]
	bl sub_8009D7C
	ldr r0, _08027E68
	ldr r0, [r0]
	bl sub_8009D7C
	ldr r0, _08027E6C
	ldr r0, [r0]
	bl sub_8009D7C
	ldr r0, _08027E70
	ldr r0, [r0]
	bl sub_8009D7C
	ldr r0, _08027E74
	ldr r0, [r0]
	bl sub_8009D7C
	ldr r0, _08027E78
	ldr r0, [r0]
	bl sub_8009D7C
	ldr r0, _08027E7C
	ldr r0, [r0]
	bl sub_8009D7C
	ldr r0, _08027E80
	ldr r0, [r0]
	bl sub_8009D7C
	ldr r0, _08027E84
	ldr r0, [r0]
	bl sub_8009D7C
	ldr r0, _08027E88
	ldr r0, [r0]
	bl sub_8009D7C
	ldr r0, _08027E8C
	ldr r0, [r0]
	bl sub_8009D7C
	ldr r0, _08027E90
	ldrb r0, [r0]
	bl sub_8009D7C
	ldr r0, _08027E94
	ldrb r0, [r0]
	bl sub_8009D7C
	ldr r0, _08027E98
	ldrb r0, [r0]
	bl sub_8009D7C
	ldr r0, _08027E9C
	ldrb r0, [r0]
	bl sub_8009D7C
	ldr r0, _08027EA0
	ldrb r0, [r0]
	bl sub_8009D7C
	ldr r0, _08027EA4
	ldrb r0, [r0]
	bl sub_8009D7C
	ldr r0, _08027EA8
	ldrb r0, [r0]
	bl sub_8009D7C
	ldr r0, _08027EAC
	ldrb r0, [r0]
	bl sub_8009D7C
	ldr r0, _08027EB0
	ldrb r0, [r0]
	bl sub_8009D7C
	ldr r0, _08027EB4
	ldrb r0, [r0]
	bl sub_8009D7C
	ldr r0, _08027EB8
	ldrb r0, [r0]
	bl sub_8009D7C
	ldr r0, _08027EBC
	ldrb r0, [r0]
	bl sub_8009D7C
	ldr r0, _08027EC0
	ldrb r0, [r0]
	bl sub_8009D7C
	ldr r0, _08027EC4
	ldrb r0, [r0]
	bl sub_8009D7C
	ldr r0, _08027EC8
	ldrb r0, [r0]
	bl sub_8009D7C
	ldr r0, _08027ECC
	ldrb r0, [r0]
	bl sub_8009D7C
	ldr r0, _08027ED0
	ldrb r0, [r0]
	bl sub_8009D7C
	ldr r0, _08027ED4
	ldrb r0, [r0]
	bl sub_8009D7C
	ldr r0, _08027ED8
	ldr r0, [r0]
	bl sub_8009D7C
	ldr r0, _08027EDC
	ldrb r0, [r0]
	bl sub_8009D7C
	ldr r0, _08027EE0
	ldrb r0, [r0]
	bl sub_8009D7C
	ldr r0, _08027EE4
	ldrb r0, [r0]
	bl sub_8009D7C
	ldr r0, _08027EE8
	ldrb r0, [r0]
	bl sub_8009D7C
	ldr r0, _08027EEC
	ldrb r0, [r0]
	bl sub_8009D7C
	ldr r0, _08027EF0
	ldr r0, [r0]
	bl sub_8009D7C
	ldr r0, _08027EF4
	ldr r0, [r0]
	bl sub_8009D7C
	ldr r0, _08027EF8
	ldrb r0, [r0]
	bl sub_8009D7C
	ldr r0, _08027EFC
	ldrb r0, [r0]
	bl sub_8009D7C
	ldr r0, _08027F00
	ldrb r0, [r0]
	bl sub_8009D7C
	ldr r0, _08027F04
	ldrb r0, [r0]
	bl sub_8009D7C
	ldr r0, _08027F08
	ldr r0, [r0]
	bl sub_8009D7C
	ldr r0, _08027F0C
	ldrb r0, [r0]
	bl sub_8009D7C
	ldr r0, _08027F10
	ldrh r0, [r0]
	bl sub_8009D7C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08027E44: .4byte dword_2000FC8
_08027E48: .4byte byte_2000331
_08027E4C: .4byte byte_2000330
_08027E50: .4byte byte_2000332
_08027E54: .4byte byte_2000333
_08027E58: .4byte byte_2000334
_08027E5C: .4byte dword_200032C
_08027E60: .4byte 0x0203DFB0
_08027E64: .4byte 0x0203DFF0
_08027E68: .4byte 0x0203DFF4
_08027E6C: .4byte 0x0203DFF8
_08027E70: .4byte 0x0203DFFC
_08027E74: .4byte 0x0203E000
_08027E78: .4byte 0x0203E004
_08027E7C: .4byte 0x0203DFB4
_08027E80: .4byte 0x0203DFBC
_08027E84: .4byte dword_203DFC4
_08027E88: .4byte 0x0203DFB8
_08027E8C: .4byte 0x0203DFC0
_08027E90: .4byte 0x0203DFD0
_08027E94: .4byte 0x0203DFD1
_08027E98: .4byte 0x0203DFD2
_08027E9C: .4byte 0x0203DFD3
_08027EA0: .4byte 0x0203DFD4
_08027EA4: .4byte 0x0203DFD6
_08027EA8: .4byte 0x0203E008
_08027EAC: .4byte 0x0203E009
_08027EB0: .4byte 0x0203E00A
_08027EB4: .4byte 0x0203E00B
_08027EB8: .4byte 0x0203E00C
_08027EBC: .4byte 0x0203DFD5
_08027EC0: .4byte 0x0203E00D
_08027EC4: .4byte 0x0203E00E
_08027EC8: .4byte 0x0203DFE4
_08027ECC: .4byte 0x0203DFE5
_08027ED0: .4byte 0x0203DFE6
_08027ED4: .4byte 0x0203DFE7
_08027ED8: .4byte 0x0203E010
_08027EDC: .4byte gInInteractionArea
_08027EE0: .4byte 0x0203DFD8
_08027EE4: .4byte 0x0203DFD9
_08027EE8: .4byte 0x0203DFDA
_08027EEC: .4byte 0x0203DFE9
_08027EF0: .4byte 0x0203DFDC
_08027EF4: .4byte 0x0203DFE0
_08027EF8: .4byte 0x0203E014
_08027EFC: .4byte 0x0203E015
_08027F00: .4byte 0x0203E016
_08027F04: .4byte 0x0203E017
_08027F08: .4byte 0x0203DFCC
_08027F0C: .4byte 0x0203DFC8
_08027F10: .4byte 0x0203DFCA

    .thumb
sub_8027F14: @ 0x08027F14
	push {r4, lr}
	movs r0, #0
	movs r1, #0x12
	movs r2, #6
	bl ReplaceMemBlockId
	ldr r4, _080280D8
	bl sub_8009DAC
	strh r0, [r4]
	ldr r4, _080280DC
	bl sub_8009DAC
	strb r0, [r4]
	bl sub_8009DAC
	ldr r1, _080280E0
	str r0, [r1]
	ldr r4, _080280E4
	bl sub_8009DAC
	strb r0, [r4]
	ldr r4, _080280E8
	bl sub_8009DAC
	strb r0, [r4]
	ldr r4, _080280EC
	bl sub_8009DAC
	strb r0, [r4]
	ldr r4, _080280F0
	bl sub_8009DAC
	strb r0, [r4]
	ldr r4, _080280F4
	bl sub_8009DAC
	str r0, [r4]
	ldr r4, _080280F8
	bl sub_8009DAC
	str r0, [r4]
	ldr r4, _080280FC
	bl sub_8009DAC
	strb r0, [r4]
	ldr r4, _08028100
	bl sub_8009DAC
	strb r0, [r4]
	ldr r4, _08028104
	bl sub_8009DAC
	strb r0, [r4]
	ldr r4, _08028108
	bl sub_8009DAC
	strb r0, [r4]
	ldr r4, _0802810C
	bl sub_8009DAC
	strb r0, [r4]
	ldr r4, _08028110
	bl sub_8009DAC
	str r0, [r4]
	ldr r4, _08028114
	bl sub_8009DAC
	strb r0, [r4]
	ldr r4, _08028118
	bl sub_8009DAC
	strb r0, [r4]
	ldr r4, _0802811C
	bl sub_8009DAC
	strb r0, [r4]
	ldr r4, _08028120
	bl sub_8009DAC
	strb r0, [r4]
	ldr r4, _08028124
	bl sub_8009DAC
	strb r0, [r4]
	ldr r4, _08028128
	bl sub_8009DAC
	strb r0, [r4]
	ldr r4, _0802812C
	bl sub_8009DAC
	strb r0, [r4]
	ldr r4, _08028130
	bl sub_8009DAC
	strb r0, [r4]
	ldr r4, _08028134
	bl sub_8009DAC
	strb r0, [r4]
	ldr r4, _08028138
	bl sub_8009DAC
	strb r0, [r4]
	ldr r4, _0802813C
	bl sub_8009DAC
	strb r0, [r4]
	ldr r4, _08028140
	bl sub_8009DAC
	strb r0, [r4]
	ldr r4, _08028144
	bl sub_8009DAC
	strb r0, [r4]
	ldr r4, _08028148
	bl sub_8009DAC
	strb r0, [r4]
	ldr r4, _0802814C
	bl sub_8009DAC
	strb r0, [r4]
	ldr r4, _08028150
	bl sub_8009DAC
	strb r0, [r4]
	ldr r4, _08028154
	bl sub_8009DAC
	strb r0, [r4]
	ldr r4, _08028158
	bl sub_8009DAC
	strb r0, [r4]
	ldr r4, _0802815C
	bl sub_8009DAC
	str r0, [r4]
	ldr r4, _08028160
	bl sub_8009DAC
	str r0, [r4]
	ldr r4, _08028164
	bl sub_8009DAC
	str r0, [r4]
	ldr r4, _08028168
	bl sub_8009DAC
	str r0, [r4]
	ldr r4, _0802816C
	bl sub_8009DAC
	str r0, [r4]
	ldr r4, _08028170
	bl sub_8009DAC
	str r0, [r4]
	ldr r4, _08028174
	bl sub_8009DAC
	str r0, [r4]
	ldr r4, _08028178
	bl sub_8009DAC
	str r0, [r4]
	ldr r4, _0802817C
	bl sub_8009DAC
	str r0, [r4]
	ldr r4, _08028180
	bl sub_8009DAC
	str r0, [r4]
	ldr r4, _08028184
	bl sub_8009DAC
	str r0, [r4]
	ldr r4, _08028188
	bl sub_8009DAC
	str r0, [r4]
	ldr r4, _0802818C
	ldr r0, [r4]
	cmp r0, #0
	beq _0802809A
	movs r1, #4
	bl Free
	movs r0, #0
	str r0, [r4]
_0802809A:
	bl sub_8009DAC
	str r0, [r4]
	ldr r4, _08028190
	bl sub_8009DAC
	strb r0, [r4]
	ldr r4, _08028194
	bl sub_8009DAC
	strb r0, [r4]
	ldr r4, _08028198
	bl sub_8009DAC
	strb r0, [r4]
	ldr r4, _0802819C
	bl sub_8009DAC
	strb r0, [r4]
	ldr r4, _080281A0
	bl sub_8009DAC
	strb r0, [r4]
	ldr r4, _080281A4
	bl sub_8009DAC
	str r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080280D8: .4byte 0x0203DFCA
_080280DC: .4byte 0x0203DFC8
_080280E0: .4byte 0x0203DFCC
_080280E4: .4byte 0x0203E017
_080280E8: .4byte 0x0203E016
_080280EC: .4byte 0x0203E015
_080280F0: .4byte 0x0203E014
_080280F4: .4byte 0x0203DFE0
_080280F8: .4byte 0x0203DFDC
_080280FC: .4byte 0x0203DFE9
_08028100: .4byte 0x0203DFDA
_08028104: .4byte 0x0203DFD9
_08028108: .4byte 0x0203DFD8
_0802810C: .4byte gInInteractionArea
_08028110: .4byte 0x0203E010
_08028114: .4byte 0x0203DFE7
_08028118: .4byte 0x0203DFE6
_0802811C: .4byte 0x0203DFE5
_08028120: .4byte 0x0203DFE4
_08028124: .4byte 0x0203E00E
_08028128: .4byte 0x0203E00D
_0802812C: .4byte 0x0203DFD5
_08028130: .4byte 0x0203E00C
_08028134: .4byte 0x0203E00B
_08028138: .4byte 0x0203E00A
_0802813C: .4byte 0x0203E009
_08028140: .4byte 0x0203E008
_08028144: .4byte 0x0203DFD6
_08028148: .4byte 0x0203DFD4
_0802814C: .4byte 0x0203DFD3
_08028150: .4byte 0x0203DFD2
_08028154: .4byte 0x0203DFD1
_08028158: .4byte 0x0203DFD0
_0802815C: .4byte 0x0203DFC0
_08028160: .4byte 0x0203DFB8
_08028164: .4byte dword_203DFC4
_08028168: .4byte 0x0203DFBC
_0802816C: .4byte 0x0203DFB4
_08028170: .4byte 0x0203E004
_08028174: .4byte 0x0203E000
_08028178: .4byte 0x0203DFFC
_0802817C: .4byte 0x0203DFF8
_08028180: .4byte 0x0203DFF4
_08028184: .4byte 0x0203DFF0
_08028188: .4byte 0x0203DFB0
_0802818C: .4byte dword_200032C
_08028190: .4byte byte_2000334
_08028194: .4byte byte_2000333
_08028198: .4byte byte_2000332
_0802819C: .4byte byte_2000330
_080281A0: .4byte byte_2000331
_080281A4: .4byte dword_2000FC8

    .thumb
    .global sub_080281A8
sub_080281A8: @ 0x080281A8
	push {r4, lr}
	ldr r0, _08028244
	ldr r0, [r0]
	cmp r0, #0xd8
	beq _080281B6
	.2byte 0xEE00, 0xEE00
_080281B6:
	ldr r0, _08028248
	ldr r0, [r0]
	cmp r0, #0xd8
	beq _080281C2
	.2byte 0xEE00, 0xEE00
_080281C2:
	ldr r0, _0802824C
	ldr r0, [r0]
	cmp r0, #0xd8
	beq _080281CE
	.2byte 0xEE00, 0xEE00
_080281CE:
	ldr r1, _08028250
	movs r0, #0
	strb r0, [r1]
	movs r0, #0
	bl InitHeap
	ldr r1, _08028254
	movs r0, #0
	str r0, [r1]
	ldr r1, _08028258
	str r0, [r1]
	ldr r1, _0802825C
	str r0, [r1]
	ldr r1, _08028260
	str r0, [r1]
	ldr r1, _08028264
	str r0, [r1]
	ldr r1, _08028268
	str r0, [r1]
	ldr r1, _0802826C
	str r0, [r1]
	ldr r1, _08028270
	str r0, [r1]
	ldr r1, _08028274
	str r0, [r1]
	ldr r1, _08028278
	strb r0, [r1]
	ldr r1, _0802827C
	strb r0, [r1]
	ldr r1, _08028280
	strb r0, [r1]
	ldr r1, _08028284
	strb r0, [r1]
	ldr r1, _08028288
	strb r0, [r1]
	ldr r1, _0802828C
	strb r0, [r1]
	ldr r1, _08028290
	strb r0, [r1]
	ldr r1, _08028294
	strb r0, [r1]
	ldr r1, _08028298
	strb r0, [r1]
	ldr r1, _0802829C
	strb r0, [r1]
	ldr r1, _080282A0
	strb r0, [r1]
	ldr r4, _080282A4
	adds r1, r4, #0
	movs r2, #0x36
	bl DmaFill32
	adds r4, #0x45
	movs r0, #2
	strb r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08028244: .4byte 0x080CCFF8
_08028248: .4byte 0x080CE43C
_0802824C: .4byte 0x080CC788
_08028250: .4byte 0x02002E4C
_08028254: .4byte 0x0203DFF4
_08028258: .4byte 0x0203DFF8
_0802825C: .4byte 0x0203DFFC
_08028260: .4byte 0x0203E000
_08028264: .4byte 0x0203E004
_08028268: .4byte 0x0203DFB4
_0802826C: .4byte 0x0203DFB8
_08028270: .4byte 0x0203DFC0
_08028274: .4byte 0x0203DFBC
_08028278: .4byte 0x0203DFD0
_0802827C: .4byte 0x0203DFD1
_08028280: .4byte 0x0203DFD2
_08028284: .4byte 0x0203DFD3
_08028288: .4byte 0x0203DFD4
_0802828C: .4byte 0x0203DFD6
_08028290: .4byte 0x0203DFE4
_08028294: .4byte 0x0203E008
_08028298: .4byte 0x0203DFE5
_0802829C: .4byte 0x030043A4
_080282A0: .4byte 0x030043A5
_080282A4: .4byte 0x0203E01C

    .thumb
    .global setup_entities
setup_entities: @ 0x080282A8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x20
	adds r6, r0, #0
	str r1, [sp]
	adds r4, r2, #0
	ldr r1, _080282D4
	movs r0, #0
	strb r0, [r1]
	bl sub_8030C30
	ldr r0, [sp]
	cmp r0, #1
	beq _080282F4
	cmp r0, #1
	bgt _080282D8
	cmp r0, #0
	beq _080282E0
	b _08028354
	.align 2, 0
_080282D4: .4byte 0x0203DFE8
_080282D8:
	ldr r1, [sp]
	cmp r1, #2
	beq _08028304
	b _08028354
_080282E0:
	ldr r0, _080282F0
	str r4, [r0]
	movs r0, #0
	movs r1, #6
	bl FreeById
	b _08028354
	.align 2, 0
_080282F0: .4byte 0x0203DFB0
_080282F4:
	bl sub_8027C8C
	ldr r0, _08028300
	str r4, [r0]
	b _08028354
	.align 2, 0
_08028300: .4byte 0x0203DFB0
_08028304:
	movs r0, #0
	movs r1, #6
	bl FreeById
	movs r0, #0
	movs r1, #2
	bl sub_8062064
	movs r0, #0
	movs r1, #2
	bl sub_8047878
	bl sub_8027F14
	ldr r4, _08028344
	ldr r0, [r4]
	ldr r2, _08028348
	ldr r1, _0802834C
	ldrb r1, [r1, #0xe]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl sub_800389C
	ldr r0, [r4]
	ldr r1, _08028350
	ldr r1, [r1]
	bl sub_8003894
	bl _08028E0E
	.align 2, 0
_08028344: .4byte dword_2000FC8
_08028348: .4byte 0x080CC844
_0802834C: .4byte gRoomHeader
_08028350: .4byte 0x080CC7EC
_08028354:
	ldr r0, _08028670
	movs r5, #0
	str r5, [r0]
	ldr r0, _08028674
	str r5, [r0]
	ldr r0, _08028678
	str r5, [r0]
	ldr r0, _0802867C
	str r5, [r0]
	ldr r7, _08028680
	ldr r0, _08028684
	lsls r1, r6, #3
	adds r1, r1, r0
	ldrb r0, [r1]
	strb r0, [r7]
	ldr r2, _08028688
	mov r8, r2
	ldrb r0, [r1, #1]
	strb r0, [r2]
	ldr r3, _0802868C
	mov sb, r3
	ldrb r0, [r1, #2]
	strb r0, [r3]
	ldr r4, _08028690
	mov sl, r4
	ldrb r0, [r1, #3]
	strb r0, [r4]
	ldrb r0, [r1, #4]
	ldr r6, _08028694
	strb r0, [r6]
	ldrb r0, [r7]
	movs r4, #0xd8
	muls r0, r4, r0
	movs r1, #6
	movs r2, #0
	bl Alloc
	ldr r1, _08028698
	str r0, [r1]
	ldr r6, _0802869C
	mov r2, r8
	ldrb r0, [r2]
	muls r0, r4, r0
	movs r1, #6
	movs r2, #0
	bl Alloc
	str r0, [r6]
	ldr r6, _080286A0
	mov r3, sb
	ldrb r0, [r3]
	muls r0, r4, r0
	movs r1, #6
	movs r2, #0
	bl Alloc
	str r0, [r6]
	ldr r4, _080286A4
	mov r6, sl
	ldrb r1, [r6]
	movs r0, #0xe8
	muls r0, r1, r0
	movs r1, #6
	movs r2, #0
	bl Alloc
	str r0, [r4]
	ldr r4, _080286A8
	ldr r0, _08028694
	ldrb r1, [r0]
	lsls r0, r1, #5
	adds r0, r0, r1
	lsls r0, r0, #3
	movs r1, #6
	movs r2, #0
	bl Alloc
	str r0, [r4]
	ldr r0, _080286AC
	strb r5, [r0]
	ldr r0, _080286B0
	strb r5, [r0]
	ldr r0, _080286B4
	strb r5, [r0]
	ldr r0, _080286B8
	strb r5, [r0]
	ldr r0, _080286BC
	strb r5, [r0]
	movs r1, #0
	str r1, [sp, #4]
	ldrb r2, [r7]
	cmp r1, r2
	bge _0802842A
	ldr r4, _08028698
	movs r3, #0
	adds r2, r7, #0
_08028414:
	ldr r0, [r4]
	adds r0, r1, r0
	adds r0, #0x2e
	strb r3, [r0]
	adds r1, #0xd8
	ldr r5, [sp, #4]
	adds r5, #1
	str r5, [sp, #4]
	ldrb r6, [r2]
	cmp r5, r6
	blt _08028414
_0802842A:
	movs r7, #0
	str r7, [sp, #4]
	ldr r2, _08028688
	ldr r5, _0802868C
	ldr r6, _08028690
	ldr r0, _08028694
	mov sb, r0
	ldr r1, _080286C0
	mov r8, r1
	ldrb r3, [r2]
	cmp r7, r3
	bge _0802845E
	ldr r4, _0802869C
	movs r3, #0
	movs r1, #0
_08028448:
	ldr r0, [r4]
	adds r0, r1, r0
	adds r0, #0x2e
	strb r3, [r0]
	adds r1, #0xd8
	ldr r7, [sp, #4]
	adds r7, #1
	str r7, [sp, #4]
	ldrb r0, [r2]
	cmp r7, r0
	blt _08028448
_0802845E:
	movs r1, #0
	str r1, [sp, #4]
	adds r2, r5, #0
	ldrb r3, [r2]
	cmp r1, r3
	bge _08028484
	ldr r4, _080286A0
	movs r3, #0
_0802846E:
	ldr r0, [r4]
	adds r0, r1, r0
	adds r0, #0x2e
	strb r3, [r0]
	adds r1, #0xd8
	ldr r5, [sp, #4]
	adds r5, #1
	str r5, [sp, #4]
	ldrb r7, [r2]
	cmp r5, r7
	blt _0802846E
_08028484:
	movs r0, #0
	str r0, [sp, #4]
	adds r2, r6, #0
	ldrb r1, [r2]
	cmp r0, r1
	bge _080284AC
	ldr r4, _080286A4
	movs r3, #0
	movs r1, #0
_08028496:
	ldr r0, [r4]
	adds r0, r1, r0
	adds r0, #0x2e
	strb r3, [r0]
	adds r1, #0xe8
	ldr r5, [sp, #4]
	adds r5, #1
	str r5, [sp, #4]
	ldrb r6, [r2]
	cmp r5, r6
	blt _08028496
_080284AC:
	movs r7, #0
	str r7, [sp, #4]
	mov r2, sb
	ldrb r0, [r2]
	cmp r7, r0
	bge _080284D8
	ldr r5, _080286A8
	movs r4, #0
	movs r1, #0
	movs r3, #0x84
	lsls r3, r3, #1
_080284C2:
	ldr r0, [r5]
	adds r0, r1, r0
	adds r0, #0x2e
	strb r4, [r0]
	adds r1, r1, r3
	ldr r6, [sp, #4]
	adds r6, #1
	str r6, [sp, #4]
	ldrb r7, [r2]
	cmp r6, r7
	blt _080284C2
_080284D8:
	ldr r4, _080286C4
	ldr r0, [r4]
	ldrh r0, [r0, #0xa]
	movs r1, #6
	movs r2, #0
	bl Alloc
	mov r1, r8
	str r0, [r1]
	movs r2, #0
	str r2, [sp, #4]
	ldr r0, [r4]
	ldrh r0, [r0, #0xa]
	cmp r2, r0
	bge _0802850E
	mov r3, r8
	adds r1, r4, #0
_080284FA:
	ldr r0, [r3]
	ldr r4, [sp, #4]
	adds r0, r0, r4
	strb r2, [r0]
	adds r4, #1
	str r4, [sp, #4]
	ldr r0, [r1]
	ldrh r0, [r0, #0xa]
	cmp r4, r0
	blt _080284FA
_0802850E:
	movs r5, #0
	str r5, [sp, #0xc]
	mov r8, r5
	movs r6, #0
	str r6, [sp, #0x10]
	mov sb, r6
	movs r7, #0
	str r7, [sp, #4]
	ldr r1, _080286C4
	ldr r0, [r1]
	ldrh r0, [r0, #8]
	cmp r7, r0
	bge _080285AC
_08028528:
	ldr r0, [r1]
	ldr r0, [r0, #4]
	ldr r2, [sp, #4]
	lsls r1, r2, #3
	adds r0, r1, r0
	ldr r7, [r0]
	movs r3, #0
	str r3, [sp, #8]
	adds r2, #1
	str r2, [sp, #0x18]
	str r1, [sp, #0x1c]
	ldrh r0, [r0, #4]
	cmp r3, r0
	bge _0802859E
_08028544:
	ldrh r0, [r7, #2]
	cmp r0, #0xa8
	bls _08028564
	movs r4, #6
	ldrsh r1, [r7, r4]
	bl sub_80342CC
	cmp r0, #0
	bne _08028564
	ldr r5, [sp, #0xc]
	adds r5, #1
	str r5, [sp, #0xc]
	ldrh r0, [r7, #8]
	cmp r0, r8
	ble _08028564
	mov r8, r0
_08028564:
	ldr r1, _080286C8
	ldrh r0, [r7, #2]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	beq _08028584
	ldr r6, [sp, #0x10]
	adds r6, #1
	str r6, [sp, #0x10]
	ldrh r0, [r7, #8]
	cmp r0, sb
	ble _08028584
	mov sb, r0
_08028584:
	adds r7, #0x1c
	ldr r0, [sp, #8]
	adds r0, #1
	str r0, [sp, #8]
	ldr r0, _080286C4
	ldr r0, [r0]
	ldr r0, [r0, #4]
	ldr r1, [sp, #0x1c]
	adds r0, r1, r0
	ldr r2, [sp, #8]
	ldrh r0, [r0, #4]
	cmp r2, r0
	blt _08028544
_0802859E:
	ldr r3, [sp, #0x18]
	str r3, [sp, #4]
	ldr r1, _080286C4
	ldr r0, [r1]
	ldrh r0, [r0, #8]
	cmp r3, r0
	blt _08028528
_080285AC:
	ldr r0, _080286CC
	mov r4, sp
	ldrb r4, [r4, #0xc]
	strb r4, [r0]
	ldr r5, _080286D0
	mov sl, r5
	mov r6, sp
	ldrb r6, [r6, #0xc]
	strb r6, [r5]
	ldr r0, _080286D4
	movs r7, #0
	strb r7, [r0]
	ldr r0, _080286D8
	mov r1, sp
	ldrb r1, [r1, #0x10]
	strb r1, [r0]
	ldr r0, _080286DC
	mov r2, sp
	ldrb r2, [r2, #0x10]
	strb r2, [r0]
	ldr r0, _080286E0
	strb r7, [r0]
	ldr r6, _080286E4
	ldr r0, [r6]
	cmp r0, #0
	beq _080285EA
	movs r1, #4
	bl Free
	movs r0, #0
	str r0, [r6]
_080285EA:
	ldr r3, [sp, #0xc]
	ldr r4, [sp, #0x10]
	adds r5, r3, r4
	adds r0, r5, #0
	adds r0, #0xa
	lsls r4, r0, #3
	subs r4, r4, r0
	lsls r4, r4, #4
	adds r0, r4, #0
	movs r1, #0xb
	movs r2, #4
	bl Alloc
	adds r1, r0, #0
	str r1, [r6]
	lsrs r4, r4, #2
	movs r0, #0
	adds r2, r4, #0
	bl DmaFill32
	ldr r0, _080286E8
	strb r5, [r0]
	ldr r0, _080286EC
	strb r5, [r0]
	ldr r0, _080286F0
	strb r7, [r0]
	ldr r1, _080286F4
	movs r0, #0xa
	strb r0, [r1]
	ldr r0, _080286F8
	strb r5, [r0]
	movs r0, #0x96
	lsls r0, r0, #0xf
	bl sub_8003854
	ldr r4, _080286FC
	str r0, [r4]
	ldr r2, _08028700
	ldr r1, _08028704
	ldrb r1, [r1, #0xe]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl sub_800389C
	ldr r0, [r4]
	ldr r1, _08028708
	ldr r1, [r1]
	bl sub_8003894
	ldr r0, [sp, #0xc]
	ldr r1, [sp]
	bl sub_8047878
	ldr r0, [sp, #0x10]
	ldr r1, [sp]
	bl sub_8062064
	ldr r5, [sp, #0xc]
	cmp r5, #0
	bne _0802870C
	ldr r6, [sp, #0x10]
	cmp r6, #0
	bne _0802866C
	b _08028E0A
_0802866C:
	b _08028730
	.align 2, 0
_08028670: .4byte 0x0203DFB4
_08028674: .4byte 0x0203DFB8
_08028678: .4byte 0x0203DFBC
_0802867C: .4byte 0x0203DFC0
_08028680: .4byte 0x0203E009
_08028684: .4byte 0x080A7474
_08028688: .4byte 0x0203E00A
_0802868C: .4byte 0x0203E00B
_08028690: .4byte 0x0203E00C
_08028694: .4byte 0x0203DFD5
_08028698: .4byte 0x0203DFF4
_0802869C: .4byte 0x0203DFF8
_080286A0: .4byte 0x0203DFFC
_080286A4: .4byte 0x0203E000
_080286A8: .4byte 0x0203E004
_080286AC: .4byte 0x0203DFD0
_080286B0: .4byte 0x0203DFD1
_080286B4: .4byte 0x0203DFD2
_080286B8: .4byte 0x0203DFD3
_080286BC: .4byte 0x0203DFD4
_080286C0: .4byte 0x0203E010
_080286C4: .4byte 0x0203DFB0
_080286C8: .4byte 0x080CC2B0
_080286CC: .4byte 0x0203DFD6
_080286D0: .4byte 0x0203E00D
_080286D4: .4byte 0x0203DFE4
_080286D8: .4byte 0x0203E008
_080286DC: .4byte 0x0203E00E
_080286E0: .4byte 0x0203DFE5
_080286E4: .4byte dword_200032C
_080286E8: .4byte byte_2000331
_080286EC: .4byte byte_2000330
_080286F0: .4byte byte_2000332
_080286F4: .4byte byte_2000333
_080286F8: .4byte byte_2000334
_080286FC: .4byte dword_2000FC8
_08028700: .4byte 0x080CC844
_08028704: .4byte gRoomHeader
_08028708: .4byte 0x080CC7EC
_0802870C:
	ldr r4, _080287FC
	mov r7, sl
	ldrb r1, [r7]
	movs r0, #0xd8
	muls r0, r1, r0
	movs r1, #6
	movs r2, #0
	bl Alloc
	str r0, [r4]
	ldr r4, _08028800
	mov r0, r8
	adds r0, #1
	movs r1, #6
	movs r2, #0
	bl Alloc
	str r0, [r4]
_08028730:
	ldr r0, [sp, #0x10]
	cmp r0, #0
	beq _0802875A
	ldr r4, _08028804
	ldr r0, _08028808
	ldrb r1, [r0]
	movs r0, #0xd8
	muls r0, r1, r0
	movs r1, #6
	movs r2, #0
	bl Alloc
	str r0, [r4]
	ldr r4, _0802880C
	mov r0, sb
	adds r0, #1
	movs r1, #6
	movs r2, #0
	bl Alloc
	str r0, [r4]
_0802875A:
	movs r1, #0
	str r1, [sp, #0xc]
	movs r2, #0
	str r2, [sp, #0x10]
	movs r3, #0
	str r3, [sp, #0x14]
	movs r4, #0
	str r4, [sp, #4]
	ldr r1, _08028810
	ldr r0, [r1]
	ldrh r0, [r0, #8]
	cmp r4, r0
	blt _08028776
	b _08028E0A
_08028776:
	ldr r0, [r1]
	ldr r0, [r0, #4]
	ldr r5, [sp, #4]
	lsls r1, r5, #3
	adds r0, r1, r0
	ldr r7, [r0]
	movs r6, #0
	str r6, [sp, #8]
	adds r5, #1
	str r5, [sp, #0x18]
	str r1, [sp, #0x1c]
	ldrh r0, [r0, #4]
	cmp r6, r0
	blt _08028794
	b _08028DFA
_08028794:
	ldr r0, _08028814
	mov sl, r0
_08028798:
	ldrh r0, [r7, #2]
	movs r2, #6
	ldrsh r1, [r7, r2]
	bl sub_80342CC
	adds r3, r0, #0
	cmp r3, #0
	beq _080287AA
	b _08028DDE
_080287AA:
	ldrh r0, [r7, #2]
	cmp r0, #0xa8
	bhi _080287B2
	b _08028ACC
_080287B2:
	ldrh r1, [r7, #8]
	ldr r0, _08028800
	ldr r0, [r0]
	adds r0, r0, r1
	mov r4, sp
	ldrb r4, [r4, #0xc]
	strb r4, [r0]
	ldr r2, _080287FC
	movs r0, #0xd8
	ldr r5, [sp, #0xc]
	adds r1, r5, #0
	muls r1, r0, r1
	ldr r0, [r2]
	adds r0, r0, r1
	mov sb, r0
	mov r1, sb
	adds r1, #0x2e
	movs r0, #1
	strb r0, [r1]
	mov r0, sb
	adds r0, #0x48
	strb r3, [r0]
	ldr r0, _08028810
	ldr r1, [r0]
	ldrb r0, [r1, #0xc]
	cmp r0, #1
	bne _08028818
	ldr r1, [r1]
	ldr r6, [sp, #4]
	lsls r0, r6, #2
	adds r0, r0, r1
	ldr r0, [r0]
	mov r1, sb
	strh r0, [r1, #2]
	ldrh r0, [r7]
	strh r0, [r1, #4]
	b _0802882A
	.align 2, 0
_080287FC: .4byte 0x0203DFB4
_08028800: .4byte 0x0203DFB8
_08028804: .4byte 0x0203DFBC
_08028808: .4byte 0x0203E00E
_0802880C: .4byte 0x0203DFC0
_08028810: .4byte 0x0203DFB0
_08028814: .4byte 0x080CCFFC
_08028818:
	ldrh r0, [r7]
	mov r2, sb
	strh r0, [r2, #2]
	ldr r1, [r1]
	ldr r3, [sp, #4]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r0, [r0]
	strh r0, [r2, #4]
_0802882A:
	ldrh r0, [r7, #4]
	mov r4, sb
	strh r0, [r4, #6]
	ldrb r0, [r7, #0xa]
	strb r0, [r4, #8]
	ldrh r0, [r7, #2]
	strh r0, [r4]
	ldr r1, _08028AC0
	ldrh r0, [r7, #2]
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrb r0, [r0, #2]
	mov r1, sb
	adds r1, #0x46
	strh r0, [r1]
	ldrb r0, [r7, #0xb]
	strb r0, [r4, #9]
	ldrb r0, [r7, #0xc]
	strb r0, [r4, #0xa]
	ldrb r0, [r7, #0xd]
	strb r0, [r4, #0xb]
	ldrb r0, [r7, #0xe]
	strb r0, [r4, #0xc]
	ldrb r0, [r7, #0xf]
	strb r0, [r4, #0x10]
	ldrb r0, [r7, #0x11]
	strb r0, [r4, #0x14]
	ldrb r0, [r7, #0x12]
	strb r0, [r4, #0x18]
	ldrb r1, [r7, #0x13]
	mov r0, sb
	adds r0, #0x24
	strb r1, [r0]
	ldrb r1, [r7, #0x14]
	adds r0, #4
	strb r1, [r0]
	ldrb r0, [r7, #0x10]
	mov r1, sb
	adds r1, #0x45
	strb r0, [r1]
	ldrh r0, [r7, #6]
	strh r0, [r4, #0x1c]
	ldrh r0, [r7, #8]
	strh r0, [r4, #0x1e]
	movs r5, #0
	strh r5, [r4, #0x20]
	mov r0, sb
	adds r0, #0x3c
	movs r6, #0
	strb r6, [r0]
	ldrb r0, [r7, #0x15]
	subs r1, #0x16
	strb r0, [r1]
	ldrb r1, [r7, #0x16]
	mov r0, sb
	adds r0, #0x30
	strb r1, [r0]
	ldrb r1, [r7, #0x18]
	adds r0, #8
	strb r1, [r0]
	ldrb r1, [r7, #0x17]
	subs r0, #4
	strb r1, [r0]
	ldrh r1, [r7, #0x1a]
	adds r0, #0xc
	strh r1, [r0]
	adds r0, #4
	strb r6, [r0]
	ldrh r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	add r0, sl
	ldrh r0, [r0, #0xc]
	lsls r0, r0, #0x10
	str r0, [r4, #0x4c]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	add r0, sl
	ldrh r0, [r0, #0xe]
	lsls r0, r0, #0x10
	str r0, [r4, #0x50]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	add r0, sl
	ldrh r0, [r0, #0x10]
	lsls r0, r0, #0x10
	str r0, [r4, #0x54]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	add r0, sl
	ldrh r0, [r0, #0x12]
	lsls r0, r0, #0x10
	str r0, [r4, #0x58]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	add r0, sl
	ldrh r0, [r0, #0x14]
	lsls r0, r0, #0x10
	str r0, [r4, #0x5c]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	add r0, sl
	ldrh r0, [r0, #0x16]
	lsls r0, r0, #0x10
	str r0, [r4, #0x60]
	mov r5, sb
	adds r5, #0x94
	ldrh r0, [r4, #2]
	lsls r0, r0, #0x10
	str r0, [r5]
	mov r6, sb
	adds r6, #0x98
	ldrh r2, [r4, #6]
	ldrb r0, [r4, #9]
	adds r2, r2, r0
	lsls r2, r2, #0x10
	str r2, [r6]
	movs r0, #0x9c
	add r0, sb
	mov r8, r0
	ldr r0, _08028AC4
	ldrh r0, [r0]
	ldrh r1, [r4, #4]
	subs r0, r0, r1
	ldrb r1, [r4, #9]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	subs r0, r0, r2
	mov r2, r8
	str r0, [r2]
	ldr r3, [r4, #0x4c]
	asrs r3, r3, #1
	ldr r2, [r5]
	subs r2, r2, r3
	ldrh r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	add r0, sl
	movs r4, #0
	ldrsh r0, [r0, r4]
	lsls r0, r0, #0x10
	adds r2, r2, r0
	mov r0, sb
	str r2, [r0, #0x64]
	ldrh r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	add r0, sl
	movs r2, #2
	ldrsh r1, [r0, r2]
	lsls r1, r1, #0x10
	ldr r0, [r6]
	adds r0, r0, r1
	mov r4, sb
	str r0, [r4, #0x68]
	ldr r4, [r4, #0x54]
	asrs r4, r4, #1
	mov r0, r8
	ldr r2, [r0]
	subs r2, r2, r4
	mov r0, sb
	ldrh r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	add r0, sl
	movs r1, #4
	ldrsh r0, [r0, r1]
	lsls r0, r0, #0x10
	adds r2, r2, r0
	mov r0, sb
	str r2, [r0, #0x6c]
	ldr r2, [r5]
	adds r2, r2, r3
	ldrh r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	add r0, sl
	movs r1, #0
	ldrsh r0, [r0, r1]
	lsls r0, r0, #0x10
	adds r2, r2, r0
	mov r3, sb
	str r2, [r3, #0x70]
	ldr r2, [r6]
	ldr r0, [r3, #0x50]
	adds r2, r2, r0
	ldrh r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	add r0, sl
	movs r1, #2
	ldrsh r0, [r0, r1]
	lsls r0, r0, #0x10
	adds r2, r2, r0
	str r2, [r3, #0x74]
	mov r3, r8
	ldr r2, [r3]
	adds r2, r2, r4
	mov r4, sb
	ldrh r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	add r0, sl
	movs r1, #4
	ldrsh r0, [r0, r1]
	lsls r0, r0, #0x10
	adds r2, r2, r0
	str r2, [r4, #0x78]
	ldr r0, [r4, #0x58]
	asrs r0, r0, #1
	ldr r2, [r5]
	subs r2, r2, r0
	ldrh r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	add r0, sl
	movs r3, #6
	ldrsh r0, [r0, r3]
	lsls r0, r0, #0x10
	adds r2, r2, r0
	str r2, [r4, #0x7c]
	mov r2, sb
	adds r2, #0x80
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	add r0, sl
	movs r4, #8
	ldrsh r1, [r0, r4]
	lsls r1, r1, #0x10
	ldr r0, [r6]
	adds r0, r0, r1
	str r0, [r2]
	mov r3, sb
	adds r3, #0x84
	mov r1, sb
	ldr r0, [r1, #0x60]
	asrs r0, r0, #1
	mov r4, r8
	ldr r2, [r4]
	subs r2, r2, r0
	ldrh r1, [r1]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	add r0, sl
	movs r1, #0xa
	ldrsh r0, [r0, r1]
	lsls r0, r0, #0x10
	adds r2, r2, r0
	str r2, [r3]
	adds r3, #4
	mov r2, sb
	ldr r0, [r2, #0x58]
	asrs r0, r0, #1
	ldr r2, [r5]
	adds r2, r2, r0
	mov r4, sb
	ldrh r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	add r0, sl
	movs r5, #6
	ldrsh r0, [r0, r5]
	lsls r0, r0, #0x10
	adds r2, r2, r0
	str r2, [r3]
	adds r3, #4
	ldr r2, [r6]
	ldr r0, [r4, #0x5c]
	adds r2, r2, r0
	ldrh r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	add r0, sl
	movs r6, #8
	ldrsh r0, [r0, r6]
	lsls r0, r0, #0x10
	adds r2, r2, r0
	str r2, [r3]
	adds r3, #4
	ldr r0, [r4, #0x60]
	asrs r0, r0, #1
	mov r1, r8
	ldr r2, [r1]
	adds r2, r2, r0
	ldrh r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	add r0, sl
	movs r4, #0xa
	ldrsh r0, [r0, r4]
	lsls r0, r0, #0x10
	adds r2, r2, r0
	str r2, [r3]
	mov r0, sb
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #0x14]
	bl sub_0804835C
	ldr r5, [sp, #0xc]
	adds r5, #1
	str r5, [sp, #0xc]
	ldr r6, [sp, #0x14]
	adds r6, #1
	str r6, [sp, #0x14]
	ldr r0, _08028AC8
	ldrb r0, [r0]
	cmp r5, r0
	bgt _08028AB8
	b _08028DDE
_08028AB8:
	.2byte 0xEE00, 0xEE00
	b _08028DDE
	.align 2, 0
_08028AC0: .4byte 0x080CC938
_08028AC4: .4byte gMapPixelSizeY
_08028AC8: .4byte 0x0203E00D
_08028ACC:
	ldr r1, _08028B2C
	ldrh r0, [r7, #2]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	bne _08028AE0
	b _08028DDE
_08028AE0:
	ldrh r1, [r7, #8]
	ldr r0, _08028B30
	ldr r0, [r0]
	adds r0, r0, r1
	mov r1, sp
	ldrb r1, [r1, #0x10]
	strb r1, [r0]
	ldr r2, _08028B34
	movs r0, #0xd8
	ldr r4, [sp, #0x10]
	adds r1, r4, #0
	muls r1, r0, r1
	ldr r0, [r2]
	adds r0, r0, r1
	mov sb, r0
	mov r1, sb
	adds r1, #0x2e
	movs r0, #1
	strb r0, [r1]
	mov r0, sb
	adds r0, #0x48
	strb r3, [r0]
	ldr r0, _08028B38
	ldr r1, [r0]
	ldrb r0, [r1, #0xc]
	cmp r0, #1
	bne _08028B3C
	ldr r1, [r1]
	ldr r5, [sp, #4]
	lsls r0, r5, #2
	adds r0, r0, r1
	ldr r0, [r0]
	mov r6, sb
	strh r0, [r6, #2]
	ldrh r0, [r7]
	strh r0, [r6, #4]
	b _08028B4E
	.align 2, 0
_08028B2C: .4byte 0x080CC2B0
_08028B30: .4byte 0x0203DFC0
_08028B34: .4byte 0x0203DFBC
_08028B38: .4byte 0x0203DFB0
_08028B3C:
	ldrh r0, [r7]
	mov r2, sb
	strh r0, [r2, #2]
	ldr r1, [r1]
	ldr r3, [sp, #4]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r0, [r0]
	strh r0, [r2, #4]
_08028B4E:
	ldrh r0, [r7, #4]
	mov r4, sb
	strh r0, [r4, #6]
	ldrb r0, [r7, #0xa]
	strb r0, [r4, #8]
	ldrh r0, [r7, #2]
	strh r0, [r4]
	ldr r1, _08028E20
	ldrh r0, [r7, #2]
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrb r0, [r0, #2]
	mov r1, sb
	adds r1, #0x46
	strh r0, [r1]
	ldrb r0, [r7, #0xb]
	strb r0, [r4, #9]
	ldrb r0, [r7, #0xc]
	strb r0, [r4, #0xa]
	ldrb r0, [r7, #0xd]
	strb r0, [r4, #0xb]
	ldrb r0, [r7, #0xe]
	strb r0, [r4, #0xc]
	ldrb r0, [r7, #0xf]
	strb r0, [r4, #0x10]
	ldrb r0, [r7, #0x11]
	strb r0, [r4, #0x14]
	ldrb r0, [r7, #0x12]
	strb r0, [r4, #0x18]
	ldrb r1, [r7, #0x13]
	mov r0, sb
	adds r0, #0x24
	strb r1, [r0]
	ldrb r1, [r7, #0x14]
	adds r0, #4
	strb r1, [r0]
	ldrb r0, [r7, #0x10]
	mov r1, sb
	adds r1, #0x45
	strb r0, [r1]
	ldrh r0, [r7, #6]
	strh r0, [r4, #0x1c]
	ldrh r0, [r7, #8]
	strh r0, [r4, #0x1e]
	movs r5, #0
	strh r5, [r4, #0x20]
	mov r0, sb
	adds r0, #0x3c
	movs r6, #0
	strb r6, [r0]
	ldrb r0, [r7, #0x15]
	subs r1, #0x16
	strb r0, [r1]
	ldrb r1, [r7, #0x16]
	mov r0, sb
	adds r0, #0x30
	strb r1, [r0]
	ldrb r1, [r7, #0x18]
	adds r0, #8
	strb r1, [r0]
	ldrb r1, [r7, #0x17]
	subs r0, #4
	strb r1, [r0]
	ldrh r1, [r7, #0x1a]
	adds r0, #0xc
	strh r1, [r0]
	adds r0, #4
	strb r6, [r0]
	ldrh r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	add r0, sl
	ldrh r0, [r0, #0xc]
	lsls r0, r0, #0x10
	str r0, [r4, #0x4c]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	add r0, sl
	ldrh r0, [r0, #0xe]
	lsls r0, r0, #0x10
	str r0, [r4, #0x50]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	add r0, sl
	ldrh r0, [r0, #0x10]
	lsls r0, r0, #0x10
	str r0, [r4, #0x54]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	add r0, sl
	ldrh r0, [r0, #0x12]
	lsls r0, r0, #0x10
	str r0, [r4, #0x58]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	add r0, sl
	ldrh r0, [r0, #0x14]
	lsls r0, r0, #0x10
	str r0, [r4, #0x5c]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	add r0, sl
	ldrh r0, [r0, #0x16]
	lsls r0, r0, #0x10
	str r0, [r4, #0x60]
	mov r5, sb
	adds r5, #0x94
	ldrh r0, [r4, #2]
	lsls r0, r0, #0x10
	str r0, [r5]
	mov r6, sb
	adds r6, #0x98
	ldrh r2, [r4, #6]
	ldrb r0, [r4, #9]
	adds r2, r2, r0
	lsls r2, r2, #0x10
	str r2, [r6]
	movs r0, #0x9c
	add r0, sb
	mov r8, r0
	ldr r0, _08028E24
	ldrh r0, [r0]
	ldrh r1, [r4, #4]
	subs r0, r0, r1
	ldrb r1, [r4, #9]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	subs r0, r0, r2
	mov r2, r8
	str r0, [r2]
	ldr r3, [r4, #0x4c]
	asrs r3, r3, #1
	ldr r2, [r5]
	subs r2, r2, r3
	ldrh r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	add r0, sl
	movs r4, #0
	ldrsh r0, [r0, r4]
	lsls r0, r0, #0x10
	adds r2, r2, r0
	mov r0, sb
	str r2, [r0, #0x64]
	ldrh r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	add r0, sl
	movs r2, #2
	ldrsh r1, [r0, r2]
	lsls r1, r1, #0x10
	ldr r0, [r6]
	adds r0, r0, r1
	mov r4, sb
	str r0, [r4, #0x68]
	ldr r4, [r4, #0x54]
	asrs r4, r4, #1
	mov r0, r8
	ldr r2, [r0]
	subs r2, r2, r4
	mov r0, sb
	ldrh r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	add r0, sl
	movs r1, #4
	ldrsh r0, [r0, r1]
	lsls r0, r0, #0x10
	adds r2, r2, r0
	mov r0, sb
	str r2, [r0, #0x6c]
	ldr r2, [r5]
	adds r2, r2, r3
	ldrh r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	add r0, sl
	movs r1, #0
	ldrsh r0, [r0, r1]
	lsls r0, r0, #0x10
	adds r2, r2, r0
	mov r3, sb
	str r2, [r3, #0x70]
	ldr r2, [r6]
	ldr r0, [r3, #0x50]
	adds r2, r2, r0
	ldrh r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	add r0, sl
	movs r1, #2
	ldrsh r0, [r0, r1]
	lsls r0, r0, #0x10
	adds r2, r2, r0
	str r2, [r3, #0x74]
	mov r3, r8
	ldr r2, [r3]
	adds r2, r2, r4
	mov r4, sb
	ldrh r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	add r0, sl
	movs r1, #4
	ldrsh r0, [r0, r1]
	lsls r0, r0, #0x10
	adds r2, r2, r0
	str r2, [r4, #0x78]
	ldr r0, [r4, #0x58]
	asrs r0, r0, #1
	ldr r2, [r5]
	subs r2, r2, r0
	ldrh r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	add r0, sl
	movs r3, #6
	ldrsh r0, [r0, r3]
	lsls r0, r0, #0x10
	adds r2, r2, r0
	str r2, [r4, #0x7c]
	mov r2, sb
	adds r2, #0x80
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	add r0, sl
	movs r4, #8
	ldrsh r1, [r0, r4]
	lsls r1, r1, #0x10
	ldr r0, [r6]
	adds r0, r0, r1
	str r0, [r2]
	mov r3, sb
	adds r3, #0x84
	mov r1, sb
	ldr r0, [r1, #0x60]
	asrs r0, r0, #1
	mov r4, r8
	ldr r2, [r4]
	subs r2, r2, r0
	ldrh r1, [r1]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	add r0, sl
	movs r1, #0xa
	ldrsh r0, [r0, r1]
	lsls r0, r0, #0x10
	adds r2, r2, r0
	str r2, [r3]
	adds r3, #4
	mov r2, sb
	ldr r0, [r2, #0x58]
	asrs r0, r0, #1
	ldr r2, [r5]
	adds r2, r2, r0
	mov r4, sb
	ldrh r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	add r0, sl
	movs r5, #6
	ldrsh r0, [r0, r5]
	lsls r0, r0, #0x10
	adds r2, r2, r0
	str r2, [r3]
	adds r3, #4
	ldr r2, [r6]
	ldr r0, [r4, #0x5c]
	adds r2, r2, r0
	ldrh r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	add r0, sl
	movs r6, #8
	ldrsh r0, [r0, r6]
	lsls r0, r0, #0x10
	adds r2, r2, r0
	str r2, [r3]
	adds r3, #4
	ldr r0, [r4, #0x60]
	asrs r0, r0, #1
	mov r1, r8
	ldr r2, [r1]
	adds r2, r2, r0
	ldrh r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	add r0, sl
	movs r4, #0xa
	ldrsh r0, [r0, r4]
	lsls r0, r0, #0x10
	adds r2, r2, r0
	str r2, [r3]
	mov r0, sb
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #0x14]
	bl sub_0806220C
	ldr r5, [sp, #0x10]
	adds r5, #1
	str r5, [sp, #0x10]
	ldr r6, [sp, #0x14]
	adds r6, #1
	str r6, [sp, #0x14]
	ldr r0, _08028E28
	ldrb r0, [r0]
	cmp r5, r0
	ble _08028DDE
	.2byte 0xEE00, 0xEE00
_08028DDE:
	adds r7, #0x1c
	ldr r0, [sp, #8]
	adds r0, #1
	str r0, [sp, #8]
	ldr r0, _08028E2C
	ldr r0, [r0]
	ldr r0, [r0, #4]
	ldr r1, [sp, #0x1c]
	adds r0, r1, r0
	ldr r2, [sp, #8]
	ldrh r0, [r0, #4]
	cmp r2, r0
	bge _08028DFA
	b _08028798
_08028DFA:
	ldr r3, [sp, #0x18]
	str r3, [sp, #4]
	ldr r1, _08028E2C
	ldr r0, [r1]
	ldrh r0, [r0, #8]
	cmp r3, r0
	bge _08028E0A
	b _08028776
_08028E0A:
	bl sub_8028E30
_08028E0E:
	add sp, #0x20
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08028E20: .4byte 0x080CC938
_08028E24: .4byte gMapPixelSizeY
_08028E28: .4byte 0x0203E00E
_08028E2C: .4byte 0x0203DFB0

    .thumb
sub_8028E30: @ 0x08028E30
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x34
	movs r0, #0
	str r0, [sp, #0x1c]
	ldr r1, _08028EF0
	ldr r0, [r1]
	ldr r2, [sp, #0x1c]
	ldrh r0, [r0, #8]
	cmp r2, r0
	blt _08028E4E
	b _080293A2
_08028E4E:
	ldr r0, [r1]
	ldr r0, [r0, #4]
	ldr r3, [sp, #0x1c]
	lsls r1, r3, #3
	adds r0, r1, r0
	ldr r2, [r0]
	mov sb, r2
	movs r3, #0
	str r3, [sp, #0x20]
	str r1, [sp, #0x30]
	ldr r1, [sp, #0x1c]
	adds r1, #1
	str r1, [sp, #0x2c]
	ldrh r0, [r0, #4]
	cmp r3, r0
	blt _08028E70
	b _08029392
_08028E70:
	mov r2, sb
	ldrh r0, [r2, #2]
	cmp r0, #0xa8
	bls _08028E7A
	b _08029374
_08028E7A:
	ldr r1, _08028EF4
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	beq _08028E8C
	b _08029374
_08028E8C:
	ldrb r0, [r2, #0x16]
	cmp r0, #0
	bne _08028E94
	b _08029374
_08028E94:
	ldrh r1, [r2, #8]
	ldr r0, _08028EF8
	ldr r0, [r0]
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _08028EA4
	b _08029374
_08028EA4:
	mov r0, sb
	ldr r1, [sp, #0x1c]
	bl sub_80343F0
	cmp r0, #0
	bne _08028EB2
	b _08029374
_08028EB2:
	mov r3, sb
	ldrh r0, [r3, #2]
	movs r2, #6
	ldrsh r1, [r3, r2]
	bl sub_80342CC
	cmp r0, #0
	beq _08028EC4
	b _08029374
_08028EC4:
	mov r0, sb
	bl sub_08027B40
	adds r5, r0, #0
	adds r1, r5, #0
	adds r1, #0x2e
	movs r0, #1
	strb r0, [r1]
	ldr r0, _08028EF0
	ldr r1, [r0]
	ldrb r0, [r1, #0xc]
	cmp r0, #1
	bne _08028EFC
	ldr r1, [r1]
	ldr r3, [sp, #0x1c]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r0, [r0]
	strh r0, [r5, #2]
	mov r1, sb
	ldrh r0, [r1]
	b _08028F0C
	.align 2, 0
_08028EF0: .4byte 0x0203DFB0
_08028EF4: .4byte 0x080CC2B0
_08028EF8: .4byte 0x0203E010
_08028EFC:
	mov r2, sb
	ldrh r0, [r2]
	strh r0, [r5, #2]
	ldr r1, [r1]
	ldr r3, [sp, #0x1c]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r0, [r0]
_08028F0C:
	strh r0, [r5, #4]
	mov r1, sb
	ldrh r0, [r1, #4]
	movs r3, #0
	strh r0, [r5, #6]
	ldrb r0, [r1, #0xa]
	strb r0, [r5, #8]
	ldrh r0, [r1, #2]
	strh r0, [r5]
	ldrb r0, [r1, #0xb]
	strb r0, [r5, #9]
	ldrb r0, [r1, #0xc]
	strb r0, [r5, #0xa]
	ldrb r0, [r1, #0xd]
	strb r0, [r5, #0xb]
	ldrb r0, [r1, #0xe]
	strb r0, [r5, #0xc]
	ldrb r0, [r1, #0xf]
	strb r0, [r5, #0x10]
	ldrb r0, [r1, #0x11]
	strb r0, [r5, #0x14]
	ldrb r0, [r1, #0x12]
	strb r0, [r5, #0x18]
	ldrb r1, [r1, #0x13]
	adds r0, r5, #0
	adds r0, #0x24
	strb r1, [r0]
	mov r2, sb
	ldrb r1, [r2, #0x14]
	adds r0, #4
	strb r1, [r0]
	ldrb r0, [r2, #0x10]
	adds r4, r5, #0
	adds r4, #0x45
	strb r0, [r4]
	ldrh r0, [r2, #6]
	strh r0, [r5, #0x1c]
	ldrh r0, [r2, #8]
	strh r0, [r5, #0x1e]
	strh r3, [r5, #0x20]
	adds r0, r5, #0
	adds r0, #0x44
	strb r3, [r0]
	subs r0, #8
	strb r3, [r0]
	ldrb r0, [r2, #0x15]
	adds r2, r5, #0
	adds r2, #0x2f
	strb r0, [r2]
	adds r0, r5, #0
	adds r0, #0x49
	strb r3, [r0]
	mov r3, sb
	ldrb r1, [r3, #0x16]
	subs r0, #0x19
	strb r1, [r0]
	ldrb r1, [r3, #0x18]
	adds r0, #8
	strb r1, [r0]
	ldrb r1, [r3, #0x17]
	subs r0, #4
	strb r1, [r0]
	ldrh r1, [r3, #0x1a]
	adds r0, #0xc
	strh r1, [r0]
	ldr r1, _08028FB0
	ldrh r3, [r5]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r1, [r0]
	movs r0, #1
	ands r1, r0
	str r4, [sp, #0x24]
	adds r4, r2, #0
	cmp r1, #0
	beq _08028FB4
	ldrb r0, [r5, #0x18]
	adds r1, r5, #0
	adds r1, #0x46
	strh r0, [r1]
	b _08028FC2
	.align 2, 0
_08028FB0: .4byte 0x080CC2B0
_08028FB4:
	ldr r0, _08029040
	lsls r1, r3, #3
	adds r1, r1, r0
	ldrb r0, [r1, #2]
	adds r2, r5, #0
	adds r2, #0x46
	strh r0, [r2]
_08028FC2:
	adds r0, r5, #0
	bl sub_80293C0
	ldrh r1, [r5, #0x1e]
	ldr r0, _08029044
	ldr r0, [r0]
	adds r0, r0, r1
	movs r1, #1
	strb r1, [r0]
	ldrh r0, [r5]
	subs r0, #0x97
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x11
	bhi _08028FE2
	b _08029374
_08028FE2:
	ldrh r1, [r5, #2]
	ldr r0, _08029048
	movs r2, #0
	ldrsh r0, [r0, r2]
	subs r1, r1, r0
	mov r8, r1
	ldrh r1, [r5, #4]
	ldr r0, _0802904C
	movs r3, #0
	ldrsh r0, [r0, r3]
	subs r7, r1, r0
	ldrb r0, [r4]
	adds r1, r5, #0
	adds r1, #0x94
	str r1, [sp, #0x28]
	cmp r0, #0
	bne _08029086
	adds r4, r5, #0
	adds r4, #0xbc
	movs r0, #1
	str r0, [sp]
	mov r2, r8
	str r2, [sp, #4]
	str r7, [sp, #8]
	movs r3, #2
	str r3, [sp, #0xc]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl SetSprite
	ldrb r1, [r5, #8]
	adds r0, r4, #0
	bl SetSpritePriority
	ldrb r1, [r5, #9]
	ldr r0, _08029050
	ldr r0, [r0]
	adds r6, r4, #0
	cmp r1, r0
	bge _08029058
	ldr r0, _08029054
	adds r0, r1, r0
	ldrb r1, [r0]
	b _0802905A
	.align 2, 0
_08029040: .4byte 0x080CC938
_08029044: .4byte 0x0203E010
_08029048: .4byte gCameraPixelX
_0802904C: .4byte gCameraPixelY
_08029050: .4byte 0x080CEBC4
_08029054: .4byte 0x080CEB84
_08029058:
	movs r1, #5
_0802905A:
	adds r0, r4, #0
	bl sub_80037F4
	adds r0, r6, #0
	bl sub_8003794
	adds r4, r5, #0
	adds r4, #0x94
	ldrb r1, [r5, #9]
	rsbs r1, r1, #0
	ldr r0, _080290D0
	ldrh r2, [r0]
	adds r0, r4, #0
	bl sub_8003A7C
	str r4, [sp, #0x28]
	cmp r0, #0
	bne _08029086
	adds r1, r5, #0
	adds r1, #0xcf
	movs r0, #1
	strb r0, [r1]
_08029086:
	ldrb r0, [r5, #9]
	subs r7, r7, r0
	ldr r2, _080290D4
	ldrh r1, [r5]
	lsls r0, r1, #2
	adds r0, r0, r2
	ldr r6, [r0]
	movs r0, #1
	mov sl, r0
	ands r6, r0
	adds r3, r1, #0
	cmp r6, #0
	beq _080290FC
	movs r2, #0x1c
	ldrsh r1, [r5, r2]
	ldrb r2, [r5, #0xc]
	adds r0, r3, #0
	bl sub_8033118
	cmp r0, #0
	beq _080290DC
	adds r4, r5, #0
	adds r4, #0xa0
	ldr r1, _080290D8
	ldrh r0, [r5]
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrh r1, [r0, #4]
	mov r3, sl
	str r3, [sp]
	mov r0, r8
	str r0, [sp, #4]
	str r7, [sp, #8]
	movs r2, #2
	str r2, [sp, #0xc]
	adds r0, r4, #0
	b _08029288
	.align 2, 0
_080290D0: .4byte gMapPixelSizeY
_080290D4: .4byte 0x080CC2B0
_080290D8: .4byte 0x080CC938
_080290DC:
	adds r4, r5, #0
	adds r4, #0xa0
	ldrh r1, [r5]
	ldr r3, _080290F8
	adds r1, r1, r3
	mov r0, sl
	str r0, [sp]
	mov r2, r8
	str r2, [sp, #4]
	str r7, [sp, #8]
	movs r3, #2
	str r3, [sp, #0xc]
	adds r0, r4, #0
	b _08029288
	.align 2, 0
_080290F8: .4byte 0x00000221
_080290FC:
	ldr r1, [sp, #0x24]
	ldrb r0, [r1]
	cmp r0, #7
	bne _08029148
	adds r0, r5, #0
	bl sub_8033CCC
	cmp r0, #0
	bne _0802912C
	adds r4, r5, #0
	adds r4, #0xa0
	ldrh r1, [r5]
	ldr r2, _08029128
	adds r1, r1, r2
	str r6, [sp]
	mov r3, r8
	str r3, [sp, #4]
	str r7, [sp, #8]
	movs r0, #2
	str r0, [sp, #0xc]
	adds r0, r4, #0
	b _08029288
	.align 2, 0
_08029128: .4byte 0x00000221
_0802912C:
	adds r4, r5, #0
	adds r4, #0xa0
	str r6, [sp]
	mov r1, r8
	str r1, [sp, #4]
	str r7, [sp, #8]
	movs r2, #2
	str r2, [sp, #0xc]
	adds r0, r4, #0
	ldr r1, _08029144
	b _08029288
	.align 2, 0
_08029144: .4byte 0x00000451
_08029148:
	cmp r3, #0x17
	bne _0802914E
	b _080292CC
_0802914E:
	cmp r3, #0x17
	bgt _08029164
	cmp r3, #0x15
	bne _08029158
	b _0802924C
_08029158:
	cmp r3, #0x15
	ble _0802915E
	b _08029298
_0802915E:
	cmp r3, #0x14
	beq _0802920C
	b _08029324
_08029164:
	cmp r3, #0x6c
	beq _08029180
	cmp r3, #0x6c
	bgt _08029174
	cmp r3, #0x39
	bne _08029172
	b _080292F2
_08029172:
	b _08029324
_08029174:
	cmp r3, #0x6d
	beq _080291C4
	cmp r3, #0x93
	bne _0802917E
	b _08029298
_0802917E:
	b _08029324
_08029180:
	movs r0, #0xcd
	movs r1, #0
	bl sub_80342CC
	cmp r0, #0
	beq _080291A4
	adds r4, r5, #0
	adds r4, #0xa0
	str r6, [sp]
	mov r3, r8
	str r3, [sp, #4]
	str r7, [sp, #8]
	movs r0, #2
	str r0, [sp, #0xc]
	adds r0, r4, #0
	movs r1, #0xb7
	lsls r1, r1, #2
	b _08029288
_080291A4:
	adds r4, r5, #0
	adds r4, #0xa0
	ldrh r1, [r5]
	ldr r2, _080291C0
	adds r1, r1, r2
	str r6, [sp]
	mov r3, r8
	str r3, [sp, #4]
	str r7, [sp, #8]
	movs r0, #2
	str r0, [sp, #0xc]
	adds r0, r4, #0
	b _08029288
	.align 2, 0
_080291C0: .4byte 0x00000221
_080291C4:
	movs r0, #0xcd
	movs r1, #0
	bl sub_80342CC
	cmp r0, #0
	beq _080291EC
	adds r4, r5, #0
	adds r4, #0xa0
	str r6, [sp]
	mov r1, r8
	str r1, [sp, #4]
	str r7, [sp, #8]
	movs r2, #2
	str r2, [sp, #0xc]
	adds r0, r4, #0
	ldr r1, _080291E8
	b _08029288
	.align 2, 0
_080291E8: .4byte 0x000002DB
_080291EC:
	adds r4, r5, #0
	adds r4, #0xa0
	ldrh r1, [r5]
	ldr r3, _08029208
	adds r1, r1, r3
	str r6, [sp]
	mov r0, r8
	str r0, [sp, #4]
	str r7, [sp, #8]
	movs r2, #2
	str r2, [sp, #0xc]
	adds r0, r4, #0
	b _08029288
	.align 2, 0
_08029208: .4byte 0x00000221
_0802920C:
	ldr r0, _0802922C
	ldrb r0, [r0, #0x16]
	cmp r0, #0
	bne _08029230
	adds r4, r5, #0
	adds r4, #0xa0
	str r6, [sp]
	mov r3, r8
	str r3, [sp, #4]
	str r7, [sp, #8]
	movs r0, #2
	str r0, [sp, #0xc]
	adds r0, r4, #0
	movs r1, #0xb6
	lsls r1, r1, #2
	b _08029288
	.align 2, 0
_0802922C: .4byte 0x0200209A
_08029230:
	adds r4, r5, #0
	adds r4, #0xa0
	str r6, [sp]
	mov r1, r8
	str r1, [sp, #4]
	str r7, [sp, #8]
	movs r2, #2
	str r2, [sp, #0xc]
	adds r0, r4, #0
	ldr r1, _08029248
	b _08029288
	.align 2, 0
_08029248: .4byte 0x00000235
_0802924C:
	ldr r0, _0802926C
	ldrb r0, [r0, #5]
	cmp r0, #0
	bne _08029274
	adds r4, r5, #0
	adds r4, #0xa0
	str r6, [sp]
	mov r3, r8
	str r3, [sp, #4]
	str r7, [sp, #8]
	movs r0, #2
	str r0, [sp, #0xc]
	adds r0, r4, #0
	ldr r1, _08029270
	b _08029288
	.align 2, 0
_0802926C: .4byte 0x0200209A
_08029270: .4byte 0x000002D9
_08029274:
	adds r4, r5, #0
	adds r4, #0xa0
	str r6, [sp]
	mov r1, r8
	str r1, [sp, #4]
	str r7, [sp, #8]
	movs r2, #2
	str r2, [sp, #0xc]
	adds r0, r4, #0
	ldr r1, _08029294
_08029288:
	movs r2, #0
	movs r3, #0
	bl SetSprite
	b _08029342
	.align 2, 0
_08029294: .4byte 0x00000236
_08029298:
	adds r4, r5, #0
	adds r4, #0xa0
	ldr r0, _080292C8
	adds r1, r3, r0
	movs r2, #0
	str r2, [sp]
	mov r3, r8
	str r3, [sp, #4]
	str r7, [sp, #8]
	movs r0, #2
	str r0, [sp, #0xc]
	adds r0, r4, #0
	movs r3, #0
	bl SetSprite
	adds r1, r5, #0
	adds r1, #0xae
	movs r0, #0x14
	strb r0, [r1]
	adds r0, r4, #0
	movs r1, #0
	bl sub_800378C
	b _08029316
	.align 2, 0
_080292C8: .4byte 0x00000221
_080292CC:
	adds r4, r5, #0
	adds r4, #0xa0
	str r6, [sp]
	mov r1, r8
	str r1, [sp, #4]
	str r7, [sp, #8]
	movs r2, #2
	str r2, [sp, #0xc]
	adds r0, r4, #0
	movs r1, #0x8e
	lsls r1, r1, #2
	movs r2, #0
	movs r3, #0
	bl SetSprite
	adds r1, r5, #0
	adds r1, #0xae
	movs r0, #0x14
	b _08029314
_080292F2:
	adds r4, r5, #0
	adds r4, #0xa0
	str r6, [sp]
	mov r3, r8
	str r3, [sp, #4]
	str r7, [sp, #8]
	movs r0, #2
	str r0, [sp, #0xc]
	adds r0, r4, #0
	ldr r1, _08029320
	movs r2, #0
	movs r3, #0
	bl SetSprite
	adds r1, r5, #0
	adds r1, #0xae
	movs r0, #4
_08029314:
	strb r0, [r1]
_08029316:
	adds r0, r4, #0
	movs r1, #0
	bl sub_80037F4
	b _08029342
	.align 2, 0
_08029320: .4byte 0x0000025A
_08029324:
	adds r4, r5, #0
	adds r4, #0xa0
	ldr r2, _080293B4
	adds r1, r3, r2
	movs r3, #0
	str r3, [sp]
	mov r0, r8
	str r0, [sp, #4]
	str r7, [sp, #8]
	movs r2, #2
	str r2, [sp, #0xc]
	adds r0, r4, #0
	movs r2, #0
	bl SetSprite
_08029342:
	ldr r0, [r5, #0x4c]
	asrs r0, r0, #1
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x50]
	str r0, [sp, #0x14]
	ldr r0, [r5, #0x54]
	asrs r0, r0, #1
	str r0, [sp, #0x18]
	ldr r0, _080293B8
	ldrh r3, [r0]
	ldr r0, [sp, #0x28]
	add r1, sp, #0x10
	movs r2, #0
	bl sub_8003A74
	cmp r0, #0
	bne _0802936C
	adds r1, r5, #0
	adds r1, #0xb3
	movs r0, #1
	strb r0, [r1]
_0802936C:
	ldrb r1, [r5, #8]
	adds r0, r4, #0
	bl SetSpritePriority
_08029374:
	movs r3, #0x1c
	add sb, r3
	ldr r0, [sp, #0x20]
	adds r0, #1
	str r0, [sp, #0x20]
	ldr r0, _080293BC
	ldr r0, [r0]
	ldr r0, [r0, #4]
	ldr r1, [sp, #0x30]
	adds r0, r1, r0
	ldr r2, [sp, #0x20]
	ldrh r0, [r0, #4]
	cmp r2, r0
	bge _08029392
	b _08028E70
_08029392:
	ldr r3, [sp, #0x2c]
	str r3, [sp, #0x1c]
	ldr r1, _080293BC
	ldr r0, [r1]
	ldrh r0, [r0, #8]
	cmp r3, r0
	bge _080293A2
	b _08028E4E
_080293A2:
	add sp, #0x34
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080293B4: .4byte 0x00000221
_080293B8: .4byte gMapPixelSizeY
_080293BC: .4byte 0x0203DFB0

    .thumb
sub_80293C0: @ 0x080293C0
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	mov ip, r0
	ldr r3, _080295E0
	ldrh r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r3
	ldrh r0, [r0, #0xc]
	lsls r0, r0, #0x10
	mov r1, ip
	str r0, [r1, #0x4c]
	ldrh r1, [r1]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r3
	ldrh r0, [r0, #0xe]
	lsls r0, r0, #0x10
	mov r2, ip
	str r0, [r2, #0x50]
	ldrh r1, [r2]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r3
	ldrh r0, [r0, #0x10]
	lsls r0, r0, #0x10
	str r0, [r2, #0x54]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r3
	ldrh r0, [r0, #0x12]
	lsls r0, r0, #0x10
	str r0, [r2, #0x58]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r3
	ldrh r0, [r0, #0x14]
	lsls r0, r0, #0x10
	str r0, [r2, #0x5c]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r3
	ldrh r0, [r0, #0x16]
	lsls r0, r0, #0x10
	str r0, [r2, #0x60]
	mov r6, ip
	adds r6, #0x94
	ldrh r0, [r2, #2]
	lsls r0, r0, #0x10
	str r0, [r6]
	movs r4, #0x98
	add r4, ip
	mov r8, r4
	ldrh r2, [r2, #6]
	mov r1, ip
	ldrb r0, [r1, #9]
	adds r2, r2, r0
	lsls r2, r2, #0x10
	str r2, [r4]
	movs r4, #0x9c
	add r4, ip
	mov sb, r4
	ldr r0, _080295E4
	ldrh r0, [r0]
	ldrh r1, [r1, #4]
	subs r0, r0, r1
	mov r1, ip
	ldrb r1, [r1, #9]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	subs r0, r0, r2
	str r0, [r4]
	mov r2, ip
	ldr r4, [r2, #0x4c]
	asrs r4, r4, #1
	ldr r2, [r6]
	subs r2, r2, r4
	mov r0, ip
	ldrh r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r3
	movs r1, #0
	ldrsh r0, [r0, r1]
	lsls r0, r0, #0x10
	adds r2, r2, r0
	mov r0, ip
	str r2, [r0, #0x64]
	ldrh r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r3
	movs r2, #2
	ldrsh r1, [r0, r2]
	lsls r1, r1, #0x10
	mov r2, r8
	ldr r0, [r2]
	adds r0, r0, r1
	mov r1, ip
	str r0, [r1, #0x68]
	ldr r5, [r1, #0x54]
	asrs r5, r5, #1
	mov r0, sb
	ldr r2, [r0]
	subs r2, r2, r5
	ldrh r1, [r1]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r3
	movs r1, #4
	ldrsh r0, [r0, r1]
	lsls r0, r0, #0x10
	adds r2, r2, r0
	mov r0, ip
	str r2, [r0, #0x6c]
	ldr r2, [r6]
	adds r2, r2, r4
	ldrh r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r3
	movs r1, #0
	ldrsh r0, [r0, r1]
	lsls r0, r0, #0x10
	adds r2, r2, r0
	mov r4, ip
	str r2, [r4, #0x70]
	mov r0, r8
	ldr r2, [r0]
	ldr r0, [r4, #0x50]
	adds r2, r2, r0
	ldrh r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r3
	movs r1, #2
	ldrsh r0, [r0, r1]
	lsls r0, r0, #0x10
	adds r2, r2, r0
	str r2, [r4, #0x74]
	mov r4, sb
	ldr r2, [r4]
	adds r2, r2, r5
	mov r0, ip
	ldrh r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r3
	movs r1, #4
	ldrsh r0, [r0, r1]
	lsls r0, r0, #0x10
	adds r2, r2, r0
	mov r4, ip
	str r2, [r4, #0x78]
	ldr r0, [r4, #0x58]
	asrs r0, r0, #1
	ldr r2, [r6]
	subs r2, r2, r0
	ldrh r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r3
	movs r1, #6
	ldrsh r0, [r0, r1]
	lsls r0, r0, #0x10
	adds r2, r2, r0
	str r2, [r4, #0x7c]
	mov r2, ip
	adds r2, #0x80
	ldrh r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r3
	movs r4, #8
	ldrsh r1, [r0, r4]
	lsls r1, r1, #0x10
	mov r4, r8
	ldr r0, [r4]
	adds r0, r0, r1
	str r0, [r2]
	mov r4, ip
	adds r4, #0x84
	mov r1, ip
	ldr r0, [r1, #0x60]
	asrs r0, r0, #1
	mov r1, sb
	ldr r2, [r1]
	subs r2, r2, r0
	mov r0, ip
	ldrh r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r3
	movs r1, #0xa
	ldrsh r0, [r0, r1]
	lsls r0, r0, #0x10
	adds r2, r2, r0
	str r2, [r4]
	adds r4, #4
	mov r2, ip
	ldr r0, [r2, #0x58]
	asrs r0, r0, #1
	ldr r2, [r6]
	adds r2, r2, r0
	mov r0, ip
	ldrh r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r3
	movs r1, #6
	ldrsh r0, [r0, r1]
	lsls r0, r0, #0x10
	adds r2, r2, r0
	str r2, [r4]
	adds r4, #4
	mov r0, r8
	ldr r2, [r0]
	mov r1, ip
	ldr r0, [r1, #0x5c]
	adds r2, r2, r0
	ldrh r1, [r1]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r3
	movs r1, #8
	ldrsh r0, [r0, r1]
	lsls r0, r0, #0x10
	adds r2, r2, r0
	str r2, [r4]
	adds r4, #4
	mov r2, ip
	ldr r0, [r2, #0x60]
	asrs r0, r0, #1
	mov r1, sb
	ldr r2, [r1]
	adds r2, r2, r0
	mov r0, ip
	ldrh r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r3
	movs r1, #0xa
	ldrsh r0, [r0, r1]
	lsls r0, r0, #0x10
	adds r2, r2, r0
	str r2, [r4]
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080295E0: .4byte 0x080CCFFC
_080295E4: .4byte gMapPixelSizeY

    .thumb
    .global s_load_object
s_load_object: @ 0x080295E8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x30
	adds r2, r0, #0
	ldr r0, _08029658
	ldr r0, [r0]
	ldrb r0, [r0, #0xc]
	cmp r0, #1
	bne _08029664
	adds r0, r2, #0
	adds r0, #0xa0
	str r0, [sp, #0x10]
	ldr r0, _0802965C
	ldrh r0, [r0]
	ldr r3, [sp, #0x10]
	cmp r3, r0
	blt _08029614
	subs r0, #1
	str r0, [sp, #0x10]
_08029614:
	adds r5, r2, #0
	subs r5, #0xa0
	cmp r5, #0
	bge _08029624
	ldr r0, [sp, #0x10]
	subs r0, r0, r5
	str r0, [sp, #0x10]
	movs r5, #0
_08029624:
	adds r2, r1, #0
	adds r2, #0xa0
	str r2, [sp, #0x18]
	ldr r0, _08029660
	ldrh r0, [r0]
	cmp r2, r0
	blt _08029636
	subs r0, #1
	str r0, [sp, #0x18]
_08029636:
	subs r1, #0x73
	str r1, [sp, #0x14]
	cmp r1, #0
	bge _08029648
	ldr r3, [sp, #0x18]
	subs r3, r3, r1
	str r3, [sp, #0x18]
	movs r0, #0
	str r0, [sp, #0x14]
_08029648:
	adds r0, r5, #0
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #0x14]
	ldr r3, [sp, #0x18]
	bl sub_802A34C
	b _080296B6
	.align 2, 0
_08029658: .4byte 0x0203DFB0
_0802965C: .4byte gMapPixelSizeX
_08029660: .4byte gMapPixelSizeY
_08029664:
	adds r3, r1, #0
	adds r3, #0xa0
	str r3, [sp, #0x10]
	ldr r0, _08029794
	ldrh r0, [r0]
	cmp r3, r0
	blt _08029676
	subs r0, #1
	str r0, [sp, #0x10]
_08029676:
	adds r5, r1, #0
	subs r5, #0x73
	cmp r5, #0
	bge _08029686
	ldr r0, [sp, #0x10]
	subs r0, r0, r5
	str r0, [sp, #0x10]
	movs r5, #0
_08029686:
	adds r1, r2, #0
	adds r1, #0xa0
	str r1, [sp, #0x18]
	ldr r0, _08029798
	ldrh r0, [r0]
	cmp r1, r0
	blt _08029698
	subs r0, #1
	str r0, [sp, #0x18]
_08029698:
	subs r2, #0xa0
	str r2, [sp, #0x14]
	cmp r2, #0
	bge _080296AA
	ldr r3, [sp, #0x18]
	subs r3, r3, r2
	str r3, [sp, #0x18]
	movs r0, #0
	str r0, [sp, #0x14]
_080296AA:
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0x18]
	adds r2, r5, #0
	ldr r3, [sp, #0x10]
	bl sub_802A34C
_080296B6:
	ldr r4, _0802979C
	ldr r1, [r4]
	ldr r0, [r1]
	ldrh r1, [r1, #8]
	adds r2, r5, #0
	bl sub_80039DC
	adds r5, r0, #0
	ldr r1, [r4]
	ldr r0, [r1]
	ldrh r1, [r1, #8]
	ldr r2, [sp, #0x10]
	bl sub_80039DC
	str r0, [sp, #0x10]
	str r5, [sp, #0x1c]
	cmp r5, r0
	ble _080296DC
	b _08029C0A
_080296DC:
	ldr r0, _0802979C
	ldr r0, [r0]
	ldr r0, [r0, #4]
	ldr r2, [sp, #0x1c]
	lsls r1, r2, #3
	adds r0, r1, r0
	ldr r3, [r0]
	mov sb, r3
	movs r2, #0
	str r2, [sp, #0x20]
	str r1, [sp, #0x2c]
	ldr r3, [sp, #0x1c]
	adds r3, #1
	str r3, [sp, #0x28]
	ldrh r0, [r0, #4]
	cmp r2, r0
	blt _08029700
	b _08029BFE
_08029700:
	movs r0, #2
	mov sl, r0
_08029704:
	mov r1, sb
	ldrh r0, [r1]
	ldr r2, [sp, #0x14]
	cmp r0, r2
	bge _08029710
	b _08029BE2
_08029710:
	ldr r3, [sp, #0x18]
	cmp r0, r3
	ble _08029718
	b _08029BE2
_08029718:
	ldrh r0, [r1, #2]
	cmp r0, #0xa8
	bls _08029720
	b _08029BE2
_08029720:
	ldr r1, _080297A0
	mov r2, sb
	ldrh r0, [r2, #2]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	beq _08029736
	b _08029BE2
_08029736:
	ldrh r1, [r2, #8]
	ldr r0, _080297A4
	ldr r0, [r0]
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _08029746
	b _08029BE2
_08029746:
	mov r0, sb
	ldr r1, [sp, #0x1c]
	bl sub_80343F0
	cmp r0, #0
	bne _08029754
	b _08029BE2
_08029754:
	mov r3, sb
	ldrh r0, [r3, #2]
	movs r2, #6
	ldrsh r1, [r3, r2]
	bl sub_80342CC
	cmp r0, #0
	beq _08029766
	b _08029BE2
_08029766:
	mov r0, sb
	bl sub_08027B40
	adds r5, r0, #0
	adds r1, r5, #0
	adds r1, #0x2e
	movs r0, #1
	strb r0, [r1]
	ldr r0, _0802979C
	ldr r1, [r0]
	ldrb r0, [r1, #0xc]
	cmp r0, #1
	bne _080297A8
	ldr r1, [r1]
	ldr r3, [sp, #0x1c]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r0, [r0]
	strh r0, [r5, #2]
	mov r1, sb
	ldrh r0, [r1]
	b _080297B8
	.align 2, 0
_08029794: .4byte gMapPixelSizeY
_08029798: .4byte gMapPixelSizeX
_0802979C: .4byte 0x0203DFB0
_080297A0: .4byte 0x080CC2B0
_080297A4: .4byte 0x0203E010
_080297A8:
	mov r2, sb
	ldrh r0, [r2]
	strh r0, [r5, #2]
	ldr r1, [r1]
	ldr r3, [sp, #0x1c]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r0, [r0]
_080297B8:
	strh r0, [r5, #4]
	mov r1, sb
	ldrh r0, [r1, #4]
	strh r0, [r5, #6]
	ldrb r0, [r1, #0xa]
	strb r0, [r5, #8]
	ldrh r0, [r1, #2]
	strh r0, [r5]
	ldrb r0, [r1, #0xb]
	strb r0, [r5, #9]
	ldrb r0, [r1, #0xc]
	strb r0, [r5, #0xa]
	ldrb r0, [r1, #0xd]
	strb r0, [r5, #0xb]
	ldrb r0, [r1, #0xe]
	strb r0, [r5, #0xc]
	ldrb r0, [r1, #0xf]
	strb r0, [r5, #0x10]
	ldrb r0, [r1, #0x11]
	strb r0, [r5, #0x14]
	ldrb r0, [r1, #0x12]
	strb r0, [r5, #0x18]
	ldrb r1, [r1, #0x13]
	adds r0, r5, #0
	adds r0, #0x24
	strb r1, [r0]
	mov r2, sb
	ldrb r1, [r2, #0x14]
	adds r0, #4
	strb r1, [r0]
	ldrb r0, [r2, #0x10]
	adds r3, r5, #0
	adds r3, #0x45
	strb r0, [r3]
	ldrh r0, [r2, #6]
	strh r0, [r5, #0x1c]
	ldrh r0, [r2, #8]
	strh r0, [r5, #0x1e]
	movs r0, #0
	strh r0, [r5, #0x20]
	adds r0, r5, #0
	adds r0, #0x44
	movs r1, #0
	strb r1, [r0]
	subs r0, #8
	strb r1, [r0]
	ldrb r0, [r2, #0x15]
	adds r2, r5, #0
	adds r2, #0x2f
	strb r0, [r2]
	adds r0, r5, #0
	adds r0, #0x49
	strb r1, [r0]
	mov r0, sb
	ldrb r1, [r0, #0x16]
	adds r0, r5, #0
	adds r0, #0x30
	strb r1, [r0]
	mov r0, sb
	ldrb r1, [r0, #0x18]
	adds r0, r5, #0
	adds r0, #0x38
	strb r1, [r0]
	mov r0, sb
	ldrb r1, [r0, #0x17]
	adds r0, r5, #0
	adds r0, #0x34
	strb r1, [r0]
	mov r0, sb
	ldrh r1, [r0, #0x1a]
	adds r0, r5, #0
	adds r0, #0x40
	strh r1, [r0]
	ldr r1, _0802986C
	ldrh r4, [r5]
	lsls r0, r4, #2
	adds r0, r0, r1
	ldr r1, [r0]
	movs r0, #1
	ands r1, r0
	str r3, [sp, #0x24]
	adds r6, r2, #0
	cmp r1, #0
	beq _08029870
	ldrb r0, [r5, #0x18]
	adds r1, r5, #0
	adds r1, #0x46
	strh r0, [r1]
	b _0802987E
	.align 2, 0
_0802986C: .4byte 0x080CC2B0
_08029870:
	ldr r0, _080298F4
	lsls r1, r4, #3
	adds r1, r1, r0
	ldrb r0, [r1, #2]
	adds r2, r5, #0
	adds r2, #0x46
	strh r0, [r2]
_0802987E:
	adds r0, r5, #0
	bl sub_80293C0
	ldrh r1, [r5, #0x1e]
	ldr r0, _080298F8
	ldr r0, [r0]
	adds r0, r0, r1
	movs r1, #1
	strb r1, [r0]
	ldrh r0, [r5]
	subs r0, #0x97
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x11
	bhi _0802989E
	b _08029BE2
_0802989E:
	ldrh r1, [r5, #2]
	ldr r0, _080298FC
	movs r2, #0
	ldrsh r0, [r0, r2]
	subs r1, r1, r0
	mov r8, r1
	ldrh r1, [r5, #4]
	ldr r0, _08029900
	movs r3, #0
	ldrsh r0, [r0, r3]
	subs r7, r1, r0
	ldrb r0, [r6]
	cmp r0, #0
	bne _08029922
	adds r4, r5, #0
	adds r4, #0xbc
	movs r0, #1
	str r0, [sp]
	mov r0, r8
	str r0, [sp, #4]
	str r7, [sp, #8]
	mov r1, sl
	str r1, [sp, #0xc]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl SetSprite
	ldrb r1, [r5, #8]
	adds r0, r4, #0
	bl SetSpritePriority
	ldrb r1, [r5, #9]
	ldr r0, _08029904
	ldr r0, [r0]
	adds r6, r4, #0
	cmp r1, r0
	bge _0802990C
	ldr r0, _08029908
	adds r0, r1, r0
	ldrb r1, [r0]
	b _0802990E
	.align 2, 0
_080298F4: .4byte 0x080CC938
_080298F8: .4byte 0x0203E010
_080298FC: .4byte gCameraPixelX
_08029900: .4byte gCameraPixelY
_08029904: .4byte 0x080CEBC4
_08029908: .4byte 0x080CEB84
_0802990C:
	movs r1, #5
_0802990E:
	adds r0, r4, #0
	bl sub_80037F4
	adds r0, r6, #0
	bl sub_8003794
	adds r1, r5, #0
	adds r1, #0xcc
	movs r0, #1
	strb r0, [r1]
_08029922:
	ldrb r0, [r5, #9]
	subs r7, r7, r0
	ldr r2, _08029968
	ldrh r1, [r5]
	lsls r0, r1, #2
	adds r0, r0, r2
	ldr r6, [r0]
	movs r4, #1
	ands r6, r4
	adds r3, r1, #0
	cmp r6, #0
	beq _0802998C
	movs r2, #0x1c
	ldrsh r1, [r5, r2]
	ldrb r2, [r5, #0xc]
	adds r0, r3, #0
	bl sub_8033118
	cmp r0, #0
	beq _08029970
	adds r0, r5, #0
	adds r0, #0xa0
	ldr r2, _0802996C
	ldrh r1, [r5]
	lsls r1, r1, #3
	adds r1, r1, r2
	ldrh r1, [r1, #4]
	str r4, [sp]
	mov r3, r8
	str r3, [sp, #4]
	str r7, [sp, #8]
	mov r2, sl
	str r2, [sp, #0xc]
	b _08029B2A
	.align 2, 0
_08029968: .4byte 0x080CC2B0
_0802996C: .4byte 0x080CC938
_08029970:
	adds r0, r5, #0
	adds r0, #0xa0
	ldrh r1, [r5]
	ldr r3, _08029988
	adds r1, r1, r3
	str r4, [sp]
	mov r2, r8
	str r2, [sp, #4]
	str r7, [sp, #8]
	mov r3, sl
	str r3, [sp, #0xc]
	b _08029B2A
	.align 2, 0
_08029988: .4byte 0x00000221
_0802998C:
	ldr r1, [sp, #0x24]
	ldrb r0, [r1]
	cmp r0, #7
	bne _080299D4
	adds r0, r5, #0
	bl sub_8033CCC
	cmp r0, #0
	bne _080299BC
	adds r0, r5, #0
	adds r0, #0xa0
	ldrh r1, [r5]
	ldr r2, _080299B8
	adds r1, r1, r2
	str r6, [sp]
	mov r3, r8
	str r3, [sp, #4]
	str r7, [sp, #8]
	mov r2, sl
	str r2, [sp, #0xc]
	b _08029B2A
	.align 2, 0
_080299B8: .4byte 0x00000221
_080299BC:
	adds r0, r5, #0
	adds r0, #0xa0
	str r6, [sp]
	mov r3, r8
	str r3, [sp, #4]
	str r7, [sp, #8]
	mov r1, sl
	str r1, [sp, #0xc]
	ldr r1, _080299D0
	b _08029B2A
	.align 2, 0
_080299D0: .4byte 0x00000451
_080299D4:
	cmp r3, #0x39
	bne _080299DA
	b _08029B92
_080299DA:
	cmp r3, #0x39
	bgt _080299FC
	cmp r3, #0x15
	bne _080299E4
	b _08029AF4
_080299E4:
	cmp r3, #0x15
	bgt _080299EE
	cmp r3, #0x14
	beq _08029AB8
	b _08029BC4
_080299EE:
	cmp r3, #0x16
	bne _080299F4
	b _08029B38
_080299F4:
	cmp r3, #0x17
	bne _080299FA
	b _08029B6C
_080299FA:
	b _08029BC4
_080299FC:
	cmp r3, #0x6d
	beq _08029A78
	cmp r3, #0x6d
	bgt _08029A0A
	cmp r3, #0x6c
	beq _08029A3A
	b _08029BC4
_08029A0A:
	cmp r3, #0x6f
	beq _08029A16
	cmp r3, #0x93
	bne _08029A14
	b _08029B38
_08029A14:
	b _08029BC4
_08029A16:
	adds r0, r5, #0
	adds r0, #0xa0
	str r6, [sp]
	mov r2, r8
	str r2, [sp, #4]
	str r7, [sp, #8]
	mov r3, sl
	str r3, [sp, #0xc]
	movs r1, #0xa4
	lsls r1, r1, #2
	movs r2, #0
	movs r3, #0
	bl SetSprite
	adds r0, r5, #0
	adds r0, #0xb0
	strb r4, [r0]
	b _08029BE2
_08029A3A:
	movs r0, #0xcd
	movs r1, #0
	bl sub_80342CC
	cmp r0, #0
	beq _08029A5C
	adds r0, r5, #0
	adds r0, #0xa0
	str r6, [sp]
	mov r1, r8
	str r1, [sp, #4]
	str r7, [sp, #8]
	mov r2, sl
	str r2, [sp, #0xc]
	movs r1, #0xb7
	lsls r1, r1, #2
	b _08029B2A
_08029A5C:
	adds r0, r5, #0
	adds r0, #0xa0
	ldrh r1, [r5]
	ldr r3, _08029A74
	adds r1, r1, r3
	str r6, [sp]
	mov r2, r8
	str r2, [sp, #4]
	str r7, [sp, #8]
	mov r3, sl
	str r3, [sp, #0xc]
	b _08029B2A
	.align 2, 0
_08029A74: .4byte 0x00000221
_08029A78:
	movs r0, #0xcd
	movs r1, #0
	bl sub_80342CC
	cmp r0, #0
	beq _08029A9C
	adds r0, r5, #0
	adds r0, #0xa0
	str r6, [sp]
	mov r1, r8
	str r1, [sp, #4]
	str r7, [sp, #8]
	mov r2, sl
	str r2, [sp, #0xc]
	ldr r1, _08029A98
	b _08029B2A
	.align 2, 0
_08029A98: .4byte 0x000002DB
_08029A9C:
	adds r0, r5, #0
	adds r0, #0xa0
	ldrh r1, [r5]
	ldr r3, _08029AB4
	adds r1, r1, r3
	str r6, [sp]
	mov r2, r8
	str r2, [sp, #4]
	str r7, [sp, #8]
	mov r3, sl
	str r3, [sp, #0xc]
	b _08029B2A
	.align 2, 0
_08029AB4: .4byte 0x00000221
_08029AB8:
	ldr r0, _08029AD8
	ldrb r0, [r0, #0x16]
	cmp r0, #0
	bne _08029ADC
	adds r0, r5, #0
	adds r0, #0xa0
	str r6, [sp]
	mov r1, r8
	str r1, [sp, #4]
	str r7, [sp, #8]
	mov r2, sl
	str r2, [sp, #0xc]
	movs r1, #0xb6
	lsls r1, r1, #2
	b _08029B2A
	.align 2, 0
_08029AD8: .4byte 0x0200209A
_08029ADC:
	adds r0, r5, #0
	adds r0, #0xa0
	str r6, [sp]
	mov r3, r8
	str r3, [sp, #4]
	str r7, [sp, #8]
	mov r1, sl
	str r1, [sp, #0xc]
	ldr r1, _08029AF0
	b _08029B2A
	.align 2, 0
_08029AF0: .4byte 0x00000235
_08029AF4:
	ldr r0, _08029B10
	ldrb r0, [r0, #5]
	cmp r0, #0
	bne _08029B18
	adds r0, r5, #0
	adds r0, #0xa0
	str r6, [sp]
	mov r2, r8
	str r2, [sp, #4]
	str r7, [sp, #8]
	mov r3, sl
	str r3, [sp, #0xc]
	ldr r1, _08029B14
	b _08029B2A
	.align 2, 0
_08029B10: .4byte 0x0200209A
_08029B14: .4byte 0x000002D9
_08029B18:
	adds r0, r5, #0
	adds r0, #0xa0
	str r6, [sp]
	mov r1, r8
	str r1, [sp, #4]
	str r7, [sp, #8]
	mov r2, sl
	str r2, [sp, #0xc]
	ldr r1, _08029B34
_08029B2A:
	movs r2, #0
	movs r3, #0
	bl SetSprite
	b _08029BE2
	.align 2, 0
_08029B34: .4byte 0x00000236
_08029B38:
	adds r4, r5, #0
	adds r4, #0xa0
	ldr r0, _08029B68
	adds r1, r3, r0
	movs r2, #0
	str r2, [sp]
	mov r3, r8
	str r3, [sp, #4]
	str r7, [sp, #8]
	mov r0, sl
	str r0, [sp, #0xc]
	adds r0, r4, #0
	movs r3, #0
	bl SetSprite
	adds r1, r5, #0
	adds r1, #0xae
	movs r0, #0x14
	strb r0, [r1]
	adds r0, r4, #0
	movs r1, #0
	bl sub_800378C
	b _08029BB6
	.align 2, 0
_08029B68: .4byte 0x00000221
_08029B6C:
	adds r4, r5, #0
	adds r4, #0xa0
	str r6, [sp]
	mov r1, r8
	str r1, [sp, #4]
	str r7, [sp, #8]
	mov r2, sl
	str r2, [sp, #0xc]
	adds r0, r4, #0
	movs r1, #0x8e
	lsls r1, r1, #2
	movs r2, #0
	movs r3, #0
	bl SetSprite
	adds r1, r5, #0
	adds r1, #0xae
	movs r0, #0x14
	b _08029BB4
_08029B92:
	adds r4, r5, #0
	adds r4, #0xa0
	str r6, [sp]
	mov r3, r8
	str r3, [sp, #4]
	str r7, [sp, #8]
	mov r0, sl
	str r0, [sp, #0xc]
	adds r0, r4, #0
	ldr r1, _08029BC0
	movs r2, #0
	movs r3, #0
	bl SetSprite
	adds r1, r5, #0
	adds r1, #0xae
	movs r0, #4
_08029BB4:
	strb r0, [r1]
_08029BB6:
	adds r0, r4, #0
	movs r1, #0
	bl sub_80037F4
	b _08029BE2
	.align 2, 0
_08029BC0: .4byte 0x0000025A
_08029BC4:
	adds r0, r5, #0
	adds r0, #0xa0
	ldr r2, _08029C28
	adds r1, r3, r2
	movs r3, #0
	str r3, [sp]
	mov r2, r8
	str r2, [sp, #4]
	str r7, [sp, #8]
	mov r3, sl
	str r3, [sp, #0xc]
	movs r2, #0
	movs r3, #0
	bl SetSprite
_08029BE2:
	movs r0, #0x1c
	add sb, r0
	ldr r1, [sp, #0x20]
	adds r1, #1
	str r1, [sp, #0x20]
	ldr r0, _08029C2C
	ldr r0, [r0]
	ldr r0, [r0, #4]
	ldr r2, [sp, #0x2c]
	adds r0, r2, r0
	ldrh r0, [r0, #4]
	cmp r1, r0
	bge _08029BFE
	b _08029704
_08029BFE:
	ldr r3, [sp, #0x28]
	str r3, [sp, #0x1c]
	ldr r0, [sp, #0x10]
	cmp r3, r0
	bgt _08029C0A
	b _080296DC
_08029C0A:
	bl sub_802C968
	bl sub_802DCB8
	bl sub_80309D8
	add sp, #0x30
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08029C28: .4byte 0x00000221
_08029C2C: .4byte 0x0203DFB0

    .thumb
sub_8029C30: @ 0x08029C30
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov ip, r0
	ldr r1, _08029CBC
	ldrb r0, [r1]
	ldr r2, _08029CC0
	mov sb, r2
	cmp r0, #0
	beq _08029CEE
	movs r4, #0
	movs r5, #0
	ldr r0, _08029CC4
	mov r8, r0
	ldrb r7, [r0]
	cmp r5, r7
	bge _08029CEE
	adds r6, r1, #0
	ldr r0, _08029CC8
	mov sl, r0
_08029C5C:
	movs r0, #0xd8
	adds r1, r5, #0
	muls r1, r0, r1
	ldr r2, _08029CCC
	ldr r0, [r2]
	adds r2, r0, r1
	adds r1, r2, #0
	adds r1, #0x2e
	ldrb r0, [r1]
	cmp r0, #0
	beq _08029CDE
	adds r0, r2, #0
	adds r0, #0x30
	ldrb r0, [r0]
	cmp r0, #0
	bne _08029CDC
	ldrh r0, [r2, #0x20]
	cmp r0, #0
	bne _08029CDC
	adds r0, r2, #0
	adds r0, #0x3c
	ldrb r3, [r0]
	cmp r3, #0
	bne _08029CDC
	ldrh r0, [r2]
	cmp r0, ip
	bne _08029CDC
	ldrb r0, [r6]
	subs r0, #1
	strb r0, [r6]
	strb r3, [r1]
	ldrh r1, [r2, #0x1e]
	ldr r7, _08029CD0
	ldr r0, [r7]
	adds r0, r0, r1
	strb r3, [r0]
	ldr r1, _08029CD4
	ldrb r0, [r1]
	cmp r0, #0
	beq _08029CDE
	ldr r7, _08029CD8
	ldr r0, [r7]
	cmp r0, r2
	bne _08029CDE
	strb r3, [r1]
	mov r0, sl
	str r3, [r0]
	b _08029CDE
	.align 2, 0
_08029CBC: .4byte 0x0203DFD0
_08029CC0: .4byte 0x0203DFD1
_08029CC4: .4byte 0x0203E009
_08029CC8: .4byte 0x0203DFE0
_08029CCC: .4byte 0x0203DFF4
_08029CD0: .4byte 0x0203E010
_08029CD4: .4byte gInInteractionArea
_08029CD8: .4byte 0x0203DFDC
_08029CDC:
	adds r4, #1
_08029CDE:
	ldrb r1, [r6]
	cmp r4, r1
	beq _08029CEE
	adds r5, #1
	mov r2, r8
	ldrb r2, [r2]
	cmp r5, r2
	blt _08029C5C
_08029CEE:
	mov r7, sb
	ldrb r0, [r7]
	cmp r0, #0
	beq _08029D9A
	movs r4, #0
	movs r5, #0
	ldr r0, _08029D70
	mov r8, r0
	ldrb r0, [r0]
	cmp r5, r0
	bge _08029D9A
	mov r6, sb
	ldr r1, _08029D74
	mov sl, r1
	ldr r2, _08029D78
	mov sb, r2
_08029D0E:
	movs r0, #0xd8
	adds r1, r5, #0
	muls r1, r0, r1
	ldr r7, _08029D7C
	ldr r0, [r7]
	adds r2, r0, r1
	adds r1, r2, #0
	adds r1, #0x2e
	ldrb r0, [r1]
	cmp r0, #0
	beq _08029D8A
	adds r0, r2, #0
	adds r0, #0x30
	ldrb r0, [r0]
	cmp r0, #0
	bne _08029D88
	ldrh r0, [r2, #0x20]
	cmp r0, #0
	bne _08029D88
	adds r0, r2, #0
	adds r0, #0x3c
	ldrb r3, [r0]
	cmp r3, #0
	bne _08029D88
	ldrh r0, [r2]
	cmp r0, ip
	bne _08029D88
	ldrb r0, [r6]
	subs r0, #1
	strb r0, [r6]
	strb r3, [r1]
	ldrh r1, [r2, #0x1e]
	ldr r7, _08029D80
	ldr r0, [r7]
	adds r0, r0, r1
	strb r3, [r0]
	ldr r1, _08029D84
	ldrb r0, [r1]
	cmp r0, #0
	beq _08029D8A
	mov r7, sl
	ldr r0, [r7]
	cmp r0, r2
	bne _08029D8A
	strb r3, [r1]
	mov r0, sb
	str r3, [r0]
	b _08029D8A
	.align 2, 0
_08029D70: .4byte 0x0203E00A
_08029D74: .4byte 0x0203DFDC
_08029D78: .4byte 0x0203DFE0
_08029D7C: .4byte 0x0203DFF8
_08029D80: .4byte 0x0203E010
_08029D84: .4byte gInInteractionArea
_08029D88:
	adds r4, #1
_08029D8A:
	ldrb r1, [r6]
	cmp r4, r1
	beq _08029D9A
	adds r5, #1
	mov r2, r8
	ldrb r2, [r2]
	cmp r5, r2
	blt _08029D0E
_08029D9A:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

    .thumb
    .global sub_8029DA8
sub_8029DA8: @ 0x08029DA8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov ip, r0
	ldr r1, _08029E40
	ldrb r0, [r1]
	ldr r2, _08029E44
	mov sb, r2
	cmp r0, #0
	beq _08029E76
	movs r4, #0
	movs r5, #0
	ldr r0, _08029E48
	mov r8, r0
	ldrb r7, [r0]
	cmp r5, r7
	bge _08029E76
	adds r6, r1, #0
	ldr r0, _08029E4C
	mov sl, r0
_08029DD4:
	movs r0, #0xd8
	adds r1, r5, #0
	muls r1, r0, r1
	ldr r2, _08029E50
	ldr r0, [r2]
	adds r2, r0, r1
	adds r1, r2, #0
	adds r1, #0x2e
	ldrb r0, [r1]
	cmp r0, #0
	beq _08029E66
	adds r0, r2, #0
	adds r0, #0x30
	ldrb r0, [r0]
	cmp r0, #0
	bne _08029E64
	ldrh r0, [r2, #0x20]
	cmp r0, #0
	bne _08029E64
	adds r0, r2, #0
	adds r0, #0x3c
	ldrb r3, [r0]
	cmp r3, #0
	bne _08029E64
	ldrh r0, [r2]
	lsls r0, r0, #2
	add r0, sl
	ldr r0, [r0]
	mov r7, ip
	ands r0, r7
	cmp r0, #0
	beq _08029E64
	ldrb r0, [r6]
	subs r0, #1
	strb r0, [r6]
	strb r3, [r1]
	ldrh r1, [r2, #0x1e]
	ldr r7, _08029E54
	ldr r0, [r7]
	adds r0, r0, r1
	strb r3, [r0]
	ldr r1, _08029E58
	ldrb r0, [r1]
	cmp r0, #0
	beq _08029E66
	ldr r7, _08029E5C
	ldr r0, [r7]
	cmp r0, r2
	bne _08029E66
	strb r3, [r1]
	ldr r0, _08029E60
	str r3, [r0]
	b _08029E66
	.align 2, 0
_08029E40: .4byte 0x0203DFD0
_08029E44: .4byte 0x0203DFD1
_08029E48: .4byte 0x0203E009
_08029E4C: .4byte 0x080CC2B0
_08029E50: .4byte 0x0203DFF4
_08029E54: .4byte 0x0203E010
_08029E58: .4byte gInInteractionArea
_08029E5C: .4byte 0x0203DFDC
_08029E60: .4byte 0x0203DFE0
_08029E64:
	adds r4, #1
_08029E66:
	ldrb r1, [r6]
	cmp r4, r1
	beq _08029E76
	adds r5, #1
	mov r2, r8
	ldrb r2, [r2]
	cmp r5, r2
	blt _08029DD4
_08029E76:
	mov r7, sb
	ldrb r0, [r7]
	cmp r0, #0
	beq _08029F2E
	movs r4, #0
	movs r5, #0
	ldr r0, _08029F00
	mov r8, r0
	ldrb r0, [r0]
	cmp r5, r0
	bge _08029F2E
	mov r6, sb
	ldr r1, _08029F04
	mov sl, r1
	ldr r2, _08029F08
	mov sb, r2
_08029E96:
	movs r0, #0xd8
	adds r1, r5, #0
	muls r1, r0, r1
	ldr r7, _08029F0C
	ldr r0, [r7]
	adds r2, r0, r1
	adds r1, r2, #0
	adds r1, #0x2e
	ldrb r0, [r1]
	cmp r0, #0
	beq _08029F1E
	adds r0, r2, #0
	adds r0, #0x30
	ldrb r0, [r0]
	cmp r0, #0
	bne _08029F1C
	ldrh r0, [r2, #0x20]
	cmp r0, #0
	bne _08029F1C
	adds r0, r2, #0
	adds r0, #0x3c
	ldrb r3, [r0]
	cmp r3, #0
	bne _08029F1C
	ldrh r0, [r2]
	lsls r0, r0, #2
	add r0, sb
	ldr r0, [r0]
	mov r7, ip
	ands r0, r7
	cmp r0, #0
	beq _08029F1C
	ldrb r0, [r6]
	subs r0, #1
	strb r0, [r6]
	strb r3, [r1]
	ldrh r1, [r2, #0x1e]
	ldr r7, _08029F10
	ldr r0, [r7]
	adds r0, r0, r1
	strb r3, [r0]
	ldr r1, _08029F14
	ldrb r0, [r1]
	cmp r0, #0
	beq _08029F1E
	ldr r7, _08029F18
	ldr r0, [r7]
	cmp r0, r2
	bne _08029F1E
	strb r3, [r1]
	mov r0, sl
	str r3, [r0]
	b _08029F1E
	.align 2, 0
_08029F00: .4byte 0x0203E00A
_08029F04: .4byte 0x0203DFE0
_08029F08: .4byte 0x080CC2B0
_08029F0C: .4byte 0x0203DFF8
_08029F10: .4byte 0x0203E010
_08029F14: .4byte gInInteractionArea
_08029F18: .4byte 0x0203DFDC
_08029F1C:
	adds r4, #1
_08029F1E:
	ldrb r1, [r6]
	cmp r4, r1
	beq _08029F2E
	adds r5, #1
	mov r2, r8
	ldrb r2, [r2]
	cmp r5, r2
	blt _08029E96
_08029F2E:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

    .thumb
sub_8029F3C: @ 0x08029F3C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	str r0, [sp]
	mov sl, r1
	mov sb, r2
	mov r8, r3
	movs r7, #0
	ldr r0, _08029F9C
	ldrb r1, [r0]
	mov ip, r0
	cmp r1, #0
	beq _0802A04C
	movs r5, #0
	movs r6, #0
	ldr r0, _08029FA0
	ldrb r0, [r0]
	cmp r7, r0
	bge _0802A04C
_08029F68:
	ldr r2, _08029FA4
	movs r0, #0xd8
	adds r1, r6, #0
	muls r1, r0, r1
	ldr r0, [r2]
	adds r4, r0, r1
	adds r0, r4, #0
	adds r0, #0x2e
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802A03A
	adds r0, r4, #0
	adds r0, #0x30
	ldrb r0, [r0]
	cmp r0, #0
	bne _08029F98
	ldrh r0, [r4, #0x20]
	cmp r0, #0
	bne _08029F98
	adds r0, r4, #0
	adds r0, #0x3c
	ldrb r0, [r0]
	cmp r0, #0
	beq _08029FA8
_08029F98:
	adds r5, #1
	b _0802A03A
	.align 2, 0
_08029F9C: .4byte 0x0203DFD0
_08029FA0: .4byte 0x0203E009
_08029FA4: .4byte 0x0203DFF4
_08029FA8:
	ldrh r0, [r4, #2]
	ldr r1, [sp]
	cmp r0, r1
	blt _08029FD6
	cmp r0, sl
	bgt _08029FD6
	ldrh r0, [r4, #4]
	cmp r0, sb
	blt _08029FD6
	cmp r0, r8
	bgt _08029FD6
	ldrh r0, [r4]
	movs r2, #0x1c
	ldrsh r1, [r4, r2]
	bl sub_80342CC
	cmp r0, #0
	bne _08029FD6
	adds r0, r4, #0
	bl sub_8034310
	cmp r0, #0
	bne _0802A020
_08029FD6:
	ldr r2, _0802A00C
	ldrb r0, [r2]
	subs r0, #1
	strb r0, [r2]
	adds r0, r4, #0
	adds r0, #0x2e
	movs r3, #0
	strb r3, [r0]
	ldrh r1, [r4, #0x1e]
	ldr r0, _0802A010
	ldr r0, [r0]
	adds r0, r0, r1
	strb r3, [r0]
	ldr r1, _0802A014
	ldrb r0, [r1]
	mov ip, r2
	cmp r0, #0
	beq _0802A03A
	ldr r0, _0802A018
	ldr r0, [r0]
	cmp r0, r4
	bne _0802A03A
	strb r3, [r1]
	ldr r0, _0802A01C
	str r3, [r0]
	b _0802A03A
	.align 2, 0
_0802A00C: .4byte 0x0203DFD0
_0802A010: .4byte 0x0203E010
_0802A014: .4byte gInInteractionArea
_0802A018: .4byte 0x0203DFDC
_0802A01C: .4byte 0x0203DFE0
_0802A020:
	adds r5, #1
	ldr r1, _0802A060
	ldrh r0, [r4]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	movs r0, #0x10
	ands r1, r0
	ldr r0, _0802A064
	mov ip, r0
	cmp r1, #0
	beq _0802A03A
	movs r7, #1
_0802A03A:
	mov r1, ip
	ldrb r1, [r1]
	cmp r5, r1
	beq _0802A04C
	adds r6, #1
	ldr r0, _0802A068
	ldrb r0, [r0]
	cmp r6, r0
	blt _08029F68
_0802A04C:
	adds r0, r7, #0
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0802A060: .4byte 0x080CC2B0
_0802A064: .4byte 0x0203DFD0
_0802A068: .4byte 0x0203E009

    .thumb
sub_802A06C: @ 0x0802A06C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	str r0, [sp]
	mov sl, r1
	mov sb, r2
	mov r8, r3
	movs r7, #0
	ldr r0, _0802A0CC
	ldrb r1, [r0]
	mov ip, r0
	cmp r1, #0
	beq _0802A17C
	movs r5, #0
	movs r6, #0
	ldr r0, _0802A0D0
	ldrb r0, [r0]
	cmp r7, r0
	bge _0802A17C
_0802A098:
	ldr r2, _0802A0D4
	movs r0, #0xd8
	adds r1, r6, #0
	muls r1, r0, r1
	ldr r0, [r2]
	adds r4, r0, r1
	adds r0, r4, #0
	adds r0, #0x2e
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802A16A
	adds r0, r4, #0
	adds r0, #0x30
	ldrb r0, [r0]
	cmp r0, #0
	bne _0802A0C8
	ldrh r0, [r4, #0x20]
	cmp r0, #0
	bne _0802A0C8
	adds r0, r4, #0
	adds r0, #0x3c
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802A0D8
_0802A0C8:
	adds r5, #1
	b _0802A16A
	.align 2, 0
_0802A0CC: .4byte 0x0203DFD1
_0802A0D0: .4byte 0x0203E00A
_0802A0D4: .4byte 0x0203DFF8
_0802A0D8:
	ldrh r0, [r4, #2]
	ldr r1, [sp]
	cmp r0, r1
	blt _0802A106
	cmp r0, sl
	bgt _0802A106
	ldrh r0, [r4, #4]
	cmp r0, sb
	blt _0802A106
	cmp r0, r8
	bgt _0802A106
	ldrh r0, [r4]
	movs r2, #0x1c
	ldrsh r1, [r4, r2]
	bl sub_80342CC
	cmp r0, #0
	bne _0802A106
	adds r0, r4, #0
	bl sub_8034310
	cmp r0, #0
	bne _0802A150
_0802A106:
	ldr r2, _0802A13C
	ldrb r0, [r2]
	subs r0, #1
	strb r0, [r2]
	adds r0, r4, #0
	adds r0, #0x2e
	movs r3, #0
	strb r3, [r0]
	ldrh r1, [r4, #0x1e]
	ldr r0, _0802A140
	ldr r0, [r0]
	adds r0, r0, r1
	strb r3, [r0]
	ldr r1, _0802A144
	ldrb r0, [r1]
	mov ip, r2
	cmp r0, #0
	beq _0802A16A
	ldr r0, _0802A148
	ldr r0, [r0]
	cmp r0, r4
	bne _0802A16A
	strb r3, [r1]
	ldr r0, _0802A14C
	str r3, [r0]
	b _0802A16A
	.align 2, 0
_0802A13C: .4byte 0x0203DFD1
_0802A140: .4byte 0x0203E010
_0802A144: .4byte gInInteractionArea
_0802A148: .4byte 0x0203DFDC
_0802A14C: .4byte 0x0203DFE0
_0802A150:
	adds r5, #1
	ldr r1, _0802A190
	ldrh r0, [r4]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	movs r0, #0x10
	ands r1, r0
	ldr r0, _0802A194
	mov ip, r0
	cmp r1, #0
	beq _0802A16A
	movs r7, #1
_0802A16A:
	mov r1, ip
	ldrb r1, [r1]
	cmp r5, r1
	beq _0802A17C
	adds r6, #1
	ldr r0, _0802A198
	ldrb r0, [r0]
	cmp r6, r0
	blt _0802A098
_0802A17C:
	adds r0, r7, #0
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0802A190: .4byte 0x080CC2B0
_0802A194: .4byte 0x0203DFD1
_0802A198: .4byte 0x0203E00A

    .thumb
sub_802A19C: @ 0x0802A19C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	str r0, [sp]
	mov sl, r1
	mov sb, r2
	mov r8, r3
	ldr r0, _0802A1C0
	ldrb r1, [r0]
	adds r7, r0, #0
	cmp r1, #0
	beq _0802A288
	movs r5, #0
	movs r6, #0
	b _0802A280
	.align 2, 0
_0802A1C0: .4byte 0x0203DFD2
_0802A1C4:
	ldr r2, _0802A1F8
	movs r0, #0xd8
	adds r1, r6, #0
	muls r1, r0, r1
	ldr r0, [r2]
	adds r4, r0, r1
	adds r0, r4, #0
	adds r0, #0x2e
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802A278
	adds r0, r4, #0
	adds r0, #0x30
	ldrb r0, [r0]
	cmp r0, #0
	bne _0802A1F4
	ldrh r0, [r4, #0x20]
	cmp r0, #0
	bne _0802A1F4
	adds r0, r4, #0
	adds r0, #0x3c
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802A1FC
_0802A1F4:
	adds r5, #1
	b _0802A278
	.align 2, 0
_0802A1F8: .4byte 0x0203DFFC
_0802A1FC:
	ldrh r0, [r4, #2]
	ldr r1, [sp]
	cmp r0, r1
	blt _0802A22A
	cmp r0, sl
	bgt _0802A22A
	ldrh r0, [r4, #4]
	cmp r0, sb
	blt _0802A22A
	cmp r0, r8
	bgt _0802A22A
	ldrh r0, [r4]
	movs r2, #0x1c
	ldrsh r1, [r4, r2]
	bl sub_80342CC
	cmp r0, #0
	bne _0802A22A
	adds r0, r4, #0
	bl sub_8034310
	cmp r0, #0
	bne _0802A274
_0802A22A:
	ldr r2, _0802A260
	ldrb r0, [r2]
	subs r0, #1
	strb r0, [r2]
	adds r0, r4, #0
	adds r0, #0x2e
	movs r3, #0
	strb r3, [r0]
	ldrh r1, [r4, #0x1e]
	ldr r0, _0802A264
	ldr r0, [r0]
	adds r0, r0, r1
	strb r3, [r0]
	ldr r1, _0802A268
	ldrb r0, [r1]
	adds r7, r2, #0
	cmp r0, #0
	beq _0802A278
	ldr r0, _0802A26C
	ldr r0, [r0]
	cmp r0, r4
	bne _0802A278
	strb r3, [r1]
	ldr r0, _0802A270
	str r3, [r0]
	b _0802A278
	.align 2, 0
_0802A260: .4byte 0x0203DFD2
_0802A264: .4byte 0x0203E010
_0802A268: .4byte gInInteractionArea
_0802A26C: .4byte 0x0203DFDC
_0802A270: .4byte 0x0203DFE0
_0802A274:
	adds r5, #1
	ldr r7, _0802A298
_0802A278:
	ldrb r0, [r7]
	cmp r5, r0
	beq _0802A288
	adds r6, #1
_0802A280:
	ldr r0, _0802A29C
	ldrb r0, [r0]
	cmp r6, r0
	blt _0802A1C4
_0802A288:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802A298: .4byte 0x0203DFD2
_0802A29C: .4byte 0x0203E00B

    .thumb
sub_802A2A0: @ 0x0802A2A0
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	ldr r0, _0802A2B4
	ldrb r1, [r0]
	mov ip, r0
	cmp r1, #0
	beq _0802A33C
	movs r7, #0
	movs r3, #0
	b _0802A334
	.align 2, 0
_0802A2B4: .4byte 0x0203DFD6
_0802A2B8:
	ldr r2, _0802A2E4
	movs r0, #0xd8
	adds r1, r3, #0
	muls r1, r0, r1
	ldr r0, [r2]
	adds r4, r0, r1
	adds r6, r4, #0
	adds r6, #0x2e
	ldrb r0, [r6]
	cmp r0, #0
	beq _0802A32A
	ldrh r0, [r4, #0x20]
	cmp r0, #0
	bne _0802A2DE
	adds r0, r4, #0
	adds r0, #0x3c
	ldrb r5, [r0]
	cmp r5, #0
	beq _0802A2E8
_0802A2DE:
	adds r7, #1
	b _0802A32A
	.align 2, 0
_0802A2E4: .4byte 0x0203DFB4
_0802A2E8:
	ldrh r0, [r4]
	movs r2, #0x1c
	ldrsh r1, [r4, r2]
	str r3, [sp]
	bl sub_80342CC
	ldr r3, [sp]
	cmp r0, #0
	beq _0802A324
	strb r5, [r6]
	adds r0, r4, #0
	adds r0, #0x48
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802A30E
	ldr r1, _0802A31C
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
_0802A30E:
	ldr r1, _0802A320
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	mov ip, r1
	b _0802A32A
	.align 2, 0
_0802A31C: .4byte 0x0203DFE4
_0802A320: .4byte 0x0203DFD6
_0802A324:
	adds r7, #1
	ldr r0, _0802A344
	mov ip, r0
_0802A32A:
	mov r1, ip
	ldrb r1, [r1]
	cmp r7, r1
	beq _0802A33C
	adds r3, #1
_0802A334:
	ldr r0, _0802A348
	ldrb r0, [r0]
	cmp r3, r0
	blt _0802A2B8
_0802A33C:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802A344: .4byte 0x0203DFD6
_0802A348: .4byte 0x0203E00D

    .thumb
sub_802A34C: @ 0x0802A34C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	adds r6, r1, #0
	adds r7, r2, #0
	mov r8, r3
	bl sub_8029F3C
	adds r4, r0, #0
	adds r0, r5, #0
	adds r1, r6, #0
	adds r2, r7, #0
	mov r3, r8
	bl sub_802A06C
	orrs r4, r0
	cmp r4, #0
	beq _0802A386
	ldr r0, _0802A3AC
	ldrb r0, [r0]
	cmp r0, #0
	bne _0802A386
	ldr r1, _0802A3B0
	movs r0, #0x78
	strb r0, [r1]
	ldr r1, _0802A3B4
	movs r0, #0xfa
	strb r0, [r1]
_0802A386:
	ldr r0, _0802A3AC
	strb r4, [r0]
	adds r0, r5, #0
	adds r1, r6, #0
	adds r2, r7, #0
	mov r3, r8
	bl sub_802A19C
	adds r0, r5, #0
	adds r1, r6, #0
	adds r2, r7, #0
	mov r3, r8
	bl sub_802A2A0
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802A3AC: .4byte 0x0203E014
_0802A3B0: .4byte 0x0203E015
_0802A3B4: .4byte 0x0203E016

    .thumb
sub_802A3B8: @ 0x0802A3B8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	mov r8, r0
	mov sl, r1
	ldr r0, _0802A3DC
	ldrb r0, [r0]
	cmp r0, #0
	bne _0802A3D2
	b _0802A654
_0802A3D2:
	movs r0, #0
	str r0, [sp, #0xc]
	mov sb, r0
	b _0802A64A
	.align 2, 0
_0802A3DC: .4byte 0x0203DFD1
_0802A3E0:
	ldr r2, _0802A440
	movs r0, #0xd8
	mov r1, sb
	muls r1, r0, r1
	ldr r0, [r2]
	adds r5, r0, r1
	adds r0, r5, #0
	adds r0, #0x2e
	ldrb r0, [r0]
	cmp r0, #0
	bne _0802A3F8
	b _0802A63C
_0802A3F8:
	ldr r1, _0802A444
	ldrh r3, [r5]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0802A45E
	movs r2, #0x1c
	ldrsh r1, [r5, r2]
	ldrb r2, [r5, #0xc]
	adds r0, r3, #0
	bl sub_08033598
	ldrh r0, [r5]
	movs r2, #0x1c
	ldrsh r1, [r5, r2]
	ldrb r2, [r5, #0xc]
	bl sub_8033118
	cmp r0, #0
	beq _0802A44C
	adds r0, r5, #0
	adds r0, #0xa0
	ldr r2, _0802A448
	ldrh r1, [r5]
	lsls r1, r1, #3
	adds r1, r1, r2
	ldrh r1, [r1, #4]
	movs r2, #0
	movs r3, #1
	bl sub_8003368
	b _0802A45E
	.align 2, 0
_0802A440: .4byte 0x0203DFF8
_0802A444: .4byte 0x080CC2B0
_0802A448: .4byte 0x080CC938
_0802A44C:
	adds r0, r5, #0
	adds r0, #0xa0
	ldrh r1, [r5]
	ldr r2, _0802A490
	adds r1, r1, r2
	movs r2, #0
	movs r3, #1
	bl sub_8003368
_0802A45E:
	adds r0, r5, #0
	adds r0, #0x45
	ldrb r0, [r0]
	cmp r0, #7
	bne _0802A4A6
	adds r0, r5, #0
	bl sub_8033CCC
	cmp r0, #0
	bne _0802A498
	adds r2, r5, #0
	adds r2, #0xa0
	ldrh r1, [r2]
	ldr r0, _0802A494
	cmp r1, r0
	bne _0802A4A6
	ldrh r1, [r5]
	ldr r0, _0802A490
	adds r1, r1, r0
	adds r0, r2, #0
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	b _0802A4A6
	.align 2, 0
_0802A490: .4byte 0x00000221
_0802A494: .4byte 0x00000451
_0802A498:
	adds r0, r5, #0
	adds r0, #0xa0
	ldr r1, _0802A4EC
	movs r2, #0
	movs r3, #0
	bl sub_8003368
_0802A4A6:
	adds r4, r5, #0
	adds r4, #0x3c
	ldrb r0, [r4]
	cmp r0, #0
	beq _0802A514
	adds r6, r5, #0
	adds r6, #0xa0
	adds r0, r6, #0
	bl sub_8003770
	adds r7, r5, #0
	adds r7, #0x2e
	cmp r0, #0
	beq _0802A530
	movs r0, #0
	strb r0, [r4]
	ldr r1, _0802A4F0
	ldrh r0, [r5]
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrh r0, [r0]
	adds r2, r0, #0
	cmp r2, #0
	bne _0802A4FC
	ldrh r1, [r5, #0x1e]
	ldr r0, _0802A4F4
	ldr r0, [r0]
	adds r0, r0, r1
	strb r2, [r0]
	strb r2, [r7]
	ldr r1, _0802A4F8
	ldrb r0, [r1]
	subs r0, #1
	b _0802A52E
	.align 2, 0
_0802A4EC: .4byte 0x00000451
_0802A4F0: .4byte 0x080CC938
_0802A4F4: .4byte 0x0203E010
_0802A4F8: .4byte 0x0203DFD1
_0802A4FC:
	strh r0, [r5, #0x20]
	ldrh r1, [r5]
	ldr r2, _0802A510
	adds r1, r1, r2
	adds r0, r6, #0
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	b _0802A530
	.align 2, 0
_0802A510: .4byte 0x00000221
_0802A514:
	ldrh r0, [r5, #0x20]
	adds r7, r5, #0
	adds r7, #0x2e
	cmp r0, #0
	beq _0802A530
	subs r0, #1
	strh r0, [r5, #0x20]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0802A530
	adds r1, r5, #0
	adds r1, #0x44
	movs r0, #1
_0802A52E:
	strb r0, [r1]
_0802A530:
	ldrb r0, [r7]
	cmp r0, #0
	bne _0802A538
	b _0802A63C
_0802A538:
	ldrh r0, [r5, #0x20]
	cmp r0, #0
	beq _0802A540
	b _0802A63C
_0802A540:
	adds r0, r5, #0
	adds r0, #0x44
	ldrb r4, [r0]
	cmp r4, #0
	bne _0802A63C
	ldr r0, [r5, #0x4c]
	asrs r0, r0, #1
	str r0, [sp]
	ldr r0, [r5, #0x50]
	str r0, [sp, #4]
	ldr r0, [r5, #0x54]
	asrs r0, r0, #1
	str r0, [sp, #8]
	adds r0, r5, #0
	adds r0, #0x94
	ldr r1, _0802A578
	ldrh r3, [r1]
	mov r1, sp
	movs r2, #0
	bl sub_8003A74
	cmp r0, #0
	bne _0802A57C
	adds r1, r5, #0
	adds r1, #0xb3
	movs r0, #1
	strb r0, [r1]
	b _0802A582
	.align 2, 0
_0802A578: .4byte gMapPixelSizeY
_0802A57C:
	adds r0, r5, #0
	adds r0, #0xb3
	strb r4, [r0]
_0802A582:
	ldr r0, _0802A5EC
	ldrh r1, [r5, #2]
	ldrh r0, [r0]
	subs r1, r1, r0
	ldr r0, _0802A5F0
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, r0, r1
	adds r1, r5, #0
	adds r1, #0xa6
	strh r0, [r1]
	ldrb r1, [r5, #4]
	ldr r0, _0802A5F4
	ldrb r0, [r0]
	subs r1, r1, r0
	ldrb r0, [r5, #9]
	ldr r2, _0802A5F8
	subs r1, r1, r0
	ldrb r2, [r2]
	adds r1, r1, r2
	adds r0, r5, #0
	adds r0, #0xa8
	strb r1, [r0]
	adds r4, r5, #0
	adds r4, #0xa0
	ldrb r1, [r5, #8]
	adds r0, r4, #0
	bl SetSpritePriority
	mov r0, r8
	ldr r1, [r0]
	adds r0, r4, #0
	bl sub_80033DC
	adds r0, r5, #0
	adds r0, #0x38
	ldrb r0, [r0]
	cmp r0, #0
	bne _0802A5FC
	mov r1, r8
	ldr r2, [r1]
	adds r0, r5, #0
	adds r0, #0xa4
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	subs r0, #8
	ldr r0, [r0]
	lsrs r0, r0, #4
	orrs r1, r0
	str r1, [r2]
	b _0802A626
	.align 2, 0
_0802A5EC: .4byte gCameraPixelX
_0802A5F0: .4byte 0x030043A4
_0802A5F4: .4byte gCameraPixelY
_0802A5F8: .4byte 0x030043A5
_0802A5FC:
	cmp r0, #2
	bne _0802A614
	mov r0, r8
	ldr r2, [r0]
	adds r0, r5, #0
	adds r0, #0xa4
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	ldr r1, _0802A610
	b _0802A622
	.align 2, 0
_0802A610: .4byte 0x0FFFF000
_0802A614:
	mov r1, r8
	ldr r2, [r1]
	adds r0, r5, #0
	adds r0, #0xa4
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	ldr r1, _0802A664
_0802A622:
	orrs r0, r1
	str r0, [r2]
_0802A626:
	adds r0, r2, #0
	adds r0, #0xc
	mov r2, r8
	str r0, [r2]
	mov r1, sl
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r2, [sp, #0xc]
	adds r2, #1
	str r2, [sp, #0xc]
_0802A63C:
	ldr r0, _0802A668
	ldr r1, [sp, #0xc]
	ldrb r0, [r0]
	cmp r1, r0
	beq _0802A654
	movs r2, #1
	add sb, r2
_0802A64A:
	ldr r0, _0802A66C
	ldrb r0, [r0]
	cmp sb, r0
	bge _0802A654
	b _0802A3E0
_0802A654:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802A664: .4byte 0x3FFFF000
_0802A668: .4byte 0x0203DFD1
_0802A66C: .4byte 0x0203E00A

    .thumb
sub_802A670: @ 0x0802A670
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	adds r7, r0, #0
	str r1, [sp, #0xc]
	ldr r0, _0802A6FC
	ldrb r0, [r0]
	cmp r0, #0
	bne _0802A68A
	b _0802A926
_0802A68A:
	movs r0, #0
	str r0, [sp, #0x14]
	movs r1, #0
	str r1, [sp, #0x10]
	ldr r0, _0802A700
	ldrb r0, [r0]
	cmp r1, r0
	blt _0802A69C
	b _0802A926
_0802A69C:
	ldr r2, _0802A704
	movs r0, #0xd8
	ldr r3, [sp, #0x10]
	adds r1, r3, #0
	muls r1, r0, r1
	ldr r0, [r2]
	adds r5, r0, r1
	adds r6, r5, #0
	adds r6, #0x2e
	ldrb r0, [r6]
	cmp r0, #0
	bne _0802A6B6
	b _0802A90C
_0802A6B6:
	adds r0, r5, #0
	adds r0, #0x3c
	ldrb r1, [r0]
	mov r8, r0
	cmp r1, #0
	beq _0802A728
	adds r4, r5, #0
	adds r4, #0xa0
	adds r0, r4, #0
	bl sub_8003770
	cmp r0, #0
	beq _0802A740
	movs r0, #0
	mov r1, r8
	strb r0, [r1]
	ldr r1, _0802A708
	ldrh r0, [r5]
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrh r0, [r0]
	adds r2, r0, #0
	cmp r2, #0
	bne _0802A710
	ldrh r1, [r5, #0x1e]
	ldr r0, _0802A70C
	ldr r0, [r0]
	adds r0, r0, r1
	strb r2, [r0]
	strb r2, [r6]
	ldr r1, _0802A6FC
	ldrb r0, [r1]
	subs r0, #1
	b _0802A73E
	.align 2, 0
_0802A6FC: .4byte 0x0203DFD0
_0802A700: .4byte 0x0203E009
_0802A704: .4byte 0x0203DFF4
_0802A708: .4byte 0x080CC938
_0802A70C: .4byte 0x0203E010
_0802A710:
	strh r0, [r5, #0x20]
	ldrh r1, [r5]
	ldr r2, _0802A724
	adds r1, r1, r2
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	b _0802A740
	.align 2, 0
_0802A724: .4byte 0x00000221
_0802A728:
	ldrh r0, [r5, #0x20]
	cmp r0, #0
	beq _0802A740
	subs r0, #1
	strh r0, [r5, #0x20]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0802A740
	adds r1, r5, #0
	adds r1, #0x44
	movs r0, #1
_0802A73E:
	strb r0, [r1]
_0802A740:
	adds r0, r5, #0
	adds r0, #0x2e
	ldrb r0, [r0]
	cmp r0, #0
	bne _0802A74C
	b _0802A90C
_0802A74C:
	ldrh r0, [r5, #0x20]
	cmp r0, #0
	beq _0802A754
	b _0802A90C
_0802A754:
	adds r0, r5, #0
	adds r0, #0x44
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802A760
	b _0802A90C
_0802A760:
	ldrh r1, [r5, #2]
	ldr r0, _0802A7B4
	movs r3, #0
	ldrsh r0, [r0, r3]
	subs r1, r1, r0
	ldr r0, _0802A7B8
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r1, r1, r0
	mov sb, r1
	ldrh r1, [r5, #4]
	ldr r0, _0802A7BC
	movs r2, #0
	ldrsh r0, [r0, r2]
	subs r1, r1, r0
	ldr r0, _0802A7C0
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r6, r1, r0
	adds r4, r5, #0
	adds r4, #0x94
	ldrb r1, [r5, #9]
	rsbs r1, r1, #0
	ldr r0, _0802A7C4
	ldrh r2, [r0]
	adds r0, r4, #0
	bl sub_8003A7C
	mov sl, r4
	cmp r0, #0
	beq _0802A7AA
	mov r3, r8
	ldrb r0, [r3]
	cmp r0, #0
	beq _0802A7C8
_0802A7AA:
	adds r1, r5, #0
	adds r1, #0xcf
	movs r0, #1
	b _0802A7CC
	.align 2, 0
_0802A7B4: .4byte gCameraPixelX
_0802A7B8: .4byte 0x030043A4
_0802A7BC: .4byte gCameraPixelY
_0802A7C0: .4byte 0x030043A5
_0802A7C4: .4byte gMapPixelSizeY
_0802A7C8:
	adds r1, r5, #0
	adds r1, #0xcf
_0802A7CC:
	strb r0, [r1]
	adds r0, r5, #0
	adds r0, #0xc2
	mov r1, sb
	strh r1, [r0]
	adds r0, #2
	strb r6, [r0]
	adds r4, r5, #0
	adds r4, #0xbc
	ldrb r1, [r5, #8]
	adds r0, r4, #0
	bl SetSpritePriority
	ldr r1, [r7]
	adds r0, r4, #0
	bl sub_80033DC
	adds r1, r5, #0
	adds r1, #0xcc
	movs r0, #1
	strb r0, [r1]
	adds r0, r5, #0
	adds r0, #0x38
	ldrb r1, [r0]
	mov r8, r0
	cmp r1, #0
	bne _0802A81C
	ldr r3, [r7]
	adds r0, #0x88
	ldrb r2, [r0]
	lsls r2, r2, #0x1e
	subs r0, #0x24
	ldr r0, [r0]
	lsrs r0, r0, #4
	movs r1, #0x80
	lsls r1, r1, #0x15
	orrs r0, r1
	orrs r2, r0
	str r2, [r3]
	b _0802A844
_0802A81C:
	cmp r1, #2
	bne _0802A834
	ldr r2, [r7]
	adds r0, r5, #0
	adds r0, #0xc0
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	ldr r1, _0802A830
	b _0802A840
	.align 2, 0
_0802A830: .4byte 0x1FFFF000
_0802A834:
	ldr r2, [r7]
	adds r0, r5, #0
	adds r0, #0xc0
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	ldr r1, _0802A87C
_0802A840:
	orrs r0, r1
	str r0, [r2]
_0802A844:
	ldr r0, [r7]
	adds r0, #0xc
	str r0, [r7]
	ldr r2, [sp, #0xc]
	ldr r0, [r2]
	adds r0, #1
	str r0, [r2]
	ldr r0, [r5, #0x4c]
	asrs r0, r0, #1
	str r0, [sp]
	ldr r0, [r5, #0x50]
	str r0, [sp, #4]
	ldr r0, [r5, #0x54]
	asrs r0, r0, #1
	str r0, [sp, #8]
	ldr r0, _0802A880
	ldrh r3, [r0]
	mov r0, sl
	mov r1, sp
	movs r2, #0
	bl sub_8003A74
	cmp r0, #0
	bne _0802A884
	adds r1, r5, #0
	adds r1, #0xb3
	movs r0, #1
	b _0802A88A
	.align 2, 0
_0802A87C: .4byte 0x3FFFF000
_0802A880: .4byte gMapPixelSizeY
_0802A884:
	adds r1, r5, #0
	adds r1, #0xb3
	movs r0, #0
_0802A88A:
	strb r0, [r1]
	adds r0, r5, #0
	adds r0, #0xa6
	mov r3, sb
	strh r3, [r0]
	ldrb r0, [r5, #9]
	subs r0, r6, r0
	adds r1, r5, #0
	adds r1, #0xa8
	strb r0, [r1]
	adds r4, r5, #0
	adds r4, #0xa0
	ldrb r1, [r5, #8]
	adds r0, r4, #0
	bl SetSpritePriority
	ldr r1, [r7]
	adds r0, r4, #0
	bl sub_80033DC
	mov r1, r8
	ldrb r0, [r1]
	cmp r0, #0
	bne _0802A8D0
	ldr r2, [r7]
	adds r0, r5, #0
	adds r0, #0xa4
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	subs r0, #8
	ldr r0, [r0]
	lsrs r0, r0, #4
	orrs r1, r0
	str r1, [r2]
	b _0802A8F8
_0802A8D0:
	cmp r0, #2
	bne _0802A8E8
	ldr r2, [r7]
	adds r0, r5, #0
	adds r0, #0xa4
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	ldr r1, _0802A8E4
	b _0802A8F4
	.align 2, 0
_0802A8E4: .4byte 0x0FFFF000
_0802A8E8:
	ldr r2, [r7]
	adds r0, r5, #0
	adds r0, #0xa4
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	ldr r1, _0802A938
_0802A8F4:
	orrs r0, r1
	str r0, [r2]
_0802A8F8:
	adds r0, r2, #0
	adds r0, #0xc
	str r0, [r7]
	ldr r2, [sp, #0xc]
	ldr r0, [r2]
	adds r0, #1
	str r0, [r2]
	ldr r3, [sp, #0x14]
	adds r3, #1
	str r3, [sp, #0x14]
_0802A90C:
	ldr r0, _0802A93C
	ldr r1, [sp, #0x14]
	ldrb r0, [r0]
	cmp r1, r0
	beq _0802A926
	ldr r2, [sp, #0x10]
	adds r2, #1
	str r2, [sp, #0x10]
	ldr r0, _0802A940
	ldrb r0, [r0]
	cmp r2, r0
	bge _0802A926
	b _0802A69C
_0802A926:
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802A938: .4byte 0x3FFFF000
_0802A93C: .4byte 0x0203DFD0
_0802A940: .4byte 0x0203E009

    .thumb
sub_802A944: @ 0x0802A944
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	mov sb, r0
	mov sl, r1
	movs r0, #0
	str r0, [sp]
	ldr r0, _0802A9D8
	ldr r1, [sp]
	ldrb r0, [r0]
	cmp r1, r0
	blt _0802A964
	b _0802ABDE
_0802A964:
	ldr r2, _0802A9DC
	movs r0, #0xd8
	ldr r3, [sp]
	adds r1, r3, #0
	muls r1, r0, r1
	ldr r0, [r2]
	adds r7, r0, r1
	movs r0, #0x2e
	adds r0, r0, r7
	mov r8, r0
	ldrb r0, [r0]
	cmp r0, #0
	bne _0802A980
	b _0802ABCE
_0802A980:
	adds r4, r7, #0
	adds r4, #0x3c
	ldrb r0, [r4]
	cmp r0, #0
	beq _0802AA0C
	adds r6, r7, #0
	adds r6, #0xa0
	adds r0, r6, #0
	bl sub_8003770
	cmp r0, #0
	bne _0802A99A
	b _0802AAE6
_0802A99A:
	movs r5, #0
	strb r5, [r4]
	adds r2, r7, #0
	adds r2, #0x48
	ldrb r0, [r2]
	cmp r0, #0
	beq _0802A9B2
	ldr r1, _0802A9E0
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	strb r5, [r2]
_0802A9B2:
	ldr r4, _0802A9E4
	ldrh r2, [r7]
	lsls r0, r2, #3
	adds r0, r0, r4
	ldrh r0, [r0]
	cmp r0, #0
	beq _0802A9CE
	movs r3, #0x1c
	ldrsh r1, [r7, r3]
	adds r0, r2, #0
	bl sub_80342CC
	cmp r0, #0
	beq _0802A9EC
_0802A9CE:
	mov r0, r8
	strb r5, [r0]
	ldr r1, _0802A9E8
	b _0802AAC0
	.align 2, 0
_0802A9D8: .4byte 0x0203E00D
_0802A9DC: .4byte 0x0203DFB4
_0802A9E0: .4byte 0x0203DFE4
_0802A9E4: .4byte 0x080CC938
_0802A9E8: .4byte 0x0203DFD6
_0802A9EC:
	ldrh r0, [r7]
	lsls r0, r0, #3
	adds r0, r0, r4
	ldrh r0, [r0]
	strh r0, [r7, #0x20]
	ldrh r1, [r7]
	ldr r3, _0802AA08
	adds r1, r1, r3
	adds r0, r6, #0
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	b _0802AAE6
	.align 2, 0
_0802AA08: .4byte 0x00000221
_0802AA0C:
	ldrh r0, [r7, #0x20]
	cmp r0, #0
	beq _0802AAE6
	subs r0, #1
	strh r0, [r7, #0x20]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0802AAE6
	ldrh r0, [r7]
	subs r0, #0xbf
	cmp r0, #0x14
	bhi _0802AAD0
	lsls r0, r0, #2
	ldr r1, _0802AA30
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0802AA30: .4byte 0x0802AA34
_0802AA34: @ jump table
	.4byte _0802AA88 @ case 0
	.4byte _0802AAD0 @ case 1
	.4byte _0802AAD0 @ case 2
	.4byte _0802AAD0 @ case 3
	.4byte _0802AAD0 @ case 4
	.4byte _0802AAD0 @ case 5
	.4byte _0802AAD0 @ case 6
	.4byte _0802AAD0 @ case 7
	.4byte _0802AA9C @ case 8
	.4byte _0802AAD0 @ case 9
	.4byte _0802AAD0 @ case 10
	.4byte _0802AAD0 @ case 11
	.4byte _0802AAD0 @ case 12
	.4byte _0802AAD0 @ case 13
	.4byte _0802AAD0 @ case 14
	.4byte _0802AAD0 @ case 15
	.4byte _0802AA9C @ case 16
	.4byte _0802AA9C @ case 17
	.4byte _0802AAD0 @ case 18
	.4byte _0802AAD0 @ case 19
	.4byte _0802AA9C @ case 20
_0802AA88:
	ldrh r1, [r7, #0x1e]
	ldr r0, _0802AA98
	ldr r0, [r0]
	adds r0, r0, r1
	ldrb r0, [r0]
	bl sub_804888C
	b _0802AAE6
	.align 2, 0
_0802AA98: .4byte 0x0203DFB8
_0802AA9C:
	ldrh r1, [r7, #0x1e]
	ldr r0, _0802AAC8
	ldr r0, [r0]
	adds r0, r0, r1
	ldrb r0, [r0]
	bl sub_804888C
	adds r2, r7, #0
	adds r2, #0xb3
	movs r1, #0
	movs r0, #1
	strb r0, [r2]
	adds r2, #0x1c
	strb r0, [r2]
	adds r0, r7, #0
	adds r0, #0x48
	strb r1, [r0]
	ldr r1, _0802AACC
_0802AAC0:
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	b _0802AAE6
	.align 2, 0
_0802AAC8: .4byte 0x0203DFB8
_0802AACC: .4byte 0x0203DFE4
_0802AAD0:
	adds r1, r7, #0
	adds r1, #0x44
	movs r0, #1
	strb r0, [r1]
	ldrh r1, [r7, #0x1e]
	ldr r0, _0802ABF0
	ldr r0, [r0]
	adds r0, r0, r1
	ldrb r0, [r0]
	bl sub_804888C
_0802AAE6:
	adds r0, r7, #0
	adds r0, #0x2e
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802ABCE
	adds r0, r7, #0
	adds r0, #0x48
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802ABCE
	ldrh r0, [r7, #0x20]
	cmp r0, #0
	bne _0802ABCE
	adds r0, r7, #0
	adds r0, #0x44
	ldrb r0, [r0]
	cmp r0, #0
	bne _0802ABCE
	ldrh r6, [r7, #2]
	ldr r0, _0802ABF4
	movs r1, #0
	ldrsh r0, [r0, r1]
	subs r6, r6, r0
	ldr r0, _0802ABF8
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r6, r6, r0
	ldrh r5, [r7, #4]
	ldr r0, _0802ABFC
	movs r3, #0
	ldrsh r0, [r0, r3]
	subs r5, r5, r0
	ldr r0, _0802AC00
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r5, r5, r0
	adds r0, r7, #0
	adds r0, #0xc2
	strh r6, [r0]
	adds r0, #2
	strb r5, [r0]
	adds r4, r7, #0
	adds r4, #0xbc
	ldrb r1, [r7, #8]
	adds r0, r4, #0
	bl SetSpritePriority
	mov r0, sb
	ldr r1, [r0]
	adds r0, r4, #0
	bl sub_80033DC
	adds r1, r7, #0
	adds r1, #0xcc
	movs r0, #1
	strb r0, [r1]
	mov r1, sb
	ldr r3, [r1]
	adds r0, r7, #0
	adds r0, #0xc0
	ldrb r2, [r0]
	lsls r2, r2, #0x1e
	movs r0, #0x9c
	adds r0, r0, r7
	mov r8, r0
	ldr r0, [r0]
	lsrs r0, r0, #4
	movs r1, #0x80
	lsls r1, r1, #0x15
	orrs r0, r1
	orrs r2, r0
	str r2, [r3]
	adds r3, #0xc
	mov r1, sb
	str r3, [r1]
	mov r3, sl
	ldr r0, [r3]
	adds r0, #1
	str r0, [r3]
	ldrb r0, [r7, #9]
	subs r5, r5, r0
	adds r0, r7, #0
	adds r0, #0xa6
	strh r6, [r0]
	adds r0, #2
	strb r5, [r0]
	subs r4, #0x1c
	ldrb r1, [r7, #8]
	adds r0, r4, #0
	bl SetSpritePriority
	mov r0, sb
	ldr r1, [r0]
	adds r0, r4, #0
	bl sub_80033DC
	mov r1, sb
	ldr r2, [r1]
	adds r0, r7, #0
	adds r0, #0xa4
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	mov r3, r8
	ldr r0, [r3]
	lsrs r0, r0, #4
	orrs r1, r0
	str r1, [r2]
	adds r2, #0xc
	mov r0, sb
	str r2, [r0]
	mov r1, sl
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
_0802ABCE:
	ldr r3, [sp]
	adds r3, #1
	str r3, [sp]
	ldr r0, _0802AC04
	ldrb r0, [r0]
	cmp r3, r0
	bge _0802ABDE
	b _0802A964
_0802ABDE:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802ABF0: .4byte 0x0203DFB8
_0802ABF4: .4byte gCameraPixelX
_0802ABF8: .4byte 0x030043A4
_0802ABFC: .4byte gCameraPixelY
_0802AC00: .4byte 0x030043A5
_0802AC04: .4byte 0x0203E00D

    .thumb
sub_802AC08: @ 0x0802AC08
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r7, r0, #0
	mov sb, r1
	ldr r0, _0802ACD4
	ldrb r1, [r0]
	adds r3, r0, #0
	cmp r1, #0
	bne _0802AC24
	b _0802AD92
_0802AC24:
	movs r0, #0
	str r0, [sp, #4]
	movs r1, #0
	str r1, [sp]
	ldr r0, _0802ACD8
	ldrb r0, [r0]
	cmp r1, r0
	blt _0802AC36
	b _0802AD92
_0802AC36:
	ldr r2, _0802ACDC
	movs r0, #0xd8
	ldr r4, [sp]
	adds r1, r4, #0
	muls r1, r0, r1
	ldr r0, [r2]
	adds r5, r0, r1
	adds r0, r5, #0
	adds r0, #0x2e
	ldrb r0, [r0]
	cmp r0, #0
	bne _0802AC50
	b _0802AD7A
_0802AC50:
	adds r0, r5, #0
	adds r0, #0x48
	ldrb r0, [r0]
	cmp r0, #0
	bne _0802AC5C
	b _0802AD7A
_0802AC5C:
	ldrh r1, [r5, #2]
	ldr r0, _0802ACE0
	movs r2, #0
	ldrsh r0, [r0, r2]
	subs r1, r1, r0
	ldr r0, _0802ACE4
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r1, r1, r0
	mov r8, r1
	ldrh r1, [r5, #4]
	ldr r0, _0802ACE8
	movs r4, #0
	ldrsh r0, [r0, r4]
	subs r1, r1, r0
	ldr r0, _0802ACEC
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r6, r1, r0
	adds r0, r5, #0
	adds r0, #0xc2
	mov r1, r8
	strh r1, [r0]
	adds r0, #2
	strb r6, [r0]
	adds r4, r5, #0
	adds r4, #0xbc
	ldrb r1, [r5, #8]
	adds r0, r4, #0
	bl SetSpritePriority
	ldr r1, [r7]
	adds r0, r4, #0
	bl sub_80033DC
	adds r1, r5, #0
	adds r1, #0xcc
	movs r0, #1
	strb r0, [r1]
	adds r0, r5, #0
	adds r0, #0x38
	ldrb r1, [r0]
	mov sl, r0
	cmp r1, #0
	bne _0802ACF0
	ldr r3, [r7]
	adds r0, #0x88
	ldrb r2, [r0]
	lsls r2, r2, #0x1e
	subs r0, #0x24
	ldr r0, [r0]
	lsrs r0, r0, #4
	movs r1, #0x80
	lsls r1, r1, #0x15
	orrs r0, r1
	orrs r2, r0
	str r2, [r3]
	b _0802AD00
	.align 2, 0
_0802ACD4: .4byte 0x0203DFE5
_0802ACD8: .4byte 0x0203E00E
_0802ACDC: .4byte 0x0203DFBC
_0802ACE0: .4byte gCameraPixelX
_0802ACE4: .4byte 0x030043A4
_0802ACE8: .4byte gCameraPixelY
_0802ACEC: .4byte 0x030043A5
_0802ACF0:
	ldr r2, [r7]
	adds r0, r5, #0
	adds r0, #0xc0
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	ldr r1, _0802AD50
	orrs r0, r1
	str r0, [r2]
_0802AD00:
	ldr r0, [r7]
	adds r0, #0xc
	str r0, [r7]
	mov r2, sb
	ldr r0, [r2]
	adds r0, #1
	str r0, [r2]
	ldrb r0, [r5, #9]
	subs r6, r6, r0
	adds r0, r5, #0
	adds r0, #0xa6
	mov r4, r8
	strh r4, [r0]
	adds r0, #2
	strb r6, [r0]
	adds r4, r5, #0
	adds r4, #0xa0
	ldrb r1, [r5, #8]
	adds r0, r4, #0
	bl SetSpritePriority
	ldr r1, [r7]
	adds r0, r4, #0
	bl sub_80033DC
	mov r1, sl
	ldrb r0, [r1]
	cmp r0, #0
	bne _0802AD54
	ldr r2, [r7]
	adds r0, r5, #0
	adds r0, #0xa4
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	subs r0, #8
	ldr r0, [r0]
	lsrs r0, r0, #4
	orrs r1, r0
	str r1, [r2]
	b _0802AD64
	.align 2, 0
_0802AD50: .4byte 0x3FFFF000
_0802AD54:
	ldr r2, [r7]
	adds r0, r5, #0
	adds r0, #0xa4
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	ldr r1, _0802ADA4
	orrs r0, r1
	str r0, [r2]
_0802AD64:
	adds r0, r2, #0
	adds r0, #0xc
	str r0, [r7]
	mov r2, sb
	ldr r0, [r2]
	adds r0, #1
	str r0, [r2]
	ldr r4, [sp, #4]
	adds r4, #1
	str r4, [sp, #4]
	ldr r3, _0802ADA8
_0802AD7A:
	ldr r0, [sp, #4]
	ldrb r1, [r3]
	cmp r0, r1
	beq _0802AD92
	ldr r2, [sp]
	adds r2, #1
	str r2, [sp]
	ldr r0, _0802ADAC
	ldrb r0, [r0]
	cmp r2, r0
	bge _0802AD92
	b _0802AC36
_0802AD92:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802ADA4: .4byte 0x2FFFF000
_0802ADA8: .4byte 0x0203DFE5
_0802ADAC: .4byte 0x0203E00E

    .thumb
    .global sub_802ADB0
sub_802ADB0: @ 0x0802ADB0
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	bl sub_802C9F8
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_802DD54
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_802A3B8
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_802A670
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_802A944
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_802AC08
	pop {r4, r5}
	pop {r0}
	bx r0

    .thumb
	.global sub_802ADE8
sub_802ADE8: @ 0x0802ADE8
	push {r4, r5, r6, lr}
	sub sp, #0x18
	adds r5, r0, #0
	bl sub_0802BDA0
	adds r0, r5, #0
	bl sub_0802BCC4
	cmp r0, #0
	bne _0802AE80
	adds r0, r5, #0
	bl sub_0802AE98
	adds r0, r5, #0
	bl sub_0802B048
	cmp r0, #0
	bne _0802AE80
	movs r6, #0
	ldr r1, _0802AE88
	ldr r0, _0802AE8C
	ldrh r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	bne _0802AE3C
	ldr r0, _0802AE90
	ldrb r0, [r0]
	cmp r0, #0
	bne _0802AE3C
	ldr r0, _0802AE94
	ldrb r0, [r0]
	cmp r0, #0
	bne _0802AE3C
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r1
	cmp r0, #0
	beq _0802AE3E
_0802AE3C:
	movs r6, #1
_0802AE3E:
	ldr r3, [r5]
	adds r0, r3, #0
	subs r0, #0x10
	str r0, [sp]
	ldr r2, [r5, #4]
	adds r0, r2, #0
	subs r0, #0xc
	str r0, [sp, #4]
	ldr r1, [r5, #8]
	adds r0, r1, #0
	subs r0, #0x10
	str r0, [sp, #8]
	add r4, sp, #0xc
	adds r3, #0x10
	str r3, [sp, #0xc]
	adds r2, #0xc
	str r2, [r4, #4]
	adds r1, #0x10
	str r1, [r4, #8]
	adds r0, r5, #0
	mov r1, sp
	adds r2, r4, #0
	adds r3, r6, #0
	bl sub_0802B9E4
	cmp r0, #0
	bne _0802AE80
	adds r0, r5, #0
	mov r1, sp
	adds r2, r4, #0
	adds r3, r6, #0
	bl sub_0802BB30
_0802AE80:
	add sp, #0x18
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0802AE88: .4byte gPlayerStateSettings
_0802AE8C: .4byte gPlayerState
_0802AE90: .4byte 0x0200108D
_0802AE94: .4byte 0x0200108E

    .thumb
sub_0802AE98: @ 0x0802AE98
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	adds r7, r0, #0
	ldr r0, _0802AF74
	ldr r4, [r0]
	asrs r4, r4, #1
	ldr r3, [r7]
	subs r0, r3, r4
	str r0, [sp]
	ldr r5, [r7, #4]
	str r5, [sp, #4]
	ldr r0, _0802AF78
	ldr r2, [r0]
	asrs r2, r2, #1
	ldr r1, [r7, #8]
	subs r0, r1, r2
	str r0, [sp, #8]
	add r6, sp, #0xc
	adds r3, r3, r4
	str r3, [sp, #0xc]
	ldr r0, _0802AF7C
	ldr r0, [r0]
	adds r5, r5, r0
	str r5, [r6, #4]
	adds r1, r1, r2
	str r1, [r6, #8]
	movs r0, #0
	mov r8, r0
	ldr r0, _0802AF80
	ldrb r1, [r0]
	mov sl, r1
	mov r1, r8
	strb r1, [r0]
	ldr r0, _0802AF84
	strb r1, [r0]
	ldr r0, _0802AF88
	ldrb r0, [r0, #0x13]
	cmp r0, #0
	bne _0802AEF0
	b _0802AFF6
_0802AEF0:
	movs r5, #0
	ldr r0, _0802AF8C
	ldrb r0, [r0]
	cmp r5, r0
	blt _0802AEFC
	b _0802AFF6
_0802AEFC:
	mov sb, r5
	movs r6, #1
_0802AF00:
	ldr r2, _0802AF90
	movs r0, #0xd8
	adds r1, r5, #0
	muls r1, r0, r1
	ldr r0, [r2]
	adds r4, r0, r1
	adds r0, r4, #0
	adds r0, #0x2e
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802AFE4
	movs r0, #1
	add r8, r0
	adds r0, r4, #0
	adds r0, #0x45
	ldrb r0, [r0]
	cmp r0, #6
	bne _0802AFE0
	adds r2, r4, #0
	adds r2, #0x64
	adds r3, r4, #0
	adds r3, #0x70
	mov r0, sp
	add r1, sp, #0xc
	bl sub_8003964
	cmp r0, #0
	beq _0802AF9C
	adds r1, r4, #0
	adds r1, #0x98
	ldr r0, [r7, #4]
	ldr r1, [r1]
	subs r0, r0, r1
	bl Abs
	movs r1, #0x80
	lsls r1, r1, #0xb
	cmp r0, r1
	bhi _0802AF9C
	ldr r2, _0802AF94
	ldr r0, [r2]
	cmp r0, r4
	beq _0802AF62
	str r4, [r2]
	adds r0, r4, #0
	adds r0, #0x38
	ldrb r1, [r0]
	adds r0, #0x12
	strb r1, [r0]
_0802AF62:
	ldr r0, [r2]
	adds r0, #0x38
	strb r6, [r0]
	ldr r0, _0802AF98
	mov r1, sb
	strb r1, [r0, #0x10]
	ldr r0, _0802AF80
	strb r6, [r0]
	b _0802B020
	.align 2, 0
_0802AF74: .4byte 0x03003300
_0802AF78: .4byte 0x03003304
_0802AF7C: .4byte 0x03003308
_0802AF80: .4byte 0x0203DFE6
_0802AF84: .4byte 0x0203DFE7
_0802AF88: .4byte gGameStatus
_0802AF8C: .4byte 0x0203E00E
_0802AF90: .4byte 0x0203DFBC
_0802AF94: .4byte dword_203DFC4
_0802AF98: .4byte gPlayerShadowSprite
_0802AF9C:
	adds r1, r4, #0
	adds r1, #0x7c
	adds r2, r4, #0
	adds r2, #0x88
	adds r0, r7, #0
	bl sub_800396C
	cmp r0, #0
	beq _0802AFE4
	ldr r2, _0802AFD4
	ldr r0, [r2]
	cmp r0, r4
	beq _0802AFC2
	str r4, [r2]
	adds r0, r4, #0
	adds r0, #0x38
	ldrb r1, [r0]
	adds r0, #0x12
	strb r1, [r0]
_0802AFC2:
	ldr r0, [r2]
	adds r0, #0x38
	strb r6, [r0]
	ldr r0, _0802AFD8
	mov r1, sb
	strb r1, [r0, #0x10]
	ldr r0, _0802AFDC
	strb r6, [r0]
	b _0802B020
	.align 2, 0
_0802AFD4: .4byte dword_203DFC4
_0802AFD8: .4byte gPlayerShadowSprite
_0802AFDC: .4byte 0x0203DFE7
_0802AFE0:
	.2byte 0xEE00, 0xEE00
_0802AFE4:
	ldr r0, _0802B034
	ldrb r0, [r0]
	cmp r8, r0
	beq _0802AFF6
	adds r5, #1
	ldr r0, _0802B038
	ldrb r0, [r0]
	cmp r5, r0
	blt _0802AF00
_0802AFF6:
	ldr r3, _0802B03C
	ldr r0, [r3]
	cmp r0, #0
	beq _0802B020
	mov r0, sl
	cmp r0, #0
	beq _0802B00A
	ldr r1, _0802B040
	movs r0, #1
	strb r0, [r1]
_0802B00A:
	ldr r0, [r3]
	adds r1, r0, #0
	adds r1, #0x4a
	ldrb r2, [r1]
	adds r0, #0x38
	movs r1, #0
	strb r2, [r0]
	str r1, [r3]
	ldr r1, _0802B044
	movs r0, #1
	strb r0, [r1, #0x10]
_0802B020:
	movs r0, #0
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0802B034: .4byte 0x0203E008
_0802B038: .4byte 0x0203E00E
_0802B03C: .4byte dword_203DFC4
_0802B040: .4byte 0x0203DFE8
_0802B044: .4byte gPlayerShadowSprite

    .thumb
sub_0802B048: @ 0x0802B048
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x30
	mov sl, r0
	movs r0, #0
	str r0, [sp, #0x28]
	movs r1, #0
	str r1, [sp, #0x24]
	ldr r0, _0802B0BC
	ldrb r0, [r0]
	cmp r1, r0
	blt _0802B068
	b _0802B43C
_0802B068:
	ldr r2, _0802B0C0
	movs r0, #0xd8
	ldr r3, [sp, #0x24]
	adds r1, r3, #0
	muls r1, r0, r1
	ldr r0, [r2]
	adds r5, r0, r1
	adds r0, r5, #0
	adds r0, #0x2e
	ldrb r0, [r0]
	cmp r0, #0
	bne _0802B082
	b _0802B422
_0802B082:
	ldr r4, [sp, #0x28]
	adds r4, #1
	str r4, [sp, #0x28]
	ldr r2, _0802B0C4
	mov r1, sl
	ldr r0, [r1]
	ldr r1, [r2]
	adds r0, r0, r1
	str r0, [sp]
	mov r3, sl
	ldr r0, [r3, #4]
	ldr r1, [r2, #4]
	adds r0, r0, r1
	str r0, [sp, #4]
	ldr r0, [r3, #8]
	ldr r1, [r2, #8]
	adds r0, r0, r1
	str r0, [sp, #8]
	adds r0, r5, #0
	adds r0, #0x45
	ldrb r0, [r0]
	cmp r0, #4
	bls _0802B0B2
	b _0802B41E
_0802B0B2:
	lsls r0, r0, #2
	ldr r1, _0802B0C8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0802B0BC: .4byte 0x0203E00D
_0802B0C0: .4byte 0x0203DFB4
_0802B0C4: .4byte 0x03003578
_0802B0C8: .4byte 0x0802B0CC
_0802B0CC: @ jump table
	.4byte _0802B14C @ case 0
	.4byte _0802B0E0 @ case 1
	.4byte _0802B40C @ case 2
	.4byte _0802B412 @ case 3
	.4byte _0802B418 @ case 4
_0802B0E0:
	adds r1, r5, #0
	adds r1, #0x64
	adds r2, r5, #0
	adds r2, #0x70
	mov r0, sl
	bl sub_800396C
	cmp r0, #0
	bne _0802B0F4
	b _0802B422
_0802B0F4:
	ldrh r0, [r5, #0x20]
	cmp r0, #0
	beq _0802B0FC
	b _0802B422
_0802B0FC:
	adds r6, r5, #0
	adds r6, #0x3c
	ldrb r0, [r6]
	cmp r0, #0
	beq _0802B108
	b _0802B422
_0802B108:
	strb r0, [r5, #0xb]
	adds r1, r5, #0
	adds r1, #0xaa
	strb r0, [r1]
	adds r4, r5, #0
	adds r4, #0xa0
	ldr r1, _0802B148
	ldrh r0, [r5]
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrh r1, [r0, #4]
	adds r0, r4, #0
	movs r2, #0
	movs r3, #1
	bl sub_8003368
	ldrb r1, [r5, #8]
	adds r0, r4, #0
	bl SetSpritePriority
	adds r1, r5, #0
	adds r1, #0xcf
	movs r0, #1
	strb r0, [r1]
	strb r0, [r6]
	ldrh r0, [r5]
	movs r4, #0x1c
	ldrsh r1, [r5, r4]
	bl sub_80342F8
	b _0802B43C
	.align 2, 0
_0802B148: .4byte 0x080CC938
_0802B14C:
	ldrh r0, [r5, #0x20]
	cmp r0, #0
	beq _0802B154
	b _0802B422
_0802B154:
	adds r0, r5, #0
	adds r0, #0x3c
	ldrb r1, [r0]
	str r0, [sp, #0x2c]
	cmp r1, #0
	beq _0802B162
	b _0802B422
_0802B162:
	adds r0, #8
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802B16C
	b _0802B422
_0802B16C:
	ldrh r0, [r5]
	movs r2, #0x1c
	ldrsh r1, [r5, r2]
	bl sub_80342CC
	cmp r0, #0
	beq _0802B17C
	b _0802B422
_0802B17C:
	adds r0, r5, #0
	bl sub_8034310
	cmp r0, #0
	bne _0802B188
	b _0802B422
_0802B188:
	adds r0, r5, #0
	adds r0, #0x48
	ldrb r0, [r0]
	cmp r0, #0
	bne _0802B194
	b _0802B422
_0802B194:
	movs r4, #0
	movs r6, #0
	ldr r1, _0802B1E0
	ldrb r0, [r1, #0xe]
	cmp r0, #0
	beq _0802B1F8
	ldrh r0, [r1, #0xc]
	cmp r0, #1
	bne _0802B1E8
	add r0, sp, #0xc
	ldr r2, [sp]
	ldr r3, _0802B1E4
	adds r1, r2, r3
	str r1, [sp, #0xc]
	add r1, sp, #0x18
	movs r3, #0xa0
	lsls r3, r3, #0xc
	adds r2, r2, r3
	str r2, [sp, #0x18]
	ldr r2, [sp, #4]
	str r2, [r0, #4]
	ldr r2, [sp, #4]
	str r2, [r1, #4]
	ldr r2, [sp, #8]
	ldr r4, _0802B1E4
	adds r2, r2, r4
	str r2, [r0, #8]
	ldr r2, [sp, #8]
	adds r2, r2, r3
	str r2, [r1, #8]
	adds r2, r5, #0
	adds r2, #0x64
	adds r3, r5, #0
	adds r3, #0x70
	bl sub_8003964
	b _0802B1F6
	.align 2, 0
_0802B1E0: .4byte 0x03003578
_0802B1E4: .4byte 0xFFF60000
_0802B1E8:
	adds r1, r5, #0
	adds r1, #0x64
	adds r2, r5, #0
	adds r2, #0x70
	mov r0, sp
	bl sub_800396C
_0802B1F6:
	adds r4, r0, #0
_0802B1F8:
	cmp r4, #0
	beq _0802B21C
	ldr r1, _0802B214
	ldr r0, _0802B218
	ldrh r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0802B224
	b _0802B43C
	.align 2, 0
_0802B214: .4byte gPlayerStateSettings
_0802B218: .4byte gPlayerState
_0802B21C:
	adds r0, r5, #0
	bl sub_802BF74
	adds r6, r0, #0
_0802B224:
	cmp r4, #0
	bne _0802B22E
	cmp r6, #0
	bne _0802B22E
	b _0802B422
_0802B22E:
	adds r0, r5, #0
	adds r0, #0x46
	movs r2, #0
	ldrsh r1, [r0, r2]
	mov sb, r0
	cmp r1, #0
	bne _0802B23E
	b _0802B422
_0802B23E:
	ldrh r0, [r5]
	cmp r0, #0xcd
	bne _0802B258
	ldr r2, _0802B250
	ldr r1, _0802B254
	ldrh r0, [r1, #0xc]
	ldr r2, [r2]
	b _0802B268
	.align 2, 0
_0802B250: .4byte 0x0203F8B8
_0802B254: .4byte 0x03003578
_0802B258:
	ldr r1, _0802B2A4
	ldrh r0, [r5]
	lsls r0, r0, #1
	adds r0, r0, r1
	movs r3, #0
	ldrsh r2, [r0, r3]
	ldr r1, _0802B2A8
	ldrh r0, [r1, #0xc]
_0802B268:
	ands r2, r0
	mov r8, r1
	cmp r2, #0
	bne _0802B272
	b _0802B3CC
_0802B272:
	mov r7, r8
	ldrh r3, [r7, #0xc]
	movs r6, #0xaf
	lsls r6, r6, #5
	ands r6, r3
	cmp r6, #0
	beq _0802B2B4
	ldrh r1, [r5, #0x1e]
	ldr r0, _0802B2AC
	ldr r0, [r0]
	adds r0, r0, r1
	ldrb r4, [r0]
	ldrb r1, [r7, #0xf]
	movs r2, #0
	ldr r0, _0802B2B0
	ldrh r0, [r0, #0x10]
	cmp r3, r0
	bne _0802B298
	movs r2, #1
_0802B298:
	adds r0, r4, #0
	bl sub_80499A8
	movs r0, #0
	strb r0, [r7, #0xf]
	b _0802B2DE
	.align 2, 0
_0802B2A4: .4byte 0x080A75A4
_0802B2A8: .4byte 0x03003578
_0802B2AC: .4byte 0x0203DFB8
_0802B2B0: .4byte 0x080CB964
_0802B2B4:
	ldrh r1, [r5, #0x1e]
	ldr r0, _0802B2F8
	ldr r0, [r0]
	adds r0, r0, r1
	ldrb r4, [r0]
	ldrb r2, [r7, #0xe]
	movs r7, #0
	ldr r1, _0802B2FC
	lsls r0, r3, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r1, #0x10]
	cmp r0, r1
	bne _0802B2D0
	movs r7, #1
_0802B2D0:
	adds r0, r4, #0
	adds r1, r2, #0
	adds r2, r7, #0
	bl sub_80499A8
	mov r4, r8
	strb r6, [r4, #0xe]
_0802B2DE:
	mov r1, sb
	movs r2, #0
	ldrsh r0, [r1, r2]
	cmp r0, #0
	bgt _0802B3C0
	ldrh r0, [r5]
	cmp r0, #0xcd
	bne _0802B300
	ldrh r1, [r5, #0x1e]
	bl sub_80342F8
	b _0802B422
	.align 2, 0
_0802B2F8: .4byte 0x0203DFB8
_0802B2FC: .4byte 0x080CB964
_0802B300:
	ldrh r1, [r5, #0x1e]
	ldr r0, _0802B3A4
	ldr r0, [r0]
	adds r0, r0, r1
	ldrb r0, [r0]
	bl sub_80490A4
	adds r1, r5, #0
	bl sub_802E024
	movs r0, #0
	strb r0, [r5, #0xb]
	adds r1, r5, #0
	adds r1, #0xaa
	strb r0, [r1]
	adds r6, r5, #0
	adds r6, #0xa0
	ldr r3, _0802B3A8
	mov r8, r3
	ldrh r0, [r5]
	lsls r0, r0, #3
	add r0, r8
	ldrh r1, [r0, #4]
	adds r0, r6, #0
	movs r2, #0
	movs r3, #1
	bl sub_8003368
	movs r7, #1
	ldr r4, [sp, #0x2c]
	strb r7, [r4]
	ldr r0, _0802B3AC
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802B37C
	ldr r4, _0802B3B0
	ldr r2, _0802B3B4
	ldr r1, _0802B3B8
	ldrh r0, [r5]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r3, [r0]
	lsls r3, r3, #3
	adds r0, r3, r4
	ldrh r0, [r0]
	ldr r1, _0802B3BC
	ldrb r1, [r1]
	adds r1, r1, r3
	adds r2, r4, #2
	adds r1, r1, r2
	ldrb r1, [r1]
	adds r4, #4
	adds r3, r3, r4
	ldr r2, [r3]
	movs r3, #0x80
	lsls r3, r3, #9
	adds r2, r2, r3
	bl audio_new_fx
_0802B37C:
	ldrb r1, [r5, #8]
	adds r0, r6, #0
	bl SetSpritePriority
	adds r0, r5, #0
	adds r0, #0xcf
	strb r7, [r0]
	ldrh r0, [r5]
	movs r4, #0x1c
	ldrsh r1, [r5, r4]
	bl sub_80342F8
	ldrh r0, [r5]
	lsls r0, r0, #3
	add r0, r8
	ldrb r0, [r0, #2]
	mov r1, sb
	strh r0, [r1]
	b _0802B422
	.align 2, 0
_0802B3A4: .4byte 0x0203DFB8
_0802B3A8: .4byte 0x080CC938
_0802B3AC: .4byte byte_203EA89
_0802B3B0: .4byte 0x080CE440
_0802B3B4: .4byte 0x080CF080
_0802B3B8: .4byte 0x080CF140
_0802B3BC: .4byte byte_203EA8C
_0802B3C0:
	adds r0, r5, #0
	adds r0, #0xa0
	ldr r2, _0802B3FC
	movs r1, #0xf
	bl sub_800E9EC
_0802B3CC:
	ldr r1, _0802B400
	ldr r0, _0802B404
	ldrh r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0802B422
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _0802B422
	ldr r0, _0802B408
	ldrb r0, [r0]
	cmp r0, #3
	beq _0802B422
	cmp r0, #4
	beq _0802B422
	bl sub_801990C
	movs r0, #2
	b _0802B43E
	.align 2, 0
_0802B3FC: .4byte 0x00001FFF
_0802B400: .4byte gPlayerStateSettings
_0802B404: .4byte gPlayerState
_0802B408: .4byte byte_20020B1
_0802B40C:
	.2byte 0xEE00, 0xEE00
	b _0802B422
_0802B412:
	.2byte 0xEE00, 0xEE00
	b _0802B422
_0802B418:
	.2byte 0xEE00, 0xEE00
	b _0802B422
_0802B41E:
	.2byte 0xEE00, 0xEE00
_0802B422:
	ldr r0, _0802B450
	ldr r2, [sp, #0x28]
	ldrb r0, [r0]
	cmp r2, r0
	beq _0802B43C
	ldr r3, [sp, #0x24]
	adds r3, #1
	str r3, [sp, #0x24]
	ldr r0, _0802B454
	ldrb r0, [r0]
	cmp r3, r0
	bge _0802B43C
	b _0802B068
_0802B43C:
	movs r0, #0
_0802B43E:
	add sp, #0x30
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0802B450: .4byte 0x0203DFD6
_0802B454: .4byte 0x0203E00D

    .thumb
sub_802B458: @ 0x0802B458
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	ldr r7, _0802B4D0
	movs r0, #0
	strb r0, [r7]
	ldr r6, _0802B4D4
	adds r1, #0x7c
	adds r2, r4, #0
	adds r2, #0x88
	adds r0, r5, #0
	bl sub_800396C
	strb r0, [r6]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0802B49A
	adds r1, r4, #0
	adds r1, #0x64
	adds r2, r4, #0
	adds r2, #0x70
	adds r0, r5, #0
	bl sub_800396C
	adds r1, r0, #0
	strb r1, [r7]
	ldrb r0, [r6]
	cmp r0, #0
	bne _0802B49A
	lsls r0, r1, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	beq _0802B520
_0802B49A:
	ldr r0, _0802B4D8
	ldrb r1, [r0]
	adds r6, r0, #0
	cmp r1, #0
	bne _0802B536
	adds r0, r4, #0
	adds r0, #0x34
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802B510
	ldr r5, _0802B4DC
	ldr r0, [r5]
	cmp r0, r4
	beq _0802B510
	movs r0, #1
	bl sub_80186F4
	cmp r0, #0
	beq _0802B4E4
	movs r0, #1
	strb r0, [r6]
	ldr r0, _0802B4E0
	str r4, [r0]
	str r4, [r5]
	movs r0, #1
	b _0802B538
	.align 2, 0
_0802B4D0: .4byte 0x0203DFDA
_0802B4D4: .4byte 0x0203DFD9
_0802B4D8: .4byte gInInteractionArea
_0802B4DC: .4byte 0x0203DFE0
_0802B4E0: .4byte 0x0203DFDC
_0802B4E4:
	ldr r1, _0802B504
	ldr r0, _0802B508
	ldrh r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r1
	cmp r0, #0
	beq _0802B536
	ldr r0, _0802B50C
	bl sub_80181B8
	b _0802B536
	.align 2, 0
_0802B504: .4byte gPlayerStateSettings
_0802B508: .4byte gPlayerState
_0802B50C: .4byte 0x030032D4
_0802B510:
	movs r0, #1
	strb r0, [r6]
	ldr r0, _0802B51C
	str r4, [r0]
	movs r0, #1
	b _0802B538
	.align 2, 0
_0802B51C: .4byte 0x0203DFDC
_0802B520:
	ldr r2, _0802B540
	ldrb r0, [r2]
	cmp r0, #0
	beq _0802B536
	ldr r0, _0802B544
	ldr r0, [r0]
	cmp r0, r4
	bne _0802B536
	strb r1, [r2]
	ldr r0, _0802B548
	str r1, [r0]
_0802B536:
	movs r0, #0
_0802B538:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0802B540: .4byte gInInteractionArea
_0802B544: .4byte 0x0203DFDC
_0802B548: .4byte 0x0203DFE0

    .thumb
sub_802B54C: @ 0x0802B54C
	push {r4, r5, lr}
	adds r5, r1, #0
	adds r1, #0x64
	adds r2, r5, #0
	adds r2, #0x70
	bl sub_800396C
	cmp r0, #0
	bne _0802B562
	movs r0, #0
	b _0802B5A0
_0802B562:
	adds r4, r5, #0
	adds r4, #0xa0
	ldr r1, _0802B5A8
	ldrh r0, [r5]
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrh r1, [r0, #4]
	adds r0, r4, #0
	movs r2, #0
	movs r3, #1
	bl sub_8003368
	bl sub_800C50C
	strb r0, [r5, #8]
	ldrb r1, [r5, #8]
	adds r0, r4, #0
	bl SetSpritePriority
	adds r0, r5, #0
	adds r0, #0xcf
	movs r1, #1
	strb r1, [r0]
	subs r0, #0x93
	strb r1, [r0]
	ldrh r0, [r5]
	movs r2, #0x1c
	ldrsh r1, [r5, r2]
	bl sub_80342F8
	movs r0, #1
_0802B5A0:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0802B5A8: .4byte 0x080CC938

    .thumb
sub_802B5AC: @ 0x0802B5AC
	push {r4, r5, r6, lr}
	adds r5, r1, #0
	adds r0, r2, #0
	adds r1, r3, #0
	adds r2, r5, #0
	adds r2, #0x64
	adds r3, r5, #0
	adds r3, #0x70
	bl sub_8003964
	cmp r0, #0
	beq _0802B634
	adds r4, r5, #0
	adds r4, #0xa0
	ldr r1, _0802B62C
	ldrh r0, [r5]
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrh r1, [r0, #4]
	adds r0, r4, #0
	movs r2, #0
	movs r3, #1
	bl sub_8003368
	ldrb r1, [r5, #8]
	adds r0, r4, #0
	bl SetSpritePriority
	adds r0, r5, #0
	adds r0, #0xcf
	movs r6, #1
	strb r6, [r0]
	subs r0, #0x93
	strb r6, [r0]
	ldrh r0, [r5]
	movs r2, #0x1c
	ldrsh r1, [r5, r2]
	movs r2, #3
	adds r3, r4, #0
	bl sub_8034460
	ldr r4, _0802B630
	ldrb r0, [r4]
	cmp r0, #0
	bne _0802B626
	bl sub_8039650
	adds r1, r0, #0
	movs r0, #0x36
	bl sub_08040AD0
	bl sub_8039650
	adds r1, r0, #0
	movs r0, #0x36
	bl sub_08040204
	movs r0, #0x36
	bl sub_08041FA4
	strb r6, [r4]
_0802B626:
	movs r0, #1
	b _0802B636
	.align 2, 0
_0802B62C: .4byte 0x080CC938
_0802B630: .4byte 0x0203E136
_0802B634:
	movs r0, #0
_0802B636:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

    .thumb
sub_802B63C: @ 0x0802B63C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x18
	adds r6, r0, #0
	adds r4, r1, #0
	mov sb, r2
	movs r5, #0
	movs r7, #0
	ldr r1, _0802B694
	ldrb r0, [r1, #0xe]
	cmp r0, #0
	beq _0802B6AC
	ldrh r0, [r1, #0xc]
	cmp r0, #1
	bne _0802B69C
	ldr r2, [r4]
	ldr r1, _0802B698
	adds r0, r2, r1
	str r0, [sp]
	add r1, sp, #0xc
	movs r3, #0xa0
	lsls r3, r3, #0xc
	adds r2, r2, r3
	str r2, [sp, #0xc]
	ldr r0, [r4, #4]
	str r0, [sp, #4]
	str r0, [r1, #4]
	ldr r0, [r4, #8]
	ldr r4, _0802B698
	adds r2, r0, r4
	str r2, [sp, #8]
	adds r0, r0, r3
	str r0, [r1, #8]
	adds r2, r6, #0
	adds r2, #0x64
	adds r3, r6, #0
	adds r3, #0x70
	mov r0, sp
	bl sub_8003964
	b _0802B6AA
	.align 2, 0
_0802B694: .4byte 0x03003578
_0802B698: .4byte 0xFFF60000
_0802B69C:
	adds r1, r6, #0
	adds r1, #0x64
	adds r2, r6, #0
	adds r2, #0x70
	adds r0, r4, #0
	bl sub_800396C
_0802B6AA:
	adds r5, r0, #0
_0802B6AC:
	cmp r5, #0
	beq _0802B6D0
	ldr r1, _0802B6C8
	ldr r0, _0802B6CC
	ldrh r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0802B6F0
	movs r0, #0
	b _0802B970
	.align 2, 0
_0802B6C8: .4byte gPlayerStateSettings
_0802B6CC: .4byte gPlayerState
_0802B6D0:
	ldrh r0, [r6]
	movs r2, #0x1c
	ldrsh r1, [r6, r2]
	bl sub_80342CC
	cmp r0, #0
	bne _0802B6F0
	adds r0, r6, #0
	bl sub_8034310
	cmp r0, #0
	beq _0802B6F0
	adds r0, r6, #0
	bl sub_802BF74
	adds r7, r0, #0
_0802B6F0:
	cmp r5, #0
	bne _0802B6FA
	cmp r7, #0
	bne _0802B6FA
	b _0802B8C0
_0802B6FA:
	adds r0, r6, #0
	adds r0, #0x46
	ldrh r3, [r0]
	movs r4, #0
	ldrsh r1, [r0, r4]
	adds r4, r0, #0
	cmp r1, #0
	bne _0802B70C
	b _0802B96C
_0802B70C:
	ldr r0, _0802B73C
	ldrh r1, [r6]
	lsls r1, r1, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	ldr r2, _0802B740
	ldrh r1, [r2, #0xc]
	ands r0, r1
	cmp r0, #0
	bne _0802B724
	b _0802B96C
_0802B724:
	movs r0, #0xaf
	lsls r0, r0, #5
	ands r1, r0
	cmp r1, #0
	beq _0802B744
	ldrb r0, [r2, #0xf]
	subs r0, r3, r0
	movs r1, #0
	strh r0, [r4]
	strb r1, [r2, #0xf]
	b _0802B74E
	.align 2, 0
_0802B73C: .4byte 0x080A75A4
_0802B740: .4byte 0x03003578
_0802B744:
	ldrb r0, [r2, #0xe]
	subs r0, r3, r0
	movs r1, #0
	strh r0, [r4]
	strb r1, [r2, #0xe]
_0802B74E:
	mov r8, r4
	movs r1, #0
	ldrsh r0, [r4, r1]
	cmp r0, #0
	ble _0802B75A
	b _0802B96C
_0802B75A:
	ldrh r0, [r6]
	movs r2, #0x1c
	ldrsh r1, [r6, r2]
	bl sub_80342CC
	cmp r0, #0
	beq _0802B76A
	b _0802B96C
_0802B76A:
	ldr r0, _0802B7CC
	ldrh r3, [r6]
	lsls r1, r3, #2
	adds r1, r1, r0
	ldr r0, [r1]
	movs r7, #1
	ands r0, r7
	cmp r0, #0
	bne _0802B86C
	adds r4, r6, #0
	adds r4, #0xa0
	ldr r5, _0802B7D0
	lsls r0, r3, #3
	adds r0, r0, r5
	ldrh r1, [r0, #4]
	adds r0, r4, #0
	movs r2, #0
	movs r3, #1
	bl sub_8003368
	adds r0, r6, #0
	adds r0, #0x3c
	strb r7, [r0]
	ldrb r1, [r6, #8]
	adds r0, r4, #0
	bl SetSpritePriority
	adds r0, r6, #0
	adds r0, #0xcf
	strb r7, [r0]
	ldrh r0, [r6]
	lsls r0, r0, #3
	adds r0, r0, r5
	ldrb r0, [r0, #2]
	mov r1, r8
	strh r0, [r1]
	ldrh r0, [r6]
	adds r3, r4, #0
	cmp r0, #0x55
	bgt _0802B7DE
	cmp r0, #0x54
	bge _0802B7F0
	cmp r0, #0x30
	beq _0802B7F0
	cmp r0, #0x30
	bgt _0802B7D4
	cmp r0, #0xb
	beq _0802B834
	b _0802B860
	.align 2, 0
_0802B7CC: .4byte 0x080CC2B0
_0802B7D0: .4byte 0x080CC938
_0802B7D4:
	cmp r0, #0x3c
	beq _0802B7F0
	cmp r0, #0x41
	beq _0802B826
	b _0802B860
_0802B7DE:
	cmp r0, #0x66
	beq _0802B804
	cmp r0, #0x66
	bgt _0802B7EC
	cmp r0, #0x5f
	beq _0802B826
	b _0802B860
_0802B7EC:
	cmp r0, #0x8b
	bne _0802B860
_0802B7F0:
	ldrh r0, [r6]
	movs r2, #0x1c
	ldrsh r1, [r6, r2]
	bl sub_80342F8
	movs r0, #1
	adds r1, r6, #0
	bl sub_802E024
	b _0802B96C
_0802B804:
	movs r4, #0x1c
	ldrsh r1, [r6, r4]
	movs r0, #0x66
	bl sub_80342F8
	mov r0, sb
	cmp r0, #0
	beq _0802B816
	b _0802B96C
_0802B816:
	movs r1, #1
	rsbs r1, r1, #0
	movs r0, #1
	movs r2, #2
	bl sub_80192D4
_0802B822:
	movs r0, #1
	b _0802B970
_0802B826:
	ldrh r0, [r6]
	movs r2, #0x1c
	ldrsh r1, [r6, r2]
	movs r2, #3
	bl sub_8034460
	b _0802B96C
_0802B834:
	movs r4, #0x1c
	ldrsh r1, [r6, r4]
	movs r0, #0xb
	bl sub_80342F8
	ldr r4, _0802B85C
	movs r0, #0
	movs r1, #0x27
	bl RandomMinMax
	adds r0, r0, r4
	ldrb r0, [r0]
	movs r2, #1
	rsbs r2, r2, #0
	adds r1, r6, #0
	movs r3, #0
	bl sub_0802C3A4
	b _0802B96C
	.align 2, 0
_0802B85C: .4byte 0x080A7762
_0802B860:
	ldrh r0, [r6]
	movs r2, #0x1c
	ldrsh r1, [r6, r2]
	bl sub_80342F8
	b _0802B96C
_0802B86C:
	movs r0, #0x1c
	ldrsh r1, [r6, r0]
	ldrb r2, [r6, #0xc]
	adds r0, r3, #0
	bl sub_0803381C
	ldrb r0, [r6, #0x18]
	strh r0, [r4]
	ldrh r0, [r6]
	movs r2, #0x1c
	ldrsh r1, [r6, r2]
	ldrb r2, [r6, #0xc]
	bl sub_8033118
	cmp r0, #0
	bne _0802B8A4
	adds r0, r6, #0
	adds r0, #0xa0
	ldrh r1, [r6]
	ldr r4, _0802B8A0
	adds r1, r1, r4
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	b _0802B822
	.align 2, 0
_0802B8A0: .4byte 0x00000221
_0802B8A4:
	adds r0, r6, #0
	adds r0, #0xa0
	ldr r2, _0802B8BC
	ldrh r1, [r6]
	lsls r1, r1, #3
	adds r1, r1, r2
	ldrh r1, [r1, #4]
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	b _0802B822
	.align 2, 0
_0802B8BC: .4byte 0x080CC938
_0802B8C0:
	adds r0, r6, #0
	adds r0, #0x34
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802B96C
	ldr r1, _0802B954
	ldrh r0, [r6]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0802B96C
	adds r0, r6, #0
	adds r0, #0x64
	adds r1, r6, #0
	adds r1, #0x70
	ldr r2, _0802B958
	ldr r3, _0802B95C
	bl sub_8003964
	cmp r0, #0
	beq _0802B96C
	mov r0, sb
	cmp r0, #0
	bne _0802B96C
	ldr r0, _0802B960
	ldrb r5, [r0, #0xe]
	cmp r5, #0
	bne _0802B96C
	ldr r4, _0802B964
	ldrb r0, [r4, #0x13]
	cmp r0, #0
	beq _0802B96C
	ldr r1, _0802B968
	ldrh r0, [r6]
	adds r0, r0, r1
	ldrb r0, [r0]
	movs r7, #1
	rsbs r7, r7, #0
	adds r1, r7, #0
	movs r2, #2
	bl sub_80192D4
	ldrh r0, [r6]
	cmp r0, #0x91
	beq _0802B922
	b _0802B822
_0802B922:
	ldrb r1, [r4, #0x12]
	movs r0, #0x12
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bne _0802B92E
	b _0802B822
_0802B92E:
	subs r0, r1, #1
	strb r0, [r4, #0x12]
	lsls r0, r0, #0x18
	cmp r0, #0
	bge _0802B93A
	strb r5, [r4, #0x12]
_0802B93A:
	movs r1, #0x12
	ldrsb r1, [r4, r1]
	movs r0, #3
	bl sub_08040204
	movs r0, #2
	adds r1, r6, #0
	adds r2, r7, #0
	movs r3, #0
	bl sub_0802C3A4
	b _0802B822
	.align 2, 0
_0802B954: .4byte 0x080CC2B0
_0802B958: .4byte 0x030032E8
_0802B95C: .4byte 0x030032F4
_0802B960: .4byte 0x03003578
_0802B964: .4byte gGameStatus
_0802B968: .4byte 0x080CC6B0
_0802B96C:
	movs r0, #1
	rsbs r0, r0, #0
_0802B970:
	add sp, #0x18
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

    .thumb
sub_802B980: @ 0x0802B980
	push {r4, lr}
	adds r3, r0, #0
	adds r4, r1, #0
	ldrb r0, [r4, #0x10]
	cmp r0, #0
	bne _0802B9AC
	adds r1, #0x7c
	adds r2, r4, #0
	adds r2, #0x88
	adds r0, r3, #0
	bl sub_800396C
	cmp r0, #0
	bne _0802B9BE
	ldrh r0, [r4]
	ldrb r1, [r4, #0xc]
	adds r3, r4, #0
	adds r3, #0x49
	movs r2, #0
	bl sub_8033FA8
	b _0802B9DC
_0802B9AC:
	adds r1, r4, #0
	adds r1, #0x64
	adds r2, r4, #0
	adds r2, #0x70
	adds r0, r3, #0
	bl sub_800396C
	cmp r0, #0
	beq _0802B9CE
_0802B9BE:
	ldrh r0, [r4]
	ldrb r1, [r4, #0xc]
	adds r3, r4, #0
	adds r3, #0x49
	movs r2, #1
	bl sub_8033FA8
	b _0802B9DC
_0802B9CE:
	ldrh r0, [r4]
	ldrb r1, [r4, #0xc]
	adds r3, r4, #0
	adds r3, #0x49
	movs r2, #0
	bl sub_8033FA8
_0802B9DC:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

    .thumb
sub_0802B9E4: @ 0x0802B9E4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	adds r5, r0, #0
	mov sl, r1
	mov sb, r2
	mov r8, r3
	ldr r2, _0802BA18
	ldr r0, [r5]
	ldr r1, [r2]
	adds r0, r0, r1
	str r0, [sp]
	ldr r0, [r5, #4]
	ldr r1, [r2, #4]
	adds r0, r0, r1
	str r0, [sp, #4]
	ldr r0, [r5, #8]
	ldr r1, [r2, #8]
	adds r0, r0, r1
	str r0, [sp, #8]
	movs r7, #0
	movs r6, #0
	b _0802BB0E
	.align 2, 0
_0802BA18: .4byte 0x03003578
_0802BA1C:
	ldr r2, _0802BA64
	movs r0, #0xd8
	adds r1, r6, #0
	muls r1, r0, r1
	ldr r0, [r2]
	adds r4, r0, r1
	adds r0, r4, #0
	adds r0, #0x2e
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802BB04
	ldrh r0, [r4, #0x20]
	cmp r0, #0
	bne _0802BB04
	adds r0, r4, #0
	adds r0, #0x3c
	ldrb r0, [r0]
	cmp r0, #0
	bne _0802BB04
	adds r0, r4, #0
	adds r0, #0x44
	ldrb r0, [r0]
	cmp r0, #0
	bne _0802BB04
	adds r7, #1
	adds r0, r4, #0
	adds r0, #0x45
	ldrb r0, [r0]
	cmp r0, #7
	bhi _0802BB00
	lsls r0, r0, #2
	ldr r1, _0802BA68
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0802BA64: .4byte 0x0203DFF4
_0802BA68: .4byte 0x0802BA6C
_0802BA6C: @ jump table
	.4byte _0802BADE @ case 0
	.4byte _0802BAD0 @ case 1
	.4byte _0802BA8C @ case 2
	.4byte _0802BAEE @ case 3
	.4byte _0802BA9A @ case 4
	.4byte _0802BAF4 @ case 5
	.4byte _0802BB00 @ case 6
	.4byte _0802BAFA @ case 7
_0802BA8C:
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_802B458
_0802BA94:
	cmp r0, #0
	beq _0802BB04
	b _0802BB16
_0802BA9A:
	ldr r0, _0802BAC4
	ldrb r0, [r0]
	cmp r0, #4
	beq _0802BB04
	adds r0, r4, #0
	adds r0, #0x64
	adds r1, r4, #0
	adds r1, #0x70
	ldr r2, _0802BAC8
	ldr r3, _0802BACC
	bl sub_8003964
	cmp r0, #0
	beq _0802BB04
	ldrh r0, [r4]
	movs r2, #0x1c
	ldrsh r1, [r4, r2]
	bl sub_80342F8
	b _0802BB16
	.align 2, 0
_0802BAC4: .4byte byte_20020B1
_0802BAC8: .4byte 0x030032E8
_0802BACC: .4byte 0x030032F4
_0802BAD0:
	adds r0, r5, #0
	adds r1, r4, #0
	mov r2, sl
	mov r3, sb
	bl sub_802B54C
	b _0802BA94
_0802BADE:
	adds r0, r4, #0
	mov r1, sp
	mov r2, r8
	bl sub_802B63C
	cmp r0, #0
	blt _0802BB04
	b _0802BB18
_0802BAEE:
	.2byte 0xEE00, 0xEE00
	b _0802BB04
_0802BAF4:
	.2byte 0xEE00, 0xEE00
	b _0802BB04
_0802BAFA:
	.2byte 0xEE00, 0xEE00
	b _0802BB04
_0802BB00:
	.2byte 0xEE00, 0xEE00
_0802BB04:
	ldr r0, _0802BB28
	ldrb r0, [r0]
	cmp r7, r0
	beq _0802BB16
	adds r6, #1
_0802BB0E:
	ldr r0, _0802BB2C
	ldrb r0, [r0]
	cmp r6, r0
	blt _0802BA1C
_0802BB16:
	movs r0, #0
_0802BB18:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0802BB28: .4byte 0x0203DFD0
_0802BB2C: .4byte 0x0203E009

    .thumb
sub_0802BB30: @ 0x0802BB30
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x24
	adds r6, r0, #0
	mov sl, r1
	adds r7, r2, #0
	mov sb, r3
	ldr r1, _0802BB94
	ldr r4, [r6]
	ldr r0, [r1]
	adds r0, r4, r0
	str r0, [sp]
	ldr r3, [r6, #4]
	ldr r0, [r1, #4]
	adds r0, r3, r0
	str r0, [sp, #4]
	ldr r2, [r6, #8]
	ldr r0, [r1, #8]
	adds r0, r2, r0
	str r0, [sp, #8]
	add r5, sp, #0xc
	ldr r0, _0802BB98
	adds r1, r4, r0
	str r1, [sp, #0xc]
	adds r1, r3, r0
	str r1, [r5, #4]
	adds r0, r2, r0
	str r0, [r5, #8]
	add r1, sp, #0x18
	movs r0, #0x80
	lsls r0, r0, #0xb
	adds r4, r4, r0
	str r4, [sp, #0x18]
	adds r3, r3, r0
	str r3, [r1, #4]
	adds r2, r2, r0
	str r2, [r1, #8]
	ldr r0, _0802BB9C
	ldrb r1, [r0]
	cmp r1, #0
	bne _0802BB8C
	ldr r0, _0802BBA0
	strb r1, [r0]
_0802BB8C:
	movs r0, #0
	mov r8, r0
	movs r5, #0
	b _0802BCA0
	.align 2, 0
_0802BB94: .4byte 0x03003578
_0802BB98: .4byte 0xFFFC0000
_0802BB9C: .4byte 0x0203E018
_0802BBA0: .4byte 0x0203DFC8
_0802BBA4:
	ldr r2, _0802BBEC
	movs r0, #0xd8
	adds r1, r5, #0
	muls r1, r0, r1
	ldr r0, [r2]
	adds r4, r0, r1
	adds r0, r4, #0
	adds r0, #0x2e
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802BC96
	ldrh r0, [r4, #0x20]
	cmp r0, #0
	bne _0802BC96
	adds r0, r4, #0
	adds r0, #0x3c
	ldrb r0, [r0]
	cmp r0, #0
	bne _0802BC96
	adds r0, r4, #0
	adds r0, #0x44
	ldrb r0, [r0]
	cmp r0, #0
	bne _0802BC96
	movs r0, #1
	add r8, r0
	adds r0, r4, #0
	adds r0, #0x45
	ldrb r0, [r0]
	cmp r0, #7
	bhi _0802BC92
	lsls r0, r0, #2
	ldr r1, _0802BBF0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0802BBEC: .4byte 0x0203DFF8
_0802BBF0: .4byte 0x0802BBF4
_0802BBF4: @ jump table
	.4byte _0802BC7C @ case 0
	.4byte _0802BC60 @ case 1
	.4byte _0802BC1E @ case 2
	.4byte _0802BC2C @ case 3
	.4byte _0802BC8C @ case 4
	.4byte _0802BC6E @ case 5
	.4byte _0802BC92 @ case 6
	.4byte _0802BC14 @ case 7
_0802BC14:
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_802B980
	b _0802BC96
_0802BC1E:
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_802B458
_0802BC26:
	cmp r0, #0
	beq _0802BC96
	b _0802BCAA
_0802BC2C:
	ldr r0, _0802BC54
	ldrb r0, [r0]
	cmp r0, #0
	bne _0802BC96
	adds r1, r4, #0
	adds r1, #0x64
	adds r2, r4, #0
	adds r2, #0x70
	adds r0, r6, #0
	bl sub_800396C
	cmp r0, #0
	beq _0802BC96
	ldr r1, _0802BC58
	movs r0, #1
	strb r0, [r1]
	ldr r1, _0802BC5C
	ldrh r0, [r4]
	strh r0, [r1]
	b _0802BCAA
	.align 2, 0
_0802BC54: .4byte 0x0203E018
_0802BC58: .4byte 0x0203DFC8
_0802BC5C: .4byte 0x0203DFCA
_0802BC60:
	adds r0, r6, #0
	adds r1, r4, #0
	mov r2, sl
	adds r3, r7, #0
	bl sub_802B54C
	b _0802BC26
_0802BC6E:
	adds r0, r6, #0
	adds r1, r4, #0
	add r2, sp, #0xc
	adds r3, r7, #0
	bl sub_802B5AC
	b _0802BC26
_0802BC7C:
	adds r0, r4, #0
	mov r1, sp
	mov r2, sb
	bl sub_802B63C
	cmp r0, #0
	blt _0802BC96
	b _0802BCAC
_0802BC8C:
	.2byte 0xEE00, 0xEE00
	b _0802BC96
_0802BC92:
	.2byte 0xEE00, 0xEE00
_0802BC96:
	ldr r0, _0802BCBC
	ldrb r0, [r0]
	cmp r8, r0
	beq _0802BCAA
	adds r5, #1
_0802BCA0:
	ldr r0, _0802BCC0
	ldrb r0, [r0]
	cmp r5, r0
	bge _0802BCAA
	b _0802BBA4
_0802BCAA:
	movs r0, #0
_0802BCAC:
	add sp, #0x24
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0802BCBC: .4byte 0x0203DFD1
_0802BCC0: .4byte 0x0203E00A

    .thumb
sub_0802BCC4: @ 0x0802BCC4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	ldr r0, _0802BD14
	movs r1, #0
	strb r1, [r0]
	ldr r0, _0802BD18
	strb r1, [r0]
	movs r7, #0
	movs r5, #0
	ldr r0, _0802BD1C
	ldrb r0, [r0]
	cmp r5, r0
	bge _0802BD8C
	movs r0, #1
	mov r8, r0
_0802BCE6:
	ldr r2, _0802BD20
	movs r0, #0xd8
	adds r1, r5, #0
	muls r1, r0, r1
	ldr r0, [r2]
	adds r4, r0, r1
	adds r0, r4, #0
	adds r0, #0x2e
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802BD7A
	adds r7, #1
	adds r0, r4, #0
	adds r0, #0x45
	ldrb r0, [r0]
	cmp r0, #1
	beq _0802BD70
	cmp r0, #1
	bgt _0802BD24
	cmp r0, #0
	beq _0802BD7A
	b _0802BD76
	.align 2, 0
_0802BD14: .4byte 0x0203DFC8
_0802BD18: .4byte 0x0203E018
_0802BD1C: .4byte 0x0203E00B
_0802BD20: .4byte 0x0203DFFC
_0802BD24:
	cmp r0, #2
	beq _0802BD2E
	cmp r0, #3
	beq _0802BD3C
	b _0802BD76
_0802BD2E:
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_802B458
	cmp r0, #0
	beq _0802BD7A
	b _0802BD8C
_0802BD3C:
	adds r1, r4, #0
	adds r1, #0x64
	adds r2, r4, #0
	adds r2, #0x70
	adds r0, r6, #0
	bl sub_800396C
	cmp r0, #0
	beq _0802BD7A
	ldr r0, _0802BD64
	mov r1, r8
	strb r1, [r0]
	ldr r1, _0802BD68
	ldrh r0, [r4]
	strh r0, [r1]
	ldr r0, _0802BD6C
	mov r1, r8
	strb r1, [r0]
	b _0802BD8C
	.align 2, 0
_0802BD64: .4byte 0x0203DFC8
_0802BD68: .4byte 0x0203DFCA
_0802BD6C: .4byte 0x0203E018
_0802BD70:
	.2byte 0xEE00, 0xEE00
	b _0802BD7A
_0802BD76:
	.2byte 0xEE00, 0xEE00
_0802BD7A:
	ldr r0, _0802BD98
	ldrb r0, [r0]
	cmp r7, r0
	beq _0802BD8C
	adds r5, #1
	ldr r0, _0802BD9C
	ldrb r0, [r0]
	cmp r5, r0
	blt _0802BCE6
_0802BD8C:
	movs r0, #0
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0802BD98: .4byte 0x0203DFD2
_0802BD9C: .4byte 0x0203E00B

    .thumb
sub_0802BDA0: @ 0x0802BDA0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	mov sl, r0
	ldr r0, _0802BE44
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802BE6A
	movs r3, #0
	movs r7, #0
	ldr r0, _0802BE48
	ldrb r0, [r0]
	cmp r7, r0
	bge _0802BE6A
	ldr r0, _0802BE4C
	mov sb, r0
_0802BDC6:
	movs r0, #0xe8
	adds r1, r7, #0
	muls r1, r0, r1
	mov r8, r1
	mov r2, sb
	ldr r0, [r2]
	adds r4, r0, r1
	adds r0, r4, #0
	adds r0, #0x2e
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802BE58
	adds r3, #1
	adds r6, r4, #0
	adds r6, #0x3c
	ldrb r0, [r6]
	cmp r0, #0
	bne _0802BE58
	adds r0, r4, #0
	adds r0, #0x45
	ldrb r5, [r0]
	cmp r5, #1
	bne _0802BE54
	adds r1, r4, #0
	adds r1, #0x64
	adds r2, r4, #0
	adds r2, #0x70
	mov r0, sl
	str r3, [sp]
	bl sub_800396C
	ldr r3, [sp]
	cmp r0, #0
	beq _0802BE58
	adds r0, r4, #0
	adds r0, #0xa0
	ldr r2, _0802BE50
	ldrh r1, [r4]
	lsls r1, r1, #3
	adds r1, r1, r2
	ldrh r1, [r1, #4]
	movs r2, #0
	movs r3, #1
	bl sub_8003368
	adds r0, r4, #0
	adds r0, #0xcf
	strb r5, [r0]
	strb r5, [r6]
	mov r1, sb
	ldr r0, [r1]
	add r0, r8
	adds r0, #0xe4
	ldrh r0, [r0]
	bl sub_8003864
	ldrh r0, [r4]
	movs r2, #0x1c
	ldrsh r1, [r4, r2]
	bl sub_80342F8
	b _0802BE6A
	.align 2, 0
_0802BE44: .4byte 0x0203DFD3
_0802BE48: .4byte 0x0203E00C
_0802BE4C: .4byte 0x0203E000
_0802BE50: .4byte 0x080CC938
_0802BE54:
	.2byte 0xEE00, 0xEE00
_0802BE58:
	ldr r0, _0802BE7C
	ldrb r0, [r0]
	cmp r3, r0
	beq _0802BE6A
	adds r7, #1
	ldr r0, _0802BE80
	ldrb r0, [r0]
	cmp r7, r0
	blt _0802BDC6
_0802BE6A:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802BE7C: .4byte 0x0203DFD3
_0802BE80: .4byte 0x0203E00C

    .thumb
    .global sub_802BE84
sub_802BE84: @ 0x0802BE84
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	mov sl, r0
	ldr r0, _0802BE9C
	ldrb r0, [r0]
	cmp r0, #0
	bne _0802BEE0
	b _0802BF54
	.align 2, 0
_0802BE9C: .4byte 0x0203DFD3
_0802BEA0:
	adds r4, r5, #0
	adds r4, #0xa0
	ldr r1, _0802BEDC
	ldrh r0, [r5]
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrh r1, [r0, #4]
	adds r0, r4, #0
	movs r2, #0
	movs r3, #1
	bl sub_8003368
	ldrb r1, [r5, #8]
	adds r0, r4, #0
	bl SetSpritePriority
	adds r0, r5, #0
	adds r0, #0xcf
	strb r6, [r0]
	strb r6, [r7]
	mov r1, sb
	ldr r0, [r1]
	add r0, r8
	adds r0, #0xe4
	ldrh r0, [r0]
	bl sub_8003864
	movs r0, #1
	b _0802BF56
	.align 2, 0
_0802BEDC: .4byte 0x080CC938
_0802BEE0:
	movs r3, #0
	movs r4, #0
	ldr r0, _0802BF68
	ldrb r0, [r0]
	cmp r4, r0
	bge _0802BF54
	ldr r0, _0802BF6C
	mov sb, r0
_0802BEF0:
	movs r0, #0xe8
	adds r1, r4, #0
	muls r1, r0, r1
	mov r8, r1
	mov r1, sb
	ldr r0, [r1]
	mov r1, r8
	adds r5, r0, r1
	adds r0, r5, #0
	adds r0, #0x2e
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802BF42
	adds r3, #1
	adds r7, r5, #0
	adds r7, #0x3c
	ldrb r0, [r7]
	cmp r0, #0
	bne _0802BF42
	adds r0, r5, #0
	adds r0, #0x45
	ldrb r6, [r0]
	cmp r6, #1
	bne _0802BF42
	ldrh r0, [r5]
	subs r0, #9
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bhi _0802BF42
	adds r1, r5, #0
	adds r1, #0x64
	adds r2, r5, #0
	adds r2, #0x70
	mov r0, sl
	str r3, [sp]
	bl sub_800396C
	ldr r3, [sp]
	cmp r0, #0
	bne _0802BEA0
_0802BF42:
	ldr r0, _0802BF70
	ldrb r0, [r0]
	cmp r3, r0
	beq _0802BF54
	adds r4, #1
	ldr r0, _0802BF68
	ldrb r0, [r0]
	cmp r4, r0
	blt _0802BEF0
_0802BF54:
	movs r0, #0
_0802BF56:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0802BF68: .4byte 0x0203E00C
_0802BF6C: .4byte 0x0203E000
_0802BF70: .4byte 0x0203DFD3

    .thumb
sub_802BF74: @ 0x0802BF74
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	mov r8, r0
	ldr r0, _0802C080
	ldrb r0, [r0]
	cmp r0, #0
	bne _0802BF8C
	b _0802C1C2
_0802BF8C:
	ldr r1, _0802C084
	ldr r0, _0802C088
	ldrh r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #5
	ands r0, r1
	cmp r0, #0
	beq _0802BFA4
	b _0802C1C2
_0802BFA4:
	mov r0, r8
	adds r0, #0x64
	str r0, [sp]
	mov r1, r8
	adds r1, #0x70
	str r1, [sp, #4]
	movs r2, #0
	mov sb, r2
	movs r5, #0
	ldr r0, _0802C08C
	ldrb r0, [r0]
	cmp r5, r0
	blt _0802BFC0
	b _0802C1C2
_0802BFC0:
	ldr r3, _0802C090
	mov sl, r3
	ldr r6, _0802C094
	movs r7, #0
_0802BFC8:
	mov r1, sl
	ldr r0, [r1]
	adds r4, r0, r7
	adds r0, r4, #0
	adds r0, #0x2e
	ldrb r0, [r0]
	cmp r0, #0
	bne _0802BFDA
	b _0802C1B0
_0802BFDA:
	ldr r3, _0802C098
	ldrh r0, [r4]
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _0802BFEE
	b _0802C1B0
_0802BFEE:
	adds r0, r4, #0
	adds r0, #0x3c
	ldrb r1, [r0]
	str r0, [sp, #8]
	cmp r1, #0
	beq _0802BFFC
	b _0802C1A4
_0802BFFC:
	adds r0, #0x58
	ldr r1, [sp]
	ldr r2, [sp, #4]
	str r3, [sp, #0xc]
	bl sub_800396C
	ldr r3, [sp, #0xc]
	cmp r0, #0
	bne _0802C010
	b _0802C1A8
_0802C010:
	ldr r5, _0802C09C
	mov r2, sl
	ldr r1, [r2]
	adds r1, r7, r1
	movs r2, #0x82
	lsls r2, r2, #1
	adds r0, r1, r2
	ldrb r0, [r0]
	strb r0, [r5, #0xf]
	adds r1, #0xfc
	ldrh r0, [r1]
	strh r0, [r5, #0xc]
	mov r1, r8
	ldrh r0, [r1]
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	bne _0802C0B0
	adds r0, r4, #0
	adds r0, #0xa0
	ldr r2, _0802C0A0
	ldrh r1, [r4]
	lsls r1, r1, #3
	adds r1, r1, r2
	ldrh r1, [r1, #4]
	movs r2, #0
	movs r3, #1
	bl sub_8003368
	ldr r0, _0802C0A4
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802C142
	mov r2, sl
	ldr r0, [r2]
	adds r0, r7, r0
	movs r3, #0x81
	lsls r3, r3, #1
	adds r0, r0, r3
	ldrh r3, [r0]
	lsls r3, r3, #3
	adds r0, r3, r6
	ldrh r0, [r0]
	ldr r1, _0802C0A8
	ldrb r1, [r1]
	adds r1, r1, r3
	adds r2, r6, #2
	adds r1, r1, r2
	ldrb r1, [r1]
	ldr r2, _0802C0AC
	adds r3, r3, r2
	b _0802C0F2
	.align 2, 0
_0802C080: .4byte 0x0203DFD4
_0802C084: .4byte gPlayerStateSettings
_0802C088: .4byte gPlayerState
_0802C08C: .4byte 0x0203DFD5
_0802C090: .4byte 0x0203E004
_0802C094: .4byte 0x080CE440
_0802C098: .4byte 0x080CC2B0
_0802C09C: .4byte 0x03003578
_0802C0A0: .4byte 0x080CC938
_0802C0A4: .4byte byte_203EA89
_0802C0A8: .4byte byte_203EA8C
_0802C0AC: .4byte 0x080CE444
_0802C0B0:
	adds r0, r4, #0
	adds r0, #0xa0
	ldr r1, _0802C100
	movs r2, #0
	movs r3, #1
	bl sub_8003368
	ldr r1, _0802C104
	mov r2, r8
	ldrh r0, [r2]
	lsls r0, r0, #1
	adds r0, r0, r1
	movs r3, #0
	ldrsh r0, [r0, r3]
	ldrh r1, [r5, #0xc]
	ands r0, r1
	cmp r0, #0
	beq _0802C118
	ldr r0, _0802C108
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802C142
	movs r1, #0xbe
	lsls r1, r1, #3
	adds r0, r6, r1
	ldrh r0, [r0]
	ldr r2, _0802C10C
	ldr r3, _0802C110
	adds r1, r6, r3
	ldrb r2, [r2]
	adds r1, r1, r2
	ldrb r1, [r1]
	ldr r3, _0802C114
_0802C0F2:
	ldr r2, [r3]
	movs r3, #0x80
	lsls r3, r3, #9
	adds r2, r2, r3
	bl audio_new_fx
	b _0802C142
	.align 2, 0
_0802C100: .4byte 0x00000451
_0802C104: .4byte 0x080A75A4
_0802C108: .4byte byte_203EA89
_0802C10C: .4byte byte_203EA8C
_0802C110: .4byte 0x000005F2
_0802C114: .4byte 0x080CEA34
_0802C118:
	ldr r0, _0802C188
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802C142
	movs r1, #0xc6
	lsls r1, r1, #3
	adds r0, r6, r1
	ldrh r0, [r0]
	ldr r2, _0802C18C
	ldr r3, _0802C190
	adds r1, r6, r3
	ldrb r2, [r2]
	adds r1, r1, r2
	ldrb r1, [r1]
	ldr r3, _0802C194
	ldr r2, [r3]
	movs r3, #0x80
	lsls r3, r3, #9
	adds r2, r2, r3
	bl audio_new_fx
_0802C142:
	movs r1, #1
	ldr r0, [sp, #8]
	strb r1, [r0]
	mov r2, sl
	ldr r0, [r2]
	adds r0, r7, r0
	adds r0, #0xfe
	ldrh r0, [r0]
	ldr r2, _0802C198
	ldr r1, _0802C19C
	ldrb r1, [r1, #0xa]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r2, [r1]
	movs r1, #0
	movs r3, #0
	bl sub_8003884
	mov r3, sl
	ldr r0, [r3]
	adds r0, r7, r0
	ldr r1, _0802C1A0
	adds r0, r0, r1
	movs r2, #1
	strb r2, [r0]
	ldr r0, [r3]
	adds r0, r7, r0
	movs r3, #0x83
	lsls r3, r3, #1
	adds r0, r0, r3
	movs r1, #0
	strb r1, [r0]
	movs r0, #1
	b _0802C1C4
	.align 2, 0
_0802C188: .4byte byte_203EA89
_0802C18C: .4byte byte_203EA8C
_0802C190: .4byte 0x00000632
_0802C194: .4byte 0x080CEA74
_0802C198: .4byte dword_80CC290
_0802C19C: .4byte gPlayerSprite
_0802C1A0: .4byte 0x00000105
_0802C1A4:
	movs r2, #1
	add sb, r2
_0802C1A8:
	ldr r0, _0802C1D4
	ldrb r0, [r0]
	cmp sb, r0
	beq _0802C1C2
_0802C1B0:
	movs r3, #0x84
	lsls r3, r3, #1
	adds r7, r7, r3
	adds r5, #1
	ldr r0, _0802C1D8
	ldrb r0, [r0]
	cmp r5, r0
	bge _0802C1C2
	b _0802BFC8
_0802C1C2:
	movs r0, #0
_0802C1C4:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0802C1D4: .4byte 0x0203DFD4
_0802C1D8: .4byte 0x0203DFD5

    .thumb
    .global sub_802C1DC
sub_802C1DC: @ 0x0802C1DC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x30
	str r0, [sp, #0x24]
	str r1, [sp, #0x28]
	ldr r0, _0802C2F0
	ldrb r0, [r0]
	cmp r0, #0
	bne _0802C1F6
	b _0802C336
_0802C1F6:
	ldr r1, _0802C2F4
	ldr r0, _0802C2F8
	ldr r4, [r0]
	asrs r4, r4, #1
	ldr r3, [r1]
	subs r0, r3, r4
	str r0, [sp]
	ldr r5, [r1, #4]
	str r5, [sp, #4]
	ldr r0, _0802C2FC
	ldr r2, [r0]
	asrs r2, r2, #1
	ldr r1, [r1, #8]
	subs r0, r1, r2
	str r0, [sp, #8]
	add r6, sp, #0xc
	adds r3, r3, r4
	str r3, [sp, #0xc]
	ldr r0, _0802C300
	ldr r0, [r0]
	adds r5, r5, r0
	str r5, [r6, #4]
	adds r1, r1, r2
	str r1, [r6, #8]
	movs r3, #0
	movs r4, #0
	ldr r0, _0802C304
	ldrb r0, [r0]
	cmp r4, r0
	blt _0802C234
	b _0802C336
_0802C234:
	ldr r0, _0802C308
	mov sb, r0
	add r6, sp, #0x18
	movs r1, #1
	mov sl, r1
	mov r8, r4
_0802C240:
	mov r1, sb
	ldr r0, [r1]
	mov r1, r8
	adds r5, r0, r1
	adds r0, r5, #0
	adds r0, #0x2e
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802C326
	ldrh r0, [r5]
	ldr r1, [sp, #0x24]
	cmp r0, r1
	bne _0802C326
	adds r7, r5, #0
	adds r7, #0x3c
	ldrb r0, [r7]
	cmp r0, #0
	bne _0802C31C
	adds r0, r5, #0
	adds r0, #0x94
	mov r1, sp
	add r2, sp, #0xc
	str r3, [sp, #0x2c]
	bl sub_800396C
	ldr r3, [sp, #0x2c]
	cmp r0, #0
	beq _0802C31E
	mov r1, sb
	ldr r0, [r1]
	add r0, r8
	adds r0, #0xd8
	movs r1, #0xa0
	lsls r1, r1, #0xb
	adds r2, r6, #0
	bl sub_80039A4
	ldr r4, _0802C2F4
	adds r0, r4, #0
	adds r1, r6, #0
	adds r2, r6, #0
	bl sub_8003984
	ldr r0, [r4]
	ldr r1, [r4, #8]
	ldr r2, [sp, #0x18]
	ldr r3, [r6, #8]
	bl sub_8003A6C
	ldr r1, [sp, #0x28]
	strb r0, [r1]
	adds r0, r5, #0
	adds r0, #0xa0
	ldr r2, _0802C30C
	ldrh r1, [r5]
	lsls r1, r1, #3
	adds r1, r1, r2
	ldrh r1, [r1, #4]
	movs r2, #0
	movs r3, #1
	bl sub_8003368
	mov r0, sl
	strb r0, [r7]
	mov r1, sb
	ldr r0, [r1]
	add r0, r8
	adds r0, #0xfe
	ldrh r0, [r0]
	ldr r2, _0802C310
	ldr r1, _0802C314
	ldrb r1, [r1, #0xa]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r2, [r1]
	movs r1, #0
	movs r3, #0
	bl sub_8003884
	mov r1, sb
	ldr r0, [r1]
	add r0, r8
	ldr r1, _0802C318
	adds r0, r0, r1
	mov r1, sl
	strb r1, [r0]
	movs r0, #1
	b _0802C338
	.align 2, 0
_0802C2F0: .4byte 0x0203DFD4
_0802C2F4: .4byte gPlayerPos
_0802C2F8: .4byte 0x03003300
_0802C2FC: .4byte 0x03003304
_0802C300: .4byte 0x03003308
_0802C304: .4byte 0x0203DFD5
_0802C308: .4byte 0x0203E004
_0802C30C: .4byte 0x080CC938
_0802C310: .4byte dword_80CC290
_0802C314: .4byte gPlayerSprite
_0802C318: .4byte 0x00000105
_0802C31C:
	adds r3, #1
_0802C31E:
	ldr r0, _0802C348
	ldrb r0, [r0]
	cmp r3, r0
	beq _0802C336
_0802C326:
	movs r0, #0x84
	lsls r0, r0, #1
	add r8, r0
	adds r4, #1
	ldr r0, _0802C34C
	ldrb r0, [r0]
	cmp r4, r0
	blt _0802C240
_0802C336:
	movs r0, #0
_0802C338:
	add sp, #0x30
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0802C348: .4byte 0x0203DFD4
_0802C34C: .4byte 0x0203DFD5

	.thumb
sub_0802C350: @ 0x0802C350
	push {r4, r5, r6, lr}
	adds r4, r1, #0
	ldr r1, _0802C388
	ldr r1, [r1]
	ldr r1, [r1, #4]
	lsls r0, r0, #3
	adds r0, r0, r1
	ldr r1, [r0]
	movs r2, #0
	ldrh r0, [r0, #4]
	cmp r2, r0
	bge _0802C398
	ldr r6, _0802C38C
	adds r3, r0, #0
	movs r5, #8
_0802C36E:
	ldrh r0, [r1]
	cmp r0, r4
	bne _0802C390
	ldrh r0, [r1, #2]
	lsls r0, r0, #2
	adds r0, r0, r6
	ldr r0, [r0]
	ands r0, r5
	cmp r0, #0
	beq _0802C390
	adds r0, r1, #0
	b _0802C39E
	.align 2, 0
_0802C388: .4byte 0x0203DFB0
_0802C38C: .4byte 0x080CC2B0
_0802C390:
	adds r1, #0x1c
	adds r2, #1
	cmp r2, r3
	blt _0802C36E
_0802C398:
	.2byte 0xEE00, 0xEE00
	movs r0, #0
_0802C39E:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

    .thumb
    .global sub_0802C3A4
sub_0802C3A4: @ 0x0802C3A4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x28
	mov r8, r0
	adds r4, r1, #0
	mov ip, r2
	str r3, [sp, #0x1c]
	ldr r0, _0802C3D0
	ldr r1, _0802C3D4
	ldrb r5, [r0]
	adds r2, r0, #0
	adds r3, r1, #0
	ldrb r0, [r3]
	cmp r5, r0
	bne _0802C3D8
	.2byte 0xEE00, 0xEE00
	b _0802C94E
	.align 2, 0
_0802C3D0: .4byte 0x0203DFD3
_0802C3D4: .4byte 0x0203E00C
_0802C3D8:
	movs r1, #0
	mov sl, r1
	ldrb r0, [r3]
	cmp sl, r0
	bge _0802C41C
	ldr r0, _0802C3F4
	ldr r1, [r0]
	adds r1, #0x2e
	ldrb r1, [r1]
	adds r6, r0, #0
	cmp r1, #0
	bne _0802C3F8
	adds r0, r5, #1
	b _0802C41A
	.align 2, 0
_0802C3F4: .4byte 0x0203E000
_0802C3F8:
	movs r1, #1
	add sl, r1
	ldrb r5, [r3]
	cmp sl, r5
	bge _0802C41C
	ldr r1, [r6]
	movs r0, #0xe8
	mov r5, sl
	muls r5, r0, r5
	adds r0, r5, #0
	adds r0, r0, r1
	adds r0, #0x2e
	ldrb r0, [r0]
	cmp r0, #0
	bne _0802C3F8
	ldrb r0, [r2]
	adds r0, #1
_0802C41A:
	strb r0, [r2]
_0802C41C:
	ldrb r3, [r3]
	cmp sl, r3
	bne _0802C428
	.2byte 0xEE00, 0xEE00
	b _0802C94E
_0802C428:
	ldr r2, _0802C488
	movs r0, #0xe8
	mov r1, sl
	muls r1, r0, r1
	ldr r0, [r2]
	adds r7, r0, r1
	str r7, [sp, #0x24]
	adds r1, r7, #0
	adds r1, #0x94
	adds r0, r7, #0
	adds r0, #0xd8
	str r0, [sp, #0x20]
	adds r2, r7, #0
	adds r2, #0x2e
	movs r0, #1
	strb r0, [r2]
	ldrh r0, [r4, #6]
	strh r0, [r7, #6]
	ldrb r0, [r4, #8]
	strb r0, [r7, #8]
	ldrh r0, [r4, #2]
	strh r0, [r7, #2]
	ldrh r0, [r4, #4]
	strh r0, [r7, #4]
	ldrb r0, [r4, #9]
	strb r0, [r7, #9]
	adds r0, r4, #0
	adds r0, #0x94
	ldr r0, [r0]
	str r0, [r1]
	adds r0, r4, #0
	adds r0, #0x98
	ldr r0, [r0]
	str r0, [r1, #4]
	adds r0, r4, #0
	adds r0, #0x9c
	ldr r0, [r0]
	str r0, [r1, #8]
	mov r0, r8
	subs r0, #1
	cmp r0, #0x1f
	bhi _0802C558
	lsls r0, r0, #2
	ldr r1, _0802C48C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0802C488: .4byte 0x0203E000
_0802C48C: .4byte 0x0802C490
_0802C490: @ jump table
	.4byte _0802C510 @ case 0
	.4byte _0802C516 @ case 1
	.4byte _0802C558 @ case 2
	.4byte _0802C51C @ case 3
	.4byte _0802C558 @ case 4
	.4byte _0802C558 @ case 5
	.4byte _0802C558 @ case 6
	.4byte _0802C522 @ case 7
	.4byte _0802C558 @ case 8
	.4byte _0802C558 @ case 9
	.4byte _0802C558 @ case 10
	.4byte _0802C558 @ case 11
	.4byte _0802C558 @ case 12
	.4byte _0802C558 @ case 13
	.4byte _0802C558 @ case 14
	.4byte _0802C528 @ case 15
	.4byte _0802C558 @ case 16
	.4byte _0802C558 @ case 17
	.4byte _0802C558 @ case 18
	.4byte _0802C558 @ case 19
	.4byte _0802C558 @ case 20
	.4byte _0802C558 @ case 21
	.4byte _0802C558 @ case 22
	.4byte _0802C558 @ case 23
	.4byte _0802C558 @ case 24
	.4byte _0802C558 @ case 25
	.4byte _0802C558 @ case 26
	.4byte _0802C558 @ case 27
	.4byte _0802C558 @ case 28
	.4byte _0802C558 @ case 29
	.4byte _0802C558 @ case 30
	.4byte _0802C52E @ case 31
_0802C510:
	movs r2, #0
	movs r0, #4
	b _0802C532
_0802C516:
	movs r2, #0
	movs r0, #9
	b _0802C532
_0802C51C:
	movs r2, #0
	movs r0, #0xa
	b _0802C532
_0802C522:
	movs r2, #0
	movs r0, #0x58
	b _0802C532
_0802C528:
	movs r2, #0
	movs r0, #0x59
	b _0802C532
_0802C52E:
	movs r2, #0
	movs r0, #0x5a
_0802C532:
	strh r0, [r7]
	strb r2, [r7, #0xa]
	adds r0, r7, #0
	adds r0, #0x45
	movs r1, #1
	strb r1, [r0]
	subs r0, #0x16
	strb r2, [r0]
	adds r0, #1
	strb r1, [r0]
	ldr r0, _0802C554
	strh r0, [r7, #0x1c]
	movs r0, #0xe1
	lsls r0, r0, #1
	strh r0, [r7, #0x2c]
	b _0802C55C
	.align 2, 0
_0802C554: .4byte 0x0000FFFF
_0802C558:
	.2byte 0xEE00, 0xEE00
_0802C55C:
	adds r0, r7, #0
	adds r0, #0x24
	movs r1, #0
	strb r1, [r0]
	adds r0, #0x18
	strb r1, [r0]
	strb r1, [r7, #0xb]
	subs r0, #0x14
	strb r1, [r0]
	adds r0, #0x1e
	movs r2, #0
	strh r1, [r0]
	strh r1, [r7, #0x1e]
	strb r2, [r7, #0x18]
	strb r2, [r7, #0x14]
	strh r1, [r7, #0x20]
	strb r2, [r7, #0xc]
	subs r0, #0x12
	strb r2, [r0]
	strb r2, [r7, #0x10]
	adds r0, #4
	strb r2, [r0]
	ldr r3, _0802C798
	ldrh r1, [r7]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r3
	ldrh r0, [r0, #0xc]
	lsls r0, r0, #0x10
	str r0, [r7, #0x4c]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r3
	ldrh r0, [r0, #0xe]
	lsls r0, r0, #0x10
	str r0, [r7, #0x50]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r3
	ldrh r0, [r0, #0x10]
	lsls r0, r0, #0x10
	str r0, [r7, #0x54]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r3
	ldrh r0, [r0, #0x12]
	lsls r0, r0, #0x10
	str r0, [r7, #0x58]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r3
	ldrh r0, [r0, #0x14]
	lsls r0, r0, #0x10
	str r0, [r7, #0x5c]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r3
	ldrh r0, [r0, #0x16]
	lsls r0, r0, #0x10
	str r0, [r7, #0x60]
	movs r1, #0x94
	adds r1, r1, r7
	mov r8, r1
	ldrh r0, [r7, #2]
	lsls r0, r0, #0x10
	str r0, [r1]
	adds r6, r7, #0
	adds r6, #0x98
	ldrh r2, [r7, #6]
	ldrb r0, [r7, #9]
	adds r2, r2, r0
	lsls r2, r2, #0x10
	str r2, [r6]
	movs r4, #0x9c
	adds r4, r4, r7
	mov sb, r4
	ldr r0, _0802C79C
	ldrh r0, [r0]
	ldrh r1, [r7, #4]
	subs r0, r0, r1
	ldrb r5, [r7, #9]
	adds r0, r0, r5
	lsls r0, r0, #0x10
	subs r0, r0, r2
	str r0, [r4]
	ldr r4, [r7, #0x4c]
	asrs r4, r4, #1
	mov r0, r8
	ldr r2, [r0]
	subs r2, r2, r4
	ldrh r1, [r7]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r3
	movs r1, #0
	ldrsh r0, [r0, r1]
	lsls r0, r0, #0x10
	adds r2, r2, r0
	str r2, [r7, #0x64]
	ldrh r1, [r7]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r3
	movs r2, #2
	ldrsh r1, [r0, r2]
	lsls r1, r1, #0x10
	ldr r0, [r6]
	adds r0, r0, r1
	str r0, [r7, #0x68]
	ldr r5, [r7, #0x54]
	asrs r5, r5, #1
	mov r0, sb
	ldr r2, [r0]
	subs r2, r2, r5
	ldrh r1, [r7]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r3
	movs r1, #4
	ldrsh r0, [r0, r1]
	lsls r0, r0, #0x10
	adds r2, r2, r0
	str r2, [r7, #0x6c]
	mov r0, r8
	ldr r2, [r0]
	adds r2, r2, r4
	ldrh r1, [r7]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r3
	movs r1, #0
	ldrsh r0, [r0, r1]
	lsls r0, r0, #0x10
	adds r2, r2, r0
	str r2, [r7, #0x70]
	ldr r2, [r6]
	ldr r0, [r7, #0x50]
	adds r2, r2, r0
	ldrh r1, [r7]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r3
	movs r4, #2
	ldrsh r0, [r0, r4]
	lsls r0, r0, #0x10
	adds r2, r2, r0
	str r2, [r7, #0x74]
	mov r0, sb
	ldr r2, [r0]
	adds r2, r2, r5
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r3
	movs r1, #4
	ldrsh r0, [r0, r1]
	lsls r0, r0, #0x10
	adds r2, r2, r0
	str r2, [r7, #0x78]
	ldr r0, [r7, #0x58]
	asrs r0, r0, #1
	mov r4, r8
	ldr r2, [r4]
	subs r2, r2, r0
	ldrh r1, [r7]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r3
	movs r5, #6
	ldrsh r0, [r0, r5]
	lsls r0, r0, #0x10
	adds r2, r2, r0
	str r2, [r7, #0x7c]
	adds r2, r7, #0
	adds r2, #0x80
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r3
	movs r4, #8
	ldrsh r1, [r0, r4]
	lsls r1, r1, #0x10
	ldr r0, [r6]
	adds r0, r0, r1
	str r0, [r2]
	adds r4, r7, #0
	adds r4, #0x84
	ldr r0, [r7, #0x60]
	asrs r0, r0, #1
	mov r5, sb
	ldr r2, [r5]
	subs r2, r2, r0
	ldrh r1, [r7]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r3
	movs r1, #0xa
	ldrsh r0, [r0, r1]
	lsls r0, r0, #0x10
	adds r2, r2, r0
	str r2, [r4]
	adds r4, #4
	ldr r0, [r7, #0x58]
	asrs r0, r0, #1
	mov r5, r8
	ldr r2, [r5]
	adds r2, r2, r0
	ldrh r1, [r7]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r3
	movs r1, #6
	ldrsh r0, [r0, r1]
	lsls r0, r0, #0x10
	adds r2, r2, r0
	str r2, [r4]
	adds r4, #4
	ldr r2, [r6]
	ldr r0, [r7, #0x5c]
	adds r2, r2, r0
	ldrh r1, [r7]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r3
	movs r5, #8
	ldrsh r0, [r0, r5]
	lsls r0, r0, #0x10
	adds r2, r2, r0
	str r2, [r4]
	adds r4, #4
	ldr r0, [r7, #0x60]
	asrs r0, r0, #1
	mov r1, sb
	ldr r2, [r1]
	adds r2, r2, r0
	ldrh r1, [r7]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r3
	movs r3, #0xa
	ldrsh r0, [r0, r3]
	lsls r0, r0, #0x10
	adds r2, r2, r0
	str r2, [r4]
	mov sb, r8
	mov r4, ip
	cmp r4, #0
	bge _0802C7A4
	movs r0, #0
	movs r1, #7
	bl RandomMinMax
	mov sl, r0
	ldr r2, _0802C7A0
	lsls r0, r0, #1
	add r0, sl
	lsls r0, r0, #2
	adds r1, r0, r2
	ldr r1, [r1]
	ldr r5, [sp, #0x20]
	str r1, [r5]
	movs r1, #0x80
	lsls r1, r1, #9
	str r1, [r5, #4]
	adds r2, #8
	adds r0, r0, r2
	ldr r0, [r0]
	str r0, [r5, #8]
	b _0802C7C4
	.align 2, 0
_0802C798: .4byte 0x080CCFFC
_0802C79C: .4byte gMapPixelSizeY
_0802C7A0: .4byte 0x080CC78C
_0802C7A4:
	ldr r2, _0802C808
	mov r1, ip
	lsls r0, r1, #1
	add r0, ip
	lsls r0, r0, #2
	adds r1, r0, r2
	ldr r1, [r1]
	ldr r3, [sp, #0x20]
	str r1, [r3]
	movs r1, #0x80
	lsls r1, r1, #9
	str r1, [r3, #4]
	adds r2, #8
	adds r0, r0, r2
	ldr r0, [r0]
	str r0, [r3, #8]
_0802C7C4:
	ldr r1, [sp, #0x24]
	adds r1, #0xe6
	movs r0, #1
	strb r0, [r1]
	movs r0, #0x96
	lsls r0, r0, #0xf
	bl sub_8003854
	ldr r4, [sp, #0x24]
	adds r4, #0xe4
	strh r0, [r4]
	ldrh r0, [r4]
	ldr r2, _0802C80C
	ldr r1, _0802C810
	ldrb r1, [r1, #0xe]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl sub_800389C
	ldrh r0, [r4]
	ldr r1, _0802C814
	ldr r1, [r1]
	bl sub_8003894
	ldr r5, [sp, #0x1c]
	cmp r5, #1
	beq _0802C864
	cmp r5, #1
	bgt _0802C818
	cmp r5, #0
	beq _0802C820
	b _0802C870
	.align 2, 0
_0802C808: .4byte 0x080CC78C
_0802C80C: .4byte 0x080CC844
_0802C810: .4byte gRoomHeader
_0802C814: .4byte 0x080CC818
_0802C818:
	ldr r0, [sp, #0x1c]
	cmp r0, #2
	beq _0802C848
	b _0802C870
_0802C820:
	ldrh r0, [r4]
	movs r1, #0xc0
	lsls r1, r1, #9
	ldr r3, _0802C844
	mov r5, sl
	lsls r2, r5, #2
	adds r2, r2, r3
	ldr r2, [r2]
	movs r3, #0
	bl sub_8003884
	ldrh r0, [r4]
	movs r1, #0x80
	lsls r1, r1, #0xb
	movs r2, #0
	bl CallARM_store_jump_and_other_value
	b _0802C870
	.align 2, 0
_0802C844: .4byte dword_80CC290
_0802C848:
	ldrh r0, [r4]
	movs r1, #0xc0
	lsls r1, r1, #9
	ldr r3, _0802C860
	mov r4, sl
	lsls r2, r4, #2
	adds r2, r2, r3
	ldr r2, [r2]
	movs r3, #0
	bl sub_8003884
	b _0802C870
	.align 2, 0
_0802C860: .4byte dword_80CC290
_0802C864:
	ldrh r0, [r4]
	movs r1, #0x80
	lsls r1, r1, #0xb
	movs r2, #0
	bl CallARM_store_jump_and_other_value
_0802C870:
	ldrh r1, [r7, #2]
	ldr r0, _0802C8C0
	movs r5, #0
	ldrsh r0, [r0, r5]
	subs r1, r1, r0
	mov r8, r1
	ldrh r1, [r7, #4]
	ldr r0, _0802C8C4
	movs r2, #0
	ldrsh r0, [r0, r2]
	subs r5, r1, r0
	adds r4, r7, #0
	adds r4, #0xbc
	movs r0, #1
	str r0, [sp]
	mov r3, r8
	str r3, [sp, #4]
	str r5, [sp, #8]
	movs r0, #2
	str r0, [sp, #0xc]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl SetSprite
	ldrb r1, [r7, #8]
	adds r0, r4, #0
	bl SetSpritePriority
	ldrb r1, [r7, #9]
	ldr r0, _0802C8C8
	ldr r0, [r0]
	adds r6, r4, #0
	cmp r1, r0
	bge _0802C8D0
	ldr r0, _0802C8CC
	adds r0, r1, r0
	ldrb r1, [r0]
	b _0802C8D2
	.align 2, 0
_0802C8C0: .4byte gCameraPixelX
_0802C8C4: .4byte gCameraPixelY
_0802C8C8: .4byte 0x080CEBC4
_0802C8CC: .4byte 0x080CEB84
_0802C8D0:
	movs r1, #5
_0802C8D2:
	adds r0, r4, #0
	bl sub_80037F4
	adds r0, r6, #0
	bl sub_8003794
	mov r0, sb
	ldrb r1, [r7, #9]
	rsbs r1, r1, #0
	ldr r6, _0802C960
	ldrh r2, [r6]
	bl sub_8003A7C
	cmp r0, #0
	bne _0802C8F8
	adds r1, r7, #0
	adds r1, #0xcf
	movs r0, #1
	strb r0, [r1]
_0802C8F8:
	ldrb r0, [r7, #9]
	subs r5, r5, r0
	adds r4, r7, #0
	adds r4, #0xa0
	ldrh r1, [r7]
	ldr r0, _0802C964
	adds r1, r1, r0
	movs r0, #0
	str r0, [sp]
	mov r2, r8
	str r2, [sp, #4]
	str r5, [sp, #8]
	movs r0, #2
	str r0, [sp, #0xc]
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl SetSprite
	ldrb r1, [r7, #8]
	adds r0, r4, #0
	bl SetSpritePriority
	ldr r0, [r7, #0x4c]
	asrs r0, r0, #1
	str r0, [sp, #0x10]
	ldr r0, [r7, #0x50]
	str r0, [sp, #0x14]
	ldr r0, [r7, #0x54]
	asrs r0, r0, #1
	str r0, [sp, #0x18]
	ldrh r3, [r6]
	mov r0, sb
	add r1, sp, #0x10
	movs r2, #0
	bl sub_8003A74
	cmp r0, #0
	bne _0802C94E
	adds r1, r7, #0
	adds r1, #0xb3
	movs r0, #1
	strb r0, [r1]
_0802C94E:
	add sp, #0x28
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802C960: .4byte gMapPixelSizeY
_0802C964: .4byte 0x00000221

    .thumb
sub_802C968: @ 0x0802C968
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r1, _0802C9C8
	ldrb r0, [r1]
	cmp r0, #0
	beq _0802C9EA
	movs r5, #0
	movs r6, #0
	ldr r0, _0802C9CC
	ldrb r0, [r0]
	cmp r6, r0
	bge _0802C9EA
	ldr r0, _0802C9D0
	mov r8, r0
	adds r7, r1, #0
_0802C988:
	movs r0, #0xe8
	adds r4, r6, #0
	muls r4, r0, r4
	mov r1, r8
	ldr r0, [r1]
	adds r2, r0, r4
	adds r3, r2, #0
	adds r3, #0x2e
	ldrb r0, [r3]
	cmp r0, #0
	beq _0802C9E0
	adds r0, r2, #0
	adds r0, #0x3c
	ldrb r0, [r0]
	cmp r0, #0
	bne _0802C9D8
	ldrh r0, [r2, #0x2c]
	adds r1, r0, #0
	cmp r1, #0
	bne _0802C9D4
	strb r1, [r3]
	mov r1, r8
	ldr r0, [r1]
	adds r0, r4, r0
	adds r0, #0xe4
	ldrh r0, [r0]
	bl sub_8003864
	ldrb r0, [r7]
	subs r0, #1
	strb r0, [r7]
	b _0802C9DA
	.align 2, 0
_0802C9C8: .4byte 0x0203DFD3
_0802C9CC: .4byte 0x0203E00C
_0802C9D0: .4byte 0x0203E000
_0802C9D4:
	subs r0, #1
	strh r0, [r2, #0x2c]
_0802C9D8:
	adds r5, #1
_0802C9DA:
	ldrb r0, [r7]
	cmp r5, r0
	beq _0802C9EA
_0802C9E0:
	adds r6, #1
	ldr r0, _0802C9F4
	ldrb r0, [r0]
	cmp r6, r0
	blt _0802C988
_0802C9EA:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802C9F4: .4byte 0x0203E00C

    .thumb
sub_802C9F8: @ 0x0802C9F8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xf4
	str r0, [sp, #0xd8]
	str r1, [sp, #0xdc]
	ldr r0, _0802CA6C
	ldrb r0, [r0]
	cmp r0, #0
	bne _0802CA12
	b _0802CF9E
_0802CA12:
	movs r0, #0
	str r0, [sp, #0xe4]
	movs r1, #0
	str r1, [sp, #0xe0]
	ldr r0, _0802CA70
	ldrb r0, [r0]
	cmp r1, r0
	blt _0802CA24
	b _0802CF9E
_0802CA24:
	ldr r2, _0802CA74
	movs r0, #0xe8
	ldr r3, [sp, #0xe0]
	adds r1, r3, #0
	muls r1, r0, r1
	ldr r0, [r2]
	adds r7, r0, r1
	mov sl, r7
	adds r4, r7, #0
	adds r4, #0x2e
	ldrb r0, [r4]
	cmp r0, #0
	bne _0802CA40
	b _0802CF84
_0802CA40:
	adds r0, r7, #0
	adds r0, #0x3c
	ldrb r5, [r0]
	str r0, [sp, #0xec]
	cmp r5, #0
	beq _0802CA78
	adds r0, #0x64
	bl sub_8003770
	mov sb, r4
	cmp r0, #0
	bne _0802CA5A
	b _0802CDD6
_0802CA5A:
	movs r0, #0
	ldr r1, [sp, #0xec]
	strb r0, [r1]
	strb r0, [r4]
	ldr r1, _0802CA6C
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	b _0802CDD6
	.align 2, 0
_0802CA6C: .4byte 0x0203DFD3
_0802CA70: .4byte 0x0203E00C
_0802CA74: .4byte 0x0203E000
_0802CA78:
	adds r0, r7, #0
	adds r0, #0xe6
	ldrb r0, [r0]
	mov sb, r4
	cmp r0, #0
	bne _0802CA86
	b _0802CDD6
_0802CA86:
	movs r2, #0x94
	adds r2, r2, r7
	mov r8, r2
	adds r3, r7, #0
	adds r3, #0xd8
	str r3, [sp, #0xe8]
	adds r4, r7, #0
	adds r4, #0xe4
	ldrh r0, [r4]
	bl sub_80038A4
	ldrh r0, [r4]
	add r1, sp, #0xcc
	add r2, sp, #0xd0
	add r3, sp, #0xd4
	bl sub_80038C4
	mov r0, r8
	ldr r1, [r0]
	add r0, sp, #0xcc
	ldr r0, [r0]
	adds r1, r1, r0
	str r1, [sp]
	mov r2, r8
	ldr r1, [r2, #4]
	add r0, sp, #0xd0
	ldr r0, [r0]
	adds r1, r1, r0
	str r1, [sp, #4]
	mov r3, r8
	str r3, [sp, #0xf0]
	add r2, sp, #0xd4
	cmp r1, #0
	bge _0802CACC
	str r5, [sp, #4]
_0802CACC:
	ldr r1, [sp, #0xf0]
	ldr r0, [r1, #8]
	ldr r1, [r2]
	adds r0, r0, r1
	str r0, [sp, #8]
	add r1, sp, #0xc
	ldr r2, [sp, #0xe8]
	ldr r0, [r2]
	str r0, [sp, #0xc]
	ldr r2, [r2, #4]
	str r2, [r1, #4]
	ldr r3, [sp, #0xe8]
	ldr r0, [r3, #8]
	str r0, [r1, #8]
	cmp r2, #0
	ble _0802CAFE
	ldrh r0, [r4]
	bl sub_80038BC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0802CAFE
	ldr r0, [sp, #0x10]
	rsbs r0, r0, #0
	str r0, [sp, #0x10]
_0802CAFE:
	add r5, sp, #0x24
	mov r0, sp
	add r1, sp, #0xc
	adds r2, r5, #0
	bl sub_08007FA0
	add r4, sp, #0x78
	mov r0, sp
	adds r1, r4, #0
	bl sub_08009208
	ldrb r0, [r5]
	cmp r0, #0
	beq _0802CBB8
	ldr r0, _0802CB54
	ldrb r0, [r0]
	mov sb, r0
	cmp r0, #0
	beq _0802CB5C
	mov r0, sl
	adds r0, #0xe4
	ldrh r0, [r0]
	ldr r2, _0802CB58
	adds r1, r7, #0
	adds r1, #0xaa
	ldrb r1, [r1]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r2, [r1]
	movs r1, #0
	movs r3, #0
	bl sub_8003884
	movs r6, #0
	movs r1, #0x7b
	add r1, sp
	ldrb r0, [r1]
	strb r0, [r7, #8]
	movs r2, #0x2e
	adds r2, r2, r7
	mov sb, r2
	b _0802CC0C
	.align 2, 0
_0802CB54: .4byte 0x03002A4C
_0802CB58: .4byte dword_80CC290
_0802CB5C:
	mov r0, sl
	adds r0, #0xe4
	ldrh r0, [r0]
	bl sub_800387C
	ldr r0, [r5, #0x1c]
	ldr r1, [sp]
	bl CallARM_FX_Mul
	adds r4, r0, #0
	ldr r0, [r5, #0x20]
	ldr r1, [sp, #8]
	bl CallARM_FX_Mul
	adds r4, r4, r0
	ldr r0, [r5, #0x24]
	adds r4, r4, r0
	cmp r4, #0
	blt _0802CB84
	str r4, [sp, #4]
_0802CB84:
	movs r6, #1
	ldrb r0, [r5, #3]
	strb r0, [r7, #8]
	mov r0, sl
	adds r0, #0xe6
	mov r3, sb
	strb r3, [r0]
	ldr r1, _0802CBB4
	ldrh r0, [r7]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	movs r0, #0x80
	ands r1, r0
	movs r0, #0x2e
	adds r0, r0, r7
	mov sb, r0
	cmp r1, #0
	beq _0802CC0C
	adds r0, r7, #0
	adds r0, #0x38
	strb r6, [r0]
	b _0802CC0C
	.align 2, 0
_0802CBB4: .4byte 0x080CC2B0
_0802CBB8:
	movs r6, #1
	movs r1, #0x7b
	add r1, sp
	ldrb r0, [r1]
	strb r0, [r7, #8]
	add r2, sp, #0x78
	ldrb r0, [r2]
	movs r3, #0x2e
	adds r3, r3, r7
	mov sb, r3
	cmp r0, #0
	bne _0802CC0C
	mov r4, sl
	adds r4, #0xe4
	ldrh r0, [r4]
	ldr r2, _0802CE2C
	adds r1, r7, #0
	adds r1, #0xaa
	ldrb r1, [r1]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r2, [r1]
	movs r1, #0
	movs r3, #0
	bl sub_8003884
	ldrh r0, [r4]
	bl sub_800387C
	movs r6, #0
	mov r0, sl
	adds r0, #0xe6
	strb r6, [r0]
	mov r0, sb
	strb r6, [r0]
	ldr r1, _0802CE30
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	ldrh r0, [r4]
	bl sub_8003864
_0802CC0C:
	cmp r6, #0
	bne _0802CC12
	b _0802CDD6
_0802CC12:
	ldr r0, [sp]
	mov r1, r8
	str r0, [r1]
	ldr r0, [sp, #4]
	str r0, [r1, #4]
	ldr r0, [sp, #8]
	str r0, [r1, #8]
	ldr r0, [sp, #0xc]
	ldr r2, [sp, #0xe8]
	str r0, [r2]
	ldr r0, [sp, #0x10]
	str r0, [r2, #4]
	ldr r0, [sp, #0x14]
	str r0, [r2, #8]
	add r3, sp, #0x78
	ldrb r0, [r3]
	cmp r0, #0
	beq _0802CC3E
	ldr r0, [r1, #4]
	ldr r1, [sp, #0x80]
	subs r0, r0, r1
	asrs r0, r0, #0x10
_0802CC3E:
	strb r0, [r7, #9]
	mov r1, r8
	movs r2, #2
	ldrsh r0, [r1, r2]
	strh r0, [r7, #2]
	ldr r0, _0802CE34
	ldrb r1, [r7, #9]
	ldrh r2, [r0]
	adds r2, r2, r1
	mov r3, r8
	ldr r0, [r3, #8]
	ldr r1, [r3, #4]
	adds r0, r0, r1
	asrs r0, r0, #0x10
	subs r2, r2, r0
	strh r2, [r7, #4]
	movs r1, #6
	ldrsh r0, [r3, r1]
	ldrb r1, [r7, #9]
	subs r0, r0, r1
	strh r0, [r7, #6]
	ldr r4, [r7, #0x4c]
	asrs r4, r4, #1
	ldr r3, [sp, #0xf0]
	ldr r2, [r3]
	subs r2, r2, r4
	ldrh r1, [r7]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	ldr r1, _0802CE38
	adds r0, r0, r1
	movs r3, #0
	ldrsh r0, [r0, r3]
	lsls r0, r0, #0x10
	adds r2, r2, r0
	str r2, [r7, #0x64]
	adds r5, r7, #0
	adds r5, #0x98
	ldrh r1, [r7]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	ldr r1, _0802CE38
	adds r0, r0, r1
	movs r2, #2
	ldrsh r1, [r0, r2]
	lsls r1, r1, #0x10
	ldr r0, [r5]
	adds r0, r0, r1
	str r0, [r7, #0x68]
	adds r6, r7, #0
	adds r6, #0x9c
	ldr r3, [r7, #0x54]
	asrs r3, r3, #1
	ldr r2, [r6]
	subs r2, r2, r3
	ldrh r1, [r7]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	ldr r1, _0802CE38
	adds r0, r0, r1
	movs r1, #4
	ldrsh r0, [r0, r1]
	lsls r0, r0, #0x10
	adds r2, r2, r0
	str r2, [r7, #0x6c]
	ldr r0, [sp, #0xf0]
	ldr r2, [r0]
	adds r2, r2, r4
	ldrh r1, [r7]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	ldr r1, _0802CE38
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	lsls r0, r0, #0x10
	adds r2, r2, r0
	str r2, [r7, #0x70]
	ldr r2, [r5]
	ldr r0, [r7, #0x50]
	adds r2, r2, r0
	ldrh r1, [r7]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	ldr r1, _0802CE38
	adds r0, r0, r1
	movs r1, #2
	ldrsh r0, [r0, r1]
	lsls r0, r0, #0x10
	adds r2, r2, r0
	str r2, [r7, #0x74]
	ldr r2, [r6]
	adds r2, r2, r3
	ldrh r1, [r7]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	ldr r3, _0802CE38
	adds r0, r0, r3
	movs r1, #4
	ldrsh r0, [r0, r1]
	lsls r0, r0, #0x10
	adds r2, r2, r0
	str r2, [r7, #0x78]
	ldr r0, [r7, #0x58]
	asrs r0, r0, #1
	ldr r3, [sp, #0xf0]
	ldr r2, [r3]
	subs r2, r2, r0
	ldrh r1, [r7]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	ldr r1, _0802CE38
	adds r0, r0, r1
	movs r3, #6
	ldrsh r0, [r0, r3]
	lsls r0, r0, #0x10
	adds r2, r2, r0
	str r2, [r7, #0x7c]
	adds r2, r7, #0
	adds r2, #0x80
	ldrh r1, [r7]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	ldr r1, _0802CE38
	adds r0, r0, r1
	movs r3, #8
	ldrsh r1, [r0, r3]
	lsls r1, r1, #0x10
	ldr r0, [r5]
	adds r0, r0, r1
	str r0, [r2]
	adds r3, r7, #0
	adds r3, #0x84
	ldr r0, [r7, #0x60]
	asrs r0, r0, #1
	ldr r2, [r6]
	subs r2, r2, r0
	ldrh r1, [r7]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	ldr r1, _0802CE38
	adds r0, r0, r1
	movs r1, #0xa
	ldrsh r0, [r0, r1]
	lsls r0, r0, #0x10
	adds r2, r2, r0
	str r2, [r3]
	adds r3, #4
	ldr r0, [r7, #0x58]
	asrs r0, r0, #1
	ldr r1, [sp, #0xf0]
	ldr r2, [r1]
	adds r2, r2, r0
	ldrh r1, [r7]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	ldr r1, _0802CE38
	adds r0, r0, r1
	movs r1, #6
	ldrsh r0, [r0, r1]
	lsls r0, r0, #0x10
	adds r2, r2, r0
	str r2, [r3]
	adds r3, #4
	ldr r2, [r5]
	ldr r0, [r7, #0x5c]
	adds r2, r2, r0
	ldrh r1, [r7]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	ldr r1, _0802CE38
	adds r0, r0, r1
	movs r1, #8
	ldrsh r0, [r0, r1]
	lsls r0, r0, #0x10
	adds r2, r2, r0
	str r2, [r3]
	adds r3, #4
	ldr r0, [r7, #0x60]
	asrs r0, r0, #1
	ldr r2, [r6]
	adds r2, r2, r0
	ldrh r1, [r7]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	ldr r1, _0802CE38
	adds r0, r0, r1
	movs r1, #0xa
	ldrsh r0, [r0, r1]
	lsls r0, r0, #0x10
	adds r2, r2, r0
	str r2, [r3]
_0802CDD6:
	mov r2, sb
	ldrb r0, [r2]
	cmp r0, #0
	bne _0802CDE0
	b _0802CF84
_0802CDE0:
	ldrh r1, [r7, #2]
	ldr r0, _0802CE3C
	movs r3, #0
	ldrsh r0, [r0, r3]
	subs r6, r1, r0
	ldrh r1, [r7, #4]
	ldr r0, _0802CE40
	movs r2, #0
	ldrsh r0, [r0, r2]
	subs r5, r1, r0
	adds r0, r7, #0
	adds r0, #0xc2
	movs r3, #0
	mov r8, r3
	strh r6, [r0]
	adds r0, #2
	strb r5, [r0]
	adds r4, r7, #0
	adds r4, #0x94
	ldrb r1, [r7, #9]
	rsbs r1, r1, #0
	ldr r0, _0802CE34
	ldrh r2, [r0]
	adds r0, r4, #0
	bl sub_8003A7C
	str r4, [sp, #0xf0]
	cmp r0, #0
	beq _0802CE22
	ldr r1, [sp, #0xec]
	ldrb r0, [r1]
	cmp r0, #0
	beq _0802CE44
_0802CE22:
	adds r1, r7, #0
	adds r1, #0xcf
	movs r0, #1
	strb r0, [r1]
	b _0802CE4C
	.align 2, 0
_0802CE2C: .4byte dword_80CC290
_0802CE30: .4byte 0x0203DFD3
_0802CE34: .4byte gMapPixelSizeY
_0802CE38: .4byte 0x080CCFFC
_0802CE3C: .4byte gCameraPixelX
_0802CE40: .4byte gCameraPixelY
_0802CE44:
	adds r0, r7, #0
	adds r0, #0xcf
	mov r2, r8
	strb r2, [r0]
_0802CE4C:
	ldrb r0, [r7, #9]
	subs r5, r5, r0
	adds r0, r7, #0
	adds r0, #0xa6
	movs r4, #0
	strh r6, [r0]
	adds r0, #2
	strb r5, [r0]
	add r1, sp, #0x18
	ldr r0, [r7, #0x4c]
	asrs r0, r0, #1
	str r0, [sp, #0x18]
	ldr r0, [r7, #0x50]
	str r0, [r1, #4]
	ldr r0, [r7, #0x54]
	asrs r0, r0, #1
	str r0, [r1, #8]
	ldr r0, _0802CE88
	ldrh r3, [r0]
	ldr r0, [sp, #0xf0]
	movs r2, #0
	bl sub_8003A74
	cmp r0, #0
	bne _0802CE8C
	adds r1, r7, #0
	adds r1, #0xb3
	movs r0, #1
	strb r0, [r1]
	b _0802CE92
	.align 2, 0
_0802CE88: .4byte gMapPixelSizeY
_0802CE8C:
	adds r0, r7, #0
	adds r0, #0xb3
	strb r4, [r0]
_0802CE92:
	adds r4, r7, #0
	adds r4, #0xa0
	ldr r3, [sp, #0xd8]
	ldr r1, [r3]
	adds r0, r4, #0
	bl sub_80033DC
	ldrb r1, [r7, #8]
	adds r0, r4, #0
	bl SetSpritePriority
	adds r0, r7, #0
	adds r0, #0x38
	ldrb r1, [r0]
	adds r5, r0, #0
	cmp r1, #0
	bne _0802CECC
	ldr r0, [sp, #0xd8]
	ldr r2, [r0]
	adds r0, r7, #0
	adds r0, #0xa4
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	subs r0, #8
	ldr r0, [r0]
	lsrs r0, r0, #4
	orrs r1, r0
	str r1, [r2]
	b _0802CEDE
_0802CECC:
	ldr r1, [sp, #0xd8]
	ldr r2, [r1]
	adds r0, r7, #0
	adds r0, #0xa4
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	ldr r1, _0802CF08
	orrs r0, r1
	str r0, [r2]
_0802CEDE:
	ldr r2, [sp, #0xd8]
	ldr r0, [r2]
	adds r0, #0xc
	str r0, [r2]
	ldr r3, [sp, #0xdc]
	ldr r0, [r3]
	adds r0, #1
	str r0, [r3]
	adds r2, r7, #0
	adds r2, #0xbc
	ldrb r1, [r7, #9]
	ldr r0, _0802CF0C
	ldr r0, [r0]
	adds r4, r2, #0
	cmp r1, r0
	bge _0802CF14
	ldr r0, _0802CF10
	adds r0, r1, r0
	ldrb r1, [r0]
	b _0802CF16
	.align 2, 0
_0802CF08: .4byte 0x2FFFF000
_0802CF0C: .4byte 0x080CEBC4
_0802CF10: .4byte 0x080CEB84
_0802CF14:
	movs r1, #5
_0802CF16:
	adds r0, r2, #0
	bl sub_80037F4
	ldr r0, [sp, #0xd8]
	ldr r1, [r0]
	adds r0, r4, #0
	bl sub_80033DC
	adds r1, r7, #0
	adds r1, #0xcc
	movs r0, #1
	strb r0, [r1]
	ldrb r1, [r7, #8]
	adds r0, r4, #0
	bl SetSpritePriority
	ldrb r0, [r5]
	cmp r0, #0
	bne _0802CF5C
	ldr r1, [sp, #0xd8]
	ldr r3, [r1]
	adds r0, r7, #0
	adds r0, #0xc0
	ldrb r2, [r0]
	lsls r2, r2, #0x1e
	subs r0, #0x24
	ldr r0, [r0]
	lsrs r0, r0, #4
	movs r1, #0x80
	lsls r1, r1, #0x15
	orrs r0, r1
	orrs r2, r0
	str r2, [r3]
	adds r2, r3, #0
	b _0802CF6E
_0802CF5C:
	ldr r3, [sp, #0xd8]
	ldr r2, [r3]
	adds r0, r7, #0
	adds r0, #0xc0
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	ldr r1, _0802CFB0
	orrs r0, r1
	str r0, [r2]
_0802CF6E:
	adds r0, r2, #0
	adds r0, #0xc
	ldr r1, [sp, #0xd8]
	str r0, [r1]
	ldr r2, [sp, #0xdc]
	ldr r0, [r2]
	adds r0, #1
	str r0, [r2]
	ldr r3, [sp, #0xe4]
	adds r3, #1
	str r3, [sp, #0xe4]
_0802CF84:
	ldr r0, _0802CFB4
	ldr r1, [sp, #0xe4]
	ldrb r0, [r0]
	cmp r1, r0
	beq _0802CF9E
	ldr r2, [sp, #0xe0]
	adds r2, #1
	str r2, [sp, #0xe0]
	ldr r0, _0802CFB8
	ldrb r0, [r0]
	cmp r2, r0
	bge _0802CF9E
	b _0802CA24
_0802CF9E:
	add sp, #0xf4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802CFB0: .4byte 0x3FFFF000
_0802CFB4: .4byte 0x0203DFD3
_0802CFB8: .4byte 0x0203E00C

    .thumb
    .global sub_802CFBC
sub_802CFBC: @ 0x0802CFBC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	mov sb, r0
	str r1, [sp]
	ldr r0, _0802CFD8
	ldrb r0, [r0]
	cmp r0, #0
	bne _0802CFDC
	movs r0, #0
	b _0802D080
	.align 2, 0
_0802CFD8: .4byte 0x0203DFD3
_0802CFDC:
	movs r0, #0
	mov sl, r0
	ldr r1, _0802D090
	str r1, [sp, #4]
	movs r2, #0
	str r2, [sp, #8]
	mov r8, r2
	ldr r0, _0802D094
	ldrb r0, [r0]
	cmp r2, r0
	bge _0802D07E
_0802CFF2:
	ldr r2, _0802D098
	movs r0, #0xe8
	mov r1, r8
	muls r1, r0, r1
	ldr r0, [r2]
	adds r1, r0, r1
	adds r7, r1, #0
	adds r7, #0x94
	adds r0, r1, #0
	adds r0, #0x2e
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802D06A
	movs r0, #1
	add sl, r0
	adds r0, r1, #0
	adds r0, #0x45
	ldrb r0, [r0]
	cmp r0, #1
	bne _0802D06A
	ldrh r0, [r1]
	subs r0, #9
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bhi _0802D06A
	ldr r1, [r7, #4]
	mov r2, sb
	ldr r0, [r2, #4]
	cmp r1, r0
	bne _0802D06A
	ldr r1, [r2]
	ldr r0, [r7]
	subs r1, r1, r0
	ldr r4, [r2, #8]
	ldr r0, [r7, #8]
	subs r4, r4, r0
	adds r0, r1, #0
	bl CallARM_FX_Mul
	adds r5, r0, #0
	movs r0, #0
	movs r1, #0
	bl CallARM_FX_Mul
	adds r6, r0, #0
	adds r0, r4, #0
	adds r1, r4, #0
	bl CallARM_FX_Mul
	adds r5, r5, r6
	adds r5, r5, r0
	ldr r0, [sp, #4]
	cmp r5, r0
	bge _0802D06A
	str r5, [sp, #4]
	ldr r1, [sp]
	str r7, [r1]
	movs r2, #1
	str r2, [sp, #8]
_0802D06A:
	ldr r0, _0802D09C
	ldrb r0, [r0]
	cmp sl, r0
	beq _0802D07E
	movs r0, #1
	add r8, r0
	ldr r0, _0802D094
	ldrb r0, [r0]
	cmp r8, r0
	blt _0802CFF2
_0802D07E:
	ldr r0, [sp, #8]
_0802D080:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0802D090: .4byte 0x7FFF0000
_0802D094: .4byte 0x0203E00C
_0802D098: .4byte 0x0203E000
_0802D09C: .4byte 0x0203DFD3

	.thumb
    .global sub_0802D0A0
sub_0802D0A0: @ 0x0802D0A0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x24
	mov sb, r0
	adds r5, r1, #0
	str r2, [sp, #0x1c]
	ldr r0, _0802D0C8
	ldr r1, _0802D0CC
	ldrb r6, [r0]
	adds r3, r0, #0
	adds r4, r1, #0
	ldrb r0, [r4]
	cmp r6, r0
	bne _0802D0D0
	.2byte 0xEE00, 0xEE00
	b _0802D872
	.align 2, 0
_0802D0C8: .4byte 0x0203DFD4
_0802D0CC: .4byte 0x0203DFD5
_0802D0D0:
	movs r7, #0
	movs r2, #0
	ldrb r1, [r4]
	cmp r7, r1
	bge _0802D118
	ldr r1, _0802D0F0
	ldr r7, [r1]
	adds r0, r7, #0
	adds r0, #0x2e
	ldrb r0, [r0]
	mov r8, r1
	cmp r0, #0
	bne _0802D0F4
	adds r0, r6, #1
	b _0802D116
	.align 2, 0
_0802D0F0: .4byte 0x0203E004
_0802D0F4:
	adds r2, #1
	ldrb r6, [r4]
	cmp r2, r6
	bge _0802D118
	lsls r0, r2, #5
	adds r0, r0, r2
	lsls r0, r0, #3
	mov r6, r8
	ldr r1, [r6]
	adds r7, r1, r0
	adds r0, r7, #0
	adds r0, #0x2e
	ldrb r0, [r0]
	cmp r0, #0
	bne _0802D0F4
	ldrb r0, [r3]
	adds r0, #1
_0802D116:
	strb r0, [r3]
_0802D118:
	ldrb r4, [r4]
	cmp r2, r4
	bne _0802D124
	.2byte 0xEE00, 0xEE00
	b _0802D872
_0802D124:
	ldr r0, _0802D150
	lsls r1, r2, #5
	adds r1, r1, r2
	lsls r1, r1, #3
	ldr r0, [r0]
	adds r6, r0, r1
	movs r0, #0x94
	adds r0, r0, r6
	mov ip, r0
	movs r1, #0xd8
	adds r1, r1, r6
	mov r8, r1
	mov r2, sb
	cmp r2, #6
	bls _0802D144
	b _0802D6A8
_0802D144:
	lsls r0, r2, #2
	ldr r1, _0802D154
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0802D150: .4byte 0x0203E004
_0802D154: .4byte 0x0802D158
_0802D158: @ jump table
	.4byte _0802D174 @ case 0
	.4byte _0802D24C @ case 1
	.4byte _0802D408 @ case 2
	.4byte _0802D328 @ case 3
	.4byte _0802D6A8 @ case 4
	.4byte _0802D4E4 @ case 5
	.4byte _0802D5C4 @ case 6
_0802D174:
	movs r0, #0x1b
	strh r0, [r7]
	ldr r0, _0802D230
	ldrh r1, [r0, #0xc]
	adds r0, r6, #0
	adds r0, #0xfc
	strh r1, [r0]
	ldr r0, _0802D234
	ldrb r1, [r0, #6]
	movs r4, #0x82
	lsls r4, r4, #1
	adds r0, r6, r4
	strb r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #1
	adds r1, r6, r0
	movs r0, #0x3c
	strh r0, [r1]
	ldr r1, _0802D238
	ldr r3, _0802D23C
	ldrb r0, [r3, #0xa]
	lsls r0, r0, #2
	adds r1, #0xc0
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r7, #9]
	ldr r1, _0802D240
	ldrb r0, [r3, #0xa]
	lsls r0, r0, #2
	adds r1, #0xc0
	adds r0, r0, r1
	ldr r0, [r0]
	lsls r0, r0, #0x10
	ldr r2, [r5]
	adds r2, r2, r0
	str r2, [sp, #0x10]
	ldrb r1, [r7, #9]
	lsls r1, r1, #0x10
	ldr r0, [r5, #4]
	adds r0, r0, r1
	str r0, [sp, #0x14]
	ldr r1, _0802D244
	ldrb r0, [r3, #0xa]
	lsls r0, r0, #2
	adds r1, #0xc0
	adds r0, r0, r1
	ldr r1, [r0]
	lsls r1, r1, #0x10
	ldr r0, [r5, #8]
	adds r0, r0, r1
	str r0, [sp, #0x18]
	adds r0, r6, #0
	adds r0, #0xe4
	ldr r1, _0802D248
	adds r2, r2, r1
	str r2, [r0]
	adds r2, r6, #0
	adds r2, #0xe8
	ldr r0, [sp, #0x14]
	adds r0, r0, r1
	str r0, [r2]
	adds r2, #4
	ldr r0, [sp, #0x18]
	adds r0, r0, r1
	str r0, [r2]
	adds r2, #4
	ldr r0, [sp, #0x10]
	movs r1, #0xc0
	lsls r1, r1, #0xa
	adds r0, r0, r1
	str r0, [r2]
	adds r2, #4
	ldr r0, [sp, #0x14]
	adds r0, r0, r1
	str r0, [r2]
	adds r2, #4
	ldr r0, [sp, #0x18]
	adds r0, r0, r1
	str r0, [r2]
	ldr r0, [r5]
	mov r1, ip
	str r0, [r1]
	ldrb r1, [r7, #9]
	lsls r1, r1, #0x10
	ldr r0, [r5, #4]
	adds r0, r0, r1
	mov r2, ip
	str r0, [r2, #4]
	ldr r0, [r5, #8]
	str r0, [r2, #8]
	subs r4, #2
	adds r1, r6, r4
	movs r0, #0x19
	b _0802D306
	.align 2, 0
_0802D230: .4byte 0x080CB964
_0802D234: .4byte 0x080CB94C
_0802D238: .4byte 0x080CBCD0
_0802D23C: .4byte gPlayerSprite
_0802D240: .4byte 0x080CB9F0
_0802D244: .4byte 0x080CBFB0
_0802D248: .4byte 0xFFFD0000
_0802D24C:
	movs r0, #0x1c
	strh r0, [r7]
	ldr r0, _0802D30C
	ldrh r1, [r0, #0xe]
	adds r0, r6, #0
	adds r0, #0xfc
	strh r1, [r0]
	ldr r0, _0802D310
	ldrb r1, [r0, #7]
	movs r2, #0x82
	lsls r2, r2, #1
	adds r0, r6, r2
	strb r1, [r0]
	movs r4, #0x80
	lsls r4, r4, #1
	adds r1, r6, r4
	movs r0, #0x3c
	strh r0, [r1]
	ldr r1, _0802D314
	ldr r3, _0802D318
	ldrb r0, [r3, #0xa]
	lsls r0, r0, #2
	adds r1, #0xe0
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r7, #9]
	ldr r1, _0802D31C
	ldrb r0, [r3, #0xa]
	lsls r0, r0, #2
	adds r1, #0xe0
	adds r0, r0, r1
	ldr r0, [r0]
	lsls r0, r0, #0x10
	ldr r2, [r5]
	adds r2, r2, r0
	str r2, [sp, #0x10]
	ldrb r1, [r7, #9]
	lsls r1, r1, #0x10
	ldr r0, [r5, #4]
	adds r0, r0, r1
	str r0, [sp, #0x14]
	ldr r1, _0802D320
	ldrb r0, [r3, #0xa]
	lsls r0, r0, #2
	adds r1, #0xe0
	adds r0, r0, r1
	ldr r1, [r0]
	lsls r1, r1, #0x10
	ldr r0, [r5, #8]
	adds r0, r0, r1
	str r0, [sp, #0x18]
	adds r0, r6, #0
	adds r0, #0xe4
	ldr r1, _0802D324
	adds r2, r2, r1
	str r2, [r0]
	adds r2, r6, #0
	adds r2, #0xe8
	ldr r0, [sp, #0x14]
	adds r0, r0, r1
	str r0, [r2]
	adds r2, #4
	ldr r0, [sp, #0x18]
	adds r0, r0, r1
	str r0, [r2]
	adds r2, #4
	ldr r0, [sp, #0x10]
	movs r1, #0xc0
	lsls r1, r1, #0xa
	adds r0, r0, r1
	str r0, [r2]
	adds r2, #4
	ldr r0, [sp, #0x14]
	adds r0, r0, r1
	str r0, [r2]
	adds r2, #4
	ldr r0, [sp, #0x18]
	adds r0, r0, r1
	str r0, [r2]
	ldr r0, [r5]
	mov r1, ip
	str r0, [r1]
	ldrb r1, [r7, #9]
	lsls r1, r1, #0x10
	ldr r0, [r5, #4]
	adds r0, r0, r1
	mov r2, ip
	str r0, [r2, #4]
	ldr r0, [r5, #8]
	str r0, [r2, #8]
	adds r4, #2
	adds r1, r6, r4
	movs r0, #0x1a
_0802D306:
	strh r0, [r1]
	mov sb, r3
	b _0802D6B0
	.align 2, 0
_0802D30C: .4byte 0x080CB964
_0802D310: .4byte 0x080CB94C
_0802D314: .4byte 0x080CBCD0
_0802D318: .4byte gPlayerSprite
_0802D31C: .4byte 0x080CB9F0
_0802D320: .4byte 0x080CBFB0
_0802D324: .4byte 0xFFFD0000
_0802D328:
	movs r0, #0x1d
	strh r0, [r7]
	ldr r0, _0802D3EC
	ldrh r1, [r0, #0x12]
	adds r0, r6, #0
	adds r0, #0xfc
	strh r1, [r0]
	ldr r0, _0802D3F0
	ldrb r1, [r0, #9]
	movs r2, #0x82
	lsls r2, r2, #1
	adds r0, r6, r2
	strb r1, [r0]
	movs r4, #0x80
	lsls r4, r4, #1
	adds r1, r6, r4
	movs r0, #0x3c
	strh r0, [r1]
	ldr r1, _0802D3F4
	ldr r4, _0802D3F8
	ldrb r0, [r4, #0xa]
	lsls r0, r0, #2
	movs r3, #0x90
	lsls r3, r3, #1
	adds r1, r1, r3
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r7, #9]
	ldr r1, _0802D3FC
	ldrb r0, [r4, #0xa]
	lsls r0, r0, #2
	adds r1, r1, r3
	adds r0, r0, r1
	ldr r0, [r0]
	lsls r0, r0, #0x10
	ldr r2, [r5]
	adds r2, r2, r0
	str r2, [sp, #0x10]
	ldrb r1, [r7, #9]
	lsls r1, r1, #0x10
	ldr r0, [r5, #4]
	adds r0, r0, r1
	str r0, [sp, #0x14]
	ldr r1, _0802D400
	ldrb r0, [r4, #0xa]
	lsls r0, r0, #2
	adds r1, r1, r3
	adds r0, r0, r1
	ldr r1, [r0]
	lsls r1, r1, #0x10
	ldr r0, [r5, #8]
	adds r0, r0, r1
	str r0, [sp, #0x18]
	adds r0, r6, #0
	adds r0, #0xe4
	ldr r1, _0802D404
	adds r2, r2, r1
	str r2, [r0]
	adds r2, r6, #0
	adds r2, #0xe8
	ldr r0, [sp, #0x14]
	adds r0, r0, r1
	str r0, [r2]
	adds r2, #4
	ldr r0, [sp, #0x18]
	adds r0, r0, r1
	str r0, [r2]
	adds r2, #4
	ldr r0, [sp, #0x10]
	movs r1, #0xc0
	lsls r1, r1, #0xa
	adds r0, r0, r1
	str r0, [r2]
	adds r2, #4
	ldr r0, [sp, #0x14]
	adds r0, r0, r1
	str r0, [r2]
	adds r2, #4
	ldr r0, [sp, #0x18]
	adds r0, r0, r1
	str r0, [r2]
	ldr r0, [r5]
	mov r1, ip
	str r0, [r1]
	ldrb r1, [r7, #9]
	lsls r1, r1, #0x10
	ldr r0, [r5, #4]
	adds r0, r0, r1
	mov r2, ip
	str r0, [r2, #4]
	ldr r0, [r5, #8]
	str r0, [r2, #8]
	movs r0, #0x81
	lsls r0, r0, #1
	adds r1, r6, r0
	movs r0, #0x1b
	b _0802D684
	.align 2, 0
_0802D3EC: .4byte 0x080CB964
_0802D3F0: .4byte 0x080CB94C
_0802D3F4: .4byte 0x080CBCD0
_0802D3F8: .4byte gPlayerSprite
_0802D3FC: .4byte 0x080CB9F0
_0802D400: .4byte 0x080CBFB0
_0802D404: .4byte 0xFFFD0000
_0802D408:
	movs r0, #0x1e
	strh r0, [r7]
	ldr r0, _0802D4C8
	ldrh r1, [r0, #0x10]
	adds r0, r6, #0
	adds r0, #0xfc
	strh r1, [r0]
	ldr r0, _0802D4CC
	ldrb r1, [r0, #8]
	movs r2, #0x82
	lsls r2, r2, #1
	adds r0, r6, r2
	strb r1, [r0]
	movs r3, #0x80
	lsls r3, r3, #1
	adds r1, r6, r3
	movs r0, #0x3c
	strh r0, [r1]
	ldr r1, _0802D4D0
	ldr r4, _0802D4D4
	ldrb r0, [r4, #0xa]
	lsls r0, r0, #2
	adds r1, r1, r3
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r7, #9]
	ldr r1, _0802D4D8
	ldrb r0, [r4, #0xa]
	lsls r0, r0, #2
	adds r1, r1, r3
	adds r0, r0, r1
	ldr r0, [r0]
	lsls r0, r0, #0x10
	ldr r2, [r5]
	adds r2, r2, r0
	str r2, [sp, #0x10]
	ldrb r1, [r7, #9]
	lsls r1, r1, #0x10
	ldr r0, [r5, #4]
	adds r0, r0, r1
	str r0, [sp, #0x14]
	ldr r1, _0802D4DC
	ldrb r0, [r4, #0xa]
	lsls r0, r0, #2
	adds r1, r1, r3
	adds r0, r0, r1
	ldr r1, [r0]
	lsls r1, r1, #0x10
	ldr r0, [r5, #8]
	adds r0, r0, r1
	str r0, [sp, #0x18]
	adds r0, r6, #0
	adds r0, #0xe4
	ldr r1, _0802D4E0
	adds r2, r2, r1
	str r2, [r0]
	adds r2, r6, #0
	adds r2, #0xe8
	ldr r0, [sp, #0x14]
	adds r0, r0, r1
	str r0, [r2]
	adds r2, #4
	ldr r0, [sp, #0x18]
	adds r0, r0, r1
	str r0, [r2]
	adds r2, #4
	ldr r0, [sp, #0x10]
	movs r1, #0xc0
	lsls r1, r1, #0xa
	adds r0, r0, r1
	str r0, [r2]
	adds r2, #4
	ldr r0, [sp, #0x14]
	adds r0, r0, r1
	str r0, [r2]
	adds r2, #4
	ldr r0, [sp, #0x18]
	adds r0, r0, r1
	str r0, [r2]
	ldr r0, [r5]
	mov r1, ip
	str r0, [r1]
	ldrb r1, [r7, #9]
	lsls r1, r1, #0x10
	ldr r0, [r5, #4]
	adds r0, r0, r1
	mov r2, ip
	str r0, [r2, #4]
	ldr r0, [r5, #8]
	str r0, [r2, #8]
	movs r0, #0x81
	lsls r0, r0, #1
	adds r1, r6, r0
	movs r0, #0x1c
	b _0802D684
	.align 2, 0
_0802D4C8: .4byte 0x080CB964
_0802D4CC: .4byte 0x080CB94C
_0802D4D0: .4byte 0x080CBCD0
_0802D4D4: .4byte gPlayerSprite
_0802D4D8: .4byte 0x080CB9F0
_0802D4DC: .4byte 0x080CBFB0
_0802D4E0: .4byte 0xFFFD0000
_0802D4E4:
	movs r0, #0x46
	strh r0, [r7]
	ldr r0, _0802D5A8
	ldrh r1, [r0, #0x1a]
	adds r0, r6, #0
	adds r0, #0xfc
	strh r1, [r0]
	ldr r0, _0802D5AC
	ldrb r1, [r0, #0xd]
	movs r2, #0x82
	lsls r2, r2, #1
	adds r0, r6, r2
	strb r1, [r0]
	movs r4, #0x80
	lsls r4, r4, #1
	adds r1, r6, r4
	movs r0, #0x3c
	strh r0, [r1]
	ldr r1, _0802D5B0
	ldr r4, _0802D5B4
	ldrb r0, [r4, #0xa]
	lsls r0, r0, #2
	movs r3, #0xd0
	lsls r3, r3, #1
	adds r1, r1, r3
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r7, #9]
	ldr r1, _0802D5B8
	ldrb r0, [r4, #0xa]
	lsls r0, r0, #2
	adds r1, r1, r3
	adds r0, r0, r1
	ldr r0, [r0]
	lsls r0, r0, #0x10
	ldr r2, [r5]
	adds r2, r2, r0
	str r2, [sp, #0x10]
	ldrb r1, [r7, #9]
	lsls r1, r1, #0x10
	ldr r0, [r5, #4]
	adds r0, r0, r1
	str r0, [sp, #0x14]
	ldr r1, _0802D5BC
	ldrb r0, [r4, #0xa]
	lsls r0, r0, #2
	adds r1, r1, r3
	adds r0, r0, r1
	ldr r1, [r0]
	lsls r1, r1, #0x10
	ldr r0, [r5, #8]
	adds r0, r0, r1
	str r0, [sp, #0x18]
	adds r0, r6, #0
	adds r0, #0xe4
	ldr r1, _0802D5C0
	adds r2, r2, r1
	str r2, [r0]
	adds r2, r6, #0
	adds r2, #0xe8
	ldr r0, [sp, #0x14]
	adds r0, r0, r1
	str r0, [r2]
	adds r2, #4
	ldr r0, [sp, #0x18]
	adds r0, r0, r1
	str r0, [r2]
	adds r2, #4
	ldr r0, [sp, #0x10]
	movs r1, #0xc0
	lsls r1, r1, #0xa
	adds r0, r0, r1
	str r0, [r2]
	adds r2, #4
	ldr r0, [sp, #0x14]
	adds r0, r0, r1
	str r0, [r2]
	adds r2, #4
	ldr r0, [sp, #0x18]
	adds r0, r0, r1
	str r0, [r2]
	ldr r0, [r5]
	mov r1, ip
	str r0, [r1]
	ldrb r1, [r7, #9]
	lsls r1, r1, #0x10
	ldr r0, [r5, #4]
	adds r0, r0, r1
	mov r2, ip
	str r0, [r2, #4]
	ldr r0, [r5, #8]
	str r0, [r2, #8]
	movs r0, #0x81
	lsls r0, r0, #1
	adds r1, r6, r0
	movs r0, #0xcb
	b _0802D684
	.align 2, 0
_0802D5A8: .4byte 0x080CB964
_0802D5AC: .4byte 0x080CB94C
_0802D5B0: .4byte 0x080CBCD0
_0802D5B4: .4byte gPlayerSprite
_0802D5B8: .4byte 0x080CB9F0
_0802D5BC: .4byte 0x080CBFB0
_0802D5C0: .4byte 0xFFFD0000
_0802D5C4:
	movs r0, #0x47
	strh r0, [r7]
	ldr r0, _0802D68C
	ldrh r1, [r0, #0x16]
	adds r0, r6, #0
	adds r0, #0xfc
	strh r1, [r0]
	ldr r0, _0802D690
	ldrb r1, [r0, #0xb]
	movs r2, #0x82
	lsls r2, r2, #1
	adds r0, r6, r2
	strb r1, [r0]
	movs r4, #0x80
	lsls r4, r4, #1
	adds r1, r6, r4
	movs r0, #0x3c
	strh r0, [r1]
	ldr r1, _0802D694
	ldr r4, _0802D698
	ldrb r0, [r4, #0xa]
	lsls r0, r0, #2
	movs r3, #0xb0
	lsls r3, r3, #1
	adds r1, r1, r3
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r7, #9]
	ldr r1, _0802D69C
	ldrb r0, [r4, #0xa]
	lsls r0, r0, #2
	adds r1, r1, r3
	adds r0, r0, r1
	ldr r0, [r0]
	lsls r0, r0, #0x10
	ldr r2, [r5]
	adds r2, r2, r0
	str r2, [sp, #0x10]
	ldrb r1, [r7, #9]
	lsls r1, r1, #0x10
	ldr r0, [r5, #4]
	adds r0, r0, r1
	str r0, [sp, #0x14]
	ldr r1, _0802D6A0
	ldrb r0, [r4, #0xa]
	lsls r0, r0, #2
	adds r1, r1, r3
	adds r0, r0, r1
	ldr r1, [r0]
	lsls r1, r1, #0x10
	ldr r0, [r5, #8]
	adds r0, r0, r1
	str r0, [sp, #0x18]
	adds r0, r6, #0
	adds r0, #0xe4
	ldr r1, _0802D6A4
	adds r2, r2, r1
	str r2, [r0]
	adds r2, r6, #0
	adds r2, #0xe8
	ldr r0, [sp, #0x14]
	adds r0, r0, r1
	str r0, [r2]
	adds r2, #4
	ldr r0, [sp, #0x18]
	adds r0, r0, r1
	str r0, [r2]
	adds r2, #4
	ldr r0, [sp, #0x10]
	movs r1, #0xc0
	lsls r1, r1, #0xa
	adds r0, r0, r1
	str r0, [r2]
	adds r2, #4
	ldr r0, [sp, #0x14]
	adds r0, r0, r1
	str r0, [r2]
	adds r2, #4
	ldr r0, [sp, #0x18]
	adds r0, r0, r1
	str r0, [r2]
	ldr r0, [r5]
	mov r1, ip
	str r0, [r1]
	ldrb r1, [r7, #9]
	lsls r1, r1, #0x10
	ldr r0, [r5, #4]
	adds r0, r0, r1
	mov r2, ip
	str r0, [r2, #4]
	ldr r0, [r5, #8]
	str r0, [r2, #8]
	movs r0, #0x81
	lsls r0, r0, #1
	adds r1, r6, r0
	movs r0, #0xb9
_0802D684:
	strh r0, [r1]
	mov sb, r4
	b _0802D6B0
	.align 2, 0
_0802D68C: .4byte 0x080CB964
_0802D690: .4byte 0x080CB94C
_0802D694: .4byte 0x080CBCD0
_0802D698: .4byte gPlayerSprite
_0802D69C: .4byte 0x080CB9F0
_0802D6A0: .4byte 0x080CBFB0
_0802D6A4: .4byte 0xFFFD0000
_0802D6A8:
	.2byte 0xEE00, 0xEE00
	ldr r1, _0802D814
	mov sb, r1
_0802D6B0:
	ldr r2, _0802D818
	mov r4, sb
	ldrb r1, [r4, #0xa]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	mov r1, r8
	str r0, [r1]
	ldrb r1, [r4, #0xa]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r1, r2, #4
	adds r0, r0, r1
	ldr r0, [r0]
	mov r4, r8
	str r0, [r4, #4]
	mov r0, sb
	ldrb r1, [r0, #0xa]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r2, #8
	adds r0, r0, r2
	ldr r0, [r0]
	str r0, [r4, #8]
	ldr r1, _0802D81C
	adds r0, r6, r1
	movs r3, #0
	strb r3, [r0]
	movs r2, #0x83
	lsls r2, r2, #1
	adds r2, r6, r2
	str r2, [sp, #0x20]
	movs r4, #1
	mov sl, r4
	mov r0, sl
	strb r0, [r2]
	mov r1, ip
	movs r2, #2
	ldrsh r0, [r1, r2]
	movs r4, #0
	mov r8, r4
	strh r0, [r7, #2]
	ldr r5, _0802D820
	ldrb r0, [r7, #9]
	ldrh r2, [r5]
	adds r2, r2, r0
	ldr r0, [r1, #8]
	ldr r1, [r1, #4]
	adds r0, r0, r1
	asrs r0, r0, #0x10
	subs r2, r2, r0
	strh r2, [r7, #4]
	mov r1, ip
	movs r2, #6
	ldrsh r0, [r1, r2]
	ldrb r1, [r7, #9]
	subs r0, r0, r1
	strh r0, [r7, #6]
	adds r0, r7, #0
	adds r0, #0x2e
	mov r4, sl
	strb r4, [r0]
	subs r0, #0xa
	mov r1, r8
	strb r1, [r0]
	adds r0, #0x18
	strb r1, [r0]
	strb r1, [r7, #0xb]
	strb r1, [r7, #0xa]
	subs r0, #0x14
	strb r1, [r0]
	mov r2, sp
	ldrb r2, [r2, #0x1c]
	strb r2, [r7, #8]
	adds r0, #0x1e
	strh r3, [r0]
	strh r3, [r7, #0x1e]
	strb r1, [r7, #0x18]
	strb r1, [r7, #0x14]
	strh r3, [r7, #0x20]
	strb r1, [r7, #0xc]
	ldr r0, _0802D824
	strh r0, [r7, #0x1c]
	adds r0, r7, #0
	adds r0, #0x45
	strb r4, [r0]
	strh r3, [r7, #0x2c]
	subs r0, #0x15
	strb r4, [r0]
	subs r0, #1
	strb r4, [r0]
	str r3, [r7, #0x4c]
	str r3, [r7, #0x50]
	str r3, [r7, #0x54]
	str r3, [r7, #0x64]
	str r3, [r7, #0x68]
	str r3, [r7, #0x6c]
	str r3, [r7, #0x70]
	str r3, [r7, #0x74]
	str r3, [r7, #0x78]
	str r3, [r7, #0x7c]
	adds r0, #0x51
	str r3, [r0]
	adds r0, #4
	str r3, [r0]
	adds r0, #4
	str r3, [r0]
	adds r0, #4
	str r3, [r0]
	adds r0, #4
	str r3, [r0]
	movs r0, #0x80
	lsls r0, r0, #8
	bl sub_8003854
	adds r4, r6, #0
	adds r4, #0xfe
	strh r0, [r4]
	ldrh r0, [r4]
	ldr r2, _0802D828
	ldr r1, _0802D82C
	ldrb r1, [r1, #0xe]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl sub_800389C
	ldrh r0, [r4]
	ldr r1, _0802D830
	ldr r1, [r1]
	bl sub_8003894
	ldrh r0, [r4]
	movs r1, #0x80
	lsls r1, r1, #0xb
	ldr r3, _0802D834
	mov r4, sb
	ldrb r2, [r4, #0xa]
	lsls r2, r2, #2
	adds r2, r2, r3
	ldr r2, [r2]
	movs r3, #0
	bl sub_8003884
	ldrh r1, [r7, #2]
	ldr r0, _0802D838
	movs r6, #0
	ldrsh r0, [r0, r6]
	subs r1, r1, r0
	mov sb, r1
	ldrh r1, [r7, #4]
	ldr r0, _0802D83C
	movs r2, #0
	ldrsh r0, [r0, r2]
	subs r1, r1, r0
	ldrb r0, [r7, #9]
	subs r6, r1, r0
	adds r0, r7, #0
	adds r0, #0x94
	ldrh r2, [r5]
	movs r1, #0
	bl sub_8003A7C
	cmp r0, #0
	beq _0802D80A
	ldr r4, [sp, #0x20]
	ldrb r0, [r4]
	cmp r0, #0
	beq _0802D840
_0802D80A:
	adds r0, r7, #0
	adds r0, #0xb3
	mov r1, sl
	strb r1, [r0]
	b _0802D848
	.align 2, 0
_0802D814: .4byte gPlayerSprite
_0802D818: .4byte 0x080CC78C
_0802D81C: .4byte 0x00000105
_0802D820: .4byte gMapPixelSizeY
_0802D824: .4byte 0x0000FFFF
_0802D828: .4byte 0x080CC844
_0802D82C: .4byte gRoomHeader
_0802D830: .4byte 0x080CC818
_0802D834: .4byte dword_80CC290
_0802D838: .4byte gCameraPixelX
_0802D83C: .4byte gCameraPixelY
_0802D840:
	adds r0, r7, #0
	adds r0, #0xb3
	mov r2, r8
	strb r2, [r0]
_0802D848:
	adds r4, r7, #0
	adds r4, #0xa0
	ldrh r1, [r7]
	ldr r0, _0802D884
	adds r1, r1, r0
	movs r0, #0
	str r0, [sp]
	mov r2, sb
	str r2, [sp, #4]
	str r6, [sp, #8]
	movs r0, #2
	str r0, [sp, #0xc]
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl SetSprite
	ldrb r1, [r7, #8]
	adds r0, r4, #0
	bl SetSpritePriority
_0802D872:
	add sp, #0x24
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802D884: .4byte 0x00000221


	.thumb
    .global sub_802D888
sub_802D888: @ 0x0802D888
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	mov ip, r0
	adds r4, r1, #0
	mov sb, r2
	mov sl, r3
	ldr r0, _0802D8B0
	ldr r1, _0802D8B4
	ldrb r7, [r0]
	adds r3, r0, #0
	adds r5, r1, #0
	ldrb r0, [r5]
	cmp r7, r0
	bne _0802D8B8
	movs r0, #0
	b _0802DC1E
	.align 2, 0
_0802D8B0: .4byte 0x0203DFD4
_0802D8B4: .4byte 0x0203DFD5
_0802D8B8:
	movs r6, #0
	movs r2, #0
	ldr r1, _0802D8D8
	mov r8, r1
	ldrb r0, [r5]
	cmp r6, r0
	bge _0802D900
	ldr r6, [r1]
	adds r0, r6, #0
	adds r0, #0x2e
	ldrb r0, [r0]
	cmp r0, #0
	bne _0802D8DC
	adds r0, r7, #1
	b _0802D8FE
	.align 2, 0
_0802D8D8: .4byte 0x0203E004
_0802D8DC:
	adds r2, #1
	ldrb r1, [r5]
	cmp r2, r1
	bge _0802D900
	lsls r0, r2, #5
	adds r0, r0, r2
	lsls r0, r0, #3
	mov r6, r8
	ldr r1, [r6]
	adds r6, r1, r0
	adds r0, r6, #0
	adds r0, #0x2e
	ldrb r0, [r0]
	cmp r0, #0
	bne _0802D8DC
	ldrb r0, [r3]
	adds r0, #1
_0802D8FE:
	strb r0, [r3]
_0802D900:
	ldrb r5, [r5]
	cmp r2, r5
	bne _0802D90A
	.2byte 0xEE00, 0xEE00
_0802D90A:
	lsls r0, r2, #5
	adds r0, r0, r2
	lsls r0, r0, #3
	mov r2, r8
	ldr r1, [r2]
	adds r5, r1, r0
	adds r7, r5, #0
	adds r7, #0x94
	movs r0, #0xd8
	adds r0, r0, r5
	mov r8, r0
	mov r1, ip
	cmp r1, #8
	beq _0802D984
	cmp r1, #8
	bgt _0802D930
	cmp r1, #7
	beq _0802D93E
	b _0802DB0C
_0802D930:
	mov r2, ip
	cmp r2, #9
	beq _0802DA04
	cmp r2, #0xa
	bne _0802D93C
	b _0802DA84
_0802D93C:
	b _0802DB0C
_0802D93E:
	movs r0, #0x4d
	strh r0, [r6]
	ldr r0, _0802D980
	ldrh r1, [r0]
	adds r0, r5, #0
	adds r0, #0xfc
	strh r1, [r0]
	movs r0, #0x82
	lsls r0, r0, #1
	adds r1, r5, r0
	movs r0, #2
	strb r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r5, r2
	movs r0, #0x3c
	strh r0, [r1]
	ldr r0, [r4]
	str r0, [r7]
	movs r1, #0x19
	strb r1, [r6, #9]
	lsls r1, r1, #0x10
	ldr r0, [r4, #4]
	adds r0, r0, r1
	str r0, [r7, #4]
	ldr r0, [r4, #8]
	str r0, [r7, #8]
	movs r0, #0x81
	lsls r0, r0, #1
	adds r1, r5, r0
	movs r0, #0xbd
	strh r0, [r1]
	b _0802DAC0
	.align 2, 0
_0802D980: .4byte 0x080CB964
_0802D984:
	movs r0, #0x1a
	strh r0, [r6]
	ldr r0, _0802D9F4
	ldrh r1, [r0]
	adds r0, r5, #0
	adds r0, #0xfc
	strh r1, [r0]
	movs r2, #0x82
	lsls r2, r2, #1
	adds r1, r5, r2
	movs r0, #1
	strb r0, [r1]
	adds r0, #0xff
	adds r1, r5, r0
	movs r0, #0x3c
	strh r0, [r1]
	ldr r0, [r4]
	str r0, [r7]
	movs r2, #0x19
	strb r2, [r6, #9]
	lsls r1, r2, #0x10
	ldr r0, [r4, #4]
	adds r0, r0, r1
	str r0, [r7, #4]
	ldr r0, [r4, #8]
	str r0, [r7, #8]
	movs r1, #0x81
	lsls r1, r1, #1
	adds r0, r5, r1
	strh r2, [r0]
	movs r0, #0x80
	lsls r0, r0, #8
	bl sub_8003854
	adds r4, r5, #0
	adds r4, #0xfe
	strh r0, [r4]
	ldrh r0, [r4]
	ldr r2, _0802D9F8
	ldr r1, _0802D9FC
	ldrb r1, [r1, #0xe]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl sub_800389C
	ldrh r0, [r4]
	ldr r1, _0802DA00
	ldr r1, [r1]
	bl sub_8003894
	ldrh r0, [r4]
	movs r1, #0xc0
	lsls r1, r1, #0xa
	b _0802DAF0
	.align 2, 0
_0802D9F4: .4byte 0x080CB964
_0802D9F8: .4byte 0x080CC844
_0802D9FC: .4byte gRoomHeader
_0802DA00: .4byte 0x080CC818
_0802DA04:
	movs r0, #0x74
	strh r0, [r6]
	ldr r0, _0802DA74
	ldrh r1, [r0]
	adds r0, r5, #0
	adds r0, #0xfc
	strh r1, [r0]
	movs r2, #0x82
	lsls r2, r2, #1
	adds r1, r5, r2
	movs r0, #2
	strb r0, [r1]
	adds r0, #0xfe
	adds r1, r5, r0
	movs r0, #0x3c
	strh r0, [r1]
	ldr r0, [r4]
	str r0, [r7]
	movs r2, #0x19
	strb r2, [r6, #9]
	lsls r1, r2, #0x10
	ldr r0, [r4, #4]
	adds r0, r0, r1
	str r0, [r7, #4]
	ldr r0, [r4, #8]
	str r0, [r7, #8]
	movs r1, #0x81
	lsls r1, r1, #1
	adds r0, r5, r1
	strh r2, [r0]
	movs r0, #0x80
	lsls r0, r0, #8
	bl sub_8003854
	adds r4, r5, #0
	adds r4, #0xfe
	strh r0, [r4]
	ldrh r0, [r4]
	ldr r2, _0802DA78
	ldr r1, _0802DA7C
	ldrb r1, [r1, #0xe]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl sub_800389C
	ldrh r0, [r4]
	ldr r1, _0802DA80
	ldr r1, [r1]
	bl sub_8003894
	ldrh r0, [r4]
	movs r1, #0xc0
	lsls r1, r1, #0xa
	b _0802DAF0
	.align 2, 0
_0802DA74: .4byte 0x080CB964
_0802DA78: .4byte 0x080CC844
_0802DA7C: .4byte gRoomHeader
_0802DA80: .4byte 0x080CC818
_0802DA84:
	movs r0, #0x75
	strh r0, [r6]
	ldr r0, _0802DAFC
	ldrh r1, [r0]
	adds r0, r5, #0
	adds r0, #0xfc
	strh r1, [r0]
	movs r2, #0x82
	lsls r2, r2, #1
	adds r1, r5, r2
	movs r0, #1
	strb r0, [r1]
	adds r0, #0xff
	adds r1, r5, r0
	movs r0, #0x3c
	strh r0, [r1]
	ldr r0, [r4]
	str r0, [r7]
	movs r2, #0x19
	strb r2, [r6, #9]
	lsls r1, r2, #0x10
	ldr r0, [r4, #4]
	adds r0, r0, r1
	str r0, [r7, #4]
	ldr r0, [r4, #8]
	str r0, [r7, #8]
	movs r1, #0x81
	lsls r1, r1, #1
	adds r0, r5, r1
	strh r2, [r0]
_0802DAC0:
	movs r0, #0x80
	lsls r0, r0, #8
	bl sub_8003854
	adds r4, r5, #0
	adds r4, #0xfe
	strh r0, [r4]
	ldrh r0, [r4]
	ldr r2, _0802DB00
	ldr r1, _0802DB04
	ldrb r1, [r1, #0xe]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl sub_800389C
	ldrh r0, [r4]
	ldr r1, _0802DB08
	ldr r1, [r1]
	bl sub_8003894
	ldrh r0, [r4]
	movs r1, #0x80
	lsls r1, r1, #0xb
_0802DAF0:
	mov r2, sb
	movs r3, #0
	bl sub_8003884
	b _0802DB10
	.align 2, 0
_0802DAFC: .4byte 0x080CB964
_0802DB00: .4byte 0x080CC844
_0802DB04: .4byte gRoomHeader
_0802DB08: .4byte 0x080CC818
_0802DB0C:
	.2byte 0xEE00, 0xEE00
_0802DB10:
	mov r0, sb
	mov r1, r8
	bl sub_80039BC
	ldr r2, _0802DBD8
	adds r0, r5, r2
	movs r3, #0
	strb r3, [r0]
	movs r1, #0x83
	lsls r1, r1, #1
	adds r0, r5, r1
	strb r3, [r0]
	movs r2, #2
	ldrsh r0, [r7, r2]
	movs r5, #0
	strh r0, [r6, #2]
	ldr r4, _0802DBDC
	ldrb r0, [r6, #9]
	ldrh r2, [r4]
	adds r2, r2, r0
	ldr r0, [r7, #8]
	ldr r1, [r7, #4]
	adds r0, r0, r1
	asrs r0, r0, #0x10
	subs r2, r2, r0
	strh r2, [r6, #4]
	movs r1, #6
	ldrsh r0, [r7, r1]
	ldrb r1, [r6, #9]
	subs r0, r0, r1
	strh r0, [r6, #6]
	adds r0, r6, #0
	adds r0, #0x2e
	movs r2, #1
	mov r8, r2
	mov r1, r8
	strb r1, [r0]
	subs r0, #0xa
	strb r5, [r0]
	adds r0, #0x18
	strb r5, [r0]
	strb r5, [r6, #0xb]
	strb r5, [r6, #0xa]
	subs r0, #0x14
	strb r5, [r0]
	mov r2, sl
	strb r2, [r6, #8]
	adds r0, #0x1e
	strh r3, [r0]
	strh r3, [r6, #0x1e]
	strb r5, [r6, #0x18]
	strb r5, [r6, #0x14]
	strh r3, [r6, #0x20]
	strb r5, [r6, #0xc]
	ldr r0, _0802DBE0
	strh r0, [r6, #0x1c]
	adds r0, r6, #0
	adds r0, #0x45
	strb r5, [r0]
	strh r3, [r6, #0x2c]
	subs r0, #0x15
	strb r1, [r0]
	subs r0, #1
	strb r1, [r0]
	str r3, [r6, #0x4c]
	str r3, [r6, #0x50]
	str r3, [r6, #0x54]
	str r3, [r6, #0x64]
	str r3, [r6, #0x68]
	str r3, [r6, #0x6c]
	str r3, [r6, #0x70]
	str r3, [r6, #0x74]
	str r3, [r6, #0x78]
	ldrh r1, [r6, #2]
	ldr r0, _0802DBE4
	movs r2, #0
	ldrsh r0, [r0, r2]
	subs r1, r1, r0
	mov sb, r1
	ldrh r1, [r6, #4]
	ldr r0, _0802DBE8
	movs r2, #0
	ldrsh r0, [r0, r2]
	subs r1, r1, r0
	ldrb r0, [r6, #9]
	subs r7, r1, r0
	adds r0, r6, #0
	adds r0, #0x94
	ldrh r2, [r4]
	movs r1, #0
	bl sub_8003A7C
	cmp r0, #0
	bne _0802DBEC
	adds r0, r6, #0
	adds r0, #0xb3
	mov r1, r8
	strb r1, [r0]
	b _0802DBF2
	.align 2, 0
_0802DBD8: .4byte 0x00000105
_0802DBDC: .4byte gMapPixelSizeY
_0802DBE0: .4byte 0x0000FFFF
_0802DBE4: .4byte gCameraPixelX
_0802DBE8: .4byte gCameraPixelY
_0802DBEC:
	adds r0, r6, #0
	adds r0, #0xb3
	strb r5, [r0]
_0802DBF2:
	adds r4, r6, #0
	adds r4, #0xa0
	ldrh r1, [r6]
	ldr r2, _0802DC30
	adds r1, r1, r2
	movs r0, #0
	str r0, [sp]
	mov r0, sb
	str r0, [sp, #4]
	str r7, [sp, #8]
	movs r0, #2
	str r0, [sp, #0xc]
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl SetSprite
	ldrb r1, [r6, #8]
	adds r0, r4, #0
	bl SetSpritePriority
	movs r0, #1
_0802DC1E:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0802DC30: .4byte 0x00000221

	.thumb
sub_802DC34: @ 0x0802DC34
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _0802DCA8
	ldrb r1, [r0]
	mov r8, r0
	cmp r1, #0
	beq _0802DC9C
	movs r5, #0
	movs r3, #0
	ldr r0, _0802DCAC
	adds r6, r0, #0
	ldrb r0, [r6]
	cmp r3, r0
	bge _0802DC9C
	ldr r1, _0802DCB0
	mov ip, r1
	ldr r7, _0802DCB4
	movs r4, #0
_0802DC5A:
	mov r1, ip
	ldr r0, [r1]
	adds r2, r0, r4
	adds r0, r2, #0
	adds r0, #0x2e
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802DC8E
	ldrh r0, [r2]
	lsls r0, r0, #2
	adds r0, r0, r7
	ldr r0, [r0]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0802DC8E
	movs r0, #0x82
	lsls r0, r0, #1
	adds r1, r2, r0
	movs r0, #0
	strb r0, [r1]
	adds r5, #1
	mov r1, r8
	ldrb r1, [r1]
	cmp r5, r1
	beq _0802DC9C
_0802DC8E:
	movs r0, #0x84
	lsls r0, r0, #1
	adds r4, r4, r0
	adds r3, #1
	ldrb r1, [r6]
	cmp r3, r1
	blt _0802DC5A
_0802DC9C:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802DCA8: .4byte 0x0203DFD4
_0802DCAC: .4byte 0x0203DFD5
_0802DCB0: .4byte 0x0203E004
_0802DCB4: .4byte 0x080CC2B0




    .thumb
sub_802DCB8: @ 0x0802DCB8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r1, _0802DD1C
	ldrb r0, [r1]
	cmp r0, #0
	beq _0802DD44
	movs r4, #0
	movs r6, #0
	ldr r0, _0802DD20
	ldrb r0, [r0]
	cmp r6, r0
	bge _0802DD44
	ldr r0, _0802DD24
	mov r8, r0
	adds r7, r1, #0
	movs r5, #0
_0802DCDA:
	mov r1, r8
	ldr r0, [r1]
	adds r1, r0, r5
	adds r3, r1, #0
	adds r3, #0x2e
	ldrb r0, [r3]
	cmp r0, #0
	beq _0802DD34
	adds r0, r1, #0
	adds r0, #0x3c
	ldrb r0, [r0]
	cmp r0, #0
	bne _0802DD2C
	movs r0, #0x80
	lsls r0, r0, #1
	adds r2, r1, r0
	ldrh r0, [r2]
	adds r1, r0, #0
	cmp r1, #0
	bne _0802DD28
	strb r1, [r3]
	mov r1, r8
	ldr r0, [r1]
	adds r0, r5, r0
	adds r0, #0xfe
	ldrh r0, [r0]
	bl sub_8003864
	ldrb r0, [r7]
	subs r0, #1
	strb r0, [r7]
	b _0802DD2E
	.align 2, 0
_0802DD1C: .4byte 0x0203DFD4
_0802DD20: .4byte 0x0203DFD5
_0802DD24: .4byte 0x0203E004
_0802DD28:
	subs r0, #1
	strh r0, [r2]
_0802DD2C:
	adds r4, #1
_0802DD2E:
	ldrb r0, [r7]
	cmp r4, r0
	beq _0802DD44
_0802DD34:
	movs r1, #0x84
	lsls r1, r1, #1
	adds r5, r5, r1
	adds r6, #1
	ldr r0, _0802DD50
	ldrb r0, [r0]
	cmp r6, r0
	blt _0802DCDA
_0802DD44:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802DD50: .4byte 0x0203DFD5

    .thumb
sub_802DD54: @ 0x0802DD54
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc8
	str r0, [sp, #0xb4]
	str r1, [sp, #0xb8]
	ldr r0, _0802DDDC
	ldrb r0, [r0]
	cmp r0, #0
	bne _0802DD6E
	b _0802E00C
_0802DD6E:
	movs r0, #0
	str r0, [sp, #0xc0]
	movs r1, #0
	str r1, [sp, #0xbc]
	ldr r0, _0802DDE0
	ldrb r0, [r0]
	cmp r1, r0
	blt _0802DD80
	b _0802E00C
_0802DD80:
	movs r2, #0
	str r2, [sp, #0xc4]
_0802DD84:
	ldr r3, _0802DDE4
	ldr r0, [r3]
	ldr r1, [sp, #0xc4]
	adds r6, r0, r1
	mov sl, r6
	adds r5, r6, #0
	adds r5, #0x2e
	ldrb r0, [r5]
	cmp r0, #0
	bne _0802DD9A
	b _0802DFE8
_0802DD9A:
	movs r2, #0x3c
	adds r2, r2, r6
	mov r8, r2
	ldrb r3, [r2]
	mov sb, r3
	cmp r3, #0
	beq _0802DDE8
	adds r4, r6, #0
	adds r4, #0xa0
	adds r0, r4, #0
	bl sub_8003770
	cmp r0, #0
	bne _0802DDB8
	b _0802DF28
_0802DDB8:
	movs r0, #0
	mov r1, r8
	strb r0, [r1]
	strb r0, [r5]
	ldr r2, _0802DDE4
	ldr r0, [r2]
	ldr r3, [sp, #0xc4]
	adds r0, r3, r0
	adds r0, #0xfe
	ldrh r0, [r0]
	bl sub_8003864
	ldr r1, _0802DDDC
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	b _0802DF28
	.align 2, 0
_0802DDDC: .4byte 0x0203DFD4
_0802DDE0: .4byte 0x0203DFD5
_0802DDE4: .4byte 0x0203E004
_0802DDE8:
	adds r7, r6, #0
	adds r7, #0x94
	adds r1, r6, #0
	adds r1, #0xd8
	adds r0, r7, #0
	mov r2, sp
	bl sub_08007C20
	add r5, sp, #0x54
	adds r0, r7, #0
	adds r1, r5, #0
	bl sub_08009208
	mov r0, sp
	ldrb r0, [r0]
	cmp r0, #0
	bne _0802DE10
	ldrb r0, [r5]
	cmp r0, #0
	bne _0802DEA4
_0802DE10:
	adds r4, r6, #0
	adds r4, #0xa0
	ldr r1, _0802DE88
	ldrh r0, [r6]
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrh r1, [r0, #4]
	adds r0, r4, #0
	movs r2, #0
	movs r3, #1
	bl sub_8003368
	movs r0, #1
	mov r1, r8
	strb r0, [r1]
	movs r2, #0x83
	lsls r2, r2, #1
	adds r0, r6, r2
	mov r3, sb
	strb r3, [r0]
	adds r0, r6, #0
	adds r0, #0xfe
	ldrh r0, [r0]
	ldr r2, _0802DE8C
	ldr r1, _0802DE90
	ldrb r1, [r1, #0xa]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r2, [r1]
	movs r1, #0
	movs r3, #0
	bl sub_8003884
	ldr r0, _0802DE94
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802DF06
	movs r1, #0x81
	lsls r1, r1, #1
	adds r0, r6, r1
	ldrh r3, [r0]
	lsls r3, r3, #3
	ldr r2, _0802DE98
	adds r0, r3, r2
	ldrh r0, [r0]
	ldr r1, _0802DE9C
	ldrb r1, [r1]
	adds r1, r1, r3
	adds r2, #2
	adds r1, r1, r2
	ldrb r1, [r1]
	ldr r2, _0802DEA0
	adds r3, r3, r2
	ldr r2, [r3]
	movs r3, #0x80
	lsls r3, r3, #9
	adds r2, r2, r3
	bl audio_new_fx
	b _0802DF06
	.align 2, 0
_0802DE88: .4byte 0x080CC938
_0802DE8C: .4byte dword_80CC290
_0802DE90: .4byte gPlayerSprite
_0802DE94: .4byte byte_203EA89
_0802DE98: .4byte 0x080CE440
_0802DE9C: .4byte byte_203EA8C
_0802DEA0: .4byte 0x080CE444
_0802DEA4:
	adds r4, r6, #0
	adds r4, #0xa0
	ldrb r1, [r5, #3]
	adds r0, r4, #0
	bl SetSpritePriority
	adds r5, r6, #0
	adds r5, #0xfe
	ldrh r0, [r5]
	bl sub_80038A4
	ldrh r0, [r5]
	add r1, sp, #0xa8
	add r2, sp, #0xac
	add r3, sp, #0xb0
	bl sub_80038C4
	ldr r2, [r7]
	add r0, sp, #0xa8
	ldr r0, [r0]
	adds r2, r2, r0
	str r2, [r7]
	ldr r1, [r7, #4]
	add r0, sp, #0xac
	ldr r0, [r0]
	adds r1, r1, r0
	str r1, [r7, #4]
	ldr r1, [r7, #8]
	add r0, sp, #0xb0
	ldr r0, [r0]
	adds r1, r1, r0
	str r1, [r7, #8]
	asrs r2, r2, #0x10
	strh r2, [r6, #2]
	ldr r0, _0802DF74
	ldrb r1, [r6, #9]
	ldrh r2, [r0]
	adds r2, r2, r1
	ldr r0, [r7, #8]
	ldr r1, [r7, #4]
	adds r0, r0, r1
	asrs r0, r0, #0x10
	subs r2, r2, r0
	strh r2, [r6, #4]
	movs r1, #6
	ldrsh r0, [r7, r1]
	ldrb r1, [r6, #9]
	subs r0, r0, r1
	strh r0, [r6, #6]
_0802DF06:
	movs r5, #0x83
	lsls r5, r5, #1
	add r5, sl
	ldrb r0, [r5]
	cmp r0, #0
	beq _0802DF28
	mov r1, sl
	adds r1, #0xe4
	mov r2, sl
	adds r2, #0xf0
	adds r0, r7, #0
	bl sub_800396C
	cmp r0, #0
	beq _0802DF28
	movs r0, #0
	strb r0, [r5]
_0802DF28:
	adds r0, r6, #0
	adds r0, #0x2e
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802DFE8
	ldrh r1, [r6, #2]
	ldr r0, _0802DF78
	movs r2, #0
	ldrsh r0, [r0, r2]
	subs r7, r1, r0
	ldrh r1, [r6, #4]
	ldr r0, _0802DF7C
	movs r3, #0
	ldrsh r0, [r0, r3]
	subs r1, r1, r0
	ldrb r0, [r6, #9]
	subs r5, r1, r0
	adds r0, r6, #0
	adds r0, #0x94
	ldr r1, _0802DF74
	ldrh r2, [r1]
	movs r1, #0
	bl sub_8003A7C
	cmp r0, #0
	beq _0802DF68
	movs r0, #0x83
	lsls r0, r0, #1
	add r0, sl
	ldrb r1, [r0]
	cmp r1, #0
	beq _0802DF80
_0802DF68:
	adds r1, r6, #0
	adds r1, #0xb3
	movs r0, #1
	strb r0, [r1]
	b _0802DF86
	.align 2, 0
_0802DF74: .4byte gMapPixelSizeY
_0802DF78: .4byte gCameraPixelX
_0802DF7C: .4byte gCameraPixelY
_0802DF80:
	adds r0, r6, #0
	adds r0, #0xb3
	strb r1, [r0]
_0802DF86:
	adds r0, r6, #0
	adds r0, #0xa6
	strh r7, [r0]
	adds r0, #2
	strb r5, [r0]
	ldr r0, [sp, #0xb4]
	ldr r1, [r0]
	adds r0, r4, #0
	bl sub_80033DC
	ldr r0, _0802DFC0
	add r0, sl
	ldrb r0, [r0]
	cmp r0, #0
	bne _0802DFC4
	ldr r1, [sp, #0xb4]
	ldr r2, [r1]
	adds r0, r6, #0
	adds r0, #0xa4
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	subs r0, #8
	ldr r0, [r0]
	lsrs r0, r0, #4
	orrs r1, r0
	str r1, [r2]
	adds r1, r2, #0
	b _0802DFD2
	.align 2, 0
_0802DFC0: .4byte 0x00000105
_0802DFC4:
	ldr r2, [sp, #0xb4]
	ldr r1, [r2]
	adds r0, r6, #0
	adds r0, #0xa4
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	str r0, [r1]
_0802DFD2:
	adds r0, r1, #0
	adds r0, #0xc
	ldr r3, [sp, #0xb4]
	str r0, [r3]
	ldr r1, [sp, #0xb8]
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r2, [sp, #0xc0]
	adds r2, #1
	str r2, [sp, #0xc0]
_0802DFE8:
	ldr r0, _0802E01C
	ldr r3, [sp, #0xc0]
	ldrb r0, [r0]
	cmp r3, r0
	beq _0802E00C
	ldr r0, [sp, #0xc4]
	movs r1, #0x84
	lsls r1, r1, #1
	adds r0, r0, r1
	str r0, [sp, #0xc4]
	ldr r2, [sp, #0xbc]
	adds r2, #1
	str r2, [sp, #0xbc]
	ldr r0, _0802E020
	ldrb r0, [r0]
	cmp r2, r0
	bge _0802E00C
	b _0802DD84
_0802E00C:
	add sp, #0xc8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802E01C: .4byte 0x0203DFD4
_0802E020: .4byte 0x0203DFD5

    .thumb
sub_802E024: @ 0x0802E024
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r5, r1, #0
	movs r0, #0
	movs r1, #2
	bl RandomMinMax
	adds r4, r0, #0
	cmp r4, #1
	bne _0802E07A
	cmp r6, #0
	ble _0802E07A
	ldr r7, _0802E064
	adds r4, r6, #0
_0802E040:
	movs r0, #0
	movs r1, #0x13
	bl RandomMinMax
	adds r0, r0, r7
	ldrb r1, [r0]
	ldrh r0, [r5]
	cmp r0, #0xad
	beq _0802E068
	adds r0, r1, #0
	adds r1, r5, #0
	movs r2, #1
	rsbs r2, r2, #0
	movs r3, #1
	bl sub_0802C3A4
	b _0802E074
	.align 2, 0
_0802E064: .4byte 0x080A778A
_0802E068:
	adds r0, r1, #0
	adds r1, r5, #0
	movs r2, #0
	movs r3, #2
	bl sub_0802C3A4
_0802E074:
	subs r4, #1
	cmp r4, #0
	bne _0802E040
_0802E07A:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0


	.thumb
    .global sub_0802E080
sub_0802E080: @ 0x0802E080
	push {r4, r5, r6, lr}
	bl sub_8063178
	ldr r0, _0802E0A8
	ldr r0, [r0]
	ldrh r0, [r0]
	adds r1, r0, #0
	subs r1, #0xf
	movs r0, #0xc8
	lsls r0, r0, #1
	cmp r1, r0
	bls _0802E09C
	bl _0802FDA4
_0802E09C:
	lsls r0, r1, #2
	ldr r1, _0802E0AC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0802E0A8: .4byte 0x0203DFDC
_0802E0AC: .4byte 0x0802E0B0
_0802E0B0: @ jump table
	.4byte _0802F4DC @ case 0
	.4byte _0802F680 @ case 1
	.4byte _0802FDA4 @ case 2
	.4byte _0802F224 @ case 3
	.4byte _0802E930 @ case 4
	.4byte _0802FDA4 @ case 5
	.4byte _0802FDA4 @ case 6
	.4byte _0802FB48 @ case 7
	.4byte _0802FAB4 @ case 8
	.4byte _0802FDA4 @ case 9
	.4byte _0802FDA4 @ case 10
	.4byte _0802FDA4 @ case 11
	.4byte _0802FDA4 @ case 12
	.4byte _0802FDA4 @ case 13
	.4byte _0802FDA4 @ case 14
	.4byte _0802FDA4 @ case 15
	.4byte _0802FDA4 @ case 16
	.4byte _0802F934 @ case 17
	.4byte _0802F902 @ case 18
	.4byte _0802E964 @ case 19
	.4byte _0802FDA4 @ case 20
	.4byte _0802FDA4 @ case 21
	.4byte _0802FDA4 @ case 22
	.4byte _0802FDA4 @ case 23
	.4byte _0802FDA4 @ case 24
	.4byte _0802FA00 @ case 25
	.4byte _0802F5CC @ case 26
	.4byte _0802FDA4 @ case 27
	.4byte _0802FDA4 @ case 28
	.4byte _0802FDA4 @ case 29
	.4byte _0802FDA4 @ case 30
	.4byte _0802FDA4 @ case 31
	.4byte _0802FDA4 @ case 32
	.4byte _0802FDA4 @ case 33
	.4byte _0802FDA4 @ case 34
	.4byte _0802FDA4 @ case 35
	.4byte _0802FDA4 @ case 36
	.4byte _0802FDA4 @ case 37
	.4byte _0802FDA4 @ case 38
	.4byte _0802F2DC @ case 39
	.4byte _0802F370 @ case 40
	.4byte _0802F404 @ case 41
	.4byte _0802F494 @ case 42
	.4byte _0802FDA4 @ case 43
	.4byte _0802FDA4 @ case 44
	.4byte _0802FDA4 @ case 45
	.4byte _0802FDA4 @ case 46
	.4byte _0802FDA4 @ case 47
	.4byte _0802FDA4 @ case 48
	.4byte _0802FDA4 @ case 49
	.4byte _0802FDA4 @ case 50
	.4byte _0802FDA4 @ case 51
	.4byte _0802FDA4 @ case 52
	.4byte _0802FDA4 @ case 53
	.4byte _0802FDA4 @ case 54
	.4byte _0802FDA4 @ case 55
	.4byte _0802FDA4 @ case 56
	.4byte _0802FDA4 @ case 57
	.4byte _0802FDA4 @ case 58
	.4byte _0802FDA4 @ case 59
	.4byte _0802FDA4 @ case 60
	.4byte _0802F114 @ case 61
	.4byte _0802FDA4 @ case 62
	.4byte _0802FDA4 @ case 63
	.4byte _0802FDA4 @ case 64
	.4byte _0802FDA4 @ case 65
	.4byte _0802FDA4 @ case 66
	.4byte _0802FDA4 @ case 67
	.4byte _0802FDA4 @ case 68
	.4byte _0802FDA4 @ case 69
	.4byte _0802FDA4 @ case 70
	.4byte _0802FDA4 @ case 71
	.4byte _0802FDA4 @ case 72
	.4byte _0802FDA4 @ case 73
	.4byte _0802FDA4 @ case 74
	.4byte _0802FDA4 @ case 75
	.4byte _0802FDA4 @ case 76
	.4byte _0802E85C @ case 77
	.4byte _0802FDA4 @ case 78
	.4byte _0802FDA4 @ case 79
	.4byte _0802FDA4 @ case 80
	.4byte _0802FDA4 @ case 81
	.4byte _0802FDA4 @ case 82
	.4byte _0802FDA4 @ case 83
	.4byte _0802FDA4 @ case 84
	.4byte _0802FDA4 @ case 85
	.4byte _0802FDA4 @ case 86
	.4byte _0802FDA4 @ case 87
	.4byte _0802FDA4 @ case 88
	.4byte _0802FDA4 @ case 89
	.4byte _0802FDA4 @ case 90
	.4byte _0802FDA4 @ case 91
	.4byte _0802FDA4 @ case 92
	.4byte _0802FDA4 @ case 93
	.4byte _0802FDA4 @ case 94
	.4byte _0802FDA4 @ case 95
	.4byte _0802FDA4 @ case 96
	.4byte _0802FDA4 @ case 97
	.4byte _0802FDA4 @ case 98
	.4byte _0802FDA4 @ case 99
	.4byte _0802E6F4 @ case 100
	.4byte _0802FDA4 @ case 101
	.4byte _0802FDA4 @ case 102
	.4byte _0802FDA4 @ case 103
	.4byte _0802FDA4 @ case 104
	.4byte _0802FDA4 @ case 105
	.4byte _0802FDA4 @ case 106
	.4byte _0802FDA4 @ case 107
	.4byte _0802FDA4 @ case 108
	.4byte _0802FDA4 @ case 109
	.4byte _0802FDA4 @ case 110
	.4byte _0802FDA4 @ case 111
	.4byte _0802FDA4 @ case 112
	.4byte _0802FDA4 @ case 113
	.4byte _0802FDA4 @ case 114
	.4byte _0802FDA4 @ case 115
	.4byte _0802FDA4 @ case 116
	.4byte _0802FDA4 @ case 117
	.4byte _0802FDA4 @ case 118
	.4byte _0802FDA4 @ case 119
	.4byte _0802FDA4 @ case 120
	.4byte _0802FDA4 @ case 121
	.4byte _0802FDA4 @ case 122
	.4byte _0802FDA4 @ case 123
	.4byte _0802FDA4 @ case 124
	.4byte _0802FDA4 @ case 125
	.4byte _0802FDA4 @ case 126
	.4byte _0802FDA4 @ case 127
	.4byte _0802FDA4 @ case 128
	.4byte _0802FDA4 @ case 129
	.4byte _0802FDA4 @ case 130
	.4byte _0802FDA4 @ case 131
	.4byte _0802FAE8 @ case 132
	.4byte _0802FDA4 @ case 133
	.4byte _0802FDA4 @ case 134
	.4byte _0802FDA4 @ case 135
	.4byte _0802F780 @ case 136
	.4byte _0802FDA4 @ case 137
	.4byte _0802FDA4 @ case 138
	.4byte _0802FDA4 @ case 139
	.4byte _0802FDA4 @ case 140
	.4byte _0802FDA4 @ case 141
	.4byte _0802FDA4 @ case 142
	.4byte _0802F1A0 @ case 143
	.4byte _0802F1C8 @ case 144
	.4byte _0802F04C @ case 145
	.4byte _0802E7DC @ case 146
	.4byte _0802E7FC @ case 147
	.4byte _0802E81C @ case 148
	.4byte _0802E83C @ case 149
	.4byte _0802E78C @ case 150
	.4byte _0802E7A0 @ case 151
	.4byte _0802E7B4 @ case 152
	.4byte _0802E7C8 @ case 153
	.4byte _0802FDA4 @ case 154
	.4byte _0802FDA4 @ case 155
	.4byte _0802FDA4 @ case 156
	.4byte _0802FDA4 @ case 157
	.4byte _0802FDA4 @ case 158
	.4byte _0802FDA4 @ case 159
	.4byte _0802FDA4 @ case 160
	.4byte _0802FDA4 @ case 161
	.4byte _0802FDA4 @ case 162
	.4byte _0802FDA4 @ case 163
	.4byte _0802FDA4 @ case 164
	.4byte _0802FDA4 @ case 165
	.4byte _0802FDA4 @ case 166
	.4byte _0802FDA4 @ case 167
	.4byte _0802FDA4 @ case 168
	.4byte _0802FDA4 @ case 169
	.4byte _0802FDA4 @ case 170
	.4byte _0802FDA4 @ case 171
	.4byte _0802FDA4 @ case 172
	.4byte _0802FDA4 @ case 173
	.4byte _0802FDA4 @ case 174
	.4byte _0802FDA4 @ case 175
	.4byte _0802FDA4 @ case 176
	.4byte _0802FDA4 @ case 177
	.4byte _0802FDA4 @ case 178
	.4byte _0802FDA4 @ case 179
	.4byte _0802FDA4 @ case 180
	.4byte _0802FDA4 @ case 181
	.4byte _0802FDA4 @ case 182
	.4byte _0802FDA4 @ case 183
	.4byte _0802FDA4 @ case 184
	.4byte _0802FDA4 @ case 185
	.4byte _0802FDA4 @ case 186
	.4byte _0802FDA4 @ case 187
	.4byte _0802FDA4 @ case 188
	.4byte _0802FDA4 @ case 189
	.4byte _0802FDA4 @ case 190
	.4byte _0802FDA4 @ case 191
	.4byte _0802FDA4 @ case 192
	.4byte _0802FDA4 @ case 193
	.4byte _0802FDA4 @ case 194
	.4byte _0802FDA4 @ case 195
	.4byte _0802FDA4 @ case 196
	.4byte _0802FDA4 @ case 197
	.4byte _0802FDA4 @ case 198
	.4byte _0802FDA4 @ case 199
	.4byte _0802FDA4 @ case 200
	.4byte _0802FDA4 @ case 201
	.4byte _0802FDA4 @ case 202
	.4byte _0802FDA4 @ case 203
	.4byte _0802FDA4 @ case 204
	.4byte _0802FDA4 @ case 205
	.4byte _0802FDA4 @ case 206
	.4byte _0802FDA4 @ case 207
	.4byte _0802FDA4 @ case 208
	.4byte _0802FDA4 @ case 209
	.4byte _0802FDA4 @ case 210
	.4byte _0802FDA4 @ case 211
	.4byte _0802FDA4 @ case 212
	.4byte _0802FDA4 @ case 213
	.4byte _0802FDA4 @ case 214
	.4byte _0802FDA4 @ case 215
	.4byte _0802FDA4 @ case 216
	.4byte _0802FDA4 @ case 217
	.4byte _0802FDA4 @ case 218
	.4byte _0802FDA4 @ case 219
	.4byte _0802FDA4 @ case 220
	.4byte _0802FDA4 @ case 221
	.4byte _0802FDA4 @ case 222
	.4byte _0802FDA4 @ case 223
	.4byte _0802FDA4 @ case 224
	.4byte _0802FDA4 @ case 225
	.4byte _0802FDA4 @ case 226
	.4byte _0802FDA4 @ case 227
	.4byte _0802FDA4 @ case 228
	.4byte _0802FDA4 @ case 229
	.4byte _0802FDA4 @ case 230
	.4byte _0802FDA4 @ case 231
	.4byte _0802FDA4 @ case 232
	.4byte _0802FDA4 @ case 233
	.4byte _0802FDA4 @ case 234
	.4byte _0802FDA4 @ case 235
	.4byte _0802FDA4 @ case 236
	.4byte _0802FDA4 @ case 237
	.4byte _0802FDA4 @ case 238
	.4byte _0802FDA4 @ case 239
	.4byte _0802EA00 @ case 240
	.4byte _0802FDA4 @ case 241
	.4byte _0802FDA4 @ case 242
	.4byte _0802FDA4 @ case 243
	.4byte _0802FDA4 @ case 244
	.4byte _0802FDA4 @ case 245
	.4byte _0802FDA4 @ case 246
	.4byte _0802FDA4 @ case 247
	.4byte _0802FDA4 @ case 248
	.4byte _0802FDA4 @ case 249
	.4byte _0802FDA4 @ case 250
	.4byte _0802FDA4 @ case 251
	.4byte _0802FDA4 @ case 252
	.4byte _0802FDA4 @ case 253
	.4byte _0802F010 @ case 254
	.4byte _0802FDA4 @ case 255
	.4byte _0802FDA4 @ case 256
	.4byte _0802FDA4 @ case 257
	.4byte _0802FDA4 @ case 258
	.4byte _0802FDA4 @ case 259
	.4byte _0802F010 @ case 260
	.4byte _0802FDA4 @ case 261
	.4byte _0802FDA4 @ case 262
	.4byte _0802EF8C @ case 263
	.4byte _0802EF8C @ case 264
	.4byte _0802EF8C @ case 265
	.4byte _0802EF8C @ case 266
	.4byte _0802EF8C @ case 267
	.4byte _0802EF8C @ case 268
	.4byte _0802EF8C @ case 269
	.4byte _0802F010 @ case 270
	.4byte _0802F028 @ case 271
	.4byte _0802FDA4 @ case 272
	.4byte _0802FDA4 @ case 273
	.4byte _0802FDA4 @ case 274
	.4byte _0802F010 @ case 275
	.4byte _0802EB68 @ case 276
	.4byte _0802EB90 @ case 277
	.4byte _0802F010 @ case 278
	.4byte _0802EBB8 @ case 279
	.4byte _0802FDA4 @ case 280
	.4byte _0802FDA4 @ case 281
	.4byte _0802FDA4 @ case 282
	.4byte _0802EA28 @ case 283
	.4byte _0802EA78 @ case 284
	.4byte _0802EAF0 @ case 285
	.4byte _0802EAA0 @ case 286
	.4byte _0802EAC8 @ case 287
	.4byte _0802F010 @ case 288
	.4byte _0802F010 @ case 289
	.4byte _0802F010 @ case 290
	.4byte _0802EA50 @ case 291
	.4byte _0802EC80 @ case 292
	.4byte _0802F010 @ case 293
	.4byte _0802ECA8 @ case 294
	.4byte _0802ECD0 @ case 295
	.4byte _0802F010 @ case 296
	.4byte _0802ECF8 @ case 297
	.4byte _0802ED20 @ case 298
	.4byte _0802F010 @ case 299
	.4byte _0802ED48 @ case 300
	.4byte _0802ED70 @ case 301
	.4byte _0802F010 @ case 302
	.4byte _0802ED98 @ case 303
	.4byte _0802EDC0 @ case 304
	.4byte _0802F010 @ case 305
	.4byte _0802EDE8 @ case 306
	.4byte _0802EFAC @ case 307
	.4byte _0802EE60 @ case 308
	.4byte _0802EFDC @ case 309
	.4byte _0802EE10 @ case 310
	.4byte _0802EF50 @ case 311
	.4byte _0802EE38 @ case 312
	.4byte _0802FDA4 @ case 313
	.4byte _0802FDA4 @ case 314
	.4byte _0802FDA4 @ case 315
	.4byte _0802FDA4 @ case 316
	.4byte _0802EE88 @ case 317
	.4byte _0802EEB0 @ case 318
	.4byte _0802EED8 @ case 319
	.4byte _0802EF00 @ case 320
	.4byte _0802FDA4 @ case 321
	.4byte _0802FDA4 @ case 322
	.4byte _0802F010 @ case 323
	.4byte _0802F010 @ case 324
	.4byte _0802F010 @ case 325
	.4byte _0802F010 @ case 326
	.4byte _0802F010 @ case 327
	.4byte _0802F010 @ case 328
	.4byte _0802F010 @ case 329
	.4byte _0802F010 @ case 330
	.4byte _0802F010 @ case 331
	.4byte _0802F010 @ case 332
	.4byte _0802F010 @ case 333
	.4byte _0802FDA4 @ case 334
	.4byte _0802FDA4 @ case 335
	.4byte _0802FDA4 @ case 336
	.4byte _0802FDA4 @ case 337
	.4byte _0802FDA4 @ case 338
	.4byte _0802FDA4 @ case 339
	.4byte _0802EF50 @ case 340
	.4byte _0802EF68 @ case 341
	.4byte _0802FDA4 @ case 342
	.4byte _0802FDA4 @ case 343
	.4byte _0802FDA4 @ case 344
	.4byte _0802FDA4 @ case 345
	.4byte _0802FDA4 @ case 346
	.4byte _0802FDA4 @ case 347
	.4byte _0802EF8C @ case 348
	.4byte _0802EF8C @ case 349
	.4byte _0802EBE0 @ case 350
	.4byte _0802EC08 @ case 351
	.4byte _0802EB18 @ case 352
	.4byte _0802EB40 @ case 353
	.4byte _0802EC58 @ case 354
	.4byte _0802F010 @ case 355
	.4byte _0802F010 @ case 356
	.4byte _0802F010 @ case 357
	.4byte _0802FDA4 @ case 358
	.4byte _0802FDA4 @ case 359
	.4byte _0802FDA4 @ case 360
	.4byte _0802FDA4 @ case 361
	.4byte _0802FDA4 @ case 362
	.4byte _0802FDA4 @ case 363
	.4byte _0802FDA4 @ case 364
	.4byte _0802FDA4 @ case 365
	.4byte _0802FDA4 @ case 366
	.4byte _0802FDA4 @ case 367
	.4byte _0802FDA4 @ case 368
	.4byte _0802FDA4 @ case 369
	.4byte _0802FDA4 @ case 370
	.4byte _0802FDA4 @ case 371
	.4byte _0802FDA4 @ case 372
	.4byte _0802FDA4 @ case 373
	.4byte _0802F010 @ case 374
	.4byte _0802F010 @ case 375
	.4byte _0802F010 @ case 376
	.4byte _0802EF28 @ case 377
	.4byte _0802FDA4 @ case 378
	.4byte _0802F010 @ case 379
	.4byte _0802EC30 @ case 380
	.4byte _0802F010 @ case 381
	.4byte _0802F010 @ case 382
	.4byte _0802F010 @ case 383
	.4byte _0802F010 @ case 384
	.4byte _0802F010 @ case 385
	.4byte _0802F010 @ case 386
	.4byte _0802F010 @ case 387
	.4byte _0802F010 @ case 388
	.4byte _0802F010 @ case 389
	.4byte _0802FDA4 @ case 390
	.4byte _0802FDA4 @ case 391
	.4byte _0802FDA4 @ case 392
	.4byte _0802FDA4 @ case 393
	.4byte _0802F010 @ case 394
	.4byte _0802F010 @ case 395
	.4byte _0802F010 @ case 396
	.4byte _0802F010 @ case 397
	.4byte _0802FDA4 @ case 398
	.4byte _0802FDA4 @ case 399
	.4byte _0802EF50 @ case 400
_0802E6F4:
	movs r0, #0xd9
	movs r1, #0x10
	bl sub_80342CC
	cmp r0, #0
	bne _0802E75C
	movs r4, #0xd1
	lsls r4, r4, #1
	adds r0, r4, #0
	movs r1, #0
	bl sub_80342CC
	cmp r0, #0
	bne _0802E744
	ldr r1, _0802E738
	ldr r2, _0802E73C
	ldrb r0, [r2]
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0802E722
	movs r0, #1
	strb r0, [r2]
_0802E722:
	ldr r0, _0802E740
	ldr r0, [r0]
	ldrb r0, [r0, #0x14]
	subs r0, #1
	bl sub_8025EF4
	adds r0, r4, #0
	movs r1, #0
	bl _0802FD94
	.align 2, 0
_0802E738: .4byte 0x02002E4E
_0802E73C: .4byte 0x0203E162
_0802E740: .4byte 0x0203DFDC
_0802E744:
	ldr r1, _0802E754
	movs r0, #1
	strb r0, [r1]
	ldr r0, _0802E758
	ldr r0, [r0]
	ldrb r0, [r0, #0x14]
	bl _0802FD64
	.align 2, 0
_0802E754: .4byte 0x02002E4E
_0802E758: .4byte 0x0203DFDC
_0802E75C:
	movs r4, #0xd1
	lsls r4, r4, #1
	adds r0, r4, #0
	movs r1, #0
	bl sub_80342CC
	cmp r0, #0
	bne _0802E774
	adds r0, r4, #0
	movs r1, #0
	bl sub_80342F8
_0802E774:
	ldr r1, _0802E784
	movs r0, #1
	strb r0, [r1]
	ldr r0, _0802E788
	ldr r0, [r0]
	ldrb r0, [r0, #0x18]
	bl _0802FD64
	.align 2, 0
_0802E784: .4byte 0x02002E4E
_0802E788: .4byte 0x0203DFDC
_0802E78C:
	ldr r1, _0802E798
	movs r0, #1
	strb r0, [r1]
	ldr r1, _0802E79C
	bl _0802FD16
	.align 2, 0
_0802E798: .4byte 0x02002E4E
_0802E79C: .4byte 0x080CEC70
_0802E7A0:
	ldr r1, _0802E7AC
	movs r0, #1
	strb r0, [r1]
	ldr r1, _0802E7B0
	bl _0802FD16
	.align 2, 0
_0802E7AC: .4byte 0x02002E4E
_0802E7B0: .4byte 0x080CEC7C
_0802E7B4:
	ldr r1, _0802E7C0
	movs r0, #1
	strb r0, [r1]
	ldr r1, _0802E7C4
	bl _0802FD16
	.align 2, 0
_0802E7C0: .4byte 0x02002E4E
_0802E7C4: .4byte 0x080CEC94
_0802E7C8:
	ldr r1, _0802E7D4
	movs r0, #1
	strb r0, [r1]
	ldr r1, _0802E7D8
	bl _0802FD16
	.align 2, 0
_0802E7D4: .4byte 0x02002E4E
_0802E7D8: .4byte 0x080CEC88
_0802E7DC:
	ldr r1, _0802E7F4
	movs r0, #0
	strb r0, [r1]
	ldr r0, _0802E7F8
	ldr r0, [r0]
	ldrb r0, [r0, #0x14]
	subs r0, #1
	bl sub_8025EF4
	movs r0, #0xa1
	bl _0802FA2C
	.align 2, 0
_0802E7F4: .4byte 0x02002E4E
_0802E7F8: .4byte 0x0203DFDC
_0802E7FC:
	ldr r1, _0802E814
	movs r0, #0
	strb r0, [r1]
	ldr r0, _0802E818
	ldr r0, [r0]
	ldrb r0, [r0, #0x14]
	subs r0, #1
	bl sub_8025EF4
	movs r0, #0xa2
	bl _0802FA2C
	.align 2, 0
_0802E814: .4byte 0x02002E4E
_0802E818: .4byte 0x0203DFDC
_0802E81C:
	ldr r1, _0802E834
	movs r0, #0
	strb r0, [r1]
	ldr r0, _0802E838
	ldr r0, [r0]
	ldrb r0, [r0, #0x14]
	subs r0, #1
	bl sub_8025EF4
	movs r0, #0xa3
	bl _0802FA2C
	.align 2, 0
_0802E834: .4byte 0x02002E4E
_0802E838: .4byte 0x0203DFDC
_0802E83C:
	ldr r1, _0802E854
	movs r0, #0
	strb r0, [r1]
	ldr r0, _0802E858
	ldr r0, [r0]
	ldrb r0, [r0, #0x14]
	subs r0, #1
	bl sub_8025EF4
	movs r0, #0xa4
	bl _0802FA2C
	.align 2, 0
_0802E854: .4byte 0x02002E4E
_0802E858: .4byte 0x0203DFDC
_0802E85C:
	movs r0, #0x86
	lsls r0, r0, #1
	movs r1, #0
	bl sub_80342CC
	cmp r0, #0
	beq _0802E8D4
	ldr r4, _0802E8AC
	adds r0, r4, #0
	movs r1, #0
	bl sub_80342CC
	cmp r0, #0
	bne _0802E880
	adds r0, r4, #0
	movs r1, #0
	bl sub_80342F8
_0802E880:
	movs r4, #0x85
	lsls r4, r4, #1
	adds r0, r4, #0
	movs r1, #0
	bl sub_80342CC
	adds r1, r0, #0
	cmp r1, #0
	bne _0802E8B8
	ldr r0, _0802E8B0
	strb r1, [r0]
	ldr r0, _0802E8B4
	ldr r0, [r0]
	ldrb r0, [r0, #0x18]
	subs r0, #1
	bl sub_8025EF4
	adds r0, r4, #0
	movs r1, #0
	bl _0802FD94
	.align 2, 0
_0802E8AC: .4byte 0x00000177
_0802E8B0: .4byte 0x02002E4E
_0802E8B4: .4byte 0x0203DFDC
_0802E8B8:
	ldr r1, _0802E8CC
	movs r0, #1
	strb r0, [r1]
	ldr r0, _0802E8D0
	ldr r0, [r0]
	adds r0, #0x24
	ldrb r0, [r0]
	bl _0802FD64
	.align 2, 0
_0802E8CC: .4byte 0x02002E4E
_0802E8D0: .4byte 0x0203DFDC
_0802E8D4:
	ldr r4, _0802E908
	adds r0, r4, #0
	movs r1, #0
	bl sub_80342CC
	cmp r0, #0
	bne _0802E918
	ldr r1, _0802E90C
	ldr r2, _0802E910
	ldrb r0, [r2]
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0802E8F4
	movs r0, #1
	strb r0, [r2]
_0802E8F4:
	ldr r0, _0802E914
	ldr r0, [r0]
	ldrb r0, [r0, #0x14]
	subs r0, #1
	bl sub_8025EF4
	adds r0, r4, #0
	movs r1, #0
	bl _0802FD94
	.align 2, 0
_0802E908: .4byte 0x00000177
_0802E90C: .4byte 0x02002E4E
_0802E910: .4byte 0x0203E143
_0802E914: .4byte 0x0203DFDC
_0802E918:
	ldr r1, _0802E928
	movs r0, #1
	strb r0, [r1]
	ldr r0, _0802E92C
	ldr r0, [r0]
	ldrb r0, [r0, #0x14]
	bl _0802FD64
	.align 2, 0
_0802E928: .4byte 0x02002E4E
_0802E92C: .4byte 0x0203DFDC
_0802E930:
	ldr r1, _0802E958
	ldr r2, _0802E95C
	ldrb r0, [r2]
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0802E942
	movs r0, #1
	strb r0, [r2]
_0802E942:
	ldr r0, _0802E960
	ldr r0, [r0]
	ldrb r0, [r0, #0x14]
	subs r0, #1
	bl sub_8025EF4
	movs r0, #0x81
	lsls r0, r0, #1
	movs r1, #0
	bl _0802FD94
	.align 2, 0
_0802E958: .4byte 0x02002E4E
_0802E95C: .4byte 0x0203E169
_0802E960: .4byte 0x0203DFDC
_0802E964:
	movs r0, #0xd9
	movs r1, #9
	bl sub_80342CC
	cmp r0, #0
	bne _0802E9CC
	ldr r4, _0802E9A4
	adds r0, r4, #0
	movs r1, #0
	bl sub_80342CC
	cmp r0, #0
	bne _0802E9B4
	ldr r1, _0802E9A8
	ldr r2, _0802E9AC
	ldrb r0, [r2]
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0802E990
	movs r0, #1
	strb r0, [r2]
_0802E990:
	ldr r0, _0802E9B0
	ldr r0, [r0]
	ldrb r0, [r0, #0x14]
	subs r0, #1
	bl sub_8025EF4
	adds r0, r4, #0
	movs r1, #0
	bl _0802FD94
	.align 2, 0
_0802E9A4: .4byte 0x00000179
_0802E9A8: .4byte 0x02002E4E
_0802E9AC: .4byte 0x0203E15F
_0802E9B0: .4byte 0x0203DFDC
_0802E9B4:
	ldr r1, _0802E9C4
	movs r0, #1
	strb r0, [r1]
	ldr r0, _0802E9C8
	ldr r0, [r0]
	ldrb r0, [r0, #0x14]
	bl _0802FD64
	.align 2, 0
_0802E9C4: .4byte 0x02002E4E
_0802E9C8: .4byte 0x0203DFDC
_0802E9CC:
	ldr r4, _0802E9F4
	adds r0, r4, #0
	movs r1, #0
	bl sub_80342CC
	cmp r0, #0
	bne _0802E9E2
	adds r0, r4, #0
	movs r1, #0
	bl sub_80342F8
_0802E9E2:
	ldr r1, _0802E9F8
	movs r0, #1
	strb r0, [r1]
	ldr r0, _0802E9FC
	ldr r0, [r0]
	ldrb r0, [r0, #0x18]
	bl _0802FD64
	.align 2, 0
_0802E9F4: .4byte 0x00000179
_0802E9F8: .4byte 0x02002E4E
_0802E9FC: .4byte 0x0203DFDC
_0802EA00:
	ldr r1, _0802EA1C
	ldr r2, _0802EA20
	ldrb r0, [r2]
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0802EA12
	movs r0, #1
	strb r0, [r2]
_0802EA12:
	ldr r0, _0802EA24
	ldr r0, [r0]
	ldrb r0, [r0, #0x14]
	bl _0802FD64
	.align 2, 0
_0802EA1C: .4byte 0x02002E4E
_0802EA20: .4byte 0x0203E145
_0802EA24: .4byte 0x0203DFDC
_0802EA28:
	ldr r1, _0802EA44
	ldr r2, _0802EA48
	ldrb r0, [r2]
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0802EA3A
	movs r0, #1
	strb r0, [r2]
_0802EA3A:
	ldr r0, _0802EA4C
	ldr r0, [r0]
	ldrb r0, [r0, #0x14]
	bl _0802FD64
	.align 2, 0
_0802EA44: .4byte 0x02002E4E
_0802EA48: .4byte 0x0203E146
_0802EA4C: .4byte 0x0203DFDC
_0802EA50:
	ldr r1, _0802EA6C
	ldr r2, _0802EA70
	ldrb r0, [r2]
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0802EA62
	movs r0, #1
	strb r0, [r2]
_0802EA62:
	ldr r0, _0802EA74
	ldr r0, [r0]
	ldrb r0, [r0, #0x14]
	bl _0802FD64
	.align 2, 0
_0802EA6C: .4byte 0x02002E4E
_0802EA70: .4byte 0x0203E147
_0802EA74: .4byte 0x0203DFDC
_0802EA78:
	ldr r1, _0802EA94
	ldr r2, _0802EA98
	ldrb r0, [r2]
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0802EA8A
	movs r0, #1
	strb r0, [r2]
_0802EA8A:
	ldr r0, _0802EA9C
	ldr r0, [r0]
	ldrb r0, [r0, #0x14]
	bl _0802FD64
	.align 2, 0
_0802EA94: .4byte 0x02002E4E
_0802EA98: .4byte 0x0203E148
_0802EA9C: .4byte 0x0203DFDC
_0802EAA0:
	ldr r1, _0802EABC
	ldr r2, _0802EAC0
	ldrb r0, [r2]
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0802EAB2
	movs r0, #1
	strb r0, [r2]
_0802EAB2:
	ldr r0, _0802EAC4
	ldr r0, [r0]
	ldrb r0, [r0, #0x14]
	bl _0802FD64
	.align 2, 0
_0802EABC: .4byte 0x02002E4E
_0802EAC0: .4byte 0x0203E149
_0802EAC4: .4byte 0x0203DFDC
_0802EAC8:
	ldr r1, _0802EAE4
	ldr r2, _0802EAE8
	ldrb r0, [r2]
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0802EADA
	movs r0, #1
	strb r0, [r2]
_0802EADA:
	ldr r0, _0802EAEC
	ldr r0, [r0]
	ldrb r0, [r0, #0x14]
	bl _0802FD64
	.align 2, 0
_0802EAE4: .4byte 0x02002E4E
_0802EAE8: .4byte 0x0203E14A
_0802EAEC: .4byte 0x0203DFDC
_0802EAF0:
	ldr r1, _0802EB0C
	ldr r2, _0802EB10
	ldrb r0, [r2]
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0802EB02
	movs r0, #1
	strb r0, [r2]
_0802EB02:
	ldr r0, _0802EB14
	ldr r0, [r0]
	ldrb r0, [r0, #0x14]
	bl _0802FD64
	.align 2, 0
_0802EB0C: .4byte 0x02002E4E
_0802EB10: .4byte 0x0203E14B
_0802EB14: .4byte 0x0203DFDC
_0802EB18:
	ldr r1, _0802EB34
	ldr r2, _0802EB38
	ldrb r0, [r2]
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0802EB2A
	movs r0, #1
	strb r0, [r2]
_0802EB2A:
	ldr r0, _0802EB3C
	ldr r0, [r0]
	ldrb r0, [r0, #0x14]
	bl _0802FD64
	.align 2, 0
_0802EB34: .4byte 0x02002E4E
_0802EB38: .4byte 0x0203E14C
_0802EB3C: .4byte 0x0203DFDC
_0802EB40:
	ldr r1, _0802EB5C
	ldr r2, _0802EB60
	ldrb r0, [r2]
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0802EB52
	movs r0, #1
	strb r0, [r2]
_0802EB52:
	ldr r0, _0802EB64
	ldr r0, [r0]
	ldrb r0, [r0, #0x14]
	bl _0802FD64
	.align 2, 0
_0802EB5C: .4byte 0x02002E4E
_0802EB60: .4byte 0x0203E14D
_0802EB64: .4byte 0x0203DFDC
_0802EB68:
	ldr r1, _0802EB84
	ldr r2, _0802EB88
	ldrb r0, [r2]
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0802EB7A
	movs r0, #1
	strb r0, [r2]
_0802EB7A:
	ldr r0, _0802EB8C
	ldr r0, [r0]
	ldrb r0, [r0, #0x14]
	bl _0802FD64
	.align 2, 0
_0802EB84: .4byte 0x02002E4E
_0802EB88: .4byte 0x0203E14E
_0802EB8C: .4byte 0x0203DFDC
_0802EB90:
	ldr r1, _0802EBAC
	ldr r2, _0802EBB0
	ldrb r0, [r2]
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0802EBA2
	movs r0, #1
	strb r0, [r2]
_0802EBA2:
	ldr r0, _0802EBB4
	ldr r0, [r0]
	ldrb r0, [r0, #0x14]
	bl _0802FD64
	.align 2, 0
_0802EBAC: .4byte 0x02002E4E
_0802EBB0: .4byte 0x0203E14F
_0802EBB4: .4byte 0x0203DFDC
_0802EBB8:
	ldr r1, _0802EBD4
	ldr r2, _0802EBD8
	ldrb r0, [r2]
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0802EBCA
	movs r0, #1
	strb r0, [r2]
_0802EBCA:
	ldr r0, _0802EBDC
	ldr r0, [r0]
	ldrb r0, [r0, #0x14]
	bl _0802FD64
	.align 2, 0
_0802EBD4: .4byte 0x02002E4E
_0802EBD8: .4byte 0x0203E150
_0802EBDC: .4byte 0x0203DFDC
_0802EBE0:
	ldr r1, _0802EBFC
	ldr r2, _0802EC00
	ldrb r0, [r2]
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0802EBF2
	movs r0, #1
	strb r0, [r2]
_0802EBF2:
	ldr r0, _0802EC04
	ldr r0, [r0]
	ldrb r0, [r0, #0x14]
	bl _0802FD64
	.align 2, 0
_0802EBFC: .4byte 0x02002E4E
_0802EC00: .4byte 0x0203E151
_0802EC04: .4byte 0x0203DFDC
_0802EC08:
	ldr r1, _0802EC24
	ldr r2, _0802EC28
	ldrb r0, [r2]
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0802EC1A
	movs r0, #1
	strb r0, [r2]
_0802EC1A:
	ldr r0, _0802EC2C
	ldr r0, [r0]
	ldrb r0, [r0, #0x14]
	bl _0802FD64
	.align 2, 0
_0802EC24: .4byte 0x02002E4E
_0802EC28: .4byte 0x0203E152
_0802EC2C: .4byte 0x0203DFDC
_0802EC30:
	ldr r1, _0802EC4C
	ldr r2, _0802EC50
	ldrb r0, [r2]
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0802EC42
	movs r0, #1
	strb r0, [r2]
_0802EC42:
	ldr r0, _0802EC54
	ldr r0, [r0]
	ldrb r0, [r0, #0x14]
	bl _0802FD64
	.align 2, 0
_0802EC4C: .4byte 0x02002E4E
_0802EC50: .4byte 0x0203E153
_0802EC54: .4byte 0x0203DFDC
_0802EC58:
	ldr r1, _0802EC74
	ldr r2, _0802EC78
	ldrb r0, [r2]
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0802EC6A
	movs r0, #1
	strb r0, [r2]
_0802EC6A:
	ldr r0, _0802EC7C
	ldr r0, [r0]
	ldrb r0, [r0, #0x14]
	bl _0802FD64
	.align 2, 0
_0802EC74: .4byte 0x02002E4E
_0802EC78: .4byte 0x0203E154
_0802EC7C: .4byte 0x0203DFDC
_0802EC80:
	ldr r1, _0802EC9C
	ldr r2, _0802ECA0
	ldrb r0, [r2]
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0802EC92
	movs r0, #1
	strb r0, [r2]
_0802EC92:
	ldr r0, _0802ECA4
	ldr r0, [r0]
	ldrb r0, [r0, #0x14]
	bl _0802FD64
	.align 2, 0
_0802EC9C: .4byte 0x02002E4E
_0802ECA0: .4byte 0x0203E155
_0802ECA4: .4byte 0x0203DFDC
_0802ECA8:
	ldr r1, _0802ECC4
	ldr r2, _0802ECC8
	ldrb r0, [r2]
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0802ECBA
	movs r0, #1
	strb r0, [r2]
_0802ECBA:
	ldr r0, _0802ECCC
	ldr r0, [r0]
	ldrb r0, [r0, #0x14]
	bl _0802FD64
	.align 2, 0
_0802ECC4: .4byte 0x02002E4E
_0802ECC8: .4byte 0x0203E156
_0802ECCC: .4byte 0x0203DFDC
_0802ECD0:
	ldr r1, _0802ECEC
	ldr r2, _0802ECF0
	ldrb r0, [r2]
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0802ECE2
	movs r0, #1
	strb r0, [r2]
_0802ECE2:
	ldr r0, _0802ECF4
	ldr r0, [r0]
	ldrb r0, [r0, #0x14]
	bl _0802FD64
	.align 2, 0
_0802ECEC: .4byte 0x02002E4E
_0802ECF0: .4byte 0x0203E157
_0802ECF4: .4byte 0x0203DFDC
_0802ECF8:
	ldr r1, _0802ED14
	ldr r2, _0802ED18
	ldrb r0, [r2]
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0802ED0A
	movs r0, #1
	strb r0, [r2]
_0802ED0A:
	ldr r0, _0802ED1C
	ldr r0, [r0]
	ldrb r0, [r0, #0x14]
	bl _0802FD64
	.align 2, 0
_0802ED14: .4byte 0x02002E4E
_0802ED18: .4byte 0x0203E158
_0802ED1C: .4byte 0x0203DFDC
_0802ED20:
	ldr r1, _0802ED3C
	ldr r2, _0802ED40
	ldrb r0, [r2]
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0802ED32
	movs r0, #1
	strb r0, [r2]
_0802ED32:
	ldr r0, _0802ED44
	ldr r0, [r0]
	ldrb r0, [r0, #0x14]
	bl _0802FD64
	.align 2, 0
_0802ED3C: .4byte 0x02002E4E
_0802ED40: .4byte 0x0203E159
_0802ED44: .4byte 0x0203DFDC
_0802ED48:
	ldr r1, _0802ED64
	ldr r2, _0802ED68
	ldrb r0, [r2]
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0802ED5A
	movs r0, #1
	strb r0, [r2]
_0802ED5A:
	ldr r0, _0802ED6C
	ldr r0, [r0]
	ldrb r0, [r0, #0x14]
	bl _0802FD64
	.align 2, 0
_0802ED64: .4byte 0x02002E4E
_0802ED68: .4byte 0x0203E15A
_0802ED6C: .4byte 0x0203DFDC
_0802ED70:
	ldr r1, _0802ED8C
	ldr r2, _0802ED90
	ldrb r0, [r2]
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0802ED82
	movs r0, #1
	strb r0, [r2]
_0802ED82:
	ldr r0, _0802ED94
	ldr r0, [r0]
	ldrb r0, [r0, #0x14]
	bl _0802FD64
	.align 2, 0
_0802ED8C: .4byte 0x02002E4E
_0802ED90: .4byte 0x0203E15D
_0802ED94: .4byte 0x0203DFDC
_0802ED98:
	ldr r1, _0802EDB4
	ldr r2, _0802EDB8
	ldrb r0, [r2]
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0802EDAA
	movs r0, #1
	strb r0, [r2]
_0802EDAA:
	ldr r0, _0802EDBC
	ldr r0, [r0]
	ldrb r0, [r0, #0x14]
	bl _0802FD64
	.align 2, 0
_0802EDB4: .4byte 0x02002E4E
_0802EDB8: .4byte 0x0203E15E
_0802EDBC: .4byte 0x0203DFDC
_0802EDC0:
	ldr r1, _0802EDDC
	ldr r2, _0802EDE0
	ldrb r0, [r2]
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0802EDD2
	movs r0, #1
	strb r0, [r2]
_0802EDD2:
	ldr r0, _0802EDE4
	ldr r0, [r0]
	ldrb r0, [r0, #0x14]
	bl _0802FD64
	.align 2, 0
_0802EDDC: .4byte 0x02002E4E
_0802EDE0: .4byte 0x0203E15B
_0802EDE4: .4byte 0x0203DFDC
_0802EDE8:
	ldr r1, _0802EE04
	ldr r2, _0802EE08
	ldrb r0, [r2]
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0802EDFA
	movs r0, #1
	strb r0, [r2]
_0802EDFA:
	ldr r0, _0802EE0C
	ldr r0, [r0]
	ldrb r0, [r0, #0x14]
	bl _0802FD64
	.align 2, 0
_0802EE04: .4byte 0x02002E4E
_0802EE08: .4byte 0x0203E15C
_0802EE0C: .4byte 0x0203DFDC
_0802EE10:
	ldr r1, _0802EE2C
	ldr r2, _0802EE30
	ldrb r0, [r2]
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0802EE22
	movs r0, #1
	strb r0, [r2]
_0802EE22:
	ldr r0, _0802EE34
	ldr r0, [r0]
	ldrb r0, [r0, #0x14]
	bl _0802FD64
	.align 2, 0
_0802EE2C: .4byte 0x02002E4E
_0802EE30: .4byte 0x0203E160
_0802EE34: .4byte 0x0203DFDC
_0802EE38:
	ldr r1, _0802EE54
	ldr r2, _0802EE58
	ldrb r0, [r2]
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0802EE4A
	movs r0, #1
	strb r0, [r2]
_0802EE4A:
	ldr r0, _0802EE5C
	ldr r0, [r0]
	ldrb r0, [r0, #0x14]
	bl _0802FD64
	.align 2, 0
_0802EE54: .4byte 0x02002E4E
_0802EE58: .4byte 0x0203E161
_0802EE5C: .4byte 0x0203DFDC
_0802EE60:
	ldr r1, _0802EE7C
	ldr r2, _0802EE80
	ldrb r0, [r2]
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0802EE72
	movs r0, #1
	strb r0, [r2]
_0802EE72:
	ldr r0, _0802EE84
	ldr r0, [r0]
	ldrb r0, [r0, #0x14]
	bl _0802FD64
	.align 2, 0
_0802EE7C: .4byte 0x02002E4E
_0802EE80: .4byte 0x0203E163
_0802EE84: .4byte 0x0203DFDC
_0802EE88:
	ldr r1, _0802EEA4
	ldr r2, _0802EEA8
	ldrb r0, [r2]
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0802EE9A
	movs r0, #1
	strb r0, [r2]
_0802EE9A:
	ldr r0, _0802EEAC
	ldr r0, [r0]
	ldrb r0, [r0, #0x14]
	bl _0802FD64
	.align 2, 0
_0802EEA4: .4byte 0x02002E4E
_0802EEA8: .4byte 0x0203E164
_0802EEAC: .4byte 0x0203DFDC
_0802EEB0:
	ldr r1, _0802EECC
	ldr r2, _0802EED0
	ldrb r0, [r2]
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0802EEC2
	movs r0, #1
	strb r0, [r2]
_0802EEC2:
	ldr r0, _0802EED4
	ldr r0, [r0]
	ldrb r0, [r0, #0x14]
	bl _0802FD64
	.align 2, 0
_0802EECC: .4byte 0x02002E4E
_0802EED0: .4byte 0x0203E165
_0802EED4: .4byte 0x0203DFDC
_0802EED8:
	ldr r1, _0802EEF4
	ldr r2, _0802EEF8
	ldrb r0, [r2]
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0802EEEA
	movs r0, #1
	strb r0, [r2]
_0802EEEA:
	ldr r0, _0802EEFC
	ldr r0, [r0]
	ldrb r0, [r0, #0x14]
	bl _0802FD64
	.align 2, 0
_0802EEF4: .4byte 0x02002E4E
_0802EEF8: .4byte 0x0203E166
_0802EEFC: .4byte 0x0203DFDC
_0802EF00:
	ldr r1, _0802EF1C
	ldr r2, _0802EF20
	ldrb r0, [r2]
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0802EF12
	movs r0, #1
	strb r0, [r2]
_0802EF12:
	ldr r0, _0802EF24
	ldr r0, [r0]
	ldrb r0, [r0, #0x14]
	bl _0802FD64
	.align 2, 0
_0802EF1C: .4byte 0x02002E4E
_0802EF20: .4byte 0x0203E167
_0802EF24: .4byte 0x0203DFDC
_0802EF28:
	ldr r1, _0802EF44
	ldr r2, _0802EF48
	ldrb r0, [r2]
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0802EF3A
	movs r0, #1
	strb r0, [r2]
_0802EF3A:
	ldr r0, _0802EF4C
	ldr r0, [r0]
	ldrb r0, [r0, #0x14]
	bl _0802FD64
	.align 2, 0
_0802EF44: .4byte 0x02002E4E
_0802EF48: .4byte 0x0203E168
_0802EF4C: .4byte 0x0203DFDC
_0802EF50:
	ldr r1, _0802EF60
	movs r0, #1
	strb r0, [r1]
	ldr r0, _0802EF64
	ldr r0, [r0]
	ldrb r0, [r0, #0x14]
	bl _0802FD64
	.align 2, 0
_0802EF60: .4byte 0x02002E4E
_0802EF64: .4byte 0x0203DFDC
_0802EF68:
	ldr r1, _0802EF80
	movs r0, #0
	strb r0, [r1]
	ldr r1, _0802EF84
	movs r0, #1
	strb r0, [r1]
	ldr r0, _0802EF88
	ldr r0, [r0]
	ldrb r0, [r0, #0x14]
	bl _0802FD64
	.align 2, 0
_0802EF80: .4byte 0x0203E16A
_0802EF84: .4byte 0x02002E4E
_0802EF88: .4byte 0x0203DFDC
_0802EF8C:
	ldr r1, _0802EFA0
	ldr r0, _0802EFA4
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _0802EFA8
	ldr r0, [r0]
	ldrb r0, [r0, #0x14]
	bl _0802FD64
	.align 2, 0
_0802EFA0: .4byte 0x02002E4E
_0802EFA4: .4byte byte_20021F8
_0802EFA8: .4byte 0x0203DFDC
_0802EFAC:
	movs r4, #0xd1
	lsls r4, r4, #1
	adds r0, r4, #0
	movs r1, #0
	bl sub_80342CC
	cmp r0, #0
	bne _0802EFC4
	adds r0, r4, #0
	movs r1, #0
	bl sub_80342F8
_0802EFC4:
	ldr r1, _0802EFD4
	movs r0, #0
	strb r0, [r1]
	ldr r0, _0802EFD8
	ldr r0, [r0]
	ldrb r0, [r0, #0x14]
	bl _0802FD64
	.align 2, 0
_0802EFD4: .4byte 0x02002E4E
_0802EFD8: .4byte 0x0203DFDC
_0802EFDC:
	ldr r4, _0802F004
	adds r0, r4, #0
	movs r1, #0
	bl sub_80342CC
	cmp r0, #0
	bne _0802EFF2
	adds r0, r4, #0
	movs r1, #0
	bl sub_80342F8
_0802EFF2:
	ldr r1, _0802F008
	movs r0, #0
	strb r0, [r1]
	ldr r0, _0802F00C
	ldr r0, [r0]
	ldrb r0, [r0, #0x14]
	bl _0802FD64
	.align 2, 0
_0802F004: .4byte 0x00000179
_0802F008: .4byte 0x02002E4E
_0802F00C: .4byte 0x0203DFDC
_0802F010:
	ldr r1, _0802F020
	movs r0, #0
	strb r0, [r1]
	ldr r0, _0802F024
	ldr r0, [r0]
	ldrb r0, [r0, #0x14]
	bl _0802FD64
	.align 2, 0
_0802F020: .4byte 0x02002E4E
_0802F024: .4byte 0x0203DFDC
_0802F028:
	ldr r1, _0802F044
	movs r0, #0
	strb r0, [r1]
	ldr r0, _0802F048
	ldr r0, [r0]
	ldrb r0, [r0, #0x14]
	subs r0, #1
	bl sub_8025EF4
	movs r0, #0x8f
	lsls r0, r0, #1
	movs r1, #0
	bl _0802FD94
	.align 2, 0
_0802F044: .4byte 0x02002E4E
_0802F048: .4byte 0x0203DFDC
_0802F04C:
	ldr r1, _0802F07C
	ldr r0, _0802F080
	ldr r2, [r0]
	str r2, [r1]
	ldr r1, _0802F084
	ldrb r0, [r2, #0x18]
	subs r0, #1
	strb r0, [r1]
	ldr r5, _0802F088
	ldrb r1, [r5]
	cmp r1, #0
	bne _0802F0D0
	ldr r0, _0802F08C
	ldrb r0, [r0, #6]
	cmp r0, #0
	bne _0802F094
	ldr r1, _0802F090
	movs r0, #1
	strb r0, [r1]
	ldrb r0, [r2, #0x14]
	subs r0, #1
	bl sub_8025EF4
	b _0802F0AA
	.align 2, 0
_0802F07C: .4byte 0x020021C0
_0802F080: .4byte 0x0203DFDC
_0802F084: .4byte 0x02002E4B
_0802F088: .4byte 0x02002E4C
_0802F08C: .4byte 0x0200209A
_0802F090: .4byte 0x02002E4E
_0802F094:
	ldr r0, _0802F0C4
	strb r1, [r0]
	ldrb r0, [r2, #0x14]
	bl sub_8025EF4
	ldr r0, _0802F0C8
	movs r1, #0
	movs r2, #4
	movs r3, #0
	bl sub_8034460
_0802F0AA:
	ldr r4, _0802F0CC
	adds r0, r4, #0
	movs r1, #0
	bl sub_80342CC
	cmp r0, #0
	beq _0802F0BC
	bl _0802FDA8
_0802F0BC:
	adds r0, r4, #0
	bl _0802FA2C
	.align 2, 0
_0802F0C4: .4byte 0x02002E4E
_0802F0C8: .4byte 0x00000161
_0802F0CC: .4byte 0x000001A1
_0802F0D0:
	ldr r0, _0802F0F0
	ldrb r4, [r0]
	cmp r4, #0
	bne _0802F0F8
	ldr r1, _0802F0F4
	movs r0, #1
	strb r0, [r1]
	adds r0, r2, #0
	adds r0, #0x24
	ldrb r0, [r0]
	subs r0, #1
	bl sub_8025EF4
	strb r4, [r5]
	bl _0802FDA8
	.align 2, 0
_0802F0F0: .4byte 0x02002E4D
_0802F0F4: .4byte 0x02002E4E
_0802F0F8:
	ldr r1, _0802F110
	movs r0, #0
	strb r0, [r1]
	adds r0, r2, #0
	adds r0, #0x24
	ldrb r0, [r0]
	bl sub_8025EF4
	movs r0, #0xa0
	movs r1, #0
	bl _0802FD94
	.align 2, 0
_0802F110: .4byte 0x02002E4E
_0802F114:
	movs r0, #0xef
	movs r1, #0
	bl sub_80342CC
	cmp r0, #0
	beq _0802F158
	movs r0, #0xf0
	movs r1, #0
	bl sub_80342CC
	cmp r0, #0
	bne _0802F134
	movs r0, #0xf0
	movs r1, #0
	bl sub_80342F8
_0802F134:
	ldr r1, _0802F150
	movs r0, #0
	strb r0, [r1]
	ldr r0, _0802F154
	ldr r0, [r0]
	adds r0, #0x24
	ldrb r0, [r0]
	subs r0, #1
	bl sub_8025EF4
	movs r0, #0x4c
	movs r1, #0
	bl _0802FD94
	.align 2, 0
_0802F150: .4byte 0x02002E4E
_0802F154: .4byte 0x0203DFDC
_0802F158:
	movs r0, #0xf0
	movs r1, #0
	bl sub_80342CC
	adds r1, r0, #0
	cmp r1, #0
	bne _0802F188
	ldr r0, _0802F180
	strb r1, [r0]
	ldr r0, _0802F184
	ldr r0, [r0]
	ldrb r0, [r0, #0x14]
	subs r0, #1
	bl sub_8025EF4
	movs r0, #0xf0
	movs r1, #0
	bl _0802FD94
	.align 2, 0
_0802F180: .4byte 0x02002E4E
_0802F184: .4byte 0x0203DFDC
_0802F188:
	ldr r1, _0802F198
	movs r0, #1
	strb r0, [r1]
	ldr r0, _0802F19C
	ldr r0, [r0]
	ldrb r0, [r0, #0x18]
	bl _0802FD64
	.align 2, 0
_0802F198: .4byte 0x02002E4E
_0802F19C: .4byte 0x0203DFDC
_0802F1A0:
	ldr r1, _0802F1C0
	movs r0, #0
	strb r0, [r1]
	ldr r4, _0802F1C4
	ldr r0, [r4]
	ldrb r0, [r0, #0x14]
	subs r0, #1
	bl sub_8025EF4
	ldr r0, [r4]
	movs r2, #0x1c
	ldrsh r1, [r0, r2]
	movs r0, #0x9e
	bl _0802FD94
	.align 2, 0
_0802F1C0: .4byte 0x02002E4E
_0802F1C4: .4byte 0x0203DFDC
_0802F1C8:
	movs r0, #0xc1
	lsls r0, r0, #1
	movs r1, #0
	bl sub_80342CC
	cmp r0, #0
	bne _0802F1F0
	ldr r1, _0802F1E8
	movs r0, #1
	strb r0, [r1]
	ldr r0, _0802F1EC
	ldr r0, [r0]
	ldrb r0, [r0, #0x18]
	bl _0802FD64
	.align 2, 0
_0802F1E8: .4byte 0x02002E4E
_0802F1EC: .4byte 0x0203DFDC
_0802F1F0:
	ldr r1, _0802F21C
	movs r0, #0
	strb r0, [r1]
	ldr r4, _0802F220
	ldr r0, [r4]
	ldrb r0, [r0, #0x14]
	subs r0, #1
	bl sub_8025EF4
	ldr r0, [r4]
	movs r2, #0x1c
	ldrsh r1, [r0, r2]
	movs r0, #0x9f
	movs r2, #4
	movs r3, #0
	bl sub_8034460
	movs r0, #0xee
	movs r1, #0
	bl _0802FD94
	.align 2, 0
_0802F21C: .4byte 0x02002E4E
_0802F220: .4byte 0x0203DFDC
_0802F224:
	movs r0, #0xf5
	movs r1, #0
	bl sub_80342CC
	adds r4, r0, #0
	cmp r4, #0
	bne _0802F2C0
	ldr r0, _0802F26C
	movs r1, #0
	bl sub_80342CC
	cmp r0, #0
	beq _0802F278
	movs r0, #0xec
	movs r1, #0
	bl sub_80342CC
	cmp r0, #0
	bne _0802F252
	movs r0, #0xec
	movs r1, #0
	bl sub_80342F8
_0802F252:
	ldr r0, _0802F270
	strb r4, [r0]
	ldr r0, _0802F274
	ldr r0, [r0]
	adds r0, #0x24
	ldrb r0, [r0]
	subs r0, #1
	bl sub_8025EF4
	movs r0, #0xf5
	movs r1, #0
	bl _0802FD94
	.align 2, 0
_0802F26C: .4byte 0x00000175
_0802F270: .4byte 0x02002E4E
_0802F274: .4byte 0x0203DFDC
_0802F278:
	movs r0, #0xec
	movs r1, #0
	bl sub_80342CC
	adds r1, r0, #0
	cmp r1, #0
	bne _0802F2A8
	ldr r0, _0802F2A0
	strb r1, [r0]
	ldr r0, _0802F2A4
	ldr r0, [r0]
	ldrb r0, [r0, #0x14]
	subs r0, #1
	bl sub_8025EF4
	movs r0, #0xec
	movs r1, #0
	bl _0802FD94
	.align 2, 0
_0802F2A0: .4byte 0x02002E4E
_0802F2A4: .4byte 0x0203DFDC
_0802F2A8:
	ldr r1, _0802F2B8
	movs r0, #1
	strb r0, [r1]
	ldr r0, _0802F2BC
	ldr r0, [r0]
	ldrb r0, [r0, #0x18]
	bl _0802FD64
	.align 2, 0
_0802F2B8: .4byte 0x02002E4E
_0802F2BC: .4byte 0x0203DFDC
_0802F2C0:
	ldr r1, _0802F2D4
	movs r0, #1
	strb r0, [r1]
	ldr r0, _0802F2D8
	ldr r0, [r0]
	adds r0, #0x28
	ldrb r0, [r0]
	bl _0802FD64
	.align 2, 0
_0802F2D4: .4byte 0x02002E4E
_0802F2D8: .4byte 0x0203DFDC
_0802F2DC:
	movs r0, #0x37
	movs r1, #0
	bl sub_80342CC
	cmp r0, #0
	beq _0802F32C
	movs r0, #0x38
	movs r1, #0
	bl sub_80342CC
	cmp r0, #0
	beq _0802F32C
	movs r0, #0xe9
	movs r1, #0
	bl sub_80342CC
	cmp r0, #0
	bne _0802F308
	movs r0, #0xe9
	movs r1, #0
	bl sub_80342F8
_0802F308:
	ldr r1, _0802F324
	movs r0, #0
	strb r0, [r1]
	ldr r0, _0802F328
	ldr r0, [r0]
	adds r0, #0x24
	ldrb r0, [r0]
	subs r0, #1
	bl sub_8025EF4
	movs r0, #0x36
	movs r1, #0
	bl _0802FD94
	.align 2, 0
_0802F324: .4byte 0x02002E4E
_0802F328: .4byte 0x0203DFDC
_0802F32C:
	movs r0, #0xe9
	movs r1, #0
	bl sub_80342CC
	adds r1, r0, #0
	cmp r1, #0
	bne _0802F358
	ldr r0, _0802F350
	strb r1, [r0]
	ldr r0, _0802F354
	ldr r0, [r0]
	ldrb r0, [r0, #0x14]
	subs r0, #1
	bl sub_8025EF4
	movs r0, #0xe9
	b _0802FA2C
	.align 2, 0
_0802F350: .4byte 0x02002E4E
_0802F354: .4byte 0x0203DFDC
_0802F358:
	ldr r1, _0802F368
	movs r0, #1
	strb r0, [r1]
	ldr r0, _0802F36C
	ldr r0, [r0]
	ldrb r0, [r0, #0x18]
	bl _0802FD64
	.align 2, 0
_0802F368: .4byte 0x02002E4E
_0802F36C: .4byte 0x0203DFDC
_0802F370:
	movs r0, #0xe8
	movs r1, #0
	bl sub_80342CC
	adds r1, r0, #0
	cmp r1, #0
	bne _0802F3BC
	ldr r0, _0802F3B0
	strb r1, [r0]
	ldr r0, _0802F3B4
	ldr r0, [r0]
	ldrb r0, [r0, #0x14]
	subs r0, #1
	bl sub_8025EF4
	movs r0, #0xe8
	movs r1, #0
	bl sub_80342F8
	movs r0, #0xea
	movs r1, #0
	bl sub_80342CC
	cmp r0, #0
	bne _0802F3A6
	bl _0802FDA8
_0802F3A6:
	ldr r0, _0802F3B8
	movs r1, #0
	bl _0802FD94
	.align 2, 0
_0802F3B0: .4byte 0x02002E4E
_0802F3B4: .4byte 0x0203DFDC
_0802F3B8: .4byte 0x0000017D
_0802F3BC:
	movs r0, #0xea
	movs r1, #0
	bl sub_80342CC
	cmp r0, #0
	bne _0802F3E0
	ldr r1, _0802F3D8
	movs r0, #1
	strb r0, [r1]
	ldr r0, _0802F3DC
	ldr r0, [r0]
	ldrb r0, [r0, #0x18]
	bl _0802FD64
	.align 2, 0
_0802F3D8: .4byte 0x02002E4E
_0802F3DC: .4byte 0x0203DFDC
_0802F3E0:
	ldr r1, _0802F3FC
	movs r0, #0
	strb r0, [r1]
	ldr r0, _0802F400
	ldr r0, [r0]
	adds r0, #0x24
	ldrb r0, [r0]
	subs r0, #1
	bl sub_8025EF4
	movs r0, #0x37
	movs r1, #0
	bl _0802FD94
	.align 2, 0
_0802F3FC: .4byte 0x02002E4E
_0802F400: .4byte 0x0203DFDC
_0802F404:
	movs r0, #0xe7
	movs r1, #0
	bl sub_80342CC
	adds r1, r0, #0
	cmp r1, #0
	bne _0802F44C
	ldr r0, _0802F444
	strb r1, [r0]
	ldr r0, _0802F448
	ldr r0, [r0]
	ldrb r0, [r0, #0x14]
	subs r0, #1
	bl sub_8025EF4
	movs r0, #0xe7
	movs r1, #0
	bl sub_80342F8
	movs r0, #0xe6
	movs r1, #0
	bl sub_80342CC
	cmp r0, #0
	bne _0802F43A
	bl _0802FDA8
_0802F43A:
	movs r0, #0xbf
	lsls r0, r0, #1
	movs r1, #0
	bl _0802FD94
	.align 2, 0
_0802F444: .4byte 0x02002E4E
_0802F448: .4byte 0x0203DFDC
_0802F44C:
	movs r0, #0xe6
	movs r1, #0
	bl sub_80342CC
	cmp r0, #0
	bne _0802F470
	ldr r1, _0802F468
	movs r0, #1
	strb r0, [r1]
	ldr r0, _0802F46C
	ldr r0, [r0]
	ldrb r0, [r0, #0x18]
	bl _0802FD64
	.align 2, 0
_0802F468: .4byte 0x02002E4E
_0802F46C: .4byte 0x0203DFDC
_0802F470:
	ldr r1, _0802F48C
	movs r0, #0
	strb r0, [r1]
	ldr r0, _0802F490
	ldr r0, [r0]
	adds r0, #0x24
	ldrb r0, [r0]
	subs r0, #1
	bl sub_8025EF4
	movs r0, #0x38
	movs r1, #0
	bl _0802FD94
	.align 2, 0
_0802F48C: .4byte 0x02002E4E
_0802F490: .4byte 0x0203DFDC
_0802F494:
	movs r0, #0xe6
	movs r1, #0
	bl sub_80342CC
	adds r1, r0, #0
	cmp r1, #0
	bne _0802F4C4
	ldr r0, _0802F4BC
	strb r1, [r0]
	ldr r0, _0802F4C0
	ldr r0, [r0]
	ldrb r0, [r0, #0x14]
	subs r0, #1
	bl sub_8025EF4
	movs r0, #0xe6
	movs r1, #0
	bl _0802FD94
	.align 2, 0
_0802F4BC: .4byte 0x02002E4E
_0802F4C0: .4byte 0x0203DFDC
_0802F4C4:
	ldr r1, _0802F4D4
	movs r0, #1
	strb r0, [r1]
	ldr r0, _0802F4D8
	ldr r0, [r0]
	ldrb r0, [r0, #0x18]
	bl _0802FD64
	.align 2, 0
_0802F4D4: .4byte 0x02002E4E
_0802F4D8: .4byte 0x0203DFDC
_0802F4DC:
	movs r4, #0
	movs r0, #1
	bl sub_8016A5C
	cmp r0, #0
	bne _0802F506
	movs r0, #2
	bl sub_8016A5C
	cmp r0, #0
	bne _0802F506
	movs r0, #3
	bl sub_8016A5C
	cmp r0, #0
	bne _0802F506
	movs r0, #4
	bl sub_8016A5C
	cmp r0, #0
	beq _0802F508
_0802F506:
	movs r4, #1
_0802F508:
	cmp r4, #0
	bne _0802F568
	ldr r0, _0802F53C
	ldrb r0, [r0, #6]
	cmp r0, #0
	bne _0802F598
	ldr r4, _0802F540
	adds r0, r4, #0
	movs r1, #0
	bl sub_80342CC
	adds r1, r0, #0
	cmp r1, #0
	bne _0802F550
	ldr r0, _0802F544
	strb r1, [r0]
	ldr r1, _0802F548
	ldr r0, _0802F54C
	ldrh r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl sub_8025EF4
	adds r0, r4, #0
	b _0802FA2C
	.align 2, 0
_0802F53C: .4byte gGameStatus
_0802F540: .4byte 0x00000115
_0802F544: .4byte 0x02002E4E
_0802F548: .4byte 0x080CF378
_0802F54C: .4byte gLoadedRoomLevel
_0802F550:
	ldr r1, _0802F560
	movs r0, #1
	strb r0, [r1]
	ldr r0, _0802F564
	ldr r0, [r0]
	ldrb r0, [r0, #0x14]
	bl _0802FD64
	.align 2, 0
_0802F560: .4byte 0x02002E4E
_0802F564: .4byte 0x0203DFDC
_0802F568:
	ldr r0, _0802F588
	ldrb r1, [r0, #6]
	cmp r1, #0
	bne _0802F598
	ldr r0, _0802F58C
	strb r1, [r0]
	ldr r0, _0802F590
	ldr r0, [r0]
	ldrb r0, [r0, #0x18]
	subs r0, #1
	bl sub_8025EF4
	ldr r0, _0802F594
	movs r1, #0
	bl _0802FD94
	.align 2, 0
_0802F588: .4byte gGameStatus
_0802F58C: .4byte 0x02002E4E
_0802F590: .4byte 0x0203DFDC
_0802F594: .4byte 0x0000015F
_0802F598:
	ldr r1, _0802F5BC
	movs r0, #0
	strb r0, [r1]
	ldr r0, _0802F5C0
	ldr r0, [r0]
	ldrb r0, [r0, #0x18]
	bl sub_8025EF4
	ldr r0, _0802F5C4
	movs r1, #0
	movs r2, #4
	movs r3, #0
	bl sub_8034460
	ldr r0, _0802F5C8
	movs r1, #0
	bl _0802FD94
	.align 2, 0
_0802F5BC: .4byte 0x02002E4E
_0802F5C0: .4byte 0x0203DFDC
_0802F5C4: .4byte 0x000001A3
_0802F5C8: .4byte 0x0000015F
_0802F5CC:
	movs r0, #0x2a
	movs r1, #0
	bl sub_80342CC
	adds r4, r0, #0
	cmp r4, #0
	beq _0802F5F4
	ldr r1, _0802F5EC
	movs r0, #1
	strb r0, [r1]
	ldr r0, _0802F5F0
	ldr r0, [r0]
	ldrb r0, [r0, #0x14]
	bl _0802FD64
	.align 2, 0
_0802F5EC: .4byte 0x02002E4E
_0802F5F0: .4byte 0x0203DFDC
_0802F5F4:
	ldr r2, _0802F610
	ldr r1, _0802F614
	ldrb r0, [r2]
	ldrb r1, [r1]
	cmp r0, r1
	bne _0802F620
	ldr r1, _0802F618
	movs r0, #1
	strb r0, [r1]
	ldr r0, _0802F61C
	ldr r0, [r0]
	adds r0, #0x28
	ldrb r0, [r0]
	b _0802FD64
	.align 2, 0
_0802F610: .4byte 0x0200107E
_0802F614: .4byte 0x0200107F
_0802F618: .4byte 0x02002E4E
_0802F61C: .4byte 0x0203DFDC
_0802F620:
	ldr r0, _0802F64C
	ldr r1, _0802F650
	ldrb r2, [r2]
	adds r1, r2, r1
	ldrb r0, [r0]
	adds r3, r2, #0
	ldrb r1, [r1]
	cmp r0, r1
	bhs _0802F65C
	ldr r1, _0802F654
	movs r0, #1
	strb r0, [r1]
	ldr r0, _0802F658
	ldr r1, [r0]
	subs r0, r3, #1
	ldrb r1, [r1, #0x18]
	adds r0, r0, r1
	bl sub_8025EF4
	movs r0, #0x29
	movs r1, #0
	b _0802FD94
	.align 2, 0
_0802F64C: .4byte gGameStatus
_0802F650: .4byte 0x080CC8EC
_0802F654: .4byte 0x02002E4E
_0802F658: .4byte 0x0203DFDC
_0802F65C:
	ldr r0, _0802F678
	strb r4, [r0]
	ldr r0, _0802F67C
	ldr r1, [r0]
	adds r1, #0x24
	subs r0, r2, #1
	ldrb r1, [r1]
	adds r0, r0, r1
	bl sub_8025EF4
	movs r0, #0x29
	movs r1, #0
	b _0802FD94
	.align 2, 0
_0802F678: .4byte 0x02002E4E
_0802F67C: .4byte 0x0203DFDC
_0802F680:
	movs r0, #0xeb
	movs r1, #0
	bl sub_80342CC
	adds r1, r0, #0
	cmp r1, #0
	bne _0802F6EC
	ldr r0, _0802F6D0
	strb r1, [r0]
	ldr r0, _0802F6D4
	ldr r0, [r0]
	adds r0, #0x28
	ldrb r0, [r0]
	subs r0, #1
	bl sub_8025EF4
	movs r0, #0xeb
	movs r1, #0
	movs r2, #4
	movs r3, #0
	bl sub_8034460
	ldr r3, _0802F6D8
	ldr r1, _0802F6DC
	ldrb r0, [r3]
	ldrb r1, [r1]
	cmp r0, r1
	bne _0802F6BA
	b _0802FDA8
_0802F6BA:
	ldr r2, _0802F6E0
	ldr r1, _0802F6E4
	adds r0, r0, r1
	ldrb r1, [r2, #1]
	ldrb r0, [r0]
	cmp r1, r0
	bhs _0802F6CA
	b _0802FDA8
_0802F6CA:
	ldr r0, _0802F6E8
	movs r1, #0
	b _0802FD94
	.align 2, 0
_0802F6D0: .4byte 0x02002E4E
_0802F6D4: .4byte 0x0203DFDC
_0802F6D8: .4byte 0x0200107C
_0802F6DC: .4byte 0x0200107D
_0802F6E0: .4byte gGameStatus
_0802F6E4: .4byte 0x080CC8E4
_0802F6E8: .4byte 0x00000151
_0802F6EC:
	ldr r2, _0802F714
	ldr r1, _0802F718
	ldrb r0, [r2]
	ldrb r1, [r1]
	cmp r0, r1
	bne _0802F724
	ldr r1, _0802F71C
	movs r0, #1
	strb r0, [r1]
	ldr r0, _0802F720
	ldr r0, [r0]
	adds r0, #0x24
	ldrb r0, [r0]
	subs r0, #1
	bl sub_8025EF4
	bl sub_800F7A0
	b _0802FDA8
	.align 2, 0
_0802F714: .4byte 0x0200107C
_0802F718: .4byte 0x0200107D
_0802F71C: .4byte 0x02002E4E
_0802F720: .4byte 0x0203DFDC
_0802F724:
	ldr r0, _0802F74C
	ldr r1, _0802F750
	ldrb r2, [r2]
	adds r1, r2, r1
	ldrb r0, [r0, #1]
	ldrb r1, [r1]
	cmp r0, r1
	bhs _0802F75C
	ldr r1, _0802F754
	movs r0, #1
	strb r0, [r1]
	ldr r0, _0802F758
	ldr r1, [r0]
	subs r0, r2, #1
	ldrb r1, [r1, #0x18]
	adds r0, r0, r1
	bl sub_8025EF4
	b _0802FDA8
	.align 2, 0
_0802F74C: .4byte gGameStatus
_0802F750: .4byte 0x080CC8E4
_0802F754: .4byte 0x02002E4E
_0802F758: .4byte 0x0203DFDC
_0802F75C:
	ldr r1, _0802F778
	movs r0, #0
	strb r0, [r1]
	ldr r0, _0802F77C
	ldr r0, [r0]
	ldrb r0, [r0, #0x14]
	subs r0, #1
	bl sub_8025EF4
	movs r0, #0xc2
	lsls r0, r0, #1
	movs r1, #0
	b _0802FD94
	.align 2, 0
_0802F778: .4byte 0x02002E4E
_0802F77C: .4byte 0x0203DFDC
_0802F780:
	movs r0, #0x89
	lsls r0, r0, #1
	movs r1, #0
	bl sub_80342CC
	adds r1, r0, #0
	cmp r1, #0
	bne _0802F800
	ldr r0, _0802F7AC
	strb r1, [r0]
	ldr r0, _0802F7B0
	ldrb r0, [r0]
	cmp r0, #0
	bne _0802F7BC
	ldr r1, _0802F7B4
	ldr r0, _0802F7B8
	ldrh r0, [r0]
	adds r0, r0, r1
	ldrb r0, [r0]
	bl sub_8025EF4
	b _0802F7CC
	.align 2, 0
_0802F7AC: .4byte 0x02002E4E
_0802F7B0: .4byte 0x020021BE
_0802F7B4: .4byte 0x080CEDC3
_0802F7B8: .4byte gLoadedRoomLevel
_0802F7BC:
	ldr r1, _0802F7F4
	ldr r0, _0802F7F8
	ldrh r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl sub_8025EF4
_0802F7CC:
	movs r0, #0x89
	lsls r0, r0, #1
	movs r1, #0
	movs r2, #4
	movs r3, #0
	bl sub_8034460
	ldr r1, _0802F7FC
	ldr r0, _0802F7F8
	ldrh r0, [r0]
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _0802F7EA
	b _0802FDA8
_0802F7EA:
	movs r0, #0xbb
	lsls r0, r0, #1
	movs r1, #0
	b _0802FD94
	.align 2, 0
_0802F7F4: .4byte 0x080CF3D0
_0802F7F8: .4byte gLoadedRoomLevel
_0802F7FC: .4byte 0x0203E110
_0802F800:
	ldr r5, _0802F824
	ldr r0, _0802F828
	ldrh r3, [r0]
	adds r1, r3, r5
	ldrb r1, [r1]
	adds r4, r0, #0
	cmp r1, #0
	bne _0802F834
	ldr r1, _0802F82C
	movs r0, #1
	strb r0, [r1]
	ldr r1, _0802F830
	ldrh r0, [r4]
	adds r0, r0, r1
	ldrb r0, [r0]
	bl sub_8025EF4
	b _0802FDA8
	.align 2, 0
_0802F824: .4byte 0x0203E110
_0802F828: .4byte gLoadedRoomLevel
_0802F82C: .4byte 0x02002E4E
_0802F830: .4byte 0x080CEDC9
_0802F834:
	ldr r1, _0802F870
	adds r1, r3, r1
	ldr r2, _0802F874
	lsls r0, r3, #2
	adds r0, r0, r3
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrb r1, [r1]
	ldrb r0, [r0, #5]
	cmp r1, r0
	bne _0802F884
	ldr r1, _0802F878
	movs r0, #1
	strb r0, [r1]
	ldr r1, _0802F87C
	ldrh r0, [r4]
	adds r0, r0, r1
	movs r1, #1
	strb r1, [r0]
	ldr r1, _0802F880
	ldrh r0, [r4]
	adds r0, r0, r1
	ldrb r0, [r0]
	bl sub_8025EF4
	movs r0, #0x8a
	lsls r0, r0, #1
	movs r1, #0
	b _0802FD94
	.align 2, 0
_0802F870: .4byte 0x0203E116
_0802F874: .4byte 0x080CC84C
_0802F878: .4byte 0x02002E4E
_0802F87C: .4byte 0x0203E11C
_0802F880: .4byte 0x080CEDF3
_0802F884:
	ldr r1, _0802F8A0
	movs r0, #1
	strb r0, [r1]
	ldrh r0, [r4]
	adds r0, r0, r5
	ldrb r0, [r0]
	subs r0, #1
	cmp r0, #4
	bhi _0802F8FC
	lsls r0, r0, #2
	ldr r1, _0802F8A4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0802F8A0: .4byte 0x02002E4E
_0802F8A4: .4byte 0x0802F8A8
_0802F8A8: @ jump table
	.4byte _0802F8BC @ case 0
	.4byte _0802F8C4 @ case 1
	.4byte _0802F8CC @ case 2
	.4byte _0802F8D4 @ case 3
	.4byte _0802F8DC @ case 4
_0802F8BC:
	ldr r1, _0802F8C0
	b _0802F8DE
	.align 2, 0
_0802F8C0: .4byte 0x080CEDCF
_0802F8C4:
	ldr r1, _0802F8C8
	b _0802F8DE
	.align 2, 0
_0802F8C8: .4byte 0x080CEDD5
_0802F8CC:
	ldr r1, _0802F8D0
	b _0802F8DE
	.align 2, 0
_0802F8D0: .4byte 0x080CEDDB
_0802F8D4:
	ldr r1, _0802F8D8
	b _0802F8DE
	.align 2, 0
_0802F8D8: .4byte 0x080CEDE1
_0802F8DC:
	ldr r1, _0802F8F4
_0802F8DE:
	ldrh r0, [r4]
	adds r0, r0, r1
	ldrb r0, [r0]
	bl sub_8025EF4
	ldr r1, _0802F8F8
	ldrh r0, [r4]
	adds r0, r0, r1
	movs r1, #1
	strb r1, [r0]
	b _0802FDA8
	.align 2, 0
_0802F8F4: .4byte 0x080CEDE7
_0802F8F8: .4byte 0x0203E11C
_0802F8FC:
	.2byte 0xEE00, 0xEE00
	b _0802FDA8
_0802F902:
	ldr r1, _0802F928
	ldr r2, _0802F92C
	ldrb r0, [r2]
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0802F914
	movs r0, #1
	strb r0, [r2]
_0802F914:
	ldr r0, _0802F930
	ldr r0, [r0]
	ldrb r0, [r0, #0x14]
	subs r0, #1
	bl sub_8025EF4
	movs r0, #0x87
	lsls r0, r0, #1
	movs r1, #0
	b _0802FD94
	.align 2, 0
_0802F928: .4byte 0x02002E4E
_0802F92C: .4byte 0x0203E144
_0802F930: .4byte 0x0203DFDC
_0802F934:
	movs r0, #0xda
	movs r1, #0
	bl sub_80342CC
	cmp r0, #0
	bne _0802F99C
	ldr r4, _0802F974
	adds r0, r4, #0
	movs r1, #0
	bl sub_80342CC
	cmp r0, #0
	bne _0802F984
	ldr r1, _0802F978
	ldr r2, _0802F97C
	ldrb r0, [r2]
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0802F960
	movs r0, #1
	strb r0, [r2]
_0802F960:
	ldr r0, _0802F980
	ldr r0, [r0]
	ldrb r0, [r0, #0x14]
	subs r0, #1
	bl sub_8025EF4
	adds r0, r4, #0
	movs r1, #0
	b _0802FD94
	.align 2, 0
_0802F974: .4byte 0x0000017F
_0802F978: .4byte 0x02002E4E
_0802F97C: .4byte 0x0203E142
_0802F980: .4byte 0x0203DFDC
_0802F984:
	ldr r1, _0802F994
	movs r0, #1
	strb r0, [r1]
	ldr r0, _0802F998
	ldr r0, [r0]
	ldrb r0, [r0, #0x14]
	b _0802FD64
	.align 2, 0
_0802F994: .4byte 0x02002E4E
_0802F998: .4byte 0x0203DFDC
_0802F99C:
	movs r6, #0x82
	lsls r6, r6, #1
	adds r0, r6, #0
	movs r1, #0
	bl sub_80342CC
	adds r4, r0, #0
	cmp r4, #0
	bne _0802F9E8
	ldr r5, _0802F9DC
	adds r0, r5, #0
	movs r1, #0
	bl sub_80342CC
	cmp r0, #0
	bne _0802F9C4
	adds r0, r5, #0
	movs r1, #0
	bl sub_80342F8
_0802F9C4:
	ldr r0, _0802F9E0
	strb r4, [r0]
	ldr r0, _0802F9E4
	ldr r0, [r0]
	ldrb r0, [r0, #0x18]
	subs r0, #1
	bl sub_8025EF4
	adds r0, r6, #0
	movs r1, #0
	b _0802FD94
	.align 2, 0
_0802F9DC: .4byte 0x0000017F
_0802F9E0: .4byte 0x02002E4E
_0802F9E4: .4byte 0x0203DFDC
_0802F9E8:
	ldr r1, _0802F9F8
	movs r0, #1
	strb r0, [r1]
	ldr r0, _0802F9FC
	ldr r0, [r0]
	adds r0, #0x24
	ldrb r0, [r0]
	b _0802FD64
	.align 2, 0
_0802F9F8: .4byte 0x02002E4E
_0802F9FC: .4byte 0x0203DFDC
_0802FA00:
	movs r0, #0xe1
	movs r1, #0
	bl sub_80342CC
	cmp r0, #0
	bne _0802FA54
	movs r0, #0xe0
	movs r1, #0
	bl sub_80342CC
	adds r1, r0, #0
	cmp r1, #0
	bne _0802FA3C
	ldr r0, _0802FA34
	strb r1, [r0]
	ldr r0, _0802FA38
	ldr r0, [r0]
	ldrb r0, [r0, #0x14]
	subs r0, #1
	bl sub_8025EF4
	movs r0, #0xe0
_0802FA2C:
	movs r1, #0
	bl sub_80342F8
	b _0802FDA8
	.align 2, 0
_0802FA34: .4byte 0x02002E4E
_0802FA38: .4byte 0x0203DFDC
_0802FA3C:
	ldr r1, _0802FA4C
	movs r0, #1
	strb r0, [r1]
	ldr r0, _0802FA50
	ldr r0, [r0]
	ldrb r0, [r0, #0x18]
	b _0802FD64
	.align 2, 0
_0802FA4C: .4byte 0x02002E4E
_0802FA50: .4byte 0x0203DFDC
_0802FA54:
	movs r5, #0x83
	lsls r5, r5, #1
	adds r0, r5, #0
	movs r1, #0
	bl sub_80342CC
	adds r4, r0, #0
	cmp r4, #0
	bne _0802FA9C
	movs r0, #0xe0
	movs r1, #0
	bl sub_80342CC
	cmp r0, #0
	bne _0802FA7A
	movs r0, #0xe0
	movs r1, #0
	bl sub_80342F8
_0802FA7A:
	ldr r0, _0802FA94
	strb r4, [r0]
	ldr r0, _0802FA98
	ldr r0, [r0]
	adds r0, #0x24
	ldrb r0, [r0]
	subs r0, #1
	bl sub_8025EF4
	adds r0, r5, #0
	movs r1, #0
	b _0802FD94
	.align 2, 0
_0802FA94: .4byte 0x02002E4E
_0802FA98: .4byte 0x0203DFDC
_0802FA9C:
	ldr r1, _0802FAAC
	movs r0, #1
	strb r0, [r1]
	ldr r0, _0802FAB0
	ldr r0, [r0]
	adds r0, #0x28
	ldrb r0, [r0]
	b _0802FD64
	.align 2, 0
_0802FAAC: .4byte 0x02002E4E
_0802FAB0: .4byte 0x0203DFDC
_0802FAB4:
	ldr r1, _0802FADC
	ldr r0, _0802FAE0
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r4, _0802FAE4
	ldr r0, [r4]
	ldrb r0, [r0, #0x14]
	subs r0, #1
	bl sub_8025EF4
	ldr r0, [r4]
	ldrb r1, [r0, #0xc]
	movs r0, #0xfb
	movs r2, #4
	movs r3, #0
	bl sub_8034460
	movs r0, #0x17
	movs r1, #0
	b _0802FD94
	.align 2, 0
_0802FADC: .4byte 0x02002E4E
_0802FAE0: .4byte byte_20021F8
_0802FAE4: .4byte 0x0203DFDC
_0802FAE8:
	ldr r0, _0802FB24
	ldrb r4, [r0]
	cmp r4, #0
	bne _0802FB50
	ldr r5, _0802FB28
	ldr r0, [r5]
	adds r0, #0xa0
	bl sub_80037A0
	ldr r0, [r5]
	adds r0, #0xa0
	bl sub_80037A8
	cmp r0, #0
	beq _0802FB96
	ldr r0, _0802FB2C
	strb r4, [r0]
	bl sub_800F7A0
	ldr r0, _0802FB30
	ldrb r0, [r0]
	cmp r0, #0
	bne _0802FB38
	ldr r1, _0802FB34
	movs r0, #1
	strb r0, [r1]
	ldr r0, [r5]
	ldrb r0, [r0, #0x14]
	b _0802FD64
	.align 2, 0
_0802FB24: .4byte 0x0203DFDA
_0802FB28: .4byte 0x0203DFDC
_0802FB2C: .4byte 0x02002E4F
_0802FB30: .4byte gGameStatus
_0802FB34: .4byte 0x02002E4E
_0802FB38:
	ldr r1, _0802FB44
	movs r0, #1
	strb r0, [r1]
	ldr r0, [r5]
	ldrb r0, [r0, #0x18]
	b _0802FD64
	.align 2, 0
_0802FB44: .4byte 0x02002E4E
_0802FB48:
	ldr r0, _0802FB6C
	ldrb r4, [r0]
	cmp r4, #0
	beq _0802FB80
_0802FB50:
	ldr r0, _0802FB70
	movs r1, #1
	strb r1, [r0]
	ldr r0, _0802FB74
	strb r1, [r0]
	ldr r1, _0802FB78
	ldr r0, _0802FB7C
	ldrh r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl sub_8025EF4
	b _0802FDA8
	.align 2, 0
_0802FB6C: .4byte 0x0203DFDA
_0802FB70: .4byte 0x02002E4E
_0802FB74: .4byte 0x02002E4F
_0802FB78: .4byte 0x080CEF8C
_0802FB7C: .4byte gLoadedRoomLevel
_0802FB80:
	ldr r5, _0802FB9C
	ldr r0, [r5]
	adds r0, #0xa0
	bl sub_80037A0
	ldr r0, [r5]
	adds r0, #0xa0
	bl sub_80037A8
	cmp r0, #0
	bne _0802FBA0
_0802FB96:
	movs r0, #0
	b _0802FDBA
	.align 2, 0
_0802FB9C: .4byte 0x0203DFDC
_0802FBA0:
	ldr r0, _0802FBB4
	strb r4, [r0]
	ldr r0, [r5]
	ldrb r0, [r0, #0xc]
	cmp r0, #7
	bne _0802FBBC
	ldr r1, _0802FBB8
	movs r0, #1
	strb r0, [r1]
	b _0802FBC0
	.align 2, 0
_0802FBB4: .4byte 0x02002E4F
_0802FBB8: .4byte 0x02002E50
_0802FBBC:
	ldr r0, _0802FC04
	strb r4, [r0]
_0802FBC0:
	bl sub_800F7A0
	ldr r0, _0802FC08
	ldr r4, _0802FC0C
	ldr r2, [r4]
	ldrb r1, [r2, #0xc]
	adds r0, r1, r0
	ldrb r0, [r0]
	cmp r0, #0
	bne _0802FBD6
	b _0802FCF8
_0802FBD6:
	ldr r1, _0802FC10
	movs r0, #1
	strb r0, [r1]
	ldr r1, _0802FC04
	movs r0, #0
	strb r0, [r1]
	adds r0, r2, #0
	adds r0, #0x24
	ldrb r0, [r0]
	subs r0, #1
	bl sub_8025EF4
	ldr r0, [r4]
	ldrb r0, [r0, #0xc]
	subs r0, #6
	cmp r0, #0xb
	bls _0802FBFA
	b _0802FDA8
_0802FBFA:
	lsls r0, r0, #2
	ldr r1, _0802FC14
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0802FC04: .4byte 0x02002E50
_0802FC08: .4byte 0x0203E0FC
_0802FC0C: .4byte 0x0203DFDC
_0802FC10: .4byte 0x02002E4E
_0802FC14: .4byte 0x0802FC18
_0802FC18: @ jump table
	.4byte _0802FCD4 @ case 0
	.4byte _0802FDA8 @ case 1
	.4byte _0802FDA8 @ case 2
	.4byte _0802FDA8 @ case 3
	.4byte _0802FDA8 @ case 4
	.4byte _0802FDA8 @ case 5
	.4byte _0802FDA8 @ case 6
	.4byte _0802FDA8 @ case 7
	.4byte _0802FC48 @ case 8
	.4byte _0802FC6C @ case 9
	.4byte _0802FCB4 @ case 10
	.4byte _0802FC90 @ case 11
_0802FC48:
	ldr r0, _0802FC64
	ldr r1, _0802FC68
	movs r2, #0xe
	ldrsb r2, [r0, r2]
	movs r0, #0xe
	ldrsb r0, [r1, r0]
	cmp r2, r0
	blt _0802FC5A
	b _0802FDA8
_0802FC5A:
	movs r0, #0xd2
	lsls r0, r0, #1
	movs r1, #0
	b _0802FD94
	.align 2, 0
_0802FC64: .4byte gGameStatus
_0802FC68: .4byte 0x080CC8C4
_0802FC6C:
	ldr r0, _0802FC84
	ldr r1, _0802FC88
	movs r2, #0xf
	ldrsb r2, [r0, r2]
	movs r0, #0xf
	ldrsb r0, [r1, r0]
	cmp r2, r0
	blt _0802FC7E
	b _0802FDA8
_0802FC7E:
	ldr r0, _0802FC8C
	movs r1, #0
	b _0802FD94
	.align 2, 0
_0802FC84: .4byte gGameStatus
_0802FC88: .4byte 0x080CC8C4
_0802FC8C: .4byte 0x000001A5
_0802FC90:
	ldr r0, _0802FCA8
	ldr r1, _0802FCAC
	movs r2, #0x11
	ldrsb r2, [r0, r2]
	movs r0, #0x11
	ldrsb r0, [r1, r0]
	cmp r2, r0
	blt _0802FCA2
	b _0802FDA8
_0802FCA2:
	ldr r0, _0802FCB0
	movs r1, #0
	b _0802FD94
	.align 2, 0
_0802FCA8: .4byte gGameStatus
_0802FCAC: .4byte 0x080CC8C4
_0802FCB0: .4byte 0x000001A7
_0802FCB4:
	ldr r0, _0802FCCC
	ldr r1, _0802FCD0
	movs r2, #0x10
	ldrsb r2, [r0, r2]
	movs r0, #0x10
	ldrsb r0, [r1, r0]
	cmp r2, r0
	bge _0802FDA8
	movs r0, #0xd3
	lsls r0, r0, #1
	movs r1, #0
	b _0802FD94
	.align 2, 0
_0802FCCC: .4byte gGameStatus
_0802FCD0: .4byte 0x080CC8C4
_0802FCD4:
	ldr r0, _0802FCEC
	ldr r1, _0802FCF0
	movs r2, #0x12
	ldrsb r2, [r0, r2]
	movs r0, #0x12
	ldrsb r0, [r1, r0]
	cmp r2, r0
	bge _0802FDA8
	ldr r0, _0802FCF4
	movs r1, #0
	b _0802FD94
	.align 2, 0
_0802FCEC: .4byte gGameStatus
_0802FCF0: .4byte 0x080CC8C4
_0802FCF4: .4byte 0x000001A9
_0802FCF8:
	ldr r0, _0802FD28
	ldrb r2, [r0]
	cmp r2, #0
	bne _0802FD40
	ldr r0, _0802FD2C
	adds r0, r1, r0
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802FD40
	ldr r1, _0802FD30
	movs r0, #1
	strb r0, [r1]
	ldr r0, _0802FD34
	strb r2, [r0]
	ldr r1, _0802FD38
_0802FD16:
	ldr r0, _0802FD3C
	ldrh r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	bl sub_8025EF4
	b _0802FDA8
	.align 2, 0
_0802FD28: .4byte 0x020021BE
_0802FD2C: .4byte 0x080CEC50
_0802FD30: .4byte 0x02002E4E
_0802FD34: .4byte 0x02002E50
_0802FD38: .4byte 0x080CEC64
_0802FD3C: .4byte gLoadedRoomLevel
_0802FD40:
	ldr r0, _0802FD6C
	ldrh r2, [r0, #0xc]
	ldr r1, _0802FD70
	ldr r4, _0802FD74
	ldr r3, [r4]
	ldrb r0, [r3, #0xc]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r2, r0
	bge _0802FD80
	ldr r1, _0802FD78
	movs r0, #1
	strb r0, [r1]
	ldr r1, _0802FD7C
	movs r0, #0
	strb r0, [r1]
	ldrb r0, [r3, #0x18]
_0802FD64:
	subs r0, #1
	bl sub_8025EF4
	b _0802FDA8
	.align 2, 0
_0802FD6C: .4byte gGameStatus
_0802FD70: .4byte 0x080CEFA4
_0802FD74: .4byte 0x0203DFDC
_0802FD78: .4byte 0x02002E4E
_0802FD7C: .4byte 0x02002E50
_0802FD80:
	ldr r1, _0802FDA0
	movs r0, #0
	strb r0, [r1]
	ldrb r0, [r3, #0x14]
	subs r0, #1
	bl sub_8025EF4
	ldr r0, [r4]
	ldrb r1, [r0, #0xc]
	movs r0, #0xfb
_0802FD94:
	movs r2, #4
	movs r3, #0
	bl sub_8034460
	b _0802FDA8
	.align 2, 0
_0802FDA0: .4byte 0x02002E4E
_0802FDA4:
	.2byte 0xEE00, 0xEE00
_0802FDA8:
	ldr r0, _0802FDC0
	ldr r0, [r0]
	ldrb r0, [r0, #0x10]
	bl sub_08015CC0
	ldr r1, _0802FDC4
	movs r0, #0
	strb r0, [r1]
	movs r0, #1
_0802FDBA:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0802FDC0: .4byte 0x0203DFDC
_0802FDC4: .4byte 0x0203DFD8


    .thumb
    .global sub_802FDC8
sub_802FDC8: @ 0x0802FDC8
	push {r4, r5, lr}
	ldr r4, _0802FE08
	ldrb r0, [r4]
	cmp r0, #0
	bne _0802FE38
	bl sub_8025FC8
	ldr r5, _0802FE0C
	ldr r0, [r5]
	ldrb r0, [r0, #0x10]
	bl sub_08016080
	movs r0, #1
	strb r0, [r4]
	ldr r0, _0802FE10
	ldrb r0, [r0]
	cmp r0, #0
	bne _0802FE38
	ldr r0, _0802FE14
	ldrb r0, [r0]
	cmp r0, #0
	bne _0802FE38
	ldr r0, [r5]
	ldrh r1, [r0]
	cmp r1, #0x17
	beq _0802FE20
	cmp r1, #0x17
	bgt _0802FE18
	cmp r1, #0x16
	beq _0802FE1C
	b _0802FE38
	.align 2, 0
_0802FE08: .4byte 0x0203DFD8
_0802FE0C: .4byte 0x0203DFDC
_0802FE10: .4byte 0x02002E4F
_0802FE14: .4byte 0x02002E50
_0802FE18:
	cmp r1, #0x93
	bne _0802FE38
_0802FE1C:
	ldr r0, _0802FE30
	ldr r0, [r0]
_0802FE20:
	adds r0, #0xa0
	ldr r1, _0802FE34
	movs r2, #0
	movs r3, #1
	bl sub_8003368
_0802FE2C:
	movs r0, #0
	b _0802FED0
	.align 2, 0
_0802FE30: .4byte 0x0203DFDC
_0802FE34: .4byte 0x000002BD
_0802FE38:
	ldr r0, _0802FE50
	ldr r2, [r0]
	ldrh r1, [r2]
	adds r4, r0, #0
	cmp r1, #0x17
	beq _0802FEBC
	cmp r1, #0x17
	bgt _0802FE54
	cmp r1, #0x16
	beq _0802FE58
	b _0802FEC8
	.align 2, 0
_0802FE50: .4byte 0x0203DFDC
_0802FE54:
	cmp r1, #0x93
	bne _0802FEC8
_0802FE58:
	ldr r0, _0802FEAC
	ldrb r5, [r0]
	cmp r5, #0
	bne _0802FEC8
	ldr r0, [r4]
	adds r0, #0xa0
	bl sub_8003770
	cmp r0, #0
	bne _0802FE74
	ldr r0, _0802FEB0
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802FE2C
_0802FE74:
	ldr r0, [r4]
	adds r0, #0xa0
	ldr r1, _0802FEB4
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r0, [r4]
	adds r0, #0xae
	movs r1, #0x14
	strb r1, [r0]
	ldr r0, [r4]
	adds r0, #0xa0
	movs r1, #0
	bl sub_800378C
	ldr r0, [r4]
	adds r0, #0xa0
	movs r1, #0
	bl sub_80037F4
	ldr r0, _0802FEB8
	strb r5, [r0]
	movs r0, #0x16
	bl sub_8029C30
	b _0802FECE
	.align 2, 0
_0802FEAC: .4byte 0x02002E50
_0802FEB0: .4byte 0x02002E4F
_0802FEB4: .4byte 0x00000237
_0802FEB8: .4byte gInInteractionArea
_0802FEBC:
	adds r0, r2, #0
	adds r0, #0xa0
	bl sub_8003770
	cmp r0, #0
	beq _0802FE2C
_0802FEC8:
	ldr r1, _0802FED8
	movs r0, #0
	strb r0, [r1]
_0802FECE:
	movs r0, #1
_0802FED0:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0802FED8: .4byte gInInteractionArea

    .thumb
    .global sub_0802FEDC
sub_0802FEDC: @ 0x0802FEDC
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r0, _0802FEF8
	ldr r0, [r0]
	bl sub_80038AC
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0
	beq _0802FEFC
	movs r0, #0
	bl _0803090C
	.align 2, 0
_0802FEF8: .4byte dword_2000FC8
_0802FEFC:
	ldr r1, _0802FF28
	movs r0, #1
	strb r0, [r1]
	ldr r1, _0802FF2C
	ldr r0, _0802FF30
	str r0, [r1]
	ldr r0, _0802FF34
	strb r2, [r0]
	ldr r0, _0802FF38
	strb r2, [r0]
	adds r0, r5, #0
	subs r0, #0xff
	adds r6, r1, #0
	cmp r0, #0xa0
	bls _0802FF1E
	bl _080308E8
_0802FF1E:
	lsls r0, r0, #2
	ldr r1, _0802FF3C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0802FF28: .4byte gInInteractionArea
_0802FF2C: .4byte 0x0203DFDC
_0802FF30: .4byte 0x0203E01C
_0802FF34: .4byte 0x02001118
_0802FF38: .4byte 0x02001119
_0802FF3C: .4byte 0x0802FF40
_0802FF40: @ jump table
	.4byte _080301C4 @ case 0
	.4byte _080308E8 @ case 1
	.4byte _080308E8 @ case 2
	.4byte _080308E8 @ case 3
	.4byte _080308E8 @ case 4
	.4byte _080308E8 @ case 5
	.4byte _080308E8 @ case 6
	.4byte _080308E8 @ case 7
	.4byte _080308E8 @ case 8
	.4byte _080308E8 @ case 9
	.4byte _080308E8 @ case 10
	.4byte _080308E8 @ case 11
	.4byte _080308E8 @ case 12
	.4byte _080308E8 @ case 13
	.4byte _080301D4 @ case 14
	.4byte _080308E8 @ case 15
	.4byte _080308E8 @ case 16
	.4byte _080308E8 @ case 17
	.4byte _080308E8 @ case 18
	.4byte _080308E8 @ case 19
	.4byte _08030392 @ case 20
	.4byte _080308E8 @ case 21
	.4byte _080308E8 @ case 22
	.4byte _08030204 @ case 23
	.4byte _08030214 @ case 24
	.4byte _08030224 @ case 25
	.4byte _08030234 @ case 26
	.4byte _08030244 @ case 27
	.4byte _08030254 @ case 28
	.4byte _08030264 @ case 29
	.4byte _08030274 @ case 30
	.4byte _08030286 @ case 31
	.4byte _080308E8 @ case 32
	.4byte _080308E8 @ case 33
	.4byte _080308E8 @ case 34
	.4byte _08030296 @ case 35
	.4byte _080302A8 @ case 36
	.4byte _080302BA @ case 37
	.4byte _080302CC @ case 38
	.4byte _080302DE @ case 39
	.4byte _080308E8 @ case 40
	.4byte _080308E8 @ case 41
	.4byte _080308E8 @ case 42
	.4byte _080302F0 @ case 43
	.4byte _08030302 @ case 44
	.4byte _08030314 @ case 45
	.4byte _08030326 @ case 46
	.4byte _08030338 @ case 47
	.4byte _0803034A @ case 48
	.4byte _0803035C @ case 49
	.4byte _0803036E @ case 50
	.4byte _08030380 @ case 51
	.4byte _080303D4 @ case 52
	.4byte _080303E6 @ case 53
	.4byte _080303F8 @ case 54
	.4byte _0803040A @ case 55
	.4byte _0803041C @ case 56
	.4byte _0803042E @ case 57
	.4byte _08030440 @ case 58
	.4byte _08030452 @ case 59
	.4byte _08030464 @ case 60
	.4byte _080301E4 @ case 61
	.4byte _08030476 @ case 62
	.4byte _08030486 @ case 63
	.4byte _080301F4 @ case 64
	.4byte _08030496 @ case 65
	.4byte _080304A6 @ case 66
	.4byte _080304B6 @ case 67
	.4byte _080304C8 @ case 68
	.4byte _080304DA @ case 69
	.4byte _080304EC @ case 70
	.4byte _080304FE @ case 71
	.4byte _080306AC @ case 72
	.4byte _080308E8 @ case 73
	.4byte _080308E8 @ case 74
	.4byte _080308E8 @ case 75
	.4byte _080308E8 @ case 76
	.4byte _08030510 @ case 77
	.4byte _08030522 @ case 78
	.4byte _08030534 @ case 79
	.4byte _08030546 @ case 80
	.4byte _080308E8 @ case 81
	.4byte _080308E8 @ case 82
	.4byte _08030574 @ case 83
	.4byte _08030590 @ case 84
	.4byte _080305AC @ case 85
	.4byte _080305C8 @ case 86
	.4byte _080305E4 @ case 87
	.4byte _08030600 @ case 88
	.4byte _0803061C @ case 89
	.4byte _0803062E @ case 90
	.4byte _08030640 @ case 91
	.4byte _08030652 @ case 92
	.4byte _08030664 @ case 93
	.4byte _080308E8 @ case 94
	.4byte _080308E8 @ case 95
	.4byte _080308E8 @ case 96
	.4byte _080308E8 @ case 97
	.4byte _080308E8 @ case 98
	.4byte _080308E8 @ case 99
	.4byte _08030676 @ case 100
	.4byte _08030690 @ case 101
	.4byte _080308E8 @ case 102
	.4byte _080308E8 @ case 103
	.4byte _080308E8 @ case 104
	.4byte _080308E8 @ case 105
	.4byte _080308E8 @ case 106
	.4byte _080308E8 @ case 107
	.4byte _080306BE @ case 108
	.4byte _080306CE @ case 109
	.4byte _080306DE @ case 110
	.4byte _080306F0 @ case 111
	.4byte _08030702 @ case 112
	.4byte _08030714 @ case 113
	.4byte _08030726 @ case 114
	.4byte _08030738 @ case 115
	.4byte _0803074A @ case 116
	.4byte _0803075C @ case 117
	.4byte _080308E8 @ case 118
	.4byte _080308E8 @ case 119
	.4byte _080308E8 @ case 120
	.4byte _080308E8 @ case 121
	.4byte _080308E8 @ case 122
	.4byte _080308E8 @ case 123
	.4byte _080308E8 @ case 124
	.4byte _080308E8 @ case 125
	.4byte _080308E8 @ case 126
	.4byte _080308E8 @ case 127
	.4byte _080308E8 @ case 128
	.4byte _080308E8 @ case 129
	.4byte _080308E8 @ case 130
	.4byte _080308E8 @ case 131
	.4byte _080308E8 @ case 132
	.4byte _080308E8 @ case 133
	.4byte _0803076C @ case 134
	.4byte _0803077E @ case 135
	.4byte _08030790 @ case 136
	.4byte _080307A2 @ case 137
	.4byte _080308E8 @ case 138
	.4byte _08030558 @ case 139
	.4byte _080307C0 @ case 140
	.4byte _080307D2 @ case 141
	.4byte _080307E4 @ case 142
	.4byte _080307F4 @ case 143
	.4byte _08030804 @ case 144
	.4byte _08030816 @ case 145
	.4byte _08030826 @ case 146
	.4byte _08030836 @ case 147
	.4byte _08030846 @ case 148
	.4byte _08030856 @ case 149
	.4byte _080308E8 @ case 150
	.4byte _080308E8 @ case 151
	.4byte _080308E8 @ case 152
	.4byte _080308E8 @ case 153
	.4byte _08030868 @ case 154
	.4byte _0803087A @ case 155
	.4byte _0803088C @ case 156
	.4byte _0803089E @ case 157
	.4byte _080308E8 @ case 158
	.4byte _080308E8 @ case 159
	.4byte _080308B0 @ case 160
_080301C4:
	ldr r0, [r6]
	movs r2, #0
	strh r5, [r0]
	strb r2, [r0, #0x10]
	ldr r1, [r6]
	movs r0, #0x30
	strb r0, [r1, #0x14]
	b _080308CC
_080301D4:
	ldr r0, [r6]
	movs r2, #0
	strh r5, [r0]
	strb r2, [r0, #0x10]
	ldr r1, [r6]
	movs r0, #0x31
	strb r0, [r1, #0x14]
	b _080308CC
_080301E4:
	ldr r0, [r6]
	movs r2, #0
	strh r5, [r0]
	strb r2, [r0, #0x10]
	ldr r1, [r6]
	movs r0, #0x32
	strb r0, [r1, #0x14]
	b _080308CC
_080301F4:
	ldr r0, [r6]
	movs r2, #0
	strh r5, [r0]
	strb r2, [r0, #0x10]
	ldr r1, [r6]
	movs r0, #0xd
	strb r0, [r1, #0x14]
	b _080308CC
_08030204:
	ldr r0, [r6]
	movs r2, #0
	strh r5, [r0]
	strb r2, [r0, #0x10]
	ldr r1, [r6]
	movs r0, #8
	strb r0, [r1, #0x14]
	b _080308CC
_08030214:
	ldr r0, [r6]
	movs r2, #0
	strh r5, [r0]
	strb r2, [r0, #0x10]
	ldr r1, [r6]
	movs r0, #0xe
	strb r0, [r1, #0x14]
	b _080308CC
_08030224:
	ldr r0, [r6]
	movs r2, #0
	strh r5, [r0]
	strb r2, [r0, #0x10]
	ldr r1, [r6]
	movs r0, #0xf
	strb r0, [r1, #0x14]
	b _080308CC
_08030234:
	ldr r0, [r6]
	movs r2, #0
	strh r5, [r0]
	strb r2, [r0, #0x10]
	ldr r1, [r6]
	movs r0, #0x10
	strb r0, [r1, #0x14]
	b _080308CC
_08030244:
	ldr r0, [r6]
	movs r2, #0
	strh r5, [r0]
	strb r2, [r0, #0x10]
	ldr r1, [r6]
	movs r0, #0x11
	strb r0, [r1, #0x14]
	b _080308CC
_08030254:
	ldr r0, [r6]
	movs r2, #0
	strh r5, [r0]
	strb r2, [r0, #0x10]
	ldr r1, [r6]
	movs r0, #0x13
	strb r0, [r1, #0x14]
	b _080308CC
_08030264:
	ldr r0, [r6]
	movs r2, #0
	strh r5, [r0]
	strb r2, [r0, #0x10]
	ldr r1, [r6]
	movs r0, #0x14
	strb r0, [r1, #0x14]
	b _080308CC
_08030274:
	ldr r1, [r6]
	movs r2, #0
	strh r5, [r1]
	movs r0, #2
	strb r0, [r1, #0x10]
	ldr r1, [r6]
	movs r0, #1
	strb r0, [r1, #0x14]
	b _080308CC
_08030286:
	ldr r0, [r6]
	movs r2, #0
	strh r5, [r0]
	movs r1, #2
	strb r1, [r0, #0x10]
	ldr r0, [r6]
	strb r1, [r0, #0x14]
	b _080308CC
_08030296:
	ldr r1, [r6]
	movs r2, #0
	strh r5, [r1]
	movs r0, #2
	strb r0, [r1, #0x10]
	ldr r1, [r6]
	movs r0, #0xe
	strb r0, [r1, #0x14]
	b _080308CC
_080302A8:
	ldr r1, [r6]
	movs r2, #0
	strh r5, [r1]
	movs r0, #2
	strb r0, [r1, #0x10]
	ldr r1, [r6]
	movs r0, #0xd
	strb r0, [r1, #0x14]
	b _080308CC
_080302BA:
	ldr r1, [r6]
	movs r2, #0
	strh r5, [r1]
	movs r0, #2
	strb r0, [r1, #0x10]
	ldr r1, [r6]
	movs r0, #0x17
	strb r0, [r1, #0x14]
	b _080308CC
_080302CC:
	ldr r1, [r6]
	movs r2, #0
	strh r5, [r1]
	movs r0, #3
	strb r0, [r1, #0x10]
	ldr r1, [r6]
	movs r0, #0xf
	strb r0, [r1, #0x14]
	b _080308CC
_080302DE:
	ldr r1, [r6]
	movs r2, #0
	strh r5, [r1]
	movs r0, #3
	strb r0, [r1, #0x10]
	ldr r1, [r6]
	movs r0, #0xe
	strb r0, [r1, #0x14]
	b _080308CC
_080302F0:
	ldr r1, [r6]
	movs r2, #0
	strh r5, [r1]
	movs r0, #3
	strb r0, [r1, #0x10]
	ldr r1, [r6]
	movs r0, #0xe
	strb r0, [r1, #0x14]
	b _080308CC
_08030302:
	ldr r1, [r6]
	movs r2, #0
	strh r5, [r1]
	movs r0, #2
	strb r0, [r1, #0x10]
	ldr r1, [r6]
	movs r0, #0xe
	strb r0, [r1, #0x14]
	b _080308CC
_08030314:
	ldr r1, [r6]
	movs r2, #0
	strh r5, [r1]
	movs r0, #1
	strb r0, [r1, #0x10]
	ldr r1, [r6]
	movs r0, #0x10
	strb r0, [r1, #0x14]
	b _080308CC
_08030326:
	ldr r1, [r6]
	movs r2, #0
	strh r5, [r1]
	movs r0, #2
	strb r0, [r1, #0x10]
	ldr r1, [r6]
	movs r0, #0x18
	strb r0, [r1, #0x14]
	b _080308CC
_08030338:
	ldr r1, [r6]
	movs r2, #0
	strh r5, [r1]
	movs r0, #2
	strb r0, [r1, #0x10]
	ldr r1, [r6]
	movs r0, #0x1c
	strb r0, [r1, #0x14]
	b _080308CC
_0803034A:
	ldr r1, [r6]
	movs r2, #0
	strh r5, [r1]
	movs r0, #3
	strb r0, [r1, #0x10]
	ldr r1, [r6]
	movs r0, #0xf
	strb r0, [r1, #0x14]
	b _080308CC
_0803035C:
	ldr r1, [r6]
	movs r2, #0
	strh r5, [r1]
	movs r0, #2
	strb r0, [r1, #0x10]
	ldr r1, [r6]
	movs r0, #0xf
	strb r0, [r1, #0x14]
	b _080308CC
_0803036E:
	ldr r1, [r6]
	movs r2, #0
	strh r5, [r1]
	movs r0, #1
	strb r0, [r1, #0x10]
	ldr r1, [r6]
	movs r0, #0x11
	strb r0, [r1, #0x14]
	b _080308CC
_08030380:
	ldr r1, [r6]
	movs r2, #0
	strh r5, [r1]
	movs r0, #3
	strb r0, [r1, #0x10]
	ldr r1, [r6]
	movs r0, #0x10
	strb r0, [r1, #0x14]
	b _080308CC
_08030392:
	ldr r4, [r6]
	movs r3, #0
	strh r5, [r4]
	ldr r1, _080303C8
	ldr r2, _080303CC
	ldrh r0, [r2]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r4, #0x10]
	ldr r4, [r6]
	ldr r1, _080303D0
	ldrh r0, [r2]
	adds r0, r0, r1
	ldrb r0, [r0]
	adds r0, #1
	strb r0, [r4, #0x14]
	ldr r0, [r6]
	strb r3, [r0, #0x18]
	ldr r0, [r6]
	adds r0, #0x24
	strb r3, [r0]
	ldr r0, [r6]
	adds r0, #0x28
	strb r3, [r0]
	b _080308EC
	.align 2, 0
_080303C8: .4byte 0x080CEDFC
_080303CC: .4byte gLoadedRoomLevel
_080303D0: .4byte 0x080CEDED
_080303D4:
	ldr r1, [r6]
	movs r2, #0
	strh r5, [r1]
	movs r0, #3
	strb r0, [r1, #0x10]
	ldr r1, [r6]
	movs r0, #0x15
	strb r0, [r1, #0x14]
	b _080308CC
_080303E6:
	ldr r1, [r6]
	movs r2, #0
	strh r5, [r1]
	movs r0, #3
	strb r0, [r1, #0x10]
	ldr r1, [r6]
	movs r0, #0x17
	strb r0, [r1, #0x14]
	b _080308CC
_080303F8:
	ldr r1, [r6]
	movs r2, #0
	strh r5, [r1]
	movs r0, #3
	strb r0, [r1, #0x10]
	ldr r1, [r6]
	movs r0, #0x16
	strb r0, [r1, #0x14]
	b _080308CC
_0803040A:
	ldr r1, [r6]
	movs r2, #0
	strh r5, [r1]
	movs r0, #3
	strb r0, [r1, #0x10]
	ldr r1, [r6]
	movs r0, #0x14
	strb r0, [r1, #0x14]
	b _080308CC
_0803041C:
	ldr r1, [r6]
	movs r2, #0
	strh r5, [r1]
	movs r0, #3
	strb r0, [r1, #0x10]
	ldr r1, [r6]
	movs r0, #0x16
	strb r0, [r1, #0x14]
	b _080308CC
_0803042E:
	ldr r1, [r6]
	movs r2, #0
	strh r5, [r1]
	movs r0, #3
	strb r0, [r1, #0x10]
	ldr r1, [r6]
	movs r0, #0x15
	strb r0, [r1, #0x14]
	b _080308CC
_08030440:
	ldr r1, [r6]
	movs r2, #0
	strh r5, [r1]
	movs r0, #3
	strb r0, [r1, #0x10]
	ldr r1, [r6]
	movs r0, #0x16
	strb r0, [r1, #0x14]
	b _080308CC
_08030452:
	ldr r1, [r6]
	movs r2, #0
	strh r5, [r1]
	movs r0, #3
	strb r0, [r1, #0x10]
	ldr r1, [r6]
	movs r0, #0x18
	strb r0, [r1, #0x14]
	b _080308CC
_08030464:
	ldr r1, [r6]
	movs r2, #0
	strh r5, [r1]
	movs r0, #3
	strb r0, [r1, #0x10]
	ldr r1, [r6]
	movs r0, #0x17
	strb r0, [r1, #0x14]
	b _080308CC
_08030476:
	ldr r0, [r6]
	movs r2, #0
	strh r5, [r0]
	strb r2, [r0, #0x10]
	ldr r1, [r6]
	movs r0, #0x15
	strb r0, [r1, #0x14]
	b _080308CC
_08030486:
	ldr r0, [r6]
	movs r2, #0
	strh r5, [r0]
	strb r2, [r0, #0x10]
	ldr r1, [r6]
	movs r0, #0x14
	strb r0, [r1, #0x14]
	b _080308CC
_08030496:
	ldr r0, [r6]
	movs r2, #0
	strh r5, [r0]
	strb r2, [r0, #0x10]
	ldr r1, [r6]
	movs r0, #0xf
	strb r0, [r1, #0x14]
	b _080308CC
_080304A6:
	ldr r0, [r6]
	movs r2, #0
	strh r5, [r0]
	strb r2, [r0, #0x10]
	ldr r1, [r6]
	movs r0, #0xe
	strb r0, [r1, #0x14]
	b _080308CC
_080304B6:
	ldr r1, [r6]
	movs r2, #0
	strh r5, [r1]
	movs r0, #3
	strb r0, [r1, #0x10]
	ldr r1, [r6]
	movs r0, #0x2d
	strb r0, [r1, #0x14]
	b _080308CC
_080304C8:
	ldr r1, [r6]
	movs r2, #0
	strh r5, [r1]
	movs r0, #3
	strb r0, [r1, #0x10]
	ldr r1, [r6]
	movs r0, #0x29
	strb r0, [r1, #0x14]
	b _080308CC
_080304DA:
	ldr r1, [r6]
	movs r2, #0
	strh r5, [r1]
	movs r0, #3
	strb r0, [r1, #0x10]
	ldr r1, [r6]
	movs r0, #0x2c
	strb r0, [r1, #0x14]
	b _080308CC
_080304EC:
	ldr r1, [r6]
	movs r2, #0
	strh r5, [r1]
	movs r0, #3
	strb r0, [r1, #0x10]
	ldr r1, [r6]
	movs r0, #0x2b
	strb r0, [r1, #0x14]
	b _080308CC
_080304FE:
	ldr r1, [r6]
	movs r2, #0
	strh r5, [r1]
	movs r0, #3
	strb r0, [r1, #0x10]
	ldr r1, [r6]
	movs r0, #0x2d
	strb r0, [r1, #0x14]
	b _080308CC
_08030510:
	ldr r1, [r6]
	movs r2, #0
	strh r5, [r1]
	movs r0, #3
	strb r0, [r1, #0x10]
	ldr r1, [r6]
	movs r0, #0x3c
	strb r0, [r1, #0x14]
	b _080308CC
_08030522:
	ldr r1, [r6]
	movs r2, #0
	strh r5, [r1]
	movs r0, #3
	strb r0, [r1, #0x10]
	ldr r1, [r6]
	movs r0, #0x3d
	strb r0, [r1, #0x14]
	b _080308CC
_08030534:
	ldr r1, [r6]
	movs r2, #0
	strh r5, [r1]
	movs r0, #3
	strb r0, [r1, #0x10]
	ldr r1, [r6]
	movs r0, #0x3e
	strb r0, [r1, #0x14]
	b _080308CC
_08030546:
	ldr r1, [r6]
	movs r2, #0
	strh r5, [r1]
	movs r0, #3
	strb r0, [r1, #0x10]
	ldr r1, [r6]
	movs r0, #0x3f
	strb r0, [r1, #0x14]
	b _080308CC
_08030558:
	ldr r1, [r6]
	movs r2, #0
	strh r5, [r1]
	movs r0, #2
	strb r0, [r1, #0x10]
	ldr r3, [r6]
	ldr r1, _0803056C
	ldr r0, _08030570
	ldrb r0, [r0]
	b _080308C2
	.align 2, 0
_0803056C: .4byte 0x080CF318
_08030570: .4byte 0x0203E134
_08030574:
	ldr r1, [r6]
	movs r2, #0
	strh r5, [r1]
	movs r0, #3
	strb r0, [r1, #0x10]
	ldr r3, [r6]
	ldr r1, _08030588
	ldr r0, _0803058C
	ldrb r0, [r0]
	b _080308C2
	.align 2, 0
_08030588: .4byte 0x080CEFF0
_0803058C: .4byte 0x0203E134
_08030590:
	ldr r1, [r6]
	movs r2, #0
	strh r5, [r1]
	movs r0, #3
	strb r0, [r1, #0x10]
	ldr r3, [r6]
	ldr r1, _080305A4
	ldr r0, _080305A8
	ldrb r0, [r0]
	b _080308C2
	.align 2, 0
_080305A4: .4byte 0x080CF008
_080305A8: .4byte 0x0203E134
_080305AC:
	ldr r1, [r6]
	movs r2, #0
	strh r5, [r1]
	movs r0, #3
	strb r0, [r1, #0x10]
	ldr r3, [r6]
	ldr r1, _080305C0
	ldr r0, _080305C4
	ldrb r0, [r0]
	b _080308C2
	.align 2, 0
_080305C0: .4byte 0x080CF020
_080305C4: .4byte 0x0203E134
_080305C8:
	ldr r1, [r6]
	movs r2, #0
	strh r5, [r1]
	movs r0, #3
	strb r0, [r1, #0x10]
	ldr r3, [r6]
	ldr r1, _080305DC
	ldr r0, _080305E0
	ldrb r0, [r0]
	b _080308C2
	.align 2, 0
_080305DC: .4byte 0x080CF038
_080305E0: .4byte 0x0203E134
_080305E4:
	ldr r1, [r6]
	movs r2, #0
	strh r5, [r1]
	movs r0, #3
	strb r0, [r1, #0x10]
	ldr r3, [r6]
	ldr r1, _080305F8
	ldr r0, _080305FC
	ldrb r0, [r0]
	b _080308C2
	.align 2, 0
_080305F8: .4byte 0x080CF050
_080305FC: .4byte 0x0203E134
_08030600:
	ldr r1, [r6]
	movs r2, #0
	strh r5, [r1]
	movs r0, #3
	strb r0, [r1, #0x10]
	ldr r3, [r6]
	ldr r1, _08030614
	ldr r0, _08030618
	ldrb r0, [r0]
	b _080308C2
	.align 2, 0
_08030614: .4byte 0x080CF068
_08030618: .4byte 0x0203E134
_0803061C:
	ldr r1, [r6]
	movs r2, #0
	strh r5, [r1]
	movs r0, #3
	strb r0, [r1, #0x10]
	ldr r1, [r6]
	movs r0, #0x39
	strb r0, [r1, #0x14]
	b _080308CC
_0803062E:
	ldr r1, [r6]
	movs r2, #0
	strh r5, [r1]
	movs r0, #1
	strb r0, [r1, #0x10]
	ldr r1, [r6]
	movs r0, #4
	strb r0, [r1, #0x14]
	b _080308CC
_08030640:
	ldr r1, [r6]
	movs r2, #0
	strh r5, [r1]
	movs r0, #3
	strb r0, [r1, #0x10]
	ldr r1, [r6]
	movs r0, #0x18
	strb r0, [r1, #0x14]
	b _080308CC
_08030652:
	ldr r1, [r6]
	movs r2, #0
	strh r5, [r1]
	movs r0, #2
	strb r0, [r1, #0x10]
	ldr r1, [r6]
	movs r0, #0x35
	strb r0, [r1, #0x14]
	b _080308CC
_08030664:
	ldr r1, [r6]
	movs r2, #0
	strh r5, [r1]
	movs r0, #3
	strb r0, [r1, #0x10]
	ldr r1, [r6]
	movs r0, #0x1f
	strb r0, [r1, #0x14]
	b _080308CC
_08030676:
	ldr r1, [r6]
	movs r2, #0
	strh r5, [r1]
	movs r0, #1
	strb r0, [r1, #0x10]
	ldr r1, [r6]
	ldr r0, _0803068C
	ldrb r0, [r0]
	adds r0, #1
	strb r0, [r1, #0x14]
	b _080308CC
	.align 2, 0
_0803068C: .4byte 0x02002E4B
_08030690:
	ldr r1, [r6]
	movs r2, #0
	strh r5, [r1]
	movs r0, #1
	strb r0, [r1, #0x10]
	ldr r1, [r6]
	ldr r0, _080306A8
	ldrb r0, [r0]
	adds r0, #2
	strb r0, [r1, #0x14]
	b _080308CC
	.align 2, 0
_080306A8: .4byte 0x02002E4B
_080306AC:
	ldr r1, [r6]
	movs r2, #0
	strh r5, [r1]
	movs r0, #2
	strb r0, [r1, #0x10]
	ldr r1, [r6]
	movs r0, #0x16
	strb r0, [r1, #0x14]
	b _080308CC
_080306BE:
	ldr r0, [r6]
	movs r2, #0
	strh r5, [r0]
	strb r2, [r0, #0x10]
	ldr r1, [r6]
	movs r0, #0x47
	strb r0, [r1, #0x14]
	b _080308CC
_080306CE:
	ldr r0, [r6]
	movs r2, #0
	strh r5, [r0]
	strb r2, [r0, #0x10]
	ldr r1, [r6]
	movs r0, #0x12
	strb r0, [r1, #0x14]
	b _080308CC
_080306DE:
	ldr r1, [r6]
	movs r2, #0
	strh r5, [r1]
	movs r0, #3
	strb r0, [r1, #0x10]
	ldr r1, [r6]
	movs r0, #0x48
	strb r0, [r1, #0x14]
	b _080308CC
_080306F0:
	ldr r1, [r6]
	movs r2, #0
	strh r5, [r1]
	movs r0, #3
	strb r0, [r1, #0x10]
	ldr r1, [r6]
	movs r0, #0x49
	strb r0, [r1, #0x14]
	b _080308CC
_08030702:
	ldr r1, [r6]
	movs r2, #0
	strh r5, [r1]
	movs r0, #3
	strb r0, [r1, #0x10]
	ldr r1, [r6]
	movs r0, #0x4a
	strb r0, [r1, #0x14]
	b _080308CC
_08030714:
	ldr r1, [r6]
	movs r2, #0
	strh r5, [r1]
	movs r0, #3
	strb r0, [r1, #0x10]
	ldr r1, [r6]
	movs r0, #0x4b
	strb r0, [r1, #0x14]
	b _080308CC
_08030726:
	ldr r1, [r6]
	movs r2, #0
	strh r5, [r1]
	movs r0, #3
	strb r0, [r1, #0x10]
	ldr r1, [r6]
	movs r0, #0x4c
	strb r0, [r1, #0x14]
	b _080308CC
_08030738:
	ldr r1, [r6]
	movs r2, #0
	strh r5, [r1]
	movs r0, #3
	strb r0, [r1, #0x10]
	ldr r1, [r6]
	movs r0, #0x4d
	strb r0, [r1, #0x14]
	b _080308CC
_0803074A:
	ldr r1, [r6]
	movs r2, #0
	strh r5, [r1]
	movs r0, #3
	strb r0, [r1, #0x10]
	ldr r1, [r6]
	movs r0, #0x4e
	strb r0, [r1, #0x14]
	b _080308CC
_0803075C:
	ldr r0, [r6]
	movs r2, #0
	strh r5, [r0]
	strb r2, [r0, #0x10]
	ldr r1, [r6]
	movs r0, #0x4f
	strb r0, [r1, #0x14]
	b _080308CC
_0803076C:
	ldr r1, [r6]
	movs r2, #0
	strh r5, [r1]
	movs r0, #1
	strb r0, [r1, #0x10]
	ldr r1, [r6]
	movs r0, #0x40
	strb r0, [r1, #0x14]
	b _080308CC
_0803077E:
	ldr r1, [r6]
	movs r2, #0
	strh r5, [r1]
	movs r0, #3
	strb r0, [r1, #0x10]
	ldr r1, [r6]
	movs r0, #0x51
	strb r0, [r1, #0x14]
	b _080308CC
_08030790:
	ldr r1, [r6]
	movs r2, #0
	strh r5, [r1]
	movs r0, #3
	strb r0, [r1, #0x10]
	ldr r1, [r6]
	movs r0, #0x52
	strb r0, [r1, #0x14]
	b _080308CC
_080307A2:
	ldr r1, [r6]
	movs r2, #0
	strh r5, [r1]
	movs r0, #3
	strb r0, [r1, #0x10]
	ldr r3, [r6]
	ldr r1, _080307B8
	ldr r0, _080307BC
	ldrb r0, [r0]
	b _080308C2
	.align 2, 0
_080307B8: .4byte 0x080CF300
_080307BC: .4byte 0x0203E135
_080307C0:
	ldr r1, [r6]
	movs r2, #0
	strh r5, [r1]
	movs r0, #3
	strb r0, [r1, #0x10]
	ldr r1, [r6]
	movs r0, #0x55
	strb r0, [r1, #0x14]
	b _080308CC
_080307D2:
	ldr r1, [r6]
	movs r2, #0
	strh r5, [r1]
	movs r0, #3
	strb r0, [r1, #0x10]
	ldr r1, [r6]
	movs r0, #0x56
	strb r0, [r1, #0x14]
	b _080308CC
_080307E4:
	ldr r0, [r6]
	movs r2, #0
	strh r5, [r0]
	strb r2, [r0, #0x10]
	ldr r1, [r6]
	movs r0, #0x57
	strb r0, [r1, #0x14]
	b _080308CC
_080307F4:
	ldr r0, [r6]
	movs r2, #0
	strh r5, [r0]
	strb r2, [r0, #0x10]
	ldr r1, [r6]
	movs r0, #0x58
	strb r0, [r1, #0x14]
	b _080308CC
_08030804:
	ldr r1, [r6]
	movs r2, #0
	strh r5, [r1]
	movs r0, #3
	strb r0, [r1, #0x10]
	ldr r1, [r6]
	movs r0, #0x59
	strb r0, [r1, #0x14]
	b _080308CC
_08030816:
	ldr r0, [r6]
	movs r2, #0
	strh r5, [r0]
	strb r2, [r0, #0x10]
	ldr r1, [r6]
	movs r0, #0x5a
	strb r0, [r1, #0x14]
	b _080308CC
_08030826:
	ldr r0, [r6]
	movs r2, #0
	strh r5, [r0]
	strb r2, [r0, #0x10]
	ldr r1, [r6]
	movs r0, #0x5b
	strb r0, [r1, #0x14]
	b _080308CC
_08030836:
	ldr r0, [r6]
	movs r2, #0
	strh r5, [r0]
	strb r2, [r0, #0x10]
	ldr r1, [r6]
	movs r0, #0x5c
	strb r0, [r1, #0x14]
	b _080308CC
_08030846:
	ldr r0, [r6]
	movs r2, #0
	strh r5, [r0]
	strb r2, [r0, #0x10]
	ldr r1, [r6]
	movs r0, #0x5d
	strb r0, [r1, #0x14]
	b _080308CC
_08030856:
	ldr r1, [r6]
	movs r2, #0
	strh r5, [r1]
	movs r0, #3
	strb r0, [r1, #0x10]
	ldr r1, [r6]
	movs r0, #0x5e
	strb r0, [r1, #0x14]
	b _080308CC
_08030868:
	ldr r1, [r6]
	movs r2, #0
	strh r5, [r1]
	movs r0, #3
	strb r0, [r1, #0x10]
	ldr r1, [r6]
	movs r0, #0x25
	strb r0, [r1, #0x14]
	b _080308CC
_0803087A:
	ldr r1, [r6]
	movs r2, #0
	strh r5, [r1]
	movs r0, #3
	strb r0, [r1, #0x10]
	ldr r1, [r6]
	movs r0, #0x26
	strb r0, [r1, #0x14]
	b _080308CC
_0803088C:
	ldr r1, [r6]
	movs r2, #0
	strh r5, [r1]
	movs r0, #3
	strb r0, [r1, #0x10]
	ldr r1, [r6]
	movs r0, #0x28
	strb r0, [r1, #0x14]
	b _080308CC
_0803089E:
	ldr r1, [r6]
	movs r2, #0
	strh r5, [r1]
	movs r0, #3
	strb r0, [r1, #0x10]
	ldr r1, [r6]
	movs r0, #0x27
	strb r0, [r1, #0x14]
	b _080308CC
_080308B0:
	ldr r1, [r6]
	movs r2, #0
	strh r5, [r1]
	movs r0, #3
	strb r0, [r1, #0x10]
	ldr r3, [r6]
	ldr r1, _080308E0
	ldr r0, _080308E4
	ldr r0, [r0]
_080308C2:
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	adds r0, #1
	strb r0, [r3, #0x14]
_080308CC:
	ldr r0, [r6]
	strb r2, [r0, #0x18]
	ldr r0, [r6]
	adds r0, #0x24
	strb r2, [r0]
	ldr r0, [r6]
	adds r0, #0x28
	strb r2, [r0]
	b _080308EC
	.align 2, 0
_080308E0: .4byte 0x080CF360
_080308E4: .4byte 0x0203E13C
_080308E8:
	.2byte 0xEE00, 0xEE00
_080308EC:
	movs r0, #0x80
	lsls r0, r0, #1
	movs r1, #0
	movs r2, #4
	movs r3, #0
	bl sub_8034460
	ldr r0, _08030914
	movs r1, #0
	strh r1, [r0]
	ldr r0, _08030918
	strh r1, [r0]
	movs r0, #1
	bl sub_80186F4
	movs r0, #1
_0803090C:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08030914: .4byte gKeysDown
_08030918: .4byte gKeysPressed


	.thumb
sub_803091C: @ 0x0803091C
	ldr r1, _0803092C
	movs r0, #0
	strb r0, [r1]
	ldr r1, _08030930
	movs r0, #0
	str r0, [r1]
	bx lr
	.align 2, 0
_0803092C: .4byte gInInteractionArea
_08030930: .4byte 0x0203DFDC

    .thumb
    .global sub_8030934
sub_8030934: @ 0x08030934
	push {lr}
	ldr r0, _080309CC
	ldrb r0, [r0]
	cmp r0, #0
	beq _080309C6
	cmp r0, #1
	bne _0803095C
	movs r0, #0xa1
	movs r1, #0
	bl sub_80342CC
	cmp r0, #0
	bne _0803095C
	movs r0, #0xa1
	movs r1, #0
	bl sub_80342F8
	ldr r0, _080309D0
	bl sub_0802FEDC
_0803095C:
	ldr r0, _080309CC
	ldrb r0, [r0]
	cmp r0, #2
	bne _08030980
	movs r0, #0xa2
	movs r1, #0
	bl sub_80342CC
	cmp r0, #0
	bne _08030980
	movs r0, #0xa2
	movs r1, #0
	bl sub_80342F8
	movs r0, #0xcd
	lsls r0, r0, #1
	bl sub_0802FEDC
_08030980:
	ldr r0, _080309CC
	ldrb r0, [r0]
	cmp r0, #4
	bne _080309A2
	movs r0, #0xa3
	movs r1, #0
	bl sub_80342CC
	cmp r0, #0
	bne _080309A2
	movs r0, #0xa3
	movs r1, #0
	bl sub_80342F8
	ldr r0, _080309D4
	bl sub_0802FEDC
_080309A2:
	ldr r0, _080309CC
	ldrb r0, [r0]
	cmp r0, #3
	bne _080309C6
	movs r0, #0xa4
	movs r1, #0
	bl sub_80342CC
	cmp r0, #0
	bne _080309C6
	movs r0, #0xa4
	movs r1, #0
	bl sub_80342F8
	movs r0, #0xce
	lsls r0, r0, #1
	bl sub_0802FEDC
_080309C6:
	pop {r0}
	bx r0
	.align 2, 0
_080309CC: .4byte byte_20020B1
_080309D0: .4byte 0x00000199
_080309D4: .4byte 0x0000019B

    .thumb
sub_80309D8: @ 0x080309D8
	push {r4, r5, r6, r7, lr}
	ldr r4, _08030A54
	ldrb r0, [r4]
	cmp r0, #0
	bne _08030A7C
	ldr r0, _08030A58
	ldrb r0, [r0]
	cmp r0, #0
	beq _08030A80
	ldr r0, _08030A5C
	ldrb r0, [r0]
	ldr r1, _08030A60
	ldrb r1, [r1]
	bl RandomMinMax
	strb r0, [r4]
	ldr r4, _08030A64
	ldr r0, [r4]
	bl audio_fx_still_active
	cmp r0, #0
	bne _08030A80
	adds r7, r4, #0
	ldr r0, _08030A68
	ldrb r0, [r0]
	cmp r0, #0
	beq _08030A74
	ldr r4, _08030A6C
	movs r0, #0x1f
	movs r1, #0x20
	bl RandomMinMax
	lsls r0, r0, #3
	adds r0, r0, r4
	ldrh r6, [r0]
	movs r0, #0x1f
	movs r1, #0x20
	bl RandomMinMax
	ldr r1, _08030A70
	lsls r0, r0, #3
	ldrb r1, [r1]
	adds r0, r0, r1
	adds r1, r4, #2
	adds r0, r0, r1
	ldrb r5, [r0]
	movs r0, #0x1f
	movs r1, #0x20
	bl RandomMinMax
	lsls r0, r0, #3
	adds r4, #4
	adds r0, r0, r4
	ldr r2, [r0]
	movs r0, #0x80
	lsls r0, r0, #9
	adds r2, r2, r0
	adds r0, r6, #0
	adds r1, r5, #0
	bl audio_new_fx
	b _08030A78
	.align 2, 0
_08030A54: .4byte 0x0203E017
_08030A58: .4byte 0x0203E014
_08030A5C: .4byte 0x0203E015
_08030A60: .4byte 0x0203E016
_08030A64: .4byte 0x0203DFCC
_08030A68: .4byte byte_203EA89
_08030A6C: .4byte 0x080CE440
_08030A70: .4byte byte_203EA8C
_08030A74:
	movs r0, #1
	rsbs r0, r0, #0
_08030A78:
	str r0, [r7]
	b _08030A80
_08030A7C:
	subs r0, #1
	strb r0, [r4]
_08030A80:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

    .thumb
    .global sub_8030A88
sub_8030A88: @ 0x08030A88
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _08030AA0
	ldrb r1, [r0]
	cmp r1, #0
	bne _08030AA4
	movs r0, #0
	b _08030B08
	.align 2, 0
_08030AA0: .4byte 0x0203DFD4
_08030AA4:
	movs r4, #0
	movs r7, #0
	movs r6, #0
	ldr r0, _08030B18
	ldrb r1, [r0]
	cmp r4, r1
	bge _08030B06
	ldr r0, _08030B1C
	ldr r0, [r0]
	movs r2, #0xaf
	lsls r2, r2, #5
	mov sl, r2
	movs r2, #0x80
	lsls r2, r2, #5
	mov sb, r2
	adds r3, r0, #0
	adds r3, #0xfc
	adds r2, r0, #0
	adds r2, #0x2e
	movs r0, #0x80
	lsls r0, r0, #3
	mov r8, r0
	movs r5, #0x84
	lsls r5, r5, #1
	mov ip, r1
_08030AD6:
	ldrb r0, [r2]
	cmp r0, #0
	beq _08030AFC
	ldrh r1, [r3]
	mov r0, sl
	ands r0, r1
	cmp r0, #0
	bne _08030AF0
	adds r0, r1, #0
	cmp r0, sb
	beq _08030AF0
	cmp r0, r8
	bne _08030AF2
_08030AF0:
	adds r4, #1
_08030AF2:
	adds r7, #1
	ldr r1, _08030B20
	ldrb r1, [r1]
	cmp r7, r1
	beq _08030B06
_08030AFC:
	adds r3, r3, r5
	adds r2, r2, r5
	adds r6, #1
	cmp r6, ip
	blt _08030AD6
_08030B06:
	adds r0, r4, #0
_08030B08:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08030B18: .4byte 0x0203DFD5
_08030B1C: .4byte 0x0203E004
_08030B20: .4byte 0x0203DFD4

    .thumb
    .global sub_8030B24
sub_8030B24: @ 0x08030B24
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r5, r0, #0
	ldr r0, _08030B78
	ldrb r1, [r0]
	mov r8, r0
	cmp r1, #0
	beq _08030BA2
	movs r3, #0
	movs r2, #0
	ldr r0, _08030B7C
	adds r4, r0, #0
	ldrb r0, [r4]
	cmp r2, r0
	bge _08030BA2
	ldr r6, _08030B80
	ldr r7, _08030B84
	ldr r1, _08030B88
	mov ip, r1
_08030B4E:
	movs r0, #0xd8
	adds r1, r2, #0
	muls r1, r0, r1
	ldr r0, [r6]
	adds r1, r0, r1
	adds r0, r1, #0
	adds r0, #0x2e
	ldrb r0, [r0]
	cmp r0, #0
	beq _08030B92
	ldrh r0, [r1, #0x1e]
	cmp r0, r5
	bne _08030B90
	movs r0, #1
	str r0, [r7]
	ldr r0, _08030B8C
	str r1, [r0]
	adds r1, #0x38
	ldrb r0, [r1]
	mov r2, ip
	b _08030BEE
	.align 2, 0
_08030B78: .4byte 0x0203DFD0
_08030B7C: .4byte 0x0203E009
_08030B80: .4byte 0x0203DFF4
_08030B84: .4byte 0x0203DFEC
_08030B88: .4byte 0x0203E0F8
_08030B8C: .4byte 0x0203E0F4
_08030B90:
	adds r3, #1
_08030B92:
	mov r0, r8
	ldrb r0, [r0]
	cmp r3, r0
	beq _08030BA2
	adds r2, #1
	ldrb r1, [r4]
	cmp r2, r1
	blt _08030B4E
_08030BA2:
	ldr r0, _08030BF8
	ldrb r1, [r0]
	mov sb, r0
	cmp r1, #0
	beq _08030C22
	movs r3, #0
	movs r2, #0
	ldr r0, _08030BFC
	adds r4, r0, #0
	ldrb r0, [r4]
	cmp r2, r0
	bge _08030C22
	ldr r6, _08030C00
	ldr r1, _08030C04
	mov ip, r1
	ldr r0, _08030C08
	mov r8, r0
	ldr r7, _08030C0C
_08030BC6:
	movs r0, #0xd8
	adds r1, r2, #0
	muls r1, r0, r1
	ldr r0, [r6]
	adds r1, r0, r1
	adds r0, r1, #0
	adds r0, #0x2e
	ldrb r0, [r0]
	cmp r0, #0
	beq _08030C12
	ldrh r0, [r1, #0x1e]
	cmp r0, r5
	bne _08030C10
	movs r0, #1
	mov r2, ip
	str r0, [r2]
	str r1, [r7]
	adds r1, #0x38
	ldrb r0, [r1]
	mov r2, r8
_08030BEE:
	str r0, [r2]
	movs r0, #2
	strb r0, [r1]
	b _08030C22
	.align 2, 0
_08030BF8: .4byte 0x0203DFD1
_08030BFC: .4byte 0x0203E00A
_08030C00: .4byte 0x0203DFF8
_08030C04: .4byte 0x0203DFEC
_08030C08: .4byte 0x0203E0F8
_08030C0C: .4byte 0x0203E0F4
_08030C10:
	adds r3, #1
_08030C12:
	mov r0, sb
	ldrb r0, [r0]
	cmp r3, r0
	beq _08030C22
	adds r2, #1
	ldrb r1, [r4]
	cmp r2, r1
	blt _08030BC6
_08030C22:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

    .thumb
    .global sub_8030C30
sub_8030C30: @ 0x08030C30
	ldr r3, _08030C48
	ldr r1, [r3]
	ldr r0, _08030C4C
	ldr r0, [r0]
	adds r1, #0x38
	movs r2, #0
	strb r0, [r1]
	ldr r0, _08030C50
	str r2, [r0]
	str r2, [r3]
	bx lr
	.align 2, 0
_08030C48: .4byte 0x0203E0F4
_08030C4C: .4byte 0x0203E0F8
_08030C50: .4byte 0x0203DFEC

    .thumb
    .global sub_8030C54
sub_8030C54: @ 0x08030C54
	push {lr}
	movs r0, #4
	movs r1, #0xe
	bl FreeById
	bl sub_08030C68
	pop {r0}
	bx r0
	.align 2, 0

    .thumb
    .global sub_08030C68
sub_08030C68: @ 0x08030C68
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x48
	ldr r1, _08031020
	movs r0, #0
	str r0, [r1]
	ldr r3, _08031024
	ldr r4, _08031028
	ldr r5, _0803102C
	ldr r6, _08031030
	ldr r0, _08031034
	mov r8, r0
	ldr r1, _08031038
	mov sb, r1
	ldr r7, _0803103C
	ldr r2, _08031040
	mov sl, r2
	ldr r0, _08031044
	mov ip, r0
	ldr r1, _08031048
	movs r2, #0
	adds r0, r1, #0
	adds r0, #0xb4
_08030C9C:
	str r2, [r0]
	subs r0, #0x14
	cmp r0, r1
	bge _08030C9C
	ldr r1, _0803104C
	movs r2, #0
	adds r0, r1, #0
	adds r0, #0x12
_08030CAC:
	strb r2, [r0]
	subs r0, #1
	cmp r0, r1
	bge _08030CAC
	movs r0, #0
	strb r0, [r3]
	strb r0, [r4]
	strb r0, [r5]
	strb r0, [r6]
	mov r1, r8
	strb r0, [r1]
	mov r2, sb
	strb r0, [r2]
	ldr r3, _08031050
	strb r0, [r3]
	ldr r4, _08031054
	strb r0, [r4]
	ldr r6, _08031058
	strb r0, [r6]
	ldr r1, _0803105C
	strb r0, [r1]
	ldr r2, _08031060
	strb r0, [r2]
	ldr r3, _08031064
	strb r0, [r3]
	ldr r4, _08031068
	strb r0, [r4]
	movs r2, #1
	movs r1, #0x3f
	ldr r6, _0803106C
	strb r1, [r6]
	ldr r1, _08031070
	strb r0, [r1]
	ldr r3, _08031074
	strb r0, [r3]
	ldr r4, _08031078
	strb r0, [r4]
	ldr r6, _0803107C
	strb r0, [r6]
	ldr r1, _08031080
	strb r0, [r1]
	ldr r3, _08031084
	strb r0, [r3]
	ldr r4, _08031088
	strb r0, [r4]
	ldr r6, _0803108C
	strb r0, [r6]
	ldr r1, _08031090
	strb r0, [r1]
	ldr r3, _08031094
	strb r2, [r3]
	ldr r4, _08031098
	strb r0, [r4]
	ldr r6, _0803109C
	strb r0, [r6]
	ldr r1, _080310A0
	strb r0, [r1]
	ldr r3, _080310A4
	strb r0, [r3]
	ldr r4, _080310A8
	strb r0, [r4]
	ldr r6, _080310AC
	strb r0, [r6]
	ldr r1, _080310B0
	strb r2, [r1]
	ldr r3, _080310B4
	strb r0, [r3]
	ldr r4, _080310B8
	strb r0, [r4]
	ldr r6, _080310BC
	strb r2, [r6]
	ldr r1, _080310C0
	strb r0, [r1]
	ldr r3, _080310C4
	strb r0, [r3]
	ldr r4, _080310C8
	strb r0, [r4]
	ldr r6, _080310CC
	strb r0, [r6]
	ldr r1, _080310D0
	strb r0, [r1]
	ldr r3, _080310D4
	strb r2, [r3]
	ldr r4, _080310D8
	strb r0, [r4]
	ldr r6, _080310DC
	strb r0, [r6]
	ldr r1, _080310E0
	strb r0, [r1]
	ldr r2, _080310E4
	strb r0, [r2]
	ldr r3, _080310E8
	strb r0, [r3]
	ldr r4, _080310EC
	strb r0, [r4]
	ldr r6, _080310F0
	strb r0, [r6]
	ldr r1, _080310F4
	strb r0, [r1]
	ldr r2, _080310F8
	strb r0, [r2]
	ldr r3, _080310FC
	strb r0, [r3]
	ldr r4, _08031100
	strb r0, [r4]
	ldr r6, _08031104
	strb r0, [r6]
	ldr r1, _08031108
	strb r0, [r1]
	ldr r2, _0803110C
	strb r0, [r2]
	ldr r3, _08031110
	strb r0, [r3]
	ldr r4, _08031114
	strb r0, [r4]
	ldr r6, _08031118
	strb r0, [r6]
	ldr r1, _0803111C
	strb r0, [r1]
	ldr r2, _08031120
	strb r0, [r2]
	ldr r3, _08031124
	strb r0, [r3]
	ldr r4, _08031128
	strb r0, [r4]
	ldr r6, _0803112C
	strb r0, [r6]
	ldr r1, _08031130
	strb r0, [r1]
	ldr r2, _08031134
	strb r0, [r2]
	ldr r3, _08031138
	strb r0, [r3]
	ldr r4, _0803113C
	strb r0, [r4]
	ldr r6, _08031140
	strb r0, [r6]
	ldr r1, _08031144
	strb r0, [r1]
	ldr r2, _08031148
	strb r0, [r2]
	ldr r3, _0803114C
	strb r0, [r3]
	ldr r4, _08031150
	strb r0, [r4]
	ldr r6, _08031154
	strb r0, [r6]
	ldr r1, _08031158
	strb r0, [r1]
	ldr r2, _0803115C
	strb r0, [r2]
	ldr r3, _08031160
	strb r0, [r3]
	ldr r4, _08031164
	strb r0, [r4]
	ldr r6, _08031168
	strb r0, [r6]
	ldr r1, _0803116C
	strb r0, [r1]
	ldr r2, _08031170
	strb r0, [r2]
	ldr r3, _08031174
	strb r0, [r3]
	ldr r4, _08031178
	strb r0, [r4]
	ldr r6, _0803117C
	strb r0, [r6]
	ldr r1, _08031180
	strb r0, [r1]
	ldr r2, _08031184
	strb r0, [r2]
	ldr r3, _08031188
	strb r0, [r3]
	ldr r4, _0803118C
	strb r0, [r4]
	ldr r6, _08031190
	strb r0, [r6]
	ldr r1, _08031194
	strb r0, [r1]
	ldr r2, _08031198
	strb r0, [r2]
	ldr r3, _0803119C
	strb r0, [r3]
	movs r0, #0
	ldr r4, _080311A0
	str r0, [r4]
	ldr r6, _080311A4
	strb r0, [r6]
	ldr r1, _080311A8
	strb r0, [r1]
	ldr r2, _080311AC
	strb r0, [r2]
	ldr r3, _080311B0
	strb r0, [r3]
	ldr r4, _080311B4
	strb r0, [r4]
	ldr r6, _080311B8
	strb r0, [r6]
	ldr r1, _080311BC
	strb r0, [r1]
	ldr r2, _080311C0
	strb r0, [r2]
	ldr r3, _080311C4
	strb r0, [r3]
	ldr r4, _080311C8
	strb r0, [r4]
	ldr r6, _080311CC
	strb r0, [r6]
	ldr r1, _080311D0
	strb r0, [r1]
	ldr r2, _080311D4
	strb r0, [r2]
	ldr r3, _080311D8
	strb r0, [r3]
	ldr r4, _080311DC
	strb r0, [r4]
	ldr r6, _080311E0
	strb r0, [r6]
	ldr r1, _080311E4
	strb r0, [r1]
	ldr r2, _080311E8
	strb r0, [r2]
	ldr r3, _080311EC
	strb r0, [r3]
	ldr r4, _080311F0
	strb r0, [r4]
	ldr r6, _080311F4
	strb r0, [r6]
	ldr r1, _080311F8
	strb r0, [r1]
	ldr r2, _080311FC
	strb r0, [r2]
	ldr r3, _08031200
	strb r0, [r3]
	ldr r4, _08031204
	strb r0, [r4]
	ldr r6, _08031208
	strb r0, [r6]
	ldr r1, _0803120C
	strb r0, [r1]
	ldr r2, _08031210
	strb r0, [r2]
	ldr r3, _08031214
	strb r0, [r3]
	ldr r4, _08031218
	strb r0, [r4]
	ldr r6, _0803121C
	strb r0, [r6]
	ldr r1, _08031220
	strb r0, [r1]
	ldr r2, _08031224
	strb r0, [r2]
	ldr r3, _08031228
	strb r0, [r3]
	ldr r4, _0803122C
	strb r0, [r4]
	ldr r6, _08031230
	strb r0, [r6]
	ldr r1, _08031234
	strb r0, [r1]
	ldr r2, _08031238
	strb r0, [r2]
	ldr r3, _0803123C
	strb r0, [r3]
	ldr r4, _08031240
	strb r0, [r4]
	ldr r6, _08031244
	strb r0, [r6]
	ldr r1, _08031248
	strb r0, [r1]
	ldr r2, _0803124C
	strb r0, [r2]
	ldr r3, _08031250
	strb r0, [r3]
	movs r4, #0
	str r4, [sp]
	ldr r5, _08031254
	movs r1, #0
	ldr r4, _08031258
	ldr r3, _0803125C
	movs r2, #1
_08030EDE:
	ldr r6, [sp]
	adds r0, r6, r5
	strb r1, [r0]
	adds r0, r6, r4
	strb r1, [r0]
	adds r0, r6, r3
	strb r2, [r0]
	adds r6, #1
	str r6, [sp]
	cmp r6, #5
	ble _08030EDE
	movs r0, #0
	str r0, [sp]
	ldr r0, _0803103C
	movs r3, #0
	adds r5, r0, #0
	adds r5, #0x70
	adds r4, r0, #0
_08030F02:
	ldr r2, [sp]
	lsls r1, r2, #4
	strb r3, [r4, #1]
	strb r3, [r4]
	strb r3, [r4, #3]
	strb r3, [r4, #2]
	strb r3, [r4, #4]
	strb r3, [r4, #5]
	strb r3, [r4, #6]
	strb r3, [r4, #7]
	strb r3, [r4, #8]
	strb r3, [r4, #9]
	strb r3, [r4, #0xa]
	strb r3, [r4, #0xb]
	strb r3, [r4, #0xc]
	strb r3, [r4, #0xd]
	strb r3, [r4, #0xe]
	strb r3, [r4, #0xf]
	strb r3, [r4, #0x10]
	strb r3, [r4, #0x11]
	strb r3, [r4, #0x12]
	strb r3, [r4, #0x13]
	strb r3, [r4, #0x14]
	strb r3, [r4, #0x15]
	strb r3, [r4, #0x16]
	strb r3, [r4, #0x17]
	strb r3, [r4, #0x18]
	strb r3, [r4, #0x19]
	strb r3, [r5]
	strb r3, [r5, #1]
	strb r3, [r5, #2]
	strb r3, [r5, #3]
	strb r3, [r5, #4]
	strb r3, [r5, #5]
	movs r0, #0xc4
	muls r0, r2, r0
	mov r6, sl
	adds r2, r0, r6
	strb r3, [r2]
	strb r3, [r2, #1]
	strb r3, [r2, #2]
	strb r3, [r2, #3]
	strb r3, [r2, #4]
	strb r3, [r2, #0x13]
	strb r3, [r2, #0x14]
	strb r3, [r2, #0x15]
	strb r3, [r2, #0x12]
	strb r3, [r2, #5]
	strb r3, [r2, #6]
	strb r3, [r2, #7]
	strb r3, [r2, #8]
	strb r3, [r2, #9]
	strb r3, [r2, #0xa]
	strb r3, [r2, #0xb]
	strb r3, [r2, #0xc]
	strb r3, [r2, #0xd]
	strb r3, [r2, #0x16]
	strb r3, [r2, #0x17]
	strb r3, [r2, #0x18]
	strb r3, [r2, #0xe]
	strb r3, [r2, #0xf]
	strb r3, [r2, #0x10]
	strb r3, [r2, #0x11]
	strb r3, [r2, #0x19]
	strb r3, [r2, #0x1a]
	strb r3, [r2, #0x1b]
	strb r3, [r2, #0x1c]
	strb r3, [r2, #0x1f]
	adds r0, r2, #0
	adds r0, #0x26
	strb r3, [r0]
	subs r0, #4
	strb r3, [r0]
	adds r0, #1
	strb r3, [r0]
	adds r0, #1
	strb r3, [r0]
	adds r0, #1
	strb r3, [r0]
	strb r3, [r2, #0x1d]
	strb r3, [r2, #0x1e]
	subs r0, #5
	strb r3, [r0]
	adds r0, #1
	strb r3, [r0]
	ldr r0, _08031260
	adds r1, r1, r0
	strb r3, [r1]
	strb r3, [r1, #1]
	strb r3, [r1, #2]
	adds r5, #0x78
	adds r4, #0x78
	ldr r1, [sp]
	adds r1, #1
	str r1, [sp]
	cmp r1, #5
	ble _08030F02
	movs r2, #0
	str r2, [sp]

    .thumb
sub_08030FC8: @ 0x08030FC8
	ldr r3, [sp]
	lsls r0, r3, #3
	mov r4, ip
	adds r2, r0, r4
	ldrb r1, [r2, #4]
	adds r5, r0, #0
	cmp r1, #0xff
	bne _08030FDC
	bl _08031BDC
_08030FDC:
	ldr r0, [r2]
	ldr r0, [r0, #0x40]
	mov r8, r0
	movs r4, #0
	ldrh r6, [r0, #8]
	cmp r4, r6
	blt _08030FEE
	bl _08031BDC
_08030FEE:
	mov r0, r8
	ldr r1, [r0, #4]
	lsls r0, r4, #3
	adds r1, r0, r1
	ldr r6, [r1]
	movs r2, #0
	mov sb, r2
	str r0, [sp, #0xc]
	adds r4, #1
	str r4, [sp, #8]
	ldrh r1, [r1, #4]
	cmp sb, r1
	blt _0803100C
	bl _08031BCE
_0803100C:
	ldrh r0, [r6, #2]
	cmp r0, #0xc6
	bls _08031016
	bl _08031BB6
_08031016:
	lsls r0, r0, #2
	ldr r1, _08031264
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08031020: .4byte 0x0203EA78
_08031024: .4byte 0x0203E938
_08031028: .4byte 0x0203E939
_0803102C: .4byte 0x0203E940
_08031030: .4byte 0x0203E94F
_08031034: .4byte 0x0203E950
_08031038: .4byte 0x0203E967
_0803103C: .4byte 0x0203E170
_08031040: .4byte 0x0203E440
_08031044: .4byte 0x080CF4EC
_08031048: .4byte 0x0203E9B0
_0803104C: .4byte 0x0203E0FC
_08031050: .4byte 0x0203E964
_08031054: .4byte 0x0203E965
_08031058: .4byte 0x0203E966
_0803105C: .4byte 0x0203E93A
_08031060: .4byte 0x0203E93E
_08031064: .4byte 0x0203E93F
_08031068: .4byte 0x0203E10F
_0803106C: .4byte 0x0203E93C
_08031070: .4byte 0x0203E93B
_08031074: .4byte 0x0203E93D
_08031078: .4byte 0x0203E941
_0803107C: .4byte 0x0203E942
_08031080: .4byte 0x0203E943
_08031084: .4byte 0x0203E944
_08031088: .4byte 0x0203E945
_0803108C: .4byte 0x0203E946
_08031090: .4byte 0x0203E947
_08031094: .4byte 0x0203E948
_08031098: .4byte 0x0203E949
_0803109C: .4byte 0x0203E94A
_080310A0: .4byte 0x0203E94E
_080310A4: .4byte 0x0203E94B
_080310A8: .4byte 0x0203E94C
_080310AC: .4byte 0x0203E94D
_080310B0: .4byte 0x0203E955
_080310B4: .4byte 0x0203E951
_080310B8: .4byte 0x0203E952
_080310BC: .4byte 0x0203E953
_080310C0: .4byte 0x0203E954
_080310C4: .4byte 0x0203E956
_080310C8: .4byte 0x0203E957
_080310CC: .4byte 0x0203E958
_080310D0: .4byte 0x0203E959
_080310D4: .4byte 0x0203E95A
_080310D8: .4byte 0x0203E95B
_080310DC: .4byte 0x0203E95C
_080310E0: .4byte 0x0203E97B
_080310E4: .4byte 0x0203E95D
_080310E8: .4byte 0x0203E95E
_080310EC: .4byte 0x0203E95F
_080310F0: .4byte 0x0203E960
_080310F4: .4byte 0x0203E961
_080310F8: .4byte 0x0203E975
_080310FC: .4byte 0x0203E976
_08031100: .4byte 0x0203E977
_08031104: .4byte 0x0203E978
_08031108: .4byte 0x0203E979
_0803110C: .4byte 0x0203E97A
_08031110: .4byte 0x0203E962
_08031114: .4byte 0x0203E963
_08031118: .4byte 0x0203E97C
_0803111C: .4byte 0x0203E968
_08031120: .4byte 0x0203E969
_08031124: .4byte 0x0203E96A
_08031128: .4byte 0x0203E96B
_0803112C: .4byte 0x0203E96C
_08031130: .4byte 0x0203E96D
_08031134: .4byte 0x0203E96E
_08031138: .4byte 0x0203E96F
_0803113C: .4byte 0x0203E970
_08031140: .4byte 0x0203E97D
_08031144: .4byte 0x0203E136
_08031148: .4byte 0x0203E137
_0803114C: .4byte 0x0203E122
_08031150: .4byte 0x0203E123
_08031154: .4byte 0x0203E124
_08031158: .4byte 0x0203E125
_0803115C: .4byte 0x0203E126
_08031160: .4byte 0x0203E127
_08031164: .4byte 0x0203E128
_08031168: .4byte 0x0203E129
_0803116C: .4byte 0x0203E12A
_08031170: .4byte 0x0203E12B
_08031174: .4byte 0x0203E12C
_08031178: .4byte 0x0203E12D
_0803117C: .4byte 0x0203E12E
_08031180: .4byte 0x0203E12F
_08031184: .4byte 0x0203E130
_08031188: .4byte 0x0203E131
_0803118C: .4byte 0x0203E132
_08031190: .4byte 0x0203E133
_08031194: .4byte 0x0203E972
_08031198: .4byte 0x0203E973
_0803119C: .4byte 0x0203E974
_080311A0: .4byte 0x0203E980
_080311A4: .4byte 0x0203E971
_080311A8: .4byte 0x0203E16C
_080311AC: .4byte 0x0203E16A
_080311B0: .4byte 0x0203E16B
_080311B4: .4byte 0x0203E142
_080311B8: .4byte 0x0203E143
_080311BC: .4byte 0x0203E144
_080311C0: .4byte 0x0203E145
_080311C4: .4byte 0x0203E146
_080311C8: .4byte 0x0203E147
_080311CC: .4byte 0x0203E148
_080311D0: .4byte 0x0203E149
_080311D4: .4byte 0x0203E14A
_080311D8: .4byte 0x0203E14B
_080311DC: .4byte 0x0203E14C
_080311E0: .4byte 0x0203E14D
_080311E4: .4byte 0x0203E14E
_080311E8: .4byte 0x0203E14F
_080311EC: .4byte 0x0203E150
_080311F0: .4byte 0x0203E151
_080311F4: .4byte 0x0203E152
_080311F8: .4byte 0x0203E153
_080311FC: .4byte 0x0203E154
_08031200: .4byte 0x0203E155
_08031204: .4byte 0x0203E156
_08031208: .4byte 0x0203E157
_0803120C: .4byte 0x0203E158
_08031210: .4byte 0x0203E159
_08031214: .4byte 0x0203E15A
_08031218: .4byte 0x0203E15B
_0803121C: .4byte 0x0203E15C
_08031220: .4byte 0x0203E15D
_08031224: .4byte 0x0203E15E
_08031228: .4byte 0x0203E15F
_0803122C: .4byte 0x0203E160
_08031230: .4byte 0x0203E161
_08031234: .4byte 0x0203E162
_08031238: .4byte 0x0203E163
_0803123C: .4byte 0x0203E164
_08031240: .4byte 0x0203E165
_08031244: .4byte 0x0203E166
_08031248: .4byte 0x0203E167
_0803124C: .4byte 0x0203E168
_08031250: .4byte 0x0203E169
_08031254: .4byte 0x0203E110
_08031258: .4byte 0x0203E116
_0803125C: .4byte 0x0203E11C
_08031260: .4byte 0x0203E8D8
_08031264: .4byte 0x08031268
_08031268: @ jump table
	.4byte _080316B4 @ case 0
	.4byte _08031BB6 @ case 1
	.4byte _08031BB6 @ case 2
	.4byte _080315F4 @ case 3
	.4byte _08031604 @ case 4
	.4byte _080315BA @ case 5
	.4byte _08031594 @ case 6
	.4byte _080315A4 @ case 7
	.4byte _08031584 @ case 8
	.4byte _08031614 @ case 9
	.4byte _08031624 @ case 10
	.4byte _0803191E @ case 11
	.4byte _0803192C @ case 12
	.4byte _0803193A @ case 13
	.4byte _08031634 @ case 14
	.4byte _08031BB6 @ case 15
	.4byte _08031BB6 @ case 16
	.4byte _08031BB6 @ case 17
	.4byte _08031BB6 @ case 18
	.4byte _08031BB6 @ case 19
	.4byte _08031BB6 @ case 20
	.4byte _08031BB6 @ case 21
	.4byte _08031BB6 @ case 22
	.4byte _08031B74 @ case 23
	.4byte _08031BB6 @ case 24
	.4byte _08031BB6 @ case 25
	.4byte _08031BB6 @ case 26
	.4byte _08031BB6 @ case 27
	.4byte _08031BB6 @ case 28
	.4byte _08031BB6 @ case 29
	.4byte _08031BB6 @ case 30
	.4byte _08031948 @ case 31
	.4byte _08031BB6 @ case 32
	.4byte _08031BB6 @ case 33
	.4byte _08031BB6 @ case 34
	.4byte _08031654 @ case 35
	.4byte _08031664 @ case 36
	.4byte _08031674 @ case 37
	.4byte _08031684 @ case 38
	.4byte _08031970 @ case 39
	.4byte _08031BB6 @ case 40
	.4byte _08031BB6 @ case 41
	.4byte _08031BB6 @ case 42
	.4byte _08031BB6 @ case 43
	.4byte _08031BB6 @ case 44
	.4byte _08031BB6 @ case 45
	.4byte _08031A0C @ case 46
	.4byte _08031BB6 @ case 47
	.4byte _08031BB6 @ case 48
	.4byte _08031BB6 @ case 49
	.4byte _08031BB6 @ case 50
	.4byte _08031BB6 @ case 51
	.4byte _08031A34 @ case 52
	.4byte _08031694 @ case 53
	.4byte _08031BB6 @ case 54
	.4byte _08031BB6 @ case 55
	.4byte _08031BB6 @ case 56
	.4byte _08031BB6 @ case 57
	.4byte _08031BB6 @ case 58
	.4byte _08031BB6 @ case 59
	.4byte _08031BB6 @ case 60
	.4byte _08031A5C @ case 61
	.4byte _080316A4 @ case 62
	.4byte _0803190A @ case 63
	.4byte _08031BB6 @ case 64
	.4byte _0803187E @ case 65
	.4byte _08031994 @ case 66
	.4byte _080319BC @ case 67
	.4byte _080319E4 @ case 68
	.4byte _08031BB6 @ case 69
	.4byte _08031BB6 @ case 70
	.4byte _08031BB6 @ case 71
	.4byte _08031BB6 @ case 72
	.4byte _08031BB6 @ case 73
	.4byte _08031BB6 @ case 74
	.4byte _080316C4 @ case 75
	.4byte _08031BB6 @ case 76
	.4byte _08031BB6 @ case 77
	.4byte _08031842 @ case 78
	.4byte _08031A84 @ case 79
	.4byte _08031BB6 @ case 80
	.4byte _08031BB6 @ case 81
	.4byte _08031AAC @ case 82
	.4byte _08031BB6 @ case 83
	.4byte _08031BB6 @ case 84
	.4byte _08031BB6 @ case 85
	.4byte _08031AFC @ case 86
	.4byte _08031AD4 @ case 87
	.4byte _080316D4 @ case 88
	.4byte _080316EA @ case 89
	.4byte _080316FA @ case 90
	.4byte _08031BB6 @ case 91
	.4byte _08031BB6 @ case 92
	.4byte _08031BB6 @ case 93
	.4byte _08031BB6 @ case 94
	.4byte _0803181A @ case 95
	.4byte _0803180A @ case 96
	.4byte _08031BB6 @ case 97
	.4byte _080317CA @ case 98
	.4byte _080317DA @ case 99
	.4byte _080317EA @ case 100
	.4byte _080317FA @ case 101
	.4byte _08031BB6 @ case 102
	.4byte _0803170A @ case 103
	.4byte _0803172A @ case 104
	.4byte _0803174A @ case 105
	.4byte _0803176A @ case 106
	.4byte _0803178A @ case 107
	.4byte _08031BB6 @ case 108
	.4byte _08031BB6 @ case 109
	.4byte _080317BA @ case 110
	.4byte _080317AA @ case 111
	.4byte _08031B24 @ case 112
	.4byte _08031B4C @ case 113
	.4byte _08031BB6 @ case 114
	.4byte _08031BB6 @ case 115
	.4byte _08031BB6 @ case 116
	.4byte _08031BB6 @ case 117
	.4byte _08031BB6 @ case 118
	.4byte _08031BB6 @ case 119
	.4byte _08031BB6 @ case 120
	.4byte _08031BB6 @ case 121
	.4byte _08031BB6 @ case 122
	.4byte _08031BB6 @ case 123
	.4byte _08031BB6 @ case 124
	.4byte _08031BB6 @ case 125
	.4byte _08031BB6 @ case 126
	.4byte _08031BB6 @ case 127
	.4byte _08031BB6 @ case 128
	.4byte _08031BB6 @ case 129
	.4byte _08031BB6 @ case 130
	.4byte _08031BB6 @ case 131
	.4byte _08031BB6 @ case 132
	.4byte _08031BB6 @ case 133
	.4byte _08031BB6 @ case 134
	.4byte _08031BB6 @ case 135
	.4byte _08031BB6 @ case 136
	.4byte _08031BB6 @ case 137
	.4byte _08031BB6 @ case 138
	.4byte _08031BB6 @ case 139
	.4byte _08031BB6 @ case 140
	.4byte _08031BB6 @ case 141
	.4byte _08031BB6 @ case 142
	.4byte _08031BB6 @ case 143
	.4byte _08031BB6 @ case 144
	.4byte _08031BB6 @ case 145
	.4byte _08031BB6 @ case 146
	.4byte _08031BB6 @ case 147
	.4byte _08031BB6 @ case 148
	.4byte _08031BB6 @ case 149
	.4byte _08031BB6 @ case 150
	.4byte _08031BB6 @ case 151
	.4byte _08031BB6 @ case 152
	.4byte _08031BB6 @ case 153
	.4byte _08031BB6 @ case 154
	.4byte _08031BB6 @ case 155
	.4byte _08031BB6 @ case 156
	.4byte _08031BB6 @ case 157
	.4byte _08031B8C @ case 158
	.4byte _08031BA4 @ case 159
	.4byte _08031BB6 @ case 160
	.4byte _08031BB6 @ case 161
	.4byte _08031BB6 @ case 162
	.4byte _08031BB6 @ case 163
	.4byte _08031BB6 @ case 164
	.4byte _08031BB6 @ case 165
	.4byte _08031BB6 @ case 166
	.4byte _08031BB6 @ case 167
	.4byte _08031BB6 @ case 168
	.4byte _08031BB6 @ case 169
	.4byte _08031644 @ case 170
	.4byte _08031BB6 @ case 171
	.4byte _08031BB6 @ case 172
	.4byte _08031BB6 @ case 173
	.4byte _08031BB6 @ case 174
	.4byte _08031BB6 @ case 175
	.4byte _08031BB6 @ case 176
	.4byte _08031BB6 @ case 177
	.4byte _08031BB6 @ case 178
	.4byte _08031BB6 @ case 179
	.4byte _08031BB6 @ case 180
	.4byte _0803195C @ case 181
	.4byte _08031BB6 @ case 182
	.4byte _08031BB6 @ case 183
	.4byte _08031BB6 @ case 184
	.4byte _08031BB6 @ case 185
	.4byte _08031892 @ case 186
	.4byte _080318A6 @ case 187
	.4byte _080318BA @ case 188
	.4byte _080318CE @ case 189
	.4byte _080318E2 @ case 190
	.4byte _080318F6 @ case 191
	.4byte _08031BB6 @ case 192
	.4byte _08031BB6 @ case 193
	.4byte _0803186A @ case 194
	.4byte _08031BB6 @ case 195
	.4byte _0803182E @ case 196
	.4byte _08031BB6 @ case 197
	.4byte _08031856 @ case 198
_08031584:
	mov r3, ip
	adds r0, r5, r3
	ldrb r0, [r0, #4]
	lsls r1, r0, #4
	subs r1, r1, r0
	lsls r1, r1, #3
	adds r1, r1, r7
	b _08031BB0
_08031594:
	mov r4, ip
	adds r0, r5, r4
	ldrb r0, [r0, #4]
	lsls r1, r0, #4
	subs r1, r1, r0
	lsls r1, r1, #3
	adds r1, r1, r7
	b _08031954
_080315A4:
	mov r1, ip
	adds r0, r5, r1
	ldrb r0, [r0, #4]
	lsls r1, r0, #4
	subs r1, r1, r0
	lsls r1, r1, #3
	adds r1, r1, r7
	ldrb r0, [r1, #4]
	adds r0, #1
	strb r0, [r1, #4]
	b _08031BB6
_080315BA:
	mov r3, ip
	adds r2, r5, r3
	ldrb r0, [r2, #4]
	lsls r1, r0, #4
	subs r1, r1, r0
	lsls r1, r1, #3
	adds r1, r1, r7
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldrb r0, [r6, #0xc]
	cmp r0, #3
	beq _080315DA
	cmp r0, #0x9b
	beq _080315E8
	b _08031BB6
_080315DA:
	ldr r0, _080315E4
	ldrb r1, [r2, #4]
	lsls r1, r1, #1
	adds r1, r1, r0
	b _080315EA
	.align 2, 0
_080315E4: .4byte 0x0203E988
_080315E8:
	ldr r1, _080315F0
_080315EA:
	ldrh r0, [r6, #6]
	strh r0, [r1]
	b _08031BB6
	.align 2, 0
_080315F0: .4byte 0x0203E994
_080315F4:
	mov r4, ip
	adds r0, r5, r4
	ldrb r0, [r0, #4]
	lsls r1, r0, #4
	subs r1, r1, r0
	lsls r1, r1, #3
	adds r1, r1, r7
	b _08031B98
_08031604:
	mov r1, ip
	adds r0, r5, r1
	ldrb r0, [r0, #4]
	lsls r1, r0, #4
	subs r1, r1, r0
	lsls r1, r1, #3
	adds r1, r1, r7
	b _08031968
_08031614:
	mov r2, ip
	adds r0, r5, r2
	ldrb r0, [r0, #4]
	lsls r1, r0, #4
	subs r1, r1, r0
	lsls r1, r1, #3
	adds r1, r1, r7
	b _08031916
_08031624:
	mov r3, ip
	adds r0, r5, r3
	ldrb r0, [r0, #4]
	lsls r1, r0, #4
	subs r1, r1, r0
	lsls r1, r1, #3
	adds r1, r1, r7
	b _0803189E
_08031634:
	mov r4, ip
	adds r0, r5, r4
	ldrb r0, [r0, #4]
	lsls r1, r0, #4
	subs r1, r1, r0
	lsls r1, r1, #3
	adds r1, r1, r7
	b _080318B2
_08031644:
	mov r1, ip
	adds r0, r5, r1
	ldrb r0, [r0, #4]
	lsls r1, r0, #4
	subs r1, r1, r0
	lsls r1, r1, #3
	adds r1, r1, r7
	b _080318C6
_08031654:
	mov r2, ip
	adds r0, r5, r2
	ldrb r0, [r0, #4]
	lsls r1, r0, #4
	subs r1, r1, r0
	lsls r1, r1, #3
	adds r1, r1, r7
	b _080318DA
_08031664:
	mov r3, ip
	adds r0, r5, r3
	ldrb r0, [r0, #4]
	lsls r1, r0, #4
	subs r1, r1, r0
	lsls r1, r1, #3
	adds r1, r1, r7
	b _080318EE
_08031674:
	mov r4, ip
	adds r0, r5, r4
	ldrb r0, [r0, #4]
	lsls r1, r0, #4
	subs r1, r1, r0
	lsls r1, r1, #3
	adds r1, r1, r7
	b _08031902
_08031684:
	mov r1, ip
	adds r0, r5, r1
	ldrb r0, [r0, #4]
	lsls r1, r0, #4
	subs r1, r1, r0
	lsls r1, r1, #3
	adds r1, r1, r7
	b _0803188A
_08031694:
	mov r2, ip
	adds r0, r5, r2
	ldrb r0, [r0, #4]
	lsls r1, r0, #4
	subs r1, r1, r0
	lsls r1, r1, #3
	adds r1, r1, r7
	b _08031876
_080316A4:
	mov r3, ip
	adds r0, r5, r3
	ldrb r0, [r0, #4]
	lsls r1, r0, #4
	subs r1, r1, r0
	lsls r1, r1, #3
	adds r1, r1, r7
	b _08031862
_080316B4:
	mov r4, ip
	adds r0, r5, r4
	ldrb r0, [r0, #4]
	lsls r1, r0, #4
	subs r1, r1, r0
	lsls r1, r1, #3
	adds r1, r1, r7
	b _0803184E
_080316C4:
	mov r1, ip
	adds r0, r5, r1
	ldrb r0, [r0, #4]
	lsls r1, r0, #4
	subs r1, r1, r0
	lsls r1, r1, #3
	adds r1, r1, r7
	b _0803183A
_080316D4:
	mov r2, ip
	adds r0, r5, r2
	ldrb r0, [r0, #4]
	lsls r1, r0, #4
	subs r1, r1, r0
	lsls r1, r1, #3
	adds r1, r1, r7
	ldrb r0, [r1, #0x12]
	adds r0, #1
	strb r0, [r1, #0x12]
	b _08031BB6
_080316EA:
	mov r3, ip
	adds r0, r5, r3
	ldrb r0, [r0, #4]
	lsls r1, r0, #4
	subs r1, r1, r0
	lsls r1, r1, #3
	adds r1, r1, r7
	b _08031A2C
_080316FA:
	mov r4, ip
	adds r0, r5, r4
	ldrb r0, [r0, #4]
	lsls r1, r0, #4
	subs r1, r1, r0
	lsls r1, r1, #3
	adds r1, r1, r7
	b _08031A54
_0803170A:
	mov r1, ip
	adds r0, r5, r1
	ldrb r1, [r0, #4]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r1, r0, r7
	ldrb r0, [r1, #0x15]
	cmp r0, #0
	bne _08031724
	movs r0, #1
	strb r0, [r1, #0x15]
	b _08031BB6
_08031724:
	.2byte 0xEE00, 0xEE00
	b _08031BB6
_0803172A:
	mov r2, ip
	adds r0, r5, r2
	ldrb r1, [r0, #4]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r1, r0, r7
	ldrb r0, [r1, #0x16]
	cmp r0, #0
	bne _08031744
	movs r0, #1
	strb r0, [r1, #0x16]
	b _08031BB6
_08031744:
	.2byte 0xEE00, 0xEE00
	b _08031BB6
_0803174A:
	mov r3, ip
	adds r0, r5, r3
	ldrb r1, [r0, #4]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r1, r0, r7
	ldrb r0, [r1, #0x17]
	cmp r0, #0
	bne _08031764
	movs r0, #1
	strb r0, [r1, #0x17]
	b _08031BB6
_08031764:
	.2byte 0xEE00, 0xEE00
	b _08031BB6
_0803176A:
	mov r4, ip
	adds r0, r5, r4
	ldrb r1, [r0, #4]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r1, r0, r7
	ldrb r0, [r1, #0x18]
	cmp r0, #0
	bne _08031784
	movs r0, #1
	strb r0, [r1, #0x18]
	b _08031BB6
_08031784:
	.2byte 0xEE00, 0xEE00
	b _08031BB6
_0803178A:
	mov r1, ip
	adds r0, r5, r1
	ldrb r1, [r0, #4]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r1, r0, r7
	ldrb r0, [r1, #0x19]
	cmp r0, #0
	bne _080317A4
	movs r0, #1
	strb r0, [r1, #0x19]
	b _08031BB6
_080317A4:
	.2byte 0xEE00, 0xEE00
	b _08031BB6
_080317AA:
	mov r2, ip
	adds r0, r5, r2
	ldrb r1, [r0, #4]
	movs r0, #0xc4
	muls r1, r0, r1
	add r1, sl
	adds r1, #0x20
	b _08031B80
_080317BA:
	mov r3, ip
	adds r0, r5, r3
	ldrb r1, [r0, #4]
	movs r0, #0xc4
	muls r1, r0, r1
	add r1, sl
	adds r1, #0x21
	b _08031B80
_080317CA:
	mov r4, ip
	adds r0, r5, r4
	ldrb r1, [r0, #4]
	movs r0, #0xc4
	muls r1, r0, r1
	add r1, sl
	adds r1, #0x22
	b _08031B80
_080317DA:
	mov r1, ip
	adds r0, r5, r1
	ldrb r1, [r0, #4]
	movs r0, #0xc4
	muls r1, r0, r1
	add r1, sl
	adds r1, #0x23
	b _08031B80
_080317EA:
	mov r2, ip
	adds r0, r5, r2
	ldrb r1, [r0, #4]
	movs r0, #0xc4
	muls r1, r0, r1
	add r1, sl
	adds r1, #0x24
	b _08031B80
_080317FA:
	mov r3, ip
	adds r0, r5, r3
	ldrb r1, [r0, #4]
	movs r0, #0xc4
	muls r1, r0, r1
	add r1, sl
	adds r1, #0x25
	b _08031B80
_0803180A:
	mov r4, ip
	adds r0, r5, r4
	ldrb r1, [r0, #4]
	movs r0, #0xc4
	muls r1, r0, r1
	add r1, sl
	adds r1, #0x26
	b _08031B80
_0803181A:
	mov r1, ip
	adds r0, r5, r1
	ldrb r1, [r0, #4]
	movs r0, #0xc4
	muls r1, r0, r1
	add r1, sl
	ldrb r0, [r1, #0x1f]
	adds r0, #1
	strb r0, [r1, #0x1f]
	b _08031BB6
_0803182E:
	mov r2, ip
	adds r0, r5, r2
	ldrb r1, [r0, #4]
	movs r0, #0xc4
	muls r1, r0, r1
	add r1, sl
_0803183A:
	ldrb r0, [r1, #0x11]
	adds r0, #1
	strb r0, [r1, #0x11]
	b _08031BB6
_08031842:
	mov r3, ip
	adds r0, r5, r3
	ldrb r1, [r0, #4]
	movs r0, #0xc4
	muls r1, r0, r1
	add r1, sl
_0803184E:
	ldrb r0, [r1, #0x10]
	adds r0, #1
	strb r0, [r1, #0x10]
	b _08031BB6
_08031856:
	mov r4, ip
	adds r0, r5, r4
	ldrb r1, [r0, #4]
	movs r0, #0xc4
	muls r1, r0, r1
	add r1, sl
_08031862:
	ldrb r0, [r1, #0xf]
	adds r0, #1
	strb r0, [r1, #0xf]
	b _08031BB6
_0803186A:
	mov r1, ip
	adds r0, r5, r1
	ldrb r1, [r0, #4]
	movs r0, #0xc4
	muls r1, r0, r1
	add r1, sl
_08031876:
	ldrb r0, [r1, #0xe]
	adds r0, #1
	strb r0, [r1, #0xe]
	b _08031BB6
_0803187E:
	mov r2, ip
	adds r0, r5, r2
	ldrb r1, [r0, #4]
	movs r0, #0xc4
	muls r1, r0, r1
	add r1, sl
_0803188A:
	ldrb r0, [r1, #0xd]
	adds r0, #1
	strb r0, [r1, #0xd]
	b _08031BB6
_08031892:
	mov r3, ip
	adds r0, r5, r3
	ldrb r1, [r0, #4]
	movs r0, #0xc4
	muls r1, r0, r1
	add r1, sl
_0803189E:
	ldrb r0, [r1, #7]
	adds r0, #1
	strb r0, [r1, #7]
	b _08031BB6
_080318A6:
	mov r4, ip
	adds r0, r5, r4
	ldrb r1, [r0, #4]
	movs r0, #0xc4
	muls r1, r0, r1
	add r1, sl
_080318B2:
	ldrb r0, [r1, #8]
	adds r0, #1
	strb r0, [r1, #8]
	b _08031BB6
_080318BA:
	mov r1, ip
	adds r0, r5, r1
	ldrb r1, [r0, #4]
	movs r0, #0xc4
	muls r1, r0, r1
	add r1, sl
_080318C6:
	ldrb r0, [r1, #9]
	adds r0, #1
	strb r0, [r1, #9]
	b _08031BB6
_080318CE:
	mov r2, ip
	adds r0, r5, r2
	ldrb r1, [r0, #4]
	movs r0, #0xc4
	muls r1, r0, r1
	add r1, sl
_080318DA:
	ldrb r0, [r1, #0xa]
	adds r0, #1
	strb r0, [r1, #0xa]
	b _08031BB6
_080318E2:
	mov r3, ip
	adds r0, r5, r3
	ldrb r1, [r0, #4]
	movs r0, #0xc4
	muls r1, r0, r1
	add r1, sl
_080318EE:
	ldrb r0, [r1, #0xb]
	adds r0, #1
	strb r0, [r1, #0xb]
	b _08031BB6
_080318F6:
	mov r4, ip
	adds r0, r5, r4
	ldrb r1, [r0, #4]
	movs r0, #0xc4
	muls r1, r0, r1
	add r1, sl
_08031902:
	ldrb r0, [r1, #0xc]
	adds r0, #1
	strb r0, [r1, #0xc]
	b _08031BB6
_0803190A:
	mov r1, ip
	adds r0, r5, r1
	ldrb r1, [r0, #4]
	movs r0, #0xc4
	muls r1, r0, r1
	add r1, sl
_08031916:
	ldrb r0, [r1, #6]
	adds r0, #1
	strb r0, [r1, #6]
	b _08031BB6
_0803191E:
	mov r2, ip
	adds r0, r5, r2
	ldrb r1, [r0, #4]
	movs r0, #0xc4
	muls r1, r0, r1
	add r1, sl
	b _08031B80
_0803192C:
	mov r3, ip
	adds r0, r5, r3
	ldrb r1, [r0, #4]
	movs r0, #0xc4
	muls r1, r0, r1
	add r1, sl
	b _08031B98
_0803193A:
	mov r4, ip
	adds r0, r5, r4
	ldrb r1, [r0, #4]
	movs r0, #0xc4
	muls r1, r0, r1
	add r1, sl
	b _08031BB0
_08031948:
	mov r1, ip
	adds r0, r5, r1
	ldrb r1, [r0, #4]
	movs r0, #0xc4
	muls r1, r0, r1
	add r1, sl
_08031954:
	ldrb r0, [r1, #3]
	adds r0, #1
	strb r0, [r1, #3]
	b _08031BB6
_0803195C:
	mov r2, ip
	adds r0, r5, r2
	ldrb r1, [r0, #4]
	movs r0, #0xc4
	muls r1, r0, r1
	add r1, sl
_08031968:
	ldrb r0, [r1, #5]
	adds r0, #1
	strb r0, [r1, #5]
	b _08031BB6
_08031970:
	mov r3, ip
	adds r0, r5, r3
	ldrb r1, [r0, #4]
	movs r0, #0xc4
	muls r1, r0, r1
	add r1, sl
	ldrb r0, [r1, #4]
	adds r0, #1
	strb r0, [r1, #4]
	ldr r1, _08031990
	ldrb r0, [r6, #0xe]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r1, [r6, #6]
	strh r1, [r0]
	b _08031BB6
	.align 2, 0
_08031990: .4byte 0x0203E9A0
_08031994:
	ldrb r0, [r6, #0xe]
	adds r1, r0, #1
	mov r4, ip
	adds r2, r5, r4
	ldrb r0, [r2, #4]
	movs r3, #0xc4
	muls r0, r3, r0
	add r0, sl
	ldrb r4, [r0, #0x12]
	cmp r1, r4
	ble _080319AC
	strb r1, [r0, #0x12]
_080319AC:
	ldrb r0, [r2, #4]
	adds r1, r0, #0
	muls r1, r3, r1
	add r1, sl
	ldrb r0, [r1, #0x16]
	adds r0, #1
	strb r0, [r1, #0x16]
	b _08031BB6
_080319BC:
	ldrb r0, [r6, #0xe]
	adds r1, r0, #1
	mov r0, ip
	adds r2, r5, r0
	ldrb r0, [r2, #4]
	movs r3, #0xc4
	muls r0, r3, r0
	add r0, sl
	ldrb r4, [r0, #0x12]
	cmp r1, r4
	ble _080319D4
	strb r1, [r0, #0x12]
_080319D4:
	ldrb r0, [r2, #4]
	adds r1, r0, #0
	muls r1, r3, r1
	add r1, sl
	ldrb r0, [r1, #0x17]
	adds r0, #1
	strb r0, [r1, #0x17]
	b _08031BB6
_080319E4:
	ldrb r0, [r6, #0xe]
	adds r1, r0, #1
	mov r0, ip
	adds r2, r5, r0
	ldrb r0, [r2, #4]
	movs r3, #0xc4
	muls r0, r3, r0
	add r0, sl
	ldrb r4, [r0, #0x12]
	cmp r1, r4
	ble _080319FC
	strb r1, [r0, #0x12]
_080319FC:
	ldrb r0, [r2, #4]
	adds r1, r0, #0
	muls r1, r3, r1
	add r1, sl
	ldrb r0, [r1, #0x18]
	adds r0, #1
	strb r0, [r1, #0x18]
	b _08031BB6
_08031A0C:
	ldrb r0, [r6, #0xe]
	adds r1, r0, #1
	mov r0, ip
	adds r2, r5, r0
	ldrb r0, [r2, #4]
	movs r3, #0xc4
	muls r0, r3, r0
	add r0, sl
	ldrb r4, [r0, #0x12]
	cmp r1, r4
	ble _08031A24
	strb r1, [r0, #0x12]
_08031A24:
	ldrb r0, [r2, #4]
	adds r1, r0, #0
	muls r1, r3, r1
	add r1, sl
_08031A2C:
	ldrb r0, [r1, #0x13]
	adds r0, #1
	strb r0, [r1, #0x13]
	b _08031BB6
_08031A34:
	ldrb r0, [r6, #0xe]
	adds r1, r0, #1
	mov r0, ip
	adds r2, r5, r0
	ldrb r0, [r2, #4]
	movs r3, #0xc4
	muls r0, r3, r0
	add r0, sl
	ldrb r4, [r0, #0x12]
	cmp r1, r4
	ble _08031A4C
	strb r1, [r0, #0x12]
_08031A4C:
	ldrb r0, [r2, #4]
	adds r1, r0, #0
	muls r1, r3, r1
	add r1, sl
_08031A54:
	ldrb r0, [r1, #0x14]
	adds r0, #1
	strb r0, [r1, #0x14]
	b _08031BB6
_08031A5C:
	ldrb r0, [r6, #0xe]
	adds r1, r0, #1
	mov r0, ip
	adds r2, r5, r0
	ldrb r0, [r2, #4]
	movs r3, #0xc4
	muls r0, r3, r0
	add r0, sl
	ldrb r4, [r0, #0x12]
	cmp r1, r4
	ble _08031A74
	strb r1, [r0, #0x12]
_08031A74:
	ldrb r0, [r2, #4]
	adds r1, r0, #0
	muls r1, r3, r1
	add r1, sl
	ldrb r0, [r1, #0x15]
	adds r0, #1
	strb r0, [r1, #0x15]
	b _08031BB6
_08031A84:
	ldrb r0, [r6, #0xe]
	adds r1, r0, #1
	mov r0, ip
	adds r2, r5, r0
	ldrb r0, [r2, #4]
	movs r3, #0xc4
	muls r0, r3, r0
	add r0, sl
	ldrb r4, [r0, #0x12]
	cmp r1, r4
	ble _08031A9C
	strb r1, [r0, #0x12]
_08031A9C:
	ldrb r0, [r2, #4]
	adds r1, r0, #0
	muls r1, r3, r1
	add r1, sl
	ldrb r0, [r1, #0x19]
	adds r0, #1
	strb r0, [r1, #0x19]
	b _08031BB6
_08031AAC:
	ldrb r0, [r6, #0xe]
	adds r1, r0, #1
	mov r0, ip
	adds r2, r5, r0
	ldrb r0, [r2, #4]
	movs r3, #0xc4
	muls r0, r3, r0
	add r0, sl
	ldrb r4, [r0, #0x12]
	cmp r1, r4
	ble _08031AC4
	strb r1, [r0, #0x12]
_08031AC4:
	ldrb r0, [r2, #4]
	adds r1, r0, #0
	muls r1, r3, r1
	add r1, sl
	ldrb r0, [r1, #0x1a]
	adds r0, #1
	strb r0, [r1, #0x1a]
	b _08031BB6
_08031AD4:
	ldrb r0, [r6, #0xe]
	adds r1, r0, #1
	mov r0, ip
	adds r2, r5, r0
	ldrb r0, [r2, #4]
	movs r3, #0xc4
	muls r0, r3, r0
	add r0, sl
	ldrb r4, [r0, #0x12]
	cmp r1, r4
	ble _08031AEC
	strb r1, [r0, #0x12]
_08031AEC:
	ldrb r0, [r2, #4]
	adds r1, r0, #0
	muls r1, r3, r1
	add r1, sl
	ldrb r0, [r1, #0x1b]
	adds r0, #1
	strb r0, [r1, #0x1b]
	b _08031BB6
_08031AFC:
	ldrb r0, [r6, #0xe]
	adds r1, r0, #1
	mov r0, ip
	adds r2, r5, r0
	ldrb r0, [r2, #4]
	movs r3, #0xc4
	muls r0, r3, r0
	add r0, sl
	ldrb r4, [r0, #0x12]
	cmp r1, r4
	ble _08031B14
	strb r1, [r0, #0x12]
_08031B14:
	ldrb r0, [r2, #4]
	adds r1, r0, #0
	muls r1, r3, r1
	add r1, sl
	ldrb r0, [r1, #0x1c]
	adds r0, #1
	strb r0, [r1, #0x1c]
	b _08031BB6
_08031B24:
	ldrb r0, [r6, #0xe]
	adds r1, r0, #1
	mov r0, ip
	adds r2, r5, r0
	ldrb r0, [r2, #4]
	movs r3, #0xc4
	muls r0, r3, r0
	add r0, sl
	ldrb r4, [r0, #0x12]
	cmp r1, r4
	ble _08031B3C
	strb r1, [r0, #0x12]
_08031B3C:
	ldrb r0, [r2, #4]
	adds r1, r0, #0
	muls r1, r3, r1
	add r1, sl
	ldrb r0, [r1, #0x1d]
	adds r0, #1
	strb r0, [r1, #0x1d]
	b _08031BB6
_08031B4C:
	ldrb r0, [r6, #0xe]
	adds r1, r0, #1
	mov r0, ip
	adds r2, r5, r0
	ldrb r0, [r2, #4]
	movs r3, #0xc4
	muls r0, r3, r0
	add r0, sl
	ldrb r4, [r0, #0x12]
	cmp r1, r4
	ble _08031B64
	strb r1, [r0, #0x12]
_08031B64:
	ldrb r0, [r2, #4]
	adds r1, r0, #0
	muls r1, r3, r1
	add r1, sl
	ldrb r0, [r1, #0x1e]
	adds r0, #1
	strb r0, [r1, #0x1e]
	b _08031BB6
_08031B74:
	mov r1, ip
	adds r0, r5, r1
	ldrb r1, [r0, #4]
	lsls r1, r1, #4
	ldr r2, _08031B88
	adds r1, r1, r2
_08031B80:
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	b _08031BB6
	.align 2, 0
_08031B88: .4byte 0x0203E8D8
_08031B8C:
	mov r3, ip
	adds r0, r5, r3
	ldrb r1, [r0, #4]
	lsls r1, r1, #4
	ldr r4, _08031BA0
	adds r1, r1, r4
_08031B98:
	ldrb r0, [r1, #1]
	adds r0, #1
	strb r0, [r1, #1]
	b _08031BB6
	.align 2, 0
_08031BA0: .4byte 0x0203E8D8
_08031BA4:
	mov r1, ip
	adds r0, r5, r1
	ldrb r1, [r0, #4]
	lsls r1, r1, #4
	ldr r2, _08031F04
	adds r1, r1, r2
_08031BB0:
	ldrb r0, [r1, #2]
	adds r0, #1
	strb r0, [r1, #2]
_08031BB6:
	adds r6, #0x1c
	movs r3, #1
	add sb, r3
	mov r4, r8
	ldr r0, [r4, #4]
	ldr r1, [sp, #0xc]
	adds r0, r1, r0
	ldrh r0, [r0, #4]
	cmp sb, r0
	bge _08031BCE
	bl _0803100C
_08031BCE:
	ldr r4, [sp, #8]
	mov r2, r8
	ldrh r2, [r2, #8]
	cmp r4, r2
	bge _08031BDC
	bl _08030FEE
_08031BDC:
	ldr r3, [sp]
	adds r3, #1
	str r3, [sp]
	cmp r3, #0x25
	bgt _08031BEA
	bl sub_08030FC8
_08031BEA:
	movs r5, #0
	ldr r4, _08031F08
	ldr r3, _08031F0C
	movs r6, #5
	str r6, [sp]
_08031BF4:
	ldrb r0, [r3, #3]
	lsls r2, r0, #2
	adds r2, r2, r0
	ldrb r0, [r3, #2]
	adds r2, r2, r0
	ldrb r1, [r3, #4]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r2, r2, r0
	ldrh r1, [r4, #6]
	cmp r2, r1
	beq _08031C10
	adds r5, r5, r2
_08031C10:
	ldrb r0, [r3]
	ldrb r2, [r4]
	cmp r0, r2
	bls _08031C1C
	.2byte 0xEE00, 0xEE00
_08031C1C:
	ldrb r0, [r3, #1]
	ldrb r6, [r4, #1]
	cmp r0, r6
	bls _08031C28
	.2byte 0xEE00, 0xEE00
_08031C28:
	ldrb r0, [r3, #0x15]
	cmp r0, #0
	bne _08031C32
	.2byte 0xEE00, 0xEE00
_08031C32:
	ldrb r1, [r3, #0x16]
	cmp r1, #0
	bne _08031C3C
	.2byte 0xEE00, 0xEE00
_08031C3C:
	ldrb r0, [r3, #0x17]
	cmp r0, #0
	bne _08031C46
	.2byte 0xEE00, 0xEE00
_08031C46:
	ldrb r0, [r3, #0x18]
	cmp r0, #0
	bne _08031C50
	.2byte 0xEE00, 0xEE00
_08031C50:
	cmp r1, #0
	bne _08031C58
	.2byte 0xEE00, 0xEE00
_08031C58:
	adds r4, #0x14
	adds r3, #0x78
	ldr r0, [sp]
	subs r0, #1
	str r0, [sp]
	cmp r0, #0
	bge _08031BF4
	ldr r1, _08031F10
	ldrh r1, [r1, #0xc]
	cmp r5, r1
	ble _08031C72
	.2byte 0xEE00, 0xEE00
_08031C72:
	movs r2, #0
	str r2, [sp]
	movs r7, #0
	movs r3, #0
	mov r8, r3
	mov sb, r3
	movs r4, #0
	str r4, [sp, #0x14]
	movs r6, #0
	str r6, [sp, #0x18]
	ldr r0, _08031F14
	adds r1, r0, #0
	adds r1, #0x21
	str r1, [sp, #0x1c]
	str r0, [sp, #0x20]
	str r2, [sp, #0x24]
	adds r3, r0, #0
	adds r3, #0x20
	str r3, [sp, #0x28]
	adds r4, r0, #0
	adds r4, #0x25
	str r4, [sp, #0x2c]
	adds r6, r0, #0
	adds r6, #0x24
	str r6, [sp, #0x30]
	adds r0, #0x23
	str r0, [sp, #0x34]
	ldr r1, [sp, #0x20]
	adds r1, #0x22
	str r1, [sp, #0x38]
	ldr r2, [sp, #0x20]
	adds r2, #0x26
	str r2, [sp, #0x3c]
	movs r3, #0
	str r3, [sp, #0x40]

    .thumb
sub_08031CB8: @ 0x08031CB8
	ldr r0, _08031F08
	ldr r4, [sp, #0x14]
	adds r0, r4, r0
	ldrb r5, [r0]
	adds r0, r5, #0
	movs r1, #0xe
	movs r2, #4
	bl Alloc
	ldr r1, _08031F18
	add r1, sb
	str r0, [r1]
	movs r4, #0
	cmp r4, r5
	bge _08031CE6
	adds r2, r1, #0
	adds r1, r5, #0
_08031CDA:
	ldr r0, [r2]
	adds r0, r0, r4
	strb r7, [r0]
	adds r4, #1
	cmp r4, r1
	blt _08031CDA
_08031CE6:
	ldr r0, _08031F08
	ldr r6, [sp, #0x14]
	adds r0, r6, r0
	ldrb r5, [r0, #1]
	adds r0, r5, #0
	movs r1, #0xe
	movs r2, #4
	bl Alloc
	ldr r1, _08031F1C
	add r1, sb
	str r0, [r1]
	movs r4, #0
	cmp r4, r5
	bge _08031D18
	ldr r0, _08031F1C
	mov r1, sb
	adds r2, r1, r0
	adds r1, r5, #0
_08031D0C:
	ldr r0, [r2]
	adds r0, r0, r4
	strb r7, [r0]
	adds r4, #1
	cmp r4, r1
	blt _08031D0C
_08031D18:
	ldr r4, _08031F0C
	mov r2, sb
	adds r5, r2, r4
	ldrb r0, [r5, #2]
	cmp r0, #0
	beq _08031D4E
	movs r1, #0xe
	movs r2, #4
	bl Alloc
	adds r1, r4, #0
	adds r1, #0x24
	add r1, sb
	str r0, [r1]
	movs r4, #0
	ldrb r5, [r5, #2]
	cmp r4, r5
	bge _08031D4E
	ldr r2, _08031F0C
	add r2, sb
_08031D40:
	ldr r0, [r1]
	adds r0, r0, r4
	strb r7, [r0]
	adds r4, #1
	ldrb r3, [r2, #2]
	cmp r4, r3
	blt _08031D40
_08031D4E:
	ldr r4, _08031F0C
	mov r6, sb
	adds r5, r6, r4
	ldrb r0, [r5, #3]
	cmp r0, #0
	beq _08031D84
	movs r1, #0xe
	movs r2, #4
	bl Alloc
	adds r1, r4, #0
	adds r1, #0x28
	add r1, sb
	str r0, [r1]
	movs r4, #0
	ldrb r5, [r5, #3]
	cmp r4, r5
	bge _08031D84
	ldr r2, _08031F0C
	add r2, sb
_08031D76:
	ldr r0, [r1]
	adds r0, r0, r4
	strb r7, [r0]
	adds r4, #1
	ldrb r0, [r2, #3]
	cmp r4, r0
	blt _08031D76
_08031D84:
	ldr r4, _08031F0C
	mov r1, sb
	adds r5, r1, r4
	ldrb r0, [r5, #4]
	cmp r0, #0
	beq _08031DBA
	movs r1, #0xe
	movs r2, #4
	bl Alloc
	adds r1, r4, #0
	adds r1, #0x2c
	add r1, sb
	str r0, [r1]
	movs r4, #0
	ldrb r5, [r5, #4]
	cmp r4, r5
	bge _08031DBA
	ldr r2, _08031F0C
	add r2, sb
_08031DAC:
	ldr r0, [r1]
	adds r0, r0, r4
	strb r7, [r0]
	adds r4, #1
	ldrb r3, [r2, #4]
	cmp r4, r3
	blt _08031DAC
_08031DBA:
	ldr r4, _08031F0C
	mov r6, sb
	adds r5, r6, r4
	ldrb r0, [r5, #5]
	cmp r0, #0
	beq _08031DF0
	movs r1, #0xe
	movs r2, #4
	bl Alloc
	adds r1, r4, #0
	adds r1, #0x30
	add r1, sb
	str r0, [r1]
	movs r4, #0
	ldrb r5, [r5, #5]
	cmp r4, r5
	bge _08031DF0
	ldr r2, _08031F0C
	add r2, sb
_08031DE2:
	ldr r0, [r1]
	adds r0, r0, r4
	strb r7, [r0]
	adds r4, #1
	ldrb r0, [r2, #5]
	cmp r4, r0
	blt _08031DE2
_08031DF0:
	ldr r4, _08031F0C
	mov r1, sb
	adds r5, r1, r4
	ldrb r0, [r5, #6]
	cmp r0, #0
	beq _08031E26
	movs r1, #0xe
	movs r2, #4
	bl Alloc
	adds r1, r4, #0
	adds r1, #0x34
	add r1, sb
	str r0, [r1]
	movs r4, #0
	ldrb r5, [r5, #6]
	cmp r4, r5
	bge _08031E26
	ldr r2, _08031F0C
	add r2, sb
_08031E18:
	ldr r0, [r1]
	adds r0, r0, r4
	strb r7, [r0]
	adds r4, #1
	ldrb r3, [r2, #6]
	cmp r4, r3
	blt _08031E18
_08031E26:
	ldr r4, _08031F0C
	mov r6, sb
	adds r5, r6, r4
	ldrb r0, [r5, #7]
	cmp r0, #0
	beq _08031E5C
	movs r1, #0xe
	movs r2, #4
	bl Alloc
	adds r1, r4, #0
	adds r1, #0x38
	add r1, sb
	str r0, [r1]
	movs r4, #0
	ldrb r5, [r5, #7]
	cmp r4, r5
	bge _08031E5C
	ldr r2, _08031F0C
	add r2, sb
_08031E4E:
	ldr r0, [r1]
	adds r0, r0, r4
	strb r7, [r0]
	adds r4, #1
	ldrb r0, [r2, #7]
	cmp r4, r0
	blt _08031E4E
_08031E5C:
	ldr r4, _08031F0C
	mov r1, sb
	adds r5, r1, r4
	ldrb r0, [r5, #8]
	cmp r0, #0
	beq _08031E92
	movs r1, #0xe
	movs r2, #4
	bl Alloc
	adds r1, r4, #0
	adds r1, #0x3c
	add r1, sb
	str r0, [r1]
	movs r4, #0
	ldrb r5, [r5, #8]
	cmp r4, r5
	bge _08031E92
	ldr r2, _08031F0C
	add r2, sb
_08031E84:
	ldr r0, [r1]
	adds r0, r0, r4
	strb r7, [r0]
	adds r4, #1
	ldrb r3, [r2, #8]
	cmp r4, r3
	blt _08031E84
_08031E92:
	ldr r4, _08031F0C
	mov r6, sb
	adds r5, r6, r4
	ldrb r0, [r5, #9]
	cmp r0, #0
	beq _08031EC8
	movs r1, #0xe
	movs r2, #4
	bl Alloc
	adds r1, r4, #0
	adds r1, #0x40
	add r1, sb
	str r0, [r1]
	movs r4, #0
	ldrb r5, [r5, #9]
	cmp r4, r5
	bge _08031EC8
	ldr r2, _08031F0C
	add r2, sb
_08031EBA:
	ldr r0, [r1]
	adds r0, r0, r4
	strb r7, [r0]
	adds r4, #1
	ldrb r0, [r2, #9]
	cmp r4, r0
	blt _08031EBA
_08031EC8:
	ldr r4, _08031F0C
	mov r1, sb
	adds r5, r1, r4
	ldrb r0, [r5, #0xa]
	cmp r0, #0
	beq _08031EFE
	movs r1, #0xe
	movs r2, #4
	bl Alloc
	adds r1, r4, #0
	adds r1, #0x44
	add r1, sb
	str r0, [r1]
	movs r4, #0
	ldrb r5, [r5, #0xa]
	cmp r4, r5
	bge _08031EFE
	ldr r2, _08031F0C
	add r2, sb
_08031EF0:
	ldr r0, [r1]
	adds r0, r0, r4
	strb r7, [r0]
	adds r4, #1
	ldrb r3, [r2, #0xa]
	cmp r4, r3
	blt _08031EF0
_08031EFE:
	ldr r4, _08031F0C
	b _08031F20
	.align 2, 0
_08031F04: .4byte 0x0203E8D8
_08031F08: .4byte 0x080CC84C
_08031F0C: .4byte 0x0203E170
_08031F10: .4byte 0x080CC8C4
_08031F14: .4byte 0x0203E440
_08031F18: .4byte 0x0203E18C
_08031F1C: .4byte 0x0203E190
_08031F20:
	mov r6, sb
	adds r5, r6, r4
	ldrb r0, [r5, #0xb]
	cmp r0, #0
	beq _08031F54
	movs r1, #0xe
	movs r2, #4
	bl Alloc
	adds r1, r4, #0
	adds r1, #0x48
	add r1, sb
	str r0, [r1]
	movs r4, #0
	ldrb r5, [r5, #0xb]
	cmp r4, r5
	bge _08031F54
	ldr r2, _08032280
	add r2, sb
_08031F46:
	ldr r0, [r1]
	adds r0, r0, r4
	strb r7, [r0]
	adds r4, #1
	ldrb r0, [r2, #0xb]
	cmp r4, r0
	blt _08031F46
_08031F54:
	ldr r4, _08032280
	mov r1, sb
	adds r5, r1, r4
	ldrb r0, [r5, #0xc]
	cmp r0, #0
	beq _08031F8A
	movs r1, #0xe
	movs r2, #4
	bl Alloc
	adds r1, r4, #0
	adds r1, #0x4c
	add r1, sb
	str r0, [r1]
	movs r4, #0
	ldrb r5, [r5, #0xc]
	cmp r4, r5
	bge _08031F8A
	ldr r2, _08032280
	add r2, sb
_08031F7C:
	ldr r0, [r1]
	adds r0, r0, r4
	strb r7, [r0]
	adds r4, #1
	ldrb r3, [r2, #0xc]
	cmp r4, r3
	blt _08031F7C
_08031F8A:
	ldr r4, _08032280
	mov r6, sb
	adds r5, r6, r4
	ldrb r0, [r5, #0xd]
	cmp r0, #0
	beq _08031FC0
	movs r1, #0xe
	movs r2, #4
	bl Alloc
	adds r1, r4, #0
	adds r1, #0x50
	add r1, sb
	str r0, [r1]
	movs r4, #0
	ldrb r5, [r5, #0xd]
	cmp r4, r5
	bge _08031FC0
	ldr r2, _08032280
	add r2, sb
_08031FB2:
	ldr r0, [r1]
	adds r0, r0, r4
	strb r7, [r0]
	adds r4, #1
	ldrb r0, [r2, #0xd]
	cmp r4, r0
	blt _08031FB2
_08031FC0:
	ldr r4, _08032280
	mov r1, sb
	adds r5, r1, r4
	ldrb r0, [r5, #0xe]
	cmp r0, #0
	beq _08031FF6
	movs r1, #0xe
	movs r2, #4
	bl Alloc
	adds r1, r4, #0
	adds r1, #0x54
	add r1, sb
	str r0, [r1]
	movs r4, #0
	ldrb r5, [r5, #0xe]
	cmp r4, r5
	bge _08031FF6
	ldr r2, _08032280
	add r2, sb
_08031FE8:
	ldr r0, [r1]
	adds r0, r0, r4
	strb r7, [r0]
	adds r4, #1
	ldrb r3, [r2, #0xe]
	cmp r4, r3
	blt _08031FE8
_08031FF6:
	ldr r4, _08032280
	mov r6, sb
	adds r5, r6, r4
	ldrb r0, [r5, #0xf]
	cmp r0, #0
	beq _0803202C
	movs r1, #0xe
	movs r2, #4
	bl Alloc
	adds r1, r4, #0
	adds r1, #0x58
	add r1, sb
	str r0, [r1]
	movs r4, #0
	ldrb r5, [r5, #0xf]
	cmp r4, r5
	bge _0803202C
	ldr r2, _08032280
	add r2, sb
_0803201E:
	ldr r0, [r1]
	adds r0, r0, r4
	strb r7, [r0]
	adds r4, #1
	ldrb r0, [r2, #0xf]
	cmp r4, r0
	blt _0803201E
_0803202C:
	ldr r4, _08032280
	mov r1, sb
	adds r5, r1, r4
	ldrb r0, [r5, #0x10]
	cmp r0, #0
	beq _08032062
	movs r1, #0xe
	movs r2, #4
	bl Alloc
	adds r1, r4, #0
	adds r1, #0x5c
	add r1, sb
	str r0, [r1]
	movs r4, #0
	ldrb r5, [r5, #0x10]
	cmp r4, r5
	bge _08032062
	ldr r2, _08032280
	add r2, sb
_08032054:
	ldr r0, [r1]
	adds r0, r0, r4
	strb r7, [r0]
	adds r4, #1
	ldrb r3, [r2, #0x10]
	cmp r4, r3
	blt _08032054
_08032062:
	ldr r4, _08032280
	mov r6, sb
	adds r5, r6, r4
	ldrb r0, [r5, #0x11]
	cmp r0, #0
	beq _08032098
	movs r1, #0xe
	movs r2, #4
	bl Alloc
	adds r1, r4, #0
	adds r1, #0x60
	add r1, sb
	str r0, [r1]
	movs r4, #0
	ldrb r5, [r5, #0x11]
	cmp r4, r5
	bge _08032098
	ldr r2, _08032280
	add r2, sb
_0803208A:
	ldr r0, [r1]
	adds r0, r0, r4
	strb r7, [r0]
	adds r4, #1
	ldrb r0, [r2, #0x11]
	cmp r4, r0
	blt _0803208A
_08032098:
	ldr r4, _08032280
	mov r1, sb
	adds r5, r1, r4
	ldrb r0, [r5, #0x12]
	cmp r0, #0
	beq _080320CE
	movs r1, #0xe
	movs r2, #4
	bl Alloc
	adds r1, r4, #0
	adds r1, #0x64
	add r1, sb
	str r0, [r1]
	movs r4, #0
	ldrb r5, [r5, #0x12]
	cmp r4, r5
	bge _080320CE
	ldr r2, _08032280
	add r2, sb
_080320C0:
	ldr r0, [r1]
	adds r0, r0, r4
	strb r7, [r0]
	adds r4, #1
	ldrb r3, [r2, #0x12]
	cmp r4, r3
	blt _080320C0
_080320CE:
	ldr r4, _08032280
	mov r6, sb
	adds r5, r6, r4
	ldrb r0, [r5, #0x13]
	cmp r0, #0
	beq _08032104
	movs r1, #0xe
	movs r2, #4
	bl Alloc
	adds r1, r4, #0
	adds r1, #0x68
	add r1, sb
	str r0, [r1]
	movs r4, #0
	ldrb r5, [r5, #0x13]
	cmp r4, r5
	bge _08032104
	ldr r2, _08032280
	add r2, sb
_080320F6:
	ldr r0, [r1]
	adds r0, r0, r4
	strb r7, [r0]
	adds r4, #1
	ldrb r0, [r2, #0x13]
	cmp r4, r0
	blt _080320F6
_08032104:
	ldr r4, _08032280
	mov r1, sb
	adds r5, r1, r4
	ldrb r0, [r5, #0x14]
	cmp r0, #0
	beq _0803213A
	movs r1, #0xe
	movs r2, #4
	bl Alloc
	adds r1, r4, #0
	adds r1, #0x6c
	add r1, sb
	str r0, [r1]
	movs r4, #0
	ldrb r5, [r5, #0x14]
	cmp r4, r5
	bge _0803213A
	ldr r2, _08032280
	add r2, sb
_0803212C:
	ldr r0, [r1]
	adds r0, r0, r4
	strb r7, [r0]
	adds r4, #1
	ldrb r3, [r2, #0x14]
	cmp r4, r3
	blt _0803212C
_0803213A:
	ldr r4, _08032284
	mov r6, r8
	adds r5, r6, r4
	ldrb r0, [r5, #0x12]
	cmp r0, #0
	beq _08032190
	lsls r0, r0, #4
	movs r1, #0xe
	movs r2, #4
	bl Alloc
	adds r2, r4, #0
	adds r2, #0x90
	adds r1, r6, r2
	str r0, [r1]
	movs r4, #0
	ldrb r5, [r5, #0x12]
	cmp r4, r5
	bge _08032190
	ldr r0, [sp, #0x24]
	adds r2, r0, r2
	movs r3, #0
	ldr r5, [sp, #0x20]
_08032168:
	ldr r0, [r2]
	lsls r1, r4, #4
	adds r0, r1, r0
	strb r3, [r0]
	ldr r0, [r2]
	adds r0, r1, r0
	strb r3, [r0, #1]
	ldr r0, [r2]
	adds r0, r1, r0
	strb r3, [r0, #2]
	ldr r0, [r2]
	adds r0, r1, r0
	strb r3, [r0, #3]
	ldr r0, [r2]
	adds r1, r1, r0
	strb r3, [r1, #4]
	adds r4, #1
	ldrb r1, [r5, #0x12]
	cmp r4, r1
	blt _08032168
_08032190:
	ldr r4, _08032284
	mov r2, r8
	adds r5, r2, r4
	ldrb r0, [r5, #7]
	cmp r0, #0
	beq _080321CA
	movs r1, #0xe
	movs r2, #4
	bl Alloc
	adds r2, r4, #0
	adds r2, #0x44
	mov r3, r8
	adds r1, r3, r2
	str r0, [r1]
	movs r4, #0
	ldrb r5, [r5, #7]
	cmp r4, r5
	bge _080321CA
	ldr r6, [sp, #0x24]
	adds r2, r6, r2
	ldr r1, [sp, #0x20]
_080321BC:
	ldr r0, [r2]
	adds r0, r0, r4
	strb r7, [r0]
	adds r4, #1
	ldrb r0, [r1, #7]
	cmp r4, r0
	blt _080321BC
_080321CA:
	ldr r4, _08032284
	mov r1, r8
	adds r5, r1, r4
	ldrb r0, [r5, #8]
	cmp r0, #0
	beq _08032204
	movs r1, #0xe
	movs r2, #4
	bl Alloc
	adds r2, r4, #0
	adds r2, #0x48
	mov r3, r8
	adds r1, r3, r2
	str r0, [r1]
	movs r4, #0
	ldrb r5, [r5, #8]
	cmp r4, r5
	bge _08032204
	ldr r6, [sp, #0x24]
	adds r2, r6, r2
	ldr r1, [sp, #0x20]
_080321F6:
	ldr r0, [r2]
	adds r0, r0, r4
	strb r7, [r0]
	adds r4, #1
	ldrb r0, [r1, #8]
	cmp r4, r0
	blt _080321F6
_08032204:
	ldr r4, _08032284
	mov r1, r8
	adds r5, r1, r4
	ldrb r0, [r5, #9]
	cmp r0, #0
	beq _0803223E
	movs r1, #0xe
	movs r2, #4
	bl Alloc
	adds r2, r4, #0
	adds r2, #0x4c
	mov r3, r8
	adds r1, r3, r2
	str r0, [r1]
	movs r4, #0
	ldrb r5, [r5, #9]
	cmp r4, r5
	bge _0803223E
	ldr r6, [sp, #0x24]
	adds r2, r6, r2
	ldr r1, [sp, #0x20]
_08032230:
	ldr r0, [r2]
	adds r0, r0, r4
	strb r7, [r0]
	adds r4, #1
	ldrb r0, [r1, #9]
	cmp r4, r0
	blt _08032230
_0803223E:
	ldr r4, _08032284
	mov r1, r8
	adds r5, r1, r4
	ldrb r0, [r5, #0xa]
	cmp r0, #0
	beq _08032278
	movs r1, #0xe
	movs r2, #4
	bl Alloc
	adds r2, r4, #0
	adds r2, #0x50
	mov r3, r8
	adds r1, r3, r2
	str r0, [r1]
	movs r4, #0
	ldrb r5, [r5, #0xa]
	cmp r4, r5
	bge _08032278
	ldr r6, [sp, #0x24]
	adds r2, r6, r2
	ldr r1, [sp, #0x20]
_0803226A:
	ldr r0, [r2]
	adds r0, r0, r4
	strb r7, [r0]
	adds r4, #1
	ldrb r0, [r1, #0xa]
	cmp r4, r0
	blt _0803226A
_08032278:
	ldr r4, _08032284
	mov r1, r8
	adds r5, r1, r4
	b _08032288
	.align 2, 0
_08032280: .4byte 0x0203E170
_08032284: .4byte 0x0203E440
_08032288:
	ldrb r0, [r5, #0xb]
	cmp r0, #0
	beq _080322BC
	movs r1, #0xe
	movs r2, #4
	bl Alloc
	adds r2, r4, #0
	adds r2, #0x54
	mov r3, r8
	adds r1, r3, r2
	str r0, [r1]
	movs r4, #0
	ldrb r5, [r5, #0xb]
	cmp r4, r5
	bge _080322BC
	ldr r6, [sp, #0x24]
	adds r2, r6, r2
	ldr r1, [sp, #0x20]
_080322AE:
	ldr r0, [r2]
	adds r0, r0, r4
	strb r7, [r0]
	adds r4, #1
	ldrb r0, [r1, #0xb]
	cmp r4, r0
	blt _080322AE
_080322BC:
	ldr r4, _080325FC
	mov r1, r8
	adds r5, r1, r4
	ldrb r0, [r5, #0xc]
	cmp r0, #0
	beq _080322F6
	movs r1, #0xe
	movs r2, #4
	bl Alloc
	adds r2, r4, #0
	adds r2, #0x58
	mov r3, r8
	adds r1, r3, r2
	str r0, [r1]
	movs r4, #0
	ldrb r5, [r5, #0xc]
	cmp r4, r5
	bge _080322F6
	ldr r6, [sp, #0x24]
	adds r2, r6, r2
	ldr r1, [sp, #0x20]
_080322E8:
	ldr r0, [r2]
	adds r0, r0, r4
	strb r7, [r0]
	adds r4, #1
	ldrb r0, [r1, #0xc]
	cmp r4, r0
	blt _080322E8
_080322F6:
	ldr r4, _080325FC
	mov r1, r8
	adds r5, r1, r4
	ldrb r0, [r5, #6]
	cmp r0, #0
	beq _08032330
	movs r1, #0xe
	movs r2, #4
	bl Alloc
	adds r2, r4, #0
	adds r2, #0x40
	mov r3, r8
	adds r1, r3, r2
	str r0, [r1]
	movs r4, #0
	ldrb r5, [r5, #6]
	cmp r4, r5
	bge _08032330
	ldr r6, [sp, #0x24]
	adds r2, r6, r2
	ldr r1, [sp, #0x20]
_08032322:
	ldr r0, [r2]
	adds r0, r0, r4
	strb r7, [r0]
	adds r4, #1
	ldrb r0, [r1, #6]
	cmp r4, r0
	blt _08032322
_08032330:
	ldr r4, _080325FC
	mov r1, r8
	adds r5, r1, r4
	ldrb r0, [r5]
	cmp r0, #0
	beq _0803236A
	movs r1, #0xe
	movs r2, #4
	bl Alloc
	adds r2, r4, #0
	adds r2, #0x28
	mov r3, r8
	adds r1, r3, r2
	str r0, [r1]
	movs r4, #0
	ldrb r5, [r5]
	cmp r4, r5
	bge _0803236A
	ldr r6, [sp, #0x24]
	adds r2, r6, r2
	ldr r1, [sp, #0x20]
_0803235C:
	ldr r0, [r2]
	adds r0, r0, r4
	strb r7, [r0]
	adds r4, #1
	ldrb r0, [r1]
	cmp r4, r0
	blt _0803235C
_0803236A:
	ldr r4, _080325FC
	mov r1, r8
	adds r5, r1, r4
	ldrb r0, [r5, #1]
	cmp r0, #0
	beq _080323A4
	movs r1, #0xe
	movs r2, #4
	bl Alloc
	adds r2, r4, #0
	adds r2, #0x2c
	mov r3, r8
	adds r1, r3, r2
	str r0, [r1]
	movs r4, #0
	ldrb r5, [r5, #1]
	cmp r4, r5
	bge _080323A4
	ldr r6, [sp, #0x24]
	adds r2, r6, r2
	ldr r1, [sp, #0x20]
_08032396:
	ldr r0, [r2]
	adds r0, r0, r4
	strb r7, [r0]
	adds r4, #1
	ldrb r0, [r1, #1]
	cmp r4, r0
	blt _08032396
_080323A4:
	ldr r4, _080325FC
	mov r1, r8
	adds r5, r1, r4
	ldrb r0, [r5, #2]
	cmp r0, #0
	beq _080323DE
	movs r1, #0xe
	movs r2, #4
	bl Alloc
	adds r2, r4, #0
	adds r2, #0x30
	mov r3, r8
	adds r1, r3, r2
	str r0, [r1]
	movs r4, #0
	ldrb r5, [r5, #2]
	cmp r4, r5
	bge _080323DE
	ldr r6, [sp, #0x24]
	adds r2, r6, r2
	ldr r1, [sp, #0x20]
_080323D0:
	ldr r0, [r2]
	adds r0, r0, r4
	strb r7, [r0]
	adds r4, #1
	ldrb r0, [r1, #2]
	cmp r4, r0
	blt _080323D0
_080323DE:
	ldr r4, _080325FC
	mov r1, r8
	adds r5, r1, r4
	ldrb r0, [r5, #3]
	cmp r0, #0
	beq _08032418
	movs r1, #0xe
	movs r2, #4
	bl Alloc
	adds r2, r4, #0
	adds r2, #0x34
	mov r3, r8
	adds r1, r3, r2
	str r0, [r1]
	movs r4, #0
	ldrb r5, [r5, #3]
	cmp r4, r5
	bge _08032418
	ldr r6, [sp, #0x24]
	adds r2, r6, r2
	ldr r1, [sp, #0x20]
_0803240A:
	ldr r0, [r2]
	adds r0, r0, r4
	strb r7, [r0]
	adds r4, #1
	ldrb r0, [r1, #3]
	cmp r4, r0
	blt _0803240A
_08032418:
	ldr r4, _080325FC
	mov r1, r8
	adds r5, r1, r4
	ldrb r0, [r5, #4]
	cmp r0, #0
	beq _08032452
	movs r1, #0xe
	movs r2, #4
	bl Alloc
	adds r2, r4, #0
	adds r2, #0x38
	mov r3, r8
	adds r1, r3, r2
	str r0, [r1]
	movs r4, #0
	ldrb r5, [r5, #4]
	cmp r4, r5
	bge _08032452
	ldr r6, [sp, #0x24]
	adds r2, r6, r2
	ldr r1, [sp, #0x20]
_08032444:
	ldr r0, [r2]
	adds r0, r0, r4
	strb r7, [r0]
	adds r4, #1
	ldrb r0, [r1, #4]
	cmp r4, r0
	blt _08032444
_08032452:
	ldr r4, _080325FC
	mov r1, r8
	adds r5, r1, r4
	ldrb r0, [r5, #0x13]
	cmp r0, #0
	beq _0803248C
	movs r1, #0xe
	movs r2, #4
	bl Alloc
	adds r2, r4, #0
	adds r2, #0x94
	mov r3, r8
	adds r1, r3, r2
	str r0, [r1]
	movs r4, #0
	ldrb r5, [r5, #0x13]
	cmp r4, r5
	bge _0803248C
	ldr r6, [sp, #0x24]
	adds r2, r6, r2
	ldr r1, [sp, #0x20]
_0803247E:
	ldr r0, [r2]
	adds r0, r0, r4
	strb r7, [r0]
	adds r4, #1
	ldrb r0, [r1, #0x13]
	cmp r4, r0
	blt _0803247E
_0803248C:
	ldr r4, _080325FC
	mov r1, r8
	adds r5, r1, r4
	ldrb r0, [r5, #0x14]
	cmp r0, #0
	beq _080324C6
	movs r1, #0xe
	movs r2, #4
	bl Alloc
	adds r2, r4, #0
	adds r2, #0x98
	mov r3, r8
	adds r1, r3, r2
	str r0, [r1]
	movs r4, #0
	ldrb r5, [r5, #0x14]
	cmp r4, r5
	bge _080324C6
	ldr r6, [sp, #0x24]
	adds r2, r6, r2
	ldr r1, [sp, #0x20]
_080324B8:
	ldr r0, [r2]
	adds r0, r0, r4
	strb r7, [r0]
	adds r4, #1
	ldrb r0, [r1, #0x14]
	cmp r4, r0
	blt _080324B8
_080324C6:
	ldr r4, _080325FC
	mov r1, r8
	adds r5, r1, r4
	ldrb r0, [r5, #0x15]
	cmp r0, #0
	beq _08032500
	movs r1, #0xe
	movs r2, #4
	bl Alloc
	adds r2, r4, #0
	adds r2, #0x9c
	mov r3, r8
	adds r1, r3, r2
	str r0, [r1]
	movs r4, #0
	ldrb r5, [r5, #0x15]
	cmp r4, r5
	bge _08032500
	ldr r6, [sp, #0x24]
	adds r2, r6, r2
	ldr r1, [sp, #0x20]
_080324F2:
	ldr r0, [r2]
	adds r0, r0, r4
	strb r7, [r0]
	adds r4, #1
	ldrb r0, [r1, #0x15]
	cmp r4, r0
	blt _080324F2
_08032500:
	ldr r4, _080325FC
	mov r1, r8
	adds r5, r1, r4
	ldrb r0, [r5, #5]
	cmp r0, #0
	beq _0803253A
	movs r1, #0xe
	movs r2, #4
	bl Alloc
	adds r2, r4, #0
	adds r2, #0x3c
	mov r3, r8
	adds r1, r3, r2
	str r0, [r1]
	movs r4, #0
	ldrb r5, [r5, #5]
	cmp r4, r5
	bge _0803253A
	ldr r6, [sp, #0x24]
	adds r2, r6, r2
	ldr r1, [sp, #0x20]
_0803252C:
	ldr r0, [r2]
	adds r0, r0, r4
	strb r7, [r0]
	adds r4, #1
	ldrb r0, [r1, #5]
	cmp r4, r0
	blt _0803252C
_0803253A:
	ldr r4, _080325FC
	mov r1, r8
	adds r5, r1, r4
	ldrb r0, [r5, #0xd]
	cmp r0, #0
	beq _08032574
	movs r1, #0xe
	movs r2, #4
	bl Alloc
	adds r2, r4, #0
	adds r2, #0x5c
	mov r3, r8
	adds r1, r3, r2
	str r0, [r1]
	movs r4, #0
	ldrb r5, [r5, #0xd]
	cmp r4, r5
	bge _08032574
	ldr r6, [sp, #0x24]
	adds r2, r6, r2
	ldr r1, [sp, #0x20]
_08032566:
	ldr r0, [r2]
	adds r0, r0, r4
	strb r7, [r0]
	adds r4, #1
	ldrb r0, [r1, #0xd]
	cmp r4, r0
	blt _08032566
_08032574:
	ldr r4, _080325FC
	mov r1, r8
	adds r5, r1, r4
	ldrb r0, [r5, #0x16]
	cmp r0, #0
	beq _080325AE
	movs r1, #0xe
	movs r2, #4
	bl Alloc
	adds r2, r4, #0
	adds r2, #0xa0
	mov r3, r8
	adds r1, r3, r2
	str r0, [r1]
	movs r4, #0
	ldrb r5, [r5, #0x16]
	cmp r4, r5
	bge _080325AE
	ldr r6, [sp, #0x24]
	adds r2, r6, r2
	ldr r1, [sp, #0x20]
_080325A0:
	ldr r0, [r2]
	adds r0, r0, r4
	strb r7, [r0]
	adds r4, #1
	ldrb r0, [r1, #0x16]
	cmp r4, r0
	blt _080325A0
_080325AE:
	ldr r4, _080325FC
	mov r1, r8
	adds r5, r1, r4
	ldrb r0, [r5, #0x17]
	cmp r0, #0
	beq _080325E8
	movs r1, #0xe
	movs r2, #4
	bl Alloc
	adds r2, r4, #0
	adds r2, #0xa4
	mov r3, r8
	adds r1, r3, r2
	str r0, [r1]
	movs r4, #0
	ldrb r5, [r5, #0x17]
	cmp r4, r5
	bge _080325E8
	ldr r6, [sp, #0x24]
	adds r2, r6, r2
	ldr r1, [sp, #0x20]
_080325DA:
	ldr r0, [r2]
	adds r0, r0, r4
	strb r7, [r0]
	adds r4, #1
	ldrb r0, [r1, #0x17]
	cmp r4, r0
	blt _080325DA
_080325E8:
	ldr r4, _080325FC
	mov r1, r8
	adds r5, r1, r4
	ldrb r0, [r5, #0x18]
	cmp r0, #0
	beq _0803262A
	movs r1, #0xe
	movs r2, #4
	b _08032600
	.align 2, 0
_080325FC: .4byte 0x0203E440
_08032600:
	bl Alloc
	adds r2, r4, #0
	adds r2, #0xa8
	mov r3, r8
	adds r1, r3, r2
	str r0, [r1]
	movs r4, #0
	ldrb r5, [r5, #0x18]
	cmp r4, r5
	bge _0803262A
	ldr r6, [sp, #0x24]
	adds r2, r6, r2
	ldr r1, [sp, #0x20]
_0803261C:
	ldr r0, [r2]
	adds r0, r0, r4
	strb r7, [r0]
	adds r4, #1
	ldrb r0, [r1, #0x18]
	cmp r4, r0
	blt _0803261C
_0803262A:
	ldr r4, _0803296C
	mov r1, r8
	adds r5, r1, r4
	ldrb r0, [r5, #0xe]
	cmp r0, #0
	beq _08032664
	movs r1, #0xe
	movs r2, #4
	bl Alloc
	adds r2, r4, #0
	adds r2, #0x60
	mov r3, r8
	adds r1, r3, r2
	str r0, [r1]
	movs r4, #0
	ldrb r5, [r5, #0xe]
	cmp r4, r5
	bge _08032664
	ldr r6, [sp, #0x24]
	adds r2, r6, r2
	ldr r1, [sp, #0x20]
_08032656:
	ldr r0, [r2]
	adds r0, r0, r4
	strb r7, [r0]
	adds r4, #1
	ldrb r0, [r1, #0xe]
	cmp r4, r0
	blt _08032656
_08032664:
	ldr r4, _0803296C
	mov r1, r8
	adds r5, r1, r4
	ldrb r0, [r5, #0xf]
	cmp r0, #0
	beq _0803269E
	movs r1, #0xe
	movs r2, #4
	bl Alloc
	adds r2, r4, #0
	adds r2, #0x64
	mov r3, r8
	adds r1, r3, r2
	str r0, [r1]
	movs r4, #0
	ldrb r5, [r5, #0xf]
	cmp r4, r5
	bge _0803269E
	ldr r6, [sp, #0x24]
	adds r2, r6, r2
	ldr r1, [sp, #0x20]
_08032690:
	ldr r0, [r2]
	adds r0, r0, r4
	strb r7, [r0]
	adds r4, #1
	ldrb r0, [r1, #0xf]
	cmp r4, r0
	blt _08032690
_0803269E:
	ldr r4, _0803296C
	mov r1, r8
	adds r5, r1, r4
	ldrb r0, [r5, #0x10]
	cmp r0, #0
	beq _080326D8
	movs r1, #0xe
	movs r2, #4
	bl Alloc
	adds r2, r4, #0
	adds r2, #0x68
	mov r3, r8
	adds r1, r3, r2
	str r0, [r1]
	movs r4, #0
	ldrb r5, [r5, #0x10]
	cmp r4, r5
	bge _080326D8
	ldr r6, [sp, #0x24]
	adds r2, r6, r2
	ldr r1, [sp, #0x20]
_080326CA:
	ldr r0, [r2]
	adds r0, r0, r4
	strb r7, [r0]
	adds r4, #1
	ldrb r0, [r1, #0x10]
	cmp r4, r0
	blt _080326CA
_080326D8:
	ldr r4, _0803296C
	mov r1, r8
	adds r5, r1, r4
	ldrb r0, [r5, #0x11]
	cmp r0, #0
	beq _08032712
	movs r1, #0xe
	movs r2, #4
	bl Alloc
	adds r2, r4, #0
	adds r2, #0x6c
	mov r3, r8
	adds r1, r3, r2
	str r0, [r1]
	movs r4, #0
	ldrb r5, [r5, #0x11]
	cmp r4, r5
	bge _08032712
	ldr r6, [sp, #0x24]
	adds r2, r6, r2
	ldr r1, [sp, #0x20]
_08032704:
	ldr r0, [r2]
	adds r0, r0, r4
	strb r7, [r0]
	adds r4, #1
	ldrb r0, [r1, #0x11]
	cmp r4, r0
	blt _08032704
_08032712:
	ldr r4, _0803296C
	mov r1, r8
	adds r5, r1, r4
	ldrb r0, [r5, #0x19]
	cmp r0, #0
	beq _0803274C
	movs r1, #0xe
	movs r2, #4
	bl Alloc
	adds r2, r4, #0
	adds r2, #0xac
	mov r3, r8
	adds r1, r3, r2
	str r0, [r1]
	movs r4, #0
	ldrb r5, [r5, #0x19]
	cmp r4, r5
	bge _0803274C
	ldr r6, [sp, #0x24]
	adds r2, r6, r2
	ldr r1, [sp, #0x20]
_0803273E:
	ldr r0, [r2]
	adds r0, r0, r4
	strb r7, [r0]
	adds r4, #1
	ldrb r0, [r1, #0x19]
	cmp r4, r0
	blt _0803273E
_0803274C:
	ldr r4, _0803296C
	mov r1, r8
	adds r5, r1, r4
	ldrb r0, [r5, #0x1a]
	cmp r0, #0
	beq _08032786
	movs r1, #0xe
	movs r2, #4
	bl Alloc
	adds r2, r4, #0
	adds r2, #0xb0
	mov r3, r8
	adds r1, r3, r2
	str r0, [r1]
	movs r4, #0
	ldrb r5, [r5, #0x1a]
	cmp r4, r5
	bge _08032786
	ldr r6, [sp, #0x24]
	adds r2, r6, r2
	ldr r1, [sp, #0x20]
_08032778:
	ldr r0, [r2]
	adds r0, r0, r4
	strb r7, [r0]
	adds r4, #1
	ldrb r0, [r1, #0x1a]
	cmp r4, r0
	blt _08032778
_08032786:
	ldr r4, _0803296C
	mov r1, r8
	adds r5, r1, r4
	ldrb r0, [r5, #0x1b]
	cmp r0, #0
	beq _080327C0
	movs r1, #0xe
	movs r2, #4
	bl Alloc
	adds r2, r4, #0
	adds r2, #0xb4
	mov r3, r8
	adds r1, r3, r2
	str r0, [r1]
	movs r4, #0
	ldrb r5, [r5, #0x1b]
	cmp r4, r5
	bge _080327C0
	ldr r6, [sp, #0x24]
	adds r2, r6, r2
	ldr r1, [sp, #0x20]
_080327B2:
	ldr r0, [r2]
	adds r0, r0, r4
	strb r7, [r0]
	adds r4, #1
	ldrb r0, [r1, #0x1b]
	cmp r4, r0
	blt _080327B2
_080327C0:
	ldr r4, _0803296C
	mov r1, r8
	adds r5, r1, r4
	ldrb r0, [r5, #0x1c]
	cmp r0, #0
	beq _080327FA
	movs r1, #0xe
	movs r2, #4
	bl Alloc
	adds r2, r4, #0
	adds r2, #0xb8
	mov r3, r8
	adds r1, r3, r2
	str r0, [r1]
	movs r4, #0
	ldrb r5, [r5, #0x1c]
	cmp r4, r5
	bge _080327FA
	ldr r6, [sp, #0x24]
	adds r2, r6, r2
	ldr r1, [sp, #0x20]
_080327EC:
	ldr r0, [r2]
	adds r0, r0, r4
	strb r7, [r0]
	adds r4, #1
	ldrb r0, [r1, #0x1c]
	cmp r4, r0
	blt _080327EC
_080327FA:
	ldr r4, _0803296C
	mov r1, r8
	adds r5, r1, r4
	ldrb r0, [r5, #0x1f]
	cmp r0, #0
	beq _08032834
	movs r1, #0xe
	movs r2, #4
	bl Alloc
	adds r2, r4, #0
	adds r2, #0x70
	mov r3, r8
	adds r1, r3, r2
	str r0, [r1]
	movs r4, #0
	ldrb r5, [r5, #0x1f]
	cmp r4, r5
	bge _08032834
	ldr r6, [sp, #0x24]
	adds r2, r6, r2
	ldr r1, [sp, #0x20]
_08032826:
	ldr r0, [r2]
	adds r0, r0, r4
	strb r7, [r0]
	adds r4, #1
	ldrb r0, [r1, #0x1f]
	cmp r4, r0
	blt _08032826
_08032834:
	ldr r4, _0803296C
	mov r1, r8
	adds r0, r1, r4
	adds r5, r0, #0
	adds r5, #0x26
	ldrb r0, [r5]
	cmp r0, #0
	beq _08032872
	movs r1, #0xe
	movs r2, #4
	bl Alloc
	adds r2, r4, #0
	adds r2, #0x8c
	mov r3, r8
	adds r1, r3, r2
	str r0, [r1]
	movs r4, #0
	ldrb r5, [r5]
	cmp r4, r5
	bge _08032872
	ldr r6, [sp, #0x24]
	adds r2, r6, r2
	ldr r1, [sp, #0x3c]
_08032864:
	ldr r0, [r2]
	adds r0, r0, r4
	strb r7, [r0]
	adds r4, #1
	ldrb r0, [r1]
	cmp r4, r0
	blt _08032864
_08032872:
	ldr r4, _0803296C
	mov r1, r8
	adds r0, r1, r4
	adds r5, r0, #0
	adds r5, #0x22
	ldrb r0, [r5]
	cmp r0, #0
	beq _080328B0
	movs r1, #0xe
	movs r2, #4
	bl Alloc
	adds r2, r4, #0
	adds r2, #0x7c
	mov r3, r8
	adds r1, r3, r2
	str r0, [r1]
	movs r4, #0
	ldrb r5, [r5]
	cmp r4, r5
	bge _080328B0
	ldr r6, [sp, #0x24]
	adds r2, r6, r2
	ldr r1, [sp, #0x38]
_080328A2:
	ldr r0, [r2]
	adds r0, r0, r4
	strb r7, [r0]
	adds r4, #1
	ldrb r0, [r1]
	cmp r4, r0
	blt _080328A2
_080328B0:
	ldr r4, _0803296C
	mov r1, r8
	adds r0, r1, r4
	adds r5, r0, #0
	adds r5, #0x23
	ldrb r0, [r5]
	cmp r0, #0
	beq _080328EE
	movs r1, #0xe
	movs r2, #4
	bl Alloc
	adds r2, r4, #0
	adds r2, #0x80
	mov r3, r8
	adds r1, r3, r2
	str r0, [r1]
	movs r4, #0
	ldrb r5, [r5]
	cmp r4, r5
	bge _080328EE
	ldr r6, [sp, #0x24]
	adds r2, r6, r2
	ldr r1, [sp, #0x34]
_080328E0:
	ldr r0, [r2]
	adds r0, r0, r4
	strb r7, [r0]
	adds r4, #1
	ldrb r0, [r1]
	cmp r4, r0
	blt _080328E0
_080328EE:
	ldr r4, _0803296C
	mov r1, r8
	adds r0, r1, r4
	adds r5, r0, #0
	adds r5, #0x24
	ldrb r0, [r5]
	cmp r0, #0
	beq _0803292C
	movs r1, #0xe
	movs r2, #4
	bl Alloc
	adds r2, r4, #0
	adds r2, #0x84
	mov r3, r8
	adds r1, r3, r2
	str r0, [r1]
	movs r4, #0
	ldrb r5, [r5]
	cmp r4, r5
	bge _0803292C
	ldr r6, [sp, #0x24]
	adds r2, r6, r2
	ldr r1, [sp, #0x30]
_0803291E:
	ldr r0, [r2]
	adds r0, r0, r4
	strb r7, [r0]
	adds r4, #1
	ldrb r0, [r1]
	cmp r4, r0
	blt _0803291E
_0803292C:
	ldr r4, _0803296C
	mov r1, r8
	adds r0, r1, r4
	adds r5, r0, #0
	adds r5, #0x25
	ldrb r0, [r5]
	cmp r0, #0
	beq _08032972
	movs r1, #0xe
	movs r2, #4
	bl Alloc
	adds r2, r4, #0
	adds r2, #0x88
	mov r3, r8
	adds r1, r3, r2
	str r0, [r1]
	movs r4, #0
	ldrb r5, [r5]
	cmp r4, r5
	bge _08032972
	ldr r6, [sp, #0x24]
	adds r2, r6, r2
	ldr r1, [sp, #0x2c]
_0803295C:
	ldr r0, [r2]
	adds r0, r0, r4
	strb r7, [r0]
	adds r4, #1
	ldrb r0, [r1]
	cmp r4, r0
	b _08032970
	.align 2, 0
_0803296C: .4byte 0x0203E440
_08032970:
	blt _0803295C
_08032972:
	ldr r4, _08032CD4
	mov r1, r8
	adds r5, r1, r4
	ldrb r0, [r5, #0x1d]
	cmp r0, #0
	beq _080329AC
	movs r1, #0xe
	movs r2, #4
	bl Alloc
	adds r2, r4, #0
	adds r2, #0xbc
	mov r3, r8
	adds r1, r3, r2
	str r0, [r1]
	movs r4, #0
	ldrb r5, [r5, #0x1d]
	cmp r4, r5
	bge _080329AC
	ldr r6, [sp, #0x24]
	adds r2, r6, r2
	ldr r1, [sp, #0x20]
_0803299E:
	ldr r0, [r2]
	adds r0, r0, r4
	strb r7, [r0]
	adds r4, #1
	ldrb r0, [r1, #0x1d]
	cmp r4, r0
	blt _0803299E
_080329AC:
	ldr r4, _08032CD4
	mov r1, r8
	adds r5, r1, r4
	ldrb r0, [r5, #0x1e]
	cmp r0, #0
	beq _080329E6
	movs r1, #0xe
	movs r2, #4
	bl Alloc
	adds r2, r4, #0
	adds r2, #0xc0
	mov r3, r8
	adds r1, r3, r2
	str r0, [r1]
	movs r4, #0
	ldrb r5, [r5, #0x1e]
	cmp r4, r5
	bge _080329E6
	ldr r6, [sp, #0x24]
	adds r2, r6, r2
	ldr r1, [sp, #0x20]
_080329D8:
	ldr r0, [r2]
	adds r0, r0, r4
	strb r7, [r0]
	adds r4, #1
	ldrb r0, [r1, #0x1e]
	cmp r4, r0
	blt _080329D8
_080329E6:
	ldr r4, _08032CD4
	mov r1, r8
	adds r0, r1, r4
	adds r5, r0, #0
	adds r5, #0x20
	ldrb r0, [r5]
	cmp r0, #0
	beq _08032A24
	movs r1, #0xe
	movs r2, #4
	bl Alloc
	adds r2, r4, #0
	adds r2, #0x74
	mov r3, r8
	adds r1, r3, r2
	str r0, [r1]
	movs r4, #0
	ldrb r5, [r5]
	cmp r4, r5
	bge _08032A24
	ldr r6, [sp, #0x24]
	adds r2, r6, r2
	ldr r1, [sp, #0x28]
_08032A16:
	ldr r0, [r2]
	adds r0, r0, r4
	strb r7, [r0]
	adds r4, #1
	ldrb r0, [r1]
	cmp r4, r0
	blt _08032A16
_08032A24:
	ldr r0, _08032CD4
	mov r2, r8
	adds r1, r2, r0
	adds r5, r1, #0
	adds r5, #0x21
	ldrb r1, [r5]
	mov sl, r0
	cmp r1, #0
	beq _08032A66
	adds r0, r1, #0
	movs r1, #0xe
	movs r2, #4
	bl Alloc
	mov r2, sl
	adds r2, #0x78
	mov r3, r8
	adds r1, r3, r2
	str r0, [r1]
	movs r4, #0
	ldrb r5, [r5]
	cmp r4, r5
	bge _08032A66
	ldr r6, [sp, #0x24]
	adds r2, r6, r2
	ldr r1, [sp, #0x1c]
_08032A58:
	ldr r0, [r2]
	adds r0, r0, r4
	strb r7, [r0]
	adds r4, #1
	ldrb r0, [r1]
	cmp r4, r0
	blt _08032A58
_08032A66:
	ldr r6, _08032CD8
	ldr r1, [sp, #0x18]
	adds r5, r1, r6
	ldrb r0, [r5]
	cmp r0, #0
	beq _08032AA0
	movs r1, #0xe
	movs r2, #4
	bl Alloc
	adds r2, r6, #4
	ldr r3, [sp, #0x18]
	adds r1, r3, r2
	str r0, [r1]
	movs r4, #0
	ldrb r5, [r5]
	cmp r4, r5
	bge _08032AA0
	ldr r0, [sp, #0x40]
	adds r2, r0, r2
	movs r3, #0
	adds r1, r0, r6
_08032A92:
	ldr r0, [r2]
	adds r0, r0, r4
	strb r3, [r0]
	adds r4, #1
	ldrb r6, [r1]
	cmp r4, r6
	blt _08032A92
_08032AA0:
	ldr r6, _08032CD8
	ldr r0, [sp, #0x18]
	adds r5, r0, r6
	ldrb r0, [r5, #1]
	cmp r0, #0
	beq _08032ADC
	movs r1, #0xe
	movs r2, #4
	bl Alloc
	adds r2, r6, #0
	adds r2, #8
	ldr r3, [sp, #0x18]
	adds r1, r3, r2
	str r0, [r1]
	movs r4, #0
	ldrb r5, [r5, #1]
	cmp r4, r5
	bge _08032ADC
	ldr r0, [sp, #0x40]
	adds r2, r0, r2
	movs r3, #0
	adds r1, r0, r6
_08032ACE:
	ldr r0, [r2]
	adds r0, r0, r4
	strb r3, [r0]
	adds r4, #1
	ldrb r6, [r1, #1]
	cmp r4, r6
	blt _08032ACE
_08032ADC:
	ldr r6, _08032CD8
	ldr r0, [sp, #0x18]
	adds r5, r0, r6
	ldrb r0, [r5, #2]
	cmp r0, #0
	beq _08032B18
	movs r1, #0xe
	movs r2, #4
	bl Alloc
	adds r2, r6, #0
	adds r2, #0xc
	ldr r3, [sp, #0x18]
	adds r1, r3, r2
	str r0, [r1]
	movs r4, #0
	ldrb r5, [r5, #2]
	cmp r4, r5
	bge _08032B18
	ldr r0, [sp, #0x40]
	adds r2, r0, r2
	movs r3, #0
	adds r1, r0, r6
_08032B0A:
	ldr r0, [r2]
	adds r0, r0, r4
	strb r3, [r0]
	adds r4, #1
	ldrb r6, [r1, #2]
	cmp r4, r6
	blt _08032B0A
_08032B18:
	movs r0, #0xc4
	add r8, r0
	movs r1, #0x78
	add sb, r1
	ldr r2, [sp, #0x14]
	adds r2, #0x14
	str r2, [sp, #0x14]
	ldr r3, [sp, #0x40]
	adds r3, #0x10
	str r3, [sp, #0x40]
	ldr r4, [sp, #0x18]
	adds r4, #0x10
	str r4, [sp, #0x18]
	ldr r6, [sp, #0x1c]
	adds r6, #0xc4
	str r6, [sp, #0x1c]
	ldr r0, [sp, #0x20]
	adds r0, #0xc4
	str r0, [sp, #0x20]
	ldr r1, [sp, #0x24]
	adds r1, #0xc4
	str r1, [sp, #0x24]
	ldr r2, [sp, #0x28]
	adds r2, #0xc4
	str r2, [sp, #0x28]
	ldr r3, [sp, #0x2c]
	adds r3, #0xc4
	str r3, [sp, #0x2c]
	ldr r4, [sp, #0x30]
	adds r4, #0xc4
	str r4, [sp, #0x30]
	ldr r6, [sp, #0x34]
	adds r6, #0xc4
	str r6, [sp, #0x34]
	ldr r0, [sp, #0x38]
	adds r0, #0xc4
	str r0, [sp, #0x38]
	ldr r1, [sp, #0x3c]
	adds r1, #0xc4
	str r1, [sp, #0x3c]
	ldr r2, [sp]
	adds r2, #1
	str r2, [sp]
	cmp r2, #5
	bgt _08032B76
	bl sub_08031CB8
_08032B76:
	movs r3, #0
	str r3, [sp]
	ldr r4, _08032CDC
	mov ip, r4
	movs r6, #0
	str r6, [sp, #0x10]
_08032B82:
	ldr r1, [sp, #0x10]
	add r1, ip
	ldrb r0, [r1, #4]
	ldr r2, [sp]
	lsls r5, r2, #3
	cmp r0, #0xff
	beq _08032C08
	ldr r0, [r1]
	ldr r0, [r0, #0x40]
	mov r8, r0
	movs r4, #0
	ldrh r3, [r0, #8]
	cmp r4, r3
	bge _08032C08
	ldr r6, _08032CE0
	mov sl, r6
	mov r7, ip
_08032BA4:
	mov r0, r8
	ldr r1, [r0, #4]
	lsls r0, r4, #3
	adds r1, r0, r1
	ldr r6, [r1]
	movs r2, #0
	mov sb, r2
	str r0, [sp, #0xc]
	adds r4, #1
	str r4, [sp, #8]
	ldrh r1, [r1, #4]
	cmp sb, r1
	bge _08032BFE
	ldr r4, _08032CE4
	adds r2, r5, r7
	mov r3, sl
_08032BC4:
	ldrh r0, [r6, #2]
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r1, [r0]
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _08032BEA
	ldrb r1, [r2, #4]
	movs r0, #0xc4
	muls r0, r1, r0
	adds r0, r0, r3
	ldrb r1, [r6, #0xe]
	ldr r0, [r0]
	lsls r1, r1, #4
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
_08032BEA:
	adds r6, #0x1c
	movs r0, #1
	add sb, r0
	mov r1, r8
	ldr r0, [r1, #4]
	ldr r1, [sp, #0xc]
	adds r0, r1, r0
	ldrh r0, [r0, #4]
	cmp sb, r0
	blt _08032BC4
_08032BFE:
	ldr r4, [sp, #8]
	mov r2, r8
	ldrh r2, [r2, #8]
	cmp r4, r2
	blt _08032BA4
_08032C08:
	ldr r3, [sp, #0x10]
	adds r3, #8
	str r3, [sp, #0x10]
	ldr r4, [sp]
	adds r4, #1
	str r4, [sp]
	cmp r4, #0x25
	ble _08032B82
	movs r6, #0
	str r6, [sp]
	movs r3, #0
	ldr r0, _08032CD4
	mov r8, r0
_08032C22:
	movs r0, #0xc4
	ldr r2, [sp]
	adds r1, r2, #0
	muls r1, r0, r1
	mov r4, r8
	adds r2, r1, r4
	ldrb r0, [r2, #0x12]
	cmp r0, #0
	beq _08032C78
	movs r4, #0
	ldrb r6, [r2, #0x12]
	cmp r4, r6
	bge _08032C78
	ldr r0, _08032CE0
	adds r6, r1, r0
	adds r7, r2, #0
_08032C42:
	ldr r0, [r6]
	lsls r5, r4, #4
	adds r1, r5, r0
	ldrb r0, [r1]
	cmp r0, #0
	bne _08032C52
	.2byte 0xEE00, 0xEE00
_08032C52:
	ldrb r0, [r1]
	lsls r0, r0, #3
	movs r1, #0xe
	movs r2, #4
	str r3, [sp, #0x44]
	bl Alloc
	ldr r1, [r6]
	adds r1, r5, r1
	str r0, [r1, #0xc]
	ldr r3, [sp, #0x44]
	strb r3, [r1, #1]
	ldr r0, [r6]
	adds r0, r5, r0
	strb r3, [r0, #4]
	adds r4, #1
	ldrb r0, [r7, #0x12]
	cmp r4, r0
	blt _08032C42
_08032C78:
	ldr r1, [sp]
	adds r1, #1
	str r1, [sp]
	cmp r1, #5
	ble _08032C22
	movs r2, #0
	str r2, [sp]
	ldr r3, _08032CD4
	mov sl, r3
	ldr r4, _08032CDC
	mov ip, r4
_08032C8E:
	ldr r6, [sp]
	lsls r0, r6, #3
	mov r1, ip
	adds r2, r0, r1
	ldrb r1, [r2, #4]
	adds r5, r0, #0
	cmp r1, #0xff
	bne _08032CA0
	b _08032FC2
_08032CA0:
	ldr r0, [r2]
	ldr r0, [r0, #0x40]
	mov r8, r0
	movs r4, #0
	ldrh r2, [r0, #8]
	cmp r4, r2
	blt _08032CB0
	b _08032FC2
_08032CB0:
	mov r3, r8
	ldr r1, [r3, #4]
	lsls r0, r4, #3
	adds r1, r0, r1
	ldr r6, [r1]
	movs r2, #0
	mov sb, r2
	str r0, [sp, #0xc]
	adds r4, #1
	str r4, [sp, #8]
	ldrh r1, [r1, #4]
	cmp sb, r1
	blt _08032CCC
	b _08032FB6
_08032CCC:
	ldr r1, _08032CE4
	ldrh r0, [r6, #2]
	lsls r0, r0, #2
	b _08032CE8
	.align 2, 0
_08032CD4: .4byte 0x0203E440
_08032CD8: .4byte 0x0203E8D8
_08032CDC: .4byte 0x080CF4EC
_08032CE0: .4byte 0x0203E4D0
_08032CE4: .4byte 0x080CC2B0
_08032CE8:
	adds r0, r0, r1
	ldr r1, [r0]
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	bne _08032CF6
	b _08032FA0
_08032CF6:
	mov r3, ip
	adds r0, r5, r3
	ldrb r1, [r0, #4]
	movs r0, #0xc4
	adds r2, r1, #0
	muls r2, r0, r2
	mov r0, sl
	adds r0, #0x90
	adds r2, r2, r0
	ldrb r1, [r6, #0xe]
	lsls r1, r1, #4
	ldr r0, [r2]
	adds r3, r0, r1
	ldrb r0, [r3, #1]
	ldrb r4, [r3]
	cmp r0, r4
	bne _08032D1C
	.2byte 0xEE00, 0xEE00
_08032D1C:
	ldrb r0, [r3, #2]
	cmp r0, #0
	bne _08032D2A
	ldrb r0, [r6, #0x14]
	strb r0, [r3, #2]
	ldrb r0, [r3, #3]
	b _08032D3E
_08032D2A:
	ldrb r1, [r6, #0x14]
	cmp r0, r1
	beq _08032D34
	.2byte 0xEE00, 0xEE00
_08032D34:
	ldrb r0, [r3, #3]
	cmp r0, #0
	beq _08032D42
	.2byte 0xEE00, 0xEE00
_08032D3E:
	cmp r0, #0
	bne _08032D48
_08032D42:
	ldrb r0, [r6, #0x17]
	strb r0, [r3, #3]
	b _08032D5C
_08032D48:
	ldrb r2, [r6, #0x17]
	cmp r0, r2
	beq _08032D52
	.2byte 0xEE00, 0xEE00
_08032D52:
	ldrb r0, [r3, #2]
	cmp r0, #0
	beq _08032D5C
	.2byte 0xEE00, 0xEE00
_08032D5C:
	ldrb r0, [r3, #1]
	ldr r1, [r3, #0xc]
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrb r1, [r6, #0xf]
	movs r2, #0
	strb r1, [r0]
	ldrb r0, [r3, #1]
	ldr r1, [r3, #0xc]
	lsls r0, r0, #3
	adds r0, r0, r1
	strb r2, [r0, #1]
	ldrb r1, [r3, #1]
	ldr r0, [r3, #0xc]
	lsls r1, r1, #3
	adds r1, r1, r0
	ldrb r0, [r6, #0x13]
	strb r0, [r1, #2]
	ldrb r0, [r3, #1]
	ldr r1, [r3, #0xc]
	lsls r0, r0, #3
	adds r0, r0, r1
	strb r2, [r0, #3]
	ldrb r1, [r3, #1]
	ldr r0, [r3, #0xc]
	lsls r1, r1, #3
	adds r1, r1, r0
	ldrh r0, [r6, #0x1a]
	strh r0, [r1, #4]
	ldrb r0, [r3, #1]
	ldr r1, [r3, #0xc]
	lsls r0, r0, #3
	adds r0, r0, r1
	strh r2, [r0, #6]
	ldrh r0, [r6, #2]
	subs r0, #0x2e
	cmp r0, #0x43
	bls _08032DAA
	b _08032F96
_08032DAA:
	lsls r0, r0, #2
	ldr r1, _08032DB4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08032DB4: .4byte 0x08032DB8
_08032DB8: @ jump table
	.4byte _08032F58 @ case 0
	.4byte _08032F96 @ case 1
	.4byte _08032F96 @ case 2
	.4byte _08032F96 @ case 3
	.4byte _08032F96 @ case 4
	.4byte _08032F96 @ case 5
	.4byte _08032F68 @ case 6
	.4byte _08032F96 @ case 7
	.4byte _08032F96 @ case 8
	.4byte _08032F96 @ case 9
	.4byte _08032F96 @ case 10
	.4byte _08032F96 @ case 11
	.4byte _08032F96 @ case 12
	.4byte _08032F96 @ case 13
	.4byte _08032F96 @ case 14
	.4byte _08032F78 @ case 15
	.4byte _08032F96 @ case 16
	.4byte _08032F96 @ case 17
	.4byte _08032F96 @ case 18
	.4byte _08032F96 @ case 19
	.4byte _08032F28 @ case 20
	.4byte _08032F38 @ case 21
	.4byte _08032F48 @ case 22
	.4byte _08032F96 @ case 23
	.4byte _08032F96 @ case 24
	.4byte _08032F96 @ case 25
	.4byte _08032F96 @ case 26
	.4byte _08032F96 @ case 27
	.4byte _08032F96 @ case 28
	.4byte _08032F96 @ case 29
	.4byte _08032F96 @ case 30
	.4byte _08032F96 @ case 31
	.4byte _08032F96 @ case 32
	.4byte _08032F18 @ case 33
	.4byte _08032F96 @ case 34
	.4byte _08032F96 @ case 35
	.4byte _08032F08 @ case 36
	.4byte _08032F96 @ case 37
	.4byte _08032F96 @ case 38
	.4byte _08032F96 @ case 39
	.4byte _08032EE8 @ case 40
	.4byte _08032EF8 @ case 41
	.4byte _08032F96 @ case 42
	.4byte _08032F96 @ case 43
	.4byte _08032F96 @ case 44
	.4byte _08032F96 @ case 45
	.4byte _08032F96 @ case 46
	.4byte _08032F96 @ case 47
	.4byte _08032F96 @ case 48
	.4byte _08032F96 @ case 49
	.4byte _08032F96 @ case 50
	.4byte _08032F96 @ case 51
	.4byte _08032F96 @ case 52
	.4byte _08032F96 @ case 53
	.4byte _08032F96 @ case 54
	.4byte _08032F96 @ case 55
	.4byte _08032F96 @ case 56
	.4byte _08032F96 @ case 57
	.4byte _08032F96 @ case 58
	.4byte _08032F96 @ case 59
	.4byte _08032F96 @ case 60
	.4byte _08032F96 @ case 61
	.4byte _08032F96 @ case 62
	.4byte _08032F96 @ case 63
	.4byte _08032F96 @ case 64
	.4byte _08032F96 @ case 65
	.4byte _08032ED8 @ case 66
	.4byte _08032EC8 @ case 67
_08032EC8:
	mov r4, ip
	adds r0, r5, r4
	ldrb r1, [r0, #4]
	movs r0, #0xc4
	muls r1, r0, r1
	mov r0, sl
	adds r0, #0xc0
	b _08032F86
_08032ED8:
	mov r4, ip
	adds r0, r5, r4
	ldrb r1, [r0, #4]
	movs r0, #0xc4
	muls r1, r0, r1
	mov r0, sl
	adds r0, #0xbc
	b _08032F86
_08032EE8:
	mov r4, ip
	adds r0, r5, r4
	ldrb r1, [r0, #4]
	movs r0, #0xc4
	muls r1, r0, r1
	mov r0, sl
	adds r0, #0xb8
	b _08032F86
_08032EF8:
	mov r4, ip
	adds r0, r5, r4
	ldrb r1, [r0, #4]
	movs r0, #0xc4
	muls r1, r0, r1
	mov r0, sl
	adds r0, #0xb4
	b _08032F86
_08032F08:
	mov r4, ip
	adds r0, r5, r4
	ldrb r1, [r0, #4]
	movs r0, #0xc4
	muls r1, r0, r1
	mov r0, sl
	adds r0, #0xb0
	b _08032F86
_08032F18:
	mov r4, ip
	adds r0, r5, r4
	ldrb r1, [r0, #4]
	movs r0, #0xc4
	muls r1, r0, r1
	mov r0, sl
	adds r0, #0xac
	b _08032F86
_08032F28:
	mov r4, ip
	adds r0, r5, r4
	ldrb r1, [r0, #4]
	movs r0, #0xc4
	muls r1, r0, r1
	mov r0, sl
	adds r0, #0xa0
	b _08032F86
_08032F38:
	mov r4, ip
	adds r0, r5, r4
	ldrb r1, [r0, #4]
	movs r0, #0xc4
	muls r1, r0, r1
	mov r0, sl
	adds r0, #0xa4
	b _08032F86
_08032F48:
	mov r4, ip
	adds r0, r5, r4
	ldrb r1, [r0, #4]
	movs r0, #0xc4
	muls r1, r0, r1
	mov r0, sl
	adds r0, #0xa8
	b _08032F86
_08032F58:
	mov r4, ip
	adds r0, r5, r4
	ldrb r1, [r0, #4]
	movs r0, #0xc4
	muls r1, r0, r1
	mov r0, sl
	adds r0, #0x94
	b _08032F86
_08032F68:
	mov r4, ip
	adds r0, r5, r4
	ldrb r1, [r0, #4]
	movs r0, #0xc4
	muls r1, r0, r1
	mov r0, sl
	adds r0, #0x98
	b _08032F86
_08032F78:
	mov r4, ip
	adds r0, r5, r4
	ldrb r1, [r0, #4]
	movs r0, #0xc4
	muls r1, r0, r1
	mov r0, sl
	adds r0, #0x9c
_08032F86:
	adds r1, r1, r0
	movs r2, #6
	ldrsh r0, [r6, r2]
	ldr r1, [r1]
	adds r1, r1, r0
	ldrb r0, [r3, #1]
	strb r0, [r1]
	b _08032F9A
_08032F96:
	.2byte 0xEE00, 0xEE00
_08032F9A:
	ldrb r0, [r3, #1]
	adds r0, #1
	strb r0, [r3, #1]
_08032FA0:
	adds r6, #0x1c
	movs r3, #1
	add sb, r3
	mov r4, r8
	ldr r0, [r4, #4]
	ldr r1, [sp, #0xc]
	adds r0, r1, r0
	ldrh r0, [r0, #4]
	cmp sb, r0
	bge _08032FB6
	b _08032CCC
_08032FB6:
	ldr r4, [sp, #8]
	mov r2, r8
	ldrh r2, [r2, #8]
	cmp r4, r2
	bge _08032FC2
	b _08032CB0
_08032FC2:
	ldr r3, [sp]
	adds r3, #1
	str r3, [sp]
	cmp r3, #0x25
	bgt _08032FCE
	b _08032C8E
_08032FCE:
	movs r4, #0
	str r4, [sp]
	ldr r0, _080330E8
	adds r7, r0, #0
	mov r8, r4
	adds r5, r7, #0
	adds r5, #0x12
_08032FDC:
	ldrb r0, [r5]
	cmp r0, #0
	beq _0803300E
	movs r4, #0
	ldrb r6, [r5]
	cmp r4, r6
	bge _0803300E
	ldr r0, _080330EC
	mov r1, r8
	adds r3, r1, r0
	adds r2, r7, #0
	movs r6, #0
_08032FF4:
	ldr r0, [r3]
	lsls r1, r4, #4
	adds r1, r1, r0
	ldrb r0, [r1]
	cmp r0, #0
	bne _08033004
	.2byte 0xEE00, 0xEE00
_08033004:
	strb r6, [r1, #1]
	adds r4, #1
	ldrb r0, [r2, #0x12]
	cmp r4, r0
	blt _08032FF4
_0803300E:
	adds r7, #0xc4
	movs r1, #0xc4
	add r8, r1
	adds r5, #0xc4
	ldr r2, [sp]
	adds r2, #1
	str r2, [sp]
	cmp r2, #5
	ble _08032FDC
	movs r3, #0
	str r3, [sp]
_08033024:
	ldr r4, [sp]
	lsls r0, r4, #3
	ldr r6, _080330F0
	adds r2, r0, r6
	ldrb r1, [r2, #4]
	adds r4, #1
	str r4, [sp, #4]
	adds r5, r0, #0
	cmp r1, #0xff
	beq _080330CE
	ldr r0, [r2]
	ldr r0, [r0, #0x40]
	mov r8, r0
	movs r4, #0
	ldrh r0, [r0, #8]
	cmp r4, r0
	bge _080330CE
_08033046:
	mov r2, r8
	ldr r1, [r2, #4]
	lsls r0, r4, #3
	adds r1, r0, r1
	ldr r6, [r1]
	movs r3, #0
	mov sb, r3
	str r0, [sp, #0xc]
	adds r4, #1
	str r4, [sp, #8]
	ldrh r1, [r1, #4]
	cmp sb, r1
	bge _080330C4
	ldr r4, _080330F4
	mov ip, r4
	ldr r0, _080330F0
	adds r7, r5, r0
_08033068:
	ldrb r0, [r6, #0xc]
	subs r0, #0x13
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _080330B0
	ldrh r4, [r6, #2]
	lsls r0, r4, #2
	add r0, ip
	ldr r1, [r0]
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	bne _080330B0
	ldrb r1, [r7, #4]
	movs r0, #0xc4
	adds r2, r1, #0
	muls r2, r0, r2
	mov r3, sl
	adds r1, r2, r3
	ldrb r0, [r6, #0x13]
	ldrb r1, [r1, #0x12]
	cmp r0, r1
	blo _0803309C
	.2byte 0xEE00, 0xEE00
_0803309C:
	mov r0, sl
	adds r0, #0x90
	adds r0, r2, r0
	ldrb r1, [r6, #0x13]
	lsls r1, r1, #4
	ldr r0, [r0]
	adds r3, r0, r1
	strh r4, [r3, #6]
	ldrh r0, [r6, #6]
	strh r0, [r3, #8]
_080330B0:
	adds r6, #0x1c
	movs r4, #1
	add sb, r4
	mov r1, r8
	ldr r0, [r1, #4]
	ldr r2, [sp, #0xc]
	adds r0, r2, r0
	ldrh r0, [r0, #4]
	cmp sb, r0
	blt _08033068
_080330C4:
	ldr r4, [sp, #8]
	mov r3, r8
	ldrh r3, [r3, #8]
	cmp r4, r3
	blt _08033046
_080330CE:
	ldr r4, [sp, #4]
	str r4, [sp]
	cmp r4, #0x25
	ble _08033024
	add sp, #0x48
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080330E8: .4byte 0x0203E440
_080330EC: .4byte 0x0203E4D0
_080330F0: .4byte 0x080CF4EC
_080330F4: .4byte 0x080CC2B0

    .thumb
    .global sub_80330F8
sub_80330F8: @ 0x080330F8
	ldr r2, _08033110
	ldrb r0, [r2]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2]
	ldr r2, _08033114
	ldrb r1, [r2]
	movs r0, #0xdf
	ands r0, r1
	strb r0, [r2]
	bx lr
	.align 2, 0
_08033110: .4byte 0x0203E93C
_08033114: .4byte 0x0203E93B

    .thumb
sub_8033118: @ 0x08033118
	push {r4, lr}
	adds r4, r1, #0
	subs r0, #0x2e
	cmp r0, #0x43
	bls _08033124
	b _08033404
_08033124:
	lsls r0, r0, #2
	ldr r1, _08033130
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08033130: .4byte 0x08033134
_08033134: @ jump table
	.4byte _08033388 @ case 0
	.4byte _08033404 @ case 1
	.4byte _08033404 @ case 2
	.4byte _08033404 @ case 3
	.4byte _08033404 @ case 4
	.4byte _08033404 @ case 5
	.4byte _080333AC @ case 6
	.4byte _08033404 @ case 7
	.4byte _08033404 @ case 8
	.4byte _08033404 @ case 9
	.4byte _08033404 @ case 10
	.4byte _08033404 @ case 11
	.4byte _08033404 @ case 12
	.4byte _08033404 @ case 13
	.4byte _08033404 @ case 14
	.4byte _080333D0 @ case 15
	.4byte _08033404 @ case 16
	.4byte _08033404 @ case 17
	.4byte _08033404 @ case 18
	.4byte _08033404 @ case 19
	.4byte _0803331C @ case 20
	.4byte _08033340 @ case 21
	.4byte _08033364 @ case 22
	.4byte _08033404 @ case 23
	.4byte _08033404 @ case 24
	.4byte _08033404 @ case 25
	.4byte _08033404 @ case 26
	.4byte _08033404 @ case 27
	.4byte _08033404 @ case 28
	.4byte _08033404 @ case 29
	.4byte _08033404 @ case 30
	.4byte _08033404 @ case 31
	.4byte _08033404 @ case 32
	.4byte _080332F8 @ case 33
	.4byte _08033404 @ case 34
	.4byte _08033404 @ case 35
	.4byte _080332D4 @ case 36
	.4byte _08033404 @ case 37
	.4byte _08033404 @ case 38
	.4byte _08033404 @ case 39
	.4byte _0803328C @ case 40
	.4byte _080332B0 @ case 41
	.4byte _08033404 @ case 42
	.4byte _08033404 @ case 43
	.4byte _08033404 @ case 44
	.4byte _08033404 @ case 45
	.4byte _08033404 @ case 46
	.4byte _08033404 @ case 47
	.4byte _08033404 @ case 48
	.4byte _08033404 @ case 49
	.4byte _08033404 @ case 50
	.4byte _08033404 @ case 51
	.4byte _08033404 @ case 52
	.4byte _08033404 @ case 53
	.4byte _08033404 @ case 54
	.4byte _08033404 @ case 55
	.4byte _08033404 @ case 56
	.4byte _08033404 @ case 57
	.4byte _08033404 @ case 58
	.4byte _08033404 @ case 59
	.4byte _08033404 @ case 60
	.4byte _08033404 @ case 61
	.4byte _08033404 @ case 62
	.4byte _08033404 @ case 63
	.4byte _08033404 @ case 64
	.4byte _08033404 @ case 65
	.4byte _08033268 @ case 66
	.4byte _08033244 @ case 67
_08033244:
	ldr r3, _08033260
	ldr r0, _08033264
	ldrh r1, [r0]
	movs r0, #0xc4
	muls r1, r0, r1
	adds r0, r3, #0
	adds r0, #0x90
	adds r0, r1, r0
	lsls r2, r2, #4
	ldr r0, [r0]
	adds r2, r0, r2
	adds r3, #0xc0
	b _080333E8
	.align 2, 0
_08033260: .4byte 0x0203E440
_08033264: .4byte gLoadedRoomLevel
_08033268:
	ldr r3, _08033284
	ldr r0, _08033288
	ldrh r1, [r0]
	movs r0, #0xc4
	muls r1, r0, r1
	adds r0, r3, #0
	adds r0, #0x90
	adds r0, r1, r0
	lsls r2, r2, #4
	ldr r0, [r0]
	adds r2, r0, r2
	adds r3, #0xbc
	b _080333E8
	.align 2, 0
_08033284: .4byte 0x0203E440
_08033288: .4byte gLoadedRoomLevel
_0803328C:
	ldr r3, _080332A8
	ldr r0, _080332AC
	ldrh r1, [r0]
	movs r0, #0xc4
	muls r1, r0, r1
	adds r0, r3, #0
	adds r0, #0x90
	adds r0, r1, r0
	lsls r2, r2, #4
	ldr r0, [r0]
	adds r2, r0, r2
	adds r3, #0xb8
	b _080333E8
	.align 2, 0
_080332A8: .4byte 0x0203E440
_080332AC: .4byte gLoadedRoomLevel
_080332B0:
	ldr r3, _080332CC
	ldr r0, _080332D0
	ldrh r1, [r0]
	movs r0, #0xc4
	muls r1, r0, r1
	adds r0, r3, #0
	adds r0, #0x90
	adds r0, r1, r0
	lsls r2, r2, #4
	ldr r0, [r0]
	adds r2, r0, r2
	adds r3, #0xb4
	b _080333E8
	.align 2, 0
_080332CC: .4byte 0x0203E440
_080332D0: .4byte gLoadedRoomLevel
_080332D4:
	ldr r3, _080332F0
	ldr r0, _080332F4
	ldrh r1, [r0]
	movs r0, #0xc4
	muls r1, r0, r1
	adds r0, r3, #0
	adds r0, #0x90
	adds r0, r1, r0
	lsls r2, r2, #4
	ldr r0, [r0]
	adds r2, r0, r2
	adds r3, #0xb0
	b _080333E8
	.align 2, 0
_080332F0: .4byte 0x0203E440
_080332F4: .4byte gLoadedRoomLevel
_080332F8:
	ldr r3, _08033314
	ldr r0, _08033318
	ldrh r1, [r0]
	movs r0, #0xc4
	muls r1, r0, r1
	adds r0, r3, #0
	adds r0, #0x90
	adds r0, r1, r0
	lsls r2, r2, #4
	ldr r0, [r0]
	adds r2, r0, r2
	adds r3, #0xac
	b _080333E8
	.align 2, 0
_08033314: .4byte 0x0203E440
_08033318: .4byte gLoadedRoomLevel
_0803331C:
	ldr r3, _08033338
	ldr r0, _0803333C
	ldrh r1, [r0]
	movs r0, #0xc4
	muls r1, r0, r1
	adds r0, r3, #0
	adds r0, #0x90
	adds r0, r1, r0
	lsls r2, r2, #4
	ldr r0, [r0]
	adds r2, r0, r2
	adds r3, #0xa0
	b _080333E8
	.align 2, 0
_08033338: .4byte 0x0203E440
_0803333C: .4byte gLoadedRoomLevel
_08033340:
	ldr r3, _0803335C
	ldr r0, _08033360
	ldrh r1, [r0]
	movs r0, #0xc4
	muls r1, r0, r1
	adds r0, r3, #0
	adds r0, #0x90
	adds r0, r1, r0
	lsls r2, r2, #4
	ldr r0, [r0]
	adds r2, r0, r2
	adds r3, #0xa4
	b _080333E8
	.align 2, 0
_0803335C: .4byte 0x0203E440
_08033360: .4byte gLoadedRoomLevel
_08033364:
	ldr r3, _08033380
	ldr r0, _08033384
	ldrh r1, [r0]
	movs r0, #0xc4
	muls r1, r0, r1
	adds r0, r3, #0
	adds r0, #0x90
	adds r0, r1, r0
	lsls r2, r2, #4
	ldr r0, [r0]
	adds r2, r0, r2
	adds r3, #0xa8
	b _080333E8
	.align 2, 0
_08033380: .4byte 0x0203E440
_08033384: .4byte gLoadedRoomLevel
_08033388:
	ldr r3, _080333A4
	ldr r0, _080333A8
	ldrh r1, [r0]
	movs r0, #0xc4
	muls r1, r0, r1
	adds r0, r3, #0
	adds r0, #0x90
	adds r0, r1, r0
	lsls r2, r2, #4
	ldr r0, [r0]
	adds r2, r0, r2
	adds r3, #0x94
	b _080333E8
	.align 2, 0
_080333A4: .4byte 0x0203E440
_080333A8: .4byte gLoadedRoomLevel
_080333AC:
	ldr r3, _080333C8
	ldr r0, _080333CC
	ldrh r1, [r0]
	movs r0, #0xc4
	muls r1, r0, r1
	adds r0, r3, #0
	adds r0, #0x90
	adds r0, r1, r0
	lsls r2, r2, #4
	ldr r0, [r0]
	adds r2, r0, r2
	adds r3, #0x98
	b _080333E8
	.align 2, 0
_080333C8: .4byte 0x0203E440
_080333CC: .4byte gLoadedRoomLevel
_080333D0:
	ldr r3, _080333FC
	ldr r0, _08033400
	ldrh r1, [r0]
	movs r0, #0xc4
	muls r1, r0, r1
	adds r0, r3, #0
	adds r0, #0x90
	adds r0, r1, r0
	lsls r2, r2, #4
	ldr r0, [r0]
	adds r2, r0, r2
	adds r3, #0x9c
_080333E8:
	adds r1, r1, r3
	ldr r0, [r1]
	adds r0, r0, r4
	ldrb r0, [r0]
	ldr r1, [r2, #0xc]
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrb r0, [r0, #1]
	b _08033406
	.align 2, 0
_080333FC: .4byte 0x0203E440
_08033400: .4byte gLoadedRoomLevel
_08033404:
	movs r0, #0
_08033406:
	pop {r4}
	pop {r1}
	bx r1

    .thumb
sub_803340C: @ 0x0803340C
	push {r4, r5, r6, r7, lr}
	ldr r3, _08033444
	ldr r2, _08033448
	ldrh r4, [r2]
	movs r2, #0xc4
	muls r2, r4, r2
	adds r3, #0x90
	adds r2, r2, r3
	lsls r0, r0, #4
	ldr r2, [r2]
	adds r4, r2, r0
	cmp r1, #0
	bne _08033452
	movs r5, #0
	ldrb r2, [r4]
	cmp r5, r2
	bge _0803351C
	adds r1, r2, #0
	ldr r2, [r4, #0xc]
_08033432:
	ldrb r0, [r2, #1]
	cmp r0, #0
	beq _0803344E
	adds r2, #8
	adds r5, #1
	cmp r5, r1
	blt _08033432
	b _0803351C
	.align 2, 0
_08033444: .4byte 0x0203E440
_08033448: .4byte gLoadedRoomLevel
_0803344C:
	strb r0, [r4, #4]
_0803344E:
	movs r0, #0
	b _0803351E
_08033452:
	movs r5, #0
	ldrb r2, [r4]
	cmp r5, r2
	bge _0803346C
	adds r3, r2, #0
	ldr r1, [r4, #0xc]
_0803345E:
	ldrb r0, [r1, #1]
	cmp r0, #0
	beq _0803344C
	adds r1, #8
	adds r5, #1
	cmp r5, r3
	blt _0803345E
_0803346C:
	movs r5, #0
	adds r3, r2, #0
	cmp r5, r3
	bge _080334E8
	ldr r6, _080334D0
	ldr r0, _080334D4
	adds r7, r6, r0
_0803347A:
	ldr r0, [r4, #0xc]
	lsls r1, r5, #3
	adds r1, r1, r0
	ldrb r0, [r1, #3]
	ldrb r1, [r1, #2]
	cmp r0, r1
	beq _080334E0
	movs r2, #0
	ldr r5, _080334D8
	cmp r2, r3
	bge _080334A2
	movs r3, #0
_08033492:
	ldr r1, [r4, #0xc]
	lsls r0, r2, #3
	adds r0, r0, r1
	strb r3, [r0, #1]
	adds r2, #1
	ldrb r1, [r4]
	cmp r2, r1
	blt _08033492
_080334A2:
	movs r0, #0
	strb r0, [r4, #4]
	strb r0, [r4, #1]
	ldrb r0, [r5]
	cmp r0, #0
	beq _0803344E
	movs r3, #0xb1
	lsls r3, r3, #3
	adds r0, r6, r3
	ldrh r0, [r0]
	ldr r2, _080334DC
	adds r3, #2
	adds r1, r6, r3
	ldrb r2, [r2]
	adds r1, r1, r2
	ldrb r1, [r1]
	ldr r2, [r7]
	movs r3, #0x80
	lsls r3, r3, #9
	adds r2, r2, r3
	bl audio_new_fx
	b _0803344E
	.align 2, 0
_080334D0: .4byte 0x080CE440
_080334D4: .4byte 0x0000058C
_080334D8: .4byte byte_203EA89
_080334DC: .4byte byte_203EA8C
_080334E0:
	adds r5, #1
	adds r3, r2, #0
	cmp r5, r3
	blt _0803347A
_080334E8:
	ldrb r0, [r4, #2]
	cmp r0, #0
	beq _0803351C
	ldrb r0, [r4, #4]
	cmp r0, #0
	bne _0803351C
	ldrh r0, [r4, #6]
	ldrh r1, [r4, #8]
	bl sub_80342CC
	cmp r0, #0
	bne _0803351C
	movs r0, #1
	strb r0, [r4, #4]
	ldr r1, _08033524
	ldr r0, _08033528
	ldrh r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrb r1, [r4, #2]
	ldr r0, [r0]
	lsls r1, r1, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	bl init_function
_0803351C:
	movs r0, #1
_0803351E:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08033524: .4byte 0x087E0228
_08033528: .4byte gLoadedRoomLevel

    .thumb
sub_803352C: @ 0x0803352C
	push {r4, lr}
	adds r4, r0, #0
	cmp r1, #0
	beq _08033560
	ldr r1, _08033554
	ldr r0, _08033558
	ldrh r3, [r0]
	lsls r2, r3, #2
	adds r2, r2, r1
	ldr r1, _0803355C
	movs r0, #0xc4
	muls r0, r3, r0
	adds r1, #0x90
	adds r0, r0, r1
	ldr r1, [r0]
	lsls r0, r4, #4
	adds r0, r0, r1
	ldrb r0, [r0, #2]
	b _0803357C
	.align 2, 0
_08033554: .4byte 0x087E0228
_08033558: .4byte gLoadedRoomLevel
_0803355C: .4byte 0x0203E440
_08033560:
	ldr r1, _0803358C
	ldr r0, _08033590
	ldrh r3, [r0]
	lsls r2, r3, #2
	adds r2, r2, r1
	ldr r1, _08033594
	movs r0, #0xc4
	muls r0, r3, r0
	adds r1, #0x90
	adds r0, r0, r1
	ldr r1, [r0]
	lsls r0, r4, #4
	adds r0, r0, r1
	ldrb r0, [r0, #3]
_0803357C:
	ldr r1, [r2]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0803358C: .4byte 0x087E0228
_08033590: .4byte gLoadedRoomLevel
_08033594: .4byte 0x0203E440

    .thumb
sub_08033598: @ 0x08033598
	push {r4, r5, r6, r7, lr}
	adds r6, r1, #0
	ldr r4, _080335C8
	ldr r5, _080335CC
	ldrh r3, [r5]
	movs r1, #0xc4
	muls r1, r3, r1
	adds r3, r4, #0
	adds r3, #0x90
	adds r1, r1, r3
	lsls r2, r2, #4
	ldr r1, [r1]
	adds r7, r1, r2
	movs r2, #0xff
	subs r0, #0x2e
	cmp r0, #0x43
	bls _080335BC
	b _0803377C
_080335BC:
	lsls r0, r0, #2
	ldr r1, _080335D0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080335C8: .4byte 0x0203E440
_080335CC: .4byte gLoadedRoomLevel
_080335D0: .4byte 0x080335D4
_080335D4: @ jump table
	.4byte _08033750 @ case 0
	.4byte _0803377C @ case 1
	.4byte _0803377C @ case 2
	.4byte _0803377C @ case 3
	.4byte _0803377C @ case 4
	.4byte _0803377C @ case 5
	.4byte _0803375C @ case 6
	.4byte _0803377C @ case 7
	.4byte _0803377C @ case 8
	.4byte _0803377C @ case 9
	.4byte _0803377C @ case 10
	.4byte _0803377C @ case 11
	.4byte _0803377C @ case 12
	.4byte _0803377C @ case 13
	.4byte _0803377C @ case 14
	.4byte _08033768 @ case 15
	.4byte _0803377C @ case 16
	.4byte _0803377C @ case 17
	.4byte _0803377C @ case 18
	.4byte _0803377C @ case 19
	.4byte _0803372C @ case 20
	.4byte _08033738 @ case 21
	.4byte _08033744 @ case 22
	.4byte _0803377C @ case 23
	.4byte _0803377C @ case 24
	.4byte _0803377C @ case 25
	.4byte _0803377C @ case 26
	.4byte _0803377C @ case 27
	.4byte _0803377C @ case 28
	.4byte _0803377C @ case 29
	.4byte _0803377C @ case 30
	.4byte _0803377C @ case 31
	.4byte _0803377C @ case 32
	.4byte _08033720 @ case 33
	.4byte _0803377C @ case 34
	.4byte _0803377C @ case 35
	.4byte _08033714 @ case 36
	.4byte _0803377C @ case 37
	.4byte _0803377C @ case 38
	.4byte _0803377C @ case 39
	.4byte _080336FC @ case 40
	.4byte _08033708 @ case 41
	.4byte _0803377C @ case 42
	.4byte _0803377C @ case 43
	.4byte _0803377C @ case 44
	.4byte _0803377C @ case 45
	.4byte _0803377C @ case 46
	.4byte _0803377C @ case 47
	.4byte _0803377C @ case 48
	.4byte _0803377C @ case 49
	.4byte _0803377C @ case 50
	.4byte _0803377C @ case 51
	.4byte _0803377C @ case 52
	.4byte _0803377C @ case 53
	.4byte _0803377C @ case 54
	.4byte _0803377C @ case 55
	.4byte _0803377C @ case 56
	.4byte _0803377C @ case 57
	.4byte _0803377C @ case 58
	.4byte _0803377C @ case 59
	.4byte _0803377C @ case 60
	.4byte _0803377C @ case 61
	.4byte _0803377C @ case 62
	.4byte _0803377C @ case 63
	.4byte _0803377C @ case 64
	.4byte _0803377C @ case 65
	.4byte _080336F0 @ case 66
	.4byte _080336E4 @ case 67
_080336E4:
	ldrh r1, [r5]
	movs r0, #0xc4
	muls r0, r1, r0
	adds r1, r4, #0
	adds r1, #0xc0
	b _08033772
_080336F0:
	ldrh r1, [r5]
	movs r0, #0xc4
	muls r0, r1, r0
	adds r1, r4, #0
	adds r1, #0xbc
	b _08033772
_080336FC:
	ldrh r1, [r5]
	movs r0, #0xc4
	muls r0, r1, r0
	adds r1, r4, #0
	adds r1, #0xb8
	b _08033772
_08033708:
	ldrh r1, [r5]
	movs r0, #0xc4
	muls r0, r1, r0
	adds r1, r4, #0
	adds r1, #0xb4
	b _08033772
_08033714:
	ldrh r1, [r5]
	movs r0, #0xc4
	muls r0, r1, r0
	adds r1, r4, #0
	adds r1, #0xb0
	b _08033772
_08033720:
	ldrh r1, [r5]
	movs r0, #0xc4
	muls r0, r1, r0
	adds r1, r4, #0
	adds r1, #0xac
	b _08033772
_0803372C:
	ldrh r1, [r5]
	movs r0, #0xc4
	muls r0, r1, r0
	adds r1, r4, #0
	adds r1, #0xa0
	b _08033772
_08033738:
	ldrh r1, [r5]
	movs r0, #0xc4
	muls r0, r1, r0
	adds r1, r4, #0
	adds r1, #0xa4
	b _08033772
_08033744:
	ldrh r1, [r5]
	movs r0, #0xc4
	muls r0, r1, r0
	adds r1, r4, #0
	adds r1, #0xa8
	b _08033772
_08033750:
	ldrh r1, [r5]
	movs r0, #0xc4
	muls r0, r1, r0
	adds r1, r4, #0
	adds r1, #0x94
	b _08033772
_0803375C:
	ldrh r1, [r5]
	movs r0, #0xc4
	muls r0, r1, r0
	adds r1, r4, #0
	adds r1, #0x98
	b _08033772
_08033768:
	ldrh r1, [r5]
	movs r0, #0xc4
	muls r0, r1, r0
	adds r1, r4, #0
	adds r1, #0x9c
_08033772:
	adds r0, r0, r1
	ldr r0, [r0]
	adds r0, r0, r6
	ldrb r2, [r0]
	b _08033780
_0803377C:
	.2byte 0xEE00, 0xEE00
_08033780:
	ldrb r0, [r7]
	cmp r2, r0
	blt _0803378A
	.2byte 0xEE00, 0xEE00
_0803378A:
	ldr r0, [r7, #0xc]
	lsls r1, r2, #3
	adds r2, r1, r0
	ldrb r0, [r2]
	cmp r0, #1
	bne _08033814
	ldrh r6, [r2, #6]
	movs r4, #6
	ldrsh r3, [r2, r4]
	cmp r3, #0
	blt _08033814
	ldr r0, _080337B0
	ldrb r0, [r0]
	cmp r0, #0
	bne _08033814
	cmp r3, #0
	bne _080337B4
_080337AC:
	movs r0, #1
	b _08033816
	.align 2, 0
_080337B0: .4byte 0x0203E137
_080337B4:
	subs r0, r6, #1
	movs r3, #0
	strh r0, [r2, #6]
	ldr r0, [r7, #0xc]
	adds r1, r1, r0
	movs r2, #6
	ldrsh r0, [r1, r2]
	cmp r0, #0
	bne _08033814
	strb r3, [r1, #1]
	ldrb r0, [r7, #1]
	subs r0, #1
	strb r0, [r7, #1]
	strb r3, [r7, #4]
	ldr r0, _08033800
	ldrb r0, [r0]
	cmp r0, #0
	beq _080337AC
	ldr r2, _08033804
	movs r3, #0xa9
	lsls r3, r3, #3
	adds r0, r2, r3
	ldrh r0, [r0]
	ldr r3, _08033808
	ldr r4, _0803380C
	adds r1, r2, r4
	ldrb r3, [r3]
	adds r1, r1, r3
	ldrb r1, [r1]
	ldr r3, _08033810
	adds r2, r2, r3
	ldr r2, [r2]
	movs r4, #0x80
	lsls r4, r4, #9
	adds r2, r2, r4
	bl audio_new_fx
	b _080337AC
	.align 2, 0
_08033800: .4byte byte_203EA89
_08033804: .4byte 0x080CE440
_08033808: .4byte byte_203EA8C
_0803380C: .4byte 0x0000054A
_08033810: .4byte 0x0000054C
_08033814:
	movs r0, #0
_08033816:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

    .thumb
sub_0803381C: @ 0x0803381C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r6, r1, #0
	mov sb, r2
	movs r7, #0
	ldr r3, _08033858
	ldr r4, _0803385C
	ldrh r2, [r4]
	movs r1, #0xc4
	muls r1, r2, r1
	adds r2, r3, #0
	adds r2, #0x90
	adds r1, r1, r2
	mov r5, sb
	lsls r2, r5, #4
	ldr r1, [r1]
	adds r5, r1, r2
	movs r2, #0xff
	subs r0, #0x2e
	cmp r0, #0x43
	bls _0803384C
	b _08033A7C
_0803384C:
	lsls r0, r0, #2
	ldr r1, _08033860
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08033858: .4byte 0x0203E440
_0803385C: .4byte gLoadedRoomLevel
_08033860: .4byte 0x08033864
_08033864: @ jump table
	.4byte _08033A3A @ case 0
	.4byte _08033A7C @ case 1
	.4byte _08033A7C @ case 2
	.4byte _08033A7C @ case 3
	.4byte _08033A7C @ case 4
	.4byte _08033A7C @ case 5
	.4byte _08033A50 @ case 6
	.4byte _08033A7C @ case 7
	.4byte _08033A7C @ case 8
	.4byte _08033A7C @ case 9
	.4byte _08033A7C @ case 10
	.4byte _08033A7C @ case 11
	.4byte _08033A7C @ case 12
	.4byte _08033A7C @ case 13
	.4byte _08033A7C @ case 14
	.4byte _08033A66 @ case 15
	.4byte _08033A7C @ case 16
	.4byte _08033A7C @ case 17
	.4byte _08033A7C @ case 18
	.4byte _08033A7C @ case 19
	.4byte _080339F8 @ case 20
	.4byte _08033A0E @ case 21
	.4byte _08033A24 @ case 22
	.4byte _08033A7C @ case 23
	.4byte _08033A7C @ case 24
	.4byte _08033A7C @ case 25
	.4byte _08033A7C @ case 26
	.4byte _08033A7C @ case 27
	.4byte _08033A7C @ case 28
	.4byte _08033A7C @ case 29
	.4byte _08033A7C @ case 30
	.4byte _08033A7C @ case 31
	.4byte _08033A7C @ case 32
	.4byte _080339E2 @ case 33
	.4byte _08033A7C @ case 34
	.4byte _08033A7C @ case 35
	.4byte _080339CC @ case 36
	.4byte _08033A7C @ case 37
	.4byte _08033A7C @ case 38
	.4byte _08033A7C @ case 39
	.4byte _080339A0 @ case 40
	.4byte _080339B6 @ case 41
	.4byte _08033A7C @ case 42
	.4byte _08033A7C @ case 43
	.4byte _08033A7C @ case 44
	.4byte _08033A7C @ case 45
	.4byte _08033A7C @ case 46
	.4byte _08033A7C @ case 47
	.4byte _08033A7C @ case 48
	.4byte _08033A7C @ case 49
	.4byte _08033A7C @ case 50
	.4byte _08033A7C @ case 51
	.4byte _08033A7C @ case 52
	.4byte _08033A7C @ case 53
	.4byte _08033A7C @ case 54
	.4byte _08033A7C @ case 55
	.4byte _08033A7C @ case 56
	.4byte _08033A7C @ case 57
	.4byte _08033A7C @ case 58
	.4byte _08033A7C @ case 59
	.4byte _08033A7C @ case 60
	.4byte _08033A7C @ case 61
	.4byte _08033A7C @ case 62
	.4byte _08033A7C @ case 63
	.4byte _08033A7C @ case 64
	.4byte _08033A7C @ case 65
	.4byte _0803398A @ case 66
	.4byte _08033974 @ case 67
_08033974:
	ldrh r1, [r4]
	movs r0, #0xc4
	muls r0, r1, r0
	adds r1, r3, #0
	adds r1, #0xc0
	adds r0, r0, r1
	ldr r0, [r0]
	adds r0, r0, r6
	ldrb r2, [r0]
	movs r7, #0x9d
	b _08033A80
_0803398A:
	ldrh r1, [r4]
	movs r0, #0xc4
	muls r0, r1, r0
	adds r1, r3, #0
	adds r1, #0xbc
	adds r0, r0, r1
	ldr r0, [r0]
	adds r0, r0, r6
	ldrb r2, [r0]
	movs r7, #0x9e
	b _08033A80
_080339A0:
	ldrh r1, [r4]
	movs r0, #0xc4
	muls r0, r1, r0
	adds r1, r3, #0
	adds r1, #0xb8
	adds r0, r0, r1
	ldr r0, [r0]
	adds r0, r0, r6
	ldrb r2, [r0]
	movs r7, #0x9f
	b _08033A80
_080339B6:
	ldrh r1, [r4]
	movs r0, #0xc4
	muls r0, r1, r0
	adds r1, r3, #0
	adds r1, #0xb4
	adds r0, r0, r1
	ldr r0, [r0]
	adds r0, r0, r6
	ldrb r2, [r0]
	movs r7, #0xa0
	b _08033A80
_080339CC:
	ldrh r1, [r4]
	movs r0, #0xc4
	muls r0, r1, r0
	adds r1, r3, #0
	adds r1, #0xb0
	adds r0, r0, r1
	ldr r0, [r0]
	adds r0, r0, r6
	ldrb r2, [r0]
	movs r7, #0xa1
	b _08033A80
_080339E2:
	ldrh r1, [r4]
	movs r0, #0xc4
	muls r0, r1, r0
	adds r1, r3, #0
	adds r1, #0xac
	adds r0, r0, r1
	ldr r0, [r0]
	adds r0, r0, r6
	ldrb r2, [r0]
	movs r7, #0xa2
	b _08033A80
_080339F8:
	ldrh r1, [r4]
	movs r0, #0xc4
	muls r0, r1, r0
	adds r1, r3, #0
	adds r1, #0xa0
	adds r0, r0, r1
	ldr r0, [r0]
	adds r0, r0, r6
	ldrb r2, [r0]
	movs r7, #0xa3
	b _08033A80
_08033A0E:
	ldrh r1, [r4]
	movs r0, #0xc4
	muls r0, r1, r0
	adds r1, r3, #0
	adds r1, #0xa4
	adds r0, r0, r1
	ldr r0, [r0]
	adds r0, r0, r6
	ldrb r2, [r0]
	movs r7, #0xa4
	b _08033A80
_08033A24:
	ldrh r1, [r4]
	movs r0, #0xc4
	muls r0, r1, r0
	adds r1, r3, #0
	adds r1, #0xa8
	adds r0, r0, r1
	ldr r0, [r0]
	adds r0, r0, r6
	ldrb r2, [r0]
	movs r7, #0xa5
	b _08033A80
_08033A3A:
	ldrh r1, [r4]
	movs r0, #0xc4
	muls r0, r1, r0
	adds r1, r3, #0
	adds r1, #0x94
	adds r0, r0, r1
	ldr r0, [r0]
	adds r0, r0, r6
	ldrb r2, [r0]
	movs r7, #0xa6
	b _08033A80
_08033A50:
	ldrh r1, [r4]
	movs r0, #0xc4
	muls r0, r1, r0
	adds r1, r3, #0
	adds r1, #0x98
	adds r0, r0, r1
	ldr r0, [r0]
	adds r0, r0, r6
	ldrb r2, [r0]
	movs r7, #0xa7
	b _08033A80
_08033A66:
	ldrh r1, [r4]
	movs r0, #0xc4
	muls r0, r1, r0
	adds r1, r3, #0
	adds r1, #0x9c
	adds r0, r0, r1
	ldr r0, [r0]
	adds r0, r0, r6
	ldrb r2, [r0]
	movs r7, #0xa8
	b _08033A80
_08033A7C:
	.2byte 0xEE00, 0xEE00
_08033A80:
	ldrb r0, [r5]
	cmp r2, r0
	blt _08033A8A
	.2byte 0xEE00, 0xEE00
_08033A8A:
	ldr r0, [r5, #0xc]
	lsls r1, r2, #3
	adds r2, r1, r0
	ldrb r6, [r2]
	mov r8, r1
	cmp r6, #1
	beq _08033AC4
	cmp r6, #1
	bgt _08033AA2
	cmp r6, #0
	beq _08033AAA
	b _08033CBC
_08033AA2:
	cmp r6, #2
	bne _08033AA8
	b _08033BB6
_08033AA8:
	b _08033CBC
_08033AAA:
	ldrb r0, [r2, #1]
	cmp r0, #0
	beq _08033AB2
	b _08033C3E
_08033AB2:
	movs r0, #1
	strb r0, [r2, #1]
	ldr r0, [r5, #0xc]
	add r0, r8
	ldrb r1, [r5, #1]
	strb r1, [r0, #3]
	ldrb r0, [r5, #1]
	adds r0, #1
	b _08033C10
_08033AC4:
	ldrb r0, [r2, #1]
	cmp r0, #0
	beq _08033ACC
	b _08033CC0
_08033ACC:
	strb r6, [r2, #1]
	ldr r0, [r5, #0xc]
	add r0, r8
	ldrb r1, [r5, #1]
	strb r1, [r0, #3]
	ldrb r0, [r5, #1]
	adds r0, #1
	strb r0, [r5, #1]
	ldr r0, _08033B68
	ldrb r0, [r0]
	cmp r0, #0
	beq _08033B08
	ldr r3, _08033B6C
	lsls r4, r7, #3
	adds r0, r4, r3
	ldrh r0, [r0]
	ldr r1, _08033B70
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
_08033B08:
	mov r0, sb
	movs r1, #0
	bl sub_803340C
	cmp r0, #0
	bne _08033B16
	b _08033CC0
_08033B16:
	ldrb r0, [r5, #3]
	cmp r0, #0
	beq _08033B96
	ldrh r0, [r5, #6]
	ldrh r1, [r5, #8]
	bl sub_80342CC
	cmp r0, #0
	bne _08033B8C
	ldrb r1, [r5, #4]
	cmp r1, #0
	beq _08033B30
	b _08033CC0
_08033B30:
	ldr r0, _08033B74
	strb r1, [r0]
	ldr r1, _08033B78
	ldr r2, _08033B7C
	ldrh r0, [r2]
	str r0, [r1]
	ldr r1, _08033B80
	ldr r0, [r5, #0xc]
	add r0, r8
	str r0, [r1]
	ldr r1, _08033B84
	strh r1, [r0, #6]
	strb r6, [r5, #4]
	ldr r1, _08033B88
	ldrh r0, [r2]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrb r1, [r5, #3]
	ldr r0, [r0]
	lsls r1, r1, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	bl init_function
	movs r0, #0xa8
	lsls r0, r0, #1
	movs r1, #0
	b _08033C8E
	.align 2, 0
_08033B68: .4byte byte_203EA89
_08033B6C: .4byte 0x080CE440
_08033B70: .4byte byte_203EA8C
_08033B74: .4byte 0x0203E138
_08033B78: .4byte 0x0203E13C
_08033B7C: .4byte gLoadedRoomLevel
_08033B80: .4byte 0x0203E998
_08033B84: .4byte 0x0000FFFF
_08033B88: .4byte 0x087E0228
_08033B8C:
	ldr r0, [r5, #0xc]
	add r0, r8
	ldrh r1, [r0, #4]
	strh r1, [r0, #6]
	b _08033CC0
_08033B96:
	ldr r0, [r5, #0xc]
	add r0, r8
	ldrh r1, [r0, #4]
	strh r1, [r0, #6]
	ldr r0, [r5, #0xc]
	mov r5, r8
	adds r1, r5, r0
	movs r2, #6
	ldrsh r0, [r1, r2]
	cmp r0, #0x3b
	bgt _08033BAE
	b _08033CC0
_08033BAE:
	movs r1, #0
	bl sub_80630C0
	b _08033CC0
_08033BB6:
	ldrb r0, [r2, #1]
	cmp r0, #0
	bne _08033C08
	movs r0, #1
	strb r0, [r2, #1]
	ldr r0, [r5, #0xc]
	add r0, r8
	ldrb r1, [r5, #1]
	strb r1, [r0, #3]
	ldrb r0, [r5, #1]
	adds r0, #1
	strb r0, [r5, #1]
	ldr r0, _08033BFC
	ldrb r0, [r0]
	cmp r0, #0
	beq _08033C3E
	ldr r3, _08033C00
	lsls r4, r7, #3
	adds r0, r4, r3
	ldrh r0, [r0]
	ldr r1, _08033C04
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
	b _08033C3E
	.align 2, 0
_08033BFC: .4byte byte_203EA89
_08033C00: .4byte 0x080CE440
_08033C04: .4byte byte_203EA8C
_08033C08:
	movs r0, #0
	strb r0, [r2, #1]
	ldrb r0, [r5, #1]
	subs r0, #1
_08033C10:
	strb r0, [r5, #1]
	ldr r0, _08033C98
	ldrb r0, [r0]
	cmp r0, #0
	beq _08033C3E
	ldr r3, _08033C9C
	lsls r4, r7, #3
	adds r0, r4, r3
	ldrh r0, [r0]
	ldr r1, _08033CA0
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
_08033C3E:
	ldrb r0, [r5, #3]
	cmp r0, #0
	beq _08033CC0
	mov r0, sb
	movs r1, #0
	bl sub_803340C
	cmp r0, #0
	beq _08033CC0
	ldrb r2, [r5, #4]
	cmp r2, #0
	bne _08033CC0
	ldr r0, _08033CA4
	str r5, [r0]
	ldr r1, _08033CA8
	ldr r0, [r5, #0xc]
	add r0, r8
	str r0, [r1]
	ldr r0, _08033CAC
	strb r2, [r0]
	ldr r1, _08033CB0
	ldr r2, _08033CB4
	ldrh r0, [r2]
	str r0, [r1]
	movs r0, #1
	strb r0, [r5, #4]
	ldr r1, _08033CB8
	ldrh r0, [r2]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrb r1, [r5, #3]
	ldr r0, [r0]
	lsls r1, r1, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	bl init_function
	movs r0, #0xd0
	lsls r0, r0, #1
	adds r1, r7, #0
_08033C8E:
	movs r2, #0
	movs r3, #0
	bl sub_8034460
	b _08033CC0
	.align 2, 0
_08033C98: .4byte byte_203EA89
_08033C9C: .4byte 0x080CE440
_08033CA0: .4byte byte_203EA8C
_08033CA4: .4byte 0x0203E99C
_08033CA8: .4byte 0x0203E998
_08033CAC: .4byte 0x0203E138
_08033CB0: .4byte 0x0203E13C
_08033CB4: .4byte gLoadedRoomLevel
_08033CB8: .4byte 0x087E0228
_08033CBC:
	.2byte 0xEE00, 0xEE00
_08033CC0:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

    .thumb
sub_8033CCC: @ 0x08033CCC
	push {lr}
	adds r2, r0, #0
	ldrh r0, [r2]
	subs r0, #0x77
	cmp r0, #0x1d
	bls _08033CDA
	b _08033FA2
_08033CDA:
	lsls r0, r0, #2
	ldr r1, _08033CE4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08033CE4: .4byte 0x08033CE8
_08033CE8: @ jump table
	.4byte _08033D68 @ case 0
	.4byte _08033D78 @ case 1
	.4byte _08033DB8 @ case 2
	.4byte _08033FA2 @ case 3
	.4byte _08033DE4 @ case 4
	.4byte _08033E14 @ case 5
	.4byte _08033FA2 @ case 6
	.4byte _08033E3C @ case 7
	.4byte _08033FA2 @ case 8
	.4byte _08033E44 @ case 9
	.4byte _08033E6C @ case 10
	.4byte _08033E8E @ case 11
	.4byte _08033EC0 @ case 12
	.4byte _08033EE8 @ case 13
	.4byte _08033F04 @ case 14
	.4byte _08033F20 @ case 15
	.4byte _08033F24 @ case 16
	.4byte _08033F46 @ case 17
	.4byte _08033F90 @ case 18
	.4byte _08033FA2 @ case 19
	.4byte _08033FA2 @ case 20
	.4byte _08033D78 @ case 21
	.4byte _08033E8E @ case 22
	.4byte _08033FA2 @ case 23
	.4byte _08033FA2 @ case 24
	.4byte _08033FA2 @ case 25
	.4byte _08033FA2 @ case 26
	.4byte _08033FA2 @ case 27
	.4byte _08033FA2 @ case 28
	.4byte _08033D60 @ case 29
_08033D60:
	ldr r0, _08033D64
	b _08033F94
	.align 2, 0
_08033D64: .4byte 0x000001A1
_08033D68:
	ldr r0, _08033D74
	ldrb r0, [r0, #6]
_08033D6C:
	cmp r0, #0
	beq _08033D72
	b _08033FA2
_08033D72:
	b _08033F9E
	.align 2, 0
_08033D74: .4byte gGameStatus
_08033D78:
	movs r0, #0xeb
	movs r1, #0
	bl sub_80342CC
	cmp r0, #0
	bne _08033D86
	b _08033FA2
_08033D86:
	ldr r3, _08033DA8
	ldr r1, _08033DAC
	ldrb r0, [r3]
	ldrb r1, [r1]
	cmp r0, r1
	bne _08033D94
	b _08033F9E
_08033D94:
	ldr r2, _08033DB0
	ldr r1, _08033DB4
	adds r0, r0, r1
	ldrb r1, [r2, #1]
	ldrb r0, [r0]
	cmp r1, r0
	blo _08033DA4
	b _08033FA2
_08033DA4:
	b _08033F9E
	.align 2, 0
_08033DA8: .4byte 0x0200107C
_08033DAC: .4byte 0x0200107D
_08033DB0: .4byte gGameStatus
_08033DB4: .4byte 0x080CC8E4
_08033DB8:
	movs r0, #0xec
	movs r1, #0
	bl sub_80342CC
	cmp r0, #0
	bne _08033DC6
	b _08033FA2
_08033DC6:
	movs r0, #0xf5
	movs r1, #0
	bl sub_80342CC
	cmp r0, #0
	beq _08033DD4
	b _08033F9E
_08033DD4:
	ldr r0, _08033DE0
	movs r1, #0
	bl sub_80342CC
	b _08033D6C
	.align 2, 0
_08033DE0: .4byte 0x00000175
_08033DE4:
	ldr r0, _08033E08
	ldrb r3, [r2, #0xc]
	adds r0, r3, r0
	ldrb r0, [r0]
	cmp r0, #0
	beq _08033DF2
	b _08033F9E
_08033DF2:
	ldr r0, _08033E0C
	ldrh r2, [r0, #0xc]
	ldr r1, _08033E10
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r2, r0
	blt _08033E04
	b _08033FA2
_08033E04:
	b _08033F9E
	.align 2, 0
_08033E08: .4byte 0x0203E0FC
_08033E0C: .4byte gGameStatus
_08033E10: .4byte 0x080CEFA4
_08033E14:
	ldr r0, _08033E38
	movs r1, #0
	bl sub_80342CC
	cmp r0, #0
	bne _08033E22
	b _08033FA2
_08033E22:
	movs r0, #0xda
	movs r1, #0
	bl sub_80342CC
	cmp r0, #0
	bne _08033E30
	b _08033F9E
_08033E30:
	movs r0, #0x82
	lsls r0, r0, #1
	b _08033F94
	.align 2, 0
_08033E38: .4byte 0x0000017F
_08033E3C:
	ldr r0, _08033E40
	b _08033F94
	.align 2, 0
_08033E40: .4byte 0x00000179
_08033E44:
	ldr r0, _08033E68
	movs r1, #0
	bl sub_80342CC
	cmp r0, #0
	bne _08033E52
	b _08033FA2
_08033E52:
	movs r0, #0x86
	lsls r0, r0, #1
	movs r1, #0
	bl sub_80342CC
	cmp r0, #0
	bne _08033E62
	b _08033F9E
_08033E62:
	movs r0, #0x85
	lsls r0, r0, #1
	b _08033F94
	.align 2, 0
_08033E68: .4byte 0x00000177
_08033E6C:
	movs r0, #0xe0
	movs r1, #0
	bl sub_80342CC
	cmp r0, #0
	bne _08033E7A
	b _08033FA2
_08033E7A:
	movs r0, #0xe1
	movs r1, #0
	bl sub_80342CC
	cmp r0, #0
	bne _08033E88
	b _08033F9E
_08033E88:
	movs r0, #0x83
	lsls r0, r0, #1
	b _08033F94
_08033E8E:
	ldr r3, _08033EB0
	ldr r1, _08033EB4
	ldrb r0, [r3]
	ldrb r1, [r1]
	cmp r0, r1
	bne _08033E9C
	b _08033F9E
_08033E9C:
	ldr r2, _08033EB8
	ldr r1, _08033EBC
	adds r0, r0, r1
	ldrb r1, [r2]
	ldrb r0, [r0]
	cmp r1, r0
	blo _08033F9E
	movs r0, #0x2a
	b _08033F94
	.align 2, 0
_08033EB0: .4byte 0x0200107E
_08033EB4: .4byte 0x0200107F
_08033EB8: .4byte gGameStatus
_08033EBC: .4byte 0x080CC8EC
_08033EC0:
	movs r0, #0xe9
	movs r1, #0
	bl sub_80342CC
	cmp r0, #0
	beq _08033FA2
	movs r0, #0x37
	movs r1, #0
	bl sub_80342CC
	cmp r0, #0
	beq _08033F9E
	movs r0, #0x38
	movs r1, #0
	bl sub_80342CC
	cmp r0, #0
	beq _08033F9E
	movs r0, #0xf6
	b _08033F94
_08033EE8:
	movs r0, #0xe8
	movs r1, #0
	bl sub_80342CC
	cmp r0, #0
	beq _08033FA2
	movs r0, #0xea
	movs r1, #0
	bl sub_80342CC
	cmp r0, #0
	beq _08033F9E
	movs r0, #0x37
	b _08033F94
_08033F04:
	movs r0, #0xe7
	movs r1, #0
	bl sub_80342CC
	cmp r0, #0
	beq _08033FA2
	movs r0, #0xe6
	movs r1, #0
	bl sub_80342CC
	cmp r0, #0
	beq _08033F9E
	movs r0, #0x38
	b _08033F94
_08033F20:
	movs r0, #0xe6
	b _08033F94
_08033F24:
	movs r0, #0xf0
	movs r1, #0
	bl sub_80342CC
	cmp r0, #0
	beq _08033FA2
	movs r0, #0xef
	movs r1, #0
	bl sub_80342CC
	cmp r0, #0
	beq _08033F9E
	movs r0, #0xf2
	movs r1, #0
	bl sub_80342CC
	b _08033D6C
_08033F46:
	movs r0, #0x89
	lsls r0, r0, #1
	movs r1, #0
	bl sub_80342CC
	cmp r0, #0
	beq _08033FA2
	ldr r0, _08033F80
	ldr r1, _08033F84
	ldrh r3, [r1]
	adds r0, r3, r0
	ldrb r0, [r0]
	cmp r0, #0
	beq _08033FA2
	ldr r1, _08033F88
	adds r1, r3, r1
	ldr r2, _08033F8C
	lsls r0, r3, #2
	adds r0, r0, r3
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrb r1, [r1]
	ldrb r0, [r0, #5]
	cmp r1, r0
	bne _08033F9E
	movs r0, #0x88
	lsls r0, r0, #1
	b _08033F94
	.align 2, 0
_08033F80: .4byte 0x0203E11C
_08033F84: .4byte gLoadedRoomLevel
_08033F88: .4byte 0x0203E116
_08033F8C: .4byte 0x080CC84C
_08033F90:
	movs r0, #0xd1
	lsls r0, r0, #1
_08033F94:
	movs r1, #0
	bl sub_80342CC
	cmp r0, #0
	beq _08033FA2
_08033F9E:
	movs r0, #1
	b _08033FA4
_08033FA2:
	movs r0, #0
_08033FA4:
	pop {r1}
	bx r1

    .thumb
sub_8033FA8: @ 0x08033FA8
	push {r4, r5, r6, r7, lr}
	adds r6, r1, #0
	adds r4, r2, #0
	adds r5, r3, #0
	subs r0, #0x78
	cmp r0, #0x15
	bls _08033FB8
	b _080342C6
_08033FB8:
	lsls r0, r0, #2
	ldr r1, _08033FC4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08033FC4: .4byte 0x08033FC8
_08033FC8: @ jump table
	.4byte _08034020 @ case 0
	.4byte _080340A4 @ case 1
	.4byte _080342C6 @ case 2
	.4byte _080340E8 @ case 3
	.4byte _08034136 @ case 4
	.4byte _080342C6 @ case 5
	.4byte _080342C6 @ case 6
	.4byte _080342C6 @ case 7
	.4byte _0803417C @ case 8
	.4byte _080341C0 @ case 9
	.4byte _080341FE @ case 10
	.4byte _080342C6 @ case 11
	.4byte _080342C6 @ case 12
	.4byte _080342C6 @ case 13
	.4byte _080342C6 @ case 14
	.4byte _08034246 @ case 15
	.4byte _08034282 @ case 16
	.4byte _080342C6 @ case 17
	.4byte _080342C6 @ case 18
	.4byte _080342C6 @ case 19
	.4byte _08034020 @ case 20
	.4byte _080341FE @ case 21
_08034020:
	cmp r4, #0
	beq _08034098
	ldrb r0, [r5]
	cmp r0, #0
	beq _08034036
	movs r0, #0x28
	bl sub_080420E8
	cmp r0, #0
	beq _08034036
	b _080342C6
_08034036:
	ldr r0, _08034088
	ldr r4, _0803408C
	ldrb r1, [r0]
	adds r6, r0, #0
	ldrb r0, [r4]
	cmp r1, r0
	bne _08034046
	b _080342C6
_08034046:
	ldrb r2, [r6]
	ldr r0, _08034090
	ldr r3, _08034094
	adds r1, r2, r3
	ldrb r0, [r0, #1]
	adds r7, r3, #0
	ldrb r1, [r1]
	cmp r0, r1
	blo _08034070
	ldrb r1, [r4]
	cmp r2, r1
	beq _08034070
	adds r1, r0, #0
_08034060:
	adds r2, #1
	adds r0, r2, r3
	ldrb r0, [r0]
	cmp r1, r0
	blo _08034070
	ldrb r0, [r4]
	cmp r2, r0
	bne _08034060
_08034070:
	ldrb r6, [r6]
	cmp r2, r6
	ble _08034078
	subs r2, #1
_08034078:
	adds r0, r2, r7
	ldrb r1, [r0]
	movs r0, #0x28
	bl sub_08040204
	movs r0, #0x28
	b _080342AE
	.align 2, 0
_08034088: .4byte 0x0200107C
_0803408C: .4byte 0x0200107D
_08034090: .4byte gGameStatus
_08034094: .4byte 0x080CC8E4
_08034098:
	ldrb r0, [r5]
	cmp r0, #0
	bne _080340A0
	b _080342C6
_080340A0:
	movs r0, #0x28
	b _080342C0
_080340A4:
	cmp r4, #0
	beq _080340DC
	ldrb r0, [r5]
	cmp r0, #0
	beq _080340BA
	movs r0, #0x2c
	bl sub_080420E8
	cmp r0, #0
	beq _080340BA
	b _080342C6
_080340BA:
	movs r0, #0xf5
	movs r1, #0
	bl sub_80342CC
	cmp r0, #0
	beq _080340C8
	b _080342C6
_080340C8:
	ldr r0, _080340D8
	ldrb r1, [r0, #0x1d]
	movs r0, #0x2c
	bl sub_08040204
	movs r0, #0x2c
	b _080342AE
	.align 2, 0
_080340D8: .4byte 0x080CC8C4
_080340DC:
	ldrb r0, [r5]
	cmp r0, #0
	bne _080340E4
	b _080342C6
_080340E4:
	movs r0, #0x2c
	b _080342C0
_080340E8:
	cmp r4, #0
	beq _0803412A
	movs r0, #0x27
	bl sub_080420E8
	cmp r0, #0
	bne _08034124
	ldrb r0, [r5]
	cmp r0, #0
	beq _080340FE
	b _080342C6
_080340FE:
	ldr r0, _0803411C
	adds r0, r6, r0
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803410A
	b _080342C6
_0803410A:
	ldr r1, _08034120
	lsls r0, r6, #2
	adds r0, r0, r1
	ldr r1, [r0]
	movs r0, #0x27
	bl sub_08040204
	movs r0, #0x27
	b _080342AE
	.align 2, 0
_0803411C: .4byte 0x0203E0FC
_08034120: .4byte 0x080CEFA4
_08034124:
	bl sub_8040094
	b _080342C6
_0803412A:
	ldrb r0, [r5]
	cmp r0, #0
	bne _08034132
	b _080342C6
_08034132:
	movs r0, #0x27
	b _080342C0
_08034136:
	cmp r4, #0
	beq _08034170
	ldrb r0, [r5]
	cmp r0, #0
	beq _0803414C
	movs r0, #0x2d
	bl sub_080420E8
	cmp r0, #0
	beq _0803414C
	b _080342C6
_0803414C:
	movs r0, #0x82
	lsls r0, r0, #1
	movs r1, #0
	bl sub_80342CC
	cmp r0, #0
	beq _0803415C
	b _080342C6
_0803415C:
	ldr r0, _0803416C
	ldrb r1, [r0, #0x18]
	movs r0, #0x2d
	bl sub_08040204
	movs r0, #0x2d
	b _080342AE
	.align 2, 0
_0803416C: .4byte 0x080CC8C4
_08034170:
	ldrb r0, [r5]
	cmp r0, #0
	bne _08034178
	b _080342C6
_08034178:
	movs r0, #0x2d
	b _080342C0
_0803417C:
	cmp r4, #0
	beq _080341B4
	ldrb r0, [r5]
	cmp r0, #0
	beq _08034192
	movs r0, #0x2e
	bl sub_080420E8
	cmp r0, #0
	beq _08034192
	b _080342C6
_08034192:
	movs r0, #0x85
	lsls r0, r0, #1
	movs r1, #0
	bl sub_80342CC
	cmp r0, #0
	beq _080341A2
	b _080342C6
_080341A2:
	ldr r0, _080341B0
	ldrb r1, [r0, #0x1a]
	movs r0, #0x2e
	bl sub_08040204
	movs r0, #0x2e
	b _080342AE
	.align 2, 0
_080341B0: .4byte 0x080CC8C4
_080341B4:
	ldrb r0, [r5]
	cmp r0, #0
	bne _080341BC
	b _080342C6
_080341BC:
	movs r0, #0x2e
	b _080342C0
_080341C0:
	cmp r4, #0
	beq _080341F4
	ldrb r0, [r5]
	cmp r0, #0
	beq _080341D4
	movs r0, #0x2f
	bl sub_080420E8
	cmp r0, #0
	bne _080342C6
_080341D4:
	movs r0, #0x83
	lsls r0, r0, #1
	movs r1, #0
	bl sub_80342CC
	cmp r0, #0
	bne _080342C6
	ldr r0, _080341F0
	ldrb r1, [r0, #0x19]
	movs r0, #0x2f
	bl sub_08040204
	movs r0, #0x2f
	b _080342AE
	.align 2, 0
_080341F0: .4byte 0x080CC8C4
_080341F4:
	ldrb r0, [r5]
	cmp r0, #0
	beq _080342C6
	movs r0, #0x2f
	b _080342C0
_080341FE:
	cmp r4, #0
	beq _0803423C
	ldrb r0, [r5]
	cmp r0, #0
	beq _08034212
	movs r0, #0x29
	bl sub_080420E8
	cmp r0, #0
	bne _080342C6
_08034212:
	ldr r2, _08034230
	ldr r1, _08034234
	ldrb r0, [r2]
	ldrb r1, [r1]
	cmp r0, r1
	beq _080342C6
	ldr r1, _08034238
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r0, #0x29
	bl sub_08040204
	movs r0, #0x29
	b _080342AE
	.align 2, 0
_08034230: .4byte 0x0200107E
_08034234: .4byte 0x0200107F
_08034238: .4byte 0x080CC8EC
_0803423C:
	ldrb r0, [r5]
	cmp r0, #0
	beq _080342C6
	movs r0, #0x29
	b _080342C0
_08034246:
	cmp r4, #0
	beq _08034278
	ldrb r0, [r5]
	cmp r0, #0
	beq _0803425A
	movs r0, #0x30
	bl sub_080420E8
	cmp r0, #0
	bne _080342C6
_0803425A:
	movs r0, #0xf1
	movs r1, #0
	bl sub_80342CC
	cmp r0, #0
	bne _080342C6
	ldr r0, _08034274
	ldrb r1, [r0, #0x1e]
	movs r0, #0x30
	bl sub_08040204
	movs r0, #0x30
	b _080342AE
	.align 2, 0
_08034274: .4byte 0x080CC8C4
_08034278:
	ldrb r0, [r5]
	cmp r0, #0
	beq _080342C6
	movs r0, #0x30
	b _080342C0
_08034282:
	cmp r4, #0
	beq _080342B8
	ldrb r0, [r5]
	cmp r0, #0
	beq _08034296
	movs r0, #0x31
	bl sub_080420E8
	cmp r0, #0
	bne _080342C6
_08034296:
	movs r0, #0x88
	lsls r0, r0, #1
	movs r1, #0
	bl sub_80342CC
	cmp r0, #0
	bne _080342C6
	movs r0, #0x31
	movs r1, #5
	bl sub_08040204
	movs r0, #0x31
_080342AE:
	bl sub_08041FA4
	movs r0, #1
	strb r0, [r5]
	b _080342C6
_080342B8:
	ldrb r0, [r5]
	cmp r0, #0
	beq _080342C6
	movs r0, #0x31
_080342C0:
	bl sub_0804200C
	strb r4, [r5]
_080342C6:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

    .thumb
    .global sub_80342CC
sub_80342CC: @ 0x080342CC
	push {r4, lr}
	adds r3, r0, #0
	adds r4, r1, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r4, r0
	bne _080342DE
	movs r0, #0
	b _080342EE
_080342DE:
	ldr r1, _080342F4
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	adds r0, r3, #0
	adds r1, r4, #0
	bl _call_via_r2
_080342EE:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080342F4: .4byte 0x080A7FA0

    .thumb
    .global sub_80342F8
sub_80342F8: @ 0x080342F8
	push {lr}
	ldr r3, _0803430C
	lsls r2, r0, #2
	adds r2, r2, r3
	ldr r2, [r2]
	bl _call_via_r2
	pop {r0}
	bx r0
	.align 2, 0
_0803430C: .4byte 0x080A8648

    .thumb
    .global sub_8034310
sub_8034310: @ 0x08034310
	push {r4, lr}
	sub sp, #0x14
	adds r4, r0, #0
	mov r1, sp
	ldrb r0, [r4, #0xa]
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0x24
	ldrb r0, [r0]
	strh r0, [r1, #2]
	adds r0, r4, #0
	adds r0, #0x28
	ldrb r0, [r0]
	strb r0, [r1, #0x12]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldrb r0, [r4, #0xc]
	str r0, [sp, #0xc]
	ldrb r0, [r4, #0xc]
	strb r0, [r1, #0x13]
	ldr r1, _08034364
	mov r0, sp
	ldrh r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	movs r0, #2
	ands r1, r0
	cmp r1, #0
	beq _08034368
	mov r0, sp
	ldrh r0, [r0, #2]
	mov r1, sp
	ldrb r1, [r1, #0x12]
	bl sub_803352C
	mov r1, sp
	strh r0, [r1, #0x10]
	b _0803436C
	.align 2, 0
_08034364: .4byte 0x080A7BA0
_08034368:
	mov r0, sp
	strh r1, [r0, #0x10]
_0803436C:
	ldr r1, _08034384
	ldrb r0, [r4, #0xa]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	mov r0, sp
	bl _call_via_r1
	add sp, #0x14
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08034384: .4byte 0x080A77A0

    .thumb
    .global sub_8034388
sub_8034388: @ 0x08034388
	push {r4, lr}
	sub sp, #0x14
	adds r4, r0, #0
	mov r0, sp
	movs r3, #0
	strh r4, [r0]
	strh r1, [r0, #2]
	strb r2, [r0, #0x12]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	mov r0, sp
	strb r3, [r0, #0x13]
	ldr r1, _080343CC
	ldrh r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	movs r0, #2
	ands r1, r0
	cmp r1, #0
	beq _080343D0
	mov r0, sp
	ldrh r0, [r0, #2]
	mov r1, sp
	ldrb r1, [r1, #0x12]
	bl sub_803352C
	mov r1, sp
	strh r0, [r1, #0x10]
	b _080343D4
	.align 2, 0
_080343CC: .4byte 0x080A7BA0
_080343D0:
	mov r0, sp
	strh r1, [r0, #0x10]
_080343D4:
	ldr r1, _080343EC
	lsls r0, r4, #2
	adds r0, r0, r1
	ldr r1, [r0]
	mov r0, sp
	bl _call_via_r1
	add sp, #0x14
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080343EC: .4byte 0x080A77A0

    .thumb
sub_80343F0: @ 0x080343F0
	push {r4, lr}
	sub sp, #0x14
	adds r4, r0, #0
	mov r2, sp
	ldrb r0, [r4, #0xc]
	strh r0, [r2]
	ldrb r0, [r4, #0x13]
	strh r0, [r2, #2]
	ldrb r0, [r4, #0x14]
	strb r0, [r2, #0x12]
	str r1, [sp, #4]
	ldrh r0, [r4]
	str r0, [sp, #8]
	ldrb r0, [r4, #0xe]
	str r0, [sp, #0xc]
	mov r1, sp
	ldrb r0, [r4, #0xe]
	strb r0, [r1, #0x13]
	ldr r1, _0803443C
	mov r0, sp
	ldrh r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	movs r0, #2
	ands r1, r0
	cmp r1, #0
	beq _08034440
	mov r0, sp
	ldrh r0, [r0, #2]
	mov r1, sp
	ldrb r1, [r1, #0x12]
	bl sub_803352C
	mov r1, sp
	strh r0, [r1, #0x10]
	b _08034444
	.align 2, 0
_0803443C: .4byte 0x080A7BA0
_08034440:
	mov r0, sp
	strh r1, [r0, #0x10]
_08034444:
	ldr r1, _0803445C
	ldrb r0, [r4, #0xc]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	mov r0, sp
	bl _call_via_r1
	add sp, #0x14
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0803445C: .4byte 0x080A77A0

    .thumb
    .global sub_8034460
sub_8034460: @ 0x08034460
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	adds r6, r2, #0
	adds r7, r3, #0
	ldr r0, _080344D4
	ldr r1, [r0]
	mov ip, r0
	cmp r1, #0xa
	bne _08034478
	.2byte 0xEE00, 0xEE00
_08034478:
	movs r2, #0
	ldr r0, _080344D8
	ldr r1, [r0]
	adds r3, r0, #0
	cmp r1, #0
	beq _08034494
	adds r1, r3, #0
_08034486:
	adds r1, #0x14
	adds r2, #1
	cmp r2, #9
	bgt _08034494
	ldr r0, [r1]
	cmp r0, #0
	bne _08034486
_08034494:
	cmp r2, #0xa
	bne _0803449C
	.2byte 0xEE00, 0xEE00
_0803449C:
	lsls r1, r2, #2
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r2, r1, r3
	movs r0, #1
	str r0, [r2]
	adds r0, r3, #4
	adds r0, r1, r0
	str r4, [r0]
	adds r0, r3, #0
	adds r0, #8
	adds r0, r1, r0
	str r5, [r0]
	adds r0, r3, #0
	adds r0, #0xc
	adds r0, r1, r0
	str r6, [r0]
	adds r0, r3, #0
	adds r0, #0x10
	adds r1, r1, r0
	str r7, [r1]
	mov r1, ip
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080344D4: .4byte 0x0203EA78
_080344D8: .4byte 0x0203E9B0

    .thumb
    .global sub_80344DC
sub_80344DC: @ 0x080344DC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _08034524
	ldr r0, [r0]
	cmp r0, #0
	bne _080344EC
	b _08034640
_080344EC:
	movs r7, #0
	movs r0, #0
	mov r8, r0
_080344F2:
	ldr r1, _08034528
	mov r3, r8
	lsls r2, r3, #2
	adds r0, r2, r3
	lsls r3, r0, #2
	adds r0, r3, r1
	ldr r0, [r0]
	adds r5, r1, #0
	adds r4, r2, #0
	cmp r0, #0
	bne _0803450A
	b _0803462C
_0803450A:
	adds r0, r5, #0
	adds r0, #0xc
	adds r0, r3, r0
	ldr r0, [r0]
	cmp r0, #7
	bls _08034518
	b _08034628
_08034518:
	lsls r0, r0, #2
	ldr r1, _0803452C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08034524: .4byte 0x0203EA78
_08034528: .4byte 0x0203E9B0
_0803452C: .4byte 0x08034530
_08034530: @ jump table
	.4byte _0803457C @ case 0
	.4byte _0803458C @ case 1
	.4byte _08034594 @ case 2
	.4byte _080345A8 @ case 3
	.4byte _080345D8 @ case 4
	.4byte _08034584 @ case 5
	.4byte _0803456C @ case 6
	.4byte _08034550 @ case 7
_08034550:
	ldr r0, _08034564
	ldr r0, [r0]
	bl sub_80038AC
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #0
	bne _08034624
	ldr r5, _08034568
	b _080345F2
	.align 2, 0
_08034564: .4byte dword_2000FC8
_08034568: .4byte 0x0203E9B0
_0803456C:
	ldr r0, _08034578
_0803456E:
	ldrb r6, [r0]
	cmp r6, #0
	beq _080345F2
	b _08034624
	.align 2, 0
_08034578: .4byte byte_200110C
_0803457C:
	ldr r0, _08034580
	b _0803456E
	.align 2, 0
_08034580: .4byte byte_203F99E
_08034584:
	ldr r0, _08034588
	b _0803456E
	.align 2, 0
_08034588: .4byte byte_203F99C
_0803458C:
	ldr r0, _08034590
	b _0803456E
	.align 2, 0
_08034590: .4byte byte_203F9A1
_08034594:
	ldr r0, _080345A0
	ldrb r0, [r0]
	cmp r0, #0
	bne _08034624
	ldr r0, _080345A4
	b _0803456E
	.align 2, 0
_080345A0: .4byte byte_203F9A1
_080345A4: .4byte byte_203F99E
_080345A8:
	mov r1, r8
	adds r0, r4, r1
	lsls r4, r0, #2
	adds r0, r5, #0
	adds r0, #0x10
	adds r0, r4, r0
	ldr r0, [r0]
	bl sub_8003770
	cmp r0, #0
	beq _08034624
	adds r0, r5, #4
	adds r0, r4, r0
	ldr r0, [r0]
	adds r1, r5, #0
	adds r1, #8
	adds r1, r4, r1
	ldr r1, [r1]
	bl sub_80342F8
	adds r1, r4, r5
	movs r0, #0
	str r0, [r1]
	b _0803460C
_080345D8:
	ldr r1, _08034618
	ldr r0, _0803461C
	ldrh r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #4
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #0
	bne _08034624
_080345F2:
	add r4, r8
	lsls r4, r4, #2
	adds r0, r5, #4
	adds r0, r4, r0
	ldr r0, [r0]
	adds r1, r5, #0
	adds r1, #8
	adds r1, r4, r1
	ldr r1, [r1]
	bl sub_80342F8
	adds r4, r4, r5
	str r6, [r4]
_0803460C:
	ldr r1, _08034620
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	b _0803462C
	.align 2, 0
_08034618: .4byte gPlayerStateSettings
_0803461C: .4byte gPlayerState
_08034620: .4byte 0x0203EA78
_08034624:
	adds r7, #1
	b _0803462C
_08034628:
	.2byte 0xEE00, 0xEE00
_0803462C:
	ldr r0, _0803464C
	ldr r0, [r0]
	cmp r7, r0
	beq _08034640
	movs r3, #1
	add r8, r3
	mov r0, r8
	cmp r0, #9
	bgt _08034640
	b _080344F2
_08034640:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803464C: .4byte 0x0203EA78

    .thumb
sub_8034650: @ 0x08034650
	push {r4, r5, lr}
	adds r2, r0, #0
	cmp r2, #0
	bne _0803465A
	b _0803494E
_0803465A:
	ldr r0, _08034674
	adds r0, r2, r0
	movs r1, #1
	strb r1, [r0]
	subs r0, r2, #1
	cmp r0, #0x10
	bls _0803466A
	b _080348D8
_0803466A:
	lsls r0, r0, #2
	ldr r1, _08034678
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08034674: .4byte 0x0203E0FC
_08034678: .4byte 0x0803467C
_0803467C: @ jump table
	.4byte _080346C0 @ case 0
	.4byte _080346CC @ case 1
	.4byte _080346D8 @ case 2
	.4byte _080348D8 @ case 3
	.4byte _080346E4 @ case 4
	.4byte _080346F8 @ case 5
	.4byte _0803473C @ case 6
	.4byte _08034798 @ case 7
	.4byte _080347A4 @ case 8
	.4byte _080347B0 @ case 9
	.4byte _080347BC @ case 10
	.4byte _080347C8 @ case 11
	.4byte _080347D4 @ case 12
	.4byte _080347E0 @ case 13
	.4byte _0803481C @ case 14
	.4byte _08034894 @ case 15
	.4byte _08034858 @ case 16
_080346C0:
	ldr r1, _080346C8
	movs r0, #1
	strb r0, [r1, #0x10]
	b _080348DC
	.align 2, 0
_080346C8: .4byte 0x0200209A
_080346CC:
	ldr r1, _080346D4
	movs r0, #1
	strb r0, [r1, #0x12]
	b _080348DC
	.align 2, 0
_080346D4: .4byte 0x0200209A
_080346D8:
	ldr r1, _080346E0
	movs r0, #1
	strb r0, [r1, #0x15]
	b _080348DC
	.align 2, 0
_080346E0: .4byte 0x0200209A
_080346E4:
	ldr r1, _080346F4
	movs r0, #1
	strb r0, [r1, #0x16]
	movs r0, #0x14
	bl sub_8029C30
	b _080348DC
	.align 2, 0
_080346F4: .4byte 0x0200209A
_080346F8:
	ldr r0, _08034724
	movs r1, #1
	strb r1, [r0]
	ldr r0, _08034728
	strb r1, [r0]
	ldr r1, _0803472C
	movs r0, #1
	strb r0, [r1, #5]
	movs r0, #0x15
	bl sub_8029C30
	ldr r0, _08034730
	ldr r1, _08034734
	movs r2, #0x12
	ldrsb r2, [r0, r2]
	movs r0, #0x12
	ldrsb r0, [r1, r0]
	cmp r2, r0
	blt _08034720
	b _080348DC
_08034720:
	ldr r0, _08034738
	b _080348B8
	.align 2, 0
_08034724: .4byte 0x0203E96C
_08034728: .4byte 0x0203E12A
_0803472C: .4byte 0x0200209A
_08034730: .4byte gGameStatus
_08034734: .4byte 0x080CC8C4
_08034738: .4byte 0x000001A9
_0803473C:
	ldr r0, _0803477C
	movs r5, #0
	movs r4, #1
	strb r4, [r0, #1]
	ldr r2, _08034780
	ldr r0, _08034784
	ldrh r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrb r1, [r0, #8]
	adds r1, #1
	strb r1, [r0, #8]
	ldr r1, _08034788
	ldrb r0, [r1, #7]
	adds r0, #1
	strb r0, [r1, #7]
	movs r0, #0x3a
	bl init_function
	ldr r0, _0803478C
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_8034460
	ldr r0, _08034790
	strb r4, [r0]
	ldr r0, _08034794
	strb r5, [r0]
	b _0803494E
	.align 2, 0
_0803477C: .4byte 0x0200209A
_08034780: .4byte 0x02000FCC
_08034784: .4byte gLoadedRoomLevel
_08034788: .4byte gGameStatus
_0803478C: .4byte 0x00000189
_08034790: .4byte 0x0203E12C
_08034794: .4byte 0x02002E50
_08034798:
	ldr r1, _080347A0
	movs r0, #1
	strb r0, [r1, #0xf]
	b _080348DC
	.align 2, 0
_080347A0: .4byte 0x0200209A
_080347A4:
	ldr r1, _080347AC
	movs r0, #1
	strb r0, [r1, #2]
	b _080348DC
	.align 2, 0
_080347AC: .4byte 0x0200209A
_080347B0:
	ldr r1, _080347B8
	movs r0, #1
	strb r0, [r1, #0x13]
	b _080348DC
	.align 2, 0
_080347B8: .4byte 0x0200209A
_080347BC:
	ldr r1, _080347C4
	movs r0, #1
	strb r0, [r1, #0x14]
	b _080348DC
	.align 2, 0
_080347C4: .4byte 0x0200209A
_080347C8:
	ldr r1, _080347D0
	movs r0, #1
	strb r0, [r1, #4]
	b _080348DC
	.align 2, 0
_080347D0: .4byte 0x0200209A
_080347D4:
	ldr r1, _080347DC
	movs r0, #1
	strb r0, [r1, #3]
	b _080348DC
	.align 2, 0
_080347DC: .4byte 0x0200209A
_080347E0:
	ldr r0, _08034808
	movs r1, #1
	strb r1, [r0]
	ldr r0, _0803480C
	strb r1, [r0]
	ldr r1, _08034810
	movs r0, #1
	strb r0, [r1, #6]
	ldr r0, _08034814
	ldr r1, _08034818
	movs r2, #0xe
	ldrsb r2, [r0, r2]
	movs r0, #0xe
	ldrsb r0, [r1, r0]
	cmp r2, r0
	bge _080348DC
	movs r0, #0xd2
	lsls r0, r0, #1
	b _080348B8
	.align 2, 0
_08034808: .4byte 0x0203E96A
_0803480C: .4byte 0x0203E122
_08034810: .4byte 0x0200209A
_08034814: .4byte gGameStatus
_08034818: .4byte 0x080CC8C4
_0803481C:
	ldr r0, _08034840
	movs r1, #1
	strb r1, [r0]
	ldr r0, _08034844
	strb r1, [r0]
	ldr r1, _08034848
	movs r0, #1
	strb r0, [r1, #7]
	ldr r0, _0803484C
	ldr r1, _08034850
	movs r2, #0xf
	ldrsb r2, [r0, r2]
	movs r0, #0xf
	ldrsb r0, [r1, r0]
	cmp r2, r0
	bge _080348DC
	ldr r0, _08034854
	b _080348B8
	.align 2, 0
_08034840: .4byte 0x0203E96A
_08034844: .4byte 0x0203E123
_08034848: .4byte 0x0200209A
_0803484C: .4byte gGameStatus
_08034850: .4byte 0x080CC8C4
_08034854: .4byte 0x000001A5
_08034858:
	ldr r0, _0803487C
	movs r1, #1
	strb r1, [r0]
	ldr r0, _08034880
	strb r1, [r0]
	ldr r1, _08034884
	movs r0, #1
	strb r0, [r1, #9]
	ldr r0, _08034888
	ldr r1, _0803488C
	movs r2, #0x11
	ldrsb r2, [r0, r2]
	movs r0, #0x11
	ldrsb r0, [r1, r0]
	cmp r2, r0
	bge _080348DC
	ldr r0, _08034890
	b _080348B8
	.align 2, 0
_0803487C: .4byte 0x0203E96A
_08034880: .4byte 0x0203E125
_08034884: .4byte 0x0200209A
_08034888: .4byte gGameStatus
_0803488C: .4byte 0x080CC8C4
_08034890: .4byte 0x000001A7
_08034894:
	ldr r0, _080348C4
	movs r1, #1
	strb r1, [r0]
	ldr r0, _080348C8
	strb r1, [r0]
	ldr r1, _080348CC
	movs r0, #1
	strb r0, [r1, #8]
	ldr r0, _080348D0
	ldr r1, _080348D4
	movs r2, #0x10
	ldrsb r2, [r0, r2]
	movs r0, #0x10
	ldrsb r0, [r1, r0]
	cmp r2, r0
	bge _080348DC
	movs r0, #0xd3
	lsls r0, r0, #1
_080348B8:
	movs r1, #0
	movs r2, #4
	movs r3, #0
	bl sub_8034460
	b _080348DC
	.align 2, 0
_080348C4: .4byte 0x0203E96A
_080348C8: .4byte 0x0203E124
_080348CC: .4byte 0x0200209A
_080348D0: .4byte gGameStatus
_080348D4: .4byte 0x080CC8C4
_080348D8:
	.2byte 0xEE00, 0xEE00
_080348DC:
	ldr r1, _08034954
	movs r0, #1
	strb r0, [r1]
	ldr r2, _08034958
	ldr r0, _0803495C
	ldrh r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrb r1, [r0, #8]
	adds r1, #1
	strb r1, [r0, #8]
	ldr r4, _08034960
	ldrb r0, [r4, #7]
	adds r0, #1
	strb r0, [r4, #7]
	ldrb r1, [r4, #7]
	movs r0, #4
	bl sub_08040204
	ldr r0, _08034964
	ldrb r0, [r0]
	cmp r0, #0
	beq _08034936
	ldr r3, _08034968
	movs r1, #0xa8
	lsls r1, r1, #1
	adds r0, r3, r1
	ldrh r0, [r0]
	ldr r2, _0803496C
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
_08034936:
	ldrb r2, [r4, #0x13]
	ldrb r1, [r4, #0x15]
	ldrb r0, [r4, #0x14]
	adds r0, #1
	muls r1, r0, r1
	cmp r2, r1
	bge _0803494E
	strb r1, [r4, #0x13]
	ldrb r1, [r4, #0x13]
	movs r0, #0x38
	bl sub_08040204
_0803494E:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08034954: .4byte 0x0203E12C
_08034958: .4byte 0x02000FCC
_0803495C: .4byte gLoadedRoomLevel
_08034960: .4byte gGameStatus
_08034964: .4byte byte_203EA89
_08034968: .4byte 0x080CE440
_0803496C: .4byte byte_203EA8C

    .thumb
    .global sub_8034970
sub_8034970: @ 0x08034970
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x50
	mov r8, r0
	str r1, [sp, #0x1c]
	str r2, [sp, #0x20]
	ldr r0, [r1]
	ldr r2, [r2]
	mov r1, r8
	adds r3, r1, r0
	movs r1, #0x11
	strb r1, [r3]
	adds r0, #1
	mov r4, r8
	adds r3, r4, r0
	ldr r1, _08034D7C
	ldrb r1, [r1]
	strb r1, [r3]
	adds r2, #0x11
	adds r2, r2, r1
	adds r0, #1
	adds r3, r4, r0
	ldr r1, _08034D80
	ldrb r1, [r1]
	strb r1, [r3]
	ldrb r4, [r3]
	adds r0, #1
	mov r5, r8
	adds r3, r5, r0
	ldr r1, _08034D84
	ldrb r1, [r1]
	strb r1, [r3]
	adds r2, r2, r4
	adds r2, r2, r1
	adds r0, #1
	adds r3, r5, r0
	ldr r1, _08034D88
	ldrh r1, [r1]
	strb r1, [r3]
	ldrb r4, [r3]
	adds r0, #1
	adds r3, r5, r0
	ldr r1, _08034D8C
	ldrb r1, [r1]
	strb r1, [r3]
	adds r2, r2, r4
	adds r2, r2, r1
	str r2, [sp, #0x18]
	adds r0, #1
	str r0, [sp, #0x10]
	movs r6, #0
	str r6, [sp, #0x24]
	ldr r5, _08034D90
	ldr r4, _08034D94
	ldr r6, _08034D98
	ldr r7, _08034D9C
	mov sb, r7
	mov r0, sp
	adds r0, #0x10
	str r0, [sp, #0x34]
	mov r1, sp
	adds r1, #0x14
	str r1, [sp, #0x38]
	mov r2, sp
	adds r2, #0x18
	str r2, [sp, #0x3c]
_080349FA:
	ldr r2, [sp, #0x10]
	mov r3, r8
	adds r1, r3, r2
	ldr r7, [sp, #0x24]
	adds r0, r7, r5
	ldrb r0, [r0]
	strb r0, [r1]
	ldrb r0, [r1]
	ldr r1, [sp, #0x18]
	adds r1, r1, r0
	str r1, [sp, #0x18]
	adds r2, #1
	str r2, [sp, #0x10]
	adds r3, r3, r2
	adds r0, r7, r4
	ldrb r0, [r0]
	strb r0, [r3]
	ldrb r0, [r3]
	adds r1, r1, r0
	str r1, [sp, #0x18]
	adds r2, #1
	str r2, [sp, #0x10]
	adds r0, r7, #0
	adds r0, #1
	str r0, [sp, #0x24]
	cmp r0, #5
	ble _080349FA
	movs r1, #0
	str r1, [sp, #0x24]
	ldr r7, _08034DA0
_08034A36:
	ldr r1, [sp, #0x10]
	mov r3, r8
	adds r2, r3, r1
	ldr r4, [sp, #0x24]
	lsls r5, r4, #4
	subs r4, r5, r4
	lsls r4, r4, #3
	adds r4, r4, r6
	ldrb r0, [r4]
	strb r0, [r2]
	ldrb r0, [r2]
	ldr r2, [sp, #0x18]
	adds r2, r2, r0
	str r2, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	adds r3, r3, r1
	ldrb r0, [r4, #1]
	strb r0, [r3]
	ldrb r0, [r3]
	adds r2, r2, r0
	str r2, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	mov r0, r8
	adds r3, r0, r1
	ldrb r0, [r4, #2]
	strb r0, [r3]
	ldrb r0, [r3]
	adds r2, r2, r0
	str r2, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	mov r0, r8
	adds r3, r0, r1
	ldrb r0, [r4, #3]
	strb r0, [r3]
	ldrb r0, [r3]
	adds r2, r2, r0
	str r2, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	mov r0, r8
	adds r3, r0, r1
	ldrb r0, [r4, #4]
	strb r0, [r3]
	ldrb r0, [r3]
	adds r2, r2, r0
	str r2, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	mov r0, r8
	adds r3, r0, r1
	ldrb r0, [r4, #5]
	strb r0, [r3]
	ldrb r0, [r3]
	adds r2, r2, r0
	str r2, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	mov r0, r8
	adds r3, r0, r1
	ldrb r0, [r4, #6]
	strb r0, [r3]
	ldrb r0, [r3]
	adds r2, r2, r0
	str r2, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	mov r0, r8
	adds r3, r0, r1
	ldrb r0, [r4, #7]
	strb r0, [r3]
	ldrb r0, [r3]
	adds r2, r2, r0
	str r2, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	mov r0, r8
	adds r3, r0, r1
	ldrb r0, [r4, #8]
	strb r0, [r3]
	ldrb r0, [r3]
	adds r2, r2, r0
	str r2, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	mov r0, r8
	adds r3, r0, r1
	ldrb r0, [r4, #9]
	strb r0, [r3]
	ldrb r0, [r3]
	adds r2, r2, r0
	str r2, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	mov r0, r8
	adds r3, r0, r1
	ldrb r0, [r4, #0xa]
	strb r0, [r3]
	ldrb r0, [r3]
	adds r2, r2, r0
	str r2, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	mov r0, r8
	adds r3, r0, r1
	ldrb r0, [r4, #0xb]
	strb r0, [r3]
	ldrb r0, [r3]
	adds r2, r2, r0
	str r2, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	mov r0, r8
	adds r3, r0, r1
	ldrb r0, [r4, #0xc]
	strb r0, [r3]
	ldrb r0, [r3]
	adds r2, r2, r0
	str r2, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	mov r0, r8
	adds r3, r0, r1
	ldrb r0, [r4, #0xd]
	strb r0, [r3]
	ldrb r0, [r3]
	adds r2, r2, r0
	str r2, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	mov r0, r8
	adds r3, r0, r1
	ldrb r0, [r4, #0xe]
	strb r0, [r3]
	ldrb r0, [r3]
	adds r2, r2, r0
	str r2, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	mov r0, r8
	adds r3, r0, r1
	ldrb r0, [r4, #0xf]
	strb r0, [r3]
	ldrb r0, [r3]
	adds r2, r2, r0
	str r2, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	mov r0, r8
	adds r3, r0, r1
	ldrb r0, [r4, #0x10]
	strb r0, [r3]
	ldrb r0, [r3]
	adds r2, r2, r0
	str r2, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	mov r0, r8
	adds r3, r0, r1
	ldrb r0, [r4, #0x11]
	strb r0, [r3]
	ldrb r0, [r3]
	adds r2, r2, r0
	str r2, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	mov r0, r8
	adds r3, r0, r1
	ldrb r0, [r4, #0x12]
	strb r0, [r3]
	ldrb r0, [r3]
	adds r2, r2, r0
	str r2, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	mov r0, r8
	adds r3, r0, r1
	ldrb r0, [r4, #0x13]
	strb r0, [r3]
	ldrb r0, [r3]
	adds r2, r2, r0
	str r2, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	mov r0, r8
	adds r3, r0, r1
	ldrb r0, [r4, #0x14]
	strb r0, [r3]
	ldrb r0, [r3]
	adds r2, r2, r0
	str r2, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	mov r4, r8
	adds r3, r4, r1
	movs r0, #0xc4
	ldr r4, [sp, #0x24]
	muls r0, r4, r0
	adds r4, r0, r7
	ldrb r0, [r4]
	strb r0, [r3]
	ldrb r0, [r3]
	adds r2, r2, r0
	str r2, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	mov r0, r8
	adds r3, r0, r1
	ldrb r0, [r4, #1]
	strb r0, [r3]
	ldrb r0, [r3]
	adds r2, r2, r0
	str r2, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	mov r0, r8
	adds r3, r0, r1
	ldrb r0, [r4, #2]
	strb r0, [r3]
	ldrb r0, [r3]
	adds r2, r2, r0
	str r2, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	mov r0, r8
	adds r3, r0, r1
	ldrb r0, [r4, #3]
	strb r0, [r3]
	ldrb r0, [r3]
	adds r2, r2, r0
	str r2, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	mov r0, r8
	adds r3, r0, r1
	ldrb r0, [r4, #4]
	strb r0, [r3]
	ldrb r0, [r3]
	adds r2, r2, r0
	str r2, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	mov r0, r8
	adds r3, r0, r1
	ldrb r0, [r4, #5]
	strb r0, [r3]
	ldrb r0, [r3]
	adds r2, r2, r0
	str r2, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	mov r0, r8
	adds r3, r0, r1
	ldrb r0, [r4, #6]
	strb r0, [r3]
	ldrb r0, [r3]
	adds r2, r2, r0
	str r2, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	mov r0, r8
	adds r3, r0, r1
	ldrb r0, [r4, #7]
	strb r0, [r3]
	ldrb r0, [r3]
	adds r2, r2, r0
	str r2, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	mov r0, r8
	adds r3, r0, r1
	ldrb r0, [r4, #8]
	strb r0, [r3]
	ldrb r0, [r3]
	adds r2, r2, r0
	str r2, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	mov r0, r8
	adds r3, r0, r1
	ldrb r0, [r4, #9]
	strb r0, [r3]
	ldrb r0, [r3]
	adds r2, r2, r0
	str r2, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	mov r0, r8
	adds r3, r0, r1
	ldrb r0, [r4, #0xa]
	strb r0, [r3]
	ldrb r0, [r3]
	adds r2, r2, r0
	str r2, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	mov r0, r8
	adds r3, r0, r1
	ldrb r0, [r4, #0xb]
	strb r0, [r3]
	ldrb r0, [r3]
	adds r2, r2, r0
	str r2, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	mov r0, r8
	adds r3, r0, r1
	ldrb r0, [r4, #0xc]
	strb r0, [r3]
	ldrb r0, [r3]
	adds r2, r2, r0
	str r2, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	mov r0, r8
	adds r3, r0, r1
	ldrb r0, [r4, #0xd]
	strb r0, [r3]
	ldrb r0, [r3]
	adds r2, r2, r0
	str r2, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	mov r0, r8
	adds r3, r0, r1
	ldrb r0, [r4, #0xe]
	strb r0, [r3]
	ldrb r0, [r3]
	adds r2, r2, r0
	str r2, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	mov r0, r8
	adds r3, r0, r1
	ldrb r0, [r4, #0xf]
	strb r0, [r3]
	ldrb r0, [r3]
	adds r2, r2, r0
	str r2, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	mov r0, r8
	adds r3, r0, r1
	ldrb r0, [r4, #0x10]
	strb r0, [r3]
	ldrb r0, [r3]
	adds r2, r2, r0
	str r2, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	mov r0, r8
	adds r3, r0, r1
	ldrb r0, [r4, #0x11]
	strb r0, [r3]
	ldrb r0, [r3]
	adds r2, r2, r0
	str r2, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	mov r0, r8
	adds r3, r0, r1
	ldrb r0, [r4, #0x1f]
	strb r0, [r3]
	ldrb r0, [r3]
	adds r2, r2, r0
	str r2, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	mov r0, r8
	adds r3, r0, r1
	ldrb r0, [r4, #0x12]
	strb r0, [r3]
	ldrb r0, [r3]
	adds r2, r2, r0
	str r2, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	mov r0, r8
	adds r3, r0, r1
	ldrb r0, [r4, #0x13]
	strb r0, [r3]
	ldrb r0, [r3]
	adds r2, r2, r0
	str r2, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	mov r0, r8
	adds r3, r0, r1
	ldrb r0, [r4, #0x14]
	strb r0, [r3]
	ldrb r0, [r3]
	adds r2, r2, r0
	str r2, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	mov r0, r8
	adds r3, r0, r1
	ldrb r0, [r4, #0x15]
	strb r0, [r3]
	ldrb r0, [r3]
	adds r2, r2, r0
	str r2, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	mov r0, r8
	adds r3, r0, r1
	ldrb r0, [r4, #0x16]
	strb r0, [r3]
	ldrb r0, [r3]
	adds r2, r2, r0
	str r2, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	mov r0, r8
	adds r3, r0, r1
	b _08034DA4
	.align 2, 0
_08034D7C: .4byte 0x0203E93A
_08034D80: .4byte 0x0203E93C
_08034D84: .4byte 0x0203E93B
_08034D88: .4byte 0x0203E140
_08034D8C: .4byte 0x0203E16C
_08034D90: .4byte 0x0203E110
_08034D94: .4byte 0x0203E116
_08034D98: .4byte 0x0203E170
_08034D9C: .4byte 0x0203E8D8
_08034DA0: .4byte 0x0203E440
_08034DA4:
	ldrb r0, [r4, #0x17]
	strb r0, [r3]
	ldrb r0, [r3]
	adds r2, r2, r0
	str r2, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	mov r0, r8
	adds r3, r0, r1
	ldrb r0, [r4, #0x18]
	strb r0, [r3]
	ldrb r0, [r3]
	adds r2, r2, r0
	str r2, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	mov r0, r8
	adds r3, r0, r1
	ldrb r0, [r4, #0x19]
	strb r0, [r3]
	ldrb r0, [r3]
	adds r2, r2, r0
	str r2, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	mov r0, r8
	adds r3, r0, r1
	ldrb r0, [r4, #0x1a]
	strb r0, [r3]
	ldrb r0, [r3]
	adds r2, r2, r0
	str r2, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	mov r0, r8
	adds r3, r0, r1
	ldrb r0, [r4, #0x1b]
	strb r0, [r3]
	ldrb r0, [r3]
	adds r2, r2, r0
	str r2, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	mov r0, r8
	adds r3, r0, r1
	ldrb r0, [r4, #0x1c]
	strb r0, [r3]
	ldrb r0, [r3]
	adds r2, r2, r0
	str r2, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	mov r0, r8
	adds r3, r0, r1
	adds r0, r4, #0
	adds r0, #0x22
	ldrb r0, [r0]
	strb r0, [r3]
	ldrb r0, [r3]
	adds r2, r2, r0
	str r2, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	mov r0, r8
	adds r3, r0, r1
	adds r0, r4, #0
	adds r0, #0x23
	ldrb r0, [r0]
	strb r0, [r3]
	ldrb r0, [r3]
	adds r2, r2, r0
	str r2, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	mov r0, r8
	adds r3, r0, r1
	adds r0, r4, #0
	adds r0, #0x24
	ldrb r0, [r0]
	strb r0, [r3]
	ldrb r0, [r3]
	adds r2, r2, r0
	str r2, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	mov r0, r8
	adds r3, r0, r1
	adds r0, r4, #0
	adds r0, #0x25
	ldrb r0, [r0]
	strb r0, [r3]
	ldrb r0, [r3]
	adds r2, r2, r0
	str r2, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	mov r0, r8
	adds r3, r0, r1
	ldrb r0, [r4, #0x1d]
	strb r0, [r3]
	ldrb r0, [r3]
	adds r2, r2, r0
	str r2, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	mov r0, r8
	adds r3, r0, r1
	ldrb r0, [r4, #0x1e]
	strb r0, [r3]
	ldrb r0, [r3]
	adds r2, r2, r0
	str r2, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	mov r0, r8
	adds r3, r0, r1
	adds r0, r4, #0
	adds r0, #0x20
	ldrb r0, [r0]
	strb r0, [r3]
	ldrb r0, [r3]
	adds r2, r2, r0
	str r2, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	mov r0, r8
	adds r3, r0, r1
	adds r0, r4, #0
	adds r0, #0x21
	ldrb r0, [r0]
	strb r0, [r3]
	ldrb r0, [r3]
	adds r2, r2, r0
	str r2, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	mov r4, r8
	adds r3, r4, r1
	add r5, sb
	ldrb r0, [r5]
	strb r0, [r3]
	ldrb r0, [r3]
	adds r2, r2, r0
	str r2, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	adds r3, r4, r1
	ldrb r0, [r5, #1]
	strb r0, [r3]
	ldrb r0, [r3]
	adds r2, r2, r0
	str r2, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	adds r3, r4, r1
	ldrb r0, [r5, #2]
	strb r0, [r3]
	ldrb r0, [r3]
	adds r2, r2, r0
	str r2, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	ldr r5, [sp, #0x24]
	adds r5, #1
	str r5, [sp, #0x24]
	cmp r5, #5
	bgt _08034EF4
	b _08034A36
_08034EF4:
	movs r1, #0
	str r1, [sp, #0x14]
	add r0, sp, #0xc
	strb r1, [r0]
	movs r7, #0
	str r7, [sp, #0x24]
	ldr r0, [sp, #0x34]
	mov sb, r0
	ldr r7, [sp, #0x38]
	ldr r1, [sp, #0x3c]
	mov sl, r1
	movs r2, #0
	str r2, [sp, #0x44]
	ldr r3, _080352F8
	str r3, [sp, #0x48]
	movs r4, #0
	str r4, [sp, #0x4c]
	mov r5, sp
	adds r5, #0x18
	str r5, [sp, #0x28]
	mov r6, sp
	adds r6, #0x10
	str r6, [sp, #0x2c]
_08034F22:
	ldr r0, _080352F8
	adds r0, #0x1c
	ldr r1, [sp, #0x4c]
	adds r0, r1, r0
	ldr r0, [r0]
	str r0, [sp]
	ldr r2, [sp, #0x48]
	ldrb r0, [r2]
	str r0, [sp, #4]
	mov r3, sl
	str r3, [sp, #8]
	mov r0, r8
	mov r1, sb
	add r2, sp, #0xc
	adds r3, r7, #0
	bl sub_8038914
	ldr r0, _080352F8
	adds r0, #0x20
	ldr r4, [sp, #0x4c]
	adds r0, r4, r0
	ldr r0, [r0]
	str r0, [sp]
	ldr r5, [sp, #0x48]
	ldrb r0, [r5, #1]
	str r0, [sp, #4]
	mov r6, sl
	str r6, [sp, #8]
	mov r0, r8
	mov r1, sb
	add r2, sp, #0xc
	adds r3, r7, #0
	bl sub_8038914
	ldr r0, _080352F8
	adds r0, #0x24
	adds r0, r4, r0
	ldr r0, [r0]
	str r0, [sp]
	ldrb r0, [r5, #2]
	str r0, [sp, #4]
	str r6, [sp, #8]
	mov r0, r8
	mov r1, sb
	add r2, sp, #0xc
	adds r3, r7, #0
	bl sub_8038914
	ldr r0, _080352F8
	adds r0, #0x28
	adds r0, r4, r0
	ldr r0, [r0]
	str r0, [sp]
	ldrb r0, [r5, #3]
	str r0, [sp, #4]
	str r6, [sp, #8]
	mov r0, r8
	mov r1, sb
	add r2, sp, #0xc
	adds r3, r7, #0
	bl sub_8038914
	ldr r0, _080352F8
	adds r0, #0x2c
	adds r0, r4, r0
	ldr r0, [r0]
	str r0, [sp]
	ldrb r0, [r5, #4]
	str r0, [sp, #4]
	str r6, [sp, #8]
	mov r0, r8
	mov r1, sb
	add r2, sp, #0xc
	adds r3, r7, #0
	bl sub_8038914
	ldr r0, _080352F8
	adds r0, #0x30
	adds r0, r4, r0
	ldr r0, [r0]
	str r0, [sp]
	ldrb r0, [r5, #5]
	str r0, [sp, #4]
	str r6, [sp, #8]
	mov r0, r8
	mov r1, sb
	add r2, sp, #0xc
	adds r3, r7, #0
	bl sub_8038914
	ldr r0, _080352F8
	adds r0, #0x34
	adds r0, r4, r0
	ldr r0, [r0]
	str r0, [sp]
	ldrb r0, [r5, #6]
	str r0, [sp, #4]
	str r6, [sp, #8]
	mov r0, r8
	mov r1, sb
	add r2, sp, #0xc
	adds r3, r7, #0
	bl sub_8038914
	ldr r0, _080352F8
	adds r0, #0x38
	adds r0, r4, r0
	ldr r0, [r0]
	str r0, [sp]
	ldrb r0, [r5, #7]
	str r0, [sp, #4]
	str r6, [sp, #8]
	mov r0, r8
	mov r1, sb
	add r2, sp, #0xc
	adds r3, r7, #0
	bl sub_8038914
	ldr r0, _080352F8
	adds r0, #0x3c
	adds r0, r4, r0
	ldr r0, [r0]
	str r0, [sp]
	ldrb r0, [r5, #8]
	str r0, [sp, #4]
	str r6, [sp, #8]
	mov r0, r8
	mov r1, sb
	add r2, sp, #0xc
	adds r3, r7, #0
	bl sub_8038914
	ldr r0, _080352F8
	adds r0, #0x40
	adds r0, r4, r0
	ldr r0, [r0]
	str r0, [sp]
	ldrb r0, [r5, #9]
	str r0, [sp, #4]
	str r6, [sp, #8]
	mov r0, r8
	mov r1, sb
	add r2, sp, #0xc
	adds r3, r7, #0
	bl sub_8038914
	ldr r0, _080352F8
	adds r0, #0x44
	adds r0, r4, r0
	ldr r0, [r0]
	str r0, [sp]
	ldrb r0, [r5, #0xa]
	str r0, [sp, #4]
	str r6, [sp, #8]
	mov r0, r8
	mov r1, sb
	add r2, sp, #0xc
	adds r3, r7, #0
	bl sub_8038914
	ldr r0, _080352F8
	adds r0, #0x48
	adds r0, r4, r0
	ldr r0, [r0]
	str r0, [sp]
	ldrb r0, [r5, #0xb]
	str r0, [sp, #4]
	str r6, [sp, #8]
	mov r0, r8
	mov r1, sb
	add r2, sp, #0xc
	adds r3, r7, #0
	bl sub_8038914
	ldr r0, _080352F8
	adds r0, #0x4c
	adds r0, r4, r0
	ldr r0, [r0]
	str r0, [sp]
	ldrb r0, [r5, #0xc]
	str r0, [sp, #4]
	str r6, [sp, #8]
	mov r0, r8
	mov r1, sb
	add r2, sp, #0xc
	adds r3, r7, #0
	bl sub_8038914
	ldr r0, _080352F8
	adds r0, #0x50
	adds r0, r4, r0
	ldr r0, [r0]
	str r0, [sp]
	ldrb r0, [r5, #0xd]
	str r0, [sp, #4]
	str r6, [sp, #8]
	mov r0, r8
	mov r1, sb
	add r2, sp, #0xc
	adds r3, r7, #0
	bl sub_8038914
	ldr r0, _080352F8
	adds r0, #0x54
	adds r0, r4, r0
	ldr r0, [r0]
	str r0, [sp]
	ldrb r0, [r5, #0xe]
	str r0, [sp, #4]
	str r6, [sp, #8]
	mov r0, r8
	mov r1, sb
	add r2, sp, #0xc
	adds r3, r7, #0
	bl sub_8038914
	ldr r0, _080352F8
	adds r0, #0x58
	adds r0, r4, r0
	ldr r0, [r0]
	str r0, [sp]
	ldrb r0, [r5, #0xf]
	str r0, [sp, #4]
	str r6, [sp, #8]
	mov r0, r8
	mov r1, sb
	add r2, sp, #0xc
	adds r3, r7, #0
	bl sub_8038914
	ldr r0, _080352F8
	adds r0, #0x5c
	adds r0, r4, r0
	ldr r0, [r0]
	str r0, [sp]
	ldrb r0, [r5, #0x10]
	str r0, [sp, #4]
	str r6, [sp, #8]
	mov r0, r8
	mov r1, sb
	add r2, sp, #0xc
	adds r3, r7, #0
	bl sub_8038914
	ldr r0, _080352F8
	adds r0, #0x60
	adds r0, r4, r0
	ldr r0, [r0]
	str r0, [sp]
	ldrb r0, [r5, #0x11]
	str r0, [sp, #4]
	str r6, [sp, #8]
	mov r0, r8
	mov r1, sb
	add r2, sp, #0xc
	adds r3, r7, #0
	bl sub_8038914
	ldr r0, _080352F8
	adds r0, #0x64
	adds r0, r4, r0
	ldr r0, [r0]
	str r0, [sp]
	ldrb r0, [r5, #0x12]
	str r0, [sp, #4]
	str r6, [sp, #8]
	mov r0, r8
	mov r1, sb
	add r2, sp, #0xc
	adds r3, r7, #0
	bl sub_8038914
	ldr r0, _080352F8
	adds r0, #0x68
	adds r0, r4, r0
	ldr r0, [r0]
	str r0, [sp]
	ldrb r0, [r5, #0x13]
	str r0, [sp, #4]
	str r6, [sp, #8]
	mov r0, r8
	mov r1, sb
	add r2, sp, #0xc
	adds r3, r7, #0
	bl sub_8038914
	ldr r0, _080352F8
	adds r0, #0x6c
	adds r0, r4, r0
	ldr r0, [r0]
	str r0, [sp]
	ldrb r0, [r5, #0x14]
	str r0, [sp, #4]
	str r6, [sp, #8]
	mov r0, r8
	mov r1, sb
	add r2, sp, #0xc
	adds r3, r7, #0
	bl sub_8038914
	ldr r0, _080352F8
	adds r0, #0x70
	adds r0, r4, r0
	str r0, [sp]
	movs r4, #1
	str r4, [sp, #4]
	str r6, [sp, #8]
	mov r0, r8
	mov r1, sb
	add r2, sp, #0xc
	adds r3, r7, #0
	bl sub_8038914
	ldr r0, _080352F8
	adds r0, #0x71
	ldr r1, [sp, #0x4c]
	adds r0, r1, r0
	str r0, [sp]
	str r4, [sp, #4]
	str r6, [sp, #8]
	mov r0, r8
	mov r1, sb
	add r2, sp, #0xc
	adds r3, r7, #0
	bl sub_8038914
	ldr r0, _080352F8
	adds r0, #0x72
	ldr r2, [sp, #0x4c]
	adds r0, r2, r0
	str r0, [sp]
	str r4, [sp, #4]
	str r6, [sp, #8]
	mov r0, r8
	mov r1, sb
	add r2, sp, #0xc
	adds r3, r7, #0
	bl sub_8038914
	ldr r0, _080352F8
	adds r0, #0x73
	ldr r3, [sp, #0x4c]
	adds r0, r3, r0
	str r0, [sp]
	str r4, [sp, #4]
	str r6, [sp, #8]
	mov r0, r8
	mov r1, sb
	add r2, sp, #0xc
	adds r3, r7, #0
	bl sub_8038914
	ldr r0, _080352F8
	adds r0, #0x74
	ldr r5, [sp, #0x4c]
	adds r0, r5, r0
	str r0, [sp]
	str r4, [sp, #4]
	str r6, [sp, #8]
	mov r0, r8
	mov r1, sb
	add r2, sp, #0xc
	adds r3, r7, #0
	bl sub_8038914
	ldr r6, _080352FC
	adds r0, r5, r6
	str r0, [sp]
	str r4, [sp, #4]
	mov r0, sl
	str r0, [sp, #8]
	mov r0, r8
	mov r1, sb
	add r2, sp, #0xc
	adds r3, r7, #0
	bl sub_8038914
	ldr r0, _08035300
	str r0, [sp]
	movs r0, #6
	str r0, [sp, #4]
	mov r1, sl
	str r1, [sp, #8]
	mov r0, r8
	mov r1, sb
	add r2, sp, #0xc
	adds r3, r7, #0
	bl sub_8038914
	movs r0, #0xc4
	ldr r2, [sp, #0x24]
	adds r4, r2, #0
	muls r4, r0, r4
	ldr r3, _08035304
	adds r0, r4, r3
	ldr r0, [r0]
	str r0, [sp]
	ldr r6, _08035308
	adds r5, r4, r6
	ldrb r0, [r5]
	str r0, [sp, #4]
	mov r0, sl
	str r0, [sp, #8]
	mov r0, r8
	mov r1, sb
	add r2, sp, #0xc
	adds r3, r7, #0
	bl sub_8038914
	adds r0, r6, #0
	adds r0, #0x2c
	adds r0, r4, r0
	ldr r0, [r0]
	str r0, [sp]
	ldrb r0, [r5, #1]
	str r0, [sp, #4]
	mov r1, sl
	str r1, [sp, #8]
	mov r0, r8
	mov r1, sb
	add r2, sp, #0xc
	adds r3, r7, #0
	bl sub_8038914
	adds r0, r6, #0
	adds r0, #0x30
	adds r0, r4, r0
	ldr r0, [r0]
	str r0, [sp]
	ldrb r0, [r5, #2]
	str r0, [sp, #4]
	mov r2, sl
	str r2, [sp, #8]
	mov r0, r8
	mov r1, sb
	add r2, sp, #0xc
	adds r3, r7, #0
	bl sub_8038914
	adds r0, r6, #0
	adds r0, #0x34
	adds r0, r4, r0
	ldr r0, [r0]
	str r0, [sp]
	ldrb r0, [r5, #3]
	str r0, [sp, #4]
	mov r3, sl
	str r3, [sp, #8]
	mov r0, r8
	mov r1, sb
	add r2, sp, #0xc
	adds r3, r7, #0
	bl sub_8038914
	adds r0, r6, #0
	adds r0, #0x38
	adds r0, r4, r0
	ldr r0, [r0]
	str r0, [sp]
	ldrb r0, [r5, #4]
	str r0, [sp, #4]
	mov r6, sl
	str r6, [sp, #8]
	mov r0, r8
	mov r1, sb
	add r2, sp, #0xc
	adds r3, r7, #0
	bl sub_8038914
	ldr r0, _08035308
	adds r0, #0x3c
	adds r0, r4, r0
	ldr r0, [r0]
	str r0, [sp]
	ldrb r0, [r5, #5]
	str r0, [sp, #4]
	str r6, [sp, #8]
	mov r0, r8
	mov r1, sb
	add r2, sp, #0xc
	adds r3, r7, #0
	bl sub_8038914
	ldr r0, _08035308
	adds r0, #0x40
	adds r0, r4, r0
	ldr r0, [r0]
	str r0, [sp]
	ldrb r0, [r5, #6]
	str r0, [sp, #4]
	b _0803530C
	.align 2, 0
_080352F8: .4byte 0x0203E170
_080352FC: .4byte 0x0203E1E5
_08035300: .4byte 0x0203E11C
_08035304: .4byte 0x0203E468
_08035308: .4byte 0x0203E440
_0803530C:
	str r6, [sp, #8]
	mov r0, r8
	mov r1, sb
	add r2, sp, #0xc
	adds r3, r7, #0
	bl sub_8038914
	ldr r0, _080356FC
	adds r0, #0x44
	adds r0, r4, r0
	ldr r0, [r0]
	str r0, [sp]
	ldrb r0, [r5, #7]
	str r0, [sp, #4]
	str r6, [sp, #8]
	mov r0, r8
	mov r1, sb
	add r2, sp, #0xc
	adds r3, r7, #0
	bl sub_8038914
	ldr r0, _080356FC
	adds r0, #0x48
	adds r0, r4, r0
	ldr r0, [r0]
	str r0, [sp]
	ldrb r0, [r5, #8]
	str r0, [sp, #4]
	str r6, [sp, #8]
	mov r0, r8
	mov r1, sb
	add r2, sp, #0xc
	adds r3, r7, #0
	bl sub_8038914
	ldr r0, _080356FC
	adds r0, #0x4c
	adds r0, r4, r0
	ldr r0, [r0]
	str r0, [sp]
	ldrb r0, [r5, #9]
	str r0, [sp, #4]
	str r6, [sp, #8]
	mov r0, r8
	mov r1, sb
	add r2, sp, #0xc
	adds r3, r7, #0
	bl sub_8038914
	ldr r0, _080356FC
	adds r0, #0x50
	adds r0, r4, r0
	ldr r0, [r0]
	str r0, [sp]
	ldrb r0, [r5, #0xa]
	str r0, [sp, #4]
	str r6, [sp, #8]
	mov r0, r8
	mov r1, sb
	add r2, sp, #0xc
	adds r3, r7, #0
	bl sub_8038914
	ldr r0, _080356FC
	adds r0, #0x54
	adds r0, r4, r0
	ldr r0, [r0]
	str r0, [sp]
	ldrb r0, [r5, #0xb]
	str r0, [sp, #4]
	str r6, [sp, #8]
	mov r0, r8
	mov r1, sb
	add r2, sp, #0xc
	adds r3, r7, #0
	bl sub_8038914
	ldr r0, _080356FC
	adds r0, #0x58
	adds r0, r4, r0
	ldr r0, [r0]
	str r0, [sp]
	ldrb r0, [r5, #0xc]
	str r0, [sp, #4]
	str r6, [sp, #8]
	mov r0, r8
	mov r1, sb
	add r2, sp, #0xc
	adds r3, r7, #0
	bl sub_8038914
	ldr r1, _08035700
	adds r0, r1, r4
	ldr r0, [r0]
	str r0, [sp]
	ldrb r0, [r5, #0xd]
	str r0, [sp, #4]
	ldr r2, [sp, #0x28]
	str r2, [sp, #8]
	mov r0, r8
	mov r1, sb
	add r2, sp, #0xc
	adds r3, r7, #0
	bl sub_8038914
	add r6, sp, #0x14
	ldr r0, _080356FC
	adds r0, #0x60
	adds r0, r4, r0
	ldr r0, [r0]
	str r0, [sp]
	ldrb r0, [r5, #0xe]
	str r0, [sp, #4]
	ldr r3, [sp, #0x28]
	str r3, [sp, #8]
	mov r0, r8
	ldr r1, [sp, #0x2c]
	add r2, sp, #0xc
	adds r3, r6, #0
	bl sub_8038914
	ldr r0, _080356FC
	adds r0, #0x64
	adds r0, r4, r0
	ldr r0, [r0]
	str r0, [sp]
	ldrb r0, [r5, #0xf]
	str r0, [sp, #4]
	ldr r0, [sp, #0x28]
	str r0, [sp, #8]
	mov r0, r8
	ldr r1, [sp, #0x2c]
	add r2, sp, #0xc
	adds r3, r6, #0
	bl sub_8038914
	ldr r0, _080356FC
	adds r0, #0x68
	adds r0, r4, r0
	ldr r0, [r0]
	str r0, [sp]
	ldrb r0, [r5, #0x10]
	str r0, [sp, #4]
	ldr r1, [sp, #0x28]
	str r1, [sp, #8]
	mov r0, r8
	ldr r1, [sp, #0x2c]
	add r2, sp, #0xc
	adds r3, r6, #0
	bl sub_8038914
	ldr r0, _080356FC
	adds r0, #0x6c
	adds r0, r4, r0
	ldr r0, [r0]
	str r0, [sp]
	ldrb r0, [r5, #0x11]
	str r0, [sp, #4]
	ldr r2, [sp, #0x28]
	str r2, [sp, #8]
	mov r0, r8
	ldr r1, [sp, #0x2c]
	add r2, sp, #0xc
	adds r3, r6, #0
	bl sub_8038914
	ldr r0, _080356FC
	adds r0, #0x70
	adds r0, r4, r0
	ldr r0, [r0]
	str r0, [sp]
	ldrb r0, [r5, #0x1f]
	str r0, [sp, #4]
	ldr r3, [sp, #0x28]
	str r3, [sp, #8]
	mov r0, r8
	ldr r1, [sp, #0x2c]
	add r2, sp, #0xc
	adds r3, r6, #0
	bl sub_8038914
	ldr r0, _080356FC
	adds r0, #0x7c
	adds r0, r4, r0
	ldr r0, [r0]
	str r0, [sp]
	adds r0, r5, #0
	adds r0, #0x22
	ldrb r0, [r0]
	str r0, [sp, #4]
	ldr r0, [sp, #0x28]
	str r0, [sp, #8]
	mov r0, r8
	ldr r1, [sp, #0x2c]
	add r2, sp, #0xc
	adds r3, r6, #0
	bl sub_8038914
	ldr r0, _080356FC
	adds r0, #0x80
	adds r0, r4, r0
	ldr r0, [r0]
	str r0, [sp]
	adds r0, r5, #0
	adds r0, #0x23
	ldrb r0, [r0]
	str r0, [sp, #4]
	ldr r1, [sp, #0x28]
	str r1, [sp, #8]
	mov r0, r8
	ldr r1, [sp, #0x2c]
	add r2, sp, #0xc
	adds r3, r6, #0
	bl sub_8038914
	ldr r0, _080356FC
	adds r0, #0x84
	adds r0, r4, r0
	ldr r0, [r0]
	str r0, [sp]
	adds r0, r5, #0
	adds r0, #0x24
	ldrb r0, [r0]
	str r0, [sp, #4]
	ldr r2, [sp, #0x28]
	str r2, [sp, #8]
	mov r0, r8
	ldr r1, [sp, #0x2c]
	add r2, sp, #0xc
	adds r3, r6, #0
	bl sub_8038914
	ldr r0, _080356FC
	adds r0, #0x88
	adds r0, r4, r0
	ldr r0, [r0]
	str r0, [sp]
	adds r0, r5, #0
	adds r0, #0x25
	ldrb r0, [r0]
	str r0, [sp, #4]
	ldr r3, [sp, #0x28]
	str r3, [sp, #8]
	mov r0, r8
	ldr r1, [sp, #0x2c]
	add r2, sp, #0xc
	adds r3, r6, #0
	bl sub_8038914
	ldr r1, _08035704
	adds r0, r4, r1
	ldr r0, [r0]
	str r0, [sp]
	adds r0, r5, #0
	adds r0, #0x20
	ldrb r0, [r0]
	str r0, [sp, #4]
	ldr r2, [sp, #0x28]
	str r2, [sp, #8]
	mov r0, r8
	ldr r1, [sp, #0x2c]
	add r2, sp, #0xc
	adds r3, r6, #0
	bl sub_8038914
	ldr r3, _08035708
	adds r4, r4, r3
	ldr r0, [r4]
	str r0, [sp]
	adds r0, r5, #0
	adds r0, #0x21
	ldrb r0, [r0]
	str r0, [sp, #4]
	ldr r4, [sp, #0x28]
	str r4, [sp, #8]
	mov r0, r8
	ldr r1, [sp, #0x2c]
	add r2, sp, #0xc
	adds r3, r6, #0
	bl sub_8038914
	ldr r4, _0803570C
	adds r0, r4, #4
	ldr r5, [sp, #0x44]
	adds r0, r5, r0
	ldr r0, [r0]
	str r0, [sp]
	adds r5, r5, r4
	ldrb r0, [r5]
	str r0, [sp, #4]
	ldr r0, [sp, #0x28]
	str r0, [sp, #8]
	mov r0, r8
	ldr r1, [sp, #0x2c]
	add r2, sp, #0xc
	adds r3, r6, #0
	bl sub_8038914
	adds r0, r4, #0
	adds r0, #8
	ldr r1, [sp, #0x44]
	adds r0, r1, r0
	ldr r0, [r0]
	str r0, [sp]
	ldrb r0, [r5, #1]
	str r0, [sp, #4]
	ldr r2, [sp, #0x28]
	str r2, [sp, #8]
	mov r0, r8
	ldr r1, [sp, #0x2c]
	add r2, sp, #0xc
	adds r3, r6, #0
	bl sub_8038914
	adds r4, #0xc
	ldr r3, [sp, #0x44]
	adds r4, r3, r4
	ldr r0, [r4]
	str r0, [sp]
	ldrb r0, [r5, #2]
	str r0, [sp, #4]
	ldr r4, [sp, #0x28]
	str r4, [sp, #8]
	mov r0, r8
	ldr r1, [sp, #0x2c]
	add r2, sp, #0xc
	adds r3, r6, #0
	bl sub_8038914
	ldr r5, [sp, #0x44]
	adds r5, #0x10
	str r5, [sp, #0x44]
	ldr r6, [sp, #0x48]
	adds r6, #0x78
	str r6, [sp, #0x48]
	ldr r0, [sp, #0x4c]
	adds r0, #0x78
	str r0, [sp, #0x4c]
	ldr r1, [sp, #0x24]
	adds r1, #1
	str r1, [sp, #0x24]
	cmp r1, #5
	bgt _080355BC
	b _08034F22
_080355BC:
	ldr r0, _08035710
	str r0, [sp]
	movs r0, #0x13
	str r0, [sp, #4]
	ldr r2, [sp, #0x3c]
	str r2, [sp, #8]
	mov r0, r8
	ldr r1, [sp, #0x34]
	add r2, sp, #0xc
	ldr r3, [sp, #0x38]
	bl sub_8038914
	ldr r3, [sp, #0x14]
	cmp r3, #0
	beq _080355FC
	add r2, sp, #0xc
	adds r0, r2, #0
	ldrb r1, [r0]
	movs r0, #7
	subs r0, r0, r3
	lsls r1, r0
	strb r1, [r2]
	ldr r2, [sp, #0x10]
	mov r3, r8
	adds r0, r3, r2
	strb r1, [r0]
	ldrb r1, [r0]
	ldr r0, [sp, #0x18]
	adds r0, r0, r1
	str r0, [sp, #0x18]
	adds r2, #1
	str r2, [sp, #0x10]
_080355FC:
	movs r4, #0
	str r4, [sp, #0x24]
_08035600:
	movs r6, #0
	movs r0, #0xc4
	ldr r5, [sp, #0x24]
	adds r1, r5, #0
	muls r1, r0, r1
	ldr r7, _080356FC
	adds r0, r1, r7
	ldrb r0, [r0, #0x12]
	cmp r6, r0
	blt _08035616
	b _080357DC
_08035616:
	ldr r0, _08035714
	adds r0, r0, r1
	mov sb, r0
	ldr r0, _08035714
	subs r0, #0x90
	adds r1, r1, r0
	str r1, [sp, #0x30]
_08035624:
	ldr r2, [sp, #0x10]
	mov r3, r8
	adds r1, r3, r2
	mov r4, sb
	ldr r0, [r4]
	lsls r5, r6, #4
	adds r0, r5, r0
	ldrb r0, [r0, #1]
	strb r0, [r1]
	ldrb r0, [r1]
	ldr r1, [sp, #0x18]
	adds r1, r1, r0
	str r1, [sp, #0x18]
	adds r2, #1
	str r2, [sp, #0x10]
	adds r3, r3, r2
	ldr r0, [r4]
	adds r0, r5, r0
	ldrb r0, [r0, #2]
	strb r0, [r3]
	ldrb r0, [r3]
	adds r1, r1, r0
	str r1, [sp, #0x18]
	adds r2, #1
	str r2, [sp, #0x10]
	mov r7, r8
	adds r3, r7, r2
	ldr r0, [r4]
	adds r0, r5, r0
	ldrb r0, [r0, #3]
	strb r0, [r3]
	ldrb r0, [r3]
	adds r1, r1, r0
	str r1, [sp, #0x18]
	adds r2, #1
	str r2, [sp, #0x10]
	adds r3, r7, r2
	ldr r0, [r4]
	adds r0, r5, r0
	ldrb r0, [r0, #4]
	strb r0, [r3]
	ldrb r0, [r3]
	adds r1, r1, r0
	str r1, [sp, #0x18]
	adds r2, #1
	str r2, [sp, #0x10]
	movs r0, #0
	mov sl, r0
	ldr r0, [r4]
	adds r0, r5, r0
	mov ip, r5
	adds r6, #1
	str r6, [sp, #0x40]
	ldrb r0, [r0]
	cmp sl, r0
	blt _08035696
	b _080357D0
_08035696:
	movs r0, #0xc4
	ldr r1, [sp, #0x24]
	muls r0, r1, r0
	ldr r2, _08035714
	adds r7, r0, r2
_080356A0:
	ldr r1, [sp, #0x10]
	mov r3, r8
	adds r2, r3, r1
	ldr r0, [r7]
	adds r0, r5, r0
	ldr r0, [r0, #0xc]
	mov r4, sl
	lsls r6, r4, #3
	adds r0, r6, r0
	ldrb r0, [r0]
	strb r0, [r2]
	ldrb r0, [r2]
	ldr r2, [sp, #0x18]
	adds r2, r2, r0
	str r2, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	adds r3, r3, r1
	ldr r0, [r7]
	adds r0, r5, r0
	ldr r0, [r0, #0xc]
	adds r0, r6, r0
	ldrb r0, [r0, #1]
	strb r0, [r3]
	ldrb r0, [r3]
	adds r2, r2, r0
	str r2, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	mov r0, r8
	adds r3, r0, r1
	ldr r0, [r7]
	adds r0, r5, r0
	ldr r0, [r0, #0xc]
	adds r0, r6, r0
	ldrb r0, [r0, #2]
	strb r0, [r3]
	ldrb r0, [r3]
	adds r2, r2, r0
	str r2, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	mov r4, r8
	adds r3, r4, r1
	b _08035718
	.align 2, 0
_080356FC: .4byte 0x0203E440
_08035700: .4byte 0x0203E49C
_08035704: .4byte 0x0203E4B4
_08035708: .4byte 0x0203E4B8
_0803570C: .4byte 0x0203E8D8
_08035710: .4byte 0x0203E0FC
_08035714: .4byte 0x0203E4D0
_08035718:
	ldr r0, [r7]
	adds r0, r5, r0
	ldr r0, [r0, #0xc]
	adds r0, r6, r0
	ldrb r0, [r0, #3]
	strb r0, [r3]
	ldrb r0, [r3]
	adds r2, r2, r0
	str r2, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	adds r3, r4, r1
	ldr r0, [r7]
	adds r0, r5, r0
	ldr r0, [r0, #0xc]
	adds r0, r6, r0
	ldrh r0, [r0, #4]
	strb r0, [r3]
	ldrb r0, [r3]
	adds r2, r2, r0
	str r2, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	adds r3, r4, r1
	ldr r0, [r7]
	adds r0, r5, r0
	ldr r0, [r0, #0xc]
	adds r0, r6, r0
	ldrh r0, [r0, #4]
	lsrs r0, r0, #8
	strb r0, [r3]
	ldrb r0, [r3]
	adds r3, r2, r0
	str r3, [sp, #0x18]
	adds r2, r1, #1
	str r2, [sp, #0x10]
	ldr r0, [r7]
	adds r0, r5, r0
	ldr r0, [r0, #0xc]
	adds r4, r6, r0
	ldrh r0, [r4]
	ldr r1, _0803578C
	cmp r0, r1
	bne _08035790
	mov r4, r8
	adds r1, r4, r2
	movs r0, #1
	strb r0, [r1]
	adds r3, #1
	adds r1, r2, #1
	adds r2, r4, r1
	movs r0, #0
	strb r0, [r2]
	str r3, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	b _080357BE
	.align 2, 0
_0803578C: .4byte 0x00000101
_08035790:
	mov r0, r8
	adds r1, r0, r2
	ldrh r0, [r4, #6]
	strb r0, [r1]
	ldrb r1, [r1]
	adds r1, r3, r1
	str r1, [sp, #0x18]
	adds r2, #1
	str r2, [sp, #0x10]
	mov r4, r8
	adds r3, r4, r2
	ldr r0, [r7]
	adds r0, r5, r0
	ldr r0, [r0, #0xc]
	adds r0, r6, r0
	ldrh r0, [r0, #6]
	lsrs r0, r0, #8
	strb r0, [r3]
	ldrb r0, [r3]
	adds r1, r1, r0
	str r1, [sp, #0x18]
	adds r2, #1
	str r2, [sp, #0x10]
_080357BE:
	movs r5, #1
	add sl, r5
	ldr r0, [r7]
	mov r5, ip
	adds r0, r5, r0
	ldrb r0, [r0]
	cmp sl, r0
	bge _080357D0
	b _080356A0
_080357D0:
	ldr r6, [sp, #0x40]
	ldr r7, [sp, #0x30]
	ldrb r7, [r7, #0x12]
	cmp r6, r7
	bge _080357DC
	b _08035624
_080357DC:
	ldr r0, [sp, #0x24]
	adds r0, #1
	str r0, [sp, #0x24]
	cmp r0, #5
	bgt _080357E8
	b _08035600
_080357E8:
	movs r1, #0
	str r1, [sp, #0x24]
	ldr r5, _08035B74
	movs r2, #0xc4
	mov sl, r2
	mov sb, r5
	movs r7, #0xc4
_080357F6:
	movs r6, #0
	ldr r3, [sp, #0x24]
	mov r0, sl
	muls r0, r3, r0
	adds r0, r0, r5
	adds r3, #1
	mov ip, r3
	ldrb r0, [r0, #0x13]
	cmp r6, r0
	bge _0803583A
	ldr r4, [sp, #0x24]
	adds r1, r4, #0
	muls r1, r7, r1
	ldr r0, _08035B78
	adds r4, r1, r0
	mov r0, sb
	adds r3, r1, r0
_08035818:
	ldr r2, [sp, #0x10]
	mov r0, r8
	adds r1, r0, r2
	ldr r0, [r4]
	adds r0, r0, r6
	ldrb r0, [r0]
	strb r0, [r1]
	ldrb r1, [r1]
	ldr r0, [sp, #0x18]
	adds r0, r0, r1
	str r0, [sp, #0x18]
	adds r2, #1
	str r2, [sp, #0x10]
	adds r6, #1
	ldrb r1, [r3, #0x13]
	cmp r6, r1
	blt _08035818
_0803583A:
	movs r6, #0
	ldr r2, [sp, #0x24]
	mov r0, sl
	muls r0, r2, r0
	adds r0, r0, r5
	ldrb r0, [r0, #0x14]
	cmp r6, r0
	bge _08035878
	adds r1, r2, #0
	muls r1, r7, r1
	ldr r0, _08035B7C
	adds r4, r1, r0
	mov r0, sb
	adds r3, r1, r0
_08035856:
	ldr r2, [sp, #0x10]
	mov r0, r8
	adds r1, r0, r2
	ldr r0, [r4]
	adds r0, r0, r6
	ldrb r0, [r0]
	strb r0, [r1]
	ldrb r1, [r1]
	ldr r0, [sp, #0x18]
	adds r0, r0, r1
	str r0, [sp, #0x18]
	adds r2, #1
	str r2, [sp, #0x10]
	adds r6, #1
	ldrb r1, [r3, #0x14]
	cmp r6, r1
	blt _08035856
_08035878:
	movs r6, #0
	ldr r2, [sp, #0x24]
	mov r0, sl
	muls r0, r2, r0
	adds r0, r0, r5
	ldrb r0, [r0, #0x15]
	cmp r6, r0
	bge _080358B6
	adds r1, r2, #0
	muls r1, r7, r1
	ldr r0, _08035B80
	adds r4, r1, r0
	mov r0, sb
	adds r3, r1, r0
_08035894:
	ldr r2, [sp, #0x10]
	mov r0, r8
	adds r1, r0, r2
	ldr r0, [r4]
	adds r0, r0, r6
	ldrb r0, [r0]
	strb r0, [r1]
	ldrb r1, [r1]
	ldr r0, [sp, #0x18]
	adds r0, r0, r1
	str r0, [sp, #0x18]
	adds r2, #1
	str r2, [sp, #0x10]
	adds r6, #1
	ldrb r1, [r3, #0x15]
	cmp r6, r1
	blt _08035894
_080358B6:
	movs r6, #0
	ldr r2, [sp, #0x24]
	mov r0, sl
	muls r0, r2, r0
	adds r0, r0, r5
	ldrb r0, [r0, #0x16]
	cmp r6, r0
	bge _080358F4
	adds r1, r2, #0
	muls r1, r7, r1
	ldr r0, _08035B84
	adds r4, r1, r0
	mov r0, sb
	adds r3, r1, r0
_080358D2:
	ldr r2, [sp, #0x10]
	mov r0, r8
	adds r1, r0, r2
	ldr r0, [r4]
	adds r0, r0, r6
	ldrb r0, [r0]
	strb r0, [r1]
	ldrb r1, [r1]
	ldr r0, [sp, #0x18]
	adds r0, r0, r1
	str r0, [sp, #0x18]
	adds r2, #1
	str r2, [sp, #0x10]
	adds r6, #1
	ldrb r1, [r3, #0x16]
	cmp r6, r1
	blt _080358D2
_080358F4:
	movs r6, #0
	ldr r2, [sp, #0x24]
	mov r0, sl
	muls r0, r2, r0
	adds r0, r0, r5
	ldrb r0, [r0, #0x17]
	cmp r6, r0
	bge _08035932
	adds r1, r2, #0
	muls r1, r7, r1
	ldr r0, _08035B88
	adds r4, r1, r0
	mov r0, sb
	adds r3, r1, r0
_08035910:
	ldr r2, [sp, #0x10]
	mov r0, r8
	adds r1, r0, r2
	ldr r0, [r4]
	adds r0, r0, r6
	ldrb r0, [r0]
	strb r0, [r1]
	ldrb r1, [r1]
	ldr r0, [sp, #0x18]
	adds r0, r0, r1
	str r0, [sp, #0x18]
	adds r2, #1
	str r2, [sp, #0x10]
	adds r6, #1
	ldrb r1, [r3, #0x17]
	cmp r6, r1
	blt _08035910
_08035932:
	movs r6, #0
	ldr r2, [sp, #0x24]
	mov r0, sl
	muls r0, r2, r0
	adds r0, r0, r5
	ldrb r0, [r0, #0x18]
	cmp r6, r0
	bge _08035970
	adds r1, r2, #0
	muls r1, r7, r1
	ldr r0, _08035B8C
	adds r4, r1, r0
	mov r0, sb
	adds r3, r1, r0
_0803594E:
	ldr r2, [sp, #0x10]
	mov r0, r8
	adds r1, r0, r2
	ldr r0, [r4]
	adds r0, r0, r6
	ldrb r0, [r0]
	strb r0, [r1]
	ldrb r1, [r1]
	ldr r0, [sp, #0x18]
	adds r0, r0, r1
	str r0, [sp, #0x18]
	adds r2, #1
	str r2, [sp, #0x10]
	adds r6, #1
	ldrb r1, [r3, #0x18]
	cmp r6, r1
	blt _0803594E
_08035970:
	movs r6, #0
	ldr r2, [sp, #0x24]
	mov r0, sl
	muls r0, r2, r0
	adds r0, r0, r5
	ldrb r0, [r0, #0x19]
	cmp r6, r0
	bge _080359AE
	adds r1, r2, #0
	muls r1, r7, r1
	ldr r0, _08035B90
	adds r4, r1, r0
	mov r0, sb
	adds r3, r1, r0
_0803598C:
	ldr r2, [sp, #0x10]
	mov r0, r8
	adds r1, r0, r2
	ldr r0, [r4]
	adds r0, r0, r6
	ldrb r0, [r0]
	strb r0, [r1]
	ldrb r1, [r1]
	ldr r0, [sp, #0x18]
	adds r0, r0, r1
	str r0, [sp, #0x18]
	adds r2, #1
	str r2, [sp, #0x10]
	adds r6, #1
	ldrb r1, [r3, #0x19]
	cmp r6, r1
	blt _0803598C
_080359AE:
	movs r6, #0
	ldr r2, [sp, #0x24]
	mov r0, sl
	muls r0, r2, r0
	adds r0, r0, r5
	ldrb r0, [r0, #0x1a]
	cmp r6, r0
	bge _080359EC
	adds r1, r2, #0
	muls r1, r7, r1
	ldr r0, _08035B94
	adds r4, r1, r0
	mov r0, sb
	adds r3, r1, r0
_080359CA:
	ldr r2, [sp, #0x10]
	mov r0, r8
	adds r1, r0, r2
	ldr r0, [r4]
	adds r0, r0, r6
	ldrb r0, [r0]
	strb r0, [r1]
	ldrb r1, [r1]
	ldr r0, [sp, #0x18]
	adds r0, r0, r1
	str r0, [sp, #0x18]
	adds r2, #1
	str r2, [sp, #0x10]
	adds r6, #1
	ldrb r1, [r3, #0x1a]
	cmp r6, r1
	blt _080359CA
_080359EC:
	movs r6, #0
	ldr r2, [sp, #0x24]
	mov r0, sl
	muls r0, r2, r0
	adds r0, r0, r5
	ldrb r0, [r0, #0x1b]
	cmp r6, r0
	bge _08035A2A
	adds r1, r2, #0
	muls r1, r7, r1
	ldr r0, _08035B98
	adds r4, r1, r0
	mov r0, sb
	adds r3, r1, r0
_08035A08:
	ldr r2, [sp, #0x10]
	mov r0, r8
	adds r1, r0, r2
	ldr r0, [r4]
	adds r0, r0, r6
	ldrb r0, [r0]
	strb r0, [r1]
	ldrb r1, [r1]
	ldr r0, [sp, #0x18]
	adds r0, r0, r1
	str r0, [sp, #0x18]
	adds r2, #1
	str r2, [sp, #0x10]
	adds r6, #1
	ldrb r1, [r3, #0x1b]
	cmp r6, r1
	blt _08035A08
_08035A2A:
	movs r6, #0
	ldr r2, [sp, #0x24]
	mov r0, sl
	muls r0, r2, r0
	adds r0, r0, r5
	ldrb r0, [r0, #0x1c]
	cmp r6, r0
	bge _08035A68
	adds r1, r2, #0
	muls r1, r7, r1
	ldr r0, _08035B9C
	adds r4, r1, r0
	mov r0, sb
	adds r3, r1, r0
_08035A46:
	ldr r2, [sp, #0x10]
	mov r0, r8
	adds r1, r0, r2
	ldr r0, [r4]
	adds r0, r0, r6
	ldrb r0, [r0]
	strb r0, [r1]
	ldrb r1, [r1]
	ldr r0, [sp, #0x18]
	adds r0, r0, r1
	str r0, [sp, #0x18]
	adds r2, #1
	str r2, [sp, #0x10]
	adds r6, #1
	ldrb r1, [r3, #0x1c]
	cmp r6, r1
	blt _08035A46
_08035A68:
	movs r6, #0
	ldr r2, [sp, #0x24]
	mov r0, sl
	muls r0, r2, r0
	adds r0, r0, r5
	ldrb r0, [r0, #0x1d]
	cmp r6, r0
	bge _08035AA6
	adds r1, r2, #0
	muls r1, r7, r1
	ldr r0, _08035BA0
	adds r4, r1, r0
	mov r0, sb
	adds r3, r1, r0
_08035A84:
	ldr r2, [sp, #0x10]
	mov r0, r8
	adds r1, r0, r2
	ldr r0, [r4]
	adds r0, r0, r6
	ldrb r0, [r0]
	strb r0, [r1]
	ldrb r1, [r1]
	ldr r0, [sp, #0x18]
	adds r0, r0, r1
	str r0, [sp, #0x18]
	adds r2, #1
	str r2, [sp, #0x10]
	adds r6, #1
	ldrb r1, [r3, #0x1d]
	cmp r6, r1
	blt _08035A84
_08035AA6:
	movs r6, #0
	ldr r2, [sp, #0x24]
	mov r0, sl
	muls r0, r2, r0
	adds r0, r0, r5
	ldrb r0, [r0, #0x1e]
	cmp r6, r0
	bge _08035AE4
	adds r1, r2, #0
	muls r1, r7, r1
	ldr r0, _08035BA4
	adds r3, r1, r0
	mov r0, sb
	adds r4, r1, r0
_08035AC2:
	ldr r2, [sp, #0x10]
	mov r0, r8
	adds r1, r0, r2
	ldr r0, [r3]
	adds r0, r0, r6
	ldrb r0, [r0]
	strb r0, [r1]
	ldrb r1, [r1]
	ldr r0, [sp, #0x18]
	adds r0, r0, r1
	str r0, [sp, #0x18]
	adds r2, #1
	str r2, [sp, #0x10]
	adds r6, #1
	ldrb r1, [r4, #0x1e]
	cmp r6, r1
	blt _08035AC2
_08035AE4:
	mov r2, ip
	str r2, [sp, #0x24]
	cmp r2, #5
	bgt _08035AEE
	b _080357F6
_08035AEE:
	ldr r2, [sp, #0x10]
	mov r3, r8
	adds r1, r3, r2
	movs r0, #0x75
	strb r0, [r1]
	ldr r3, [sp, #0x18]
	adds r2, #1
	mov r5, r8
	adds r4, r5, r2
	ldr r6, _08035BA8
	ldrb r1, [r6]
	lsls r1, r1, #7
	ldr r7, _08035BAC
	ldrb r0, [r7]
	lsls r0, r0, #6
	orrs r1, r0
	ldr r5, _08035BB0
	ldrb r0, [r5]
	lsls r0, r0, #5
	orrs r1, r0
	ldr r6, _08035BB4
	ldrb r0, [r6]
	lsls r0, r0, #4
	orrs r1, r0
	ldr r7, _08035BB8
	ldrb r0, [r7]
	lsls r0, r0, #3
	orrs r1, r0
	ldr r5, _08035BBC
	ldrb r0, [r5]
	lsls r0, r0, #2
	orrs r1, r0
	ldr r6, _08035BC0
	ldrb r0, [r6]
	lsls r0, r0, #1
	orrs r1, r0
	ldr r7, _08035BC4
	ldrb r0, [r7]
	orrs r1, r0
	strb r1, [r4]
	adds r3, #0x75
	adds r3, r3, r1
	adds r2, #1
	mov r0, r8
	adds r4, r0, r2
	ldr r5, _08035BC8
	ldrb r1, [r5]
	lsls r1, r1, #7
	ldr r6, _08035BCC
	ldrb r0, [r6]
	lsls r0, r0, #6
	orrs r1, r0
	ldr r7, _08035BD0
	ldrb r0, [r7]
	lsls r0, r0, #5
	orrs r1, r0
	ldr r5, _08035BD4
	ldrb r0, [r5]
	lsls r0, r0, #4
	orrs r1, r0
	ldr r6, _08035BD8
	ldrb r0, [r6]
	lsls r0, r0, #3
	orrs r1, r0
	ldr r7, _08035BDC
	ldrb r0, [r7]
	b _08035BE0
	.align 2, 0
_08035B74: .4byte 0x0203E440
_08035B78: .4byte 0x0203E4D4
_08035B7C: .4byte 0x0203E4D8
_08035B80: .4byte 0x0203E4DC
_08035B84: .4byte 0x0203E4E0
_08035B88: .4byte 0x0203E4E4
_08035B8C: .4byte 0x0203E4E8
_08035B90: .4byte 0x0203E4EC
_08035B94: .4byte 0x0203E4F0
_08035B98: .4byte 0x0203E4F4
_08035B9C: .4byte 0x0203E4F8
_08035BA0: .4byte 0x0203E4FC
_08035BA4: .4byte 0x0203E500
_08035BA8: .4byte 0x0203E938
_08035BAC: .4byte 0x0203E939
_08035BB0: .4byte 0x0203E133
_08035BB4: .4byte 0x0203E93D
_08035BB8: .4byte 0x0203E93E
_08035BBC: .4byte 0x0203E93F
_08035BC0: .4byte 0x0203E940
_08035BC4: .4byte 0x0203E10F
_08035BC8: .4byte 0x0203E941
_08035BCC: .4byte 0x0203E942
_08035BD0: .4byte 0x0203E943
_08035BD4: .4byte 0x0203E944
_08035BD8: .4byte 0x0203E945
_08035BDC: .4byte 0x0203E946
_08035BE0:
	lsls r0, r0, #2
	orrs r1, r0
	ldr r5, _08035F9C
	ldrb r0, [r5]
	lsls r0, r0, #1
	orrs r1, r0
	ldr r6, _08035FA0
	ldrb r0, [r6]
	orrs r1, r0
	strb r1, [r4]
	ldrb r5, [r4]
	adds r2, #1
	mov r7, r8
	adds r4, r7, r2
	ldr r0, _08035FA4
	ldrb r1, [r0]
	lsls r1, r1, #7
	ldr r6, _08035FA8
	ldrb r0, [r6]
	lsls r0, r0, #6
	orrs r1, r0
	ldr r7, _08035FAC
	ldrb r0, [r7]
	lsls r0, r0, #5
	orrs r1, r0
	ldr r6, _08035FB0
	ldrb r0, [r6]
	lsls r0, r0, #4
	orrs r1, r0
	ldr r7, _08035FB4
	ldrb r0, [r7]
	lsls r0, r0, #3
	orrs r1, r0
	ldr r6, _08035FB8
	ldrb r0, [r6]
	lsls r0, r0, #2
	orrs r1, r0
	ldr r7, _08035FBC
	ldrb r0, [r7]
	lsls r0, r0, #1
	orrs r1, r0
	ldr r6, _08035FC0
	ldrb r0, [r6]
	orrs r1, r0
	strb r1, [r4]
	adds r3, r3, r5
	adds r3, r3, r1
	adds r2, #1
	mov r7, r8
	adds r4, r7, r2
	ldr r0, _08035FC4
	ldrb r1, [r0]
	lsls r1, r1, #7
	ldr r5, _08035FC8
	ldrb r0, [r5]
	lsls r0, r0, #6
	orrs r1, r0
	ldr r6, _08035FCC
	ldrb r0, [r6]
	lsls r0, r0, #5
	orrs r1, r0
	ldr r7, _08035FD0
	ldrb r0, [r7]
	lsls r0, r0, #4
	orrs r1, r0
	ldr r5, _08035FD4
	ldrb r0, [r5]
	lsls r0, r0, #3
	orrs r1, r0
	ldr r6, _08035FD8
	ldrb r0, [r6]
	lsls r0, r0, #2
	orrs r1, r0
	ldr r7, _08035FDC
	ldrb r0, [r7]
	lsls r0, r0, #1
	orrs r1, r0
	ldr r5, _08035FE0
	ldrb r0, [r5]
	orrs r1, r0
	strb r1, [r4]
	ldrb r5, [r4]
	adds r2, #1
	mov r6, r8
	adds r4, r6, r2
	ldr r7, _08035FE4
	ldrb r1, [r7]
	lsls r1, r1, #7
	ldr r6, _08035FE8
	ldrb r0, [r6]
	lsls r0, r0, #6
	orrs r1, r0
	ldr r7, _08035FEC
	ldrb r0, [r7]
	lsls r0, r0, #5
	orrs r1, r0
	ldr r6, _08035FF0
	ldrb r0, [r6]
	lsls r0, r0, #4
	orrs r1, r0
	ldr r7, _08035FF4
	ldrb r0, [r7]
	lsls r0, r0, #3
	orrs r1, r0
	ldr r6, _08035FF8
	ldrb r0, [r6]
	lsls r0, r0, #2
	orrs r1, r0
	ldr r7, _08035FFC
	ldrb r0, [r7]
	lsls r0, r0, #1
	orrs r1, r0
	ldr r6, _08036000
	ldrb r0, [r6]
	orrs r1, r0
	strb r1, [r4]
	adds r3, r3, r5
	adds r3, r3, r1
	adds r2, #1
	mov r7, r8
	adds r4, r7, r2
	ldr r0, _08036004
	ldrb r1, [r0]
	lsls r1, r1, #7
	ldr r5, _08036008
	ldrb r0, [r5]
	lsls r0, r0, #6
	orrs r1, r0
	ldr r6, _0803600C
	ldrb r0, [r6]
	lsls r0, r0, #5
	orrs r1, r0
	ldr r7, _08036010
	ldrb r0, [r7]
	lsls r0, r0, #4
	orrs r1, r0
	ldr r5, _08036014
	ldrb r0, [r5]
	lsls r0, r0, #3
	orrs r1, r0
	ldr r6, _08036018
	ldrb r0, [r6]
	lsls r0, r0, #2
	orrs r1, r0
	ldr r7, _0803601C
	ldrb r0, [r7]
	lsls r0, r0, #1
	orrs r1, r0
	ldr r5, _08036020
	ldrb r0, [r5]
	orrs r1, r0
	strb r1, [r4]
	ldrb r5, [r4]
	adds r2, #1
	mov r6, r8
	adds r4, r6, r2
	ldr r7, _08036024
	ldrb r1, [r7]
	lsls r1, r1, #7
	ldr r6, _08036028
	ldrb r0, [r6]
	lsls r0, r0, #6
	orrs r1, r0
	ldr r7, _0803602C
	ldrb r0, [r7]
	lsls r0, r0, #5
	orrs r1, r0
	ldr r6, _08036030
	ldrb r0, [r6]
	lsls r0, r0, #4
	orrs r1, r0
	ldr r7, _08036034
	ldrb r0, [r7]
	lsls r0, r0, #3
	orrs r1, r0
	ldr r6, _08036038
	ldrb r0, [r6]
	lsls r0, r0, #2
	orrs r1, r0
	ldr r7, _0803603C
	ldrb r0, [r7]
	lsls r0, r0, #1
	orrs r1, r0
	ldr r6, _08036040
	ldrb r0, [r6]
	orrs r1, r0
	strb r1, [r4]
	adds r3, r3, r5
	adds r3, r3, r1
	adds r2, #1
	mov r7, r8
	adds r4, r7, r2
	ldr r0, _08036044
	ldrb r1, [r0]
	lsls r1, r1, #7
	ldr r5, _08036048
	ldrb r0, [r5]
	lsls r0, r0, #6
	orrs r1, r0
	ldr r6, _0803604C
	ldrb r0, [r6]
	lsls r0, r0, #5
	orrs r1, r0
	ldr r7, _08036050
	ldrb r0, [r7]
	lsls r0, r0, #4
	orrs r1, r0
	ldr r5, _08036054
	ldrb r0, [r5]
	lsls r0, r0, #3
	orrs r1, r0
	ldr r6, _08036058
	ldrb r0, [r6]
	lsls r0, r0, #2
	orrs r1, r0
	ldr r7, _0803605C
	ldrb r0, [r7]
	lsls r0, r0, #1
	orrs r1, r0
	ldr r5, _08036060
	ldrb r0, [r5]
	orrs r1, r0
	strb r1, [r4]
	ldrb r5, [r4]
	adds r2, #1
	mov r6, r8
	adds r4, r6, r2
	ldr r7, _08036064
	ldrb r1, [r7]
	lsls r1, r1, #7
	ldr r6, _08036068
	ldrb r0, [r6]
	lsls r0, r0, #6
	orrs r1, r0
	ldr r7, _0803606C
	ldrb r0, [r7]
	lsls r0, r0, #5
	orrs r1, r0
	ldr r6, _08036070
	ldrb r0, [r6]
	lsls r0, r0, #4
	orrs r1, r0
	ldr r7, _08036074
	ldrb r0, [r7]
	lsls r0, r0, #3
	orrs r1, r0
	ldr r6, _08036078
	ldrb r0, [r6]
	lsls r0, r0, #2
	orrs r1, r0
	ldr r7, _0803607C
	ldrb r0, [r7]
	lsls r0, r0, #1
	orrs r1, r0
	ldr r6, _08036080
	ldrb r0, [r6]
	orrs r1, r0
	strb r1, [r4]
	adds r3, r3, r5
	adds r3, r3, r1
	adds r2, #1
	mov r7, r8
	adds r4, r7, r2
	ldr r0, _08036084
	ldrb r1, [r0]
	lsls r1, r1, #7
	ldr r5, _08036088
	ldrb r0, [r5]
	lsls r0, r0, #6
	orrs r1, r0
	ldr r6, _0803608C
	ldrb r0, [r6]
	lsls r0, r0, #5
	orrs r1, r0
	ldr r7, _08036090
	ldrb r0, [r7]
	lsls r0, r0, #4
	orrs r1, r0
	ldr r5, _08036094
	ldrb r0, [r5]
	lsls r0, r0, #3
	orrs r1, r0
	ldr r6, _08036098
	ldrb r0, [r6]
	lsls r0, r0, #2
	orrs r1, r0
	ldr r7, _0803609C
	ldrb r0, [r7]
	lsls r0, r0, #1
	orrs r1, r0
	ldr r5, _080360A0
	ldrb r0, [r5]
	orrs r1, r0
	strb r1, [r4]
	ldrb r5, [r4]
	adds r2, #1
	mov r6, r8
	adds r4, r6, r2
	ldr r7, _080360A4
	ldrb r1, [r7]
	lsls r1, r1, #7
	ldr r6, _080360A8
	ldrb r0, [r6]
	lsls r0, r0, #6
	orrs r1, r0
	ldr r7, _080360AC
	ldrb r0, [r7]
	lsls r0, r0, #5
	orrs r1, r0
	ldr r6, _080360B0
	ldrb r0, [r6]
	lsls r0, r0, #4
	orrs r1, r0
	ldr r7, _080360B4
	ldrb r0, [r7]
	lsls r0, r0, #3
	orrs r1, r0
	ldr r6, _080360B8
	ldrb r0, [r6]
	lsls r0, r0, #2
	orrs r1, r0
	ldr r7, _080360BC
	ldrb r0, [r7]
	lsls r0, r0, #1
	orrs r1, r0
	ldr r6, _080360C0
	ldrb r0, [r6]
	orrs r1, r0
	strb r1, [r4]
	adds r3, r3, r5
	adds r3, r3, r1
	adds r2, #1
	mov r7, r8
	adds r4, r7, r2
	ldr r0, _080360C4
	ldrb r1, [r0]
	lsls r1, r1, #7
	ldr r5, _080360C8
	ldrb r0, [r5]
	lsls r0, r0, #6
	orrs r1, r0
	ldr r6, _080360CC
	ldrb r0, [r6]
	lsls r0, r0, #5
	orrs r1, r0
	ldr r7, _080360D0
	ldrb r0, [r7]
	lsls r0, r0, #4
	orrs r1, r0
	ldr r5, _080360D4
	ldrb r0, [r5]
	lsls r0, r0, #3
	orrs r1, r0
	ldr r6, _080360D8
	ldrb r0, [r6]
	lsls r0, r0, #2
	orrs r1, r0
	ldr r7, _080360DC
	ldrb r0, [r7]
	lsls r0, r0, #1
	orrs r1, r0
	ldr r5, _080360E0
	ldrb r0, [r5]
	orrs r1, r0
	strb r1, [r4]
	ldrb r5, [r4]
	adds r2, #1
	mov r6, r8
	adds r4, r6, r2
	ldr r7, _080360E4
	ldrb r1, [r7]
	lsls r1, r1, #7
	ldr r6, _080360E8
	ldrb r0, [r6]
	lsls r0, r0, #6
	orrs r1, r0
	ldr r7, _080360EC
	ldrb r0, [r7]
	lsls r0, r0, #5
	orrs r1, r0
	ldr r6, _080360F0
	ldrb r0, [r6]
	lsls r0, r0, #4
	orrs r1, r0
	ldr r7, _080360F4
	ldrb r0, [r7]
	lsls r0, r0, #3
	orrs r1, r0
	ldr r6, _080360F8
	ldrb r0, [r6]
	lsls r0, r0, #2
	orrs r1, r0
	ldr r7, _080360FC
	ldrb r0, [r7]
	lsls r0, r0, #1
	orrs r1, r0
	ldr r6, _08036100
	ldrb r0, [r6]
	orrs r1, r0
	strb r1, [r4]
	adds r3, r3, r5
	adds r3, r3, r1
	adds r2, #1
	mov r7, r8
	adds r4, r7, r2
	ldr r0, _08036104
	ldrb r1, [r0]
	lsls r1, r1, #7
	ldr r5, _08036108
	ldrb r0, [r5]
	lsls r0, r0, #6
	orrs r1, r0
	ldr r6, _0803610C
	ldrb r0, [r6]
	lsls r0, r0, #5
	orrs r1, r0
	ldr r7, _08036110
	ldrb r0, [r7]
	lsls r0, r0, #4
	orrs r1, r0
	ldr r5, _08036114
	ldrb r0, [r5]
	lsls r0, r0, #3
	orrs r1, r0
	ldr r6, _08036118
	ldrb r0, [r6]
	lsls r0, r0, #2
	orrs r1, r0
	ldr r7, _0803611C
	ldrb r0, [r7]
	lsls r0, r0, #1
	orrs r1, r0
	ldr r5, _08036120
	ldrb r0, [r5]
	orrs r1, r0
	strb r1, [r4]
	ldrb r5, [r4]
	adds r2, #1
	mov r6, r8
	adds r4, r6, r2
	ldr r7, _08036124
	ldrb r1, [r7]
	lsls r1, r1, #7
	ldr r6, _08036128
	ldrb r0, [r6]
	lsls r0, r0, #6
	orrs r1, r0
	ldr r7, _0803612C
	ldrb r0, [r7]
	lsls r0, r0, #5
	orrs r1, r0
	ldr r6, _08036130
	ldrb r0, [r6]
	lsls r0, r0, #4
	orrs r1, r0
	ldr r7, _08036134
	ldrb r0, [r7]
	lsls r0, r0, #3
	orrs r1, r0
	strb r1, [r4]
	adds r3, r3, r5
	adds r3, r3, r1
	str r3, [sp, #0x18]
	adds r2, #1
	str r2, [sp, #0x10]
	ldr r0, [sp, #0x1c]
	str r2, [r0]
	ldr r1, [sp, #0x20]
	str r3, [r1]
	add sp, #0x50
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08035F9C: .4byte 0x0203E947
_08035FA0: .4byte 0x0203E949
_08035FA4: .4byte 0x0203E94A
_08035FA8: .4byte 0x0203E94B
_08035FAC: .4byte 0x0203E94C
_08035FB0: .4byte 0x0203E94D
_08035FB4: .4byte 0x0203E94E
_08035FB8: .4byte 0x0203E960
_08035FBC: .4byte 0x0203E961
_08035FC0: .4byte 0x0203E94F
_08035FC4: .4byte 0x0203E950
_08035FC8: .4byte 0x0203E951
_08035FCC: .4byte 0x0203E952
_08035FD0: .4byte 0x0203E954
_08035FD4: .4byte 0x0203E955
_08035FD8: .4byte 0x0203E956
_08035FDC: .4byte 0x0203E957
_08035FE0: .4byte 0x0203E958
_08035FE4: .4byte 0x0203E959
_08035FE8: .4byte 0x0203E95A
_08035FEC: .4byte 0x0203E95B
_08035FF0: .4byte 0x0203E953
_08035FF4: .4byte 0x0203E95C
_08035FF8: .4byte 0x0203E95D
_08035FFC: .4byte 0x0203E95E
_08036000: .4byte 0x0203E95F
_08036004: .4byte 0x0203E962
_08036008: .4byte 0x0203E963
_0803600C: .4byte 0x0203E964
_08036010: .4byte 0x0203E967
_08036014: .4byte 0x0203E965
_08036018: .4byte 0x0203E966
_0803601C: .4byte 0x0203E968
_08036020: .4byte 0x0203E969
_08036024: .4byte 0x0203E96A
_08036028: .4byte 0x0203E96B
_0803602C: .4byte 0x0203E96C
_08036030: .4byte 0x0203E96D
_08036034: .4byte 0x0203E96E
_08036038: .4byte 0x0203E96F
_0803603C: .4byte 0x0203E970
_08036040: .4byte 0x0203E948
_08036044: .4byte 0x0203E122
_08036048: .4byte 0x0203E123
_0803604C: .4byte 0x0203E124
_08036050: .4byte 0x0203E125
_08036054: .4byte 0x0203E126
_08036058: .4byte 0x0203E127
_0803605C: .4byte 0x0203E128
_08036060: .4byte 0x0203E129
_08036064: .4byte 0x0203E12A
_08036068: .4byte 0x0203E12B
_0803606C: .4byte 0x0203E12C
_08036070: .4byte 0x0203E12D
_08036074: .4byte 0x0203E12E
_08036078: .4byte 0x0203E12F
_0803607C: .4byte 0x0203E130
_08036080: .4byte 0x0203E131
_08036084: .4byte 0x0203E132
_08036088: .4byte 0x0203E972
_0803608C: .4byte 0x0203E973
_08036090: .4byte 0x0203E974
_08036094: .4byte 0x0203E142
_08036098: .4byte 0x0203E143
_0803609C: .4byte 0x0203E144
_080360A0: .4byte 0x0203E145
_080360A4: .4byte 0x0203E146
_080360A8: .4byte 0x0203E147
_080360AC: .4byte 0x0203E148
_080360B0: .4byte 0x0203E149
_080360B4: .4byte 0x0203E14A
_080360B8: .4byte 0x0203E14B
_080360BC: .4byte 0x0203E14C
_080360C0: .4byte 0x0203E14D
_080360C4: .4byte 0x0203E14E
_080360C8: .4byte 0x0203E14F
_080360CC: .4byte 0x0203E150
_080360D0: .4byte 0x0203E151
_080360D4: .4byte 0x0203E152
_080360D8: .4byte 0x0203E153
_080360DC: .4byte 0x0203E154
_080360E0: .4byte 0x0203E155
_080360E4: .4byte 0x0203E156
_080360E8: .4byte 0x0203E157
_080360EC: .4byte 0x0203E158
_080360F0: .4byte 0x0203E159
_080360F4: .4byte 0x0203E15A
_080360F8: .4byte 0x0203E15B
_080360FC: .4byte 0x0203E15C
_08036100: .4byte 0x0203E15D
_08036104: .4byte 0x0203E15E
_08036108: .4byte 0x0203E15F
_0803610C: .4byte 0x0203E160
_08036110: .4byte 0x0203E161
_08036114: .4byte 0x0203E162
_08036118: .4byte 0x0203E163
_0803611C: .4byte 0x0203E164
_08036120: .4byte 0x0203E165
_08036124: .4byte 0x0203E166
_08036128: .4byte 0x0203E167
_0803612C: .4byte 0x0203E168
_08036130: .4byte 0x0203E971
_08036134: .4byte 0x0203E169

    .thumb
    .global sub_8036138
sub_8036138: @ 0x08036138
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x6c
	adds r7, r0, #0
	str r1, [sp, #0x1c]
	str r2, [sp, #0x20]
	ldr r0, [r1]
	ldr r2, [r2]
	adds r1, r7, r0
	ldrb r6, [r1]
	adds r0, #1
	ldr r1, _0803653C
	mov r8, r1
	adds r3, r7, r0
	ldrb r1, [r3]
	mov r4, r8
	strb r1, [r4]
	adds r2, r2, r6
	ldrb r3, [r3]
	adds r2, r2, r3
	adds r0, #1
	ldr r5, _08036540
	adds r3, r7, r0
	ldrb r1, [r3]
	strb r1, [r5]
	ldrb r6, [r3]
	adds r0, #1
	ldr r1, _08036544
	mov r8, r1
	adds r3, r7, r0
	ldrb r1, [r3]
	mov r4, r8
	strb r1, [r4]
	adds r2, r2, r6
	ldrb r3, [r3]
	adds r2, r2, r3
	adds r0, #1
	ldr r5, _08036548
	adds r3, r7, r0
	ldrb r1, [r3]
	strh r1, [r5]
	ldrb r6, [r3]
	adds r0, #1
	ldr r1, _0803654C
	mov r8, r1
	adds r3, r7, r0
	ldrb r1, [r3]
	mov r4, r8
	strb r1, [r4]
	adds r2, r2, r6
	ldrb r3, [r3]
	adds r2, r2, r3
	str r2, [sp, #0x18]
	adds r0, #1
	str r0, [sp, #0x10]
	movs r0, #0
	str r0, [sp, #0x24]
	ldr r4, _08036550
	ldr r3, _08036554
	ldr r1, _08036558
	mov r8, r1
	ldr r6, _0803655C
	ldr r2, _08036560
	mov sb, r2
	mov r0, sp
	adds r0, #0x10
	str r0, [sp, #0x54]
	mov r1, sp
	adds r1, #0x14
	str r1, [sp, #0x58]
	mov r2, sp
	adds r2, #0x18
	str r2, [sp, #0x5c]
_080361D0:
	ldr r0, [sp, #0x24]
	adds r1, r0, r4
	ldr r0, [sp, #0x10]
	adds r0, r7, r0
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, [sp, #0x10]
	adds r0, r7, r1
	ldrb r2, [r0]
	ldr r0, [sp, #0x18]
	adds r0, r0, r2
	str r0, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	ldr r0, [sp, #0x24]
	adds r2, r0, r3
	adds r1, r7, r1
	ldrb r0, [r1]
	strb r0, [r2]
	ldr r1, [sp, #0x10]
	adds r0, r7, r1
	ldrb r2, [r0]
	ldr r0, [sp, #0x18]
	adds r0, r0, r2
	str r0, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	ldr r1, [sp, #0x24]
	adds r1, #1
	str r1, [sp, #0x24]
	cmp r1, #5
	ble _080361D0
	movs r2, #0
	str r2, [sp, #0x24]
_08036214:
	ldr r3, [sp, #0x24]
	lsls r5, r3, #4
	subs r3, r5, r3
	lsls r3, r3, #3
	add r3, r8
	ldr r0, [sp, #0x10]
	adds r0, r7, r0
	ldrb r0, [r0]
	strb r0, [r3]
	ldr r1, [sp, #0x10]
	adds r0, r7, r1
	ldrb r2, [r0]
	ldr r0, [sp, #0x18]
	adds r0, r0, r2
	str r0, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	adds r1, r7, r1
	ldrb r0, [r1]
	strb r0, [r3, #1]
	ldr r1, [sp, #0x10]
	adds r0, r7, r1
	ldrb r2, [r0]
	ldr r0, [sp, #0x18]
	adds r0, r0, r2
	str r0, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	adds r1, r7, r1
	ldrb r0, [r1]
	strb r0, [r3, #2]
	ldr r1, [sp, #0x10]
	adds r0, r7, r1
	ldrb r2, [r0]
	ldr r0, [sp, #0x18]
	adds r0, r0, r2
	str r0, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	adds r1, r7, r1
	ldrb r0, [r1]
	strb r0, [r3, #3]
	ldr r1, [sp, #0x10]
	adds r0, r7, r1
	ldrb r2, [r0]
	ldr r0, [sp, #0x18]
	adds r0, r0, r2
	str r0, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	adds r1, r7, r1
	ldrb r0, [r1]
	strb r0, [r3, #4]
	ldr r1, [sp, #0x10]
	adds r0, r7, r1
	ldrb r2, [r0]
	ldr r0, [sp, #0x18]
	adds r0, r0, r2
	str r0, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	adds r1, r7, r1
	ldrb r0, [r1]
	strb r0, [r3, #5]
	ldr r1, [sp, #0x10]
	adds r0, r7, r1
	ldrb r2, [r0]
	ldr r0, [sp, #0x18]
	adds r0, r0, r2
	str r0, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	adds r1, r7, r1
	ldrb r0, [r1]
	strb r0, [r3, #6]
	ldr r1, [sp, #0x10]
	adds r0, r7, r1
	ldrb r2, [r0]
	ldr r0, [sp, #0x18]
	adds r0, r0, r2
	str r0, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	adds r1, r7, r1
	ldrb r0, [r1]
	strb r0, [r3, #7]
	ldr r1, [sp, #0x10]
	adds r0, r7, r1
	ldrb r2, [r0]
	ldr r0, [sp, #0x18]
	adds r0, r0, r2
	str r0, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	adds r1, r7, r1
	ldrb r0, [r1]
	strb r0, [r3, #8]
	ldr r1, [sp, #0x10]
	adds r0, r7, r1
	ldrb r2, [r0]
	ldr r0, [sp, #0x18]
	adds r0, r0, r2
	str r0, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	adds r1, r7, r1
	ldrb r0, [r1]
	strb r0, [r3, #9]
	ldr r1, [sp, #0x10]
	adds r0, r7, r1
	ldrb r2, [r0]
	ldr r0, [sp, #0x18]
	adds r0, r0, r2
	str r0, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	adds r1, r7, r1
	ldrb r0, [r1]
	strb r0, [r3, #0xa]
	ldr r1, [sp, #0x10]
	adds r0, r7, r1
	ldrb r2, [r0]
	ldr r0, [sp, #0x18]
	adds r0, r0, r2
	str r0, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	adds r1, r7, r1
	ldrb r0, [r1]
	strb r0, [r3, #0xb]
	ldr r1, [sp, #0x10]
	adds r0, r7, r1
	ldrb r2, [r0]
	ldr r0, [sp, #0x18]
	adds r0, r0, r2
	str r0, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	adds r1, r7, r1
	ldrb r0, [r1]
	strb r0, [r3, #0xc]
	ldr r1, [sp, #0x10]
	adds r0, r7, r1
	ldrb r2, [r0]
	ldr r0, [sp, #0x18]
	adds r0, r0, r2
	str r0, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	adds r1, r7, r1
	ldrb r0, [r1]
	strb r0, [r3, #0xd]
	ldr r1, [sp, #0x10]
	adds r0, r7, r1
	ldrb r2, [r0]
	ldr r0, [sp, #0x18]
	adds r0, r0, r2
	str r0, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	adds r1, r7, r1
	ldrb r0, [r1]
	strb r0, [r3, #0xe]
	ldr r1, [sp, #0x10]
	adds r0, r7, r1
	ldrb r2, [r0]
	ldr r0, [sp, #0x18]
	adds r0, r0, r2
	str r0, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	adds r1, r7, r1
	ldrb r0, [r1]
	strb r0, [r3, #0xf]
	ldr r1, [sp, #0x10]
	adds r0, r7, r1
	ldrb r2, [r0]
	ldr r0, [sp, #0x18]
	adds r0, r0, r2
	str r0, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	adds r1, r7, r1
	ldrb r0, [r1]
	strb r0, [r3, #0x10]
	ldr r1, [sp, #0x10]
	adds r0, r7, r1
	ldrb r2, [r0]
	ldr r0, [sp, #0x18]
	adds r0, r0, r2
	str r0, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	adds r1, r7, r1
	ldrb r0, [r1]
	strb r0, [r3, #0x11]
	ldr r1, [sp, #0x10]
	adds r0, r7, r1
	ldrb r2, [r0]
	ldr r0, [sp, #0x18]
	adds r0, r0, r2
	str r0, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	adds r1, r7, r1
	ldrb r0, [r1]
	strb r0, [r3, #0x12]
	ldr r1, [sp, #0x10]
	adds r0, r7, r1
	ldrb r2, [r0]
	ldr r0, [sp, #0x18]
	adds r0, r0, r2
	str r0, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	adds r1, r7, r1
	ldrb r0, [r1]
	strb r0, [r3, #0x13]
	ldr r1, [sp, #0x10]
	adds r0, r7, r1
	ldrb r2, [r0]
	ldr r0, [sp, #0x18]
	adds r0, r0, r2
	str r0, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	adds r1, r7, r1
	ldrb r0, [r1]
	strb r0, [r3, #0x14]
	ldr r1, [sp, #0x10]
	adds r0, r7, r1
	ldrb r2, [r0]
	ldr r0, [sp, #0x18]
	adds r0, r0, r2
	str r0, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	movs r0, #0xc4
	ldr r4, [sp, #0x24]
	muls r0, r4, r0
	adds r3, r0, r6
	adds r1, r7, r1
	ldrb r0, [r1]
	strb r0, [r3]
	ldr r1, [sp, #0x10]
	adds r0, r7, r1
	ldrb r2, [r0]
	ldr r0, [sp, #0x18]
	adds r0, r0, r2
	str r0, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	adds r1, r7, r1
	ldrb r0, [r1]
	strb r0, [r3, #1]
	ldr r1, [sp, #0x10]
	adds r0, r7, r1
	ldrb r2, [r0]
	ldr r0, [sp, #0x18]
	adds r0, r0, r2
	str r0, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	adds r1, r7, r1
	ldrb r0, [r1]
	strb r0, [r3, #2]
	ldr r1, [sp, #0x10]
	adds r0, r7, r1
	ldrb r2, [r0]
	ldr r0, [sp, #0x18]
	adds r0, r0, r2
	str r0, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	adds r1, r7, r1
	ldrb r0, [r1]
	strb r0, [r3, #3]
	ldr r1, [sp, #0x10]
	adds r0, r7, r1
	ldrb r2, [r0]
	ldr r0, [sp, #0x18]
	adds r0, r0, r2
	str r0, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	adds r1, r7, r1
	ldrb r0, [r1]
	strb r0, [r3, #4]
	ldr r1, [sp, #0x10]
	adds r0, r7, r1
	ldrb r2, [r0]
	ldr r0, [sp, #0x18]
	adds r0, r0, r2
	str r0, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	adds r1, r7, r1
	ldrb r0, [r1]
	strb r0, [r3, #5]
	ldr r1, [sp, #0x10]
	adds r0, r7, r1
	ldrb r2, [r0]
	ldr r0, [sp, #0x18]
	adds r0, r0, r2
	str r0, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	adds r1, r7, r1
	ldrb r0, [r1]
	strb r0, [r3, #6]
	ldr r1, [sp, #0x10]
	adds r0, r7, r1
	ldrb r2, [r0]
	ldr r0, [sp, #0x18]
	adds r0, r0, r2
	str r0, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	adds r1, r7, r1
	ldrb r0, [r1]
	strb r0, [r3, #7]
	ldr r1, [sp, #0x10]
	adds r0, r7, r1
	ldrb r2, [r0]
	ldr r0, [sp, #0x18]
	adds r0, r0, r2
	str r0, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	adds r1, r7, r1
	ldrb r0, [r1]
	strb r0, [r3, #8]
	ldr r1, [sp, #0x10]
	adds r0, r7, r1
	ldrb r2, [r0]
	ldr r0, [sp, #0x18]
	adds r0, r0, r2
	str r0, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	adds r1, r7, r1
	ldrb r0, [r1]
	strb r0, [r3, #9]
	ldr r1, [sp, #0x10]
	adds r0, r7, r1
	ldrb r2, [r0]
	ldr r0, [sp, #0x18]
	adds r0, r0, r2
	str r0, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	adds r1, r7, r1
	ldrb r0, [r1]
	strb r0, [r3, #0xa]
	ldr r1, [sp, #0x10]
	adds r0, r7, r1
	ldrb r2, [r0]
	ldr r0, [sp, #0x18]
	adds r0, r0, r2
	str r0, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	adds r1, r7, r1
	ldrb r0, [r1]
	strb r0, [r3, #0xb]
	ldr r1, [sp, #0x10]
	adds r0, r7, r1
	ldrb r2, [r0]
	ldr r0, [sp, #0x18]
	adds r0, r0, r2
	str r0, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	adds r1, r7, r1
	ldrb r0, [r1]
	strb r0, [r3, #0xc]
	ldr r1, [sp, #0x10]
	adds r0, r7, r1
	ldrb r2, [r0]
	ldr r0, [sp, #0x18]
	adds r0, r0, r2
	str r0, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	adds r1, r7, r1
	ldrb r0, [r1]
	strb r0, [r3, #0xd]
	ldr r1, [sp, #0x10]
	adds r0, r7, r1
	ldrb r2, [r0]
	ldr r0, [sp, #0x18]
	adds r0, r0, r2
	str r0, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	adds r1, r7, r1
	ldrb r0, [r1]
	strb r0, [r3, #0xe]
	ldr r1, [sp, #0x10]
	adds r0, r7, r1
	ldrb r2, [r0]
	ldr r0, [sp, #0x18]
	b _08036564
	.align 2, 0
_0803653C: .4byte 0x0203E93A
_08036540: .4byte 0x0203E93C
_08036544: .4byte 0x0203E93B
_08036548: .4byte 0x0203E140
_0803654C: .4byte 0x0203E16C
_08036550: .4byte 0x0203E110
_08036554: .4byte 0x0203E116
_08036558: .4byte 0x0203E170
_0803655C: .4byte 0x0203E440
_08036560: .4byte 0x0203E8D8
_08036564:
	adds r0, r0, r2
	str r0, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	adds r1, r7, r1
	ldrb r0, [r1]
	strb r0, [r3, #0xf]
	ldr r1, [sp, #0x10]
	adds r0, r7, r1
	ldrb r2, [r0]
	ldr r0, [sp, #0x18]
	adds r0, r0, r2
	str r0, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	adds r1, r7, r1
	ldrb r0, [r1]
	strb r0, [r3, #0x10]
	ldr r1, [sp, #0x10]
	adds r0, r7, r1
	ldrb r2, [r0]
	ldr r0, [sp, #0x18]
	adds r0, r0, r2
	str r0, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	adds r1, r7, r1
	ldrb r0, [r1]
	strb r0, [r3, #0x11]
	ldr r1, [sp, #0x10]
	adds r0, r7, r1
	ldrb r2, [r0]
	ldr r0, [sp, #0x18]
	adds r0, r0, r2
	str r0, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	adds r1, r7, r1
	ldrb r0, [r1]
	strb r0, [r3, #0x1f]
	ldr r1, [sp, #0x10]
	adds r0, r7, r1
	ldrb r2, [r0]
	ldr r0, [sp, #0x18]
	adds r0, r0, r2
	str r0, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	adds r1, r7, r1
	ldrb r0, [r1]
	strb r0, [r3, #0x12]
	ldr r1, [sp, #0x10]
	adds r0, r7, r1
	ldrb r2, [r0]
	ldr r0, [sp, #0x18]
	adds r0, r0, r2
	str r0, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	adds r1, r7, r1
	ldrb r0, [r1]
	strb r0, [r3, #0x13]
	ldr r1, [sp, #0x10]
	adds r0, r7, r1
	ldrb r2, [r0]
	ldr r0, [sp, #0x18]
	adds r0, r0, r2
	str r0, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	adds r1, r7, r1
	ldrb r0, [r1]
	strb r0, [r3, #0x14]
	ldr r1, [sp, #0x10]
	adds r0, r7, r1
	ldrb r2, [r0]
	ldr r0, [sp, #0x18]
	adds r0, r0, r2
	str r0, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	adds r1, r7, r1
	ldrb r0, [r1]
	strb r0, [r3, #0x15]
	ldr r1, [sp, #0x10]
	adds r0, r7, r1
	ldrb r2, [r0]
	ldr r0, [sp, #0x18]
	adds r0, r0, r2
	str r0, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	adds r1, r7, r1
	ldrb r0, [r1]
	strb r0, [r3, #0x16]
	ldr r1, [sp, #0x10]
	adds r0, r7, r1
	ldrb r2, [r0]
	ldr r0, [sp, #0x18]
	adds r0, r0, r2
	str r0, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	adds r1, r7, r1
	ldrb r0, [r1]
	strb r0, [r3, #0x17]
	ldr r1, [sp, #0x10]
	adds r0, r7, r1
	ldrb r2, [r0]
	ldr r0, [sp, #0x18]
	adds r0, r0, r2
	str r0, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	adds r1, r7, r1
	ldrb r0, [r1]
	strb r0, [r3, #0x18]
	ldr r1, [sp, #0x10]
	adds r0, r7, r1
	ldrb r2, [r0]
	ldr r0, [sp, #0x18]
	adds r0, r0, r2
	str r0, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	adds r1, r7, r1
	ldrb r0, [r1]
	strb r0, [r3, #0x19]
	ldr r1, [sp, #0x10]
	adds r0, r7, r1
	ldrb r2, [r0]
	ldr r0, [sp, #0x18]
	adds r0, r0, r2
	str r0, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	adds r1, r7, r1
	ldrb r0, [r1]
	strb r0, [r3, #0x1a]
	ldr r1, [sp, #0x10]
	adds r0, r7, r1
	ldrb r2, [r0]
	ldr r0, [sp, #0x18]
	adds r0, r0, r2
	str r0, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	adds r1, r7, r1
	ldrb r0, [r1]
	strb r0, [r3, #0x1b]
	ldr r1, [sp, #0x10]
	adds r0, r7, r1
	ldrb r2, [r0]
	ldr r0, [sp, #0x18]
	adds r0, r0, r2
	str r0, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	adds r1, r7, r1
	ldrb r0, [r1]
	strb r0, [r3, #0x1c]
	ldr r1, [sp, #0x10]
	adds r0, r7, r1
	ldrb r2, [r0]
	ldr r0, [sp, #0x18]
	adds r0, r0, r2
	str r0, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	adds r1, r7, r1
	ldrb r0, [r1]
	adds r1, r3, #0
	adds r1, #0x22
	strb r0, [r1]
	ldr r1, [sp, #0x10]
	adds r0, r7, r1
	ldrb r2, [r0]
	ldr r0, [sp, #0x18]
	adds r0, r0, r2
	str r0, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	adds r1, r7, r1
	ldrb r0, [r1]
	adds r1, r3, #0
	adds r1, #0x23
	strb r0, [r1]
	ldr r1, [sp, #0x10]
	adds r0, r7, r1
	ldrb r2, [r0]
	ldr r0, [sp, #0x18]
	adds r0, r0, r2
	str r0, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	adds r1, r7, r1
	ldrb r1, [r1]
	adds r0, r3, #0
	adds r0, #0x24
	strb r1, [r0]
	ldr r1, [sp, #0x10]
	adds r0, r7, r1
	ldrb r2, [r0]
	ldr r0, [sp, #0x18]
	adds r0, r0, r2
	str r0, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	adds r1, r7, r1
	ldrb r0, [r1]
	adds r1, r3, #0
	adds r1, #0x25
	strb r0, [r1]
	ldr r1, [sp, #0x10]
	adds r0, r7, r1
	ldrb r2, [r0]
	ldr r0, [sp, #0x18]
	adds r0, r0, r2
	str r0, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	adds r1, r7, r1
	ldrb r0, [r1]
	strb r0, [r3, #0x1d]
	ldr r1, [sp, #0x10]
	adds r0, r7, r1
	ldrb r2, [r0]
	ldr r0, [sp, #0x18]
	adds r0, r0, r2
	str r0, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	adds r1, r7, r1
	ldrb r0, [r1]
	strb r0, [r3, #0x1e]
	ldr r1, [sp, #0x10]
	adds r0, r7, r1
	ldrb r2, [r0]
	ldr r0, [sp, #0x18]
	adds r0, r0, r2
	str r0, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	adds r1, r7, r1
	ldrb r1, [r1]
	adds r0, r3, #0
	adds r0, #0x20
	strb r1, [r0]
	ldr r1, [sp, #0x10]
	adds r0, r7, r1
	ldrb r2, [r0]
	ldr r0, [sp, #0x18]
	adds r0, r0, r2
	str r0, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	adds r1, r7, r1
	ldrb r1, [r1]
	adds r0, r3, #0
	adds r0, #0x21
	strb r1, [r0]
	ldr r1, [sp, #0x10]
	adds r0, r7, r1
	ldrb r2, [r0]
	ldr r0, [sp, #0x18]
	adds r0, r0, r2
	str r0, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	add r5, sb
	adds r1, r7, r1
	ldrb r0, [r1]
	strb r0, [r5]
	ldr r1, [sp, #0x10]
	adds r0, r7, r1
	ldrb r2, [r0]
	ldr r0, [sp, #0x18]
	adds r0, r0, r2
	str r0, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	adds r1, r7, r1
	ldrb r0, [r1]
	strb r0, [r5, #1]
	ldr r1, [sp, #0x10]
	adds r0, r7, r1
	ldrb r2, [r0]
	ldr r0, [sp, #0x18]
	adds r0, r0, r2
	str r0, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	adds r1, r7, r1
	ldrb r0, [r1]
	strb r0, [r5, #2]
	ldr r2, [sp, #0x10]
	adds r0, r7, r2
	ldrb r1, [r0]
	ldr r0, [sp, #0x18]
	adds r0, r0, r1
	str r0, [sp, #0x18]
	adds r2, #1
	str r2, [sp, #0x10]
	adds r4, #1
	str r4, [sp, #0x24]
	cmp r4, #5
	bgt _080367CC
	b _08036214
_080367CC:
	movs r0, #0
	str r0, [sp, #0x14]
	adds r0, r7, r2
	ldrb r1, [r0]
	add r0, sp, #0xc
	strb r1, [r0]
	ldr r1, [sp, #0x10]
	adds r0, r7, r1
	ldrb r2, [r0]
	ldr r0, [sp, #0x18]
	adds r0, r0, r2
	str r0, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	movs r0, #0
	str r0, [sp, #0x24]
	ldr r1, [sp, #0x54]
	mov sl, r1
	ldr r2, [sp, #0x58]
	mov sb, r2
	ldr r3, [sp, #0x5c]
	str r3, [sp, #0x2c]
	movs r4, #0
	str r4, [sp, #0x60]
	ldr r0, _08036BE8
	str r0, [sp, #0x64]
	movs r1, #0
	str r1, [sp, #0x68]
	mov r2, sp
	adds r2, #0x18
	str r2, [sp, #0x30]
	mov r3, sp
	adds r3, #0x10
	str r3, [sp, #0x34]
_08036810:
	ldr r0, _08036BE8
	adds r0, #0x1c
	ldr r4, [sp, #0x68]
	adds r0, r4, r0
	ldr r0, [r0]
	str r0, [sp]
	ldr r1, [sp, #0x64]
	ldrb r0, [r1]
	str r0, [sp, #4]
	ldr r2, [sp, #0x2c]
	str r2, [sp, #8]
	adds r0, r7, #0
	mov r1, sl
	add r2, sp, #0xc
	mov r3, sb
	bl sub_8038984
	ldr r0, _08036BE8
	adds r0, #0x20
	adds r0, r4, r0
	ldr r0, [r0]
	str r0, [sp]
	ldr r3, [sp, #0x64]
	ldrb r0, [r3, #1]
	str r0, [sp, #4]
	ldr r4, [sp, #0x2c]
	str r4, [sp, #8]
	adds r0, r7, #0
	mov r1, sl
	add r2, sp, #0xc
	mov r3, sb
	bl sub_8038984
	ldr r0, _08036BE8
	adds r0, #0x24
	ldr r1, [sp, #0x68]
	adds r0, r1, r0
	ldr r0, [r0]
	str r0, [sp]
	ldr r2, [sp, #0x64]
	ldrb r0, [r2, #2]
	str r0, [sp, #4]
	str r4, [sp, #8]
	adds r0, r7, #0
	mov r1, sl
	add r2, sp, #0xc
	mov r3, sb
	bl sub_8038984
	ldr r0, _08036BE8
	adds r0, #0x28
	ldr r3, [sp, #0x68]
	adds r0, r3, r0
	ldr r0, [r0]
	str r0, [sp]
	ldr r4, [sp, #0x64]
	ldrb r0, [r4, #3]
	str r0, [sp, #4]
	ldr r0, [sp, #0x2c]
	str r0, [sp, #8]
	adds r0, r7, #0
	mov r1, sl
	add r2, sp, #0xc
	mov r3, sb
	bl sub_8038984
	ldr r0, _08036BE8
	adds r0, #0x2c
	ldr r1, [sp, #0x68]
	adds r0, r1, r0
	ldr r0, [r0]
	str r0, [sp]
	ldrb r0, [r4, #4]
	str r0, [sp, #4]
	ldr r2, [sp, #0x2c]
	str r2, [sp, #8]
	adds r0, r7, #0
	mov r1, sl
	add r2, sp, #0xc
	mov r3, sb
	bl sub_8038984
	ldr r0, _08036BE8
	adds r0, #0x30
	ldr r3, [sp, #0x68]
	adds r0, r3, r0
	ldr r0, [r0]
	str r0, [sp]
	ldrb r0, [r4, #5]
	str r0, [sp, #4]
	ldr r4, [sp, #0x2c]
	str r4, [sp, #8]
	adds r0, r7, #0
	mov r1, sl
	add r2, sp, #0xc
	mov r3, sb
	bl sub_8038984
	ldr r0, _08036BE8
	adds r0, #0x34
	ldr r1, [sp, #0x68]
	adds r0, r1, r0
	ldr r0, [r0]
	str r0, [sp]
	ldr r2, [sp, #0x64]
	ldrb r0, [r2, #6]
	str r0, [sp, #4]
	str r4, [sp, #8]
	adds r0, r7, #0
	mov r1, sl
	add r2, sp, #0xc
	mov r3, sb
	bl sub_8038984
	ldr r0, _08036BE8
	adds r0, #0x38
	ldr r3, [sp, #0x68]
	adds r0, r3, r0
	ldr r0, [r0]
	str r0, [sp]
	ldr r4, [sp, #0x64]
	ldrb r0, [r4, #7]
	str r0, [sp, #4]
	ldr r0, [sp, #0x2c]
	str r0, [sp, #8]
	adds r0, r7, #0
	mov r1, sl
	add r2, sp, #0xc
	mov r3, sb
	bl sub_8038984
	ldr r0, _08036BE8
	adds r0, #0x3c
	ldr r1, [sp, #0x68]
	adds r0, r1, r0
	ldr r0, [r0]
	str r0, [sp]
	ldrb r0, [r4, #8]
	str r0, [sp, #4]
	ldr r2, [sp, #0x2c]
	str r2, [sp, #8]
	adds r0, r7, #0
	mov r1, sl
	add r2, sp, #0xc
	mov r3, sb
	bl sub_8038984
	ldr r0, _08036BE8
	adds r0, #0x40
	ldr r3, [sp, #0x68]
	adds r0, r3, r0
	ldr r0, [r0]
	str r0, [sp]
	ldrb r0, [r4, #9]
	str r0, [sp, #4]
	ldr r4, [sp, #0x2c]
	str r4, [sp, #8]
	adds r0, r7, #0
	mov r1, sl
	add r2, sp, #0xc
	mov r3, sb
	bl sub_8038984
	ldr r0, _08036BE8
	adds r0, #0x44
	ldr r1, [sp, #0x68]
	adds r0, r1, r0
	ldr r0, [r0]
	str r0, [sp]
	ldr r2, [sp, #0x64]
	ldrb r0, [r2, #0xa]
	str r0, [sp, #4]
	str r4, [sp, #8]
	adds r0, r7, #0
	mov r1, sl
	add r2, sp, #0xc
	mov r3, sb
	bl sub_8038984
	ldr r0, _08036BE8
	adds r0, #0x48
	ldr r3, [sp, #0x68]
	adds r0, r3, r0
	ldr r0, [r0]
	str r0, [sp]
	ldr r4, [sp, #0x64]
	ldrb r0, [r4, #0xb]
	str r0, [sp, #4]
	ldr r0, [sp, #0x2c]
	str r0, [sp, #8]
	adds r0, r7, #0
	mov r1, sl
	add r2, sp, #0xc
	mov r3, sb
	bl sub_8038984
	ldr r0, _08036BE8
	adds r0, #0x4c
	ldr r1, [sp, #0x68]
	adds r0, r1, r0
	ldr r0, [r0]
	str r0, [sp]
	ldrb r0, [r4, #0xc]
	str r0, [sp, #4]
	ldr r2, [sp, #0x2c]
	str r2, [sp, #8]
	adds r0, r7, #0
	mov r1, sl
	add r2, sp, #0xc
	mov r3, sb
	bl sub_8038984
	ldr r0, _08036BE8
	adds r0, #0x50
	ldr r3, [sp, #0x68]
	adds r0, r3, r0
	ldr r0, [r0]
	str r0, [sp]
	ldrb r0, [r4, #0xd]
	str r0, [sp, #4]
	ldr r4, [sp, #0x2c]
	str r4, [sp, #8]
	adds r0, r7, #0
	mov r1, sl
	add r2, sp, #0xc
	mov r3, sb
	bl sub_8038984
	ldr r0, _08036BE8
	adds r0, #0x54
	ldr r1, [sp, #0x68]
	adds r0, r1, r0
	ldr r0, [r0]
	str r0, [sp]
	ldr r2, [sp, #0x64]
	ldrb r0, [r2, #0xe]
	str r0, [sp, #4]
	str r4, [sp, #8]
	adds r0, r7, #0
	mov r1, sl
	add r2, sp, #0xc
	mov r3, sb
	bl sub_8038984
	ldr r0, _08036BE8
	adds r0, #0x58
	ldr r3, [sp, #0x68]
	adds r0, r3, r0
	ldr r0, [r0]
	str r0, [sp]
	ldr r4, [sp, #0x64]
	ldrb r0, [r4, #0xf]
	str r0, [sp, #4]
	ldr r0, [sp, #0x2c]
	str r0, [sp, #8]
	adds r0, r7, #0
	mov r1, sl
	add r2, sp, #0xc
	mov r3, sb
	bl sub_8038984
	ldr r0, _08036BE8
	adds r0, #0x5c
	ldr r1, [sp, #0x68]
	adds r0, r1, r0
	ldr r0, [r0]
	str r0, [sp]
	ldrb r0, [r4, #0x10]
	str r0, [sp, #4]
	ldr r2, [sp, #0x2c]
	str r2, [sp, #8]
	adds r0, r7, #0
	mov r1, sl
	add r2, sp, #0xc
	mov r3, sb
	bl sub_8038984
	ldr r0, _08036BE8
	adds r0, #0x60
	ldr r3, [sp, #0x68]
	adds r0, r3, r0
	ldr r0, [r0]
	str r0, [sp]
	ldrb r0, [r4, #0x11]
	str r0, [sp, #4]
	ldr r4, [sp, #0x2c]
	str r4, [sp, #8]
	adds r0, r7, #0
	mov r1, sl
	add r2, sp, #0xc
	mov r3, sb
	bl sub_8038984
	ldr r0, _08036BE8
	adds r0, #0x64
	ldr r1, [sp, #0x68]
	adds r0, r1, r0
	ldr r0, [r0]
	str r0, [sp]
	ldr r2, [sp, #0x64]
	ldrb r0, [r2, #0x12]
	str r0, [sp, #4]
	str r4, [sp, #8]
	adds r0, r7, #0
	mov r1, sl
	add r2, sp, #0xc
	mov r3, sb
	bl sub_8038984
	ldr r0, _08036BE8
	adds r0, #0x68
	ldr r3, [sp, #0x68]
	adds r0, r3, r0
	ldr r0, [r0]
	str r0, [sp]
	ldr r4, [sp, #0x64]
	ldrb r0, [r4, #0x13]
	str r0, [sp, #4]
	ldr r0, [sp, #0x2c]
	str r0, [sp, #8]
	adds r0, r7, #0
	mov r1, sl
	add r2, sp, #0xc
	mov r3, sb
	bl sub_8038984
	ldr r0, _08036BE8
	adds r0, #0x6c
	ldr r1, [sp, #0x68]
	adds r0, r1, r0
	ldr r0, [r0]
	str r0, [sp]
	ldrb r0, [r4, #0x14]
	str r0, [sp, #4]
	ldr r2, [sp, #0x2c]
	str r2, [sp, #8]
	adds r0, r7, #0
	mov r1, sl
	add r2, sp, #0xc
	mov r3, sb
	bl sub_8038984
	ldr r0, _08036BE8
	adds r0, #0x70
	ldr r3, [sp, #0x68]
	adds r0, r3, r0
	str r0, [sp]
	movs r5, #1
	str r5, [sp, #4]
	ldr r4, [sp, #0x2c]
	str r4, [sp, #8]
	adds r0, r7, #0
	mov r1, sl
	add r2, sp, #0xc
	mov r3, sb
	bl sub_8038984
	ldr r0, _08036BE8
	adds r0, #0x71
	ldr r1, [sp, #0x68]
	adds r0, r1, r0
	str r0, [sp]
	str r5, [sp, #4]
	str r4, [sp, #8]
	adds r0, r7, #0
	mov r1, sl
	add r2, sp, #0xc
	mov r3, sb
	bl sub_8038984
	ldr r0, _08036BE8
	adds r0, #0x72
	ldr r2, [sp, #0x68]
	adds r0, r2, r0
	str r0, [sp]
	str r5, [sp, #4]
	str r4, [sp, #8]
	adds r0, r7, #0
	mov r1, sl
	add r2, sp, #0xc
	mov r3, sb
	bl sub_8038984
	ldr r0, _08036BE8
	adds r0, #0x73
	ldr r3, [sp, #0x68]
	adds r0, r3, r0
	str r0, [sp]
	str r5, [sp, #4]
	str r4, [sp, #8]
	adds r0, r7, #0
	mov r1, sl
	add r2, sp, #0xc
	mov r3, sb
	bl sub_8038984
	ldr r0, _08036BE8
	adds r0, #0x74
	ldr r4, [sp, #0x68]
	adds r0, r4, r0
	str r0, [sp]
	str r5, [sp, #4]
	ldr r0, [sp, #0x2c]
	str r0, [sp, #8]
	adds r0, r7, #0
	mov r1, sl
	add r2, sp, #0xc
	mov r3, sb
	bl sub_8038984
	ldr r1, _08036BEC
	adds r0, r4, r1
	str r0, [sp]
	str r5, [sp, #4]
	ldr r2, [sp, #0x2c]
	str r2, [sp, #8]
	adds r0, r7, #0
	mov r1, sl
	add r2, sp, #0xc
	mov r3, sb
	bl sub_8038984
	ldr r0, _08036BF0
	str r0, [sp]
	movs r0, #6
	str r0, [sp, #4]
	ldr r3, [sp, #0x2c]
	str r3, [sp, #8]
	adds r0, r7, #0
	mov r1, sl
	add r2, sp, #0xc
	mov r3, sb
	bl sub_8038984
	movs r0, #0xc4
	ldr r4, [sp, #0x24]
	adds r5, r4, #0
	muls r5, r0, r5
	ldr r1, _08036BF4
	adds r0, r5, r1
	ldr r0, [r0]
	str r0, [sp]
	ldr r2, _08036BF8
	adds r2, r2, r5
	mov r8, r2
	ldrb r0, [r2]
	str r0, [sp, #4]
	ldr r3, [sp, #0x2c]
	str r3, [sp, #8]
	adds r0, r7, #0
	mov r1, sl
	add r2, sp, #0xc
	mov r3, sb
	bl sub_8038984
	ldr r0, _08036BF8
	adds r0, #0x2c
	adds r0, r5, r0
	ldr r0, [r0]
	str r0, [sp]
	mov r4, r8
	ldrb r0, [r4, #1]
	str r0, [sp, #4]
	ldr r0, [sp, #0x2c]
	str r0, [sp, #8]
	adds r0, r7, #0
	mov r1, sl
	add r2, sp, #0xc
	mov r3, sb
	bl sub_8038984
	ldr r0, _08036BF8
	adds r0, #0x30
	adds r0, r5, r0
	ldr r0, [r0]
	str r0, [sp]
	ldrb r0, [r4, #2]
	str r0, [sp, #4]
	ldr r1, [sp, #0x2c]
	str r1, [sp, #8]
	adds r0, r7, #0
	mov r1, sl
	add r2, sp, #0xc
	mov r3, sb
	bl sub_8038984
	ldr r0, _08036BF8
	adds r0, #0x34
	adds r0, r5, r0
	ldr r0, [r0]
	b _08036BFC
	.align 2, 0
_08036BE8: .4byte 0x0203E170
_08036BEC: .4byte 0x0203E1E5
_08036BF0: .4byte 0x0203E11C
_08036BF4: .4byte 0x0203E468
_08036BF8: .4byte 0x0203E440
_08036BFC:
	str r0, [sp]
	ldrb r0, [r4, #3]
	str r0, [sp, #4]
	ldr r2, [sp, #0x2c]
	str r2, [sp, #8]
	adds r0, r7, #0
	mov r1, sl
	add r2, sp, #0xc
	mov r3, sb
	bl sub_8038984
	ldr r0, _08036FF8
	adds r0, #0x38
	adds r0, r5, r0
	ldr r0, [r0]
	str r0, [sp]
	ldrb r0, [r4, #4]
	str r0, [sp, #4]
	ldr r3, [sp, #0x2c]
	str r3, [sp, #8]
	adds r0, r7, #0
	mov r1, sl
	add r2, sp, #0xc
	mov r3, sb
	bl sub_8038984
	ldr r0, _08036FF8
	adds r0, #0x3c
	adds r0, r5, r0
	ldr r0, [r0]
	str r0, [sp]
	ldrb r0, [r4, #5]
	str r0, [sp, #4]
	ldr r4, [sp, #0x2c]
	str r4, [sp, #8]
	adds r0, r7, #0
	mov r1, sl
	add r2, sp, #0xc
	mov r3, sb
	bl sub_8038984
	ldr r0, _08036FF8
	adds r0, #0x40
	adds r0, r5, r0
	ldr r0, [r0]
	str r0, [sp]
	mov r1, r8
	ldrb r0, [r1, #6]
	str r0, [sp, #4]
	str r4, [sp, #8]
	adds r0, r7, #0
	mov r1, sl
	add r2, sp, #0xc
	mov r3, sb
	bl sub_8038984
	ldr r0, _08036FF8
	adds r0, #0x44
	adds r0, r5, r0
	ldr r0, [r0]
	str r0, [sp]
	mov r2, r8
	ldrb r0, [r2, #7]
	str r0, [sp, #4]
	str r4, [sp, #8]
	adds r0, r7, #0
	mov r1, sl
	add r2, sp, #0xc
	mov r3, sb
	bl sub_8038984
	ldr r0, _08036FF8
	adds r0, #0x48
	adds r0, r5, r0
	ldr r0, [r0]
	str r0, [sp]
	mov r3, r8
	ldrb r0, [r3, #8]
	str r0, [sp, #4]
	str r4, [sp, #8]
	adds r0, r7, #0
	mov r1, sl
	add r2, sp, #0xc
	mov r3, sb
	bl sub_8038984
	ldr r0, _08036FF8
	adds r0, #0x4c
	adds r0, r5, r0
	ldr r0, [r0]
	str r0, [sp]
	mov r4, r8
	ldrb r0, [r4, #9]
	str r0, [sp, #4]
	ldr r0, [sp, #0x2c]
	str r0, [sp, #8]
	adds r0, r7, #0
	mov r1, sl
	add r2, sp, #0xc
	mov r3, sb
	bl sub_8038984
	ldr r0, _08036FF8
	adds r0, #0x50
	adds r0, r5, r0
	ldr r0, [r0]
	str r0, [sp]
	ldrb r0, [r4, #0xa]
	str r0, [sp, #4]
	ldr r1, [sp, #0x2c]
	str r1, [sp, #8]
	adds r0, r7, #0
	mov r1, sl
	add r2, sp, #0xc
	mov r3, sb
	bl sub_8038984
	ldr r0, _08036FF8
	adds r0, #0x54
	adds r0, r5, r0
	ldr r0, [r0]
	str r0, [sp]
	ldrb r0, [r4, #0xb]
	str r0, [sp, #4]
	ldr r2, [sp, #0x2c]
	str r2, [sp, #8]
	adds r0, r7, #0
	mov r1, sl
	add r2, sp, #0xc
	mov r3, sb
	bl sub_8038984
	ldr r0, _08036FF8
	adds r0, #0x58
	adds r0, r5, r0
	ldr r0, [r0]
	str r0, [sp]
	ldrb r0, [r4, #0xc]
	str r0, [sp, #4]
	ldr r3, [sp, #0x2c]
	str r3, [sp, #8]
	adds r0, r7, #0
	mov r1, sl
	add r2, sp, #0xc
	mov r3, sb
	bl sub_8038984
	ldr r4, _08036FFC
	adds r0, r4, r5
	ldr r0, [r0]
	str r0, [sp]
	mov r1, r8
	ldrb r0, [r1, #0xd]
	str r0, [sp, #4]
	ldr r2, [sp, #0x30]
	str r2, [sp, #8]
	adds r0, r7, #0
	mov r1, sl
	add r2, sp, #0xc
	mov r3, sb
	bl sub_8038984
	add r6, sp, #0x14
	ldr r0, _08036FF8
	adds r0, #0x60
	adds r0, r5, r0
	ldr r0, [r0]
	str r0, [sp]
	mov r3, r8
	ldrb r0, [r3, #0xe]
	str r0, [sp, #4]
	ldr r4, [sp, #0x30]
	str r4, [sp, #8]
	adds r0, r7, #0
	ldr r1, [sp, #0x34]
	add r2, sp, #0xc
	adds r3, r6, #0
	bl sub_8038984
	ldr r0, _08036FF8
	adds r0, #0x64
	adds r0, r5, r0
	ldr r0, [r0]
	str r0, [sp]
	mov r1, r8
	ldrb r0, [r1, #0xf]
	str r0, [sp, #4]
	str r4, [sp, #8]
	adds r0, r7, #0
	ldr r1, [sp, #0x34]
	add r2, sp, #0xc
	adds r3, r6, #0
	bl sub_8038984
	ldr r0, _08036FF8
	adds r0, #0x68
	adds r0, r5, r0
	ldr r0, [r0]
	str r0, [sp]
	mov r2, r8
	ldrb r0, [r2, #0x10]
	str r0, [sp, #4]
	str r4, [sp, #8]
	adds r0, r7, #0
	ldr r1, [sp, #0x34]
	add r2, sp, #0xc
	adds r3, r6, #0
	bl sub_8038984
	ldr r0, _08036FF8
	adds r0, #0x6c
	adds r0, r5, r0
	ldr r0, [r0]
	str r0, [sp]
	mov r3, r8
	ldrb r0, [r3, #0x11]
	str r0, [sp, #4]
	str r4, [sp, #8]
	adds r0, r7, #0
	ldr r1, [sp, #0x34]
	add r2, sp, #0xc
	adds r3, r6, #0
	bl sub_8038984
	ldr r0, _08036FF8
	adds r0, #0x70
	adds r0, r5, r0
	ldr r0, [r0]
	str r0, [sp]
	mov r4, r8
	ldrb r0, [r4, #0x1f]
	str r0, [sp, #4]
	ldr r0, [sp, #0x30]
	str r0, [sp, #8]
	adds r0, r7, #0
	ldr r1, [sp, #0x34]
	add r2, sp, #0xc
	adds r3, r6, #0
	bl sub_8038984
	ldr r0, _08036FF8
	adds r0, #0x7c
	adds r0, r5, r0
	ldr r0, [r0]
	str r0, [sp]
	mov r0, r8
	adds r0, #0x22
	ldrb r0, [r0]
	str r0, [sp, #4]
	ldr r1, [sp, #0x30]
	str r1, [sp, #8]
	adds r0, r7, #0
	ldr r1, [sp, #0x34]
	add r2, sp, #0xc
	adds r3, r6, #0
	bl sub_8038984
	ldr r0, _08036FF8
	adds r0, #0x80
	adds r0, r5, r0
	ldr r0, [r0]
	str r0, [sp]
	mov r0, r8
	adds r0, #0x23
	ldrb r0, [r0]
	str r0, [sp, #4]
	ldr r2, [sp, #0x30]
	str r2, [sp, #8]
	adds r0, r7, #0
	ldr r1, [sp, #0x34]
	add r2, sp, #0xc
	adds r3, r6, #0
	bl sub_8038984
	ldr r0, _08036FF8
	adds r0, #0x84
	adds r0, r5, r0
	ldr r0, [r0]
	str r0, [sp]
	mov r0, r8
	adds r0, #0x24
	ldrb r0, [r0]
	str r0, [sp, #4]
	ldr r3, [sp, #0x30]
	str r3, [sp, #8]
	adds r0, r7, #0
	ldr r1, [sp, #0x34]
	add r2, sp, #0xc
	adds r3, r6, #0
	bl sub_8038984
	ldr r0, _08036FF8
	adds r0, #0x88
	adds r0, r5, r0
	ldr r0, [r0]
	str r0, [sp]
	mov r0, r8
	adds r0, #0x25
	ldrb r0, [r0]
	str r0, [sp, #4]
	ldr r4, [sp, #0x30]
	str r4, [sp, #8]
	adds r0, r7, #0
	ldr r1, [sp, #0x34]
	add r2, sp, #0xc
	adds r3, r6, #0
	bl sub_8038984
	ldr r1, _08037000
	adds r0, r5, r1
	ldr r0, [r0]
	str r0, [sp]
	mov r0, r8
	adds r0, #0x20
	ldrb r0, [r0]
	str r0, [sp, #4]
	str r4, [sp, #8]
	adds r0, r7, #0
	ldr r1, [sp, #0x34]
	add r2, sp, #0xc
	adds r3, r6, #0
	bl sub_8038984
	ldr r2, _08037004
	adds r5, r5, r2
	ldr r0, [r5]
	str r0, [sp]
	mov r0, r8
	adds r0, #0x21
	ldrb r0, [r0]
	str r0, [sp, #4]
	str r4, [sp, #8]
	adds r0, r7, #0
	ldr r1, [sp, #0x34]
	add r2, sp, #0xc
	adds r3, r6, #0
	bl sub_8038984
	ldr r3, _08037008
	mov r8, r3
	mov r0, r8
	adds r0, #4
	ldr r4, [sp, #0x60]
	adds r0, r4, r0
	ldr r0, [r0]
	str r0, [sp]
	add r4, r8
	ldrb r0, [r4]
	str r0, [sp, #4]
	ldr r0, [sp, #0x30]
	str r0, [sp, #8]
	adds r0, r7, #0
	ldr r1, [sp, #0x34]
	add r2, sp, #0xc
	adds r3, r6, #0
	bl sub_8038984
	mov r0, r8
	adds r0, #8
	ldr r1, [sp, #0x60]
	adds r0, r1, r0
	ldr r0, [r0]
	str r0, [sp]
	ldrb r0, [r4, #1]
	str r0, [sp, #4]
	ldr r2, [sp, #0x30]
	str r2, [sp, #8]
	adds r0, r7, #0
	ldr r1, [sp, #0x34]
	add r2, sp, #0xc
	adds r3, r6, #0
	bl sub_8038984
	ldr r3, [sp, #0x60]
	ldr r0, _0803700C
	adds r3, r3, r0
	str r3, [sp, #0x3c]
	ldr r0, [r3]
	str r0, [sp]
	ldrb r0, [r4, #2]
	str r0, [sp, #4]
	ldr r1, [sp, #0x30]
	str r1, [sp, #8]
	adds r0, r7, #0
	ldr r1, [sp, #0x34]
	add r2, sp, #0xc
	adds r3, r6, #0
	bl sub_8038984
	ldr r2, [sp, #0x60]
	adds r2, #0x10
	str r2, [sp, #0x60]
	ldr r3, [sp, #0x64]
	adds r3, #0x78
	str r3, [sp, #0x64]
	ldr r4, [sp, #0x68]
	adds r4, #0x78
	str r4, [sp, #0x68]
	ldr r0, [sp, #0x24]
	adds r0, #1
	str r0, [sp, #0x24]
	cmp r0, #5
	bgt _08036F24
	b _08036810
_08036F24:
	ldr r0, _08037010
	str r0, [sp]
	movs r0, #0x13
	str r0, [sp, #4]
	ldr r1, [sp, #0x5c]
	str r1, [sp, #8]
	adds r0, r7, #0
	ldr r1, [sp, #0x54]
	add r2, sp, #0xc
	ldr r3, [sp, #0x58]
	bl sub_8038984
	movs r2, #0
	str r2, [sp, #0x24]
_08036F40:
	movs r3, #0
	movs r0, #0xc4
	ldr r4, [sp, #0x24]
	adds r1, r4, #0
	muls r1, r0, r1
	ldr r2, _08036FF8
	adds r0, r1, r2
	ldrb r0, [r0, #0x12]
	cmp r3, r0
	blt _08036F56
	b _08037112
_08036F56:
	ldr r4, _08037014
	adds r4, r4, r1
	mov r8, r4
	ldr r0, _08037014
	subs r0, #0x90
	adds r1, r1, r0
	str r1, [sp, #0x40]
_08036F64:
	mov r0, r8
	ldr r1, [r0]
	lsls r6, r3, #4
	adds r1, r6, r1
	ldr r0, [sp, #0x10]
	adds r0, r7, r0
	ldrb r0, [r0]
	strb r0, [r1, #1]
	ldr r2, [sp, #0x10]
	adds r0, r7, r2
	ldrb r1, [r0]
	ldr r0, [sp, #0x18]
	adds r0, r0, r1
	str r0, [sp, #0x18]
	adds r2, #1
	str r2, [sp, #0x10]
	mov r4, r8
	ldr r1, [r4]
	adds r1, r6, r1
	adds r2, r7, r2
	ldrb r0, [r2]
	strb r0, [r1, #2]
	ldr r2, [sp, #0x10]
	adds r0, r7, r2
	ldrb r1, [r0]
	ldr r0, [sp, #0x18]
	adds r0, r0, r1
	str r0, [sp, #0x18]
	adds r2, #1
	str r2, [sp, #0x10]
	ldr r1, [r4]
	adds r1, r6, r1
	adds r2, r7, r2
	ldrb r0, [r2]
	strb r0, [r1, #3]
	ldr r2, [sp, #0x10]
	adds r0, r7, r2
	ldrb r1, [r0]
	ldr r0, [sp, #0x18]
	adds r0, r0, r1
	str r0, [sp, #0x18]
	adds r2, #1
	str r2, [sp, #0x10]
	ldr r1, [r4]
	adds r1, r6, r1
	adds r2, r7, r2
	ldrb r0, [r2]
	strb r0, [r1, #4]
	ldr r1, [sp, #0x10]
	adds r0, r7, r1
	ldrb r2, [r0]
	ldr r0, [sp, #0x18]
	adds r0, r0, r2
	str r0, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	movs r0, #0
	mov sb, r0
	ldr r0, [r4]
	adds r0, r6, r0
	adds r3, #1
	mov ip, r3
	ldrb r0, [r0]
	cmp sb, r0
	blt _08036FE8
	b _08037106
_08036FE8:
	movs r0, #0xc4
	ldr r1, [sp, #0x24]
	muls r0, r1, r0
	ldr r2, _08037014
	adds r5, r0, r2
_08036FF2:
	ldr r0, [r5]
	b _08037018
	.align 2, 0
_08036FF8: .4byte 0x0203E440
_08036FFC: .4byte 0x0203E49C
_08037000: .4byte 0x0203E4B4
_08037004: .4byte 0x0203E4B8
_08037008: .4byte 0x0203E8D8
_0803700C: .4byte 0x0203E8E4
_08037010: .4byte 0x0203E0FC
_08037014: .4byte 0x0203E4D0
_08037018:
	mov sl, r6
	adds r0, r6, r0
	ldr r1, [r0, #0xc]
	mov r3, sb
	lsls r3, r3, #3
	str r3, [sp, #0x48]
	adds r1, r3, r1
	ldr r0, [sp, #0x10]
	adds r0, r7, r0
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r2, [sp, #0x10]
	adds r0, r7, r2
	ldrb r1, [r0]
	ldr r0, [sp, #0x18]
	adds r0, r0, r1
	str r0, [sp, #0x18]
	adds r2, #1
	str r2, [sp, #0x10]
	ldr r0, [r5]
	adds r0, r6, r0
	ldr r1, [r0, #0xc]
	adds r1, r3, r1
	adds r2, r7, r2
	ldrb r0, [r2]
	strb r0, [r1, #1]
	ldr r2, [sp, #0x10]
	adds r0, r7, r2
	ldrb r1, [r0]
	ldr r0, [sp, #0x18]
	adds r0, r0, r1
	str r0, [sp, #0x18]
	adds r2, #1
	str r2, [sp, #0x10]
	ldr r0, [r5]
	adds r0, r6, r0
	ldr r1, [r0, #0xc]
	adds r1, r3, r1
	adds r2, r7, r2
	ldrb r0, [r2]
	strb r0, [r1, #2]
	ldr r2, [sp, #0x10]
	adds r0, r7, r2
	ldrb r1, [r0]
	ldr r0, [sp, #0x18]
	adds r0, r0, r1
	str r0, [sp, #0x18]
	adds r2, #1
	str r2, [sp, #0x10]
	ldr r0, [r5]
	adds r0, r6, r0
	ldr r1, [r0, #0xc]
	adds r1, r3, r1
	adds r2, r7, r2
	ldrb r0, [r2]
	strb r0, [r1, #3]
	ldr r2, [sp, #0x10]
	adds r0, r7, r2
	ldrb r1, [r0]
	ldr r0, [sp, #0x18]
	adds r0, r0, r1
	str r0, [sp, #0x18]
	adds r2, #1
	str r2, [sp, #0x10]
	ldr r0, [r5]
	adds r0, r6, r0
	ldr r3, [r0, #0xc]
	ldr r4, [sp, #0x48]
	adds r3, r4, r3
	adds r2, r7, r2
	ldrb r1, [r2]
	ldrb r0, [r2, #1]
	lsls r0, r0, #8
	orrs r1, r0
	strh r1, [r3, #4]
	ldr r2, [sp, #0x10]
	adds r0, r7, r2
	ldrb r3, [r0]
	ldr r0, [sp, #0x18]
	adds r2, #1
	adds r1, r7, r2
	adds r0, r0, r3
	ldrb r1, [r1]
	adds r0, r0, r1
	str r0, [sp, #0x18]
	adds r2, #1
	str r2, [sp, #0x10]
	ldr r0, [r5]
	adds r0, r6, r0
	ldr r0, [r0, #0xc]
	adds r0, r4, r0
	str r0, [sp, #0x4c]
	adds r2, r7, r2
	ldrb r1, [r2]
	ldrb r0, [r2, #1]
	lsls r0, r0, #8
	orrs r1, r0
	ldr r0, [sp, #0x4c]
	strh r1, [r0, #6]
	ldr r1, [sp, #0x10]
	adds r0, r7, r1
	ldrb r3, [r0]
	ldr r0, [sp, #0x18]
	adds r1, #1
	adds r2, r7, r1
	adds r0, r0, r3
	ldrb r2, [r2]
	adds r0, r0, r2
	str r0, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	movs r1, #1
	add sb, r1
	ldr r0, [r5]
	add r0, sl
	ldrb r2, [r0]
	cmp sb, r2
	bge _08037106
	b _08036FF2
_08037106:
	mov r3, ip
	ldr r4, [sp, #0x40]
	ldrb r4, [r4, #0x12]
	cmp r3, r4
	bge _08037112
	b _08036F64
_08037112:
	ldr r0, [sp, #0x24]
	adds r0, #1
	str r0, [sp, #0x24]
	cmp r0, #5
	bgt _0803711E
	b _08036F40
_0803711E:
	movs r1, #0
	str r1, [sp, #0x24]
	ldr r6, _080374AC
	movs r2, #0xc4
	mov sl, r2
	mov sb, r6
	mov r8, r2
_0803712C:
	movs r3, #0
	ldr r4, [sp, #0x24]
	mov r0, sl
	muls r0, r4, r0
	adds r0, r0, r6
	adds r4, #1
	mov ip, r4
	ldrb r0, [r0, #0x13]
	cmp r3, r0
	bge _08037172
	ldr r0, [sp, #0x24]
	mov r1, r8
	muls r1, r0, r1
	ldr r0, _080374B0
	adds r5, r1, r0
	mov r2, sb
	adds r4, r1, r2
_0803714E:
	ldr r1, [r5]
	adds r1, r1, r3
	ldr r0, [sp, #0x10]
	adds r0, r7, r0
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, [sp, #0x10]
	adds r0, r7, r1
	ldrb r2, [r0]
	ldr r0, [sp, #0x18]
	adds r0, r0, r2
	str r0, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	adds r3, #1
	ldrb r0, [r4, #0x13]
	cmp r3, r0
	blt _0803714E
_08037172:
	movs r3, #0
	ldr r1, [sp, #0x24]
	mov r0, sl
	muls r0, r1, r0
	adds r0, r0, r6
	ldrb r0, [r0, #0x14]
	cmp r3, r0
	bge _080371B4
	adds r2, r1, #0
	mov r1, r8
	muls r1, r2, r1
	ldr r0, _080374B4
	adds r5, r1, r0
	mov r0, sb
	adds r4, r1, r0
_08037190:
	ldr r1, [r5]
	adds r1, r1, r3
	ldr r0, [sp, #0x10]
	adds r0, r7, r0
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, [sp, #0x10]
	adds r0, r7, r1
	ldrb r2, [r0]
	ldr r0, [sp, #0x18]
	adds r0, r0, r2
	str r0, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	adds r3, #1
	ldrb r1, [r4, #0x14]
	cmp r3, r1
	blt _08037190
_080371B4:
	movs r3, #0
	ldr r2, [sp, #0x24]
	mov r0, sl
	muls r0, r2, r0
	adds r0, r0, r6
	ldrb r0, [r0, #0x15]
	cmp r3, r0
	bge _080371F4
	mov r1, r8
	muls r1, r2, r1
	ldr r0, _080374B8
	adds r5, r1, r0
	mov r0, sb
	adds r4, r1, r0
_080371D0:
	ldr r1, [r5]
	adds r1, r1, r3
	ldr r0, [sp, #0x10]
	adds r0, r7, r0
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, [sp, #0x10]
	adds r0, r7, r1
	ldrb r2, [r0]
	ldr r0, [sp, #0x18]
	adds r0, r0, r2
	str r0, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	adds r3, #1
	ldrb r1, [r4, #0x15]
	cmp r3, r1
	blt _080371D0
_080371F4:
	movs r3, #0
	ldr r2, [sp, #0x24]
	mov r0, sl
	muls r0, r2, r0
	adds r0, r0, r6
	ldrb r0, [r0, #0x16]
	cmp r3, r0
	bge _08037234
	mov r1, r8
	muls r1, r2, r1
	ldr r0, _080374BC
	adds r5, r1, r0
	mov r0, sb
	adds r4, r1, r0
_08037210:
	ldr r1, [r5]
	adds r1, r1, r3
	ldr r0, [sp, #0x10]
	adds r0, r7, r0
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, [sp, #0x10]
	adds r0, r7, r1
	ldrb r2, [r0]
	ldr r0, [sp, #0x18]
	adds r0, r0, r2
	str r0, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	adds r3, #1
	ldrb r1, [r4, #0x16]
	cmp r3, r1
	blt _08037210
_08037234:
	movs r3, #0
	ldr r2, [sp, #0x24]
	mov r0, sl
	muls r0, r2, r0
	adds r0, r0, r6
	ldrb r0, [r0, #0x17]
	cmp r3, r0
	bge _08037274
	mov r1, r8
	muls r1, r2, r1
	ldr r0, _080374C0
	adds r5, r1, r0
	mov r0, sb
	adds r4, r1, r0
_08037250:
	ldr r1, [r5]
	adds r1, r1, r3
	ldr r0, [sp, #0x10]
	adds r0, r7, r0
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, [sp, #0x10]
	adds r0, r7, r1
	ldrb r2, [r0]
	ldr r0, [sp, #0x18]
	adds r0, r0, r2
	str r0, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	adds r3, #1
	ldrb r1, [r4, #0x17]
	cmp r3, r1
	blt _08037250
_08037274:
	movs r3, #0
	ldr r2, [sp, #0x24]
	mov r0, sl
	muls r0, r2, r0
	adds r0, r0, r6
	ldrb r0, [r0, #0x18]
	cmp r3, r0
	bge _080372B4
	mov r1, r8
	muls r1, r2, r1
	ldr r0, _080374C4
	adds r5, r1, r0
	mov r0, sb
	adds r4, r1, r0
_08037290:
	ldr r1, [r5]
	adds r1, r1, r3
	ldr r0, [sp, #0x10]
	adds r0, r7, r0
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, [sp, #0x10]
	adds r0, r7, r1
	ldrb r2, [r0]
	ldr r0, [sp, #0x18]
	adds r0, r0, r2
	str r0, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	adds r3, #1
	ldrb r1, [r4, #0x18]
	cmp r3, r1
	blt _08037290
_080372B4:
	movs r3, #0
	ldr r2, [sp, #0x24]
	mov r0, sl
	muls r0, r2, r0
	adds r0, r0, r6
	ldrb r0, [r0, #0x19]
	cmp r3, r0
	bge _080372F4
	mov r1, r8
	muls r1, r2, r1
	ldr r0, _080374C8
	adds r5, r1, r0
	mov r0, sb
	adds r4, r1, r0
_080372D0:
	ldr r1, [r5]
	adds r1, r1, r3
	ldr r0, [sp, #0x10]
	adds r0, r7, r0
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, [sp, #0x10]
	adds r0, r7, r1
	ldrb r2, [r0]
	ldr r0, [sp, #0x18]
	adds r0, r0, r2
	str r0, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	adds r3, #1
	ldrb r1, [r4, #0x19]
	cmp r3, r1
	blt _080372D0
_080372F4:
	movs r3, #0
	ldr r2, [sp, #0x24]
	mov r0, sl
	muls r0, r2, r0
	adds r0, r0, r6
	ldrb r0, [r0, #0x1a]
	cmp r3, r0
	bge _08037334
	mov r1, r8
	muls r1, r2, r1
	ldr r0, _080374CC
	adds r5, r1, r0
	mov r0, sb
	adds r4, r1, r0
_08037310:
	ldr r1, [r5]
	adds r1, r1, r3
	ldr r0, [sp, #0x10]
	adds r0, r7, r0
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, [sp, #0x10]
	adds r0, r7, r1
	ldrb r2, [r0]
	ldr r0, [sp, #0x18]
	adds r0, r0, r2
	str r0, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	adds r3, #1
	ldrb r1, [r4, #0x1a]
	cmp r3, r1
	blt _08037310
_08037334:
	movs r3, #0
	ldr r2, [sp, #0x24]
	mov r0, sl
	muls r0, r2, r0
	adds r0, r0, r6
	ldrb r0, [r0, #0x1b]
	cmp r3, r0
	bge _08037374
	mov r1, r8
	muls r1, r2, r1
	ldr r0, _080374D0
	adds r5, r1, r0
	mov r0, sb
	adds r4, r1, r0
_08037350:
	ldr r1, [r5]
	adds r1, r1, r3
	ldr r0, [sp, #0x10]
	adds r0, r7, r0
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, [sp, #0x10]
	adds r0, r7, r1
	ldrb r2, [r0]
	ldr r0, [sp, #0x18]
	adds r0, r0, r2
	str r0, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	adds r3, #1
	ldrb r1, [r4, #0x1b]
	cmp r3, r1
	blt _08037350
_08037374:
	movs r3, #0
	ldr r2, [sp, #0x24]
	mov r0, sl
	muls r0, r2, r0
	adds r0, r0, r6
	ldrb r0, [r0, #0x1c]
	cmp r3, r0
	bge _080373B4
	mov r1, r8
	muls r1, r2, r1
	ldr r0, _080374D4
	adds r5, r1, r0
	mov r0, sb
	adds r4, r1, r0
_08037390:
	ldr r1, [r5]
	adds r1, r1, r3
	ldr r0, [sp, #0x10]
	adds r0, r7, r0
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, [sp, #0x10]
	adds r0, r7, r1
	ldrb r2, [r0]
	ldr r0, [sp, #0x18]
	adds r0, r0, r2
	str r0, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	adds r3, #1
	ldrb r1, [r4, #0x1c]
	cmp r3, r1
	blt _08037390
_080373B4:
	movs r3, #0
	ldr r2, [sp, #0x24]
	mov r0, sl
	muls r0, r2, r0
	adds r0, r0, r6
	ldrb r0, [r0, #0x1d]
	cmp r3, r0
	bge _080373F4
	mov r1, r8
	muls r1, r2, r1
	ldr r0, _080374D8
	adds r5, r1, r0
	mov r0, sb
	adds r4, r1, r0
_080373D0:
	ldr r1, [r5]
	adds r1, r1, r3
	ldr r0, [sp, #0x10]
	adds r0, r7, r0
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, [sp, #0x10]
	adds r0, r7, r1
	ldrb r2, [r0]
	ldr r0, [sp, #0x18]
	adds r0, r0, r2
	str r0, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	adds r3, #1
	ldrb r1, [r4, #0x1d]
	cmp r3, r1
	blt _080373D0
_080373F4:
	movs r3, #0
	ldr r2, [sp, #0x24]
	mov r0, sl
	muls r0, r2, r0
	adds r0, r0, r6
	ldrb r0, [r0, #0x1e]
	cmp r3, r0
	bge _08037434
	mov r1, r8
	muls r1, r2, r1
	ldr r0, _080374DC
	adds r5, r1, r0
	mov r0, sb
	adds r4, r1, r0
_08037410:
	ldr r1, [r5]
	adds r1, r1, r3
	ldr r0, [sp, #0x10]
	adds r0, r7, r0
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, [sp, #0x10]
	adds r0, r7, r1
	ldrb r2, [r0]
	ldr r0, [sp, #0x18]
	adds r0, r0, r2
	str r0, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	adds r3, #1
	ldrb r1, [r4, #0x1e]
	cmp r3, r1
	blt _08037410
_08037434:
	mov r2, ip
	str r2, [sp, #0x24]
	cmp r2, #5
	bgt _0803743E
	b _0803712C
_0803743E:
	ldr r1, [sp, #0x10]
	adds r0, r7, r1
	ldrb r2, [r0]
	ldr r0, [sp, #0x18]
	adds r0, r0, r2
	str r0, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	add r2, sp, #0xc
	adds r1, r7, r1
	ldrb r0, [r1]
	strb r0, [r2]
	ldr r1, [sp, #0x10]
	adds r0, r7, r1
	ldrb r2, [r0]
	ldr r0, [sp, #0x18]
	adds r0, r0, r2
	str r0, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	add r0, sp, #0xc
	ldrb r3, [r0]
	lsls r1, r3, #0x18
	movs r2, #1
	lsrs r0, r1, #0x1f
	ldr r4, _080374E0
	strb r0, [r4]
	lsrs r0, r1, #0x1e
	ands r0, r2
	ldr r4, _080374E4
	strb r0, [r4]
	lsrs r0, r1, #0x1d
	ands r0, r2
	ldr r4, _080374E8
	strb r0, [r4]
	lsrs r0, r1, #0x1c
	ands r0, r2
	ldr r4, _080374EC
	strb r0, [r4]
	lsrs r0, r1, #0x1b
	ands r0, r2
	ldr r4, _080374F0
	strb r0, [r4]
	lsrs r0, r1, #0x1a
	ands r0, r2
	ldr r4, _080374F4
	strb r0, [r4]
	lsrs r1, r1, #0x19
	ands r1, r2
	ldr r0, _080374F8
	strb r1, [r0]
	movs r5, #1
	adds r0, r5, #0
	b _080374FC
	.align 2, 0
_080374AC: .4byte 0x0203E440
_080374B0: .4byte 0x0203E4D4
_080374B4: .4byte 0x0203E4D8
_080374B8: .4byte 0x0203E4DC
_080374BC: .4byte 0x0203E4E0
_080374C0: .4byte 0x0203E4E4
_080374C4: .4byte 0x0203E4E8
_080374C8: .4byte 0x0203E4EC
_080374CC: .4byte 0x0203E4F0
_080374D0: .4byte 0x0203E4F4
_080374D4: .4byte 0x0203E4F8
_080374D8: .4byte 0x0203E4FC
_080374DC: .4byte 0x0203E500
_080374E0: .4byte 0x0203E938
_080374E4: .4byte 0x0203E939
_080374E8: .4byte 0x0203E133
_080374EC: .4byte 0x0203E93D
_080374F0: .4byte 0x0203E93E
_080374F4: .4byte 0x0203E93F
_080374F8: .4byte 0x0203E940
_080374FC:
	ands r0, r3
	ldr r1, _080378E8
	strb r0, [r1]
	add r1, sp, #0xc
	ldr r0, [sp, #0x10]
	adds r0, r7, r0
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, [sp, #0x10]
	adds r0, r7, r1
	ldrb r3, [r0]
	ldr r0, [sp, #0x18]
	adds r0, r0, r3
	str r0, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	add r0, sp, #0xc
	ldrb r3, [r0]
	lsls r1, r3, #0x18
	lsrs r0, r1, #0x1f
	ands r0, r2
	ldr r4, _080378EC
	strb r0, [r4]
	lsrs r0, r1, #0x1e
	ands r0, r2
	ldr r4, _080378F0
	strb r0, [r4]
	lsrs r0, r1, #0x1d
	ands r0, r2
	ldr r4, _080378F4
	strb r0, [r4]
	lsrs r0, r1, #0x1c
	ands r0, r2
	ldr r4, _080378F8
	strb r0, [r4]
	lsrs r0, r1, #0x1b
	ands r0, r2
	ldr r4, _080378FC
	strb r0, [r4]
	lsrs r0, r1, #0x1a
	ands r0, r2
	ldr r4, _08037900
	strb r0, [r4]
	lsrs r1, r1, #0x19
	ands r1, r2
	ldr r0, _08037904
	strb r1, [r0]
	adds r0, r5, #0
	ands r0, r3
	ldr r1, _08037908
	strb r0, [r1]
	add r1, sp, #0xc
	ldr r0, [sp, #0x10]
	adds r0, r7, r0
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, [sp, #0x10]
	adds r0, r7, r1
	ldrb r3, [r0]
	ldr r0, [sp, #0x18]
	adds r0, r0, r3
	str r0, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	add r0, sp, #0xc
	ldrb r3, [r0]
	lsls r1, r3, #0x18
	lsrs r0, r1, #0x1f
	ands r0, r2
	ldr r4, _0803790C
	strb r0, [r4]
	lsrs r0, r1, #0x1e
	ands r0, r2
	ldr r4, _08037910
	strb r0, [r4]
	lsrs r0, r1, #0x1d
	ands r0, r2
	ldr r4, _08037914
	strb r0, [r4]
	lsrs r0, r1, #0x1c
	ands r0, r2
	ldr r4, _08037918
	strb r0, [r4]
	lsrs r0, r1, #0x1b
	ands r0, r2
	ldr r4, _0803791C
	strb r0, [r4]
	lsrs r0, r1, #0x1a
	ands r0, r2
	ldr r4, _08037920
	strb r0, [r4]
	lsrs r1, r1, #0x19
	ands r1, r2
	ldr r0, _08037924
	strb r1, [r0]
	adds r0, r5, #0
	ands r0, r3
	ldr r1, _08037928
	strb r0, [r1]
	add r1, sp, #0xc
	ldr r0, [sp, #0x10]
	adds r0, r7, r0
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, [sp, #0x10]
	adds r0, r7, r1
	ldrb r3, [r0]
	ldr r0, [sp, #0x18]
	adds r0, r0, r3
	str r0, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	add r0, sp, #0xc
	ldrb r3, [r0]
	lsls r1, r3, #0x18
	lsrs r0, r1, #0x1f
	ands r0, r2
	ldr r4, _0803792C
	strb r0, [r4]
	lsrs r0, r1, #0x1e
	ands r0, r2
	ldr r4, _08037930
	strb r0, [r4]
	lsrs r0, r1, #0x1d
	ands r0, r2
	ldr r4, _08037934
	strb r0, [r4]
	lsrs r0, r1, #0x1c
	ands r0, r2
	ldr r4, _08037938
	strb r0, [r4]
	lsrs r0, r1, #0x1b
	ands r0, r2
	ldr r4, _0803793C
	strb r0, [r4]
	lsrs r0, r1, #0x1a
	ands r0, r2
	ldr r4, _08037940
	strb r0, [r4]
	lsrs r1, r1, #0x19
	ands r1, r2
	ldr r0, _08037944
	strb r1, [r0]
	adds r0, r5, #0
	ands r0, r3
	ldr r1, _08037948
	strb r0, [r1]
	add r1, sp, #0xc
	ldr r0, [sp, #0x10]
	adds r0, r7, r0
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, [sp, #0x10]
	adds r0, r7, r1
	ldrb r3, [r0]
	ldr r0, [sp, #0x18]
	adds r0, r0, r3
	str r0, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	add r0, sp, #0xc
	ldrb r3, [r0]
	lsls r1, r3, #0x18
	lsrs r0, r1, #0x1f
	ands r0, r2
	ldr r4, _0803794C
	strb r0, [r4]
	lsrs r0, r1, #0x1e
	ands r0, r2
	ldr r4, _08037950
	strb r0, [r4]
	lsrs r0, r1, #0x1d
	ands r0, r2
	ldr r4, _08037954
	strb r0, [r4]
	lsrs r0, r1, #0x1c
	ands r0, r2
	ldr r4, _08037958
	strb r0, [r4]
	lsrs r0, r1, #0x1b
	ands r0, r2
	ldr r4, _0803795C
	strb r0, [r4]
	lsrs r0, r1, #0x1a
	ands r0, r2
	ldr r4, _08037960
	strb r0, [r4]
	lsrs r1, r1, #0x19
	ands r1, r2
	ldr r0, _08037964
	strb r1, [r0]
	adds r0, r5, #0
	ands r0, r3
	ldr r1, _08037968
	strb r0, [r1]
	add r1, sp, #0xc
	ldr r0, [sp, #0x10]
	adds r0, r7, r0
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, [sp, #0x10]
	adds r0, r7, r1
	ldrb r3, [r0]
	ldr r0, [sp, #0x18]
	adds r0, r0, r3
	str r0, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	add r0, sp, #0xc
	ldrb r3, [r0]
	lsls r1, r3, #0x18
	lsrs r0, r1, #0x1f
	ands r0, r2
	ldr r4, _0803796C
	strb r0, [r4]
	lsrs r0, r1, #0x1e
	ands r0, r2
	ldr r4, _08037970
	strb r0, [r4]
	lsrs r0, r1, #0x1d
	ands r0, r2
	ldr r4, _08037974
	strb r0, [r4]
	lsrs r0, r1, #0x1c
	ands r0, r2
	ldr r4, _08037978
	strb r0, [r4]
	lsrs r0, r1, #0x1b
	ands r0, r2
	ldr r4, _0803797C
	strb r0, [r4]
	lsrs r0, r1, #0x1a
	ands r0, r2
	ldr r4, _08037980
	strb r0, [r4]
	lsrs r1, r1, #0x19
	ands r1, r2
	ldr r0, _08037984
	strb r1, [r0]
	adds r0, r5, #0
	ands r0, r3
	ldr r1, _08037988
	strb r0, [r1]
	add r1, sp, #0xc
	ldr r0, [sp, #0x10]
	adds r0, r7, r0
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, [sp, #0x10]
	adds r0, r7, r1
	ldrb r3, [r0]
	ldr r0, [sp, #0x18]
	adds r0, r0, r3
	str r0, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	add r0, sp, #0xc
	ldrb r3, [r0]
	lsls r1, r3, #0x18
	lsrs r0, r1, #0x1f
	ands r0, r2
	ldr r4, _0803798C
	strb r0, [r4]
	lsrs r0, r1, #0x1e
	ands r0, r2
	ldr r4, _08037990
	strb r0, [r4]
	lsrs r0, r1, #0x1d
	ands r0, r2
	ldr r4, _08037994
	strb r0, [r4]
	lsrs r0, r1, #0x1c
	ands r0, r2
	ldr r4, _08037998
	strb r0, [r4]
	lsrs r0, r1, #0x1b
	ands r0, r2
	ldr r4, _0803799C
	strb r0, [r4]
	lsrs r0, r1, #0x1a
	ands r0, r2
	ldr r4, _080379A0
	strb r0, [r4]
	lsrs r1, r1, #0x19
	ands r1, r2
	ldr r0, _080379A4
	strb r1, [r0]
	adds r0, r5, #0
	ands r0, r3
	ldr r1, _080379A8
	strb r0, [r1]
	add r1, sp, #0xc
	ldr r0, [sp, #0x10]
	adds r0, r7, r0
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, [sp, #0x10]
	adds r0, r7, r1
	ldrb r3, [r0]
	ldr r0, [sp, #0x18]
	adds r0, r0, r3
	str r0, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	add r0, sp, #0xc
	ldrb r3, [r0]
	lsls r1, r3, #0x18
	lsrs r0, r1, #0x1f
	ands r0, r2
	ldr r4, _080379AC
	strb r0, [r4]
	lsrs r0, r1, #0x1e
	ands r0, r2
	ldr r4, _080379B0
	strb r0, [r4]
	lsrs r0, r1, #0x1d
	ands r0, r2
	ldr r4, _080379B4
	strb r0, [r4]
	lsrs r0, r1, #0x1c
	ands r0, r2
	ldr r4, _080379B8
	strb r0, [r4]
	lsrs r0, r1, #0x1b
	ands r0, r2
	ldr r4, _080379BC
	strb r0, [r4]
	lsrs r0, r1, #0x1a
	ands r0, r2
	ldr r4, _080379C0
	strb r0, [r4]
	lsrs r1, r1, #0x19
	ands r1, r2
	ldr r0, _080379C4
	strb r1, [r0]
	adds r0, r5, #0
	ands r0, r3
	ldr r1, _080379C8
	strb r0, [r1]
	add r1, sp, #0xc
	ldr r0, [sp, #0x10]
	adds r0, r7, r0
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, [sp, #0x10]
	adds r0, r7, r1
	ldrb r3, [r0]
	ldr r0, [sp, #0x18]
	adds r0, r0, r3
	str r0, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	add r0, sp, #0xc
	ldrb r3, [r0]
	lsls r1, r3, #0x18
	lsrs r0, r1, #0x1f
	ands r0, r2
	ldr r4, _080379CC
	strb r0, [r4]
	lsrs r0, r1, #0x1e
	ands r0, r2
	ldr r4, _080379D0
	strb r0, [r4]
	lsrs r0, r1, #0x1d
	ands r0, r2
	ldr r4, _080379D4
	strb r0, [r4]
	lsrs r0, r1, #0x1c
	ands r0, r2
	ldr r4, _080379D8
	strb r0, [r4]
	lsrs r0, r1, #0x1b
	ands r0, r2
	ldr r4, _080379DC
	strb r0, [r4]
	lsrs r0, r1, #0x1a
	ands r0, r2
	ldr r4, _080379E0
	strb r0, [r4]
	lsrs r1, r1, #0x19
	ands r1, r2
	ldr r0, _080379E4
	strb r1, [r0]
	adds r0, r5, #0
	ands r0, r3
	ldr r1, _080379E8
	strb r0, [r1]
	add r1, sp, #0xc
	ldr r0, [sp, #0x10]
	adds r0, r7, r0
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, [sp, #0x10]
	adds r0, r7, r1
	ldrb r3, [r0]
	ldr r0, [sp, #0x18]
	adds r0, r0, r3
	str r0, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	add r0, sp, #0xc
	ldrb r1, [r0]
	lsls r1, r1, #0x18
	lsrs r0, r1, #0x1f
	ands r0, r2
	ldr r3, _080379EC
	strb r0, [r3]
	lsrs r1, r1, #0x1e
	ands r1, r2
	ldr r4, _080379F0
	strb r1, [r4]
	add r0, sp, #0xc
	ldrb r3, [r0]
	lsls r1, r3, #0x18
	lsrs r0, r1, #0x1d
	ands r0, r2
	ldr r4, _080379F4
	strb r0, [r4]
	lsrs r0, r1, #0x1c
	ands r0, r2
	ldr r4, _080379F8
	strb r0, [r4]
	lsrs r0, r1, #0x1b
	ands r0, r2
	ldr r4, _080379FC
	strb r0, [r4]
	lsrs r0, r1, #0x1a
	ands r0, r2
	ldr r4, _08037A00
	strb r0, [r4]
	lsrs r1, r1, #0x19
	ands r1, r2
	ldr r0, _08037A04
	strb r1, [r0]
	adds r0, r5, #0
	ands r0, r3
	ldr r1, _08037A08
	strb r0, [r1]
	add r1, sp, #0xc
	ldr r0, [sp, #0x10]
	adds r0, r7, r0
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, [sp, #0x10]
	adds r0, r7, r1
	ldrb r3, [r0]
	ldr r0, [sp, #0x18]
	adds r0, r0, r3
	str r0, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	add r0, sp, #0xc
	ldrb r3, [r0]
	lsls r1, r3, #0x18
	lsrs r0, r1, #0x1f
	ands r0, r2
	ldr r4, _08037A0C
	strb r0, [r4]
	lsrs r0, r1, #0x1e
	ands r0, r2
	ldr r4, _08037A10
	strb r0, [r4]
	lsrs r0, r1, #0x1d
	ands r0, r2
	ldr r4, _08037A14
	strb r0, [r4]
	lsrs r0, r1, #0x1c
	ands r0, r2
	ldr r4, _08037A18
	strb r0, [r4]
	lsrs r0, r1, #0x1b
	ands r0, r2
	ldr r4, _08037A1C
	strb r0, [r4]
	lsrs r0, r1, #0x1a
	ands r0, r2
	ldr r4, _08037A20
	strb r0, [r4]
	lsrs r1, r1, #0x19
	ands r1, r2
	ldr r0, _08037A24
	strb r1, [r0]
	adds r0, r5, #0
	ands r0, r3
	ldr r1, _08037A28
	strb r0, [r1]
	add r1, sp, #0xc
	ldr r0, [sp, #0x10]
	adds r0, r7, r0
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, [sp, #0x10]
	adds r0, r7, r1
	ldrb r3, [r0]
	ldr r0, [sp, #0x18]
	adds r0, r0, r3
	str r0, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	add r0, sp, #0xc
	ldrb r3, [r0]
	b _08037A2C
	.align 2, 0
_080378E8: .4byte 0x0203E10F
_080378EC: .4byte 0x0203E941
_080378F0: .4byte 0x0203E942
_080378F4: .4byte 0x0203E943
_080378F8: .4byte 0x0203E944
_080378FC: .4byte 0x0203E945
_08037900: .4byte 0x0203E946
_08037904: .4byte 0x0203E947
_08037908: .4byte 0x0203E949
_0803790C: .4byte 0x0203E94A
_08037910: .4byte 0x0203E94B
_08037914: .4byte 0x0203E94C
_08037918: .4byte 0x0203E94D
_0803791C: .4byte 0x0203E94E
_08037920: .4byte 0x0203E960
_08037924: .4byte 0x0203E961
_08037928: .4byte 0x0203E94F
_0803792C: .4byte 0x0203E950
_08037930: .4byte 0x0203E951
_08037934: .4byte 0x0203E952
_08037938: .4byte 0x0203E954
_0803793C: .4byte 0x0203E955
_08037940: .4byte 0x0203E956
_08037944: .4byte 0x0203E957
_08037948: .4byte 0x0203E958
_0803794C: .4byte 0x0203E959
_08037950: .4byte 0x0203E95A
_08037954: .4byte 0x0203E95B
_08037958: .4byte 0x0203E953
_0803795C: .4byte 0x0203E95C
_08037960: .4byte 0x0203E95D
_08037964: .4byte 0x0203E95E
_08037968: .4byte 0x0203E95F
_0803796C: .4byte 0x0203E962
_08037970: .4byte 0x0203E963
_08037974: .4byte 0x0203E964
_08037978: .4byte 0x0203E967
_0803797C: .4byte 0x0203E965
_08037980: .4byte 0x0203E966
_08037984: .4byte 0x0203E968
_08037988: .4byte 0x0203E969
_0803798C: .4byte 0x0203E96A
_08037990: .4byte 0x0203E96B
_08037994: .4byte 0x0203E96C
_08037998: .4byte 0x0203E96D
_0803799C: .4byte 0x0203E96E
_080379A0: .4byte 0x0203E96F
_080379A4: .4byte 0x0203E970
_080379A8: .4byte 0x0203E948
_080379AC: .4byte 0x0203E122
_080379B0: .4byte 0x0203E123
_080379B4: .4byte 0x0203E124
_080379B8: .4byte 0x0203E125
_080379BC: .4byte 0x0203E126
_080379C0: .4byte 0x0203E127
_080379C4: .4byte 0x0203E128
_080379C8: .4byte 0x0203E129
_080379CC: .4byte 0x0203E12A
_080379D0: .4byte 0x0203E12B
_080379D4: .4byte 0x0203E12C
_080379D8: .4byte 0x0203E12D
_080379DC: .4byte 0x0203E12E
_080379E0: .4byte 0x0203E12F
_080379E4: .4byte 0x0203E130
_080379E8: .4byte 0x0203E131
_080379EC: .4byte 0x0203E132
_080379F0: .4byte 0x0203E972
_080379F4: .4byte 0x0203E973
_080379F8: .4byte 0x0203E974
_080379FC: .4byte 0x0203E142
_08037A00: .4byte 0x0203E143
_08037A04: .4byte 0x0203E144
_08037A08: .4byte 0x0203E145
_08037A0C: .4byte 0x0203E146
_08037A10: .4byte 0x0203E147
_08037A14: .4byte 0x0203E148
_08037A18: .4byte 0x0203E149
_08037A1C: .4byte 0x0203E14A
_08037A20: .4byte 0x0203E14B
_08037A24: .4byte 0x0203E14C
_08037A28: .4byte 0x0203E14D
_08037A2C:
	lsls r1, r3, #0x18
	lsrs r0, r1, #0x1f
	ands r0, r2
	ldr r4, _08037B94
	strb r0, [r4]
	lsrs r0, r1, #0x1e
	ands r0, r2
	ldr r4, _08037B98
	strb r0, [r4]
	lsrs r0, r1, #0x1d
	ands r0, r2
	ldr r4, _08037B9C
	strb r0, [r4]
	lsrs r0, r1, #0x1c
	ands r0, r2
	ldr r4, _08037BA0
	strb r0, [r4]
	lsrs r0, r1, #0x1b
	ands r0, r2
	ldr r4, _08037BA4
	strb r0, [r4]
	lsrs r0, r1, #0x1a
	ands r0, r2
	ldr r4, _08037BA8
	strb r0, [r4]
	lsrs r1, r1, #0x19
	ands r1, r2
	ldr r0, _08037BAC
	strb r1, [r0]
	adds r0, r5, #0
	ands r0, r3
	ldr r1, _08037BB0
	strb r0, [r1]
	add r1, sp, #0xc
	ldr r0, [sp, #0x10]
	adds r0, r7, r0
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, [sp, #0x10]
	adds r0, r7, r1
	ldrb r3, [r0]
	ldr r0, [sp, #0x18]
	adds r0, r0, r3
	str r0, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	add r0, sp, #0xc
	ldrb r3, [r0]
	lsls r1, r3, #0x18
	lsrs r0, r1, #0x1f
	ands r0, r2
	ldr r4, _08037BB4
	strb r0, [r4]
	lsrs r0, r1, #0x1e
	ands r0, r2
	ldr r4, _08037BB8
	strb r0, [r4]
	lsrs r0, r1, #0x1d
	ands r0, r2
	ldr r4, _08037BBC
	strb r0, [r4]
	lsrs r0, r1, #0x1c
	ands r0, r2
	ldr r4, _08037BC0
	strb r0, [r4]
	lsrs r0, r1, #0x1b
	ands r0, r2
	ldr r4, _08037BC4
	strb r0, [r4]
	lsrs r0, r1, #0x1a
	ands r0, r2
	ldr r4, _08037BC8
	strb r0, [r4]
	lsrs r1, r1, #0x19
	ands r1, r2
	ldr r0, _08037BCC
	strb r1, [r0]
	adds r0, r5, #0
	ands r0, r3
	ldr r1, _08037BD0
	strb r0, [r1]
	add r1, sp, #0xc
	ldr r0, [sp, #0x10]
	adds r0, r7, r0
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, [sp, #0x10]
	adds r0, r7, r1
	ldrb r3, [r0]
	ldr r0, [sp, #0x18]
	adds r0, r0, r3
	str r0, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	add r0, sp, #0xc
	ldrb r3, [r0]
	lsls r1, r3, #0x18
	lsrs r0, r1, #0x1f
	ands r0, r2
	ldr r4, _08037BD4
	strb r0, [r4]
	lsrs r0, r1, #0x1e
	ands r0, r2
	ldr r4, _08037BD8
	strb r0, [r4]
	lsrs r0, r1, #0x1d
	ands r0, r2
	ldr r4, _08037BDC
	strb r0, [r4]
	lsrs r0, r1, #0x1c
	ands r0, r2
	ldr r4, _08037BE0
	strb r0, [r4]
	lsrs r0, r1, #0x1b
	ands r0, r2
	ldr r4, _08037BE4
	strb r0, [r4]
	lsrs r0, r1, #0x1a
	ands r0, r2
	ldr r4, _08037BE8
	strb r0, [r4]
	lsrs r1, r1, #0x19
	ands r1, r2
	ldr r0, _08037BEC
	strb r1, [r0]
	adds r1, r5, #0
	ands r1, r3
	ldr r3, _08037BF0
	strb r1, [r3]
	add r1, sp, #0xc
	ldr r0, [sp, #0x10]
	adds r0, r7, r0
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, [sp, #0x10]
	adds r0, r7, r1
	ldrb r3, [r0]
	ldr r0, [sp, #0x18]
	adds r0, r0, r3
	str r0, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	add r0, sp, #0xc
	ldrb r1, [r0]
	lsls r1, r1, #0x18
	lsrs r0, r1, #0x1f
	ands r0, r2
	ldr r4, _08037BF4
	strb r0, [r4]
	lsrs r0, r1, #0x1e
	ands r0, r2
	ldr r3, _08037BF8
	strb r0, [r3]
	lsrs r0, r1, #0x1d
	ands r0, r2
	ldr r4, _08037BFC
	strb r0, [r4]
	lsrs r0, r1, #0x1c
	ands r0, r2
	ldr r3, _08037C00
	strb r0, [r3]
	lsrs r1, r1, #0x1b
	ands r1, r2
	ldr r4, _08037C04
	strb r1, [r4]
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x1c]
	str r0, [r1]
	ldr r0, [sp, #0x18]
	ldr r2, [sp, #0x20]
	str r0, [r2]
	add sp, #0x6c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08037B94: .4byte 0x0203E14E
_08037B98: .4byte 0x0203E14F
_08037B9C: .4byte 0x0203E150
_08037BA0: .4byte 0x0203E151
_08037BA4: .4byte 0x0203E152
_08037BA8: .4byte 0x0203E153
_08037BAC: .4byte 0x0203E154
_08037BB0: .4byte 0x0203E155
_08037BB4: .4byte 0x0203E156
_08037BB8: .4byte 0x0203E157
_08037BBC: .4byte 0x0203E158
_08037BC0: .4byte 0x0203E159
_08037BC4: .4byte 0x0203E15A
_08037BC8: .4byte 0x0203E15B
_08037BCC: .4byte 0x0203E15C
_08037BD0: .4byte 0x0203E15D
_08037BD4: .4byte 0x0203E15E
_08037BD8: .4byte 0x0203E15F
_08037BDC: .4byte 0x0203E160
_08037BE0: .4byte 0x0203E161
_08037BE4: .4byte 0x0203E162
_08037BE8: .4byte 0x0203E163
_08037BEC: .4byte 0x0203E164
_08037BF0: .4byte 0x0203E165
_08037BF4: .4byte 0x0203E166
_08037BF8: .4byte 0x0203E167
_08037BFC: .4byte 0x0203E168
_08037C00: .4byte 0x0203E971
_08037C04: .4byte 0x0203E169

    .thumb
    .global sub_8037C08
sub_8037C08: @ 0x08037C08
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x2c
	mov r8, r0
	str r1, [sp, #0x10]
	ldr r1, [r1]
	adds r0, r0, r1
	ldrb r0, [r0]
	str r0, [sp, #0x14]
	adds r0, r1, #1
	str r0, [sp, #8]
	ldr r0, [sp, #0x14]
	cmp r0, #0x11
	beq _08037C2E
	bl _080388B8
_08037C2E:
	adds r0, r1, #0
	adds r0, #0x12
	str r0, [sp, #8]
	movs r1, #0
	str r1, [sp, #0x14]
	movs r6, #0
	ldr r5, _08038024
_08037C3C:
	ldr r1, [sp, #8]
	mov r2, r8
	adds r0, r2, r1
	ldrb r2, [r5]
	ldrb r0, [r0]
	adds r3, r1, #1
	str r3, [sp, #8]
	cmp r2, r0
	beq _08037C52
	bl _080388B8
_08037C52:
	mov r4, r8
	adds r0, r4, r3
	ldrb r1, [r5, #1]
	ldrb r0, [r0]
	adds r2, r3, #1
	str r2, [sp, #8]
	cmp r1, r0
	beq _08037C66
	bl _080388B8
_08037C66:
	adds r0, r4, r2
	ldrb r1, [r5, #2]
	ldrb r0, [r0]
	adds r2, #1
	str r2, [sp, #8]
	cmp r1, r0
	beq _08037C78
	bl _080388B8
_08037C78:
	adds r0, r4, r2
	ldrb r1, [r5, #3]
	ldrb r0, [r0]
	adds r2, #1
	str r2, [sp, #8]
	cmp r1, r0
	beq _08037C8A
	bl _080388B8
_08037C8A:
	adds r0, r4, r2
	ldrb r1, [r5, #4]
	ldrb r0, [r0]
	adds r2, #1
	str r2, [sp, #8]
	cmp r1, r0
	beq _08037C9C
	bl _080388B8
_08037C9C:
	adds r0, r4, r2
	ldrb r1, [r5, #5]
	ldrb r0, [r0]
	adds r2, #1
	str r2, [sp, #8]
	cmp r1, r0
	beq _08037CAE
	bl _080388B8
_08037CAE:
	adds r0, r4, r2
	ldrb r1, [r5, #6]
	ldrb r0, [r0]
	adds r2, #1
	str r2, [sp, #8]
	cmp r1, r0
	beq _08037CC0
	bl _080388B8
_08037CC0:
	adds r0, r4, r2
	ldrb r1, [r5, #7]
	ldrb r0, [r0]
	adds r2, #1
	str r2, [sp, #8]
	cmp r1, r0
	beq _08037CD2
	bl _080388B8
_08037CD2:
	adds r0, r4, r2
	ldrb r1, [r5, #8]
	ldrb r0, [r0]
	adds r2, #1
	str r2, [sp, #8]
	cmp r1, r0
	beq _08037CE4
	bl _080388B8
_08037CE4:
	adds r0, r4, r2
	ldrb r1, [r5, #9]
	ldrb r0, [r0]
	adds r2, #1
	str r2, [sp, #8]
	cmp r1, r0
	beq _08037CF6
	bl _080388B8
_08037CF6:
	adds r0, r4, r2
	ldrb r1, [r5, #0xa]
	ldrb r0, [r0]
	adds r2, #1
	str r2, [sp, #8]
	cmp r1, r0
	beq _08037D08
	bl _080388B8
_08037D08:
	adds r0, r4, r2
	ldrb r1, [r5, #0xb]
	ldrb r0, [r0]
	adds r2, #1
	str r2, [sp, #8]
	cmp r1, r0
	beq _08037D1A
	bl _080388B8
_08037D1A:
	adds r0, r4, r2
	ldrb r1, [r5, #0xc]
	ldrb r0, [r0]
	adds r2, #1
	str r2, [sp, #8]
	cmp r1, r0
	beq _08037D2C
	bl _080388B8
_08037D2C:
	adds r0, r4, r2
	ldrb r1, [r5, #0xd]
	ldrb r0, [r0]
	adds r2, #1
	str r2, [sp, #8]
	cmp r1, r0
	beq _08037D3E
	bl _080388B8
_08037D3E:
	adds r0, r4, r2
	ldrb r1, [r5, #0xe]
	ldrb r0, [r0]
	adds r2, #1
	str r2, [sp, #8]
	cmp r1, r0
	beq _08037D50
	bl _080388B8
_08037D50:
	adds r0, r4, r2
	ldrb r1, [r5, #0xf]
	ldrb r0, [r0]
	adds r2, #1
	str r2, [sp, #8]
	cmp r1, r0
	beq _08037D62
	bl _080388B8
_08037D62:
	adds r0, r4, r2
	ldrb r1, [r5, #0x10]
	ldrb r0, [r0]
	adds r2, #1
	str r2, [sp, #8]
	cmp r1, r0
	beq _08037D74
	bl _080388B8
_08037D74:
	adds r0, r4, r2
	ldrb r1, [r5, #0x11]
	ldrb r0, [r0]
	adds r2, #1
	str r2, [sp, #8]
	cmp r1, r0
	beq _08037D86
	bl _080388B8
_08037D86:
	adds r0, r4, r2
	ldrb r1, [r5, #0x12]
	ldrb r0, [r0]
	adds r2, #1
	str r2, [sp, #8]
	cmp r1, r0
	beq _08037D98
	bl _080388B8
_08037D98:
	adds r0, r4, r2
	ldrb r1, [r5, #0x13]
	ldrb r0, [r0]
	adds r2, #1
	str r2, [sp, #8]
	cmp r1, r0
	beq _08037DAA
	bl _080388B8
_08037DAA:
	adds r0, r4, r2
	ldrb r1, [r5, #0x14]
	ldrb r0, [r0]
	adds r2, #1
	str r2, [sp, #8]
	cmp r1, r0
	beq _08037DBC
	bl _080388B8
_08037DBC:
	ldr r1, _08038028
	movs r0, #0xc4
	ldr r3, [sp, #0x14]
	muls r0, r3, r0
	adds r4, r0, r1
	mov r1, r8
	adds r0, r1, r2
	ldrb r1, [r4]
	ldrb r0, [r0]
	adds r2, #1
	str r2, [sp, #8]
	cmp r1, r0
	beq _08037DDA
	bl _080388B8
_08037DDA:
	mov r3, r8
	adds r0, r3, r2
	ldrb r1, [r4, #1]
	ldrb r0, [r0]
	adds r2, #1
	str r2, [sp, #8]
	cmp r1, r0
	beq _08037DEE
	bl _080388B8
_08037DEE:
	adds r0, r3, r2
	ldrb r1, [r4, #2]
	ldrb r0, [r0]
	adds r2, #1
	str r2, [sp, #8]
	cmp r1, r0
	beq _08037E00
	bl _080388B8
_08037E00:
	adds r0, r3, r2
	ldrb r1, [r4, #3]
	ldrb r0, [r0]
	adds r2, #1
	str r2, [sp, #8]
	cmp r1, r0
	beq _08037E12
	bl _080388B8
_08037E12:
	adds r0, r3, r2
	ldrb r1, [r4, #4]
	ldrb r0, [r0]
	adds r2, #1
	str r2, [sp, #8]
	cmp r1, r0
	beq _08037E24
	bl _080388B8
_08037E24:
	adds r0, r3, r2
	ldrb r1, [r4, #5]
	ldrb r0, [r0]
	adds r2, #1
	str r2, [sp, #8]
	cmp r1, r0
	beq _08037E36
	bl _080388B8
_08037E36:
	adds r0, r3, r2
	ldrb r1, [r4, #6]
	ldrb r0, [r0]
	adds r2, #1
	str r2, [sp, #8]
	cmp r1, r0
	beq _08037E48
	bl _080388B8
_08037E48:
	adds r0, r3, r2
	ldrb r1, [r4, #7]
	ldrb r0, [r0]
	adds r2, #1
	str r2, [sp, #8]
	cmp r1, r0
	beq _08037E5A
	bl _080388B8
_08037E5A:
	adds r0, r3, r2
	ldrb r1, [r4, #8]
	ldrb r0, [r0]
	adds r2, #1
	str r2, [sp, #8]
	cmp r1, r0
	beq _08037E6C
	bl _080388B8
_08037E6C:
	adds r0, r3, r2
	ldrb r1, [r4, #9]
	ldrb r0, [r0]
	adds r2, #1
	str r2, [sp, #8]
	cmp r1, r0
	beq _08037E7E
	bl _080388B8
_08037E7E:
	adds r0, r3, r2
	ldrb r1, [r4, #0xa]
	ldrb r0, [r0]
	adds r2, #1
	str r2, [sp, #8]
	cmp r1, r0
	beq _08037E90
	bl _080388B8
_08037E90:
	adds r0, r3, r2
	ldrb r1, [r4, #0xb]
	ldrb r0, [r0]
	adds r2, #1
	str r2, [sp, #8]
	cmp r1, r0
	beq _08037EA2
	bl _080388B8
_08037EA2:
	adds r0, r3, r2
	ldrb r1, [r4, #0xc]
	ldrb r0, [r0]
	adds r2, #1
	str r2, [sp, #8]
	cmp r1, r0
	beq _08037EB4
	bl _080388B8
_08037EB4:
	adds r0, r3, r2
	ldrb r1, [r4, #0xd]
	ldrb r0, [r0]
	adds r2, #1
	str r2, [sp, #8]
	cmp r1, r0
	beq _08037EC6
	bl _080388B8
_08037EC6:
	adds r0, r3, r2
	ldrb r1, [r4, #0xe]
	ldrb r0, [r0]
	adds r2, #1
	str r2, [sp, #8]
	cmp r1, r0
	beq _08037ED8
	bl _080388B8
_08037ED8:
	adds r0, r3, r2
	ldrb r1, [r4, #0xf]
	ldrb r0, [r0]
	adds r2, #1
	str r2, [sp, #8]
	cmp r1, r0
	beq _08037EEA
	bl _080388B8
_08037EEA:
	adds r0, r3, r2
	ldrb r1, [r4, #0x10]
	ldrb r0, [r0]
	adds r2, #1
	str r2, [sp, #8]
	cmp r1, r0
	beq _08037EFC
	bl _080388B8
_08037EFC:
	adds r0, r3, r2
	ldrb r1, [r4, #0x11]
	ldrb r0, [r0]
	adds r2, #1
	str r2, [sp, #8]
	cmp r1, r0
	beq _08037F0E
	bl _080388B8
_08037F0E:
	adds r0, r3, r2
	ldrb r1, [r4, #0x1f]
	ldrb r0, [r0]
	adds r2, #1
	str r2, [sp, #8]
	cmp r1, r0
	beq _08037F20
	bl _080388B8
_08037F20:
	adds r0, r3, r2
	ldrb r1, [r4, #0x12]
	ldrb r0, [r0]
	adds r2, #1
	str r2, [sp, #8]
	cmp r1, r0
	beq _08037F32
	bl _080388B8
_08037F32:
	adds r0, r3, r2
	ldrb r1, [r4, #0x13]
	ldrb r0, [r0]
	adds r2, #1
	str r2, [sp, #8]
	cmp r1, r0
	beq _08037F44
	bl _080388B8
_08037F44:
	adds r0, r3, r2
	ldrb r1, [r4, #0x14]
	ldrb r0, [r0]
	adds r2, #1
	str r2, [sp, #8]
	cmp r1, r0
	beq _08037F56
	bl _080388B8
_08037F56:
	adds r0, r3, r2
	ldrb r1, [r4, #0x15]
	ldrb r0, [r0]
	adds r2, #1
	str r2, [sp, #8]
	cmp r1, r0
	beq _08037F68
	bl _080388B8
_08037F68:
	adds r0, r3, r2
	ldrb r1, [r4, #0x16]
	ldrb r0, [r0]
	adds r2, #1
	str r2, [sp, #8]
	cmp r1, r0
	beq _08037F7A
	bl _080388B8
_08037F7A:
	adds r0, r3, r2
	ldrb r1, [r4, #0x17]
	ldrb r0, [r0]
	adds r2, #1
	str r2, [sp, #8]
	cmp r1, r0
	beq _08037F8C
	bl _080388B8
_08037F8C:
	adds r0, r3, r2
	ldrb r1, [r4, #0x18]
	ldrb r0, [r0]
	adds r2, #1
	str r2, [sp, #8]
	cmp r1, r0
	beq _08037F9E
	bl _080388B8
_08037F9E:
	adds r0, r3, r2
	ldrb r1, [r4, #0x19]
	ldrb r0, [r0]
	adds r2, #1
	str r2, [sp, #8]
	cmp r1, r0
	beq _08037FB0
	bl _080388B8
_08037FB0:
	adds r0, r3, r2
	ldrb r1, [r4, #0x1a]
	ldrb r0, [r0]
	adds r2, #1
	str r2, [sp, #8]
	cmp r1, r0
	beq _08037FC2
	bl _080388B8
_08037FC2:
	adds r0, r3, r2
	ldrb r1, [r4, #0x1b]
	ldrb r0, [r0]
	adds r2, #1
	str r2, [sp, #8]
	cmp r1, r0
	beq _08037FD4
	bl _080388B8
_08037FD4:
	adds r0, r3, r2
	ldrb r1, [r4, #0x1c]
	ldrb r0, [r0]
	adds r2, #1
	str r2, [sp, #8]
	cmp r1, r0
	beq _08037FE6
	bl _080388B8
_08037FE6:
	adds r1, r4, #0
	adds r1, #0x22
	adds r0, r3, r2
	ldrb r1, [r1]
	ldrb r0, [r0]
	adds r2, #1
	str r2, [sp, #8]
	cmp r1, r0
	beq _08037FFC
	bl _080388B8
_08037FFC:
	adds r1, r4, #0
	adds r1, #0x23
	adds r0, r3, r2
	ldrb r1, [r1]
	ldrb r0, [r0]
	adds r3, r2, #1
	str r3, [sp, #8]
	cmp r1, r0
	beq _08038012
	bl _080388B8
_08038012:
	adds r0, r4, #0
	adds r0, #0x24
	mov r2, r8
	adds r1, r2, r3
	ldrb r2, [r0]
	ldrb r0, [r1]
	adds r3, #1
	str r3, [sp, #8]
	b _0803802C
	.align 2, 0
_08038024: .4byte 0x0203E170
_08038028: .4byte 0x0203E440
_0803802C:
	cmp r2, r0
	beq _08038034
	bl _080388B8
_08038034:
	adds r1, r4, #0
	adds r1, #0x25
	mov r2, r8
	adds r0, r2, r3
	ldrb r1, [r1]
	ldrb r0, [r0]
	adds r2, r3, #1
	str r2, [sp, #8]
	cmp r1, r0
	beq _0803804C
	bl _080388B8
_0803804C:
	mov r3, r8
	adds r0, r3, r2
	ldrb r1, [r4, #0x1d]
	ldrb r0, [r0]
	adds r2, #1
	str r2, [sp, #8]
	cmp r1, r0
	beq _08038060
	bl _080388B8
_08038060:
	adds r0, r3, r2
	ldrb r1, [r4, #0x1e]
	ldrb r0, [r0]
	adds r3, r2, #1
	str r3, [sp, #8]
	cmp r1, r0
	beq _08038072
	bl _080388B8
_08038072:
	adds r0, r4, #0
	adds r0, #0x20
	mov r2, r8
	adds r1, r2, r3
	ldrb r2, [r0]
	ldrb r0, [r1]
	adds r3, #1
	str r3, [sp, #8]
	cmp r2, r0
	beq _0803808A
	bl _080388B8
_0803808A:
	adds r0, r4, #0
	adds r0, #0x21
	mov r4, r8
	adds r1, r4, r3
	ldrb r2, [r0]
	ldrb r0, [r1]
	adds r3, #1
	str r3, [sp, #8]
	cmp r2, r0
	beq _080380A2
	bl _080388B8
_080380A2:
	ldr r0, _08038488
	adds r4, r6, r0
	mov r1, r8
	adds r0, r1, r3
	ldrb r1, [r4]
	ldrb r0, [r0]
	adds r2, r3, #1
	str r2, [sp, #8]
	cmp r1, r0
	beq _080380BA
	bl _080388B8
_080380BA:
	mov r3, r8
	adds r0, r3, r2
	ldrb r1, [r4, #1]
	ldrb r0, [r0]
	adds r2, #1
	str r2, [sp, #8]
	cmp r1, r0
	beq _080380CC
	b _080388B8
_080380CC:
	adds r0, r3, r2
	ldrb r1, [r4, #2]
	ldrb r0, [r0]
	adds r2, #1
	str r2, [sp, #8]
	cmp r1, r0
	beq _080380DC
	b _080388B8
_080380DC:
	adds r6, #0x10
	adds r5, #0x78
	ldr r4, [sp, #0x14]
	adds r4, #1
	str r4, [sp, #0x14]
	cmp r4, #5
	bgt _080380EC
	b _08037C3C
_080380EC:
	movs r0, #0
	str r0, [sp, #0xc]
	adds r0, r3, r2
	ldrb r1, [r0]
	add r0, sp, #4
	strb r1, [r0]
	ldr r0, [sp, #8]
	adds r0, #1
	str r0, [sp, #8]
	movs r0, #0
	str r0, [sp, #0x14]
	add r1, sp, #8
	mov sl, r1
	mov r2, sp
	adds r2, #0xc
	str r2, [sp, #0x24]
	mov r7, sl
	adds r6, r2, #0
_08038110:
	ldr r0, _0803848C
	ldr r3, [sp, #0x14]
	lsls r5, r3, #4
	subs r4, r5, r3
	lsls r4, r4, #3
	adds r4, r4, r0
	ldrb r0, [r4]
	str r0, [sp]
	mov r0, r8
	adds r1, r7, #0
	add r2, sp, #4
	adds r3, r6, #0
	bl sub_80389FC
	ldrb r0, [r4, #1]
	str r0, [sp]
	mov r0, r8
	adds r1, r7, #0
	add r2, sp, #4
	adds r3, r6, #0
	bl sub_80389FC
	ldrb r0, [r4, #2]
	str r0, [sp]
	mov r0, r8
	adds r1, r7, #0
	add r2, sp, #4
	adds r3, r6, #0
	bl sub_80389FC
	ldrb r0, [r4, #3]
	str r0, [sp]
	mov r0, r8
	adds r1, r7, #0
	add r2, sp, #4
	adds r3, r6, #0
	bl sub_80389FC
	ldrb r0, [r4, #4]
	str r0, [sp]
	mov r0, r8
	adds r1, r7, #0
	add r2, sp, #4
	adds r3, r6, #0
	bl sub_80389FC
	ldrb r0, [r4, #5]
	str r0, [sp]
	mov r0, r8
	adds r1, r7, #0
	add r2, sp, #4
	adds r3, r6, #0
	bl sub_80389FC
	ldrb r0, [r4, #6]
	str r0, [sp]
	mov r0, r8
	adds r1, r7, #0
	add r2, sp, #4
	adds r3, r6, #0
	bl sub_80389FC
	ldrb r0, [r4, #7]
	str r0, [sp]
	mov r0, r8
	adds r1, r7, #0
	add r2, sp, #4
	adds r3, r6, #0
	bl sub_80389FC
	ldrb r0, [r4, #8]
	str r0, [sp]
	mov r0, r8
	adds r1, r7, #0
	add r2, sp, #4
	adds r3, r6, #0
	bl sub_80389FC
	ldrb r0, [r4, #9]
	str r0, [sp]
	mov r0, r8
	adds r1, r7, #0
	add r2, sp, #4
	adds r3, r6, #0
	bl sub_80389FC
	ldrb r0, [r4, #0xa]
	str r0, [sp]
	mov r0, r8
	adds r1, r7, #0
	add r2, sp, #4
	adds r3, r6, #0
	bl sub_80389FC
	ldrb r0, [r4, #0xb]
	str r0, [sp]
	mov r0, r8
	adds r1, r7, #0
	add r2, sp, #4
	adds r3, r6, #0
	bl sub_80389FC
	ldrb r0, [r4, #0xc]
	str r0, [sp]
	mov r0, r8
	adds r1, r7, #0
	add r2, sp, #4
	adds r3, r6, #0
	bl sub_80389FC
	ldrb r0, [r4, #0xd]
	str r0, [sp]
	mov r0, r8
	adds r1, r7, #0
	add r2, sp, #4
	adds r3, r6, #0
	bl sub_80389FC
	ldrb r0, [r4, #0xe]
	str r0, [sp]
	mov r0, r8
	adds r1, r7, #0
	add r2, sp, #4
	adds r3, r6, #0
	bl sub_80389FC
	ldrb r0, [r4, #0xf]
	str r0, [sp]
	mov r0, r8
	adds r1, r7, #0
	add r2, sp, #4
	adds r3, r6, #0
	bl sub_80389FC
	ldrb r0, [r4, #0x10]
	str r0, [sp]
	mov r0, r8
	adds r1, r7, #0
	add r2, sp, #4
	adds r3, r6, #0
	bl sub_80389FC
	ldrb r0, [r4, #0x11]
	str r0, [sp]
	mov r0, r8
	adds r1, r7, #0
	add r2, sp, #4
	adds r3, r6, #0
	bl sub_80389FC
	ldrb r0, [r4, #0x12]
	str r0, [sp]
	mov r0, r8
	adds r1, r7, #0
	add r2, sp, #4
	adds r3, r6, #0
	bl sub_80389FC
	ldrb r0, [r4, #0x13]
	str r0, [sp]
	mov r0, r8
	adds r1, r7, #0
	add r2, sp, #4
	adds r3, r6, #0
	bl sub_80389FC
	ldrb r0, [r4, #0x14]
	str r0, [sp]
	mov r0, r8
	adds r1, r7, #0
	add r2, sp, #4
	adds r3, r6, #0
	bl sub_80389FC
	movs r4, #1
	str r4, [sp]
	mov r0, r8
	adds r1, r7, #0
	add r2, sp, #4
	adds r3, r6, #0
	bl sub_80389FC
	str r4, [sp]
	mov r0, r8
	adds r1, r7, #0
	add r2, sp, #4
	adds r3, r6, #0
	bl sub_80389FC
	str r4, [sp]
	mov r0, r8
	adds r1, r7, #0
	add r2, sp, #4
	adds r3, r6, #0
	bl sub_80389FC
	str r4, [sp]
	mov r0, r8
	adds r1, r7, #0
	add r2, sp, #4
	adds r3, r6, #0
	bl sub_80389FC
	str r4, [sp]
	mov r0, r8
	adds r1, r7, #0
	add r2, sp, #4
	adds r3, r6, #0
	bl sub_80389FC
	str r4, [sp]
	mov r0, r8
	adds r1, r7, #0
	add r2, sp, #4
	adds r3, r6, #0
	bl sub_80389FC
	movs r0, #6
	str r0, [sp]
	mov r0, r8
	adds r1, r7, #0
	add r2, sp, #4
	adds r3, r6, #0
	bl sub_80389FC
	ldr r4, _08038490
	movs r0, #0xc4
	ldr r1, [sp, #0x14]
	muls r0, r1, r0
	adds r4, r0, r4
	ldrb r0, [r4]
	str r0, [sp]
	mov r0, r8
	adds r1, r7, #0
	add r2, sp, #4
	adds r3, r6, #0
	bl sub_80389FC
	ldrb r0, [r4, #1]
	str r0, [sp]
	mov r0, r8
	adds r1, r7, #0
	add r2, sp, #4
	adds r3, r6, #0
	bl sub_80389FC
	ldrb r0, [r4, #2]
	str r0, [sp]
	mov r0, r8
	adds r1, r7, #0
	add r2, sp, #4
	adds r3, r6, #0
	bl sub_80389FC
	ldrb r0, [r4, #3]
	str r0, [sp]
	mov r0, r8
	adds r1, r7, #0
	add r2, sp, #4
	adds r3, r6, #0
	bl sub_80389FC
	ldrb r0, [r4, #4]
	str r0, [sp]
	mov r0, r8
	adds r1, r7, #0
	add r2, sp, #4
	adds r3, r6, #0
	bl sub_80389FC
	ldrb r0, [r4, #5]
	str r0, [sp]
	mov r0, r8
	adds r1, r7, #0
	add r2, sp, #4
	adds r3, r6, #0
	bl sub_80389FC
	ldrb r0, [r4, #6]
	str r0, [sp]
	mov r0, r8
	adds r1, r7, #0
	add r2, sp, #4
	adds r3, r6, #0
	bl sub_80389FC
	ldrb r0, [r4, #7]
	str r0, [sp]
	mov r0, r8
	adds r1, r7, #0
	add r2, sp, #4
	adds r3, r6, #0
	bl sub_80389FC
	ldrb r0, [r4, #8]
	str r0, [sp]
	mov r0, r8
	adds r1, r7, #0
	add r2, sp, #4
	adds r3, r6, #0
	bl sub_80389FC
	ldrb r0, [r4, #9]
	str r0, [sp]
	mov r0, r8
	adds r1, r7, #0
	add r2, sp, #4
	adds r3, r6, #0
	bl sub_80389FC
	ldrb r0, [r4, #0xa]
	str r0, [sp]
	mov r0, r8
	adds r1, r7, #0
	add r2, sp, #4
	adds r3, r6, #0
	bl sub_80389FC
	ldrb r0, [r4, #0xb]
	str r0, [sp]
	mov r0, r8
	adds r1, r7, #0
	add r2, sp, #4
	adds r3, r6, #0
	bl sub_80389FC
	ldrb r0, [r4, #0xc]
	str r0, [sp]
	mov r0, r8
	adds r1, r7, #0
	add r2, sp, #4
	adds r3, r6, #0
	bl sub_80389FC
	ldrb r0, [r4, #0xd]
	str r0, [sp]
	mov r0, r8
	adds r1, r7, #0
	add r2, sp, #4
	adds r3, r6, #0
	bl sub_80389FC
	ldrb r0, [r4, #0xe]
	str r0, [sp]
	mov r0, r8
	adds r1, r7, #0
	add r2, sp, #4
	adds r3, r6, #0
	bl sub_80389FC
	ldrb r0, [r4, #0xf]
	str r0, [sp]
	mov r0, r8
	adds r1, r7, #0
	add r2, sp, #4
	adds r3, r6, #0
	bl sub_80389FC
	ldrb r0, [r4, #0x10]
	str r0, [sp]
	mov r0, r8
	adds r1, r7, #0
	add r2, sp, #4
	adds r3, r6, #0
	bl sub_80389FC
	ldrb r0, [r4, #0x11]
	str r0, [sp]
	mov r0, r8
	adds r1, r7, #0
	add r2, sp, #4
	adds r3, r6, #0
	bl sub_80389FC
	ldrb r0, [r4, #0x1f]
	str r0, [sp]
	mov r0, r8
	adds r1, r7, #0
	add r2, sp, #4
	adds r3, r6, #0
	bl sub_80389FC
	adds r0, r4, #0
	adds r0, #0x22
	ldrb r0, [r0]
	str r0, [sp]
	mov r0, r8
	adds r1, r7, #0
	add r2, sp, #4
	adds r3, r6, #0
	bl sub_80389FC
	adds r0, r4, #0
	adds r0, #0x23
	ldrb r0, [r0]
	str r0, [sp]
	mov r0, r8
	adds r1, r7, #0
	add r2, sp, #4
	adds r3, r6, #0
	bl sub_80389FC
	adds r0, r4, #0
	adds r0, #0x24
	ldrb r0, [r0]
	str r0, [sp]
	mov r0, r8
	adds r1, r7, #0
	add r2, sp, #4
	adds r3, r6, #0
	bl sub_80389FC
	adds r0, r4, #0
	adds r0, #0x25
	ldrb r0, [r0]
	str r0, [sp]
	mov r0, r8
	adds r1, r7, #0
	add r2, sp, #4
	adds r3, r6, #0
	bl sub_80389FC
	adds r0, r4, #0
	adds r0, #0x20
	ldrb r0, [r0]
	str r0, [sp]
	mov r0, r8
	adds r1, r7, #0
	add r2, sp, #4
	adds r3, r6, #0
	bl sub_80389FC
	adds r0, r4, #0
	adds r0, #0x21
	ldrb r0, [r0]
	str r0, [sp]
	mov r0, r8
	adds r1, r7, #0
	add r2, sp, #4
	adds r3, r6, #0
	bl sub_80389FC
	b _08038494
	.align 2, 0
_08038488: .4byte 0x0203E8D8
_0803848C: .4byte 0x0203E170
_08038490: .4byte 0x0203E440
_08038494:
	ldr r0, _080387FC
	adds r5, r5, r0
	ldrb r0, [r5]
	str r0, [sp]
	mov r0, r8
	adds r1, r7, #0
	add r2, sp, #4
	adds r3, r6, #0
	bl sub_80389FC
	ldrb r0, [r5, #1]
	str r0, [sp]
	mov r0, r8
	adds r1, r7, #0
	add r2, sp, #4
	adds r3, r6, #0
	bl sub_80389FC
	ldrb r0, [r5, #2]
	str r0, [sp]
	mov r0, r8
	adds r1, r7, #0
	add r2, sp, #4
	adds r3, r6, #0
	bl sub_80389FC
	ldr r2, [sp, #0x14]
	adds r2, #1
	str r2, [sp, #0x14]
	cmp r2, #5
	bgt _080384D4
	b _08038110
_080384D4:
	movs r0, #0x13
	str r0, [sp]
	mov r0, r8
	mov r1, sl
	add r2, sp, #4
	ldr r3, [sp, #0x24]
	bl sub_80389FC
	movs r3, #0
	str r3, [sp, #0x14]
_080384E8:
	movs r7, #0
	ldr r4, _08038800
	movs r1, #0xc4
	ldr r3, [sp, #0x14]
	adds r2, r3, #0
	muls r2, r1, r2
	adds r3, r2, r4
	ldrb r1, [r3, #0x12]
	cmp r7, r1
	bge _080385EE
	adds r1, r4, #0
	adds r1, #0x90
	adds r1, r2, r1
	str r1, [sp, #0x1c]
	movs r4, #0
	str r4, [sp, #0x28]
	str r2, [sp, #0x20]
	str r3, [sp, #0x18]
_0803850C:
	ldr r2, [sp, #8]
	adds r2, #1
	str r2, [sp, #8]
	ldr r3, [sp, #0x1c]
	ldr r1, [r3]
	ldr r4, [sp, #0x28]
	adds r1, r4, r1
	mov r4, r8
	adds r3, r4, r2
	ldrb r4, [r1, #2]
	ldrb r1, [r3]
	adds r5, r2, #1
	str r5, [sp, #8]
	cmp r4, r1
	beq _0803852C
	b _080388B8
_0803852C:
	ldr r2, [sp, #0x1c]
	ldr r1, [r2]
	ldr r3, [sp, #0x28]
	adds r1, r3, r1
	mov r4, r8
	adds r2, r4, r5
	ldrb r3, [r1, #3]
	ldrb r1, [r2]
	adds r2, r5, #1
	str r2, [sp, #8]
	cmp r3, r1
	beq _08038546
	b _080388B8
_08038546:
	adds r1, r2, #1
	str r1, [sp, #8]
	movs r1, #0
	mov sb, r1
	ldr r2, [sp, #0x1c]
	ldr r1, [r2]
	ldr r3, [sp, #0x28]
	adds r1, r3, r1
	ldrb r1, [r1]
	cmp sb, r1
	bge _080385DE
	ldr r1, _08038804
	ldr r4, [sp, #0x20]
	adds r4, r4, r1
	mov ip, r4
	mov sl, r3
_08038566:
	mov r2, ip
	ldr r1, [r2]
	add r1, sl
	ldr r1, [r1, #0xc]
	mov r3, sb
	lsls r6, r3, #3
	adds r1, r6, r1
	ldr r4, [sp, #8]
	mov r3, r8
	adds r2, r3, r4
	ldrb r3, [r1]
	ldrb r1, [r2]
	adds r4, #1
	str r4, [sp, #8]
	cmp r3, r1
	beq _08038588
	b _080388B8
_08038588:
	adds r3, r4, #1
	str r3, [sp, #8]
	mov r4, ip
	ldr r1, [r4]
	ldr r2, [sp, #0x28]
	adds r1, r2, r1
	ldr r1, [r1, #0xc]
	adds r1, r6, r1
	mov r4, r8
	adds r2, r4, r3
	ldrb r4, [r1, #2]
	ldrb r1, [r2]
	adds r3, #1
	str r3, [sp, #8]
	cmp r4, r1
	beq _080385AA
	b _080388B8
_080385AA:
	adds r4, r3, #1
	str r4, [sp, #8]
	mov r2, ip
	ldr r1, [r2]
	mov r3, sl
	adds r5, r3, r1
	ldr r1, [r5, #0xc]
	adds r1, r6, r1
	movs r2, #4
	ldrsh r3, [r1, r2]
	mov r2, r8
	adds r1, r2, r4
	ldrb r2, [r1]
	ldrb r1, [r1, #1]
	lsls r1, r1, #8
	orrs r2, r1
	cmp r3, r2
	beq _080385D0
	b _080388B8
_080385D0:
	adds r1, r4, #4
	str r1, [sp, #8]
	movs r3, #1
	add sb, r3
	ldrb r5, [r5]
	cmp sb, r5
	blt _08038566
_080385DE:
	ldr r4, [sp, #0x28]
	adds r4, #0x10
	str r4, [sp, #0x28]
	adds r7, #1
	ldr r1, [sp, #0x18]
	ldrb r1, [r1, #0x12]
	cmp r7, r1
	blt _0803850C
_080385EE:
	ldr r2, [sp, #0x14]
	adds r2, #1
	str r2, [sp, #0x14]
	cmp r2, #5
	bgt _080385FA
	b _080384E8
_080385FA:
	movs r3, #0
	str r3, [sp, #0x14]
	ldr r4, [sp, #8]
	ldr r1, _08038800
	mov ip, r1
	adds r2, r1, #0
	mov sb, r2
	mov sl, r3
_0803860A:
	movs r7, #0
	mov r3, ip
	ldrb r3, [r3, #0x13]
	cmp r7, r3
	bge _0803863C
	ldr r1, _08038808
	mov r2, sl
	adds r6, r2, r1
	mov r5, sb
_0803861C:
	ldr r1, [r6]
	adds r1, r1, r7
	mov r3, r8
	adds r2, r3, r4
	ldrb r3, [r1]
	ldrb r1, [r2]
	adds r2, r4, #1
	str r2, [sp, #8]
	cmp r3, r1
	beq _08038632
	b _080388B8
_08038632:
	adds r7, #1
	adds r4, r2, #0
	ldrb r1, [r5, #0x13]
	cmp r7, r1
	blt _0803861C
_0803863C:
	movs r7, #0
	mov r2, ip
	ldrb r2, [r2, #0x14]
	cmp r7, r2
	bge _0803866E
	ldr r1, _0803880C
	mov r3, sl
	adds r6, r3, r1
	mov r5, sb
_0803864E:
	ldr r1, [r6]
	adds r1, r1, r7
	mov r3, r8
	adds r2, r3, r4
	ldrb r3, [r1]
	ldrb r1, [r2]
	adds r2, r4, #1
	str r2, [sp, #8]
	cmp r3, r1
	beq _08038664
	b _080388B8
_08038664:
	adds r7, #1
	adds r4, r2, #0
	ldrb r1, [r5, #0x14]
	cmp r7, r1
	blt _0803864E
_0803866E:
	movs r7, #0
	mov r2, ip
	ldrb r2, [r2, #0x15]
	cmp r7, r2
	bge _080386A0
	ldr r1, _08038810
	mov r3, sl
	adds r6, r3, r1
	mov r5, sb
_08038680:
	ldr r1, [r6]
	adds r1, r1, r7
	mov r3, r8
	adds r2, r3, r4
	ldrb r3, [r1]
	ldrb r1, [r2]
	adds r2, r4, #1
	str r2, [sp, #8]
	cmp r3, r1
	beq _08038696
	b _080388B8
_08038696:
	adds r7, #1
	adds r4, r2, #0
	ldrb r1, [r5, #0x15]
	cmp r7, r1
	blt _08038680
_080386A0:
	movs r7, #0
	mov r2, ip
	ldrb r2, [r2, #0x16]
	cmp r7, r2
	bge _080386D2
	ldr r1, _08038814
	mov r3, sl
	adds r6, r3, r1
	mov r5, sb
_080386B2:
	ldr r1, [r6]
	adds r1, r1, r7
	mov r3, r8
	adds r2, r3, r4
	ldrb r3, [r1]
	ldrb r1, [r2]
	adds r2, r4, #1
	str r2, [sp, #8]
	cmp r3, r1
	beq _080386C8
	b _080388B8
_080386C8:
	adds r7, #1
	adds r4, r2, #0
	ldrb r1, [r5, #0x16]
	cmp r7, r1
	blt _080386B2
_080386D2:
	movs r7, #0
	mov r2, ip
	ldrb r2, [r2, #0x17]
	cmp r7, r2
	bge _08038704
	ldr r1, _08038818
	mov r3, sl
	adds r6, r3, r1
	mov r5, sb
_080386E4:
	ldr r1, [r6]
	adds r1, r1, r7
	mov r3, r8
	adds r2, r3, r4
	ldrb r3, [r1]
	ldrb r1, [r2]
	adds r2, r4, #1
	str r2, [sp, #8]
	cmp r3, r1
	beq _080386FA
	b _080388B8
_080386FA:
	adds r7, #1
	adds r4, r2, #0
	ldrb r1, [r5, #0x17]
	cmp r7, r1
	blt _080386E4
_08038704:
	movs r7, #0
	mov r2, ip
	ldrb r2, [r2, #0x18]
	cmp r7, r2
	bge _08038736
	ldr r1, _0803881C
	mov r3, sl
	adds r6, r3, r1
	mov r5, sb
_08038716:
	ldr r1, [r6]
	adds r1, r1, r7
	mov r3, r8
	adds r2, r3, r4
	ldrb r3, [r1]
	ldrb r1, [r2]
	adds r2, r4, #1
	str r2, [sp, #8]
	cmp r3, r1
	beq _0803872C
	b _080388B8
_0803872C:
	adds r7, #1
	adds r4, r2, #0
	ldrb r1, [r5, #0x18]
	cmp r7, r1
	blt _08038716
_08038736:
	movs r7, #0
	mov r2, ip
	ldrb r2, [r2, #0x19]
	cmp r7, r2
	bge _08038768
	ldr r1, _08038820
	mov r3, sl
	adds r6, r3, r1
	mov r5, sb
_08038748:
	ldr r1, [r6]
	adds r1, r1, r7
	mov r3, r8
	adds r2, r3, r4
	ldrb r3, [r1]
	ldrb r1, [r2]
	adds r2, r4, #1
	str r2, [sp, #8]
	cmp r3, r1
	beq _0803875E
	b _080388B8
_0803875E:
	adds r7, #1
	adds r4, r2, #0
	ldrb r1, [r5, #0x19]
	cmp r7, r1
	blt _08038748
_08038768:
	movs r7, #0
	mov r2, ip
	ldrb r2, [r2, #0x1a]
	cmp r7, r2
	bge _0803879A
	ldr r1, _08038824
	mov r3, sl
	adds r6, r3, r1
	mov r5, sb
_0803877A:
	ldr r1, [r6]
	adds r1, r1, r7
	mov r3, r8
	adds r2, r3, r4
	ldrb r3, [r1]
	ldrb r1, [r2]
	adds r2, r4, #1
	str r2, [sp, #8]
	cmp r3, r1
	beq _08038790
	b _080388B8
_08038790:
	adds r7, #1
	adds r4, r2, #0
	ldrb r1, [r5, #0x1a]
	cmp r7, r1
	blt _0803877A
_0803879A:
	movs r7, #0
	mov r2, ip
	ldrb r2, [r2, #0x1b]
	cmp r7, r2
	bge _080387CA
	ldr r1, _08038828
	mov r3, sl
	adds r6, r3, r1
	mov r5, sb
_080387AC:
	ldr r1, [r6]
	adds r1, r1, r7
	mov r3, r8
	adds r2, r3, r4
	ldrb r3, [r1]
	ldrb r1, [r2]
	adds r2, r4, #1
	str r2, [sp, #8]
	cmp r3, r1
	bne _080388B8
	adds r7, #1
	adds r4, r2, #0
	ldrb r1, [r5, #0x1b]
	cmp r7, r1
	blt _080387AC
_080387CA:
	movs r7, #0
	mov r2, ip
	ldrb r2, [r2, #0x1c]
	cmp r7, r2
	bge _08038832
	ldr r1, _0803882C
	mov r3, sl
	adds r6, r3, r1
	mov r5, sb
_080387DC:
	ldr r1, [r6]
	adds r1, r1, r7
	mov r3, r8
	adds r2, r3, r4
	ldrb r3, [r1]
	ldrb r1, [r2]
	adds r2, r4, #1
	str r2, [sp, #8]
	cmp r3, r1
	bne _080388B8
	adds r7, #1
	adds r4, r2, #0
	ldrb r1, [r5, #0x1c]
	cmp r7, r1
	b _08038830
	.align 2, 0
_080387FC: .4byte 0x0203E8D8
_08038800: .4byte 0x0203E440
_08038804: .4byte 0x0203E4D0
_08038808: .4byte 0x0203E4D4
_0803880C: .4byte 0x0203E4D8
_08038810: .4byte 0x0203E4DC
_08038814: .4byte 0x0203E4E0
_08038818: .4byte 0x0203E4E4
_0803881C: .4byte 0x0203E4E8
_08038820: .4byte 0x0203E4EC
_08038824: .4byte 0x0203E4F0
_08038828: .4byte 0x0203E4F4
_0803882C: .4byte 0x0203E4F8
_08038830:
	blt _080387DC
_08038832:
	movs r7, #0
	mov r2, ip
	ldrb r2, [r2, #0x1d]
	cmp r7, r2
	bge _08038862
	ldr r1, _080388BC
	mov r3, sl
	adds r6, r3, r1
	mov r5, sb
_08038844:
	ldr r1, [r6]
	adds r1, r1, r7
	mov r3, r8
	adds r2, r3, r4
	ldrb r3, [r1]
	ldrb r1, [r2]
	adds r2, r4, #1
	str r2, [sp, #8]
	cmp r3, r1
	bne _080388B8
	adds r7, #1
	adds r4, r2, #0
	ldrb r1, [r5, #0x1d]
	cmp r7, r1
	blt _08038844
_08038862:
	movs r7, #0
	mov r2, ip
	ldrb r2, [r2, #0x1e]
	cmp r7, r2
	bge _08038892
	ldr r1, _080388C0
	mov r3, sl
	adds r6, r3, r1
	mov r5, sb
_08038874:
	ldr r1, [r6]
	adds r1, r1, r7
	mov r3, r8
	adds r2, r3, r4
	ldrb r3, [r1]
	ldrb r1, [r2]
	adds r2, r4, #1
	str r2, [sp, #8]
	cmp r3, r1
	bne _080388B8
	adds r7, #1
	adds r4, r2, #0
	ldrb r1, [r5, #0x1e]
	cmp r7, r1
	blt _08038874
_08038892:
	movs r2, #0xc4
	add ip, r2
	add sb, r2
	add sl, r2
	ldr r3, [sp, #0x14]
	adds r3, #1
	str r3, [sp, #0x14]
	cmp r3, #5
	bgt _080388A6
	b _0803860A
_080388A6:
	mov r2, r8
	adds r1, r2, r4
	ldrb r1, [r1]
	str r1, [sp, #0x14]
	adds r1, r4, #1
	str r1, [sp, #8]
	ldr r3, [sp, #0x14]
	cmp r3, #0x75
	beq _080388C4
_080388B8:
	movs r0, #0
	b _080388CE
	.align 2, 0
_080388BC: .4byte 0x0203E4FC
_080388C0: .4byte 0x0203E500
_080388C4:
	adds r1, r4, #0
	adds r1, #0x10
	str r1, [sp, #8]
	ldr r4, [sp, #0x10]
	str r1, [r4]
_080388CE:
	add sp, #0x2c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0


	.thumb
    .global sub_80388E0
sub_80388E0: @ 0x080388E0
	ldr r0, _080388FC
	movs r1, #1
	strb r1, [r0]
	ldr r0, _08038900
	strb r1, [r0]
	ldr r0, _08038904
	strb r1, [r0]
	ldr r0, _08038908
	strb r1, [r0]
	ldr r0, _0803890C
	strb r1, [r0]
	ldr r0, _08038910
	strb r1, [r0]
	bx lr
	.align 2, 0
_080388FC: .4byte 0x0203E968
_08038900: .4byte 0x0203E969
_08038904: .4byte 0x0203E96A
_08038908: .4byte 0x0203E96B
_0803890C: .4byte 0x0203E96C
_08038910: .4byte 0x0203E96D


    .thumb
sub_8038914: @ 0x08038914
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov sb, r0
	adds r7, r1, #0
	adds r4, r2, #0
	adds r5, r3, #0
	ldr r0, [sp, #0x24]
	mov r8, r0
	ldr r0, [sp, #0x28]
	mov sl, r0
	ldr r6, [r0]
	movs r3, #0
	cmp r3, r8
	bge _08038972
	mov ip, r3
_08038938:
	ldr r0, [sp, #0x20]
	adds r1, r0, r3
	ldrb r0, [r4]
	ldrb r1, [r1]
	orrs r0, r1
	strb r0, [r4]
	ldr r0, [r5]
	adds r0, #1
	str r0, [r5]
	cmp r0, #8
	bne _08038966
	ldr r1, [r7]
	mov r0, sb
	adds r2, r0, r1
	ldrb r0, [r4]
	strb r0, [r2]
	ldrb r0, [r2]
	adds r6, r6, r0
	adds r1, #1
	str r1, [r7]
	mov r0, ip
	str r0, [r5]
	b _0803896A
_08038966:
	ldrb r0, [r4]
	lsls r0, r0, #1
_0803896A:
	strb r0, [r4]
	adds r3, #1
	cmp r3, r8
	blt _08038938
_08038972:
	mov r0, sl
	str r6, [r0]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

    .thumb
sub_8038984: @ 0x08038984
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov r8, r0
	adds r6, r1, #0
	mov ip, r2
	adds r4, r3, #0
	ldr r0, [sp, #0x24]
	mov sb, r0
	ldr r1, [sp, #0x28]
	mov sl, r1
	ldr r7, [r1]
	movs r5, #0
	cmp r5, sb
	bge _080389EA
_080389A6:
	ldr r0, [r4]
	cmp r0, #8
	bne _080389C8
	movs r0, #0
	str r0, [r4]
	ldr r0, [r6]
	add r0, r8
	ldrb r0, [r0]
	mov r2, ip
	strb r0, [r2]
	ldr r1, [r6]
	mov r2, r8
	adds r0, r2, r1
	ldrb r0, [r0]
	adds r7, r7, r0
	adds r1, #1
	str r1, [r6]
_080389C8:
	ldr r0, [sp, #0x20]
	adds r3, r0, r5
	mov r2, ip
	ldrb r1, [r2]
	ldr r2, [r4]
	movs r0, #7
	subs r0, r0, r2
	asrs r1, r0
	movs r0, #1
	ands r1, r0
	strb r1, [r3]
	ldr r0, [r4]
	adds r0, #1
	str r0, [r4]
	adds r5, #1
	cmp r5, sb
	blt _080389A6
_080389EA:
	mov r0, sl
	str r7, [r0]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

    .thumb
sub_80389FC: @ 0x080389FC
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r4, r1, #0
	adds r5, r2, #0
	ldr r0, [sp, #0x14]
	cmp r0, #0
	ble _08038A2E
	movs r7, #0
	adds r2, r0, #0
_08038A0E:
	ldr r0, [r3]
	cmp r0, #8
	bne _08038A22
	str r7, [r3]
	ldr r0, [r4]
	adds r1, r6, r0
	ldrb r1, [r1]
	strb r1, [r5]
	adds r0, #1
	str r0, [r4]
_08038A22:
	ldr r0, [r3]
	adds r0, #1
	str r0, [r3]
	subs r2, #1
	cmp r2, #0
	bne _08038A0E
_08038A2E:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

    .thumb
    .global sub_8038A34
sub_8038A34: @ 0x08038A34
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	movs r5, #0
	ldr r0, _08038DAC
	mov sl, r0
	ldr r6, _08038DB0
	ldr r1, _08038DB4
	mov sb, r1
_08038A4C:
	lsls r1, r5, #4
	subs r0, r1, r5
	lsls r4, r0, #3
	mov r7, sl
	adds r2, r4, r7
	adds r0, r2, #0
	adds r0, #0x70
	ldrb r0, [r0]
	adds r7, r1, #0
	cmp r0, #0
	beq _08038A78
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #2
	ldr r1, _08038DB4
	adds r0, r0, r1
	ldrb r1, [r0, #5]
	adds r1, #1
	strb r1, [r0, #5]
	ldrb r0, [r6, #0xb]
	adds r0, #1
	strb r0, [r6, #0xb]
_08038A78:
	adds r0, r2, #0
	adds r0, #0x71
	ldrb r0, [r0]
	cmp r0, #0
	beq _08038A98
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #2
	ldr r1, _08038DB4
	adds r0, r0, r1
	ldrb r1, [r0, #5]
	adds r1, #1
	strb r1, [r0, #5]
	ldrb r0, [r6, #0xb]
	adds r0, #1
	strb r0, [r6, #0xb]
_08038A98:
	adds r0, r2, #0
	adds r0, #0x72
	ldrb r0, [r0]
	cmp r0, #0
	beq _08038AB8
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #2
	ldr r1, _08038DB4
	adds r0, r0, r1
	ldrb r1, [r0, #5]
	adds r1, #1
	strb r1, [r0, #5]
	ldrb r0, [r6, #0xb]
	adds r0, #1
	strb r0, [r6, #0xb]
_08038AB8:
	adds r0, r2, #0
	adds r0, #0x73
	ldrb r0, [r0]
	cmp r0, #0
	beq _08038AD8
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #2
	ldr r1, _08038DB4
	adds r0, r0, r1
	ldrb r1, [r0, #5]
	adds r1, #1
	strb r1, [r0, #5]
	ldrb r0, [r6, #0xb]
	adds r0, #1
	strb r0, [r6, #0xb]
_08038AD8:
	adds r0, r2, #0
	adds r0, #0x74
	ldrb r0, [r0]
	cmp r0, #0
	beq _08038AF8
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #2
	ldr r1, _08038DB4
	adds r0, r0, r1
	ldrb r1, [r0, #5]
	adds r1, #1
	strb r1, [r0, #5]
	ldrb r0, [r6, #0xb]
	adds r0, #1
	strb r0, [r6, #0xb]
_08038AF8:
	movs r3, #0
	adds r0, r5, #1
	str r0, [sp]
	ldrb r2, [r2]
	cmp r3, r2
	bge _08038B3A
	ldr r1, _08038DAC
	adds r0, r1, #0
	adds r0, #0x1c
	adds r0, r0, r4
	mov ip, r0
	ldr r2, _08038DB4
	adds r4, r4, r1
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #2
	adds r1, r0, r2
_08038B1A:
	mov r2, ip
	ldr r0, [r2]
	adds r0, r0, r3
	ldrb r0, [r0]
	cmp r0, #0
	beq _08038B32
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldrb r0, [r6]
	adds r0, #1
	strb r0, [r6]
_08038B32:
	adds r3, #1
	ldrb r0, [r4]
	cmp r3, r0
	blt _08038B1A
_08038B3A:
	movs r3, #0
	adds r4, r7, #0
	subs r0, r7, r5
	lsls r0, r0, #3
	add r0, sl
	ldrb r0, [r0, #1]
	cmp r3, r0
	bge _08038B88
	ldr r1, _08038DAC
	mov ip, r1
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #2
	mov r1, sb
	adds r2, r0, r1
	movs r0, #0x20
	add r0, ip
	mov r8, r0
_08038B5E:
	subs r0, r4, r5
	lsls r1, r0, #3
	mov r0, r8
	adds r0, r1, r0
	ldr r0, [r0]
	adds r0, r0, r3
	str r0, [sp, #4]
	ldrb r0, [r0]
	cmp r0, #0
	beq _08038B7E
	ldrb r0, [r2, #1]
	adds r0, #1
	strb r0, [r2, #1]
	ldrb r0, [r6, #1]
	adds r0, #1
	strb r0, [r6, #1]
_08038B7E:
	adds r3, #1
	add r1, ip
	ldrb r1, [r1, #1]
	cmp r3, r1
	blt _08038B5E
_08038B88:
	movs r3, #0
	adds r4, r7, #0
	subs r0, r7, r5
	lsls r0, r0, #3
	add r0, sl
	ldrb r0, [r0, #2]
	cmp r3, r0
	bge _08038BD6
	ldr r1, _08038DAC
	mov ip, r1
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #2
	mov r1, sb
	adds r2, r0, r1
	movs r0, #0x24
	add r0, ip
	mov r8, r0
_08038BAC:
	subs r0, r4, r5
	lsls r1, r0, #3
	mov r0, r8
	adds r0, r1, r0
	ldr r0, [r0]
	adds r0, r0, r3
	str r0, [sp, #4]
	ldrb r0, [r0]
	cmp r0, #0
	beq _08038BCC
	ldrh r0, [r2, #6]
	adds r0, #1
	strh r0, [r2, #6]
	ldrh r0, [r6, #0xc]
	adds r0, #1
	strh r0, [r6, #0xc]
_08038BCC:
	adds r3, #1
	add r1, ip
	ldrb r1, [r1, #2]
	cmp r3, r1
	blt _08038BAC
_08038BD6:
	movs r3, #0
	adds r4, r7, #0
	subs r0, r7, r5
	lsls r0, r0, #3
	add r0, sl
	ldrb r0, [r0, #3]
	cmp r3, r0
	bge _08038C24
	ldr r1, _08038DAC
	mov ip, r1
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #2
	mov r1, sb
	adds r2, r0, r1
	movs r0, #0x28
	add r0, ip
	mov r8, r0
_08038BFA:
	subs r0, r4, r5
	lsls r1, r0, #3
	mov r0, r8
	adds r0, r1, r0
	ldr r0, [r0]
	adds r0, r0, r3
	str r0, [sp, #4]
	ldrb r0, [r0]
	cmp r0, #0
	beq _08038C1A
	ldrh r0, [r2, #6]
	adds r0, #5
	strh r0, [r2, #6]
	ldrh r0, [r6, #0xc]
	adds r0, #5
	strh r0, [r6, #0xc]
_08038C1A:
	adds r3, #1
	add r1, ip
	ldrb r1, [r1, #3]
	cmp r3, r1
	blt _08038BFA
_08038C24:
	movs r3, #0
	adds r4, r7, #0
	subs r0, r7, r5
	lsls r0, r0, #3
	add r0, sl
	ldrb r0, [r0, #4]
	cmp r3, r0
	bge _08038C72
	ldr r1, _08038DAC
	mov ip, r1
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #2
	mov r1, sb
	adds r2, r0, r1
	movs r0, #0x2c
	add r0, ip
	mov r8, r0
_08038C48:
	subs r0, r4, r5
	lsls r1, r0, #3
	mov r0, r8
	adds r0, r1, r0
	ldr r0, [r0]
	adds r0, r0, r3
	str r0, [sp, #4]
	ldrb r0, [r0]
	cmp r0, #0
	beq _08038C68
	ldrh r0, [r2, #6]
	adds r0, #0x14
	strh r0, [r2, #6]
	ldrh r0, [r6, #0xc]
	adds r0, #0x14
	strh r0, [r6, #0xc]
_08038C68:
	adds r3, #1
	add r1, ip
	ldrb r1, [r1, #4]
	cmp r3, r1
	blt _08038C48
_08038C72:
	movs r3, #0
	adds r4, r7, #0
	subs r0, r7, r5
	lsls r0, r0, #3
	add r0, sl
	ldrb r0, [r0, #8]
	cmp r3, r0
	bge _08038CC0
	ldr r1, _08038DAC
	mov ip, r1
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #2
	mov r1, sb
	adds r2, r0, r1
	movs r0, #0x3c
	add r0, ip
	mov r8, r0
_08038C96:
	subs r0, r4, r5
	lsls r1, r0, #3
	mov r0, r8
	adds r0, r1, r0
	ldr r0, [r0]
	adds r0, r0, r3
	str r0, [sp, #4]
	ldrb r0, [r0]
	cmp r0, #0
	beq _08038CB6
	ldrb r0, [r2, #3]
	adds r0, #1
	strb r0, [r2, #3]
	ldrb r0, [r6, #0x18]
	adds r0, #1
	strb r0, [r6, #0x18]
_08038CB6:
	adds r3, #1
	add r1, ip
	ldrb r1, [r1, #8]
	cmp r3, r1
	blt _08038C96
_08038CC0:
	movs r3, #0
	adds r4, r7, #0
	subs r0, r7, r5
	lsls r0, r0, #3
	add r0, sl
	ldrb r0, [r0, #9]
	cmp r3, r0
	bge _08038D0E
	ldr r1, _08038DAC
	mov ip, r1
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #2
	mov r1, sb
	adds r2, r0, r1
	movs r0, #0x40
	add r0, ip
	mov r8, r0
_08038CE4:
	subs r0, r4, r5
	lsls r1, r0, #3
	mov r0, r8
	adds r0, r1, r0
	ldr r0, [r0]
	adds r0, r0, r3
	str r0, [sp, #4]
	ldrb r0, [r0]
	cmp r0, #0
	beq _08038D04
	ldrb r0, [r2, #4]
	adds r0, #1
	strb r0, [r2, #4]
	ldrb r0, [r6, #0x19]
	adds r0, #1
	strb r0, [r6, #0x19]
_08038D04:
	adds r3, #1
	add r1, ip
	ldrb r1, [r1, #9]
	cmp r3, r1
	blt _08038CE4
_08038D0E:
	movs r3, #0
	adds r4, r7, #0
	subs r0, r7, r5
	lsls r0, r0, #3
	add r0, sl
	ldrb r0, [r0, #0xa]
	cmp r3, r0
	bge _08038D5C
	ldr r1, _08038DAC
	mov ip, r1
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #2
	mov r1, sb
	adds r2, r0, r1
	movs r0, #0x44
	add r0, ip
	mov r8, r0
_08038D32:
	subs r0, r4, r5
	lsls r1, r0, #3
	mov r0, r8
	adds r0, r1, r0
	ldr r0, [r0]
	adds r0, r0, r3
	str r0, [sp, #4]
	ldrb r0, [r0]
	cmp r0, #0
	beq _08038D52
	ldrb r0, [r2, #9]
	adds r0, #1
	strb r0, [r2, #9]
	ldrb r0, [r6, #2]
	adds r0, #1
	strb r0, [r6, #2]
_08038D52:
	adds r3, #1
	add r1, ip
	ldrb r1, [r1, #0xa]
	cmp r3, r1
	blt _08038D32
_08038D5C:
	movs r3, #0
	adds r4, r7, #0
	subs r0, r7, r5
	lsls r0, r0, #3
	add r0, sl
	ldrb r0, [r0, #0xb]
	cmp r3, r0
	bge _08038DBA
	ldr r1, _08038DAC
	mov ip, r1
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #2
	mov r1, sb
	adds r2, r0, r1
	movs r0, #0x48
	add r0, ip
	mov r8, r0
_08038D80:
	subs r0, r4, r5
	lsls r1, r0, #3
	mov r0, r8
	adds r0, r1, r0
	ldr r0, [r0]
	adds r0, r0, r3
	str r0, [sp, #4]
	ldrb r0, [r0]
	cmp r0, #0
	beq _08038DA0
	ldrb r0, [r2, #0xa]
	adds r0, #1
	strb r0, [r2, #0xa]
	ldrb r0, [r6, #3]
	adds r0, #1
	strb r0, [r6, #3]
_08038DA0:
	adds r3, #1
	add r1, ip
	ldrb r1, [r1, #0xb]
	cmp r3, r1
	b _08038DB8
	.align 2, 0
_08038DAC: .4byte 0x0203E170
_08038DB0: .4byte gGameStatus
_08038DB4: .4byte 0x02000FCC
_08038DB8:
	blt _08038D80
_08038DBA:
	movs r3, #0
	adds r4, r7, #0
	subs r0, r7, r5
	lsls r0, r0, #3
	add r0, sl
	ldrb r0, [r0, #0xc]
	cmp r3, r0
	bge _08038E08
	ldr r1, _08038F98
	mov ip, r1
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #2
	mov r1, sb
	adds r2, r0, r1
	movs r0, #0x4c
	add r0, ip
	mov r8, r0
_08038DDE:
	subs r0, r4, r5
	lsls r1, r0, #3
	mov r0, r8
	adds r0, r1, r0
	ldr r0, [r0]
	adds r0, r0, r3
	str r0, [sp, #4]
	ldrb r0, [r0]
	cmp r0, #0
	beq _08038DFE
	ldrb r0, [r2, #0xb]
	adds r0, #1
	strb r0, [r2, #0xb]
	ldrb r0, [r6, #4]
	adds r0, #1
	strb r0, [r6, #4]
_08038DFE:
	adds r3, #1
	add r1, ip
	ldrb r1, [r1, #0xc]
	cmp r3, r1
	blt _08038DDE
_08038E08:
	movs r3, #0
	adds r4, r7, #0
	subs r0, r7, r5
	lsls r0, r0, #3
	add r0, sl
	ldrb r0, [r0, #0xd]
	cmp r3, r0
	bge _08038E56
	ldr r1, _08038F98
	mov ip, r1
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #2
	mov r1, sb
	adds r2, r0, r1
	movs r0, #0x50
	add r0, ip
	mov r8, r0
_08038E2C:
	subs r0, r4, r5
	lsls r1, r0, #3
	mov r0, r8
	adds r0, r1, r0
	ldr r0, [r0]
	adds r0, r0, r3
	str r0, [sp, #4]
	ldrb r0, [r0]
	cmp r0, #0
	beq _08038E4C
	ldrb r0, [r2, #0xc]
	adds r0, #1
	strb r0, [r2, #0xc]
	ldrb r0, [r6, #5]
	adds r0, #1
	strb r0, [r6, #5]
_08038E4C:
	adds r3, #1
	add r1, ip
	ldrb r1, [r1, #0xd]
	cmp r3, r1
	blt _08038E2C
_08038E56:
	movs r3, #0
	adds r4, r7, #0
	subs r0, r7, r5
	lsls r0, r0, #3
	add r0, sl
	ldrb r0, [r0, #0xf]
	cmp r3, r0
	bge _08038EA4
	ldr r1, _08038F98
	mov ip, r1
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #2
	mov r1, sb
	adds r2, r0, r1
	movs r0, #0x58
	add r0, ip
	mov r8, r0
_08038E7A:
	subs r0, r4, r5
	lsls r1, r0, #3
	mov r0, r8
	adds r0, r1, r0
	ldr r0, [r0]
	adds r0, r0, r3
	str r0, [sp, #4]
	ldrb r0, [r0]
	cmp r0, #0
	beq _08038E9A
	ldrb r0, [r2, #0xe]
	adds r0, #1
	strb r0, [r2, #0xe]
	ldrb r0, [r6, #0x1c]
	adds r0, #1
	strb r0, [r6, #0x1c]
_08038E9A:
	adds r3, #1
	add r1, ip
	ldrb r1, [r1, #0xf]
	cmp r3, r1
	blt _08038E7A
_08038EA4:
	movs r3, #0
	adds r4, r7, #0
	subs r0, r7, r5
	lsls r0, r0, #3
	add r0, sl
	ldrb r0, [r0, #0x10]
	cmp r3, r0
	bge _08038EF2
	ldr r1, _08038F98
	mov ip, r1
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #2
	mov r1, sb
	adds r2, r0, r1
	movs r0, #0x5c
	add r0, ip
	mov r8, r0
_08038EC8:
	subs r0, r4, r5
	lsls r1, r0, #3
	mov r0, r8
	adds r0, r1, r0
	ldr r0, [r0]
	adds r0, r0, r3
	str r0, [sp, #4]
	ldrb r0, [r0]
	cmp r0, #0
	beq _08038EE8
	ldrb r0, [r2, #0xf]
	adds r0, #1
	strb r0, [r2, #0xf]
	ldrb r0, [r6, #0x1d]
	adds r0, #1
	strb r0, [r6, #0x1d]
_08038EE8:
	adds r3, #1
	add r1, ip
	ldrb r1, [r1, #0x10]
	cmp r3, r1
	blt _08038EC8
_08038EF2:
	movs r3, #0
	adds r1, r7, #0
	subs r0, r1, r5
	lsls r0, r0, #3
	add r0, sl
	ldrb r0, [r0, #0x11]
	cmp r3, r0
	bge _08038F40
	ldr r2, _08038F98
	mov ip, r2
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #2
	mov r7, sb
	adds r4, r0, r7
	movs r0, #0x60
	add r0, ip
	mov r8, r0
_08038F16:
	subs r0, r1, r5
	lsls r2, r0, #3
	mov r7, r8
	adds r0, r2, r7
	ldr r0, [r0]
	adds r0, r0, r3
	ldrb r0, [r0]
	cmp r0, #0
	beq _08038F34
	ldrb r0, [r4, #0x10]
	adds r0, #1
	strb r0, [r4, #0x10]
	ldrb r0, [r6, #0x1e]
	adds r0, #1
	strb r0, [r6, #0x1e]
_08038F34:
	adds r3, #1
	mov r7, ip
	adds r0, r2, r7
	ldrb r0, [r0, #0x11]
	cmp r3, r0
	blt _08038F16
_08038F40:
	movs r3, #0
	movs r0, #0xc4
	adds r1, r5, #0
	muls r1, r0, r1
	ldr r0, _08038F9C
	adds r2, r1, r0
	ldrb r7, [r2, #3]
	cmp r3, r7
	bge _08038F7E
	adds r0, #0x34
	adds r4, r1, r0
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #2
	mov r5, sb
	adds r1, r0, r5
_08038F60:
	ldr r0, [r4]
	adds r0, r0, r3
	ldrb r0, [r0]
	cmp r0, #0
	beq _08038F76
	ldrb r0, [r1, #2]
	adds r0, #1
	strb r0, [r1, #2]
	ldrb r0, [r6, #0x1a]
	adds r0, #1
	strb r0, [r6, #0x1a]
_08038F76:
	adds r3, #1
	ldrb r7, [r2, #3]
	cmp r3, r7
	blt _08038F60
_08038F7E:
	ldr r5, [sp]
	cmp r5, #5
	bgt _08038F86
	b _08038A4C
_08038F86:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08038F98: .4byte 0x0203E170
_08038F9C: .4byte 0x0203E440

    .thumb
    .global sub_8038FA0
sub_8038FA0: @ 0x08038FA0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	mov r8, r0
	ldr r0, _080391D8
	movs r1, #0
	strb r1, [r0]
	ldr r0, _080391DC
	strb r1, [r0]
	movs r2, #0
	ldr r1, _080391E0
	mov r0, r8
	lsls r3, r0, #4
	subs r0, r3, r0
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrb r0, [r0, #0xe]
	cmp r2, r0
	bge _08038FEC
	adds r4, r1, #0
	adds r6, r4, #0
	adds r6, #0x54
	movs r5, #0
_08038FD4:
	mov r0, r8
	subs r1, r3, r0
	lsls r1, r1, #3
	adds r0, r1, r6
	ldr r0, [r0]
	adds r0, r0, r2
	strb r5, [r0]
	adds r2, #1
	adds r1, r1, r4
	ldrb r1, [r1, #0xe]
	cmp r2, r1
	blt _08038FD4
_08038FEC:
	movs r0, #0x36
	bl sub_0804200C
	movs r2, #0
	ldr r4, _080391E4
	movs r0, #0xc4
	mov r3, r8
	muls r3, r0, r3
	adds r0, r3, r4
	adds r1, r0, #0
	adds r1, #0x26
	ldrb r0, [r1]
	cmp r2, r0
	bge _0803901E
	adds r0, r4, #0
	adds r0, #0x8c
	adds r3, r3, r0
	movs r4, #0
_08039010:
	ldr r0, [r3]
	adds r0, r0, r2
	strb r4, [r0]
	adds r2, #1
	ldrb r0, [r1]
	cmp r2, r0
	blt _08039010
_0803901E:
	ldr r0, _080391E8
	ldrb r1, [r0]
	ldr r6, _080391EC
	cmp r1, #0
	bne _080390FC
	ldr r0, _080391F0
	strb r1, [r0]
	ldr r1, _080391F4
	movs r0, #1
	strb r0, [r1]
	movs r2, #0
	ldr r1, _080391E4
	movs r0, #0xc4
	mov r3, r8
	muls r3, r0, r3
	adds r4, r3, r1
	adds r5, r1, #0
	ldrb r1, [r4, #7]
	cmp r2, r1
	bge _0803905E
	adds r0, r5, #0
	adds r0, #0x44
	adds r3, r3, r0
	adds r1, r4, #0
	movs r4, #0
_08039050:
	ldr r0, [r3]
	adds r0, r0, r2
	strb r4, [r0]
	adds r2, #1
	ldrb r0, [r1, #7]
	cmp r2, r0
	blt _08039050
_0803905E:
	movs r2, #0
	movs r0, #0xc4
	mov r1, r8
	muls r1, r0, r1
	adds r3, r1, r5
	ldrb r4, [r3, #8]
	cmp r2, r4
	bge _08039086
	adds r0, r5, #0
	adds r0, #0x48
	adds r4, r1, r0
	adds r1, r3, #0
	movs r3, #0
_08039078:
	ldr r0, [r4]
	adds r0, r0, r2
	strb r3, [r0]
	adds r2, #1
	ldrb r0, [r1, #8]
	cmp r2, r0
	blt _08039078
_08039086:
	movs r2, #0
	movs r0, #0xc4
	mov r1, r8
	muls r1, r0, r1
	adds r3, r1, r5
	ldrb r4, [r3, #9]
	cmp r2, r4
	bge _080390AE
	adds r0, r5, #0
	adds r0, #0x4c
	adds r4, r1, r0
	adds r1, r3, #0
	movs r3, #0
_080390A0:
	ldr r0, [r4]
	adds r0, r0, r2
	strb r3, [r0]
	adds r2, #1
	ldrb r0, [r1, #9]
	cmp r2, r0
	blt _080390A0
_080390AE:
	movs r2, #0
	movs r0, #0xc4
	mov r1, r8
	muls r1, r0, r1
	adds r3, r1, r5
	ldrb r4, [r3, #0xa]
	cmp r2, r4
	bge _080390D6
	adds r0, r5, #0
	adds r0, #0x50
	adds r4, r1, r0
	adds r1, r3, #0
	movs r3, #0
_080390C8:
	ldr r0, [r4]
	adds r0, r0, r2
	strb r3, [r0]
	adds r2, #1
	ldrb r0, [r1, #0xa]
	cmp r2, r0
	blt _080390C8
_080390D6:
	movs r2, #0
	movs r0, #0xc4
	mov r1, r8
	muls r1, r0, r1
	adds r3, r1, r5
	ldrb r4, [r3, #0xb]
	cmp r2, r4
	bge _080390FC
	adds r0, r5, #0
	adds r0, #0x54
	adds r1, r1, r0
	movs r4, #0
_080390EE:
	ldr r0, [r1]
	adds r0, r0, r2
	strb r4, [r0]
	adds r2, #1
	ldrb r0, [r3, #0xb]
	cmp r2, r0
	blt _080390EE
_080390FC:
	ldrb r0, [r6]
	cmp r0, #0
	bne _0803917C
	movs r1, #0
	mov ip, r1
	ldr r0, _080391E4
	movs r1, #0xc4
	mov r4, r8
	muls r4, r1, r4
	adds r3, r4, r0
	ldrb r1, [r3, #0x12]
	adds r5, r0, #0
	cmp r1, #0
	beq _0803917C
	movs r2, #0
	ldrb r0, [r3, #0x12]
	cmp r2, r0
	bge _0803917C
	adds r0, r5, #0
	adds r0, #0x90
	adds r4, r4, r0
	str r4, [sp]
	mov sb, r2
	mov sl, r3
_0803912C:
	lsls r1, r2, #4
	ldr r3, [sp]
	ldr r0, [r3]
	adds r4, r0, r1
	movs r1, #0
	adds r5, r2, #1
	ldrb r0, [r4]
	cmp r1, r0
	bge _08039162
	movs r7, #0
	movs r6, #0
_08039142:
	ldr r0, [r4, #0xc]
	lsls r3, r1, #3
	adds r2, r3, r0
	ldrb r0, [r2]
	cmp r0, #1
	bne _0803915A
	strh r6, [r2, #6]
	ldr r0, [r4, #0xc]
	adds r0, r3, r0
	strb r7, [r0, #1]
	movs r3, #1
	mov ip, r3
_0803915A:
	adds r1, #1
	ldrb r0, [r4]
	cmp r1, r0
	blt _08039142
_08039162:
	mov r1, ip
	cmp r1, #0
	beq _08039172
	mov r3, sb
	strb r3, [r4, #1]
	strb r3, [r4, #4]
	movs r4, #0
	mov ip, r4
_08039172:
	adds r2, r5, #0
	mov r0, sl
	ldrb r0, [r0, #0x12]
	cmp r2, r0
	blt _0803912C
_0803917C:
	mov r1, r8
	cmp r1, #5
	bne _080391AA
	ldr r0, _080391E4
	ldr r3, _080391F8
	adds r0, r0, r3
	ldr r4, [r0]
	movs r2, #0
	ldrb r0, [r4]
	cmp r2, r0
	bge _080391A4
	movs r3, #0
_08039194:
	ldr r1, [r4, #0xc]
	lsls r0, r2, #3
	adds r0, r0, r1
	strb r3, [r0, #1]
	adds r2, #1
	ldrb r1, [r4]
	cmp r2, r1
	blt _08039194
_080391A4:
	movs r0, #0
	strb r0, [r4, #1]
	strb r0, [r4, #4]
_080391AA:
	movs r4, #0
	ldr r3, _080391FC
	strb r4, [r3]
	bl sub_803938C
	ldr r0, _08039200
	strb r4, [r0]
	ldr r0, _08039204
	strb r4, [r0]
	ldr r0, _08039208
	strb r4, [r0]
	ldr r0, _0803920C
	strb r4, [r0]
	bl sub_8039210
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080391D8: .4byte 0x0203E97D
_080391DC: .4byte 0x0203E136
_080391E0: .4byte 0x0203E170
_080391E4: .4byte 0x0203E440
_080391E8: .4byte 0x0203E954
_080391EC: .4byte 0x0203E137
_080391F0: .4byte 0x0203E952
_080391F4: .4byte 0x0203E953
_080391F8: .4byte 0x00000464
_080391FC: .4byte 0x0203E97B
_08039200: .4byte 0x0203E977
_08039204: .4byte 0x0203E978
_08039208: .4byte 0x0203E979
_0803920C: .4byte 0x0203E97A

    .thumb
    .global sub_8039210
sub_8039210: @ 0x08039210
	push {lr}
	ldr r0, _0803922C
	ldrb r0, [r0]
	cmp r0, #0
	bne _08039226
	ldr r0, _08039230
	ldrb r0, [r0]
	cmp r0, #0
	bne _08039226
	bl sub_8063178
_08039226:
	pop {r0}
	bx r0
	.align 2, 0
_0803922C: .4byte byte_20020BC
_08039230: .4byte 0x0203E137

    .thumb
	.global sub_8039234
sub_8039234: @ 0x08039234
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	movs r4, #0
	ldr r2, _08039380
	ldr r3, _08039384
	ldrh r1, [r3]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r2
	adds r5, r2, #0
	adds r6, r3, #0
	ldr r1, _08039388
	mov r8, r1
	ldrb r0, [r0, #5]
	cmp r4, r0
	bge _08039284
	mov ip, r5
	adds r2, r6, #0
	adds r7, r5, #0
	adds r7, #0x30
	movs r3, #0
_08039262:
	ldrh r1, [r2]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r7
	ldr r0, [r0]
	adds r0, r0, r4
	strb r3, [r0]
	adds r4, #1
	ldrh r1, [r2]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #3
	add r0, ip
	ldrb r0, [r0, #5]
	cmp r4, r0
	blt _08039262
_08039284:
	movs r4, #0
	ldrh r1, [r6]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r5
	ldrb r0, [r0, #0x12]
	cmp r4, r0
	bge _080392C2
	mov ip, r5
	adds r2, r6, #0
	adds r7, r5, #0
	adds r7, #0x64
	movs r3, #0
_080392A0:
	ldrh r1, [r2]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r7
	ldr r0, [r0]
	adds r0, r0, r4
	strb r3, [r0]
	adds r4, #1
	ldrh r1, [r2]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #3
	add r0, ip
	ldrb r0, [r0, #0x12]
	cmp r4, r0
	blt _080392A0
_080392C2:
	movs r4, #0
	ldrh r1, [r6]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r5
	ldrb r0, [r0, #0x13]
	cmp r4, r0
	bge _08039300
	mov ip, r5
	adds r2, r6, #0
	adds r7, r5, #0
	adds r7, #0x68
	movs r3, #0
_080392DE:
	ldrh r1, [r2]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r7
	ldr r0, [r0]
	adds r0, r0, r4
	strb r3, [r0]
	adds r4, #1
	ldrh r1, [r2]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #3
	add r0, ip
	ldrb r0, [r0, #0x13]
	cmp r4, r0
	blt _080392DE
_08039300:
	movs r4, #0
	ldrh r1, [r6]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r5
	ldrb r0, [r0, #0x14]
	cmp r4, r0
	bge _0803933E
	adds r3, r5, #0
	adds r2, r6, #0
	adds r7, r3, #0
	adds r7, #0x6c
	movs r5, #0
_0803931C:
	ldrh r1, [r2]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r7
	ldr r0, [r0]
	adds r0, r0, r4
	strb r5, [r0]
	adds r4, #1
	ldrh r1, [r2]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r3
	ldrb r0, [r0, #0x14]
	cmp r4, r0
	blt _0803931C
_0803933E:
	movs r4, #0
	ldrh r1, [r6]
	movs r0, #0xc4
	muls r0, r1, r0
	add r0, r8
	ldrb r0, [r0]
	cmp r4, r0
	bge _08039374
	mov r2, r8
	adds r3, r6, #0
	movs r1, #0xc4
	adds r6, r2, #0
	adds r6, #0x28
	movs r5, #0
_0803935A:
	ldrh r0, [r3]
	muls r0, r1, r0
	adds r0, r0, r6
	ldr r0, [r0]
	adds r0, r0, r4
	strb r5, [r0]
	adds r4, #1
	ldrh r0, [r3]
	muls r0, r1, r0
	adds r0, r0, r2
	ldrb r0, [r0]
	cmp r4, r0
	blt _0803935A
_08039374:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08039380: .4byte 0x0203E170
_08039384: .4byte gLoadedRoomLevel
_08039388: .4byte 0x0203E440

    .thumb
sub_803938C: @ 0x0803938C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _080394AC
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803939C
	b _080394A0
_0803939C:
	ldr r0, _080394B0
	ldrb r0, [r0]
	cmp r0, #0
	bne _080394A0
	movs r4, #0
	ldr r2, _080394B4
	ldr r3, _080394B8
	ldrh r1, [r3]
	movs r0, #0xc4
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x22
	adds r5, r2, #0
	ldr r1, _080394BC
	mov r8, r1
	ldrb r0, [r0]
	cmp r4, r0
	bge _080393E8
	mov ip, r5
	adds r2, r3, #0
	movs r1, #0xc4
	adds r7, r5, #0
	adds r7, #0x7c
	movs r6, #0
_080393CC:
	ldrh r0, [r2]
	muls r0, r1, r0
	adds r0, r0, r7
	ldr r0, [r0]
	adds r0, r0, r4
	strb r6, [r0]
	adds r4, #1
	ldrh r0, [r2]
	muls r0, r1, r0
	add r0, ip
	adds r0, #0x22
	ldrb r0, [r0]
	cmp r4, r0
	blt _080393CC
_080393E8:
	movs r4, #0
	ldrh r1, [r3]
	movs r0, #0xc4
	muls r0, r1, r0
	adds r0, r0, r5
	adds r0, #0x23
	ldrb r0, [r0]
	cmp r4, r0
	bge _08039422
	mov ip, r5
	adds r2, r3, #0
	movs r1, #0xc4
	adds r7, r5, #0
	adds r7, #0x80
	movs r6, #0
_08039406:
	ldrh r0, [r2]
	muls r0, r1, r0
	adds r0, r0, r7
	ldr r0, [r0]
	adds r0, r0, r4
	strb r6, [r0]
	adds r4, #1
	ldrh r0, [r2]
	muls r0, r1, r0
	add r0, ip
	adds r0, #0x23
	ldrb r0, [r0]
	cmp r4, r0
	blt _08039406
_08039422:
	movs r4, #0
	ldrh r1, [r3]
	movs r0, #0xc4
	muls r0, r1, r0
	adds r0, r0, r5
	adds r0, #0x24
	ldrb r0, [r0]
	cmp r4, r0
	bge _0803945C
	mov ip, r5
	adds r2, r3, #0
	movs r1, #0xc4
	adds r7, r5, #0
	adds r7, #0x84
	movs r6, #0
_08039440:
	ldrh r0, [r2]
	muls r0, r1, r0
	adds r0, r0, r7
	ldr r0, [r0]
	adds r0, r0, r4
	strb r6, [r0]
	adds r4, #1
	ldrh r0, [r2]
	muls r0, r1, r0
	add r0, ip
	adds r0, #0x24
	ldrb r0, [r0]
	cmp r4, r0
	blt _08039440
_0803945C:
	movs r4, #0
	ldrh r1, [r3]
	movs r0, #0xc4
	muls r0, r1, r0
	adds r0, r0, r5
	adds r0, #0x25
	ldrb r0, [r0]
	cmp r4, r0
	bge _08039494
	adds r2, r5, #0
	movs r1, #0xc4
	adds r6, r2, #0
	adds r6, #0x88
	movs r5, #0
_08039478:
	ldrh r0, [r3]
	muls r0, r1, r0
	adds r0, r0, r6
	ldr r0, [r0]
	adds r0, r0, r4
	strb r5, [r0]
	adds r4, #1
	ldrh r0, [r3]
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x25
	ldrb r0, [r0]
	cmp r4, r0
	blt _08039478
_08039494:
	movs r0, #0
	mov r1, r8
	strb r0, [r1]
	movs r0, #0x61
	bl sub_8029C30
_080394A0:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080394AC: .4byte 0x0203E961
_080394B0: .4byte 0x0203E976
_080394B4: .4byte 0x0203E440
_080394B8: .4byte gLoadedRoomLevel
_080394BC: .4byte 0x0203E975

	.thumb
sub_80394C0: @ 0x080394C0
	push {r4, r5, lr}
	movs r5, #1
	movs r4, #0
	ldr r2, _08039628
	ldr r3, _0803962C
	ldrh r1, [r3]
	movs r0, #0xc4
	muls r1, r0, r1
	adds r0, r1, r2
	adds r0, #0x22
	ldrb r0, [r0]
	cmp r4, r0
	bge _0803950E
	adds r0, r2, #0
	adds r0, #0x7c
	adds r0, r1, r0
	ldr r0, [r0]
	ldrb r0, [r0]
	cmp r0, #0
	bne _080394EA
	b _08039648
_080394EA:
	adds r4, #1
	ldrh r1, [r3]
	movs r0, #0xc4
	muls r1, r0, r1
	adds r0, r1, r2
	adds r0, #0x22
	ldrb r0, [r0]
	cmp r4, r0
	bge _0803950E
	adds r0, r2, #0
	adds r0, #0x7c
	adds r0, r1, r0
	ldr r0, [r0]
	adds r0, r0, r4
	ldrb r0, [r0]
	cmp r0, #0
	bne _080394EA
	movs r5, #0
_0803950E:
	cmp r5, #0
	bne _08039514
	b _08039648
_08039514:
	movs r5, #1
	movs r4, #0
	ldrh r1, [r3]
	movs r0, #0xc4
	muls r1, r0, r1
	adds r0, r1, r2
	adds r0, #0x23
	ldrb r0, [r0]
	cmp r4, r0
	bge _0803955C
	adds r0, r2, #0
	adds r0, #0x80
	adds r0, r1, r0
	ldr r0, [r0]
	ldrb r0, [r0]
	cmp r0, #0
	bne _08039538
	b _08039648
_08039538:
	adds r4, #1
	ldrh r1, [r3]
	movs r0, #0xc4
	muls r1, r0, r1
	adds r0, r1, r2
	adds r0, #0x23
	ldrb r0, [r0]
	cmp r4, r0
	bge _0803955C
	adds r0, r2, #0
	adds r0, #0x80
	adds r0, r1, r0
	ldr r0, [r0]
	adds r0, r0, r4
	ldrb r0, [r0]
	cmp r0, #0
	bne _08039538
	movs r5, #0
_0803955C:
	cmp r5, #0
	beq _08039648
	movs r5, #1
	movs r4, #0
	ldrh r1, [r3]
	movs r0, #0xc4
	muls r1, r0, r1
	adds r0, r1, r2
	adds r0, #0x24
	ldrb r0, [r0]
	cmp r4, r0
	bge _080395A6
	adds r0, r2, #0
	adds r0, #0x84
	adds r0, r1, r0
	ldr r0, [r0]
	ldrb r0, [r0]
	cmp r0, #0
	beq _08039648
_08039582:
	adds r4, #1
	ldrh r1, [r3]
	movs r0, #0xc4
	muls r1, r0, r1
	adds r0, r1, r2
	adds r0, #0x24
	ldrb r0, [r0]
	cmp r4, r0
	bge _080395A6
	adds r0, r2, #0
	adds r0, #0x84
	adds r0, r1, r0
	ldr r0, [r0]
	adds r0, r0, r4
	ldrb r0, [r0]
	cmp r0, #0
	bne _08039582
	movs r5, #0
_080395A6:
	cmp r5, #0
	beq _08039648
	movs r5, #1
	movs r4, #0
	ldrh r1, [r3]
	movs r0, #0xc4
	muls r1, r0, r1
	adds r0, r1, r2
	adds r0, #0x25
	ldrb r0, [r0]
	cmp r4, r0
	bge _080395F0
	adds r0, r2, #0
	adds r0, #0x88
	adds r0, r1, r0
	ldr r0, [r0]
	ldrb r0, [r0]
	cmp r0, #0
	beq _08039648
_080395CC:
	adds r4, #1
	ldrh r1, [r3]
	movs r0, #0xc4
	muls r1, r0, r1
	adds r0, r1, r2
	adds r0, #0x25
	ldrb r0, [r0]
	cmp r4, r0
	bge _080395F0
	adds r0, r2, #0
	adds r0, #0x88
	adds r0, r1, r0
	ldr r0, [r0]
	adds r0, r0, r4
	ldrb r0, [r0]
	cmp r0, #0
	bne _080395CC
	movs r5, #0
_080395F0:
	cmp r5, #0
	beq _08039648
	bl sub_8063178
	ldr r1, _08039630
	movs r0, #1
	strb r0, [r1]
	ldr r0, _08039634
	movs r1, #0
	strb r1, [r0]
	ldr r0, _08039638
	strb r1, [r0]
	ldr r0, _0803963C
	strb r1, [r0]
	ldr r0, _08039640
	strb r1, [r0]
	movs r0, #0x63
	bl init_function
	ldr r0, _08039644
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_8034460
	movs r0, #1
	b _0803964A
	.align 2, 0
_08039628: .4byte 0x0203E440
_0803962C: .4byte gLoadedRoomLevel
_08039630: .4byte 0x0203E976
_08039634: .4byte 0x0203E977
_08039638: .4byte 0x0203E978
_0803963C: .4byte 0x0203E979
_08039640: .4byte 0x0203E97A
_08039644: .4byte 0x0000010F
_08039648:
	movs r0, #0
_0803964A:
	pop {r4, r5}
	pop {r1}
	bx r1

    .thumb
sub_8039650: @ 0x08039650
	ldr r2, _08039668
	ldr r0, _0803966C
	ldrh r1, [r0]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r2
	ldrb r0, [r0, #0xe]
	ldr r1, _08039670
	ldrb r1, [r1]
	subs r0, r0, r1
	bx lr
	.align 2, 0
_08039668: .4byte 0x0203E170
_0803966C: .4byte gLoadedRoomLevel
_08039670: .4byte 0x0203E97D
	.2byte 0xEE00, 0xEE00

	.thumb
sub_8039678: @ 0x08039678
	movs r0, #1
	bx lr
	.2byte 0xEE00, 0xEE00

	.thumb
sub_8039680: @ 0x08039680
	movs r0, #1
	bx lr

	.thumb
sub_8039684: @ 0x08039684
	movs r0, #1
	bx lr

	.thumb
sub_8039688: @ 0x08039688
	ldr r2, _0803969C
	ldr r0, _080396A0
	ldrh r1, [r0]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r2
	adds r0, #0x75
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803969C: .4byte 0x0203E170
_080396A0: .4byte gLoadedRoomLevel

	.thumb
sub_80396A4: @ 0x080396A4
	push {lr}
	ldr r2, [r0, #4]
	cmp r2, #0
	bge _080396B0
	movs r0, #1
	b _080396CC
_080396B0:
	ldr r1, [r0, #8]
	adds r0, r2, #0
	bl sub_0802C350
	adds r1, r0, #0
	cmp r1, #0
	beq _080396CA
	ldrh r0, [r1, #2]
	movs r2, #6
	ldrsh r1, [r1, r2]
	bl sub_80342CC
	b _080396CC
_080396CA:
	movs r0, #0
_080396CC:
	pop {r1}
	bx r1

	.thumb
sub_80396D0: @ 0x080396D0
	push {lr}
	ldr r2, [r0, #4]
	cmp r2, #0
	bge _080396DC
	movs r0, #1
	b _080396F8
_080396DC:
	ldr r1, [r0, #8]
	adds r0, r2, #0
	bl sub_0802C350
	adds r1, r0, #0
	cmp r1, #0
	beq _080396F6
	ldrh r0, [r1, #2]
	movs r2, #6
	ldrsh r1, [r1, r2]
	bl sub_80342CC
	b _080396F8
_080396F6:
	movs r0, #0
_080396F8:
	pop {r1}
	bx r1

	.thumb
sub_80396FC: @ 0x080396FC
	push {lr}
	ldr r2, [r0, #4]
	cmp r2, #0
	bge _08039708
	movs r0, #1
	b _08039724
_08039708:
	ldr r1, [r0, #8]
	adds r0, r2, #0
	bl sub_0802C350
	adds r1, r0, #0
	cmp r1, #0
	beq _08039722
	ldrh r0, [r1, #2]
	movs r2, #6
	ldrsh r1, [r1, r2]
	bl sub_80342CC
	b _08039724
_08039722:
	movs r0, #0
_08039724:
	pop {r1}
	bx r1

	.thumb
sub_8039728: @ 0x08039728
	push {lr}
	ldr r2, [r0, #4]
	cmp r2, #0
	bge _08039734
	movs r0, #1
	b _08039750
_08039734:
	ldr r1, [r0, #8]
	adds r0, r2, #0
	bl sub_0802C350
	adds r1, r0, #0
	cmp r1, #0
	beq _0803974E
	ldrh r0, [r1, #2]
	movs r2, #6
	ldrsh r1, [r1, r2]
	bl sub_80342CC
	b _08039750
_0803974E:
	movs r0, #0
_08039750:
	pop {r1}
	bx r1

	.thumb
sub_8039754: @ 0x08039754
	push {r4, lr}
	movs r2, #0
	ldr r4, _08039784
	ldr r0, _08039788
	ldrh r1, [r0]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r1, r0, #3
	adds r0, r1, r4
	ldrb r3, [r0, #8]
	cmp r2, r3
	bge _08039792
	adds r0, r4, #0
	adds r0, #0x3c
	adds r0, r1, r0
	ldr r4, [r0]
	adds r1, r3, #0
_08039776:
	adds r0, r4, r2
	ldrb r0, [r0]
	cmp r0, #0
	bne _0803978C
	movs r0, #0
	b _08039794
	.align 2, 0
_08039784: .4byte 0x0203E170
_08039788: .4byte gLoadedRoomLevel
_0803978C:
	adds r2, #1
	cmp r2, r1
	blt _08039776
_08039792:
	movs r0, #1
_08039794:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	.thumb
sub_803979C: @ 0x0803979C
	push {r4, lr}
	movs r2, #0
	ldr r4, _080397CC
	ldr r0, _080397D0
	ldrh r1, [r0]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r1, r0, #3
	adds r0, r1, r4
	ldrb r3, [r0, #9]
	cmp r2, r3
	bge _080397DA
	adds r0, r4, #0
	adds r0, #0x40
	adds r0, r1, r0
	ldr r4, [r0]
	adds r1, r3, #0
_080397BE:
	adds r0, r4, r2
	ldrb r0, [r0]
	cmp r0, #0
	bne _080397D4
	movs r0, #0
	b _080397DC
	.align 2, 0
_080397CC: .4byte 0x0203E170
_080397D0: .4byte gLoadedRoomLevel
_080397D4:
	adds r2, #1
	cmp r2, r1
	blt _080397BE
_080397DA:
	movs r0, #1
_080397DC:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	.thumb
sub_80397E4: @ 0x080397E4
	push {r4, lr}
	movs r2, #0
	ldr r4, _08039810
	ldr r0, _08039814
	ldrh r1, [r0]
	movs r0, #0xc4
	muls r1, r0, r1
	adds r0, r1, r4
	ldrb r3, [r0, #3]
	cmp r2, r3
	bge _0803981E
	adds r0, r4, #0
	adds r0, #0x34
	adds r0, r1, r0
	ldr r1, [r0]
_08039802:
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #0
	bne _08039818
	movs r0, #0
	b _08039820
	.align 2, 0
_08039810: .4byte 0x0203E440
_08039814: .4byte gLoadedRoomLevel
_08039818:
	adds r2, #1
	cmp r2, r3
	blt _08039802
_0803981E:
	movs r0, #1
_08039820:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	.thumb
sub_8039828: @ 0x08039828
	ldr r0, _08039830
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_08039830: .4byte 0x0203E938

	.thumb
sub_8039834: @ 0x08039834
	ldr r0, _0803983C
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803983C: .4byte 0x0203E939

	.thumb
sub_8039840: @ 0x08039840
	push {lr}
	ldr r0, [r0, #0xc]
	cmp r0, #6
	bhi _080398CC
	lsls r0, r0, #2
	ldr r1, _08039854
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08039854: .4byte 0x08039858
_08039858: @ jump table
	.4byte _08039874 @ case 0
	.4byte _08039880 @ case 1
	.4byte _0803988C @ case 2
	.4byte _08039898 @ case 3
	.4byte _080398A4 @ case 4
	.4byte _080398B0 @ case 5
	.4byte _080398BC @ case 6
_08039874:
	ldr r0, _0803987C
	ldrb r1, [r0]
	b _080398C2
	.align 2, 0
_0803987C: .4byte 0x0203E93A
_08039880:
	ldr r0, _08039888
	ldrb r1, [r0]
	lsrs r1, r1, #1
	b _080398C2
	.align 2, 0
_08039888: .4byte 0x0203E93A
_0803988C:
	ldr r0, _08039894
	ldrb r1, [r0]
	lsrs r1, r1, #2
	b _080398C2
	.align 2, 0
_08039894: .4byte 0x0203E93A
_08039898:
	ldr r0, _080398A0
	ldrb r1, [r0]
	lsrs r1, r1, #3
	b _080398C2
	.align 2, 0
_080398A0: .4byte 0x0203E93A
_080398A4:
	ldr r0, _080398AC
	ldrb r1, [r0]
	lsrs r1, r1, #4
	b _080398C2
	.align 2, 0
_080398AC: .4byte 0x0203E93A
_080398B0:
	ldr r0, _080398B8
	ldrb r1, [r0]
	lsrs r1, r1, #5
	b _080398C2
	.align 2, 0
_080398B8: .4byte 0x0203E93A
_080398BC:
	ldr r0, _080398C8
	ldrb r1, [r0]
	lsrs r1, r1, #6
_080398C2:
	movs r0, #1
	bics r0, r1
	b _080398CE
	.align 2, 0
_080398C8: .4byte 0x0203E93A
_080398CC:
	movs r0, #1
_080398CE:
	pop {r1}
	bx r1
	.align 2, 0

	.thumb
sub_80398D4: @ 0x080398D4
	ldr r0, _080398DC
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_080398DC: .4byte 0x0203E940

	.thumb
sub_80398E0: @ 0x080398E0
	push {lr}
	ldr r0, _080398F0
	ldrh r0, [r0]
	cmp r0, #3
	bne _080398F8
	ldr r0, _080398F4
	b _08039902
	.align 2, 0
_080398F0: .4byte gLoadedRoomLevel
_080398F4: .4byte 0x0203E972
_080398F8:
	cmp r0, #5
	beq _08039900
	movs r0, #0
	b _08039904
_08039900:
	ldr r0, _08039908
_08039902:
	ldrb r0, [r0]
_08039904:
	pop {r1}
	bx r1
	.align 2, 0
_08039908: .4byte 0x0203E973

	.thumb
sub_803990C: @ 0x0803990C
	push {r4, lr}
	movs r2, #0
	ldr r4, _08039938
	ldr r0, _0803993C
	ldrh r1, [r0]
	movs r0, #0xc4
	muls r1, r0, r1
	adds r0, r1, r4
	ldrb r3, [r0, #5]
	cmp r2, r3
	bge _08039946
	adds r0, r4, #0
	adds r0, #0x3c
	adds r0, r1, r0
	ldr r1, [r0]
_0803992A:
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #0
	bne _08039940
	movs r0, #0
	b _08039948
	.align 2, 0
_08039938: .4byte 0x0203E440
_0803993C: .4byte gLoadedRoomLevel
_08039940:
	adds r2, #1
	cmp r2, r3
	blt _0803992A
_08039946:
	movs r0, #1
_08039948:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	.thumb
sub_8039950: @ 0x08039950
	push {r4, lr}
	movs r2, #0
	ldr r4, _0803997C
	ldr r0, _08039980
	ldrh r1, [r0]
	movs r0, #0xc4
	muls r1, r0, r1
	adds r0, r1, r4
	ldrb r3, [r0, #7]
	cmp r2, r3
	bge _0803998A
	adds r0, r4, #0
	adds r0, #0x44
	adds r0, r1, r0
	ldr r1, [r0]
_0803996E:
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #0
	bne _08039984
	movs r0, #0
	b _0803998C
	.align 2, 0
_0803997C: .4byte 0x0203E440
_08039980: .4byte gLoadedRoomLevel
_08039984:
	adds r2, #1
	cmp r2, r3
	blt _0803996E
_0803998A:
	movs r0, #1
_0803998C:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	.thumb
sub_8039994: @ 0x08039994
	push {r4, lr}
	movs r2, #0
	ldr r4, _080399C0
	ldr r0, _080399C4
	ldrh r1, [r0]
	movs r0, #0xc4
	muls r1, r0, r1
	adds r0, r1, r4
	ldrb r3, [r0, #8]
	cmp r2, r3
	bge _080399CE
	adds r0, r4, #0
	adds r0, #0x48
	adds r0, r1, r0
	ldr r1, [r0]
_080399B2:
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #0
	bne _080399C8
	movs r0, #0
	b _080399D0
	.align 2, 0
_080399C0: .4byte 0x0203E440
_080399C4: .4byte gLoadedRoomLevel
_080399C8:
	adds r2, #1
	cmp r2, r3
	blt _080399B2
_080399CE:
	movs r0, #1
_080399D0:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	.thumb
sub_80399D8: @ 0x080399D8
	push {r4, lr}
	movs r2, #0
	ldr r4, _08039A04
	ldr r0, _08039A08
	ldrh r1, [r0]
	movs r0, #0xc4
	muls r1, r0, r1
	adds r0, r1, r4
	ldrb r3, [r0, #9]
	cmp r2, r3
	bge _08039A12
	adds r0, r4, #0
	adds r0, #0x4c
	adds r0, r1, r0
	ldr r1, [r0]
_080399F6:
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #0
	bne _08039A0C
	movs r0, #0
	b _08039A14
	.align 2, 0
_08039A04: .4byte 0x0203E440
_08039A08: .4byte gLoadedRoomLevel
_08039A0C:
	adds r2, #1
	cmp r2, r3
	blt _080399F6
_08039A12:
	movs r0, #1
_08039A14:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	.thumb
sub_8039A1C: @ 0x08039A1C
	push {r4, lr}
	movs r2, #0
	ldr r4, _08039A48
	ldr r0, _08039A4C
	ldrh r1, [r0]
	movs r0, #0xc4
	muls r1, r0, r1
	adds r0, r1, r4
	ldrb r3, [r0, #0xa]
	cmp r2, r3
	bge _08039A56
	adds r0, r4, #0
	adds r0, #0x50
	adds r0, r1, r0
	ldr r1, [r0]
_08039A3A:
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #0
	bne _08039A50
	movs r0, #0
	b _08039A58
	.align 2, 0
_08039A48: .4byte 0x0203E440
_08039A4C: .4byte gLoadedRoomLevel
_08039A50:
	adds r2, #1
	cmp r2, r3
	blt _08039A3A
_08039A56:
	movs r0, #1
_08039A58:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	.thumb
sub_8039A60: @ 0x08039A60
	push {r4, lr}
	movs r2, #0
	ldr r4, _08039A8C
	ldr r0, _08039A90
	ldrh r1, [r0]
	movs r0, #0xc4
	muls r1, r0, r1
	adds r0, r1, r4
	ldrb r3, [r0, #0xb]
	cmp r2, r3
	bge _08039A9A
	adds r0, r4, #0
	adds r0, #0x54
	adds r0, r1, r0
	ldr r1, [r0]
_08039A7E:
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #0
	bne _08039A94
	movs r0, #0
	b _08039A9C
	.align 2, 0
_08039A8C: .4byte 0x0203E440
_08039A90: .4byte gLoadedRoomLevel
_08039A94:
	adds r2, #1
	cmp r2, r3
	blt _08039A7E
_08039A9A:
	movs r0, #1
_08039A9C:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	.thumb
sub_8039AA4: @ 0x08039AA4
	ldr r0, _08039AAC
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_08039AAC: .4byte 0x0203E95B

	.thumb
sub_8039AB0: @ 0x08039AB0
	push {r4, lr}
	movs r2, #0
	ldr r4, _08039AE0
	ldr r0, _08039AE4
	ldrh r1, [r0]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r1, r0, #3
	adds r0, r1, r4
	ldrb r3, [r0, #0x10]
	cmp r2, r3
	bge _08039AEE
	adds r0, r4, #0
	adds r0, #0x5c
	adds r0, r1, r0
	ldr r4, [r0]
	adds r1, r3, #0
_08039AD2:
	adds r0, r4, r2
	ldrb r0, [r0]
	cmp r0, #0
	bne _08039AE8
	movs r0, #0
	b _08039AF0
	.align 2, 0
_08039AE0: .4byte 0x0203E170
_08039AE4: .4byte gLoadedRoomLevel
_08039AE8:
	adds r2, #1
	cmp r2, r1
	blt _08039AD2
_08039AEE:
	movs r0, #1
_08039AF0:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	.thumb
sub_8039AF8: @ 0x08039AF8
	ldr r0, _08039B00
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_08039B00: .4byte 0x0203E94E

	.thumb
sub_8039B04: @ 0x08039B04
	push {lr}
	movs r1, #0
	ldr r0, _08039B18
	ldrb r0, [r0]
	cmp r0, #0
	bne _08039B12
	movs r1, #1
_08039B12:
	adds r0, r1, #0
	pop {r1}
	bx r1
	.align 2, 0
_08039B18: .4byte 0x0203E94E

	.thumb
sub_8039B1C: @ 0x08039B1C
	push {r4, lr}
	movs r2, #0
	ldr r4, _08039B48
	ldr r0, _08039B4C
	ldrh r1, [r0]
	movs r0, #0xc4
	muls r1, r0, r1
	adds r0, r1, r4
	ldrb r3, [r0, #0xe]
	cmp r2, r3
	bge _08039B56
	adds r0, r4, #0
	adds r0, #0x60
	adds r0, r1, r0
	ldr r1, [r0]
_08039B3A:
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #0
	bne _08039B50
	movs r0, #0
	b _08039B58
	.align 2, 0
_08039B48: .4byte 0x0203E440
_08039B4C: .4byte gLoadedRoomLevel
_08039B50:
	adds r2, #1
	cmp r2, r3
	blt _08039B3A
_08039B56:
	movs r0, #1
_08039B58:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	.thumb
sub_8039B60: @ 0x08039B60
	push {r4, lr}
	movs r1, #0
	ldr r4, _08039B8C
	ldr r0, _08039B90
	ldrh r0, [r0]
	lsls r2, r0, #4
	adds r0, r2, r4
	ldrb r3, [r0, #2]
	cmp r1, r3
	bge _08039B9A
	adds r0, r4, #0
	adds r0, #0xc
	adds r0, r2, r0
	ldr r4, [r0]
	adds r2, r3, #0
_08039B7E:
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _08039B94
	movs r0, #1
	b _08039B9C
	.align 2, 0
_08039B8C: .4byte 0x0203E8D8
_08039B90: .4byte gLoadedRoomLevel
_08039B94:
	adds r1, #1
	cmp r1, r2
	blt _08039B7E
_08039B9A:
	movs r0, #0
_08039B9C:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	.thumb
sub_8039BA4: @ 0x08039BA4
	ldr r0, _08039BAC
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_08039BAC: .4byte 0x0203E94B

	.thumb
sub_8039BB0: @ 0x08039BB0
	push {r4, lr}
	movs r2, #0
	ldr r4, _08039BDC
	ldr r0, _08039BE0
	ldrh r1, [r0]
	movs r0, #0xc4
	muls r1, r0, r1
	adds r0, r1, r4
	ldrb r3, [r0, #0xf]
	cmp r2, r3
	bge _08039BEA
	adds r0, r4, #0
	adds r0, #0x64
	adds r0, r1, r0
	ldr r1, [r0]
_08039BCE:
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #0
	bne _08039BE4
	movs r0, #0
	b _08039BEC
	.align 2, 0
_08039BDC: .4byte 0x0203E440
_08039BE0: .4byte gLoadedRoomLevel
_08039BE4:
	adds r2, #1
	cmp r2, r3
	blt _08039BCE
_08039BEA:
	movs r0, #1
_08039BEC:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	.thumb
sub_8039BF4: @ 0x08039BF4
	push {r4, lr}
	movs r2, #0
	ldr r4, _08039C20
	ldr r0, _08039C24
	ldrh r1, [r0]
	movs r0, #0xc4
	muls r1, r0, r1
	adds r0, r1, r4
	ldrb r3, [r0, #0x11]
	cmp r2, r3
	bge _08039C2E
	adds r0, r4, #0
	adds r0, #0x6c
	adds r0, r1, r0
	ldr r1, [r0]
_08039C12:
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #0
	bne _08039C28
	movs r0, #0
	b _08039C30
	.align 2, 0
_08039C20: .4byte 0x0203E440
_08039C24: .4byte gLoadedRoomLevel
_08039C28:
	adds r2, #1
	cmp r2, r3
	blt _08039C12
_08039C2E:
	movs r0, #1
_08039C30:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	.thumb
sub_8039C38: @ 0x08039C38
	ldr r0, _08039C40
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_08039C40: .4byte 0x0203E94D

	.thumb
sub_8039C44: @ 0x08039C44
	ldr r0, _08039C4C
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_08039C4C: .4byte 0x0203E955

	.thumb
sub_8039C50: @ 0x08039C50
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r5, #0
	ldrh r0, [r4, #2]
	ldrb r1, [r4, #0x12]
	bl sub_803340C
	cmp r0, #0
	beq _08039C7C
	ldr r0, _08039C84
	movs r1, #0
	ldrsh r0, [r0, r1]
	ldrh r2, [r4, #0x10]
	cmp r0, r2
	beq _08039C7C
	ldr r0, _08039C88
	movs r3, #0
	ldrsh r1, [r0, r3]
	eors r1, r2
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r5, r0, #0x1f
_08039C7C:
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08039C84: .4byte word_203F998
_08039C88: .4byte word_203F99A

	.thumb
sub_8039C8C: @ 0x08039C8C
	push {lr}
	ldrh r2, [r0, #2]
	ldrb r1, [r0, #0x12]
	adds r0, r2, #0
	bl sub_803340C
	movs r1, #0
	cmp r0, #0
	bne _08039CA0
	movs r1, #1
_08039CA0:
	adds r0, r1, #0
	pop {r1}
	bx r1
	.align 2, 0

	.thumb
sub_8039CA8: @ 0x08039CA8
	push {r4, r5, lr}
	movs r0, #0
	movs r1, #0
	bl sub_803352C
	adds r4, r0, #0
	movs r5, #0
	movs r0, #0
	movs r1, #0
	bl sub_803340C
	cmp r0, #0
	beq _08039CDA
	ldr r0, _08039CE4
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, r4
	beq _08039CDA
	ldr r0, _08039CE8
	movs r2, #0
	ldrsh r1, [r0, r2]
	eors r1, r4
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r5, r0, #0x1f
_08039CDA:
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08039CE4: .4byte word_203F998
_08039CE8: .4byte word_203F99A

	.thumb
sub_8039CEC: @ 0x08039CEC
	push {lr}
	movs r0, #0
	movs r1, #0
	bl sub_803340C
	movs r1, #0
	cmp r0, #0
	bne _08039CFE
	movs r1, #1
_08039CFE:
	adds r0, r1, #0
	pop {r1}
	bx r1

	.thumb
sub_8039D04: @ 0x08039D04
	push {r4, r5, lr}
	movs r0, #1
	movs r1, #0
	bl sub_803352C
	adds r4, r0, #0
	movs r5, #0
	movs r0, #1
	movs r1, #0
	bl sub_803340C
	cmp r0, #0
	beq _08039D36
	ldr r0, _08039D40
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, r4
	beq _08039D36
	ldr r0, _08039D44
	movs r2, #0
	ldrsh r1, [r0, r2]
	eors r1, r4
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r5, r0, #0x1f
_08039D36:
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08039D40: .4byte word_203F998
_08039D44: .4byte word_203F99A

	.thumb
sub_8039D48: @ 0x08039D48
	push {lr}
	movs r0, #1
	movs r1, #0
	bl sub_803340C
	movs r1, #0
	cmp r0, #0
	bne _08039D5A
	movs r1, #1
_08039D5A:
	adds r0, r1, #0
	pop {r1}
	bx r1

	.thumb
sub_8039D60: @ 0x08039D60
	push {r4, r5, lr}
	movs r0, #0
	movs r1, #0
	bl sub_803352C
	adds r4, r0, #0
	movs r5, #0
	movs r0, #1
	movs r1, #0
	bl sub_803340C
	cmp r0, #0
	bne _08039D9E
	movs r0, #0
	movs r1, #0
	bl sub_803340C
	cmp r0, #0
	beq _08039D9E
	ldr r0, _08039DA8
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, r4
	beq _08039D9E
	ldr r0, _08039DAC
	movs r2, #0
	ldrsh r1, [r0, r2]
	eors r1, r4
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r5, r0, #0x1f
_08039D9E:
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08039DA8: .4byte word_203F998
_08039DAC: .4byte word_203F99A

	.thumb
sub_8039DB0: @ 0x08039DB0
	push {r4, r5, lr}
	movs r0, #1
	movs r1, #0
	bl sub_803352C
	adds r4, r0, #0
	movs r5, #0
	movs r0, #1
	movs r1, #0
	bl sub_803340C
	cmp r0, #0
	beq _08039DEE
	movs r0, #0
	movs r1, #0
	bl sub_803340C
	cmp r0, #0
	beq _08039DEE
	ldr r0, _08039DF8
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, r4
	beq _08039DEE
	ldr r0, _08039DFC
	movs r2, #0
	ldrsh r1, [r0, r2]
	eors r1, r4
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r5, r0, #0x1f
_08039DEE:
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08039DF8: .4byte word_203F998
_08039DFC: .4byte word_203F99A

	.thumb
sub_8039E00: @ 0x08039E00
	push {r4, r5, lr}
	movs r0, #2
	movs r1, #0
	bl sub_803352C
	adds r4, r0, #0
	movs r5, #0
	movs r0, #2
	movs r1, #0
	bl sub_803340C
	cmp r0, #0
	beq _08039E32
	ldr r0, _08039E3C
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, r4
	beq _08039E32
	ldr r0, _08039E40
	movs r2, #0
	ldrsh r1, [r0, r2]
	eors r1, r4
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r5, r0, #0x1f
_08039E32:
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08039E3C: .4byte word_203F998
_08039E40: .4byte word_203F99A

	.thumb
sub_8039E44: @ 0x08039E44
	push {lr}
	movs r0, #2
	movs r1, #0
	bl sub_803340C
	movs r1, #0
	cmp r0, #0
	bne _08039E56
	movs r1, #1
_08039E56:
	adds r0, r1, #0
	pop {r1}
	bx r1

	.thumb
sub_8039E5C: @ 0x08039E5C
	push {r4, r5, lr}
	movs r0, #1
	movs r1, #0
	bl sub_803352C
	adds r4, r0, #0
	movs r5, #0
	movs r0, #2
	movs r1, #0
	bl sub_803340C
	cmp r0, #0
	bne _08039EA6
	movs r0, #1
	movs r1, #0
	bl sub_803340C
	cmp r0, #0
	beq _08039EA6
	movs r0, #0
	movs r1, #0
	bl sub_803340C
	cmp r0, #0
	beq _08039EA6
	ldr r0, _08039EB0
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, r4
	beq _08039EA6
	ldr r0, _08039EB4
	movs r2, #0
	ldrsh r1, [r0, r2]
	eors r1, r4
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r5, r0, #0x1f
_08039EA6:
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08039EB0: .4byte word_203F998
_08039EB4: .4byte word_203F99A

	.thumb
sub_8039EB8: @ 0x08039EB8
	push {r4, r5, lr}
	movs r0, #2
	movs r1, #0
	bl sub_803352C
	adds r4, r0, #0
	movs r5, #0
	movs r0, #2
	movs r1, #0
	bl sub_803340C
	cmp r0, #0
	beq _08039F02
	movs r0, #1
	movs r1, #0
	bl sub_803340C
	cmp r0, #0
	beq _08039F02
	movs r0, #0
	movs r1, #0
	bl sub_803340C
	cmp r0, #0
	beq _08039F02
	ldr r0, _08039F0C
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, r4
	beq _08039F02
	ldr r0, _08039F10
	movs r2, #0
	ldrsh r1, [r0, r2]
	eors r1, r4
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r5, r0, #0x1f
_08039F02:
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08039F0C: .4byte word_203F998
_08039F10: .4byte word_203F99A

	.thumb
sub_8039F14: @ 0x08039F14
	push {r4, r5, lr}
	movs r0, #3
	movs r1, #0
	bl sub_803352C
	adds r4, r0, #0
	movs r5, #0
	movs r0, #3
	movs r1, #0
	bl sub_803340C
	cmp r0, #0
	beq _08039F46
	ldr r0, _08039F50
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, r4
	beq _08039F46
	ldr r0, _08039F54
	movs r2, #0
	ldrsh r1, [r0, r2]
	eors r1, r4
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r5, r0, #0x1f
_08039F46:
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08039F50: .4byte word_203F998
_08039F54: .4byte word_203F99A

	.thumb
sub_8039F58: @ 0x08039F58
	push {lr}
	movs r0, #3
	movs r1, #0
	bl sub_803340C
	movs r1, #0
	cmp r0, #0
	bne _08039F6A
	movs r1, #1
_08039F6A:
	adds r0, r1, #0
	pop {r1}
	bx r1

	.thumb
sub_8039F70: @ 0x08039F70
	push {r4, r5, lr}
	movs r0, #2
	movs r1, #0
	bl sub_803352C
	adds r4, r0, #0
	movs r5, #0
	movs r0, #3
	movs r1, #0
	bl sub_803340C
	cmp r0, #0
	bne _08039FC6
	movs r0, #2
	movs r1, #0
	bl sub_803340C
	cmp r0, #0
	beq _08039FC6
	movs r0, #1
	movs r1, #0
	bl sub_803340C
	cmp r0, #0
	beq _08039FC6
	movs r0, #0
	movs r1, #0
	bl sub_803340C
	cmp r0, #0
	beq _08039FC6
	ldr r0, _08039FD0
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, r4
	beq _08039FC6
	ldr r0, _08039FD4
	movs r2, #0
	ldrsh r1, [r0, r2]
	eors r1, r4
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r5, r0, #0x1f
_08039FC6:
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08039FD0: .4byte word_203F998
_08039FD4: .4byte word_203F99A

	.thumb
sub_8039FD8: @ 0x08039FD8
	push {r4, r5, lr}
	movs r0, #3
	movs r1, #0
	bl sub_803352C
	adds r4, r0, #0
	movs r5, #0
	movs r0, #3
	movs r1, #0
	bl sub_803340C
	cmp r0, #0
	beq _0803A02E
	movs r0, #2
	movs r1, #0
	bl sub_803340C
	cmp r0, #0
	beq _0803A02E
	movs r0, #1
	movs r1, #0
	bl sub_803340C
	cmp r0, #0
	beq _0803A02E
	movs r0, #0
	movs r1, #0
	bl sub_803340C
	cmp r0, #0
	beq _0803A02E
	ldr r0, _0803A038
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, r4
	beq _0803A02E
	ldr r0, _0803A03C
	movs r2, #0
	ldrsh r1, [r0, r2]
	eors r1, r4
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r5, r0, #0x1f
_0803A02E:
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0803A038: .4byte word_203F998
_0803A03C: .4byte word_203F99A

	.thumb
sub_803A040: @ 0x0803A040
	push {r4, r5, lr}
	movs r0, #4
	movs r1, #0
	bl sub_803352C
	adds r4, r0, #0
	movs r5, #0
	movs r0, #4
	movs r1, #0
	bl sub_803340C
	cmp r0, #0
	beq _0803A072
	ldr r0, _0803A07C
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, r4
	beq _0803A072
	ldr r0, _0803A080
	movs r2, #0
	ldrsh r1, [r0, r2]
	eors r1, r4
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r5, r0, #0x1f
_0803A072:
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0803A07C: .4byte word_203F998
_0803A080: .4byte word_203F99A

	.thumb
sub_803A084: @ 0x0803A084
	push {lr}
	movs r0, #4
	movs r1, #0
	bl sub_803340C
	movs r1, #0
	cmp r0, #0
	bne _0803A096
	movs r1, #1
_0803A096:
	adds r0, r1, #0
	pop {r1}
	bx r1

	.thumb
sub_803A09C: @ 0x0803A09C
	movs r0, #1
	bx lr

	.thumb
sub_803A0A0: @ 0x0803A0A0
	movs r0, #1
	bx lr

	.thumb
sub_803A0A4: @ 0x0803A0A4
	push {r4, r5, lr}
	movs r0, #5
	movs r1, #0
	bl sub_803352C
	adds r4, r0, #0
	movs r5, #0
	movs r0, #5
	movs r1, #0
	bl sub_803340C
	cmp r0, #0
	beq _0803A0D6
	ldr r0, _0803A0E0
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, r4
	beq _0803A0D6
	ldr r0, _0803A0E4
	movs r2, #0
	ldrsh r1, [r0, r2]
	eors r1, r4
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r5, r0, #0x1f
_0803A0D6:
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0803A0E0: .4byte word_203F998
_0803A0E4: .4byte word_203F99A

	.thumb
sub_803A0E8: @ 0x0803A0E8
	push {lr}
	movs r0, #5
	movs r1, #0
	bl sub_803340C
	movs r1, #0
	cmp r0, #0
	bne _0803A0FA
	movs r1, #1
_0803A0FA:
	adds r0, r1, #0
	pop {r1}
	bx r1

	.thumb
sub_803A100: @ 0x0803A100
	movs r0, #1
	bx lr

	.thumb
sub_803A104: @ 0x0803A104
	movs r0, #1
	bx lr

	.thumb
sub_803A108: @ 0x0803A108
	push {r4, r5, lr}
	movs r0, #4
	movs r1, #0
	bl sub_803352C
	adds r4, r0, #0
	movs r5, #0
	movs r0, #5
	movs r1, #0
	bl sub_803340C
	cmp r0, #0
	bne _0803A146
	movs r0, #4
	movs r1, #0
	bl sub_803340C
	cmp r0, #0
	beq _0803A146
	ldr r0, _0803A150
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, r4
	beq _0803A146
	ldr r0, _0803A154
	movs r2, #0
	ldrsh r1, [r0, r2]
	eors r1, r4
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r5, r0, #0x1f
_0803A146:
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0803A150: .4byte word_203F998
_0803A154: .4byte word_203F99A

	.thumb
sub_803A158: @ 0x0803A158
	push {r4, r5, lr}
	movs r0, #6
	movs r1, #0
	bl sub_803352C
	adds r4, r0, #0
	movs r5, #0
	movs r0, #6
	movs r1, #0
	bl sub_803340C
	cmp r0, #0
	beq _0803A18A
	ldr r0, _0803A194
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, r4
	beq _0803A18A
	ldr r0, _0803A198
	movs r2, #0
	ldrsh r1, [r0, r2]
	eors r1, r4
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r5, r0, #0x1f
_0803A18A:
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0803A194: .4byte word_203F998
_0803A198: .4byte word_203F99A

	.thumb
sub_803A19C: @ 0x0803A19C
	push {lr}
	movs r0, #6
	movs r1, #0
	bl sub_803340C
	movs r1, #0
	cmp r0, #0
	bne _0803A1AE
	movs r1, #1
_0803A1AE:
	adds r0, r1, #0
	pop {r1}
	bx r1

	.thumb
sub_803A1B4: @ 0x0803A1B4
	movs r0, #1
	bx lr

	.thumb
sub_803A1B8: @ 0x0803A1B8
	movs r0, #1
	bx lr

	.thumb
sub_803A1BC: @ 0x0803A1BC
	push {r4, r5, lr}
	movs r0, #5
	movs r1, #0
	bl sub_803352C
	adds r4, r0, #0
	movs r5, #0
	movs r0, #6
	movs r1, #0
	bl sub_803340C
	cmp r0, #0
	bne _0803A1FA
	movs r0, #5
	movs r1, #0
	bl sub_803340C
	cmp r0, #0
	beq _0803A1FA
	ldr r0, _0803A204
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, r4
	beq _0803A1FA
	ldr r0, _0803A208
	movs r2, #0
	ldrsh r1, [r0, r2]
	eors r1, r4
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r5, r0, #0x1f
_0803A1FA:
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0803A204: .4byte word_203F998
_0803A208: .4byte word_203F99A

	.thumb
sub_803A20C: @ 0x0803A20C
	push {r4, r5, lr}
	movs r0, #7
	movs r1, #0
	bl sub_803352C
	adds r4, r0, #0
	movs r5, #0
	movs r0, #7
	movs r1, #0
	bl sub_803340C
	cmp r0, #0
	beq _0803A23E
	ldr r0, _0803A248
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, r4
	beq _0803A23E
	ldr r0, _0803A24C
	movs r2, #0
	ldrsh r1, [r0, r2]
	eors r1, r4
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r5, r0, #0x1f
_0803A23E:
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0803A248: .4byte word_203F998
_0803A24C: .4byte word_203F99A

	.thumb
sub_803A250: @ 0x0803A250
	push {lr}
	movs r0, #7
	movs r1, #0
	bl sub_803340C
	movs r1, #0
	cmp r0, #0
	bne _0803A262
	movs r1, #1
_0803A262:
	adds r0, r1, #0
	pop {r1}
	bx r1

	.thumb
sub_803A268: @ 0x0803A268
	movs r0, #1
	bx lr

	.thumb
sub_803A26C: @ 0x0803A26C
	movs r0, #1
	bx lr

	.thumb
sub_803A270: @ 0x0803A270
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r0, #0
	movs r1, #0
	bl sub_803352C
	adds r4, r0, #0
	movs r6, #0
	movs r0, #0
	movs r1, #0
	bl sub_803340C
	cmp r0, #0
	beq _0803A2AE
	ldr r0, _0803A2B8
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, r4
	beq _0803A2AE
	ldr r0, _0803A2BC
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, r4
	beq _0803A2AE
	ldrb r0, [r5, #0x13]
	movs r1, #0
	bl sub_803340C
	cmp r0, #0
	bne _0803A2AE
	movs r6, #1
_0803A2AE:
	adds r0, r6, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0803A2B8: .4byte word_203F998
_0803A2BC: .4byte word_203F99A

	.thumb
sub_803A2C0: @ 0x0803A2C0
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r0, #0
	movs r1, #0
	bl sub_803352C
	adds r4, r0, #0
	movs r6, #0
	movs r0, #0
	movs r1, #0
	bl sub_803340C
	cmp r0, #0
	beq _0803A308
	ldr r0, _0803A310
	movs r1, #0
	ldrsh r2, [r0, r1]
	ldrh r1, [r5, #0x10]
	cmp r2, r1
	beq _0803A308
	ldr r0, _0803A314
	movs r3, #0
	ldrsh r0, [r0, r3]
	cmp r0, r1
	beq _0803A308
	cmp r2, r4
	beq _0803A308
	cmp r0, r4
	beq _0803A308
	ldrb r0, [r5, #0x13]
	movs r1, #0
	bl sub_803340C
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r6, r1, #0x1f
_0803A308:
	adds r0, r6, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0803A310: .4byte word_203F998
_0803A314: .4byte word_203F99A

	.thumb
sub_803A318: @ 0x0803A318
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r0, #1
	movs r1, #0
	bl sub_803352C
	adds r4, r0, #0
	movs r6, #0
	movs r0, #1
	movs r1, #0
	bl sub_803340C
	cmp r0, #0
	beq _0803A356
	ldr r0, _0803A360
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, r4
	beq _0803A356
	ldr r0, _0803A364
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, r4
	beq _0803A356
	ldrb r0, [r5, #0x13]
	movs r1, #0
	bl sub_803340C
	cmp r0, #0
	bne _0803A356
	movs r6, #1
_0803A356:
	adds r0, r6, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0803A360: .4byte word_203F998
_0803A364: .4byte word_203F99A

	.thumb
sub_803A368: @ 0x0803A368
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r0, #1
	movs r1, #0
	bl sub_803352C
	adds r4, r0, #0
	movs r6, #0
	movs r0, #1
	movs r1, #0
	bl sub_803340C
	cmp r0, #0
	beq _0803A3B0
	ldr r0, _0803A3B8
	movs r1, #0
	ldrsh r2, [r0, r1]
	ldrh r1, [r5, #0x10]
	cmp r2, r1
	beq _0803A3B0
	ldr r0, _0803A3BC
	movs r3, #0
	ldrsh r0, [r0, r3]
	cmp r0, r1
	beq _0803A3B0
	cmp r2, r4
	beq _0803A3B0
	cmp r0, r4
	beq _0803A3B0
	ldrb r0, [r5, #0x13]
	movs r1, #0
	bl sub_803340C
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r6, r1, #0x1f
_0803A3B0:
	adds r0, r6, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0803A3B8: .4byte word_203F998
_0803A3BC: .4byte word_203F99A

	.thumb
sub_803A3C0: @ 0x0803A3C0
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r0, #2
	movs r1, #0
	bl sub_803352C
	adds r4, r0, #0
	movs r6, #0
	movs r0, #2
	movs r1, #0
	bl sub_803340C
	cmp r0, #0
	beq _0803A3FE
	ldr r0, _0803A408
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, r4
	beq _0803A3FE
	ldr r0, _0803A40C
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, r4
	beq _0803A3FE
	ldrb r0, [r5, #0x13]
	movs r1, #0
	bl sub_803340C
	cmp r0, #0
	bne _0803A3FE
	movs r6, #1
_0803A3FE:
	adds r0, r6, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0803A408: .4byte word_203F998
_0803A40C: .4byte word_203F99A

	.thumb
sub_803A410: @ 0x0803A410
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r0, #2
	movs r1, #0
	bl sub_803352C
	adds r4, r0, #0
	movs r6, #0
	movs r0, #2
	movs r1, #0
	bl sub_803340C
	cmp r0, #0
	beq _0803A458
	ldr r0, _0803A460
	movs r1, #0
	ldrsh r2, [r0, r1]
	ldrh r1, [r5, #0x10]
	cmp r2, r1
	beq _0803A458
	ldr r0, _0803A464
	movs r3, #0
	ldrsh r0, [r0, r3]
	cmp r0, r1
	beq _0803A458
	cmp r2, r4
	beq _0803A458
	cmp r0, r4
	beq _0803A458
	ldrb r0, [r5, #0x13]
	movs r1, #0
	bl sub_803340C
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r6, r1, #0x1f
_0803A458:
	adds r0, r6, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0803A460: .4byte word_203F998
_0803A464: .4byte word_203F99A

	.thumb
sub_803A468: @ 0x0803A468
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r0, #3
	movs r1, #0
	bl sub_803352C
	adds r4, r0, #0
	movs r6, #0
	movs r0, #3
	movs r1, #0
	bl sub_803340C
	cmp r0, #0
	beq _0803A4A6
	ldr r0, _0803A4B0
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, r4
	beq _0803A4A6
	ldr r0, _0803A4B4
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, r4
	beq _0803A4A6
	ldrb r0, [r5, #0x13]
	movs r1, #0
	bl sub_803340C
	cmp r0, #0
	bne _0803A4A6
	movs r6, #1
_0803A4A6:
	adds r0, r6, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0803A4B0: .4byte word_203F998
_0803A4B4: .4byte word_203F99A

	.thumb
sub_803A4B8: @ 0x0803A4B8
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r0, #3
	movs r1, #0
	bl sub_803352C
	adds r4, r0, #0
	movs r6, #0
	movs r0, #3
	movs r1, #0
	bl sub_803340C
	cmp r0, #0
	beq _0803A500
	ldr r0, _0803A508
	movs r1, #0
	ldrsh r2, [r0, r1]
	ldrh r1, [r5, #0x10]
	cmp r2, r1
	beq _0803A500
	ldr r0, _0803A50C
	movs r3, #0
	ldrsh r0, [r0, r3]
	cmp r0, r1
	beq _0803A500
	cmp r2, r4
	beq _0803A500
	cmp r0, r4
	beq _0803A500
	ldrb r0, [r5, #0x13]
	movs r1, #0
	bl sub_803340C
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r6, r1, #0x1f
_0803A500:
	adds r0, r6, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0803A508: .4byte word_203F998
_0803A50C: .4byte word_203F99A

	.thumb
sub_803A510: @ 0x0803A510
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r0, #4
	movs r1, #0
	bl sub_803352C
	adds r4, r0, #0
	movs r6, #0
	movs r0, #4
	movs r1, #0
	bl sub_803340C
	cmp r0, #0
	beq _0803A54E
	ldr r0, _0803A558
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, r4
	beq _0803A54E
	ldr r0, _0803A55C
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, r4
	beq _0803A54E
	ldrb r0, [r5, #0x13]
	movs r1, #0
	bl sub_803340C
	cmp r0, #0
	bne _0803A54E
	movs r6, #1
_0803A54E:
	adds r0, r6, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0803A558: .4byte word_203F998
_0803A55C: .4byte word_203F99A

	.thumb
sub_803A560: @ 0x0803A560
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r0, #4
	movs r1, #0
	bl sub_803352C
	adds r4, r0, #0
	movs r6, #0
	movs r0, #4
	movs r1, #0
	bl sub_803340C
	cmp r0, #0
	beq _0803A5A8
	ldr r0, _0803A5B0
	movs r1, #0
	ldrsh r2, [r0, r1]
	ldrh r1, [r5, #0x10]
	cmp r2, r1
	beq _0803A5A8
	ldr r0, _0803A5B4
	movs r3, #0
	ldrsh r0, [r0, r3]
	cmp r0, r1
	beq _0803A5A8
	cmp r2, r4
	beq _0803A5A8
	cmp r0, r4
	beq _0803A5A8
	ldrb r0, [r5, #0x13]
	movs r1, #0
	bl sub_803340C
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r6, r1, #0x1f
_0803A5A8:
	adds r0, r6, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0803A5B0: .4byte word_203F998
_0803A5B4: .4byte word_203F99A

	.thumb
sub_803A5B8: @ 0x0803A5B8
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r0, #5
	movs r1, #0
	bl sub_803352C
	adds r4, r0, #0
	movs r6, #0
	movs r0, #5
	movs r1, #0
	bl sub_803340C
	cmp r0, #0
	beq _0803A5F6
	ldr r0, _0803A600
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, r4
	beq _0803A5F6
	ldr r0, _0803A604
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, r4
	beq _0803A5F6
	ldrb r0, [r5, #0x13]
	movs r1, #0
	bl sub_803340C
	cmp r0, #0
	bne _0803A5F6
	movs r6, #1
_0803A5F6:
	adds r0, r6, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0803A600: .4byte word_203F998
_0803A604: .4byte word_203F99A

	.thumb
sub_803A608: @ 0x0803A608
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r0, #5
	movs r1, #0
	bl sub_803352C
	adds r4, r0, #0
	movs r6, #0
	movs r0, #5
	movs r1, #0
	bl sub_803340C
	cmp r0, #0
	beq _0803A650
	ldr r0, _0803A658
	movs r1, #0
	ldrsh r2, [r0, r1]
	ldrh r1, [r5, #0x10]
	cmp r2, r1
	beq _0803A650
	ldr r0, _0803A65C
	movs r3, #0
	ldrsh r0, [r0, r3]
	cmp r0, r1
	beq _0803A650
	cmp r2, r4
	beq _0803A650
	cmp r0, r4
	beq _0803A650
	ldrb r0, [r5, #0x13]
	movs r1, #0
	bl sub_803340C
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r6, r1, #0x1f
_0803A650:
	adds r0, r6, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0803A658: .4byte word_203F998
_0803A65C: .4byte word_203F99A

	.thumb
sub_803A660: @ 0x0803A660
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r0, #6
	movs r1, #0
	bl sub_803352C
	adds r4, r0, #0
	movs r6, #0
	movs r0, #6
	movs r1, #0
	bl sub_803340C
	cmp r0, #0
	beq _0803A69E
	ldr r0, _0803A6A8
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, r4
	beq _0803A69E
	ldr r0, _0803A6AC
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, r4
	beq _0803A69E
	ldrb r0, [r5, #0x13]
	movs r1, #0
	bl sub_803340C
	cmp r0, #0
	bne _0803A69E
	movs r6, #1
_0803A69E:
	adds r0, r6, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0803A6A8: .4byte word_203F998
_0803A6AC: .4byte word_203F99A

	.thumb
sub_803A6B0: @ 0x0803A6B0
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r0, #6
	movs r1, #0
	bl sub_803352C
	adds r4, r0, #0
	movs r6, #0
	movs r0, #6
	movs r1, #0
	bl sub_803340C
	cmp r0, #0
	beq _0803A6F8
	ldr r0, _0803A700
	movs r1, #0
	ldrsh r2, [r0, r1]
	ldrh r1, [r5, #0x10]
	cmp r2, r1
	beq _0803A6F8
	ldr r0, _0803A704
	movs r3, #0
	ldrsh r0, [r0, r3]
	cmp r0, r1
	beq _0803A6F8
	cmp r2, r4
	beq _0803A6F8
	cmp r0, r4
	beq _0803A6F8
	ldrb r0, [r5, #0x13]
	movs r1, #0
	bl sub_803340C
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r6, r1, #0x1f
_0803A6F8:
	adds r0, r6, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0803A700: .4byte word_203F998
_0803A704: .4byte word_203F99A

	.thumb
sub_803A708: @ 0x0803A708
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r0, #7
	movs r1, #0
	bl sub_803352C
	adds r4, r0, #0
	movs r6, #0
	movs r0, #7
	movs r1, #0
	bl sub_803340C
	cmp r0, #0
	beq _0803A746
	ldr r0, _0803A750
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, r4
	beq _0803A746
	ldr r0, _0803A754
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, r4
	beq _0803A746
	ldrb r0, [r5, #0x13]
	movs r1, #0
	bl sub_803340C
	cmp r0, #0
	bne _0803A746
	movs r6, #1
_0803A746:
	adds r0, r6, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0803A750: .4byte word_203F998
_0803A754: .4byte word_203F99A

	.thumb
sub_803A758: @ 0x0803A758
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r0, #7
	movs r1, #0
	bl sub_803352C
	adds r4, r0, #0
	movs r6, #0
	movs r0, #7
	movs r1, #0
	bl sub_803340C
	cmp r0, #0
	beq _0803A7A0
	ldr r0, _0803A7A8
	movs r1, #0
	ldrsh r2, [r0, r1]
	ldrh r1, [r5, #0x10]
	cmp r2, r1
	beq _0803A7A0
	ldr r0, _0803A7AC
	movs r3, #0
	ldrsh r0, [r0, r3]
	cmp r0, r1
	beq _0803A7A0
	cmp r2, r4
	beq _0803A7A0
	cmp r0, r4
	beq _0803A7A0
	ldrb r0, [r5, #0x13]
	movs r1, #0
	bl sub_803340C
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r6, r1, #0x1f
_0803A7A0:
	adds r0, r6, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0803A7A8: .4byte word_203F998
_0803A7AC: .4byte word_203F99A

	.thumb
sub_803A7B0: @ 0x0803A7B0
	ldr r0, _0803A7B8
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803A7B8: .4byte 0x0203E94F

	.thumb
sub_803A7BC: @ 0x0803A7BC
	ldr r0, _0803A7C4
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803A7C4: .4byte 0x0203E950

	.thumb
sub_803A7C8: @ 0x0803A7C8
	push {lr}
	movs r1, #0
	ldr r0, _0803A7DC
	ldrb r0, [r0]
	cmp r0, #0
	bne _0803A7D6
	movs r1, #1
_0803A7D6:
	adds r0, r1, #0
	pop {r1}
	bx r1
	.align 2, 0
_0803A7DC: .4byte 0x0203E951

	.thumb
sub_803A7E0: @ 0x0803A7E0
	ldr r0, _0803A7E8
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803A7E8: .4byte 0x0203E951

	.thumb
sub_803A7EC: @ 0x0803A7EC
	ldr r0, _0803A7F4
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803A7F4: .4byte 0x0203E952

	.thumb
sub_803A7F8: @ 0x0803A7F8
	ldr r0, _0803A800
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803A800: .4byte 0x0203E953

	.thumb
sub_803A804: @ 0x0803A804
	ldr r0, _0803A80C
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803A80C: .4byte 0x0203E954

	.thumb
sub_803A810: @ 0x0803A810
	ldr r0, _0803A818
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803A818: .4byte 0x0203E947

	.thumb
sub_803A81C: @ 0x0803A81C
	ldr r0, _0803A824
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803A824: .4byte 0x0203E948

	.thumb
sub_803A828: @ 0x0803A828
	push {lr}
	movs r1, #0
	ldr r0, _0803A83C
	ldrb r0, [r0]
	cmp r0, #0
	bne _0803A836
	movs r1, #1
_0803A836:
	adds r0, r1, #0
	pop {r1}
	bx r1
	.align 2, 0
_0803A83C: .4byte 0x0203E946

	.thumb
sub_803A840: @ 0x0803A840
	push {lr}
	movs r1, #0
	ldr r0, _0803A854
	ldrb r0, [r0]
	cmp r0, #0
	bne _0803A84E
	movs r1, #1
_0803A84E:
	adds r0, r1, #0
	pop {r1}
	bx r1
	.align 2, 0
_0803A854: .4byte 0x0203E945

	.thumb
sub_803A858: @ 0x0803A858
	ldr r0, _0803A860
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803A860: .4byte 0x0203E956

	.thumb
sub_803A864: @ 0x0803A864
	push {lr}
	movs r1, #0
	ldr r0, _0803A878
	ldrb r0, [r0]
	cmp r0, #0
	bne _0803A872
	movs r1, #1
_0803A872:
	adds r0, r1, #0
	pop {r1}
	bx r1
	.align 2, 0
_0803A878: .4byte 0x0203E956

	.thumb
sub_803A87C: @ 0x0803A87C
	ldr r0, _0803A884
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803A884: .4byte 0x0203E957

	.thumb
sub_803A888: @ 0x0803A888
	push {lr}
	movs r1, #0
	ldr r0, _0803A89C
	ldrb r0, [r0]
	cmp r0, #0
	bne _0803A896
	movs r1, #1
_0803A896:
	adds r0, r1, #0
	pop {r1}
	bx r1
	.align 2, 0
_0803A89C: .4byte 0x0203E957

	.thumb
sub_803A8A0: @ 0x0803A8A0
	ldr r0, _0803A8A8
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803A8A8: .4byte 0x0203E958

	.thumb
sub_803A8AC: @ 0x0803A8AC
	push {lr}
	movs r1, #0
	ldr r0, _0803A8C0
	ldrb r0, [r0]
	cmp r0, #0
	bne _0803A8BA
	movs r1, #1
_0803A8BA:
	adds r0, r1, #0
	pop {r1}
	bx r1
	.align 2, 0
_0803A8C0: .4byte 0x0203E958

	.thumb
sub_803A8C4: @ 0x0803A8C4
	ldr r0, _0803A8CC
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803A8CC: .4byte 0x0203E959

	.thumb
sub_803A8D0: @ 0x0803A8D0
	ldr r0, _0803A8D8
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803A8D8: .4byte 0x0203E95A

	.thumb
sub_803A8DC: @ 0x0803A8DC
	push {r4, lr}
	movs r2, #0
	ldr r4, _0803A908
	ldr r0, _0803A90C
	ldrh r1, [r0]
	movs r0, #0xc4
	muls r1, r0, r1
	adds r0, r1, r4
	ldrb r3, [r0, #0xe]
	cmp r2, r3
	bge _0803A916
	adds r0, r4, #0
	adds r0, #0x60
	adds r0, r1, r0
	ldr r1, [r0]
_0803A8FA:
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #0
	bne _0803A910
	movs r0, #1
	b _0803A918
	.align 2, 0
_0803A908: .4byte 0x0203E440
_0803A90C: .4byte gLoadedRoomLevel
_0803A910:
	adds r2, #1
	cmp r2, r3
	blt _0803A8FA
_0803A916:
	movs r0, #0
_0803A918:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	.thumb
sub_803A920: @ 0x0803A920
	push {lr}
	movs r1, #0
	ldr r0, _0803A93C
	ldrb r0, [r0]
	cmp r0, #0
	bne _0803A936
	ldr r0, _0803A940
	ldrb r0, [r0]
	cmp r0, #0
	bne _0803A936
	movs r1, #1
_0803A936:
	adds r0, r1, #0
	pop {r1}
	bx r1
	.align 2, 0
_0803A93C: .4byte 0x0203E95C
_0803A940: .4byte 0x0203E97B

	.thumb
sub_803A944: @ 0x0803A944
	push {lr}
	movs r1, #0
	ldr r0, _0803A960
	ldrb r0, [r0]
	cmp r0, #1
	bne _0803A95A
	ldr r0, _0803A964
	ldrb r0, [r0]
	cmp r0, #0
	bne _0803A95A
	movs r1, #1
_0803A95A:
	adds r0, r1, #0
	pop {r1}
	bx r1
	.align 2, 0
_0803A960: .4byte byte_20020B1
_0803A964: .4byte 0x0203E95D

	.thumb
sub_803A968: @ 0x0803A968
	push {lr}
	movs r1, #0
	ldr r0, _0803A984
	ldrb r0, [r0]
	cmp r0, #2
	bne _0803A97E
	ldr r0, _0803A988
	ldrb r0, [r0]
	cmp r0, #0
	bne _0803A97E
	movs r1, #1
_0803A97E:
	adds r0, r1, #0
	pop {r1}
	bx r1
	.align 2, 0
_0803A984: .4byte byte_20020B1
_0803A988: .4byte 0x0203E95E

	.thumb
sub_803A98C: @ 0x0803A98C
	push {lr}
	movs r1, #0
	ldr r0, _0803A9A8
	ldrb r0, [r0]
	cmp r0, #4
	bne _0803A9A2
	ldr r0, _0803A9AC
	ldrb r0, [r0]
	cmp r0, #0
	bne _0803A9A2
	movs r1, #1
_0803A9A2:
	adds r0, r1, #0
	pop {r1}
	bx r1
	.align 2, 0
_0803A9A8: .4byte byte_20020B1
_0803A9AC: .4byte 0x0203E95F

	.thumb
sub_803A9B0: @ 0x0803A9B0
	push {lr}
	movs r1, #0
	ldr r0, _0803A9CC
	ldrb r0, [r0]
	cmp r0, #3
	bne _0803A9C6
	ldr r0, _0803A9D0
	ldrb r0, [r0]
	cmp r0, #0
	bne _0803A9C6
	movs r1, #1
_0803A9C6:
	adds r0, r1, #0
	pop {r1}
	bx r1
	.align 2, 0
_0803A9CC: .4byte byte_20020B1
_0803A9D0: .4byte 0x0203E960

	.thumb
sub_803A9D4: @ 0x0803A9D4
	ldr r0, _0803A9E0
	ldrb r1, [r0]
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r0, r0, #0x1f
	bx lr
	.align 2, 0
_0803A9E0: .4byte byte_20020B1

	.thumb
sub_803A9E4: @ 0x0803A9E4
	push {lr}
	movs r1, #0
	ldr r0, _0803A9F8
	ldrb r0, [r0]
	cmp r0, #0
	bne _0803A9F2
	movs r1, #1
_0803A9F2:
	adds r0, r1, #0
	pop {r1}
	bx r1
	.align 2, 0
_0803A9F8: .4byte byte_20020B1

	.thumb
sub_803A9FC: @ 0x0803A9FC
	push {lr}
	movs r1, #0
	ldr r0, _0803AA10
	ldrb r0, [r0]
	cmp r0, #1
	bne _0803AA0A
	movs r1, #1
_0803AA0A:
	adds r0, r1, #0
	pop {r1}
	bx r1
	.align 2, 0
_0803AA10: .4byte byte_20020B1

	.thumb
sub_803AA14: @ 0x0803AA14
	push {lr}
	movs r1, #0
	ldr r0, _0803AA28
	ldrb r0, [r0]
	cmp r0, #2
	bne _0803AA22
	movs r1, #1
_0803AA22:
	adds r0, r1, #0
	pop {r1}
	bx r1
	.align 2, 0
_0803AA28: .4byte byte_20020B1

	.thumb
sub_803AA2C: @ 0x0803AA2C
	push {lr}
	movs r1, #0
	ldr r0, _0803AA40
	ldrb r0, [r0]
	cmp r0, #3
	bne _0803AA3A
	movs r1, #1
_0803AA3A:
	adds r0, r1, #0
	pop {r1}
	bx r1
	.align 2, 0
_0803AA40: .4byte byte_20020B1

	.thumb
sub_803AA44: @ 0x0803AA44
	push {lr}
	movs r1, #0
	ldr r0, _0803AA58
	ldrb r0, [r0]
	cmp r0, #4
	bne _0803AA52
	movs r1, #1
_0803AA52:
	adds r0, r1, #0
	pop {r1}
	bx r1
	.align 2, 0
_0803AA58: .4byte byte_20020B1

	.thumb
sub_803AA5C: @ 0x0803AA5C
	ldr r0, _0803AA6C
	ldrb r1, [r0]
	movs r0, #1
	eors r1, r0
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r0, r0, #0x1f
	bx lr
	.align 2, 0
_0803AA6C: .4byte byte_20020B1

	.thumb
sub_803AA70: @ 0x0803AA70
	ldr r0, _0803AA80
	ldrb r1, [r0]
	movs r0, #2
	eors r1, r0
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r0, r0, #0x1f
	bx lr
	.align 2, 0
_0803AA80: .4byte byte_20020B1

	.thumb
sub_803AA84: @ 0x0803AA84
	ldr r0, _0803AA94
	ldrb r1, [r0]
	movs r0, #3
	eors r1, r0
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r0, r0, #0x1f
	bx lr
	.align 2, 0
_0803AA94: .4byte byte_20020B1

	.thumb
sub_803AA98: @ 0x0803AA98
	ldr r0, _0803AAA8
	ldrb r1, [r0]
	movs r0, #4
	eors r1, r0
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r0, r0, #0x1f
	bx lr
	.align 2, 0
_0803AAA8: .4byte byte_20020B1

	.thumb
sub_803AAAC: @ 0x0803AAAC
	ldr r0, _0803AAB4
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803AAB4: .4byte 0x0203E961

	.thumb
sub_803AAB8: @ 0x0803AAB8
	push {lr}
	movs r1, #0
	ldr r0, _0803AACC
	ldrb r0, [r0]
	cmp r0, #0
	bne _0803AAC6
	movs r1, #1
_0803AAC6:
	adds r0, r1, #0
	pop {r1}
	bx r1
	.align 2, 0
_0803AACC: .4byte 0x0203E961

	.thumb
sub_803AAD0: @ 0x0803AAD0
	ldr r0, _0803AAD8
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803AAD8: .4byte 0x0203E977

	.thumb
sub_803AADC: @ 0x0803AADC
	ldr r0, _0803AAE4
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803AAE4: .4byte 0x0203E978

	.thumb
sub_803AAE8: @ 0x0803AAE8
	ldr r0, _0803AAF0
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803AAF0: .4byte 0x0203E979

	.thumb
sub_803AAF4: @ 0x0803AAF4
	ldr r0, _0803AAFC
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803AAFC: .4byte 0x0203E97A

	.thumb
sub_803AB00: @ 0x0803AB00
	ldr r0, _0803AB0C
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	bx lr
	.align 2, 0
_0803AB0C: .4byte 0x0203E93C

	.thumb
sub_803AB10: @ 0x0803AB10
	ldr r0, _0803AB20
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bx lr
	.align 2, 0
_0803AB20: .4byte 0x0203E93C

	.thumb
sub_803AB24: @ 0x0803AB24
	ldr r0, _0803AB34
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bx lr
	.align 2, 0
_0803AB34: .4byte 0x0203E93C

	.thumb
sub_803AB38: @ 0x0803AB38
	ldr r0, _0803AB48
	ldrb r1, [r0]
	movs r0, #8
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bx lr
	.align 2, 0
_0803AB48: .4byte 0x0203E93C

	.thumb
sub_803AB4C: @ 0x0803AB4C
	ldr r0, _0803AB5C
	ldrb r1, [r0]
	movs r0, #0x10
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bx lr
	.align 2, 0
_0803AB5C: .4byte 0x0203E93C

	.thumb
sub_803AB60: @ 0x0803AB60
	ldr r0, _0803AB70
	ldrb r1, [r0]
	movs r0, #0x20
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bx lr
	.align 2, 0
_0803AB70: .4byte 0x0203E93C

	.thumb
sub_803AB74: @ 0x0803AB74
	ldr r0, _0803AB80
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	bx lr
	.align 2, 0
_0803AB80: .4byte 0x0203E93B

	.thumb
sub_803AB84: @ 0x0803AB84
	ldr r0, _0803AB94
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bx lr
	.align 2, 0
_0803AB94: .4byte 0x0203E93B

	.thumb
sub_803AB98: @ 0x0803AB98
	ldr r0, _0803ABA8
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bx lr
	.align 2, 0
_0803ABA8: .4byte 0x0203E93B

	.thumb
sub_803ABAC: @ 0x0803ABAC
	ldr r0, _0803ABBC
	ldrb r1, [r0]
	movs r0, #8
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bx lr
	.align 2, 0
_0803ABBC: .4byte 0x0203E93B

	.thumb
sub_803ABC0: @ 0x0803ABC0
	ldr r0, _0803ABD0
	ldrb r1, [r0]
	movs r0, #0x10
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bx lr
	.align 2, 0
_0803ABD0: .4byte 0x0203E93B

	.thumb
sub_803ABD4: @ 0x0803ABD4
	ldr r0, _0803ABE4
	ldrb r1, [r0]
	movs r0, #0x20
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bx lr
	.align 2, 0
_0803ABE4: .4byte 0x0203E93B

	.thumb
sub_803ABE8: @ 0x0803ABE8
	push {r4, lr}
	movs r2, #0
	ldr r4, _0803AC14
	ldr r0, _0803AC18
	ldrh r1, [r0]
	movs r0, #0xc4
	muls r1, r0, r1
	adds r0, r1, r4
	adds r0, #0x21
	ldrb r3, [r0]
	cmp r2, r3
	bge _0803AC22
	adds r0, r4, #0
	adds r0, #0x78
	adds r0, r1, r0
	ldr r1, [r0]
_0803AC08:
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #0
	bne _0803AC1C
	movs r0, #1
	b _0803AC24
	.align 2, 0
_0803AC14: .4byte 0x0203E440
_0803AC18: .4byte gLoadedRoomLevel
_0803AC1C:
	adds r2, #1
	cmp r2, r3
	blt _0803AC08
_0803AC22:
	movs r0, #0
_0803AC24:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	.thumb
sub_803AC2C: @ 0x0803AC2C
	push {r4, lr}
	movs r2, #0
	ldr r4, _0803AC58
	ldr r0, _0803AC5C
	ldrh r1, [r0]
	movs r0, #0xc4
	muls r1, r0, r1
	adds r0, r1, r4
	adds r0, #0x21
	ldrb r3, [r0]
	cmp r2, r3
	bge _0803AC66
	adds r0, r4, #0
	adds r0, #0x78
	adds r0, r1, r0
	ldr r1, [r0]
_0803AC4C:
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #0
	bne _0803AC60
	movs r0, #0
	b _0803AC68
	.align 2, 0
_0803AC58: .4byte 0x0203E440
_0803AC5C: .4byte gLoadedRoomLevel
_0803AC60:
	adds r2, #1
	cmp r2, r3
	blt _0803AC4C
_0803AC66:
	movs r0, #1
_0803AC68:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	.thumb
sub_803AC70: @ 0x0803AC70
	ldr r0, _0803AC78
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803AC78: .4byte 0x0203F8BD

	.thumb
sub_803AC7C: @ 0x0803AC7C
	push {lr}
	movs r1, #0
	ldr r0, _0803AC90
	ldrb r0, [r0]
	cmp r0, #0
	bne _0803AC8A
	movs r1, #1
_0803AC8A:
	adds r0, r1, #0
	pop {r1}
	bx r1
	.align 2, 0
_0803AC90: .4byte 0x0203F8BD

	.thumb
sub_803AC94: @ 0x0803AC94
	ldr r0, _0803AC9C
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803AC9C: .4byte 0x0203E967

	.thumb
sub_803ACA0: @ 0x0803ACA0
	ldr r0, _0803ACA8
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803ACA8: .4byte 0x0203E964

	.thumb
sub_803ACAC: @ 0x0803ACAC
	ldr r0, _0803ACB4
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803ACB4: .4byte 0x0203E965

	.thumb
sub_803ACB8: @ 0x0803ACB8
	ldr r0, _0803ACC0
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803ACC0: .4byte 0x0203E966

	.thumb
sub_803ACC4: @ 0x0803ACC4
	movs r0, #1
	bx lr

	.thumb
sub_803ACC8: @ 0x0803ACC8
	push {lr}
	movs r1, #0
	ldr r0, _0803ACDC
	ldr r0, [r0]
	cmp r0, #0
	bne _0803ACD6
	movs r1, #1
_0803ACD6:
	adds r0, r1, #0
	pop {r1}
	bx r1
	.align 2, 0
_0803ACDC: .4byte 0x0203E980

	.thumb
sub_803ACE0: @ 0x0803ACE0
	push {r4, lr}
	movs r2, #0
	ldr r4, _0803AD10
	ldr r0, _0803AD14
	ldrh r1, [r0]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r1, r0, #3
	adds r0, r1, r4
	ldrb r3, [r0, #0xe]
	cmp r2, r3
	bge _0803AD1E
	adds r0, r4, #0
	adds r0, #0x54
	adds r0, r1, r0
	ldr r4, [r0]
	adds r1, r3, #0
_0803AD02:
	adds r0, r4, r2
	ldrb r0, [r0]
	cmp r0, #0
	bne _0803AD18
	movs r0, #0
	b _0803AD20
	.align 2, 0
_0803AD10: .4byte 0x0203E170
_0803AD14: .4byte gLoadedRoomLevel
_0803AD18:
	adds r2, #1
	cmp r2, r1
	blt _0803AD02
_0803AD1E:
	movs r0, #1
_0803AD20:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	.thumb
sub_803AD28: @ 0x0803AD28
	push {r4, lr}
	movs r2, #0
	ldr r4, _0803AD54
	ldr r0, _0803AD58
	ldrh r1, [r0]
	movs r0, #0xc4
	muls r1, r0, r1
	adds r0, r1, r4
	ldrb r3, [r0, #0xe]
	cmp r2, r3
	bge _0803AD62
	adds r0, r4, #0
	adds r0, #0x60
	adds r0, r1, r0
	ldr r1, [r0]
_0803AD46:
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #0
	bne _0803AD5C
	movs r0, #0
	b _0803AD64
	.align 2, 0
_0803AD54: .4byte 0x0203E440
_0803AD58: .4byte gLoadedRoomLevel
_0803AD5C:
	adds r2, #1
	cmp r2, r3
	blt _0803AD46
_0803AD62:
	movs r0, #1
_0803AD64:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	.thumb
sub_803AD6C: @ 0x0803AD6C
	ldr r0, _0803AD74
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803AD74: .4byte 0x0203E970

	.thumb
sub_803AD78: @ 0x0803AD78
	ldr r0, _0803AD80
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803AD80: .4byte 0x0203E96F

	.thumb
sub_803AD84: @ 0x0803AD84
	ldr r0, _0803AD8C
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803AD8C: .4byte 0x0203E96E

	.thumb
sub_803AD90: @ 0x0803AD90
	push {r4, lr}
	movs r2, #0
	ldr r4, _0803ADC0
	ldr r0, _0803ADC4
	ldrh r1, [r0]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r1, r0, #3
	adds r0, r1, r4
	ldrb r3, [r0, #0x10]
	cmp r2, r3
	bge _0803ADCE
	adds r0, r4, #0
	adds r0, #0x5c
	adds r0, r1, r0
	ldr r4, [r0]
	adds r1, r3, #0
_0803ADB2:
	adds r0, r4, r2
	ldrb r0, [r0]
	cmp r0, #0
	bne _0803ADC8
	movs r0, #0
	b _0803ADD0
	.align 2, 0
_0803ADC0: .4byte 0x0203E170
_0803ADC4: .4byte gLoadedRoomLevel
_0803ADC8:
	adds r2, #1
	cmp r2, r1
	blt _0803ADB2
_0803ADCE:
	movs r0, #1
_0803ADD0:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	.thumb
sub_803ADD8: @ 0x0803ADD8
	ldr r0, _0803ADE0
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803ADE0: .4byte 0x0203E94E

	.thumb
sub_803ADE4: @ 0x0803ADE4
	ldr r0, _0803ADEC
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803ADEC: .4byte 0x0203E97C

	.thumb
sub_803ADF0: @ 0x0803ADF0
	ldr r0, _0803ADF8
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803ADF8: .4byte 0x0203E962

	.thumb
sub_803ADFC: @ 0x0803ADFC
	ldr r0, _0803AE04
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803AE04: .4byte 0x0203E963

	.thumb
sub_803AE08: @ 0x0803AE08
	ldr r2, _0803AE20
	ldr r0, _0803AE24
	ldrh r3, [r0]
	movs r0, #0xc4
	muls r0, r3, r0
	adds r2, #0x74
	adds r0, r0, r2
	ldr r0, [r0]
	adds r0, r0, r1
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803AE20: .4byte 0x0203E440
_0803AE24: .4byte gLoadedRoomLevel

	.thumb
sub_803AE28: @ 0x0803AE28
	ldr r2, _0803AE40
	ldr r0, _0803AE44
	ldrh r3, [r0]
	movs r0, #0xc4
	muls r0, r3, r0
	adds r2, #0x78
	adds r0, r0, r2
	ldr r0, [r0]
	adds r0, r0, r1
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803AE40: .4byte 0x0203E440
_0803AE44: .4byte gLoadedRoomLevel

	.thumb
sub_803AE48: @ 0x0803AE48
	push {lr}
	ldr r1, _0803AE5C
	ldrh r1, [r1]
	cmp r1, #5
	bhi _0803AEC8
	lsls r0, r1, #2
	ldr r1, _0803AE60
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0803AE5C: .4byte gLoadedRoomLevel
_0803AE60: .4byte 0x0803AE64
_0803AE64: @ jump table
	.4byte _0803AEB8 @ case 0
	.4byte _0803AE7C @ case 1
	.4byte _0803AE88 @ case 2
	.4byte _0803AE94 @ case 3
	.4byte _0803AEA0 @ case 4
	.4byte _0803AEAC @ case 5
_0803AE7C:
	ldr r0, _0803AE84
	ldrb r1, [r0]
	b _0803AEBE
	.align 2, 0
_0803AE84: .4byte 0x0203E93C
_0803AE88:
	ldr r0, _0803AE90
	ldrb r1, [r0]
	lsrs r1, r1, #1
	b _0803AEBE
	.align 2, 0
_0803AE90: .4byte 0x0203E93C
_0803AE94:
	ldr r0, _0803AE9C
	ldrb r1, [r0]
	lsrs r1, r1, #2
	b _0803AEBE
	.align 2, 0
_0803AE9C: .4byte 0x0203E93C
_0803AEA0:
	ldr r0, _0803AEA8
	ldrb r1, [r0]
	lsrs r1, r1, #3
	b _0803AEBE
	.align 2, 0
_0803AEA8: .4byte 0x0203E93C
_0803AEAC:
	ldr r0, _0803AEB4
	ldrb r1, [r0]
	lsrs r1, r1, #4
	b _0803AEBE
	.align 2, 0
_0803AEB4: .4byte 0x0203E93C
_0803AEB8:
	ldr r0, _0803AEC4
	ldrb r1, [r0]
	lsrs r1, r1, #5
_0803AEBE:
	movs r0, #1
	bics r0, r1
	b _0803AECC
	.align 2, 0
_0803AEC4: .4byte 0x0203E93C
_0803AEC8:
	.2byte 0xEE00, 0xEE00
_0803AECC:
	pop {r1}
	bx r1

	.thumb
sub_803AED0: @ 0x0803AED0
	ldr r2, _0803AEE4
	ldr r0, _0803AEE8
	ldrh r1, [r0]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r2
	adds r0, #0x75
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803AEE4: .4byte 0x0203E170
_0803AEE8: .4byte gLoadedRoomLevel

	.thumb
sub_803AEEC: @ 0x0803AEEC
	ldr r2, _0803AF04
	ldr r0, _0803AF08
	ldrh r3, [r0]
	movs r0, #0xc4
	muls r0, r3, r0
	adds r2, #0x7c
	adds r0, r0, r2
	ldr r0, [r0]
	adds r0, r0, r1
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803AF04: .4byte 0x0203E440
_0803AF08: .4byte gLoadedRoomLevel

	.thumb
sub_803AF0C: @ 0x0803AF0C
	ldr r2, _0803AF24
	ldr r0, _0803AF28
	ldrh r3, [r0]
	movs r0, #0xc4
	muls r0, r3, r0
	adds r2, #0x80
	adds r0, r0, r2
	ldr r0, [r0]
	adds r0, r0, r1
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803AF24: .4byte 0x0203E440
_0803AF28: .4byte gLoadedRoomLevel

	.thumb
sub_803AF2C: @ 0x0803AF2C
	ldr r2, _0803AF44
	ldr r0, _0803AF48
	ldrh r3, [r0]
	movs r0, #0xc4
	muls r0, r3, r0
	adds r2, #0x84
	adds r0, r0, r2
	ldr r0, [r0]
	adds r0, r0, r1
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803AF44: .4byte 0x0203E440
_0803AF48: .4byte gLoadedRoomLevel

	.thumb
sub_803AF4C: @ 0x0803AF4C
	ldr r2, _0803AF64
	ldr r0, _0803AF68
	ldrh r3, [r0]
	movs r0, #0xc4
	muls r0, r3, r0
	adds r2, #0x88
	adds r0, r0, r2
	ldr r0, [r0]
	adds r0, r0, r1
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803AF64: .4byte 0x0203E440
_0803AF68: .4byte gLoadedRoomLevel

	.thumb
sub_803AF6C: @ 0x0803AF6C
	ldr r0, _0803AF74
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803AF74: .4byte 0x0203E95D

	.thumb
sub_803AF78: @ 0x0803AF78
	ldr r0, _0803AF80
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803AF80: .4byte 0x0203E95E

	.thumb
sub_803AF84: @ 0x0803AF84
	ldr r0, _0803AF8C
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803AF8C: .4byte 0x0203E95F

	.thumb
sub_803AF90: @ 0x0803AF90
	ldr r0, _0803AF98
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803AF98: .4byte 0x0203E960

	.thumb
sub_803AF9C: @ 0x0803AF9C
	ldr r2, _0803AFB4
	ldr r0, _0803AFB8
	ldrh r3, [r0]
	movs r0, #0xc4
	muls r0, r3, r0
	adds r2, #0x8c
	adds r0, r0, r2
	ldr r0, [r0]
	adds r0, r0, r1
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803AFB4: .4byte 0x0203E440
_0803AFB8: .4byte gLoadedRoomLevel

	.thumb
sub_803AFBC: @ 0x0803AFBC
	ldr r0, _0803AFC4
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803AFC4: .4byte 0x0203E97B

	.thumb
sub_803AFC8: @ 0x0803AFC8
	ldr r0, _0803AFD0
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803AFD0: .4byte 0x0203E95C

	.thumb
sub_803AFD4: @ 0x0803AFD4
	ldr r0, _0803AFDC
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803AFDC: .4byte 0x0203E951

	.thumb
sub_803AFE0: @ 0x0803AFE0
	ldr r0, _0803AFE8
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803AFE8: .4byte 0x0203E959

	.thumb
sub_803AFEC: @ 0x0803AFEC
	ldr r0, _0803AFF4
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803AFF4: .4byte 0x0203E958

	.thumb
sub_803AFF8: @ 0x0803AFF8
	ldr r0, _0803B000
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803B000: .4byte 0x0203E957

	.thumb
sub_803B004: @ 0x0803B004
	ldr r0, _0803B00C
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803B00C: .4byte 0x0203E956

	.thumb
sub_803B010: @ 0x0803B010
	ldr r0, _0803B018
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803B018: .4byte 0x0203E954

	.thumb
sub_803B01C: @ 0x0803B01C
	ldr r0, _0803B024
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803B024: .4byte 0x0203E952

	.thumb
sub_803B028: @ 0x0803B028
	ldr r0, _0803B030
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803B030: .4byte 0x0203E951

	.thumb
sub_803B034: @ 0x0803B034
	ldr r2, _0803B04C
	ldr r0, _0803B050
	ldrh r3, [r0]
	movs r0, #0xc4
	muls r0, r3, r0
	adds r2, #0x68
	adds r0, r0, r2
	ldr r0, [r0]
	adds r0, r0, r1
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803B04C: .4byte 0x0203E440
_0803B050: .4byte gLoadedRoomLevel

	.thumb
sub_803B054: @ 0x0803B054
	ldr r0, _0803B05C
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803B05C: .4byte 0x0203E94D

	.thumb
sub_803B060: @ 0x0803B060
	ldr r0, _0803B068
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803B068: .4byte 0x0203E955

	.thumb
sub_803B06C: @ 0x0803B06C
	ldr r0, _0803B074
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803B074: .4byte 0x0203E94C

	.thumb
sub_803B078: @ 0x0803B078
	push {r4, lr}
	movs r2, #0
	ldr r4, _0803B0A8
	ldr r0, _0803B0AC
	ldrh r1, [r0]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r1, r0, #3
	adds r0, r1, r4
	ldrb r3, [r0, #0x11]
	cmp r2, r3
	bge _0803B0B6
	adds r0, r4, #0
	adds r0, #0x60
	adds r0, r1, r0
	ldr r4, [r0]
	adds r1, r3, #0
_0803B09A:
	adds r0, r4, r2
	ldrb r0, [r0]
	cmp r0, #0
	bne _0803B0B0
	movs r0, #0
	b _0803B0B8
	.align 2, 0
_0803B0A8: .4byte 0x0203E170
_0803B0AC: .4byte gLoadedRoomLevel
_0803B0B0:
	adds r2, #1
	cmp r2, r1
	blt _0803B09A
_0803B0B6:
	movs r0, #1
_0803B0B8:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	.thumb
sub_803B0C0: @ 0x0803B0C0
	ldr r3, _0803B0D8
	ldr r0, _0803B0DC
	ldrh r2, [r0]
	lsls r0, r2, #4
	subs r0, r0, r2
	lsls r0, r0, #3
	adds r3, #0x60
	adds r0, r0, r3
	ldr r0, [r0]
	adds r0, r0, r1
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803B0D8: .4byte 0x0203E170
_0803B0DC: .4byte gLoadedRoomLevel

	.thumb
sub_803B0E0: @ 0x0803B0E0
	ldr r2, _0803B0F8
	ldr r0, _0803B0FC
	ldrh r3, [r0]
	movs r0, #0xc4
	muls r0, r3, r0
	adds r2, #0x64
	adds r0, r0, r2
	ldr r0, [r0]
	adds r0, r0, r1
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803B0F8: .4byte 0x0203E440
_0803B0FC: .4byte gLoadedRoomLevel

	.thumb
sub_803B100: @ 0x0803B100
	ldr r2, _0803B118
	ldr r0, _0803B11C
	ldrh r3, [r0]
	movs r0, #0xc4
	muls r0, r3, r0
	adds r2, #0x6c
	adds r0, r0, r2
	ldr r0, [r0]
	adds r0, r0, r1
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803B118: .4byte 0x0203E440
_0803B11C: .4byte gLoadedRoomLevel

	.thumb
sub_803B120: @ 0x0803B120
	ldr r0, _0803B128
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803B128: .4byte 0x0203E94B

	.thumb
sub_803B12C: @ 0x0803B12C
	ldr r2, _0803B140
	ldr r0, _0803B144
	ldrh r0, [r0]
	lsls r0, r0, #4
	adds r2, #8
	adds r0, r0, r2
	ldr r0, [r0]
	adds r0, r0, r1
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803B140: .4byte 0x0203E8D8
_0803B144: .4byte gLoadedRoomLevel

	.thumb
sub_803B148: @ 0x0803B148
	ldr r2, _0803B15C
	ldr r0, _0803B160
	ldrh r0, [r0]
	lsls r0, r0, #4
	adds r2, #0xc
	adds r0, r0, r2
	ldr r0, [r0]
	adds r0, r0, r1
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803B15C: .4byte 0x0203E8D8
_0803B160: .4byte gLoadedRoomLevel

	.thumb
sub_803B164: @ 0x0803B164
	ldr r2, _0803B17C
	ldr r0, _0803B180
	ldrh r3, [r0]
	movs r0, #0xc4
	muls r0, r3, r0
	adds r2, #0x60
	adds r0, r0, r2
	ldr r0, [r0]
	adds r0, r0, r1
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803B17C: .4byte 0x0203E440
_0803B180: .4byte gLoadedRoomLevel

	.thumb
sub_803B184: @ 0x0803B184
	ldr r2, _0803B19C
	ldr r0, _0803B1A0
	ldrh r3, [r0]
	movs r0, #0xc4
	muls r0, r3, r0
	adds r2, #0x5c
	adds r0, r0, r2
	ldr r0, [r0]
	adds r0, r0, r1
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803B19C: .4byte 0x0203E440
_0803B1A0: .4byte gLoadedRoomLevel

	.thumb
sub_803B1A4: @ 0x0803B1A4
	ldr r2, _0803B1BC
	ldr r0, _0803B1C0
	ldrh r3, [r0]
	movs r0, #0xc4
	muls r0, r3, r0
	adds r2, #0x70
	adds r0, r0, r2
	ldr r0, [r0]
	adds r0, r0, r1
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803B1BC: .4byte 0x0203E440
_0803B1C0: .4byte gLoadedRoomLevel

	.thumb
sub_803B1C4: @ 0x0803B1C4
	ldr r2, _0803B1DC
	ldr r0, _0803B1E0
	ldrh r3, [r0]
	movs r0, #0xc4
	muls r0, r3, r0
	adds r2, #0x44
	adds r0, r0, r2
	ldr r0, [r0]
	adds r0, r0, r1
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803B1DC: .4byte 0x0203E440
_0803B1E0: .4byte gLoadedRoomLevel

	.thumb
sub_803B1E4: @ 0x0803B1E4
	ldr r2, _0803B1FC
	ldr r0, _0803B200
	ldrh r3, [r0]
	movs r0, #0xc4
	muls r0, r3, r0
	adds r2, #0x48
	adds r0, r0, r2
	ldr r0, [r0]
	adds r0, r0, r1
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803B1FC: .4byte 0x0203E440
_0803B200: .4byte gLoadedRoomLevel

	.thumb
sub_803B204: @ 0x0803B204
	ldr r2, _0803B21C
	ldr r0, _0803B220
	ldrh r3, [r0]
	movs r0, #0xc4
	muls r0, r3, r0
	adds r2, #0x4c
	adds r0, r0, r2
	ldr r0, [r0]
	adds r0, r0, r1
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803B21C: .4byte 0x0203E440
_0803B220: .4byte gLoadedRoomLevel

	.thumb
sub_803B224: @ 0x0803B224
	ldr r2, _0803B23C
	ldr r0, _0803B240
	ldrh r3, [r0]
	movs r0, #0xc4
	muls r0, r3, r0
	adds r2, #0x50
	adds r0, r0, r2
	ldr r0, [r0]
	adds r0, r0, r1
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803B23C: .4byte 0x0203E440
_0803B240: .4byte gLoadedRoomLevel

	.thumb
sub_803B244: @ 0x0803B244
	ldr r2, _0803B25C
	ldr r0, _0803B260
	ldrh r3, [r0]
	movs r0, #0xc4
	muls r0, r3, r0
	adds r2, #0x54
	adds r0, r0, r2
	ldr r0, [r0]
	adds r0, r0, r1
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803B25C: .4byte 0x0203E440
_0803B260: .4byte gLoadedRoomLevel

	.thumb
sub_803B264: @ 0x0803B264
	ldr r2, _0803B27C
	ldr r0, _0803B280
	ldrh r3, [r0]
	movs r0, #0xc4
	muls r0, r3, r0
	adds r2, #0x58
	adds r0, r0, r2
	ldr r0, [r0]
	adds r0, r0, r1
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803B27C: .4byte 0x0203E440
_0803B280: .4byte gLoadedRoomLevel

	.thumb
sub_803B284: @ 0x0803B284
	ldr r3, _0803B29C
	ldr r0, _0803B2A0
	ldrh r2, [r0]
	lsls r0, r2, #4
	subs r0, r0, r2
	lsls r0, r0, #3
	adds r3, #0x5c
	adds r0, r0, r3
	ldr r0, [r0]
	adds r0, r0, r1
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803B29C: .4byte 0x0203E170
_0803B2A0: .4byte gLoadedRoomLevel

	.thumb
sub_803B2A4: @ 0x0803B2A4
	ldr r0, _0803B2AC
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803B2AC: .4byte 0x0203E949

	.thumb
sub_803B2B0: @ 0x0803B2B0
	ldr r0, _0803B2B8
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803B2B8: .4byte 0x0203E94A

	.thumb
sub_803B2BC: @ 0x0803B2BC
	push {r4, lr}
	movs r2, #0
	ldr r4, _0803B2EC
	ldr r0, _0803B2F0
	ldrh r1, [r0]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r1, r0, #3
	adds r0, r1, r4
	ldrb r3, [r0, #0xf]
	cmp r2, r3
	bge _0803B2FA
	adds r0, r4, #0
	adds r0, #0x58
	adds r0, r1, r0
	ldr r4, [r0]
	adds r1, r3, #0
_0803B2DE:
	adds r0, r4, r2
	ldrb r0, [r0]
	cmp r0, #0
	bne _0803B2F4
	movs r0, #0
	b _0803B2FC
	.align 2, 0
_0803B2EC: .4byte 0x0203E170
_0803B2F0: .4byte gLoadedRoomLevel
_0803B2F4:
	adds r2, #1
	cmp r2, r1
	blt _0803B2DE
_0803B2FA:
	movs r0, #1
_0803B2FC:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	.thumb
sub_803B304: @ 0x0803B304
	ldr r3, _0803B31C
	ldr r0, _0803B320
	ldrh r2, [r0]
	lsls r0, r2, #4
	subs r0, r0, r2
	lsls r0, r0, #3
	adds r3, #0x58
	adds r0, r0, r3
	ldr r0, [r0]
	adds r0, r0, r1
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803B31C: .4byte 0x0203E170
_0803B320: .4byte gLoadedRoomLevel

	.thumb
sub_803B324: @ 0x0803B324
	ldr r0, _0803B32C
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803B32C: .4byte 0x0203E942

	.thumb
sub_803B330: @ 0x0803B330
	ldr r0, _0803B338
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803B338: .4byte 0x0203E943

	.thumb
sub_803B33C: @ 0x0803B33C
	ldr r0, _0803B344
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803B344: .4byte 0x0203E944

	.thumb
sub_803B348: @ 0x0803B348
	ldr r0, _0803B350
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803B350: .4byte 0x0203E945

	.thumb
sub_803B354: @ 0x0803B354
	ldr r0, _0803B35C
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803B35C: .4byte 0x0203E946

	.thumb
sub_803B360: @ 0x0803B360
	ldr r0, _0803B368
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803B368: .4byte 0x0203E947

	.thumb
sub_803B36C: @ 0x0803B36C
	ldr r0, _0803B374
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803B374: .4byte 0x0203E941

	.thumb
sub_803B378: @ 0x0803B378
	ldr r2, _0803B390
	ldr r0, _0803B394
	ldrh r3, [r0]
	movs r0, #0xc4
	muls r0, r3, r0
	adds r2, #0x3c
	adds r0, r0, r2
	ldr r0, [r0]
	adds r0, r0, r1
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803B390: .4byte 0x0203E440
_0803B394: .4byte gLoadedRoomLevel

	.thumb
sub_803B398: @ 0x0803B398
	ldr r0, _0803B3A0
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803B3A0: .4byte byte_20020B2

	.thumb
sub_803B3A4: @ 0x0803B3A4
	push {lr}
	movs r1, #0
	ldr r0, _0803B3B8
	ldrb r0, [r0]
	cmp r0, #1
	bne _0803B3B2
	movs r1, #1
_0803B3B2:
	adds r0, r1, #0
	pop {r1}
	bx r1
	.align 2, 0
_0803B3B8: .4byte byte_20020B1

	.thumb
sub_803B3BC: @ 0x0803B3BC
	push {lr}
	movs r1, #0
	ldr r0, _0803B3D0
	ldrb r0, [r0]
	cmp r0, #2
	bne _0803B3CA
	movs r1, #1
_0803B3CA:
	adds r0, r1, #0
	pop {r1}
	bx r1
	.align 2, 0
_0803B3D0: .4byte byte_20020B1

	.thumb
sub_803B3D4: @ 0x0803B3D4
	push {lr}
	movs r1, #0
	ldr r0, _0803B3E8
	ldrb r0, [r0]
	cmp r0, #3
	bne _0803B3E2
	movs r1, #1
_0803B3E2:
	adds r0, r1, #0
	pop {r1}
	bx r1
	.align 2, 0
_0803B3E8: .4byte byte_20020B1

	.thumb
sub_803B3EC: @ 0x0803B3EC
	push {lr}
	movs r1, #0
	ldr r0, _0803B400
	ldrb r0, [r0]
	cmp r0, #4
	bne _0803B3FA
	movs r1, #1
_0803B3FA:
	adds r0, r1, #0
	pop {r1}
	bx r1
	.align 2, 0
_0803B400: .4byte byte_20020B1

	.thumb
sub_803B404: @ 0x0803B404
	push {lr}
	movs r1, #0
	ldr r0, _0803B418
	ldrb r0, [r0]
	cmp r0, #0
	bne _0803B412
	movs r1, #1
_0803B412:
	adds r0, r1, #0
	pop {r1}
	bx r1
	.align 2, 0
_0803B418: .4byte byte_20020B1

	.thumb
sub_803B41C: @ 0x0803B41C
	ldr r2, _0803B434
	ldr r0, _0803B438
	ldrh r3, [r0]
	movs r0, #0xc4
	muls r0, r3, r0
	adds r2, #0x38
	adds r0, r0, r2
	ldr r0, [r0]
	adds r0, r0, r1
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803B434: .4byte 0x0203E440
_0803B438: .4byte gLoadedRoomLevel

	.thumb
sub_803B43C: @ 0x0803B43C
	ldr r0, _0803B444
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803B444: .4byte 0x0203E93E

	.thumb
sub_803B448: @ 0x0803B448
	ldr r0, _0803B450
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803B450: .4byte 0x0203E93F

	.thumb
sub_803B454: @ 0x0803B454
	push {r4, lr}
	movs r2, #0
	ldr r4, _0803B484
	ldr r0, _0803B488
	ldrh r1, [r0]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r1, r0, #3
	adds r0, r1, r4
	ldrb r3, [r0, #9]
	cmp r2, r3
	bge _0803B492
	adds r0, r4, #0
	adds r0, #0x40
	adds r0, r1, r0
	ldr r4, [r0]
	adds r1, r3, #0
_0803B476:
	adds r0, r4, r2
	ldrb r0, [r0]
	cmp r0, #0
	bne _0803B48C
	movs r0, #0
	b _0803B494
	.align 2, 0
_0803B484: .4byte 0x0203E170
_0803B488: .4byte gLoadedRoomLevel
_0803B48C:
	adds r2, #1
	cmp r2, r1
	blt _0803B476
_0803B492:
	movs r0, #1
_0803B494:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	.thumb
sub_803B49C: @ 0x0803B49C
	ldr r0, _0803B4A4
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803B4A4: .4byte 0x0203E93D

	.thumb
sub_803B4A8: @ 0x0803B4A8
	push {r4, r5, r6, r7, lr}
	movs r7, #0
	movs r6, #0
	ldr r4, _0803B4E0
	movs r5, #0
	movs r0, #0xa
	adds r0, r0, r4
	mov ip, r0
_0803B4B8:
	mov r1, ip
	ldrb r0, [r1]
	cmp r0, #0
	beq _0803B4C2
	movs r7, #1
_0803B4C2:
	movs r1, #0
	mov r2, ip
	ldrb r2, [r2]
	cmp r1, r2
	bge _0803B4EE
	ldr r0, _0803B4E4
	adds r0, r5, r0
	ldr r3, [r0]
	ldrb r2, [r4, #0xa]
_0803B4D4:
	adds r0, r3, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _0803B4E8
	movs r0, #0
	b _0803B4FE
	.align 2, 0
_0803B4E0: .4byte 0x0203E170
_0803B4E4: .4byte 0x0203E1B4
_0803B4E8:
	adds r1, #1
	cmp r1, r2
	blt _0803B4D4
_0803B4EE:
	adds r4, #0x78
	adds r5, #0x78
	movs r0, #0x78
	add ip, r0
	adds r6, #1
	cmp r6, #5
	ble _0803B4B8
	adds r0, r7, #0
_0803B4FE:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	.thumb
sub_803B504: @ 0x0803B504
	push {r4, r5, r6, r7, lr}
	movs r7, #0
	movs r6, #0
	ldr r4, _0803B53C
	movs r5, #0
	movs r0, #0xb
	adds r0, r0, r4
	mov ip, r0
_0803B514:
	mov r1, ip
	ldrb r0, [r1]
	cmp r0, #0
	beq _0803B51E
	movs r7, #1
_0803B51E:
	movs r1, #0
	mov r2, ip
	ldrb r2, [r2]
	cmp r1, r2
	bge _0803B54A
	ldr r0, _0803B540
	adds r0, r5, r0
	ldr r3, [r0]
	ldrb r2, [r4, #0xb]
_0803B530:
	adds r0, r3, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _0803B544
	movs r0, #0
	b _0803B55A
	.align 2, 0
_0803B53C: .4byte 0x0203E170
_0803B540: .4byte 0x0203E1B8
_0803B544:
	adds r1, #1
	cmp r1, r2
	blt _0803B530
_0803B54A:
	adds r4, #0x78
	adds r5, #0x78
	movs r0, #0x78
	add ip, r0
	adds r6, #1
	cmp r6, #5
	ble _0803B514
	adds r0, r7, #0
_0803B55A:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	.thumb
sub_803B560: @ 0x0803B560
	push {r4, r5, r6, r7, lr}
	movs r0, #0
	mov ip, r0
	movs r7, #0
	ldr r5, _0803B598
	movs r6, #0
	adds r4, r5, #0
	adds r4, #0xc
_0803B570:
	ldrb r0, [r4]
	cmp r0, #0
	beq _0803B57A
	movs r0, #1
	mov ip, r0
_0803B57A:
	movs r1, #0
	ldrb r0, [r4]
	cmp r1, r0
	bge _0803B5A6
	ldr r0, _0803B59C
	adds r0, r6, r0
	ldr r3, [r0]
	ldrb r2, [r5, #0xc]
_0803B58A:
	adds r0, r3, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _0803B5A0
	movs r0, #0
	b _0803B5B4
	.align 2, 0
_0803B598: .4byte 0x0203E170
_0803B59C: .4byte 0x0203E1BC
_0803B5A0:
	adds r1, #1
	cmp r1, r2
	blt _0803B58A
_0803B5A6:
	adds r5, #0x78
	adds r6, #0x78
	adds r4, #0x78
	adds r7, #1
	cmp r7, #5
	ble _0803B570
	mov r0, ip
_0803B5B4:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	.thumb
sub_803B5BC: @ 0x0803B5BC
	push {r4, r5, r6, r7, lr}
	movs r7, #0
	movs r6, #0
	ldr r4, _0803B5F4
	movs r5, #0
	movs r0, #0xd
	adds r0, r0, r4
	mov ip, r0
_0803B5CC:
	mov r1, ip
	ldrb r0, [r1]
	cmp r0, #0
	beq _0803B5D6
	movs r7, #1
_0803B5D6:
	movs r1, #0
	mov r2, ip
	ldrb r2, [r2]
	cmp r1, r2
	bge _0803B602
	ldr r0, _0803B5F8
	adds r0, r5, r0
	ldr r3, [r0]
	ldrb r2, [r4, #0xd]
_0803B5E8:
	adds r0, r3, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _0803B5FC
	movs r0, #0
	b _0803B612
	.align 2, 0
_0803B5F4: .4byte 0x0203E170
_0803B5F8: .4byte 0x0203E1C0
_0803B5FC:
	adds r1, #1
	cmp r1, r2
	blt _0803B5E8
_0803B602:
	adds r4, #0x78
	adds r5, #0x78
	movs r0, #0x78
	add ip, r0
	adds r6, #1
	cmp r6, #5
	ble _0803B5CC
	adds r0, r7, #0
_0803B612:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	.thumb
sub_803B618: @ 0x0803B618
	push {lr}
	subs r1, #9
	cmp r1, #9
	bhi _0803B6C4
	lsls r1, r1, #2
	ldr r2, _0803B62C
	adds r1, r1, r2
	ldr r1, [r1]
	mov pc, r1
	.align 2, 0
_0803B62C: .4byte 0x0803B630
_0803B630: @ jump table
	.4byte _0803B658 @ case 0
	.4byte _0803B664 @ case 1
	.4byte _0803B670 @ case 2
	.4byte _0803B6C4 @ case 3
	.4byte _0803B67C @ case 4
	.4byte _0803B688 @ case 5
	.4byte _0803B694 @ case 6
	.4byte _0803B6B8 @ case 7
	.4byte _0803B6A0 @ case 8
	.4byte _0803B6AC @ case 9
_0803B658:
	ldr r0, _0803B660
	ldrb r0, [r0]
	b _0803B6C8
	.align 2, 0
_0803B660: .4byte 0x0203E938
_0803B664:
	ldr r0, _0803B66C
	ldrb r0, [r0]
	b _0803B6C8
	.align 2, 0
_0803B66C: .4byte 0x0203E939
_0803B670:
	ldr r0, _0803B678
	ldrb r0, [r0]
	b _0803B6C8
	.align 2, 0
_0803B678: .4byte 0x0203E940
_0803B67C:
	ldr r0, _0803B684
	ldrb r0, [r0]
	b _0803B6C8
	.align 2, 0
_0803B684: .4byte 0x0203E94F
_0803B688:
	ldr r0, _0803B690
	ldrb r0, [r0]
	b _0803B6C8
	.align 2, 0
_0803B690: .4byte 0x0203E950
_0803B694:
	ldr r0, _0803B69C
	ldrb r0, [r0]
	b _0803B6C8
	.align 2, 0
_0803B69C: .4byte 0x0203E964
_0803B6A0:
	ldr r0, _0803B6A8
	ldrb r0, [r0]
	b _0803B6C8
	.align 2, 0
_0803B6A8: .4byte 0x0203E965
_0803B6AC:
	ldr r0, _0803B6B4
	ldrb r0, [r0]
	b _0803B6C8
	.align 2, 0
_0803B6B4: .4byte 0x0203E966
_0803B6B8:
	ldr r0, _0803B6C0
	ldrb r0, [r0]
	b _0803B6C8
	.align 2, 0
_0803B6C0: .4byte 0x0203E967
_0803B6C4:
	.2byte 0xEE00, 0xEE00
_0803B6C8:
	pop {r1}
	bx r1

	.thumb
sub_803B6CC: @ 0x0803B6CC
	push {r4, lr}
	movs r2, #0
	ldr r4, _0803B6F8
	ldr r0, _0803B6FC
	ldrh r1, [r0]
	movs r0, #0xc4
	muls r1, r0, r1
	adds r0, r1, r4
	ldrb r3, [r0, #3]
	cmp r2, r3
	bge _0803B706
	adds r0, r4, #0
	adds r0, #0x34
	adds r0, r1, r0
	ldr r1, [r0]
_0803B6EA:
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #0
	bne _0803B700
	movs r0, #0
	b _0803B708
	.align 2, 0
_0803B6F8: .4byte 0x0203E440
_0803B6FC: .4byte gLoadedRoomLevel
_0803B700:
	adds r2, #1
	cmp r2, r3
	blt _0803B6EA
_0803B706:
	movs r0, #1
_0803B708:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	.thumb
sub_803B710: @ 0x0803B710
	push {r4, lr}
	movs r2, #0
	ldr r4, _0803B740
	ldr r0, _0803B744
	ldrh r1, [r0]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r1, r0, #3
	adds r0, r1, r4
	ldrb r3, [r0, #8]
	cmp r2, r3
	bge _0803B74E
	adds r0, r4, #0
	adds r0, #0x3c
	adds r0, r1, r0
	ldr r4, [r0]
	adds r1, r3, #0
_0803B732:
	adds r0, r4, r2
	ldrb r0, [r0]
	cmp r0, #0
	bne _0803B748
	movs r0, #0
	b _0803B750
	.align 2, 0
_0803B740: .4byte 0x0203E170
_0803B744: .4byte gLoadedRoomLevel
_0803B748:
	adds r2, #1
	cmp r2, r1
	blt _0803B732
_0803B74E:
	movs r0, #1
_0803B750:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	.thumb
sub_803B758: @ 0x0803B758
	ldr r3, _0803B770
	ldr r0, _0803B774
	ldrh r2, [r0]
	lsls r0, r2, #4
	subs r0, r0, r2
	lsls r0, r0, #3
	adds r3, #0x54
	adds r0, r0, r3
	ldr r0, [r0]
	adds r0, r0, r1
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803B770: .4byte 0x0203E170
_0803B774: .4byte gLoadedRoomLevel

	.thumb
sub_803B778: @ 0x0803B778
	ldr r3, _0803B790
	ldr r0, _0803B794
	ldrh r2, [r0]
	lsls r0, r2, #4
	subs r0, r0, r2
	lsls r0, r0, #3
	adds r3, #0x44
	adds r0, r0, r3
	ldr r0, [r0]
	adds r0, r0, r1
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803B790: .4byte 0x0203E170
_0803B794: .4byte gLoadedRoomLevel

	.thumb
sub_803B798: @ 0x0803B798
	ldr r3, _0803B7B0
	ldr r0, _0803B7B4
	ldrh r2, [r0]
	lsls r0, r2, #4
	subs r0, r0, r2
	lsls r0, r0, #3
	adds r3, #0x48
	adds r0, r0, r3
	ldr r0, [r0]
	adds r0, r0, r1
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803B7B0: .4byte 0x0203E170
_0803B7B4: .4byte gLoadedRoomLevel

	.thumb
sub_803B7B8: @ 0x0803B7B8
	ldr r3, _0803B7D0
	ldr r0, _0803B7D4
	ldrh r2, [r0]
	lsls r0, r2, #4
	subs r0, r0, r2
	lsls r0, r0, #3
	adds r3, #0x4c
	adds r0, r0, r3
	ldr r0, [r0]
	adds r0, r0, r1
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803B7D0: .4byte 0x0203E170
_0803B7D4: .4byte gLoadedRoomLevel

	.thumb
sub_803B7D8: @ 0x0803B7D8
	ldr r3, _0803B7F0
	ldr r0, _0803B7F4
	ldrh r2, [r0]
	lsls r0, r2, #4
	subs r0, r0, r2
	lsls r0, r0, #3
	adds r3, #0x50
	adds r0, r0, r3
	ldr r0, [r0]
	adds r0, r0, r1
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803B7F0: .4byte 0x0203E170
_0803B7F4: .4byte gLoadedRoomLevel

	.thumb
sub_803B7F8: @ 0x0803B7F8
	ldr r3, _0803B810
	ldr r0, _0803B814
	ldrh r2, [r0]
	lsls r0, r2, #4
	subs r0, r0, r2
	lsls r0, r0, #3
	adds r3, #0x1c
	adds r0, r0, r3
	ldr r0, [r0]
	adds r0, r0, r1
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803B810: .4byte 0x0203E170
_0803B814: .4byte gLoadedRoomLevel

	.thumb
sub_803B818: @ 0x0803B818
	ldr r3, _0803B830
	ldr r0, _0803B834
	ldrh r2, [r0]
	lsls r0, r2, #4
	subs r0, r0, r2
	lsls r0, r0, #3
	adds r3, #0x20
	adds r0, r0, r3
	ldr r0, [r0]
	adds r0, r0, r1
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803B830: .4byte 0x0203E170
_0803B834: .4byte gLoadedRoomLevel

	.thumb
sub_803B838: @ 0x0803B838
	ldr r3, _0803B850
	ldr r0, _0803B854
	ldrh r2, [r0]
	lsls r0, r2, #4
	subs r0, r0, r2
	lsls r0, r0, #3
	adds r3, #0x24
	adds r0, r0, r3
	ldr r0, [r0]
	adds r0, r0, r1
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803B850: .4byte 0x0203E170
_0803B854: .4byte gLoadedRoomLevel

	.thumb
sub_803B858: @ 0x0803B858
	ldr r3, _0803B870
	ldr r0, _0803B874
	ldrh r2, [r0]
	lsls r0, r2, #4
	subs r0, r0, r2
	lsls r0, r0, #3
	adds r3, #0x28
	adds r0, r0, r3
	ldr r0, [r0]
	adds r0, r0, r1
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803B870: .4byte 0x0203E170
_0803B874: .4byte gLoadedRoomLevel

	.thumb
sub_803B878: @ 0x0803B878
	ldr r3, _0803B890
	ldr r0, _0803B894
	ldrh r2, [r0]
	lsls r0, r2, #4
	subs r0, r0, r2
	lsls r0, r0, #3
	adds r3, #0x2c
	adds r0, r0, r3
	ldr r0, [r0]
	adds r0, r0, r1
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803B890: .4byte 0x0203E170
_0803B894: .4byte gLoadedRoomLevel

	.thumb
sub_803B898: @ 0x0803B898
	ldr r2, _0803B8AC
	ldr r0, _0803B8B0
	ldrh r1, [r0]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r2
	adds r0, #0x70
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803B8AC: .4byte 0x0203E170
_0803B8B0: .4byte gLoadedRoomLevel

	.thumb
sub_803B8B4: @ 0x0803B8B4
	ldr r2, _0803B8C8
	ldr r0, _0803B8CC
	ldrh r1, [r0]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r2
	adds r0, #0x71
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803B8C8: .4byte 0x0203E170
_0803B8CC: .4byte gLoadedRoomLevel

	.thumb
sub_803B8D0: @ 0x0803B8D0
	ldr r2, _0803B8E4
	ldr r0, _0803B8E8
	ldrh r1, [r0]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r2
	adds r0, #0x72
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803B8E4: .4byte 0x0203E170
_0803B8E8: .4byte gLoadedRoomLevel

	.thumb
sub_803B8EC: @ 0x0803B8EC
	ldr r2, _0803B900
	ldr r0, _0803B904
	ldrh r1, [r0]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r2
	adds r0, #0x73
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803B900: .4byte 0x0203E170
_0803B904: .4byte gLoadedRoomLevel

	.thumb
sub_803B908: @ 0x0803B908
	ldr r2, _0803B91C
	ldr r0, _0803B920
	ldrh r1, [r0]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r2
	adds r0, #0x74
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803B91C: .4byte 0x0203E170
_0803B920: .4byte gLoadedRoomLevel

	.thumb
sub_803B924: @ 0x0803B924
	ldr r3, _0803B93C
	ldr r0, _0803B940
	ldrh r2, [r0]
	lsls r0, r2, #4
	subs r0, r0, r2
	lsls r0, r0, #3
	adds r3, #0x30
	adds r0, r0, r3
	ldr r0, [r0]
	adds r0, r0, r1
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803B93C: .4byte 0x0203E170
_0803B940: .4byte gLoadedRoomLevel

	.thumb
sub_803B944: @ 0x0803B944
	ldr r3, _0803B95C
	ldr r0, _0803B960
	ldrh r2, [r0]
	lsls r0, r2, #4
	subs r0, r0, r2
	lsls r0, r0, #3
	adds r3, #0x64
	adds r0, r0, r3
	ldr r0, [r0]
	adds r0, r0, r1
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803B95C: .4byte 0x0203E170
_0803B960: .4byte gLoadedRoomLevel

	.thumb
sub_803B964: @ 0x0803B964
	ldr r3, _0803B97C
	ldr r0, _0803B980
	ldrh r2, [r0]
	lsls r0, r2, #4
	subs r0, r0, r2
	lsls r0, r0, #3
	adds r3, #0x68
	adds r0, r0, r3
	ldr r0, [r0]
	adds r0, r0, r1
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803B97C: .4byte 0x0203E170
_0803B980: .4byte gLoadedRoomLevel

	.thumb
sub_803B984: @ 0x0803B984
	ldr r3, _0803B99C
	ldr r0, _0803B9A0
	ldrh r2, [r0]
	lsls r0, r2, #4
	subs r0, r0, r2
	lsls r0, r0, #3
	adds r3, #0x6c
	adds r0, r0, r3
	ldr r0, [r0]
	adds r0, r0, r1
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803B99C: .4byte 0x0203E170
_0803B9A0: .4byte gLoadedRoomLevel

	.thumb
sub_803B9A4: @ 0x0803B9A4
	ldr r3, _0803B9BC
	ldr r0, _0803B9C0
	ldrh r2, [r0]
	lsls r0, r2, #4
	subs r0, r0, r2
	lsls r0, r0, #3
	adds r3, #0x34
	adds r0, r0, r3
	ldr r0, [r0]
	adds r0, r0, r1
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803B9BC: .4byte 0x0203E170
_0803B9C0: .4byte gLoadedRoomLevel

	.thumb
sub_803B9C4: @ 0x0803B9C4
	ldr r3, _0803B9DC
	ldr r0, _0803B9E0
	ldrh r2, [r0]
	lsls r0, r2, #4
	subs r0, r0, r2
	lsls r0, r0, #3
	adds r3, #0x38
	adds r0, r0, r3
	ldr r0, [r0]
	adds r0, r0, r1
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803B9DC: .4byte 0x0203E170
_0803B9E0: .4byte gLoadedRoomLevel

	.thumb
sub_803B9E4: @ 0x0803B9E4
	ldr r3, _0803B9FC
	ldr r0, _0803BA00
	ldrh r2, [r0]
	lsls r0, r2, #4
	subs r0, r0, r2
	lsls r0, r0, #3
	adds r3, #0x3c
	adds r0, r0, r3
	ldr r0, [r0]
	adds r0, r0, r1
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803B9FC: .4byte 0x0203E170
_0803BA00: .4byte gLoadedRoomLevel

	.thumb
sub_803BA04: @ 0x0803BA04
	ldr r3, _0803BA1C
	ldr r0, _0803BA20
	ldrh r2, [r0]
	lsls r0, r2, #4
	subs r0, r0, r2
	lsls r0, r0, #3
	adds r3, #0x40
	adds r0, r0, r3
	ldr r0, [r0]
	adds r0, r0, r1
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803BA1C: .4byte 0x0203E170
_0803BA20: .4byte gLoadedRoomLevel

	.thumb
sub_803BA24: @ 0x0803BA24
	ldr r2, _0803BA3C
	ldr r0, _0803BA40
	ldrh r3, [r0]
	movs r0, #0xc4
	muls r0, r3, r0
	adds r2, #0x28
	adds r0, r0, r2
	ldr r0, [r0]
	adds r0, r0, r1
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803BA3C: .4byte 0x0203E440
_0803BA40: .4byte gLoadedRoomLevel

	.thumb
sub_803BA44: @ 0x0803BA44
	ldr r2, _0803BA5C
	ldr r0, _0803BA60
	ldrh r3, [r0]
	movs r0, #0xc4
	muls r0, r3, r0
	adds r2, #0x2c
	adds r0, r0, r2
	ldr r0, [r0]
	adds r0, r0, r1
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803BA5C: .4byte 0x0203E440
_0803BA60: .4byte gLoadedRoomLevel

	.thumb
sub_803BA64: @ 0x0803BA64
	ldr r2, _0803BA7C
	ldr r0, _0803BA80
	ldrh r3, [r0]
	movs r0, #0xc4
	muls r0, r3, r0
	adds r2, #0x30
	adds r0, r0, r2
	ldr r0, [r0]
	adds r0, r0, r1
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803BA7C: .4byte 0x0203E440
_0803BA80: .4byte gLoadedRoomLevel

	.thumb
sub_803BA84: @ 0x0803BA84
	ldr r2, _0803BA98
	ldr r0, _0803BA9C
	ldrh r0, [r0]
	lsls r0, r0, #4
	adds r2, #4
	adds r0, r0, r2
	ldr r0, [r0]
	adds r0, r0, r1
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803BA98: .4byte 0x0203E8D8
_0803BA9C: .4byte gLoadedRoomLevel

	.thumb
sub_803BAA0: @ 0x0803BAA0
	ldr r2, _0803BAB8
	ldr r0, _0803BABC
	ldrh r3, [r0]
	movs r0, #0xc4
	muls r0, r3, r0
	adds r2, #0x34
	adds r0, r0, r2
	ldr r0, [r0]
	adds r0, r0, r1
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803BAB8: .4byte 0x0203E440
_0803BABC: .4byte gLoadedRoomLevel

	.thumb
sub_803BAC0: @ 0x0803BAC0
	ldr r0, _0803BAC8
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803BAC8: .4byte 0x0203E974

	.thumb
sub_803BACC: @ 0x0803BACC
	ldr r0, _0803BAD4
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803BAD4: .4byte 0x0203E971

	.thumb
sub_803BAD8: @ 0x0803BAD8
	push {lr}
	movs r1, #0
	ldr r0, _0803BAEC
	ldrb r0, [r0]
	cmp r0, #0
	bne _0803BAE6
	movs r1, #1
_0803BAE6:
	adds r0, r1, #0
	pop {r1}
	bx r1
	.align 2, 0
_0803BAEC: .4byte 0x0203E948

	.thumb
sub_803BAF0: @ 0x0803BAF0
	movs r0, #0
	bx lr

	.thumb
sub_803BAF4: @ 0x0803BAF4
	push {r4, lr}
	ldr r0, _0803BB30
	ldr r2, _0803BB34
	ldr r3, _0803BB38
	ldrh r1, [r3]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	adds r1, #1
	movs r4, #0
	strb r1, [r0, #5]
	ldr r2, _0803BB3C
	ldrh r1, [r3]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	strb r1, [r0, #4]
	bl sub_0800BCD4
	cmp r0, #0
	bne _0803BB22
	.2byte 0xEE00, 0xEE00
_0803BB22:
	ldr r0, _0803BB40
	strb r4, [r0]
	ldr r0, _0803BB44
	strb r4, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803BB30: .4byte byte_3002950
_0803BB34: .4byte 0x080CEE5C
_0803BB38: .4byte gLoadedRoomLevel
_0803BB3C: .4byte 0x080CEE74
_0803BB40: .4byte 0x0203F9A2
_0803BB44: .4byte 0x0203DFC8

	.thumb
sub_803BB48: @ 0x0803BB48
	push {lr}
	ldr r0, _0803BB80
	ldr r2, _0803BB84
	ldr r3, _0803BB88
	ldrh r1, [r3]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	adds r1, #1
	strb r1, [r0, #5]
	ldr r2, _0803BB8C
	ldrh r1, [r3]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	strb r1, [r0, #4]
	bl sub_0800BCD4
	cmp r0, #0
	bne _0803BB74
	.2byte 0xEE00, 0xEE00
_0803BB74:
	ldr r1, _0803BB90
	movs r0, #0
	strb r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_0803BB80: .4byte byte_3002950
_0803BB84: .4byte 0x080CEE8C
_0803BB88: .4byte gLoadedRoomLevel
_0803BB8C: .4byte 0x080CEEA4
_0803BB90: .4byte 0x0203F9A2

	.thumb
sub_803BB94: @ 0x0803BB94
	push {lr}
	ldr r0, _0803BBD4
	ldr r0, [r0]
	adds r0, #0x24
	movs r1, #0x52
	strb r1, [r0]
	movs r0, #1
	bl sub_80186F4
	movs r0, #0xd4
	lsls r0, r0, #1
	movs r1, #0
	movs r2, #4
	movs r3, #0
	bl sub_8034460
	ldr r3, _0803BBD8
	ldrb r2, [r3, #0x13]
	ldrb r1, [r3, #0x15]
	ldrb r0, [r3, #0x14]
	adds r0, #1
	muls r1, r0, r1
	cmp r2, r1
	bge _0803BBCE
	strb r1, [r3, #0x13]
	ldrb r1, [r3, #0x13]
	movs r0, #0x38
	bl sub_08040204
_0803BBCE:
	pop {r0}
	bx r0
	.align 2, 0
_0803BBD4: .4byte 0x0203DFDC
_0803BBD8: .4byte gGameStatus

	.thumb
sub_803BBDC: @ 0x0803BBDC
	push {lr}
	movs r0, #1
	bl sub_80186F4
	pop {r0}
	bx r0

	.thumb
sub_803BBE8: @ 0x0803BBE8
	push {lr}
	movs r0, #1
	bl sub_80186F4
	pop {r0}
	bx r0

	.thumb
sub_803BBF4: @ 0x0803BBF4
	push {lr}
	movs r0, #1
	bl sub_80186F4
	pop {r0}
	bx r0

	.thumb
sub_803BC00: @ 0x0803BC00
	push {lr}
	movs r0, #1
	bl sub_80186F4
	pop {r0}
	bx r0

	.thumb
sub_803BC0C: @ 0x0803BC0C
	push {lr}
	movs r0, #1
	bl sub_80186F4
	pop {r0}
	bx r0

	.thumb
sub_803BC18: @ 0x0803BC18
	push {lr}
	movs r0, #1
	bl sub_80186F4
	pop {r0}
	bx r0

	.thumb
sub_803BC24: @ 0x0803BC24
	push {lr}
	movs r0, #1
	bl sub_80186F4
	pop {r0}
	bx r0

	.thumb
sub_803BC30: @ 0x0803BC30
	push {lr}
	movs r0, #1
	bl sub_80186F4
	pop {r0}
	bx r0

	.thumb
sub_803BC3C: @ 0x0803BC3C
	push {lr}
	movs r0, #1
	bl sub_80186F4
	pop {r0}
	bx r0

	.thumb
sub_803BC48: @ 0x0803BC48
	push {lr}
	movs r0, #1
	bl sub_80186F4
	pop {r0}
	bx r0

	.thumb
sub_803BC54: @ 0x0803BC54
	ldr r1, _0803BC5C
	movs r0, #1
	strb r0, [r1]
	bx lr
	.align 2, 0
_0803BC5C: .4byte 0x0203E970

	.thumb
sub_803BC60: @ 0x0803BC60
	ldr r1, _0803BC68
	movs r0, #1
	strb r0, [r1]
	bx lr
	.align 2, 0
_0803BC68: .4byte 0x0203E96F

	.thumb
sub_803BC6C: @ 0x0803BC6C
	ldr r1, _0803BC74
	movs r0, #1
	strb r0, [r1]
	bx lr
	.align 2, 0
_0803BC74: .4byte 0x0203E96E

	.thumb
sub_803BC78: @ 0x0803BC78
	push {r4, lr}
	ldr r0, _0803BCB0
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803BCA8
	ldr r2, _0803BCB4
	movs r1, #0x92
	lsls r1, r1, #3
	adds r0, r2, r1
	ldrh r0, [r0]
	ldr r3, _0803BCB8
	ldr r4, _0803BCBC
	adds r1, r2, r4
	ldrb r3, [r3]
	adds r1, r1, r3
	ldrb r1, [r1]
	ldr r3, _0803BCC0
	adds r2, r2, r3
	ldr r2, [r2]
	movs r4, #0x80
	lsls r4, r4, #9
	adds r2, r2, r4
	bl audio_new_fx
_0803BCA8:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803BCB0: .4byte byte_203EA89
_0803BCB4: .4byte 0x080CE440
_0803BCB8: .4byte byte_203EA8C
_0803BCBC: .4byte 0x00000492
_0803BCC0: .4byte 0x00000494

	.thumb
sub_803BCC4: @ 0x0803BCC4
	push {r4, lr}
	ldr r0, _0803BCFC
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803BCF4
	ldr r2, _0803BD00
	movs r1, #0x92
	lsls r1, r1, #3
	adds r0, r2, r1
	ldrh r0, [r0]
	ldr r3, _0803BD04
	ldr r4, _0803BD08
	adds r1, r2, r4
	ldrb r3, [r3]
	adds r1, r1, r3
	ldrb r1, [r1]
	ldr r3, _0803BD0C
	adds r2, r2, r3
	ldr r2, [r2]
	movs r4, #0x80
	lsls r4, r4, #9
	adds r2, r2, r4
	bl audio_new_fx
_0803BCF4:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803BCFC: .4byte byte_203EA89
_0803BD00: .4byte 0x080CE440
_0803BD04: .4byte byte_203EA8C
_0803BD08: .4byte 0x00000492
_0803BD0C: .4byte 0x00000494

	.thumb
sub_803BD10: @ 0x0803BD10
	push {r4, lr}
	ldr r0, _0803BD48
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803BD40
	ldr r2, _0803BD4C
	movs r1, #0x92
	lsls r1, r1, #3
	adds r0, r2, r1
	ldrh r0, [r0]
	ldr r3, _0803BD50
	ldr r4, _0803BD54
	adds r1, r2, r4
	ldrb r3, [r3]
	adds r1, r1, r3
	ldrb r1, [r1]
	ldr r3, _0803BD58
	adds r2, r2, r3
	ldr r2, [r2]
	movs r4, #0x80
	lsls r4, r4, #9
	adds r2, r2, r4
	bl audio_new_fx
_0803BD40:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803BD48: .4byte byte_203EA89
_0803BD4C: .4byte 0x080CE440
_0803BD50: .4byte byte_203EA8C
_0803BD54: .4byte 0x00000492
_0803BD58: .4byte 0x00000494

	.thumb
sub_803BD5C: @ 0x0803BD5C
	push {r4, lr}
	ldr r0, _0803BD94
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803BD8C
	ldr r2, _0803BD98
	movs r1, #0x90
	lsls r1, r1, #3
	adds r0, r2, r1
	ldrh r0, [r0]
	ldr r3, _0803BD9C
	ldr r4, _0803BDA0
	adds r1, r2, r4
	ldrb r3, [r3]
	adds r1, r1, r3
	ldrb r1, [r1]
	ldr r3, _0803BDA4
	adds r2, r2, r3
	ldr r2, [r2]
	movs r4, #0x80
	lsls r4, r4, #9
	adds r2, r2, r4
	bl audio_new_fx
_0803BD8C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803BD94: .4byte byte_203EA89
_0803BD98: .4byte 0x080CE440
_0803BD9C: .4byte byte_203EA8C
_0803BDA0: .4byte 0x00000482
_0803BDA4: .4byte 0x00000484

	.thumb
sub_803BDA8: @ 0x0803BDA8
	push {r4, lr}
	ldr r0, _0803BDE0
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803BDD8
	ldr r2, _0803BDE4
	movs r1, #0x91
	lsls r1, r1, #3
	adds r0, r2, r1
	ldrh r0, [r0]
	ldr r3, _0803BDE8
	ldr r4, _0803BDEC
	adds r1, r2, r4
	ldrb r3, [r3]
	adds r1, r1, r3
	ldrb r1, [r1]
	ldr r3, _0803BDF0
	adds r2, r2, r3
	ldr r2, [r2]
	movs r4, #0x80
	lsls r4, r4, #9
	adds r2, r2, r4
	bl audio_new_fx
_0803BDD8:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803BDE0: .4byte byte_203EA89
_0803BDE4: .4byte 0x080CE440
_0803BDE8: .4byte byte_203EA8C
_0803BDEC: .4byte 0x0000048A
_0803BDF0: .4byte 0x0000048C

	.thumb
sub_803BDF4: @ 0x0803BDF4
	push {lr}
	ldr r0, _0803BE14
	movs r1, #1
	movs r2, #1
	bl sub_0800F02C
	movs r0, #0xb3
	lsls r0, r0, #1
	movs r1, #0
	movs r2, #6
	movs r3, #0
	bl sub_8034460
	pop {r0}
	bx r0
	.align 2, 0
_0803BE14: .4byte 0x0203E984

	.thumb
sub_803BE18: @ 0x0803BE18
	push {lr}
	ldr r0, _0803BE30
	ldr r0, [r0]
	cmp r0, #0
	beq _0803BE2C
	movs r0, #4
	movs r1, #4
	movs r2, #1
	bl sub_800BFA0
_0803BE2C:
	pop {r0}
	bx r0
	.align 2, 0
_0803BE30: .4byte 0x0203E984

	.thumb
sub_803BE34: @ 0x0803BE34
	push {lr}
	ldr r0, _0803BE54
	movs r1, #1
	movs r2, #1
	bl sub_0800F02C
	movs r0, #0xb4
	lsls r0, r0, #1
	movs r1, #0
	movs r2, #6
	movs r3, #0
	bl sub_8034460
	pop {r0}
	bx r0
	.align 2, 0
_0803BE54: .4byte 0x0203E984

	.thumb
sub_803BE58: @ 0x0803BE58
	push {lr}
	ldr r0, _0803BE70
	ldr r0, [r0]
	cmp r0, #0
	beq _0803BE6C
	movs r0, #0xd
	movs r1, #1
	movs r2, #1
	bl sub_800BFA0
_0803BE6C:
	pop {r0}
	bx r0
	.align 2, 0
_0803BE70: .4byte 0x0203E984

	.thumb
sub_803BE74: @ 0x0803BE74
	push {lr}
	ldr r0, _0803BE94
	movs r1, #1
	movs r2, #1
	bl sub_0800F02C
	movs r0, #0xb5
	lsls r0, r0, #1
	movs r1, #0
	movs r2, #6
	movs r3, #0
	bl sub_8034460
	pop {r0}
	bx r0
	.align 2, 0
_0803BE94: .4byte 0x0203E984

	.thumb
sub_803BE98: @ 0x0803BE98
	push {lr}
	ldr r0, _0803BEB0
	ldr r0, [r0]
	cmp r0, #0
	beq _0803BEAC
	movs r0, #0x1b
	movs r1, #4
	movs r2, #1
	bl sub_800BFA0
_0803BEAC:
	pop {r0}
	bx r0
	.align 2, 0
_0803BEB0: .4byte 0x0203E984

	.thumb
sub_803BEB4: @ 0x0803BEB4
	push {lr}
	ldr r0, _0803BED8
	movs r1, #0
	movs r2, #0
	bl sub_0800F02C
	movs r0, #0xb1
	lsls r0, r0, #1
	movs r1, #0
	movs r2, #6
	movs r3, #0
	bl sub_8034460
	ldr r1, _0803BEDC
	movs r0, #1
	strb r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_0803BED8: .4byte 0x0203E984
_0803BEDC: .4byte 0x0203E16A

	.thumb
sub_803BEE0: @ 0x0803BEE0
	push {lr}
	ldr r1, _0803BF14
	movs r0, #0
	strb r0, [r1]
	ldr r1, _0803BF18
	movs r0, #1
	strb r0, [r1]
	ldr r1, _0803BF1C
	ldr r2, _0803BF20
	adds r0, r2, #0
	strh r0, [r1]
	ldr r0, _0803BF24
	ldr r0, [r0]
	cmp r0, #0
	beq _0803BF2C
	ldr r0, _0803BF28
	bl sub_0802FEDC
	movs r0, #0xfc
	movs r1, #0
	movs r2, #4
	movs r3, #0
	bl sub_8034460
	b _0803BF34
	.align 2, 0
_0803BF14: .4byte 0x0203E16A
_0803BF18: .4byte byte_203F9A1
_0803BF1C: .4byte gKeyInput
_0803BF20: .4byte 0x000003FF
_0803BF24: .4byte 0x0203E984
_0803BF28: .4byte 0x00000163
_0803BF2C:
	movs r0, #0xb2
	lsls r0, r0, #1
	bl sub_0802FEDC
_0803BF34:
	pop {r0}
	bx r0

	.thumb
sub_803BF38: @ 0x0803BF38
	push {lr}
	ldr r1, _0803BF54
	movs r0, #0
	strb r0, [r1]
	ldr r0, _0803BF58
	ldr r0, [r0]
	cmp r0, #0
	beq _0803BF4E
	ldr r1, _0803BF5C
	movs r0, #1
	strb r0, [r1]
_0803BF4E:
	pop {r0}
	bx r0
	.align 2, 0
_0803BF54: .4byte 0x0203E16B
_0803BF58: .4byte 0x0203E984
_0803BF5C: .4byte 0x0203FA34

	.thumb
sub_803BF60: @ 0x0803BF60
	push {lr}
	ldr r0, _0803BF84
	movs r1, #2
	movs r2, #0
	bl sub_0800F02C
	movs r0, #0xb0
	lsls r0, r0, #1
	movs r1, #0
	movs r2, #6
	movs r3, #0
	bl sub_8034460
	ldr r1, _0803BF88
	movs r0, #1
	strb r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_0803BF84: .4byte 0x0203E984
_0803BF88: .4byte 0x0203E16B

	.thumb
sub_803BF8C: @ 0x0803BF8C
	push {lr}
	ldr r0, _0803BFB0
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803BFAC
	ldr r0, _0803BFB4
	ldr r0, [r0]
	movs r3, #0
	strb r3, [r0, #1]
	ldr r2, _0803BFB8
	ldr r1, [r2]
	ldrb r0, [r1, #1]
	subs r0, #1
	strb r0, [r1, #1]
	ldr r0, [r2]
	strb r3, [r0, #4]
_0803BFAC:
	pop {r0}
	bx r0
	.align 2, 0
_0803BFB0: .4byte 0x0203E138
_0803BFB4: .4byte 0x0203E998
_0803BFB8: .4byte 0x0203E99C

	.thumb
sub_803BFBC: @ 0x0803BFBC
	push {lr}
	ldr r0, _0803BFD0
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803BFD8
	ldr r2, _0803BFD4
	ldr r1, [r2]
	movs r0, #1
	b _0803BFDE
	.align 2, 0
_0803BFD0: .4byte 0x0203E138
_0803BFD4: .4byte 0x0203E998
_0803BFD8:
	ldr r2, _0803BFF4
	ldr r1, [r2]
	ldrh r0, [r1, #4]
_0803BFDE:
	strh r0, [r1, #6]
	ldr r2, [r2]
	movs r1, #6
	ldrsh r0, [r2, r1]
	cmp r0, #0x3b
	ble _0803BFF0
	movs r1, #0
	bl sub_80630C0
_0803BFF0:
	pop {r0}
	bx r0
	.align 2, 0
_0803BFF4: .4byte 0x0203E998

	.thumb
sub_803BFF8: @ 0x0803BFF8
	push {lr}
	ldr r1, _0803C018
	movs r0, #1
	strb r0, [r1]
	movs r0, #0xa6
	lsls r0, r0, #1
	bl sub_0802FEDC
	ldr r0, _0803C01C
	movs r1, #0
	movs r2, #4
	movs r3, #0
	bl sub_8034460
	pop {r0}
	bx r0
	.align 2, 0
_0803C018: .4byte 0x0203E97C
_0803C01C: .4byte 0x00000149

	.thumb
sub_803C020: @ 0x0803C020
	push {lr}
	ldr r2, _0803C038
	ldr r1, _0803C03C
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0x23
	strh r0, [r1]
	bl sub_8063468
	pop {r0}
	bx r0
	.align 2, 0
_0803C038: .4byte gPreviousPlayerState
_0803C03C: .4byte gPlayerState

	.thumb
sub_803C040: @ 0x0803C040
	push {lr}
	ldr r1, _0803C074
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r2, _0803C078
	ldr r0, _0803C07C
	ldr r1, [r0]
	subs r1, #1
	lsls r1, r1, #2
	adds r2, r1, r2
	ldr r0, [r2]
	ldr r2, _0803C080
	adds r1, r1, r2
	ldr r1, [r1]
	movs r2, #0
	bl sub_800BFA0
	ldr r1, _0803C084
	movs r0, #1
	strb r0, [r1]
	ldr r1, _0803C088
	movs r0, #0
	strb r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_0803C074: .4byte 0x02001104
_0803C078: .4byte 0x080CEF7C
_0803C07C: .4byte 0x02001108
_0803C080: .4byte 0x080CEF84
_0803C084: .4byte 0x020021C4
_0803C088: .4byte 0x0203DFC8

	.thumb
sub_803C08C: @ 0x0803C08C
	push {r4, lr}
	movs r0, #0
	bl sub_8016C78
	ldr r0, _0803C0B8
	ldr r0, [r0]
	adds r0, #0x65
	movs r4, #1
	strb r4, [r0]
	ldr r0, _0803C0BC
	strb r4, [r0]
	movs r1, #1
	rsbs r1, r1, #0
	movs r0, #0
	movs r2, #2
	bl sub_80192D4
	ldr r0, _0803C0C0
	strb r4, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803C0B8: .4byte 0x0203F8B4
_0803C0BC: .4byte 0x0203F8BD
_0803C0C0: .4byte 0x020021C4

	.thumb
sub_803C0C4: @ 0x0803C0C4
	push {lr}
	ldr r1, _0803C0E0
	ldr r0, _0803C0E4
	ldrh r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _0803C0DA
	bl init_function
_0803C0DA:
	pop {r0}
	bx r0
	.align 2, 0
_0803C0E0: .4byte 0x080CEE2C
_0803C0E4: .4byte gLoadedRoomLevel

	.thumb
sub_803C0E8: @ 0x0803C0E8
	ldr r1, _0803C0F0
	movs r0, #1
	strb r0, [r1]
	bx lr
	.align 2, 0
_0803C0F0: .4byte 0x0203E962

	.thumb
sub_803C0F4: @ 0x0803C0F4
	ldr r1, _0803C0FC
	movs r0, #1
	strb r0, [r1]
	bx lr
	.align 2, 0
_0803C0FC: .4byte 0x0203E963

	.thumb
sub_803C100: @ 0x0803C100
	ldr r2, _0803C118
	ldr r0, _0803C11C
	ldrh r3, [r0]
	movs r0, #0xc4
	muls r0, r3, r0
	adds r2, #0x74
	adds r0, r0, r2
	ldr r0, [r0]
	adds r0, r0, r1
	movs r1, #1
	strb r1, [r0]
	bx lr
	.align 2, 0
_0803C118: .4byte 0x0203E440
_0803C11C: .4byte gLoadedRoomLevel

	.thumb
sub_803C120: @ 0x0803C120
	ldr r2, _0803C138
	ldr r0, _0803C13C
	ldrh r3, [r0]
	movs r0, #0xc4
	muls r0, r3, r0
	adds r2, #0x78
	adds r0, r0, r2
	ldr r0, [r0]
	adds r0, r0, r1
	movs r1, #1
	strb r1, [r0]
	bx lr
	.align 2, 0
_0803C138: .4byte 0x0203E440
_0803C13C: .4byte gLoadedRoomLevel

	.thumb
sub_803C140: @ 0x0803C140
	push {lr}
	movs r0, #0xb
	bl sub_8034650
	ldr r1, _0803C154
	movs r0, #1
	strb r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_0803C154: .4byte 0x020021BE

	.thumb
sub_803C158: @ 0x0803C158
	ldr r0, _0803C164
	ldrb r1, [r0]
	movs r2, #1
	orrs r1, r2
	strb r1, [r0]
	bx lr
	.align 2, 0
_0803C164: .4byte 0x0203E93B

	.thumb
sub_803C168: @ 0x0803C168
	ldr r2, _0803C17C
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	ldr r1, _0803C180
	movs r0, #0
	str r0, [r1]
	bx lr
	.align 2, 0
_0803C17C: .4byte 0x0203E93B
_0803C180: .4byte 0x0203E980

	.thumb
sub_803C184: @ 0x0803C184
	ldr r0, _0803C190
	ldrb r1, [r0]
	movs r2, #4
	orrs r1, r2
	strb r1, [r0]
	bx lr
	.align 2, 0
_0803C190: .4byte 0x0203E93B

	.thumb
sub_803C194: @ 0x0803C194
	ldr r0, _0803C1A0
	ldrb r1, [r0]
	movs r2, #8
	orrs r1, r2
	strb r1, [r0]
	bx lr
	.align 2, 0
_0803C1A0: .4byte 0x0203E93B

	.thumb
sub_803C1A4: @ 0x0803C1A4
	ldr r0, _0803C1B0
	ldrb r1, [r0]
	movs r2, #0x10
	orrs r1, r2
	strb r1, [r0]
	bx lr
	.align 2, 0
_0803C1B0: .4byte 0x0203E93B

	.thumb
sub_803C1B4: @ 0x0803C1B4
	ldr r0, _0803C1C0
	ldrb r1, [r0]
	movs r2, #0x20
	orrs r1, r2
	strb r1, [r0]
	bx lr
	.align 2, 0
_0803C1C0: .4byte 0x0203E93B

	.thumb
sub_803C1C4: @ 0x0803C1C4
	push {r4, r5, lr}
	adds r5, r1, #0
	ldr r0, _0803C1DC
	ldrh r0, [r0]
	cmp r0, #5
	bls _0803C1D2
	b _0803C344
_0803C1D2:
	lsls r0, r0, #2
	ldr r1, _0803C1E0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0803C1DC: .4byte gLoadedRoomLevel
_0803C1E0: .4byte 0x0803C1E4
_0803C1E4: @ jump table
	.4byte _0803C2D8 @ case 0
	.4byte _0803C1FC @ case 1
	.4byte _0803C228 @ case 2
	.4byte _0803C25C @ case 3
	.4byte _0803C288 @ case 4
	.4byte _0803C2AC @ case 5
_0803C1FC:
	ldr r2, _0803C220
	ldrb r1, [r2]
	movs r0, #0xfe
	ands r0, r1
	strb r0, [r2]
	movs r0, #0x44
	bl init_function
	ldr r0, _0803C224
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_8034460
	movs r0, #0x6c
	bl sub_8029C30
	b _0803C320
	.align 2, 0
_0803C220: .4byte 0x0203E93C
_0803C224: .4byte 0x0000011F
_0803C228:
	ldr r2, _0803C254
	ldrb r1, [r2]
	movs r0, #0xfd
	ands r0, r1
	strb r0, [r2]
	ldr r1, _0803C258
	movs r0, #1
	str r0, [r1]
	movs r0, #0x53
	bl init_function
	movs r0, #0x90
	lsls r0, r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_8034460
	movs r0, #0x6c
	bl sub_8029C30
	b _0803C320
	.align 2, 0
_0803C254: .4byte 0x0203E93C
_0803C258: .4byte 0x0203E980
_0803C25C:
	ldr r2, _0803C280
	ldrb r1, [r2]
	movs r0, #0xfb
	ands r0, r1
	strb r0, [r2]
	movs r0, #0x65
	bl init_function
	ldr r0, _0803C284
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_8034460
	movs r0, #0x6c
	bl sub_8029C30
	b _0803C320
	.align 2, 0
_0803C280: .4byte 0x0203E93C
_0803C284: .4byte 0x00000121
_0803C288:
	ldr r2, _0803C2A4
	ldrb r1, [r2]
	movs r0, #0xf7
	ands r0, r1
	strb r0, [r2]
	ldr r0, _0803C2A8
	movs r1, #0
	bl sub_80342F8
	movs r0, #0x6c
	bl sub_8029C30
	b _0803C320
	.align 2, 0
_0803C2A4: .4byte 0x0203E93C
_0803C2A8: .4byte 0x00000127
_0803C2AC:
	ldr r2, _0803C2D4
	ldrb r1, [r2]
	movs r0, #0xef
	ands r0, r1
	strb r0, [r2]
	movs r0, #0x8d
	bl init_function
	movs r0, #0x94
	lsls r0, r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_8034460
	movs r0, #0x6c
	bl sub_8029C30
	b _0803C320
	.align 2, 0
_0803C2D4: .4byte 0x0203E93C
_0803C2D8:
	ldr r1, _0803C328
	ldr r4, _0803C32C
	ldr r0, [r4]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl init_function
	ldr r1, _0803C330
	movs r0, #0
	strb r0, [r1]
	ldr r0, _0803C334
	ldr r0, [r0]
	adds r0, r0, r5
	ldrb r0, [r0]
	bl sub_804888C
	ldr r0, [r4]
	cmp r0, #2
	bne _0803C348
	ldr r0, _0803C338
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_8034460
	ldr r2, _0803C33C
	ldrb r1, [r2]
	movs r0, #0xdf
	ands r0, r1
	strb r0, [r2]
	ldr r2, _0803C340
	ldrb r0, [r2]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2]
_0803C320:
	movs r0, #0x6d
	bl sub_8029C30
	b _0803C348
	.align 2, 0
_0803C328: .4byte 0x080CF2F4
_0803C32C: .4byte 0x02001104
_0803C330: .4byte 0x0203F8BD
_0803C334: .4byte 0x0203DFB8
_0803C338: .4byte 0x00000195
_0803C33C: .4byte 0x0203E93C
_0803C340: .4byte 0x0203E93B
_0803C344:
	.2byte 0xEE00, 0xEE00
_0803C348:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	.thumb
sub_803C350: @ 0x0803C350
	push {lr}
	bl sub_8025000
	pop {r0}
	bx r0
	.align 2, 0

	.thumb
sub_803C35C: @ 0x0803C35C
	ldr r2, _0803C374
	ldr r0, _0803C378
	ldrh r1, [r0]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r2
	adds r0, #0x75
	movs r1, #1
	strb r1, [r0]
	bx lr
	.align 2, 0
_0803C374: .4byte 0x0203E170
_0803C378: .4byte gLoadedRoomLevel

	.thumb
sub_803C37C: @ 0x0803C37C
	push {lr}
	movs r0, #0x88
	lsls r0, r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_8034460
	pop {r0}
	bx r0

	.thumb
sub_803C390: @ 0x0803C390
	push {lr}
	bl sub_803938C
	bl sub_8039210
	ldr r1, _0803C3C4
	ldrb r0, [r1]
	cmp r0, #0
	beq _0803C3BA
	ldr r1, _0803C3C8
	ldrb r0, [r1]
	cmp r0, #0
	beq _0803C3BA
	ldr r1, _0803C3CC
	ldrb r0, [r1]
	cmp r0, #0
	beq _0803C3BA
	ldr r1, _0803C3D0
	ldrb r0, [r1]
	cmp r0, #0
	bne _0803C3BE
_0803C3BA:
	movs r0, #1
	strb r0, [r1]
_0803C3BE:
	pop {r0}
	bx r0
	.align 2, 0
_0803C3C4: .4byte 0x0203E977
_0803C3C8: .4byte 0x0203E978
_0803C3CC: .4byte 0x0203E979
_0803C3D0: .4byte 0x0203E97A

	.thumb
sub_803C3D4: @ 0x0803C3D4
	ldr r1, _0803C3E4
	movs r0, #1
	strb r0, [r1]
	ldr r1, _0803C3E8
	movs r0, #0
	strb r0, [r1]
	bx lr
	.align 2, 0
_0803C3E4: .4byte 0x0203E961
_0803C3E8: .4byte 0x0203E976

	.thumb
sub_803C3EC: @ 0x0803C3EC
	push {lr}
	ldr r2, _0803C424
	ldr r0, _0803C428
	ldrh r3, [r0]
	movs r0, #0xc4
	muls r0, r3, r0
	adds r2, #0x7c
	adds r0, r0, r2
	ldr r0, [r0]
	adds r0, r0, r1
	movs r2, #1
	strb r2, [r0]
	ldr r1, _0803C42C
	ldrb r0, [r1]
	cmp r0, #0
	bne _0803C41A
	strb r2, [r1]
	movs r0, #0xe1
	lsls r0, r0, #4
	ldr r2, _0803C430
	movs r1, #0
	bl sub_806311C
_0803C41A:
	bl sub_80394C0
	pop {r0}
	bx r0
	.align 2, 0
_0803C424: .4byte 0x0203E440
_0803C428: .4byte gLoadedRoomLevel
_0803C42C: .4byte 0x0203E975
_0803C430: .4byte 0x0803938D

	.thumb
sub_803C434: @ 0x0803C434
	push {lr}
	ldr r2, _0803C46C
	ldr r0, _0803C470
	ldrh r3, [r0]
	movs r0, #0xc4
	muls r0, r3, r0
	adds r2, #0x80
	adds r0, r0, r2
	ldr r0, [r0]
	adds r0, r0, r1
	movs r2, #1
	strb r2, [r0]
	ldr r1, _0803C474
	ldrb r0, [r1]
	cmp r0, #0
	bne _0803C462
	strb r2, [r1]
	movs r0, #0xe1
	lsls r0, r0, #4
	ldr r2, _0803C478
	movs r1, #0
	bl sub_806311C
_0803C462:
	bl sub_80394C0
	pop {r0}
	bx r0
	.align 2, 0
_0803C46C: .4byte 0x0203E440
_0803C470: .4byte gLoadedRoomLevel
_0803C474: .4byte 0x0203E975
_0803C478: .4byte 0x0803938D

	.thumb
sub_803C47C: @ 0x0803C47C
	push {lr}
	ldr r2, _0803C4B4
	ldr r0, _0803C4B8
	ldrh r3, [r0]
	movs r0, #0xc4
	muls r0, r3, r0
	adds r2, #0x84
	adds r0, r0, r2
	ldr r0, [r0]
	adds r0, r0, r1
	movs r2, #1
	strb r2, [r0]
	ldr r1, _0803C4BC
	ldrb r0, [r1]
	cmp r0, #0
	bne _0803C4AA
	strb r2, [r1]
	movs r0, #0xe1
	lsls r0, r0, #4
	ldr r2, _0803C4C0
	movs r1, #0
	bl sub_806311C
_0803C4AA:
	bl sub_80394C0
	pop {r0}
	bx r0
	.align 2, 0
_0803C4B4: .4byte 0x0203E440
_0803C4B8: .4byte gLoadedRoomLevel
_0803C4BC: .4byte 0x0203E975
_0803C4C0: .4byte 0x0803938D

	.thumb
sub_803C4C4: @ 0x0803C4C4
	push {lr}
	ldr r2, _0803C4FC
	ldr r0, _0803C500
	ldrh r3, [r0]
	movs r0, #0xc4
	muls r0, r3, r0
	adds r2, #0x88
	adds r0, r0, r2
	ldr r0, [r0]
	adds r0, r0, r1
	movs r2, #1
	strb r2, [r0]
	ldr r1, _0803C504
	ldrb r0, [r1]
	cmp r0, #0
	bne _0803C4F2
	strb r2, [r1]
	movs r0, #0xe1
	lsls r0, r0, #4
	ldr r2, _0803C508
	movs r1, #0
	bl sub_806311C
_0803C4F2:
	bl sub_80394C0
	pop {r0}
	bx r0
	.align 2, 0
_0803C4FC: .4byte 0x0203E440
_0803C500: .4byte gLoadedRoomLevel
_0803C504: .4byte 0x0203E975
_0803C508: .4byte 0x0803938D

	.thumb
sub_803C50C: @ 0x0803C50C
	ldr r1, _0803C514
	movs r0, #1
	strb r0, [r1]
	bx lr
	.align 2, 0
_0803C514: .4byte 0x0203E95D

	.thumb
sub_803C518: @ 0x0803C518
	ldr r1, _0803C520
	movs r0, #1
	strb r0, [r1]
	bx lr
	.align 2, 0
_0803C520: .4byte 0x0203E95E

	.thumb
sub_803C524: @ 0x0803C524
	ldr r1, _0803C52C
	movs r0, #1
	strb r0, [r1]
	bx lr
	.align 2, 0
_0803C52C: .4byte 0x0203E95F

	.thumb
sub_803C530: @ 0x0803C530
	ldr r1, _0803C538
	movs r0, #1
	strb r0, [r1]
	bx lr
	.align 2, 0
_0803C538: .4byte 0x0203E960

	.thumb
sub_803C53C: @ 0x0803C53C
	ldr r2, _0803C554
	ldr r0, _0803C558
	ldrh r3, [r0]
	movs r0, #0xc4
	muls r0, r3, r0
	adds r2, #0x8c
	adds r0, r0, r2
	ldr r0, [r0]
	adds r0, r0, r1
	movs r1, #1
	strb r1, [r0]
	bx lr
	.align 2, 0
_0803C554: .4byte 0x0203E440
_0803C558: .4byte gLoadedRoomLevel

	.thumb
sub_803C55C: @ 0x0803C55C
	push {lr}
	ldr r1, _0803C570
	movs r0, #1
	strb r0, [r1]
	movs r0, #0x4f
	bl init_function
	pop {r0}
	bx r0
	.align 2, 0
_0803C570: .4byte 0x0203E97B

	.thumb
sub_803C574: @ 0x0803C574
	ldr r1, _0803C57C
	movs r0, #1
	strb r0, [r1]
	bx lr
	.align 2, 0
_0803C57C: .4byte 0x0203E95C

	.thumb
sub_803C580: @ 0x0803C580
	push {lr}
	ldr r1, _0803C5CC
	movs r0, #0
	strb r0, [r1]
	movs r0, #0x13
	movs r1, #0
	movs r2, #2
	movs r3, #0
	bl sub_8034460
	ldr r1, _0803C5D0
	ldr r0, _0803C5D4
	str r0, [r1]
	ldr r1, _0803C5D8
	ldr r0, _0803C5DC
	ldr r0, [r0]
	strh r0, [r1]
	movs r0, #0x61
	bl init_function
	ldr r0, _0803C5E0
	movs r1, #4
	movs r2, #4
	bl DmaTransferObjPalette
	ldr r1, _0803C5E4
	movs r0, #6
	strh r0, [r1]
	ldr r0, _0803C5E8
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803C5C6
	movs r0, #6
	bl audio_start_tune
_0803C5C6:
	pop {r0}
	bx r0
	.align 2, 0
_0803C5CC: .4byte 0x0203E953
_0803C5D0: .4byte 0x0203F98C
_0803C5D4: .4byte 0x080B21BC
_0803C5D8: .4byte 0x0203F992
_0803C5DC: .4byte 0x080B21C8
_0803C5E0: .4byte 0x083FD654
_0803C5E4: .4byte gLoadedRoomBgm
_0803C5E8: .4byte 0x0203EA88

	.thumb
sub_803C5EC: @ 0x0803C5EC
	ldr r1, _0803C5F4
	movs r0, #1
	strb r0, [r1]
	bx lr
	.align 2, 0
_0803C5F4: .4byte 0x0203E954

	.thumb
sub_803C5F8: @ 0x0803C5F8
	ldr r1, _0803C600
	movs r0, #1
	strb r0, [r1]
	bx lr
	.align 2, 0
_0803C600: .4byte 0x0203E952

	.thumb
sub_803C604: @ 0x0803C604
	push {lr}
	bl sub_803091C
	pop {r0}
	bx r0

	.thumb
sub_803C60E: @ 0x0803C60E
	movs r0, r0
	push {lr}
	ldr r0, _0803C620
	ldrh r1, [r0, #0xc]
	movs r0, #0x13
	bl sub_08040204
	pop {r0}
	bx r0
	.align 2, 0
_0803C620: .4byte gGameStatus

	.thumb
sub_803C624: @ 0x0803C624
	push {lr}
	bl sub_8016B18
	pop {r0}
	bx r0
	.align 2, 0

	.thumb
sub_803C630: @ 0x0803C630
	ldr r1, _0803C638
	movs r0, #1
	strb r0, [r1]
	bx lr
	.align 2, 0
_0803C638: .4byte 0x0203E951

	.thumb
sub_803C63C: @ 0x0803C63C
	push {lr}
	bl sub_8016B44
	pop {r0}
	bx r0
	.align 2, 0

	.thumb
sub_803C648: @ 0x0803C648
	push {lr}
	bl sub_8048B78
	movs r0, #0x28
	bl init_function
	ldr r0, _0803C664
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_8034460
	pop {r0}
	bx r0
	.align 2, 0
_0803C664: .4byte 0x00000103

	.thumb
sub_803C668: @ 0x0803C668
	push {lr}
	adds r0, r1, #0
	bl sub_8034650
	pop {r0}
	bx r0

	.thumb
sub_803C674: @ 0x0803C674
	ldr r2, _0803C68C
	ldr r0, _0803C690
	ldrh r3, [r0]
	movs r0, #0xc4
	muls r0, r3, r0
	adds r2, #0x68
	adds r0, r0, r2
	ldr r0, [r0]
	adds r0, r0, r1
	movs r1, #1
	strb r1, [r0]
	bx lr
	.align 2, 0
_0803C68C: .4byte 0x0203E440
_0803C690: .4byte gLoadedRoomLevel

	.thumb
sub_803C694: @ 0x0803C694
	ldr r1, _0803C69C
	movs r0, #1
	strb r0, [r1]
	bx lr
	.align 2, 0
_0803C69C: .4byte 0x0203E959

	.thumb
sub_803C6A0: @ 0x0803C6A0
	push {lr}
	movs r0, #0x4a
	bl init_function
	ldr r0, _0803C6C0
	movs r1, #0
	strb r1, [r0]
	ldr r0, _0803C6C4
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_8034460
	pop {r0}
	bx r0
	.align 2, 0
_0803C6C0: .4byte 0x0203E95A
_0803C6C4: .4byte 0x0000010B

	.thumb
sub_803C6C8: @ 0x0803C6C8
	push {lr}
	movs r0, #0x57
	bl init_function
	pop {r0}
	bx r0

	.thumb
sub_803C6D4: @ 0x0803C6D4
	push {r4, r5, lr}
	ldr r0, _0803C76C
	movs r5, #1
	strb r5, [r0]
	ldr r2, _0803C770
	ldr r4, _0803C774
	ldrh r3, [r4]
	movs r0, #0xc4
	muls r0, r3, r0
	adds r2, #0x34
	adds r0, r0, r2
	ldr r0, [r0]
	adds r0, r0, r1
	strb r5, [r0]
	ldr r2, _0803C778
	ldrh r1, [r4]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrb r1, [r0, #2]
	adds r1, #1
	strb r1, [r0, #2]
	ldr r1, _0803C77C
	ldrb r0, [r1, #0x1a]
	adds r0, #1
	strb r0, [r1, #0x1a]
	ldrb r1, [r1, #0x1a]
	movs r0, #0xe
	bl sub_08040204
	ldr r0, _0803C780
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803C742
	ldr r3, _0803C784
	movs r1, #0xa8
	lsls r1, r1, #1
	adds r0, r3, r1
	ldrh r0, [r0]
	ldr r2, _0803C788
	movs r4, #0xa9
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
_0803C742:
	movs r0, #0x59
	bl init_function
	movs r0, #0x86
	lsls r0, r0, #1
	movs r1, #0
	bl sub_80342CC
	cmp r0, #0
	beq _0803C764
	movs r0, #0xcc
	lsls r0, r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_8034460
_0803C764:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0803C76C: .4byte 0x0203E12F
_0803C770: .4byte 0x0203E440
_0803C774: .4byte gLoadedRoomLevel
_0803C778: .4byte 0x02000FCC
_0803C77C: .4byte gGameStatus
_0803C780: .4byte byte_203EA89
_0803C784: .4byte 0x080CE440
_0803C788: .4byte byte_203EA8C

	.thumb
sub_803C78C: @ 0x0803C78C
	ldr r1, _0803C794
	movs r0, #1
	strb r0, [r1]
	bx lr
	.align 2, 0
_0803C794: .4byte 0x0203E94D

	.thumb
sub_803C798: @ 0x0803C798
	ldr r1, _0803C7A0
	movs r0, #1
	strb r0, [r1]
	bx lr
	.align 2, 0
_0803C7A0: .4byte 0x0203E94C

	.thumb
sub_803C7A4: @ 0x0803C7A4
	push {lr}
	movs r0, #0x84
	bl init_function
	ldr r1, _0803C7C4
	movs r0, #0
	strb r0, [r1]
	movs r0, #0xf1
	movs r1, #0
	movs r2, #5
	movs r3, #0
	bl sub_8034460
	pop {r0}
	bx r0
	.align 2, 0
_0803C7C4: .4byte 0x0203E955

	.thumb
sub_803C7C8: @ 0x0803C7C8
	push {r4, r5, lr}
	ldr r0, _0803C850
	movs r5, #1
	strb r5, [r0]
	ldr r3, _0803C854
	ldr r4, _0803C858
	ldrh r2, [r4]
	lsls r0, r2, #4
	subs r0, r0, r2
	lsls r0, r0, #3
	adds r3, #0x60
	adds r0, r0, r3
	ldr r0, [r0]
	adds r0, r0, r1
	strb r5, [r0]
	ldr r2, _0803C85C
	ldrh r1, [r4]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrb r1, [r0, #0x10]
	adds r1, #1
	strb r1, [r0, #0x10]
	ldr r1, _0803C860
	ldrb r0, [r1, #0x1e]
	adds r0, #1
	strb r0, [r1, #0x1e]
	ldrb r1, [r1, #0x1e]
	movs r0, #0x12
	bl sub_08040204
	ldr r0, _0803C864
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803C838
	ldr r3, _0803C868
	movs r1, #0xa8
	lsls r1, r1, #1
	adds r0, r3, r1
	ldrh r0, [r0]
	ldr r2, _0803C86C
	movs r4, #0xa9
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
_0803C838:
	movs r0, #0xef
	movs r1, #0
	bl sub_80342CC
	cmp r0, #0
	beq _0803C84A
	movs r0, #0x90
	bl init_function
_0803C84A:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0803C850: .4byte 0x0203E133
_0803C854: .4byte 0x0203E170
_0803C858: .4byte gLoadedRoomLevel
_0803C85C: .4byte 0x02000FCC
_0803C860: .4byte gGameStatus
_0803C864: .4byte byte_203EA89
_0803C868: .4byte 0x080CE440
_0803C86C: .4byte byte_203EA8C

	.thumb
sub_803C870: @ 0x0803C870
	ldr r2, _0803C888
	ldr r0, _0803C88C
	ldrh r3, [r0]
	movs r0, #0xc4
	muls r0, r3, r0
	adds r2, #0x6c
	adds r0, r0, r2
	ldr r0, [r0]
	adds r0, r0, r1
	movs r1, #1
	strb r1, [r0]
	bx lr
	.align 2, 0
_0803C888: .4byte 0x0203E440
_0803C88C: .4byte gLoadedRoomLevel

	.thumb
sub_803C890: @ 0x0803C890
	push {r4, r5, r6, r7, lr}
	adds r6, r1, #0
	ldr r2, _0803C918
	ldr r3, _0803C91C
	ldrh r0, [r3]
	movs r4, #0xc4
	muls r0, r4, r0
	movs r1, #0x6c
	adds r1, r1, r2
	mov ip, r1
	add r0, ip
	ldr r0, [r0]
	adds r0, r0, r6
	movs r1, #1
	strb r1, [r0]
	movs r7, #1
	movs r5, #0
	ldrh r0, [r3]
	adds r1, r0, #0
	muls r1, r4, r1
	adds r0, r1, r2
	ldrb r0, [r0, #0x11]
	cmp r5, r0
	bge _0803C8EE
	mov r4, ip
	adds r0, r1, r4
	ldr r0, [r0]
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803C912
_0803C8CC:
	adds r5, #1
	ldrh r0, [r3]
	movs r1, #0xc4
	muls r1, r0, r1
	adds r0, r1, r2
	ldrb r0, [r0, #0x11]
	cmp r5, r0
	bge _0803C8EE
	adds r0, r2, #0
	adds r0, #0x6c
	adds r0, r1, r0
	ldr r0, [r0]
	adds r0, r0, r5
	ldrb r0, [r0]
	cmp r0, #0
	bne _0803C8CC
	movs r7, #0
_0803C8EE:
	cmp r7, #0
	beq _0803C912
	ldrh r1, [r3]
	movs r0, #0xc4
	muls r0, r1, r0
	adds r1, r2, #0
	adds r1, #0x6c
	adds r0, r0, r1
	ldr r0, [r0]
	adds r0, r0, r6
	movs r1, #0
	strb r1, [r0]
	movs r0, #0xf4
	adds r1, r6, #0
	movs r2, #0
	movs r3, #0
	bl sub_8034460
_0803C912:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803C918: .4byte 0x0203E440
_0803C91C: .4byte gLoadedRoomLevel

	.thumb
sub_803C920: @ 0x0803C920
	ldr r2, _0803C938
	ldr r0, _0803C93C
	ldrh r3, [r0]
	movs r0, #0xc4
	muls r0, r3, r0
	adds r2, #0x64
	adds r0, r0, r2
	ldr r0, [r0]
	adds r0, r0, r1
	movs r1, #1
	strb r1, [r0]
	bx lr
	.align 2, 0
_0803C938: .4byte 0x0203E440
_0803C93C: .4byte gLoadedRoomLevel

	.thumb
sub_803C940: @ 0x0803C940
	push {r4, r5, r6, r7, lr}
	adds r6, r1, #0
	ldr r2, _0803C9C8
	ldr r3, _0803C9CC
	ldrh r0, [r3]
	movs r4, #0xc4
	muls r0, r4, r0
	movs r1, #0x64
	adds r1, r1, r2
	mov ip, r1
	add r0, ip
	ldr r0, [r0]
	adds r0, r0, r6
	movs r1, #1
	strb r1, [r0]
	movs r7, #1
	movs r5, #0
	ldrh r0, [r3]
	adds r1, r0, #0
	muls r1, r4, r1
	adds r0, r1, r2
	ldrb r0, [r0, #0xf]
	cmp r5, r0
	bge _0803C99E
	mov r4, ip
	adds r0, r1, r4
	ldr r0, [r0]
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803C9C2
_0803C97C:
	adds r5, #1
	ldrh r0, [r3]
	movs r1, #0xc4
	muls r1, r0, r1
	adds r0, r1, r2
	ldrb r0, [r0, #0xf]
	cmp r5, r0
	bge _0803C99E
	adds r0, r2, #0
	adds r0, #0x64
	adds r0, r1, r0
	ldr r0, [r0]
	adds r0, r0, r5
	ldrb r0, [r0]
	cmp r0, #0
	bne _0803C97C
	movs r7, #0
_0803C99E:
	cmp r7, #0
	beq _0803C9C2
	ldrh r1, [r3]
	movs r0, #0xc4
	muls r0, r1, r0
	adds r1, r2, #0
	adds r1, #0x64
	adds r0, r0, r1
	ldr r0, [r0]
	adds r0, r0, r6
	movs r1, #0
	strb r1, [r0]
	movs r0, #0xf3
	adds r1, r6, #0
	movs r2, #0
	movs r3, #0
	bl sub_8034460
_0803C9C2:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803C9C8: .4byte 0x0203E440
_0803C9CC: .4byte gLoadedRoomLevel

	.thumb
sub_803C9D0: @ 0x0803C9D0
	push {lr}
	movs r0, #0x41
	bl init_function
	movs r0, #0xed
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_8034460
	pop {r0}
	bx r0

	.thumb
sub_803C9E8: @ 0x0803C9E8
	ldr r1, _0803C9F0
	movs r0, #1
	strb r0, [r1]
	bx lr
	.align 2, 0
_0803C9F0: .4byte 0x0203E94B

	.thumb
sub_803C9F4: @ 0x0803C9F4
	ldr r2, _0803CA0C
	ldr r0, _0803CA10
	ldrh r0, [r0]
	lsls r0, r0, #4
	adds r2, #8
	adds r0, r0, r2
	ldr r0, [r0]
	adds r0, r0, r1
	movs r1, #1
	strb r1, [r0]
	bx lr
	.align 2, 0
_0803CA0C: .4byte 0x0203E8D8
_0803CA10: .4byte gLoadedRoomLevel

	.thumb
sub_803CA14: @ 0x0803CA14
	ldr r2, _0803CA2C
	ldr r0, _0803CA30
	ldrh r0, [r0]
	lsls r0, r0, #4
	adds r2, #0xc
	adds r0, r0, r2
	ldr r0, [r0]
	adds r0, r0, r1
	movs r1, #1
	strb r1, [r0]
	bx lr
	.align 2, 0
_0803CA2C: .4byte 0x0203E8D8
_0803CA30: .4byte gLoadedRoomLevel

	.thumb
sub_803CA34: @ 0x0803CA34
	ldr r2, _0803CA4C
	ldr r0, _0803CA50
	ldrh r3, [r0]
	movs r0, #0xc4
	muls r0, r3, r0
	adds r2, #0x60
	adds r0, r0, r2
	ldr r0, [r0]
	adds r0, r0, r1
	movs r1, #1
	strb r1, [r0]
	bx lr
	.align 2, 0
_0803CA4C: .4byte 0x0203E440
_0803CA50: .4byte gLoadedRoomLevel

	.thumb
sub_803CA54: @ 0x0803CA54
	ldr r2, _0803CA6C
	ldr r0, _0803CA70
	ldrh r3, [r0]
	movs r0, #0xc4
	muls r0, r3, r0
	adds r2, #0x5c
	adds r0, r0, r2
	ldr r0, [r0]
	adds r0, r0, r1
	movs r1, #1
	strb r1, [r0]
	bx lr
	.align 2, 0
_0803CA6C: .4byte 0x0203E440
_0803CA70: .4byte gLoadedRoomLevel

	.thumb
sub_803CA74: @ 0x0803CA74
	ldr r2, _0803CA8C
	ldr r0, _0803CA90
	ldrh r3, [r0]
	movs r0, #0xc4
	muls r0, r3, r0
	adds r2, #0x70
	adds r0, r0, r2
	ldr r0, [r0]
	adds r0, r0, r1
	movs r1, #1
	strb r1, [r0]
	bx lr
	.align 2, 0
_0803CA8C: .4byte 0x0203E440
_0803CA90: .4byte gLoadedRoomLevel

	.thumb
sub_803CA94: @ 0x0803CA94
	push {lr}
	ldr r2, _0803CABC
	ldr r0, _0803CAC0
	ldrh r3, [r0]
	movs r0, #0xc4
	muls r0, r3, r0
	adds r2, #0x44
	adds r0, r0, r2
	ldr r0, [r0]
	adds r0, r0, r1
	movs r1, #1
	strb r1, [r0]
	ldr r0, _0803CAC4
	movs r1, #4
	movs r2, #4
	bl DmaTransferObjPalette
	pop {r0}
	bx r0
	.align 2, 0
_0803CABC: .4byte 0x0203E440
_0803CAC0: .4byte gLoadedRoomLevel
_0803CAC4: .4byte 0x083FD674

	.thumb
sub_803CAC8: @ 0x0803CAC8
	push {lr}
	ldr r2, _0803CAF0
	ldr r0, _0803CAF4
	ldrh r3, [r0]
	movs r0, #0xc4
	muls r0, r3, r0
	adds r2, #0x48
	adds r0, r0, r2
	ldr r0, [r0]
	adds r0, r0, r1
	movs r1, #1
	strb r1, [r0]
	ldr r0, _0803CAF8
	movs r1, #4
	movs r2, #4
	bl DmaTransferObjPalette
	pop {r0}
	bx r0
	.align 2, 0
_0803CAF0: .4byte 0x0203E440
_0803CAF4: .4byte gLoadedRoomLevel
_0803CAF8: .4byte 0x083FD694

	.thumb
sub_803CAFC: @ 0x0803CAFC
	push {lr}
	ldr r2, _0803CB24
	ldr r0, _0803CB28
	ldrh r3, [r0]
	movs r0, #0xc4
	muls r0, r3, r0
	adds r2, #0x4c
	adds r0, r0, r2
	ldr r0, [r0]
	adds r0, r0, r1
	movs r1, #1
	strb r1, [r0]
	ldr r0, _0803CB2C
	movs r1, #4
	movs r2, #4
	bl DmaTransferObjPalette
	pop {r0}
	bx r0
	.align 2, 0
_0803CB24: .4byte 0x0203E440
_0803CB28: .4byte gLoadedRoomLevel
_0803CB2C: .4byte 0x083FD6B4

	.thumb
sub_803CB30: @ 0x0803CB30
	push {lr}
	ldr r2, _0803CB58
	ldr r0, _0803CB5C
	ldrh r3, [r0]
	movs r0, #0xc4
	muls r0, r3, r0
	adds r2, #0x50
	adds r0, r0, r2
	ldr r0, [r0]
	adds r0, r0, r1
	movs r1, #1
	strb r1, [r0]
	ldr r0, _0803CB60
	movs r1, #4
	movs r2, #4
	bl DmaTransferObjPalette
	pop {r0}
	bx r0
	.align 2, 0
_0803CB58: .4byte 0x0203E440
_0803CB5C: .4byte gLoadedRoomLevel
_0803CB60: .4byte 0x083FD6D4

	.thumb
sub_803CB64: @ 0x0803CB64
	push {lr}
	ldr r2, _0803CBB8
	ldr r0, _0803CBBC
	ldrh r3, [r0]
	movs r0, #0xc4
	muls r0, r3, r0
	adds r2, #0x54
	adds r0, r0, r2
	ldr r0, [r0]
	adds r0, r0, r1
	movs r1, #1
	strb r1, [r0]
	ldr r0, _0803CBC0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_8034460
	movs r0, #0x62
	bl init_function
	ldr r1, _0803CBC4
	ldr r3, _0803CBC8
	ldr r2, _0803CBCC
	ldrh r0, [r2]
	lsls r0, r0, #3
	adds r0, r0, r3
	ldrh r0, [r0, #6]
	strh r0, [r1]
	ldr r0, _0803CBD0
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803CBB2
	ldrh r0, [r2]
	lsls r0, r0, #3
	adds r0, r0, r3
	ldrh r0, [r0, #6]
	bl audio_start_tune
_0803CBB2:
	pop {r0}
	bx r0
	.align 2, 0
_0803CBB8: .4byte 0x0203E440
_0803CBBC: .4byte gLoadedRoomLevel
_0803CBC0: .4byte 0x00000101
_0803CBC4: .4byte gLoadedRoomBgm
_0803CBC8: .4byte 0x080CF4EC
_0803CBCC: .4byte gLoadedRoomIndex
_0803CBD0: .4byte 0x0203EA88

	.thumb
sub_803CBD4: @ 0x0803CBD4
	ldr r1, _0803CBDC
	movs r0, #1
	strb r0, [r1]
	bx lr
	.align 2, 0
_0803CBDC: .4byte 0x0203E95B

	.thumb
sub_803CBE0: @ 0x0803CBE0
	push {r4, r5, r6, r7, lr}
	ldr r2, _0803CC54
	ldr r3, _0803CC58
	ldrh r0, [r3]
	movs r4, #0xc4
	muls r0, r4, r0
	adds r7, r2, #0
	adds r7, #0x58
	adds r0, r0, r7
	ldr r0, [r0]
	adds r0, r0, r1
	movs r1, #1
	strb r1, [r0]
	movs r6, #1
	movs r5, #0
	ldrh r0, [r3]
	adds r1, r0, #0
	muls r1, r4, r1
	adds r0, r1, r2
	ldrb r0, [r0, #0xc]
	cmp r5, r0
	bge _0803CC38
	adds r0, r1, r7
	ldr r0, [r0]
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803CC4E
_0803CC16:
	adds r5, #1
	ldrh r0, [r3]
	movs r1, #0xc4
	muls r1, r0, r1
	adds r0, r1, r2
	ldrb r0, [r0, #0xc]
	cmp r5, r0
	bge _0803CC38
	adds r0, r2, #0
	adds r0, #0x58
	adds r0, r1, r0
	ldr r0, [r0]
	adds r0, r0, r5
	ldrb r0, [r0]
	cmp r0, #0
	bne _0803CC16
	movs r6, #0
_0803CC38:
	cmp r6, #0
	beq _0803CC4E
	movs r0, #0xfa
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_8034460
	movs r0, #0x74
	bl init_function
_0803CC4E:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803CC54: .4byte 0x0203E440
_0803CC58: .4byte gLoadedRoomLevel

	.thumb
sub_803CC5C: @ 0x0803CC5C
	push {lr}
	movs r0, #0x75
	bl init_function
	ldr r1, _0803CC70
	movs r0, #1
	strb r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_0803CC70: .4byte 0x0203E94E

	.thumb
sub_803CC74: @ 0x0803CC74
	ldr r1, _0803CC7C
	movs r0, #1
	strb r0, [r1]
	bx lr
	.align 2, 0
_0803CC7C: .4byte 0x0203E94A

	.thumb
sub_803CC80: @ 0x0803CC80
	push {r4, r5, lr}
	ldr r0, _0803CD08
	movs r5, #1
	strb r5, [r0]
	ldr r3, _0803CD0C
	ldr r4, _0803CD10
	ldrh r2, [r4]
	lsls r0, r2, #4
	subs r0, r0, r2
	lsls r0, r0, #3
	adds r3, #0x5c
	adds r0, r0, r3
	ldr r0, [r0]
	adds r0, r0, r1
	strb r5, [r0]
	ldr r2, _0803CD14
	ldrh r1, [r4]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrb r1, [r0, #0xf]
	adds r1, #1
	strb r1, [r0, #0xf]
	ldr r1, _0803CD18
	ldrb r0, [r1, #0x1d]
	adds r0, #1
	strb r0, [r1, #0x1d]
	ldrb r1, [r1, #0x1d]
	movs r0, #0x11
	bl sub_08040204
	ldr r0, _0803CD1C
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803CCF0
	ldr r3, _0803CD20
	movs r1, #0xa8
	lsls r1, r1, #1
	adds r0, r3, r1
	ldrh r0, [r0]
	ldr r2, _0803CD24
	movs r4, #0xa9
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
_0803CCF0:
	ldr r0, _0803CD28
	movs r1, #0
	bl sub_80342CC
	cmp r0, #0
	beq _0803CD02
	movs r0, #0x82
	bl init_function
_0803CD02:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0803CD08: .4byte 0x0203E130
_0803CD0C: .4byte 0x0203E170
_0803CD10: .4byte gLoadedRoomLevel
_0803CD14: .4byte 0x02000FCC
_0803CD18: .4byte gGameStatus
_0803CD1C: .4byte byte_203EA89
_0803CD20: .4byte 0x080CE440
_0803CD24: .4byte byte_203EA8C
_0803CD28: .4byte 0x00000175

	.thumb
sub_803CD2C: @ 0x0803CD2C
	push {r4, r5, lr}
	ldr r0, _0803CDB4
	movs r5, #1
	strb r5, [r0]
	ldr r3, _0803CDB8
	ldr r4, _0803CDBC
	ldrh r2, [r4]
	lsls r0, r2, #4
	subs r0, r0, r2
	lsls r0, r0, #3
	adds r3, #0x3c
	adds r0, r0, r3
	ldr r0, [r0]
	adds r0, r0, r1
	strb r5, [r0]
	ldr r2, _0803CDC0
	ldrh r1, [r4]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrb r1, [r0, #3]
	adds r1, #1
	strb r1, [r0, #3]
	ldr r1, _0803CDC4
	ldrb r0, [r1, #0x18]
	adds r0, #1
	strb r0, [r1, #0x18]
	ldrb r1, [r1, #0x18]
	movs r0, #5
	bl sub_08040204
	ldr r0, _0803CDC8
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803CD9C
	ldr r3, _0803CDCC
	movs r1, #0xa8
	lsls r1, r1, #1
	adds r0, r3, r1
	ldrh r0, [r0]
	ldr r2, _0803CDD0
	movs r4, #0xa9
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
_0803CD9C:
	movs r0, #0xda
	movs r1, #0
	bl sub_80342CC
	cmp r0, #0
	beq _0803CDAE
	movs r0, #0x56
	bl init_function
_0803CDAE:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0803CDB4: .4byte 0x0203E12E
_0803CDB8: .4byte 0x0203E170
_0803CDBC: .4byte gLoadedRoomLevel
_0803CDC0: .4byte 0x02000FCC
_0803CDC4: .4byte gGameStatus
_0803CDC8: .4byte byte_203EA89
_0803CDCC: .4byte 0x080CE440
_0803CDD0: .4byte byte_203EA8C

	.thumb
sub_803CDD4: @ 0x0803CDD4
	push {lr}
	movs r0, #0x4b
	bl init_function
	ldr r0, _0803CDEC
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_8034460
	pop {r0}
	bx r0
	.align 2, 0
_0803CDEC: .4byte 0x00000105

	.thumb
sub_803CDF0: @ 0x0803CDF0
	ldr r1, _0803CDF8
	movs r0, #1
	strb r0, [r1]
	bx lr
	.align 2, 0
_0803CDF8: .4byte 0x0203E956

	.thumb
sub_803CDFC: @ 0x0803CDFC
	ldr r1, _0803CE04
	movs r0, #1
	strb r0, [r1]
	bx lr
	.align 2, 0
_0803CE04: .4byte 0x0203E957

	.thumb
sub_803CE08: @ 0x0803CE08
	push {lr}
	movs r0, #0x3e
	bl init_function
	ldr r0, _0803CE20
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_8034460
	pop {r0}
	bx r0
	.align 2, 0
_0803CE20: .4byte 0x00000107

	.thumb
sub_803CE24: @ 0x0803CE24
	push {r4, r5, lr}
	ldr r0, _0803CEAC
	movs r5, #1
	strb r5, [r0]
	ldr r3, _0803CEB0
	ldr r4, _0803CEB4
	ldrh r2, [r4]
	lsls r0, r2, #4
	subs r0, r0, r2
	lsls r0, r0, #3
	adds r3, #0x40
	adds r0, r0, r3
	ldr r0, [r0]
	adds r0, r0, r1
	strb r5, [r0]
	ldr r2, _0803CEB8
	ldrh r1, [r4]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrb r1, [r0, #4]
	adds r1, #1
	strb r1, [r0, #4]
	ldr r1, _0803CEBC
	ldrb r0, [r1, #0x19]
	adds r0, #1
	strb r0, [r1, #0x19]
	ldrb r1, [r1, #0x19]
	movs r0, #8
	bl sub_08040204
	ldr r0, _0803CEC0
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803CE94
	ldr r3, _0803CEC4
	movs r1, #0xa8
	lsls r1, r1, #1
	adds r0, r3, r1
	ldrh r0, [r0]
	ldr r2, _0803CEC8
	movs r4, #0xa9
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
_0803CE94:
	movs r0, #0xe1
	movs r1, #0
	bl sub_80342CC
	cmp r0, #0
	beq _0803CEA6
	movs r0, #0x47
	bl init_function
_0803CEA6:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0803CEAC: .4byte 0x0203E12D
_0803CEB0: .4byte 0x0203E170
_0803CEB4: .4byte gLoadedRoomLevel
_0803CEB8: .4byte 0x02000FCC
_0803CEBC: .4byte gGameStatus
_0803CEC0: .4byte byte_203EA89
_0803CEC4: .4byte 0x080CE440
_0803CEC8: .4byte byte_203EA8C

	.thumb
sub_803CECC: @ 0x0803CECC
	push {lr}
	movs r0, #0x54
	bl init_function
	ldr r0, _0803CEE4
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_8034460
	pop {r0}
	bx r0
	.align 2, 0
_0803CEE4: .4byte 0x00000109

	.thumb
sub_803CEE8: @ 0x0803CEE8
	ldr r1, _0803CEF0
	movs r0, #1
	strb r0, [r1]
	bx lr
	.align 2, 0
_0803CEF0: .4byte 0x0203E958

	.thumb
sub_803CEF4: @ 0x0803CEF4
	ldr r1, _0803CEFC
	movs r0, #1
	strb r0, [r1]
	bx lr
	.align 2, 0
_0803CEFC: .4byte 0x0203E949

	.thumb
sub_803CF00: @ 0x0803CF00
	push {r4, r5, lr}
	ldr r0, _0803CF78
	movs r5, #1
	strb r5, [r0]
	ldr r3, _0803CF7C
	ldr r4, _0803CF80
	ldrh r2, [r4]
	lsls r0, r2, #4
	subs r0, r0, r2
	lsls r0, r0, #3
	adds r3, #0x58
	adds r0, r0, r3
	ldr r0, [r0]
	adds r0, r0, r1
	strb r5, [r0]
	ldr r2, _0803CF84
	ldrh r1, [r4]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrb r1, [r0, #0xe]
	adds r1, #1
	strb r1, [r0, #0xe]
	ldr r1, _0803CF88
	ldrb r0, [r1, #0x1c]
	adds r0, #1
	strb r0, [r1, #0x1c]
	ldrb r1, [r1, #0x1c]
	movs r0, #0x10
	bl sub_08040204
	ldr r0, _0803CF8C
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803CF70
	ldr r3, _0803CF90
	movs r1, #0xa8
	lsls r1, r1, #1
	adds r0, r3, r1
	ldrh r0, [r0]
	ldr r2, _0803CF94
	movs r4, #0xa9
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
_0803CF70:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0803CF78: .4byte 0x0203E131
_0803CF7C: .4byte 0x0203E170
_0803CF80: .4byte gLoadedRoomLevel
_0803CF84: .4byte 0x02000FCC
_0803CF88: .4byte gGameStatus
_0803CF8C: .4byte byte_203EA89
_0803CF90: .4byte 0x080CE440
_0803CF94: .4byte byte_203EA8C

	.thumb
sub_803CF98: @ 0x0803CF98
	ldr r1, _0803CFA0
	movs r0, #1
	strb r0, [r1]
	bx lr
	.align 2, 0
_0803CFA0: .4byte 0x0203E942

	.thumb
sub_803CFA4: @ 0x0803CFA4
	ldr r1, _0803CFAC
	movs r0, #1
	strb r0, [r1]
	bx lr
	.align 2, 0
_0803CFAC: .4byte 0x0203E943

	.thumb
sub_803CFB0: @ 0x0803CFB0
	ldr r1, _0803CFB8
	movs r0, #1
	strb r0, [r1]
	bx lr
	.align 2, 0
_0803CFB8: .4byte 0x0203E944

	.thumb
sub_803CFBC: @ 0x0803CFBC
	ldr r1, _0803CFC4
	movs r0, #1
	strb r0, [r1]
	bx lr
	.align 2, 0
_0803CFC4: .4byte 0x0203E945

	.thumb
sub_803CFC8: @ 0x0803CFC8
	ldr r1, _0803CFD0
	movs r0, #1
	strb r0, [r1]
	bx lr
	.align 2, 0
_0803CFD0: .4byte 0x0203E946

	.thumb
sub_803CFD4: @ 0x0803CFD4
	ldr r1, _0803CFDC
	movs r0, #1
	strb r0, [r1]
	bx lr
	.align 2, 0
_0803CFDC: .4byte 0x0203E947

	.thumb
sub_803CFE0: @ 0x0803CFE0
	push {lr}
	movs r0, #0x71
	bl init_function
	ldr r1, _0803CFF4
	movs r0, #1
	strb r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_0803CFF4: .4byte 0x0203E945

	.thumb
sub_803CFF8: @ 0x0803CFF8
	push {lr}
	movs r0, #0x70
	bl init_function
	ldr r1, _0803D00C
	movs r0, #1
	strb r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_0803D00C: .4byte 0x0203E946

	.thumb
sub_803D010: @ 0x0803D010
	push {lr}
	movs r0, #0x72
	bl init_function
	ldr r1, _0803D030
	movs r0, #0
	strb r0, [r1]
	movs r0, #0xf6
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_8034460
	pop {r0}
	bx r0
	.align 2, 0
_0803D030: .4byte 0x0203E948

	.thumb
sub_803D034: @ 0x0803D034
	push {r4, lr}
	ldr r2, _0803D09C
	ldrb r0, [r2]
	cmp r0, #0
	bne _0803D0BC
	ldr r1, _0803D0A0
	movs r0, #1
	strb r0, [r1]
	strb r0, [r2]
	ldr r2, _0803D0A4
	ldr r0, _0803D0A8
	ldrh r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrb r1, [r0, #0xd]
	adds r1, #1
	strb r1, [r0, #0xd]
	ldr r1, _0803D0AC
	ldrb r0, [r1, #0x1b]
	adds r0, #1
	strb r0, [r1, #0x1b]
	ldrb r1, [r1, #0x1b]
	movs r0, #0xf
	bl sub_08040204
	ldr r0, _0803D0B0
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803D0C0
	ldr r3, _0803D0B4
	movs r1, #0xa8
	lsls r1, r1, #1
	adds r0, r3, r1
	ldrh r0, [r0]
	ldr r2, _0803D0B8
	movs r4, #0xa9
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
	b _0803D0C0
	.align 2, 0
_0803D09C: .4byte 0x0203E941
_0803D0A0: .4byte 0x0203E132
_0803D0A4: .4byte 0x02000FCC
_0803D0A8: .4byte gLoadedRoomLevel
_0803D0AC: .4byte gGameStatus
_0803D0B0: .4byte byte_203EA89
_0803D0B4: .4byte 0x080CE440
_0803D0B8: .4byte byte_203EA8C
_0803D0BC:
	.2byte 0xEE00, 0xEE00
_0803D0C0:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	.thumb
sub_803D0C8: @ 0x0803D0C8
	ldr r2, _0803D0E0
	ldr r0, _0803D0E4
	ldrh r3, [r0]
	movs r0, #0xc4
	muls r0, r3, r0
	adds r2, #0x3c
	adds r0, r0, r2
	ldr r0, [r0]
	adds r0, r0, r1
	movs r1, #1
	strb r1, [r0]
	bx lr
	.align 2, 0
_0803D0E0: .4byte 0x0203E440
_0803D0E4: .4byte gLoadedRoomLevel

	.thumb
sub_803D0E8: @ 0x0803D0E8
	push {r4, r5, r6, r7, lr}
	adds r6, r1, #0
	ldr r2, _0803D178
	ldr r3, _0803D17C
	ldrh r0, [r3]
	movs r4, #0xc4
	muls r0, r4, r0
	movs r1, #0x3c
	adds r1, r1, r2
	mov ip, r1
	add r0, ip
	ldr r0, [r0]
	adds r0, r0, r6
	movs r1, #1
	strb r1, [r0]
	movs r7, #1
	movs r5, #0
	ldrh r0, [r3]
	adds r1, r0, #0
	muls r1, r4, r1
	adds r0, r1, r2
	ldrb r0, [r0, #5]
	cmp r5, r0
	bge _0803D146
	mov r4, ip
	adds r0, r1, r4
	ldr r0, [r0]
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803D170
_0803D124:
	adds r5, #1
	ldrh r0, [r3]
	movs r1, #0xc4
	muls r1, r0, r1
	adds r0, r1, r2
	ldrb r0, [r0, #5]
	cmp r5, r0
	bge _0803D146
	adds r0, r2, #0
	adds r0, #0x3c
	adds r0, r1, r0
	ldr r0, [r0]
	adds r0, r0, r5
	ldrb r0, [r0]
	cmp r0, #0
	bne _0803D124
	movs r7, #0
_0803D146:
	cmp r7, #0
	beq _0803D170
	ldrh r1, [r3]
	movs r0, #0xc4
	muls r0, r1, r0
	adds r1, r2, #0
	adds r1, #0x3c
	adds r0, r0, r1
	ldr r0, [r0]
	adds r0, r0, r6
	movs r1, #0
	strb r1, [r0]
	movs r0, #0xf9
	adds r1, r6, #0
	movs r2, #0
	movs r3, #0
	bl sub_8034460
	movs r0, #0x73
	bl init_function
_0803D170:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803D178: .4byte 0x0203E440
_0803D17C: .4byte gLoadedRoomLevel

	.thumb
sub_803D180: @ 0x0803D180
	ldr r1, _0803D188
	movs r0, #1
	strb r0, [r1]
	bx lr
	.align 2, 0
_0803D188: .4byte 0x0203E972

	.thumb
sub_803D18C: @ 0x0803D18C
	ldr r1, _0803D194
	movs r0, #1
	strb r0, [r1]
	bx lr
	.align 2, 0
_0803D194: .4byte 0x0203E973

	.thumb
sub_803D198: @ 0x0803D198
	push {r4, r5, r6, r7, lr}
	ldr r4, _0803D220
	ldrb r0, [r4]
	adds r0, #1
	strb r0, [r4]
	ldr r6, _0803D224
	ldr r5, _0803D228
	ldrh r2, [r5]
	lsls r0, r2, #4
	subs r0, r0, r2
	lsls r0, r0, #3
	adds r2, r6, #0
	adds r2, #0x54
	adds r0, r0, r2
	ldr r0, [r0]
	adds r0, r0, r1
	movs r1, #1
	strb r1, [r0]
	ldr r0, _0803D22C
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803D1EC
	ldr r3, _0803D230
	movs r1, #0xa8
	lsls r1, r1, #1
	adds r0, r3, r1
	ldrh r0, [r0]
	ldr r2, _0803D234
	movs r7, #0xa9
	lsls r7, r7, #1
	adds r1, r3, r7
	ldrb r2, [r2]
	adds r1, r1, r2
	ldrb r1, [r1]
	adds r7, #2
	adds r2, r3, r7
	ldr r2, [r2]
	movs r3, #0x80
	lsls r3, r3, #9
	adds r2, r2, r3
	bl audio_new_fx
_0803D1EC:
	ldrh r1, [r5]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r6
	ldrb r1, [r0, #0xe]
	ldrb r0, [r4]
	subs r1, r1, r0
	movs r0, #0x36
	bl sub_08040204
	ldr r0, _0803D238
	movs r1, #0
	bl sub_80342CC
	cmp r0, #0
	beq _0803D27C
	movs r0, #0x36
	bl sub_0804200C
	ldrh r0, [r5]
	cmp r0, #3
	beq _0803D23C
	cmp r0, #5
	beq _0803D260
	b _0803D27C
	.align 2, 0
_0803D220: .4byte 0x0203E97D
_0803D224: .4byte 0x0203E170
_0803D228: .4byte gLoadedRoomLevel
_0803D22C: .4byte byte_203EA89
_0803D230: .4byte 0x080CE440
_0803D234: .4byte byte_203EA8C
_0803D238: .4byte 0x00000183
_0803D23C:
	ldr r0, _0803D258
	ldrb r0, [r0]
	cmp r0, #0
	bne _0803D27C
	movs r0, #0x68
	bl init_function
	ldr r0, _0803D25C
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_8034460
	b _0803D27C
	.align 2, 0
_0803D258: .4byte 0x0203E972
_0803D25C: .4byte 0x0000019D
_0803D260:
	ldr r0, _0803D284
	ldrb r0, [r0]
	cmp r0, #0
	bne _0803D27C
	movs r0, #0x94
	bl init_function
	movs r0, #0xcf
	lsls r0, r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_8034460
_0803D27C:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803D284: .4byte 0x0203E973

	.thumb
sub_803D288: @ 0x0803D288
	ldr r1, _0803D290
	movs r0, #0
	strb r0, [r1]
	bx lr
	.align 2, 0
_0803D290: .4byte byte_20020B2

	.thumb
sub_803D294: @ 0x0803D294
	ldr r2, _0803D2AC
	ldr r0, _0803D2B0
	ldrh r3, [r0]
	movs r0, #0xc4
	muls r0, r3, r0
	adds r2, #0x38
	adds r0, r0, r2
	ldr r0, [r0]
	adds r0, r0, r1
	movs r1, #1
	strb r1, [r0]
	bx lr
	.align 2, 0
_0803D2AC: .4byte 0x0203E440
_0803D2B0: .4byte gLoadedRoomLevel

	.thumb
sub_803D2B4: @ 0x0803D2B4
	ldr r0, _0803D2C0
	movs r1, #0
	strb r1, [r0]
	ldr r0, _0803D2C4
	strb r1, [r0]
	bx lr
	.align 2, 0
_0803D2C0: .4byte 0x0203E93F
_0803D2C4: .4byte 0x0203E10F

	.thumb
sub_803D2C8: @ 0x0803D2C8
	ldr r0, _0803D2D4
	movs r1, #1
	strb r1, [r0]
	ldr r0, _0803D2D8
	strb r1, [r0]
	bx lr
	.align 2, 0
_0803D2D4: .4byte 0x0203E93F
_0803D2D8: .4byte 0x0203E10F

	.thumb
sub_803D2DC: @ 0x0803D2DC
	ldr r1, _0803D2E4
	movs r0, #1
	strb r0, [r1]
	bx lr
	.align 2, 0
_0803D2E4: .4byte 0x0203E93D

	.thumb
sub_803D2E8: @ 0x0803D2E8
	push {lr}
	cmp r1, #6
	bls _0803D2F0
	b _0803D3DE
_0803D2F0:
	lsls r0, r1, #2
	ldr r1, _0803D2FC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0803D2FC: .4byte 0x0803D300
_0803D300: @ jump table
	.4byte _0803D31C @ case 0
	.4byte _0803D338 @ case 1
	.4byte _0803D354 @ case 2
	.4byte _0803D370 @ case 3
	.4byte _0803D38C @ case 4
	.4byte _0803D3A8 @ case 5
	.4byte _0803D3C8 @ case 6
_0803D31C:
	ldr r2, _0803D330
	ldrb r0, [r2]
	movs r1, #1
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _0803D334
	movs r2, #0
	ldrsh r1, [r0, r2]
	b _0803D3B8
	.align 2, 0
_0803D330: .4byte 0x0203E93A
_0803D334: .4byte 0x0203E9A0
_0803D338:
	ldr r2, _0803D34C
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _0803D350
	movs r2, #2
	ldrsh r1, [r0, r2]
	b _0803D3B8
	.align 2, 0
_0803D34C: .4byte 0x0203E93A
_0803D350: .4byte 0x0203E9A0
_0803D354:
	ldr r2, _0803D368
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _0803D36C
	movs r2, #4
	ldrsh r1, [r0, r2]
	b _0803D3B8
	.align 2, 0
_0803D368: .4byte 0x0203E93A
_0803D36C: .4byte 0x0203E9A0
_0803D370:
	ldr r2, _0803D384
	ldrb r0, [r2]
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _0803D388
	movs r2, #6
	ldrsh r1, [r0, r2]
	b _0803D3B8
	.align 2, 0
_0803D384: .4byte 0x0203E93A
_0803D388: .4byte 0x0203E9A0
_0803D38C:
	ldr r2, _0803D3A0
	ldrb r0, [r2]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _0803D3A4
	movs r2, #8
	ldrsh r1, [r0, r2]
	b _0803D3B8
	.align 2, 0
_0803D3A0: .4byte 0x0203E93A
_0803D3A4: .4byte 0x0203E9A0
_0803D3A8:
	ldr r2, _0803D3C0
	ldrb r0, [r2]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _0803D3C4
	movs r2, #0xa
	ldrsh r1, [r0, r2]
_0803D3B8:
	movs r0, #0x27
	bl sub_80342F8
	b _0803D3DE
	.align 2, 0
_0803D3C0: .4byte 0x0203E93A
_0803D3C4: .4byte 0x0203E9A0
_0803D3C8:
	ldr r2, _0803D3E4
	ldrb r0, [r2]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _0803D3E8
	movs r2, #0xc
	ldrsh r1, [r0, r2]
	movs r0, #0x27
	bl sub_80342F8
_0803D3DE:
	pop {r0}
	bx r0
	.align 2, 0
_0803D3E4: .4byte 0x0203E93A
_0803D3E8: .4byte 0x0203E9A0

	.thumb
sub_803D3EC: @ 0x0803D3EC
	push {lr}
	adds r0, r1, #0
	subs r0, #9
	cmp r0, #9
	bhi _0803D478
	lsls r0, r0, #2
	ldr r1, _0803D400
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0803D400: .4byte 0x0803D404
_0803D404: @ jump table
	.4byte _0803D42C @ case 0
	.4byte _0803D434 @ case 1
	.4byte _0803D43C @ case 2
	.4byte _0803D478 @ case 3
	.4byte _0803D444 @ case 4
	.4byte _0803D44C @ case 5
	.4byte _0803D454 @ case 6
	.4byte _0803D46C @ case 7
	.4byte _0803D45C @ case 8
	.4byte _0803D464 @ case 9
_0803D42C:
	ldr r1, _0803D430
	b _0803D46E
	.align 2, 0
_0803D430: .4byte 0x0203E938
_0803D434:
	ldr r1, _0803D438
	b _0803D46E
	.align 2, 0
_0803D438: .4byte 0x0203E939
_0803D43C:
	ldr r1, _0803D440
	b _0803D46E
	.align 2, 0
_0803D440: .4byte 0x0203E940
_0803D444:
	ldr r1, _0803D448
	b _0803D46E
	.align 2, 0
_0803D448: .4byte 0x0203E94F
_0803D44C:
	ldr r1, _0803D450
	b _0803D46E
	.align 2, 0
_0803D450: .4byte 0x0203E950
_0803D454:
	ldr r1, _0803D458
	b _0803D46E
	.align 2, 0
_0803D458: .4byte 0x0203E964
_0803D45C:
	ldr r1, _0803D460
	b _0803D46E
	.align 2, 0
_0803D460: .4byte 0x0203E965
_0803D464:
	ldr r1, _0803D468
	b _0803D46E
	.align 2, 0
_0803D468: .4byte 0x0203E966
_0803D46C:
	ldr r1, _0803D474
_0803D46E:
	movs r0, #1
	strb r0, [r1]
	b _0803D47C
	.align 2, 0
_0803D474: .4byte 0x0203E967
_0803D478:
	.2byte 0xEE00, 0xEE00
_0803D47C:
	pop {r0}
	bx r0

	.thumb
sub_803D480: @ 0x0803D480
	ldr r2, _0803D498
	ldr r0, _0803D49C
	ldrh r0, [r0]
	lsls r0, r0, #4
	adds r2, #4
	adds r0, r0, r2
	ldr r0, [r0]
	adds r0, r0, r1
	movs r1, #1
	strb r1, [r0]
	bx lr
	.align 2, 0
_0803D498: .4byte 0x0203E8D8
_0803D49C: .4byte gLoadedRoomLevel

	.thumb
sub_803D4A0: @ 0x0803D4A0
	ldr r1, _0803D4A8
	movs r0, #1
	strb r0, [r1]
	bx lr
	.align 2, 0
_0803D4A8: .4byte 0x0203E93E

	.thumb
sub_803D4AC: @ 0x0803D4AC
	push {lr}
	ldr r3, _0803D4DC
	ldr r1, _0803D4E0
	ldrb r0, [r3]
	ldrb r1, [r1]
	cmp r0, r1
	beq _0803D4D8
	ldr r2, _0803D4E4
	ldr r1, _0803D4E8
	adds r0, r0, r1
	ldrb r1, [r2]
	ldrb r0, [r0]
	cmp r1, r0
	blo _0803D4D8
	movs r0, #0x29
	bl init_function
	ldr r0, _0803D4EC
	movs r1, #1
	strb r1, [r0]
	ldr r0, _0803D4F0
	strb r1, [r0]
_0803D4D8:
	pop {r0}
	bx r0
	.align 2, 0
_0803D4DC: .4byte 0x0200107E
_0803D4E0: .4byte 0x0200107F
_0803D4E4: .4byte gGameStatus
_0803D4E8: .4byte 0x080CC8EC
_0803D4EC: .4byte 0x0203E93F
_0803D4F0: .4byte 0x0203E10F

	.thumb
sub_803D4F4: @ 0x0803D4F4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _0803D588
	ldr r6, _0803D58C
	ldrb r1, [r0]
	adds r7, r0, #0
	ldrb r0, [r6]
	cmp r1, r0
	beq _0803D5CE
	ldrb r4, [r7]
	ldr r0, _0803D590
	ldr r5, _0803D594
	adds r1, r4, r5
	ldrb r2, [r0, #1]
	adds r3, r0, #0
	ldrb r1, [r1]
	cmp r2, r1
	blo _0803D532
	ldrb r1, [r6]
	cmp r4, r1
	beq _0803D532
	adds r1, r2, #0
_0803D522:
	adds r4, #1
	adds r0, r4, r5
	ldrb r0, [r0]
	cmp r1, r0
	blo _0803D532
	ldrb r0, [r6]
	cmp r4, r0
	bne _0803D522
_0803D532:
	ldrb r0, [r7]
	subs r0, r4, r0
	ldrb r1, [r3, #0x15]
	adds r0, r0, r1
	strb r0, [r3, #0x15]
	strb r0, [r3, #0x13]
	movs r5, #0
	ldrb r0, [r7]
	subs r0, r4, r0
	lsls r3, r4, #0x18
	mov r8, r3
	cmp r5, r0
	bge _0803D55C
	adds r6, r7, #0
_0803D54E:
	bl sub_80407F8
	adds r5, #1
	ldrb r0, [r6]
	subs r0, r4, r0
	cmp r5, r0
	blt _0803D54E
_0803D55C:
	ldr r0, _0803D590
	ldrb r1, [r0, #0x13]
	movs r0, #0x38
	bl sub_08040204
	ldr r2, _0803D588
	strb r4, [r2]
	ldr r1, _0803D58C
	mov r4, r8
	lsrs r0, r4, #0x18
	ldrb r1, [r1]
	cmp r0, r1
	beq _0803D598
	ldr r0, _0803D594
	ldrb r1, [r2]
	adds r1, r1, r0
	ldrb r1, [r1]
	movs r0, #0x28
	bl sub_08040204
	b _0803D59E
	.align 2, 0
_0803D588: .4byte 0x0200107C
_0803D58C: .4byte 0x0200107D
_0803D590: .4byte gGameStatus
_0803D594: .4byte 0x080CC8E4
_0803D598:
	movs r0, #0x28
	bl sub_0804200C
_0803D59E:
	ldr r0, _0803D5D8
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803D5CE
	ldr r3, _0803D5DC
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r3, r1
	ldrh r0, [r0]
	ldr r2, _0803D5E0
	movs r4, #0xa5
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
_0803D5CE:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803D5D8: .4byte byte_203EA89
_0803D5DC: .4byte 0x080CE440
_0803D5E0: .4byte byte_203EA8C

	.thumb
sub_803D5E4: @ 0x0803D5E4
	push {r4, lr}
	ldr r2, _0803D634
	ldr r0, _0803D638
	ldrh r3, [r0]
	movs r0, #0xc4
	muls r0, r3, r0
	adds r2, #0x28
	adds r0, r0, r2
	ldr r0, [r0]
	adds r0, r0, r1
	movs r1, #1
	strb r1, [r0]
	ldr r0, _0803D63C
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803D62C
	ldr r3, _0803D640
	movs r1, #0xf0
	lsls r1, r1, #1
	adds r0, r3, r1
	ldrh r0, [r0]
	ldr r2, _0803D644
	movs r4, #0xf1
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
_0803D62C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803D634: .4byte 0x0203E440
_0803D638: .4byte gLoadedRoomLevel
_0803D63C: .4byte byte_203EA89
_0803D640: .4byte 0x080CE440
_0803D644: .4byte byte_203EA8C

	.thumb
sub_803D648: @ 0x0803D648
	push {r4, lr}
	ldr r2, _0803D698
	ldr r0, _0803D69C
	ldrh r3, [r0]
	movs r0, #0xc4
	muls r0, r3, r0
	adds r2, #0x2c
	adds r0, r0, r2
	ldr r0, [r0]
	adds r0, r0, r1
	movs r1, #1
	strb r1, [r0]
	ldr r0, _0803D6A0
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803D690
	ldr r3, _0803D6A4
	movs r1, #0xf0
	lsls r1, r1, #1
	adds r0, r3, r1
	ldrh r0, [r0]
	ldr r2, _0803D6A8
	movs r4, #0xf1
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
_0803D690:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803D698: .4byte 0x0203E440
_0803D69C: .4byte gLoadedRoomLevel
_0803D6A0: .4byte byte_203EA89
_0803D6A4: .4byte 0x080CE440
_0803D6A8: .4byte byte_203EA8C

	.thumb
sub_803D6AC: @ 0x0803D6AC
	push {r4, lr}
	ldr r2, _0803D6FC
	ldr r0, _0803D700
	ldrh r3, [r0]
	movs r0, #0xc4
	muls r0, r3, r0
	adds r2, #0x30
	adds r0, r0, r2
	ldr r0, [r0]
	adds r0, r0, r1
	movs r1, #1
	strb r1, [r0]
	ldr r0, _0803D704
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803D6F4
	ldr r3, _0803D708
	movs r1, #0xf0
	lsls r1, r1, #1
	adds r0, r3, r1
	ldrh r0, [r0]
	ldr r2, _0803D70C
	movs r4, #0xf1
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
_0803D6F4:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803D6FC: .4byte 0x0203E440
_0803D700: .4byte gLoadedRoomLevel
_0803D704: .4byte byte_203EA89
_0803D708: .4byte 0x080CE440
_0803D70C: .4byte byte_203EA8C

	.thumb
sub_803D710: @ 0x0803D710
	push {r4, r5, r6, lr}
	adds r4, r1, #0
	ldr r0, _0803D7A4
	movs r3, #1
	strb r3, [r0]
	ldr r2, _0803D7A8
	ldr r5, _0803D7AC
	ldrh r1, [r5]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r2, #0x1c
	adds r0, r0, r2
	ldr r0, [r0]
	adds r0, r0, r4
	strb r3, [r0]
	ldr r2, _0803D7B0
	ldrh r1, [r5]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrb r1, [r0]
	adds r1, #1
	strb r1, [r0]
	ldr r1, _0803D7B4
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldrh r1, [r5]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrb r1, [r0]
	movs r0, #1
	bl sub_08040204
	ldr r0, _0803D7B8
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803D78C
	ldr r3, _0803D7BC
	movs r1, #0x98
	lsls r1, r1, #1
	adds r0, r3, r1
	ldrh r0, [r0]
	ldr r2, _0803D7C0
	movs r6, #0x99
	lsls r6, r6, #1
	adds r1, r3, r6
	ldrb r2, [r2]
	adds r1, r1, r2
	ldrb r1, [r1]
	adds r6, #2
	adds r2, r3, r6
	ldr r2, [r2]
	movs r3, #0x80
	lsls r3, r3, #9
	adds r2, r2, r3
	bl audio_new_fx
_0803D78C:
	ldr r1, _0803D7C4
	ldrh r2, [r5]
	lsls r0, r2, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	cmp r4, r0
	bne _0803D7C8
	movs r0, #0
	bl sub_80186F4
	b _0803D7DA
	.align 2, 0
_0803D7A4: .4byte 0x0203E128
_0803D7A8: .4byte 0x0203E170
_0803D7AC: .4byte gLoadedRoomLevel
_0803D7B0: .4byte 0x02000FCC
_0803D7B4: .4byte gGameStatus
_0803D7B8: .4byte byte_203EA89
_0803D7BC: .4byte 0x080CE440
_0803D7C0: .4byte byte_203EA8C
_0803D7C4: .4byte 0x0203E988
_0803D7C8:
	ldr r0, _0803D7E0
	ldrh r0, [r0]
	cmp r4, r0
	bne _0803D7DA
	cmp r2, #0
	bne _0803D7DA
	movs r0, #0
	bl sub_80186F4
_0803D7DA:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0803D7E0: .4byte 0x0203E994

	.thumb
sub_803D7E4: @ 0x0803D7E4
	push {r4, r5, lr}
	adds r5, r1, #0
	ldr r0, _0803D874
	movs r4, #1
	strb r4, [r0]
	ldr r1, _0803D878
	ldrb r0, [r1]
	cmp r0, #0
	bne _0803D806
	strb r4, [r1]
	ldr r0, _0803D87C
	ldr r1, _0803D880
	ldrh r1, [r1]
	strb r1, [r0]
	movs r0, #0x34
	bl init_function
_0803D806:
	ldr r2, _0803D884
	ldr r3, _0803D880
	ldrh r1, [r3]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r2, #0x20
	adds r0, r0, r2
	ldr r0, [r0]
	adds r0, r0, r5
	strb r4, [r0]
	ldr r2, _0803D888
	ldrh r1, [r3]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrb r1, [r0, #1]
	adds r1, #1
	strb r1, [r0, #1]
	ldr r1, _0803D88C
	ldrb r0, [r1, #1]
	adds r0, #1
	strb r0, [r1, #1]
	ldrb r1, [r1, #1]
	movs r0, #6
	bl sub_08040204
	ldr r0, _0803D890
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803D86E
	ldr r3, _0803D894
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r3, r1
	ldrh r0, [r0]
	ldr r2, _0803D898
	movs r4, #0xa5
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
_0803D86E:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0803D874: .4byte 0x0203E126
_0803D878: .4byte 0x0203E968
_0803D87C: .4byte 0x0203E134
_0803D880: .4byte gLoadedRoomLevel
_0803D884: .4byte 0x0203E170
_0803D888: .4byte 0x02000FCC
_0803D88C: .4byte gGameStatus
_0803D890: .4byte byte_203EA89
_0803D894: .4byte 0x080CE440
_0803D898: .4byte byte_203EA8C

	.thumb
sub_803D89C: @ 0x0803D89C
	push {r4, r5, r6, lr}
	ldr r0, _0803D940
	movs r4, #1
	strb r4, [r0]
	ldr r3, _0803D944
	ldr r5, _0803D948
	ldrh r2, [r5]
	lsls r0, r2, #4
	subs r0, r0, r2
	lsls r0, r0, #3
	adds r3, #0x24
	adds r0, r0, r3
	ldr r0, [r0]
	adds r0, r0, r1
	strb r4, [r0]
	ldr r4, _0803D94C
	ldrh r1, [r5]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r4
	ldrh r1, [r0, #6]
	adds r1, #1
	strh r1, [r0, #6]
	ldr r1, _0803D950
	ldrh r0, [r1, #0xc]
	adds r0, #1
	strh r0, [r1, #0xc]
	ldrh r1, [r5]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r4
	ldrh r1, [r0, #6]
	movs r0, #0
	bl sub_08040204
	ldr r0, _0803D954
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803D916
	ldr r3, _0803D958
	movs r1, #0x8c
	lsls r1, r1, #1
	adds r0, r3, r1
	ldrh r0, [r0]
	ldr r2, _0803D95C
	movs r6, #0x8d
	lsls r6, r6, #1
	adds r1, r3, r6
	ldrb r2, [r2]
	adds r1, r1, r2
	ldrb r1, [r1]
	adds r6, #2
	adds r2, r3, r6
	ldr r2, [r2]
	movs r3, #0x80
	lsls r3, r3, #9
	adds r2, r2, r3
	bl audio_new_fx
_0803D916:
	ldrh r1, [r5]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r2, r0, r4
	ldr r1, _0803D960
	adds r0, r0, r1
	ldrh r1, [r2, #6]
	ldrh r0, [r0, #6]
	cmp r1, r0
	bne _0803D938
	movs r0, #0x3b
	bl init_function
	ldr r1, _0803D964
	ldrh r0, [r5]
	strb r0, [r1]
_0803D938:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0803D940: .4byte 0x0203E127
_0803D944: .4byte 0x0203E170
_0803D948: .4byte gLoadedRoomLevel
_0803D94C: .4byte 0x02000FCC
_0803D950: .4byte gGameStatus
_0803D954: .4byte byte_203EA89
_0803D958: .4byte 0x080CE440
_0803D95C: .4byte byte_203EA8C
_0803D960: .4byte 0x080CC84C
_0803D964: .4byte 0x0203E135

	.thumb
sub_803D968: @ 0x0803D968
	push {r4, r5, r6, lr}
	ldr r0, _0803DA0C
	movs r4, #1
	strb r4, [r0]
	ldr r3, _0803DA10
	ldr r5, _0803DA14
	ldrh r2, [r5]
	lsls r0, r2, #4
	subs r0, r0, r2
	lsls r0, r0, #3
	adds r3, #0x28
	adds r0, r0, r3
	ldr r0, [r0]
	adds r0, r0, r1
	strb r4, [r0]
	ldr r4, _0803DA18
	ldrh r1, [r5]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r4
	ldrh r1, [r0, #6]
	adds r1, #5
	strh r1, [r0, #6]
	ldr r1, _0803DA1C
	ldrh r0, [r1, #0xc]
	adds r0, #5
	strh r0, [r1, #0xc]
	ldrh r1, [r5]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r4
	ldrh r1, [r0, #6]
	movs r0, #0
	bl sub_08040204
	ldr r0, _0803DA20
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803D9E2
	ldr r3, _0803DA24
	movs r1, #0x90
	lsls r1, r1, #1
	adds r0, r3, r1
	ldrh r0, [r0]
	ldr r2, _0803DA28
	movs r6, #0x91
	lsls r6, r6, #1
	adds r1, r3, r6
	ldrb r2, [r2]
	adds r1, r1, r2
	ldrb r1, [r1]
	adds r6, #2
	adds r2, r3, r6
	ldr r2, [r2]
	movs r3, #0x80
	lsls r3, r3, #9
	adds r2, r2, r3
	bl audio_new_fx
_0803D9E2:
	ldrh r1, [r5]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r2, r0, r4
	ldr r1, _0803DA2C
	adds r0, r0, r1
	ldrh r1, [r2, #6]
	ldrh r0, [r0, #6]
	cmp r1, r0
	bne _0803DA04
	movs r0, #0x3b
	bl init_function
	ldr r1, _0803DA30
	ldrh r0, [r5]
	strb r0, [r1]
_0803DA04:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0803DA0C: .4byte 0x0203E127
_0803DA10: .4byte 0x0203E170
_0803DA14: .4byte gLoadedRoomLevel
_0803DA18: .4byte 0x02000FCC
_0803DA1C: .4byte gGameStatus
_0803DA20: .4byte byte_203EA89
_0803DA24: .4byte 0x080CE440
_0803DA28: .4byte byte_203EA8C
_0803DA2C: .4byte 0x080CC84C
_0803DA30: .4byte 0x0203E135

	.thumb
sub_803DA34: @ 0x0803DA34
	push {r4, r5, r6, lr}
	ldr r0, _0803DAD8
	movs r4, #1
	strb r4, [r0]
	ldr r3, _0803DADC
	ldr r5, _0803DAE0
	ldrh r2, [r5]
	lsls r0, r2, #4
	subs r0, r0, r2
	lsls r0, r0, #3
	adds r3, #0x2c
	adds r0, r0, r3
	ldr r0, [r0]
	adds r0, r0, r1
	strb r4, [r0]
	ldr r4, _0803DAE4
	ldrh r1, [r5]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r4
	ldrh r1, [r0, #6]
	adds r1, #0x14
	strh r1, [r0, #6]
	ldr r1, _0803DAE8
	ldrh r0, [r1, #0xc]
	adds r0, #0x14
	strh r0, [r1, #0xc]
	ldrh r1, [r5]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r4
	ldrh r1, [r0, #6]
	movs r0, #0
	bl sub_08040204
	ldr r0, _0803DAEC
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803DAAE
	ldr r3, _0803DAF0
	movs r1, #0x94
	lsls r1, r1, #1
	adds r0, r3, r1
	ldrh r0, [r0]
	ldr r2, _0803DAF4
	movs r6, #0x95
	lsls r6, r6, #1
	adds r1, r3, r6
	ldrb r2, [r2]
	adds r1, r1, r2
	ldrb r1, [r1]
	adds r6, #2
	adds r2, r3, r6
	ldr r2, [r2]
	movs r3, #0x80
	lsls r3, r3, #9
	adds r2, r2, r3
	bl audio_new_fx
_0803DAAE:
	ldrh r1, [r5]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r2, r0, r4
	ldr r1, _0803DAF8
	adds r0, r0, r1
	ldrh r1, [r2, #6]
	ldrh r0, [r0, #6]
	cmp r1, r0
	bne _0803DAD0
	movs r0, #0x3b
	bl init_function
	ldr r1, _0803DAFC
	ldrh r0, [r5]
	strb r0, [r1]
_0803DAD0:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0803DAD8: .4byte 0x0203E127
_0803DADC: .4byte 0x0203E170
_0803DAE0: .4byte gLoadedRoomLevel
_0803DAE4: .4byte 0x02000FCC
_0803DAE8: .4byte gGameStatus
_0803DAEC: .4byte byte_203EA89
_0803DAF0: .4byte 0x080CE440
_0803DAF4: .4byte byte_203EA8C
_0803DAF8: .4byte 0x080CC84C
_0803DAFC: .4byte 0x0203E135

	.thumb
sub_803DB00: @ 0x0803DB00
	push {r4, lr}
	ldr r0, _0803DC00
	movs r2, #1
	strb r2, [r0]
	ldr r1, _0803DC04
	ldrb r0, [r1]
	cmp r0, #0
	bne _0803DB20
	strb r2, [r1]
	ldr r0, _0803DC08
	ldr r1, _0803DC0C
	ldrh r1, [r1]
	strb r1, [r0]
	movs r0, #0x37
	bl init_function
_0803DB20:
	ldr r3, _0803DC10
	ldr r2, _0803DC0C
	ldrh r1, [r2]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r3
	adds r0, #0x70
	movs r1, #1
	strb r1, [r0]
	ldr r3, _0803DC14
	ldrh r1, [r2]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r3
	ldrb r1, [r0, #5]
	adds r1, #1
	strb r1, [r0, #5]
	ldr r1, _0803DC18
	ldrb r0, [r1, #0xb]
	adds r0, #1
	strb r0, [r1, #0xb]
	ldrh r1, [r2]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r3
	ldrb r1, [r0, #5]
	movs r0, #7
	bl sub_08040204
	ldr r4, _0803DC1C
	ldrb r0, [r4]
	cmp r0, #0
	beq _0803DB9E
	ldr r0, _0803DC20
	ldr r0, [r0]
	bl audio_halt_fx
	ldrb r0, [r4]
	cmp r0, #0
	beq _0803DB9E
	ldr r3, _0803DC24
	movs r1, #0x84
	lsls r1, r1, #1
	adds r0, r3, r1
	ldrh r0, [r0]
	ldr r2, _0803DC28
	movs r4, #0x85
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
_0803DB9E:
	ldr r1, _0803DC2C
	ldr r3, _0803DC0C
	ldrh r0, [r3]
	adds r0, r0, r1
	movs r2, #0
	movs r1, #1
	strb r1, [r0]
	ldr r1, _0803DC30
	ldrh r0, [r3]
	adds r0, r0, r1
	strb r2, [r0]
	ldr r2, _0803DC34
	ldrh r1, [r3]
	adds r1, r1, r2
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldrh r0, [r3]
	adds r2, r0, r2
	ldr r1, _0803DC38
	lsls r3, r0, #2
	adds r0, r3, r0
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrb r1, [r2]
	ldrb r0, [r0, #5]
	cmp r1, r0
	bne _0803DBFA
	ldr r0, _0803DC3C
	adds r0, r3, r0
	ldr r0, [r0]
	bl init_function
	movs r0, #0x88
	lsls r0, r0, #1
	movs r1, #0
	bl sub_80342CC
	cmp r0, #0
	bne _0803DBFA
	ldr r0, _0803DC40
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_8034460
_0803DBFA:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803DC00: .4byte 0x0203E129
_0803DC04: .4byte 0x0203E96B
_0803DC08: .4byte 0x0203E134
_0803DC0C: .4byte gLoadedRoomLevel
_0803DC10: .4byte 0x0203E170
_0803DC14: .4byte 0x02000FCC
_0803DC18: .4byte gGameStatus
_0803DC1C: .4byte byte_203EA89
_0803DC20: .4byte 0x0203DFCC
_0803DC24: .4byte 0x080CE440
_0803DC28: .4byte byte_203EA8C
_0803DC2C: .4byte 0x0203E110
_0803DC30: .4byte 0x0203E11C
_0803DC34: .4byte 0x0203E116
_0803DC38: .4byte 0x080CC84C
_0803DC3C: .4byte 0x080CEE44
_0803DC40: .4byte 0x00000111

	.thumb
sub_803DC44: @ 0x0803DC44
	push {r4, lr}
	ldr r0, _0803DD44
	movs r2, #1
	strb r2, [r0]
	ldr r1, _0803DD48
	ldrb r0, [r1]
	cmp r0, #0
	bne _0803DC64
	strb r2, [r1]
	ldr r0, _0803DD4C
	ldr r1, _0803DD50
	ldrh r1, [r1]
	strb r1, [r0]
	movs r0, #0x37
	bl init_function
_0803DC64:
	ldr r3, _0803DD54
	ldr r2, _0803DD50
	ldrh r1, [r2]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r3
	adds r0, #0x71
	movs r1, #1
	strb r1, [r0]
	ldr r3, _0803DD58
	ldrh r1, [r2]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r3
	ldrb r1, [r0, #5]
	adds r1, #1
	strb r1, [r0, #5]
	ldr r1, _0803DD5C
	ldrb r0, [r1, #0xb]
	adds r0, #1
	strb r0, [r1, #0xb]
	ldrh r1, [r2]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r3
	ldrb r1, [r0, #5]
	movs r0, #7
	bl sub_08040204
	ldr r4, _0803DD60
	ldrb r0, [r4]
	cmp r0, #0
	beq _0803DCE2
	ldr r0, _0803DD64
	ldr r0, [r0]
	bl audio_halt_fx
	ldrb r0, [r4]
	cmp r0, #0
	beq _0803DCE2
	ldr r3, _0803DD68
	movs r1, #0x84
	lsls r1, r1, #1
	adds r0, r3, r1
	ldrh r0, [r0]
	ldr r2, _0803DD6C
	movs r4, #0x85
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
_0803DCE2:
	ldr r1, _0803DD70
	ldr r3, _0803DD50
	ldrh r0, [r3]
	adds r0, r0, r1
	movs r2, #0
	movs r1, #2
	strb r1, [r0]
	ldr r1, _0803DD74
	ldrh r0, [r3]
	adds r0, r0, r1
	strb r2, [r0]
	ldr r2, _0803DD78
	ldrh r1, [r3]
	adds r1, r1, r2
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldrh r0, [r3]
	adds r2, r0, r2
	ldr r1, _0803DD7C
	lsls r3, r0, #2
	adds r0, r3, r0
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrb r1, [r2]
	ldrb r0, [r0, #5]
	cmp r1, r0
	bne _0803DD3E
	ldr r0, _0803DD80
	adds r0, r3, r0
	ldr r0, [r0]
	bl init_function
	movs r0, #0x88
	lsls r0, r0, #1
	movs r1, #0
	bl sub_80342CC
	cmp r0, #0
	bne _0803DD3E
	ldr r0, _0803DD84
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_8034460
_0803DD3E:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803DD44: .4byte 0x0203E129
_0803DD48: .4byte 0x0203E96B
_0803DD4C: .4byte 0x0203E134
_0803DD50: .4byte gLoadedRoomLevel
_0803DD54: .4byte 0x0203E170
_0803DD58: .4byte 0x02000FCC
_0803DD5C: .4byte gGameStatus
_0803DD60: .4byte byte_203EA89
_0803DD64: .4byte 0x0203DFCC
_0803DD68: .4byte 0x080CE440
_0803DD6C: .4byte byte_203EA8C
_0803DD70: .4byte 0x0203E110
_0803DD74: .4byte 0x0203E11C
_0803DD78: .4byte 0x0203E116
_0803DD7C: .4byte 0x080CC84C
_0803DD80: .4byte 0x080CEE44
_0803DD84: .4byte 0x00000111

	.thumb
sub_803DD88: @ 0x0803DD88
	push {r4, lr}
	ldr r0, _0803DE88
	movs r2, #1
	strb r2, [r0]
	ldr r1, _0803DE8C
	ldrb r0, [r1]
	cmp r0, #0
	bne _0803DDA8
	strb r2, [r1]
	ldr r0, _0803DE90
	ldr r1, _0803DE94
	ldrh r1, [r1]
	strb r1, [r0]
	movs r0, #0x37
	bl init_function
_0803DDA8:
	ldr r3, _0803DE98
	ldr r2, _0803DE94
	ldrh r1, [r2]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r3
	adds r0, #0x72
	movs r1, #1
	strb r1, [r0]
	ldr r3, _0803DE9C
	ldrh r1, [r2]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r3
	ldrb r1, [r0, #5]
	adds r1, #1
	strb r1, [r0, #5]
	ldr r1, _0803DEA0
	ldrb r0, [r1, #0xb]
	adds r0, #1
	strb r0, [r1, #0xb]
	ldrh r1, [r2]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r3
	ldrb r1, [r0, #5]
	movs r0, #7
	bl sub_08040204
	ldr r4, _0803DEA4
	ldrb r0, [r4]
	cmp r0, #0
	beq _0803DE26
	ldr r0, _0803DEA8
	ldr r0, [r0]
	bl audio_halt_fx
	ldrb r0, [r4]
	cmp r0, #0
	beq _0803DE26
	ldr r3, _0803DEAC
	movs r1, #0x84
	lsls r1, r1, #1
	adds r0, r3, r1
	ldrh r0, [r0]
	ldr r2, _0803DEB0
	movs r4, #0x85
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
_0803DE26:
	ldr r1, _0803DEB4
	ldr r3, _0803DE94
	ldrh r0, [r3]
	adds r0, r0, r1
	movs r2, #0
	movs r1, #3
	strb r1, [r0]
	ldr r1, _0803DEB8
	ldrh r0, [r3]
	adds r0, r0, r1
	strb r2, [r0]
	ldr r2, _0803DEBC
	ldrh r1, [r3]
	adds r1, r1, r2
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldrh r0, [r3]
	adds r2, r0, r2
	ldr r1, _0803DEC0
	lsls r3, r0, #2
	adds r0, r3, r0
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrb r1, [r2]
	ldrb r0, [r0, #5]
	cmp r1, r0
	bne _0803DE82
	ldr r0, _0803DEC4
	adds r0, r3, r0
	ldr r0, [r0]
	bl init_function
	movs r0, #0x88
	lsls r0, r0, #1
	movs r1, #0
	bl sub_80342CC
	cmp r0, #0
	bne _0803DE82
	ldr r0, _0803DEC8
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_8034460
_0803DE82:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803DE88: .4byte 0x0203E129
_0803DE8C: .4byte 0x0203E96B
_0803DE90: .4byte 0x0203E134
_0803DE94: .4byte gLoadedRoomLevel
_0803DE98: .4byte 0x0203E170
_0803DE9C: .4byte 0x02000FCC
_0803DEA0: .4byte gGameStatus
_0803DEA4: .4byte byte_203EA89
_0803DEA8: .4byte 0x0203DFCC
_0803DEAC: .4byte 0x080CE440
_0803DEB0: .4byte byte_203EA8C
_0803DEB4: .4byte 0x0203E110
_0803DEB8: .4byte 0x0203E11C
_0803DEBC: .4byte 0x0203E116
_0803DEC0: .4byte 0x080CC84C
_0803DEC4: .4byte 0x080CEE44
_0803DEC8: .4byte 0x00000111

	.thumb
sub_803DECC: @ 0x0803DECC
	push {r4, lr}
	ldr r0, _0803DFCC
	movs r2, #1
	strb r2, [r0]
	ldr r1, _0803DFD0
	ldrb r0, [r1]
	cmp r0, #0
	bne _0803DEEC
	strb r2, [r1]
	ldr r0, _0803DFD4
	ldr r1, _0803DFD8
	ldrh r1, [r1]
	strb r1, [r0]
	movs r0, #0x37
	bl init_function
_0803DEEC:
	ldr r3, _0803DFDC
	ldr r2, _0803DFD8
	ldrh r1, [r2]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r3
	adds r0, #0x73
	movs r1, #1
	strb r1, [r0]
	ldr r3, _0803DFE0
	ldrh r1, [r2]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r3
	ldrb r1, [r0, #5]
	adds r1, #1
	strb r1, [r0, #5]
	ldr r1, _0803DFE4
	ldrb r0, [r1, #0xb]
	adds r0, #1
	strb r0, [r1, #0xb]
	ldrh r1, [r2]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r3
	ldrb r1, [r0, #5]
	movs r0, #7
	bl sub_08040204
	ldr r4, _0803DFE8
	ldrb r0, [r4]
	cmp r0, #0
	beq _0803DF6A
	ldr r0, _0803DFEC
	ldr r0, [r0]
	bl audio_halt_fx
	ldrb r0, [r4]
	cmp r0, #0
	beq _0803DF6A
	ldr r3, _0803DFF0
	movs r1, #0x84
	lsls r1, r1, #1
	adds r0, r3, r1
	ldrh r0, [r0]
	ldr r2, _0803DFF4
	movs r4, #0x85
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
_0803DF6A:
	ldr r1, _0803DFF8
	ldr r3, _0803DFD8
	ldrh r0, [r3]
	adds r0, r0, r1
	movs r2, #0
	movs r1, #4
	strb r1, [r0]
	ldr r1, _0803DFFC
	ldrh r0, [r3]
	adds r0, r0, r1
	strb r2, [r0]
	ldr r2, _0803E000
	ldrh r1, [r3]
	adds r1, r1, r2
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldrh r0, [r3]
	adds r2, r0, r2
	ldr r1, _0803E004
	lsls r3, r0, #2
	adds r0, r3, r0
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrb r1, [r2]
	ldrb r0, [r0, #5]
	cmp r1, r0
	bne _0803DFC6
	ldr r0, _0803E008
	adds r0, r3, r0
	ldr r0, [r0]
	bl init_function
	movs r0, #0x88
	lsls r0, r0, #1
	movs r1, #0
	bl sub_80342CC
	cmp r0, #0
	bne _0803DFC6
	ldr r0, _0803E00C
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_8034460
_0803DFC6:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803DFCC: .4byte 0x0203E129
_0803DFD0: .4byte 0x0203E96B
_0803DFD4: .4byte 0x0203E134
_0803DFD8: .4byte gLoadedRoomLevel
_0803DFDC: .4byte 0x0203E170
_0803DFE0: .4byte 0x02000FCC
_0803DFE4: .4byte gGameStatus
_0803DFE8: .4byte byte_203EA89
_0803DFEC: .4byte 0x0203DFCC
_0803DFF0: .4byte 0x080CE440
_0803DFF4: .4byte byte_203EA8C
_0803DFF8: .4byte 0x0203E110
_0803DFFC: .4byte 0x0203E11C
_0803E000: .4byte 0x0203E116
_0803E004: .4byte 0x080CC84C
_0803E008: .4byte 0x080CEE44
_0803E00C: .4byte 0x00000111

	.thumb
sub_803E010: @ 0x0803E010
	push {r4, lr}
	ldr r0, _0803E110
	movs r2, #1
	strb r2, [r0]
	ldr r1, _0803E114
	ldrb r0, [r1]
	cmp r0, #0
	bne _0803E030
	strb r2, [r1]
	ldr r0, _0803E118
	ldr r1, _0803E11C
	ldrh r1, [r1]
	strb r1, [r0]
	movs r0, #0x37
	bl init_function
_0803E030:
	ldr r3, _0803E120
	ldr r2, _0803E11C
	ldrh r1, [r2]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r3
	adds r0, #0x74
	movs r1, #1
	strb r1, [r0]
	ldr r3, _0803E124
	ldrh r1, [r2]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r3
	ldrb r1, [r0, #5]
	adds r1, #1
	strb r1, [r0, #5]
	ldr r1, _0803E128
	ldrb r0, [r1, #0xb]
	adds r0, #1
	strb r0, [r1, #0xb]
	ldrh r1, [r2]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r3
	ldrb r1, [r0, #5]
	movs r0, #7
	bl sub_08040204
	ldr r4, _0803E12C
	ldrb r0, [r4]
	cmp r0, #0
	beq _0803E0AE
	ldr r0, _0803E130
	ldr r0, [r0]
	bl audio_halt_fx
	ldrb r0, [r4]
	cmp r0, #0
	beq _0803E0AE
	ldr r3, _0803E134
	movs r1, #0x84
	lsls r1, r1, #1
	adds r0, r3, r1
	ldrh r0, [r0]
	ldr r2, _0803E138
	movs r4, #0x85
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
_0803E0AE:
	ldr r1, _0803E13C
	ldr r3, _0803E11C
	ldrh r0, [r3]
	adds r0, r0, r1
	movs r2, #0
	movs r1, #5
	strb r1, [r0]
	ldr r1, _0803E140
	ldrh r0, [r3]
	adds r0, r0, r1
	strb r2, [r0]
	ldr r2, _0803E144
	ldrh r1, [r3]
	adds r1, r1, r2
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldrh r0, [r3]
	adds r2, r0, r2
	ldr r1, _0803E148
	lsls r3, r0, #2
	adds r0, r3, r0
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrb r1, [r2]
	ldrb r0, [r0, #5]
	cmp r1, r0
	bne _0803E10A
	ldr r0, _0803E14C
	adds r0, r3, r0
	ldr r0, [r0]
	bl init_function
	movs r0, #0x88
	lsls r0, r0, #1
	movs r1, #0
	bl sub_80342CC
	cmp r0, #0
	bne _0803E10A
	ldr r0, _0803E150
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_8034460
_0803E10A:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803E110: .4byte 0x0203E129
_0803E114: .4byte 0x0203E96B
_0803E118: .4byte 0x0203E134
_0803E11C: .4byte gLoadedRoomLevel
_0803E120: .4byte 0x0203E170
_0803E124: .4byte 0x02000FCC
_0803E128: .4byte gGameStatus
_0803E12C: .4byte byte_203EA89
_0803E130: .4byte 0x0203DFCC
_0803E134: .4byte 0x080CE440
_0803E138: .4byte byte_203EA8C
_0803E13C: .4byte 0x0203E110
_0803E140: .4byte 0x0203E11C
_0803E144: .4byte 0x0203E116
_0803E148: .4byte 0x080CC84C
_0803E14C: .4byte 0x080CEE44
_0803E150: .4byte 0x00000111

	.thumb
sub_803E154: @ 0x0803E154
	push {r4, r5, lr}
	adds r5, r1, #0
	ldr r0, _0803E1F0
	movs r4, #1
	strb r4, [r0]
	ldr r1, _0803E1F4
	ldrb r0, [r1]
	cmp r0, #0
	bne _0803E176
	strb r4, [r1]
	ldr r0, _0803E1F8
	ldr r1, _0803E1FC
	ldrh r1, [r1]
	strb r1, [r0]
	movs r0, #0x39
	bl init_function
_0803E176:
	ldr r2, _0803E200
	ldr r3, _0803E1FC
	ldrh r1, [r3]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r2, #0x44
	adds r0, r0, r2
	ldr r0, [r0]
	adds r0, r0, r5
	strb r4, [r0]
	ldr r2, _0803E204
	ldrh r1, [r3]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrb r1, [r0, #9]
	adds r1, #1
	strb r1, [r0, #9]
	ldr r1, _0803E208
	ldrb r0, [r1, #2]
	adds r0, #1
	strb r0, [r1, #2]
	ldrb r0, [r1, #6]
	adds r0, #1
	strb r0, [r1, #6]
	ldrb r1, [r1, #6]
	movs r0, #0x16
	bl sub_08040204
	ldr r0, _0803E20C
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803E1E4
	ldr r3, _0803E210
	movs r1, #0xa8
	lsls r1, r1, #1
	adds r0, r3, r1
	ldrh r0, [r0]
	ldr r2, _0803E214
	movs r4, #0xa9
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
_0803E1E4:
	ldr r1, _0803E218
	movs r0, #0x23
	strh r0, [r1]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0803E1F0: .4byte 0x0203E12B
_0803E1F4: .4byte 0x0203E96D
_0803E1F8: .4byte 0x0203E134
_0803E1FC: .4byte gLoadedRoomLevel
_0803E200: .4byte 0x0203E170
_0803E204: .4byte 0x02000FCC
_0803E208: .4byte gGameStatus
_0803E20C: .4byte byte_203EA89
_0803E210: .4byte 0x080CE440
_0803E214: .4byte byte_203EA8C
_0803E218: .4byte 0x0203E140

	.thumb
sub_803E21C: @ 0x0803E21C
	push {r4, r5, lr}
	adds r5, r1, #0
	ldr r0, _0803E2B8
	movs r4, #1
	strb r4, [r0]
	ldr r1, _0803E2BC
	ldrb r0, [r1]
	cmp r0, #0
	bne _0803E23E
	strb r4, [r1]
	ldr r0, _0803E2C0
	ldr r1, _0803E2C4
	ldrh r1, [r1]
	strb r1, [r0]
	movs r0, #0x39
	bl init_function
_0803E23E:
	ldr r2, _0803E2C8
	ldr r3, _0803E2C4
	ldrh r1, [r3]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r2, #0x48
	adds r0, r0, r2
	ldr r0, [r0]
	adds r0, r0, r5
	strb r4, [r0]
	ldr r2, _0803E2CC
	ldrh r1, [r3]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrb r1, [r0, #0xa]
	adds r1, #1
	strb r1, [r0, #0xa]
	ldr r1, _0803E2D0
	ldrb r0, [r1, #3]
	adds r0, #1
	strb r0, [r1, #3]
	ldrb r0, [r1, #6]
	adds r0, #1
	strb r0, [r1, #6]
	ldrb r1, [r1, #6]
	movs r0, #0x16
	bl sub_08040204
	ldr r0, _0803E2D4
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803E2AC
	ldr r3, _0803E2D8
	movs r1, #0xa8
	lsls r1, r1, #1
	adds r0, r3, r1
	ldrh r0, [r0]
	ldr r2, _0803E2DC
	movs r4, #0xa9
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
_0803E2AC:
	ldr r1, _0803E2E0
	movs r0, #0x24
	strh r0, [r1]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0803E2B8: .4byte 0x0203E12B
_0803E2BC: .4byte 0x0203E96D
_0803E2C0: .4byte 0x0203E134
_0803E2C4: .4byte gLoadedRoomLevel
_0803E2C8: .4byte 0x0203E170
_0803E2CC: .4byte 0x02000FCC
_0803E2D0: .4byte gGameStatus
_0803E2D4: .4byte byte_203EA89
_0803E2D8: .4byte 0x080CE440
_0803E2DC: .4byte byte_203EA8C
_0803E2E0: .4byte 0x0203E140

	.thumb
sub_803E2E4: @ 0x0803E2E4
	push {r4, r5, lr}
	adds r5, r1, #0
	ldr r0, _0803E380
	movs r4, #1
	strb r4, [r0]
	ldr r1, _0803E384
	ldrb r0, [r1]
	cmp r0, #0
	bne _0803E306
	strb r4, [r1]
	ldr r0, _0803E388
	ldr r1, _0803E38C
	ldrh r1, [r1]
	strb r1, [r0]
	movs r0, #0x39
	bl init_function
_0803E306:
	ldr r2, _0803E390
	ldr r3, _0803E38C
	ldrh r1, [r3]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r2, #0x4c
	adds r0, r0, r2
	ldr r0, [r0]
	adds r0, r0, r5
	strb r4, [r0]
	ldr r2, _0803E394
	ldrh r1, [r3]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrb r1, [r0, #0xb]
	adds r1, #1
	strb r1, [r0, #0xb]
	ldr r1, _0803E398
	ldrb r0, [r1, #4]
	adds r0, #1
	strb r0, [r1, #4]
	ldrb r0, [r1, #6]
	adds r0, #1
	strb r0, [r1, #6]
	ldrb r1, [r1, #6]
	movs r0, #0x16
	bl sub_08040204
	ldr r0, _0803E39C
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803E374
	ldr r3, _0803E3A0
	movs r1, #0xa8
	lsls r1, r1, #1
	adds r0, r3, r1
	ldrh r0, [r0]
	ldr r2, _0803E3A4
	movs r4, #0xa9
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
_0803E374:
	ldr r1, _0803E3A8
	movs r0, #0x25
	strh r0, [r1]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0803E380: .4byte 0x0203E12B
_0803E384: .4byte 0x0203E96D
_0803E388: .4byte 0x0203E134
_0803E38C: .4byte gLoadedRoomLevel
_0803E390: .4byte 0x0203E170
_0803E394: .4byte 0x02000FCC
_0803E398: .4byte gGameStatus
_0803E39C: .4byte byte_203EA89
_0803E3A0: .4byte 0x080CE440
_0803E3A4: .4byte byte_203EA8C
_0803E3A8: .4byte 0x0203E140

	.thumb
sub_803E3AC: @ 0x0803E3AC
	push {r4, r5, lr}
	adds r5, r1, #0
	ldr r0, _0803E448
	movs r4, #1
	strb r4, [r0]
	ldr r1, _0803E44C
	ldrb r0, [r1]
	cmp r0, #0
	bne _0803E3CE
	strb r4, [r1]
	ldr r0, _0803E450
	ldr r1, _0803E454
	ldrh r1, [r1]
	strb r1, [r0]
	movs r0, #0x39
	bl init_function
_0803E3CE:
	ldr r2, _0803E458
	ldr r3, _0803E454
	ldrh r1, [r3]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r2, #0x50
	adds r0, r0, r2
	ldr r0, [r0]
	adds r0, r0, r5
	strb r4, [r0]
	ldr r2, _0803E45C
	ldrh r1, [r3]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrb r1, [r0, #0xc]
	adds r1, #1
	strb r1, [r0, #0xc]
	ldr r1, _0803E460
	ldrb r0, [r1, #5]
	adds r0, #1
	strb r0, [r1, #5]
	ldrb r0, [r1, #6]
	adds r0, #1
	strb r0, [r1, #6]
	ldrb r1, [r1, #6]
	movs r0, #0x16
	bl sub_08040204
	ldr r0, _0803E464
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803E43C
	ldr r3, _0803E468
	movs r1, #0xa8
	lsls r1, r1, #1
	adds r0, r3, r1
	ldrh r0, [r0]
	ldr r2, _0803E46C
	movs r4, #0xa9
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
_0803E43C:
	ldr r1, _0803E470
	movs r0, #0x26
	strh r0, [r1]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0803E448: .4byte 0x0203E12B
_0803E44C: .4byte 0x0203E96D
_0803E450: .4byte 0x0203E134
_0803E454: .4byte gLoadedRoomLevel
_0803E458: .4byte 0x0203E170
_0803E45C: .4byte 0x02000FCC
_0803E460: .4byte gGameStatus
_0803E464: .4byte byte_203EA89
_0803E468: .4byte 0x080CE440
_0803E46C: .4byte byte_203EA8C
_0803E470: .4byte 0x0203E140

	.thumb
sub_803E474: @ 0x0803E474
	push {r4, lr}
	ldr r0, _0803E4F0
	movs r2, #1
	strb r2, [r0]
	ldr r1, _0803E4F4
	ldrb r0, [r1]
	cmp r0, #0
	bne _0803E494
	strb r2, [r1]
	ldr r0, _0803E4F8
	ldr r1, _0803E4FC
	ldrh r1, [r1]
	strb r1, [r0]
	movs r0, #0x38
	bl init_function
_0803E494:
	ldr r2, _0803E500
	ldrb r0, [r2, #0x12]
	adds r0, #3
	strb r0, [r2, #0x12]
	ldr r1, _0803E504
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrb r3, [r1, #0x12]
	ldrb r1, [r1, #0x12]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	cmp r0, r1
	ble _0803E4B0
	strb r3, [r2, #0x12]
_0803E4B0:
	movs r1, #0x12
	ldrsb r1, [r2, r1]
	movs r0, #3
	bl sub_08040204
	ldr r0, _0803E508
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803E4EA
	ldr r3, _0803E50C
	movs r1, #0x88
	lsls r1, r1, #1
	adds r0, r3, r1
	ldrh r0, [r0]
	ldr r2, _0803E510
	movs r4, #0x89
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
_0803E4EA:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803E4F0: .4byte 0x0203E12A
_0803E4F4: .4byte 0x0203E96C
_0803E4F8: .4byte 0x0203E134
_0803E4FC: .4byte gLoadedRoomLevel
_0803E500: .4byte gGameStatus
_0803E504: .4byte 0x080CC8C4
_0803E508: .4byte byte_203EA89
_0803E50C: .4byte 0x080CE440
_0803E510: .4byte byte_203EA8C

	.thumb
sub_803E514: @ 0x0803E514
	push {r4, lr}
	ldr r0, _0803E590
	movs r2, #1
	strb r2, [r0]
	ldr r1, _0803E594
	ldrb r0, [r1]
	cmp r0, #0
	bne _0803E534
	strb r2, [r1]
	ldr r0, _0803E598
	ldr r1, _0803E59C
	ldrh r1, [r1]
	strb r1, [r0]
	movs r0, #0x36
	bl init_function
_0803E534:
	ldr r2, _0803E5A0
	ldrb r0, [r2, #0xe]
	adds r0, #3
	strb r0, [r2, #0xe]
	ldr r1, _0803E5A4
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrb r3, [r1, #0xe]
	ldrb r1, [r1, #0xe]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	cmp r0, r1
	ble _0803E550
	strb r3, [r2, #0xe]
_0803E550:
	movs r1, #0xe
	ldrsb r1, [r2, r1]
	movs r0, #9
	bl sub_08040204
	ldr r0, _0803E5A8
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803E58A
	ldr r3, _0803E5AC
	movs r1, #0x9c
	lsls r1, r1, #1
	adds r0, r3, r1
	ldrh r0, [r0]
	ldr r2, _0803E5B0
	movs r4, #0x9d
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
_0803E58A:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803E590: .4byte 0x0203E122
_0803E594: .4byte 0x0203E96A
_0803E598: .4byte 0x0203E134
_0803E59C: .4byte gLoadedRoomLevel
_0803E5A0: .4byte gGameStatus
_0803E5A4: .4byte 0x080CC8C4
_0803E5A8: .4byte byte_203EA89
_0803E5AC: .4byte 0x080CE440
_0803E5B0: .4byte byte_203EA8C

	.thumb
sub_803E5B4: @ 0x0803E5B4
	push {r4, lr}
	ldr r0, _0803E630
	movs r2, #1
	strb r2, [r0]
	ldr r1, _0803E634
	ldrb r0, [r1]
	cmp r0, #0
	bne _0803E5D4
	strb r2, [r1]
	ldr r0, _0803E638
	ldr r1, _0803E63C
	ldrh r1, [r1]
	strb r1, [r0]
	movs r0, #0x36
	bl init_function
_0803E5D4:
	ldr r2, _0803E640
	ldrb r0, [r2, #0xf]
	adds r0, #3
	strb r0, [r2, #0xf]
	ldr r1, _0803E644
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrb r3, [r1, #0xf]
	ldrb r1, [r1, #0xf]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	cmp r0, r1
	ble _0803E5F0
	strb r3, [r2, #0xf]
_0803E5F0:
	movs r1, #0xf
	ldrsb r1, [r2, r1]
	movs r0, #0xa
	bl sub_08040204
	ldr r0, _0803E648
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803E62A
	ldr r3, _0803E64C
	movs r1, #0x9c
	lsls r1, r1, #1
	adds r0, r3, r1
	ldrh r0, [r0]
	ldr r2, _0803E650
	movs r4, #0x9d
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
_0803E62A:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803E630: .4byte 0x0203E123
_0803E634: .4byte 0x0203E96A
_0803E638: .4byte 0x0203E134
_0803E63C: .4byte gLoadedRoomLevel
_0803E640: .4byte gGameStatus
_0803E644: .4byte 0x080CC8C4
_0803E648: .4byte byte_203EA89
_0803E64C: .4byte 0x080CE440
_0803E650: .4byte byte_203EA8C

	.thumb
sub_803E654: @ 0x0803E654
	push {r4, lr}
	ldr r0, _0803E6D0
	movs r2, #1
	strb r2, [r0]
	ldr r1, _0803E6D4
	ldrb r0, [r1]
	cmp r0, #0
	bne _0803E674
	strb r2, [r1]
	ldr r0, _0803E6D8
	ldr r1, _0803E6DC
	ldrh r1, [r1]
	strb r1, [r0]
	movs r0, #0x36
	bl init_function
_0803E674:
	ldr r2, _0803E6E0
	ldrb r0, [r2, #0x11]
	adds r0, #3
	strb r0, [r2, #0x11]
	ldr r1, _0803E6E4
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrb r3, [r1, #0x11]
	ldrb r1, [r1, #0x11]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	cmp r0, r1
	ble _0803E690
	strb r3, [r2, #0x11]
_0803E690:
	movs r1, #0x11
	ldrsb r1, [r2, r1]
	movs r0, #0xc
	bl sub_08040204
	ldr r0, _0803E6E8
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803E6CA
	ldr r3, _0803E6EC
	movs r1, #0x9c
	lsls r1, r1, #1
	adds r0, r3, r1
	ldrh r0, [r0]
	ldr r2, _0803E6F0
	movs r4, #0x9d
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
_0803E6CA:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803E6D0: .4byte 0x0203E125
_0803E6D4: .4byte 0x0203E96A
_0803E6D8: .4byte 0x0203E134
_0803E6DC: .4byte gLoadedRoomLevel
_0803E6E0: .4byte gGameStatus
_0803E6E4: .4byte 0x080CC8C4
_0803E6E8: .4byte byte_203EA89
_0803E6EC: .4byte 0x080CE440
_0803E6F0: .4byte byte_203EA8C

	.thumb
sub_803E6F4: @ 0x0803E6F4
	push {r4, lr}
	ldr r0, _0803E770
	movs r2, #1
	strb r2, [r0]
	ldr r1, _0803E774
	ldrb r0, [r1]
	cmp r0, #0
	bne _0803E714
	strb r2, [r1]
	ldr r0, _0803E778
	ldr r1, _0803E77C
	ldrh r1, [r1]
	strb r1, [r0]
	movs r0, #0x36
	bl init_function
_0803E714:
	ldr r2, _0803E780
	ldrb r0, [r2, #0x10]
	adds r0, #3
	strb r0, [r2, #0x10]
	ldr r1, _0803E784
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrb r3, [r1, #0x10]
	ldrb r1, [r1, #0x10]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	cmp r0, r1
	ble _0803E730
	strb r3, [r2, #0x10]
_0803E730:
	movs r1, #0x10
	ldrsb r1, [r2, r1]
	movs r0, #0xb
	bl sub_08040204
	ldr r0, _0803E788
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803E76A
	ldr r3, _0803E78C
	movs r1, #0x9c
	lsls r1, r1, #1
	adds r0, r3, r1
	ldrh r0, [r0]
	ldr r2, _0803E790
	movs r4, #0x9d
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
_0803E76A:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803E770: .4byte 0x0203E124
_0803E774: .4byte 0x0203E96A
_0803E778: .4byte 0x0203E134
_0803E77C: .4byte gLoadedRoomLevel
_0803E780: .4byte gGameStatus
_0803E784: .4byte 0x080CC8C4
_0803E788: .4byte byte_203EA89
_0803E78C: .4byte 0x080CE440
_0803E790: .4byte byte_203EA8C

	.thumb
sub_803E794: @ 0x0803E794
	push {r4, r5, lr}
	adds r5, r1, #0
	ldr r0, _0803E830
	movs r4, #1
	strb r4, [r0]
	ldr r1, _0803E834
	ldrb r0, [r1]
	cmp r0, #0
	bne _0803E7B6
	strb r4, [r1]
	ldr r0, _0803E838
	ldr r1, _0803E83C
	ldrh r1, [r1]
	strb r1, [r0]
	movs r0, #0x38
	bl init_function
_0803E7B6:
	movs r0, #1
	rsbs r0, r0, #0
	cmp r5, r0
	beq _0803E7D4
	ldr r2, _0803E840
	ldr r0, _0803E83C
	ldrh r1, [r0]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r2, #0x34
	adds r0, r0, r2
	ldr r0, [r0]
	adds r0, r0, r5
	strb r4, [r0]
_0803E7D4:
	ldr r2, _0803E844
	ldrb r0, [r2, #0x12]
	adds r0, #1
	strb r0, [r2, #0x12]
	ldr r1, _0803E848
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrb r3, [r1, #0x12]
	ldrb r1, [r1, #0x12]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	cmp r0, r1
	ble _0803E7F0
	strb r3, [r2, #0x12]
_0803E7F0:
	movs r1, #0x12
	ldrsb r1, [r2, r1]
	movs r0, #3
	bl sub_08040204
	ldr r0, _0803E84C
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803E82A
	ldr r3, _0803E850
	movs r1, #0x88
	lsls r1, r1, #1
	adds r0, r3, r1
	ldrh r0, [r0]
	ldr r2, _0803E854
	movs r4, #0x89
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
_0803E82A:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0803E830: .4byte 0x0203E12A
_0803E834: .4byte 0x0203E96C
_0803E838: .4byte 0x0203E134
_0803E83C: .4byte gLoadedRoomLevel
_0803E840: .4byte 0x0203E170
_0803E844: .4byte gGameStatus
_0803E848: .4byte 0x080CC8C4
_0803E84C: .4byte byte_203EA89
_0803E850: .4byte 0x080CE440
_0803E854: .4byte byte_203EA8C

	.thumb
sub_803E858: @ 0x0803E858
	push {r4, r5, lr}
	adds r5, r1, #0
	ldr r0, _0803E8F4
	movs r4, #1
	strb r4, [r0]
	ldr r1, _0803E8F8
	ldrb r0, [r1]
	cmp r0, #0
	bne _0803E87A
	strb r4, [r1]
	ldr r0, _0803E8FC
	ldr r1, _0803E900
	ldrh r1, [r1]
	strb r1, [r0]
	movs r0, #0x36
	bl init_function
_0803E87A:
	movs r0, #1
	rsbs r0, r0, #0
	cmp r5, r0
	beq _0803E898
	ldr r2, _0803E904
	ldr r0, _0803E900
	ldrh r1, [r0]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r2, #0x38
	adds r0, r0, r2
	ldr r0, [r0]
	adds r0, r0, r5
	strb r4, [r0]
_0803E898:
	ldr r2, _0803E908
	ldrb r0, [r2, #0xe]
	adds r0, #1
	strb r0, [r2, #0xe]
	ldr r1, _0803E90C
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrb r3, [r1, #0xe]
	ldrb r1, [r1, #0xe]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	cmp r0, r1
	ble _0803E8B4
	strb r3, [r2, #0xe]
_0803E8B4:
	movs r1, #0xe
	ldrsb r1, [r2, r1]
	movs r0, #9
	bl sub_08040204
	ldr r0, _0803E910
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803E8EE
	ldr r3, _0803E914
	movs r1, #0x9c
	lsls r1, r1, #1
	adds r0, r3, r1
	ldrh r0, [r0]
	ldr r2, _0803E918
	movs r4, #0x9d
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
_0803E8EE:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0803E8F4: .4byte 0x0203E122
_0803E8F8: .4byte 0x0203E96A
_0803E8FC: .4byte 0x0203E134
_0803E900: .4byte gLoadedRoomLevel
_0803E904: .4byte 0x0203E170
_0803E908: .4byte gGameStatus
_0803E90C: .4byte 0x080CC8C4
_0803E910: .4byte byte_203EA89
_0803E914: .4byte 0x080CE440
_0803E918: .4byte byte_203EA8C

	.thumb
sub_803E91C: @ 0x0803E91C
	push {r4, lr}
	adds r4, r1, #0
	ldr r0, _0803E9C0
	ldrb r0, [r0, #0x13]
	cmp r0, #0
	beq _0803E9E8
	ldr r1, _0803E9C4
	ldrb r0, [r1]
	cmp r0, #0
	bne _0803E94A
	movs r0, #1
	strb r0, [r1]
	ldr r1, _0803E9C8
	ldr r0, _0803E9CC
	ldrh r0, [r0]
	strb r0, [r1]
	ldr r0, _0803E9D0
	ldrb r0, [r0]
	cmp r0, #0
	bne _0803E94A
	movs r0, #0x35
	bl init_function
_0803E94A:
	movs r0, #1
	rsbs r0, r0, #0
	cmp r4, r0
	beq _0803E96A
	ldr r2, _0803E9D4
	ldr r0, _0803E9CC
	ldrh r1, [r0]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r2, #0x30
	adds r0, r0, r2
	ldr r0, [r0]
	adds r0, r0, r4
	movs r1, #1
	strb r1, [r0]
_0803E96A:
	ldr r0, _0803E9D8
	ldrb r0, [r0]
	cmp r0, #0
	bne _0803EA08
	ldr r2, _0803E9C0
	ldrb r3, [r2, #0x13]
	ldrb r0, [r2, #0x15]
	ldrb r1, [r2, #0x14]
	adds r1, #1
	muls r0, r1, r0
	cmp r3, r0
	bge _0803E986
	adds r0, r3, #1
	strb r0, [r2, #0x13]
_0803E986:
	ldrb r1, [r2, #0x13]
	movs r0, #0x38
	bl sub_08040204
	ldr r0, _0803E9DC
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803EA08
	ldr r3, _0803E9E0
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r3, r1
	ldrh r0, [r0]
	ldr r2, _0803E9E4
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
	b _0803EA08
	.align 2, 0
_0803E9C0: .4byte gGameStatus
_0803E9C4: .4byte 0x0203E969
_0803E9C8: .4byte 0x0203E134
_0803E9CC: .4byte gLoadedRoomLevel
_0803E9D0: .4byte 0x03006EF3
_0803E9D4: .4byte 0x0203E170
_0803E9D8: .4byte byte_20020BC
_0803E9DC: .4byte byte_203EA89
_0803E9E0: .4byte 0x080CE440
_0803E9E4: .4byte byte_203EA8C
_0803E9E8:
	movs r0, #1
	rsbs r0, r0, #0
	cmp r4, r0
	beq _0803EA08
	ldr r2, _0803EA10
	ldr r0, _0803EA14
	ldrh r1, [r0]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r2, #0x30
	adds r0, r0, r2
	ldr r0, [r0]
	adds r0, r0, r4
	movs r1, #1
	strb r1, [r0]
_0803EA08:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803EA10: .4byte 0x0203E170
_0803EA14: .4byte gLoadedRoomLevel

	.thumb
sub_803EA18: @ 0x0803EA18
	push {r4, lr}
	adds r4, r1, #0
	ldr r0, _0803EA88
	ldrb r0, [r0, #0x13]
	cmp r0, #0
	beq _0803EAEC
	ldr r1, _0803EA8C
	ldrb r0, [r1]
	cmp r0, #0
	bne _0803EA46
	movs r0, #1
	strb r0, [r1]
	ldr r1, _0803EA90
	ldr r0, _0803EA94
	ldrh r0, [r0]
	strb r0, [r1]
	ldr r0, _0803EA98
	ldrb r0, [r0]
	cmp r0, #0
	bne _0803EA46
	movs r0, #0x35
	bl init_function
_0803EA46:
	movs r0, #1
	rsbs r0, r0, #0
	cmp r4, r0
	beq _0803EA66
	ldr r2, _0803EA9C
	ldr r0, _0803EA94
	ldrh r1, [r0]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r2, #0x64
	adds r0, r0, r2
	ldr r0, [r0]
	adds r0, r0, r4
	movs r1, #1
	strb r1, [r0]
_0803EA66:
	ldr r0, _0803EAA0
	ldrb r0, [r0]
	cmp r0, #0
	bne _0803EB0C
	ldr r1, _0803EA88
	ldrb r2, [r1, #0x15]
	ldrb r0, [r1, #0x14]
	adds r0, #1
	muls r2, r0, r2
	ldrb r3, [r1, #0x13]
	subs r0, r2, #1
	cmp r3, r0
	bge _0803EAA4
	adds r0, r3, #2
	strb r0, [r1, #0x13]
	b _0803EAA6
	.align 2, 0
_0803EA88: .4byte gGameStatus
_0803EA8C: .4byte 0x0203E969
_0803EA90: .4byte 0x0203E134
_0803EA94: .4byte gLoadedRoomLevel
_0803EA98: .4byte 0x03006EF3
_0803EA9C: .4byte 0x0203E170
_0803EAA0: .4byte byte_20020BC
_0803EAA4:
	strb r2, [r1, #0x13]
_0803EAA6:
	ldrb r1, [r1, #0x13]
	movs r0, #0x38
	bl sub_08040204
	ldr r0, _0803EAE0
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803EB0C
	ldr r3, _0803EAE4
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r3, r1
	ldrh r0, [r0]
	ldr r2, _0803EAE8
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
	b _0803EB0C
	.align 2, 0
_0803EAE0: .4byte byte_203EA89
_0803EAE4: .4byte 0x080CE440
_0803EAE8: .4byte byte_203EA8C
_0803EAEC:
	movs r0, #1
	rsbs r0, r0, #0
	cmp r4, r0
	beq _0803EB0C
	ldr r2, _0803EB14
	ldr r0, _0803EB18
	ldrh r1, [r0]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r2, #0x64
	adds r0, r0, r2
	ldr r0, [r0]
	adds r0, r0, r4
	movs r1, #1
	strb r1, [r0]
_0803EB0C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803EB14: .4byte 0x0203E170
_0803EB18: .4byte gLoadedRoomLevel

	.thumb
sub_803EB1C: @ 0x0803EB1C
	push {r4, lr}
	adds r4, r1, #0
	ldr r0, _0803EB58
	ldrb r0, [r0, #0x13]
	cmp r0, #0
	beq _0803EBDC
	ldr r1, _0803EB5C
	ldrb r0, [r1]
	cmp r0, #0
	bne _0803EB70
	movs r0, #1
	strb r0, [r1]
	ldr r1, _0803EB60
	ldr r0, _0803EB64
	ldrh r0, [r0]
	strb r0, [r1]
	ldr r0, _0803EB68
	ldrb r0, [r0]
	cmp r0, #0
	bne _0803EB4A
	movs r0, #0x35
	bl init_function
_0803EB4A:
	ldr r0, _0803EB6C
	adds r1, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_8034460
	b _0803EBFC
	.align 2, 0
_0803EB58: .4byte gGameStatus
_0803EB5C: .4byte 0x0203E969
_0803EB60: .4byte 0x0203E134
_0803EB64: .4byte gLoadedRoomLevel
_0803EB68: .4byte 0x03006EF3
_0803EB6C: .4byte 0x0000015D
_0803EB70:
	movs r0, #1
	rsbs r0, r0, #0
	cmp r4, r0
	beq _0803EB90
	ldr r2, _0803EBC8
	ldr r0, _0803EBCC
	ldrh r1, [r0]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r2, #0x68
	adds r0, r0, r2
	ldr r0, [r0]
	adds r0, r0, r4
	movs r1, #1
	strb r1, [r0]
_0803EB90:
	movs r0, #0x11
	bl sub_8016A94
	ldr r0, _0803EBD0
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803EBFC
	ldr r3, _0803EBD4
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r3, r1
	ldrh r0, [r0]
	ldr r2, _0803EBD8
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
	b _0803EBFC
	.align 2, 0
_0803EBC8: .4byte 0x0203E170
_0803EBCC: .4byte gLoadedRoomLevel
_0803EBD0: .4byte byte_203EA89
_0803EBD4: .4byte 0x080CE440
_0803EBD8: .4byte byte_203EA8C
_0803EBDC:
	movs r0, #1
	rsbs r0, r0, #0
	cmp r4, r0
	beq _0803EBFC
	ldr r2, _0803EC04
	ldr r0, _0803EC08
	ldrh r1, [r0]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r2, #0x68
	adds r0, r0, r2
	ldr r0, [r0]
	adds r0, r0, r4
	movs r1, #1
	strb r1, [r0]
_0803EBFC:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803EC04: .4byte 0x0203E170
_0803EC08: .4byte gLoadedRoomLevel

	.thumb
sub_803EC0C: @ 0x0803EC0C
	push {r4, lr}
	adds r4, r1, #0
	ldr r0, _0803EC4C
	ldrb r0, [r0, #0x13]
	cmp r0, #0
	beq _0803ECCC
	ldr r1, _0803EC50
	ldrb r0, [r1]
	cmp r0, #0
	bne _0803EC60
	movs r0, #1
	strb r0, [r1]
	ldr r1, _0803EC54
	ldr r0, _0803EC58
	ldrh r0, [r0]
	strb r0, [r1]
	ldr r0, _0803EC5C
	ldrb r0, [r0]
	cmp r0, #0
	bne _0803EC3A
	movs r0, #0x35
	bl init_function
_0803EC3A:
	movs r0, #0xaf
	lsls r0, r0, #1
	adds r1, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_8034460
	b _0803ECEC
	.align 2, 0
_0803EC4C: .4byte gGameStatus
_0803EC50: .4byte 0x0203E969
_0803EC54: .4byte 0x0203E134
_0803EC58: .4byte gLoadedRoomLevel
_0803EC5C: .4byte 0x03006EF3
_0803EC60:
	movs r0, #1
	rsbs r0, r0, #0
	cmp r4, r0
	beq _0803EC80
	ldr r2, _0803ECB8
	ldr r0, _0803ECBC
	ldrh r1, [r0]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r2, #0x6c
	adds r0, r0, r2
	ldr r0, [r0]
	adds r0, r0, r4
	movs r1, #1
	strb r1, [r0]
_0803EC80:
	movs r0, #0x12
	bl sub_8016A94
	ldr r0, _0803ECC0
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803ECEC
	ldr r3, _0803ECC4
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r3, r1
	ldrh r0, [r0]
	ldr r2, _0803ECC8
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
	b _0803ECEC
	.align 2, 0
_0803ECB8: .4byte 0x0203E170
_0803ECBC: .4byte gLoadedRoomLevel
_0803ECC0: .4byte byte_203EA89
_0803ECC4: .4byte 0x080CE440
_0803ECC8: .4byte byte_203EA8C
_0803ECCC:
	movs r0, #1
	rsbs r0, r0, #0
	cmp r4, r0
	beq _0803ECEC
	ldr r2, _0803ECF4
	ldr r0, _0803ECF8
	ldrh r1, [r0]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r2, #0x6c
	adds r0, r0, r2
	ldr r0, [r0]
	adds r0, r0, r4
	movs r1, #1
	strb r1, [r0]
_0803ECEC:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803ECF4: .4byte 0x0203E170
_0803ECF8: .4byte gLoadedRoomLevel

	.thumb
sub_803ECFC: @ 0x0803ECFC
	push {r4, lr}
	adds r3, r1, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r3, r0
	beq _0803ED20
	ldr r2, _0803ED5C
	ldr r0, _0803ED60
	ldrh r1, [r0]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r2, #0x68
	adds r0, r0, r2
	ldr r0, [r0]
	adds r0, r0, r3
	movs r1, #1
	strb r1, [r0]
_0803ED20:
	movs r0, #0x11
	bl sub_8016A94
	ldr r0, _0803ED64
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803ED56
	ldr r3, _0803ED68
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r3, r1
	ldrh r0, [r0]
	ldr r2, _0803ED6C
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
_0803ED56:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803ED5C: .4byte 0x0203E170
_0803ED60: .4byte gLoadedRoomLevel
_0803ED64: .4byte byte_203EA89
_0803ED68: .4byte 0x080CE440
_0803ED6C: .4byte byte_203EA8C

	.thumb
sub_803ED70: @ 0x0803ED70
	push {r4, lr}
	adds r3, r1, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r3, r0
	beq _0803ED94
	ldr r2, _0803EDD0
	ldr r0, _0803EDD4
	ldrh r1, [r0]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r2, #0x6c
	adds r0, r0, r2
	ldr r0, [r0]
	adds r0, r0, r3
	movs r1, #1
	strb r1, [r0]
_0803ED94:
	movs r0, #0x12
	bl sub_8016A94
	ldr r0, _0803EDD8
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803EDCA
	ldr r3, _0803EDDC
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r3, r1
	ldrh r0, [r0]
	ldr r2, _0803EDE0
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
_0803EDCA:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803EDD0: .4byte 0x0203E170
_0803EDD4: .4byte gLoadedRoomLevel
_0803EDD8: .4byte byte_203EA89
_0803EDDC: .4byte 0x080CE440
_0803EDE0: .4byte byte_203EA8C

	.thumb
sub_803EDE4: @ 0x0803EDE4
	push {r4, lr}
	ldr r1, _0803EE38
	ldrb r2, [r1, #0x17]
	ldrb r0, [r1, #0x16]
	cmp r0, r2
	beq _0803EE32
	strb r2, [r1, #0x16]
	ldrb r1, [r1, #0x16]
	movs r0, #0x39
	bl sub_08040204
	ldr r0, _0803EE3C
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803EE2A
	ldr r2, _0803EE40
	movs r1, #0xf8
	lsls r1, r1, #2
	adds r0, r2, r1
	ldrh r0, [r0]
	ldr r3, _0803EE44
	ldr r4, _0803EE48
	adds r1, r2, r4
	ldrb r3, [r3]
	adds r1, r1, r3
	ldrb r1, [r1]
	movs r3, #0xf9
	lsls r3, r3, #2
	adds r2, r2, r3
	ldr r2, [r2]
	movs r4, #0x80
	lsls r4, r4, #9
	adds r2, r2, r4
	bl audio_new_fx
_0803EE2A:
	ldr r0, _0803EE4C
	ldr r1, _0803EE50
	ldrh r1, [r1]
	strh r1, [r0]
_0803EE32:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803EE38: .4byte gGameStatus
_0803EE3C: .4byte byte_203EA89
_0803EE40: .4byte 0x080CE440
_0803EE44: .4byte byte_203EA8C
_0803EE48: .4byte 0x000003E2
_0803EE4C: .4byte 0x02002098
_0803EE50: .4byte 0x02002096

	.thumb
sub_803EE54: @ 0x0803EE54
	ldr r1, _0803EE5C
	movs r0, #1
	strb r0, [r1]
	bx lr
	.align 2, 0
_0803EE5C: .4byte 0x0203E974

	.thumb
sub_803EE60: @ 0x0803EE60
	ldr r1, _0803EE68
	movs r0, #1
	strb r0, [r1]
	bx lr
	.align 2, 0
_0803EE68: .4byte 0x0203E971

	.thumb
sub_803EE6C: @ 0x0803EE6C
	push {lr}
	ldr r1, _0803EE80
	movs r0, #0
	strb r0, [r1, #6]
	movs r0, #0x16
	movs r1, #0
	bl sub_08040204
	pop {r0}
	bx r0
	.align 2, 0
_0803EE80: .4byte gGameStatus

	.thumb
sub_803EE84: @ 0x0803EE84
	push {lr}
	ldr r1, _0803EEA0
	ldr r0, _0803EEA4
	ldrb r0, [r0, #0xe]
	strb r0, [r1, #0xe]
	ldrb r1, [r1, #0xe]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	movs r0, #9
	bl sub_08040204
	pop {r0}
	bx r0
	.align 2, 0
_0803EEA0: .4byte gGameStatus
_0803EEA4: .4byte 0x080CC8C4

	.thumb
sub_803EEA8: @ 0x0803EEA8
	push {lr}
	ldr r1, _0803EEC4
	ldr r0, _0803EEC8
	ldrb r0, [r0, #0xf]
	strb r0, [r1, #0xf]
	ldrb r1, [r1, #0xf]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	movs r0, #0xa
	bl sub_08040204
	pop {r0}
	bx r0
	.align 2, 0
_0803EEC4: .4byte gGameStatus
_0803EEC8: .4byte 0x080CC8C4

	.thumb
sub_803EECC: @ 0x0803EECC
	push {lr}
	ldr r1, _0803EEE8
	ldr r0, _0803EEEC
	ldrb r0, [r0, #0x10]
	strb r0, [r1, #0x10]
	ldrb r1, [r1, #0x10]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	movs r0, #0xb
	bl sub_08040204
	pop {r0}
	bx r0
	.align 2, 0
_0803EEE8: .4byte gGameStatus
_0803EEEC: .4byte 0x080CC8C4

	.thumb
sub_803EEF0: @ 0x0803EEF0
	push {lr}
	ldr r1, _0803EF0C
	ldr r0, _0803EF10
	ldrb r0, [r0, #0x11]
	strb r0, [r1, #0x11]
	ldrb r1, [r1, #0x11]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	movs r0, #0xc
	bl sub_08040204
	pop {r0}
	bx r0
	.align 2, 0
_0803EF0C: .4byte gGameStatus
_0803EF10: .4byte 0x080CC8C4

	.thumb
sub_803EF14: @ 0x0803EF14
	push {r4, lr}
	ldr r0, _0803EF58
	ldrb r1, [r0, #7]
	movs r0, #4
	bl sub_08040204
	ldr r0, _0803EF5C
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803EF50
	ldr r3, _0803EF60
	movs r1, #0xa8
	lsls r1, r1, #1
	adds r0, r3, r1
	ldrh r0, [r0]
	ldr r2, _0803EF64
	movs r4, #0xa9
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
_0803EF50:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803EF58: .4byte gGameStatus
_0803EF5C: .4byte byte_203EA89
_0803EF60: .4byte 0x080CE440
_0803EF64: .4byte byte_203EA8C

	.thumb
sub_803EF68: @ 0x0803EF68
	push {lr}
	ldr r1, _0803EF84
	ldr r0, _0803EF88
	ldrb r0, [r0, #0x12]
	strb r0, [r1, #0x12]
	ldrb r1, [r1, #0x12]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	movs r0, #3
	bl sub_08040204
	pop {r0}
	bx r0
	.align 2, 0
_0803EF84: .4byte gGameStatus
_0803EF88: .4byte 0x080CC8C4

	.thumb
nullsub_8: @ 0x0803EF8C
	bx lr
	.align 2, 0

	.thumb
sub_803EF90: @ 0x0803EF90
	push {r4, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #4]
	cmp r0, #0
	beq _0803EFA6
	ldr r0, [r4]
	movs r1, #4
	bl Free
	movs r0, #0
	strh r0, [r4, #4]
_0803EFA6:
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r0, [r2]
	cmp r0, #0
	bne _0803EFB8
	strb r0, [r4, #0x1f]
	strh r0, [r4, #0xc]
	movs r0, #3
	b _0803EFC4
_0803EFB8:
	movs r1, #0
	strb r1, [r2]
	movs r0, #1
	strb r0, [r4, #0x1f]
	strh r1, [r4, #0xc]
	movs r0, #4
_0803EFC4:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	.thumb
sub_803EFCC: @ 0x0803EFCC
	ldr r0, [r0]
	lsls r3, r1, #3
	subs r3, r3, r1
	lsls r3, r3, #3
	adds r3, r3, r0
	lsls r2, r2, #0x10
	ldr r0, [r3, #0x1c]
	subs r0, r0, r2
	str r0, [r3, #0x24]
	adds r3, #0x34
	movs r0, #6
	strb r0, [r3]
	movs r0, #2
	bx lr

	.thumb
sub_803EFE8: @ 0x0803EFE8
	ldr r0, [r0]
	lsls r3, r1, #3
	subs r3, r3, r1
	lsls r3, r3, #3
	adds r3, r3, r0
	lsls r2, r2, #0x10
	ldr r0, [r3, #0x1c]
	adds r0, r0, r2
	str r0, [r3, #0x24]
	adds r3, #0x34
	movs r0, #2
	strb r0, [r3]
	bx lr
	.align 2, 0

	.thumb
sub_803F004: @ 0x0803F004
	ldr r0, [r0]
	lsls r3, r1, #3
	subs r3, r3, r1
	lsls r3, r3, #3
	adds r3, r3, r0
	lsls r2, r2, #0x10
	ldr r0, [r3, #0x20]
	subs r0, r0, r2
	str r0, [r3, #0x28]
	adds r3, #0x34
	movs r0, #0
	strb r0, [r3]
	movs r0, #2
	bx lr

	.thumb
sub_803F020: @ 0x0803F020
	ldr r0, [r0]
	lsls r3, r1, #3
	subs r3, r3, r1
	lsls r3, r3, #3
	adds r3, r3, r0
	lsls r2, r2, #0x10
	ldr r0, [r3, #0x20]
	adds r0, r0, r2
	str r0, [r3, #0x28]
	adds r3, #0x34
	movs r0, #4
	strb r0, [r3]
	movs r0, #2
	bx lr

	.thumb
sub_803F03C: @ 0x0803F03C
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0
	strh r1, [r4, #0x2c]
	strh r2, [r4, #0x2e]
	strh r0, [r4, #0x38]
	cmp r3, #1
	bne _0803F054
	adds r0, r4, #0
	adds r0, #0x28
	strb r3, [r0]
	b _0803F05C
_0803F054:
	adds r1, r4, #0
	adds r1, #0x28
	movs r0, #0
	strb r0, [r1]
_0803F05C:
	ldrh r0, [r4, #6]
	cmp r0, #9
	bhi _0803F068
	adds r1, r4, #0
	adds r1, #0x21
	b _0803F070
_0803F068:
	cmp r0, #0x63
	bhi _0803F07E
	adds r1, r4, #0
	adds r1, #0x22
_0803F070:
	movs r0, #0xff
	strb r0, [r1]
	ldrh r0, [r4, #6]
	subs r1, #1
	bl IntegerToAsciiBw
	b _0803F08E
_0803F07E:
	adds r1, r4, #0
	adds r1, #0x23
	movs r0, #0xff
	strb r0, [r1]
	ldrh r0, [r4, #6]
	subs r1, #1
	bl IntegerToAsciiBw
_0803F08E:
	movs r0, #0xa
	strh r0, [r4, #0x18]
	movs r0, #2
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	.thumb
sub_803F09C: @ 0x0803F09C
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0
	strh r1, [r4, #0x2c]
	strh r2, [r4, #0x2e]
	strh r0, [r4, #0x38]
	cmp r3, #1
	bne _0803F0B4
	adds r0, r4, #0
	adds r0, #0x28
	strb r3, [r0]
	b _0803F0BC
_0803F0B4:
	adds r1, r4, #0
	adds r1, #0x28
	movs r0, #0
	strb r0, [r1]
_0803F0BC:
	ldrh r0, [r4, #6]
	ldrh r1, [r4, #0xa]
	adds r2, r4, #0
	adds r2, #0x20
	bl sub_80421C4
	movs r0, #0xa
	strh r0, [r4, #0x18]
	movs r0, #2
	pop {r4}
	pop {r1}
	bx r1

	.thumb
sub_803F0D4: @ 0x0803F0D4
	movs r0, #2
	bx lr

	.thumb
sub_803F0D8: @ 0x0803F0D8
	push {r4, lr}
	adds r4, r0, #0
	ldrh r3, [r4, #6]
	adds r2, r3, #0
	ldrh r1, [r4, #8]
	cmp r2, r1
	beq _0803F140
	ldrh r0, [r4, #0x18]
	subs r0, #1
	strh r0, [r4, #0x18]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0803F144
	movs r0, #0xa
	strh r0, [r4, #0x18]
	cmp r2, r1
	bhs _0803F0FE
	adds r0, r3, #1
	b _0803F104
_0803F0FE:
	cmp r2, r1
	bls _0803F106
	subs r0, r3, #1
_0803F104:
	strh r0, [r4, #6]
_0803F106:
	ldrh r0, [r4, #6]
	cmp r0, #9
	bhi _0803F112
	adds r1, r4, #0
	adds r1, #0x21
	b _0803F11A
_0803F112:
	cmp r0, #0x63
	bhi _0803F128
	adds r1, r4, #0
	adds r1, #0x22
_0803F11A:
	movs r0, #0xff
	strb r0, [r1]
	ldrh r0, [r4, #6]
	subs r1, #1
	bl IntegerToAsciiBw
	b _0803F138
_0803F128:
	adds r1, r4, #0
	adds r1, #0x23
	movs r0, #0xff
	strb r0, [r1]
	ldrh r0, [r4, #6]
	subs r1, #1
	bl IntegerToAsciiBw
_0803F138:
	ldrh r0, [r4, #6]
	ldrh r4, [r4, #8]
	cmp r0, r4
	bne _0803F144
_0803F140:
	movs r0, #2
	b _0803F146
_0803F144:
	movs r0, #1
_0803F146:
	pop {r4}
	pop {r1}
	bx r1

	.thumb
sub_803F14C: @ 0x0803F14C
	push {r4, lr}
	adds r4, r0, #0
	ldrh r1, [r4, #6]
	ldrh r0, [r4, #8]
	cmp r1, r0
	beq _0803F1A8
	ldrh r0, [r4, #0x18]
	subs r0, #1
	strh r0, [r4, #0x18]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0803F1AC
	movs r0, #0xa
	strh r0, [r4, #0x18]
	adds r0, r1, #1
	strh r0, [r4, #6]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #9
	bhi _0803F17A
	adds r1, r4, #0
	adds r1, #0x21
	b _0803F182
_0803F17A:
	cmp r0, #0x63
	bhi _0803F190
	adds r1, r4, #0
	adds r1, #0x22
_0803F182:
	movs r0, #0xff
	strb r0, [r1]
	ldrh r0, [r4, #6]
	subs r1, #1
	bl IntegerToAsciiBw
	b _0803F1A0
_0803F190:
	adds r1, r4, #0
	adds r1, #0x23
	movs r0, #0xff
	strb r0, [r1]
	ldrh r0, [r4, #6]
	subs r1, #1
	bl IntegerToAsciiBw
_0803F1A0:
	ldrh r0, [r4, #6]
	ldrh r4, [r4, #8]
	cmp r0, r4
	bne _0803F1AC
_0803F1A8:
	movs r0, #2
	b _0803F1AE
_0803F1AC:
	movs r0, #1
_0803F1AE:
	pop {r4}
	pop {r1}
	bx r1

	.thumb
sub_803F1B4: @ 0x0803F1B4
	push {r4, lr}
	adds r4, r0, #0
	ldrh r1, [r4, #6]
	ldrh r0, [r4, #8]
	cmp r1, r0
	beq _0803F210
	ldrh r0, [r4, #0x18]
	subs r0, #1
	strh r0, [r4, #0x18]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0803F214
	movs r0, #0xa
	strh r0, [r4, #0x18]
	subs r0, r1, #1
	strh r0, [r4, #6]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #9
	bhi _0803F1E2
	adds r1, r4, #0
	adds r1, #0x21
	b _0803F1EA
_0803F1E2:
	cmp r0, #0x63
	bhi _0803F1F8
	adds r1, r4, #0
	adds r1, #0x22
_0803F1EA:
	movs r0, #0xff
	strb r0, [r1]
	ldrh r0, [r4, #6]
	subs r1, #1
	bl IntegerToAsciiBw
	b _0803F208
_0803F1F8:
	adds r1, r4, #0
	adds r1, #0x23
	movs r0, #0xff
	strb r0, [r1]
	ldrh r0, [r4, #6]
	subs r1, #1
	bl IntegerToAsciiBw
_0803F208:
	ldrh r0, [r4, #6]
	ldrh r4, [r4, #8]
	cmp r0, r4
	bne _0803F214
_0803F210:
	movs r0, #2
	b _0803F216
_0803F214:
	movs r0, #1
_0803F216:
	pop {r4}
	pop {r1}
	bx r1

	.thumb
sub_803F21C: @ 0x0803F21C
	push {lr}
	adds r1, r0, #0
	adds r0, #0x2a
	ldrb r0, [r0]
	cmp r0, #0
	bne _0803F248
	ldrh r0, [r1, #0x18]
	cmp r0, #0
	beq _0803F238
	subs r0, #1
	strh r0, [r1, #0x18]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0803F248
_0803F238:
	ldr r0, _0803F244
	ldrb r0, [r0]
	cmp r0, #0
	bne _0803F248
	movs r0, #2
	b _0803F24A
	.align 2, 0
_0803F244: .4byte 0x0203EA80
_0803F248:
	movs r0, #1
_0803F24A:
	pop {r1}
	bx r1
	.align 2, 0

	.thumb
sub_803F250: @ 0x0803F250
	push {lr}
	adds r1, r0, #0
	adds r0, #0x2a
	ldrb r0, [r0]
	cmp r0, #0
	bne _0803F27C
	ldrh r0, [r1, #0x18]
	cmp r0, #0
	beq _0803F26C
	subs r0, #1
	strh r0, [r1, #0x18]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0803F27C
_0803F26C:
	ldr r0, _0803F278
	ldrb r0, [r0]
	cmp r0, #0
	bne _0803F27C
	movs r0, #2
	b _0803F27E
	.align 2, 0
_0803F278: .4byte 0x0203EA80
_0803F27C:
	movs r0, #1
_0803F27E:
	pop {r1}
	bx r1
	.align 2, 0

	.thumb
sub_803F284: @ 0x0803F284
	push {r4, r5, r6, lr}
	sub sp, #0x10
	adds r5, r0, #0
	adds r6, r3, #0
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r4, r0, #3
	ldr r0, [r5]
	adds r0, r0, r4
	movs r1, #0
	str r1, [sp]
	ldrh r1, [r0, #6]
	str r1, [sp, #4]
	ldrb r1, [r0, #8]
	str r1, [sp, #8]
	movs r1, #2
	str r1, [sp, #0xc]
	adds r1, r2, #0
	movs r2, #0
	movs r3, #0
	bl SetSprite
	ldr r0, [r5]
	adds r0, r4, r0
	adds r0, #0x35
	movs r1, #1
	strb r1, [r0]
	cmp r6, #1
	bne _0803F2C6
	ldr r0, [r5]
	adds r0, r4, r0
	ldrb r1, [r0, #0x10]
	strb r6, [r0, #0x10]
_0803F2C6:
	movs r0, #2
	add sp, #0x10
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	.thumb
sub_803F2D0: @ 0x0803F2D0
	push {lr}
	adds r2, r0, #0
	strb r1, [r2, #0x1f]
	cmp r1, #4
	beq _0803F2EE
	cmp r1, #4
	bgt _0803F2E4
	cmp r1, #3
	beq _0803F2EE
	b _0803F2F6
_0803F2E4:
	cmp r1, #5
	bne _0803F2F6
	ldrh r0, [r2, #0xe]
	strh r0, [r2, #0x18]
	b _0803F2F6
_0803F2EE:
	adds r1, r2, #0
	adds r1, #0x20
	movs r0, #0xff
	strb r0, [r1]
_0803F2F6:
	movs r0, #2
	pop {r1}
	bx r1

	.thumb
sub_803F2FC: @ 0x0803F2FC
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	cmp r2, #1
	beq _0803F35C
	cmp r2, #1
	bgt _0803F310
	cmp r2, #0
	beq _0803F316
	b _0803F402
_0803F310:
	cmp r2, #2
	beq _0803F3B4
	b _0803F402
_0803F316:
	cmp r6, #0
	bne _0803F31E
	.2byte 0xEE00, 0xEE00
_0803F31E:
	lsls r0, r6, #3
	subs r0, r0, r6
	lsls r0, r0, #3
	movs r1, #0x17
	movs r2, #4
	bl Alloc
	str r0, [r5]
	strh r6, [r5, #4]
	movs r3, #0
	cmp r3, r6
	bge _0803F402
	movs r6, #0xff
	movs r4, #0
	movs r2, #0
_0803F33C:
	ldr r0, [r5]
	adds r0, r2, r0
	adds r0, #0x34
	ldrb r1, [r0]
	orrs r1, r6
	strb r1, [r0]
	ldr r0, [r5]
	adds r0, r2, r0
	adds r0, #0x35
	strb r4, [r0]
	adds r2, #0x38
	adds r3, #1
	ldrh r0, [r5, #4]
	cmp r3, r0
	blt _0803F33C
	b _0803F402
_0803F35C:
	ldr r0, _0803F3AC
	ldrb r1, [r0, #0x15]
	adds r1, r6, r1
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #3
	movs r1, #0x17
	movs r2, #4
	bl Alloc
	str r0, [r5]
	ldr r0, _0803F3B0
	ldrb r0, [r0, #0x15]
	adds r0, r0, r6
	strh r0, [r5, #4]
	movs r3, #0
	adds r4, r5, #0
	adds r4, #0x20
	cmp r3, r0
	bge _0803F3FE
	movs r7, #0xff
	movs r6, #0
	movs r2, #0
_0803F38A:
	ldr r0, [r5]
	adds r0, r2, r0
	adds r0, #0x34
	ldrb r1, [r0]
	orrs r1, r7
	strb r1, [r0]
	ldr r0, [r5]
	adds r0, r2, r0
	adds r0, #0x35
	strb r6, [r0]
	adds r2, #0x38
	adds r3, #1
	ldrh r0, [r5, #4]
	cmp r3, r0
	blt _0803F38A
	b _0803F3FE
	.align 2, 0
_0803F3AC: .4byte 0x080CC8C4
_0803F3B0: .4byte gGameStatus
_0803F3B4:
	ldr r4, _0803F40C
	ldrb r1, [r4, #0x17]
	adds r1, r6, r1
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #3
	movs r1, #0x18
	movs r2, #4
	bl Alloc
	str r0, [r5]
	ldrb r0, [r4, #0x17]
	adds r0, r0, r6
	strh r0, [r5, #4]
	movs r3, #0
	adds r4, r5, #0
	adds r4, #0x20
	cmp r3, r0
	bge _0803F3FE
	movs r7, #0xff
	movs r6, #0
	movs r2, #0
_0803F3E0:
	ldr r0, [r5]
	adds r0, r2, r0
	adds r0, #0x34
	ldrb r1, [r0]
	orrs r1, r7
	strb r1, [r0]
	ldr r0, [r5]
	adds r0, r2, r0
	adds r0, #0x35
	strb r6, [r0]
	adds r2, #0x38
	adds r3, #1
	ldrh r0, [r5, #4]
	cmp r3, r0
	blt _0803F3E0
_0803F3FE:
	movs r0, #0xff
	strb r0, [r4]
_0803F402:
	movs r0, #2
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0803F40C: .4byte gGameStatus

	.thumb
sub_803F410: @ 0x0803F410
	push {r4, r5, lr}
	ldr r5, [r0]
	lsls r4, r1, #3
	subs r4, r4, r1
	lsls r4, r4, #3
	adds r5, r4, r5
	lsls r1, r2, #0x10
	str r1, [r5, #0x1c]
	lsls r1, r3, #0x10
	str r1, [r5, #0x20]
	ldrh r1, [r5, #6]
	strh r2, [r5, #6]
	ldr r0, [r0]
	adds r4, r4, r0
	ldrb r0, [r4, #8]
	strb r3, [r4, #8]
	movs r0, #2
	pop {r4, r5}
	pop {r1}
	bx r1

	.thumb
sub_803F438: @ 0x0803F438
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	adds r6, r1, #0
	movs r7, #1
	movs r0, #0
	mov r8, r0
	ldrh r1, [r4, #4]
	cmp r8, r1
	bge _0803F512
	movs r2, #0xff
	mov ip, r2
	movs r5, #0
_0803F454:
	ldr r0, [r4]
	adds r2, r5, r0
	adds r3, r2, #0
	adds r3, #0x34
	ldrb r0, [r3]
	cmp r0, #2
	beq _0803F4CE
	cmp r0, #2
	bgt _0803F46C
	cmp r0, #0
	beq _0803F476
	b _0803F506
_0803F46C:
	cmp r0, #4
	beq _0803F488
	cmp r0, #6
	beq _0803F4BC
	b _0803F506
_0803F476:
	movs r7, #0
	ldr r1, [r2, #0x20]
	ldr r0, [r4, #0x10]
	subs r1, r1, r0
	str r1, [r2, #0x20]
	ldr r0, [r2, #0x28]
	cmp r1, r0
	bgt _0803F4AE
	b _0803F498
_0803F488:
	movs r7, #0
	ldr r1, [r2, #0x20]
	ldr r0, [r4, #0x10]
	adds r1, r1, r0
	str r1, [r2, #0x20]
	ldr r0, [r2, #0x28]
	cmp r1, r0
	blt _0803F4AE
_0803F498:
	str r0, [r2, #0x20]
	ldrb r0, [r3]
	mov r1, ip
	orrs r0, r1
	strb r0, [r3]
	cmp r6, #1
	bne _0803F4AE
	ldr r0, [r4]
	adds r0, r5, r0
	ldr r1, [r0, #0x20]
	str r1, [r0, #0x30]
_0803F4AE:
	ldr r0, [r4]
	adds r0, r5, r0
	movs r2, #0x22
	ldrsh r1, [r0, r2]
	ldrb r2, [r0, #8]
	strb r1, [r0, #8]
	b _0803F506
_0803F4BC:
	movs r7, #0
	ldr r1, [r2, #0x1c]
	ldr r0, [r4, #0x10]
	subs r1, r1, r0
	str r1, [r2, #0x1c]
	ldr r0, [r2, #0x24]
	cmp r1, r0
	bgt _0803F4F4
	b _0803F4DE
_0803F4CE:
	movs r7, #0
	ldr r1, [r2, #0x1c]
	ldr r0, [r4, #0x10]
	adds r1, r1, r0
	str r1, [r2, #0x1c]
	ldr r0, [r2, #0x24]
	cmp r1, r0
	blt _0803F4F4
_0803F4DE:
	str r0, [r2, #0x1c]
	ldrb r0, [r3]
	mov r1, ip
	orrs r0, r1
	strb r0, [r3]
	cmp r6, #1
	bne _0803F4F4
	ldr r0, [r4]
	adds r0, r5, r0
	ldr r1, [r0, #0x1c]
	str r1, [r0, #0x2c]
_0803F4F4:
	ldr r1, [r4]
	adds r1, r5, r1
	movs r3, #0x1e
	ldrsh r2, [r1, r3]
	ldr r3, _0803F51C
	adds r0, r3, #0
	ands r2, r0
	ldrh r0, [r1, #6]
	strh r2, [r1, #6]
_0803F506:
	adds r5, #0x38
	movs r0, #1
	add r8, r0
	ldrh r1, [r4, #4]
	cmp r8, r1
	blt _0803F454
_0803F512:
	cmp r7, #0
	bne _0803F520
	movs r0, #1
	b _0803F522
	.align 2, 0
_0803F51C: .4byte 0x000001FF
_0803F520:
	movs r0, #2
_0803F522:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	.thumb
sub_803F52C: @ 0x0803F52C
	push {r4, r5, lr}
	adds r3, r0, #0
	adds r5, r1, #0
	cmp r2, #3
	beq _0803F57C
	cmp r2, #1
	beq _0803F542
	cmp r2, #2
	beq _0803F54C
	ldrh r0, [r3, #8]
	b _0803F554
_0803F542:
	ldrh r0, [r3, #8]
	ldrh r1, [r3, #6]
	cmp r0, r1
	bhs _0803F554
	b _0803F5A4
_0803F54C:
	ldrh r0, [r3, #8]
	ldrh r1, [r3, #6]
	cmp r0, r1
	bhi _0803F5A4
_0803F554:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r4, #0xc0
	lsls r4, r4, #0xc
	cmp r0, #9
	bls _0803F56C
	movs r4, #0xe0
	lsls r4, r4, #0xd
	cmp r0, #0x63
	bhi _0803F56C
	movs r4, #0xa0
	lsls r4, r4, #0xd
_0803F56C:
	ldr r1, [r3]
	lsls r2, r5, #3
	subs r0, r2, r5
	lsls r0, r0, #3
	adds r0, r0, r1
	ldr r0, [r0, #0x2c]
	subs r3, r0, r4
	b _0803F58A
_0803F57C:
	ldr r0, [r3]
	lsls r2, r5, #3
	subs r1, r2, r5
	lsls r1, r1, #3
	adds r1, r1, r0
	ldr r3, [r1, #0x2c]
	adds r1, r0, #0
_0803F58A:
	subs r0, r2, r5
	lsls r0, r0, #3
	adds r1, r0, r1
	str r3, [r1, #0x24]
	ldr r0, [r1, #0x1c]
	cmp r3, r0
	ble _0803F59E
	adds r1, #0x34
	movs r0, #2
	b _0803F5A2
_0803F59E:
	adds r1, #0x34
	movs r0, #6
_0803F5A2:
	strb r0, [r1]
_0803F5A4:
	movs r0, #2
	pop {r4, r5}
	pop {r1}
	bx r1

	.thumb
sub_803F5AC: @ 0x0803F5AC
	push {r4, r5, lr}
	adds r3, r0, #0
	adds r5, r1, #0
	cmp r2, #3
	beq _0803F5FC
	cmp r2, #1
	beq _0803F5C2
	cmp r2, #2
	beq _0803F5CC
	ldrh r0, [r3, #8]
	b _0803F5D4
_0803F5C2:
	ldrh r0, [r3, #8]
	ldrh r1, [r3, #6]
	cmp r0, r1
	bhs _0803F5D4
	b _0803F624
_0803F5CC:
	ldrh r0, [r3, #8]
	ldrh r1, [r3, #6]
	cmp r0, r1
	bhi _0803F624
_0803F5D4:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r4, #0xc0
	lsls r4, r4, #0xc
	cmp r0, #9
	bls _0803F5EC
	movs r4, #0xe0
	lsls r4, r4, #0xd
	cmp r0, #0x63
	bhi _0803F5EC
	movs r4, #0xa0
	lsls r4, r4, #0xd
_0803F5EC:
	ldr r1, [r3]
	lsls r2, r5, #3
	subs r0, r2, r5
	lsls r0, r0, #3
	adds r0, r0, r1
	ldr r0, [r0, #0x2c]
	adds r3, r0, r4
	b _0803F60A
_0803F5FC:
	ldr r0, [r3]
	lsls r2, r5, #3
	subs r1, r2, r5
	lsls r1, r1, #3
	adds r1, r1, r0
	ldr r3, [r1, #0x2c]
	adds r1, r0, #0
_0803F60A:
	subs r0, r2, r5
	lsls r0, r0, #3
	adds r1, r0, r1
	str r3, [r1, #0x24]
	ldr r0, [r1, #0x1c]
	cmp r3, r0
	bge _0803F61E
	adds r1, #0x34
	movs r0, #6
	b _0803F622
_0803F61E:
	adds r1, #0x34
	movs r0, #2
_0803F622:
	strb r0, [r1]
_0803F624:
	movs r0, #2
	pop {r4, r5}
	pop {r1}
	bx r1

	.thumb
sub_803F62C: @ 0x0803F62C
	push {r4, r5, r6, lr}
	adds r3, r0, #0
	adds r5, r1, #0
	cmp r2, #3
	beq _0803F694
	cmp r2, #1
	beq _0803F642
	cmp r2, #2
	beq _0803F64C
	ldrh r0, [r3, #8]
	b _0803F654
_0803F642:
	ldrh r0, [r3, #8]
	ldrh r1, [r3, #6]
	cmp r0, r1
	bhs _0803F654
	b _0803F6BC
_0803F64C:
	ldrh r0, [r3, #8]
	ldrh r1, [r3, #6]
	cmp r0, r1
	bhi _0803F6BC
_0803F654:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r6, #0xc0
	lsls r6, r6, #0xc
	cmp r0, #9
	bls _0803F66C
	movs r6, #0xe0
	lsls r6, r6, #0xd
	cmp r0, #0x63
	bhi _0803F66C
	movs r6, #0xa0
	lsls r6, r6, #0xd
_0803F66C:
	ldrh r0, [r3, #0xa]
	movs r4, #0xc0
	lsls r4, r4, #0xc
	cmp r0, #9
	bls _0803F682
	movs r4, #0xe0
	lsls r4, r4, #0xd
	cmp r0, #0x63
	bhi _0803F682
	movs r4, #0xa0
	lsls r4, r4, #0xd
_0803F682:
	ldr r1, [r3]
	lsls r2, r5, #3
	subs r0, r2, r5
	lsls r0, r0, #3
	adds r0, r0, r1
	ldr r0, [r0, #0x2c]
	subs r0, r0, r6
	subs r3, r0, r4
	b _0803F6A2
_0803F694:
	ldr r0, [r3]
	lsls r2, r5, #3
	subs r1, r2, r5
	lsls r1, r1, #3
	adds r1, r1, r0
	ldr r3, [r1, #0x2c]
	adds r1, r0, #0
_0803F6A2:
	subs r0, r2, r5
	lsls r0, r0, #3
	adds r1, r0, r1
	str r3, [r1, #0x24]
	ldr r0, [r1, #0x1c]
	cmp r3, r0
	ble _0803F6B6
	adds r1, #0x34
	movs r0, #2
	b _0803F6BA
_0803F6B6:
	adds r1, #0x34
	movs r0, #6
_0803F6BA:
	strb r0, [r1]
_0803F6BC:
	movs r0, #2
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	.thumb
sub_803F6C4: @ 0x0803F6C4
	push {r4, r5, r6, lr}
	adds r3, r0, #0
	adds r5, r1, #0
	cmp r2, #3
	beq _0803F72C
	cmp r2, #1
	beq _0803F6DA
	cmp r2, #2
	beq _0803F6E4
	ldrh r0, [r3, #8]
	b _0803F6EC
_0803F6DA:
	ldrh r0, [r3, #8]
	ldrh r1, [r3, #6]
	cmp r0, r1
	bhs _0803F6EC
	b _0803F754
_0803F6E4:
	ldrh r0, [r3, #8]
	ldrh r1, [r3, #6]
	cmp r0, r1
	bhi _0803F754
_0803F6EC:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r6, #0xc0
	lsls r6, r6, #0xc
	cmp r0, #9
	bls _0803F704
	movs r6, #0xe0
	lsls r6, r6, #0xd
	cmp r0, #0x63
	bhi _0803F704
	movs r6, #0xa0
	lsls r6, r6, #0xd
_0803F704:
	ldrh r0, [r3, #0xa]
	movs r4, #0xc0
	lsls r4, r4, #0xc
	cmp r0, #9
	bls _0803F71A
	movs r4, #0xe0
	lsls r4, r4, #0xd
	cmp r0, #0x63
	bhi _0803F71A
	movs r4, #0xa0
	lsls r4, r4, #0xd
_0803F71A:
	ldr r1, [r3]
	lsls r2, r5, #3
	subs r0, r2, r5
	lsls r0, r0, #3
	adds r0, r0, r1
	ldr r0, [r0, #0x2c]
	adds r0, r0, r6
	adds r3, r0, r4
	b _0803F73A
_0803F72C:
	ldr r0, [r3]
	lsls r2, r5, #3
	subs r1, r2, r5
	lsls r1, r1, #3
	adds r1, r1, r0
	ldr r3, [r1, #0x2c]
	adds r1, r0, #0
_0803F73A:
	subs r0, r2, r5
	lsls r0, r0, #3
	adds r1, r0, r1
	str r3, [r1, #0x24]
	ldr r0, [r1, #0x1c]
	cmp r3, r0
	bge _0803F74E
	adds r1, #0x34
	movs r0, #6
	b _0803F752
_0803F74E:
	adds r1, #0x34
	movs r0, #2
_0803F752:
	strb r0, [r1]
_0803F754:
	movs r0, #2
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	.thumb
sub_803F75C: @ 0x0803F75C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	adds r5, r0, #0
	mov sb, r2
	mov r8, r3
	ldrh r0, [r5, #6]
	lsls r0, r0, #3
	ldr r2, _0803F7F8
	adds r0, r0, r2
	adds r6, r1, #0
	ldrh r1, [r5, #4]
	cmp r6, r1
	bge _0803F7E2
	ldr r2, _0803F7FC
	mov sl, r2
	adds r7, r0, #0
	lsls r0, r6, #3
	subs r0, r0, r6
	lsls r4, r0, #3
_0803F78A:
	ldr r1, [r5]
	adds r1, r4, r1
	mov r2, sb
	lsls r0, r2, #0x10
	str r0, [r1, #0x1c]
	mov r2, r8
	lsls r0, r2, #0x10
	str r0, [r1, #0x20]
	ldrh r0, [r1, #6]
	mov r0, sb
	strh r0, [r1, #6]
	ldr r0, [r5]
	adds r0, r4, r0
	ldrb r1, [r0, #8]
	strb r2, [r0, #8]
	ldr r0, [r5]
	adds r0, r0, r4
	ldrb r1, [r7]
	lsls r1, r1, #1
	add r1, sl
	ldrh r1, [r1]
	movs r2, #0
	str r2, [sp]
	mov r2, sb
	str r2, [sp, #4]
	mov r2, r8
	str r2, [sp, #8]
	movs r2, #2
	str r2, [sp, #0xc]
	movs r2, #0
	movs r3, #0
	bl SetSprite
	ldr r0, [r5]
	adds r0, r4, r0
	adds r0, #0x35
	movs r1, #1
	strb r1, [r0]
	adds r7, #1
	adds r4, #0x38
	adds r6, #1
	ldrh r0, [r5, #4]
	cmp r6, r0
	blt _0803F78A
_0803F7E2:
	movs r0, #0xa
	strh r0, [r5, #0x18]
	movs r0, #2
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0803F7F8: .4byte 0x080A8CF6
_0803F7FC: .4byte 0x080A8CF0

	.thumb
sub_803F800: @ 0x0803F800
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	adds r5, r0, #0
	mov sb, r2
	mov r8, r3
	ldrh r2, [r5, #6]
	lsls r0, r2, #2
	adds r0, r0, r2
	ldr r2, _0803F8A0
	adds r0, r0, r2
	adds r6, r1, #0
	ldrh r1, [r5, #4]
	cmp r6, r1
	bge _0803F888
	ldr r2, _0803F8A4
	mov sl, r2
	adds r7, r0, #0
	lsls r0, r6, #3
	subs r0, r0, r6
	lsls r4, r0, #3
_0803F830:
	ldr r1, [r5]
	adds r1, r4, r1
	mov r2, sb
	lsls r0, r2, #0x10
	str r0, [r1, #0x1c]
	mov r2, r8
	lsls r0, r2, #0x10
	str r0, [r1, #0x20]
	ldrh r0, [r1, #6]
	mov r0, sb
	strh r0, [r1, #6]
	ldr r0, [r5]
	adds r0, r4, r0
	ldrb r1, [r0, #8]
	strb r2, [r0, #8]
	ldr r0, [r5]
	adds r0, r0, r4
	ldrb r1, [r7]
	lsls r1, r1, #1
	add r1, sl
	ldrh r1, [r1]
	movs r2, #0
	str r2, [sp]
	mov r2, sb
	str r2, [sp, #4]
	mov r2, r8
	str r2, [sp, #8]
	movs r2, #2
	str r2, [sp, #0xc]
	movs r2, #0
	movs r3, #0
	bl SetSprite
	ldr r0, [r5]
	adds r0, r4, r0
	adds r0, #0x35
	movs r1, #1
	strb r1, [r0]
	adds r7, #1
	adds r4, #0x38
	adds r6, #1
	ldrh r0, [r5, #4]
	cmp r6, r0
	blt _0803F830
_0803F888:
	movs r0, #0xa
	strh r0, [r5, #0x18]
	movs r0, #2
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0803F8A0: .4byte 0x080A8D92
_0803F8A4: .4byte 0x080A8D8E

	.thumb
sub_803F8A8: @ 0x0803F8A8
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	cmp r2, #1
	bne _0803F8E2
	adds r2, r1, #0
	ldrh r0, [r4, #4]
	cmp r2, r0
	bge _0803F90C
	movs r7, #6
	movs r5, #0
	lsls r0, r2, #3
	subs r0, r0, r2
	lsls r3, r0, #3
	movs r6, #0xc0
	lsls r6, r6, #0xc
_0803F8C6:
	ldr r1, [r4]
	adds r1, r3, r1
	ldr r0, [r1, #0x1c]
	subs r0, r0, r5
	str r0, [r1, #0x24]
	adds r1, #0x34
	strb r7, [r1]
	adds r5, r5, r6
	adds r3, #0x38
	adds r2, #1
	ldrh r0, [r4, #4]
	cmp r2, r0
	blt _0803F8C6
	b _0803F90C
_0803F8E2:
	adds r2, r1, #0
	ldrh r0, [r4, #4]
	cmp r2, r0
	bge _0803F90C
	lsls r5, r3, #0x10
	movs r6, #6
	lsls r0, r2, #3
	subs r0, r0, r2
	lsls r3, r0, #3
_0803F8F4:
	ldr r1, [r4]
	adds r1, r3, r1
	ldr r0, [r1, #0x1c]
	subs r0, r0, r5
	str r0, [r1, #0x24]
	adds r1, #0x34
	strb r6, [r1]
	adds r3, #0x38
	adds r2, #1
	ldrh r0, [r4, #4]
	cmp r2, r0
	blt _0803F8F4
_0803F90C:
	movs r0, #2
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	.thumb
sub_803F914: @ 0x0803F914
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	cmp r2, #1
	bne _0803F94E
	adds r2, r1, #0
	ldrh r0, [r4, #4]
	cmp r2, r0
	bge _0803F978
	movs r7, #2
	movs r5, #0
	lsls r0, r2, #3
	subs r0, r0, r2
	lsls r3, r0, #3
	movs r6, #0xc0
	lsls r6, r6, #0xc
_0803F932:
	ldr r1, [r4]
	adds r1, r3, r1
	ldr r0, [r1, #0x1c]
	adds r0, r0, r5
	str r0, [r1, #0x24]
	adds r1, #0x34
	strb r7, [r1]
	adds r5, r5, r6
	adds r3, #0x38
	adds r2, #1
	ldrh r0, [r4, #4]
	cmp r2, r0
	blt _0803F932
	b _0803F978
_0803F94E:
	adds r2, r1, #0
	ldrh r0, [r4, #4]
	cmp r2, r0
	bge _0803F978
	lsls r5, r3, #0x10
	movs r6, #2
	lsls r0, r2, #3
	subs r0, r0, r2
	lsls r3, r0, #3
_0803F960:
	ldr r1, [r4]
	adds r1, r3, r1
	ldr r0, [r1, #0x1c]
	adds r0, r0, r5
	str r0, [r1, #0x24]
	adds r1, #0x34
	strb r6, [r1]
	adds r3, #0x38
	adds r2, #1
	ldrh r0, [r4, #4]
	cmp r2, r0
	blt _0803F960
_0803F978:
	movs r0, #2
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	.thumb
sub_803F980: @ 0x0803F980
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	cmp r2, #1
	bne _0803F9BA
	adds r2, r1, #0
	ldrh r0, [r4, #4]
	cmp r2, r0
	bge _0803F9E4
	movs r7, #0
	movs r5, #0
	lsls r0, r2, #3
	subs r0, r0, r2
	lsls r3, r0, #3
	movs r6, #0xc0
	lsls r6, r6, #0xc
_0803F99E:
	ldr r1, [r4]
	adds r1, r3, r1
	ldr r0, [r1, #0x20]
	subs r0, r0, r5
	str r0, [r1, #0x28]
	adds r1, #0x34
	strb r7, [r1]
	adds r5, r5, r6
	adds r3, #0x38
	adds r2, #1
	ldrh r0, [r4, #4]
	cmp r2, r0
	blt _0803F99E
	b _0803F9E4
_0803F9BA:
	adds r2, r1, #0
	ldrh r0, [r4, #4]
	cmp r2, r0
	bge _0803F9E4
	lsls r5, r3, #0x10
	movs r6, #0
	lsls r0, r2, #3
	subs r0, r0, r2
	lsls r3, r0, #3
_0803F9CC:
	ldr r1, [r4]
	adds r1, r3, r1
	ldr r0, [r1, #0x20]
	subs r0, r0, r5
	str r0, [r1, #0x28]
	adds r1, #0x34
	strb r6, [r1]
	adds r3, #0x38
	adds r2, #1
	ldrh r0, [r4, #4]
	cmp r2, r0
	blt _0803F9CC
_0803F9E4:
	movs r0, #2
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	.thumb
sub_803F9EC: @ 0x0803F9EC
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	cmp r2, #1
	bne _0803FA26
	adds r2, r1, #0
	ldrh r0, [r4, #4]
	cmp r2, r0
	bge _0803FA50
	movs r7, #4
	movs r5, #0
	lsls r0, r2, #3
	subs r0, r0, r2
	lsls r3, r0, #3
	movs r6, #0xc0
	lsls r6, r6, #0xc
_0803FA0A:
	ldr r1, [r4]
	adds r1, r3, r1
	ldr r0, [r1, #0x20]
	adds r0, r0, r5
	str r0, [r1, #0x28]
	adds r1, #0x34
	strb r7, [r1]
	adds r5, r5, r6
	adds r3, #0x38
	adds r2, #1
	ldrh r0, [r4, #4]
	cmp r2, r0
	blt _0803FA0A
	b _0803FA50
_0803FA26:
	adds r2, r1, #0
	ldrh r0, [r4, #4]
	cmp r2, r0
	bge _0803FA50
	lsls r5, r3, #0x10
	movs r6, #4
	lsls r0, r2, #3
	subs r0, r0, r2
	lsls r3, r0, #3
_0803FA38:
	ldr r1, [r4]
	adds r1, r3, r1
	ldr r0, [r1, #0x20]
	adds r0, r0, r5
	str r0, [r1, #0x28]
	adds r1, #0x34
	strb r6, [r1]
	adds r3, #0x38
	adds r2, #1
	ldrh r0, [r4, #4]
	cmp r2, r0
	blt _0803FA38
_0803FA50:
	movs r0, #2
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	.thumb
sub_803FA58: @ 0x0803FA58
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r5, r0, #0
	mov r8, r1
	ldrh r0, [r5, #8]
	cmp r0, #0x11
	beq _0803FA72
	cmp r0, #0x12
	bne _0803FA70
	b _0803FBA4
_0803FA70:
	b _0803FCF8
_0803FA72:
	ldrh r1, [r5, #0x1a]
	cmp r1, #0
	beq _0803FA80
	ldr r0, _0803FAA4
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803FAAC
_0803FA80:
	movs r0, #0x1d
	ldrsb r0, [r5, r0]
	cmp r0, #0
	bge _0803FA8C
	movs r0, #0
	strb r0, [r5, #0x1d]
_0803FA8C:
	movs r0, #0
	strh r0, [r5, #6]
	ldr r0, _0803FAA8
	ldrb r1, [r0, #0x14]
	adds r2, r0, #0
	cmp r1, #0
	beq _0803FA9C
	b _0803FBDC
_0803FA9C:
	movs r0, #0x1d
	ldrsb r0, [r5, r0]
	adds r0, #1
	b _0803FBE2
	.align 2, 0
_0803FAA4: .4byte 0x0203EA81
_0803FAA8: .4byte gGameStatus
_0803FAAC:
	subs r0, r1, #1
	strh r0, [r5, #0x1a]
	ldrb r0, [r5, #0x1c]
	cmp r0, #0
	beq _0803FABC
_0803FAB6:
	subs r0, #1
	strb r0, [r5, #0x1c]
	b _0803FDCC
_0803FABC:
	ldr r0, _0803FB10
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803FAEA
	ldr r2, _0803FB14
	movs r1, #0xaa
	lsls r1, r1, #3
	adds r0, r2, r1
	ldrh r0, [r0]
	ldr r3, _0803FB18
	ldr r4, _0803FB1C
	adds r1, r2, r4
	ldrb r3, [r3]
	adds r1, r1, r3
	ldrb r1, [r1]
	ldr r6, _0803FB20
	adds r2, r2, r6
	ldr r2, [r2]
	movs r3, #0x80
	lsls r3, r3, #9
	adds r2, r2, r3
	bl audio_new_fx
_0803FAEA:
	ldrb r0, [r5, #0x1e]
	cmp r0, #0
	beq _0803FB28
	movs r0, #0x1d
	ldrsb r0, [r5, r0]
	add r0, r8
	lsls r1, r0, #3
	subs r1, r1, r0
	lsls r1, r1, #3
	ldr r0, [r5]
	adds r0, r0, r1
	ldr r1, _0803FB24
	ldrh r1, [r1]
	movs r2, #0
	movs r3, #1
	bl sub_8003368
	b _0803FB54
	.align 2, 0
_0803FB10: .4byte byte_203EA89
_0803FB14: .4byte 0x080CE440
_0803FB18: .4byte byte_203EA8C
_0803FB1C: .4byte 0x00000552
_0803FB20: .4byte 0x00000554
_0803FB24: .4byte 0x080A8CF0
_0803FB28:
	movs r0, #1
	strb r0, [r5, #0x1e]
	mov r4, r8
	ldrh r6, [r5, #4]
	cmp r4, r6
	bge _0803FB54
	lsls r0, r4, #3
	subs r0, r0, r4
	lsls r6, r0, #3
	ldr r7, _0803FB98
_0803FB3C:
	ldr r0, [r5]
	adds r0, r0, r6
	ldrh r1, [r7]
	movs r2, #0
	movs r3, #1
	bl sub_8003368
	adds r6, #0x38
	adds r4, #1
	ldrh r0, [r5, #4]
	cmp r4, r0
	blt _0803FB3C
_0803FB54:
	ldrb r0, [r5, #0x1d]
	adds r0, #1
	strb r0, [r5, #0x1d]
	movs r0, #0x1d
	ldrsb r0, [r5, r0]
	add r0, r8
	ldrh r1, [r5, #4]
	cmp r0, r1
	blt _0803FB6A
	movs r0, #0
	strb r0, [r5, #0x1d]
_0803FB6A:
	movs r0, #0x1d
	ldrsb r0, [r5, r0]
	add r0, r8
	lsls r1, r0, #3
	subs r1, r1, r0
	lsls r1, r1, #3
	ldr r0, [r5]
	adds r0, r0, r1
	ldr r1, _0803FB98
	ldrh r1, [r1, #2]
	movs r2, #0
	movs r3, #1
	bl sub_8003368
	ldr r1, _0803FB9C
_0803FB88:
	ldr r0, _0803FBA0
	ldrh r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r5, #0x1c]
	b _0803FDCC
	.align 2, 0
_0803FB98: .4byte 0x080A8CF0
_0803FB9C: .4byte 0x080CF330
_0803FBA0: .4byte gLoadedRoomLevel
_0803FBA4:
	ldrh r1, [r5, #0x1a]
	cmp r1, #0
	beq _0803FBB2
	ldr r0, _0803FBD4
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803FC08
_0803FBB2:
	movs r0, #0x1d
	ldrsb r0, [r5, r0]
	cmp r0, #0
	bge _0803FBBE
	movs r0, #0
	strb r0, [r5, #0x1d]
_0803FBBE:
	movs r0, #0
	strh r0, [r5, #6]
	ldr r0, _0803FBD8
	ldrb r1, [r0, #0x14]
	adds r2, r0, #0
	cmp r1, #0
	bne _0803FBDC
	movs r0, #0x1d
	ldrsb r0, [r5, r0]
	adds r0, #1
	b _0803FBE2
	.align 2, 0
_0803FBD4: .4byte 0x0203EA81
_0803FBD8: .4byte gGameStatus
_0803FBDC:
	movs r0, #0x1d
	ldrsb r0, [r5, r0]
	adds r0, #9
_0803FBE2:
	strh r0, [r5, #8]
	ldrh r0, [r5, #8]
	movs r4, #0
	strb r0, [r2, #0x13]
	strb r4, [r5, #0x1d]
	bl sub_8016B0C
	ldr r0, _0803FC00
	strb r4, [r0]
	bl sub_8063178
	ldr r0, _0803FC04
	strb r4, [r0]
	b _0803FCF8
	.align 2, 0
_0803FC00: .4byte byte_20020BC
_0803FC04: .4byte 0x0200108E
_0803FC08:
	subs r0, r1, #1
	strh r0, [r5, #0x1a]
	ldrb r0, [r5, #0x1c]
	cmp r0, #0
	beq _0803FC14
	b _0803FAB6
_0803FC14:
	ldr r0, _0803FC68
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803FC42
	ldr r2, _0803FC6C
	movs r3, #0xaa
	lsls r3, r3, #3
	adds r0, r2, r3
	ldrh r0, [r0]
	ldr r3, _0803FC70
	ldr r4, _0803FC74
	adds r1, r2, r4
	ldrb r3, [r3]
	adds r1, r1, r3
	ldrb r1, [r1]
	ldr r6, _0803FC78
	adds r2, r2, r6
	ldr r2, [r2]
	movs r3, #0x80
	lsls r3, r3, #9
	adds r2, r2, r3
	bl audio_new_fx
_0803FC42:
	movs r7, #0x1d
	ldrsb r7, [r5, r7]
	ldrb r0, [r5, #0x1e]
	cmp r0, #0
	beq _0803FC80
	mov r4, r8
	adds r0, r7, r4
	lsls r1, r0, #3
	subs r1, r1, r0
	lsls r1, r1, #3
	ldr r0, [r5]
	adds r0, r0, r1
	ldr r1, _0803FC7C
	ldrh r1, [r1]
	movs r2, #0
	movs r3, #1
	bl sub_8003368
	b _0803FCC8
	.align 2, 0
_0803FC68: .4byte byte_203EA89
_0803FC6C: .4byte 0x080CE440
_0803FC70: .4byte byte_203EA8C
_0803FC74: .4byte 0x00000552
_0803FC78: .4byte 0x00000554
_0803FC7C: .4byte 0x080A8CF0
_0803FC80:
	movs r0, #1
	strb r0, [r5, #0x1e]
	mov r4, r8
	ldrh r6, [r5, #4]
	cmp r4, r6
	bge _0803FCC8
	lsls r0, r4, #3
	subs r0, r0, r4
	lsls r6, r0, #3
	ldr r0, _0803FCB4
	mov sb, r0
_0803FC96:
	ldr r0, [r5]
	adds r0, r0, r6
	mov r2, sb
	ldrh r1, [r2]
	movs r2, #0
	movs r3, #1
	bl sub_8003368
	adds r6, #0x38
	adds r4, #1
	ldrh r3, [r5, #4]
	cmp r4, r3
	blt _0803FC96
	b _0803FCC8
	.align 2, 0
_0803FCB4: .4byte 0x080A8CF0
_0803FCB8:
	ldrh r1, [r5, #4]
	subs r1, #1
	mov r0, r8
	bl RandomMinMax
	mov r4, r8
	subs r0, r0, r4
	strb r0, [r5, #0x1d]
_0803FCC8:
	movs r0, #0x1d
	ldrsb r0, [r5, r0]
	cmp r7, r0
	beq _0803FCB8
	movs r0, #0x1d
	ldrsb r0, [r5, r0]
	add r0, r8
	lsls r1, r0, #3
	subs r1, r1, r0
	lsls r1, r1, #3
	ldr r0, [r5]
	adds r0, r0, r1
	ldr r1, _0803FCF0
	ldrh r1, [r1, #2]
	movs r2, #0
	movs r3, #1
	bl sub_8003368
	ldr r1, _0803FCF4
	b _0803FB88
	.align 2, 0
_0803FCF0: .4byte 0x080A8CF0
_0803FCF4: .4byte 0x080CF348
_0803FCF8:
	ldrh r3, [r5, #6]
	adds r2, r3, #0
	ldrh r1, [r5, #8]
	cmp r2, r1
	beq _0803FDBE
	ldrh r0, [r5, #0x18]
	subs r0, #1
	strh r0, [r5, #0x18]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0803FDCC
	movs r0, #0xa
	strh r0, [r5, #0x18]
	cmp r2, r1
	bhs _0803FD68
	adds r0, r3, #1
	strh r0, [r5, #6]
	ldr r4, _0803FD4C
	ldr r0, _0803FD50
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803FD60
	ldr r2, _0803FD54
	movs r6, #0xc8
	lsls r6, r6, #3
	adds r0, r2, r6
	ldrh r0, [r0]
	ldr r3, _0803FD58
	adds r6, #2
	adds r1, r2, r6
	ldrb r3, [r3]
	adds r1, r1, r3
	ldrb r1, [r1]
	ldr r3, _0803FD5C
	adds r2, r2, r3
	ldr r2, [r2]
	movs r6, #0x80
	lsls r6, r6, #9
	adds r2, r2, r6
	bl audio_new_fx
	b _0803FD64
	.align 2, 0
_0803FD4C: .4byte 0x0203EA84
_0803FD50: .4byte byte_203EA89
_0803FD54: .4byte 0x080CE440
_0803FD58: .4byte byte_203EA8C
_0803FD5C: .4byte 0x00000644
_0803FD60:
	movs r0, #1
	rsbs r0, r0, #0
_0803FD64:
	str r0, [r4]
	b _0803FD70
_0803FD68:
	cmp r2, r1
	bls _0803FD70
	subs r0, r3, #1
	strh r0, [r5, #6]
_0803FD70:
	ldrh r0, [r5, #6]
	lsls r0, r0, #3
	ldr r1, _0803FDC4
	adds r0, r0, r1
	mov r4, r8
	ldrh r1, [r5, #4]
	cmp r4, r1
	bge _0803FDB6
	ldr r2, _0803FDC8
	mov r8, r2
	adds r7, r0, #0
	lsls r0, r4, #3
	subs r0, r0, r4
	lsls r6, r0, #3
_0803FD8C:
	ldr r0, [r5]
	adds r0, r0, r6
	ldrb r1, [r7]
	lsls r1, r1, #1
	add r1, r8
	ldrh r1, [r1]
	movs r2, #0
	movs r3, #1
	bl sub_8003368
	ldr r0, [r5]
	adds r0, r6, r0
	adds r0, #0x35
	movs r1, #1
	strb r1, [r0]
	adds r7, #1
	adds r6, #0x38
	adds r4, #1
	ldrh r3, [r5, #4]
	cmp r4, r3
	blt _0803FD8C
_0803FDB6:
	ldrh r0, [r5, #6]
	ldrh r5, [r5, #8]
	cmp r0, r5
	bne _0803FDCC
_0803FDBE:
	movs r0, #2
	b _0803FDCE
	.align 2, 0
_0803FDC4: .4byte 0x080A8CF6
_0803FDC8: .4byte 0x080A8CF0
_0803FDCC:
	movs r0, #1
_0803FDCE:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	.thumb
sub_803FDDC: @ 0x0803FDDC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	adds r4, r1, #0
	ldrh r3, [r5, #6]
	adds r2, r3, #0
	ldrh r1, [r5, #8]
	cmp r2, r1
	beq _0803FE60
	ldrh r0, [r5, #0x18]
	subs r0, #1
	strh r0, [r5, #0x18]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0803FE6C
	movs r0, #0xa
	strh r0, [r5, #0x18]
	cmp r2, r1
	bhs _0803FE08
	adds r0, r3, #1
	b _0803FE0E
_0803FE08:
	cmp r2, r1
	bls _0803FE10
	subs r0, r3, #1
_0803FE0E:
	strh r0, [r5, #6]
_0803FE10:
	ldrh r0, [r5, #6]
	lsls r1, r0, #2
	adds r1, r1, r0
	ldr r0, _0803FE64
	adds r1, r1, r0
	adds r6, r4, #0
	ldrh r0, [r5, #4]
	cmp r6, r0
	bge _0803FE58
	ldr r0, _0803FE68
	mov r8, r0
	adds r7, r1, #0
	lsls r0, r6, #3
	subs r0, r0, r6
	lsls r4, r0, #3
_0803FE2E:
	ldr r0, [r5]
	adds r0, r0, r4
	ldrb r1, [r7]
	lsls r1, r1, #1
	add r1, r8
	ldrh r1, [r1]
	movs r2, #0
	movs r3, #1
	bl sub_8003368
	ldr r0, [r5]
	adds r0, r4, r0
	adds r0, #0x35
	movs r1, #1
	strb r1, [r0]
	adds r7, #1
	adds r4, #0x38
	adds r6, #1
	ldrh r0, [r5, #4]
	cmp r6, r0
	blt _0803FE2E
_0803FE58:
	ldrh r0, [r5, #6]
	ldrh r5, [r5, #8]
	cmp r0, r5
	bne _0803FE6C
_0803FE60:
	movs r0, #2
	b _0803FE6E
	.align 2, 0
_0803FE64: .4byte 0x080A8D92
_0803FE68: .4byte 0x080A8D8E
_0803FE6C:
	movs r0, #1
_0803FE6E:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

    .thumb
    .global sub_803FE78
sub_803FE78: @ 0x0803FE78
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _0804007C
	mov r8, r0
	ldr r3, [r0]
	movs r2, #0x98
	lsls r2, r2, #3
	adds r1, r3, r2
	ldr r0, _08040080
	mov ip, r0
	ldrh r0, [r0, #0xc]
	strh r0, [r1, #0xa]
	ldr r7, _08040084
	ldrh r0, [r7, #0xc]
	strh r0, [r1, #6]
	strh r0, [r1, #8]
	adds r2, #0x40
	adds r1, r3, r2
	mov r2, ip
	ldrb r0, [r2]
	strh r0, [r1, #0xa]
	ldrb r0, [r7]
	strh r0, [r1, #6]
	strh r0, [r1, #8]
	movs r0, #0x90
	lsls r0, r0, #2
	adds r1, r3, r0
	movs r0, #0xe
	ldrsb r0, [r2, r0]
	strh r0, [r1, #0xa]
	movs r0, #0xe
	ldrsb r0, [r7, r0]
	strh r0, [r1, #6]
	strh r0, [r1, #8]
	movs r2, #0xa0
	lsls r2, r2, #2
	adds r1, r3, r2
	mov r2, ip
	movs r0, #0xf
	ldrsb r0, [r2, r0]
	strh r0, [r1, #0xa]
	movs r0, #0xf
	ldrsb r0, [r7, r0]
	strh r0, [r1, #6]
	strh r0, [r1, #8]
	movs r0, #0xc0
	lsls r0, r0, #2
	adds r1, r3, r0
	movs r0, #0x11
	ldrsb r0, [r2, r0]
	strh r0, [r1, #0xa]
	movs r0, #0x11
	ldrsb r0, [r7, r0]
	strh r0, [r1, #6]
	strh r0, [r1, #8]
	movs r2, #0xb0
	lsls r2, r2, #2
	adds r1, r3, r2
	mov r2, ip
	movs r0, #0x10
	ldrsb r0, [r2, r0]
	strh r0, [r1, #0xa]
	movs r0, #0x10
	ldrsb r0, [r7, r0]
	strh r0, [r1, #6]
	strh r0, [r1, #8]
	adds r0, r3, #0
	adds r0, #0xc0
	ldrb r2, [r2, #0x12]
	lsls r2, r2, #0x18
	asrs r2, r2, #0x18
	strh r2, [r0, #0xa]
	movs r1, #0x12
	ldrsb r1, [r7, r1]
	strh r1, [r0, #6]
	strh r1, [r0, #8]
	movs r1, #0xa8
	lsls r1, r1, #4
	adds r0, r3, r1
	strh r2, [r0, #0xa]
	movs r1, #0x12
	ldrsb r1, [r7, r1]
	strh r1, [r0, #6]
	strh r1, [r0, #8]
	movs r0, #0xb0
	lsls r0, r0, #3
	adds r2, r3, r0
	ldrb r0, [r7, #6]
	strh r0, [r2, #0xa]
	ldrb r0, [r7, #6]
	strh r0, [r2, #6]
	strh r0, [r2, #8]
	movs r0, #0xac
	lsls r0, r0, #4
	adds r1, r3, r0
	ldrb r0, [r7, #6]
	strh r0, [r1, #0xa]
	ldrb r0, [r7, #6]
	strh r0, [r1, #6]
	ldrh r0, [r2, #6]
	strh r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r3, r2
	mov r2, ip
	ldrb r0, [r2, #7]
	strh r0, [r1, #0xa]
	ldrb r0, [r7, #7]
	strh r0, [r1, #6]
	strh r0, [r1, #8]
	movs r0, #0xa0
	lsls r0, r0, #1
	adds r2, r3, r0
	ldr r6, _08040088
	ldr r4, _0804008C
	ldrh r1, [r4]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrb r0, [r0, #3]
	strh r0, [r2, #0xa]
	ldr r5, _08040090
	ldrh r1, [r4]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldrb r0, [r0, #3]
	strh r0, [r2, #6]
	strh r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #2
	adds r2, r3, r1
	ldrh r1, [r4]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrb r0, [r0, #4]
	strh r0, [r2, #0xa]
	ldrh r1, [r4]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldrb r0, [r0, #4]
	strh r0, [r2, #6]
	strh r0, [r2, #8]
	movs r2, #0xc0
	lsls r2, r2, #1
	adds r1, r3, r2
	mov r2, ip
	ldrb r0, [r2, #1]
	strh r0, [r1, #0xa]
	ldrb r0, [r7, #1]
	strh r0, [r1, #6]
	strh r0, [r1, #8]
	movs r0, #0xa8
	lsls r0, r0, #3
	adds r1, r3, r0
	ldrb r0, [r2, #0xb]
	strh r0, [r1, #0xa]
	ldrb r0, [r7, #0xb]
	strh r0, [r1, #6]
	strh r0, [r1, #8]
	movs r2, #0xe0
	lsls r2, r2, #2
	adds r1, r3, r2
	mov r2, ip
	ldrb r0, [r2, #0x1a]
	strh r0, [r1, #0xa]
	ldrb r0, [r7, #0x1a]
	strh r0, [r1, #6]
	strh r0, [r1, #8]
	movs r0, #0x88
	lsls r0, r0, #3
	adds r1, r3, r0
	ldrb r0, [r2, #0x1d]
	strh r0, [r1, #0xa]
	ldrb r0, [r7, #0x1d]
	strh r0, [r1, #6]
	strh r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #3
	adds r1, r3, r2
	mov r2, ip
	ldrb r0, [r2, #0x1c]
	strh r0, [r1, #0xa]
	ldrb r0, [r7, #0x1c]
	strh r0, [r1, #6]
	strh r0, [r1, #8]
	movs r0, #0xf0
	lsls r0, r0, #2
	adds r1, r3, r0
	ldrb r0, [r2, #0x1b]
	strh r0, [r1, #0xa]
	ldrb r0, [r7, #0x1b]
	strh r0, [r1, #6]
	strh r0, [r1, #8]
	movs r2, #0x90
	lsls r2, r2, #3
	adds r1, r3, r2
	mov r2, ip
	ldrb r0, [r2, #0x1e]
	strh r0, [r1, #0xa]
	ldrb r0, [r7, #0x1e]
	strh r0, [r1, #6]
	strh r0, [r1, #8]
	movs r0, #0xe8
	lsls r0, r0, #4
	adds r3, r3, r0
	ldrb r0, [r3, #0x1f]
	cmp r0, #0
	bne _08040032
	ldrb r0, [r2, #0x13]
	strh r0, [r3, #0xa]
	ldrb r0, [r7, #0x13]
	strh r0, [r3, #6]
	strh r0, [r3, #8]
_08040032:
	mov r1, r8
	ldr r0, [r1]
	movs r2, #0xec
	lsls r2, r2, #4
	adds r1, r0, r2
	ldrb r0, [r1, #0x1f]
	cmp r0, #0
	bne _0804004E
	mov r2, ip
	ldrb r0, [r2, #0x13]
	strh r0, [r1, #0xa]
	ldrb r0, [r7, #0x13]
	strh r0, [r1, #6]
	strh r0, [r1, #8]
_0804004E:
	mov r0, r8
	ldr r2, [r0]
	movs r1, #0xe0
	lsls r1, r1, #4
	adds r0, r2, r1
	mov r1, ip
	ldrb r3, [r1, #0x16]
	strh r3, [r0, #0xa]
	ldrb r1, [r7, #0x16]
	strh r1, [r0, #6]
	strh r1, [r0, #8]
	movs r0, #0xe4
	lsls r0, r0, #4
	adds r2, r2, r0
	strh r3, [r2, #0xa]
	ldrb r0, [r7, #0x16]
	strh r0, [r2, #6]
	strh r0, [r2, #8]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804007C: .4byte 0x0203EA7C
_08040080: .4byte 0x080CC8C4
_08040084: .4byte gGameStatus
_08040088: .4byte 0x080CC84C
_0804008C: .4byte gLoadedRoomLevel
_08040090: .4byte 0x02000FCC

    .thumb
sub_8040094: @ 0x08040094
	ldr r0, _080400AC
	ldr r1, [r0]
	movs r0, #0x9c
	lsls r0, r0, #4
	adds r1, r1, r0
	ldr r2, _080400B0
	ldrh r0, [r2, #0xc]
	strh r0, [r1, #6]
	ldrh r0, [r2, #0xc]
	strh r0, [r1, #8]
	bx lr
	.align 2, 0
_080400AC: .4byte 0x0203EA7C
_080400B0: .4byte gGameStatus

    .thumb
    .global sub_80400B4
sub_80400B4: @ 0x080400B4
	push {r4, r5, r6, r7, lr}
	ldr r1, _08040160
	movs r0, #0
	strb r0, [r1]
	ldr r1, _08040164
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r1]
	ldr r4, _08040168
	movs r0, #0xf0
	lsls r0, r0, #4
	movs r1, #3
	movs r2, #4
	bl Alloc
	str r0, [r4]
	movs r6, #0
	adds r5, r4, #0
	movs r4, #0
	movs r7, #1
_080400DC:
	ldr r0, [r5]
	lsls r3, r6, #6
	adds r0, r3, r0
	strb r4, [r0, #0x1f]
	ldr r0, [r5]
	adds r0, r3, r0
	adds r0, #0x29
	strb r4, [r0]
	ldr r1, [r5]
	adds r1, r3, r1
	strh r4, [r1, #0xc]
	strh r4, [r1, #4]
	ldr r2, _0804016C
	lsls r0, r6, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	strh r0, [r1, #0xe]
	ldr r0, _08040170
	str r0, [r1, #0x10]
	adds r1, #0x2a
	strb r4, [r1]
	ldr r0, [r5]
	adds r0, r3, r0
	strb r4, [r0, #0x1d]
	ldr r0, [r5]
	adds r0, r3, r0
	strb r4, [r0, #0x1c]
	ldr r0, [r5]
	adds r0, r3, r0
	strh r4, [r0, #0x1a]
	strb r4, [r0, #0x1e]
	ldr r0, [r5]
	adds r0, r3, r0
	adds r0, #0x3c
	strb r7, [r0]
	ldr r0, [r5]
	adds r0, r3, r0
	adds r0, #0x3d
	movs r1, #6
	strb r1, [r0]
	ldr r0, [r5]
	adds r0, r3, r0
	adds r0, #0x3e
	strb r4, [r0]
	ldr r0, [r5]
	adds r0, r3, r0
	adds r0, #0x36
	strb r7, [r0]
	ldr r0, [r5]
	adds r3, r3, r0
	movs r0, #0xf0
	strh r0, [r3, #0x34]
	movs r0, #0xa
	strh r0, [r3, #0x3a]
	strh r4, [r3, #0x38]
	ldr r0, _08040174
	str r0, [r3, #0x30]
	adds r6, #1
	cmp r6, #0x3b
	ble _080400DC
	bl sub_803FE78
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08040160: .4byte 0x0203EA80
_08040164: .4byte 0x0203EA84
_08040168: .4byte 0x0203EA7C
_0804016C: .4byte 0x080A8E28
_08040170: .4byte 0x0002CCCC
_08040174: .4byte 0x080B01B0

    .thumb
	.global sub_8040178
sub_8040178: @ 0x08040178
	push {r4, r5, lr}
	ldr r0, _080401F4
	ldr r2, [r0]
	ldr r5, _080401F8
	ldr r3, _080401FC
	ldrh r1, [r3]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldrh r0, [r0, #6]
	strh r0, [r2, #0xa]
	ldr r4, _08040200
	ldrh r1, [r3]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r4
	ldrh r0, [r0, #6]
	strh r0, [r2, #6]
	strh r0, [r2, #8]
	ldrh r1, [r3]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldrb r0, [r0]
	adds r1, r2, #0
	adds r1, #0x4a
	strh r0, [r1]
	ldrh r1, [r3]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r4
	ldrb r1, [r0]
	adds r0, r2, #0
	adds r0, #0x46
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	movs r0, #0xe0
	lsls r0, r0, #1
	adds r2, r2, r0
	ldrh r1, [r3]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldrb r0, [r0, #5]
	strh r0, [r2, #0xa]
	ldrh r1, [r3]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r4
	ldrb r0, [r0, #5]
	strh r0, [r2, #6]
	strh r0, [r2, #8]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080401F4: .4byte 0x0203EA7C
_080401F8: .4byte 0x080CC84C
_080401FC: .4byte gLoadedRoomLevel
_08040200: .4byte 0x02000FCC

    .thumb
    .global sub_08040204
sub_08040204: @ 0x08040204
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	adds r4, r1, #0
	cmp r6, #0x39
	bls _08040218
	.2byte 0xEE00, 0xEE00
	b _08040770
_08040218:
	lsls r0, r6, #2
	ldr r1, _08040224
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08040224: .4byte 0x08040228
_08040228: @ jump table
	.4byte _0804041C @ case 0
	.4byte _0804044C @ case 1
	.4byte _0804047C @ case 2
	.4byte _08040748 @ case 3
	.4byte _08040498 @ case 4
	.4byte _080404B4 @ case 5
	.4byte _080403EC @ case 6
	.4byte _080404E4 @ case 7
	.4byte _08040514 @ case 8
	.4byte _08040748 @ case 9
	.4byte _08040748 @ case 10
	.4byte _08040748 @ case 11
	.4byte _08040748 @ case 12
	.4byte _08040748 @ case 13
	.4byte _08040544 @ case 14
	.4byte _08040574 @ case 15
	.4byte _08040590 @ case 16
	.4byte _080405AC @ case 17
	.4byte _080405DC @ case 18
	.4byte _0804061C @ case 19
	.4byte _08040770 @ case 20
	.4byte _08040770 @ case 21
	.4byte _08040748 @ case 22
	.4byte _08040770 @ case 23
	.4byte _08040770 @ case 24
	.4byte _08040770 @ case 25
	.4byte _08040770 @ case 26
	.4byte _08040770 @ case 27
	.4byte _08040770 @ case 28
	.4byte _08040770 @ case 29
	.4byte _08040770 @ case 30
	.4byte _08040770 @ case 31
	.4byte _08040770 @ case 32
	.4byte _08040770 @ case 33
	.4byte _08040770 @ case 34
	.4byte _08040770 @ case 35
	.4byte _0804060C @ case 36
	.4byte _08040748 @ case 37
	.4byte _08040748 @ case 38
	.4byte _0804062C @ case 39
	.4byte _08040648 @ case 40
	.4byte _08040664 @ case 41
	.4byte _08040748 @ case 42
	.4byte _0804075C @ case 43
	.4byte _08040680 @ case 44
	.4byte _0804069C @ case 45
	.4byte _080406B8 @ case 46
	.4byte _080406D4 @ case 47
	.4byte _080406F0 @ case 48
	.4byte _08040710 @ case 49
	.4byte _08040748 @ case 50
	.4byte _08040748 @ case 51
	.4byte _08040748 @ case 52
	.4byte _08040748 @ case 53
	.4byte _08040748 @ case 54
	.4byte _080403D4 @ case 55
	.4byte _08040310 @ case 56
	.4byte _080403A4 @ case 57
_08040310:
	ldr r0, _08040364
	ldr r0, [r0]
	movs r1, #0xe4
	lsls r1, r1, #4
	adds r0, r0, r1
	ldrb r0, [r0, #0x1f]
	movs r6, #0x3b
	cmp r0, #0
	beq _08040328
	cmp r0, #6
	beq _08040328
	movs r6, #0x3a
_08040328:
	ldr r7, _08040364
	ldr r0, [r7]
	lsls r1, r6, #6
	adds r2, r1, r0
	movs r0, #0
	mov r8, r0
	movs r0, #0xa
	strh r0, [r2, #0x18]
	adds r5, r1, #0
	cmp r4, #0x11
	bne _08040368
	movs r0, #0x96
	lsls r0, r0, #2
	strh r0, [r2, #0x1a]
	mov r1, r8
	strb r1, [r2, #0x1c]
	ldr r1, [r7]
	adds r1, r5, r1
	mov r2, r8
	strb r2, [r1, #0x1e]
	movs r1, #0
	bl sub_80630C0
	ldr r0, [r7]
	adds r0, r5, r0
	strh r4, [r0, #6]
	movs r1, #0xff
	strb r1, [r0, #0x1d]
	b _0804038A
	.align 2, 0
_08040364: .4byte 0x0203EA7C
_08040368:
	cmp r4, #0x12
	bne _08040390
	movs r0, #0x96
	lsls r0, r0, #2
	strh r0, [r2, #0x1a]
	mov r1, r8
	strb r1, [r2, #0x1c]
	ldr r1, [r7]
	adds r1, r5, r1
	mov r2, r8
	strb r2, [r1, #0x1e]
	movs r1, #0
	bl sub_80630C0
	ldr r0, [r7]
	adds r0, r5, r0
	strh r4, [r0, #6]
_0804038A:
	ldr r0, _0804039C
	mov r1, r8
	strb r1, [r0]
_08040390:
	ldr r0, _080403A0
	ldr r0, [r0]
	adds r0, r5, r0
	strh r4, [r0, #8]
	b _08040776
	.align 2, 0
_0804039C: .4byte 0x0203EA81
_080403A0: .4byte 0x0203EA7C
_080403A4:
	ldr r0, _080403D0
	ldr r0, [r0]
	movs r2, #0xec
	lsls r2, r2, #4
	adds r0, r0, r2
	ldrb r0, [r0, #0x1f]
	movs r6, #0x39
	cmp r0, #0
	beq _080403BC
	cmp r0, #6
	beq _080403BC
	movs r6, #0x38
_080403BC:
	ldr r0, _080403D0
	ldr r0, [r0]
	lsls r2, r6, #6
	adds r0, r2, r0
	movs r1, #0xa
	strh r1, [r0, #0x18]
	strh r4, [r0, #8]
	adds r5, r2, #0
	b _08040776
	.align 2, 0
_080403D0: .4byte 0x0203EA7C
_080403D4:
	ldr r0, _080403E8
	ldr r0, [r0]
	lsls r1, r6, #6
	adds r0, r1, r0
	strh r4, [r0, #8]
	strh r4, [r0, #0xa]
	strh r4, [r0, #6]
	adds r5, r1, #0
	b _08040776
	.align 2, 0
_080403E8: .4byte 0x0203EA7C
_080403EC:
	ldr r0, _08040418
	ldr r0, [r0]
	lsls r1, r6, #6
	adds r2, r1, r0
	ldrh r0, [r2, #6]
	adds r5, r1, #0
	cmp r0, r4
	ble _08040400
	.2byte 0xEE00, 0xEE00
_08040400:
	strh r4, [r2, #8]
	movs r0, #0x28
	bl sub_08042150
	adds r1, r0, #0
	cmp r1, #0
	bge _08040410
	b _08040776
_08040410:
	movs r0, #0x28
	bl sub_08040204
	b _08040776
	.align 2, 0
_08040418: .4byte 0x0203EA7C
_0804041C:
	ldr r0, _08040448
	ldr r0, [r0]
	lsls r1, r6, #6
	adds r2, r1, r0
	ldrh r0, [r2, #6]
	adds r5, r1, #0
	cmp r0, r4
	blt _08040430
	.2byte 0xEE00, 0xEE00
_08040430:
	strh r4, [r2, #8]
	movs r0, #0x27
	bl sub_08042150
	adds r1, r0, #0
	cmp r1, #0
	bge _08040440
	b _08040776
_08040440:
	movs r0, #0x27
	bl sub_08040204
	b _08040776
	.align 2, 0
_08040448: .4byte 0x0203EA7C
_0804044C:
	ldr r0, _08040478
	ldr r0, [r0]
	lsls r1, r6, #6
	adds r2, r1, r0
	ldrh r0, [r2, #6]
	adds r5, r1, #0
	cmp r0, r4
	blt _08040460
	.2byte 0xEE00, 0xEE00
_08040460:
	strh r4, [r2, #8]
	movs r0, #0x29
	bl sub_08042150
	adds r1, r0, #0
	cmp r1, #0
	bge _08040470
	b _08040776
_08040470:
	movs r0, #0x29
	bl sub_08040204
	b _08040776
	.align 2, 0
_08040478: .4byte 0x0203EA7C
_0804047C:
	ldr r0, _08040494
	ldr r0, [r0]
	lsls r1, r6, #6
	adds r2, r1, r0
	ldrh r0, [r2, #6]
	adds r5, r1, #0
	cmp r0, r4
	bge _0804048E
	b _080405A4
_0804048E:
	.2byte 0xEE00, 0xEE00
	b _080405A4
	.align 2, 0
_08040494: .4byte 0x0203EA7C
_08040498:
	ldr r0, _080404B0
	ldr r0, [r0]
	lsls r1, r6, #6
	adds r2, r1, r0
	ldrh r0, [r2, #6]
	adds r5, r1, #0
	cmp r0, r4
	bgt _080404AA
	b _080405A4
_080404AA:
	.2byte 0xEE00, 0xEE00
	b _080405A4
	.align 2, 0
_080404B0: .4byte 0x0203EA7C
_080404B4:
	ldr r0, _080404E0
	ldr r0, [r0]
	lsls r1, r6, #6
	adds r2, r1, r0
	ldrh r0, [r2, #6]
	adds r5, r1, #0
	cmp r0, r4
	blt _080404C8
	.2byte 0xEE00, 0xEE00
_080404C8:
	strh r4, [r2, #8]
	movs r0, #0x2d
	bl sub_08042150
	adds r1, r0, #0
	cmp r1, #0
	bge _080404D8
	b _08040776
_080404D8:
	movs r0, #0x2d
	bl sub_08040204
	b _08040776
	.align 2, 0
_080404E0: .4byte 0x0203EA7C
_080404E4:
	ldr r0, _08040510
	ldr r0, [r0]
	lsls r1, r6, #6
	adds r2, r1, r0
	ldrh r0, [r2, #6]
	adds r5, r1, #0
	cmp r0, r4
	blt _080404F8
	.2byte 0xEE00, 0xEE00
_080404F8:
	strh r4, [r2, #8]
	movs r0, #0x31
	bl sub_08042150
	adds r1, r0, #0
	cmp r1, #0
	bge _08040508
	b _08040776
_08040508:
	movs r0, #0x31
	bl sub_08040204
	b _08040776
	.align 2, 0
_08040510: .4byte 0x0203EA7C
_08040514:
	ldr r0, _08040540
	ldr r0, [r0]
	lsls r1, r6, #6
	adds r2, r1, r0
	ldrh r0, [r2, #6]
	adds r5, r1, #0
	cmp r0, r4
	blt _08040528
	.2byte 0xEE00, 0xEE00
_08040528:
	strh r4, [r2, #8]
	movs r0, #0x2f
	bl sub_08042150
	adds r1, r0, #0
	cmp r1, #0
	bge _08040538
	b _08040776
_08040538:
	movs r0, #0x2f
	bl sub_08040204
	b _08040776
	.align 2, 0
_08040540: .4byte 0x0203EA7C
_08040544:
	ldr r0, _08040570
	ldr r0, [r0]
	lsls r1, r6, #6
	adds r2, r1, r0
	ldrh r0, [r2, #6]
	adds r5, r1, #0
	cmp r0, r4
	blt _08040558
	.2byte 0xEE00, 0xEE00
_08040558:
	strh r4, [r2, #8]
	movs r0, #0x2e
	bl sub_08042150
	adds r1, r0, #0
	cmp r1, #0
	bge _08040568
	b _08040776
_08040568:
	movs r0, #0x2e
	bl sub_08040204
	b _08040776
	.align 2, 0
_08040570: .4byte 0x0203EA7C
_08040574:
	ldr r0, _0804058C
	ldr r0, [r0]
	lsls r1, r6, #6
	adds r2, r1, r0
	ldrh r0, [r2, #6]
	adds r5, r1, #0
	cmp r0, r4
	blt _080405A4
	.2byte 0xEE00, 0xEE00
	b _080405A4
	.align 2, 0
_0804058C: .4byte 0x0203EA7C
_08040590:
	ldr r0, _080405A8
	ldr r0, [r0]
	lsls r1, r6, #6
	adds r2, r1, r0
	ldrh r0, [r2, #6]
	adds r5, r1, #0
	cmp r0, r4
	blt _080405A4
	.2byte 0xEE00, 0xEE00
_080405A4:
	strh r4, [r2, #8]
	b _08040776
	.align 2, 0
_080405A8: .4byte 0x0203EA7C
_080405AC:
	ldr r0, _080405D8
	ldr r0, [r0]
	lsls r1, r6, #6
	adds r2, r1, r0
	ldrh r0, [r2, #6]
	adds r5, r1, #0
	cmp r0, r4
	blt _080405C0
	.2byte 0xEE00, 0xEE00
_080405C0:
	strh r4, [r2, #8]
	movs r0, #0x2c
	bl sub_08042150
	adds r1, r0, #0
	cmp r1, #0
	bge _080405D0
	b _08040776
_080405D0:
	movs r0, #0x2c
	bl sub_08040204
	b _08040776
	.align 2, 0
_080405D8: .4byte 0x0203EA7C
_080405DC:
	ldr r0, _08040608
	ldr r0, [r0]
	lsls r1, r6, #6
	adds r2, r1, r0
	ldrh r0, [r2, #6]
	adds r5, r1, #0
	cmp r0, r4
	blt _080405F0
	.2byte 0xEE00, 0xEE00
_080405F0:
	strh r4, [r2, #8]
	movs r0, #0x30
	bl sub_08042150
	adds r1, r0, #0
	cmp r1, #0
	bge _08040600
	b _08040776
_08040600:
	movs r0, #0x30
	bl sub_08040204
	b _08040776
	.align 2, 0
_08040608: .4byte 0x0203EA7C
_0804060C:
	ldr r0, _08040618
	ldr r0, [r0]
	lsls r1, r6, #6
	adds r0, r1, r0
	strh r4, [r0, #6]
	b _08040750
	.align 2, 0
_08040618: .4byte 0x0203EA7C
_0804061C:
	ldr r0, _08040628
	ldr r0, [r0]
	lsls r1, r6, #6
	adds r0, r1, r0
	strh r4, [r0, #6]
	b _08040750
	.align 2, 0
_08040628: .4byte 0x0203EA7C
_0804062C:
	ldr r0, _08040640
	ldr r1, [r0]
	lsls r3, r6, #6
	adds r1, r3, r1
	strh r4, [r1, #0xa]
	ldr r2, _08040644
	ldrh r0, [r2, #0xc]
	strh r0, [r1, #6]
	ldrh r0, [r2, #0xc]
	b _08040702
	.align 2, 0
_08040640: .4byte 0x0203EA7C
_08040644: .4byte gGameStatus
_08040648:
	ldr r0, _0804065C
	ldr r1, [r0]
	lsls r3, r6, #6
	adds r1, r3, r1
	strh r4, [r1, #0xa]
	ldr r2, _08040660
	ldrb r0, [r2, #1]
	strh r0, [r1, #6]
	ldrb r0, [r2, #1]
	b _08040702
	.align 2, 0
_0804065C: .4byte 0x0203EA7C
_08040660: .4byte gGameStatus
_08040664:
	ldr r0, _08040678
	ldr r1, [r0]
	lsls r3, r6, #6
	adds r1, r3, r1
	strh r4, [r1, #0xa]
	ldr r2, _0804067C
	ldrb r0, [r2]
	strh r0, [r1, #6]
	ldrb r0, [r2]
	b _08040702
	.align 2, 0
_08040678: .4byte 0x0203EA7C
_0804067C: .4byte gGameStatus
_08040680:
	ldr r0, _08040694
	ldr r1, [r0]
	lsls r3, r6, #6
	adds r1, r3, r1
	strh r4, [r1, #0xa]
	ldr r2, _08040698
	ldrb r0, [r2, #0x1d]
	strh r0, [r1, #6]
	ldrb r0, [r2, #0x1d]
	b _08040702
	.align 2, 0
_08040694: .4byte 0x0203EA7C
_08040698: .4byte gGameStatus
_0804069C:
	ldr r0, _080406B0
	ldr r1, [r0]
	lsls r3, r6, #6
	adds r1, r3, r1
	strh r4, [r1, #0xa]
	ldr r2, _080406B4
	ldrb r0, [r2, #0x18]
	strh r0, [r1, #6]
	ldrb r0, [r2, #0x18]
	b _08040702
	.align 2, 0
_080406B0: .4byte 0x0203EA7C
_080406B4: .4byte gGameStatus
_080406B8:
	ldr r0, _080406CC
	ldr r1, [r0]
	lsls r3, r6, #6
	adds r1, r3, r1
	strh r4, [r1, #0xa]
	ldr r2, _080406D0
	ldrb r0, [r2, #0x1a]
	strh r0, [r1, #6]
	ldrb r0, [r2, #0x1a]
	b _08040702
	.align 2, 0
_080406CC: .4byte 0x0203EA7C
_080406D0: .4byte gGameStatus
_080406D4:
	ldr r0, _080406E8
	ldr r1, [r0]
	lsls r3, r6, #6
	adds r1, r3, r1
	strh r4, [r1, #0xa]
	ldr r2, _080406EC
	ldrb r0, [r2, #0x19]
	strh r0, [r1, #6]
	ldrb r0, [r2, #0x19]
	b _08040702
	.align 2, 0
_080406E8: .4byte 0x0203EA7C
_080406EC: .4byte gGameStatus
_080406F0:
	ldr r0, _08040708
	ldr r1, [r0]
	lsls r3, r6, #6
	adds r1, r3, r1
	strh r4, [r1, #0xa]
	ldr r2, _0804070C
	ldrb r0, [r2, #0x1e]
	strh r0, [r1, #6]
	ldrb r0, [r2, #0x1e]
_08040702:
	strh r0, [r1, #8]
	adds r5, r3, #0
	b _08040776
	.align 2, 0
_08040708: .4byte 0x0203EA7C
_0804070C: .4byte gGameStatus
_08040710:
	ldr r0, _0804073C
	ldr r2, [r0]
	lsls r5, r6, #6
	adds r2, r5, r2
	strh r4, [r2, #0xa]
	ldr r4, _08040740
	ldr r3, _08040744
	ldrh r1, [r3]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r4
	ldrb r0, [r0, #5]
	strh r0, [r2, #6]
	ldrh r1, [r3]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r4
	ldrb r0, [r0, #5]
	strh r0, [r2, #8]
	b _08040776
	.align 2, 0
_0804073C: .4byte 0x0203EA7C
_08040740: .4byte 0x02000FCC
_08040744: .4byte gLoadedRoomLevel
_08040748:
	ldr r0, _08040758
	ldr r0, [r0]
	lsls r1, r6, #6
	adds r0, r1, r0
_08040750:
	strh r4, [r0, #8]
	adds r5, r1, #0
	b _08040776
	.align 2, 0
_08040758: .4byte 0x0203EA7C
_0804075C:
	ldr r0, _08040790
	ldr r1, [r0]
	lsls r0, r6, #6
	adds r1, r0, r1
	ldrh r0, [r1, #6]
	cmp r0, r4
	blt _0804076E
	.2byte 0xEE00, 0xEE00
_0804076E:
	strh r4, [r1, #8]
_08040770:
	.2byte 0xEE00, 0xEE00
	lsls r5, r6, #6
_08040776:
	ldr r1, _08040790
	ldr r0, [r1]
	adds r4, r5, r0
	ldrb r0, [r4, #0x1f]
	adds r7, r1, #0
	cmp r0, #5
	bgt _08040794
	cmp r0, #3
	bge _080407AA
	cmp r0, #0
	beq _0804079A
	b _080407EC
	.align 2, 0
_08040790: .4byte 0x0203EA7C
_08040794:
	cmp r0, #6
	beq _080407A0
	b _080407EC
_0804079A:
	movs r0, #1
	strb r0, [r4, #0x1f]
	b _080407EC
_080407A0:
	adds r1, r4, #0
	adds r1, #0x29
	movs r0, #1
	strb r0, [r1]
	b _080407EC
_080407AA:
	ldr r2, _080407C4
	lsls r3, r6, #3
	adds r1, r2, #4
	adds r1, r3, r1
	ldrh r0, [r4, #0xc]
	ldr r1, [r1]
	lsls r0, r0, #4
	adds r0, r0, r1
	ldr r4, [r0]
	ldr r0, [r0, #4]
	adds r6, r2, #0
	b _080407E2
	.align 2, 0
_080407C4: .4byte 0x080AF310
_080407C8:
	ldr r2, [r7]
	adds r2, r5, r2
	ldrh r0, [r2, #0xc]
	subs r0, #1
	strh r0, [r2, #0xc]
	adds r1, r6, #4
	adds r1, r3, r1
	ldrh r0, [r2, #0xc]
	ldr r1, [r1]
	lsls r0, r0, #4
	adds r0, r0, r1
	ldr r4, [r0]
	ldr r0, [r0, #4]
_080407E2:
	cmp r4, #0xb
	bne _080407C8
	subs r0, #3
	cmp r0, #1
	bhi _080407C8
_080407EC:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	.thumb
sub_80407F8: @ 0x080407F8
	push {r4, r5, lr}
	ldr r5, _08040834
	ldr r2, [r5]
	movs r1, #0xe4
	lsls r1, r1, #4
	adds r0, r2, r1
	ldrb r0, [r0, #0x1f]
	movs r4, #0x3b
	cmp r0, #0
	beq _0804080E
	movs r4, #0x3a
_0804080E:
	lsls r3, r4, #6
	adds r2, r3, r2
	ldrb r0, [r2, #0x1f]
	adds r1, r3, #0
	cmp r0, #0
	beq _08040820
	ldrh r0, [r2, #4]
	adds r0, #1
	strh r0, [r2, #4]
_08040820:
	ldr r0, [r5]
	adds r1, r1, r0
	ldrb r0, [r1, #0x1f]
	cmp r0, #5
	beq _0804084C
	cmp r0, #5
	bgt _08040838
	cmp r0, #0
	beq _0804083E
	b _08040872
	.align 2, 0
_08040834: .4byte 0x0203EA7C
_08040838:
	cmp r0, #6
	beq _08040844
	b _08040872
_0804083E:
	movs r0, #1
	strb r0, [r1, #0x1f]
	b _08040872
_08040844:
	adds r1, #0x29
	movs r0, #1
	strb r0, [r1]
	b _08040872
_0804084C:
	lsls r1, r4, #3
	adds r4, r5, #0
	ldr r0, _08040878
	adds r2, r1, r0
_08040854:
	ldr r1, [r4]
	adds r1, r3, r1
	ldrh r0, [r1, #0xc]
	subs r0, #1
	strh r0, [r1, #0xc]
	ldrh r0, [r1, #0xc]
	ldr r1, [r2]
	lsls r0, r0, #4
	adds r0, r0, r1
	ldr r1, [r0]
	ldr r0, [r0, #4]
	cmp r1, #0xb
	bne _08040854
	cmp r0, #3
	bne _08040854
_08040872:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08040878: .4byte 0x080AF314

    .thumb
    .global sub_804087C
sub_804087C: @ 0x0804087C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	movs r7, #0
	ldr r0, _080408E4
	mov sb, r0
	ldr r0, _080408E8
	adds r0, #4
	mov r8, r0
_08040890:
	mov r1, sb
	ldr r0, [r1]
	lsls r6, r7, #6
	adds r5, r6, r0
	ldrb r0, [r5, #0x1f]
	cmp r0, #0
	beq _080408CE
	ldrh r0, [r5, #0xc]
	mov r2, r8
	ldr r1, [r2]
	lsls r0, r0, #4
	adds r0, r0, r1
	ldr r4, [r0]
	ldr r1, [r0, #4]
	ldr r2, [r0, #8]
	ldr r3, [r0, #0xc]
	ldr r0, _080408EC
	lsls r4, r4, #2
	adds r4, r4, r0
	ldr r4, [r4]
	adds r0, r5, #0
	bl _call_via_r4
	cmp r0, #2
	bne _080408CE
	mov r0, sb
	ldr r1, [r0]
	adds r1, r6, r1
	ldrh r0, [r1, #0xc]
	adds r0, #1
	strh r0, [r1, #0xc]
_080408CE:
	movs r1, #8
	add r8, r1
	adds r7, #1
	cmp r7, #0x3b
	ble _08040890
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080408E4: .4byte 0x0203EA7C
_080408E8: .4byte 0x080AF310
_080408EC: .4byte 0x080A8DB0

    .thumb
    .global sub_80408F0
sub_80408F0: @ 0x080408F0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	movs r2, #0
_080408FA:
	ldr r3, _08040958
	ldr r0, [r3]
	lsls r5, r2, #6
	adds r1, r5, r0
	ldrb r0, [r1, #0x1f]
	adds r2, #1
	mov r8, r2
	cmp r0, #0
	beq _08040944
	movs r7, #0
	ldrh r1, [r1, #4]
	cmp r7, r1
	bge _08040944
	adds r2, r3, #0
	movs r6, #0
_08040918:
	ldr r0, [r2]
	adds r4, r5, #0
	adds r0, r4, r0
	ldr r0, [r0]
	adds r1, r6, r0
	adds r0, r1, #0
	adds r0, #0x35
	ldrb r0, [r0]
	cmp r0, #0
	beq _08040936
	adds r0, r1, #0
	str r2, [sp]
	bl RenderSprite
	ldr r2, [sp]
_08040936:
	adds r6, #0x38
	adds r7, #1
	ldr r0, [r2]
	adds r0, r4, r0
	ldrh r0, [r0, #4]
	cmp r7, r0
	blt _08040918
_08040944:
	mov r2, r8
	cmp r2, #0x3b
	ble _080408FA
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08040958: .4byte 0x0203EA7C

    .thumb
    .global sub_804095C
sub_804095C: @ 0x0804095C
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	ldr r2, _080409A8
	mov r6, sp
	movs r4, #0
	movs r7, #0x3b
_08040968:
	ldr r0, [r2]
	adds r3, r4, r0
	ldrb r0, [r3, #0x1f]
	cmp r0, #0
	beq _080409C6
	subs r0, #3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bhi _080409C6
	movs r0, #0
	strh r0, [r3, #0x38]
	ldrh r0, [r3, #0x2c]
	strh r0, [r6]
	mov r1, sp
	adds r1, #2
	ldrh r0, [r3, #0x2e]
	strh r0, [r1]
	adds r0, r3, #0
	adds r0, #0x28
	ldrb r0, [r0]
	adds r5, r1, #0
	cmp r0, #0
	beq _080409AC
	adds r0, r3, #0
	adds r0, #0x2c
	adds r1, r3, #0
	adds r1, #0x20
	bl sub_08025C30
	b _080409B8
	.align 2, 0
_080409A8: .4byte 0x0203EA7C
_080409AC:
	adds r0, r3, #0
	adds r0, #0x2c
	adds r1, r3, #0
	adds r1, #0x20
	bl AddStringToBuffer
_080409B8:
	ldr r2, _080409D8
	ldr r1, [r2]
	adds r1, r4, r1
	ldrh r0, [r6]
	strh r0, [r1, #0x2c]
	ldrh r0, [r5]
	strh r0, [r1, #0x2e]
_080409C6:
	adds r4, #0x40
	subs r7, #1
	cmp r7, #0
	bge _08040968
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080409D8: .4byte 0x0203EA7C

    .thumb
    .global sub_80409DC
sub_80409DC: @ 0x080409DC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	movs r7, #0
	ldr r6, _08040A34
	movs r0, #0
	mov r8, r0
_080409EA:
	ldr r0, [r6]
	lsls r4, r7, #6
	adds r1, r4, r0
	ldrb r0, [r1, #0x1f]
	cmp r0, #0
	beq _08040A22
	movs r5, #0
	strb r5, [r1, #0x1f]
	ldr r0, [r6]
	adds r0, r4, r0
	ldrh r1, [r0, #8]
	strh r1, [r0, #6]
	adds r0, #0x29
	mov r1, r8
	strb r1, [r0]
	ldr r0, [r6]
	adds r1, r4, r0
	strh r5, [r1, #0xc]
	ldrh r0, [r1, #4]
	cmp r0, #0
	beq _08040A22
	ldr r0, [r1]
	movs r1, #4
	bl Free
	ldr r0, [r6]
	adds r0, r4, r0
	strh r5, [r0, #4]
_08040A22:
	adds r7, #1
	cmp r7, #0x3b
	ble _080409EA
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08040A34: .4byte 0x0203EA7C

	.thumb
    .global sub_08040A38
sub_08040A38: @ 0x08040A38
	push {r4, r5, r6, lr}
	adds r2, r0, #0
	cmp r2, #0x39
	bls _08040A44
	.2byte 0xEE00, 0xEE00
_08040A44:
	cmp r2, #0x38
	beq _08040A54
	cmp r2, #0x39
	beq _08040A74
	ldr r6, _08040A50
	b _08040A8C
	.align 2, 0
_08040A50: .4byte 0x0203EA7C
_08040A54:
	ldr r1, _08040A70
	ldr r0, [r1]
	movs r2, #0xe4
	lsls r2, r2, #4
	adds r0, r0, r2
	ldrb r0, [r0, #0x1f]
	movs r2, #0x3b
	adds r6, r1, #0
	cmp r0, #0
	beq _08040A8C
	cmp r0, #6
	beq _08040A8C
	movs r2, #0x3a
	b _08040A8C
	.align 2, 0
_08040A70: .4byte 0x0203EA7C
_08040A74:
	ldr r1, _08040ACC
	ldr r0, [r1]
	movs r3, #0xec
	lsls r3, r3, #4
	adds r0, r0, r3
	ldrb r0, [r0, #0x1f]
	adds r6, r1, #0
	cmp r0, #0
	beq _08040A8C
	cmp r0, #6
	beq _08040A8C
	movs r2, #0x38
_08040A8C:
	ldr r0, [r6]
	lsls r4, r2, #6
	adds r0, r4, r0
	ldrh r1, [r0, #8]
	movs r2, #0
	movs r5, #0
	strh r1, [r0, #6]
	adds r0, #0x29
	strb r2, [r0]
	ldr r0, [r6]
	adds r1, r4, r0
	strh r5, [r1, #0xc]
	ldrb r0, [r1, #0x1f]
	cmp r0, #0
	beq _08040AC4
	strb r2, [r1, #0x1f]
	ldr r0, [r6]
	adds r1, r4, r0
	ldrh r0, [r1, #4]
	cmp r0, #0
	beq _08040AC4
	ldr r0, [r1]
	movs r1, #4
	bl Free
	ldr r0, [r6]
	adds r0, r4, r0
	strh r5, [r0, #4]
_08040AC4:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08040ACC: .4byte 0x0203EA7C

    .thumb
    .global sub_08040AD0
sub_08040AD0: @ 0x08040AD0
	push {r4, lr}
	adds r2, r0, #0
	adds r3, r1, #0
	cmp r2, #0x39
	bls _08040ADE
	.2byte 0xEE00, 0xEE00
_08040ADE:
	cmp r2, #0x38
	beq _08040AF0
	cmp r2, #0x39
	beq _08040B10
	ldr r1, _08040AEC
	b _08040B26
	.align 2, 0
_08040AEC: .4byte 0x0203EA7C
_08040AF0:
	ldr r1, _08040B0C
	ldr r0, [r1]
	movs r2, #0xe4
	lsls r2, r2, #4
	adds r0, r0, r2
	ldrb r0, [r0, #0x1f]
	movs r2, #0x3b
	cmp r0, #0
	beq _08040B26
	cmp r0, #6
	beq _08040B26
	movs r2, #0x3a
	b _08040B26
	.align 2, 0
_08040B0C: .4byte 0x0203EA7C
_08040B10:
	ldr r1, _08040B38
	ldr r0, [r1]
	movs r4, #0xec
	lsls r4, r4, #4
	adds r0, r0, r4
	ldrb r0, [r0, #0x1f]
	cmp r0, #0
	beq _08040B26
	cmp r0, #6
	beq _08040B26
	movs r2, #0x38
_08040B26:
	ldr r1, [r1]
	lsls r0, r2, #6
	adds r0, r0, r1
	strh r3, [r0, #6]
	strh r3, [r0, #8]
	strh r3, [r0, #0xa]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08040B38: .4byte 0x0203EA7C

    .thumb
    .global sub_8040B3C
sub_8040B3C: @ 0x08040B3C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	bl sub_803FE78
	ldr r0, _08040D3C
	ldrb r0, [r0]
	cmp r0, #0
	beq _08040B82
	ldr r3, _08040D40
	ldr r1, [r3]
	movs r2, #0x98
	lsls r2, r2, #3
	adds r1, r1, r2
	movs r4, #0
	movs r0, #1
	strb r0, [r1, #0x1f]
	ldr r1, [r3]
	adds r2, r1, r2
	ldr r0, [r2, #0x10]
	str r0, [r2, #0x14]
	movs r0, #0x80
	lsls r0, r0, #0xb
	str r0, [r2, #0x10]
	ldr r2, _08040D44
	adds r0, r1, r2
	ldrb r0, [r0]
	adds r2, #1
	adds r1, r1, r2
	strb r0, [r1]
	ldr r0, [r3]
	ldr r1, _08040D44
	adds r0, r0, r1
	strb r4, [r0]
_08040B82:
	ldr r0, _08040D48
	ldrb r0, [r0]
	ldr r4, _08040D40
	cmp r0, #0
	beq _08040BBC
	ldr r1, [r4]
	movs r2, #0xa0
	lsls r2, r2, #3
	adds r1, r1, r2
	movs r3, #0
	movs r0, #1
	strb r0, [r1, #0x1f]
	ldr r1, [r4]
	adds r2, r1, r2
	ldr r0, [r2, #0x10]
	str r0, [r2, #0x14]
	movs r0, #0x80
	lsls r0, r0, #0xb
	str r0, [r2, #0x10]
	ldr r2, _08040D4C
	adds r0, r1, r2
	ldrb r0, [r0]
	adds r2, #1
	adds r1, r1, r2
	strb r0, [r1]
	ldr r0, [r4]
	ldr r1, _08040D4C
	adds r0, r0, r1
	strb r3, [r0]
_08040BBC:
	ldr r0, _08040D50
	ldrb r0, [r0]
	cmp r0, #0
	beq _08040BF4
	ldr r1, [r4]
	movs r2, #0xac
	lsls r2, r2, #4
	adds r1, r1, r2
	movs r3, #0
	movs r0, #1
	strb r0, [r1, #0x1f]
	ldr r1, [r4]
	adds r2, r1, r2
	ldr r0, [r2, #0x10]
	str r0, [r2, #0x14]
	movs r0, #0x80
	lsls r0, r0, #0xb
	str r0, [r2, #0x10]
	ldr r2, _08040D54
	adds r0, r1, r2
	ldrb r0, [r0]
	adds r2, #1
	adds r1, r1, r2
	strb r0, [r1]
	ldr r0, [r4]
	ldr r1, _08040D54
	adds r0, r0, r1
	strb r3, [r0]
_08040BF4:
	ldr r0, _08040D58
	ldrb r0, [r0]
	cmp r0, #0
	beq _08040C2C
	ldr r1, [r4]
	movs r2, #0xa8
	lsls r2, r2, #4
	adds r1, r1, r2
	movs r3, #0
	movs r0, #1
	strb r0, [r1, #0x1f]
	ldr r1, [r4]
	adds r2, r1, r2
	ldr r0, [r2, #0x10]
	str r0, [r2, #0x14]
	movs r0, #0x80
	lsls r0, r0, #0xb
	str r0, [r2, #0x10]
	ldr r2, _08040D5C
	adds r0, r1, r2
	ldrb r0, [r0]
	adds r2, #1
	adds r1, r1, r2
	strb r0, [r1]
	ldr r0, [r4]
	ldr r1, _08040D5C
	adds r0, r0, r1
	strb r3, [r0]
_08040C2C:
	ldr r0, _08040D60
	ldrb r0, [r0]
	cmp r0, #0
	beq _08040C68
	ldr r1, [r4]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	movs r0, #1
	strb r0, [r1, #0x1f]
	ldr r1, [r4]
	adds r2, r1, r2
	ldr r0, [r2, #0x10]
	str r0, [r2, #0x14]
	movs r0, #0x80
	lsls r0, r0, #0xb
	str r0, [r2, #0x10]
	movs r2, #0x95
	lsls r2, r2, #1
	adds r0, r1, r2
	ldrb r0, [r0]
	adds r2, #1
	adds r1, r1, r2
	strb r0, [r1]
	ldr r0, [r4]
	movs r1, #0x95
	lsls r1, r1, #1
	adds r0, r0, r1
	strb r3, [r0]
_08040C68:
	ldr r0, _08040D64
	ldrb r0, [r0]
	cmp r0, #0
	beq _08040CA0
	ldr r1, [r4]
	movs r2, #0xa8
	lsls r2, r2, #3
	adds r1, r1, r2
	movs r3, #0
	movs r0, #1
	strb r0, [r1, #0x1f]
	ldr r1, [r4]
	adds r2, r1, r2
	ldr r0, [r2, #0x10]
	str r0, [r2, #0x14]
	movs r0, #0x80
	lsls r0, r0, #0xb
	str r0, [r2, #0x10]
	ldr r2, _08040D68
	adds r0, r1, r2
	ldrb r0, [r0]
	adds r2, #1
	adds r1, r1, r2
	strb r0, [r1]
	ldr r0, [r4]
	ldr r1, _08040D68
	adds r0, r0, r1
	strb r3, [r0]
_08040CA0:
	ldr r0, _08040D6C
	ldrb r0, [r0]
	cmp r0, #0
	beq _08040CDC
	ldr r1, [r4]
	movs r2, #0xc0
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	movs r0, #1
	strb r0, [r1, #0x1f]
	ldr r1, [r4]
	adds r2, r1, r2
	ldr r0, [r2, #0x10]
	str r0, [r2, #0x14]
	movs r0, #0x80
	lsls r0, r0, #0xb
	str r0, [r2, #0x10]
	movs r2, #0xd5
	lsls r2, r2, #1
	adds r0, r1, r2
	ldrb r0, [r0]
	adds r2, #1
	adds r1, r1, r2
	strb r0, [r1]
	ldr r0, [r4]
	movs r1, #0xd5
	lsls r1, r1, #1
	adds r0, r0, r1
	strb r3, [r0]
_08040CDC:
	adds r3, r4, #0
	ldr r0, [r3]
	movs r1, #0xec
	lsls r1, r1, #4
	adds r0, r0, r1
	movs r7, #0
	movs r5, #1
	strb r5, [r0, #0x1f]
	ldr r2, [r3]
	adds r1, r2, r1
	ldr r0, [r1, #0x10]
	str r0, [r1, #0x14]
	movs r6, #0x80
	lsls r6, r6, #0xb
	str r6, [r1, #0x10]
	ldr r1, _08040D70
	adds r0, r2, r1
	ldrb r0, [r0]
	adds r1, #1
	adds r2, r2, r1
	strb r0, [r2]
	ldr r0, [r3]
	ldr r2, _08040D70
	adds r0, r0, r2
	strb r7, [r0]
	mov r0, r8
	cmp r0, #0
	beq _08040D78
	ldr r0, [r3]
	subs r1, #0xeb
	adds r0, r0, r1
	strb r5, [r0, #0x1f]
	ldr r2, [r3]
	adds r1, r2, r1
	ldr r0, [r1, #0x10]
	str r0, [r1, #0x14]
	str r6, [r1, #0x10]
	ldr r1, _08040D74
	adds r0, r2, r1
	ldrb r0, [r0]
	adds r1, #1
	adds r2, r2, r1
	strb r0, [r2]
	ldr r0, [r3]
	ldr r2, _08040D74
	adds r0, r0, r2
	strb r7, [r0]
	b _08040E40
	.align 2, 0
_08040D3C: .4byte 0x0203E127
_08040D40: .4byte 0x0203EA7C
_08040D44: .4byte 0x000004EA
_08040D48: .4byte 0x0203E128
_08040D4C: .4byte 0x0000052A
_08040D50: .4byte 0x0203E12B
_08040D54: .4byte 0x00000AEA
_08040D58: .4byte 0x0203E12A
_08040D5C: .4byte 0x00000AAA
_08040D60: .4byte 0x0203E12C
_08040D64: .4byte 0x0203E129
_08040D68: .4byte 0x0000056A
_08040D6C: .4byte 0x0203E126
_08040D70: .4byte 0x00000EEA
_08040D74: .4byte 0x00000E2A
_08040D78:
	ldr r0, _08040E50
	ldrb r0, [r0]
	cmp r0, #0
	beq _08040DAA
	ldr r0, [r3]
	movs r1, #0x90
	lsls r1, r1, #2
	adds r0, r0, r1
	strb r5, [r0, #0x1f]
	ldr r2, [r3]
	adds r1, r2, r1
	ldr r0, [r1, #0x10]
	str r0, [r1, #0x14]
	str r6, [r1, #0x10]
	ldr r1, _08040E54
	adds r0, r2, r1
	ldrb r0, [r0]
	adds r1, #1
	adds r2, r2, r1
	strb r0, [r2]
	ldr r0, [r3]
	ldr r2, _08040E54
	adds r0, r0, r2
	mov r1, r8
	strb r1, [r0]
_08040DAA:
	ldr r0, _08040E58
	ldrb r0, [r0]
	cmp r0, #0
	beq _08040DDC
	ldr r0, [r3]
	movs r1, #0xa0
	lsls r1, r1, #2
	adds r0, r0, r1
	strb r5, [r0, #0x1f]
	ldr r2, [r3]
	adds r1, r2, r1
	ldr r0, [r1, #0x10]
	str r0, [r1, #0x14]
	str r6, [r1, #0x10]
	ldr r1, _08040E5C
	adds r0, r2, r1
	ldrb r0, [r0]
	adds r1, #1
	adds r2, r2, r1
	strb r0, [r2]
	ldr r0, [r3]
	ldr r2, _08040E5C
	adds r0, r0, r2
	mov r1, r8
	strb r1, [r0]
_08040DDC:
	ldr r0, _08040E60
	ldrb r0, [r0]
	cmp r0, #0
	beq _08040E0E
	ldr r0, [r3]
	movs r1, #0xc0
	lsls r1, r1, #2
	adds r0, r0, r1
	strb r5, [r0, #0x1f]
	ldr r2, [r3]
	adds r1, r2, r1
	ldr r0, [r1, #0x10]
	str r0, [r1, #0x14]
	str r6, [r1, #0x10]
	ldr r1, _08040E64
	adds r0, r2, r1
	ldrb r0, [r0]
	adds r1, #1
	adds r2, r2, r1
	strb r0, [r2]
	ldr r0, [r3]
	ldr r2, _08040E64
	adds r0, r0, r2
	mov r1, r8
	strb r1, [r0]
_08040E0E:
	ldr r0, _08040E68
	ldrb r0, [r0]
	cmp r0, #0
	beq _08040E40
	ldr r0, [r4]
	movs r1, #0xb0
	lsls r1, r1, #2
	adds r0, r0, r1
	strb r5, [r0, #0x1f]
	ldr r2, [r4]
	adds r1, r2, r1
	ldr r0, [r1, #0x10]
	str r0, [r1, #0x14]
	str r6, [r1, #0x10]
	ldr r1, _08040E6C
	adds r0, r2, r1
	ldrb r0, [r0]
	adds r1, #1
	adds r2, r2, r1
	strb r0, [r2]
	ldr r0, [r4]
	ldr r2, _08040E6C
	adds r0, r0, r2
	mov r1, r8
	strb r1, [r0]
_08040E40:
	ldr r1, _08040E70
	movs r0, #1
	strb r0, [r1]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08040E50: .4byte 0x0203E122
_08040E54: .4byte 0x0000026A
_08040E58: .4byte 0x0203E123
_08040E5C: .4byte 0x000002AA
_08040E60: .4byte 0x0203E125
_08040E64: .4byte 0x0000032A
_08040E68: .4byte 0x0203E124
_08040E6C: .4byte 0x000002EA
_08040E70: .4byte 0x0203EA80

    .thumb
    .global sub_8040E74
sub_8040E74: @ 0x08040E74
	push {lr}
	ldr r1, _08040E88
	movs r0, #0
	strb r0, [r1]
	bl sub_8041E58
	bl sub_8040178
	pop {r0}
	bx r0
	.align 2, 0
_08040E88: .4byte 0x0203EA80

    .thumb
    .global sub_8040E8C
sub_8040E8C: @ 0x08040E8C
	push {r4, lr}
	adds r3, r0, #0
	movs r1, #1
	ldr r0, _08040F5C
	ldrb r0, [r0]
	ldr r2, _08040F60
	cmp r0, #0
	beq _08040EAC
	ldr r0, [r2]
	movs r4, #0x98
	lsls r4, r4, #3
	adds r0, r0, r4
	ldrb r0, [r0, #0x1f]
	cmp r0, #5
	beq _08040EAC
	movs r1, #0
_08040EAC:
	ldr r0, _08040F64
	ldrb r0, [r0]
	cmp r0, #0
	beq _08040EC4
	ldr r0, [r2]
	movs r4, #0xa0
	lsls r4, r4, #3
	adds r0, r0, r4
	ldrb r0, [r0, #0x1f]
	cmp r0, #5
	beq _08040EC4
	movs r1, #0
_08040EC4:
	ldr r0, _08040F68
	ldrb r0, [r0]
	cmp r0, #0
	beq _08040EDC
	ldr r0, [r2]
	movs r4, #0xa8
	lsls r4, r4, #3
	adds r0, r0, r4
	ldrb r0, [r0, #0x1f]
	cmp r0, #5
	beq _08040EDC
	movs r1, #0
_08040EDC:
	ldr r0, _08040F6C
	ldrb r0, [r0]
	cmp r0, #0
	beq _08040EF4
	ldr r0, [r2]
	movs r4, #0xac
	lsls r4, r4, #4
	adds r0, r0, r4
	ldrb r0, [r0, #0x1f]
	cmp r0, #5
	beq _08040EF4
	movs r1, #0
_08040EF4:
	ldr r0, _08040F70
	ldrb r0, [r0]
	cmp r0, #0
	beq _08040F0C
	ldr r0, [r2]
	movs r4, #0xa8
	lsls r4, r4, #4
	adds r0, r0, r4
	ldrb r0, [r0, #0x1f]
	cmp r0, #5
	beq _08040F0C
	movs r1, #0
_08040F0C:
	ldr r0, _08040F74
	ldrb r0, [r0]
	cmp r0, #0
	beq _08040F24
	ldr r0, [r2]
	movs r4, #0x80
	lsls r4, r4, #1
	adds r0, r0, r4
	ldrb r0, [r0, #0x1f]
	cmp r0, #5
	beq _08040F24
	movs r1, #0
_08040F24:
	ldr r0, _08040F78
	ldrb r0, [r0]
	cmp r0, #0
	beq _08040F3C
	ldr r0, [r2]
	movs r4, #0xc0
	lsls r4, r4, #1
	adds r0, r0, r4
	ldrb r0, [r0, #0x1f]
	cmp r0, #5
	beq _08040F3C
	movs r1, #0
_08040F3C:
	ldr r0, [r2]
	movs r4, #0xec
	lsls r4, r4, #4
	adds r0, r0, r4
	ldrb r0, [r0, #0x1f]
	cmp r0, #5
	beq _08040F4C
	movs r1, #0
_08040F4C:
	cmp r3, #0
	beq _08040F7C
	ldr r0, [r2]
	movs r2, #0xe0
	lsls r2, r2, #4
	adds r0, r0, r2
	b _08040FD4
	.align 2, 0
_08040F5C: .4byte 0x0203E127
_08040F60: .4byte 0x0203EA7C
_08040F64: .4byte 0x0203E128
_08040F68: .4byte 0x0203E129
_08040F6C: .4byte 0x0203E12B
_08040F70: .4byte 0x0203E12A
_08040F74: .4byte 0x0203E12C
_08040F78: .4byte 0x0203E126
_08040F7C:
	ldr r0, _08040FE4
	ldrb r0, [r0]
	cmp r0, #0
	beq _08040F94
	ldr r0, [r2]
	movs r3, #0x90
	lsls r3, r3, #2
	adds r0, r0, r3
	ldrb r0, [r0, #0x1f]
	cmp r0, #5
	beq _08040F94
	movs r1, #0
_08040F94:
	ldr r0, _08040FE8
	ldrb r0, [r0]
	cmp r0, #0
	beq _08040FAC
	ldr r0, [r2]
	movs r4, #0xa0
	lsls r4, r4, #2
	adds r0, r0, r4
	ldrb r0, [r0, #0x1f]
	cmp r0, #5
	beq _08040FAC
	movs r1, #0
_08040FAC:
	ldr r0, _08040FEC
	ldrb r0, [r0]
	cmp r0, #0
	beq _08040FC4
	ldr r0, [r2]
	movs r3, #0xb0
	lsls r3, r3, #2
	adds r0, r0, r3
	ldrb r0, [r0, #0x1f]
	cmp r0, #5
	beq _08040FC4
	movs r1, #0
_08040FC4:
	ldr r0, _08040FF0
	ldrb r0, [r0]
	cmp r0, #0
	beq _08040FDC
	ldr r0, [r2]
	movs r4, #0xc0
	lsls r4, r4, #2
	adds r0, r0, r4
_08040FD4:
	ldrb r0, [r0, #0x1f]
	cmp r0, #5
	beq _08040FDC
	movs r1, #0
_08040FDC:
	adds r0, r1, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08040FE4: .4byte 0x0203E122
_08040FE8: .4byte 0x0203E123
_08040FEC: .4byte 0x0203E124
_08040FF0: .4byte 0x0203E125

    .thumb
    .global sub_8040FF4
sub_8040FF4: @ 0x08040FF4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r2, r0, #0
	movs r3, #1
	ldr r0, _080410E0
	ldrb r1, [r0]
	adds r6, r0, #0
	ldr r5, _080410E4
	cmp r1, #0
	beq _0804101E
	ldr r0, [r5]
	movs r1, #0x98
	lsls r1, r1, #3
	adds r0, r0, r1
	ldrb r0, [r0, #0x1f]
	cmp r0, #0
	beq _0804101E
	movs r3, #0
_0804101E:
	ldr r0, _080410E8
	ldrb r1, [r0]
	mov ip, r0
	cmp r1, #0
	beq _08041038
	ldr r0, [r5]
	movs r4, #0xa0
	lsls r4, r4, #3
	adds r0, r0, r4
	ldrb r0, [r0, #0x1f]
	cmp r0, #0
	beq _08041038
	movs r3, #0
_08041038:
	ldr r0, _080410EC
	ldrb r1, [r0]
	mov sl, r0
	cmp r1, #0
	beq _08041052
	ldr r0, [r5]
	movs r1, #0xa8
	lsls r1, r1, #3
	adds r0, r0, r1
	ldrb r0, [r0, #0x1f]
	cmp r0, #0
	beq _08041052
	movs r3, #0
_08041052:
	ldr r0, _080410F0
	ldrb r1, [r0]
	adds r4, r0, #0
	cmp r1, #0
	beq _0804106C
	ldr r0, [r5]
	movs r1, #0xac
	lsls r1, r1, #4
	adds r0, r0, r1
	ldrb r0, [r0, #0x1f]
	cmp r0, #0
	beq _0804106C
	movs r3, #0
_0804106C:
	ldr r0, _080410F4
	ldrb r1, [r0]
	adds r7, r0, #0
	cmp r1, #0
	beq _08041086
	ldr r0, [r5]
	movs r1, #0xa8
	lsls r1, r1, #4
	adds r0, r0, r1
	ldrb r0, [r0, #0x1f]
	cmp r0, #0
	beq _08041086
	movs r3, #0
_08041086:
	ldr r0, _080410F8
	ldrb r1, [r0]
	mov r8, r0
	cmp r1, #0
	beq _080410A0
	ldr r0, [r5]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r0, r1
	ldrb r0, [r0, #0x1f]
	cmp r0, #0
	beq _080410A0
	movs r3, #0
_080410A0:
	ldr r0, _080410FC
	ldrb r1, [r0]
	mov sb, r0
	cmp r1, #0
	beq _080410BA
	ldr r0, [r5]
	movs r1, #0xc0
	lsls r1, r1, #1
	adds r0, r0, r1
	ldrb r0, [r0, #0x1f]
	cmp r0, #0
	beq _080410BA
	movs r3, #0
_080410BA:
	ldr r0, [r5]
	movs r1, #0xec
	lsls r1, r1, #4
	adds r0, r0, r1
	ldrb r0, [r0, #0x1f]
	cmp r0, #0
	beq _080410CA
	movs r3, #0
_080410CA:
	cmp r2, #0
	beq _08041100
	ldr r0, [r5]
	movs r1, #0xe0
	lsls r1, r1, #4
	adds r0, r0, r1
	ldrb r0, [r0, #0x1f]
	cmp r0, #0
	beq _08041160
	movs r3, #0
	b _08041424
	.align 2, 0
_080410E0: .4byte 0x0203E127
_080410E4: .4byte 0x0203EA7C
_080410E8: .4byte 0x0203E128
_080410EC: .4byte 0x0203E129
_080410F0: .4byte 0x0203E12B
_080410F4: .4byte 0x0203E12A
_080410F8: .4byte 0x0203E12C
_080410FC: .4byte 0x0203E126
_08041100:
	ldr r0, _08041274
	ldrb r0, [r0]
	cmp r0, #0
	beq _08041118
	ldr r0, [r5]
	movs r1, #0x90
	lsls r1, r1, #2
	adds r0, r0, r1
	ldrb r0, [r0, #0x1f]
	cmp r0, #0
	beq _08041118
	movs r3, #0
_08041118:
	ldr r0, _08041278
	ldrb r0, [r0]
	cmp r0, #0
	beq _08041130
	ldr r0, [r5]
	movs r1, #0xa0
	lsls r1, r1, #2
	adds r0, r0, r1
	ldrb r0, [r0, #0x1f]
	cmp r0, #0
	beq _08041130
	movs r3, #0
_08041130:
	ldr r0, _0804127C
	ldrb r0, [r0]
	cmp r0, #0
	beq _08041148
	ldr r0, [r5]
	movs r1, #0xb0
	lsls r1, r1, #2
	adds r0, r0, r1
	ldrb r0, [r0, #0x1f]
	cmp r0, #0
	beq _08041148
	movs r3, #0
_08041148:
	ldr r0, _08041280
	ldrb r0, [r0]
	cmp r0, #0
	beq _08041160
	ldr r0, [r5]
	movs r1, #0xc0
	lsls r1, r1, #2
	adds r0, r0, r1
	ldrb r0, [r0, #0x1f]
	cmp r0, #0
	beq _08041160
	movs r3, #0
_08041160:
	cmp r3, #0
	bne _08041166
	b _08041424
_08041166:
	cmp r2, #0
	bne _0804116C
	b _080412B0
_0804116C:
	ldrb r0, [r6]
	cmp r0, #0
	beq _0804118A
	ldr r1, [r5]
	movs r0, #0x98
	lsls r0, r0, #3
	adds r2, r1, r0
	ldr r0, [r2, #0x14]
	str r0, [r2, #0x10]
	ldr r2, _08041284
	adds r0, r1, r2
	ldrb r0, [r0]
	subs r2, #1
	adds r1, r1, r2
	strb r0, [r1]
_0804118A:
	mov r1, ip
	ldrb r0, [r1]
	cmp r0, #0
	beq _080411AA
	ldr r1, [r5]
	movs r0, #0xa0
	lsls r0, r0, #3
	adds r2, r1, r0
	ldr r0, [r2, #0x14]
	str r0, [r2, #0x10]
	ldr r2, _08041288
	adds r0, r1, r2
	ldrb r0, [r0]
	subs r2, #1
	adds r1, r1, r2
	strb r0, [r1]
_080411AA:
	ldrb r0, [r4]
	cmp r0, #0
	beq _080411C8
	ldr r1, [r5]
	movs r4, #0xac
	lsls r4, r4, #4
	adds r2, r1, r4
	ldr r0, [r2, #0x14]
	str r0, [r2, #0x10]
	ldr r2, _0804128C
	adds r0, r1, r2
	ldrb r0, [r0]
	adds r4, #0x2a
	adds r1, r1, r4
	strb r0, [r1]
_080411C8:
	ldrb r0, [r7]
	cmp r0, #0
	beq _080411E6
	ldr r1, [r5]
	movs r0, #0xa8
	lsls r0, r0, #4
	adds r2, r1, r0
	ldr r0, [r2, #0x14]
	str r0, [r2, #0x10]
	ldr r2, _08041290
	adds r0, r1, r2
	ldrb r0, [r0]
	ldr r4, _08041294
	adds r1, r1, r4
	strb r0, [r1]
_080411E6:
	mov r1, r8
	ldrb r0, [r1]
	cmp r0, #0
	beq _08041206
	ldr r2, [r5]
	movs r4, #0x80
	lsls r4, r4, #1
	adds r0, r2, r4
	ldr r1, [r0, #0x14]
	str r1, [r0, #0x10]
	ldr r1, _08041298
	adds r0, r2, r1
	ldrb r0, [r0]
	adds r4, #0x2a
	adds r1, r2, r4
	strb r0, [r1]
_08041206:
	mov r1, sl
	ldrb r0, [r1]
	cmp r0, #0
	beq _08041226
	ldr r1, [r5]
	movs r4, #0xa8
	lsls r4, r4, #3
	adds r2, r1, r4
	ldr r0, [r2, #0x14]
	str r0, [r2, #0x10]
	ldr r2, _0804129C
	adds r0, r1, r2
	ldrb r0, [r0]
	adds r4, #0x2a
	adds r1, r1, r4
	strb r0, [r1]
_08041226:
	mov r1, sb
	ldrb r0, [r1]
	cmp r0, #0
	beq _08041246
	ldr r2, [r5]
	movs r4, #0xc0
	lsls r4, r4, #1
	adds r0, r2, r4
	ldr r1, [r0, #0x14]
	str r1, [r0, #0x10]
	ldr r1, _080412A0
	adds r0, r2, r1
	ldrb r0, [r0]
	adds r4, #0x2a
	adds r1, r2, r4
	strb r0, [r1]
_08041246:
	ldr r1, [r5]
	movs r0, #0xec
	lsls r0, r0, #4
	adds r2, r1, r0
	ldr r0, [r2, #0x14]
	str r0, [r2, #0x10]
	ldr r2, _080412A4
	adds r0, r1, r2
	ldrb r0, [r0]
	ldr r4, _080412A8
	adds r1, r1, r4
	strb r0, [r1]
	ldr r1, [r5]
	movs r0, #0xe0
	lsls r0, r0, #4
	adds r2, r1, r0
	ldr r0, [r2, #0x14]
	str r0, [r2, #0x10]
	ldr r2, _080412AC
	adds r0, r1, r2
	ldrb r0, [r0]
	subs r4, #0xc0
	b _08041420
	.align 2, 0
_08041274: .4byte 0x0203E122
_08041278: .4byte 0x0203E123
_0804127C: .4byte 0x0203E124
_08041280: .4byte 0x0203E125
_08041284: .4byte 0x000004EB
_08041288: .4byte 0x0000052B
_0804128C: .4byte 0x00000AEB
_08041290: .4byte 0x00000AAB
_08041294: .4byte 0x00000AAA
_08041298: .4byte 0x0000012B
_0804129C: .4byte 0x0000056B
_080412A0: .4byte 0x000001AB
_080412A4: .4byte 0x00000EEB
_080412A8: .4byte 0x00000EEA
_080412AC: .4byte 0x00000E2B
_080412B0:
	ldrb r0, [r6]
	cmp r0, #0
	beq _080412CE
	ldr r1, [r5]
	movs r0, #0x98
	lsls r0, r0, #3
	adds r2, r1, r0
	ldr r0, [r2, #0x14]
	str r0, [r2, #0x10]
	ldr r2, _08041434
	adds r0, r1, r2
	ldrb r0, [r0]
	subs r2, #1
	adds r1, r1, r2
	strb r0, [r1]
_080412CE:
	mov r1, ip
	ldrb r0, [r1]
	cmp r0, #0
	beq _080412EE
	ldr r1, [r5]
	movs r0, #0xa0
	lsls r0, r0, #3
	adds r2, r1, r0
	ldr r0, [r2, #0x14]
	str r0, [r2, #0x10]
	ldr r2, _08041438
	adds r0, r1, r2
	ldrb r0, [r0]
	subs r2, #1
	adds r1, r1, r2
	strb r0, [r1]
_080412EE:
	ldrb r0, [r4]
	cmp r0, #0
	beq _0804130C
	ldr r1, [r5]
	movs r4, #0xac
	lsls r4, r4, #4
	adds r2, r1, r4
	ldr r0, [r2, #0x14]
	str r0, [r2, #0x10]
	ldr r2, _0804143C
	adds r0, r1, r2
	ldrb r0, [r0]
	adds r4, #0x2a
	adds r1, r1, r4
	strb r0, [r1]
_0804130C:
	ldrb r0, [r7]
	cmp r0, #0
	beq _0804132A
	ldr r1, [r5]
	movs r0, #0xa8
	lsls r0, r0, #4
	adds r2, r1, r0
	ldr r0, [r2, #0x14]
	str r0, [r2, #0x10]
	ldr r2, _08041440
	adds r0, r1, r2
	ldrb r0, [r0]
	ldr r4, _08041444
	adds r1, r1, r4
	strb r0, [r1]
_0804132A:
	mov r1, r8
	ldrb r0, [r1]
	cmp r0, #0
	beq _0804134A
	ldr r2, [r5]
	movs r4, #0x80
	lsls r4, r4, #1
	adds r0, r2, r4
	ldr r1, [r0, #0x14]
	str r1, [r0, #0x10]
	ldr r1, _08041448
	adds r0, r2, r1
	ldrb r0, [r0]
	adds r4, #0x2a
	adds r1, r2, r4
	strb r0, [r1]
_0804134A:
	mov r1, sl
	ldrb r0, [r1]
	cmp r0, #0
	beq _0804136A
	ldr r1, [r5]
	movs r4, #0xa8
	lsls r4, r4, #3
	adds r2, r1, r4
	ldr r0, [r2, #0x14]
	str r0, [r2, #0x10]
	ldr r2, _0804144C
	adds r0, r1, r2
	ldrb r0, [r0]
	adds r4, #0x2a
	adds r1, r1, r4
	strb r0, [r1]
_0804136A:
	mov r1, sb
	ldrb r0, [r1]
	cmp r0, #0
	beq _0804138A
	ldr r2, [r5]
	movs r4, #0xc0
	lsls r4, r4, #1
	adds r0, r2, r4
	ldr r1, [r0, #0x14]
	str r1, [r0, #0x10]
	ldr r1, _08041450
	adds r0, r2, r1
	ldrb r0, [r0]
	adds r4, #0x2a
	adds r1, r2, r4
	strb r0, [r1]
_0804138A:
	adds r4, r5, #0
	ldr r1, [r4]
	movs r0, #0xec
	lsls r0, r0, #4
	adds r2, r1, r0
	ldr r0, [r2, #0x14]
	str r0, [r2, #0x10]
	ldr r2, _08041454
	adds r0, r1, r2
	ldrb r0, [r0]
	subs r2, #1
	adds r1, r1, r2
	strb r0, [r1]
	ldr r0, _08041458
	ldrb r0, [r0]
	cmp r0, #0
	beq _080413C4
	ldr r1, [r4]
	movs r0, #0x90
	lsls r0, r0, #2
	adds r2, r1, r0
	ldr r0, [r2, #0x14]
	str r0, [r2, #0x10]
	ldr r2, _0804145C
	adds r0, r1, r2
	ldrb r0, [r0]
	subs r2, #1
	adds r1, r1, r2
	strb r0, [r1]
_080413C4:
	ldr r0, _08041460
	ldrb r0, [r0]
	cmp r0, #0
	beq _080413E4
	ldr r1, [r4]
	movs r0, #0xa0
	lsls r0, r0, #2
	adds r2, r1, r0
	ldr r0, [r2, #0x14]
	str r0, [r2, #0x10]
	ldr r2, _08041464
	adds r0, r1, r2
	ldrb r0, [r0]
	subs r2, #1
	adds r1, r1, r2
	strb r0, [r1]
_080413E4:
	ldr r0, _08041468
	ldrb r0, [r0]
	cmp r0, #0
	beq _08041404
	ldr r1, [r4]
	movs r4, #0xc0
	lsls r4, r4, #2
	adds r2, r1, r4
	ldr r0, [r2, #0x14]
	str r0, [r2, #0x10]
	ldr r2, _0804146C
	adds r0, r1, r2
	ldrb r0, [r0]
	adds r4, #0x2a
	adds r1, r1, r4
	strb r0, [r1]
_08041404:
	ldr r0, _08041470
	ldrb r0, [r0]
	cmp r0, #0
	beq _08041424
	ldr r1, [r5]
	movs r0, #0xb0
	lsls r0, r0, #2
	adds r2, r1, r0
	ldr r0, [r2, #0x14]
	str r0, [r2, #0x10]
	ldr r2, _08041474
	adds r0, r1, r2
	ldrb r0, [r0]
	ldr r4, _08041478
_08041420:
	adds r1, r1, r4
	strb r0, [r1]
_08041424:
	adds r0, r3, #0
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08041434: .4byte 0x000004EB
_08041438: .4byte 0x0000052B
_0804143C: .4byte 0x00000AEB
_08041440: .4byte 0x00000AAB
_08041444: .4byte 0x00000AAA
_08041448: .4byte 0x0000012B
_0804144C: .4byte 0x0000056B
_08041450: .4byte 0x000001AB
_08041454: .4byte 0x00000EEB
_08041458: .4byte 0x0203E122
_0804145C: .4byte 0x0000026B
_08041460: .4byte 0x0203E123
_08041464: .4byte 0x000002AB
_08041468: .4byte 0x0203E125
_0804146C: .4byte 0x0000032B
_08041470: .4byte 0x0203E124
_08041474: .4byte 0x000002EB
_08041478: .4byte 0x000002EA

    .thumb
    .global sub_0804147C
sub_0804147C: @ 0x0804147C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r7, r0, #0
	ldr r0, _080416A8
	ldrb r1, [r0]
	cmp r1, #0
	beq _080414DA
	ldr r4, _080416AC
	ldr r2, [r4]
	movs r3, #0xb8
	lsls r3, r3, #3
	adds r2, r2, r3
	ldr r1, _080416B0
	lsls r0, r7, #2
	adds r0, r0, r7
	lsls r0, r0, #2
	adds r1, r0, r1
	ldrh r1, [r1, #6]
	movs r5, #0
	strh r1, [r2, #0xa]
	ldr r1, _080416B4
	adds r0, r0, r1
	ldrh r0, [r0, #6]
	strh r0, [r2, #6]
	strh r0, [r2, #8]
	movs r0, #1
	strb r0, [r2, #0x1f]
	ldr r1, [r4]
	adds r3, r1, r3
	ldr r0, [r3, #0x10]
	str r0, [r3, #0x14]
	movs r0, #0x80
	lsls r0, r0, #0xb
	str r0, [r3, #0x10]
	ldr r2, _080416B8
	adds r0, r1, r2
	ldrb r0, [r0]
	adds r2, #1
	adds r1, r1, r2
	strb r0, [r1]
	ldr r0, [r4]
	ldr r1, _080416B8
	adds r0, r0, r1
	strb r5, [r0]
_080414DA:
	ldr r0, _080416BC
	ldrb r1, [r0]
	cmp r1, #0
	beq _0804152C
	ldr r4, _080416AC
	ldr r2, [r4]
	movs r3, #0xc0
	lsls r3, r3, #3
	adds r2, r2, r3
	ldr r1, _080416B0
	lsls r0, r7, #2
	adds r0, r0, r7
	lsls r0, r0, #2
	adds r1, r0, r1
	ldrb r1, [r1]
	movs r5, #0
	strh r1, [r2, #0xa]
	ldr r1, _080416B4
	adds r0, r0, r1
	ldrb r0, [r0]
	strh r0, [r2, #6]
	strh r0, [r2, #8]
	movs r0, #1
	strb r0, [r2, #0x1f]
	ldr r1, [r4]
	adds r3, r1, r3
	ldr r0, [r3, #0x10]
	str r0, [r3, #0x14]
	movs r0, #0x80
	lsls r0, r0, #0xb
	str r0, [r3, #0x10]
	ldr r2, _080416C0
	adds r0, r1, r2
	ldrb r0, [r0]
	adds r2, #1
	adds r1, r1, r2
	strb r0, [r1]
	ldr r0, [r4]
	ldr r1, _080416C0
	adds r0, r0, r1
	strb r5, [r0]
_0804152C:
	ldr r0, _080416C4
	ldrb r1, [r0]
	mov sl, r0
	cmp r1, #0
	beq _08041580
	ldr r4, _080416AC
	ldr r2, [r4]
	movs r3, #0xc8
	lsls r3, r3, #3
	adds r2, r2, r3
	ldr r1, _080416B0
	lsls r0, r7, #2
	adds r0, r0, r7
	lsls r0, r0, #2
	adds r1, r0, r1
	ldrb r1, [r1, #5]
	movs r5, #0
	strh r1, [r2, #0xa]
	ldr r1, _080416B4
	adds r0, r0, r1
	ldrb r0, [r0, #5]
	strh r0, [r2, #6]
	strh r0, [r2, #8]
	movs r0, #1
	strb r0, [r2, #0x1f]
	ldr r1, [r4]
	adds r3, r1, r3
	ldr r0, [r3, #0x10]
	str r0, [r3, #0x14]
	movs r0, #0x80
	lsls r0, r0, #0xb
	str r0, [r3, #0x10]
	ldr r2, _080416C8
	adds r0, r1, r2
	ldrb r0, [r0]
	adds r2, #1
	adds r1, r1, r2
	strb r0, [r1]
	ldr r0, [r4]
	ldr r1, _080416C8
	adds r0, r0, r1
	strb r5, [r0]
_08041580:
	ldr r0, _080416CC
	ldrb r1, [r0]
	mov sb, r0
	cmp r1, #0
	beq _080415EC
	ldr r6, _080416AC
	ldr r4, [r6]
	movs r5, #0xd0
	lsls r5, r5, #3
	adds r4, r4, r5
	ldr r3, _080416B0
	lsls r2, r7, #2
	adds r2, r2, r7
	lsls r2, r2, #2
	adds r3, r2, r3
	ldrb r1, [r3, #9]
	ldrb r0, [r3, #0xa]
	adds r1, r1, r0
	ldrb r0, [r3, #0xb]
	adds r1, r1, r0
	ldrb r0, [r3, #0xc]
	adds r0, r0, r1
	movs r3, #0
	strh r0, [r4, #0xa]
	ldr r0, _080416B4
	adds r2, r2, r0
	ldrb r1, [r2, #9]
	ldrb r0, [r2, #0xa]
	adds r1, r1, r0
	ldrb r0, [r2, #0xb]
	adds r1, r1, r0
	ldrb r0, [r2, #0xc]
	adds r0, r0, r1
	strh r0, [r4, #6]
	strh r0, [r4, #8]
	movs r0, #1
	strb r0, [r4, #0x1f]
	ldr r1, [r6]
	adds r5, r1, r5
	ldr r0, [r5, #0x10]
	str r0, [r5, #0x14]
	movs r0, #0x80
	lsls r0, r0, #0xb
	str r0, [r5, #0x10]
	ldr r2, _080416D0
	adds r0, r1, r2
	ldrb r0, [r0]
	adds r2, #1
	adds r1, r1, r2
	strb r0, [r1]
	ldr r0, [r6]
	ldr r1, _080416D0
	adds r0, r0, r1
	strb r3, [r0]
_080415EC:
	ldr r0, _080416D4
	ldrb r1, [r0]
	mov r8, r0
	cmp r1, #0
	beq _08041640
	ldr r4, _080416AC
	ldr r2, [r4]
	movs r3, #0xd8
	lsls r3, r3, #3
	adds r2, r2, r3
	ldr r1, _080416B0
	lsls r0, r7, #2
	adds r0, r0, r7
	lsls r0, r0, #2
	adds r1, r0, r1
	ldrb r1, [r1, #8]
	movs r5, #0
	strh r1, [r2, #0xa]
	ldr r1, _080416B4
	adds r0, r0, r1
	ldrb r0, [r0, #8]
	strh r0, [r2, #6]
	strh r0, [r2, #8]
	movs r0, #1
	strb r0, [r2, #0x1f]
	ldr r1, [r4]
	adds r3, r1, r3
	ldr r0, [r3, #0x10]
	str r0, [r3, #0x14]
	movs r0, #0x80
	lsls r0, r0, #0xb
	str r0, [r3, #0x10]
	ldr r2, _080416D8
	adds r0, r1, r2
	ldrb r0, [r0]
	adds r2, #1
	adds r1, r1, r2
	strb r0, [r1]
	ldr r0, [r4]
	ldr r1, _080416D8
	adds r0, r0, r1
	strb r5, [r0]
_08041640:
	ldr r0, _080416DC
	ldrb r1, [r0]
	mov ip, r0
	cmp r1, #0
	beq _08041694
	ldr r4, _080416AC
	ldr r2, [r4]
	movs r3, #0xe0
	lsls r3, r3, #3
	adds r2, r2, r3
	ldr r1, _080416B0
	lsls r0, r7, #2
	adds r0, r0, r7
	lsls r0, r0, #2
	adds r1, r0, r1
	ldrb r1, [r1, #1]
	movs r5, #0
	strh r1, [r2, #0xa]
	ldr r1, _080416B4
	adds r0, r0, r1
	ldrb r0, [r0, #1]
	strh r0, [r2, #6]
	strh r0, [r2, #8]
	movs r0, #1
	strb r0, [r2, #0x1f]
	ldr r1, [r4]
	adds r3, r1, r3
	ldr r0, [r3, #0x10]
	str r0, [r3, #0x14]
	movs r0, #0x80
	lsls r0, r0, #0xb
	str r0, [r3, #0x10]
	ldr r2, _080416E0
	adds r0, r1, r2
	ldrb r0, [r0]
	adds r2, #1
	adds r1, r1, r2
	strb r0, [r1]
	ldr r0, [r4]
	ldr r1, _080416E0
	adds r0, r0, r1
	strb r5, [r0]
_08041694:
	cmp r7, #6
	bls _0804169A
	b _08041A90
_0804169A:
	lsls r0, r7, #2
	ldr r1, _080416E4
	adds r1, r0, r1
	ldr r1, [r1]
	adds r6, r0, #0
	mov pc, r1
	.align 2, 0
_080416A8: .4byte 0x0203E127
_080416AC: .4byte 0x0203EA7C
_080416B0: .4byte 0x080CC84C
_080416B4: .4byte 0x02000FCC
_080416B8: .4byte 0x000005EA
_080416BC: .4byte 0x0203E128
_080416C0: .4byte 0x0000062A
_080416C4: .4byte 0x0203E129
_080416C8: .4byte 0x0000066A
_080416CC: .4byte 0x0203E12B
_080416D0: .4byte 0x000006AA
_080416D4: .4byte 0x0203E12C
_080416D8: .4byte 0x000006EA
_080416DC: .4byte 0x0203E126
_080416E0: .4byte 0x0000072A
_080416E4: .4byte 0x080416E8
	.byte 0x94, 0x1A, 0x04, 0x08, 0x04, 0x17, 0x04, 0x08
	.byte 0x68, 0x17, 0x04, 0x08, 0x94, 0x1A, 0x04, 0x08, 0x24, 0x18, 0x04, 0x08, 0x38, 0x19, 0x04, 0x08
	.byte 0xA0, 0x19, 0x04, 0x08

_08041704:
	ldr r0, _08041754
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804170E
	b _08041A94
_0804170E:
	ldr r4, _08041758
	ldr r2, [r4]
	movs r3, #0xe8
	lsls r3, r3, #3
	adds r2, r2, r3
	ldr r0, _0804175C
	adds r1, r6, r7
	lsls r1, r1, #2
	adds r0, r1, r0
	ldrb r0, [r0, #4]
	movs r5, #0
	strh r0, [r2, #0xa]
	ldr r0, _08041760
	adds r1, r1, r0
	ldrb r0, [r1, #4]
	strh r0, [r2, #6]
	strh r0, [r2, #8]
	movs r0, #1
	strb r0, [r2, #0x1f]
	ldr r1, [r4]
	adds r3, r1, r3
	ldr r0, [r3, #0x10]
	str r0, [r3, #0x14]
	movs r0, #0x80
	lsls r0, r0, #0xb
	str r0, [r3, #0x10]
	ldr r2, _08041764
	adds r0, r1, r2
	ldrb r0, [r0]
	adds r2, #1
	adds r1, r1, r2
	strb r0, [r1]
	ldr r0, [r4]
	ldr r1, _08041764
	b _08041986
	.align 2, 0
_08041754: .4byte 0x0203E12D
_08041758: .4byte 0x0203EA7C
_0804175C: .4byte 0x080CC84C
_08041760: .4byte 0x02000FCC
_08041764: .4byte 0x0000076A
	ldr r0, _08041808
	ldrb r0, [r0]
	cmp r0, #0
	beq _080417B8
	ldr r4, _0804180C
	ldr r2, [r4]
	movs r3, #0xf0
	lsls r3, r3, #3
	adds r2, r2, r3
	ldr r0, _08041810
	adds r1, r6, r7
	lsls r1, r1, #2
	adds r0, r1, r0
	ldrb r0, [r0, #3]
	movs r5, #0
	strh r0, [r2, #0xa]
	ldr r0, _08041814
	adds r1, r1, r0
	ldrb r0, [r1, #3]
	strh r0, [r2, #6]
	strh r0, [r2, #8]
	movs r0, #1
	strb r0, [r2, #0x1f]
	ldr r1, [r4]
	adds r3, r1, r3
	ldr r0, [r3, #0x10]
	str r0, [r3, #0x14]
	movs r0, #0x80
	lsls r0, r0, #0xb
	str r0, [r3, #0x10]
	ldr r2, _08041818
	adds r0, r1, r2
	ldrb r0, [r0]
	adds r2, #1
	adds r1, r1, r2
	strb r0, [r1]
	ldr r0, [r4]
	ldr r1, _08041818
	adds r0, r0, r1
	strb r5, [r0]
_080417B8:
	ldr r0, _0804181C
	ldrb r0, [r0]
	cmp r0, #0
	bne _080417C2
	b _08041A94
_080417C2:
	ldr r4, _0804180C
	ldr r2, [r4]
	movs r3, #0x84
	lsls r3, r3, #4
	adds r2, r2, r3
	ldr r0, _08041810
	adds r1, r6, r7
	lsls r1, r1, #2
	adds r0, r1, r0
	ldrb r0, [r0, #2]
	movs r5, #0
	strh r0, [r2, #0xa]
	ldr r0, _08041814
	adds r1, r1, r0
	ldrb r0, [r1, #2]
	strh r0, [r2, #6]
	strh r0, [r2, #8]
	movs r0, #1
	strb r0, [r2, #0x1f]
	ldr r1, [r4]
	adds r3, r1, r3
	ldr r0, [r3, #0x10]
	str r0, [r3, #0x14]
	movs r0, #0x80
	lsls r0, r0, #0xb
	str r0, [r3, #0x10]
	ldr r2, _08041820
	adds r0, r1, r2
	ldrb r0, [r0]
	adds r2, #1
	adds r1, r1, r2
	strb r0, [r1]
	ldr r0, [r4]
	ldr r1, _08041820
	b _08041986
	.align 2, 0
_08041808: .4byte 0x0203E12E
_0804180C: .4byte 0x0203EA7C
_08041810: .4byte 0x080CC84C
_08041814: .4byte 0x02000FCC
_08041818: .4byte 0x000007AA
_0804181C: .4byte 0x0203E12F
_08041820: .4byte 0x0000086A
_08041824:
	ldr r0, _08041914
	ldrb r0, [r0]
	cmp r0, #0
	beq _08041874
	ldr r4, _08041918
	ldr r2, [r4]
	movs r3, #0xf8
	lsls r3, r3, #3
	adds r2, r2, r3
	ldr r0, _0804191C
	adds r1, r6, r7
	lsls r1, r1, #2
	adds r0, r1, r0
	ldrb r0, [r0, #0xf]
	movs r5, #0
	strh r0, [r2, #0xa]
	ldr r0, _08041920
	adds r1, r1, r0
	ldrb r0, [r1, #0xf]
	strh r0, [r2, #6]
	strh r0, [r2, #8]
	movs r0, #1
	strb r0, [r2, #0x1f]
	ldr r1, [r4]
	adds r3, r1, r3
	ldr r0, [r3, #0x10]
	str r0, [r3, #0x14]
	movs r0, #0x80
	lsls r0, r0, #0xb
	str r0, [r3, #0x10]
	ldr r2, _08041924
	adds r0, r1, r2
	ldrb r0, [r0]
	adds r2, #1
	adds r1, r1, r2
	strb r0, [r1]
	ldr r0, [r4]
	ldr r1, _08041924
	adds r0, r0, r1
	strb r5, [r0]
_08041874:
	ldr r0, _08041928
	ldrb r0, [r0]
	cmp r0, #0
	beq _080418C4
	ldr r4, _08041918
	ldr r2, [r4]
	movs r3, #0x88
	lsls r3, r3, #4
	adds r2, r2, r3
	ldr r0, _0804191C
	adds r1, r6, r7
	lsls r1, r1, #2
	adds r0, r1, r0
	ldrb r0, [r0, #0xe]
	movs r5, #0
	strh r0, [r2, #0xa]
	ldr r0, _08041920
	adds r1, r1, r0
	ldrb r0, [r1, #0xe]
	strh r0, [r2, #6]
	strh r0, [r2, #8]
	movs r0, #1
	strb r0, [r2, #0x1f]
	ldr r1, [r4]
	adds r3, r1, r3
	ldr r0, [r3, #0x10]
	str r0, [r3, #0x14]
	movs r0, #0x80
	lsls r0, r0, #0xb
	str r0, [r3, #0x10]
	ldr r2, _0804192C
	adds r0, r1, r2
	ldrb r0, [r0]
	adds r2, #1
	adds r1, r1, r2
	strb r0, [r1]
	ldr r0, [r4]
	ldr r1, _0804192C
	adds r0, r0, r1
	strb r5, [r0]
_080418C4:
	ldr r0, _08041930
	ldrb r0, [r0]
	cmp r0, #0
	bne _080418CE
	b _08041A94
_080418CE:
	ldr r4, _08041918
	ldr r2, [r4]
	movs r3, #0x8c
	lsls r3, r3, #4
	adds r2, r2, r3
	ldr r0, _0804191C
	adds r1, r6, r7
	lsls r1, r1, #2
	adds r0, r1, r0
	ldrb r0, [r0, #0xd]
	movs r5, #0
	strh r0, [r2, #0xa]
	ldr r0, _08041920
	adds r1, r1, r0
	ldrb r0, [r1, #0xd]
	strh r0, [r2, #6]
	strh r0, [r2, #8]
	movs r0, #1
	strb r0, [r2, #0x1f]
	ldr r1, [r4]
	adds r3, r1, r3
	ldr r0, [r3, #0x10]
	str r0, [r3, #0x14]
	movs r0, #0x80
	lsls r0, r0, #0xb
	str r0, [r3, #0x10]
	ldr r2, _08041934
	adds r0, r1, r2
	ldrb r0, [r0]
	adds r2, #1
	adds r1, r1, r2
	strb r0, [r1]
	ldr r0, [r4]
	ldr r1, _08041934
	b _08041986
	.align 2, 0
_08041914: .4byte 0x0203E130
_08041918: .4byte 0x0203EA7C
_0804191C: .4byte 0x080CC84C
_08041920: .4byte 0x02000FCC
_08041924: .4byte 0x000007EA
_08041928: .4byte 0x0203E131
_0804192C: .4byte 0x000008AA
_08041930: .4byte 0x0203E132
_08041934: .4byte 0x000008EA
_08041938:
	ldr r0, _0804198C
	ldrb r0, [r0]
	cmp r0, #0
	bne _08041942
	b _08041A94
_08041942:
	ldr r4, _08041990
	ldr r2, [r4]
	movs r3, #0x80
	lsls r3, r3, #4
	adds r2, r2, r3
	ldr r0, _08041994
	adds r1, r6, r7
	lsls r1, r1, #2
	adds r0, r1, r0
	ldrb r0, [r0, #0x10]
	movs r5, #0
	strh r0, [r2, #0xa]
	ldr r0, _08041998
	adds r1, r1, r0
	ldrb r0, [r1, #0x10]
	strh r0, [r2, #6]
	strh r0, [r2, #8]
	movs r0, #1
	strb r0, [r2, #0x1f]
	ldr r1, [r4]
	adds r3, r1, r3
	ldr r0, [r3, #0x10]
	str r0, [r3, #0x14]
	movs r0, #0x80
	lsls r0, r0, #0xb
	str r0, [r3, #0x10]
	ldr r2, _0804199C
	adds r0, r1, r2
	ldrb r0, [r0]
	adds r2, #1
	adds r1, r1, r2
	strb r0, [r1]
	ldr r0, [r4]
	ldr r1, _0804199C
_08041986:
	adds r0, r0, r1
	strb r5, [r0]
	b _08041A94
_0804198C: .4byte 0x0203E133
_08041990: .4byte 0x0203EA7C
_08041994: .4byte 0x080CC84C
_08041998: .4byte 0x02000FCC
_0804199C: .4byte 0x0000082A
_080419A0:
	ldr r2, _08041A7C
	ldrb r0, [r2]
	cmp r0, #0
	beq _080419C0
	ldr r0, _08041A80
	ldr r1, [r0]
	movs r0, #0xb8
	lsls r0, r0, #3
	adds r1, r1, r0
	ldr r0, _08041A84
	ldrh r0, [r0, #0xc]
	strh r0, [r1, #0xa]
	ldr r0, _08041A88
	ldrh r0, [r0, #0xc]
	strh r0, [r1, #6]
	strh r0, [r1, #8]
_080419C0:
	ldr r1, _08041A8C
	ldrb r0, [r1]
	cmp r0, #0
	beq _080419E0
	ldr r0, _08041A80
	ldr r1, [r0]
	movs r2, #0xc0
	lsls r2, r2, #3
	adds r1, r1, r2
	ldr r0, _08041A84
	ldrb r0, [r0]
	strh r0, [r1, #0xa]
	ldr r0, _08041A88
	ldrb r0, [r0]
	strh r0, [r1, #6]
	strh r0, [r1, #8]
_080419E0:
	mov r1, sl
	ldrb r0, [r1]
	cmp r0, #0
	beq _08041A00
	ldr r0, _08041A80
	ldr r1, [r0]
	movs r2, #0xc8
	lsls r2, r2, #3
	adds r1, r1, r2
	ldr r0, _08041A84
	ldrb r0, [r0, #0xb]
	strh r0, [r1, #0xa]
	ldr r0, _08041A88
	ldrb r0, [r0, #0xb]
	strh r0, [r1, #6]
	strh r0, [r1, #8]
_08041A00:
	mov r1, sb
	ldrb r0, [r1]
	cmp r0, #0
	beq _08041A38
	ldr r0, _08041A80
	ldr r3, [r0]
	movs r2, #0xd0
	lsls r2, r2, #3
	adds r3, r3, r2
	ldr r0, _08041A84
	ldrb r1, [r0, #2]
	ldrb r2, [r0, #3]
	adds r1, r1, r2
	ldrb r2, [r0, #4]
	adds r1, r1, r2
	ldrb r0, [r0, #5]
	adds r0, r0, r1
	strh r0, [r3, #0xa]
	ldr r0, _08041A88
	ldrb r1, [r0, #2]
	ldrb r2, [r0, #3]
	adds r1, r1, r2
	ldrb r2, [r0, #4]
	adds r1, r1, r2
	ldrb r0, [r0, #5]
	adds r0, r0, r1
	strh r0, [r3, #6]
	strh r0, [r3, #8]
_08041A38:
	mov r1, r8
	ldrb r0, [r1]
	cmp r0, #0
	beq _08041A58
	ldr r0, _08041A80
	ldr r1, [r0]
	movs r2, #0xd8
	lsls r2, r2, #3
	adds r1, r1, r2
	ldr r0, _08041A84
	ldrb r0, [r0, #7]
	strh r0, [r1, #0xa]
	ldr r0, _08041A88
	ldrb r0, [r0, #7]
	strh r0, [r1, #6]
	strh r0, [r1, #8]
_08041A58:
	mov r1, ip
	ldrb r0, [r1]
	cmp r0, #0
	beq _08041A94
	ldr r0, _08041A80
	ldr r1, [r0]
	movs r2, #0xe0
	lsls r2, r2, #3
	adds r1, r1, r2
	ldr r0, _08041A84
	ldrb r0, [r0, #1]
	strh r0, [r1, #0xa]
	ldr r0, _08041A88
	ldrb r0, [r0, #1]
	strh r0, [r1, #6]
	strh r0, [r1, #8]
	b _08041A94
	.align 2, 0
_08041A7C: .4byte 0x0203E127
_08041A80: .4byte 0x0203EA7C
_08041A84: .4byte 0x080CC8C4
_08041A88: .4byte gGameStatus
_08041A8C: .4byte 0x0203E128
_08041A90:
	.2byte 0xEE00, 0xEE00
_08041A94:
	ldr r1, _08041AA8
	movs r0, #1
	strb r0, [r1]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08041AA8: .4byte 0x0203EA80

    .thumb
    .global sub_8041AAC
sub_8041AAC: @ 0x08041AAC
	push {lr}
	ldr r1, _08041ABC
	movs r0, #0
	strb r0, [r1]
	bl sub_8041E58
	pop {r0}
	bx r0
	.align 2, 0
_08041ABC: .4byte 0x0203EA80

    .thumb
    .global sub_08041AC0
sub_08041AC0: @ 0x08041AC0
	push {lr}
	adds r1, r0, #0
	movs r2, #1
	ldr r0, _08041B74
	ldrb r0, [r0]
	cmp r0, #0
	beq _08041AE0
	ldr r0, _08041B78
	ldr r0, [r0]
	movs r3, #0xb8
	lsls r3, r3, #3
	adds r0, r0, r3
	ldrb r0, [r0, #0x1f]
	cmp r0, #5
	beq _08041AE0
	movs r2, #0
_08041AE0:
	ldr r0, _08041B7C
	ldrb r0, [r0]
	cmp r0, #0
	beq _08041AFA
	ldr r0, _08041B78
	ldr r0, [r0]
	movs r3, #0xc0
	lsls r3, r3, #3
	adds r0, r0, r3
	ldrb r0, [r0, #0x1f]
	cmp r0, #5
	beq _08041AFA
	movs r2, #0
_08041AFA:
	ldr r0, _08041B80
	ldrb r0, [r0]
	cmp r0, #0
	beq _08041B14
	ldr r0, _08041B78
	ldr r0, [r0]
	movs r3, #0xc8
	lsls r3, r3, #3
	adds r0, r0, r3
	ldrb r0, [r0, #0x1f]
	cmp r0, #5
	beq _08041B14
	movs r2, #0
_08041B14:
	ldr r0, _08041B84
	ldrb r0, [r0]
	cmp r0, #0
	beq _08041B2E
	ldr r0, _08041B78
	ldr r0, [r0]
	movs r3, #0xd0
	lsls r3, r3, #3
	adds r0, r0, r3
	ldrb r0, [r0, #0x1f]
	cmp r0, #5
	beq _08041B2E
	movs r2, #0
_08041B2E:
	ldr r0, _08041B88
	ldrb r0, [r0]
	cmp r0, #0
	beq _08041B48
	ldr r0, _08041B78
	ldr r0, [r0]
	movs r3, #0xd8
	lsls r3, r3, #3
	adds r0, r0, r3
	ldrb r0, [r0, #0x1f]
	cmp r0, #5
	beq _08041B48
	movs r2, #0
_08041B48:
	ldr r0, _08041B8C
	ldrb r0, [r0]
	cmp r0, #0
	beq _08041B62
	ldr r0, _08041B78
	ldr r0, [r0]
	movs r3, #0xe0
	lsls r3, r3, #3
	adds r0, r0, r3
	ldrb r0, [r0, #0x1f]
	cmp r0, #5
	beq _08041B62
	movs r2, #0
_08041B62:
	cmp r1, #6
	bls _08041B68
	b _08041C80
_08041B68:
	lsls r0, r1, #2
	ldr r1, _08041B90
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08041B74: .4byte 0x0203E127
_08041B78: .4byte 0x0203EA7C
_08041B7C: .4byte 0x0203E128
_08041B80: .4byte 0x0203E129
_08041B84: .4byte 0x0203E12B
_08041B88: .4byte 0x0203E12C
_08041B8C: .4byte 0x0203E126
_08041B90: .4byte 0x08041B94
_08041B94: @ jump table
	.4byte _08041C84 @ case 0
	.4byte _08041BB0 @ case 1
	.4byte _08041BD4 @ case 2
	.4byte _08041C84 @ case 3
	.4byte _08041C0C @ case 4
	.4byte _08041C64 @ case 5
	.4byte _08041C84 @ case 6
_08041BB0:
	ldr r0, _08041BCC
	ldrb r0, [r0]
	cmp r0, #0
	beq _08041C84
	ldr r0, _08041BD0
	ldr r0, [r0]
	movs r1, #0xe8
	lsls r1, r1, #3
_08041BC0:
	adds r0, r0, r1
_08041BC2:
	ldrb r0, [r0, #0x1f]
	cmp r0, #5
	beq _08041C84
	movs r2, #0
	b _08041C84
	.align 2, 0
_08041BCC: .4byte 0x0203E12D
_08041BD0: .4byte 0x0203EA7C
_08041BD4:
	ldr r0, _08041C00
	ldrb r0, [r0]
	cmp r0, #0
	beq _08041BEE
	ldr r0, _08041C04
	ldr r0, [r0]
	movs r3, #0xf0
	lsls r3, r3, #3
	adds r0, r0, r3
	ldrb r0, [r0, #0x1f]
	cmp r0, #5
	beq _08041BEE
	movs r2, #0
_08041BEE:
	ldr r0, _08041C08
	ldrb r0, [r0]
	cmp r0, #0
	beq _08041C84
	ldr r0, _08041C04
	ldr r0, [r0]
	movs r1, #0x84
	lsls r1, r1, #4
	b _08041BC0
	.align 2, 0
_08041C00: .4byte 0x0203E12E
_08041C04: .4byte 0x0203EA7C
_08041C08: .4byte 0x0203E12F
_08041C0C:
	ldr r0, _08041C54
	ldrb r0, [r0]
	cmp r0, #0
	beq _08041C26
	ldr r0, _08041C58
	ldr r0, [r0]
	movs r3, #0xf8
	lsls r3, r3, #3
	adds r0, r0, r3
	ldrb r0, [r0, #0x1f]
	cmp r0, #5
	beq _08041C26
	movs r2, #0
_08041C26:
	ldr r0, _08041C5C
	ldrb r0, [r0]
	cmp r0, #0
	beq _08041C40
	ldr r0, _08041C58
	ldr r0, [r0]
	movs r1, #0x88
	lsls r1, r1, #4
	adds r0, r0, r1
	ldrb r0, [r0, #0x1f]
	cmp r0, #5
	beq _08041C40
	movs r2, #0
_08041C40:
	ldr r0, _08041C60
	ldrb r0, [r0]
	cmp r0, #0
	beq _08041C84
	ldr r0, _08041C58
	ldr r0, [r0]
	movs r3, #0x8c
	lsls r3, r3, #4
	adds r0, r0, r3
	b _08041BC2
	.align 2, 0
_08041C54: .4byte 0x0203E130
_08041C58: .4byte 0x0203EA7C
_08041C5C: .4byte 0x0203E131
_08041C60: .4byte 0x0203E132
_08041C64:
	ldr r0, _08041C78
	ldrb r0, [r0]
	cmp r0, #0
	beq _08041C84
	ldr r0, _08041C7C
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #4
	b _08041BC0
	.align 2, 0
_08041C78: .4byte 0x0203E133
_08041C7C: .4byte 0x0203EA7C
_08041C80:
	.2byte 0xEE00, 0xEE00
_08041C84:
	adds r0, r2, #0
	pop {r1}
	bx r1
	.align 2, 0

    .thumb
    .global sub_08041C8C
sub_08041C8C: @ 0x08041C8C
	push {lr}
	adds r1, r0, #0
	movs r2, #1
	ldr r0, _08041D40
	ldrb r0, [r0]
	cmp r0, #0
	beq _08041CAC
	ldr r0, _08041D44
	ldr r0, [r0]
	movs r3, #0xb8
	lsls r3, r3, #3
	adds r0, r0, r3
	ldrb r0, [r0, #0x1f]
	cmp r0, #0
	beq _08041CAC
	movs r2, #0
_08041CAC:
	ldr r0, _08041D48
	ldrb r0, [r0]
	cmp r0, #0
	beq _08041CC6
	ldr r0, _08041D44
	ldr r0, [r0]
	movs r3, #0xc0
	lsls r3, r3, #3
	adds r0, r0, r3
	ldrb r0, [r0, #0x1f]
	cmp r0, #0
	beq _08041CC6
	movs r2, #0
_08041CC6:
	ldr r0, _08041D4C
	ldrb r0, [r0]
	cmp r0, #0
	beq _08041CE0
	ldr r0, _08041D44
	ldr r0, [r0]
	movs r3, #0xc8
	lsls r3, r3, #3
	adds r0, r0, r3
	ldrb r0, [r0, #0x1f]
	cmp r0, #0
	beq _08041CE0
	movs r2, #0
_08041CE0:
	ldr r0, _08041D50
	ldrb r0, [r0]
	cmp r0, #0
	beq _08041CFA
	ldr r0, _08041D44
	ldr r0, [r0]
	movs r3, #0xd0
	lsls r3, r3, #3
	adds r0, r0, r3
	ldrb r0, [r0, #0x1f]
	cmp r0, #0
	beq _08041CFA
	movs r2, #0
_08041CFA:
	ldr r0, _08041D54
	ldrb r0, [r0]
	cmp r0, #0
	beq _08041D14
	ldr r0, _08041D44
	ldr r0, [r0]
	movs r3, #0xd8
	lsls r3, r3, #3
	adds r0, r0, r3
	ldrb r0, [r0, #0x1f]
	cmp r0, #0
	beq _08041D14
	movs r2, #0
_08041D14:
	ldr r0, _08041D58
	ldrb r0, [r0]
	cmp r0, #0
	beq _08041D2E
	ldr r0, _08041D44
	ldr r0, [r0]
	movs r3, #0xe0
	lsls r3, r3, #3
	adds r0, r0, r3
	ldrb r0, [r0, #0x1f]
	cmp r0, #0
	beq _08041D2E
	movs r2, #0
_08041D2E:
	cmp r1, #6
	bls _08041D34
	b _08041E4C
_08041D34:
	lsls r0, r1, #2
	ldr r1, _08041D5C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08041D40: .4byte 0x0203E127
_08041D44: .4byte 0x0203EA7C
_08041D48: .4byte 0x0203E128
_08041D4C: .4byte 0x0203E129
_08041D50: .4byte 0x0203E12B
_08041D54: .4byte 0x0203E12C
_08041D58: .4byte 0x0203E126
_08041D5C: .4byte 0x08041D60
_08041D60: @ jump table
	.4byte _08041E50 @ case 0
	.4byte _08041D7C @ case 1
	.4byte _08041DA0 @ case 2
	.4byte _08041E50 @ case 3
	.4byte _08041DD8 @ case 4
	.4byte _08041E30 @ case 5
	.4byte _08041E50 @ case 6
_08041D7C:
	ldr r0, _08041D98
	ldrb r0, [r0]
	cmp r0, #0
	beq _08041E50
	ldr r0, _08041D9C
	ldr r0, [r0]
	movs r1, #0xe8
	lsls r1, r1, #3
_08041D8C:
	adds r0, r0, r1
_08041D8E:
	ldrb r0, [r0, #0x1f]
	cmp r0, #0
	beq _08041E50
	movs r2, #0
	b _08041E50
	.align 2, 0
_08041D98: .4byte 0x0203E12D
_08041D9C: .4byte 0x0203EA7C
_08041DA0:
	ldr r0, _08041DCC
	ldrb r0, [r0]
	cmp r0, #0
	beq _08041DBA
	ldr r0, _08041DD0
	ldr r0, [r0]
	movs r3, #0xf0
	lsls r3, r3, #3
	adds r0, r0, r3
	ldrb r0, [r0, #0x1f]
	cmp r0, #0
	beq _08041DBA
	movs r2, #0
_08041DBA:
	ldr r0, _08041DD4
	ldrb r0, [r0]
	cmp r0, #0
	beq _08041E50
	ldr r0, _08041DD0
	ldr r0, [r0]
	movs r1, #0x84
	lsls r1, r1, #4
	b _08041D8C
	.align 2, 0
_08041DCC: .4byte 0x0203E12E
_08041DD0: .4byte 0x0203EA7C
_08041DD4: .4byte 0x0203E12F
_08041DD8:
	ldr r0, _08041E20
	ldrb r0, [r0]
	cmp r0, #0
	beq _08041DF2
	ldr r0, _08041E24
	ldr r0, [r0]
	movs r3, #0xf8
	lsls r3, r3, #3
	adds r0, r0, r3
	ldrb r0, [r0, #0x1f]
	cmp r0, #0
	beq _08041DF2
	movs r2, #0
_08041DF2:
	ldr r0, _08041E28
	ldrb r0, [r0]
	cmp r0, #0
	beq _08041E0C
	ldr r0, _08041E24
	ldr r0, [r0]
	movs r1, #0x88
	lsls r1, r1, #4
	adds r0, r0, r1
	ldrb r0, [r0, #0x1f]
	cmp r0, #0
	beq _08041E0C
	movs r2, #0
_08041E0C:
	ldr r0, _08041E2C
	ldrb r0, [r0]
	cmp r0, #0
	beq _08041E50
	ldr r0, _08041E24
	ldr r0, [r0]
	movs r3, #0x8c
	lsls r3, r3, #4
	adds r0, r0, r3
	b _08041D8E
	.align 2, 0
_08041E20: .4byte 0x0203E130
_08041E24: .4byte 0x0203EA7C
_08041E28: .4byte 0x0203E131
_08041E2C: .4byte 0x0203E132
_08041E30:
	ldr r0, _08041E44
	ldrb r0, [r0]
	cmp r0, #0
	beq _08041E50
	ldr r0, _08041E48
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #4
	b _08041D8C
	.align 2, 0
_08041E44: .4byte 0x0203E133
_08041E48: .4byte 0x0203EA7C
_08041E4C:
	.2byte 0xEE00, 0xEE00
_08041E50:
	adds r0, r2, #0
	pop {r1}
	bx r1
	.align 2, 0

    .thumb
    .global sub_8041E58
sub_8041E58: @ 0x08041E58
	push {r4, r5, lr}
	movs r2, #0
	ldr r5, _08041E84
	movs r4, #0
	movs r3, #1
_08041E62:
	ldr r0, [r5]
	lsls r1, r2, #6
	adds r1, r1, r0
	ldrb r0, [r1, #0x1f]
	cmp r0, #0
	beq _08041E76
	strh r3, [r1, #0x18]
	adds r0, r1, #0
	adds r0, #0x2a
	strb r4, [r0]
_08041E76:
	adds r2, #1
	cmp r2, #0x3b
	ble _08041E62
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08041E84: .4byte 0x0203EA7C

    .thumb
    .global sub_8041E88
sub_8041E88: @ 0x08041E88
	push {r4, r5, lr}
	ldr r3, _08041F18
	ldr r0, [r3]
	movs r2, #0x9c
	lsls r2, r2, #4
	adds r1, r0, r2
	movs r4, #0
	movs r2, #0
	strh r2, [r1, #0x18]
	ldr r5, _08041F1C
	adds r0, r0, r5
	strb r4, [r0]
	ldr r0, [r3]
	adds r5, #0x16
	adds r1, r0, r5
	strh r2, [r1, #0x18]
	ldr r1, _08041F20
	adds r0, r0, r1
	strb r4, [r0]
	ldr r0, [r3]
	adds r5, #0x40
	adds r1, r0, r5
	strh r2, [r1, #0x18]
	ldr r1, _08041F24
	adds r0, r0, r1
	strb r4, [r0]
	ldr r0, [r3]
	adds r5, #0xc0
	adds r1, r0, r5
	strh r2, [r1, #0x18]
	ldr r1, _08041F28
	adds r0, r0, r1
	strb r4, [r0]
	ldr r0, [r3]
	adds r5, #0x40
	adds r1, r0, r5
	strh r2, [r1, #0x18]
	ldr r1, _08041F2C
	adds r0, r0, r1
	strb r4, [r0]
	ldr r0, [r3]
	adds r5, #0x40
	adds r1, r0, r5
	strh r2, [r1, #0x18]
	ldr r1, _08041F30
	adds r0, r0, r1
	strb r4, [r0]
	ldr r0, [r3]
	adds r5, #0x40
	adds r1, r0, r5
	strh r2, [r1, #0x18]
	ldr r1, _08041F34
	adds r0, r0, r1
	strb r4, [r0]
	ldr r0, [r3]
	adds r5, #0x40
	adds r1, r0, r5
	strh r2, [r1, #0x18]
	ldr r1, _08041F38
	adds r0, r0, r1
	strb r4, [r0]
	ldr r0, [r3]
	movs r3, #0xc4
	lsls r3, r3, #4
	adds r1, r0, r3
	strh r2, [r1, #0x18]
	adds r5, #0x6a
	adds r0, r0, r5
	strb r4, [r0]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08041F18: .4byte 0x0203EA7C
_08041F1C: .4byte 0x000009EA
_08041F20: .4byte 0x00000A2A
_08041F24: .4byte 0x00000A6A
_08041F28: .4byte 0x00000B2A
_08041F2C: .4byte 0x00000B6A
_08041F30: .4byte 0x00000BAA
_08041F34: .4byte 0x00000BEA
_08041F38: .4byte 0x00000C2A

    .thumb
    .global sub_08041F3C
sub_08041F3C: @ 0x08041F3C
	push {r4, lr}
	adds r2, r0, #0
	adds r3, r1, #0
	cmp r2, #0x39
	bls _08041F4A
	.2byte 0xEE00, 0xEE00
_08041F4A:
	cmp r2, #0x38
	beq _08041F5C
	cmp r2, #0x39
	beq _08041F7C
	ldr r1, _08041F58
	b _08041F92
	.align 2, 0
_08041F58: .4byte 0x0203EA7C
_08041F5C:
	ldr r1, _08041F78
	ldr r0, [r1]
	movs r2, #0xe4
	lsls r2, r2, #4
	adds r0, r0, r2
	ldrb r0, [r0, #0x1f]
	movs r2, #0x3b
	cmp r0, #0
	beq _08041F92
	cmp r0, #6
	beq _08041F92
	movs r2, #0x3a
	b _08041F92
	.align 2, 0
_08041F78: .4byte 0x0203EA7C
_08041F7C:
	ldr r1, _08041FA0
	ldr r0, [r1]
	movs r4, #0xec
	lsls r4, r4, #4
	adds r0, r0, r4
	ldrb r0, [r0, #0x1f]
	cmp r0, #0
	beq _08041F92
	cmp r0, #6
	beq _08041F92
	movs r2, #0x38
_08041F92:
	ldr r1, [r1]
	lsls r0, r2, #6
	adds r0, r0, r1
	str r3, [r0, #0x10]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08041FA0: .4byte 0x0203EA7C

    .thumb
    .global sub_08041FA4
sub_08041FA4: @ 0x08041FA4
	push {lr}
	adds r2, r0, #0
	cmp r2, #0x39
	bls _08041FB0
	.2byte 0xEE00, 0xEE00
_08041FB0:
	cmp r2, #0x38
	beq _08041FC0
	cmp r2, #0x39
	beq _08041FE0
	ldr r1, _08041FBC
	b _08041FF6
	.align 2, 0
_08041FBC: .4byte 0x0203EA7C
_08041FC0:
	ldr r1, _08041FDC
	ldr r0, [r1]
	movs r2, #0xe4
	lsls r2, r2, #4
	adds r0, r0, r2
	ldrb r3, [r0, #0x1f]
	movs r2, #0x3b
	cmp r3, #0
	beq _08041FF6
	cmp r3, #6
	beq _08041FF6
	movs r2, #0x3a
	b _08041FF6
	.align 2, 0
_08041FDC: .4byte 0x0203EA7C
_08041FE0:
	ldr r1, _08042008
	ldr r0, [r1]
	movs r3, #0xec
	lsls r3, r3, #4
	adds r0, r0, r3
	ldrb r3, [r0, #0x1f]
	cmp r3, #0
	beq _08041FF6
	cmp r3, #6
	beq _08041FF6
	movs r2, #0x38
_08041FF6:
	ldr r0, [r1]
	lsls r1, r2, #6
	adds r1, r1, r0
	adds r1, #0x2a
	movs r0, #1
	strb r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_08042008: .4byte 0x0203EA7C

    .thumb
    .global sub_0804200C
sub_0804200C: @ 0x0804200C
	push {lr}
	adds r2, r0, #0
	cmp r2, #0x39
	bls _08042018
	.2byte 0xEE00, 0xEE00
_08042018:
	cmp r2, #0x38
	beq _08042028
	cmp r2, #0x39
	beq _08042048
	ldr r3, _08042024
	b _08042060
	.align 2, 0
_08042024: .4byte 0x0203EA7C
_08042028:
	ldr r1, _08042044
	ldr r0, [r1]
	movs r2, #0xe4
	lsls r2, r2, #4
	adds r0, r0, r2
	ldrb r0, [r0, #0x1f]
	movs r2, #0x3b
	adds r3, r1, #0
	cmp r0, #0
	beq _08042060
	cmp r0, #6
	beq _08042060
	movs r2, #0x3a
	b _08042060
	.align 2, 0
_08042044: .4byte 0x0203EA7C
_08042048:
	ldr r1, _08042078
	ldr r0, [r1]
	movs r3, #0xec
	lsls r3, r3, #4
	adds r0, r0, r3
	ldrb r0, [r0, #0x1f]
	adds r3, r1, #0
	cmp r0, #0
	beq _08042060
	cmp r0, #6
	beq _08042060
	movs r2, #0x38
_08042060:
	ldr r0, [r3]
	lsls r2, r2, #6
	adds r0, r2, r0
	adds r0, #0x2a
	movs r1, #0
	strb r1, [r0]
	ldr r0, [r3]
	adds r2, r2, r0
	movs r0, #1
	strh r0, [r2, #0x18]
	pop {r0}
	bx r0
	.align 2, 0
_08042078: .4byte 0x0203EA7C

    .thumb
    .global sub_0804207C
sub_0804207C: @ 0x0804207C
	push {lr}
	adds r2, r0, #0
	cmp r2, #0x39
	bls _08042088
	.2byte 0xEE00, 0xEE00
_08042088:
	cmp r2, #0x38
	beq _08042098
	cmp r2, #0x39
	beq _080420B8
	ldr r1, _08042094
	b _080420CE
	.align 2, 0
_08042094: .4byte 0x0203EA7C
_08042098:
	ldr r1, _080420B4
	ldr r0, [r1]
	movs r2, #0xe4
	lsls r2, r2, #4
	adds r0, r0, r2
	ldrb r3, [r0, #0x1f]
	movs r2, #0x3b
	cmp r3, #0
	beq _080420CE
	cmp r3, #6
	beq _080420CE
	movs r2, #0x3a
	b _080420CE
	.align 2, 0
_080420B4: .4byte 0x0203EA7C
_080420B8:
	ldr r1, _080420E4
	ldr r0, [r1]
	movs r3, #0xec
	lsls r3, r3, #4
	adds r0, r0, r3
	ldrb r3, [r0, #0x1f]
	cmp r3, #0
	beq _080420CE
	cmp r3, #6
	beq _080420CE
	movs r2, #0x38
_080420CE:
	movs r3, #0
	ldr r0, [r1]
	lsls r1, r2, #6
	adds r1, r1, r0
	ldrb r0, [r1, #0x1f]
	cmp r0, #5
	bne _080420DE
	movs r3, #1
_080420DE:
	adds r0, r3, #0
	pop {r1}
	bx r1
	.align 2, 0
_080420E4: .4byte 0x0203EA7C

    .thumb
    .global sub_080420E8
sub_080420E8: @ 0x080420E8
	push {lr}
	adds r2, r0, #0
	cmp r2, #0x39
	bls _080420F4
	.2byte 0xEE00, 0xEE00
_080420F4:
	cmp r2, #0x38
	beq _08042104
	cmp r2, #0x39
	beq _08042124
	ldr r1, _08042100
	b _0804213A
	.align 2, 0
_08042100: .4byte 0x0203EA7C
_08042104:
	ldr r1, _08042120
	ldr r0, [r1]
	movs r2, #0xe4
	lsls r2, r2, #4
	adds r0, r0, r2
	ldrb r0, [r0, #0x1f]
	movs r2, #0x3b
	cmp r0, #0
	beq _0804213A
	cmp r0, #6
	beq _0804213A
	movs r2, #0x3a
	b _0804213A
	.align 2, 0
_08042120: .4byte 0x0203EA7C
_08042124:
	ldr r1, _0804214C
	ldr r0, [r1]
	movs r3, #0xec
	lsls r3, r3, #4
	adds r0, r0, r3
	ldrb r0, [r0, #0x1f]
	cmp r0, #0
	beq _0804213A
	cmp r0, #6
	beq _0804213A
	movs r2, #0x38
_0804213A:
	ldr r1, [r1]
	lsls r0, r2, #6
	adds r0, r0, r1
	ldrb r1, [r0, #0x1f]
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r0, r0, #0x1f
	pop {r1}
	bx r1
	.align 2, 0
_0804214C: .4byte 0x0203EA7C

    .thumb
sub_08042150: @ 0x08042150
	push {lr}
	adds r2, r0, #0
	cmp r2, #0x39
	bls _0804215C
	.2byte 0xEE00, 0xEE00
_0804215C:
	cmp r2, #0x38
	beq _0804216C
	cmp r2, #0x39
	beq _0804218C
	ldr r1, _08042168
	b _080421A2
	.align 2, 0
_08042168: .4byte 0x0203EA7C
_0804216C:
	ldr r1, _08042188
	ldr r0, [r1]
	movs r2, #0xe4
	lsls r2, r2, #4
	adds r0, r0, r2
	ldrb r0, [r0, #0x1f]
	movs r2, #0x3b
	cmp r0, #0
	beq _080421A2
	cmp r0, #6
	beq _080421A2
	movs r2, #0x3a
	b _080421A2
	.align 2, 0
_08042188: .4byte 0x0203EA7C
_0804218C:
	ldr r1, _080421B8
	ldr r0, [r1]
	movs r3, #0xec
	lsls r3, r3, #4
	adds r0, r0, r3
	ldrb r0, [r0, #0x1f]
	cmp r0, #0
	beq _080421A2
	cmp r0, #6
	beq _080421A2
	movs r2, #0x38
_080421A2:
	ldr r1, [r1]
	lsls r0, r2, #6
	adds r0, r0, r1
	ldrb r2, [r0, #0x1f]
	cmp r2, #6
	beq _080421BC
	cmp r2, #0
	beq _080421BC
	ldrh r0, [r0, #0xa]
	b _080421C0
	.align 2, 0
_080421B8: .4byte 0x0203EA7C
_080421BC:
	movs r0, #1
	rsbs r0, r0, #0
_080421C0:
	pop {r1}
	bx r1


	.thumb
sub_80421C4: @ 0x080421C4
	push {r4, r5, r6, r7, lr}
	adds r6, r1, #0
	adds r5, r2, #0
	cmp r0, #9
	bgt _080421D8
	movs r7, #1
	adds r1, r5, #0
	bl IntegerToAsciiBw
	b _080421EE
_080421D8:
	cmp r0, #0x63
	bgt _080421E6
	movs r7, #2
	adds r1, r5, #1
	bl IntegerToAsciiBw
	b _080421EE
_080421E6:
	movs r7, #3
	adds r1, r5, #2
	bl IntegerToAsciiBw
_080421EE:
	adds r1, r5, r7
	movs r0, #0x2f
	strb r0, [r1]
	movs r4, #1
	cmp r6, #9
	ble _08042202
	movs r4, #3
	cmp r6, #0x63
	bgt _08042202
	movs r4, #2
_08042202:
	adds r4, r7, r4
	adds r4, r5, r4
	adds r0, r6, #0
	adds r1, r4, #0
	bl IntegerToAsciiBw
	movs r0, #0xff
	strb r0, [r4, #1]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

    .thumb
    .global sub_8042218
sub_8042218: @ 0x08042218
	push {r4, lr}
	adds r2, r0, #0
	ldr r3, _08042240
	ldr r0, [r3]
	movs r4, #0x90
	lsls r4, r4, #4
	adds r1, r0, r4
	ldrb r0, [r1, #0x1f]
	cmp r0, #0
	bne _08042244
	strh r2, [r1, #6]
	strh r2, [r1, #8]
	movs r0, #1
	strb r0, [r1, #0x1f]
	ldr r0, [r3]
	adds r0, r0, r4
	movs r1, #0xa
	strh r1, [r0, #0x18]
	movs r0, #1
	b _08042248
	.align 2, 0
_08042240: .4byte 0x0203EA7C
_08042244:
	movs r0, #0
	strh r0, [r1, #0x18]
_08042248:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

    .thumb
    .global sub_8042250
sub_8042250: @ 0x08042250
	push {r4, lr}
	ldr r0, _0804227C
	ldr r0, [r0]
	movs r1, #0xec
	lsls r1, r1, #4
	adds r0, r0, r1
	ldrb r0, [r0, #0x1f]
	cmp r0, #3
	beq _08042270
	ldr r0, _08042280
	movs r4, #0
	strb r4, [r0]
	bl sub_8063178
	ldr r0, _08042284
	strb r4, [r0]
_08042270:
	ldr r1, _08042288
	movs r0, #1
	strb r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0804227C: .4byte 0x0203EA7C
_08042280: .4byte byte_20020BC
_08042284: .4byte 0x0200108E
_08042288: .4byte 0x0203EA81

    .thumb
    .global audio_init_p1
audio_init_p1: @ 0x0804228C
	push {lr}
	ldr r0, _080422A8
	ldr r0, [r0]
	cmp r0, #0xe3
	beq _0804229A
	.2byte 0xEE00, 0xEE00
_0804229A:
	bl audio_init_p
	bl SetVolumeToDefault
	pop {r0}
	bx r0
	.align 2, 0
_080422A8: .4byte dword_80CEB58

    .thumb
    .global SetVolumeToDefault
SetVolumeToDefault: @ 0x080422AC
	push {r4, r5, lr}
	ldr r0, _080422E4
	movs r1, #1
	strb r1, [r0]
	ldr r0, _080422E8
	strb r1, [r0]
	ldr r1, _080422EC
	movs r0, #4
	strb r0, [r1]
	ldr r5, _080422F0
	movs r0, #9
	strb r0, [r5]
	ldr r1, _080422F4
	movs r0, #0
	strb r0, [r1]
	ldr r4, _080422F8
	ldr r0, [r4, #0x10]
	bl audio_set_tune_vol
	ldrb r0, [r5]
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	bl audio_set_fx_vol
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080422E4: .4byte 0x0203EA88
_080422E8: .4byte byte_203EA89
_080422EC: .4byte gBgmVolumeIndex
_080422F0: .4byte gSfxVolumeIndex
_080422F4: .4byte byte_203EA8C
_080422F8: .4byte dVolumes

	.thumb
sub_80422FC: @ 0x080422FC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r6, r0, #0
	mov r8, r1
	ldr r0, _08042330
	ldrb r0, [r0]
	lsls r5, r0, #0x10
	adds r0, r5, #0
	adds r1, r6, #0
	bl CallARM_FX_Mul
	mov sb, r0
	mov r0, r8
	cmp r0, #0
	beq _08042338
	ldr r0, _08042334
	ldrb r0, [r0]
	lsls r4, r0, #0x10
	adds r0, r4, #0
	adds r1, r6, #0
	bl CallARM_FX_Mul
	adds r7, r0, #0
	b _08042374
	.align 2, 0
_08042330: .4byte gBgmVolumeIndex
_08042334: .4byte gSfxVolumeIndex
_08042338:
	movs r4, #0
	movs r7, #0
	b _08042374
_0804233E:
	bl SyncVblank
	mov r0, sb
	subs r5, r5, r0
	cmp r5, #0
	bge _0804234C
	movs r5, #0
_0804234C:
	ldr r6, _08042388
	asrs r0, r5, #0x10
	lsls r0, r0, #2
	adds r0, r0, r6
	ldr r0, [r0]
	bl audio_set_tune_vol
	mov r0, r8
	cmp r0, #0
	beq _08042374
	subs r4, r4, r7
	cmp r4, #0
	bge _08042368
	movs r4, #0
_08042368:
	asrs r0, r4, #0x10
	lsls r0, r0, #2
	adds r0, r0, r6
	ldr r0, [r0]
	bl audio_set_fx_vol
_08042374:
	cmp r5, #0
	beq _0804237C
	cmp r4, #0
	bne _0804233E
_0804237C:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08042388: .4byte dVolumes

	.thumb
sub_804238C: @ 0x0804238C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r6, r0, #0
	mov sl, r1
	ldr r0, _080423C8
	ldrb r0, [r0]
	lsls r5, r0, #0x10
	adds r0, r5, #0
	adds r1, r6, #0
	bl CallARM_FX_Mul
	str r0, [sp]
	movs r5, #0
	mov r0, sl
	cmp r0, #0
	beq _080423D0
	ldr r0, _080423CC
	ldrb r0, [r0]
	lsls r4, r0, #0x10
	adds r0, r4, #0
	adds r1, r6, #0
	bl CallARM_FX_Mul
	adds r7, r0, #0
	b _080423D2
	.align 2, 0
_080423C8: .4byte gBgmVolumeIndex
_080423CC: .4byte gSfxVolumeIndex
_080423D0:
	movs r7, #0
_080423D2:
	movs r4, #0
	ldr r2, _08042454
	ldrb r0, [r2]
	lsls r0, r0, #0x10
	cmp r5, r0
	beq _08042442
	ldr r1, _08042458
	ldrb r0, [r1]
	lsls r0, r0, #0x10
	cmp r4, r0
	beq _08042442
	mov sb, r2
	mov r8, r1
_080423EC:
	bl SyncVblank
	ldr r1, [sp]
	adds r5, r5, r1
	mov r1, sb
	ldrb r0, [r1]
	lsls r0, r0, #0x10
	cmp r5, r0
	ble _08042400
	adds r5, r0, #0
_08042400:
	ldr r6, _0804245C
	asrs r0, r5, #0x10
	lsls r0, r0, #2
	adds r0, r0, r6
	ldr r0, [r0]
	bl audio_set_tune_vol
	mov r0, sl
	cmp r0, #0
	beq _0804242E
	adds r4, r4, r7
	mov r1, r8
	ldrb r0, [r1]
	lsls r0, r0, #0x10
	cmp r4, r0
	ble _08042422
	adds r4, r0, #0
_08042422:
	asrs r0, r4, #0x10
	lsls r0, r0, #2
	adds r0, r0, r6
	ldr r0, [r0]
	bl audio_set_fx_vol
_0804242E:
	mov r1, sb
	ldrb r0, [r1]
	lsls r0, r0, #0x10
	cmp r5, r0
	beq _08042442
	mov r1, r8
	ldrb r0, [r1]
	lsls r0, r0, #0x10
	cmp r4, r0
	bne _080423EC
_08042442:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08042454: .4byte gBgmVolumeIndex
_08042458: .4byte gSfxVolumeIndex
_0804245C: .4byte dVolumes
