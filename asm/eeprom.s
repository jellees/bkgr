@ This file contains library functions from libagbbackup.a, specifically AgbEeprom.o.

    .syntax unified

    .section .rodata

    .byte 0x45, 0x45, 0x50, 0x52, 0x4f, 0x4d, 0x5f, 0x56 @ 080CF460
	.byte 0x31, 0x32, 0x32, 0x00, 0x00, 0x02, 0x00, 0x00, 0x40, 0x00, 0x00, 0x03, 0x06, 0x00, 0x00, 0x00 @ 080CF470
	.byte 0x00, 0x20, 0x00, 0x00, 0x00, 0x04, 0x00, 0x03, 0x0e, 0x00, 0x00, 0x00, 0x0a, 0x00, 0xbd, 0xff @ 080CF480
	.byte 0xc2, 0x00, 0x00, 0x00, 0x48, 0xfb, 0x03, 0x02, 0x74, 0xf4, 0x0c, 0x08, 0x80, 0xf4, 0x0c, 0x08 @ 080CF490
	.byte 0x3a, 0xfb, 0x03, 0x02, 0x3c, 0xfb, 0x03, 0x02, 0x38, 0xfb, 0x03, 0x02, 0x40, 0xfb, 0x03, 0x02 @ 080CF4A0
	.byte 0x2d, 0x44, 0x06, 0x08, 0x44, 0xfb, 0x03, 0x02, 0x40, 0xfb, 0x03, 0x02, 0x38, 0xfb, 0x03, 0x02 @ 080CF4B0
	.byte 0x3c, 0xfb, 0x03, 0x02, 0x3a, 0xfb, 0x03, 0x02, 0x40, 0xfb, 0x03, 0x02, 0x38, 0xfb, 0x03, 0x02 @ 080CF4C0
	.byte 0x44, 0xfb, 0x03, 0x02, 0x48, 0xfb, 0x03, 0x02, 0x48, 0xfb, 0x03, 0x02, 0x48, 0xfb, 0x03, 0x02 @ 080CF4D0
	.byte 0x8c, 0xf4, 0x0c, 0x08, 0x3c, 0xfb, 0x03, 0x02, 0x48, 0xfb, 0x03, 0x02

    .text

    .thumb
	.global IdentifyEeprom
IdentifyEeprom: @ 0x080643E8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r2, #0
	cmp r0, #4
	bne _08064404
	ldr r1, _080643FC
	ldr r0, _08064400
	str r0, [r1]
	b _08064420
	.align 2, 0
_080643FC: .4byte 0x0203FB48
_08064400: .4byte 0x080CF474
_08064404:
	cmp r0, #0x40
	bne _08064418
	ldr r1, _08064410
	ldr r0, _08064414
	str r0, [r1]
	b _08064420
	.align 2, 0
_08064410: .4byte 0x0203FB48
_08064414: .4byte 0x080CF480
_08064418:
	ldr r1, _08064424
	ldr r0, _08064428
	str r0, [r1]
	movs r2, #1
_08064420:
	adds r0, r2, #0
	bx lr
	.align 2, 0
_08064424: .4byte 0x0203FB48
_08064428: .4byte 0x080CF474

	.thumb
EepromTimerIntr: @ 0x0806442C
	ldr r1, _08064448
	ldrh r0, [r1]
	cmp r0, #0
	beq _08064446
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08064446
	ldr r1, _0806444C
	movs r0, #1
	strb r0, [r1]
_08064446:
	bx lr
	.align 2, 0
_08064448: .4byte 0x0203FB3A
_0806444C: .4byte 0x0203FB3C

    .thumb
    .global SetEepromTimerIntr
SetEepromTimerIntr: @ 0x08064450
	adds r2, r1, #0
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #3
	bhi _08064484
	ldr r0, _08064474
	strb r1, [r0]
	ldr r1, _08064478
	ldrb r0, [r0]
	lsls r0, r0, #2
	ldr r3, _0806447C
	adds r0, r0, r3
	str r0, [r1]
	ldr r0, _08064480
	str r0, [r2]
	movs r0, #0
	b _08064486
	.align 2, 0
_08064474: .4byte 0x0203FB38
_08064478: .4byte 0x0203FB40
_0806447C: .4byte 0x04000100
_08064480: .4byte 0x0806442D
_08064484:
	movs r0, #1
_08064486:
	bx lr

    .thumb
