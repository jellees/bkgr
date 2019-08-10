
    .syntax unified

    .text

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
