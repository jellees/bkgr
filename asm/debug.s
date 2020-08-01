
    .syntax unified

    .text

	.global sub_8010744
    .thumb
sub_8010744: @ 0x08010744
	push {r4, lr}
	adds r2, r0, #0
	ldr r0, _0801075C
	ldrb r0, [r0]
	subs r0, #6
	cmp r0, #5
	bhi _080107D4
	lsls r0, r0, #2
	ldr r1, _08010760
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0801075C: .4byte 0x02001388
_08010760: .4byte 0x08010764
_08010764: @ jump table
	.4byte _0801077C @ case 0
	.4byte _08010788 @ case 1
	.4byte _080107B4 @ case 2
	.4byte _0801077C @ case 3
	.4byte _08010788 @ case 4
	.4byte _080107B4 @ case 5
_0801077C:
	ldr r0, _08010784
	str r2, [r0]
	b _080107D4
	.align 2, 0
_08010784: .4byte 0x02001208
_08010788:
	ldr r3, _080107A8
	ldr r0, [r3]
	adds r4, r0, r2
	str r4, [r3]
	ldr r1, _080107AC
	ldr r0, [r1]
	subs r2, r0, #1
	str r2, [r1]
	cmp r2, #0
	bne _080107D4
	movs r0, #2
	str r0, [r1]
	ldr r1, _080107B0
	asrs r0, r4, #1
	b _080107D0
	.align 2, 0
_080107A8: .4byte 0x02001250
_080107AC: .4byte 0x02001298
_080107B0: .4byte 0x02001208
_080107B4:
	ldr r3, _080107DC
	ldr r0, [r3]
	adds r4, r0, r2
	str r4, [r3]
	ldr r1, _080107E0
	ldr r0, [r1]
	subs r2, r0, #1
	str r2, [r1]
	cmp r2, #0
	bne _080107D4
	movs r0, #4
	str r0, [r1]
	ldr r1, _080107E4
	asrs r0, r4, #2
_080107D0:
	str r0, [r1]
	str r2, [r3]
_080107D4:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080107DC: .4byte 0x02001250
_080107E0: .4byte 0x02001298
_080107E4: .4byte 0x02001208

	.global sub_80107E8
    .thumb
sub_80107E8: @ 0x080107E8
	push {r4, lr}
	adds r2, r0, #0
	ldr r0, _08010800
	ldrb r0, [r0]
	subs r0, #6
	cmp r0, #5
	bhi _08010878
	lsls r0, r0, #2
	ldr r1, _08010804
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08010800: .4byte 0x02001388
_08010804: .4byte 0x08010808
_08010808: @ jump table
	.4byte _08010820 @ case 0
	.4byte _0801082C @ case 1
	.4byte _08010858 @ case 2
	.4byte _08010820 @ case 3
	.4byte _0801082C @ case 4
	.4byte _08010858 @ case 5
_08010820:
	ldr r0, _08010828
	str r2, [r0]
	b _08010878
	.align 2, 0
_08010828: .4byte 0x0200120C
_0801082C:
	ldr r3, _0801084C
	ldr r0, [r3]
	adds r4, r0, r2
	str r4, [r3]
	ldr r1, _08010850
	ldr r0, [r1]
	subs r2, r0, #1
	str r2, [r1]
	cmp r2, #0
	bne _08010878
	movs r0, #2
	str r0, [r1]
	ldr r1, _08010854
	asrs r0, r4, #1
	b _08010874
	.align 2, 0
_0801084C: .4byte 0x02001254
_08010850: .4byte 0x0200129C
_08010854: .4byte 0x0200120C
_08010858:
	ldr r3, _08010880
	ldr r0, [r3]
	adds r4, r0, r2
	str r4, [r3]
	ldr r1, _08010884
	ldr r0, [r1]
	subs r2, r0, #1
	str r2, [r1]
	cmp r2, #0
	bne _08010878
	movs r0, #4
	str r0, [r1]
	ldr r1, _08010888
	asrs r0, r4, #2
_08010874:
	str r0, [r1]
	str r2, [r3]
_08010878:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08010880: .4byte 0x02001254
_08010884: .4byte 0x0200129C
_08010888: .4byte 0x0200120C

	.global sub_801088C
    .thumb
sub_801088C: @ 0x0801088C
	push {r4, lr}
	adds r1, r0, #0
	ldr r0, _080108A4
	ldrb r0, [r0]
	cmp r0, #7
	beq _080108B8
	cmp r0, #7
	bgt _080108A8
	cmp r0, #6
	beq _080108AE
	b _08010904
	.align 2, 0
_080108A4: .4byte 0x02001388
_080108A8:
	cmp r0, #8
	beq _080108E4
	b _08010904
_080108AE:
	ldr r0, _080108B4
	str r1, [r0]
	b _08010904
	.align 2, 0
