    .thumb
sub_8033CCC: @ 0x08033CCC
	push {lr}
	adds r2, r0, #0
	ldrh r0, [r2]
	subs r0, #0x77
	cmp r0, #0x1d
	bls _08033CDA
	b _08033FA2
_08033CDA:
	lsls r0, r0, #2
	ldr r1, _08033CE4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08033CE4: .4byte 0x08033CE8
_08033CE8: @ jump table
	.4byte _08033D68 @ case 0
	.4byte _08033D78 @ case 1
	.4byte _08033DB8 @ case 2
	.4byte _08033FA2 @ case 3
	.4byte _08033DE4 @ case 4
	.4byte _08033E14 @ case 5
	.4byte _08033FA2 @ case 6
	.4byte _08033E3C @ case 7
	.4byte _08033FA2 @ case 8
	.4byte _08033E44 @ case 9
	.4byte _08033E6C @ case 10
	.4byte _08033E8E @ case 11
	.4byte _08033EC0 @ case 12
	.4byte _08033EE8 @ case 13
	.4byte _08033F04 @ case 14
	.4byte _08033F20 @ case 15
	.4byte _08033F24 @ case 16
	.4byte _08033F46 @ case 17
	.4byte _08033F90 @ case 18
	.4byte _08033FA2 @ case 19
	.4byte _08033FA2 @ case 20
	.4byte _08033D78 @ case 21
	.4byte _08033E8E @ case 22
	.4byte _08033FA2 @ case 23
	.4byte _08033FA2 @ case 24
	.4byte _08033FA2 @ case 25
	.4byte _08033FA2 @ case 26
	.4byte _08033FA2 @ case 27
	.4byte _08033FA2 @ case 28
	.4byte _08033D60 @ case 29
_08033D60:
	ldr r0, _08033D64
	b _08033F94
	.align 2, 0
