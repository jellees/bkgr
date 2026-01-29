
    .syntax unified

    .text

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
	bl sprite_set_anim
	b _0803FB54
	.align 2, 0
_0803FB10: .4byte gCanPlaySfx
_0803FB14: .4byte 0x080CE440
_0803FB18: .4byte gSfxVolume
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
	bl sprite_set_anim
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
	bl sprite_set_anim
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
	bl sprite_set_anim
	b _0803FCC8
	.align 2, 0
_0803FC68: .4byte gCanPlaySfx
_0803FC6C: .4byte 0x080CE440
_0803FC70: .4byte gSfxVolume
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
	bl sprite_set_anim
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
	bl sprite_set_anim
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
_0803FD50: .4byte gCanPlaySfx
_0803FD54: .4byte 0x080CE440
_0803FD58: .4byte gSfxVolume
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
	bl sprite_set_anim
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
	bl sprite_set_anim
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
    .global reset_hud_elements
reset_hud_elements: @ 0x0803FE78
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
    .global update_hud_total_notes
update_hud_total_notes: @ 0x08040094
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
    .global init_hud_elements
init_hud_elements: @ 0x080400B4
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
	bl reset_hud_elements
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
	.global update_hud_collectables
update_hud_collectables: @ 0x08040178
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
    .global set_hud_number
set_hud_number: @ 0x08040204
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
	bl set_hud_number
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
	bl set_hud_number
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
	bl set_hud_number
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
	bl set_hud_number
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
	bl set_hud_number
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
	bl set_hud_number
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
	bl set_hud_number
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
	bl set_hud_number
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
	bl set_hud_number
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
    .global sub_80407F8
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
    .global update_hud
update_hud: @ 0x0804087C
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
	bl sprite_render
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
    .global render_hud_elements
render_hud_elements: @ 0x0804095C
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
	bl reset_hud_elements
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
	bl update_hud_collectables
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
    .global sub_80421C4
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
