
    .syntax unified

    .text

    .thumb
	.global exec_flashscreens
exec_flashscreens: @ 0x08024E6C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r4, _08024F24
	adds r0, r4, #0
	movs r1, #0
	bl sub_80270AC
	ldr r0, _08024F28
	ldr r1, _08024F2C
	movs r2, #0x80
	bl DmaTransfer32
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	bl sub_8026E48
	ldr r4, _08024F30
	movs r0, #0x8c
	lsls r0, r0, #3
	movs r1, #0xb
	movs r2, #4
	bl Alloc
	adds r1, r0, #0
	str r1, [r4]
	movs r2, #0x8c
	lsls r2, r2, #1
	movs r0, #0
	bl DmaFill32
	ldr r0, _08024F34
	movs r1, #0
	strb r1, [r0]
	ldr r0, _08024F38
	strb r1, [r0]
	ldr r0, _08024F3C
	strb r1, [r0]
	ldr r2, _08024F40
	movs r0, #0xa
	strb r0, [r2]
	ldr r0, _08024F44
	strb r1, [r0]
	movs r0, #7
	bl init_function
	movs r4, #0xc2
	lsls r4, r4, #1
	ldr r6, _08024F48
	movs r5, #0
	ldr r0, _08024F4C
	ldrb r0, [r0]
	cmp r0, #0
	beq _08024FC6
	ldr r0, _08024F50
	mov r8, r0
	ldr r7, _08024F54
	movs r1, #0x80
	lsls r1, r1, #3
	adds r1, r1, r7
	mov sb, r1
_08024EEA:
	ldr r0, _08024F58
	mov r1, r8
	ldr r2, _08024F5C
	bl ReadKeys
	cmp r5, #0
	beq _08024F16
	mov r0, r8
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08024F16
	bl audio_halt_all_fx
	movs r0, #2
	bl sub_805E1DC
	movs r0, #8
	bl init_function
	movs r5, #0
_08024F16:
	cmp r4, #0
	bne _08024F60
	movs r5, #1
	movs r4, #1
	rsbs r4, r4, #0
	b _08024F66
	.align 2, 0
_08024F24: .4byte 0x00000FFF
_08024F28: .4byte 0x083FD454
_08024F2C: .4byte 0x05000200
_08024F30: .4byte 0x0200032C
_08024F34: .4byte 0x02000331
_08024F38: .4byte 0x02000330
_08024F3C: .4byte 0x02000332
_08024F40: .4byte 0x02000333
_08024F44: .4byte 0x02000334
_08024F48: .4byte 0x0000029E
_08024F4C: .4byte 0x0203F99E
_08024F50: .4byte gKeysDown
_08024F54: .4byte gOAMBuffer1
_08024F58: .4byte gKeysPressed
_08024F5C: .4byte gPreviousKeys
_08024F60:
	cmp r4, #0
	ble _08024F66
	subs r4, #1
_08024F66:
	cmp r6, #0
	bne _08024F6E
	movs r5, #0
	b _08024F70
_08024F6E:
	subs r6, #1
_08024F70:
	ldr r0, _08024FE0
	ldrb r0, [r0]
	cmp r0, #0
	beq _08024F7C
	bl sub_8026DC0
_08024F7C:
	movs r0, #0
	bl SetTextSpriteCount
	movs r0, #0xaa
	adds r1, r7, #0
	movs r2, #0x80
	lsls r2, r2, #1
	bl DmaFill32
	ldr r0, _08024FE4
	str r7, [r0]
	ldr r0, _08024FE8
	mov r1, sb
	str r1, [r0]
	ldr r1, _08024FEC
	ldr r0, _08024FF0
	str r0, [r1]
	ldr r1, _08024FF4
	movs r0, #0x80
	lsls r0, r0, #2
	str r0, [r1]
	bl call_functions
	bl sub_805E088
	bl CheckStacks
	bl SyncVblank
	bl UpdateVideo
	bl SkipVblank
	ldr r0, _08024FF8
	ldrb r0, [r0]
	cmp r0, #0
	bne _08024EEA
_08024FC6:
	ldr r0, _08024FFC
	movs r1, #0
	bl sub_80270AC
	movs r0, #0
	bl SetTextSpriteCount
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08024FE0: .4byte gIsPaletteEffectsActive
_08024FE4: .4byte gOAMBufferFramePtr
_08024FE8: .4byte gOAMBufferEnd
_08024FEC: .4byte gOBJTileFramePtr
_08024FF0: .4byte 0x06014000
_08024FF4: .4byte gOBJTileCount
_08024FF8: .4byte 0x0203F99E
_08024FFC: .4byte 0x00000FFF
