
    .syntax unified

    .text

    .thumb
sub_8027600: @ 0x08027600
	push {lr}
	ldr r2, _0802761C
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #3
	adds r2, #4
	adds r1, r1, r2
	ldr r1, [r1]
_08027610:
	ldr r1, [r1, #0xc]
	cmp r1, #0
	bne _08027610
	pop {r0}
	bx r0
	.align 2, 0
_0802761C: .4byte 0x0200ED20

    .thumb
    .global InitAllHeaps
InitAllHeaps: @ 0x08027620
	push {r4, lr}
	movs r4, #0
_08027624:
	adds r0, r4, #0
	bl InitHeap
	adds r4, #1
	cmp r4, #5
	ble _08027624
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

    .thumb
    .global InitHeap
InitHeap: @ 0x08027638
	push {r4, r5, lr}
	adds r3, r0, #0
	cmp r3, #5
	bls _08027642
	b _080277C4
_08027642:
	lsls r0, r3, #2
	ldr r1, _0802764C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0802764C: .4byte 0x08027650
_08027650: @ jump table
	.4byte _08027668 @ case 0
	.4byte _0802769C @ case 1
	.4byte _080276D0 @ case 2
	.4byte _08027704 @ case 3
	.4byte _08027738 @ case 4
	.4byte _0802776C @ case 5
_08027668:
	ldr r0, _08027690
	mov ip, r0
	lsls r2, r3, #1
	adds r2, r2, r3
	lsls r2, r2, #3
	adds r0, r2, r0
	movs r4, #0xfa
	lsls r4, r4, #8
	str r4, [r0]
	mov r0, ip
	adds r0, #0xc
	adds r0, r2, r0
	ldr r3, _08027694
	str r3, [r0]
	mov r0, ip
	adds r0, #0x10
	adds r0, r2, r0
	ldr r5, _08027698
	b _08027790
	.align 2, 0
_08027690: .4byte 0x0200ED20
_08027694: .4byte 0x0200EDB0
_08027698: .4byte 0x0000F9FF
_0802769C:
	ldr r0, _080276C0
	mov ip, r0
	lsls r2, r3, #1
	adds r2, r2, r3
	lsls r2, r2, #3
	adds r0, r2, r0
	ldr r4, _080276C4
	str r4, [r0]
	mov r0, ip
	adds r0, #0xc
	adds r0, r2, r0
	ldr r3, _080276C8
	str r3, [r0]
	mov r0, ip
	adds r0, #0x10
	adds r0, r2, r0
	ldr r5, _080276CC
	b _08027790
	.align 2, 0
_080276C0: .4byte 0x0200ED20
_080276C4: .4byte 0x00015F90
_080276C8: .4byte 0x0201E7B0
_080276CC: .4byte 0x00015F8F
_080276D0:
	ldr r0, _080276F8
	mov ip, r0
	lsls r2, r3, #1
	adds r2, r2, r3
	lsls r2, r2, #3
	adds r0, r2, r0
	movs r4, #0x82
	lsls r4, r4, #5
	str r4, [r0]
	mov r0, ip
	adds r0, #0xc
	adds r0, r2, r0
	ldr r3, _080276FC
	str r3, [r0]
	mov r0, ip
	adds r0, #0x10
	adds r0, r2, r0
	ldr r5, _08027700
	b _08027790
	.align 2, 0
_080276F8: .4byte 0x0200ED20
_080276FC: .4byte 0x0200DCE0
_08027700: .4byte 0x0000103F
_08027704:
	ldr r0, _0802772C
	mov ip, r0
	lsls r2, r3, #1
	adds r2, r2, r3
	lsls r2, r2, #3
	adds r0, r2, r0
	movs r4, #0x80
	lsls r4, r4, #5
	str r4, [r0]
	mov r0, ip
	adds r0, #0xc
	adds r0, r2, r0
	ldr r3, _08027730
	str r3, [r0]
	mov r0, ip
	adds r0, #0x10
	adds r0, r2, r0
	ldr r5, _08027734
	b _08027790
	.align 2, 0
_0802772C: .4byte 0x0200ED20
_08027730: .4byte 0x02034740
_08027734: .4byte 0x00000FFF
_08027738:
	ldr r0, _0802775C
	mov ip, r0
	lsls r2, r3, #1
	adds r2, r2, r3
	lsls r2, r2, #3
	adds r0, r2, r0
	ldr r4, _08027760
	str r4, [r0]
	mov r0, ip
	adds r0, #0xc
	adds r0, r2, r0
	ldr r3, _08027764
	str r3, [r0]
	mov r0, ip
	adds r0, #0x10
	adds r0, r2, r0
	ldr r5, _08027768
	b _08027790
	.align 2, 0
_0802775C: .4byte 0x0200ED20
_08027760: .4byte 0x00008070
_08027764: .4byte 0x02035740
_08027768: .4byte 0x0000806F
_0802776C:
	ldr r0, _080277B8
	mov ip, r0
	lsls r2, r3, #1
	adds r2, r2, r3
	lsls r2, r2, #3
	adds r0, r2, r0
	movs r4, #0x80
	lsls r4, r4, #4
	str r4, [r0]
	mov r0, ip
	adds r0, #0xc
	adds r0, r2, r0
	ldr r3, _080277BC
	str r3, [r0]
	mov r0, ip
	adds r0, #0x10
	adds r0, r2, r0
	ldr r5, _080277C0
_08027790:
	adds r1, r3, r5
	str r1, [r0]
	mov r0, ip
	adds r0, #4
	adds r0, r2, r0
	str r3, [r0]
	mov r0, ip
	adds r0, #8
	adds r0, r2, r0
	str r3, [r0]
	mov r0, ip
	adds r0, #0x14
	adds r2, r2, r0
	movs r0, #0
	str r0, [r2]
	str r4, [r3]
	str r0, [r3, #4]
	str r0, [r3, #0xc]
	str r0, [r3, #8]
	b _080277C8
	.align 2, 0
_080277B8: .4byte 0x0200ED20
_080277BC: .4byte 0x0203D7B0
_080277C0: .4byte 0x000007FF
_080277C4:
	.2byte 0xEE00, 0xEE00
_080277C8:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

    .thumb
sub_80277D0: @ 0x080277D0
	push {lr}
	adds r2, r0, #0
	adds r3, r1, #0
	cmp r3, #1
	bls _080277DE
	.2byte 0xEE00, 0xEE00
_080277DE:
	cmp r2, #5
	bls _080277E6
	.2byte 0xEE00, 0xEE00
_080277E6:
	ldr r1, _080277F8
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #3
	adds r1, #0x14
	adds r0, r0, r1
	str r3, [r0]
	pop {r0}
	bx r0
	.align 2, 0
_080277F8: .4byte 0x0200ED20

    .thumb
    .global Alloc
Alloc: @ 0x080277FC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	adds r7, r1, #0
	adds r4, r2, #0
	cmp r4, #5
	bls _08027810
	.2byte 0xEE00, 0xEE00
_08027810:
	cmp r5, #0
	bne _08027818
	.2byte 0xEE00, 0xEE00
_08027818:
	cmp r7, #0
	bne _08027820
	.2byte 0xEE00, 0xEE00
_08027820:
	adds r5, #3
	movs r0, #4
	rsbs r0, r0, #0
	ands r5, r0
	cmp r5, #7
	bhi _0802782E
	movs r5, #8
_0802782E:
	adds r5, #0x10
	ldr r1, _08027854
	lsls r2, r4, #1
	adds r0, r2, r4
	lsls r3, r0, #3
	adds r0, r1, #0
	adds r0, #0x14
	adds r0, r3, r0
	ldr r0, [r0]
	mov ip, r1
	mov r8, r2
	cmp r0, #0
	beq _08027858
	cmp r0, #1
	beq _080278B8
	.2byte 0xEE00, 0xEE00
	movs r0, #0
	b _08027976
	.align 2, 0
_08027854: .4byte 0x0200ED20
_08027858:
	mov r0, ip
	adds r0, #4
	adds r0, r3, r0
	ldr r2, [r0]
	lsrs r0, r5, #2
	lsls r6, r0, #2
	mov r0, ip
	adds r0, #8
	adds r3, r3, r0
	mov ip, r3
_0802786C:
	ldr r4, [r2, #4]
	cmp r4, #0
	bne _080278AA
	ldr r0, [r2]
	cmp r0, r5
	blo _080278AA
	subs r0, r0, r5
	cmp r0, #0x17
	bls _080278A4
	adds r3, r2, r6
	ldr r0, [r2, #0xc]
	cmp r0, #0
	bne _08027926
	str r3, [r2, #0xc]
	str r4, [r3, #0xc]
	ldr r0, [r2, #0xc]
	str r2, [r0, #8]
	ldr r1, [r2, #0xc]
	str r4, [r1, #4]
	ldr r0, [r2]
	subs r0, r0, r5
	str r0, [r1]
	str r7, [r2, #4]
	str r5, [r2]
	mov r0, ip
	str r1, [r0]
	adds r0, r2, #0
	b _08027974
_080278A4:
	str r7, [r2, #4]
	adds r0, r2, #0
	b _08027974
_080278AA:
	ldr r2, [r2, #0xc]
	cmp r2, #0
	bne _0802786C
	.2byte 0xEE00, 0xEE00
	movs r0, #0
	b _08027976
_080278B8:
	mov r0, ip
	adds r0, #4
	adds r0, r3, r0
	ldr r2, [r0]
	movs r3, #1
	rsbs r3, r3, #0
	movs r6, #0
_080278C6:
	ldr r0, [r2, #4]
	cmp r0, #0
	bne _080278E0
	ldr r0, [r2]
	cmp r0, r5
	blo _080278E0
	cmp r0, r3
	bhs _080278E0
	adds r6, r2, #0
	adds r3, r0, #0
	subs r0, r3, r5
	cmp r0, #0x17
	bls _0802794A
_080278E0:
	ldr r2, [r2, #0xc]
	cmp r2, #0
	bne _080278C6
	cmp r6, #0
	bne _080278F2
	.2byte 0xEE00, 0xEE00
	movs r0, #0
	b _08027976
_080278F2:
	adds r2, r6, #0
	lsrs r0, r5, #2
	lsls r0, r0, #2
	adds r3, r6, r0
	ldr r1, [r6, #0xc]
	cmp r1, #0
	beq _0802794E
	adds r6, r1, #0
	str r3, [r2, #0xc]
	str r6, [r3, #0xc]
	ldr r6, [r6, #8]
	ldr r0, [r2, #0xc]
	ldr r0, [r0, #0xc]
	str r3, [r0, #8]
	ldr r0, [r2, #0xc]
	str r6, [r0, #8]
	ldr r1, [r2, #0xc]
	movs r0, #0
	str r0, [r1, #4]
	ldr r0, [r2]
	subs r0, r0, r5
	str r0, [r1]
	str r7, [r2, #4]
	str r5, [r2]
	adds r0, r2, #0
	b _08027974
_08027926:
	adds r6, r0, #0
	str r3, [r2, #0xc]
	str r6, [r3, #0xc]
	ldr r6, [r6, #8]
	ldr r0, [r2, #0xc]
	ldr r0, [r0, #0xc]
	str r3, [r0, #8]
	ldr r0, [r2, #0xc]
	str r6, [r0, #8]
	ldr r1, [r2, #0xc]
	str r4, [r1, #4]
	ldr r0, [r2]
	subs r0, r0, r5
	str r0, [r1]
	str r7, [r2, #4]
	str r5, [r2]
	adds r0, r2, #0
	b _08027974
_0802794A:
	str r7, [r6, #4]
	b _08027972
_0802794E:
	str r3, [r6, #0xc]
	str r1, [r3, #0xc]
	ldr r0, [r6, #0xc]
	str r6, [r0, #8]
	ldr r2, [r6, #0xc]
	str r1, [r2, #4]
	ldr r0, [r6]
	subs r0, r0, r5
	str r0, [r2]
	str r7, [r6, #4]
	str r5, [r6]
	mov r1, r8
	adds r0, r1, r4
	lsls r0, r0, #3
	mov r1, ip
	adds r1, #8
	adds r0, r0, r1
	str r2, [r0]
_08027972:
	adds r0, r6, #0
_08027974:
	adds r0, #0x10
_08027976:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

    .thumb
    .global Free
FreeEx: @ 0x08027980
	push {lr}
	adds r3, r0, #0
	movs r1, #0
	ldr r0, _080279AC
	mov ip, r0
	movs r2, #0
_0802798C:
	mov r0, ip
	adds r0, #0xc
	adds r0, r2, r0
	ldr r0, [r0]
	cmp r3, r0
	blo _080279B0
	mov r0, ip
	adds r0, #0x10
	adds r0, r2, r0
	ldr r0, [r0]
	cmp r3, r0
	bhi _080279B0
	adds r0, r3, #0
	bl Free
	b _080279BC
	.align 2, 0
_080279AC: .4byte 0x0200ED20
_080279B0:
	adds r2, #0x18
	adds r1, #1
	cmp r1, #5
	ble _0802798C
	.2byte 0xEE00, 0xEE00
_080279BC:
	pop {r0}
	bx r0

    .thumb
    .global Free
Free: @ 0x080279C0
	push {r4, lr}
	adds r4, r1, #0
	adds r3, r0, #0
	subs r3, #0x10
	ldr r0, [r3, #4]
	subs r0, #1
	cmp r0, #0x18
	bls _080279D4
	.2byte 0xEE00, 0xEE00
_080279D4:
	movs r0, #0
	str r0, [r3, #4]
	ldr r1, [r3, #8]
	cmp r1, #0
	beq _080279FA
	ldr r0, [r1, #4]
	cmp r0, #0
	bne _080279FA
	ldr r0, [r3, #0xc]
	str r0, [r1, #0xc]
	ldr r1, [r3, #0xc]
	ldr r0, [r3, #8]
	str r0, [r1, #8]
	ldr r2, [r3, #8]
	ldr r0, [r2]
	ldr r1, [r3]
	adds r0, r0, r1
	str r0, [r2]
	adds r3, r2, #0
_080279FA:
	ldr r1, [r3, #0xc]
	cmp r1, #0
	beq _08027A34
	ldr r0, [r1, #4]
	cmp r0, #0
	bne _08027A42
	adds r3, r1, #0
	ldr r1, [r3, #8]
	ldr r0, [r3, #0xc]
	str r0, [r1, #0xc]
	ldr r1, [r3, #0xc]
	ldr r0, [r3, #8]
	str r0, [r1, #8]
	ldr r2, [r3, #8]
	ldr r0, [r2]
	ldr r1, [r3]
	adds r0, r0, r1
	str r0, [r2]
	ldr r1, _08027A30
	lsls r0, r4, #1
	adds r0, r0, r4
	lsls r0, r0, #3
	adds r1, #8
	adds r0, r0, r1
	str r2, [r0]
	b _08027A42
	.align 2, 0
_08027A30: .4byte 0x0200ED20
_08027A34:
	ldr r1, _08027A48
	lsls r0, r4, #1
	adds r0, r0, r4
	lsls r0, r0, #3
	adds r1, #8
	adds r0, r0, r1
	str r3, [r0]
_08027A42:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08027A48: .4byte 0x0200ED20

    .thumb
    .global FreeById
FreeById: @ 0x08027A4C
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	ldr r1, _08027A7C
	lsls r0, r5, #1
	adds r0, r0, r5
	lsls r0, r0, #3
	adds r1, #4
	adds r0, r0, r1
	ldr r4, [r0]
_08027A60:
	ldr r0, [r4, #4]
	cmp r0, r6
	bne _08027A70
	adds r0, r4, #0
	adds r0, #0x10
	adds r1, r5, #0
	bl Free
_08027A70:
	ldr r4, [r4, #0xc]
	cmp r4, #0
	bne _08027A60
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08027A7C: .4byte 0x0200ED20

    .thumb
    .global CheckHeap
CheckHeap: @ 0x08027A80
	push {r4, r5, r6, lr}
	adds r3, r0, #0
	ldr r0, _08027AE0
	lsls r1, r3, #1
	adds r1, r1, r3
	lsls r1, r1, #3
	adds r2, r0, #4
	adds r1, r1, r2
	ldr r1, [r1]
	movs r5, #0
	adds r6, r0, #0
_08027A96:
	ldr r0, [r1, #4]
	cmp r0, #0
	beq _08027AA0
	ldr r0, [r1]
	adds r5, r5, r0
_08027AA0:
	ldr r1, [r1, #0xc]
	cmp r1, #0
	bne _08027A96
	lsls r0, r3, #1
	adds r1, r0, r3
	lsls r1, r1, #3
	adds r2, r6, #4
	adds r1, r1, r2
	ldr r1, [r1]
	movs r2, #0
	adds r4, r0, #0
_08027AB6:
	ldr r0, [r1, #4]
	cmp r0, #0
	bne _08027AC0
	ldr r0, [r1]
	adds r2, r2, r0
_08027AC0:
	ldr r1, [r1, #0xc]
	cmp r1, #0
	bne _08027AB6
	adds r0, r4, r3
	lsls r0, r0, #3
	adds r0, r0, r6
	ldr r0, [r0]
	subs r0, r0, r5
	cmp r2, r0
	beq _08027AD8
	.2byte 0xEE00, 0xEE00
_08027AD8:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08027AE0: .4byte 0x0200ED20

    .thumb
    .global DoesMemBlockExistById
DoesMemBlockExistById: @ 0x08027AE4
	push {lr}
	adds r3, r1, #0
	ldr r2, _08027B08
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #3
	adds r2, #4
	adds r1, r1, r2
	ldr r1, [r1]
_08027AF6:
	ldr r0, [r1, #4]
	cmp r0, r3
	beq _08027B0C
	ldr r1, [r1, #0xc]
	cmp r1, #0
	bne _08027AF6
	movs r0, #0
	b _08027B0E
	.align 2, 0
_08027B08: .4byte 0x0200ED20
_08027B0C:
	movs r0, #1
_08027B0E:
	pop {r1}
	bx r1
	.align 2, 0

    .thumb
    .global ReplaceMemBlockId
ReplaceMemBlockId: @ 0x08027B14
	push {r4, lr}
	adds r4, r1, #0
	adds r3, r2, #0
	ldr r2, _08027B3C
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #3
	adds r2, #4
	adds r1, r1, r2
	ldr r1, [r1]
_08027B28:
	ldr r0, [r1, #4]
	cmp r0, r4
	bne _08027B30
	str r3, [r1, #4]
_08027B30:
	ldr r1, [r1, #0xc]
	cmp r1, #0
	bne _08027B28
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08027B3C: .4byte 0x0200ED20
