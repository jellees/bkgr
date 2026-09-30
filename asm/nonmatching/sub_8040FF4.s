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
