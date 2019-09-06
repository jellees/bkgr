
    .syntax unified

    .text

    .thumb
    .global MakeFileStrings
MakeFileStrings: @ 0x0800E7B4
	push {r4, r5, lr}
	ldr r5, _0800E90C
	adds r1, r5, #0
	movs r2, #0x20
	adds r0, r5, #0
	adds r0, #0x19
_0800E7C0:
	strb r2, [r0]
	subs r0, #1
	cmp r0, r1
	bge _0800E7C0
	movs r0, #0xff
	strb r0, [r5, #0x19]
	movs r0, #0x3a
	strb r0, [r5, #0x13]
	strb r0, [r5, #0x16]
	movs r0, #0x30
	strb r0, [r5, #0x11]
	strb r0, [r5, #0x14]
	strb r0, [r5, #0x17]
	movs r1, #0xfc
	strb r1, [r5, #4]
	movs r0, #6
	strb r0, [r5, #5]
	strb r1, [r5, #9]
	movs r0, #7
	strb r0, [r5, #0xa]
	strb r1, [r5, #0xf]
	movs r0, #8
	strb r0, [r5, #0x10]
	strb r1, [r5]
	movs r0, #9
	strb r0, [r5, #1]
	ldr r4, _0800E910
	ldrh r0, [r4]
	adds r1, r5, #6
	bl IntegerToAsciiFw
	ldrh r0, [r4, #2]
	adds r1, r5, #0
	adds r1, #0xb
	bl IntegerToAsciiFw
	ldrb r0, [r4, #4]
	adds r1, r5, #0
	adds r1, #0x12
	bl IntegerToAsciiBw
	ldrb r0, [r4, #5]
	adds r1, r5, #0
	adds r1, #0x15
	bl IntegerToAsciiBw
	ldrb r0, [r4, #6]
	adds r1, r5, #0
	adds r1, #0x18
	bl IntegerToAsciiBw
	ldr r1, _0800E914
	movs r2, #0x20
	adds r5, r1, #0
	adds r0, r5, #0
	adds r0, #0x19
_0800E830:
	strb r2, [r0]
	subs r0, #1
	cmp r0, r1
	bge _0800E830
	movs r0, #0xff
	strb r0, [r5, #0x19]
	movs r0, #0x3a
	strb r0, [r5, #0x13]
	strb r0, [r5, #0x16]
	movs r0, #0x30
	strb r0, [r5, #0x11]
	strb r0, [r5, #0x14]
	strb r0, [r5, #0x17]
	movs r1, #0xfc
	strb r1, [r5, #4]
	movs r0, #6
	strb r0, [r5, #5]
	strb r1, [r5, #9]
	movs r0, #7
	strb r0, [r5, #0xa]
	strb r1, [r5, #0xf]
	movs r0, #8
	strb r0, [r5, #0x10]
	strb r1, [r5]
	movs r0, #0xa
	strb r0, [r5, #1]
	ldr r4, _0800E910
	ldrh r0, [r4, #8]
	adds r1, r5, #6
	bl IntegerToAsciiFw
	ldrh r0, [r4, #0xa]
	adds r1, r5, #0
	adds r1, #0xb
	bl IntegerToAsciiFw
	ldrb r0, [r4, #0xc]
	adds r1, r5, #0
	adds r1, #0x12
	bl IntegerToAsciiBw
	ldrb r0, [r4, #0xd]
	adds r1, r5, #0
	adds r1, #0x15
	bl IntegerToAsciiBw
	ldrb r0, [r4, #0xe]
	adds r1, r5, #0
	adds r1, #0x18
	bl IntegerToAsciiBw
	ldr r1, _0800E918
	movs r2, #0x20
	adds r5, r1, #0
	adds r0, r5, #0
	adds r0, #0x19
_0800E8A0:
	strb r2, [r0]
	subs r0, #1
	cmp r0, r1
	bge _0800E8A0
	movs r0, #0xff
	strb r0, [r5, #0x19]
	movs r0, #0x3a
	strb r0, [r5, #0x13]
	strb r0, [r5, #0x16]
	movs r0, #0x30
	strb r0, [r5, #0x11]
	strb r0, [r5, #0x14]
	strb r0, [r5, #0x17]
	movs r1, #0xfc
	strb r1, [r5, #4]
	movs r0, #6
	strb r0, [r5, #5]
	strb r1, [r5, #9]
	movs r0, #7
	strb r0, [r5, #0xa]
	strb r1, [r5, #0xf]
	movs r0, #8
	strb r0, [r5, #0x10]
	strb r1, [r5]
	movs r0, #0xb
	strb r0, [r5, #1]
	ldr r4, _0800E910
	ldrh r0, [r4, #0x10]
	adds r1, r5, #6
	bl IntegerToAsciiFw
	ldrh r0, [r4, #0x12]
	adds r1, r5, #0
	adds r1, #0xb
	bl IntegerToAsciiFw
	ldrb r0, [r4, #0x14]
	adds r1, r5, #0
	adds r1, #0x12
	bl IntegerToAsciiBw
	ldrb r0, [r4, #0x15]
	adds r1, r5, #0
	adds r1, #0x15
	bl IntegerToAsciiBw
	ldrb r0, [r4, #0x16]
	adds r1, r5, #0
	adds r1, #0x18
	bl IntegerToAsciiBw
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800E90C: .4byte 0x020010B2
_0800E910: .4byte gSaveFiles
_0800E914: .4byte 0x020010CC
_0800E918: .4byte 0x020010E6

    .thumb
    .global init_savefiles
init_savefiles: @ 0x0800E91C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	movs r0, #0
	mov r8, r0
	movs r6, #0
	movs r5, #0
	ldr r7, _0800E9B4
_0800E92C:
	ldr r1, _0800E9B8
	lsls r0, r6, #3
	adds r4, r0, r1
	strb r5, [r4, #4]
	strb r5, [r4, #5]
	strb r5, [r4, #6]
	strh r5, [r4]
	strh r5, [r4, #2]
	movs r0, #1
	strb r0, [r4, #7]
	adds r0, r6, #0
	bl sub_8044D70
	cmp r0, #1
	bne _0800E97A
	movs r0, #1
	mov r8, r0
	adds r0, r6, #0
	bl sub_08044C00
	cmp r0, #0
	beq _0800E97A
	bl sub_8038A34
	ldrb r0, [r7, #8]
	strb r0, [r4, #4]
	ldrb r0, [r7, #9]
	strb r0, [r4, #5]
	ldrb r0, [r7, #0xa]
	strb r0, [r4, #6]
	ldrb r0, [r7]
	strh r0, [r4]
	ldrh r0, [r7, #0xc]
	strh r0, [r4, #2]
	strb r5, [r4, #7]
	bl sub_8030C54
	bl sub_800A5E8
_0800E97A:
	adds r6, #1
	cmp r6, #2
	ble _0800E92C
	mov r0, r8
	cmp r0, #0
	bne _0800E994
	ldr r1, _0800E9BC
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	ldr r1, _0800E9C0
	movs r0, #1
	strb r0, [r1]
_0800E994:
	bl sub_8030C54
	bl sub_800A5E8
	bl sub_8016434
	bl sub_8038A34
	bl sub_803FE78
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800E9B4: .4byte gGameStatus
_0800E9B8: .4byte gSaveFiles
_0800E9BC: .4byte 0x0203EAD6
_0800E9C0: .4byte byte_2000335

    .thumb
    .global reset_savefiles
reset_savefiles: @ 0x0800E9C4
	push {lr}
	movs r1, #0
	movs r3, #1
	ldr r0, _0800E9E8
	movs r2, #2
_0800E9CE:
	strb r1, [r0, #4]
	strb r1, [r0, #5]
	strb r1, [r0, #6]
	strh r1, [r0]
	strh r1, [r0, #2]
	strb r3, [r0, #7]
	adds r0, #8
	subs r2, #1
	cmp r2, #0
	bge _0800E9CE
	pop {r0}
	bx r0
	.align 2, 0
_0800E9E8: .4byte gSaveFiles