_08033D64: .4byte 0x000001A1
_08033D68:
	ldr r0, _08033D74
	ldrb r0, [r0, #6]
_08033D6C:
	cmp r0, #0
	beq _08033D72
	b _08033FA2
_08033D72:
	b _08033F9E
	.align 2, 0
_08033D74: .4byte gGameStatus
_08033D78:
	movs r0, #0xeb
	movs r1, #0
	bl is_obj_disabled
	cmp r0, #0
	bne _08033D86
	b _08033FA2
_08033D86:
	ldr r3, _08033DA8
	ldr r1, _08033DAC
	ldrb r0, [r3]
	ldrb r1, [r1]
	cmp r0, r1
	bne _08033D94
	b _08033F9E
_08033D94:
	ldr r2, _08033DB0
	ldr r1, _08033DB4
	adds r0, r0, r1
	ldrb r1, [r2, #1]
	ldrb r0, [r0]
	cmp r1, r0
	blo _08033DA4
	b _08033FA2
_08033DA4:
	b _08033F9E
	.align 2, 0
_08033DA8: .4byte 0x0200107C
_08033DAC: .4byte 0x0200107D
_08033DB0: .4byte gGameStatus
_08033DB4: .4byte 0x080CC8E4
_08033DB8:
	movs r0, #0xec
	movs r1, #0
	bl is_obj_disabled
	cmp r0, #0
	bne _08033DC6
	b _08033FA2
_08033DC6:
	movs r0, #0xf5
	movs r1, #0
	bl is_obj_disabled
	cmp r0, #0
	beq _08033DD4
	b _08033F9E
_08033DD4:
	ldr r0, _08033DE0
	movs r1, #0
	bl is_obj_disabled
	b _08033D6C
	.align 2, 0
_08033DE0: .4byte 0x00000175
_08033DE4:
	ldr r0, _08033E08
	ldrb r3, [r2, #0xc]
	adds r0, r3, r0
	ldrb r0, [r0]
	cmp r0, #0
	beq _08033DF2
	b _08033F9E
_08033DF2:
	ldr r0, _08033E0C
	ldrh r2, [r0, #0xc]
	ldr r1, _08033E10
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r2, r0
	blt _08033E04
	b _08033FA2
_08033E04:
	b _08033F9E
	.align 2, 0
_08033E08: .4byte 0x0203E0FC
_08033E0C: .4byte gGameStatus
_08033E10: .4byte 0x080CEFA4
_08033E14:
	ldr r0, _08033E38
	movs r1, #0
	bl is_obj_disabled
	cmp r0, #0
	bne _08033E22
	b _08033FA2
_08033E22:
	movs r0, #0xda
	movs r1, #0
	bl is_obj_disabled
	cmp r0, #0
	bne _08033E30
	b _08033F9E
_08033E30:
	movs r0, #0x82
	lsls r0, r0, #1
	b _08033F94
	.align 2, 0
_08033E38: .4byte 0x0000017F
_08033E3C:
	ldr r0, _08033E40
	b _08033F94
	.align 2, 0
_08033E40: .4byte 0x00000179
_08033E44:
	ldr r0, _08033E68
	movs r1, #0
	bl is_obj_disabled
	cmp r0, #0
	bne _08033E52
	b _08033FA2
_08033E52:
	movs r0, #0x86
	lsls r0, r0, #1
	movs r1, #0
	bl is_obj_disabled
	cmp r0, #0
	bne _08033E62
	b _08033F9E
_08033E62:
	movs r0, #0x85
	lsls r0, r0, #1
	b _08033F94
	.align 2, 0
_08033E68: .4byte 0x00000177
_08033E6C:
	movs r0, #0xe0
	movs r1, #0
	bl is_obj_disabled
	cmp r0, #0
	bne _08033E7A
	b _08033FA2
_08033E7A:
	movs r0, #0xe1
	movs r1, #0
	bl is_obj_disabled
	cmp r0, #0
	bne _08033E88
	b _08033F9E
_08033E88:
	movs r0, #0x83
	lsls r0, r0, #1
	b _08033F94
_08033E8E:
	ldr r3, _08033EB0
	ldr r1, _08033EB4
	ldrb r0, [r3]
	ldrb r1, [r1]
	cmp r0, r1
	bne _08033E9C
	b _08033F9E
_08033E9C:
	ldr r2, _08033EB8
	ldr r1, _08033EBC
	adds r0, r0, r1
	ldrb r1, [r2]
	ldrb r0, [r0]
	cmp r1, r0
	blo _08033F9E
	movs r0, #0x2a
	b _08033F94
	.align 2, 0
_08033EB0: .4byte 0x0200107E
_08033EB4: .4byte 0x0200107F
_08033EB8: .4byte gGameStatus
_08033EBC: .4byte 0x080CC8EC
_08033EC0:
	movs r0, #0xe9
	movs r1, #0
	bl is_obj_disabled
	cmp r0, #0
	beq _08033FA2
	movs r0, #0x37
	movs r1, #0
	bl is_obj_disabled
	cmp r0, #0
	beq _08033F9E
	movs r0, #0x38
	movs r1, #0
	bl is_obj_disabled
	cmp r0, #0
	beq _08033F9E
	movs r0, #0xf6
	b _08033F94
_08033EE8:
	movs r0, #0xe8
	movs r1, #0
	bl is_obj_disabled
	cmp r0, #0
	beq _08033FA2
	movs r0, #0xea
	movs r1, #0
	bl is_obj_disabled
	cmp r0, #0
	beq _08033F9E
	movs r0, #0x37
	b _08033F94
_08033F04:
	movs r0, #0xe7
	movs r1, #0
	bl is_obj_disabled
	cmp r0, #0
	beq _08033FA2
	movs r0, #0xe6
	movs r1, #0
	bl is_obj_disabled
	cmp r0, #0
	beq _08033F9E
	movs r0, #0x38
	b _08033F94
_08033F20:
	movs r0, #0xe6
	b _08033F94
_08033F24:
	movs r0, #0xf0
	movs r1, #0
	bl is_obj_disabled
	cmp r0, #0
	beq _08033FA2
	movs r0, #0xef
	movs r1, #0
	bl is_obj_disabled
	cmp r0, #0
	beq _08033F9E
	movs r0, #0xf2
	movs r1, #0
	bl is_obj_disabled
	b _08033D6C
_08033F46:
	movs r0, #0x89
	lsls r0, r0, #1
	movs r1, #0
	bl is_obj_disabled
	cmp r0, #0
	beq _08033FA2
	ldr r0, _08033F80
	ldr r1, _08033F84
	ldrh r3, [r1]
	adds r0, r3, r0
	ldrb r0, [r0]
	cmp r0, #0
	beq _08033FA2
	ldr r1, _08033F88
	adds r1, r3, r1
	ldr r2, _08033F8C
	lsls r0, r3, #2
	adds r0, r0, r3
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrb r1, [r1]
	ldrb r0, [r0, #5]
	cmp r1, r0
	bne _08033F9E
	movs r0, #0x88
	lsls r0, r0, #1
	b _08033F94
	.align 2, 0
_08033F80: .4byte 0x0203E11C
_08033F84: .4byte gLoadedRoomLevel
_08033F88: .4byte 0x0203E116
_08033F8C: .4byte 0x080CC84C
_08033F90:
	movs r0, #0xd1
	lsls r0, r0, #1
_08033F94:
	movs r1, #0
	bl is_obj_disabled
	cmp r0, #0
	beq _08033FA2
_08033F9E:
	movs r0, #1
	b _08033FA4
_08033FA2:
	movs r0, #0
_08033FA4:
	pop {r1}
	bx r1

