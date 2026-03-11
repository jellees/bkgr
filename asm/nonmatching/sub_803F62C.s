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