StartEepromTimer: @ 0x08064488
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r2, _080644F4
	ldr r1, _080644F8
	mov sb, r1
	ldrh r1, [r1]
	strh r1, [r2]
	movs r6, #0
	mov r2, sb
	strh r6, [r2]
	ldr r3, _080644FC
	mov r8, r3
	ldr r5, [r3]
	strh r6, [r5, #2]
	ldr r3, _08064500
	ldr r4, _08064504
	ldrb r1, [r4]
	movs r2, #8
	adds r7, r2, #0
	lsls r7, r1
	adds r1, r7, #0
	strh r1, [r3]
	subs r3, #2
	ldrb r1, [r4]
	lsls r2, r1
	ldrh r1, [r3]
	orrs r1, r2
	strh r1, [r3]
	ldr r1, _08064508
	strb r6, [r1]
	ldr r2, _0806450C
	ldrh r1, [r0]
	strh r1, [r2]
	adds r0, #2
	ldrh r1, [r0]
	strh r1, [r5]
	adds r1, r5, #2
	mov r2, r8
	str r1, [r2]
	ldrh r0, [r0, #2]
	strh r0, [r5, #2]
	str r5, [r2]
	movs r0, #1
	mov r3, sb
	strh r0, [r3]
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080644F4: .4byte 0x0203FB44
_080644F8: .4byte 0x04000208
_080644FC: .4byte 0x0203FB40
_08064500: .4byte 0x04000202
_08064504: .4byte 0x0203FB38
_08064508: .4byte 0x0203FB3C
_0806450C: .4byte 0x0203FB3A

    .thumb
StopEepromTimer: @ 0x08064510
	ldr r3, _08064540
	movs r1, #0
	strh r1, [r3]
	ldr r2, _08064544
	ldr r0, [r2]
	strh r1, [r0]
	adds r0, #2
	str r0, [r2]
	strh r1, [r0]
	subs r0, #2
	str r0, [r2]
	ldr r2, _08064548
	ldr r0, _0806454C
	ldrb r0, [r0]
	movs r1, #8
	lsls r1, r0
	ldrh r0, [r2]
	bics r0, r1
	strh r0, [r2]
	ldr r0, _08064550
	ldrh r0, [r0]
	strh r0, [r3]
	bx lr
	.align 2, 0
_08064540: .4byte 0x04000208
_08064544: .4byte 0x0203FB40
_08064548: .4byte 0x04000200
_0806454C: .4byte 0x0203FB38
_08064550: .4byte 0x0203FB44

    .thumb
Dma3Transmit: @ 0x08064554
	push {r4, r5, r6, lr}
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	ldr r4, _080645B4
	ldrh r3, [r4]
	adds r6, r3, #0
	movs r3, #0
	strh r3, [r4]
	ldr r5, _080645B8
	ldrh r4, [r5]
	ldr r3, _080645BC
	ands r4, r3
	ldr r3, _080645C0
	ldr r3, [r3]
	ldrh r3, [r3, #6]
	orrs r4, r3
	strh r4, [r5]
	ldr r3, _080645C4
	str r0, [r3]
	ldr r0, _080645C8
	str r1, [r0]
	ldr r1, _080645CC
	movs r0, #0x80
	lsls r0, r0, #0x18
	orrs r2, r0
	str r2, [r1]
	adds r1, #2
	movs r2, #0x80
	lsls r2, r2, #8
	adds r0, r2, #0
	ldrh r1, [r1]
	ands r0, r1
	cmp r0, #0
	beq _080645A8
	ldr r2, _080645D0
	movs r0, #0x80
	lsls r0, r0, #8
	adds r1, r0, #0
_080645A0:
	ldrh r0, [r2]
	ands r0, r1
	cmp r0, #0
	bne _080645A0
_080645A8:
	ldr r0, _080645B4
	strh r6, [r0]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080645B4: .4byte 0x04000208
_080645B8: .4byte 0x04000204
_080645BC: .4byte 0x0000F8FF
_080645C0: .4byte 0x0203FB48
_080645C4: .4byte 0x040000D4
_080645C8: .4byte 0x040000D8
_080645CC: .4byte 0x040000DC
_080645D0: .4byte 0x040000DE

    .thumb
    .global ReadEepromDword
ReadEepromDword: @ 0x080645D4
	push {r4, r5, r6, lr}
	sub sp, #0x88
	adds r5, r1, #0
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldr r0, _080645EC
	ldr r0, [r0]
	ldrh r0, [r0, #4]
	cmp r3, r0
	blo _080645F4
	ldr r0, _080645F0
	b _08064676
	.align 2, 0
_080645EC: .4byte 0x0203FB48
_080645F0: .4byte 0x000080FF
_080645F4:
	ldr r0, _08064680
	adds r6, r0, #0
	ldr r0, [r0]
	ldrb r1, [r0, #8]
	lsls r0, r1, #1
	mov r4, sp
	adds r2, r0, r4
	adds r2, #2
	movs r4, #0
	cmp r4, r1
	bhs _0806461E
_0806460A:
	strh r3, [r2]
	subs r2, #2
	lsrs r3, r3, #1
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r0, [r6]
	ldrb r0, [r0, #8]
	cmp r4, r0
	blo _0806460A
_0806461E:
	movs r0, #1
	strh r0, [r2]
	subs r2, #2
	strh r0, [r2]
	movs r4, #0xd0
	lsls r4, r4, #0x14
	ldr r0, _08064680
	ldr r0, [r0]
	ldrb r2, [r0, #8]
	adds r2, #3
	mov r0, sp
	adds r1, r4, #0
	bl Dma3Transmit
	adds r0, r4, #0
	mov r1, sp
	movs r2, #0x44
	bl Dma3Transmit
	add r2, sp, #8
	adds r5, #6
	movs r4, #0
	movs r6, #1
_0806464C:
	movs r1, #0
	movs r3, #0
_08064650:
	lsls r1, r1, #0x11
	ldrh r0, [r2]
	ands r0, r6
	lsrs r1, r1, #0x10
	orrs r1, r0
	adds r2, #2
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0xf
	bls _08064650
	strh r1, [r5]
	subs r5, #2
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bls _0806464C
	movs r0, #0
_08064676:
	add sp, #0x88
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08064680: .4byte 0x0203FB48

    .thumb
    .global ProgramEepromDword
ProgramEepromDword: @ 0x08064684
	push {r4, r5, lr}
	sub sp, #0xa4
	adds r5, r1, #0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldr r0, _0806469C
	ldr r0, [r0]
	ldrh r0, [r0, #4]
	cmp r4, r0
	blo _080646A4
	ldr r0, _080646A0
	b _08064748
	.align 2, 0
_0806469C: .4byte 0x0203FB48
_080646A0: .4byte 0x000080FF
_080646A4:
	ldr r0, _080646E4
	ldr r0, [r0]
	ldrb r0, [r0, #8]
	lsls r0, r0, #1
	mov r1, sp
	adds r3, r0, r1
	adds r3, #0x84
	movs r0, #0
	strh r0, [r3]
	subs r3, #2
	movs r1, #0
_080646BA:
	ldrh r2, [r5]
	adds r5, #2
	movs r0, #0
_080646C0:
	strh r2, [r3]
	subs r3, #2
	lsrs r2, r2, #1
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xf
	bls _080646C0
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #3
	bls _080646BA
	movs r1, #0
	ldr r0, _080646E4
	adds r2, r0, #0
	ldr r0, [r0]
	b _080646F6
	.align 2, 0
_080646E4: .4byte 0x0203FB48
_080646E8:
	strh r4, [r3]
	subs r3, #2
	lsrs r4, r4, #1
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	ldr r0, [r2]
_080646F6:
	ldrb r0, [r0, #8]
	cmp r1, r0
	blo _080646E8
	movs r0, #0
	strh r0, [r3]
	subs r3, #2
	movs r0, #1
	strh r0, [r3]
	movs r1, #0xd0
	lsls r1, r1, #0x14
	ldr r0, _08064750
	ldr r0, [r0]
	ldrb r2, [r0, #8]
	adds r2, #0x43
	mov r0, sp
	bl Dma3Transmit
	ldr r0, _08064754
	bl StartEepromTimer
	movs r4, #0
	movs r1, #0xd0
	lsls r1, r1, #0x14
	movs r3, #1
	ldr r2, _08064758
_08064728:
	ldrh r0, [r1]
	ands r0, r3
	cmp r0, #0
	bne _08064742
	ldrb r0, [r2]
	cmp r0, #0
	beq _08064728
	ldrh r0, [r1]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08064742
	ldr r4, _0806475C
_08064742:
	bl StopEepromTimer
	adds r0, r4, #0
_08064748:
	add sp, #0xa4
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08064750: .4byte 0x0203FB48
_08064754: .4byte 0x080CF48C
_08064758: .4byte 0x0203FB3C
_0806475C: .4byte 0x0000C001

    .thumb
    .global VerifyEepromDword
VerifyEepromDword: @ 0x08064760
	push {r4, r5, lr}
	sub sp, #8
	adds r4, r1, #0
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	movs r5, #0
	ldr r0, _0806477C
	ldr r0, [r0]
	ldrh r0, [r0, #4]
	cmp r1, r0
	blo _08064784
	ldr r0, _08064780
	b _080647AE
	.align 2, 0
_0806477C: .4byte 0x0203FB48
_08064780: .4byte 0x000080FF
_08064784:
	adds r0, r1, #0
	mov r1, sp
	bl ReadEepromDword
	mov r2, sp
	movs r3, #0
	b _0806479C
_08064792:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #3
	bhi _080647AC
_0806479C:
	ldrh r1, [r4]
	ldrh r0, [r2]
	adds r2, #2
	adds r4, #2
	cmp r1, r0
	beq _08064792
	movs r5, #0x80
	lsls r5, r5, #8
_080647AC:
	adds r0, r5, #0
_080647AE:
	add sp, #8
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	.thumb
ProgramEepromDwordEx: @ 0x080647B8
	push {r4, r5, r6, lr}
	adds r5, r1, #0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	movs r6, #0
	b _080647CA
_080647C4:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
_080647CA:
	cmp r6, #2
	bhi _080647EE
	adds r0, r4, #0
	adds r1, r5, #0
	bl ProgramEepromDword
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0
	bne _080647C4
	adds r0, r4, #0
	adds r1, r5, #0
	bl VerifyEepromDword
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0
	bne _080647C4
_080647EE:
	adds r0, r2, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
