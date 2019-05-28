
    .syntax unified

    .text

    .thumb
    .global InitPaletteEffects
InitPaletteEffects: @ 0x0800F830
	push {r4, r5, lr}
	ldr r1, _0800F84C
	movs r5, #0
	str r5, [r1]
	ldr r0, _0800F850
	ldrh r0, [r0]
	adds r2, r1, #0
	cmp r0, #0x14
	beq _0800F878
	cmp r0, #0x14
	bgt _0800F854
	cmp r0, #0x11
	beq _0800F85C
	b _0800F8A8
	.align 2, 0
_0800F84C: .4byte 0x020011CC
_0800F850: .4byte 0x02001080
_0800F854:
	cmp r0, #0x15
	beq _0800F85C
	cmp r0, #0x20
	bne _0800F8A8
_0800F85C:
	movs r0, #1
	str r0, [r2]
	ldr r1, _0800F870
	movs r0, #0
	str r0, [r1]
	ldr r4, _0800F874
	movs r0, #8
	movs r1, #0x18
	b _0800F8A2
	.align 2, 0
_0800F870: .4byte 0x020011D4
_0800F874: .4byte 0x020011D8
_0800F878:
	movs r0, #2
	str r0, [r1]
	ldr r1, _0800F8B0
	ldr r0, _0800F8B4
	str r0, [r1]
	ldr r1, _0800F8B8
	ldr r0, _0800F8BC
	ldr r0, [r0, #0x18]
	str r0, [r1]
	ldr r4, _0800F8C0
	movs r0, #5
	movs r1, #0xf0
	bl RandomMinMax
	str r0, [r4]
	ldr r0, _0800F8C4
	str r5, [r0]
	ldr r4, _0800F8C8
	movs r1, #0x96
	lsls r1, r1, #1
	movs r0, #0xb4
_0800F8A2:
	bl RandomMinMax
	str r0, [r4]
_0800F8A8:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800F8B0: .4byte 0x020011DC
_0800F8B4: .4byte 0x083FCD14
_0800F8B8: .4byte 0x020011E0
_0800F8BC: .4byte 0x03003344
_0800F8C0: .4byte 0x020011E4
_0800F8C4: .4byte 0x020011E8
_0800F8C8: .4byte 0x020011EC

    .thumb
    .global HandlePaletteEffects
HandlePaletteEffects: @ 0x0800F8CC
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	ldr r0, _0800F8F0
	ldrb r0, [r0]
	cmp r0, #0
	beq _0800F8DC
	b _0800FA0A
_0800F8DC:
	ldr r0, _0800F8F4
	ldr r0, [r0]
	cmp r0, #1
	beq _0800F8F8
	cmp r0, #1
	bgt _0800F8EA
	b _0800FA0A
_0800F8EA:
	cmp r0, #2
	beq _0800F940
	b _0800FA0A
	.align 2, 0
_0800F8F0: .4byte 0x02007884
_0800F8F4: .4byte 0x020011CC
_0800F8F8:
	ldr r4, _0800F934
	ldr r0, [r4]
	subs r5, r0, #1
	str r5, [r4]
	cmp r5, #0
	beq _0800F906
	b _0800FA0A
_0800F906:
	movs r0, #8
	movs r1, #0x18
	bl RandomMinMax
	str r0, [r4]
	ldr r1, _0800F938
	ldr r4, _0800F93C
	ldr r0, [r4]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0
	movs r2, #0
	bl DmaTransferBGPalette
	ldr r0, [r4]
	adds r0, #1
	str r0, [r4]
	cmp r0, #6
	bne _0800FA0A
	str r5, [r4]
	b _0800FA0A
	.align 2, 0
_0800F934: .4byte 0x020011D8
_0800F938: .4byte 0x086AD23C
_0800F93C: .4byte 0x020011D4
_0800F940:
	ldr r4, _0800F96C
	ldr r0, [r4]
	subs r1, r0, #1
	str r1, [r4]
	cmp r1, #0
	bne _0800F990
	ldr r2, _0800F970
	ldr r0, [r2]
	cmp r0, #0
	bne _0800F978
	movs r0, #1
	str r0, [r2]
	ldr r0, _0800F974
	ldr r0, [r0]
	movs r1, #0
	movs r2, #0xf
	bl DmaTransferBGPalette
	movs r0, #2
	movs r1, #5
	b _0800F98A
	.align 2, 0
_0800F96C: .4byte 0x020011E4
_0800F970: .4byte 0x020011E8
_0800F974: .4byte 0x020011DC
_0800F978:
	str r1, [r2]
	ldr r0, _0800FA14
	ldr r0, [r0]
	movs r1, #0
	movs r2, #0xf
	bl DmaTransferBGPalette
	movs r0, #5
	movs r1, #0xf0
_0800F98A:
	bl RandomMinMax
	str r0, [r4]
_0800F990:
	ldr r4, _0800FA18
	ldr r0, [r4]
	subs r0, #1
	str r0, [r4]
	cmp r0, #0
	bne _0800FA0A
	movs r1, #0x96
	lsls r1, r1, #1
	movs r0, #0xb4
	bl RandomMinMax
	str r0, [r4]
	ldr r0, _0800FA1C
	ldrb r0, [r0]
	cmp r0, #0
	beq _0800FA0A
	ldr r4, _0800FA20
	movs r0, #0
	movs r1, #2
	bl RandomMinMax
	ldr r5, _0800FA24
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	lsls r0, r0, #3
	adds r0, r0, r4
	ldrh r0, [r0]
	mov r8, r0
	movs r0, #0
	movs r1, #2
	bl RandomMinMax
	ldr r1, _0800FA28
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	lsls r0, r0, #3
	ldrb r1, [r1]
	adds r0, r0, r1
	adds r1, r4, #2
	adds r0, r0, r1
	ldrb r6, [r0]
	movs r0, #0
	movs r1, #2
	bl RandomMinMax
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	lsls r0, r0, #3
	adds r4, #4
	adds r0, r0, r4
	ldr r2, [r0]
	movs r0, #0x80
	lsls r0, r0, #9
	adds r2, r2, r0
	mov r0, r8
	adds r1, r6, #0
	bl audio_new_fx
_0800FA0A:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800FA14: .4byte 0x020011E0
_0800FA18: .4byte 0x020011EC
_0800FA1C: .4byte 0x0203EA89
_0800FA20: .4byte 0x080CE440
_0800FA24: .4byte 0x0806483C
_0800FA28: .4byte 0x0203EA8C

    .thumb
    .global RemovePaletteEffect
RemovePaletteEffect: @ 0x0800FA2C
	ldr r2, _0800FA3C
	ldr r1, _0800FA40
	ldr r0, [r1]
	str r0, [r2]
	movs r0, #0
	str r0, [r1]
	bx lr
	.align 2, 0
_0800FA3C: .4byte 0x020011D0
_0800FA40: .4byte 0x020011CC

    .thumb
    .global RestorePaletteEffect
RestorePaletteEffect: @ 0x0800FA44
	ldr r0, _0800FA50
	ldr r1, _0800FA54
	ldr r1, [r1]
	str r1, [r0]
	bx lr
	.align 2, 0
_0800FA50: .4byte 0x020011CC
_0800FA54: .4byte 0x020011D0
