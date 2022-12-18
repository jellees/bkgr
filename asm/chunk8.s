
    .syntax unified

    .text
	
    .thumb
sub_8047430: @ 0x08047430
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r7, r2, #0
	ldr r0, [r5]
	adds r6, r0, #0
	adds r6, #0xa0
	adds r0, r5, #0
	adds r0, #0x65
	strb r1, [r0]
	ldr r2, _080474A8
	subs r0, #9
	ldrh r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r2
	lsls r1, r1, #4
	ldr r0, [r0]
	adds r0, r0, r1
	str r0, [r5, #0x28]
	ldr r1, [r0, #0xc]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _080474BE
	ldr r0, [r5, #0x58]
	bl audio_fx_still_active
	cmp r0, #0
	beq _08047476
	ldr r0, _080474AC
	ldrb r0, [r0]
	cmp r0, #0
	beq _080474B8
	ldr r0, [r5, #0x58]
	bl audio_halt_fx
_08047476:
	ldr r0, _080474AC
	ldrb r0, [r0]
	cmp r0, #0
	beq _080474B8
	ldr r4, _080474B0
	ldr r0, [r5, #0x28]
	ldr r2, [r0, #0xc]
	lsls r2, r2, #3
	adds r0, r2, r4
	ldrh r0, [r0]
	ldr r1, _080474B4
	ldrb r1, [r1]
	adds r1, r1, r2
	adds r3, r4, #2
	adds r1, r1, r3
	ldrb r1, [r1]
	adds r4, #4
	adds r2, r2, r4
	ldr r2, [r2]
	movs r3, #0x80
	lsls r3, r3, #9
	adds r2, r2, r3
	bl audio_new_fx
	b _080474BC
	.align 2, 0
_080474A8: .4byte 0x087DFA9C
_080474AC: .4byte gCanPlaySfx
_080474B0: .4byte 0x080CE440
_080474B4: .4byte gSfxVolume
_080474B8:
	movs r0, #1
	rsbs r0, r0, #0
_080474BC:
	str r0, [r5, #0x58]
_080474BE:
	cmp r7, #0
	beq _080474E6
	ldr r0, [r5, #0x28]
	ldrh r1, [r0, #4]
	ldrb r3, [r0, #8]
	adds r0, r6, #0
	movs r2, #0
	bl sub_8003368
	ldr r0, [r5, #0x2c]
	ldr r1, [r5, #0x28]
	ldr r1, [r1]
	ldr r3, _08047500
	ldrb r2, [r6, #0xa]
	lsls r2, r2, #2
	adds r2, r2, r3
	ldr r2, [r2]
	movs r3, #0
	bl sub_8003884
_080474E6:
	ldr r0, [r5, #0x28]
	ldrh r0, [r0, #6]
	adds r2, r5, #0
	adds r2, #0x5e
	movs r1, #0
	strh r0, [r2]
	adds r0, r5, #0
	adds r0, #0x68
	strb r1, [r0]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08047500: .4byte dword_80CC290

    .thumb
    .global sub_08047504
sub_08047504: @ 0x08047504
	push {lr}
	ldr r0, _0804753C
	ldr r0, [r0]
	cmp r0, #0xd8
	beq _08047512
	.2byte 0xEE00, 0xEE00
_08047512:
	ldr r2, _08047540
	ldr r1, _08047544
	subs r0, #1
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	adds r0, #1
	ldr r1, [r2]
	cmp r1, r0
	beq _0804752A
	.2byte 0xEE00, 0xEE00
_0804752A:
	ldr r0, _08047548
	movs r1, #0
	str r1, [r0]
	ldr r0, _0804754C
	str r1, [r0]
	ldr r0, _08047550
	strb r1, [r0]
	pop {r0}
	bx r0
	.align 2, 0
_0804753C: .4byte 0x080CF2F0
_08047540: .4byte 0x080CF13C
_08047544: .4byte 0x080CF140
_08047548: .4byte 0x0203F8C0
_0804754C: .4byte 0x0203F8B0
_08047550: .4byte 0x03006EF3

    .thumb
sub_8047554: @ 0x08047554
	push {r4, lr}
	ldr r4, _08047668
	movs r0, #0x82
	lsls r0, r0, #5
	movs r1, #0xa
	movs r2, #4
	bl Alloc
	adds r1, r0, #0
	str r1, [r4]
	ldr r0, _0804766C
	movs r2, #0x82
	lsls r2, r2, #3
	bl DmaTransfer32
	ldr r0, _08047670
	ldr r0, [r0]
	bl sub_8009D7C
	ldr r0, _08047674
	ldr r0, [r0]
	bl sub_8009D7C
	ldr r0, _08047678
	ldr r0, [r0]
	bl sub_8009D7C
	ldr r0, _0804767C
	ldr r0, [r0]
	bl sub_8009D7C
	ldr r0, _08047680
	ldrb r0, [r0]
	bl sub_8009D7C
	ldr r0, _08047684
	ldrb r0, [r0]
	bl sub_8009D7C
	ldr r0, _08047688
	ldrb r0, [r0]
	bl sub_8009D7C
	ldr r0, _0804768C
	ldrb r0, [r0]
	bl sub_8009D7C
	ldr r0, _08047690
	ldr r0, [r0]
	bl sub_8009D7C
	ldr r0, _08047694
	ldr r0, [r0]
	bl sub_8009D7C
	ldr r0, _08047698
	ldrb r0, [r0]
	bl sub_8009D7C
	ldr r0, _0804769C
	ldrb r0, [r0]
	bl sub_8009D7C
	ldr r0, _080476A0
	ldrb r0, [r0]
	bl sub_8009D7C
	ldr r0, _080476A4
	ldrb r0, [r0]
	bl sub_8009D7C
	ldr r0, _080476A8
	ldrb r0, [r0]
	bl sub_8009D7C
	ldr r0, _080476AC
	ldrb r0, [r0]
	bl sub_8009D7C
	ldr r0, _080476B0
	ldrb r0, [r0]
	bl sub_8009D7C
	ldr r0, _080476B4
	ldrb r0, [r0]
	bl sub_8009D7C
	ldr r0, _080476B8
	ldrb r0, [r0]
	bl sub_8009D7C
	ldr r0, _080476BC
	ldrb r0, [r0]
	bl sub_8009D7C
	ldr r0, _080476C0
	ldrb r0, [r0]
	bl sub_8009D7C
	ldr r0, _080476C4
	ldrb r0, [r0]
	bl sub_8009D7C
	ldr r0, _080476C8
	ldrb r0, [r0]
	bl sub_8009D7C
	ldr r0, _080476CC
	ldrb r0, [r0]
	bl sub_8009D7C
	ldr r0, _080476D0
	ldrb r0, [r0]
	bl sub_8009D7C
	ldr r0, _080476D4
	ldrb r0, [r0]
	bl sub_8009D7C
	ldr r0, _080476D8
	ldrb r0, [r0]
	bl sub_8009D7C
	ldr r0, _080476DC
	ldrb r0, [r0]
	bl sub_8009D7C
	ldr r0, _080476E0
	ldrb r0, [r0]
	bl sub_8009D7C
	ldr r0, _080476E4
	ldrb r0, [r0]
	bl sub_8009D7C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08047668: .4byte 0x0203F8E0
_0804766C: .4byte 0x0200DCE0
_08047670: .4byte 0x0203F8B0
_08047674: .4byte 0x0203F8B4
_08047678: .4byte 0x0203F8C0
_0804767C: .4byte 0x0203F8C4
_08047680: .4byte 0x03006EF0
_08047684: .4byte 0x0203F8CC
_08047688: .4byte 0x0203F8CD
_0804768C: .4byte 0x0203F8CE
_08047690: .4byte 0x0203F8B8
_08047694: .4byte 0x0203F8D0
_08047698: .4byte 0x0203F8BC
_0804769C: .4byte 0x0203F8D4
_080476A0: .4byte 0x0203F8D5
_080476A4: .4byte 0x0203F8D6
_080476A8: .4byte 0x0203F8D7
_080476AC: .4byte 0x0203F8D8
_080476B0: .4byte 0x03006EF3
_080476B4: .4byte 0x0203F8D9
_080476B8: .4byte 0x0203F8DA
_080476BC: .4byte 0x0203F8DB
_080476C0: .4byte 0x0203F8BD
_080476C4: .4byte 0x0203F8DC
_080476C8: .4byte 0x0203F8DD
_080476CC: .4byte 0x0203F918
_080476D0: .4byte 0x0203F919
_080476D4: .4byte 0x0203F91A
_080476D8: .4byte 0x0203F91B
_080476DC: .4byte 0x0203F91C
_080476E0: .4byte 0x0203F91D
_080476E4: .4byte 0x0203F91E

    .thumb
sub_80476E8: @ 0x080476E8
	push {r4, lr}
	ldr r4, _080477F8
	ldr r0, [r4]
	ldr r1, _080477FC
	movs r2, #0x82
	lsls r2, r2, #3
	bl DmaTransfer32
	ldr r0, [r4]
	movs r1, #4
	bl Free
	ldr r4, _08047800
	bl sub_8009DAC
	strb r0, [r4]
	ldr r4, _08047804
	bl sub_8009DAC
	strb r0, [r4]
	ldr r4, _08047808
	bl sub_8009DAC
	strb r0, [r4]
	ldr r4, _0804780C
	bl sub_8009DAC
	strb r0, [r4]
	ldr r4, _08047810
	bl sub_8009DAC
	strb r0, [r4]
	ldr r4, _08047814
	bl sub_8009DAC
	strb r0, [r4]
	ldr r4, _08047818
	bl sub_8009DAC
	strb r0, [r4]
	ldr r4, _0804781C
	bl sub_8009DAC
	strb r0, [r4]
	ldr r4, _08047820
	bl sub_8009DAC
	strb r0, [r4]
	ldr r4, _08047824
	bl sub_8009DAC
	strb r0, [r4]
	ldr r4, _08047828
	bl sub_8009DAC
	strb r0, [r4]
	ldr r4, _0804782C
	bl sub_8009DAC
	strb r0, [r4]
	ldr r4, _08047830
	bl sub_8009DAC
	strb r0, [r4]
	ldr r4, _08047834
	bl sub_8009DAC
	strb r0, [r4]
	ldr r4, _08047838
	bl sub_8009DAC
	strb r0, [r4]
	ldr r4, _0804783C
	bl sub_8009DAC
	strb r0, [r4]
	ldr r4, _08047840
	bl sub_8009DAC
	strb r0, [r4]
	ldr r4, _08047844
	bl sub_8009DAC
	strb r0, [r4]
	ldr r4, _08047848
	bl sub_8009DAC
	strb r0, [r4]
	ldr r4, _0804784C
	bl sub_8009DAC
	strb r0, [r4]
	bl sub_8009DAC
	ldr r1, _08047850
	str r0, [r1]
	ldr r4, _08047854
	bl sub_8009DAC
	str r0, [r4]
	ldr r4, _08047858
	bl sub_8009DAC
	strb r0, [r4]
	ldr r4, _0804785C
	bl sub_8009DAC
	strb r0, [r4]
	ldr r4, _08047860
	bl sub_8009DAC
	strb r0, [r4]
	ldr r4, _08047864
	bl sub_8009DAC
	strb r0, [r4]
	bl sub_8009DAC
	ldr r1, _08047868
	str r0, [r1]
	bl sub_8009DAC
	ldr r1, _0804786C
	str r0, [r1]
	ldr r4, _08047870
	bl sub_8009DAC
	str r0, [r4]
	ldr r4, _08047874
	bl sub_8009DAC
	str r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080477F8: .4byte 0x0203F8E0
_080477FC: .4byte 0x0200DCE0
_08047800: .4byte 0x0203F91E
_08047804: .4byte 0x0203F91D
_08047808: .4byte 0x0203F91C
_0804780C: .4byte 0x0203F91B
_08047810: .4byte 0x0203F91A
_08047814: .4byte 0x0203F919
_08047818: .4byte 0x0203F918
_0804781C: .4byte 0x0203F8DD
_08047820: .4byte 0x0203F8DC
_08047824: .4byte 0x0203F8BD
_08047828: .4byte 0x0203F8DB
_0804782C: .4byte 0x0203F8DA
_08047830: .4byte 0x0203F8D9
_08047834: .4byte 0x03006EF3
_08047838: .4byte 0x0203F8D8
_0804783C: .4byte 0x0203F8D7
_08047840: .4byte 0x0203F8D6
_08047844: .4byte 0x0203F8D5
_08047848: .4byte 0x0203F8D4
_0804784C: .4byte 0x0203F8BC
_08047850: .4byte 0x0203F8D0
_08047854: .4byte 0x0203F8B8
_08047858: .4byte 0x0203F8CE
_0804785C: .4byte 0x0203F8CD
_08047860: .4byte 0x0203F8CC
_08047864: .4byte 0x03006EF0
_08047868: .4byte 0x0203F8C4
_0804786C: .4byte 0x0203F8C0
_08047870: .4byte 0x0203F8B4
_08047874: .4byte 0x0203F8B0

    .thumb
    .global sub_8047878
sub_8047878: @ 0x08047878
	push {r4, r5, lr}
	adds r4, r0, #0
	cmp r1, #1
	beq _08047886
	cmp r1, #2
	beq _0804788C
	b _08047892
_08047886:
	bl sub_8047554
	b _08047892
_0804788C:
	bl sub_80476E8
	b _08047906
_08047892:
	ldr r5, _0804790C
	ldr r0, [r5]
	cmp r0, #0
	beq _080478A4
	movs r1, #2
	bl Free
	movs r0, #0
	str r0, [r5]
_080478A4:
	cmp r4, #0
	beq _080478B6
	movs r0, #0x6c
	muls r0, r4, r0
	movs r1, #0xa
	movs r2, #2
	bl Alloc
	str r0, [r5]
_080478B6:
	ldr r0, _08047910
	movs r1, #0
	str r1, [r0]
	ldr r0, _08047914
	str r4, [r0]
	ldr r0, _08047918
	strb r1, [r0]
	ldr r0, _0804791C
	strb r1, [r0]
	ldr r0, _08047920
	strb r1, [r0]
	ldr r0, _08047924
	strb r1, [r0]
	ldr r0, _08047928
	strb r1, [r0]
	ldr r0, _0804792C
	strb r1, [r0]
	ldr r0, _08047930
	strb r1, [r0]
	ldr r0, _08047934
	strb r1, [r0]
	ldr r0, _08047938
	strb r1, [r0]
	ldr r0, _0804793C
	strb r1, [r0]
	ldr r0, _08047940
	strb r1, [r0]
	ldr r2, _08047944
	movs r0, #1
	strb r0, [r2]
	ldr r0, _08047948
	strb r1, [r0]
	ldr r0, _0804794C
	strb r1, [r0]
	ldr r2, _08047950
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r2]
	ldr r0, _08047954
	strb r1, [r0]
_08047906:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0804790C: .4byte 0x0203F8B0
_08047910: .4byte 0x0203F8C0
_08047914: .4byte 0x0203F8C4
_08047918: .4byte 0x0203F918
_0804791C: .4byte 0x0203F919
_08047920: .4byte 0x0203F91A
_08047924: .4byte 0x0203F91B
_08047928: .4byte 0x0203F91C
_0804792C: .4byte 0x0203F91D
_08047930: .4byte 0x0203F91E
_08047934: .4byte 0x03006EF3
_08047938: .4byte 0x0203F8D4
_0804793C: .4byte 0x0203F8D5
_08047940: .4byte 0x0203F8D6
_08047944: .4byte 0x0203F8DD
_08047948: .4byte 0x0203F8D7
_0804794C: .4byte 0x0203F8BD
_08047950: .4byte 0x0203F8C8
_08047954: .4byte 0x0203F8D9

    .thumb
sub_08047958: @ 0x08047958
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r5, r1, #0
	ldr r4, [r6]
	adds r7, r4, #0
	adds r7, #0x94
	ldr r3, [r7]
	ldr r0, [r4, #0x4c]
	asrs r0, r0, #1
	subs r1, r3, r0
	str r1, [r4, #0x64]
	adds r0, r3, r0
	str r0, [r4, #0x70]
	ldr r3, [r7, #8]
	ldr r0, [r4, #0x54]
	asrs r0, r0, #1
	subs r1, r3, r0
	str r1, [r4, #0x6c]
	adds r0, r3, r0
	str r0, [r4, #0x78]
	ldr r1, [r7, #4]
	ldr r0, [r6, #0x54]
	adds r3, r1, r0
	cmp r5, #1
	beq _080479A8
	cmp r5, #1
	bgt _08047994
	cmp r5, #0
	beq _080479B6
	b _080479C0
_08047994:
	cmp r5, #2
	bne _080479C0
	ldr r1, _080479A4
	adds r0, r3, r1
	str r0, [r4, #0x68]
	ldr r0, [r4, #0x50]
	b _080479B0
	.align 2, 0
_080479A4: .4byte 0xFFFF0000
_080479A8:
	ldr r0, [r4, #0x50]
	asrs r0, r0, #1
	subs r1, r3, r0
	str r1, [r4, #0x68]
_080479B0:
	adds r0, r3, r0
	str r0, [r4, #0x74]
	b _080479C4
_080479B6:
	ldr r0, [r4, #0x50]
	subs r0, r3, r0
	str r0, [r4, #0x68]
	str r3, [r4, #0x74]
	b _080479C4
_080479C0:
	.2byte 0xEE00, 0xEE00
_080479C4:
	cmp r2, #0
	beq _08047A02
	ldrb r1, [r4, #0x14]
	lsrs r1, r1, #1
	lsls r1, r1, #0x10
	ldrb r2, [r4, #0x18]
	lsrs r2, r2, #1
	lsls r2, r2, #0x10
	ldrh r0, [r4, #2]
	lsls r3, r0, #0x10
	ldrb r0, [r4, #0x14]
	lsls r5, r0, #0x10
	subs r0, r3, r5
	str r0, [r6, #0x30]
	adds r0, r0, r1
	str r0, [r6, #0x40]
	adds r0, r3, r5
	str r0, [r6, #0x34]
	subs r0, r0, r1
	str r0, [r6, #0x44]
	ldr r3, [r7, #8]
	ldrb r0, [r4, #0x18]
	lsls r5, r0, #0x10
	adds r0, r3, r5
	str r0, [r6, #0x38]
	subs r0, r0, r2
	str r0, [r6, #0x48]
	subs r0, r3, r5
	str r0, [r6, #0x3c]
	adds r0, r0, r2
	str r0, [r6, #0x4c]
_08047A02:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

    .thumb
sub_8047A08: @ 0x08047A08
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r3, r1, #0
	ldr r4, [r6]
	ldr r0, _08047B08
	ldrb r0, [r0]
	cmp r0, #0
	beq _08047A52
	ldr r0, _08047B0C
	ldr r0, [r0]
	cmp r0, #2
	bne _08047A52
	ldr r2, _08047B10
	adds r0, r6, #0
	adds r0, #0x64
	ldrb r1, [r0]
	lsls r1, r1, #3
	adds r1, r1, r2
	ldr r0, _08047B14
	ldrb r0, [r0]
	ldr r1, [r1]
	lsls r0, r0, #4
	adds r0, r0, r1
	ldr r1, [r0]
	ldr r0, _08047B18
	cmp r1, r0
	beq _08047A52
	ldr r0, _08047B1C
	cmp r1, r0
	beq _08047A52
	ldr r0, _08047B20
	cmp r1, r0
	beq _08047A52
	adds r1, r6, #0
	adds r1, #0x5e
	movs r0, #0
	strh r0, [r1]
_08047A52:
	adds r1, r6, #0
	adds r1, #0x5e
	ldrh r0, [r1]
	cmp r0, #0
	bne _08047B48
	cmp r3, #0
	beq _08047A68
	ldr r1, _08047B14
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
_08047A68:
	movs r7, #1
	adds r0, r6, #0
	adds r0, #0x65
	strb r7, [r0]
	adds r0, r4, #0
	adds r0, #0x94
	bl sub_80494FC
	bl sub_8048E0C
	adds r1, r0, #0
	adds r0, r6, #0
	bl sub_8049038
	ldr r0, [r6, #0x2c]
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_8003884
	ldr r5, _08047B24
	ldr r4, _08047B10
	adds r3, r6, #0
	adds r3, #0x64
	ldrb r1, [r3]
	lsls r1, r1, #3
	adds r1, r1, r4
	ldr r2, _08047B14
	ldrb r0, [r2]
	ldr r1, [r1]
	lsls r0, r0, #4
	adds r0, r0, r1
	ldrb r0, [r0, #4]
	strb r0, [r5]
	ldrb r0, [r3]
	lsls r0, r0, #3
	adds r0, r0, r4
	ldrb r1, [r2]
	ldr r0, [r0]
	lsls r1, r1, #4
	adds r1, r1, r0
	ldr r1, [r1]
	ldr r0, _08047B1C
	cmp r1, r0
	beq _08047B00
	ldr r0, _08047B28
	cmp r1, r0
	beq _08047B00
	ldr r1, _08047B2C
	ldrb r0, [r1]
	cmp r0, #0
	bne _08047B00
	strb r7, [r1]
	ldr r0, _08047B30
	ldrb r0, [r0]
	cmp r0, #0
	beq _08047B00
	ldr r2, _08047B34
	movs r1, #0xb6
	lsls r1, r1, #3
	adds r0, r2, r1
	ldrh r0, [r0]
	ldr r3, _08047B38
	ldr r4, _08047B3C
	adds r1, r2, r4
	ldrb r3, [r3]
	adds r1, r1, r3
	ldrb r1, [r1]
	ldr r3, _08047B40
	adds r2, r2, r3
	ldr r2, [r2]
	movs r4, #0x80
	lsls r4, r4, #9
	adds r2, r2, r4
	bl audio_new_fx
_08047B00:
	ldr r1, _08047B44
	movs r0, #0
	str r0, [r1]
	b _08047BB8
	.align 2, 0
_08047B08: .4byte 0x0203F8BD
_08047B0C: .4byte 0x02001104
_08047B10: .4byte 0x080B19E0
_08047B14: .4byte 0x0203F8D5
_08047B18: .4byte 0x0804B959
_08047B1C: .4byte 0x0804CAB1
_08047B20: .4byte 0x08049A95
_08047B24: .4byte 0x0203F8D4
_08047B28: .4byte 0x0804B75D
_08047B2C: .4byte 0x0203F8D9
_08047B30: .4byte gCanPlaySfx
_08047B34: .4byte 0x080CE440
_08047B38: .4byte gSfxVolume
_08047B3C: .4byte 0x000005B2
_08047B40: .4byte 0x000005B4
_08047B44: .4byte 0x0203F8B8
_08047B48:
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x59
	bhi _08047BB8
	ldr r2, _08047BC0
	adds r0, r6, #0
	adds r0, #0x64
	ldrb r1, [r0]
	lsls r1, r1, #3
	adds r1, r1, r2
	ldr r0, _08047BC4
	ldrb r0, [r0]
	ldr r1, [r1]
	lsls r0, r0, #4
	adds r0, r0, r1
	ldr r3, [r0]
	ldr r0, _08047BC8
	cmp r3, r0
	beq _08047BB8
	ldr r0, _08047BCC
	cmp r3, r0
	beq _08047BB8
	ldr r0, _08047BD0
	cmp r3, r0
	beq _08047BB8
	ldr r1, _08047BD4
	ldrb r0, [r1]
	cmp r0, #0
	bne _08047BB8
	movs r0, #1
	strb r0, [r1]
	ldr r0, _08047BD8
	ldrb r0, [r0]
	cmp r0, #0
	beq _08047BB8
	ldr r2, _08047BDC
	movs r1, #0xb6
	lsls r1, r1, #3
	adds r0, r2, r1
	ldrh r0, [r0]
	ldr r3, _08047BE0
	ldr r4, _08047BE4
	adds r1, r2, r4
	ldrb r3, [r3]
	adds r1, r1, r3
	ldrb r1, [r1]
	ldr r3, _08047BE8
	adds r2, r2, r3
	ldr r2, [r2]
	movs r4, #0x80
	lsls r4, r4, #9
	adds r2, r2, r4
	bl audio_new_fx
_08047BB8:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08047BC0: .4byte 0x080B19E0
_08047BC4: .4byte 0x0203F8D5
_08047BC8: .4byte 0x08049A95
_08047BCC: .4byte 0x0804CAB1
_08047BD0: .4byte 0x0804B75D
_08047BD4: .4byte 0x0203F8D9
_08047BD8: .4byte gCanPlaySfx
_08047BDC: .4byte 0x080CE440
_08047BE0: .4byte gSfxVolume
_08047BE4: .4byte 0x000005B2
_08047BE8: .4byte 0x000005B4

    .thumb
    .global sub_8047BEC
sub_8047BEC: @ 0x08047BEC
	push {r4, r5, r6, r7, lr}
	ldr r7, _08047C2C
	ldrb r0, [r7]
	cmp r0, #0
	beq _08047C58
	ldr r0, _08047C30
	ldrb r0, [r0]
	cmp r0, #0
	bne _08047C58
	movs r5, #0x25
	ldr r6, _08047C34
	ldr r1, [r6]
	adds r0, r1, #0
	adds r0, #0x64
	ldrb r0, [r0]
	lsrs r0, r0, #4
	cmp r0, #0
	beq _08047C16
	cmp r0, #1
	bne _08047C58
	movs r5, #0x26
_08047C16:
	ldr r0, [r1]
	adds r0, #0x46
	movs r1, #0
	ldrsh r4, [r0, r1]
	cmp r4, #0
	bne _08047C38
	adds r0, r5, #0
	bl sub_0804200C
	strb r4, [r7]
	b _08047C58
	.align 2, 0
_08047C2C: .4byte 0x03006EF3
_08047C30: .4byte byte_203F99C
_08047C34: .4byte 0x0203F8B4
_08047C38:
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r0, r5, #0
	bl sub_08040AD0
	ldr r0, [r6]
	ldr r0, [r0]
	adds r0, #0x46
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r0, r5, #0
	bl sub_08040204
	adds r0, r5, #0
	bl sub_08041FA4
_08047C58:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

    .thumb
sub_8047C60: @ 0x08047C60
	push {lr}
	ldr r3, [r0]
	ldrb r1, [r3, #0x14]
	lsls r1, r1, #0x10
	ldr r2, [r0, #0x30]
	adds r2, r2, r1
	ldrb r1, [r3, #0x18]
	lsls r1, r1, #0x10
	ldr r0, [r0, #0x3c]
	adds r1, r0, r1
	adds r0, r3, #0
	adds r0, #0x94
	ldr r0, [r0]
	cmp r0, r2
	bge _08047C9C
	adds r0, r3, #0
	adds r0, #0x9c
	ldr r0, [r0]
	cmp r0, r1
	bge _08047C90
	movs r1, #0xb4
	lsls r1, r1, #0xf
	movs r0, #0
	b _08047CB8
_08047C90:
	movs r0, #0x87
	lsls r0, r0, #0x11
	ldr r1, _08047C98
	b _08047CB8
	.align 2, 0
_08047C98: .4byte 0x01670000
_08047C9C:
	adds r0, r3, #0
	adds r0, #0x9c
	ldr r0, [r0]
	cmp r0, r1
	blt _08047CB0
	movs r0, #0xb4
	lsls r0, r0, #0x10
	movs r1, #0x87
	lsls r1, r1, #0x11
	b _08047CB8
_08047CB0:
	movs r0, #0xb4
	lsls r0, r0, #0xf
	movs r1, #0xb4
	lsls r1, r1, #0x10
_08047CB8:
	bl RandomMinMax
	pop {r1}
	bx r1

    .thumb
sub_8047CC0: @ 0x08047CC0
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r5, r0, #0
	mov r8, r1
	mov sb, r2
	ldr r0, _08047D3C
	ldrb r6, [r0]
	cmp r6, #0
	bne _08047CFE
	ldr r7, _08047D40
	ldrb r0, [r7]
	cmp r0, #0
	beq _08047CFE
	adds r0, r5, #0
	adds r0, #0xa0
	ldr r4, _08047D44
	adds r1, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	adds r0, r5, #0
	adds r0, #0xbc
	adds r1, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	strb r6, [r7]
_08047CFE:
	ldr r0, _08047D3C
	ldrb r0, [r0]
	cmp r0, #0x3c
	bne _08047D2E
	ldr r4, _08047D40
	ldrb r0, [r4]
	cmp r0, #0
	bne _08047D2E
	adds r0, r5, #0
	adds r0, #0xa0
	mov r1, r8
	movs r2, #0
	mov r3, sb
	bl sub_8003368
	adds r0, r5, #0
	adds r0, #0xbc
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	movs r0, #1
	strb r0, [r4]
_08047D2E:
	ldr r1, _08047D3C
	ldrb r0, [r1]
	cmp r0, #0x5a
	bne _08047D48
	movs r0, #0
	b _08047D4A
	.align 2, 0
_08047D3C: .4byte 0x0203F8D6
_08047D40: .4byte 0x0203F8DD
_08047D44: .4byte 0x00000446
_08047D48:
	adds r0, #1
_08047D4A:
	strb r0, [r1]
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

    .thumb
sub_8047D58: @ 0x08047D58
	ldr r1, _08047D68
	movs r0, #0
	strb r0, [r1]
	ldr r1, _08047D6C
	movs r0, #1
	strb r0, [r1]
	bx lr
	.align 2, 0
_08047D68: .4byte 0x0203F8D6
_08047D6C: .4byte 0x0203F8DD

    .thumb
sub_8047D70: @ 0x08047D70
	push {r4, lr}
	ldr r2, _08047DA0
	ldr r3, [r2, #0x48]
	lsls r2, r0, #2
	adds r2, r2, r0
	lsls r2, r2, #2
	adds r3, r3, r2
	movs r2, #4
	ldrsh r0, [r3, r2]
	lsls r0, r0, #0x10
	str r0, [r1]
	ldr r0, _08047DA4
	ldrh r2, [r0]
	movs r4, #8
	ldrsh r0, [r3, r4]
	movs r4, #6
	ldrsh r3, [r3, r4]
	adds r0, r0, r3
	subs r2, r2, r0
	lsls r2, r2, #0x10
	str r2, [r1, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08047DA0: .4byte gRoomHeader
_08047DA4: .4byte gMapPixelSizeY

    .thumb
sub_08047DA8: @ 0x08047DA8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	mov sl, r0
	ldr r7, [r0]
	adds r0, #0x6a
	movs r1, #1
	strb r1, [r0]
	strb r1, [r7, #0x10]
	adds r2, r7, #0
	adds r2, #0x30
	movs r0, #4
	strb r0, [r2]
	ldr r2, _08047DE0
	strb r1, [r2]
	ldr r0, _08047DE4
	ldrh r0, [r0]
	cmp r0, #5
	bls _08047DD6
	b _080481B2
_08047DD6:
	lsls r0, r0, #2
	ldr r1, _08047DE8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08047DE0: .4byte 0x0203F8BC
_08047DE4: .4byte gLoadedRoomLevel
_08047DE8: .4byte 0x08047DEC
_08047DEC: @ jump table
	.4byte _08047F40 @ case 0
	.4byte _08047E98 @ case 1
	.4byte _08047E04 @ case 2
	.4byte _08047ED0 @ case 3
	.4byte _080481B2 @ case 4
	.4byte _08047F08 @ case 5
_08047E04:
	mov r6, sl
	adds r6, #0x64
	movs r0, #0
	strb r0, [r6]
	adds r1, r7, #0
	adds r1, #0x46
	movs r0, #6
	strh r0, [r1]
	movs r0, #0x98
	strb r0, [r7, #0x14]
	movs r0, #0xb4
	strb r0, [r7, #0x18]
	adds r4, r7, #0
	adds r4, #0x94
	movs r0, #0x98
	lsls r0, r0, #0x13
	str r0, [r4]
	adds r3, r7, #0
	adds r3, #0x98
	movs r0, #0x80
	lsls r0, r0, #9
	str r0, [r3]
	adds r2, r7, #0
	adds r2, #0x9c
	ldr r5, _08047E90
	ldrh r0, [r5]
	ldr r1, _08047E94
	adds r0, r0, r1
	lsls r0, r0, #0x10
	str r0, [r2]
	ldr r0, [r4]
	mov r1, sl
	str r0, [r1, #0x1c]
	ldr r0, [r3]
	str r0, [r1, #0x20]
	ldr r0, [r2]
	str r0, [r1, #0x24]
	ldrh r1, [r7, #2]
	mov r0, sl
	adds r0, #0x60
	strh r1, [r0]
	ldrh r0, [r7, #4]
	mov r1, sl
	adds r1, #0x62
	strh r0, [r1]
	movs r1, #2
	ldrsh r0, [r4, r1]
	strh r0, [r7, #2]
	ldr r1, [r2]
	ldr r0, [r3]
	adds r1, r1, r0
	asrs r1, r1, #0x10
	ldrh r0, [r5]
	subs r0, r0, r1
	strh r0, [r7, #4]
	movs r0, #0xb0
	lsls r0, r0, #0xe
	str r0, [r7, #0x4c]
	str r0, [r7, #0x50]
	movs r0, #0x90
	lsls r0, r0, #0xe
	str r0, [r7, #0x54]
	mov r0, sl
	movs r1, #2
	movs r2, #1
	bl sub_08047958
	adds r3, r4, #0
	b _080481BE
	.align 2, 0
_08047E90: .4byte gMapPixelSizeY
_08047E94: .4byte 0xFFFFFAEC
_08047E98:
	mov r4, sl
	adds r4, #0x64
	movs r0, #0x10
	strb r0, [r4]
	adds r1, r7, #0
	adds r1, #0x46
	movs r0, #3
	strh r0, [r1]
	movs r0, #0x40
	strb r0, [r7, #0x14]
	movs r0, #0x48
	strb r0, [r7, #0x18]
	movs r0, #0xd0
	lsls r0, r0, #0xe
	str r0, [r7, #0x4c]
	movs r0, #0xb8
	lsls r0, r0, #0xe
	str r0, [r7, #0x50]
	movs r0, #0xb0
	lsls r0, r0, #0xe
	str r0, [r7, #0x54]
	mov r0, sl
	movs r1, #2
	movs r2, #1
	bl sub_08047958
	adds r6, r4, #0
	b _080481BA
_08047ED0:
	mov r4, sl
	adds r4, #0x64
	movs r0, #0x11
	strb r0, [r4]
	adds r1, r7, #0
	adds r1, #0x46
	movs r0, #3
	strh r0, [r1]
	movs r0, #0x60
	strb r0, [r7, #0x14]
	movs r0, #0x70
	strb r0, [r7, #0x18]
	movs r0, #0xd0
	lsls r0, r0, #0xe
	str r0, [r7, #0x4c]
	movs r0, #0xb8
	lsls r0, r0, #0xe
	str r0, [r7, #0x50]
	movs r0, #0xb0
	lsls r0, r0, #0xe
	str r0, [r7, #0x54]
	mov r0, sl
	movs r1, #2
	movs r2, #1
	bl sub_08047958
	adds r6, r4, #0
	b _080481BA
_08047F08:
	mov r4, sl
	adds r4, #0x64
	movs r0, #0x12
	strb r0, [r4]
	adds r1, r7, #0
	adds r1, #0x46
	movs r0, #3
	strh r0, [r1]
	movs r0, #0xaa
	strb r0, [r7, #0x14]
	movs r0, #0x78
	strb r0, [r7, #0x18]
	movs r0, #0xd0
	lsls r0, r0, #0xe
	str r0, [r7, #0x4c]
	movs r0, #0xb8
	lsls r0, r0, #0xe
	str r0, [r7, #0x50]
	movs r0, #0xb0
	lsls r0, r0, #0xe
	str r0, [r7, #0x54]
	mov r0, sl
	movs r1, #2
	movs r2, #1
	bl sub_08047958
	adds r6, r4, #0
	b _080481BA
_08047F40:
	ldr r0, _08047F58
	movs r1, #1
	strb r1, [r0]
	ldr r0, _08047F5C
	ldr r1, [r0]
	cmp r1, #1
	beq _0804802C
	cmp r1, #1
	bgt _08047F60
	cmp r1, #0
	beq _08047F68
	b _080481AC
	.align 2, 0
_08047F58: .4byte 0x0203F8BD
_08047F5C: .4byte 0x02001104
_08047F60:
	cmp r1, #2
	bne _08047F66
	b _080480F0
_08047F66:
	b _080481AC
_08047F68:
	mov r2, sl
	adds r2, #0x64
	str r2, [sp]
	movs r0, #2
	strb r0, [r2]
	adds r1, r7, #0
	adds r1, #0x46
	movs r0, #9
	strh r0, [r1]
	movs r0, #0x80
	strb r0, [r7, #0x14]
	movs r0, #0x78
	strb r0, [r7, #0x18]
	movs r4, #1
	strh r4, [r7, #6]
	lsls r4, r4, #0x10
	mov r0, sl
	str r4, [r0, #0x50]
	movs r1, #0x94
	adds r1, r1, r7
	mov r8, r1
	movs r2, #0x80
	lsls r2, r2, #0x11
	mov sb, r2
	str r2, [r1]
	adds r6, r7, #0
	adds r6, #0x98
	str r4, [r6]
	adds r5, r7, #0
	adds r5, #0x9c
	ldr r3, _08048020
	ldrh r0, [r3]
	ldr r1, _08048024
	adds r0, r0, r1
	lsls r0, r0, #0x10
	str r0, [r5]
	mov r2, r8
	movs r1, #2
	ldrsh r0, [r2, r1]
	strh r0, [r7, #2]
	ldr r1, [r5]
	ldr r0, [r6]
	adds r1, r1, r0
	asrs r1, r1, #0x10
	ldrh r0, [r3]
	subs r0, r0, r1
	strh r0, [r7, #4]
	mov r0, sl
	movs r1, #2
	movs r2, #1
	str r3, [sp, #0xc]
	bl sub_08047958
	mov r2, sb
	mov r0, r8
	str r2, [r0]
	str r4, [r6]
	ldr r3, [sp, #0xc]
	ldrh r0, [r3]
	ldr r1, _08048028
	adds r0, r0, r1
	lsls r0, r0, #0x10
	str r0, [r5]
	mov r2, r8
	movs r1, #2
	ldrsh r0, [r2, r1]
	strh r0, [r7, #2]
	ldr r1, [r5]
	ldr r0, [r6]
	adds r1, r1, r0
	asrs r1, r1, #0x10
	ldrh r0, [r3]
	subs r0, r0, r1
	strh r0, [r7, #4]
	movs r0, #0xa0
	lsls r0, r0, #0xe
	str r0, [r7, #0x4c]
	movs r0, #0xb0
	lsls r0, r0, #0xe
	str r0, [r7, #0x50]
	movs r0, #0x90
	lsls r0, r0, #0xe
	str r0, [r7, #0x54]
	mov r0, sl
	movs r1, #2
	movs r2, #0
	bl sub_08047958
	ldr r6, [sp]
	mov r3, r8
	b _080481BE
	.align 2, 0
_08048020: .4byte gMapPixelSizeY
_08048024: .4byte 0xFFFFFE41
_08048028: .4byte 0xFFFFFE17
_0804802C:
	mov r2, sl
	adds r2, #0x64
	str r2, [sp, #4]
	movs r0, #0x13
	strb r0, [r2]
	adds r2, r7, #0
	adds r2, #0x46
	movs r0, #3
	strh r0, [r2]
	movs r0, #0x80
	strb r0, [r7, #0x14]
	movs r0, #0x78
	strb r0, [r7, #0x18]
	strh r1, [r7, #6]
	lsls r1, r1, #0x10
	mov r8, r1
	mov r0, sl
	str r1, [r0, #0x50]
	movs r1, #0x94
	adds r1, r1, r7
	mov sb, r1
	movs r2, #0x80
	lsls r2, r2, #0x11
	str r2, [r1]
	adds r5, r7, #0
	adds r5, #0x98
	mov r0, r8
	str r0, [r5]
	adds r4, r7, #0
	adds r4, #0x9c
	ldr r6, _080480E4
	ldrh r0, [r6]
	ldr r1, _080480E8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	str r0, [r4]
	mov r2, sb
	movs r1, #2
	ldrsh r0, [r2, r1]
	strh r0, [r7, #2]
	ldr r1, [r4]
	ldr r0, [r5]
	adds r1, r1, r0
	asrs r1, r1, #0x10
	ldrh r0, [r6]
	subs r0, r0, r1
	strh r0, [r7, #4]
	mov r0, sl
	movs r1, #2
	movs r2, #1
	bl sub_08047958
	movs r2, #0x80
	lsls r2, r2, #0x11
	mov r0, sb
	str r2, [r0]
	mov r1, r8
	str r1, [r5]
	ldrh r0, [r6]
	ldr r2, _080480EC
	adds r0, r0, r2
	lsls r0, r0, #0x10
	str r0, [r4]
	mov r1, sb
	movs r2, #2
	ldrsh r0, [r1, r2]
	strh r0, [r7, #2]
	ldr r1, [r4]
	ldr r0, [r5]
	adds r1, r1, r0
	asrs r1, r1, #0x10
	ldrh r0, [r6]
	subs r0, r0, r1
	strh r0, [r7, #4]
	movs r0, #0xd0
	lsls r0, r0, #0xe
	str r0, [r7, #0x4c]
	movs r0, #0xb8
	lsls r0, r0, #0xe
	str r0, [r7, #0x50]
	movs r0, #0xb0
	lsls r0, r0, #0xe
	str r0, [r7, #0x54]
	mov r0, sl
	movs r1, #2
	movs r2, #0
	bl sub_08047958
	ldr r6, [sp, #4]
	mov r3, sb
	b _080481BE
	.align 2, 0
_080480E4: .4byte gMapPixelSizeY
_080480E8: .4byte 0xFFFFFE41
_080480EC: .4byte 0xFFFFFE17
_080480F0:
	mov r0, sl
	adds r0, #0x64
	str r0, [sp, #8]
	movs r4, #1
	strb r4, [r0]
	adds r3, r7, #0
	adds r3, #0x46
	movs r1, #0
	movs r0, #0xc
	strh r0, [r3]
	strb r1, [r2]
	movs r0, #0x57
	strb r0, [r7, #0x14]
	movs r0, #0x4d
	strb r0, [r7, #0x18]
	strh r4, [r7, #6]
	lsls r4, r4, #0x10
	mov r1, sl
	str r4, [r1, #0x50]
	movs r2, #0x94
	adds r2, r2, r7
	mov r8, r2
	movs r0, #0xc0
	lsls r0, r0, #0x12
	mov sb, r0
	str r0, [r2]
	adds r6, r7, #0
	adds r6, #0x98
	str r4, [r6]
	adds r5, r7, #0
	adds r5, #0x9c
	ldr r3, _080481A4
	ldrh r0, [r3]
	ldr r1, _080481A8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	str r0, [r5]
	movs r1, #2
	ldrsh r0, [r2, r1]
	strh r0, [r7, #2]
	ldr r1, [r5]
	ldr r0, [r6]
	adds r1, r1, r0
	asrs r1, r1, #0x10
	ldrh r0, [r3]
	subs r0, r0, r1
	strh r0, [r7, #4]
	mov r0, sl
	movs r1, #2
	movs r2, #1
	str r3, [sp, #0xc]
	bl sub_08047958
	mov r2, sb
	mov r0, r8
	str r2, [r0]
	str r4, [r6]
	ldr r3, [sp, #0xc]
	ldrh r0, [r3]
	subs r0, #0xf5
	lsls r0, r0, #0x10
	str r0, [r5]
	mov r1, r8
	movs r2, #2
	ldrsh r0, [r1, r2]
	strh r0, [r7, #2]
	ldr r1, [r5]
	ldr r0, [r6]
	adds r1, r1, r0
	asrs r1, r1, #0x10
	ldrh r0, [r3]
	subs r0, r0, r1
	strh r0, [r7, #4]
	movs r0, #0xa0
	lsls r0, r0, #0xe
	str r0, [r7, #0x4c]
	movs r0, #0xb0
	lsls r0, r0, #0xe
	str r0, [r7, #0x50]
	movs r0, #0x90
	lsls r0, r0, #0xe
	str r0, [r7, #0x54]
	mov r0, sl
	movs r1, #2
	movs r2, #0
	bl sub_08047958
	ldr r6, [sp, #8]
	mov r3, r8
	b _080481BE
	.align 2, 0
_080481A4: .4byte gMapPixelSizeY
_080481A8: .4byte 0xFFFFFEEB
_080481AC:
	.2byte 0xEE00, 0xEE00
	b _080481B6
_080481B2:
	.2byte 0xEE00, 0xEE00
_080481B6:
	mov r6, sl
	adds r6, #0x64
_080481BA:
	adds r3, r7, #0
	adds r3, #0x94
_080481BE:
	ldr r0, _08048248
	movs r1, #0
	str r1, [r0]
	ldr r0, _0804824C
	str r1, [r0]
	ldr r0, _08048250
	strb r1, [r0]
	ldr r0, _08048254
	strb r1, [r0]
	ldr r2, _08048258
	movs r0, #3
	strb r0, [r2]
	ldr r4, _0804825C
	strb r1, [r4]
	ldr r5, _08048260
	strb r1, [r5]
	mov r0, sl
	adds r0, #0x65
	strb r1, [r0]
	adds r0, r3, #0
	bl sub_80494FC
	bl sub_8048E0C
	adds r1, r0, #0
	mov r0, sl
	bl sub_8049038
	adds r0, r7, #0
	adds r0, #0xa0
	ldr r1, _08048264
	ldrb r2, [r6]
	lsrs r2, r2, #4
	lsls r2, r2, #2
	adds r2, r2, r1
	ldrh r1, [r2]
	ldrb r3, [r2, #2]
	movs r2, #0
	bl sub_8003368
	mov r1, sl
	ldr r0, [r1, #0x2c]
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_8003884
	ldr r1, _08048268
	ldrb r0, [r6]
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrb r1, [r4]
	ldr r0, [r0]
	lsls r1, r1, #4
	adds r1, r1, r0
	ldrb r0, [r1, #4]
	strb r0, [r5]
	ldr r0, _0804826C
	mov r2, sl
	str r2, [r0]
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08048248: .4byte 0x0203F8D0
_0804824C: .4byte 0x0203F8B8
_08048250: .4byte 0x0203F8D9
_08048254: .4byte 0x0203F8DA
_08048258: .4byte 0x0203F8D7
_0804825C: .4byte 0x0203F8D5
_08048260: .4byte 0x0203F8D4
_08048264: .4byte 0x080B1240
_08048268: .4byte 0x080B19E0
_0804826C: .4byte 0x0203F8B4

    .thumb
sub_8048270: @ 0x08048270
	push {lr}
	adds r2, r0, #0
	ldrh r0, [r2]
	subs r0, #0xa9
	cmp r0, #0x2e
	bhi _08048358
	lsls r0, r0, #2
	ldr r1, _08048288
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08048288: .4byte 0x0804828C
_0804828C: @ jump table
	.4byte _08048348 @ case 0
	.4byte _08048354 @ case 1
	.4byte _08048354 @ case 2
	.4byte _08048354 @ case 3
	.4byte _08048358 @ case 4
	.4byte _08048354 @ case 5
	.4byte _08048358 @ case 6
	.4byte _08048358 @ case 7
	.4byte _08048354 @ case 8
	.4byte _08048358 @ case 9
	.4byte _08048358 @ case 10
	.4byte _08048358 @ case 11
	.4byte _08048354 @ case 12
	.4byte _08048348 @ case 13
	.4byte _08048348 @ case 14
	.4byte _08048348 @ case 15
	.4byte _08048348 @ case 16
	.4byte _08048354 @ case 17
	.4byte _08048354 @ case 18
	.4byte _08048354 @ case 19
	.4byte _08048354 @ case 20
	.4byte _08048354 @ case 21
	.4byte _08048358 @ case 22
	.4byte _08048358 @ case 23
	.4byte _08048358 @ case 24
	.4byte _08048358 @ case 25
	.4byte _08048348 @ case 26
	.4byte _08048348 @ case 27
	.4byte _08048348 @ case 28
	.4byte _08048348 @ case 29
	.4byte _08048358 @ case 30
	.4byte _08048358 @ case 31
	.4byte _08048358 @ case 32
	.4byte _08048358 @ case 33
	.4byte _08048358 @ case 34
	.4byte _08048354 @ case 35
	.4byte _08048358 @ case 36
	.4byte _08048358 @ case 37
	.4byte _08048358 @ case 38
	.4byte _08048358 @ case 39
	.4byte _08048358 @ case 40
	.4byte _08048358 @ case 41
	.4byte _08048358 @ case 42
	.4byte _08048358 @ case 43
	.4byte _08048358 @ case 44
	.4byte _08048358 @ case 45
	.4byte _08048358 @ case 46
_08048348:
	movs r1, #0xff
	strb r1, [r2, #0xb]
	adds r0, r2, #0
	adds r0, #0xaa
	strb r1, [r0]
	b _08048358
_08048354:
	movs r0, #0xff
	strb r0, [r2, #0xb]
_08048358:
	pop {r0}
	bx r0

    .thumb
    .global sub_0804835C
sub_0804835C: @ 0x0804835C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x30
	adds r6, r0, #0
	mov sb, r1
	mov r8, r2
	ldr r2, _08048584
	movs r0, #0x6c
	mov r1, sb
	muls r1, r0, r1
	ldr r0, [r2]
	adds r5, r0, r1
	ldr r1, _08048588
	ldrh r0, [r6]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	adds r1, r5, #0
	adds r1, #0x5c
	strh r0, [r1]
	cmp r0, #0x2e
	bls _08048392
	.2byte 0xEE00, 0xEE00
_08048392:
	ldr r0, _0804858C
	ldrh r1, [r1]
	adds r0, r1, r0
	ldrb r0, [r0]
	str r0, [sp, #0x1c]
	ldr r0, _08048590
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r0, [sp, #0x1c]
	lsls r2, r0, #4
	ldr r0, [r1]
	adds r0, r0, r2
	str r0, [r5, #0x28]
	str r6, [r5]
	adds r3, r6, #0
	adds r3, #0x94
	ldr r0, [r3]
	str r0, [r5, #4]
	adds r2, r6, #0
	adds r2, #0x98
	ldr r0, [r2]
	str r0, [r5, #8]
	adds r1, r6, #0
	adds r1, #0x9c
	ldr r0, [r1]
	str r0, [r5, #0xc]
	ldr r0, [r3]
	str r0, [r5, #0x1c]
	ldr r0, [r2]
	str r0, [r5, #0x20]
	ldr r0, [r1]
	str r0, [r5, #0x24]
	ldrh r1, [r6, #2]
	adds r0, r5, #0
	adds r0, #0x60
	strh r1, [r0]
	ldrh r0, [r6, #4]
	adds r1, r5, #0
	adds r1, #0x62
	strh r0, [r1]
	ldr r0, [r5]
	adds r0, #0x38
	ldrb r0, [r0]
	str r3, [sp, #0x24]
	str r2, [sp, #0x28]
	cmp r0, #0
	beq _08048414
	ldrb r1, [r6, #0xc]
	adds r0, r1, #0
	cmp r0, #0xff
	bne _080483FC
	.2byte 0xEE00, 0xEE00
_080483FC:
	adds r0, r5, #0
	adds r0, #0x67
	strb r1, [r0]
	ldrb r0, [r0]
	adds r1, r5, #0
	adds r1, #0x10
	bl sub_8047D70
	adds r1, r5, #0
	adds r1, #0x69
	movs r0, #0
	strb r0, [r1]
_08048414:
	movs r0, #0x6c
	mov r7, sb
	muls r7, r0, r7
	ldr r1, _08048584
	ldr r0, [r1]
	adds r0, r0, r7
	movs r1, #2
	movs r2, #1
	bl sub_08047958
	ldrh r0, [r6, #6]
	lsls r0, r0, #0x10
	str r0, [r5, #0x50]
	ldrb r0, [r6, #8]
	adds r1, r5, #0
	adds r1, #0x66
	movs r2, #0
	mov sl, r2
	strb r0, [r1]
	adds r4, r5, #0
	adds r4, #0x6a
	mov r0, sl
	strb r0, [r4]
	mov r1, r8
	str r1, [r5, #0x2c]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r5, #0x58]
	ldr r1, _08048594
	adds r0, r5, #0
	adds r0, #0x5c
	ldrh r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	mov r1, r8
	bl sub_800385C
	ldr r0, [r5, #0x2c]
	ldr r2, _08048598
	ldr r1, _0804859C
	ldrb r1, [r1, #0xe]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl sub_800389C
	ldr r0, [r5, #0x2c]
	ldr r2, _080485A0
	ldr r1, _080485A4
	ldrb r1, [r1, #2]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl sub_8003894
	ldr r0, _080485A8
	ldr r1, [r0]
	adds r1, #1
	str r1, [r0]
	ldr r0, _080485AC
	ldr r0, [r0]
	mov r8, r4
	cmp r1, r0
	ble _0804849A
	.2byte 0xEE00, 0xEE00
_0804849A:
	ldr r2, _08048584
	ldr r0, [r2]
	adds r0, r0, r7
	ldr r1, [sp, #0x1c]
	movs r2, #0
	bl sub_8047430
	adds r0, r5, #0
	adds r0, #0x5e
	movs r1, #0
	mov r2, sl
	strh r2, [r0]
	adds r0, #0xa
	strb r1, [r0]
	ldrh r1, [r6, #2]
	ldr r0, _080485B0
	movs r2, #0
	ldrsh r0, [r0, r2]
	subs r1, r1, r0
	mov sl, r1
	ldrh r1, [r6, #4]
	ldr r0, _080485B4
	movs r2, #0
	ldrsh r0, [r0, r2]
	subs r7, r1, r0
	adds r4, r6, #0
	adds r4, #0xbc
	movs r0, #1
	str r0, [sp]
	mov r1, sl
	str r1, [sp, #4]
	str r7, [sp, #8]
	movs r0, #2
	str r0, [sp, #0xc]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl SetSprite
	adds r0, r6, #0
	adds r0, #0x2f
	ldrb r1, [r0]
	str r4, [sp, #0x2c]
	str r0, [sp, #0x20]
	cmp r1, #0
	bne _08048508
	ldr r0, _080485B8
	ldrh r2, [r0]
	ldr r0, [sp, #0x24]
	movs r1, #0
	bl sub_8003A7C
	cmp r0, #0
	bne _08048510
_08048508:
	adds r0, r6, #0
	adds r0, #0xcf
	movs r2, #1
	strb r2, [r0]
_08048510:
	ldrb r0, [r6, #9]
	subs r7, r7, r0
	lsls r0, r0, #0x10
	str r0, [r5, #0x54]
	adds r4, r6, #0
	adds r4, #0xa0
	ldr r2, [r5, #0x28]
	ldrh r1, [r2, #4]
	ldrb r0, [r6, #0xb]
	adds r1, r1, r0
	ldrb r0, [r2, #8]
	str r0, [sp]
	mov r0, sl
	str r0, [sp, #4]
	str r7, [sp, #8]
	movs r0, #2
	str r0, [sp, #0xc]
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl SetSprite
	ldr r0, [r6, #0x4c]
	asrs r0, r0, #1
	str r0, [sp, #0x10]
	ldr r0, [r6, #0x50]
	str r0, [sp, #0x14]
	ldr r0, [r6, #0x54]
	asrs r0, r0, #1
	str r0, [sp, #0x18]
	ldrb r2, [r6, #9]
	ldr r0, _080485B8
	ldrh r3, [r0]
	ldr r0, [sp, #0x24]
	add r1, sp, #0x10
	bl sub_8003A74
	cmp r0, #0
	bne _08048566
	adds r1, r6, #0
	adds r1, #0xb3
	movs r0, #1
	strb r0, [r1]
_08048566:
	ldrb r1, [r6, #8]
	adds r0, r4, #0
	bl SetSpritePriority
	ldr r2, [sp, #0x2c]
	ldrb r1, [r6, #9]
	ldr r0, _080485BC
	ldr r0, [r0]
	cmp r1, r0
	blt _080485C4
	ldr r1, _080485C0
	subs r0, #1
	adds r0, r0, r1
	b _080485C8
	.align 2, 0
_08048584: .4byte 0x0203F8B0
_08048588: .4byte 0x080CF140
_0804858C: .4byte 0x080B0FDA
_08048590: .4byte 0x087DFA9C
_08048594: .4byte 0x080B100C
_08048598: .4byte 0x080CC844
_0804859C: .4byte gRoomHeader
_080485A0: .4byte 0x080CC818
_080485A4: .4byte 0x030028FC
_080485A8: .4byte 0x0203F8C0
_080485AC: .4byte 0x0203F8C4
_080485B0: .4byte gCameraPixelX
_080485B4: .4byte gCameraPixelY
_080485B8: .4byte gMapPixelSizeY
_080485BC: .4byte 0x080CEBC4
_080485C0: .4byte 0x080CEB84
_080485C4:
	ldr r0, _080485FC
	adds r0, r1, r0
_080485C8:
	ldrb r1, [r0]
	adds r0, r2, #0
	bl sub_80037F4
	ldr r0, [sp, #0x2c]
	bl sub_8003794
	ldr r0, [r5, #0x2c]
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_8003884
	adds r0, r6, #0
	bl sub_8048270
	ldrh r0, [r6]
	subs r0, #0xa9
	cmp r0, #0x2e
	bls _080485F2
	b _08048870
_080485F2:
	lsls r0, r0, #2
	ldr r1, _08048600
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080485FC: .4byte 0x080CEB84
_08048600: .4byte 0x08048604
_08048604: @ jump table
	.4byte _08048870 @ case 0
	.4byte _08048870 @ case 1
	.4byte _080486C0 @ case 2
	.4byte _08048870 @ case 3
	.4byte _080486DA @ case 4
	.4byte _08048870 @ case 5
	.4byte _0804870C @ case 6
	.4byte _08048712 @ case 7
	.4byte _08048870 @ case 8
	.4byte _08048870 @ case 9
	.4byte _0804886A @ case 10
	.4byte _08048740 @ case 11
	.4byte _08048870 @ case 12
	.4byte _08048870 @ case 13
	.4byte _08048870 @ case 14
	.4byte _08048870 @ case 15
	.4byte _08048870 @ case 16
	.4byte _08048870 @ case 17
	.4byte _08048870 @ case 18
	.4byte _08048870 @ case 19
	.4byte _08048870 @ case 20
	.4byte _08048870 @ case 21
	.4byte _08048838 @ case 22
	.4byte _08048870 @ case 23
	.4byte _08048722 @ case 24
	.4byte _08048740 @ case 25
	.4byte _08048870 @ case 26
	.4byte _08048870 @ case 27
	.4byte _08048870 @ case 28
	.4byte _08048870 @ case 29
	.4byte _0804874E @ case 30
	.4byte _08048870 @ case 31
	.4byte _08048870 @ case 32
	.4byte _08048870 @ case 33
	.4byte _08048870 @ case 34
	.4byte _08048870 @ case 35
	.4byte _0804875C @ case 36
	.4byte _08048870 @ case 37
	.4byte _0804877C @ case 38
	.4byte _0804878C @ case 39
	.4byte _0804886A @ case 40
	.4byte _08048870 @ case 41
	.4byte _080487C8 @ case 42
	.4byte _080487F4 @ case 43
	.4byte _0804886A @ case 44
	.4byte _08048820 @ case 45
	.4byte _0804884C @ case 46
_080486C0:
	ldr r1, [sp, #0x28]
	movs r2, #2
	ldrsh r0, [r1, r2]
	strb r0, [r6, #9]
	ldrh r1, [r6, #6]
	ldr r2, [sp, #0x28]
	ldr r0, [r2]
	subs r0, r0, r1
	str r0, [r5, #0x54]
	ldrh r0, [r6, #6]
	lsls r0, r0, #0x10
	str r0, [r2]
	b _08048870
_080486DA:
	ldr r1, [sp, #0x28]
	ldr r0, [r1]
	ldr r1, [r5, #0x54]
	subs r0, r0, r1
	ldr r2, [sp, #0x28]
	str r0, [r2]
	ldr r2, _08048708
	movs r0, #0x6c
	mov r1, sb
	muls r1, r0, r1
	ldr r0, [r2]
	adds r0, r0, r1
	movs r1, #0
	movs r2, #0
	bl sub_08047958
	ldr r1, [r6, #0x54]
	asrs r1, r1, #1
	ldr r0, [r6, #0x78]
	adds r0, r0, r1
	str r0, [r6, #0x78]
	str r0, [r6, #0x6c]
	b _08048870
	.align 2, 0
_08048708: .4byte 0x0203F8B0
_0804870C:
	movs r0, #0
	strb r0, [r6, #0x10]
	b _08048740
_08048712:
	ldr r1, [sp, #0x20]
	ldrb r0, [r1]
	cmp r0, #0
	beq _0804871C
	b _08048870
_0804871C:
	.2byte 0xEE00, 0xEE00
	b _08048870
_08048722:
	ldr r3, _08048738
	ldr r2, _0804873C
	movs r0, #0x6c
	mov r1, sb
	muls r1, r0, r1
	ldr r0, [r2]
	adds r0, r0, r1
	str r0, [r3]
	movs r1, #1
	b _080487B4
	.align 2, 0
_08048738: .4byte 0x0203F8B4
_0804873C: .4byte 0x0203F8B0
_08048740:
	ldr r0, [r5, #0x2c]
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_8003884
	b _08048870
_0804874E:
	ldr r3, _08048754
	ldr r2, _08048758
	b _080487CC
	.align 2, 0
_08048754: .4byte 0x0203F8FC
_08048758: .4byte 0x0203F91B
_0804875C:
	ldr r3, _08048774
	ldr r2, _08048778
	movs r0, #0x6c
	mov r1, sb
	muls r1, r0, r1
	ldr r0, [r2]
	adds r0, r0, r1
	str r0, [r3]
	bl sub_08047DA8
	b _08048870
	.align 2, 0
_08048774: .4byte 0x0203F8B4
_08048778: .4byte 0x0203F8B0
_0804877C:
	ldr r3, _08048784
	ldr r2, _08048788
	b _08048790
	.align 2, 0
_08048784: .4byte 0x0203F8E4
_08048788: .4byte 0x0203F918
_0804878C:
	ldr r3, _080487BC
	ldr r2, _080487C0
_08048790:
	ldrb r1, [r2]
	adds r0, r1, #1
	strb r0, [r2]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x16
	adds r1, r1, r3
	ldr r3, _080487C4
	movs r0, #0x6c
	mov r2, sb
	muls r2, r0, r2
	ldr r0, [r3]
	adds r0, r0, r2
	str r0, [r1]
	movs r1, #0x78
	strb r1, [r6, #0x14]
	movs r1, #0x30
	strb r1, [r6, #0x18]
	movs r1, #2
_080487B4:
	movs r2, #1
	bl sub_08047958
	b _08048870
	.align 2, 0
_080487BC: .4byte 0x0203F8EC
_080487C0: .4byte 0x0203F919
_080487C4: .4byte 0x0203F8B0
_080487C8:
	ldr r3, _080487E8
	ldr r2, _080487EC
_080487CC:
	ldrb r1, [r2]
	adds r0, r1, #1
	strb r0, [r2]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x16
	adds r1, r1, r3
	ldr r3, _080487F0
	movs r0, #0x6c
	mov r2, sb
	muls r2, r0, r2
	ldr r0, [r3]
	adds r0, r0, r2
	str r0, [r1]
	b _08048870
	.align 2, 0
_080487E8: .4byte 0x0203F8F4
_080487EC: .4byte 0x0203F91A
_080487F0: .4byte 0x0203F8B0
_080487F4:
	ldr r3, _08048814
	ldr r2, _08048818
	ldrb r1, [r2]
	adds r0, r1, #1
	strb r0, [r2]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x16
	adds r1, r1, r3
	ldr r3, _0804881C
	movs r0, #0x6c
	mov r2, sb
	muls r2, r0, r2
	ldr r0, [r3]
	adds r0, r0, r2
	str r0, [r1]
	b _08048838
	.align 2, 0
_08048814: .4byte 0x0203F904
_08048818: .4byte 0x0203F91C
_0804881C: .4byte 0x0203F8B0
_08048820:
	ldr r3, _08048840
	ldr r2, _08048844
	movs r0, #0x6c
	mov r1, sb
	muls r1, r0, r1
	ldr r0, [r2]
	adds r0, r0, r1
	str r0, [r3]
	ldr r1, _08048848
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
_08048838:
	movs r0, #1
	mov r1, r8
	strb r0, [r1]
	b _08048870
	.align 2, 0
_08048840: .4byte 0x0203F914
_08048844: .4byte 0x0203F8B0
_08048848: .4byte 0x0203F91D
_0804884C:
	ldr r3, _08048880
	ldr r2, _08048884
	ldrb r1, [r2]
	adds r0, r1, #1
	strb r0, [r2]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x16
	adds r1, r1, r3
	ldr r3, _08048888
	movs r0, #0x6c
	mov r2, sb
	muls r2, r0, r2
	ldr r0, [r3]
	adds r0, r0, r2
	str r0, [r1]
_0804886A:
	movs r0, #1
	mov r2, r8
	strb r0, [r2]
_08048870:
	add sp, #0x30
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08048880: .4byte 0x0203F90C
_08048884: .4byte 0x0203F91E
_08048888: .4byte 0x0203F8B0

    .thumb
    .global sub_804888C
sub_804888C: @ 0x0804888C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	str r0, [sp, #0xc]
	ldr r2, _080488C8
	movs r0, #0x6c
	ldr r3, [sp, #0xc]
	adds r1, r3, #0
	muls r1, r0, r1
	ldr r0, [r2]
	adds r5, r0, r1
	ldr r1, [r5]
	ldrh r0, [r1]
	mov r8, r2
	cmp r0, #0xab
	bne _080488D0
	adds r0, r1, #0
	adds r0, #0x30
	ldrb r2, [r0]
	cmp r2, #0
	bne _080488D0
	ldr r0, _080488CC
	strh r0, [r1, #0x20]
	ldr r0, [r5]
	adds r0, #0x44
	strb r2, [r0]
	b _08048B0A
	.align 2, 0
_080488C8: .4byte 0x0203F8B0
_080488CC: .4byte 0x0000FFFF
_080488D0:
	movs r0, #0x5c
	adds r0, r0, r5
	mov sb, r0
	ldrh r0, [r0]
	ldr r2, _08048A4C
	adds r1, r0, r2
	ldrb r1, [r1]
	ldr r2, _08048A50
	lsls r0, r0, #2
	adds r0, r0, r2
	lsls r1, r1, #4
	ldr r0, [r0]
	adds r0, r0, r1
	str r0, [r5, #0x28]
	ldr r1, [r5]
	adds r3, r5, #0
	adds r3, #0x60
	str r3, [sp, #0x10]
	ldrh r0, [r3]
	movs r7, #0
	strh r0, [r1, #2]
	ldr r1, [r5]
	movs r0, #0x62
	adds r0, r0, r5
	mov sl, r0
	ldrh r0, [r0]
	strh r0, [r1, #4]
	ldr r4, [r5]
	adds r3, r4, #0
	adds r3, #0x94
	ldr r0, [r5, #0x1c]
	str r0, [r3]
	adds r2, r4, #0
	adds r2, #0x98
	ldr r0, [r5, #0x20]
	str r0, [r2]
	adds r1, r4, #0
	adds r1, #0x9c
	ldr r0, [r5, #0x24]
	str r0, [r1]
	ldr r0, [r3]
	str r0, [r5, #4]
	ldr r0, [r2]
	str r0, [r5, #8]
	ldr r0, [r1]
	str r0, [r5, #0xc]
	mov r1, r8
	ldr r0, [r1]
	movs r1, #0x6c
	ldr r2, [sp, #0xc]
	adds r6, r2, #0
	muls r6, r1, r6
	adds r0, r6, r0
	ldr r0, [r0]
	adds r0, #0x38
	ldrb r0, [r0]
	cmp r0, #0
	beq _0804895C
	ldrb r0, [r4, #0xc]
	adds r4, r5, #0
	adds r4, #0x67
	strb r0, [r4]
	ldrb r0, [r4]
	adds r1, r5, #0
	adds r1, #0x10
	bl sub_8047D70
	adds r0, r5, #0
	adds r0, #0x69
	strb r7, [r0]
_0804895C:
	mov r3, r8
	ldr r0, [r3]
	adds r0, r0, r6
	movs r1, #2
	movs r2, #1
	bl sub_08047958
	ldr r1, [r5]
	ldrh r0, [r1, #6]
	lsls r0, r0, #0x10
	str r0, [r5, #0x50]
	adds r4, r5, #0
	adds r4, #0x66
	ldrb r0, [r4]
	strb r0, [r1, #8]
	mov r1, sb
	ldrh r0, [r1]
	ldr r2, _08048A4C
	adds r0, r0, r2
	ldrb r1, [r0]
	adds r0, r5, #0
	movs r2, #1
	bl sub_8047430
	adds r1, r5, #0
	adds r1, #0x5e
	movs r0, #0
	strh r0, [r1]
	adds r0, r5, #0
	adds r0, #0x68
	strb r7, [r0]
	mov r3, r8
	ldr r0, [r3]
	adds r0, r6, r0
	adds r0, #0x6a
	strb r7, [r0]
	ldr r0, [sp, #0x10]
	movs r2, #0
	ldrsh r1, [r0, r2]
	ldr r0, _08048A54
	movs r3, #0
	ldrsh r0, [r0, r3]
	subs r7, r1, r0
	mov r0, sl
	movs r2, #0
	ldrsh r1, [r0, r2]
	ldr r0, _08048A58
	movs r3, #0
	ldrsh r0, [r0, r3]
	subs r6, r1, r0
	ldr r1, [r5]
	adds r0, r1, #0
	adds r0, #0x2f
	ldrb r0, [r0]
	cmp r0, #0
	bne _080489DE
	adds r0, r1, #0
	adds r0, #0x94
	ldr r1, _08048A5C
	ldrh r2, [r1]
	movs r1, #0
	bl sub_8003A7C
	cmp r0, #0
	bne _080489E6
_080489DE:
	ldr r0, [r5]
	adds r0, #0xcf
	movs r1, #1
	strb r1, [r0]
_080489E6:
	ldr r1, [r5]
	ldrb r0, [r1, #9]
	subs r6, r6, r0
	asrs r0, r0, #0x10
	str r0, [r5, #0x54]
	adds r1, #0xa6
	strh r7, [r1]
	ldr r0, [r5]
	adds r0, #0xa8
	strb r6, [r0]
	ldr r1, [r5]
	ldr r0, [r1, #0x4c]
	asrs r0, r0, #1
	str r0, [sp]
	ldr r0, [r1, #0x50]
	str r0, [sp, #4]
	ldr r0, [r1, #0x54]
	asrs r0, r0, #1
	str r0, [sp, #8]
	adds r0, r1, #0
	adds r0, #0x94
	ldrb r2, [r1, #9]
	ldr r1, _08048A5C
	ldrh r3, [r1]
	mov r1, sp
	bl sub_8003A74
	cmp r0, #0
	bne _08048A28
	ldr r0, [r5]
	adds r0, #0xb3
	movs r1, #1
	strb r1, [r0]
_08048A28:
	ldr r0, [r5]
	adds r0, #0xa0
	ldrb r1, [r4]
	bl SetSpritePriority
	ldr r0, [r5]
	adds r2, r0, #0
	adds r2, #0xbc
	ldrb r1, [r0, #9]
	ldr r0, _08048A60
	ldr r0, [r0]
	cmp r1, r0
	blt _08048A68
	ldr r1, _08048A64
	subs r0, #1
	adds r0, r0, r1
	b _08048A6C
	.align 2, 0
_08048A4C: .4byte 0x080B0FDA
_08048A50: .4byte 0x087DFA9C
_08048A54: .4byte gCameraPixelX
_08048A58: .4byte gCameraPixelY
_08048A5C: .4byte gMapPixelSizeY
_08048A60: .4byte 0x080CEBC4
_08048A64: .4byte 0x080CEB84
_08048A68:
	ldr r0, _08048ACC
	adds r0, r1, r0
_08048A6C:
	ldrb r1, [r0]
	adds r0, r2, #0
	bl sub_80037F4
	ldr r0, [r5]
	adds r0, #0xbc
	bl sub_8003794
	ldr r0, [r5]
	adds r0, #0xb0
	movs r4, #0
	strb r4, [r0]
	ldr r0, [r5]
	ldrh r0, [r0]
	cmp r0, #0xcd
	bne _08048AB8
	ldr r2, _08048AD0
	movs r0, #0x6c
	ldr r3, [sp, #0xc]
	adds r1, r3, #0
	muls r1, r0, r1
	ldr r0, [r2]
	adds r0, r0, r1
	bl sub_08047DA8
	movs r0, #0xf
	adds r1, r5, #0
	adds r1, #0x65
	strb r0, [r1]
	ldr r0, [r5]
	adds r0, #0xa0
	ldr r1, _08048AD4
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r0, _08048AD8
	strb r4, [r0]
_08048AB8:
	ldr r0, [r5]
	bl sub_8048270
	ldr r2, [r5]
	ldrh r0, [r2]
	cmp r0, #0xab
	beq _08048ADC
	cmp r0, #0xb2
	beq _08048AFC
	b _08048B0A
	.align 2, 0
_08048ACC: .4byte 0x080CEB84
_08048AD0: .4byte 0x0203F8B0
_08048AD4: .4byte 0x00000446
_08048AD8: .4byte 0x0203F8BD
_08048ADC:
	adds r0, r2, #0
	adds r0, #0x98
	movs r1, #2
	ldrsh r0, [r0, r1]
	strb r0, [r2, #9]
	ldr r1, [r5]
	adds r3, r1, #0
	adds r3, #0x98
	ldrh r2, [r1, #6]
	ldr r0, [r3]
	subs r0, r0, r2
	str r0, [r5, #0x54]
	ldrh r0, [r1, #6]
	lsls r0, r0, #0x10
	str r0, [r3]
	b _08048B0A
_08048AFC:
	movs r1, #0xa0
	lsls r1, r1, #0xd
	str r1, [r2, #0x4c]
	movs r0, #0xe0
	lsls r0, r0, #0xd
	str r0, [r2, #0x50]
	str r1, [r2, #0x54]
_08048B0A:
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

    .thumb
    .global sub_8048B1C
sub_8048B1C: @ 0x08048B1C
	push {r4, r5, lr}
	ldr r5, _08048B74
	ldr r0, [r5]
	ldr r4, [r0]
	adds r4, #0x46
	movs r0, #0x1f
	strh r0, [r4]
	movs r1, #3
	bl sub_8003934
	adds r1, r0, #0
	asrs r1, r1, #8
	movs r0, #0x35
	bl sub_08040AD0
	movs r1, #0
	ldrsh r0, [r4, r1]
	movs r1, #3
	bl sub_8003934
	adds r1, r0, #0
	asrs r1, r1, #8
	movs r0, #0x35
	bl sub_08040204
	movs r0, #0x35
	bl sub_08041FA4
	ldr r0, [r5]
	movs r1, #5
	movs r2, #1
	bl sub_8047430
	ldr r0, [r5]
	adds r0, #0x69
	movs r1, #1
	strb r1, [r0]
	ldr r0, [r5]
	bl sub_08048F5C
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08048B74: .4byte 0x0203F8B4

	.thumb
    .global sub_8048B78
sub_8048B78: @ 0x08048B78
	push {lr}
	ldr r0, _08048B8C
	ldr r0, [r0]
	movs r1, #8
	movs r2, #1
	bl sub_8047430
	pop {r0}
	bx r0
	.align 2, 0
_08048B8C: .4byte 0x0203F8B4

    .thumb
sub_8048B90: @ 0x08048B90
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	ldr r5, [r0]
	movs r6, #0
	movs r7, #0
	ldrh r0, [r5, #0x20]
	cmp r0, #0
	bne _08048BAA
	adds r0, r5, #0
	adds r0, #0x44
	ldrb r0, [r0]
	cmp r0, #0
	beq _08048BAC
_08048BAA:
	movs r7, #1
_08048BAC:
	ldr r0, [r5, #0x4c]
	asrs r0, r0, #1
	str r0, [sp]
	ldr r0, [r5, #0x50]
	str r0, [sp, #4]
	ldr r0, [r5, #0x54]
	asrs r0, r0, #1
	str r0, [sp, #8]
	adds r4, r5, #0
	adds r4, #0x94
	ldrb r2, [r5, #9]
	ldr r0, _08048BF0
	ldrh r3, [r0]
	adds r0, r4, #0
	mov r1, sp
	bl sub_8003A74
	cmp r0, #0
	beq _08048BF8
	cmp r7, #0
	bne _08048BEC
	adds r0, r5, #0
	adds r0, #0xb3
	strb r7, [r0]
	adds r1, r5, #0
	adds r1, #0x48
	movs r0, #1
	strb r0, [r1]
	ldr r1, _08048BF4
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
_08048BEC:
	movs r6, #1
	b _08048C00
	.align 2, 0
_08048BF0: .4byte gMapPixelSizeY
_08048BF4: .4byte 0x0203DFE4
_08048BF8:
	adds r1, r5, #0
	adds r1, #0xb3
	movs r0, #1
	strb r0, [r1]
_08048C00:
	adds r0, r5, #0
	adds r0, #0x2f
	ldrb r0, [r0]
	cmp r0, #0
	bne _08048C60
	ldr r0, _08048C30
	ldrh r2, [r0]
	adds r0, r4, #0
	movs r1, #0
	bl sub_8003A7C
	cmp r0, #0
	beq _08048C58
	adds r0, r5, #0
	adds r0, #0x3c
	ldrb r1, [r0]
	cmp r1, #0
	beq _08048C34
	adds r1, r5, #0
	adds r1, #0xcf
	movs r0, #1
	strb r0, [r1]
	b _08048C3A
	.align 2, 0
_08048C30: .4byte gMapPixelSizeY
_08048C34:
	adds r0, r5, #0
	adds r0, #0xcf
	strb r1, [r0]
_08048C3A:
	cmp r6, #0
	bne _08048C6E
	cmp r7, #0
	bne _08048C6E
	adds r1, r5, #0
	adds r1, #0x48
	movs r0, #1
	strb r0, [r1]
	ldr r1, _08048C54
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	b _08048C6E
	.align 2, 0
_08048C54: .4byte 0x0203DFE4
_08048C58:
	adds r1, r5, #0
	adds r1, #0xcf
	movs r0, #1
	strb r0, [r1]
_08048C60:
	cmp r6, #0
	bne _08048C6E
	adds r0, r5, #0
	adds r0, #0x48
	strb r6, [r0]
	subs r0, #4
	strb r6, [r0]
_08048C6E:
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

    .thumb
    .global sub_8048C78
sub_8048C78: @ 0x08048C78
	push {r4, r5, r6, lr}
	ldr r3, _08048CF4
	movs r2, #0
	ldr r0, _08048CF8
	ldrb r1, [r0]
	adds r4, r0, #0
	cmp r1, #0
	bne _08048CB4
	ldr r0, _08048CFC
	ldrb r0, [r0]
	cmp r0, #0
	bne _08048CB4
	ldr r1, _08048D00
	ldr r0, _08048D04
	ldrh r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	bne _08048CB4
	ldr r0, _08048D08
	ldrb r0, [r0, #0x13]
	cmp r0, #0
	beq _08048CB4
	ldr r0, _08048D0C
	ldrb r0, [r0]
	cmp r0, #0
	beq _08048CB6
_08048CB4:
	movs r2, #1
_08048CB6:
	strb r2, [r3]
	ldr r3, _08048D10
	movs r2, #0
	ldrb r0, [r4]
	cmp r0, #0
	bne _08048CE6
	ldr r1, _08048D00
	ldr r0, _08048D04
	ldrh r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	bne _08048CE6
	ldr r0, _08048D08
	ldrb r0, [r0, #0x13]
	cmp r0, #0
	beq _08048CE6
	ldr r0, _08048D0C
	ldrb r0, [r0]
	cmp r0, #0
	beq _08048CE8
_08048CE6:
	movs r2, #1
_08048CE8:
	strb r2, [r3]
	ldr r1, _08048D14
	movs r0, #0
	strb r0, [r1]
	movs r6, #0
	b _08048DFA
	.align 2, 0
_08048CF4: .4byte 0x03006EF1
_08048CF8: .4byte 0x0200108D
_08048CFC: .4byte 0x0200108E
_08048D00: .4byte gPlayerStateSettings
_08048D04: .4byte gPlayerState
_08048D08: .4byte gGameStatus
_08048D0C: .4byte byte_203F99C
_08048D10: .4byte 0x03006EF2
_08048D14: .4byte 0x0203DFE4
_08048D18:
	ldr r2, _08048DD8
	movs r0, #0x6c
	adds r1, r6, #0
	muls r1, r0, r1
	ldr r0, [r2]
	adds r5, r0, r1
	ldr r4, [r5]
	adds r0, r4, #0
	adds r0, #0x2e
	ldrb r0, [r0]
	cmp r0, #0
	beq _08048DF8
	adds r0, r4, #0
	bl sub_8034310
	cmp r0, #0
	beq _08048DF8
	adds r0, r5, #0
	bl sub_8048B90
	adds r0, r4, #0
	adds r0, #0x48
	ldrb r0, [r0]
	cmp r0, #0
	bne _08048D5E
	adds r0, r4, #0
	adds r0, #0x38
	ldrb r0, [r0]
	cmp r0, #0
	bne _08048D5E
	adds r0, r5, #0
	adds r0, #0x6a
	ldrb r0, [r0]
	cmp r0, #0
	beq _08048DF8
_08048D5E:
	ldrh r0, [r4]
	movs r2, #0x1c
	ldrsh r1, [r4, r2]
	bl sub_80342CC
	cmp r0, #0
	bne _08048DF8
	adds r0, r4, #0
	adds r0, #0x3c
	ldrb r0, [r0]
	cmp r0, #0
	bne _08048DF8
	ldrh r0, [r4, #0x20]
	cmp r0, #0
	bne _08048DF8
	adds r0, r4, #0
	adds r0, #0x44
	ldrb r0, [r0]
	cmp r0, #0
	bne _08048DF8
	ldr r0, [r5, #0x2c]
	bl sub_80038A4
	ldr r0, _08048DDC
	ldrb r0, [r0]
	cmp r0, #0
	bne _08048DAA
	ldr r1, _08048DE0
	adds r0, r5, #0
	adds r0, #0x5c
	ldrh r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r2, [r0]
	adds r0, r5, #0
	adds r1, r4, #0
	bl _call_via_r2
_08048DAA:
	adds r1, r5, #0
	adds r1, #0x68
	ldrb r0, [r1]
	cmp r0, #0
	bne _08048DE8
	ldr r2, _08048DE4
	adds r0, r5, #0
	adds r0, #0x5c
	ldrh r1, [r0]
	lsls r1, r1, #2
	adds r1, r1, r2
	adds r0, #9
	ldrb r0, [r0]
	ldr r1, [r1]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r2, [r0]
	adds r0, r5, #0
	adds r1, r4, #0
	bl _call_via_r2
	b _08048DF8
	.align 2, 0
_08048DD8: .4byte 0x0203F8B0
_08048DDC: .4byte byte_203F99C
_08048DE0: .4byte 0x080B0E04
_08048DE4: .4byte 0x087DF9E0
_08048DE8:
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08048DF8
	adds r0, r5, #0
	bl sub_8049A04
_08048DF8:
	adds r6, #1
_08048DFA:
	ldr r0, _08048E08
	ldr r0, [r0]
	cmp r6, r0
	blt _08048D18
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08048E08: .4byte 0x0203F8C0

    .thumb
sub_8048E0C: @ 0x08048E0C
	push {lr}
	adds r2, r0, #0
	cmp r2, #0
	bge _08048E1A
	movs r0, #0xb4
	lsls r0, r0, #0xd
	adds r2, r2, r0
_08048E1A:
	ldr r0, _08048E28
	adds r1, r2, r0
	ldr r0, _08048E2C
	cmp r1, r0
	bls _08048E30
	movs r0, #2
	b _08048E92
	.align 2, 0
_08048E28: .4byte 0xFFE98000
_08048E2C: .4byte 0x013B0000
_08048E30:
	ldr r0, _08048E3C
	cmp r2, r0
	bgt _08048E40
	movs r0, #1
	b _08048E92
	.align 2, 0
_08048E3C: .4byte 0x00437FFF
_08048E40:
	ldr r0, _08048E4C
	cmp r2, r0
	bgt _08048E50
	movs r0, #0
	b _08048E92
	.align 2, 0
_08048E4C: .4byte 0x00707FFF
_08048E50:
	ldr r0, _08048E5C
	cmp r2, r0
	bgt _08048E60
	movs r0, #7
	b _08048E92
	.align 2, 0
_08048E5C: .4byte 0x009D7FFF
_08048E60:
	ldr r0, _08048E6C
	cmp r2, r0
	bgt _08048E70
	movs r0, #6
	b _08048E92
	.align 2, 0
_08048E6C: .4byte 0x00CA7FFF
_08048E70:
	ldr r0, _08048E7C
	cmp r2, r0
	bgt _08048E80
	movs r0, #5
	b _08048E92
	.align 2, 0
_08048E7C: .4byte 0x00F77FFF
_08048E80:
	ldr r0, _08048E8C
	cmp r2, r0
	ble _08048E90
	movs r0, #3
	b _08048E92
	.align 2, 0
_08048E8C: .4byte 0x01247FFF
_08048E90:
	movs r0, #4
_08048E92:
	pop {r1}
	bx r1
	.align 2, 0

    .thumb
sub_08048E98: @ 0x08048E98
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x30]
	cmp r0, #0
	blt _08048EC0
	ldr r0, _08048EE0
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	ldr r1, [r4, #0x34]
	cmp r1, r0
	bgt _08048EC0
	ldr r0, _08048EE4
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	ldr r1, [r4, #0x38]
	cmp r1, r0
	bgt _08048EC0
	ldr r0, [r4, #0x3c]
	cmp r0, #0
	bge _08048EC4
_08048EC0:
	.2byte 0xEE00, 0xEE00
_08048EC4:
	movs r0, #0
	movs r1, #3
	bl RandomMinMax
	cmp r0, #1
	beq _08048F02
	cmp r0, #1
	blo _08048EE8
	cmp r0, #2
	beq _08048F1C
	cmp r0, #3
	beq _08048F34
	b _08048F54
	.align 2, 0
_08048EE0: .4byte gMapPixelSizeX
_08048EE4: .4byte gMapPixelSizeY
_08048EE8:
	movs r1, #0x32
	ldrsh r0, [r4, r1]
	ldr r1, [r4, #0x40]
	asrs r1, r1, #0x10
	bl RandomMinMax
	lsls r0, r0, #0x10
	str r0, [r4, #4]
	ldr r0, [r4, #0x4c]
	asrs r0, r0, #0x10
	movs r2, #0x3a
	ldrsh r1, [r4, r2]
	b _08048F4C
_08048F02:
	ldr r0, [r4, #0x40]
	asrs r0, r0, #0x10
	movs r2, #0x36
	ldrsh r1, [r4, r2]
	bl RandomMinMax
	lsls r0, r0, #0x10
	str r0, [r4, #4]
	ldr r0, [r4, #0x48]
	asrs r0, r0, #0x10
	movs r2, #0x3a
	ldrsh r1, [r4, r2]
	b _08048F4C
_08048F1C:
	ldr r0, [r4, #0x44]
	asrs r0, r0, #0x10
	movs r2, #0x36
	ldrsh r1, [r4, r2]
	bl RandomMinMax
	lsls r0, r0, #0x10
	str r0, [r4, #4]
	movs r1, #0x3e
	ldrsh r0, [r4, r1]
	ldr r1, [r4, #0x48]
	b _08048F4A
_08048F34:
	movs r2, #0x32
	ldrsh r0, [r4, r2]
	ldr r1, [r4, #0x44]
	asrs r1, r1, #0x10
	bl RandomMinMax
	lsls r0, r0, #0x10
	str r0, [r4, #4]
	movs r1, #0x3e
	ldrsh r0, [r4, r1]
	ldr r1, [r4, #0x4c]
_08048F4A:
	asrs r1, r1, #0x10
_08048F4C:
	bl RandomMinMax
	lsls r0, r0, #0x10
	str r0, [r4, #0xc]
_08048F54:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

    .thumb
sub_08048F5C: @ 0x08048F5C
	push {r4, r5, lr}
	mov ip, r0
	ldr r5, [r0]
	adds r0, r5, #0
	adds r0, #0x38
	ldrb r0, [r0]
	cmp r0, #0
	beq _08048FFC
	mov r3, ip
	adds r3, #0x69
	ldrb r0, [r3]
	cmp r0, #0
	beq _08048FCC
	ldr r3, _08048FC4
	ldr r2, [r3, #0x48]
	mov r4, ip
	adds r4, #0x67
	ldrb r1, [r4]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r2, r0
	ldrh r0, [r0, #0xa]
	mov r1, ip
	adds r1, #0x5e
	strh r0, [r1]
	ldrb r1, [r4]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r2, r2, r0
	ldrb r0, [r2, #0x13]
	strb r0, [r5, #8]
	ldr r2, [r3, #0x48]
	ldrb r1, [r4]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r2, r2, r0
	ldrb r0, [r2, #0x11]
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _08048FC8
	ldrh r0, [r5]
	cmp r0, #0xc1
	beq _08049002
	.2byte 0xEE00, 0xEE00
	b _08049002
	.align 2, 0
_08048FC4: .4byte gRoomHeader
_08048FC8:
	ldrb r0, [r4]
	b _08048FEA
_08048FCC:
	mov r1, ip
	ldr r0, [r1, #4]
	ldr r1, [r1, #0x10]
	mov r4, ip
	ldr r2, [r4, #0x18]
	cmp r0, r1
	bne _08048FF4
	ldr r0, [r4, #0xc]
	cmp r0, r2
	bne _08048FF4
	movs r0, #1
	strb r0, [r3]
	mov r0, ip
	adds r0, #0x67
	ldrb r0, [r0]
_08048FEA:
	mov r1, ip
	adds r1, #4
	bl sub_8047D70
	b _08049002
_08048FF4:
	mov r0, ip
	str r1, [r0, #4]
	str r2, [r0, #0xc]
	b _08049002
_08048FFC:
	mov r0, ip
	bl sub_08048E98
_08049002:
	pop {r4, r5}
	pop {r0}
	bx r0

    .thumb
sub_8049008: @ 0x08049008
	push {r4, lr}
	adds r3, r0, #0
	adds r4, r1, #0
	cmp r2, #0
	beq _0804902A
	ldr r1, [r3]
	adds r2, r3, #0
	adds r2, #0x69
	movs r0, #0
	strb r0, [r2]
	adds r0, r1, #0
	adds r0, #0x94
	ldr r0, [r0]
	str r0, [r3, #0x10]
	adds r1, #0x9c
	ldr r0, [r1]
	str r0, [r3, #0x18]
_0804902A:
	ldr r0, [r4]
	str r0, [r3, #4]
	ldr r0, [r4, #8]
	str r0, [r3, #0xc]
	pop {r4}
	pop {r0}
	bx r0

    .thumb
sub_8049038: @ 0x08049038
	ldr r0, [r0]
	strb r1, [r0, #0xb]
	adds r0, #0xaa
	strb r1, [r0]
	bx lr
	.align 2, 0

    .thumb
sub_8049044: @ 0x08049044
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, [r4]
	mov ip, r0
	cmp r1, #0
	beq _08049068
	adds r1, r4, #0
	adds r1, #0x69
	movs r0, #0
	strb r0, [r1]
	mov r0, ip
	adds r0, #0x94
	ldr r0, [r0]
	str r0, [r4, #0x10]
	mov r0, ip
	adds r0, #0x9c
	ldr r0, [r0]
	str r0, [r4, #0x18]
_08049068:
	ldr r6, [r4, #0x34]
	ldr r5, [r4, #0x30]
	subs r2, r6, r5
	asrs r2, r2, #1
	adds r2, r5, r2
	ldr r3, [r4, #0x38]
	ldr r1, [r4, #0x3c]
	subs r0, r3, r1
	asrs r0, r0, #1
	adds r7, r1, r0
	mov r0, ip
	adds r0, #0x94
	ldr r0, [r0]
	cmp r0, r2
	ble _0804908A
	str r5, [r4, #4]
	b _0804908C
_0804908A:
	str r6, [r4, #4]
_0804908C:
	mov r0, ip
	adds r0, #0x9c
	ldr r0, [r0]
	cmp r0, r7
	ble _0804909A
	str r1, [r4, #0xc]
	b _0804909C
_0804909A:
	str r3, [r4, #0xc]
_0804909C:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

    .thumb
    .global sub_80490A4
sub_80490A4: @ 0x080490A4
	ldr r1, _080490B8
	ldr r2, [r1]
	movs r1, #0x6c
	muls r0, r1, r0
	adds r0, r0, r2
	ldr r0, [r0]
	adds r0, #0x28
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_080490B8: .4byte 0x0203F8B0

    .thumb
sub_080490BC: @ 0x080490BC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc0
	mov r8, r0
	adds r6, r1, #0
	mov sl, r2
	ldr r7, [r0]
	adds r0, r7, #0
	adds r0, #0x38
	ldrb r0, [r0]
	cmp r0, #0
	beq _080490E8
	mov r0, r8
	adds r0, #0x69
	ldrb r0, [r0]
	cmp r0, #0
	beq _080490E8
	movs r0, #0
	b _080491CA
_080490E8:
	movs r0, #0
	mov sb, r0
	add r5, sp, #0xa8
	ldr r0, [r6]
	str r0, [r5]
	ldr r0, [r6, #4]
	movs r1, #0xc0
	lsls r1, r1, #0xb
	adds r0, r0, r1
	str r0, [r5, #4]
	ldr r0, [r6, #8]
	str r0, [r5, #8]
	adds r0, r5, #0
	mov r1, sp
	bl sub_08009208
	ldrb r0, [r7, #0x10]
	cmp r0, #0
	beq _08049150
	add r3, sp, #0xb4
	adds r1, r7, #0
	adds r1, #0x94
	ldr r0, [r5]
	ldr r1, [r1]
	subs r0, r0, r1
	str r0, [r3]
	adds r0, r7, #0
	adds r0, #0x98
	ldr r2, [r5, #4]
	ldr r0, [r0]
	subs r2, r2, r0
	str r2, [r3, #4]
	adds r1, r7, #0
	adds r1, #0x9c
	ldr r0, [r5, #8]
	ldr r1, [r1]
	subs r0, r0, r1
	str r0, [r3, #8]
	cmp r2, #0
	bne _0804913C
	ldr r0, _0804914C
	str r0, [r3, #4]
_0804913C:
	add r4, sp, #0x54
	adds r0, r5, #0
	adds r1, r3, #0
	adds r2, r4, #0
	bl sub_08007C20
	b _08049158
	.align 2, 0
_0804914C: .4byte 0xFFFF0000
_08049150:
	add r0, sp, #0x54
	mov r2, sb
	strb r2, [r0]
	adds r4, r0, #0
_08049158:
	mov r0, sp
	ldrb r0, [r0]
	cmp r0, #0
	beq _080491A2
	ldrb r0, [r4]
	cmp r0, #0
	bne _080491A2
	mov r1, sl
	cmp r1, #0
	beq _080491A6
	ldrh r0, [r7, #6]
	adds r1, r7, #0
	adds r1, #0x98
	movs r2, #2
	ldrsh r1, [r1, r2]
	cmp r0, r1
	bne _080491A6
	ldr r5, [r6, #4]
	ldr r0, [sp, #0x1c]
	ldr r1, [r6]
	bl CallARM_FX_Mul16
	adds r4, r0, #0
	ldr r0, [sp, #0x20]
	ldr r1, [r6, #8]
	bl CallARM_FX_Mul16
	adds r4, r4, r0
	ldr r0, [sp, #0x24]
	adds r4, r4, r0
	str r4, [r6, #4]
	cmp r4, #0
	bge _0804919E
	.2byte 0xEE00, 0xEE00
_0804919E:
	cmp r4, r5
	beq _080491A6
_080491A2:
	movs r0, #1
	mov sb, r0
_080491A6:
	mov r0, sp
	ldrb r0, [r0]
	cmp r0, #0
	beq _080491C8
	adds r0, r7, #0
	adds r0, #0x38
	ldrb r0, [r0]
	cmp r0, #0
	beq _080491C2
	mov r0, r8
	adds r0, #0x69
	ldrb r0, [r0]
	cmp r0, #0
	bne _080491C8
_080491C2:
	mov r0, sp
	ldrb r0, [r0, #3]
	strb r0, [r7, #8]
_080491C8:
	mov r0, sb
_080491CA:
	add sp, #0xc0
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	.thumb
sub_080491DC: @ 0x080491DC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x15c
	str r0, [sp, #0x144]
	str r1, [sp, #0x148]
	str r2, [sp, #0x14c]
	ldr r7, [r0]
	add r6, sp, #0xc0
	ldr r0, [r7, #0x4c]
	asrs r0, r0, #1
	ldr r1, [r1]
	subs r0, r1, r0
	str r0, [r6]
	ldr r0, [sp, #0x148]
	ldr r2, [r0, #4]
	str r2, [r6, #4]
	ldr r0, [r7, #0x54]
	asrs r0, r0, #1
	ldr r4, [sp, #0x148]
	ldr r3, [r4, #8]
	subs r0, r3, r0
	str r0, [r6, #8]
	ldr r0, [r7, #0x4c]
	asrs r0, r0, #1
	adds r0, r1, r0
	str r0, [r6, #0xc]
	str r2, [r6, #0x10]
	ldr r0, [r7, #0x54]
	asrs r0, r0, #1
	subs r0, r3, r0
	str r0, [r6, #0x14]
	ldr r0, [r7, #0x4c]
	asrs r0, r0, #1
	adds r0, r1, r0
	str r0, [r6, #0x18]
	str r2, [r6, #0x1c]
	ldr r0, [r7, #0x54]
	asrs r0, r0, #1
	adds r0, r3, r0
	str r0, [r6, #0x20]
	ldr r0, [r7, #0x4c]
	asrs r0, r0, #1
	subs r0, r1, r0
	str r0, [r6, #0x24]
	str r2, [r6, #0x28]
	ldr r0, [r7, #0x54]
	asrs r0, r0, #1
	adds r0, r3, r0
	str r0, [r6, #0x2c]
	ldr r0, [r7, #0x4c]
	asrs r0, r0, #1
	subs r0, r1, r0
	str r0, [r6, #0x30]
	ldr r0, [r7, #0x50]
	adds r0, r2, r0
	str r0, [r6, #0x34]
	ldr r0, [r7, #0x54]
	asrs r0, r0, #1
	subs r0, r3, r0
	str r0, [r6, #0x38]
	ldr r0, [r7, #0x4c]
	asrs r0, r0, #1
	adds r0, r1, r0
	str r0, [r6, #0x3c]
	ldr r0, [r7, #0x50]
	adds r0, r2, r0
	str r0, [r6, #0x40]
	ldr r0, [r7, #0x54]
	asrs r0, r0, #1
	subs r0, r3, r0
	str r0, [r6, #0x44]
	ldr r0, [r7, #0x4c]
	asrs r0, r0, #1
	adds r0, r1, r0
	str r0, [r6, #0x48]
	ldr r0, [r7, #0x50]
	adds r0, r2, r0
	str r0, [r6, #0x4c]
	ldr r0, [r7, #0x54]
	asrs r0, r0, #1
	adds r0, r3, r0
	str r0, [r6, #0x50]
	ldr r0, [r7, #0x4c]
	asrs r0, r0, #1
	subs r1, r1, r0
	str r1, [r6, #0x54]
	ldr r0, [r7, #0x50]
	adds r2, r2, r0
	str r2, [r6, #0x58]
	ldr r0, [r7, #0x54]
	asrs r0, r0, #1
	adds r3, r3, r0
	str r3, [r6, #0x5c]
	movs r0, #0
	str r0, [sp, #0x150]
	ldr r1, _08049470
	strb r0, [r1]
	add r2, sp, #0xa8
	mov r8, r2
	ldr r0, [r4]
	str r0, [r2]
	ldr r0, [r4, #4]
	movs r3, #0x80
	lsls r3, r3, #0xd
	adds r0, r0, r3
	str r0, [r2, #4]
	ldr r0, [r4, #8]
	str r0, [r2, #8]
	mov r0, r8
	mov r1, sp
	bl sub_08009208
	add r4, sp, #0xb4
	mov sb, r4
	adds r0, r7, #0
	adds r0, #0x94
	str r0, [sp, #0x154]
	mov r1, r8
	ldr r0, [r1]
	ldr r2, [sp, #0x154]
	ldr r1, [r2]
	subs r0, r0, r1
	str r0, [r4]
	adds r0, r7, #0
	adds r0, #0x98
	ldr r3, [sp, #0x148]
	ldr r2, [r3, #4]
	ldr r0, [r0]
	subs r2, r2, r0
	str r2, [r4, #4]
	adds r4, r7, #0
	adds r4, #0x9c
	str r4, [sp, #0x158]
	mov r1, r8
	ldr r0, [r1, #8]
	ldr r1, [r4]
	subs r0, r0, r1
	mov r3, sb
	str r0, [r3, #8]
	cmp r2, #0
	bne _08049300
	ldr r0, _08049474
	str r0, [r3, #4]
_08049300:
	add r4, sp, #0x54
	mov sl, r4
	adds r0, r6, #0
	mov r1, sb
	mov r2, sl
	bl sub_08008728
	ldrb r0, [r4]
	cmp r0, #0
	bne _08049316
	b _08049478
_08049316:
	ldr r1, [sp, #0x144]
	ldr r0, [r1, #0x2c]
	add r1, sp, #0x138
	add r2, sp, #0x13c
	add r3, sp, #0x140
	bl sub_80038C4
	add r0, sp, #0x120
	add r1, sp, #0x138
	ldr r1, [r1]
	asrs r1, r1, #8
	str r1, [r0]
	add r1, sp, #0x13c
	ldr r1, [r1]
	asrs r1, r1, #8
	str r1, [r0, #4]
	add r1, sp, #0x140
	ldr r1, [r1]
	asrs r1, r1, #8
	str r1, [r0, #8]
	add r4, sp, #0x12c
	mov r2, sl
	ldr r1, [r2, #0x38]
	str r1, [r4]
	ldr r1, [r2, #0x3c]
	str r1, [r4, #4]
	ldr r1, [r2, #0x40]
	str r1, [r4, #8]
	adds r1, r4, #0
	bl CallARM_VecFX_Dot8
	adds r5, r0, #0
	adds r0, r4, #0
	adds r1, r4, #0
	bl CallARM_VecFX_Dot8
	adds r1, r0, #0
	adds r0, r5, #0
	bl sub_8003934
	adds r1, r0, #0
	adds r0, r4, #0
	bl CallARM_VecFX_Mul8
	ldr r0, [r4]
	lsls r0, r0, #8
	ldr r3, [sp, #0x154]
	ldr r2, [r3]
	adds r2, r2, r0
	mov r0, r8
	str r2, [r0]
	ldr r1, [r4, #8]
	lsls r1, r1, #8
	ldr r3, [sp, #0x158]
	ldr r0, [r3]
	adds r0, r0, r1
	mov r4, r8
	str r0, [r4, #8]
	ldr r0, [r7, #0x4c]
	asrs r0, r0, #1
	subs r2, r2, r0
	str r2, [r6]
	ldr r1, [r7, #0x54]
	asrs r1, r1, #1
	ldr r0, [r4, #8]
	subs r0, r0, r1
	str r0, [r6, #8]
	ldr r1, [r7, #0x4c]
	asrs r1, r1, #1
	ldr r0, [r4]
	adds r0, r0, r1
	str r0, [r6, #0xc]
	ldr r1, [r7, #0x54]
	asrs r1, r1, #1
	ldr r0, [r4, #8]
	subs r0, r0, r1
	str r0, [r6, #0x14]
	ldr r1, [r7, #0x4c]
	asrs r1, r1, #1
	ldr r0, [r4]
	adds r0, r0, r1
	str r0, [r6, #0x18]
	ldr r1, [r7, #0x54]
	asrs r1, r1, #1
	ldr r0, [r4, #8]
	adds r0, r0, r1
	str r0, [r6, #0x20]
	ldr r1, [r7, #0x4c]
	asrs r1, r1, #1
	ldr r0, [r4]
	subs r0, r0, r1
	str r0, [r6, #0x24]
	ldr r1, [r7, #0x54]
	asrs r1, r1, #1
	ldr r0, [r4, #8]
	adds r0, r0, r1
	str r0, [r6, #0x2c]
	ldr r1, [r7, #0x4c]
	asrs r1, r1, #1
	ldr r0, [r4]
	subs r0, r0, r1
	str r0, [r6, #0x30]
	ldr r1, [r7, #0x54]
	asrs r1, r1, #1
	ldr r0, [r4, #8]
	subs r0, r0, r1
	str r0, [r6, #0x38]
	ldr r1, [r7, #0x4c]
	asrs r1, r1, #1
	ldr r0, [r4]
	adds r0, r0, r1
	str r0, [r6, #0x3c]
	ldr r1, [r7, #0x54]
	asrs r1, r1, #1
	ldr r0, [r4, #8]
	subs r0, r0, r1
	str r0, [r6, #0x44]
	ldr r1, [r7, #0x4c]
	asrs r1, r1, #1
	ldr r0, [r4]
	adds r0, r0, r1
	str r0, [r6, #0x48]
	ldr r1, [r7, #0x54]
	asrs r1, r1, #1
	ldr r0, [r4, #8]
	adds r0, r0, r1
	str r0, [r6, #0x50]
	ldr r1, [r7, #0x4c]
	asrs r1, r1, #1
	ldr r0, [r4]
	subs r0, r0, r1
	str r0, [r6, #0x54]
	ldr r1, [r7, #0x54]
	asrs r1, r1, #1
	ldr r0, [r4, #8]
	adds r0, r0, r1
	str r0, [r6, #0x5c]
	ldr r0, [r4]
	ldr r2, [sp, #0x154]
	ldr r1, [r2]
	subs r0, r0, r1
	mov r3, sb
	str r0, [r3]
	ldr r0, [r4, #8]
	ldr r4, [sp, #0x158]
	ldr r1, [r4]
	subs r0, r0, r1
	str r0, [r3, #8]
	ldr r0, [r3, #4]
	cmp r0, #0
	bne _08049448
	ldr r0, _08049474
	str r0, [r3, #4]
_08049448:
	adds r0, r6, #0
	mov r1, sb
	mov r2, sl
	bl sub_08008728
	mov r1, sl
	ldrb r0, [r1]
	cmp r0, #0
	bne _08049480
	mov r3, r8
	ldr r0, [r3]
	ldr r4, [sp, #0x148]
	str r0, [r4]
	ldr r0, [r3, #8]
	str r0, [r4, #8]
	movs r0, #1
	ldr r1, _08049470
	strb r0, [r1]
	b _080494D4
	.align 2, 0
_08049470: .4byte 0x0203F8DC
_08049474: .4byte 0xFFFF0000
_08049478:
	mov r0, sp
	ldrb r0, [r0]
	cmp r0, #0
	bne _08049486
_08049480:
	movs r2, #1
	str r2, [sp, #0x150]
	b _080494E8
_08049486:
	ldrh r0, [r7, #6]
	lsls r5, r0, #0x10
	ldr r0, [sp, #0x1c]
	ldr r3, [sp, #0x148]
	ldr r1, [r3]
	bl CallARM_FX_Mul16
	adds r4, r0, #0
	ldr r0, [sp, #0x20]
	ldr r2, [sp, #0x148]
	ldr r1, [r2, #8]
	bl CallARM_FX_Mul16
	adds r4, r4, r0
	ldr r0, [sp, #0x24]
	adds r1, r4, r0
	cmp r1, #0
	bge _080494AE
	.2byte 0xEE00, 0xEE00
_080494AE:
	cmp r1, r5
	beq _080494D4
	ldr r3, [sp, #0x14c]
	cmp r3, #0
	beq _080494BE
	movs r4, #1
	str r4, [sp, #0x150]
	b _080494E8
_080494BE:
	ldr r0, [sp, #0x144]
	str r1, [r0, #0x50]
	asrs r0, r1, #0x10
	strh r0, [r7, #6]
	subs r1, r1, r5
	ldr r2, [sp, #0x144]
	ldr r0, [r2, #0x54]
	subs r0, r0, r1
	str r0, [r2, #0x54]
	asrs r0, r0, #0x10
	strb r0, [r7, #9]
_080494D4:
	ldr r3, [sp, #0x150]
	cmp r3, #0
	bne _080494E8
	mov r0, sp
	ldrb r0, [r0]
	cmp r0, #0
	beq _080494E8
	mov r0, sp
	ldrb r0, [r0, #3]
	strb r0, [r7, #8]
_080494E8:
	ldr r0, [sp, #0x150]
	add sp, #0x15c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0 

    .thumb
sub_80494FC: @ 0x080494FC
	push {r4, r5, r6, lr}
	ldr r3, _08049528
	ldr r2, [r3]
	ldr r1, [r0]
	subs r6, r2, r1
	ldr r1, [r3, #8]
	ldr r0, [r0, #8]
	subs r5, r1, r0
	adds r0, r6, #0
	bl Abs
	adds r4, r0, #0
	adds r0, r5, #0
	bl Abs
	cmp r4, r0
	bhi _0804952C
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_80039B4
	b _08049534
	.align 2, 0
_08049528: .4byte gPlayerPos
_0804952C:
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_80039AC
_08049534:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

    .thumb
sub_804953C: @ 0x0804953C
	push {r4, r5, r6, lr}
	ldr r3, [r1]
	ldr r2, [r0]
	subs r6, r3, r2
	ldr r1, [r1, #8]
	ldr r0, [r0, #8]
	subs r5, r1, r0
	adds r0, r6, #0
	bl Abs
	adds r4, r0, #0
	adds r0, r5, #0
	bl Abs
	cmp r4, r0
	bhi _08049566
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_80039B4
	b _0804956E
_08049566:
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_80039AC
_0804956E:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

    .thumb
sub_08049574: @ 0x08049574
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	mov r8, r1
	ldr r7, [r5]
	cmp r3, #0
	beq _0804958E
	ldr r0, _080495A8
	ldr r1, [r0, #4]
	ldr r0, [r5, #0x50]
	cmp r1, r0
	bne _080495A2
_0804958E:
	cmp r2, #0
	bne _0804959A
	ldr r0, _080495AC
	ldrb r0, [r0]
	cmp r0, #0
	bne _080495A2
_0804959A:
	ldr r0, _080495B0
	ldrb r0, [r0]
	cmp r0, #0
	beq _080495B4
_080495A2:
	movs r0, #0
	b _080496A4
	.align 2, 0
_080495A8: .4byte gPlayerShadowPos
_080495AC: .4byte 0x03006EF1
_080495B0: .4byte byte_203F99C
_080495B4:
	ldr r4, _08049610
	adds r0, r7, #0
	adds r0, #0x94
	ldr r0, [r0]
	adds r1, r7, #0
	adds r1, #0x9c
	ldr r1, [r1]
	ldr r6, _08049614
	ldr r2, [r6]
	ldr r3, [r6, #8]
	bl sub_8003A6C
	strb r0, [r4]
	movs r4, #0
	adds r0, r7, #0
	adds r0, #0x30
	ldrb r1, [r0]
	adds r3, r0, #0
	cmp r1, #0
	beq _080495FA
	ldr r1, [r6]
	ldr r0, [r5, #0x30]
	cmp r1, r0
	blt _080495FA
	ldr r0, [r5, #0x34]
	cmp r1, r0
	bgt _080495FA
	ldr r2, [r6, #8]
	ldr r0, [r5, #0x3c]
	cmp r2, r0
	blt _080495FA
	ldr r0, [r5, #0x38]
	cmp r2, r0
	bgt _080495FA
	movs r4, #1
_080495FA:
	mov r0, r8
	cmp r0, #0
	beq _080496A2
	ldrb r0, [r3]
	cmp r0, #4
	bhi _0804969E
	lsls r0, r0, #2
	ldr r1, _08049618
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08049610: .4byte 0x03006EF0
_08049614: .4byte gPlayerShadowPos
_08049618: .4byte 0x0804961C
_0804961C: @ jump table
	.4byte _080496A2 @ case 0
	.4byte _08049684 @ case 1
	.4byte _08049664 @ case 2
	.4byte _08049630 @ case 3
	.4byte _080496A2 @ case 4
_08049630:
	ldrb r1, [r7, #0xb]
	movs r5, #0
	ldr r2, _08049660
	ldrb r0, [r2]
	cmp r0, r1
	beq _08049658
	adds r2, r0, #0
	subs r0, r1, #1
	movs r3, #7
	ands r0, r3
	cmp r2, r0
	beq _08049658
	adds r0, r1, #1
	ands r0, r3
	cmp r2, r0
	beq _08049658
	subs r0, r1, #2
	ands r0, r3
	cmp r2, r0
	bne _0804965A
_08049658:
	movs r5, #1
_0804965A:
	ands r4, r5
	b _080496A2
	.align 2, 0
_08049660: .4byte 0x03006EF0
_08049664:
	ldrb r1, [r7, #0xb]
	movs r3, #0
	ldr r2, _08049680
	ldrb r0, [r2]
	cmp r0, r1
	beq _0804967A
	subs r1, #1
	movs r2, #7
	ands r1, r2
	cmp r0, r1
	bne _0804967C
_0804967A:
	movs r3, #1
_0804967C:
	ands r4, r3
	b _080496A2
	.align 2, 0
_08049680: .4byte 0x03006EF0
_08049684:
	ldr r0, _08049694
	ldrb r0, [r0]
	ldrb r7, [r7, #0xb]
	cmp r0, r7
	bne _08049698
	movs r0, #1
	ands r0, r4
	b _0804969A
	.align 2, 0
_08049694: .4byte 0x03006EF0
_08049698:
	movs r0, #0
_0804969A:
	adds r4, r0, #0
	b _080496A2
_0804969E:
	.2byte 0xEE00, 0xEE00
_080496A2:
	adds r0, r4, #0
_080496A4:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

    .thumb
sub_80496B0: @ 0x080496B0
	push {r4, r5, r6, lr}
	mov ip, r0
	lsls r1, r1, #0x10
	cmp r2, #0
	beq _0804970C
	ldrb r0, [r0, #9]
	lsls r5, r0, #0x10
	movs r6, #0
	ldr r4, _08049708
	mov r0, ip
	adds r0, #0x94
	ldr r3, [r0]
	subs r0, r3, r1
	ldr r2, [r4]
	cmp r2, r0
	blt _08049702
	adds r0, r3, r1
	cmp r2, r0
	bgt _08049702
	mov r0, ip
	adds r0, #0x9c
	ldr r3, [r0]
	subs r0, r3, r1
	ldr r2, [r4, #8]
	cmp r2, r0
	blt _08049702
	adds r0, r3, r1
	cmp r2, r0
	bgt _08049702
	mov r0, ip
	adds r0, #0x98
	ldr r0, [r0]
	adds r3, r0, r5
	subs r0, r3, r1
	ldr r2, [r4, #4]
	cmp r2, r0
	blt _08049702
	adds r0, r3, r1
	cmp r2, r0
	bgt _08049702
	movs r6, #1
_08049702:
	adds r0, r6, #0
	b _0804973C
	.align 2, 0
_08049708: .4byte gPlayerPos
_0804970C:
	movs r5, #0
	ldr r4, _08049744
	mov r0, ip
	adds r0, #0x94
	ldr r3, [r0]
	subs r0, r3, r1
	ldr r2, [r4]
	cmp r2, r0
	blt _0804973A
	adds r0, r3, r1
	cmp r2, r0
	bgt _0804973A
	mov r0, ip
	adds r0, #0x9c
	ldr r3, [r0]
	subs r0, r3, r1
	ldr r2, [r4, #8]
	cmp r2, r0
	blt _0804973A
	adds r0, r3, r1
	cmp r2, r0
	bgt _0804973A
	movs r5, #1
_0804973A:
	adds r0, r5, #0
_0804973C:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08049744: .4byte gPlayerShadowPos

    .thumb
sub_8049748: @ 0x08049748
	push {r4, r5, r6, lr}
	adds r5, r1, #0
	ldr r4, [r0]
	lsls r2, r2, #0x10
	movs r6, #0
	adds r1, r4, #0
	adds r1, #0x94
	ldr r3, [r5]
	subs r0, r3, r2
	ldr r1, [r1]
	cmp r1, r0
	blt _0804977C
	adds r0, r3, r2
	cmp r1, r0
	bgt _0804977C
	adds r1, r4, #0
	adds r1, #0x9c
	ldr r3, [r5, #8]
	subs r0, r3, r2
	ldr r1, [r1]
	cmp r1, r0
	blt _0804977C
	adds r0, r3, r2
	cmp r1, r0
	bgt _0804977C
	movs r6, #1
_0804977C:
	adds r0, r6, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1

    .thumb
sub_8049784: @ 0x08049784
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r5, [r4]
	ldr r1, _080497BC
	movs r0, #0xff
	strb r0, [r1]
	adds r6, r1, #0
_08049792:
	adds r0, r4, #0
	bl sub_08048F5C
	adds r0, r5, #0
	adds r0, #0x94
	ldr r0, [r0]
	adds r1, r5, #0
	adds r1, #0x9c
	ldr r1, [r1]
	ldr r2, [r4, #4]
	ldr r3, [r4, #0xc]
	bl sub_8003A6C
	strb r0, [r6]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	beq _08049792
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080497BC: .4byte 0x020010A5

    .thumb
sub_80497C0: @ 0x080497C0
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, [r4]
	adds r0, r5, #0
	adds r0, #0x94
	ldr r0, [r0]
	adds r1, r5, #0
	adds r1, #0x9c
	ldr r1, [r1]
	ldr r2, [r4, #4]
	ldr r3, [r4, #0xc]
	bl sub_8003A6C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r2, r0, #0
	cmp r2, #0xff
	bne _080497E8
	movs r0, #1
	b _08049806
_080497E8:
	ldrb r0, [r5, #0xb]
	cmp r2, r0
	beq _08049804
	strb r2, [r5, #0xb]
	ldr r0, [r4, #0x2c]
	ldr r1, [r4, #0x28]
	ldr r1, [r1]
	ldr r3, _0804980C
	lsls r2, r2, #2
	adds r2, r2, r3
	ldr r2, [r2]
	movs r3, #0
	bl sub_8003884
_08049804:
	movs r0, #0
_08049806:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0804980C: .4byte dword_80CC290

    .thumb
sub_8049810: @ 0x08049810
	push {lr}
	adds r1, r0, #0
	ldr r0, [r1]
	adds r2, r0, #0
	adds r2, #0xa0
	ldrb r0, [r0, #0xb]
	ldrb r3, [r2, #0xa]
	cmp r0, r3
	beq _08049832
	strb r0, [r2, #0xa]
	ldr r0, [r1, #0x28]
	ldrh r1, [r0, #4]
	ldrb r3, [r0, #8]
	adds r0, r2, #0
	movs r2, #0
	bl sub_80033A4
_08049832:
	pop {r0}
	bx r0
	.align 2, 0

    .thumb
sub_8049838: @ 0x08049838
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r5, r0, #0
	mov r8, r1
	mov sb, r2
	ldr r4, [r5]
	adds r0, r4, #0
	adds r0, #0x94
	ldr r0, [r0]
	adds r1, r4, #0
	adds r1, #0x9c
	ldr r1, [r1]
	ldr r2, [r5, #4]
	ldr r3, [r5, #0xc]
	bl sub_8003A6C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #0
	cmp r0, #0xff
	bne _08049868
	movs r1, #1
_08049868:
	adds r7, r1, #0
	ldrb r1, [r4, #0xb]
	cmp r0, r1
	beq _080498B4
	cmp r7, #0
	bne _080498B4
	strb r0, [r4, #0xb]
	adds r6, r4, #0
	adds r6, #0xaa
	strb r0, [r6]
	adds r0, r4, #0
	adds r0, #0xa0
	mov r1, r8
	movs r2, #0
	mov r3, sb
	bl sub_8003368
	ldr r0, [r5, #0x2c]
	ldr r3, _080498C4
	adds r1, r5, #0
	adds r1, #0x64
	ldrb r2, [r1]
	lsls r2, r2, #3
	adds r2, r2, r3
	ldr r1, _080498C8
	ldrb r1, [r1]
	ldr r2, [r2]
	lsls r1, r1, #4
	adds r1, r1, r2
	ldr r1, [r1, #0xc]
	ldr r3, _080498CC
	ldrb r2, [r6]
	lsls r2, r2, #2
	adds r2, r2, r3
	ldr r2, [r2]
	movs r3, #0
	bl sub_8003884
_080498B4:
	adds r0, r7, #0
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080498C4: .4byte 0x080B19E0
_080498C8: .4byte 0x0203F8D5
_080498CC: .4byte dword_80CC290

    .thumb
sub_80498D0: @ 0x080498D0
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _080498EC
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bge _080498F4
	ldr r0, _080498F0
	ldrb r0, [r0, #0xe]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _08049908
	b _0804991E
	.align 2, 0
_080498EC: .4byte 0x0200108C
_080498F0: .4byte gGameStatus
_080498F4:
	ldr r0, _08049958
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, #0xe
	adds r1, r1, r0
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	beq _0804991E
_08049908:
	movs r0, #1
	movs r1, #0
	bl sub_800DC4C
	ldr r1, [r4]
	movs r2, #1
	rsbs r2, r2, #0
	movs r0, #4
	movs r3, #0
	bl sub_0802C3A4
_0804991E:
	ldr r1, _08049958
	ldrb r2, [r1, #0x12]
	movs r0, #0x12
	ldrsb r0, [r1, r0]
	cmp r0, #0
	beq _08049952
	subs r0, r2, #1
	strb r0, [r1, #0x12]
	lsls r0, r0, #0x18
	cmp r0, #0
	bge _08049938
	movs r0, #0
	strb r0, [r1, #0x12]
_08049938:
	ldrb r1, [r1, #0x12]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	movs r0, #3
	bl sub_08040204
	ldr r1, [r4]
	movs r2, #1
	rsbs r2, r2, #0
	movs r0, #2
	movs r3, #0
	bl sub_0802C3A4
_08049952:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08049958: .4byte gGameStatus

    .thumb
sub_804995C: @ 0x0804995C
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r7, r5, #0
	adds r7, #0x94
	ldr r6, _08049990
	ldr r0, [r7]
	ldr r1, [r6]
	subs r0, r0, r1
	bl Abs
	adds r4, r0, #0
	adds r1, r5, #0
	adds r1, #0x9c
	ldr r0, [r6, #8]
	ldr r1, [r1]
	subs r0, r0, r1
	bl Abs
	cmp r4, r0
	bls _08049998
	ldr r1, [r7]
	ldr r0, [r6]
	cmp r1, r0
	ble _08049994
	movs r1, #6
	b _0804999A
	.align 2, 0
_08049990: .4byte gPlayerPos
_08049994:
	movs r1, #2
	b _0804999A
_08049998:
	movs r1, #4
_0804999A:
	strb r1, [r5, #0xb]
	adds r0, r5, #0
	adds r0, #0xaa
	strb r1, [r0]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

    .thumb
    .global sub_80499A8
sub_80499A8: @ 0x080499A8
	push {r4, r5, lr}
	adds r5, r1, #0
	adds r3, r2, #0
	ldr r2, _080499D4
	movs r1, #0x6c
	muls r1, r0, r1
	ldr r0, [r2]
	adds r0, r0, r1
	ldr r4, _080499D8
	adds r1, r0, #0
	adds r1, #0x5c
	ldrh r2, [r1]
	lsls r2, r2, #2
	adds r2, r2, r4
	ldr r1, [r0]
	ldr r4, [r2]
	adds r2, r5, #0
	bl _call_via_r4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080499D4: .4byte 0x0203F8B0
_080499D8: .4byte 0x080B0EC0

    .thumb
sub_80499DC: @ 0x080499DC
	push {lr}
	adds r2, r0, #0
	ldr r1, _08049A00
	adds r0, #0x5c
	ldrh r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r2, #0
	adds r0, #0x68
	strb r1, [r0]
	ldr r0, [r2]
	adds r0, #0xa0
	bl sub_8003794
	pop {r0}
	bx r0
	.align 2, 0
_08049A00: .4byte 0x080B1184

    .thumb
sub_8049A04: @ 0x08049A04
	push {lr}
	adds r2, r0, #0
	adds r2, #0x68
	movs r1, #0
	strb r1, [r2]
	ldr r0, [r0]
	adds r0, #0xa0
	bl sub_80037A0
	pop {r0}
	bx r0
	.align 2, 0

    .thumb
    .global sub_8049A1C
sub_8049A1C: @ 0x08049A1C
	push {r4, lr}
	movs r3, #1
	movs r1, #0
	ldr r0, _08049A5C
	ldrb r0, [r0]
	cmp r1, r0
	bhs _08049A48
	ldr r4, _08049A60
	adds r2, r0, #0
_08049A2E:
	lsls r0, r1, #2
	adds r0, r0, r4
	ldr r0, [r0]
	adds r0, #0x65
	ldrb r0, [r0]
	cmp r0, #0
	beq _08049A3E
	movs r3, #0
_08049A3E:
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, r2
	blo _08049A2E
_08049A48:
	cmp r3, #0
	bne _08049A56
	ldr r0, _08049A64
	movs r1, #6
	movs r2, #6
	bl DmaTransferObjPalette
_08049A56:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08049A5C: .4byte 0x0203F91B
_08049A60: .4byte 0x0203F8FC
_08049A64: .4byte 0x083FD854


	.thumb
sub_8049A68: @ 0x08049A68
	push {r4, lr}
	ldr r4, _08049A8C
	adds r2, r0, #0
	adds r2, #0x64
	ldrb r3, [r2]
	lsls r3, r3, #3
	adds r3, r3, r4
	ldr r2, _08049A90
	ldrb r2, [r2]
	ldr r3, [r3]
	lsls r2, r2, #4
	adds r2, r2, r3
	ldr r2, [r2]
	bl _call_via_r2
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08049A8C: .4byte 0x080B19E0
_08049A90: .4byte 0x0203F8D5

	.thumb
sub_8049A94: @ 0x08049A94
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	adds r7, r1, #0
	adds r1, #0x48
	ldrb r0, [r1]
	cmp r0, #0
	beq _08049AB6
	movs r0, #0
	strb r0, [r1]
	ldr r1, _08049ACC
	ldrb r0, [r1]
	cmp r0, #0
	beq _08049AB6
	subs r0, #1
	strb r0, [r1]
_08049AB6:
	adds r0, r6, #0
	adds r0, #0x65
	ldrb r1, [r0]
	mov r8, r0
	cmp r1, #1
	beq _08049ADE
	cmp r1, #1
	bgt _08049AD0
	cmp r1, #0
	beq _08049AE4
	b _08049CCC
	.align 2, 0
_08049ACC: .4byte 0x0203DFE4
_08049AD0:
	cmp r1, #9
	bne _08049AD6
	b _08049C98
_08049AD6:
	cmp r1, #0xf
	beq _08049ADC
	b _08049CCC
_08049ADC:
	b _08049CD0
_08049ADE:
	movs r0, #0
	mov r1, r8
	strb r0, [r1]
_08049AE4:
	adds r0, r6, #0
	movs r1, #0
	movs r2, #1
	movs r3, #1
	bl sub_08049574
	cmp r0, #0
	bne _08049AF6
	b _08049CD0
_08049AF6:
	ldr r0, _08049B10
	ldrb r0, [r0]
	cmp r0, #0
	beq _08049BC4
	ldr r0, _08049B14
	ldr r0, [r0]
	cmp r0, #1
	beq _08049B48
	cmp r0, #1
	bgt _08049B18
	cmp r0, #0
	beq _08049B1E
	b _08049BB8
	.align 2, 0
_08049B10: .4byte 0x0203F8BD
_08049B14: .4byte 0x02001104
_08049B18:
	cmp r0, #2
	beq _08049B70
	b _08049BB8
_08049B1E:
	movs r0, #0x2e
	bl init_function
	adds r0, r7, #0
	adds r0, #0xa0
	ldr r1, _08049B44
	adds r4, r6, #0
	adds r4, #0x64
	ldrb r2, [r4]
	lsrs r2, r2, #4
	lsls r2, r2, #2
	adds r2, r2, r1
	ldrh r1, [r2]
	ldrb r3, [r2, #2]
	movs r2, #0
	bl sub_8003368
	b _08049BE0
	.align 2, 0
_08049B44: .4byte 0x080B1240
_08049B48:
	movs r0, #0x2c
	bl init_function
	adds r0, r7, #0
	adds r0, #0xa0
	ldr r1, _08049B6C
	adds r4, r6, #0
	adds r4, #0x64
	ldrb r2, [r4]
	lsrs r2, r2, #4
	lsls r2, r2, #2
	adds r2, r2, r1
	ldrh r1, [r2]
	ldrb r3, [r2, #2]
	movs r2, #0
	bl sub_8003368
	b _08049BE0
	.align 2, 0
_08049B6C: .4byte 0x080B1240
_08049B70:
	adds r0, r7, #0
	adds r0, #0x46
	movs r3, #0
	ldrsh r0, [r0, r3]
	cmp r0, #0xc
	bne _08049BA4
	movs r0, #0x30
	bl init_function
	adds r0, r7, #0
	adds r0, #0xa0
	ldr r1, _08049BA0
	adds r4, r6, #0
	adds r4, #0x64
	ldrb r2, [r4]
	lsrs r2, r2, #4
	lsls r2, r2, #2
	adds r2, r2, r1
	ldrh r1, [r2]
	ldrb r3, [r2, #2]
	movs r2, #0
	bl sub_8003368
	b _08049BE0
	.align 2, 0
_08049BA0: .4byte 0x080B1240
_08049BA4:
	movs r0, #0x31
	bl init_function
	adds r0, r7, #0
	adds r0, #0xa0
	ldr r1, _08049BC0
	movs r2, #0
	movs r3, #0
	bl sub_8003368
_08049BB8:
	adds r5, r6, #0
	adds r5, #0x64
	b _08049BE2
	.align 2, 0
_08049BC0: .4byte 0x0000031E
_08049BC4:
	ldr r0, _08049C70
	adds r4, r6, #0
	adds r4, #0x64
	ldrb r1, [r4]
	lsls r1, r1, #3
	adds r1, r1, r0
	ldr r0, _08049C74
	ldrb r0, [r0]
	ldr r1, [r1]
	lsls r0, r0, #4
	adds r0, r0, r1
	ldrb r0, [r0, #4]
	bl init_function
_08049BE0:
	adds r5, r4, #0
_08049BE2:
	movs r0, #9
	movs r4, #0
	mov r1, r8
	strb r0, [r1]
	adds r0, r7, #0
	adds r0, #0x94
	bl sub_80494FC
	bl sub_8048E0C
	adds r1, r0, #0
	adds r0, r6, #0
	bl sub_8049038
	ldr r0, [r6, #0x2c]
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_8003884
	ldr r0, _08049C70
	ldrb r1, [r5]
	lsls r1, r1, #3
	adds r1, r1, r0
	ldr r0, _08049C74
	ldrb r0, [r0]
	ldr r1, [r1]
	lsls r0, r0, #4
	adds r0, r0, r1
	ldrh r1, [r0, #8]
	adds r0, r6, #0
	adds r0, #0x5e
	strh r1, [r0]
	ldr r1, _08049C78
	movs r0, #1
	strb r0, [r1]
	bl sub_800EECC
	ldr r0, _08049C7C
	str r4, [r0]
	ldr r1, _08049C80
	ldrb r0, [r1]
	cmp r0, #0
	beq _08049CD0
	movs r0, #0
	strb r0, [r1]
	ldr r0, _08049C84
	ldrb r0, [r0]
	cmp r0, #0
	beq _08049CD0
	ldr r2, _08049C88
	movs r3, #0xb7
	lsls r3, r3, #3
	adds r0, r2, r3
	ldrh r0, [r0]
	ldr r3, _08049C8C
	ldr r4, _08049C90
	adds r1, r2, r4
	ldrb r3, [r3]
	adds r1, r1, r3
	ldrb r1, [r1]
	ldr r3, _08049C94
	adds r2, r2, r3
	ldr r2, [r2]
	movs r4, #0x80
	lsls r4, r4, #9
	adds r2, r2, r4
	bl audio_new_fx
	b _08049CD0
	.align 2, 0
_08049C70: .4byte 0x080B19E0
_08049C74: .4byte 0x0203F8D5
_08049C78: .4byte 0x03006EF3
_08049C7C: .4byte 0x0203F8B8
_08049C80: .4byte 0x0203F8D9
_08049C84: .4byte gCanPlaySfx
_08049C88: .4byte 0x080CE440
_08049C8C: .4byte gSfxVolume
_08049C90: .4byte 0x000005BA
_08049C94: .4byte 0x000005BC
_08049C98:
	ldr r0, _08049CC4
	ldrb r0, [r0]
	cmp r0, #0
	bne _08049CD0
	adds r1, r7, #0
	adds r1, #0x48
	ldrb r0, [r1]
	cmp r0, #0
	bne _08049CB6
	movs r0, #1
	strb r0, [r1]
	ldr r1, _08049CC8
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
_08049CB6:
	adds r0, r6, #0
	movs r1, #1
	bl sub_8047A08
	bl sub_8047BEC
	b _08049CD0
	.align 2, 0
_08049CC4: .4byte byte_203F99E
_08049CC8: .4byte 0x0203DFE4
_08049CCC:
	.2byte 0xEE00, 0xEE00
_08049CD0:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	.thumb
sub_8049CDC: @ 0x08049CDC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x18
	adds r7, r0, #0
	mov r8, r1
	adds r0, #0x65
	ldrb r0, [r0]
	cmp r0, #0xe
	bls _08049CF4
	b _0804A230
_08049CF4:
	lsls r0, r0, #2
	ldr r1, _08049D00
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08049D00: .4byte 0x08049D04
_08049D04: @ jump table
	.4byte _08049D4A @ case 0
	.4byte _08049D94 @ case 1
	.4byte _0804A234 @ case 2
	.4byte _0804A230 @ case 3
	.4byte _08049FBC @ case 4
	.4byte _0804A230 @ case 5
	.4byte _0804A230 @ case 6
	.4byte _08049EDA @ case 7
	.4byte _0804A230 @ case 8
	.4byte _0804A230 @ case 9
	.4byte _0804A230 @ case 10
	.4byte _0804A230 @ case 11
	.4byte _0804A230 @ case 12
	.4byte _0804A230 @ case 13
	.4byte _08049D40 @ case 14
_08049D40:
	adds r0, r7, #0
	movs r1, #1
	bl sub_8047A08
	b _0804A234
_08049D4A:
	adds r0, r7, #0
	movs r1, #0
	movs r2, #1
	movs r3, #1
	bl sub_08049574
	cmp r0, #0
	bne _08049D5C
	b _0804A234
_08049D5C:
	movs r5, #1
	adds r0, r7, #0
	adds r0, #0x65
	movs r4, #0
	strb r5, [r0]
	mov r0, r8
	adds r0, #0xa0
	ldr r2, _08049D88
	ldrh r1, [r2, #4]
	ldrb r3, [r2, #6]
	movs r2, #0
	bl sub_8003368
	ldr r0, _08049D8C
	str r4, [r0]
	ldr r1, _08049D90
	ldrb r0, [r1]
	cmp r0, #0
	beq _08049D84
	b _0804A234
_08049D84:
	strb r5, [r1]
	b _08049E82
	.align 2, 0
_08049D88: .4byte 0x080B1250
_08049D8C: .4byte 0x0203F8B8
_08049D90: .4byte 0x0203F8D9
_08049D94:
	adds r1, r7, #0
	adds r1, #0x5e
	ldrh r0, [r1]
	adds r4, r0, #0
	cmp r4, #0
	beq _08049DA2
	b _08049ED4
_08049DA2:
	ldr r1, _08049E34
	adds r0, r7, #0
	movs r2, #0
	bl sub_8049008
	adds r0, r7, #0
	adds r0, #0x69
	strb r4, [r0]
	mov r0, r8
	adds r0, #0x94
	bl sub_80494FC
	adds r4, r0, #0
	bl sub_8048E0C
	adds r1, r0, #0
	adds r0, r7, #0
	bl sub_8049038
	movs r0, #4
	adds r1, r7, #0
	adds r1, #0x65
	strb r0, [r1]
	mov r0, r8
	adds r0, #0xa0
	ldr r2, _08049E38
	ldrh r1, [r2, #0x10]
	ldrb r3, [r2, #0x12]
	movs r2, #0
	bl sub_8003368
	ldr r0, [r7, #0x2c]
	ldr r3, _08049E3C
	adds r1, r7, #0
	adds r1, #0x64
	ldrb r2, [r1]
	lsls r2, r2, #3
	adds r2, r2, r3
	ldr r1, _08049E40
	ldrb r1, [r1]
	ldr r2, [r2]
	lsls r1, r1, #4
	adds r1, r1, r2
	ldr r1, [r1, #0xc]
	adds r2, r4, #0
	movs r3, #0
	bl sub_8003884
	ldr r0, _08049E44
	ldrb r0, [r0]
	cmp r0, #0
	beq _08049E58
	ldr r2, _08049E48
	movs r1, #0x85
	lsls r1, r1, #3
	adds r0, r2, r1
	ldrh r0, [r0]
	ldr r3, _08049E4C
	ldr r4, _08049E50
	adds r1, r2, r4
	ldrb r3, [r3]
	adds r1, r1, r3
	ldrb r1, [r1]
	ldr r3, _08049E54
	adds r2, r2, r3
	ldr r2, [r2]
	movs r4, #0x80
	lsls r4, r4, #9
	adds r2, r2, r4
	bl audio_new_fx
	b _08049E5C
	.align 2, 0
_08049E34: .4byte gPlayerShadowPos
_08049E38: .4byte 0x080B1250
_08049E3C: .4byte 0x080B19E0
_08049E40: .4byte 0x0203F8D5
_08049E44: .4byte gCanPlaySfx
_08049E48: .4byte 0x080CE440
_08049E4C: .4byte gSfxVolume
_08049E50: .4byte 0x0000042A
_08049E54: .4byte 0x0000042C
_08049E58:
	movs r0, #1
	rsbs r0, r0, #0
_08049E5C:
	str r0, [r7, #0x58]
	ldr r1, _08049EB4
	ldrb r0, [r1]
	cmp r0, #0
	bne _08049E6A
	.2byte 0xEE00, 0xEE00
_08049E6A:
	subs r0, #1
	strb r0, [r1]
	ldr r1, _08049EB8
	movs r0, #0
	str r0, [r1]
	ldr r1, _08049EBC
	ldrb r0, [r1]
	cmp r0, #0
	beq _08049E7E
	b _0804A234
_08049E7E:
	movs r0, #1
	strb r0, [r1]
_08049E82:
	ldr r0, _08049EC0
	ldrb r0, [r0]
	cmp r0, #0
	bne _08049E8C
	b _0804A234
_08049E8C:
	ldr r2, _08049EC4
	movs r1, #0xb6
	lsls r1, r1, #3
	adds r0, r2, r1
	ldrh r0, [r0]
	ldr r3, _08049EC8
	ldr r4, _08049ECC
	adds r1, r2, r4
	ldrb r3, [r3]
	adds r1, r1, r3
	ldrb r1, [r1]
	ldr r3, _08049ED0
	adds r2, r2, r3
	ldr r2, [r2]
	movs r4, #0x80
	lsls r4, r4, #9
	adds r2, r2, r4
	bl audio_new_fx
	b _0804A234
	.align 2, 0
_08049EB4: .4byte 0x0203F8D4
_08049EB8: .4byte 0x0203F8B8
_08049EBC: .4byte 0x0203F8D9
_08049EC0: .4byte gCanPlaySfx
_08049EC4: .4byte 0x080CE440
_08049EC8: .4byte gSfxVolume
_08049ECC: .4byte 0x000005B2
_08049ED0: .4byte 0x000005B4
_08049ED4:
	subs r0, #1
	strh r0, [r1]
	b _0804A234
_08049EDA:
	ldr r0, [r7, #0x2c]
	add r1, sp, #0xc
	add r2, sp, #0x10
	add r3, sp, #0x14
	bl sub_80038C4
	ldr r0, [r7, #0x2c]
	bl sub_80038AC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08049EF4
	b _0804A234
_08049EF4:
	mov r1, r8
	adds r1, #0x94
	adds r0, r7, #0
	movs r2, #0
	bl sub_8049008
	adds r1, r7, #0
	adds r1, #0x69
	movs r0, #1
	strb r0, [r1]
	movs r0, #0x87
	movs r1, #0xe1
	bl RandomMinMax
	ldr r1, _08049F90
	lsls r0, r0, #0x10
	ldr r4, [r1]
	adds r4, r4, r0
	adds r0, r4, #0
	bl sub_8048E0C
	adds r1, r0, #0
	adds r0, r7, #0
	bl sub_8049038
	movs r0, #4
	adds r1, r7, #0
	adds r1, #0x65
	strb r0, [r1]
	mov r0, r8
	adds r0, #0xa0
	ldr r2, _08049F94
	ldrh r1, [r2, #0x10]
	ldrb r3, [r2, #0x12]
	movs r2, #0
	bl sub_8003368
	ldr r0, [r7, #0x2c]
	ldr r3, _08049F98
	adds r1, r7, #0
	adds r1, #0x64
	ldrb r2, [r1]
	lsls r2, r2, #3
	adds r2, r2, r3
	ldr r1, _08049F9C
	ldrb r1, [r1]
	ldr r2, [r2]
	lsls r1, r1, #4
	adds r1, r1, r2
	ldr r1, [r1, #0xc]
	adds r2, r4, #0
	movs r3, #0
	bl sub_8003884
	ldr r0, _08049FA0
	ldrb r0, [r0]
	cmp r0, #0
	beq _08049FB4
	ldr r2, _08049FA4
	movs r1, #0x85
	lsls r1, r1, #3
	adds r0, r2, r1
	ldrh r0, [r0]
	ldr r3, _08049FA8
	ldr r4, _08049FAC
	adds r1, r2, r4
	ldrb r3, [r3]
	adds r1, r1, r3
	ldrb r1, [r1]
	ldr r3, _08049FB0
	adds r2, r2, r3
	ldr r2, [r2]
	movs r4, #0x80
	lsls r4, r4, #9
	adds r2, r2, r4
	bl audio_new_fx
	b _08049FB8
	.align 2, 0
_08049F90: .4byte 0x0203F8D0
_08049F94: .4byte 0x080B1250
_08049F98: .4byte 0x080B19E0
_08049F9C: .4byte 0x0203F8D5
_08049FA0: .4byte gCanPlaySfx
_08049FA4: .4byte 0x080CE440
_08049FA8: .4byte gSfxVolume
_08049FAC: .4byte 0x0000042A
_08049FB0: .4byte 0x0000042C
_08049FB4:
	movs r0, #1
	rsbs r0, r0, #0
_08049FB8:
	str r0, [r7, #0x58]
	b _0804A234
_08049FBC:
	ldr r0, [r7, #0x2c]
	add r1, sp, #0xc
	add r2, sp, #0x10
	add r3, sp, #0x14
	bl sub_80038C4
	mov r6, r8
	adds r6, #0x94
	ldr r0, [r6]
	ldr r1, [sp, #0xc]
	adds r0, r0, r1
	str r0, [sp]
	mov r5, r8
	adds r5, #0x98
	ldr r0, [r5]
	str r0, [sp, #4]
	mov r4, r8
	adds r4, #0x9c
	ldr r0, [r4]
	ldr r1, [sp, #0x14]
	adds r0, r0, r1
	str r0, [sp, #8]
	adds r0, r7, #0
	mov r1, sp
	movs r2, #1
	bl sub_080491DC
	mov sb, r0
	ldr r0, [r7, #0x2c]
	bl sub_80038AC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0804A02C
	ldr r1, [sp]
	ldr r0, [r6]
	cmp r1, r0
	bne _0804A02C
	ldr r1, [sp, #8]
	ldr r0, [r4]
	cmp r1, r0
	bne _0804A02C
	ldr r1, _0804A028
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #3
	bls _0804A032
	movs r0, #1
	mov sb, r0
	b _0804A02E
	.align 2, 0
_0804A028: .4byte 0x0203F8D8
_0804A02C:
	ldr r1, _0804A068
_0804A02E:
	movs r0, #0
	strb r0, [r1]
_0804A032:
	mov r1, sb
	cmp r1, #0
	beq _0804A078
	ldr r3, _0804A06C
	ldr r1, [r7, #0x2c]
	ldr r0, _0804A070
	ldr r2, [r0]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r2
	ldr r0, [r0, #0x24]
	str r0, [r3]
	movs r0, #7
	adds r1, r7, #0
	adds r1, #0x65
	strb r0, [r1]
	mov r0, r8
	adds r0, #0xa0
	ldr r2, _0804A074
	ldrh r1, [r2, #0x1c]
	ldrb r3, [r2, #0x1e]
	movs r2, #0
	bl sub_8003368
	b _0804A1D2
	.align 2, 0
_0804A068: .4byte 0x0203F8D8
_0804A06C: .4byte 0x0203F8D0
_0804A070: .4byte dword_200032C
_0804A074: .4byte 0x080B1250
_0804A078:
	ldr r0, _0804A0D4
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804A082
	b _0804A1EC
_0804A082:
	adds r0, r7, #0
	adds r0, #0x69
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804A08E
	b _0804A1EC
_0804A08E:
	movs r0, #1
	adds r1, r7, #0
	adds r1, #0x65
	strb r0, [r1]
	ldr r0, _0804A0D8
	ldrb r0, [r0]
	cmp r0, #0
	beq _0804A0A0
	b _0804A1A4
_0804A0A0:
	ldr r0, _0804A0DC
	ldrb r0, [r0]
	cmp r0, #0
	beq _0804A0EC
	ldr r2, _0804A0E0
	movs r3, #0x9e
	lsls r3, r3, #2
	adds r0, r2, r3
	ldrh r0, [r0]
	ldr r3, _0804A0E4
	ldr r4, _0804A0E8
	adds r1, r2, r4
	ldrb r3, [r3]
	adds r1, r1, r3
	ldrb r1, [r1]
	movs r3, #0x9f
	lsls r3, r3, #2
	adds r2, r2, r3
	ldr r2, [r2]
	movs r4, #0x80
	lsls r4, r4, #9
	adds r2, r2, r4
	bl audio_new_fx
	b _0804A0F0
	.align 2, 0
_0804A0D4: .4byte 0x0203F8DC
_0804A0D8: .4byte 0x0203F8D4
_0804A0DC: .4byte gCanPlaySfx
_0804A0E0: .4byte 0x080CE440
_0804A0E4: .4byte gSfxVolume
_0804A0E8: .4byte 0x0000027A
_0804A0EC:
	movs r0, #1
	rsbs r0, r0, #0
_0804A0F0:
	str r0, [r7, #0x58]
	mov r0, r8
	adds r0, #0xa0
	ldr r1, _0804A174
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r5, _0804A178
	ldr r4, _0804A17C
	adds r3, r7, #0
	adds r3, #0x64
	ldrb r1, [r3]
	lsls r1, r1, #3
	adds r1, r1, r4
	ldr r2, _0804A180
	ldrb r0, [r2]
	ldr r1, [r1]
	lsls r0, r0, #4
	adds r0, r0, r1
	ldrb r0, [r0, #4]
	strb r0, [r5]
	ldrb r0, [r3]
	lsls r0, r0, #3
	adds r0, r0, r4
	ldrb r1, [r2]
	ldr r0, [r0]
	lsls r1, r1, #4
	adds r1, r1, r0
	ldrb r0, [r1, #0xa]
	adds r1, r7, #0
	adds r1, #0x5e
	strh r0, [r1]
	ldr r1, _0804A184
	ldr r0, _0804A188
	str r0, [r1]
	ldr r1, _0804A18C
	ldrb r0, [r1]
	cmp r0, #0
	beq _0804A1D2
	movs r0, #0
	strb r0, [r1]
	ldr r0, _0804A190
	ldrb r0, [r0]
	cmp r0, #0
	beq _0804A1D2
	ldr r2, _0804A194
	movs r1, #0xb7
	lsls r1, r1, #3
	adds r0, r2, r1
	ldrh r0, [r0]
	ldr r3, _0804A198
	ldr r4, _0804A19C
	adds r1, r2, r4
	ldrb r3, [r3]
	adds r1, r1, r3
	ldrb r1, [r1]
	ldr r3, _0804A1A0
	adds r2, r2, r3
	ldr r2, [r2]
	movs r4, #0x80
	lsls r4, r4, #9
	adds r2, r2, r4
	bl audio_new_fx
	b _0804A1D2
	.align 2, 0
_0804A174: .4byte 0x000002ED
_0804A178: .4byte 0x0203F8D4
_0804A17C: .4byte 0x080B19E0
_0804A180: .4byte 0x0203F8D5
_0804A184: .4byte 0x0203F8B8
_0804A188: .4byte 0x00001FFF
_0804A18C: .4byte 0x0203F8D9
_0804A190: .4byte gCanPlaySfx
_0804A194: .4byte 0x080CE440
_0804A198: .4byte gSfxVolume
_0804A19C: .4byte 0x000005BA
_0804A1A0: .4byte 0x000005BC
_0804A1A4:
	mov r0, r8
	adds r0, #0xa0
	ldr r2, _0804A1E0
	ldrh r1, [r2, #4]
	ldrb r3, [r2, #6]
	movs r2, #0
	bl sub_8003368
	ldr r2, _0804A1E4
	adds r0, r7, #0
	adds r0, #0x64
	ldrb r1, [r0]
	lsls r1, r1, #3
	adds r1, r1, r2
	ldr r0, _0804A1E8
	ldrb r0, [r0]
	ldr r1, [r1]
	lsls r0, r0, #4
	adds r0, r0, r1
	ldrh r0, [r0, #8]
	adds r1, r7, #0
	adds r1, #0x5e
	strh r0, [r1]
_0804A1D2:
	ldr r0, [r7, #0x2c]
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_8003884
	b _0804A234
	.align 2, 0
_0804A1E0: .4byte 0x080B1250
_0804A1E4: .4byte 0x080B19E0
_0804A1E8: .4byte 0x0203F8D5
_0804A1EC:
	ldr r0, [sp]
	str r0, [r6]
	ldr r2, [sp, #4]
	str r2, [r5]
	ldr r1, [sp, #8]
	str r1, [r4]
	asrs r0, r0, #0x10
	mov r3, r8
	strh r0, [r3, #2]
	ldr r0, _0804A22C
	adds r1, r1, r2
	asrs r1, r1, #0x10
	ldrh r0, [r0]
	subs r0, r0, r1
	strh r0, [r3, #4]
	adds r0, r7, #0
	movs r1, #2
	movs r2, #0
	bl sub_08047958
	adds r1, r7, #4
	adds r0, r7, #0
	movs r2, #0xf
	bl sub_8049748
	cmp r0, #0
	beq _0804A234
	adds r1, r7, #0
	adds r1, #0x69
	movs r0, #1
	strb r0, [r1]
	b _0804A234
	.align 2, 0
_0804A22C: .4byte gMapPixelSizeY
_0804A230:
	.2byte 0xEE00, 0xEE00
_0804A234:
	add sp, #0x18
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	.thumb
sub_804A244: @ 0x0804A244
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x18
	adds r7, r0, #0
	mov r8, r1
	adds r0, #0x65
	ldrb r0, [r0]
	cmp r0, #0xe
	bls _0804A25C
	b _0804A998
_0804A25C:
	lsls r0, r0, #2
	ldr r1, _0804A268
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0804A268: .4byte 0x0804A26C
_0804A26C: @ jump table
	.4byte _0804A2B2 @ case 0
	.4byte _0804A334 @ case 1
	.4byte _0804A998 @ case 2
	.4byte _0804A3D4 @ case 3
	.4byte _0804A5CC @ case 4
	.4byte _0804A998 @ case 5
	.4byte _0804A998 @ case 6
	.4byte _0804A998 @ case 7
	.4byte _0804A998 @ case 8
	.4byte _0804A998 @ case 9
	.4byte _0804A998 @ case 10
	.4byte _0804A998 @ case 11
	.4byte _0804A46E @ case 12
	.4byte _0804A770 @ case 13
	.4byte _0804A2A8 @ case 14
_0804A2A8:
	adds r0, r7, #0
	movs r1, #1
	bl sub_8047A08
	b _0804A99C
_0804A2B2:
	adds r0, r7, #0
	movs r1, #0
	movs r2, #1
	movs r3, #1
	bl sub_08049574
	cmp r0, #0
	bne _0804A2C4
	b _0804A99C
_0804A2C4:
	movs r5, #1
	adds r0, r7, #0
	adds r0, #0x65
	movs r4, #0
	strb r5, [r0]
	mov r0, r8
	adds r0, #0xa0
	ldr r2, _0804A314
	ldrh r1, [r2, #4]
	ldrb r3, [r2, #6]
	movs r2, #0
	bl sub_8003368
	ldr r0, _0804A318
	str r4, [r0]
	ldr r1, _0804A31C
	ldrb r0, [r1]
	cmp r0, #0
	beq _0804A2EC
	b _0804A99C
_0804A2EC:
	strb r5, [r1]
	ldr r0, _0804A320
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804A2F8
	b _0804A99C
_0804A2F8:
	ldr r2, _0804A324
	movs r1, #0xb6
	lsls r1, r1, #3
	adds r0, r2, r1
	ldrh r0, [r0]
	ldr r3, _0804A328
	ldr r4, _0804A32C
	adds r1, r2, r4
	ldrb r3, [r3]
	adds r1, r1, r3
	ldrb r1, [r1]
	ldr r6, _0804A330
	b _0804A43A
	.align 2, 0
_0804A314: .4byte 0x080B12D0
_0804A318: .4byte 0x0203F8B8
_0804A31C: .4byte 0x0203F8D9
_0804A320: .4byte gCanPlaySfx
_0804A324: .4byte 0x080CE440
_0804A328: .4byte gSfxVolume
_0804A32C: .4byte 0x000005B2
_0804A330: .4byte 0x000005B4
_0804A334:
	adds r1, r7, #0
	adds r1, #0x5e
	ldrh r0, [r1]
	adds r4, r0, #0
	adds r5, r1, #0
	cmp r4, #0
	beq _0804A344
	b _0804A468
_0804A344:
	movs r1, #3
	adds r0, r7, #0
	adds r0, #0x65
	strb r1, [r0]
	mov r0, r8
	adds r0, #0xa0
	ldr r2, _0804A3B0
	ldrh r1, [r2, #0xc]
	ldrb r3, [r2, #0xe]
	movs r2, #0
	bl sub_8003368
	ldr r1, _0804A3B4
	ldrb r0, [r1]
	cmp r0, #0
	bne _0804A368
	.2byte 0xEE00, 0xEE00
_0804A368:
	subs r0, #1
	strb r0, [r1]
	ldr r0, _0804A3B8
	str r4, [r0]
	ldr r1, _0804A3BC
	ldrb r0, [r1]
	cmp r0, #0
	bne _0804A3AA
	movs r0, #1
	strb r0, [r1]
	ldr r0, _0804A3C0
	ldrb r0, [r0]
	cmp r0, #0
	beq _0804A3AA
	ldr r2, _0804A3C4
	movs r4, #0xb6
	lsls r4, r4, #3
	adds r0, r2, r4
	ldrh r0, [r0]
	ldr r3, _0804A3C8
	ldr r6, _0804A3CC
	adds r1, r2, r6
	ldrb r3, [r3]
	adds r1, r1, r3
	ldrb r1, [r1]
	ldr r3, _0804A3D0
	adds r2, r2, r3
	ldr r2, [r2]
	movs r4, #0x80
	lsls r4, r4, #9
	adds r2, r2, r4
	bl audio_new_fx
_0804A3AA:
	movs r0, #0x2a
	strh r0, [r5]
	b _0804A99C
	.align 2, 0
_0804A3B0: .4byte 0x080B12D0
_0804A3B4: .4byte 0x0203F8D4
_0804A3B8: .4byte 0x0203F8B8
_0804A3BC: .4byte 0x0203F8D9
_0804A3C0: .4byte gCanPlaySfx
_0804A3C4: .4byte 0x080CE440
_0804A3C8: .4byte gSfxVolume
_0804A3CC: .4byte 0x000005B2
_0804A3D0: .4byte 0x000005B4
_0804A3D4:
	adds r1, r7, #0
	adds r1, #0x5e
	ldrh r0, [r1]
	adds r4, r0, #0
	cmp r4, #0
	bne _0804A468
	movs r0, #0xc
	adds r1, #7
	strb r0, [r1]
	mov r0, r8
	adds r0, #0xa0
	ldr r1, _0804A44C
	adds r2, r1, #0
	adds r2, #0x30
	ldrh r1, [r1, #0x30]
	ldrb r3, [r2, #2]
	movs r2, #0
	bl sub_8003368
	ldr r0, [r7, #0x2c]
	movs r1, #0xa0
	lsls r1, r1, #0xa
	movs r2, #0
	bl CallARM_store_jump_and_other_value
	ldr r0, _0804A450
	str r4, [r0]
	ldr r1, _0804A454
	ldrb r0, [r1]
	cmp r0, #0
	beq _0804A414
	b _0804A99C
_0804A414:
	movs r0, #1
	strb r0, [r1]
	ldr r0, _0804A458
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804A422
	b _0804A99C
_0804A422:
	ldr r2, _0804A45C
	movs r6, #0xb6
	lsls r6, r6, #3
	adds r0, r2, r6
	ldrh r0, [r0]
	ldr r3, _0804A460
	ldr r4, _0804A464
	adds r1, r2, r4
	ldrb r3, [r3]
	adds r1, r1, r3
	ldrb r1, [r1]
	adds r6, #4
_0804A43A:
	adds r2, r2, r6
	ldr r2, [r2]
	movs r3, #0x80
	lsls r3, r3, #9
	adds r2, r2, r3
	bl audio_new_fx
	b _0804A99C
	.align 2, 0
_0804A44C: .4byte 0x080B12D0
_0804A450: .4byte 0x0203F8B8
_0804A454: .4byte 0x0203F8D9
_0804A458: .4byte gCanPlaySfx
_0804A45C: .4byte 0x080CE440
_0804A460: .4byte gSfxVolume
_0804A464: .4byte 0x000005B2
_0804A468:
	subs r0, #1
	strh r0, [r1]
	b _0804A99C
_0804A46E:
	ldr r0, [r7, #0x58]
	bl audio_fx_still_active
	cmp r0, #0
	bne _0804A4C2
	ldr r0, _0804A4A8
	ldrb r0, [r0]
	cmp r0, #0
	beq _0804A4BC
	ldr r2, _0804A4AC
	movs r4, #0xb3
	lsls r4, r4, #3
	adds r0, r2, r4
	ldrh r0, [r0]
	ldr r3, _0804A4B0
	ldr r6, _0804A4B4
	adds r1, r2, r6
	ldrb r3, [r3]
	adds r1, r1, r3
	ldrb r1, [r1]
	ldr r3, _0804A4B8
	adds r2, r2, r3
	ldr r2, [r2]
	movs r4, #0x80
	lsls r4, r4, #9
	adds r2, r2, r4
	bl audio_new_fx
	b _0804A4C0
	.align 2, 0
_0804A4A8: .4byte gCanPlaySfx
_0804A4AC: .4byte 0x080CE440
_0804A4B0: .4byte gSfxVolume
_0804A4B4: .4byte 0x0000059A
_0804A4B8: .4byte 0x0000059C
_0804A4BC:
	movs r0, #1
	rsbs r0, r0, #0
_0804A4C0:
	str r0, [r7, #0x58]
_0804A4C2:
	ldr r0, [r7, #0x2c]
	add r1, sp, #0xc
	add r2, sp, #0x10
	add r3, sp, #0x14
	bl sub_80038C4
	ldr r0, [r7, #0x54]
	ldr r1, [sp, #0x10]
	adds r0, r0, r1
	str r0, [r7, #0x54]
	asrs r0, r0, #0x10
	mov r6, r8
	strb r0, [r6, #9]
	mov r0, r8
	adds r0, #0x94
	movs r1, #2
	ldrsh r0, [r0, r1]
	strh r0, [r6, #2]
	ldr r3, _0804A518
	mov r0, r8
	adds r0, #0x9c
	mov r2, r8
	adds r2, #0x98
	ldr r1, [r0]
	ldr r0, [r2]
	adds r1, r1, r0
	asrs r1, r1, #0x10
	ldrh r0, [r3]
	subs r0, r0, r1
	strh r0, [r6, #4]
	mov r3, r8
	adds r3, #0xbc
	ldrb r2, [r6, #9]
	ldr r0, _0804A51C
	ldr r1, [r0]
	cmp r2, r1
	blt _0804A524
	ldr r0, _0804A520
	subs r1, #1
	adds r1, r1, r0
	ldrb r0, [r1]
	b _0804A52A
	.align 2, 0
_0804A518: .4byte gMapPixelSizeY
_0804A51C: .4byte 0x080CEBC4
_0804A520: .4byte 0x080CEB84
_0804A524:
	ldr r0, _0804A5B4
	adds r0, r2, r0
	ldrb r0, [r0]
_0804A52A:
	asrs r1, r0, #1
	adds r0, r3, #0
	bl sub_80037F4
	adds r0, r7, #0
	movs r1, #2
	movs r2, #0
	bl sub_08047958
	ldr r1, [r7, #0x54]
	ldr r0, _0804A5B8
	cmp r1, r0
	bgt _0804A546
	b _0804A99C
_0804A546:
	adds r0, #1
	str r0, [r7, #0x54]
	movs r0, #0x78
	mov r3, r8
	strb r0, [r3, #9]
	ldr r0, [r7, #0x2c]
	bl sub_800387C
	movs r0, #4
	adds r1, r7, #0
	adds r1, #0x65
	strb r0, [r1]
	mov r0, r8
	adds r0, #0xa0
	ldr r2, _0804A5BC
	ldrh r1, [r2, #0x10]
	ldrb r3, [r2, #0x12]
	movs r2, #0
	bl sub_8003368
	ldr r0, [r7, #0x2c]
	ldr r6, _0804A5C0
	adds r5, r7, #0
	adds r5, #0x64
	ldrb r2, [r5]
	lsls r2, r2, #3
	adds r2, r2, r6
	ldr r4, _0804A5C4
	ldrb r1, [r4]
	ldr r2, [r2]
	lsls r1, r1, #4
	adds r1, r1, r2
	ldr r1, [r1, #0xc]
	ldr r3, _0804A5C8
	mov r2, r8
	adds r2, #0xaa
	ldrb r2, [r2]
	lsls r2, r2, #2
	adds r2, r2, r3
	ldr r2, [r2]
	movs r3, #0
	bl sub_8003884
	ldrb r0, [r5]
	lsls r0, r0, #3
	adds r0, r0, r6
	ldrb r1, [r4]
	ldr r0, [r0]
	lsls r1, r1, #4
	adds r1, r1, r0
	ldrh r1, [r1, #8]
	adds r0, r7, #0
	adds r0, #0x5e
	strh r1, [r0]
	b _0804A99C
	.align 2, 0
_0804A5B4: .4byte 0x080CEB84
_0804A5B8: .4byte 0x0077FFFF
_0804A5BC: .4byte 0x080B12D0
_0804A5C0: .4byte 0x080B19E0
_0804A5C4: .4byte 0x0203F8D5
_0804A5C8: .4byte dword_80CC290
_0804A5CC:
	ldr r0, [r7, #0x58]
	bl audio_fx_still_active
	cmp r0, #0
	bne _0804A622
	ldr r0, _0804A608
	ldrb r0, [r0]
	cmp r0, #0
	beq _0804A61C
	ldr r2, _0804A60C
	movs r4, #0xb3
	lsls r4, r4, #3
	adds r0, r2, r4
	ldrh r0, [r0]
	ldr r3, _0804A610
	ldr r6, _0804A614
	adds r1, r2, r6
	ldrb r3, [r3]
	adds r1, r1, r3
	ldrb r1, [r1]
	ldr r3, _0804A618
	adds r2, r2, r3
	ldr r2, [r2]
	movs r4, #0x80
	lsls r4, r4, #9
	adds r2, r2, r4
	bl audio_new_fx
	b _0804A620
	.align 2, 0
_0804A608: .4byte gCanPlaySfx
_0804A60C: .4byte 0x080CE440
_0804A610: .4byte gSfxVolume
_0804A614: .4byte 0x0000059A
_0804A618: .4byte 0x0000059C
_0804A61C:
	movs r0, #1
	rsbs r0, r0, #0
_0804A620:
	str r0, [r7, #0x58]
_0804A622:
	ldr r1, _0804A6C8
	adds r0, r7, #0
	movs r2, #0
	bl sub_8049008
	mov r6, r8
	adds r6, #0x98
	ldr r0, [r6]
	str r0, [r7, #8]
	ldr r0, [r7, #0x2c]
	add r1, sp, #0xc
	add r2, sp, #0x10
	add r3, sp, #0x14
	bl sub_80038C4
	movs r0, #0x94
	add r0, r8
	mov sb, r0
	ldr r0, [r0]
	ldr r1, [sp, #0xc]
	adds r0, r0, r1
	str r0, [sp]
	ldr r0, [r6]
	ldr r1, [r7, #0x54]
	adds r0, r0, r1
	str r0, [sp, #4]
	mov r5, r8
	adds r5, #0x9c
	ldr r0, [r5]
	ldr r1, [sp, #0x14]
	adds r0, r0, r1
	str r0, [sp, #8]
	ldr r1, _0804A6CC
	adds r4, r7, #0
	adds r4, #0x65
	ldrb r0, [r4]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrh r1, [r0]
	ldrb r2, [r0, #2]
	adds r0, r7, #0
	movs r3, #0
	bl sub_8049838
	adds r0, r7, #0
	mov r1, sp
	movs r2, #0
	bl sub_080491DC
	cmp r0, #0
	bne _0804A6AE
	ldr r1, [sp]
	mov r3, sb
	str r1, [r3]
	ldr r0, [r7, #0x50]
	str r0, [r6]
	ldr r0, [sp, #8]
	str r0, [r5]
	asrs r1, r1, #0x10
	mov r0, r8
	strh r1, [r0, #2]
	ldr r2, _0804A6D0
	ldr r1, [r5]
	ldr r0, [r6]
	adds r1, r1, r0
	asrs r1, r1, #0x10
	ldrh r0, [r2]
	subs r0, r0, r1
	mov r1, r8
	strh r0, [r1, #4]
_0804A6AE:
	mov r3, r8
	adds r3, #0xbc
	mov r6, r8
	ldrb r2, [r6, #9]
	ldr r0, _0804A6D4
	ldr r1, [r0]
	cmp r2, r1
	blt _0804A6DC
	ldr r0, _0804A6D8
	subs r1, #1
	adds r1, r1, r0
	ldrb r0, [r1]
	b _0804A6E2
	.align 2, 0
_0804A6C8: .4byte gPlayerShadowPos
_0804A6CC: .4byte 0x080B12D0
_0804A6D0: .4byte gMapPixelSizeY
_0804A6D4: .4byte 0x080CEBC4
_0804A6D8: .4byte 0x080CEB84
_0804A6DC:
	ldr r0, _0804A75C
	adds r0, r2, r0
	ldrb r0, [r0]
_0804A6E2:
	asrs r1, r0, #1
	adds r0, r3, #0
	bl sub_80037F4
	adds r0, r7, #0
	movs r1, #2
	movs r2, #0
	bl sub_08047958
	mov r0, r8
	movs r1, #0x17
	movs r2, #0
	bl sub_80496B0
	cmp r0, #0
	bne _0804A704
	b _0804A99C
_0804A704:
	movs r0, #0xd
	strb r0, [r4]
	ldr r0, [r7, #0x58]
	bl audio_fx_still_active
	cmp r0, #0
	beq _0804A720
	ldr r0, _0804A760
	ldrb r0, [r0]
	cmp r0, #0
	beq _0804A720
	ldr r0, [r7, #0x58]
	bl audio_halt_fx
_0804A720:
	mov r0, r8
	adds r0, #0xa0
	ldr r1, _0804A764
	ldrb r2, [r4]
	lsls r2, r2, #2
	adds r2, r2, r1
	ldrh r1, [r2]
	ldrb r3, [r2, #2]
	movs r2, #0
	bl sub_8003368
	ldr r0, [r7, #0x2c]
	ldr r2, _0804A768
	mov r1, r8
	adds r1, #0xaa
	ldrb r1, [r1]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r2, [r1]
	movs r1, #0
	movs r3, #0
	bl sub_8003884
	ldr r0, [r7, #0x2c]
	ldr r1, _0804A76C
	movs r2, #0
	bl CallARM_store_jump_and_other_value
	b _0804A99C
	.align 2, 0
_0804A75C: .4byte 0x080CEB84
_0804A760: .4byte gCanPlaySfx
_0804A764: .4byte 0x080B12D0
_0804A768: .4byte dword_80CC290
_0804A76C: .4byte 0xFFFB0000
_0804A770:
	ldr r0, [r7, #0x2c]
	add r1, sp, #0xc
	add r2, sp, #0x10
	add r3, sp, #0x14
	bl sub_80038C4
	ldr r0, [r7, #0x54]
	ldr r1, [sp, #0x10]
	adds r0, r0, r1
	str r0, [r7, #0x54]
	asrs r0, r0, #0x10
	mov r1, r8
	strb r0, [r1, #9]
	mov r0, r8
	adds r0, #0x94
	movs r3, #2
	ldrsh r0, [r0, r3]
	strh r0, [r1, #2]
	ldr r3, _0804A7C8
	mov r0, r8
	adds r0, #0x9c
	mov r2, r8
	adds r2, #0x98
	ldr r1, [r0]
	ldr r0, [r2]
	adds r1, r1, r0
	asrs r1, r1, #0x10
	ldrh r0, [r3]
	subs r0, r0, r1
	mov r4, r8
	strh r0, [r4, #4]
	mov r3, r8
	adds r3, #0xbc
	ldrb r2, [r4, #9]
	ldr r0, _0804A7CC
	ldr r1, [r0]
	cmp r2, r1
	blt _0804A7D4
	ldr r0, _0804A7D0
	subs r1, #1
	adds r1, r1, r0
	ldrb r0, [r1]
	b _0804A7DA
	.align 2, 0
_0804A7C8: .4byte gMapPixelSizeY
_0804A7CC: .4byte 0x080CEBC4
_0804A7D0: .4byte 0x080CEB84
_0804A7D4:
	ldr r0, _0804A864
	adds r0, r2, r0
	ldrb r0, [r0]
_0804A7DA:
	asrs r1, r0, #1
	adds r0, r3, #0
	bl sub_80037F4
	ldr r0, [r7, #0x54]
	cmp r0, #0
	ble _0804A7EA
	b _0804A988
_0804A7EA:
	movs r5, #0
	str r5, [r7, #0x54]
	mov r6, r8
	strb r5, [r6, #9]
	ldr r4, _0804A868
	ldrb r0, [r4]
	cmp r0, #0
	beq _0804A820
	ldr r2, _0804A86C
	movs r1, #0x88
	lsls r1, r1, #3
	adds r0, r2, r1
	ldrh r0, [r0]
	ldr r3, _0804A870
	ldr r6, _0804A874
	adds r1, r2, r6
	ldrb r3, [r3]
	adds r1, r1, r3
	ldrb r1, [r1]
	ldr r3, _0804A878
	adds r2, r2, r3
	ldr r2, [r2]
	movs r6, #0x80
	lsls r6, r6, #9
	adds r2, r2, r6
	bl audio_new_fx
_0804A820:
	ldr r0, _0804A87C
	ldrb r0, [r0]
	cmp r0, #0
	beq _0804A82A
	b _0804A950
_0804A82A:
	movs r0, #1
	adds r1, r7, #0
	adds r1, #0x65
	strb r0, [r1]
	ldrb r0, [r4]
	cmp r0, #0
	beq _0804A884
	ldr r2, _0804A86C
	movs r1, #0x9e
	lsls r1, r1, #2
	adds r0, r2, r1
	ldrh r0, [r0]
	ldr r3, _0804A870
	ldr r4, _0804A880
	adds r1, r2, r4
	ldrb r3, [r3]
	adds r1, r1, r3
	ldrb r1, [r1]
	movs r6, #0x9f
	lsls r6, r6, #2
	adds r2, r2, r6
	ldr r2, [r2]
	movs r3, #0x80
	lsls r3, r3, #9
	adds r2, r2, r3
	bl audio_new_fx
	b _0804A888
	.align 2, 0
_0804A864: .4byte 0x080CEB84
_0804A868: .4byte gCanPlaySfx
_0804A86C: .4byte 0x080CE440
_0804A870: .4byte gSfxVolume
_0804A874: .4byte 0x00000442
_0804A878: .4byte 0x00000444
_0804A87C: .4byte 0x0203F8D4
_0804A880: .4byte 0x0000027A
_0804A884:
	movs r0, #1
	rsbs r0, r0, #0
_0804A888:
	str r0, [r7, #0x58]
	adds r0, r7, #0
	movs r1, #4
	bl sub_8049038
	mov r0, r8
	adds r0, #0xa0
	ldr r1, _0804A920
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r0, [r7, #0x2c]
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_8003884
	ldr r1, _0804A924
	ldr r0, _0804A928
	str r0, [r1]
	ldr r1, _0804A92C
	ldrb r0, [r1]
	cmp r0, #0
	beq _0804A8EC
	movs r0, #0
	strb r0, [r1]
	ldr r0, _0804A930
	ldrb r0, [r0]
	cmp r0, #0
	beq _0804A8EC
	ldr r2, _0804A934
	movs r4, #0xb7
	lsls r4, r4, #3
	adds r0, r2, r4
	ldrh r0, [r0]
	ldr r3, _0804A938
	ldr r6, _0804A93C
	adds r1, r2, r6
	ldrb r3, [r3]
	adds r1, r1, r3
	ldrb r1, [r1]
	ldr r3, _0804A940
	adds r2, r2, r3
	ldr r2, [r2]
	movs r4, #0x80
	lsls r4, r4, #9
	adds r2, r2, r4
	bl audio_new_fx
_0804A8EC:
	ldr r5, _0804A944
	ldr r4, _0804A948
	adds r3, r7, #0
	adds r3, #0x64
	ldrb r1, [r3]
	lsls r1, r1, #3
	adds r1, r1, r4
	ldr r2, _0804A94C
	ldrb r0, [r2]
	ldr r1, [r1]
	lsls r0, r0, #4
	adds r0, r0, r1
	ldrb r0, [r0, #4]
	strb r0, [r5]
	ldrb r0, [r3]
	lsls r0, r0, #3
	adds r0, r0, r4
	ldrb r1, [r2]
	ldr r0, [r0]
	lsls r1, r1, #4
	adds r1, r1, r0
	ldrb r0, [r1, #0xa]
	adds r1, r7, #0
	adds r1, #0x5e
	strh r0, [r1]
	b _0804A988
	.align 2, 0
_0804A920: .4byte 0x000002ED
_0804A924: .4byte 0x0203F8B8
_0804A928: .4byte 0x00001FFF
_0804A92C: .4byte 0x0203F8D9
_0804A930: .4byte gCanPlaySfx
_0804A934: .4byte 0x080CE440
_0804A938: .4byte gSfxVolume
_0804A93C: .4byte 0x000005BA
_0804A940: .4byte 0x000005BC
_0804A944: .4byte 0x0203F8D4
_0804A948: .4byte 0x080B19E0
_0804A94C: .4byte 0x0203F8D5
_0804A950:
	movs r0, #1
	adds r4, r7, #0
	adds r4, #0x65
	strb r0, [r4]
	adds r0, r7, #0
	movs r1, #4
	bl sub_8049038
	mov r0, r8
	adds r0, #0xa0
	ldr r1, _0804A994
	ldrb r2, [r4]
	lsls r2, r2, #2
	adds r2, r2, r1
	ldrh r1, [r2]
	ldrb r3, [r2, #2]
	movs r2, #0
	bl sub_8003368
	ldr r0, [r7, #0x2c]
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_8003884
	adds r0, r7, #0
	adds r0, #0x5e
	strh r5, [r0]
_0804A988:
	adds r0, r7, #0
	movs r1, #2
	movs r2, #0
	bl sub_08047958
	b _0804A99C
	.align 2, 0
_0804A994: .4byte 0x080B12D0
_0804A998:
	.2byte 0xEE00, 0xEE00
_0804A99C:
	add sp, #0x18
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	.thumb
sub_804A9AC: @ 0x0804A9AC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x18
	adds r5, r0, #0
	adds r6, r1, #0
	adds r0, #0x65
	ldrb r0, [r0]
	cmp r0, #0xe
	bls _0804A9C2
	b _0804AF40
_0804A9C2:
	lsls r0, r0, #2
	ldr r1, _0804A9CC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0804A9CC: .4byte 0x0804A9D0
_0804A9D0: @ jump table
	.4byte _0804AA16 @ case 0
	.4byte _0804AAA4 @ case 1
	.4byte _0804AF40 @ case 2
	.4byte _0804AF40 @ case 3
	.4byte _0804AF40 @ case 4
	.4byte _0804AF40 @ case 5
	.4byte _0804AF40 @ case 6
	.4byte _0804AF40 @ case 7
	.4byte _0804AF40 @ case 8
	.4byte _0804AF40 @ case 9
	.4byte _0804AF40 @ case 10
	.4byte _0804AF40 @ case 11
	.4byte _0804ABA2 @ case 12
	.4byte _0804ACFC @ case 13
	.4byte _0804AA0C @ case 14
_0804AA0C:
	adds r0, r5, #0
	movs r1, #1
	bl sub_8047A08
	b _0804AF44
_0804AA16:
	adds r0, r5, #0
	movs r1, #0
	movs r2, #1
	movs r3, #1
	bl sub_08049574
	cmp r0, #0
	bne _0804AA28
	b _0804AF44
_0804AA28:
	movs r7, #1
	adds r0, r5, #0
	adds r0, #0x65
	movs r4, #0
	strb r7, [r0]
	adds r0, r6, #0
	adds r0, #0xa0
	ldr r2, _0804AA84
	ldrh r1, [r2, #4]
	ldrb r3, [r2, #6]
	movs r2, #0
	bl sub_8003368
	ldr r0, _0804AA88
	str r4, [r0]
	ldr r1, _0804AA8C
	ldrb r0, [r1]
	cmp r0, #0
	beq _0804AA50
	b _0804AF44
_0804AA50:
	strb r7, [r1]
	ldr r0, _0804AA90
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804AA5C
	b _0804AF44
_0804AA5C:
	ldr r2, _0804AA94
	movs r1, #0xb6
	lsls r1, r1, #3
	adds r0, r2, r1
	ldrh r0, [r0]
	ldr r3, _0804AA98
	ldr r4, _0804AA9C
	adds r1, r2, r4
	ldrb r3, [r3]
	adds r1, r1, r3
	ldrb r1, [r1]
	ldr r6, _0804AAA0
	adds r2, r2, r6
	ldr r2, [r2]
	movs r3, #0x80
	lsls r3, r3, #9
	adds r2, r2, r3
	bl audio_new_fx
	b _0804AF44
	.align 2, 0
_0804AA84: .4byte 0x080B12D0
_0804AA88: .4byte 0x0203F8B8
_0804AA8C: .4byte 0x0203F8D9
_0804AA90: .4byte gCanPlaySfx
_0804AA94: .4byte 0x080CE440
_0804AA98: .4byte gSfxVolume
_0804AA9C: .4byte 0x000005B2
_0804AAA0: .4byte 0x000005B4
_0804AAA4:
	adds r1, r5, #0
	adds r1, #0x5e
	ldrh r0, [r1]
	adds r7, r0, #0
	cmp r7, #0
	bne _0804AB9C
	movs r0, #0xc
	adds r1, #7
	strb r0, [r1]
	adds r0, r6, #0
	adds r0, #0xa0
	ldr r1, _0804AB6C
	adds r2, r1, #0
	adds r2, #0x30
	ldrh r1, [r1, #0x30]
	ldrb r3, [r2, #2]
	movs r2, #0
	bl sub_8003368
	ldr r1, _0804AB70
	adds r0, r5, #0
	movs r2, #0
	bl sub_8049008
	adds r0, r6, #0
	adds r0, #0x94
	bl sub_80494FC
	adds r4, r0, #0
	bl sub_8048E0C
	adds r1, r0, #0
	adds r0, r5, #0
	bl sub_8049038
	ldr r0, [r5, #0x2c]
	ldr r3, _0804AB74
	adds r1, r5, #0
	adds r1, #0x64
	ldrb r2, [r1]
	lsls r2, r2, #3
	adds r2, r2, r3
	ldr r1, _0804AB78
	ldrb r1, [r1]
	ldr r2, [r2]
	lsls r1, r1, #4
	adds r1, r1, r2
	ldr r1, [r1, #0xc]
	adds r2, r4, #0
	movs r3, #0
	bl sub_8003884
	ldr r0, [r5, #0x2c]
	movs r1, #0xa0
	lsls r1, r1, #0xb
	movs r2, #0
	bl CallARM_store_jump_and_other_value
	ldr r1, _0804AB7C
	ldrb r0, [r1]
	cmp r0, #0
	bne _0804AB24
	.2byte 0xEE00, 0xEE00
_0804AB24:
	subs r0, #1
	strb r0, [r1]
	ldr r0, _0804AB80
	str r7, [r0]
	ldr r1, _0804AB84
	ldrb r0, [r1]
	cmp r0, #0
	beq _0804AB36
	b _0804AF44
_0804AB36:
	movs r0, #1
	strb r0, [r1]
	ldr r0, _0804AB88
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804AB44
	b _0804AF44
_0804AB44:
	ldr r2, _0804AB8C
	movs r4, #0xb6
	lsls r4, r4, #3
	adds r0, r2, r4
	ldrh r0, [r0]
	ldr r3, _0804AB90
	ldr r6, _0804AB94
	adds r1, r2, r6
	ldrb r3, [r3]
	adds r1, r1, r3
	ldrb r1, [r1]
	ldr r3, _0804AB98
	adds r2, r2, r3
	ldr r2, [r2]
	movs r4, #0x80
	lsls r4, r4, #9
	adds r2, r2, r4
	bl audio_new_fx
	b _0804AF44
	.align 2, 0
_0804AB6C: .4byte 0x080B12D0
_0804AB70: .4byte gPlayerShadowPos
_0804AB74: .4byte 0x080B19E0
_0804AB78: .4byte 0x0203F8D5
_0804AB7C: .4byte 0x0203F8D4
_0804AB80: .4byte 0x0203F8B8
_0804AB84: .4byte 0x0203F8D9
_0804AB88: .4byte gCanPlaySfx
_0804AB8C: .4byte 0x080CE440
_0804AB90: .4byte gSfxVolume
_0804AB94: .4byte 0x000005B2
_0804AB98: .4byte 0x000005B4
_0804AB9C:
	subs r0, #1
	strh r0, [r1]
	b _0804AF44
_0804ABA2:
	ldr r0, [r5, #0x58]
	bl audio_fx_still_active
	cmp r0, #0
	bne _0804ABF6
	ldr r0, _0804ABDC
	ldrb r0, [r0]
	cmp r0, #0
	beq _0804ABF0
	ldr r2, _0804ABE0
	movs r1, #0x87
	lsls r1, r1, #3
	adds r0, r2, r1
	ldrh r0, [r0]
	ldr r3, _0804ABE4
	ldr r4, _0804ABE8
	adds r1, r2, r4
	ldrb r3, [r3]
	adds r1, r1, r3
	ldrb r1, [r1]
	ldr r3, _0804ABEC
	adds r2, r2, r3
	ldr r2, [r2]
	movs r4, #0x80
	lsls r4, r4, #9
	adds r2, r2, r4
	bl audio_new_fx
	b _0804ABF4
	.align 2, 0
_0804ABDC: .4byte gCanPlaySfx
_0804ABE0: .4byte 0x080CE440
_0804ABE4: .4byte gSfxVolume
_0804ABE8: .4byte 0x0000043A
_0804ABEC: .4byte 0x0000043C
_0804ABF0:
	movs r0, #1
	rsbs r0, r0, #0
_0804ABF4:
	str r0, [r5, #0x58]
_0804ABF6:
	ldr r0, [r5, #0x2c]
	add r1, sp, #0xc
	add r2, sp, #0x10
	add r3, sp, #0x14
	bl sub_80038C4
	ldr r0, [r5, #0x54]
	ldr r1, [sp, #0x10]
	adds r0, r0, r1
	str r0, [r5, #0x54]
	asrs r0, r0, #0x10
	strb r0, [r6, #9]
	movs r0, #0x94
	adds r0, r0, r6
	mov r8, r0
	ldr r0, [r0]
	ldr r1, [sp, #0xc]
	adds r0, r0, r1
	str r0, [sp]
	adds r7, r6, #0
	adds r7, #0x98
	ldr r0, [r7]
	str r0, [sp, #4]
	adds r4, r6, #0
	adds r4, #0x9c
	ldr r0, [r4]
	ldr r1, [sp, #0x14]
	adds r0, r0, r1
	str r0, [sp, #8]
	adds r0, r5, #0
	mov r1, sp
	movs r2, #1
	bl sub_080491DC
	cmp r0, #0
	bne _0804AC5C
	ldr r0, [sp]
	mov r1, r8
	str r0, [r1]
	ldr r2, [sp, #4]
	str r2, [r7]
	ldr r1, [sp, #8]
	str r1, [r4]
	asrs r0, r0, #0x10
	strh r0, [r6, #2]
	ldr r0, _0804AC74
	adds r1, r1, r2
	asrs r1, r1, #0x10
	ldrh r0, [r0]
	subs r0, r0, r1
	strh r0, [r6, #4]
_0804AC5C:
	adds r3, r6, #0
	adds r3, #0xbc
	ldrb r2, [r6, #9]
	ldr r0, _0804AC78
	ldr r1, [r0]
	cmp r2, r1
	blt _0804AC80
	ldr r0, _0804AC7C
	subs r1, #1
	adds r1, r1, r0
	ldrb r0, [r1]
	b _0804AC86
	.align 2, 0
_0804AC74: .4byte gMapPixelSizeY
_0804AC78: .4byte 0x080CEBC4
_0804AC7C: .4byte 0x080CEB84
_0804AC80:
	ldr r0, _0804ACEC
	adds r0, r2, r0
	ldrb r0, [r0]
_0804AC86:
	asrs r1, r0, #1
	adds r0, r3, #0
	bl sub_80037F4
	adds r0, r5, #0
	movs r1, #2
	movs r2, #0
	bl sub_08047958
	ldr r0, [r5, #0x54]
	movs r1, #0xc8
	lsls r1, r1, #0xf
	cmp r0, r1
	bgt _0804ACA4
	b _0804AF44
_0804ACA4:
	str r1, [r5, #0x54]
	movs r0, #0x78
	strb r0, [r6, #9]
	movs r0, #0xd
	adds r4, r5, #0
	adds r4, #0x65
	strb r0, [r4]
	ldr r0, [r5, #0x58]
	bl audio_fx_still_active
	cmp r0, #0
	beq _0804ACCA
	ldr r0, _0804ACF0
	ldrb r0, [r0]
	cmp r0, #0
	beq _0804ACCA
	ldr r0, [r5, #0x58]
	bl audio_halt_fx
_0804ACCA:
	adds r0, r6, #0
	adds r0, #0xa0
	ldr r1, _0804ACF4
	ldrb r2, [r4]
	lsls r2, r2, #2
	adds r2, r2, r1
	ldrh r1, [r2]
	ldrb r3, [r2, #2]
	movs r2, #0
	bl sub_8003368
	ldr r0, [r5, #0x2c]
	ldr r1, _0804ACF8
	movs r2, #0
	bl CallARM_store_jump_and_other_value
	b _0804AF44
	.align 2, 0
_0804ACEC: .4byte 0x080CEB84
_0804ACF0: .4byte gCanPlaySfx
_0804ACF4: .4byte 0x080B12D0
_0804ACF8: .4byte 0xFFFB0000
_0804ACFC:
	ldr r0, [r5, #0x2c]
	add r1, sp, #0xc
	add r2, sp, #0x10
	add r3, sp, #0x14
	bl sub_80038C4
	ldr r0, [r5, #0x54]
	ldr r1, [sp, #0x10]
	adds r0, r0, r1
	str r0, [r5, #0x54]
	asrs r0, r0, #0x10
	strb r0, [r6, #9]
	movs r3, #0x94
	adds r3, r3, r6
	mov r8, r3
	ldr r0, [r3]
	ldr r1, [sp, #0xc]
	adds r0, r0, r1
	str r0, [sp]
	adds r7, r6, #0
	adds r7, #0x98
	ldr r0, [r7]
	str r0, [sp, #4]
	adds r4, r6, #0
	adds r4, #0x9c
	ldr r0, [r4]
	ldr r1, [sp, #0x14]
	adds r0, r0, r1
	str r0, [sp, #8]
	adds r0, r5, #0
	mov r1, sp
	movs r2, #1
	bl sub_080491DC
	cmp r0, #0
	bne _0804AD62
	ldr r0, [sp]
	mov r1, r8
	str r0, [r1]
	ldr r2, [sp, #4]
	str r2, [r7]
	ldr r1, [sp, #8]
	str r1, [r4]
	asrs r0, r0, #0x10
	strh r0, [r6, #2]
	ldr r0, _0804AD7C
	adds r1, r1, r2
	asrs r1, r1, #0x10
	ldrh r0, [r0]
	subs r0, r0, r1
	strh r0, [r6, #4]
_0804AD62:
	adds r3, r6, #0
	adds r3, #0xbc
	ldrb r2, [r6, #9]
	ldr r0, _0804AD80
	ldr r1, [r0]
	cmp r2, r1
	blt _0804AD88
	ldr r0, _0804AD84
	subs r1, #1
	adds r1, r1, r0
	ldrb r0, [r1]
	b _0804AD8E
	.align 2, 0
_0804AD7C: .4byte gMapPixelSizeY
_0804AD80: .4byte 0x080CEBC4
_0804AD84: .4byte 0x080CEB84
_0804AD88:
	ldr r0, _0804AE60
	adds r0, r2, r0
	ldrb r0, [r0]
_0804AD8E:
	asrs r1, r0, #1
	adds r0, r3, #0
	bl sub_80037F4
	ldr r0, [r5, #0x54]
	cmp r0, #0
	ble _0804AD9E
	b _0804AF30
_0804AD9E:
	movs r7, #0
	str r7, [r5, #0x54]
	strb r7, [r6, #9]
	ldr r3, _0804AE64
	mov r8, r3
	ldrb r0, [r3]
	cmp r0, #0
	beq _0804ADD4
	ldr r2, _0804AE68
	movs r4, #0x88
	lsls r4, r4, #3
	adds r0, r2, r4
	ldrh r0, [r0]
	ldr r3, _0804AE6C
	adds r4, #2
	adds r1, r2, r4
	ldrb r3, [r3]
	adds r1, r1, r3
	ldrb r1, [r1]
	ldr r3, _0804AE70
	adds r2, r2, r3
	ldr r2, [r2]
	movs r4, #0x80
	lsls r4, r4, #9
	adds r2, r2, r4
	bl audio_new_fx
_0804ADD4:
	movs r0, #1
	adds r4, r5, #0
	adds r4, #0x65
	strb r0, [r4]
	ldr r0, [r5, #0x2c]
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_8003884
	ldr r0, [r5, #0x2c]
	bl sub_800387C
	ldr r0, _0804AE74
	ldrb r0, [r0]
	cmp r0, #0
	beq _0804ADF8
	b _0804AF14
_0804ADF8:
	adds r0, r5, #0
	movs r1, #4
	bl sub_8049038
	adds r0, r6, #0
	adds r0, #0xa0
	ldr r1, _0804AE78
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r0, _0804AE7C
	adds r2, r5, #0
	adds r2, #0x64
	ldrb r1, [r2]
	lsls r1, r1, #3
	adds r1, r1, r0
	ldr r0, _0804AE80
	ldrb r0, [r0]
	ldr r1, [r1]
	lsls r0, r0, #4
	adds r0, r0, r1
	ldrb r0, [r0, #0xa]
	adds r1, r5, #0
	adds r1, #0x5e
	strh r0, [r1]
	mov r6, r8
	ldrb r0, [r6]
	adds r4, r2, #0
	cmp r0, #0
	beq _0804AE88
	ldr r2, _0804AE68
	movs r1, #0x9e
	lsls r1, r1, #2
	adds r0, r2, r1
	ldrh r0, [r0]
	ldr r3, _0804AE6C
	ldr r6, _0804AE84
	adds r1, r2, r6
	ldrb r3, [r3]
	adds r1, r1, r3
	ldrb r1, [r1]
	movs r3, #0x9f
	lsls r3, r3, #2
	adds r2, r2, r3
	ldr r2, [r2]
	movs r6, #0x80
	lsls r6, r6, #9
	adds r2, r2, r6
	bl audio_new_fx
	b _0804AE8C
	.align 2, 0
_0804AE60: .4byte 0x080CEB84
_0804AE64: .4byte gCanPlaySfx
_0804AE68: .4byte 0x080CE440
_0804AE6C: .4byte gSfxVolume
_0804AE70: .4byte 0x00000444
_0804AE74: .4byte 0x0203F8D4
_0804AE78: .4byte 0x000002ED
_0804AE7C: .4byte 0x080B19E0
_0804AE80: .4byte 0x0203F8D5
_0804AE84: .4byte 0x0000027A
_0804AE88:
	movs r0, #1
	rsbs r0, r0, #0
_0804AE8C:
	str r0, [r5, #0x58]
	ldr r0, _0804AEE8
	ldr r1, _0804AEEC
	str r1, [r0]
	ldr r1, _0804AEF0
	ldrb r0, [r1]
	cmp r0, #0
	beq _0804AECE
	movs r0, #0
	strb r0, [r1]
	ldr r0, _0804AEF4
	ldrb r0, [r0]
	cmp r0, #0
	beq _0804AECE
	ldr r2, _0804AEF8
	movs r1, #0xb7
	lsls r1, r1, #3
	adds r0, r2, r1
	ldrh r0, [r0]
	ldr r3, _0804AEFC
	ldr r6, _0804AF00
	adds r1, r2, r6
	ldrb r3, [r3]
	adds r1, r1, r3
	ldrb r1, [r1]
	ldr r3, _0804AF04
	adds r2, r2, r3
	ldr r2, [r2]
	movs r6, #0x80
	lsls r6, r6, #9
	adds r2, r2, r6
	bl audio_new_fx
_0804AECE:
	ldr r2, _0804AF08
	ldr r0, _0804AF0C
	ldrb r1, [r4]
	lsls r1, r1, #3
	adds r1, r1, r0
	ldr r0, _0804AF10
	ldrb r0, [r0]
	ldr r1, [r1]
	lsls r0, r0, #4
	adds r0, r0, r1
	ldrb r0, [r0, #4]
	strb r0, [r2]
	b _0804AF30
	.align 2, 0
_0804AEE8: .4byte 0x0203F8B8
_0804AEEC: .4byte 0x00001FFF
_0804AEF0: .4byte 0x0203F8D9
_0804AEF4: .4byte gCanPlaySfx
_0804AEF8: .4byte 0x080CE440
_0804AEFC: .4byte gSfxVolume
_0804AF00: .4byte 0x000005BA
_0804AF04: .4byte 0x000005BC
_0804AF08: .4byte 0x0203F8D4
_0804AF0C: .4byte 0x080B19E0
_0804AF10: .4byte 0x0203F8D5
_0804AF14:
	adds r0, r6, #0
	adds r0, #0xa0
	ldr r1, _0804AF3C
	ldrb r2, [r4]
	lsls r2, r2, #2
	adds r2, r2, r1
	ldrh r1, [r2]
	ldrb r3, [r2, #2]
	movs r2, #0
	bl sub_8003368
	adds r0, r5, #0
	adds r0, #0x5e
	strh r7, [r0]
_0804AF30:
	adds r0, r5, #0
	movs r1, #2
	movs r2, #0
	bl sub_08047958
	b _0804AF44
	.align 2, 0
_0804AF3C: .4byte 0x080B12D0
_0804AF40:
	.2byte 0xEE00, 0xEE00
_0804AF44:
	add sp, #0x18
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	.thumb
sub_804AF50: @ 0x0804AF50
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x18
	adds r7, r0, #0
	mov r8, r1
	adds r0, #0x65
	ldrb r0, [r0]
	cmp r0, #0xe
	bls _0804AF6A
	bl _0804B748
_0804AF6A:
	lsls r0, r0, #2
	ldr r1, _0804AF74
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0804AF74: .4byte 0x0804AF78
_0804AF78: @ jump table
	.4byte _0804AFBE @ case 0
	.4byte _0804B008 @ case 1
	.4byte _0804B748 @ case 2
	.4byte _0804B244 @ case 3
	.4byte _0804B3D8 @ case 4
	.4byte _0804B0E8 @ case 5
	.4byte _0804B124 @ case 6
	.4byte _0804B748 @ case 7
	.4byte _0804B748 @ case 8
	.4byte _0804B748 @ case 9
	.4byte _0804B748 @ case 10
	.4byte _0804B748 @ case 11
	.4byte _0804B27A @ case 12
	.4byte _0804B574 @ case 13
	.4byte _0804AFB4 @ case 14
_0804AFB4:
	adds r0, r7, #0
	movs r1, #1
	bl sub_8047A08
	b _0804B74C
_0804AFBE:
	adds r0, r7, #0
	movs r1, #0
	movs r2, #1
	movs r3, #1
	bl sub_08049574
	cmp r0, #0
	bne _0804AFD0
	b _0804B74C
_0804AFD0:
	movs r5, #1
	adds r0, r7, #0
	adds r0, #0x65
	movs r4, #0
	strb r5, [r0]
	mov r0, r8
	adds r0, #0xa0
	ldr r2, _0804AFFC
	ldrh r1, [r2, #4]
	ldrb r3, [r2, #6]
	movs r2, #0
	bl sub_8003368
	ldr r0, _0804B000
	str r4, [r0]
	ldr r1, _0804B004
	ldrb r0, [r1]
	cmp r0, #0
	beq _0804AFF8
	b _0804B74C
_0804AFF8:
	strb r5, [r1]
	b _0804B086
	.align 2, 0
_0804AFFC: .4byte 0x080B1350
_0804B000: .4byte 0x0203F8B8
_0804B004: .4byte 0x0203F8D9
_0804B008:
	adds r1, r7, #0
	adds r1, #0x5e
	ldrh r0, [r1]
	adds r5, r0, #0
	cmp r5, #0
	beq _0804B016
	b _0804B274
_0804B016:
	movs r0, #5
	adds r1, #7
	strb r0, [r1]
	mov r4, r8
	adds r4, #0xa0
	ldr r0, _0804B0B8
	ldrh r1, [r0, #0x14]
	ldrb r3, [r0, #0x16]
	adds r0, r4, #0
	movs r2, #0
	bl sub_8003368
	ldr r0, [r7, #0x2c]
	ldr r3, _0804B0BC
	adds r1, r7, #0
	adds r1, #0x64
	ldrb r2, [r1]
	lsls r2, r2, #3
	adds r2, r2, r3
	ldr r1, _0804B0C0
	ldrb r1, [r1]
	ldr r2, [r2]
	lsls r1, r1, #4
	adds r1, r1, r2
	ldr r1, [r1, #0xc]
	ldr r3, _0804B0C4
	mov r2, r8
	adds r2, #0xaa
	ldrb r2, [r2]
	lsls r2, r2, #2
	adds r2, r2, r3
	ldr r2, [r2]
	movs r3, #0
	bl sub_8003884
	adds r0, r4, #0
	movs r1, #0
	bl sub_800378C
	ldr r1, _0804B0C8
	ldrb r0, [r1]
	cmp r0, #0
	bne _0804B070
	.2byte 0xEE00, 0xEE00
_0804B070:
	subs r0, #1
	strb r0, [r1]
	ldr r0, _0804B0CC
	str r5, [r0]
	ldr r1, _0804B0D0
	ldrb r0, [r1]
	cmp r0, #0
	beq _0804B082
	b _0804B74C
_0804B082:
	movs r0, #1
	strb r0, [r1]
_0804B086:
	ldr r0, _0804B0D4
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804B090
	b _0804B74C
_0804B090:
	ldr r2, _0804B0D8
	movs r1, #0xb6
	lsls r1, r1, #3
	adds r0, r2, r1
	ldrh r0, [r0]
	ldr r3, _0804B0DC
	ldr r4, _0804B0E0
	adds r1, r2, r4
	ldrb r3, [r3]
	adds r1, r1, r3
	ldrb r1, [r1]
	ldr r3, _0804B0E4
	adds r2, r2, r3
	ldr r2, [r2]
	movs r4, #0x80
	lsls r4, r4, #9
	adds r2, r2, r4
	bl audio_new_fx
	b _0804B74C
	.align 2, 0
_0804B0B8: .4byte 0x080B1350
_0804B0BC: .4byte 0x080B19E0
_0804B0C0: .4byte 0x0203F8D5
_0804B0C4: .4byte dword_80CC290
_0804B0C8: .4byte 0x0203F8D4
_0804B0CC: .4byte 0x0203F8B8
_0804B0D0: .4byte 0x0203F8D9
_0804B0D4: .4byte gCanPlaySfx
_0804B0D8: .4byte 0x080CE440
_0804B0DC: .4byte gSfxVolume
_0804B0E0: .4byte 0x000005B2
_0804B0E4: .4byte 0x000005B4
_0804B0E8:
	ldr r0, _0804B118
	ldr r1, _0804B11C
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	bne _0804B0F6
	b _0804B74C
_0804B0F6:
	movs r0, #6
	adds r1, r7, #0
	adds r1, #0x65
	strb r0, [r1]
	mov r0, r8
	adds r0, #0xa0
	ldr r2, _0804B120
	ldrh r1, [r2, #0x18]
	ldrb r3, [r2, #0x1a]
	movs r2, #0
	bl sub_8003368
	adds r1, r7, #0
	adds r1, #0x5e
	movs r0, #0x2a
	strh r0, [r1]
	b _0804B74C
	.align 2, 0
_0804B118: .4byte 0x0203DFD4
_0804B11C: .4byte 0x0203DFD5
_0804B120: .4byte 0x080B1350
_0804B124:
	adds r1, r7, #0
	adds r1, #0x5e
	ldrh r0, [r1]
	adds r5, r1, #0
	cmp r0, #0
	beq _0804B132
	b _0804B274
_0804B132:
	mov r4, r8
	adds r4, #0x94
	adds r0, r4, #0
	bl sub_80494FC
	adds r2, r0, #0
	mov r0, r8
	ldrb r3, [r0, #8]
	movs r0, #7
	adds r1, r4, #0
	bl sub_802D888
	ldr r0, _0804B17C
	ldrb r0, [r0]
	cmp r0, #0
	beq _0804B190
	ldr r2, _0804B180
	movs r1, #0x89
	lsls r1, r1, #3
	adds r0, r2, r1
	ldrh r0, [r0]
	ldr r3, _0804B184
	ldr r4, _0804B188
	adds r1, r2, r4
	ldrb r3, [r3]
	adds r1, r1, r3
	ldrb r1, [r1]
	ldr r3, _0804B18C
	adds r2, r2, r3
	ldr r2, [r2]
	movs r4, #0x80
	lsls r4, r4, #9
	adds r2, r2, r4
	bl audio_new_fx
	b _0804B194
	.align 2, 0
_0804B17C: .4byte gCanPlaySfx
_0804B180: .4byte 0x080CE440
_0804B184: .4byte gSfxVolume
_0804B188: .4byte 0x0000044A
_0804B18C: .4byte 0x0000044C
_0804B190:
	movs r0, #1
	rsbs r0, r0, #0
_0804B194:
	str r0, [r7, #0x58]
	ldr r4, _0804B1D8
	ldrb r0, [r4]
	cmp r0, #0
	bne _0804B1E8
	movs r0, #3
	adds r1, r7, #0
	adds r1, #0x65
	strb r0, [r1]
	mov r0, r8
	adds r0, #0xa0
	ldr r2, _0804B1DC
	ldrh r1, [r2, #0xc]
	ldrb r3, [r2, #0xe]
	movs r2, #0
	bl sub_8003368
	ldr r2, _0804B1E0
	adds r0, r7, #0
	adds r0, #0x64
	ldrb r1, [r0]
	lsls r1, r1, #3
	adds r1, r1, r2
	ldr r0, _0804B1E4
	ldrb r0, [r0]
	ldr r1, [r1]
	lsls r0, r0, #4
	adds r0, r0, r1
	ldrb r0, [r0, #4]
	strb r0, [r4]
	movs r0, #0x2a
	strh r0, [r5]
	b _0804B74C
	.align 2, 0
_0804B1D8: .4byte 0x0203F8D4
_0804B1DC: .4byte 0x080B1350
_0804B1E0: .4byte 0x080B19E0
_0804B1E4: .4byte 0x0203F8D5
_0804B1E8:
	ldr r2, _0804B234
	adds r0, r7, #0
	adds r0, #0x64
	ldrb r1, [r0]
	lsls r1, r1, #3
	adds r1, r1, r2
	ldr r0, _0804B238
	ldrb r0, [r0]
	ldr r1, [r1]
	lsls r0, r0, #4
	adds r0, r0, r1
	ldrh r0, [r0, #8]
	strh r0, [r5]
	movs r0, #1
	adds r1, r7, #0
	adds r1, #0x65
	strb r0, [r1]
	mov r0, r8
	adds r0, #0xa0
	ldr r2, _0804B23C
	ldrh r1, [r2, #4]
	ldrb r3, [r2, #6]
	movs r2, #0
	bl sub_8003368
	ldr r0, [r7, #0x2c]
	ldr r2, _0804B240
	mov r1, r8
	adds r1, #0xaa
	ldrb r1, [r1]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r2, [r1]
	movs r1, #0
	movs r3, #0
	bl sub_8003884
	b _0804B74C
	.align 2, 0
_0804B234: .4byte 0x080B19E0
_0804B238: .4byte 0x0203F8D5
_0804B23C: .4byte 0x080B1350
_0804B240: .4byte dword_80CC290
_0804B244:
	adds r1, r7, #0
	adds r1, #0x5e
	ldrh r0, [r1]
	cmp r0, #0
	bne _0804B274
	movs r0, #0xc
	adds r1, #7
	strb r0, [r1]
	mov r0, r8
	adds r0, #0xa0
	ldr r1, _0804B270
	adds r2, r1, #0
	adds r2, #0x30
	ldrh r1, [r1, #0x30]
	ldrb r3, [r2, #2]
	movs r2, #0
	bl sub_8003368
	ldr r0, [r7, #0x2c]
	movs r1, #0xa0
	lsls r1, r1, #0xa
	b _0804B556
	.align 2, 0
_0804B270: .4byte 0x080B1350
_0804B274:
	subs r0, #1
	strh r0, [r1]
	b _0804B74C
_0804B27A:
	ldr r0, [r7, #0x58]
	bl audio_fx_still_active
	cmp r0, #0
	bne _0804B2CE
	ldr r0, _0804B2B4
	ldrb r0, [r0]
	cmp r0, #0
	beq _0804B2C8
	ldr r2, _0804B2B8
	movs r1, #0xb3
	lsls r1, r1, #3
	adds r0, r2, r1
	ldrh r0, [r0]
	ldr r3, _0804B2BC
	ldr r4, _0804B2C0
	adds r1, r2, r4
	ldrb r3, [r3]
	adds r1, r1, r3
	ldrb r1, [r1]
	ldr r3, _0804B2C4
	adds r2, r2, r3
	ldr r2, [r2]
	movs r4, #0x80
	lsls r4, r4, #9
	adds r2, r2, r4
	bl audio_new_fx
	b _0804B2CC
	.align 2, 0
_0804B2B4: .4byte gCanPlaySfx
_0804B2B8: .4byte 0x080CE440
_0804B2BC: .4byte gSfxVolume
_0804B2C0: .4byte 0x0000059A
_0804B2C4: .4byte 0x0000059C
_0804B2C8:
	movs r0, #1
	rsbs r0, r0, #0
_0804B2CC:
	str r0, [r7, #0x58]
_0804B2CE:
	ldr r0, [r7, #0x2c]
	add r1, sp, #0xc
	add r2, sp, #0x10
	add r3, sp, #0x14
	bl sub_80038C4
	ldr r0, [r7, #0x54]
	ldr r1, [sp, #0x10]
	adds r0, r0, r1
	str r0, [r7, #0x54]
	asrs r0, r0, #0x10
	mov r1, r8
	strb r0, [r1, #9]
	mov r0, r8
	adds r0, #0x94
	movs r2, #2
	ldrsh r0, [r0, r2]
	strh r0, [r1, #2]
	ldr r3, _0804B324
	mov r0, r8
	adds r0, #0x9c
	mov r2, r8
	adds r2, #0x98
	ldr r1, [r0]
	ldr r0, [r2]
	adds r1, r1, r0
	asrs r1, r1, #0x10
	ldrh r0, [r3]
	subs r0, r0, r1
	mov r3, r8
	strh r0, [r3, #4]
	adds r3, #0xbc
	mov r4, r8
	ldrb r2, [r4, #9]
	ldr r0, _0804B328
	ldr r1, [r0]
	cmp r2, r1
	blt _0804B330
	ldr r0, _0804B32C
	subs r1, #1
	adds r1, r1, r0
	ldrb r0, [r1]
	b _0804B336
	.align 2, 0
_0804B324: .4byte gMapPixelSizeY
_0804B328: .4byte 0x080CEBC4
_0804B32C: .4byte 0x080CEB84
_0804B330:
	ldr r0, _0804B3C0
	adds r0, r2, r0
	ldrb r0, [r0]
_0804B336:
	asrs r1, r0, #1
	adds r0, r3, #0
	bl sub_80037F4
	adds r0, r7, #0
	movs r1, #2
	movs r2, #0
	bl sub_08047958
	ldr r1, [r7, #0x54]
	ldr r0, _0804B3C4
	cmp r1, r0
	bgt _0804B352
	b _0804B74C
_0804B352:
	adds r0, #1
	str r0, [r7, #0x54]
	movs r0, #0x78
	mov r1, r8
	strb r0, [r1, #9]
	ldr r0, [r7, #0x2c]
	bl sub_800387C
	movs r0, #4
	adds r1, r7, #0
	adds r1, #0x65
	strb r0, [r1]
	mov r0, r8
	adds r0, #0xa0
	ldr r2, _0804B3C8
	ldrh r1, [r2, #0x10]
	ldrb r3, [r2, #0x12]
	movs r2, #0
	bl sub_8003368
	ldr r0, [r7, #0x2c]
	ldr r6, _0804B3CC
	adds r5, r7, #0
	adds r5, #0x64
	ldrb r2, [r5]
	lsls r2, r2, #3
	adds r2, r2, r6
	ldr r4, _0804B3D0
	ldrb r1, [r4]
	ldr r2, [r2]
	lsls r1, r1, #4
	adds r1, r1, r2
	ldr r1, [r1, #0xc]
	ldr r3, _0804B3D4
	mov r2, r8
	adds r2, #0xaa
	ldrb r2, [r2]
	lsls r2, r2, #2
	adds r2, r2, r3
	ldr r2, [r2]
	movs r3, #0
	bl sub_8003884
	ldrb r0, [r5]
	lsls r0, r0, #3
	adds r0, r0, r6
	ldrb r1, [r4]
	ldr r0, [r0]
	lsls r1, r1, #4
	adds r1, r1, r0
	ldrh r1, [r1, #8]
	adds r0, r7, #0
	adds r0, #0x5e
	strh r1, [r0]
	b _0804B74C
	.align 2, 0
_0804B3C0: .4byte 0x080CEB84
_0804B3C4: .4byte 0x0077FFFF
_0804B3C8: .4byte 0x080B1350
_0804B3CC: .4byte 0x080B19E0
_0804B3D0: .4byte 0x0203F8D5
_0804B3D4: .4byte dword_80CC290
_0804B3D8:
	ldr r0, [r7, #0x58]
	bl audio_fx_still_active
	cmp r0, #0
	bne _0804B42E
	ldr r0, _0804B414
	ldrb r0, [r0]
	cmp r0, #0
	beq _0804B428
	ldr r2, _0804B418
	movs r3, #0xb3
	lsls r3, r3, #3
	adds r0, r2, r3
	ldrh r0, [r0]
	ldr r3, _0804B41C
	ldr r4, _0804B420
	adds r1, r2, r4
	ldrb r3, [r3]
	adds r1, r1, r3
	ldrb r1, [r1]
	ldr r3, _0804B424
	adds r2, r2, r3
	ldr r2, [r2]
	movs r4, #0x80
	lsls r4, r4, #9
	adds r2, r2, r4
	bl audio_new_fx
	b _0804B42C
	.align 2, 0
_0804B414: .4byte gCanPlaySfx
_0804B418: .4byte 0x080CE440
_0804B41C: .4byte gSfxVolume
_0804B420: .4byte 0x0000059A
_0804B424: .4byte 0x0000059C
_0804B428:
	movs r0, #1
	rsbs r0, r0, #0
_0804B42C:
	str r0, [r7, #0x58]
_0804B42E:
	ldr r1, _0804B4CC
	adds r0, r7, #0
	movs r2, #0
	bl sub_8049008
	mov r5, r8
	adds r5, #0x98
	ldr r0, [r5]
	str r0, [r7, #8]
	ldr r0, [r7, #0x2c]
	add r1, sp, #0xc
	add r2, sp, #0x10
	add r3, sp, #0x14
	bl sub_80038C4
	movs r0, #0x94
	add r0, r8
	mov sb, r0
	ldr r0, [r0]
	ldr r1, [sp, #0xc]
	adds r0, r0, r1
	str r0, [sp]
	ldr r0, [r5]
	str r0, [sp, #4]
	mov r6, r8
	adds r6, #0x9c
	ldr r0, [r6]
	ldr r1, [sp, #0x14]
	adds r0, r0, r1
	str r0, [sp, #8]
	ldr r1, _0804B4D0
	adds r4, r7, #0
	adds r4, #0x65
	ldrb r0, [r4]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrh r1, [r0]
	ldrb r2, [r0, #2]
	adds r0, r7, #0
	movs r3, #0
	bl sub_8049838
	adds r0, r7, #0
	mov r1, sp
	movs r2, #1
	bl sub_080491DC
	cmp r0, #0
	bne _0804B4B2
	ldr r2, [sp]
	mov r1, sb
	str r2, [r1]
	ldr r0, [sp, #4]
	str r0, [r5]
	ldr r1, [sp, #8]
	str r1, [r6]
	asrs r2, r2, #0x10
	mov r3, r8
	strh r2, [r3, #2]
	ldr r2, _0804B4D4
	ldr r0, [r7, #0x50]
	adds r1, r1, r0
	asrs r1, r1, #0x10
	ldrh r0, [r2]
	subs r0, r0, r1
	strh r0, [r3, #4]
_0804B4B2:
	mov r3, r8
	adds r3, #0xbc
	mov r0, r8
	ldrb r2, [r0, #9]
	ldr r0, _0804B4D8
	ldr r1, [r0]
	cmp r2, r1
	blt _0804B4E0
	ldr r0, _0804B4DC
	subs r1, #1
	adds r1, r1, r0
	ldrb r0, [r1]
	b _0804B4E6
	.align 2, 0
_0804B4CC: .4byte gPlayerShadowPos
_0804B4D0: .4byte 0x080B1350
_0804B4D4: .4byte gMapPixelSizeY
_0804B4D8: .4byte 0x080CEBC4
_0804B4DC: .4byte 0x080CEB84
_0804B4E0:
	ldr r0, _0804B560
	adds r0, r2, r0
	ldrb r0, [r0]
_0804B4E6:
	asrs r1, r0, #1
	adds r0, r3, #0
	bl sub_80037F4
	adds r0, r7, #0
	movs r1, #2
	movs r2, #0
	bl sub_08047958
	mov r0, r8
	movs r1, #0x17
	movs r2, #0
	bl sub_80496B0
	cmp r0, #0
	bne _0804B508
	b _0804B74C
_0804B508:
	movs r0, #0xd
	strb r0, [r4]
	ldr r0, [r7, #0x58]
	bl audio_fx_still_active
	cmp r0, #0
	beq _0804B524
	ldr r0, _0804B564
	ldrb r0, [r0]
	cmp r0, #0
	beq _0804B524
	ldr r0, [r7, #0x58]
	bl audio_halt_fx
_0804B524:
	mov r0, r8
	adds r0, #0xa0
	ldr r1, _0804B568
	ldrb r2, [r4]
	lsls r2, r2, #2
	adds r2, r2, r1
	ldrh r1, [r2]
	ldrb r3, [r2, #2]
	movs r2, #0
	bl sub_8003368
	ldr r0, [r7, #0x2c]
	ldr r2, _0804B56C
	mov r1, r8
	adds r1, #0xaa
	ldrb r1, [r1]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r2, [r1]
	movs r1, #0
	movs r3, #0
	bl sub_8003884
	ldr r0, [r7, #0x2c]
	ldr r1, _0804B570
_0804B556:
	movs r2, #0
	bl CallARM_store_jump_and_other_value
	b _0804B74C
	.align 2, 0
_0804B560: .4byte 0x080CEB84
_0804B564: .4byte gCanPlaySfx
_0804B568: .4byte 0x080B12D0
_0804B56C: .4byte dword_80CC290
_0804B570: .4byte 0xFFFB0000
_0804B574:
	ldr r0, [r7, #0x2c]
	add r1, sp, #0xc
	add r2, sp, #0x10
	add r3, sp, #0x14
	bl sub_80038C4
	ldr r0, [r7, #0x54]
	ldr r1, [sp, #0x10]
	adds r0, r0, r1
	str r0, [r7, #0x54]
	asrs r0, r0, #0x10
	mov r1, r8
	strb r0, [r1, #9]
	mov r0, r8
	adds r0, #0x94
	movs r2, #2
	ldrsh r0, [r0, r2]
	strh r0, [r1, #2]
	ldr r3, _0804B5CC
	mov r0, r8
	adds r0, #0x9c
	mov r2, r8
	adds r2, #0x98
	ldr r1, [r0]
	ldr r0, [r2]
	adds r1, r1, r0
	asrs r1, r1, #0x10
	ldrh r0, [r3]
	subs r0, r0, r1
	mov r3, r8
	strh r0, [r3, #4]
	adds r3, #0xbc
	mov r4, r8
	ldrb r2, [r4, #9]
	ldr r0, _0804B5D0
	ldr r1, [r0]
	cmp r2, r1
	blt _0804B5D8
	ldr r0, _0804B5D4
	subs r1, #1
	adds r1, r1, r0
	ldrb r0, [r1]
	b _0804B5DE
	.align 2, 0
_0804B5CC: .4byte gMapPixelSizeY
_0804B5D0: .4byte 0x080CEBC4
_0804B5D4: .4byte 0x080CEB84
_0804B5D8:
	ldr r0, _0804B650
	adds r0, r2, r0
	ldrb r0, [r0]
_0804B5DE:
	asrs r1, r0, #1
	adds r0, r3, #0
	bl sub_80037F4
	ldr r0, [r7, #0x54]
	cmp r0, #0
	ble _0804B5EE
	b _0804B70A
_0804B5EE:
	movs r0, #0
	str r0, [r7, #0x54]
	mov r1, r8
	strb r0, [r1, #9]
	ldr r6, _0804B654
	ldrb r0, [r6]
	cmp r0, #0
	beq _0804B668
	ldr r4, _0804B658
	movs r2, #0x88
	lsls r2, r2, #3
	adds r0, r4, r2
	ldrh r0, [r0]
	ldr r5, _0804B65C
	ldr r3, _0804B660
	adds r1, r4, r3
	ldrb r2, [r5]
	adds r1, r1, r2
	ldrb r1, [r1]
	adds r3, #2
	adds r2, r4, r3
	ldr r2, [r2]
	movs r3, #0x80
	lsls r3, r3, #9
	adds r2, r2, r3
	bl audio_new_fx
	ldrb r0, [r6]
	cmp r0, #0
	beq _0804B668
	movs r1, #0x9e
	lsls r1, r1, #2
	adds r0, r4, r1
	ldrh r0, [r0]
	ldr r2, _0804B664
	adds r1, r4, r2
	ldrb r5, [r5]
	adds r1, r1, r5
	ldrb r1, [r1]
	movs r3, #0x9f
	lsls r3, r3, #2
	adds r2, r4, r3
	ldr r2, [r2]
	movs r4, #0x80
	lsls r4, r4, #9
	adds r2, r2, r4
	bl audio_new_fx
	b _0804B66C
	.align 2, 0
_0804B650: .4byte 0x080CEB84
_0804B654: .4byte gCanPlaySfx
_0804B658: .4byte 0x080CE440
_0804B65C: .4byte gSfxVolume
_0804B660: .4byte 0x00000442
_0804B664: .4byte 0x0000027A
_0804B668:
	movs r0, #1
	rsbs r0, r0, #0
_0804B66C:
	str r0, [r7, #0x58]
	movs r0, #1
	adds r1, r7, #0
	adds r1, #0x65
	strb r0, [r1]
	adds r0, r7, #0
	movs r1, #4
	bl sub_8049038
	mov r0, r8
	adds r0, #0xa0
	ldr r1, _0804B718
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r0, [r7, #0x2c]
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_8003884
	ldr r1, _0804B71C
	ldr r0, _0804B720
	str r0, [r1]
	ldr r1, _0804B724
	ldrb r0, [r1]
	cmp r0, #0
	beq _0804B6D8
	movs r0, #0
	strb r0, [r1]
	ldr r0, _0804B728
	ldrb r0, [r0]
	cmp r0, #0
	beq _0804B6D8
	ldr r2, _0804B72C
	movs r1, #0xb7
	lsls r1, r1, #3
	adds r0, r2, r1
	ldrh r0, [r0]
	ldr r3, _0804B730
	ldr r4, _0804B734
	adds r1, r2, r4
	ldrb r3, [r3]
	adds r1, r1, r3
	ldrb r1, [r1]
	ldr r3, _0804B738
	adds r2, r2, r3
	ldr r2, [r2]
	movs r4, #0x80
	lsls r4, r4, #9
	adds r2, r2, r4
	bl audio_new_fx
_0804B6D8:
	ldr r5, _0804B73C
	ldr r4, _0804B740
	adds r3, r7, #0
	adds r3, #0x64
	ldrb r1, [r3]
	lsls r1, r1, #3
	adds r1, r1, r4
	ldr r2, _0804B744
	ldrb r0, [r2]
	ldr r1, [r1]
	lsls r0, r0, #4
	adds r0, r0, r1
	ldrb r0, [r0, #4]
	strb r0, [r5]
	ldrb r0, [r3]
	lsls r0, r0, #3
	adds r0, r0, r4
	ldrb r1, [r2]
	ldr r0, [r0]
	lsls r1, r1, #4
	adds r1, r1, r0
	ldrb r0, [r1, #0xa]
	adds r1, r7, #0
	adds r1, #0x5e
	strh r0, [r1]
_0804B70A:
	adds r0, r7, #0
	movs r1, #2
	movs r2, #0
	bl sub_08047958
	b _0804B74C
	.align 2, 0
_0804B718: .4byte 0x000002ED
_0804B71C: .4byte 0x0203F8B8
_0804B720: .4byte 0x00001FFF
_0804B724: .4byte 0x0203F8D9
_0804B728: .4byte gCanPlaySfx
_0804B72C: .4byte 0x080CE440
_0804B730: .4byte gSfxVolume
_0804B734: .4byte 0x000005BA
_0804B738: .4byte 0x000005BC
_0804B73C: .4byte 0x0203F8D4
_0804B740: .4byte 0x080B19E0
_0804B744: .4byte 0x0203F8D5
_0804B748:
	.2byte 0xEE00, 0xEE00
_0804B74C:
	add sp, #0x18
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	.thumb
sub_804B75C: @ 0x0804B75C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x18
	adds r6, r0, #0
	adds r7, r1, #0
	movs r0, #0x65
	adds r0, r0, r6
	mov r8, r0
	ldrb r0, [r0]
	cmp r0, #2
	beq _0804B870
	cmp r0, #2
	bgt _0804B782
	cmp r0, #0
	bge _0804B780
	b _0804B944
_0804B780:
	b _0804B78E
_0804B782:
	cmp r0, #0xe
	beq _0804B788
	b _0804B944
_0804B788:
	movs r0, #1
	mov r1, r8
	strb r0, [r1]
_0804B78E:
	adds r0, r6, #0
	adds r0, #0x5e
	movs r5, #0
	strh r5, [r0]
	movs r0, #2
	movs r3, #0x65
	adds r3, r3, r6
	mov r8, r3
	strb r0, [r3]
	adds r0, r6, #0
	movs r1, #1
	bl sub_8049044
	adds r0, r7, #0
	adds r0, #0x94
	adds r1, r6, #4
	bl sub_804953C
	adds r4, r0, #0
	bl sub_8048E0C
	adds r1, r0, #0
	adds r0, r6, #0
	bl sub_8049038
	adds r0, r7, #0
	adds r0, #0xa0
	ldr r1, _0804B848
	mov r3, r8
	ldrb r2, [r3]
	lsls r2, r2, #2
	adds r2, r2, r1
	ldrh r1, [r2]
	ldrb r3, [r2, #2]
	movs r2, #0
	bl sub_8003368
	adds r1, r7, #0
	adds r1, #0xb0
	movs r0, #1
	strb r0, [r1]
	ldr r0, [r6, #0x2c]
	ldr r3, _0804B84C
	adds r1, r6, #0
	adds r1, #0x64
	ldrb r2, [r1]
	lsls r2, r2, #3
	adds r2, r2, r3
	ldr r1, _0804B850
	ldrb r1, [r1]
	ldr r2, [r2]
	lsls r1, r1, #4
	adds r1, r1, r2
	ldr r1, [r1, #0xc]
	adds r2, r4, #0
	movs r3, #0
	bl sub_8003884
	ldr r0, _0804B854
	str r5, [r0]
	ldr r1, _0804B858
	ldrb r0, [r1]
	cmp r0, #0
	beq _0804B840
	movs r0, #0
	strb r0, [r1]
	ldr r0, _0804B85C
	ldrb r0, [r0]
	cmp r0, #0
	beq _0804B840
	ldr r2, _0804B860
	movs r4, #0xb7
	lsls r4, r4, #3
	adds r0, r2, r4
	ldrh r0, [r0]
	ldr r3, _0804B864
	adds r4, #2
	adds r1, r2, r4
	ldrb r3, [r3]
	adds r1, r1, r3
	ldrb r1, [r1]
	ldr r3, _0804B868
	adds r2, r2, r3
	ldr r2, [r2]
	movs r4, #0x80
	lsls r4, r4, #9
	adds r2, r2, r4
	bl audio_new_fx
_0804B840:
	ldr r1, _0804B86C
	movs r0, #1
	strb r0, [r1]
	b _0804B948
	.align 2, 0
_0804B848: .4byte 0x080B1310
_0804B84C: .4byte 0x080B19E0
_0804B850: .4byte 0x0203F8D5
_0804B854: .4byte 0x0203F8B8
_0804B858: .4byte 0x0203F8D9
_0804B85C: .4byte gCanPlaySfx
_0804B860: .4byte 0x080CE440
_0804B864: .4byte gSfxVolume
_0804B868: .4byte 0x000005BC
_0804B86C: .4byte 0x0203F8DA
_0804B870:
	ldr r0, [r6, #0x2c]
	add r1, sp, #0xc
	add r2, sp, #0x10
	add r3, sp, #0x14
	bl sub_80038C4
	movs r0, #0x94
	adds r0, r0, r7
	mov sb, r0
	ldr r0, [r0]
	ldr r1, [sp, #0xc]
	adds r0, r0, r1
	str r0, [sp]
	adds r5, r7, #0
	adds r5, #0x98
	ldr r0, [r5]
	str r0, [sp, #4]
	adds r4, r7, #0
	adds r4, #0x9c
	ldr r0, [r4]
	ldr r1, [sp, #0x14]
	adds r0, r0, r1
	str r0, [sp, #8]
	adds r0, r6, #0
	mov r1, sp
	movs r2, #1
	bl sub_080491DC
	cmp r0, #0
	bne _0804B8B4
	ldr r0, _0804B900
	ldrb r0, [r0]
	cmp r0, #0
	beq _0804B914
_0804B8B4:
	adds r1, r6, #0
	adds r1, #0x5e
	movs r5, #0
	movs r0, #0
	strh r0, [r1]
	movs r4, #1
	mov r1, r8
	strb r4, [r1]
	ldr r0, [r6, #0x2c]
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_8003884
	ldr r3, _0804B904
	ldr r2, _0804B908
	adds r0, r6, #0
	adds r0, #0x64
	ldrb r1, [r0]
	lsls r1, r1, #3
	adds r1, r1, r2
	ldr r2, _0804B90C
	ldrb r0, [r2]
	ldr r1, [r1]
	lsls r0, r0, #4
	adds r0, r0, r1
	ldrb r0, [r0, #4]
	strb r0, [r3]
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	adds r0, r7, #0
	adds r0, #0xb0
	strb r5, [r0]
	ldr r0, _0804B910
	strb r4, [r0]
	b _0804B948
	.align 2, 0
_0804B900: .4byte 0x0203F8DC
_0804B904: .4byte 0x0203F8D4
_0804B908: .4byte 0x080B19E0
_0804B90C: .4byte 0x0203F8D5
_0804B910: .4byte 0x0203F8BC
_0804B914:
	ldr r0, [sp]
	mov r3, sb
	str r0, [r3]
	ldr r2, [sp, #4]
	str r2, [r5]
	ldr r1, [sp, #8]
	str r1, [r4]
	asrs r0, r0, #0x10
	strh r0, [r7, #2]
	ldr r0, _0804B940
	adds r1, r1, r2
	asrs r1, r1, #0x10
	ldrh r0, [r0]
	subs r0, r0, r1
	strh r0, [r7, #4]
	adds r0, r6, #0
	movs r1, #2
	movs r2, #0
	bl sub_08047958
	b _0804B948
	.align 2, 0
_0804B940: .4byte gMapPixelSizeY
_0804B944:
	.2byte 0xEE00, 0xEE00
_0804B948:
	add sp, #0x18
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	.thumb
sub_804B958: @ 0x0804B958
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x18
	adds r7, r0, #0
	mov r8, r1
	adds r0, #0x65
	ldrb r0, [r0]
	cmp r0, #0xe
	bls _0804B96E
	b _0804BCE2
_0804B96E:
	lsls r0, r0, #2
	ldr r1, _0804B978
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0804B978: .4byte 0x0804B97C
_0804B97C: @ jump table
	.4byte _0804B9B8 @ case 0
	.4byte _0804B9B8 @ case 1
	.4byte _0804BB34 @ case 2
	.4byte _0804BCE2 @ case 3
	.4byte _0804BCE2 @ case 4
	.4byte _0804BCE2 @ case 5
	.4byte _0804BCE2 @ case 6
	.4byte _0804BCE2 @ case 7
	.4byte _0804BCE2 @ case 8
	.4byte _0804BCE2 @ case 9
	.4byte _0804BCE2 @ case 10
	.4byte _0804BC10 @ case 11
	.4byte _0804BCE2 @ case 12
	.4byte _0804BCE2 @ case 13
	.4byte _0804BA98 @ case 14
_0804B9B8:
	movs r0, #2
	adds r5, r7, #0
	adds r5, #0x65
	strb r0, [r5]
	ldr r0, [r7, #0x10]
	str r0, [r7, #4]
	ldr r0, [r7, #0x18]
	str r0, [r7, #0xc]
	mov r0, r8
	adds r0, #0x94
	adds r1, r7, #4
	bl sub_804953C
	adds r4, r0, #0
	bl sub_8048E0C
	adds r1, r0, #0
	adds r0, r7, #0
	bl sub_8049038
	mov r0, r8
	adds r0, #0xa0
	ldr r1, _0804BA68
	ldrb r2, [r5]
	lsls r2, r2, #2
	adds r2, r2, r1
	ldrh r1, [r2]
	ldrb r3, [r2, #2]
	movs r2, #0
	bl sub_8003368
	ldr r0, [r7, #0x2c]
	ldr r3, _0804BA6C
	adds r1, r7, #0
	adds r1, #0x64
	ldrb r2, [r1]
	lsls r2, r2, #3
	adds r2, r2, r3
	ldr r1, _0804BA70
	ldrb r1, [r1]
	ldr r2, [r2]
	lsls r1, r1, #4
	adds r1, r1, r2
	ldr r1, [r1, #0xc]
	adds r2, r4, #0
	movs r3, #0
	bl sub_8003884
	ldr r1, _0804BA74
	movs r0, #0x1f
	str r0, [r1]
	ldr r1, _0804BA78
	ldrb r0, [r1]
	cmp r0, #0
	beq _0804BA58
	movs r0, #0
	strb r0, [r1]
	ldr r0, _0804BA7C
	ldrb r0, [r0]
	cmp r0, #0
	beq _0804BA58
	ldr r2, _0804BA80
	movs r1, #0xb7
	lsls r1, r1, #3
	adds r0, r2, r1
	ldrh r0, [r0]
	ldr r3, _0804BA84
	ldr r4, _0804BA88
	adds r1, r2, r4
	ldrb r3, [r3]
	adds r1, r1, r3
	ldrb r1, [r1]
	ldr r3, _0804BA8C
	adds r2, r2, r3
	ldr r2, [r2]
	movs r4, #0x80
	lsls r4, r4, #9
	adds r2, r2, r4
	bl audio_new_fx
_0804BA58:
	ldr r1, _0804BA90
	movs r0, #0
	strb r0, [r1]
	ldr r1, _0804BA94
	movs r0, #1
	strb r0, [r1]
	b _0804BCE6
	.align 2, 0
_0804BA68: .4byte 0x080B1310
_0804BA6C: .4byte 0x080B19E0
_0804BA70: .4byte 0x0203F8D5
_0804BA74: .4byte 0x0203F8B8
_0804BA78: .4byte 0x0203F8D9
_0804BA7C: .4byte gCanPlaySfx
_0804BA80: .4byte 0x080CE440
_0804BA84: .4byte gSfxVolume
_0804BA88: .4byte 0x000005BA
_0804BA8C: .4byte 0x000005BC
_0804BA90: .4byte 0x0203F8DB
_0804BA94: .4byte 0x0203F8BC
_0804BA98:
	ldr r1, _0804BB88
	movs r0, #1
	strb r0, [r1]
	ldr r0, _0804BB8C
	movs r2, #0
	str r2, [r0]
	ldr r1, _0804BB90
	ldrb r0, [r1]
	cmp r0, #0
	beq _0804BADC
	strb r2, [r1]
	ldr r0, _0804BB94
	ldrb r0, [r0]
	cmp r0, #0
	beq _0804BADC
	ldr r2, _0804BB98
	movs r1, #0xb7
	lsls r1, r1, #3
	adds r0, r2, r1
	ldrh r0, [r0]
	ldr r3, _0804BB9C
	ldr r4, _0804BBA0
	adds r1, r2, r4
	ldrb r3, [r3]
	adds r1, r1, r3
	ldrb r1, [r1]
	ldr r3, _0804BBA4
	adds r2, r2, r3
	ldr r2, [r2]
	movs r4, #0x80
	lsls r4, r4, #9
	adds r2, r2, r4
	bl audio_new_fx
_0804BADC:
	movs r0, #2
	adds r5, r7, #0
	adds r5, #0x65
	strb r0, [r5]
	mov r0, r8
	adds r0, #0x94
	adds r1, r7, #4
	bl sub_804953C
	adds r4, r0, #0
	bl sub_8048E0C
	adds r1, r0, #0
	adds r0, r7, #0
	bl sub_8049038
	mov r0, r8
	adds r0, #0xa0
	ldr r1, _0804BBA8
	ldrb r2, [r5]
	lsls r2, r2, #2
	adds r2, r2, r1
	ldrh r1, [r2]
	ldrb r3, [r2, #2]
	movs r2, #0
	bl sub_8003368
	ldr r0, [r7, #0x2c]
	ldr r3, _0804BBAC
	adds r1, r7, #0
	adds r1, #0x64
	ldrb r2, [r1]
	lsls r2, r2, #3
	adds r2, r2, r3
	ldr r1, _0804BBB0
	ldrb r1, [r1]
	ldr r2, [r2]
	lsls r1, r1, #4
	adds r1, r1, r2
	ldr r1, [r1, #0xc]
	adds r2, r4, #0
	movs r3, #0
	bl sub_8003884
_0804BB34:
	adds r1, r7, #4
	adds r0, r7, #0
	movs r2, #2
	bl sub_8049748
	cmp r0, #0
	beq _0804BBB4
	mov r5, r8
	adds r5, #0x94
	ldr r0, [r7, #4]
	str r0, [r5]
	mov r4, r8
	adds r4, #0x9c
	ldr r0, [r7, #0xc]
	str r0, [r4]
	movs r0, #0xb
	adds r1, r7, #0
	adds r1, #0x65
	strb r0, [r1]
	mov r0, r8
	adds r0, #0xa0
	ldr r1, _0804BBA8
	adds r2, r1, #0
	adds r2, #0x2c
	ldrh r1, [r1, #0x2c]
	ldrb r3, [r2, #2]
	movs r2, #0
	bl sub_8003368
	ldr r0, [r7, #0x2c]
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_8003884
	adds r1, r7, #0
	adds r1, #0x5e
	movs r0, #0x18
	strh r0, [r1]
	adds r6, r5, #0
	adds r5, #4
	b _0804BBF0
	.align 2, 0
_0804BB88: .4byte 0x0203F8DB
_0804BB8C: .4byte 0x0203F8B8
_0804BB90: .4byte 0x0203F8D9
_0804BB94: .4byte gCanPlaySfx
_0804BB98: .4byte 0x080CE440
_0804BB9C: .4byte gSfxVolume
_0804BBA0: .4byte 0x000005BA
_0804BBA4: .4byte 0x000005BC
_0804BBA8: .4byte 0x080B1310
_0804BBAC: .4byte 0x080B19E0
_0804BBB0: .4byte 0x0203F8D5
_0804BBB4:
	ldr r0, [r7, #0x2c]
	add r1, sp, #0xc
	add r2, sp, #0x10
	add r3, sp, #0x14
	bl sub_80038C4
	mov r6, r8
	adds r6, #0x94
	ldr r2, [r6]
	ldr r0, [sp, #0xc]
	adds r2, r2, r0
	str r2, [sp]
	mov r5, r8
	adds r5, #0x98
	ldr r3, [r5]
	str r3, [sp, #4]
	mov r4, r8
	adds r4, #0x9c
	ldr r1, [r4]
	ldr r0, [sp, #0x14]
	adds r1, r1, r0
	str r1, [sp, #8]
	str r2, [r6]
	str r3, [r5]
	str r1, [r4]
	adds r0, r7, #0
	movs r1, #2
	movs r2, #0
	bl sub_08047958
_0804BBF0:
	movs r1, #2
	ldrsh r0, [r6, r1]
	mov r3, r8
	strh r0, [r3, #2]
	ldr r2, _0804BC0C
	ldr r1, [r4]
	ldr r0, [r5]
	adds r1, r1, r0
	asrs r1, r1, #0x10
	ldrh r0, [r2]
	subs r0, r0, r1
	strh r0, [r3, #4]
	b _0804BCE6
	.align 2, 0
_0804BC0C: .4byte gMapPixelSizeY
_0804BC10:
	adds r1, r7, #0
	adds r1, #0x5e
	ldrh r0, [r1]
	adds r6, r1, #0
	cmp r0, #0
	bne _0804BCDC
	ldr r0, _0804BC2C
	ldrb r0, [r0]
	cmp r0, #0
	beq _0804BC34
	ldr r1, _0804BC30
	ldrb r0, [r1]
	adds r0, #1
	b _0804BC3A
	.align 2, 0
_0804BC2C: .4byte 0x0203F8DB
_0804BC30: .4byte 0x0203F8D5
_0804BC34:
	ldr r1, _0804BCB4
	ldrb r0, [r1]
	subs r0, #2
_0804BC3A:
	strb r0, [r1]
	movs r4, #0
	movs r5, #0
	strh r5, [r6]
	adds r0, r7, #0
	movs r1, #0
	bl sub_8047A08
	mov r0, r8
	adds r0, #0xa0
	ldr r3, _0804BCB8
	adds r1, r7, #0
	adds r1, #0x64
	ldrb r2, [r1]
	lsrs r2, r2, #4
	lsls r2, r2, #2
	adds r2, r2, r3
	ldrh r1, [r2]
	ldrb r3, [r2, #2]
	movs r2, #0
	bl sub_8003368
	movs r0, #0x5a
	strh r0, [r6]
	ldr r0, _0804BCBC
	strb r4, [r0]
	ldr r0, _0804BCC0
	strb r4, [r0]
	ldr r0, _0804BCC4
	str r5, [r0]
	ldr r1, _0804BCC8
	ldrb r0, [r1]
	cmp r0, #0
	bne _0804BCE6
	movs r0, #1
	strb r0, [r1]
	ldr r0, _0804BCCC
	ldrb r0, [r0]
	cmp r0, #0
	beq _0804BCE6
	ldr r2, _0804BCD0
	movs r4, #0xb6
	lsls r4, r4, #3
	adds r0, r2, r4
	ldrh r0, [r0]
	ldr r3, _0804BCD4
	adds r4, #2
	adds r1, r2, r4
	ldrb r3, [r3]
	adds r1, r1, r3
	ldrb r1, [r1]
	ldr r3, _0804BCD8
	adds r2, r2, r3
	ldr r2, [r2]
	movs r4, #0x80
	lsls r4, r4, #9
	adds r2, r2, r4
	bl audio_new_fx
	b _0804BCE6
	.align 2, 0
_0804BCB4: .4byte 0x0203F8D5
_0804BCB8: .4byte 0x080B1240
_0804BCBC: .4byte 0x0203F8BC
_0804BCC0: .4byte 0x0203F8DA
_0804BCC4: .4byte 0x0203F8B8
_0804BCC8: .4byte 0x0203F8D9
_0804BCCC: .4byte gCanPlaySfx
_0804BCD0: .4byte 0x080CE440
_0804BCD4: .4byte gSfxVolume
_0804BCD8: .4byte 0x000005B4
_0804BCDC:
	subs r0, #1
	strh r0, [r1]
	b _0804BCE6
_0804BCE2:
	.2byte 0xEE00, 0xEE00
_0804BCE6:
	add sp, #0x18
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	.thumb
sub_804BCF4: @ 0x0804BCF4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	adds r7, r0, #0
	adds r5, r1, #0
	adds r4, r7, #0
	adds r4, #0x65
	ldrb r6, [r4]
	cmp r6, #1
	beq _0804BDB8
	cmp r6, #1
	bgt _0804BD18
	cmp r6, #0
	beq _0804BD2E
	b _0804C1A0
_0804BD18:
	cmp r6, #2
	bne _0804BD1E
	b _0804BEFC
_0804BD1E:
	cmp r6, #0xe
	beq _0804BD24
	b _0804C1A0
_0804BD24:
	adds r0, r7, #0
	movs r1, #1
	bl sub_8047A08
	b _0804C1A4
_0804BD2E:
	adds r0, r7, #0
	movs r1, #0
	movs r2, #1
	movs r3, #1
	bl sub_08049574
	cmp r0, #0
	bne _0804BD40
	b _0804C1A4
_0804BD40:
	movs r7, #1
	strb r7, [r4]
	adds r0, r5, #0
	adds r0, #0xa0
	ldr r2, _0804BD98
	ldrh r1, [r2, #4]
	ldrb r3, [r2, #6]
	movs r2, #0
	bl sub_8003368
	ldr r0, _0804BD9C
	str r6, [r0]
	ldr r1, _0804BDA0
	ldrb r0, [r1]
	cmp r0, #0
	beq _0804BD62
	b _0804C1A4
_0804BD62:
	strb r7, [r1]
	ldr r0, _0804BDA4
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804BD6E
	b _0804C1A4
_0804BD6E:
	ldr r2, _0804BDA8
	movs r1, #0xb6
	lsls r1, r1, #3
	adds r0, r2, r1
	ldrh r0, [r0]
	ldr r3, _0804BDAC
	ldr r4, _0804BDB0
	adds r1, r2, r4
	ldrb r3, [r3]
	adds r1, r1, r3
	ldrb r1, [r1]
	ldr r6, _0804BDB4
	adds r2, r2, r6
	ldr r2, [r2]
	movs r3, #0x80
	lsls r3, r3, #9
	adds r2, r2, r3
	bl audio_new_fx
	b _0804C1A4
	.align 2, 0
_0804BD98: .4byte 0x080B1410
_0804BD9C: .4byte 0x0203F8B8
_0804BDA0: .4byte 0x0203F8D9
_0804BDA4: .4byte gCanPlaySfx
_0804BDA8: .4byte 0x080CE440
_0804BDAC: .4byte gSfxVolume
_0804BDB0: .4byte 0x000005B2
_0804BDB4: .4byte 0x000005B4
_0804BDB8:
	movs r0, #0x5e
	adds r0, r0, r7
	mov sb, r0
	ldrh r0, [r0]
	str r0, [sp, #0x18]
	cmp r0, #0
	beq _0804BDC8
	b _0804BEF4
_0804BDC8:
	movs r0, #2
	strb r0, [r4]
	adds r0, r7, #0
	bl sub_8047C60
	mov r8, r0
	bl sub_8048E0C
	adds r1, r0, #0
	adds r0, r7, #0
	bl sub_8049038
	adds r0, r5, #0
	adds r0, #0xa0
	ldr r1, _0804BEA8
	ldrb r2, [r4]
	lsls r2, r2, #2
	adds r2, r2, r1
	ldrh r1, [r2]
	ldrb r3, [r2, #2]
	movs r2, #0
	bl sub_8003368
	ldr r0, [r7, #0x2c]
	ldr r1, _0804BEAC
	mov sl, r1
	adds r5, r7, #0
	adds r5, #0x64
	ldrb r2, [r5]
	lsls r2, r2, #3
	add r2, sl
	ldr r4, _0804BEB0
	ldrb r1, [r4]
	ldr r2, [r2]
	lsls r1, r1, #4
	adds r1, r1, r2
	ldr r1, [r1, #0xc]
	mov r2, r8
	movs r3, #0
	bl sub_8003884
	ldrb r0, [r5]
	lsls r0, r0, #3
	add r0, sl
	ldrb r1, [r4]
	ldr r0, [r0]
	lsls r1, r1, #4
	adds r1, r1, r0
	ldrh r0, [r1, #8]
	mov r3, sb
	strh r0, [r3]
	ldr r0, _0804BEB4
	ldr r4, [sp, #0x18]
	str r4, [r0]
	ldr r1, _0804BEB8
	ldrb r0, [r1]
	cmp r0, #0
	bne _0804BE6C
	strb r6, [r1]
	ldr r0, _0804BEBC
	ldrb r0, [r0]
	cmp r0, #0
	beq _0804BE6C
	ldr r2, _0804BEC0
	movs r6, #0xb6
	lsls r6, r6, #3
	adds r0, r2, r6
	ldrh r0, [r0]
	ldr r3, _0804BEC4
	ldr r4, _0804BEC8
	adds r1, r2, r4
	ldrb r3, [r3]
	adds r1, r1, r3
	ldrb r1, [r1]
	adds r6, #4
	adds r2, r2, r6
	ldr r2, [r2]
	movs r3, #0x80
	lsls r3, r3, #9
	adds r2, r2, r3
	bl audio_new_fx
_0804BE6C:
	ldr r0, _0804BECC
	ldr r0, [r0]
	movs r1, #1
	movs r2, #1
	bl sub_8047430
	ldr r0, _0804BEBC
	ldrb r0, [r0]
	cmp r0, #0
	beq _0804BED8
	ldr r2, _0804BEC0
	movs r4, #0x89
	lsls r4, r4, #3
	adds r0, r2, r4
	ldrh r0, [r0]
	ldr r3, _0804BEC4
	ldr r6, _0804BED0
	adds r1, r2, r6
	ldrb r3, [r3]
	adds r1, r1, r3
	ldrb r1, [r1]
	ldr r3, _0804BED4
	adds r2, r2, r3
	ldr r2, [r2]
	movs r4, #0x80
	lsls r4, r4, #9
	adds r2, r2, r4
	bl audio_new_fx
	b _0804BEDC
	.align 2, 0
_0804BEA8: .4byte 0x080B1410
_0804BEAC: .4byte 0x080B19E0
_0804BEB0: .4byte 0x0203F8D5
_0804BEB4: .4byte 0x0203F8B8
_0804BEB8: .4byte 0x0203F8D9
_0804BEBC: .4byte gCanPlaySfx
_0804BEC0: .4byte 0x080CE440
_0804BEC4: .4byte gSfxVolume
_0804BEC8: .4byte 0x000005B2
_0804BECC: .4byte 0x0203F914
_0804BED0: .4byte 0x0000044A
_0804BED4: .4byte 0x0000044C
_0804BED8:
	movs r0, #1
	rsbs r0, r0, #0
_0804BEDC:
	str r0, [r7, #0x58]
	ldr r4, _0804BEF0
	ldr r0, [r4]
	movs r1, #0
	bl sub_8049038
	ldr r0, [r4]
	bl sub_804F130
	b _0804C1A4
	.align 2, 0
_0804BEF0: .4byte 0x0203F914
_0804BEF4:
	subs r0, #1
	mov r6, sb
	strh r0, [r6]
	b _0804C1A4
_0804BEFC:
	ldr r0, _0804BF50
	ldrb r0, [r0]
	cmp r0, #1
	beq _0804BF08
	.2byte 0xEE00, 0xEE00
_0804BF08:
	ldr r0, _0804BF54
	ldr r1, [r0]
	adds r0, r1, #0
	adds r0, #0x65
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804BF82
	adds r0, r1, #0
	movs r1, #1
	movs r2, #1
	bl sub_8047430
	ldr r0, _0804BF58
	ldrb r0, [r0]
	cmp r0, #0
	beq _0804BF6C
	ldr r2, _0804BF5C
	movs r1, #0x89
	lsls r1, r1, #3
	adds r0, r2, r1
	ldrh r0, [r0]
	ldr r3, _0804BF60
	ldr r4, _0804BF64
	adds r1, r2, r4
	ldrb r3, [r3]
	adds r1, r1, r3
	ldrb r1, [r1]
	ldr r6, _0804BF68
	adds r2, r2, r6
	ldr r2, [r2]
	movs r3, #0x80
	lsls r3, r3, #9
	adds r2, r2, r3
	bl audio_new_fx
	b _0804BF70
	.align 2, 0
_0804BF50: .4byte 0x0203F91D
_0804BF54: .4byte 0x0203F914
_0804BF58: .4byte gCanPlaySfx
_0804BF5C: .4byte 0x080CE440
_0804BF60: .4byte gSfxVolume
_0804BF64: .4byte 0x0000044A
_0804BF68: .4byte 0x0000044C
_0804BF6C:
	movs r0, #1
	rsbs r0, r0, #0
_0804BF70:
	str r0, [r7, #0x58]
	ldr r4, _0804BFCC
	ldr r0, [r4]
	movs r1, #0
	bl sub_8049038
	ldr r0, [r4]
	bl sub_804F130
_0804BF82:
	adds r0, r7, #0
	adds r0, #0x5e
	ldrh r1, [r0]
	mov sb, r0
	cmp r1, #0
	beq _0804BF90
	b _0804C0C0
_0804BF90:
	movs r0, #1
	adds r1, r7, #0
	adds r1, #0x65
	strb r0, [r1]
	ldr r0, _0804BFD0
	ldrb r0, [r0]
	adds r4, r1, #0
	cmp r0, #0
	beq _0804BFDC
	ldr r2, _0804BFD4
	movs r6, #0x9e
	lsls r6, r6, #2
	adds r0, r2, r6
	ldrh r0, [r0]
	ldr r3, _0804BFD8
	adds r6, #2
	adds r1, r2, r6
	ldrb r3, [r3]
	adds r1, r1, r3
	ldrb r1, [r1]
	movs r3, #0x9f
	lsls r3, r3, #2
	adds r2, r2, r3
	ldr r2, [r2]
	movs r6, #0x80
	lsls r6, r6, #9
	adds r2, r2, r6
	bl audio_new_fx
	b _0804BFE0
	.align 2, 0
_0804BFCC: .4byte 0x0203F914
_0804BFD0: .4byte gCanPlaySfx
_0804BFD4: .4byte 0x080CE440
_0804BFD8: .4byte gSfxVolume
_0804BFDC:
	movs r0, #1
	rsbs r0, r0, #0
_0804BFE0:
	str r0, [r7, #0x58]
	adds r0, r5, #0
	adds r0, #0xa0
	ldr r1, _0804C090
	ldrb r2, [r4]
	lsls r2, r2, #2
	adds r2, r2, r1
	ldrh r1, [r2]
	ldrb r3, [r2, #2]
	movs r2, #0
	bl sub_8003368
	ldr r0, [r7, #0x2c]
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_8003884
	ldr r2, _0804C094
	adds r0, r7, #0
	adds r0, #0x64
	ldrb r1, [r0]
	lsls r1, r1, #3
	adds r1, r1, r2
	ldr r0, _0804C098
	ldrb r0, [r0]
	ldr r1, [r1]
	lsls r0, r0, #4
	adds r0, r0, r1
	ldrb r0, [r0, #0xa]
	mov r1, sb
	strh r0, [r1]
	ldr r1, _0804C09C
	ldr r0, _0804C0A0
	str r0, [r1]
	ldr r1, _0804C0A4
	ldrb r0, [r1]
	cmp r0, #0
	beq _0804C060
	movs r0, #0
	strb r0, [r1]
	ldr r0, _0804C0A8
	ldrb r0, [r0]
	cmp r0, #0
	beq _0804C060
	ldr r2, _0804C0AC
	movs r3, #0xb7
	lsls r3, r3, #3
	adds r0, r2, r3
	ldrh r0, [r0]
	ldr r3, _0804C0B0
	ldr r4, _0804C0B4
	adds r1, r2, r4
	ldrb r3, [r3]
	adds r1, r1, r3
	ldrb r1, [r1]
	ldr r6, _0804C0B8
	adds r2, r2, r6
	ldr r2, [r2]
	movs r3, #0x80
	lsls r3, r3, #9
	adds r2, r2, r3
	bl audio_new_fx
_0804C060:
	ldr r4, _0804C0BC
	ldr r0, [r4]
	movs r1, #2
	movs r2, #1
	bl sub_8047430
	ldr r1, [r4]
	ldr r0, [r1]
	adds r0, #0xa0
	ldr r2, [r1, #0x28]
	ldrh r1, [r2, #4]
	ldrb r3, [r2, #8]
	movs r2, #0
	bl sub_8003368
	ldr r0, [r4]
	ldr r0, [r0, #0x2c]
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_8003884
	b _0804C1A4
	.align 2, 0
_0804C090: .4byte 0x080B1410
_0804C094: .4byte 0x080B19E0
_0804C098: .4byte 0x0203F8D5
_0804C09C: .4byte 0x0203F8B8
_0804C0A0: .4byte 0x00001FFF
_0804C0A4: .4byte 0x0203F8D9
_0804C0A8: .4byte gCanPlaySfx
_0804C0AC: .4byte 0x080CE440
_0804C0B0: .4byte gSfxVolume
_0804C0B4: .4byte 0x000005BA
_0804C0B8: .4byte 0x000005BC
_0804C0BC: .4byte 0x0203F914
_0804C0C0:
	ldr r0, [r7, #0x2c]
	add r1, sp, #0xc
	add r2, sp, #0x10
	add r3, sp, #0x14
	bl sub_80038C4
	movs r4, #0x94
	adds r4, r4, r5
	mov r8, r4
	ldr r0, [r4]
	ldr r1, [sp, #0xc]
	adds r0, r0, r1
	str r0, [sp]
	adds r6, r5, #0
	adds r6, #0x98
	ldr r0, [r6]
	str r0, [sp, #4]
	adds r4, r5, #0
	adds r4, #0x9c
	ldr r0, [r4]
	ldr r1, [sp, #0x14]
	adds r0, r0, r1
	str r0, [sp, #8]
	adds r0, r7, #0
	mov r1, sp
	movs r2, #1
	bl sub_080491DC
	cmp r0, #0
	bne _0804C104
	ldr r0, _0804C158
	ldrb r0, [r0]
	cmp r0, #0
	beq _0804C168
_0804C104:
	adds r0, r7, #0
	bl sub_8047C60
	mov r8, r0
	bl sub_8048E0C
	adds r1, r0, #0
	adds r0, r7, #0
	bl sub_8049038
	adds r0, r5, #0
	adds r0, #0xa0
	ldr r1, _0804C15C
	adds r2, r7, #0
	adds r2, #0x65
	ldrb r2, [r2]
	lsls r2, r2, #2
	adds r2, r2, r1
	ldrh r1, [r2]
	ldrb r3, [r2, #2]
	movs r2, #0
	bl sub_8003368
	ldr r0, [r7, #0x2c]
	ldr r3, _0804C160
	adds r1, r7, #0
	adds r1, #0x64
	ldrb r2, [r1]
	lsls r2, r2, #3
	adds r2, r2, r3
	ldr r1, _0804C164
	ldrb r1, [r1]
	ldr r2, [r2]
	lsls r1, r1, #4
	adds r1, r1, r2
	ldr r1, [r1, #0xc]
	mov r2, r8
	movs r3, #0
	bl sub_8003884
	b _0804C190
	.align 2, 0
_0804C158: .4byte 0x0203F8DC
_0804C15C: .4byte 0x080B1410
_0804C160: .4byte 0x080B19E0
_0804C164: .4byte 0x0203F8D5
_0804C168:
	ldr r0, [sp]
	mov r1, r8
	str r0, [r1]
	ldr r2, [sp, #4]
	str r2, [r6]
	ldr r1, [sp, #8]
	str r1, [r4]
	asrs r0, r0, #0x10
	strh r0, [r5, #2]
	ldr r0, _0804C19C
	adds r1, r1, r2
	asrs r1, r1, #0x10
	ldrh r0, [r0]
	subs r0, r0, r1
	strh r0, [r5, #4]
	adds r0, r7, #0
	movs r1, #2
	movs r2, #0
	bl sub_08047958
_0804C190:
	mov r3, sb
	ldrh r0, [r3]
	subs r0, #1
	strh r0, [r3]
	b _0804C1A4
	.align 2, 0
_0804C19C: .4byte gMapPixelSizeY
_0804C1A0:
	.2byte 0xEE00, 0xEE00
_0804C1A4:
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	.thumb
sub_804C1B4: @ 0x0804C1B4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x18
	adds r7, r0, #0
	adds r6, r1, #0
	adds r0, #0x65
	ldrb r0, [r0]
	cmp r0, #0xe
	bls _0804C1CE
	bl _0804CA9C
_0804C1CE:
	lsls r0, r0, #2
	ldr r1, _0804C1D8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0804C1D8: .4byte 0x0804C1DC
_0804C1DC: @ jump table
	.4byte _0804C224 @ case 0
	.4byte _0804C290 @ case 1
	.4byte _0804CA9C @ case 2
	.4byte _0804C334 @ case 3
	.4byte _0804C540 @ case 4
	.4byte _0804C7B4 @ case 5
	.4byte _0804CA9C @ case 6
	.4byte _0804CA9C @ case 7
	.4byte _0804CA9C @ case 8
	.4byte _0804CA9C @ case 9
	.4byte _0804CA9C @ case 10
	.4byte _0804CA9C @ case 11
	.4byte _0804C3CC @ case 12
	.4byte _0804C842 @ case 13
	.4byte _0804C218 @ case 14
_0804C218:
	adds r0, r7, #0
	movs r1, #1
	bl sub_8047A08
	bl _0804CAA0
_0804C224:
	adds r0, r7, #0
	movs r1, #0
	movs r2, #1
	movs r3, #1
	bl sub_08049574
	cmp r0, #0
	bne _0804C238
	bl _0804CAA0
_0804C238:
	movs r5, #1
	adds r0, r7, #0
	adds r0, #0x65
	movs r4, #0
	strb r5, [r0]
	adds r0, r6, #0
	adds r0, #0xa0
	ldr r2, _0804C27C
	ldrh r1, [r2, #4]
	ldrb r3, [r2, #6]
	movs r2, #0
	bl sub_8003368
	ldr r0, _0804C280
	str r4, [r0]
	ldr r1, _0804C284
	ldrb r0, [r1]
	cmp r0, #0
	beq _0804C262
	bl _0804CAA0
_0804C262:
	strb r5, [r1]
	ldr r0, _0804C288
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804C270
	bl _0804CAA0
_0804C270:
	ldr r2, _0804C28C
	movs r1, #0xb6
	lsls r1, r1, #3
	adds r0, r2, r1
	b _0804C38C
	.align 2, 0
_0804C27C: .4byte 0x080B13D0
_0804C280: .4byte 0x0203F8B8
_0804C284: .4byte 0x0203F8D9
_0804C288: .4byte gCanPlaySfx
_0804C28C: .4byte 0x080CE440
_0804C290:
	adds r0, r7, #0
	adds r0, #0x5e
	ldrh r1, [r0]
	adds r4, r1, #0
	mov sb, r0
	cmp r4, #0
	bne _0804C32C
	movs r1, #3
	adds r0, #7
	strb r1, [r0]
	adds r0, r6, #0
	adds r0, #0xa0
	ldr r2, _0804C308
	ldrh r1, [r2, #0xc]
	ldrb r3, [r2, #0xe]
	movs r2, #0
	bl sub_8003368
	ldr r1, _0804C30C
	ldrb r0, [r1]
	cmp r0, #0
	bne _0804C2C0
	.2byte 0xEE00, 0xEE00
_0804C2C0:
	subs r0, #1
	strb r0, [r1]
	ldr r0, _0804C310
	str r4, [r0]
	ldr r1, _0804C314
	ldrb r0, [r1]
	cmp r0, #0
	beq _0804C2D2
	b _0804C630
_0804C2D2:
	movs r0, #1
	strb r0, [r1]
	ldr r0, _0804C318
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804C2E0
	b _0804C630
_0804C2E0:
	ldr r2, _0804C31C
	movs r4, #0xb6
	lsls r4, r4, #3
	adds r0, r2, r4
	ldrh r0, [r0]
	ldr r3, _0804C320
	ldr r5, _0804C324
	adds r1, r2, r5
	ldrb r3, [r3]
	adds r1, r1, r3
	ldrb r1, [r1]
	ldr r3, _0804C328
	adds r2, r2, r3
	ldr r2, [r2]
	movs r4, #0x80
	lsls r4, r4, #9
	adds r2, r2, r4
	bl audio_new_fx
	b _0804C630
	.align 2, 0
_0804C308: .4byte 0x080B13D0
_0804C30C: .4byte 0x0203F8D4
_0804C310: .4byte 0x0203F8B8
_0804C314: .4byte 0x0203F8D9
_0804C318: .4byte gCanPlaySfx
_0804C31C: .4byte 0x080CE440
_0804C320: .4byte gSfxVolume
_0804C324: .4byte 0x000005B2
_0804C328: .4byte 0x000005B4
_0804C32C:
	subs r0, r1, #1
	mov r1, sb
	strh r0, [r1]
	b _0804CAA0
_0804C334:
	adds r1, r7, #0
	adds r1, #0x5e
	ldrh r0, [r1]
	adds r4, r0, #0
	cmp r4, #0
	beq _0804C342
	b _0804C83C
_0804C342:
	movs r0, #0xc
	adds r1, #7
	strb r0, [r1]
	adds r0, r6, #0
	adds r0, #0xa0
	ldr r1, _0804C3AC
	adds r2, r1, #0
	adds r2, #0x30
	ldrh r1, [r1, #0x30]
	ldrb r3, [r2, #2]
	movs r2, #0
	bl sub_8003368
	ldr r0, [r7, #0x2c]
	movs r1, #0xa0
	lsls r1, r1, #0xa
	movs r2, #0
	bl CallARM_store_jump_and_other_value
	ldr r0, _0804C3B0
	str r4, [r0]
	ldr r1, _0804C3B4
	ldrb r0, [r1]
	cmp r0, #0
	beq _0804C376
	b _0804CAA0
_0804C376:
	movs r0, #1
	strb r0, [r1]
	ldr r0, _0804C3B8
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804C384
	b _0804CAA0
_0804C384:
	ldr r2, _0804C3BC
	movs r3, #0xb6
	lsls r3, r3, #3
	adds r0, r2, r3
_0804C38C:
	ldrh r0, [r0]
	ldr r3, _0804C3C0
	ldr r4, _0804C3C4
	adds r1, r2, r4
	ldrb r3, [r3]
	adds r1, r1, r3
	ldrb r1, [r1]
	ldr r5, _0804C3C8
	adds r2, r2, r5
	ldr r2, [r2]
	movs r3, #0x80
	lsls r3, r3, #9
	adds r2, r2, r3
	bl audio_new_fx
	b _0804CAA0
	.align 2, 0
_0804C3AC: .4byte 0x080B13D0
_0804C3B0: .4byte 0x0203F8B8
_0804C3B4: .4byte 0x0203F8D9
_0804C3B8: .4byte gCanPlaySfx
_0804C3BC: .4byte 0x080CE440
_0804C3C0: .4byte gSfxVolume
_0804C3C4: .4byte 0x000005B2
_0804C3C8: .4byte 0x000005B4
_0804C3CC:
	ldr r0, [r7, #0x58]
	bl audio_fx_still_active
	cmp r0, #0
	bne _0804C422
	ldr r0, _0804C408
	ldrb r0, [r0]
	cmp r0, #0
	beq _0804C41C
	ldr r2, _0804C40C
	movs r4, #0xb3
	lsls r4, r4, #3
	adds r0, r2, r4
	ldrh r0, [r0]
	ldr r3, _0804C410
	ldr r5, _0804C414
	adds r1, r2, r5
	ldrb r3, [r3]
	adds r1, r1, r3
	ldrb r1, [r1]
	ldr r3, _0804C418
	adds r2, r2, r3
	ldr r2, [r2]
	movs r4, #0x80
	lsls r4, r4, #9
	adds r2, r2, r4
	bl audio_new_fx
	b _0804C420
	.align 2, 0
_0804C408: .4byte gCanPlaySfx
_0804C40C: .4byte 0x080CE440
_0804C410: .4byte gSfxVolume
_0804C414: .4byte 0x0000059A
_0804C418: .4byte 0x0000059C
_0804C41C:
	movs r0, #1
	rsbs r0, r0, #0
_0804C420:
	str r0, [r7, #0x58]
_0804C422:
	ldr r0, [r7, #0x2c]
	add r1, sp, #0xc
	add r2, sp, #0x10
	add r3, sp, #0x14
	bl sub_80038C4
	adds r3, r6, #0
	adds r3, #0x94
	ldr r0, [r3]
	ldr r1, [sp, #0xc]
	adds r0, r0, r1
	str r0, [r3]
	ldr r0, [r7, #0x54]
	ldr r1, [sp, #0x10]
	adds r0, r0, r1
	str r0, [r7, #0x54]
	asrs r0, r0, #0x10
	strb r0, [r6, #9]
	adds r2, r6, #0
	adds r2, #0x9c
	ldr r0, [r2]
	ldr r1, [sp, #0x14]
	adds r0, r0, r1
	str r0, [r2]
	movs r5, #2
	ldrsh r0, [r3, r5]
	strh r0, [r6, #2]
	ldr r3, _0804C484
	adds r0, r6, #0
	adds r0, #0x98
	ldr r1, [r2]
	ldr r0, [r0]
	adds r1, r1, r0
	asrs r1, r1, #0x10
	ldrh r0, [r3]
	subs r0, r0, r1
	strh r0, [r6, #4]
	adds r3, r6, #0
	adds r3, #0xbc
	ldrb r2, [r6, #9]
	ldr r0, _0804C488
	ldr r1, [r0]
	cmp r2, r1
	blt _0804C490
	ldr r0, _0804C48C
	subs r1, #1
	adds r1, r1, r0
	ldrb r0, [r1]
	b _0804C496
	.align 2, 0
_0804C484: .4byte gMapPixelSizeY
_0804C488: .4byte 0x080CEBC4
_0804C48C: .4byte 0x080CEB84
_0804C490:
	ldr r0, _0804C52C
	adds r0, r2, r0
	ldrb r0, [r0]
_0804C496:
	asrs r1, r0, #1
	adds r0, r3, #0
	bl sub_80037F4
	adds r0, r7, #0
	movs r1, #2
	movs r2, #0
	bl sub_08047958
	ldr r1, [r7, #0x54]
	ldr r0, _0804C530
	cmp r1, r0
	bgt _0804C4B2
	b _0804CAA0
_0804C4B2:
	adds r0, #1
	str r0, [r7, #0x54]
	movs r0, #0x64
	strb r0, [r6, #9]
	ldr r0, [r7, #0x2c]
	bl sub_800387C
	movs r0, #4
	adds r4, r7, #0
	adds r4, #0x65
	strb r0, [r4]
	adds r0, r7, #0
	bl sub_8047C60
	mov r8, r0
	bl sub_8048E0C
	adds r1, r0, #0
	adds r0, r7, #0
	bl sub_8049038
	adds r0, r6, #0
	adds r0, #0xa0
	ldr r1, _0804C534
	ldrb r2, [r4]
	lsls r2, r2, #2
	adds r2, r2, r1
	ldrh r1, [r2]
	ldrb r3, [r2, #2]
	movs r2, #0
	bl sub_8003368
	ldr r0, [r7, #0x2c]
	ldr r6, _0804C538
	adds r5, r7, #0
	adds r5, #0x64
	ldrb r2, [r5]
	lsls r2, r2, #3
	adds r2, r2, r6
	ldr r4, _0804C53C
	ldrb r1, [r4]
	ldr r2, [r2]
	lsls r1, r1, #4
	adds r1, r1, r2
	ldr r1, [r1, #0xc]
	mov r2, r8
	movs r3, #0
	bl sub_8003884
	ldrb r0, [r5]
	lsls r0, r0, #3
	adds r0, r0, r6
	ldrb r1, [r4]
	ldr r0, [r0]
	lsls r1, r1, #4
	adds r1, r1, r0
	ldrh r1, [r1, #8]
	adds r0, r7, #0
	adds r0, #0x5e
	strh r1, [r0]
	b _0804CAA0
	.align 2, 0
_0804C52C: .4byte 0x080CEB84
_0804C530: .4byte 0x0063FFFF
_0804C534: .4byte 0x080B13D0
_0804C538: .4byte 0x080B19E0
_0804C53C: .4byte 0x0203F8D5
_0804C540:
	ldr r0, [r7, #0x58]
	bl audio_fx_still_active
	cmp r0, #0
	bne _0804C596
	ldr r0, _0804C57C
	ldrb r0, [r0]
	cmp r0, #0
	beq _0804C590
	ldr r2, _0804C580
	movs r1, #0xb3
	lsls r1, r1, #3
	adds r0, r2, r1
	ldrh r0, [r0]
	ldr r3, _0804C584
	ldr r4, _0804C588
	adds r1, r2, r4
	ldrb r3, [r3]
	adds r1, r1, r3
	ldrb r1, [r1]
	ldr r5, _0804C58C
	adds r2, r2, r5
	ldr r2, [r2]
	movs r3, #0x80
	lsls r3, r3, #9
	adds r2, r2, r3
	bl audio_new_fx
	b _0804C594
	.align 2, 0
_0804C57C: .4byte gCanPlaySfx
_0804C580: .4byte 0x080CE440
_0804C584: .4byte gSfxVolume
_0804C588: .4byte 0x0000059A
_0804C58C: .4byte 0x0000059C
_0804C590:
	movs r0, #1
	rsbs r0, r0, #0
_0804C594:
	str r0, [r7, #0x58]
_0804C596:
	ldr r0, _0804C638
	ldrb r0, [r0]
	cmp r0, #2
	beq _0804C5A2
	.2byte 0xEE00, 0xEE00
_0804C5A2:
	ldr r0, [r7, #0x2c]
	add r1, sp, #0xc
	add r2, sp, #0x10
	add r3, sp, #0x14
	bl sub_80038C4
	movs r4, #0x94
	adds r4, r4, r6
	mov r8, r4
	ldr r0, [r4]
	ldr r1, [sp, #0xc]
	adds r0, r0, r1
	str r0, [sp]
	adds r5, r6, #0
	adds r5, #0x98
	ldr r0, [r5]
	str r0, [sp, #4]
	adds r4, r6, #0
	adds r4, #0x9c
	ldr r0, [r4]
	ldr r1, [sp, #0x14]
	adds r0, r0, r1
	str r0, [sp, #8]
	adds r0, r7, #0
	adds r0, #0x5e
	ldrh r1, [r0]
	mov sb, r0
	cmp r1, #0
	bne _0804C648
	movs r0, #5
	adds r4, r7, #0
	adds r4, #0x65
	strb r0, [r4]
	ldr r0, [r7, #0x58]
	bl audio_fx_still_active
	cmp r0, #0
	beq _0804C5FC
	ldr r0, _0804C63C
	ldrb r0, [r0]
	cmp r0, #0
	beq _0804C5FC
	ldr r0, [r7, #0x58]
	bl audio_halt_fx
_0804C5FC:
	adds r0, r6, #0
	adds r0, #0xa0
	ldr r1, _0804C640
	ldrb r2, [r4]
	lsls r2, r2, #2
	adds r2, r2, r1
	ldrh r1, [r2]
	ldrb r3, [r2, #2]
	movs r2, #0
	bl sub_8003368
	ldr r0, [r7, #0x2c]
	bl sub_800387C
	ldr r0, [r7, #0x2c]
	ldr r2, _0804C644
	adds r1, r6, #0
	adds r1, #0xaa
	ldrb r1, [r1]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r2, [r1]
	movs r1, #0
	movs r3, #0
	bl sub_8003884
_0804C630:
	movs r0, #0x2a
	mov r5, sb
	strh r0, [r5]
	b _0804CAA0
	.align 2, 0
_0804C638: .4byte 0x0203F91E
_0804C63C: .4byte gCanPlaySfx
_0804C640: .4byte 0x080B13D0
_0804C644: .4byte dword_80CC290
_0804C648:
	adds r0, r7, #0
	mov r1, sp
	movs r2, #1
	bl sub_080491DC
	cmp r0, #0
	bne _0804C65E
	ldr r0, _0804C6B0
	ldrb r0, [r0]
	cmp r0, #0
	beq _0804C6C0
_0804C65E:
	adds r0, r7, #0
	bl sub_8047C60
	mov r8, r0
	bl sub_8048E0C
	adds r1, r0, #0
	adds r0, r7, #0
	bl sub_8049038
	adds r0, r6, #0
	adds r0, #0xa0
	ldr r1, _0804C6B4
	adds r2, r7, #0
	adds r2, #0x65
	ldrb r2, [r2]
	lsls r2, r2, #2
	adds r2, r2, r1
	ldrh r1, [r2]
	ldrb r3, [r2, #2]
	movs r2, #0
	bl sub_8003368
	ldr r0, [r7, #0x2c]
	ldr r3, _0804C6B8
	adds r1, r7, #0
	adds r1, #0x64
	ldrb r2, [r1]
	lsls r2, r2, #3
	adds r2, r2, r3
	ldr r1, _0804C6BC
	ldrb r1, [r1]
	ldr r2, [r2]
	lsls r1, r1, #4
	adds r1, r1, r2
	ldr r1, [r1, #0xc]
	mov r2, r8
	movs r3, #0
	bl sub_8003884
	b _0804C6E8
	.align 2, 0
_0804C6B0: .4byte 0x0203F8DC
_0804C6B4: .4byte 0x080B13D0
_0804C6B8: .4byte 0x080B19E0
_0804C6BC: .4byte 0x0203F8D5
_0804C6C0:
	ldr r0, [sp]
	mov r1, r8
	str r0, [r1]
	ldr r2, [sp, #4]
	str r2, [r5]
	ldr r1, [sp, #8]
	str r1, [r4]
	asrs r0, r0, #0x10
	strh r0, [r6, #2]
	ldr r0, _0804C708
	adds r1, r1, r2
	asrs r1, r1, #0x10
	ldrh r0, [r0]
	subs r0, r0, r1
	strh r0, [r6, #4]
	adds r0, r7, #0
	movs r1, #2
	movs r2, #0
	bl sub_08047958
_0804C6E8:
	mov r3, sb
	ldrh r0, [r3]
	subs r0, #1
	strh r0, [r3]
	adds r3, r6, #0
	adds r3, #0xbc
	ldrb r2, [r6, #9]
	ldr r0, _0804C70C
	ldr r1, [r0]
	cmp r2, r1
	blt _0804C714
	ldr r0, _0804C710
	subs r1, #1
	adds r1, r1, r0
	ldrb r0, [r1]
	b _0804C71A
	.align 2, 0
_0804C708: .4byte gMapPixelSizeY
_0804C70C: .4byte 0x080CEBC4
_0804C710: .4byte 0x080CEB84
_0804C714:
	ldr r0, _0804C7A8
	adds r0, r2, r0
	ldrb r0, [r0]
_0804C71A:
	asrs r1, r0, #1
	adds r0, r3, #0
	bl sub_80037F4
	movs r2, #0
	movs r5, #0
	ldr r0, _0804C7AC
	ldrb r0, [r0]
	cmp r5, r0
	bhs _0804C74C
	ldr r3, _0804C7B0
	adds r1, r0, #0
_0804C732:
	lsls r0, r5, #2
	adds r0, r0, r3
	ldr r0, [r0]
	adds r0, #0x65
	ldrb r0, [r0]
	cmp r0, #1
	bne _0804C742
	movs r2, #1
_0804C742:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, r1
	blo _0804C732
_0804C74C:
	movs r5, #0
	cmp r2, #0
	beq _0804C754
	b _0804CAA0
_0804C754:
	ldr r0, _0804C7AC
	ldrb r0, [r0]
	cmp r5, r0
	blo _0804C75E
	b _0804CAA0
_0804C75E:
	ldr r0, _0804C7B0
	lsls r1, r5, #2
	adds r4, r1, r0
	ldr r1, [r4]
	adds r0, r1, #0
	adds r0, #0x65
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804C790
	adds r0, r1, #0
	movs r1, #1
	movs r2, #1
	bl sub_8047430
	ldr r0, [r4]
	bl sub_804F130
	ldr r1, [r4]
	ldr r0, [r1, #0x2c]
	ldr r1, [r1, #0x28]
	ldr r1, [r1]
	movs r2, #0
	bl CallARM_store_jump_and_other_value
	movs r2, #1
_0804C790:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r2, #0
	beq _0804C79C
	b _0804CAA0
_0804C79C:
	ldr r0, _0804C7AC
	ldrb r0, [r0]
	cmp r5, r0
	blo _0804C75E
	b _0804CAA0
	.align 2, 0
_0804C7A8: .4byte 0x080CEB84
_0804C7AC: .4byte 0x0203F91E
_0804C7B0: .4byte 0x0203F90C
_0804C7B4:
	adds r3, r6, #0
	adds r3, #0xbc
	ldrb r2, [r6, #9]
	ldr r0, _0804C7CC
	ldr r1, [r0]
	cmp r2, r1
	blt _0804C7D4
	ldr r0, _0804C7D0
	subs r1, #1
	adds r1, r1, r0
	ldrb r0, [r1]
	b _0804C7DA
	.align 2, 0
_0804C7CC: .4byte 0x080CEBC4
_0804C7D0: .4byte 0x080CEB84
_0804C7D4:
	ldr r0, _0804C82C
	adds r0, r2, r0
	ldrb r0, [r0]
_0804C7DA:
	asrs r1, r0, #1
	adds r0, r3, #0
	bl sub_80037F4
	adds r1, r7, #0
	adds r1, #0x5e
	ldrh r0, [r1]
	cmp r0, #0
	bne _0804C83C
	movs r0, #0xd
	adds r1, #7
	strb r0, [r1]
	adds r0, r6, #0
	adds r0, #0xa0
	ldr r1, _0804C830
	adds r2, r1, #0
	adds r2, #0x34
	ldrh r1, [r1, #0x34]
	ldrb r3, [r2, #2]
	movs r2, #0
	bl sub_8003368
	ldr r0, [r7, #0x2c]
	ldr r2, _0804C834
	adds r1, r6, #0
	adds r1, #0xaa
	ldrb r1, [r1]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r2, [r1]
	movs r1, #0
	movs r3, #0
	bl sub_8003884
	ldr r0, [r7, #0x2c]
	ldr r1, _0804C838
	movs r2, #0
	bl CallARM_store_jump_and_other_value
	b _0804CAA0
	.align 2, 0
_0804C82C: .4byte 0x080CEB84
_0804C830: .4byte 0x080B13D0
_0804C834: .4byte dword_80CC290
_0804C838: .4byte 0xFFFB0000
_0804C83C:
	subs r0, #1
	strh r0, [r1]
	b _0804CAA0
_0804C842:
	ldr r0, [r7, #0x2c]
	add r1, sp, #0xc
	add r2, sp, #0x10
	add r3, sp, #0x14
	bl sub_80038C4
	adds r3, r6, #0
	adds r3, #0x94
	ldr r0, [r3]
	ldr r1, [sp, #0xc]
	adds r0, r0, r1
	str r0, [r3]
	ldr r0, [r7, #0x54]
	ldr r1, [sp, #0x10]
	adds r0, r0, r1
	str r0, [r7, #0x54]
	asrs r0, r0, #0x10
	strb r0, [r6, #9]
	adds r2, r6, #0
	adds r2, #0x9c
	ldr r0, [r2]
	ldr r1, [sp, #0x14]
	adds r0, r0, r1
	str r0, [r2]
	movs r4, #2
	ldrsh r0, [r3, r4]
	strh r0, [r6, #2]
	ldr r3, _0804C8A8
	adds r0, r6, #0
	adds r0, #0x98
	ldr r1, [r2]
	ldr r0, [r0]
	adds r1, r1, r0
	asrs r1, r1, #0x10
	ldrh r0, [r3]
	subs r0, r0, r1
	strh r0, [r6, #4]
	adds r3, r6, #0
	adds r3, #0xbc
	ldrb r2, [r6, #9]
	ldr r0, _0804C8AC
	ldr r1, [r0]
	adds r4, r3, #0
	cmp r2, r1
	blt _0804C8B4
	ldr r0, _0804C8B0
	subs r1, #1
	adds r1, r1, r0
	ldrb r0, [r1]
	b _0804C8BA
	.align 2, 0
_0804C8A8: .4byte gMapPixelSizeY
_0804C8AC: .4byte 0x080CEBC4
_0804C8B0: .4byte 0x080CEB84
_0804C8B4:
	ldr r0, _0804C8E4
	adds r0, r2, r0
	ldrb r0, [r0]
_0804C8BA:
	asrs r1, r0, #1
	adds r0, r3, #0
	bl sub_80037F4
	ldr r0, [r7, #0x54]
	cmp r0, #0
	ble _0804C8CA
	b _0804CA8A
_0804C8CA:
	movs r0, #0
	str r0, [r7, #0x54]
	strb r0, [r6, #9]
	adds r2, r4, #0
	ldr r0, _0804C8E8
	ldr r1, [r0]
	cmp r1, #0
	bgt _0804C8EC
	ldr r0, _0804C8E4
	subs r1, #1
	adds r1, r1, r0
	ldrb r0, [r1]
	b _0804C8F0
	.align 2, 0
_0804C8E4: .4byte 0x080CEB84
_0804C8E8: .4byte 0x080CEBC4
_0804C8EC:
	ldr r0, _0804C960
	ldrb r0, [r0]
_0804C8F0:
	asrs r1, r0, #1
	adds r0, r2, #0
	bl sub_80037F4
	ldr r4, _0804C964
	ldrb r0, [r4]
	cmp r0, #0
	beq _0804C926
	ldr r2, _0804C968
	movs r5, #0x88
	lsls r5, r5, #3
	adds r0, r2, r5
	ldrh r0, [r0]
	ldr r3, _0804C96C
	adds r5, #2
	adds r1, r2, r5
	ldrb r3, [r3]
	adds r1, r1, r3
	ldrb r1, [r1]
	ldr r3, _0804C970
	adds r2, r2, r3
	ldr r2, [r2]
	movs r5, #0x80
	lsls r5, r5, #9
	adds r2, r2, r5
	bl audio_new_fx
_0804C926:
	ldr r0, _0804C974
	ldrb r0, [r0]
	cmp r0, #0
	beq _0804C930
	b _0804CA50
_0804C930:
	ldrb r0, [r4]
	cmp r0, #0
	beq _0804C97C
	ldr r2, _0804C968
	movs r1, #0x9e
	lsls r1, r1, #2
	adds r0, r2, r1
	ldrh r0, [r0]
	ldr r3, _0804C96C
	ldr r4, _0804C978
	adds r1, r2, r4
	ldrb r3, [r3]
	adds r1, r1, r3
	ldrb r1, [r1]
	movs r5, #0x9f
	lsls r5, r5, #2
	adds r2, r2, r5
	ldr r2, [r2]
	movs r3, #0x80
	lsls r3, r3, #9
	adds r2, r2, r3
	bl audio_new_fx
	b _0804C980
	.align 2, 0
_0804C960: .4byte 0x080CEB84
_0804C964: .4byte gCanPlaySfx
_0804C968: .4byte 0x080CE440
_0804C96C: .4byte gSfxVolume
_0804C970: .4byte 0x00000444
_0804C974: .4byte 0x0203F8D4
_0804C978: .4byte 0x0000027A
_0804C97C:
	movs r0, #1
	rsbs r0, r0, #0
_0804C980:
	str r0, [r7, #0x58]
	movs r0, #1
	adds r1, r7, #0
	adds r1, #0x65
	strb r0, [r1]
	adds r0, r7, #0
	movs r1, #4
	bl sub_8049038
	adds r0, r6, #0
	adds r0, #0xa0
	ldr r1, _0804CA20
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r0, [r7, #0x2c]
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_8003884
	ldr r1, _0804CA24
	ldr r0, _0804CA28
	str r0, [r1]
	ldr r1, _0804CA2C
	ldrb r0, [r1]
	cmp r0, #0
	beq _0804C9EC
	movs r0, #0
	strb r0, [r1]
	ldr r0, _0804CA30
	ldrb r0, [r0]
	cmp r0, #0
	beq _0804C9EC
	ldr r2, _0804CA34
	movs r4, #0xb7
	lsls r4, r4, #3
	adds r0, r2, r4
	ldrh r0, [r0]
	ldr r3, _0804CA38
	ldr r5, _0804CA3C
	adds r1, r2, r5
	ldrb r3, [r3]
	adds r1, r1, r3
	ldrb r1, [r1]
	ldr r3, _0804CA40
	adds r2, r2, r3
	ldr r2, [r2]
	movs r4, #0x80
	lsls r4, r4, #9
	adds r2, r2, r4
	bl audio_new_fx
_0804C9EC:
	ldr r5, _0804CA44
	ldr r4, _0804CA48
	adds r3, r7, #0
	adds r3, #0x64
	ldrb r1, [r3]
	lsls r1, r1, #3
	adds r1, r1, r4
	ldr r2, _0804CA4C
	ldrb r0, [r2]
	ldr r1, [r1]
	lsls r0, r0, #4
	adds r0, r0, r1
	ldrb r0, [r0, #4]
	strb r0, [r5]
	ldrb r0, [r3]
	lsls r0, r0, #3
	adds r0, r0, r4
	ldrb r1, [r2]
	ldr r0, [r0]
	lsls r1, r1, #4
	adds r1, r1, r0
	ldrb r0, [r1, #0xa]
	adds r1, r7, #0
	adds r1, #0x5e
	strh r0, [r1]
	b _0804CA8A
	.align 2, 0
_0804CA20: .4byte 0x000002ED
_0804CA24: .4byte 0x0203F8B8
_0804CA28: .4byte 0x00001FFF
_0804CA2C: .4byte 0x0203F8D9
_0804CA30: .4byte gCanPlaySfx
_0804CA34: .4byte 0x080CE440
_0804CA38: .4byte gSfxVolume
_0804CA3C: .4byte 0x000005BA
_0804CA40: .4byte 0x000005BC
_0804CA44: .4byte 0x0203F8D4
_0804CA48: .4byte 0x080B19E0
_0804CA4C: .4byte 0x0203F8D5
_0804CA50:
	movs r0, #1
	adds r5, r7, #0
	adds r5, #0x65
	movs r4, #0
	strb r0, [r5]
	adds r0, r7, #0
	movs r1, #4
	bl sub_8049038
	adds r0, r6, #0
	adds r0, #0xa0
	ldr r1, _0804CA98
	ldrb r2, [r5]
	lsls r2, r2, #2
	adds r2, r2, r1
	ldrh r1, [r2]
	ldrb r3, [r2, #2]
	movs r2, #0
	bl sub_8003368
	ldr r0, [r7, #0x2c]
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_8003884
	adds r0, r7, #0
	adds r0, #0x5e
	strh r4, [r0]
_0804CA8A:
	adds r0, r7, #0
	movs r1, #2
	movs r2, #0
	bl sub_08047958
	b _0804CAA0
	.align 2, 0
_0804CA98: .4byte 0x080B13D0
_0804CA9C:
	.2byte 0xEE00, 0xEE00
_0804CAA0:
	add sp, #0x18
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	.thumb
sub_804CAB0: @ 0x0804CAB0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	mov r8, r0
	adds r7, r1, #0
	mov r4, r8
	adds r4, #0x65
	ldrb r0, [r4]
	cmp r0, #4
	bne _0804CACC
	b _0804CC98
_0804CACC:
	cmp r0, #4
	ble _0804CAE0
	cmp r0, #0xe
	beq _0804CAD6
	b _0804CDF4
_0804CAD6:
	mov r0, r8
	movs r1, #0
	bl sub_8047A08
	b _0804CDF8
_0804CAE0:
	cmp r0, #1
	ble _0804CAE6
	b _0804CDF4
_0804CAE6:
	cmp r0, #0
	bge _0804CAEC
	b _0804CDF4
_0804CAEC:
	movs r0, #0x5e
	add r0, r8
	mov sl, r0
	ldrh r0, [r0]
	cmp r0, #0
	beq _0804CAFA
	b _0804CC90
_0804CAFA:
	ldr r1, _0804CC58
	ldrb r0, [r1]
	cmp r0, #2
	beq _0804CB06
	.2byte 0xEE00, 0xEE00
_0804CB06:
	movs r0, #4
	strb r0, [r4]
	mov r0, r8
	bl sub_8047C60
	mov sb, r0
	bl sub_8048E0C
	adds r1, r0, #0
	mov r0, r8
	bl sub_8049038
	adds r0, r7, #0
	adds r0, #0xa0
	ldr r1, _0804CC5C
	ldrb r2, [r4]
	lsls r2, r2, #2
	adds r2, r2, r1
	ldrh r1, [r2]
	ldrb r3, [r2, #2]
	movs r2, #0
	bl sub_8003368
	mov r2, r8
	ldr r0, [r2, #0x2c]
	ldr r6, _0804CC60
	mov r5, r8
	adds r5, #0x64
	ldrb r2, [r5]
	lsls r2, r2, #3
	adds r2, r2, r6
	ldr r4, _0804CC64
	ldrb r1, [r4]
	ldr r2, [r2]
	lsls r1, r1, #4
	adds r1, r1, r2
	ldr r1, [r1, #0xc]
	mov r2, sb
	movs r3, #0
	bl sub_8003884
	ldrb r0, [r5]
	lsls r0, r0, #3
	adds r0, r0, r6
	ldrb r1, [r4]
	ldr r0, [r0]
	lsls r1, r1, #4
	adds r1, r1, r0
	ldrh r0, [r1, #8]
	mov r3, sl
	strh r0, [r3]
	movs r0, #0x88
	lsls r0, r0, #0xe
	str r0, [r7, #0x4c]
	str r0, [r7, #0x50]
	str r0, [r7, #0x54]
	mov r0, r8
	movs r1, #2
	movs r2, #0
	bl sub_08047958
	ldr r1, _0804CC68
	ldrb r0, [r1]
	cmp r0, #0
	bne _0804CB9A
	movs r0, #1
	strb r0, [r1]
	adds r1, r7, #0
	adds r1, #0x46
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	bl sub_8047BEC
_0804CB9A:
	movs r6, #0
	ldr r4, _0804CC58
	ldrb r4, [r4]
	cmp r6, r4
	bhs _0804CC0E
_0804CBA4:
	ldr r0, _0804CC6C
	lsls r4, r6, #2
	adds r4, r4, r0
	ldr r0, [r4]
	movs r1, #1
	movs r2, #1
	bl sub_8047430
	ldr r1, [r4]
	mov r2, r8
	ldr r0, [r2, #0x30]
	str r0, [r1, #0x30]
	ldr r0, [r2, #0x34]
	str r0, [r1, #0x34]
	ldr r0, [r2, #0x38]
	str r0, [r1, #0x38]
	ldr r0, [r2, #0x3c]
	str r0, [r1, #0x3c]
	ldr r1, [r1]
	ldr r0, [r7, #0x64]
	str r0, [r1, #0x64]
	ldr r0, [r7, #0x68]
	str r0, [r1, #0x68]
	ldr r0, [r7, #0x6c]
	str r0, [r1, #0x6c]
	ldr r0, [r7, #0x70]
	str r0, [r1, #0x70]
	ldr r0, [r7, #0x74]
	str r0, [r1, #0x74]
	ldr r0, [r7, #0x78]
	str r0, [r1, #0x78]
	ldr r0, [r7, #0x4c]
	str r0, [r1, #0x4c]
	ldr r0, [r7, #0x50]
	str r0, [r1, #0x50]
	ldr r0, [r7, #0x54]
	str r0, [r1, #0x54]
	ldrb r0, [r7, #0x14]
	strb r0, [r1, #0x14]
	ldr r0, [r4]
	ldr r1, [r0]
	ldrb r0, [r7, #0x18]
	strb r0, [r1, #0x18]
	ldr r0, [r4]
	bl sub_804F130
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	ldr r0, _0804CC58
	ldrb r0, [r0]
	cmp r6, r0
	blo _0804CBA4
_0804CC0E:
	ldr r0, _0804CC70
	movs r1, #0x1f
	str r1, [r0]
	ldr r1, _0804CC74
	ldrb r0, [r1]
	cmp r0, #0
	beq _0804CC4E
	movs r0, #0
	strb r0, [r1]
	ldr r0, _0804CC78
	ldrb r0, [r0]
	cmp r0, #0
	beq _0804CC4E
	ldr r2, _0804CC7C
	movs r3, #0xb7
	lsls r3, r3, #3
	adds r0, r2, r3
	ldrh r0, [r0]
	ldr r3, _0804CC80
	ldr r4, _0804CC84
	adds r1, r2, r4
	ldrb r3, [r3]
	adds r1, r1, r3
	ldrb r1, [r1]
	ldr r3, _0804CC88
	adds r2, r2, r3
	ldr r2, [r2]
	movs r4, #0x80
	lsls r4, r4, #9
	adds r2, r2, r4
	bl audio_new_fx
_0804CC4E:
	ldr r1, _0804CC8C
	movs r0, #0
	strb r0, [r1]
	b _0804CDF8
	.align 2, 0
_0804CC58: .4byte 0x0203F91C
_0804CC5C: .4byte 0x080B1310
_0804CC60: .4byte 0x080B19E0
_0804CC64: .4byte 0x0203F8D5
_0804CC68: .4byte 0x0203F8BC
_0804CC6C: .4byte 0x0203F904
_0804CC70: .4byte 0x0203F8B8
_0804CC74: .4byte 0x0203F8D9
_0804CC78: .4byte gCanPlaySfx
_0804CC7C: .4byte 0x080CE440
_0804CC80: .4byte gSfxVolume
_0804CC84: .4byte 0x000005BA
_0804CC88: .4byte 0x000005BC
_0804CC8C: .4byte 0x0203F8DB
_0804CC90:
	subs r0, #1
	mov r1, sl
	strh r0, [r1]
	b _0804CDF8
_0804CC98:
	mov r2, r8
	ldr r0, [r2, #0x2c]
	add r1, sp, #0xc
	add r2, sp, #0x10
	add r3, sp, #0x14
	bl sub_80038C4
	adds r4, r7, #0
	adds r4, #0x94
	ldr r0, [r4]
	ldr r1, [sp, #0xc]
	adds r0, r0, r1
	str r0, [sp]
	adds r3, r7, #0
	adds r3, #0x98
	ldr r0, [r3]
	str r0, [sp, #4]
	adds r2, r7, #0
	adds r2, #0x9c
	ldr r0, [r2]
	ldr r1, [sp, #0x14]
	adds r0, r0, r1
	str r0, [sp, #8]
	movs r5, #0
	movs r6, #0
	ldr r0, _0804CD3C
	ldrb r0, [r0]
	mov sb, r3
	mov sl, r2
	cmp r6, r0
	bhs _0804CCF4
	ldr r2, _0804CD40
	adds r1, r0, #0
_0804CCDA:
	lsls r0, r6, #2
	adds r0, r0, r2
	ldr r0, [r0]
	adds r0, #0x65
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804CCEA
	movs r5, #1
_0804CCEA:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, r1
	blo _0804CCDA
_0804CCF4:
	cmp r5, #0
	beq _0804CD48
	movs r1, #1
	rsbs r1, r1, #0
	movs r0, #2
	movs r2, #2
	bl sub_80192D4
	movs r6, #0
	ldr r0, _0804CD3C
	mov r5, r8
	adds r5, #0x65
	ldrb r0, [r0]
	cmp r6, r0
	bhs _0804CD30
	ldr r4, _0804CD40
_0804CD14:
	lsls r0, r6, #2
	adds r0, r0, r4
	ldr r0, [r0]
	movs r1, #0
	movs r2, #0
	bl sub_8047430
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	ldr r0, _0804CD3C
	ldrb r0, [r0]
	cmp r6, r0
	blo _0804CD14
_0804CD30:
	movs r0, #1
	movs r1, #0
	strb r0, [r5]
	ldr r0, _0804CD44
	str r1, [r0]
	b _0804CDF8
	.align 2, 0
_0804CD3C: .4byte 0x0203F91C
_0804CD40: .4byte 0x0203F904
_0804CD44: .4byte 0x0203F8B8
_0804CD48:
	mov r0, r8
	mov r1, sp
	movs r2, #1
	bl sub_080491DC
	cmp r0, #0
	bne _0804CD5E
	ldr r0, _0804CDB4
	ldrb r0, [r0]
	cmp r0, #0
	beq _0804CDC4
_0804CD5E:
	mov r0, r8
	bl sub_8047C60
	mov sb, r0
	bl sub_8048E0C
	adds r1, r0, #0
	mov r0, r8
	bl sub_8049038
	adds r0, r7, #0
	adds r0, #0xa0
	ldr r1, _0804CDB8
	mov r2, r8
	adds r2, #0x65
	ldrb r2, [r2]
	lsls r2, r2, #2
	adds r2, r2, r1
	ldrh r1, [r2]
	ldrb r3, [r2, #2]
	movs r2, #0
	bl sub_8003368
	mov r3, r8
	ldr r0, [r3, #0x2c]
	ldr r3, _0804CDBC
	mov r1, r8
	adds r1, #0x64
	ldrb r2, [r1]
	lsls r2, r2, #3
	adds r2, r2, r3
	ldr r1, _0804CDC0
	ldrb r1, [r1]
	ldr r2, [r2]
	lsls r1, r1, #4
	adds r1, r1, r2
	ldr r1, [r1, #0xc]
	mov r2, sb
	movs r3, #0
	bl sub_8003884
	b _0804CDF8
	.align 2, 0
_0804CDB4: .4byte 0x0203F8DC
_0804CDB8: .4byte 0x080B1310
_0804CDBC: .4byte 0x080B19E0
_0804CDC0: .4byte 0x0203F8D5
_0804CDC4:
	ldr r0, [sp]
	str r0, [r4]
	ldr r2, [sp, #4]
	mov r4, sb
	str r2, [r4]
	ldr r1, [sp, #8]
	mov r3, sl
	str r1, [r3]
	asrs r0, r0, #0x10
	strh r0, [r7, #2]
	ldr r0, _0804CDF0
	adds r1, r1, r2
	asrs r1, r1, #0x10
	ldrh r0, [r0]
	subs r0, r0, r1
	strh r0, [r7, #4]
	mov r0, r8
	movs r1, #2
	movs r2, #0
	bl sub_08047958
	b _0804CDF8
	.align 2, 0
_0804CDF0: .4byte gMapPixelSizeY
_0804CDF4:
	.2byte 0xEE00, 0xEE00
_0804CDF8:
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	.thumb
sub_804CE08: @ 0x0804CE08
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	adds r6, r0, #0
	mov r8, r1
	adds r0, #0x65
	ldrb r0, [r0]
	cmp r0, #0xe
	bls _0804CE22
	b _0804D528
_0804CE22:
	lsls r0, r0, #2
	ldr r1, _0804CE2C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0804CE2C: .4byte 0x0804CE30
_0804CE30: @ jump table
	.4byte _0804CEB8 @ case 0
	.4byte _0804CF04 @ case 1
	.4byte _0804D390 @ case 2
	.4byte _0804D528 @ case 3
	.4byte _0804D234 @ case 4
	.4byte _0804CFA0 @ case 5
	.4byte _0804D03E @ case 6
	.4byte _0804D528 @ case 7
	.4byte _0804D528 @ case 8
	.4byte _0804D528 @ case 9
	.4byte _0804D528 @ case 10
	.4byte _0804D528 @ case 11
	.4byte _0804D528 @ case 12
	.4byte _0804D528 @ case 13
	.4byte _0804CE6C @ case 14
_0804CE6C:
	mov r4, r8
	adds r4, #0xa0
	adds r0, r4, #0
	bl sub_8003770
	cmp r0, #0
	beq _0804CEA8
	mov r0, r8
	adds r0, #0x94
	bl sub_80494FC
	adds r7, r0, #0
	bl sub_8048E0C
	adds r1, r0, #0
	adds r0, r6, #0
	bl sub_8049038
	ldr r1, _0804CEB4
	adds r0, r6, #0
	adds r0, #0x65
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrh r1, [r0]
	ldrb r3, [r0, #2]
	adds r0, r4, #0
	movs r2, #0
	bl sub_8003368
_0804CEA8:
	adds r0, r6, #0
	movs r1, #1
	bl sub_8047A08
	b _0804D52C
	.align 2, 0
_0804CEB4: .4byte 0x080B14D0
_0804CEB8:
	adds r0, r6, #0
	movs r1, #0
	movs r2, #1
	movs r3, #1
	bl sub_08049574
	cmp r0, #0
	bne _0804CECA
	b _0804D52C
_0804CECA:
	movs r5, #1
	adds r0, r6, #0
	adds r0, #0x65
	movs r4, #0
	strb r5, [r0]
	mov r0, r8
	adds r0, #0xa0
	ldr r2, _0804CEF8
	ldrh r1, [r2, #4]
	ldrb r3, [r2, #6]
	movs r2, #0
	bl sub_8003368
	ldr r0, _0804CEFC
	str r4, [r0]
	ldr r1, _0804CF00
	ldrb r0, [r1]
	cmp r0, #0
	beq _0804CEF2
	b _0804D52C
_0804CEF2:
	strb r5, [r1]
	b _0804D41E
	.align 2, 0
_0804CEF8: .4byte 0x080B14D0
_0804CEFC: .4byte 0x0203F8B8
_0804CF00: .4byte 0x0203F8D9
_0804CF04:
	movs r4, #0xa0
	add r4, r8
	mov sb, r4
	mov r0, sb
	bl sub_8003770
	cmp r0, #0
	beq _0804CF42
	mov r0, r8
	adds r0, #0x94
	bl sub_80494FC
	adds r7, r0, #0
	bl sub_8048E0C
	adds r1, r0, #0
	adds r0, r6, #0
	bl sub_8049038
	ldr r1, _0804CF98
	adds r0, r6, #0
	adds r0, #0x65
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrh r1, [r0]
	ldrb r3, [r0, #2]
	mov r0, sb
	movs r2, #0
	bl sub_8003368
_0804CF42:
	adds r5, r6, #0
	adds r5, #0x5e
	ldrh r0, [r5]
	cmp r0, #0
	beq _0804CF4E
	b _0804D51C
_0804CF4E:
	movs r0, #5
	adds r4, r6, #0
	adds r4, #0x65
	strb r0, [r4]
	mov r0, r8
	adds r0, #0x94
	bl sub_80494FC
	adds r7, r0, #0
	bl sub_8048E0C
	adds r1, r0, #0
	adds r0, r6, #0
	bl sub_8049038
	ldr r1, _0804CF98
	ldrb r0, [r4]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrh r1, [r0]
	ldrb r3, [r0, #2]
	mov r0, sb
	movs r2, #0
	bl sub_8003368
	ldr r1, _0804CF9C
	ldrb r0, [r1]
	cmp r0, #0
	bne _0804CF8C
	.2byte 0xEE00, 0xEE00
_0804CF8C:
	subs r0, #1
	strb r0, [r1]
	movs r0, #0x18
	strh r0, [r5]
	b _0804D52C
	.align 2, 0
_0804CF98: .4byte 0x080B14D0
_0804CF9C: .4byte 0x0203F8D7
_0804CFA0:
	adds r0, r6, #0
	adds r0, #0x5e
	ldrh r1, [r0]
	mov sb, r0
	cmp r1, #0
	bne _0804D03A
	mov r4, r8
	adds r4, #0x94
	adds r0, r4, #0
	bl sub_80494FC
	adds r7, r0, #0
	bl sub_8048E0C
	adds r1, r0, #0
	adds r0, r6, #0
	bl sub_8049038
	ldr r0, _0804D018
	ldr r1, _0804D01C
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	beq _0804CFDE
	mov r5, r8
	ldrb r3, [r5, #8]
	movs r0, #0xa
	adds r1, r4, #0
	adds r2, r7, #0
	bl sub_802D888
_0804CFDE:
	movs r0, #6
	adds r1, r6, #0
	adds r1, #0x65
	strb r0, [r1]
	ldr r0, _0804D020
	ldrb r0, [r0]
	cmp r0, #0
	beq _0804D030
	ldr r2, _0804D024
	movs r1, #0xfe
	lsls r1, r1, #2
	adds r0, r2, r1
	ldrh r0, [r0]
	ldr r3, _0804D028
	ldr r4, _0804D02C
	adds r1, r2, r4
	ldrb r3, [r3]
	adds r1, r1, r3
	ldrb r1, [r1]
	movs r5, #0xff
	lsls r5, r5, #2
	adds r2, r2, r5
	ldr r2, [r2]
	movs r3, #0x80
	lsls r3, r3, #9
	adds r2, r2, r3
	bl audio_new_fx
	b _0804D034
	.align 2, 0
_0804D018: .4byte 0x0203DFD4
_0804D01C: .4byte 0x0203DFD5
_0804D020: .4byte gCanPlaySfx
_0804D024: .4byte 0x080CE440
_0804D028: .4byte gSfxVolume
_0804D02C: .4byte 0x000003FA
_0804D030:
	movs r0, #1
	rsbs r0, r0, #0
_0804D034:
	str r0, [r6, #0x58]
	movs r0, #8
	b _0804D218
_0804D03A:
	subs r0, r1, #1
	b _0804D22E
_0804D03E:
	movs r0, #0x5e
	adds r0, r0, r6
	mov sb, r0
	ldrh r0, [r0]
	cmp r0, #0
	beq _0804D04C
	b _0804D22C
_0804D04C:
	ldr r1, _0804D11C
	ldrb r0, [r1]
	cmp r0, #0
	beq _0804D056
	b _0804D1D8
_0804D056:
	movs r0, #3
	strb r0, [r1]
	ldr r5, _0804D120
	ldrb r0, [r5]
	cmp r0, #0
	bne _0804D150
	movs r0, #2
	adds r4, r6, #0
	adds r4, #0x65
	strb r0, [r4]
	adds r0, r6, #0
	bl sub_8047C60
	adds r5, r0, #0
	bl sub_8048E0C
	adds r1, r0, #0
	adds r0, r6, #0
	bl sub_8049038
	mov r0, r8
	adds r0, #0xa0
	ldr r1, _0804D124
	ldrb r2, [r4]
	lsls r2, r2, #2
	adds r2, r2, r1
	ldrh r1, [r2]
	ldrb r3, [r2, #2]
	movs r2, #0
	bl sub_8003368
	ldr r0, [r6, #0x2c]
	movs r1, #0xc0
	lsls r1, r1, #8
	adds r2, r5, #0
	movs r3, #0
	bl sub_8003884
	ldr r0, _0804D128
	adds r2, r6, #0
	adds r2, #0x64
	ldrb r1, [r2]
	lsls r1, r1, #3
	adds r1, r1, r0
	ldr r0, _0804D12C
	ldrb r0, [r0]
	ldr r1, [r1]
	lsls r0, r0, #4
	adds r0, r0, r1
	ldrb r0, [r0, #0xa]
	mov r1, sb
	strh r0, [r1]
	ldr r1, _0804D130
	ldr r0, _0804D134
	str r0, [r1]
	ldr r1, _0804D138
	ldrb r0, [r1]
	adds r4, r2, #0
	cmp r0, #0
	beq _0804D100
	movs r0, #0
	strb r0, [r1]
	ldr r0, _0804D13C
	ldrb r0, [r0]
	cmp r0, #0
	beq _0804D100
	ldr r2, _0804D140
	movs r3, #0xb7
	lsls r3, r3, #3
	adds r0, r2, r3
	ldrh r0, [r0]
	ldr r3, _0804D144
	ldr r5, _0804D148
	adds r1, r2, r5
	ldrb r3, [r3]
	adds r1, r1, r3
	ldrb r1, [r1]
	ldr r3, _0804D14C
	adds r2, r2, r3
	ldr r2, [r2]
	movs r5, #0x80
	lsls r5, r5, #9
	adds r2, r2, r5
	bl audio_new_fx
_0804D100:
	ldr r2, _0804D120
	ldr r0, _0804D128
	ldrb r1, [r4]
	lsls r1, r1, #3
	adds r1, r1, r0
	ldr r0, _0804D12C
	ldrb r0, [r0]
	ldr r1, [r1]
	lsls r0, r0, #4
	adds r0, r0, r1
	ldrb r0, [r0, #4]
	strb r0, [r2]
	b _0804D52C
	.align 2, 0
_0804D11C: .4byte 0x0203F8D7
_0804D120: .4byte 0x0203F8D4
_0804D124: .4byte 0x080B14D0
_0804D128: .4byte 0x080B19E0
_0804D12C: .4byte 0x0203F8D5
_0804D130: .4byte 0x0203F8B8
_0804D134: .4byte 0x00001FFF
_0804D138: .4byte 0x0203F8D9
_0804D13C: .4byte gCanPlaySfx
_0804D140: .4byte 0x080CE440
_0804D144: .4byte gSfxVolume
_0804D148: .4byte 0x000005BA
_0804D14C: .4byte 0x000005BC
_0804D150:
	movs r0, #4
	adds r4, r6, #0
	adds r4, #0x65
	strb r0, [r4]
	mov r0, r8
	adds r0, #0x94
	bl sub_80494FC
	adds r7, r0, #0
	bl sub_8048E0C
	adds r1, r0, #0
	adds r0, r6, #0
	bl sub_8049038
	mov r0, r8
	adds r0, #0xa0
	ldr r1, _0804D1CC
	ldrb r2, [r4]
	lsls r2, r2, #2
	adds r2, r2, r1
	ldrh r1, [r2]
	ldrb r3, [r2, #2]
	movs r2, #0
	bl sub_8003368
	ldr r0, [r6, #0x2c]
	ldr r1, _0804D1D0
	mov r8, r1
	subs r4, #1
	ldrb r2, [r4]
	lsls r2, r2, #3
	add r2, r8
	ldr r6, _0804D1D4
	ldrb r1, [r6]
	ldr r2, [r2]
	lsls r1, r1, #4
	adds r1, r1, r2
	ldr r1, [r1, #0xc]
	adds r2, r7, #0
	movs r3, #0
	bl sub_8003884
	ldrb r0, [r5]
	cmp r0, #0
	bne _0804D1B0
	.2byte 0xEE00, 0xEE00
_0804D1B0:
	subs r0, #1
	strb r0, [r5]
	ldrb r0, [r4]
	lsls r0, r0, #3
	add r0, r8
	ldrb r1, [r6]
	ldr r0, [r0]
	lsls r1, r1, #4
	adds r1, r1, r0
	ldrh r0, [r1, #8]
	mov r3, sb
	strh r0, [r3]
	b _0804D52C
	.align 2, 0
_0804D1CC: .4byte 0x080B14D0
_0804D1D0: .4byte 0x080B19E0
_0804D1D4: .4byte 0x0203F8D5
_0804D1D8:
	movs r0, #1
	adds r1, r6, #0
	adds r1, #0x65
	strb r0, [r1]
	mov r0, r8
	adds r0, #0xa0
	ldr r2, _0804D220
	ldrh r1, [r2, #4]
	ldrb r3, [r2, #6]
	movs r2, #0
	bl sub_8003368
	ldr r0, [r6, #0x2c]
	ldr r2, _0804D224
	mov r1, r8
	adds r1, #0xaa
	ldrb r1, [r1]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r2, [r1]
	movs r1, #0
	movs r3, #0
	bl sub_8003884
	ldr r2, _0804D228
	adds r0, r6, #0
	adds r0, #0x64
	ldrb r1, [r0]
	movs r0, #0xf
	ands r0, r1
	adds r0, r0, r2
	ldrb r0, [r0]
_0804D218:
	mov r4, sb
	strh r0, [r4]
	b _0804D52C
	.align 2, 0
_0804D220: .4byte 0x080B14D0
_0804D224: .4byte dword_80CC290
_0804D228: .4byte 0x080B1AE0
_0804D22C:
	subs r0, #1
_0804D22E:
	mov r5, sb
	strh r0, [r5]
	b _0804D52C
_0804D234:
	ldr r0, [r6, #0x2c]
	add r1, sp, #0xc
	add r2, sp, #0x10
	add r3, sp, #0x14
	bl sub_80038C4
	movs r0, #0x5e
	adds r0, r0, r6
	mov sb, r0
	ldrh r1, [r0]
	movs r0, #0x20
	ands r0, r1
	movs r1, #0x94
	add r1, r8
	mov sl, r1
	cmp r0, #0
	beq _0804D2BC
	mov r0, sl
	bl sub_80494FC
	adds r7, r0, #0
	bl sub_8048E0C
	adds r1, r0, #0
	adds r0, r6, #0
	bl sub_8049038
	mov r0, r8
	adds r0, #0xa2
	ldrb r5, [r0]
	mov r4, r8
	adds r4, #0xa0
	ldr r1, _0804D340
	adds r0, r6, #0
	adds r0, #0x65
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrh r1, [r0]
	ldrb r3, [r0, #2]
	adds r0, r4, #0
	movs r2, #0
	bl sub_8003368
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_80037F4
	ldr r0, [r6, #0x2c]
	ldr r3, _0804D344
	adds r1, r6, #0
	adds r1, #0x64
	ldrb r2, [r1]
	lsls r2, r2, #3
	adds r2, r2, r3
	ldr r1, _0804D348
	ldrb r1, [r1]
	ldr r2, [r2]
	lsls r1, r1, #4
	adds r1, r1, r2
	ldr r1, [r1, #0xc]
	adds r2, r7, #0
	movs r3, #0
	bl sub_8003884
	ldr r0, [r6, #0x2c]
	bl sub_80038A4
_0804D2BC:
	mov r3, sl
	ldr r0, [r3]
	ldr r1, [sp, #0xc]
	adds r0, r0, r1
	str r0, [sp]
	mov r5, r8
	adds r5, #0x98
	ldr r0, [r5]
	str r0, [sp, #4]
	mov r4, r8
	adds r4, #0x9c
	ldr r0, [r4]
	ldr r1, [sp, #0x14]
	adds r0, r0, r1
	str r0, [sp, #8]
	adds r0, r6, #0
	mov r1, sp
	movs r2, #1
	bl sub_080491DC
	cmp r0, #0
	beq _0804D2EE
	movs r0, #0
	mov r1, sb
	strh r0, [r1]
_0804D2EE:
	mov r3, sb
	ldrh r7, [r3]
	cmp r7, #0
	bne _0804D358
	movs r4, #1
	adds r0, r6, #0
	adds r0, #0x65
	strb r4, [r0]
	mov r0, r8
	adds r0, #0xa0
	ldr r2, _0804D340
	ldrh r1, [r2, #4]
	ldrb r3, [r2, #6]
	movs r2, #0
	bl sub_8003368
	ldr r0, [r6, #0x2c]
	ldr r2, _0804D34C
	mov r1, r8
	adds r1, #0xaa
	ldrb r1, [r1]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r2, [r1]
	movs r1, #0
	movs r3, #0
	bl sub_8003884
	ldr r2, _0804D350
	adds r0, r6, #0
	adds r0, #0x64
	ldrb r1, [r0]
	movs r0, #0xf
	ands r0, r1
	adds r0, r0, r2
	ldrb r0, [r0]
	mov r5, sb
	strh r0, [r5]
	ldr r0, _0804D354
	str r7, [r0]
	b _0804D412
	.align 2, 0
_0804D340: .4byte 0x080B14D0
_0804D344: .4byte 0x080B19E0
_0804D348: .4byte 0x0203F8D5
_0804D34C: .4byte dword_80CC290
_0804D350: .4byte 0x080B1AE0
_0804D354: .4byte 0x0203F8B8
_0804D358:
	ldr r0, [sp]
	mov r1, sl
	str r0, [r1]
	ldr r2, [sp, #4]
	str r2, [r5]
	ldr r1, [sp, #8]
	str r1, [r4]
	asrs r0, r0, #0x10
	mov r3, r8
	strh r0, [r3, #2]
	ldr r0, _0804D38C
	adds r1, r1, r2
	asrs r1, r1, #0x10
	ldrh r0, [r0]
	subs r0, r0, r1
	strh r0, [r3, #4]
	adds r0, r6, #0
	movs r1, #2
	movs r2, #0
	bl sub_08047958
	mov r4, sb
	ldrh r0, [r4]
	subs r0, #1
	strh r0, [r4]
	b _0804D52C
	.align 2, 0
_0804D38C: .4byte gMapPixelSizeY
_0804D390:
	ldr r0, [r6, #0x2c]
	add r1, sp, #0xc
	add r2, sp, #0x10
	add r3, sp, #0x14
	bl sub_80038C4
	mov r7, r8
	adds r7, #0x94
	ldr r0, [r7]
	ldr r1, [sp, #0xc]
	adds r0, r0, r1
	str r0, [sp]
	mov r5, r8
	adds r5, #0x98
	ldr r0, [r5]
	str r0, [sp, #4]
	mov r4, r8
	adds r4, #0x9c
	ldr r0, [r4]
	ldr r1, [sp, #0x14]
	adds r0, r0, r1
	str r0, [sp, #8]
	adds r0, r6, #0
	adds r0, #0x5e
	ldrh r1, [r0]
	mov sl, r1
	mov sb, r0
	cmp r1, #0
	bne _0804D478
	movs r4, #1
	adds r0, #7
	strb r4, [r0]
	mov r0, r8
	adds r0, #0xa0
	ldr r2, _0804D450
	ldrh r1, [r2, #4]
	ldrb r3, [r2, #6]
	movs r2, #0
	bl sub_8003368
	ldr r0, [r6, #0x2c]
	ldr r2, _0804D454
	mov r1, r8
	adds r1, #0xaa
	ldrb r1, [r1]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r2, [r1]
	movs r1, #0
	movs r3, #0
	bl sub_8003884
	ldr r2, _0804D458
	adds r0, r6, #0
	adds r0, #0x64
	ldrb r1, [r0]
	movs r0, #0xf
	ands r0, r1
	adds r0, r0, r2
	ldrb r0, [r0]
	mov r3, sb
	strh r0, [r3]
	ldr r0, _0804D45C
	mov r5, sl
	str r5, [r0]
_0804D412:
	ldr r1, _0804D460
	ldrb r0, [r1]
	cmp r0, #0
	beq _0804D41C
	b _0804D52C
_0804D41C:
	strb r4, [r1]
_0804D41E:
	ldr r0, _0804D464
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804D428
	b _0804D52C
_0804D428:
	ldr r2, _0804D468
	movs r1, #0xb6
	lsls r1, r1, #3
	adds r0, r2, r1
	ldrh r0, [r0]
	ldr r3, _0804D46C
	ldr r4, _0804D470
	adds r1, r2, r4
	ldrb r3, [r3]
	adds r1, r1, r3
	ldrb r1, [r1]
	ldr r5, _0804D474
	adds r2, r2, r5
	ldr r2, [r2]
	movs r3, #0x80
	lsls r3, r3, #9
	adds r2, r2, r3
	bl audio_new_fx
	b _0804D52C
	.align 2, 0
_0804D450: .4byte 0x080B14D0
_0804D454: .4byte dword_80CC290
_0804D458: .4byte 0x080B1AE0
_0804D45C: .4byte 0x0203F8B8
_0804D460: .4byte 0x0203F8D9
_0804D464: .4byte gCanPlaySfx
_0804D468: .4byte 0x080CE440
_0804D46C: .4byte gSfxVolume
_0804D470: .4byte 0x000005B2
_0804D474: .4byte 0x000005B4
_0804D478:
	adds r0, r6, #0
	mov r1, sp
	movs r2, #1
	bl sub_080491DC
	cmp r0, #0
	bne _0804D48E
	ldr r0, _0804D4E0
	ldrb r0, [r0]
	cmp r0, #0
	beq _0804D4F0
_0804D48E:
	adds r0, r6, #0
	bl sub_8047C60
	adds r5, r0, #0
	bl sub_8048E0C
	adds r1, r0, #0
	adds r0, r6, #0
	bl sub_8049038
	mov r0, r8
	adds r0, #0xa0
	ldr r1, _0804D4E4
	adds r2, r6, #0
	adds r2, #0x65
	ldrb r2, [r2]
	lsls r2, r2, #2
	adds r2, r2, r1
	ldrh r1, [r2]
	ldrb r3, [r2, #2]
	movs r2, #0
	bl sub_8003368
	ldr r0, [r6, #0x2c]
	ldr r3, _0804D4E8
	adds r1, r6, #0
	adds r1, #0x64
	ldrb r2, [r1]
	lsls r2, r2, #3
	adds r2, r2, r3
	ldr r1, _0804D4EC
	ldrb r1, [r1]
	ldr r2, [r2]
	lsls r1, r1, #4
	adds r1, r1, r2
	ldr r1, [r1, #0xc]
	adds r2, r5, #0
	movs r3, #0
	bl sub_8003884
	b _0804D518
	.align 2, 0
_0804D4E0: .4byte 0x0203F8DC
_0804D4E4: .4byte 0x080B14D0
_0804D4E8: .4byte 0x080B19E0
_0804D4EC: .4byte 0x0203F8D5
_0804D4F0:
	ldr r0, [sp]
	str r0, [r7]
	ldr r2, [sp, #4]
	str r2, [r5]
	ldr r1, [sp, #8]
	str r1, [r4]
	asrs r0, r0, #0x10
	mov r4, r8
	strh r0, [r4, #2]
	ldr r0, _0804D524
	adds r1, r1, r2
	asrs r1, r1, #0x10
	ldrh r0, [r0]
	subs r0, r0, r1
	strh r0, [r4, #4]
	adds r0, r6, #0
	movs r1, #2
	movs r2, #0
	bl sub_08047958
_0804D518:
	mov r5, sb
	ldrh r0, [r5]
_0804D51C:
	subs r0, #1
	strh r0, [r5]
	b _0804D52C
	.align 2, 0
_0804D524: .4byte gMapPixelSizeY
_0804D528:
	.2byte 0xEE00, 0xEE00
_0804D52C:
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	.thumb
sub_804D53C: @ 0x0804D53C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x20
	adds r5, r0, #0
	adds r6, r1, #0
	adds r0, #0x65
	ldrb r0, [r0]
	cmp r0, #0xe
	bls _0804D556
	b _0804DD0C
_0804D556:
	lsls r0, r0, #2
	ldr r1, _0804D560
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0804D560: .4byte 0x0804D564
_0804D564: @ jump table
	.4byte _0804D5F4 @ case 0
	.4byte _0804D640 @ case 1
	.4byte _0804DB48 @ case 2
	.4byte _0804DD0C @ case 3
	.4byte _0804D980 @ case 4
	.4byte _0804D6E0 @ case 5
	.4byte _0804D77E @ case 6
	.4byte _0804DD0C @ case 7
	.4byte _0804DD0C @ case 8
	.4byte _0804DD0C @ case 9
	.4byte _0804DD0C @ case 10
	.4byte _0804DD0C @ case 11
	.4byte _0804DD0C @ case 12
	.4byte _0804DD0C @ case 13
	.4byte _0804D5A0 @ case 14
_0804D5A0:
	adds r7, r6, #0
	adds r7, #0xa0
	adds r0, r7, #0
	bl sub_8003770
	cmp r0, #0
	beq _0804D5DC
	adds r0, r6, #0
	adds r0, #0x94
	bl sub_80494FC
	adds r4, r0, #0
	bl sub_8048E0C
	adds r1, r0, #0
	adds r0, r5, #0
	bl sub_8049038
	ldr r1, _0804D5F0
	adds r0, r5, #0
	adds r0, #0x65
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrh r1, [r0]
	ldrb r3, [r0, #2]
	adds r0, r7, #0
	movs r2, #0
	bl sub_8003368
_0804D5DC:
	adds r0, r5, #0
	movs r1, #1
	bl sub_8047A08
	adds r1, r6, #0
	adds r1, #0xb0
	movs r0, #0
	strb r0, [r1]
	b _0804DD10
	.align 2, 0
_0804D5F0: .4byte 0x080B1510
_0804D5F4:
	adds r0, r5, #0
	movs r1, #0
	movs r2, #1
	movs r3, #1
	bl sub_08049574
	cmp r0, #0
	bne _0804D606
	b _0804DD10
_0804D606:
	movs r7, #1
	adds r0, r5, #0
	adds r0, #0x65
	movs r4, #0
	strb r7, [r0]
	adds r0, r6, #0
	adds r0, #0xa0
	ldr r2, _0804D634
	ldrh r1, [r2, #4]
	ldrb r3, [r2, #6]
	movs r2, #0
	bl sub_8003368
	ldr r0, _0804D638
	str r4, [r0]
	ldr r1, _0804D63C
	ldrb r0, [r1]
	cmp r0, #0
	beq _0804D62E
	b _0804DD10
_0804D62E:
	strb r7, [r1]
	b _0804DAA8
	.align 2, 0
_0804D634: .4byte 0x080B14D0
_0804D638: .4byte 0x0203F8B8
_0804D63C: .4byte 0x0203F8D9
_0804D640:
	movs r4, #0xa0
	adds r4, r4, r6
	mov sb, r4
	mov r0, sb
	bl sub_8003770
	cmp r0, #0
	beq _0804D67E
	adds r0, r6, #0
	adds r0, #0x94
	bl sub_80494FC
	adds r4, r0, #0
	bl sub_8048E0C
	adds r1, r0, #0
	adds r0, r5, #0
	bl sub_8049038
	ldr r1, _0804D6D0
	adds r0, r5, #0
	adds r0, #0x65
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrh r1, [r0]
	ldrb r3, [r0, #2]
	mov r0, sb
	movs r2, #0
	bl sub_8003368
_0804D67E:
	movs r0, #0x5e
	adds r0, r0, r5
	mov r8, r0
	ldrh r0, [r0]
	cmp r0, #0
	bne _0804D6D8
	movs r0, #5
	adds r7, r5, #0
	adds r7, #0x65
	strb r0, [r7]
	adds r0, r6, #0
	adds r0, #0x94
	bl sub_80494FC
	adds r4, r0, #0
	bl sub_8048E0C
	adds r1, r0, #0
	adds r0, r5, #0
	bl sub_8049038
	ldr r1, _0804D6D0
	ldrb r0, [r7]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrh r1, [r0]
	ldrb r3, [r0, #2]
	mov r0, sb
	movs r2, #0
	bl sub_8003368
	ldr r1, _0804D6D4
	ldrb r0, [r1]
	cmp r0, #0
	bne _0804D6C8
	.2byte 0xEE00, 0xEE00
_0804D6C8:
	subs r0, #1
	strb r0, [r1]
	movs r0, #0x18
	b _0804D97A
	.align 2, 0
_0804D6D0: .4byte 0x080B1510
_0804D6D4: .4byte 0x0203F8D7
_0804D6D8:
	subs r0, #1
	mov r2, r8
	strh r0, [r2]
	b _0804DD10
_0804D6E0:
	adds r0, r5, #0
	adds r0, #0x5e
	ldrh r1, [r0]
	mov r8, r0
	cmp r1, #0
	bne _0804D77A
	adds r7, r6, #0
	adds r7, #0x94
	adds r0, r7, #0
	bl sub_80494FC
	adds r4, r0, #0
	bl sub_8048E0C
	adds r1, r0, #0
	adds r0, r5, #0
	bl sub_8049038
	ldr r0, _0804D758
	ldr r1, _0804D75C
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	beq _0804D71C
	ldrb r3, [r6, #8]
	movs r0, #0xa
	adds r1, r7, #0
	adds r2, r4, #0
	bl sub_802D888
_0804D71C:
	movs r0, #6
	adds r1, r5, #0
	adds r1, #0x65
	strb r0, [r1]
	ldr r0, _0804D760
	ldrb r0, [r0]
	cmp r0, #0
	beq _0804D770
	ldr r2, _0804D764
	movs r3, #0xfe
	lsls r3, r3, #2
	adds r0, r2, r3
	ldrh r0, [r0]
	ldr r3, _0804D768
	ldr r4, _0804D76C
	adds r1, r2, r4
	ldrb r3, [r3]
	adds r1, r1, r3
	ldrb r1, [r1]
	movs r3, #0xff
	lsls r3, r3, #2
	adds r2, r2, r3
	ldr r2, [r2]
	movs r4, #0x80
	lsls r4, r4, #9
	adds r2, r2, r4
	bl audio_new_fx
	b _0804D774
	.align 2, 0
_0804D758: .4byte 0x0203DFD4
_0804D75C: .4byte 0x0203DFD5
_0804D760: .4byte gCanPlaySfx
_0804D764: .4byte 0x080CE440
_0804D768: .4byte gSfxVolume
_0804D76C: .4byte 0x000003FA
_0804D770:
	movs r0, #1
	rsbs r0, r0, #0
_0804D774:
	str r0, [r5, #0x58]
	movs r0, #8
	b _0804D964
_0804D77A:
	subs r0, r1, #1
	b _0804D97A
_0804D77E:
	movs r2, #0x5e
	adds r2, r2, r5
	mov r8, r2
	ldrh r0, [r2]
	cmp r0, #0
	beq _0804D78C
	b _0804D978
_0804D78C:
	ldr r1, _0804D860
	ldrb r0, [r1]
	cmp r0, #0
	beq _0804D796
	b _0804D924
_0804D796:
	movs r0, #3
	strb r0, [r1]
	bl sub_8047D58
	ldr r3, _0804D864
	mov sb, r3
	ldrb r0, [r3]
	cmp r0, #0
	bne _0804D890
	movs r0, #2
	adds r4, r5, #0
	adds r4, #0x65
	strb r0, [r4]
	adds r0, r5, #0
	bl sub_8047C60
	adds r7, r0, #0
	bl sub_8048E0C
	adds r1, r0, #0
	adds r0, r5, #0
	bl sub_8049038
	adds r0, r6, #0
	adds r0, #0xa0
	ldr r1, _0804D868
	ldrb r2, [r4]
	lsls r2, r2, #2
	adds r2, r2, r1
	ldrh r1, [r2]
	ldrb r3, [r2, #2]
	movs r2, #0
	bl sub_8003368
	ldr r0, [r5, #0x2c]
	movs r1, #0xc0
	lsls r1, r1, #8
	adds r2, r7, #0
	movs r3, #0
	bl sub_8003884
	ldr r0, _0804D86C
	adds r2, r5, #0
	adds r2, #0x64
	ldrb r1, [r2]
	lsls r1, r1, #3
	adds r1, r1, r0
	ldr r0, _0804D870
	ldrb r0, [r0]
	ldr r1, [r1]
	lsls r0, r0, #4
	adds r0, r0, r1
	ldrb r0, [r0, #0xa]
	mov r4, r8
	strh r0, [r4]
	ldr r1, _0804D874
	ldr r0, _0804D878
	str r0, [r1]
	ldr r1, _0804D87C
	ldrb r0, [r1]
	adds r4, r2, #0
	cmp r0, #0
	beq _0804D846
	movs r0, #0
	strb r0, [r1]
	ldr r0, _0804D880
	ldrb r0, [r0]
	cmp r0, #0
	beq _0804D846
	ldr r2, _0804D884
	movs r5, #0xb7
	lsls r5, r5, #3
	adds r0, r2, r5
	ldrh r0, [r0]
	ldr r3, _0804D888
	adds r5, #2
	adds r1, r2, r5
	ldrb r3, [r3]
	adds r1, r1, r3
	ldrb r1, [r1]
	ldr r3, _0804D88C
	adds r2, r2, r3
	ldr r2, [r2]
	movs r5, #0x80
	lsls r5, r5, #9
	adds r2, r2, r5
	bl audio_new_fx
_0804D846:
	ldr r2, _0804D864
	ldr r0, _0804D86C
	ldrb r1, [r4]
	lsls r1, r1, #3
	adds r1, r1, r0
	ldr r0, _0804D870
	ldrb r0, [r0]
	ldr r1, [r1]
	lsls r0, r0, #4
	adds r0, r0, r1
	ldrb r0, [r0, #4]
	strb r0, [r2]
	b _0804D90C
	.align 2, 0
_0804D860: .4byte 0x0203F8D7
_0804D864: .4byte 0x0203F8D4
_0804D868: .4byte 0x080B1510
_0804D86C: .4byte 0x080B19E0
_0804D870: .4byte 0x0203F8D5
_0804D874: .4byte 0x0203F8B8
_0804D878: .4byte 0x00001FFF
_0804D87C: .4byte 0x0203F8D9
_0804D880: .4byte gCanPlaySfx
_0804D884: .4byte 0x080CE440
_0804D888: .4byte gSfxVolume
_0804D88C: .4byte 0x000005BC
_0804D890:
	movs r0, #4
	adds r7, r5, #0
	adds r7, #0x65
	strb r0, [r7]
	adds r0, r6, #0
	adds r0, #0x94
	bl sub_80494FC
	adds r4, r0, #0
	bl sub_8048E0C
	adds r1, r0, #0
	adds r0, r5, #0
	bl sub_8049038
	adds r0, r6, #0
	adds r0, #0xa0
	ldr r1, _0804D918
	ldrb r2, [r7]
	lsls r2, r2, #2
	adds r2, r2, r1
	ldrh r1, [r2]
	ldrb r3, [r2, #2]
	movs r2, #0
	bl sub_8003368
	ldr r0, [r5, #0x2c]
	ldr r1, _0804D91C
	mov sl, r1
	adds r5, #0x64
	ldrb r2, [r5]
	lsls r2, r2, #3
	add r2, sl
	ldr r7, _0804D920
	ldrb r1, [r7]
	ldr r2, [r2]
	lsls r1, r1, #4
	adds r1, r1, r2
	ldr r1, [r1, #0xc]
	adds r2, r4, #0
	movs r3, #0
	bl sub_8003884
	mov r2, sb
	ldrb r0, [r2]
	cmp r0, #0
	bne _0804D8F2
	.2byte 0xEE00, 0xEE00
_0804D8F2:
	subs r0, #1
	mov r3, sb
	strb r0, [r3]
	ldrb r0, [r5]
	lsls r0, r0, #3
	add r0, sl
	ldrb r1, [r7]
	ldr r0, [r0]
	lsls r1, r1, #4
	adds r1, r1, r0
	ldrh r0, [r1, #8]
	mov r4, r8
	strh r0, [r4]
_0804D90C:
	adds r1, r6, #0
	adds r1, #0xb0
	movs r0, #1
	strb r0, [r1]
	b _0804DD10
	.align 2, 0
_0804D918: .4byte 0x080B1510
_0804D91C: .4byte 0x080B19E0
_0804D920: .4byte 0x0203F8D5
_0804D924:
	movs r0, #1
	adds r1, r5, #0
	adds r1, #0x65
	strb r0, [r1]
	adds r0, r6, #0
	adds r0, #0xa0
	ldr r2, _0804D96C
	ldrh r1, [r2, #4]
	ldrb r3, [r2, #6]
	movs r2, #0
	bl sub_8003368
	ldr r0, [r5, #0x2c]
	ldr r2, _0804D970
	adds r1, r6, #0
	adds r1, #0xaa
	ldrb r1, [r1]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r2, [r1]
	movs r1, #0
	movs r3, #0
	bl sub_8003884
	ldr r2, _0804D974
	adds r0, r5, #0
	adds r0, #0x64
	ldrb r1, [r0]
	movs r0, #0xf
	ands r0, r1
	adds r0, r0, r2
	ldrb r0, [r0]
_0804D964:
	mov r5, r8
	strh r0, [r5]
	b _0804DD10
	.align 2, 0
_0804D96C: .4byte 0x080B1510
_0804D970: .4byte dword_80CC290
_0804D974: .4byte 0x080B1AE0
_0804D978:
	subs r0, #1
_0804D97A:
	mov r1, r8
	strh r0, [r1]
	b _0804DD10
_0804D980:
	ldr r7, _0804DADC
	adds r4, r5, #0
	adds r4, #0x65
	ldrb r0, [r4]
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrh r1, [r0]
	ldrb r2, [r0, #2]
	adds r0, r6, #0
	bl sub_8047CC0
	ldr r0, [r5, #0x2c]
	add r1, sp, #0xc
	add r2, sp, #0x10
	add r3, sp, #0x14
	bl sub_80038C4
	adds r2, r5, #0
	adds r2, #0x5e
	ldrh r1, [r2]
	movs r0, #0x20
	ands r0, r1
	str r4, [sp, #0x1c]
	movs r3, #0x94
	adds r3, r3, r6
	mov sl, r3
	mov r8, r2
	cmp r0, #0
	beq _0804DA14
	mov r0, sl
	bl sub_80494FC
	adds r4, r0, #0
	bl sub_8048E0C
	adds r1, r0, #0
	adds r0, r5, #0
	bl sub_8049038
	ldr r0, _0804DAE0
	ldrb r0, [r0]
	cmp r0, #0
	beq _0804D9EC
	adds r0, r6, #0
	adds r0, #0xa0
	ldr r1, [sp, #0x1c]
	ldrb r2, [r1]
	lsls r2, r2, #2
	adds r2, r2, r7
	ldrh r1, [r2]
	ldrb r3, [r2, #2]
	movs r2, #0
	bl sub_8003368
_0804D9EC:
	ldr r0, [r5, #0x2c]
	ldr r3, _0804DAE4
	adds r1, r5, #0
	adds r1, #0x64
	ldrb r2, [r1]
	lsls r2, r2, #3
	adds r2, r2, r3
	ldr r1, _0804DAE8
	ldrb r1, [r1]
	ldr r2, [r2]
	lsls r1, r1, #4
	adds r1, r1, r2
	ldr r1, [r1, #0xc]
	adds r2, r4, #0
	movs r3, #0
	bl sub_8003884
	ldr r0, [r5, #0x2c]
	bl sub_80038A4
_0804DA14:
	mov r2, sl
	ldr r0, [r2]
	ldr r1, [sp, #0xc]
	adds r0, r0, r1
	str r0, [sp]
	movs r3, #0x98
	adds r3, r3, r6
	mov sb, r3
	ldr r0, [r3]
	str r0, [sp, #4]
	adds r4, r6, #0
	adds r4, #0x9c
	ldr r0, [r4]
	ldr r1, [sp, #0x14]
	adds r0, r0, r1
	str r0, [sp, #8]
	adds r0, r5, #0
	mov r1, sp
	movs r2, #1
	bl sub_080491DC
	cmp r0, #0
	beq _0804DA48
	movs r0, #0
	mov r1, r8
	strh r0, [r1]
_0804DA48:
	mov r2, r8
	ldrh r7, [r2]
	cmp r7, #0
	bne _0804DB10
	movs r4, #1
	ldr r3, [sp, #0x1c]
	strb r4, [r3]
	adds r0, r6, #0
	adds r0, #0xa0
	ldr r2, _0804DADC
	ldrh r1, [r2, #4]
	ldrb r3, [r2, #6]
	movs r2, #0
	bl sub_8003368
	adds r0, r6, #0
	adds r0, #0xb0
	strb r7, [r0]
	ldr r0, [r5, #0x2c]
	ldr r2, _0804DAEC
	adds r1, r6, #0
	adds r1, #0xaa
	ldrb r1, [r1]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r2, [r1]
	movs r1, #0
	movs r3, #0
	bl sub_8003884
	ldr r2, _0804DAF0
	adds r0, r5, #0
	adds r0, #0x64
	ldrb r1, [r0]
	movs r0, #0xf
	ands r0, r1
	adds r0, r0, r2
	ldrb r0, [r0]
	mov r5, r8
	strh r0, [r5]
	ldr r0, _0804DAF4
	str r7, [r0]
	ldr r1, _0804DAF8
	ldrb r0, [r1]
	cmp r0, #0
	beq _0804DAA6
	b _0804DD10
_0804DAA6:
	strb r4, [r1]
_0804DAA8:
	ldr r0, _0804DAFC
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804DAB2
	b _0804DD10
_0804DAB2:
	ldr r2, _0804DB00
	movs r1, #0xb6
	lsls r1, r1, #3
	adds r0, r2, r1
	ldrh r0, [r0]
	ldr r3, _0804DB04
	ldr r4, _0804DB08
	adds r1, r2, r4
	ldrb r3, [r3]
	adds r1, r1, r3
	ldrb r1, [r1]
	ldr r5, _0804DB0C
	adds r2, r2, r5
	ldr r2, [r2]
	movs r3, #0x80
	lsls r3, r3, #9
	adds r2, r2, r3
	bl audio_new_fx
	b _0804DD10
	.align 2, 0
_0804DADC: .4byte 0x080B1510
_0804DAE0: .4byte 0x0203F8DD
_0804DAE4: .4byte 0x080B19E0
_0804DAE8: .4byte 0x0203F8D5
_0804DAEC: .4byte dword_80CC290
_0804DAF0: .4byte 0x080B1AE0
_0804DAF4: .4byte 0x0203F8B8
_0804DAF8: .4byte 0x0203F8D9
_0804DAFC: .4byte gCanPlaySfx
_0804DB00: .4byte 0x080CE440
_0804DB04: .4byte gSfxVolume
_0804DB08: .4byte 0x000005B2
_0804DB0C: .4byte 0x000005B4
_0804DB10:
	ldr r0, [sp]
	mov r1, sl
	str r0, [r1]
	ldr r2, [sp, #4]
	mov r3, sb
	str r2, [r3]
	ldr r1, [sp, #8]
	str r1, [r4]
	asrs r0, r0, #0x10
	strh r0, [r6, #2]
	ldr r0, _0804DB44
	adds r1, r1, r2
	asrs r1, r1, #0x10
	ldrh r0, [r0]
	subs r0, r0, r1
	strh r0, [r6, #4]
	adds r0, r5, #0
	movs r1, #2
	movs r2, #0
	bl sub_08047958
	mov r4, r8
	ldrh r0, [r4]
	subs r0, #1
	strh r0, [r4]
	b _0804DD10
	.align 2, 0
_0804DB44: .4byte gMapPixelSizeY
_0804DB48:
	movs r0, #0x65
	adds r0, r0, r5
	mov sb, r0
	ldrb r0, [r0]
	lsls r0, r0, #2
	ldr r1, _0804DC28
	adds r0, r0, r1
	ldrh r1, [r0]
	ldrb r2, [r0, #2]
	adds r0, r6, #0
	bl sub_8047CC0
	ldr r0, [r5, #0x2c]
	add r1, sp, #0xc
	add r2, sp, #0x10
	add r3, sp, #0x14
	bl sub_80038C4
	adds r2, r6, #0
	adds r2, #0x94
	str r2, [sp, #0x18]
	ldr r0, [r2]
	ldr r1, [sp, #0xc]
	adds r0, r0, r1
	str r0, [sp]
	movs r3, #0x98
	adds r3, r3, r6
	mov sl, r3
	ldr r0, [r3]
	str r0, [sp, #4]
	adds r7, r6, #0
	adds r7, #0x9c
	ldr r0, [r7]
	ldr r1, [sp, #0x14]
	adds r0, r0, r1
	str r0, [sp, #8]
	adds r0, r5, #0
	adds r0, #0x5e
	ldrh r4, [r0]
	mov r8, r0
	cmp r4, #0
	bne _0804DC50
	movs r7, #1
	mov r0, sb
	strb r7, [r0]
	adds r0, r6, #0
	adds r0, #0xa0
	ldr r2, _0804DC28
	ldrh r1, [r2, #4]
	ldrb r3, [r2, #6]
	movs r2, #0
	bl sub_8003368
	adds r0, r6, #0
	adds r0, #0xb0
	strb r4, [r0]
	ldr r0, [r5, #0x2c]
	ldr r2, _0804DC2C
	adds r1, r6, #0
	adds r1, #0xaa
	ldrb r1, [r1]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r2, [r1]
	movs r1, #0
	movs r3, #0
	bl sub_8003884
	ldr r2, _0804DC30
	adds r0, r5, #0
	adds r0, #0x64
	ldrb r1, [r0]
	movs r0, #0xf
	ands r0, r1
	adds r0, r0, r2
	ldrb r0, [r0]
	mov r3, r8
	strh r0, [r3]
	ldr r0, _0804DC34
	str r4, [r0]
	ldr r1, _0804DC38
	ldrb r0, [r1]
	cmp r0, #0
	beq _0804DBF2
	b _0804DD10
_0804DBF2:
	strb r7, [r1]
	ldr r0, _0804DC3C
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804DBFE
	b _0804DD10
_0804DBFE:
	ldr r2, _0804DC40
	movs r4, #0xb6
	lsls r4, r4, #3
	adds r0, r2, r4
	ldrh r0, [r0]
	ldr r3, _0804DC44
	ldr r5, _0804DC48
	adds r1, r2, r5
	ldrb r3, [r3]
	adds r1, r1, r3
	ldrb r1, [r1]
	ldr r3, _0804DC4C
	adds r2, r2, r3
	ldr r2, [r2]
	movs r4, #0x80
	lsls r4, r4, #9
	adds r2, r2, r4
	bl audio_new_fx
	b _0804DD10
	.align 2, 0
_0804DC28: .4byte 0x080B1510
_0804DC2C: .4byte dword_80CC290
_0804DC30: .4byte 0x080B1AE0
_0804DC34: .4byte 0x0203F8B8
_0804DC38: .4byte 0x0203F8D9
_0804DC3C: .4byte gCanPlaySfx
_0804DC40: .4byte 0x080CE440
_0804DC44: .4byte gSfxVolume
_0804DC48: .4byte 0x000005B2
_0804DC4C: .4byte 0x000005B4
_0804DC50:
	adds r0, r5, #0
	mov r1, sp
	movs r2, #1
	bl sub_080491DC
	cmp r0, #0
	bne _0804DC66
	ldr r0, _0804DCC0
	ldrb r0, [r0]
	cmp r0, #0
	beq _0804DCD4
_0804DC66:
	adds r0, r5, #0
	bl sub_8047C60
	adds r7, r0, #0
	bl sub_8048E0C
	adds r1, r0, #0
	adds r0, r5, #0
	bl sub_8049038
	ldr r0, _0804DCC4
	ldrb r0, [r0]
	cmp r0, #0
	beq _0804DC9A
	adds r0, r6, #0
	adds r0, #0xa0
	mov r1, sb
	ldrb r2, [r1]
	lsls r2, r2, #2
	ldr r3, _0804DCC8
	adds r2, r2, r3
	ldrh r1, [r2]
	ldrb r3, [r2, #2]
	movs r2, #0
	bl sub_8003368
_0804DC9A:
	ldr r0, [r5, #0x2c]
	ldr r3, _0804DCCC
	adds r1, r5, #0
	adds r1, #0x64
	ldrb r2, [r1]
	lsls r2, r2, #3
	adds r2, r2, r3
	ldr r1, _0804DCD0
	ldrb r1, [r1]
	ldr r2, [r2]
	lsls r1, r1, #4
	adds r1, r1, r2
	ldr r1, [r1, #0xc]
	adds r2, r7, #0
	movs r3, #0
	bl sub_8003884
	b _0804DCFE
	.align 2, 0
_0804DCC0: .4byte 0x0203F8DC
_0804DCC4: .4byte 0x0203F8DD
_0804DCC8: .4byte 0x080B1510
_0804DCCC: .4byte 0x080B19E0
_0804DCD0: .4byte 0x0203F8D5
_0804DCD4:
	ldr r0, [sp]
	ldr r4, [sp, #0x18]
	str r0, [r4]
	ldr r2, [sp, #4]
	mov r1, sl
	str r2, [r1]
	ldr r1, [sp, #8]
	str r1, [r7]
	asrs r0, r0, #0x10
	strh r0, [r6, #2]
	ldr r0, _0804DD08
	adds r1, r1, r2
	asrs r1, r1, #0x10
	ldrh r0, [r0]
	subs r0, r0, r1
	strh r0, [r6, #4]
	adds r0, r5, #0
	movs r1, #2
	movs r2, #0
	bl sub_08047958
_0804DCFE:
	mov r2, r8
	ldrh r0, [r2]
	subs r0, #1
	strh r0, [r2]
	b _0804DD10
	.align 2, 0
_0804DD08: .4byte gMapPixelSizeY
_0804DD0C:
	.2byte 0xEE00, 0xEE00
_0804DD10:
	add sp, #0x20
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	.thumb
sub_804DD20: @ 0x0804DD20
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	adds r6, r0, #0
	adds r7, r1, #0
	adds r0, #0x65
	ldrb r0, [r0]
	cmp r0, #0xe
	bls _0804DD3C
	bl _0804E770
_0804DD3C:
	lsls r0, r0, #2
	ldr r1, _0804DD48
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0804DD48: .4byte 0x0804DD4C
_0804DD4C: @ jump table
	.4byte _0804DDDC @ case 0
	.4byte _0804E428 @ case 1
	.4byte _0804E314 @ case 2
	.4byte _0804E770 @ case 3
	.4byte _0804E160 @ case 4
	.4byte _0804DEC2 @ case 5
	.4byte _0804DF64 @ case 6
	.4byte _0804E770 @ case 7
	.4byte _0804E770 @ case 8
	.4byte _0804E648 @ case 9
	.4byte _0804E770 @ case 10
	.4byte _0804E770 @ case 11
	.4byte _0804E510 @ case 12
	.4byte _0804E770 @ case 13
	.4byte _0804DD88 @ case 14
_0804DD88:
	adds r5, r7, #0
	adds r5, #0xa0
	adds r0, r5, #0
	bl sub_8003770
	cmp r0, #0
	beq _0804DDC4
	adds r0, r7, #0
	adds r0, #0x94
	bl sub_80494FC
	adds r4, r0, #0
	bl sub_8048E0C
	adds r1, r0, #0
	adds r0, r6, #0
	bl sub_8049038
	ldr r1, _0804DDD8
	adds r0, r6, #0
	adds r0, #0x65
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrh r1, [r0]
	ldrb r3, [r0, #2]
	adds r0, r5, #0
	movs r2, #0
	bl sub_8003368
_0804DDC4:
	adds r0, r6, #0
	movs r1, #1
	bl sub_8047A08
	adds r1, r7, #0
	adds r1, #0xb0
	movs r0, #0
	strb r0, [r1]
	bl _0804E774
	.align 2, 0
_0804DDD8: .4byte 0x080B1550
_0804DDDC:
	adds r0, r6, #0
	movs r1, #0
	movs r2, #1
	movs r3, #1
	bl sub_08049574
	cmp r0, #0
	bne _0804DDF0
	bl _0804E774
_0804DDF0:
	movs r2, #1
	movs r5, #0
	ldr r0, _0804DEA0
	ldrb r0, [r0]
	ldr r4, _0804DEA4
	cmp r5, r0
	bhs _0804DE1C
	ldr r3, _0804DEA8
	adds r1, r0, #0
_0804DE02:
	lsls r0, r5, #2
	adds r0, r0, r3
	ldr r0, [r0]
	adds r0, #0x65
	ldrb r0, [r0]
	cmp r0, #0
	beq _0804DE12
	movs r2, #0
_0804DE12:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, r1
	blo _0804DE02
_0804DE1C:
	movs r5, #0
	ldrb r0, [r4]
	cmp r5, r0
	bhs _0804DE42
	ldr r3, _0804DEAC
	adds r1, r0, #0
_0804DE28:
	lsls r0, r5, #2
	adds r0, r0, r3
	ldr r0, [r0]
	adds r0, #0x65
	ldrb r0, [r0]
	cmp r0, #0
	beq _0804DE38
	movs r2, #0
_0804DE38:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, r1
	blo _0804DE28
_0804DE42:
	cmp r2, #0
	bne _0804DE4A
	bl _0804E774
_0804DE4A:
	movs r0, #0x5e
	adds r0, r0, r6
	mov r8, r0
	ldrh r0, [r0]
	cmp r0, #0
	bne _0804DEB8
	movs r0, #5
	adds r5, r6, #0
	adds r5, #0x65
	strb r0, [r5]
	adds r0, r7, #0
	adds r0, #0x94
	bl sub_80494FC
	adds r4, r0, #0
	bl sub_8048E0C
	adds r1, r0, #0
	adds r0, r6, #0
	bl sub_8049038
	adds r0, r7, #0
	adds r0, #0xa0
	ldr r1, _0804DEB0
	ldrb r2, [r5]
	lsls r2, r2, #2
	adds r2, r2, r1
	ldrh r1, [r2]
	ldrb r3, [r2, #2]
	movs r2, #0
	bl sub_8003368
	ldr r1, _0804DEB4
	ldrb r0, [r1]
	cmp r0, #0
	bne _0804DE96
	.2byte 0xEE00, 0xEE00
_0804DE96:
	subs r0, #1
	strb r0, [r1]
	movs r0, #0x18
	b _0804E15A
	.align 2, 0
_0804DEA0: .4byte 0x0203F918
_0804DEA4: .4byte 0x0203F919
_0804DEA8: .4byte 0x0203F8E4
_0804DEAC: .4byte 0x0203F8EC
_0804DEB0: .4byte 0x080B1550
_0804DEB4: .4byte 0x0203F8D7
_0804DEB8:
	subs r0, #1
	mov r2, r8
	strh r0, [r2]
	bl _0804E774
_0804DEC2:
	adds r0, r6, #0
	adds r0, #0x5e
	ldrh r1, [r0]
	mov r8, r0
	cmp r1, #0
	bne _0804DF60
	adds r5, r7, #0
	adds r5, #0x94
	adds r0, r5, #0
	bl sub_80494FC
	adds r4, r0, #0
	bl sub_8048E0C
	adds r1, r0, #0
	adds r0, r6, #0
	bl sub_8049038
	ldr r0, _0804DF38
	ldr r1, _0804DF3C
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	beq _0804DEFE
	ldrb r3, [r7, #8]
	movs r0, #0xa
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_802D888
_0804DEFE:
	movs r0, #6
	adds r1, r6, #0
	adds r1, #0x65
	strb r0, [r1]
	ldr r0, _0804DF40
	ldrb r0, [r0]
	cmp r0, #0
	beq _0804DF50
	ldr r2, _0804DF44
	movs r3, #0xfe
	lsls r3, r3, #2
	adds r0, r2, r3
	ldrh r0, [r0]
	ldr r3, _0804DF48
	ldr r4, _0804DF4C
	adds r1, r2, r4
	ldrb r3, [r3]
	adds r1, r1, r3
	ldrb r1, [r1]
	movs r5, #0xff
	lsls r5, r5, #2
	adds r2, r2, r5
	ldr r2, [r2]
	movs r3, #0x80
	lsls r3, r3, #9
	adds r2, r2, r3
	bl audio_new_fx
	b _0804DF54
	.align 2, 0
_0804DF38: .4byte 0x0203DFD4
_0804DF3C: .4byte 0x0203DFD5
_0804DF40: .4byte gCanPlaySfx
_0804DF44: .4byte 0x080CE440
_0804DF48: .4byte gSfxVolume
_0804DF4C: .4byte 0x000003FA
_0804DF50:
	movs r0, #1
	rsbs r0, r0, #0
_0804DF54:
	str r0, [r6, #0x58]
	movs r0, #8
	mov r4, r8
	strh r0, [r4]
	bl _0804E774
_0804DF60:
	subs r0, r1, #1
	b _0804E736
_0804DF64:
	movs r0, #0x5e
	adds r0, r0, r6
	mov r8, r0
	ldrh r0, [r0]
	adds r1, r0, #0
	cmp r1, #0
	beq _0804DF74
	b _0804E158
_0804DF74:
	ldr r2, _0804E048
	ldrb r0, [r2]
	cmp r0, #0
	beq _0804DF7E
	b _0804E10C
_0804DF7E:
	movs r0, #3
	strb r0, [r2]
	bl sub_8047D58
	ldr r1, _0804E04C
	mov sb, r1
	ldrb r0, [r1]
	cmp r0, #0
	bne _0804E078
	movs r0, #2
	adds r4, r6, #0
	adds r4, #0x65
	strb r0, [r4]
	adds r0, r6, #0
	bl sub_8047C60
	adds r5, r0, #0
	bl sub_8048E0C
	adds r1, r0, #0
	adds r0, r6, #0
	bl sub_8049038
	adds r0, r7, #0
	adds r0, #0xa0
	ldr r1, _0804E050
	ldrb r2, [r4]
	lsls r2, r2, #2
	adds r2, r2, r1
	ldrh r1, [r2]
	ldrb r3, [r2, #2]
	movs r2, #0
	bl sub_8003368
	ldr r0, [r6, #0x2c]
	movs r1, #0xc0
	lsls r1, r1, #8
	adds r2, r5, #0
	movs r3, #0
	bl sub_8003884
	ldr r0, _0804E054
	adds r2, r6, #0
	adds r2, #0x64
	ldrb r1, [r2]
	lsls r1, r1, #3
	adds r1, r1, r0
	ldr r0, _0804E058
	ldrb r0, [r0]
	ldr r1, [r1]
	lsls r0, r0, #4
	adds r0, r0, r1
	ldrb r0, [r0, #0xa]
	mov r3, r8
	strh r0, [r3]
	ldr r1, _0804E05C
	ldr r0, _0804E060
	str r0, [r1]
	ldr r1, _0804E064
	ldrb r0, [r1]
	adds r4, r2, #0
	cmp r0, #0
	beq _0804E02E
	movs r0, #0
	strb r0, [r1]
	ldr r0, _0804E068
	ldrb r0, [r0]
	cmp r0, #0
	beq _0804E02E
	ldr r2, _0804E06C
	movs r5, #0xb7
	lsls r5, r5, #3
	adds r0, r2, r5
	ldrh r0, [r0]
	ldr r3, _0804E070
	adds r5, #2
	adds r1, r2, r5
	ldrb r3, [r3]
	adds r1, r1, r3
	ldrb r1, [r1]
	ldr r3, _0804E074
	adds r2, r2, r3
	ldr r2, [r2]
	movs r5, #0x80
	lsls r5, r5, #9
	adds r2, r2, r5
	bl audio_new_fx
_0804E02E:
	ldr r2, _0804E04C
	ldr r0, _0804E054
	ldrb r1, [r4]
	lsls r1, r1, #3
	adds r1, r1, r0
	ldr r0, _0804E058
	ldrb r0, [r0]
	ldr r1, [r1]
	lsls r0, r0, #4
	adds r0, r0, r1
	ldrb r0, [r0, #4]
	strb r0, [r2]
	b _0804E0F4
	.align 2, 0
_0804E048: .4byte 0x0203F8D7
_0804E04C: .4byte 0x0203F8D4
_0804E050: .4byte 0x080B1550
_0804E054: .4byte 0x080B19E0
_0804E058: .4byte 0x0203F8D5
_0804E05C: .4byte 0x0203F8B8
_0804E060: .4byte 0x00001FFF
_0804E064: .4byte 0x0203F8D9
_0804E068: .4byte gCanPlaySfx
_0804E06C: .4byte 0x080CE440
_0804E070: .4byte gSfxVolume
_0804E074: .4byte 0x000005BC
_0804E078:
	movs r0, #4
	adds r5, r6, #0
	adds r5, #0x65
	strb r0, [r5]
	adds r0, r7, #0
	adds r0, #0x94
	bl sub_80494FC
	adds r4, r0, #0
	bl sub_8048E0C
	adds r1, r0, #0
	adds r0, r6, #0
	bl sub_8049038
	adds r0, r7, #0
	adds r0, #0xa0
	ldr r1, _0804E100
	ldrb r2, [r5]
	lsls r2, r2, #2
	adds r2, r2, r1
	ldrh r1, [r2]
	ldrb r3, [r2, #2]
	movs r2, #0
	bl sub_8003368
	ldr r0, [r6, #0x2c]
	ldr r1, _0804E104
	mov sl, r1
	subs r5, #1
	ldrb r2, [r5]
	lsls r2, r2, #3
	add r2, sl
	ldr r6, _0804E108
	ldrb r1, [r6]
	ldr r2, [r2]
	lsls r1, r1, #4
	adds r1, r1, r2
	ldr r1, [r1, #0xc]
	adds r2, r4, #0
	movs r3, #0
	bl sub_8003884
	mov r2, sb
	ldrb r0, [r2]
	cmp r0, #0
	bne _0804E0DA
	.2byte 0xEE00, 0xEE00
_0804E0DA:
	subs r0, #1
	mov r3, sb
	strb r0, [r3]
	ldrb r0, [r5]
	lsls r0, r0, #3
	add r0, sl
	ldrb r1, [r6]
	ldr r0, [r0]
	lsls r1, r1, #4
	adds r1, r1, r0
	ldrh r0, [r1, #8]
	mov r4, r8
	strh r0, [r4]
_0804E0F4:
	adds r1, r7, #0
	adds r1, #0xb0
	movs r0, #1
	strb r0, [r1]
	b _0804E774
	.align 2, 0
_0804E100: .4byte 0x080B1550
_0804E104: .4byte 0x080B19E0
_0804E108: .4byte 0x0203F8D5
_0804E10C:
	adds r0, r6, #0
	adds r0, #0x65
	strb r1, [r0]
	adds r0, r7, #0
	adds r0, #0xa0
	ldr r2, _0804E14C
	ldrh r1, [r2]
	ldrb r3, [r2, #2]
	movs r2, #0
	bl sub_8003368
	ldr r0, [r6, #0x2c]
	ldr r2, _0804E150
	adds r1, r7, #0
	adds r1, #0xaa
	ldrb r1, [r1]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r2, [r1]
	movs r1, #0
	movs r3, #0
	bl sub_8003884
	ldr r2, _0804E154
	adds r0, r6, #0
	adds r0, #0x64
	ldrb r1, [r0]
	movs r0, #0xf
	ands r0, r1
	adds r0, r0, r2
	ldrb r0, [r0]
	b _0804E736
	.align 2, 0
_0804E14C: .4byte 0x080B1550
_0804E150: .4byte dword_80CC290
_0804E154: .4byte 0x080B1AE0
_0804E158:
	subs r0, #1
_0804E15A:
	mov r1, r8
	strh r0, [r1]
	b _0804E774
_0804E160:
	ldr r1, _0804E2AC
	adds r4, r6, #0
	adds r4, #0x65
	ldrb r0, [r4]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrh r1, [r0]
	ldrb r2, [r0, #2]
	adds r0, r7, #0
	bl sub_8047CC0
	ldr r0, [r6, #0x2c]
	add r1, sp, #0xc
	add r2, sp, #0x10
	add r3, sp, #0x14
	bl sub_80038C4
	adds r2, r6, #0
	adds r2, #0x5e
	ldrh r1, [r2]
	movs r0, #0x20
	ands r0, r1
	str r4, [sp, #0x18]
	movs r3, #0x94
	adds r3, r3, r7
	mov sb, r3
	mov r8, r2
	cmp r0, #0
	beq _0804E1D6
	mov r0, sb
	bl sub_80494FC
	adds r4, r0, #0
	bl sub_8048E0C
	adds r1, r0, #0
	adds r0, r6, #0
	bl sub_8049038
	ldr r0, [r6, #0x2c]
	ldr r3, _0804E2B0
	adds r1, r6, #0
	adds r1, #0x64
	ldrb r2, [r1]
	lsls r2, r2, #3
	adds r2, r2, r3
	ldr r1, _0804E2B4
	ldrb r1, [r1]
	ldr r2, [r2]
	lsls r1, r1, #4
	adds r1, r1, r2
	ldr r1, [r1, #0xc]
	adds r2, r4, #0
	movs r3, #0
	bl sub_8003884
	ldr r0, [r6, #0x2c]
	bl sub_80038A4
_0804E1D6:
	mov r4, sb
	ldr r0, [r4]
	ldr r1, [sp, #0xc]
	adds r0, r0, r1
	str r0, [sp]
	adds r5, r7, #0
	adds r5, #0x98
	ldr r0, [r5]
	str r0, [sp, #4]
	adds r4, r7, #0
	adds r4, #0x9c
	ldr r0, [r4]
	ldr r1, [sp, #0x14]
	adds r0, r0, r1
	str r0, [sp, #8]
	adds r0, r6, #0
	mov r1, sp
	movs r2, #1
	bl sub_080491DC
	mov sl, r4
	cmp r0, #0
	bne _0804E214
	adds r0, r6, #0
	movs r1, #0
	movs r2, #1
	movs r3, #1
	bl sub_08049574
	cmp r0, #0
	bne _0804E21A
_0804E214:
	movs r0, #0
	mov r1, r8
	strh r0, [r1]
_0804E21A:
	mov r2, r8
	ldrh r4, [r2]
	cmp r4, #0
	bne _0804E2DC
	ldr r3, [sp, #0x18]
	strb r4, [r3]
	adds r0, r7, #0
	adds r0, #0xa0
	ldr r2, _0804E2AC
	ldrh r1, [r2]
	ldrb r3, [r2, #2]
	movs r2, #0
	bl sub_8003368
	adds r0, r7, #0
	adds r0, #0xb0
	strb r4, [r0]
	ldr r0, [r6, #0x2c]
	ldr r2, _0804E2B8
	adds r1, r7, #0
	adds r1, #0xaa
	ldrb r1, [r1]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r2, [r1]
	movs r1, #0
	movs r3, #0
	bl sub_8003884
	ldr r2, _0804E2BC
	adds r0, r6, #0
	adds r0, #0x64
	ldrb r1, [r0]
	movs r0, #0xf
	ands r0, r1
	adds r0, r0, r2
	ldrb r0, [r0]
	mov r5, r8
	strh r0, [r5]
	ldr r0, _0804E2C0
	str r4, [r0]
	ldr r1, _0804E2C4
	ldrb r0, [r1]
	cmp r0, #0
	beq _0804E276
	b _0804E774
_0804E276:
	movs r0, #1
	strb r0, [r1]
	ldr r0, _0804E2C8
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804E284
	b _0804E774
_0804E284:
	ldr r2, _0804E2CC
	movs r1, #0xb6
	lsls r1, r1, #3
	adds r0, r2, r1
	ldrh r0, [r0]
	ldr r3, _0804E2D0
	ldr r4, _0804E2D4
	adds r1, r2, r4
	ldrb r3, [r3]
	adds r1, r1, r3
	ldrb r1, [r1]
	ldr r5, _0804E2D8
	adds r2, r2, r5
	ldr r2, [r2]
	movs r3, #0x80
	lsls r3, r3, #9
	adds r2, r2, r3
	bl audio_new_fx
	b _0804E774
	.align 2, 0
_0804E2AC: .4byte 0x080B1550
_0804E2B0: .4byte 0x080B19E0
_0804E2B4: .4byte 0x0203F8D5
_0804E2B8: .4byte dword_80CC290
_0804E2BC: .4byte 0x080B1AE0
_0804E2C0: .4byte 0x0203F8B8
_0804E2C4: .4byte 0x0203F8D9
_0804E2C8: .4byte gCanPlaySfx
_0804E2CC: .4byte 0x080CE440
_0804E2D0: .4byte gSfxVolume
_0804E2D4: .4byte 0x000005B2
_0804E2D8: .4byte 0x000005B4
_0804E2DC:
	ldr r0, [sp]
	mov r4, sb
	str r0, [r4]
	ldr r2, [sp, #4]
	str r2, [r5]
	ldr r1, [sp, #8]
	mov r5, sl
	str r1, [r5]
	asrs r0, r0, #0x10
	strh r0, [r7, #2]
	ldr r0, _0804E310
	adds r1, r1, r2
	asrs r1, r1, #0x10
	ldrh r0, [r0]
	subs r0, r0, r1
	strh r0, [r7, #4]
	adds r0, r6, #0
	movs r1, #2
	movs r2, #0
	bl sub_08047958
	mov r1, r8
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	b _0804E774
	.align 2, 0
_0804E310: .4byte gMapPixelSizeY
_0804E314:
	adds r4, r6, #0
	adds r4, #0x65
	ldrb r0, [r4]
	lsls r0, r0, #2
	ldr r2, _0804E36C
	adds r0, r0, r2
	ldrh r1, [r0]
	ldrb r2, [r0, #2]
	adds r0, r7, #0
	bl sub_8047CC0
	ldr r0, [r6, #0x2c]
	add r1, sp, #0xc
	add r2, sp, #0x10
	add r3, sp, #0x14
	bl sub_80038C4
	movs r3, #0x94
	adds r3, r3, r7
	mov sl, r3
	ldr r0, [r3]
	ldr r1, [sp, #0xc]
	adds r0, r0, r1
	str r0, [sp]
	movs r5, #0x98
	adds r5, r5, r7
	mov sb, r5
	ldr r0, [r5]
	str r0, [sp, #4]
	adds r5, r7, #0
	adds r5, #0x9c
	ldr r0, [r5]
	ldr r1, [sp, #0x14]
	adds r0, r0, r1
	str r0, [sp, #8]
	adds r0, r6, #0
	adds r0, #0x5e
	ldrh r1, [r0]
	mov r8, r0
	cmp r1, #0
	bne _0804E370
	movs r0, #1
	strb r0, [r4]
	b _0804E774
	.align 2, 0
_0804E36C: .4byte 0x080B1550
_0804E370:
	adds r0, r6, #0
	mov r1, sp
	movs r2, #1
	bl sub_080491DC
	cmp r0, #0
	bne _0804E386
	ldr r0, _0804E3DC
	ldrb r0, [r0]
	cmp r0, #0
	beq _0804E3F0
_0804E386:
	adds r0, r6, #0
	bl sub_8047C60
	adds r5, r0, #0
	bl sub_8048E0C
	adds r1, r0, #0
	adds r0, r6, #0
	bl sub_8049038
	ldr r0, _0804E3E0
	ldrb r0, [r0]
	cmp r0, #0
	beq _0804E3B8
	adds r0, r7, #0
	adds r0, #0xa0
	ldrb r2, [r4]
	lsls r2, r2, #2
	ldr r1, _0804E3E4
	adds r2, r2, r1
	ldrh r1, [r2]
	ldrb r3, [r2, #2]
	movs r2, #0
	bl sub_8003368
_0804E3B8:
	ldr r0, [r6, #0x2c]
	ldr r3, _0804E3E8
	adds r1, r6, #0
	adds r1, #0x64
	ldrb r2, [r1]
	lsls r2, r2, #3
	adds r2, r2, r3
	ldr r1, _0804E3EC
	ldrb r1, [r1]
	ldr r2, [r2]
	lsls r1, r1, #4
	adds r1, r1, r2
	ldr r1, [r1, #0xc]
	adds r2, r5, #0
	movs r3, #0
	bl sub_8003884
	b _0804E41A
	.align 2, 0
_0804E3DC: .4byte 0x0203F8DC
_0804E3E0: .4byte 0x0203F8DD
_0804E3E4: .4byte 0x080B1550
_0804E3E8: .4byte 0x080B19E0
_0804E3EC: .4byte 0x0203F8D5
_0804E3F0:
	ldr r0, [sp]
	mov r2, sl
	str r0, [r2]
	ldr r2, [sp, #4]
	mov r3, sb
	str r2, [r3]
	ldr r1, [sp, #8]
	str r1, [r5]
	asrs r0, r0, #0x10
	strh r0, [r7, #2]
	ldr r0, _0804E424
	adds r1, r1, r2
	asrs r1, r1, #0x10
	ldrh r0, [r0]
	subs r0, r0, r1
	strh r0, [r7, #4]
	adds r0, r6, #0
	movs r1, #2
	movs r2, #0
	bl sub_08047958
_0804E41A:
	mov r4, r8
	ldrh r0, [r4]
	subs r0, #1
	strh r0, [r4]
	b _0804E774
	.align 2, 0
_0804E424: .4byte gMapPixelSizeY
_0804E428:
	movs r0, #0xc
	movs r5, #0x65
	adds r5, r5, r6
	mov r8, r5
	movs r4, #0
	strb r0, [r5]
	ldr r0, [r6, #0x34]
	ldr r1, [r6, #0x30]
	subs r0, r0, r1
	asrs r0, r0, #1
	adds r1, r1, r0
	str r1, [r6, #4]
	ldr r1, [r7, #0x54]
	asrs r1, r1, #1
	ldr r0, [r6, #0x38]
	subs r0, r0, r1
	str r0, [r6, #0xc]
	adds r0, r7, #0
	adds r0, #0x94
	adds r1, r6, #4
	bl sub_804953C
	adds r5, r0, #0
	bl sub_8048E0C
	adds r1, r0, #0
	adds r0, r6, #0
	bl sub_8049038
	adds r0, r7, #0
	adds r0, #0xa0
	ldr r1, _0804E4E8
	mov r3, r8
	ldrb r2, [r3]
	lsls r2, r2, #2
	adds r2, r2, r1
	ldrh r1, [r2]
	ldrb r3, [r2, #2]
	movs r2, #0
	bl sub_8003368
	ldr r0, [r6, #0x2c]
	ldr r3, _0804E4EC
	adds r1, r6, #0
	adds r1, #0x64
	ldrb r2, [r1]
	lsls r2, r2, #3
	adds r2, r2, r3
	ldr r1, _0804E4F0
	ldrb r1, [r1]
	ldr r2, [r2]
	lsls r1, r1, #4
	adds r1, r1, r2
	ldr r1, [r1, #0xc]
	adds r2, r5, #0
	movs r3, #0
	bl sub_8003884
	adds r0, r7, #0
	adds r0, #0xb0
	strb r4, [r0]
	ldr r0, _0804E4F4
	str r4, [r0]
	ldr r1, _0804E4F8
	ldrb r0, [r1]
	cmp r0, #0
	beq _0804E4B0
	b _0804E774
_0804E4B0:
	movs r0, #1
	strb r0, [r1]
	ldr r0, _0804E4FC
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804E4BE
	b _0804E774
_0804E4BE:
	ldr r2, _0804E500
	movs r4, #0xb6
	lsls r4, r4, #3
	adds r0, r2, r4
	ldrh r0, [r0]
	ldr r3, _0804E504
	ldr r5, _0804E508
	adds r1, r2, r5
	ldrb r3, [r3]
	adds r1, r1, r3
	ldrb r1, [r1]
	ldr r3, _0804E50C
	adds r2, r2, r3
	ldr r2, [r2]
	movs r4, #0x80
	lsls r4, r4, #9
	adds r2, r2, r4
	bl audio_new_fx
	b _0804E774
	.align 2, 0
_0804E4E8: .4byte 0x080B1550
_0804E4EC: .4byte 0x080B19E0
_0804E4F0: .4byte 0x0203F8D5
_0804E4F4: .4byte 0x0203F8B8
_0804E4F8: .4byte 0x0203F8D9
_0804E4FC: .4byte gCanPlaySfx
_0804E500: .4byte 0x080CE440
_0804E504: .4byte gSfxVolume
_0804E508: .4byte 0x000005B2
_0804E50C: .4byte 0x000005B4
_0804E510:
	ldr r0, [r6, #0x2c]
	add r1, sp, #0xc
	add r2, sp, #0x10
	add r3, sp, #0x14
	bl sub_80038C4
	movs r5, #0x94
	adds r5, r5, r7
	mov r8, r5
	ldr r0, [r5]
	ldr r1, [sp, #0xc]
	adds r0, r0, r1
	str r0, [sp]
	adds r5, r7, #0
	adds r5, #0x98
	ldr r0, [r5]
	str r0, [sp, #4]
	adds r4, r7, #0
	adds r4, #0x9c
	ldr r0, [r4]
	ldr r1, [sp, #0x14]
	adds r0, r0, r1
	str r0, [sp, #8]
	adds r1, r6, #4
	adds r0, r6, #0
	movs r2, #3
	bl sub_8049748
	movs r1, #0x46
	adds r1, r1, r7
	mov sb, r1
	cmp r0, #0
	bne _0804E588
	movs r2, #0
	ldrsh r0, [r1, r2]
	cmp r0, #2
	bgt _0804E588
	ldr r0, [sp]
	mov r3, r8
	str r0, [r3]
	ldr r2, [sp, #4]
	str r2, [r5]
	ldr r1, [sp, #8]
	str r1, [r4]
	asrs r0, r0, #0x10
	strh r0, [r7, #2]
	ldr r0, _0804E584
	adds r1, r1, r2
	asrs r1, r1, #0x10
	ldrh r0, [r0]
	subs r0, r0, r1
	strh r0, [r7, #4]
	adds r0, r6, #0
	movs r1, #2
	movs r2, #0
	bl sub_08047958
	b _0804E774
	.align 2, 0
_0804E584: .4byte gMapPixelSizeY
_0804E588:
	movs r0, #9
	adds r5, r6, #0
	adds r5, #0x65
	movs r4, #0
	strb r0, [r5]
	adds r0, r6, #0
	movs r1, #0
	bl sub_8049038
	adds r0, r7, #0
	adds r0, #0xa0
	ldr r1, _0804E60C
	ldrb r2, [r5]
	lsls r2, r2, #2
	adds r2, r2, r1
	ldrh r1, [r2]
	ldrb r3, [r2, #2]
	movs r2, #0
	bl sub_8003368
	ldr r0, [r6, #0x2c]
	ldr r2, _0804E610
	adds r1, r7, #0
	adds r1, #0xaa
	ldrb r1, [r1]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r2, [r1]
	movs r1, #0
	movs r3, #0
	bl sub_8003884
	adds r0, r7, #0
	adds r0, #0xb0
	strb r4, [r0]
	mov r4, sb
	movs r5, #0
	ldrsh r0, [r4, r5]
	cmp r0, #2
	ble _0804E5DA
	b _0804E774
_0804E5DA:
	ldr r0, _0804E614
	ldrb r0, [r0]
	cmp r0, #0
	beq _0804E628
	ldr r2, _0804E618
	movs r1, #0x83
	lsls r1, r1, #3
	adds r0, r2, r1
	ldrh r0, [r0]
	ldr r3, _0804E61C
	ldr r4, _0804E620
	adds r1, r2, r4
	ldrb r3, [r3]
	adds r1, r1, r3
	ldrb r1, [r1]
	ldr r5, _0804E624
	adds r2, r2, r5
	ldr r2, [r2]
	movs r3, #0x80
	lsls r3, r3, #9
	adds r2, r2, r3
	bl audio_new_fx
	b _0804E62C
	.align 2, 0
_0804E60C: .4byte 0x080B1550
_0804E610: .4byte dword_80CC290
_0804E614: .4byte gCanPlaySfx
_0804E618: .4byte 0x080CE440
_0804E61C: .4byte gSfxVolume
_0804E620: .4byte 0x0000041A
_0804E624: .4byte 0x0000041C
_0804E628:
	movs r0, #1
	rsbs r0, r0, #0
_0804E62C:
	str r0, [r6, #0x58]
	mov r4, sb
	movs r5, #0
	ldrsh r0, [r4, r5]
	cmp r0, #1
	bgt _0804E640
	movs r0, #0x92
	bl init_function
	b _0804E774
_0804E640:
	movs r0, #0x91
	bl init_function
	b _0804E774
_0804E648:
	ldr r0, _0804E73C
	ldrb r1, [r0]
	cmp r1, #0
	beq _0804E652
	b _0804E75C
_0804E652:
	adds r0, r6, #0
	adds r0, #0x65
	strb r1, [r0]
	adds r0, r7, #0
	adds r0, #0xa0
	ldr r2, _0804E740
	ldrh r1, [r2]
	ldrb r3, [r2, #2]
	movs r2, #0
	bl sub_8003368
	ldr r0, [r6, #0x2c]
	ldr r2, _0804E744
	adds r1, r7, #0
	adds r1, #0xaa
	ldrb r1, [r1]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r2, [r1]
	movs r1, #0
	movs r3, #0
	bl sub_8003884
	ldr r0, _0804E748
	ldrb r0, [r0]
	cmp r0, #1
	bls _0804E690
	ldr r0, _0804E74C
	ldrb r0, [r0]
	cmp r0, #1
	bhi _0804E694
_0804E690:
	.2byte 0xEE00, 0xEE00
_0804E694:
	adds r0, r7, #0
	adds r0, #0x46
	movs r2, #0
	ldrsh r1, [r0, r2]
	mov sb, r0
	cmp r1, #2
	bgt _0804E774
	movs r5, #0
	ldr r0, _0804E748
	adds r6, #0x5e
	mov r8, r6
	ldrb r0, [r0]
	cmp r5, r0
	bhs _0804E6E8
	ldr r6, _0804E750
_0804E6B2:
	ldr r0, _0804E754
	lsls r4, r5, #2
	adds r4, r4, r0
	ldr r0, [r4]
	movs r1, #1
	movs r2, #1
	bl sub_8047430
	ldr r0, [r4]
	ldr r0, [r0]
	adds r1, r0, #0
	adds r1, #0x48
	ldrb r0, [r1]
	cmp r0, #0
	bne _0804E6DA
	movs r0, #1
	strb r0, [r1]
	ldrb r0, [r6]
	adds r0, #1
	strb r0, [r6]
_0804E6DA:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	ldr r0, _0804E748
	ldrb r0, [r0]
	cmp r5, r0
	blo _0804E6B2
_0804E6E8:
	mov r3, sb
	movs r4, #0
	ldrsh r0, [r3, r4]
	cmp r0, #1
	bgt _0804E734
	movs r5, #0
	ldr r0, _0804E74C
	ldrb r0, [r0]
	cmp r5, r0
	bhs _0804E734
	ldr r6, _0804E750
_0804E6FE:
	ldr r0, _0804E758
	lsls r4, r5, #2
	adds r4, r4, r0
	ldr r0, [r4]
	movs r1, #1
	movs r2, #1
	bl sub_8047430
	ldr r0, [r4]
	ldr r0, [r0]
	adds r1, r0, #0
	adds r1, #0x48
	ldrb r0, [r1]
	cmp r0, #0
	bne _0804E726
	movs r0, #1
	strb r0, [r1]
	ldrb r0, [r6]
	adds r0, #1
	strb r0, [r6]
_0804E726:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	ldr r0, _0804E74C
	ldrb r0, [r0]
	cmp r5, r0
	blo _0804E6FE
_0804E734:
	movs r0, #0xa
_0804E736:
	mov r5, r8
	strh r0, [r5]
	b _0804E774
	.align 2, 0
_0804E73C: .4byte byte_203F99E
_0804E740: .4byte 0x080B1550
_0804E744: .4byte dword_80CC290
_0804E748: .4byte 0x0203F918
_0804E74C: .4byte 0x0203F919
_0804E750: .4byte 0x0203DFE4
_0804E754: .4byte 0x0203F8E4
_0804E758: .4byte 0x0203F8EC
_0804E75C:
	ldr r0, _0804E76C
	ldrb r0, [r0, #0x13]
	cmp r0, #0
	bne _0804E774
	movs r0, #1
	bl sub_805E1DC
	b _0804E774
	.align 2, 0
_0804E76C: .4byte gGameStatus
_0804E770:
	.2byte 0xEE00, 0xEE00
_0804E774:
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	.thumb
sub_804E784: @ 0x0804E784
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	adds r6, r0, #0
	adds r7, r1, #0
	adds r0, #0x65
	ldrb r0, [r0]
	cmp r0, #0xe
	bls _0804E7A0
	bl _0804F11C
_0804E7A0:
	lsls r0, r0, #2
	ldr r1, _0804E7AC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0804E7AC: .4byte 0x0804E7B0
_0804E7B0: @ jump table
	.4byte _0804E840 @ case 0
	.4byte _0804EE18 @ case 1
	.4byte _0804ED04 @ case 2
	.4byte _0804F11C @ case 3
	.4byte _0804EBC0 @ case 4
	.4byte _0804E926 @ case 5
	.4byte _0804E9C2 @ case 6
	.4byte _0804F11C @ case 7
	.4byte _0804F11C @ case 8
	.4byte _0804F11C @ case 9
	.4byte _0804F11C @ case 10
	.4byte _0804F11C @ case 11
	.4byte _0804EF00 @ case 12
	.4byte _0804F11C @ case 13
	.4byte _0804E7EC @ case 14
_0804E7EC:
	adds r5, r7, #0
	adds r5, #0xa0
	adds r0, r5, #0
	bl sub_8003770
	cmp r0, #0
	beq _0804E828
	adds r0, r7, #0
	adds r0, #0x94
	bl sub_80494FC
	adds r4, r0, #0
	bl sub_8048E0C
	adds r1, r0, #0
	adds r0, r6, #0
	bl sub_8049038
	ldr r1, _0804E83C
	adds r0, r6, #0
	adds r0, #0x65
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrh r1, [r0]
	ldrb r3, [r0, #2]
	adds r0, r5, #0
	movs r2, #0
	bl sub_8003368
_0804E828:
	adds r0, r6, #0
	movs r1, #1
	bl sub_8047A08
	adds r1, r7, #0
	adds r1, #0xb0
	movs r0, #0
	strb r0, [r1]
	bl _0804F120
	.align 2, 0
_0804E83C: .4byte 0x080B1590
_0804E840:
	adds r0, r6, #0
	movs r1, #0
	movs r2, #1
	movs r3, #1
	bl sub_08049574
	cmp r0, #0
	bne _0804E854
	bl _0804F120
_0804E854:
	movs r2, #1
	movs r5, #0
	ldr r0, _0804E904
	ldrb r0, [r0]
	ldr r4, _0804E908
	cmp r5, r0
	bhs _0804E880
	ldr r3, _0804E90C
	adds r1, r0, #0
_0804E866:
	lsls r0, r5, #2
	adds r0, r0, r3
	ldr r0, [r0]
	adds r0, #0x65
	ldrb r0, [r0]
	cmp r0, #0
	beq _0804E876
	movs r2, #0
_0804E876:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, r1
	blo _0804E866
_0804E880:
	movs r5, #0
	ldrb r0, [r4]
	cmp r5, r0
	bhs _0804E8A6
	ldr r3, _0804E910
	adds r1, r0, #0
_0804E88C:
	lsls r0, r5, #2
	adds r0, r0, r3
	ldr r0, [r0]
	adds r0, #0x65
	ldrb r0, [r0]
	cmp r0, #0
	beq _0804E89C
	movs r2, #0
_0804E89C:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, r1
	blo _0804E88C
_0804E8A6:
	cmp r2, #0
	bne _0804E8AE
	bl _0804F120
_0804E8AE:
	movs r0, #0x5e
	adds r0, r0, r6
	mov r8, r0
	ldrh r0, [r0]
	cmp r0, #0
	bne _0804E91C
	movs r0, #5
	adds r5, r6, #0
	adds r5, #0x65
	strb r0, [r5]
	adds r0, r7, #0
	adds r0, #0x94
	bl sub_80494FC
	adds r4, r0, #0
	bl sub_8048E0C
	adds r1, r0, #0
	adds r0, r6, #0
	bl sub_8049038
	adds r0, r7, #0
	adds r0, #0xa0
	ldr r1, _0804E914
	ldrb r2, [r5]
	lsls r2, r2, #2
	adds r2, r2, r1
	ldrh r1, [r2]
	ldrb r3, [r2, #2]
	movs r2, #0
	bl sub_8003368
	ldr r1, _0804E918
	ldrb r0, [r1]
	cmp r0, #0
	bne _0804E8FA
	.2byte 0xEE00, 0xEE00
_0804E8FA:
	subs r0, #1
	strb r0, [r1]
	movs r0, #0x18
	b _0804EBBA
	.align 2, 0
_0804E904: .4byte 0x0203F91A
_0804E908: .4byte 0x0203F91B
_0804E90C: .4byte 0x0203F8F4
_0804E910: .4byte 0x0203F8FC
_0804E914: .4byte 0x080B1590
_0804E918: .4byte 0x0203F8D7
_0804E91C:
	subs r0, #1
	mov r2, r8
	strh r0, [r2]
	bl _0804F120
_0804E926:
	adds r0, r6, #0
	adds r0, #0x5e
	ldrh r1, [r0]
	mov r8, r0
	cmp r1, #0
	bne _0804E9BE
	adds r5, r7, #0
	adds r5, #0x94
	adds r0, r5, #0
	bl sub_80494FC
	adds r4, r0, #0
	bl sub_8048E0C
	adds r1, r0, #0
	adds r0, r6, #0
	bl sub_8049038
	ldr r0, _0804E99C
	ldr r1, _0804E9A0
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	beq _0804E962
	ldrb r3, [r7, #8]
	movs r0, #0xa
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_802D888
_0804E962:
	movs r0, #6
	adds r1, r6, #0
	adds r1, #0x65
	strb r0, [r1]
	ldr r0, _0804E9A4
	ldrb r0, [r0]
	cmp r0, #0
	beq _0804E9B4
	ldr r2, _0804E9A8
	movs r3, #0xfe
	lsls r3, r3, #2
	adds r0, r2, r3
	ldrh r0, [r0]
	ldr r3, _0804E9AC
	ldr r4, _0804E9B0
	adds r1, r2, r4
	ldrb r3, [r3]
	adds r1, r1, r3
	ldrb r1, [r1]
	movs r5, #0xff
	lsls r5, r5, #2
	adds r2, r2, r5
	ldr r2, [r2]
	movs r3, #0x80
	lsls r3, r3, #9
	adds r2, r2, r3
	bl audio_new_fx
	b _0804E9B8
	.align 2, 0
_0804E99C: .4byte 0x0203DFD4
_0804E9A0: .4byte 0x0203DFD5
_0804E9A4: .4byte gCanPlaySfx
_0804E9A8: .4byte 0x080CE440
_0804E9AC: .4byte gSfxVolume
_0804E9B0: .4byte 0x000003FA
_0804E9B4:
	movs r0, #1
	rsbs r0, r0, #0
_0804E9B8:
	str r0, [r6, #0x58]
	movs r0, #8
	b _0804F09E
_0804E9BE:
	subs r0, r1, #1
	b _0804F106
_0804E9C2:
	movs r0, #0x5e
	adds r0, r0, r6
	mov r8, r0
	ldrh r0, [r0]
	adds r1, r0, #0
	cmp r1, #0
	beq _0804E9D2
	b _0804EBB8
_0804E9D2:
	ldr r2, _0804EAA8
	ldrb r0, [r2]
	cmp r0, #0
	beq _0804E9DC
	b _0804EB6C
_0804E9DC:
	movs r0, #3
	strb r0, [r2]
	bl sub_8047D58
	ldr r1, _0804EAAC
	mov sb, r1
	ldrb r0, [r1]
	cmp r0, #0
	bne _0804EAD8
	movs r0, #2
	adds r4, r6, #0
	adds r4, #0x65
	strb r0, [r4]
	adds r0, r6, #0
	bl sub_8047C60
	adds r5, r0, #0
	bl sub_8048E0C
	adds r1, r0, #0
	adds r0, r6, #0
	bl sub_8049038
	adds r0, r7, #0
	adds r0, #0xa0
	ldr r1, _0804EAB0
	ldrb r2, [r4]
	lsls r2, r2, #2
	adds r2, r2, r1
	ldrh r1, [r2]
	ldrb r3, [r2, #2]
	movs r2, #0
	bl sub_8003368
	ldr r0, [r6, #0x2c]
	movs r1, #0xc0
	lsls r1, r1, #8
	adds r2, r5, #0
	movs r3, #0
	bl sub_8003884
	ldr r0, _0804EAB4
	adds r2, r6, #0
	adds r2, #0x64
	ldrb r1, [r2]
	lsls r1, r1, #3
	adds r1, r1, r0
	ldr r0, _0804EAB8
	ldrb r0, [r0]
	ldr r1, [r1]
	lsls r0, r0, #4
	adds r0, r0, r1
	ldrb r0, [r0, #0xa]
	mov r3, r8
	strh r0, [r3]
	ldr r1, _0804EABC
	ldr r0, _0804EAC0
	str r0, [r1]
	ldr r1, _0804EAC4
	ldrb r0, [r1]
	adds r4, r2, #0
	cmp r0, #0
	beq _0804EA8C
	movs r0, #0
	strb r0, [r1]
	ldr r0, _0804EAC8
	ldrb r0, [r0]
	cmp r0, #0
	beq _0804EA8C
	ldr r2, _0804EACC
	movs r5, #0xb7
	lsls r5, r5, #3
	adds r0, r2, r5
	ldrh r0, [r0]
	ldr r3, _0804EAD0
	adds r5, #2
	adds r1, r2, r5
	ldrb r3, [r3]
	adds r1, r1, r3
	ldrb r1, [r1]
	ldr r3, _0804EAD4
	adds r2, r2, r3
	ldr r2, [r2]
	movs r5, #0x80
	lsls r5, r5, #9
	adds r2, r2, r5
	bl audio_new_fx
_0804EA8C:
	ldr r2, _0804EAAC
	ldr r0, _0804EAB4
	ldrb r1, [r4]
	lsls r1, r1, #3
	adds r1, r1, r0
	ldr r0, _0804EAB8
	ldrb r0, [r0]
	ldr r1, [r1]
	lsls r0, r0, #4
	adds r0, r0, r1
	ldrb r0, [r0, #4]
	strb r0, [r2]
	b _0804EB54
	.align 2, 0
_0804EAA8: .4byte 0x0203F8D7
_0804EAAC: .4byte 0x0203F8D4
_0804EAB0: .4byte 0x080B1590
_0804EAB4: .4byte 0x080B19E0
_0804EAB8: .4byte 0x0203F8D5
_0804EABC: .4byte 0x0203F8B8
_0804EAC0: .4byte 0x00001FFF
_0804EAC4: .4byte 0x0203F8D9
_0804EAC8: .4byte gCanPlaySfx
_0804EACC: .4byte 0x080CE440
_0804EAD0: .4byte gSfxVolume
_0804EAD4: .4byte 0x000005BC
_0804EAD8:
	movs r0, #4
	adds r5, r6, #0
	adds r5, #0x65
	strb r0, [r5]
	adds r0, r7, #0
	adds r0, #0x94
	bl sub_80494FC
	adds r4, r0, #0
	bl sub_8048E0C
	adds r1, r0, #0
	adds r0, r6, #0
	bl sub_8049038
	adds r0, r7, #0
	adds r0, #0xa0
	ldr r1, _0804EB60
	ldrb r2, [r5]
	lsls r2, r2, #2
	adds r2, r2, r1
	ldrh r1, [r2]
	ldrb r3, [r2, #2]
	movs r2, #0
	bl sub_8003368
	ldr r0, [r6, #0x2c]
	ldr r1, _0804EB64
	mov sl, r1
	subs r5, #1
	ldrb r2, [r5]
	lsls r2, r2, #3
	add r2, sl
	ldr r6, _0804EB68
	ldrb r1, [r6]
	ldr r2, [r2]
	lsls r1, r1, #4
	adds r1, r1, r2
	ldr r1, [r1, #0xc]
	adds r2, r4, #0
	movs r3, #0
	bl sub_8003884
	mov r2, sb
	ldrb r0, [r2]
	cmp r0, #0
	bne _0804EB3A
	.2byte 0xEE00, 0xEE00
_0804EB3A:
	subs r0, #1
	mov r3, sb
	strb r0, [r3]
	ldrb r0, [r5]
	lsls r0, r0, #3
	add r0, sl
	ldrb r1, [r6]
	ldr r0, [r0]
	lsls r1, r1, #4
	adds r1, r1, r0
	ldrh r0, [r1, #8]
	mov r4, r8
	strh r0, [r4]
_0804EB54:
	adds r1, r7, #0
	adds r1, #0xb0
	movs r0, #1
	strb r0, [r1]
	b _0804F120
	.align 2, 0
_0804EB60: .4byte 0x080B1590
_0804EB64: .4byte 0x080B19E0
_0804EB68: .4byte 0x0203F8D5
_0804EB6C:
	adds r0, r6, #0
	adds r0, #0x65
	strb r1, [r0]
	adds r0, r7, #0
	adds r0, #0xa0
	ldr r2, _0804EBAC
	ldrh r1, [r2]
	ldrb r3, [r2, #2]
	movs r2, #0
	bl sub_8003368
	ldr r0, [r6, #0x2c]
	ldr r2, _0804EBB0
	adds r1, r7, #0
	adds r1, #0xaa
	ldrb r1, [r1]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r2, [r1]
	movs r1, #0
	movs r3, #0
	bl sub_8003884
	ldr r2, _0804EBB4
	adds r0, r6, #0
	adds r0, #0x64
	ldrb r1, [r0]
	movs r0, #0xf
	ands r0, r1
	adds r0, r0, r2
	ldrb r0, [r0]
	b _0804F106
	.align 2, 0
_0804EBAC: .4byte 0x080B1590
_0804EBB0: .4byte dword_80CC290
_0804EBB4: .4byte 0x080B1AE0
_0804EBB8:
	subs r0, #1
_0804EBBA:
	mov r1, r8
	strh r0, [r1]
	b _0804F120
_0804EBC0:
	adds r2, r6, #0
	adds r2, #0x65
	str r2, [sp, #0x18]
	ldrb r0, [r2]
	lsls r0, r0, #2
	ldr r3, _0804ECB8
	adds r0, r0, r3
	ldrh r1, [r0]
	ldrb r2, [r0, #2]
	adds r0, r7, #0
	bl sub_8047CC0
	ldr r0, [r6, #0x2c]
	add r1, sp, #0xc
	add r2, sp, #0x10
	add r3, sp, #0x14
	bl sub_80038C4
	movs r4, #0x5e
	adds r4, r4, r6
	mov sb, r4
	ldrh r1, [r4]
	movs r0, #0x20
	ands r0, r1
	adds r5, r7, #0
	adds r5, #0x94
	cmp r0, #0
	beq _0804EC34
	adds r0, r5, #0
	bl sub_80494FC
	adds r4, r0, #0
	bl sub_8048E0C
	adds r1, r0, #0
	adds r0, r6, #0
	bl sub_8049038
	ldr r0, [r6, #0x2c]
	ldr r3, _0804ECBC
	adds r1, r6, #0
	adds r1, #0x64
	ldrb r2, [r1]
	lsls r2, r2, #3
	adds r2, r2, r3
	ldr r1, _0804ECC0
	ldrb r1, [r1]
	ldr r2, [r2]
	lsls r1, r1, #4
	adds r1, r1, r2
	ldr r1, [r1, #0xc]
	adds r2, r4, #0
	movs r3, #0
	bl sub_8003884
	ldr r0, [r6, #0x2c]
	bl sub_80038A4
_0804EC34:
	ldr r0, [r5]
	ldr r1, [sp, #0xc]
	adds r0, r0, r1
	str r0, [sp]
	movs r0, #0x98
	adds r0, r0, r7
	mov sl, r0
	ldr r0, [r0]
	str r0, [sp, #4]
	movs r1, #0x9c
	adds r1, r1, r7
	mov r8, r1
	ldr r0, [r1]
	ldr r1, [sp, #0x14]
	adds r0, r0, r1
	str r0, [sp, #8]
	adds r0, r6, #0
	mov r1, sp
	movs r2, #1
	bl sub_080491DC
	cmp r0, #0
	beq _0804EC68
	movs r0, #0
	mov r2, sb
	strh r0, [r2]
_0804EC68:
	mov r3, sb
	ldrh r4, [r3]
	cmp r4, #0
	bne _0804ECCC
	ldr r5, [sp, #0x18]
	strb r4, [r5]
	adds r0, r7, #0
	adds r0, #0xa0
	ldr r2, _0804ECB8
	ldrh r1, [r2]
	ldrb r3, [r2, #2]
	movs r2, #0
	bl sub_8003368
	adds r0, r7, #0
	adds r0, #0xb0
	strb r4, [r0]
	ldr r0, [r6, #0x2c]
	ldr r2, _0804ECC4
	adds r1, r7, #0
	adds r1, #0xaa
	ldrb r1, [r1]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r2, [r1]
	movs r1, #0
	movs r3, #0
	bl sub_8003884
	ldr r2, _0804ECC8
	adds r0, r6, #0
	adds r0, #0x64
	ldrb r1, [r0]
	movs r0, #0xf
	ands r0, r1
	adds r0, r0, r2
	ldrb r0, [r0]
	mov r3, sb
	strh r0, [r3]
	b _0804EE92
	.align 2, 0
_0804ECB8: .4byte 0x080B1590
_0804ECBC: .4byte 0x080B19E0
_0804ECC0: .4byte 0x0203F8D5
_0804ECC4: .4byte dword_80CC290
_0804ECC8: .4byte 0x080B1AE0
_0804ECCC:
	ldr r0, [sp]
	str r0, [r5]
	ldr r2, [sp, #4]
	mov r5, sl
	str r2, [r5]
	ldr r1, [sp, #8]
	mov r3, r8
	str r1, [r3]
	asrs r0, r0, #0x10
	strh r0, [r7, #2]
	ldr r0, _0804ED00
	adds r1, r1, r2
	asrs r1, r1, #0x10
	ldrh r0, [r0]
	subs r0, r0, r1
	strh r0, [r7, #4]
	adds r0, r6, #0
	movs r1, #2
	movs r2, #0
	bl sub_08047958
	mov r4, sb
	ldrh r0, [r4]
	subs r0, #1
	strh r0, [r4]
	b _0804F120
	.align 2, 0
_0804ED00: .4byte gMapPixelSizeY
_0804ED04:
	adds r4, r6, #0
	adds r4, #0x65
	ldrb r0, [r4]
	lsls r0, r0, #2
	ldr r5, _0804ED5C
	adds r0, r0, r5
	ldrh r1, [r0]
	ldrb r2, [r0, #2]
	adds r0, r7, #0
	bl sub_8047CC0
	ldr r0, [r6, #0x2c]
	add r1, sp, #0xc
	add r2, sp, #0x10
	add r3, sp, #0x14
	bl sub_80038C4
	movs r0, #0x94
	adds r0, r0, r7
	mov sl, r0
	ldr r0, [r0]
	ldr r1, [sp, #0xc]
	adds r0, r0, r1
	str r0, [sp]
	movs r1, #0x98
	adds r1, r1, r7
	mov sb, r1
	ldr r0, [r1]
	str r0, [sp, #4]
	adds r5, r7, #0
	adds r5, #0x9c
	ldr r0, [r5]
	ldr r1, [sp, #0x14]
	adds r0, r0, r1
	str r0, [sp, #8]
	adds r0, r6, #0
	adds r0, #0x5e
	ldrh r1, [r0]
	mov r8, r0
	cmp r1, #0
	bne _0804ED60
	movs r0, #1
	strb r0, [r4]
	b _0804F120
	.align 2, 0
_0804ED5C: .4byte 0x080B1590
_0804ED60:
	adds r0, r6, #0
	mov r1, sp
	movs r2, #1
	bl sub_080491DC
	cmp r0, #0
	bne _0804ED76
	ldr r0, _0804EDCC
	ldrb r0, [r0]
	cmp r0, #0
	beq _0804EDE0
_0804ED76:
	adds r0, r6, #0
	bl sub_8047C60
	adds r5, r0, #0
	bl sub_8048E0C
	adds r1, r0, #0
	adds r0, r6, #0
	bl sub_8049038
	ldr r0, _0804EDD0
	ldrb r0, [r0]
	cmp r0, #0
	beq _0804EDA8
	adds r0, r7, #0
	adds r0, #0xa0
	ldrb r2, [r4]
	lsls r2, r2, #2
	ldr r3, _0804EDD4
	adds r2, r2, r3
	ldrh r1, [r2]
	ldrb r3, [r2, #2]
	movs r2, #0
	bl sub_8003368
_0804EDA8:
	ldr r0, [r6, #0x2c]
	ldr r3, _0804EDD8
	adds r1, r6, #0
	adds r1, #0x64
	ldrb r2, [r1]
	lsls r2, r2, #3
	adds r2, r2, r3
	ldr r1, _0804EDDC
	ldrb r1, [r1]
	ldr r2, [r2]
	lsls r1, r1, #4
	adds r1, r1, r2
	ldr r1, [r1, #0xc]
	adds r2, r5, #0
	movs r3, #0
	bl sub_8003884
	b _0804EE0A
	.align 2, 0
_0804EDCC: .4byte 0x0203F8DC
_0804EDD0: .4byte 0x0203F8DD
_0804EDD4: .4byte 0x080B1590
_0804EDD8: .4byte 0x080B19E0
_0804EDDC: .4byte 0x0203F8D5
_0804EDE0:
	ldr r0, [sp]
	mov r4, sl
	str r0, [r4]
	ldr r2, [sp, #4]
	mov r1, sb
	str r2, [r1]
	ldr r1, [sp, #8]
	str r1, [r5]
	asrs r0, r0, #0x10
	strh r0, [r7, #2]
	ldr r0, _0804EE14
	adds r1, r1, r2
	asrs r1, r1, #0x10
	ldrh r0, [r0]
	subs r0, r0, r1
	strh r0, [r7, #4]
	adds r0, r6, #0
	movs r1, #2
	movs r2, #0
	bl sub_08047958
_0804EE0A:
	mov r2, r8
	ldrh r0, [r2]
	subs r0, #1
	strh r0, [r2]
	b _0804F120
	.align 2, 0
_0804EE14: .4byte gMapPixelSizeY
_0804EE18:
	movs r0, #0xc
	movs r3, #0x65
	adds r3, r3, r6
	mov r8, r3
	movs r4, #0
	strb r0, [r3]
	ldr r0, [r6, #0x34]
	ldr r1, [r6, #0x30]
	subs r0, r0, r1
	asrs r0, r0, #1
	adds r1, r1, r0
	str r1, [r6, #4]
	ldr r1, [r7, #0x54]
	asrs r1, r1, #1
	ldr r0, [r6, #0x38]
	subs r0, r0, r1
	str r0, [r6, #0xc]
	adds r0, r7, #0
	adds r0, #0x94
	adds r1, r6, #4
	bl sub_804953C
	adds r5, r0, #0
	bl sub_8048E0C
	adds r1, r0, #0
	adds r0, r6, #0
	bl sub_8049038
	adds r0, r7, #0
	adds r0, #0xa0
	ldr r1, _0804EED8
	mov r3, r8
	ldrb r2, [r3]
	lsls r2, r2, #2
	adds r2, r2, r1
	ldrh r1, [r2]
	ldrb r3, [r2, #2]
	movs r2, #0
	bl sub_8003368
	ldr r0, [r6, #0x2c]
	ldr r3, _0804EEDC
	adds r1, r6, #0
	adds r1, #0x64
	ldrb r2, [r1]
	lsls r2, r2, #3
	adds r2, r2, r3
	ldr r1, _0804EEE0
	ldrb r1, [r1]
	ldr r2, [r2]
	lsls r1, r1, #4
	adds r1, r1, r2
	ldr r1, [r1, #0xc]
	adds r2, r5, #0
	movs r3, #0
	bl sub_8003884
	adds r0, r7, #0
	adds r0, #0xb0
	strb r4, [r0]
_0804EE92:
	ldr r0, _0804EEE4
	str r4, [r0]
	ldr r1, _0804EEE8
	ldrb r0, [r1]
	cmp r0, #0
	beq _0804EEA0
	b _0804F120
_0804EEA0:
	movs r0, #1
	strb r0, [r1]
	ldr r0, _0804EEEC
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804EEAE
	b _0804F120
_0804EEAE:
	ldr r2, _0804EEF0
	movs r4, #0xb6
	lsls r4, r4, #3
	adds r0, r2, r4
	ldrh r0, [r0]
	ldr r3, _0804EEF4
	ldr r5, _0804EEF8
	adds r1, r2, r5
	ldrb r3, [r3]
	adds r1, r1, r3
	ldrb r1, [r1]
	ldr r3, _0804EEFC
	adds r2, r2, r3
	ldr r2, [r2]
	movs r4, #0x80
	lsls r4, r4, #9
	adds r2, r2, r4
	bl audio_new_fx
	b _0804F120
	.align 2, 0
_0804EED8: .4byte 0x080B1590
_0804EEDC: .4byte 0x080B19E0
_0804EEE0: .4byte 0x0203F8D5
_0804EEE4: .4byte 0x0203F8B8
_0804EEE8: .4byte 0x0203F8D9
_0804EEEC: .4byte gCanPlaySfx
_0804EEF0: .4byte 0x080CE440
_0804EEF4: .4byte gSfxVolume
_0804EEF8: .4byte 0x000005B2
_0804EEFC: .4byte 0x000005B4
_0804EF00:
	ldr r0, [r6, #0x2c]
	add r1, sp, #0xc
	add r2, sp, #0x10
	add r3, sp, #0x14
	bl sub_80038C4
	movs r5, #0x94
	adds r5, r5, r7
	mov r8, r5
	ldr r0, [r5]
	ldr r1, [sp, #0xc]
	adds r0, r0, r1
	str r0, [sp]
	adds r5, r7, #0
	adds r5, #0x98
	ldr r0, [r5]
	str r0, [sp, #4]
	adds r4, r7, #0
	adds r4, #0x9c
	ldr r0, [r4]
	ldr r1, [sp, #0x14]
	adds r0, r0, r1
	str r0, [sp, #8]
	adds r1, r6, #4
	adds r0, r6, #0
	movs r2, #3
	bl sub_8049748
	movs r1, #0x46
	adds r1, r1, r7
	mov sb, r1
	cmp r0, #0
	bne _0804EF78
	movs r2, #0
	ldrsh r0, [r1, r2]
	cmp r0, #2
	bgt _0804EF78
	ldr r0, [sp]
	mov r3, r8
	str r0, [r3]
	ldr r2, [sp, #4]
	str r2, [r5]
	ldr r1, [sp, #8]
	str r1, [r4]
	asrs r0, r0, #0x10
	strh r0, [r7, #2]
	ldr r0, _0804EF74
	adds r1, r1, r2
	asrs r1, r1, #0x10
	ldrh r0, [r0]
	subs r0, r0, r1
	strh r0, [r7, #4]
	adds r0, r6, #0
	movs r1, #2
	movs r2, #0
	bl sub_08047958
	b _0804F120
	.align 2, 0
_0804EF74: .4byte gMapPixelSizeY
_0804EF78:
	movs r4, #0
	adds r5, r6, #0
	adds r5, #0x65
	strb r4, [r5]
	adds r0, r6, #0
	movs r1, #0
	bl sub_8049038
	adds r0, r7, #0
	adds r0, #0xa0
	ldr r1, _0804F010
	ldrb r2, [r5]
	lsls r2, r2, #2
	adds r2, r2, r1
	ldrh r1, [r2]
	ldrb r3, [r2, #2]
	movs r2, #0
	bl sub_8003368
	ldr r0, [r6, #0x2c]
	ldr r2, _0804F014
	adds r1, r7, #0
	adds r1, #0xaa
	ldrb r1, [r1]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r2, [r1]
	movs r1, #0
	movs r3, #0
	bl sub_8003884
	adds r0, r7, #0
	adds r0, #0xb0
	strb r4, [r0]
	ldr r0, _0804F018
	ldrb r0, [r0]
	cmp r0, #2
	beq _0804EFC8
	.2byte 0xEE00, 0xEE00
_0804EFC8:
	ldr r0, _0804F01C
	ldrb r0, [r0]
	cmp r0, #2
	beq _0804EFD4
	.2byte 0xEE00, 0xEE00
_0804EFD4:
	mov r4, sb
	movs r5, #0
	ldrsh r0, [r4, r5]
	cmp r0, #2
	ble _0804EFE0
	b _0804F120
_0804EFE0:
	ldr r0, _0804F020
	ldrb r0, [r0]
	cmp r0, #0
	beq _0804F034
	ldr r2, _0804F024
	movs r1, #0x83
	lsls r1, r1, #3
	adds r0, r2, r1
	ldrh r0, [r0]
	ldr r3, _0804F028
	ldr r4, _0804F02C
	adds r1, r2, r4
	ldrb r3, [r3]
	adds r1, r1, r3
	ldrb r1, [r1]
	ldr r5, _0804F030
	adds r2, r2, r5
	ldr r2, [r2]
	movs r3, #0x80
	lsls r3, r3, #9
	adds r2, r2, r3
	bl audio_new_fx
	b _0804F038
	.align 2, 0
_0804F010: .4byte 0x080B1590
_0804F014: .4byte dword_80CC290
_0804F018: .4byte 0x0203F91A
_0804F01C: .4byte 0x0203F91B
_0804F020: .4byte gCanPlaySfx
_0804F024: .4byte 0x080CE440
_0804F028: .4byte gSfxVolume
_0804F02C: .4byte 0x0000041A
_0804F030: .4byte 0x0000041C
_0804F034:
	movs r0, #1
	rsbs r0, r0, #0
_0804F038:
	str r0, [r6, #0x58]
	movs r0, #0
	movs r1, #1
	bl RandomMinMax
	cmp r0, #0
	beq _0804F04C
	cmp r0, #1
	beq _0804F0B4
	b _0804F120
_0804F04C:
	movs r5, #0
	ldr r0, _0804F0A4
	adds r6, #0x5e
	mov r8, r6
	ldrb r0, [r0]
	cmp r5, r0
	bhs _0804F092
	ldr r6, _0804F0A8
_0804F05C:
	ldr r0, _0804F0AC
	lsls r4, r5, #2
	adds r4, r4, r0
	ldr r0, [r4]
	movs r1, #1
	movs r2, #1
	bl sub_8047430
	ldr r0, [r4]
	ldr r0, [r0]
	adds r1, r0, #0
	adds r1, #0x48
	ldrb r0, [r1]
	cmp r0, #0
	bne _0804F084
	movs r0, #1
	strb r0, [r1]
	ldrb r0, [r6]
	adds r0, #1
	strb r0, [r6]
_0804F084:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	ldr r0, _0804F0A4
	ldrb r0, [r0]
	cmp r5, r0
	blo _0804F05C
_0804F092:
	ldr r0, _0804F0B0
	movs r1, #6
	movs r2, #6
	bl DmaTransferObjPalette
	movs r0, #0xa
_0804F09E:
	mov r4, r8
	strh r0, [r4]
	b _0804F120
	.align 2, 0
_0804F0A4: .4byte 0x0203F91A
_0804F0A8: .4byte 0x0203DFE4
_0804F0AC: .4byte 0x0203F8F4
_0804F0B0: .4byte 0x083FD874
_0804F0B4:
	movs r5, #0
	ldr r0, _0804F10C
	adds r6, #0x5e
	mov r8, r6
	ldrb r0, [r0]
	cmp r5, r0
	bhs _0804F0FA
	ldr r6, _0804F110
_0804F0C4:
	ldr r0, _0804F114
	lsls r4, r5, #2
	adds r4, r4, r0
	ldr r0, [r4]
	movs r1, #1
	movs r2, #1
	bl sub_8047430
	ldr r0, [r4]
	ldr r0, [r0]
	adds r1, r0, #0
	adds r1, #0x48
	ldrb r0, [r1]
	cmp r0, #0
	bne _0804F0EC
	movs r0, #1
	strb r0, [r1]
	ldrb r0, [r6]
	adds r0, #1
	strb r0, [r6]
_0804F0EC:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	ldr r0, _0804F10C
	ldrb r0, [r0]
	cmp r5, r0
	blo _0804F0C4
_0804F0FA:
	ldr r0, _0804F118
	movs r1, #6
	movs r2, #6
	bl DmaTransferObjPalette
	movs r0, #0xa
_0804F106:
	mov r5, r8
	strh r0, [r5]
	b _0804F120
	.align 2, 0
_0804F10C: .4byte 0x0203F91B
_0804F110: .4byte 0x0203DFE4
_0804F114: .4byte 0x0203F8FC
_0804F118: .4byte 0x083FD854
_0804F11C:
	.2byte 0xEE00, 0xEE00
_0804F120:
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0


    .thumb
sub_804F130: @ 0x0804F130
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r4, r0, #0
	ldr r6, [r4]
	ldr r0, _0804F1DC
	mov sl, r0
	ldr r0, [r0]
	ldr r7, [r0]
	adds r0, r6, #0
	adds r0, #0xa0
	ldr r2, [r4, #0x28]
	ldrh r1, [r2, #4]
	ldrb r3, [r2, #8]
	movs r2, #0
	bl sub_8003368
	movs r1, #0x94
	adds r1, r1, r6
	mov r8, r1
	adds r0, r7, #0
	adds r0, #0x94
	ldr r0, [r0]
	str r0, [r1]
	movs r2, #0x98
	adds r2, r2, r6
	mov sb, r2
	adds r0, r7, #0
	adds r0, #0x98
	ldr r0, [r0]
	str r0, [r2]
	adds r5, r6, #0
	adds r5, #0x9c
	adds r0, r7, #0
	adds r0, #0x9c
	ldr r0, [r0]
	str r0, [r5]
	ldrh r0, [r7, #6]
	strh r0, [r6, #6]
	ldrb r0, [r7, #9]
	strb r0, [r6, #9]
	mov r3, sl
	ldr r0, [r3]
	ldr r0, [r0, #0x54]
	str r0, [r4, #0x54]
	ldrb r0, [r7, #8]
	strb r0, [r6, #8]
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0
	bl sub_08047958
	adds r1, r6, #0
	adds r1, #0x48
	ldrb r0, [r1]
	cmp r0, #0
	bne _0804F1B2
	movs r0, #1
	strb r0, [r1]
	ldr r1, _0804F1E0
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
_0804F1B2:
	mov r1, r8
	movs r2, #2
	ldrsh r0, [r1, r2]
	strh r0, [r6, #2]
	ldr r2, _0804F1E4
	ldr r1, [r5]
	mov r3, sb
	ldr r0, [r3]
	adds r1, r1, r0
	asrs r1, r1, #0x10
	ldrh r0, [r2]
	subs r0, r0, r1
	strh r0, [r6, #4]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804F1DC: .4byte 0x0203F8B4
_0804F1E0: .4byte 0x0203DFE4
_0804F1E4: .4byte gMapPixelSizeY

    .thumb
sub_804F1E8: @ 0x0804F1E8
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r5, r0, #0
	adds r4, r1, #0
	ldr r0, _0804F258
	ldrb r0, [r0]
	cmp r0, #0
	beq _0804F2E8
	ldr r0, _0804F25C
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804F2E8
	ldr r0, _0804F260
	adds r2, r5, #0
	adds r2, #0x64
	ldrb r1, [r2]
	lsls r1, r1, #3
	adds r1, r1, r0
	ldr r0, _0804F264
	ldrb r0, [r0]
	ldr r1, [r1]
	lsls r0, r0, #4
	adds r0, r0, r1
	ldr r1, [r0]
	ldr r0, _0804F268
	adds r6, r2, #0
	cmp r1, r0
	beq _0804F2E8
	ldr r0, _0804F26C
	cmp r1, r0
	beq _0804F2E8
	ldr r0, _0804F270
	cmp r1, r0
	beq _0804F2E8
	ldr r0, _0804F274
	adds r1, r4, #0
	adds r1, #0x64
	adds r2, r4, #0
	adds r2, #0x70
	bl VecFX_PointInBox
	cmp r0, #0
	beq _0804F296
	ldr r1, _0804F278
	ldrb r0, [r1, #0xe]
	cmp r0, #0
	beq _0804F280
	ldrh r0, [r1, #0xc]
	ldr r1, _0804F27C
	ldr r1, [r1]
	ands r0, r1
	cmp r0, #0
	bne _0804F296
	bl sub_801990C
	b _0804F296
	.align 2, 0
_0804F258: .4byte 0x03006EF3
_0804F25C: .4byte 0x03006EF1
_0804F260: .4byte 0x080B19E0
_0804F264: .4byte 0x0203F8D5
_0804F268: .4byte 0x0804CAB1
_0804F26C: .4byte 0x0804B75D
_0804F270: .4byte 0x0804B959
_0804F274: .4byte gPlayerPos
_0804F278: .4byte 0x03003578
_0804F27C: .4byte 0x0203F8B8
_0804F280:
	ldr r1, _0804F2A4
	ldrh r0, [r4]
	adds r0, r0, r1
	ldrb r0, [r0]
	ldrb r1, [r4, #0xb]
	movs r2, #2
	bl sub_80192D4
	adds r0, r5, #0
	bl sub_8049A04
_0804F296:
	ldrb r0, [r6]
	lsrs r0, r0, #4
	cmp r0, #0
	beq _0804F2A8
	cmp r0, #1
	beq _0804F2CC
	b _0804F2E8
	.align 2, 0
_0804F2A4: .4byte 0x080CC6B0
_0804F2A8:
	movs r0, #0x4d
	mov r1, sp
	bl sub_802C1DC
	cmp r0, #0
	beq _0804F2E8
	ldr r0, _0804F2C8
	adds r0, #0x4d
	ldrb r0, [r0]
	mov r1, sp
	ldrb r1, [r1]
	movs r2, #2
	bl sub_80192D4
	b _0804F2E8
	.align 2, 0
_0804F2C8: .4byte 0x080CC6B0
_0804F2CC:
	movs r0, #0x75
	mov r1, sp
	bl sub_802C1DC
	cmp r0, #0
	beq _0804F2E8
	ldr r0, _0804F2F0
	adds r0, #0x75
	ldrb r0, [r0]
	mov r1, sp
	ldrb r1, [r1]
	movs r2, #2
	bl sub_80192D4
_0804F2E8:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0804F2F0: .4byte 0x080CC6B0

	.thumb
sub_804F2F4: @ 0x0804F2F4
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r4, [r5]
	cmp r3, #0
	beq _0804F304
	bl sub_80499DC
	b _0804F4B8
_0804F304:
	adds r0, r5, #0
	bl sub_8049A04
	adds r2, r4, #0
	adds r2, #0x46
	ldr r0, _0804F354
	ldrb r1, [r0]
	ldrh r0, [r2]
	subs r0, r0, r1
	strh r0, [r2]
	bl sub_8047BEC
	movs r0, #0xe
	adds r1, r5, #0
	adds r1, #0x65
	strb r0, [r1]
	ldr r0, [r5, #0x58]
	bl audio_fx_still_active
	cmp r0, #0
	beq _0804F33C
	ldr r0, _0804F358
	ldrb r0, [r0]
	cmp r0, #0
	beq _0804F33C
	ldr r0, [r5, #0x58]
	bl audio_halt_fx
_0804F33C:
	adds r1, r5, #0
	adds r1, #0x64
	ldrb r0, [r1]
	lsrs r0, r0, #4
	adds r7, r1, #0
	cmp r0, #0
	beq _0804F35C
	cmp r0, #1
	beq _0804F440
	.2byte 0xEE00, 0xEE00
	b _0804F4AA
	.align 2, 0
_0804F354: .4byte 0x0203F8BC
_0804F358: .4byte gCanPlaySfx
_0804F35C:
	ldr r0, _0804F38C
	ldrb r0, [r0]
	cmp r0, #0
	beq _0804F3A0
	ldr r2, _0804F390
	movs r1, #0x86
	lsls r1, r1, #3
	adds r0, r2, r1
	ldrh r0, [r0]
	ldr r3, _0804F394
	ldr r6, _0804F398
	adds r1, r2, r6
	ldrb r3, [r3]
	adds r1, r1, r3
	ldrb r1, [r1]
	ldr r3, _0804F39C
	adds r2, r2, r3
	ldr r2, [r2]
	movs r6, #0x80
	lsls r6, r6, #9
	adds r2, r2, r6
	bl audio_new_fx
	b _0804F3A4
	.align 2, 0
_0804F38C: .4byte gCanPlaySfx
_0804F390: .4byte 0x080CE440
_0804F394: .4byte gSfxVolume
_0804F398: .4byte 0x00000432
_0804F39C: .4byte 0x00000434
_0804F3A0:
	movs r0, #1
	rsbs r0, r0, #0
_0804F3A4:
	str r0, [r5, #0x58]
	ldr r0, _0804F400
	ldrb r0, [r0]
	adds r6, r5, #0
	adds r6, #0x5e
	cmp r0, #0
	beq _0804F42C
	ldr r0, _0804F404
	ldr r0, [r0]
	cmp r0, #2
	bne _0804F42C
	ldr r0, _0804F408
	ldrb r1, [r7]
	lsls r1, r1, #3
	adds r1, r1, r0
	ldr r0, _0804F40C
	ldrb r0, [r0]
	ldr r1, [r1]
	lsls r0, r0, #4
	adds r0, r0, r1
	ldr r1, [r0]
	ldr r0, _0804F410
	cmp r1, r0
	bne _0804F41C
	movs r4, #0
	ldr r0, _0804F414
	ldrb r0, [r0]
	cmp r4, r0
	bhs _0804F42C
	ldr r7, _0804F418
_0804F3E0:
	lsls r0, r4, #2
	adds r0, r0, r7
	ldr r0, [r0]
	movs r1, #0
	movs r2, #0
	bl sub_8047430
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r0, _0804F414
	ldrb r0, [r0]
	cmp r4, r0
	blo _0804F3E0
	b _0804F42C
	.align 2, 0
_0804F400: .4byte 0x0203F8BD
_0804F404: .4byte 0x02001104
_0804F408: .4byte 0x080B19E0
_0804F40C: .4byte 0x0203F8D5
_0804F410: .4byte 0x0804CAB1
_0804F414: .4byte 0x0203F91C
_0804F418: .4byte 0x0203F904
_0804F41C:
	adds r0, r4, #0
	adds r0, #0xa0
	ldr r2, _0804F43C
	ldrh r1, [r2]
	ldrb r3, [r2, #2]
	movs r2, #0
	bl sub_8003368
_0804F42C:
	ldr r0, [r5, #0x2c]
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_8003884
	b _0804F4AE
	.align 2, 0
_0804F43C: .4byte 0x080B1248
_0804F440:
	ldr r0, _0804F470
	ldrb r0, [r0]
	cmp r0, #0
	beq _0804F484
	ldr r2, _0804F474
	movs r1, #0x80
	lsls r1, r1, #3
	adds r0, r2, r1
	ldrh r0, [r0]
	ldr r3, _0804F478
	ldr r6, _0804F47C
	adds r1, r2, r6
	ldrb r3, [r3]
	adds r1, r1, r3
	ldrb r1, [r1]
	ldr r3, _0804F480
	adds r2, r2, r3
	ldr r2, [r2]
	movs r6, #0x80
	lsls r6, r6, #9
	adds r2, r2, r6
	bl audio_new_fx
	b _0804F488
	.align 2, 0
_0804F470: .4byte gCanPlaySfx
_0804F474: .4byte 0x080CE440
_0804F478: .4byte gSfxVolume
_0804F47C: .4byte 0x00000402
_0804F480: .4byte 0x00000404
_0804F484:
	movs r0, #1
	rsbs r0, r0, #0
_0804F488:
	str r0, [r5, #0x58]
	adds r0, r4, #0
	adds r0, #0xa0
	ldr r2, _0804F4C0
	ldrh r1, [r2, #4]
	ldrb r3, [r2, #6]
	movs r2, #0
	bl sub_8003368
	ldr r0, [r5, #0x2c]
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_8003884
	bl sub_8047D58
_0804F4AA:
	adds r6, r5, #0
	adds r6, #0x5e
_0804F4AE:
	movs r0, #0
	movs r1, #0x6e
	strh r1, [r6]
	ldr r1, _0804F4C4
	str r0, [r1]
_0804F4B8:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804F4C0: .4byte 0x080B1248
_0804F4C4: .4byte 0x0203F8B8

	.thumb
nullsub_14: @ 0x0804F4C8
	bx lr
	.align 2, 0

    .thumb
sub_0804F4CC: @ 0x0804F4CC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r5, r0, #0
	adds r6, r1, #0
	adds r4, r2, #0
	bl sub_8049A04
	adds r1, r6, #0
	adds r1, #0x46
	ldrh r0, [r1]
	subs r0, r0, r4
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _0804F5B2
	ldr r1, _0804F50C
	adds r0, r5, #0
	adds r0, #0x5c
	ldrh r0, [r0]
	adds r2, r0, r1
	movs r1, #0
	ldrsb r1, [r2, r1]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _0804F510
	.2byte 0xEE00, 0xEE00
	b _0804F51C
	.align 2, 0
_0804F50C: .4byte 0x080B0F7C
_0804F510:
	movs r1, #0
	ldrsb r1, [r2, r1]
	adds r0, r5, #0
	movs r2, #0
	bl sub_8047430
_0804F51C:
	ldr r0, _0804F5C0
	mov r8, r0
	movs r1, #0x94
	adds r1, r1, r6
	mov sl, r1
	ldr r0, [r1]
	movs r2, #0x9c
	adds r2, r2, r6
	mov sb, r2
	ldr r1, [r2]
	ldr r7, _0804F5C4
	ldr r2, [r7]
	ldr r3, [r7, #8]
	bl sub_8003A6C
	mov r3, r8
	strb r0, [r3]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _0804F54A
	movs r0, #4
	strb r0, [r3]
_0804F54A:
	mov r4, r8
	ldrb r1, [r4]
	adds r0, r5, #0
	bl sub_8049038
	adds r4, r6, #0
	adds r4, #0xa0
	ldr r0, [r5, #0x28]
	ldrh r1, [r0, #4]
	ldrb r3, [r0, #8]
	adds r0, r4, #0
	movs r2, #0
	bl sub_8003368
	adds r0, r4, #0
	movs r1, #0
	bl sub_800378C
	ldr r0, [r7]
	ldr r1, [r7, #8]
	mov r3, sl
	ldr r2, [r3]
	mov r4, sb
	ldr r3, [r4]
	bl sub_8003A6C
	mov r1, r8
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _0804F58E
	movs r0, #0
	strb r0, [r1]
_0804F58E:
	ldr r0, [r5, #0x2c]
	ldr r1, [r5, #0x28]
	ldr r1, [r1]
	ldr r3, _0804F5C8
	mov r4, r8
	ldrb r2, [r4]
	lsls r2, r2, #2
	adds r2, r2, r3
	ldr r2, [r2]
	movs r3, #0
	bl sub_8003884
	ldr r0, [r5, #0x2c]
	movs r1, #0xd0
	lsls r1, r1, #9
	movs r2, #0
	bl CallARM_store_jump_and_other_value
_0804F5B2:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804F5C0: .4byte 0x03006EF0
_0804F5C4: .4byte gPlayerShadowPos
_0804F5C8: .4byte dword_80CC290

    .thumb
sub_804F5CC: @ 0x0804F5CC
	push {lr}
	cmp r3, #0
	beq _0804F5D8
	bl sub_80499DC
	b _0804F5DC
_0804F5D8:
	bl sub_0804F4CC
_0804F5DC:
	pop {r0}
	bx r0

    .thumb
sub_804F5E0: @ 0x0804F5E0
	push {lr}
	adds r1, r0, #0
	adds r3, r1, #0
	adds r3, #0x5e
	ldrh r0, [r3]
	cmp r0, #0
	bne _0804F5FA
	adds r0, r1, #0
	adds r1, r2, #0
	movs r2, #1
	bl sub_8047430
	b _0804F5FE
_0804F5FA:
	subs r0, #1
	strh r0, [r3]
_0804F5FE:
	pop {r0}
	bx r0
	.align 2, 0

    .thumb
sub_804F604: @ 0x0804F604
	push {lr}
	adds r1, #0x48
	ldrb r0, [r1]
	cmp r0, #0
	beq _0804F61E
	movs r0, #0
	strb r0, [r1]
	ldr r1, _0804F624
	ldrb r0, [r1]
	cmp r0, #0
	beq _0804F61E
	subs r0, #1
	strb r0, [r1]
_0804F61E:
	pop {r0}
	bx r0
	.align 2, 0
_0804F624: .4byte 0x0203DFE4

    .thumb
sub_804F628: @ 0x0804F628
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x18
	adds r5, r0, #0
	adds r4, r1, #0
	adds r7, r2, #0
	adds r1, r5, #0
	adds r1, #0x5e
	ldrh r0, [r1]
	adds r6, r0, #0
	cmp r6, #0
	bne _0804F6C0
	adds r0, r5, #0
	movs r1, #1
	movs r2, #0
	movs r3, #1
	bl sub_08049574
	cmp r0, #0
	bne _0804F672
	ldr r0, _0804F6B0
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804F6C4
	ldr r1, _0804F6B4
	adds r0, r5, #0
	adds r0, #0x5c
	ldrh r0, [r0]
	adds r0, r0, r1
	ldrb r1, [r0]
	adds r0, r4, #0
	movs r2, #1
	bl sub_80496B0
	cmp r0, #0
	beq _0804F6C4
_0804F672:
	adds r0, r4, #0
	adds r0, #0x38
	ldrb r0, [r0]
	cmp r0, #0
	beq _0804F682
	adds r0, r5, #0
	adds r0, #0x69
	strb r6, [r0]
_0804F682:
	ldr r1, _0804F6B8
	adds r0, r5, #0
	movs r2, #1
	bl sub_8049008
	adds r0, r4, #0
	adds r0, #0x94
	bl sub_80494FC
	ldr r4, _0804F6BC
	bl sub_8048E0C
	strb r0, [r4]
	ldrb r1, [r4]
	adds r0, r5, #0
	bl sub_8049038
	adds r0, r5, #0
	adds r1, r7, #0
	movs r2, #1
	bl sub_8047430
	b _0804F768
	.align 2, 0
_0804F6B0: .4byte 0x03006EF1
_0804F6B4: .4byte 0x080B0FAB
_0804F6B8: .4byte gPlayerShadowPos
_0804F6BC: .4byte 0x03006EF0
_0804F6C0:
	subs r0, #1
	strh r0, [r1]
_0804F6C4:
	ldr r0, [r5, #0x2c]
	add r1, sp, #0xc
	add r2, sp, #0x10
	add r3, sp, #0x14
	bl sub_80038C4
	movs r0, #0x94
	adds r0, r0, r4
	mov r8, r0
	ldr r0, [r0]
	ldr r1, [sp, #0xc]
	adds r0, r0, r1
	str r0, [sp]
	adds r0, r4, #0
	adds r0, #0x98
	ldr r0, [r0]
	str r0, [sp, #4]
	adds r6, r4, #0
	adds r6, #0x9c
	ldr r0, [r6]
	ldr r1, [sp, #0x14]
	adds r0, r0, r1
	str r0, [sp, #8]
	adds r0, r5, #0
	bl sub_80497C0
	cmp r0, #0
	bne _0804F70C
	adds r0, r5, #0
	mov r1, sp
	movs r2, #1
	bl sub_080490BC
	adds r7, r0, #0
	cmp r7, #0
	beq _0804F714
_0804F70C:
	adds r0, r5, #0
	bl sub_8049784
	b _0804F768
_0804F714:
	ldr r1, [sp]
	mov r0, r8
	str r1, [r0]
	ldr r0, [sp, #8]
	str r0, [r6]
	ldr r2, [sp, #0x10]
	adds r3, r0, #0
	cmp r2, #0
	beq _0804F742
	ldr r0, [r5, #0x54]
	adds r0, r0, r2
	str r0, [r5, #0x54]
	cmp r0, #0
	bgt _0804F738
	ldr r0, [r5, #0x2c]
	bl sub_800387C
	str r7, [r5, #0x54]
_0804F738:
	ldr r0, [r5, #0x54]
	asrs r0, r0, #0x10
	strb r0, [r4, #9]
	ldr r1, [sp]
	ldr r3, [sp, #8]
_0804F742:
	asrs r0, r1, #0x10
	strh r0, [r4, #2]
	ldr r0, _0804F774
	ldr r1, [sp, #4]
	adds r1, r3, r1
	asrs r1, r1, #0x10
	ldrh r0, [r0]
	subs r0, r0, r1
	strh r0, [r4, #4]
	adds r0, r4, #0
	adds r0, #0x38
	ldrb r2, [r0]
	adds r0, r5, #0
	movs r1, #2
	bl sub_08047958
	adds r0, r5, #0
	bl sub_8049810
_0804F768:
	add sp, #0x18
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804F774: .4byte gMapPixelSizeY

    .thumb
sub_804F778: @ 0x0804F778
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x18
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, [r4, #0x2c]
	add r1, sp, #0xc
	add r2, sp, #0x10
	add r3, sp, #0x14
	bl sub_80038C4
	movs r0, #0x94
	adds r0, r0, r5
	mov r8, r0
	ldr r0, [r0]
	ldr r1, [sp, #0xc]
	adds r0, r0, r1
	str r0, [sp]
	adds r0, r5, #0
	adds r0, #0x98
	ldr r0, [r0]
	str r0, [sp, #4]
	adds r6, r5, #0
	adds r6, #0x9c
	ldr r0, [r6]
	ldr r1, [sp, #0x14]
	adds r0, r0, r1
	str r0, [sp, #8]
	adds r0, r4, #0
	bl sub_80497C0
	cmp r0, #0
	bne _0804F7CC
	adds r0, r4, #0
	mov r1, sp
	movs r2, #1
	bl sub_080490BC
	adds r7, r0, #0
	cmp r7, #0
	beq _0804F7D4
_0804F7CC:
	adds r0, r4, #0
	bl sub_8049784
	b _0804F828
_0804F7D4:
	ldr r1, [sp]
	mov r0, r8
	str r1, [r0]
	ldr r0, [sp, #8]
	str r0, [r6]
	ldr r2, [sp, #0x10]
	adds r3, r0, #0
	cmp r2, #0
	beq _0804F802
	ldr r0, [r4, #0x54]
	adds r0, r0, r2
	str r0, [r4, #0x54]
	cmp r0, #0
	bgt _0804F7F8
	ldr r0, [r4, #0x2c]
	bl sub_800387C
	str r7, [r4, #0x54]
_0804F7F8:
	ldr r0, [r4, #0x54]
	asrs r0, r0, #0x10
	strb r0, [r5, #9]
	ldr r1, [sp]
	ldr r3, [sp, #8]
_0804F802:
	asrs r0, r1, #0x10
	strh r0, [r5, #2]
	ldr r0, _0804F834
	ldr r1, [sp, #4]
	adds r1, r3, r1
	asrs r1, r1, #0x10
	ldrh r0, [r0]
	subs r0, r0, r1
	strh r0, [r5, #4]
	adds r0, r5, #0
	adds r0, #0x48
	ldrb r2, [r0]
	adds r0, r4, #0
	movs r1, #2
	bl sub_08047958
	adds r0, r4, #0
	bl sub_8049810
_0804F828:
	add sp, #0x18
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804F834: .4byte gMapPixelSizeY

    .thumb
sub_804F838: @ 0x0804F838
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x18
	adds r4, r0, #0
	adds r5, r1, #0
	adds r1, r2, #0
	adds r3, r4, #0
	adds r3, #0x5e
	ldrh r0, [r3]
	cmp r0, #0
	bne _0804F85A
	adds r0, r4, #0
	movs r2, #1
	bl sub_8047430
	b _0804F908
_0804F85A:
	subs r0, #1
	strh r0, [r3]
	ldr r0, [r4, #0x2c]
	add r1, sp, #0xc
	add r2, sp, #0x10
	add r3, sp, #0x14
	bl sub_80038C4
	movs r0, #0x94
	adds r0, r0, r5
	mov r8, r0
	ldr r1, [r0]
	ldr r0, [sp, #0xc]
	adds r2, r1, r0
	str r2, [sp]
	adds r0, r5, #0
	adds r0, #0x98
	ldr r0, [r0]
	str r0, [sp, #4]
	adds r7, r5, #0
	adds r7, #0x9c
	ldr r1, [r7]
	ldr r0, [sp, #0x14]
	adds r1, r1, r0
	str r1, [sp, #8]
	ldr r0, [r4, #0x30]
	cmp r2, r0
	ble _0804F908
	ldr r0, [r4, #0x34]
	cmp r2, r0
	bge _0804F908
	ldr r0, [r4, #0x3c]
	cmp r1, r0
	ble _0804F908
	ldr r0, [r4, #0x38]
	cmp r1, r0
	bge _0804F908
	adds r0, r4, #0
	mov r1, sp
	movs r2, #1
	bl sub_080490BC
	adds r6, r0, #0
	cmp r6, #0
	bne _0804F908
	ldr r1, [sp]
	mov r0, r8
	str r1, [r0]
	ldr r0, [sp, #8]
	str r0, [r7]
	ldr r2, [sp, #0x10]
	adds r3, r0, #0
	cmp r2, #0
	beq _0804F8E2
	ldr r0, [r4, #0x54]
	adds r0, r0, r2
	str r0, [r4, #0x54]
	cmp r0, #0
	bgt _0804F8D8
	ldr r0, [r4, #0x2c]
	bl sub_800387C
	str r6, [r4, #0x54]
_0804F8D8:
	ldr r0, [r4, #0x54]
	asrs r0, r0, #0x10
	strb r0, [r5, #9]
	ldr r1, [sp]
	ldr r3, [sp, #8]
_0804F8E2:
	asrs r0, r1, #0x10
	strh r0, [r5, #2]
	ldr r0, _0804F914
	ldr r1, [sp, #4]
	adds r1, r3, r1
	asrs r1, r1, #0x10
	ldrh r0, [r0]
	subs r0, r0, r1
	strh r0, [r5, #4]
	adds r0, r5, #0
	adds r0, #0x38
	ldrb r2, [r0]
	adds r0, r4, #0
	movs r1, #2
	bl sub_08047958
	adds r0, r4, #0
	bl sub_8049810
_0804F908:
	add sp, #0x18
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804F914: .4byte gMapPixelSizeY

    .thumb
sub_804F918: @ 0x0804F918
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r2, #0
	adds r2, r3, #0
	adds r1, r4, #0
	adds r1, #0x5e
	ldrh r0, [r1]
	cmp r0, #0
	bne _0804F944
	ldr r1, _0804F940
	adds r0, r4, #0
	bl sub_8049008
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #1
	bl sub_8047430
	b _0804F948
	.align 2, 0
_0804F940: .4byte gPlayerShadowPos
_0804F944:
	subs r0, #1
	strh r0, [r1]
_0804F948:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

    .thumb
sub_804F950: @ 0x0804F950
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x18
	adds r4, r0, #0
	adds r5, r1, #0
	mov r8, r2
	ldr r1, _0804F9F4
	movs r2, #0
	bl sub_8049008
	adds r0, r4, #0
	bl sub_80497C0
	ldr r0, [r4, #0x2c]
	add r1, sp, #0xc
	add r2, sp, #0x10
	add r3, sp, #0x14
	bl sub_80038C4
	adds r7, r5, #0
	adds r7, #0x94
	ldr r1, [r7]
	ldr r0, [sp, #0xc]
	adds r2, r1, r0
	str r2, [sp]
	adds r0, r5, #0
	adds r0, #0x98
	ldr r0, [r0]
	str r0, [sp, #4]
	adds r6, r5, #0
	adds r6, #0x9c
	ldr r1, [r6]
	ldr r0, [sp, #0x14]
	adds r1, r1, r0
	str r1, [sp, #8]
	ldr r0, [r4, #0x30]
	cmp r2, r0
	ble _0804FA00
	ldr r0, [r4, #0x34]
	cmp r2, r0
	bge _0804FA00
	ldr r0, [r4, #0x3c]
	cmp r1, r0
	ble _0804FA00
	ldr r0, [r4, #0x38]
	cmp r1, r0
	bge _0804FA00
	adds r0, r4, #0
	mov r1, sp
	movs r2, #1
	bl sub_080490BC
	cmp r0, #0
	bne _0804FA00
	ldr r0, _0804F9F8
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804FA00
	ldr r0, [sp]
	str r0, [r7]
	ldr r1, [sp, #8]
	str r1, [r6]
	asrs r0, r0, #0x10
	strh r0, [r5, #2]
	ldr r2, _0804F9FC
	ldr r0, [sp, #4]
	adds r1, r1, r0
	asrs r1, r1, #0x10
	ldrh r0, [r2]
	subs r0, r0, r1
	strh r0, [r5, #4]
	adds r0, r4, #0
	movs r1, #2
	movs r2, #0
	bl sub_08047958
	adds r0, r4, #0
	bl sub_8049810
	b _0804FA32
	.align 2, 0
_0804F9F4: .4byte gPlayerShadowPos
_0804F9F8: .4byte 0x03006EF1
_0804F9FC: .4byte gMapPixelSizeY
_0804FA00:
	adds r0, r4, #0
	mov r1, r8
	movs r2, #1
	bl sub_8047430
	ldr r0, [r4, #0x2c]
	movs r1, #0
	movs r2, #0
	bl sub_800386C
	adds r0, r5, #0
	adds r0, #0x38
	ldrb r0, [r0]
	cmp r0, #0
	beq _0804FA2C
	adds r1, r4, #0
	adds r1, #0x10
	adds r0, r4, #0
	movs r2, #0
	bl sub_8049008
	b _0804FA32
_0804FA2C:
	adds r0, r4, #0
	bl sub_8049784
_0804FA32:
	add sp, #0x18
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

    .thumb
sub_804FA40: @ 0x0804FA40
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r0, r1, #0
	adds r4, r2, #0
	adds r0, #0xa0
	bl sub_8003770
	cmp r0, #0
	beq _0804FA5C
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #1
	bl sub_8047430
_0804FA5C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

    .thumb
sub_804FA64: @ 0x0804FA64
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x18
	adds r4, r0, #0
	adds r7, r1, #0
	mov sb, r2
	mov r8, r3
	adds r6, r4, #0
	adds r6, #0x5e
	ldrh r5, [r6]
	cmp r5, #0
	bne _0804FACE
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_08049574
	cmp r0, #0
	beq _0804FAC8
	ldr r1, _0804FAB8
	adds r0, r4, #0
	movs r2, #0
	bl sub_8049008
	ldr r0, _0804FABC
	ldrb r1, [r0]
	adds r0, r4, #0
	bl sub_8049038
	adds r0, r4, #0
	mov r1, r8
	movs r2, #1
	bl sub_8047430
	ldr r0, _0804FAC0
	strb r5, [r0]
	ldr r0, _0804FAC4
	strb r5, [r0]
	b _0804FB7E
	.align 2, 0
_0804FAB8: .4byte gPlayerShadowPos
_0804FABC: .4byte 0x03006EF0
_0804FAC0: .4byte 0x0203F8CD
_0804FAC4: .4byte 0x0203F8CE
_0804FAC8:
	ldrh r0, [r6]
	cmp r0, #0
	beq _0804FAD8
_0804FACE:
	adds r1, r4, #0
	adds r1, #0x5e
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
_0804FAD8:
	ldr r0, [r4, #0x2c]
	add r1, sp, #0xc
	add r2, sp, #0x10
	add r3, sp, #0x14
	bl sub_80038C4
	movs r0, #0x94
	adds r0, r0, r7
	mov r8, r0
	ldr r0, [r0]
	ldr r1, [sp, #0xc]
	adds r0, r0, r1
	str r0, [sp]
	adds r0, r7, #0
	adds r0, #0x98
	ldr r0, [r0]
	str r0, [sp, #4]
	adds r6, r7, #0
	adds r6, #0x9c
	ldr r0, [r6]
	ldr r1, [sp, #0x14]
	adds r0, r0, r1
	str r0, [sp, #8]
	adds r0, r4, #0
	mov r1, sp
	movs r2, #0
	bl sub_080490BC
	adds r0, r4, #0
	bl sub_80497C0
	cmp r0, #0
	beq _0804FB3A
	adds r1, r4, #0
	adds r1, #0x69
	movs r0, #1
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0x67
	ldrb r0, [r0]
	adds r1, r4, #4
	bl sub_8047D70
	adds r0, r4, #0
	mov r1, sb
	movs r2, #1
	bl sub_8047430
	b _0804FB7E
_0804FB3A:
	adds r5, r7, #0
	adds r5, #0x38
	ldrb r0, [r5]
	cmp r0, #0
	bne _0804FB52
	adds r0, r4, #0
	mov r1, sp
	movs r2, #1
	bl sub_080490BC
	cmp r0, #0
	bne _0804FB7E
_0804FB52:
	ldr r0, [sp]
	mov r1, r8
	str r0, [r1]
	ldr r1, [sp, #8]
	str r1, [r6]
	asrs r0, r0, #0x10
	strh r0, [r7, #2]
	ldr r2, _0804FB8C
	ldr r0, [sp, #4]
	adds r1, r1, r0
	asrs r1, r1, #0x10
	ldrh r0, [r2]
	subs r0, r0, r1
	strh r0, [r7, #4]
	ldrb r2, [r5]
	adds r0, r4, #0
	movs r1, #2
	bl sub_08047958
	adds r0, r4, #0
	bl sub_8049810
_0804FB7E:
	add sp, #0x18
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804FB8C: .4byte gMapPixelSizeY

	.thumb
nullsub_9: @ 0x0804FB90
	bx lr
	.align 2, 0

	.thumb
sub_804FB94: @ 0x0804FB94
	push {lr}
	bl sub_804F604
	pop {r0}
	bx r0
	.align 2, 0

    .thumb
sub_804FBA0: @ 0x0804FBA0
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r4, r1, #0
	adds r0, r4, #0
	adds r0, #0x48
	ldrb r0, [r0]
	cmp r0, #0
	beq _0804FC46
	ldr r0, _0804FBF4
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	bne _0804FC46
	ldr r0, _0804FBF8
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804FC46
	adds r5, r6, #0
	adds r5, #0x65
	ldrb r0, [r5]
	cmp r0, #0
	beq _0804FC46
	ldr r0, _0804FBFC
	adds r1, #0x64
	adds r2, r4, #0
	adds r2, #0x70
	bl VecFX_PointInBox
	cmp r0, #0
	beq _0804FC46
	ldrb r0, [r5]
	cmp r0, #6
	bne _0804FC04
	ldr r1, _0804FC00
	ldrh r0, [r4]
	adds r0, r0, r1
	ldrb r0, [r0]
	ldrb r1, [r4, #0xb]
	movs r2, #2
	bl sub_80192D4
	b _0804FC16
	.align 2, 0
_0804FBF4: .4byte 0x03003578
_0804FBF8: .4byte 0x03006EF1
_0804FBFC: .4byte gPlayerPos
_0804FC00: .4byte 0x080CC6B0
_0804FC04:
	ldr r1, _0804FC38
	ldrh r0, [r4]
	adds r0, r0, r1
	ldrb r0, [r0]
	movs r1, #1
	rsbs r1, r1, #0
	movs r2, #2
	bl sub_80192D4
_0804FC16:
	adds r0, r4, #0
	adds r0, #0x38
	ldrb r0, [r0]
	cmp r0, #0
	beq _0804FC3C
	adds r1, r6, #0
	adds r1, #0x10
	adds r0, r6, #0
	movs r2, #0
	bl sub_8049008
	adds r0, r6, #0
	movs r1, #7
	movs r2, #1
	bl sub_8047430
	b _0804FC46
	.align 2, 0
_0804FC38: .4byte 0x080CC6B0
_0804FC3C:
	adds r0, r6, #0
	movs r1, #4
	movs r2, #1
	bl sub_8047430
_0804FC46:
	pop {r4, r5, r6}
	pop {r0}
	bx r0


	.thumb
sub_804FC4C: @ 0x0804FC4C
	push {lr}
	bl sub_804F604
	pop {r0}
	bx r0
	.align 2, 0

	.thumb
sub_804FC58: @ 0x0804FC58
	push {lr}
	movs r1, #2
	movs r2, #1
	bl sub_8047430
	pop {r0}
	bx r0
	.align 2, 0

	.thumb
sub_804FC68: @ 0x0804FC68
	push {r4, lr}
	adds r4, r0, #0
	adds r0, r1, #0
	adds r0, #0xa0
	bl sub_8003770
	cmp r0, #0
	beq _0804FC8A
	adds r0, r4, #0
	movs r1, #4
	movs r2, #1
	bl sub_8047430
	adds r1, r4, #0
	adds r1, #0x5e
	movs r0, #0
	strh r0, [r1]
_0804FC8A:
	pop {r4}
	pop {r0}
	bx r0

	.thumb
sub_804FC90: @ 0x0804FC90
	push {lr}
	movs r2, #4
	bl sub_804F838
	pop {r0}
	bx r0

	.thumb
sub_804FC9C: @ 0x0804FC9C
	push {lr}
	movs r2, #5
	bl sub_804F628
	pop {r0}
	bx r0

	.thumb
sub_804FCA8: @ 0x0804FCA8
	push {lr}
	movs r2, #6
	movs r3, #0
	bl sub_804F918
	pop {r0}
	bx r0
	.align 2, 0

	.thumb
sub_804FCB8: @ 0x0804FCB8
	push {lr}
	adds r2, r0, #0
	adds r0, r1, #0
	adds r0, #0x38
	ldrb r0, [r0]
	cmp r0, #0
	beq _0804FCD0
	adds r0, r2, #0
	movs r2, #7
	bl sub_804F950
	b _0804FCD8
_0804FCD0:
	adds r0, r2, #0
	movs r2, #4
	bl sub_804F950
_0804FCD8:
	pop {r0}
	bx r0

	.thumb
sub_804FCDC: @ 0x0804FCDC
	push {lr}
	movs r2, #4
	movs r3, #5
	bl sub_804FA64
	pop {r0}
	bx r0
	.align 2, 0

	.thumb
nullsub_10: @ 0x0804FCEC
	bx lr
	.align 2, 0

	.thumb
sub_804FCF0: @ 0x0804FCF0
	push {lr}
	movs r2, #0
	bl sub_804F628
	pop {r0}
	bx r0

    .thumb
sub_804FCFC: @ 0x0804FCFC
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r4, r1, #0
	adds r0, r4, #0
	adds r0, #0x48
	ldrb r0, [r0]
	cmp r0, #0
	beq _0804FD7A
	adds r5, r6, #0
	adds r5, #0x65
	ldrb r0, [r5]
	cmp r0, #0
	beq _0804FD7A
	cmp r0, #3
	beq _0804FD7A
	ldr r0, _0804FD44
	adds r1, #0x64
	adds r2, r4, #0
	adds r2, #0x70
	bl VecFX_PointInBox
	cmp r0, #0
	beq _0804FD7A
	ldrb r0, [r5]
	cmp r0, #2
	bne _0804FD4C
	ldr r1, _0804FD48
	ldrh r0, [r4]
	adds r0, r0, r1
	ldrb r0, [r0]
	ldrb r1, [r4, #0xb]
	movs r2, #2
	bl sub_80192D4
	b _0804FD5E
	.align 2, 0
_0804FD44: .4byte gPlayerPos
_0804FD48: .4byte 0x080CC6B0
_0804FD4C:
	ldr r1, _0804FD80
	ldrh r0, [r4]
	adds r0, r0, r1
	ldrb r0, [r0]
	movs r1, #1
	rsbs r1, r1, #0
	movs r2, #2
	bl sub_80192D4
_0804FD5E:
	adds r1, r4, #0
	adds r1, #0x3c
	movs r2, #0
	movs r0, #1
	strb r0, [r1]
	strb r2, [r4, #0xb]
	adds r0, r4, #0
	adds r0, #0xaa
	strb r2, [r0]
	adds r0, r6, #0
	movs r1, #3
	movs r2, #1
	bl sub_8047430
_0804FD7A:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0804FD80: .4byte 0x080CC6B0

	.thumb
sub_804FD84: @ 0x0804FD84
	push {lr}
	bl sub_804F604
	pop {r0}
	bx r0
	.align 2, 0

	.thumb
sub_804FD90: @ 0x0804FD90
	push {lr}
	adds r2, r0, #0
	adds r0, r1, #0
	adds r0, #0x30
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804FDA6
	adds r0, r2, #0
	bl sub_804F778
	b _0804FDAE
_0804FDA6:
	adds r0, r2, #0
	movs r2, #2
	bl sub_804F628
_0804FDAE:
	pop {r0}
	bx r0
	.align 2, 0

	.thumb
sub_804FDB4: @ 0x0804FDB4
	push {lr}
	movs r2, #1
	bl sub_804F950
	pop {r0}
	bx r0

	.thumb
sub_804FDC0: @ 0x0804FDC0
	push {lr}
	movs r2, #0
	bl sub_804FA40
	pop {r0}
	bx r0

    .thumb
sub_804FDCC: @ 0x0804FDCC
	push {r4, lr}
	adds r4, r0, #0
	adds r3, r1, #0
	adds r3, #0x46
	ldrh r0, [r3]
	subs r0, r0, r2
	strh r0, [r3]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _0804FDE6
	adds r0, r4, #0
	bl sub_0804F4CC
_0804FDE6:
	pop {r4}
	pop {r0}
	bx r0

    .thumb
sub_804FDEC: @ 0x0804FDEC
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r4, r1, #0
	adds r0, r4, #0
	adds r0, #0x48
	ldrb r0, [r0]
	cmp r0, #0
	beq _0804FE6C
	ldr r0, _0804FE40
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	bne _0804FE6C
	ldr r0, _0804FE44
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804FE6C
	adds r5, r6, #0
	adds r5, #0x65
	ldrb r0, [r5]
	cmp r0, #0
	beq _0804FE6C
	ldr r0, _0804FE48
	adds r1, #0x64
	adds r2, r4, #0
	adds r2, #0x70
	bl VecFX_PointInBox
	cmp r0, #0
	beq _0804FE6C
	ldrb r0, [r5]
	cmp r0, #5
	bne _0804FE50
	ldr r1, _0804FE4C
	ldrh r0, [r4]
	adds r0, r0, r1
	ldrb r0, [r0]
	ldrb r1, [r4, #0xb]
	movs r2, #2
	bl sub_80192D4
	b _0804FE62
	.align 2, 0
_0804FE40: .4byte 0x03003578
_0804FE44: .4byte 0x03006EF1
_0804FE48: .4byte gPlayerPos
_0804FE4C: .4byte 0x080CC6B0
_0804FE50:
	ldr r1, _0804FE74
	ldrh r0, [r4]
	adds r0, r0, r1
	ldrb r0, [r0]
	movs r1, #1
	rsbs r1, r1, #0
	movs r2, #2
	bl sub_80192D4
_0804FE62:
	adds r0, r6, #0
	movs r1, #3
	movs r2, #1
	bl sub_8047430
_0804FE6C:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0804FE74: .4byte 0x080CC6B0

	.thumb
sub_804FE78: @ 0x0804FE78
	push {lr}
	bl sub_804F604
	pop {r0}
	bx r0
	.align 2, 0

	.thumb
sub_804FE84: @ 0x0804FE84
	push {lr}
	movs r1, #2
	movs r2, #1
	bl sub_8047430
	pop {r0}
	bx r0
	.align 2, 0

	.thumb
sub_804FE94: @ 0x0804FE94
	push {r4, lr}
	adds r4, r0, #0
	adds r0, r1, #0
	adds r0, #0xa0
	bl sub_8003770
	cmp r0, #0
	beq _0804FEB6
	adds r0, r4, #0
	movs r1, #3
	movs r2, #1
	bl sub_8047430
	adds r1, r4, #0
	adds r1, #0x5e
	movs r0, #0
	strh r0, [r1]
_0804FEB6:
	pop {r4}
	pop {r0}
	bx r0

	.thumb
sub_804FEBC: @ 0x0804FEBC
	push {lr}
	movs r2, #4
	bl sub_804F628
	pop {r0}
	bx r0

	.thumb
sub_804FEC8: @ 0x0804FEC8
	push {r4, lr}
	adds r4, r0, #0
	adds r0, r1, #0
	adds r0, #0xa0
	bl sub_8003770
	cmp r0, #0
	beq _0804FEE2
	adds r0, r4, #0
	movs r1, #5
	movs r2, #1
	bl sub_8047430
_0804FEE2:
	pop {r4}
	pop {r0}
	bx r0

	.thumb
sub_804FEE8: @ 0x0804FEE8
	push {lr}
	movs r2, #3
	bl sub_804F950
	pop {r0}
	bx r0


    .thumb
sub_804FEF4: @ 0x0804FEF4
	push {r4, lr}
	adds r2, r0, #0
	adds r4, r1, #0
	adds r0, r4, #0
	adds r0, #0x48
	ldrb r0, [r0]
	cmp r0, #0
	beq _0804FF40
	ldr r0, _0804FF48
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	bne _0804FF40
	ldr r0, _0804FF4C
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804FF40
	adds r0, r2, #0
	adds r0, #0x65
	ldrb r0, [r0]
	cmp r0, #1
	bne _0804FF40
	ldr r0, _0804FF50
	adds r1, #0x64
	adds r2, r4, #0
	adds r2, #0x70
	bl VecFX_PointInBox
	cmp r0, #0
	beq _0804FF40
	ldr r1, _0804FF54
	ldrh r0, [r4]
	adds r0, r0, r1
	ldrb r0, [r0]
	movs r1, #1
	rsbs r1, r1, #0
	movs r2, #2
	bl sub_80192D4
_0804FF40:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0804FF48: .4byte 0x03003578
_0804FF4C: .4byte 0x03006EF1
_0804FF50: .4byte gPlayerPos
_0804FF54: .4byte 0x080CC6B0

	.thumb
sub_804FF58: @ 0x0804FF58
	push {r4, lr}
	adds r4, r0, #0
	adds r0, r1, #0
	movs r1, #0x28
	movs r2, #1
	bl sub_80496B0
	cmp r0, #0
	beq _0804FF7E
	adds r0, r4, #0
	movs r1, #1
	movs r2, #1
	bl sub_8047430
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	bl sub_08047958
_0804FF7E:
	pop {r4}
	pop {r0}
	bx r0

	.thumb
sub_804FF84: @ 0x0804FF84
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r0, r4, #0
	adds r0, #0xa0
	bl sub_8003770
	cmp r0, #0
	beq _0804FFAC
	adds r0, r5, #0
	movs r1, #2
	movs r2, #1
	bl sub_8047430
	ldr r1, [r4, #0x54]
	asrs r1, r1, #1
	ldr r0, [r4, #0x78]
	adds r0, r0, r1
	str r0, [r4, #0x78]
	str r0, [r4, #0x6c]
_0804FFAC:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	.thumb
sub_804FFB4: @ 0x0804FFB4
	push {lr}
	movs r2, #0
	bl sub_804F5E0
	pop {r0}
	bx r0

    .thumb
sub_804FFC0: @ 0x0804FFC0
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r0, r4, #0
	adds r0, #0x48
	ldrb r0, [r0]
	cmp r0, #0
	beq _0805003C
	ldr r0, _0805000C
	ldrb r0, [r0]
	cmp r0, #0
	bne _0805003C
	ldr r0, _08050010
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	bne _0805003C
	ldr r0, _08050014
	adds r1, #0x64
	adds r2, r4, #0
	adds r2, #0x70
	bl VecFX_PointInBox
	cmp r0, #0
	beq _0805003C
	adds r0, r5, #0
	adds r0, #0x65
	ldrb r0, [r0]
	cmp r0, #2
	bne _0805001C
	ldr r1, _08050018
	ldrh r0, [r4]
	adds r0, r0, r1
	ldrb r0, [r0]
	ldrb r1, [r4, #0xb]
	movs r2, #2
	bl sub_80192D4
	b _0805002E
	.align 2, 0
_0805000C: .4byte 0x03006EF1
_08050010: .4byte 0x03003578
_08050014: .4byte gPlayerPos
_08050018: .4byte 0x080CC6B0
_0805001C:
	ldr r1, _08050064
	ldrh r0, [r4]
	adds r0, r0, r1
	ldrb r0, [r0]
	movs r1, #1
	rsbs r1, r1, #0
	movs r2, #2
	bl sub_80192D4
_0805002E:
	adds r0, r5, #0
	bl sub_80498D0
	adds r1, r5, #0
	adds r1, #0x5e
	movs r0, #0x32
	strh r0, [r1]
_0805003C:
	adds r0, r5, #0
	adds r0, #0x5e
	ldrh r0, [r0]
	cmp r0, #0
	bne _0805005C
	adds r0, r4, #0
	adds r0, #0x94
	bl sub_802BE84
	cmp r0, #0
	beq _0805005C
	adds r0, r5, #0
	movs r1, #3
	movs r2, #1
	bl sub_8047430
_0805005C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08050064: .4byte 0x080CC6B0

	.thumb
sub_8050068: @ 0x08050068
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08048F5C
	adds r0, r4, #0
	movs r1, #2
	movs r2, #1
	bl sub_8047430
	pop {r4}
	pop {r0}
	bx r0

	.thumb
sub_8050080: @ 0x08050080
	push {lr}
	movs r2, #0
	bl sub_804F838
	pop {r0}
	bx r0

	.thumb
sub_805008C: @ 0x0805008C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	adds r5, r0, #0
	adds r6, r1, #0
	adds r7, r5, #0
	adds r7, #0x5e
	ldrh r0, [r7]
	cmp r0, #0
	beq _080500AA
	subs r0, #1
	strh r0, [r7]
_080500AA:
	ldr r0, [r5, #0x2c]
	add r1, sp, #0xc
	add r2, sp, #0x10
	add r3, sp, #0x14
	bl sub_80038C4
	movs r0, #0x94
	adds r0, r0, r6
	mov r8, r0
	ldr r0, [r0]
	ldr r1, [sp, #0xc]
	adds r0, r0, r1
	str r0, [sp]
	movs r1, #0x98
	adds r1, r1, r6
	mov sl, r1
	ldr r0, [r1]
	str r0, [sp, #4]
	movs r3, #0x9c
	adds r3, r3, r6
	mov sb, r3
	ldr r0, [r3]
	ldr r1, [sp, #0x14]
	adds r0, r0, r1
	str r0, [sp, #8]
	adds r4, r6, #0
	adds r4, #0xa0
	adds r0, r4, #0
	bl sub_8003770
	cmp r0, #0
	bne _08050172
	adds r0, r5, #0
	mov r1, sp
	movs r2, #1
	bl sub_080490BC
	cmp r0, #0
	bne _0805015C
	ldr r1, [sp]
	ldr r0, [r5, #0x30]
	cmp r1, r0
	ble _0805015C
	ldr r0, [r5, #0x34]
	cmp r1, r0
	bge _0805015C
	ldr r1, [sp, #8]
	ldr r0, [r5, #0x3c]
	cmp r1, r0
	ble _0805015C
	ldr r0, [r5, #0x38]
	cmp r1, r0
	bge _0805015C
	adds r0, r5, #0
	bl sub_80497C0
	cmp r0, #0
	bne _0805015C
	ldr r0, [sp]
	mov r1, r8
	str r0, [r1]
	ldr r2, [sp, #4]
	mov r3, sl
	str r2, [r3]
	ldr r1, [sp, #8]
	mov r3, sb
	str r1, [r3]
	asrs r0, r0, #0x10
	strh r0, [r6, #2]
	ldr r0, _08050158
	adds r1, r1, r2
	asrs r1, r1, #0x10
	ldrh r0, [r0]
	subs r0, r0, r1
	strh r0, [r6, #4]
	adds r0, r6, #0
	adds r0, #0x38
	ldrb r2, [r0]
	adds r0, r5, #0
	movs r1, #2
	bl sub_08047958
	adds r0, r5, #0
	bl sub_8049810
	b _080501F4
	.align 2, 0
_08050158: .4byte gMapPixelSizeY
_0805015C:
	ldr r0, [r5, #0x2c]
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_8003884
	adds r1, r5, #0
	adds r1, #0x5e
	movs r0, #0x32
	strh r0, [r1]
	b _080501F4
_08050172:
	adds r0, r6, #0
	adds r0, #0xb7
	ldrb r0, [r0]
	cmp r0, #0
	beq _080501F4
	ldrh r0, [r7]
	cmp r0, #0
	bne _080501E0
	add r1, sp, #0x18
	mov r0, r8
	bl sub_802CFBC
	cmp r0, #0
	beq _08050192
	ldr r1, [sp, #0x18]
	b _080501CA
_08050192:
	ldrh r0, [r7]
	cmp r0, #0
	bne _080501E0
	adds r0, r5, #0
	movs r1, #1
	movs r2, #0
	movs r3, #1
	bl sub_08049574
	cmp r0, #0
	bne _080501C8
	ldr r0, _080501D4
	ldrb r0, [r0]
	cmp r0, #0
	bne _080501E0
	ldr r1, _080501D8
	adds r0, r5, #0
	adds r0, #0x5c
	ldrh r0, [r0]
	adds r0, r0, r1
	ldrb r1, [r0]
	adds r0, r6, #0
	movs r2, #0
	bl sub_80496B0
	cmp r0, #0
	beq _080501E0
_080501C8:
	ldr r1, _080501DC
_080501CA:
	adds r0, r5, #0
	movs r2, #1
	bl sub_8049008
	b _080501E6
	.align 2, 0
_080501D4: .4byte 0x03006EF1
_080501D8: .4byte 0x080B0FAB
_080501DC: .4byte gPlayerShadowPos
_080501E0:
	adds r0, r5, #0
	bl sub_8049784
_080501E6:
	ldr r0, [r5, #0x28]
	ldrh r1, [r0, #4]
	ldrb r3, [r0, #8]
	adds r0, r4, #0
	movs r2, #0
	bl sub_8003368
_080501F4:
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	.thumb
sub_8050204: @ 0x08050204
	push {lr}
	movs r2, #0
	bl sub_804FA40
	pop {r0}
	bx r0

    .thumb
sub_8050210: @ 0x08050210
	push {r4, lr}
	adds r4, r1, #0
	adds r0, r4, #0
	adds r0, #0x48
	ldrb r0, [r0]
	cmp r0, #0
	beq _08050268
	ldr r0, _08050270
	ldrb r0, [r0]
	cmp r0, #0
	bne _08050268
	ldr r0, _08050274
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	bne _08050268
	ldr r1, _08050278
	ldr r0, _0805027C
	ldrh r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #4
	ands r0, r1
	cmp r0, #0
	bne _08050268
	ldr r0, _08050280
	adds r1, r4, #0
	adds r1, #0x64
	adds r2, r4, #0
	adds r2, #0x70
	bl VecFX_PointInBox
	cmp r0, #0
	beq _08050268
	ldr r1, _08050284
	ldrh r0, [r4]
	adds r0, r0, r1
	ldrb r0, [r0]
	movs r1, #1
	rsbs r1, r1, #0
	movs r2, #2
	bl sub_80192D4
_08050268:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08050270: .4byte 0x03006EF1
_08050274: .4byte 0x03003578
_08050278: .4byte gPlayerStateSettings
_0805027C: .4byte gPlayerState
_08050280: .4byte gPlayerPos
_08050284: .4byte 0x080CC6B0

	.thumb
sub_8050288: @ 0x08050288
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl sub_08049574
	cmp r0, #0
	beq _080502A4
	adds r0, r4, #0
	movs r1, #1
	movs r2, #1
	bl sub_8047430
_080502A4:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	.thumb
sub_80502AC: @ 0x080502AC
	push {r4, lr}
	adds r4, r0, #0
	adds r0, r1, #0
	adds r0, #0xa0
	bl sub_8003770
	cmp r0, #0
	beq _080502EE
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl sub_08049574
	cmp r0, #0
	beq _080502D8
	adds r0, r4, #0
	movs r1, #2
	movs r2, #1
	bl sub_8047430
	b _080502E2
_080502D8:
	adds r0, r4, #0
	movs r1, #9
	movs r2, #1
	bl sub_8047430
_080502E2:
	ldr r0, [r4, #0x2c]
	ldr r1, [r4, #0x28]
	ldr r1, [r1]
	movs r2, #0
	bl CallARM_store_jump_and_other_value
_080502EE:
	pop {r4}
	pop {r0}
	bx r0

	.thumb
sub_80502F4: @ 0x080502F4
	push {r4, r5, lr}
	sub sp, #0xc
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, [r4, #0x2c]
	add r2, sp, #4
	add r3, sp, #8
	mov r1, sp
	bl sub_80038C4
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl sub_08049574
	cmp r0, #0
	beq _080503A8
	ldr r0, [r4, #0x54]
	ldr r1, [sp, #4]
	adds r0, r0, r1
	str r0, [r4, #0x54]
	asrs r0, r0, #0x10
	strb r0, [r5, #9]
	adds r0, r5, #0
	adds r0, #0x94
	movs r1, #2
	ldrsh r0, [r0, r1]
	strh r0, [r5, #2]
	ldr r3, _0805035C
	adds r0, r5, #0
	adds r0, #0x9c
	adds r2, r5, #0
	adds r2, #0x98
	ldr r1, [r0]
	ldr r0, [r2]
	adds r1, r1, r0
	asrs r1, r1, #0x10
	ldrh r0, [r3]
	subs r0, r0, r1
	strh r0, [r5, #4]
	adds r2, #0x24
	ldrb r1, [r5, #9]
	ldr r0, _08050360
	ldr r0, [r0]
	cmp r1, r0
	blt _08050368
	ldr r1, _08050364
	subs r0, #1
	adds r0, r0, r1
	b _0805036C
	.align 2, 0
_0805035C: .4byte gMapPixelSizeY
_08050360: .4byte 0x080CEBC4
_08050364: .4byte 0x080CEB84
_08050368:
	ldr r0, _080503A0
	adds r0, r1, r0
_0805036C:
	ldrb r1, [r0]
	adds r0, r2, #0
	bl sub_80037F4
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0
	bl sub_08047958
	ldr r1, [r4, #0x54]
	ldr r0, _080503A4
	cmp r1, r0
	ble _080503BE
	adds r0, #1
	str r0, [r4, #0x54]
	movs r0, #0x28
	strb r0, [r5, #9]
	ldr r0, [r4, #0x2c]
	bl sub_800387C
	adds r0, r4, #0
	movs r1, #4
	movs r2, #1
	bl sub_8047430
	b _080503BE
	.align 2, 0
_080503A0: .4byte 0x080CEB84
_080503A4: .4byte 0x0027FFFF
_080503A8:
	adds r0, r4, #0
	movs r1, #3
	movs r2, #1
	bl sub_8047430
	ldr r0, [r4, #0x2c]
	ldr r1, [r4, #0x28]
	ldr r1, [r1]
	movs r2, #0
	bl CallARM_store_jump_and_other_value
_080503BE:
	add sp, #0xc
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	.thumb
sub_80503C8: @ 0x080503C8
	push {r4, r5, lr}
	sub sp, #0xc
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, [r4, #0x2c]
	add r2, sp, #4
	add r3, sp, #8
	mov r1, sp
	bl sub_80038C4
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl sub_08049574
	cmp r0, #0
	bne _08050474
	ldr r0, [r4, #0x54]
	ldr r1, [sp, #4]
	adds r0, r0, r1
	str r0, [r4, #0x54]
	asrs r0, r0, #0x10
	strb r0, [r5, #9]
	adds r0, r5, #0
	adds r0, #0x94
	movs r1, #2
	ldrsh r0, [r0, r1]
	strh r0, [r5, #2]
	ldr r3, _08050430
	adds r0, r5, #0
	adds r0, #0x9c
	adds r2, r5, #0
	adds r2, #0x98
	ldr r1, [r0]
	ldr r0, [r2]
	adds r1, r1, r0
	asrs r1, r1, #0x10
	ldrh r0, [r3]
	subs r0, r0, r1
	strh r0, [r5, #4]
	adds r2, #0x24
	ldrb r1, [r5, #9]
	ldr r0, _08050434
	ldr r0, [r0]
	cmp r1, r0
	blt _0805043C
	ldr r1, _08050438
	subs r0, #1
	adds r0, r0, r1
	b _08050440
	.align 2, 0
_08050430: .4byte gMapPixelSizeY
_08050434: .4byte 0x080CEBC4
_08050438: .4byte 0x080CEB84
_0805043C:
	ldr r0, _08050470
	adds r0, r1, r0
_08050440:
	ldrb r1, [r0]
	adds r0, r2, #0
	bl sub_80037F4
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0
	bl sub_08047958
	ldr r0, [r4, #0x54]
	cmp r0, #0
	bgt _0805048A
	movs r0, #0
	str r0, [r4, #0x54]
	strb r0, [r5, #9]
	adds r0, r4, #0
	movs r1, #9
	movs r2, #1
	bl sub_8047430
	ldr r0, [r4, #0x2c]
	bl sub_800387C
	b _0805048A
	.align 2, 0
_08050470: .4byte 0x080CEB84
_08050474:
	adds r0, r4, #0
	movs r1, #2
	movs r2, #1
	bl sub_8047430
	ldr r0, [r4, #0x2c]
	ldr r1, [r4, #0x28]
	ldr r1, [r1]
	movs r2, #0
	bl CallARM_store_jump_and_other_value
_0805048A:
	add sp, #0xc
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	.thumb
sub_8050494: @ 0x08050494
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x18
	adds r5, r0, #0
	adds r6, r1, #0
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl sub_08049574
	cmp r0, #0
	beq _080505A4
	ldr r1, _080504F8
	adds r0, r5, #0
	movs r2, #0
	bl sub_8049008
	adds r4, r6, #0
	adds r4, #0x98
	ldr r0, [r4]
	str r0, [r5, #8]
	ldr r0, [r5, #0x2c]
	add r1, sp, #0xc
	add r2, sp, #0x10
	add r3, sp, #0x14
	bl sub_80038C4
	ldr r0, [r4]
	str r0, [sp, #4]
	ldrh r0, [r6]
	mov r8, r4
	cmp r0, #0xaf
	bne _080504FC
	adds r3, r6, #0
	adds r3, #0x94
	ldr r0, [r3]
	ldr r1, [sp, #0xc]
	adds r0, r0, r1
	str r0, [sp]
	adds r2, r6, #0
	adds r2, #0x9c
	ldr r0, [r2]
	ldr r1, [sp, #0x14]
	adds r0, r0, r1
	str r0, [sp, #8]
	adds r4, r3, #0
	adds r7, r2, #0
	b _08050510
	.align 2, 0
_080504F8: .4byte gPlayerPos
_080504FC:
	adds r2, r6, #0
	adds r2, #0x94
	ldr r0, [r2]
	str r0, [sp]
	adds r1, r6, #0
	adds r1, #0x9c
	ldr r0, [r1]
	str r0, [sp, #8]
	adds r4, r2, #0
	adds r7, r1, #0
_08050510:
	adds r0, r5, #0
	mov r1, sp
	movs r2, #0
	bl sub_080490BC
	adds r0, r5, #0
	bl sub_80497C0
	ldr r2, [sp]
	str r2, [r4]
	ldr r0, [sp, #4]
	mov r1, r8
	str r0, [r1]
	ldr r1, [sp, #8]
	str r1, [r7]
	asrs r2, r2, #0x10
	strh r2, [r6, #2]
	ldr r2, _08050558
	ldr r0, [r5, #0x50]
	adds r1, r1, r0
	asrs r1, r1, #0x10
	ldrh r0, [r2]
	subs r0, r0, r1
	strh r0, [r6, #4]
	adds r2, r6, #0
	adds r2, #0xbc
	ldrb r1, [r6, #9]
	ldr r0, _0805055C
	ldr r0, [r0]
	cmp r1, r0
	blt _08050564
	ldr r1, _08050560
	subs r0, #1
	adds r0, r0, r1
	b _08050568
	.align 2, 0
_08050558: .4byte gMapPixelSizeY
_0805055C: .4byte 0x080CEBC4
_08050560: .4byte 0x080CEB84
_08050564:
	ldr r0, _080505A0
	adds r0, r1, r0
_08050568:
	ldrb r1, [r0]
	adds r0, r2, #0
	bl sub_80037F4
	adds r0, r5, #0
	movs r1, #1
	movs r2, #0
	bl sub_08047958
	adds r0, r5, #0
	bl sub_8049810
	adds r0, r6, #0
	movs r1, #0x14
	movs r2, #0
	bl sub_80496B0
	cmp r0, #0
	beq _080505BA
	adds r0, r5, #0
	movs r1, #5
	movs r2, #1
	bl sub_8047430
	ldr r0, [r5, #0x2c]
	bl sub_800387C
	b _080505BA
	.align 2, 0
_080505A0: .4byte 0x080CEB84
_080505A4:
	adds r0, r5, #0
	movs r1, #3
	movs r2, #1
	bl sub_8047430
	ldr r0, [r5, #0x2c]
	ldr r1, [r5, #0x28]
	ldr r1, [r1]
	movs r2, #0
	bl CallARM_store_jump_and_other_value
_080505BA:
	add sp, #0x18
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	.thumb
sub_80505C8: @ 0x080505C8
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	adds r1, r4, #0
	adds r1, #0x5e
	ldrh r0, [r1]
	cmp r0, #0
	bne _080505F0
	adds r0, r4, #0
	movs r1, #6
	movs r2, #1
	bl sub_8047430
	ldr r0, [r4, #0x2c]
	ldr r1, [r4, #0x28]
	ldr r1, [r1]
	movs r2, #0
	bl CallARM_store_jump_and_other_value
	b _080505F4
_080505F0:
	subs r0, #1
	strh r0, [r1]
_080505F4:
	adds r2, r5, #0
	adds r2, #0xbc
	ldrb r1, [r5, #9]
	ldr r0, _0805060C
	ldr r0, [r0]
	cmp r1, r0
	blt _08050614
	ldr r1, _08050610
	subs r0, #1
	adds r0, r0, r1
	b _08050618
	.align 2, 0
_0805060C: .4byte 0x080CEBC4
_08050610: .4byte 0x080CEB84
_08050614:
	ldr r0, _08050628
	adds r0, r1, r0
_08050618:
	ldrb r1, [r0]
	adds r0, r2, #0
	bl sub_80037F4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08050628: .4byte 0x080CEB84

	.thumb
sub_805062C: @ 0x0805062C
	push {r4, r5, lr}
	sub sp, #0xc
	adds r5, r0, #0
	adds r4, r1, #0
	ldr r0, [r5, #0x2c]
	add r2, sp, #4
	add r3, sp, #8
	mov r1, sp
	bl sub_80038C4
	ldr r0, [r5, #0x54]
	ldr r1, [sp, #4]
	adds r0, r0, r1
	str r0, [r5, #0x54]
	asrs r0, r0, #0x10
	strb r0, [r4, #9]
	adds r0, r4, #0
	adds r0, #0x94
	movs r1, #2
	ldrsh r0, [r0, r1]
	strh r0, [r4, #2]
	ldr r3, _08050684
	adds r0, r4, #0
	adds r0, #0x9c
	adds r2, r4, #0
	adds r2, #0x98
	ldr r1, [r0]
	ldr r0, [r2]
	adds r1, r1, r0
	asrs r1, r1, #0x10
	ldrh r0, [r3]
	subs r0, r0, r1
	strh r0, [r4, #4]
	adds r2, #0x24
	ldrb r1, [r4, #9]
	ldr r0, _08050688
	ldr r0, [r0]
	cmp r1, r0
	blt _08050690
	ldr r1, _0805068C
	subs r0, #1
	adds r0, r0, r1
	b _08050694
	.align 2, 0
_08050684: .4byte gMapPixelSizeY
_08050688: .4byte 0x080CEBC4
_0805068C: .4byte 0x080CEB84
_08050690:
	ldr r0, _080506CC
	adds r0, r1, r0
_08050694:
	ldrb r1, [r0]
	adds r0, r2, #0
	bl sub_80037F4
	ldr r0, [r5, #0x54]
	cmp r0, #0
	bgt _080506B8
	movs r0, #0
	str r0, [r5, #0x54]
	strb r0, [r4, #9]
	adds r0, r5, #0
	movs r1, #7
	movs r2, #1
	bl sub_8047430
	ldr r0, [r5, #0x2c]
	bl sub_800387C
_080506B8:
	adds r0, r5, #0
	movs r1, #1
	movs r2, #0
	bl sub_08047958
	add sp, #0xc
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080506CC: .4byte 0x080CEB84

	.thumb
sub_80506D0: @ 0x080506D0
	push {r4, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x5e
	ldrh r0, [r1]
	cmp r0, #0
	bne _08050712
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl sub_08049574
	cmp r0, #0
	beq _080506FA
	adds r0, r4, #0
	movs r1, #2
	movs r2, #1
	bl sub_8047430
	b _08050704
_080506FA:
	adds r0, r4, #0
	movs r1, #9
	movs r2, #1
	bl sub_8047430
_08050704:
	ldr r0, [r4, #0x2c]
	ldr r1, [r4, #0x28]
	ldr r1, [r1]
	movs r2, #0
	bl CallARM_store_jump_and_other_value
	b _08050716
_08050712:
	subs r0, #1
	strh r0, [r1]
_08050716:
	pop {r4}
	pop {r0}
	bx r0

	.thumb
sub_805071C: @ 0x0805071C
	push {lr}
	movs r2, #0
	movs r3, #1
	bl sub_804FA64
	pop {r0}
	bx r0
	.align 2, 0

	.thumb
sub_805072C: @ 0x0805072C
	push {r4, lr}
	adds r4, r0, #0
	adds r0, r1, #0
	adds r0, #0xa0
	bl sub_8003770
	cmp r0, #0
	beq _08050752
	ldr r0, [r4, #0x1c]
	str r0, [r4, #4]
	ldr r0, [r4, #0x20]
	str r0, [r4, #8]
	ldr r0, [r4, #0x24]
	str r0, [r4, #0xc]
	adds r0, r4, #0
	movs r1, #8
	movs r2, #1
	bl sub_8047430
_08050752:
	pop {r4}
	pop {r0}
	bx r0

    .thumb
sub_8050758: @ 0x08050758
	push {r4, lr}
	adds r2, r0, #0
	adds r4, r1, #0
	adds r0, r4, #0
	adds r0, #0x48
	ldrb r0, [r0]
	cmp r0, #0
	beq _080507A4
	adds r0, r2, #0
	adds r0, #0x65
	ldrb r0, [r0]
	cmp r0, #1
	bne _080507A4
	ldr r0, _080507AC
	ldrb r0, [r0]
	cmp r0, #0
	bne _080507A4
	ldr r0, _080507B0
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	bne _080507A4
	ldr r0, _080507B4
	adds r1, #0x64
	adds r2, r4, #0
	adds r2, #0x70
	bl VecFX_PointInBox
	cmp r0, #0
	beq _080507A4
	ldr r1, _080507B8
	ldrh r0, [r4]
	adds r0, r0, r1
	ldrb r0, [r0]
	movs r1, #1
	rsbs r1, r1, #0
	movs r2, #2
	bl sub_80192D4
_080507A4:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080507AC: .4byte 0x03006EF1
_080507B0: .4byte 0x03003578
_080507B4: .4byte gPlayerPos
_080507B8: .4byte 0x080CC6B0

	.thumb
sub_80507BC: @ 0x080507BC
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_08049574
	cmp r0, #0
	beq _080507F0
	ldr r0, _080507F8
	ldr r0, [r0, #4]
	ldr r1, [r4, #0x50]
	subs r0, r0, r1
	ldr r1, _080507FC
	cmp r0, r1
	bgt _080507F0
	ldr r1, _08050800
	adds r0, r4, #0
	movs r2, #1
	bl sub_8049008
	adds r0, r4, #0
	movs r1, #1
	movs r2, #1
	bl sub_8047430
_080507F0:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080507F8: .4byte gPlayerPos
_080507FC: .4byte 0x004FFFFF
_08050800: .4byte gPlayerShadowPos

	.thumb
sub_8050804: @ 0x08050804
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x18
	adds r7, r0, #0
	mov r8, r1
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_08049574
	cmp r0, #0
	beq _08050894
	ldr r1, _0805088C
	adds r0, r7, #0
	movs r2, #0
	bl sub_8049008
	ldr r0, [r7, #0x2c]
	add r1, sp, #0xc
	add r2, sp, #0x10
	add r3, sp, #0x14
	bl sub_80038C4
	mov r6, r8
	adds r6, #0x94
	ldr r0, [r6]
	ldr r1, [sp, #0xc]
	adds r0, r0, r1
	str r0, [sp]
	mov r5, r8
	adds r5, #0x98
	ldr r0, [r5]
	str r0, [sp, #4]
	mov r4, r8
	adds r4, #0x9c
	ldr r0, [r4]
	ldr r1, [sp, #0x14]
	adds r0, r0, r1
	str r0, [sp, #8]
	adds r0, r7, #0
	bl sub_80497C0
	ldr r0, [sp]
	str r0, [r6]
	ldr r2, [sp, #4]
	str r2, [r5]
	ldr r1, [sp, #8]
	str r1, [r4]
	asrs r0, r0, #0x10
	mov r3, r8
	strh r0, [r3, #2]
	ldr r0, _08050890
	adds r1, r1, r2
	asrs r1, r1, #0x10
	ldrh r0, [r0]
	subs r0, r0, r1
	strh r0, [r3, #4]
	adds r0, r7, #0
	movs r1, #2
	movs r2, #0
	bl sub_08047958
	adds r0, r7, #0
	bl sub_8049810
	b _080508AA
	.align 2, 0
_0805088C: .4byte gPlayerShadowPos
_08050890: .4byte gMapPixelSizeY
_08050894:
	ldr r0, [r7, #0x10]
	str r0, [r7, #4]
	ldr r0, [r7, #0x14]
	str r0, [r7, #8]
	ldr r0, [r7, #0x18]
	str r0, [r7, #0xc]
	adds r0, r7, #0
	movs r1, #2
	movs r2, #1
	bl sub_8047430
_080508AA:
	add sp, #0x18
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	.thumb
sub_80508B8: @ 0x080508B8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x18
	adds r4, r0, #0
	adds r5, r1, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_08049574
	cmp r0, #0
	beq _080508E8
	ldr r1, _080508E4
	adds r0, r4, #0
	movs r2, #0
	bl sub_8049008
	adds r0, r4, #0
	movs r1, #1
	b _08050924
	.align 2, 0
_080508E4: .4byte gPlayerShadowPos
_080508E8:
	ldr r0, [r4, #0x2c]
	add r1, sp, #0xc
	add r2, sp, #0x10
	add r3, sp, #0x14
	bl sub_80038C4
	movs r0, #0x94
	adds r0, r0, r5
	mov r8, r0
	ldr r0, [r0]
	ldr r1, [sp, #0xc]
	adds r0, r0, r1
	str r0, [sp]
	adds r7, r5, #0
	adds r7, #0x98
	ldr r0, [r7]
	str r0, [sp, #4]
	adds r6, r5, #0
	adds r6, #0x9c
	ldr r0, [r6]
	ldr r1, [sp, #0x14]
	adds r0, r0, r1
	str r0, [sp, #8]
	adds r0, r4, #0
	bl sub_80497C0
	cmp r0, #0
	beq _0805092C
	adds r0, r4, #0
	movs r1, #0
_08050924:
	movs r2, #1
	bl sub_8047430
	b _0805095E
_0805092C:
	ldr r0, [sp]
	mov r1, r8
	str r0, [r1]
	ldr r2, [sp, #4]
	str r2, [r7]
	ldr r1, [sp, #8]
	str r1, [r6]
	asrs r0, r0, #0x10
	strh r0, [r5, #2]
	ldr r0, _0805096C
	adds r1, r1, r2
	asrs r1, r1, #0x10
	ldrh r0, [r0]
	subs r0, r0, r1
	strh r0, [r5, #4]
	adds r0, r5, #0
	adds r0, #0x38
	ldrb r2, [r0]
	adds r0, r4, #0
	movs r1, #2
	bl sub_08047958
	adds r0, r4, #0
	bl sub_8049810
_0805095E:
	add sp, #0x18
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805096C: .4byte gMapPixelSizeY

    .thumb
sub_8050970: @ 0x08050970
	push {r4, lr}
	adds r4, r1, #0
	adds r0, r4, #0
	adds r0, #0x48
	ldrb r0, [r0]
	cmp r0, #0
	beq _080509B0
	ldr r0, _080509B8
	ldrb r0, [r0]
	cmp r0, #0
	bne _080509B0
	ldr r0, _080509BC
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	bne _080509B0
	ldr r0, _080509C0
	adds r1, #0x64
	adds r2, r4, #0
	adds r2, #0x70
	bl VecFX_PointInBox
	cmp r0, #0
	beq _080509B0
	ldr r1, _080509C4
	ldrh r0, [r4]
	adds r0, r0, r1
	ldrb r0, [r0]
	movs r1, #1
	rsbs r1, r1, #0
	movs r2, #2
	bl sub_80192D4
_080509B0:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080509B8: .4byte 0x03006EF1
_080509BC: .4byte 0x03003578
_080509C0: .4byte gPlayerPos
_080509C4: .4byte 0x080CC6B0

	.thumb
sub_80509C8: @ 0x080509C8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x18
	adds r4, r0, #0
	adds r5, r1, #0
	movs r1, #1
	movs r2, #0
	movs r3, #1
	bl sub_08049574
	cmp r0, #0
	beq _08050A08
	ldr r1, _08050A00
	adds r0, r4, #0
	movs r2, #1
	bl sub_8049008
	adds r0, r4, #0
	movs r1, #1
	movs r2, #1
	bl sub_8047430
	ldr r0, [r4, #0x2c]
	ldr r1, _08050A04
	movs r2, #0
	bl CallARM_store_jump_and_other_value
	b _08050AE4
	.align 2, 0
_08050A00: .4byte gPlayerPos
_08050A04: .4byte 0xFFFF8000
_08050A08:
	ldr r0, [r4, #0x2c]
	add r1, sp, #0xc
	add r2, sp, #0x10
	add r3, sp, #0x14
	bl sub_80038C4
	adds r6, r5, #0
	adds r6, #0x94
	ldr r0, [r6]
	ldr r1, [sp, #0xc]
	adds r0, r0, r1
	str r0, [sp]
	adds r7, r5, #0
	adds r7, #0x9c
	ldr r0, [r7]
	ldr r1, [sp, #0x14]
	adds r0, r0, r1
	str r0, [sp, #8]
	adds r0, r4, #0
	bl sub_80497C0
	cmp r0, #0
	beq _08050A3E
	adds r0, r4, #0
	bl sub_8049784
	b _08050AB0
_08050A3E:
	ldr r0, [sp]
	str r0, [r6]
	ldr r1, [r4, #0x54]
	ldr r0, [sp, #0x10]
	adds r1, r1, r0
	str r1, [r4, #0x54]
	asrs r0, r1, #0x10
	strb r0, [r5, #9]
	ldr r0, [sp, #8]
	str r0, [r7]
	ldr r0, _08050AC8
	cmp r1, r0
	ble _08050A66
	adds r0, #1
	str r0, [r4, #0x54]
	movs r0, #0x30
	strb r0, [r5, #9]
	ldr r0, [r4, #0x2c]
	bl sub_800387C
_08050A66:
	ldr r0, [r4, #0x54]
	movs r1, #0x80
	lsls r1, r1, #0xd
	cmp r0, r1
	bgt _08050A82
	str r1, [r4, #0x54]
	movs r0, #0x10
	strb r0, [r5, #9]
	ldr r0, [r4, #0x2c]
	movs r1, #0x80
	lsls r1, r1, #8
	movs r2, #0
	bl CallARM_store_jump_and_other_value
_08050A82:
	ldr r0, [sp]
	asrs r0, r0, #0x10
	strh r0, [r5, #2]
	ldr r2, _08050ACC
	adds r0, r5, #0
	adds r0, #0x98
	ldr r1, [r7]
	ldr r0, [r0]
	adds r1, r1, r0
	asrs r1, r1, #0x10
	ldrh r0, [r2]
	subs r0, r0, r1
	strh r0, [r5, #4]
	adds r0, r5, #0
	adds r0, #0x38
	ldrb r2, [r0]
	adds r0, r4, #0
	movs r1, #1
	bl sub_08047958
	adds r0, r4, #0
	bl sub_8049810
_08050AB0:
	adds r2, r5, #0
	adds r2, #0xbc
	ldrb r1, [r5, #9]
	ldr r0, _08050AD0
	ldr r0, [r0]
	cmp r1, r0
	blt _08050AD8
	ldr r1, _08050AD4
	subs r0, #1
	adds r0, r0, r1
	b _08050ADC
	.align 2, 0
_08050AC8: .4byte 0x002FFFFF
_08050ACC: .4byte gMapPixelSizeY
_08050AD0: .4byte 0x080CEBC4
_08050AD4: .4byte 0x080CEB84
_08050AD8:
	ldr r0, _08050AEC
	adds r0, r1, r0
_08050ADC:
	ldrb r1, [r0]
	adds r0, r2, #0
	bl sub_80037F4
_08050AE4:
	add sp, #0x18
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08050AEC: .4byte 0x080CEB84

	.thumb
sub_8050AF0: @ 0x08050AF0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	adds r5, r0, #0
	adds r6, r1, #0
	movs r1, #1
	movs r2, #0
	movs r3, #1
	bl sub_08049574
	cmp r0, #0
	bne _08050B10
	b _08050C0C
_08050B10:
	ldr r1, _08050B64
	adds r0, r5, #0
	movs r2, #0
	bl sub_8049008
	adds r4, r6, #0
	adds r4, #0x98
	ldr r0, [r4]
	str r0, [r5, #8]
	ldr r0, [r5, #0x2c]
	add r1, sp, #0xc
	add r2, sp, #0x10
	add r3, sp, #0x14
	bl sub_80038C4
	adds r3, r6, #0
	adds r3, #0x94
	ldr r0, [r3]
	ldr r1, [sp, #0xc]
	adds r0, r0, r1
	str r0, [sp]
	adds r2, r6, #0
	adds r2, #0x9c
	ldr r0, [r2]
	ldr r1, [sp, #0x14]
	adds r0, r0, r1
	str r0, [sp, #8]
	adds r7, r6, #0
	adds r7, #0xbc
	ldrb r1, [r6, #9]
	ldr r0, _08050B68
	ldr r0, [r0]
	mov sb, r4
	adds r4, r3, #0
	mov r8, r2
	mov sl, r7
	cmp r1, r0
	blt _08050B70
	ldr r1, _08050B6C
	subs r0, #1
	adds r0, r0, r1
	b _08050B74
	.align 2, 0
_08050B64: .4byte gPlayerPos
_08050B68: .4byte 0x080CEBC4
_08050B6C: .4byte 0x080CEB84
_08050B70:
	ldr r0, _08050BDC
	adds r0, r1, r0
_08050B74:
	ldrb r1, [r0]
	adds r0, r7, #0
	bl sub_80037F4
	adds r0, r5, #0
	bl sub_80497C0
	ldr r0, [sp]
	str r0, [r4]
	ldr r1, [r5, #0x54]
	ldr r0, [sp, #0x10]
	adds r1, r1, r0
	str r1, [r5, #0x54]
	asrs r0, r1, #0x10
	strb r0, [r6, #9]
	ldr r0, [sp, #8]
	mov r2, r8
	str r0, [r2]
	movs r0, #0x80
	lsls r0, r0, #0xd
	cmp r1, r0
	bgt _08050BAC
	str r0, [r5, #0x54]
	movs r0, #0x10
	strb r0, [r6, #9]
	ldr r0, [r5, #0x2c]
	bl sub_800387C
_08050BAC:
	ldr r0, [sp]
	asrs r0, r0, #0x10
	strh r0, [r6, #2]
	ldr r2, _08050BE0
	mov r3, r8
	ldr r1, [r3]
	mov r3, sb
	ldr r0, [r3]
	adds r1, r1, r0
	asrs r1, r1, #0x10
	ldrh r0, [r2]
	subs r0, r0, r1
	strh r0, [r6, #4]
	mov r2, sl
	ldrb r1, [r6, #9]
	ldr r0, _08050BE4
	ldr r0, [r0]
	cmp r1, r0
	blt _08050BE8
	ldr r1, _08050BDC
	subs r0, #1
	adds r0, r0, r1
	b _08050BEC
	.align 2, 0
_08050BDC: .4byte 0x080CEB84
_08050BE0: .4byte gMapPixelSizeY
_08050BE4: .4byte 0x080CEBC4
_08050BE8:
	ldr r0, _08050C08
	adds r0, r1, r0
_08050BEC:
	ldrb r1, [r0]
	adds r0, r2, #0
	bl sub_80037F4
	adds r0, r5, #0
	movs r1, #1
	movs r2, #0
	bl sub_08047958
	adds r0, r5, #0
	bl sub_8049810
	b _08050C38
	.align 2, 0
_08050C08: .4byte 0x080CEB84
_08050C0C:
	adds r0, r5, #0
	movs r1, #0
	movs r2, #1
	bl sub_8047430
	adds r0, r6, #0
	adds r0, #0x38
	ldrb r0, [r0]
	cmp r0, #0
	beq _08050C2C
	ldr r0, [r5, #0x10]
	str r0, [r5, #4]
	ldr r0, [r5, #0x14]
	str r0, [r5, #8]
	ldr r0, [r5, #0x18]
	str r0, [r5, #0xc]
_08050C2C:
	ldr r0, [r5, #0x2c]
	movs r1, #0x80
	lsls r1, r1, #8
	movs r2, #0
	bl CallARM_store_jump_and_other_value
_08050C38:
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

    .thumb
sub_8050C48: @ 0x08050C48
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	adds r5, r1, #0
	adds r0, #0x65
	ldrb r0, [r0]
	cmp r0, #2
	bne _08050CBE
	ldr r0, _08050CC8
	ldrb r0, [r0]
	cmp r0, #0
	bne _08050CBE
	ldr r0, _08050CCC
	ldrb r4, [r0, #0xe]
	cmp r4, #0
	bne _08050CBE
	adds r0, r5, #0
	adds r0, #0x94
	ldr r7, _08050CD0
	ldr r0, [r0]
	ldr r1, [r7]
	subs r0, r0, r1
	bl Abs
	ldr r6, _08050CD4
	cmp r0, r6
	bhi _08050CBE
	adds r0, r5, #0
	adds r0, #0x9c
	ldr r0, [r0]
	ldr r1, [r7, #8]
	subs r0, r0, r1
	bl Abs
	cmp r0, r6
	bhi _08050CBE
	adds r0, r5, #0
	adds r0, #0x98
	ldr r0, [r0]
	ldr r1, [r7, #4]
	subs r0, r0, r1
	bl Abs
	cmp r0, r6
	bhi _08050CBE
	mov r0, r8
	movs r1, #4
	movs r2, #1
	bl sub_8047430
	str r4, [r5, #0x4c]
	str r4, [r5, #0x50]
	str r4, [r5, #0x54]
	mov r0, r8
	movs r1, #2
	movs r2, #0
	bl sub_08047958
_08050CBE:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08050CC8: .4byte 0x03006EF2
_08050CCC: .4byte 0x03003578
_08050CD0: .4byte gPlayerPos
_08050CD4: .4byte 0x0005FFFF

	.thumb
sub_8050CD8: @ 0x08050CD8
	push {lr}
	bl sub_804F604
	pop {r0}
	bx r0
	.align 2, 0

	.thumb
sub_8050CE4: @ 0x08050CE4
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r1, #0x38
	ldrb r5, [r1]
	cmp r5, #0
	beq _08050CFA
	movs r1, #3
	movs r2, #1
	bl sub_8047430
	b _08050D26
_08050CFA:
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_08049574
	cmp r0, #0
	beq _08050D26
	ldr r1, _08050D2C
	adds r0, r4, #0
	movs r2, #1
	bl sub_8049008
	adds r0, r4, #0
	movs r1, #2
	movs r2, #1
	bl sub_8047430
	ldr r0, _08050D30
	strb r5, [r0]
	ldr r0, _08050D34
	strb r5, [r0]
_08050D26:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08050D2C: .4byte gPlayerPos
_08050D30: .4byte 0x0203F8CD
_08050D34: .4byte 0x0203F8CE

	.thumb
sub_8050D38: @ 0x08050D38
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x18
	adds r4, r0, #0
	adds r5, r1, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_08049574
	cmp r0, #0
	beq _08050DEC
	ldr r0, _08050DE0
	ldrb r0, [r0]
	cmp r0, #0
	bne _08050DEC
	movs r0, #0
	mov sb, r0
	ldr r1, _08050DE4
	adds r0, r4, #0
	movs r2, #0
	bl sub_8049008
	ldr r0, [r4, #0x2c]
	add r1, sp, #0xc
	add r2, sp, #0x10
	add r3, sp, #0x14
	bl sub_80038C4
	movs r1, #0x94
	adds r1, r1, r5
	mov r8, r1
	ldr r0, [r1]
	ldr r1, [sp, #0xc]
	adds r0, r0, r1
	str r0, [sp]
	adds r7, r5, #0
	adds r7, #0x98
	ldr r0, [r7]
	str r0, [sp, #4]
	adds r6, r5, #0
	adds r6, #0x9c
	ldr r0, [r6]
	ldr r1, [sp, #0x14]
	adds r0, r0, r1
	str r0, [sp, #8]
	adds r0, r4, #0
	bl sub_80497C0
	cmp r0, #0
	bne _08050DF6
	adds r0, r4, #0
	mov r1, sp
	movs r2, #1
	bl sub_080490BC
	cmp r0, #0
	bne _08050DF6
	ldr r0, [sp]
	mov r1, r8
	str r0, [r1]
	ldr r2, [sp, #4]
	str r2, [r7]
	ldr r1, [sp, #8]
	str r1, [r6]
	asrs r0, r0, #0x10
	strh r0, [r5, #2]
	ldr r0, _08050DE8
	adds r1, r1, r2
	asrs r1, r1, #0x10
	ldrh r0, [r0]
	subs r0, r0, r1
	strh r0, [r5, #4]
	adds r0, r4, #0
	movs r1, #2
	movs r2, #0
	bl sub_08047958
	adds r0, r4, #0
	bl sub_8049810
	b _08050DF0
	.align 2, 0
_08050DE0: .4byte byte_203F99C
_08050DE4: .4byte gPlayerPos
_08050DE8: .4byte gMapPixelSizeY
_08050DEC:
	movs r0, #1
	mov sb, r0
_08050DF0:
	mov r1, sb
	cmp r1, #0
	beq _08050E26
_08050DF6:
	adds r0, r5, #0
	adds r0, #0x38
	ldrb r0, [r0]
	cmp r0, #0
	beq _08050E10
	ldr r0, [r4, #0x10]
	str r0, [r4, #4]
	adds r0, r5, #0
	adds r0, #0x98
	ldr r0, [r0]
	str r0, [r4, #8]
	ldr r0, [r4, #0x18]
	b _08050E1A
_08050E10:
	ldr r0, [r4, #0x1c]
	str r0, [r4, #4]
	ldr r0, [r4, #0x20]
	str r0, [r4, #8]
	ldr r0, [r4, #0x24]
_08050E1A:
	str r0, [r4, #0xc]
	adds r0, r4, #0
	movs r1, #3
	movs r2, #1
	bl sub_8047430
_08050E26:
	add sp, #0x18
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	.thumb
sub_8050E34: @ 0x08050E34
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x18
	adds r6, r0, #0
	adds r7, r1, #0
	adds r1, r6, #0
	adds r1, #0x5e
	ldrh r0, [r1]
	cmp r0, #0
	bne _08050EBC
	adds r0, r6, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_08049574
	movs r1, #0x38
	adds r1, r1, r7
	mov r8, r1
	cmp r0, #0
	beq _08050EC6
	ldrb r0, [r1]
	cmp r0, #0
	beq _08050E80
	adds r0, r6, #0
	adds r0, #0x69
	ldrb r0, [r0]
	cmp r0, #0
	beq _08050E80
	ldr r1, _08050E7C
	adds r0, r6, #0
	movs r2, #1
	bl sub_8049008
	b _08050E8A
	.align 2, 0
_08050E7C: .4byte gPlayerShadowPos
_08050E80:
	ldr r1, _08050EAC
	adds r0, r6, #0
	movs r2, #0
	bl sub_8049008
_08050E8A:
	ldr r0, _08050EB0
	ldrb r1, [r0]
	adds r0, r6, #0
	bl sub_8049038
	adds r0, r6, #0
	movs r1, #2
	movs r2, #1
	bl sub_8047430
	ldr r0, _08050EB4
	movs r1, #0
	strb r1, [r0]
	ldr r0, _08050EB8
	strb r1, [r0]
	b _08050EC6
	.align 2, 0
_08050EAC: .4byte gPlayerShadowPos
_08050EB0: .4byte 0x03006EF0
_08050EB4: .4byte 0x0203F8CD
_08050EB8: .4byte 0x0203F8CE
_08050EBC:
	subs r0, #1
	strh r0, [r1]
	movs r0, #0x38
	adds r0, r0, r7
	mov r8, r0
_08050EC6:
	ldr r0, [r6, #0x2c]
	add r1, sp, #0xc
	add r2, sp, #0x10
	add r3, sp, #0x14
	bl sub_80038C4
	adds r5, r7, #0
	adds r5, #0x94
	ldr r0, [r5]
	ldr r1, [sp, #0xc]
	adds r0, r0, r1
	str r0, [sp]
	adds r0, r7, #0
	adds r0, #0x98
	ldr r0, [r0]
	str r0, [sp, #4]
	adds r4, r7, #0
	adds r4, #0x9c
	ldr r0, [r4]
	ldr r1, [sp, #0x14]
	adds r0, r0, r1
	str r0, [sp, #8]
	adds r0, r6, #0
	mov r1, sp
	movs r2, #0
	bl sub_080490BC
	mov r1, r8
	ldrb r0, [r1]
	cmp r0, #0
	bne _08050F1A
	adds r0, r6, #0
	bl sub_80497C0
	cmp r0, #0
	beq _08050F2A
	adds r0, r6, #0
	movs r1, #1
	movs r2, #1
	bl sub_8047430
	b _08050F56
_08050F1A:
	adds r0, r6, #0
	bl sub_80497C0
	cmp r0, #0
	beq _08050F2A
	adds r0, r6, #0
	bl sub_8049784
_08050F2A:
	ldr r0, [sp]
	str r0, [r5]
	ldr r1, [sp, #8]
	str r1, [r4]
	asrs r0, r0, #0x10
	strh r0, [r7, #2]
	ldr r2, _08050F64
	ldr r0, [sp, #4]
	adds r1, r1, r0
	asrs r1, r1, #0x10
	ldrh r0, [r2]
	subs r0, r0, r1
	strh r0, [r7, #4]
	mov r0, r8
	ldrb r2, [r0]
	adds r0, r6, #0
	movs r1, #2
	bl sub_08047958
	adds r0, r6, #0
	bl sub_8049810
_08050F56:
	add sp, #0x18
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08050F64: .4byte gMapPixelSizeY

	.thumb
sub_8050F68: @ 0x08050F68
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r5, r1, #0
	ldr r0, _08050FC0
	ldr r2, _08050FC4
	ldrb r1, [r0, #0xa]
	ldr r3, _08050FC8
	ldrb r0, [r2]
	cmp r1, r0
	beq _08050FDE
	ldrb r0, [r3]
	cmp r0, #0x18
	bhi _08050FD4
	strb r1, [r2]
	ldr r1, _08050FCC
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldrb r2, [r1]
	ldr r1, _08050FD0
	adds r0, r7, #0
	adds r0, #0x5c
	ldrh r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r2, r0
	ble _08050FDA
	adds r1, r5, #0
	adds r1, #0x3c
	movs r2, #0
	movs r0, #1
	strb r0, [r1]
	strb r2, [r5, #0xb]
	adds r0, r5, #0
	adds r0, #0xaa
	strb r2, [r0]
	adds r0, r7, #0
	movs r1, #5
	movs r2, #1
	bl sub_8047430
	b _080510B4
	.align 2, 0
_08050FC0: .4byte gPlayerSprite
_08050FC4: .4byte 0x0203F8CC
_08050FC8: .4byte 0x0203F8CD
_08050FCC: .4byte 0x0203F8CE
_08050FD0: .4byte 0x080B10C8
_08050FD4:
	ldr r1, _080510BC
	movs r0, #0
	strb r0, [r1]
_08050FDA:
	movs r0, #0
	strb r0, [r3]
_08050FDE:
	ldrb r0, [r3]
	adds r0, #1
	strb r0, [r3]
	adds r0, r7, #0
	adds r0, #0x5e
	ldrh r1, [r0]
	adds r6, r0, #0
	cmp r1, #0
	bne _0805101E
	ldr r1, _080510C0
	ldr r0, _080510C4
	ldrh r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #5
	ands r0, r1
	cmp r0, #0
	bne _0805101E
	ldr r1, _080510C8
	ldrh r0, [r5]
	adds r0, r0, r1
	ldrb r0, [r0]
	movs r1, #1
	rsbs r1, r1, #0
	movs r2, #0
	bl sub_80192D4
	ldr r0, [r7, #0x28]
	ldrh r0, [r0, #6]
	strh r0, [r6]
_0805101E:
	adds r2, r5, #0
	adds r2, #0x94
	ldr r1, _080510CC
	ldr r0, [r1]
	str r0, [r2]
	adds r4, r5, #0
	adds r4, #0x98
	ldr r0, [r1, #4]
	str r0, [r4]
	adds r3, r5, #0
	adds r3, #0x9c
	ldr r0, [r1, #8]
	ldr r1, _080510D0
	adds r0, r0, r1
	str r0, [r3]
	ldr r0, _080510D4
	ldrb r0, [r0, #4]
	strb r0, [r5, #8]
	movs r1, #2
	ldrsh r0, [r2, r1]
	strh r0, [r5, #2]
	ldr r2, _080510D8
	ldr r1, [r3]
	ldr r0, [r4]
	adds r1, r1, r0
	asrs r1, r1, #0x10
	ldrh r0, [r2]
	subs r0, r0, r1
	strh r0, [r5, #4]
	adds r0, r7, #0
	movs r1, #2
	movs r2, #0
	bl sub_08047958
	ldrh r0, [r6]
	subs r0, #1
	strh r0, [r6]
	ldr r0, _080510DC
	ldrb r0, [r0, #0x13]
	cmp r0, #0
	beq _08051098
	ldr r0, _080510E0
	ldrb r0, [r0]
	cmp r0, #0
	bne _08051098
	ldr r1, _080510C0
	ldr r0, _080510C4
	ldrh r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #4
	ands r0, r1
	cmp r0, #0
	bne _08051098
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r1
	cmp r0, #0
	beq _080510B4
_08051098:
	adds r1, r5, #0
	adds r1, #0x3c
	movs r2, #0
	movs r0, #1
	strb r0, [r1]
	strb r2, [r5, #0xb]
	adds r0, r5, #0
	adds r0, #0xaa
	strb r2, [r0]
	adds r0, r7, #0
	movs r1, #5
	movs r2, #1
	bl sub_8047430
_080510B4:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080510BC: .4byte 0x0203F8CE
_080510C0: .4byte gPlayerStateSettings
_080510C4: .4byte gPlayerState
_080510C8: .4byte 0x080CC6B0
_080510CC: .4byte gPlayerPos
_080510D0: .4byte 0xFFFF0000
_080510D4: .4byte gPlayerSprite
_080510D8: .4byte gMapPixelSizeY
_080510DC: .4byte gGameStatus
_080510E0: .4byte byte_203F99C

	.thumb
sub_80510E4: @ 0x080510E4
	push {lr}
	movs r2, #0
	bl sub_804FA40
	pop {r0}
	bx r0

    .thumb
sub_80510F0: @ 0x080510F0
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r4, r1, #0
	adds r5, r6, #0
	adds r5, #0x65
	ldrb r0, [r5]
	cmp r0, #0
	beq _0805119C
	ldr r0, _08051154
	ldrb r0, [r0]
	cmp r0, #0
	bne _0805119C
	ldr r0, _08051158
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	bne _0805119C
	ldr r1, _0805115C
	ldr r0, _08051160
	ldrh r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r1
	cmp r0, #0
	bne _0805119C
	ldr r0, _08051164
	adds r1, r4, #0
	adds r1, #0x64
	adds r2, r4, #0
	adds r2, #0x70
	bl VecFX_PointInBox
	cmp r0, #0
	beq _0805119C
	ldrb r0, [r5]
	cmp r0, #2
	bne _0805116C
	ldr r1, _08051168
	ldrh r0, [r4]
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #1
	ldrb r1, [r4, #0xb]
	movs r2, #2
	bl sub_80192D4
	b _08051180
	.align 2, 0
_08051154: .4byte 0x03006EF1
_08051158: .4byte 0x03003578
_0805115C: .4byte gPlayerStateSettings
_08051160: .4byte gPlayerState
_08051164: .4byte gPlayerPos
_08051168: .4byte 0x080CC6B0
_0805116C:
	ldr r1, _080511A4
	ldrh r0, [r4]
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #1
	movs r1, #1
	rsbs r1, r1, #0
	movs r2, #2
	bl sub_80192D4
_08051180:
	adds r1, r4, #0
	adds r1, #0x3c
	movs r2, #0
	movs r0, #1
	strb r0, [r1]
	strb r2, [r4, #0xb]
	adds r0, r4, #0
	adds r0, #0xaa
	strb r2, [r0]
	adds r0, r6, #0
	movs r1, #3
	movs r2, #1
	bl sub_8047430
_0805119C:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080511A4: .4byte 0x080CC6B0

	.thumb
sub_80511A8: @ 0x080511A8
	push {lr}
	bl sub_804F604
	pop {r0}
	bx r0
	.align 2, 0

	.thumb
sub_80511B4: @ 0x080511B4
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	adds r5, #0xa0
	adds r0, r5, #0
	movs r1, #0
	bl sub_800378C
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0
	movs r3, #1
	bl sub_08049574
	cmp r0, #0
	beq _080511F8
	ldr r1, _08051200
	adds r0, r4, #0
	movs r2, #1
	bl sub_8049008
	adds r0, r4, #0
	movs r1, #2
	movs r2, #1
	bl sub_8047430
	adds r0, r5, #0
	movs r1, #1
	bl sub_80037F4
	adds r1, r4, #0
	adds r1, #0x6a
	movs r0, #1
	strb r0, [r1]
_080511F8:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08051200: .4byte gPlayerShadowPos

	.thumb
sub_8051204: @ 0x08051204
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	adds r6, r0, #0
	adds r5, r1, #0
	ldr r0, _080512AC
	mov sl, r0
	adds r7, r5, #0
	adds r7, #0x94
	ldr r0, [r7]
	movs r1, #0x9c
	adds r1, r1, r5
	mov r8, r1
	ldr r1, [r1]
	ldr r2, _080512B0
	mov sb, r2
	ldr r2, [r2]
	mov r4, sb
	ldr r3, [r4, #8]
	bl sub_8003A6C
	mov r1, sl
	strb r0, [r1]
	adds r1, r6, #0
	adds r1, #0x5e
	ldrh r0, [r1]
	cmp r0, #0
	bne _080512D0
	adds r0, r5, #0
	movs r1, #0x32
	movs r2, #1
	bl sub_80496B0
	cmp r0, #0
	beq _08051296
	ldr r0, _080512B4
	ldrb r0, [r0]
	cmp r0, #0
	bne _08051296
	ldr r0, _080512B8
	ldrb r0, [r0]
	cmp r0, #0
	bne _08051296
	ldr r0, _080512BC
	ldrb r0, [r0, #0x13]
	cmp r0, #0
	beq _08051296
	ldr r0, _080512C0
	ldrb r0, [r0]
	cmp r0, #0
	bne _08051296
	ldr r1, _080512C4
	ldr r0, _080512C8
	ldrh r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r1
	cmp r0, #0
	bne _08051296
	ldr r1, _080512CC
	ldrh r0, [r5]
	adds r0, r0, r1
	ldrb r0, [r0]
	ldrb r1, [r5, #0xb]
	movs r2, #2
	bl sub_80192D4
_08051296:
	movs r1, #0
	strb r1, [r5, #0xb]
	adds r0, r5, #0
	adds r0, #0xaa
	strb r1, [r0]
	adds r0, r6, #0
	movs r1, #3
	movs r2, #1
	bl sub_8047430
	b _080513FE
	.align 2, 0
_080512AC: .4byte 0x03006EF0
_080512B0: .4byte gPlayerShadowPos
_080512B4: .4byte 0x0200108D
_080512B8: .4byte 0x0200108E
_080512BC: .4byte gGameStatus
_080512C0: .4byte byte_203F99C
_080512C4: .4byte gPlayerStateSettings
_080512C8: .4byte gPlayerState
_080512CC: .4byte 0x080CC6B0
_080512D0:
	subs r0, #1
	strh r0, [r1]
	ldr r0, [r6, #0x2c]
	add r1, sp, #0xc
	add r2, sp, #0x10
	add r3, sp, #0x14
	bl sub_80038C4
	ldr r0, [r7]
	ldr r1, [sp, #0xc]
	adds r0, r0, r1
	str r0, [sp]
	adds r0, r5, #0
	adds r0, #0x98
	ldr r0, [r0]
	str r0, [sp, #4]
	mov r2, r8
	ldr r0, [r2]
	ldr r1, [sp, #0x14]
	adds r0, r0, r1
	str r0, [sp, #8]
	adds r0, r5, #0
	adds r0, #0xa2
	ldrb r1, [r0]
	adds r0, #1
	ldrb r0, [r0]
	subs r0, #1
	cmp r1, r0
	bge _08051366
	adds r0, r6, #0
	mov r1, sp
	movs r2, #1
	bl sub_080490BC
	cmp r0, #0
	bne _08051358
	adds r0, r6, #0
	bl sub_80497C0
	cmp r0, #0
	bne _08051358
	ldr r0, [sp]
	str r0, [r7]
	ldr r1, [sp, #8]
	mov r3, r8
	str r1, [r3]
	asrs r0, r0, #0x10
	strh r0, [r5, #2]
	ldr r2, _08051354
	ldr r0, [sp, #4]
	adds r1, r1, r0
	asrs r1, r1, #0x10
	ldrh r0, [r2]
	subs r0, r0, r1
	strh r0, [r5, #4]
	adds r0, r5, #0
	adds r0, #0x38
	ldrb r2, [r0]
	adds r0, r6, #0
	movs r1, #2
	bl sub_08047958
	adds r0, r6, #0
	bl sub_8049810
	b _0805138A
	.align 2, 0
_08051354: .4byte gMapPixelSizeY
_08051358:
	ldr r0, [r6, #0x2c]
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_8003884
	b _0805138A
_08051366:
	adds r0, r5, #0
	adds r0, #0xb7
	ldrb r0, [r0]
	cmp r0, #0
	beq _0805138A
	adds r0, r6, #0
	mov r1, sb
	movs r2, #1
	bl sub_8049008
	adds r0, r5, #0
	adds r0, #0xa0
	ldr r2, [r6, #0x28]
	ldrh r1, [r2, #4]
	ldrb r3, [r2, #8]
	movs r2, #0
	bl sub_8003368
_0805138A:
	adds r0, r5, #0
	adds r0, #0x48
	ldrb r0, [r0]
	cmp r0, #0
	beq _080513FE
	adds r0, r5, #0
	adds r0, #0xa0
	bl sub_8003770
	cmp r0, #0
	beq _080513FE
	adds r0, r5, #0
	adds r0, #0xa5
	ldrb r0, [r0]
	cmp r0, #9
	bne _080513FE
	ldr r4, _080513E8
	ldrb r0, [r4]
	cmp r0, #0
	beq _080513F8
	ldr r0, [r6, #0x58]
	bl audio_halt_fx
	ldrb r0, [r4]
	cmp r0, #0
	beq _080513F8
	ldr r2, _080513EC
	movs r4, #0x8f
	lsls r4, r4, #3
	adds r0, r2, r4
	ldrh r0, [r0]
	ldr r3, _080513F0
	adds r4, #2
	adds r1, r2, r4
	ldrb r3, [r3]
	adds r1, r1, r3
	ldrb r1, [r1]
	ldr r3, _080513F4
	adds r2, r2, r3
	ldr r2, [r2]
	movs r4, #0x80
	lsls r4, r4, #9
	adds r2, r2, r4
	bl audio_new_fx
	b _080513FC
	.align 2, 0
_080513E8: .4byte gCanPlaySfx
_080513EC: .4byte 0x080CE440
_080513F0: .4byte gSfxVolume
_080513F4: .4byte 0x0000047C
_080513F8:
	movs r0, #1
	rsbs r0, r0, #0
_080513FC:
	str r0, [r6, #0x58]
_080513FE:
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	.thumb
sub_8051410: @ 0x08051410
	push {lr}
	adds r3, r0, #0
	adds r2, r3, #0
	adds r2, #0x5e
	ldrh r0, [r2]
	cmp r0, #0
	bne _08051450
	ldrh r2, [r1]
	cmp r2, #0xb3
	beq _0805142E
	cmp r2, #0xbf
	beq _0805143A
	.2byte 0xEE00, 0xEE00
	b _08051454
_0805142E:
	adds r0, r3, #0
	movs r1, #0
	movs r2, #1
	bl sub_8047430
	b _08051454
_0805143A:
	ldrh r1, [r1, #0x1e]
	ldr r0, _0805144C
	ldr r0, [r0]
	adds r0, r0, r1
	ldrb r0, [r0]
	bl sub_804888C
	b _08051454
	.align 2, 0
_0805144C: .4byte 0x0203DFB8
_08051450:
	subs r0, #1
	strh r0, [r2]
_08051454:
	pop {r0}
	bx r0

    .thumb
sub_8051458: @ 0x08051458
	push {lr}
	adds r3, r0, #0
	adds r2, r1, #0
	adds r0, r2, #0
	adds r0, #0x48
	ldrb r0, [r0]
	cmp r0, #0
	beq _0805148C
	adds r0, r3, #0
	adds r0, #0x65
	ldrb r0, [r0]
	cmp r0, #1
	bne _0805148C
	ldr r0, _08051490
	ldrb r0, [r0]
	cmp r0, #0
	bne _0805148C
	ldr r0, _08051494
	adds r1, #0x64
	adds r2, #0x70
	bl VecFX_PointInBox
	cmp r0, #0
	beq _0805148C
	bl sub_801990C
_0805148C:
	pop {r0}
	bx r0
	.align 2, 0
_08051490: .4byte 0x03006EF1
_08051494: .4byte gPlayerPos

	.thumb
sub_8051498: @ 0x08051498
	push {lr}
	bl sub_804F604
	pop {r0}
	bx r0
	.align 2, 0

	.thumb
nullsub_11: @ 0x080514A4
	bx lr
	.align 2, 0

	.thumb
sub_80514A8: @ 0x080514A8
	push {r4, lr}
	adds r4, r0, #0
	adds r0, r1, #0
	adds r0, #0xa0
	bl sub_8003770
	cmp r0, #0
	beq _080514C2
	adds r0, r4, #0
	movs r1, #2
	movs r2, #1
	bl sub_8047430
_080514C2:
	pop {r4}
	pop {r0}
	bx r0

	.thumb
sub_80514C8: @ 0x080514C8
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x18
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, [r4, #0x2c]
	add r1, sp, #0xc
	add r2, sp, #0x10
	add r3, sp, #0x14
	bl sub_80038C4
	movs r0, #0x94
	adds r0, r0, r5
	mov r8, r0
	ldr r0, [r0]
	ldr r1, [sp, #0xc]
	adds r0, r0, r1
	str r0, [sp]
	adds r7, r5, #0
	adds r7, #0x98
	ldr r0, [r7]
	str r0, [sp, #4]
	adds r6, r5, #0
	adds r6, #0x9c
	ldr r0, [r6]
	ldr r1, [sp, #0x14]
	adds r0, r0, r1
	str r0, [sp, #8]
	adds r0, r4, #0
	bl sub_80497C0
	cmp r0, #0
	beq _080515DC
	adds r0, r5, #0
	bl sub_804995C
	adds r0, r4, #0
	movs r1, #3
	movs r2, #1
	bl sub_8047430
	ldr r1, _08051538
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bge _08051540
	ldr r0, _0805153C
	ldrb r0, [r0, #0xe]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _08051554
	b _080515C0
	.align 2, 0
_08051538: .4byte 0x0200108C
_0805153C: .4byte gGameStatus
_08051540:
	ldr r0, _080515B8
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, #0xe
	adds r1, r1, r0
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bne _080515C0
_08051554:
	adds r0, r4, #0
	adds r0, #0x67
	ldrb r1, [r0]
	adds r7, r5, #0
	adds r7, #0x94
	movs r2, #0x98
	adds r2, r2, r5
	mov sb, r2
	movs r3, #0x9c
	adds r3, r3, r5
	mov r8, r3
	adds r6, r0, #0
	cmp r1, #0xff
	beq _0805157C
_08051570:
	adds r0, r4, #0
	bl sub_08048F5C
	ldrb r0, [r6]
	cmp r0, #0xff
	bne _08051570
_0805157C:
	ldr r1, [r4, #0x1c]
	str r1, [r7]
	ldr r0, [r4, #0x24]
	mov r2, r8
	str r0, [r2]
	str r1, [r4, #4]
	str r0, [r4, #0xc]
	movs r3, #2
	ldrsh r0, [r7, r3]
	strh r0, [r5, #2]
	ldr r2, _080515BC
	mov r0, r8
	ldr r1, [r0]
	mov r3, sb
	ldr r0, [r3]
	adds r1, r1, r0
	asrs r1, r1, #0x10
	ldrh r0, [r2]
	subs r0, r0, r1
	strh r0, [r5, #4]
	adds r0, r5, #0
	bl sub_804995C
	adds r0, r4, #0
	movs r1, #3
	movs r2, #1
	bl sub_8047430
	b _080515CA
	.align 2, 0
_080515B8: .4byte gGameStatus
_080515BC: .4byte gMapPixelSizeY
_080515C0:
	adds r0, r4, #0
	bl sub_08048F5C
	adds r6, r4, #0
	adds r6, #0x67
_080515CA:
	ldrb r0, [r6]
	cmp r0, #0xff
	beq _080515FA
	adds r0, r4, #0
	movs r1, #2
	movs r2, #0
	bl sub_08047958
	b _080515FA
_080515DC:
	ldr r0, [sp]
	mov r1, r8
	str r0, [r1]
	ldr r2, [sp, #4]
	str r2, [r7]
	ldr r1, [sp, #8]
	str r1, [r6]
	asrs r0, r0, #0x10
	strh r0, [r5, #2]
	ldr r0, _08051608
	adds r1, r1, r2
	asrs r1, r1, #0x10
	ldrh r0, [r0]
	subs r0, r0, r1
	strh r0, [r5, #4]
_080515FA:
	add sp, #0x18
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08051608: .4byte gMapPixelSizeY

	.thumb
sub_805160C: @ 0x0805160C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	adds r0, r5, #0
	adds r0, #0xa0
	bl sub_8003770
	cmp r0, #0
	beq _08051666
	adds r6, r4, #0
	adds r6, #0x67
	ldrb r0, [r6]
	cmp r0, #0xff
	bne _08051640
	movs r0, #0x35
	bl sub_0804200C
	movs r0, #0
	bl sub_8016BD0
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0
	bl sub_08047958
	b _08051666
_08051640:
	adds r0, r5, #0
	bl sub_804995C
	adds r0, r4, #0
	movs r1, #4
	movs r2, #1
	bl sub_8047430
	ldr r0, _0805166C
	ldr r2, [r0, #0x48]
	ldrb r1, [r6]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r2, r2, r0
	ldrh r1, [r2, #0xa]
	adds r0, r4, #0
	adds r0, #0x5e
	strh r1, [r0]
_08051666:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0805166C: .4byte gRoomHeader

	.thumb
sub_8051670: @ 0x08051670
	push {r4, lr}
	adds r4, r0, #0
	adds r2, r4, #0
	adds r2, #0x5e
	ldrh r0, [r2]
	cmp r0, #0
	bne _0805169A
	adds r0, r1, #0
	bl sub_804995C
	adds r0, r4, #0
	movs r1, #5
	movs r2, #1
	bl sub_8047430
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	bl sub_08047958
	b _0805169E
_0805169A:
	subs r0, #1
	strh r0, [r2]
_0805169E:
	pop {r4}
	pop {r0}
	bx r0

	.thumb
sub_80516A4: @ 0x080516A4
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	adds r4, r6, #0
	adds r4, #0x46
	movs r1, #0
	ldrsh r0, [r4, r1]
	cmp r0, #3
	bgt _080516E8
	movs r0, #0x35
	bl sub_0804200C
	movs r0, #1
	bl sub_8016BD0
	ldr r0, [r5, #0x2c]
	movs r1, #0
	movs r2, #0
	bl sub_800386C
	adds r0, r6, #0
	bl sub_804995C
	adds r0, r5, #0
	movs r1, #7
	movs r2, #1
	bl sub_8047430
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0
	bl sub_08047958
	b _0805172A
_080516E8:
	movs r1, #0
	ldrsh r0, [r4, r1]
	movs r1, #3
	bl sub_8003934
	adds r1, r0, #0
	asrs r1, r1, #8
	movs r0, #0x35
	bl sub_08040AD0
	movs r1, #0
	ldrsh r0, [r4, r1]
	movs r1, #3
	bl sub_8003934
	adds r1, r0, #0
	asrs r1, r1, #8
	movs r0, #0x35
	bl sub_08040204
	adds r0, r6, #0
	bl sub_804995C
	adds r0, r5, #0
	movs r1, #5
	movs r2, #1
	bl sub_8047430
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0
	bl sub_08047958
_0805172A:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	.thumb
sub_8051730: @ 0x08051730
	push {r4, lr}
	adds r4, r0, #0
	adds r2, r1, #0
	ldr r1, _08051764
	ldr r0, _08051768
	ldrh r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #4
	ands r0, r1
	cmp r0, #0
	bne _0805175C
	adds r0, r2, #0
	bl sub_804995C
	adds r0, r4, #0
	movs r1, #8
	movs r2, #1
	bl sub_8047430
_0805175C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08051764: .4byte gPlayerStateSettings
_08051768: .4byte gPlayerState

	.thumb
sub_805176C: @ 0x0805176C
	push {r4, lr}
	adds r4, r0, #0
	adds r0, r1, #0
	adds r0, #0xa0
	bl sub_8003770
	cmp r0, #0
	beq _0805178E
	adds r0, r4, #0
	movs r1, #0
	bl sub_8049038
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	bl sub_8047430
_0805178E:
	pop {r4}
	pop {r0}
	bx r0

    .thumb
sub_8051794: @ 0x08051794
	push {r4, lr}
	sub sp, #4
	adds r4, r1, #0
	ldr r0, _080517D0
	ldrb r0, [r0]
	cmp r0, #0
	bne _08051804
	ldr r0, _080517D4
	ldrb r0, [r0]
	cmp r0, #0
	bne _08051804
	ldr r0, _080517D8
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	bne _08051804
	movs r0, #0x1a
	mov r1, sp
	bl sub_802C1DC
	cmp r0, #0
	beq _080517E0
	ldr r0, _080517DC
	ldrb r0, [r0, #0x1a]
	mov r1, sp
	ldrb r1, [r1]
	movs r2, #2
	bl sub_80192D4
	b _08051804
	.align 2, 0
_080517D0: .4byte byte_203F99C
_080517D4: .4byte 0x03006EF1
_080517D8: .4byte 0x03003578
_080517DC: .4byte 0x080CC6B0
_080517E0:
	ldr r0, _0805180C
	adds r1, r4, #0
	adds r1, #0x64
	adds r2, r4, #0
	adds r2, #0x70
	bl VecFX_PointInBox
	cmp r0, #0
	beq _08051804
	ldr r1, _08051810
	ldrh r0, [r4]
	adds r0, r0, r1
	ldrb r0, [r0]
	movs r1, #1
	rsbs r1, r1, #0
	movs r2, #2
	bl sub_80192D4
_08051804:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805180C: .4byte gPlayerPos
_08051810: .4byte 0x080CC6B0

	.thumb
sub_8051814: @ 0x08051814
	push {r4, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x5e
	ldrh r0, [r1]
	cmp r0, #0
	bne _08051854
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_08049574
	cmp r0, #0
	beq _08051858
	ldr r0, _0805184C
	ldr r1, _08051850
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	beq _08051858
	adds r0, r4, #0
	movs r1, #1
	movs r2, #1
	bl sub_8047430
	b _08051858
	.align 2, 0
_0805184C: .4byte 0x0203DFD4
_08051850: .4byte 0x0203DFD5
_08051854:
	subs r0, #1
	strh r0, [r1]
_08051858:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	.thumb
sub_8051860: @ 0x08051860
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	mov sb, r0
	mov r8, r1
	ldr r0, _080518AC
	ldr r1, _080518B0
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	beq _080518D8
	ldr r2, _080518B4
	mov r5, r8
	adds r5, #0x94
	ldr r1, [r2]
	ldr r0, [r5]
	subs r7, r1, r0
	mov r0, r8
	adds r0, #0x9c
	ldr r1, [r2, #8]
	ldr r0, [r0]
	subs r6, r1, r0
	adds r0, r7, #0
	bl Abs
	adds r4, r0, #0
	adds r0, r6, #0
	bl Abs
	cmp r4, r0
	bls _080518B8
	adds r0, r6, #0
	adds r1, r7, #0
	bl sub_80039AC
	b _080518C0
	.align 2, 0
_080518AC: .4byte 0x0203DFD4
_080518B0: .4byte 0x0203DFD5
_080518B4: .4byte gPlayerPos
_080518B8:
	adds r0, r7, #0
	adds r1, r6, #0
	bl sub_80039B4
_080518C0:
	adds r2, r0, #0
	mov r0, r8
	ldrb r3, [r0, #8]
	movs r0, #8
	adds r1, r5, #0
	bl sub_802D888
	mov r0, sb
	movs r1, #0
	movs r2, #1
	bl sub_8047430
_080518D8:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	.thumb
nullsub_12: @ 0x080518E4
	bx lr
	.align 2, 0

	.thumb
sub_80518E8: @ 0x080518E8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	adds r6, r1, #0
	ldr r0, _0805197C
	ldrb r2, [r0]
	cmp r2, #0
	beq _08051990
	adds r5, r6, #0
	adds r5, #0x94
	ldr r2, _08051980
	ldr r1, [r2]
	ldr r0, [r1]
	mov ip, r0
	adds r0, #0x94
	ldr r0, [r0]
	str r0, [r5]
	adds r4, r6, #0
	adds r4, #0x98
	mov r0, ip
	adds r0, #0x98
	ldr r0, [r0]
	str r0, [r4]
	adds r3, r6, #0
	adds r3, #0x9c
	mov r0, ip
	adds r0, #0x9c
	ldr r0, [r0]
	ldr r7, _08051984
	adds r0, r0, r7
	str r0, [r3]
	mov r7, ip
	ldrh r0, [r7, #6]
	adds r0, #1
	strh r0, [r6, #6]
	ldr r0, [r1, #0x54]
	mov r7, r8
	str r0, [r7, #0x54]
	ldr r0, [r1]
	ldrb r0, [r0, #9]
	strb r0, [r6, #9]
	ldr r0, [r2]
	ldr r0, [r0]
	ldrb r0, [r0, #8]
	strb r0, [r6, #8]
	movs r1, #2
	ldrsh r0, [r5, r1]
	strh r0, [r6, #2]
	ldr r2, _08051988
	ldr r1, [r3]
	ldr r0, [r4]
	adds r1, r1, r0
	asrs r1, r1, #0x10
	ldrh r0, [r2]
	subs r0, r0, r1
	strh r0, [r6, #4]
	mov r0, r8
	movs r1, #2
	movs r2, #0
	bl sub_08047958
	adds r1, r6, #0
	adds r1, #0x48
	ldrb r0, [r1]
	cmp r0, #0
	bne _080519A8
	movs r0, #1
	strb r0, [r1]
	ldr r1, _0805198C
	ldrb r0, [r1]
	adds r0, #1
	b _080519A6
	.align 2, 0
_0805197C: .4byte 0x0203F8D9
_08051980: .4byte 0x0203F8B4
_08051984: .4byte 0xFFFF0000
_08051988: .4byte gMapPixelSizeY
_0805198C: .4byte 0x0203DFE4
_08051990:
	adds r1, r6, #0
	adds r1, #0x48
	ldrb r0, [r1]
	cmp r0, #0
	beq _080519A8
	strb r2, [r1]
	ldr r1, _080519B4
	ldrb r0, [r1]
	cmp r0, #0
	beq _080519A8
	subs r0, #1
_080519A6:
	strb r0, [r1]
_080519A8:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080519B4: .4byte 0x0203DFE4

    .thumb
sub_80519B8: @ 0x080519B8
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r0, r4, #0
	adds r0, #0x48
	ldrb r0, [r0]
	cmp r0, #0
	beq _08051A54
	ldr r0, _08051A5C
	ldrb r0, [r0]
	cmp r0, #0
	bne _08051A54
	adds r6, r4, #0
	adds r6, #0x94
	ldr r1, _08051A60
	ldr r2, _08051A64
	adds r0, r6, #0
	bl VecFX_PointInBox
	cmp r0, #0
	beq _08051A54
	adds r0, r5, #0
	adds r0, #0x65
	ldrb r0, [r0]
	cmp r0, #1
	bne _08051A54
	ldr r1, _08051A68
	ldrh r0, [r4]
	adds r0, r0, r1
	ldrb r0, [r0]
	movs r1, #1
	rsbs r1, r1, #0
	movs r2, #2
	bl sub_80192D4
	ldr r0, [r5, #0x1c]
	str r0, [r6]
	adds r1, r4, #0
	adds r1, #0x9c
	ldr r0, [r5, #0x24]
	str r0, [r1]
	movs r2, #2
	ldrsh r0, [r6, r2]
	strh r0, [r4, #2]
	ldr r2, _08051A6C
	adds r0, r4, #0
	adds r0, #0x98
	ldr r1, [r1]
	ldr r0, [r0]
	adds r1, r1, r0
	asrs r1, r1, #0x10
	ldrh r0, [r2]
	subs r0, r0, r1
	strh r0, [r4, #4]
	adds r0, r5, #0
	movs r1, #2
	movs r2, #0
	bl sub_08047958
	adds r0, r5, #0
	movs r1, #0
	movs r2, #1
	bl sub_8047430
	adds r0, r4, #0
	adds r0, #0xa0
	ldr r2, [r5, #0x28]
	ldrh r1, [r2, #4]
	ldrb r3, [r2, #8]
	movs r2, #0
	bl sub_8003368
	ldr r0, [r5, #0x2c]
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_8003884
_08051A54:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08051A5C: .4byte 0x03006EF2
_08051A60: .4byte 0x030032E8
_08051A64: .4byte 0x030032F4
_08051A68: .4byte 0x080CC6B0
_08051A6C: .4byte gMapPixelSizeY

	.thumb
sub_8051A70: @ 0x08051A70
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	adds r1, r4, #0
	adds r1, #0x5e
	ldrh r0, [r1]
	cmp r0, #0
	bne _08051AB8
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0
	bl sub_8047430
	adds r0, r5, #0
	adds r0, #0xa0
	ldr r2, [r4, #0x28]
	ldrh r1, [r2, #4]
	ldrb r3, [r2, #8]
	movs r2, #0
	bl sub_8003368
	ldr r0, [r4, #0x2c]
	ldr r1, [r4, #0x28]
	ldr r1, [r1]
	ldr r3, _08051AB4
	ldrb r2, [r5, #0xb]
	lsls r2, r2, #2
	adds r2, r2, r3
	ldr r2, [r2]
	movs r3, #0
	bl sub_8003884
	b _08051ABC
	.align 2, 0
_08051AB4: .4byte dword_80CC290
_08051AB8:
	subs r0, #1
	strh r0, [r1]
_08051ABC:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	.thumb
sub_8051AC4: @ 0x08051AC4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x18
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, [r4, #0x2c]
	add r1, sp, #0xc
	add r2, sp, #0x10
	add r3, sp, #0x14
	bl sub_80038C4
	adds r7, r5, #0
	adds r7, #0x94
	ldr r1, [r7]
	ldr r0, [sp, #0xc]
	adds r2, r1, r0
	str r2, [sp]
	adds r0, r5, #0
	adds r0, #0x98
	ldr r6, [r0]
	str r6, [sp, #4]
	adds r3, r5, #0
	adds r3, #0x9c
	ldr r1, [r3]
	ldr r0, [sp, #0x14]
	adds r1, r1, r0
	str r1, [sp, #8]
	ldr r0, [r4, #0x30]
	cmp r2, r0
	ble _08051B10
	ldr r0, [r4, #0x34]
	cmp r2, r0
	bge _08051B10
	ldr r0, [r4, #0x3c]
	cmp r1, r0
	ble _08051B10
	ldr r0, [r4, #0x38]
	cmp r1, r0
	blt _08051BA4
_08051B10:
	adds r0, r4, #0
	movs r1, #2
	movs r2, #0
	bl sub_8047430
	adds r0, r5, #0
	adds r0, #0xa0
	ldr r2, [r4, #0x28]
	ldrh r1, [r2, #4]
	ldrb r3, [r2, #8]
	movs r2, #0
	bl sub_8003368
	ldr r0, [r4, #0x2c]
	ldr r1, [r4, #0x28]
	ldr r1, [r1]
	ldr r3, _08051B80
	ldrb r2, [r5, #0xb]
	lsls r2, r2, #2
	adds r2, r2, r3
	ldr r2, [r2]
	movs r3, #0
	bl sub_8003884
	ldr r4, _08051B84
	ldrb r0, [r4]
	cmp r0, #0
	beq _08051B50
	ldr r0, _08051B88
	ldr r0, [r0]
	bl audio_halt_fx
_08051B50:
	ldr r5, _08051B88
	ldrb r0, [r4]
	cmp r0, #0
	beq _08051B9C
	ldr r2, _08051B8C
	movs r1, #0xb9
	lsls r1, r1, #3
	adds r0, r2, r1
	ldrh r0, [r0]
	ldr r3, _08051B90
	ldr r4, _08051B94
	adds r1, r2, r4
	ldrb r3, [r3]
	adds r1, r1, r3
	ldrb r1, [r1]
	ldr r3, _08051B98
	adds r2, r2, r3
	ldr r2, [r2]
	movs r4, #0x80
	lsls r4, r4, #9
	adds r2, r2, r4
	bl audio_new_fx
	b _08051BA0
	.align 2, 0
_08051B80: .4byte dword_80CC290
_08051B84: .4byte gCanPlaySfx
_08051B88: .4byte 0x0203F8C8
_08051B8C: .4byte 0x080CE440
_08051B90: .4byte gSfxVolume
_08051B94: .4byte 0x000005CA
_08051B98: .4byte 0x000005CC
_08051B9C:
	movs r0, #1
	rsbs r0, r0, #0
_08051BA0:
	str r0, [r5]
	b _08051BC2
_08051BA4:
	str r2, [r7]
	str r1, [r3]
	asrs r0, r2, #0x10
	strh r0, [r5, #2]
	ldr r0, _08051BCC
	adds r1, r1, r6
	asrs r1, r1, #0x10
	ldrh r0, [r0]
	subs r0, r0, r1
	strh r0, [r5, #4]
	adds r0, r4, #0
	movs r1, #2
	movs r2, #0
	bl sub_08047958
_08051BC2:
	add sp, #0x18
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08051BCC: .4byte gMapPixelSizeY

	.thumb
sub_8051BD0: @ 0x08051BD0
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r6, r4, #0
	adds r6, #0xa0
	adds r0, r6, #0
	bl sub_8003770
	cmp r0, #0
	beq _08051C3C
	adds r1, r4, #0
	adds r1, #0x94
	ldr r0, [r5, #0x1c]
	str r0, [r1]
	adds r2, r4, #0
	adds r2, #0x9c
	ldr r0, [r5, #0x24]
	str r0, [r2]
	movs r3, #2
	ldrsh r0, [r1, r3]
	strh r0, [r4, #2]
	ldr r3, _08051C44
	adds r0, r4, #0
	adds r0, #0x98
	ldr r1, [r2]
	ldr r0, [r0]
	adds r1, r1, r0
	asrs r1, r1, #0x10
	ldrh r0, [r3]
	subs r0, r0, r1
	strh r0, [r4, #4]
	adds r0, r5, #0
	movs r1, #2
	movs r2, #0
	bl sub_08047958
	adds r0, r5, #0
	movs r1, #0
	movs r2, #1
	bl sub_8047430
	ldr r0, [r5, #0x28]
	ldrh r1, [r0, #4]
	ldrb r3, [r0, #8]
	adds r0, r6, #0
	movs r2, #0
	bl sub_8003368
	ldr r0, [r5, #0x2c]
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_8003884
_08051C3C:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08051C44: .4byte gMapPixelSizeY

	.thumb
nullsub_13: @ 0x08051C48
	bx lr
	.align 2, 0

	.thumb
sub_8051C4C: @ 0x08051C4C
	push {lr}
	bl sub_804F604
	pop {r0}
	bx r0
	.align 2, 0

	.thumb
sub_8051C58: @ 0x08051C58
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r1, #0x48
	ldrb r0, [r1]
	cmp r0, #0
	bne _08051C70
	movs r0, #1
	strb r0, [r1]
	ldr r1, _08051CA4
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
_08051C70:
	adds r0, r5, #0
	movs r1, #2
	movs r2, #1
	bl sub_8047430
	ldr r1, _08051CA8
	movs r0, #0
	bl RandomMinMax
	adds r4, r0, #0
	bl sub_8048E0C
	adds r1, r0, #0
	adds r0, r5, #0
	bl sub_8049038
	ldr r0, [r5, #0x2c]
	ldr r1, [r5, #0x28]
	ldr r1, [r1]
	adds r2, r4, #0
	movs r3, #0
	bl sub_8003884
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08051CA4: .4byte 0x0203DFE4
_08051CA8: .4byte 0x01670000

	.thumb
sub_8051CAC: @ 0x08051CAC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x18
	adds r5, r0, #0
	adds r4, r1, #0
	ldr r0, [r5, #0x2c]
	add r1, sp, #0xc
	add r2, sp, #0x10
	add r3, sp, #0x14
	bl sub_80038C4
	movs r0, #0x94
	adds r0, r0, r4
	mov r8, r0
	ldr r0, [r0]
	ldr r1, [sp, #0xc]
	adds r0, r0, r1
	str r0, [sp]
	adds r7, r4, #0
	adds r7, #0x98
	ldr r0, [r7]
	str r0, [sp, #4]
	adds r6, r4, #0
	adds r6, #0x9c
	ldr r0, [r6]
	ldr r1, [sp, #0x14]
	adds r0, r0, r1
	str r0, [sp, #8]
	adds r0, r5, #0
	mov r1, sp
	movs r2, #1
	bl sub_080490BC
	cmp r0, #0
	bne _08051D28
	ldr r0, [sp]
	mov r1, r8
	str r0, [r1]
	ldr r2, [sp, #4]
	str r2, [r7]
	ldr r1, [sp, #8]
	str r1, [r6]
	asrs r0, r0, #0x10
	strh r0, [r4, #2]
	ldr r0, _08051D24
	adds r1, r1, r2
	asrs r1, r1, #0x10
	ldrh r0, [r0]
	subs r0, r0, r1
	strh r0, [r4, #4]
	adds r0, r5, #0
	movs r1, #2
	movs r2, #0
	bl sub_08047958
	adds r0, r5, #0
	bl sub_8049810
	b _08051D32
	.align 2, 0
_08051D24: .4byte gMapPixelSizeY
_08051D28:
	adds r0, r5, #0
	movs r1, #1
	movs r2, #0
	bl sub_8047430
_08051D32:
	ldr r2, _08051D68
	ldr r0, _08051D6C
	ldr r0, [r0]
	adds r0, #0x64
	ldrb r1, [r0]
	lsls r1, r1, #3
	adds r1, r1, r2
	ldr r0, _08051D70
	ldrb r0, [r0]
	ldr r1, [r1]
	lsls r0, r0, #4
	adds r0, r0, r1
	ldr r1, [r0]
	ldr r0, _08051D74
	cmp r1, r0
	beq _08051D5C
	adds r0, r5, #0
	movs r1, #0
	movs r2, #1
	bl sub_8047430
_08051D5C:
	add sp, #0x18
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08051D68: .4byte 0x080B19E0
_08051D6C: .4byte 0x0203F8B4
_08051D70: .4byte 0x0203F8D5
_08051D74: .4byte 0x0804CAB1

    .thumb
sub_8051D78: @ 0x08051D78
	push {r4, lr}
	adds r3, r0, #0
	adds r2, r1, #0
	ldr r0, _08051DAC
	ldrb r0, [r0]
	cmp r0, #0
	beq _08051DA6
	adds r4, r3, #0
	adds r4, #0x5e
	ldrh r0, [r4]
	cmp r0, #0
	bne _08051DA6
	ldr r0, _08051DB0
	adds r1, #0x64
	adds r2, #0x70
	bl VecFX_PointInBox
	cmp r0, #0
	beq _08051DA6
	bl sub_801990C
	movs r0, #0x3c
	strh r0, [r4]
_08051DA6:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08051DAC: .4byte 0x0203F8DA
_08051DB0: .4byte gPlayerPos

	.thumb
sub_8051DB4: @ 0x08051DB4
	push {r4, r5, lr}
	mov ip, r1
	ldr r1, _08051DEC
	ldr r1, [r1]
	ldr r4, [r1]
	adds r1, r0, #0
	adds r1, #0x5e
	ldrh r0, [r1]
	cmp r0, #0
	beq _08051DCC
	subs r0, #1
	strh r0, [r1]
_08051DCC:
	ldr r0, _08051DF0
	ldrb r2, [r0]
	cmp r2, #0
	beq _08051DF8
	mov r1, ip
	adds r1, #0x48
	ldrb r0, [r1]
	cmp r0, #0
	bne _08051E76
	movs r0, #1
	strb r0, [r1]
	ldr r1, _08051DF4
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	b _08051E76
	.align 2, 0
_08051DEC: .4byte 0x0203F8B4
_08051DF0: .4byte 0x0203F8DA
_08051DF4: .4byte 0x0203DFE4
_08051DF8:
	mov r1, ip
	adds r1, #0x48
	ldrb r0, [r1]
	cmp r0, #0
	beq _08051E10
	strb r2, [r1]
	ldr r1, _08051E7C
	ldrb r0, [r1]
	cmp r0, #0
	beq _08051E10
	subs r0, #1
	strb r0, [r1]
_08051E10:
	mov r2, ip
	adds r2, #0x94
	adds r0, r4, #0
	adds r0, #0x94
	ldr r0, [r0]
	str r0, [r2]
	mov r3, ip
	adds r3, #0x98
	adds r0, r4, #0
	adds r0, #0x98
	ldr r0, [r0]
	str r0, [r3]
	mov r1, ip
	adds r1, #0x9c
	adds r0, r4, #0
	adds r0, #0x9c
	ldr r0, [r0]
	movs r5, #0x80
	lsls r5, r5, #9
	adds r0, r0, r5
	str r0, [r1]
	ldrh r0, [r4, #6]
	mov r5, ip
	strh r0, [r5, #6]
	ldrb r0, [r4, #9]
	strb r0, [r5, #9]
	ldrb r0, [r4, #8]
	strb r0, [r5, #8]
	ldr r0, [r4, #0x64]
	str r0, [r5, #0x64]
	ldr r0, [r4, #0x68]
	str r0, [r5, #0x68]
	ldr r0, [r4, #0x6c]
	str r0, [r5, #0x6c]
	ldr r0, [r4, #0x70]
	str r0, [r5, #0x70]
	ldr r0, [r4, #0x74]
	str r0, [r5, #0x74]
	ldr r0, [r4, #0x78]
	str r0, [r5, #0x78]
	movs r4, #2
	ldrsh r0, [r2, r4]
	strh r0, [r5, #2]
	ldr r2, _08051E80
	ldr r1, [r1]
	ldr r0, [r3]
	adds r1, r1, r0
	asrs r1, r1, #0x10
	ldrh r0, [r2]
	subs r0, r0, r1
	strh r0, [r5, #4]
_08051E76:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08051E7C: .4byte 0x0203DFE4
_08051E80: .4byte gMapPixelSizeY

    .thumb
sub_8051E84: @ 0x08051E84
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	adds r0, r5, #0
	adds r0, #0x48
	ldrb r0, [r0]
	cmp r0, #0
	beq _08051EE0
	ldr r0, _08051EE8
	ldrb r0, [r0]
	cmp r0, #0
	bne _08051EE0
	adds r0, r4, #0
	adds r0, #0x65
	ldrb r0, [r0]
	cmp r0, #0
	beq _08051EE0
	ldr r0, _08051EEC
	ldr r2, [r4]
	adds r1, r2, #0
	adds r1, #0x64
	adds r2, #0x70
	bl VecFX_PointInBox
	cmp r0, #0
	beq _08051EE0
	ldr r0, _08051EF0
	ldrh r1, [r0, #0xc]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	bne _08051ED6
	ldr r1, _08051EF4
	ldrh r0, [r5]
	adds r0, r0, r1
	ldrb r0, [r0]
	movs r1, #1
	rsbs r1, r1, #0
	movs r2, #2
	bl sub_80192D4
_08051ED6:
	adds r0, r4, #0
	movs r1, #2
	movs r2, #1
	bl sub_8047430
_08051EE0:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08051EE8: .4byte 0x03006EF1
_08051EEC: .4byte gPlayerPos
_08051EF0: .4byte 0x03003578
_08051EF4: .4byte 0x080CC6B0

	.thumb
sub_8051EF8: @ 0x08051EF8
	push {lr}
	bl sub_804F604
	pop {r0}
	bx r0
	.align 2, 0

	.thumb
sub_8051F04: @ 0x08051F04
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	mov sl, r0
	mov r8, r1
	adds r1, #0x48
	ldrb r0, [r1]
	cmp r0, #0
	bne _08051F28
	movs r0, #1
	strb r0, [r1]
	ldr r1, _08051F78
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
_08051F28:
	mov r1, sl
	ldr r0, [r1, #0x2c]
	add r1, sp, #0xc
	add r2, sp, #0x10
	add r3, sp, #0x14
	bl sub_80038C4
	mov r1, sl
	adds r1, #0x5e
	ldrh r0, [r1]
	str r1, [sp, #0x18]
	cmp r0, #0
	bne _08051FA8
	ldr r2, _08051F7C
	movs r3, #0x94
	add r3, r8
	mov sb, r3
	ldr r1, [r2]
	ldr r0, [r3]
	subs r6, r1, r0
	mov r5, r8
	adds r5, #0x9c
	ldr r1, [r2, #8]
	ldr r0, [r5]
	subs r7, r1, r0
	adds r0, r6, #0
	bl Abs
	adds r4, r0, #0
	adds r0, r7, #0
	bl Abs
	cmp r4, r0
	bls _08051F80
	adds r0, r7, #0
	adds r1, r6, #0
	bl sub_80039AC
	b _08051F88
	.align 2, 0
_08051F78: .4byte 0x0203DFE4
_08051F7C: .4byte gPlayerPos
_08051F80:
	adds r0, r6, #0
	adds r1, r7, #0
	bl sub_80039B4
_08051F88:
	adds r2, r0, #0
	mov r1, sl
	ldr r0, [r1, #0x2c]
	ldr r1, [r1, #0x28]
	ldr r1, [r1]
	movs r3, #0
	bl sub_8003884
	mov r3, sl
	ldr r0, [r3, #0x2c]
	bl sub_80038A4
	movs r0, #0x10
	ldr r1, [sp, #0x18]
	strh r0, [r1]
	b _08051FB6
_08051FA8:
	subs r0, #1
	strh r0, [r1]
	movs r3, #0x94
	add r3, r8
	mov sb, r3
	mov r5, r8
	adds r5, #0x9c
_08051FB6:
	mov r0, sb
	ldr r2, [r0]
	ldr r0, [sp, #0xc]
	adds r2, r2, r0
	str r2, [sp]
	mov r4, r8
	adds r4, #0x98
	ldr r3, [r4]
	str r3, [sp, #4]
	ldr r1, [r5]
	ldr r0, [sp, #0x14]
	adds r1, r1, r0
	str r1, [sp, #8]
	mov r0, sb
	str r2, [r0]
	str r3, [r4]
	str r1, [r5]
	asrs r2, r2, #0x10
	mov r0, r8
	strh r2, [r0, #2]
	ldr r0, _08052008
	adds r1, r1, r3
	asrs r1, r1, #0x10
	ldrh r0, [r0]
	subs r0, r0, r1
	mov r1, r8
	strh r0, [r1, #4]
	mov r0, sl
	movs r1, #2
	movs r2, #0
	bl sub_08047958
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08052008: .4byte gMapPixelSizeY

	.thumb
sub_805200C: @ 0x0805200C
	push {lr}
	movs r2, #0
	bl sub_804FA40
	pop {r0}
	bx r0

    .thumb
sub_8052018: @ 0x08052018
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r0, r4, #0
	adds r0, #0x48
	ldrb r0, [r0]
	cmp r0, #0
	beq _0805207E
	ldr r0, _08052084
	ldrb r0, [r0]
	cmp r0, #0
	bne _0805207E
	adds r6, r5, #0
	adds r6, #0x65
	ldrb r0, [r6]
	cmp r0, #0
	beq _0805207E
	ldr r0, _08052088
	adds r1, #0x64
	adds r2, r4, #0
	adds r2, #0x70
	bl VecFX_PointInBox
	cmp r0, #0
	beq _0805207E
	ldr r0, _0805208C
	ldrh r1, [r0, #0xc]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	bne _08052068
	ldr r1, _08052090
	ldrh r0, [r4]
	adds r0, r0, r1
	ldrb r0, [r0]
	movs r1, #1
	rsbs r1, r1, #0
	movs r2, #2
	bl sub_80192D4
_08052068:
	ldr r0, [r5, #0x2c]
	bl sub_800387C
	ldrb r0, [r6]
	cmp r0, #2
	beq _0805207E
	adds r0, r5, #0
	movs r1, #2
	movs r2, #1
	bl sub_8047430
_0805207E:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08052084: .4byte 0x03006EF1
_08052088: .4byte gPlayerPos
_0805208C: .4byte 0x03003578
_08052090: .4byte 0x080CC6B0

	.thumb
sub_8052094: @ 0x08052094
	push {lr}
	bl sub_804F604
	pop {r0}
	bx r0
	.align 2, 0

	.thumb
sub_80520A0: @ 0x080520A0
	push {r4, r5, r6, lr}
	sub sp, #0xc
	adds r5, r0, #0
	adds r4, r1, #0
	adds r1, #0x48
	ldrb r0, [r1]
	cmp r0, #0
	bne _080520BC
	movs r0, #1
	strb r0, [r1]
	ldr r1, _0805210C
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
_080520BC:
	ldr r0, [r5, #0x2c]
	add r2, sp, #4
	add r3, sp, #8
	mov r1, sp
	bl sub_80038C4
	ldr r0, [r5, #0x54]
	ldr r1, [sp, #4]
	adds r0, r0, r1
	str r0, [r5, #0x54]
	asrs r0, r0, #0x10
	strb r0, [r4, #9]
	adds r0, r4, #0
	adds r0, #0x94
	movs r1, #2
	ldrsh r0, [r0, r1]
	strh r0, [r4, #2]
	ldr r3, _08052110
	adds r0, r4, #0
	adds r0, #0x9c
	adds r2, r4, #0
	adds r2, #0x98
	ldr r1, [r0]
	ldr r0, [r2]
	adds r1, r1, r0
	asrs r1, r1, #0x10
	ldrh r0, [r3]
	subs r0, r0, r1
	strh r0, [r4, #4]
	adds r2, #0x24
	ldrb r1, [r4, #9]
	ldr r0, _08052114
	ldr r0, [r0]
	adds r6, r2, #0
	cmp r1, r0
	blt _0805211C
	ldr r1, _08052118
	subs r0, #1
	adds r0, r0, r1
	b _08052120
	.align 2, 0
_0805210C: .4byte 0x0203DFE4
_08052110: .4byte gMapPixelSizeY
_08052114: .4byte 0x080CEBC4
_08052118: .4byte 0x080CEB84
_0805211C:
	ldr r0, _08052164
	adds r0, r1, r0
_08052120:
	ldrb r1, [r0]
	adds r0, r2, #0
	bl sub_80037F4
	adds r0, r5, #0
	movs r1, #1
	movs r2, #0
	bl sub_08047958
	ldr r0, [r5, #0x54]
	cmp r0, #0
	bgt _08052178
	movs r0, #0
	str r0, [r5, #0x54]
	strb r0, [r4, #9]
	ldr r0, [r5, #0x2c]
	bl sub_800387C
	adds r0, r5, #0
	movs r1, #2
	movs r2, #1
	bl sub_8047430
	adds r2, r6, #0
	ldrb r1, [r4, #9]
	ldr r0, _08052168
	ldr r0, [r0]
	cmp r1, r0
	blt _0805216C
	ldr r1, _08052164
	subs r0, #1
	adds r0, r0, r1
	b _08052170
	.align 2, 0
_08052164: .4byte 0x080CEB84
_08052168: .4byte 0x080CEBC4
_0805216C:
	ldr r0, _08052180
	adds r0, r1, r0
_08052170:
	ldrb r1, [r0]
	adds r0, r2, #0
	bl sub_80037F4
_08052178:
	add sp, #0xc
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08052180: .4byte 0x080CEB84

	.thumb
sub_8052184: @ 0x08052184
	push {r4, lr}
	adds r4, r1, #0
	movs r2, #0
	bl sub_804F5E0
	adds r2, r4, #0
	adds r2, #0xbc
	ldrb r1, [r4, #9]
	ldr r0, _080521A4
	ldr r0, [r0]
	cmp r1, r0
	blt _080521AC
	ldr r1, _080521A8
	subs r0, #1
	adds r0, r0, r1
	b _080521B0
	.align 2, 0
_080521A4: .4byte 0x080CEBC4
_080521A8: .4byte 0x080CEB84
_080521AC:
	ldr r0, _080521C0
	adds r0, r1, r0
_080521B0:
	ldrb r1, [r0]
	adds r0, r2, #0
	bl sub_80037F4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080521C0: .4byte 0x080CEB84

    .thumb
sub_80521C4: @ 0x080521C4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r0, r1, #6
	adds r3, r0, #0
	ldr r1, _08052220
	cmp r3, r1
	bhi _08052274
	ldr r4, _08052224
	adds r4, r4, r0
	mov r8, r4
	ldr r7, _08052228
	adds r7, r7, r0
	mov ip, r7
	ldr r4, _0805222C
	adds r4, r4, r0
	mov sl, r4
	ldr r7, _08052230
	adds r6, r0, r7
	mov sb, r1
_080521F8:
	movs r4, #0
	adds r5, r3, #0
	adds r5, #0x40
_080521FE:
	adds r0, r3, r4
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r2, #1
	beq _08052238
	cmp r2, #1
	ble _08052214
	cmp r2, #2
	beq _08052248
	cmp r2, #3
	beq _08052258
_08052214:
	ldr r7, _08052234
	adds r0, r1, r7
	mov r7, r8
	subs r1, r1, r7
	b _0805225E
	.align 2, 0
_08052220: .4byte 0x000007FF
_08052224: .4byte 0xF9FF2000
_08052228: .4byte 0xF9FF1800
_0805222C: .4byte 0xF9FF1000
_08052230: .4byte 0xF9FF0800
_08052234: .4byte 0x0600E000
_08052238:
	ldr r7, _08052244
	adds r0, r1, r7
	mov r7, ip
	subs r1, r1, r7
	b _0805225E
	.align 2, 0
_08052244: .4byte 0x0600E800
_08052248:
	ldr r7, _08052254
	adds r0, r1, r7
	mov r7, sl
	subs r1, r1, r7
	b _0805225E
	.align 2, 0
_08052254: .4byte 0x0600F000
_08052258:
	ldr r7, _08052284
	adds r0, r1, r7
	subs r1, r1, r6
_0805225E:
	ldrh r1, [r1]
	strh r1, [r0]
	adds r0, r4, #2
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0x3a
	bls _080521FE
	lsls r0, r5, #0x10
	lsrs r3, r0, #0x10
	cmp r3, sb
	bls _080521F8
_08052274:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08052284: .4byte 0x0600F800

	.thumb
sub_8052288: @ 0x08052288
	push {r4, r5, lr}
	ldr r2, _080522A0
	ldrb r3, [r2]
	cmp r3, #0
	bne _080522A8
	movs r0, #0x3c
	strb r0, [r2]
	ldr r1, _080522A4
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	b _080522B6
	.align 2, 0
_080522A0: .4byte 0x0203F93C
_080522A4: .4byte 0x0203F93B
_080522A8:
	ldr r0, _080522D4
	ldrb r0, [r0, #0x13]
	ldr r1, _080522D8
	cmp r0, #0
	beq _080522B6
	subs r0, r3, #1
	strb r0, [r2]
_080522B6:
	ldrb r0, [r1]
	cmp r0, #0
	beq _080522BE
	b _080524D2
_080522BE:
	ldr r0, _080522DC
	ldrb r0, [r0]
	cmp r0, #4
	bne _080522C8
	b _080523E0
_080522C8:
	cmp r0, #4
	bgt _080522E0
	cmp r0, #3
	beq _080522FC
	b _080524CE
	.align 2, 0
_080522D4: .4byte gGameStatus
_080522D8: .4byte 0x0203F93B
_080522DC: .4byte 0x0203F93F
_080522E0:
	cmp r0, #8
	ble _080522E6
	b _080524CE
_080522E6:
	cmp r0, #6
	bge _080522EC
	b _080524CE
_080522EC:
	ldr r0, _080522F8
	ldr r0, [r0]
	adds r0, #0x49
	movs r1, #1
	strb r1, [r0]
	b _080524D2
	.align 2, 0
_080522F8: .4byte 0x0203F984
_080522FC:
	ldr r2, _0805234C
	movs r1, #0
	ldr r0, _08052350
	ldr r0, [r0]
	adds r0, #0x76
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _08052312
	movs r1, #1
_08052312:
	strb r1, [r2]
	cmp r1, #0
	beq _0805236C
	ldr r4, _08052354
	ldr r0, _08052358
	ldrb r0, [r0]
	cmp r0, #0
	beq _0805239E
	ldr r2, _0805235C
	movs r1, #0xb2
	lsls r1, r1, #3
	adds r0, r2, r1
	ldrh r0, [r0]
	ldr r3, _08052360
	ldr r5, _08052364
	adds r1, r2, r5
	ldrb r3, [r3]
	adds r1, r1, r3
	ldrb r1, [r1]
	ldr r3, _08052368
	adds r2, r2, r3
	ldr r2, [r2]
	movs r5, #0x80
	lsls r5, r5, #9
	adds r2, r2, r5
	bl audio_new_fx
	b _0805239E
	.align 2, 0
_0805234C: .4byte 0x0203F941
_08052350: .4byte 0x0203F97C
_08052354: .4byte 0x0000013D
_08052358: .4byte gCanPlaySfx
_0805235C: .4byte 0x080CE440
_08052360: .4byte gSfxVolume
_08052364: .4byte 0x00000592
_08052368: .4byte 0x00000594
_0805236C:
	movs r4, #0x9f
	lsls r4, r4, #1
	ldr r0, _080523B8
	ldrb r0, [r0]
	cmp r0, #0
	beq _0805239E
	ldr r2, _080523BC
	movs r1, #0xb1
	lsls r1, r1, #3
	adds r0, r2, r1
	ldrh r0, [r0]
	ldr r3, _080523C0
	ldr r5, _080523C4
	adds r1, r2, r5
	ldrb r3, [r3]
	adds r1, r1, r3
	ldrb r1, [r1]
	ldr r3, _080523C8
	adds r2, r2, r3
	ldr r2, [r2]
	movs r5, #0x80
	lsls r5, r5, #9
	adds r2, r2, r5
	bl audio_new_fx
_0805239E:
	bl sub_80524D8
	ldr r0, _080523CC
	ldrb r0, [r0]
	cmp r0, #0
	beq _080523D0
	cmp r0, #0
	bge _080523B0
	b _080524D2
_080523B0:
	cmp r0, #2
	ble _080523B6
	b _080524D2
_080523B6:
	b _080524BA
	.align 2, 0
_080523B8: .4byte gCanPlaySfx
_080523BC: .4byte 0x080CE440
_080523C0: .4byte gSfxVolume
_080523C4: .4byte 0x0000058A
_080523C8: .4byte 0x0000058C
_080523CC: .4byte 0x0203F940
_080523D0:
	adds r0, r4, #0
	bl sub_0802FEDC
	cmp r0, #0
	bne _080524BA
	.2byte 0xEE00, 0xEE00
	b _080524D2
_080523E0:
	ldr r2, _08052430
	movs r1, #0
	ldr r0, _08052434
	ldr r0, [r0]
	adds r0, #0x76
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _080523F6
	movs r1, #1
_080523F6:
	strb r1, [r2]
	cmp r1, #0
	beq _0805244C
	movs r4, #0xa0
	lsls r4, r4, #1
	ldr r0, _08052438
	ldrb r0, [r0]
	cmp r0, #0
	beq _0805247C
	ldr r2, _0805243C
	movs r1, #0xb2
	lsls r1, r1, #3
	adds r0, r2, r1
	ldrh r0, [r0]
	ldr r3, _08052440
	ldr r5, _08052444
	adds r1, r2, r5
	ldrb r3, [r3]
	adds r1, r1, r3
	ldrb r1, [r1]
	ldr r3, _08052448
	adds r2, r2, r3
	ldr r2, [r2]
	movs r5, #0x80
	lsls r5, r5, #9
	adds r2, r2, r5
	bl audio_new_fx
	b _0805247C
	.align 2, 0
_08052430: .4byte 0x0203F941
_08052434: .4byte 0x0203F97C
_08052438: .4byte gCanPlaySfx
_0805243C: .4byte 0x080CE440
_08052440: .4byte gSfxVolume
_08052444: .4byte 0x00000592
_08052448: .4byte 0x00000594
_0805244C:
	ldr r4, _08052494
	ldr r0, _08052498
	ldrb r0, [r0]
	cmp r0, #0
	beq _0805247C
	ldr r2, _0805249C
	movs r1, #0xb1
	lsls r1, r1, #3
	adds r0, r2, r1
	ldrh r0, [r0]
	ldr r3, _080524A0
	ldr r5, _080524A4
	adds r1, r2, r5
	ldrb r3, [r3]
	adds r1, r1, r3
	ldrb r1, [r1]
	ldr r3, _080524A8
	adds r2, r2, r3
	ldr r2, [r2]
	movs r5, #0x80
	lsls r5, r5, #9
	adds r2, r2, r5
	bl audio_new_fx
_0805247C:
	bl sub_80524D8
	ldr r0, _080524AC
	ldrb r0, [r0]
	cmp r0, #0
	beq _080524B0
	cmp r0, #0
	blt _080524D2
	cmp r0, #2
	bgt _080524D2
	b _080524BA
	.align 2, 0
_08052494: .4byte 0x00000141
_08052498: .4byte gCanPlaySfx
_0805249C: .4byte 0x080CE440
_080524A0: .4byte gSfxVolume
_080524A4: .4byte 0x0000058A
_080524A8: .4byte 0x0000058C
_080524AC: .4byte 0x0203F940
_080524B0:
	adds r0, r4, #0
	bl sub_0802FEDC
	cmp r0, #0
	beq _080524C8
_080524BA:
	ldr r1, _080524C4
	movs r0, #4
	strb r0, [r1]
	b _080524D2
	.align 2, 0
_080524C4: .4byte 0x0203F93D
_080524C8:
	.2byte 0xEE00, 0xEE00
	b _080524D2
_080524CE:
	.2byte 0xEE00, 0xEE00
_080524D2:
	pop {r4, r5}
	pop {r0}
	bx r0

    .thumb
    .global sub_80524D8
sub_80524D8: @ 0x080524D8
	push {r4, lr}
	ldr r0, _080524F8
	ldrb r0, [r0]
	cmp r0, #0
	bne _080524E4
	b _0805278E
_080524E4:
	ldr r0, _080524FC
	ldrb r0, [r0]
	cmp r0, #0xa
	bls _080524EE
	b _0805278E
_080524EE:
	lsls r0, r0, #2
	ldr r1, _08052500
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080524F8: .4byte gIsSlideMiniGame
_080524FC: .4byte 0x0203F93F
_08052500: .4byte 0x08052504
_08052504: @ jump table
	.4byte _08052618 @ case 0
	.4byte _0805278E @ case 1
	.4byte _080526D8 @ case 2
	.4byte _0805278E @ case 3
	.4byte _0805278E @ case 4
	.4byte _0805278E @ case 5
	.4byte _08052530 @ case 6
	.4byte _0805258C @ case 7
	.4byte _080525B0 @ case 8
	.4byte _08052678 @ case 9
	.4byte _08052710 @ case 10
_08052530:
	ldr r0, _0805253C
	ldrb r0, [r0]
	cmp r0, #1
	bls _08052540
	movs r0, #0x32
	b _080525BA
	.align 2, 0
_0805253C: .4byte 0x0203F93D
_08052540:
	movs r4, #0
	ldr r0, _08052554
	ldrb r0, [r0]
	cmp r0, #0
	blt _08052570
	cmp r0, #1
	ble _08052558
	cmp r0, #2
	beq _0805256C
	b _08052570
	.align 2, 0
_08052554: .4byte 0x0203F940
_08052558:
	ldr r0, _08052568
	ldrb r1, [r0]
	movs r0, #0xc
	subs r4, r0, r1
	cmp r4, #0
	bge _08052570
	movs r4, #0
	b _08052570
	.align 2, 0
_08052568: .4byte 0x0203F93A
_0805256C:
	ldr r0, _08052588
	ldrb r4, [r0]
_08052570:
	movs r0, #0x32
	adds r1, r4, #0
	bl sub_08040AD0
	movs r0, #0x32
	adds r1, r4, #0
	bl sub_08040204
	movs r0, #0x32
	bl sub_08041FA4
	b _0805278E
	.align 2, 0
_08052588: .4byte 0x0203F93A
_0805258C:
	ldr r0, _080525A8
	ldrb r0, [r0]
	cmp r0, #1
	bhi _080525B8
	movs r4, #0
	ldr r0, _080525AC
	ldrb r0, [r0]
	cmp r0, #0
	blt _080525FC
	cmp r0, #1
	ble _080525E4
	cmp r0, #2
	bne _080525FC
	b _080525F8
	.align 2, 0
_080525A8: .4byte 0x0203F93D
_080525AC: .4byte 0x0203F940
_080525B0:
	ldr r0, _080525C8
	ldrb r0, [r0]
	cmp r0, #1
	bls _080525CC
_080525B8:
	movs r0, #0x33
_080525BA:
	bl sub_0804200C
	bl sub_8041E58
	bl sub_8063178
	b _0805278E
	.align 2, 0
_080525C8: .4byte 0x0203F93D
_080525CC:
	movs r4, #0
	ldr r0, _080525E0
	ldrb r0, [r0]
	cmp r0, #0
	blt _080525FC
	cmp r0, #1
	ble _080525E4
	cmp r0, #2
	beq _080525F8
	b _080525FC
	.align 2, 0
_080525E0: .4byte 0x0203F940
_080525E4:
	ldr r0, _080525F4
	ldrb r1, [r0]
	movs r0, #0xc
	subs r4, r0, r1
	cmp r4, #0
	bge _080525FC
	movs r4, #0
	b _080525FC
	.align 2, 0
_080525F4: .4byte 0x0203F93A
_080525F8:
	ldr r0, _08052614
	ldrb r4, [r0]
_080525FC:
	movs r0, #0x33
	adds r1, r4, #0
	bl sub_08040AD0
	movs r0, #0x33
	adds r1, r4, #0
	bl sub_08040204
	movs r0, #0x33
	bl sub_08041FA4
	b _0805278E
	.align 2, 0
_08052614: .4byte 0x0203F93A
_08052618:
	ldr r0, _08052628
	ldrb r0, [r0]
	cmp r0, #1
	bls _0805262C
	movs r0, #0xd
	bl sub_0804200C
	b _0805278E
	.align 2, 0
_08052628: .4byte 0x0203F93D
_0805262C:
	movs r4, #0
	ldr r0, _08052640
	ldrb r0, [r0]
	cmp r0, #0
	blt _0805265C
	cmp r0, #1
	ble _08052644
	cmp r0, #2
	beq _08052658
	b _0805265C
	.align 2, 0
_08052640: .4byte 0x0203F940
_08052644:
	ldr r0, _08052654
	ldrb r1, [r0]
	movs r0, #0x14
	subs r4, r0, r1
	cmp r4, #0
	bge _0805265C
	movs r4, #0
	b _0805265C
	.align 2, 0
_08052654: .4byte 0x0203F93A
_08052658:
	ldr r0, _08052674
	ldrb r4, [r0]
_0805265C:
	movs r0, #0xd
	adds r1, r4, #0
	bl sub_08040AD0
	movs r0, #0xd
	adds r1, r4, #0
	bl sub_08040204
	movs r0, #0xd
	bl sub_08041FA4
	b _0805278E
	.align 2, 0
_08052674: .4byte 0x0203F93A
_08052678:
	ldr r0, _08052688
	ldrb r0, [r0]
	cmp r0, #1
	bls _0805268C
	movs r0, #0x34
	bl sub_0804200C
	b _0805278E
	.align 2, 0
_08052688: .4byte 0x0203F93D
_0805268C:
	movs r4, #0
	ldr r0, _080526A0
	ldrb r0, [r0]
	cmp r0, #0
	blt _080526BC
	cmp r0, #1
	ble _080526A4
	cmp r0, #2
	beq _080526B8
	b _080526BC
	.align 2, 0
_080526A0: .4byte 0x0203F940
_080526A4:
	ldr r0, _080526B4
	ldrb r1, [r0]
	movs r0, #0xc
	subs r4, r0, r1
	cmp r4, #0
	bge _080526BC
	movs r4, #0
	b _080526BC
	.align 2, 0
_080526B4: .4byte 0x0203F93A
_080526B8:
	ldr r0, _080526D4
	ldrb r4, [r0]
_080526BC:
	movs r0, #0x34
	adds r1, r4, #0
	bl sub_08040AD0
	movs r0, #0x34
	adds r1, r4, #0
	bl sub_08040204
	movs r0, #0x34
	bl sub_08041FA4
	b _0805278E
	.align 2, 0
_080526D4: .4byte 0x0203F93A
_080526D8:
	ldr r4, _080526F0
	ldr r0, [r4]
	adds r1, r0, #0
	adds r1, #0x56
	ldrb r0, [r1]
	cmp r0, #0
	bne _080526F4
	movs r0, #0x25
	bl sub_0804200C
	b _0805278E
	.align 2, 0
_080526F0: .4byte 0x0203F960
_080526F4:
	ldrb r1, [r1]
	movs r0, #0x25
	bl sub_08040AD0
	ldr r0, [r4]
	adds r0, #0x56
	ldrb r1, [r0]
	movs r0, #0x25
	bl sub_08040204
	movs r0, #0x25
	bl sub_08041FA4
	b _0805278E
_08052710:
	ldr r0, _08052744
	ldrb r1, [r0]
	ldr r0, _08052748
	ldrb r0, [r0]
	adds r4, r1, r0
	ldr r0, _0805274C
	ldrb r0, [r0]
	ldr r1, _08052750
	cmp r0, #1
	bne _08052754
	ldr r0, [r1, #0x1c]
	cmp r4, r0
	bge _08052754
	movs r0, #0x37
	adds r1, r4, #0
	bl sub_08040AD0
	movs r0, #0x37
	adds r1, r4, #0
	bl sub_08040204
	movs r0, #0x37
	bl sub_08041FA4
	b _0805278E
	.align 2, 0
_08052744: .4byte 0x0203E16C
_08052748: .4byte 0x0203F93A
_0805274C: .4byte 0x0203F93D
_08052750: .4byte 0x080CF3B0
_08052754:
	ldr r0, [r1, #0x1c]
	cmp r4, r0
	bne _08052788
	ldr r0, _08052794
	ldrb r0, [r0]
	cmp r0, #0
	beq _08052788
	ldr r2, _08052798
	movs r1, #0xb2
	lsls r1, r1, #3
	adds r0, r2, r1
	ldrh r0, [r0]
	ldr r3, _0805279C
	ldr r4, _080527A0
	adds r1, r2, r4
	ldrb r3, [r3]
	adds r1, r1, r3
	ldrb r1, [r1]
	ldr r3, _080527A4
	adds r2, r2, r3
	ldr r2, [r2]
	movs r4, #0x80
	lsls r4, r4, #9
	adds r2, r2, r4
	bl audio_new_fx
_08052788:
	movs r0, #0x37
	bl sub_0804200C
_0805278E:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08052794: .4byte gCanPlaySfx
_08052798: .4byte 0x080CE440
_0805279C: .4byte gSfxVolume
_080527A0: .4byte 0x00000592
_080527A4: .4byte 0x00000594

    .thumb
sub_80527A8: @ 0x080527A8
	push {r4, lr}
	adds r4, r0, #0
	adds r2, r1, #0
	ldr r0, _080527D0
	ldrb r0, [r0]
	cmp r0, #0
	bne _080527E0
	ldr r0, _080527D4
	ldrb r0, [r0]
	cmp r0, #0
	bne _080527E0
	ldr r0, _080527D8
	movs r1, #1
	movs r2, #1
	bl sub_0800F02C
	ldr r0, _080527DC
	strb r4, [r0]
	b _080527EA
	.align 2, 0
_080527D0: .4byte 0x0203F941
_080527D4: .4byte 0x0203F940
_080527D8: .4byte 0x0203F924
_080527DC: .4byte 0x0203F93D
_080527E0:
	ldr r0, _080527F0
	movs r1, #0
	str r1, [r0]
	ldr r0, _080527F4
	strb r2, [r0]
_080527EA:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080527F0: .4byte 0x0203F928
_080527F4: .4byte 0x0203F93D

    .thumb
sub_80527F8: @ 0x080527F8
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _08052824
	movs r1, #1
	movs r2, #2
	bl sub_0800F02C
	ldr r2, _08052828
	ldr r1, _0805282C
	ldrb r0, [r1]
	strb r0, [r2]
	strb r4, [r1]
	ldr r1, _08052830
	movs r0, #1
	strb r0, [r1]
	movs r0, #1
	bl sub_80528D8
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08052824: .4byte 0x0203F924
_08052828: .4byte 0x0203F93E
_0805282C: .4byte 0x0203F93D
_08052830: .4byte byte_2000F57

    .thumb
sub_8052834: @ 0x08052834
	push {lr}
	adds r2, r0, #0
	ldr r0, _08052854
	ldrb r1, [r0]
	cmp r1, #0
	bne _0805288C
	ldr r0, _08052858
	strb r1, [r0]
	ldr r0, _0805285C
	ldr r0, [r0]
	cmp r0, #0
	beq _08052864
	ldr r0, _08052860
	strb r2, [r0]
	b _08052870
	.align 2, 0
_08052854: .4byte byte_200110C
_08052858: .4byte byte_2000F57
_0805285C: .4byte 0x0203F924
_08052860: .4byte 0x0203F93D
_08052864:
	ldr r2, _08052880
	ldr r1, _08052884
	ldrb r0, [r1]
	strb r0, [r2]
	movs r0, #0xff
	strb r0, [r1]
_08052870:
	ldr r1, _08052888
	movs r0, #0
	str r0, [r1]
	bl sub_80528D8
	movs r0, #1
	b _0805288E
	.align 2, 0
_08052880: .4byte 0x0203F93D
_08052884: .4byte 0x0203F93E
_08052888: .4byte 0x0203F928
_0805288C:
	movs r0, #0
_0805288E:
	pop {r1}
	bx r1
	.align 2, 0

    .thumb
sub_8052894: @ 0x08052894
	push {r4, lr}
	adds r3, r0, #0
	adds r2, r1, #0
	ldr r0, _080528B4
	ldrb r0, [r0]
	cmp r0, #0
	bne _080528CA
	ldr r0, _080528B8
	ldr r1, [r0]
	adds r4, r0, #0
	cmp r1, #0
	beq _080528C0
	ldr r0, _080528BC
	strb r3, [r0]
	b _080528C4
	.align 2, 0
_080528B4: .4byte byte_200110C
_080528B8: .4byte 0x0203F924
_080528BC: .4byte 0x0203F93D
_080528C0:
	ldr r0, _080528D0
	strb r2, [r0]
_080528C4:
	ldr r1, _080528D4
	ldr r0, [r4]
	str r0, [r1]
_080528CA:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080528D0: .4byte 0x0203F93D
_080528D4: .4byte 0x0203F928

    .thumb
    .global sub_80528D8
sub_80528D8: @ 0x080528D8
	push {lr}
	adds r2, r0, #0
	ldr r0, _080528F0
	ldrb r0, [r0]
	cmp r0, #0xa
	bhi _0805295C
	lsls r0, r0, #2
	ldr r1, _080528F4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080528F0: .4byte 0x0203F93F
_080528F4: .4byte 0x080528F8
_080528F8: @ jump table
	.4byte _08052924 @ case 0
	.4byte _0805295C @ case 1
	.4byte _0805295C @ case 2
	.4byte _08052944 @ case 3
	.4byte _08052944 @ case 4
	.4byte _08052924 @ case 5
	.4byte _0805294E @ case 6
	.4byte _0805294E @ case 7
	.4byte _0805294E @ case 8
	.4byte _08052924 @ case 9
	.4byte _08052924 @ case 10
_08052924:
	cmp r2, #0
	beq _08052932
	movs r0, #1
	rsbs r0, r0, #0
	bl sub_80139F0
	b _0805295C
_08052932:
	ldr r0, _08052940
	ldr r0, [r0]
	ldr r0, [r0, #0x60]
	bl sub_80139F0
	b _0805295C
	.align 2, 0
_08052940: .4byte 0x0203F944
_08052944:
	cmp r2, #0
	bne _08052952
	bl sub_8063194
	b _0805295C
_0805294E:
	cmp r2, #0
	beq _08052958
_08052952:
	bl sub_8063188
	b _0805295C
_08052958:
	bl sub_8063194
_0805295C:
	pop {r0}
	bx r0

    .thumb
sub_8052960: @ 0x08052960
	push {lr}
	adds r2, r0, #0
	ldr r0, _08052984
	ldrb r0, [r0]
	cmp r0, #2
	bne _0805297E
	ldr r0, _08052988
	ldrh r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _0805297E
	adds r0, r2, #0
	bl sub_80527F8
_0805297E:
	pop {r0}
	bx r0
	.align 2, 0
_08052984: .4byte 0x0203F940
_08052988: .4byte gKeysPressed

    .thumb
sub_0805298C: @ 0x0805298C
	push {r4, r5, lr}
	sub sp, #8
	ldr r0, _080529A4
	ldrb r0, [r0]
	cmp r0, #1
	beq _080529A8
	cmp r0, #2
	bne _0805299E
	b _08052A9C
_0805299E:
	.2byte 0xEE00, 0xEE00
	b _08052B28
	.align 2, 0
_080529A4: .4byte 0x0203F93F
_080529A8:
	ldr r1, _08052A68
	movs r0, #0xf0
	strh r0, [r1]
	adds r1, #4
	movs r0, #0xa0
	strh r0, [r1]
	adds r1, #4
	ldr r2, _08052A6C
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #2
	ldr r3, _08052A70
	adds r0, r3, #0
	strh r0, [r1]
	ldr r0, _08052A74
	ldr r0, [r0]
	adds r0, #0xa4
	movs r5, #0
	strb r5, [r0]
	movs r2, #0x80
	lsls r2, r2, #0x13
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #6
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _08052A78
	ldr r2, _08052A7C
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #2
	ldr r3, _08052A80
	adds r0, r3, #0
	strh r0, [r1]
	adds r1, #2
	ldr r2, _08052A84
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #2
	movs r3, #0xf8
	lsls r3, r3, #5
	adds r0, r3, #0
	strh r0, [r1]
	ldr r1, _08052A88
	movs r2, #0x80
	lsls r2, r2, #1
	movs r0, #0xaa
	bl DmaFill32
	ldr r1, _08052A8C
	movs r2, #0x80
	lsls r2, r2, #4
	movs r0, #0
	bl DmaFill32
	movs r0, #0xe
	bl sub_08012E90
	movs r0, #0x1c
	str r0, [sp]
	movs r4, #0x20
	str r4, [sp, #4]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_8013A10
	bl EnableBGAlphaBlending
	bl sub_8053604
	ldr r0, _08052A90
	movs r1, #8
	strh r1, [r0]
	adds r0, #4
	strh r1, [r0]
	adds r0, #4
	movs r2, #0
	strh r5, [r0]
	adds r0, #4
	strh r1, [r0]
	subs r0, #0xa
	strh r4, [r0]
	adds r0, #4
	strh r4, [r0]
	adds r0, #4
	strh r4, [r0]
	adds r0, #4
	strh r4, [r0]
	ldr r0, _08052A94
	strb r2, [r0]
	ldr r0, _08052A98
	strh r1, [r0]
	b _08052B24
	.align 2, 0
_08052A68: .4byte 0x04000040
_08052A6C: .4byte 0x00003F3B
_08052A70: .4byte 0x00003F3F
_08052A74: .4byte 0x0203F950
_08052A78: .4byte 0x04000008
_08052A7C: .4byte 0x00001C03
_08052A80: .4byte 0x00001D02
_08052A84: .4byte 0x00001E01
_08052A88: .4byte gOAMBuffer1
_08052A8C: .4byte 0x0600E000
_08052A90: .4byte 0x04000010
_08052A94: .4byte 0x0203F932
_08052A98: .4byte 0x0203F92C
_08052A9C:
	ldr r1, _08052B30
	ldr r2, _08052B34
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #2
	ldr r3, _08052B38
	adds r0, r3, #0
	strh r0, [r1]
	adds r1, #2
	ldr r2, _08052B3C
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #2
	movs r3, #0xf8
	lsls r3, r3, #5
	adds r0, r3, #0
	strh r0, [r1]
	ldr r1, _08052B40
	movs r2, #0x80
	lsls r2, r2, #1
	movs r0, #0xaa
	bl DmaFill32
	ldr r1, _08052B44
	movs r2, #0x80
	lsls r2, r2, #4
	movs r0, #0
	bl DmaFill32
	movs r0, #0x23
	bl sub_08012E90
	movs r0, #0x1c
	str r0, [sp]
	movs r4, #0x20
	str r4, [sp, #4]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_8013A10
	bl EnableBGAlphaBlending
	bl sub_8053630
	ldr r0, _08052B48
	movs r2, #8
	strh r2, [r0]
	adds r0, #4
	strh r2, [r0]
	adds r0, #4
	strh r2, [r0]
	adds r0, #4
	strh r2, [r0]
	subs r0, #0xa
	strh r4, [r0]
	adds r0, #4
	strh r4, [r0]
	adds r0, #4
	strh r4, [r0]
	adds r0, #4
	strh r4, [r0]
	ldr r1, _08052B4C
	movs r0, #0
	strb r0, [r1]
	ldr r0, _08052B50
	strh r2, [r0]
_08052B24:
	ldr r0, _08052B54
	strh r4, [r0]
_08052B28:
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08052B30: .4byte 0x04000008
_08052B34: .4byte 0x00001C03
_08052B38: .4byte 0x00001D02
_08052B3C: .4byte 0x00001E01
_08052B40: .4byte gOAMBuffer1
_08052B44: .4byte 0x0600E000
_08052B48: .4byte 0x04000010
_08052B4C: .4byte 0x0203F932
_08052B50: .4byte 0x0203F92C
_08052B54: .4byte 0x0203F92E

    .thumb
    .global sub_08052B58
sub_08052B58: @ 0x08052B58
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r1, _08052BAC
	movs r0, #1
	strb r0, [r1]
	ldr r6, _08052BB0
	movs r0, #0x30
	movs r1, #4
	movs r2, #3
	bl Alloc
	str r0, [r6]
	ldr r3, _08052BB4
	strb r4, [r3]
	ldr r1, _08052BB8
	strb r5, [r1]
	ldr r2, _08052BBC
	movs r1, #0
	strb r1, [r2]
	ldr r1, _08052BC0
	movs r2, #0
	str r2, [r1]
	ldr r1, _08052BC4
	str r2, [r1]
	adds r0, #0x2d
	strb r2, [r0]
	movs r5, #0
	ldrb r1, [r3]
	cmp r1, #1
	beq _08052BC8
	cmp r1, #2
	beq _08052BD8
	.2byte 0xEE00, 0xEE00
	b _08052BEA
	.align 2, 0
_08052BAC: .4byte byte_20020B3
_08052BB0: .4byte 0x0203F94C
_08052BB4: .4byte 0x0203F93F
_08052BB8: .4byte 0x0203F940
_08052BBC: .4byte 0x0203F941
_08052BC0: .4byte 0x0203F924
_08052BC4: .4byte 0x0203F928
_08052BC8:
	ldr r0, [r6]
	adds r0, #0x2d
	strb r1, [r0]
	ldr r0, [r6]
	adds r0, #0x2d
	ldrb r0, [r0]
	adds r0, #6
	b _08052BE6
_08052BD8:
	ldr r0, [r6]
	adds r0, #0x2d
	strb r1, [r0]
	ldr r0, [r6]
	adds r0, #0x2d
	ldrb r0, [r0]
	adds r0, #3
_08052BE6:
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
_08052BEA:
	ldr r0, _08052C38
	str r5, [r0]
	ldr r4, _08052C3C
	movs r0, #0x1c
	movs r1, #4
	movs r2, #3
	bl Alloc
	str r0, [r4]
	ldr r4, _08052C40
	lsls r0, r5, #4
	movs r1, #4
	movs r2, #3
	bl Alloc
	str r0, [r4]
	ldr r4, _08052C44
	ldr r6, _08052C48
	ldr r0, [r6]
	adds r0, #0x2d
	ldrb r0, [r0]
	lsls r0, r0, #5
	movs r1, #4
	movs r2, #3
	bl Alloc
	str r0, [r4]
	ldr r0, _08052C4C
	ldrb r5, [r0]
	cmp r5, #1
	beq _08052C50
	cmp r5, #2
	beq _08052CF4
	ldr r0, [r6]
	adds r0, #0x2a
	movs r1, #0
	strb r1, [r0]
	b _08052D94
	.align 2, 0
_08052C38: .4byte gMatricesCount
_08052C3C: .4byte 0x0203F920
_08052C40: .4byte gMatrices
_08052C44: .4byte 0x0203F954
_08052C48: .4byte 0x0203F94C
_08052C4C: .4byte 0x0203F93F
_08052C50:
	ldr r4, _08052CDC
	movs r0, #0xac
	movs r1, #4
	movs r2, #3
	bl Alloc
	str r0, [r4]
	ldr r4, _08052CE0
	movs r0, #0xd8
	movs r1, #4
	movs r2, #3
	bl Alloc
	str r0, [r4]
	ldr r4, _08052CE4
	movs r0, #0x40
	movs r1, #4
	movs r2, #3
	bl Alloc
	str r0, [r4]
	ldr r0, [r6]
	adds r0, #0x2a
	movs r1, #2
	strb r1, [r0]
	movs r5, #0
	ldr r0, [r6]
	adds r0, #0x2a
	ldrb r0, [r0]
	cmp r5, r0
	blo _08052C90
	b _08052D94
_08052C90:
	adds r6, r4, #0
	movs r7, #0
_08052C94:
	ldr r0, [r6]
	lsls r4, r5, #5
	adds r0, r4, r0
	movs r1, #0xf0
	lsls r1, r1, #1
	strh r1, [r0, #0x1c]
	str r7, [sp]
	ldr r1, _08052CE8
	adds r1, r5, r1
	ldrb r1, [r1]
	str r1, [sp, #4]
	movs r1, #0x93
	str r1, [sp, #8]
	movs r1, #2
	str r1, [sp, #0xc]
	ldr r1, _08052CEC
	movs r2, #0
	movs r3, #0
	bl SetSprite
	ldr r0, [r6]
	adds r0, r0, r4
	movs r1, #2
	bl SetSpritePriority
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	ldr r0, _08052CF0
	ldr r0, [r0]
	adds r0, #0x2a
	ldrb r0, [r0]
	cmp r5, r0
	blo _08052C94
	b _08052D94
	.align 2, 0
_08052CDC: .4byte 0x0203F950
_08052CE0: .4byte 0x0203F95C
_08052CE4: .4byte 0x0203F958
_08052CE8: .4byte 0x080B1EE8
_08052CEC: .4byte 0x000004B6
_08052CF0: .4byte 0x0203F94C
_08052CF4:
	ldr r4, _08052DDC
	movs r0, #0x58
	movs r1, #4
	movs r2, #3
	bl Alloc
	str r0, [r4]
	ldr r4, _08052DE0
	movs r0, #0x90
	movs r1, #4
	movs r2, #3
	bl Alloc
	str r0, [r4]
	ldr r4, _08052DE4
	movs r0, #0x10
	movs r1, #4
	movs r2, #3
	bl Alloc
	str r0, [r4]
	ldr r4, _08052DE8
	movs r0, #0xf0
	movs r1, #4
	movs r2, #3
	bl Alloc
	str r0, [r4]
	ldr r4, _08052DEC
	movs r0, #0x40
	movs r1, #4
	movs r2, #3
	bl Alloc
	str r0, [r4]
	ldr r0, [r6]
	adds r0, #0x2a
	strb r5, [r0]
	movs r5, #0
	ldr r0, [r6]
	adds r0, #0x2a
	ldrb r0, [r0]
	cmp r5, r0
	bhs _08052D94
	adds r6, r4, #0
	movs r7, #0
_08052D50:
	ldr r0, [r6]
	lsls r4, r5, #5
	adds r0, r4, r0
	movs r1, #0xa0
	lsls r1, r1, #1
	strh r1, [r0, #0x1c]
	str r7, [sp]
	ldr r1, _08052DF0
	adds r1, r5, r1
	ldrb r1, [r1]
	str r1, [sp, #4]
	movs r1, #0x93
	str r1, [sp, #8]
	movs r1, #2
	str r1, [sp, #0xc]
	ldr r1, _08052DF4
	movs r2, #0
	movs r3, #0
	bl SetSprite
	ldr r0, [r6]
	adds r0, r0, r4
	movs r1, #1
	bl SetSpritePriority
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	ldr r0, _08052DF8
	ldr r0, [r0]
	adds r0, #0x2a
	ldrb r0, [r0]
	cmp r5, r0
	blo _08052D50
_08052D94:
	bl sub_0805298C
	ldr r0, _08052DFC
	movs r1, #0
	strb r1, [r0]
	ldr r0, _08052E00
	strb r1, [r0]
	ldr r1, _08052E04
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, _08052DF8
	mov r8, r0
	ldr r0, [r0]
	movs r1, #0
	movs r7, #0
	strh r7, [r0, #0x22]
	strh r7, [r0, #0x24]
	adds r0, #0x29
	strb r1, [r0]
	mov r2, r8
	ldr r0, [r2]
	adds r0, #0x26
	strb r1, [r0]
	ldr r0, [r2]
	adds r0, #0x27
	strb r1, [r0]
	ldr r0, _08052E08
	ldrb r6, [r0]
	cmp r6, #1
	beq _08052E0C
	cmp r6, #2
	bne _08052DD6
	b _080530A8
_08052DD6:
	.2byte 0xEE00, 0xEE00
	b _080532F0
	.align 2, 0
_08052DDC: .4byte 0x0203F960
_08052DE0: .4byte 0x0203F964
_08052DE4: .4byte 0x0203F96C
_08052DE8: .4byte 0x0203F968
_08052DEC: .4byte 0x0203F958
_08052DF0: .4byte 0x080B1FAC
_08052DF4: .4byte 0x000004B6
_08052DF8: .4byte 0x0203F94C
_08052DFC: .4byte 0x0203F93A
_08052E00: .4byte 0x0203F93D
_08052E04: .4byte 0x0203F93E
_08052E08: .4byte 0x0203F93F
_08052E0C:
	ldr r5, _0805306C
	ldr r0, [r5]
	ldr r1, _08053070
	str r7, [sp]
	movs r2, #0x78
	str r2, [sp, #4]
	movs r2, #0xa8
	str r2, [sp, #8]
	movs r4, #2
	str r4, [sp, #0xc]
	movs r2, #0
	movs r3, #0
	bl SetSprite
	ldr r0, [r5]
	movs r1, #2
	bl SetSpritePriority
	mov r1, r8
	ldr r0, [r1]
	ldr r1, _08053074
	str r6, [sp]
	movs r2, #0x86
	str r2, [sp, #4]
	movs r2, #0x50
	str r2, [sp, #8]
	str r4, [sp, #0xc]
	movs r2, #0
	movs r3, #0
	bl SetSprite
	mov r2, r8
	ldr r0, [r2]
	movs r1, #0
	bl SetSpritePriority
	ldr r5, _08053078
	ldr r0, [r5]
	ldr r1, _0805307C
	str r7, [sp]
	movs r2, #0xb4
	str r2, [sp, #4]
	movs r2, #0x37
	str r2, [sp, #8]
	str r4, [sp, #0xc]
	movs r2, #0
	movs r3, #0
	bl SetSprite
	ldr r0, [r5]
	movs r1, #0
	bl SetSpritePriority
	ldr r1, _08053080
	movs r0, #8
	strb r0, [r1]
	ldr r1, _08053084
	movs r0, #0xe
	strb r0, [r1]
	movs r6, #0
	ldr r5, _08053088
	movs r0, #0xbe
	mov sl, r0
	movs r1, #2
	mov sb, r1
	movs r7, #1
_08052E90:
	lsls r4, r6, #3
	adds r4, r4, r6
	lsls r4, r4, #3
	ldr r0, [r5]
	adds r0, r0, r4
	movs r1, #0
	str r1, [sp]
	movs r2, #0xfa
	str r2, [sp, #4]
	mov r1, sl
	str r1, [sp, #8]
	mov r2, sb
	str r2, [sp, #0xc]
	ldr r1, _0805308C
	movs r2, #0
	movs r3, #0
	bl SetSprite
	ldr r0, [r5]
	adds r0, r0, r4
	movs r1, #0
	bl SetSpritePriority
	ldr r0, [r5]
	adds r0, r0, r4
	mov r2, r8
	ldr r1, [r2]
	adds r1, #0x2d
	ldrb r2, [r1]
	adds r2, r2, r6
	movs r1, #1
	bl sub_8003820
	ldr r0, [r5]
	adds r0, r4, r0
	mov r1, sl
	strh r1, [r0, #0x3a]
	adds r0, #0x1c
	str r7, [sp]
	movs r2, #0xfa
	str r2, [sp, #4]
	movs r1, #0x96
	str r1, [sp, #8]
	mov r1, sb
	str r1, [sp, #0xc]
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl SetSprite
	ldr r0, [r5]
	adds r0, r0, r4
	adds r0, #0x1c
	movs r1, #0
	bl sub_800378C
	ldr r0, [r5]
	adds r0, r0, r4
	adds r0, #0x1c
	movs r1, #0
	bl SetSpritePriority
	ldr r0, [r5]
	adds r0, r0, r4
	adds r0, #0x1c
	mov r2, r8
	ldr r1, [r2]
	adds r1, #0x2d
	adds r2, r6, #3
	ldrb r1, [r1]
	adds r2, r2, r1
	movs r1, #1
	bl sub_8003820
	ldr r0, [r5]
	adds r4, r4, r0
	adds r4, #0x2c
	strb r7, [r4]
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #2
	bls _08052E90
	movs r5, #0
	ldr r6, _08053078
_08052F3A:
	lsls r4, r5, #3
	subs r4, r4, r5
	lsls r4, r4, #2
	adds r4, #0x1c
	ldr r0, [r6]
	adds r0, r0, r4
	movs r1, #0
	str r1, [sp]
	movs r1, #0xfa
	str r1, [sp, #4]
	movs r1, #0x56
	str r1, [sp, #8]
	movs r1, #2
	str r1, [sp, #0xc]
	ldr r1, _08053090
	movs r2, #0
	movs r3, #0
	bl SetSprite
	ldr r0, [r6]
	adds r0, r0, r4
	movs r1, #0
	bl SetSpritePriority
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #2
	bls _08052F3A
	movs r6, #0
	ldr r0, _08053094
	ldr r0, [r0]
	adds r0, #0x2d
	ldrb r0, [r0]
	cmp r6, r0
	bhs _08052FFA
	ldr r5, _08053098
	movs r7, #0
	movs r0, #0xaa
	mov r8, r0
_08052F8A:
	lsls r4, r6, #5
	ldr r0, [r5]
	adds r0, r0, r4
	str r7, [sp]
	movs r1, #0xfa
	str r1, [sp, #4]
	mov r1, r8
	str r1, [sp, #8]
	movs r1, #2
	str r1, [sp, #0xc]
	movs r1, #0x8f
	lsls r1, r1, #2
	movs r2, #0
	movs r3, #0
	bl SetSprite
	ldr r0, [r5]
	adds r0, r0, r4
	movs r1, #2
	bl SetSpritePriority
	ldr r0, [r5]
	adds r0, r0, r4
	movs r1, #1
	bl sub_8003808
	ldr r0, [r5]
	adds r0, r0, r4
	movs r1, #1
	adds r2, r6, #0
	bl sub_8003820
	ldr r0, [r5]
	adds r0, r0, r4
	movs r1, #2
	bl sub_800378C
	ldr r0, [r5]
	adds r0, r4, r0
	strb r7, [r0, #0xa]
	ldr r0, [r5]
	adds r0, r4, r0
	mov r2, r8
	strb r2, [r0, #0x1c]
	ldr r0, [r5]
	adds r4, r4, r0
	strb r7, [r4, #0x1d]
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	ldr r0, _08053094
	ldr r0, [r0]
	adds r0, #0x2d
	ldrb r0, [r0]
	cmp r6, r0
	blo _08052F8A
_08052FFA:
	ldr r1, _0805309C
	movs r0, #0x12
	strb r0, [r1]
	ldr r1, _080530A0
	movs r0, #0xd0
	strb r0, [r1]
	ldr r0, _08053094
	ldr r1, [r0]
	movs r3, #0
	movs r4, #0
	movs r0, #0xf0
	lsls r0, r0, #7
	strh r0, [r1, #0x20]
	ldr r2, _08053078
	ldr r0, [r2]
	adds r0, #0x78
	movs r5, #1
	strb r5, [r0]
	ldr r0, [r2]
	adds r0, #0xa0
	strb r3, [r0]
	ldr r0, [r2]
	adds r0, #0xa1
	strb r3, [r0]
	ldr r0, [r2]
	adds r0, #0x9e
	strb r3, [r0]
	ldr r0, [r2]
	adds r1, r0, #0
	adds r1, #0x9c
	strh r4, [r1]
	adds r0, #0x79
	strb r3, [r0]
	ldr r1, [r2]
	adds r4, r1, #0
	adds r4, #0x7a
	movs r0, #0x14
	strh r0, [r4]
	ldr r0, _080530A4
	ldr r0, [r0]
	ldrh r0, [r0]
	adds r1, #0x9f
	strb r0, [r1]
	ldr r0, [r2]
	adds r0, #0xa2
	movs r1, #2
	strb r1, [r0]
	ldr r0, [r2]
	adds r0, #0xa3
	strb r3, [r0]
	ldr r0, [r2]
	adds r0, #0xa7
	strb r3, [r0]
	ldr r0, [r2]
	adds r0, #0xa8
	strb r5, [r0]
	b _080532F0
	.align 2, 0
_0805306C: .4byte 0x0203F920
_08053070: .4byte 0x000004EF
_08053074: .4byte 0x000004B5
_08053078: .4byte 0x0203F950
_0805307C: .4byte 0x000004C5
_08053080: .4byte 0x0203F931
_08053084: .4byte 0x0203F935
_08053088: .4byte 0x0203F95C
_0805308C: .4byte 0x000004B3
_08053090: .4byte 0x00000451
_08053094: .4byte 0x0203F94C
_08053098: .4byte 0x0203F954
_0805309C: .4byte 0x0203F936
_080530A0: .4byte 0x0203F937
_080530A4: .4byte 0x080B1EAC
_080530A8:
	ldr r4, _08053344
	ldr r0, [r4]
	ldr r1, _08053348
	str r7, [sp]
	movs r2, #0x78
	str r2, [sp, #4]
	movs r2, #0xa8
	str r2, [sp, #8]
	str r6, [sp, #0xc]
	movs r2, #0
	movs r3, #0
	bl SetSprite
	ldr r0, [r4]
	movs r1, #1
	bl SetSpritePriority
	mov r1, r8
	ldr r0, [r1]
	ldr r1, _0805334C
	movs r2, #1
	str r2, [sp]
	movs r2, #0x86
	str r2, [sp, #4]
	movs r2, #0x50
	str r2, [sp, #8]
	str r6, [sp, #0xc]
	movs r2, #0
	movs r3, #0
	bl SetSprite
	mov r2, r8
	ldr r0, [r2]
	movs r1, #1
	bl SetSpritePriority
	movs r6, #0
	ldr r7, _08053350
	movs r5, #0
_080530F6:
	lsls r4, r6, #1
	adds r4, r4, r6
	lsls r4, r4, #4
	ldr r0, [r7]
	adds r0, r0, r4
	str r5, [sp]
	movs r1, #0xf0
	str r1, [sp, #4]
	str r1, [sp, #8]
	movs r1, #2
	str r1, [sp, #0xc]
	ldr r1, _08053354
	movs r2, #0
	movs r3, #0
	bl SetSprite
	ldr r0, [r7]
	adds r0, r0, r4
	movs r1, #1
	bl SetSpritePriority
	ldr r0, [r7]
	adds r0, r0, r4
	mov r2, r8
	ldr r1, [r2]
	adds r1, #0x2d
	ldrb r2, [r1]
	adds r2, r2, r6
	movs r1, #1
	bl sub_8003820
	mov r1, r8
	ldr r0, [r1]
	adds r0, #0x2d
	ldrb r0, [r0]
	adds r0, r0, r6
	movs r1, #0
	movs r2, #0xc0
	lsls r2, r2, #2
	bl sub_8025718
	ldr r0, [r7]
	adds r4, r4, r0
	str r5, [r4, #0x1c]
	str r5, [r4, #0x20]
	str r5, [r4, #0x24]
	str r5, [r4, #0x28]
	adds r4, #0x2c
	strb r5, [r4]
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #2
	bls _080530F6
	movs r6, #0
	ldr r5, _08053358
	ldr r3, _0805335C
	adds r4, r3, #4
_0805316A:
	ldr r0, [r5]
	lsls r2, r6, #3
	adds r2, r2, r0
	lsls r1, r6, #1
	adds r1, r1, r6
	lsls r1, r1, #2
	adds r0, r1, r3
	ldr r0, [r0]
	lsls r0, r0, #0x10
	subs r0, #0x8c
	str r0, [r2]
	adds r1, r1, r4
	ldr r0, [r1]
	lsls r0, r0, #0x10
	subs r0, #0x20
	str r0, [r2, #4]
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #1
	bls _0805316A
	movs r6, #0
	ldr r7, _08053360
	ldr r2, _08053364
	mov r8, r2
	movs r0, #4
	add r0, r8
	mov sb, r0
_080531A2:
	lsls r5, r6, #2
	adds r5, r5, r6
	lsls r5, r5, #3
	ldr r0, [r7]
	adds r0, r0, r5
	lsls r4, r6, #1
	adds r4, r4, r6
	lsls r4, r4, #2
	mov r1, r8
	adds r1, #8
	adds r1, r4, r1
	ldr r1, [r1]
	movs r2, #0
	str r2, [sp]
	movs r2, #0xf0
	str r2, [sp, #4]
	str r2, [sp, #8]
	movs r2, #2
	str r2, [sp, #0xc]
	movs r2, #0
	movs r3, #0
	bl SetSprite
	ldr r0, [r7]
	adds r0, r0, r5
	movs r1, #2
	bl SetSpritePriority
	ldr r1, [r7]
	adds r1, r5, r1
	mov r2, r8
	adds r0, r4, r2
	ldr r0, [r0]
	lsls r0, r0, #0x10
	subs r0, #0x8c
	str r0, [r1, #0x1c]
	add r4, sb
	ldr r0, [r4]
	lsls r0, r0, #0x10
	subs r0, #0x20
	str r0, [r1, #0x20]
	adds r1, #0x24
	movs r0, #1
	strb r0, [r1]
	ldr r0, [r7]
	adds r5, r5, r0
	adds r5, #0x25
	movs r0, #3
	strb r0, [r5]
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #5
	bls _080531A2
	movs r6, #0
	ldr r0, _08053368
	ldr r0, [r0]
	adds r0, #0x2d
	ldrb r0, [r0]
	cmp r6, r0
	bhs _08053292
	ldr r5, _0805336C
	movs r7, #0
	movs r0, #0xaa
	mov r8, r0
_08053224:
	lsls r4, r6, #5
	ldr r0, [r5]
	adds r0, r0, r4
	str r7, [sp]
	movs r1, #0xfa
	str r1, [sp, #4]
	mov r1, r8
	str r1, [sp, #8]
	movs r1, #2
	str r1, [sp, #0xc]
	ldr r1, _08053370
	movs r2, #0
	movs r3, #0
	bl SetSprite
	ldr r0, [r5]
	adds r0, r0, r4
	movs r1, #1
	bl SetSpritePriority
	ldr r0, [r5]
	adds r0, r0, r4
	movs r1, #1
	bl sub_8003808
	ldr r0, [r5]
	adds r0, r0, r4
	movs r1, #1
	adds r2, r6, #0
	bl sub_8003820
	ldr r0, [r5]
	adds r0, r0, r4
	movs r1, #2
	bl sub_800378C
	ldr r0, [r5]
	adds r0, r4, r0
	strb r7, [r0, #0xa]
	ldr r0, [r5]
	adds r0, r4, r0
	mov r2, r8
	strb r2, [r0, #0x1c]
	ldr r0, [r5]
	adds r4, r4, r0
	strb r7, [r4, #0x1d]
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	ldr r0, _08053368
	ldr r0, [r0]
	adds r0, #0x2d
	ldrb r0, [r0]
	cmp r6, r0
	blo _08053224
_08053292:
	ldr r1, _08053374
	movs r0, #0x12
	strb r0, [r1]
	ldr r1, _08053378
	movs r0, #0xd0
	strb r0, [r1]
	ldr r0, _08053368
	ldr r1, [r0]
	movs r4, #0
	movs r2, #0
	movs r0, #0xf0
	lsls r0, r0, #7
	strh r0, [r1, #0x20]
	ldr r3, _0805337C
	ldr r0, [r3]
	str r2, [r0, #8]
	movs r1, #0xb4
	lsls r1, r1, #0xf
	str r1, [r0, #0xc]
	str r2, [r0, #0x10]
	str r2, [r0, #0x14]
	ldr r1, _08053380
	ldrb r1, [r1, #4]
	adds r0, #0x55
	strb r1, [r0]
	ldr r0, [r3]
	adds r0, #0x56
	movs r1, #6
	strb r1, [r0]
	ldr r0, [r3]
	adds r1, r0, #0
	adds r1, #0x4e
	strh r2, [r1]
	str r2, [r0, #0x18]
	str r2, [r0, #0x1c]
	str r2, [r0, #0x20]
	str r2, [r0, #0x24]
	adds r0, #0x57
	strb r4, [r0]
	ldr r1, [r3]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r1, #0x28]
	bl sub_8054130
	bl sub_80540E8
_080532F0:
	bl sub_80409DC
	bl sub_8063178
	bl sub_80552CC
	ldr r0, _08053384
	ldrb r6, [r0]
	cmp r6, #1
	bne _08053390
	movs r4, #0x80
	lsls r4, r4, #0x13
	ldrh r0, [r4]
	movs r1, #0x80
	lsls r1, r1, #4
	adds r5, r1, #0
	eors r0, r5
	strh r0, [r4]
	ldr r0, _08053388
	movs r1, #1
	movs r2, #0
	bl sub_8026E48
	ldrh r0, [r4]
	orrs r0, r5
	strh r0, [r4]
	movs r0, #0
	bl SetAlphaBlending
	ldr r2, _0805338C
	ldr r0, [r2]
	adds r0, #0xa5
	movs r1, #0
	strb r1, [r0]
	ldr r0, [r2]
	adds r0, #0xa6
	strb r1, [r0]
	ldr r0, _08053368
	ldr r0, [r0]
	adds r0, #0x28
	strb r6, [r0]
	b _080533A4
	.align 2, 0
_08053344: .4byte 0x0203F920
_08053348: .4byte 0x000004EF
_0805334C: .4byte 0x000004B5
_08053350: .4byte 0x0203F964
_08053354: .4byte 0x0000026E
_08053358: .4byte 0x0203F96C
_0805335C: .4byte 0x080B1EEC
_08053360: .4byte 0x0203F968
_08053364: .4byte 0x080B1F04
_08053368: .4byte 0x0203F94C
_0805336C: .4byte 0x0203F954
_08053370: .4byte 0x0000023F
_08053374: .4byte 0x0203F936
_08053378: .4byte 0x0203F937
_0805337C: .4byte 0x0203F960
_08053380: .4byte 0x080B1F4C
_08053384: .4byte 0x0203F93F
_08053388: .4byte 0x00000FFF
_0805338C: .4byte 0x0203F950
_08053390:
	ldr r0, _080533DC
	movs r1, #1
	movs r2, #0
	bl sub_8026E48
	ldr r0, _080533E0
	ldr r0, [r0]
	adds r0, #0x28
	movs r1, #1
	strb r1, [r0]
_080533A4:
	ldr r1, _080533E4
	ldr r0, _080533E8
	str r0, [r1]
	ldr r1, _080533EC
	ldr r0, _080533F0
	str r0, [r1]
	ldr r1, _080533F4
	ldr r0, _080533F8
	str r0, [r1]
	ldr r1, _080533FC
	movs r0, #1
	strb r0, [r1]
	ldr r0, _08053400
	ldr r0, [r0]
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_8003884
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080533DC: .4byte 0x00000FFF
_080533E0: .4byte 0x0203F94C
_080533E4: .4byte gNullsub_3
_080533E8: .4byte 0x080553DD
_080533EC: .4byte gNullsub_4
_080533F0: .4byte 0x08054F0D
_080533F4: .4byte gNullsub_5
_080533F8: .4byte 0x080552CD
_080533FC: .4byte gIsSlideMiniGame
_08053400: .4byte dword_2000FC8

    .thumb
sub_8053404: @ 0x08053404
	push {r4, lr}
	ldr r1, _080534B0
	ldr r0, [r1]
	ldrh r0, [r0, #0x22]
	adds r4, r1, #0
	cmp r0, #0
	beq _08053454
	cmp r0, #0x78
	bne _0805343A
	ldr r0, _080534B4
	ldrb r0, [r0, #0x13]
	cmp r0, #0
	beq _0805343A
	cmp r0, #1
	bne _08053426
	bl audio_halt_all_fx
_08053426:
	movs r1, #1
	rsbs r1, r1, #0
	movs r0, #1
	movs r2, #0
	bl sub_80192D4
	ldr r0, _080534B8
	ldr r1, [r0]
	movs r0, #1
	strb r0, [r1, #0x10]
_0805343A:
	ldr r2, _080534B0
	ldr r1, [r2]
	ldrh r0, [r1, #0x22]
	subs r0, #1
	strh r0, [r1, #0x22]
	lsls r0, r0, #0x10
	adds r4, r2, #0
	cmp r0, #0
	bne _08053454
	ldr r0, _080534B8
	ldr r1, [r0]
	movs r0, #0
	strb r0, [r1, #0x10]
_08053454:
	ldr r3, [r4]
	adds r0, r3, #0
	adds r0, #0x29
	ldrb r0, [r0]
	cmp r0, #0
	bne _0805346A
	ldrh r1, [r3, #0x24]
	ldr r0, _080534BC
	ldr r2, _080534B8
	cmp r1, r0
	bls _080534A2
_0805346A:
	ldr r1, _080534BC
	adds r0, r1, #0
	ldrh r1, [r3, #0x24]
	adds r0, r0, r1
	strh r0, [r3, #0x24]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _0805347E
	movs r0, #0
	strh r0, [r3, #0x24]
_0805347E:
	ldr r2, _080534B8
	ldr r3, [r2]
	ldr r1, _080534C0
	ldr r0, [r4]
	ldrh r0, [r0, #0x24]
	lsrs r0, r0, #8
	lsls r0, r0, #1
	adds r0, r0, r1
	movs r4, #0
	ldrsh r0, [r0, r4]
	lsls r1, r0, #1
	adds r1, r1, r0
	asrs r1, r1, #8
	movs r4, #0x58
	rsbs r4, r4, #0
	adds r0, r4, #0
	subs r0, r0, r1
	strb r0, [r3, #8]
_080534A2:
	ldr r0, [r2]
	bl RenderSprite
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080534B0: .4byte 0x0203F94C
_080534B4: .4byte gGameStatus
_080534B8: .4byte 0x0203F920
_080534BC: .4byte 0x0000060C
_080534C0: .4byte 0x080B1AE4

	.thumb
sub_80534C4: @ 0x080534C4
	push {r4, lr}
	ldr r4, _08053510
	ldr r1, [r4]
	adds r0, r1, #0
	adds r0, #0xa5
	ldrb r0, [r0]
	cmp r0, #0xef
	bhi _08053514
	cmp r0, #0x3c
	bls _080534E0
	adds r1, #0xa6
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
_080534E0:
	ldr r0, [r4]
	adds r1, r0, #0
	adds r1, #0xa6
	ldrb r0, [r1]
	cmp r0, #0
	beq _08053504
	lsls r0, r0, #8
	movs r1, #0xb4
	lsls r1, r1, #8
	bl sub_8003934
	movs r1, #0xc
	bl CallARM_FX_Mul8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl SetAlphaBlending
_08053504:
	ldr r1, [r4]
	adds r1, #0xa5
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	b _08053548
	.align 2, 0
_08053510: .4byte 0x0203F950
_08053514:
	movs r0, #0xff
	bl sub_0802FEDC
	cmp r0, #0
	beq _08053544
	ldr r0, _08053538
	ldr r0, [r0]
	adds r0, #0x28
	movs r2, #0
	strb r2, [r0]
	ldr r1, _0805353C
	movs r0, #1
	strb r0, [r1]
	ldr r0, _08053540
	strb r2, [r0]
	bl sub_800DE04
	b _08053548
	.align 2, 0
_08053538: .4byte 0x0203F94C
_0805353C: .4byte 0x0203F93D
_08053540: .4byte 0x0200108C
_08053544:
	.2byte 0xEE00, 0xEE00
_08053548:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

    .thumb
sub_8053550: @ 0x08053550
	push {lr}
	movs r0, #0x93
	lsls r0, r0, #1
	bl sub_0802FEDC
	cmp r0, #0
	beq _08053578
	ldr r0, _0805357C
	ldr r0, [r0]
	adds r0, #0x28
	movs r1, #0
	strb r1, [r0]
	ldr r1, _08053580
	movs r0, #2
	strb r0, [r1]
	bl sub_800DE04
	ldr r1, _08053584
	movs r0, #1
	strb r0, [r1]
_08053578:
	pop {r0}
	bx r0
	.align 2, 0
_0805357C: .4byte 0x0203F94C
_08053580: .4byte 0x0200108C
_08053584: .4byte 0x0203F93D

    .thumb
sub_8053588: @ 0x08053588
	push {lr}
	ldr r1, _080535B4
	ldrb r0, [r1]
	cmp r0, #0
	bne _080535D0
	movs r0, #0xd
	strb r0, [r1]
	ldr r1, _080535B8
	ldrb r0, [r1]
	cmp r0, #0
	bne _080535C4
	movs r2, #0x80
	lsls r2, r2, #0x13
	ldrh r1, [r2]
	ldr r0, _080535BC
	ands r0, r1
	strh r0, [r2]
	bl sub_8041E58
	ldr r1, _080535C0
	movs r0, #5
	b _080535D2
	.align 2, 0
_080535B4: .4byte 0x0203F93C
_080535B8: .4byte 0x0203F93B
_080535BC: .4byte 0x0000F7FF
_080535C0: .4byte 0x0203F93D
_080535C4:
	subs r0, #1
	strb r0, [r1]
	ldrb r0, [r1]
	bl SetAlphaBlending
	b _080535D4
_080535D0:
	subs r0, #1
_080535D2:
	strb r0, [r1]
_080535D4:
	pop {r0}
	bx r0

    .thumb
sub_80535D8: @ 0x080535D8
	push {lr}
	ldr r2, _080535FC
	ldr r1, [r2]
	adds r1, #0xa5
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldr r0, [r2]
	adds r0, #0xa5
	ldrb r0, [r0]
	cmp r0, #0x46
	bne _080535F6
	ldr r1, _08053600
	movs r0, #6
	strb r0, [r1]
_080535F6:
	pop {r0}
	bx r0
	.align 2, 0
_080535FC: .4byte 0x0203F950
_08053600: .4byte 0x0203F93D

    .thumb
sub_8053604: @ 0x08053604
	push {r4, r5, lr}
	movs r3, #0
	movs r5, #0xa0
	lsls r5, r5, #0x13
	ldr r4, _0805362C
_0805360E:
	lsls r1, r3, #1
	adds r2, r1, r5
	ldr r0, [r4]
	adds r0, #0x7c
	adds r0, r0, r1
	ldrh r1, [r2]
	strh r1, [r0]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0xf
	bls _0805360E
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0805362C: .4byte 0x0203F950

    .thumb
sub_8053630: @ 0x08053630
	push {r4, r5, lr}
	movs r3, #0
	ldr r5, _08053658
	ldr r4, _0805365C
_08053638:
	lsls r1, r3, #1
	adds r2, r1, r5
	ldr r0, [r4]
	adds r0, #0x2c
	adds r0, r0, r1
	ldrh r1, [r2]
	strh r1, [r0]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0xf
	bls _08053638
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08053658: .4byte 0x05000060
_0805365C: .4byte 0x0203F960

    .thumb
sub_8053660: @ 0x08053660
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	movs r5, #1
	movs r0, #0x1f
	mov ip, r0
_0805366C:
	cmp r5, #0
	beq _080536DA
	cmp r5, #0xf
	beq _080536DA
	ldr r0, _080536EC
	ldr r0, [r0]
	lsls r6, r5, #1
	adds r0, #0x7c
	adds r0, r0, r6
	ldrh r0, [r0]
	movs r4, #0x1f
	ands r4, r0
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x15
	mov r1, ip
	ands r3, r1
	lsrs r1, r0, #0x1a
	mov r0, ip
	ands r1, r0
	adds r4, r4, r7
	cmp r4, #0x1f
	ble _0805369A
	movs r4, #0x1f
_0805369A:
	adds r0, r3, r7
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x1f
	ble _080536A8
	movs r3, #0x1f
_080536A8:
	lsls r0, r3, #0x10
	cmp r0, #0
	bge _080536B0
	movs r3, #0
_080536B0:
	adds r0, r1, r7
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x1f
	ble _080536BE
	movs r1, #0x1f
_080536BE:
	lsls r0, r1, #0x10
	cmp r0, #0
	bge _080536C6
	movs r1, #0
_080536C6:
	movs r2, #0xa0
	lsls r2, r2, #0x13
	adds r2, r6, r2
	lsls r1, r1, #0x10
	asrs r1, r1, #6
	lsls r0, r3, #0x10
	asrs r0, r0, #0xb
	orrs r1, r0
	orrs r4, r1
	strh r4, [r2]
_080536DA:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0xf
	bls _0805366C
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080536EC: .4byte 0x0203F950

    .thumb
sub_80536F0: @ 0x080536F0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	movs r3, #1
_080536FE:
	cmp r3, #0
	beq _080537F4
	cmp r3, #0xf
	beq _080537F4
	ldr r0, _08053810
	mov sb, r0
	ldr r1, [r0]
	lsls r2, r3, #1
	mov sl, r2
	adds r0, r1, #0
	adds r0, #0x7c
	add r0, sl
	ldrh r0, [r0]
	movs r6, #0x1f
	ands r6, r0
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x15
	movs r2, #0x1f
	ands r5, r2
	lsrs r4, r0, #0x1a
	ands r4, r2
	ldr r0, _08053814
	mov r8, r0
	adds r1, #0x76
	ldrh r0, [r1]
	lsrs r0, r0, #8
	lsls r0, r0, #1
	add r0, r8
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r0, #0xc8
	asrs r0, r0, #1
	ldr r1, _08053818
	str r3, [sp]
	bl CallARM_FX_Mul8
	asrs r0, r0, #8
	adds r0, r6, r0
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	asrs r0, r0, #0x10
	ldr r3, [sp]
	cmp r0, #0x1f
	ble _08053758
	movs r6, #0x1f
_08053758:
	lsls r0, r6, #0x10
	cmp r0, #0
	bge _08053760
	movs r6, #0
_08053760:
	mov r2, sb
	ldr r0, [r2]
	adds r0, #0x76
	ldrh r0, [r0]
	lsrs r0, r0, #8
	lsls r0, r0, #1
	add r0, r8
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r0, #0xc8
	asrs r0, r0, #1
	movs r7, #0xfa
	lsls r7, r7, #4
	adds r1, r7, #0
	str r3, [sp]
	bl CallARM_FX_Mul8
	asrs r0, r0, #8
	lsls r1, r5, #0x10
	asrs r1, r1, #0x10
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	asrs r1, r1, #0x10
	ldr r3, [sp]
	cmp r1, #0x1f
	ble _08053798
	movs r5, #0x1f
_08053798:
	lsls r0, r5, #0x10
	cmp r0, #0
	bge _080537A0
	movs r5, #0
_080537A0:
	mov r2, sb
	ldr r0, [r2]
	adds r0, #0x76
	ldrh r0, [r0]
	lsrs r0, r0, #8
	lsls r0, r0, #1
	add r0, r8
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r0, #0xc8
	asrs r0, r0, #1
	adds r1, r7, #0
	str r3, [sp]
	bl CallARM_FX_Mul8
	asrs r0, r0, #8
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	asrs r1, r1, #0x10
	ldr r3, [sp]
	cmp r1, #0x1f
	ble _080537D4
	movs r4, #0x1f
_080537D4:
	lsls r0, r4, #0x10
	cmp r0, #0
	bge _080537DC
	movs r4, #0
_080537DC:
	movs r2, #0xa0
	lsls r2, r2, #0x13
	add r2, sl
	lsls r1, r4, #0x10
	asrs r1, r1, #6
	lsls r0, r5, #0x10
	asrs r0, r0, #0xb
	orrs r1, r0
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	orrs r0, r1
	strh r0, [r2]
_080537F4:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0xf
	bhi _08053800
	b _080536FE
_08053800:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08053810: .4byte 0x0203F950
_08053814: .4byte 0x080B1AE4
_08053818: .4byte 0x00001388

    .thumb
sub_805381C: @ 0x0805381C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	movs r0, #1
	mov sl, r0
_0805382C:
	mov r1, sl
	cmp r1, #0
	beq _0805391E
	ldr r2, _08053940
	mov sb, r2
	ldr r1, [r2]
	mov r0, sl
	lsls r0, r0, #1
	str r0, [sp]
	adds r0, r1, #0
	adds r0, #0x2c
	ldr r2, [sp]
	adds r0, r0, r2
	ldrh r0, [r0]
	movs r6, #0x1f
	ands r6, r0
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x15
	movs r2, #0x1f
	ands r5, r2
	lsrs r4, r0, #0x1a
	ands r4, r2
	ldr r0, _08053944
	mov r8, r0
	adds r1, #0x4c
	ldrh r0, [r1]
	lsrs r0, r0, #8
	lsls r0, r0, #1
	add r0, r8
	movs r1, #0
	ldrsh r0, [r0, r1]
	ldr r7, _08053948
	adds r0, r0, r7
	asrs r0, r0, #1
	movs r1, #0xc8
	lsls r1, r1, #1
	bl CallARM_FX_Mul8
	asrs r0, r0, #8
	subs r0, r6, r0
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x1f
	ble _08053888
	movs r6, #0x1f
_08053888:
	lsls r0, r6, #0x10
	cmp r0, #0
	bge _08053890
	movs r6, #0
_08053890:
	mov r2, sb
	ldr r0, [r2]
	adds r0, #0x4c
	ldrh r0, [r0]
	lsrs r0, r0, #8
	lsls r0, r0, #1
	add r0, r8
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r0, r0, r7
	asrs r0, r0, #1
	ldr r2, _0805394C
	adds r1, r2, #0
	str r2, [sp, #4]
	bl CallARM_FX_Mul8
	asrs r0, r0, #8
	lsls r1, r5, #0x10
	asrs r1, r1, #0x10
	subs r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	asrs r1, r1, #0x10
	ldr r2, [sp, #4]
	cmp r1, #0x1f
	ble _080538C6
	movs r5, #0x1f
_080538C6:
	lsls r0, r5, #0x10
	cmp r0, #0
	bge _080538CE
	movs r5, #0
_080538CE:
	mov r1, sb
	ldr r0, [r1]
	adds r0, #0x4c
	ldrh r0, [r0]
	lsrs r0, r0, #8
	lsls r0, r0, #1
	add r0, r8
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r0, r0, r7
	asrs r0, r0, #1
	adds r1, r2, #0
	bl CallARM_FX_Mul8
	asrs r0, r0, #8
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	subs r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	asrs r1, r1, #0x10
	cmp r1, #0x1f
	ble _080538FE
	movs r4, #0x1f
_080538FE:
	lsls r0, r4, #0x10
	cmp r0, #0
	bge _08053906
	movs r4, #0
_08053906:
	ldr r0, [sp]
	ldr r1, _08053950
	adds r2, r0, r1
	lsls r1, r4, #0x10
	asrs r1, r1, #6
	lsls r0, r5, #0x10
	asrs r0, r0, #0xb
	orrs r1, r0
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	orrs r0, r1
	strh r0, [r2]
_0805391E:
	mov r0, sl
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sl, r0
	cmp r0, #0xf
	bhi _0805392E
	b _0805382C
_0805392E:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08053940: .4byte 0x0203F960
_08053944: .4byte 0x080B1AE4
_08053948: .4byte 0x0000028A
_0805394C: .4byte 0x000009F6
_08053950: .4byte 0x05000260

    .thumb
sub_8053954: @ 0x08053954
	push {r4, r5, lr}
	ldr r0, _080539B8
	ldr r0, [r0]
	ldr r1, _080539BC
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r4, _080539C0
	ldr r0, [r4]
	ldr r0, [r0, #0x1c]
	bl audio_fx_still_active
	cmp r0, #0
	beq _08053982
	ldr r0, _080539C4
	ldrb r0, [r0]
	cmp r0, #0
	beq _08053982
	ldr r0, [r4]
	ldr r0, [r0, #0x1c]
	bl audio_halt_fx
_08053982:
	ldr r0, _080539C0
	ldr r4, [r0]
	ldr r0, _080539C4
	ldrb r0, [r0]
	cmp r0, #0
	beq _080539D8
	ldr r2, _080539C8
	movs r1, #0x8b
	lsls r1, r1, #3
	adds r0, r2, r1
	ldrh r0, [r0]
	ldr r3, _080539CC
	ldr r5, _080539D0
	adds r1, r2, r5
	ldrb r3, [r3]
	adds r1, r1, r3
	ldrb r1, [r1]
	ldr r3, _080539D4
	adds r2, r2, r3
	ldr r2, [r2]
	movs r5, #0x80
	lsls r5, r5, #9
	adds r2, r2, r5
	bl audio_new_fx
	b _080539DC
	.align 2, 0
_080539B8: .4byte 0x0203F950
_080539BC: .4byte 0x000004C6
_080539C0: .4byte 0x0203F94C
_080539C4: .4byte gCanPlaySfx
_080539C8: .4byte 0x080CE440
_080539CC: .4byte gSfxVolume
_080539D0: .4byte 0x0000045A
_080539D4: .4byte 0x0000045C
_080539D8:
	movs r0, #1
	rsbs r0, r0, #0
_080539DC:
	str r0, [r4, #0x1c]
	ldr r2, _08053A20
	ldr r1, [r2]
	adds r3, r1, #0
	adds r3, #0x7a
	movs r0, #0x78
	strh r0, [r3]
	adds r1, #0x9e
	movs r0, #1
	strb r0, [r1]
	ldr r1, [r2]
	ldr r0, _08053A24
	ldrh r2, [r0]
	adds r0, r1, #0
	adds r0, #0x70
	strh r2, [r0]
	adds r1, #0x79
	ldrb r0, [r1]
	cmp r0, #2
	bne _08053A18
	bl sub_800DE9C
	bl sub_8041E58
	ldr r0, _08053A28
	bl sub_0802FEDC
	ldr r1, _08053A2C
	movs r0, #3
	strb r0, [r1]
_08053A18:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08053A20: .4byte 0x0203F950
_08053A24: .4byte 0x0203F92C
_08053A28: .4byte 0x0000010D
_08053A2C: .4byte 0x0203F93D

    .thumb
sub_08053A30: @ 0x08053A30
	push {r4, r5, r6, lr}
	ldr r4, _08053AF0
	ldr r1, [r4]
	adds r1, #0x56
	ldrb r0, [r1]
	subs r0, #1
	movs r5, #0
	strb r0, [r1]
	bl sub_80524D8
	ldr r4, [r4]
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, #3
	bne _08053A8C
	str r5, [r4, #0x18]
	str r5, [r4, #0x1c]
	ldr r0, [r4, #8]
	str r0, [r4, #0x10]
	ldr r0, _08053AF4
	str r0, [r4, #0x14]
	ldr r1, _08053AF8
	movs r0, #7
	strb r0, [r1]
	ldr r6, _08053AFC
_08053A64:
	lsls r4, r5, #1
	adds r4, r4, r5
	lsls r4, r4, #4
	ldr r0, [r6]
	adds r0, r0, r4
	ldr r1, _08053B00
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r0, [r6]
	adds r4, r4, r0
	adds r4, #0x2c
	movs r0, #0
	strb r0, [r4]
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #2
	bls _08053A64
_08053A8C:
	ldr r4, _08053AF0
	ldr r0, [r4]
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, #0
	bne _08053B0C
	bl sub_800DE9C
	ldr r0, _08053B04
	ldrb r0, [r0]
	cmp r0, #0
	beq _08053AAC
	ldr r0, [r4]
	ldr r0, [r0, #0x28]
	bl audio_halt_fx
_08053AAC:
	ldr r0, _08053B08
	bl sub_0802FEDC
	cmp r0, #0
	bne _08053ABA
	.2byte 0xEE00, 0xEE00
_08053ABA:
	ldr r1, _08053AF8
	movs r0, #3
	strb r0, [r1]
	movs r5, #0
	ldr r6, _08053AFC
_08053AC4:
	lsls r4, r5, #1
	adds r4, r4, r5
	lsls r4, r4, #4
	ldr r0, [r6]
	adds r0, r0, r4
	ldr r1, _08053B00
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r0, [r6]
	adds r4, r4, r0
	adds r4, #0x2c
	movs r0, #0
	strb r0, [r4]
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #2
	bls _08053AC4
	b _08053B3A
	.align 2, 0
_08053AF0: .4byte 0x0203F960
_08053AF4: .4byte 0xFFCE0000
_08053AF8: .4byte 0x0203F93D
_08053AFC: .4byte 0x0203F964
_08053B00: .4byte 0x0000026E
_08053B04: .4byte gCanPlaySfx
_08053B08: .4byte 0x00000125
_08053B0C:
	ldr r0, _08053B40
	ldrb r0, [r0]
	cmp r0, #0
	beq _08053B3A
	ldr r2, _08053B44
	movs r1, #0x86
	lsls r1, r1, #3
	adds r0, r2, r1
	ldrh r0, [r0]
	ldr r3, _08053B48
	ldr r4, _08053B4C
	adds r1, r2, r4
	ldrb r3, [r3]
	adds r1, r1, r3
	ldrb r1, [r1]
	ldr r3, _08053B50
	adds r2, r2, r3
	ldr r2, [r2]
	movs r4, #0x80
	lsls r4, r4, #9
	adds r2, r2, r4
	bl audio_new_fx
_08053B3A:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08053B40: .4byte gCanPlaySfx
_08053B44: .4byte 0x080CE440
_08053B48: .4byte gSfxVolume
_08053B4C: .4byte 0x00000432
_08053B50: .4byte 0x00000434

    .thumb
sub_8053B54: @ 0x08053B54
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	movs r0, #0
	mov r8, r0
	ldr r0, _08053B70
	ldrb r0, [r0]
	cmp r0, #1
	beq _08053B74
	cmp r0, #2
	beq _08053B7C
	b _08053B82
	.align 2, 0
_08053B70: .4byte 0x0203F93F
_08053B74:
	movs r1, #0xf0
	lsls r1, r1, #1
	mov r8, r1
	b _08053B82
_08053B7C:
	movs r3, #0xa0
	lsls r3, r3, #1
	mov r8, r3
_08053B82:
	movs r6, #0
	ldr r0, _08053BEC
	ldr r0, [r0]
	adds r0, #0x2a
	ldrb r0, [r0]
	cmp r6, r0
	blo _08053B92
	b _08053D22
_08053B92:
	ldr r7, _08053BF0
	movs r0, #0x9e
	lsls r0, r0, #1
	adds r0, r0, r7
	mov sb, r0
_08053B9C:
	ldr r0, _08053BF4
	ldrb r0, [r0]
	lsls r5, r6, #5
	cmp r0, #2
	bne _08053C8A
	ldr r0, _08053BF8
	ldr r0, [r0]
	adds r4, r5, r0
	ldrh r1, [r4]
	ldr r0, _08053BFC
	cmp r1, r0
	bne _08053C8A
	ldrh r3, [r4, #6]
	adds r1, r3, #0
	adds r1, #0xa
	ldr r0, _08053C00
	ldr r0, [r0]
	ldrh r2, [r0, #6]
	adds r0, r2, #0
	subs r0, #0xf
	cmp r1, r0
	ble _08053C8A
	subs r1, #0x14
	adds r0, #0x1e
	cmp r1, r0
	bge _08053C8A
	adds r0, r4, #0
	movs r1, #0xae
	lsls r1, r1, #2
	movs r2, #0
	movs r3, #1
	bl sub_8003368
	ldr r0, _08053C04
	ldrb r0, [r0]
	cmp r0, #1
	beq _08053C08
	cmp r0, #2
	beq _08053C38
	b _08053C5E
	.align 2, 0
_08053BEC: .4byte 0x0203F94C
_08053BF0: .4byte 0x080CE440
_08053BF4: .4byte 0x0203F93D
_08053BF8: .4byte 0x0203F958
_08053BFC: .4byte 0x000004B6
_08053C00: .4byte 0x0203F920
_08053C04: .4byte 0x0203F93F
_08053C08:
	ldr r2, _08053C30
	ldrb r0, [r2, #0xe]
	adds r0, #3
	strb r0, [r2, #0xe]
	ldr r1, _08053C34
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrb r3, [r1, #0xe]
	ldrb r1, [r1, #0xe]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	cmp r0, r1
	ble _08053C24
	strb r3, [r2, #0xe]
_08053C24:
	movs r1, #0xe
	ldrsb r1, [r2, r1]
	movs r0, #9
	bl sub_08040204
	b _08053C5E
	.align 2, 0
_08053C30: .4byte gGameStatus
_08053C34: .4byte 0x080CC8C4
_08053C38:
	ldr r2, _08053CE4
	ldrb r0, [r2, #0x10]
	adds r0, #3
	strb r0, [r2, #0x10]
	ldr r1, _08053CE8
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrb r3, [r1, #0x10]
	ldrb r1, [r1, #0x10]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	cmp r0, r1
	ble _08053C54
	strb r3, [r2, #0x10]
_08053C54:
	movs r1, #0x10
	ldrsb r1, [r2, r1]
	movs r0, #0xb
	bl sub_08040204
_08053C5E:
	ldr r0, _08053CEC
	ldrb r0, [r0]
	cmp r0, #0
	beq _08053C8A
	movs r1, #0x9c
	lsls r1, r1, #1
	adds r0, r7, r1
	ldrh r0, [r0]
	ldr r2, _08053CF0
	movs r3, #0x9d
	lsls r3, r3, #1
	adds r1, r7, r3
	ldrb r2, [r2]
	adds r1, r1, r2
	ldrb r1, [r1]
	mov r3, sb
	ldr r2, [r3]
	movs r3, #0x80
	lsls r3, r3, #9
	adds r2, r2, r3
	bl audio_new_fx
_08053C8A:
	ldr r4, _08053CF4
	ldr r0, [r4]
	adds r2, r5, r0
	ldrh r1, [r2]
	movs r0, #0xae
	lsls r0, r0, #2
	cmp r1, r0
	bne _08053CBC
	adds r0, r2, #0
	bl sub_8003770
	cmp r0, #0
	beq _08053CBC
	ldr r0, [r4]
	adds r0, r0, r5
	ldr r1, _08053CF8
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r1, [r4]
	adds r1, r5, r1
	ldrh r0, [r1, #0x1c]
	subs r0, #1
	strh r0, [r1, #0x1c]
_08053CBC:
	ldr r0, _08053CF4
	ldr r0, [r0]
	adds r2, r5, r0
	ldrh r1, [r2]
	ldr r0, _08053CF8
	cmp r1, r0
	bne _08053D04
	ldrh r0, [r2, #0x1c]
	cmp r0, #0
	bne _08053D00
	mov r0, r8
	strh r0, [r2, #0x1c]
	adds r0, r2, #0
	ldr r1, _08053CFC
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	b _08053D04
	.align 2, 0
_08053CE4: .4byte gGameStatus
_08053CE8: .4byte 0x080CC8C4
_08053CEC: .4byte gCanPlaySfx
_08053CF0: .4byte gSfxVolume
_08053CF4: .4byte 0x0203F958
_08053CF8: .4byte 0x00000451
_08053CFC: .4byte 0x000004B6
_08053D00:
	subs r0, #1
	strh r0, [r2, #0x1c]
_08053D04:
	ldr r0, _08053D30
	ldr r0, [r0]
	adds r0, r0, r5
	bl RenderSprite
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	ldr r0, _08053D34
	ldr r0, [r0]
	adds r0, #0x2a
	ldrb r0, [r0]
	cmp r6, r0
	bhs _08053D22
	b _08053B9C
_08053D22:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08053D30: .4byte 0x0203F958
_08053D34: .4byte 0x0203F94C

    .thumb
sub_8053D38: @ 0x08053D38
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	movs r7, #0
	b _08053F96
_08053D48:
	ldr r1, _08053DCC
	ldr r0, [r1]
	lsls r1, r7, #5
	adds r2, r1, r0
	ldrb r0, [r2, #0x1d]
	adds r6, r1, #0
	adds r3, r7, #1
	str r3, [sp]
	cmp r0, #0
	bne _08053D5E
	b _08053F90
_08053D5E:
	ldrb r0, [r2, #8]
	ldrb r1, [r2, #0x1c]
	subs r0, r0, r1
	lsls r0, r0, #8
	movs r1, #0x10
	bl CallARM_FX_Mul8
	lsls r0, r0, #8
	lsrs r2, r0, #0x10
	cmp r2, #0
	bne _08053D76
	movs r2, #1
_08053D76:
	ldr r0, _08053DCC
	ldr r1, [r0]
	adds r1, r6, r1
	ldrb r0, [r1, #8]
	subs r0, r0, r2
	movs r4, #0
	strb r0, [r1, #8]
	ldr r1, _08053DCC
	ldr r0, [r1]
	adds r0, r0, r6
	bl RenderSprite
	ldr r0, _08053DD0
	ldr r0, [r0]
	ldrb r2, [r0, #8]
	ldr r3, _08053DCC
	ldr r0, [r3]
	adds r0, r6, r0
	ldrb r0, [r0, #8]
	adds r0, #0x29
	subs r2, r2, r0
	lsls r2, r2, #2
	adds r2, #0x80
	adds r0, r7, #0
	movs r1, #0
	bl sub_8025718
	ldr r1, _08053DCC
	ldr r0, [r1]
	adds r1, r6, r0
	ldrb r0, [r1, #8]
	ldrb r2, [r1, #0x1c]
	cmp r0, r2
	bhi _08053DBC
	strb r4, [r1, #0x1d]
_08053DBC:
	ldr r0, _08053DD4
	ldrb r0, [r0]
	cmp r0, #1
	beq _08053DD8
	cmp r0, #2
	beq _08053E68
	b _08053F90
	.align 2, 0
_08053DCC: .4byte 0x0203F954
_08053DD0: .4byte 0x0203F920
_08053DD4: .4byte 0x0203F93F
_08053DD8:
	ldr r3, _08053E60
	ldr r0, [r3]
	adds r1, r6, r0
	ldrb r4, [r1, #8]
	ldrb r0, [r1, #0x1c]
	subs r0, r4, r0
	cmp r0, #1
	bgt _08053E42
	ldr r0, _08053E64
	ldr r3, [r0]
	adds r0, r3, #0
	adds r0, #0x7a
	ldrh r0, [r0]
	cmp r0, #0
	beq _08053E42
	adds r0, r3, #0
	adds r0, #0x9e
	ldrb r0, [r0]
	cmp r0, #0
	bne _08053E42
	adds r0, r3, #0
	adds r0, #0xa3
	ldrb r5, [r0]
	cmp r5, #0
	bne _08053E42
	ldrh r2, [r1, #6]
	ldrh r1, [r3, #6]
	adds r0, r1, #0
	subs r0, #0xd
	cmp r2, r0
	ble _08053E42
	adds r0, #0x1a
	cmp r2, r0
	bge _08053E42
	ldrb r1, [r3, #8]
	adds r0, r1, #0
	subs r0, #0xa
	cmp r4, r0
	ble _08053E42
	adds r0, #0x14
	cmp r4, r0
	bge _08053E42
	bl sub_8053954
	ldr r1, _08053E60
	ldr r0, [r1]
	adds r0, r6, r0
	ldrb r1, [r0, #0x1c]
	strb r1, [r0, #8]
	ldr r2, _08053E60
	ldr r0, [r2]
	adds r0, r6, r0
	strb r5, [r0, #0x1d]
_08053E42:
	ldr r3, _08053E60
	ldr r0, [r3]
	adds r1, r6, r0
	ldrb r0, [r1, #8]
	adds r2, r7, #1
	str r2, [sp]
	cmp r0, #0x77
	bls _08053E54
	b _08053F90
_08053E54:
	adds r0, r1, #0
	movs r1, #0
	bl SetSpritePriority
	b _08053F90
	.align 2, 0
_08053E60: .4byte 0x0203F954
_08053E64: .4byte 0x0203F950
_08053E68:
	movs r3, #0
	mov sb, r3
	ldr r0, _08053F2C
	mov sl, r0
	ldr r1, _08053F30
	mov r8, r1
_08053E74:
	mov r2, sl
	ldr r1, [r2]
	mov r3, sb
	lsls r0, r3, #2
	add r0, sb
	lsls r5, r0, #3
	adds r4, r5, r1
	adds r0, r4, #0
	adds r0, #0x24
	ldrb r0, [r0]
	cmp r0, #0
	beq _08053F80
	ldr r7, _08053F34
	ldr r0, [r7]
	adds r1, r6, r0
	ldrb r3, [r1, #8]
	ldrb r0, [r1, #0x1c]
	subs r0, r3, r0
	cmp r0, #1
	bgt _08053F80
	ldrh r2, [r1, #6]
	ldrh r1, [r4, #6]
	adds r0, r1, #0
	subs r0, #0xd
	cmp r2, r0
	ble _08053F80
	adds r0, #0x1a
	cmp r2, r0
	bge _08053F80
	ldrb r1, [r4, #8]
	adds r0, r1, #0
	subs r0, #9
	cmp r3, r0
	ble _08053F80
	adds r0, #0x12
	cmp r3, r0
	bge _08053F80
	adds r0, r4, #0
	movs r1, #0xf
	ldr r2, _08053F38
	bl sub_800E9EC
	mov r0, sl
	ldr r1, [r0]
	adds r1, r5, r1
	adds r1, #0x25
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	mov r1, sl
	ldr r0, [r1]
	adds r0, r5, r0
	adds r0, #0x25
	ldrb r4, [r0]
	cmp r4, #0
	bne _08053F4C
	bl sub_08053A30
	ldr r0, [r7]
	adds r0, r6, r0
	ldrb r1, [r0, #0x1c]
	strb r1, [r0, #8]
	ldr r0, [r7]
	adds r0, r6, r0
	strb r4, [r0, #0x1d]
	mov r2, sl
	ldr r0, [r2]
	adds r0, r5, r0
	adds r0, #0x24
	strb r4, [r0]
	ldr r0, _08053F3C
	ldrb r0, [r0]
	cmp r0, #0
	beq _08053F76
	movs r0, #0xca
	lsls r0, r0, #3
	add r0, r8
	ldrh r0, [r0]
	ldr r2, _08053F40
	ldr r1, _08053F44
	add r1, r8
	ldrb r2, [r2]
	adds r1, r1, r2
	ldrb r1, [r1]
	ldr r3, _08053F48
	ldr r2, [r3]
	movs r3, #0x80
	lsls r3, r3, #9
	adds r2, r2, r3
	bl audio_new_fx
	b _08053F76
	.align 2, 0
_08053F2C: .4byte 0x0203F968
_08053F30: .4byte 0x080CE440
_08053F34: .4byte 0x0203F954
_08053F38: .4byte 0x00001FFF
_08053F3C: .4byte gCanPlaySfx
_08053F40: .4byte gSfxVolume
_08053F44: .4byte 0x00000652
_08053F48: .4byte 0x080CEA94
_08053F4C:
	ldr r0, _08053FB4
	ldrb r0, [r0]
	cmp r0, #0
	beq _08053F76
	movs r0, #0xc9
	lsls r0, r0, #3
	add r0, r8
	ldrh r0, [r0]
	ldr r2, _08053FB8
	ldr r1, _08053FBC
	add r1, r8
	ldrb r2, [r2]
	adds r1, r1, r2
	ldrb r1, [r1]
	ldr r3, _08053FC0
	ldr r2, [r3]
	movs r3, #0x80
	lsls r3, r3, #9
	adds r2, r2, r3
	bl audio_new_fx
_08053F76:
	ldr r1, _08053FC4
	ldr r0, [r1]
	adds r0, r6, r0
	movs r1, #0
	strb r1, [r0, #0x1d]
_08053F80:
	mov r0, sb
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
	cmp r0, #5
	bhi _08053F90
	b _08053E74
_08053F90:
	ldr r2, [sp]
	lsls r0, r2, #0x18
	lsrs r7, r0, #0x18
_08053F96:
	ldr r0, _08053FC8
	ldr r0, [r0]
	adds r0, #0x2d
	ldrb r0, [r0]
	cmp r7, r0
	bhs _08053FA4
	b _08053D48
_08053FA4:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08053FB4: .4byte gCanPlaySfx
_08053FB8: .4byte gSfxVolume
_08053FBC: .4byte 0x0000064A
_08053FC0: .4byte 0x080CEA8C
_08053FC4: .4byte 0x0203F954
_08053FC8: .4byte 0x0203F94C

    .thumb
sub_8053FCC: @ 0x08053FCC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r1, _08053FF8
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	blt _08054000
	ldr r0, _08053FFC
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, #0xe
	adds r1, r1, r0
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bne _0805400C
	b _080540BE
	.align 2, 0
_08053FF8: .4byte 0x0200108C
_08053FFC: .4byte gGameStatus
_08054000:
	ldr r0, _080540CC
	ldrb r0, [r0, #0xe]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _080540BE
_0805400C:
	movs r5, #0
	ldr r1, _080540D0
	ldr r0, [r1]
	adds r0, #0x2d
	ldrb r0, [r0]
	cmp r5, r0
	bhs _080540BE
	ldr r6, _080540D4
	ldr r7, _080540D8
	movs r0, #0xc4
	adds r0, r0, r7
	mov sl, r0
	mov r8, r1
	ldr r1, _080540DC
	mov sb, r1
_0805402A:
	ldr r0, [r6]
	lsls r4, r5, #5
	adds r0, r4, r0
	ldrb r0, [r0, #0x1d]
	cmp r0, #0
	bne _080540AC
	ldr r0, _080540E0
	ldrb r0, [r0]
	cmp r0, #0
	beq _0805405E
	adds r0, r7, #0
	adds r0, #0xc0
	ldrh r0, [r0]
	ldr r2, _080540E4
	adds r1, r7, #0
	adds r1, #0xc2
	ldrb r2, [r2]
	adds r1, r1, r2
	ldrb r1, [r1]
	mov r3, sl
	ldr r2, [r3]
	movs r3, #0x80
	lsls r3, r3, #9
	adds r2, r2, r3
	bl audio_new_fx
_0805405E:
	ldr r1, [r6]
	adds r1, r4, r1
	mov r0, sb
	ldr r2, [r0]
	ldrh r0, [r2, #6]
	adds r0, #0xe
	strh r0, [r1, #6]
	ldrb r0, [r2, #8]
	adds r0, #0xd7
	strb r0, [r1, #8]
	ldr r1, [r6]
	adds r1, r4, r1
	mov r2, sb
	ldr r0, [r2]
	ldrb r0, [r0, #4]
	strb r0, [r1, #4]
	ldr r1, [r6]
	adds r1, r4, r1
	mov r3, r8
	ldr r0, [r3]
	ldrb r0, [r0, #8]
	strb r0, [r1, #0x1c]
	ldr r0, [r6]
	adds r0, r4, r0
	movs r1, #1
	strb r1, [r0, #0x1d]
	movs r0, #1
	movs r1, #0
	bl sub_800DC4C
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0x80
	bl sub_8025718
	mov r1, r8
	ldr r0, [r1]
	adds r0, #0x2d
	ldrb r5, [r0]
_080540AC:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	mov r2, r8
	ldr r0, [r2]
	adds r0, #0x2d
	ldrb r0, [r0]
	cmp r5, r0
	blo _0805402A
_080540BE:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080540CC: .4byte gGameStatus
_080540D0: .4byte 0x0203F94C
_080540D4: .4byte 0x0203F954
_080540D8: .4byte 0x080CE440
_080540DC: .4byte 0x0203F920
_080540E0: .4byte gCanPlaySfx
_080540E4: .4byte gSfxVolume

    .thumb
sub_80540E8: @ 0x080540E8
	push {r4, lr}
	movs r0, #0xc8
	lsls r0, r0, #6
	movs r1, #0xc8
	lsls r1, r1, #8
	bl RandomMinMax
	ldr r4, _08054128
	ldr r1, [r4]
	str r0, [r1, #0x18]
	ldr r1, [r1, #8]
	ldr r0, _0805412C
	cmp r1, r0
	blt _08054120
	movs r0, #0xf0
	lsls r0, r0, #0xd
	cmp r1, r0
	bgt _08054118
	movs r0, #0
	movs r1, #1
	bl RandomMinMax
	cmp r0, #0
	beq _08054120
_08054118:
	ldr r1, [r4]
	ldr r0, [r1, #0x18]
	rsbs r0, r0, #0
	str r0, [r1, #0x18]
_08054120:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08054128: .4byte 0x0203F960
_0805412C: .4byte 0xFFB00000

    .thumb
sub_8054130: @ 0x08054130
	ldr r0, _0805414C
	ldr r1, [r0]
	movs r0, #0xa
	ldrsh r2, [r1, r0]
	adds r0, r1, #0
	adds r0, #0x50
	strh r2, [r0]
	movs r2, #0xe
	ldrsh r0, [r1, r2]
	subs r0, #0x20
	adds r1, #0x52
	strh r0, [r1]
	bx lr
	.align 2, 0
_0805414C: .4byte 0x0203F960

    .thumb
sub_8054150: @ 0x08054150
	push {r4, r5, r6, lr}
	ldr r0, _08054160
	ldrb r0, [r0]
	cmp r0, #1
	beq _08054164
	cmp r0, #2
	beq _080541DE
	b _080543CA
	.align 2, 0
_08054160: .4byte 0x0203F93F
_08054164:
	ldr r4, _080541CC
	ldr r2, [r4]
	adds r3, r2, #0
	adds r3, #0x7a
	ldrh r1, [r3]
	cmp r1, #0
	beq _080541D8
	adds r0, r2, #0
	adds r0, #0xa3
	ldrb r0, [r0]
	cmp r0, #0
	bne _080541D8
	subs r0, r1, #1
	strh r0, [r3]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08054188
	b _080543CA
_08054188:
	ldr r1, _080541D0
	adds r0, r2, #0
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r1, [r4]
	adds r0, r1, #0
	adds r0, #0x7a
	ldrh r2, [r0]
	cmp r2, #0
	beq _080541A2
	b _080543CA
_080541A2:
	adds r1, #0x9e
	ldrb r0, [r1]
	cmp r0, #0
	bne _080541AC
	b _080543CA
_080541AC:
	movs r0, #0
	strb r0, [r1]
	ldr r1, [r4]
	adds r0, r1, #0
	adds r0, #0x74
	strh r2, [r0]
	adds r1, #0x79
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldr r1, _080541D4
	ldr r0, [r4]
	adds r0, #0x70
	ldrh r0, [r0]
	strh r0, [r1]
	b _080543CA
	.align 2, 0
_080541CC: .4byte 0x0203F950
_080541D0: .4byte 0x000004C5
_080541D4: .4byte 0x0203F92C
_080541D8:
	bl sub_80547EC
	b _080543CA
_080541DE:
	ldr r6, _0805426C
	ldr r2, [r6]
	adds r0, r2, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, #3
	bls _080541EE
	b _08054368
_080541EE:
	ldr r0, [r2, #0x10]
	ldr r1, [r2, #8]
	subs r0, r0, r1
	bl Abs
	adds r5, r0, #0
	ldr r1, [r6]
	ldr r0, [r1, #0x14]
	ldr r1, [r1, #0xc]
	subs r0, r0, r1
	bl Abs
	adds r2, r0, #0
	adds r1, r5, r2
	ldr r0, _08054270
	cmp r1, r0
	bgt _0805424A
	movs r0, #0
	movs r1, #0x9c
	bl RandomMinMax
	ldr r1, [r6]
	subs r0, #0x5a
	lsls r0, r0, #0x10
	str r0, [r1, #0x10]
	movs r0, #0
	movs r1, #0x28
	bl RandomMinMax
	ldr r1, [r6]
	subs r0, #0x28
	lsls r0, r0, #0x10
	str r0, [r1, #0x14]
	ldr r0, [r1, #0x10]
	ldr r1, [r1, #8]
	subs r0, r0, r1
	bl Abs
	adds r5, r0, #0
	ldr r1, [r6]
	ldr r0, [r1, #0x14]
	ldr r1, [r1, #0xc]
	subs r0, r0, r1
	bl Abs
	adds r2, r0, #0
_0805424A:
	cmp r5, r2
	ble _08054274
	ldr r0, [r6]
	movs r4, #0x80
	lsls r4, r4, #6
	str r4, [r0, #0x20]
	adds r0, r2, #0
	adds r1, r5, #0
	bl sub_800392C
	adds r1, r0, #0
	adds r0, r4, #0
	bl CallARM_FX_Mul16
	ldr r1, [r6]
	str r0, [r1, #0x24]
	b _08054290
	.align 2, 0
_0805426C: .4byte 0x0203F960
_08054270: .4byte 0x000BFFFF
_08054274:
	ldr r0, [r6]
	movs r4, #0x80
	lsls r4, r4, #6
	str r4, [r0, #0x24]
	adds r0, r5, #0
	adds r1, r2, #0
	bl sub_800392C
	adds r1, r0, #0
	adds r0, r4, #0
	bl CallARM_FX_Mul16
	ldr r1, [r6]
	str r0, [r1, #0x20]
_08054290:
	ldr r5, _08054344
	ldr r2, [r5]
	ldr r1, [r2, #0x10]
	ldr r0, [r2, #8]
	cmp r1, r0
	bge _080542A2
	ldr r0, [r2, #0x20]
	rsbs r0, r0, #0
	str r0, [r2, #0x20]
_080542A2:
	ldr r2, [r5]
	ldr r1, [r2, #0x14]
	ldr r0, [r2, #0xc]
	cmp r1, r0
	bge _080542B2
	ldr r0, [r2, #0x24]
	rsbs r0, r0, #0
	str r0, [r2, #0x24]
_080542B2:
	ldr r3, [r5]
	ldr r2, [r3, #0x18]
	ldr r0, [r3, #0x20]
	adds r2, r2, r0
	str r2, [r3, #0x18]
	ldr r0, [r3, #0x1c]
	ldr r1, [r3, #0x24]
	adds r0, r0, r1
	str r0, [r3, #0x1c]
	movs r4, #0xa0
	lsls r4, r4, #7
	cmp r2, r4
	ble _080542CE
	str r4, [r3, #0x18]
_080542CE:
	ldr r1, [r5]
	ldr r0, [r1, #0x18]
	ldr r2, _08054348
	cmp r0, r2
	bge _080542DA
	str r2, [r1, #0x18]
_080542DA:
	ldr r1, [r5]
	ldr r0, [r1, #0x1c]
	cmp r0, r4
	ble _080542E4
	str r4, [r1, #0x1c]
_080542E4:
	ldr r1, [r5]
	ldr r0, [r1, #0x1c]
	cmp r0, r2
	bge _080542EE
	str r2, [r1, #0x1c]
_080542EE:
	ldr r2, [r5]
	ldr r0, [r2, #8]
	ldr r1, [r2, #0x18]
	adds r0, r0, r1
	str r0, [r2, #8]
	ldr r0, [r2, #0xc]
	ldr r1, [r2, #0x1c]
	adds r0, r0, r1
	str r0, [r2, #0xc]
	bl sub_8054B50
	ldr r0, [r5]
	ldr r0, [r0, #0x28]
	bl audio_fx_still_active
	cmp r0, #0
	bne _080543C6
	ldr r4, [r5]
	ldr r0, _0805434C
	ldrb r0, [r0]
	cmp r0, #0
	beq _08054360
	ldr r2, _08054350
	movs r1, #0xb3
	lsls r1, r1, #3
	adds r0, r2, r1
	ldrh r0, [r0]
	ldr r3, _08054354
	ldr r5, _08054358
	adds r1, r2, r5
	ldrb r3, [r3]
	adds r1, r1, r3
	ldrb r1, [r1]
	ldr r3, _0805435C
	adds r2, r2, r3
	ldr r2, [r2]
	movs r5, #0x80
	lsls r5, r5, #9
	adds r2, r2, r5
	bl audio_new_fx
	b _08054364
	.align 2, 0
_08054344: .4byte 0x0203F960
_08054348: .4byte 0xFFFFB000
_0805434C: .4byte gCanPlaySfx
_08054350: .4byte 0x080CE440
_08054354: .4byte gSfxVolume
_08054358: .4byte 0x0000059A
_0805435C: .4byte 0x0000059C
_08054360:
	movs r0, #1
	rsbs r0, r0, #0
_08054364:
	str r0, [r4, #0x28]
	b _080543C6
_08054368:
	adds r4, r2, #0
	adds r4, #0x57
	ldrb r0, [r4]
	adds r5, r0, #0
	cmp r5, #0
	beq _0805437A
	subs r0, #1
	strb r0, [r4]
	b _080543C2
_0805437A:
	adds r3, r2, #0
	adds r3, #0x4e
	movs r1, #0x96
	lsls r1, r1, #3
	adds r0, r1, #0
	ldrh r1, [r3]
	adds r0, r0, r1
	strh r0, [r3]
	ldr r0, [r2, #8]
	ldr r1, [r2, #0x18]
	adds r0, r0, r1
	str r0, [r2, #8]
	movs r1, #0
	ldrsh r0, [r3, r1]
	cmp r0, #0
	bge _080543A4
	strh r5, [r3]
	movs r0, #0xf
	strb r0, [r4]
	bl sub_80540E8
_080543A4:
	ldr r2, [r6]
	ldr r1, _080543D0
	adds r0, r2, #0
	adds r0, #0x4e
	ldrh r0, [r0]
	lsrs r0, r0, #8
	lsls r0, r0, #1
	adds r0, r0, r1
	movs r3, #0
	ldrsh r1, [r0, r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #9
	rsbs r0, r0, #0
	str r0, [r2, #0xc]
_080543C2:
	bl sub_8054B50
_080543C6:
	bl sub_8054130
_080543CA:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080543D0: .4byte 0x080B1AE4

    .thumb
sub_80543D4: @ 0x080543D4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r6, _08054480
	ldr r0, [r6]
	adds r2, r0, #0
	adds r2, #0xa0
	ldr r4, _08054484
	adds r0, #0x79
	ldrb r0, [r0]
	lsls r0, r0, #3
	adds r0, r0, r4
	ldrb r1, [r2]
	ldrb r0, [r0, #4]
	cmp r1, r0
	blo _08054490
	movs r0, #0
	strb r0, [r2]
	ldr r2, [r6]
	adds r3, r2, #0
	adds r3, #0x79
	ldrb r0, [r3]
	lsls r0, r0, #3
	adds r0, r0, r4
	ldrh r0, [r0, #6]
	adds r1, r2, #0
	adds r1, #0x7a
	strh r0, [r1]
	ldrb r0, [r3]
	lsls r0, r0, #3
	adds r0, r0, r4
	ldr r0, [r0]
	ldrh r1, [r0]
	adds r0, r2, #0
	adds r0, #0x9f
	strb r1, [r0]
	ldr r3, [r6]
	ldr r2, _08054488
	adds r5, r3, #0
	adds r5, #0x79
	ldrb r1, [r5]
	lsls r1, r1, #3
	adds r1, r1, r2
	adds r4, r3, #0
	adds r4, #0xa1
	ldrb r0, [r4]
	ldr r1, [r1]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrb r0, [r0]
	ldr r1, _0805448C
	ldrh r1, [r1]
	subs r0, r0, r1
	strh r0, [r3, #6]
	ldrb r0, [r5]
	lsls r0, r0, #3
	adds r0, r0, r2
	ldrb r1, [r4]
	ldr r0, [r0]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldrb r0, [r1, #1]
	strb r0, [r3, #8]
	ldr r1, [r6]
	adds r1, #0xa1
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldr r0, [r6]
	adds r3, r0, #0
	adds r3, #0xa1
	adds r0, #0x79
	ldrb r0, [r0]
	lsls r0, r0, #3
	adds r0, r0, r2
	ldrb r1, [r3]
	ldrb r0, [r0, #4]
	cmp r1, r0
	bhs _0805447A
	b _080547D0
_0805447A:
	movs r0, #0
	strb r0, [r3]
	b _080547D0
	.align 2, 0
_08054480: .4byte 0x0203F950
_08054484: .4byte 0x080B1EAC
_08054488: .4byte 0x080B1ED0
_0805448C: .4byte 0x0203F92C
_08054490:
	movs r0, #0
	mov r8, r0
	ldr r1, _0805454C
	mov sl, r1
	ldr r2, _08054550
	mov sb, r2
_0805449C:
	mov r3, sl
	ldr r1, [r3]
	mov r4, r8
	lsls r2, r4, #3
	adds r0, r2, r4
	lsls r5, r0, #3
	adds r1, r5, r1
	movs r3, #0x3a
	ldrsh r0, [r1, r3]
	str r2, [sp]
	cmp r0, #0xbe
	beq _080544B6
	b _080547C0
_080544B6:
	ldr r0, _08054554
	ldrb r0, [r0]
	cmp r0, #0
	beq _080544E6
	ldr r2, _08054558
	movs r4, #0x82
	lsls r4, r4, #2
	adds r0, r2, r4
	ldrh r0, [r0]
	ldr r3, _0805455C
	adds r4, #2
	adds r1, r2, r4
	ldrb r3, [r3]
	adds r1, r1, r3
	ldrb r1, [r1]
	movs r3, #0x83
	lsls r3, r3, #2
	adds r2, r2, r3
	ldr r2, [r2]
	movs r4, #0x80
	lsls r4, r4, #9
	adds r2, r2, r4
	bl audio_new_fx
_080544E6:
	mov r0, sl
	ldr r2, [r0]
	adds r2, r5, r2
	ldr r6, _08054560
	ldr r7, _08054564
	ldr r0, [r7]
	adds r1, r0, #0
	adds r1, #0x79
	ldrb r1, [r1]
	lsls r1, r1, #3
	adds r1, r1, r6
	adds r0, #0xa0
	ldrb r0, [r0]
	ldr r1, [r1]
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrb r0, [r0, #3]
	adds r2, #0x44
	strb r0, [r2]
	ldr r2, [r7]
	adds r0, r2, #0
	adds r0, #0x79
	ldrb r1, [r0]
	lsls r1, r1, #3
	adds r1, r1, r6
	adds r0, #0x27
	ldrb r0, [r0]
	ldr r1, [r1]
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrh r1, [r0, #8]
	adds r0, r2, #0
	adds r0, #0x9f
	strb r1, [r0]
	mov r1, sl
	ldr r0, [r1]
	adds r4, r5, r0
	ldr r0, _08054568
	ldrh r0, [r0]
	adds r0, #0x56
	movs r1, #0
	strh r0, [r4, #0x3a]
	adds r0, r4, #0
	adds r0, #0x44
	ldrb r0, [r0]
	cmp r0, #0
	beq _0805456C
	cmp r0, #1
	bne _0805454A
	b _080546F8
_0805454A:
	b _080547A2
	.align 2, 0
_0805454C: .4byte 0x0203F95C
_08054550: .4byte 0x0203F92C
_08054554: .4byte gCanPlaySfx
_08054558: .4byte 0x080CE440
_0805455C: .4byte gSfxVolume
_08054560: .4byte 0x080B1EAC
_08054564: .4byte 0x0203F950
_08054568: .4byte 0x0203F92E
_0805456C:
	ldr r1, _080545A0
	strh r1, [r4, #0x3e]
	adds r0, r4, #0
	adds r0, #0x40
	strh r1, [r0]
	ldr r0, [r7]
	adds r2, r0, #0
	adds r2, #0x79
	ldrb r1, [r2]
	lsls r1, r1, #3
	adds r1, r1, r6
	adds r3, r0, #0
	adds r3, #0xa0
	ldrb r0, [r3]
	ldr r1, [r1]
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrb r0, [r0, #2]
	cmp r0, #1
	beq _08054638
	cmp r0, #1
	bgt _080545A4
	cmp r0, #0
	beq _080545AA
	b _08054684
	.align 2, 0
_080545A0: .4byte 0x0000FE50
_080545A4:
	cmp r0, #2
	beq _080545EA
	b _08054684
_080545AA:
	movs r0, #0x8a
	lsls r0, r0, #8
	strh r0, [r4, #0x38]
	ldrb r0, [r2]
	lsls r0, r0, #3
	adds r0, r0, r6
	ldrb r1, [r3]
	ldr r0, [r0]
	lsls r1, r1, #3
	adds r1, r1, r0
	ldrb r0, [r1, #4]
	subs r0, #0x8a
	mov r2, sb
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	movs r1, #0xaf
	lsls r1, r1, #3
	bl CallARM_FX_Mul8
	mov r4, sl
	ldr r1, [r4]
	adds r1, r5, r1
	strh r0, [r1, #0x3c]
	ldr r0, [r7]
	mov r1, sb
	ldrh r2, [r1]
	movs r1, #0x8a
	subs r1, r1, r2
	strh r1, [r0, #0x22]
	adds r0, #0x1c
	b _08054628
_080545EA:
	movs r0, #0x9e
	lsls r0, r0, #8
	strh r0, [r4, #0x38]
	ldrb r0, [r2]
	lsls r0, r0, #3
	adds r0, r0, r6
	ldrb r1, [r3]
	ldr r0, [r0]
	lsls r1, r1, #3
	adds r1, r1, r0
	ldrb r0, [r1, #4]
	subs r0, #0x9e
	mov r2, sb
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	movs r1, #0xaf
	lsls r1, r1, #3
	bl CallARM_FX_Mul8
	mov r4, sl
	ldr r1, [r4]
	adds r1, r5, r1
	strh r0, [r1, #0x3c]
	ldr r0, [r7]
	mov r1, sb
	ldrh r2, [r1]
	movs r1, #0x9e
	subs r1, r1, r2
	strh r1, [r0, #0x3e]
	adds r0, #0x38
_08054628:
	ldr r1, _08054634
	movs r2, #0
	movs r3, #1
	bl sub_8003368
	b _08054684
	.align 2, 0
_08054634: .4byte 0x000004B4
_08054638:
	movs r0, #0xb2
	lsls r0, r0, #8
	strh r0, [r4, #0x38]
	ldrb r0, [r2]
	lsls r0, r0, #3
	adds r0, r0, r6
	ldrb r1, [r3]
	ldr r0, [r0]
	lsls r1, r1, #3
	adds r1, r1, r0
	ldrb r0, [r1, #4]
	subs r0, #0xb2
	mov r2, sb
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	movs r1, #0xaf
	lsls r1, r1, #3
	bl CallARM_FX_Mul8
	mov r4, sl
	ldr r1, [r4]
	adds r1, r5, r1
	strh r0, [r1, #0x3c]
	ldr r0, [r7]
	mov r1, sb
	ldrh r2, [r1]
	movs r1, #0xb2
	subs r1, r1, r2
	adds r2, r0, #0
	adds r2, #0x5a
	strh r1, [r2]
	adds r0, #0x54
	ldr r1, _080546E8
	movs r2, #0
	movs r3, #1
	bl sub_8003368
_08054684:
	mov r2, sl
	ldr r0, [r2]
	ldr r2, [sp]
	add r2, r8
	lsls r2, r2, #3
	adds r2, r2, r0
	mov r3, sb
	ldrh r1, [r3]
	lsls r1, r1, #8
	ldrh r0, [r2, #0x38]
	subs r0, r0, r1
	strh r0, [r2, #0x38]
	ldr r3, _080546EC
	ldr r0, _080546F0
	ldr r0, [r0]
	adds r1, r0, #0
	adds r1, #0x79
	ldrb r1, [r1]
	lsls r1, r1, #3
	adds r1, r1, r3
	adds r0, #0xa0
	ldrb r0, [r0]
	ldr r1, [r1]
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrb r0, [r0, #4]
	strh r0, [r2, #0x22]
	ldr r4, _080546F4
	ldr r0, [r4]
	adds r0, #0x2d
	ldrb r0, [r0]
	add r0, r8
	movs r5, #0xc0
	lsls r5, r5, #2
	movs r1, #0
	adds r2, r5, #0
	bl sub_8025718
	ldr r1, [r4]
	adds r1, #0x2d
	mov r0, r8
	adds r0, #3
	ldrb r1, [r1]
	adds r0, r0, r1
	movs r1, #0
	adds r2, r5, #0
	bl sub_8025718
	b _080547A2
	.align 2, 0
_080546E8: .4byte 0x000004B4
_080546EC: .4byte 0x080B1EAC
_080546F0: .4byte 0x0203F950
_080546F4: .4byte 0x0203F94C
_080546F8:
	ldr r3, [r7]
	adds r5, r3, #0
	adds r5, #0x79
	ldrb r1, [r5]
	lsls r1, r1, #3
	adds r1, r1, r6
	adds r2, r3, #0
	adds r2, #0xa0
	ldrb r0, [r2]
	ldr r1, [r1]
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrb r0, [r0, #4]
	strh r0, [r4, #0x38]
	movs r0, #0xfd
	lsls r0, r0, #8
	strh r0, [r4, #0x3e]
	ldrb r0, [r5]
	lsls r0, r0, #3
	adds r0, r0, r6
	ldrb r1, [r2]
	ldr r0, [r0]
	lsls r1, r1, #3
	adds r1, r1, r0
	ldrb r0, [r1, #2]
	cmp r0, #1
	beq _08054750
	cmp r0, #1
	bgt _08054738
	cmp r0, #0
	beq _0805473E
	b _0805478E
_08054738:
	cmp r0, #2
	beq _08054770
	b _0805478E
_0805473E:
	mov r1, sb
	ldrh r0, [r1]
	movs r1, #0x8a
	subs r1, r1, r0
	strh r1, [r4, #6]
	strh r1, [r3, #0x22]
	adds r0, r3, #0
	adds r0, #0x1c
	b _08054760
_08054750:
	mov r2, sb
	ldrh r0, [r2]
	movs r1, #0x9e
	subs r1, r1, r0
	strh r1, [r4, #6]
	strh r1, [r3, #0x3e]
	adds r0, r3, #0
	adds r0, #0x38
_08054760:
	ldr r1, _0805476C
	movs r2, #0
	movs r3, #1
	bl sub_8003368
	b _0805478E
	.align 2, 0
_0805476C: .4byte 0x000004B4
_08054770:
	mov r0, sb
	ldrh r1, [r0]
	movs r0, #0xb2
	subs r0, r0, r1
	strh r0, [r4, #6]
	adds r1, r3, #0
	adds r1, #0x5a
	strh r0, [r1]
	adds r0, r3, #0
	adds r0, #0x54
	ldr r1, _080547E0
	movs r2, #0
	movs r3, #1
	bl sub_8003368
_0805478E:
	ldr r0, _080547E4
	ldr r0, [r0]
	adds r0, #0x2d
	ldrb r0, [r0]
	add r0, r8
	movs r1, #0
	movs r2, #0x80
	lsls r2, r2, #2
	bl sub_8025718
_080547A2:
	movs r1, #3
	mov r8, r1
	ldr r1, _080547E8
	ldr r0, [r1]
	adds r0, #0xa7
	movs r2, #1
	strb r2, [r0]
	ldr r0, [r1]
	adds r0, #0xa8
	strb r2, [r0]
	ldr r1, [r1]
	adds r1, #0xa0
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
_080547C0:
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	cmp r0, #2
	bhi _080547D0
	b _0805449C
_080547D0:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080547E0: .4byte 0x000004B4
_080547E4: .4byte 0x0203F94C
_080547E8: .4byte 0x0203F950

    .thumb
sub_80547EC: @ 0x080547EC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r0, _08054810
	ldr r1, [r0]
	adds r0, r1, #0
	adds r0, #0x7a
	ldrh r0, [r0]
	cmp r0, #0
	bne _08054818
	adds r1, #0x9f
	ldrb r0, [r1]
	cmp r0, #0
	bne _08054814
	bl sub_80543D4
	b _08054818
	.align 2, 0
_08054810: .4byte 0x0203F950
_08054814:
	subs r0, #1
	strb r0, [r1]
_08054818:
	ldr r2, _08054860
	ldr r0, [r2]
	adds r0, #0xa3
	movs r1, #0
	strb r1, [r0]
	ldr r1, [r2]
	adds r1, #0xa2
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	movs r6, #0
	mov ip, r2
	ldr r7, _08054864
	ldr r0, _08054868
	mov sb, r0
_08054836:
	ldr r1, [r7]
	lsls r2, r6, #3
	adds r0, r2, r6
	lsls r5, r0, #3
	adds r3, r5, r1
	ldrh r4, [r3, #0x3a]
	movs r1, #0x3a
	ldrsh r0, [r3, r1]
	mov r8, r2
	cmp r0, #0xbe
	bne _0805484E
	b _080549BC
_0805484E:
	adds r0, r3, #0
	adds r0, #0x44
	ldrb r0, [r0]
	cmp r0, #0
	beq _0805486C
	cmp r0, #1
	beq _080548DA
	b _0805495E
	.align 2, 0
_08054860: .4byte 0x0203F950
_08054864: .4byte 0x0203F95C
_08054868: .4byte 0x0203F94C
_0805486C:
	ldrh r1, [r3, #0x3e]
	adds r1, #0x24
	strh r1, [r3, #0x3e]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x18
	adds r1, r4, r1
	strh r1, [r3, #0x3a]
	ldrh r0, [r3, #0x3c]
	ldrh r2, [r3, #0x38]
	adds r0, r0, r2
	strh r0, [r3, #0x38]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x18
	strh r0, [r3, #6]
	subs r1, #0x20
	strb r1, [r3, #8]
	ldr r0, [r7]
	adds r1, r5, r0
	movs r3, #0x3e
	ldrsh r0, [r1, r3]
	cmp r0, #0
	ble _0805495E
	ldrb r1, [r1, #8]
	subs r1, #0x56
	lsls r1, r1, #3
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r2, #0
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0xff
	bhi _080548B2
	movs r4, #0x80
	lsls r4, r4, #1
_080548B2:
	mov r3, sb
	ldr r0, [r3]
	adds r0, #0x2d
	ldrb r0, [r0]
	adds r0, r0, r6
	movs r1, #0
	adds r2, r4, #0
	bl sub_8025718
	mov r0, sb
	ldr r1, [r0]
	adds r1, #0x2d
	adds r0, r6, #3
	ldrb r1, [r1]
	adds r0, r0, r1
	movs r1, #0
	adds r2, r4, #0
	bl sub_8025718
	b _0805495E
_080548DA:
	ldrh r1, [r3, #0x3e]
	lsls r1, r1, #0x10
	asrs r0, r1, #0x18
	adds r0, r4, r0
	strh r0, [r3, #0x3a]
	cmp r1, #0
	bge _08054944
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0xc8
	rsbs r1, r1, #0
	cmp r0, r1
	bge _08054918
	movs r0, #0xfa
	lsls r0, r0, #3
	strh r0, [r3, #0x3e]
	mov r1, sb
	ldr r0, [r1]
	adds r0, #0x2d
	ldrb r0, [r0]
	adds r0, r0, r6
	movs r1, #0
	movs r2, #0x80
	lsls r2, r2, #1
	bl sub_8025718
	ldr r0, [r7]
	adds r0, r5, r0
	ldrh r1, [r0, #0x38]
	strh r1, [r0, #6]
	strh r1, [r0, #0x22]
_08054918:
	ldr r0, _080549A8
	ldr r0, [r0]
	adds r0, #0xa2
	ldrb r0, [r0]
	cmp r0, #0
	bne _08054944
	ldr r0, [r7]
	adds r1, r5, r0
	ldrh r0, [r1, #0x38]
	cmp r0, #0x4f
	bhi _08054934
	ldrh r0, [r1, #6]
	subs r0, #1
	strh r0, [r1, #6]
_08054934:
	ldr r0, [r7]
	adds r1, r5, r0
	ldrh r0, [r1, #0x38]
	cmp r0, #0xa0
	bls _08054944
	ldrh r0, [r1, #6]
	adds r0, #1
	strh r0, [r1, #6]
_08054944:
	ldr r0, [r7]
	mov r2, r8
	adds r1, r2, r6
	lsls r1, r1, #3
	adds r1, r1, r0
	ldrh r2, [r1, #0x3a]
	movs r3, #0x3a
	ldrsh r0, [r1, r3]
	cmp r0, #0
	ble _0805495E
	adds r0, r2, #0
	subs r0, #0x20
	strb r0, [r1, #8]
_0805495E:
	ldr r0, [r7]
	mov r2, r8
	adds r1, r2, r6
	lsls r1, r1, #3
	adds r1, r1, r0
	movs r3, #0x3a
	ldrsh r0, [r1, r3]
	cmp r0, #0xbd
	ble _080549B0
	movs r0, #0xbe
	strh r0, [r1, #0x3a]
	ldrh r2, [r1, #6]
	adds r1, r2, #0
	adds r1, #0xa
	ldr r0, _080549AC
	ldr r0, [r0]
	ldrh r3, [r0, #6]
	adds r0, r3, #0
	subs r0, #0xf
	cmp r1, r0
	ble _0805499E
	subs r1, #0x14
	adds r0, #0x1e
	cmp r1, r0
	bge _0805499E
	mov r0, sb
	ldr r1, [r0]
	ldrh r0, [r1, #0x22]
	cmp r0, #0
	bne _0805499E
	movs r0, #0x78
	strh r0, [r1, #0x22]
_0805499E:
	ldr r0, _080549A8
	ldr r1, [r0]
	adds r1, #0xa7
	movs r2, #2
	b _080549B8
	.align 2, 0
_080549A8: .4byte 0x0203F950
_080549AC: .4byte 0x0203F920
_080549B0:
	ldr r0, _080549E8
	ldr r1, [r0]
	adds r1, #0xa3
	movs r2, #1
_080549B8:
	strb r2, [r1]
	mov ip, r0
_080549BC:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #2
	bhi _080549C8
	b _08054836
_080549C8:
	mov r1, ip
	ldr r0, [r1]
	adds r2, r0, #0
	adds r2, #0xa2
	ldrb r0, [r2]
	cmp r0, #0
	bne _080549DA
	movs r0, #2
	strb r0, [r2]
_080549DA:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080549E8: .4byte 0x0203F950

    .thumb
sub_80549EC: @ 0x080549EC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	movs r6, #0
	ldr r0, _08054A20
	mov r8, r0
_080549F8:
	mov r1, r8
	ldr r2, [r1]
	lsls r1, r6, #3
	adds r0, r1, r6
	lsls r4, r0, #3
	adds r3, r4, r2
	movs r0, #0x3a
	ldrsh r2, [r3, r0]
	adds r7, r1, #0
	cmp r2, #0xbe
	beq _08054AE2
	adds r0, r3, #0
	adds r0, #0x44
	ldrb r0, [r0]
	cmp r0, #0
	beq _08054A24
	cmp r0, #1
	beq _08054A3C
	b _08054AE2
	.align 2, 0
_08054A20: .4byte 0x0203F95C
_08054A24:
	cmp r2, #0
	ble _08054AE2
	adds r0, r3, #0
	bl RenderSprite
	mov r1, r8
	ldr r0, [r1]
	adds r0, r0, r4
	adds r0, #0x1c
	bl RenderSprite
	b _08054AE2
_08054A3C:
	cmp r2, #0
	bge _08054A82
	movs r2, #0x3e
	ldrsh r0, [r3, r2]
	cmp r0, #0
	ble _08054A82
	movs r1, #0x3a
	ldrsh r0, [r3, r1]
	lsls r0, r0, #8
	movs r1, #0x80
	lsls r1, r1, #2
	bl CallARM_FX_Mul8
	asrs r0, r0, #8
	movs r2, #0xa0
	lsls r2, r2, #1
	adds r1, r2, #0
	subs r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r2, r1, #0x10
	ldr r0, _08054B20
	ldr r1, [r0]
	adds r1, #0x2d
	adds r0, r6, #3
	ldrb r1, [r1]
	adds r0, r0, r1
	movs r1, #0
	bl sub_8025718
	mov r3, r8
	ldr r0, [r3]
	adds r0, r0, r4
	adds r0, #0x1c
	bl RenderSprite
_08054A82:
	ldr r5, _08054B24
	ldr r0, [r5]
	adds r1, r7, r6
	lsls r4, r1, #3
	adds r1, r4, r0
	ldrh r2, [r1, #0x3a]
	movs r3, #0x3a
	ldrsh r0, [r1, r3]
	cmp r0, #0
	ble _08054AE2
	adds r0, r2, #0
	subs r0, #0x20
	strb r0, [r1, #8]
	ldr r0, [r5]
	adds r0, r0, r4
	bl RenderSprite
	ldr r0, [r5]
	adds r1, r4, r0
	movs r2, #0x3e
	ldrsh r0, [r1, r2]
	cmp r0, #0
	ble _08054AE2
	ldrh r1, [r1, #0x3a]
	movs r3, #0xa0
	lsls r3, r3, #1
	adds r0, r3, #0
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0xff
	bhi _08054AC6
	movs r2, #0x80
	lsls r2, r2, #1
_08054AC6:
	ldr r0, _08054B20
	ldr r1, [r0]
	adds r1, #0x2d
	adds r0, r6, #3
	ldrb r1, [r1]
	adds r0, r0, r1
	movs r1, #0
	bl sub_8025718
	ldr r0, [r5]
	adds r0, r0, r4
	adds r0, #0x1c
	bl RenderSprite
_08054AE2:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #2
	bls _080549F8
	movs r5, #0
	ldr r6, _08054B28
	ldr r7, _08054B2C
_08054AF2:
	ldr r2, [r6]
	lsls r0, r5, #3
	subs r0, r0, r5
	lsls r1, r0, #2
	adds r0, r2, r1
	ldrh r0, [r0, #0x1c]
	cmp r0, r7
	bne _08054B3C
	adds r4, r1, #0
	adds r4, #0x1c
	adds r0, r2, r4
	bl sub_8003770
	cmp r0, #0
	beq _08054B34
	ldr r0, [r6]
	adds r0, r0, r4
	ldr r1, _08054B30
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	b _08054B3C
	.align 2, 0
_08054B20: .4byte 0x0203F94C
_08054B24: .4byte 0x0203F95C
_08054B28: .4byte 0x0203F950
_08054B2C: .4byte 0x000004B4
_08054B30: .4byte 0x00000451
_08054B34:
	ldr r0, [r6]
	adds r0, r0, r4
	bl RenderSprite
_08054B3C:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #2
	bls _08054AF2
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

    .thumb
sub_8054B50: @ 0x08054B50
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	ldr r0, _08054B84
	ldr r0, [r0]
	adds r1, r0, #0
	adds r1, #0x55
	ldrb r0, [r1]
	cmp r0, #0
	beq _08054B6C
	b _08054CA8
_08054B6C:
	movs r0, #0
	movs r1, #1
	bl RandomMinMax
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	movs r0, #0
	mov sl, r0
	ldr r0, _08054B88
	ldr r1, [r0]
	adds r0, r1, #0
	b _08054B9E
	.align 2, 0
_08054B84: .4byte 0x0203F960
_08054B88: .4byte 0x0203F964
_08054B8C:
	mov r0, sl
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sl, r0
	lsls r0, r0, #1
	add r0, sl
	lsls r0, r0, #4
	adds r0, r0, r1
_08054B9E:
	adds r0, #0x2c
	ldrb r0, [r0]
	cmp r0, #0
	bne _08054B8C
	mov r1, sl
	cmp r1, #2
	bls _08054BAE
	b _08054CAC
_08054BAE:
	ldr r2, _08054C84
	mov sb, r2
	ldr r1, [r2]
	adds r0, r1, #0
	adds r0, #0x56
	ldrb r0, [r0]
	movs r6, #6
	subs r0, r6, r0
	lsls r0, r0, #4
	ldr r3, _08054C88
	adds r0, r0, r3
	ldrb r0, [r0, #4]
	adds r1, #0x55
	strb r0, [r1]
	ldr r4, _08054C8C
	mov r8, r4
	ldr r1, [r4]
	mov r0, sl
	lsls r5, r0, #1
	add r5, sl
	lsls r5, r5, #4
	adds r1, r5, r1
	adds r1, #0x2c
	movs r0, #1
	strb r0, [r1]
	ldr r0, [r2]
	adds r1, r0, #0
	adds r1, #0x50
	movs r2, #0
	ldrsh r3, [r1, r2]
	adds r0, #0x52
	movs r1, #0
	ldrsh r4, [r0, r1]
	mov r0, r8
	ldr r2, [r0]
	adds r2, r5, r2
	ldr r0, _08054C90
	ldr r0, [r0]
	lsls r1, r7, #3
	adds r1, r1, r0
	lsls r3, r3, #0x10
	ldr r0, [r1]
	adds r0, r0, r3
	str r0, [r2, #0x1c]
	lsls r4, r4, #0x10
	ldr r0, [r1, #4]
	adds r0, r0, r4
	str r0, [r2, #0x20]
	movs r0, #0
	movs r1, #0xf0
	bl RandomMinMax
	adds r4, r0, #0
	lsls r4, r4, #0x10
	mov r1, r8
	ldr r2, [r1]
	adds r2, r5, r2
	mov r3, sb
	ldr r0, [r3]
	adds r0, #0x56
	ldrb r0, [r0]
	subs r6, r6, r0
	lsls r6, r6, #4
	ldr r0, _08054C88
	adds r6, r6, r0
	ldr r1, [r6]
	str r1, [r2, #0x28]
	ldr r0, [r2, #0x1c]
	subs r4, r4, r0
	ldr r2, [r2, #0x20]
	movs r0, #0xaa
	lsls r0, r0, #0x10
	subs r0, r0, r2
	bl sub_800392C
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_800392C
	mov r2, r8
	ldr r1, [r2]
	adds r5, r5, r1
	str r0, [r5, #0x24]
	ldr r0, _08054C94
	ldrb r0, [r0]
	cmp r0, #0
	beq _08054CAC
	ldr r2, _08054C98
	movs r3, #0xbc
	lsls r3, r3, #3
	adds r0, r2, r3
	ldrh r0, [r0]
	ldr r3, _08054C9C
	ldr r4, _08054CA0
	adds r1, r2, r4
	ldrb r3, [r3]
	adds r1, r1, r3
	ldrb r1, [r1]
	ldr r3, _08054CA4
	adds r2, r2, r3
	ldr r2, [r2]
	movs r4, #0x80
	lsls r4, r4, #9
	adds r2, r2, r4
	bl audio_new_fx
	b _08054CAC
	.align 2, 0
_08054C84: .4byte 0x0203F960
_08054C88: .4byte 0x080B1F4C
_08054C8C: .4byte 0x0203F964
_08054C90: .4byte 0x0203F96C
_08054C94: .4byte gCanPlaySfx
_08054C98: .4byte 0x080CE440
_08054C9C: .4byte gSfxVolume
_08054CA0: .4byte 0x000005E2
_08054CA4: .4byte 0x000005E4
_08054CA8:
	subs r0, #1
	strb r0, [r1]
_08054CAC:
	movs r0, #0
	mov sl, r0
_08054CB0:
	ldr r2, _08054CE0
	ldr r1, [r2]
	mov r3, sl
	lsls r2, r3, #1
	adds r0, r2, r3
	lsls r4, r0, #4
	adds r3, r4, r1
	adds r0, r3, #0
	adds r0, #0x2c
	ldrb r0, [r0]
	str r2, [sp, #4]
	cmp r0, #1
	beq _08054CE4
	mov r1, sl
	adds r1, #1
	str r1, [sp]
	cmp r0, #1
	bgt _08054CD6
	b _08054EE6
_08054CD6:
	cmp r0, #2
	bne _08054CDC
	b _08054EC0
_08054CDC:
	b _08054EE6
	.align 2, 0
_08054CE0: .4byte 0x0203F964
_08054CE4:
	ldr r0, [r3, #0x1c]
	ldr r1, [r3, #0x24]
	adds r0, r0, r1
	str r0, [r3, #0x1c]
	ldr r1, [r3, #0x20]
	ldr r0, [r3, #0x28]
	adds r1, r1, r0
	str r1, [r3, #0x20]
	movs r0, #0xaa
	lsls r0, r0, #0x10
	cmp r1, r0
	ble _08054D14
	adds r0, r3, #0
	ldr r1, _08054E8C
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r2, _08054E90
	ldr r0, [r2]
	adds r0, r4, r0
	adds r0, #0x2c
	movs r1, #0
	strb r1, [r0]
_08054D14:
	movs r7, #0
	ldr r1, _08054E94
	ldr r0, [r1]
	adds r0, #0x2d
	mov r3, sl
	adds r3, #1
	str r3, [sp]
	mov ip, r1
	ldrb r0, [r0]
	cmp r7, r0
	bhs _08054DD2
	ldr r4, _08054E98
	mov sb, r4
	ldr r0, _08054E9C
	mov r8, r0
_08054D32:
	mov r1, sb
	ldr r0, [r1]
	lsls r6, r7, #5
	adds r4, r6, r0
	ldrb r0, [r4, #0x1d]
	cmp r0, #0
	beq _08054DC0
	ldr r2, _08054E90
	ldr r0, [r2]
	ldr r1, [sp, #4]
	add r1, sl
	lsls r5, r1, #4
	adds r3, r5, r0
	ldrh r2, [r3, #6]
	adds r0, r2, #0
	adds r0, #8
	ldrh r1, [r4, #6]
	cmp r0, r1
	ble _08054DC0
	subs r0, #0x10
	cmp r0, r1
	bge _08054DC0
	ldrb r2, [r3, #8]
	adds r0, r2, #0
	subs r0, #8
	ldrb r1, [r4, #8]
	cmp r0, r1
	bge _08054DC0
	adds r0, #0x10
	cmp r0, r1
	ble _08054DC0
	adds r0, r3, #0
	ldr r1, _08054EA0
	movs r2, #0
	movs r3, #1
	bl sub_8003368
	ldr r3, _08054E90
	ldr r0, [r3]
	adds r0, r5, r0
	adds r0, #0x2c
	movs r4, #0
	movs r1, #2
	strb r1, [r0]
	ldr r0, _08054EA4
	ldrb r0, [r0]
	cmp r0, #0
	beq _08054DB4
	movs r0, #0x82
	lsls r0, r0, #2
	add r0, r8
	ldrh r0, [r0]
	ldr r2, _08054EA8
	ldr r1, _08054EAC
	add r1, r8
	ldrb r2, [r2]
	adds r1, r1, r2
	ldrb r1, [r1]
	ldr r3, _08054EB0
	ldr r2, [r3]
	movs r3, #0x80
	lsls r3, r3, #9
	adds r2, r2, r3
	bl audio_new_fx
_08054DB4:
	mov r1, sb
	ldr r0, [r1]
	adds r0, r6, r0
	strb r4, [r0, #0x1d]
	ldr r2, _08054E94
	mov ip, r2
_08054DC0:
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	mov r3, ip
	ldr r0, [r3]
	adds r0, #0x2d
	ldrb r0, [r0]
	cmp r7, r0
	blo _08054D32
_08054DD2:
	ldr r7, _08054E90
	ldr r1, [r7]
	ldr r0, [sp, #4]
	add r0, sl
	lsls r6, r0, #4
	adds r4, r6, r1
	ldr r0, [r4, #0x20]
	ldr r1, _08054EB4
	adds r0, r0, r1
	ldr r1, _08054EB8
	cmp r0, r1
	bhi _08054E58
	ldr r0, _08054E94
	ldr r5, [r0]
	ldrh r0, [r5, #0x22]
	cmp r0, #0
	bne _08054E58
	ldrh r3, [r4, #6]
	adds r1, r3, #0
	adds r1, #8
	ldr r0, _08054EBC
	ldr r0, [r0]
	ldrh r2, [r0, #6]
	adds r0, r2, #0
	subs r0, #0xb
	cmp r1, r0
	ble _08054E58
	subs r1, #0x10
	adds r0, #0x1a
	cmp r1, r0
	bge _08054E58
	movs r0, #0x78
	strh r0, [r5, #0x22]
	adds r0, r4, #0
	ldr r1, _08054EA0
	movs r2, #0
	movs r3, #1
	bl sub_8003368
	ldr r0, [r7]
	adds r0, r6, r0
	adds r0, #0x2c
	movs r1, #2
	strb r1, [r0]
	ldr r0, _08054EA4
	ldrb r0, [r0]
	cmp r0, #0
	beq _08054E58
	ldr r2, _08054E9C
	movs r3, #0x82
	lsls r3, r3, #2
	adds r0, r2, r3
	ldrh r0, [r0]
	ldr r2, _08054EA8
	ldr r4, _08054E9C
	adds r3, #2
	adds r1, r4, r3
	ldrb r2, [r2]
	adds r1, r1, r2
	ldrb r1, [r1]
	ldr r4, _08054EB0
	ldr r2, [r4]
	movs r3, #0x80
	lsls r3, r3, #9
	adds r2, r2, r3
	bl audio_new_fx
_08054E58:
	ldr r4, _08054E90
	ldr r1, [r4]
	ldr r0, [sp, #4]
	add r0, sl
	lsls r0, r0, #4
	adds r0, r0, r1
	movs r2, #0x22
	ldrsh r1, [r0, r2]
	movs r0, #0x7d
	subs r0, r0, r1
	lsls r0, r0, #2
	movs r3, #0x80
	lsls r3, r3, #1
	adds r2, r0, r3
	cmp r2, #0xff
	bhi _08054E7A
	adds r2, r3, #0
_08054E7A:
	ldr r0, _08054E94
	ldr r0, [r0]
	adds r0, #0x2d
	ldrb r0, [r0]
	add r0, sl
	movs r1, #0
	bl sub_8025718
	b _08054EE6
	.align 2, 0
_08054E8C: .4byte 0x0000026E
_08054E90: .4byte 0x0203F964
_08054E94: .4byte 0x0203F94C
_08054E98: .4byte 0x0203F954
_08054E9C: .4byte 0x080CE440
_08054EA0: .4byte 0x000004EE
_08054EA4: .4byte gCanPlaySfx
_08054EA8: .4byte gSfxVolume
_08054EAC: .4byte 0x0000020A
_08054EB0: .4byte 0x080CE64C
_08054EB4: .4byte 0xFF73FFFF
_08054EB8: .4byte 0x0018FFFE
_08054EBC: .4byte 0x0203F920
_08054EC0:
	adds r0, r3, #0
	bl sub_8003770
	cmp r0, #0
	beq _08054EE6
	ldr r1, _08054F04
	ldr r0, [r1]
	adds r0, r0, r4
	ldr r1, _08054F08
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r2, _08054F04
	ldr r0, [r2]
	adds r0, r4, r0
	adds r0, #0x2c
	movs r1, #0
	strb r1, [r0]
_08054EE6:
	ldr r3, [sp]
	lsls r0, r3, #0x18
	lsrs r0, r0, #0x18
	mov sl, r0
	cmp r0, #2
	bhi _08054EF4
	b _08054CB0
_08054EF4:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08054F04: .4byte 0x0203F964
_08054F08: .4byte 0x0000026E

	.thumb
sub_8054F0C: @ 0x08054F0C
	push {r4, r5, r6, r7, lr}
	ldr r5, _08054F34
	ldr r0, [r5]
	bl RenderSprite
	bl sub_8053404
	ldr r0, _08054F38
	ldrb r0, [r0, #0x13]
	cmp r0, #0
	beq _08054F26
	bl sub_8053D38
_08054F26:
	ldr r0, _08054F3C
	ldrb r0, [r0]
	cmp r0, #1
	beq _08054F40
	cmp r0, #2
	beq _08054FF0
	b _080550A4
	.align 2, 0
_08054F34: .4byte 0x0203F94C
_08054F38: .4byte gGameStatus
_08054F3C: .4byte 0x0203F93F
_08054F40:
	bl sub_80549EC
	ldr r0, _08054FB8
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bhi _08054FE4
	ldr r4, _08054FBC
	ldr r1, [r4]
	adds r0, r1, #0
	adds r0, #0x7a
	ldrh r0, [r0]
	cmp r0, #0
	beq _08054FE4
	adds r0, r1, #0
	adds r0, #0xa3
	ldrb r0, [r0]
	cmp r0, #0
	bne _08054FE4
	adds r0, r1, #0
	bl RenderSprite
	ldr r1, [r4]
	adds r0, r1, #0
	adds r0, #0xa8
	ldrb r0, [r0]
	cmp r0, #0
	beq _08054FE4
	adds r0, r1, #0
	adds r0, #0xa7
	ldrb r0, [r0]
	cmp r0, #0
	beq _08054FE4
	ldr r4, [r5]
	ldr r0, _08054FC0
	ldrb r0, [r0]
	cmp r0, #0
	beq _08054FD4
	ldr r2, _08054FC4
	movs r1, #0x8a
	lsls r1, r1, #3
	adds r0, r2, r1
	ldrh r0, [r0]
	ldr r3, _08054FC8
	ldr r5, _08054FCC
	adds r1, r2, r5
	ldrb r3, [r3]
	adds r1, r1, r3
	ldrb r1, [r1]
	ldr r7, _08054FD0
	adds r2, r2, r7
	ldr r2, [r2]
	movs r3, #0x80
	lsls r3, r3, #9
	adds r2, r2, r3
	bl audio_new_fx
	b _08054FD8
	.align 2, 0
_08054FB8: .4byte 0x0203F93D
_08054FBC: .4byte 0x0203F950
_08054FC0: .4byte gCanPlaySfx
_08054FC4: .4byte 0x080CE440
_08054FC8: .4byte gSfxVolume
_08054FCC: .4byte 0x00000452
_08054FD0: .4byte 0x00000454
_08054FD4:
	movs r0, #1
	rsbs r0, r0, #0
_08054FD8:
	str r0, [r4, #0x1c]
	ldr r0, _08054FEC
	ldr r0, [r0]
	adds r0, #0xa8
	movs r1, #0
	strb r1, [r0]
_08054FE4:
	bl sub_8053B54
	b _080550A4
	.align 2, 0
_08054FEC: .4byte 0x0203F950
_08054FF0:
	movs r4, #0
	ldr r5, _080550AC
_08054FF4:
	ldr r1, [r5]
	lsls r0, r4, #1
	adds r0, r0, r4
	lsls r2, r0, #4
	adds r1, r2, r1
	adds r0, r1, #0
	adds r0, #0x2c
	ldrb r0, [r0]
	cmp r0, #0
	beq _0805501C
	movs r7, #0x1e
	ldrsh r0, [r1, r7]
	strh r0, [r1, #6]
	movs r3, #0x22
	ldrsh r0, [r1, r3]
	strb r0, [r1, #8]
	ldr r0, [r5]
	adds r0, r0, r2
	bl RenderSprite
_0805501C:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #2
	bls _08054FF4
	bl sub_8053B54
	ldr r0, _080550B0
	ldrb r0, [r0]
	cmp r0, #7
	bne _0805505C
	ldr r0, _080550B4
	ldr r0, [r0]
	ldr r1, [r0, #0xc]
	ldr r0, [r0, #0x14]
	cmp r1, r0
	bgt _0805505C
	movs r4, #0
	ldr r5, _080550B8
_08055042:
	lsls r1, r4, #2
	adds r1, r1, r4
	lsls r1, r1, #3
	ldr r0, [r5]
	adds r0, r0, r1
	movs r1, #1
	bl SetSpritePriority
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #5
	bls _08055042
_0805505C:
	movs r4, #0
	ldr r6, _080550B8
_08055060:
	ldr r1, [r6]
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r5, r0, #3
	adds r3, r5, r1
	adds r0, r3, #0
	adds r0, #0x24
	ldrb r0, [r0]
	cmp r0, #0
	beq _0805509A
	ldr r0, _080550B4
	ldr r1, [r0]
	adds r2, r1, #0
	adds r2, #0x50
	movs r7, #0x1e
	ldrsh r0, [r3, r7]
	ldrh r2, [r2]
	adds r0, r0, r2
	strh r0, [r3, #6]
	adds r1, #0x52
	movs r2, #0x22
	ldrsh r0, [r3, r2]
	ldrb r1, [r1]
	adds r0, r0, r1
	strb r0, [r3, #8]
	ldr r0, [r6]
	adds r0, r0, r5
	bl RenderSprite
_0805509A:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #5
	bls _08055060
_080550A4:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080550AC: .4byte 0x0203F964
_080550B0: .4byte 0x0203F93D
_080550B4: .4byte 0x0203F960
_080550B8: .4byte 0x0203F968

    .thumb
sub_80550BC: @ 0x080550BC
	push {r4, r5, r6, r7, lr}
	ldr r0, _080550D0
	ldrb r0, [r0]
	cmp r0, #1
	beq _080550D4
	cmp r0, #2
	bne _080550CC
	b _080552B0
_080550CC:
	b _080552C0
	.align 2, 0
_080550D0: .4byte 0x0203F93F
_080550D4:
	movs r7, #0
	ldr r4, _0805511C
	ldr r1, [r4]
	adds r0, r1, #0
	adds r0, #0x9e
	ldrb r0, [r0]
	cmp r0, #0
	beq _08055124
	adds r0, r1, #0
	adds r0, #0x7a
	ldrh r0, [r0]
	movs r1, #0x78
	bl sub_8003934
	adds r7, r0, #0
	ldr r0, [r4]
	adds r0, #0x76
	movs r1, #0xc0
	lsls r1, r1, #8
	strh r1, [r0]
	bl sub_80536F0
	asrs r0, r7, #3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl sub_8053660
	ldr r1, [r4]
	adds r1, #0x74
	ldr r2, _08055120
	adds r0, r2, #0
	ldrh r6, [r1]
	adds r0, r0, r6
	strh r0, [r1]
	b _08055128
	.align 2, 0
_0805511C: .4byte 0x0203F950
_08055120: .4byte 0x00001B58
_08055124:
	bl sub_80536F0
_08055128:
	ldr r2, _080551AC
	ldrb r0, [r2]
	subs r0, #1
	strb r0, [r2]
	lsls r0, r0, #0x18
	ldr r5, _080551B0
	cmp r0, #0
	bne _08055172
	ldr r1, _080551B4
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	movs r0, #8
	strb r0, [r2]
	ldr r0, [r5]
	adds r1, r0, #0
	adds r1, #0xa4
	ldrb r0, [r1]
	cmp r0, #0xef
	bhi _08055172
	adds r0, #1
	strb r0, [r1]
	ldr r3, _080551B8
	ldr r2, [r5]
	adds r2, #0xa4
	ldrb r0, [r2]
	lsls r0, r0, #8
	movs r1, #0xf0
	orrs r0, r1
	strh r0, [r3]
	ldrb r0, [r2]
	cmp r0, #0xf0
	bne _08055172
	ldr r1, _080551BC
	ldr r2, _080551C0
	adds r0, r2, #0
	strh r0, [r1]
_08055172:
	ldr r1, _080551C4
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	ldr r3, [r5]
	adds r2, r3, #0
	adds r2, #0x72
	movs r6, #0x80
	lsls r6, r6, #1
	adds r4, r6, #0
	ldrh r6, [r2]
	adds r0, r4, r6
	strh r0, [r2]
	ldr r0, _080551C8
	ldr r0, [r0]
	adds r0, #0x28
	ldrb r0, [r0]
	adds r6, r1, #0
	cmp r0, #0
	beq _080551CC
	adds r1, r3, #0
	adds r1, #0x76
	movs r2, #0xc8
	lsls r2, r2, #2
	adds r0, r2, #0
	ldrh r2, [r1]
	adds r0, r0, r2
	b _080551D4
	.align 2, 0
_080551AC: .4byte 0x0203F931
_080551B0: .4byte 0x0203F950
_080551B4: .4byte 0x0203F932
_080551B8: .4byte 0x04000040
_080551BC: .4byte 0x04000048
_080551C0: .4byte 0x00003F3F
_080551C4: .4byte 0x0203F935
_080551C8: .4byte 0x0203F94C
_080551CC:
	adds r1, r3, #0
	adds r1, #0x76
	ldrh r2, [r1]
	adds r0, r4, r2
_080551D4:
	strh r0, [r1]
	ldr r2, [r5]
	adds r0, r2, #0
	adds r0, #0x9e
	ldrb r0, [r0]
	cmp r0, #0
	beq _08055220
	ldr r1, _08055218
	adds r0, r2, #0
	adds r0, #0x74
	ldrh r0, [r0]
	lsrs r0, r0, #8
	lsls r0, r0, #1
	adds r0, r0, r1
	movs r6, #0
	ldrsh r0, [r0, r6]
	movs r1, #0x80
	lsls r1, r1, #2
	bl CallARM_FX_Mul8
	adds r2, r0, #0
	adds r1, r7, #0
	bl CallARM_FX_Mul8
	adds r2, r0, #0
	ldr r1, _0805521C
	ldr r0, [r5]
	adds r0, #0x70
	ldrh r0, [r0]
	lsls r0, r0, #8
	adds r0, r0, r2
	asrs r0, r0, #8
	strh r0, [r1]
	b _080552C0
	.align 2, 0
_08055218: .4byte 0x080B1AE4
_0805521C: .4byte 0x0203F92C
_08055220:
	ldrb r0, [r6]
	cmp r0, #0
	bne _080552C0
	adds r0, r2, #0
	adds r0, #0x78
	ldrb r0, [r0]
	cmp r0, #0
	beq _08055244
	ldr r0, _08055240
	ldrh r1, [r0]
	subs r1, #1
	strh r1, [r0]
	ldrh r0, [r2, #6]
	adds r0, #1
	b _08055250
	.align 2, 0
_08055240: .4byte 0x0203F92C
_08055244:
	ldr r0, _080552A0
	ldrh r1, [r0]
	adds r1, #1
	strh r1, [r0]
	ldrh r0, [r2, #6]
	subs r0, #1
_08055250:
	strh r0, [r2, #6]
	ldr r4, _080552A4
	ldr r1, _080552A8
	ldr r0, [r5]
	adds r0, #0x72
	ldrh r0, [r0]
	lsrs r0, r0, #8
	lsls r0, r0, #1
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	movs r1, #0x80
	lsls r1, r1, #1
	bl CallARM_FX_Mul8
	asrs r0, r0, #8
	adds r0, #0x20
	strh r0, [r4]
	ldr r0, _080552A0
	movs r2, #0
	ldrsh r1, [r0, r2]
	movs r0, #5
	rsbs r0, r0, #0
	cmp r1, r0
	beq _08055286
	cmp r1, #0x32
	bne _08055298
_08055286:
	ldr r0, [r5]
	movs r1, #0
	adds r2, r0, #0
	adds r2, #0x78
	ldrb r0, [r2]
	cmp r0, #0
	bne _08055296
	movs r1, #1
_08055296:
	strb r1, [r2]
_08055298:
	ldr r1, _080552AC
	movs r0, #0xe
	strb r0, [r1]
	b _080552C0
	.align 2, 0
_080552A0: .4byte 0x0203F92C
_080552A4: .4byte 0x0203F92E
_080552A8: .4byte 0x080B1AE4
_080552AC: .4byte 0x0203F935
_080552B0:
	ldr r0, _080552C8
	ldr r1, [r0]
	adds r1, #0x4c
	ldrh r0, [r1]
	adds r0, #0xc8
	strh r0, [r1]
	bl sub_805381C
_080552C0:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080552C8: .4byte 0x0203F960

    .thumb
sub_80552CC: @ 0x080552CC
	push {r4, lr}
	bl sub_80550BC
	ldr r0, _080552E0
	ldrb r0, [r0]
	cmp r0, #1
	beq _080552E4
	cmp r0, #2
	beq _0805534A
	b _08055364
	.align 2, 0
_080552E0: .4byte 0x0203F93F
_080552E4:
	ldr r1, _0805532C
	ldr r0, _08055330
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	strh r0, [r1]
	adds r1, #4
	ldr r0, _08055334
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #2
	ldr r0, _08055338
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r0, _0805533C
	ldrb r0, [r0]
	cmp r0, #4
	bne _08055364
	ldr r0, _08055340
	ldr r0, [r0]
	adds r3, r0, #0
	adds r3, #0x9c
	ldrh r0, [r3]
	cmp r0, #0
	bne _08055344
	movs r2, #0x80
	lsls r2, r2, #0x13
	ldrh r0, [r2]
	movs r4, #0x80
	lsls r4, r4, #4
	adds r1, r4, #0
	eors r0, r1
	strh r0, [r2]
	movs r0, #0xd
	strh r0, [r3]
	b _08055364
	.align 2, 0
_0805532C: .4byte 0x04000018
_08055330: .4byte 0x0203F932
_08055334: .4byte 0x0203F92C
_08055338: .4byte 0x0203F92E
_0805533C: .4byte 0x0203F93D
_08055340: .4byte 0x0203F950
_08055344:
	subs r0, #1
	strh r0, [r3]
	b _08055364
_0805534A:
	ldr r2, _0805536C
	ldr r0, _08055370
	ldr r1, [r0]
	adds r0, r1, #0
	adds r0, #0x50
	ldrh r0, [r0]
	rsbs r0, r0, #0
	strh r0, [r2]
	adds r2, #2
	adds r1, #0x52
	ldrh r0, [r1]
	rsbs r0, r0, #0
	strh r0, [r2]
_08055364:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805536C: .4byte 0x04000014
_08055370: .4byte 0x0203F960

    .thumb
sub_8055374: @ 0x08055374
	push {r4, lr}
	ldr r3, _080553C4
	ldr r1, [r3]
	adds r1, #0x26
	ldrb r0, [r1]
	adds r0, #4
	strb r0, [r1]
	ldr r1, _080553C8
	ldr r2, [r3]
	adds r0, r2, #0
	adds r0, #0x26
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	movs r4, #0
	ldrsh r1, [r0, r4]
	lsls r0, r1, #4
	subs r0, r0, r1
	ldr r1, _080553CC
	ldr r1, [r1]
	lsls r0, r0, #0x11
	asrs r0, r0, #0x10
	ldrh r4, [r2, #0x20]
	adds r0, r0, r4
	asrs r0, r0, #8
	strh r0, [r1, #6]
	adds r2, #0x27
	ldrb r0, [r2]
	cmp r0, #0
	bne _080553D0
	ldrb r0, [r1, #8]
	adds r0, #1
	strb r0, [r1, #8]
	ldr r1, [r3]
	adds r1, #0x27
	ldrb r0, [r1]
	adds r0, #4
	strb r0, [r1]
	b _080553D4
	.align 2, 0
_080553C4: .4byte 0x0203F94C
_080553C8: .4byte 0x080B1AE4
_080553CC: .4byte 0x0203F920
_080553D0:
	subs r0, #1
	strb r0, [r2]
_080553D4:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	.thumb
sub_80553DC: @ 0x080553DC
	push {r4, r5, r6, r7, lr}
	ldr r0, _080553F4
	ldrb r1, [r0]
	adds r6, r0, #0
	cmp r1, #7
	bls _080553EA
	b _08055A0E
_080553EA:
	lsls r0, r1, #2
	ldr r1, _080553F8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080553F4: .4byte 0x0203F93D
_080553F8: .4byte 0x080553FC
_080553FC: @ jump table
	.4byte _0805541C @ case 0
	.4byte _08055440 @ case 1
	.4byte _080554D8 @ case 2
	.4byte _080555EE @ case 3
	.4byte _080556BC @ case 4
	.4byte _0805571C @ case 5
	.4byte _08055736 @ case 6
	.4byte _08055940 @ case 7
_0805541C:
	ldr r0, _0805542C
	ldrb r0, [r0]
	cmp r0, #1
	beq _08055430
	cmp r0, #2
	beq _0805543A
	b _08055A0E
	.align 2, 0
_0805542C: .4byte 0x0203F93F
_08055430:
	bl sub_80534C4
	bl sub_80550BC
	b _08055A0E
_0805543A:
	bl sub_8053550
	b _08055A0E
_08055440:
	ldr r0, _08055450
	ldrb r2, [r0]
	cmp r2, #1
	beq _08055454
	cmp r2, #2
	beq _08055470
	b _08055498
	.align 2, 0
_08055450: .4byte 0x0203F93F
_08055454:
	ldr r1, _08055468
	ldr r0, _0805546C
	ldrh r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	lsrs r0, r0, #0xb
	bics r2, r0
	b _08055494
	.align 2, 0
_08055468: .4byte gPlayerStateSettings
_0805546C: .4byte gPlayerState
_08055470:
	movs r2, #0
	ldr r1, _080554A4
	ldr r0, _080554A8
	ldrh r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #4
	ands r0, r1
	cmp r0, #0
	bne _08055494
	ldr r0, _080554AC
	ldr r0, [r0]
	ldr r0, [r0, #0xc]
	cmp r0, #0
	bne _08055494
	movs r2, #1
_08055494:
	cmp r2, #0
	beq _080554B4
_08055498:
	bl sub_80524D8
	ldr r1, _080554B0
	movs r0, #2
	strb r0, [r1]
	b _08055A0E
	.align 2, 0
_080554A4: .4byte gPlayerStateSettings
_080554A8: .4byte gPlayerState
_080554AC: .4byte 0x0203F960
_080554B0: .4byte 0x0203F93D
_080554B4:
	ldr r0, _080554D0
	ldr r1, [r0]
	ldr r0, [r1, #0xc]
	cmp r0, #0
	bgt _080554C0
	b _08055A0E
_080554C0:
	ldr r3, _080554D4
	adds r0, r0, r3
	str r0, [r1, #0xc]
	cmp r0, #0
	blt _080554CC
	b _08055712
_080554CC:
	str r2, [r1, #0xc]
	b _08055712
	.align 2, 0
_080554D0: .4byte 0x0203F960
_080554D4: .4byte 0xFFFFB000
_080554D8:
	movs r4, #0
	movs r5, #0
	movs r7, #0
	movs r0, #0
	mov ip, r0
	ldr r0, _080554F4
	ldrb r0, [r0]
	cmp r0, #1
	beq _080554F8
	cmp r0, #2
	beq _08055506
	.2byte 0xEE00, 0xEE00
	b _08055512
	.align 2, 0
_080554F4: .4byte 0x0203F93F
_080554F8:
	movs r4, #0xbb
	lsls r4, r4, #1
	movs r5, #0xe
	movs r7, #5
	movs r1, #0x64
	mov ip, r1
	b _08055512
_08055506:
	movs r4, #0xbb
	lsls r4, r4, #1
	movs r5, #0xe
	movs r7, #5
	movs r2, #0x64
	mov ip, r2
_08055512:
	ldr r2, _080555C8
	ldr r0, [r2]
	adds r0, #0x29
	movs r1, #0
	strb r1, [r0]
	ldr r0, _080555CC
	ldrb r0, [r0, #0x13]
	adds r6, r2, #0
	cmp r0, #0
	beq _080555E4
	ldr r2, _080555D0
	ldrh r1, [r2]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08055558
	ldr r0, _080555D4
	ldr r3, [r0]
	ldr r1, _080555D8
	ldrh r0, [r3, #6]
	ldrb r1, [r1]
	cmp r0, r1
	bls _08055558
	ldr r0, [r6]
	ldrh r1, [r0, #0x20]
	subs r1, r1, r4
	strh r1, [r0, #0x20]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x18
	strh r1, [r3, #6]
	adds r1, r1, r5
	strh r1, [r0, #6]
	adds r0, #0x29
	movs r1, #1
	strb r1, [r0]
_08055558:
	ldrh r1, [r2]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08055588
	ldr r0, _080555D4
	ldr r3, [r0]
	ldr r1, _080555DC
	ldrh r0, [r3, #6]
	ldrb r1, [r1]
	cmp r0, r1
	bhs _08055588
	ldr r0, [r6]
	ldrh r1, [r0, #0x20]
	adds r1, r4, r1
	strh r1, [r0, #0x20]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x18
	strh r1, [r3, #6]
	adds r1, r1, r5
	strh r1, [r0, #6]
	adds r0, #0x29
	movs r1, #1
	strb r1, [r0]
_08055588:
	ldrh r1, [r2]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0805559E
	ldr r1, [r6]
	ldrb r0, [r1, #8]
	cmp r0, r7
	bls _0805559E
	subs r0, #1
	strb r0, [r1, #8]
_0805559E:
	ldrh r1, [r2]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080555B4
	ldr r2, [r6]
	ldrb r0, [r2, #8]
	cmp r0, ip
	bhs _080555B4
	adds r0, #1
	strb r0, [r2, #8]
_080555B4:
	ldr r0, _080555E0
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080555E8
	bl sub_8053FCC
	b _080555E8
	.align 2, 0
_080555C8: .4byte 0x0203F94C
_080555CC: .4byte gGameStatus
_080555D0: .4byte gKeysPressed
_080555D4: .4byte 0x0203F920
_080555D8: .4byte 0x0203F936
_080555DC: .4byte 0x0203F937
_080555E0: .4byte gKeysDown
_080555E4:
	bl sub_8055374
_080555E8:
	bl sub_8054150
	b _08055A0E
_080555EE:
	ldr r1, _08055624
	ldr r0, _08055628
	ldrh r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #4
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0
	beq _0805560A
	b _08055A0E
_0805560A:
	ldr r0, _0805562C
	movs r1, #1
	strb r1, [r0]
	ldr r0, _08055630
	ldrb r0, [r0]
	cmp r0, #1
	beq _08055634
	cmp r0, #2
	beq _0805565C
	movs r0, #4
	strb r0, [r6]
	b _08055A0E
	.align 2, 0
_08055624: .4byte gPlayerStateSettings
_08055628: .4byte gPlayerState
_0805562C: .4byte 0x0203F941
_08055630: .4byte 0x0203F93F
_08055634:
	ldr r4, _08055650
	ldr r0, [r4]
	ldr r1, _08055654
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r1, _08055658
	movs r0, #0xc
	strb r0, [r1]
	ldr r0, [r4]
	adds r0, #0xa5
	strb r5, [r0]
	b _080556AE
	.align 2, 0
_08055650: .4byte 0x0203F950
_08055654: .4byte 0x000004C6
_08055658: .4byte 0x0203F93B
_0805565C:
	ldr r0, _08055690
	ldr r4, [r0]
	ldr r0, _08055694
	ldrb r0, [r0]
	cmp r0, #0
	beq _080556A8
	ldr r2, _08055698
	movs r3, #0x87
	lsls r3, r3, #3
	adds r0, r2, r3
	ldrh r0, [r0]
	ldr r3, _0805569C
	ldr r5, _080556A0
	adds r1, r2, r5
	ldrb r3, [r3]
	adds r1, r1, r3
	ldrb r1, [r1]
	ldr r3, _080556A4
	adds r2, r2, r3
	ldr r2, [r2]
	movs r5, #0x80
	lsls r5, r5, #9
	adds r2, r2, r5
	bl audio_new_fx
	b _080556AC
	.align 2, 0
_08055690: .4byte 0x0203F960
_08055694: .4byte gCanPlaySfx
_08055698: .4byte 0x080CE440
_0805569C: .4byte gSfxVolume
_080556A0: .4byte 0x0000043A
_080556A4: .4byte 0x0000043C
_080556A8:
	movs r0, #1
	rsbs r0, r0, #0
_080556AC:
	str r0, [r4, #0x28]
_080556AE:
	ldr r1, _080556B8
	movs r0, #4
	strb r0, [r1]
	b _08055A0E
	.align 2, 0
_080556B8: .4byte 0x0203F93D
_080556BC:
	ldr r0, _080556D0
	ldrb r0, [r0]
	cmp r0, #1
	beq _080556D4
	cmp r0, #2
	beq _080556DA
	movs r0, #5
	strb r0, [r6]
	b _08055A0E
	.align 2, 0
_080556D0: .4byte 0x0203F93F
_080556D4:
	bl sub_8053588
	b _08055A0E
_080556DA:
	ldr r0, _080556FC
	ldr r1, [r0]
	ldr r2, [r1, #0xc]
	ldr r0, _08055700
	cmp r2, r0
	bge _0805570C
	ldr r0, _08055704
	ldrb r0, [r0]
	cmp r0, #0
	beq _080556F4
	ldr r0, [r1, #0x28]
	bl audio_halt_fx
_080556F4:
	ldr r1, _08055708
	movs r0, #5
	strb r0, [r1]
	b _08055A0E
	.align 2, 0
_080556FC: .4byte 0x0203F960
_08055700: .4byte 0xFF880000
_08055704: .4byte gCanPlaySfx
_08055708: .4byte 0x0203F93D
_0805570C:
	ldr r3, _08055718
	adds r0, r2, r3
	str r0, [r1, #0xc]
_08055712:
	bl sub_8054130
	b _08055A0E
	.align 2, 0
_08055718: .4byte 0xFFFEC000
_0805571C:
	ldr r0, _0805572C
	ldrb r0, [r0]
	cmp r0, #1
	bne _08055730
	bl sub_80535D8
	b _08055A0E
	.align 2, 0
_0805572C: .4byte 0x0203F93F
_08055730:
	movs r0, #6
	strb r0, [r6]
	b _08055A0E
_08055736:
	ldr r0, _0805576C
	ldr r0, [r0]
	movs r1, #3
	bl Free
	ldr r0, _08055770
	ldr r0, [r0]
	movs r1, #3
	bl Free
	ldr r0, _08055774
	ldr r0, [r0]
	movs r1, #3
	bl Free
	ldr r0, _08055778
	ldr r0, [r0]
	movs r1, #3
	bl Free
	ldr r0, _0805577C
	ldrb r0, [r0]
	cmp r0, #1
	beq _08055780
	cmp r0, #2
	beq _080557E4
	b _0805585C
	.align 2, 0
_0805576C: .4byte 0x0203F920
_08055770: .4byte 0x0203F94C
_08055774: .4byte gMatrices
_08055778: .4byte 0x0203F954
_0805577C: .4byte 0x0203F93F
_08055780:
	ldr r0, _080557CC
	ldr r0, [r0]
	movs r1, #3
	bl Free
	ldr r0, _080557D0
	ldr r0, [r0]
	movs r1, #3
	bl Free
	ldr r0, _080557D4
	ldr r0, [r0]
	movs r1, #3
	bl Free
	ldr r1, _080557D8
	ldr r5, _080557DC
	adds r0, r5, #0
	strh r0, [r1]
	ldr r0, _080557E0
	movs r1, #1
	bl sub_80270AC
	movs r2, #0x80
	lsls r2, r2, #0x13
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #4
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldrh r0, [r2]
	movs r5, #0x80
	lsls r5, r5, #6
	adds r1, r5, #0
	eors r0, r1
	strh r0, [r2]
	b _0805585C
	.align 2, 0
_080557CC: .4byte 0x0203F950
_080557D0: .4byte 0x0203F958
_080557D4: .4byte 0x0203F95C
_080557D8: .4byte 0x04000052
_080557DC: .4byte 0x00000907
_080557E0: .4byte 0x00000FFF
_080557E4:
	ldr r3, _08055898
	movs r2, #0
	ldr r0, _0805589C
	ldr r1, [r0]
	adds r0, r1, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, #0
	bne _080557F8
	movs r2, #1
_080557F8:
	strb r2, [r3]
	adds r0, r1, #0
	movs r1, #3
	bl Free
	ldr r0, _080558A0
	ldr r0, [r0]
	movs r1, #3
	bl Free
	ldr r0, _080558A4
	ldr r0, [r0]
	movs r1, #3
	bl Free
	ldr r0, _080558A8
	ldr r0, [r0]
	movs r1, #3
	bl Free
	ldr r0, _080558AC
	ldr r0, [r0]
	movs r1, #3
	bl Free
	ldr r0, _080558B0
	movs r1, #1
	bl sub_80270AC
	movs r1, #0x80
	lsls r1, r1, #0x13
	ldr r0, _080558B4
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #8
	ldr r0, _080558B8
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #2
	ldr r0, _080558BC
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #2
	ldr r0, _080558C0
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #2
	ldr r0, _080558C4
	ldrh r0, [r0]
	strh r0, [r1]
_0805585C:
	ldr r0, _080558C8
	movs r2, #0
	strb r2, [r0]
	ldr r1, _080558CC
	ldr r0, _080558D0
	str r0, [r1]
	ldr r1, _080558D4
	ldr r0, _080558D8
	str r0, [r1]
	ldr r1, _080558DC
	ldr r0, _080558E0
	str r0, [r1]
	ldr r0, _080558E4
	strb r2, [r0]
	ldr r0, _080558E8
	ldr r0, [r0]
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_8003884
	ldr r0, _080558EC
	ldrb r0, [r0]
	cmp r0, #1
	beq _08055910
	cmp r0, #1
	bgt _080558F0
	cmp r0, #0
	beq _080558F6
	b _08055A0E
	.align 2, 0
_08055898: .4byte 0x0203F941
_0805589C: .4byte 0x0203F960
_080558A0: .4byte 0x0203F964
_080558A4: .4byte 0x0203F96C
_080558A8: .4byte 0x0203F968
_080558AC: .4byte 0x0203F958
_080558B0: .4byte 0x00000FFF
_080558B4: .4byte word_2000342
_080558B8: .4byte word_2000344
_080558BC: .4byte word_2000346
_080558C0: .4byte word_2000348
_080558C4: .4byte word_200034A
_080558C8: .4byte byte_20020B3
_080558CC: .4byte gNullsub_3
_080558D0: .4byte 0x08009DD5
_080558D4: .4byte gNullsub_4
_080558D8: .4byte 0x08009DD9
_080558DC: .4byte gNullsub_5
_080558E0: .4byte 0x08009DDD
_080558E4: .4byte gIsSlideMiniGame
_080558E8: .4byte dword_2000FC8
_080558EC: .4byte 0x0203F940
_080558F0:
	cmp r0, #2
	beq _08055928
	b _08055A0E
_080558F6:
	ldr r0, _08055908
	ldrb r0, [r0]
	ldr r1, _0805590C
	ldrb r1, [r1]
	movs r2, #0
	bl sub_800D5FC
	b _08055A0E
	.align 2, 0
_08055908: .4byte 0x0203F93F
_0805590C: .4byte 0x0203F941
_08055910:
	ldr r0, _08055920
	ldrb r0, [r0]
	ldr r1, _08055924
	ldrb r1, [r1]
	movs r2, #0
	bl sub_800D8E8
	b _08055A0E
	.align 2, 0
_08055920: .4byte 0x0203F93F
_08055924: .4byte 0x0203F941
_08055928:
	ldr r0, _08055938
	ldrb r0, [r0]
	ldr r1, _0805593C
	ldrb r1, [r1]
	movs r2, #0
	bl sub_800DA04
	b _08055A0E
	.align 2, 0
_08055938: .4byte 0x0203F93F
_0805593C: .4byte 0x0203F941
_08055940:
	ldr r2, _0805597C
	ldr r4, [r2]
	ldr r1, [r4, #0xc]
	ldr r0, [r4, #0x14]
	cmp r1, r0
	bgt _08055988
	ldr r2, _08055980
	ldrh r3, [r2]
	ldr r1, _08055984
	adds r0, r1, #0
	ands r0, r3
	strh r0, [r2]
	ldrh r0, [r2]
	movs r3, #2
	orrs r0, r3
	strh r0, [r2]
	subs r2, #2
	ldrh r0, [r2]
	ands r1, r0
	strh r1, [r2]
	ldrh r0, [r2]
	movs r1, #1
	orrs r0, r1
	strh r0, [r2]
	movs r0, #0
	str r0, [r4, #0x18]
	str r0, [r4, #0x1c]
	strb r3, [r6]
	b _080559A2
	.align 2, 0
_0805597C: .4byte 0x0203F960
_08055980: .4byte 0x0400000C
_08055984: .4byte 0x0000FFF0
_08055988:
	ldr r0, [r4, #0x1c]
	ldr r1, _080559E8
	adds r0, r0, r1
	str r0, [r4, #0x1c]
	ldr r1, _080559EC
	cmp r0, r1
	bge _08055998
	str r1, [r4, #0x1c]
_08055998:
	ldr r0, [r2]
	ldr r1, [r0, #0xc]
	ldr r2, [r0, #0x1c]
	adds r1, r1, r2
	str r1, [r0, #0xc]
_080559A2:
	bl sub_8054130
	ldr r4, _080559F0
	ldr r0, [r4]
	ldr r0, [r0, #0x28]
	bl audio_fx_still_active
	cmp r0, #0
	bne _08055A0E
	ldr r4, [r4]
	ldr r0, _080559F4
	ldrb r0, [r0]
	cmp r0, #0
	beq _08055A08
	ldr r2, _080559F8
	movs r3, #0xb3
	lsls r3, r3, #3
	adds r0, r2, r3
	ldrh r0, [r0]
	ldr r3, _080559FC
	ldr r5, _08055A00
	adds r1, r2, r5
	ldrb r3, [r3]
	adds r1, r1, r3
	ldrb r1, [r1]
	ldr r3, _08055A04
	adds r2, r2, r3
	ldr r2, [r2]
	movs r5, #0x80
	lsls r5, r5, #9
	adds r2, r2, r5
	bl audio_new_fx
	b _08055A0C
	.align 2, 0
_080559E8: .4byte 0xFFFFE000
_080559EC: .4byte 0xFFFF7000
_080559F0: .4byte 0x0203F960
_080559F4: .4byte gCanPlaySfx
_080559F8: .4byte 0x080CE440
_080559FC: .4byte gSfxVolume
_08055A00: .4byte 0x0000059A
_08055A04: .4byte 0x0000059C
_08055A08:
	movs r0, #1
	rsbs r0, r0, #0
_08055A0C:
	str r0, [r4, #0x28]
_08055A0E:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

    .thumb
    .global sub_08055A14
sub_08055A14: @ 0x08055A14
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	ldr r5, _08055A94
	strb r0, [r5]
	cmp r1, #2
	bls _08055A2C
	.2byte 0xEE00, 0xEE00
_08055A2C:
	ldr r0, _08055A98
	strb r1, [r0]
	ldr r1, _08055A9C
	movs r0, #0
	strb r0, [r1]
	ldr r0, _08055AA0
	movs r1, #0
	str r1, [r0]
	ldr r0, _08055AA4
	str r1, [r0]
	movs r1, #0x16
	ldr r0, _08055AA8
	str r1, [r0]
	ldr r4, _08055AAC
	movs r0, #0x84
	movs r1, #4
	movs r2, #3
	bl Alloc
	str r0, [r4]
	ldr r4, _08055AB0
	movs r0, #0x88
	lsls r0, r0, #2
	movs r1, #4
	movs r2, #3
	bl Alloc
	str r0, [r4]
	ldr r4, _08055AB4
	movs r0, #0x80
	lsls r0, r0, #2
	movs r1, #4
	movs r2, #3
	bl Alloc
	str r0, [r4]
	ldr r4, _08055AB8
	movs r0, #0x1c
	movs r1, #4
	movs r2, #3
	bl Alloc
	str r0, [r4]
	ldrb r0, [r5]
	cmp r0, #3
	beq _08055ABC
	cmp r0, #4
	beq _08055AC8
	.2byte 0xEE00, 0xEE00
	b _08055AD8
	.align 2, 0
_08055A94: .4byte 0x0203F93F
_08055A98: .4byte 0x0203F940
_08055A9C: .4byte 0x0203F941
_08055AA0: .4byte 0x0203F924
_08055AA4: .4byte 0x0203F928
_08055AA8: .4byte gMatricesCount
_08055AAC: .4byte 0x0203F978
_08055AB0: .4byte 0x0203F97C
_08055AB4: .4byte gMatrices
_08055AB8: .4byte 0x0203F974
_08055ABC:
	ldr r4, _08055AC4
	movs r0, #0x1c
	b _08055ACE
	.align 2, 0
_08055AC4: .4byte 0x0203F970
_08055AC8:
	ldr r4, _08055B30
	movs r0, #0xa2
	lsls r0, r0, #3
_08055ACE:
	movs r1, #4
	movs r2, #3
	bl Alloc
	str r0, [r4]
_08055AD8:
	movs r1, #0x80
	lsls r1, r1, #0x13
	movs r2, #0xfa
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #8
	ldr r2, _08055B34
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #2
	adds r2, #0xff
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #2
	adds r2, #0xff
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #2
	adds r2, #0xff
	adds r0, r2, #0
	strh r0, [r1]
	ldr r1, _08055B38
	movs r2, #0x80
	lsls r2, r2, #1
	movs r0, #0xaa
	bl DmaFill32
	ldr r1, _08055B3C
	movs r2, #0x80
	lsls r2, r2, #4
	movs r0, #0
	bl DmaFill32
	ldr r0, _08055B40
	ldrb r0, [r0]
	cmp r0, #3
	beq _08055B44
	cmp r0, #4
	beq _08055B4C
	.2byte 0xEE00, 0xEE00
	b _08055B52
	.align 2, 0
_08055B30: .4byte 0x0203F980
_08055B34: .4byte 0x00001C03
_08055B38: .4byte gOAMBuffer1
_08055B3C: .4byte 0x0600E000
_08055B40: .4byte 0x0203F93F
_08055B44:
	movs r0, #0x1c
	bl sub_08012E90
	b _08055B52
_08055B4C:
	movs r0, #0x10
	bl sub_08012E90
_08055B52:
	movs r0, #0x1f
	str r0, [sp]
	movs r0, #0x20
	str r0, [sp, #4]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_8013A10
	ldr r1, _08055C58
	movs r0, #0
	strb r0, [r1]
	ldr r1, _08055C5C
	movs r0, #0x10
	strb r0, [r1]
	ldr r1, _08055C60
	movs r0, #0x30
	strb r0, [r1]
	ldr r0, _08055C64
	movs r2, #0xc
	strb r2, [r0]
	ldr r0, _08055C68
	movs r1, #0xf3
	strb r1, [r0]
	ldr r0, _08055C6C
	strb r2, [r0]
	ldr r0, _08055C70
	strb r1, [r0]
	ldr r2, _08055C74
	ldr r0, [r2]
	adds r0, #0x7b
	movs r3, #0
	movs r5, #1
	strb r5, [r0]
	ldr r0, [r2]
	adds r0, #0x7c
	movs r6, #0x3c
	strb r6, [r0]
	ldr r0, [r2]
	adds r0, #0x7d
	strb r3, [r0]
	ldr r0, [r2]
	adds r0, #0x7e
	movs r1, #1
	rsbs r1, r1, #0
	adds r4, r1, #0
	movs r1, #0xff
	strb r1, [r0]
	ldr r0, [r2]
	adds r0, #0x7f
	strb r3, [r0]
	ldr r1, [r2]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r1, #0x6c]
	ldr r0, _08055C78
	strb r5, [r0]
	ldr r0, _08055C7C
	strb r4, [r0]
	adds r1, #0x7a
	movs r0, #4
	strb r0, [r1]
	ldr r0, [r2]
	adds r0, #0x78
	movs r1, #0x5a
	strh r1, [r0]
	ldr r1, _08055C80
	movs r0, #0x2d
	strb r0, [r1]
	ldr r0, _08055C84
	strb r6, [r0]
	mov sb, r3
	ldr r2, _08055C88
	mov r8, r2
	mov sl, r3
_08055BEA:
	mov r0, r8
	ldr r1, [r0]
	mov r2, sb
	lsls r3, r2, #4
	adds r0, r3, r2
	lsls r7, r0, #3
	adds r1, r7, r1
	adds r0, r1, #0
	adds r0, #0x64
	mov r2, sl
	strh r2, [r0]
	mov r0, sl
	str r0, [r1, #0x5c]
	adds r0, r1, #0
	adds r0, #0x62
	strh r2, [r0]
	adds r0, #0x10
	strh r2, [r0]
	adds r1, #0x75
	movs r0, #0xff
	strb r0, [r1]
	mov r1, r8
	ldr r0, [r1]
	adds r0, r7, r0
	mov r2, sl
	str r2, [r0, #0x78]
	adds r0, #0x74
	movs r1, #0
	strb r1, [r0]
	mov r2, r8
	ldr r0, [r2]
	adds r0, r7, r0
	adds r0, #0x76
	mov r1, sb
	strb r1, [r0]
	ldr r0, [r2]
	adds r0, r7, r0
	movs r2, #0x80
	lsls r2, r2, #8
	str r2, [r0, #0x7c]
	adds r1, r0, #0
	adds r1, #0x80
	str r2, [r1]
	adds r0, #0x84
	movs r2, #0
	strb r2, [r0]
	ldr r0, _08055C8C
	ldrb r0, [r0]
	str r3, [sp, #0x10]
	cmp r0, #3
	beq _08055C90
	cmp r0, #4
	beq _08055D34
	b _08055DC4
	.align 2, 0
_08055C58: .4byte 0x0203F93A
_08055C5C: .4byte 0x0203F933
_08055C60: .4byte 0x0203F934
_08055C64: .4byte 0x0203F936
_08055C68: .4byte 0x0203F937
_08055C6C: .4byte 0x0203F938
_08055C70: .4byte 0x0203F939
_08055C74: .4byte 0x0203F978
_08055C78: .4byte 0x0203F93D
_08055C7C: .4byte 0x0203F93E
_08055C80: .4byte 0x0203F93B
_08055C84: .4byte 0x0203F93C
_08055C88: .4byte 0x0203F97C
_08055C8C: .4byte 0x0203F93F
_08055C90:
	mov r1, r8
	ldr r0, [r1]
	adds r0, r7, r0
	mov r2, sb
	lsls r4, r2, #2
	add r4, sb
	lsls r4, r4, #2
	ldr r1, _08055D24
	adds r6, r4, r1
	ldrb r3, [r6]
	lsls r1, r3, #8
	str r1, [r0, #0x54]
	ldrb r5, [r6, #1]
	lsls r1, r5, #8
	str r1, [r0, #0x58]
	ldrb r1, [r6, #2]
	lsls r1, r1, #8
	adds r2, r0, #0
	adds r2, #0x60
	strh r1, [r2]
	ldr r1, _08055D24
	adds r1, #4
	adds r1, r4, r1
	ldr r1, [r1]
	movs r2, #1
	str r2, [sp]
	ldr r2, _08055D28
	ldrb r2, [r2]
	subs r3, r3, r2
	str r3, [sp, #4]
	ldr r2, _08055D2C
	ldrb r2, [r2]
	subs r5, r5, r2
	str r5, [sp, #8]
	movs r2, #2
	str r2, [sp, #0xc]
	movs r2, #0
	movs r3, #0
	bl SetSprite
	mov r1, r8
	ldr r0, [r1]
	adds r0, r0, r7
	adds r0, #0x38
	ldr r2, _08055D30
	adds r4, r4, r2
	ldr r1, [r4]
	mov r2, sl
	str r2, [sp]
	movs r2, #0xa
	str r2, [sp, #4]
	ldrb r2, [r6, #3]
	str r2, [sp, #8]
	movs r2, #2
	str r2, [sp, #0xc]
	movs r2, #0
	movs r3, #0
	bl SetSprite
	mov r1, r8
	ldr r0, [r1]
	adds r0, r0, r7
	ldrb r1, [r6, #8]
	bl SetSpritePalette
	mov r2, r8
	ldr r0, [r2]
	adds r0, r0, r7
	adds r0, #0x38
	ldrb r1, [r6, #0x10]
	bl SetSpritePalette
	b _08055DC4
	.align 2, 0
_08055D24: .4byte 0x080B1FB0
_08055D28: .4byte 0x0203F933
_08055D2C: .4byte 0x0203F934
_08055D30: .4byte 0x080B1FBC
_08055D34:
	mov r1, r8
	ldr r0, [r1]
	adds r0, r7, r0
	mov r2, sb
	lsls r4, r2, #2
	add r4, sb
	lsls r4, r4, #2
	ldr r1, _08055EA8
	adds r6, r4, r1
	ldrb r3, [r6]
	lsls r1, r3, #8
	str r1, [r0, #0x54]
	ldrb r5, [r6, #1]
	lsls r1, r5, #8
	str r1, [r0, #0x58]
	ldrb r1, [r6, #2]
	lsls r1, r1, #8
	adds r2, r0, #0
	adds r2, #0x60
	strh r1, [r2]
	ldr r1, _08055EA8
	adds r1, #4
	adds r1, r4, r1
	ldr r1, [r1]
	movs r2, #1
	str r2, [sp]
	ldr r2, _08055EAC
	ldrb r2, [r2]
	subs r3, r3, r2
	str r3, [sp, #4]
	ldr r2, _08055EB0
	ldrb r2, [r2]
	subs r5, r5, r2
	str r5, [sp, #8]
	movs r2, #2
	str r2, [sp, #0xc]
	movs r2, #0
	movs r3, #0
	bl SetSprite
	mov r1, r8
	ldr r0, [r1]
	adds r0, r0, r7
	adds r0, #0x38
	ldr r2, _08055EB4
	adds r4, r4, r2
	ldr r1, [r4]
	mov r2, sl
	str r2, [sp]
	movs r2, #0xa
	str r2, [sp, #4]
	ldrb r2, [r6, #3]
	str r2, [sp, #8]
	movs r2, #2
	str r2, [sp, #0xc]
	movs r2, #0
	movs r3, #0
	bl SetSprite
	mov r1, r8
	ldr r0, [r1]
	adds r0, r0, r7
	ldrb r1, [r6, #8]
	bl SetSpritePalette
	mov r2, r8
	ldr r0, [r2]
	adds r0, r0, r7
	adds r0, #0x38
	ldrb r1, [r6, #0x10]
	bl SetSpritePalette
_08055DC4:
	ldr r4, [sp, #0x10]
	add r4, sb
	lsls r4, r4, #3
	mov r1, r8
	ldr r0, [r1]
	adds r0, r0, r4
	movs r1, #1
	bl sub_800378C
	mov r2, r8
	ldr r0, [r2]
	adds r0, r0, r4
	movs r1, #1
	bl SetSpritePriority
	mov r1, r8
	ldr r0, [r1]
	adds r0, r0, r4
	movs r1, #1
	mov r2, sb
	bl sub_8003820
	mov r2, r8
	ldr r0, [r2]
	adds r0, r4, r0
	adds r0, #0x60
	ldrh r1, [r0]
	lsrs r1, r1, #8
	mov r0, sb
	movs r2, #0x80
	lsls r2, r2, #1
	bl sub_8025718
	mov r1, r8
	ldr r0, [r1]
	adds r0, r4, r0
	movs r2, #1
	strb r2, [r0, #0x12]
	ldr r0, [r1]
	adds r0, r0, r4
	adds r0, #0x38
	movs r1, #0
	bl SetSpritePriority
	mov r1, r8
	ldr r0, [r1]
	adds r0, r0, r4
	adds r0, #0x38
	mov r2, sb
	adds r2, #8
	movs r1, #1
	bl sub_8003820
	mov r2, r8
	ldr r0, [r2]
	adds r0, r4, r0
	adds r0, #0x4a
	movs r1, #1
	strb r1, [r0]
	ldr r0, [r2]
	adds r0, r0, r4
	adds r0, #0x1c
	mov r2, sl
	str r2, [sp]
	movs r1, #0xf8
	str r1, [sp, #4]
	str r2, [sp, #8]
	movs r1, #2
	str r1, [sp, #0xc]
	ldr r1, _08055EB8
	movs r2, #0
	movs r3, #0
	bl SetSprite
	mov r2, r8
	ldr r0, [r2]
	adds r0, r0, r4
	adds r0, #0x1c
	mov r5, sb
	adds r5, #4
	movs r1, #1
	adds r2, r5, #0
	bl sub_8003820
	mov r1, r8
	ldr r0, [r1]
	adds r0, r0, r4
	adds r0, #0x1c
	movs r1, #1
	bl SetSpritePriority
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0xc0
	lsls r2, r2, #2
	bl sub_8025718
	mov r0, sb
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
	cmp r0, #3
	bhi _08055E96
	b _08055BEA
_08055E96:
	ldr r0, _08055EBC
	ldrb r0, [r0]
	cmp r0, #3
	beq _08055EC0
	cmp r0, #4
	beq _08055F2C
	.2byte 0xEE00, 0xEE00
	b _08055FF6
	.align 2, 0
_08055EA8: .4byte 0x080B2000
_08055EAC: .4byte 0x0203F933
_08055EB0: .4byte 0x0203F934
_08055EB4: .4byte 0x080B200C
_08055EB8: .4byte 0x00000451
_08055EBC: .4byte 0x0203F93F
_08055EC0:
	ldr r0, _08055F18
	ldr r4, [r0]
	adds r3, r4, #0
	adds r3, #0x74
	movs r0, #0x80
	lsls r0, r0, #8
	strh r0, [r3]
	adds r4, #0x76
	movs r0, #0xc0
	lsls r0, r0, #7
	strh r0, [r4]
	ldr r5, _08055F1C
	ldr r0, [r5]
	ldr r1, _08055F20
	movs r2, #1
	str r2, [sp]
	ldrh r2, [r3]
	lsrs r2, r2, #8
	ldr r3, _08055F24
	ldrb r3, [r3]
	subs r2, r2, r3
	str r2, [sp, #4]
	ldrh r2, [r4]
	lsrs r2, r2, #8
	ldr r3, _08055F28
	ldrb r3, [r3]
	subs r2, r2, r3
	str r2, [sp, #8]
	movs r2, #2
	str r2, [sp, #0xc]
	movs r2, #0
	movs r3, #0
	bl SetSprite
	ldr r0, [r5]
	movs r1, #1
	bl SetSpritePriority
	ldr r0, [r5]
	movs r1, #0
	bl sub_800378C
	b _08055FF6
	.align 2, 0
_08055F18: .4byte 0x0203F978
_08055F1C: .4byte 0x0203F970
_08055F20: .4byte 0x000004C9
_08055F24: .4byte 0x0203F933
_08055F28: .4byte 0x0203F934
_08055F2C:
	movs r7, #0
	ldr r6, _08056058
	movs r2, #0xff
	lsls r2, r2, #8
	mov sl, r2
	movs r0, #0
	mov r8, r0
	movs r1, #2
	mov sb, r1
_08055F3E:
	lsls r0, r7, #3
	adds r0, r0, r7
	lsls r5, r0, #3
	ldr r0, [r6]
	adds r0, r0, r5
	bl sub_8056B34
	movs r0, #0
	mov r1, sl
	bl RandomMinMax
	adds r1, r0, #0
	ldr r0, [r6]
	adds r0, r5, r0
	strh r1, [r0, #0x3a]
	mov r2, r8
	str r2, [sp]
	str r2, [sp, #4]
	str r2, [sp, #8]
	mov r1, sb
	str r1, [sp, #0xc]
	ldr r1, _0805605C
	movs r2, #0
	movs r3, #0
	bl SetSprite
	ldr r0, [r6]
	adds r0, r0, r5
	movs r1, #1
	bl SetSpritePriority
	ldr r1, [r6]
	adds r1, r1, r5
	adds r0, r1, #0
	adds r0, #0x1c
	mov r2, r8
	str r2, [sp]
	str r2, [sp, #4]
	adds r1, #0x40
	ldrh r1, [r1]
	lsrs r1, r1, #8
	str r1, [sp, #8]
	mov r1, sb
	str r1, [sp, #0xc]
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl SetSprite
	ldr r0, [r6]
	adds r0, r0, r5
	adds r0, #0x1c
	movs r1, #1
	bl SetSpritePriority
	ldr r0, [r6]
	adds r0, r5, r0
	adds r0, #0x2c
	movs r1, #1
	strb r1, [r0]
	cmp r7, #7
	bls _08055FEC
	ldr r0, [r6]
	adds r0, r0, r5
	adds r4, r7, #4
	adds r2, r4, #0
	bl sub_8003820
	movs r0, #0
	movs r1, #0xff
	bl RandomMinMax
	adds r1, r0, #0
	ldr r0, [r6]
	adds r0, r5, r0
	ldrh r0, [r0, #0x3e]
	movs r2, #0xc0
	lsls r2, r2, #2
	subs r2, r2, r0
	adds r0, r4, #0
	bl sub_8025718
	ldr r0, [r6]
	adds r0, r5, r0
	adds r0, #0x40
	mov r2, sl
	strh r2, [r0]
_08055FEC:
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #0x11
	bls _08055F3E
_08055FF6:
	bl sub_8058F9C
	bl sub_80409DC
	bl sub_8063178
	ldr r4, _08056060
	ldrb r0, [r4]
	cmp r0, #2
	bne _08056014
	ldr r0, _08056064
	movs r1, #1
	movs r2, #3
	bl sub_0800F02C
_08056014:
	ldr r0, _08056068
	movs r1, #1
	movs r2, #0
	bl sub_8026E48
	ldr r1, _0805606C
	ldr r0, _08056070
	str r0, [r1]
	ldr r1, _08056074
	ldr r0, _08056078
	str r0, [r1]
	ldr r1, _0805607C
	ldr r0, _08056080
	str r0, [r1]
	ldr r1, _08056084
	movs r0, #1
	strb r0, [r1]
	ldr r0, _08056088
	ldr r0, [r0]
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_8003884
	ldrb r0, [r4]
	cmp r0, #0
	bne _080560A0
	ldr r0, _0805608C
	ldrb r0, [r0]
	cmp r0, #3
	beq _08056090
	cmp r0, #4
	beq _0805609A
	b _080560A0
	.align 2, 0
_08056058: .4byte 0x0203F980
_0805605C: .4byte 0x000004CA
_08056060: .4byte 0x0203F940
_08056064: .4byte 0x0203F924
_08056068: .4byte 0x00000FFF
_0805606C: .4byte gNullsub_3
_08056070: .4byte 0x08058FD9
_08056074: .4byte gNullsub_4
_08056078: .4byte 0x08058D89
_0805607C: .4byte gNullsub_5
_08056080: .4byte 0x08058F9D
_08056084: .4byte gIsSlideMiniGame
_08056088: .4byte dword_2000FC8
_0805608C: .4byte 0x0203F93F
_08056090:
	movs r0, #0x9e
	lsls r0, r0, #1
	bl sub_0802FEDC
	b _080560A0
_0805609A:
	ldr r0, _080560B0
	bl sub_0802FEDC
_080560A0:
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080560B0: .4byte 0x0000013F

	.thumb
sub_80560B4: @ 0x080560B4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x10
	ldr r5, _080560D0
	ldrb r2, [r5]
	cmp r2, #1
	beq _08056164
	cmp r2, #1
	bgt _080560D4
	cmp r2, #0
	beq _080560DC
	b _080564D6
	.align 2, 0
_080560D0: .4byte 0x0203F93D
_080560D4:
	cmp r2, #2
	bne _080560DA
	b _08056374
_080560DA:
	b _080564D6
_080560DC:
	ldr r0, _0805611C
	ldr r3, [r0]
	adds r4, r3, #0
	adds r4, #0x78
	adds r1, r3, #0
	adds r1, #0x80
	ldrh r0, [r4]
	ldrb r1, [r1]
	cmp r0, r1
	bne _08056124
	strh r2, [r4]
	adds r0, r3, #0
	adds r0, #0x7a
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldr r1, _08056120
	ldr r2, [r1]
	lsls r1, r0, #4
	adds r1, r1, r0
	lsls r1, r1, #3
	adds r1, r1, r2
	adds r1, #0x60
	ldrh r1, [r1]
	lsrs r1, r1, #8
	movs r2, #0xc0
	lsls r2, r2, #2
	bl sub_8025718
	movs r0, #1
	strb r0, [r5]
	b _080564D6
	.align 2, 0
_0805611C: .4byte 0x0203F978
_08056120: .4byte 0x0203F97C
_08056124:
	ldr r2, [r3, #0x5c]
	ldr r0, [r3, #0x54]
	adds r2, r2, r0
	str r2, [r3, #0x5c]
	ldr r0, [r3, #0x60]
	ldr r1, [r3, #0x58]
	adds r0, r0, r1
	str r0, [r3, #0x60]
	ldr r0, _08056158
	asrs r2, r2, #8
	strb r2, [r0]
	ldr r1, _0805615C
	ldr r0, [r3, #0x60]
	asrs r0, r0, #8
	strb r0, [r1]
	ldr r0, _08056160
	ldrb r0, [r0]
	cmp r0, #3
	bne _0805614C
	b _080564C0
_0805614C:
	cmp r0, #4
	bne _08056152
	b _080564C6
_08056152:
	.2byte 0xEE00, 0xEE00
	b _080564CA
	.align 2, 0
_08056158: .4byte 0x0203F933
_0805615C: .4byte 0x0203F934
_08056160: .4byte 0x0203F93F
_08056164:
	ldr r0, _08056178
	ldrb r0, [r0]
	cmp r0, #3
	beq _0805617C
	cmp r0, #4
	beq _08056182
	.2byte 0xEE00, 0xEE00
	b _08056186
	.align 2, 0
_08056178: .4byte 0x0203F93F
_0805617C:
	bl sub_8057B90
	b _08056186
_08056182:
	bl sub_8057E48
_08056186:
	ldr r0, _0805621C
	mov r8, r0
	ldr r3, [r0]
	adds r2, r3, #0
	adds r2, #0x78
	ldrh r0, [r2]
	mov r7, r8
	cmp r0, #0x5a
	beq _0805619A
	b _08056320
_0805619A:
	adds r0, r3, #0
	adds r0, #0x7a
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _08056230
	ldr r1, _08056220
	ldr r0, _08056224
	ldrh r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #4
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	cmp r7, #0
	beq _080561C4
	b _080564D6
_080561C4:
	strh r7, [r2]
	ldr r6, _08056228
	str r7, [sp]
	movs r0, #0x6e
	str r0, [sp, #4]
	movs r5, #0xf
	str r5, [sp, #8]
	movs r4, #2
	str r4, [sp, #0xc]
	adds r0, r3, #0
	adds r1, r6, #0
	movs r2, #0
	movs r3, #0
	bl SetSprite
	mov r1, r8
	ldr r0, [r1]
	adds r0, #0x1c
	str r7, [sp]
	movs r1, #0x78
	str r1, [sp, #4]
	str r5, [sp, #8]
	str r4, [sp, #0xc]
	adds r1, r6, #0
	movs r2, #0
	movs r3, #0
	bl SetSprite
	mov r2, r8
	ldr r0, [r2]
	adds r0, #0x38
	str r7, [sp]
	movs r1, #0x82
	str r1, [sp, #4]
	str r5, [sp, #8]
	str r4, [sp, #0xc]
	adds r1, r6, #0
	movs r2, #0
	movs r3, #0
	bl SetSprite
	ldr r0, _0805622C
	strb r4, [r0]
	b _080564D6
	.align 2, 0
_0805621C: .4byte 0x0203F978
_08056220: .4byte gPlayerStateSettings
_08056224: .4byte gPlayerState
_08056228: .4byte 0x000004D7
_0805622C: .4byte 0x0203F93D
_08056230:
	ldr r1, _08056250
	ldr r0, _08056254
	ldrh r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #4
	ands r0, r1
	cmp r0, #0
	beq _08056258
	adds r1, r3, #0
	adds r1, #0x80
	movs r0, #0x78
	b _0805625E
	.align 2, 0
_08056250: .4byte gPlayerStateSettings
_08056254: .4byte gPlayerState
_08056258:
	adds r1, r3, #0
	adds r1, #0x80
	movs r0, #0x2d
_0805625E:
	strb r0, [r1]
	ldr r1, [r7]
	adds r1, #0x7a
	ldrb r0, [r1]
	subs r0, #1
	movs r3, #0
	mov sb, r3
	strb r0, [r1]
	ldr r0, [r7]
	adds r0, #0x7a
	movs r1, #0
	ldrsb r1, [r0, r1]
	ldr r6, _0805630C
	ldr r2, [r6]
	lsls r0, r1, #4
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r2
	ldr r0, [r0, #0x54]
	ldr r4, _08056310
	adds r0, r0, r4
	movs r5, #0xe7
	lsls r5, r5, #8
	adds r1, r5, #0
	bl sub_8003934
	lsls r0, r0, #0x14
	lsrs r0, r0, #0x10
	ldr r1, _08056314
	mov r8, r1
	ldrb r1, [r1]
	lsls r1, r1, #8
	subs r0, r0, r1
	ldr r1, [r7]
	adds r1, #0x80
	ldrb r1, [r1]
	lsls r1, r1, #8
	bl sub_8003934
	ldr r1, [r7]
	str r0, [r1, #0x54]
	adds r1, #0x7a
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	ldr r2, [r6]
	lsls r0, r1, #4
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r2
	ldr r0, [r0, #0x58]
	adds r0, r0, r4
	adds r1, r5, #0
	bl sub_8003934
	adds r1, r0, #0
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x10
	ldr r4, _08056318
	ldrb r1, [r4]
	lsls r1, r1, #8
	subs r0, r0, r1
	ldr r1, [r7]
	adds r1, #0x80
	ldrb r1, [r1]
	lsls r1, r1, #8
	bl sub_8003934
	ldr r1, [r7]
	str r0, [r1, #0x58]
	mov r2, r8
	ldrb r0, [r2]
	lsls r0, r0, #8
	str r0, [r1, #0x5c]
	ldrb r0, [r4]
	lsls r0, r0, #8
	str r0, [r1, #0x60]
	adds r1, #0x78
	movs r2, #0
	mov r3, sb
	strh r3, [r1]
	ldr r0, _0805631C
	strb r2, [r0]
	b _080564D6
	.align 2, 0
_0805630C: .4byte 0x0203F97C
_08056310: .4byte 0xFFFFF400
_08056314: .4byte 0x0203F933
_08056318: .4byte 0x0203F934
_0805631C: .4byte 0x0203F93D
_08056320:
	ldrh r0, [r2]
	lsls r0, r0, #8
	movs r1, #0xb4
	lsls r1, r1, #5
	bl sub_8003934
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	movs r0, #0x80
	lsls r0, r0, #2
	cmp r3, r0
	bls _0805633A
	adds r3, r0, #0
_0805633A:
	mov r4, r8
	ldr r0, [r4]
	adds r0, #0x7a
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldr r1, _08056370
	ldr r2, [r1]
	lsls r1, r0, #4
	adds r1, r1, r0
	lsls r1, r1, #3
	adds r1, r1, r2
	adds r1, #0x60
	ldrh r1, [r1]
	lsrs r1, r1, #8
	lsrs r2, r3, #1
	adds r1, r1, r2
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	movs r2, #0xc0
	lsls r2, r2, #2
	subs r2, r2, r3
	bl sub_8025718
	ldr r1, [r4]
	b _080564CE
	.align 2, 0
_08056370: .4byte 0x0203F97C
_08056374:
	ldr r4, _08056390
	ldr r0, [r4]
	adds r0, #0x78
	ldrh r0, [r0]
	cmp r0, #0xb4
	bne _08056398
	ldr r0, _08056394
	movs r1, #0
	bl sub_80630C0
	movs r0, #3
	strb r0, [r5]
	b _080564D6
	.align 2, 0
_08056390: .4byte 0x0203F978
_08056394: .4byte 0x00000A8C
_08056398:
	cmp r0, #0x3c
	bne _080563D6
	ldr r0, _08056498
	ldrb r0, [r0]
	cmp r0, #0
	beq _080563CA
	ldr r2, _0805649C
	movs r5, #0xaf
	lsls r5, r5, #3
	adds r0, r2, r5
	ldrh r0, [r0]
	ldr r3, _080564A0
	adds r5, #2
	adds r1, r2, r5
	ldrb r3, [r3]
	adds r1, r1, r3
	ldrb r1, [r1]
	ldr r3, _080564A4
	adds r2, r2, r3
	ldr r2, [r2]
	movs r5, #0x80
	lsls r5, r5, #9
	adds r2, r2, r5
	bl audio_new_fx
_080563CA:
	ldr r0, [r4]
	ldr r1, _080564A8
	movs r2, #0
	movs r3, #0
	bl sub_8003368
_080563D6:
	ldr r4, _080564AC
	ldr r0, [r4]
	adds r0, #0x78
	ldrh r0, [r0]
	cmp r0, #0x78
	bne _0805641E
	ldr r0, _08056498
	ldrb r0, [r0]
	cmp r0, #0
	beq _08056410
	ldr r2, _0805649C
	movs r1, #0xaf
	lsls r1, r1, #3
	adds r0, r2, r1
	ldrh r0, [r0]
	ldr r3, _080564A0
	ldr r5, _080564B0
	adds r1, r2, r5
	ldrb r3, [r3]
	adds r1, r1, r3
	ldrb r1, [r1]
	ldr r3, _080564A4
	adds r2, r2, r3
	ldr r2, [r2]
	movs r5, #0x80
	lsls r5, r5, #9
	adds r2, r2, r5
	bl audio_new_fx
_08056410:
	ldr r0, [r4]
	adds r0, #0x1c
	ldr r1, _080564A8
	movs r2, #0
	movs r3, #0
	bl sub_8003368
_0805641E:
	ldr r5, _080564AC
	ldr r0, [r5]
	adds r0, #0x78
	ldrh r0, [r0]
	cmp r0, #0xaa
	bne _08056484
	ldr r0, _08056498
	ldrb r0, [r0]
	cmp r0, #0
	beq _08056458
	ldr r2, _0805649C
	movs r1, #0xb0
	lsls r1, r1, #3
	adds r0, r2, r1
	ldrh r0, [r0]
	ldr r3, _080564A0
	ldr r4, _080564B4
	adds r1, r2, r4
	ldrb r3, [r3]
	adds r1, r1, r3
	ldrb r1, [r1]
	ldr r3, _080564B8
	adds r2, r2, r3
	ldr r2, [r2]
	movs r4, #0x80
	lsls r4, r4, #9
	adds r2, r2, r4
	bl audio_new_fx
_08056458:
	ldr r0, [r5]
	movs r4, #0x9b
	lsls r4, r4, #3
	adds r1, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r0, [r5]
	adds r0, #0x1c
	adds r1, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r0, [r5]
	adds r0, #0x38
	adds r1, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_8003368
_08056484:
	ldr r0, _080564BC
	ldrb r0, [r0]
	cmp r0, #3
	beq _080564C0
	cmp r0, #4
	beq _080564C6
	.2byte 0xEE00, 0xEE00
	b _080564CA
	.align 2, 0
_08056498: .4byte gCanPlaySfx
_0805649C: .4byte 0x080CE440
_080564A0: .4byte gSfxVolume
_080564A4: .4byte 0x0000057C
_080564A8: .4byte 0x000004D9
_080564AC: .4byte 0x0203F978
_080564B0: .4byte 0x0000057A
_080564B4: .4byte 0x00000582
_080564B8: .4byte 0x00000584
_080564BC: .4byte 0x0203F93F
_080564C0:
	bl sub_8057B90
	b _080564CA
_080564C6:
	bl sub_8057E48
_080564CA:
	ldr r0, _080564E4
	ldr r1, [r0]
_080564CE:
	adds r1, #0x78
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
_080564D6:
	add sp, #0x10
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080564E4: .4byte 0x0203F978

	.thumb
sub_80564E8: @ 0x080564E8
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x10
	ldr r0, _08056500
	ldrb r0, [r0]
	cmp r0, #3
	beq _08056504
	cmp r0, #4
	beq _0805653C
	b _08056540
	.align 2, 0
_08056500: .4byte 0x0203F93F
_08056504:
	ldr r0, _0805652C
	ldr r3, [r0]
	ldr r0, _08056530
	ldr r2, [r0]
	adds r0, r2, #0
	adds r0, #0x74
	ldrh r0, [r0]
	lsrs r0, r0, #8
	ldr r1, _08056534
	ldrb r1, [r1]
	subs r0, r0, r1
	strh r0, [r3, #6]
	adds r2, #0x76
	ldrh r0, [r2]
	lsrs r0, r0, #8
	ldr r1, _08056538
	ldrb r1, [r1]
	subs r0, r0, r1
	strb r0, [r3, #8]
	b _08056540
	.align 2, 0
_0805652C: .4byte 0x0203F970
_08056530: .4byte 0x0203F978
_08056534: .4byte 0x0203F933
_08056538: .4byte 0x0203F934
_0805653C:
	bl sub_8057E48
_08056540:
	ldr r0, _08056558
	ldrb r0, [r0]
	subs r0, #4
	cmp r0, #5
	bls _0805654C
	b _08056B20
_0805654C:
	lsls r0, r0, #2
	ldr r1, _0805655C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08056558: .4byte 0x0203F93D
_0805655C: .4byte 0x08056560
_08056560: @ jump table
	.4byte _08056578 @ case 0
	.4byte _0805659C @ case 1
	.4byte _080566C4 @ case 2
	.4byte _08056914 @ case 3
	.4byte _08056950 @ case 4
	.4byte _08056A60 @ case 5
_08056578:
	bl sub_8041E58
	bl sub_8063178
	ldr r0, _08056594
	ldr r0, [r0]
	adds r0, #0x78
	movs r1, #0
	strh r1, [r0]
	ldr r1, _08056598
	movs r0, #5
	strb r0, [r1]
	b _08056B24
	.align 2, 0
_08056594: .4byte 0x0203F978
_08056598: .4byte 0x0203F93D
_0805659C:
	ldr r0, _080565C0
	ldr r2, [r0]
	adds r1, r2, #0
	adds r1, #0x78
	ldrh r1, [r1]
	adds r3, r0, #0
	cmp r1, #0x1e
	bne _08056694
	adds r1, r2, #0
	adds r1, #0x7e
	movs r0, #0
	strb r0, [r1]
	ldr r0, [r3]
	adds r0, #0x7e
	movs r1, #0
	ldrsb r1, [r0, r1]
	ldr r4, _080565C4
	b _080565DA
	.align 2, 0
_080565C0: .4byte 0x0203F978
_080565C4: .4byte 0x0203F97C
_080565C8:
	ldr r1, [r3]
	adds r1, #0x7e
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldr r0, [r3]
	adds r0, #0x7e
	movs r1, #0
	ldrsb r1, [r0, r1]
_080565DA:
	ldr r2, [r4]
	lsls r0, r1, #4
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r2
	adds r0, #0x76
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _080565C8
	movs r5, #0x80
	lsls r5, r5, #8
	movs r4, #0x80
	lsls r4, r4, #9
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_8003934
	lsls r0, r0, #0x14
	lsrs r1, r0, #0x10
	ldr r0, _08056684
	mov sb, r0
	ldrb r0, [r0]
	lsls r0, r0, #8
	subs r0, r1, r0
	movs r1, #0xdc
	lsls r1, r1, #7
	mov r8, r1
	bl sub_8003934
	ldr r6, _08056688
	ldr r1, [r6]
	str r0, [r1, #0x54]
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_8003934
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x10
	ldr r4, _0805668C
	ldrb r0, [r4]
	lsls r0, r0, #8
	subs r0, r1, r0
	mov r1, r8
	bl sub_8003934
	ldr r1, [r6]
	str r0, [r1, #0x58]
	mov r2, sb
	ldrb r0, [r2]
	lsls r0, r0, #8
	str r0, [r1, #0x5c]
	ldrb r0, [r4]
	lsls r0, r0, #8
	str r0, [r1, #0x60]
	adds r1, #0x74
	ldrh r0, [r1]
	subs r0, r5, r0
	movs r4, #0xc8
	lsls r4, r4, #7
	adds r1, r4, #0
	bl sub_8003934
	ldr r1, [r6]
	str r0, [r1, #0x64]
	adds r1, #0x76
	ldrh r0, [r1]
	subs r5, r5, r0
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_8003934
	ldr r1, [r6]
	str r0, [r1, #0x68]
	adds r1, #0x78
	movs r0, #0
	strh r0, [r1]
	ldr r1, _08056690
	movs r0, #6
	strb r0, [r1]
	b _08056B24
	.align 2, 0
_08056684: .4byte 0x0203F933
_08056688: .4byte 0x0203F978
_0805668C: .4byte 0x0203F934
_08056690: .4byte 0x0203F93D
_08056694:
	movs r4, #0
	ldr r2, _080566C0
_08056698:
	ldr r1, [r2]
	lsls r0, r4, #4
	adds r0, r0, r4
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrh r1, [r0, #0x3e]
	subs r1, #1
	strh r1, [r0, #0x3e]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bls _08056698
	ldr r1, [r3]
	adds r1, #0x78
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	b _08056B24
	.align 2, 0
_080566C0: .4byte 0x0203F97C
_080566C4:
	ldr r4, _08056708
	ldr r3, [r4]
	adds r0, r3, #0
	adds r0, #0x78
	ldrh r0, [r0]
	cmp r0, #0x64
	beq _080566D4
	b _0805680C
_080566D4:
	ldr r1, _0805670C
	ldr r0, _08056710
	ldrh r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080566EC
	b _08056B24
_080566EC:
	ldr r0, _08056714
	ldrb r0, [r0]
	cmp r0, #0
	bne _080566FC
	ldr r0, _08056718
	ldrb r0, [r0]
	cmp r0, #0
	bne _0805671C
_080566FC:
	movs r0, #0xa
	movs r1, #0xc
	bl sub_80527A8
	b _080567C8
	.align 2, 0
_08056708: .4byte 0x0203F978
_0805670C: .4byte gPlayerStateSettings
_08056710: .4byte gPlayerState
_08056714: .4byte 0x0203F940
_08056718: .4byte 0x0203F941
_0805671C:
	ldr r0, _080567D4
	ldrb r0, [r0]
	cmp r0, #3
	bne _0805672C
	ldr r0, _080567D8
	ldr r0, [r0]
	bl sub_80037A0
_0805672C:
	ldr r2, [r4]
	adds r1, r2, #0
	adds r1, #0x74
	movs r0, #0x80
	lsls r0, r0, #8
	strh r0, [r1]
	adds r4, r2, #0
	adds r4, #0x76
	strh r0, [r4]
	ldrh r0, [r1]
	adds r3, r2, #0
	adds r3, #0x70
	strh r0, [r3]
	ldr r1, _080567DC
	adds r0, r1, #0
	ldrh r4, [r4]
	adds r0, r0, r4
	adds r4, r2, #0
	adds r4, #0x72
	strh r0, [r4]
	ldr r5, _080567E0
	ldr r0, [r5]
	ldr r1, _080567E4
	movs r2, #1
	str r2, [sp]
	ldrh r2, [r3]
	lsrs r2, r2, #8
	ldr r3, _080567E8
	ldrb r3, [r3]
	subs r2, r2, r3
	str r2, [sp, #4]
	ldrh r2, [r4]
	lsrs r2, r2, #8
	ldr r3, _080567EC
	ldrb r3, [r3]
	subs r2, r2, r3
	str r2, [sp, #8]
	movs r2, #2
	str r2, [sp, #0xc]
	movs r2, #0
	movs r3, #0
	bl SetSprite
	ldr r0, [r5]
	movs r1, #0
	bl SetSpritePriority
	ldr r0, _080567F0
	ldr r0, [r0]
	bl audio_set_tune_vol
	ldr r0, _080567F4
	ldrb r0, [r0]
	cmp r0, #0
	beq _080567C2
	ldr r2, _080567F8
	movs r3, #0x92
	lsls r3, r3, #2
	adds r0, r2, r3
	ldrh r0, [r0]
	ldr r3, _080567FC
	ldr r4, _08056800
	adds r1, r2, r4
	ldrb r3, [r3]
	adds r1, r1, r3
	ldrb r1, [r1]
	movs r3, #0x93
	lsls r3, r3, #2
	adds r2, r2, r3
	ldr r2, [r2]
	movs r4, #0x80
	lsls r4, r4, #9
	adds r2, r2, r4
	bl audio_new_fx
_080567C2:
	ldr r1, _08056804
	movs r0, #7
	strb r0, [r1]
_080567C8:
	ldr r0, _08056808
	ldr r0, [r0]
	adds r0, #0x78
	movs r1, #0
	strh r1, [r0]
	b _08056B24
	.align 2, 0
_080567D4: .4byte 0x0203F93F
_080567D8: .4byte 0x0203F970
_080567DC: .4byte 0xFFFFF000
_080567E0: .4byte 0x0203F974
_080567E4: .4byte 0x000002C3
_080567E8: .4byte 0x0203F933
_080567EC: .4byte 0x0203F934
_080567F0: .4byte dVolumes
_080567F4: .4byte gCanPlaySfx
_080567F8: .4byte 0x080CE440
_080567FC: .4byte gSfxVolume
_08056800: .4byte 0x0000024A
_08056804: .4byte 0x0203F93D
_08056808: .4byte 0x0203F978
_0805680C:
	ldr r2, [r3, #0x5c]
	ldr r0, [r3, #0x54]
	adds r2, r2, r0
	str r2, [r3, #0x5c]
	ldr r0, [r3, #0x60]
	ldr r1, [r3, #0x58]
	adds r0, r0, r1
	str r0, [r3, #0x60]
	ldr r0, _08056900
	asrs r2, r2, #8
	strb r2, [r0]
	ldr r1, _08056904
	ldr r0, [r3, #0x60]
	asrs r0, r0, #8
	strb r0, [r1]
	adds r2, r3, #0
	adds r2, #0x74
	ldr r1, [r3, #0x64]
	ldrh r0, [r2]
	adds r0, r0, r1
	strh r0, [r2]
	adds r2, #2
	ldr r1, [r3, #0x68]
	ldrh r0, [r2]
	adds r0, r0, r1
	strh r0, [r2]
	movs r4, #0
	ldr r6, _08056908
_08056844:
	ldr r2, [r6]
	lsls r0, r4, #4
	adds r0, r0, r4
	lsls r5, r0, #3
	adds r2, r5, r2
	ldr r1, [r2, #0x54]
	asrs r1, r1, #8
	ldr r0, _08056900
	ldrb r0, [r0]
	subs r1, r1, r0
	strh r1, [r2, #6]
	ldr r1, [r2, #0x58]
	asrs r1, r1, #8
	ldr r0, _08056904
	ldrb r0, [r0]
	subs r1, r1, r0
	strb r1, [r2, #8]
	ldr r0, [r6]
	adds r0, r5, r0
	adds r0, #0x76
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _080568AA
	ldr r0, _0805690C
	ldr r0, [r0]
	adds r0, #0x78
	ldrh r0, [r0]
	lsls r0, r0, #8
	movs r1, #0xc8
	lsls r1, r1, #5
	bl sub_8003934
	adds r2, r0, #0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	ldr r0, [r6]
	adds r0, r5, r0
	adds r0, #0x60
	ldrh r1, [r0]
	lsrs r1, r1, #8
	adds r1, r1, r2
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	movs r0, #0x80
	lsls r0, r0, #1
	adds r2, r2, r0
	adds r0, r4, #0
	bl sub_8025718
_080568AA:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bls _08056844
	ldr r0, _0805690C
	ldr r1, [r0]
	adds r1, #0x78
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x64
	beq _080568CA
	b _08056B24
_080568CA:
	movs r4, #0
_080568CC:
	ldr r0, _08056908
	ldr r1, [r0]
	lsls r0, r4, #4
	adds r0, r0, r4
	lsls r0, r0, #3
	adds r1, r0, r1
	adds r0, r1, #0
	adds r0, #0x76
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _080568F2
	adds r0, r1, #0
	ldr r1, _08056910
	movs r2, #0
	movs r3, #0
	bl sub_8003368
_080568F2:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bls _080568CC
	b _08056B24
	.align 2, 0
_08056900: .4byte 0x0203F933
_08056904: .4byte 0x0203F934
_08056908: .4byte 0x0203F97C
_0805690C: .4byte 0x0203F978
_08056910: .4byte 0x00000451
_08056914:
	ldr r4, _08056940
	ldr r0, [r4]
	bl sub_8003770
	cmp r0, #0
	bne _08056922
	b _08056B24
_08056922:
	ldr r0, [r4]
	ldr r1, _08056944
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r0, _08056948
	ldr r0, [r0]
	adds r0, #0x78
	movs r1, #0x5a
	strh r1, [r0]
	ldr r1, _0805694C
	movs r0, #8
	strb r0, [r1]
	b _08056B24
	.align 2, 0
_08056940: .4byte 0x0203F974
_08056944: .4byte 0x00000226
_08056948: .4byte 0x0203F978
_0805694C: .4byte 0x0203F93D
_08056950:
	ldr r7, _08056A44
	ldr r0, [r7]
	adds r1, r0, #0
	adds r1, #0x78
	ldrh r0, [r1]
	cmp r0, #0
	beq _08056960
	b _08056B08
_08056960:
	ldr r1, _08056A48
	ldr r0, _08056A4C
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl audio_set_tune_vol
	ldr r0, [r7]
	adds r0, #0x7e
	movs r1, #0
	ldrsb r1, [r0, r1]
	ldr r6, _08056A50
	ldr r2, [r6]
	lsls r0, r1, #4
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r2
	ldr r0, [r0, #0x54]
	movs r4, #0x80
	lsls r4, r4, #9
	adds r1, r4, #0
	bl sub_8003934
	lsls r0, r0, #0x14
	lsrs r1, r0, #0x10
	ldr r2, _08056A54
	mov r8, r2
	ldrb r0, [r2]
	lsls r0, r0, #8
	subs r0, r1, r0
	movs r5, #0xdc
	lsls r5, r5, #7
	adds r1, r5, #0
	bl sub_8003934
	ldr r1, [r7]
	str r0, [r1, #0x54]
	adds r1, #0x7e
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	ldr r2, [r6]
	lsls r0, r1, #4
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r2
	ldr r0, [r0, #0x58]
	adds r1, r4, #0
	bl sub_8003934
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x10
	ldr r4, _08056A58
	ldrb r0, [r4]
	lsls r0, r0, #8
	subs r0, r1, r0
	adds r1, r5, #0
	bl sub_8003934
	ldr r1, [r7]
	str r0, [r1, #0x58]
	mov r3, r8
	ldrb r0, [r3]
	lsls r0, r0, #8
	str r0, [r1, #0x5c]
	ldrb r0, [r4]
	lsls r0, r0, #8
	str r0, [r1, #0x60]
	adds r0, r1, #0
	adds r0, #0x7e
	movs r2, #0
	ldrsb r2, [r0, r2]
	ldr r3, [r6]
	lsls r0, r2, #4
	adds r0, r0, r2
	lsls r0, r0, #3
	adds r0, r0, r3
	adds r1, #0x70
	ldrh r1, [r1]
	ldr r0, [r0, #0x54]
	subs r0, r0, r1
	adds r1, r5, #0
	bl sub_8003934
	ldr r1, [r7]
	str r0, [r1, #0x64]
	adds r0, r1, #0
	adds r0, #0x7e
	movs r2, #0
	ldrsb r2, [r0, r2]
	ldr r3, [r6]
	lsls r0, r2, #4
	adds r0, r0, r2
	lsls r0, r0, #3
	adds r0, r0, r3
	adds r1, #0x72
	ldrh r1, [r1]
	ldr r0, [r0, #0x58]
	subs r0, r0, r1
	adds r1, r5, #0
	bl sub_8003934
	ldr r1, [r7]
	str r0, [r1, #0x68]
	adds r1, #0x78
	movs r0, #0x6e
	strh r0, [r1]
	ldr r1, _08056A5C
	movs r0, #9
	strb r0, [r1]
	b _08056B24
	.align 2, 0
_08056A44: .4byte 0x0203F978
_08056A48: .4byte dVolumes
_08056A4C: .4byte gBgmMainVolume
_08056A50: .4byte 0x0203F97C
_08056A54: .4byte 0x0203F933
_08056A58: .4byte 0x0203F934
_08056A5C: .4byte 0x0203F93D
_08056A60:
	ldr r7, _08056A78
	ldr r3, [r7]
	adds r0, r3, #0
	adds r0, #0x78
	ldrh r0, [r0]
	cmp r0, #0
	bne _08056A7C
	movs r0, #0xa
	movs r1, #0xc
	bl sub_80527A8
	b _08056B24
	.align 2, 0
_08056A78: .4byte 0x0203F978
_08056A7C:
	cmp r0, #0x6d
	bhi _08056B02
	ldr r2, [r3, #0x5c]
	ldr r0, [r3, #0x54]
	adds r2, r2, r0
	str r2, [r3, #0x5c]
	ldr r0, [r3, #0x60]
	ldr r1, [r3, #0x58]
	adds r0, r0, r1
	str r0, [r3, #0x60]
	ldr r5, _08056B10
	asrs r2, r2, #8
	strb r2, [r5]
	ldr r6, _08056B14
	ldr r0, [r3, #0x60]
	asrs r0, r0, #8
	strb r0, [r6]
	adds r2, r3, #0
	adds r2, #0x70
	ldr r1, [r3, #0x64]
	ldrh r0, [r2]
	adds r0, r0, r1
	strh r0, [r2]
	adds r4, r3, #0
	adds r4, #0x72
	ldr r1, [r3, #0x68]
	ldrh r0, [r4]
	adds r0, r0, r1
	strh r0, [r4]
	ldr r0, _08056B18
	ldr r3, [r0]
	ldrh r0, [r2]
	lsrs r0, r0, #8
	ldrb r1, [r5]
	subs r0, r0, r1
	strh r0, [r3, #6]
	ldrh r0, [r4]
	lsrs r0, r0, #8
	ldrb r1, [r6]
	subs r0, r0, r1
	strb r0, [r3, #8]
	ldr r3, [r7]
	adds r3, #0x7e
	movs r1, #0
	ldrsb r1, [r3, r1]
	ldr r0, _08056B1C
	ldr r4, [r0]
	lsls r0, r1, #4
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r4
	ldr r1, [r0, #0x54]
	asrs r1, r1, #8
	ldrb r2, [r5]
	subs r1, r1, r2
	strh r1, [r0, #6]
	movs r1, #0
	ldrsb r1, [r3, r1]
	lsls r0, r1, #4
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r4
	ldr r1, [r0, #0x58]
	asrs r1, r1, #8
	ldrb r2, [r6]
	subs r1, r1, r2
	strb r1, [r0, #8]
_08056B02:
	ldr r1, [r7]
	adds r1, #0x78
	ldrh r0, [r1]
_08056B08:
	subs r0, #1
	strh r0, [r1]
	b _08056B24
	.align 2, 0
_08056B10: .4byte 0x0203F933
_08056B14: .4byte 0x0203F934
_08056B18: .4byte 0x0203F974
_08056B1C: .4byte 0x0203F97C
_08056B20:
	.2byte 0xEE00, 0xEE00
_08056B24:
	add sp, #0x10
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

    .thumb
sub_8056B34: @ 0x08056B34
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	movs r0, #0x14
	movs r1, #0xeb
	bl RandomMinMax
	lsls r0, r0, #8
	movs r5, #0
	movs r1, #0
	strh r0, [r6, #0x38]
	strh r1, [r6, #0x3a]
	movs r4, #0x80
	lsls r4, r4, #2
	movs r0, #0
	adds r1, r4, #0
	bl RandomMinMax
	ldr r1, _08056B8C
	adds r0, r0, r1
	strh r0, [r6, #0x3c]
	movs r0, #0x80
	adds r1, r4, #0
	bl RandomMinMax
	strh r0, [r6, #0x3e]
	movs r0, #0x1e
	movs r1, #0xe1
	bl RandomMinMax
	lsls r0, r0, #8
	adds r1, r6, #0
	adds r1, #0x40
	strh r0, [r1]
	adds r1, #2
	movs r0, #0xb4
	lsls r0, r0, #1
	strh r0, [r1]
	adds r0, r6, #0
	adds r0, #0x44
	strb r5, [r0]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08056B8C: .4byte 0xFFFFFF00

    .thumb
sub_08056B90: @ 0x08056B90
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r7, r1, #0x18
	ldr r6, _08056BDC
	ldr r1, [r6]
	lsls r0, r5, #4
	adds r0, r0, r5
	lsls r4, r0, #3
	adds r1, r4, r1
	adds r0, r1, #0
	adds r0, #0x72
	ldrh r0, [r0]
	cmp r0, #0
	beq _08056BB2
	b _08056D1C
_08056BB2:
	ldr r0, [r1, #0x54]
	str r0, [r1, #0x68]
	ldr r0, [r1, #0x58]
	str r0, [r1, #0x6c]
	adds r0, r1, #0
	adds r0, #0x1c
	ldr r1, _08056BE0
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r0, _08056BE4
	ldrb r0, [r0]
	cmp r0, #3
	beq _08056BE8
	cmp r0, #4
	bne _08056BD6
	b _08056CE0
_08056BD6:
	.2byte 0xEE00, 0xEE00
	b _08056D1C
	.align 2, 0
_08056BDC: .4byte 0x0203F97C
_08056BE0: .4byte 0x00000451
_08056BE4: .4byte 0x0203F93F
_08056BE8:
	cmp r7, #0
	bne _08056C00
	ldr r0, [r6]
	adds r0, r4, r0
	adds r2, r0, #0
	adds r2, #0x60
	ldr r3, _08056BFC
	adds r1, r3, #0
	b _08056C0E
	.align 2, 0
_08056BFC: .4byte 0xFFFFC000
_08056C00:
	ldr r0, [r6]
	adds r0, r4, r0
	adds r2, r0, #0
	adds r2, #0x60
	movs r4, #0x80
	lsls r4, r4, #7
	adds r1, r4, #0
_08056C0E:
	ldrh r2, [r2]
	adds r1, r1, r2
	adds r0, #0x70
	strh r1, [r0]
	ldr r0, _08056C5C
	ldr r1, [r0]
	lsls r0, r5, #4
	adds r0, r0, r5
	lsls r0, r0, #3
	adds r0, r0, r1
	adds r0, #0x72
	movs r1, #0x23
	strh r1, [r0]
	cmp r5, #0
	bne _08056C70
	ldr r0, _08056C60
	ldrb r0, [r0]
	cmp r0, #0
	beq _08056D1C
	ldr r2, _08056C64
	movs r5, #0x82
	lsls r5, r5, #2
	adds r0, r2, r5
	ldrh r0, [r0]
	ldr r3, _08056C68
	ldr r4, _08056C6C
	adds r1, r2, r4
	ldrb r3, [r3]
	adds r1, r1, r3
	ldrb r1, [r1]
	adds r5, #4
	adds r2, r2, r5
	ldr r2, [r2]
	movs r3, #0x80
	lsls r3, r3, #9
	adds r2, r2, r3
	bl audio_new_fx
	b _08056D1C
	.align 2, 0
_08056C5C: .4byte 0x0203F97C
_08056C60: .4byte gCanPlaySfx
_08056C64: .4byte 0x080CE440
_08056C68: .4byte gSfxVolume
_08056C6C: .4byte 0x0000020A
_08056C70:
	ldr r4, _08056CC4
	ldr r0, [r4]
	ldr r0, [r0, #0x6c]
	bl audio_fx_still_active
	cmp r0, #0
	beq _08056C8E
	ldr r0, _08056CC8
	ldrb r0, [r0]
	cmp r0, #0
	beq _08056C8E
	ldr r0, [r4]
	ldr r0, [r0, #0x6c]
	bl audio_halt_fx
_08056C8E:
	ldr r0, _08056CC4
	ldr r4, [r0]
	ldr r0, _08056CC8
	ldrb r0, [r0]
	cmp r0, #0
	beq _08056CD8
	ldr r2, _08056CCC
	movs r5, #0xde
	lsls r5, r5, #3
	adds r0, r2, r5
	ldrh r0, [r0]
	ldr r3, _08056CD0
	adds r5, #2
	adds r1, r2, r5
	ldrb r3, [r3]
	adds r1, r1, r3
	ldrb r1, [r1]
	ldr r3, _08056CD4
	adds r2, r2, r3
	ldr r2, [r2]
	movs r5, #0x80
	lsls r5, r5, #9
	adds r2, r2, r5
	bl audio_new_fx
	b _08056CDC
	.align 2, 0
_08056CC4: .4byte 0x0203F978
_08056CC8: .4byte gCanPlaySfx
_08056CCC: .4byte 0x080CE440
_08056CD0: .4byte gSfxVolume
_08056CD4: .4byte 0x000006F4
_08056CD8:
	movs r0, #1
	rsbs r0, r0, #0
_08056CDC:
	str r0, [r4, #0x6c]
	b _08056D1C
_08056CE0:
	ldr r0, [r6]
	adds r2, r4, r0
	adds r0, r2, #0
	adds r0, #0x60
	ldrh r1, [r0]
	adds r0, #0x10
	strh r1, [r0]
	adds r1, r2, #0
	adds r1, #0x72
	movs r0, #0x1e
	strh r0, [r1]
	cmp r5, #0
	bne _08056D1C
	ldr r0, _08056D24
	ldrb r0, [r0]
	cmp r0, #0
	beq _08056D1C
	ldr r2, _08056D28
	ldrh r0, [r2]
	ldr r3, _08056D2C
	adds r1, r2, #2
	ldrb r3, [r3]
	adds r1, r1, r3
	ldrb r1, [r1]
	ldr r2, [r2, #4]
	movs r3, #0x80
	lsls r3, r3, #9
	adds r2, r2, r3
	bl audio_new_fx
_08056D1C:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08056D24: .4byte gCanPlaySfx
_08056D28: .4byte 0x080CE440
_08056D2C: .4byte gSfxVolume

	.thumb
sub_8056D30: @ 0x08056D30
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	movs r0, #0
	str r0, [sp]
	ldr r0, _08056D54
	ldrb r0, [r0]
	cmp r0, #3
	beq _08056D58
	cmp r0, #4
	beq _08056D5E
	.2byte 0xEE00, 0xEE00
	b _08056D62
	.align 2, 0
_08056D54: .4byte 0x0203F93F
_08056D58:
	movs r1, #0x1e
	str r1, [sp]
	b _08056D62
_08056D5E:
	movs r2, #0x19
	str r2, [sp]
_08056D62:
	movs r3, #0
	mov r8, r3
	ldr r0, _08056E0C
	mov sl, r0
_08056D6A:
	mov r1, sl
	ldr r0, [r1]
	mov r3, r8
	lsls r2, r3, #4
	adds r1, r2, r3
	lsls r4, r1, #3
	adds r3, r4, r0
	adds r0, r3, #0
	adds r0, #0x72
	ldrh r1, [r0]
	mov sb, r2
	cmp r1, #0
	bne _08056D86
	b _08056F3C
_08056D86:
	subs r1, #1
	strh r1, [r0]
	lsls r1, r1, #0x10
	ldr r2, [sp]
	lsls r0, r2, #0x10
	adds r7, r0, #0
	cmp r1, r7
	bne _08056DA4
	adds r0, r3, #0
	adds r0, #0x1c
	ldr r1, _08056E10
	movs r2, #0
	movs r3, #0
	bl sub_8003368
_08056DA4:
	mov r3, sl
	ldr r0, [r3]
	adds r1, r4, r0
	ldr r0, [r1, #0x68]
	movs r2, #0xff
	lsls r2, r2, #8
	cmp r0, r2
	bgt _08056DC2
	ldr r1, [r1, #0x6c]
	cmp r1, r2
	bgt _08056DC2
	cmp r0, #0
	blt _08056DC2
	cmp r1, #0
	bge _08056DD4
_08056DC2:
	mov r1, sl
	ldr r0, [r1]
	mov r1, sb
	add r1, r8
	lsls r1, r1, #3
	adds r1, r1, r0
	adds r1, #0x72
	movs r0, #0
	strh r0, [r1]
_08056DD4:
	movs r2, #0x80
	lsls r2, r2, #1
	ldr r6, _08056E0C
	ldr r0, [r6]
	mov r1, sb
	add r1, r8
	lsls r5, r1, #3
	adds r0, r5, r0
	adds r3, r0, #0
	adds r3, #0x72
	ldrh r1, [r3]
	lsrs r0, r7, #0x10
	cmp r1, r0
	bls _08056DF2
	b _08056EF4
_08056DF2:
	cmp r1, #0
	bne _08056DF8
	b _08056EF4
_08056DF8:
	ldr r0, _08056E14
	ldrb r0, [r0]
	cmp r0, #3
	beq _08056E18
	cmp r0, #4
	beq _08056E98
	.2byte 0xEE00, 0xEE00
	b _08056EEA
	.align 2, 0
_08056E0C: .4byte 0x0203F97C
_08056E10: .4byte 0x000004B3
_08056E14: .4byte 0x0203F93F
_08056E18:
	ldrh r0, [r3]
	movs r1, #0x23
	bl sub_8003934
	adds r4, r0, #0
	lsls r4, r4, #0x10
	ldr r0, [r6]
	adds r0, r5, r0
	adds r0, #0x70
	ldrh r0, [r0]
	lsrs r0, r0, #8
	adds r0, #0x40
	lsls r0, r0, #1
	ldr r2, _08056E94
	adds r0, r0, r2
	movs r3, #0
	ldrsh r1, [r0, r3]
	movs r0, #0x91
	lsls r0, r0, #2
	bl CallARM_FX_Mul8
	ldr r2, [r6]
	adds r2, r5, r2
	ldr r1, [r2, #0x68]
	adds r1, r1, r0
	str r1, [r2, #0x68]
	adds r2, #0x70
	ldrh r0, [r2]
	lsrs r0, r0, #8
	lsls r0, r0, #1
	ldr r1, _08056E94
	adds r0, r0, r1
	movs r2, #0
	ldrsh r1, [r0, r2]
	movs r0, #0x91
	lsls r0, r0, #2
	bl CallARM_FX_Mul8
	ldr r2, [r6]
	adds r2, r5, r2
	ldr r1, [r2, #0x6c]
	adds r1, r1, r0
	str r1, [r2, #0x6c]
	lsrs r4, r4, #0x11
	lsls r4, r4, #1
	ldr r3, _08056E94
	adds r4, r4, r3
	movs r1, #0
	ldrsh r0, [r4, r1]
	lsls r0, r0, #8
	movs r1, #0x80
	lsls r1, r1, #2
	bl CallARM_FX_Mul8
	asrs r0, r0, #8
	movs r2, #0xc0
	lsls r2, r2, #2
	adds r1, r2, #0
	subs r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r2, r1, #0x10
	b _08056EEA
	.align 2, 0
_08056E94: .4byte 0x080B1AE4
_08056E98:
	ldrh r0, [r3]
	movs r1, #0x1e
	bl sub_8003934
	ldr r0, [r6]
	adds r0, r5, r0
	adds r0, #0x70
	ldrh r0, [r0]
	lsrs r0, r0, #8
	adds r0, #0x40
	lsls r0, r0, #1
	ldr r3, _08056F28
	adds r0, r0, r3
	movs r2, #0
	ldrsh r1, [r0, r2]
	ldr r0, _08056F2C
	bl CallARM_FX_Mul8
	ldr r2, [r6]
	adds r2, r5, r2
	ldr r1, [r2, #0x68]
	adds r1, r1, r0
	str r1, [r2, #0x68]
	adds r2, #0x70
	ldrh r0, [r2]
	lsrs r0, r0, #8
	lsls r0, r0, #1
	ldr r3, _08056F28
	adds r0, r0, r3
	movs r2, #0
	ldrsh r1, [r0, r2]
	ldr r0, _08056F2C
	bl CallARM_FX_Mul8
	ldr r2, [r6]
	adds r2, r5, r2
	ldr r1, [r2, #0x6c]
	adds r1, r1, r0
	str r1, [r2, #0x6c]
	movs r2, #0xc0
	lsls r2, r2, #1
_08056EEA:
	mov r0, r8
	adds r0, #4
	movs r1, #0
	bl sub_8025718
_08056EF4:
	mov r3, sl
	ldr r1, [r3]
	mov r0, sb
	add r0, r8
	lsls r0, r0, #3
	adds r2, r0, r1
	ldrh r1, [r2, #0x1c]
	ldr r0, _08056F30
	cmp r1, r0
	beq _08056F7E
	ldr r1, [r2, #0x68]
	asrs r1, r1, #8
	ldr r0, _08056F34
	ldrb r0, [r0]
	subs r1, r1, r0
	strh r1, [r2, #0x22]
	ldr r1, [r2, #0x6c]
	asrs r1, r1, #8
	ldr r0, _08056F38
	ldrb r0, [r0]
	subs r1, r1, r0
	adds r0, r2, #0
	adds r0, #0x24
	strb r1, [r0]
	b _08056F7E
	.align 2, 0
_08056F28: .4byte 0x080B1AE4
_08056F2C: .4byte 0x0000028A
_08056F30: .4byte 0x00000451
_08056F34: .4byte 0x0203F933
_08056F38: .4byte 0x0203F934
_08056F3C:
	ldrh r1, [r3, #0x1c]
	ldr r0, _08056FA0
	cmp r1, r0
	bne _08056F52
	adds r0, r3, #0
	adds r0, #0x1c
	ldr r1, _08056FA4
	movs r2, #0
	movs r3, #1
	bl sub_8003368
_08056F52:
	mov r1, sl
	ldr r0, [r1]
	adds r2, r4, r0
	ldrh r1, [r2, #0x1c]
	ldr r0, _08056FA4
	cmp r1, r0
	bne _08056F7E
	adds r0, r2, #0
	adds r0, #0x1c
	bl sub_8003770
	cmp r0, #0
	beq _08056F7E
	mov r2, sl
	ldr r0, [r2]
	adds r0, r0, r4
	adds r0, #0x1c
	ldr r1, _08056FA8
	movs r2, #0
	movs r3, #0
	bl sub_8003368
_08056F7E:
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	cmp r0, #3
	bhi _08056F8E
	b _08056D6A
_08056F8E:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08056FA0: .4byte 0x000004B3
_08056FA4: .4byte 0x000004B4
_08056FA8: .4byte 0x00000451

    .thumb
sub_8056FAC: @ 0x08056FAC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	movs r0, #3
	mov sl, r0
_08056FBC:
	movs r1, #3
	mov r2, sl
	lsls r2, r2, #0x18
	str r2, [sp, #8]
	asrs r2, r2, #0x18
	mov r8, r2
	lsls r0, r2, #4
	add r0, r8
	lsls r0, r0, #3
	mov sb, r0
_08056FD0:
	lsls r0, r1, #0x18
	asrs r1, r0, #0x18
	adds r7, r0, #0
	cmp r8, r1
	beq _080570B2
	ldr r3, _08057044
	ldr r2, [r3]
	mov r5, sb
	adds r4, r5, r2
	adds r0, r4, #0
	adds r0, #0x74
	ldrb r0, [r0]
	cmp r0, #0
	bne _080570B2
	lsls r0, r1, #4
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r5, r0, r2
	adds r0, r5, #0
	adds r0, #0x74
	ldrb r6, [r0]
	cmp r6, #0
	bne _080570B2
	ldrb r3, [r4, #8]
	adds r1, r3, #0
	subs r1, #8
	ldrb r2, [r5, #8]
	adds r0, r2, #0
	adds r0, #8
	cmp r1, r0
	bgt _080570B2
	adds r1, #0x10
	subs r0, #0x10
	cmp r1, r0
	blt _080570B2
	ldrh r2, [r4, #6]
	adds r3, r2, #0
	subs r3, #8
	ldrh r1, [r5, #6]
	adds r0, r1, #0
	adds r0, #8
	cmp r3, r0
	bgt _080570B2
	adds r2, #8
	subs r0, #0x10
	cmp r2, r0
	blt _080570B2
	ldr r1, [r4, #0x54]
	ldr r0, [r5, #0x54]
	cmp r1, r0
	ble _0805704C
	ldr r0, _08057048
	ldrb r0, [r0]
	cmp r2, r0
	bge _0805705C
	adds r0, r1, #0
	adds r0, #0xf2
	b _08057058
	.align 2, 0
_08057044: .4byte 0x0203F97C
_08057048: .4byte 0x0203F937
_0805704C:
	ldr r2, _08057090
	ldrb r2, [r2]
	cmp r3, r2
	ble _0805705C
	adds r0, r1, #0
	subs r0, #0xf2
_08057058:
	str r0, [r4, #0x54]
	str r6, [r4, #0x5c]
_0805705C:
	ldr r3, _08057094
	ldr r2, [r3]
	mov r4, sb
	adds r3, r4, r2
	asrs r1, r7, #0x18
	lsls r0, r1, #4
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r2
	ldr r1, [r3, #0x58]
	ldr r0, [r0, #0x58]
	cmp r1, r0
	ble _0805709C
	ldrb r0, [r3, #8]
	subs r0, #8
	ldr r5, _08057098
	ldrb r5, [r5]
	cmp r0, r5
	bge _080570B2
	adds r0, r1, #0
	adds r0, #0xf2
	str r0, [r3, #0x58]
	movs r0, #0
	str r0, [r3, #0x5c]
	b _080570B2
	.align 2, 0
_08057090: .4byte 0x0203F936
_08057094: .4byte 0x0203F97C
_08057098: .4byte 0x0203F939
_0805709C:
	ldrb r0, [r3, #8]
	subs r0, #8
	ldr r2, _08057400
	ldrb r2, [r2]
	cmp r0, r2
	ble _080570B2
	adds r0, r1, #0
	subs r0, #0xf2
	str r0, [r3, #0x58]
	movs r4, #0
	str r4, [r3, #0x5c]
_080570B2:
	movs r5, #0xff
	lsls r5, r5, #0x18
	adds r0, r7, r5
	lsrs r1, r0, #0x18
	cmp r0, #0
	bge _08056FD0
	ldr r7, [sp, #8]
	asrs r6, r7, #0x18
	ldr r0, _08057404
	ldr r1, [r0]
	lsls r0, r6, #4
	adds r0, r0, r6
	lsls r4, r0, #3
	adds r2, r4, r1
	ldr r3, [r2, #0x54]
	ldr r5, _08057408
	adds r1, r3, r5
	ldr r7, _0805740C
	ldrb r0, [r7]
	lsls r0, r0, #8
	cmp r1, r0
	bgt _080570E8
	adds r0, r3, #0
	adds r0, #0xf2
	str r0, [r2, #0x54]
	movs r0, #0
	str r0, [r2, #0x5c]
_080570E8:
	ldr r1, _08057404
	ldr r0, [r1]
	adds r2, r4, r0
	ldr r3, [r2, #0x54]
	movs r5, #0x80
	lsls r5, r5, #4
	adds r1, r3, r5
	ldr r7, _08057410
	ldrb r0, [r7]
	lsls r0, r0, #8
	cmp r1, r0
	blt _0805710A
	adds r0, r3, #0
	subs r0, #0xf2
	str r0, [r2, #0x54]
	movs r0, #0
	str r0, [r2, #0x5c]
_0805710A:
	ldr r1, _08057404
	ldr r0, [r1]
	adds r2, r4, r0
	ldr r3, [r2, #0x58]
	ldr r7, _08057408
	adds r1, r3, r7
	ldr r7, _08057400
	ldrb r0, [r7]
	lsls r0, r0, #8
	cmp r1, r0
	bgt _0805712A
	adds r0, r3, #0
	adds r0, #0xf2
	str r0, [r2, #0x58]
	movs r0, #0
	str r0, [r2, #0x5c]
_0805712A:
	ldr r1, _08057404
	ldr r0, [r1]
	adds r2, r4, r0
	ldr r3, [r2, #0x58]
	adds r1, r3, r5
	ldr r5, _08057414
	ldrb r0, [r5]
	lsls r0, r0, #8
	cmp r1, r0
	blt _08057148
	adds r0, r3, #0
	subs r0, #0xf2
	str r0, [r2, #0x58]
	movs r7, #0
	str r7, [r2, #0x5c]
_08057148:
	ldr r1, _08057404
	ldr r0, [r1]
	adds r5, r4, r0
	adds r0, r5, #0
	adds r0, #0x74
	ldrb r0, [r0]
	cmp r0, #0
	bne _080571EE
	ldr r7, _08057418
	ldr r1, [r7]
	adds r0, r1, #0
	adds r0, #0x7e
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r6, r0
	beq _080571EE
	adds r0, r1, #0
	adds r0, #0x7f
	ldrb r0, [r0]
	cmp r0, #0
	bne _080571EE
	ldrh r3, [r5, #6]
	adds r0, r3, #0
	subs r0, #8
	ldr r1, _0805741C
	ldr r4, [r1]
	ldrh r2, [r4, #6]
	adds r1, r2, #0
	adds r1, #8
	cmp r0, r1
	bgt _080571EE
	adds r1, r3, #0
	adds r1, #8
	adds r0, r2, #0
	subs r0, #8
	cmp r1, r0
	blt _080571EE
	ldrb r3, [r5, #8]
	adds r1, r3, #0
	subs r1, #8
	ldrb r2, [r4, #8]
	adds r0, r2, #0
	adds r0, #8
	cmp r1, r0
	bgt _080571EE
	adds r1, #0x10
	subs r0, #0x10
	cmp r1, r0
	blt _080571EE
	ldr r0, _08057420
	ldrb r0, [r0]
	cmp r0, #0
	beq _080571DE
	ldr r3, _08057424
	movs r2, #0x8c
	lsls r2, r2, #1
	adds r0, r3, r2
	ldrh r0, [r0]
	ldr r2, _08057428
	movs r4, #0x8d
	lsls r4, r4, #1
	adds r1, r3, r4
	ldrb r2, [r2]
	adds r1, r1, r2
	ldrb r1, [r1]
	movs r5, #0x8e
	lsls r5, r5, #1
	adds r2, r3, r5
	ldr r2, [r2]
	movs r3, #0x80
	lsls r3, r3, #9
	adds r2, r2, r3
	bl audio_new_fx
_080571DE:
	ldr r0, [r7]
	adds r0, #0x7f
	movs r1, #0x78
	strb r1, [r0]
	ldr r0, [r7]
	adds r0, #0x7e
	mov r4, sl
	strb r4, [r0]
_080571EE:
	movs r5, #0
	mov sb, r5
	ldr r7, [sp, #8]
	asrs r7, r7, #0x18
	mov sl, r7
	lsls r0, r7, #4
	add r0, sl
	str r0, [sp]
	ldr r0, _08057424
	str r0, [sp, #4]
_08057202:
	cmp sl, sb
	bne _08057208
	b _08057336
_08057208:
	ldr r2, _08057404
	ldr r1, [r2]
	mov r3, sb
	lsls r0, r3, #4
	add r0, sb
	lsls r0, r0, #3
	mov r8, r0
	adds r5, r0, r1
	adds r0, r5, #0
	adds r0, #0x72
	ldrh r0, [r0]
	cmp r0, #0
	bne _08057224
	b _08057336
_08057224:
	cmp r0, #0xe
	bls _0805722A
	b _08057336
_0805722A:
	ldr r4, [sp]
	lsls r7, r4, #3
	adds r4, r7, r1
	ldr r3, [r4, #0x54]
	ldr r0, _08057408
	adds r1, r3, r0
	ldr r0, [r5, #0x68]
	adds r2, r0, #0
	adds r2, #0xf
	cmp r1, r2
	bgt _08057336
	movs r6, #0x80
	lsls r6, r6, #4
	adds r0, r3, r6
	cmp r0, r2
	blt _08057336
	ldr r3, [r4, #0x58]
	ldr r2, _08057408
	adds r1, r3, r2
	ldr r0, [r5, #0x6c]
	adds r2, r0, #0
	adds r2, #0xf
	cmp r1, r2
	bgt _08057336
	adds r0, r3, r6
	cmp r0, r2
	blt _08057336
	ldr r0, _08057420
	ldrb r0, [r0]
	cmp r0, #0
	beq _0805728A
	ldr r3, [sp, #4]
	movs r4, #0xf0
	lsls r4, r4, #1
	adds r0, r3, r4
	ldrh r0, [r0]
	ldr r1, _08057428
	ldrb r1, [r1]
	ldr r5, _0805742C
	adds r1, r1, r5
	ldrb r1, [r1]
	ldr r3, _08057430
	ldr r2, [r3]
	movs r4, #0x80
	lsls r4, r4, #9
	adds r2, r2, r4
	bl audio_new_fx
_0805728A:
	ldr r5, _08057404
	ldr r0, [r5]
	adds r0, r7, r0
	adds r0, #0x74
	movs r1, #0x50
	strb r1, [r0]
	ldr r0, [r5]
	add r0, r8
	adds r0, #0x72
	movs r1, #0
	strh r1, [r0]
	ldr r1, _08057418
	ldr r0, [r1]
	adds r2, r0, #0
	adds r2, #0x7e
	ldrb r3, [r2]
	movs r0, #0
	ldrsb r0, [r2, r0]
	adds r5, r1, #0
	cmp r0, sl
	bne _080572B8
	movs r0, #0xff
	strb r0, [r2]
_080572B8:
	ldr r2, _08057404
	ldr r0, [r2]
	adds r1, r7, r0
	add r0, r8
	adds r0, #0x70
	ldrh r0, [r0]
	adds r2, r1, #0
	adds r2, #0x62
	strh r0, [r2]
	ldr r0, [r1, #0x54]
	movs r3, #0xbc
	lsls r3, r3, #8
	cmp r0, r3
	ble _080572F6
	ldr r1, [r1, #0x58]
	ldr r0, _08057434
	cmp r1, r0
	bgt _080572E2
	movs r0, #0xc0
	lsls r0, r0, #7
	strh r0, [r2]
_080572E2:
	ldr r4, _08057404
	ldr r0, [r4]
	adds r1, r7, r0
	ldr r0, [r1, #0x58]
	cmp r0, r3
	ble _080572F6
	adds r1, #0x62
	movs r0, #0xa0
	lsls r0, r0, #8
	strh r0, [r1]
_080572F6:
	ldr r4, _08057404
	ldr r0, [r4]
	ldr r7, [sp]
	lsls r3, r7, #3
	adds r1, r3, r0
	ldr r0, [r1, #0x54]
	ldr r2, _08057434
	cmp r0, r2
	bgt _0805732E
	ldr r0, [r1, #0x58]
	cmp r0, r2
	bgt _08057316
	adds r1, #0x62
	movs r0, #0x80
	lsls r0, r0, #6
	strh r0, [r1]
_08057316:
	ldr r0, [r4]
	adds r2, r3, r0
	ldr r1, [r2, #0x58]
	movs r0, #0xbc
	lsls r0, r0, #8
	cmp r1, r0
	ble _0805732E
	adds r1, r2, #0
	adds r1, #0x62
	movs r0, #0xe0
	lsls r0, r0, #8
	strh r0, [r1]
_0805732E:
	ldr r0, [r5]
	adds r0, #0x7f
	movs r1, #0
	strb r1, [r0]
_08057336:
	mov r0, sb
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
	cmp r0, #3
	bhi _08057346
	b _08057202
_08057346:
	ldr r2, [sp, #8]
	asrs r3, r2, #0x18
	ldr r5, _08057404
	ldr r1, [r5]
	lsls r0, r3, #4
	adds r0, r0, r3
	lsls r4, r0, #3
	adds r2, r4, r1
	adds r0, r2, #0
	adds r0, #0x64
	ldrh r1, [r0]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x18
	ldr r0, [r2, #0x5c]
	adds r0, r0, r1
	str r0, [r2, #0x5c]
	cmp r0, #0
	bge _0805736E
	movs r7, #0
	str r7, [r2, #0x5c]
_0805736E:
	ldr r0, [r5]
	adds r1, r4, r0
	ldr r0, [r1, #0x5c]
	cmp r0, #0xf2
	ble _0805737C
	movs r0, #0xf2
	str r0, [r1, #0x5c]
_0805737C:
	ldr r0, _08057418
	ldr r0, [r0]
	adds r0, #0x7e
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r3, r0
	bne _0805739E
	ldr r0, [r5]
	adds r0, r4, r0
	ldr r0, [r0, #0x5c]
	movs r1, #0xfc
	bl CallARM_FX_Mul8
	ldr r1, [r5]
	adds r1, r4, r1
	str r0, [r1, #0x5c]
_0805739E:
	ldr r0, [r5]
	adds r1, r4, r0
	adds r2, r1, #0
	adds r2, #0x74
	ldrb r0, [r2]
	cmp r0, #0
	bne _080573AE
	b _080574E4
_080573AE:
	adds r0, r1, #0
	adds r0, #0x64
	movs r3, #0
	strh r3, [r0]
	movs r7, #0
	str r7, [r1, #0x5c]
	adds r1, #0x60
	movs r3, #0xa0
	lsls r3, r3, #4
	adds r0, r3, #0
	ldrh r7, [r1]
	adds r0, r0, r7
	strh r0, [r1]
	ldrb r0, [r2]
	subs r0, #1
	strb r0, [r2]
	ldr r0, [r5]
	adds r1, r4, r0
	adds r3, r1, #0
	adds r3, #0x74
	ldrb r0, [r3]
	cmp r0, #0
	bne _080573DE
	b _080574E4
_080573DE:
	ldr r2, [r1, #0x54]
	ldr r0, _08057408
	adds r1, r2, r0
	ldr r0, _0805740C
	ldrb r0, [r0]
	lsls r0, r0, #8
	cmp r1, r0
	ble _0805746A
	movs r7, #0x80
	lsls r7, r7, #4
	adds r1, r2, r7
	ldr r0, _08057410
	ldrb r0, [r0]
	lsls r0, r0, #8
	cmp r1, r0
	b _08057438
	.align 2, 0
_08057400: .4byte 0x0203F938
_08057404: .4byte 0x0203F97C
_08057408: .4byte 0xFFFFF800
_0805740C: .4byte 0x0203F936
_08057410: .4byte 0x0203F937
_08057414: .4byte 0x0203F939
_08057418: .4byte 0x0203F978
_0805741C: .4byte 0x0203F970
_08057420: .4byte gCanPlaySfx
_08057424: .4byte 0x080CE440
_08057428: .4byte gSfxVolume
_0805742C: .4byte 0x080CE622
_08057430: .4byte 0x080CE624
_08057434: .4byte 0x000043FF
_08057438:
	bge _0805746A
	ldrb r1, [r3]
	lsls r1, r1, #2
	movs r0, #0xfa
	lsls r0, r0, #1
	bl CallARM_FX_Mul8
	ldr r1, [r5]
	adds r1, r4, r1
	adds r1, #0x62
	ldrh r1, [r1]
	lsrs r1, r1, #8
	adds r1, #0x40
	lsls r1, r1, #1
	ldr r2, _080574D0
	adds r1, r1, r2
	movs r3, #0
	ldrsh r1, [r1, r3]
	bl CallARM_FX_Mul8
	ldr r2, [r5]
	adds r2, r4, r2
	ldr r1, [r2, #0x54]
	adds r1, r1, r0
	str r1, [r2, #0x54]
_0805746A:
	ldr r4, [sp, #8]
	asrs r1, r4, #0x18
	ldr r5, _080574D4
	ldr r2, [r5]
	lsls r0, r1, #4
	adds r0, r0, r1
	lsls r4, r0, #3
	adds r3, r4, r2
	ldr r2, [r3, #0x58]
	ldr r7, _080574D8
	adds r1, r2, r7
	ldr r0, _080574DC
	ldrb r0, [r0]
	lsls r0, r0, #8
	cmp r1, r0
	ble _08057534
	movs r0, #0x80
	lsls r0, r0, #4
	adds r1, r2, r0
	ldr r0, _080574E0
	ldrb r0, [r0]
	lsls r0, r0, #8
	cmp r1, r0
	bge _08057534
	adds r0, r3, #0
	adds r0, #0x74
	ldrb r1, [r0]
	lsls r1, r1, #2
	movs r0, #0xfa
	lsls r0, r0, #1
	bl CallARM_FX_Mul8
	ldr r1, [r5]
	adds r1, r4, r1
	adds r1, #0x62
	ldrh r1, [r1]
	lsrs r1, r1, #8
	lsls r1, r1, #1
	ldr r2, _080574D0
	adds r1, r1, r2
	movs r3, #0
	ldrsh r1, [r1, r3]
	bl CallARM_FX_Mul8
	ldr r2, [r5]
	adds r2, r4, r2
	ldr r1, [r2, #0x58]
	adds r1, r1, r0
	str r1, [r2, #0x58]
	b _08057534
	.align 2, 0
_080574D0: .4byte 0x080B1AE4
_080574D4: .4byte 0x0203F97C
_080574D8: .4byte 0xFFFFF800
_080574DC: .4byte 0x0203F938
_080574E0: .4byte 0x0203F939
_080574E4:
	ldr r4, [sp, #8]
	asrs r0, r4, #0x18
	ldr r5, _080575F0
	ldr r1, [r5]
	lsls r4, r0, #4
	adds r4, r4, r0
	lsls r4, r4, #3
	adds r1, r4, r1
	ldr r0, [r1, #0x5c]
	adds r1, #0x60
	ldrh r1, [r1]
	lsrs r1, r1, #8
	adds r1, #0x40
	lsls r1, r1, #1
	ldr r7, _080575F4
	adds r1, r1, r7
	movs r2, #0
	ldrsh r1, [r1, r2]
	bl CallARM_FX_Mul8
	ldr r2, [r5]
	adds r2, r4, r2
	ldr r1, [r2, #0x54]
	adds r1, r1, r0
	str r1, [r2, #0x54]
	ldr r0, [r2, #0x5c]
	adds r2, #0x60
	ldrh r1, [r2]
	lsrs r1, r1, #8
	lsls r1, r1, #1
	adds r1, r1, r7
	movs r3, #0
	ldrsh r1, [r1, r3]
	bl CallARM_FX_Mul8
	ldr r1, [r5]
	adds r4, r4, r1
	ldr r1, [r4, #0x58]
	adds r1, r1, r0
	str r1, [r4, #0x58]
_08057534:
	ldr r5, [sp, #8]
	asrs r4, r5, #0x18
	ldr r7, _080575F0
	ldr r3, [r7]
	lsls r2, r4, #4
	adds r2, r2, r4
	lsls r2, r2, #3
	adds r3, r2, r3
	ldr r1, [r3, #0x54]
	asrs r1, r1, #8
	ldr r0, _080575F8
	mov r8, r0
	ldrb r0, [r0]
	subs r1, r1, r0
	strh r1, [r3, #6]
	ldr r1, [r3, #0x58]
	asrs r1, r1, #8
	ldr r7, _080575FC
	ldrb r0, [r7]
	subs r1, r1, r0
	strb r1, [r3, #8]
	ldr r1, _080575F0
	ldr r0, [r1]
	adds r2, r2, r0
	adds r2, #0x60
	ldrh r1, [r2]
	lsrs r1, r1, #8
	adds r0, r4, #0
	movs r2, #0x80
	lsls r2, r2, #1
	bl sub_8025718
	subs r4, #1
	lsls r4, r4, #0x18
	lsrs r2, r4, #0x18
	mov sl, r2
	cmp r4, #0
	blt _08057582
	b _08056FBC
_08057582:
	ldr r4, _080575F0
	ldr r0, [r4]
	ldr r0, [r0, #0x54]
	ldr r5, _08057600
	adds r0, r0, r5
	movs r6, #0xe7
	lsls r6, r6, #8
	adds r1, r6, #0
	bl sub_8003934
	lsrs r0, r0, #4
	mov r3, r8
	strb r0, [r3]
	ldr r0, [r4]
	ldr r0, [r0, #0x58]
	adds r0, r0, r5
	adds r1, r6, #0
	bl sub_8003934
	lsls r1, r0, #1
	adds r1, r1, r0
	lsrs r1, r1, #3
	strb r1, [r7]
	movs r3, #1
	mov r6, r8
	adds r5, r7, #0
_080575B6:
	ldr r0, [r4]
	lsls r2, r3, #4
	adds r2, r2, r3
	lsls r2, r2, #3
	adds r2, r2, r0
	ldr r0, [r2, #0x54]
	asrs r0, r0, #8
	ldrb r1, [r6]
	subs r0, r0, r1
	strh r0, [r2, #6]
	ldr r0, [r2, #0x58]
	asrs r0, r0, #8
	ldrb r1, [r5]
	subs r0, r0, r1
	strb r0, [r2, #8]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #3
	bls _080575B6
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080575F0: .4byte 0x0203F97C
_080575F4: .4byte 0x080B1AE4
_080575F8: .4byte 0x0203F933
_080575FC: .4byte 0x0203F934
_08057600: .4byte 0xFFFFF400

    .thumb
sub_8057604: @ 0x08057604
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	movs r0, #3
_08057612:
	movs r2, #3
	lsls r0, r0, #0x18
	str r0, [sp, #8]
	asrs r0, r0, #0x18
	mov r8, r0
	lsls r0, r0, #4
	add r0, r8
	lsls r0, r0, #3
	mov sb, r0
_08057624:
	lsls r0, r2, #0x18
	asrs r1, r0, #0x18
	adds r7, r0, #0
	cmp r8, r1
	beq _0805770A
	ldr r0, _08057698
	ldr r2, [r0]
	mov r3, sb
	adds r4, r3, r2
	adds r0, r4, #0
	adds r0, #0x74
	ldrb r0, [r0]
	cmp r0, #0
	bne _0805770A
	lsls r0, r1, #4
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r5, r0, r2
	adds r0, r5, #0
	adds r0, #0x74
	ldrb r6, [r0]
	cmp r6, #0
	bne _0805770A
	ldrb r3, [r4, #8]
	adds r1, r3, #0
	subs r1, #8
	ldrb r2, [r5, #8]
	adds r0, r2, #0
	adds r0, #8
	cmp r1, r0
	bgt _0805770A
	adds r1, #0x10
	subs r0, #0x10
	cmp r1, r0
	blt _0805770A
	ldrh r2, [r4, #6]
	adds r3, r2, #0
	subs r3, #8
	ldrh r1, [r5, #6]
	adds r0, r1, #0
	adds r0, #8
	cmp r3, r0
	bgt _0805770A
	adds r2, #8
	subs r0, #0x10
	cmp r2, r0
	blt _0805770A
	ldr r1, [r4, #0x54]
	ldr r0, [r5, #0x54]
	cmp r1, r0
	ble _080576A0
	ldr r5, _0805769C
	ldrb r5, [r5]
	cmp r2, r5
	bge _080576B0
	movs r2, #0xa5
	lsls r2, r2, #1
	b _080576AA
	.align 2, 0
_08057698: .4byte 0x0203F97C
_0805769C: .4byte 0x0203F937
_080576A0:
	ldr r5, _080576E4
	ldrb r5, [r5]
	cmp r3, r5
	ble _080576B0
	ldr r2, _080576E8
_080576AA:
	adds r0, r1, r2
	str r0, [r4, #0x54]
	str r6, [r4, #0x5c]
_080576B0:
	ldr r3, _080576EC
	ldr r2, [r3]
	mov r4, sb
	adds r3, r4, r2
	asrs r1, r7, #0x18
	lsls r0, r1, #4
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r2
	ldr r1, [r3, #0x58]
	ldr r0, [r0, #0x58]
	cmp r1, r0
	ble _080576F4
	ldrb r0, [r3, #8]
	subs r0, #8
	ldr r5, _080576F0
	ldrb r5, [r5]
	cmp r0, r5
	bge _0805770A
	movs r6, #0xa5
	lsls r6, r6, #1
	adds r0, r1, r6
	str r0, [r3, #0x58]
	movs r0, #0
	str r0, [r3, #0x5c]
	b _0805770A
	.align 2, 0
_080576E4: .4byte 0x0203F936
_080576E8: .4byte 0xFFFFFEB6
_080576EC: .4byte 0x0203F97C
_080576F0: .4byte 0x0203F939
_080576F4:
	ldrb r0, [r3, #8]
	subs r0, #8
	ldr r2, _08057A3C
	ldrb r2, [r2]
	cmp r0, r2
	ble _0805770A
	ldr r4, _08057A40
	adds r0, r1, r4
	str r0, [r3, #0x58]
	movs r5, #0
	str r5, [r3, #0x5c]
_0805770A:
	movs r6, #0xff
	lsls r6, r6, #0x18
	adds r0, r7, r6
	lsrs r2, r0, #0x18
	cmp r0, #0
	bge _08057624
	ldr r7, [sp, #8]
	asrs r5, r7, #0x18
	ldr r0, _08057A44
	ldr r1, [r0]
	lsls r0, r5, #4
	adds r0, r0, r5
	mov r8, r0
	lsls r4, r0, #3
	adds r2, r4, r1
	ldr r3, [r2, #0x54]
	ldr r6, _08057A48
	adds r1, r3, r6
	ldr r7, _08057A4C
	ldrb r0, [r7]
	lsls r0, r0, #8
	cmp r1, r0
	bgt _08057744
	movs r1, #0xa5
	lsls r1, r1, #1
	adds r0, r3, r1
	str r0, [r2, #0x54]
	movs r3, #0
	str r3, [r2, #0x5c]
_08057744:
	ldr r6, _08057A44
	ldr r0, [r6]
	adds r2, r4, r0
	ldr r3, [r2, #0x54]
	movs r6, #0x80
	lsls r6, r6, #4
	adds r1, r3, r6
	ldr r7, _08057A50
	ldrb r0, [r7]
	lsls r0, r0, #8
	cmp r1, r0
	blt _08057766
	ldr r1, _08057A40
	adds r0, r3, r1
	str r0, [r2, #0x54]
	movs r3, #0
	str r3, [r2, #0x5c]
_08057766:
	ldr r7, _08057A44
	ldr r0, [r7]
	adds r2, r4, r0
	ldr r3, [r2, #0x58]
	ldr r0, _08057A48
	adds r1, r3, r0
	ldr r7, _08057A3C
	ldrb r0, [r7]
	lsls r0, r0, #8
	cmp r1, r0
	bgt _08057788
	movs r1, #0xa5
	lsls r1, r1, #1
	adds r0, r3, r1
	str r0, [r2, #0x58]
	movs r3, #0
	str r3, [r2, #0x5c]
_08057788:
	ldr r7, _08057A44
	ldr r0, [r7]
	adds r2, r4, r0
	ldr r3, [r2, #0x58]
	adds r1, r3, r6
	ldr r4, _08057A54
	ldrb r0, [r4]
	lsls r0, r0, #8
	cmp r1, r0
	blt _080577A6
	ldr r6, _08057A40
	adds r0, r3, r6
	str r0, [r2, #0x58]
	movs r7, #0
	str r7, [r2, #0x5c]
_080577A6:
	movs r0, #0
	mov sb, r0
	str r5, [sp]
	mov r1, r8
	str r1, [sp, #4]
	ldr r2, _08057A58
	mov sl, r2
_080577B4:
	ldr r3, [sp]
	cmp r3, sb
	bne _080577BC
	b _080578DE
_080577BC:
	ldr r4, _08057A44
	ldr r1, [r4]
	mov r5, sb
	lsls r0, r5, #4
	add r0, sb
	lsls r0, r0, #3
	mov r8, r0
	adds r5, r0, r1
	adds r0, r5, #0
	adds r0, #0x72
	ldrh r0, [r0]
	cmp r0, #0
	bne _080577D8
	b _080578DE
_080577D8:
	ldr r6, [sp, #4]
	lsls r7, r6, #3
	adds r4, r7, r1
	ldr r3, [r4, #0x54]
	ldr r0, _08057A48
	adds r1, r3, r0
	ldr r0, [r5, #0x68]
	adds r2, r0, #0
	adds r2, #0xf
	cmp r1, r2
	bgt _080578DE
	movs r6, #0x80
	lsls r6, r6, #4
	adds r0, r3, r6
	cmp r0, r2
	blt _080578DE
	ldr r3, [r4, #0x58]
	ldr r2, _08057A48
	adds r1, r3, r2
	ldr r0, [r5, #0x6c]
	adds r2, r0, #0
	adds r2, #0xf
	cmp r1, r2
	bgt _080578DE
	adds r0, r3, r6
	cmp r0, r2
	blt _080578DE
	ldr r0, _08057A5C
	ldrb r0, [r0]
	cmp r0, #0
	beq _0805783A
	movs r0, #0xf0
	lsls r0, r0, #1
	add r0, sl
	ldrh r0, [r0]
	ldr r2, _08057A60
	movs r1, #0xf1
	lsls r1, r1, #1
	add r1, sl
	ldrb r2, [r2]
	adds r1, r1, r2
	ldrb r1, [r1]
	ldr r3, _08057A64
	ldr r2, [r3]
	movs r4, #0x80
	lsls r4, r4, #9
	adds r2, r2, r4
	bl audio_new_fx
_0805783A:
	ldr r5, _08057A44
	ldr r0, [r5]
	adds r0, r7, r0
	adds r0, #0x74
	movs r1, #0x50
	strb r1, [r0]
	ldr r0, [r5]
	add r0, r8
	adds r0, #0x72
	movs r6, #0
	strh r6, [r0]
	ldr r0, _08057A68
	ldr r0, [r0]
	adds r1, r0, #0
	adds r1, #0x7e
	ldrb r2, [r1]
	movs r0, #0
	ldrsb r0, [r1, r0]
	ldr r3, [sp]
	cmp r0, r3
	bne _08057868
	movs r0, #0xff
	strb r0, [r1]
_08057868:
	ldr r4, _08057A44
	ldr r0, [r4]
	adds r1, r7, r0
	add r0, r8
	adds r0, #0x70
	ldrh r0, [r0]
	adds r2, r1, #0
	adds r2, #0x62
	strh r0, [r2]
	ldr r0, [r1, #0x54]
	movs r3, #0xbc
	lsls r3, r3, #8
	cmp r0, r3
	ble _080578A6
	ldr r1, [r1, #0x58]
	ldr r0, _08057A6C
	cmp r1, r0
	bgt _08057892
	movs r0, #0xc0
	lsls r0, r0, #7
	strh r0, [r2]
_08057892:
	ldr r5, _08057A44
	ldr r0, [r5]
	adds r1, r7, r0
	ldr r0, [r1, #0x58]
	cmp r0, r3
	ble _080578A6
	adds r1, #0x62
	movs r0, #0xa0
	lsls r0, r0, #8
	strh r0, [r1]
_080578A6:
	ldr r4, _08057A44
	ldr r0, [r4]
	ldr r6, [sp, #4]
	lsls r3, r6, #3
	adds r1, r3, r0
	ldr r0, [r1, #0x54]
	ldr r2, _08057A6C
	cmp r0, r2
	bgt _080578DE
	ldr r0, [r1, #0x58]
	cmp r0, r2
	bgt _080578C6
	adds r1, #0x62
	movs r0, #0x80
	lsls r0, r0, #6
	strh r0, [r1]
_080578C6:
	ldr r0, [r4]
	adds r2, r3, r0
	ldr r1, [r2, #0x58]
	movs r0, #0xbc
	lsls r0, r0, #8
	cmp r1, r0
	ble _080578DE
	adds r1, r2, #0
	adds r1, #0x62
	movs r0, #0xe0
	lsls r0, r0, #8
	strh r0, [r1]
_080578DE:
	mov r0, sb
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
	cmp r0, #3
	bhi _080578EE
	b _080577B4
_080578EE:
	ldr r7, [sp, #8]
	asrs r3, r7, #0x18
	ldr r5, _08057A44
	ldr r1, [r5]
	lsls r0, r3, #4
	adds r0, r0, r3
	lsls r4, r0, #3
	adds r2, r4, r1
	adds r0, r2, #0
	adds r0, #0x64
	ldrh r1, [r0]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x18
	ldr r0, [r2, #0x5c]
	adds r0, r0, r1
	str r0, [r2, #0x5c]
	cmp r0, #0
	bge _08057916
	movs r0, #0
	str r0, [r2, #0x5c]
_08057916:
	ldr r0, [r5]
	adds r1, r4, r0
	ldr r0, [r1, #0x5c]
	movs r2, #0xa5
	lsls r2, r2, #1
	cmp r0, r2
	ble _08057926
	str r2, [r1, #0x5c]
_08057926:
	ldr r0, _08057A68
	ldr r0, [r0]
	adds r0, #0x7e
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r3, r0
	bne _08057948
	ldr r0, [r5]
	adds r0, r4, r0
	ldr r0, [r0, #0x5c]
	movs r1, #0xfc
	bl CallARM_FX_Mul8
	ldr r1, [r5]
	adds r1, r4, r1
	str r0, [r1, #0x5c]
_08057948:
	ldr r0, [r5]
	adds r1, r4, r0
	adds r2, r1, #0
	adds r2, #0x74
	ldrb r0, [r2]
	cmp r0, #0
	bne _08057958
	b _08057A74
_08057958:
	adds r0, r1, #0
	adds r0, #0x64
	movs r3, #0
	strh r3, [r0]
	movs r6, #0
	str r6, [r1, #0x5c]
	adds r1, #0x60
	movs r7, #0xa0
	lsls r7, r7, #4
	adds r0, r7, #0
	ldrh r3, [r1]
	adds r0, r0, r3
	strh r0, [r1]
	ldrb r0, [r2]
	subs r0, #1
	strb r0, [r2]
	ldr r0, [r5]
	adds r1, r4, r0
	adds r3, r1, #0
	adds r3, #0x74
	ldrb r0, [r3]
	cmp r0, #0
	beq _08057A74
	ldr r2, [r1, #0x54]
	ldr r6, _08057A48
	adds r1, r2, r6
	ldr r0, _08057A4C
	ldrb r0, [r0]
	lsls r0, r0, #8
	cmp r1, r0
	ble _080579D6
	movs r7, #0x80
	lsls r7, r7, #4
	adds r1, r2, r7
	ldr r0, _08057A50
	ldrb r0, [r0]
	lsls r0, r0, #8
	cmp r1, r0
	bge _080579D6
	ldrb r1, [r3]
	lsls r1, r1, #2
	movs r0, #0xfa
	lsls r0, r0, #1
	bl CallARM_FX_Mul8
	ldr r1, [r5]
	adds r1, r4, r1
	adds r1, #0x62
	ldrh r1, [r1]
	lsrs r1, r1, #8
	adds r1, #0x40
	lsls r1, r1, #1
	ldr r2, _08057A70
	adds r1, r1, r2
	movs r3, #0
	ldrsh r1, [r1, r3]
	bl CallARM_FX_Mul8
	ldr r2, [r5]
	adds r2, r4, r2
	ldr r1, [r2, #0x54]
	adds r1, r1, r0
	str r1, [r2, #0x54]
_080579D6:
	ldr r4, [sp, #8]
	asrs r1, r4, #0x18
	ldr r5, _08057A44
	ldr r2, [r5]
	lsls r0, r1, #4
	adds r0, r0, r1
	lsls r4, r0, #3
	adds r3, r4, r2
	ldr r2, [r3, #0x58]
	ldr r6, _08057A48
	adds r1, r2, r6
	ldr r0, _08057A3C
	ldrb r0, [r0]
	lsls r0, r0, #8
	cmp r1, r0
	ble _08057AC4
	movs r7, #0x80
	lsls r7, r7, #4
	adds r1, r2, r7
	ldr r0, _08057A54
	ldrb r0, [r0]
	lsls r0, r0, #8
	cmp r1, r0
	bge _08057AC4
	adds r0, r3, #0
	adds r0, #0x74
	ldrb r1, [r0]
	lsls r1, r1, #2
	movs r0, #0xfa
	lsls r0, r0, #1
	bl CallARM_FX_Mul8
	ldr r1, [r5]
	adds r1, r4, r1
	adds r1, #0x62
	ldrh r1, [r1]
	lsrs r1, r1, #8
	lsls r1, r1, #1
	ldr r2, _08057A70
	adds r1, r1, r2
	movs r3, #0
	ldrsh r1, [r1, r3]
	bl CallARM_FX_Mul8
	ldr r2, [r5]
	adds r2, r4, r2
	ldr r1, [r2, #0x58]
	adds r1, r1, r0
	str r1, [r2, #0x58]
	b _08057AC4
	.align 2, 0
_08057A3C: .4byte 0x0203F938
_08057A40: .4byte 0xFFFFFEB6
_08057A44: .4byte 0x0203F97C
_08057A48: .4byte 0xFFFFF800
_08057A4C: .4byte 0x0203F936
_08057A50: .4byte 0x0203F937
_08057A54: .4byte 0x0203F939
_08057A58: .4byte 0x080CE440
_08057A5C: .4byte gCanPlaySfx
_08057A60: .4byte gSfxVolume
_08057A64: .4byte 0x080CE624
_08057A68: .4byte 0x0203F978
_08057A6C: .4byte 0x000043FF
_08057A70: .4byte 0x080B1AE4
_08057A74:
	ldr r4, [sp, #8]
	asrs r0, r4, #0x18
	ldr r5, _08057B7C
	ldr r1, [r5]
	lsls r4, r0, #4
	adds r4, r4, r0
	lsls r4, r4, #3
	adds r1, r4, r1
	ldr r0, [r1, #0x5c]
	adds r1, #0x60
	ldrh r1, [r1]
	lsrs r1, r1, #8
	adds r1, #0x40
	lsls r1, r1, #1
	ldr r6, _08057B80
	adds r1, r1, r6
	movs r7, #0
	ldrsh r1, [r1, r7]
	bl CallARM_FX_Mul8
	ldr r2, [r5]
	adds r2, r4, r2
	ldr r1, [r2, #0x54]
	adds r1, r1, r0
	str r1, [r2, #0x54]
	ldr r0, [r2, #0x5c]
	adds r2, #0x60
	ldrh r1, [r2]
	lsrs r1, r1, #8
	lsls r1, r1, #1
	adds r1, r1, r6
	movs r2, #0
	ldrsh r1, [r1, r2]
	bl CallARM_FX_Mul8
	ldr r1, [r5]
	adds r4, r4, r1
	ldr r1, [r4, #0x58]
	adds r1, r1, r0
	str r1, [r4, #0x58]
_08057AC4:
	ldr r3, [sp, #8]
	asrs r4, r3, #0x18
	ldr r5, _08057B7C
	ldr r3, [r5]
	lsls r2, r4, #4
	adds r2, r2, r4
	lsls r2, r2, #3
	adds r3, r2, r3
	ldr r1, [r3, #0x54]
	asrs r1, r1, #8
	ldr r6, _08057B84
	mov r8, r6
	ldrb r0, [r6]
	subs r1, r1, r0
	strh r1, [r3, #6]
	ldr r1, [r3, #0x58]
	asrs r1, r1, #8
	ldr r7, _08057B88
	ldrb r0, [r7]
	subs r1, r1, r0
	strb r1, [r3, #8]
	ldr r0, [r5]
	adds r2, r2, r0
	adds r2, #0x60
	ldrh r1, [r2]
	lsrs r1, r1, #8
	adds r0, r4, #0
	movs r2, #0x80
	lsls r2, r2, #1
	bl sub_8025718
	subs r4, #1
	lsls r4, r4, #0x18
	lsrs r0, r4, #0x18
	cmp r4, #0
	blt _08057B0E
	b _08057612
_08057B0E:
	ldr r4, _08057B7C
	ldr r0, [r4]
	ldr r0, [r0, #0x54]
	ldr r5, _08057B8C
	adds r0, r0, r5
	movs r6, #0xe7
	lsls r6, r6, #8
	adds r1, r6, #0
	bl sub_8003934
	lsrs r0, r0, #4
	mov r1, r8
	strb r0, [r1]
	ldr r0, [r4]
	ldr r0, [r0, #0x58]
	adds r0, r0, r5
	adds r1, r6, #0
	bl sub_8003934
	lsls r1, r0, #1
	adds r1, r1, r0
	lsrs r1, r1, #3
	strb r1, [r7]
	movs r3, #1
	mov r6, r8
	adds r5, r7, #0
_08057B42:
	ldr r0, [r4]
	lsls r2, r3, #4
	adds r2, r2, r3
	lsls r2, r2, #3
	adds r2, r2, r0
	ldr r0, [r2, #0x54]
	asrs r0, r0, #8
	ldrb r1, [r6]
	subs r0, r0, r1
	strh r0, [r2, #6]
	ldr r0, [r2, #0x58]
	asrs r0, r0, #8
	ldrb r1, [r5]
	subs r0, r0, r1
	strb r0, [r2, #8]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #3
	bls _08057B42
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08057B7C: .4byte 0x0203F97C
_08057B80: .4byte 0x080B1AE4
_08057B84: .4byte 0x0203F933
_08057B88: .4byte 0x0203F934
_08057B8C: .4byte 0xFFFFF400

    .thumb
sub_8057B90: @ 0x08057B90
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r7, _08057C9C
	ldr r1, [r7]
	adds r0, r1, #0
	adds r0, #0x7e
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	mov r8, r0
	cmp r0, #0
	bge _08057BB0
	b _08057D62
_08057BB0:
	adds r1, #0x7f
	ldrb r0, [r1]
	cmp r0, #0
	beq _08057BBC
	subs r0, #1
	strb r0, [r1]
_08057BBC:
	ldr r0, [r7]
	adds r0, #0x7f
	ldrb r1, [r0]
	movs r0, #0x78
	subs r0, r0, r1
	lsls r0, r0, #8
	movs r1, #0xf0
	lsls r1, r1, #7
	bl sub_8003934
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0xa0
	lsls r1, r1, #5
	bl CallARM_FX_Mul8
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r5, _08057CA0
	ldr r0, _08057CA4
	mov sb, r0
	ldr r1, [r0]
	mov r2, r8
	lsls r0, r2, #4
	add r0, r8
	lsls r6, r0, #3
	adds r1, r6, r1
	adds r1, #0x60
	ldrh r0, [r1]
	lsrs r0, r0, #8
	adds r0, #0x40
	lsls r0, r0, #1
	adds r0, r0, r5
	movs r3, #0
	ldrsh r1, [r0, r3]
	adds r0, r4, #0
	bl CallARM_FX_Mul8
	ldr r3, [r7]
	mov r1, sb
	ldr r2, [r1]
	adds r2, r6, r2
	ldr r1, [r2, #0x54]
	subs r1, r1, r0
	adds r3, #0x74
	strh r1, [r3]
	adds r2, #0x60
	ldrh r0, [r2]
	lsrs r0, r0, #8
	lsls r0, r0, #1
	adds r0, r0, r5
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r0, r4, #0
	bl CallARM_FX_Mul8
	ldr r2, [r7]
	mov r3, sb
	ldr r1, [r3]
	adds r1, r6, r1
	ldr r1, [r1, #0x58]
	subs r1, r1, r0
	adds r0, r2, #0
	adds r0, #0x76
	strh r1, [r0]
	adds r2, #0x74
	ldrh r1, [r2]
	ldr r0, _08057CA8
	ldrb r0, [r0]
	lsls r0, r0, #8
	cmp r1, r0
	bge _08057C50
	strh r0, [r2]
_08057C50:
	ldr r0, [r7]
	adds r2, r0, #0
	adds r2, #0x74
	ldrh r1, [r2]
	ldr r0, _08057CAC
	ldrb r0, [r0]
	lsls r0, r0, #8
	cmp r1, r0
	ble _08057C64
	strh r0, [r2]
_08057C64:
	ldr r0, [r7]
	adds r2, r0, #0
	adds r2, #0x76
	ldrh r1, [r2]
	ldr r0, _08057CB0
	ldrb r0, [r0]
	lsls r0, r0, #8
	cmp r1, r0
	bge _08057C78
	strh r0, [r2]
_08057C78:
	ldr r0, [r7]
	adds r2, r0, #0
	adds r2, #0x76
	ldrh r1, [r2]
	ldr r0, _08057CB4
	ldrb r0, [r0]
	lsls r0, r0, #8
	cmp r1, r0
	ble _08057C8C
	strh r0, [r2]
_08057C8C:
	mov r4, r8
	cmp r4, #0
	beq _08057CB8
	mov r0, sb
	ldr r1, [r0]
	adds r1, r6, r1
	b _08057CBC
	.align 2, 0
_08057C9C: .4byte 0x0203F978
_08057CA0: .4byte 0x080B1AE4
_08057CA4: .4byte 0x0203F97C
_08057CA8: .4byte 0x0203F936
_08057CAC: .4byte 0x0203F937
_08057CB0: .4byte 0x0203F938
_08057CB4: .4byte 0x0203F939
_08057CB8:
	mov r2, sb
	ldr r1, [r2]
_08057CBC:
	ldr r0, [r1, #0x78]
	adds r0, #1
	str r0, [r1, #0x78]
	movs r3, #0
	mov sb, r3
_08057CC6:
	mov r0, sb
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #3
	bhi _08057D54
	ldr r4, _08057E30
	mov sl, r4
	mov r1, sb
	lsls r0, r1, #4
	add r0, sb
	lsls r0, r0, #3
	mov ip, r0
_08057CE0:
	mov r2, sl
	ldr r0, [r2]
	mov r3, ip
	adds r6, r3, r0
	lsls r2, r7, #4
	adds r1, r2, r7
	lsls r1, r1, #3
	adds r3, r1, r0
	ldr r5, [r6, #0x78]
	ldr r4, [r3, #0x78]
	mov r8, r2
	cmp r5, r4
	bls _08057D0E
	adds r0, r6, #0
	adds r0, #0x76
	adds r2, r3, #0
	adds r2, #0x76
	movs r1, #0
	ldrsb r1, [r0, r1]
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r1, r0
	bgt _08057D26
_08057D0E:
	cmp r5, r4
	bhs _08057D4A
	adds r0, r6, #0
	adds r0, #0x76
	adds r1, r3, #0
	adds r1, #0x76
	movs r2, #0
	ldrsb r2, [r0, r2]
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r2, r0
	bge _08057D4A
_08057D26:
	mov r4, sl
	ldr r1, [r4]
	mov r0, ip
	adds r2, r0, r1
	adds r2, #0x76
	ldrb r3, [r2]
	mov r4, r8
	adds r0, r4, r7
	lsls r0, r0, #3
	adds r1, r0, r1
	adds r1, #0x76
	ldrb r1, [r1]
	strb r1, [r2]
	mov r2, sl
	ldr r1, [r2]
	adds r0, r0, r1
	adds r0, #0x76
	strb r3, [r0]
_08057D4A:
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #3
	bls _08057CE0
_08057D54:
	mov r0, sb
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
	cmp r0, #3
	bls _08057CC6
_08057D62:
	movs r3, #0
	mov sb, r3
	ldr r5, _08057E30
	ldr r6, _08057E34
_08057D6A:
	ldr r1, [r5]
	mov r4, sb
	lsls r0, r4, #4
	add r0, sb
	lsls r4, r0, #3
	adds r1, r4, r1
	adds r1, #0x76
	movs r0, #0
	ldrsb r0, [r1, r0]
	lsls r0, r0, #8
	movs r1, #0x80
	lsls r1, r1, #3
	bl sub_8003934
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0xbb
	lsls r1, r1, #1
	bl CallARM_FX_Mul8
	adds r2, r0, #0
	lsls r2, r2, #0x10
	movs r0, #0x80
	lsls r0, r0, #0x11
	adds r2, r2, r0
	lsrs r2, r2, #0x10
	mov r0, sb
	adds r0, #8
	movs r1, #0
	bl sub_8025718
	ldr r0, [r5]
	adds r0, r4, r0
	adds r2, r0, #0
	adds r2, #0x40
	adds r0, #0x76
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrb r1, [r2]
	ldrb r0, [r0, #3]
	cmp r1, r0
	bhs _08057DCA
	adds r0, r1, #1
	strb r0, [r2]
_08057DCA:
	ldr r0, [r5]
	adds r0, r4, r0
	adds r2, r0, #0
	adds r2, #0x40
	adds r0, #0x76
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrb r1, [r2]
	ldrb r0, [r0, #3]
	cmp r1, r0
	bls _08057DEC
	subs r0, r1, #1
	strb r0, [r2]
_08057DEC:
	mov r0, sb
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
	cmp r0, #3
	bls _08057D6A
	ldr r0, _08057E38
	ldr r3, [r0]
	ldr r0, _08057E3C
	ldr r2, [r0]
	adds r0, r2, #0
	adds r0, #0x74
	ldrh r0, [r0]
	lsrs r0, r0, #8
	ldr r1, _08057E40
	ldrb r1, [r1]
	subs r0, r0, r1
	strh r0, [r3, #6]
	adds r2, #0x76
	ldrh r0, [r2]
	lsrs r0, r0, #8
	ldr r1, _08057E44
	ldrb r1, [r1]
	subs r0, r0, r1
	strb r0, [r3, #8]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08057E30: .4byte 0x0203F97C
_08057E34: .4byte 0x080B1FB0
_08057E38: .4byte 0x0203F970
_08057E3C: .4byte 0x0203F978
_08057E40: .4byte 0x0203F933
_08057E44: .4byte 0x0203F934

    .thumb
sub_8057E48: @ 0x08057E48
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	movs r5, #0
_08057E56:
	ldr r0, _08057E94
	lsls r1, r5, #3
	adds r1, r1, r5
	lsls r1, r1, #3
	ldr r0, [r0]
	adds r4, r0, r1
	cmp r5, #7
	bls _08057E68
	b _08058008
_08057E68:
	adds r0, r4, #0
	adds r0, #0x40
	ldrh r1, [r4, #0x3a]
	str r0, [sp]
	ldrh r0, [r0]
	cmp r1, r0
	beq _08057E78
	b _08057FB0
_08057E78:
	adds r1, r4, #0
	adds r1, #0x42
	ldrh r0, [r1]
	cmp r0, #0
	bne _08057E98
	adds r0, r4, #0
	bl sub_8056B34
	movs r1, #0x24
	adds r1, r1, r4
	mov sl, r1
	adds r5, #1
	mov sb, r5
	b _08057FCE
	.align 2, 0
_08057E94: .4byte 0x0203F980
_08057E98:
	subs r0, #1
	strh r0, [r1]
	movs r2, #0
	mov r8, r2
	movs r3, #0x24
	adds r3, r3, r4
	mov sl, r3
	adds r5, #1
	mov sb, r5
	ldr r6, _08057F34
_08057EAC:
	ldr r0, _08057F38
	ldr r1, [r0]
	mov r2, r8
	lsls r0, r2, #4
	add r0, r8
	lsls r0, r0, #3
	adds r5, r0, r1
	ldr r0, [r5, #0x54]
	asrs r3, r0, #8
	adds r1, r3, #0
	subs r1, #8
	ldrh r0, [r4, #0x38]
	lsrs r2, r0, #8
	adds r0, r2, #6
	cmp r1, r0
	bgt _08057F98
	adds r1, #0x10
	subs r0, r2, #6
	cmp r1, r0
	blt _08057F98
	ldr r0, [r5, #0x58]
	asrs r3, r0, #8
	adds r1, r3, #0
	subs r1, #8
	ldrh r0, [r4, #0x3a]
	lsrs r2, r0, #8
	adds r0, r2, #6
	cmp r1, r0
	bgt _08057F98
	adds r1, #0x10
	subs r0, r2, #6
	cmp r1, r0
	blt _08057F98
	ldr r0, _08057F3C
	ldrb r0, [r0]
	cmp r0, #3
	bne _08057F98
	mov r3, r8
	cmp r3, #0
	bne _08057F4C
	ldr r0, _08057F40
	ldrb r0, [r0]
	cmp r0, #0
	beq _08057F28
	movs r1, #0x8c
	lsls r1, r1, #1
	adds r0, r6, r1
	ldrh r0, [r0]
	ldr r2, _08057F44
	movs r3, #0x8d
	lsls r3, r3, #1
	adds r1, r6, r3
	ldrb r2, [r2]
	adds r1, r1, r2
	ldrb r1, [r1]
	ldr r3, _08057F48
	ldr r2, [r3]
	movs r3, #0x80
	lsls r3, r3, #9
	adds r2, r2, r3
	bl audio_new_fx
_08057F28:
	ldr r0, _08057F38
	ldr r1, [r0]
	ldr r0, [r1, #0x78]
	adds r0, #1
	str r0, [r1, #0x78]
	b _08057F52
	.align 2, 0
_08057F34: .4byte 0x080CE440
_08057F38: .4byte 0x0203F97C
_08057F3C: .4byte 0x0203F93D
_08057F40: .4byte gCanPlaySfx
_08057F44: .4byte gSfxVolume
_08057F48: .4byte 0x080CE55C
_08057F4C:
	ldr r0, [r5, #0x78]
	adds r0, #1
	str r0, [r5, #0x78]
_08057F52:
	movs r1, #0
	mov r8, r1
	ldr r7, _08057FA8
	ldr r5, _08057FAC
_08057F5A:
	ldr r0, [r7]
	mov r2, r8
	lsls r1, r2, #4
	add r1, r8
	lsls r1, r1, #3
	adds r2, r1, r0
	ldr r0, [r2, #0x7c]
	ldrh r3, [r4, #0x38]
	cmp r0, r3
	bne _08057F84
	adds r3, r2, #0
	adds r3, #0x80
	ldr r0, [r3]
	ldrh r1, [r4, #0x3a]
	cmp r0, r1
	bne _08057F84
	ldr r0, [r5]
	ldrh r1, [r0, #0x38]
	str r1, [r2, #0x7c]
	ldrh r0, [r0, #0x3a]
	str r0, [r3]
_08057F84:
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	cmp r0, #3
	bls _08057F5A
	adds r0, r4, #0
	bl sub_8056B34
_08057F98:
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	cmp r0, #3
	bls _08057EAC
	b _08057FCE
	.align 2, 0
_08057FA8: .4byte 0x0203F97C
_08057FAC: .4byte 0x0203F980
_08057FB0:
	ldrh r0, [r4, #0x3e]
	adds r0, r1, r0
	strh r0, [r4, #0x3a]
	ldr r2, [sp]
	ldrh r1, [r2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r3, #0x24
	adds r3, r3, r4
	mov sl, r3
	adds r5, #1
	mov sb, r5
	cmp r0, r1
	bls _08057FCE
	strh r1, [r4, #0x3a]
_08057FCE:
	ldrh r2, [r4, #0x38]
	lsrs r2, r2, #8
	ldr r1, _08058000
	ldrb r0, [r1]
	subs r0, r2, r0
	strh r0, [r4, #6]
	ldrh r0, [r4, #0x3a]
	lsrs r0, r0, #8
	ldr r3, _08058004
	ldrb r1, [r3]
	subs r0, r0, r1
	strb r0, [r4, #8]
	ldr r1, _08058000
	ldrb r0, [r1]
	subs r2, r2, r0
	strh r2, [r4, #0x22]
	ldr r2, [sp]
	ldrh r0, [r2]
	lsrs r0, r0, #8
	ldrb r1, [r3]
	subs r0, r0, r1
	mov r3, sl
	strb r0, [r3]
	b _08058034
	.align 2, 0
_08058000: .4byte 0x0203F933
_08058004: .4byte 0x0203F934
_08058008:
	ldrh r0, [r4, #0x3c]
	ldrh r1, [r4, #0x38]
	adds r0, r0, r1
	strh r0, [r4, #0x38]
	ldrh r2, [r4, #0x3e]
	ldrh r3, [r4, #0x3a]
	adds r2, r2, r3
	strh r2, [r4, #0x3a]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x18
	ldr r3, _08058188
	ldrb r1, [r3]
	subs r0, r0, r1
	strh r0, [r4, #6]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x18
	ldr r1, _0805818C
	ldrb r0, [r1]
	subs r2, r2, r0
	strb r2, [r4, #8]
	adds r5, #1
	mov sb, r5
_08058034:
	mov r2, sb
	lsls r0, r2, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x11
	bhi _08058040
	b _08057E56
_08058040:
	movs r3, #0
	mov r8, r3
_08058044:
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #3
	bhi _080580D2
	ldr r4, _08058190
	mov sl, r4
	mov r1, r8
	lsls r0, r1, #4
	add r0, r8
	lsls r0, r0, #3
	mov ip, r0
_0805805E:
	mov r2, sl
	ldr r0, [r2]
	mov r3, ip
	adds r6, r3, r0
	lsls r2, r7, #4
	adds r1, r2, r7
	lsls r1, r1, #3
	adds r3, r1, r0
	ldr r5, [r6, #0x78]
	ldr r4, [r3, #0x78]
	mov sb, r2
	cmp r5, r4
	bls _0805808C
	adds r0, r6, #0
	adds r0, #0x76
	adds r2, r3, #0
	adds r2, #0x76
	movs r1, #0
	ldrsb r1, [r0, r1]
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r1, r0
	bgt _080580A4
_0805808C:
	cmp r5, r4
	bhs _080580C8
	adds r0, r6, #0
	adds r0, #0x76
	adds r1, r3, #0
	adds r1, #0x76
	movs r2, #0
	ldrsb r2, [r0, r2]
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r2, r0
	bge _080580C8
_080580A4:
	mov r4, sl
	ldr r1, [r4]
	mov r0, ip
	adds r2, r0, r1
	adds r2, #0x76
	ldrb r3, [r2]
	mov r4, sb
	adds r0, r4, r7
	lsls r0, r0, #3
	adds r1, r0, r1
	adds r1, #0x76
	ldrb r1, [r1]
	strb r1, [r2]
	mov r2, sl
	ldr r1, [r2]
	adds r0, r0, r1
	adds r0, #0x76
	strb r3, [r0]
_080580C8:
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #3
	bls _0805805E
_080580D2:
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	cmp r0, #3
	bls _08058044
	movs r3, #0
	mov r8, r3
	ldr r5, _08058190
	ldr r6, _08058194
_080580E8:
	ldr r1, [r5]
	mov r4, r8
	lsls r0, r4, #4
	add r0, r8
	lsls r4, r0, #3
	adds r1, r4, r1
	adds r1, #0x76
	movs r0, #0
	ldrsb r0, [r1, r0]
	lsls r0, r0, #8
	movs r1, #0x80
	lsls r1, r1, #3
	bl sub_8003934
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0xbb
	lsls r1, r1, #1
	bl CallARM_FX_Mul8
	adds r2, r0, #0
	lsls r2, r2, #0x10
	movs r0, #0x80
	lsls r0, r0, #0x11
	adds r2, r2, r0
	lsrs r2, r2, #0x10
	mov r0, r8
	adds r0, #8
	movs r1, #0
	bl sub_8025718
	ldr r0, [r5]
	adds r0, r4, r0
	adds r2, r0, #0
	adds r2, #0x40
	adds r0, #0x76
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrb r1, [r2]
	ldrb r0, [r0, #3]
	cmp r1, r0
	bhs _08058148
	adds r0, r1, #1
	strb r0, [r2]
_08058148:
	ldr r0, [r5]
	adds r0, r4, r0
	adds r2, r0, #0
	adds r2, #0x40
	adds r0, #0x76
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrb r1, [r2]
	ldrb r0, [r0, #3]
	cmp r1, r0
	bls _0805816A
	subs r0, r1, #1
	strb r0, [r2]
_0805816A:
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	cmp r0, #3
	bls _080580E8
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08058188: .4byte 0x0203F933
_0805818C: .4byte 0x0203F934
_08058190: .4byte 0x0203F97C
_08058194: .4byte 0x080B2000

    .thumb
sub_8058198: @ 0x08058198
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	ldr r4, _0805824C
	ldr r1, [r4]
	adds r1, #0x7c
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	ldr r0, [r4]
	adds r0, #0x7c
	ldrb r0, [r0]
	cmp r0, #0
	bne _080581F0
	movs r0, #0x3c
	movs r1, #0xf0
	bl RandomMinMax
	ldr r1, [r4]
	adds r1, #0x7c
	strb r0, [r1]
	movs r0, #0
	movs r1, #2
	bl RandomMinMax
	ldr r1, [r4]
	adds r1, #0x7d
	strb r0, [r1]
	ldr r1, [r4]
	adds r1, #0x7b
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldr r0, [r4]
	adds r1, r0, #0
	adds r1, #0x7b
	ldrb r0, [r1]
	cmp r0, #4
	bne _080581F0
	movs r0, #1
	strb r0, [r1]
_080581F0:
	ldr r0, _0805824C
	ldr r1, [r0]
	adds r1, #0x7e
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	cmp r1, #0
	blt _08058254
	movs r0, #1
	mov sb, r0
_08058204:
	ldr r1, _08058250
	ldr r4, [r1]
	mov r3, sb
	lsls r2, r3, #4
	add r2, sb
	lsls r2, r2, #3
	adds r2, r2, r4
	ldr r0, _0805824C
	ldr r3, [r0]
	adds r3, #0x7e
	movs r1, #0
	ldrsb r1, [r3, r1]
	lsls r0, r1, #4
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r4
	ldr r0, [r0, #0x54]
	str r0, [r2, #0x7c]
	adds r2, #0x80
	movs r1, #0
	ldrsb r1, [r3, r1]
	lsls r0, r1, #4
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r4
	ldr r0, [r0, #0x58]
	str r0, [r2]
	mov r0, sb
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
	cmp r0, #3
	bls _08058204
	b _08058288
	.align 2, 0
_0805824C: .4byte 0x0203F978
_08058250: .4byte 0x0203F97C
_08058254:
	movs r1, #1
	mov sb, r1
	ldr r4, _080582E0
	ldr r3, _080582E4
_0805825C:
	ldr r1, [r4]
	mov r2, sb
	lsls r0, r2, #4
	add r0, sb
	lsls r0, r0, #3
	adds r0, r0, r1
	ldr r2, [r3]
	adds r1, r2, #0
	adds r1, #0x74
	ldrh r1, [r1]
	str r1, [r0, #0x7c]
	adds r0, #0x80
	adds r2, #0x76
	ldrh r1, [r2]
	str r1, [r0]
	mov r0, sb
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
	cmp r0, #3
	bls _0805825C
_08058288:
	movs r3, #1
	mov sb, r3
_0805828C:
	movs r4, #0
	str r4, [sp]
	movs r0, #0
	str r0, [sp, #4]
	ldr r0, _080582E0
	ldr r1, [r0]
	mov r3, sb
	lsls r2, r3, #4
	adds r0, r2, r3
	lsls r0, r0, #3
	adds r0, r0, r1
	adds r0, #0x60
	ldrh r0, [r0]
	lsrs r0, r0, #8
	mov r8, r0
	movs r7, #0
	ldr r0, _080582E4
	ldr r0, [r0]
	adds r1, r0, #0
	adds r1, #0x7b
	str r2, [sp, #0x10]
	ldrb r1, [r1]
	cmp sb, r1
	bne _080582EC
	adds r0, #0x7d
	ldrb r0, [r0]
	cmp r0, #0
	beq _080582EC
	cmp r0, #1
	bne _080582CA
	ldr r7, _080582E8
_080582CA:
	cmp r0, #2
	bne _080582D2
	movs r7, #0xc0
	lsls r7, r7, #1
_080582D2:
	movs r4, #1
	str r4, [sp]
	mov r0, sb
	adds r0, #1
	str r0, [sp, #0xc]
	b _0805886E
	.align 2, 0
_080582E0: .4byte 0x0203F97C
_080582E4: .4byte 0x0203F978
_080582E8: .4byte 0xFFFFFE80
_080582EC:
	ldr r1, _080584A8
	ldr r0, [r1]
	adds r0, #0x7e
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	blt _0805834A
	ldr r2, _080584AC
	ldr r0, [r2]
	ldr r1, [sp, #0x10]
	add r1, sb
	lsls r1, r1, #3
	adds r1, r1, r0
	ldr r2, [r1, #0x54]
	ldr r3, _080584B0
	adds r0, r2, r3
	movs r3, #0x98
	lsls r3, r3, #8
	cmp r0, r3
	bls _08058320
	ldr r0, [r1, #0x58]
	ldr r4, _080584B0
	adds r0, r0, r4
	cmp r0, r3
	bhi _08058334
_08058320:
	ldr r3, _080584B4
	adds r0, r2, r3
	movs r2, #0xb4
	lsls r2, r2, #8
	cmp r0, r2
	bhi _08058334
	ldr r0, [r1, #0x58]
	adds r0, r0, r3
	cmp r0, r2
	bls _0805834A
_08058334:
	ldr r4, _080584AC
	ldr r0, [r4]
	ldr r1, [sp, #0x10]
	add r1, sb
	lsls r1, r1, #3
	adds r1, r1, r0
	movs r0, #0x80
	lsls r0, r0, #8
	str r0, [r1, #0x7c]
	adds r1, #0x80
	str r0, [r1]
_0805834A:
	ldr r6, _080584AC
	ldr r1, [r6]
	ldr r0, [sp, #0x10]
	add r0, sb
	lsls r4, r0, #3
	adds r1, r4, r1
	adds r0, r1, #0
	adds r0, #0x74
	ldrb r0, [r0]
	mov r2, sb
	adds r2, #1
	str r2, [sp, #0xc]
	cmp r0, #0
	beq _08058368
	b _08058544
_08058368:
	ldr r3, _080584A8
	ldr r0, [r3]
	adds r0, #0x7e
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bge _0805837A
	b _08058544
_0805837A:
	ldr r0, [r1, #0x7c]
	ldr r1, [r1, #0x54]
	subs r0, r0, r1
	bl Abs
	ldr r5, _080584B8
	cmp r0, r5
	bls _0805838C
	b _08058544
_0805838C:
	ldr r1, [r6]
	adds r1, r4, r1
	adds r0, r1, #0
	adds r0, #0x80
	ldr r0, [r0]
	ldr r1, [r1, #0x58]
	subs r0, r0, r1
	bl Abs
	cmp r0, r5
	bls _080583A4
	b _08058544
_080583A4:
	ldr r0, [r6]
	adds r1, r4, r0
	adds r0, r1, #0
	adds r0, #0x72
	ldrh r0, [r0]
	cmp r0, #0
	beq _080583B4
	b _08058544
_080583B4:
	adds r1, #0x75
	ldrb r0, [r1]
	adds r0, #0x14
	strb r0, [r1]
	ldr r0, [r6]
	adds r0, r4, r0
	adds r0, #0x75
	ldrb r0, [r0]
	cmp r0, #0xea
	bls _080583CC
	movs r4, #1
	str r4, [sp, #4]
_080583CC:
	ldr r1, _080584A8
	ldr r0, [r1]
	adds r1, r0, #0
	adds r1, #0x7e
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp sb, r0
	beq _080583DE
	b _08058510
_080583DE:
	movs r2, #1
	str r2, [sp]
	movs r3, #1
	rsbs r3, r3, #0
	mov sl, r3
	movs r4, #0
	str r4, [sp, #8]
	movs r7, #0
_080583EE:
	cmp r7, sb
	beq _08058458
	ldr r3, _080584AC
	ldr r1, [r3]
	lsls r0, r7, #4
	adds r0, r0, r7
	lsls r6, r0, #3
	adds r2, r6, r1
	ldr r0, [sp, #0x10]
	add r0, sb
	lsls r5, r0, #3
	adds r1, r5, r1
	ldr r0, [r2, #0x54]
	ldr r1, [r1, #0x54]
	subs r0, r0, r1
	str r3, [sp, #0x14]
	bl Abs
	adds r4, r0, #0
	ldr r3, [sp, #0x14]
	ldr r1, [r3]
	adds r0, r6, r1
	adds r1, r5, r1
	ldr r0, [r0, #0x58]
	ldr r1, [r1, #0x58]
	subs r0, r0, r1
	bl Abs
	adds r4, r4, r0
	ldr r3, [sp, #0x14]
	cmp r4, sl
	bhs _08058458
	str r7, [sp, #8]
	ldr r1, [r3]
	adds r0, r6, r1
	adds r1, r5, r1
	ldr r0, [r0, #0x54]
	ldr r1, [r1, #0x54]
	subs r0, r0, r1
	bl Abs
	adds r4, r0, #0
	ldr r3, [sp, #0x14]
	ldr r1, [r3]
	adds r0, r6, r1
	adds r1, r5, r1
	ldr r0, [r0, #0x58]
	ldr r1, [r1, #0x58]
	subs r0, r0, r1
	bl Abs
	adds r4, r4, r0
	mov sl, r4
_08058458:
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #3
	bls _080583EE
	ldr r0, _080584AC
	ldr r1, [r0]
	ldr r2, [sp, #8]
	lsls r0, r2, #4
	adds r0, r0, r2
	lsls r0, r0, #3
	adds r3, r0, r1
	ldr r0, [sp, #0x10]
	add r0, sb
	lsls r0, r0, #3
	adds r2, r0, r1
	ldr r1, [r3, #0x54]
	ldr r0, [r2, #0x54]
	cmp r1, r0
	ble _080584D8
	ldr r0, [r3, #0x58]
	ldr r1, [r2, #0x58]
	cmp r0, r1
	ble _080584C0
	mov r0, r8
	subs r0, #0x21
	lsls r0, r0, #0x18
	ldr r7, _080584BC
	cmp r0, #0
	blt _08058498
	movs r7, #0xc0
	lsls r7, r7, #1
_08058498:
	movs r0, #0xa0
	lsls r0, r0, #8
	cmp r1, r0
	ble _08058544
	ldr r3, _080584BC
	adds r7, r7, r3
	b _08058544
	.align 2, 0
_080584A8: .4byte 0x0203F978
_080584AC: .4byte 0x0203F97C
_080584B0: .4byte 0xFFFFCC00
_080584B4: .4byte 0xFFFFDA00
_080584B8: .4byte 0x00003BFF
_080584BC: .4byte 0xFFFFFE80
_080584C0:
	mov r0, r8
	subs r0, #0x61
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r7, #0xc0
	lsls r7, r7, #1
	cmp r0, #0x84
	bhi _08058544
	ldr r7, _080584D4
	b _08058544
	.align 2, 0
_080584D4: .4byte 0xFFFFFE80
_080584D8:
	ldr r1, [r3, #0x58]
	ldr r0, [r2, #0x58]
	cmp r1, r0
	ble _080584F8
	mov r0, r8
	subs r0, #0x61
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r7, _080584F4
	cmp r0, #0x84
	bhi _08058544
	movs r7, #0xc0
	lsls r7, r7, #1
	b _08058544
	.align 2, 0
_080584F4: .4byte 0xFFFFFE80
_080584F8:
	mov r0, r8
	subs r0, #0x21
	lsls r0, r0, #0x18
	movs r7, #0xc0
	lsls r7, r7, #1
	cmp r0, #0
	blt _08058544
	ldr r7, _0805850C
	b _08058544
	.align 2, 0
_0805850C: .4byte 0xFFFFFE80
_08058510:
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	blt _08058540
	movs r0, #0
	movs r1, #3
	bl RandomMinMax
	movs r1, #0
	cmp r0, #0
	bne _08058528
	movs r1, #1
_08058528:
	str r1, [sp]
	movs r0, #1
	mov r4, sb
	ands r0, r4
	ldr r7, _0805853C
	cmp r0, #0
	beq _08058544
	movs r7, #0xc0
	lsls r7, r7, #1
	b _08058544
	.align 2, 0
_0805853C: .4byte 0xFFFFFE80
_08058540:
	movs r0, #1
	str r0, [sp]
_08058544:
	ldr r6, _08058580
	ldr r1, [r6]
	ldr r0, [sp, #0x10]
	add r0, sb
	lsls r5, r0, #3
	adds r1, r5, r1
	ldr r2, [r1, #0x7c]
	ldr r4, [r1, #0x54]
	cmp r2, r4
	blt _08058610
	adds r0, r1, #0
	adds r0, #0x80
	ldr r3, [r0]
	ldr r0, [r1, #0x58]
	cmp r3, r0
	blt _080585FA
	ldr r1, [sp, #4]
	cmp r1, #0
	beq _0805858E
	mov r0, r8
	subs r0, #0x21
	lsls r0, r0, #0x18
	cmp r0, #0
	bge _08058584
	mov r0, sb
	movs r1, #2
	bl sub_08056B90
	b _080585FA
	.align 2, 0
_08058580: .4byte 0x0203F97C
_08058584:
	mov r0, sb
	movs r1, #0
	bl sub_08056B90
	b _080585FA
_0805858E:
	ldr r0, _08058644
	ldr r0, [r0]
	adds r1, r0, #0
	adds r1, #0x7e
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	blt _080585D4
	cmp r0, sb
	beq _080585D4
	movs r0, #0x80
	lsls r0, r0, #8
	cmp r2, r0
	beq _080585D4
	cmp r3, #0x80
	beq _080585D4
	subs r0, r2, r4
	bl Abs
	ldr r4, _08058648
	cmp r0, r4
	bhi _080585D4
	ldr r1, [r6]
	adds r1, r5, r1
	adds r0, r1, #0
	adds r0, #0x80
	ldr r0, [r0]
	ldr r1, [r1, #0x58]
	subs r0, r0, r1
	bl Abs
	cmp r0, r4
	bhi _080585D4
	movs r2, #0xa0
	mov r8, r2
_080585D4:
	mov r0, r8
	subs r0, #0x35
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x6a
	bhi _080585E2
	ldr r7, _0805864C
_080585E2:
	mov r0, r8
	subs r0, #0xc
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x93
	bls _080585F2
	movs r7, #0xc0
	lsls r7, r7, #1
_080585F2:
	cmp r0, #0x28
	bhi _080585FA
	movs r3, #1
	str r3, [sp]
_080585FA:
	ldr r0, _08058650
	ldr r1, [r0]
	ldr r0, [sp, #0x10]
	add r0, sb
	lsls r0, r0, #3
	adds r0, r0, r1
	ldr r1, [r0, #0x7c]
	ldr r0, [r0, #0x54]
	cmp r1, r0
	blt _08058610
	b _080587B2
_08058610:
	ldr r6, _08058650
	ldr r1, [r6]
	ldr r0, [sp, #0x10]
	add r0, sb
	lsls r5, r0, #3
	adds r2, r5, r1
	adds r0, r2, #0
	adds r0, #0x80
	ldr r3, [r0]
	ldr r0, [r2, #0x58]
	cmp r3, r0
	blt _080586D6
	ldr r4, [sp, #4]
	cmp r4, #0
	beq _0805865E
	mov r0, r8
	subs r0, #0x61
	lsls r0, r0, #0x18
	cmp r0, #0
	bge _08058654
	mov r0, sb
	movs r1, #2
	bl sub_08056B90
	b _080586D6
	.align 2, 0
_08058644: .4byte 0x0203F978
_08058648: .4byte 0x00003BFF
_0805864C: .4byte 0xFFFFFE80
_08058650: .4byte 0x0203F97C
_08058654:
	mov r0, sb
	movs r1, #0
	bl sub_08056B90
	b _080586D6
_0805865E:
	ldr r0, _08058710
	ldr r0, [r0]
	adds r1, r0, #0
	adds r1, #0x7e
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	blt _080586A8
	cmp r0, sb
	beq _080586A8
	ldr r1, [r2, #0x7c]
	movs r0, #0x80
	lsls r0, r0, #8
	cmp r1, r0
	beq _080586A8
	cmp r3, #0x80
	beq _080586A8
	ldr r0, [r2, #0x54]
	subs r0, r1, r0
	bl Abs
	ldr r4, _08058714
	cmp r0, r4
	bhi _080586A8
	ldr r1, [r6]
	adds r1, r5, r1
	adds r0, r1, #0
	adds r0, #0x80
	ldr r0, [r0]
	ldr r1, [r1, #0x58]
	subs r0, r0, r1
	bl Abs
	cmp r0, r4
	bhi _080586A8
	movs r0, #0xdf
	mov r8, r0
_080586A8:
	mov r0, r8
	subs r0, #0x75
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x6b
	bhi _080586B6
	ldr r7, _08058718
_080586B6:
	mov r0, r8
	subs r0, #0x4d
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x93
	bls _080586C6
	movs r7, #0xc0
	lsls r7, r7, #1
_080586C6:
	mov r0, r8
	subs r0, #0x4c
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x28
	bhi _080586D6
	movs r1, #1
	str r1, [sp]
_080586D6:
	ldr r6, _0805871C
	ldr r1, [r6]
	ldr r0, [sp, #0x10]
	add r0, sb
	lsls r5, r0, #3
	adds r1, r5, r1
	ldr r2, [r1, #0x7c]
	ldr r4, [r1, #0x54]
	cmp r2, r4
	bge _080587B2
	adds r0, r1, #0
	adds r0, #0x80
	ldr r3, [r0]
	ldr r0, [r1, #0x58]
	cmp r3, r0
	bge _0805879E
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _0805872A
	mov r0, r8
	subs r0, #0x21
	lsls r0, r0, #0x18
	cmp r0, #0
	bge _08058720
	mov r0, sb
	movs r1, #0
	bl sub_08056B90
	b _0805879E
	.align 2, 0
_08058710: .4byte 0x0203F978
_08058714: .4byte 0x00003BFF
_08058718: .4byte 0xFFFFFE80
_0805871C: .4byte 0x0203F97C
_08058720:
	mov r0, sb
	movs r1, #2
	bl sub_08056B90
	b _0805879E
_0805872A:
	ldr r0, _080587E4
	ldr r0, [r0]
	adds r1, r0, #0
	adds r1, #0x7e
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	blt _08058770
	cmp r0, sb
	beq _08058770
	movs r0, #0x80
	lsls r0, r0, #8
	cmp r2, r0
	beq _08058770
	cmp r3, #0x80
	beq _08058770
	subs r0, r2, r4
	bl Abs
	ldr r4, _080587E8
	cmp r0, r4
	bhi _08058770
	ldr r1, [r6]
	adds r1, r5, r1
	adds r0, r1, #0
	adds r0, #0x80
	ldr r0, [r0]
	ldr r1, [r1, #0x58]
	subs r0, r0, r1
	bl Abs
	cmp r0, r4
	bhi _08058770
	movs r1, #0xa0
	mov r8, r1
_08058770:
	mov r0, r8
	subs r0, #0x21
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x6a
	bhi _08058780
	movs r7, #0xc0
	lsls r7, r7, #1
_08058780:
	mov r0, r8
	subs r0, #0x20
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x93
	bls _0805878E
	ldr r7, _080587EC
_0805878E:
	mov r0, r8
	adds r0, #0x74
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x28
	bhi _0805879E
	movs r2, #1
	str r2, [sp]
_0805879E:
	ldr r0, _080587F0
	ldr r1, [r0]
	ldr r0, [sp, #0x10]
	add r0, sb
	lsls r0, r0, #3
	adds r0, r0, r1
	ldr r1, [r0, #0x7c]
	ldr r0, [r0, #0x54]
	cmp r1, r0
	blt _0805886E
_080587B2:
	ldr r6, _080587F0
	ldr r1, [r6]
	ldr r0, [sp, #0x10]
	add r0, sb
	lsls r5, r0, #3
	adds r2, r5, r1
	adds r0, r2, #0
	adds r0, #0x80
	ldr r3, [r0]
	ldr r0, [r2, #0x58]
	cmp r3, r0
	bge _0805886E
	ldr r4, [sp, #4]
	cmp r4, #0
	beq _080587FE
	mov r0, r8
	subs r0, #0x61
	lsls r0, r0, #0x18
	cmp r0, #0
	bge _080587F4
	mov r0, sb
	movs r1, #0
	bl sub_08056B90
	b _0805886E
	.align 2, 0
_080587E4: .4byte 0x0203F978
_080587E8: .4byte 0x00003BFF
_080587EC: .4byte 0xFFFFFE80
_080587F0: .4byte 0x0203F97C
_080587F4:
	mov r0, sb
	movs r1, #2
	bl sub_08056B90
	b _0805886E
_080587FE:
	ldr r0, _08058894
	ldr r0, [r0]
	adds r1, r0, #0
	adds r1, #0x7e
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	blt _08058848
	cmp r0, sb
	beq _08058848
	ldr r1, [r2, #0x7c]
	movs r0, #0x80
	lsls r0, r0, #8
	cmp r1, r0
	beq _08058848
	cmp r3, #0x80
	beq _08058848
	ldr r0, [r2, #0x54]
	subs r0, r1, r0
	bl Abs
	ldr r4, _08058898
	cmp r0, r4
	bhi _08058848
	ldr r1, [r6]
	adds r1, r5, r1
	adds r0, r1, #0
	adds r0, #0x80
	ldr r0, [r0]
	ldr r1, [r1, #0x58]
	subs r0, r0, r1
	bl Abs
	cmp r0, r4
	bhi _08058848
	movs r0, #0x60
	mov r8, r0
_08058848:
	mov r0, r8
	subs r0, #0x60
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x6b
	bhi _08058858
	movs r7, #0xc0
	lsls r7, r7, #1
_08058858:
	cmp r0, #0x93
	bls _0805885E
	ldr r7, _0805889C
_0805885E:
	mov r0, r8
	adds r0, #0x34
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x28
	bhi _0805886E
	movs r1, #1
	str r1, [sp]
_0805886E:
	ldr r5, _080588A0
	ldr r1, [r5]
	ldr r0, [sp, #0x10]
	add r0, sb
	lsls r4, r0, #3
	adds r2, r4, r1
	adds r1, r2, #0
	adds r1, #0x60
	ldrh r0, [r1]
	adds r0, r0, r7
	strh r0, [r1]
	adds r1, #0x24
	ldrb r0, [r1]
	cmp r0, #0
	beq _080588A4
	subs r0, #1
	strb r0, [r1]
	b _08058914
	.align 2, 0
_08058894: .4byte 0x0203F978
_08058898: .4byte 0x00003BFF
_0805889C: .4byte 0xFFFFFE80
_080588A0: .4byte 0x0203F97C
_080588A4:
	cmp r7, #0
	bne _080588BA
	adds r0, r2, #0
	movs r1, #1
	bl sub_800378C
	ldr r0, [r5]
	adds r0, r4, r0
	adds r0, #0x84
	movs r1, #0xa
	b _08058912
_080588BA:
	cmp r7, #0
	ble _080588E2
	ldrb r0, [r2, #2]
	cmp r0, #0
	beq _080588CA
	cmp r0, #1
	beq _080588DC
	b _08058914
_080588CA:
	adds r0, r2, #0
	movs r1, #1
	bl sub_800378C
	ldr r0, [r5]
	adds r0, r4, r0
	adds r0, #0x84
	movs r1, #0xa
	b _08058912
_080588DC:
	adds r0, r2, #0
	movs r1, #2
	b _08058906
_080588E2:
	cmp r7, #0
	bge _08058914
	ldrb r0, [r2, #2]
	cmp r0, #1
	beq _08058902
	cmp r0, #2
	bne _08058914
	adds r0, r2, #0
	movs r1, #1
	bl sub_800378C
	ldr r0, [r5]
	adds r0, r4, r0
	adds r0, #0x84
	movs r1, #0xa
	b _08058912
_08058902:
	adds r0, r2, #0
	movs r1, #0
_08058906:
	bl sub_800378C
	ldr r0, [r5]
	adds r0, r4, r0
	adds r0, #0x84
	movs r1, #6
_08058912:
	strb r1, [r0]
_08058914:
	ldr r2, [sp]
	cmp r2, #0
	beq _08058934
	ldr r0, _08058930
	ldr r1, [r0]
	ldr r0, [sp, #0x10]
	add r0, sb
	lsls r0, r0, #3
	adds r0, r0, r1
	adds r0, #0x64
	movs r1, #0xa0
	lsls r1, r1, #3
	strh r1, [r0]
	b _08058950
	.align 2, 0
_08058930: .4byte 0x0203F97C
_08058934:
	movs r0, #0xa0
	lsls r0, r0, #3
	movs r1, #0x13
	bl CallARM_FX_Mul8
	ldr r1, _08058970
	ldr r2, [r1]
	ldr r1, [sp, #0x10]
	add r1, sb
	lsls r1, r1, #3
	adds r1, r1, r2
	rsbs r0, r0, #0
	adds r1, #0x64
	strh r0, [r1]
_08058950:
	ldr r3, [sp, #0xc]
	lsls r0, r3, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
	cmp r0, #3
	bhi _0805895E
	b _0805828C
_0805895E:
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08058970: .4byte 0x0203F97C

    .thumb
sub_8058974: @ 0x08058974
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	movs r0, #1
	mov sb, r0
	ldr r1, _08058AFC
	mov r8, r1
	ldr r2, _08058B00
	mov sl, r2
_0805898C:
	mov r3, r8
	ldr r0, [r3]
	mov r2, sb
	lsls r1, r2, #4
	add r1, sb
	lsls r1, r1, #3
	adds r0, r1, r0
	ldr r2, _08058B04
	str r2, [r0, #0x7c]
	adds r0, #0x80
	str r2, [r0]
	movs r3, #0
	adds r6, r1, #0
_080589A6:
	mov r0, sl
	ldr r1, [r0]
	lsls r0, r3, #3
	adds r0, r0, r3
	lsls r7, r0, #3
	adds r1, r7, r1
	ldrh r0, [r1, #0x38]
	mov r2, r8
	ldr r1, [r2]
	adds r1, r6, r1
	ldr r1, [r1, #0x54]
	subs r0, r0, r1
	str r3, [sp, #8]
	bl Abs
	adds r5, r0, #0
	mov r1, sl
	ldr r0, [r1]
	adds r0, r7, r0
	ldrh r0, [r0, #0x3a]
	mov r2, r8
	ldr r1, [r2]
	adds r1, r6, r1
	ldr r1, [r1, #0x58]
	subs r0, r0, r1
	bl Abs
	adds r5, r5, r0
	mov r0, r8
	ldr r1, [r0]
	adds r1, r6, r1
	ldr r0, [r1, #0x7c]
	ldr r1, [r1, #0x54]
	subs r0, r0, r1
	bl Abs
	adds r4, r0, #0
	mov r2, r8
	ldr r1, [r2]
	adds r1, r6, r1
	adds r0, r1, #0
	adds r0, #0x80
	ldr r0, [r0]
	ldr r1, [r1, #0x58]
	subs r0, r0, r1
	bl Abs
	adds r4, r4, r0
	ldr r3, [sp, #8]
	cmp r5, r4
	bhs _08058A22
	mov r0, r8
	ldr r1, [r0]
	adds r1, r6, r1
	mov r0, sl
	ldr r2, [r0]
	adds r2, r7, r2
	ldrh r0, [r2, #0x38]
	str r0, [r1, #0x7c]
	adds r1, #0x80
	ldrh r0, [r2, #0x3a]
	str r0, [r1]
_08058A22:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #7
	bls _080589A6
	mov r0, sb
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
	cmp r0, #3
	bls _0805898C
	movs r1, #1
	mov sb, r1
	ldr r2, _08058AFC
	mov sl, r2
_08058A42:
	movs r3, #0
	str r3, [sp]
	movs r0, #0
	str r0, [sp, #4]
	mov r2, sl
	ldr r1, [r2]
	mov r3, sb
	lsls r2, r3, #4
	adds r0, r2, r3
	lsls r5, r0, #3
	adds r1, r5, r1
	adds r0, r1, #0
	adds r0, #0x60
	ldrh r0, [r0]
	lsrs r4, r0, #8
	movs r7, #0
	adds r0, r1, #0
	adds r0, #0x74
	ldrb r0, [r0]
	mov r8, r2
	cmp r0, #0
	bne _08058AC0
	ldr r0, [r1, #0x7c]
	ldr r1, [r1, #0x54]
	subs r0, r0, r1
	bl Abs
	ldr r6, _08058B08
	cmp r0, r6
	bhi _08058AC0
	mov r0, sl
	ldr r1, [r0]
	adds r1, r5, r1
	adds r0, r1, #0
	adds r0, #0x80
	ldr r0, [r0]
	ldr r1, [r1, #0x58]
	subs r0, r0, r1
	bl Abs
	cmp r0, r6
	bhi _08058AC0
	mov r1, sl
	ldr r0, [r1]
	adds r1, r5, r0
	adds r0, r1, #0
	adds r0, #0x72
	ldrh r0, [r0]
	cmp r0, #0
	bne _08058AC0
	adds r1, #0x75
	ldrb r0, [r1]
	adds r0, #4
	strb r0, [r1]
	mov r2, sl
	ldr r0, [r2]
	adds r0, r5, r0
	adds r0, #0x75
	ldrb r0, [r0]
	cmp r0, #0xfa
	bls _08058AC0
	movs r3, #1
	str r3, [sp, #4]
_08058AC0:
	mov r0, sl
	ldr r1, [r0]
	mov r0, r8
	add r0, sb
	lsls r0, r0, #3
	adds r2, r0, r1
	ldr r1, [r2, #0x7c]
	ldr r0, [r2, #0x54]
	cmp r1, r0
	ble _08058B34
	adds r0, r2, #0
	adds r0, #0x80
	ldr r1, [r0]
	ldr r0, [r2, #0x58]
	cmp r1, r0
	ble _08058B34
	ldr r1, [sp, #4]
	cmp r1, #0
	beq _08058B16
	adds r0, r4, #0
	subs r0, #0x21
	lsls r0, r0, #0x18
	cmp r0, #0
	bge _08058B0C
	mov r0, sb
	movs r1, #2
	bl sub_08056B90
	b _08058B34
	.align 2, 0
_08058AFC: .4byte 0x0203F97C
_08058B00: .4byte 0x0203F980
_08058B04: .4byte 0x0003E700
_08058B08: .4byte 0x000059FF
_08058B0C:
	mov r0, sb
	movs r1, #0
	bl sub_08056B90
	b _08058B34
_08058B16:
	adds r0, r4, #0
	subs r0, #0x30
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x6f
	bhi _08058B24
	ldr r7, _08058B70
_08058B24:
	cmp r4, #0xa0
	bls _08058B2C
	movs r7, #0xaf
	lsls r7, r7, #1
_08058B2C:
	cmp r4, #0x2f
	bhi _08058B34
	movs r2, #1
	str r2, [sp]
_08058B34:
	mov r3, sl
	ldr r1, [r3]
	mov r0, r8
	add r0, sb
	lsls r0, r0, #3
	adds r2, r0, r1
	ldr r1, [r2, #0x7c]
	ldr r0, [r2, #0x54]
	cmp r1, r0
	bge _08058C1C
	adds r0, r2, #0
	adds r0, #0x80
	ldr r1, [r0]
	ldr r0, [r2, #0x58]
	cmp r1, r0
	ble _08058BA4
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _08058B7E
	adds r0, r4, #0
	subs r0, #0x61
	lsls r0, r0, #0x18
	cmp r0, #0
	bge _08058B74
	mov r0, sb
	movs r1, #2
	bl sub_08056B90
	b _08058BA4
	.align 2, 0
_08058B70: .4byte 0xFFFFFEA2
_08058B74:
	mov r0, sb
	movs r1, #0
	bl sub_08056B90
	b _08058BA4
_08058B7E:
	adds r0, r4, #0
	subs r0, #0x70
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x6f
	bhi _08058B8C
	ldr r7, _08058BE0
_08058B8C:
	adds r0, r4, #0
	subs r0, #0x51
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x8f
	bls _08058B9C
	movs r7, #0xaf
	lsls r7, r7, #1
_08058B9C:
	cmp r0, #0x1e
	bhi _08058BA4
	movs r1, #1
	str r1, [sp]
_08058BA4:
	mov r2, sl
	ldr r1, [r2]
	mov r0, r8
	add r0, sb
	lsls r0, r0, #3
	adds r2, r0, r1
	ldr r1, [r2, #0x7c]
	ldr r0, [r2, #0x54]
	cmp r1, r0
	bge _08058C1C
	adds r0, r2, #0
	adds r0, #0x80
	ldr r1, [r0]
	ldr r0, [r2, #0x58]
	cmp r1, r0
	bge _08058C1C
	ldr r3, [sp, #4]
	cmp r3, #0
	beq _08058BEE
	adds r0, r4, #0
	subs r0, #0x21
	lsls r0, r0, #0x18
	cmp r0, #0
	bge _08058BE4
	mov r0, sb
	movs r1, #0
	bl sub_08056B90
	b _08058C1C
	.align 2, 0
_08058BE0: .4byte 0xFFFFFEA2
_08058BE4:
	mov r0, sb
	movs r1, #2
	bl sub_08056B90
	b _08058C1C
_08058BEE:
	adds r0, r4, #0
	subs r0, #0x21
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x6f
	bhi _08058BFE
	movs r7, #0xaf
	lsls r7, r7, #1
_08058BFE:
	adds r0, r4, #0
	subs r0, #0x20
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x8f
	bls _08058C0C
	ldr r7, _08058C58
_08058C0C:
	adds r0, r4, #0
	adds r0, #0x6f
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x1e
	bhi _08058C1C
	movs r0, #1
	str r0, [sp]
_08058C1C:
	mov r2, sl
	ldr r1, [r2]
	mov r0, r8
	add r0, sb
	lsls r0, r0, #3
	adds r2, r0, r1
	ldr r1, [r2, #0x7c]
	ldr r0, [r2, #0x54]
	cmp r1, r0
	ble _08058C94
	adds r0, r2, #0
	adds r0, #0x80
	ldr r1, [r0]
	ldr r0, [r2, #0x58]
	cmp r1, r0
	bge _08058C94
	ldr r3, [sp, #4]
	cmp r3, #0
	beq _08058C66
	adds r0, r4, #0
	subs r0, #0x61
	lsls r0, r0, #0x18
	cmp r0, #0
	bge _08058C5C
	mov r0, sb
	movs r1, #0
	bl sub_08056B90
	b _08058C94
	.align 2, 0
_08058C58: .4byte 0xFFFFFEA2
_08058C5C:
	mov r0, sb
	movs r1, #2
	bl sub_08056B90
	b _08058C94
_08058C66:
	adds r0, r4, #0
	subs r0, #0x61
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x6f
	bhi _08058C76
	movs r7, #0xaf
	lsls r7, r7, #1
_08058C76:
	adds r0, r4, #0
	subs r0, #0x60
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x8f
	bls _08058C84
	ldr r7, _08058CB8
_08058C84:
	adds r0, r4, #0
	adds r0, #0x2f
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x1e
	bhi _08058C94
	movs r0, #1
	str r0, [sp]
_08058C94:
	ldr r5, _08058CBC
	ldr r1, [r5]
	mov r0, r8
	add r0, sb
	lsls r4, r0, #3
	adds r2, r4, r1
	adds r1, r2, #0
	adds r1, #0x60
	ldrh r0, [r1]
	adds r0, r0, r7
	strh r0, [r1]
	adds r1, #0x24
	ldrb r0, [r1]
	cmp r0, #0
	beq _08058CC0
	subs r0, #1
	strb r0, [r1]
	b _08058D30
	.align 2, 0
_08058CB8: .4byte 0xFFFFFEA2
_08058CBC: .4byte 0x0203F97C
_08058CC0:
	cmp r7, #0
	bne _08058CD6
	adds r0, r2, #0
	movs r1, #1
	bl sub_800378C
	ldr r0, [r5]
	adds r0, r4, r0
	adds r0, #0x84
	movs r1, #0xa
	b _08058D2E
_08058CD6:
	cmp r7, #0
	ble _08058CFE
	ldrb r0, [r2, #2]
	cmp r0, #0
	beq _08058CE6
	cmp r0, #1
	beq _08058CF8
	b _08058D30
_08058CE6:
	adds r0, r2, #0
	movs r1, #1
	bl sub_800378C
	ldr r0, [r5]
	adds r0, r4, r0
	adds r0, #0x84
	movs r1, #0xa
	b _08058D2E
_08058CF8:
	adds r0, r2, #0
	movs r1, #2
	b _08058D22
_08058CFE:
	cmp r7, #0
	bge _08058D30
	ldrb r0, [r2, #2]
	cmp r0, #1
	beq _08058D1E
	cmp r0, #2
	bne _08058D30
	adds r0, r2, #0
	movs r1, #1
	bl sub_800378C
	ldr r0, [r5]
	adds r0, r4, r0
	adds r0, #0x84
	movs r1, #0xa
	b _08058D2E
_08058D1E:
	adds r0, r2, #0
	movs r1, #0
_08058D22:
	bl sub_800378C
	ldr r0, [r5]
	adds r0, r4, r0
	adds r0, #0x84
	movs r1, #6
_08058D2E:
	strb r1, [r0]
_08058D30:
	ldr r1, [sp]
	cmp r1, #0
	beq _08058D4A
	mov r2, sl
	ldr r0, [r2]
	mov r1, r8
	add r1, sb
	lsls r1, r1, #3
	adds r1, r1, r0
	adds r1, #0x64
	movs r0, #0xa0
	lsls r0, r0, #3
	b _08058D64
_08058D4A:
	movs r0, #0xa0
	lsls r0, r0, #3
	movs r1, #8
	bl CallARM_FX_Mul8
	mov r3, sl
	ldr r2, [r3]
	mov r1, r8
	add r1, sb
	lsls r1, r1, #3
	adds r1, r1, r2
	rsbs r0, r0, #0
	adds r1, #0x64
_08058D64:
	strh r0, [r1]
	mov r0, sb
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
	cmp r0, #3
	bhi _08058D76
	b _08058A42
_08058D76:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	.thumb
sub_8058D88: @ 0x08058D88
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r1, _08058DA0
	ldrb r0, [r1]
	cmp r0, #0xb
	bne _08058DA8
	ldr r0, _08058DA4
	ldrb r7, [r0]
	b _08058DAA
	.align 2, 0
_08058DA0: .4byte 0x0203F93D
_08058DA4: .4byte 0x0203F93E
_08058DA8:
	ldrb r7, [r1]
_08058DAA:
	movs r0, #0
	mov r8, r0
	cmp r7, #0
	bne _08058DC2
	ldr r0, _08058E1C
	ldr r0, [r0]
	adds r0, #0x7a
	ldrb r0, [r0]
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
_08058DC2:
	cmp r7, #1
	bne _08058DD0
	ldr r0, _08058E1C
	ldr r0, [r0]
	adds r0, #0x7a
	ldrb r0, [r0]
	mov r8, r0
_08058DD0:
	ldr r0, _08058E20
	ldrb r0, [r0]
	cmp r0, #4
	bne _08058E4C
	movs r5, #0
	ldr r6, _08058E24
_08058DDC:
	cmp r5, #7
	bhi _08058E34
	lsls r4, r5, #3
	adds r4, r4, r5
	lsls r4, r4, #3
	ldr r0, [r6]
	adds r0, r0, r4
	bl RenderSprite
	ldr r0, [r6]
	adds r0, r0, r4
	adds r0, #0x1c
	bl RenderSprite
	ldr r0, [r6]
	adds r4, r4, r0
	adds r0, r4, #0
	adds r0, #0x40
	ldrh r1, [r0]
	ldrh r0, [r4, #0x3a]
	subs r1, r1, r0
	movs r0, #0xa0
	lsls r0, r0, #5
	cmp r1, r0
	ble _08058E28
	adds r0, r4, #0
	adds r0, #0x1c
	movs r1, #6
	bl sub_800378C
	b _08058E42
	.align 2, 0
_08058E1C: .4byte 0x0203F978
_08058E20: .4byte 0x0203F93F
_08058E24: .4byte 0x0203F980
_08058E28:
	adds r0, r4, #0
	adds r0, #0x1c
	movs r1, #4
	bl sub_800378C
	b _08058E42
_08058E34:
	lsls r1, r5, #3
	adds r1, r1, r5
	lsls r1, r1, #3
	ldr r0, [r6]
	adds r0, r0, r1
	bl RenderSprite
_08058E42:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x11
	bls _08058DDC
_08058E4C:
	mov r6, r8
	lsls r1, r6, #0x18
	asrs r0, r1, #0x18
	cmp r0, #3
	bgt _08058F1C
	ldr r2, _08058F74
	mov r8, r2
	ldr r4, _08058F78
	mov sl, r4
	ldr r5, _08058F7C
	mov sb, r5
_08058E62:
	asrs r0, r1, #0x18
	mov r1, r8
	ldr r2, [r1]
	lsls r3, r0, #4
	adds r3, r3, r0
	lsls r3, r3, #3
	adds r2, r3, r2
	ldr r0, [r2, #0x54]
	asrs r0, r0, #8
	mov r4, sl
	ldrb r1, [r4]
	subs r0, r0, r1
	strh r0, [r2, #6]
	ldr r0, [r2, #0x58]
	asrs r0, r0, #8
	mov r5, sb
	ldrb r1, [r5]
	subs r0, r0, r1
	strb r0, [r2, #8]
	mov r1, r8
	ldr r0, [r1]
	adds r3, r3, r0
	ldr r0, [r3, #0x54]
	asrs r1, r0, #8
	adds r0, r1, #0
	adds r0, #8
	ldrb r2, [r4]
	mov ip, r2
	cmp r0, ip
	ble _08058EC8
	ldr r0, [r3, #0x58]
	asrs r4, r0, #8
	adds r0, r4, #0
	adds r0, #8
	ldrb r2, [r5]
	cmp r0, r2
	ble _08058EC8
	subs r1, #8
	mov r0, ip
	adds r0, #0xf0
	cmp r1, r0
	bge _08058EC8
	adds r1, r4, #0
	subs r1, #8
	adds r0, r2, #0
	adds r0, #0xa0
	cmp r1, r0
	bge _08058EC8
	adds r0, r3, #0
	bl RenderSprite
_08058EC8:
	lsls r3, r6, #0x18
	asrs r1, r3, #0x18
	mov r4, r8
	ldr r2, [r4]
	lsls r0, r1, #4
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r1, r0, r2
	ldrh r0, [r1, #0x1c]
	adds r4, r3, #0
	ldr r5, _08058F80
	cmp r0, r5
	beq _08058EEE
	cmp r7, #3
	bne _08058EEE
	adds r0, r1, #0
	adds r0, #0x1c
	bl RenderSprite
_08058EEE:
	subs r0, r7, #3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bhi _08058F0C
	asrs r0, r4, #0x18
	lsls r1, r0, #4
	adds r1, r1, r0
	lsls r1, r1, #3
	mov r2, r8
	ldr r0, [r2]
	adds r0, r0, r1
	adds r0, #0x38
	bl RenderSprite
_08058F0C:
	movs r5, #0x80
	lsls r5, r5, #0x11
	adds r0, r4, r5
	lsrs r6, r0, #0x18
	lsls r1, r6, #0x18
	asrs r0, r1, #0x18
	cmp r0, #3
	ble _08058E62
_08058F1C:
	cmp r7, #2
	bne _08058F38
	ldr r4, _08058F84
	ldr r0, [r4]
	bl RenderSprite
	ldr r0, [r4]
	adds r0, #0x1c
	bl RenderSprite
	ldr r0, [r4]
	adds r0, #0x38
	bl RenderSprite
_08058F38:
	cmp r7, #6
	bls _08058F54
	ldr r0, _08058F88
	ldrb r0, [r0]
	cmp r0, #0
	beq _08058F54
	ldr r0, _08058F8C
	ldrb r0, [r0]
	cmp r0, #0
	bne _08058F54
	ldr r0, _08058F90
	ldr r0, [r0]
	bl RenderSprite
_08058F54:
	ldr r0, _08058F94
	ldrb r0, [r0]
	cmp r0, #3
	bne _08058F64
	ldr r0, _08058F98
	ldr r0, [r0]
	bl RenderSprite
_08058F64:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08058F74: .4byte 0x0203F97C
_08058F78: .4byte 0x0203F933
_08058F7C: .4byte 0x0203F934
_08058F80: .4byte 0x00000451
_08058F84: .4byte 0x0203F978
_08058F88: .4byte 0x0203F941
_08058F8C: .4byte 0x0203F940
_08058F90: .4byte 0x0203F974
_08058F94: .4byte 0x0203F93F
_08058F98: .4byte 0x0203F970

    .thumb
sub_8058F9C: @ 0x08058F9C
	push {lr}
	ldr r1, _08058FC8
	ldr r3, _08058FCC
	ldrb r0, [r3]
	strh r0, [r1]
	adds r1, #2
	ldr r2, _08058FD0
	ldrb r0, [r2]
	strh r0, [r1]
	ldr r0, _08058FD4
	ldrb r0, [r0]
	cmp r0, #4
	bne _08058FC2
	adds r1, #2
	ldrb r0, [r3]
	strh r0, [r1]
	adds r1, #2
	ldrb r0, [r2]
	strh r0, [r1]
_08058FC2:
	pop {r0}
	bx r0
	.align 2, 0
_08058FC8: .4byte 0x04000014
_08058FCC: .4byte 0x0203F933
_08058FD0: .4byte 0x0203F934
_08058FD4: .4byte 0x0203F93F

	.thumb
sub_8058FD8: @ 0x08058FD8
	push {r4, r5, r6, lr}
	ldr r0, _08058FF0
	ldrb r0, [r0]
	cmp r0, #0xc
	bls _08058FE4
	b _080593C4
_08058FE4:
	lsls r0, r0, #2
	ldr r1, _08058FF4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08058FF0: .4byte 0x0203F93D
_08058FF4: .4byte 0x08058FF8
_08058FF8: @ jump table
	.4byte _0805902C @ case 0
	.4byte _0805902C @ case 1
	.4byte _0805902C @ case 2
	.4byte _08059058 @ case 3
	.4byte _0805925C @ case 4
	.4byte _0805925C @ case 5
	.4byte _0805925C @ case 6
	.4byte _0805925C @ case 7
	.4byte _0805925C @ case 8
	.4byte _0805925C @ case 9
	.4byte _08059262 @ case 10
	.4byte _080591CC @ case 11
	.4byte _0805927C @ case 12
_0805902C:
	bl sub_80560B4
	ldr r1, _08059050
	ldr r0, _08059054
	ldrh r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #4
	ands r0, r1
	cmp r0, #0
	beq _08059048
	b _080593C8
_08059048:
	movs r0, #0xb
	bl sub_8052960
	b _080593C8
	.align 2, 0
_08059050: .4byte gPlayerStateSettings
_08059054: .4byte gPlayerState
_08059058:
	ldr r0, _0805906C
	ldrb r0, [r0]
	cmp r0, #3
	beq _08059070
	cmp r0, #4
	beq _080590DC
	.2byte 0xEE00, 0xEE00
	b _0805915E
	.align 2, 0
_0805906C: .4byte 0x0203F93F
_08059070:
	ldr r4, _080590D0
	ldr r0, [r4]
	movs r1, #1
	bl sub_800378C
	ldr r5, _080590D4
	ldrh r1, [r5]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0805909C
	ldr r0, [r4]
	adds r2, r0, #0
	adds r2, #0x60
	ldr r3, _080590D8
	adds r1, r3, #0
	ldrh r3, [r2]
	adds r1, r1, r3
	strh r1, [r2]
	movs r1, #0
	bl sub_800378C
_0805909C:
	ldrh r1, [r5]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080590BE
	ldr r0, [r4]
	adds r2, r0, #0
	adds r2, #0x60
	movs r3, #0xc0
	lsls r3, r3, #1
	adds r1, r3, #0
	ldrh r3, [r2]
	adds r1, r1, r3
	strh r1, [r2]
	movs r1, #2
	bl sub_800378C
_080590BE:
	ldrh r1, [r5]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08059134
	movs r0, #0xa0
	lsls r0, r0, #3
	movs r1, #0x13
	b _08059152
	.align 2, 0
_080590D0: .4byte 0x0203F97C
_080590D4: .4byte gKeysPressed
_080590D8: .4byte 0xFFFFFE80
_080590DC:
	ldr r4, _08059140
	ldr r0, [r4]
	movs r1, #1
	bl sub_800378C
	ldr r5, _08059144
	ldrh r1, [r5]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08059108
	ldr r0, [r4]
	adds r2, r0, #0
	adds r2, #0x60
	ldr r3, _08059148
	adds r1, r3, #0
	ldrh r3, [r2]
	adds r1, r1, r3
	strh r1, [r2]
	movs r1, #0
	bl sub_800378C
_08059108:
	ldrh r1, [r5]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0805912A
	ldr r0, [r4]
	adds r2, r0, #0
	adds r2, #0x60
	movs r3, #0xaf
	lsls r3, r3, #1
	adds r1, r3, #0
	ldrh r3, [r2]
	adds r1, r1, r3
	strh r1, [r2]
	movs r1, #2
	bl sub_800378C
_0805912A:
	ldrh r1, [r5]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0805914C
_08059134:
	ldr r0, [r4]
	adds r0, #0x64
	movs r1, #0xa0
	lsls r1, r1, #3
	strh r1, [r0]
	b _0805915E
	.align 2, 0
_08059140: .4byte 0x0203F97C
_08059144: .4byte gKeysPressed
_08059148: .4byte 0xFFFFFEA2
_0805914C:
	movs r0, #0xa0
	lsls r0, r0, #3
	movs r1, #8
_08059152:
	bl CallARM_FX_Mul8
	ldr r1, [r4]
	rsbs r0, r0, #0
	adds r1, #0x64
	strh r0, [r1]
_0805915E:
	ldr r4, _080591A4
	ldrh r1, [r4]
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08059174
	movs r0, #0
	movs r1, #0
	bl sub_08056B90
_08059174:
	ldrh r1, [r4]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08059188
	movs r0, #0
	movs r1, #2
	bl sub_08056B90
_08059188:
	movs r0, #0xb
	bl sub_8052960
	bl sub_8056D30
	ldr r0, _080591A8
	ldrb r0, [r0]
	cmp r0, #3
	beq _080591AC
	cmp r0, #4
	beq _080591BA
	.2byte 0xEE00, 0xEE00
	b _080591C6
	.align 2, 0
_080591A4: .4byte gKeysPressed
_080591A8: .4byte 0x0203F93F
_080591AC:
	bl sub_8058198
	bl sub_8056FAC
	bl sub_8057B90
	b _080591C6
_080591BA:
	bl sub_8058974
	bl sub_8057604
	bl sub_8057E48
_080591C6:
	bl sub_8052288
	b _080593C8
_080591CC:
	ldr r0, _08059244
	ldrb r0, [r0]
	cmp r0, #4
	bne _080591D8
	bl sub_8057E48
_080591D8:
	movs r0, #0xc
	bl sub_8052834
	cmp r0, #0
	bne _080591E4
	b _080593C8
_080591E4:
	ldr r0, _08059248
	ldrb r0, [r0]
	cmp r0, #0xc
	beq _080591EE
	b _080593C8
_080591EE:
	movs r4, #0
	ldr r5, _0805924C
	ldr r6, _08059250
_080591F4:
	ldr r0, _08059254
	ldrb r1, [r0]
	cmp r1, #0
	bne _0805920A
	ldr r0, [r5]
	adds r0, #0x7a
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r4, r0
	ble _0805921C
_0805920A:
	cmp r1, #1
	bne _08059230
	ldr r0, [r5]
	adds r0, #0x7a
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r4, r0
	bge _08059230
_0805921C:
	lsls r1, r4, #4
	adds r1, r1, r4
	lsls r1, r1, #3
	ldr r0, [r6]
	adds r0, r0, r1
	ldr r1, _08059258
	movs r2, #0
	movs r3, #0
	bl sub_8003368
_08059230:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bls _080591F4
	bl sub_8041E58
	bl sub_8063178
	b _080593C8
	.align 2, 0
_08059244: .4byte 0x0203F93F
_08059248: .4byte 0x0203F93D
_0805924C: .4byte 0x0203F978
_08059250: .4byte 0x0203F97C
_08059254: .4byte 0x0203F93E
_08059258: .4byte 0x00000451
_0805925C:
	bl sub_80564E8
	b _080593C8
_08059262:
	ldr r0, _08059278
	ldrb r0, [r0]
	cmp r0, #4
	bne _0805926E
	bl sub_8057E48
_0805926E:
	movs r0, #0xc
	movs r1, #0xc
	bl sub_8052894
	b _080593C8
	.align 2, 0
_08059278: .4byte 0x0203F93F
_0805927C:
	ldr r0, _08059298
	ldr r0, [r0]
	movs r1, #3
	bl Free
	ldr r0, _0805929C
	ldrb r0, [r0]
	cmp r0, #3
	beq _080592A0
	cmp r0, #4
	beq _080592B0
	.2byte 0xEE00, 0xEE00
	b _080592BA
	.align 2, 0
_08059298: .4byte gMatrices
_0805929C: .4byte 0x0203F93F
_080592A0:
	ldr r0, _080592AC
	ldr r0, [r0]
	movs r1, #3
	bl Free
	b _080592BA
	.align 2, 0
_080592AC: .4byte 0x0203F970
_080592B0:
	ldr r0, _0805931C
	ldr r0, [r0]
	movs r1, #3
	bl Free
_080592BA:
	ldr r0, _08059320
	ldr r0, [r0]
	movs r1, #3
	bl Free
	ldr r0, _08059324
	ldr r0, [r0]
	movs r1, #3
	bl Free
	ldr r0, _08059328
	ldr r0, [r0]
	movs r1, #3
	bl Free
	ldr r0, _0805932C
	movs r1, #1
	bl sub_80270AC
	ldr r1, _08059330
	ldr r0, _08059334
	str r0, [r1]
	ldr r1, _08059338
	ldr r0, _0805933C
	str r0, [r1]
	ldr r1, _08059340
	ldr r0, _08059344
	str r0, [r1]
	ldr r1, _08059348
	movs r0, #0
	strb r0, [r1]
	ldr r0, _0805934C
	ldr r0, [r0]
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_8003884
	ldr r0, _08059350
	ldr r0, [r0]
	cmp r0, #0
	beq _0805935C
	ldr r0, _08059354
	ldrb r0, [r0]
	ldr r1, _08059358
	ldrb r1, [r1]
	bl sub_08055A14
	b _080593C8
	.align 2, 0
_0805931C: .4byte 0x0203F980
_08059320: .4byte 0x0203F97C
_08059324: .4byte 0x0203F978
_08059328: .4byte 0x0203F974
_0805932C: .4byte 0x00000FFF
_08059330: .4byte gNullsub_3
_08059334: .4byte 0x08009DD5
_08059338: .4byte gNullsub_4
_0805933C: .4byte 0x08009DD9
_08059340: .4byte gNullsub_5
_08059344: .4byte 0x08009DDD
_08059348: .4byte gIsSlideMiniGame
_0805934C: .4byte dword_2000FC8
_08059350: .4byte 0x0203F928
_08059354: .4byte 0x0203F93F
_08059358: .4byte 0x0203F940
_0805935C:
	ldr r0, _08059370
	ldrb r0, [r0]
	cmp r0, #1
	beq _08059394
	cmp r0, #1
	bgt _08059374
	cmp r0, #0
	beq _0805937A
	b _080593C8
	.align 2, 0
_08059370: .4byte 0x0203F940
_08059374:
	cmp r0, #2
	beq _080593AC
	b _080593C8
_0805937A:
	ldr r0, _0805938C
	ldrb r0, [r0]
	ldr r1, _08059390
	ldrb r1, [r1]
	movs r2, #0
	bl sub_800D5FC
	b _080593C8
	.align 2, 0
_0805938C: .4byte 0x0203F93F
_08059390: .4byte 0x0203F941
_08059394:
	ldr r0, _080593A4
	ldrb r0, [r0]
	ldr r1, _080593A8
	ldrb r1, [r1]
	movs r2, #0
	bl sub_800D8E8
	b _080593C8
	.align 2, 0
_080593A4: .4byte 0x0203F93F
_080593A8: .4byte 0x0203F941
_080593AC:
	ldr r0, _080593BC
	ldrb r0, [r0]
	ldr r1, _080593C0
	ldrb r1, [r1]
	movs r2, #0
	bl sub_800DA04
	b _080593C8
	.align 2, 0
_080593BC: .4byte 0x0203F93F
_080593C0: .4byte 0x0203F941
_080593C4:
	.2byte 0xEE00, 0xEE00
_080593C8:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

    .thumb
    .global sub_080593D0
sub_080593D0: @ 0x080593D0
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x10
	ldr r7, _0805951C
	strb r0, [r7]
	cmp r1, #2
	bls _080593E6
	.2byte 0xEE00, 0xEE00
_080593E6:
	ldr r0, _08059520
	strb r1, [r0]
	ldr r1, _08059524
	movs r0, #0
	strb r0, [r1]
	ldr r0, _08059528
	movs r4, #0
	str r4, [r0]
	ldr r0, _0805952C
	str r4, [r0]
	ldr r6, _08059530
	movs r0, #0x88
	movs r1, #4
	movs r2, #3
	bl Alloc
	str r0, [r6]
	ldr r5, _08059534
	movs r0, #0x1c
	movs r1, #4
	movs r2, #3
	bl Alloc
	str r0, [r5]
	ldr r5, _08059538
	movs r0, #0x80
	lsls r0, r0, #2
	movs r1, #4
	movs r2, #3
	bl Alloc
	str r0, [r5]
	ldr r5, _0805953C
	movs r0, #0xfc
	lsls r0, r0, #2
	movs r1, #4
	movs r2, #3
	bl Alloc
	str r0, [r5]
	movs r1, #0x20
	ldr r0, _08059540
	str r1, [r0]
	ldr r1, [r6]
	movs r0, #0xc0
	lsls r0, r0, #9
	str r0, [r1, #0x54]
	ldr r1, _08059544
	movs r0, #1
	strb r0, [r1]
	movs r0, #1
	rsbs r0, r0, #0
	bl sub_80139F0
	movs r1, #0x80
	lsls r1, r1, #0x13
	movs r2, #0xfa
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #8
	ldr r2, _08059548
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #2
	adds r2, #0xff
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #2
	adds r2, #0xff
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #2
	adds r2, #0xff
	adds r0, r2, #0
	strh r0, [r1]
	ldr r0, _0805954C
	movs r5, #0
	strh r4, [r0]
	adds r0, #4
	strh r4, [r0]
	adds r0, #4
	strh r4, [r0]
	adds r0, #4
	strh r4, [r0]
	subs r0, #0xa
	strh r4, [r0]
	adds r0, #4
	strh r4, [r0]
	adds r0, #4
	strh r4, [r0]
	adds r0, #4
	strh r4, [r0]
	ldr r1, _08059550
	movs r2, #0x80
	lsls r2, r2, #1
	movs r0, #0xaa
	bl DmaFill32
	movs r0, #0xc
	bl sub_08012E90
	movs r0, #0x15
	str r0, [sp]
	movs r0, #0x1f
	str r0, [sp, #4]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_8013A10
	movs r0, #0
	movs r1, #0x10
	bl sub_80521C4
	ldr r1, [r6]
	adds r0, r1, #0
	adds r0, #0x74
	strh r4, [r0]
	subs r0, #2
	strh r4, [r0]
	adds r0, #0xf
	strb r5, [r0]
	ldr r0, [r6]
	adds r0, #0x7e
	movs r1, #0x1c
	strb r1, [r0]
	ldr r0, [r6]
	adds r0, #0x7f
	strb r5, [r0]
	ldr r0, [r6]
	adds r0, #0x80
	movs r1, #0x2d
	strb r1, [r0]
	ldr r0, [r6]
	adds r2, r0, #0
	adds r2, #0x70
	movs r1, #0x50
	strh r1, [r2]
	adds r0, #0x84
	strb r5, [r0]
	ldr r0, _08059554
	strb r5, [r0]
	ldr r0, _08059558
	strb r5, [r0]
	ldrb r0, [r7]
	cmp r0, #5
	beq _08059566
	cmp r0, #5
	bgt _0805955C
	cmp r0, #0
	beq _08059590
	b _0805958C
	.align 2, 0
_0805951C: .4byte 0x0203F93F
_08059520: .4byte 0x0203F940
_08059524: .4byte 0x0203F941
_08059528: .4byte 0x0203F924
_0805952C: .4byte 0x0203F928
_08059530: .4byte 0x0203F944
_08059534: .4byte 0x0203F920
_08059538: .4byte gMatrices
_0805953C: .4byte 0x0203F948
_08059540: .4byte gMatricesCount
_08059544: .4byte 0x02000314
_08059548: .4byte 0x00001C03
_0805954C: .4byte 0x04000010
_08059550: .4byte gOAMBuffer1
_08059554: .4byte 0x0203F93D
_08059558: .4byte 0x0203F93A
_0805955C:
	cmp r0, #9
	beq _08059570
	cmp r0, #0xa
	beq _08059578
	b _0805958C
_08059566:
	ldr r0, _0805956C
	b _0805957A
	.align 2, 0
_0805956C: .4byte 0x083FC914
_08059570:
	ldr r0, _08059574
	b _0805957A
	.align 2, 0
_08059574: .4byte 0x083FCB14
_08059578:
	ldr r0, _08059588
_0805957A:
	movs r1, #0xa0
	lsls r1, r1, #0x13
	movs r2, #0x80
	bl DmaTransfer32
	b _08059590
	.align 2, 0
_08059588: .4byte 0x083FC714
_0805958C:
	.2byte 0xEE00, 0xEE00
_08059590:
	ldr r4, _080595F8
	ldr r0, [r4]
	ldr r1, _080595FC
	movs r5, #0
	str r5, [sp]
	movs r2, #0xf0
	str r2, [sp, #4]
	movs r2, #0xc8
	str r2, [sp, #8]
	movs r2, #2
	str r2, [sp, #0xc]
	movs r2, #0
	movs r3, #0
	bl SetSprite
	ldr r1, _08059600
	movs r0, #0x68
	strb r0, [r1]
	ldr r1, _08059604
	movs r0, #0xbf
	strb r0, [r1]
	ldr r0, [r4]
	movs r1, #0
	bl SetSpritePriority
	ldr r0, [r4]
	movs r1, #1
	movs r2, #0
	bl sub_8003820
	ldr r0, [r4]
	strb r5, [r0, #0xa]
	ldr r0, _08059608
	ldr r1, [r0]
	ldr r0, [r4]
	ldrh r0, [r0, #6]
	lsls r0, r0, #8
	adds r1, #0x6c
	movs r2, #0
	strh r0, [r1]
	ldr r0, _0805960C
	strb r2, [r0]
	movs r7, #0
_080595E6:
	ldr r0, _08059610
	ldrb r0, [r0]
	cmp r0, #5
	beq _08059658
	cmp r0, #5
	bgt _08059614
	cmp r0, #0
	beq _0805961E
	b _08059720
	.align 2, 0
_080595F8: .4byte 0x0203F920
_080595FC: .4byte 0x000004AF
_08059600: .4byte 0x0203F936
_08059604: .4byte 0x0203F937
_08059608: .4byte 0x0203F944
_0805960C: .4byte 0x0203F930
_08059610: .4byte 0x0203F93F
_08059614:
	cmp r0, #9
	beq _08059694
	cmp r0, #0xa
	beq _080596D0
	b _08059720
_0805961E:
	ldr r4, _08059650
	ldr r2, [r4]
	lsls r5, r7, #3
	adds r1, r5, r7
	lsls r1, r1, #2
	adds r2, r1, r2
	ldr r0, _08059654
	lsls r3, r7, #2
	adds r3, r3, r0
	ldrb r0, [r3]
	adds r2, #0x20
	strb r0, [r2]
	ldr r0, [r4]
	adds r1, r1, r0
	ldrh r0, [r3, #2]
	lsls r0, r0, #0x10
	movs r2, #0xf0
	lsls r2, r2, #0x11
	adds r0, r0, r2
	str r0, [r1, #0x1c]
	ldrb r0, [r3, #1]
	adds r1, #0x23
	strb r0, [r1]
	adds r6, r5, #0
	b _08059726
	.align 2, 0
_08059650: .4byte 0x0203F948
_08059654: .4byte 0x087DFB9C
_08059658:
	ldr r4, _0805968C
	ldr r2, [r4]
	lsls r5, r7, #3
	adds r1, r5, r7
	lsls r1, r1, #2
	adds r2, r1, r2
	ldr r0, _08059690
	lsls r3, r7, #2
	adds r3, r3, r0
	ldrb r0, [r3]
	adds r2, #0x20
	strb r0, [r2]
	ldr r0, [r4]
	adds r1, r1, r0
	ldrh r0, [r3, #2]
	lsls r0, r0, #0x10
	movs r2, #0xf0
	lsls r2, r2, #0x11
	adds r0, r0, r2
	str r0, [r1, #0x1c]
	ldrb r0, [r3, #1]
	adds r1, #0x23
	strb r0, [r1]
	adds r6, r5, #0
	b _08059726
	.align 2, 0
_0805968C: .4byte 0x0203F948
_08059690: .4byte 0x087DFC80
_08059694:
	ldr r4, _080596C8
	ldr r2, [r4]
	lsls r5, r7, #3
	adds r1, r5, r7
	lsls r1, r1, #2
	adds r2, r1, r2
	ldr r0, _080596CC
	lsls r3, r7, #2
	adds r3, r3, r0
	ldrb r0, [r3]
	adds r2, #0x20
	strb r0, [r2]
	ldr r0, [r4]
	adds r1, r1, r0
	ldrh r0, [r3, #2]
	lsls r0, r0, #0x10
	movs r2, #0xf0
	lsls r2, r2, #0x11
	adds r0, r0, r2
	str r0, [r1, #0x1c]
	ldrb r0, [r3, #1]
	adds r1, #0x23
	strb r0, [r1]
	adds r6, r5, #0
	b _08059726
	.align 2, 0
_080596C8: .4byte 0x0203F948
_080596CC: .4byte 0x087DFB58
_080596D0:
	adds r3, r7, #0
	ldr r4, _08059718
	lsls r6, r7, #3
	ldr r2, _0805971C
	adds r1, r7, #1
	mov r8, r1
	cmp r7, #0x73
	bls _080596EC
_080596E0:
	adds r0, r3, #0
	subs r0, #0x74
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0x73
	bhi _080596E0
_080596EC:
	ldr r0, [r4]
	adds r1, r6, r7
	lsls r1, r1, #2
	adds r0, r1, r0
	lsls r3, r3, #2
	adds r3, r3, r2
	ldrb r2, [r3]
	adds r0, #0x20
	strb r2, [r0]
	ldr r0, [r4]
	adds r1, r1, r0
	ldrh r0, [r3, #2]
	lsls r0, r0, #0x10
	movs r2, #0xf0
	lsls r2, r2, #0x11
	adds r0, r0, r2
	str r0, [r1, #0x1c]
	ldrb r0, [r3, #1]
	adds r1, #0x23
	strb r0, [r1]
	b _0805972A
	.align 2, 0
_08059718: .4byte 0x0203F948
_0805971C: .4byte 0x087DFD84
_08059720:
	.2byte 0xEE00, 0xEE00
	lsls r6, r7, #3
_08059726:
	adds r0, r7, #1
	mov r8, r0
_0805972A:
	ldr r5, _08059778
	ldr r0, [r5]
	adds r4, r6, r7
	lsls r4, r4, #2
	adds r0, r4, r0
	adds r0, #0x21
	movs r2, #0
	strb r2, [r0]
	ldr r0, [r5]
	adds r0, r4, r0
	adds r0, #0x22
	strb r2, [r0]
	ldr r0, [r5]
	adds r0, r0, r4
	ldr r1, _0805977C
	str r2, [sp]
	movs r2, #0xf0
	str r2, [sp, #4]
	movs r2, #0xc8
	str r2, [sp, #8]
	movs r2, #2
	str r2, [sp, #0xc]
	movs r2, #0
	movs r3, #0
	bl SetSprite
	ldr r0, [r5]
	adds r4, r4, r0
	adds r4, #0x23
	ldrb r0, [r4]
	cmp r0, #9
	bls _0805976C
	b _080599F2
_0805976C:
	lsls r0, r0, #2
	ldr r1, _08059780
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08059778: .4byte 0x0203F948
_0805977C: .4byte 0x00000451
_08059780: .4byte 0x08059784
_08059784: @ jump table
	.4byte _0805996C @ case 0
	.4byte _080599F2 @ case 1
	.4byte _080599F2 @ case 2
	.4byte _080597AC @ case 3
	.4byte _08059804 @ case 4
	.4byte _0805985C @ case 5
	.4byte _080598B4 @ case 6
	.4byte _0805990C @ case 7
	.4byte _0805996C @ case 8
	.4byte _08059994 @ case 9
_080597AC:
	ldr r5, _080597DC
	ldr r0, [r5]
	adds r1, r6, r7
	lsls r4, r1, #2
	adds r1, r4, r0
	adds r0, r1, #0
	adds r0, #0x21
	ldrb r0, [r0]
	cmp r0, #0
	beq _080597E4
	adds r0, r1, #0
	ldr r1, _080597E0
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r0, [r5]
	adds r0, r0, r4
	adds r1, r0, #0
	adds r1, #0x24
	ldrb r1, [r1, #2]
	bl sub_80037F4
	b _080597F0
	.align 2, 0
_080597DC: .4byte 0x0203F948
_080597E0: .4byte 0x00000451
_080597E4:
	adds r0, r1, #0
	ldr r1, _080597FC
	movs r2, #0
	movs r3, #0
	bl sub_8003368
_080597F0:
	ldr r0, _08059800
	ldr r1, [r0]
	adds r0, r6, r7
	lsls r0, r0, #2
	adds r0, r0, r1
	b _080599C6
	.align 2, 0
_080597FC: .4byte 0x000004B1
_08059800: .4byte 0x0203F948
_08059804:
	ldr r5, _08059840
	adds r0, r6, r7
	lsls r4, r0, #2
	ldr r0, [r5]
	adds r0, r0, r4
	movs r1, #0x96
	lsls r1, r1, #3
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r0, [r5]
	adds r1, r4, r0
	adds r0, r1, #0
	adds r0, #0x21
	ldrb r0, [r0]
	cmp r0, #0
	beq _08059844
	adds r0, r1, #0
	bl sub_80037A0
	ldr r0, [r5]
	adds r0, r0, r4
	adds r1, r0, #0
	adds r1, #0x24
	ldrb r1, [r1, #2]
	bl sub_80037F4
	b _0805984C
	.align 2, 0
_08059840: .4byte 0x0203F948
_08059844:
	adds r0, r1, #0
	movs r1, #0
	bl sub_800378C
_0805984C:
	ldr r0, _08059858
	ldr r1, [r0]
	adds r0, r6, r7
	lsls r0, r0, #2
	adds r0, r0, r1
	b _080599C6
	.align 2, 0
_08059858: .4byte 0x0203F948
_0805985C:
	ldr r5, _08059894
	adds r0, r6, r7
	lsls r4, r0, #2
	ldr r0, [r5]
	adds r0, r0, r4
	ldr r1, _08059898
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r0, [r5]
	adds r1, r4, r0
	adds r0, r1, #0
	adds r0, #0x21
	ldrb r0, [r0]
	cmp r0, #0
	beq _0805989C
	adds r0, r1, #0
	bl sub_80037A0
	ldr r0, [r5]
	adds r0, r0, r4
	adds r1, r0, #0
	adds r1, #0x24
	ldrb r1, [r1, #2]
	bl sub_80037F4
	b _080598A4
	.align 2, 0
_08059894: .4byte 0x0203F948
_08059898: .4byte 0x000004C7
_0805989C:
	adds r0, r1, #0
	movs r1, #0
	bl sub_800378C
_080598A4:
	ldr r0, _080598B0
	ldr r1, [r0]
	adds r0, r6, r7
	lsls r0, r0, #2
	adds r0, r0, r1
	b _080599C6
	.align 2, 0
_080598B0: .4byte 0x0203F948
_080598B4:
	ldr r5, _080598F0
	adds r0, r6, r7
	lsls r4, r0, #2
	ldr r0, [r5]
	adds r0, r0, r4
	movs r1, #0x99
	lsls r1, r1, #3
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r0, [r5]
	adds r1, r4, r0
	adds r0, r1, #0
	adds r0, #0x21
	ldrb r0, [r0]
	cmp r0, #0
	beq _080598F4
	adds r0, r1, #0
	bl sub_80037A0
	ldr r0, [r5]
	adds r0, r0, r4
	adds r1, r0, #0
	adds r1, #0x24
	ldrb r1, [r1, #2]
	bl sub_80037F4
	b _080598FC
	.align 2, 0
_080598F0: .4byte 0x0203F948
_080598F4:
	adds r0, r1, #0
	movs r1, #0
	bl sub_800378C
_080598FC:
	ldr r0, _08059908
	ldr r1, [r0]
	adds r0, r6, r7
	lsls r0, r0, #2
	adds r0, r0, r1
	b _080599C6
	.align 2, 0
_08059908: .4byte 0x0203F948
_0805990C:
	ldr r5, _0805993C
	ldr r0, [r5]
	adds r1, r6, r7
	lsls r4, r1, #2
	adds r1, r4, r0
	adds r0, r1, #0
	adds r0, #0x21
	ldrb r0, [r0]
	cmp r0, #0
	beq _08059944
	adds r0, r1, #0
	ldr r1, _08059940
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r0, [r5]
	adds r0, r0, r4
	adds r1, r0, #0
	adds r1, #0x24
	ldrb r1, [r1, #2]
	bl sub_80037F4
	b _0805995C
	.align 2, 0
_0805993C: .4byte 0x0203F948
_08059940: .4byte 0x00000451
_08059944:
	adds r0, r1, #0
	movs r1, #0x8f
	lsls r1, r1, #2
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r0, [r5]
	adds r0, r0, r4
	movs r1, #0
	bl sub_800378C
_0805995C:
	ldr r0, _08059968
	ldr r1, [r0]
	adds r0, r6, r7
	lsls r0, r0, #2
	adds r0, r0, r1
	b _080599C6
	.align 2, 0
_08059968: .4byte 0x0203F948
_0805996C:
	ldr r5, _0805998C
	adds r4, r6, r7
	lsls r4, r4, #2
	ldr r0, [r5]
	adds r0, r0, r4
	ldr r1, _08059990
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r0, [r5]
	adds r4, r4, r0
	movs r0, #0
	strb r0, [r4, #0x12]
	b _080599F2
	.align 2, 0
_0805998C: .4byte 0x0203F948
_08059990: .4byte 0x00000451
_08059994:
	ldr r5, _080599CC
	ldr r0, [r5]
	adds r1, r6, r7
	lsls r4, r1, #2
	adds r1, r4, r0
	adds r0, r1, #0
	adds r0, #0x21
	ldrb r0, [r0]
	cmp r0, #0
	beq _080599D4
	adds r0, r1, #0
	ldr r1, _080599D0
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r0, [r5]
	adds r0, r0, r4
	adds r1, r0, #0
	adds r1, #0x24
	ldrb r1, [r1, #2]
	bl sub_80037F4
	ldr r0, [r5]
	adds r0, r4, r0
_080599C6:
	movs r1, #0
	strb r1, [r0, #0x12]
	b _080599F2
	.align 2, 0
_080599CC: .4byte 0x0203F948
_080599D0: .4byte 0x00000451
_080599D4:
	adds r0, r1, #0
	ldr r1, _08059A6C
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r0, [r5]
	adds r0, r4, r0
	movs r1, #1
	strb r1, [r0, #0x12]
	ldr r0, [r5]
	adds r0, r0, r4
	movs r1, #5
	bl SetSpritePalette
_080599F2:
	ldr r5, _08059A70
	adds r4, r6, r7
	lsls r4, r4, #2
	ldr r0, [r5]
	adds r0, r0, r4
	movs r1, #1
	bl SetSpritePriority
	ldr r0, [r5]
	adds r0, r4, r0
	movs r6, #0
	strb r6, [r0, #0xa]
	ldr r0, [r5]
	adds r0, r0, r4
	movs r1, #1
	mov r2, r8
	bl sub_8003820
	movs r1, #0x80
	lsls r1, r1, #1
	mov sb, r1
	mov r0, r8
	movs r1, #0
	mov r2, sb
	bl sub_8025718
	mov r2, r8
	lsls r0, r2, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #0x1b
	bhi _08059A32
	b _080595E6
_08059A32:
	movs r0, #0x96
	lsls r0, r0, #2
	bl sub_80139F0
	ldr r1, _08059A74
	movs r0, #0
	str r0, [r1]
	bl sub_80409DC
	bl sub_8063178
	ldr r0, _08059A78
	ldrb r0, [r0]
	cmp r0, #2
	bne _08059A5A
	ldr r0, _08059A7C
	movs r1, #1
	movs r2, #3
	bl sub_0800F02C
_08059A5A:
	ldr r0, _08059A80
	ldrb r0, [r0]
	cmp r0, #5
	beq _08059A8E
	cmp r0, #5
	bgt _08059A84
	cmp r0, #0
	beq _08059B56
	b _08059B74
	.align 2, 0
_08059A6C: .4byte 0x00000221
_08059A70: .4byte 0x0203F948
_08059A74: .4byte 0x0200031C
_08059A78: .4byte 0x0203F940
_08059A7C: .4byte 0x0203F924
_08059A80: .4byte 0x0203F93F
_08059A84:
	cmp r0, #9
	beq _08059B56
	cmp r0, #0xa
	beq _08059B78
	b _08059B74
_08059A8E:
	ldr r4, _08059B64
	ldr r0, [r4]
	movs r1, #0x9a
	lsls r1, r1, #3
	str r6, [sp]
	movs r2, #0x25
	str r2, [sp, #4]
	movs r2, #0x40
	str r2, [sp, #8]
	movs r5, #2
	str r5, [sp, #0xc]
	movs r2, #0
	movs r3, #0
	bl SetSprite
	ldr r0, [r4]
	movs r1, #0
	bl SetSpritePriority
	ldr r0, [r4]
	movs r1, #1
	movs r2, #0x1d
	bl sub_8003820
	ldr r0, [r4]
	movs r1, #1
	bl sub_8003808
	ldr r2, [r4]
	adds r0, r2, #0
	adds r0, #0x7a
	movs r1, #0
	strh r6, [r0]
	subs r0, #4
	strh r6, [r0]
	adds r0, #2
	strh r6, [r0]
	adds r0, #0xb
	strb r1, [r0]
	bl sub_805B020
	ldr r0, [r4]
	adds r0, #0x1c
	ldr r1, _08059B68
	str r6, [sp]
	movs r2, #0xd8
	str r2, [sp, #4]
	movs r2, #0x41
	str r2, [sp, #8]
	str r5, [sp, #0xc]
	movs r2, #0
	movs r3, #0
	bl SetSprite
	ldr r0, [r4]
	adds r0, #0x1c
	movs r1, #0
	bl SetSpritePriority
	ldr r0, [r4]
	adds r0, #0x1c
	movs r1, #1
	movs r2, #0x1e
	bl sub_8003820
	movs r0, #0x1e
	movs r1, #0
	mov r2, sb
	bl sub_8025718
	ldr r0, [r4]
	adds r0, #0x38
	ldr r1, _08059B6C
	str r6, [sp]
	movs r2, #0xd5
	str r2, [sp, #4]
	movs r2, #0x54
	str r2, [sp, #8]
	str r5, [sp, #0xc]
	movs r2, #0
	movs r3, #0
	bl SetSprite
	ldr r0, [r4]
	adds r0, #0x38
	movs r1, #0
	bl SetSpritePriority
	ldr r0, [r4]
	adds r0, #0x38
	movs r1, #1
	movs r2, #0x1f
	bl sub_8003820
	movs r2, #0xf0
	lsls r2, r2, #1
	movs r0, #0x1f
	movs r1, #0
	bl sub_8025718
_08059B56:
	ldr r0, _08059B70
	movs r1, #1
	movs r2, #0
	bl sub_8026E48
	b _08059B78
	.align 2, 0
_08059B64: .4byte 0x0203F944
_08059B68: .4byte 0x00000463
_08059B6C: .4byte 0x0000049B
_08059B70: .4byte 0x00000FFF
_08059B74:
	.2byte 0xEE00, 0xEE00
_08059B78:
	ldr r0, _08059BB8
	ldr r1, [r0]
	movs r0, #0x99
	lsls r0, r0, #0x10
	str r0, [r1, #0x5c]
	ldr r1, _08059BBC
	ldr r0, _08059BC0
	str r0, [r1]
	ldr r1, _08059BC4
	ldr r0, _08059BC8
	str r0, [r1]
	ldr r1, _08059BCC
	ldr r0, _08059BD0
	str r0, [r1]
	ldr r1, _08059BD4
	movs r0, #1
	strb r0, [r1]
	ldr r0, _08059BD8
	ldr r0, [r0]
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_8003884
	add sp, #0x10
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08059BB8: .4byte 0x0203F944
_08059BBC: .4byte gNullsub_3
_08059BC0: .4byte 0x0805B615
_08059BC4: .4byte gNullsub_4
_08059BC8: .4byte 0x0805B191
_08059BCC: .4byte gNullsub_5
_08059BD0: .4byte 0x0805A039
_08059BD4: .4byte gIsSlideMiniGame
_08059BD8: .4byte dword_2000FC8

    .thumb
sub_8059BDC: @ 0x08059BDC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _08059C80
	mov sb, r0
	ldr r3, [r0]
	ldr r2, [r3, #0x5c]
	lsrs r1, r2, #0x10
	movs r4, #0x80
	lsls r4, r4, #1
	adds r0, r4, #0
	subs r0, r0, r1
	lsls r6, r0, #0x10
	lsrs r7, r6, #0x10
	mov sl, r7
	movs r0, #0x80
	lsls r0, r0, #0x11
	cmp r2, r0
	bhi _08059C90
	movs r4, #0x2d
	subs r4, r4, r7
	ldr r0, _08059C84
	mov r8, r0
	adds r0, r7, #0
	adds r0, #0x40
	lsls r0, r0, #1
	add r0, r8
	movs r1, #0
	ldrsh r0, [r0, r1]
	lsrs r6, r6, #0x11
	adds r1, r6, #0
	bl CallARM_FX_Mul8
	ldr r5, _08059C88
	ldr r1, [r5]
	asrs r0, r0, #1
	adds r0, r4, r0
	strb r0, [r1, #8]
	lsls r0, r7, #1
	add r0, r8
	movs r2, #0
	ldrsh r0, [r0, r2]
	lsls r0, r0, #1
	adds r1, r6, #0
	bl CallARM_FX_Mul8
	ldr r5, [r5]
	adds r0, #0x93
	strh r0, [r5, #6]
	movs r0, #0xa
	rsbs r0, r0, #0
	cmp r4, r0
	ble _08059C50
	adds r0, r5, #0
	bl RenderSprite
_08059C50:
	mov r4, sl
	lsls r1, r4, #0x1a
	lsrs r1, r1, #0x18
	mov r2, sb
	ldr r0, [r2]
	ldr r2, [r0, #0x5c]
	lsrs r2, r2, #0x10
	movs r0, #0
	bl sub_8025718
	mov r4, sb
	ldr r1, [r4]
	ldr r0, [r1, #0x5c]
	movs r2, #0xc0
	lsls r2, r2, #9
	adds r0, r0, r2
	str r0, [r1, #0x5c]
	ldr r0, _08059C8C
	ldrb r0, [r0]
	cmp r0, #5
	bne _08059CCA
	bl sub_805B020
	b _08059CCA
	.align 2, 0
_08059C80: .4byte 0x0203F944
_08059C84: .4byte 0x080B1AE4
_08059C88: .4byte 0x0203F920
_08059C8C: .4byte 0x0203F93F
_08059C90:
	movs r0, #0xa0
	lsls r0, r0, #0xc
	ldr r1, [r3, #0x54]
	bl sub_800392C
	mov r4, sb
	ldr r1, [r4]
	asrs r0, r0, #0x10
	str r0, [r1, #0x60]
	bl sub_80139F0
	ldr r1, _08059CD8
	movs r0, #0
	str r0, [r1]
	ldr r1, [r4]
	adds r2, r1, #0
	adds r2, #0x6c
	movs r0, #0x93
	lsls r0, r0, #8
	strh r0, [r2]
	adds r1, #0x6e
	movs r0, #0xb4
	lsls r0, r0, #6
	strh r0, [r1]
	ldr r1, _08059CDC
	movs r0, #1
	strb r0, [r1]
	bl sub_80524D8
_08059CCA:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08059CD8: .4byte 0x0200031C
_08059CDC: .4byte 0x0203F93D

	.thumb
sub_8059CE0: @ 0x08059CE0
	push {r4, r5, r6, lr}
	ldr r6, _08059CF8
	ldrb r0, [r6]
	cmp r0, #3
	bne _08059CEC
	b _08059E30
_08059CEC:
	cmp r0, #3
	bgt _08059CFC
	cmp r0, #2
	beq _08059D0A
	b _0805A02E
	.align 2, 0
_08059CF8: .4byte 0x0203F93D
_08059CFC:
	cmp r0, #4
	bne _08059D02
	b _08059F64
_08059D02:
	cmp r0, #5
	bne _08059D08
	b _08059F98
_08059D08:
	b _0805A02E
_08059D0A:
	ldr r5, _08059D40
	ldr r4, [r5]
	ldr r0, _08059D44
	ldr r2, [r0]
	ldrh r1, [r2, #6]
	adds r0, r4, #0
	adds r0, #0x6c
	movs r3, #0
	strh r1, [r0]
	ldrb r0, [r2, #8]
	lsls r0, r0, #8
	adds r1, r4, #0
	adds r1, #0x6e
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0x82
	strb r3, [r0]
	ldr r0, _08059D48
	ldrb r1, [r0]
	adds r3, r0, #0
	cmp r1, #5
	beq _08059D6C
	cmp r1, #5
	bgt _08059D4C
	cmp r1, #0
	beq _08059D56
	b _08059DA0
	.align 2, 0
_08059D40: .4byte 0x0203F944
_08059D44: .4byte 0x0203F920
_08059D48: .4byte 0x0203F93F
_08059D4C:
	cmp r1, #9
	beq _08059D84
	cmp r1, #0xa
	beq _08059DA4
	b _08059DA0
_08059D56:
	ldr r2, _08059D64
	movs r1, #0
	ldr r0, _08059D68
	ldrb r0, [r0]
	cmp r0, #0x13
	bls _08059D92
	b _08059D90
	.align 2, 0
_08059D64: .4byte 0x0203F941
_08059D68: .4byte 0x0203F93A
_08059D6C:
	ldr r2, _08059D80
	movs r1, #0
	ldr r0, [r5]
	adds r0, #0x76
	movs r4, #0
	ldrsh r0, [r0, r4]
	cmp r0, #0
	bgt _08059D92
	b _08059D90
	.align 2, 0
_08059D80: .4byte 0x0203F941
_08059D84:
	ldr r2, _08059D98
	movs r1, #0
	ldr r0, _08059D9C
	ldrb r0, [r0]
	cmp r0, #0xb
	bls _08059D92
_08059D90:
	movs r1, #1
_08059D92:
	strb r1, [r2]
	b _08059DA4
	.align 2, 0
_08059D98: .4byte 0x0203F941
_08059D9C: .4byte 0x0203F93A
_08059DA0:
	.2byte 0xEE00, 0xEE00
_08059DA4:
	ldrb r0, [r3]
	cmp r0, #0xa
	beq _08059E2A
	ldr r0, _08059DE4
	ldrb r0, [r0]
	cmp r0, #0
	beq _08059DFC
	ldr r0, _08059DE8
	ldrb r0, [r0]
	cmp r0, #0
	beq _08059E2A
	ldr r2, _08059DEC
	movs r1, #0xb2
	lsls r1, r1, #3
	adds r0, r2, r1
	ldrh r0, [r0]
	ldr r3, _08059DF0
	ldr r4, _08059DF4
	adds r1, r2, r4
	ldrb r3, [r3]
	adds r1, r1, r3
	ldrb r1, [r1]
	ldr r3, _08059DF8
	adds r2, r2, r3
	ldr r2, [r2]
	movs r4, #0x80
	lsls r4, r4, #9
	adds r2, r2, r4
	bl audio_new_fx
	b _08059E2A
	.align 2, 0
_08059DE4: .4byte 0x0203F941
_08059DE8: .4byte gCanPlaySfx
_08059DEC: .4byte 0x080CE440
_08059DF0: .4byte gSfxVolume
_08059DF4: .4byte 0x00000592
_08059DF8: .4byte 0x00000594
_08059DFC:
	ldr r0, _08059EAC
	ldrb r0, [r0]
	cmp r0, #0
	beq _08059E2A
	ldr r2, _08059EB0
	movs r1, #0xb1
	lsls r1, r1, #3
	adds r0, r2, r1
	ldrh r0, [r0]
	ldr r3, _08059EB4
	ldr r4, _08059EB8
	adds r1, r2, r4
	ldrb r3, [r3]
	adds r1, r1, r3
	ldrb r1, [r1]
	ldr r3, _08059EBC
	adds r2, r2, r3
	ldr r2, [r2]
	movs r4, #0x80
	lsls r4, r4, #9
	adds r2, r2, r4
	bl audio_new_fx
_08059E2A:
	ldr r1, _08059EC0
	movs r0, #3
	strb r0, [r1]
_08059E30:
	ldr r4, _08059EC4
	ldr r0, [r4]
	ldrb r0, [r0, #8]
	cmp r0, #0xb3
	bls _08059E3C
	b _08059F40
_08059E3C:
	ldr r5, _08059EC8
	ldr r0, [r5]
	adds r0, #0x6e
	ldrh r0, [r0]
	ldr r1, _08059ECC
	bl CallARM_FX_Mul8
	ldr r1, [r5]
	adds r1, #0x6e
	strh r0, [r1]
	ldr r1, [r4]
	lsrs r0, r0, #8
	strb r0, [r1, #8]
	movs r3, #0
	ldr r1, [r4]
	ldrb r0, [r1, #8]
	lsls r4, r0, #0x18
	lsrs r2, r4, #0x18
	cmp r2, #0x3c
	bls _08059E66
	movs r3, #1
_08059E66:
	cmp r2, #0x4b
	bls _08059E74
	ldrb r0, [r1, #8]
	subs r0, #0x4b
	asrs r0, r0, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
_08059E74:
	cmp r2, #0x82
	bls _08059E7E
	subs r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
_08059E7E:
	ldr r0, [r5]
	adds r0, #0x6c
	ldrh r0, [r0]
	subs r0, r0, r3
	strh r0, [r1, #6]
	lsrs r1, r4, #0x1b
	movs r2, #0x80
	lsls r2, r2, #1
	movs r0, #0
	bl sub_8025718
	ldr r1, [r5]
	adds r0, r1, #0
	adds r0, #0x82
	ldrb r0, [r0]
	cmp r0, #0x14
	beq _08059EDA
	cmp r0, #0x14
	bgt _08059ED0
	cmp r0, #0xa
	beq _08059EDA
	b _08059F0A
	.align 2, 0
_08059EAC: .4byte gCanPlaySfx
_08059EB0: .4byte 0x080CE440
_08059EB4: .4byte gSfxVolume
_08059EB8: .4byte 0x0000058A
_08059EBC: .4byte 0x0000058C
_08059EC0: .4byte 0x0203F93D
_08059EC4: .4byte 0x0203F920
_08059EC8: .4byte 0x0203F944
_08059ECC: .4byte 0x00000103
_08059ED0:
	cmp r0, #0x1e
	beq _08059EDA
	cmp r0, #0x28
	beq _08059F00
	b _08059F0A
_08059EDA:
	ldr r0, _08059EF8
	ldr r2, [r0]
	ldr r0, _08059EFC
	ldr r0, [r0]
	ldrb r0, [r0, #8]
	movs r1, #0xa0
	subs r1, r1, r0
	asrs r1, r1, #4
	ldr r0, [r2, #0x60]
	adds r0, r0, r1
	str r0, [r2, #0x60]
	bl sub_80139F0
	b _08059F0A
	.align 2, 0
_08059EF8: .4byte 0x0203F944
_08059EFC: .4byte 0x0203F920
_08059F00:
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r1, #0x60]
	bl sub_80139F0
_08059F0A:
	ldr r0, _08059F34
	ldr r0, [r0]
	ldr r4, _08059F38
	cmp r0, #1
	bne _08059F30
	ldr r3, _08059F3C
	ldrh r1, [r3]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r0, [r4]
	adds r0, #0x82
	ldrb r2, [r0]
	movs r0, #0x43
	subs r0, r0, r2
	lsls r0, r0, #1
	subs r1, r1, r0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	strh r1, [r3]
_08059F30:
	ldr r1, [r4]
	b _08059FF2
	.align 2, 0
_08059F34: .4byte 0x0200031C
_08059F38: .4byte 0x0203F944
_08059F3C: .4byte 0x04000012
_08059F40:
	movs r0, #1
	rsbs r0, r0, #0
	bl sub_80139F0
	ldr r0, _08059F5C
	ldr r0, [r0]
	adds r0, #0x82
	movs r1, #0
	strb r1, [r0]
	ldr r1, _08059F60
	movs r0, #4
	strb r0, [r1]
	b _0805A032
	.align 2, 0
_08059F5C: .4byte 0x0203F944
_08059F60: .4byte 0x0203F93D
_08059F64:
	ldr r4, _08059F90
	ldr r0, [r4]
	adds r1, r0, #0
	adds r1, #0x82
	ldrb r0, [r1]
	cmp r0, #0x1d
	bls _08059FF6
	ldr r0, _08059F94
	ldr r0, [r0]
	movs r1, #1
	bl SetSpritePriority
	bl sub_80524D8
	ldr r0, [r4]
	adds r0, #0x82
	movs r1, #0
	strb r1, [r0]
	movs r0, #5
	strb r0, [r6]
	b _0805A032
	.align 2, 0
_08059F90: .4byte 0x0203F944
_08059F94: .4byte 0x0203F920
_08059F98:
	ldr r5, _08059FFC
	ldr r0, [r5]
	adds r2, r0, #0
	adds r2, #0x82
	ldrb r0, [r2]
	cmp r0, #0x36
	bhi _0805A008
	ldr r1, _0805A000
	lsls r0, r0, #2
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	movs r1, #0x88
	lsls r1, r1, #5
	bl CallARM_FX_Mul8
	ldr r4, _0805A004
	ldr r2, [r4]
	asrs r0, r0, #8
	movs r1, #0x64
	subs r1, r1, r0
	strb r1, [r2, #8]
	ldr r0, [r5]
	adds r0, #0x82
	ldrb r0, [r0]
	lsls r0, r0, #8
	movs r1, #0xc0
	lsls r1, r1, #1
	bl CallARM_FX_Mul8
	ldr r1, [r4]
	asrs r0, r0, #8
	strh r0, [r1, #6]
	ldr r0, [r5]
	adds r0, #0x82
	ldrb r1, [r0]
	lsls r1, r1, #0x19
	rsbs r1, r1, #0
	lsrs r1, r1, #0x18
	movs r2, #0x80
	lsls r2, r2, #2
	movs r0, #0
	bl sub_8025718
	ldr r1, [r5]
_08059FF2:
	adds r1, #0x82
	ldrb r0, [r1]
_08059FF6:
	adds r0, #1
	strb r0, [r1]
	b _0805A032
	.align 2, 0
_08059FFC: .4byte 0x0203F944
_0805A000: .4byte 0x080B1AE4
_0805A004: .4byte 0x0203F920
_0805A008:
	ldr r0, _0805A01C
	ldrb r0, [r0]
	cmp r0, #0xa
	bne _0805A024
	ldr r0, _0805A020
	movs r1, #0
	str r1, [r0]
	movs r0, #8
	strb r0, [r6]
	b _0805A032
	.align 2, 0
_0805A01C: .4byte 0x0203F93F
_0805A020: .4byte 0x0203F928
_0805A024:
	movs r0, #6
	movs r1, #8
	bl sub_80527A8
	b _0805A032
_0805A02E:
	.2byte 0xEE00, 0xEE00
_0805A032:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	.thumb
sub_805A038: @ 0x0805A038
	push {r4, lr}
	ldr r1, _0805A074
	ldr r2, _0805A078
	ldrb r0, [r2]
	strh r0, [r1]
	ldr r0, _0805A07C
	ldr r0, [r0]
	adds r4, r2, #0
	cmp r0, #1
	beq _0805A058
	ldr r0, _0805A080
	ldr r0, [r0]
	cmp r0, #1
	beq _0805A058
	cmp r0, #0
	bne _0805A06E
_0805A058:
	ldr r0, _0805A084
	ldr r0, [r0]
	ldr r0, [r0, #0x54]
	movs r1, #0x80
	lsls r1, r1, #0xc
	bl CallARM_FX_Mul16
	asrs r0, r0, #0x10
	ldrb r1, [r4]
	adds r0, r0, r1
	strb r0, [r4]
_0805A06E:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805A074: .4byte 0x04000012
_0805A078: .4byte 0x0203F930
_0805A07C: .4byte 0x0200031C
_0805A080: .4byte 0x02000318
_0805A084: .4byte 0x0203F944

    .thumb
sub_805A088: @ 0x0805A088
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r7, r1, #0
	ldr r4, _0805A0D4
	ldrb r0, [r4]
	cmp r0, #0
	beq _0805A0A0
	ldr r0, _0805A0D8
	ldr r0, [r0]
	ldr r0, [r0, #0x68]
	bl audio_halt_fx
_0805A0A0:
	ldr r0, _0805A0D8
	ldr r6, [r0]
	ldrb r0, [r4]
	cmp r0, #0
	beq _0805A0E4
	ldr r3, _0805A0DC
	movs r1, #0xa8
	lsls r1, r1, #1
	adds r0, r3, r1
	ldrh r0, [r0]
	ldr r2, _0805A0E0
	movs r4, #0xa9
	lsls r4, r4, #1
	adds r1, r3, r4
	ldrb r2, [r2]
	adds r1, r1, r2
	ldrb r1, [r1]
	adds r4, #2
	adds r2, r3, r4
	ldr r2, [r2]
	movs r3, #0x80
	lsls r3, r3, #9
	adds r2, r2, r3
	bl audio_new_fx
	b _0805A0E8
	.align 2, 0
_0805A0D4: .4byte gCanPlaySfx
_0805A0D8: .4byte 0x0203F944
_0805A0DC: .4byte 0x080CE440
_0805A0E0: .4byte gSfxVolume
_0805A0E4:
	movs r0, #1
	rsbs r0, r0, #0
_0805A0E8:
	str r0, [r6, #0x68]
	cmp r7, #0
	beq _0805A0F6
	ldr r1, _0805A19C
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
_0805A0F6:
	ldr r0, _0805A1A0
	ldr r1, [r0]
	lsls r2, r5, #3
	adds r0, r2, r5
	lsls r0, r0, #2
	adds r0, r0, r1
	adds r0, #0x23
	ldrb r0, [r0]
	ldr r6, _0805A1A4
	adds r7, r2, #0
	cmp r0, #5
	bne _0805A11E
	ldr r2, [r6]
	ldr r1, [r2, #0x54]
	ldr r0, _0805A1A8
	cmp r1, r0
	bgt _0805A11E
	adds r0, r1, #0
	adds r0, #0xd
	str r0, [r2, #0x54]
_0805A11E:
	movs r0, #0xa0
	lsls r0, r0, #0xc
	adds r4, r6, #0
	ldr r1, [r4]
	ldr r1, [r1, #0x54]
	bl sub_800392C
	ldr r1, [r4]
	asrs r0, r0, #0x10
	str r0, [r1, #0x60]
	bl sub_80139F0
	ldr r2, [r4]
	adds r1, r2, #0
	adds r1, #0x70
	ldrh r0, [r1]
	adds r0, #0x46
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xff
	ble _0805A160
	adds r1, #0x10
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldr r1, [r4]
	adds r1, #0x70
	ldr r2, _0805A1AC
	adds r0, r2, #0
	ldrh r3, [r1]
	adds r0, r0, r3
	strh r0, [r1]
_0805A160:
	ldr r0, _0805A1A0
	ldr r1, [r0]
	adds r0, r7, r5
	lsls r0, r0, #2
	adds r0, r0, r1
	adds r0, #0x23
	ldrb r0, [r0]
	cmp r0, #5
	bne _0805A18E
	ldr r1, [r4]
	adds r0, r1, #0
	adds r0, #0x7f
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _0805A186
	ldr r0, [r1, #0x54]
	str r0, [r1, #0x58]
_0805A186:
	ldr r0, [r6]
	adds r0, #0x7f
	movs r1, #0x78
	strb r1, [r0]
_0805A18E:
	lsls r0, r5, #0x18
	lsrs r0, r0, #0x18
	bl sub_805A1B0
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805A19C: .4byte 0x0203F93A
_0805A1A0: .4byte 0x0203F948
_0805A1A4: .4byte 0x0203F944
_0805A1A8: .4byte 0x0002FFFF
_0805A1AC: .4byte 0xFFFFFF00

    .thumb
sub_805A1B0: @ 0x0805A1B0
	push {r4, r5, lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r5, _0805A1E4
	lsls r4, r0, #3
	adds r4, r4, r0
	lsls r4, r4, #2
	ldr r0, [r5]
	adds r0, r0, r4
	ldr r1, _0805A1E8
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r0, [r5]
	adds r0, r4, r0
	adds r0, #0x22
	movs r1, #1
	strb r1, [r0]
	ldr r0, [r5]
	adds r4, r4, r0
	adds r4, #0x21
	strb r1, [r4]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0805A1E4: .4byte 0x0203F948
_0805A1E8: .4byte 0x00000451

	.thumb
sub_805A1EC: @ 0x0805A1EC
	push {r4, r5, r6, r7, lr}
	adds r7, r1, #0
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	ldr r4, _0805A218
	ldrb r0, [r4]
	cmp r0, #0
	beq _0805A206
	ldr r0, _0805A21C
	ldr r0, [r0]
	ldr r0, [r0, #0x64]
	bl audio_halt_fx
_0805A206:
	movs r0, #0
	movs r1, #1
	bl RandomMinMax
	cmp r0, #0
	beq _0805A220
	cmp r0, #1
	beq _0805A24C
	b _0805A286
	.align 2, 0
_0805A218: .4byte gCanPlaySfx
_0805A21C: .4byte 0x0203F944
_0805A220:
	ldr r0, _0805A240
	ldr r5, [r0]
	ldrb r0, [r4]
	cmp r0, #0
	beq _0805A280
	ldr r2, _0805A244
	ldrh r0, [r2, #0x18]
	ldr r3, _0805A248
	adds r1, r2, #0
	adds r1, #0x1a
	ldrb r3, [r3]
	adds r1, r1, r3
	ldrb r1, [r1]
	ldr r2, [r2, #0x1c]
	b _0805A268
	.align 2, 0
_0805A240: .4byte 0x0203F944
_0805A244: .4byte 0x080CE440
_0805A248: .4byte gSfxVolume
_0805A24C:
	ldr r0, _0805A274
	ldr r5, [r0]
	ldrb r0, [r4]
	cmp r0, #0
	beq _0805A280
	ldr r2, _0805A278
	ldrh r0, [r2, #0x28]
	ldr r3, _0805A27C
	adds r1, r2, #0
	adds r1, #0x2a
	ldrb r3, [r3]
	adds r1, r1, r3
	ldrb r1, [r1]
	ldr r2, [r2, #0x2c]
_0805A268:
	movs r3, #0x80
	lsls r3, r3, #9
	adds r2, r2, r3
	bl audio_new_fx
	b _0805A284
	.align 2, 0
_0805A274: .4byte 0x0203F944
_0805A278: .4byte 0x080CE440
_0805A27C: .4byte gSfxVolume
_0805A280:
	movs r0, #1
	rsbs r0, r0, #0
_0805A284:
	str r0, [r5, #0x64]
_0805A286:
	ldr r0, _0805A314
	ldr r1, [r0]
	lsls r2, r6, #3
	adds r0, r2, r6
	lsls r0, r0, #2
	adds r0, r0, r1
	adds r0, #0x23
	ldrb r0, [r0]
	ldr r4, _0805A318
	adds r5, r2, #0
	cmp r0, #4
	bne _0805A2B0
	ldr r2, [r4]
	ldr r1, [r2, #0x54]
	movs r0, #0xa0
	lsls r0, r0, #7
	cmp r1, r0
	ble _0805A2B0
	adds r0, r1, #0
	subs r0, #0xd
	str r0, [r2, #0x54]
_0805A2B0:
	movs r0, #0xa0
	lsls r0, r0, #0xc
	ldr r1, [r4]
	ldr r1, [r1, #0x54]
	bl sub_800392C
	ldr r1, [r4]
	asrs r0, r0, #0x10
	str r0, [r1, #0x60]
	bl sub_80139F0
	ldr r2, [r4]
	adds r1, r2, #0
	adds r1, #0x70
	ldrh r0, [r1]
	subs r0, #0x46
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _0805A2F4
	adds r1, #0x10
	ldrb r0, [r1]
	cmp r0, #0x25
	bls _0805A2F4
	subs r0, #1
	strb r0, [r1]
	ldr r1, [r4]
	adds r1, #0x70
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r2, #0
	ldrh r3, [r1]
	adds r0, r0, r3
	strh r0, [r1]
_0805A2F4:
	ldr r2, _0805A314
	ldr r1, [r2]
	adds r0, r5, r6
	lsls r0, r0, #2
	adds r0, r0, r1
	adds r0, #0x23
	ldrb r0, [r0]
	adds r3, r2, #0
	cmp r0, #4
	beq _0805A31C
	cmp r0, #6
	beq _0805A340
	.2byte 0xEE00, 0xEE00
	b _0805A37E
	.align 2, 0
_0805A314: .4byte 0x0203F948
_0805A318: .4byte 0x0203F944
_0805A31C:
	cmp r7, #0
	beq _0805A334
	ldr r0, _0805A32C
	ldr r0, [r0]
	adds r0, #0x72
	ldr r1, _0805A330
	b _0805A37C
	.align 2, 0
_0805A32C: .4byte 0x0203F944
_0805A330: .4byte 0x0000FD44
_0805A334:
	ldr r0, _0805A33C
	ldr r0, [r0]
	b _0805A376
	.align 2, 0
_0805A33C: .4byte 0x0203F944
_0805A340:
	ldr r2, _0805A36C
	ldr r1, [r2]
	adds r0, r1, #0
	adds r0, #0x7f
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _0805A356
	ldr r0, [r1, #0x54]
	str r0, [r1, #0x58]
_0805A356:
	ldr r0, [r2]
	adds r0, #0x7f
	movs r1, #0x88
	strb r1, [r0]
	cmp r7, #0
	beq _0805A374
	ldr r0, [r2]
	adds r0, #0x72
	ldr r1, _0805A370
	b _0805A37C
	.align 2, 0
_0805A36C: .4byte 0x0203F944
_0805A370: .4byte 0x0000FD44
_0805A374:
	ldr r0, [r2]
_0805A376:
	adds r0, #0x72
	movs r1, #0xaf
	lsls r1, r1, #2
_0805A37C:
	strh r1, [r0]
_0805A37E:
	ldr r1, [r3]
	adds r0, r5, r6
	lsls r0, r0, #2
	adds r1, r0, r1
	adds r1, #0x22
	movs r2, #1
	strb r2, [r1]
	ldr r1, [r3]
	adds r0, r0, r1
	adds r0, #0x21
	strb r2, [r0]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

    .thumb
sub_805A39C: @ 0x0805A39C
	push {r4, lr}
	cmp r0, #0
	beq _0805A3B4
	ldr r2, _0805A3B0
	ldr r1, [r2]
	adds r1, #0x76
	ldrh r0, [r1]
	adds r0, #5
	b _0805A3BE
	.align 2, 0
_0805A3B0: .4byte 0x0203F944
_0805A3B4:
	ldr r2, _0805A3D8
	ldr r1, [r2]
	adds r1, #0x76
	ldrh r0, [r1]
	subs r0, #2
_0805A3BE:
	strh r0, [r1]
	adds r4, r2, #0
	ldr r0, [r4]
	adds r1, r0, #0
	adds r1, #0x76
	movs r2, #0
	ldrsh r0, [r1, r2]
	cmp r0, #0
	bge _0805A3DC
	lsls r0, r0, #8
	movs r1, #0xa0
	lsls r1, r1, #3
	b _0805A3E6
	.align 2, 0
_0805A3D8: .4byte 0x0203F944
_0805A3DC:
	movs r2, #0
	ldrsh r0, [r1, r2]
	lsls r0, r0, #8
	movs r1, #0x80
	lsls r1, r1, #2
_0805A3E6:
	bl sub_8003934
	ldr r1, [r4]
	adds r1, #0x78
	strh r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	.thumb
sub_805A3F8: @ 0x0805A3F8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r6, #0
	ldr r3, _0805A4B8
	ldr r0, [r3]
	ldr r0, [r0, #0x1c]
	ldr r4, _0805A4BC
	ldr r1, _0805A4C0
	mov r8, r1
	cmp r0, r4
	bgt _0805A440
	adds r7, r3, #0
	mov r5, r8
_0805A418:
	ldr r3, [r7]
	lsls r0, r6, #3
	adds r0, r0, r6
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r2, [r5]
	ldr r1, [r0, #0x1c]
	ldr r2, [r2, #0x54]
	subs r1, r1, r2
	str r1, [r0, #0x1c]
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	lsls r0, r6, #3
	adds r0, r0, r6
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0, #0x1c]
	cmp r0, r4
	ble _0805A418
_0805A440:
	ldr r0, _0805A4B8
	ldr r1, [r0]
	lsls r0, r6, #3
	adds r0, r0, r6
	lsls r0, r0, #2
	adds r0, r0, r1
	mov r3, r8
	ldr r2, [r3]
	ldr r1, [r0, #0x1c]
	ldr r2, [r2, #0x54]
	subs r1, r1, r2
	str r1, [r0, #0x1c]
	movs r6, #0
_0805A45A:
	ldr r3, _0805A4B8
	ldr r1, [r3]
	lsls r2, r6, #3
	adds r0, r2, r6
	lsls r4, r0, #2
	adds r5, r4, r1
	ldr r0, [r5, #0x1c]
	subs r0, #1
	ldr r1, _0805A4C4
	adds r7, r3, #0
	mov sb, r2
	cmp r0, r1
	bls _0805A476
	b _0805A6BA
_0805A476:
	adds r0, r5, #0
	adds r0, #0x20
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #8
	movs r1, #0x94
	lsls r1, r1, #2
	bl CallARM_FX_Mul8
	ldr r2, [r7]
	adds r2, r4, r2
	asrs r0, r0, #8
	movs r1, #0x5d
	subs r1, r1, r0
	strh r1, [r2, #6]
	movs r5, #0x1e
	ldrsh r0, [r2, r5]
	strb r0, [r2, #8]
	ldr r0, [r7]
	adds r1, r4, r0
	ldrb r7, [r1, #8]
	mov r8, r7
	cmp r7, #0xa9
	bhi _0805A4CC
	ldr r0, _0805A4C8
	add r0, r8
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r2, [r1, #6]
	adds r0, r0, r2
	b _0805A4DA
	.align 2, 0
_0805A4B8: .4byte 0x0203F948
_0805A4BC: .4byte 0x01DFFFFF
_0805A4C0: .4byte 0x0203F944
_0805A4C4: .4byte 0x00A9FFFE
_0805A4C8: .4byte 0x080B1D64
_0805A4CC:
	ldr r0, _0805A56C
	adds r0, #0xa9
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r3, [r1, #6]
	adds r0, r0, r3
_0805A4DA:
	strh r0, [r1, #6]
	ldr r4, _0805A570
	mov sl, r4
	ldr r1, [r4]
	mov r5, sb
	adds r0, r5, r6
	lsls r7, r0, #2
	adds r2, r7, r1
	ldrh r1, [r2, #6]
	movs r0, #0xf0
	subs r0, r0, r1
	strh r0, [r2, #6]
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r0, _0805A574
	ldr r3, [r0]
	ldrb r1, [r3, #8]
	adds r0, r1, #0
	adds r0, #0x14
	cmp r8, r0
	blt _0805A506
	b _0805A69C
_0805A506:
	subs r0, #0x20
	cmp r8, r0
	bgt _0805A50E
	b _0805A69C
_0805A50E:
	adds r0, r2, #0
	adds r0, #0x22
	ldrb r0, [r0]
	cmp r0, #0
	beq _0805A51A
	b _0805A69C
_0805A51A:
	adds r0, r2, #0
	adds r0, #0x23
	ldrb r1, [r0]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #0
	bne _0805A52A
	b _0805A69C
_0805A52A:
	ldrb r5, [r3, #6]
	adds r0, r5, #0
	adds r0, #0xa
	cmp r4, r0
	bge _0805A54C
	subs r0, #0x14
	cmp r4, r0
	ble _0805A54C
	adds r0, r2, #0
	bl sub_80037A0
	mov r1, sl
	ldr r0, [r1]
	adds r0, r7, r0
	adds r0, #0x21
	movs r1, #1
	strb r1, [r0]
_0805A54C:
	ldr r0, _0805A570
	ldr r1, [r0]
	mov r2, sb
	adds r0, r2, r6
	lsls r0, r0, #2
	adds r0, r0, r1
	adds r0, #0x23
	ldrb r0, [r0]
	cmp r0, #9
	bls _0805A562
	b _0805A698
_0805A562:
	lsls r0, r0, #2
	ldr r1, _0805A578
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0805A56C: .4byte 0x080B1D64
_0805A570: .4byte 0x0203F948
_0805A574: .4byte 0x0203F920
_0805A578: .4byte 0x0805A57C
_0805A57C: @ jump table
	.4byte _0805A69C @ case 0
	.4byte _0805A698 @ case 1
	.4byte _0805A698 @ case 2
	.4byte _0805A5A4 @ case 3
	.4byte _0805A5C4 @ case 4
	.4byte _0805A5EA @ case 5
	.4byte _0805A618 @ case 6
	.4byte _0805A644 @ case 7
	.4byte _0805A66C @ case 8
	.4byte _0805A680 @ case 9
_0805A5A4:
	adds r0, r5, #0
	adds r0, #0xe
	cmp r4, r0
	bge _0805A69C
	subs r0, #0x1c
	cmp r4, r0
	ble _0805A69C
	movs r1, #0
	ldr r0, _0805A5C0
	ldrb r0, [r0]
	cmp r0, #0
	bne _0805A65E
	b _0805A65C
	.align 2, 0
_0805A5C0: .4byte 0x0203F93F
_0805A5C4:
	adds r0, r5, #0
	adds r0, #0x14
	cmp r4, r0
	bge _0805A69C
	subs r0, #0x28
	cmp r4, r0
	ble _0805A69C
	cmp r4, r5
	bls _0805A5E0
	adds r0, r6, #0
	movs r1, #0
	bl sub_805A1EC
	b _0805A69C
_0805A5E0:
	adds r0, r6, #0
	movs r1, #1
	bl sub_805A1EC
	b _0805A69C
_0805A5EA:
	adds r0, r5, #0
	adds r0, #0xe
	cmp r4, r0
	bge _0805A69C
	subs r0, #0x1c
	cmp r4, r0
	ble _0805A69C
	movs r1, #0
	ldr r0, _0805A614
	ldrb r0, [r0]
	cmp r0, #5
	bne _0805A604
	movs r1, #1
_0805A604:
	adds r0, r6, #0
	bl sub_805A088
	movs r0, #0
	bl sub_805A39C
	b _0805A69C
	.align 2, 0
_0805A614: .4byte 0x0203F93F
_0805A618:
	adds r0, r5, #0
	adds r0, #0x12
	cmp r4, r0
	bge _0805A69C
	subs r0, #0x24
	cmp r4, r0
	ble _0805A69C
	cmp r4, r5
	bls _0805A634
	adds r0, r6, #0
	movs r1, #0
	bl sub_805A1EC
	b _0805A63C
_0805A634:
	adds r0, r6, #0
	movs r1, #1
	bl sub_805A1EC
_0805A63C:
	movs r0, #1
	bl sub_805A39C
	b _0805A69C
_0805A644:
	adds r0, r5, #0
	adds r0, #0xa
	cmp r4, r0
	bge _0805A69C
	subs r0, #0x14
	cmp r4, r0
	ble _0805A69C
	movs r1, #0
	ldr r0, _0805A668
	ldrb r0, [r0]
	cmp r0, #9
	bne _0805A65E
_0805A65C:
	movs r1, #1
_0805A65E:
	adds r0, r6, #0
	bl sub_805A088
	b _0805A69C
	.align 2, 0
_0805A668: .4byte 0x0203F93F
_0805A66C:
	adds r0, r6, #0
	bl sub_805A1B0
	ldr r1, _0805A67C
	movs r0, #2
	strb r0, [r1]
	b _0805A69C
	.align 2, 0
_0805A67C: .4byte 0x0203F93D
_0805A680:
	adds r0, r5, #0
	adds r0, #0xa
	cmp r4, r0
	bge _0805A69C
	subs r0, #0x14
	cmp r4, r0
	ble _0805A69C
	adds r0, r6, #0
	movs r1, #1
	bl sub_805A088
	b _0805A69C
_0805A698:
	.2byte 0xEE00, 0xEE00
_0805A69C:
	ldr r0, _0805A6EC
	ldr r0, [r0]
	ldrb r0, [r0, #8]
	subs r0, #0xc
	ldr r7, _0805A6F0
	cmp r8, r0
	bge _0805A6BA
	ldr r0, [r7]
	mov r3, sb
	adds r1, r3, r6
	lsls r1, r1, #2
	adds r1, r1, r0
	adds r1, #0x22
	movs r0, #1
	strb r0, [r1]
_0805A6BA:
	ldr r1, [r7]
	mov r4, sb
	adds r0, r4, r6
	lsls r0, r0, #2
	adds r2, r0, r1
	ldr r5, [r2, #0x1c]
	ldr r7, _0805A6F4
	adds r1, r5, r7
	ldr r0, _0805A6F8
	cmp r1, r0
	bhi _0805A73E
	ldr r1, _0805A6FC
	adds r0, r5, r1
	asrs r0, r0, #0x11
	strh r0, [r2, #6]
	adds r1, r2, #0
	adds r1, #0x20
	ldrb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _0805A700
	asrs r1, r0, #0x19
	movs r0, #0x57
	subs r0, r0, r1
	b _0805A70A
	.align 2, 0
_0805A6EC: .4byte 0x0203F920
_0805A6F0: .4byte 0x0203F948
_0805A6F4: .4byte 0xFEBFFFFF
_0805A6F8: .4byte 0x009FFFFE
_0805A6FC: .4byte 0xFEC00000
_0805A700:
	movs r0, #0
	ldrsb r0, [r1, r0]
	rsbs r0, r0, #0
	asrs r0, r0, #1
	adds r0, #0x57
_0805A70A:
	strb r0, [r2, #8]
	ldr r4, _0805A920
	ldr r0, [r4]
	mov r2, sb
	adds r1, r2, r6
	lsls r2, r1, #2
	adds r3, r2, r0
	ldrh r0, [r3, #6]
	cmp r0, #0x2c
	bhi _0805A72C
	ldr r0, _0805A924
	ldrh r1, [r3, #6]
	adds r1, r1, r0
	ldrb r0, [r1]
	ldrb r5, [r3, #8]
	adds r0, r0, r5
	strb r0, [r3, #8]
_0805A72C:
	ldr r0, [r4]
	adds r1, r2, r0
	ldrh r0, [r1, #6]
	cmp r0, #0x38
	bhi _0805A73E
	adds r0, r1, #0
	movs r1, #0
	bl SetSpritePriority
_0805A73E:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #0x1b
	bhi _0805A74A
	b _0805A45A
_0805A74A:
	ldr r4, _0805A928
	ldr r0, [r4]
	adds r1, r0, #0
	adds r1, #0x7f
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	cmp r1, #0
	bne _0805A75E
	b _0805A940
_0805A75E:
	cmp r1, #0
	ble _0805A81A
	cmp r1, #0x77
	ble _0805A76E
	ldr r0, [r0, #0x60]
	asrs r0, r0, #1
	bl sub_80139F0
_0805A76E:
	ldr r1, [r4]
	adds r0, r1, #0
	adds r0, #0x7f
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x1e
	bne _0805A784
	ldr r0, [r1, #0x60]
	bl sub_80139F0
_0805A784:
	ldr r3, [r4]
	adds r0, r3, #0
	adds r0, #0x7f
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x34
	ble _0805A7AA
	ldr r0, _0805A92C
	ldr r2, [r0]
	ldrb r1, [r2, #8]
	adds r0, r3, #0
	adds r0, #0x80
	ldrb r0, [r0]
	subs r0, r1, r0
	cmp r0, #8
	bgt _0805A7AA
	adds r0, r1, #1
	strb r0, [r2, #8]
_0805A7AA:
	ldr r0, _0805A928
	ldr r0, [r0]
	adds r0, #0x7f
	ldrb r1, [r0]
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x20
	bgt _0805A7CE
	movs r0, #3
	ands r0, r1
	cmp r0, #3
	bne _0805A7CE
	ldr r0, _0805A92C
	ldr r1, [r0]
	ldrb r0, [r1, #8]
	subs r0, #1
	strb r0, [r1, #8]
_0805A7CE:
	ldr r4, _0805A928
	ldr r0, [r4]
	adds r0, #0x7f
	ldrb r1, [r0]
	subs r1, #1
	strb r1, [r0]
	ldr r0, _0805A930
	ldrb r0, [r0]
	cmp r0, #5
	beq _0805A7EE
	cmp r0, #5
	ble _0805A81A
	cmp r0, #9
	beq _0805A81A
	cmp r0, #0xa
	bne _0805A81A
_0805A7EE:
	ldr r0, [r4]
	adds r0, #0x7f
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #0x10
	ldr r1, _0805A934
	bl CallARM_FX_Mul16
	ldr r2, [r4]
	ldr r1, [r2, #0x58]
	adds r1, r1, r0
	str r1, [r2, #0x54]
	movs r0, #0xa0
	lsls r0, r0, #0xc
	bl sub_800392C
	ldr r1, [r4]
	asrs r0, r0, #0x10
	str r0, [r1, #0x60]
	bl sub_80139F0
_0805A81A:
	ldr r4, _0805A928
	ldr r2, [r4]
	adds r0, r2, #0
	adds r0, #0x7f
	movs r1, #0
	ldrsb r1, [r0, r1]
	cmp r1, #0
	bge _0805A8F8
	movs r0, #0x78
	rsbs r0, r0, #0
	cmp r1, r0
	bgt _0805A83A
	ldr r0, [r2, #0x60]
	lsls r0, r0, #1
	bl sub_80139F0
_0805A83A:
	ldr r2, [r4]
	adds r0, r2, #0
	adds r0, #0x7f
	movs r1, #0
	ldrsb r1, [r0, r1]
	movs r0, #0x1e
	rsbs r0, r0, #0
	cmp r1, r0
	bne _0805A852
	ldr r0, [r2, #0x60]
	bl sub_80139F0
_0805A852:
	ldr r4, [r4]
	adds r0, r4, #0
	adds r0, #0x7f
	movs r1, #0
	ldrsb r1, [r0, r1]
	movs r0, #0x34
	rsbs r0, r0, #0
	cmp r1, r0
	bge _0805A87E
	ldr r0, _0805A92C
	ldr r3, [r0]
	ldrb r2, [r3, #8]
	adds r0, r4, #0
	adds r0, #0x80
	ldrb r0, [r0]
	subs r0, r2, r0
	movs r1, #9
	rsbs r1, r1, #0
	cmp r0, r1
	ble _0805A87E
	subs r0, r2, #1
	strb r0, [r3, #8]
_0805A87E:
	ldr r2, _0805A928
	ldr r0, [r2]
	adds r0, #0x7f
	ldrb r3, [r0]
	movs r1, #0
	ldrsb r1, [r0, r1]
	movs r0, #0x21
	rsbs r0, r0, #0
	mov r8, r2
	cmp r1, r0
	ble _0805A8A6
	movs r0, #3
	ands r0, r3
	cmp r0, #3
	bne _0805A8A6
	ldr r0, _0805A92C
	ldr r1, [r0]
	ldrb r0, [r1, #8]
	adds r0, #1
	strb r0, [r1, #8]
_0805A8A6:
	mov r7, r8
	ldr r0, [r7]
	adds r0, #0x7f
	ldrb r1, [r0]
	adds r1, #1
	strb r1, [r0]
	ldr r0, _0805A930
	ldrb r0, [r0]
	cmp r0, #5
	beq _0805A8C6
	cmp r0, #5
	ble _0805A8F8
	cmp r0, #9
	beq _0805A8F8
	cmp r0, #0xa
	bne _0805A8F8
_0805A8C6:
	mov r1, r8
	ldr r0, [r1]
	adds r0, #0x7f
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #0x10
	ldr r1, _0805A938
	bl CallARM_FX_Mul16
	mov r3, r8
	ldr r2, [r3]
	ldr r1, [r2, #0x58]
	adds r1, r1, r0
	str r1, [r2, #0x54]
	movs r0, #0xa0
	lsls r0, r0, #0xc
	bl sub_800392C
	mov r4, r8
	ldr r1, [r4]
	asrs r0, r0, #0x10
	str r0, [r1, #0x60]
	bl sub_80139F0
_0805A8F8:
	ldr r0, _0805A930
	ldrb r0, [r0]
	cmp r0, #0xa
	bne _0805A964
	ldr r4, _0805A93C
	ldr r0, _0805A928
	ldr r1, [r0]
	ldr r0, [r1, #0x54]
	ldr r1, [r1, #0x58]
	subs r0, r0, r1
	movs r1, #0x80
	lsls r1, r1, #8
	bl CallARM_FX_Mul16
	movs r5, #0x80
	lsls r5, r5, #9
	adds r0, r0, r5
	str r0, [r4]
	b _0805A964
	.align 2, 0
_0805A920: .4byte 0x0203F948
_0805A924: .4byte 0x080B1E0E
_0805A928: .4byte 0x0203F944
_0805A92C: .4byte 0x0203F920
_0805A930: .4byte 0x0203F93F
_0805A934: .4byte 0x0000028A
_0805A938: .4byte 0x000002EE
_0805A93C: .4byte 0x020021F4
_0805A940:
	ldr r3, _0805AA0C
	ldr r2, [r3]
	adds r0, #0x80
	ldrb r1, [r2, #8]
	ldrb r0, [r0]
	cmp r1, r0
	bls _0805A952
	subs r0, r1, #1
	strb r0, [r2, #8]
_0805A952:
	ldr r2, [r3]
	ldr r0, [r4]
	adds r0, #0x80
	ldrb r1, [r2, #8]
	ldrb r0, [r0]
	cmp r1, r0
	bhs _0805A964
	adds r0, r1, #1
	strb r0, [r2, #8]
_0805A964:
	ldr r4, _0805AA10
	ldr r0, [r4]
	ldr r0, [r0, #0x1c]
	cmp r0, #0
	ble _0805A970
	b _0805AEEC
_0805A970:
	movs r0, #0x24
	movs r1, #4
	movs r2, #3
	bl Alloc
	mov r8, r0
	mov r1, r8
	ldr r0, [r4]
	ldm r0!, {r2, r3, r7}
	stm r1!, {r2, r3, r7}
	ldm r0!, {r2, r5, r7}
	stm r1!, {r2, r5, r7}
	ldm r0!, {r3, r5, r7}
	stm r1!, {r3, r5, r7}
	movs r6, #0
	adds r5, r4, #0
_0805A990:
	ldr r1, [r5]
	lsls r2, r6, #3
	adds r2, r2, r6
	lsls r2, r2, #2
	adds r1, r2, r1
	adds r0, r1, #0
	adds r0, #0x24
	ldm r0!, {r3, r4, r7}
	stm r1!, {r3, r4, r7}
	ldm r0!, {r3, r4, r7}
	stm r1!, {r3, r4, r7}
	ldm r0!, {r3, r4, r7}
	stm r1!, {r3, r4, r7}
	ldr r0, [r5]
	adds r0, r0, r2
	adds r4, r6, #1
	movs r1, #1
	adds r2, r4, #0
	bl sub_8003820
	lsls r4, r4, #0x18
	lsrs r6, r4, #0x18
	cmp r6, #0x1a
	bls _0805A990
	ldr r6, _0805AA10
	ldr r1, [r6]
	movs r5, #0xf3
	lsls r5, r5, #2
	adds r1, r1, r5
	mov r0, r8
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r3, r7}
	stm r1!, {r2, r3, r7}
	ldm r0!, {r2, r4, r7}
	stm r1!, {r2, r4, r7}
	mov r0, r8
	movs r1, #3
	bl Free
	movs r2, #0xc0
	lsls r2, r2, #2
	movs r0, #0x1c
	movs r1, #0xc0
	bl sub_8025718
	ldr r0, [r6]
	adds r0, r0, r5
	movs r1, #1
	movs r2, #0x1c
	bl sub_8003820
	ldr r0, _0805AA14
	ldrb r0, [r0]
	cmp r0, #5
	beq _0805AA2C
	cmp r0, #5
	bgt _0805AA18
	cmp r0, #0
	beq _0805AA22
	b _0805AB5C
	.align 2, 0
_0805AA0C: .4byte 0x0203F920
_0805AA10: .4byte 0x0203F948
_0805AA14: .4byte 0x0203F93F
_0805AA18:
	cmp r0, #9
	beq _0805AA58
	cmp r0, #0xa
	beq _0805AAAC
	b _0805AB5C
_0805AA22:
	ldr r1, [r6]
	ldr r3, _0805AA28
	b _0805AA5C
	.align 2, 0
_0805AA28: .4byte 0x087DFB9C
_0805AA2C:
	ldr r1, [r6]
	ldr r3, _0805AA50
	ldr r4, _0805AA54
	ldr r0, [r4]
	adds r0, #0x7e
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r3
	ldrb r0, [r0]
	movs r7, #0xfb
	lsls r7, r7, #2
	adds r1, r1, r7
	strb r0, [r1]
	ldr r2, [r6]
	movs r0, #0xf3
	lsls r0, r0, #2
	adds r5, r2, r0
	b _0805AA76
	.align 2, 0
_0805AA50: .4byte 0x087DFC80
_0805AA54: .4byte 0x0203F944
_0805AA58:
	ldr r1, [r6]
	ldr r3, _0805AAA0
_0805AA5C:
	ldr r4, _0805AAA4
	ldr r0, [r4]
	adds r0, #0x7e
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r3
	ldrb r0, [r0]
	movs r7, #0xfb
	lsls r7, r7, #2
	adds r1, r1, r7
	strb r0, [r1]
	ldr r2, [r6]
	adds r5, r2, r5
_0805AA76:
	ldr r1, [r4]
	adds r1, #0x7e
	ldrb r0, [r1]
	lsls r0, r0, #2
	adds r0, r0, r3
	ldrh r0, [r0, #2]
	lsls r0, r0, #0x10
	movs r4, #0xf0
	lsls r4, r4, #0x11
	adds r0, r0, r4
	str r0, [r5, #0x1c]
	ldrb r0, [r1]
	lsls r0, r0, #2
	adds r0, r0, r3
	ldrb r0, [r0, #1]
	ldr r5, _0805AAA8
	adds r2, r2, r5
	strb r0, [r2]
	adds r7, r6, #0
	b _0805AB62
	.align 2, 0
_0805AAA0: .4byte 0x087DFB58
_0805AAA4: .4byte 0x0203F944
_0805AAA8: .4byte 0x000003EF
_0805AAAC:
	ldr r0, _0805AB04
	ldr r1, [r0]
	adds r1, #0x7e
	ldrb r1, [r1]
	adds r7, r6, #0
	mov r8, r0
	cmp r1, #0x73
	bls _0805AAD2
	mov r2, r8
_0805AABE:
	ldr r1, [r2]
	adds r1, #0x7e
	ldrb r0, [r1]
	subs r0, #0x74
	strb r0, [r1]
	ldr r0, [r2]
	adds r0, #0x7e
	ldrb r0, [r0]
	cmp r0, #0x73
	bhi _0805AABE
_0805AAD2:
	mov r0, r8
	ldr r2, [r0]
	adds r0, r2, #0
	adds r0, #0x84
	ldrb r0, [r0]
	cmp r0, #0
	beq _0805AB0C
	ldr r0, [r7]
	movs r1, #0xfb
	lsls r1, r1, #2
	adds r0, r0, r1
	movs r1, #0
	strb r1, [r0]
	ldr r1, [r7]
	movs r3, #0xf3
	lsls r3, r3, #2
	adds r2, r1, r3
	movs r0, #0x91
	lsls r0, r0, #0x12
	str r0, [r2, #0x1c]
	ldr r4, _0805AB08
	adds r1, r1, r4
	movs r0, #8
	strb r0, [r1]
	b _0805AB62
	.align 2, 0
_0805AB04: .4byte 0x0203F944
_0805AB08: .4byte 0x000003EF
_0805AB0C:
	ldr r1, [r7]
	ldr r3, _0805AB54
	adds r0, r2, #0
	adds r0, #0x7e
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r3
	ldrb r0, [r0]
	movs r5, #0xfb
	lsls r5, r5, #2
	adds r1, r1, r5
	strb r0, [r1]
	ldr r2, [r7]
	movs r0, #0xf3
	lsls r0, r0, #2
	adds r4, r2, r0
	mov r5, r8
	ldr r1, [r5]
	adds r1, #0x7e
	ldrb r0, [r1]
	lsls r0, r0, #2
	adds r0, r0, r3
	ldrh r0, [r0, #2]
	lsls r0, r0, #0x10
	movs r5, #0xf0
	lsls r5, r5, #0x11
	adds r0, r0, r5
	str r0, [r4, #0x1c]
	ldrb r0, [r1]
	lsls r0, r0, #2
	adds r0, r0, r3
	ldrb r0, [r0, #1]
	ldr r1, _0805AB58
	adds r2, r2, r1
	strb r0, [r2]
	b _0805AB62
	.align 2, 0
_0805AB54: .4byte 0x087DFD84
_0805AB58: .4byte 0x000003EF
_0805AB5C:
	.2byte 0xEE00, 0xEE00
	ldr r7, _0805AB8C
_0805AB62:
	ldr r0, [r7]
	ldr r2, _0805AB90
	adds r0, r0, r2
	movs r1, #0
	strb r1, [r0]
	ldr r0, [r7]
	ldr r3, _0805AB94
	adds r0, r0, r3
	strb r1, [r0]
	ldr r0, [r7]
	ldr r4, _0805AB98
	adds r0, r0, r4
	ldrb r0, [r0]
	cmp r0, #9
	bls _0805AB82
	b _0805AE72
_0805AB82:
	lsls r0, r0, #2
	ldr r1, _0805AB9C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0805AB8C: .4byte 0x0203F948
_0805AB90: .4byte 0x000003ED
_0805AB94: .4byte 0x000003EE
_0805AB98: .4byte 0x000003EF
_0805AB9C: .4byte 0x0805ABA0
_0805ABA0: @ jump table
	.4byte _0805ABC8 @ case 0
	.4byte _0805AE72 @ case 1
	.4byte _0805AE72 @ case 2
	.4byte _0805ABE8 @ case 3
	.4byte _0805AC48 @ case 4
	.4byte _0805ACA8 @ case 5
	.4byte _0805AD0C @ case 6
	.4byte _0805AD70 @ case 7
	.4byte _0805ADE0 @ case 8
	.4byte _0805AE08 @ case 9
_0805ABC8:
	ldr r4, _0805ABE0
	ldr r0, [r4]
	movs r5, #0xf3
	lsls r5, r5, #2
	adds r0, r0, r5
	ldr r1, _0805ABE4
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	b _0805AE38
	.align 2, 0
_0805ABE0: .4byte 0x0203F948
_0805ABE4: .4byte 0x00000451
_0805ABE8:
	ldr r4, _0805AC1C
	ldr r0, [r4]
	movs r7, #0xf3
	lsls r7, r7, #2
	adds r1, r0, r7
	ldr r2, _0805AC20
	adds r0, r0, r2
	ldrb r0, [r0]
	cmp r0, #0
	beq _0805AC28
	adds r0, r1, #0
	ldr r1, _0805AC24
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r1, [r4]
	adds r3, r7, #0
	adds r0, r1, r3
	movs r4, #0xfc
	lsls r4, r4, #2
	adds r1, r1, r4
	ldrb r1, [r1, #2]
	bl sub_80037F4
	b _0805AC34
	.align 2, 0
_0805AC1C: .4byte 0x0203F948
_0805AC20: .4byte 0x000003ED
_0805AC24: .4byte 0x00000451
_0805AC28:
	adds r0, r1, #0
	ldr r1, _0805AC40
	movs r2, #0
	movs r3, #0
	bl sub_8003368
_0805AC34:
	ldr r0, _0805AC44
	ldr r0, [r0]
	movs r5, #0xf3
	lsls r5, r5, #2
	b _0805AE3A
	.align 2, 0
_0805AC40: .4byte 0x000004B1
_0805AC44: .4byte 0x0203F948
_0805AC48:
	ldr r4, _0805AC88
	ldr r0, [r4]
	movs r7, #0xf3
	lsls r7, r7, #2
	adds r0, r0, r7
	movs r1, #0x96
	lsls r1, r1, #3
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r0, [r4]
	adds r2, r7, #0
	adds r1, r0, r2
	ldr r3, _0805AC8C
	adds r0, r0, r3
	ldrb r0, [r0]
	cmp r0, #0
	beq _0805AC90
	adds r0, r1, #0
	bl sub_80037A0
	ldr r1, [r4]
	adds r4, r7, #0
	adds r0, r1, r4
	movs r5, #0xfc
	lsls r5, r5, #2
	adds r1, r1, r5
	ldrb r1, [r1, #2]
	bl sub_80037F4
	b _0805AC98
	.align 2, 0
_0805AC88: .4byte 0x0203F948
_0805AC8C: .4byte 0x000003ED
_0805AC90:
	adds r0, r1, #0
	movs r1, #0
	bl sub_800378C
_0805AC98:
	ldr r0, _0805ACA4
	ldr r0, [r0]
	movs r7, #0xf3
	lsls r7, r7, #2
	adds r0, r0, r7
	b _0805AE3C
	.align 2, 0
_0805ACA4: .4byte 0x0203F948
_0805ACA8:
	ldr r4, _0805ACEC
	ldr r0, [r4]
	movs r1, #0xf3
	lsls r1, r1, #2
	adds r0, r0, r1
	adds r1, #0xfb
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r0, [r4]
	movs r2, #0xf3
	lsls r2, r2, #2
	adds r1, r0, r2
	ldr r3, _0805ACF0
	adds r0, r0, r3
	ldrb r0, [r0]
	cmp r0, #0
	beq _0805ACF4
	adds r0, r1, #0
	bl sub_80037A0
	ldr r1, [r4]
	movs r4, #0xf3
	lsls r4, r4, #2
	adds r0, r1, r4
	movs r5, #0xfc
	lsls r5, r5, #2
	adds r1, r1, r5
	ldrb r1, [r1, #2]
	bl sub_80037F4
	b _0805ACFC
	.align 2, 0
_0805ACEC: .4byte 0x0203F948
_0805ACF0: .4byte 0x000003ED
_0805ACF4:
	adds r0, r1, #0
	movs r1, #0
	bl sub_800378C
_0805ACFC:
	ldr r0, _0805AD08
	ldr r0, [r0]
	movs r7, #0xf3
	lsls r7, r7, #2
	adds r0, r0, r7
	b _0805AE3C
	.align 2, 0
_0805AD08: .4byte 0x0203F948
_0805AD0C:
	ldr r4, _0805AD50
	ldr r0, [r4]
	movs r1, #0xf3
	lsls r1, r1, #2
	adds r0, r0, r1
	adds r1, #0xfc
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r0, [r4]
	movs r2, #0xf3
	lsls r2, r2, #2
	adds r1, r0, r2
	ldr r3, _0805AD54
	adds r0, r0, r3
	ldrb r0, [r0]
	cmp r0, #0
	beq _0805AD58
	adds r0, r1, #0
	bl sub_80037A0
	ldr r1, [r4]
	movs r4, #0xf3
	lsls r4, r4, #2
	adds r0, r1, r4
	movs r5, #0xfc
	lsls r5, r5, #2
	adds r1, r1, r5
	ldrb r1, [r1, #2]
	bl sub_80037F4
	b _0805AD60
	.align 2, 0
_0805AD50: .4byte 0x0203F948
_0805AD54: .4byte 0x000003ED
_0805AD58:
	adds r0, r1, #0
	movs r1, #0
	bl sub_800378C
_0805AD60:
	ldr r0, _0805AD6C
	ldr r0, [r0]
	movs r7, #0xf3
	lsls r7, r7, #2
	adds r0, r0, r7
	b _0805AE3C
	.align 2, 0
_0805AD6C: .4byte 0x0203F948
_0805AD70:
	ldr r4, _0805ADA8
	ldr r0, [r4]
	movs r2, #0xf3
	lsls r2, r2, #2
	adds r1, r0, r2
	ldr r3, _0805ADAC
	adds r0, r0, r3
	ldrb r0, [r0]
	cmp r0, #0
	beq _0805ADB4
	adds r0, r1, #0
	ldr r1, _0805ADB0
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r1, [r4]
	movs r4, #0xf3
	lsls r4, r4, #2
	adds r0, r1, r4
	movs r5, #0xfc
	lsls r5, r5, #2
	adds r1, r1, r5
	ldrb r1, [r1, #2]
	bl sub_80037F4
	b _0805ADD0
	.align 2, 0
_0805ADA8: .4byte 0x0203F948
_0805ADAC: .4byte 0x000003ED
_0805ADB0: .4byte 0x00000451
_0805ADB4:
	adds r0, r1, #0
	movs r1, #0x8f
	lsls r1, r1, #2
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r0, [r4]
	movs r7, #0xf3
	lsls r7, r7, #2
	adds r0, r0, r7
	movs r1, #0
	bl sub_800378C
_0805ADD0:
	ldr r0, _0805ADDC
	ldr r0, [r0]
	movs r1, #0xf3
	lsls r1, r1, #2
	adds r0, r0, r1
	b _0805AE3C
	.align 2, 0
_0805ADDC: .4byte 0x0203F948
_0805ADE0:
	ldr r4, _0805AE00
	ldr r0, [r4]
	movs r2, #0xf3
	lsls r2, r2, #2
	adds r0, r0, r2
	ldr r1, _0805AE04
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r0, [r4]
	movs r3, #0xf3
	lsls r3, r3, #2
	adds r0, r0, r3
	b _0805AE3C
	.align 2, 0
_0805AE00: .4byte 0x0203F948
_0805AE04: .4byte 0x00000451
_0805AE08:
	ldr r4, _0805AE44
	ldr r0, [r4]
	movs r5, #0xf3
	lsls r5, r5, #2
	adds r1, r0, r5
	ldr r7, _0805AE48
	adds r0, r0, r7
	ldrb r0, [r0]
	cmp r0, #0
	beq _0805AE50
	adds r0, r1, #0
	ldr r1, _0805AE4C
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r1, [r4]
	adds r0, r1, r5
	movs r2, #0xfc
	lsls r2, r2, #2
	adds r1, r1, r2
	ldrb r1, [r1, #2]
	bl sub_80037F4
_0805AE38:
	ldr r0, [r4]
_0805AE3A:
	adds r0, r0, r5
_0805AE3C:
	movs r1, #0
	strb r1, [r0, #0x12]
	b _0805AE72
	.align 2, 0
_0805AE44: .4byte 0x0203F948
_0805AE48: .4byte 0x000003ED
_0805AE4C: .4byte 0x00000451
_0805AE50:
	adds r0, r1, #0
	ldr r1, _0805AEA0
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r0, [r4]
	movs r3, #0xf3
	lsls r3, r3, #2
	adds r0, r0, r3
	movs r1, #1
	strb r1, [r0, #0x12]
	ldr r0, [r4]
	adds r0, r0, r3
	movs r1, #5
	bl SetSpritePalette
_0805AE72:
	ldr r0, _0805AEA4
	ldr r0, [r0]
	movs r4, #0xf3
	lsls r4, r4, #2
	adds r0, r0, r4
	movs r1, #1
	bl SetSpritePriority
	ldr r2, _0805AEA8
	ldr r1, [r2]
	adds r1, #0x7e
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldr r0, _0805AEAC
	ldrb r0, [r0]
	cmp r0, #5
	beq _0805AEC6
	cmp r0, #5
	bgt _0805AEB0
	cmp r0, #0
	beq _0805AEBA
	b _0805AEE8
	.align 2, 0
_0805AEA0: .4byte 0x00000221
_0805AEA4: .4byte 0x0203F948
_0805AEA8: .4byte 0x0203F944
_0805AEAC: .4byte 0x0203F93F
_0805AEB0:
	cmp r0, #9
	beq _0805AED2
	cmp r0, #0xa
	beq _0805AEEC
	b _0805AEE8
_0805AEBA:
	ldr r0, [r2]
	adds r0, #0x7e
	ldrb r0, [r0]
	cmp r0, #0x54
	bne _0805AEEC
	b _0805AEDC
_0805AEC6:
	ldr r0, [r2]
	adds r0, #0x7e
	ldrb r0, [r0]
	cmp r0, #0x5c
	bne _0805AEEC
	b _0805AEDC
_0805AED2:
	ldr r0, [r2]
	adds r0, #0x7e
	ldrb r0, [r0]
	cmp r0, #0x2c
	bne _0805AEEC
_0805AEDC:
	ldr r1, _0805AEE4
	movs r0, #2
	strb r0, [r1]
	b _0805AEEC
	.align 2, 0
_0805AEE4: .4byte 0x0203F93D
_0805AEE8:
	.2byte 0xEE00, 0xEE00
_0805AEEC:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

    .thumb
sub_805AEFC: @ 0x0805AEFC
	push {r4, r5, r6, lr}
	cmp r0, #0
	beq _0805AF68
	ldr r4, _0805AF64
	ldr r0, [r4]
	adds r0, #0x76
	movs r1, #0
	ldrsh r0, [r0, r1]
	lsls r0, r0, #8
	movs r5, #0x80
	lsls r5, r5, #1
	adds r1, r5, #0
	bl CallARM_FX_Mul8
	asrs r0, r0, #8
	movs r1, #0x41
	subs r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	asrs r1, r1, #0x10
	cmp r1, #3
	bgt _0805AF2A
	movs r6, #4
_0805AF2A:
	ldr r0, [r4]
	adds r0, #0x76
	movs r1, #0
	ldrsh r0, [r0, r1]
	lsls r0, r0, #8
	adds r1, r5, #0
	bl CallARM_FX_Mul8
	asrs r0, r0, #8
	adds r0, #0x54
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x91
	ble _0805AF4A
	movs r4, #0x91
_0805AF4A:
	movs r2, #0xa0
	lsls r2, r2, #1
	movs r0, #0x1f
	movs r1, #0
	bl sub_8025718
	movs r2, #0xc0
	lsls r2, r2, #1
	movs r0, #0x1e
	movs r1, #0
	bl sub_8025718
	b _0805AFC6
	.align 2, 0
_0805AF64: .4byte 0x0203F944
_0805AF68:
	ldr r6, _0805B01C
	ldr r0, [r6]
	adds r0, #0x76
	movs r1, #0
	ldrsh r0, [r0, r1]
	lsls r0, r0, #8
	movs r5, #0x80
	lsls r5, r5, #1
	adds r1, r5, #0
	bl CallARM_FX_Mul8
	asrs r0, r0, #8
	adds r0, #0x41
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x91
	ble _0805AF8E
	movs r4, #0x91
_0805AF8E:
	ldr r0, [r6]
	adds r0, #0x76
	movs r1, #0
	ldrsh r0, [r0, r1]
	lsls r0, r0, #8
	adds r1, r5, #0
	bl CallARM_FX_Mul8
	asrs r0, r0, #8
	movs r1, #0x54
	subs r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	asrs r1, r1, #0x10
	cmp r1, #3
	bgt _0805AFB0
	movs r6, #4
_0805AFB0:
	movs r0, #0x1e
	movs r1, #0
	adds r2, r5, #0
	bl sub_8025718
	movs r2, #0xf0
	lsls r2, r2, #1
	movs r0, #0x1f
	movs r1, #0
	bl sub_8025718
_0805AFC6:
	ldr r5, _0805B01C
	ldr r0, [r5]
	adds r2, r0, #0
	adds r2, #0x24
	ldrb r1, [r2]
	lsls r0, r4, #0x10
	asrs r3, r0, #0x10
	cmp r1, r3
	bge _0805AFDC
	adds r0, r1, #1
	strb r0, [r2]
_0805AFDC:
	ldr r0, [r5]
	adds r2, r0, #0
	adds r2, #0x24
	ldrb r1, [r2]
	adds r0, r3, #1
	cmp r1, r0
	blt _0805AFEE
	subs r0, r1, #1
	strb r0, [r2]
_0805AFEE:
	ldr r0, [r5]
	adds r3, r0, #0
	adds r3, #0x40
	ldrb r2, [r3]
	lsls r0, r6, #0x10
	asrs r1, r0, #0x10
	cmp r2, r1
	bge _0805B002
	adds r0, r2, #1
	strb r0, [r3]
_0805B002:
	ldr r0, [r5]
	adds r3, r0, #0
	adds r3, #0x40
	ldrb r2, [r3]
	adds r0, r1, #1
	cmp r2, r0
	blt _0805B014
	subs r0, r2, #1
	strb r0, [r3]
_0805B014:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0805B01C: .4byte 0x0203F944

    .thumb
sub_805B020: @ 0x0805B020
	push {r4, r5, r6, lr}
	ldr r5, _0805B098
	ldr r1, [r5]
	adds r1, #0x7a
	movs r2, #0xaf
	lsls r2, r2, #2
	adds r0, r2, #0
	ldrh r3, [r1]
	adds r0, r0, r3
	strh r0, [r1]
	ldr r1, _0805B09C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x18
	lsls r0, r0, #1
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	movs r1, #0xa0
	lsls r1, r1, #4
	bl CallARM_FX_Mul16
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	ldr r2, [r5]
	adds r0, r2, #0
	adds r0, #0x76
	movs r3, #0
	ldrsh r0, [r0, r3]
	cmp r0, #0
	ble _0805B0C4
	ldrb r1, [r2, #8]
	subs r1, #0x40
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #0x11
	movs r1, #0x80
	lsls r1, r1, #0x11
	adds r0, r0, r1
	lsrs r4, r0, #0x10
	adds r0, r2, #0
	adds r0, #0x78
	movs r2, #0
	ldrsh r0, [r0, r2]
	movs r1, #0x80
	lsls r1, r1, #1
	bl CallARM_FX_Mul8
	asrs r0, r0, #8
	adds r1, r0, #0
	adds r1, #0x40
	ldr r0, _0805B0A0
	ldrb r0, [r0]
	cmp r0, #1
	bne _0805B0A4
	cmp r1, #0x9a
	bls _0805B0A4
	ldr r1, [r5]
	movs r0, #0x9a
	strb r0, [r1, #8]
	b _0805B0AA
	.align 2, 0
_0805B098: .4byte 0x0203F944
_0805B09C: .4byte 0x080B1AE4
_0805B0A0: .4byte 0x0203F93D
_0805B0A4:
	ldr r0, _0805B0BC
	ldr r0, [r0]
	strb r1, [r0, #8]
_0805B0AA:
	ldr r0, _0805B0C0
	ldrb r0, [r0]
	cmp r0, #1
	bne _0805B122
	movs r0, #1
	bl sub_805AEFC
	b _0805B122
	.align 2, 0
_0805B0BC: .4byte 0x0203F944
_0805B0C0: .4byte 0x0203F93D
_0805B0C4:
	ldrb r0, [r2, #8]
	movs r1, #0x40
	subs r1, r1, r0
	lsls r1, r1, #2
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r3, #0
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r0, r2, #0
	adds r0, #0x78
	movs r1, #0
	ldrsh r0, [r0, r1]
	movs r1, #0xc8
	lsls r1, r1, #2
	bl CallARM_FX_Mul8
	asrs r0, r0, #8
	adds r1, r0, #0
	adds r1, #0x40
	ldr r0, _0805B104
	ldrb r0, [r0]
	cmp r0, #1
	bne _0805B108
	cmp r1, #0x27
	bhi _0805B108
	ldr r1, [r5]
	movs r0, #0x28
	strb r0, [r1, #8]
	b _0805B10E
	.align 2, 0
_0805B104: .4byte 0x0203F93D
_0805B108:
	ldr r0, _0805B144
	ldr r0, [r0]
	strb r1, [r0, #8]
_0805B10E:
	cmp r4, #0x8f
	bhi _0805B114
	movs r4, #0x90
_0805B114:
	ldr r0, _0805B148
	ldrb r0, [r0]
	cmp r0, #1
	bne _0805B122
	movs r0, #0
	bl sub_805AEFC
_0805B122:
	lsls r1, r6, #0x18
	lsrs r1, r1, #0x18
	movs r0, #0x1d
	adds r2, r4, #0
	bl sub_8025718
	ldr r0, _0805B144
	ldr r1, [r0]
	ldrb r0, [r1, #8]
	cmp r0, #0x81
	bhi _0805B14C
	adds r0, r1, #0
	movs r1, #0
	bl SetSpritePriority
	b _0805B154
	.align 2, 0
_0805B144: .4byte 0x0203F944
_0805B148: .4byte 0x0203F93D
_0805B14C:
	adds r0, r1, #0
	movs r1, #1
	bl SetSpritePriority
_0805B154:
	ldr r4, _0805B188
	ldr r1, [r4]
	adds r1, #0x7c
	ldrh r0, [r1]
	adds r0, #0xb4
	strh r0, [r1]
	ldr r1, _0805B18C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x18
	lsls r0, r0, #1
	adds r0, r0, r1
	movs r2, #0
	ldrsh r0, [r0, r2]
	movs r1, #0xa0
	lsls r1, r1, #4
	bl CallARM_FX_Mul16
	ldr r1, [r4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r0, #0x25
	strh r0, [r1, #6]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0805B188: .4byte 0x0203F944
_0805B18C: .4byte 0x080B1AE4

	.thumb
sub_805B190: @ 0x0805B190
	push {r4, r5, r6, lr}
	ldr r1, _0805B1A0
	ldrb r0, [r1]
	cmp r0, #7
	bne _0805B1A8
	ldr r0, _0805B1A4
	ldrb r5, [r0]
	b _0805B1AA
	.align 2, 0
_0805B1A0: .4byte 0x0203F93D
_0805B1A4: .4byte 0x0203F93E
_0805B1A8:
	ldrb r5, [r1]
_0805B1AA:
	ldr r0, _0805B230
	ldr r0, [r0]
	bl RenderSprite
	cmp r5, #1
	bne _0805B1D4
	ldr r0, _0805B234
	ldr r0, [r0]
	adds r2, r0, #0
	adds r2, #0x81
	adds r0, #0x72
	ldrb r1, [r0]
	ldrb r2, [r2]
	adds r1, r1, r2
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	movs r2, #0x80
	lsls r2, r2, #1
	movs r0, #0
	bl sub_8025718
_0805B1D4:
	ldr r0, _0805B238
	ldrb r0, [r0]
	cmp r0, #5
	bne _0805B1F4
	ldr r4, _0805B234
	ldr r0, [r4]
	adds r0, #0x1c
	bl RenderSprite
	ldr r0, [r4]
	adds r0, #0x38
	bl RenderSprite
	ldr r0, [r4]
	bl RenderSprite
_0805B1F4:
	cmp r5, #1
	bne _0805B26A
	movs r4, #0
	ldr r6, _0805B23C
_0805B1FC:
	ldr r1, [r6]
	lsls r0, r4, #3
	adds r0, r0, r4
	lsls r5, r0, #2
	adds r3, r5, r1
	ldr r2, [r3, #0x1c]
	subs r1, r2, #1
	ldr r0, _0805B240
	cmp r1, r0
	bhi _0805B244
	adds r0, r3, #0
	bl RenderSprite
	adds r4, #1
	ldr r0, [r6]
	adds r0, r5, r0
	ldrb r0, [r0, #8]
	lsrs r0, r0, #7
	movs r2, #0x80
	lsls r2, r2, #1
	subs r2, r2, r0
	adds r0, r4, #0
	movs r1, #0
	bl sub_8025718
	b _0805B262
	.align 2, 0
_0805B230: .4byte 0x0203F920
_0805B234: .4byte 0x0203F944
_0805B238: .4byte 0x0203F93F
_0805B23C: .4byte 0x0203F948
_0805B240: .4byte 0x00A9FFFE
_0805B244:
	ldr r0, _0805B270
	adds r1, r2, r0
	ldr r0, _0805B274
	adds r4, #1
	cmp r1, r0
	bhi _0805B262
	adds r0, r3, #0
	bl RenderSprite
	adds r0, r4, #0
	movs r1, #0xc0
	movs r2, #0xc0
	lsls r2, r2, #2
	bl sub_8025718
_0805B262:
	lsls r0, r4, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x1b
	bls _0805B1FC
_0805B26A:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0805B270: .4byte 0xFEBFFFFF
_0805B274: .4byte 0x009FFFFE

    .thumb
    .global sub_805B278
sub_805B278: @ 0x0805B278
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _0805B2D8
	ldr r0, [r0]
	adds r1, r0, #0
	adds r1, #0x84
	ldrb r0, [r1]
	cmp r0, #0
	beq _0805B28E
	b _0805B57E
_0805B28E:
	movs r0, #1
	strb r0, [r1]
	movs r0, #0
	mov r8, r0
_0805B296:
	ldr r3, _0805B2DC
	ldr r1, [r3]
	mov r4, r8
	lsls r2, r4, #3
	adds r0, r2, r4
	lsls r5, r0, #2
	adds r4, r5, r1
	ldr r1, [r4, #0x1c]
	ldr r0, _0805B2E0
	adds r6, r3, #0
	adds r7, r2, #0
	cmp r1, r0
	bgt _0805B2B2
	b _0805B56E
_0805B2B2:
	adds r1, r4, #0
	adds r1, #0x23
	movs r0, #8
	strb r0, [r1]
	ldr r0, [r6]
	adds r0, r5, r0
	movs r1, #0x91
	lsls r1, r1, #0x12
	str r1, [r0, #0x1c]
	adds r0, #0x23
	ldrb r0, [r0]
	cmp r0, #9
	bls _0805B2CE
	b _0805B56E
_0805B2CE:
	lsls r0, r0, #2
	ldr r1, _0805B2E4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0805B2D8: .4byte 0x0203F944
_0805B2DC: .4byte 0x0203F948
_0805B2E0: .4byte 0x01DFFFFF
_0805B2E4: .4byte 0x0805B2E8
_0805B2E8: @ jump table
	.4byte _0805B4F0 @ case 0
	.4byte _0805B56E @ case 1
	.4byte _0805B56E @ case 2
	.4byte _0805B310 @ case 3
	.4byte _0805B370 @ case 4
	.4byte _0805B3CC @ case 5
	.4byte _0805B42C @ case 6
	.4byte _0805B488 @ case 7
	.4byte _0805B4F0 @ case 8
	.4byte _0805B514 @ case 9
_0805B310:
	ldr r4, _0805B344
	ldr r0, [r4]
	mov r2, r8
	adds r1, r7, r2
	lsls r5, r1, #2
	adds r1, r5, r0
	adds r0, r1, #0
	adds r0, #0x21
	ldrb r0, [r0]
	cmp r0, #0
	beq _0805B34C
	adds r0, r1, #0
	ldr r1, _0805B348
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r0, [r4]
	adds r0, r0, r5
	adds r1, r0, #0
	adds r1, #0x24
	ldrb r1, [r1, #2]
	bl sub_80037F4
	b _0805B358
	.align 2, 0
_0805B344: .4byte 0x0203F948
_0805B348: .4byte 0x00000451
_0805B34C:
	adds r0, r1, #0
	ldr r1, _0805B368
	movs r2, #0
	movs r3, #0
	bl sub_8003368
_0805B358:
	ldr r0, _0805B36C
	ldr r1, [r0]
	mov r4, r8
	adds r0, r7, r4
	lsls r0, r0, #2
	adds r0, r0, r1
	b _0805B546
	.align 2, 0
_0805B368: .4byte 0x000004B1
_0805B36C: .4byte 0x0203F948
_0805B370:
	ldr r5, _0805B3AC
	mov r1, r8
	adds r0, r7, r1
	lsls r4, r0, #2
	ldr r0, [r5]
	adds r0, r0, r4
	movs r1, #0x96
	lsls r1, r1, #3
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r0, [r5]
	adds r1, r4, r0
	adds r0, r1, #0
	adds r0, #0x21
	ldrb r0, [r0]
	cmp r0, #0
	beq _0805B3B0
	adds r0, r1, #0
	bl sub_80037A0
	ldr r0, [r5]
	adds r0, r0, r4
	adds r1, r0, #0
	adds r1, #0x24
	ldrb r1, [r1, #2]
	bl sub_80037F4
	b _0805B3B8
	.align 2, 0
_0805B3AC: .4byte 0x0203F948
_0805B3B0:
	adds r0, r1, #0
	movs r1, #0
	bl sub_800378C
_0805B3B8:
	ldr r0, _0805B3C8
	ldr r1, [r0]
	mov r2, r8
	adds r0, r7, r2
	lsls r0, r0, #2
	adds r0, r0, r1
	b _0805B546
	.align 2, 0
_0805B3C8: .4byte 0x0203F948
_0805B3CC:
	ldr r5, _0805B408
	mov r4, r8
	adds r0, r7, r4
	lsls r4, r0, #2
	ldr r0, [r5]
	adds r0, r0, r4
	ldr r1, _0805B40C
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r0, [r5]
	adds r1, r4, r0
	adds r0, r1, #0
	adds r0, #0x21
	ldrb r0, [r0]
	cmp r0, #0
	beq _0805B410
	adds r0, r1, #0
	bl sub_80037A0
	ldr r0, [r5]
	adds r0, r0, r4
	adds r1, r0, #0
	adds r1, #0x24
	ldrb r1, [r1, #2]
	bl sub_80037F4
	b _0805B418
	.align 2, 0
_0805B408: .4byte 0x0203F948
_0805B40C: .4byte 0x000004C7
_0805B410:
	adds r0, r1, #0
	movs r1, #0
	bl sub_800378C
_0805B418:
	ldr r0, _0805B428
	ldr r1, [r0]
	mov r2, r8
	adds r0, r7, r2
	lsls r0, r0, #2
	adds r0, r0, r1
	b _0805B546
	.align 2, 0
_0805B428: .4byte 0x0203F948
_0805B42C:
	ldr r5, _0805B468
	mov r4, r8
	adds r0, r7, r4
	lsls r4, r0, #2
	ldr r0, [r5]
	adds r0, r0, r4
	movs r1, #0x99
	lsls r1, r1, #3
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r0, [r5]
	adds r1, r4, r0
	adds r0, r1, #0
	adds r0, #0x21
	ldrb r0, [r0]
	cmp r0, #0
	beq _0805B46C
	adds r0, r1, #0
	bl sub_80037A0
	ldr r0, [r5]
	adds r0, r0, r4
	adds r1, r0, #0
	adds r1, #0x24
	ldrb r1, [r1, #2]
	bl sub_80037F4
	b _0805B474
	.align 2, 0
_0805B468: .4byte 0x0203F948
_0805B46C:
	adds r0, r1, #0
	movs r1, #0
	bl sub_800378C
_0805B474:
	ldr r0, _0805B484
	ldr r1, [r0]
	mov r2, r8
	adds r0, r7, r2
	lsls r0, r0, #2
	adds r0, r0, r1
	b _0805B546
	.align 2, 0
_0805B484: .4byte 0x0203F948
_0805B488:
	ldr r5, _0805B4BC
	ldr r0, [r5]
	mov r4, r8
	adds r1, r7, r4
	lsls r4, r1, #2
	adds r1, r4, r0
	adds r0, r1, #0
	adds r0, #0x21
	ldrb r0, [r0]
	cmp r0, #0
	beq _0805B4C4
	adds r0, r1, #0
	ldr r1, _0805B4C0
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r0, [r5]
	adds r0, r0, r4
	adds r1, r0, #0
	adds r1, #0x24
	ldrb r1, [r1, #2]
	bl sub_80037F4
	b _0805B4DC
	.align 2, 0
_0805B4BC: .4byte 0x0203F948
_0805B4C0: .4byte 0x00000451
_0805B4C4:
	adds r0, r1, #0
	movs r1, #0x8f
	lsls r1, r1, #2
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r0, [r5]
	adds r0, r0, r4
	movs r1, #0
	bl sub_800378C
_0805B4DC:
	ldr r0, _0805B4EC
	ldr r1, [r0]
	mov r2, r8
	adds r0, r7, r2
	lsls r0, r0, #2
	adds r0, r0, r1
	b _0805B546
	.align 2, 0
_0805B4EC: .4byte 0x0203F948
_0805B4F0:
	mov r0, r8
	adds r4, r7, r0
	lsls r4, r4, #2
	ldr r0, [r6]
	adds r0, r0, r4
	ldr r1, _0805B510
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r0, [r6]
	adds r4, r4, r0
	movs r0, #0
	strb r0, [r4, #0x12]
	b _0805B56E
	.align 2, 0
_0805B510: .4byte 0x00000451
_0805B514:
	ldr r0, [r6]
	mov r2, r8
	adds r1, r7, r2
	lsls r4, r1, #2
	adds r1, r4, r0
	adds r0, r1, #0
	adds r0, #0x21
	ldrb r0, [r0]
	cmp r0, #0
	beq _0805B550
	adds r0, r1, #0
	ldr r1, _0805B54C
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r0, [r6]
	adds r0, r0, r4
	adds r1, r0, #0
	adds r1, #0x24
	ldrb r1, [r1, #2]
	bl sub_80037F4
	ldr r0, [r6]
	adds r0, r4, r0
_0805B546:
	movs r1, #0
	strb r1, [r0, #0x12]
	b _0805B56E
	.align 2, 0
_0805B54C: .4byte 0x00000451
_0805B550:
	adds r0, r1, #0
	ldr r1, _0805B588
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r0, [r6]
	adds r0, r4, r0
	movs r1, #1
	strb r1, [r0, #0x12]
	ldr r0, [r6]
	adds r0, r0, r4
	movs r1, #5
	bl SetSpritePalette
_0805B56E:
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	cmp r0, #0x1b
	bhi _0805B57E
	b _0805B296
_0805B57E:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805B588: .4byte 0x00000221

    .thumb
sub_805B58C: @ 0x0805B58C
	push {lr}
	ldr r0, _0805B5D0
	ldrb r0, [r0]
	cmp r0, #5
	bne _0805B60E
	ldr r1, _0805B5D4
	ldr r0, [r1]
	adds r2, r0, #0
	adds r2, #0x83
	ldrb r0, [r2]
	adds r3, r1, #0
	cmp r0, #0
	bne _0805B606
	movs r0, #4
	strb r0, [r2]
	ldr r0, _0805B5D8
	ldrb r1, [r0]
	adds r2, r0, #0
	cmp r1, #0
	beq _0805B5E0
	ldr r0, _0805B5DC
	ldrb r0, [r0]
	cmp r0, #4
	bhi _0805B5E0
	ldr r1, [r3]
	ldrb r0, [r1, #8]
	cmp r0, #0x28
	bls _0805B60A
	adds r1, #0x78
	ldrh r0, [r1]
	subs r0, #0xc8
	strh r0, [r1]
	b _0805B60A
	.align 2, 0
_0805B5D0: .4byte 0x0203F93F
_0805B5D4: .4byte 0x0203F944
_0805B5D8: .4byte 0x0203F941
_0805B5DC: .4byte 0x0203F93D
_0805B5E0:
	ldr r1, [r3]
	ldrb r0, [r1, #8]
	cmp r0, #0xb3
	bhi _0805B60A
	ldrb r0, [r2]
	cmp r0, #0
	beq _0805B5F6
	adds r1, #0x78
	movs r2, #0xbe
	lsls r2, r2, #1
	b _0805B5FC
_0805B5F6:
	adds r1, #0x78
	movs r2, #0xe1
	lsls r2, r2, #1
_0805B5FC:
	adds r0, r2, #0
	ldrh r2, [r1]
	adds r0, r0, r2
	strh r0, [r1]
	b _0805B60A
_0805B606:
	subs r0, #1
	strb r0, [r2]
_0805B60A:
	bl sub_805B020
_0805B60E:
	pop {r0}
	bx r0
	.align 2, 0

	.thumb
sub_805B614: @ 0x0805B614
	push {r4, r5, r6, lr}
	ldr r0, _0805B62C
	ldrb r0, [r0]
	cmp r0, #8
	bls _0805B620
	b _0805BA0E
_0805B620:
	lsls r0, r0, #2
	ldr r1, _0805B630
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0805B62C: .4byte 0x0203F93D
_0805B630: .4byte 0x0805B634
_0805B634: @ jump table
	.4byte _0805B658 @ case 0
	.4byte _0805B65E @ case 1
	.4byte _0805B8A8 @ case 2
	.4byte _0805B8A8 @ case 3
	.4byte _0805B8A8 @ case 4
	.4byte _0805B8A8 @ case 5
	.4byte _0805B8B2 @ case 6
	.4byte _0805B8A0 @ case 7
	.4byte _0805B8C0 @ case 8
_0805B658:
	bl sub_8059BDC
	b _0805B884
_0805B65E:
	ldr r2, _0805B690
	ldrh r1, [r2]
	movs r0, #0x20
	ands r0, r1
	ldr r5, _0805B694
	ldr r4, _0805B698
	ldr r6, _0805B69C
	cmp r0, #0
	beq _0805B6C6
	ldr r3, [r4]
	adds r0, r3, #0
	adds r0, #0x6c
	ldrh r1, [r0]
	ldrb r0, [r6]
	lsls r0, r0, #8
	cmp r1, r0
	ble _0805B6C6
	ldrb r0, [r5]
	cmp r0, #5
	beq _0805B6AA
	cmp r0, #5
	bgt _0805B6A0
	cmp r0, #0
	beq _0805B6B6
	b _0805B6C2
	.align 2, 0
_0805B690: .4byte gKeysPressed
_0805B694: .4byte 0x0203F93F
_0805B698: .4byte 0x0203F944
_0805B69C: .4byte 0x0203F936
_0805B6A0:
	cmp r0, #9
	beq _0805B6B6
	cmp r0, #0xa
	beq _0805B6B6
	b _0805B6C2
_0805B6AA:
	adds r1, r3, #0
	adds r1, #0x74
	ldrh r0, [r1]
	subs r0, #0x8e
	strh r0, [r1]
	b _0805B6C6
_0805B6B6:
	adds r1, r3, #0
	adds r1, #0x74
	ldrh r0, [r1]
	subs r0, #0x80
	strh r0, [r1]
	b _0805B6C6
_0805B6C2:
	.2byte 0xEE00, 0xEE00
_0805B6C6:
	ldrh r1, [r2]
	movs r0, #0x10
	ands r0, r1
	ldr r3, _0805B6F4
	cmp r0, #0
	beq _0805B71E
	ldr r2, [r4]
	adds r0, r2, #0
	adds r0, #0x6c
	ldrh r1, [r0]
	ldrb r0, [r3]
	lsls r0, r0, #8
	cmp r1, r0
	bge _0805B71E
	ldrb r0, [r5]
	cmp r0, #5
	beq _0805B702
	cmp r0, #5
	bgt _0805B6F8
	cmp r0, #0
	beq _0805B70E
	b _0805B71A
	.align 2, 0
_0805B6F4: .4byte 0x0203F937
_0805B6F8:
	cmp r0, #9
	beq _0805B70E
	cmp r0, #0xa
	beq _0805B70E
	b _0805B71A
_0805B702:
	adds r1, r2, #0
	adds r1, #0x74
	ldrh r0, [r1]
	adds r0, #0x8e
	strh r0, [r1]
	b _0805B71E
_0805B70E:
	adds r1, r2, #0
	adds r1, #0x74
	ldrh r0, [r1]
	adds r0, #0x80
	strh r0, [r1]
	b _0805B71E
_0805B71A:
	.2byte 0xEE00, 0xEE00
_0805B71E:
	ldr r4, _0805B76C
	ldr r0, [r4]
	adds r2, r0, #0
	adds r2, #0x6c
	ldrh r1, [r2]
	ldrb r0, [r3]
	lsls r0, r0, #8
	cmp r1, r0
	ble _0805B732
	strh r0, [r2]
_0805B732:
	ldr r0, [r4]
	adds r2, r0, #0
	adds r2, #0x6c
	ldrh r1, [r2]
	ldrb r0, [r6]
	lsls r0, r0, #8
	cmp r1, r0
	bge _0805B744
	strh r0, [r2]
_0805B744:
	ldr r1, [r4]
	adds r0, r1, #0
	adds r0, #0x74
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x15
	rsbs r0, r0, #0
	adds r1, #0x81
	movs r5, #0
	strb r0, [r1]
	ldr r0, _0805B770
	ldrb r0, [r0]
	cmp r0, #5
	beq _0805B77E
	cmp r0, #5
	bgt _0805B774
	cmp r0, #0
	beq _0805B7A0
	b _0805B7C8
	.align 2, 0
_0805B76C: .4byte 0x0203F944
_0805B770: .4byte 0x0203F93F
_0805B774:
	cmp r0, #9
	beq _0805B7A0
	cmp r0, #0xa
	beq _0805B7A0
	b _0805B7C8
_0805B77E:
	ldr r0, [r4]
	adds r0, #0x74
	movs r1, #0
	ldrsh r0, [r0, r1]
	movs r1, #0xc3
	bl CallARM_FX_Mul8
	ldr r1, [r4]
	adds r1, #0x74
	strh r0, [r1]
	movs r2, #0
	ldrsh r0, [r1, r2]
	bl Abs
	cmp r0, #0x22
	bhi _0805B7CC
	b _0805B7C0
_0805B7A0:
	ldr r0, [r4]
	adds r0, #0x74
	movs r1, #0
	ldrsh r0, [r0, r1]
	movs r1, #0xb4
	bl CallARM_FX_Mul8
	ldr r1, [r4]
	adds r1, #0x74
	strh r0, [r1]
	movs r2, #0
	ldrsh r0, [r1, r2]
	bl Abs
	cmp r0, #0x1f
	bhi _0805B7CC
_0805B7C0:
	ldr r0, [r4]
	adds r0, #0x74
	strh r5, [r0]
	b _0805B7CC
_0805B7C8:
	.2byte 0xEE00, 0xEE00
_0805B7CC:
	ldr r4, _0805B820
	ldr r0, [r4]
	adds r0, #0x72
	movs r1, #0
	ldrsh r0, [r0, r1]
	bl Abs
	movs r1, #0xe1
	lsls r1, r1, #1
	cmp r0, r1
	bls _0805B7EA
	ldr r0, [r4]
	adds r0, #0x74
	movs r1, #0
	strh r1, [r0]
_0805B7EA:
	ldr r0, [r4]
	adds r1, r0, #0
	adds r1, #0x6c
	adds r0, #0x74
	ldrh r0, [r0]
	ldrh r2, [r1]
	adds r0, r0, r2
	strh r0, [r1]
	ldr r1, _0805B824
	ldr r1, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x18
	strh r0, [r1, #6]
	ldr r5, _0805B828
	ldrb r4, [r5]
	bl sub_805A3F8
	ldr r0, _0805B82C
	ldrb r0, [r0]
	cmp r0, #5
	beq _0805B83A
	cmp r0, #5
	bgt _0805B830
	cmp r0, #0
	beq _0805B840
	b _0805B84C
	.align 2, 0
_0805B820: .4byte 0x0203F944
_0805B824: .4byte 0x0203F920
_0805B828: .4byte 0x0203F93A
_0805B82C: .4byte 0x0203F93F
_0805B830:
	cmp r0, #9
	beq _0805B840
	cmp r0, #0xa
	beq _0805B840
	b _0805B84C
_0805B83A:
	bl sub_805B020
	b _0805B850
_0805B840:
	ldrb r0, [r5]
	cmp r0, r4
	beq _0805B850
	bl sub_80524D8
	b _0805B850
_0805B84C:
	.2byte 0xEE00, 0xEE00
_0805B850:
	ldr r4, _0805B898
	ldr r0, [r4]
	adds r2, r0, #0
	adds r2, #0x72
	movs r0, #0
	ldrsh r1, [r2, r0]
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	beq _0805B884
	adds r0, r1, #0
	movs r1, #0xfb
	bl CallARM_FX_Mul8
	ldr r1, [r4]
	adds r2, r1, #0
	adds r2, #0x72
	strh r0, [r2]
	adds r0, #0xf4
	lsls r0, r0, #0x10
	movs r1, #0xf4
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _0805B884
	movs r0, #0
	strh r0, [r2]
_0805B884:
	ldr r0, _0805B89C
	ldrb r0, [r0]
	cmp r0, #0xa
	bne _0805B88E
	b _0805BA0E
_0805B88E:
	movs r0, #7
	bl sub_8052960
	b _0805BA0E
	.align 2, 0
_0805B898: .4byte 0x0203F944
_0805B89C: .4byte 0x0203F93F
_0805B8A0:
	movs r0, #8
	bl sub_8052834
	b _0805BA0E
_0805B8A8:
	bl sub_8059CE0
	bl sub_805B58C
	b _0805BA0E
_0805B8B2:
	movs r0, #8
	movs r1, #8
	bl sub_8052894
	bl sub_805B58C
	b _0805BA0E
_0805B8C0:
	ldr r0, _0805B92C
	ldr r0, [r0]
	movs r1, #3
	bl Free
	ldr r0, _0805B930
	ldr r0, [r0]
	movs r1, #3
	bl Free
	ldr r0, _0805B934
	ldr r0, [r0]
	movs r1, #3
	bl Free
	ldr r0, _0805B938
	ldr r0, [r0]
	movs r1, #3
	bl Free
	ldr r1, _0805B93C
	ldr r0, _0805B940
	str r0, [r1]
	ldr r1, _0805B944
	ldr r0, _0805B948
	str r0, [r1]
	ldr r1, _0805B94C
	ldr r0, _0805B950
	str r0, [r1]
	ldr r1, _0805B954
	movs r0, #0
	strb r0, [r1]
	ldr r0, _0805B958
	ldr r0, [r0]
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_8003884
	ldr r0, _0805B95C
	ldr r0, [r0]
	cmp r0, #0
	beq _0805B96C
	ldr r0, _0805B960
	movs r1, #1
	bl sub_80270AC
	ldr r0, _0805B964
	ldrb r0, [r0]
	ldr r1, _0805B968
	ldrb r1, [r1]
	bl sub_080593D0
	b _0805BA0E
	.align 2, 0
_0805B92C: .4byte 0x0203F920
_0805B930: .4byte 0x0203F948
_0805B934: .4byte gMatrices
_0805B938: .4byte 0x0203F944
_0805B93C: .4byte gNullsub_3
_0805B940: .4byte 0x08009DD5
_0805B944: .4byte gNullsub_4
_0805B948: .4byte 0x08009DD9
_0805B94C: .4byte gNullsub_5
_0805B950: .4byte 0x08009DDD
_0805B954: .4byte gIsSlideMiniGame
_0805B958: .4byte dword_2000FC8
_0805B95C: .4byte 0x0203F928
_0805B960: .4byte 0x00000FFF
_0805B964: .4byte 0x0203F93F
_0805B968: .4byte 0x0203F940
_0805B96C:
	ldr r4, _0805B994
	ldrb r0, [r4]
	cmp r0, #0xa
	bne _0805B9A4
	ldr r2, _0805B998
	ldr r0, _0805B99C
	ldrb r0, [r0]
	ldrb r1, [r2]
	adds r0, r0, r1
	strb r0, [r2]
	ldrb r1, [r2]
	ldr r0, _0805B9A0
	ldr r0, [r0, #0x1c]
	cmp r1, r0
	ble _0805B98C
	strb r0, [r2]
_0805B98C:
	bl sub_8025368
	b _0805BA00
	.align 2, 0
_0805B994: .4byte 0x0203F93F
_0805B998: .4byte 0x0203E16C
_0805B99C: .4byte 0x0203F93A
_0805B9A0: .4byte 0x080CF3B0
_0805B9A4:
	ldr r0, _0805B9C0
	movs r1, #1
	bl sub_80271A4
	ldr r0, _0805B9C4
	ldrb r0, [r0]
	cmp r0, #1
	beq _0805B9E0
	cmp r0, #1
	bgt _0805B9C8
	cmp r0, #0
	beq _0805B9CE
	b _0805BA00
	.align 2, 0
_0805B9C0: .4byte 0x00000FFF
_0805B9C4: .4byte 0x0203F940
_0805B9C8:
	cmp r0, #2
	beq _0805B9F4
	b _0805BA00
_0805B9CE:
	ldrb r0, [r4]
	ldr r1, _0805B9DC
	ldrb r1, [r1]
	movs r2, #1
	bl sub_800D5FC
	b _0805BA00
	.align 2, 0
_0805B9DC: .4byte 0x0203F941
_0805B9E0:
	ldrb r0, [r4]
	ldr r1, _0805B9F0
	ldrb r1, [r1]
	movs r2, #1
	bl sub_800D8E8
	b _0805BA00
	.align 2, 0
_0805B9F0: .4byte 0x0203F941
_0805B9F4:
	ldrb r0, [r4]
	ldr r1, _0805BA14
	ldrb r1, [r1]
	movs r2, #1
	bl sub_800DA04
_0805BA00:
	movs r0, #1
	rsbs r0, r0, #0
	bl sub_80139F0
	ldr r1, _0805BA18
	movs r0, #0
	strb r0, [r1]
_0805BA0E:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0805BA14: .4byte 0x0203F941
_0805BA18: .4byte 0x02000314

    .thumb
    .global sub_0805BA1C
sub_0805BA1C: @ 0x0805BA1C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	adds r5, r0, #0
	adds r7, r1, #0
	ldr r6, _0805BB1C
	movs r0, #0x4c
	movs r1, #4
	movs r2, #3
	bl Alloc
	str r0, [r6]
	ldr r4, _0805BB20
	movs r0, #0x1c
	movs r1, #4
	movs r2, #3
	bl Alloc
	str r0, [r4]
	ldr r1, _0805BB24
	movs r2, #1
	str r2, [sp]
	movs r2, #0x78
	mov sb, r2
	str r2, [sp, #4]
	movs r2, #0x30
	mov sl, r2
	str r2, [sp, #8]
	movs r2, #2
	mov r8, r2
	str r2, [sp, #0xc]
	movs r2, #0
	movs r3, #0
	bl SetSprite
	ldr r0, [r4]
	movs r1, #3
	bl SetSpritePriority
	ldr r0, [r6]
	adds r0, #0x1c
	movs r1, #0x9d
	lsls r1, r1, #3
	movs r4, #0
	str r4, [sp]
	movs r2, #3
	str r2, [sp, #4]
	movs r2, #0xa
	str r2, [sp, #8]
	mov r2, r8
	str r2, [sp, #0xc]
	movs r2, #0
	movs r3, #0
	bl SetSprite
	ldr r0, [r6]
	adds r0, #0x1c
	movs r1, #0
	bl SetSpritePriority
	ldr r3, _0805BB28
	strb r5, [r3]
	cmp r7, #2
	bls _0805BAA6
	.2byte 0xEE00, 0xEE00
_0805BAA6:
	ldr r0, _0805BB2C
	strb r7, [r0]
	ldr r0, _0805BB30
	strb r4, [r0]
	ldr r0, _0805BB34
	str r4, [r0]
	ldr r0, _0805BB38
	str r4, [r0]
	ldr r1, _0805BB3C
	movs r0, #0x14
	strb r0, [r1]
	ldr r1, _0805BB40
	movs r0, #0xdc
	strb r0, [r1]
	ldr r0, _0805BB44
	strb r4, [r0]
	ldr r0, [r6]
	movs r2, #0
	movs r1, #0xf0
	lsls r1, r1, #7
	strh r1, [r0, #0x38]
	strh r4, [r0, #0x3e]
	adds r0, #0x45
	strb r2, [r0]
	ldr r1, [r6]
	strh r4, [r1, #0x3c]
	adds r0, r1, #0
	adds r0, #0x40
	strh r4, [r0]
	adds r0, #2
	strh r4, [r0]
	adds r0, #4
	strb r2, [r0]
	ldr r0, [r6]
	movs r1, #0xc0
	lsls r1, r1, #6
	strh r1, [r0, #0x3a]
	adds r0, #0x48
	strb r2, [r0]
	ldr r0, [r6]
	adds r0, #0x47
	strb r2, [r0]
	ldr r0, [r6]
	adds r0, #0x49
	strb r2, [r0]
	ldr r1, _0805BB48
	movs r0, #0x3c
	strb r0, [r1]
	movs r5, #0
	ldrb r0, [r3]
	cmp r0, #7
	bne _0805BB10
	b _0805BCD0
_0805BB10:
	cmp r0, #7
	bgt _0805BB4C
	cmp r0, #6
	beq _0805BB54
	b _0805C090
	.align 2, 0
_0805BB1C: .4byte 0x0203F984
_0805BB20: .4byte 0x0203F920
_0805BB24: .4byte 0x000004E5
_0805BB28: .4byte 0x0203F93F
_0805BB2C: .4byte 0x0203F940
_0805BB30: .4byte 0x0203F941
_0805BB34: .4byte 0x0203F924
_0805BB38: .4byte 0x0203F928
_0805BB3C: .4byte 0x0203F936
_0805BB40: .4byte 0x0203F937
_0805BB44: .4byte 0x0203F93A
_0805BB48: .4byte 0x0203F93C
_0805BB4C:
	cmp r0, #8
	bne _0805BB52
	b _0805BE70
_0805BB52:
	b _0805C090
_0805BB54:
	movs r0, #0x25
	bl sub_08012E90
	movs r0, #0x1c
	str r0, [sp]
	movs r0, #0x20
	str r0, [sp, #4]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_8013A10
	bl EnableBGAlphaBlending
	ldr r0, [r6]
	ldr r1, _0805BBA8
	str r5, [sp]
	mov r2, sb
	str r2, [sp, #4]
	mov r2, sl
	str r2, [sp, #8]
	mov r2, r8
	str r2, [sp, #0xc]
	movs r2, #0
	movs r3, #0
	bl SetSprite
	ldr r0, [r6]
	movs r1, #0
	bl SetSpritePriority
	ldr r1, _0805BBAC
	ldrb r0, [r1]
	cmp r0, #0
	blt _0805BBC0
	cmp r0, #1
	ble _0805BBB0
	cmp r0, #2
	beq _0805BBB8
	b _0805BBC0
	.align 2, 0
_0805BBA8: .4byte 0x000004E9
_0805BBAC: .4byte 0x0203F940
_0805BBB0:
	ldr r0, [r6]
	adds r0, #0x47
	movs r1, #0xc
	b _0805BBBE
_0805BBB8:
	ldr r0, [r6]
	adds r0, #0x47
	movs r1, #0x19
_0805BBBE:
	strb r1, [r0]
_0805BBC0:
	ldr r5, _0805BCBC
	ldr r4, _0805BCC0
	ldr r0, [r4]
	adds r0, #0x47
	ldrb r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	movs r1, #4
	movs r2, #3
	bl Alloc
	str r0, [r5]
	movs r2, #0
	mov r8, r2
	ldr r0, [r4]
	adds r0, #0x47
	ldrb r0, [r0]
	cmp r8, r0
	bhs _0805BCB2
	adds r6, r5, #0
	mov sb, r2
	movs r0, #1
	mov sl, r0
	movs r7, #0xf0
_0805BBF2:
	ldr r0, [r6]
	mov r1, r8
	lsls r4, r1, #2
	add r4, r8
	lsls r4, r4, #4
	adds r0, r4, r0
	adds r0, #0x48
	mov r2, sb
	strb r2, [r0]
	ldr r0, [r6]
	adds r0, r4, r0
	adds r0, #0x47
	mov r1, sl
	strb r1, [r0]
	ldr r0, [r6]
	adds r0, r4, r0
	adds r0, #0x4b
	strb r2, [r0]
	ldr r0, [r6]
	adds r0, r4, r0
	adds r0, #0x4c
	strb r2, [r0]
	ldr r0, [r6]
	adds r0, r0, r4
	mov r2, sb
	str r2, [sp]
	str r7, [sp, #4]
	str r7, [sp, #8]
	movs r1, #2
	str r1, [sp, #0xc]
	ldr r1, _0805BCC4
	movs r2, #0
	movs r3, #0
	bl SetSprite
	ldr r0, [r6]
	adds r0, r0, r4
	adds r0, #0x1c
	mov r2, sl
	str r2, [sp]
	str r7, [sp, #4]
	str r7, [sp, #8]
	movs r1, #2
	str r1, [sp, #0xc]
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl SetSprite
	ldr r0, [r6]
	adds r0, r0, r4
	adds r0, #0x1c
	movs r1, #0
	bl sub_800378C
	ldr r0, [r6]
	adds r0, r4, r0
	adds r0, #0x2c
	mov r2, sl
	strb r2, [r0]
	ldr r0, [r6]
	adds r0, r0, r4
	movs r1, #1
	bl SetSpritePriority
	ldr r0, [r6]
	adds r0, r0, r4
	adds r0, #0x1c
	movs r1, #1
	bl SetSpritePriority
	ldr r0, [r6]
	adds r0, r0, r4
	mov r5, r8
	adds r5, #1
	movs r1, #1
	adds r2, r5, #0
	bl sub_8003820
	ldr r0, [r6]
	adds r0, r0, r4
	bl sub_805C178
	ldr r0, [r6]
	adds r0, r0, r4
	bl sub_0805C974
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	mov r8, r5
	ldr r0, _0805BCC0
	ldr r0, [r0]
	adds r0, #0x47
	ldrb r0, [r0]
	cmp r8, r0
	blo _0805BBF2
_0805BCB2:
	ldr r5, _0805BCC8
	ldr r1, _0805BCCC
	movs r0, #0x32
	strb r0, [r1]
	b _0805C094
	.align 2, 0
_0805BCBC: .4byte 0x0203F988
_0805BCC0: .4byte 0x0203F984
_0805BCC4: .4byte 0x00000451
_0805BCC8: .4byte 0x00000133
_0805BCCC: .4byte 0x0203F93B
_0805BCD0:
	movs r0, #0x25
	bl sub_08012E90
	movs r0, #0x1c
	str r0, [sp]
	movs r0, #0x20
	str r0, [sp, #4]
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_8013A10
	bl EnableBGAlphaBlending
	ldr r0, [r6]
	ldr r1, _0805BDBC
	str r5, [sp]
	mov r2, sb
	str r2, [sp, #4]
	mov r2, sl
	str r2, [sp, #8]
	mov r2, r8
	str r2, [sp, #0xc]
	movs r2, #0
	movs r3, #0
	bl SetSprite
	ldr r0, [r6]
	movs r1, #0
	bl SetSpritePriority
	ldr r0, [r6]
	adds r0, #0x47
	movs r1, #0x19
	strb r1, [r0]
	ldr r4, _0805BDC0
	ldr r0, [r6]
	adds r0, #0x47
	ldrb r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	movs r1, #4
	movs r2, #3
	bl Alloc
	str r0, [r4]
	movs r0, #0
	mov r8, r0
	ldr r0, [r6]
	adds r0, #0x47
	ldrb r0, [r0]
	cmp r5, r0
	blo _0805BD3E
	b _0805BE56
_0805BD3E:
	adds r7, r4, #0
	movs r1, #0
	mov sb, r1
	movs r2, #1
	mov sl, r2
_0805BD48:
	mov r0, r8
	cmp r0, #0x13
	bhi _0805BDC8
	ldr r0, [r7]
	mov r1, r8
	lsls r6, r1, #2
	adds r4, r6, r1
	lsls r4, r4, #4
	adds r0, r4, r0
	adds r0, #0x48
	mov r2, sl
	strb r2, [r0]
	ldr r0, [r7]
	adds r0, r4, r0
	adds r0, #0x47
	strb r2, [r0]
	ldr r0, [r7]
	adds r0, r4, r0
	adds r0, #0x4b
	mov r1, sb
	strb r1, [r0]
	ldr r0, [r7]
	adds r0, r4, r0
	adds r0, #0x4c
	strb r1, [r0]
	ldr r0, [r7]
	adds r0, r0, r4
	mov r2, sb
	str r2, [sp]
	movs r1, #0xf0
	str r1, [sp, #4]
	str r1, [sp, #8]
	movs r1, #2
	str r1, [sp, #0xc]
	ldr r1, _0805BDC4
	movs r2, #0
	movs r3, #0
	bl SetSprite
	ldr r0, [r7]
	adds r0, r0, r4
	movs r1, #1
	bl SetSpritePriority
	ldr r0, [r7]
	adds r0, r0, r4
	mov r5, r8
	adds r5, #1
	movs r1, #1
	adds r2, r5, #0
	bl sub_8003820
	ldr r0, [r7]
	adds r0, r0, r4
	bl sub_805C178
	b _0805BE34
	.align 2, 0
_0805BDBC: .4byte 0x000004E7
_0805BDC0: .4byte 0x0203F988
_0805BDC4: .4byte 0x00000451
_0805BDC8:
	ldr r0, [r7]
	mov r2, r8
	lsls r6, r2, #2
	adds r4, r6, r2
	lsls r4, r4, #4
	adds r0, r4, r0
	adds r0, #0x48
	movs r1, #2
	strb r1, [r0]
	ldr r0, [r7]
	adds r0, r4, r0
	adds r0, #0x47
	mov r2, sl
	strb r2, [r0]
	ldr r0, [r7]
	adds r0, r4, r0
	adds r0, #0x4b
	mov r1, sb
	strb r1, [r0]
	ldr r0, [r7]
	adds r0, r4, r0
	adds r0, #0x4c
	strb r1, [r0]
	ldr r0, [r7]
	adds r0, r0, r4
	mov r2, sb
	str r2, [sp]
	movs r1, #0xf0
	str r1, [sp, #4]
	str r1, [sp, #8]
	movs r1, #2
	str r1, [sp, #0xc]
	ldr r1, _0805BE64
	movs r2, #0
	movs r3, #0
	bl SetSprite
	ldr r0, [r7]
	adds r0, r0, r4
	movs r1, #1
	bl SetSpritePriority
	ldr r0, [r7]
	adds r0, r0, r4
	mov r5, r8
	adds r5, #1
	movs r1, #1
	adds r2, r5, #0
	bl sub_8003820
	ldr r0, [r7]
	adds r0, r0, r4
	bl sub_805C2F0
_0805BE34:
	mov r2, r8
	adds r1, r6, r2
	lsls r1, r1, #4
	ldr r0, [r7]
	adds r0, r0, r1
	bl sub_0805C974
	lsls r0, r5, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	ldr r0, _0805BE68
	ldr r0, [r0]
	adds r0, #0x47
	ldrb r0, [r0]
	cmp r8, r0
	bhs _0805BE56
	b _0805BD48
_0805BE56:
	movs r5, #0x9b
	lsls r5, r5, #1
	ldr r1, _0805BE6C
	movs r0, #0x2d
	strb r0, [r1]
	b _0805C094
	.align 2, 0
_0805BE64: .4byte 0x00000451
_0805BE68: .4byte 0x0203F984
_0805BE6C: .4byte 0x0203F93B
_0805BE70:
	movs r0, #0x25
	bl sub_08012E90
	movs r0, #0x1c
	str r0, [sp]
	movs r0, #0x20
	str r0, [sp, #4]
	movs r0, #0x40
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_8013A10
	bl EnableBGAlphaBlending
	ldr r0, [r6]
	ldr r1, _0805BF9C
	str r5, [sp]
	mov r2, sb
	str r2, [sp, #4]
	mov r2, sl
	str r2, [sp, #8]
	mov r2, r8
	str r2, [sp, #0xc]
	movs r2, #0
	movs r3, #0
	bl SetSprite
	ldr r0, [r6]
	movs r1, #0
	bl SetSpritePriority
	ldr r0, [r6]
	adds r0, #0x47
	movs r1, #0x19
	strb r1, [r0]
	ldr r4, _0805BFA0
	ldr r0, [r6]
	adds r0, #0x47
	ldrb r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	movs r1, #4
	movs r2, #3
	bl Alloc
	str r0, [r4]
	movs r0, #0
	mov r8, r0
	ldr r0, [r6]
	adds r0, #0x47
	ldrb r0, [r0]
	cmp r5, r0
	blo _0805BEE0
	b _0805C076
_0805BEE0:
	adds r7, r4, #0
	movs r1, #1
	mov sl, r1
	movs r2, #0xf0
	mov sb, r2
_0805BEEA:
	mov r0, r8
	cmp r0, #0x13
	bhi _0805BFA8
	ldr r0, [r7]
	mov r1, r8
	lsls r6, r1, #2
	adds r4, r6, r1
	lsls r4, r4, #4
	adds r0, r4, r0
	adds r0, #0x48
	mov r2, sl
	strb r2, [r0]
	ldr r0, [r7]
	adds r0, r4, r0
	adds r0, #0x47
	strb r2, [r0]
	ldr r0, [r7]
	adds r0, r4, r0
	adds r0, #0x4b
	movs r1, #0
	strb r1, [r0]
	ldr r0, [r7]
	adds r0, r4, r0
	adds r0, #0x4c
	strb r1, [r0]
	ldr r0, [r7]
	adds r0, r0, r4
	movs r2, #0
	str r2, [sp]
	mov r1, sb
	str r1, [sp, #4]
	str r1, [sp, #8]
	movs r2, #2
	str r2, [sp, #0xc]
	ldr r1, _0805BFA4
	movs r2, #0
	movs r3, #0
	bl SetSprite
	ldr r0, [r7]
	adds r0, r0, r4
	adds r0, #0x1c
	mov r1, sl
	str r1, [sp]
	mov r2, sb
	str r2, [sp, #4]
	str r2, [sp, #8]
	movs r1, #2
	str r1, [sp, #0xc]
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl SetSprite
	ldr r0, [r7]
	adds r0, r0, r4
	adds r0, #0x1c
	movs r1, #0
	bl sub_800378C
	ldr r0, [r7]
	adds r0, r4, r0
	adds r0, #0x2c
	mov r2, sl
	strb r2, [r0]
	ldr r0, [r7]
	adds r0, r0, r4
	movs r1, #1
	bl SetSpritePriority
	ldr r0, [r7]
	adds r0, r0, r4
	adds r0, #0x1c
	movs r1, #1
	bl SetSpritePriority
	ldr r0, [r7]
	adds r0, r0, r4
	mov r5, r8
	adds r5, #1
	movs r1, #1
	adds r2, r5, #0
	bl sub_8003820
	ldr r0, [r7]
	adds r0, r0, r4
	bl sub_805C178
	b _0805C054
	.align 2, 0
_0805BF9C: .4byte 0x000004E7
_0805BFA0: .4byte 0x0203F988
_0805BFA4: .4byte 0x00000451
_0805BFA8:
	ldr r0, [r7]
	mov r1, r8
	lsls r6, r1, #2
	adds r4, r6, r1
	lsls r4, r4, #4
	adds r0, r4, r0
	adds r0, #0x48
	movs r2, #2
	strb r2, [r0]
	ldr r0, [r7]
	adds r0, r4, r0
	adds r0, #0x47
	mov r1, sl
	strb r1, [r0]
	ldr r0, [r7]
	adds r0, r4, r0
	adds r0, #0x4b
	movs r2, #0
	strb r2, [r0]
	ldr r0, [r7]
	adds r0, r4, r0
	adds r0, #0x4c
	strb r2, [r0]
	ldr r0, [r7]
	adds r0, r0, r4
	movs r1, #0
	str r1, [sp]
	mov r2, sb
	str r2, [sp, #4]
	str r2, [sp, #8]
	movs r1, #2
	str r1, [sp, #0xc]
	ldr r1, _0805C080
	movs r2, #0
	movs r3, #0
	bl SetSprite
	ldr r0, [r7]
	adds r0, r0, r4
	adds r0, #0x1c
	mov r2, sl
	str r2, [sp]
	mov r1, sb
	str r1, [sp, #4]
	str r1, [sp, #8]
	movs r2, #2
	str r2, [sp, #0xc]
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl SetSprite
	ldr r0, [r7]
	adds r0, r0, r4
	adds r0, #0x1c
	movs r1, #0
	bl sub_800378C
	ldr r0, [r7]
	adds r0, r4, r0
	adds r0, #0x2c
	mov r1, sl
	strb r1, [r0]
	ldr r0, [r7]
	adds r0, r0, r4
	movs r1, #1
	bl SetSpritePriority
	ldr r0, [r7]
	adds r0, r0, r4
	adds r0, #0x1c
	movs r1, #1
	bl SetSpritePriority
	ldr r0, [r7]
	adds r0, r0, r4
	mov r5, r8
	adds r5, #1
	movs r1, #1
	adds r2, r5, #0
	bl sub_8003820
	ldr r0, [r7]
	adds r0, r0, r4
	bl sub_805C2F0
_0805C054:
	mov r2, r8
	adds r1, r6, r2
	lsls r1, r1, #4
	ldr r0, [r7]
	adds r0, r0, r1
	bl sub_0805C974
	lsls r0, r5, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	ldr r0, _0805C084
	ldr r0, [r0]
	adds r0, #0x47
	ldrb r0, [r0]
	cmp r8, r0
	bhs _0805C076
	b _0805BEEA
_0805C076:
	ldr r5, _0805C088
	ldr r1, _0805C08C
	movs r0, #0x28
	strb r0, [r1]
	b _0805C094
	.align 2, 0
_0805C080: .4byte 0x00000451
_0805C084: .4byte 0x0203F984
_0805C088: .4byte 0x00000139
_0805C08C: .4byte 0x0203F93B
_0805C090:
	.2byte 0xEE00, 0xEE00
_0805C094:
	ldr r0, _0805C10C
	ldr r0, [r0]
	adds r0, #0x47
	ldrb r0, [r0]
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r1, _0805C110
	str r0, [r1]
	ldr r4, _0805C114
	lsls r0, r0, #4
	movs r1, #4
	movs r2, #3
	bl Alloc
	str r0, [r4]
	bl sub_80409DC
	bl sub_8063178
	ldr r6, _0805C118
	ldrb r0, [r6]
	cmp r0, #2
	bne _0805C0CE
	ldr r0, _0805C11C
	movs r1, #1
	movs r2, #3
	bl sub_0800F02C
_0805C0CE:
	ldr r0, _0805C120
	movs r1, #1
	movs r2, #0
	bl sub_8026E48
	ldr r1, _0805C124
	ldr r0, _0805C128
	str r0, [r1]
	ldr r1, _0805C12C
	ldr r0, _0805C130
	str r0, [r1]
	ldr r0, _0805C134
	movs r4, #1
	strb r4, [r0]
	ldr r0, _0805C138
	ldr r0, [r0]
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_8003884
	ldr r0, _0805C13C
	strb r4, [r0]
	ldrb r4, [r6]
	cmp r4, #0
	beq _0805C144
	ldr r1, _0805C140
	movs r0, #0
	strb r0, [r1]
	b _0805C15C
	.align 2, 0
_0805C10C: .4byte 0x0203F984
_0805C110: .4byte gMatricesCount
_0805C114: .4byte gMatrices
_0805C118: .4byte 0x0203F940
_0805C11C: .4byte 0x0203F924
_0805C120: .4byte 0x00000FFF
_0805C124: .4byte gNullsub_3
_0805C128: .4byte 0x0805CC65
_0805C12C: .4byte gNullsub_4
_0805C130: .4byte 0x0805C471
_0805C134: .4byte gIsSlideMiniGame
_0805C138: .4byte dword_2000FC8
_0805C13C: .4byte byte_20020B3
_0805C140: .4byte 0x0203F93D
_0805C144:
	adds r0, r5, #0
	bl sub_0802FEDC
	cmp r0, #0
	beq _0805C158
	ldr r0, _0805C154
	strb r4, [r0]
	b _0805C15C
	.align 2, 0
_0805C154: .4byte 0x0203F93D
_0805C158:
	.2byte 0xEE00, 0xEE00
_0805C15C:
	ldr r1, _0805C174
	movs r0, #0xff
	strb r0, [r1]
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805C174: .4byte 0x0203F93E

    .thumb
sub_805C178: @ 0x0805C178
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r0, #0
	movs r1, #2
	bl RandomMinMax
	cmp r0, #1
	beq _0805C1E2
	cmp r0, #1
	blo _0805C192
	cmp r0, #2
	beq _0805C232
	b _0805C27E
_0805C192:
	adds r1, r5, #0
	adds r1, #0x46
	movs r0, #0x5a
	strb r0, [r1]
	adds r4, r5, #0
	adds r4, #0x1c
	adds r0, r4, #0
	movs r1, #4
	bl sub_800378C
	adds r0, r5, #0
	adds r0, #0x48
	ldrb r0, [r0]
	cmp r0, #0
	beq _0805C1B6
	cmp r0, #1
	beq _0805C1C4
	b _0805C1D0
_0805C1B6:
	movs r0, #0xc0
	lsls r0, r0, #9
	str r0, [r5, #0x3c]
	ldr r0, _0805C1C0
	b _0805C1CE
	.align 2, 0
_0805C1C0: .4byte 0x0000A147
_0805C1C4:
	movs r0, #0xc0
	lsls r0, r0, #9
	str r0, [r5, #0x3c]
	movs r0, #0x80
	lsls r0, r0, #8
_0805C1CE:
	str r0, [r5, #0x40]
_0805C1D0:
	adds r0, r5, #0
	movs r1, #2
	bl SetSpritePriority
	adds r0, r4, #0
	movs r1, #2
	bl SetSpritePriority
	b _0805C27E
_0805C1E2:
	adds r1, r5, #0
	adds r1, #0x46
	movs r0, #0x71
	strb r0, [r1]
	adds r4, r5, #0
	adds r4, #0x1c
	adds r0, r4, #0
	movs r1, #2
	bl sub_800378C
	adds r0, r5, #0
	adds r0, #0x48
	ldrb r0, [r0]
	cmp r0, #0
	beq _0805C206
	cmp r0, #1
	beq _0805C214
	b _0805C220
_0805C206:
	movs r0, #0x88
	lsls r0, r0, #9
	str r0, [r5, #0x3c]
	ldr r0, _0805C210
	b _0805C21E
	.align 2, 0
_0805C210: .4byte 0x0000723D
_0805C214:
	movs r0, #0x88
	lsls r0, r0, #9
	str r0, [r5, #0x3c]
	movs r0, #0xc0
	lsls r0, r0, #7
_0805C21E:
	str r0, [r5, #0x40]
_0805C220:
	adds r0, r5, #0
	movs r1, #1
	bl SetSpritePriority
	adds r0, r4, #0
	movs r1, #1
	bl SetSpritePriority
	b _0805C27E
_0805C232:
	adds r1, r5, #0
	adds r1, #0x46
	movs r0, #0x88
	strb r0, [r1]
	adds r4, r5, #0
	adds r4, #0x1c
	adds r0, r4, #0
	movs r1, #0
	bl sub_800378C
	adds r0, r5, #0
	adds r0, #0x48
	ldrb r0, [r0]
	cmp r0, #0
	beq _0805C256
	cmp r0, #1
	beq _0805C264
	b _0805C26E
_0805C256:
	movs r0, #0xa0
	lsls r0, r0, #8
	str r0, [r5, #0x3c]
	ldr r0, _0805C260
	b _0805C26C
	.align 2, 0
_0805C260: .4byte 0x00004333
_0805C264:
	movs r0, #0xa0
	lsls r0, r0, #8
	str r0, [r5, #0x3c]
	ldr r0, _0805C290
_0805C26C:
	str r0, [r5, #0x40]
_0805C26E:
	adds r0, r5, #0
	movs r1, #0
	bl SetSpritePriority
	adds r0, r4, #0
	movs r1, #0
	bl SetSpritePriority
_0805C27E:
	movs r0, #0
	movs r1, #1
	bl RandomMinMax
	cmp r0, #0
	beq _0805C294
	cmp r0, #1
	beq _0805C2A8
	b _0805C2AC
	.align 2, 0
_0805C290: .4byte 0x00003599
_0805C294:
	movs r0, #0x87
	lsls r0, r0, #0x11
	str r0, [r5, #0x38]
	ldr r0, [r5, #0x3c]
	rsbs r0, r0, #0
	str r0, [r5, #0x3c]
	ldr r0, [r5, #0x40]
	rsbs r0, r0, #0
	str r0, [r5, #0x40]
	b _0805C2AC
_0805C2A8:
	ldr r0, _0805C2EC
	str r0, [r5, #0x38]
_0805C2AC:
	movs r0, #0
	movs r1, #1
	bl RandomMinMax
	movs r1, #0
	cmp r0, #0
	bne _0805C2BC
	movs r1, #1
_0805C2BC:
	adds r0, r5, #0
	adds r0, #0x4a
	strb r1, [r0]
	movs r0, #0x14
	movs r1, #0x28
	bl RandomMinMax
	adds r1, r5, #0
	adds r1, #0x49
	strb r0, [r1]
	movs r0, #0x14
	movs r1, #0xaa
	bl RandomMinMax
	adds r1, r5, #0
	adds r1, #0x44
	movs r2, #0
	strh r0, [r1]
	adds r0, r5, #0
	adds r0, #0x4b
	strb r2, [r0]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0805C2EC: .4byte 0xFFE20000

    .thumb
sub_805C2F0: @ 0x0805C2F0
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0
	movs r1, #2
	bl RandomMinMax
	cmp r0, #1
	beq _0805C336
	cmp r0, #1
	blo _0805C30A
	cmp r0, #2
	beq _0805C362
	b _0805C38C
_0805C30A:
	adds r1, r4, #0
	adds r1, #0x46
	movs r0, #0x5a
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0x1c
	movs r1, #4
	bl sub_800378C
	adds r0, r4, #0
	adds r0, #0x48
	ldrb r0, [r0]
	cmp r0, #2
	bne _0805C32C
	movs r0, #0xe0
	lsls r0, r0, #7
	str r0, [r4, #0x3c]
_0805C32C:
	adds r0, r4, #0
	movs r1, #2
	bl SetSpritePriority
	b _0805C38C
_0805C336:
	adds r1, r4, #0
	adds r1, #0x46
	movs r0, #0x71
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0x1c
	movs r1, #2
	bl sub_800378C
	adds r0, r4, #0
	adds r0, #0x48
	ldrb r0, [r0]
	cmp r0, #2
	bne _0805C358
	movs r0, #0xe0
	lsls r0, r0, #7
	str r0, [r4, #0x3c]
_0805C358:
	adds r0, r4, #0
	movs r1, #1
	bl SetSpritePriority
	b _0805C38C
_0805C362:
	adds r0, r4, #0
	adds r0, #0x1c
	movs r1, #0
	bl sub_800378C
	adds r1, r4, #0
	adds r1, #0x46
	movs r0, #0x88
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0x48
	ldrb r0, [r0]
	cmp r0, #2
	bne _0805C384
	movs r0, #0xe0
	lsls r0, r0, #7
	str r0, [r4, #0x3c]
_0805C384:
	adds r0, r4, #0
	movs r1, #0
	bl SetSpritePriority
_0805C38C:
	movs r0, #0
	movs r1, #1
	bl RandomMinMax
	cmp r0, #0
	beq _0805C39E
	cmp r0, #1
	beq _0805C3AC
	b _0805C3B0
_0805C39E:
	movs r0, #0x87
	lsls r0, r0, #0x11
	str r0, [r4, #0x38]
	ldr r0, [r4, #0x3c]
	rsbs r0, r0, #0
	str r0, [r4, #0x3c]
	b _0805C3B0
_0805C3AC:
	ldr r0, _0805C3C4
	str r0, [r4, #0x38]
_0805C3B0:
	movs r0, #0x14
	movs r1, #0xaa
	bl RandomMinMax
	adds r1, r4, #0
	adds r1, #0x44
	strh r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805C3C4: .4byte 0xFFE20000

    .thumb
sub_805C3C8: @ 0x0805C3C8
	push {r4, r5, lr}
	ldr r1, _0805C464
	ldr r0, [r1]
	ldrh r0, [r0, #0x3c]
	adds r4, r1, #0
	cmp r0, #0
	beq _0805C404
	cmp r0, #0x78
	bne _0805C3EE
	movs r1, #1
	rsbs r1, r1, #0
	movs r0, #1
	movs r2, #0
	bl sub_80192D4
	ldr r0, _0805C468
	ldr r1, [r0]
	movs r0, #1
	strb r0, [r1, #0x10]
_0805C3EE:
	ldr r1, [r4]
	ldrh r0, [r1, #0x3c]
	subs r0, #1
	strh r0, [r1, #0x3c]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0805C404
	ldr r0, _0805C468
	ldr r1, [r0]
	movs r0, #0
	strb r0, [r1, #0x10]
_0805C404:
	ldr r2, _0805C468
	ldr r1, [r2]
	ldr r3, [r4]
	ldrh r0, [r3, #0x38]
	lsrs r0, r0, #8
	strh r0, [r1, #6]
	adds r0, r3, #0
	adds r0, #0x45
	ldrb r0, [r0]
	adds r5, r2, #0
	cmp r0, #0
	bne _0805C426
	ldrh r1, [r3, #0x3e]
	movs r0, #0xfa
	lsls r0, r0, #3
	cmp r1, r0
	bls _0805C456
_0805C426:
	movs r1, #0xfa
	lsls r1, r1, #3
	adds r0, r1, #0
	ldrh r1, [r3, #0x3e]
	adds r0, r0, r1
	strh r0, [r3, #0x3e]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _0805C43C
	movs r0, #0
	strh r0, [r3, #0x3e]
_0805C43C:
	ldr r2, [r5]
	ldr r1, _0805C46C
	ldr r0, [r4]
	ldrh r0, [r0, #0x3e]
	lsrs r0, r0, #8
	lsls r0, r0, #1
	adds r0, r0, r1
	movs r3, #0
	ldrsh r1, [r0, r3]
	asrs r1, r1, #7
	movs r0, #0x30
	subs r0, r0, r1
	strb r0, [r2, #8]
_0805C456:
	ldr r0, [r5]
	bl RenderSprite
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0805C464: .4byte 0x0203F984
_0805C468: .4byte 0x0203F920
_0805C46C: .4byte 0x080B1AE4

	.thumb
sub_805C470: @ 0x0805C470
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r1, _0805C484
	ldrb r0, [r1]
	cmp r0, #4
	bne _0805C48C
	ldr r0, _0805C488
	ldrb r4, [r0]
	b _0805C48E
	.align 2, 0
_0805C484: .4byte 0x0203F93D
_0805C488: .4byte 0x0203F93E
_0805C48C:
	ldrb r4, [r1]
_0805C48E:
	ldr r5, _0805C52C
	ldr r0, [r5]
	adds r0, #0x42
	ldrh r0, [r0]
	movs r1, #0xf0
	bl CallARM_FX_Mul8
	lsls r0, r0, #8
	lsrs r0, r0, #0x10
	ldr r1, [r5]
	adds r0, #3
	strh r0, [r1, #0x22]
	adds r1, #0x1c
	adds r0, r1, #0
	bl RenderSprite
	cmp r4, #1
	bne _0805C4CA
	ldr r1, [r5]
	adds r0, r1, #0
	adds r0, #0x46
	ldrb r0, [r0]
	cmp r0, #1
	bls _0805C4CA
	ldrh r0, [r1, #0x3a]
	lsrs r0, r0, #8
	strb r0, [r1, #8]
	ldr r0, [r5]
	bl RenderSprite
_0805C4CA:
	bl sub_805C3C8
	cmp r4, #1
	beq _0805C4D4
	b _0805C632
_0805C4D4:
	movs r7, #0
	ldr r0, _0805C52C
	mov ip, r0
	ldr r0, [r0]
	adds r0, #0x47
	ldrb r0, [r0]
	cmp r7, r0
	blo _0805C4E6
	b _0805C632
_0805C4E6:
	ldr r1, _0805C530
	mov r8, r1
_0805C4EA:
	mov r2, r8
	ldr r1, [r2]
	lsls r2, r7, #2
	adds r0, r2, r7
	lsls r4, r0, #4
	adds r3, r4, r1
	adds r0, r3, #0
	adds r0, #0x47
	ldrb r0, [r0]
	adds r6, r2, #0
	adds r5, r7, #1
	cmp r0, #0
	bne _0805C506
	b _0805C61E
_0805C506:
	adds r0, r3, #0
	adds r0, #0x4c
	ldrb r0, [r0]
	cmp r0, #0
	beq _0805C534
	mov r0, ip
	ldr r1, [r0]
	ldrh r0, [r1, #6]
	strh r0, [r3, #6]
	ldrb r0, [r1, #8]
	strb r0, [r3, #8]
	mov r2, r8
	ldr r1, [r2]
	adds r1, r4, r1
	adds r1, #0x4b
	ldrb r0, [r1]
	adds r0, #5
	b _0805C56A
	.align 2, 0
_0805C52C: .4byte 0x0203F984
_0805C530: .4byte 0x0203F988
_0805C534:
	movs r0, #0x3a
	ldrsh r1, [r3, r0]
	strh r1, [r3, #6]
	ldr r0, [r3, #0x3c]
	cmp r0, #0
	ble _0805C544
	subs r0, r1, #2
	b _0805C546
_0805C544:
	adds r0, r1, #2
_0805C546:
	strh r0, [r3, #0x22]
	mov r1, r8
	ldr r2, [r1]
	adds r1, r6, r7
	lsls r1, r1, #4
	adds r2, r1, r2
	adds r0, r2, #0
	adds r0, #0x46
	ldrb r0, [r0]
	strb r0, [r2, #8]
	mov r2, r8
	ldr r0, [r2]
	adds r1, r1, r0
	adds r0, r1, #0
	adds r0, #0x46
	ldrb r0, [r0]
	adds r0, #3
	adds r1, #0x24
_0805C56A:
	strb r0, [r1]
	ldr r0, _0805C580
	ldrb r0, [r0]
	cmp r0, #7
	beq _0805C5B4
	cmp r0, #7
	bgt _0805C584
	cmp r0, #6
	beq _0805C58A
	b _0805C5E8
	.align 2, 0
_0805C580: .4byte 0x0203F93F
_0805C584:
	cmp r0, #8
	beq _0805C5C4
	b _0805C5E8
_0805C58A:
	ldr r5, _0805C5B0
	ldr r1, [r5]
	adds r0, r6, r7
	lsls r4, r0, #4
	adds r1, r4, r1
	adds r0, r1, #0
	adds r0, #0x4c
	ldrb r0, [r0]
	cmp r0, #0
	bne _0805C5D8
	adds r0, r1, #0
	bl RenderSprite
	ldr r0, [r5]
	adds r0, r0, r4
	adds r0, #0x1c
	bl RenderSprite
	b _0805C5E8
	.align 2, 0
_0805C5B0: .4byte 0x0203F988
_0805C5B4:
	adds r1, r6, r7
	lsls r1, r1, #4
	mov r2, r8
	ldr r0, [r2]
	adds r0, r0, r1
	bl RenderSprite
	b _0805C5E8
_0805C5C4:
	mov r0, r8
	ldr r1, [r0]
	adds r0, r6, r7
	lsls r0, r0, #4
	adds r1, r0, r1
	adds r0, r1, #0
	adds r0, #0x4c
	ldrb r0, [r0]
	cmp r0, #0
	beq _0805C5E0
_0805C5D8:
	adds r0, r1, #0
	bl RenderSprite
	b _0805C5E8
_0805C5E0:
	adds r0, r1, #0
	adds r0, #0x1c
	bl RenderSprite
_0805C5E8:
	mov r1, r8
	ldr r0, [r1]
	adds r4, r6, r7
	lsls r4, r4, #4
	adds r0, r4, r0
	ldrb r1, [r0, #8]
	movs r0, #0xa0
	subs r0, r0, r1
	movs r1, #0x80
	lsls r1, r1, #2
	bl CallARM_FX_Mul8
	adds r2, r0, #0
	movs r0, #0x80
	lsls r0, r0, #1
	adds r2, r2, r0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	adds r5, r7, #1
	mov r1, r8
	ldr r0, [r1]
	adds r4, r4, r0
	adds r4, #0x4b
	ldrb r1, [r4]
	adds r0, r5, #0
	bl sub_8025718
_0805C61E:
	lsls r0, r5, #0x18
	lsrs r7, r0, #0x18
	ldr r2, _0805C63C
	mov ip, r2
	ldr r0, [r2]
	adds r0, #0x47
	ldrb r0, [r0]
	cmp r7, r0
	bhs _0805C632
	b _0805C4EA
_0805C632:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805C63C: .4byte 0x0203F984

    .thumb
sub_805C640: @ 0x0805C640
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r1, _0805C660
	ldr r0, [r1]
	adds r0, #0x46
	ldrb r0, [r0]
	adds r4, r1, #0
	cmp r0, #4
	bls _0805C656
	b _0805C8BE
_0805C656:
	lsls r0, r0, #2
	ldr r1, _0805C664
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0805C660: .4byte 0x0203F984
_0805C664: .4byte 0x0805C668
_0805C668: @ jump table
	.4byte _0805C67C @ case 0
	.4byte _0805C6A8 @ case 1
	.4byte _0805C710 @ case 2
	.4byte _0805C740 @ case 3
	.4byte _0805C76A @ case 4
_0805C67C:
	ldr r0, _0805C69C
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0805C68A
	b _0805C8BE
_0805C68A:
	ldr r0, [r4]
	adds r0, #0x46
	movs r1, #1
	strb r1, [r0]
	ldr r0, _0805C6A0
	ldr r0, [r0]
	ldr r1, _0805C6A4
	b _0805C89A
	.align 2, 0
_0805C69C: .4byte gKeysPressed
_0805C6A0: .4byte 0x0203F920
_0805C6A4: .4byte 0x000004E4
_0805C6A8:
	ldr r0, _0805C6E0
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0
	bne _0805C6C6
	ldr r3, [r4]
	adds r0, r3, #0
	adds r0, #0x42
	ldrh r1, [r0]
	ldr r0, _0805C6E4
	cmp r1, r0
	bhi _0805C6EC
_0805C6C6:
	ldr r0, [r4]
	adds r1, r0, #0
	adds r1, #0x42
	ldrh r2, [r1]
	ldr r0, _0805C6E8
	cmp r2, r0
	bls _0805C6D6
	b _0805C8BE
_0805C6D6:
	movs r3, #0xc0
	lsls r3, r3, #1
	adds r0, r2, r3
	b _0805C8BC
	.align 2, 0
_0805C6E0: .4byte gKeysPressed
_0805C6E4: .4byte 0x000027FF
_0805C6E8: .4byte 0x00005BFF
_0805C6EC:
	ldr r2, _0805C70C
	ldr r0, [r2]
	ldrh r0, [r0, #6]
	strh r0, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #6
	strh r0, [r3, #0x3a]
	adds r0, r3, #0
	adds r0, #0x40
	strh r5, [r0]
	adds r1, r3, #0
	adds r1, #0x46
	movs r0, #2
	strb r0, [r1]
	ldr r0, [r2]
	b _0805C898
	.align 2, 0
_0805C70C: .4byte 0x0203F920
_0805C710:
	ldr r2, [r4]
	adds r3, r2, #0
	adds r3, #0x40
	adds r0, r2, #0
	adds r0, #0x42
	ldrh r1, [r3]
	ldrh r0, [r0]
	cmp r1, r0
	blo _0805C730
	movs r0, #0x14
	strh r0, [r3]
	adds r1, r2, #0
	adds r1, #0x46
	movs r0, #3
	strb r0, [r1]
	b _0805C740
_0805C730:
	movs r5, #0x88
	lsls r5, r5, #2
	adds r0, r5, #0
	adds r1, r1, r0
	strh r1, [r3]
	ldrh r1, [r2, #0x3a]
	adds r0, r0, r1
	strh r0, [r2, #0x3a]
_0805C740:
	ldr r1, [r4]
	adds r2, r1, #0
	adds r2, #0x40
	ldrh r0, [r2]
	cmp r0, #0
	bne _0805C764
	adds r1, #0x46
	movs r0, #4
	strb r0, [r1]
	ldr r0, _0805C75C
	ldr r0, [r0]
	ldr r1, _0805C760
	b _0805C89A
	.align 2, 0
_0805C75C: .4byte 0x0203F920
_0805C760: .4byte 0x000004E4
_0805C764:
	subs r0, #1
	strh r0, [r2]
	b _0805C8BE
_0805C76A:
	ldr r3, [r4]
	ldrh r1, [r3, #0x3a]
	ldr r0, _0805C7E0
	cmp r1, r0
	bls _0805C776
	b _0805C8AC
_0805C776:
	movs r2, #0
	movs r1, #0
	movs r0, #0x30
	strh r0, [r3, #0x3a]
	adds r0, r3, #0
	adds r0, #0x40
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #4
	strb r2, [r0]
	movs r5, #0
	ldr r0, [r4]
	adds r0, #0x47
	ldrb r0, [r0]
	cmp r5, r0
	blo _0805C79A
	b _0805C894
_0805C79A:
	ldr r7, _0805C7E4
	ldr r6, _0805C7E8
	movs r2, #0xaa
	lsls r2, r2, #1
	adds r2, r2, r6
	mov r8, r2
_0805C7A6:
	ldr r0, [r7]
	lsls r1, r5, #2
	adds r1, r1, r5
	lsls r1, r1, #4
	adds r2, r1, r0
	adds r3, r2, #0
	adds r3, #0x47
	ldrb r0, [r3]
	cmp r0, #0
	beq _0805C884
	adds r0, r2, #0
	adds r0, #0x4c
	ldrb r0, [r0]
	cmp r0, #0
	beq _0805C884
	movs r0, #0
	strb r0, [r3]
	ldr r0, [r7]
	adds r0, r1, r0
	adds r0, #0x48
	ldrb r0, [r0]
	cmp r0, #0
	blt _0805C880
	cmp r0, #1
	ble _0805C7EC
	cmp r0, #2
	beq _0805C870
	b _0805C880
	.align 2, 0
_0805C7E0: .4byte 0x00003220
_0805C7E4: .4byte 0x0203F988
_0805C7E8: .4byte 0x080CE440
_0805C7EC:
	ldr r0, _0805C838
	ldrb r0, [r0]
	cmp r0, #0
	beq _0805C816
	movs r3, #0xa8
	lsls r3, r3, #1
	adds r0, r6, r3
	ldrh r0, [r0]
	ldr r2, _0805C83C
	adds r3, #2
	adds r1, r6, r3
	ldrb r2, [r2]
	adds r1, r1, r2
	ldrb r1, [r1]
	mov r3, r8
	ldr r2, [r3]
	movs r3, #0x80
	lsls r3, r3, #9
	adds r2, r2, r3
	bl audio_new_fx
_0805C816:
	ldr r1, _0805C840
	ldrb r0, [r1]
	adds r2, r0, #1
	strb r2, [r1]
	ldr r0, _0805C844
	ldrb r0, [r0]
	cmp r0, #2
	beq _0805C880
	ldr r0, _0805C848
	ldrb r0, [r0]
	cmp r0, #7
	beq _0805C850
	cmp r0, #7
	bgt _0805C84C
	cmp r0, #6
	beq _0805C850
	b _0805C880
	.align 2, 0
_0805C838: .4byte gCanPlaySfx
_0805C83C: .4byte gSfxVolume
_0805C840: .4byte 0x0203F93A
_0805C844: .4byte 0x0203F940
_0805C848: .4byte 0x0203F93F
_0805C84C:
	cmp r0, #8
	bne _0805C880
_0805C850:
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xb
	bls _0805C880
	ldr r0, _0805C86C
	ldrb r0, [r0, #0x13]
	cmp r0, #0
	beq _0805C880
	ldr r0, [r4]
	adds r0, #0x49
	movs r1, #1
	strb r1, [r0]
	b _0805C880
	.align 2, 0
_0805C86C: .4byte gGameStatus
_0805C870:
	ldr r1, [r4]
	adds r0, r1, #0
	adds r0, #0x49
	ldrb r0, [r0]
	cmp r0, #0
	bne _0805C880
	movs r0, #0x78
	strh r0, [r1, #0x3c]
_0805C880:
	bl sub_80524D8
_0805C884:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	ldr r0, [r4]
	adds r0, #0x47
	ldrb r0, [r0]
	cmp r5, r0
	blo _0805C7A6
_0805C894:
	ldr r0, _0805C8A4
	ldr r0, [r0]
_0805C898:
	ldr r1, _0805C8A8
_0805C89A:
	movs r2, #0
	movs r3, #1
	bl sub_8003368
	b _0805C8BE
	.align 2, 0
_0805C8A4: .4byte 0x0203F920
_0805C8A8: .4byte 0x000004E5
_0805C8AC:
	ldr r5, _0805C8C8
	adds r0, r5, #0
	adds r1, r1, r0
	strh r1, [r3, #0x3a]
	adds r1, r3, #0
	adds r1, #0x42
	ldrh r2, [r1]
	adds r0, r0, r2
_0805C8BC:
	strh r0, [r1]
_0805C8BE:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805C8C8: .4byte 0xFFFFFDE0

	.thumb
sub_805C8CC: @ 0x0805C8CC
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r0, #0x48
	ldrb r0, [r0]
	cmp r0, #1
	beq _0805C924
	cmp r0, #1
	bgt _0805C8E2
	cmp r0, #0
	beq _0805C8E8
	b _0805C96A
_0805C8E2:
	cmp r0, #2
	beq _0805C960
	b _0805C96A
_0805C8E8:
	adds r6, r4, #0
	adds r6, #0x49
	ldrb r0, [r6]
	cmp r0, #0
	bne _0805C910
	movs r2, #0
	adds r0, r4, #0
	adds r0, #0x4a
	ldrb r1, [r0]
	adds r5, r0, #0
	cmp r1, #0
	bne _0805C902
	movs r2, #1
_0805C902:
	strb r2, [r5]
	movs r0, #0x14
	movs r1, #0x28
	bl RandomMinMax
	strb r0, [r6]
	b _0805C918
_0805C910:
	subs r0, #1
	strb r0, [r6]
	adds r5, r4, #0
	adds r5, #0x4a
_0805C918:
	ldrb r0, [r5]
	cmp r0, #0
	beq _0805C960
	ldr r0, [r4, #0x38]
	ldr r1, [r4, #0x40]
	b _0805C964
_0805C924:
	adds r6, r4, #0
	adds r6, #0x49
	ldrb r0, [r6]
	cmp r0, #0
	bne _0805C94C
	movs r2, #0
	adds r0, r4, #0
	adds r0, #0x4a
	ldrb r1, [r0]
	adds r5, r0, #0
	cmp r1, #0
	bne _0805C93E
	movs r2, #1
_0805C93E:
	strb r2, [r5]
	movs r0, #0x14
	movs r1, #0x28
	bl RandomMinMax
	strb r0, [r6]
	b _0805C954
_0805C94C:
	subs r0, #1
	strb r0, [r6]
	adds r5, r4, #0
	adds r5, #0x4a
_0805C954:
	ldrb r0, [r5]
	cmp r0, #0
	beq _0805C960
	ldr r0, [r4, #0x38]
	ldr r1, [r4, #0x40]
	b _0805C964
_0805C960:
	ldr r0, [r4, #0x38]
	ldr r1, [r4, #0x3c]
_0805C964:
	adds r0, r0, r1
	str r0, [r4, #0x38]
	b _0805C96E
_0805C96A:
	.2byte 0xEE00, 0xEE00
_0805C96E:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

    .thumb
sub_0805C974: @ 0x0805C974
	push {lr}
	adds r2, r0, #0
	adds r0, #0x48
	ldrb r0, [r0]
	cmp r0, #1
	beq _0805C9A6
	cmp r0, #1
	bgt _0805C98A
	cmp r0, #0
	beq _0805C990
	b _0805C9DC
_0805C98A:
	cmp r0, #2
	beq _0805C9BC
	b _0805C9DC
_0805C990:
	ldr r0, [r2, #0x3c]
	cmp r0, #0
	ble _0805C9A0
	ldr r1, _0805C99C
	b _0805C9D0
	.align 2, 0
_0805C99C: .4byte 0x000002E1
_0805C9A0:
	movs r1, #0xb8
	lsls r1, r1, #2
	b _0805C9D0
_0805C9A6:
	ldr r0, [r2, #0x3c]
	cmp r0, #0
	ble _0805C9B4
	ldr r1, _0805C9B0
	b _0805C9D0
	.align 2, 0
_0805C9B0: .4byte 0x000004E3
_0805C9B4:
	ldr r1, _0805C9B8
	b _0805C9D0
	.align 2, 0
_0805C9B8: .4byte 0x000004E2
_0805C9BC:
	ldr r0, [r2, #0x3c]
	cmp r0, #0
	ble _0805C9CC
	ldr r1, _0805C9C8
	b _0805C9D0
	.align 2, 0
_0805C9C8: .4byte 0x000004E1
_0805C9CC:
	movs r1, #0x9c
	lsls r1, r1, #3
_0805C9D0:
	adds r0, r2, #0
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	b _0805C9E0
_0805C9DC:
	.2byte 0xEE00, 0xEE00
_0805C9E0:
	pop {r0}
	bx r0

	.thumb
sub_805C9E4: @ 0x0805C9E4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r0, #0
	mov sb, r0
	ldr r2, _0805CA4C
	ldr r0, [r2]
	adds r0, #0x47
	ldrb r0, [r0]
	cmp sb, r0
	blo _0805CA00
	b _0805CC40
_0805CA00:
	ldr r1, _0805CA50
	mov r8, r1
_0805CA04:
	mov r3, sb
	lsls r1, r3, #2
	adds r0, r1, r3
	lsls r4, r0, #4
	mov r3, r8
	ldr r0, [r3]
	adds r5, r0, r4
	adds r0, r5, #0
	adds r0, #0x47
	ldrb r0, [r0]
	mov sl, r1
	cmp r0, #0
	bne _0805CA20
	b _0805CC28
_0805CA20:
	adds r3, r5, #0
	adds r3, #0x44
	ldrh r1, [r3]
	cmp r1, #0
	beq _0805CA54
	ldr r0, [r2]
	adds r2, r0, #0
	adds r2, #0x48
	ldrb r0, [r2]
	cmp r0, #0
	beq _0805CA38
	b _0805CC28
_0805CA38:
	subs r0, r1, #1
	strh r0, [r3]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0805CA44
	b _0805CC28
_0805CA44:
	movs r0, #0x3c
	strb r0, [r2]
	b _0805CC28
	.align 2, 0
_0805CA4C: .4byte 0x0203F984
_0805CA50: .4byte 0x0203F988
_0805CA54:
	adds r0, r5, #0
	bl sub_805C8CC
	movs r1, #0x3a
	ldrsh r0, [r5, r1]
	adds r0, #0x1e
	movs r1, #0x96
	lsls r1, r1, #1
	adds r6, r5, #0
	adds r6, #0x48
	cmp r0, r1
	bls _0805CAB0
	ldrb r0, [r6]
	cmp r0, #1
	beq _0805CA8E
	cmp r0, #1
	bgt _0805CA7C
	cmp r0, #0
	beq _0805CA82
	b _0805CAAC
_0805CA7C:
	cmp r0, #2
	beq _0805CA9A
	b _0805CAAC
_0805CA82:
	mov r2, r8
	ldr r0, [r2]
	adds r0, r0, r4
	bl sub_805C178
	b _0805CAA4
_0805CA8E:
	mov r3, r8
	ldr r0, [r3]
	adds r0, r0, r4
	bl sub_805C178
	b _0805CAA4
_0805CA9A:
	mov r1, r8
	ldr r0, [r1]
	adds r0, r0, r4
	bl sub_805C2F0
_0805CAA4:
	adds r0, r5, #0
	bl sub_0805C974
	b _0805CAB0
_0805CAAC:
	.2byte 0xEE00, 0xEE00
_0805CAB0:
	ldrb r6, [r6]
	cmp r6, #1
	beq _0805CB2C
	cmp r6, #1
	bgt _0805CAC0
	cmp r6, #0
	beq _0805CAC6
	b _0805CC24
_0805CAC0:
	cmp r6, #2
	beq _0805CBA8
	b _0805CC24
_0805CAC6:
	ldr r7, _0805CB28
	ldr r4, [r7]
	adds r0, r4, #0
	adds r0, #0x46
	ldrb r0, [r0]
	cmp r0, #3
	beq _0805CAD6
	b _0805CC28
_0805CAD6:
	movs r2, #0x3a
	ldrsh r3, [r5, r2]
	adds r0, r3, #7
	ldrh r1, [r4, #0x38]
	lsrs r2, r1, #8
	adds r1, r2, #0
	subs r1, #8
	cmp r0, r1
	bgt _0805CAEA
	b _0805CC28
_0805CAEA:
	subs r1, r3, #7
	adds r0, r2, #0
	adds r0, #8
	cmp r1, r0
	blt _0805CAF6
	b _0805CC28
_0805CAF6:
	adds r0, r5, #0
	adds r0, #0x46
	ldrb r3, [r0]
	adds r0, r3, #0
	adds r0, #8
	ldrh r1, [r4, #0x3a]
	lsrs r2, r1, #8
	subs r1, r2, #6
	cmp r0, r1
	bgt _0805CB0C
	b _0805CC28
_0805CB0C:
	adds r1, r3, #0
	subs r1, #0x10
	adds r0, r2, #6
	cmp r1, r0
	blt _0805CB18
	b _0805CC28
_0805CB18:
	adds r1, r5, #0
	adds r1, #0x4c
	movs r0, #1
	strb r0, [r1]
	ldr r0, [r7]
	adds r0, #0x40
	strh r6, [r0]
	b _0805CC28
	.align 2, 0
_0805CB28: .4byte 0x0203F984
_0805CB2C:
	ldr r7, _0805CBA4
	ldr r4, [r7]
	adds r0, r4, #0
	adds r0, #0x46
	ldrb r0, [r0]
	cmp r0, #3
	bne _0805CC28
	movs r0, #0x3a
	ldrsh r3, [r5, r0]
	adds r0, r3, #0
	adds r0, #0xc
	ldrh r1, [r4, #0x38]
	lsrs r2, r1, #8
	adds r1, r2, #0
	subs r1, #8
	cmp r0, r1
	ble _0805CC28
	adds r1, r3, #0
	subs r1, #0xc
	adds r0, r2, #0
	adds r0, #8
	cmp r1, r0
	bge _0805CC28
	adds r0, r5, #0
	adds r0, #0x46
	ldrb r3, [r0]
	adds r0, r3, #0
	adds r0, #8
	ldrh r1, [r4, #0x3a]
	lsrs r2, r1, #8
	subs r1, r2, #6
	cmp r0, r1
	ble _0805CC28
	adds r1, r3, #0
	subs r1, #8
	adds r0, r2, #6
	cmp r1, r0
	bge _0805CC28
	mov r1, r8
	ldr r0, [r1]
	mov r1, sl
	add r1, sb
	lsls r1, r1, #4
	adds r0, r1, r0
	movs r2, #0
	strb r2, [r0, #0x10]
	mov r3, r8
	ldr r0, [r3]
	adds r0, r0, r1
	movs r1, #0
	bl SetSpritePriority
	adds r0, r5, #0
	adds r0, #0x4c
	strb r6, [r0]
	ldr r0, [r7]
	adds r0, #0x40
	movs r1, #0
	strh r1, [r0]
	b _0805CC28
	.align 2, 0
_0805CBA4: .4byte 0x0203F984
_0805CBA8:
	ldr r6, _0805CC20
	ldr r4, [r6]
	adds r0, r4, #0
	adds r0, #0x46
	ldrb r0, [r0]
	cmp r0, #3
	bne _0805CC28
	movs r2, #0x3a
	ldrsh r3, [r5, r2]
	adds r0, r3, #0
	adds r0, #0xf
	ldrh r1, [r4, #0x38]
	lsrs r2, r1, #8
	adds r1, r2, #0
	subs r1, #8
	cmp r0, r1
	ble _0805CC28
	adds r1, r3, #0
	subs r1, #0xf
	adds r0, r2, #0
	adds r0, #8
	cmp r1, r0
	bge _0805CC28
	adds r0, r5, #0
	adds r0, #0x46
	ldrb r3, [r0]
	adds r0, r3, #0
	adds r0, #8
	ldrh r1, [r4, #0x3a]
	lsrs r2, r1, #8
	subs r1, r2, #6
	cmp r0, r1
	ble _0805CC28
	adds r1, r3, #0
	subs r1, #8
	adds r0, r2, #6
	cmp r1, r0
	bge _0805CC28
	mov r3, r8
	ldr r0, [r3]
	mov r1, sl
	add r1, sb
	lsls r1, r1, #4
	adds r0, r1, r0
	movs r2, #0
	strb r2, [r0, #0x10]
	ldr r0, [r3]
	adds r0, r0, r1
	movs r1, #0
	bl SetSpritePriority
	adds r1, r5, #0
	adds r1, #0x4c
	movs r0, #1
	strb r0, [r1]
	ldr r0, [r6]
	adds r0, #0x40
	movs r3, #0
	strh r3, [r0]
	b _0805CC28
	.align 2, 0
_0805CC20: .4byte 0x0203F984
_0805CC24:
	.2byte 0xEE00, 0xEE00
_0805CC28:
	mov r0, sb
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
	ldr r2, _0805CC60
	ldr r0, [r2]
	adds r0, #0x47
	ldrb r0, [r0]
	cmp sb, r0
	bhs _0805CC40
	b _0805CA04
_0805CC40:
	ldr r1, _0805CC60
	ldr r0, [r1]
	adds r1, r0, #0
	adds r1, #0x48
	ldrb r0, [r1]
	cmp r0, #0
	beq _0805CC52
	subs r0, #1
	strb r0, [r1]
_0805CC52:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805CC60: .4byte 0x0203F984

	.thumb
sub_805CC64: @ 0x0805CC64
	push {r4, r5, lr}
	ldr r0, _0805CC7C
	ldrb r0, [r0]
	cmp r0, #5
	bls _0805CC70
	b _0805D14C
_0805CC70:
	lsls r0, r0, #2
	ldr r1, _0805CC80
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0805CC7C: .4byte 0x0203F93D
_0805CC80: .4byte 0x0805CC84
_0805CC84: @ jump table
	.4byte _0805CC9C @ case 0
	.4byte _0805CD0C @ case 1
	.4byte _0805CFE0 @ case 2
	.4byte _0805D01E @ case 3
	.4byte _0805CFD8 @ case 4
	.4byte _0805D028 @ case 5
_0805CC9C:
	ldr r1, _0805CCC8
	ldr r0, _0805CCCC
	ldrh r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #4
	ands r0, r1
	cmp r0, #0
	beq _0805CCB4
	b _0805D150
_0805CCB4:
	ldr r0, _0805CCD0
	ldrb r0, [r0]
	cmp r0, #7
	beq _0805CCE4
	cmp r0, #7
	bgt _0805CCD4
	cmp r0, #6
	beq _0805CCDA
	b _0805CCF8
	.align 2, 0
_0805CCC8: .4byte gPlayerStateSettings
_0805CCCC: .4byte gPlayerState
_0805CCD0: .4byte 0x0203F93F
_0805CCD4:
	cmp r0, #8
	beq _0805CCEC
	b _0805CCF8
_0805CCDA:
	ldr r0, _0805CCE0
	b _0805CCF0
	.align 2, 0
_0805CCE0: .4byte 0x00000BB8
_0805CCE4:
	ldr r0, _0805CCE8
	b _0805CCF0
	.align 2, 0
_0805CCE8: .4byte 0x00000A8C
_0805CCEC:
	movs r0, #0x96
	lsls r0, r0, #4
_0805CCF0:
	movs r1, #0
	bl sub_80630C0
	b _0805CCFC
_0805CCF8:
	.2byte 0xEE00, 0xEE00
_0805CCFC:
	bl sub_80524D8
	ldr r1, _0805CD08
	movs r0, #1
	strb r0, [r1]
	b _0805D150
	.align 2, 0
_0805CD08: .4byte 0x0203F93D
_0805CD0C:
	ldr r4, _0805CD2C
	ldr r0, [r4]
	adds r0, #0x49
	ldrb r0, [r0]
	cmp r0, #0
	bne _0805CD1A
	b _0805CEFA
_0805CD1A:
	ldr r0, _0805CD30
	ldrb r0, [r0]
	cmp r0, #7
	beq _0805CD9C
	cmp r0, #7
	bgt _0805CD34
	cmp r0, #6
	beq _0805CD3A
	b _0805CE9C
	.align 2, 0
_0805CD2C: .4byte 0x0203F984
_0805CD30: .4byte 0x0203F93F
_0805CD34:
	cmp r0, #8
	beq _0805CDFA
	b _0805CE9C
_0805CD3A:
	ldr r2, _0805CD78
	movs r1, #0
	ldr r0, _0805CD7C
	ldrb r0, [r0]
	cmp r0, #0xb
	bls _0805CD48
	movs r1, #1
_0805CD48:
	strb r1, [r2]
	cmp r1, #0
	beq _0805CD94
	movs r5, #0x9a
	lsls r5, r5, #1
	ldr r0, _0805CD80
	ldrb r0, [r0]
	cmp r0, #0
	bne _0805CD5C
	b _0805CE9E
_0805CD5C:
	ldr r2, _0805CD84
	movs r1, #0xb2
	lsls r1, r1, #3
	adds r0, r2, r1
	ldrh r0, [r0]
	ldr r3, _0805CD88
	ldr r4, _0805CD8C
	adds r1, r2, r4
	ldrb r3, [r3]
	adds r1, r1, r3
	ldrb r1, [r1]
	ldr r3, _0805CD90
	b _0805CE72
	.align 2, 0
_0805CD78: .4byte 0x0203F941
_0805CD7C: .4byte 0x0203F93A
_0805CD80: .4byte gCanPlaySfx
_0805CD84: .4byte 0x080CE440
_0805CD88: .4byte gSfxVolume
_0805CD8C: .4byte 0x00000592
_0805CD90: .4byte 0x00000594
_0805CD94:
	ldr r5, _0805CD98
	b _0805CE52
	.align 2, 0
_0805CD98: .4byte 0x00000135
_0805CD9C:
	ldr r2, _0805CDD4
	movs r1, #0
	ldr r0, _0805CDD8
	ldrb r0, [r0]
	cmp r0, #0xb
	bls _0805CDAA
	movs r1, #1
_0805CDAA:
	strb r1, [r2]
	cmp r1, #0
	beq _0805CDF4
	ldr r5, _0805CDDC
	ldr r0, _0805CDE0
	ldrb r0, [r0]
	cmp r0, #0
	beq _0805CE9E
	ldr r2, _0805CDE4
	movs r1, #0xb2
	lsls r1, r1, #3
	adds r0, r2, r1
	ldrh r0, [r0]
	ldr r3, _0805CDE8
	ldr r4, _0805CDEC
	adds r1, r2, r4
	ldrb r3, [r3]
	adds r1, r1, r3
	ldrb r1, [r1]
	ldr r3, _0805CDF0
	b _0805CE72
	.align 2, 0
_0805CDD4: .4byte 0x0203F941
_0805CDD8: .4byte 0x0203F93A
_0805CDDC: .4byte 0x00000137
_0805CDE0: .4byte gCanPlaySfx
_0805CDE4: .4byte 0x080CE440
_0805CDE8: .4byte gSfxVolume
_0805CDEC: .4byte 0x00000592
_0805CDF0: .4byte 0x00000594
_0805CDF4:
	movs r5, #0x9c
	lsls r5, r5, #1
	b _0805CE52
_0805CDFA:
	ldr r2, _0805CE34
	movs r1, #0
	ldr r0, _0805CE38
	ldrb r0, [r0]
	cmp r0, #0xb
	bls _0805CE08
	movs r1, #1
_0805CE08:
	strb r1, [r2]
	cmp r1, #0
	beq _0805CE50
	movs r5, #0x9d
	lsls r5, r5, #1
	ldr r0, _0805CE3C
	ldrb r0, [r0]
	cmp r0, #0
	beq _0805CE9E
	ldr r2, _0805CE40
	movs r1, #0xb2
	lsls r1, r1, #3
	adds r0, r2, r1
	ldrh r0, [r0]
	ldr r3, _0805CE44
	ldr r4, _0805CE48
	adds r1, r2, r4
	ldrb r3, [r3]
	adds r1, r1, r3
	ldrb r1, [r1]
	ldr r3, _0805CE4C
	b _0805CE72
	.align 2, 0
_0805CE34: .4byte 0x0203F941
_0805CE38: .4byte 0x0203F93A
_0805CE3C: .4byte gCanPlaySfx
_0805CE40: .4byte 0x080CE440
_0805CE44: .4byte gSfxVolume
_0805CE48: .4byte 0x00000592
_0805CE4C: .4byte 0x00000594
_0805CE50:
	ldr r5, _0805CE84
_0805CE52:
	ldr r0, _0805CE88
	ldrb r0, [r0]
	cmp r0, #0
	beq _0805CE9E
	ldr r2, _0805CE8C
	movs r1, #0xb1
	lsls r1, r1, #3
	adds r0, r2, r1
	ldrh r0, [r0]
	ldr r3, _0805CE90
	ldr r4, _0805CE94
	adds r1, r2, r4
	ldrb r3, [r3]
	adds r1, r1, r3
	ldrb r1, [r1]
	ldr r3, _0805CE98
_0805CE72:
	adds r2, r2, r3
	ldr r2, [r2]
	movs r4, #0x80
	lsls r4, r4, #9
	adds r2, r2, r4
	bl audio_new_fx
	b _0805CE9E
	.align 2, 0
_0805CE84: .4byte 0x0000013B
_0805CE88: .4byte gCanPlaySfx
_0805CE8C: .4byte 0x080CE440
_0805CE90: .4byte gSfxVolume
_0805CE94: .4byte 0x0000058A
_0805CE98: .4byte 0x0000058C
_0805CE9C:
	movs r5, #0
_0805CE9E:
	ldr r0, _0805CEBC
	ldrb r4, [r0]
	cmp r4, #0
	beq _0805CEC8
	cmp r4, #0
	blt _0805CEEC
	cmp r4, #2
	bgt _0805CEEC
	ldr r1, _0805CEC0
	movs r0, #2
	strb r0, [r1]
	ldr r1, _0805CEC4
	movs r0, #0x5a
	strb r0, [r1]
	b _0805CEEC
	.align 2, 0
_0805CEBC: .4byte 0x0203F940
_0805CEC0: .4byte 0x0203F93D
_0805CEC4: .4byte 0x0203F93C
_0805CEC8:
	adds r0, r5, #0
	bl sub_0802FEDC
	cmp r0, #0
	beq _0805CEE8
	ldr r0, _0805CEE0
	movs r1, #2
	strb r1, [r0]
	ldr r0, _0805CEE4
	strb r4, [r0]
	b _0805CEEC
	.align 2, 0
_0805CEE0: .4byte 0x0203F93D
_0805CEE4: .4byte 0x0203F93C
_0805CEE8:
	.2byte 0xEE00, 0xEE00
_0805CEEC:
	bl sub_8041E58
	bl sub_8063178
	bl sub_80524D8
	b _0805D150
_0805CEFA:
	ldr r1, _0805CF30
	ldr r0, _0805CF34
	ldrh r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #4
	ands r0, r1
	cmp r0, #0
	bne _0805CFD2
	ldr r0, _0805CF38
	ldrb r0, [r0, #0x13]
	cmp r0, #0
	beq _0805CFC8
	bl sub_805C640
	ldr r0, [r4]
	adds r0, #0x46
	ldrb r0, [r0]
	cmp r0, #0
	beq _0805CF3C
	cmp r0, #1
	beq _0805CF40
	movs r4, #0
	b _0805CF42
	.align 2, 0
_0805CF30: .4byte gPlayerStateSettings
_0805CF34: .4byte gPlayerState
_0805CF38: .4byte gGameStatus
_0805CF3C:
	movs r4, #0xc8
	b _0805CF42
_0805CF40:
	movs r4, #0x64
_0805CF42:
	ldr r3, _0805CFAC
	ldr r0, [r3]
	adds r0, #0x45
	movs r1, #0
	strb r1, [r0]
	ldr r2, _0805CFB0
	ldrh r1, [r2]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0805CF74
	ldr r0, _0805CFB4
	ldr r0, [r0]
	ldr r1, _0805CFB8
	ldrh r0, [r0, #6]
	ldrb r1, [r1]
	cmp r0, r1
	bls _0805CF74
	ldr r0, [r3]
	ldrh r1, [r0, #0x38]
	subs r1, r1, r4
	strh r1, [r0, #0x38]
	adds r0, #0x45
	movs r1, #1
	strb r1, [r0]
_0805CF74:
	ldrh r1, [r2]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0805CF9A
	ldr r0, _0805CFB4
	ldr r0, [r0]
	ldr r1, _0805CFBC
	ldrh r0, [r0, #6]
	ldrb r1, [r1]
	cmp r0, r1
	bhs _0805CF9A
	ldr r0, [r3]
	ldrh r1, [r0, #0x38]
	adds r1, r4, r1
	strh r1, [r0, #0x38]
	adds r0, #0x45
	movs r1, #1
	strb r1, [r0]
_0805CF9A:
	ldr r0, [r3]
	cmp r4, #0
	beq _0805CFC0
	adds r2, r0, #0
	adds r2, #0x45
	ldrb r1, [r2]
	movs r0, #1
	ands r1, r0
	b _0805CFC6
	.align 2, 0
_0805CFAC: .4byte 0x0203F984
_0805CFB0: .4byte gKeysPressed
_0805CFB4: .4byte 0x0203F920
_0805CFB8: .4byte 0x0203F936
_0805CFBC: .4byte 0x0203F937
_0805CFC0:
	movs r1, #0
	adds r2, r0, #0
	adds r2, #0x45
_0805CFC6:
	strb r1, [r2]
_0805CFC8:
	movs r0, #4
	bl sub_8052960
	bl sub_8052288
_0805CFD2:
	bl sub_805C9E4
	b _0805D150
_0805CFD8:
	movs r0, #5
	bl sub_8052834
	b _0805D150
_0805CFE0:
	ldr r1, _0805D00C
	ldrb r0, [r1]
	cmp r0, #0
	bne _0805D018
	ldr r1, _0805D010
	ldr r0, _0805D014
	ldrh r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #4
	ands r0, r1
	cmp r0, #0
	beq _0805D000
	b _0805D150
_0805D000:
	movs r0, #3
	movs r1, #5
	bl sub_80527A8
	b _0805D150
	.align 2, 0
_0805D00C: .4byte 0x0203F93C
_0805D010: .4byte gPlayerStateSettings
_0805D014: .4byte gPlayerState
_0805D018:
	subs r0, #1
	strb r0, [r1]
	b _0805D150
_0805D01E:
	movs r0, #5
	movs r1, #5
	bl sub_8052894
	b _0805D150
_0805D028:
	bl sub_8041E58
	bl sub_8063178
	ldr r0, _0805D0A0
	ldr r0, [r0]
	movs r1, #3
	bl Free
	ldr r0, _0805D0A4
	ldr r0, [r0]
	movs r1, #3
	bl Free
	ldr r0, _0805D0A8
	ldr r0, [r0]
	movs r1, #3
	bl Free
	ldr r0, _0805D0AC
	ldr r0, [r0]
	movs r1, #3
	bl Free
	ldr r0, _0805D0B0
	movs r2, #0
	strb r2, [r0]
	ldr r1, _0805D0B4
	ldr r0, _0805D0B8
	str r0, [r1]
	ldr r1, _0805D0BC
	ldr r0, _0805D0C0
	str r0, [r1]
	ldr r1, _0805D0C4
	ldr r0, _0805D0C8
	str r0, [r1]
	ldr r0, _0805D0CC
	strb r2, [r0]
	ldr r0, _0805D0D0
	ldr r0, [r0]
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_8003884
	ldr r0, _0805D0D4
	movs r1, #1
	bl sub_80270AC
	ldr r0, _0805D0D8
	ldr r0, [r0]
	cmp r0, #0
	beq _0805D0E4
	ldr r0, _0805D0DC
	ldrb r0, [r0]
	ldr r1, _0805D0E0
	ldrb r1, [r1]
	bl sub_0805BA1C
	b _0805D150
	.align 2, 0
_0805D0A0: .4byte 0x0203F920
_0805D0A4: .4byte 0x0203F984
_0805D0A8: .4byte gMatrices
_0805D0AC: .4byte 0x0203F988
_0805D0B0: .4byte byte_20020B3
_0805D0B4: .4byte gNullsub_3
_0805D0B8: .4byte 0x08009DD5
_0805D0BC: .4byte gNullsub_4
_0805D0C0: .4byte 0x08009DD9
_0805D0C4: .4byte gNullsub_5
_0805D0C8: .4byte 0x08009DDD
_0805D0CC: .4byte gIsSlideMiniGame
_0805D0D0: .4byte dword_2000FC8
_0805D0D4: .4byte 0x00000FFF
_0805D0D8: .4byte 0x0203F928
_0805D0DC: .4byte 0x0203F93F
_0805D0E0: .4byte 0x0203F940
_0805D0E4:
	ldr r0, _0805D0F8
	ldrb r0, [r0]
	cmp r0, #1
	beq _0805D11C
	cmp r0, #1
	bgt _0805D0FC
	cmp r0, #0
	beq _0805D102
	b _0805D150
	.align 2, 0
_0805D0F8: .4byte 0x0203F940
_0805D0FC:
	cmp r0, #2
	beq _0805D134
	b _0805D150
_0805D102:
	ldr r0, _0805D114
	ldrb r0, [r0]
	ldr r1, _0805D118
	ldrb r1, [r1]
	movs r2, #0
	bl sub_800D5FC
	b _0805D150
	.align 2, 0
_0805D114: .4byte 0x0203F93F
_0805D118: .4byte 0x0203F941
_0805D11C:
	ldr r0, _0805D12C
	ldrb r0, [r0]
	ldr r1, _0805D130
	ldrb r1, [r1]
	movs r2, #0
	bl sub_800D8E8
	b _0805D150
	.align 2, 0
_0805D12C: .4byte 0x0203F93F
_0805D130: .4byte 0x0203F941
_0805D134:
	ldr r0, _0805D144
	ldrb r0, [r0]
	ldr r1, _0805D148
	ldrb r1, [r1]
	movs r2, #0
	bl sub_800DA04
	b _0805D150
	.align 2, 0
_0805D144: .4byte 0x0203F93F
_0805D148: .4byte 0x0203F941
_0805D14C:
	.2byte 0xEE00, 0xEE00
_0805D150:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

    .thumb
    .global sub_805D158
sub_805D158: @ 0x0805D158
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r0, #0
	ldr r3, _0805D1C4
	ldr r4, _0805D1C8
	ldr r5, _0805D1CC
	ldr r6, _0805D1D0
	ldr r7, _0805D1D4
	ldr r1, _0805D1D8
	mov ip, r1
	ldr r2, _0805D1DC
	mov sb, r2
	ldr r1, _0805D1E0
	mov sl, r1
	ldr r2, _0805D1E4
	mov r8, r2
	ldr r2, _0805D1E8
	movs r1, #0
_0805D182:
	strb r1, [r2]
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _0805D182
	movs r0, #0
	strb r0, [r3]
	movs r2, #1
	rsbs r2, r2, #0
	adds r1, r2, #0
	strh r1, [r4]
	strh r1, [r5]
	strb r0, [r6]
	strb r0, [r7]
	mov r1, ip
	strb r0, [r1]
	mov r2, sb
	strb r0, [r2]
	mov r1, sl
	strb r0, [r1]
	ldr r2, _0805D1EC
	strb r0, [r2]
	mov r1, r8
	strb r0, [r1]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805D1C4: .4byte byte_203F99C
_0805D1C8: .4byte word_203F998
_0805D1CC: .4byte word_203F99A
_0805D1D0: .4byte byte_203F9A1
_0805D1D4: .4byte 0x0203FA14
_0805D1D8: .4byte 0x0203F9A0
_0805D1DC: .4byte byte_203F99F
_0805D1E0: .4byte 0x0203FA15
_0805D1E4: .4byte 0x0203FA16
_0805D1E8: .4byte 0x0203FA16
_0805D1EC: .4byte 0x0203F9A2

    .thumb
    .global init_function
init_function: @ 0x0805D1F0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	movs r3, #0
	movs r2, #0
	ldr r4, _0805D27C
	ldr r0, _0805D280
	mov ip, r0
	ldr r0, _0805D284
	mov r8, r0
	ldr r7, _0805D288
	adds r6, r4, #0
_0805D20A:
	lsls r0, r2, #2
	adds r0, r0, r2
	lsls r0, r0, #3
	adds r1, r0, r7
	adds r0, r1, #0
	adds r0, #0x22
	ldrb r0, [r0]
	cmp r0, #0
	bne _0805D220
	str r1, [r6]
	movs r3, #1
_0805D220:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r3, #0
	bne _0805D232
	cmp r2, #1
	bls _0805D20A
	.2byte 0xEE00, 0xEE00
_0805D232:
	ldr r0, [r4]
	movs r1, #0
	str r1, [r0, #0x14]
	movs r3, #0
	strh r5, [r0, #0x18]
	strh r5, [r0, #0x1a]
	strh r1, [r0, #0x1c]
	adds r0, #0x21
	strb r3, [r0]
	ldr r0, [r4]
	adds r0, #0x22
	movs r2, #1
	strb r2, [r0]
	ldr r0, [r4]
	strh r1, [r0, #0x1e]
	adds r0, #0x20
	strb r3, [r0]
	ldr r0, [r4]
	adds r0, #0x24
	strb r3, [r0]
	ldr r0, [r4]
	adds r0, #0x25
	movs r1, #0xff
	strb r1, [r0]
	mov r0, ip
	strb r2, [r0]
	mov r0, r8
	strb r2, [r0]
	subs r0, r5, #3
	cmp r0, #0xb1
	bls _0805D272
	b _0805D55C
_0805D272:
	lsls r0, r0, #2
	ldr r1, _0805D28C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0805D27C: .4byte 0x0203F9F4
_0805D280: .4byte byte_203F99E
_0805D284: .4byte byte_203F99C
_0805D288: .4byte 0x0203F9A4
_0805D28C: .4byte 0x0805D290
_0805D290: @ jump table
	.4byte _0805D558 @ case 0
	.4byte _0805D55C @ case 1
	.4byte _0805D55C @ case 2
	.4byte _0805D558 @ case 3
	.4byte _0805D55C @ case 4
	.4byte _0805D55C @ case 5
	.4byte _0805D55C @ case 6
	.4byte _0805D55C @ case 7
	.4byte _0805D55C @ case 8
	.4byte _0805D55C @ case 9
	.4byte _0805D55C @ case 10
	.4byte _0805D55C @ case 11
	.4byte _0805D55C @ case 12
	.4byte _0805D55C @ case 13
	.4byte _0805D55C @ case 14
	.4byte _0805D55C @ case 15
	.4byte _0805D55C @ case 16
	.4byte _0805D55C @ case 17
	.4byte _0805D55C @ case 18
	.4byte _0805D55C @ case 19
	.4byte _0805D55C @ case 20
	.4byte _0805D55C @ case 21
	.4byte _0805D55C @ case 22
	.4byte _0805D55C @ case 23
	.4byte _0805D55C @ case 24
	.4byte _0805D55C @ case 25
	.4byte _0805D55C @ case 26
	.4byte _0805D55C @ case 27
	.4byte _0805D558 @ case 28
	.4byte _0805D55C @ case 29
	.4byte _0805D55C @ case 30
	.4byte _0805D55C @ case 31
	.4byte _0805D55C @ case 32
	.4byte _0805D55C @ case 33
	.4byte _0805D55C @ case 34
	.4byte _0805D55C @ case 35
	.4byte _0805D55C @ case 36
	.4byte _0805D55C @ case 37
	.4byte _0805D558 @ case 38
	.4byte _0805D558 @ case 39
	.4byte _0805D55C @ case 40
	.4byte _0805D55C @ case 41
	.4byte _0805D558 @ case 42
	.4byte _0805D55C @ case 43
	.4byte _0805D558 @ case 44
	.4byte _0805D55C @ case 45
	.4byte _0805D55C @ case 46
	.4byte _0805D558 @ case 47
	.4byte _0805D55C @ case 48
	.4byte _0805D55C @ case 49
	.4byte _0805D55C @ case 50
	.4byte _0805D55C @ case 51
	.4byte _0805D55C @ case 52
	.4byte _0805D55C @ case 53
	.4byte _0805D55C @ case 54
	.4byte _0805D55C @ case 55
	.4byte _0805D55C @ case 56
	.4byte _0805D55C @ case 57
	.4byte _0805D55C @ case 58
	.4byte _0805D55C @ case 59
	.4byte _0805D55C @ case 60
	.4byte _0805D55C @ case 61
	.4byte _0805D558 @ case 62
	.4byte _0805D55C @ case 63
	.4byte _0805D55C @ case 64
	.4byte _0805D558 @ case 65
	.4byte _0805D55C @ case 66
	.4byte _0805D55C @ case 67
	.4byte _0805D55C @ case 68
	.4byte _0805D55C @ case 69
	.4byte _0805D55C @ case 70
	.4byte _0805D55C @ case 71
	.4byte _0805D55C @ case 72
	.4byte _0805D55C @ case 73
	.4byte _0805D55C @ case 74
	.4byte _0805D55C @ case 75
	.4byte _0805D55C @ case 76
	.4byte _0805D55C @ case 77
	.4byte _0805D55C @ case 78
	.4byte _0805D55C @ case 79
	.4byte _0805D55C @ case 80
	.4byte _0805D55C @ case 81
	.4byte _0805D55C @ case 82
	.4byte _0805D55C @ case 83
	.4byte _0805D55C @ case 84
	.4byte _0805D55C @ case 85
	.4byte _0805D55C @ case 86
	.4byte _0805D55C @ case 87
	.4byte _0805D55C @ case 88
	.4byte _0805D558 @ case 89
	.4byte _0805D558 @ case 90
	.4byte _0805D558 @ case 91
	.4byte _0805D55C @ case 92
	.4byte _0805D55C @ case 93
	.4byte _0805D558 @ case 94
	.4byte _0805D55C @ case 95
	.4byte _0805D55C @ case 96
	.4byte _0805D55C @ case 97
	.4byte _0805D558 @ case 98
	.4byte _0805D55C @ case 99
	.4byte _0805D55C @ case 100
	.4byte _0805D55C @ case 101
	.4byte _0805D55C @ case 102
	.4byte _0805D55C @ case 103
	.4byte _0805D55C @ case 104
	.4byte _0805D55C @ case 105
	.4byte _0805D55C @ case 106
	.4byte _0805D55C @ case 107
	.4byte _0805D55C @ case 108
	.4byte _0805D55C @ case 109
	.4byte _0805D55C @ case 110
	.4byte _0805D558 @ case 111
	.4byte _0805D55C @ case 112
	.4byte _0805D55C @ case 113
	.4byte _0805D55C @ case 114
	.4byte _0805D55C @ case 115
	.4byte _0805D55C @ case 116
	.4byte _0805D55C @ case 117
	.4byte _0805D55C @ case 118
	.4byte _0805D55C @ case 119
	.4byte _0805D55C @ case 120
	.4byte _0805D55C @ case 121
	.4byte _0805D55C @ case 122
	.4byte _0805D55C @ case 123
	.4byte _0805D55C @ case 124
	.4byte _0805D55C @ case 125
	.4byte _0805D55C @ case 126
	.4byte _0805D55C @ case 127
	.4byte _0805D55C @ case 128
	.4byte _0805D558 @ case 129
	.4byte _0805D558 @ case 130
	.4byte _0805D55C @ case 131
	.4byte _0805D55C @ case 132
	.4byte _0805D55C @ case 133
	.4byte _0805D55C @ case 134
	.4byte _0805D55C @ case 135
	.4byte _0805D55C @ case 136
	.4byte _0805D55C @ case 137
	.4byte _0805D558 @ case 138
	.4byte _0805D55C @ case 139
	.4byte _0805D55C @ case 140
	.4byte _0805D55C @ case 141
	.4byte _0805D55C @ case 142
	.4byte _0805D55C @ case 143
	.4byte _0805D55C @ case 144
	.4byte _0805D55C @ case 145
	.4byte _0805D55C @ case 146
	.4byte _0805D55C @ case 147
	.4byte _0805D55C @ case 148
	.4byte _0805D55C @ case 149
	.4byte _0805D55C @ case 150
	.4byte _0805D55C @ case 151
	.4byte _0805D55C @ case 152
	.4byte _0805D55C @ case 153
	.4byte _0805D55C @ case 154
	.4byte _0805D55C @ case 155
	.4byte _0805D55C @ case 156
	.4byte _0805D55C @ case 157
	.4byte _0805D55C @ case 158
	.4byte _0805D55C @ case 159
	.4byte _0805D55C @ case 160
	.4byte _0805D55C @ case 161
	.4byte _0805D55C @ case 162
	.4byte _0805D55C @ case 163
	.4byte _0805D55C @ case 164
	.4byte _0805D55C @ case 165
	.4byte _0805D55C @ case 166
	.4byte _0805D55C @ case 167
	.4byte _0805D55C @ case 168
	.4byte _0805D55C @ case 169
	.4byte _0805D55C @ case 170
	.4byte _0805D55C @ case 171
	.4byte _0805D55C @ case 172
	.4byte _0805D55C @ case 173
	.4byte _0805D55C @ case 174
	.4byte _0805D558 @ case 175
	.4byte _0805D55C @ case 176
	.4byte _0805D558 @ case 177
_0805D558:
	bl call_functions
_0805D55C:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

    .thumb
sub_805D568: @ 0x0805D568
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r5, _0805D5CC
	movs r1, #0
	strb r1, [r5]
	ldr r4, _0805D5D0
	movs r2, #1
	rsbs r2, r2, #0
	adds r0, r2, #0
	strh r0, [r4]
	ldr r3, _0805D5D4
	strh r0, [r3]
	ldr r0, _0805D5D8
	strb r1, [r0]
	ldr r2, _0805D5DC
	strb r1, [r2]
	movs r6, #0
	mov sb, r5
	mov r8, r4
	adds r7, r3, #0
	adds r5, r0, #0
	ldr r3, _0805D5E0
	adds r4, r2, #0
_0805D59A:
	lsls r0, r6, #2
	adds r1, r0, r6
	lsls r1, r1, #3
	adds r1, r1, r3
	mov ip, r1
	adds r1, #0x22
	ldrb r1, [r1]
	adds r2, r0, #0
	cmp r1, #0
	beq _0805D5EA
	movs r1, #1
	strb r1, [r4]
	mov r0, ip
	adds r0, #0x23
	ldrb r0, [r0]
	cmp r0, #0
	beq _0805D5E4
	mov r0, sb
	strb r1, [r0]
	mov r1, ip
	ldrh r0, [r1, #0x1a]
	mov r1, r8
	strh r0, [r1]
	b _0805D5EA
	.align 2, 0
_0805D5CC: .4byte byte_203F99C
_0805D5D0: .4byte word_203F998
_0805D5D4: .4byte word_203F99A
_0805D5D8: .4byte byte_203F9A1
_0805D5DC: .4byte byte_203F99E
_0805D5E0: .4byte 0x0203F9A4
_0805D5E4:
	mov r1, ip
	ldrh r0, [r1, #0x1a]
	strh r0, [r7]
_0805D5EA:
	adds r0, r2, r6
	lsls r0, r0, #3
	adds r0, r0, r3
	adds r0, #0x24
	ldrb r0, [r0]
	cmp r0, #0
	beq _0805D5FC
	movs r0, #1
	strb r0, [r5]
_0805D5FC:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #1
	bls _0805D59A
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

    .thumb
sub_805D614: @ 0x0805D614
	push {r4, r5, r6, lr}
	lsls r2, r1, #1
	adds r2, r2, r1
	lsls r2, r2, #5
	ldr r0, [r0]
	adds r2, r0, r2
	adds r0, r2, #0
	adds r0, #0x5c
	ldrb r0, [r0]
	cmp r0, #0
	beq _0805D62E
	movs r0, #0
	b _0805D6A6
_0805D62E:
	adds r0, r2, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	adds r5, r0, #0
	ldr r4, [r2, #0x1c]
	cmp r1, #0
	bne _0805D674
	asrs r3, r4, #0x10
	ldr r0, _0805D690
	movs r6, #0
	ldrsh r1, [r0, r6]
	movs r6, #0x82
	lsls r6, r6, #1
	adds r0, r1, r6
	cmp r3, r0
	bge _0805D66E
	adds r0, r1, #0
	subs r0, #0x14
	cmp r3, r0
	ble _0805D66E
	movs r0, #0x22
	ldrsh r3, [r2, r0]
	ldr r0, _0805D694
	movs r6, #0
	ldrsh r1, [r0, r6]
	adds r0, r1, #0
	adds r0, #0xb4
	cmp r3, r0
	bge _0805D66E
	subs r0, #0xc8
	cmp r3, r0
	bgt _0805D68C
_0805D66E:
	ldrb r0, [r5]
	cmp r0, #0
	beq _0805D6A4
_0805D674:
	ldr r0, _0805D698
	cmp r4, r0
	bgt _0805D6A4
	ldr r3, _0805D69C
	cmp r4, r3
	ble _0805D6A4
	ldr r1, [r2, #0x20]
	ldr r0, _0805D6A0
	cmp r1, r0
	bgt _0805D6A4
	cmp r1, r3
	ble _0805D6A4
_0805D68C:
	movs r0, #0
	b _0805D6A6
	.align 2, 0
_0805D690: .4byte gCameraPixelX
_0805D694: .4byte gCameraPixelY
_0805D698: .4byte 0x0103FFFF
_0805D69C: .4byte 0xFFEC0000
_0805D6A0: .4byte 0x00B3FFFF
_0805D6A4:
	movs r0, #1
_0805D6A6:
	strb r0, [r2, #0x13]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

    .thumb
sub_0805D6B0: @ 0x0805D6B0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x10
	ldr r0, _0805D734
	ldrb r0, [r0]
	cmp r0, #0
	bne _0805D6C2
	b _0805D7DE
_0805D6C2:
	ldr r4, _0805D738
	ldr r1, [r4]
	adds r0, r1, #0
	adds r0, #0x25
	ldrb r0, [r0]
	cmp r0, #0
	bne _0805D6D2
	b _0805D7DE
_0805D6D2:
	ldr r0, _0805D73C
	ldrb r0, [r0]
	cmp r0, #0
	bne _0805D6DE
	.2byte 0xEE00, 0xEE00
_0805D6DE:
	adds r0, r1, #0
	adds r0, #0x24
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	bl sub_80038A4
	ldr r0, [r4]
	adds r0, #0x24
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	add r2, sp, #8
	add r3, sp, #0xc
	add r1, sp, #4
	bl sub_80038C4
	ldr r1, [r4]
	ldr r7, [r1, #8]
	ldr r0, [r1, #0xc]
	mov r8, r0
	ldr r3, [sp, #4]
	adds r3, r7, r3
	str r3, [r1, #8]
	ldr r2, [sp, #0xc]
	add r2, r8
	str r2, [r1, #0xc]
	ldr r0, [r1, #0x10]
	subs r5, r0, r3
	ldr r0, [r1, #0x14]
	subs r6, r0, r2
	movs r3, #0
	ldr r2, [r1, #0x18]
	ldr r0, [r1, #0x1c]
	cmp r2, r0
	ble _0805D746
	ldr r0, [sp, #4]
	cmp r0, #0
	ble _0805D740
	cmp r5, #0
	ble _0805D75C
	b _0805D758
	.align 2, 0
_0805D734: .4byte 0x0203FA15
_0805D738: .4byte 0x0203FA18
_0805D73C: .4byte byte_203F99C
_0805D740:
	cmp r5, #0
	blt _0805D758
	b _0805D75C
_0805D746:
	ldr r0, [sp, #0xc]
	cmp r0, #0
	ble _0805D752
	cmp r6, #0
	ble _0805D756
	b _0805D758
_0805D752:
	cmp r6, #0
	blt _0805D758
_0805D756:
	movs r3, #1
_0805D758:
	cmp r3, #0
	beq _0805D790
_0805D75C:
	ldr r4, _0805D84C
	ldr r0, [r4]
	adds r0, #0x25
	movs r1, #0
	strb r1, [r0]
	ldr r1, [r4]
	adds r0, r1, #0
	adds r0, #0x26
	ldrb r0, [r0]
	cmp r0, #0
	bne _0805D790
	ldr r0, [r1, #0x10]
	str r0, [r1, #8]
	ldr r0, [r1, #0x14]
	str r0, [r1, #0xc]
	adds r0, r1, #0
	adds r0, #0x24
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	bl sub_8003864
	ldr r0, [r4]
	adds r0, #0x24
	movs r1, #0xff
	strb r1, [r0]
_0805D790:
	ldr r1, _0805D84C
	ldr r3, [r1]
	adds r0, r3, #0
	adds r0, #0x25
	ldrb r0, [r0]
	adds r4, r1, #0
	cmp r0, #0
	beq _0805D7CC
	ldr r0, _0805D850
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	ldr r2, [r3, #8]
	cmp r2, r0
	bhi _0805D7C0
	cmp r2, #0
	blt _0805D7C0
	ldr r0, _0805D854
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	ldr r1, [r3, #0xc]
	cmp r1, r0
	bhi _0805D7C0
	cmp r1, #0
	bge _0805D7C4
_0805D7C0:
	.2byte 0xEE00, 0xEE00
_0805D7C4:
	ldr r0, _0805D858
	str r5, [r0]
	ldr r0, _0805D85C
	str r6, [r0]
_0805D7CC:
	ldr r1, [r4]
	ldr r0, [r1, #8]
	ldr r1, [r1, #0xc]
	movs r2, #1
	str r2, [sp]
	adds r2, r7, #0
	mov r3, r8
	bl sub_800B958
_0805D7DE:
	ldr r0, _0805D860
	ldrb r0, [r0]
	cmp r0, #0
	beq _0805D894
	ldr r0, _0805D864
	ldrb r0, [r0]
	cmp r0, #0
	beq _0805D7FE
	ldr r0, _0805D84C
	ldr r0, [r0]
	adds r0, #0x25
	ldrb r0, [r0]
	cmp r0, #0
	beq _0805D7FE
	.2byte 0xEE00, 0xEE00
_0805D7FE:
	ldr r0, _0805D868
	ldrb r0, [r0]
	cmp r0, #0
	bne _0805D80A
	.2byte 0xEE00, 0xEE00
_0805D80A:
	bl sub_802672C
	ldr r4, _0805D860
	ldrb r0, [r4]
	cmp r0, #2
	bne _0805D82E
	ldr r0, _0805D86C
	ldr r1, _0805D870
	movs r3, #0
	ldrsh r2, [r0, r3]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r2, r0
	bne _0805D82E
	bl sub_8026714
	movs r0, #0
	strb r0, [r4]
_0805D82E:
	ldr r0, _0805D864
	ldrb r0, [r0]
	cmp r0, #0
	beq _0805D874
	ldr r0, _0805D84C
	ldr r0, [r0]
	ldr r2, [r0, #8]
	ldr r3, [r0, #0xc]
	movs r0, #1
	str r0, [sp]
	adds r0, r2, #0
	adds r1, r3, #0
	bl sub_800B958
	b _0805D894
	.align 2, 0
_0805D84C: .4byte 0x0203FA18
_0805D850: .4byte gMapPixelSizeX
_0805D854: .4byte gMapPixelSizeY
_0805D858: .4byte 0x0203FA1C
_0805D85C: .4byte 0x0203FA20
_0805D860: .4byte 0x0203FA14
_0805D864: .4byte 0x0203FA15
_0805D868: .4byte byte_203F99C
_0805D86C: .4byte 0x02002EC2
_0805D870: .4byte 0x02002EC0
_0805D874:
	ldr r0, _0805D8C4
	movs r1, #0
	ldrsh r2, [r0, r1]
	adds r2, #0x78
	lsls r2, r2, #0x10
	ldr r0, _0805D8C8
	movs r1, #0
	ldrsh r3, [r0, r1]
	adds r3, #0x50
	lsls r3, r3, #0x10
	movs r0, #1
	str r0, [sp]
	adds r0, r2, #0
	adds r1, r3, #0
	bl sub_800B958
_0805D894:
	ldr r2, _0805D8CC
	ldrb r0, [r2]
	cmp r0, #0
	beq _0805D8B8
	ldr r1, _0805D8D0
	ldr r0, _0805D8D4
	ldrh r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #4
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0
	bne _0805D8B8
	strb r0, [r2]
_0805D8B8:
	add sp, #0x10
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805D8C4: .4byte gCameraPixelX
_0805D8C8: .4byte gCameraPixelY
_0805D8CC: .4byte byte_203F99F
_0805D8D0: .4byte gPlayerStateSettings
_0805D8D4: .4byte gPlayerState

    .thumb
sub_805D8D8: @ 0x0805D8D8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	mov r8, r0
	ldrh r0, [r0, #0x1e]
	cmp r0, #0
	beq _0805D8F2
	subs r0, #1
	mov r1, r8
	strh r0, [r1, #0x1e]
_0805D8F2:
	mov r2, r8
	ldr r0, [r2, #0x14]
	adds r0, #1
	str r0, [r2, #0x14]
	movs r0, #0
	mov sb, r0
	mov r0, r8
	adds r0, #0x20
	mov sl, r0
	ldrb r1, [r0]
	cmp sb, r1
	blo _0805D90C
	b _0805DA7A
_0805D90C:
	mov r2, sb
	lsls r0, r2, #1
	add r0, sb
	lsls r0, r0, #5
	mov r2, r8
	ldr r1, [r2]
	adds r5, r1, r0
	adds r0, r5, #0
	adds r0, #0x57
	ldrb r0, [r0]
	cmp r0, #0
	beq _0805D9AE
	adds r4, r5, #0
	adds r4, #0x55
	movs r0, #0
	ldrsb r0, [r4, r0]
	bl sub_80038A4
	movs r0, #0
	ldrsb r0, [r4, r0]
	mov r1, sp
	add r2, sp, #4
	add r3, sp, #8
	bl sub_80038C4
	ldr r2, [r5, #0x1c]
	ldr r0, [sp]
	adds r2, r2, r0
	str r2, [r5, #0x1c]
	ldr r0, [r5, #0x20]
	ldr r1, [sp, #8]
	adds r0, r0, r1
	str r0, [r5, #0x20]
	ldr r0, [r5, #0x24]
	subs r0, r0, r2
	bl Abs
	adds r6, r0, #0
	ldr r0, [r5, #0x28]
	ldr r1, [r5, #0x20]
	subs r0, r0, r1
	bl Abs
	adds r7, r0, #0
	ldr r1, [r5, #0x30]
	ldr r0, [r5, #0x34]
	cmp r1, r0
	ble _0805D976
	ldr r0, [sp]
	bl Abs
	cmp r6, r0
	blo _0805D988
_0805D976:
	ldr r1, [r5, #0x34]
	ldr r0, [r5, #0x30]
	cmp r1, r0
	blt _0805D9AE
	ldr r0, [sp, #8]
	bl Abs
	cmp r7, r0
	bhs _0805D9AE
_0805D988:
	adds r1, r5, #0
	adds r1, #0x57
	movs r0, #0
	strb r0, [r1]
	adds r0, r5, #0
	adds r0, #0x5b
	ldrb r0, [r0]
	cmp r0, #0
	bne _0805D9AE
	ldr r0, [r5, #0x24]
	str r0, [r5, #0x1c]
	ldr r0, [r5, #0x28]
	str r0, [r5, #0x20]
	movs r0, #0
	ldrsb r0, [r4, r0]
	bl sub_8003864
	movs r0, #0xff
	strb r0, [r4]
_0805D9AE:
	adds r0, r5, #0
	adds r0, #0x58
	ldrh r1, [r0]
	adds r2, r0, #0
	cmp r1, #0
	beq _0805DA24
	ldrb r0, [r2]
	cmp r0, #0
	beq _0805D9E2
	ldr r1, [r5, #0x3c]
	ldr r0, [r5, #0x44]
	adds r1, r1, r0
	cmp r0, #0
	blt _0805D9D2
	ldr r0, [r5, #0x40]
	cmp r1, r0
	bge _0805D9D8
	b _0805D9E0
_0805D9D2:
	ldr r0, [r5, #0x40]
	cmp r1, r0
	bgt _0805D9E0
_0805D9D8:
	str r0, [r5, #0x3c]
	movs r0, #0
	strb r0, [r2]
	b _0805D9E2
_0805D9E0:
	str r1, [r5, #0x3c]
_0805D9E2:
	adds r0, r5, #0
	adds r0, #0x59
	ldrb r1, [r0]
	adds r2, r0, #0
	cmp r1, #0
	beq _0805DA10
	ldr r1, [r5, #0x50]
	ldr r0, [r5, #0x4c]
	adds r1, r1, r0
	cmp r0, #0
	blt _0805DA00
	ldr r0, [r5, #0x48]
	cmp r1, r0
	bge _0805DA06
	b _0805DA0E
_0805DA00:
	ldr r0, [r5, #0x48]
	cmp r1, r0
	bgt _0805DA0E
_0805DA06:
	str r0, [r5, #0x50]
	movs r0, #0
	strb r0, [r2]
	b _0805DA10
_0805DA0E:
	str r1, [r5, #0x50]
_0805DA10:
	adds r0, r5, #0
	adds r0, #0x54
	ldrb r0, [r0]
	ldr r1, [r5, #0x50]
	asrs r1, r1, #0x10
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldrh r2, [r5, #0x3e]
	bl sub_8025718
_0805DA24:
	adds r0, r5, #0
	adds r0, #0x5a
	ldrb r0, [r0]
	cmp r0, #0
	beq _0805DA3C
	movs r1, #0x1e
	ldrsh r0, [r5, r1]
	strh r0, [r5, #6]
	movs r2, #0x22
	ldrsh r0, [r5, r2]
	strb r0, [r5, #8]
	b _0805DA54
_0805DA3C:
	movs r0, #0x1e
	ldrsh r1, [r5, r0]
	ldr r0, _0805DA8C
	ldrh r0, [r0]
	subs r1, r1, r0
	strh r1, [r5, #6]
	movs r2, #0x22
	ldrsh r1, [r5, r2]
	ldr r0, _0805DA90
	ldrb r0, [r0]
	subs r1, r1, r0
	strb r1, [r5, #8]
_0805DA54:
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, #0
	beq _0805DA66
	mov r0, r8
	mov r1, sb
	bl sub_805D614
_0805DA66:
	mov r0, sb
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
	mov r0, sl
	ldrb r0, [r0]
	cmp sb, r0
	bhs _0805DA7A
	b _0805D90C
_0805DA7A:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805DA8C: .4byte gCameraPixelX
_0805DA90: .4byte gCameraPixelY

    .thumb
sub_805DA94: @ 0x0805DA94
	push {r4, r5, r6, lr}
	ldr r0, _0805DAA8
	ldrh r1, [r0]
	adds r5, r0, #0
	cmp r1, #0
	beq _0805DAAC
	subs r0, r1, #1
	strh r0, [r5]
	b _0805DB30
	.align 2, 0
_0805DAA8: .4byte 0x0203FA10
_0805DAAC:
	ldr r0, _0805DAC8
	ldrb r1, [r0]
	adds r6, r0, #0
	cmp r1, #0
	beq _0805DAD4
	ldr r0, _0805DACC
	ldr r2, _0805DAD0
	ldrh r1, [r0]
	adds r3, r0, #0
	ldrh r2, [r2]
	cmp r1, r2
	beq _0805DADE
	b _0805DAF4
	.align 2, 0
_0805DAC8: .4byte 0x0203FA13
_0805DACC: .4byte 0x0203F990
_0805DAD0: .4byte 0x0203F992
_0805DAD4:
	ldr r0, _0805DAEC
	ldrh r1, [r0]
	adds r3, r0, #0
	cmp r1, #0
	bne _0805DAF4
_0805DADE:
	ldr r0, _0805DAF0
	ldr r0, [r0]
	adds r0, #0x24
	movs r1, #0
	strb r1, [r0]
	b _0805DB30
	.align 2, 0
_0805DAEC: .4byte 0x0203F990
_0805DAF0: .4byte 0x0203F9F4
_0805DAF4:
	ldr r4, _0805DB1C
	ldrh r0, [r3]
	ldr r1, _0805DB20
	ldr r1, [r1]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrh r2, [r0]
	strh r2, [r4]
	ldrh r0, [r3]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrh r0, [r0, #2]
	strh r0, [r5]
	ldrb r0, [r6]
	cmp r0, #0
	beq _0805DB24
	ldrh r0, [r3]
	adds r0, #1
	strh r0, [r3]
	b _0805DB30
	.align 2, 0
_0805DB1C: .4byte gKeyInput
_0805DB20: .4byte 0x0203F98C
_0805DB24:
	ldrh r0, [r3]
	subs r0, #1
	strh r0, [r3]
	movs r0, #0xf0
	eors r0, r2
	strh r0, [r4]
_0805DB30:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

    .thumb
sub_805DB38: @ 0x0805DB38
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _0805DBE8
	ldr r1, _0805DBEC
	mov r8, r1
	ldr r1, [r0]
	mov r2, r8
	ldr r0, [r2, #4]
	subs r7, r1, r0
	ldr r0, _0805DBF0
	ldr r1, [r0]
	ldr r0, _0805DBF4
	ldr r2, [r0]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r2
	ldr r0, [r0, #0x20]
	bl Abs
	adds r4, r0, #0
	ldr r2, _0805DBF8
	ldr r3, _0805DBFC
	adds r1, r3, #0
	strh r1, [r2]
	ldr r0, _0805DC00
	ldr r6, [r0]
	subs r0, r6, r4
	mov r3, r8
	ldr r5, [r3]
	cmp r5, r0
	bge _0805DB80
	movs r0, #0x10
	eors r0, r1
	strh r0, [r2]
_0805DB80:
	adds r0, r6, r4
	cmp r5, r0
	ble _0805DB8E
	ldrh r0, [r2]
	movs r1, #0x20
	eors r0, r1
	strh r0, [r2]
_0805DB8E:
	subs r0, r7, r4
	mov r1, r8
	ldr r3, [r1, #8]
	cmp r3, r0
	bge _0805DBA0
	ldrh r0, [r2]
	movs r1, #0x40
	eors r0, r1
	strh r0, [r2]
_0805DBA0:
	adds r0, r7, r4
	cmp r3, r0
	ble _0805DBAE
	ldrh r0, [r2]
	movs r1, #0x80
	eors r0, r1
	strh r0, [r2]
_0805DBAE:
	subs r0, r5, r6
	bl Abs
	cmp r0, r4
	bhi _0805DBC6
	mov r2, r8
	ldr r0, [r2, #8]
	subs r0, r0, r7
	bl Abs
	cmp r0, r4
	bls _0805DBDC
_0805DBC6:
	ldr r1, _0805DC04
	ldr r0, _0805DC08
	ldrh r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #4
	ands r0, r1
	cmp r0, #0
	beq _0805DC10
_0805DBDC:
	ldr r1, _0805DC0C
	movs r0, #0
	strb r0, [r1]
	movs r0, #1
	b _0805DC18
	.align 2, 0
_0805DBE8: .4byte 0x0203F9FC
_0805DBEC: .4byte gPlayerShadowPos
_0805DBF0: .4byte dword_2000FC8
_0805DBF4: .4byte dword_200032C
_0805DBF8: .4byte gKeyInput
_0805DBFC: .4byte 0x000003FF
_0805DC00: .4byte 0x0203F9F8
_0805DC04: .4byte gPlayerStateSettings
_0805DC08: .4byte gPlayerState
_0805DC0C: .4byte byte_203F9A1
_0805DC10:
	ldr r1, _0805DC24
	movs r0, #1
	strb r0, [r1]
	movs r0, #0
_0805DC18:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0805DC24: .4byte byte_203F9A1

    .thumb
sub_805DC28: @ 0x0805DC28
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _0805DC9C
	ldr r0, [r0]
	ldr r1, [r0]
	lsls r0, r5, #1
	adds r0, r0, r5
	lsls r0, r0, #5
	adds r0, r0, r1
	adds r0, #0x57
	ldrb r0, [r0]
	cmp r0, #0
	bne _0805DD14
	ldr r1, _0805DCA0
	adds r0, r5, #0
	movs r2, #1
	movs r3, #0
	bl sub_805EAEC
	movs r0, #0
	movs r1, #1
	bl RandomMinMax
	cmp r0, #0
	bne _0805DCA4
	movs r0, #0x64
	movs r1, #0x78
	bl RandomMinMax
	adds r4, r0, #0
	movs r0, #0x46
	movs r1, #0x5a
	bl RandomMinMax
	adds r2, r0, #0
	adds r0, r5, #0
	adds r1, r4, #0
	movs r3, #0
	bl sub_805EE3C
	movs r0, #0x32
	movs r1, #0x3c
	bl RandomMinMax
	adds r4, r0, #0
	movs r0, #0x28
	movs r1, #0x78
	bl RandomMinMax
	adds r2, r0, #0
	movs r3, #0xc0
	lsls r3, r3, #0xb
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_805F148
	b _0805DCE2
	.align 2, 0
_0805DC9C: .4byte 0x0203F9F4
_0805DCA0: .4byte 0x000004BF
_0805DCA4:
	movs r0, #0x78
	movs r1, #0x8c
	bl RandomMinMax
	adds r4, r0, #0
	movs r0, #0x46
	movs r1, #0x5a
	bl RandomMinMax
	adds r2, r0, #0
	adds r0, r5, #0
	adds r1, r4, #0
	movs r3, #0
	bl sub_805EE3C
	movs r0, #0xb4
	movs r1, #0xbe
	bl RandomMinMax
	adds r4, r0, #0
	movs r0, #0x28
	movs r1, #0x78
	bl RandomMinMax
	adds r2, r0, #0
	movs r3, #0xc0
	lsls r3, r3, #0xb
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_805F148
_0805DCE2:
	ldr r0, _0805DD1C
	ldr r0, [r0]
	ldr r1, [r0]
	lsls r0, r5, #1
	adds r0, r0, r5
	lsls r0, r0, #5
	adds r0, r0, r1
	adds r0, #0x54
	ldrb r5, [r0]
	movs r0, #0
	movs r1, #0x40
	bl RandomMinMax
	adds r4, r0, #0
	movs r0, #0x80
	lsls r0, r0, #1
	movs r1, #0xc0
	lsls r1, r1, #2
	bl RandomMinMax
	adds r2, r0, #0
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_8025718
_0805DD14:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0805DD1C: .4byte 0x0203F9F4

    .thumb
sub_805DD20: @ 0x0805DD20
	push {lr}
	ldr r0, _0805DD6C
	ldrb r1, [r0]
	adds r1, #5
	strb r1, [r0]
	ldr r2, _0805DD70
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x19
	movs r0, #0x80
	subs r0, r0, r1
	lsls r0, r0, #1
	adds r0, r0, r2
	movs r1, #0
	ldrsh r2, [r0, r1]
	movs r0, #0xc0
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r0, #0
	movs r1, #0
	bl sub_8025718
	movs r0, #1
	bl sub_805DC28
	movs r0, #3
	bl sub_805DC28
	ldr r1, _0805DD74
	ldr r0, _0805DD78
	ldrh r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	lsrs r1, r1, #0xb
	movs r0, #1
	bics r0, r1
	pop {r1}
	bx r1
	.align 2, 0
_0805DD6C: .4byte 0x0203FA12
_0805DD70: .4byte 0x080B1AE4
_0805DD74: .4byte gPlayerStateSettings
_0805DD78: .4byte gPlayerState

    .thumb
    .global call_functions
call_functions: @ 0x0805DD7C
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
_0805DE4C: .4byte byte_203F9A1
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
	bl sub_0805E158
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
	bl sub_805DA94
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
	bl sub_0805E158
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
_0805DF80: .4byte byte_203F9A1

    .thumb
    .global sub_805DF84
sub_805DF84: @ 0x0805DF84
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r6, r0, #0
	str r1, [sp]
	ldr r0, _0805E024
	ldrb r0, [r0]
	cmp r0, #0
	beq _0805E074
	movs r2, #0
_0805DF9E:
	lsls r0, r2, #2
	adds r0, r0, r2
	lsls r0, r0, #3
	ldr r1, _0805E028
	adds r5, r0, r1
	adds r0, r5, #0
	adds r0, #0x22
	ldrb r0, [r0]
	adds r1, r2, #1
	mov sl, r1
	cmp r0, #0
	beq _0805E06A
	adds r0, r5, #0
	adds r0, #0x23
	ldrb r0, [r0]
	cmp r0, #0
	bne _0805DFC8
	ldr r0, _0805E02C
	ldrb r0, [r0]
	cmp r0, #0
	bne _0805E06A
_0805DFC8:
	movs r0, #0
	mov r8, r0
	adds r0, r5, #0
	adds r0, #0x20
	mov sb, r0
	adds r2, #1
	mov sl, r2
	ldrb r1, [r0]
	cmp r8, r1
	bge _0805E06A
	movs r7, #0
_0805DFDE:
	ldr r0, [r5]
	adds r2, r7, r0
	adds r0, r2, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, #0
	beq _0805E05C
	ldrb r0, [r2, #0x13]
	cmp r0, #0
	bne _0805E05C
	ldr r1, [r6]
	adds r0, r2, #0
	bl sub_80033DC
	ldr r0, [r5]
	adds r4, r7, r0
	ldrb r0, [r4, #0x10]
	cmp r0, #1
	bne _0805E034
	ldr r3, [r6]
	ldrb r2, [r4, #4]
	lsls r2, r2, #0x1e
	ldr r0, _0805E030
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	ldr r1, [r4, #0x20]
	subs r0, r0, r1
	ldr r1, [r4, #0x38]
	subs r0, r0, r1
	lsrs r0, r0, #4
	movs r1, #0x80
	lsls r1, r1, #0x15
	orrs r0, r1
	b _0805E04A
	.align 2, 0
_0805E024: .4byte byte_203F99E
_0805E028: .4byte 0x0203F9A4
_0805E02C: .4byte 0x0203FA16
_0805E030: .4byte gMapPixelSizeY
_0805E034:
	ldr r3, [r6]
	ldrb r2, [r4, #4]
	lsls r2, r2, #0x1e
	ldr r0, _0805E084
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	ldr r1, [r4, #0x20]
	subs r0, r0, r1
	ldr r1, [r4, #0x38]
	subs r0, r0, r1
	lsrs r0, r0, #4
_0805E04A:
	orrs r2, r0
	str r2, [r3]
	adds r0, r3, #0
	adds r0, #0xc
	str r0, [r6]
	ldr r1, [sp]
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
_0805E05C:
	adds r7, #0x60
	movs r0, #1
	add r8, r0
	mov r1, sb
	ldrb r1, [r1]
	cmp r8, r1
	blt _0805DFDE
_0805E06A:
	mov r1, sl
	lsls r0, r1, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #1
	bls _0805DF9E
_0805E074:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805E084: .4byte gMapPixelSizeY

    .thumb
    .global sub_805E088
sub_805E088: @ 0x0805E088
	push {r4, r5, r6, r7, lr}
	movs r2, #0
_0805E08C:
	lsls r0, r2, #2
	adds r0, r0, r2
	lsls r0, r0, #3
	ldr r1, _0805E0D8
	adds r4, r0, r1
	movs r6, #0
	adds r0, r4, #0
	adds r0, #0x20
	adds r7, r2, #1
	ldrb r0, [r0]
	cmp r6, r0
	bge _0805E0C8
	movs r5, #0
_0805E0A6:
	ldr r0, [r4]
	adds r1, r5, r0
	adds r0, r1, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, #0
	beq _0805E0BA
	adds r0, r1, #0
	bl RenderSprite
_0805E0BA:
	adds r5, #0x60
	adds r6, #1
	adds r0, r4, #0
	adds r0, #0x20
	ldrb r0, [r0]
	cmp r6, r0
	blt _0805E0A6
_0805E0C8:
	lsls r0, r7, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #1
	bls _0805E08C
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805E0D8: .4byte 0x0203F9A4

    .thumb
sub_805E0DC: @ 0x0805E0DC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	adds r1, r6, #0
	adds r1, #0x20
	ldrb r0, [r1]
	cmp r0, #0
	beq _0805E14A
	movs r5, #0
	adds r7, r1, #0
	ldr r2, [r6]
	cmp r5, r0
	bhs _0805E13E
	movs r0, #1
	rsbs r0, r0, #0
	mov r8, r0
_0805E0FE:
	lsls r0, r5, #1
	adds r0, r0, r5
	lsls r4, r0, #5
	adds r1, r4, r2
	adds r0, r1, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, #0
	beq _0805E132
	adds r1, #0x55
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, r8
	beq _0805E128
	bl sub_8003864
	ldr r0, [r6]
	adds r0, r4, r0
	adds r0, #0x55
	movs r1, #0xff
	strb r1, [r0]
_0805E128:
	ldr r1, _0805E154
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	ldr r2, [r6]
_0805E132:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	ldrb r0, [r7]
	cmp r5, r0
	blo _0805E0FE
_0805E13E:
	adds r0, r2, #0
	movs r1, #3
	bl Free
	movs r0, #0
	strb r0, [r7]
_0805E14A:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805E154: .4byte 0x0203F9A0

    .thumb
sub_0805E158: @ 0x0805E158
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_805E0DC
	adds r1, r4, #0
	adds r1, #0x21
	movs r3, #0
	movs r0, #1
	strb r0, [r1]
	adds r2, r4, #0
	adds r2, #0x23
	ldrb r0, [r2]
	cmp r0, #0
	beq _0805E198
	ldr r0, _0805E1C4
	strb r3, [r0]
	ldr r0, _0805E1C8
	movs r5, #1
	rsbs r5, r5, #0
	adds r1, r5, #0
	strh r1, [r0]
	ldr r0, _0805E1CC
	strh r1, [r0]
	strb r3, [r2]
	ldr r0, _0805E1D0
	strb r3, [r0]
	ldr r0, _0805E1D4
	ldrb r0, [r0]
	cmp r0, #0
	beq _0805E198
	.2byte 0xEE00, 0xEE00
_0805E198:
	adds r1, r4, #0
	adds r1, #0x22
	movs r0, #0
	strb r0, [r1]
	bl sub_805D568
	ldr r0, _0805E1D8
	ldrb r0, [r0]
	cmp r0, #0
	bne _0805E1BC
	movs r0, #3
	movs r1, #5
	bl DoesMemBlockExistById
	cmp r0, #0
	beq _0805E1BC
	.2byte 0xEE00, 0xEE00
_0805E1BC:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0805E1C4: .4byte byte_203F99C
_0805E1C8: .4byte word_203F998
_0805E1CC: .4byte word_203F99A
_0805E1D0: .4byte 0x0203FA14
_0805E1D4: .4byte 0x0203FA15
_0805E1D8: .4byte byte_203F99E

    .thumb
    .global sub_805E1DC
sub_805E1DC: @ 0x0805E1DC
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, _0805E224
	ldrb r0, [r0]
	cmp r0, #0
	beq _0805E1FC
	cmp r4, #0
	beq _0805E1F0
	cmp r4, #2
	bne _0805E1FC
_0805E1F0:
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_0805F8DC
_0805E1FC:
	movs r5, #0
	ldr r7, _0805E228
	ldr r6, _0805E22C
_0805E202:
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #3
	adds r1, r0, r7
	adds r0, r1, #0
	adds r0, #0x22
	ldrb r0, [r0]
	cmp r0, #0
	beq _0805E25A
	cmp r4, #1
	beq _0805E242
	cmp r4, #1
	bgt _0805E230
	cmp r4, #0
	beq _0805E236
	b _0805E25A
	.align 2, 0
_0805E224: .4byte 0x0203FA15
_0805E228: .4byte 0x0203F9A4
_0805E22C: .4byte 0x0203F9F4
_0805E230:
	cmp r4, #2
	beq _0805E254
	b _0805E25A
_0805E236:
	ldr r0, [r6]
	adds r0, #0x23
	ldrb r0, [r0]
	cmp r0, #0
	beq _0805E25A
	b _0805E24C
_0805E242:
	ldr r0, [r6]
	adds r0, #0x23
	ldrb r0, [r0]
	cmp r0, #0
	bne _0805E25A
_0805E24C:
	adds r0, r1, #0
	bl sub_0805E158
	b _0805E25A
_0805E254:
	adds r0, r1, #0
	bl sub_0805E158
_0805E25A:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #1
	bls _0805E202
	bl sub_805D568
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

    .thumb
sub_0805E270: @ 0x0805E270
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	mov r8, r0
	adds r7, r1, #0
	adds r6, r2, #0
	adds r5, r3, #0
	cmp r8, r7
	bge _0805E28C
	cmp r6, r5
	blt _0805E290
_0805E28C:
	.2byte 0xEE00, 0xEE00
_0805E290:
	mov r1, r8
	subs r0, r7, r1
	asrs r0, r0, #2
	str r0, [sp, #8]
	subs r0, r5, r6
	asrs r0, r0, #2
	str r0, [sp, #0xc]
	ldr r2, _0805E304
	mov ip, r2
	ldr r3, [r2]
	ldr r2, [r3, #8]
	asrs r1, r2, #0x10
	subs r0, r7, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #4]
	mov r0, r8
	subs r1, r1, r0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	str r1, [sp]
	ldr r4, [r3, #0xc]
	asrs r1, r4, #0x10
	subs r0, r5, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sl, r0
	subs r1, r1, r6
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov sb, r1
	ldr r0, [r3, #0x10]
	cmp r0, r2
	bne _0805E3BC
	ldr r0, [r3, #0x14]
	cmp r0, r4
	bne _0805E3BC
	mov r4, ip
_0805E2DC:
	ldr r1, [sp, #4]
	ldr r2, [sp]
	cmp r1, r2
	bhs _0805E33A
	cmp sb, sl
	bhs _0805E31E
	cmp r1, sb
	bhs _0805E308
	mov r0, r8
	ldr r1, [sp, #8]
	add r1, r8
	bl RandomMinMax
	ldr r1, [r4]
	lsls r0, r0, #0x10
	str r0, [r1, #0x10]
	adds r0, r6, #0
	adds r1, r5, #0
	b _0805E3A0
	.align 2, 0
_0805E304: .4byte 0x0203FA18
_0805E308:
	mov r0, r8
	adds r1, r7, #0
	bl RandomMinMax
	ldr r1, [r4]
	lsls r0, r0, #0x10
	str r0, [r1, #0x10]
	ldr r1, [sp, #0xc]
	subs r0, r5, r1
	adds r1, r5, #0
	b _0805E3A0
_0805E31E:
	ldr r2, [sp, #4]
	cmp r2, sl
	bhs _0805E38C
	mov r0, r8
	ldr r1, [sp, #8]
	add r1, r8
	bl RandomMinMax
	ldr r1, [r4]
	lsls r0, r0, #0x10
	str r0, [r1, #0x10]
	adds r0, r6, #0
	adds r1, r5, #0
	b _0805E3A0
_0805E33A:
	cmp sb, sl
	bhs _0805E370
	ldr r0, [sp]
	cmp r0, sb
	bhs _0805E35A
	ldr r1, [sp, #8]
	subs r0, r7, r1
	adds r1, r7, #0
	bl RandomMinMax
	ldr r1, [r4]
	lsls r0, r0, #0x10
	str r0, [r1, #0x10]
	adds r0, r6, #0
	adds r1, r5, #0
	b _0805E3A0
_0805E35A:
	mov r0, r8
	adds r1, r7, #0
	bl RandomMinMax
	ldr r1, [r4]
	lsls r0, r0, #0x10
	str r0, [r1, #0x10]
	ldr r2, [sp, #0xc]
	subs r0, r5, r2
	adds r1, r5, #0
	b _0805E3A0
_0805E370:
	ldr r0, [sp]
	cmp r0, sl
	bhs _0805E38C
	ldr r1, [sp, #8]
	subs r0, r7, r1
	adds r1, r7, #0
	bl RandomMinMax
	ldr r1, [r4]
	lsls r0, r0, #0x10
	str r0, [r1, #0x10]
	adds r0, r6, #0
	adds r1, r5, #0
	b _0805E3A0
_0805E38C:
	mov r0, r8
	adds r1, r7, #0
	bl RandomMinMax
	ldr r1, [r4]
	lsls r0, r0, #0x10
	str r0, [r1, #0x10]
	adds r0, r6, #0
	ldr r2, [sp, #0xc]
	adds r1, r6, r2
_0805E3A0:
	bl RandomMinMax
	ldr r1, [r4]
	lsls r0, r0, #0x10
	str r0, [r1, #0x14]
	ldr r2, [r4]
	ldr r1, [r2, #0x10]
	ldr r0, [r2, #8]
	cmp r1, r0
	bne _0805E3BC
	ldr r1, [r2, #0x14]
	ldr r0, [r2, #0xc]
	cmp r1, r0
	beq _0805E2DC
_0805E3BC:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

    .thumb
sub_805E3CC: @ 0x0805E3CC
	push {lr}
	adds r2, r0, #0
	cmp r2, #0
	bge _0805E3DA
	movs r0, #0xb4
	lsls r0, r0, #0xd
	adds r2, r2, r0
_0805E3DA:
	ldr r0, _0805E3E8
	adds r1, r2, r0
	ldr r0, _0805E3EC
	cmp r1, r0
	bls _0805E3F0
	movs r0, #2
	b _0805E452
	.align 2, 0
_0805E3E8: .4byte 0xFFE98000
_0805E3EC: .4byte 0x013B0000
_0805E3F0:
	ldr r0, _0805E3FC
	cmp r2, r0
	bgt _0805E400
	movs r0, #3
	b _0805E452
	.align 2, 0
_0805E3FC: .4byte 0x00437FFF
_0805E400:
	ldr r0, _0805E40C
	cmp r2, r0
	bgt _0805E410
	movs r0, #4
	b _0805E452
	.align 2, 0
_0805E40C: .4byte 0x00707FFF
_0805E410:
	ldr r0, _0805E41C
	cmp r2, r0
	bgt _0805E420
	movs r0, #5
	b _0805E452
	.align 2, 0
_0805E41C: .4byte 0x009D7FFF
_0805E420:
	ldr r0, _0805E42C
	cmp r2, r0
	bgt _0805E430
	movs r0, #6
	b _0805E452
	.align 2, 0
_0805E42C: .4byte 0x00CA7FFF
_0805E430:
	ldr r0, _0805E43C
	cmp r2, r0
	bgt _0805E440
	movs r0, #7
	b _0805E452
	.align 2, 0
_0805E43C: .4byte 0x00F77FFF
_0805E440:
	ldr r0, _0805E44C
	cmp r2, r0
	ble _0805E450
	movs r0, #1
	b _0805E452
	.align 2, 0
_0805E44C: .4byte 0x01247FFF
_0805E450:
	movs r0, #0
_0805E452:
	pop {r1}
	bx r1
	.align 2, 0

    .thumb
sub_805E458: @ 0x0805E458
	push {r4, lr}
	adds r1, r0, #0
	ldr r4, _0805E4DC
	ldr r0, [r4]
	adds r0, #0x20
	strb r1, [r0]
	cmp r1, #0
	beq _0805E4D2
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #5
	movs r1, #5
	movs r2, #3
	bl Alloc
	ldr r1, [r4]
	str r0, [r1]
	movs r3, #0
	adds r1, #0x20
	ldrb r1, [r1]
	cmp r3, r1
	bhs _0805E4D2
	adds r2, r4, #0
	movs r4, #0
_0805E488:
	ldr r0, [r2]
	ldr r0, [r0]
	lsls r1, r3, #1
	adds r1, r1, r3
	lsls r1, r1, #5
	adds r0, r1, r0
	adds r0, #0x56
	strb r4, [r0]
	ldr r0, [r2]
	ldr r0, [r0]
	adds r0, r1, r0
	adds r0, #0x57
	strb r4, [r0]
	ldr r0, [r2]
	ldr r0, [r0]
	adds r0, r1, r0
	adds r0, #0x58
	strb r4, [r0]
	ldr r0, [r2]
	ldr r0, [r0]
	adds r0, r1, r0
	adds r0, #0x59
	strb r4, [r0]
	ldr r0, [r2]
	ldr r0, [r0]
	adds r1, r1, r0
	adds r1, #0x55
	movs r0, #0xff
	strb r0, [r1]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	ldr r0, [r2]
	adds r0, #0x20
	ldrb r0, [r0]
	cmp r3, r0
	blo _0805E488
_0805E4D2:
	movs r0, #1
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0805E4DC: .4byte 0x0203F9F4

    .thumb
sub_805E4E0: @ 0x0805E4E0
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	adds r7, r0, #0
	mov r8, r1
	mov sb, r2
	adds r5, r3, #0
	bl audio_halt_all_fx
	ldr r2, _0805E520
	ldr r1, [r2]
	ldr r0, _0805E524
	ldrh r0, [r0]
	strb r0, [r1, #4]
	ldr r2, [r2]
	ldr r1, _0805E528
	ldr r0, [r1]
	str r0, [r2, #8]
	ldr r0, [r1, #4]
	str r0, [r2, #0xc]
	ldr r0, [r1, #8]
	str r0, [r2, #0x10]
	mov r0, sb
	cmp r0, #0
	beq _0805E530
	ldr r0, _0805E52C
	adds r1, r5, #0
	bl sub_80271A4
	b _0805E538
	.align 2, 0
_0805E520: .4byte 0x0203F9F4
_0805E524: .4byte gLoadedRoomIndex
_0805E528: .4byte gPlayerPos
_0805E52C: .4byte 0x00000FFF
_0805E530:
	ldr r0, _0805E5CC
	adds r1, r5, #0
	bl sub_80270AC
_0805E538:
	ldr r4, _0805E5D0
	ldrb r0, [r4]
	cmp r0, #0
	beq _0805E54C
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_0805F8DC
_0805E54C:
	ldr r0, _0805E5D4
	ldr r0, [r0]
	bl sub_805E0DC
	ldrb r0, [r4]
	cmp r0, #0
	beq _0805E566
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_0805F8DC
_0805E566:
	ldr r0, _0805E5D8
	movs r6, #1
	strb r6, [r0]
	adds r0, r7, #0
	mov r1, r8
	adds r2, r5, #0
	movs r3, #1
	bl SetupRoom
	ldr r0, _0805E5DC
	ldrh r0, [r0]
	ldr r1, _0805E5E0
	ldrh r1, [r1]
	ldr r2, _0805E5E4
	ldrh r2, [r2]
	ldr r3, _0805E5E8
	ldrh r3, [r3]
	movs r4, #0x15
	str r4, [sp]
	movs r4, #0x20
	str r4, [sp, #4]
	bl sub_8013A10
	bl EnableBGAlphaBlending
	bl sub_800EB14
	bl init_efx
	bl init_room_name
	bl sub_80631A0
	cmp r0, #0
	beq _0805E5B4
	ldr r0, _0805E5EC
	strb r6, [r0]
	bl sub_8063188
_0805E5B4:
	ldr r1, _0805E5F0
	movs r0, #0
	strb r0, [r1, #0x13]
	mov r0, sb
	cmp r0, #0
	beq _0805E5F4
	ldr r0, _0805E5CC
	adds r1, r5, #0
	movs r2, #1
	bl sub_8026F78
	b _0805E5FE
	.align 2, 0
_0805E5CC: .4byte 0x00000FFF
_0805E5D0: .4byte 0x0203FA15
_0805E5D4: .4byte 0x0203F9F4
_0805E5D8: .4byte 0x0203FA16
_0805E5DC: .4byte 0x0200145C
_0805E5E0: .4byte 0x0200145E
_0805E5E4: .4byte 0x02001460
_0805E5E8: .4byte 0x02001462
_0805E5EC: .4byte 0x0203E137
_0805E5F0: .4byte gPlayerSprite
_0805E5F4:
	ldr r0, _0805E63C
	adds r1, r5, #0
	movs r2, #1
	bl sub_8026E48
_0805E5FE:
	ldr r2, _0805E640
	ldr r0, _0805E644
	ldrh r3, [r0]
	strh r3, [r2, #6]
	ldr r0, _0805E648
	ldrh r1, [r0]
	strb r1, [r2, #8]
	ldr r0, _0805E64C
	strh r3, [r0, #6]
	strb r1, [r0, #8]
	ldr r0, _0805E650
	ldrb r0, [r0]
	cmp r0, #0
	beq _0805E626
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_0805F868
_0805E626:
	bl sub_8041E58
	movs r0, #1
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0805E63C: .4byte 0x00000FFF
_0805E640: .4byte gPlayerSprite
_0805E644: .4byte 0x02001464
_0805E648: .4byte 0x02001466
_0805E64C: .4byte gPlayerShadowSprite
_0805E650: .4byte 0x0203FA15

    .thumb
sub_805E654: @ 0x0805E654
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	adds r6, r0, #0
	adds r7, r1, #0
	mov r8, r2
	adds r5, r3, #0
	bl audio_halt_all_fx
	mov r0, r8
	cmp r0, #0
	beq _0805E67C
	ldr r0, _0805E678
	adds r1, r5, #0
	bl sub_80271A4
	b _0805E684
	.align 2, 0
_0805E678: .4byte 0x00000FFF
_0805E67C:
	ldr r0, _0805E714
	adds r1, r5, #0
	bl sub_80270AC
_0805E684:
	ldr r4, _0805E718
	ldrb r0, [r4]
	cmp r0, #0
	beq _0805E698
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_0805F8DC
_0805E698:
	ldr r0, _0805E71C
	ldr r0, [r0]
	bl sub_805E0DC
	ldrb r0, [r4]
	cmp r0, #0
	beq _0805E6B2
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_0805F8DC
_0805E6B2:
	adds r0, r6, #0
	adds r1, r7, #0
	adds r2, r5, #0
	movs r3, #0
	bl SetupRoom
	ldr r0, _0805E720
	ldrh r0, [r0]
	ldr r1, _0805E724
	ldrh r1, [r1]
	ldr r2, _0805E728
	ldrh r2, [r2]
	ldr r3, _0805E72C
	ldrh r3, [r3]
	movs r4, #0x15
	str r4, [sp]
	movs r4, #0x20
	str r4, [sp, #4]
	bl sub_8013A10
	bl EnableBGAlphaBlending
	bl sub_800EB14
	bl init_efx
	bl init_room_name
	bl sub_80631A0
	cmp r0, #0
	beq _0805E6FC
	ldr r1, _0805E730
	movs r0, #1
	strb r0, [r1]
	bl sub_8063188
_0805E6FC:
	ldr r1, _0805E734
	movs r0, #0
	strb r0, [r1, #0x13]
	mov r0, r8
	cmp r0, #0
	beq _0805E738
	ldr r0, _0805E714
	adds r1, r5, #0
	movs r2, #1
	bl sub_8026F78
	b _0805E742
	.align 2, 0
_0805E714: .4byte 0x00000FFF
_0805E718: .4byte 0x0203FA15
_0805E71C: .4byte 0x0203F9F4
_0805E720: .4byte 0x0200145C
_0805E724: .4byte 0x0200145E
_0805E728: .4byte 0x02001460
_0805E72C: .4byte 0x02001462
_0805E730: .4byte 0x0203E137
_0805E734: .4byte gPlayerSprite
_0805E738:
	ldr r0, _0805E764
	adds r1, r5, #0
	movs r2, #1
	bl sub_8026E48
_0805E742:
	ldr r2, _0805E768
	ldr r0, _0805E76C
	ldrh r3, [r0]
	strh r3, [r2, #6]
	ldr r0, _0805E770
	ldrh r1, [r0]
	strb r1, [r2, #8]
	ldr r0, _0805E774
	strh r3, [r0, #6]
	strb r1, [r0, #8]
	movs r0, #1
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0805E764: .4byte 0x00000FFF
_0805E768: .4byte gPlayerSprite
_0805E76C: .4byte 0x02001464
_0805E770: .4byte 0x02001466
_0805E774: .4byte gPlayerShadowSprite

    .thumb
sub_805E778: @ 0x0805E778
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r6, r0, #0
	ldr r0, _0805E7F4
	ldrb r0, [r0]
	cmp r0, #0
	beq _0805E792
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_0805F8DC
_0805E792:
	ldr r4, _0805E7F8
	ldr r0, [r4]
	bl sub_805E0DC
	ldr r5, _0805E7FC
	ldr r2, _0805E800
	ldr r3, [r4]
	ldrb r0, [r3, #4]
	lsls r1, r0, #3
	adds r1, r1, r2
	ldrh r2, [r5]
	ldrh r1, [r1, #6]
	eors r2, r1
	rsbs r1, r2, #0
	orrs r1, r2
	lsrs r7, r1, #0x1f
	ldr r1, [r3, #8]
	ldr r2, [r3, #0xc]
	ldr r3, [r3, #0x10]
	movs r5, #0
	str r5, [sp]
	movs r4, #2
	str r4, [sp, #4]
	bl sub_800C1E8
	bl sub_80631A0
	cmp r0, #0
	beq _0805E7D4
	ldr r0, _0805E804
	strb r5, [r0]
	bl sub_8063194
_0805E7D4:
	movs r0, #0x80
	lsls r0, r0, #1
	bl sub_8029DA8
	cmp r6, #1
	beq _0805E80C
	cmp r6, #1
	ble _0805E7E8
	cmp r6, #3
	beq _0805E816
_0805E7E8:
	ldr r0, _0805E808
	adds r1, r7, #0
	movs r2, #1
	bl sub_8026E48
	b _0805E816
	.align 2, 0
_0805E7F4: .4byte 0x0203FA15
_0805E7F8: .4byte 0x0203F9F4
_0805E7FC: .4byte gLoadedRoomBgm
_0805E800: .4byte 0x080CF4EC
_0805E804: .4byte 0x0203E137
_0805E808: .4byte 0x00000FFF
_0805E80C:
	ldr r0, _0805E83C
	adds r1, r7, #0
	movs r2, #1
	bl sub_8026F78
_0805E816:
	ldr r1, _0805E840
	movs r0, #0
	strb r0, [r1]
	ldr r0, _0805E844
	ldrb r0, [r0]
	cmp r0, #0
	beq _0805E830
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_0805F868
_0805E830:
	movs r0, #1
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0805E83C: .4byte 0x00000FFF
_0805E840: .4byte 0x0203FA16
_0805E844: .4byte 0x0203FA15

	.thumb
sub_805E848: @ 0x0805E848
	ldr r2, _0805E858
	ldr r2, [r2]
	strh r0, [r2, #0x18]
	subs r1, #1
	strh r1, [r2, #0x1c]
	movs r0, #1
	bx lr
	.align 2, 0
_0805E858: .4byte 0x0203F9F4

    .thumb
sub_805E85C: @ 0x0805E85C
	push {r4, r5, r6, lr}
	adds r4, r1, #0
	adds r5, r2, #0
	movs r6, #0
	cmp r0, #5
	bhi _0805E8BE
	lsls r0, r0, #2
	ldr r1, _0805E874
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0805E874: .4byte 0x0805E878
_0805E878: @ jump table
	.4byte _0805E8BE @ case 0
	.4byte _0805E8BE @ case 1
	.4byte _0805E890 @ case 2
	.4byte _0805E896 @ case 3
	.4byte _0805E8A4 @ case 4
	.4byte _0805E8B4 @ case 5
_0805E890:
	bl IsGameComplete
	b _0805E89A
_0805E896:
	ldr r0, _0805E8A0
	ldrb r0, [r0]
_0805E89A:
	cmp r0, #0
	beq _0805E8BE
	b _0805E8C2
	.align 2, 0
_0805E8A0: .4byte byte_20020B1
_0805E8A4:
	ldr r0, _0805E8B0
	ldrb r0, [r0, #0x16]
	cmp r0, #0
	bne _0805E8BE
	b _0805E8C2
	.align 2, 0
_0805E8B0: .4byte 0x0200209A
_0805E8B4:
	ldr r0, _0805E8D4
	ldrb r0, [r0, #5]
	cmp r0, #0
	bne _0805E8BE
	movs r6, #1
_0805E8BE:
	cmp r6, #0
	beq _0805E8CC
_0805E8C2:
	ldr r0, _0805E8D8
	ldr r1, [r0]
	strh r4, [r1, #0x18]
	subs r0, r5, #1
	strh r0, [r1, #0x1c]
_0805E8CC:
	movs r0, #1
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0805E8D4: .4byte 0x0200209A
_0805E8D8: .4byte 0x0203F9F4

    .thumb
sub_805E8DC: @ 0x0805E8DC
	push {lr}
	adds r2, r0, #0
	cmp r2, #0
	beq _0805E8F0
	ldr r1, _0805E8EC
	movs r0, #1
	strb r0, [r1]
	b _0805E8F8
	.align 2, 0
_0805E8EC: .4byte 0x0200108D
_0805E8F0:
	ldr r0, _0805E904
	strb r2, [r0]
	ldr r0, _0805E908
	strb r2, [r0, #0x10]
_0805E8F8:
	ldr r0, _0805E90C
	strb r2, [r0]
	movs r0, #1
	pop {r1}
	bx r1
	.align 2, 0
_0805E904: .4byte 0x0200108D
_0805E908: .4byte gPlayerSprite
_0805E90C: .4byte 0x0203F9A2

    .thumb
sub_805E910: @ 0x0805E910
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x10
	mov r8, r0
	ldr r5, _0805E9F4
	ldr r0, [r5]
	mov r1, r8
	lsls r4, r1, #1
	add r4, r8
	lsls r4, r4, #5
	ldr r0, [r0]
	adds r0, r0, r4
	ldr r1, _0805E9F8
	movs r6, #1
	str r6, [sp]
	movs r2, #0xf0
	str r2, [sp, #4]
	movs r2, #0xc8
	str r2, [sp, #8]
	movs r2, #2
	str r2, [sp, #0xc]
	movs r2, #0
	movs r3, #0
	bl SetSprite
	ldr r0, [r5]
	ldr r0, [r0]
	adds r0, r4, r0
	adds r0, #0x56
	movs r2, #0
	strb r6, [r0]
	ldr r0, [r5]
	ldr r0, [r0]
	adds r0, r4, r0
	adds r0, #0x57
	strb r2, [r0]
	ldr r0, [r5]
	ldr r0, [r0]
	adds r0, r4, r0
	adds r0, #0x58
	strb r2, [r0]
	ldr r0, [r5]
	ldr r0, [r0]
	adds r0, r4, r0
	adds r0, #0x59
	strb r2, [r0]
	ldr r0, [r5]
	ldr r0, [r0]
	adds r0, r4, r0
	adds r0, #0x5a
	strb r2, [r0]
	ldr r0, [r5]
	ldr r1, [r0]
	adds r1, r4, r1
	ldr r0, _0805E9FC
	movs r3, #0
	ldrsh r0, [r0, r3]
	ldrh r3, [r1, #6]
	adds r0, r0, r3
	lsls r0, r0, #0x10
	str r0, [r1, #0x1c]
	ldr r0, _0805EA00
	movs r3, #0
	ldrsh r0, [r0, r3]
	ldrb r3, [r1, #8]
	adds r0, r0, r3
	lsls r0, r0, #0x10
	str r0, [r1, #0x20]
	str r2, [r1, #0x30]
	str r2, [r1, #0x34]
	str r2, [r1, #0x2c]
	adds r1, #0x55
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, [r5]
	ldr r0, [r0]
	adds r0, r4, r0
	adds r0, #0x5b
	strb r2, [r0]
	ldr r0, [r5]
	ldr r0, [r0]
	adds r0, r4, r0
	str r2, [r0, #0x38]
	movs r1, #0x80
	lsls r1, r1, #0x11
	str r1, [r0, #0x3c]
	str r1, [r0, #0x40]
	str r2, [r0, #0x44]
	adds r0, #0x54
	strb r2, [r0]
	ldr r0, [r5]
	ldr r0, [r0]
	adds r4, r4, r0
	str r2, [r4, #0x50]
	str r2, [r4, #0x48]
	str r2, [r4, #0x4c]
	adds r4, #0x5c
	strb r2, [r4]
	ldr r1, _0805EA04
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldr r0, [r5]
	mov r1, r8
	bl sub_805D614
	movs r0, #1
	add sp, #0x10
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0805E9F4: .4byte 0x0203F9F4
_0805E9F8: .4byte 0x00000451
_0805E9FC: .4byte gCameraPixelX
_0805EA00: .4byte gCameraPixelY
_0805EA04: .4byte 0x0203F9A0

    .thumb
sub_805EA08: @ 0x0805EA08
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r6, _0805EA9C
	ldr r2, [r6]
	ldr r0, [r2]
	lsls r1, r5, #1
	adds r1, r1, r5
	lsls r4, r1, #5
	adds r0, r4, r0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, #0
	beq _0805EA50
	ldr r1, _0805EAA0
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	ldr r0, [r2]
	adds r0, r4, r0
	adds r2, r0, #0
	adds r2, #0x55
	movs r1, #0
	ldrsb r1, [r2, r1]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _0805EA50
	adds r0, r1, #0
	bl sub_8003864
	ldr r0, [r6]
	ldr r0, [r0]
	adds r0, r4, r0
	adds r0, #0x55
	movs r1, #0xff
	strb r1, [r0]
_0805EA50:
	ldr r3, _0805EA9C
	ldr r0, [r3]
	ldr r0, [r0]
	lsls r1, r5, #1
	adds r1, r1, r5
	lsls r1, r1, #5
	adds r0, r1, r0
	adds r0, #0x56
	movs r2, #0
	strb r2, [r0]
	ldr r0, [r3]
	ldr r0, [r0]
	adds r0, r1, r0
	adds r0, #0x57
	strb r2, [r0]
	ldr r0, [r3]
	ldr r0, [r0]
	adds r0, r1, r0
	adds r0, #0x58
	strb r2, [r0]
	ldr r0, [r3]
	ldr r0, [r0]
	adds r0, r1, r0
	adds r0, #0x59
	strb r2, [r0]
	ldr r0, [r3]
	ldr r0, [r0]
	adds r1, r1, r0
	ldr r0, [r1, #0x1c]
	str r0, [r1, #0x24]
	ldr r0, [r1, #0x20]
	str r0, [r1, #0x28]
	movs r0, #1
	strb r0, [r1, #0x13]
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0805EA9C: .4byte 0x0203F9F4
_0805EAA0: .4byte 0x0203F9A0

    .thumb
sub_805EAA4: @ 0x0805EAA4
	push {r4, lr}
	ldr r4, _0805EAE4
	ldr r1, [r4]
	ldr r2, [r1]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r3, r1, #5
	adds r2, r3, r2
	adds r2, #0x56
	ldrb r0, [r2]
	cmp r0, #0
	bne _0805EAC4
	ldr r1, _0805EAE8
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
_0805EAC4:
	ldr r0, [r4]
	ldr r0, [r0]
	adds r0, r3, r0
	adds r0, #0x56
	movs r2, #0
	movs r1, #1
	strb r1, [r0]
	ldr r0, [r4]
	ldr r0, [r0]
	adds r0, r3, r0
	strb r2, [r0, #0x13]
	movs r0, #1
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0805EAE4: .4byte 0x0203F9F4
_0805EAE8: .4byte 0x0203F9A0

    .thumb
sub_805EAEC: @ 0x0805EAEC
	push {r4, lr}
	adds r3, r2, #0
	ldr r2, _0805EB0C
	ldr r4, [r2]
	lsls r2, r0, #1
	adds r2, r2, r0
	lsls r2, r2, #5
	ldr r0, [r4]
	adds r0, r0, r2
	movs r2, #0
	bl sub_8003368
	movs r0, #1
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0805EB0C: .4byte 0x0203F9F4

	.thumb
sub_805EB10: @ 0x0805EB10
	push {r4, lr}
	adds r4, r0, #0
	adds r2, r1, #0
	ldr r1, _0805EB2C
	ldrb r1, [r1]
	cmp r1, #0
	bne _0805EB54
	cmp r2, #1
	beq _0805EB48
	cmp r2, #1
	bgt _0805EB30
	cmp r2, #0
	beq _0805EB36
	b _0805ED14
	.align 2, 0
_0805EB2C: .4byte byte_20020B1
_0805EB30:
	cmp r2, #2
	beq _0805EB4E
	b _0805ED14
_0805EB36:
	ldr r1, _0805EB44
	adds r0, r4, #0
	movs r2, #1
	movs r3, #0
	bl sub_805EAEC
	b _0805ED14
	.align 2, 0
_0805EB44: .4byte 0x000004EA
_0805EB48:
	adds r0, r4, #0
	movs r1, #9
	b _0805ECE0
_0805EB4E:
	adds r0, r4, #0
	movs r1, #1
	b _0805ED00
_0805EB54:
	cmp r1, #1
	bne _0805EBB8
	cmp r2, #1
	beq _0805EBA8
	cmp r2, #1
	bgt _0805EB66
	cmp r2, #0
	beq _0805EB6C
	b _0805ED14
_0805EB66:
	cmp r2, #2
	beq _0805EBB0
	b _0805ED14
_0805EB6C:
	ldr r1, _0805EBA0
	adds r0, r4, #0
	movs r2, #1
	movs r3, #0
	bl sub_805EAEC
	adds r0, r4, #0
	movs r1, #6
	movs r2, #0
	movs r3, #0
	bl sub_805EF5C
	adds r0, r4, #0
	movs r1, #5
	movs r2, #0
	movs r3, #0
	bl sub_805F0A8
	adds r0, r4, #0
	movs r1, #5
	movs r2, #0
	movs r3, #0
	bl sub_805F0E8
	ldr r0, _0805EBA4
	b _0805ECCA
	.align 2, 0
_0805EBA0: .4byte 0x00000141
_0805EBA4: .4byte 0x083FD734
_0805EBA8:
	ldr r1, _0805EBAC
	b _0805ECDE
	.align 2, 0
_0805EBAC: .4byte 0x00000131
_0805EBB0:
	ldr r1, _0805EBB4
	b _0805ECFE
	.align 2, 0
_0805EBB4: .4byte 0x00000149
_0805EBB8:
	cmp r1, #2
	bne _0805EC1C
	cmp r2, #1
	beq _0805EC0C
	cmp r2, #1
	bgt _0805EBCA
	cmp r2, #0
	beq _0805EBD0
	b _0805ED14
_0805EBCA:
	cmp r2, #2
	beq _0805EC14
	b _0805ED14
_0805EBD0:
	ldr r1, _0805EC04
	adds r0, r4, #0
	movs r2, #1
	movs r3, #0
	bl sub_805EAEC
	adds r0, r4, #0
	movs r1, #5
	movs r2, #0
	movs r3, #0
	bl sub_805EF5C
	adds r0, r4, #0
	movs r1, #8
	movs r2, #0
	movs r3, #0
	bl sub_805F0A8
	adds r0, r4, #0
	movs r1, #8
	movs r2, #0
	movs r3, #0
	bl sub_805F0E8
	ldr r0, _0805EC08
	b _0805ECCA
	.align 2, 0
_0805EC04: .4byte 0x00000169
_0805EC08: .4byte 0x083FD754
_0805EC0C:
	ldr r1, _0805EC10
	b _0805ECDE
	.align 2, 0
_0805EC10: .4byte 0x00000181
_0805EC14:
	ldr r1, _0805EC18
	b _0805ECFE
	.align 2, 0
_0805EC18: .4byte 0x00000171
_0805EC1C:
	cmp r1, #4
	bne _0805EC80
	cmp r2, #1
	beq _0805EC70
	cmp r2, #1
	bgt _0805EC2E
	cmp r2, #0
	beq _0805EC34
	b _0805ED14
_0805EC2E:
	cmp r2, #2
	beq _0805EC78
	b _0805ED14
_0805EC34:
	ldr r1, _0805EC68
	adds r0, r4, #0
	movs r2, #1
	movs r3, #0
	bl sub_805EAEC
	adds r0, r4, #0
	movs r1, #5
	movs r2, #0
	movs r3, #0
	bl sub_805EF5C
	adds r0, r4, #0
	movs r1, #3
	movs r2, #0
	movs r3, #0
	bl sub_805F0A8
	adds r0, r4, #0
	movs r1, #3
	movs r2, #0
	movs r3, #0
	bl sub_805F0E8
	ldr r0, _0805EC6C
	b _0805ECCA
	.align 2, 0
_0805EC68: .4byte 0x000001D1
_0805EC6C: .4byte 0x083FD794
_0805EC70:
	ldr r1, _0805EC74
	b _0805ECDE
	.align 2, 0
_0805EC74: .4byte 0x000001B1
_0805EC78:
	ldr r1, _0805EC7C
	b _0805ECFE
	.align 2, 0
_0805EC7C: .4byte 0x000001A9
_0805EC80:
	cmp r1, #3
	bne _0805ED1C
	cmp r2, #1
	beq _0805ECDC
	cmp r2, #1
	bgt _0805EC92
	cmp r2, #0
	beq _0805EC98
	b _0805ED14
_0805EC92:
	cmp r2, #2
	beq _0805ECFC
	b _0805ED14
_0805EC98:
	ldr r1, _0805ECD4
	adds r0, r4, #0
	movs r2, #1
	movs r3, #0
	bl sub_805EAEC
	adds r0, r4, #0
	movs r1, #5
	movs r2, #0
	movs r3, #0
	bl sub_805EF5C
	adds r0, r4, #0
	movs r1, #9
	movs r2, #0
	movs r3, #0
	bl sub_805F0A8
	adds r0, r4, #0
	movs r1, #9
	movs r2, #0
	movs r3, #0
	bl sub_805F0E8
	ldr r0, _0805ECD8
_0805ECCA:
	movs r1, #7
	movs r2, #7
	bl DmaTransferObjPalette
	b _0805ED14
	.align 2, 0
_0805ECD4: .4byte 0x00000191
_0805ECD8: .4byte 0x083FD774
_0805ECDC:
	ldr r1, _0805ECF8
_0805ECDE:
	adds r0, r4, #0
_0805ECE0:
	movs r2, #1
	movs r3, #0
	bl sub_805EAEC
	adds r0, r4, #0
	movs r1, #6
	movs r2, #0
	movs r3, #0
	bl sub_805EF5C
	b _0805ED14
	.align 2, 0
_0805ECF8: .4byte 0x000001A1
_0805ECFC:
	ldr r1, _0805ED18
_0805ECFE:
	adds r0, r4, #0
_0805ED00:
	movs r2, #0
	movs r3, #0
	bl sub_805EAEC
	adds r0, r4, #0
	movs r1, #6
	movs r2, #0
	movs r3, #0
	bl sub_805EF5C
_0805ED14:
	movs r0, #1
	b _0805ED20
	.align 2, 0
_0805ED18: .4byte 0x00000191
_0805ED1C:
	.2byte 0xEE00, 0xEE00
_0805ED20:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

    .thumb
sub_805ED28: @ 0x0805ED28
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	ldr r6, _0805ED88
	ldr r3, [r6]
	ldr r3, [r3]
	lsls r4, r0, #1
	adds r4, r4, r0
	lsls r4, r4, #5
	adds r3, r4, r3
	lsls r5, r1, #0x10
	str r5, [r3, #0x1c]
	lsls r0, r2, #0x10
	str r0, [r3, #0x20]
	str r5, [r3, #0x24]
	str r0, [r3, #0x28]
	adds r3, #0x57
	movs r0, #0
	strb r0, [r3]
	ldr r5, [r6]
	ldr r3, [r5]
	adds r3, r4, r3
	str r0, [r3, #0x2c]
	ldr r0, _0805ED8C
	ldrh r0, [r0]
	subs r1, r1, r0
	movs r0, #0
	mov r8, r0
	strh r1, [r3, #6]
	ldr r1, [r5]
	adds r1, r4, r1
	ldr r0, _0805ED90
	ldrb r0, [r0]
	subs r2, r2, r0
	strb r2, [r1, #8]
	ldr r0, [r6]
	ldr r0, [r0]
	adds r4, r4, r0
	adds r4, #0x5a
	mov r0, r8
	strb r0, [r4]
	movs r0, #1
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0805ED88: .4byte 0x0203F9F4
_0805ED8C: .4byte gCameraPixelX
_0805ED90: .4byte gCameraPixelY

    .thumb
sub_805ED94: @ 0x0805ED94
	push {r4, lr}
	adds r3, r1, #0
	adds r4, r2, #0
	ldr r1, _0805EDB8
	movs r2, #0
	ldrsh r1, [r1, r2]
	adds r1, r1, r3
	ldr r2, _0805EDBC
	movs r3, #0
	ldrsh r2, [r2, r3]
	adds r2, r2, r4
	movs r3, #0
	bl sub_805ED28
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0805EDB8: .4byte 0x0203F994
_0805EDBC: .4byte 0x0203F996

    .thumb
sub_805EDC0: @ 0x0805EDC0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r3, _0805EE30
	mov r8, r3
	ldr r3, [r3]
	ldr r3, [r3]
	lsls r4, r0, #1
	adds r4, r4, r0
	lsls r4, r4, #5
	adds r3, r4, r3
	ldr r6, _0805EE34
	movs r5, #0
	ldrsh r0, [r6, r5]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	str r0, [r3, #0x1c]
	ldr r5, _0805EE38
	movs r7, #0
	ldrsh r0, [r5, r7]
	adds r0, r0, r2
	lsls r0, r0, #0x10
	str r0, [r3, #0x20]
	movs r7, #0
	ldrsh r0, [r6, r7]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	str r0, [r3, #0x24]
	movs r6, #0
	ldrsh r0, [r5, r6]
	adds r0, r0, r2
	lsls r0, r0, #0x10
	str r0, [r3, #0x28]
	adds r3, #0x57
	movs r5, #0
	strb r5, [r3]
	mov r7, r8
	ldr r3, [r7]
	ldr r0, [r3]
	adds r0, r4, r0
	str r5, [r0, #0x2c]
	strh r1, [r0, #6]
	ldr r0, [r3]
	adds r0, r4, r0
	strb r2, [r0, #8]
	ldr r0, [r7]
	ldr r0, [r0]
	adds r4, r4, r0
	adds r4, #0x5a
	strb r5, [r4]
	movs r0, #1
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0805EE30: .4byte 0x0203F9F4
_0805EE34: .4byte gCameraPixelX
_0805EE38: .4byte gCameraPixelY

    .thumb
sub_805EE3C: @ 0x0805EE3C
	push {r4, r5, r6, lr}
	ldr r6, _0805EE80
	ldr r3, [r6]
	ldr r3, [r3]
	lsls r4, r0, #1
	adds r4, r4, r0
	lsls r4, r4, #5
	adds r3, r4, r3
	lsls r5, r1, #0x10
	str r5, [r3, #0x1c]
	lsls r0, r2, #0x10
	str r0, [r3, #0x20]
	str r5, [r3, #0x24]
	str r0, [r3, #0x28]
	adds r3, #0x57
	movs r5, #0
	strb r5, [r3]
	ldr r3, [r6]
	ldr r0, [r3]
	adds r0, r4, r0
	str r5, [r0, #0x2c]
	strh r1, [r0, #6]
	ldr r0, [r3]
	adds r0, r4, r0
	strb r2, [r0, #8]
	ldr r0, [r6]
	ldr r0, [r0]
	adds r4, r4, r0
	adds r4, #0x5a
	movs r0, #1
	strb r0, [r4]
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0805EE80: .4byte 0x0203F9F4

	.thumb
sub_805EE84: @ 0x0805EE84
	ldr r3, _0805EEAC
	ldr r1, _0805EEB0
	ldr r1, [r1]
	ldr r2, [r1]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #5
	adds r1, r1, r2
	ldrh r0, [r1, #6]
	strh r0, [r3]
	ldr r2, _0805EEB4
	ldrb r0, [r1, #8]
	strh r0, [r2]
	ldr r2, _0805EEB8
	ldrb r1, [r1, #4]
	movs r0, #3
	subs r0, r0, r1
	strb r0, [r2]
	movs r0, #1
	bx lr
	.align 2, 0
_0805EEAC: .4byte 0x0203F994
_0805EEB0: .4byte 0x0203F9F4
_0805EEB4: .4byte 0x0203F996
_0805EEB8: .4byte byte_203F99D

    .thumb
sub_805EEBC: @ 0x0805EEBC
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, _0805EF04
	movs r0, #2
	ldrsh r1, [r4, r0]
	ldr r0, _0805EF08
	ldrh r2, [r0]
	ldr r0, [r4, #4]
	ldr r3, [r4, #8]
	adds r0, r0, r3
	asrs r0, r0, #0x10
	subs r2, r2, r0
	adds r0, r5, #0
	movs r3, #0
	bl sub_805ED28
	bl sub_800C50C
	movs r1, #3
	subs r1, r1, r0
	adds r0, r5, #0
	movs r2, #0
	movs r3, #0
	bl sub_805F010
	ldr r1, [r4, #4]
	adds r0, r5, #0
	movs r2, #0
	movs r3, #0
	bl sub_805F04C
	movs r0, #1
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0805EF04: .4byte gPlayerPos
_0805EF08: .4byte gMapPixelSizeY

    .thumb
sub_805EF0C: @ 0x0805EF0C
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, _0805EF54
	movs r0, #2
	ldrsh r1, [r4, r0]
	ldr r0, _0805EF58
	ldrh r2, [r0]
	ldr r0, [r4, #4]
	ldr r3, [r4, #8]
	adds r0, r0, r3
	asrs r0, r0, #0x10
	subs r2, r2, r0
	adds r0, r5, #0
	movs r3, #0
	bl sub_805ED28
	bl sub_800C50C
	movs r1, #3
	subs r1, r1, r0
	adds r0, r5, #0
	movs r2, #0
	movs r3, #0
	bl sub_805F010
	ldr r1, [r4, #4]
	adds r0, r5, #0
	movs r2, #0
	movs r3, #0
	bl sub_805F04C
	movs r0, #1
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0805EF54: .4byte gPlayerShadowPos
_0805EF58: .4byte gMapPixelSizeY

    .thumb
sub_805EF5C: @ 0x0805EF5C
	push {r4, r5, lr}
	adds r5, r1, #0
	ldr r4, _0805EF90
	ldr r1, [r4]
	ldr r2, [r1]
	lsls r3, r0, #1
	adds r3, r3, r0
	lsls r3, r3, #5
	adds r2, r3, r2
	ldrb r0, [r2, #0xa]
	ldrh r1, [r2]
	subs r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	strb r5, [r2, #0xa]
	ldr r0, [r4]
	ldr r0, [r0]
	adds r0, r0, r3
	ldrb r3, [r0, #0xb]
	movs r2, #0
	bl sub_8003368
	movs r0, #1
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0805EF90: .4byte 0x0203F9F4

	.thumb
sub_805EF94: @ 0x0805EF94
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	ldr r2, _0805EFEC
	ldr r0, [r2]
	ldr r1, [r0]
	lsls r0, r7, #1
	adds r0, r0, r7
	lsls r0, r0, #5
	adds r1, r0, r1
	ldr r0, [r1, #0x30]
	cmp r0, #0
	bne _0805EFB6
	ldr r0, [r1, #0x34]
	cmp r0, #0
	bne _0805EFB6
	.2byte 0xEE00, 0xEE00
_0805EFB6:
	ldr r0, [r2]
	ldr r1, [r0]
	lsls r0, r7, #1
	adds r0, r0, r7
	lsls r0, r0, #5
	adds r0, r0, r1
	ldr r2, [r0, #0x24]
	ldr r1, [r0, #0x1c]
	subs r6, r2, r1
	ldr r1, [r0, #0x28]
	ldr r0, [r0, #0x20]
	subs r5, r1, r0
	adds r0, r6, #0
	bl Abs
	adds r4, r0, #0
	adds r0, r5, #0
	bl Abs
	cmp r4, r0
	bls _0805EFF0
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_80039AC
	b _0805EFF8
	.align 2, 0
_0805EFEC: .4byte 0x0203F9F4
_0805EFF0:
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_80039B4
_0805EFF8:
	bl sub_805E3CC
	adds r1, r0, #0
	adds r0, r7, #0
	movs r2, #0
	movs r3, #0
	bl sub_805EF5C
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

    .thumb
sub_805F010: @ 0x0805F010
	push {lr}
	adds r3, r1, #0
	ldr r1, _0805F030
	ldr r2, [r1]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #5
	ldr r0, [r2]
	adds r0, r0, r1
	movs r1, #3
	subs r1, r1, r3
	bl SetSpritePriority
	movs r0, #1
	pop {r1}
	bx r1
	.align 2, 0
_0805F030: .4byte 0x0203F9F4

    .thumb
sub_805F034: @ 0x0805F034
	push {lr}
	ldr r1, _0805F048
	ldrb r1, [r1]
	movs r2, #0
	movs r3, #0
	bl sub_805F010
	pop {r1}
	bx r1
	.align 2, 0
_0805F048: .4byte byte_203F99D

    .thumb
sub_805F04C: @ 0x0805F04C
	ldr r2, _0805F064
	ldr r2, [r2]
	ldr r3, [r2]
	lsls r2, r0, #1
	adds r2, r2, r0
	lsls r2, r2, #5
	adds r2, r2, r3
	lsls r1, r1, #0x10
	str r1, [r2, #0x38]
	movs r0, #1
	bx lr
	.align 2, 0
_0805F064: .4byte 0x0203F9F4

	.thumb
sub_805F068: @ 0x0805F068
	ldr r2, _0805F07C
	ldr r2, [r2]
	ldr r3, [r2]
	lsls r2, r0, #1
	adds r2, r2, r0
	lsls r2, r2, #5
	adds r2, r2, r3
	strb r1, [r2, #0x10]
	movs r0, #1
	bx lr
	.align 2, 0
_0805F07C: .4byte 0x0203F9F4

    .thumb
sub_805F080: @ 0x0805F080
	push {r4, r5, lr}
	ldr r5, _0805F0A4
	ldr r2, [r5]
	lsls r4, r0, #1
	adds r4, r4, r0
	lsls r4, r4, #5
	ldr r0, [r2]
	adds r0, r0, r4
	bl SetSpritePalette
	ldr r0, [r5]
	ldr r0, [r0]
	adds r4, r4, r0
	movs r0, #1
	strb r0, [r4, #0x12]
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0805F0A4: .4byte 0x0203F9F4

    .thumb
sub_805F0A8: @ 0x0805F0A8
	push {lr}
	ldr r2, _0805F0C4
	ldr r3, [r2]
	lsls r2, r0, #1
	adds r2, r2, r0
	lsls r2, r2, #5
	ldr r0, [r3]
	adds r0, r0, r2
	bl sub_800378C
	movs r0, #1
	pop {r1}
	bx r1
	.align 2, 0
_0805F0C4: .4byte 0x0203F9F4

    .thumb
sub_805F0C8: @ 0x0805F0C8
	push {lr}
	ldr r1, _0805F0E4
	ldr r2, [r1]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #5
	ldr r0, [r2]
	adds r0, r0, r1
	bl sub_80037A0
	movs r0, #1
	pop {r1}
	bx r1
	.align 2, 0
_0805F0E4: .4byte 0x0203F9F4

    .thumb
sub_805F0E8: @ 0x0805F0E8
	push {lr}
	ldr r2, _0805F104
	ldr r3, [r2]
	lsls r2, r0, #1
	adds r2, r2, r0
	lsls r2, r2, #5
	ldr r0, [r3]
	adds r0, r0, r2
	bl sub_80037F4
	movs r0, #1
	pop {r1}
	bx r1
	.align 2, 0
_0805F104: .4byte 0x0203F9F4

	.thumb
sub_805F108: @ 0x0805F108
	ldr r2, _0805F11C
	ldr r2, [r2]
	ldr r3, [r2]
	lsls r2, r0, #1
	adds r2, r2, r0
	lsls r2, r2, #5
	adds r2, r2, r3
	strb r1, [r2, #0xe]
	movs r0, #1
	bx lr
	.align 2, 0
_0805F11C: .4byte 0x0203F9F4

    .thumb
sub_805F120: @ 0x0805F120
	push {lr}
	ldr r1, _0805F140
	ldr r2, [r1]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #5
	ldr r0, [r2]
	adds r0, r0, r1
	ldr r2, _0805F144
	movs r1, #0xf
	bl sub_800E9EC
	movs r0, #1
	pop {r1}
	bx r1
	.align 2, 0
_0805F140: .4byte 0x0203F9F4
_0805F144: .4byte 0x00001FFF

    .thumb
sub_805F148: @ 0x0805F148
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov sb, r0
	adds r4, r1, #0
	adds r6, r2, #0
	mov sl, r3
	ldr r0, _0805F234
	mov r8, r0
	ldr r0, [r0]
	ldr r1, [r0]
	mov r2, sb
	lsls r0, r2, #1
	add r0, sb
	lsls r5, r0, #5
	adds r1, r5, r1
	adds r1, #0x55
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _0805F190
	movs r0, #0x96
	lsls r0, r0, #0xf
	bl sub_8003854
	mov r2, r8
	ldr r1, [r2]
	ldr r1, [r1]
	adds r1, r5, r1
	adds r1, #0x55
	strb r0, [r1]
_0805F190:
	mov r1, r8
	ldr r0, [r1]
	ldr r0, [r0]
	adds r0, r5, r0
	adds r0, #0x55
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldr r1, _0805F238
	ldr r1, [r1]
	bl sub_800389C
	mov r2, r8
	ldr r0, [r2]
	ldr r0, [r0]
	adds r0, r5, r0
	adds r0, #0x55
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldr r1, _0805F23C
	ldr r1, [r1]
	bl sub_8003894
	mov r1, r8
	ldr r0, [r1]
	ldr r0, [r0]
	adds r0, r5, r0
	lsls r2, r4, #0x10
	str r2, [r0, #0x24]
	lsls r3, r6, #0x10
	str r3, [r0, #0x28]
	ldr r1, [r0, #0x1c]
	subs r7, r2, r1
	ldr r1, [r0, #0x20]
	subs r6, r3, r1
	mov r2, sl
	str r2, [r0, #0x2c]
	adds r0, r7, #0
	bl Abs
	mov r2, r8
	ldr r1, [r2]
	ldr r1, [r1]
	adds r1, r5, r1
	str r0, [r1, #0x30]
	adds r0, r6, #0
	bl Abs
	mov r2, r8
	ldr r1, [r2]
	ldr r1, [r1]
	adds r1, r5, r1
	str r0, [r1, #0x34]
	adds r0, r7, #0
	bl Abs
	adds r4, r0, #0
	adds r0, r6, #0
	bl Abs
	cmp r4, r0
	bls _0805F240
	mov r1, r8
	ldr r0, [r1]
	ldr r0, [r0]
	adds r0, r5, r0
	adds r0, #0x55
	movs r4, #0
	ldrsb r4, [r0, r4]
	adds r0, r6, #0
	adds r1, r7, #0
	bl sub_80039AC
	adds r2, r0, #0
	adds r0, r4, #0
	mov r1, sl
	movs r3, #0
	bl sub_8003884
	b _0805F262
	.align 2, 0
_0805F234: .4byte 0x0203F9F4
_0805F238: .4byte 0x080CC844
_0805F23C: .4byte 0x080CC7EC
_0805F240:
	mov r2, r8
	ldr r0, [r2]
	ldr r0, [r0]
	adds r0, r5, r0
	adds r0, #0x55
	movs r4, #0
	ldrsb r4, [r0, r4]
	adds r0, r7, #0
	adds r1, r6, #0
	bl sub_80039B4
	adds r2, r0, #0
	adds r0, r4, #0
	mov r1, sl
	movs r3, #0
	bl sub_8003884
_0805F262:
	ldr r0, _0805F288
	ldr r0, [r0]
	ldr r1, [r0]
	mov r2, sb
	lsls r0, r2, #1
	add r0, sb
	lsls r0, r0, #5
	adds r0, r0, r1
	adds r0, #0x57
	movs r1, #1
	strb r1, [r0]
	movs r0, #1
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0805F288: .4byte 0x0203F9F4

    .thumb
sub_805F28C: @ 0x0805F28C
	push {r4, lr}
	adds r3, r1, #0
	ldr r1, _0805F2A8
	movs r2, #0
	ldrsh r1, [r1, r2]
	ldr r2, _0805F2AC
	movs r4, #0
	ldrsh r2, [r2, r4]
	bl sub_805F148
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0805F2A8: .4byte 0x0203F994
_0805F2AC: .4byte 0x0203F996

    .thumb
sub_805F2B0: @ 0x0805F2B0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov sb, r0
	adds r4, r1, #0
	adds r6, r2, #0
	mov sl, r3
	ldr r0, _0805F3AC
	mov r8, r0
	ldr r0, [r0]
	ldr r1, [r0]
	mov r2, sb
	lsls r0, r2, #1
	add r0, sb
	lsls r5, r0, #5
	adds r1, r5, r1
	adds r1, #0x55
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _0805F2F8
	movs r0, #0x96
	lsls r0, r0, #0xf
	bl sub_8003854
	mov r2, r8
	ldr r1, [r2]
	ldr r1, [r1]
	adds r1, r5, r1
	adds r1, #0x55
	strb r0, [r1]
_0805F2F8:
	mov r1, r8
	ldr r0, [r1]
	ldr r0, [r0]
	adds r0, r5, r0
	adds r0, #0x55
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldr r1, _0805F3B0
	ldr r1, [r1]
	bl sub_800389C
	mov r2, r8
	ldr r0, [r2]
	ldr r0, [r0]
	adds r0, r5, r0
	adds r0, #0x55
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldr r1, _0805F3B4
	ldr r1, [r1]
	bl sub_8003894
	mov r1, r8
	ldr r0, [r1]
	ldr r2, [r0]
	adds r2, r5, r2
	ldr r0, _0805F3B8
	movs r1, #0
	ldrsh r3, [r0, r1]
	adds r3, r3, r4
	lsls r3, r3, #0x10
	str r3, [r2, #0x24]
	ldr r0, _0805F3BC
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r0, r0, r6
	lsls r0, r0, #0x10
	str r0, [r2, #0x28]
	ldr r1, [r2, #0x1c]
	subs r7, r3, r1
	ldr r1, [r2, #0x20]
	subs r6, r0, r1
	mov r0, sl
	str r0, [r2, #0x2c]
	adds r0, r7, #0
	bl Abs
	mov r2, r8
	ldr r1, [r2]
	ldr r1, [r1]
	adds r1, r5, r1
	str r0, [r1, #0x30]
	adds r0, r6, #0
	bl Abs
	mov r2, r8
	ldr r1, [r2]
	ldr r1, [r1]
	adds r1, r5, r1
	str r0, [r1, #0x34]
	adds r0, r7, #0
	bl Abs
	adds r4, r0, #0
	adds r0, r6, #0
	bl Abs
	cmp r4, r0
	bls _0805F3C0
	mov r1, r8
	ldr r0, [r1]
	ldr r0, [r0]
	adds r0, r5, r0
	adds r0, #0x55
	movs r4, #0
	ldrsb r4, [r0, r4]
	adds r0, r6, #0
	adds r1, r7, #0
	bl sub_80039AC
	adds r2, r0, #0
	adds r0, r4, #0
	mov r1, sl
	movs r3, #0
	bl sub_8003884
	b _0805F3E2
	.align 2, 0
_0805F3AC: .4byte 0x0203F9F4
_0805F3B0: .4byte 0x080CC844
_0805F3B4: .4byte 0x080CC7EC
_0805F3B8: .4byte gCameraPixelX
_0805F3BC: .4byte gCameraPixelY
_0805F3C0:
	mov r2, r8
	ldr r0, [r2]
	ldr r0, [r0]
	adds r0, r5, r0
	adds r0, #0x55
	movs r4, #0
	ldrsb r4, [r0, r4]
	adds r0, r7, #0
	adds r1, r6, #0
	bl sub_80039B4
	adds r2, r0, #0
	adds r0, r4, #0
	mov r1, sl
	movs r3, #0
	bl sub_8003884
_0805F3E2:
	ldr r0, _0805F408
	ldr r0, [r0]
	ldr r1, [r0]
	mov r2, sb
	lsls r0, r2, #1
	add r0, sb
	lsls r0, r0, #5
	adds r0, r0, r1
	adds r0, #0x57
	movs r1, #1
	strb r1, [r0]
	movs r0, #1
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0805F408: .4byte 0x0203F9F4

	.thumb
sub_805F40C: @ 0x0805F40C
	ldr r2, _0805F424
	ldr r2, [r2]
	ldr r3, [r2]
	lsls r2, r0, #1
	adds r2, r2, r0
	lsls r2, r2, #5
	adds r2, r2, r3
	adds r2, #0x5b
	strb r1, [r2]
	movs r0, #1
	bx lr
	.align 2, 0
_0805F424: .4byte 0x0203F9F4

	.thumb
sub_805F428: @ 0x0805F428
	ldr r2, _0805F440
	ldr r2, [r2]
	ldr r3, [r2]
	lsls r2, r0, #1
	adds r2, r2, r0
	lsls r2, r2, #5
	adds r2, r2, r3
	adds r2, #0x5c
	strb r1, [r2]
	movs r0, #1
	bx lr
	.align 2, 0
_0805F440: .4byte 0x0203F9F4

    .thumb
AllocateOAMMatrices: @ 0x0805F444
	push {r4, lr}
	ldr r1, _0805F460
	str r0, [r1]
	ldr r4, _0805F464
	lsls r0, r0, #4
	movs r1, #5
	movs r2, #3
	bl Alloc
	str r0, [r4]
	movs r0, #1
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0805F460: .4byte gMatricesCount
_0805F464: .4byte gMatrices

    .thumb
DeleteOAMMatrices: @ 0x0805F468
	push {lr}
	ldr r0, _0805F47C
	ldr r0, [r0]
	movs r1, #3
	bl Free
	movs r0, #1
	pop {r1}
	bx r1
	.align 2, 0
_0805F47C: .4byte gMatrices

    .thumb
sub_805F480: @ 0x0805F480
	push {r4, lr}
	adds r2, r1, #0
	ldr r4, _0805F4AC
	ldr r1, [r4]
	ldr r1, [r1]
	lsls r3, r0, #1
	adds r3, r3, r0
	lsls r3, r3, #5
	adds r1, r3, r1
	adds r1, #0x54
	strb r2, [r1]
	ldr r0, [r4]
	ldr r0, [r0]
	adds r0, r0, r3
	movs r1, #1
	bl sub_8003820
	movs r0, #1
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0805F4AC: .4byte 0x0203F9F4

    .thumb
sub_805F4B0: @ 0x0805F4B0
	push {r4, lr}
	ldr r3, _0805F4D8
	ldr r3, [r3]
	ldr r4, [r3]
	lsls r3, r0, #1
	adds r3, r3, r0
	lsls r3, r3, #5
	adds r3, r3, r4
	lsls r0, r1, #0x10
	str r0, [r3, #0x50]
	lsls r0, r2, #0x10
	str r0, [r3, #0x3c]
	adds r3, #0x54
	ldrb r0, [r3]
	bl sub_8025718
	movs r0, #1
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0805F4D8: .4byte 0x0203F9F4

	.thumb
sub_805F4DC: @ 0x0805F4DC
	push {r4, lr}
	adds r4, r2, #0
	ldr r2, _0805F508
	ldr r3, [r2]
	lsls r2, r0, #1
	adds r2, r2, r0
	lsls r2, r2, #5
	ldr r0, [r3]
	adds r2, r0, r2
	lsls r1, r1, #0x10
	str r1, [r2, #0x40]
	cmp r4, #0
	bne _0805F4FA
	.2byte 0xEE00, 0xEE00
_0805F4FA:
	ldr r0, [r2, #0x3c]
	cmp r0, r1
	ble _0805F50C
	rsbs r0, r4, #0
	str r0, [r2, #0x44]
	b _0805F50E
	.align 2, 0
_0805F508: .4byte 0x0203F9F4
_0805F50C:
	str r4, [r2, #0x44]
_0805F50E:
	adds r1, r2, #0
	adds r1, #0x58
	movs r0, #1
	strb r0, [r1]
	pop {r4}
	pop {r1}
	bx r1

	.thumb
sub_805F51C: @ 0x0805F51C
	push {r4, r5, lr}
	adds r4, r2, #0
	adds r5, r3, #0
	ldr r2, _0805F544
	ldr r3, [r2]
	lsls r2, r0, #1
	adds r2, r2, r0
	lsls r2, r2, #5
	ldr r0, [r3]
	adds r2, r0, r2
	lsls r1, r1, #0x10
	str r1, [r2, #0x48]
	cmp r4, #0
	bne _0805F53C
	.2byte 0xEE00, 0xEE00
_0805F53C:
	cmp r5, #0
	beq _0805F548
	str r4, [r2, #0x4c]
	b _0805F54C
	.align 2, 0
_0805F544: .4byte 0x0203F9F4
_0805F548:
	rsbs r0, r4, #0
	str r0, [r2, #0x4c]
_0805F54C:
	adds r1, r2, #0
	adds r1, #0x59
	movs r0, #1
	strb r0, [r1]
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

    .thumb
ChangeRoomBgm: @ 0x0805F55C
	push {lr}
	adds r1, r0, #0
	ldr r0, _0805F578
	strh r1, [r0]
	ldr r0, _0805F57C
	ldrb r0, [r0]
	cmp r0, #0
	beq _0805F572
	adds r0, r1, #0
	bl audio_start_tune
_0805F572:
	movs r0, #1
	pop {r1}
	bx r1
	.align 2, 0
_0805F578: .4byte gLoadedRoomBgm
_0805F57C: .4byte 0x0203EA88

    .thumb
sub_805F580: @ 0x0805F580
	push {lr}
	bl audio_halt_tune
	movs r0, #1
	pop {r1}
	bx r1

    .thumb
sub_805F58C: @ 0x0805F58C
	push {r4, r5, lr}
	adds r4, r0, #0
	cmp r1, #0
	beq _0805F5E2
	ldr r0, _0805F5C8
	ldr r5, [r0]
	ldr r0, _0805F5CC
	ldrb r0, [r0]
	cmp r0, #0
	beq _0805F5D8
	ldr r3, _0805F5D0
	lsls r4, r4, #3
	adds r0, r4, r3
	ldrh r0, [r0]
	ldr r1, _0805F5D4
	ldrb r1, [r1]
	adds r1, r1, r4
	adds r2, r3, #2
	adds r1, r1, r2
	ldrb r1, [r1]
	adds r3, #4
	adds r4, r4, r3
	ldr r2, [r4]
	movs r3, #0x80
	lsls r3, r3, #9
	adds r2, r2, r3
	bl audio_new_fx
	adds r1, r0, #0
	b _0805F5DA
	.align 2, 0
_0805F5C8: .4byte 0x0203F9F4
_0805F5CC: .4byte gCanPlaySfx
_0805F5D0: .4byte 0x080CE440
_0805F5D4: .4byte gSfxVolume
_0805F5D8:
	movs r1, #0xff
_0805F5DA:
	adds r0, r5, #0
	adds r0, #0x25
	strb r1, [r0]
	b _0805F60E
_0805F5E2:
	ldr r0, _0805F618
	ldrb r0, [r0]
	cmp r0, #0
	beq _0805F60E
	ldr r3, _0805F61C
	lsls r4, r4, #3
	adds r0, r4, r3
	ldrh r0, [r0]
	ldr r1, _0805F620
	ldrb r1, [r1]
	adds r1, r1, r4
	adds r2, r3, #2
	adds r1, r1, r2
	ldrb r1, [r1]
	adds r3, #4
	adds r4, r4, r3
	ldr r2, [r4]
	movs r3, #0x80
	lsls r3, r3, #9
	adds r2, r2, r3
	bl audio_new_fx
_0805F60E:
	movs r0, #1
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0805F618: .4byte gCanPlaySfx
_0805F61C: .4byte 0x080CE440
_0805F620: .4byte gSfxVolume

    .thumb
sub_805F624: @ 0x0805F624
	push {lr}
	ldr r0, _0805F640
	ldrb r0, [r0]
	cmp r0, #0
	beq _0805F648
	ldr r0, _0805F644
	ldr r0, [r0]
	adds r0, #0x25
	ldrb r0, [r0]
	bl audio_halt_fx
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	b _0805F64A
	.align 2, 0
_0805F640: .4byte gCanPlaySfx
_0805F644: .4byte 0x0203F9F4
_0805F648:
	movs r0, #0
_0805F64A:
	cmp r0, #0
	bne _0805F652
	bl audio_halt_all_fx
_0805F652:
	movs r0, #1
	pop {r1}
	bx r1

    .thumb
sub_805F658: @ 0x0805F658
	push {lr}
	bl audio_halt_all_fx
	movs r0, #1
	pop {r1}
	bx r1

    .thumb
sub_805F664: @ 0x0805F664
	push {r4, r5, lr}
	ldr r4, _0805F6A4
	ldrb r0, [r4]
	cmp r0, #0
	beq _0805F676
	ldr r0, _0805F6A8
	ldr r0, [r0]
	bl audio_halt_fx
_0805F676:
	ldr r5, _0805F6A8
	ldrb r0, [r4]
	cmp r0, #0
	beq _0805F6B4
	ldr r3, _0805F6AC
	adds r0, r3, #0
	adds r0, #0xb0
	ldrh r0, [r0]
	ldr r2, _0805F6B0
	adds r1, r3, #0
	adds r1, #0xb2
	ldrb r2, [r2]
	adds r1, r1, r2
	ldrb r1, [r1]
	adds r2, r3, #0
	adds r2, #0xb4
	ldr r2, [r2]
	movs r3, #0x80
	lsls r3, r3, #9
	adds r2, r2, r3
	bl audio_new_fx
	b _0805F6B8
	.align 2, 0
_0805F6A4: .4byte gCanPlaySfx
_0805F6A8: .4byte dword_20020B4
_0805F6AC: .4byte 0x080CE440
_0805F6B0: .4byte gSfxVolume
_0805F6B4:
	movs r0, #1
	rsbs r0, r0, #0
_0805F6B8:
	str r0, [r5]
	movs r0, #1
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

    .thumb
sub_805F6C4: @ 0x0805F6C4
	push {lr}
	ldr r0, _0805F6DC
	ldrb r0, [r0]
	cmp r0, #0
	beq _0805F6D6
	ldr r0, _0805F6E0
	ldr r0, [r0]
	bl audio_halt_fx
_0805F6D6:
	movs r0, #1
	pop {r1}
	bx r1
	.align 2, 0
_0805F6DC: .4byte gCanPlaySfx
_0805F6E0: .4byte dword_20020B4

    .thumb
audio_set_tune_volByIndex: @ 0x0805F6E4
	push {lr}
	adds r2, r0, #0
	cmp r1, #0
	beq _0805F708
	ldr r1, _0805F700
	ldr r0, _0805F704
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl audio_set_tune_vol
	b _0805F714
	.align 2, 0
_0805F700: .4byte dVolumes
_0805F704: .4byte gBgmMainVolume
_0805F708:
	ldr r0, _0805F71C
	lsls r1, r2, #2
	adds r1, r1, r0
	ldr r0, [r1]
	bl audio_set_tune_vol
_0805F714:
	movs r0, #1
	pop {r1}
	bx r1
	.align 2, 0
_0805F71C: .4byte dVolumes

    .thumb
sub_805F720: @ 0x0805F720
	push {lr}
	adds r2, r0, #0
	cmp r1, #0
	beq _0805F744
	ldr r1, _0805F73C
	ldr r0, _0805F740
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl audio_set_tune_vol
	b _0805F758
	.align 2, 0
_0805F73C: .4byte dVolumes
_0805F740: .4byte gBgmMainVolume
_0805F744:
	ldr r0, _0805F760
	ldrb r0, [r0]
	cmp r0, r2
	ble _0805F758
	ldr r0, _0805F764
	lsls r1, r2, #2
	adds r1, r1, r0
	ldr r0, [r1]
	bl audio_set_tune_vol
_0805F758:
	movs r0, #1
	pop {r1}
	bx r1
	.align 2, 0
_0805F760: .4byte gBgmMainVolume
_0805F764: .4byte dVolumes

    .thumb
sub_805F768: @ 0x0805F768
	push {lr}
	adds r2, r0, #0
	cmp r1, #0
	beq _0805F78C
	ldr r1, _0805F784
	ldr r0, _0805F788
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl audio_set_fx_vol
	b _0805F798
	.align 2, 0
_0805F784: .4byte dVolumes
_0805F788: .4byte gSfxMainVolume
_0805F78C:
	ldr r0, _0805F7A0
	lsls r1, r2, #2
	adds r1, r1, r0
	ldr r0, [r1]
	bl audio_set_fx_vol
_0805F798:
	movs r0, #1
	pop {r1}
	bx r1
	.align 2, 0
_0805F7A0: .4byte dVolumes

    .thumb
sub_805F7A4: @ 0x0805F7A4
	push {lr}
	cmp r0, #0
	beq _0805F7C4
	ldr r1, _0805F7BC
	ldr r0, _0805F7C0
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl audio_set_tune_vol
	b _0805F7CC
	.align 2, 0
_0805F7BC: .4byte dVolumes
_0805F7C0: .4byte gBgmMainVolume
_0805F7C4:
	ldr r0, _0805F7D4
	ldr r0, [r0]
	bl audio_set_tune_vol
_0805F7CC:
	movs r0, #1
	pop {r1}
	bx r1
	.align 2, 0
_0805F7D4: .4byte dVolumes

	.thumb
sub_805F7D8: @ 0x0805F7D8
	push {r4, lr}
	adds r1, r0, #0
	ldr r4, _0805F7F8
	ldrb r0, [r4]
	cmp r0, #0
	beq _0805F7E8
	.2byte 0xEE00, 0xEE00
_0805F7E8:
	adds r0, r1, #0
	bl sub_0802FEDC
	cmp r0, #0
	beq _0805F7FC
	movs r0, #1
	strb r0, [r4]
	b _0805F800
	.align 2, 0
_0805F7F8: .4byte byte_203F99F
_0805F7FC:
	.2byte 0xEE00, 0xEE00
_0805F800:
	movs r0, #1
	pop {r4}
	pop {r1}
	bx r1

	.thumb
sub_805F808: @ 0x0805F808
	push {lr}
	adds r3, r0, #0
	ldr r0, _0805F838
	ldrb r0, [r0]
	cmp r0, #0
	beq _0805F818
	.2byte 0xEE00, 0xEE00
_0805F818:
	ldr r1, _0805F83C
	ldr r0, [r1]
	adds r0, #0x22
	movs r2, #0
	strb r2, [r0]
	ldr r0, [r1]
	adds r0, #0x24
	movs r1, #1
	strb r1, [r0]
	ldr r0, _0805F840
	strh r2, [r0]
	cmp r3, #0
	beq _0805F848
	ldr r0, _0805F844
	strh r2, [r0]
	b _0805F852
	.align 2, 0
_0805F838: .4byte byte_203F9A1
_0805F83C: .4byte 0x0203F9F4
_0805F840: .4byte 0x0203FA10
_0805F844: .4byte 0x0203F990
_0805F848:
	ldr r1, _0805F85C
	ldr r0, _0805F860
	ldrh r0, [r0]
	subs r0, #1
	strh r0, [r1]
_0805F852:
	ldr r0, _0805F864
	strb r3, [r0]
	movs r0, #1
	pop {r1}
	bx r1
	.align 2, 0
_0805F85C: .4byte 0x0203F990
_0805F860: .4byte 0x0203F992
_0805F864: .4byte 0x0203FA13

    .thumb
sub_0805F868: @ 0x0805F868
	push {r4, r5, r6, lr}
	ldr r5, _0805F8CC
	ldrb r0, [r5]
	cmp r0, #0
	beq _0805F876
	.2byte 0xEE00, 0xEE00
_0805F876:
	ldr r4, _0805F8D0
	movs r0, #0x28
	movs r1, #5
	movs r2, #3
	bl Alloc
	str r0, [r4]
	adds r0, #0x25
	movs r3, #0
	strb r3, [r0]
	ldr r2, [r4]
	ldr r0, _0805F8D4
	movs r6, #0
	ldrsh r1, [r0, r6]
	adds r1, #0x78
	lsls r1, r1, #0x10
	str r1, [r2]
	ldr r0, _0805F8D8
	movs r6, #0
	ldrsh r0, [r0, r6]
	adds r0, #0x50
	lsls r0, r0, #0x10
	str r0, [r2, #4]
	str r1, [r2, #8]
	str r0, [r2, #0xc]
	str r1, [r2, #0x10]
	str r0, [r2, #0x14]
	str r3, [r2, #0x18]
	str r3, [r2, #0x1c]
	str r3, [r2, #0x20]
	adds r2, #0x26
	strb r3, [r2]
	ldr r0, [r4]
	adds r0, #0x24
	movs r1, #0xff
	strb r1, [r0]
	movs r0, #1
	strb r0, [r5]
	movs r0, #1
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0805F8CC: .4byte 0x0203FA15
_0805F8D0: .4byte 0x0203FA18
_0805F8D4: .4byte gCameraPixelX
_0805F8D8: .4byte gCameraPixelY

    .thumb
sub_0805F8DC: @ 0x0805F8DC
	push {r4, r5, lr}
	ldr r5, _0805F920
	ldrb r0, [r5]
	cmp r0, #0
	bne _0805F8EA
	.2byte 0xEE00, 0xEE00
_0805F8EA:
	ldr r4, _0805F924
	ldr r0, [r4]
	adds r2, r0, #0
	adds r2, #0x24
	movs r1, #0
	ldrsb r1, [r2, r1]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _0805F90C
	adds r0, r1, #0
	bl sub_8003864
	ldr r0, [r4]
	adds r0, #0x24
	movs r1, #0xff
	strb r1, [r0]
_0805F90C:
	ldr r0, [r4]
	movs r1, #3
	bl Free
	movs r0, #0
	strb r0, [r5]
	movs r0, #1
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0805F920: .4byte 0x0203FA15
_0805F924: .4byte 0x0203FA18

    .thumb
sub_0805F928: @ 0x0805F928
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	adds r5, r1, #0
	mov r8, r2
	ldr r0, _0805F9A4
	ldrb r0, [r0]
	cmp r0, #0
	bne _0805F940
	.2byte 0xEE00, 0xEE00
_0805F940:
	ldr r6, _0805F9A8
	ldr r0, [r6]
	adds r0, #0x24
	movs r1, #0
	ldrsb r1, [r0, r1]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _0805F960
	movs r0, #0x96
	lsls r0, r0, #0xf
	bl sub_8003854
	ldr r1, [r6]
	adds r1, #0x24
	strb r0, [r1]
_0805F960:
	ldr r0, [r6]
	adds r0, #0x24
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldr r1, _0805F9AC
	ldr r1, [r1]
	bl sub_800389C
	ldr r0, [r6]
	adds r0, #0x24
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldr r1, _0805F9B0
	ldr r1, [r1]
	bl sub_8003894
	cmp r4, #0
	bne _0805F9BC
	cmp r5, #0
	bne _0805F9BC
	ldr r0, _0805F9B4
	ldrh r1, [r0]
	subs r1, #0x78
	ldr r0, _0805F9B8
	ldrh r3, [r0]
	subs r3, #0x50
	movs r0, #0x78
	movs r2, #0x50
	bl sub_0805E270
	b _0805F9EC
	.align 2, 0
_0805F9A4: .4byte 0x0203FA15
_0805F9A8: .4byte 0x0203FA18
_0805F9AC: .4byte 0x080CC844
_0805F9B0: .4byte 0x080CC7EC
_0805F9B4: .4byte gMapPixelSizeX
_0805F9B8: .4byte gMapPixelSizeY
_0805F9BC:
	ldr r0, _0805FA68
	ldrh r0, [r0]
	subs r0, #0x78
	cmp r4, r0
	bls _0805F9C8
	adds r4, r0, #0
_0805F9C8:
	cmp r4, #0x77
	bgt _0805F9CE
	movs r4, #0x78
_0805F9CE:
	ldr r0, _0805FA6C
	ldrh r0, [r0]
	subs r0, #0x50
	cmp r5, r0
	bls _0805F9DA
	adds r5, r0, #0
_0805F9DA:
	cmp r5, #0x4f
	bgt _0805F9E0
	movs r5, #0x50
_0805F9E0:
	ldr r0, _0805FA70
	ldr r1, [r0]
	lsls r0, r4, #0x10
	str r0, [r1, #0x10]
	lsls r0, r5, #0x10
	str r0, [r1, #0x14]
_0805F9EC:
	ldr r4, _0805FA70
	ldr r0, [r4]
	ldr r2, [r0, #0x10]
	ldr r1, [r0, #8]
	subs r6, r2, r1
	ldr r1, [r0, #0x14]
	ldr r0, [r0, #0xc]
	subs r5, r1, r0
	adds r0, r6, #0
	bl Abs
	ldr r1, [r4]
	str r0, [r1, #0x18]
	adds r0, r5, #0
	bl Abs
	ldr r1, [r4]
	str r0, [r1, #0x1c]
	cmp r6, #0
	bne _0805FA1C
	cmp r5, #0
	bne _0805FA1C
	.2byte 0xEE00, 0xEE00
_0805FA1C:
	ldr r2, _0805FA74
	ldr r7, _0805FA70
	ldr r1, [r7]
	ldr r0, [r1, #0x18]
	str r0, [r2]
	ldr r2, _0805FA78
	ldr r0, [r1, #0x1c]
	str r0, [r2]
	ldr r2, _0805FA7C
	ldr r0, [r1, #8]
	str r0, [r2]
	ldr r2, _0805FA80
	ldr r0, [r1, #0xc]
	str r0, [r2]
	adds r0, r6, #0
	bl Abs
	adds r4, r0, #0
	adds r0, r5, #0
	bl Abs
	cmp r4, r0
	bls _0805FA84
	ldr r0, [r7]
	adds r0, #0x24
	movs r4, #0
	ldrsb r4, [r0, r4]
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_80039AC
	adds r2, r0, #0
	adds r0, r4, #0
	mov r1, r8
	movs r3, #0
	bl sub_8003884
	b _0805FAA0
	.align 2, 0
_0805FA68: .4byte gMapPixelSizeX
_0805FA6C: .4byte gMapPixelSizeY
_0805FA70: .4byte 0x0203FA18
_0805FA74: .4byte 0x0203FA1C
_0805FA78: .4byte 0x0203FA20
_0805FA7C: .4byte 0x0203FA24
_0805FA80: .4byte 0x0203FA28
_0805FA84:
	ldr r0, [r7]
	adds r0, #0x24
	movs r4, #0
	ldrsb r4, [r0, r4]
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_80039B4
	adds r2, r0, #0
	adds r0, r4, #0
	mov r1, r8
	movs r3, #0
	bl sub_8003884
_0805FAA0:
	ldr r4, _0805FACC
	ldr r0, [r4]
	adds r0, #0x24
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	movs r1, #0
	movs r2, #0
	bl sub_800386C
	ldr r0, [r4]
	mov r1, r8
	str r1, [r0, #0x20]
	adds r0, #0x25
	movs r1, #1
	strb r1, [r0]
	movs r0, #1
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0805FACC: .4byte 0x0203FA18

    .thumb
sub_805FAD0: @ 0x0805FAD0
	push {lr}
	adds r2, r0, #0
	ldr r0, _0805FAEC
	movs r1, #0
	ldrsh r0, [r0, r1]
	ldr r1, _0805FAF0
	movs r3, #0
	ldrsh r1, [r1, r3]
	movs r3, #0
	bl sub_0805F928
	pop {r1}
	bx r1
	.align 2, 0
_0805FAEC: .4byte 0x0203F994
_0805FAF0: .4byte 0x0203F996

    .thumb
sub_805FAF4: @ 0x0805FAF4
	push {lr}
	adds r2, r0, #0
	ldr r0, _0805FB10
	movs r1, #2
	ldrsh r0, [r0, r1]
	ldr r1, _0805FB14
	movs r3, #2
	ldrsh r1, [r1, r3]
	movs r3, #0
	bl sub_0805F928
	pop {r1}
	bx r1
	.align 2, 0
_0805FB10: .4byte 0x0203FA08
_0805FB14: .4byte 0x0203FA0C

	.thumb
sub_805FB18: @ 0x0805FB18
	ldr r1, _0805FB2C
	ldr r0, _0805FB30
	ldr r2, [r0]
	ldr r0, [r2, #8]
	str r0, [r1]
	ldr r1, _0805FB34
	ldr r0, [r2, #0xc]
	str r0, [r1]
	movs r0, #1
	bx lr
	.align 2, 0
_0805FB2C: .4byte 0x0203FA08
_0805FB30: .4byte 0x0203FA18
_0805FB34: .4byte 0x0203FA0C

	.thumb
sub_805FB38: @ 0x0805FB38
	ldr r1, _0805FB44
	ldr r1, [r1]
	adds r1, #0x26
	strb r0, [r1]
	movs r0, #1
	bx lr
	.align 2, 0
_0805FB44: .4byte 0x0203FA18

	.thumb
sub_805FB48: @ 0x0805FB48
	push {lr}
	adds r2, r0, #0
	ldr r0, _0805FB78
	ldrb r0, [r0]
	cmp r0, #0
	bne _0805FB58
	.2byte 0xEE00, 0xEE00
_0805FB58:
	ldr r1, _0805FB7C
	cmp r2, #0
	bne _0805FB62
	ldr r0, [r1]
	ldr r2, [r0, #0x20]
_0805FB62:
	ldr r1, [r1]
	movs r3, #2
	ldrsh r0, [r1, r3]
	movs r3, #6
	ldrsh r1, [r1, r3]
	movs r3, #0
	bl sub_0805F928
	movs r0, #1
	pop {r1}
	bx r1
	.align 2, 0
_0805FB78: .4byte 0x0203FA15
_0805FB7C: .4byte 0x0203FA18

    .thumb
sub_805FB80: @ 0x0805FB80
	push {lr}
	ldr r1, _0805FB9C
	movs r0, #1
	strb r0, [r1]
	ldr r0, _0805FBA0
	movs r2, #0
	ldrsh r1, [r0, r2]
	movs r0, #2
	movs r2, #2
	bl sub_80266C8
	movs r0, #1
	pop {r1}
	bx r1
	.align 2, 0
_0805FB9C: .4byte 0x0203FA14
_0805FBA0: .4byte gCameraPixelY
	
	.thumb
sub_805FBA4: @ 0x0805FBA4
	ldr r1, _0805FBB0
	movs r0, #2
	strb r0, [r1]
	movs r0, #1
	bx lr
	.align 2, 0
_0805FBB0: .4byte 0x0203FA14

    .thumb
sub_805FBB4: @ 0x0805FBB4
	push {lr}
	cmp r0, #1
	beq _0805FBD8
	cmp r0, #1
	bgt _0805FBC4
	cmp r0, #0
	beq _0805FBCA
	b _0805FBEA
_0805FBC4:
	cmp r0, #2
	beq _0805FBE4
	b _0805FBEA
_0805FBCA:
	ldr r0, _0805FBD4
	bl sub_80270AC
	b _0805FBEA
	.align 2, 0
_0805FBD4: .4byte 0x00000FFF
_0805FBD8:
	ldr r0, _0805FBE0
	bl sub_80271A4
	b _0805FBEA
	.align 2, 0
_0805FBE0: .4byte 0x00000FFF
_0805FBE4:
	ldr r0, _0805FBF0
	bl sub_8026C24
_0805FBEA:
	movs r0, #1
	pop {r1}
	bx r1
	.align 2, 0
_0805FBF0: .4byte 0x00000FFF

    .thumb
sub_805FBF4: @ 0x0805FBF4
	push {lr}
	cmp r0, #1
	beq _0805FC18
	cmp r0, #1
	bgt _0805FC04
	cmp r0, #0
	beq _0805FC0A
	b _0805FC2C
_0805FC04:
	cmp r0, #2
	beq _0805FC28
	b _0805FC2C
_0805FC0A:
	ldr r0, _0805FC14
	movs r2, #1
	bl sub_8026E48
	b _0805FC2C
	.align 2, 0
_0805FC14: .4byte 0x00000FFF
_0805FC18:
	ldr r0, _0805FC24
	movs r2, #1
	bl sub_8026F78
	b _0805FC2C
	.align 2, 0
_0805FC24: .4byte 0x00000FFF
_0805FC28:
	bl sub_8026C8C
_0805FC2C:
	movs r0, #1
	pop {r1}
	bx r1
	.align 2, 0

    .thumb
sub_805FC34: @ 0x0805FC34
	push {lr}
	adds r1, r0, #0
	ldr r2, _0805FC48
	cmp r1, #0
	beq _0805FC4C
	ldrb r0, [r2]
	cmp r0, #0
	beq _0805FC4C
	movs r0, #0
	b _0805FC92
	.align 2, 0
_0805FC48: .4byte byte_203F99C
_0805FC4C:
	strb r1, [r2]
	ldr r2, _0805FC68
	ldr r0, [r2]
	adds r0, #0x23
	strb r1, [r0]
	cmp r1, #0
	beq _0805FC74
	ldr r1, _0805FC6C
	ldr r2, [r2]
	ldrh r0, [r2, #0x1a]
	strh r0, [r1]
	ldr r1, _0805FC70
	b _0805FC7E
	.align 2, 0
_0805FC68: .4byte 0x0203F9F4
_0805FC6C: .4byte word_203F998
_0805FC70: .4byte word_203F99A
_0805FC74:
	ldr r1, _0805FC98
	ldr r2, [r2]
	ldrh r0, [r2, #0x1a]
	strh r0, [r1]
	ldr r1, _0805FC9C
_0805FC7E:
	movs r3, #0
	ldrsh r0, [r1, r3]
	ldrh r2, [r2, #0x1a]
	cmp r0, r2
	bne _0805FC90
	movs r2, #1
	rsbs r2, r2, #0
	adds r0, r2, #0
	strh r0, [r1]
_0805FC90:
	movs r0, #1
_0805FC92:
	pop {r1}
	bx r1
	.align 2, 0
_0805FC98: .4byte word_203F99A
_0805FC9C: .4byte word_203F998

	.thumb
sub_805FCA0: @ 0x0805FCA0
	ldr r1, _0805FCAC
	ldr r1, [r1]
	strh r0, [r1, #0x1e]
	movs r0, #1
	bx lr
	.align 2, 0
_0805FCAC: .4byte 0x0203F9F4

    .thumb
sub_805FCB0: @ 0x0805FCB0
	ldr r2, _0805FCD4
	lsls r0, r0, #0x10
	str r0, [r2]
	ldr r2, _0805FCD8
	ldr r0, _0805FCDC
	ldrh r0, [r0]
	subs r0, r0, r1
	lsls r0, r0, #0x10
	str r0, [r2]
	ldr r1, _0805FCE0
	movs r0, #1
	strb r0, [r1]
	ldr r1, _0805FCE4
	ldr r2, _0805FCE8
	adds r0, r2, #0
	strh r0, [r1]
	movs r0, #1
	bx lr
	.align 2, 0
_0805FCD4: .4byte 0x0203F9F8
_0805FCD8: .4byte 0x0203F9FC
_0805FCDC: .4byte gMapPixelSizeY
_0805FCE0: .4byte byte_203F9A1
_0805FCE4: .4byte gKeyInput
_0805FCE8: .4byte 0x000003FF

    .thumb
sub_805FCEC: @ 0x0805FCEC
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r6, r1, #0
	adds r5, r3, #0
	ldr r0, _0805FD10
	ldrh r3, [r0]
	ldr r1, _0805FD14
	ldr r0, [r1, #8]
	ldr r1, [r1, #4]
	adds r0, r0, r1
	asrs r0, r0, #0x10
	subs r3, r3, r0
	cmp r3, r2
	bge _0805FD18
	adds r0, r4, #0
	adds r1, r6, #0
	b _0805FD1C
	.align 2, 0
_0805FD10: .4byte gMapPixelSizeY
_0805FD14: .4byte gPlayerShadowPos
_0805FD18:
	adds r0, r4, #0
	adds r1, r5, #0
_0805FD1C:
	movs r2, #0
	movs r3, #0
	bl sub_805FCB0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

    .thumb
sub_805FD2C: @ 0x0805FD2C
	push {lr}
	bl sub_08018A94
	movs r0, #1
	pop {r1}
	bx r1

	.thumb
sub_805FD38: @ 0x0805FD38
	push {r4, lr}
	adds r2, r1, #0
	movs r4, #0
	cmp r0, #0x10
	bls _0805FD44
	b _0805FF4C
_0805FD44:
	lsls r0, r0, #2
	ldr r1, _0805FD50
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0805FD50: .4byte 0x0805FD54
_0805FD54: @ jump table
	.4byte _0805FD98 @ case 0
	.4byte _0805FDA4 @ case 1
	.4byte _0805FDBC @ case 2
	.4byte _0805FDD4 @ case 3
	.4byte _0805FDEC @ case 4
	.4byte _0805FE04 @ case 5
	.4byte _0805FE34 @ case 6
	.4byte _0805FE48 @ case 7
	.4byte _0805FE54 @ case 8
	.4byte _0805FE5C @ case 9
	.4byte _0805FE62 @ case 10
	.4byte _0805FEA8 @ case 11
	.4byte _0805FEF0 @ case 12
	.4byte _0805FF04 @ case 13
	.4byte _0805FF1C @ case 14
	.4byte _0805FF30 @ case 15
	.4byte _0805FF40 @ case 16
_0805FD98:
	ldr r0, _0805FDA0
	ldr r0, [r0]
	ldrh r0, [r0, #0x1e]
	b _0805FF34
	.align 2, 0
_0805FDA0: .4byte 0x0203F9F4
_0805FDA4:
	ldr r0, _0805FDB8
	ldr r0, [r0]
	ldr r1, [r0]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #5
	adds r0, r0, r1
	adds r0, #0x57
	b _0805FF32
	.align 2, 0
_0805FDB8: .4byte 0x0203F9F4
_0805FDBC:
	ldr r0, _0805FDD0
	ldr r0, [r0]
	ldr r1, [r0]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #5
	adds r0, r0, r1
	adds r0, #0x58
	b _0805FF32
	.align 2, 0
_0805FDD0: .4byte 0x0203F9F4
_0805FDD4:
	ldr r0, _0805FDE8
	ldr r0, [r0]
	ldr r1, [r0]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #5
	adds r0, r0, r1
	adds r0, #0x59
	b _0805FF32
	.align 2, 0
_0805FDE8: .4byte 0x0203F9F4
_0805FDEC:
	ldr r0, _0805FE00
	ldr r0, [r0]
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #5
	ldr r0, [r0]
	adds r0, r0, r1
	bl sub_8003770
	b _0805FF46
	.align 2, 0
_0805FE00: .4byte 0x0203F9F4
_0805FE04:
	ldr r1, _0805FE28
	ldr r0, _0805FE2C
	ldrh r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #4
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0
	beq _0805FE20
	b _0805FF50
_0805FE20:
	ldr r0, _0805FE30
	strb r1, [r0]
	b _0805FF54
	.align 2, 0
_0805FE28: .4byte gPlayerStateSettings
_0805FE2C: .4byte gPlayerState
_0805FE30: .4byte byte_203F99F
_0805FE34:
	movs r1, #0
	ldr r0, _0805FE44
	ldrb r0, [r0]
	cmp r0, #0
	bne _0805FE40
	movs r1, #1
_0805FE40:
	adds r4, r1, #0
	b _0805FF50
	.align 2, 0
_0805FE44: .4byte byte_203F9A1
_0805FE48:
	ldr r0, _0805FE50
	ldr r0, [r0]
	adds r0, #0x25
	b _0805FF32
	.align 2, 0
_0805FE50: .4byte 0x0203FA18
_0805FE54:
	ldr r0, _0805FE58
	b _0805FF32
	.align 2, 0
_0805FE58: .4byte 0x0203FA14
_0805FE5C:
	bl sub_805DB38
	b _0805FF46
_0805FE62:
	ldr r0, _0805FE98
	ldr r0, [r0]
	ldrh r0, [r0, #0x1e]
	cmp r0, #0
	bne _0805FED4
	ldr r1, _0805FE9C
	ldr r0, _0805FEA0
	ldrh r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0805FE94
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0805FE94
	movs r0, #0x80
	lsls r0, r0, #5
	ands r0, r1
	cmp r0, #0
	beq _0805FED4
_0805FE94:
	ldr r1, _0805FEA4
	b _0805FF26
	.align 2, 0
_0805FE98: .4byte 0x0203F9F4
_0805FE9C: .4byte gPlayerStateSettings
_0805FEA0: .4byte gPlayerState
_0805FEA4: .4byte byte_203F9A1
_0805FEA8:
	ldr r0, _0805FEC8
	ldr r0, [r0]
	ldrh r0, [r0, #0x1e]
	cmp r0, #0
	bne _0805FED4
	ldr r0, _0805FECC
	ldr r0, [r0]
	bl sub_80038AC
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	bne _0805FED4
	ldr r0, _0805FED0
	strb r1, [r0]
	b _0805FF54
	.align 2, 0
_0805FEC8: .4byte 0x0203F9F4
_0805FECC: .4byte dword_2000FC8
_0805FED0: .4byte byte_203F9A1
_0805FED4:
	ldr r1, _0805FEE4
	movs r0, #1
	strb r0, [r1]
	ldr r1, _0805FEE8
	ldr r2, _0805FEEC
	adds r0, r2, #0
	strh r0, [r1]
	b _0805FF5E
	.align 2, 0
_0805FEE4: .4byte byte_203F9A1
_0805FEE8: .4byte gKeyInput
_0805FEEC: .4byte 0x000003FF
_0805FEF0:
	ldr r0, _0805FF00
	ldr r0, [r0]
	adds r0, #0x25
	ldrb r0, [r0]
	bl audio_fx_still_active
	b _0805FF34
	.align 2, 0
_0805FF00: .4byte 0x0203F9F4
_0805FF04:
	ldr r0, _0805FF18
	ldr r0, [r0]
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #5
	ldr r0, [r0]
	adds r0, r0, r1
	bl sub_80037A8
	b _0805FF46
	.align 2, 0
_0805FF18: .4byte 0x0203F9F4
_0805FF1C:
	bl sub_805DD20
	cmp r0, #0
	beq _0805FF50
	ldr r1, _0805FF2C
_0805FF26:
	movs r0, #0
	strb r0, [r1]
	b _0805FF54
	.align 2, 0
_0805FF2C: .4byte byte_203F99F
_0805FF30:
	ldr r0, _0805FF3C
_0805FF32:
	ldrb r0, [r0]
_0805FF34:
	cmp r0, #0
	bne _0805FF50
	b _0805FF54
	.align 2, 0
_0805FF3C: .4byte gIsPaletteEffectsActive
_0805FF40:
	movs r0, #0
	bl sub_0804207C
_0805FF46:
	cmp r0, #0
	beq _0805FF50
	b _0805FF54
_0805FF4C:
	.2byte 0xEE00, 0xEE00
_0805FF50:
	cmp r4, #0
	beq _0805FF5E
_0805FF54:
	ldr r0, _0805FF68
	ldr r1, [r0]
	ldrh r0, [r1, #0x1c]
	adds r0, #1
	strh r0, [r1, #0x1c]
_0805FF5E:
	movs r0, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0805FF68: .4byte 0x0203F9F4

	.thumb
sub_805FF6C: @ 0x0805FF6C
	ldr r0, _0805FF7C
	ldr r0, [r0]
	adds r0, #0x21
	movs r1, #1
	strb r1, [r0]
	movs r0, #0
	bx lr
	.align 2, 0
_0805FF7C: .4byte 0x0203F9F4

	.thumb
sub_805FF80: @ 0x0805FF80
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	adds r4, r0, #0
	ldr r0, _0805FFD8
	movs r1, #0
	bl sub_80270AC
	movs r1, #0xa0
	lsls r1, r1, #0x13
	movs r0, #0
	movs r2, #0x80
	bl DmaFill32
	mov r1, sp
	movs r2, #0
	movs r0, #0xfe
	strb r0, [r1, #0x10]
	mov r0, sp
	strb r2, [r0, #0x12]
	movs r0, #2
	strb r0, [r1, #0xa]
	movs r0, #0xf0
	strh r0, [r1, #8]
	movs r0, #1
	strh r0, [r1, #0xe]
	mov r0, sp
	strh r2, [r0, #0xc]
	movs r0, #6
	strb r0, [r1, #0x11]
	ldr r0, _0805FFDC
	str r0, [sp, #4]
	movs r7, #0
	cmp r4, #0
	beq _0805FFE0
	cmp r4, #1
	beq _08060038
	.2byte 0xEE00, 0xEE00
	b _0806008A
	.align 2, 0
_0805FFD8: .4byte 0x00000FFF
_0805FFDC: .4byte 0x080B01B8
_0805FFE0:
	ldr r0, _0805FFF4
	ldrb r0, [r0]
	cmp r0, #4
	bhi _0806008A
	lsls r0, r0, #2
	ldr r1, _0805FFF8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0805FFF4: .4byte 0x02000320
_0805FFF8: .4byte 0x0805FFFC
_0805FFFC: @ jump table
	.4byte _08060010 @ case 0
	.4byte _08060018 @ case 1
	.4byte _08060028 @ case 2
	.4byte _08060020 @ case 3
	.4byte _08060030 @ case 4
_08060010:
	ldr r7, _08060014
	b _0806008A
	.align 2, 0
_08060014: .4byte 0x0808D5D8
_08060018:
	ldr r7, _0806001C
	b _0806008A
	.align 2, 0
_0806001C: .4byte 0x0808DBE8
_08060020:
	ldr r7, _08060024
	b _0806008A
	.align 2, 0
_08060024: .4byte 0x0808E2F8
_08060028:
	ldr r7, _0806002C
	b _0806008A
	.align 2, 0
_0806002C: .4byte 0x0808E944
_08060030:
	ldr r7, _08060034
	b _0806008A
	.align 2, 0
_08060034: .4byte 0x0808EF84
_08060038:
	ldr r0, _0806004C
	ldrb r0, [r0]
	cmp r0, #4
	bhi _0806008A
	lsls r0, r0, #2
	ldr r1, _08060050
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0806004C: .4byte 0x02000320
_08060050: .4byte 0x08060054
_08060054: @ jump table
	.4byte _08060068 @ case 0
	.4byte _08060070 @ case 1
	.4byte _08060080 @ case 2
	.4byte _08060078 @ case 3
	.4byte _08060088 @ case 4
_08060068:
	ldr r7, _0806006C
	b _0806008A
	.align 2, 0
_0806006C: .4byte 0x0808D5E8
_08060070:
	ldr r7, _08060074
	b _0806008A
	.align 2, 0
_08060074: .4byte 0x0808DC00
_08060078:
	ldr r7, _0806007C
	b _0806008A
	.align 2, 0
_0806007C: .4byte 0x0808E30C
_08060080:
	ldr r7, _08060084
	b _0806008A
	.align 2, 0
_08060084: .4byte 0x0808E954
_08060088:
	ldr r7, _080601D4
_0806008A:
	adds r0, r7, #0
	mov r1, sp
	bl sub_8025870
	str r0, [sp, #0x14]
	movs r0, #0
	bl SetTextSpriteCount
	ldr r4, _080601D8
	movs r2, #0x80
	lsls r2, r2, #1
	movs r0, #0xaa
	adds r1, r4, #0
	bl DmaFill32
	ldr r0, _080601DC
	str r4, [r0]
	ldr r0, _080601E0
	movs r1, #0x80
	lsls r1, r1, #3
	adds r5, r4, r1
	str r5, [r0]
	ldr r1, _080601E4
	ldr r0, _080601E8
	str r0, [r1]
	ldr r1, _080601EC
	movs r0, #0x80
	lsls r0, r0, #2
	str r0, [r1]
	bl SyncVblank
	bl UpdateVideo
	bl SkipVblank
	bl SetObjectsFullAlpha
	movs r2, #1
	str r2, [sp, #0x18]
	movs r6, #0x5a
	mov r4, sp
_080600DC:
	ldr r0, _080601F0
	ldrb r0, [r0]
	cmp r0, #0
	beq _08060102
	ldr r0, _080601F4
	ldr r1, _080601F8
	ldr r2, _080601FC
	bl ReadKeys
	ldr r0, _080601F8
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08060102
	ldr r1, _08060200
	movs r0, #1
	strb r0, [r1]
	movs r6, #1
_08060102:
	subs r6, #1
	movs r0, #0
	bl SetTextSpriteCount
	movs r0, #0xaa
	ldr r1, _080601D8
	movs r2, #0x80
	lsls r2, r2, #1
	bl DmaFill32
	ldr r1, _080601DC
	mov sl, r1
	ldr r2, _080601D8
	str r2, [r1]
	ldr r0, _08060204
	ldr r1, _080601E0
	str r0, [r1]
	ldr r2, _080601E8
	mov sb, r2
	ldr r0, _080601E4
	str r2, [r0]
	ldr r1, _080601EC
	mov r8, r1
	movs r5, #0x80
	lsls r5, r5, #2
	str r5, [r1]
	movs r0, #0xf0
	ldr r2, [sp, #0x14]
	subs r0, r0, r2
	asrs r0, r0, #1
	movs r1, #0
	strh r0, [r4]
	movs r0, #0x48
	strh r0, [r4, #2]
	strh r1, [r4, #0xc]
	mov r0, sp
	adds r1, r7, #0
	bl AddStringToBuffer
	bl RenderText
	bl CheckStacks
	bl SyncVblank
	bl UpdateVideo
	bl SkipVblank
	ldr r0, [sp, #0x18]
	cmp r0, #0
	beq _08060176
	movs r0, #2
	movs r1, #0
	bl sub_08026BA8
	movs r1, #0
	str r1, [sp, #0x18]
_08060176:
	cmp r6, #0
	bne _080600DC
	movs r0, #2
	movs r1, #0
	bl FadeOutObjects
	movs r0, #0
	bl SetTextSpriteCount
	ldr r4, _080601D8
	movs r2, #0x80
	lsls r2, r2, #1
	movs r0, #0xaa
	adds r1, r4, #0
	bl DmaFill32
	mov r2, sl
	str r4, [r2]
	movs r0, #0x80
	lsls r0, r0, #3
	adds r4, r4, r0
	ldr r1, _080601E0
	str r4, [r1]
	mov r2, sb
	ldr r0, _080601E4
	str r2, [r0]
	mov r1, r8
	str r5, [r1]
	bl SyncVblank
	bl UpdateVideo
	bl SkipVblank
	ldr r1, _08060208
	ldr r2, _0806020C
	adds r0, r2, #0
	strh r0, [r1]
	movs r0, #1
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080601D4: .4byte 0x0808EF98
_080601D8: .4byte gOAMBuffer1
_080601DC: .4byte gOAMBufferFramePtr
_080601E0: .4byte gOAMBufferEnd
_080601E4: .4byte gOBJTileFramePtr
_080601E8: .4byte 0x06014000
_080601EC: .4byte gOBJTileCount
_080601F0: .4byte byte_20021F8
_080601F4: .4byte gKeysPressed
_080601F8: .4byte gKeysDown
_080601FC: .4byte gPreviousKeys
_08060200: .4byte byte_2000F55
_08060204: .4byte gOAMBufferFramePtr
_08060208: .4byte 0x04000052
_0806020C: .4byte 0x00000907

    .thumb
show_time_travel_scene: @ 0x08060210
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x30
	mov sl, r0
	ldr r1, _0806039C
	movs r6, #0x80
	lsls r6, r6, #0x13
	ldrh r0, [r6]
	strh r0, [r1]
	ldr r1, _080603A0
	ldr r0, _080603A4
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r1, _080603A8
	ldr r0, _080603AC
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r1, _080603B0
	ldr r5, _080603B4
	ldrh r0, [r5]
	strh r0, [r1]
	ldr r1, _080603B8
	ldr r0, _080603BC
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r7, _080603C0
	adds r0, r7, #0
	movs r1, #0
	bl sub_80271A4
	ldr r0, _080603C4
	ldrb r0, [r0]
	cmp r0, #0
	beq _08060260
	movs r0, #0x11
	bl audio_start_tune
_08060260:
	ldr r0, _080603C8
	movs r4, #0
	str r4, [r0]
	ldr r0, _080603CC
	strb r4, [r0]
	ldr r1, _080603D0
	adds r0, r1, #0
	strh r0, [r6]
	strh r4, [r5]
	movs r5, #0xc0
	lsls r5, r5, #0x13
	movs r2, #0xa0
	lsls r2, r2, #7
	movs r0, #0
	adds r1, r5, #0
	bl DmaFill32
	movs r1, #0xa0
	lsls r1, r1, #0x13
	movs r0, #0
	movs r2, #0x80
	bl DmaFill32
	movs r0, #0xc
	bl RoomObjPaletteToVram
	ldr r0, _080603D4
	movs r1, #0
	movs r2, #4
	bl DmaTransferBGPalette
	movs r0, #0x96
	lsls r0, r0, #8
	movs r1, #0xd
	movs r2, #1
	bl Alloc
	str r0, [sp, #0x2c]
	bl sub_8003A0C
	movs r2, #0x96
	lsls r2, r2, #7
	ldr r0, [sp, #0x2c]
	adds r1, r5, #0
	bl DmaTransfer16
	adds r0, r7, #0
	movs r1, #0
	movs r2, #1
	bl sub_8026F78
	ldr r1, _080603D8
	str r4, [sp]
	movs r0, #0xf0
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #2
	str r0, [sp, #0xc]
	add r0, sp, #0x10
	movs r2, #0
	movs r3, #0
	bl SetSprite
	add r0, sp, #0x10
	movs r1, #0
	bl SetSpritePriority
	ldr r1, _080603DC
	movs r0, #1
	str r0, [r1]
	ldr r4, _080603E0
	movs r0, #0x10
	movs r1, #5
	movs r2, #3
	bl Alloc
	str r0, [r4]
	add r0, sp, #0x10
	movs r1, #1
	movs r2, #0
	bl sub_8003820
	add r0, sp, #0x10
	movs r1, #1
	bl sub_8003808
	movs r6, #0
	movs r7, #0
	movs r2, #0
	mov r8, r2
	ldr r0, _080603E4
	mov sb, r0
_08060318:
	ldr r0, _080603E8
	ldrb r0, [r0]
	cmp r0, #0
	beq _08060340
	ldr r4, _080603EC
	ldr r0, _080603F0
	adds r1, r4, #0
	ldr r2, _080603F4
	bl ReadKeys
	ldrh r1, [r4]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08060340
	ldr r1, _080603F8
	movs r0, #1
	strb r0, [r1]
	movs r6, #0x91
	lsls r6, r6, #2
_08060340:
	ldr r0, _080603FC
	ldrb r0, [r0]
	cmp r0, #0
	beq _0806034C
	bl sub_8026DC0
_0806034C:
	movs r4, #0x80
	lsls r4, r4, #1
	movs r0, #0xaa
	ldr r1, _08060400
	adds r2, r4, #0
	bl DmaFill32
	ldr r0, _08060404
	ldr r1, _08060400
	str r1, [r0]
	ldr r0, _08060408
	ldr r2, _0806040C
	str r2, [r0]
	ldr r1, _08060410
	ldr r0, _08060414
	str r0, [r1]
	ldr r1, _08060418
	movs r0, #0x80
	lsls r0, r0, #2
	str r0, [r1]
	lsls r0, r6, #8
	movs r1, #0x91
	lsls r1, r1, #0xa
	bl sub_8003934
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	mov r0, sl
	cmp r0, #0
	bne _0806041C
	subs r0, r4, r5
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r0, r7, #0
	adds r0, #0x40
	lsls r0, r0, #1
	add r0, sb
	movs r2, #0
	ldrsh r1, [r0, r2]
	b _0806042A
	.align 2, 0
_0806039C: .4byte 0x02000338
_080603A0: .4byte 0x0200033A
_080603A4: .4byte 0x04000008
_080603A8: .4byte 0x0200033C
_080603AC: .4byte 0x0400000A
_080603B0: .4byte 0x0200033E
_080603B4: .4byte 0x0400000C
_080603B8: .4byte 0x02000340
_080603BC: .4byte 0x0400000E
_080603C0: .4byte 0x00000FFF
_080603C4: .4byte 0x0203EA88
_080603C8: .4byte gLoadedTileAnimCount
_080603CC: .4byte 0x030032A8
_080603D0: .4byte 0x00001444
_080603D4: .4byte 0x083FD1D4
_080603D8: .4byte 0x000004AF
_080603DC: .4byte gMatricesCount
_080603E0: .4byte gMatrices
_080603E4: .4byte 0x080B1AE4
_080603E8: .4byte byte_20021F8
_080603EC: .4byte gKeysDown
_080603F0: .4byte gKeysPressed
_080603F4: .4byte gPreviousKeys
_080603F8: .4byte byte_2000F55
_080603FC: .4byte gIsPaletteEffectsActive
_08060400: .4byte gOAMBuffer1
_08060404: .4byte gOAMBufferFramePtr
_08060408: .4byte gOAMBufferEnd
_0806040C: .4byte gOAMBufferFramePtr
_08060410: .4byte gOBJTileFramePtr
_08060414: .4byte 0x06014000
_08060418: .4byte gOBJTileCount
_0806041C:
	adds r0, r7, #0
	adds r0, #0x40
	lsls r0, r0, #1
	add r0, sb
	movs r2, #0
	ldrsh r1, [r0, r2]
	rsbs r1, r1, #0
_0806042A:
	adds r0, r5, #0
	bl CallARM_FX_Mul8
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x64
	bl CallARM_FX_Mul8
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	lsls r0, r7, #1
	add r0, sb
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r0, r5, #0
	bl CallARM_FX_Mul8
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x64
	bl CallARM_FX_Mul8
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	add r1, sp, #0x10
	lsls r0, r4, #0x10
	asrs r2, r0, #0x10
	adds r0, r2, #0
	adds r0, #0x68
	strh r0, [r1, #6]
	adds r0, r3, #0
	adds r0, #0x40
	strb r0, [r1, #8]
	cmp r2, #0x7f
	bgt _080604C2
	lsls r0, r3, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0x57
	bgt _080604C2
	movs r0, #0x7f
	rsbs r0, r0, #0
	cmp r2, r0
	ble _080604C2
	adds r0, #0x27
	cmp r1, r0
	ble _080604C2
	ldr r0, _080604B4
	ldrb r0, [r0]
	cmp r0, #0
	bne _080604C2
	add r0, sp, #0x10
	bl RenderSprite
	lsrs r2, r6, #1
	movs r0, #0x91
	lsls r0, r0, #1
	mov r1, sl
	cmp r1, #0
	beq _080604B8
	subs r2, r0, r2
	adds r2, #0x80
	movs r0, #0
	mov r1, r8
	bl sub_8025718
	b _080604C2
	.align 2, 0
_080604B4: .4byte byte_2000F55
_080604B8:
	adds r2, #0x80
	movs r0, #0
	mov r1, r8
	bl sub_8025718
_080604C2:
	bl CheckStacks
	bl SyncVblank
	bl UpdateVideo
	bl sub_8003A14
	bl SkipVblank
	adds r6, #1
	subs r0, r7, #3
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	mov r0, r8
	adds r0, #5
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	ldr r0, _08060548
	cmp r6, r0
	bhi _080604F0
	b _08060318
_080604F0:
	ldr r0, _0806054C
	movs r1, #1
	bl sub_80271A4
	ldr r0, _08060550
	ldr r0, [r0]
	movs r1, #3
	bl Free
	ldr r0, [sp, #0x2c]
	movs r1, #1
	bl Free
	movs r1, #0x80
	lsls r1, r1, #0x13
	ldr r0, _08060554
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #8
	ldr r0, _08060558
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #2
	ldr r0, _0806055C
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #2
	ldr r0, _08060560
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #2
	ldr r0, _08060564
	ldrh r0, [r0]
	strh r0, [r1]
	movs r0, #1
	add sp, #0x30
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08060548: .4byte 0x00000243
_0806054C: .4byte 0x00000FFF
_08060550: .4byte gMatrices
_08060554: .4byte 0x02000338
_08060558: .4byte 0x0200033A
_0806055C: .4byte 0x0200033C
_08060560: .4byte 0x0200033E
_08060564: .4byte 0x02000340

    .thumb
sub_8060568: @ 0x08060568
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x48
	ldr r1, _0806068C
	movs r5, #0x80
	lsls r5, r5, #0x13
	ldrh r0, [r5]
	strh r0, [r1]
	ldr r1, _08060690
	ldr r0, _08060694
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r1, _08060698
	ldr r0, _0806069C
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r1, _080606A0
	ldr r4, _080606A4
	ldrh r0, [r4]
	strh r0, [r1]
	ldr r1, _080606A8
	ldr r0, _080606AC
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r0, _080606B0
	movs r1, #0
	bl sub_80270AC
	ldr r0, _080606B4
	movs r7, #0
	str r7, [r0]
	ldr r0, _080606B8
	strb r7, [r0]
	ldr r1, _080606BC
	adds r0, r1, #0
	strh r0, [r5]
	movs r6, #0
	mov sb, r6
	strh r7, [r4]
	movs r4, #0xc0
	lsls r4, r4, #0x13
	movs r2, #0xa0
	lsls r2, r2, #7
	movs r0, #0
	adds r1, r4, #0
	bl DmaFill32
	bl SyncVblank
	ldr r0, _080606C0
	adds r1, r4, #0
	bl LZ77UnCompReadNormalWrite16bit
	ldr r0, _080606C4
	movs r1, #0xa0
	lsls r1, r1, #0x13
	movs r2, #0x80
	bl DmaTransfer32
	ldr r0, _080606C8
	ldr r1, _080606CC
	movs r2, #0x80
	bl DmaTransfer32
	movs r0, #1
	mov r8, r0
	ldr r2, _080606D0
	ldr r3, _080606D4
	ldrb r0, [r2]
	ldrb r1, [r3]
	cmp r0, r1
	bne _08060602
	movs r6, #2
	mov r8, r6
_08060602:
	ldrh r0, [r2, #0xc]
	ldrh r1, [r3, #0xc]
	cmp r0, r1
	bne _0806060E
	movs r6, #1
	add r8, r6
_0806060E:
	ldrb r0, [r2, #1]
	ldrb r1, [r3, #1]
	cmp r0, r1
	bne _0806061A
	movs r6, #1
	add r8, r6
_0806061A:
	ldrb r0, [r2, #8]
	lsls r1, r0, #4
	subs r1, r1, r0
	lsls r1, r1, #2
	ldrb r2, [r2, #9]
	adds r1, r1, r2
	ldrb r2, [r3, #8]
	lsls r0, r2, #4
	subs r0, r0, r2
	lsls r0, r0, #2
	ldrb r3, [r3, #9]
	adds r0, r0, r3
	cmp r1, r0
	bgt _0806063A
	movs r0, #1
	add r8, r0
_0806063A:
	add r0, sp, #0x10
	movs r6, #0xfe
	strb r6, [r0, #0x10]
	mov r1, sb
	strb r1, [r0, #0x12]
	movs r1, #1
	strb r1, [r0, #0xa]
	movs r4, #0xf0
	strh r4, [r0, #8]
	movs r5, #1
	strh r1, [r0, #0xe]
	strh r7, [r0, #0xc]
	movs r3, #6
	strb r3, [r0, #0x11]
	ldr r2, _080606D8
	str r2, [sp, #0x14]
	add r0, sp, #0x24
	strb r6, [r0, #0x10]
	mov r6, sb
	strb r6, [r0, #0x12]
	strb r5, [r0, #0xa]
	strh r4, [r0, #8]
	strh r1, [r0, #0xe]
	strh r7, [r0, #0xc]
	strb r3, [r0, #0x11]
	str r2, [r0, #4]
	movs r1, #0
	mov sb, r1
	movs r6, #0
	str r6, [sp, #0x38]
	ldr r1, _080606DC
	ldrb r1, [r1]
	mov sl, r0
	cmp r1, #4
	bhi _0806074A
	lsls r0, r1, #2
	ldr r1, _080606E0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0806068C: .4byte 0x02000338
_08060690: .4byte 0x0200033A
_08060694: .4byte 0x04000008
_08060698: .4byte 0x0200033C
_0806069C: .4byte 0x0400000A
_080606A0: .4byte 0x0200033E
_080606A4: .4byte 0x0400000C
_080606A8: .4byte 0x02000340
_080606AC: .4byte 0x0400000E
_080606B0: .4byte 0x00000FFF
_080606B4: .4byte gLoadedTileAnimCount
_080606B8: .4byte 0x030032A8
_080606BC: .4byte 0x00001444
_080606C0: .4byte 0x087E233C
_080606C4: .4byte 0x083FC314
_080606C8: .4byte 0x083FD254
_080606CC: .4byte 0x05000200
_080606D0: .4byte gGameStatus
_080606D4: .4byte 0x080CC8C4
_080606D8: .4byte 0x080B01B8
_080606DC: .4byte 0x02000320
_080606E0: .4byte 0x080606E4
_080606E4: @ jump table
	.4byte _080606F8 @ case 0
	.4byte _08060708 @ case 1
	.4byte _08060728 @ case 2
	.4byte _08060718 @ case 3
	.4byte _08060738 @ case 4
_080606F8:
	ldr r0, _08060700
	str r0, [sp, #0x38]
	ldr r1, _08060704
	b _0806073E
	.align 2, 0
_08060700: .4byte 0x08065E24
_08060704: .4byte 0x086AD47C
_08060708:
	ldr r1, _08060710
	str r1, [sp, #0x38]
	ldr r1, _08060714
	b _0806073E
	.align 2, 0
_08060710: .4byte 0x08065E78
_08060714: .4byte 0x086AD490
_08060718:
	ldr r6, _08060720
	str r6, [sp, #0x38]
	ldr r1, _08060724
	b _0806073E
	.align 2, 0
_08060720: .4byte 0x08065ECC
_08060724: .4byte 0x086AD4A4
_08060728:
	ldr r0, _08060730
	str r0, [sp, #0x38]
	ldr r1, _08060734
	b _0806073E
	.align 2, 0
_08060730: .4byte 0x08065F14
_08060734: .4byte 0x086AD4B8
_08060738:
	ldr r1, _08060794
	str r1, [sp, #0x38]
	ldr r1, _08060798
_0806073E:
	mov r0, r8
	subs r0, #1
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	mov sb, r0
_0806074A:
	mov r0, sb
	add r1, sp, #0x10
	bl sub_8025870
	str r0, [sp, #0x3c]
	ldr r0, [sp, #0x38]
	mov r1, sl
	bl sub_8025870
	adds r4, r0, #0
	movs r0, #0x8c
	movs r1, #0x14
	movs r2, #4
	bl Alloc
	str r0, [sp, #0x44]
	adds r4, #0x18
	movs r7, #0
	adds r5, r0, #0
	movs r6, #4
_08060772:
	movs r0, #0
	str r0, [sp]
	str r4, [sp, #4]
	movs r0, #0x91
	str r0, [sp, #8]
	movs r0, #2
	str r0, [sp, #0xc]
	adds r0, r5, #0
	ldr r1, _0806079C
	movs r2, #0
	movs r3, #0
	bl SetSprite
	cmp r7, r8
	bge _080607A0
	adds r7, #1
	b _080607A4
	.align 2, 0
_08060794: .4byte 0x08065F58
_08060798: .4byte 0x086AD4CC
_0806079C: .4byte 0x00000226
_080607A0:
	movs r0, #1
	strb r0, [r5, #0x10]
_080607A4:
	adds r4, #0x20
	adds r5, #0x1c
	subs r6, #1
	cmp r6, #0
	bge _08060772
	movs r0, #0
	bl SetTextSpriteCount
	ldr r4, _08060830
	movs r2, #0x80
	lsls r2, r2, #1
	movs r0, #0xaa
	adds r1, r4, #0
	bl DmaFill32
	ldr r0, _08060834
	str r4, [r0]
	ldr r0, _08060838
	movs r1, #0x80
	lsls r1, r1, #3
	adds r5, r4, r1
	str r5, [r0]
	ldr r1, _0806083C
	ldr r0, _08060840
	str r0, [r1]
	ldr r1, _08060844
	movs r0, #0x80
	lsls r0, r0, #2
	str r0, [r1]
	bl SyncVblank
	bl UpdateVideo
	bl SkipVblank
	ldr r0, _08060848
	movs r1, #0
	movs r2, #1
	bl sub_8026E48
	bl SetObjectsFullAlpha
	movs r6, #1
	str r6, [sp, #0x40]
	movs r0, #0x96
	lsls r0, r0, #3
	mov r8, r0
	add r7, sp, #0x10
	movs r5, #0
_08060806:
	ldr r4, _0806084C
	ldr r0, _08060850
	adds r1, r4, #0
	ldr r2, _08060854
	bl ReadKeys
	ldrh r1, [r4]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08060820
	movs r1, #1
	mov r8, r1
_08060820:
	ldr r0, _08060858
	ldrb r0, [r0]
	cmp r0, #0
	beq _0806085C
	bl sub_8026DC0
	b _08060862
	.align 2, 0
_08060830: .4byte gOAMBuffer1
_08060834: .4byte gOAMBufferFramePtr
_08060838: .4byte gOAMBufferEnd
_0806083C: .4byte gOBJTileFramePtr
_08060840: .4byte 0x06014000
_08060844: .4byte gOBJTileCount
_08060848: .4byte 0x00000FFF
_0806084C: .4byte gKeysDown
_08060850: .4byte gKeysPressed
_08060854: .4byte gPreviousKeys
_08060858: .4byte gIsPaletteEffectsActive
_0806085C:
	movs r6, #1
	rsbs r6, r6, #0
	add r8, r6
_08060862:
	movs r0, #0
	bl SetTextSpriteCount
	movs r0, #0xaa
	ldr r1, _08060944
	movs r2, #0x80
	lsls r2, r2, #1
	bl DmaFill32
	ldr r0, _08060948
	ldr r1, _08060944
	str r1, [r0]
	ldr r0, _0806094C
	ldr r6, _08060950
	str r6, [r0]
	ldr r1, _08060954
	ldr r0, _08060958
	str r0, [r1]
	ldr r1, _0806095C
	movs r0, #0x80
	lsls r0, r0, #2
	str r0, [r1]
	movs r0, #0xf0
	ldr r1, [sp, #0x3c]
	subs r0, r0, r1
	asrs r0, r0, #1
	strh r0, [r7]
	movs r6, #8
	strh r6, [r7, #2]
	strh r5, [r7, #0xc]
	add r0, sp, #0x10
	mov r1, sb
	bl AddStringToBuffer
	movs r1, #0x10
	mov r0, sl
	strh r1, [r0]
	movs r6, #0x69
	strh r6, [r0, #2]
	strh r5, [r0, #0xc]
	ldr r1, [sp, #0x38]
	bl AddStringToBuffer
	bl RenderText
	ldr r4, [sp, #0x44]
	movs r6, #4
_080608C0:
	adds r0, r4, #0
	bl RenderSprite
	adds r4, #0x1c
	subs r6, #1
	cmp r6, #0
	bge _080608C0
	bl CheckStacks
	bl SyncVblank
	bl UpdateVideo
	bl SkipVblank
	ldr r0, [sp, #0x40]
	cmp r0, #0
	beq _080608F0
	movs r0, #2
	movs r1, #0
	bl sub_08026BA8
	movs r1, #0
	str r1, [sp, #0x40]
_080608F0:
	mov r6, r8
	cmp r6, #0
	bne _08060806
	ldr r0, _08060960
	movs r1, #1
	bl sub_80270AC
	ldr r0, [sp, #0x44]
	movs r1, #4
	bl Free
	movs r1, #0x80
	lsls r1, r1, #0x13
	ldr r0, _08060964
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #8
	ldr r0, _08060968
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #2
	ldr r0, _0806096C
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #2
	ldr r0, _08060970
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #2
	ldr r0, _08060974
	ldrh r0, [r0]
	strh r0, [r1]
	movs r0, #1
	add sp, #0x48
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08060944: .4byte gOAMBuffer1
_08060948: .4byte gOAMBufferFramePtr
_0806094C: .4byte gOAMBufferEnd
_08060950: .4byte gOAMBufferFramePtr
_08060954: .4byte gOBJTileFramePtr
_08060958: .4byte 0x06014000
_0806095C: .4byte gOBJTileCount
_08060960: .4byte 0x00000FFF
_08060964: .4byte 0x02000338
_08060968: .4byte 0x0200033A
_0806096C: .4byte 0x0200033C
_08060970: .4byte 0x0200033E
_08060974: .4byte 0x02000340

    .thumb
show_licence_screen: @ 0x08060978
	push {r4, r5, r6, lr}
	ldr r1, _08060A44
	movs r5, #0x80
	lsls r5, r5, #0x13
	ldrh r0, [r5]
	strh r0, [r1]
	ldr r1, _08060A48
	ldr r0, _08060A4C
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r1, _08060A50
	ldr r0, _08060A54
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r1, _08060A58
	ldr r4, _08060A5C
	ldrh r0, [r4]
	strh r0, [r1]
	ldr r1, _08060A60
	ldr r0, _08060A64
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r6, _08060A68
	adds r0, r6, #0
	movs r1, #0
	bl sub_80270AC
	ldr r0, _08060A6C
	movs r1, #0
	str r1, [r0]
	ldr r0, _08060A70
	strb r1, [r0]
	ldr r2, _08060A74
	adds r0, r2, #0
	strh r0, [r5]
	strh r1, [r4]
	movs r4, #0xc0
	lsls r4, r4, #0x13
	movs r2, #0xa0
	lsls r2, r2, #7
	movs r0, #0
	adds r1, r4, #0
	bl DmaFill32
	bl SyncVblank
	ldr r0, _08060A78
	adds r1, r4, #0
	bl LZ77UnCompReadNormalWrite16bit
	ldr r0, _08060A7C
	movs r1, #0xa0
	lsls r1, r1, #0x13
	movs r2, #0x80
	bl DmaTransfer32
	ldr r4, _08060A80
	movs r2, #0x80
	lsls r2, r2, #1
	movs r0, #0xaa
	adds r1, r4, #0
	bl DmaFill32
	ldr r0, _08060A84
	str r4, [r0]
	ldr r0, _08060A88
	movs r1, #0x80
	lsls r1, r1, #3
	adds r5, r4, r1
	str r5, [r0]
	ldr r1, _08060A8C
	ldr r0, _08060A90
	str r0, [r1]
	ldr r1, _08060A94
	movs r0, #0x80
	lsls r0, r0, #2
	str r0, [r1]
	bl SyncVblank
	bl UpdateVideo
	bl SkipVblank
	adds r0, r6, #0
	movs r1, #0
	movs r2, #0
	bl sub_8026E48
	movs r6, #0xb4
_08060A2A:
	ldr r0, _08060A98
	ldr r1, _08060A9C
	ldr r2, _08060AA0
	bl ReadKeys
	ldr r0, _08060AA4
	ldrb r0, [r0]
	cmp r0, #0
	beq _08060AA8
	bl sub_8026DC0
	b _08060AAA
	.align 2, 0
_08060A44: .4byte 0x02000338
_08060A48: .4byte 0x0200033A
_08060A4C: .4byte 0x04000008
_08060A50: .4byte 0x0200033C
_08060A54: .4byte 0x0400000A
_08060A58: .4byte 0x0200033E
_08060A5C: .4byte 0x0400000C
_08060A60: .4byte 0x02000340
_08060A64: .4byte 0x0400000E
_08060A68: .4byte 0x00000FFF
_08060A6C: .4byte gLoadedTileAnimCount
_08060A70: .4byte 0x030032A8
_08060A74: .4byte 0x00001444
_08060A78: .4byte 0x087E61A8
_08060A7C: .4byte 0x083FC514
_08060A80: .4byte gOAMBuffer1
_08060A84: .4byte gOAMBufferFramePtr
_08060A88: .4byte gOAMBufferEnd
_08060A8C: .4byte gOBJTileFramePtr
_08060A90: .4byte 0x06014000
_08060A94: .4byte gOBJTileCount
_08060A98: .4byte gKeysPressed
_08060A9C: .4byte gKeysDown
_08060AA0: .4byte gPreviousKeys
_08060AA4: .4byte gIsPaletteEffectsActive
_08060AA8:
	subs r6, #1
_08060AAA:
	movs r0, #0
	bl SetTextSpriteCount
	movs r0, #0xaa
	adds r1, r4, #0
	movs r2, #0x80
	lsls r2, r2, #1
	bl DmaFill32
	ldr r0, _08060B58
	str r4, [r0]
	ldr r0, _08060B5C
	str r5, [r0]
	ldr r1, _08060B60
	ldr r0, _08060B64
	str r0, [r1]
	ldr r1, _08060B68
	movs r0, #0x80
	lsls r0, r0, #2
	str r0, [r1]
	bl CheckStacks
	bl SyncVblank
	bl UpdateVideo
	bl SkipVblank
	cmp r6, #0
	bne _08060A2A
	ldr r4, _08060B6C
	adds r0, r4, #0
	movs r1, #0
	bl sub_80270AC
	movs r1, #0x80
	lsls r1, r1, #0x13
	ldr r0, _08060B70
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #8
	ldr r0, _08060B74
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #2
	ldr r0, _08060B78
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #2
	ldr r0, _08060B7C
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #2
	ldr r0, _08060B80
	ldrh r0, [r0]
	strh r0, [r1]
	movs r1, #0xc0
	lsls r1, r1, #0x13
	movs r2, #0xa0
	lsls r2, r2, #7
	movs r0, #0
	bl DmaFill32
	ldr r0, _08060B84
	strh r6, [r0]
	ldr r0, _08060B88
	ldrb r0, [r0]
	cmp r0, #0
	beq _08060B3A
	movs r0, #0
	bl audio_start_tune
_08060B3A:
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	bl sub_8026E48
	ldr r0, _08060B8C
	movs r1, #0xa0
	lsls r1, r1, #0x13
	movs r2, #0x80
	bl DmaTransfer32
	movs r0, #1
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08060B58: .4byte gOAMBufferFramePtr
_08060B5C: .4byte gOAMBufferEnd
_08060B60: .4byte gOBJTileFramePtr
_08060B64: .4byte 0x06014000
_08060B68: .4byte gOBJTileCount
_08060B6C: .4byte 0x00000FFF
_08060B70: .4byte 0x02000338
_08060B74: .4byte 0x0200033A
_08060B78: .4byte 0x0200033C
_08060B7C: .4byte 0x0200033E
_08060B80: .4byte 0x02000340
_08060B84: .4byte gLoadedRoomBgm
_08060B88: .4byte 0x0203EA88
_08060B8C: .4byte 0x083FC514

	.thumb
sub_8060B90: @ 0x08060B90
	ldr r2, _08060BB4
	ldr r0, _08060BB8
	ldr r0, [r0]
	ldr r1, [r0]
	ldrh r0, [r1, #2]
	strh r0, [r2]
	ldr r2, _08060BBC
	ldrh r0, [r1, #4]
	strh r0, [r2]
	ldr r2, _08060BC0
	adds r1, #0xa4
	ldrb r1, [r1]
	movs r0, #3
	subs r0, r0, r1
	strb r0, [r2]
	movs r0, #1
	bx lr
	.align 2, 0
_08060BB4: .4byte 0x0203F994
_08060BB8: .4byte 0x0203F8B4
_08060BBC: .4byte 0x0203F996
_08060BC0: .4byte byte_203F99D


    .thumb
sub_8060BC4: @ 0x08060BC4
	push {r4, lr}
	ldr r1, _08060BF8
	ldr r2, _08060BFC
	movs r3, #2
	ldrsh r0, [r2, r3]
	strh r0, [r1]
	ldr r4, _08060C00
	ldr r3, _08060C04
	ldr r1, [r2, #8]
	ldr r0, [r2, #4]
	adds r1, r1, r0
	asrs r1, r1, #0x10
	ldrh r0, [r3]
	subs r0, r0, r1
	strh r0, [r4]
	ldr r2, _08060C08
	ldr r0, _08060C0C
	ldrb r1, [r0, #4]
	movs r0, #3
	subs r0, r0, r1
	strb r0, [r2]
	movs r0, #1
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08060BF8: .4byte 0x0203F994
_08060BFC: .4byte gPlayerPos
_08060C00: .4byte 0x0203F996
_08060C04: .4byte gMapPixelSizeY
_08060C08: .4byte byte_203F99D
_08060C0C: .4byte gPlayerSprite

	.thumb
sub_8060C10: @ 0x08060C10
	push {lr}
	ldr r0, _08060C30
	ldr r0, [r0]
	adds r0, #0x23
	ldrb r0, [r0]
	cmp r0, #0
	bne _08060C22
	.2byte 0xEE00, 0xEE00
_08060C22:
	movs r0, #1
	bl sub_805E1DC
	movs r0, #1
	pop {r1}
	bx r1
	.align 2, 0
_08060C30: .4byte 0x0203F9F4


    .thumb
sub_8060C34: @ 0x08060C34
	push {r4, lr}
	adds r4, r0, #0
	bl SyncVblank
	adds r0, r4, #0
	bl RoomObjPaletteToVram
	movs r0, #1
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	.thumb
sub_8060C4C: @ 0x08060C4C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	adds r6, r2, #0
	bl SyncVblank
	cmp r4, #0
	bne _08060C6C
	ldr r0, _08060C68
	adds r1, r5, #0
	adds r2, r6, #0
	bl DmaTransferObjPalette
	b _08060C70
	.align 2, 0
_08060C68: .4byte 0x083FD834
_08060C6C:
	.2byte 0xEE00, 0xEE00
_08060C70:
	movs r0, #1
	pop {r4, r5, r6}
	pop {r1}
	bx r1

    .thumb
sub_8060C78: @ 0x08060C78
	push {lr}
	ldr r1, _08060CAC
	ldr r0, _08060CB0
	ldrh r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _08060CA6
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _08060CA6
	ldr r0, _08060CB4
	ldrb r0, [r0]
	cmp r0, #3
	beq _08060CA6
	cmp r0, #4
	beq _08060CA6
	bl sub_801990C
_08060CA6:
	movs r0, #1
	pop {r1}
	bx r1
	.align 2, 0
_08060CAC: .4byte gPlayerStateSettings
_08060CB0: .4byte gPlayerState
_08060CB4: .4byte byte_20020B1

	.thumb
sub_8060CB8: @ 0x08060CB8
	ldr r1, _08060CC0
	strb r0, [r1]
	movs r0, #1
	bx lr
	.align 2, 0
_08060CC0: .4byte 0x0203FA58

	.thumb
sub_8060CC4: @ 0x08060CC4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	mov r8, r0
	ldr r0, _08060D64
	ldrh r2, [r0]
	lsls r2, r2, #0x10
	ldr r1, _08060D68
	ldr r0, [r1, #8]
	ldr r1, [r1, #4]
	adds r0, r0, r1
	subs r2, r2, r0
	str r2, [sp]
	movs r7, #0
	movs r0, #0
	mov sl, r0
	ldr r1, _08060D6C
	mov sb, r1
_08060CEE:
	ldr r1, _08060D70
	lsls r0, r7, #3
	adds r4, r0, r1
	ldrh r0, [r4]
	lsls r6, r0, #0x10
	ldrh r0, [r4, #2]
	lsls r5, r0, #0x10
	ldr r0, _08060D68
	ldr r0, [r0]
	subs r0, r0, r6
	bl Abs
	cmp r0, sb
	bhi _08060D3E
	ldr r1, [sp]
	subs r0, r1, r5
	bl Abs
	cmp r0, sb
	bhi _08060D3E
	movs r0, #1
	mov sl, r0
	asrs r1, r6, #0x10
	asrs r2, r5, #0x10
	mov r0, r8
	movs r3, #0
	bl sub_805ED28
	ldrb r1, [r4, #4]
	mov r0, r8
	movs r2, #0
	movs r3, #0
	bl sub_805F010
	ldrh r1, [r4, #6]
	mov r0, r8
	movs r2, #0
	movs r3, #0
	bl sub_805F04C
_08060D3E:
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	mov r1, sl
	cmp r1, #0
	bne _08060D52
	cmp r7, #5
	bls _08060CEE
	.2byte 0xEE00, 0xEE00
_08060D52:
	movs r0, #1
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08060D64: .4byte gMapPixelSizeY
_08060D68: .4byte gPlayerPos
_08060D6C: .4byte 0x002FFFFF
_08060D70: .4byte 0x080B21D4

    .thumb
sub_8060D74: @ 0x08060D74
	push {lr}
	bl sub_8041E58
	movs r0, #1
	pop {r1}
	bx r1

    .thumb
sub_8060D80: @ 0x08060D80
	ldr r1, _08060D8C
	movs r0, #1
	strb r0, [r1]
	movs r0, #1
	bx lr
	.align 2, 0
_08060D8C: .4byte 0x0203E138

    .thumb
sub_8060D90: @ 0x08060D90
	push {lr}
	movs r0, #0
	movs r1, #2
	bl RandomMinMax
	adds r1, r0, #0
	cmp r1, #1
	beq _08060DAE
	cmp r1, #1
	blo _08060DAA
	cmp r1, #2
	beq _08060DBC
	b _08060DC8
_08060DAA:
	movs r0, #0xdf
	b _08060DB0
_08060DAE:
	movs r0, #0xe0
_08060DB0:
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_805F58C
	b _08060DC8
_08060DBC:
	movs r0, #0xe1
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_805F58C
_08060DC8:
	pop {r1}
	bx r1

    .thumb
sub_8060DCC: @ 0x08060DCC
	push {r4, lr}
	ldr r1, _08060E10
	movs r0, #0
	strh r0, [r1]
	ldr r4, _08060E14
	movs r0, #0x50
	movs r1, #7
	movs r2, #5
	bl Alloc
	str r0, [r4]
	movs r2, #0
	movs r3, #0
_08060DE6:
	ldr r1, [r4]
	lsls r0, r2, #2
	adds r0, r0, r1
	str r3, [r0]
	adds r2, #1
	cmp r2, #0x13
	ble _08060DE6
	ldr r1, _08060E18
	movs r0, #0x80
	strh r0, [r1]
	adds r1, #4
	movs r0, #0x84
	strh r0, [r1]
	ldr r0, _08060E1C
	movs r1, #0
	strh r1, [r0]
	adds r0, #4
	strh r1, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08060E10: .4byte 0x0203FA30
_08060E14: .4byte 0x0203FA2C
_08060E18: .4byte 0x0400010A
_08060E1C: .4byte 0x04000108

	.thumb
sub_8060E20: @ 0x08060E20
	push {r4, r5, r6, lr}
	movs r5, #0
	ldr r6, _08060E60
_08060E26:
	ldr r0, [r6]
	lsls r4, r5, #2
	adds r0, r4, r0
	ldr r0, [r0]
	cmp r0, #0
	beq _08060E46
	ldr r0, [r0, #8]
	movs r1, #5
	bl Free
	ldr r0, [r6]
	adds r0, r4, r0
	ldr r0, [r0]
	movs r1, #5
	bl Free
_08060E46:
	adds r5, #1
	cmp r5, #0x13
	ble _08060E26
	ldr r0, _08060E60
	ldr r0, [r0]
	movs r1, #5
	bl Free
	bl sub_8060DCC
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08060E60: .4byte 0x0203FA2C

	.thumb
sub_8060E64: @ 0x08060E64
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	movs r1, #0
	ldr r7, _08060EF8
_08060E6E:
	ldr r0, [r7]
	lsls r4, r1, #2
	adds r0, r4, r0
	ldr r2, [r0]
	adds r1, #1
	mov r8, r1
	cmp r2, #0
	beq _08060EE8
	ldrb r0, [r2]
	movs r1, #0
	strb r0, [r2, #1]
	ldr r0, [r7]
	adds r0, r4, r0
	ldr r0, [r0]
	strb r1, [r0]
	ldr r0, [r7]
	adds r0, r4, r0
	ldr r1, [r0]
	ldrb r0, [r1, #3]
	ldrb r2, [r1, #2]
	cmp r0, r2
	bls _08060EE8
	ldr r0, [r1, #8]
	movs r1, #5
	bl Free
	ldr r0, [r7]
	adds r0, r4, r0
	ldr r0, [r0]
	ldrb r0, [r0, #3]
	lsls r0, r0, #2
	movs r1, #7
	movs r2, #5
	bl Alloc
	ldr r1, [r7]
	adds r1, r4, r1
	ldr r1, [r1]
	str r0, [r1, #8]
	ldrb r0, [r1, #3]
	strb r0, [r1, #2]
	movs r3, #0
	ldr r0, [r7]
	adds r0, r4, r0
	ldr r0, [r0]
	ldrb r0, [r0, #2]
	cmp r3, r0
	bge _08060EE8
	ldr r6, _08060EF8
	movs r5, #0
_08060ED2:
	ldr r0, [r6]
	adds r0, r4, r0
	ldr r2, [r0]
	ldr r1, [r2, #8]
	lsls r0, r3, #2
	adds r0, r0, r1
	str r5, [r0]
	adds r3, #1
	ldrb r2, [r2, #2]
	cmp r3, r2
	blt _08060ED2
_08060EE8:
	mov r1, r8
	cmp r1, #0x13
	ble _08060E6E
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08060EF8: .4byte 0x0203FA2C

	.thumb
sub_8060EFC: @ 0x08060EFC
	push {r4, r5, r6, r7, lr}
	ldr r1, _08060F90
	ldrh r1, [r1]
	cmp r1, #0x13
	bne _08060F0A
	.2byte 0xEE00, 0xEE00
_08060F0A:
	movs r7, #0
	ldr r6, _08060F94
	movs r5, #0
_08060F10:
	ldr r1, [r6]
	adds r1, r5, r1
	ldr r4, [r1]
	cmp r4, #0
	bne _08060F98
	movs r0, #0xc
	movs r1, #7
	movs r2, #5
	bl Alloc
	ldr r1, [r6]
	adds r1, r5, r1
	str r0, [r1]
	strb r4, [r0]
	ldr r0, [r6]
	adds r0, r5, r0
	ldr r0, [r0]
	strb r4, [r0, #1]
	ldr r0, [r6]
	adds r0, r5, r0
	ldr r0, [r0]
	movs r1, #0xa
	strb r1, [r0, #2]
	ldr r0, [r6]
	adds r0, r5, r0
	ldr r0, [r0]
	strb r1, [r0, #3]
	ldr r0, [r6]
	adds r0, r5, r0
	ldr r0, [r0]
	ldrb r0, [r0, #2]
	lsls r0, r0, #2
	movs r1, #7
	movs r2, #5
	bl Alloc
	ldr r1, [r6]
	adds r1, r5, r1
	ldr r1, [r1]
	str r0, [r1, #8]
	movs r3, #0
	ldrb r1, [r1, #2]
	cmp r3, r1
	bge _08060F84
	ldr r6, _08060F94
	adds r4, r5, #0
	movs r5, #0
_08060F6E:
	ldr r0, [r6]
	adds r0, r4, r0
	ldr r2, [r0]
	ldr r1, [r2, #8]
	lsls r0, r3, #2
	adds r0, r0, r1
	str r5, [r0]
	adds r3, #1
	ldrb r2, [r2, #2]
	cmp r3, r2
	blt _08060F6E
_08060F84:
	ldr r1, _08060F90
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	adds r0, r7, #0
	b _08060FA4
	.align 2, 0
_08060F90: .4byte 0x0203FA30
_08060F94: .4byte 0x0203FA2C
_08060F98:
	adds r5, #4
	adds r7, #1
	cmp r7, #0x13
	ble _08060F10
	.2byte 0xEE00, 0xEE00
_08060FA4:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	.thumb
sub_8060FAC: @ 0x08060FAC
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r6, _08060FF0
	ldrh r0, [r6]
	cmp r0, #0
	bne _08060FBC
	.2byte 0xEE00, 0xEE00
_08060FBC:
	ldr r5, _08060FF4
	ldr r0, [r5]
	lsls r4, r4, #2
	adds r0, r4, r0
	ldr r0, [r0]
	ldr r0, [r0, #8]
	movs r1, #5
	bl Free
	ldr r0, [r5]
	adds r0, r4, r0
	ldr r0, [r0]
	movs r1, #5
	bl Free
	ldr r0, [r5]
	adds r4, r4, r0
	movs r0, #0
	str r0, [r4]
	ldrh r0, [r6]
	subs r0, #1
	strh r0, [r6]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08060FF0: .4byte 0x0203FA30
_08060FF4: .4byte 0x0203FA2C

	.thumb
    .global sub_8060FF8
sub_8060FF8: @ 0x08060FF8
	push {r4, r5, r6, lr}
	movs r2, #0
	ldr r0, _08061030
	ldr r5, [r0]
	adds r6, r0, #0
_08061002:
	lsls r1, r2, #2
	adds r0, r1, r5
	ldr r0, [r0]
	adds r4, r2, #1
	cmp r0, #0
	beq _08061024
	movs r2, #0
	ldrb r0, [r0, #1]
	cmp r2, r0
	bge _08061024
	ldr r3, [r6]
_08061018:
	adds r0, r1, r3
	ldr r0, [r0]
	adds r2, #1
	ldrb r0, [r0, #1]
	cmp r2, r0
	blt _08061018
_08061024:
	adds r2, r4, #0
	cmp r2, #0x13
	ble _08061002
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08061030: .4byte 0x0203FA2C

	.thumb
sub_8061034: @ 0x08061034
	push {lr}
	ldr r1, _0806105C
	ldr r1, [r1]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r2, [r0]
	cmp r2, #0
	bne _08061048
	.2byte 0xEE00, 0xEE00
_08061048:
	ldr r0, _08061060
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	ldr r1, _08061064
	ldrh r1, [r1]
	orrs r0, r1
	str r0, [r2, #4]
	pop {r0}
	bx r0
	.align 2, 0
_0806105C: .4byte 0x0203FA2C
_08061060: .4byte 0x0400010C
_08061064: .4byte 0x04000108

	.thumb
sub_8061068: @ 0x08061068
	push {r4, r5, r6, lr}
	ldr r5, _080610AC
	ldr r1, _080610B0
	ldrh r1, [r1]
	lsls r1, r1, #0x10
	ldr r2, _080610B4
	ldrh r2, [r2]
	orrs r1, r2
	str r1, [r5]
	ldr r4, _080610B8
	ldr r1, [r4]
	lsls r3, r0, #2
	adds r1, r3, r1
	ldr r1, [r1]
	ldrb r0, [r1]
	adds r2, r0, #0
	ldrb r6, [r1, #2]
	cmp r2, r6
	bhs _080610BC
	adds r0, #1
	strb r0, [r1]
	ldr r0, [r1, #8]
	lsls r2, r2, #2
	adds r2, r2, r0
	ldr r0, [r4]
	adds r0, r3, r0
	ldr r1, [r0]
	ldr r0, [r5]
	ldr r1, [r1, #4]
	subs r0, r0, r1
	adds r0, #1
	str r0, [r2]
	b _080610C2
	.align 2, 0
_080610AC: .4byte 0x03006EF4
_080610B0: .4byte 0x0400010C
_080610B4: .4byte 0x04000108
_080610B8: .4byte 0x0203FA2C
_080610BC:
	ldrb r0, [r1, #3]
	adds r0, #1
	strb r0, [r1, #3]
_080610C2:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

    .thumb
sub_80610C8: @ 0x080610C8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	str r2, [sp, #4]
	movs r6, #0
	lsls r0, r1, #8
	mov r8, r0
	ldr r2, _08061184
	mov sl, r2
	ldr r0, _08061188
	mov sb, r0
	movs r0, #0x3c
	subs r7, r0, r1
_080610F6:
	ldr r1, [sp, #4]
	cmp r6, r1
	bne _08061104
	ldr r0, _0806118C
	ldrb r0, [r0]
	cmp r0, #0
	beq _0806116A
_08061104:
	lsls r4, r6, #1
	adds r4, r4, r6
	lsls r0, r4, #4
	adds r4, r4, r0
	ldr r2, [sp]
	subs r4, r2, r4
	movs r0, #0xff
	ands r4, r0
	lsls r0, r4, #1
	add r0, sl
	movs r2, #0
	ldrsh r1, [r0, r2]
	mov r0, r8
	bl CallARM_FX_Mul8
	mov r1, sb
	ldr r2, [r1]
	lsls r5, r6, #3
	subs r5, r5, r6
	lsls r5, r5, #2
	adds r2, r5, r2
	asrs r0, r0, #8
	movs r1, #0x78
	subs r1, r1, r0
	strh r1, [r2, #6]
	adds r4, #0x40
	lsls r4, r4, #1
	add r4, sl
	movs r2, #0
	ldrsh r1, [r4, r2]
	mov r0, r8
	bl CallARM_FX_Mul8
	mov r2, sb
	ldr r1, [r2]
	adds r5, r5, r1
	asrs r0, r0, #8
	movs r1, #0x50
	subs r1, r1, r0
	strb r1, [r5, #8]
	lsls r2, r7, #4
	subs r2, r2, r7
	movs r0, #0x80
	lsls r0, r0, #1
	adds r2, r2, r0
	lsls r2, r2, #0x10
	adds r0, r6, #0
	movs r1, #0
	lsrs r2, r2, #0x10
	bl sub_8025718
_0806116A:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #4
	bls _080610F6
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08061184: .4byte 0x080B1AE4
_08061188: .4byte 0x0203FA38
_0806118C: .4byte 0x0203FA53

    .thumb
sub_8061190: @ 0x08061190
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #0x10
	ldr r4, _08061230
	movs r0, #0x38
	movs r1, #1
	movs r2, #3
	bl Alloc
	str r0, [r4]
	ldr r1, _08061234
	movs r2, #0
	str r2, [sp]
	ldr r2, _08061238
	mov sb, r2
	movs r3, #0
	ldrsh r2, [r2, r3]
	str r2, [sp, #4]
	ldr r5, _0806123C
	mov r8, r5
	movs r3, #0
	ldrsh r2, [r5, r3]
	str r2, [sp, #8]
	movs r6, #2
	str r6, [sp, #0xc]
	movs r2, #0
	movs r3, #0
	bl SetSprite
	ldr r0, [r4]
	movs r1, #0
	bl sub_80037F4
	ldr r0, [r4]
	movs r1, #2
	bl SetSpritePriority
	ldr r0, [r4]
	adds r0, #0x1c
	movs r5, #1
	str r5, [sp]
	mov r2, sb
	movs r3, #0
	ldrsh r1, [r2, r3]
	str r1, [sp, #4]
	mov r2, r8
	movs r3, #0
	ldrsh r1, [r2, r3]
	str r1, [sp, #8]
	str r6, [sp, #0xc]
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl SetSprite
	ldr r0, [r4]
	adds r0, #0x1c
	movs r1, #2
	bl SetSpritePriority
	ldr r0, [r4]
	adds r0, #0x1c
	movs r1, #0
	bl sub_800378C
	ldr r0, [r4]
	adds r0, #0x2c
	strb r5, [r0]
	ldr r0, _08061240
	strb r5, [r0]
	add sp, #0x10
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08061230: .4byte 0x0203FA3C
_08061234: .4byte 0x000004C2
_08061238: .4byte 0x0203F994
_0806123C: .4byte 0x0203F996
_08061240: .4byte 0x0203FA54

    .thumb
sub_8061244: @ 0x08061244
	push {lr}
	ldr r0, _0806125C
	ldr r0, [r0]
	movs r1, #3
	bl Free
	ldr r1, _08061260
	movs r0, #0
	strb r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_0806125C: .4byte 0x0203FA3C
_08061260: .4byte 0x0203FA54

    .thumb
sub_8061264: @ 0x08061264
	ldr r1, _08061274
	ldrb r0, [r1]
	subs r0, #3
	strb r0, [r1]
	ldr r2, _08061278
	ldrb r0, [r1]
	strh r0, [r2]
	bx lr
	.align 2, 0
_08061274: .4byte 0x0203FA52
_08061278: .4byte 0x04000010

    .thumb
    .global sub_806127C
sub_806127C: @ 0x0806127C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	ldr r0, _080612A0
	ldrb r1, [r0]
	adds r3, r0, #0
	cmp r1, #0x13
	bls _08061296
	bl _08061F68
_08061296:
	lsls r0, r1, #2
	ldr r1, _080612A4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080612A0: .4byte 0x0203FA34
_080612A4: .4byte 0x080612A8
_080612A8: @ jump table
	.4byte _08061F68 @ case 0
	.4byte _080612F8 @ case 1
	.4byte _08061328 @ case 2
	.4byte _0806134C @ case 3
	.4byte _08061360 @ case 4
	.4byte _08061384 @ case 5
	.4byte _08061510 @ case 6
	.4byte _08061578 @ case 7
	.4byte _08061890 @ case 8
	.4byte _08061974 @ case 9
	.4byte _08061AD4 @ case 10
	.4byte _08061C68 @ case 11
	.4byte _08061D0C @ case 12
	.4byte _08061D64 @ case 13
	.4byte _08061F68 @ case 14
	.4byte _08061DE8 @ case 15
	.4byte _08061F04 @ case 16
	.4byte _08061F50 @ case 17
	.4byte _08061F68 @ case 18
	.4byte _08061F56 @ case 19
_080612F8:
	movs r0, #4
	bl init_function
	ldr r1, _08061318
	movs r0, #2
	strb r0, [r1]
	ldr r1, _0806131C
	movs r0, #5
	str r0, [r1]
	ldr r0, _08061320
	movs r1, #0
	strb r1, [r0]
	ldr r0, _08061324
	strb r1, [r0]
	bl _08061F68
	.align 2, 0
_08061318: .4byte 0x0203FA34
_0806131C: .4byte gMatricesCount
_08061320: .4byte byte_203FA35
_08061324: .4byte 0x0203FA54
_08061328:
	ldr r0, _08061344
	ldrb r0, [r0]
	cmp r0, #0
	beq _08061334
	bl _08061F68
_08061334:
	movs r0, #3
	strb r0, [r3]
	ldr r1, _08061348
	movs r0, #1
	strb r0, [r1]
	bl _08061F68
	.align 2, 0
_08061344: .4byte byte_203F99E
_08061348: .4byte byte_203FA35
_0806134C:
	movs r0, #3
	bl init_function
	ldr r1, _0806135C
	movs r0, #4
	strb r0, [r1]
	bl _08061F68
	.align 2, 0
_0806135C: .4byte 0x0203FA34
_08061360:
	ldr r0, _0806137C
	ldrb r0, [r0]
	cmp r0, #0
	beq _0806136C
	bl _08061F68
_0806136C:
	bl sub_8061190
	ldr r1, _08061380
	movs r0, #5
	strb r0, [r1]
	bl _08061F68
	.align 2, 0
_0806137C: .4byte byte_203F99C
_08061380: .4byte 0x0203FA34
_08061384:
	ldr r4, _080613B4
	movs r0, #0x8c
	movs r1, #1
	movs r2, #3
	bl Alloc
	str r0, [r4]
	ldr r4, _080613B8
	movs r0, #0x50
	movs r1, #1
	movs r2, #3
	bl Alloc
	str r0, [r4]
	movs r0, #4
	mov sb, r0
	ldr r0, _080613BC
	ldrb r0, [r0]
	cmp r0, #0
	beq _080613C0
	movs r1, #1
	str r1, [sp, #0x10]
	b _08061410
	.align 2, 0
_080613B4: .4byte 0x0203FA38
_080613B8: .4byte gMatrices
_080613BC: .4byte byte_20020B1
_080613C0:
	ldr r0, _080613D4
	ldrh r1, [r0]
	adds r2, r0, #0
	cmp r1, #0x24
	beq _080613EC
	cmp r1, #0x24
	bgt _080613D8
	cmp r1, #0x23
	beq _080613E2
	b _08061408
	.align 2, 0
_080613D4: .4byte 0x0203E140
_080613D8:
	cmp r1, #0x25
	beq _080613FE
	cmp r1, #0x26
	beq _080613F4
	b _08061408
_080613E2:
	movs r3, #0
	mov sb, r3
	movs r4, #1
	str r4, [sp, #0x10]
	b _0806140C
_080613EC:
	movs r5, #1
	mov sb, r5
	movs r0, #1
	b _0806140A
_080613F4:
	movs r1, #2
	mov sb, r1
	movs r3, #1
	str r3, [sp, #0x10]
	b _0806140C
_080613FE:
	movs r4, #3
	mov sb, r4
	movs r5, #1
	str r5, [sp, #0x10]
	b _0806140C
_08061408:
	movs r0, #0
_0806140A:
	str r0, [sp, #0x10]
_0806140C:
	movs r0, #0
	strh r0, [r2]
_08061410:
	movs r6, #0
	ldr r7, _08061484
	movs r1, #1
	mov sl, r1
_08061418:
	lsls r0, r6, #3
	subs r0, r0, r6
	lsls r5, r0, #2
	ldr r0, [r7]
	adds r0, r0, r5
	ldr r1, _08061488
	lsls r2, r6, #2
	mov r8, r2
	add r1, r8
	ldr r1, [r1]
	movs r2, #0
	str r2, [sp]
	movs r2, #0xfa
	str r2, [sp, #4]
	movs r2, #0xc8
	str r2, [sp, #8]
	movs r2, #2
	str r2, [sp, #0xc]
	movs r2, #0
	movs r3, #0
	bl SetSprite
	ldr r0, [r7]
	adds r0, r0, r5
	movs r1, #1
	adds r2, r6, #0
	bl sub_8003820
	ldr r0, [r7]
	adds r0, r0, r5
	movs r1, #1
	bl SetSpritePriority
	ldr r0, [r7]
	adds r0, r5, r0
	mov r3, sl
	strb r3, [r0, #0x10]
	ldr r0, _0806148C
	adds r0, r6, r0
	ldrb r4, [r0]
	adds r0, r4, #0
	bl sub_8016A5C
	cmp r0, #0
	bne _08061476
	cmp r4, #0
	bne _08061490
_08061476:
	ldr r4, [sp, #0x10]
	cmp r4, #0
	bne _080614B4
	movs r5, #1
	str r5, [sp, #0x10]
	mov sb, r6
	b _080614B4
	.align 2, 0
_08061484: .4byte 0x0203FA38
_08061488: .4byte 0x080CF438
_0806148C: .4byte 0x080CF460
_08061490:
	ldr r0, [r7]
	adds r0, r0, r5
	ldr r1, _080614F4
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldr r0, [r7]
	adds r0, r0, r5
	ldr r1, _080614F8
	add r1, r8
	ldr r1, [r1]
	bl SetSpritePalette
	ldr r0, [r7]
	adds r0, r5, r0
	mov r1, sl
	strb r1, [r0, #0x12]
_080614B4:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #4
	bls _08061418
	ldr r2, _080614FC
	mov r3, sb
	lsls r0, r3, #1
	add r0, sb
	lsls r1, r0, #4
	adds r0, r0, r1
	lsls r0, r0, #8
	strh r0, [r2]
	ldr r0, _08061500
	ldr r1, [r0]
	lsls r0, r3, #3
	subs r0, r0, r3
	lsls r0, r0, #2
	adds r0, r0, r1
	movs r1, #0
	strb r1, [r0, #0x10]
	ldr r0, _08061504
	strb r3, [r0]
	ldr r1, _08061508
	movs r0, #0x10
	strb r0, [r1]
	ldr r1, _0806150C
	movs r0, #6
	strb r0, [r1]
	bl _08061F68
	.align 2, 0
_080614F4: .4byte 0x000004B9
_080614F8: .4byte 0x080CF44C
_080614FC: .4byte 0x0203FA44
_08061500: .4byte 0x0203FA38
_08061504: .4byte 0x0203FA4D
_08061508: .4byte 0x0203FA4C
_0806150C: .4byte 0x0203FA34
_08061510:
	ldr r2, _0806153C
	ldrb r1, [r2]
	adds r0, r1, #2
	strb r0, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x3b
	bhi _08061548
	ldr r0, _08061540
	ldrh r0, [r0]
	lsrs r0, r0, #8
	subs r1, #0x3a
	subs r0, r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldrb r1, [r2]
	ldr r2, _08061544
	ldrb r2, [r2]
	bl sub_80610C8
	bl _08061F68
	.align 2, 0
_0806153C: .4byte 0x0203FA4C
_08061540: .4byte 0x0203FA44
_08061544: .4byte 0x0203FA4D
_08061548:
	movs r6, #0
_0806154A:
	adds r0, r6, #0
	movs r1, #0
	movs r2, #0x80
	lsls r2, r2, #1
	bl sub_8025718
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #4
	bls _0806154A
	ldr r1, _08061570
	movs r0, #7
	strb r0, [r1]
	ldr r1, _08061574
	movs r0, #0
	strh r0, [r1]
	bl _08061F68
	.align 2, 0
_08061570: .4byte 0x0203FA34
_08061574: .4byte 0x0203FA46
_08061578:
	ldr r2, _080615E0
	ldrh r1, [r2]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08061614
	ldr r0, _080615E4
	movs r4, #0
	ldrsh r0, [r0, r4]
	cmp r0, #0
	bne _0806160A
	ldr r0, _080615E8
	ldrb r1, [r0]
	ldr r0, _080615EC
	ldr r2, [r0]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r1, #1
	strb r1, [r0, #0x10]
	ldr r4, _080615F0
	ldr r0, [r4]
	bl audio_fx_still_active
	cmp r0, #0
	bne _0806160A
	ldr r0, _080615F4
	ldrb r0, [r0]
	cmp r0, #0
	beq _08061604
	ldr r2, _080615F8
	movs r5, #0xcd
	lsls r5, r5, #3
	adds r0, r2, r5
	ldrh r0, [r0]
	ldr r3, _080615FC
	adds r5, #2
	adds r1, r2, r5
	ldrb r3, [r3]
	adds r1, r1, r3
	ldrb r1, [r1]
	ldr r3, _08061600
	adds r2, r2, r3
	ldr r2, [r2]
	movs r5, #0x80
	lsls r5, r5, #9
	adds r2, r2, r5
	bl audio_new_fx
	b _08061608
	.align 2, 0
_080615E0: .4byte gKeysPressed
_080615E4: .4byte 0x0203FA46
_080615E8: .4byte 0x0203FA4D
_080615EC: .4byte 0x0203FA38
_080615F0: .4byte 0x0203FA40
_080615F4: .4byte gCanPlaySfx
_080615F8: .4byte 0x080CE440
_080615FC: .4byte gSfxVolume
_08061600: .4byte 0x0000066C
_08061604:
	movs r0, #1
	rsbs r0, r0, #0
_08061608:
	str r0, [r4]
_0806160A:
	ldr r1, _08061678
	ldr r2, _0806167C
	adds r0, r2, #0
	strh r0, [r1]
	ldr r2, _08061680
_08061614:
	ldrh r1, [r2]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080616B2
	ldr r0, _08061678
	movs r3, #0
	ldrsh r0, [r0, r3]
	cmp r0, #0
	bne _080616A6
	ldr r0, _08061684
	ldrb r1, [r0]
	ldr r0, _08061688
	ldr r2, [r0]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r1, #1
	strb r1, [r0, #0x10]
	ldr r4, _0806168C
	ldr r0, [r4]
	bl audio_fx_still_active
	cmp r0, #0
	bne _080616A6
	ldr r0, _08061690
	ldrb r0, [r0]
	cmp r0, #0
	beq _080616A0
	ldr r2, _08061694
	movs r5, #0xcd
	lsls r5, r5, #3
	adds r0, r2, r5
	ldrh r0, [r0]
	ldr r3, _08061698
	adds r5, #2
	adds r1, r2, r5
	ldrb r3, [r3]
	adds r1, r1, r3
	ldrb r1, [r1]
	ldr r3, _0806169C
	adds r2, r2, r3
	ldr r2, [r2]
	movs r5, #0x80
	lsls r5, r5, #9
	adds r2, r2, r5
	bl audio_new_fx
	b _080616A4
	.align 2, 0
_08061678: .4byte 0x0203FA46
_0806167C: .4byte 0xFFFFFE00
_08061680: .4byte gKeysPressed
_08061684: .4byte 0x0203FA4D
_08061688: .4byte 0x0203FA38
_0806168C: .4byte 0x0203FA40
_08061690: .4byte gCanPlaySfx
_08061694: .4byte 0x080CE440
_08061698: .4byte gSfxVolume
_0806169C: .4byte 0x0000066C
_080616A0:
	movs r0, #1
	rsbs r0, r0, #0
_080616A4:
	str r0, [r4]
_080616A6:
	ldr r1, _08061718
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r2, #0
	strh r0, [r1]
	ldr r2, _0806171C
_080616B2:
	ldr r0, _08061718
	movs r4, #0
	ldrsh r3, [r0, r4]
	cmp r3, #0
	bne _0806177A
	ldrh r1, [r2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0806177A
	ldr r1, _08061720
	ldr r0, _08061724
	ldrb r0, [r0]
	adds r0, r0, r1
	ldr r1, _08061728
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	bne _08061740
	ldr r1, _0806172C
	movs r0, #1
	strb r0, [r1]
	bl sub_8061244
	movs r0, #6
	bl init_function
	ldr r0, _08061730
	ldrb r0, [r0]
	cmp r0, #0
	beq _08061772
	ldr r2, _08061734
	movs r5, #0xd0
	lsls r5, r5, #3
	adds r0, r2, r5
	ldrh r0, [r0]
	ldr r3, _08061738
	ldr r4, _0806173C
	adds r1, r2, r4
	ldrb r3, [r3]
	adds r1, r1, r3
	ldrb r1, [r1]
	adds r5, #4
	adds r2, r2, r5
	ldr r2, [r2]
	movs r3, #0x80
	lsls r3, r3, #9
	adds r2, r2, r3
	bl audio_new_fx
	b _08061772
	.align 2, 0
_08061718: .4byte 0x0203FA46
_0806171C: .4byte gKeysPressed
_08061720: .4byte 0x080CF460
_08061724: .4byte 0x0203FA4D
_08061728: .4byte byte_20020B1
_0806172C: .4byte 0x0203FA53
_08061730: .4byte gCanPlaySfx
_08061734: .4byte 0x080CE440
_08061738: .4byte gSfxVolume
_0806173C: .4byte 0x00000682
_08061740:
	ldr r0, _08061854
	strb r3, [r0]
	ldr r0, _08061858
	ldrb r0, [r0]
	cmp r0, #0
	beq _08061772
	ldr r2, _0806185C
	movs r4, #0xcf
	lsls r4, r4, #3
	adds r0, r2, r4
	ldrh r0, [r0]
	ldr r3, _08061860
	ldr r5, _08061864
	adds r1, r2, r5
	ldrb r3, [r3]
	adds r1, r1, r3
	ldrb r1, [r1]
	ldr r3, _08061868
	adds r2, r2, r3
	ldr r2, [r2]
	movs r4, #0x80
	lsls r4, r4, #9
	adds r2, r2, r4
	bl audio_new_fx
_08061772:
	ldr r1, _0806186C
	movs r0, #8
	strb r0, [r1]
	ldr r2, _08061870
_0806177A:
	ldrh r1, [r2]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080617D6
	ldr r4, _08061858
	ldrb r0, [r4]
	cmp r0, #0
	beq _08061794
	ldr r0, _08061874
	ldr r0, [r0]
	bl audio_halt_fx
_08061794:
	ldr r0, _08061854
	movs r1, #1
	strb r1, [r0]
	bl sub_8061244
	movs r0, #6
	bl init_function
	ldrb r0, [r4]
	cmp r0, #0
	beq _080617D0
	ldr r2, _0806185C
	movs r5, #0xd0
	lsls r5, r5, #3
	adds r0, r2, r5
	ldrh r0, [r0]
	ldr r3, _08061860
	ldr r4, _08061878
	adds r1, r2, r4
	ldrb r3, [r3]
	adds r1, r1, r3
	ldrb r1, [r1]
	adds r5, #4
	adds r2, r2, r5
	ldr r2, [r2]
	movs r3, #0x80
	lsls r3, r3, #9
	adds r2, r2, r3
	bl audio_new_fx
_080617D0:
	ldr r1, _0806186C
	movs r0, #8
	strb r0, [r1]
_080617D6:
	ldr r2, _0806187C
	ldr r1, _08061880
	ldrh r0, [r2]
	ldrh r1, [r1]
	subs r0, r0, r1
	strh r0, [r2]
	movs r6, #0
	movs r5, #0
_080617E6:
	ldr r0, _0806187C
	ldrh r0, [r0]
	lsrs r2, r0, #8
	lsls r0, r6, #1
	adds r0, r0, r6
	lsls r1, r0, #4
	adds r1, r0, r1
	adds r0, r1, #2
	cmp r2, r0
	bge _08061838
	cmp r2, r1
	blt _08061838
	ldr r0, _08061884
	adds r0, r6, r0
	ldrb r4, [r0]
	adds r0, r4, #0
	bl sub_8016A5C
	cmp r0, #0
	bne _08061812
	cmp r4, #0
	bne _08061838
_08061812:
	ldr r0, _08061880
	strh r5, [r0]
	ldr r0, _08061888
	ldr r1, [r0]
	lsls r0, r6, #3
	subs r0, r0, r6
	lsls r0, r0, #2
	adds r0, r0, r1
	strb r5, [r0, #0x10]
	ldr r0, _0806188C
	strb r6, [r0]
	ldr r0, _08061858
	ldrb r0, [r0]
	cmp r0, #0
	beq _08061838
	ldr r0, _08061874
	ldr r0, [r0]
	bl audio_halt_fx
_08061838:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #4
	bls _080617E6
	ldr r0, _0806187C
	ldrh r0, [r0]
	lsrs r0, r0, #8
	movs r1, #0x3c
	movs r2, #0x63
	bl sub_80610C8
	b _08061F68
	.align 2, 0
_08061854: .4byte 0x0203FA53
_08061858: .4byte gCanPlaySfx
_0806185C: .4byte 0x080CE440
_08061860: .4byte gSfxVolume
_08061864: .4byte 0x0000067A
_08061868: .4byte 0x0000067C
_0806186C: .4byte 0x0203FA34
_08061870: .4byte gKeysPressed
_08061874: .4byte 0x0203FA40
_08061878: .4byte 0x00000682
_0806187C: .4byte 0x0203FA44
_08061880: .4byte 0x0203FA46
_08061884: .4byte 0x080CF460
_08061888: .4byte 0x0203FA38
_0806188C: .4byte 0x0203FA4D
_08061890:
	ldr r1, _080618C0
	ldrb r0, [r1]
	subs r0, #2
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r1
	cmp r0, #0x10
	bls _080618D0
	ldr r4, _080618C4
	ldrh r0, [r4]
	lsrs r0, r0, #8
	ldrb r1, [r1]
	ldr r2, _080618C8
	ldrb r2, [r2]
	bl sub_80610C8
	ldr r5, _080618CC
	adds r0, r5, #0
	ldrh r1, [r4]
	adds r0, r0, r1
	strh r0, [r4]
	b _08061F68
	.align 2, 0
_080618C0: .4byte 0x0203FA4C
_080618C4: .4byte 0x0203FA44
_080618C8: .4byte 0x0203FA4D
_080618CC: .4byte 0xFFFFFE00
_080618D0:
	movs r6, #0
	ldr r7, _08061904
	ldr r5, _08061908
	ldr r4, _0806190C
	movs r2, #0xc8
_080618DA:
	ldrb r0, [r5]
	cmp r6, r0
	beq _080618EC
	ldr r1, [r4]
	lsls r0, r6, #3
	subs r0, r0, r6
	lsls r0, r0, #2
	adds r0, r0, r1
	strb r2, [r0, #8]
_080618EC:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #4
	bls _080618DA
	ldrb r2, [r7]
	cmp r2, #0
	beq _08061910
	movs r0, #0x10
	strb r0, [r3]
	b _08061F68
	.align 2, 0
_08061904: .4byte 0x0203FA53
_08061908: .4byte 0x0203FA4D
_0806190C: .4byte 0x0203FA38
_08061910:
	ldr r1, _08061958
	movs r0, #2
	strb r0, [r1]
	movs r0, #0x3c
	mov r1, r8
	strb r0, [r1]
	ldr r0, _0806195C
	strh r2, [r0]
	movs r0, #9
	strb r0, [r3]
	ldr r0, _08061960
	ldrb r0, [r0]
	cmp r0, #0
	bne _0806192E
	b _08061F68
_0806192E:
	ldr r2, _08061964
	movs r3, #0xe2
	lsls r3, r3, #3
	adds r0, r2, r3
	ldrh r0, [r0]
	ldr r3, _08061968
	ldr r4, _0806196C
	adds r1, r2, r4
	ldrb r3, [r3]
	adds r1, r1, r3
	ldrb r1, [r1]
	ldr r5, _08061970
	adds r2, r2, r5
	ldr r2, [r2]
	movs r3, #0x80
	lsls r3, r3, #9
	adds r2, r2, r3
	bl audio_new_fx
	b _08061F68
	.align 2, 0
_08061958: .4byte 0x0203FA4E
_0806195C: .4byte 0x0203FA44
_08061960: .4byte gCanPlaySfx
_08061964: .4byte 0x080CE440
_08061968: .4byte gSfxVolume
_0806196C: .4byte 0x00000712
_08061970: .4byte 0x00000714
_08061974:
	ldr r2, _08061A3C
	ldrb r1, [r2]
	subs r1, #1
	strb r1, [r2]
	ldr r4, _08061A40
	movs r5, #0x80
	lsls r5, r5, #4
	adds r0, r5, #0
	ldrh r3, [r4]
	adds r0, r0, r3
	strh r0, [r4]
	lsls r1, r1, #0x18
	ldr r5, _08061A44
	mov r8, r5
	cmp r1, #0
	bne _0806199E
	ldrb r0, [r5]
	subs r0, #1
	strb r0, [r5]
	movs r0, #2
	strb r0, [r2]
_0806199E:
	ldrh r4, [r4]
	lsrs r4, r4, #8
	mov r1, r8
	ldrb r0, [r1]
	lsls r0, r0, #8
	ldr r5, _08061A48
	lsls r1, r4, #1
	adds r1, r1, r5
	movs r2, #0
	ldrsh r1, [r1, r2]
	bl CallARM_FX_Mul8
	ldr r6, _08061A4C
	ldrb r1, [r6]
	ldr r7, _08061A50
	ldr r3, [r7]
	lsls r2, r1, #3
	subs r2, r2, r1
	lsls r2, r2, #2
	adds r2, r2, r3
	asrs r0, r0, #8
	movs r1, #0x78
	subs r1, r1, r0
	strh r1, [r2, #6]
	mov r3, r8
	ldrb r0, [r3]
	movs r1, #0xd0
	bl CallARM_FX_Mul8
	lsls r0, r0, #8
	adds r4, #0x40
	lsls r4, r4, #1
	adds r4, r4, r5
	movs r5, #0
	ldrsh r1, [r4, r5]
	bl CallARM_FX_Mul8
	ldrb r1, [r6]
	ldr r3, [r7]
	lsls r2, r1, #3
	subs r2, r2, r1
	lsls r2, r2, #2
	adds r2, r2, r3
	asrs r0, r0, #8
	movs r1, #0x41
	subs r1, r1, r0
	strb r1, [r2, #8]
	ldrb r0, [r6]
	mov r1, r8
	ldrb r2, [r1]
	movs r1, #0x3c
	subs r1, r1, r2
	lsls r2, r1, #4
	subs r2, r2, r1
	movs r3, #0x80
	lsls r3, r3, #1
	adds r2, r2, r3
	movs r1, #0
	bl sub_8025718
	mov r4, r8
	ldrb r0, [r4]
	cmp r0, #0x10
	beq _08061A20
	b _08061F68
_08061A20:
	ldrb r1, [r6]
	ldr r2, [r7]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r1, #0xc8
	strb r1, [r0, #8]
	ldrb r0, [r6]
	cmp r0, #0
	bne _08061A58
	ldr r1, _08061A54
	movs r0, #1
	b _08061A5C
	.align 2, 0
_08061A3C: .4byte 0x0203FA4E
_08061A40: .4byte 0x0203FA44
_08061A44: .4byte 0x0203FA4C
_08061A48: .4byte 0x080B1AE4
_08061A4C: .4byte 0x0203FA4D
_08061A50: .4byte 0x0203FA38
_08061A54: .4byte 0x0203FA51
_08061A58:
	ldr r1, _08061AC0
	movs r0, #0
_08061A5C:
	strb r0, [r1]
	adds r5, r1, #0
	ldr r4, _08061AC4
	ldrb r0, [r5]
	lsls r1, r0, #3
	subs r1, r1, r0
	lsls r1, r1, #2
	ldr r0, [r4]
	adds r0, r0, r1
	ldr r1, _08061AC8
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldrb r1, [r5]
	ldr r2, [r4]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r1, #0
	strb r1, [r0, #0x10]
	ldrb r0, [r5]
	movs r2, #0xc0
	lsls r2, r2, #2
	bl sub_8025718
	ldrb r1, [r5]
	ldr r2, [r4]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r3, #0
	movs r1, #0x78
	strh r1, [r0, #6]
	ldrb r1, [r5]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r1, #0x41
	strb r1, [r0, #8]
	ldr r0, _08061ACC
	strb r3, [r0]
	ldr r1, _08061AD0
	movs r0, #0xa
	strb r0, [r1]
	b _08061F68
	.align 2, 0
_08061AC0: .4byte 0x0203FA51
_08061AC4: .4byte 0x0203FA38
_08061AC8: .4byte 0x000004BF
_08061ACC: .4byte 0x0203FA4E
_08061AD0: .4byte 0x0203FA34
_08061AD4:
	ldr r7, _08061C04
	ldrb r0, [r7]
	adds r0, #2
	strb r0, [r7]
	ldr r6, _08061C08
	ldrb r4, [r6]
	ldr r1, _08061C0C
	ldrb r0, [r7]
	lsls r0, r0, #1
	adds r0, r0, r1
	movs r5, #0
	ldrsh r0, [r0, r5]
	movs r1, #0xc0
	lsls r1, r1, #1
	bl CallARM_FX_Mul8
	movs r2, #0xa0
	lsls r2, r2, #2
	subs r2, r2, r0
	adds r0, r4, #0
	movs r1, #0
	bl sub_8025718
	movs r0, #0
	ldrsb r0, [r7, r0]
	cmp r0, #0
	blt _08061B0C
	b _08061F68
_08061B0C:
	ldrb r1, [r6]
	ldr r4, _08061C10
	ldr r2, [r4]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r5, #0
	strb r5, [r0, #0x12]
	ldrb r0, [r6]
	lsls r1, r0, #3
	subs r1, r1, r0
	lsls r1, r1, #2
	ldr r0, [r4]
	adds r0, r0, r1
	ldr r1, _08061C14
	movs r2, #0
	movs r3, #0
	bl sub_8003368
	ldrb r0, [r6]
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	bl sub_8025718
	ldrb r1, [r6]
	ldr r2, [r4]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	strb r5, [r0, #0x10]
	ldrb r0, [r6]
	lsls r1, r0, #3
	subs r1, r1, r0
	lsls r1, r1, #2
	ldr r0, [r4]
	adds r0, r0, r1
	movs r1, #0
	bl SetSpritePriority
	ldrb r1, [r6]
	ldr r3, [r4]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r3
	movs r2, #0
	movs r1, #0x78
	strh r1, [r0, #6]
	ldrb r1, [r6]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r3
	strb r2, [r0, #8]
	movs r0, #5
	strb r0, [r7]
	ldr r1, _08061C18
	ldr r0, _08061C1C
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _08061C20
	ldr r0, _08061C24
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _08061C28
	strb r2, [r0, #0x10]
	ldr r0, _08061C2C
	ldr r0, [r0]
	adds r0, #0x2c
	strb r2, [r0]
	ldr r2, _08061C30
	ldr r1, _08061C34
	ldrh r0, [r1]
	strh r0, [r2]
	ldr r2, _08061C38
	adds r0, r2, #0
	strh r0, [r1]
	ldr r1, _08061C3C
	ldrb r0, [r7]
	strb r0, [r1]
	ldr r1, _08061C40
	ldr r0, _08061C44
	str r0, [r1]
	movs r0, #0
	bl SetAlphaBlending
	ldr r2, _08061C48
	ldrh r1, [r2]
	ldr r0, _08061C4C
	ands r0, r1
	strh r0, [r2]
	ldr r0, _08061C50
	strh r5, [r0]
	ldr r0, _08061C54
	ldr r0, [r0]
	bl audio_set_tune_vol
	ldr r0, _08061C58
	ldrb r0, [r0]
	cmp r0, #0
	beq _08061BFC
	ldr r3, _08061C5C
	adds r0, r3, #0
	adds r0, #0x70
	ldrh r0, [r0]
	ldr r2, _08061C60
	adds r1, r3, #0
	adds r1, #0x72
	ldrb r2, [r2]
	adds r1, r1, r2
	ldrb r1, [r1]
	ldr r2, [r3, #0x74]
	movs r3, #0x80
	lsls r3, r3, #9
	adds r2, r2, r3
	bl audio_new_fx
_08061BFC:
	ldr r1, _08061C64
	movs r0, #0xb
	strb r0, [r1]
	b _08061F68
	.align 2, 0
_08061C04: .4byte 0x0203FA4E
_08061C08: .4byte 0x0203FA51
_08061C0C: .4byte 0x080B1AE4
_08061C10: .4byte 0x0203FA38
_08061C14: .4byte 0x000004BE
_08061C18: .4byte 0x0203FA4F
_08061C1C: .4byte gBGOffsetHorizontal
_08061C20: .4byte 0x0203FA50
_08061C24: .4byte gBGOffsetVertical
_08061C28: .4byte gPlayerShadowSprite
_08061C2C: .4byte 0x0203FA3C
_08061C30: .4byte 0x0203FA4A
_08061C34: .4byte 0x04000050
_08061C38: .4byte 0x00003F61
_08061C3C: .4byte 0x0203FA52
_08061C40: .4byte gNullsub_5
_08061C44: .4byte 0x08061265
_08061C48: .4byte 0x04000008
_08061C4C: .4byte 0x0000FFFC
_08061C50: .4byte 0x0203FA48
_08061C54: .4byte dVolumes
_08061C58: .4byte gCanPlaySfx
_08061C5C: .4byte 0x080CE440
_08061C60: .4byte gSfxVolume
_08061C64: .4byte 0x0203FA34
_08061C68:
	ldr r5, _08061CEC
	ldrb r0, [r5]
	subs r0, #1
	strb r0, [r5]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08061CB4
	ldr r4, _08061CF0
	ldrb r1, [r4]
	ldr r3, _08061CF4
	ldr r2, [r3]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrb r1, [r0, #8]
	adds r1, #1
	strb r1, [r0, #8]
	movs r0, #5
	strb r0, [r5]
	ldrb r1, [r4]
	ldr r2, [r3]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrb r1, [r0, #8]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08061CB4
	ldr r0, _08061CF8
	ldrh r1, [r0]
	adds r1, #1
	strh r1, [r0]
	ldrh r0, [r0]
	bl SetAlphaBlending
_08061CB4:
	ldr r0, _08061CF0
	ldrb r1, [r0]
	ldr r0, _08061CF4
	ldr r2, [r0]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrb r0, [r0, #8]
	cmp r0, #0x28
	beq _08061CCC
	b _08061F68
_08061CCC:
	ldr r1, _08061CEC
	movs r0, #3
	strb r0, [r1]
	ldr r0, _08061CF8
	movs r1, #0
	strh r1, [r0]
	ldr r0, _08061CFC
	strh r1, [r0]
	ldr r1, _08061D00
	ldr r4, _08061D04
	adds r0, r4, #0
	strh r0, [r1]
	ldr r1, _08061D08
	movs r0, #0xc
	strb r0, [r1]
	b _08061F68
	.align 2, 0
_08061CEC: .4byte 0x0203FA4E
_08061CF0: .4byte 0x0203FA51
_08061CF4: .4byte 0x0203FA38
_08061CF8: .4byte 0x0203FA48
_08061CFC: .4byte 0x04000054
_08061D00: .4byte 0x04000050
_08061D04: .4byte 0x00003FBF
_08061D08: .4byte 0x0203FA34
_08061D0C:
	ldr r4, _08061D4C
	ldrb r0, [r4]
	subs r0, #1
	strb r0, [r4]
	lsls r0, r0, #0x18
	ldr r2, _08061D50
	cmp r0, #0
	bne _08061D2A
	movs r0, #3
	strb r0, [r4]
	ldrh r0, [r2]
	adds r0, #1
	strh r0, [r2]
	ldr r1, _08061D54
	strh r0, [r1]
_08061D2A:
	ldrh r0, [r2]
	cmp r0, #0x10
	beq _08061D32
	b _08061F68
_08061D32:
	ldr r1, _08061D58
	ldr r0, _08061D5C
	ldrb r0, [r0]
	adds r0, r0, r1
	ldrb r0, [r0]
	bl sub_08019FCC
	movs r0, #3
	strb r0, [r4]
	ldr r1, _08061D60
	movs r0, #0xd
	strb r0, [r1]
	b _08061F68
	.align 2, 0
_08061D4C: .4byte 0x0203FA4E
_08061D50: .4byte 0x0203FA48
_08061D54: .4byte 0x04000054
_08061D58: .4byte 0x080CF460
_08061D5C: .4byte 0x0203FA4D
_08061D60: .4byte 0x0203FA34
_08061D64:
	ldr r5, _08061DC8
	ldrb r0, [r5]
	subs r0, #1
	strb r0, [r5]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08061D9C
	movs r0, #3
	strb r0, [r5]
	ldr r2, _08061DCC
	ldrh r0, [r2]
	subs r0, #1
	strh r0, [r2]
	ldr r1, _08061DD0
	strh r0, [r1]
	ldr r4, _08061DD4
	ldr r0, _08061DD8
	ldrb r3, [r0]
	ldrh r1, [r2]
	movs r0, #0x10
	subs r0, r0, r1
	muls r0, r3, r0
	asrs r0, r0, #4
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	bl audio_set_tune_vol
_08061D9C:
	ldr r2, _08061DCC
	ldrh r0, [r2]
	cmp r0, #0
	beq _08061DA6
	b _08061F68
_08061DA6:
	ldr r1, _08061DDC
	ldr r3, _08061DE0
	adds r0, r3, #0
	strh r0, [r1]
	movs r1, #0xf
	strh r1, [r2]
	movs r0, #5
	strb r0, [r5]
	ldr r0, _08061DE4
	strb r1, [r0]
	bl sub_8061244
	movs r0, #6
	bl init_function
	b _08061F68
	.align 2, 0
_08061DC8: .4byte 0x0203FA4E
_08061DCC: .4byte 0x0203FA48
_08061DD0: .4byte 0x04000054
_08061DD4: .4byte dVolumes
_08061DD8: .4byte gBgmMainVolume
_08061DDC: .4byte 0x04000050
_08061DE0: .4byte 0x00003F61
_08061DE4: .4byte 0x0203FA34
_08061DE8:
	ldr r5, _08061EB0
	ldrb r0, [r5]
	subs r0, #1
	strb r0, [r5]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08061E38
	ldr r4, _08061EB4
	ldrb r1, [r4]
	ldr r3, _08061EB8
	ldr r2, [r3]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrb r1, [r0, #8]
	subs r1, #1
	strb r1, [r0, #8]
	movs r0, #5
	strb r0, [r5]
	ldrb r1, [r4]
	ldr r2, [r3]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrb r1, [r0, #8]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08061E38
	ldr r1, _08061EBC
	ldrh r0, [r1]
	cmp r0, #0
	beq _08061E38
	subs r0, #1
	strh r0, [r1]
	ldrh r0, [r1]
	bl SetAlphaBlending
_08061E38:
	ldr r0, _08061EB4
	ldrb r1, [r0]
	ldr r0, _08061EB8
	ldr r2, [r0]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrb r0, [r0, #8]
	cmp r0, #0
	beq _08061E50
	b _08061F68
_08061E50:
	ldr r0, _08061EC0
	ldrb r0, [r0]
	cmp r0, #0
	beq _08061E5A
	b _08061F68
_08061E5A:
	ldr r1, _08061EC4
	ldr r0, _08061EC8
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _08061ECC
	ldr r0, _08061ED0
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r2, _08061ED4
	ldrh r0, [r2]
	movs r1, #3
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _08061ED8
	ldr r0, _08061EDC
	ldrh r0, [r0]
	strh r0, [r1]
	movs r0, #7
	bl SetAlphaBlending
	ldr r1, _08061EE0
	ldr r0, _08061EE4
	str r0, [r1]
	ldr r1, _08061EE8
	ldr r0, _08061EEC
	str r0, [r1]
	ldr r1, _08061EF0
	ldr r0, _08061EF4
	str r0, [r1]
	ldr r0, _08061EF8
	movs r1, #1
	strb r1, [r0, #0x10]
	ldr r0, _08061EFC
	ldr r0, [r0]
	adds r0, #0x2c
	strb r1, [r0]
	bl sub_800F7A0
	ldr r1, _08061F00
	movs r0, #0x10
	strb r0, [r1]
	b _08061F68
	.align 2, 0
_08061EB0: .4byte 0x0203FA4E
_08061EB4: .4byte 0x0203FA51
_08061EB8: .4byte 0x0203FA38
_08061EBC: .4byte 0x0203FA48
_08061EC0: .4byte byte_203F99C
_08061EC4: .4byte gBGOffsetHorizontal
_08061EC8: .4byte 0x0203FA4F
_08061ECC: .4byte gBGOffsetVertical
_08061ED0: .4byte 0x0203FA50
_08061ED4: .4byte 0x04000008
_08061ED8: .4byte 0x04000050
_08061EDC: .4byte 0x0203FA4A
_08061EE0: .4byte gNullsub_3
_08061EE4: .4byte 0x08009DD5
_08061EE8: .4byte gNullsub_4
_08061EEC: .4byte 0x08009DD9
_08061EF0: .4byte gNullsub_5
_08061EF4: .4byte 0x08009DDD
_08061EF8: .4byte gPlayerShadowSprite
_08061EFC: .4byte 0x0203FA3C
_08061F00: .4byte 0x0203FA34
_08061F04:
	ldr r0, _08061F28
	ldr r0, [r0]
	movs r1, #3
	bl Free
	ldr r0, _08061F2C
	ldr r0, [r0]
	movs r1, #3
	bl Free
	ldr r0, _08061F30
	ldrb r0, [r0]
	cmp r0, #0
	beq _08061F38
	ldr r1, _08061F34
	movs r0, #0x13
	strb r0, [r1]
	b _08061F68
	.align 2, 0
_08061F28: .4byte gMatrices
_08061F2C: .4byte 0x0203FA38
_08061F30: .4byte 0x0203FA53
_08061F34: .4byte 0x0203FA34
_08061F38:
	ldr r0, _08061F48
	ldrb r0, [r0]
	cmp r0, #0
	bne _08061F68
	ldr r1, _08061F4C
	movs r0, #0x11
	strb r0, [r1]
	b _08061F68
	.align 2, 0
_08061F48: .4byte byte_203F99C
_08061F4C: .4byte 0x0203FA34
_08061F50:
	movs r0, #0x13
	strb r0, [r3]
	b _08061F68
_08061F56:
	movs r1, #0
	strb r1, [r3]
	ldr r0, _08061F78
	strb r1, [r0]
	bl sub_8030934
	ldr r1, _08061F7C
	movs r0, #0
	str r0, [r1]
_08061F68:
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08061F78: .4byte byte_203FA35
_08061F7C: .4byte gMatricesCount

    .thumb
    .global sub_8061F80
sub_8061F80: @ 0x08061F80
	push {r4, r5, lr}
	ldr r0, _08061FD0
	ldrb r0, [r0]
	cmp r0, #0
	beq _08061FC8
	subs r0, #6
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #9
	bhi _08061FB0
	movs r4, #0
	ldr r5, _08061FD4
_08061F98:
	lsls r1, r4, #3
	subs r1, r1, r4
	lsls r1, r1, #2
	ldr r0, [r5]
	adds r0, r0, r1
	bl RenderSprite
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #4
	bls _08061F98
_08061FB0:
	ldr r0, _08061FD8
	ldrb r0, [r0]
	cmp r0, #0
	beq _08061FC8
	ldr r4, _08061FDC
	ldr r0, [r4]
	bl RenderSprite
	ldr r0, [r4]
	adds r0, #0x1c
	bl RenderSprite
_08061FC8:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08061FD0: .4byte 0x0203FA34
_08061FD4: .4byte 0x0203FA38
_08061FD8: .4byte 0x0203FA54
_08061FDC: .4byte 0x0203FA3C

	.thumb
sub_8061FE0: @ 0x08061FE0
	ldr r0, _08061FEC
	movs r1, #0
	str r1, [r0]
	ldr r0, _08061FF0
	str r1, [r0]
	bx lr
	.align 2, 0
_08061FEC: .4byte 0x0203FA60
_08061FF0: .4byte 0x0203FA5C

    .thumb
sub_8061FF4: @ 0x08061FF4
	push {lr}
	ldr r0, _0806201C
	ldr r0, [r0]
	bl sub_8009D7C
	ldr r0, _08062020
	ldr r0, [r0]
	bl sub_8009D7C
	ldr r0, _08062024
	ldrb r0, [r0]
	bl sub_8009D7C
	ldr r0, _08062028
	ldr r0, [r0]
	bl sub_8009D7C
	pop {r0}
	bx r0
	.align 2, 0
_0806201C: .4byte 0x0203FA5C
_08062020: .4byte 0x0203FA60
_08062024: .4byte 0x0203FA58
_08062028: .4byte 0x0203FA64

    .thumb
sub_806202C: @ 0x0806202C
	push {r4, lr}
	bl sub_8009DAC
	ldr r1, _08062054
	str r0, [r1]
	ldr r4, _08062058
	bl sub_8009DAC
	strb r0, [r4]
	bl sub_8009DAC
	ldr r1, _0806205C
	str r0, [r1]
	ldr r4, _08062060
	bl sub_8009DAC
	str r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08062054: .4byte 0x0203FA64
_08062058: .4byte 0x0203FA58
_0806205C: .4byte 0x0203FA60
_08062060: .4byte 0x0203FA5C

    .thumb
    .global sub_8062064
sub_8062064: @ 0x08062064
	push {r4, r5, lr}
	adds r4, r0, #0
	cmp r1, #1
	beq _08062072
	cmp r1, #2
	beq _08062078
	b _0806207E
_08062072:
	bl sub_8061FF4
	b _0806207E
_08062078:
	bl sub_806202C
	b _080620AE
_0806207E:
	ldr r5, _080620B4
	ldr r0, [r5]
	cmp r0, #0
	beq _08062090
	movs r1, #2
	bl Free
	movs r0, #0
	str r0, [r5]
_08062090:
	cmp r4, #0
	beq _080620A4
	lsls r0, r4, #1
	adds r0, r0, r4
	lsls r0, r0, #4
	movs r1, #0xc
	movs r2, #2
	bl Alloc
	str r0, [r5]
_080620A4:
	ldr r0, _080620B8
	movs r1, #0
	str r1, [r0]
	ldr r0, _080620BC
	str r4, [r0]
_080620AE:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080620B4: .4byte 0x0203FA5C
_080620B8: .4byte 0x0203FA60
_080620BC: .4byte 0x0203FA64

    .thumb
sub_80620C0: @ 0x080620C0
	push {r4, r5, r6, lr}
	sub sp, #0xc
	ldr r5, [r0]
	movs r6, #0
	ldr r0, [r5, #0x4c]
	asrs r0, r0, #1
	str r0, [sp]
	ldr r0, [r5, #0x50]
	str r0, [sp, #4]
	ldr r0, [r5, #0x54]
	asrs r0, r0, #1
	str r0, [sp, #8]
	adds r0, r5, #0
	adds r0, #0x94
	ldr r1, _08062124
	ldrh r3, [r1]
	mov r1, sp
	movs r2, #0
	bl sub_8003A74
	cmp r0, #0
	beq _08062134
	ldrh r1, [r5, #0x1e]
	ldr r4, _08062128
	ldr r0, [r4]
	adds r0, r0, r1
	ldrb r0, [r0]
	ldr r3, _0806212C
	ldr r1, [r3]
	movs r2, #0xd8
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0xb3
	strb r6, [r0]
	ldrh r1, [r5, #0x1e]
	ldr r0, [r4]
	adds r0, r0, r1
	ldrb r0, [r0]
	ldr r1, [r3]
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x48
	movs r1, #1
	strb r1, [r0]
	ldr r1, _08062130
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	movs r6, #1
	b _0806214E
	.align 2, 0
_08062124: .4byte gMapPixelSizeY
_08062128: .4byte 0x0203DFC0
_0806212C: .4byte 0x0203DFBC
_08062130: .4byte 0x0203DFE5
_08062134:
	ldrh r1, [r5, #0x1e]
	ldr r0, _080621AC
	ldr r0, [r0]
	adds r0, r0, r1
	ldrb r2, [r0]
	ldr r0, _080621B0
	ldr r1, [r0]
	movs r0, #0xd8
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0xb3
	movs r1, #1
	strb r1, [r0]
_0806214E:
	adds r0, r5, #0
	adds r0, #0x94
	ldrb r1, [r5, #9]
	rsbs r1, r1, #0
	ldr r2, _080621B4
	ldrh r2, [r2]
	bl sub_8003A7C
	cmp r0, #0
	beq _080621BC
	adds r0, r5, #0
	adds r0, #0x2f
	ldrb r3, [r0]
	cmp r3, #0
	bne _08062184
	ldrh r1, [r5, #0x1e]
	ldr r0, _080621AC
	ldr r0, [r0]
	adds r0, r0, r1
	ldrb r2, [r0]
	ldr r0, _080621B0
	ldr r1, [r0]
	movs r0, #0xd8
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0xcf
	strb r3, [r0]
_08062184:
	cmp r6, #0
	bne _080621FC
	ldrh r1, [r5, #0x1e]
	ldr r0, _080621AC
	ldr r0, [r0]
	adds r0, r0, r1
	ldrb r2, [r0]
	ldr r0, _080621B0
	ldr r1, [r0]
	movs r0, #0xd8
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x48
	movs r1, #1
	strb r1, [r0]
	ldr r1, _080621B8
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	b _080621FC
	.align 2, 0
_080621AC: .4byte 0x0203DFC0
_080621B0: .4byte 0x0203DFBC
_080621B4: .4byte gMapPixelSizeY
_080621B8: .4byte 0x0203DFE5
_080621BC:
	adds r0, r5, #0
	adds r0, #0x2f
	ldrb r0, [r0]
	cmp r0, #0
	bne _080621E0
	ldrh r1, [r5, #0x1e]
	ldr r0, _08062204
	ldr r0, [r0]
	adds r0, r0, r1
	ldrb r2, [r0]
	ldr r0, _08062208
	ldr r1, [r0]
	movs r0, #0xd8
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0xcf
	movs r1, #1
	strb r1, [r0]
_080621E0:
	cmp r6, #0
	bne _080621FC
	ldrh r1, [r5, #0x1e]
	ldr r0, _08062204
	ldr r0, [r0]
	adds r0, r0, r1
	ldrb r2, [r0]
	ldr r0, _08062208
	ldr r1, [r0]
	movs r0, #0xd8
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x48
	strb r6, [r0]
_080621FC:
	add sp, #0xc
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08062204: .4byte 0x0203DFC0
_08062208: .4byte 0x0203DFBC

    .thumb
    .global sub_0806220C
sub_0806220C: @ 0x0806220C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x2c
	adds r7, r0, #0
	adds r6, r1, #0
	adds r1, r2, #0
	ldr r5, _080623E8
	ldr r0, [r5]
	lsls r4, r6, #1
	adds r4, r4, r6
	lsls r4, r4, #4
	adds r0, r4, r0
	str r7, [r0]
	str r1, [r0, #4]
	movs r0, #0
	bl sub_800385C
	ldr r0, [r5]
	adds r0, r4, r0
	ldr r0, [r0, #4]
	ldr r2, _080623EC
	ldr r1, _080623F0
	mov r8, r1
	ldrb r1, [r1, #0xe]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl sub_800389C
	ldr r0, [r5]
	adds r4, r4, r0
	ldr r0, [r4, #4]
	ldr r2, _080623F4
	ldr r1, _080623F8
	ldrb r1, [r1, #2]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl sub_8003894
	ldrb r0, [r7, #0xc]
	cmp r0, #0xff
	bne _0806226C
	.2byte 0xEE00, 0xEE00
_0806226C:
	adds r3, r7, #0
	adds r3, #0x94
	movs r2, #2
	ldrsh r4, [r3, r2]
	mov r0, r8
	ldr r2, [r0, #0x48]
	ldrb r1, [r7, #0xc]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r2, r2, r0
	movs r1, #4
	ldrsh r0, [r2, r1]
	mov sl, r3
	movs r3, #0x98
	adds r3, r3, r7
	mov r8, r3
	movs r1, #0x9c
	adds r1, r1, r7
	mov sb, r1
	cmp r4, r0
	bne _080622BA
	ldr r3, [r3]
	asrs r1, r3, #0x10
	movs r4, #6
	ldrsh r0, [r2, r4]
	cmp r1, r0
	bne _080622BA
	ldr r0, _080623FC
	ldrh r1, [r0]
	mov r4, sb
	ldr r0, [r4]
	adds r0, r0, r3
	asrs r0, r0, #0x10
	subs r1, r1, r0
	movs r3, #8
	ldrsh r0, [r2, r3]
	cmp r1, r0
	beq _080622BE
_080622BA:
	.2byte 0xEE00, 0xEE00
_080622BE:
	ldr r5, _080623E8
	ldr r1, [r5]
	lsls r4, r6, #1
	adds r4, r4, r6
	lsls r4, r4, #4
	adds r1, r4, r1
	mov r2, sl
	ldr r0, [r2]
	str r0, [r1, #0x14]
	mov r3, r8
	ldr r0, [r3]
	str r0, [r1, #0x18]
	mov r2, sb
	ldr r0, [r2]
	str r0, [r1, #0x1c]
	ldrb r0, [r7, #0xc]
	adds r1, #0x22
	movs r6, #0
	strb r0, [r1]
	ldr r0, [r5]
	adds r0, r0, r4
	bl sub_08062518
	ldr r0, [r5]
	adds r4, r4, r0
	ldrb r0, [r7, #9]
	lsls r0, r0, #0x10
	str r0, [r4, #0x2c]
	adds r4, #0x26
	strb r6, [r4]
	ldr r1, _08062400
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r1, _08062404
	ldr r1, [r1]
	cmp r0, r1
	ble _0806230E
	.2byte 0xEE00, 0xEE00
_0806230E:
	ldrh r1, [r7, #2]
	ldr r0, _08062408
	movs r3, #0
	ldrsh r0, [r0, r3]
	subs r1, r1, r0
	str r1, [sp, #0x28]
	ldrh r1, [r7, #4]
	ldr r0, _0806240C
	movs r4, #0
	ldrsh r0, [r0, r4]
	subs r5, r1, r0
	adds r4, r7, #0
	adds r4, #0xbc
	movs r6, #1
	str r6, [sp]
	ldr r0, [sp, #0x28]
	str r0, [sp, #4]
	str r5, [sp, #8]
	movs r0, #2
	str r0, [sp, #0xc]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl SetSprite
	add r2, sp, #0x1c
	mov r1, sl
	ldr r0, [r1]
	str r0, [sp, #0x1c]
	ldrb r1, [r7, #9]
	lsls r1, r1, #0x10
	mov r3, r8
	ldr r0, [r3]
	subs r0, r0, r1
	str r0, [r2, #4]
	mov r1, sb
	ldr r0, [r1]
	str r0, [r2, #8]
	ldr r0, _080623FC
	ldrh r2, [r0]
	mov r0, sl
	movs r1, #0
	bl sub_8003A7C
	cmp r0, #0
	beq _08062376
	adds r0, r7, #0
	adds r0, #0x2f
	ldrb r0, [r0]
	cmp r0, #0
	beq _0806237C
_08062376:
	adds r0, r7, #0
	adds r0, #0xcf
	strb r6, [r0]
_0806237C:
	ldrb r0, [r7, #9]
	subs r5, r5, r0
	adds r6, r7, #0
	adds r6, #0xa0
	ldrh r1, [r7]
	ldr r2, _08062410
	adds r1, r1, r2
	movs r0, #0
	str r0, [sp]
	ldr r3, [sp, #0x28]
	str r3, [sp, #4]
	str r5, [sp, #8]
	movs r0, #2
	str r0, [sp, #0xc]
	adds r0, r6, #0
	movs r2, #0
	movs r3, #0
	bl SetSprite
	ldr r0, [r7, #0x4c]
	asrs r0, r0, #1
	str r0, [sp, #0x10]
	ldr r0, [r7, #0x50]
	str r0, [sp, #0x14]
	ldr r0, [r7, #0x54]
	asrs r0, r0, #1
	str r0, [sp, #0x18]
	ldr r0, _080623FC
	ldrh r3, [r0]
	mov r0, sl
	add r1, sp, #0x10
	movs r2, #0
	bl sub_8003A74
	cmp r0, #0
	bne _080623CC
	adds r1, r7, #0
	adds r1, #0xb3
	movs r0, #1
	strb r0, [r1]
_080623CC:
	ldrb r1, [r7, #8]
	adds r0, r6, #0
	bl SetSpritePriority
	adds r2, r4, #0
	ldrb r3, [r7, #9]
	ldr r0, _08062414
	ldr r0, [r0]
	cmp r3, r0
	blt _0806241C
	ldr r1, _08062418
	subs r0, #1
	adds r0, r0, r1
	b _08062420
	.align 2, 0
_080623E8: .4byte 0x0203FA5C
_080623EC: .4byte 0x080CC844
_080623F0: .4byte gRoomHeader
_080623F4: .4byte 0x080CC818
_080623F8: .4byte 0x030028FC
_080623FC: .4byte gMapPixelSizeY
_08062400: .4byte 0x0203FA60
_08062404: .4byte 0x0203FA64
_08062408: .4byte gCameraPixelX
_0806240C: .4byte gCameraPixelY
_08062410: .4byte 0x00000221
_08062414: .4byte 0x080CEBC4
_08062418: .4byte 0x080CEB84
_0806241C:
	ldr r0, _08062440
	adds r0, r3, r0
_08062420:
	ldrb r1, [r0]
	adds r0, r2, #0
	bl sub_80037F4
	adds r0, r4, #0
	bl sub_8003794
	add sp, #0x2c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08062440: .4byte 0x080CEB84

    .thumb
	.global sub_8062444
sub_8062444: @ 0x08062444
	push {r4, r5, lr}
	ldr r5, _08062480
	lsls r4, r0, #1
	adds r4, r4, r0
	lsls r4, r4, #4
	ldr r5, [r5]
	adds r5, r5, r4
	ldr r0, [r5]
	mov ip, r0
	adds r0, #0x94
	ldr r0, [r0]
	ldr r4, [r5, #0x14]
	subs r0, r0, r4
	str r0, [r1]
	mov r0, ip
	adds r0, #0x98
	ldr r0, [r0]
	ldr r1, [r5, #0x18]
	subs r0, r0, r1
	str r0, [r2]
	mov r0, ip
	adds r0, #0x9c
	ldr r0, [r0]
	ldr r1, [r5, #0x1c]
	subs r0, r0, r1
	str r0, [r3]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08062480: .4byte 0x0203FA5C

    .thumb
    .global sub_8062484
sub_8062484: @ 0x08062484
	push {r4, r5, r6, lr}
	ldr r1, _08062508
	movs r0, #0
	strb r0, [r1]
	movs r6, #0
	ldr r0, _0806250C
	ldr r0, [r0]
	cmp r6, r0
	bge _08062500
	ldr r5, _08062510
	movs r4, #0
_0806249A:
	ldr r0, [r5]
	adds r1, r4, r0
	ldr r0, [r1]
	adds r0, #0x2e
	ldrb r0, [r0]
	cmp r0, #0
	beq _080624F4
	adds r0, r1, #0
	bl sub_80620C0
	ldr r0, [r5]
	adds r1, r4, r0
	adds r0, r1, #0
	adds r0, #0x26
	ldrb r0, [r0]
	cmp r0, #0
	bne _080624F4
	ldr r0, [r1]
	bl sub_8034310
	cmp r0, #0
	beq _080624F4
	ldr r0, [r5]
	adds r0, r4, r0
	ldr r1, [r0]
	ldrh r0, [r1]
	movs r2, #0x1c
	ldrsh r1, [r1, r2]
	bl sub_80342CC
	cmp r0, #0
	bne _080624F4
	ldr r0, _08062514
	ldrb r0, [r0]
	cmp r0, #0
	bne _080624F4
	ldr r0, [r5]
	adds r0, r4, r0
	ldr r0, [r0, #4]
	bl sub_80038A4
	ldr r0, [r5]
	adds r0, r0, r4
	bl sub_80628A8
_080624F4:
	adds r4, #0x30
	adds r6, #1
	ldr r0, _0806250C
	ldr r0, [r0]
	cmp r6, r0
	blt _0806249A
_08062500:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08062508: .4byte 0x0203DFE5
_0806250C: .4byte 0x0203FA60
_08062510: .4byte 0x0203FA5C
_08062514: .4byte 0x0203FA58

    .thumb
sub_08062518: @ 0x08062518
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r6, r0, #0
	ldr r3, [r6]
	ldr r0, _08062674
	mov sl, r0
	ldr r2, [r0, #0x48]
	adds r4, r6, #0
	adds r4, #0x22
	ldrb r1, [r4]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r2, r2, r0
	ldrb r0, [r2, #0x13]
	strb r0, [r3, #8]
	mov r1, sl
	ldr r3, [r1, #0x48]
	ldrb r1, [r4]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r3, r0
	ldrb r0, [r0, #0x14]
	adds r1, r6, #0
	adds r1, #0x27
	strb r0, [r1]
	ldrb r1, [r4]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r3, r0
	ldrh r0, [r0, #0x16]
	strh r0, [r6, #0x28]
	ldrb r0, [r4]
	movs r1, #0x23
	adds r1, r1, r6
	mov sb, r1
	strb r0, [r1]
	ldrb r1, [r4]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r3, r0
	ldrb r0, [r0, #0x11]
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _08062586
	.2byte 0xEE00, 0xEE00
_08062586:
	ldrb r1, [r4]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r3, r0
	movs r1, #4
	ldrsh r0, [r0, r1]
	lsls r0, r0, #0x10
	str r0, [r6, #8]
	ldrb r1, [r4]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r3, r0
	movs r1, #6
	ldrsh r0, [r0, r1]
	lsls r0, r0, #0x10
	str r0, [r6, #0xc]
	ldr r0, _08062678
	ldrh r2, [r0]
	ldrb r1, [r4]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r3, r0
	movs r4, #8
	ldrsh r1, [r0, r4]
	movs r4, #6
	ldrsh r0, [r0, r4]
	adds r1, r1, r0
	subs r2, r2, r1
	lsls r2, r2, #0x10
	str r2, [r6, #0x10]
	mov r0, sb
	ldrb r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r3, r0
	ldrh r0, [r0, #0xa]
	strh r0, [r6, #0x20]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080625F8
	ldr r1, [r6]
	adds r0, r1, #0
	adds r0, #0x94
	ldr r0, [r0]
	str r0, [r6, #0x14]
	adds r0, r1, #0
	adds r0, #0x98
	ldr r0, [r0]
	str r0, [r6, #0x18]
	adds r0, r1, #0
	adds r0, #0x9c
	ldr r0, [r0]
	str r0, [r6, #0x1c]
_080625F8:
	movs r1, #0xe
	ldrsh r3, [r6, r1]
	mov r4, sl
	ldr r2, [r4, #0x48]
	mov r0, sb
	ldrb r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r2, r2, r0
	movs r1, #6
	ldrsh r0, [r2, r1]
	cmp r3, r0
	bne _080626B6
	ldr r0, [r6, #4]
	bl sub_800387C
	ldr r1, [r6]
	adds r0, r1, #0
	adds r0, #0x94
	ldr r2, [r6, #8]
	ldr r0, [r0]
	subs r2, r2, r0
	mov r8, r2
	adds r1, #0x9c
	ldr r2, [r6, #0x10]
	ldr r0, [r1]
	subs r7, r2, r0
	mov r0, r8
	bl Abs
	adds r4, r0, #0
	adds r0, r7, #0
	bl Abs
	cmp r4, r0
	bls _0806267C
	ldr r5, [r6, #4]
	mov r4, sl
	ldr r1, [r4, #0x48]
	mov r0, sb
	ldrb r2, [r0]
	lsls r0, r2, #2
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r1, #0xc
	adds r1, r1, r0
	ldr r4, [r1]
	adds r0, r7, #0
	mov r1, r8
	bl sub_80039AC
	adds r2, r0, #0
	adds r0, r5, #0
	adds r1, r4, #0
	movs r3, #0
	bl sub_8003884
	adds r1, r6, #0
	adds r1, #0x25
	movs r0, #0
	b _080626AC
	.align 2, 0
_08062674: .4byte gRoomHeader
_08062678: .4byte gMapPixelSizeY
_0806267C:
	ldr r5, [r6, #4]
	mov r4, sl
	ldr r1, [r4, #0x48]
	mov r0, sb
	ldrb r2, [r0]
	lsls r0, r2, #2
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r1, #0xc
	adds r1, r1, r0
	ldr r4, [r1]
	mov r0, r8
	adds r1, r7, #0
	bl sub_80039B4
	adds r2, r0, #0
	adds r0, r5, #0
	adds r1, r4, #0
	movs r3, #0
	bl sub_8003884
	adds r1, r6, #0
	adds r1, #0x25
	movs r0, #2
_080626AC:
	strb r0, [r1]
	adds r1, r6, #0
	adds r1, #0x24
	movs r0, #0
	b _08062708
_080626B6:
	ldr r0, [r6, #4]
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_8003884
	movs r1, #0xe
	ldrsh r2, [r6, r1]
	mov r0, sl
	ldr r4, [r0, #0x48]
	mov r0, sb
	ldrb r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r3, r0, #2
	adds r0, r4, r3
	movs r1, #6
	ldrsh r0, [r0, r1]
	cmp r2, r0
	ble _080626F0
	ldr r0, [r6, #4]
	adds r1, r4, #0
	adds r1, #0xc
	adds r1, r1, r3
	ldr r1, [r1]
	movs r2, #0
	bl CallARM_store_jump_and_other_value
	b _08062702
_080626F0:
	ldr r0, [r6, #4]
	adds r1, r4, #0
	adds r1, #0xc
	adds r1, r1, r3
	ldr r1, [r1]
	rsbs r1, r1, #0
	movs r2, #0
	bl CallARM_store_jump_and_other_value
_08062702:
	adds r1, r6, #0
	adds r1, #0x24
	movs r0, #1
_08062708:
	strb r0, [r1]
	ldr r0, _08062738
	ldr r2, [r0, #0x48]
	adds r0, r6, #0
	adds r0, #0x23
	ldrb r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r2, r2, r0
	ldrb r0, [r2, #0x10]
	cmp r0, #0
	bne _0806272A
	adds r1, r6, #0
	adds r1, #0x26
	movs r0, #1
	strb r0, [r1]
_0806272A:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08062738: .4byte gRoomHeader

    .thumb
sub_806273C: @ 0x0806273C
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	mov ip, r0
	ldr r3, [r0, #0x4c]
	asrs r3, r3, #1
	ldr r5, [r1]
	subs r4, r5, r3
	ldr r6, _080628A4
	ldrh r2, [r0]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #3
	adds r0, r0, r6
	movs r2, #0
	ldrsh r0, [r0, r2]
	lsls r0, r0, #0x10
	adds r4, r4, r0
	mov r0, ip
	str r4, [r0, #0x64]
	adds r3, r5, r3
	ldrh r2, [r0]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #3
	adds r0, r0, r6
	movs r2, #0
	ldrsh r0, [r0, r2]
	lsls r0, r0, #0x10
	adds r3, r3, r0
	mov r0, ip
	str r3, [r0, #0x70]
	ldr r4, [r1, #4]
	ldr r3, [r0, #0x50]
	adds r3, r4, r3
	ldrh r2, [r0]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #3
	adds r0, r0, r6
	movs r2, #2
	ldrsh r0, [r0, r2]
	lsls r0, r0, #0x10
	adds r3, r3, r0
	mov r0, ip
	str r3, [r0, #0x74]
	ldrh r2, [r0]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #3
	adds r0, r0, r6
	movs r2, #2
	ldrsh r0, [r0, r2]
	lsls r0, r0, #0x10
	adds r0, r4, r0
	mov r2, ip
	str r0, [r2, #0x68]
	ldr r2, [r2, #0x54]
	asrs r2, r2, #1
	ldr r1, [r1, #8]
	mov r8, r1
	subs r3, r1, r2
	mov r0, ip
	ldrh r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r6
	movs r1, #4
	ldrsh r0, [r0, r1]
	lsls r0, r0, #0x10
	adds r3, r3, r0
	mov r0, ip
	str r3, [r0, #0x6c]
	add r2, r8
	ldrh r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r6
	movs r1, #4
	ldrsh r0, [r0, r1]
	lsls r0, r0, #0x10
	adds r2, r2, r0
	mov r0, ip
	str r2, [r0, #0x78]
	ldr r3, [r0, #0x58]
	asrs r3, r3, #1
	subs r2, r5, r3
	ldrh r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r6
	movs r1, #6
	ldrsh r0, [r0, r1]
	lsls r0, r0, #0x10
	adds r2, r2, r0
	mov r0, ip
	str r2, [r0, #0x7c]
	mov r2, ip
	adds r2, #0x88
	adds r5, r5, r3
	ldrh r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r6
	movs r1, #6
	ldrsh r0, [r0, r1]
	lsls r0, r0, #0x10
	adds r5, r5, r0
	str r5, [r2]
	subs r2, #8
	mov r0, ip
	ldrh r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r6
	movs r1, #8
	ldrsh r0, [r0, r1]
	lsls r0, r0, #0x10
	adds r0, r4, r0
	str r0, [r2]
	adds r2, #0xc
	mov r1, ip
	ldr r0, [r1, #0x5c]
	adds r4, r4, r0
	ldrh r1, [r1]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r6
	movs r1, #8
	ldrsh r0, [r0, r1]
	lsls r0, r0, #0x10
	adds r4, r4, r0
	str r4, [r2]
	mov r3, ip
	adds r3, #0x90
	mov r2, ip
	ldr r1, [r2, #0x60]
	asrs r1, r1, #1
	add r1, r8
	ldrh r2, [r2]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #3
	adds r0, r0, r6
	movs r2, #0xa
	ldrsh r0, [r0, r2]
	lsls r0, r0, #0x10
	adds r1, r1, r0
	str r1, [r3]
	mov r2, ip
	adds r2, #0x84
	mov r1, ip
	ldr r0, [r1, #0x60]
	asrs r0, r0, #1
	mov r1, r8
	subs r1, r1, r0
	mov r8, r1
	mov r0, ip
	ldrh r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r6
	movs r1, #0xa
	ldrsh r0, [r0, r1]
	lsls r0, r0, #0x10
	add r8, r0
	mov r0, r8
	str r0, [r2]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080628A4: .4byte 0x080CCFFC

    .thumb
sub_80628A8: @ 0x080628A8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0xc
	adds r5, r0, #0
	ldr r7, [r5]
	adds r6, r7, #0
	adds r6, #0x94
	ldrh r0, [r5, #0x20]
	cmp r0, #0
	beq _080628C4
	subs r0, #1
	strh r0, [r5, #0x20]
	b _080629D6
_080628C4:
	ldr r0, [r6]
	str r0, [r5, #0x14]
	ldr r0, [r6, #4]
	str r0, [r5, #0x18]
	ldr r0, [r6, #8]
	str r0, [r5, #0x1c]
	ldr r0, [r5, #4]
	add r2, sp, #4
	add r3, sp, #8
	mov r1, sp
	bl sub_80038C4
	ldr r0, [r6]
	ldr r1, [sp]
	adds r0, r0, r1
	str r0, [r6]
	ldr r0, [r5, #0x2c]
	ldr r1, [sp, #4]
	adds r0, r0, r1
	str r0, [r5, #0x2c]
	lsrs r0, r0, #0x10
	strb r0, [r7, #9]
	ldr r0, [r6, #4]
	ldr r1, [sp, #4]
	adds r0, r0, r1
	str r0, [r6, #4]
	ldr r0, [r6, #8]
	ldr r1, [sp, #8]
	adds r0, r0, r1
	str r0, [r6, #8]
	movs r1, #2
	ldrsh r0, [r6, r1]
	strh r0, [r7, #2]
	ldr r2, _08062930
	ldr r1, [r6, #8]
	ldr r0, [r6, #4]
	adds r1, r1, r0
	asrs r1, r1, #0x10
	ldrh r0, [r2]
	subs r0, r0, r1
	ldrb r1, [r7, #9]
	adds r0, r0, r1
	strh r0, [r7, #4]
	adds r2, r7, #0
	adds r2, #0xbc
	ldrb r1, [r7, #9]
	ldr r0, _08062934
	ldr r0, [r0]
	cmp r1, r0
	blt _0806293C
	ldr r1, _08062938
	subs r0, #1
	adds r0, r0, r1
	b _08062940
	.align 2, 0
_08062930: .4byte gMapPixelSizeY
_08062934: .4byte 0x080CEBC4
_08062938: .4byte 0x080CEB84
_0806293C:
	ldr r0, _080629E4
	adds r0, r1, r0
_08062940:
	ldrb r1, [r0]
	adds r0, r2, #0
	bl sub_80037F4
	movs r0, #0x24
	adds r0, r0, r5
	mov r8, r0
	ldrb r0, [r0]
	cmp r0, #0
	beq _08062972
	ldr r0, [r6, #4]
	ldr r1, [r5, #0xc]
	subs r0, r0, r1
	bl Abs
	adds r4, r0, #0
	ldr r0, [sp, #4]
	bl Abs
	cmp r4, r0
	blo _080629B2
	mov r1, r8
	ldrb r0, [r1]
	cmp r0, #0
	bne _080629CE
_08062972:
	movs r0, #0x25
	adds r0, r0, r5
	mov r8, r0
	ldrb r0, [r0]
	cmp r0, #0
	bne _08062994
	ldr r0, [r6]
	ldr r1, [r5, #8]
	subs r0, r0, r1
	bl Abs
	adds r4, r0, #0
	ldr r0, [sp]
	bl Abs
	cmp r4, r0
	blo _080629B2
_08062994:
	mov r1, r8
	ldrb r0, [r1]
	cmp r0, #2
	bne _080629CE
	ldr r0, [r6, #8]
	ldr r1, [r5, #0x10]
	subs r0, r0, r1
	bl Abs
	adds r4, r0, #0
	ldr r0, [sp, #8]
	bl Abs
	cmp r4, r0
	bhs _080629CE
_080629B2:
	ldr r0, [r5, #8]
	str r0, [r6]
	ldr r0, [r5, #0xc]
	str r0, [r6, #4]
	ldr r0, [r5, #0x10]
	str r0, [r6, #8]
	ldrh r1, [r7, #6]
	lsls r1, r1, #0x10
	ldr r0, [r5, #0xc]
	subs r0, r0, r1
	str r0, [r5, #0x2c]
	adds r0, r5, #0
	bl sub_08062518
_080629CE:
	adds r0, r7, #0
	adds r1, r6, #0
	bl sub_806273C
_080629D6:
	add sp, #0xc
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080629E4: .4byte 0x080CEB84
