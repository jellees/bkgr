
    .syntax unified

    .text

    .thumb
    .global AdvanceMenuEntryDown
AdvanceMenuEntryDown: @ 0x08044624
	push {r4, lr}
	ldr r4, _0804465C
	adds r0, r4, #0
	adds r0, #0x3b
	ldrb r0, [r0]
	cmp r0, #0
	beq _08044644
	ldrh r0, [r4, #0x38]
	lsls r1, r0, #3
	subs r1, r1, r0
	lsls r1, r1, #2
	ldr r0, [r4, #0x3c]
	adds r0, r0, r1
	movs r1, #0
	bl sprite_lock_anim_on_frame
_08044644:
	ldrh r1, [r4, #0x38]
	ldr r0, [r4, #0x30]
	subs r0, #1
	cmp r1, r0
	bne _08044660
	adds r0, r4, #0
	adds r0, #0x3a
	ldrb r0, [r0]
	cmp r0, #0
	beq _08044664
	movs r0, #0
	b _08044662
	.align 2, 0
_0804465C: .4byte gMenu
_08044660:
	adds r0, r1, #1
_08044662:
	strh r0, [r4, #0x38]
_08044664:
	ldr r2, _08044688
	adds r0, r2, #0
	adds r0, #0x3b
	ldrb r0, [r0]
	cmp r0, #0
	beq _08044680
	ldrh r0, [r2, #0x38]
	lsls r1, r0, #3
	subs r1, r1, r0
	lsls r1, r1, #2
	ldr r0, [r2, #0x3c]
	adds r0, r0, r1
	bl sprite_unlock_anim
_08044680:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08044688: .4byte gMenu

    .thumb
    .global AdvanceMenuEntryUp
AdvanceMenuEntryUp: @ 0x0804468C
	push {r4, lr}
	ldr r4, _080446E4
	adds r0, r4, #0
	adds r0, #0x3b
	ldrb r0, [r0]
	cmp r0, #0
	beq _080446AC
	ldrh r0, [r4, #0x38]
	lsls r1, r0, #3
	subs r1, r1, r0
	lsls r1, r1, #2
	ldr r0, [r4, #0x3c]
	adds r0, r0, r1
	movs r1, #0
	bl sprite_lock_anim_on_frame
_080446AC:
	ldrh r0, [r4, #0x38]
	cmp r0, #0
	bne _080446BE
	adds r0, r4, #0
	adds r0, #0x3a
	ldrb r0, [r0]
	cmp r0, #0
	beq _080446C2
	ldr r0, [r4, #0x30]
_080446BE:
	subs r0, #1
	strh r0, [r4, #0x38]
_080446C2:
	ldr r2, _080446E4
	adds r0, r2, #0
	adds r0, #0x3b
	ldrb r0, [r0]
	cmp r0, #0
	beq _080446DE
	ldrh r0, [r2, #0x38]
	lsls r1, r0, #3
	subs r1, r1, r0
	lsls r1, r1, #2
	ldr r0, [r2, #0x3c]
	adds r0, r0, r1
	bl sprite_unlock_anim
_080446DE:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080446E4: .4byte gMenu

    .thumb
    .global FlushMenuToTextBuffer
FlushMenuToTextBuffer: @ 0x080446E8
	push {r4, r5, r6, lr}
	movs r4, #0
	ldr r2, _08044724
	ldr r0, [r2, #0x30]
	cmp r4, r0
	bge _08044756
	movs r6, #0
	movs r5, #0
_080446F8:
	ldrh r0, [r2, #0x38]
	cmp r0, r4
	bne _08044728
	ldrh r0, [r2, #6]
	ldrh r1, [r2]
	adds r0, r0, r1
	strh r0, [r2, #0x1c]
	ldrh r0, [r2, #4]
	muls r0, r4, r0
	ldrh r1, [r2, #2]
	adds r0, r0, r1
	strh r0, [r2, #0x1e]
	strh r6, [r2, #0x28]
	ldr r0, [r2, #0x34]
	adds r0, r5, r0
	ldr r1, [r0]
	adds r0, r2, #0
	adds r0, #0x1c
	bl AddStringToBuffer
	b _0804474A
	.align 2, 0
_08044724: .4byte gMenu
_08044728:
	ldrh r0, [r2, #6]
	ldrh r1, [r2]
	adds r0, r0, r1
	strh r0, [r2, #8]
	ldrh r0, [r2, #4]
	muls r0, r4, r0
	ldrh r1, [r2, #2]
	adds r0, r0, r1
	strh r0, [r2, #0xa]
	strh r6, [r2, #0x14]
	ldr r0, [r2, #0x34]
	adds r0, r5, r0
	ldr r1, [r0]
	adds r0, r2, #0
	adds r0, #8
	bl AddStringToBuffer
_0804474A:
	adds r5, #4
	adds r4, #1
	ldr r2, _0804475C
	ldr r0, [r2, #0x30]
	cmp r4, r0
	blt _080446F8
_08044756:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0804475C: .4byte gMenu

    .thumb
    .global RenderMenuSprites
RenderMenuSprites: @ 0x08044760
	push {r4, r5, r6, lr}
	ldr r1, _08044794
	adds r0, r1, #0
	adds r0, #0x3b
	ldrb r0, [r0]
	cmp r0, #0
	beq _0804478C
	movs r4, #0
	ldr r0, [r1, #0x30]
	cmp r4, r0
	bge _0804478C
	adds r6, r1, #0
	movs r5, #0
_0804477A:
	ldr r0, [r6, #0x3c]
	adds r0, r0, r5
	bl sprite_render
	adds r5, #0x1c
	adds r4, #1
	ldr r0, [r6, #0x30]
	cmp r4, r0
	blt _0804477A
_0804478C:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08044794: .4byte gMenu

    .thumb
    .global GetCurrentMenuEntry
GetCurrentMenuEntry: @ 0x08044798
	ldr r0, _080447A0
	ldrh r0, [r0, #0x38]
	bx lr
	.align 2, 0
_080447A0: .4byte gMenu

    .thumb
    .global SetMenuEntry
SetMenuEntry: @ 0x080447A4
	push {lr}
	adds r1, r0, #0
	ldr r2, _080447C0
	cmp r1, #0
	blt _080447B4
	ldr r0, [r2, #0x30]
	cmp r1, r0
	blt _080447B8
_080447B4:
	.2byte 0xEE00, 0xEE00
_080447B8:
	strh r1, [r2, #0x38]
	pop {r0}
	bx r0
	.align 2, 0
_080447C0: .4byte gMenu
