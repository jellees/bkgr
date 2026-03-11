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