_080108B4: .4byte 0x02001210
_080108B8:
	ldr r3, _080108D8
	ldr r0, [r3]
	adds r4, r0, r1
	str r4, [r3]
	ldr r1, _080108DC
	ldr r0, [r1]
	subs r2, r0, #1
	str r2, [r1]
	cmp r2, #0
	bne _08010904
	movs r0, #2
	str r0, [r1]
	ldr r1, _080108E0
	asrs r0, r4, #1
	b _08010900
	.align 2, 0
_080108D8: .4byte 0x02001258
_080108DC: .4byte 0x020012A0
_080108E0: .4byte 0x02001210
_080108E4:
	ldr r3, _0801090C
	ldr r0, [r3]
	adds r4, r0, r1
	str r4, [r3]
	ldr r1, _08010910
	ldr r0, [r1]
	subs r2, r0, #1
	str r2, [r1]
	cmp r2, #0
	bne _08010904
	movs r0, #4
	str r0, [r1]
	ldr r1, _08010914
	asrs r0, r4, #2
_08010900:
	str r0, [r1]
	str r2, [r3]
_08010904:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801090C: .4byte 0x02001258
_08010910: .4byte 0x020012A0
_08010914: .4byte 0x02001210

    .thumb
    .global Debug_SetAfterGameUpdate
Debug_SetAfterGameUpdate: @ 0x08010918
	push {r4, lr}
	adds r2, r0, #0
	ldr r0, _08010930
	ldrb r0, [r0]
	cmp r0, #5
	bhi _080109EE
	lsls r0, r0, #2
	ldr r1, _08010934
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08010930: .4byte 0x02001388
_08010934: .4byte 0x08010938
_08010938: @ jump table
	.4byte _080109EE @ case 0
	.4byte _08010950 @ case 1
	.4byte _08010958 @ case 2
	.4byte _08010984 @ case 3
	.4byte _080109B0 @ case 4
	.4byte _080109E0 @ case 5
_08010950:
	ldr r0, _08010954
	b _080109EC
	.align 2, 0
_08010954: .4byte gDebugESN
_08010958:
	ldr r3, _08010978
	ldr r0, [r3]
	adds r4, r0, r2
	str r4, [r3]
	ldr r1, _0801097C
	ldr r0, [r1]
	subs r2, r0, #1
	str r2, [r1]
	cmp r2, #0
	bne _080109EE
	movs r0, #2
	str r0, [r1]
	ldr r1, _08010980
	asrs r0, r4, #1
	b _080109CC
	.align 2, 0
_08010978: .4byte 0x02001394
_0801097C: .4byte 0x0200138C
_08010980: .4byte gDebugESN
_08010984:
	ldr r3, _080109A4
	ldr r0, [r3]
	adds r4, r0, r2
	str r4, [r3]
	ldr r1, _080109A8
	ldr r0, [r1]
	subs r2, r0, #1
	str r2, [r1]
	cmp r2, #0
	bne _080109EE
	movs r0, #4
	str r0, [r1]
	ldr r1, _080109AC
	asrs r0, r4, #2
	b _080109CC
	.align 2, 0
_080109A4: .4byte 0x02001394
_080109A8: .4byte 0x0200138C
_080109AC: .4byte gDebugESN
_080109B0:
	ldr r3, _080109D4
	ldr r0, [r3]
	adds r4, r0, r2
	str r4, [r3]
	ldr r1, _080109D8
	ldr r0, [r1]
	subs r2, r0, #1
	str r2, [r1]
	cmp r2, #0
	bne _080109EE
	movs r0, #8
	str r0, [r1]
	ldr r1, _080109DC
	asrs r0, r4, #3
_080109CC:
	strb r0, [r1]
	str r2, [r3]
	b _080109EE
	.align 2, 0
_080109D4: .4byte 0x02001394
_080109D8: .4byte 0x0200138C
_080109DC: .4byte gDebugESN
_080109E0:
	ldr r0, _080109F4
	strb r2, [r0]
	ldr r0, _080109F8
	ldrb r1, [r0]
	cmp r2, r1
	ble _080109EE
_080109EC:
	strb r2, [r0]
_080109EE:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080109F4: .4byte gDebugESN
_080109F8: .4byte 0x02001389

    .thumb
    .global Debug_SetAfterVideoUpdate
Debug_SetAfterVideoUpdate: @ 0x080109FC
	push {lr}
	adds r1, r0, #0
	ldr r0, _08010A18
	ldrb r0, [r0]
	cmp r0, #0
	beq _08010A14
	cmp r0, #0
	blt _08010A14
	cmp r0, #5
	bgt _08010A14
	ldr r0, _08010A1C
	strb r1, [r0]
_08010A14:
	pop {r0}
	bx r0
	.align 2, 0
_08010A18: .4byte 0x02001388
_08010A1C: .4byte gDebugESV
