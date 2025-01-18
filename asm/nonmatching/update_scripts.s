    .text
    .thumb
    .global update_scripts
update_scripts: @ 0x0805DD7C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	ldr r4, _0805DE48
	ldrb r0, [r4]
	cmp r0, #0
	bne _0805DD9A
	ldr r0, _0805DE4C
	ldrb r0, [r0]
	cmp r0, #0
	bne _0805DD9A
	b _0805DF70
_0805DD9A:
	bl sub_0805D6B0
	ldr r0, _0805DE50
	movs r2, #0
	strb r2, [r0]
	ldr r0, _0805DE54
	movs r3, #1
	rsbs r3, r3, #0
	adds r1, r3, #0
	strh r1, [r0]
	ldr r0, _0805DE58
	strh r1, [r0]
	ldr r0, _0805DE4C
	strb r2, [r0]
	strb r2, [r4]
	movs r0, #0
	mov r8, r0
_0805DDBC:
	ldr r1, _0805DE5C
	mov r3, r8
	lsls r2, r3, #2
	adds r0, r2, r3
	lsls r0, r0, #3
	adds r3, r0, r1
	adds r0, r3, #0
	adds r0, #0x22
	ldrb r0, [r0]
	adds r4, r1, #0
	str r2, [sp, #4]
	mov r1, r8
	adds r1, #1
	str r1, [sp]
	cmp r0, #0
	beq _0805DEC6
	adds r0, r3, #0
	adds r0, #0x23
	ldrb r0, [r0]
	cmp r0, #0
	bne _0805DDEE
	ldr r0, _0805DE60
	ldrb r0, [r0]
	cmp r0, #0
	bne _0805DEC6
_0805DDEE:
	ldr r0, _0805DE64
	str r3, [r0]
	adds r7, r0, #0
	mov r2, r8
	adds r2, #1
	str r2, [sp]
	ldr r3, _0805DE68
	mov sl, r3
	mov sb, r7
_0805DE00:
	mov r0, sb
	ldr r1, [r0]
	ldrh r0, [r1, #0x18]
	lsls r0, r0, #2
	add r0, sl
	movs r2, #0x1c
	ldrsh r1, [r1, r2]
	ldr r2, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r4, [r0]
	ldr r5, [r0, #4]
	ldr r2, [r0, #8]
	ldr r3, [r0, #0xc]
	ldr r6, [r0, #0x10]
	ldr r1, _0805DE6C
	lsls r0, r4, #2
	adds r0, r0, r1
	ldr r4, [r0]
	adds r0, r5, #0
	adds r1, r2, #0
	adds r2, r3, #0
	adds r3, r6, #0
	bl _call_via_r4
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0805DE70
	ldr r1, [r7]
	ldrh r0, [r1, #0x1c]
	adds r0, #1
	strh r0, [r1, #0x1c]
	ldr r7, _0805DE64
	b _0805DE00
	.align 2, 0
_0805DE48: .4byte byte_203F99E
_0805DE4C: .4byte gReadKeysFromDemoInput
_0805DE50: .4byte byte_203F99C
_0805DE54: .4byte word_203F998
_0805DE58: .4byte word_203F99A
_0805DE5C: .4byte 0x0203F9A4
_0805DE60: .4byte 0x0203FA16
_0805DE64: .4byte 0x0203F9F4
_0805DE68: .4byte 0x087DFF54
_0805DE6C: .4byte 0x080B2050
_0805DE70:
	ldr r0, [r7]
	bl sub_805D8D8
	ldr r1, [r7]
	adds r0, r1, #0
	adds r0, #0x21
	ldrb r0, [r0]
	cmp r0, #0
	beq _0805DE88
	adds r0, r1, #0
	bl end_script
_0805DE88:
	mov r3, sb
	ldr r2, [r3]
	adds r0, r2, #0
	adds r0, #0x22
	ldrb r0, [r0]
	ldr r4, _0805DEB0
	cmp r0, #0
	beq _0805DEC6
	ldr r0, _0805DEB4
	movs r1, #1
	strb r1, [r0]
	adds r0, r2, #0
	adds r0, #0x23
	ldrb r0, [r0]
	cmp r0, #0
	beq _0805DEC0
	ldr r0, _0805DEB8
	strb r1, [r0]
	ldr r1, _0805DEBC
	b _0805DEC2
	.align 2, 0
_0805DEB0: .4byte 0x0203F9A4
_0805DEB4: .4byte byte_203F99E
_0805DEB8: .4byte byte_203F99C
_0805DEBC: .4byte word_203F998
_0805DEC0:
	ldr r1, _0805DF30
_0805DEC2:
	ldrh r0, [r2, #0x1a]
	strh r0, [r1]
_0805DEC6:
	ldr r0, [sp, #4]
	add r0, r8
	lsls r0, r0, #3
	adds r5, r0, r4
	adds r0, r5, #0
	adds r0, #0x24
	ldrb r0, [r0]
	cmp r0, #0
	beq _0805DF62
	bl play_input_demo
	ldr r4, _0805DF34
	str r5, [r4]
	adds r0, r5, #0
	bl sub_805D8D8
	ldr r0, _0805DF38
	mov r8, r0
	adds r7, r4, #0
_0805DEEC:
	ldr r1, [r7]
	ldrh r0, [r1, #0x18]
	lsls r0, r0, #2
	add r0, r8
	movs r2, #0x1c
	ldrsh r1, [r1, r2]
	ldr r2, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r4, [r0]
	ldr r5, [r0, #4]
	ldr r2, [r0, #8]
	ldr r3, [r0, #0xc]
	ldr r6, [r0, #0x10]
	ldr r1, _0805DF3C
	lsls r0, r4, #2
	adds r0, r0, r1
	ldr r4, [r0]
	adds r0, r5, #0
	adds r1, r2, #0
	adds r2, r3, #0
	adds r3, r6, #0
	bl _call_via_r4
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0805DF40
	ldr r1, [r7]
	ldrh r0, [r1, #0x1c]
	adds r0, #1
	strh r0, [r1, #0x1c]
	b _0805DEEC
	.align 2, 0
_0805DF30: .4byte word_203F99A
_0805DF34: .4byte 0x0203F9F4
_0805DF38: .4byte 0x087DFF54
_0805DF3C: .4byte 0x080B2050
_0805DF40:
	ldr r1, [r7]
	adds r0, r1, #0
	adds r0, #0x21
	ldrb r0, [r0]
	cmp r0, #0
	beq _0805DF52
	adds r0, r1, #0
	bl end_script
_0805DF52:
	ldr r0, [r7]
	adds r0, #0x24
	ldrb r0, [r0]
	cmp r0, #0
	beq _0805DF62
	ldr r1, _0805DF80
	movs r0, #1
	strb r0, [r1]
_0805DF62:
	ldr r3, [sp]
	lsls r0, r3, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	cmp r0, #1
	bhi _0805DF70
	b _0805DDBC
_0805DF70:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805DF80: .4byte gReadKeysFromDemoInput

