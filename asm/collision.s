
	.syntax unified

	.text

    .thumb
initialize_collision: @ 0x0800659C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	ldr r1, [r5, #0x20]
	ldr r0, _08006678
	cmp r1, r0
	bls _080065B0
	.2byte 0xEE00, 0xEE00
_080065B0:
	movs r0, #1
	movs r1, #0x15
	bl FreeById
	ldr r7, _0800667C
	ldr r0, [r5, #0x20]
	movs r1, #0x15
	movs r2, #1
	bl Alloc
	adds r1, r0, #0
	str r1, [r7]
	ldr r2, [r5, #0x20]
	lsrs r2, r2, #2
	adds r0, r5, #0
	bl DmaTransfer32
	ldr r1, _08006680
	ldr r2, [r7]
	ldr r0, [r5, #0x10]
	adds r0, r2, r0
	str r0, [r1]
	ldr r1, _08006684
	ldrh r0, [r5, #6]
	strh r0, [r1]
	ldr r1, _08006688
	ldr r0, [r5, #8]
	adds r0, r2, r0
	str r0, [r1]
	ldr r4, _0800668C
	ldr r0, [r5, #0xc]
	adds r0, r2, r0
	str r0, [r4]
	ldr r1, _08006690
	ldr r0, [r5, #0x14]
	adds r2, r2, r0
	str r2, [r1]
	movs r3, #0
	ldrh r0, [r5, #0x1e]
	cmp r3, r0
	bge _0800661C
	adds r6, r4, #0
	adds r4, r7, #0
_08006606:
	ldr r0, [r6]
	lsls r2, r3, #2
	adds r2, r2, r0
	ldr r0, [r4]
	ldr r1, [r2]
	adds r0, r0, r1
	str r0, [r2]
	adds r3, #1
	ldrh r2, [r5, #0x1e]
	cmp r3, r2
	blt _08006606
_0800661C:
	movs r3, #0
	ldrh r0, [r5, #0x24]
	cmp r3, r0
	bge _0800666C
	ldr r2, _08006690
	mov r8, r2
	ldr r0, _0800667C
	mov ip, r0
_0800662C:
	lsls r0, r3, #3
	subs r0, r0, r3
	lsls r0, r0, #2
	mov r2, r8
	ldr r1, [r2]
	adds r2, r1, r0
	mov r0, ip
	ldr r1, [r0]
	ldr r0, [r2, #4]
	adds r1, r1, r0
	str r1, [r2, #4]
	movs r4, #0
	adds r6, r3, #1
	ldrb r0, [r2]
	cmp r4, r0
	bge _08006664
	mov r7, ip
	adds r3, r1, #0
	adds r3, #0x20
_08006652:
	ldr r0, [r7]
	ldr r1, [r3]
	adds r0, r0, r1
	str r0, [r3]
	adds r3, #0x24
	adds r4, #1
	ldrb r0, [r2]
	cmp r4, r0
	blt _08006652
_08006664:
	adds r3, r6, #0
	ldrh r2, [r5, #0x24]
	cmp r3, r2
	blt _0800662C
_0800666C:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08006678: .4byte 0x00015F90
_0800667C: .4byte 0x030028EC
_08006680: .4byte 0x02000000
_08006684: .4byte 0x02000004
_08006688: .4byte 0x030028F0
_0800668C: .4byte 0x030028F4
_08006690: .4byte 0x030028F8

    .thumb
	.global setup_collision_warp
setup_collision_warp: @ 0x08006694
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	bl initialize_collision
	ldr r1, _08006758
	ldrh r0, [r4]
	strh r0, [r1]
	ldr r2, _0800675C
	ldrh r0, [r4, #2]
	strh r0, [r2]
	ldr r1, _08006760
	ldrh r0, [r4, #4]
	strh r0, [r1]
	ldr r1, _08006764
	ldrh r0, [r4, #0x18]
	lsls r0, r0, #0x10
	str r0, [r1]
	ldr r1, _08006768
	ldrh r0, [r4, #0x1a]
	lsls r0, r0, #0x10
	str r0, [r1]
	ldr r1, _0800676C
	ldrh r0, [r4, #0x1c]
	lsls r0, r0, #0x10
	str r0, [r1]
	ldr r1, _08006770
	ldrh r0, [r2]
	lsls r0, r0, #0x16
	ldr r2, _08006774
	adds r0, r0, r2
	str r0, [r1]
	movs r3, #0
	ldr r0, _08006778
	ldr r1, [r0]
	ldrb r0, [r1]
	cmp r0, r5
	beq _080066F8
	ldr r2, _0800677C
	ldrh r0, [r2]
	cmp r3, r0
	beq _08006700
_080066E8:
	adds r1, #0xc
	adds r3, #1
	ldrb r0, [r1]
	cmp r0, r5
	beq _080066F8
	ldrh r0, [r2]
	cmp r3, r0
	bne _080066E8
_080066F8:
	ldr r0, _0800677C
	ldrh r0, [r0]
	cmp r3, r0
	bne _08006704
_08006700:
	.2byte 0xEE00, 0xEE00
_08006704:
	ldr r1, _08006780
	ldr r0, _08006778
	ldr r0, [r0]
	lsls r2, r3, #1
	adds r2, r2, r3
	lsls r2, r2, #2
	adds r2, r2, r0
	ldrb r0, [r2, #1]
	strb r0, [r1]
	ldr r1, _08006784
	ldrb r0, [r2, #2]
	strb r0, [r1]
	ldr r1, _08006788
	ldrb r0, [r2, #3]
	strb r0, [r1]
	ldr r3, _0800678C
	ldrb r1, [r2, #0xa]
	movs r0, #3
	subs r0, r0, r1
	strb r0, [r3]
	ldr r0, _08006790
	ldrh r4, [r2, #4]
	lsls r4, r4, #0x10
	str r4, [r0]
	ldrh r3, [r2, #6]
	lsls r3, r3, #0x10
	str r3, [r0, #4]
	ldrh r1, [r2, #8]
	lsls r1, r1, #0x10
	str r1, [r0, #8]
	ldr r0, _08006794
	str r4, [r0]
	str r3, [r0, #4]
	str r1, [r0, #8]
	ldrh r0, [r2, #4]
	ldrh r1, [r2, #6]
	ldrh r2, [r2, #8]
	bl set_camera_position
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08006758: .4byte 0x030028D8
_0800675C: .4byte 0x030028DA
_08006760: .4byte 0x030028DC
_08006764: .4byte 0x030028E0
_08006768: .4byte 0x030028E4
_0800676C: .4byte 0x030028E8
_08006770: .4byte 0x02001088
_08006774: .4byte 0xFFA00000
_08006778: .4byte 0x02000000
_0800677C: .4byte 0x02000004
_08006780: .4byte 0x020010A4
_08006784: .4byte 0x020010A5
_08006788: .4byte 0x020010A6
_0800678C: .4byte 0x020010A7
_08006790: .4byte gPlayerPos
_08006794: .4byte stru_30032DC

    .thumb
	.global setup_collision_xyz
setup_collision_xyz: @ 0x08006798
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r4, r0, #0
	adds r5, r1, #0
	adds r6, r2, #0
	adds r2, r3, #0
	str r2, [sp]
	bl initialize_collision
	ldr r1, _08006808
	ldrh r0, [r4]
	strh r0, [r1]
	ldr r3, _0800680C
	ldrh r0, [r4, #2]
	strh r0, [r3]
	ldr r1, _08006810
	ldrh r0, [r4, #4]
	strh r0, [r1]
	ldr r1, _08006814
	ldrh r0, [r4, #0x18]
	lsls r0, r0, #0x10
	str r0, [r1]
	ldr r1, _08006818
	ldrh r0, [r4, #0x1a]
	lsls r0, r0, #0x10
	str r0, [r1]
	ldr r1, _0800681C
	ldrh r0, [r4, #0x1c]
	lsls r0, r0, #0x10
	str r0, [r1]
	ldr r1, _08006820
	ldrh r0, [r3]
	lsls r0, r0, #0x16
	ldr r3, _08006824
	adds r0, r0, r3
	str r0, [r1]
	ldr r0, _08006828
	str r5, [r0]
	str r6, [r0, #4]
	ldr r2, [sp]
	str r2, [r0, #8]
	ldr r0, _0800682C
	str r5, [r0]
	str r6, [r0, #4]
	str r2, [r0, #8]
	asrs r5, r5, #0x10
	asrs r6, r6, #0x10
	asrs r2, r2, #0x10
	adds r0, r5, #0
	adds r1, r6, #0
	bl set_camera_position
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08006808: .4byte 0x030028D8
_0800680C: .4byte 0x030028DA
_08006810: .4byte 0x030028DC
_08006814: .4byte 0x030028E0
_08006818: .4byte 0x030028E4
_0800681C: .4byte 0x030028E8
_08006820: .4byte 0x02001088
_08006824: .4byte 0xFFA00000
_08006828: .4byte gPlayerPos
_0800682C: .4byte stru_30032DC

    .thumb
set_camera_position: @ 0x08006830
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r7, r0, #0
	ldr r0, _0800687C
	mov ip, r0
	movs r0, #0x78
	mov r3, ip
	strh r0, [r3]
	ldr r0, _08006880
	mov r8, r0
	movs r0, #0x50
	mov r3, r8
	strh r0, [r3]
	ldr r6, _08006884
	adds r3, r7, #0
	subs r3, #0x78
	strh r3, [r6]
	ldr r4, _08006888
	ldr r5, _0800688C
	adds r1, r1, r2
	ldrh r0, [r5]
	subs r0, r0, r1
	subs r0, #0x50
	strh r0, [r4]
	lsls r3, r3, #0x10
	mov sb, r6
	adds r6, r4, #0
	cmp r3, #0
	bge _08006890
	mov r0, ip
	strh r7, [r0]
	movs r0, #0
	mov r1, sb
	strh r0, [r1]
	b _080068B0
	.align 2, 0
_0800687C: .4byte 0x02001464
_08006880: .4byte 0x02001466
_08006884: .4byte gCameraPixelX
_08006888: .4byte gCameraPixelY
_0800688C: .4byte gMapPixelSizeY
_08006890:
	mov r2, sb
	movs r3, #0
	ldrsh r0, [r2, r3]
	adds r0, #0xf0
	ldr r1, _080068C8
	ldrh r3, [r1]
	cmp r0, r3
	blt _080068B0
	subs r0, r7, r3
	adds r0, #0xf0
	mov r2, ip
	strh r0, [r2]
	ldrh r0, [r1]
	subs r0, #0xf0
	mov r3, sb
	strh r0, [r3]
_080068B0:
	ldrh r2, [r6]
	movs r1, #0
	ldrsh r0, [r6, r1]
	cmp r0, #0
	bge _080068CC
	mov r3, r8
	ldrh r3, [r3]
	adds r0, r2, r3
	mov r1, r8
	strh r0, [r1]
	movs r0, #0
	b _080068EC
	.align 2, 0
_080068C8: .4byte gMapPixelSizeX
_080068CC:
	movs r3, #0
	ldrsh r0, [r6, r3]
	adds r0, #0xa0
	ldrh r1, [r5]
	cmp r0, r1
	blt _080068EE
	adds r0, r2, #0
	adds r0, #0xa0
	subs r0, r0, r1
	mov r1, r8
	ldrh r1, [r1]
	adds r0, r0, r1
	mov r2, r8
	strh r0, [r2]
	ldrh r0, [r5]
	subs r0, #0xa0
_080068EC:
	strh r0, [r6]
_080068EE:
	ldr r1, _0800694C
	mov r3, sb
	movs r2, #0
	ldrsh r0, [r3, r2]
	adds r0, #0x78
	lsls r0, r0, #0x10
	str r0, [r1]
	ldr r1, _08006950
	str r0, [r1]
	ldr r1, _08006954
	movs r3, #0
	ldrsh r0, [r6, r3]
	adds r0, #0x50
	lsls r0, r0, #0x10
	str r0, [r1]
	ldr r1, _08006958
	str r0, [r1]
	ldr r0, _0800695C
	movs r1, #0
	strb r1, [r0]
	ldr r0, _08006960
	strb r1, [r0]
	ldr r1, _08006964
	mov r0, sb
	ldrh r4, [r0]
	lsls r0, r4, #0x10
	asrs r0, r0, #0x13
	strh r0, [r1]
	ldr r1, _08006968
	ldrh r3, [r6]
	lsls r0, r3, #0x10
	asrs r0, r0, #0x13
	strh r0, [r1]
	ldr r2, _0800696C
	movs r1, #0xff
	adds r0, r1, #0
	ands r0, r4
	strh r0, [r2]
	ldr r0, _08006970
	ands r1, r3
	strh r1, [r0]
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800694C: .4byte 0x0300330C
_08006950: .4byte 0x03003314
_08006954: .4byte 0x03003310
_08006958: .4byte 0x03003318
_0800695C: .4byte 0x02001118
_08006960: .4byte 0x02001119
_08006964: .4byte 0x0200145C
_08006968: .4byte 0x0200145E
_0800696C: .4byte 0x02001460
_08006970: .4byte 0x02001462

    .thumb
	.global sub_8006974
sub_8006974: @ 0x08006974
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x168
	str r0, [sp, #0x158]
	str r1, [sp, #0x15c]
	movs r0, #0x80
	lsls r0, r0, #1
	add r0, sp
	mov sl, r0
	movs r0, #0
	mov r1, sl
	movs r2, #0x10
	bl DmaFill32
	ldr r0, _08006CE4
	ldrh r0, [r0]
	mov r8, r0
	ldr r0, _08006CE8
	ldrh r0, [r0]
	mov r6, r8
	muls r6, r0, r6
	ldr r0, _08006CEC
	ldr r1, [sp, #0x158]
	ldr r5, [r1]
	ldr r0, [r0]
	adds r5, r5, r0
	asrs r5, r5, #0x16
	ldr r3, [r1, #0x48]
	adds r3, r3, r0
	asrs r3, r3, #0x16
	ldr r1, _08006CF0
	ldr r2, [sp, #0x158]
	ldr r0, [r2, #4]
	ldr r1, [r1]
	adds r0, r0, r1
	asrs r0, r0, #0x16
	adds r2, r0, #0
	muls r2, r6, r2
	ldr r4, [sp, #0x158]
	ldr r0, [r4, #0x4c]
	adds r0, r0, r1
	asrs r0, r0, #0x16
	adds r4, r0, #0
	muls r4, r6, r4
	ldr r1, _08006CF4
	ldr r6, [sp, #0x158]
	ldr r0, [r6, #8]
	ldr r6, [r1]
	adds r0, r0, r6
	asrs r0, r0, #0x16
	mov r1, r8
	muls r1, r0, r1
	ldr r7, [sp, #0x158]
	ldr r0, [r7, #0x50]
	adds r0, r0, r6
	asrs r0, r0, #0x16
	mov r6, r8
	muls r6, r0, r6
	mov r8, r6
	adds r0, r2, r1
	adds r6, r0, r5
	str r6, [sp]
	adds r0, r0, r3
	str r0, [sp, #4]
	add r2, r8
	adds r0, r2, r3
	str r0, [sp, #8]
	adds r2, r2, r5
	str r2, [sp, #0xc]
	adds r1, r4, r1
	adds r0, r1, r5
	str r0, [sp, #0x10]
	adds r1, r1, r3
	str r1, [sp, #0x14]
	add r4, r8
	adds r3, r4, r3
	str r3, [sp, #0x18]
	adds r4, r4, r5
	str r4, [sp, #0x1c]
	movs r7, #0
	mov sb, r7
	ldr r0, _08006CF8
	ldr r0, [r0]
	lsls r6, r6, #1
	adds r6, r6, r0
	ldrh r2, [r6]
	str r2, [sp, #0x20]
	add r0, sp, #0x20
	mov r8, r0
	ldr r1, _08006CFC
	cmp r2, r1
	beq _08006A7A
	ldr r0, _08006D00
	ldr r1, [r0]
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldrh r3, [r0]
	cmp sb, r3
	bge _08006A7A
	adds r7, r0, #0
	add r1, sp, #0x40
	movs r2, #1
	mov ip, r2
	adds r6, r3, #0
_08006A4C:
	ldrh r5, [r7, #2]
	asrs r0, r5, #3
	movs r3, #7
	bics r3, r5
	mov r4, ip
	lsls r4, r3
	mov r3, sl
	adds r2, r3, r0
	ldrb r0, [r2]
	ands r0, r4
	cmp r0, #0
	bne _08006A72
	strh r5, [r1]
	adds r1, #2
	movs r0, #1
	add sb, r0
	ldrb r0, [r2]
	orrs r4, r0
	strb r4, [r2]
_08006A72:
	adds r7, #2
	subs r6, #1
	cmp r6, #0
	bne _08006A4C
_08006A7A:
	ldr r0, [sp, #4]
	ldr r2, _08006CF8
	ldr r1, [r2]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r3, [r0]
	mov r1, r8
	str r3, [r1, #4]
	ldr r2, _08006CFC
	cmp r3, r2
	beq _08006AE8
	ldr r0, [sp, #0x20]
	cmp r3, r0
	beq _08006AE8
	ldr r0, _08006D00
	ldr r1, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldrh r3, [r0]
	cmp r3, #0
	beq _08006AE8
	movs r4, #7
	mov ip, r4
	add r7, sp, #0x100
	adds r2, r0, #0
	add r1, sp, #0x40
	mov r6, sb
	lsls r0, r6, #1
	adds r1, r1, r0
	movs r0, #1
	mov sl, r0
	adds r6, r3, #0
_08006ABC:
	ldrh r5, [r2, #2]
	asrs r0, r5, #3
	mov r3, ip
	bics r3, r5
	mov r4, sl
	lsls r4, r3
	adds r3, r7, r0
	ldrb r0, [r3]
	ands r0, r4
	cmp r0, #0
	bne _08006AE0
	strh r5, [r1]
	adds r1, #2
	movs r0, #1
	add sb, r0
	ldrb r0, [r3]
	orrs r4, r0
	strb r4, [r3]
_08006AE0:
	adds r2, #2
	subs r6, #1
	cmp r6, #0
	bne _08006ABC
_08006AE8:
	ldr r0, [sp, #8]
	ldr r2, _08006CF8
	ldr r1, [r2]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r3, [r0]
	mov r4, r8
	str r3, [r4, #8]
	ldr r6, _08006CFC
	cmp r3, r6
	beq _08006B5C
	ldr r0, [r4, #4]
	cmp r3, r0
	beq _08006B5C
	ldr r0, [sp, #0x20]
	cmp r3, r0
	beq _08006B5C
	ldr r0, _08006D00
	ldr r1, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldrh r3, [r0]
	cmp r3, #0
	beq _08006B5C
	movs r7, #7
	mov ip, r7
	add r7, sp, #0x100
	adds r2, r0, #0
	add r1, sp, #0x40
	mov r4, sb
	lsls r0, r4, #1
	adds r1, r1, r0
	movs r6, #1
	mov sl, r6
	adds r6, r3, #0
_08006B30:
	ldrh r5, [r2, #2]
	asrs r0, r5, #3
	mov r3, ip
	bics r3, r5
	mov r4, sl
	lsls r4, r3
	adds r3, r7, r0
	ldrb r0, [r3]
	ands r0, r4
	cmp r0, #0
	bne _08006B54
	strh r5, [r1]
	adds r1, #2
	movs r0, #1
	add sb, r0
	ldrb r0, [r3]
	orrs r4, r0
	strb r4, [r3]
_08006B54:
	adds r2, #2
	subs r6, #1
	cmp r6, #0
	bne _08006B30
_08006B5C:
	ldr r0, [sp, #0xc]
	ldr r2, _08006CF8
	ldr r1, [r2]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r3, [r0]
	mov r4, r8
	str r3, [r4, #0xc]
	ldr r6, _08006CFC
	cmp r3, r6
	beq _08006BD6
	ldr r0, [r4, #8]
	cmp r3, r0
	beq _08006BD6
	ldr r0, [r4, #4]
	cmp r3, r0
	beq _08006BD6
	ldr r0, [sp, #0x20]
	cmp r3, r0
	beq _08006BD6
	ldr r0, _08006D00
	ldr r1, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldrh r3, [r0]
	cmp r3, #0
	beq _08006BD6
	movs r7, #7
	mov ip, r7
	add r7, sp, #0x100
	adds r2, r0, #0
	add r1, sp, #0x40
	mov r4, sb
	lsls r0, r4, #1
	adds r1, r1, r0
	movs r6, #1
	mov sl, r6
	adds r6, r3, #0
_08006BAA:
	ldrh r5, [r2, #2]
	asrs r0, r5, #3
	mov r3, ip
	bics r3, r5
	mov r4, sl
	lsls r4, r3
	adds r3, r7, r0
	ldrb r0, [r3]
	ands r0, r4
	cmp r0, #0
	bne _08006BCE
	strh r5, [r1]
	adds r1, #2
	movs r0, #1
	add sb, r0
	ldrb r0, [r3]
	orrs r4, r0
	strb r4, [r3]
_08006BCE:
	adds r2, #2
	subs r6, #1
	cmp r6, #0
	bne _08006BAA
_08006BD6:
	ldr r0, [sp, #0x10]
	ldr r2, _08006CF8
	ldr r1, [r2]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r3, [r0]
	mov r4, r8
	str r3, [r4, #0x10]
	ldr r6, _08006CFC
	cmp r3, r6
	beq _08006C56
	ldr r0, [r4, #0xc]
	cmp r3, r0
	beq _08006C56
	ldr r0, [r4, #8]
	cmp r3, r0
	beq _08006C56
	ldr r0, [r4, #4]
	cmp r3, r0
	beq _08006C56
	ldr r0, [sp, #0x20]
	cmp r3, r0
	beq _08006C56
	ldr r0, _08006D00
	ldr r1, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldrh r3, [r0]
	cmp r3, #0
	beq _08006C56
	movs r7, #7
	mov ip, r7
	add r7, sp, #0x100
	adds r2, r0, #0
	add r1, sp, #0x40
	mov r4, sb
	lsls r0, r4, #1
	adds r1, r1, r0
	movs r6, #1
	mov sl, r6
	adds r6, r3, #0
_08006C2A:
	ldrh r5, [r2, #2]
	asrs r0, r5, #3
	mov r3, ip
	bics r3, r5
	mov r4, sl
	lsls r4, r3
	adds r3, r7, r0
	ldrb r0, [r3]
	ands r0, r4
	cmp r0, #0
	bne _08006C4E
	strh r5, [r1]
	adds r1, #2
	movs r0, #1
	add sb, r0
	ldrb r0, [r3]
	orrs r4, r0
	strb r4, [r3]
_08006C4E:
	adds r2, #2
	subs r6, #1
	cmp r6, #0
	bne _08006C2A
_08006C56:
	ldr r0, [sp, #0x14]
	ldr r2, _08006CF8
	ldr r1, [r2]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r3, [r0]
	mov r4, r8
	str r3, [r4, #0x14]
	ldr r6, _08006CFC
	cmp r3, r6
	beq _08006CDC
	ldr r0, [r4, #0x10]
	cmp r3, r0
	beq _08006CDC
	ldr r0, [r4, #0xc]
	cmp r3, r0
	beq _08006CDC
	ldr r0, [r4, #8]
	cmp r3, r0
	beq _08006CDC
	ldr r0, [r4, #4]
	cmp r3, r0
	beq _08006CDC
	ldr r0, [sp, #0x20]
	cmp r3, r0
	beq _08006CDC
	ldr r0, _08006D00
	ldr r1, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldrh r3, [r0]
	cmp r3, #0
	beq _08006CDC
	movs r7, #7
	mov ip, r7
	add r7, sp, #0x100
	adds r2, r0, #0
	add r1, sp, #0x40
	mov r4, sb
	lsls r0, r4, #1
	adds r1, r1, r0
	movs r6, #1
	mov sl, r6
	adds r6, r3, #0
_08006CB0:
	ldrh r5, [r2, #2]
	asrs r0, r5, #3
	mov r3, ip
	bics r3, r5
	mov r4, sl
	lsls r4, r3
	adds r3, r7, r0
	ldrb r0, [r3]
	ands r0, r4
	cmp r0, #0
	bne _08006CD4
	strh r5, [r1]
	adds r1, #2
	movs r0, #1
	add sb, r0
	ldrb r0, [r3]
	orrs r4, r0
	strb r4, [r3]
_08006CD4:
	adds r2, #2
	subs r6, #1
	cmp r6, #0
	bne _08006CB0
_08006CDC:
	ldr r0, [sp, #0x18]
	ldr r2, _08006CF8
	b _08006D04
	.align 2, 0
_08006CE4: .4byte 0x030028D8
_08006CE8: .4byte 0x030028DC
_08006CEC: .4byte 0x030028E0
_08006CF0: .4byte 0x030028E4
_08006CF4: .4byte 0x030028E8
_08006CF8: .4byte 0x030028F0
_08006CFC: .4byte 0x0000FFFF
_08006D00: .4byte 0x030028F4
_08006D04:
	ldr r1, [r2]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r3, [r0]
	mov r4, r8
	str r3, [r4, #0x18]
	ldr r6, _08006F2C
	cmp r3, r6
	beq _08006D8C
	ldr r0, [r4, #0x14]
	cmp r3, r0
	beq _08006D8C
	ldr r0, [r4, #0x10]
	cmp r3, r0
	beq _08006D8C
	ldr r0, [r4, #0xc]
	cmp r3, r0
	beq _08006D8C
	ldr r0, [r4, #8]
	cmp r3, r0
	beq _08006D8C
	ldr r0, [r4, #4]
	cmp r3, r0
	beq _08006D8C
	ldr r0, [sp, #0x20]
	cmp r3, r0
	beq _08006D8C
	ldr r0, _08006F30
	ldr r1, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldrh r3, [r0]
	cmp r3, #0
	beq _08006D8C
	movs r7, #7
	mov ip, r7
	add r7, sp, #0x100
	adds r2, r0, #0
	add r1, sp, #0x40
	mov r4, sb
	lsls r0, r4, #1
	adds r1, r1, r0
	movs r6, #1
	mov sl, r6
	adds r6, r3, #0
_08006D60:
	ldrh r5, [r2, #2]
	asrs r0, r5, #3
	mov r3, ip
	bics r3, r5
	mov r4, sl
	lsls r4, r3
	adds r3, r7, r0
	ldrb r0, [r3]
	ands r0, r4
	cmp r0, #0
	bne _08006D84
	strh r5, [r1]
	adds r1, #2
	movs r0, #1
	add sb, r0
	ldrb r0, [r3]
	orrs r4, r0
	strb r4, [r3]
_08006D84:
	adds r2, #2
	subs r6, #1
	cmp r6, #0
	bne _08006D60
_08006D8C:
	ldr r0, [sp, #0x1c]
	ldr r2, _08006F34
	ldr r1, [r2]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r2, [r0]
	mov r3, r8
	str r2, [r3, #0x1c]
	ldr r4, _08006F2C
	cmp r2, r4
	beq _08006E1E
	ldr r0, [r3, #0x18]
	cmp r2, r0
	beq _08006E1E
	ldr r0, [r3, #0x14]
	cmp r2, r0
	beq _08006E1E
	ldr r0, [r3, #0x10]
	cmp r2, r0
	beq _08006E1E
	ldr r0, [r3, #0xc]
	cmp r2, r0
	beq _08006E1E
	ldr r0, [r3, #8]
	cmp r2, r0
	beq _08006E1E
	ldr r0, [r3, #4]
	cmp r2, r0
	beq _08006E1E
	ldr r0, [sp, #0x20]
	cmp r2, r0
	beq _08006E1E
	ldr r0, _08006F30
	ldr r1, [r0]
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldrh r3, [r0]
	cmp r3, #0
	beq _08006E1E
	movs r6, #7
	mov sl, r6
	add r7, sp, #0x100
	adds r2, r0, #0
	add r1, sp, #0x40
	mov r4, sb
	lsls r0, r4, #1
	adds r1, r1, r0
	movs r6, #1
	mov r8, r6
	adds r6, r3, #0
_08006DF2:
	ldrh r5, [r2, #2]
	asrs r0, r5, #3
	mov r3, sl
	bics r3, r5
	mov r4, r8
	lsls r4, r3
	adds r3, r7, r0
	ldrb r0, [r3]
	ands r0, r4
	cmp r0, #0
	bne _08006E16
	strh r5, [r1]
	adds r1, #2
	movs r0, #1
	add sb, r0
	ldrb r0, [r3]
	orrs r4, r0
	strb r4, [r3]
_08006E16:
	adds r2, #2
	subs r6, #1
	cmp r6, #0
	bne _08006DF2
_08006E1E:
	mov r1, sb
	cmp r1, #0x5f
	ble _08006E28
	.2byte 0xEE00, 0xEE00
_08006E28:
	movs r0, #0
	ldr r2, _08006F38
	str r0, [r2]
	ldr r3, _08006F3C
	str r0, [r3]
	ldr r4, _08006F40
	str r0, [r4]
	movs r6, #0
	mov r7, sb
	cmp r7, #0
	bne _08006E40
	b _08006FB4
_08006E40:
	movs r0, #0xa0
	lsls r0, r0, #1
	add r0, sp
	mov sl, r0
	movs r1, #0xa6
	lsls r1, r1, #1
	add r1, sp
	mov r8, r1
_08006E50:
	ldr r2, _08006F44
	add r0, sp, #0x40
	lsls r1, r6, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, [r2]
	adds r5, r1, r0
	adds r6, #1
	movs r4, #1
	ldrb r1, [r5, #1]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08006E90
	ldrb r0, [r5, #0x18]
	movs r2, #0x16
	ldrsh r1, [r5, r2]
	bl sub_80342CC
	cmp r0, #0
	bne _08006E8E
	ldrb r0, [r5, #0x19]
	ldrb r1, [r5, #0x1a]
	ldrb r2, [r5, #0x1b]
	bl sub_8034388
	cmp r0, #0
	bne _08006E90
_08006E8E:
	movs r4, #0
_08006E90:
	mov r3, sb
	subs r3, #1
	str r3, [sp, #0x160]
	cmp r4, #0
	bne _08006E9C
	b _08006FA8
_08006E9C:
	movs r4, #8
	ldrsh r0, [r5, r4]
	lsls r0, r0, #0x10
	mov r7, sl
	str r0, [r7]
	movs r1, #0xa
	ldrsh r0, [r5, r1]
	lsls r0, r0, #0x10
	str r0, [r7, #4]
	movs r2, #0xc
	ldrsh r0, [r5, r2]
	lsls r0, r0, #0x10
	str r0, [r7, #8]
	movs r3, #0xe
	ldrsh r0, [r5, r3]
	lsls r0, r0, #0x10
	mov r4, r8
	str r0, [r4]
	movs r7, #0x10
	ldrsh r0, [r5, r7]
	lsls r0, r0, #0x10
	str r0, [r4, #4]
	movs r1, #0x12
	ldrsh r0, [r5, r1]
	lsls r0, r0, #0x10
	str r0, [r4, #8]
	mov r0, sl
	mov r1, r8
	ldr r2, [sp, #0x158]
	adds r3, r2, #0
	adds r3, #0x48
	bl sub_8003964
	cmp r0, #0
	beq _08006FA8
	ldrb r0, [r5]
	cmp r0, #0
	beq _08006FA8
	movs r3, #0
	ldr r2, _08006F40
	mov sb, r2
	adds r7, r0, #0
_08006EF0:
	ldr r0, [r5, #4]
	adds r4, r0, r3
	ldrb r0, [r4, #1]
	cmp r0, #1
	beq _08006F02
	cmp r0, #6
	beq _08006F02
	cmp r0, #8
	bne _08006F50
_08006F02:
	adds r0, r4, #4
	ldr r1, [sp, #0x15c]
	str r3, [sp, #0x164]
	bl sub_8003954
	ldr r3, [sp, #0x164]
	cmp r0, #0
	bgt _08006FA0
	ldr r0, _08006F48
	ldr r1, _08006F38
	ldr r2, [r1]
	lsls r1, r2, #2
	adds r0, r1, r0
	str r4, [r0]
	ldr r0, _08006F4C
	adds r1, r1, r0
	str r5, [r1]
	adds r2, #1
	ldr r4, _08006F38
	b _08006F9E
	.align 2, 0
_08006F2C: .4byte 0x0000FFFF
_08006F30: .4byte 0x030028F4
_08006F34: .4byte 0x030028F0
_08006F38: .4byte 0x02000308
_08006F3C: .4byte 0x0200030C
_08006F40: .4byte 0x02000310
_08006F44: .4byte 0x030028F8
_08006F48: .4byte 0x02000008
_08006F4C: .4byte 0x02000088
_08006F50:
	cmp r0, #0
	beq _08006F60
	cmp r0, #2
	beq _08006F60
	cmp r0, #4
	beq _08006F60
	cmp r0, #0xa
	bne _08006F84
_08006F60:
	ldr r0, _08006F78
	ldr r1, _08006F7C
	ldr r2, [r1]
	lsls r1, r2, #2
	adds r0, r1, r0
	str r4, [r0]
	ldr r0, _08006F80
	adds r1, r1, r0
	str r5, [r1]
	adds r2, #1
	ldr r4, _08006F7C
	b _08006F9E
	.align 2, 0
_08006F78: .4byte 0x02000108
_08006F7C: .4byte 0x0200030C
_08006F80: .4byte 0x02000188
_08006F84:
	cmp r0, #9
	bne _08006FA0
	ldr r0, _08006FE8
	mov r1, sb
	ldr r2, [r1]
	lsls r1, r2, #2
	adds r0, r1, r0
	str r4, [r0]
	ldr r0, _08006FEC
	adds r1, r1, r0
	str r5, [r1]
	adds r2, #1
	mov r4, sb
_08006F9E:
	str r2, [r4]
_08006FA0:
	adds r3, #0x24
	subs r7, #1
	cmp r7, #0
	bne _08006EF0
_08006FA8:
	ldr r7, [sp, #0x160]
	mov sb, r7
	mov r0, sb
	cmp r0, #0
	beq _08006FB4
	b _08006E50
_08006FB4:
	ldr r0, _08006FF0
	ldr r0, [r0]
	cmp r0, #0x1f
	ble _08006FC0
	.2byte 0xEE00, 0xEE00
_08006FC0:
	ldr r0, _08006FF4
	ldr r0, [r0]
	cmp r0, #0x1f
	ble _08006FCC
	.2byte 0xEE00, 0xEE00
_08006FCC:
	ldr r0, _08006FF8
	ldr r0, [r0]
	cmp r0, #0x1f
	ble _08006FD8
	.2byte 0xEE00, 0xEE00
_08006FD8:
	add sp, #0x168
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08006FE8: .4byte 0x02000208
_08006FEC: .4byte 0x02000288
_08006FF0: .4byte 0x02000308
_08006FF4: .4byte 0x0200030C
_08006FF8: .4byte 0x02000310

    .thumb
	.global sub_8006FFC
sub_8006FFC: @ 0x08006FFC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xa8
	mov sl, r1
	str r2, [sp, #0x90]
	add r7, sp, #0x18
	ldr r3, _08007160
	ldr r1, [r0]
	mov sb, r1
	ldr r4, [r3]
	add sb, r4
	mov r2, sb
	str r2, [sp, #0x18]
	ldr r5, [r0, #4]
	str r5, [sp, #0x9c]
	ldr r2, _08007164
	adds r1, r5, r2
	str r1, [r7, #4]
	ldr r6, [r0, #8]
	str r6, [r7, #0x38]
	str r6, [r7, #8]
	ldr r1, [r0, #0xc]
	str r1, [r7, #0x3c]
	str r1, [r7, #0xc]
	ldr r5, [r0, #0x10]
	mov r8, r5
	adds r1, r5, r2
	str r1, [r7, #0x10]
	ldr r6, [r0, #0x14]
	ldr r3, [r3, #8]
	mov ip, r3
	add r6, ip
	str r6, [r7, #0x44]
	str r6, [r7, #0x14]
	ldr r5, [r0, #0x18]
	subs r5, r5, r4
	str r5, [r7, #0x18]
	ldr r4, [r0, #0x1c]
	adds r1, r4, r2
	str r1, [r7, #0x1c]
	ldr r6, [r0, #0x20]
	str r6, [r7, #0x50]
	str r6, [r7, #0x20]
	ldr r1, [r0, #0x24]
	str r1, [r7, #0x54]
	str r1, [r7, #0x24]
	ldr r3, [r0, #0x28]
	adds r2, r3, r2
	str r2, [r7, #0x28]
	ldr r1, [r0, #0x2c]
	mov r2, ip
	subs r1, r1, r2
	str r1, [r7, #0x2c]
	mov r6, sb
	str r6, [r7, #0x30]
	ldr r0, _08007168
	ldr r0, [r0]
	ldr r6, [sp, #0x9c]
	adds r2, r6, r0
	str r2, [r7, #0x34]
	add r8, r0
	mov r2, r8
	str r2, [r7, #0x40]
	str r5, [r7, #0x48]
	adds r4, r4, r0
	str r4, [r7, #0x4c]
	adds r3, r3, r0
	str r3, [r7, #0x58]
	str r1, [r7, #0x5c]
	movs r0, #0
	mov r3, sl
	strb r0, [r3]
	movs r5, #0
	str r5, [sp, #0x94]
	ldr r0, _0800716C
	ldr r0, [r0]
	cmp r5, r0
	blt _080070A0
	b _08007420
_080070A0:
	add r6, sp, #0x78
	adds r5, r7, #0
	mov r0, sp
	adds r0, #0x30
	str r0, [sp, #0xa0]
	mov r1, sp
	adds r1, #0xc
	str r1, [sp, #0xa4]
_080070B0:
	ldr r0, _08007170
	ldr r2, [sp, #0x94]
	lsls r1, r2, #2
	adds r0, r1, r0
	ldr r0, [r0]
	str r0, [sp, #0x98]
	ldr r0, _08007174
	adds r1, r1, r0
	ldr r1, [r1]
	mov sb, r1
	ldr r1, _08007178
	mov r3, sb
	ldr r0, [r3, #4]
	str r0, [r1]
	ldr r0, [r3, #8]
	str r0, [r1, #4]
	ldr r0, [r3, #0xc]
	str r0, [r1, #8]
	ldr r1, _0800717C
	ldr r0, [r3, #0x10]
	str r0, [r1]
	ldr r1, _08007180
	ldrb r0, [r3]
	str r0, [r1]
	ldr r0, [r3, #0x20]
	adds r1, r6, #0
	bl sub_8003A5C
	bl sub_0800910C
	adds r4, r0, #0
	adds r0, r6, #0
	adds r1, r5, #0
	ldr r2, [sp, #0xa0]
	adds r3, r4, #0
	bl sub_800905C
	adds r1, r0, #0
	cmp r1, #0
	bne _080071C0
	add r7, sp, #0x24
	add r0, sp, #0x3c
	mov r8, r0
	adds r0, r6, #0
	adds r1, r7, #0
	mov r2, r8
	adds r3, r4, #0
	bl sub_800905C
	adds r1, r0, #0
	cmp r1, #0
	bne _08007184
	adds r0, r6, #0
	adds r1, r5, #0
	add r2, sp, #0x60
	adds r3, r4, #0
	bl sub_800905C
	adds r1, r0, #0
	cmp r1, #0
	bne _080071FA
	adds r0, r6, #0
	add r1, sp, #0x48
	ldr r2, [sp, #0xa0]
	adds r3, r4, #0
	bl sub_800905C
	adds r1, r0, #0
	cmp r1, #0
	bne _080071FA
	adds r0, r6, #0
	adds r1, r7, #0
	add r2, sp, #0x6c
	adds r3, r4, #0
	bl sub_800905C
	adds r1, r0, #0
	cmp r1, #0
	bne _080071FA
	adds r0, r6, #0
	add r1, sp, #0x54
	mov r2, r8
	adds r3, r4, #0
	bl sub_800905C
	adds r1, r0, #0
	b _080071F4
	.align 2, 0
_08007160: .4byte 0x0300331C
_08007164: .4byte 0xFFFF0000
_08007168: .4byte 0x03003308
_0800716C: .4byte 0x02000308
_08007170: .4byte 0x02000088
_08007174: .4byte 0x02000008
_08007178: .4byte 0x03002A58
_0800717C: .4byte 0x03002A64
_08007180: .4byte 0x03002A68
_08007184:
	ldr r2, [sp, #0x90]
	ldrb r0, [r2]
	cmp r0, #0
	beq _080071F4
	ldr r0, [r5, #0x10]
	movs r1, #0xa0
	lsls r1, r1, #0xb
	adds r0, r0, r1
	str r0, [r5, #0x10]
	ldr r0, [r5, #0x28]
	adds r0, r0, r1
	str r0, [r5, #0x28]
	adds r0, r6, #0
	adds r1, r7, #0
	mov r2, r8
	adds r3, r4, #0
	bl sub_800905C
	adds r1, r0, #0
	ldr r0, [r5, #0x10]
	ldr r3, _080071BC
	adds r0, r0, r3
	str r0, [r5, #0x10]
	ldr r0, [r5, #0x28]
	adds r0, r0, r3
	str r0, [r5, #0x28]
	b _080071F4
	.align 2, 0
_080071BC: .4byte 0xFFFB0000
_080071C0:
	ldr r2, [sp, #0x90]
	ldrb r0, [r2]
	cmp r0, #0
	beq _080071F4
	ldr r0, [r5, #4]
	movs r1, #0xa0
	lsls r1, r1, #0xb
	adds r0, r0, r1
	str r0, [r5, #4]
	ldr r0, [r5, #0x1c]
	adds r0, r0, r1
	str r0, [r5, #0x1c]
	adds r0, r6, #0
	adds r1, r5, #0
	ldr r2, [sp, #0xa0]
	adds r3, r4, #0
	bl sub_800905C
	adds r1, r0, #0
	ldr r0, [r5, #4]
	ldr r3, _08007274
	adds r0, r0, r3
	str r0, [r5, #4]
	ldr r0, [r5, #0x1c]
	adds r0, r0, r3
	str r0, [r5, #0x1c]
_080071F4:
	cmp r1, #0
	bne _080071FA
	b _08007410
_080071FA:
	movs r0, #1
	mov r5, sl
	strb r0, [r5]
	ldr r0, _08007278
	ldr r2, [r5, #0x18]
	ldr r1, [r0]
	ldr r3, _0800727C
	adds r4, r0, #0
	cmp r2, r1
	bne _0800723C
	ldr r1, [r5, #0xc]
	ldr r0, [r3]
	cmp r1, r0
	bne _0800723C
	ldr r1, [r5, #0x10]
	ldr r0, [r3, #4]
	cmp r1, r0
	bne _0800723C
	ldr r1, [r5, #0x14]
	ldr r0, [r3, #8]
	cmp r1, r0
	bne _0800723C
	ldrb r0, [r5, #1]
	ldr r1, [sp, #0x98]
	ldrb r1, [r1, #1]
	cmp r0, r1
	bne _0800723C
	ldrb r0, [r5, #2]
	mov r2, sb
	ldrb r2, [r2, #1]
	cmp r0, r2
	bne _0800723C
	b _08007420
_0800723C:
	ldr r5, [sp, #0x98]
	ldrb r0, [r5, #1]
	mov r1, sl
	strb r0, [r1, #1]
	mov r2, sb
	ldrb r0, [r2, #1]
	strb r0, [r1, #2]
	ldrb r0, [r5, #2]
	lsrs r0, r0, #6
	movs r1, #3
	subs r2, r1, r0
	mov r5, sl
	strb r2, [r5, #3]
	ldr r0, [sp, #0x98]
	ldrb r1, [r0, #2]
	movs r0, #0x3f
	ands r0, r1
	strb r0, [r5, #4]
	ldr r1, [sp, #0x98]
	ldrb r0, [r1, #3]
	strb r0, [r5, #5]
	mov r5, sb
	ldrb r1, [r5, #2]
	cmp r1, #0
	bne _08007280
	adds r0, r2, #0
	b _08007284
	.align 2, 0
_08007274: .4byte 0xFFFB0000
_08007278: .4byte 0x03002A64
_0800727C: .4byte 0x03002A58
_08007280:
	movs r0, #4
	subs r0, r0, r1
_08007284:
	mov r1, sl
	strb r0, [r1, #6]
	ldr r2, [r3]
	str r2, [r1, #0xc]
	ldr r1, [r3, #4]
	mov r5, sl
	str r1, [r5, #0x10]
	ldr r0, [r3, #8]
	str r0, [r5, #0x14]
	ldr r0, [r4]
	str r0, [r5, #0x18]
	mov r3, sb
	ldr r0, [r3, #0x14]
	str r0, [r5, #0x28]
	ldr r0, [r3, #0x18]
	str r0, [r5, #0x2c]
	cmp r1, #0
	beq _080072D2
	adds r0, r2, #0
	bl sub_800392C
	rsbs r0, r0, #0
	str r0, [r5, #0x1c]
	ldr r0, [r5, #0x14]
	ldr r1, [r5, #0x10]
	bl sub_800392C
	rsbs r0, r0, #0
	str r0, [r5, #0x20]
	mov r5, sb
	ldr r0, [r5, #0x10]
	mov r2, sl
	ldr r1, [r2, #0x10]
	bl sub_800392C
	rsbs r0, r0, #0
	mov r3, sl
	str r0, [r3, #0x24]
	b _080072DA
_080072D2:
	mov r5, sl
	str r1, [r5, #0x1c]
	str r1, [r5, #0x20]
	str r1, [r5, #0x24]
_080072DA:
	ldr r0, [sp, #0x98]
	ldrh r1, [r0, #0x14]
	mov r0, sl
	adds r0, #0x44
	movs r2, #0
	strh r1, [r0]
	ldr r1, [sp, #0x98]
	ldrh r0, [r1, #0x16]
	mov r1, sl
	adds r1, #0x46
	strh r0, [r1]
	ldr r3, [sp, #0x98]
	ldrb r0, [r3, #0x18]
	adds r1, #4
	strb r0, [r1]
	ldrb r0, [r3, #0x19]
	adds r1, #1
	strb r0, [r1]
	ldrb r1, [r3, #0x1a]
	mov r0, sl
	adds r0, #0x4c
	strb r1, [r0]
	ldrb r0, [r3, #0x1b]
	mov r1, sl
	adds r1, #0x4d
	strb r0, [r1]
	mov r5, sl
	str r2, [r5, #0x30]
	str r2, [r5, #0x34]
	mov r1, sb
	ldrb r0, [r1]
	cmp r0, #4
	bne _08007350
	movs r2, #0xc
	ldrsh r0, [r6, r2]
	lsls r0, r0, #8
	str r0, [sp]
	movs r3, #0xe
	ldrsh r0, [r6, r3]
	lsls r0, r0, #8
	str r0, [sp, #4]
	movs r5, #0x10
	ldrsh r0, [r6, r5]
	lsls r0, r0, #8
	str r0, [sp, #8]
	movs r1, #0x12
	ldrsh r0, [r6, r1]
	lsls r0, r0, #8
	str r0, [sp, #0xc]
	movs r2, #0x14
	ldrsh r0, [r6, r2]
	lsls r0, r0, #8
	ldr r3, [sp, #0xa4]
	str r0, [r3, #4]
	movs r5, #0x16
	ldrsh r0, [r6, r5]
	lsls r0, r0, #8
	str r0, [r3, #8]
	b _08007402
_08007350:
	adds r1, r6, #0
	ldrh r0, [r1, #2]
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	movs r3, #8
	ldrsh r0, [r1, r3]
	cmp r2, r0
	bne _08007394
	movs r5, #0
	ldrsh r0, [r1, r5]
	lsls r0, r0, #8
	str r0, [sp]
	movs r6, #2
	ldrsh r0, [r1, r6]
	lsls r0, r0, #8
	str r0, [sp, #4]
	movs r2, #4
	ldrsh r0, [r1, r2]
	lsls r0, r0, #8
	str r0, [sp, #8]
	movs r3, #6
	ldrsh r0, [r1, r3]
	lsls r0, r0, #8
	str r0, [sp, #0xc]
	movs r5, #8
	ldrsh r0, [r1, r5]
	lsls r0, r0, #8
	ldr r6, [sp, #0xa4]
	str r0, [r6, #4]
	movs r2, #0xa
	ldrsh r0, [r1, r2]
	lsls r0, r0, #8
	str r0, [r6, #8]
	b _08007402
_08007394:
	movs r3, #0xe
	ldrsh r0, [r1, r3]
	cmp r2, r0
	bne _080073D0
	movs r5, #0
	ldrsh r0, [r1, r5]
	lsls r0, r0, #8
	str r0, [sp]
	movs r6, #2
	ldrsh r0, [r1, r6]
	lsls r0, r0, #8
	str r0, [sp, #4]
	movs r2, #4
	ldrsh r0, [r1, r2]
	lsls r0, r0, #8
	str r0, [sp, #8]
	movs r3, #0xc
	ldrsh r0, [r1, r3]
	lsls r0, r0, #8
	str r0, [sp, #0xc]
	movs r5, #0xe
	ldrsh r0, [r1, r5]
	lsls r0, r0, #8
	ldr r6, [sp, #0xa4]
	str r0, [r6, #4]
	movs r2, #0x10
	ldrsh r0, [r1, r2]
	lsls r0, r0, #8
	str r0, [r6, #8]
	b _08007402
_080073D0:
	movs r3, #6
	ldrsh r0, [r6, r3]
	lsls r0, r0, #8
	str r0, [sp]
	movs r5, #8
	ldrsh r0, [r6, r5]
	lsls r0, r0, #8
	str r0, [sp, #4]
	movs r1, #0xa
	ldrsh r0, [r6, r1]
	lsls r0, r0, #8
	str r0, [sp, #8]
	movs r2, #0xc
	ldrsh r0, [r6, r2]
	lsls r0, r0, #8
	str r0, [sp, #0xc]
	movs r3, #0xe
	ldrsh r0, [r6, r3]
	lsls r0, r0, #8
	ldr r5, [sp, #0xa4]
	str r0, [r5, #4]
	movs r1, #0x10
	ldrsh r0, [r6, r1]
	lsls r0, r0, #8
	str r0, [r5, #8]
_08007402:
	add r0, sp, #0xc
	mov r1, sp
	mov r2, sl
	adds r2, #0x38
	bl sub_800398C
	b _08007420
_08007410:
	ldr r2, [sp, #0x94]
	adds r2, #1
	str r2, [sp, #0x94]
	ldr r0, _08007430
	ldr r0, [r0]
	cmp r2, r0
	bge _08007420
	b _080070B0
_08007420:
	add sp, #0xa8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08007430: .4byte 0x02000308

    .thumb
	.global sub_8007434
sub_8007434: @ 0x08007434
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xb0
	adds r7, r1, #0
	ldr r3, _0800756C
	ldr r1, [r0]
	mov sb, r1
	ldr r4, [r3]
	add sb, r4
	mov r2, sb
	str r2, [sp]
	ldr r5, [r0, #4]
	str r5, [sp, #0xac]
	ldr r2, _08007570
	adds r1, r5, r2
	str r1, [sp, #4]
	ldr r6, [r0, #8]
	str r6, [sp, #0x38]
	str r6, [sp, #8]
	ldr r1, [r0, #0xc]
	str r1, [sp, #0x3c]
	str r1, [sp, #0xc]
	ldr r5, [r0, #0x10]
	mov r8, r5
	adds r1, r5, r2
	str r1, [sp, #0x10]
	ldr r6, [r0, #0x14]
	ldr r3, [r3, #8]
	mov sl, r3
	add r6, sl
	str r6, [sp, #0x44]
	str r6, [sp, #0x14]
	ldr r5, [r0, #0x18]
	subs r5, r5, r4
	str r5, [sp, #0x18]
	ldr r4, [r0, #0x1c]
	adds r1, r4, r2
	str r1, [sp, #0x1c]
	ldr r6, [r0, #0x20]
	str r6, [sp, #0x50]
	str r6, [sp, #0x20]
	ldr r1, [r0, #0x24]
	mov ip, r1
	str r1, [sp, #0x24]
	ldr r3, [r0, #0x28]
	adds r2, r3, r2
	str r2, [sp, #0x28]
	ldr r2, [r0, #0x2c]
	mov r6, sl
	subs r2, r2, r6
	str r2, [sp, #0x2c]
	mov r0, sb
	str r0, [sp, #0x30]
	movs r1, #0xe0
	lsls r1, r1, #0xc
	ldr r6, [sp, #0xac]
	adds r0, r6, r1
	str r0, [sp, #0x34]
	add r8, r1
	mov r0, r8
	str r0, [sp, #0x40]
	str r5, [sp, #0x48]
	adds r4, r4, r1
	str r4, [sp, #0x4c]
	mov r5, ip
	str r5, [sp, #0x54]
	adds r3, r3, r1
	str r3, [sp, #0x58]
	str r2, [sp, #0x5c]
	rsbs r6, r6, #0
	str r6, [sp, #0xa8]
	movs r0, #0
	str r0, [sp, #0xa4]
	strb r0, [r7]
	movs r2, #0
	str r2, [sp, #0x9c]
	ldr r0, _08007574
	ldr r0, [r0]
	ldr r3, [sp, #0xa4]
	cmp r3, r0
	blt _080074DE
	b _08007860
_080074DE:
	ldr r5, _08007578
	mov sb, r5
_080074E2:
	ldr r0, _0800757C
	ldr r6, [sp, #0x9c]
	lsls r1, r6, #2
	adds r0, r1, r0
	ldr r0, [r0]
	mov r8, r0
	ldr r0, _08007580
	adds r1, r1, r0
	ldr r6, [r1]
	ldr r0, [r6, #4]
	mov r1, sb
	str r0, [r1]
	ldr r0, [r6, #8]
	str r0, [r1, #4]
	ldr r0, [r6, #0xc]
	str r0, [r1, #8]
	ldr r1, _08007584
	ldr r0, [r6, #0x10]
	str r0, [r1]
	ldr r0, _08007588
	ldrb r1, [r6]
	str r1, [r0]
	ldr r2, [sp, #0x9c]
	str r2, [sp, #0xa0]
	movs r3, #0
	mov sl, r3
	cmp r1, #0xa
	bgt _0800758C
	ldr r0, [r6, #0x20]
	add r5, sp, #0x60
	adds r1, r5, #0
	movs r2, #0x1e
	bl UnsafeDmaTransfer16
	adds r0, r5, #0
	mov r1, sp
	add r2, sp, #0x30
	mov r3, sb
	bl sub_8003A64
	adds r4, r0, #0
	cmp r4, #0
	bne _080075DC
	movs r0, #1
	mov sl, r0
	adds r0, r5, #0
	add r1, sp, #0x18
	add r2, sp, #0x48
	mov r3, sb
	bl sub_8003A64
	adds r4, r0, #0
	cmp r4, #0
	bne _080075DC
	movs r1, #2
	mov sl, r1
	adds r0, r5, #0
	add r1, sp, #0xc
	add r2, sp, #0x3c
	mov r3, sb
	bl sub_8003A64
	adds r4, r0, #0
	cmp r4, #0
	bne _080075DC
	movs r2, #3
	mov sl, r2
	adds r0, r5, #0
	b _080075D0
	.align 2, 0
_0800756C: .4byte 0x0300331C
_08007570: .4byte 0xFFFF0000
_08007574: .4byte 0x0200030C
_08007578: .4byte 0x03002A58
_0800757C: .4byte 0x02000188
_08007580: .4byte 0x02000108
_08007584: .4byte 0x03002A64
_08007588: .4byte 0x03002A68
_0800758C:
	ldr r0, [r6, #0x20]
	mov r1, sp
	add r2, sp, #0x30
	mov r3, sb
	bl sub_8003A64
	adds r4, r0, #0
	cmp r4, #0
	bne _080075DC
	movs r3, #1
	mov sl, r3
	ldr r0, [r6, #0x20]
	add r1, sp, #0x18
	add r2, sp, #0x48
	mov r3, sb
	bl sub_8003A64
	adds r4, r0, #0
	cmp r4, #0
	bne _080075DC
	movs r5, #2
	mov sl, r5
	ldr r0, [r6, #0x20]
	add r1, sp, #0xc
	add r2, sp, #0x3c
	mov r3, sb
	bl sub_8003A64
	adds r4, r0, #0
	cmp r4, #0
	bne _080075DC
	movs r0, #3
	mov sl, r0
	ldr r0, [r6, #0x20]
_080075D0:
	add r1, sp, #0x24
	add r2, sp, #0x54
	mov r3, sb
	bl sub_8003A64
	adds r4, r0, #0
_080075DC:
	ldr r0, [r6, #4]
	cmp r0, #0
	bne _08007600
	ldr r0, [r6, #0xc]
	cmp r0, #0
	bne _08007600
	ldr r0, [r6, #0x10]
	ldr r1, [sp, #0xa8]
	cmp r0, r1
	bge _08007600
	subs r0, r0, r1
	bl Abs
	movs r1, #0xa0
	lsls r1, r1, #0xb
	cmp r0, r1
	bls _08007600
	movs r4, #0
_08007600:
	cmp r4, #0
	bne _08007606
	b _0800784E
_08007606:
	mov r2, r8
	ldrb r1, [r2, #1]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08007614
	b _08007720
_08007614:
	movs r3, #1
	str r3, [sp, #0xa4]
	strb r3, [r7]
	ldrb r0, [r2, #1]
	strb r0, [r7, #1]
	ldrb r0, [r6, #1]
	strb r0, [r7, #2]
	ldrb r0, [r2, #2]
	lsrs r0, r0, #6
	movs r1, #3
	subs r2, r1, r0
	strb r2, [r7, #3]
	mov r0, r8
	ldrb r1, [r0, #2]
	movs r0, #0x3f
	ands r0, r1
	strb r0, [r7, #4]
	mov r1, r8
	ldrb r0, [r1, #3]
	strb r0, [r7, #5]
	ldrb r1, [r6, #2]
	cmp r1, #0
	bne _08007646
	adds r0, r2, #0
	b _0800764A
_08007646:
	movs r0, #4
	subs r0, r0, r1
_0800764A:
	strb r0, [r7, #6]
	mov r3, sb
	ldr r2, [r3]
	str r2, [r7, #0xc]
	ldr r1, [r3, #4]
	str r1, [r7, #0x10]
	ldr r0, [r3, #8]
	str r0, [r7, #0x14]
	ldr r0, _08007690
	ldr r0, [r0]
	str r0, [r7, #0x18]
	ldr r0, [r6, #0x14]
	str r0, [r7, #0x28]
	ldr r0, [r6, #0x18]
	str r0, [r7, #0x2c]
	cmp r1, #0
	beq _08007694
	adds r0, r2, #0
	bl sub_800392C
	rsbs r0, r0, #0
	str r0, [r7, #0x1c]
	ldr r0, [r7, #0x14]
	ldr r1, [r7, #0x10]
	bl sub_800392C
	rsbs r0, r0, #0
	str r0, [r7, #0x20]
	ldr r0, [r6, #0x10]
	ldr r1, [r7, #0x10]
	bl sub_800392C
	rsbs r0, r0, #0
	str r0, [r7, #0x24]
	b _0800769A
	.align 2, 0
_08007690: .4byte 0x03002A64
_08007694:
	str r1, [r7, #0x1c]
	str r1, [r7, #0x20]
	str r1, [r7, #0x24]
_0800769A:
	mov r5, r8
	ldrh r0, [r5, #0x14]
	adds r1, r7, #0
	adds r1, #0x44
	movs r4, #0
	movs r5, #0
	strh r0, [r1]
	ldr r0, _08007714
	ldr r0, [r0]
	cmp r0, #0
	bne _080076B8
	movs r2, #0
	ldrsh r0, [r1, r2]
	bl sub_8030B24
_080076B8:
	mov r3, r8
	ldrh r0, [r3, #0x16]
	adds r1, r7, #0
	adds r1, #0x46
	strh r0, [r1]
	ldrb r0, [r3, #0x18]
	adds r1, #4
	strb r0, [r1]
	ldrb r0, [r3, #0x19]
	adds r1, #1
	strb r0, [r1]
	ldrb r1, [r3, #0x1a]
	adds r0, r7, #0
	adds r0, #0x4c
	strb r1, [r0]
	ldrb r0, [r3, #0x1b]
	adds r1, r7, #0
	adds r1, #0x4d
	strb r0, [r1]
	adds r0, r7, #0
	adds r0, #0x48
	strh r5, [r0]
	adds r0, #8
	strb r4, [r0]
	adds r0, #1
	strb r4, [r0]
	adds r0, #1
	strb r4, [r0]
	adds r0, #1
	strb r4, [r0]
	ldrb r0, [r6, #3]
	adds r1, #1
	strb r0, [r1]
	ldrb r0, [r6, #0x1e]
	adds r2, r7, #0
	adds r2, #0x4f
	strb r0, [r2]
	str r5, [r7, #0x30]
	str r5, [r7, #0x34]
	ldr r0, _08007718
	ldr r5, [sp, #0xa0]
	str r5, [r0]
	ldr r0, _0800771C
	mov r6, sl
	str r6, [r0]
	b _0800784E
	.align 2, 0
_08007714: .4byte 0x0203DFEC
_08007718: .4byte 0x03002A50
_0800771C: .4byte 0x03002A54
_08007720:
	movs r0, #1
	str r0, [sp, #0xa4]
	strb r0, [r7]
	mov r2, r8
	ldrb r0, [r2, #1]
	strb r0, [r7, #1]
	ldrb r0, [r6, #1]
	strb r0, [r7, #2]
	ldrb r0, [r2, #2]
	lsrs r0, r0, #6
	movs r1, #3
	subs r2, r1, r0
	strb r2, [r7, #3]
	mov r3, r8
	ldrb r1, [r3, #2]
	movs r0, #0x3f
	ands r0, r1
	strb r0, [r7, #4]
	ldrb r0, [r3, #3]
	strb r0, [r7, #5]
	ldrb r1, [r6, #2]
	cmp r1, #0
	bne _08007752
	adds r0, r2, #0
	b _08007756
_08007752:
	movs r0, #4
	subs r0, r0, r1
_08007756:
	strb r0, [r7, #6]
	mov r5, sb
	ldr r2, [r5]
	str r2, [r7, #0xc]
	ldr r1, [r5, #4]
	str r1, [r7, #0x10]
	ldr r0, [r5, #8]
	str r0, [r7, #0x14]
	ldr r0, _0800779C
	ldr r0, [r0]
	str r0, [r7, #0x18]
	ldr r0, [r6, #0x14]
	str r0, [r7, #0x28]
	ldr r0, [r6, #0x18]
	str r0, [r7, #0x2c]
	cmp r1, #0
	beq _080077A0
	adds r0, r2, #0
	bl sub_800392C
	rsbs r0, r0, #0
	str r0, [r7, #0x1c]
	ldr r0, [r7, #0x14]
	ldr r1, [r7, #0x10]
	bl sub_800392C
	rsbs r0, r0, #0
	str r0, [r7, #0x20]
	ldr r0, [r6, #0x10]
	ldr r1, [r7, #0x10]
	bl sub_800392C
	rsbs r0, r0, #0
	str r0, [r7, #0x24]
	b _080077A6
	.align 2, 0
_0800779C: .4byte 0x03002A64
_080077A0:
	str r1, [r7, #0x1c]
	str r1, [r7, #0x20]
	str r1, [r7, #0x24]
_080077A6:
	adds r1, r7, #0
	adds r1, #0x44
	ldr r0, _08007874
	strh r0, [r1]
	mov r1, r8
	ldrh r0, [r1, #0x16]
	adds r1, r7, #0
	adds r1, #0x46
	movs r2, #0
	strh r0, [r1]
	mov r3, r8
	ldrb r0, [r3, #0x18]
	adds r1, #4
	strb r0, [r1]
	ldrb r0, [r3, #0x19]
	adds r1, #1
	strb r0, [r1]
	ldrb r1, [r3, #0x1a]
	adds r0, r7, #0
	adds r0, #0x4c
	strb r1, [r0]
	adds r0, #1
	strb r2, [r0]
	ldrh r1, [r3, #0x14]
	subs r0, #5
	strh r1, [r0]
	ldrb r1, [r3, #0x1b]
	lsrs r1, r1, #3
	movs r2, #1
	ands r1, r2
	adds r0, #8
	strb r1, [r0]
	ldrb r0, [r3, #0x1b]
	lsrs r0, r0, #2
	ands r0, r2
	adds r1, r7, #0
	adds r1, #0x51
	strb r0, [r1]
	ldrb r0, [r3, #0x1b]
	lsrs r0, r0, #1
	ands r0, r2
	adds r1, #1
	strb r0, [r1]
	ldrb r1, [r3, #0x1b]
	movs r0, #1
	ands r0, r1
	adds r1, r7, #0
	adds r1, #0x53
	strb r0, [r1]
	ldrb r0, [r6, #3]
	subs r1, #5
	strb r0, [r1]
	ldrb r0, [r6, #0x1e]
	adds r1, #1
	strb r0, [r1]
	ldr r2, _08007878
	ldrb r0, [r6, #0x1f]
	lsrs r0, r0, #3
	movs r1, #0xf
	ands r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	str r0, [r7, #0x30]
	ldr r2, _0800787C
	ldrb r1, [r6, #0x1f]
	movs r0, #7
	ands r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	str r0, [r7, #0x34]
	ldr r0, _08007880
	ldr r5, [sp, #0xa0]
	str r5, [r0]
	ldr r0, _08007884
	mov r6, sl
	str r6, [r0]
	ldr r0, _08007888
	ldr r0, [r0]
	cmp r0, #0
	beq _0800784E
	bl sub_8030C30
_0800784E:
	ldr r0, [sp, #0x9c]
	adds r0, #1
	str r0, [sp, #0x9c]
	ldr r0, _0800788C
	ldr r0, [r0]
	ldr r1, [sp, #0x9c]
	cmp r1, r0
	bge _08007860
	b _080074E2
_08007860:
	ldr r0, [sp, #0xa4]
	add sp, #0xb0
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08007874: .4byte 0x0000FFFF
_08007878: .4byte 0x080CEC10
_0800787C: .4byte dword_80CC290
_08007880: .4byte 0x03002A50
_08007884: .4byte 0x03002A54
_08007888: .4byte 0x0203DFEC
_0800788C: .4byte 0x0200030C

    .thumb
	.global sub_08007890
sub_08007890: @ 0x08007890
	push {r4, r5, r6, lr}
	sub sp, #0x18
	adds r5, r0, #0
	adds r4, r1, #0
	ldr r0, _080078C8
	ldr r2, [r0]
	cmp r2, #0
	bne _080078A2
	b _08007AB8
_080078A2:
	ldr r0, _080078CC
	ldr r1, [r0]
	adds r6, r0, #0
	cmp r1, #0
	bge _080078AE
	b _08007AB8
_080078AE:
	cmp r1, r2
	blt _080078B4
	b _08007AB8
_080078B4:
	ldr r0, _080078D0
	ldr r0, [r0]
	cmp r0, #1
	beq _080078FC
	cmp r0, #1
	bgt _080078D4
	cmp r0, #0
	beq _080078DE
	b _0800797C
	.align 2, 0
_080078C8: .4byte 0x0200030C
_080078CC: .4byte 0x03002A50
_080078D0: .4byte 0x03002A54
_080078D4:
	cmp r0, #2
	beq _0800792C
	cmp r0, #3
	beq _0800794C
	b _0800797C
_080078DE:
	ldr r0, _080078F4
	ldr r2, [r5]
	ldr r0, [r0]
	adds r2, r2, r0
	str r2, [sp]
	ldr r1, [r5, #4]
	ldr r3, _080078F8
	adds r0, r1, r3
	str r0, [sp, #4]
	ldr r3, [r5, #8]
	b _08007910
	.align 2, 0
_080078F4: .4byte 0x0300331C
_080078F8: .4byte 0xFFF60000
_080078FC:
	ldr r0, _08007924
	ldr r2, [r5, #0x18]
	ldr r0, [r0]
	subs r2, r2, r0
	str r2, [sp]
	ldr r1, [r5, #0x1c]
	ldr r3, _08007928
	adds r0, r1, r3
	str r0, [sp, #4]
	ldr r3, [r5, #0x20]
_08007910:
	str r3, [sp, #8]
	add r0, sp, #0xc
	str r2, [sp, #0xc]
	movs r2, #0xe0
	lsls r2, r2, #0xc
	adds r1, r1, r2
	str r1, [r0, #4]
	str r3, [r0, #8]
	adds r2, r0, #0
	b _08007982
	.align 2, 0
_08007924: .4byte 0x0300331C
_08007928: .4byte 0xFFF60000
_0800792C:
	ldr r3, [r5, #0xc]
	str r3, [sp]
	ldr r2, [r5, #0x10]
	ldr r1, _08007944
	adds r0, r2, r1
	str r0, [sp, #4]
	ldr r0, _08007948
	ldr r1, [r5, #0x14]
	ldr r0, [r0, #8]
	adds r1, r1, r0
	b _08007960
	.align 2, 0
_08007944: .4byte 0xFFF60000
_08007948: .4byte 0x0300331C
_0800794C:
	ldr r3, [r5, #0x24]
	str r3, [sp]
	ldr r2, [r5, #0x28]
	ldr r1, _08007974
	adds r0, r2, r1
	str r0, [sp, #4]
	ldr r0, _08007978
	ldr r1, [r5, #0x2c]
	ldr r0, [r0, #8]
	subs r1, r1, r0
_08007960:
	str r1, [sp, #8]
	add r0, sp, #0xc
	str r3, [sp, #0xc]
	movs r3, #0xe0
	lsls r3, r3, #0xc
	adds r2, r2, r3
	str r2, [r0, #4]
	str r1, [r0, #8]
	adds r2, r0, #0
	b _08007982
	.align 2, 0
_08007974: .4byte 0xFFF60000
_08007978: .4byte 0x0300331C
_0800797C:
	.2byte 0xEE00, 0xEE00
	add r2, sp, #0xc
_08007982:
	movs r0, #0
	strb r0, [r4]
	ldr r1, _080079D0
	ldr r0, [r6]
	lsls r0, r0, #2
	adds r1, r0, r1
	ldr r5, [r1]
	ldr r1, _080079D4
	adds r0, r0, r1
	ldr r6, [r0]
	adds r0, r6, #0
	mov r1, sp
	bl sub_8009174
	cmp r0, #0
	bne _080079A4
	b _08007AB8
_080079A4:
	movs r0, #1
	strb r0, [r4]
	ldrb r0, [r5, #1]
	strb r0, [r4, #1]
	ldrb r0, [r6, #1]
	strb r0, [r4, #2]
	ldrb r0, [r5, #2]
	lsrs r0, r0, #6
	movs r1, #3
	subs r2, r1, r0
	strb r2, [r4, #3]
	ldrb r1, [r5, #2]
	movs r0, #0x3f
	ands r0, r1
	strb r0, [r4, #4]
	ldrb r0, [r5, #3]
	strb r0, [r4, #5]
	ldrb r1, [r6, #2]
	cmp r1, #0
	bne _080079D8
	adds r0, r2, #0
	b _080079DC
	.align 2, 0
_080079D0: .4byte 0x02000188
_080079D4: .4byte 0x02000108
_080079D8:
	movs r0, #4
	subs r0, r0, r1
_080079DC:
	strb r0, [r4, #6]
	ldr r2, [r6, #4]
	str r2, [r4, #0xc]
	ldr r1, [r6, #8]
	str r1, [r4, #0x10]
	ldr r0, [r6, #0xc]
	str r0, [r4, #0x14]
	ldr r0, [r6, #0x14]
	str r0, [r4, #0x28]
	ldr r0, [r6, #0x18]
	str r0, [r4, #0x2c]
	cmp r1, #0
	beq _08007A1A
	adds r0, r2, #0
	bl sub_800392C
	rsbs r0, r0, #0
	str r0, [r4, #0x1c]
	ldr r0, [r4, #0x14]
	ldr r1, [r4, #0x10]
	bl sub_800392C
	rsbs r0, r0, #0
	str r0, [r4, #0x20]
	ldr r0, [r6, #0x10]
	ldr r1, [r4, #0x10]
	bl sub_800392C
	rsbs r0, r0, #0
	str r0, [r4, #0x24]
	b _08007A20
_08007A1A:
	str r1, [r4, #0x1c]
	str r1, [r4, #0x20]
	str r1, [r4, #0x24]
_08007A20:
	adds r1, r4, #0
	adds r1, #0x44
	movs r2, #0
	movs r0, #0
	strh r0, [r1]
	ldrh r0, [r5, #0x16]
	adds r1, #2
	strh r0, [r1]
	ldrb r0, [r5, #0x18]
	adds r1, #4
	strb r0, [r1]
	ldrb r0, [r5, #0x19]
	adds r1, #1
	strb r0, [r1]
	ldrb r1, [r5, #0x1a]
	adds r0, r4, #0
	adds r0, #0x4c
	strb r1, [r0]
	adds r0, #1
	strb r2, [r0]
	ldrh r1, [r5, #0x14]
	subs r0, #5
	strh r1, [r0]
	ldrb r0, [r5, #0x1b]
	lsrs r0, r0, #3
	movs r2, #1
	ands r0, r2
	adds r1, r4, #0
	adds r1, #0x50
	strb r0, [r1]
	ldrb r0, [r5, #0x1b]
	lsrs r0, r0, #2
	ands r0, r2
	adds r1, #1
	strb r0, [r1]
	ldrb r0, [r5, #0x1b]
	lsrs r0, r0, #1
	ands r0, r2
	adds r1, #1
	strb r0, [r1]
	ldrb r1, [r5, #0x1b]
	movs r0, #1
	ands r0, r1
	adds r1, r4, #0
	adds r1, #0x53
	strb r0, [r1]
	ldrb r0, [r6, #3]
	subs r1, #5
	strb r0, [r1]
	ldrb r0, [r6, #0x1e]
	adds r1, #1
	strb r0, [r1]
	ldr r2, _08007AB0
	ldrb r0, [r6, #0x1f]
	lsrs r0, r0, #3
	movs r1, #0xf
	ands r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	str r0, [r4, #0x30]
	ldr r2, _08007AB4
	ldrb r1, [r6, #0x1f]
	movs r0, #7
	ands r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	str r0, [r4, #0x34]
	movs r0, #1
	b _08007ABA
	.align 2, 0
_08007AB0: .4byte 0x080CEC10
_08007AB4: .4byte dword_80CC290
_08007AB8:
	movs r0, #0
_08007ABA:
	add sp, #0x18
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

    .thumb
	.global sub_8007AC4
sub_8007AC4: @ 0x08007AC4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0
	ldr r1, _08007B6C
	movs r0, #0
	strb r0, [r1]
	mov r8, r0
	ldr r0, _08007B70
	ldr r0, [r0]
	cmp r8, r0
	blt _08007AE0
	b _08007C0E
_08007AE0:
	adds r6, r1, #0
	movs r0, #0
	mov sb, r0
_08007AE6:
	ldr r0, _08007B74
	mov r2, r8
	lsls r1, r2, #2
	adds r0, r1, r0
	ldr r7, [r0]
	ldr r0, _08007B78
	adds r1, r1, r0
	ldr r5, [r1]
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r4, #0
	adds r2, #0x30
	bl sub_8009174
	cmp r0, #0
	bne _08007B3C
	adds r0, r5, #0
	adds r1, r4, #0
	adds r1, #0x18
	adds r2, r4, #0
	adds r2, #0x48
	bl sub_8009174
	cmp r0, #0
	bne _08007B3C
	adds r0, r5, #0
	adds r1, r4, #0
	adds r1, #0xc
	adds r2, r4, #0
	adds r2, #0x3c
	bl sub_8009174
	cmp r0, #0
	bne _08007B3C
	adds r0, r5, #0
	adds r1, r4, #0
	adds r1, #0x24
	adds r2, r4, #0
	adds r2, #0x54
	bl sub_8009174
	cmp r0, #0
	beq _08007C00
_08007B3C:
	movs r0, #1
	strb r0, [r6]
	ldrb r0, [r7, #1]
	strb r0, [r6, #1]
	ldrb r0, [r5, #1]
	strb r0, [r6, #2]
	ldrb r0, [r7, #2]
	lsrs r0, r0, #6
	movs r1, #3
	subs r2, r1, r0
	strb r2, [r6, #3]
	ldrb r1, [r7, #2]
	movs r0, #0x3f
	ands r0, r1
	strb r0, [r6, #4]
	ldrb r0, [r7, #3]
	strb r0, [r6, #5]
	adds r3, r6, #0
	ldrb r1, [r5, #2]
	cmp r1, #0
	bne _08007B7C
	adds r0, r2, #0
	b _08007B80
	.align 2, 0
_08007B6C: .4byte 0x030029F8
_08007B70: .4byte 0x02000310
_08007B74: .4byte 0x02000288
_08007B78: .4byte 0x02000208
_08007B7C:
	movs r0, #4
	subs r0, r0, r1
_08007B80:
	strb r0, [r3, #6]
	ldr r4, _08007BC0
	ldr r2, [r5, #4]
	str r2, [r4, #0xc]
	ldr r1, [r5, #8]
	str r1, [r4, #0x10]
	ldr r0, [r5, #0xc]
	str r0, [r4, #0x14]
	ldr r0, [r5, #0x14]
	str r0, [r4, #0x28]
	ldr r0, [r5, #0x18]
	str r0, [r4, #0x2c]
	cmp r1, #0
	beq _08007BC4
	adds r0, r2, #0
	bl sub_800392C
	rsbs r0, r0, #0
	str r0, [r4, #0x1c]
	ldr r0, [r4, #0x14]
	ldr r1, [r4, #0x10]
	bl sub_800392C
	rsbs r0, r0, #0
	str r0, [r4, #0x20]
	ldr r0, [r5, #0x10]
	ldr r1, [r4, #0x10]
	bl sub_800392C
	rsbs r0, r0, #0
	str r0, [r4, #0x24]
	b _08007BCA
	.align 2, 0
_08007BC0: .4byte 0x030029F8
_08007BC4:
	str r1, [r4, #0x1c]
	str r1, [r4, #0x20]
	str r1, [r4, #0x24]
_08007BCA:
	ldrh r1, [r7, #0x14]
	adds r0, r6, #0
	adds r0, #0x44
	strh r1, [r0]
	ldrh r0, [r7, #0x16]
	adds r1, r6, #0
	adds r1, #0x46
	strh r0, [r1]
	ldrb r0, [r7, #0x18]
	adds r1, #4
	strb r0, [r1]
	ldrb r0, [r7, #0x19]
	adds r1, #1
	strb r0, [r1]
	ldrb r1, [r7, #0x1a]
	adds r0, r6, #0
	adds r0, #0x4c
	strb r1, [r0]
	ldrb r0, [r7, #0x1b]
	adds r1, r6, #0
	adds r1, #0x4d
	strb r0, [r1]
	mov r0, sb
	str r0, [r6, #0x30]
	str r0, [r6, #0x34]
	movs r0, #1
	b _08007C10
_08007C00:
	movs r2, #1
	add r8, r2
	ldr r0, _08007C1C
	ldr r0, [r0]
	cmp r8, r0
	bge _08007C0E
	b _08007AE6
_08007C0E:
	movs r0, #0
_08007C10:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08007C1C: .4byte 0x02000310

    .thumb
	.global sub_08007C20
sub_08007C20: @ 0x08007C20
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r4, _08007DF8
	add sp, r4
	str r1, [sp, #0x238]
	adds r7, r2, #0
	add r1, sp, #0x1d8
	ldr r2, [r0]
	mov r8, r2
	ldr r3, _08007DFC
	mov r5, r8
	adds r5, r5, r3
	mov sb, r5
	str r5, [r1]
	ldr r4, [r0, #4]
	str r4, [r1, #4]
	ldr r0, [r0, #8]
	mov sl, r0
	add r3, sl
	str r3, [r1, #8]
	movs r0, #0xc0
	lsls r0, r0, #0xa
	adds r6, r2, r0
	str r6, [r1, #0xc]
	str r4, [r1, #0x10]
	str r3, [r1, #0x14]
	str r6, [r1, #0x18]
	str r4, [r1, #0x1c]
	add r0, sl
	str r0, [r1, #0x20]
	str r5, [r1, #0x24]
	str r4, [r1, #0x28]
	str r0, [r1, #0x2c]
	str r5, [r1, #0x30]
	movs r5, #0xc0
	lsls r5, r5, #0xb
	adds r2, r4, r5
	str r2, [r1, #0x34]
	str r3, [r1, #0x38]
	str r6, [r1, #0x3c]
	str r2, [r1, #0x40]
	str r3, [r1, #0x44]
	str r6, [r1, #0x48]
	str r2, [r1, #0x4c]
	str r0, [r1, #0x50]
	mov r3, sb
	str r3, [r1, #0x54]
	str r2, [r1, #0x58]
	str r0, [r1, #0x5c]
	ldr r0, _08007E00
	ldr r0, [r0]
	adds r4, r4, r0
	asrs r4, r4, #0x16
	ldr r0, _08007E04
	ldrh r2, [r0]
	adds r1, r4, #0
	muls r1, r2, r1
	ldr r0, _08007E08
	ldrh r0, [r0]
	muls r1, r0, r1
	ldr r0, _08007E0C
	ldr r0, [r0]
	mov r3, sl
	adds r5, r3, r0
	asrs r5, r5, #0x16
	adds r0, r5, #0
	muls r0, r2, r0
	adds r1, r1, r0
	ldr r0, _08007E10
	ldr r0, [r0]
	add r8, r0
	mov r5, r8
	asrs r5, r5, #0x16
	mov r8, r5
	add r1, r8
	ldr r2, _08007E14
	movs r4, #0
	ldr r0, _08007E18
	ldr r0, [r0]
	lsls r1, r1, #1
	adds r1, r1, r0
	ldrh r3, [r1]
	cmp r3, r2
	beq _08007CFA
	ldr r0, _08007E1C
	ldr r1, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldrh r1, [r0]
	cmp r1, #0
	beq _08007CFA
	adds r3, r0, #0
	add r2, sp, #0x100
	mov r8, r1
_08007CE4:
	ldrh r0, [r3, #2]
	strh r0, [r2]
	adds r2, #2
	adds r4, #1
	adds r3, #2
	movs r0, #1
	rsbs r0, r0, #0
	add r8, r0
	mov r1, r8
	cmp r1, #0
	bne _08007CE4
_08007CFA:
	cmp r4, #0x5f
	ble _08007D02
	.2byte 0xEE00, 0xEE00
_08007D02:
	movs r2, #0
	str r2, [sp, #0x23c]
	mov r8, r2
	cmp r4, #0
	bne _08007D0E
	b _08007E66
_08007D0E:
	movs r3, #0xe0
	lsls r3, r3, #1
	add r3, sp
	str r3, [sp, #0x240]
	movs r5, #0xe6
	lsls r5, r5, #1
	add r5, sp
	str r5, [sp, #0x244]
_08007D1E:
	ldr r2, _08007E20
	add r0, sp, #0x100
	mov r3, r8
	lsls r1, r3, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, [r2]
	adds r5, r1, r0
	movs r0, #1
	add r8, r0
	movs r6, #1
	ldrb r1, [r5, #1]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08007D62
	ldrb r0, [r5, #0x18]
	movs r2, #0x16
	ldrsh r1, [r5, r2]
	bl sub_80342CC
	cmp r0, #0
	bne _08007D60
	ldrb r0, [r5, #0x19]
	ldrb r1, [r5, #0x1a]
	ldrb r2, [r5, #0x1b]
	bl sub_8034388
	cmp r0, #0
	bne _08007D62
_08007D60:
	movs r6, #0
_08007D62:
	subs r4, #1
	str r4, [sp, #0x248]
	cmp r6, #0
	beq _08007E5E
	movs r3, #8
	ldrsh r0, [r5, r3]
	lsls r0, r0, #0x10
	ldr r1, [sp, #0x240]
	str r0, [r1]
	movs r2, #0xa
	ldrsh r0, [r5, r2]
	lsls r0, r0, #0x10
	str r0, [r1, #4]
	movs r3, #0xc
	ldrsh r0, [r5, r3]
	lsls r0, r0, #0x10
	str r0, [r1, #8]
	movs r1, #0xe
	ldrsh r0, [r5, r1]
	lsls r0, r0, #0x10
	ldr r2, [sp, #0x244]
	str r0, [r2]
	movs r3, #0x10
	ldrsh r0, [r5, r3]
	lsls r0, r0, #0x10
	str r0, [r2, #4]
	movs r1, #0x12
	ldrsh r0, [r5, r1]
	lsls r0, r0, #0x10
	str r0, [r2, #8]
	ldr r0, [sp, #0x240]
	ldr r1, [sp, #0x244]
	add r2, sp, #0x1d8
	add r3, sp, #0x220
	bl sub_8003964
	cmp r0, #0
	beq _08007E5E
	ldrb r2, [r5]
	cmp r2, #0
	beq _08007E5E
	movs r3, #0
	mov sl, r3
	add r1, sp, #0x80
	ldr r3, [sp, #0x23c]
	lsls r0, r3, #2
	adds r1, r1, r0
	mov sb, r1
	mov r1, sp
	adds r3, r0, r1
	adds r6, r2, #0
_08007DC8:
	ldr r0, [r5, #4]
	mov r2, sl
	adds r4, r0, r2
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq _08007DE4
	cmp r0, #2
	beq _08007DE4
	cmp r0, #4
	beq _08007DE4
	cmp r0, #9
	beq _08007DE4
	cmp r0, #0xa
	bne _08007E24
_08007DE4:
	stm r3!, {r4}
	mov r0, sb
	adds r0, #4
	mov sb, r0
	subs r0, #4
	stm r0!, {r5}
	ldr r1, [sp, #0x23c]
	adds r1, #1
	str r1, [sp, #0x23c]
	b _08007E54
	.align 2, 0
_08007DF8: .4byte 0xFFFFFDB0
_08007DFC: .4byte 0xFFFD0000
_08007E00: .4byte 0x030028E4
_08007E04: .4byte 0x030028D8
_08007E08: .4byte 0x030028DC
_08007E0C: .4byte 0x030028E8
_08007E10: .4byte 0x030028E0
_08007E14: .4byte 0x0000FFFF
_08007E18: .4byte 0x030028F0
_08007E1C: .4byte 0x030028F4
_08007E20: .4byte 0x030028F8
_08007E24:
	adds r0, r4, #4
	ldr r1, [sp, #0x238]
	str r3, [sp, #0x24c]
	bl sub_8003954
	ldr r3, [sp, #0x24c]
	cmp r0, #0
	bgt _08007E54
	ldrb r0, [r4, #1]
	cmp r0, #1
	beq _08007E42
	cmp r0, #6
	beq _08007E42
	cmp r0, #8
	bne _08007E54
_08007E42:
	stm r3!, {r4}
	mov r2, sb
	adds r2, #4
	mov sb, r2
	subs r2, #4
	stm r2!, {r5}
	ldr r0, [sp, #0x23c]
	adds r0, #1
	str r0, [sp, #0x23c]
_08007E54:
	movs r1, #0x24
	add sl, r1
	subs r6, #1
	cmp r6, #0
	bne _08007DC8
_08007E5E:
	ldr r4, [sp, #0x248]
	cmp r4, #0
	beq _08007E66
	b _08007D1E
_08007E66:
	ldr r2, [sp, #0x23c]
	cmp r2, #0x1f
	ble _08007E70
	.2byte 0xEE00, 0xEE00
_08007E70:
	movs r0, #0
	strb r0, [r7]
	mov r8, r0
	ldr r3, [sp, #0x23c]
	cmp r8, r3
	blt _08007E7E
	b _08007F88
_08007E7E:
	movs r6, #0
_08007E80:
	add r0, sp, #0x80
	mov r5, r8
	lsls r1, r5, #2
	adds r0, r0, r1
	ldr r5, [r0]
	mov r2, sp
	adds r0, r2, r1
	ldr r4, [r0]
	add r2, sp, #0x1d8
	ldrb r0, [r4, #0x1c]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r2, r1
	ldrb r3, [r4, #0x1d]
	lsls r0, r3, #1
	adds r0, r0, r3
	lsls r0, r0, #2
	adds r2, r2, r0
	adds r0, r4, #0
	bl sub_08008F64
	cmp r0, #0
	beq _08007F7C
	movs r0, #1
	strb r0, [r7]
	ldrb r0, [r5, #1]
	strb r0, [r7, #1]
	ldrb r0, [r4, #1]
	strb r0, [r7, #2]
	ldrb r0, [r5, #2]
	lsrs r0, r0, #6
	movs r1, #3
	subs r2, r1, r0
	strb r2, [r7, #3]
	ldrb r1, [r5, #2]
	movs r0, #0x3f
	ands r0, r1
	strb r0, [r7, #4]
	ldrb r0, [r5, #3]
	strb r0, [r7, #5]
	ldrb r1, [r4, #2]
	cmp r1, #0
	bne _08007EDC
	adds r0, r2, #0
	b _08007EE0
_08007EDC:
	movs r0, #4
	subs r0, r0, r1
_08007EE0:
	strb r0, [r7, #6]
	ldr r2, [r4, #4]
	str r2, [r7, #0xc]
	ldr r1, [r4, #8]
	str r1, [r7, #0x10]
	ldr r0, [r4, #0xc]
	str r0, [r7, #0x14]
	ldr r0, [r4, #0x14]
	str r0, [r7, #0x28]
	ldr r0, [r4, #0x18]
	str r0, [r7, #0x2c]
	cmp r1, #0
	beq _08007F1E
	adds r0, r2, #0
	bl sub_800392C
	rsbs r0, r0, #0
	str r0, [r7, #0x1c]
	ldr r0, [r7, #0x14]
	ldr r1, [r7, #0x10]
	bl sub_800392C
	rsbs r0, r0, #0
	str r0, [r7, #0x20]
	ldr r0, [r4, #0x10]
	ldr r1, [r7, #0x10]
	bl sub_800392C
	rsbs r0, r0, #0
	str r0, [r7, #0x24]
	b _08007F24
_08007F1E:
	str r1, [r7, #0x1c]
	str r1, [r7, #0x20]
	str r1, [r7, #0x24]
_08007F24:
	ldrh r1, [r5, #0x14]
	adds r0, r7, #0
	adds r0, #0x44
	movs r3, #0
	strh r1, [r0]
	ldrh r0, [r5, #0x16]
	adds r1, r7, #0
	adds r1, #0x46
	strh r0, [r1]
	ldrb r0, [r5, #0x18]
	adds r1, #4
	strb r0, [r1]
	ldrb r0, [r5, #0x19]
	adds r1, #1
	strb r0, [r1]
	ldrb r1, [r5, #0x1a]
	adds r0, r7, #0
	adds r0, #0x4c
	strb r1, [r0]
	ldrb r0, [r5, #0x1b]
	adds r2, r7, #0
	adds r2, #0x4d
	strb r0, [r2]
	str r6, [r7, #0x30]
	str r6, [r7, #0x34]
	ldrb r0, [r4, #1]
	cmp r0, #1
	beq _08007F64
	cmp r0, #6
	beq _08007F64
	cmp r0, #8
	bne _08007F70
_08007F64:
	ldr r1, _08007F6C
	movs r0, #1
	strb r0, [r1]
	b _08007F74
	.align 2, 0
_08007F6C: .4byte 0x03002A4C
_08007F70:
	ldr r0, _08007F78
	strb r3, [r0]
_08007F74:
	movs r0, #1
	b _08007F8A
	.align 2, 0
_08007F78: .4byte 0x03002A4C
_08007F7C:
	movs r3, #1
	add r8, r3
	ldr r5, [sp, #0x23c]
	cmp r8, r5
	bge _08007F88
	b _08007E80
_08007F88:
	movs r0, #0
_08007F8A:
	movs r3, #0x94
	lsls r3, r3, #2
	add sp, r3
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

    .thumb
	.global sub_08007FA0
sub_08007FA0: @ 0x08007FA0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r4, _080082FC
	add sp, r4
	str r1, [sp, #0x2b8]
	mov sl, r2
	add r4, sp, #0x258
	ldr r3, [r0]
	ldr r2, _08008300
	adds r6, r3, r2
	str r6, [r4]
	ldr r1, [r0, #4]
	str r1, [r4, #4]
	ldr r0, [r0, #8]
	adds r2, r0, r2
	str r2, [r4, #8]
	movs r5, #0xc0
	lsls r5, r5, #0xa
	adds r3, r3, r5
	str r3, [r4, #0xc]
	str r1, [r4, #0x10]
	str r2, [r4, #0x14]
	str r3, [r4, #0x18]
	str r1, [r4, #0x1c]
	adds r0, r0, r5
	str r0, [r4, #0x20]
	str r6, [r4, #0x24]
	str r1, [r4, #0x28]
	str r0, [r4, #0x2c]
	str r6, [r4, #0x30]
	movs r5, #0xc0
	lsls r5, r5, #0xb
	adds r1, r1, r5
	str r1, [r4, #0x34]
	str r2, [r4, #0x38]
	str r3, [r4, #0x3c]
	str r1, [r4, #0x40]
	str r2, [r4, #0x44]
	str r3, [r4, #0x48]
	str r1, [r4, #0x4c]
	str r0, [r4, #0x50]
	str r6, [r4, #0x54]
	str r1, [r4, #0x58]
	str r0, [r4, #0x5c]
	mov r0, sp
	adds r0, #0x40
	str r0, [sp, #0x2c0]
	movs r0, #0
	ldr r1, [sp, #0x2c0]
	movs r2, #0x10
	bl DmaFill32
	ldr r0, _08008304
	ldrh r0, [r0]
	mov sb, r0
	ldr r0, _08008308
	ldrh r0, [r0]
	mov r7, sb
	muls r7, r0, r7
	ldr r0, _0800830C
	ldr r6, [r4]
	ldr r0, [r0]
	adds r6, r6, r0
	asrs r6, r6, #0x16
	ldr r3, [r4, #0x48]
	adds r3, r3, r0
	asrs r3, r3, #0x16
	ldr r1, _08008310
	ldr r0, [r4, #4]
	ldr r1, [r1]
	adds r0, r0, r1
	asrs r0, r0, #0x16
	adds r2, r0, #0
	muls r2, r7, r2
	ldr r0, [r4, #0x4c]
	adds r0, r0, r1
	asrs r0, r0, #0x16
	adds r5, r0, #0
	muls r5, r7, r5
	ldr r1, _08008314
	ldr r0, [r4, #8]
	ldr r1, [r1]
	mov r8, r1
	add r0, r8
	asrs r0, r0, #0x16
	mov r1, sb
	muls r1, r0, r1
	ldr r0, [r4, #0x50]
	add r0, r8
	asrs r0, r0, #0x16
	mov r4, sb
	muls r4, r0, r4
	mov r8, r4
	adds r0, r2, r1
	adds r4, r0, r6
	str r4, [sp]
	adds r0, r0, r3
	str r0, [sp, #4]
	add r2, r8
	adds r0, r2, r3
	str r0, [sp, #8]
	adds r2, r2, r6
	str r2, [sp, #0xc]
	adds r1, r5, r1
	adds r0, r1, r6
	str r0, [sp, #0x10]
	adds r1, r1, r3
	str r1, [sp, #0x14]
	add r5, r8
	adds r3, r5, r3
	str r3, [sp, #0x18]
	adds r5, r5, r6
	str r5, [sp, #0x1c]
	movs r5, #0
	mov sb, r5
	ldr r0, _08008318
	ldr r0, [r0]
	lsls r4, r4, #1
	adds r4, r4, r0
	ldrh r2, [r4]
	str r2, [sp, #0x20]
	add r0, sp, #0x20
	mov r8, r0
	ldr r1, _0800831C
	cmp r2, r1
	beq _080080EA
	ldr r0, _08008320
	ldr r1, [r0]
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldrh r3, [r0]
	cmp r3, #0
	beq _080080EA
	adds r6, r0, #0
	add r2, sp, #0x180
	add r4, sp, #0x40
	mov ip, r4
	adds r7, r3, #0
_080080BC:
	ldrh r5, [r6, #2]
	asrs r0, r5, #3
	movs r3, #7
	bics r3, r5
	movs r4, #1
	lsls r4, r3
	mov r3, ip
	adds r1, r3, r0
	ldrb r0, [r1]
	ands r0, r4
	cmp r0, #0
	bne _080080E2
	strh r5, [r2]
	adds r2, #2
	movs r5, #1
	add sb, r5
	ldrb r0, [r1]
	orrs r4, r0
	strb r4, [r1]
_080080E2:
	adds r6, #2
	subs r7, #1
	cmp r7, #0
	bne _080080BC
_080080EA:
	ldr r0, [sp, #4]
	ldr r2, _08008318
	ldr r1, [r2]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r3, [r0]
	mov r0, r8
	str r3, [r0, #4]
	ldr r1, _0800831C
	cmp r3, r1
	beq _08008154
	ldr r0, [sp, #0x20]
	cmp r3, r0
	beq _08008154
	ldr r0, _08008320
	ldr r1, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldrh r3, [r0]
	cmp r3, #0
	beq _08008154
	adds r6, r0, #0
	add r1, sp, #0x180
	mov r2, sb
	lsls r0, r2, #1
	adds r1, r1, r0
	movs r4, #1
	mov ip, r4
	add r2, sp, #0x40
	adds r7, r3, #0
_08008128:
	ldrh r5, [r6, #2]
	asrs r0, r5, #3
	movs r3, #7
	bics r3, r5
	mov r4, ip
	lsls r4, r3
	adds r3, r2, r0
	ldrb r0, [r3]
	ands r0, r4
	cmp r0, #0
	bne _0800814C
	strh r5, [r1]
	adds r1, #2
	movs r5, #1
	add sb, r5
	ldrb r0, [r3]
	orrs r4, r0
	strb r4, [r3]
_0800814C:
	adds r6, #2
	subs r7, #1
	cmp r7, #0
	bne _08008128
_08008154:
	ldr r0, [sp, #8]
	ldr r2, _08008318
	ldr r1, [r2]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r3, [r0]
	mov r4, r8
	str r3, [r4, #8]
	ldr r5, _0800831C
	cmp r3, r5
	beq _080081C4
	ldr r0, [r4, #4]
	cmp r3, r0
	beq _080081C4
	ldr r0, [sp, #0x20]
	cmp r3, r0
	beq _080081C4
	ldr r0, _08008320
	ldr r1, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldrh r3, [r0]
	cmp r3, #0
	beq _080081C4
	adds r6, r0, #0
	add r1, sp, #0x180
	mov r2, sb
	lsls r0, r2, #1
	adds r1, r1, r0
	movs r4, #1
	mov ip, r4
	add r2, sp, #0x40
	adds r7, r3, #0
_08008198:
	ldrh r5, [r6, #2]
	asrs r0, r5, #3
	movs r3, #7
	bics r3, r5
	mov r4, ip
	lsls r4, r3
	adds r3, r2, r0
	ldrb r0, [r3]
	ands r0, r4
	cmp r0, #0
	bne _080081BC
	strh r5, [r1]
	adds r1, #2
	movs r5, #1
	add sb, r5
	ldrb r0, [r3]
	orrs r4, r0
	strb r4, [r3]
_080081BC:
	adds r6, #2
	subs r7, #1
	cmp r7, #0
	bne _08008198
_080081C4:
	ldr r0, [sp, #0xc]
	ldr r2, _08008318
	ldr r1, [r2]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r3, [r0]
	mov r4, r8
	str r3, [r4, #0xc]
	ldr r5, _0800831C
	cmp r3, r5
	beq _0800823A
	ldr r0, [r4, #8]
	cmp r3, r0
	beq _0800823A
	ldr r0, [r4, #4]
	cmp r3, r0
	beq _0800823A
	ldr r0, [sp, #0x20]
	cmp r3, r0
	beq _0800823A
	ldr r0, _08008320
	ldr r1, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldrh r3, [r0]
	cmp r3, #0
	beq _0800823A
	adds r6, r0, #0
	add r1, sp, #0x180
	mov r2, sb
	lsls r0, r2, #1
	adds r1, r1, r0
	movs r4, #1
	mov ip, r4
	add r2, sp, #0x40
	adds r7, r3, #0
_0800820E:
	ldrh r5, [r6, #2]
	asrs r0, r5, #3
	movs r3, #7
	bics r3, r5
	mov r4, ip
	lsls r4, r3
	adds r3, r2, r0
	ldrb r0, [r3]
	ands r0, r4
	cmp r0, #0
	bne _08008232
	strh r5, [r1]
	adds r1, #2
	movs r5, #1
	add sb, r5
	ldrb r0, [r3]
	orrs r4, r0
	strb r4, [r3]
_08008232:
	adds r6, #2
	subs r7, #1
	cmp r7, #0
	bne _0800820E
_0800823A:
	ldr r0, [sp, #0x10]
	ldr r2, _08008318
	ldr r1, [r2]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r3, [r0]
	mov r4, r8
	str r3, [r4, #0x10]
	ldr r5, _0800831C
	cmp r3, r5
	beq _080082B6
	ldr r0, [r4, #0xc]
	cmp r3, r0
	beq _080082B6
	ldr r0, [r4, #8]
	cmp r3, r0
	beq _080082B6
	ldr r0, [r4, #4]
	cmp r3, r0
	beq _080082B6
	ldr r0, [sp, #0x20]
	cmp r3, r0
	beq _080082B6
	ldr r0, _08008320
	ldr r1, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldrh r3, [r0]
	cmp r3, #0
	beq _080082B6
	adds r6, r0, #0
	add r1, sp, #0x180
	mov r2, sb
	lsls r0, r2, #1
	adds r1, r1, r0
	movs r4, #1
	mov ip, r4
	add r2, sp, #0x40
	adds r7, r3, #0
_0800828A:
	ldrh r5, [r6, #2]
	asrs r0, r5, #3
	movs r3, #7
	bics r3, r5
	mov r4, ip
	lsls r4, r3
	adds r3, r2, r0
	ldrb r0, [r3]
	ands r0, r4
	cmp r0, #0
	bne _080082AE
	strh r5, [r1]
	adds r1, #2
	movs r5, #1
	add sb, r5
	ldrb r0, [r3]
	orrs r4, r0
	strb r4, [r3]
_080082AE:
	adds r6, #2
	subs r7, #1
	cmp r7, #0
	bne _0800828A
_080082B6:
	ldr r0, [sp, #0x14]
	ldr r2, _08008318
	ldr r1, [r2]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r3, [r0]
	mov r4, r8
	str r3, [r4, #0x14]
	ldr r5, _0800831C
	cmp r3, r5
	beq _08008364
	ldr r0, [r4, #0x10]
	cmp r3, r0
	beq _08008364
	ldr r0, [r4, #0xc]
	cmp r3, r0
	beq _08008364
	ldr r0, [r4, #8]
	cmp r3, r0
	beq _08008364
	ldr r0, [r4, #4]
	cmp r3, r0
	beq _08008364
	ldr r0, [sp, #0x20]
	cmp r3, r0
	beq _08008364
	ldr r0, _08008320
	ldr r1, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldrh r3, [r0]
	cmp r3, #0
	b _08008324
	.align 2, 0
_080082FC: .4byte 0xFFFFFD28
_08008300: .4byte 0xFFFD0000
_08008304: .4byte 0x030028D8
_08008308: .4byte 0x030028DC
_0800830C: .4byte 0x030028E0
_08008310: .4byte 0x030028E4
_08008314: .4byte 0x030028E8
_08008318: .4byte 0x030028F0
_0800831C: .4byte 0x0000FFFF
_08008320: .4byte 0x030028F4
_08008324:
	beq _08008364
	adds r6, r0, #0
	add r1, sp, #0x180
	mov r2, sb
	lsls r0, r2, #1
	adds r1, r1, r0
	movs r4, #1
	mov ip, r4
	add r2, sp, #0x40
	adds r7, r3, #0
_08008338:
	ldrh r5, [r6, #2]
	asrs r0, r5, #3
	movs r3, #7
	bics r3, r5
	mov r4, ip
	lsls r4, r3
	adds r3, r2, r0
	ldrb r0, [r3]
	ands r0, r4
	cmp r0, #0
	bne _0800835C
	strh r5, [r1]
	adds r1, #2
	movs r5, #1
	add sb, r5
	ldrb r0, [r3]
	orrs r4, r0
	strb r4, [r3]
_0800835C:
	adds r6, #2
	subs r7, #1
	cmp r7, #0
	bne _08008338
_08008364:
	ldr r0, [sp, #0x18]
	ldr r2, _08008580
	ldr r1, [r2]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r3, [r0]
	mov r4, r8
	str r3, [r4, #0x18]
	ldr r5, _08008584
	cmp r3, r5
	beq _080083EC
	ldr r0, [r4, #0x14]
	cmp r3, r0
	beq _080083EC
	ldr r0, [r4, #0x10]
	cmp r3, r0
	beq _080083EC
	ldr r0, [r4, #0xc]
	cmp r3, r0
	beq _080083EC
	ldr r0, [r4, #8]
	cmp r3, r0
	beq _080083EC
	ldr r0, [r4, #4]
	cmp r3, r0
	beq _080083EC
	ldr r0, [sp, #0x20]
	cmp r3, r0
	beq _080083EC
	ldr r0, _08008588
	ldr r1, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldrh r3, [r0]
	cmp r3, #0
	beq _080083EC
	adds r6, r0, #0
	add r1, sp, #0x180
	mov r2, sb
	lsls r0, r2, #1
	adds r1, r1, r0
	movs r4, #1
	mov ip, r4
	add r2, sp, #0x40
	adds r7, r3, #0
_080083C0:
	ldrh r5, [r6, #2]
	asrs r0, r5, #3
	movs r3, #7
	bics r3, r5
	mov r4, ip
	lsls r4, r3
	adds r3, r2, r0
	ldrb r0, [r3]
	ands r0, r4
	cmp r0, #0
	bne _080083E4
	strh r5, [r1]
	adds r1, #2
	movs r5, #1
	add sb, r5
	ldrb r0, [r3]
	orrs r4, r0
	strb r4, [r3]
_080083E4:
	adds r6, #2
	subs r7, #1
	cmp r7, #0
	bne _080083C0
_080083EC:
	ldr r0, [sp, #0x1c]
	ldr r2, _08008580
	ldr r1, [r2]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r2, [r0]
	mov r3, r8
	str r2, [r3, #0x1c]
	ldr r4, _08008584
	cmp r2, r4
	beq _0800847E
	ldr r0, [r3, #0x18]
	cmp r2, r0
	beq _0800847E
	ldr r0, [r3, #0x14]
	cmp r2, r0
	beq _0800847E
	ldr r0, [r3, #0x10]
	cmp r2, r0
	beq _0800847E
	ldr r0, [r3, #0xc]
	cmp r2, r0
	beq _0800847E
	ldr r0, [r3, #8]
	cmp r2, r0
	beq _0800847E
	ldr r0, [r3, #4]
	cmp r2, r0
	beq _0800847E
	ldr r0, [sp, #0x20]
	cmp r2, r0
	beq _0800847E
	ldr r0, _08008588
	ldr r1, [r0]
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldrh r3, [r0]
	cmp r3, #0
	beq _0800847E
	movs r5, #7
	mov ip, r5
	adds r2, r0, #0
	add r1, sp, #0x180
	mov r4, sb
	lsls r0, r4, #1
	adds r1, r1, r0
	movs r5, #1
	mov r8, r5
	add r6, sp, #0x40
	adds r7, r3, #0
_08008452:
	ldrh r5, [r2, #2]
	asrs r0, r5, #3
	mov r3, ip
	bics r3, r5
	mov r4, r8
	lsls r4, r3
	adds r3, r6, r0
	ldrb r0, [r3]
	ands r0, r4
	cmp r0, #0
	bne _08008476
	strh r5, [r1]
	adds r1, #2
	movs r0, #1
	add sb, r0
	ldrb r0, [r3]
	orrs r4, r0
	strb r4, [r3]
_08008476:
	adds r2, #2
	subs r7, #1
	cmp r7, #0
	bne _08008452
_0800847E:
	mov r1, sb
	cmp r1, #0x5f
	ble _08008488
	.2byte 0xEE00, 0xEE00
_08008488:
	movs r2, #0
	str r2, [sp, #0x2bc]
	movs r7, #0
	mov r3, sb
	cmp r3, #0
	bne _08008496
	b _080085D4
_08008496:
	movs r4, #0x90
	lsls r4, r4, #2
	add r4, sp
	str r4, [sp, #0x2c4]
	movs r5, #0x93
	lsls r5, r5, #2
	add r5, sp
	str r5, [sp, #0x2c8]
	movs r0, #0
	str r0, [sp, #0x2cc]
_080084AA:
	ldr r2, _0800858C
	add r0, sp, #0x180
	lsls r1, r7, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, [r2]
	adds r5, r1, r0
	adds r7, #1
	movs r4, #1
	ldrb r1, [r5, #1]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080084EA
	ldrb r0, [r5, #0x18]
	movs r2, #0x16
	ldrsh r1, [r5, r2]
	bl sub_80342CC
	cmp r0, #0
	bne _080084E8
	ldrb r0, [r5, #0x19]
	ldrb r1, [r5, #0x1a]
	ldrb r2, [r5, #0x1b]
	bl sub_8034388
	cmp r0, #0
	bne _080084EA
_080084E8:
	movs r4, #0
_080084EA:
	movs r3, #1
	rsbs r3, r3, #0
	add sb, r3
	cmp r4, #0
	beq _080085CC
	movs r4, #8
	ldrsh r0, [r5, r4]
	lsls r0, r0, #0x10
	ldr r1, [sp, #0x2c4]
	str r0, [r1]
	movs r2, #0xa
	ldrsh r0, [r5, r2]
	lsls r0, r0, #0x10
	str r0, [r1, #4]
	movs r3, #0xc
	ldrsh r0, [r5, r3]
	lsls r0, r0, #0x10
	str r0, [r1, #8]
	movs r4, #0xe
	ldrsh r0, [r5, r4]
	lsls r0, r0, #0x10
	ldr r1, [sp, #0x2c8]
	str r0, [r1]
	movs r2, #0x10
	ldrsh r0, [r5, r2]
	lsls r0, r0, #0x10
	str r0, [r1, #4]
	movs r3, #0x12
	ldrsh r0, [r5, r3]
	lsls r0, r0, #0x10
	str r0, [r1, #8]
	ldr r0, [sp, #0x2c4]
	ldr r1, [sp, #0x2c8]
	add r2, sp, #0x258
	add r3, sp, #0x2a0
	bl sub_8003964
	cmp r0, #0
	beq _080085CC
	ldrb r1, [r5]
	cmp r1, #0
	beq _080085CC
	movs r4, #0
	mov r8, r4
	add r0, sp, #0x80
	ldr r2, [sp, #0x2cc]
	adds r3, r0, r2
	adds r6, r1, #0
	add r1, sp, #0x100
	ldr r4, [sp, #0x2bc]
	lsls r0, r4, #2
	adds r2, r1, r0
_08008552:
	ldr r0, [r5, #4]
	mov r1, r8
	adds r4, r0, r1
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq _0800856E
	cmp r0, #2
	beq _0800856E
	cmp r0, #4
	beq _0800856E
	cmp r0, #9
	beq _0800856E
	cmp r0, #0xa
	bne _08008590
_0800856E:
	stm r3!, {r4}
	stm r2!, {r5}
	ldr r4, [sp, #0x2cc]
	adds r4, #4
	str r4, [sp, #0x2cc]
	ldr r0, [sp, #0x2bc]
	adds r0, #1
	str r0, [sp, #0x2bc]
	b _080085C2
	.align 2, 0
_08008580: .4byte 0x030028F0
_08008584: .4byte 0x0000FFFF
_08008588: .4byte 0x030028F4
_0800858C: .4byte 0x030028F8
_08008590:
	adds r0, r4, #4
	ldr r1, [sp, #0x2b8]
	str r2, [sp, #0x2d0]
	str r3, [sp, #0x2d4]
	bl sub_8003954
	ldr r2, [sp, #0x2d0]
	ldr r3, [sp, #0x2d4]
	cmp r0, #0
	bgt _080085C2
	ldrb r0, [r4, #1]
	cmp r0, #1
	beq _080085B2
	cmp r0, #6
	beq _080085B2
	cmp r0, #8
	bne _080085C2
_080085B2:
	stm r3!, {r4}
	stm r2!, {r5}
	ldr r1, [sp, #0x2cc]
	adds r1, #4
	str r1, [sp, #0x2cc]
	ldr r4, [sp, #0x2bc]
	adds r4, #1
	str r4, [sp, #0x2bc]
_080085C2:
	movs r0, #0x24
	add r8, r0
	subs r6, #1
	cmp r6, #0
	bne _08008552
_080085CC:
	mov r1, sb
	cmp r1, #0
	beq _080085D4
	b _080084AA
_080085D4:
	ldr r2, [sp, #0x2bc]
	cmp r2, #0x1f
	ble _080085DE
	.2byte 0xEE00, 0xEE00
_080085DE:
	movs r6, #0
	mov r3, sl
	strb r6, [r3]
	movs r7, #0
	ldr r4, [sp, #0x2bc]
	cmp r6, r4
	blt _080085EE
	b _08008712
_080085EE:
	ldr r5, _08008660
	mov r8, r5
	movs r0, #0
	mov sb, r0
_080085F6:
	add r0, sp, #0x100
	lsls r1, r7, #2
	adds r0, r0, r1
	ldr r5, [r0]
	add r0, sp, #0x80
	adds r0, r0, r1
	ldr r4, [r0]
	add r2, sp, #0x258
	ldrb r0, [r4, #0x1c]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r2, r1
	ldrb r3, [r4, #0x1d]
	lsls r0, r3, #1
	adds r0, r0, r3
	lsls r0, r0, #2
	adds r2, r2, r0
	adds r0, r4, #0
	bl sub_08008F64
	cmp r0, #0
	beq _08008708
	cmp r6, #0
	beq _08008630
	mov r1, r8
	ldrb r0, [r1]
	cmp r0, #0
	beq _08008708
_08008630:
	movs r6, #1
	mov r2, sl
	strb r6, [r2]
	ldrb r0, [r5, #1]
	strb r0, [r2, #1]
	ldrb r0, [r4, #1]
	strb r0, [r2, #2]
	ldrb r0, [r5, #2]
	lsrs r0, r0, #6
	movs r1, #3
	subs r2, r1, r0
	mov r3, sl
	strb r2, [r3, #3]
	ldrb r1, [r5, #2]
	movs r0, #0x3f
	ands r0, r1
	strb r0, [r3, #4]
	ldrb r0, [r5, #3]
	strb r0, [r3, #5]
	ldrb r1, [r4, #2]
	cmp r1, #0
	bne _08008664
	adds r0, r2, #0
	b _08008668
	.align 2, 0
_08008660: .4byte 0x03002A4C
_08008664:
	movs r0, #4
	subs r0, r0, r1
_08008668:
	mov r1, sl
	strb r0, [r1, #6]
	ldr r2, [r4, #4]
	str r2, [r1, #0xc]
	ldr r1, [r4, #8]
	mov r3, sl
	str r1, [r3, #0x10]
	ldr r0, [r4, #0xc]
	str r0, [r3, #0x14]
	ldr r0, [r4, #0x14]
	str r0, [r3, #0x28]
	ldr r0, [r4, #0x18]
	str r0, [r3, #0x2c]
	cmp r1, #0
	beq _080086B0
	adds r0, r2, #0
	bl sub_800392C
	rsbs r0, r0, #0
	mov r1, sl
	str r0, [r1, #0x1c]
	ldr r0, [r1, #0x14]
	ldr r1, [r1, #0x10]
	bl sub_800392C
	rsbs r0, r0, #0
	mov r2, sl
	str r0, [r2, #0x20]
	ldr r0, [r4, #0x10]
	ldr r1, [r2, #0x10]
	bl sub_800392C
	rsbs r0, r0, #0
	mov r3, sl
	str r0, [r3, #0x24]
	b _080086B8
_080086B0:
	mov r0, sl
	str r1, [r0, #0x1c]
	str r1, [r0, #0x20]
	str r1, [r0, #0x24]
_080086B8:
	ldrh r1, [r5, #0x14]
	mov r0, sl
	adds r0, #0x44
	movs r3, #0
	strh r1, [r0]
	ldrh r0, [r5, #0x16]
	mov r1, sl
	adds r1, #0x46
	strh r0, [r1]
	ldrb r0, [r5, #0x18]
	adds r1, #4
	strb r0, [r1]
	ldrb r0, [r5, #0x19]
	adds r1, #1
	strb r0, [r1]
	ldrb r1, [r5, #0x1a]
	mov r0, sl
	adds r0, #0x4c
	strb r1, [r0]
	ldrb r0, [r5, #0x1b]
	mov r2, sl
	adds r2, #0x4d
	strb r0, [r2]
	mov r1, sb
	mov r2, sl
	str r1, [r2, #0x30]
	str r1, [r2, #0x34]
	ldrb r0, [r4, #1]
	cmp r0, #1
	beq _080086FC
	cmp r0, #6
	beq _080086FC
	cmp r0, #8
	bne _08008704
_080086FC:
	movs r0, #1
	mov r3, r8
	strb r0, [r3]
	b _08008708
_08008704:
	mov r4, r8
	strb r3, [r4]
_08008708:
	adds r7, #1
	ldr r5, [sp, #0x2bc]
	cmp r7, r5
	bge _08008712
	b _080085F6
_08008712:
	adds r0, r6, #0
	movs r3, #0xb6
	lsls r3, r3, #2
	add sp, r3
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	.thumb
	.global sub_08008728
sub_08008728: @ 0x08008728
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r4, _08008A84
	add sp, r4
	str r0, [sp, #0x270]
	str r1, [sp, #0x274]
	mov sl, r2
	add r0, sp, #0x40
	mov sb, r0
	movs r0, #0
	mov r1, sb
	movs r2, #0x10
	bl DmaFill32
	ldr r0, _08008A88
	ldrh r0, [r0]
	mov r8, r0
	ldr r0, _08008A8C
	ldrh r0, [r0]
	mov r6, r8
	muls r6, r0, r6
	ldr r0, _08008A90
	ldr r1, [sp, #0x270]
	ldr r5, [r1]
	ldr r0, [r0]
	adds r5, r5, r0
	asrs r5, r5, #0x16
	ldr r3, [r1, #0x48]
	adds r3, r3, r0
	asrs r3, r3, #0x16
	ldr r1, _08008A94
	ldr r2, [sp, #0x270]
	ldr r0, [r2, #4]
	ldr r1, [r1]
	adds r0, r0, r1
	asrs r0, r0, #0x16
	adds r2, r0, #0
	muls r2, r6, r2
	ldr r4, [sp, #0x270]
	ldr r0, [r4, #0x4c]
	adds r0, r0, r1
	asrs r0, r0, #0x16
	adds r4, r0, #0
	muls r4, r6, r4
	ldr r1, _08008A98
	ldr r6, [sp, #0x270]
	ldr r0, [r6, #8]
	ldr r6, [r1]
	adds r0, r0, r6
	asrs r0, r0, #0x16
	mov r1, r8
	muls r1, r0, r1
	ldr r7, [sp, #0x270]
	ldr r0, [r7, #0x50]
	adds r0, r0, r6
	asrs r0, r0, #0x16
	mov r6, r8
	muls r6, r0, r6
	mov r8, r6
	adds r0, r2, r1
	adds r6, r0, r5
	str r6, [sp]
	adds r0, r0, r3
	str r0, [sp, #4]
	add r2, r8
	adds r0, r2, r3
	str r0, [sp, #8]
	adds r2, r2, r5
	str r2, [sp, #0xc]
	adds r1, r4, r1
	adds r0, r1, r5
	str r0, [sp, #0x10]
	adds r1, r1, r3
	str r1, [sp, #0x14]
	add r4, r8
	adds r3, r4, r3
	str r3, [sp, #0x18]
	adds r4, r4, r5
	str r4, [sp, #0x1c]
	movs r7, #0
	str r7, [sp, #0x278]
	ldr r0, _08008A9C
	ldr r0, [r0]
	lsls r6, r6, #1
	adds r6, r6, r0
	ldrh r2, [r6]
	str r2, [sp, #0x20]
	add r0, sp, #0x20
	mov r8, r0
	ldr r1, _08008AA0
	cmp r2, r1
	beq _08008834
	ldr r0, _08008AA4
	ldr r1, [r0]
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldrh r3, [r0]
	cmp r3, #0
	beq _08008834
	adds r7, r0, #0
	add r2, sp, #0x180
	movs r4, #1
	mov ip, r4
	add r6, sp, #0x40
	mov sb, r6
	adds r6, r3, #0
_08008804:
	ldrh r5, [r7, #2]
	asrs r0, r5, #3
	movs r3, #7
	bics r3, r5
	mov r4, ip
	lsls r4, r3
	mov r3, sb
	adds r1, r3, r0
	ldrb r0, [r1]
	ands r0, r4
	cmp r0, #0
	bne _0800882C
	strh r5, [r2]
	adds r2, #2
	ldr r0, [sp, #0x278]
	adds r0, #1
	str r0, [sp, #0x278]
	ldrb r0, [r1]
	orrs r4, r0
	strb r4, [r1]
_0800882C:
	adds r7, #2
	subs r6, #1
	cmp r6, #0
	bne _08008804
_08008834:
	ldr r0, [sp, #4]
	ldr r2, _08008A9C
	ldr r1, [r2]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r3, [r0]
	mov r1, r8
	str r3, [r1, #4]
	ldr r2, _08008AA0
	cmp r3, r2
	beq _080088A4
	ldr r0, [sp, #0x20]
	cmp r3, r0
	beq _080088A4
	ldr r0, _08008AA4
	ldr r1, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldrh r3, [r0]
	cmp r3, #0
	beq _080088A4
	movs r4, #7
	mov ip, r4
	adds r2, r0, #0
	add r1, sp, #0x180
	ldr r6, [sp, #0x278]
	lsls r0, r6, #1
	adds r1, r1, r0
	movs r7, #1
	mov sb, r7
	add r7, sp, #0x40
	adds r6, r3, #0
_08008876:
	ldrh r5, [r2, #2]
	asrs r0, r5, #3
	mov r3, ip
	bics r3, r5
	mov r4, sb
	lsls r4, r3
	adds r3, r7, r0
	ldrb r0, [r3]
	ands r0, r4
	cmp r0, #0
	bne _0800889C
	strh r5, [r1]
	adds r1, #2
	ldr r0, [sp, #0x278]
	adds r0, #1
	str r0, [sp, #0x278]
	ldrb r0, [r3]
	orrs r4, r0
	strb r4, [r3]
_0800889C:
	adds r2, #2
	subs r6, #1
	cmp r6, #0
	bne _08008876
_080088A4:
	ldr r0, [sp, #8]
	ldr r2, _08008A9C
	ldr r1, [r2]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r3, [r0]
	mov r4, r8
	str r3, [r4, #8]
	ldr r6, _08008AA0
	cmp r3, r6
	beq _0800891A
	ldr r0, [r4, #4]
	cmp r3, r0
	beq _0800891A
	ldr r0, [sp, #0x20]
	cmp r3, r0
	beq _0800891A
	ldr r0, _08008AA4
	ldr r1, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldrh r3, [r0]
	cmp r3, #0
	beq _0800891A
	movs r7, #7
	mov ip, r7
	adds r2, r0, #0
	add r1, sp, #0x180
	ldr r4, [sp, #0x278]
	lsls r0, r4, #1
	adds r1, r1, r0
	movs r6, #1
	mov sb, r6
	add r7, sp, #0x40
	adds r6, r3, #0
_080088EC:
	ldrh r5, [r2, #2]
	asrs r0, r5, #3
	mov r3, ip
	bics r3, r5
	mov r4, sb
	lsls r4, r3
	adds r3, r7, r0
	ldrb r0, [r3]
	ands r0, r4
	cmp r0, #0
	bne _08008912
	strh r5, [r1]
	adds r1, #2
	ldr r0, [sp, #0x278]
	adds r0, #1
	str r0, [sp, #0x278]
	ldrb r0, [r3]
	orrs r4, r0
	strb r4, [r3]
_08008912:
	adds r2, #2
	subs r6, #1
	cmp r6, #0
	bne _080088EC
_0800891A:
	ldr r0, [sp, #0xc]
	ldr r2, _08008A9C
	ldr r1, [r2]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r3, [r0]
	mov r4, r8
	str r3, [r4, #0xc]
	ldr r6, _08008AA0
	cmp r3, r6
	beq _08008996
	ldr r0, [r4, #8]
	cmp r3, r0
	beq _08008996
	ldr r0, [r4, #4]
	cmp r3, r0
	beq _08008996
	ldr r0, [sp, #0x20]
	cmp r3, r0
	beq _08008996
	ldr r0, _08008AA4
	ldr r1, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldrh r3, [r0]
	cmp r3, #0
	beq _08008996
	movs r7, #7
	mov ip, r7
	adds r2, r0, #0
	add r1, sp, #0x180
	ldr r4, [sp, #0x278]
	lsls r0, r4, #1
	adds r1, r1, r0
	movs r6, #1
	mov sb, r6
	add r7, sp, #0x40
	adds r6, r3, #0
_08008968:
	ldrh r5, [r2, #2]
	asrs r0, r5, #3
	mov r3, ip
	bics r3, r5
	mov r4, sb
	lsls r4, r3
	adds r3, r7, r0
	ldrb r0, [r3]
	ands r0, r4
	cmp r0, #0
	bne _0800898E
	strh r5, [r1]
	adds r1, #2
	ldr r0, [sp, #0x278]
	adds r0, #1
	str r0, [sp, #0x278]
	ldrb r0, [r3]
	orrs r4, r0
	strb r4, [r3]
_0800898E:
	adds r2, #2
	subs r6, #1
	cmp r6, #0
	bne _08008968
_08008996:
	ldr r0, [sp, #0x10]
	ldr r2, _08008A9C
	ldr r1, [r2]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r3, [r0]
	mov r4, r8
	str r3, [r4, #0x10]
	ldr r6, _08008AA0
	cmp r3, r6
	beq _08008A18
	ldr r0, [r4, #0xc]
	cmp r3, r0
	beq _08008A18
	ldr r0, [r4, #8]
	cmp r3, r0
	beq _08008A18
	ldr r0, [r4, #4]
	cmp r3, r0
	beq _08008A18
	ldr r0, [sp, #0x20]
	cmp r3, r0
	beq _08008A18
	ldr r0, _08008AA4
	ldr r1, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldrh r3, [r0]
	cmp r3, #0
	beq _08008A18
	movs r7, #7
	mov ip, r7
	adds r2, r0, #0
	add r1, sp, #0x180
	ldr r4, [sp, #0x278]
	lsls r0, r4, #1
	adds r1, r1, r0
	movs r6, #1
	mov sb, r6
	add r7, sp, #0x40
	adds r6, r3, #0
_080089EA:
	ldrh r5, [r2, #2]
	asrs r0, r5, #3
	mov r3, ip
	bics r3, r5
	mov r4, sb
	lsls r4, r3
	adds r3, r7, r0
	ldrb r0, [r3]
	ands r0, r4
	cmp r0, #0
	bne _08008A10
	strh r5, [r1]
	adds r1, #2
	ldr r0, [sp, #0x278]
	adds r0, #1
	str r0, [sp, #0x278]
	ldrb r0, [r3]
	orrs r4, r0
	strb r4, [r3]
_08008A10:
	adds r2, #2
	subs r6, #1
	cmp r6, #0
	bne _080089EA
_08008A18:
	ldr r0, [sp, #0x14]
	ldr r2, _08008A9C
	ldr r1, [r2]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r3, [r0]
	mov r4, r8
	str r3, [r4, #0x14]
	ldr r6, _08008AA0
	cmp r3, r6
	beq _08008AC8
	ldr r0, [r4, #0x10]
	cmp r3, r0
	beq _08008AC8
	ldr r0, [r4, #0xc]
	cmp r3, r0
	beq _08008AC8
	ldr r0, [r4, #8]
	cmp r3, r0
	beq _08008AC8
	ldr r0, [r4, #4]
	cmp r3, r0
	beq _08008AC8
	ldr r0, [sp, #0x20]
	cmp r3, r0
	beq _08008AC8
	ldr r0, _08008AA4
	ldr r1, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldrh r3, [r0]
	cmp r3, #0
	beq _08008AC8
	movs r7, #7
	mov ip, r7
	adds r2, r0, #0
	add r1, sp, #0x180
	ldr r4, [sp, #0x278]
	lsls r0, r4, #1
	adds r1, r1, r0
	movs r6, #1
	mov sb, r6
	add r7, sp, #0x40
	adds r6, r3, #0
_08008A72:
	ldrh r5, [r2, #2]
	asrs r0, r5, #3
	mov r3, ip
	bics r3, r5
	mov r4, sb
	lsls r4, r3
	adds r3, r7, r0
	b _08008AA8
	.align 2, 0
_08008A84: .4byte 0xFFFFFD78
_08008A88: .4byte 0x030028D8
_08008A8C: .4byte 0x030028DC
_08008A90: .4byte 0x030028E0
_08008A94: .4byte 0x030028E4
_08008A98: .4byte 0x030028E8
_08008A9C: .4byte 0x030028F0
_08008AA0: .4byte 0x0000FFFF
_08008AA4: .4byte 0x030028F4
_08008AA8:
	ldrb r0, [r3]
	ands r0, r4
	cmp r0, #0
	bne _08008AC0
	strh r5, [r1]
	adds r1, #2
	ldr r0, [sp, #0x278]
	adds r0, #1
	str r0, [sp, #0x278]
	ldrb r0, [r3]
	orrs r4, r0
	strb r4, [r3]
_08008AC0:
	adds r2, #2
	subs r6, #1
	cmp r6, #0
	bne _08008A72
_08008AC8:
	ldr r0, [sp, #0x18]
	ldr r2, _08008D98
	ldr r1, [r2]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r3, [r0]
	mov r4, r8
	str r3, [r4, #0x18]
	ldr r6, _08008D9C
	cmp r3, r6
	beq _08008B56
	ldr r0, [r4, #0x14]
	cmp r3, r0
	beq _08008B56
	ldr r0, [r4, #0x10]
	cmp r3, r0
	beq _08008B56
	ldr r0, [r4, #0xc]
	cmp r3, r0
	beq _08008B56
	ldr r0, [r4, #8]
	cmp r3, r0
	beq _08008B56
	ldr r0, [r4, #4]
	cmp r3, r0
	beq _08008B56
	ldr r0, [sp, #0x20]
	cmp r3, r0
	beq _08008B56
	ldr r0, _08008DA0
	ldr r1, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldrh r3, [r0]
	cmp r3, #0
	beq _08008B56
	movs r7, #7
	mov ip, r7
	adds r2, r0, #0
	add r1, sp, #0x180
	ldr r4, [sp, #0x278]
	lsls r0, r4, #1
	adds r1, r1, r0
	movs r6, #1
	mov sb, r6
	add r7, sp, #0x40
	adds r6, r3, #0
_08008B28:
	ldrh r5, [r2, #2]
	asrs r0, r5, #3
	mov r3, ip
	bics r3, r5
	mov r4, sb
	lsls r4, r3
	adds r3, r7, r0
	ldrb r0, [r3]
	ands r0, r4
	cmp r0, #0
	bne _08008B4E
	strh r5, [r1]
	adds r1, #2
	ldr r0, [sp, #0x278]
	adds r0, #1
	str r0, [sp, #0x278]
	ldrb r0, [r3]
	orrs r4, r0
	strb r4, [r3]
_08008B4E:
	adds r2, #2
	subs r6, #1
	cmp r6, #0
	bne _08008B28
_08008B56:
	ldr r0, [sp, #0x1c]
	ldr r2, _08008D98
	ldr r1, [r2]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r2, [r0]
	mov r3, r8
	str r2, [r3, #0x1c]
	ldr r4, _08008D9C
	cmp r2, r4
	beq _08008BEA
	ldr r0, [r3, #0x18]
	cmp r2, r0
	beq _08008BEA
	ldr r0, [r3, #0x14]
	cmp r2, r0
	beq _08008BEA
	ldr r0, [r3, #0x10]
	cmp r2, r0
	beq _08008BEA
	ldr r0, [r3, #0xc]
	cmp r2, r0
	beq _08008BEA
	ldr r0, [r3, #8]
	cmp r2, r0
	beq _08008BEA
	ldr r0, [r3, #4]
	cmp r2, r0
	beq _08008BEA
	ldr r0, [sp, #0x20]
	cmp r2, r0
	beq _08008BEA
	ldr r0, _08008DA0
	ldr r1, [r0]
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldrh r3, [r0]
	cmp r3, #0
	beq _08008BEA
	movs r6, #7
	mov sb, r6
	adds r2, r0, #0
	add r1, sp, #0x180
	ldr r7, [sp, #0x278]
	lsls r0, r7, #1
	adds r1, r1, r0
	movs r0, #1
	mov r8, r0
	add r7, sp, #0x40
	adds r6, r3, #0
_08008BBC:
	ldrh r5, [r2, #2]
	asrs r0, r5, #3
	mov r3, sb
	bics r3, r5
	mov r4, r8
	lsls r4, r3
	adds r3, r7, r0
	ldrb r0, [r3]
	ands r0, r4
	cmp r0, #0
	bne _08008BE2
	strh r5, [r1]
	adds r1, #2
	ldr r0, [sp, #0x278]
	adds r0, #1
	str r0, [sp, #0x278]
	ldrb r0, [r3]
	orrs r4, r0
	strb r4, [r3]
_08008BE2:
	adds r2, #2
	subs r6, #1
	cmp r6, #0
	bne _08008BBC
_08008BEA:
	ldr r1, [sp, #0x278]
	cmp r1, #0x5f
	ble _08008BF4
	.2byte 0xEE00, 0xEE00
_08008BF4:
	movs r2, #0
	str r2, [sp, #0x27c]
	movs r6, #0
	ldr r3, [sp, #0x278]
	cmp r3, #0
	beq _08008CEE
	movs r4, #0x90
	lsls r4, r4, #2
	add r4, sp
	mov sb, r4
	movs r7, #0x93
	lsls r7, r7, #2
	add r7, sp
	mov r8, r7
_08008C10:
	add r0, sp, #0x180
	lsls r1, r6, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r2, _08008DA4
	ldr r1, [r2]
	adds r5, r1, r0
	adds r6, #1
	movs r4, #1
	ldrb r1, [r5, #1]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08008C50
	ldrb r0, [r5, #0x18]
	movs r3, #0x16
	ldrsh r1, [r5, r3]
	bl sub_80342CC
	cmp r0, #0
	bne _08008C4E
	ldrb r0, [r5, #0x19]
	ldrb r1, [r5, #0x1a]
	ldrb r2, [r5, #0x1b]
	bl sub_8034388
	cmp r0, #0
	bne _08008C50
_08008C4E:
	movs r4, #0
_08008C50:
	ldr r7, [sp, #0x278]
	subs r7, #1
	str r7, [sp, #0x280]
	cmp r4, #0
	beq _08008CE6
	movs r1, #8
	ldrsh r0, [r5, r1]
	lsls r0, r0, #0x10
	mov r2, sb
	str r0, [r2]
	movs r3, #0xa
	ldrsh r0, [r5, r3]
	lsls r0, r0, #0x10
	str r0, [r2, #4]
	movs r4, #0xc
	ldrsh r0, [r5, r4]
	lsls r0, r0, #0x10
	str r0, [r2, #8]
	movs r7, #0xe
	ldrsh r0, [r5, r7]
	lsls r0, r0, #0x10
	mov r1, r8
	str r0, [r1]
	movs r2, #0x10
	ldrsh r0, [r5, r2]
	lsls r0, r0, #0x10
	str r0, [r1, #4]
	movs r3, #0x12
	ldrsh r0, [r5, r3]
	lsls r0, r0, #0x10
	str r0, [r1, #8]
	mov r0, sb
	ldr r2, [sp, #0x270]
	adds r3, r2, #0
	adds r3, #0x48
	bl sub_8003964
	cmp r0, #0
	beq _08008CE6
	ldrb r0, [r5]
	cmp r0, #0
	beq _08008CE6
	movs r2, #0
	adds r7, r0, #0
_08008CA8:
	ldr r0, [r5, #4]
	adds r4, r0, r2
	adds r0, r4, #4
	ldr r1, [sp, #0x274]
	str r2, [sp, #0x284]
	bl sub_8003954
	ldr r2, [sp, #0x284]
	cmp r0, #0
	bgt _08008CDE
	ldrb r0, [r4, #1]
	cmp r0, #1
	beq _08008CCA
	cmp r0, #6
	beq _08008CCA
	cmp r0, #8
	bne _08008CDE
_08008CCA:
	add r0, sp, #0x80
	ldr r3, [sp, #0x27c]
	lsls r1, r3, #2
	adds r0, r0, r1
	str r4, [r0]
	add r0, sp, #0x100
	adds r0, r0, r1
	str r5, [r0]
	adds r3, #1
	str r3, [sp, #0x27c]
_08008CDE:
	adds r2, #0x24
	subs r7, #1
	cmp r7, #0
	bne _08008CA8
_08008CE6:
	ldr r4, [sp, #0x280]
	str r4, [sp, #0x278]
	cmp r4, #0
	bne _08008C10
_08008CEE:
	ldr r6, [sp, #0x27c]
	cmp r6, #0x1f
	ble _08008CF8
	.2byte 0xEE00, 0xEE00
_08008CF8:
	movs r0, #0
	mov r7, sl
	strb r0, [r7]
	movs r6, #0
	ldr r0, [sp, #0x27c]
	cmp r6, r0
	blt _08008D08
	b _08008F4C
_08008D08:
	add r7, sp, #0x258
	movs r1, #0x99
	lsls r1, r1, #2
	add r1, sp
	mov r8, r1
_08008D12:
	add r0, sp, #0x100
	lsls r1, r6, #2
	adds r0, r0, r1
	ldr r5, [r0]
	add r0, sp, #0x80
	adds r0, r0, r1
	ldr r4, [r0]
	adds r0, r4, #0
	ldr r1, [sp, #0x270]
	adds r2, r1, #0
	adds r2, #0x48
	bl sub_08008F64
	cmp r0, #0
	bne _08008D68
	adds r0, r4, #0
	ldr r1, [sp, #0x270]
	adds r1, #0x30
	ldr r2, [sp, #0x270]
	adds r2, #0x18
	bl sub_08008F64
	cmp r0, #0
	bne _08008D68
	adds r0, r4, #0
	ldr r1, [sp, #0x270]
	adds r1, #0xc
	ldr r2, [sp, #0x270]
	adds r2, #0x54
	bl sub_08008F64
	cmp r0, #0
	bne _08008D68
	adds r0, r4, #0
	ldr r1, [sp, #0x270]
	adds r1, #0x3c
	ldr r2, [sp, #0x270]
	adds r2, #0x24
	bl sub_08008F64
	cmp r0, #0
	bne _08008D68
	b _08008F42
_08008D68:
	movs r0, #1
	mov r2, sl
	strb r0, [r2]
	ldrb r0, [r5, #1]
	strb r0, [r2, #1]
	ldrb r0, [r4, #1]
	strb r0, [r2, #2]
	ldrb r0, [r5, #2]
	lsrs r0, r0, #6
	movs r1, #3
	subs r2, r1, r0
	mov r3, sl
	strb r2, [r3, #3]
	ldrb r1, [r5, #2]
	movs r0, #0x3f
	ands r0, r1
	strb r0, [r3, #4]
	ldrb r0, [r5, #3]
	strb r0, [r3, #5]
	ldrb r1, [r4, #2]
	cmp r1, #0
	bne _08008DA8
	adds r0, r2, #0
	b _08008DAC
	.align 2, 0
_08008D98: .4byte 0x030028F0
_08008D9C: .4byte 0x0000FFFF
_08008DA0: .4byte 0x030028F4
_08008DA4: .4byte 0x030028F8
_08008DA8:
	movs r0, #4
	subs r0, r0, r1
_08008DAC:
	mov r6, sl
	strb r0, [r6, #6]
	ldr r2, [r4, #4]
	str r2, [r6, #0xc]
	ldr r1, [r4, #8]
	str r1, [r6, #0x10]
	ldr r0, [r4, #0xc]
	str r0, [r6, #0x14]
	ldr r0, [r4, #0x14]
	str r0, [r6, #0x28]
	ldr r0, [r4, #0x18]
	str r0, [r6, #0x2c]
	cmp r1, #0
	beq _08008DEC
	adds r0, r2, #0
	bl sub_800392C
	rsbs r0, r0, #0
	str r0, [r6, #0x1c]
	ldr r0, [r6, #0x14]
	ldr r1, [r6, #0x10]
	bl sub_800392C
	rsbs r0, r0, #0
	str r0, [r6, #0x20]
	ldr r0, [r4, #0x10]
	ldr r1, [r6, #0x10]
	bl sub_800392C
	rsbs r0, r0, #0
	str r0, [r6, #0x24]
	b _08008DF4
_08008DEC:
	mov r0, sl
	str r1, [r0, #0x1c]
	str r1, [r0, #0x20]
	str r1, [r0, #0x24]
_08008DF4:
	ldrh r1, [r5, #0x14]
	mov r0, sl
	adds r0, #0x44
	movs r6, #0
	movs r2, #0
	strh r1, [r0]
	ldrh r0, [r5, #0x16]
	mov r1, sl
	adds r1, #0x46
	strh r0, [r1]
	ldrb r0, [r5, #0x18]
	adds r1, #4
	strb r0, [r1]
	ldrb r0, [r5, #0x19]
	adds r1, #1
	strb r0, [r1]
	ldrb r1, [r5, #0x1a]
	mov r0, sl
	adds r0, #0x4c
	strb r1, [r0]
	ldrb r0, [r5, #0x1b]
	mov r3, sl
	adds r3, #0x4d
	strb r0, [r3]
	mov r1, sl
	str r2, [r1, #0x30]
	str r2, [r1, #0x34]
	ldrb r0, [r4, #1]
	cmp r0, #1
	beq _08008E38
	cmp r0, #6
	beq _08008E38
	cmp r0, #8
	bne _08008E44
_08008E38:
	ldr r1, _08008E40
	movs r0, #1
	strb r0, [r1]
	b _08008E48
	.align 2, 0
_08008E40: .4byte 0x03002A4C
_08008E44:
	ldr r0, _08008E80
	strb r6, [r0]
_08008E48:
	ldr r1, [r4, #0x20]
	ldrb r0, [r4]
	cmp r0, #4
	bne _08008E84
	movs r2, #0xc
	ldrsh r0, [r1, r2]
	lsls r0, r0, #8
	str r0, [r7]
	movs r3, #0xe
	ldrsh r0, [r1, r3]
	lsls r0, r0, #8
	str r0, [r7, #4]
	movs r4, #0x10
	ldrsh r0, [r1, r4]
	lsls r0, r0, #8
	str r0, [r7, #8]
	movs r6, #0x12
	ldrsh r0, [r1, r6]
	lsls r0, r0, #8
	mov r7, r8
	str r0, [r7]
	movs r2, #0x14
	ldrsh r0, [r1, r2]
	lsls r0, r0, #8
	str r0, [r7, #4]
	movs r3, #0x16
	ldrsh r0, [r1, r3]
	b _08008EBE
	.align 2, 0
_08008E80: .4byte 0x03002A4C
_08008E84:
	movs r4, #2
	ldrsh r2, [r1, r4]
	movs r6, #8
	ldrsh r0, [r1, r6]
	cmp r2, r0
	bne _08008EC4
	movs r2, #0
	ldrsh r0, [r1, r2]
	lsls r0, r0, #8
	str r0, [r7]
	movs r3, #2
	ldrsh r0, [r1, r3]
	lsls r0, r0, #8
	str r0, [r7, #4]
	movs r4, #4
	ldrsh r0, [r1, r4]
	lsls r0, r0, #8
	str r0, [r7, #8]
	movs r6, #6
	ldrsh r0, [r1, r6]
	lsls r0, r0, #8
	mov r7, r8
	str r0, [r7]
	movs r2, #8
	ldrsh r0, [r1, r2]
	lsls r0, r0, #8
	str r0, [r7, #4]
	movs r3, #0xa
	ldrsh r0, [r1, r3]
_08008EBE:
	lsls r0, r0, #8
	str r0, [r7, #8]
	b _08008F32
_08008EC4:
	movs r4, #0xe
	ldrsh r0, [r1, r4]
	cmp r2, r0
	bne _08008F00
	movs r6, #0
	ldrsh r0, [r1, r6]
	lsls r0, r0, #8
	str r0, [r7]
	movs r2, #2
	ldrsh r0, [r1, r2]
	lsls r0, r0, #8
	str r0, [r7, #4]
	movs r3, #4
	ldrsh r0, [r1, r3]
	lsls r0, r0, #8
	str r0, [r7, #8]
	movs r4, #0xc
	ldrsh r0, [r1, r4]
	lsls r0, r0, #8
	mov r6, r8
	str r0, [r6]
	movs r7, #0xe
	ldrsh r0, [r1, r7]
	lsls r0, r0, #8
	str r0, [r6, #4]
	movs r2, #0x10
	ldrsh r0, [r1, r2]
	lsls r0, r0, #8
	str r0, [r6, #8]
	b _08008F32
_08008F00:
	movs r3, #6
	ldrsh r0, [r1, r3]
	lsls r0, r0, #8
	str r0, [r7]
	movs r4, #8
	ldrsh r0, [r1, r4]
	lsls r0, r0, #8
	str r0, [r7, #4]
	movs r6, #0xa
	ldrsh r0, [r1, r6]
	lsls r0, r0, #8
	str r0, [r7, #8]
	movs r7, #0xc
	ldrsh r0, [r1, r7]
	lsls r0, r0, #8
	mov r2, r8
	str r0, [r2]
	movs r3, #0xe
	ldrsh r0, [r1, r3]
	lsls r0, r0, #8
	str r0, [r2, #4]
	movs r4, #0x10
	ldrsh r0, [r1, r4]
	lsls r0, r0, #8
	str r0, [r2, #8]
_08008F32:
	add r0, sp, #0x264
	add r1, sp, #0x258
	mov r2, sl
	adds r2, #0x38
	bl sub_800398C
	movs r0, #1
	b _08008F4E
_08008F42:
	adds r6, #1
	ldr r0, [sp, #0x27c]
	cmp r6, r0
	bge _08008F4C
	b _08008D12
_08008F4C:
	movs r0, #0
_08008F4E:
	movs r3, #0xa2
	lsls r3, r3, #2
	add sp, r3
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

    .thumb
sub_08008F64: @ 0x08008F64
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x18
	adds r7, r0, #0
	adds r6, r1, #0
	mov r8, r2
	movs r0, #1
	mov sb, r0
	adds r4, r7, #4
	adds r0, r4, #0
	bl sub_8003954
	ldr r1, [r7, #0x10]
	adds r5, r0, r1
	adds r0, r4, #0
	mov r1, r8
	bl sub_8003954
	ldr r1, [r7, #0x10]
	adds r0, r0, r1
	cmp r5, #0
	bge _08008F98
	cmp r0, #0
	blt _08008FC2
_08008F98:
	cmp r5, #0
	ble _08008FA0
	cmp r0, #0
	bgt _08008FC2
_08008FA0:
	rsbs r5, r5, #0
	mov r0, r8
	adds r1, r6, #0
	mov r2, sp
	bl sub_800398C
	adds r0, r7, #4
	mov r1, sp
	bl sub_8003954
	adds r4, r0, #0
	bl Abs
	movs r1, #0xa0
	lsls r1, r1, #2
	cmp r0, r1
	bhi _08008FC6
_08008FC2:
	movs r0, #0
	b _0800904E
_08008FC6:
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_800392C
	adds r5, r0, #0
	mov r0, sp
	adds r1, r5, #0
	bl sub_8003994
	add r4, sp, #0xc
	adds r0, r6, #0
	mov r1, sp
	adds r2, r4, #0
	bl sub_8003984
	ldr r0, [r7, #4]
	bl Abs
	adds r6, r0, #0
	ldr r0, [r7, #8]
	bl Abs
	adds r5, r0, #0
	ldr r0, [r7, #0xc]
	bl Abs
	adds r2, r4, #0
	cmp r6, #0
	bne _08009006
	cmp r5, #0
	bne _0800900E
	b _0800903A
_08009006:
	cmp r5, #0
	bne _0800900E
	cmp r0, #0
	beq _0800901E
_0800900E:
	cmp r6, #0
	bne _08009016
	cmp r0, #0
	beq _0800902C
_08009016:
	cmp r6, r5
	blt _08009024
	cmp r6, r0
	blt _08009024
_0800901E:
	movs r0, #0x12
	mov sb, r0
	b _08009044
_08009024:
	cmp r5, r6
	blt _08009032
	cmp r5, r0
	blt _08009032
_0800902C:
	movs r0, #2
	mov sb, r0
	b _08009044
_08009032:
	cmp r0, r6
	blt _08009040
	cmp r0, r5
	blt _08009040
_0800903A:
	movs r0, #1
	mov sb, r0
	b _08009044
_08009040:
	.2byte 0xEE00, 0xEE00
_08009044:
	ldr r0, [r7, #0x20]
	ldrb r1, [r7]
	mov r3, sb
	bl sub_8003A4C
_0800904E:
	add sp, #0x18
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

    .thumb
sub_800905C: @ 0x0800905C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	mov sb, r0
	adds r7, r1, #0
	mov r8, r2
	mov sl, r3
	ldr r5, _080090EC
	adds r0, r5, #0
	bl sub_8003954
	ldr r4, _080090F0
	ldr r1, [r4]
	adds r6, r0, r1
	adds r0, r5, #0
	mov r1, r8
	bl sub_8003954
	ldr r1, [r4]
	adds r0, r0, r1
	cmp r6, #0
	bge _08009092
	cmp r0, #0
	blt _080090F8
_08009092:
	cmp r6, #0
	ble _0800909A
	cmp r0, #0
	bgt _080090F8
_0800909A:
	rsbs r6, r6, #0
	mov r0, r8
	adds r1, r7, #0
	mov r2, sp
	bl sub_800398C
	ldr r0, _080090EC
	mov r1, sp
	bl sub_8003954
	adds r4, r0, #0
	bl Abs
	movs r1, #0xa0
	lsls r1, r1, #2
	cmp r0, r1
	bls _080090F8
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_800392C
	adds r6, r0, #0
	mov r0, sp
	adds r1, r6, #0
	bl sub_8003994
	add r4, sp, #0xc
	adds r0, r7, #0
	mov r1, sp
	adds r2, r4, #0
	bl sub_8003984
	ldr r0, _080090F4
	ldr r1, [r0]
	mov r0, sb
	adds r2, r4, #0
	mov r3, sl
	bl sub_8003A4C
	b _080090FA
	.align 2, 0
_080090EC: .4byte 0x03002A58
_080090F0: .4byte 0x03002A64
_080090F4: .4byte 0x03002A68
_080090F8:
	movs r0, #0
_080090FA:
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

    .thumb
sub_0800910C: @ 0x0800910C
	push {r4, r5, r6, lr}
	ldr r4, _08009134
	ldr r0, [r4]
	bl Abs
	adds r6, r0, #0
	ldr r0, [r4, #4]
	bl Abs
	adds r5, r0, #0
	ldr r0, [r4, #8]
	bl Abs
	adds r1, r0, #0
	cmp r6, #0
	bne _08009138
	cmp r5, #0
	bne _08009140
_08009130:
	movs r0, #1
	b _0800916C
	.align 2, 0
_08009134: .4byte 0x03002A58
_08009138:
	cmp r5, #0
	bne _08009140
	cmp r1, #0
	beq _08009150
_08009140:
	cmp r6, #0
	bne _08009148
	cmp r1, #0
	beq _0800915C
_08009148:
	cmp r6, r5
	blt _08009154
	cmp r6, r1
	blt _08009154
_08009150:
	movs r0, #0x12
	b _0800916C
_08009154:
	cmp r5, r6
	blt _08009160
	cmp r5, r1
	blt _08009160
_0800915C:
	movs r0, #2
	b _0800916C
_08009160:
	cmp r1, r6
	blt _08009168
	cmp r1, r5
	bge _08009130
_08009168:
	.2byte 0xEE00, 0xEE00
_0800916C:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

    .thumb
sub_8009174: @ 0x08009174
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x18
	adds r6, r0, #0
	mov r8, r1
	adds r7, r2, #0
	adds r4, r6, #4
	adds r0, r4, #0
	bl sub_8003954
	ldr r1, [r6, #0x10]
	adds r5, r0, r1
	adds r0, r4, #0
	adds r1, r7, #0
	bl sub_8003954
	ldr r1, [r6, #0x10]
	adds r0, r0, r1
	cmp r5, #0
	bge _080091A2
	cmp r0, #0
	blt _080091F8
_080091A2:
	cmp r5, #0
	ble _080091AA
	cmp r0, #0
	bgt _080091F8
_080091AA:
	rsbs r5, r5, #0
	adds r0, r7, #0
	mov r1, r8
	mov r2, sp
	bl sub_800398C
	adds r0, r6, #4
	mov r1, sp
	bl sub_8003954
	adds r4, r0, #0
	bl Abs
	movs r1, #0xa0
	lsls r1, r1, #2
	cmp r0, r1
	bls _080091F8
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_800392C
	adds r5, r0, #0
	mov r0, sp
	adds r1, r5, #0
	bl sub_8003994
	add r4, sp, #0xc
	adds r0, r7, #0
	mov r1, sp
	adds r2, r4, #0
	bl sub_8003984
	ldr r0, [r6, #0x20]
	ldrb r1, [r6]
	adds r2, r4, #0
	movs r3, #2
	bl sub_8003A4C
	b _080091FA
_080091F8:
	movs r0, #0
_080091FA:
	add sp, #0x18
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

    .thumb
	.global sub_08009208
sub_08009208: @ 0x08009208
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x128
	str r0, [sp, #0x110]
	adds r6, r1, #0
	add r1, sp, #0x100
	movs r4, #0
	str r4, [r1]
	ldr r0, _08009428
	str r0, [r1, #4]
	str r4, [r1, #8]
	ldr r0, _0800942C
	ldr r1, [sp, #0x110]
	ldr r3, [r1]
	ldr r0, [r0]
	adds r3, r3, r0
	asrs r3, r3, #0x16
	ldr r1, _08009430
	ldr r2, [sp, #0x110]
	ldr r0, [r2, #4]
	ldr r1, [r1]
	adds r0, r0, r1
	asrs r0, r0, #0x16
	str r0, [sp, #0x118]
	ldr r0, _08009434
	ldr r1, [r2, #8]
	ldr r0, [r0]
	adds r1, r1, r0
	asrs r1, r1, #0x16
	ldr r0, _08009438
	ldrh r2, [r0]
	ldr r0, _0800943C
	ldrh r0, [r0]
	adds r5, r2, #0
	muls r5, r0, r5
	str r5, [sp, #0x11c]
	adds r0, r1, #0
	muls r0, r2, r0
	adds r0, r0, r3
	strb r4, [r6]
	ldr r7, [sp, #0x118]
	adds r1, r7, #0
	muls r1, r5, r1
	adds r1, r1, r0
	str r1, [sp, #0x124]
_08009268:
	ldr r0, _08009440
	ldr r1, [r0]
	ldr r2, [sp, #0x124]
	lsls r0, r2, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	ldr r0, _08009444
	cmp r1, r0
	bne _0800927C
	b _08009514
_0800927C:
	movs r3, #0
	str r3, [sp, #0x114]
	mov sb, r3
	ldr r2, _08009448
	ldr r0, [r2]
	lsls r1, r1, #2
	adds r0, r1, r0
	ldr r0, [r0]
	mov sl, r1
	ldrh r0, [r0]
	cmp r3, r0
	bge _08009364
_08009294:
	ldr r0, [r2]
	adds r0, r1, r0
	ldr r0, [r0]
	mov r5, sb
	lsls r1, r5, #1
	adds r0, r0, r1
	ldrh r1, [r0, #2]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r7, _0800944C
	ldr r1, [r7]
	adds r5, r1, r0
	movs r4, #1
	ldrb r1, [r5, #1]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080092D8
	ldrb r0, [r5, #0x18]
	movs r2, #0x16
	ldrsh r1, [r5, r2]
	bl sub_80342CC
	cmp r0, #0
	bne _080092D6
	ldrb r0, [r5, #0x19]
	ldrb r1, [r5, #0x1a]
	ldrb r2, [r5, #0x1b]
	bl sub_8034388
	cmp r0, #0
	bne _080092D8
_080092D6:
	movs r4, #0
_080092D8:
	ldr r3, _08009448
	mov r8, r3
	movs r7, #1
	add r7, sb
	mov ip, r7
	cmp r4, #0
	beq _08009352
	ldrb r0, [r5, #1]
	movs r1, #0x1f
	ands r1, r0
	cmp r1, #0
	beq _080092FC
	cmp r1, #2
	beq _080092FC
	cmp r1, #4
	beq _080092FC
	cmp r1, #0xa
	bne _08009352
_080092FC:
	movs r2, #0
	ldr r0, _08009448
	mov r8, r0
	movs r1, #1
	add r1, sb
	mov ip, r1
	ldrb r3, [r5]
	cmp r2, r3
	bge _08009352
	movs r3, #0
_08009310:
	ldr r0, [r5, #4]
	adds r4, r0, r3
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq _08009326
	cmp r0, #2
	beq _08009326
	cmp r0, #4
	beq _08009326
	cmp r0, #0xa
	bne _08009348
_08009326:
	ldr r7, [sp, #0x114]
	lsls r1, r7, #2
	mov r7, sp
	adds r0, r7, r1
	str r4, [r0]
	add r0, sp, #0x80
	adds r0, r0, r1
	str r5, [r0]
	ldr r0, [sp, #0x114]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x114]
	cmp r0, #0x20
	bne _08009348
	.2byte 0xEE00, 0xEE00
_08009348:
	adds r3, #0x24
	adds r2, #1
	ldrb r0, [r5]
	cmp r2, r0
	blt _08009310
_08009352:
	mov sb, ip
	mov r2, r8
	ldr r0, [r2]
	mov r1, sl
	adds r0, r1, r0
	ldr r0, [r0]
	ldrh r0, [r0]
	cmp sb, r0
	blt _08009294
_08009364:
	movs r1, #0
	mov sl, r1
	movs r7, #0
	movs r2, #0x80
	lsls r2, r2, #0x18
	mov r8, r2
	movs r3, #0
	str r3, [sp, #0x120]
	mov sb, r3
	ldr r5, [sp, #0x114]
	cmp r7, r5
	bge _080093EC
_0800937C:
	add r0, sp, #0x80
	mov r2, sb
	lsls r1, r2, #2
	adds r0, r0, r1
	ldr r5, [r0]
	mov r3, sp
	adds r0, r3, r1
	ldr r4, [r0]
	ldr r0, [sp, #0x120]
	cmp r0, #0
	beq _080093B2
	ldr r1, [r7, #0x10]
	ldr r0, [r4, #0x10]
	cmp r1, r0
	bne _080093B2
	ldr r1, [r7, #4]
	ldr r0, [r4, #4]
	cmp r1, r0
	bne _080093B2
	ldr r1, [r7, #8]
	ldr r0, [r4, #8]
	cmp r1, r0
	bne _080093B2
	ldr r1, [r7, #0xc]
	ldr r0, [r4, #0xc]
	cmp r1, r0
	beq _080093E2
_080093B2:
	adds r0, r4, #0
	ldr r1, [sp, #0x110]
	add r2, sp, #0x100
	add r3, sp, #0x10c
	bl sub_8003A54
	cmp r0, #0
	beq _080093E2
	add r0, sp, #0x10c
	ldr r1, [r0]
	cmp r8, r1
	bge _080093E2
	ldr r2, [sp, #0x110]
	ldr r0, [r2, #4]
	movs r3, #0xa0
	lsls r3, r3, #0xb
	adds r0, r0, r3
	cmp r1, r0
	bgt _080093E2
	mov sl, r5
	adds r7, r4, #0
	mov r8, r1
	movs r5, #1
	str r5, [sp, #0x120]
_080093E2:
	movs r0, #1
	add sb, r0
	ldr r1, [sp, #0x114]
	cmp sb, r1
	blt _0800937C
_080093EC:
	ldr r2, [sp, #0x120]
	cmp r2, #0
	bne _080093F4
	b _08009514
_080093F4:
	mov r3, r8
	str r3, [r6, #8]
	movs r0, #1
	strb r0, [r6]
	mov r5, sl
	ldrb r0, [r5, #1]
	strb r0, [r6, #1]
	ldrb r0, [r7, #1]
	strb r0, [r6, #2]
	ldrb r0, [r5, #2]
	lsrs r0, r0, #6
	movs r1, #3
	subs r2, r1, r0
	strb r2, [r6, #3]
	ldrb r1, [r5, #2]
	movs r0, #0x3f
	ands r0, r1
	strb r0, [r6, #4]
	ldrb r0, [r5, #3]
	strb r0, [r6, #5]
	ldrb r1, [r7, #2]
	cmp r1, #0
	bne _08009450
	adds r0, r2, #0
	b _08009454
	.align 2, 0
_08009428: .4byte 0xFFFF0000
_0800942C: .4byte 0x030028E0
_08009430: .4byte 0x030028E4
_08009434: .4byte 0x030028E8
_08009438: .4byte 0x030028D8
_0800943C: .4byte 0x030028DC
_08009440: .4byte 0x030028F0
_08009444: .4byte 0x0000FFFF
_08009448: .4byte 0x030028F4
_0800944C: .4byte 0x030028F8
_08009450:
	movs r0, #4
	subs r0, r0, r1
_08009454:
	strb r0, [r6, #6]
	ldr r2, [r7, #4]
	str r2, [r6, #0xc]
	ldr r1, [r7, #8]
	str r1, [r6, #0x10]
	ldr r0, [r7, #0xc]
	str r0, [r6, #0x14]
	ldr r0, [r7, #0x14]
	str r0, [r6, #0x28]
	ldr r0, [r7, #0x18]
	str r0, [r6, #0x2c]
	cmp r1, #0
	beq _08009492
	adds r0, r2, #0
	bl sub_800392C
	rsbs r0, r0, #0
	str r0, [r6, #0x1c]
	ldr r0, [r6, #0x14]
	ldr r1, [r6, #0x10]
	bl sub_800392C
	rsbs r0, r0, #0
	str r0, [r6, #0x20]
	ldr r0, [r7, #0x10]
	ldr r1, [r6, #0x10]
	bl sub_800392C
	rsbs r0, r0, #0
	str r0, [r6, #0x24]
	b _08009498
_08009492:
	str r1, [r6, #0x1c]
	str r1, [r6, #0x20]
	str r1, [r6, #0x24]
_08009498:
	adds r1, r6, #0
	adds r1, #0x44
	movs r0, #0
	strh r0, [r1]
	mov r1, sl
	ldrh r0, [r1, #0x16]
	adds r1, r6, #0
	adds r1, #0x46
	strh r0, [r1]
	mov r2, sl
	ldrb r0, [r2, #0x18]
	adds r1, #4
	strb r0, [r1]
	ldrb r0, [r2, #0x19]
	adds r1, #1
	strb r0, [r1]
	ldrb r1, [r2, #0x1a]
	adds r0, r6, #0
	adds r0, #0x4c
	strb r1, [r0]
	ldrb r0, [r2, #0x1b]
	adds r1, r6, #0
	adds r1, #0x4d
	strb r0, [r1]
	ldrh r1, [r2, #0x14]
	adds r0, r6, #0
	adds r0, #0x48
	strh r1, [r0]
	ldrb r0, [r7, #3]
	adds r1, r6, #0
	adds r1, #0x4e
	strb r0, [r1]
	ldrb r0, [r7, #0x1e]
	adds r1, #1
	strb r0, [r1]
	ldr r2, _0800950C
	ldrb r0, [r7, #0x1f]
	lsrs r0, r0, #3
	movs r1, #0xf
	ands r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	str r0, [r6, #0x30]
	ldr r2, _08009510
	ldrb r1, [r7, #0x1f]
	movs r0, #7
	ands r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	str r0, [r6, #0x34]
	ldrb r0, [r7, #0x1f]
	lsrs r0, r0, #7
	strb r0, [r6, #7]
	movs r0, #1
	b _0800952A
	.align 2, 0
_0800950C: .4byte 0x080CEC10
_08009510: .4byte dword_80CC290
_08009514:
	ldr r3, [sp, #0x124]
	ldr r5, [sp, #0x11c]
	subs r3, r3, r5
	str r3, [sp, #0x124]
	ldr r7, [sp, #0x118]
	subs r7, #1
	str r7, [sp, #0x118]
	cmp r7, #0
	blt _08009528
	b _08009268
_08009528:
	movs r0, #0
_0800952A:
	add sp, #0x128
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

    .thumb
	.global sub_800953C
sub_800953C: @ 0x0800953C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	mov sb, r0
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	movs r0, #0x80
	lsls r0, r0, #9
	str r0, [sp, #8]
	ldr r1, _080095B8
	mov r2, sb
	ldr r0, [r2]
	ldr r1, [r1]
	adds r0, r0, r1
	asrs r0, r0, #0x16
	str r0, [sp, #0x10]
	ldr r1, _080095BC
	ldr r0, [r2, #4]
	ldr r1, [r1]
	adds r0, r0, r1
	asrs r0, r0, #0x16
	str r0, [sp, #0x14]
	ldr r1, _080095C0
	ldr r0, [r2, #8]
	ldr r1, [r1]
	adds r0, r0, r1
	asrs r0, r0, #0x16
	mov sl, r0
	ldr r0, _080095C4
	ldrh r2, [r0]
	ldr r0, [sp, #0x14]
	adds r1, r0, #0
	muls r1, r2, r1
	ldr r0, _080095C8
	ldrh r0, [r0]
	muls r0, r1, r0
	mov r1, sl
	muls r1, r2, r1
	adds r0, r0, r1
	ldr r1, [sp, #0x10]
	adds r0, r0, r1
	ldr r1, _080095CC
	ldr r1, [r1]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	ldr r0, _080095D0
	cmp r1, r0
	beq _08009630
	movs r7, #0
	ldr r2, _080095D4
	ldr r0, [r2]
	lsls r1, r1, #2
	adds r0, r1, r0
	ldr r0, [r0]
	mov r8, r1
	b _0800962A
	.align 2, 0
_080095B8: .4byte 0x030028E0
_080095BC: .4byte 0x030028E4
_080095C0: .4byte 0x030028E8
_080095C4: .4byte 0x030028D8
_080095C8: .4byte 0x030028DC
_080095CC: .4byte 0x030028F0
_080095D0: .4byte 0x0000FFFF
_080095D4: .4byte 0x030028F4
_080095D8:
	ldr r0, [r2]
	adds r0, r1, r0
	ldr r0, [r0]
	lsls r1, r7, #1
	adds r0, r0, r1
	ldrh r1, [r0, #2]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r2, _080096B8
	ldr r1, [r2]
	adds r4, r1, r0
	movs r5, #0
	ldrb r0, [r4]
	cmp r5, r0
	bge _0800961E
	movs r6, #0
_080095FA:
	ldr r0, [r4, #4]
	adds r1, r0, r6
	ldrb r0, [r1, #1]
	cmp r0, #6
	bne _08009614
	adds r0, r1, #0
	mov r1, sb
	mov r2, sp
	add r3, sp, #0xc
	bl sub_8003A54
	cmp r0, #0
	bne _080096B2
_08009614:
	adds r6, #0x24
	adds r5, #1
	ldrb r1, [r4]
	cmp r5, r1
	blt _080095FA
_0800961E:
	adds r7, #1
	ldr r2, _080096BC
	ldr r0, [r2]
	mov r1, r8
	add r0, r8
	ldr r0, [r0]
_0800962A:
	ldrh r0, [r0]
	cmp r7, r0
	blt _080095D8
_08009630:
	movs r2, #1
	add sl, r2
	ldr r0, _080096C0
	ldrh r2, [r0]
	ldr r0, [sp, #0x14]
	adds r1, r0, #0
	muls r1, r2, r1
	ldr r0, _080096C4
	ldrh r0, [r0]
	muls r0, r1, r0
	mov r1, sl
	muls r1, r2, r1
	adds r0, r0, r1
	ldr r1, [sp, #0x10]
	adds r0, r0, r1
	ldr r1, _080096C8
	ldr r1, [r1]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	ldr r0, _080096CC
	cmp r1, r0
	beq _080096EC
	movs r7, #0
	ldr r2, _080096BC
	ldr r0, [r2]
	lsls r1, r1, #2
	adds r0, r1, r0
	ldr r0, [r0]
	mov r8, r1
	ldrh r0, [r0]
	cmp r7, r0
	bge _080096EC
	ldr r0, _080096B8
	mov sl, r0
_08009676:
	ldr r0, [r2]
	adds r0, r1, r0
	ldr r0, [r0]
	lsls r1, r7, #1
	adds r0, r0, r1
	ldrh r1, [r0, #2]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	mov r2, sl
	ldr r1, [r2]
	adds r4, r1, r0
	movs r5, #0
	ldrb r0, [r4]
	cmp r5, r0
	bge _080096DA
	movs r6, #0
_08009698:
	ldr r0, [r4, #4]
	adds r1, r0, r6
	ldrb r0, [r1, #1]
	cmp r0, #6
	bne _080096D0
	adds r0, r1, #0
	mov r1, sb
	mov r2, sp
	add r3, sp, #0xc
	bl sub_8003A54
	cmp r0, #0
	beq _080096D0
_080096B2:
	movs r0, #1
	b _080096EE
	.align 2, 0
_080096B8: .4byte 0x030028F8
_080096BC: .4byte 0x030028F4
_080096C0: .4byte 0x030028D8
_080096C4: .4byte 0x030028DC
_080096C8: .4byte 0x030028F0
_080096CC: .4byte 0x0000FFFF
_080096D0:
	adds r6, #0x24
	adds r5, #1
	ldrb r1, [r4]
	cmp r5, r1
	blt _08009698
_080096DA:
	adds r7, #1
	ldr r2, _08009700
	ldr r0, [r2]
	mov r1, r8
	adds r0, r1, r0
	ldr r0, [r0]
	ldrh r0, [r0]
	cmp r7, r0
	blt _08009676
_080096EC:
	movs r0, #0
_080096EE:
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08009700: .4byte 0x030028F4

