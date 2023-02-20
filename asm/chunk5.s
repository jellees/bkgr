
    .syntax unified

    .text

	.thumb
	.global sub_8011540
sub_8011540: @ 0x08011540
	push {r4, r5, lr}
	ldr r0, _0801155C
	ldrb r0, [r0]
	subs r0, #0xc
	cmp r0, #0xf
	bls _08011550
	bl _080120D4
_08011550:
	lsls r0, r0, #2
	ldr r1, _08011560
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0801155C: .4byte gMenuId
_08011560: .4byte 0x08011564
_08011564: @ jump table
	.4byte _080115A4 @ case 0
	.4byte _08011672 @ case 1
	.4byte _080117AC @ case 2
	.4byte _08011964 @ case 3
	.4byte _080119EC @ case 4
	.4byte _08011AAC @ case 5
	.4byte _08011A84 @ case 6
	.4byte _08011AD4 @ case 7
	.4byte _08011B80 @ case 8
	.4byte _080120D4 @ case 9
	.4byte _08011BCA @ case 10
	.4byte _08011C98 @ case 11
	.4byte _08011D68 @ case 12
	.4byte _08011E4C @ case 13
	.4byte _08011F1C @ case 14
	.4byte _08011FFC @ case 15
_080115A4:
	bl GetCurrentMenuEntry
	cmp r0, #6
	bls _080115B0
	bl _080120D4
_080115B0:
	lsls r0, r0, #2
	ldr r1, _080115BC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080115BC: .4byte 0x080115C0
_080115C0: @ jump table
	.4byte _080115DC @ case 0
	.4byte _080115F8 @ case 1
	.4byte _08011614 @ case 2
	.4byte _08011630 @ case 3
	.4byte _0801164C @ case 4
	.4byte _080120D4 @ case 5
	.4byte _08011668 @ case 6
_080115DC:
	ldr r2, _080115F0
	ldr r1, _080115F4
	ldrb r0, [r1]
	strb r0, [r2]
	movs r0, #0x16
	strb r0, [r1]
	movs r0, #0x16
	bl _08011FEA
	.align 2, 0
_080115F0: .4byte gMenuParentId
_080115F4: .4byte gMenuId
_080115F8:
	ldr r0, _0801160C
	ldrb r0, [r0]
	cmp r0, #0
	bne _08011604
	bl _080120D4
_08011604:
	ldr r1, _08011610
	movs r0, #1
	bl sub_8012090
	.align 2, 0
_0801160C: .4byte 0x02001442
_08011610: .4byte 0x02001441
_08011614:
	ldr r2, _08011628
	ldr r1, _0801162C
	ldrb r0, [r1]
	strb r0, [r2]
	movs r0, #0xd
	strb r0, [r1]
	movs r0, #0xd
	bl _08011FEA
	.align 2, 0
_08011628: .4byte gMenuParentId
_0801162C: .4byte gMenuId
_08011630:
	ldr r2, _08011644
	ldr r1, _08011648
	ldrb r0, [r1]
	strb r0, [r2]
	movs r0, #0x13
	strb r0, [r1]
	movs r0, #0x13
	bl _08011FEA
	.align 2, 0
_08011644: .4byte gMenuParentId
_08011648: .4byte gMenuId
_0801164C:
	ldr r2, _08011660
	ldr r1, _08011664
	ldrb r0, [r1]
	strb r0, [r2]
	movs r0, #0x14
	strb r0, [r1]
	movs r0, #0x14
	bl _08011FEA
	.align 2, 0
_08011660: .4byte gMenuParentId
_08011664: .4byte gMenuId
_08011668:
	bl sub_8060FF8
	movs r0, #1
	bl sub_80120D6
_08011672:
	bl GetCurrentMenuEntry
	cmp r0, #5
	bls _0801167E
	bl _080120D4
_0801167E:
	lsls r0, r0, #2
	ldr r1, _08011688
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08011688: .4byte 0x0801168C
_0801168C: @ jump table
	.4byte _080116A4 @ case 0
	.4byte _080116B0 @ case 1
	.4byte _080116E8 @ case 2
	.4byte _08011720 @ case 3
	.4byte _08011758 @ case 4
	.4byte _08011790 @ case 5
_080116A4:
	ldr r1, _080116AC
	bl sub_801208E
	.align 2, 0
_080116AC: .4byte 0x02001388
_080116B0:
	ldr r1, _080116D0
	movs r0, #1
	strb r0, [r1]
	ldr r0, _080116D4
	movs r2, #0
	str r2, [r0]
	ldr r0, _080116D8
	str r2, [r0]
	ldr r0, _080116DC
	movs r1, #1
	str r1, [r0]
	ldr r0, _080116E0
	str r1, [r0]
	ldr r0, _080116E4
	bl sub_8011ECA
	.align 2, 0
_080116D0: .4byte 0x02001388
_080116D4: .4byte 0x02001394
_080116D8: .4byte 0x02001398
_080116DC: .4byte 0x0200138C
_080116E0: .4byte 0x02001390
_080116E4: .4byte 0x0200138A
_080116E8:
	ldr r1, _08011708
	movs r0, #2
	strb r0, [r1]
	ldr r0, _0801170C
	movs r2, #0
	str r2, [r0]
	ldr r0, _08011710
	str r2, [r0]
	ldr r0, _08011714
	movs r1, #1
	str r1, [r0]
	ldr r0, _08011718
	str r1, [r0]
	ldr r0, _0801171C
	bl sub_8011ECA
	.align 2, 0
_08011708: .4byte 0x02001388
_0801170C: .4byte 0x02001394
_08011710: .4byte 0x02001398
_08011714: .4byte 0x0200138C
_08011718: .4byte 0x02001390
_0801171C: .4byte 0x0200138A
_08011720:
	ldr r1, _08011740
	movs r0, #3
	strb r0, [r1]
	ldr r0, _08011744
	movs r2, #0
	str r2, [r0]
	ldr r0, _08011748
	str r2, [r0]
	ldr r0, _0801174C
	movs r1, #1
	str r1, [r0]
	ldr r0, _08011750
	str r1, [r0]
	ldr r0, _08011754
	bl sub_8011ECA
	.align 2, 0
_08011740: .4byte 0x02001388
_08011744: .4byte 0x02001394
_08011748: .4byte 0x02001398
_0801174C: .4byte 0x0200138C
_08011750: .4byte 0x02001390
_08011754: .4byte 0x0200138A
_08011758:
	ldr r1, _08011778
	movs r0, #4
	strb r0, [r1]
	ldr r0, _0801177C
	movs r2, #0
	str r2, [r0]
	ldr r0, _08011780
	str r2, [r0]
	ldr r0, _08011784
	movs r1, #1
	str r1, [r0]
	ldr r0, _08011788
	str r1, [r0]
	ldr r0, _0801178C
	bl sub_8011ECA
	.align 2, 0
_08011778: .4byte 0x02001388
_0801177C: .4byte 0x02001394
_08011780: .4byte 0x02001398
_08011784: .4byte 0x0200138C
_08011788: .4byte 0x02001390
_0801178C: .4byte 0x0200138A
_08011790:
	ldr r2, _080117A4
	ldr r1, _080117A8
	ldrb r0, [r1]
	strb r0, [r2]
	movs r0, #0xe
	strb r0, [r1]
	movs r0, #0xe
	bl _08011FEA
	.align 2, 0
_080117A4: .4byte gMenuParentId
_080117A8: .4byte gMenuId
_080117AC:
	bl GetCurrentMenuEntry
	cmp r0, #5
	bls _080117B8
	bl _080120D4
_080117B8:
	lsls r0, r0, #2
	ldr r1, _080117C4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080117C4: .4byte 0x080117C8
_080117C8: @ jump table
	.4byte _080117E0 @ case 0
	.4byte _08011820 @ case 1
	.4byte _08011880 @ case 2
	.4byte _080118E0 @ case 3
	.4byte _08011940 @ case 4
	.4byte _0801194C @ case 5
_080117E0:
	ldr r1, _08011804
	movs r0, #5
	strb r0, [r1]
	ldr r0, _08011808
	movs r2, #0
	str r2, [r0]
	ldr r0, _0801180C
	str r2, [r0]
	ldr r0, _08011810
	movs r1, #1
	str r1, [r0]
	ldr r0, _08011814
	str r1, [r0]
	ldr r0, _08011818
	strb r2, [r0]
	ldr r0, _0801181C
	b sub_8011ECA
	.align 2, 0
_08011804: .4byte 0x02001388
_08011808: .4byte 0x02001394
_0801180C: .4byte 0x02001398
_08011810: .4byte 0x0200138C
_08011814: .4byte 0x02001390
_08011818: .4byte 0x02001389
_0801181C: .4byte 0x0200138A
_08011820:
	ldr r1, _08011854
	movs r0, #6
	strb r0, [r1]
	ldr r0, _08011858
	movs r2, #0
	str r2, [r0]
	ldr r0, _0801185C
	str r2, [r0]
	ldr r0, _08011860
	str r2, [r0]
	ldr r0, _08011864
	str r2, [r0]
	ldr r0, _08011868
	str r2, [r0]
	ldr r0, _0801186C
	str r2, [r0]
	ldr r0, _08011870
	movs r1, #1
	str r1, [r0]
	ldr r0, _08011874
	str r1, [r0]
	ldr r0, _08011878
	str r1, [r0]
	ldr r0, _0801187C
	b sub_8011ECA
	.align 2, 0
_08011854: .4byte 0x02001388
_08011858: .4byte 0x02001208
_0801185C: .4byte 0x0200120C
_08011860: .4byte 0x02001210
_08011864: .4byte 0x02001250
_08011868: .4byte 0x02001254
_0801186C: .4byte 0x02001258
_08011870: .4byte 0x02001298
_08011874: .4byte 0x0200129C
_08011878: .4byte 0x020012A0
_0801187C: .4byte 0x0200138A
_08011880:
	ldr r1, _080118B4
	movs r0, #7
	strb r0, [r1]
	ldr r0, _080118B8
	movs r2, #0
	str r2, [r0]
	ldr r0, _080118BC
	str r2, [r0]
	ldr r0, _080118C0
	str r2, [r0]
	ldr r0, _080118C4
	str r2, [r0]
	ldr r0, _080118C8
	str r2, [r0]
	ldr r0, _080118CC
	str r2, [r0]
	ldr r0, _080118D0
	movs r1, #1
	str r1, [r0]
	ldr r0, _080118D4
	str r1, [r0]
	ldr r0, _080118D8
	str r1, [r0]
	ldr r0, _080118DC
	b sub_8011ECA
	.align 2, 0
_080118B4: .4byte 0x02001388
_080118B8: .4byte 0x02001208
_080118BC: .4byte 0x0200120C
_080118C0: .4byte 0x02001210
_080118C4: .4byte 0x02001250
_080118C8: .4byte 0x02001254
_080118CC: .4byte 0x02001258
_080118D0: .4byte 0x02001298
_080118D4: .4byte 0x0200129C
_080118D8: .4byte 0x020012A0
_080118DC: .4byte 0x0200138A
_080118E0:
	ldr r1, _08011914
	movs r0, #8
	strb r0, [r1]
	ldr r0, _08011918
	movs r2, #0
	str r2, [r0]
	ldr r0, _0801191C
	str r2, [r0]
	ldr r0, _08011920
	str r2, [r0]
	ldr r0, _08011924
	str r2, [r0]
	ldr r0, _08011928
	str r2, [r0]
	ldr r0, _0801192C
	str r2, [r0]
	ldr r0, _08011930
	movs r1, #1
	str r1, [r0]
	ldr r0, _08011934
	str r1, [r0]
	ldr r0, _08011938
	str r1, [r0]
	ldr r0, _0801193C
	b sub_8011ECA
	.align 2, 0
_08011914: .4byte 0x02001388
_08011918: .4byte 0x02001208
_0801191C: .4byte 0x0200120C
_08011920: .4byte 0x02001210
_08011924: .4byte 0x02001250
_08011928: .4byte 0x02001254
_0801192C: .4byte 0x02001258
_08011930: .4byte 0x02001298
_08011934: .4byte 0x0200129C
_08011938: .4byte 0x020012A0
_0801193C: .4byte 0x0200138A
_08011940:
	ldr r1, _08011948
	movs r0, #9
	b _08011A50
	.align 2, 0
_08011948: .4byte 0x02001388
_0801194C:
	ldr r2, _0801195C
	ldr r1, _08011960
	ldrb r0, [r1]
	strb r0, [r2]
	movs r0, #0xf
	strb r0, [r1]
	movs r0, #0xf
	b _08011FEA
	.align 2, 0
_0801195C: .4byte gMenuParentId
_08011960: .4byte gMenuId
_08011964:
	bl GetCurrentMenuEntry
	cmp r0, #5
	bls _08011970
	bl _080120D4
_08011970:
	lsls r0, r0, #2
	ldr r1, _0801197C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0801197C: .4byte 0x08011980
_08011980: @ jump table
	.4byte _08011998 @ case 0
	.4byte _080119A4 @ case 1
	.4byte _080119B0 @ case 2
	.4byte _080119BC @ case 3
	.4byte _080119C8 @ case 4
	.4byte _080119D4 @ case 5
_08011998:
	ldr r1, _080119A0
	movs r0, #0xa
	b _08011A50
	.align 2, 0
_080119A0: .4byte 0x02001388
_080119A4:
	ldr r1, _080119AC
	movs r0, #0xb
	b _08011A50
	.align 2, 0
_080119AC: .4byte 0x02001388
_080119B0:
	ldr r1, _080119B8
	movs r0, #0xc
	b _08011A50
	.align 2, 0
_080119B8: .4byte 0x02001388
_080119BC:
	ldr r1, _080119C4
	movs r0, #0xd
	b _08011A50
	.align 2, 0
_080119C4: .4byte 0x02001388
_080119C8:
	ldr r1, _080119D0
	movs r0, #0xe
	b _08011A50
	.align 2, 0
_080119D0: .4byte 0x02001388
_080119D4:
	ldr r2, _080119E4
	ldr r1, _080119E8
	ldrb r0, [r1]
	strb r0, [r2]
	movs r0, #0x10
	strb r0, [r1]
	movs r0, #0x10
	b _08011FEA
	.align 2, 0
_080119E4: .4byte gMenuParentId
_080119E8: .4byte gMenuId
_080119EC:
	bl GetCurrentMenuEntry
	cmp r0, #5
	bls _080119F6
	b _080120D4
_080119F6:
	lsls r0, r0, #2
	ldr r1, _08011A00
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08011A00: .4byte 0x08011A04
_08011A04: @ jump table
	.4byte _08011A1C @ case 0
	.4byte _08011A28 @ case 1
	.4byte _08011A34 @ case 2
	.4byte _08011A40 @ case 3
	.4byte _08011A4C @ case 4
	.4byte _080120D4 @ case 5
_08011A1C:
	ldr r1, _08011A24
	movs r0, #0xf
	b _08011A50
	.align 2, 0
_08011A24: .4byte 0x02001388
_08011A28:
	ldr r1, _08011A30
	movs r0, #0x10
	b _08011A50
	.align 2, 0
_08011A30: .4byte 0x02001388
_08011A34:
	ldr r1, _08011A3C
	movs r0, #0x11
	b _08011A50
	.align 2, 0
_08011A3C: .4byte 0x02001388
_08011A40:
	ldr r1, _08011A48
	movs r0, #0x12
	b _08011A50
	.align 2, 0
_08011A48: .4byte 0x02001388
_08011A4C:
	ldr r1, _08011A74
	movs r0, #0x13
_08011A50:
	strb r0, [r1]
	ldr r1, _08011A78
	movs r0, #0
	strb r0, [r1]
	ldr r1, _08011A7C
	movs r0, #0x80
	strh r0, [r1]
	adds r1, #4
	movs r0, #0x84
	strh r0, [r1]
	ldr r0, _08011A80
	movs r1, #0
	strh r1, [r0]
	adds r0, #4
	strh r1, [r0]
	movs r0, #1
	b sub_80120D6
	.align 2, 0
_08011A74: .4byte 0x02001388
_08011A78: .4byte 0x0200138A
_08011A7C: .4byte 0x0400010A
_08011A80: .4byte 0x04000108
_08011A84:
	bl GetCurrentMenuEntry
	cmp r0, #0
	beq _08011A92
	cmp r0, #1
	beq _08011AA0
	b _080120D4
_08011A92:
	ldr r1, _08011A9C
	movs r0, #1
	strb r0, [r1]
	b _080120D4
	.align 2, 0
_08011A9C: .4byte 0x02001370
_08011AA0:
	ldr r1, _08011AA8
	movs r0, #0
	strb r0, [r1]
	b _080120D4
	.align 2, 0
_08011AA8: .4byte 0x02001370
_08011AAC:
	bl GetCurrentMenuEntry
	adds r1, r0, #0
	cmp r1, #1
	beq _08011ACA
	cmp r1, #1
	bgt _08011AC0
	cmp r1, #0
	beq _08011ACA
	b _080120D4
_08011AC0:
	cmp r1, #2
	beq _08011ACA
	cmp r1, #3
	beq _08011ACA
	b _080120D4
_08011ACA:
	ldr r0, _08011AD0
	strb r1, [r0]
	b _080120D4
	.align 2, 0
_08011AD0: .4byte 0x0200143D
_08011AD4:
	bl GetCurrentMenuEntry
	adds r1, r0, #0
	cmp r1, #1
	bne _08011AE0
	b _080120D4
_08011AE0:
	cmp r1, #1
	bgt _08011AEA
	cmp r1, #0
	beq _08011AF4
	b _080120D4
_08011AEA:
	cmp r1, #2
	beq _08011B44
	cmp r1, #3
	beq _08011B78
	b _080120D4
_08011AF4:
	ldr r0, _08011B34
	strb r1, [r0]
	ldr r3, _08011B38
	ldr r1, _08011B3C
	movs r2, #1
	adds r0, r1, #0
	adds r0, #0x16
_08011B02:
	strb r2, [r0]
	subs r0, #1
	cmp r0, r1
	bge _08011B02
	movs r4, #0
	ldrb r0, [r3]
	cmp r4, r0
	bge _08011B24
	adds r5, r3, #0
_08011B14:
	movs r0, #0xdf
	adds r1, r4, #0
	bl sub_80342F8
	adds r4, #1
	ldrb r0, [r5]
	cmp r4, r0
	blt _08011B14
_08011B24:
	ldr r0, _08011B40
	ldr r1, _08011B38
	ldrb r1, [r1]
	strb r1, [r0]
	bl sub_80388E0
	movs r0, #1
	b sub_80120D6
	.align 2, 0
_08011B34: .4byte 0x0200143C
_08011B38: .4byte 0x0200107F
_08011B3C: .4byte 0x0200209A
_08011B40: .4byte 0x0200107E
_08011B44:
	ldr r2, _08011B6C
	ldr r1, _08011B70
	ldrb r0, [r1]
	strb r0, [r2]
	movs r0, #0x12
	strb r0, [r1]
	movs r0, #0x12
	movs r1, #0
	bl InitMenu
	movs r1, #0
	ldr r0, _08011B74
	ldrb r0, [r0]
	cmp r0, #0
	bne _08011B64
	movs r1, #1
_08011B64:
	adds r0, r1, #0
	bl SetMenuEntry
	b _080120D4
	.align 2, 0
_08011B6C: .4byte gMenuParentId
_08011B70: .4byte gMenuId
_08011B74: .4byte 0x02001370
_08011B78:
	bl sub_800FA58
	movs r0, #1
	b sub_80120D6
_08011B80:
	bl GetCurrentMenuEntry
	cmp r0, #5
	bls _08011B8A
	b _080120D4
_08011B8A:
	lsls r0, r0, #2
	ldr r1, _08011B94
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08011B94: .4byte 0x08011B98
_08011B98: @ jump table
	.4byte _08011BB0 @ case 0
	.4byte _08011BB4 @ case 1
	.4byte _08011BB8 @ case 2
	.4byte _08011BBC @ case 3
	.4byte _08011BC0 @ case 4
	.4byte _080120D4 @ case 5
_08011BB0:
	movs r0, #0
	b _08011BC2
_08011BB4:
	movs r0, #1
	b _08011BC2
_08011BB8:
	movs r0, #2
	b _08011BC2
_08011BBC:
	movs r0, #3
	b _08011BC2
_08011BC0:
	movs r0, #4
_08011BC2:
	bl sub_08019FCC
	movs r0, #1
	b sub_80120D6
_08011BCA:
	bl GetCurrentMenuEntry
	cmp r0, #6
	bls _08011BD4
	b _080120D4
_08011BD4:
	lsls r0, r0, #2
	ldr r1, _08011BE0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08011BE0: .4byte 0x08011BE4
_08011BE4: @ jump table
	.4byte _08011C00 @ case 0
	.4byte _08011C20 @ case 1
	.4byte _08011C3C @ case 2
	.4byte _08011C58 @ case 3
	.4byte _08011C6C @ case 4
	.4byte _080120D4 @ case 5
	.4byte _08011C80 @ case 6
_08011C00:
	ldr r1, _08011C14
	movs r0, #1
	strb r0, [r1]
	ldr r0, _08011C18
	movs r1, #0
	strb r1, [r0]
	ldr r0, _08011C1C
	strb r1, [r0]
	movs r0, #1
	b sub_80120D6
	.align 2, 0
_08011C14: .4byte 0x0200143E
_08011C18: .4byte 0x0200143F
_08011C1C: .4byte 0x02001440
_08011C20:
	ldr r0, _08011C30
	movs r1, #1
	strb r1, [r0]
	ldr r0, _08011C34
	strb r1, [r0]
	ldr r1, _08011C38
	movs r0, #3
	b sub_8012090
	.align 2, 0
_08011C30: .4byte 0x0200143E
_08011C34: .4byte 0x0200143F
_08011C38: .4byte 0x02001440
_08011C3C:
	ldr r0, _08011C4C
	movs r1, #1
	strb r1, [r0]
	ldr r0, _08011C50
	strb r1, [r0]
	ldr r1, _08011C54
	movs r0, #2
	b sub_8012090
	.align 2, 0
_08011C4C: .4byte 0x0200143E
_08011C50: .4byte 0x0200143F
_08011C54: .4byte 0x02001440
_08011C58:
	ldr r0, _08011C64
	movs r2, #1
	strb r2, [r0]
	ldr r1, _08011C68
	movs r0, #2
	b _08011EC6
	.align 2, 0
_08011C64: .4byte 0x0200143E
_08011C68: .4byte 0x0200143F
_08011C6C:
	ldr r1, _08011C78
	movs r0, #1
	strb r0, [r1]
	ldr r1, _08011C7C
	movs r0, #0x1d
	b _0801208A
	.align 2, 0
_08011C78: .4byte 0x0200143E
_08011C7C: .4byte 0x0200143F
_08011C80:
	ldr r2, _08011C90
	ldr r1, _08011C94
	ldrb r0, [r1]
	strb r0, [r2]
	movs r0, #0x17
	strb r0, [r1]
	movs r0, #0x17
	b _08011FEA
	.align 2, 0
_08011C90: .4byte gMenuParentId
_08011C94: .4byte gMenuId
_08011C98:
	bl GetCurrentMenuEntry
	cmp r0, #6
	bls _08011CA2
	b _080120D4
_08011CA2:
	lsls r0, r0, #2
	ldr r1, _08011CAC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08011CAC: .4byte 0x08011CB0
_08011CB0: @ jump table
	.4byte _08011CCC @ case 0
	.4byte _08011CE0 @ case 1
	.4byte _08011CF4 @ case 2
	.4byte _08011D08 @ case 3
	.4byte _08011D28 @ case 4
	.4byte _080120D4 @ case 5
	.4byte _08011D50 @ case 6
_08011CCC:
	ldr r1, _08011CD8
	movs r0, #1
	strb r0, [r1]
	ldr r1, _08011CDC
	movs r0, #4
	b _0801208A
	.align 2, 0
_08011CD8: .4byte 0x0200143E
_08011CDC: .4byte 0x0200143F
_08011CE0:
	ldr r0, _08011CEC
	movs r2, #1
	strb r2, [r0]
	ldr r1, _08011CF0
	movs r0, #5
	b _08011EC6
	.align 2, 0
_08011CEC: .4byte 0x0200143E
_08011CF0: .4byte 0x0200143F
_08011CF4:
	ldr r1, _08011D00
	movs r0, #1
	strb r0, [r1]
	ldr r1, _08011D04
	movs r0, #0xb
	b _0801208A
	.align 2, 0
_08011D00: .4byte 0x0200143E
_08011D04: .4byte 0x0200143F
_08011D08:
	ldr r1, _08011D1C
	movs r0, #1
	strb r0, [r1]
	ldr r1, _08011D20
	movs r0, #0xb
	strb r0, [r1]
	ldr r1, _08011D24
	movs r0, #5
	b sub_8012090
	.align 2, 0
_08011D1C: .4byte 0x0200143E
_08011D20: .4byte 0x0200143F
_08011D24: .4byte 0x02001440
_08011D28:
	ldr r1, _08011D40
	movs r0, #1
	strb r0, [r1]
	ldr r2, _08011D44
	ldr r1, _08011D48
	ldrh r0, [r1]
	strb r0, [r2]
	movs r0, #6
	strh r0, [r1]
	ldr r1, _08011D4C
	movs r0, #1
	b _080120BA
	.align 2, 0
_08011D40: .4byte 0x0200143E
_08011D44: .4byte 0x0200143F
_08011D48: .4byte gLoadedRoomIndex
_08011D4C: .4byte gLoadedRoomLevel
_08011D50:
	ldr r2, _08011D60
	ldr r1, _08011D64
	ldrb r0, [r1]
	strb r0, [r2]
	movs r0, #0x18
	strb r0, [r1]
	movs r0, #0x18
	b _08011FEA
	.align 2, 0
_08011D60: .4byte gMenuParentId
_08011D64: .4byte gMenuId
_08011D68:
	bl GetCurrentMenuEntry
	cmp r0, #6
	bls _08011D72
	b _080120D4
_08011D72:
	lsls r0, r0, #2
	ldr r1, _08011D7C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08011D7C: .4byte 0x08011D80
_08011D80: @ jump table
	.4byte _08011D9C @ case 0
	.4byte _08011DB0 @ case 1
	.4byte _08011DC4 @ case 2
	.4byte _08011DE4 @ case 3
	.4byte _08011DF8 @ case 4
	.4byte _08011E0C @ case 5
	.4byte _08011E34 @ case 6
_08011D9C:
	ldr r1, _08011DA8
	movs r0, #1
	strb r0, [r1]
	ldr r1, _08011DAC
	movs r0, #8
	b _0801208A
	.align 2, 0
_08011DA8: .4byte 0x0200143E
_08011DAC: .4byte 0x0200143F
_08011DB0:
	ldr r1, _08011DBC
	movs r0, #1
	strb r0, [r1]
	ldr r1, _08011DC0
	movs r0, #3
	b _0801208A
	.align 2, 0
_08011DBC: .4byte 0x0200143E
_08011DC0: .4byte 0x0200143F
_08011DC4:
	ldr r1, _08011DD8
	movs r0, #1
	strb r0, [r1]
	ldr r1, _08011DDC
	movs r0, #3
	strb r0, [r1]
	ldr r1, _08011DE0
	movs r0, #2
	b sub_8012090
	.align 2, 0
_08011DD8: .4byte 0x0200143E
_08011DDC: .4byte 0x0200143F
_08011DE0: .4byte 0x02001440
_08011DE4:
	ldr r1, _08011DF0
	movs r0, #1
	strb r0, [r1]
	ldr r1, _08011DF4
	movs r0, #9
	b _0801208A
	.align 2, 0
_08011DF0: .4byte 0x0200143E
_08011DF4: .4byte 0x0200143F
_08011DF8:
	ldr r1, _08011E04
	movs r0, #1
	strb r0, [r1]
	ldr r1, _08011E08
	movs r0, #0xd
	b _0801208A
	.align 2, 0
_08011E04: .4byte 0x0200143E
_08011E08: .4byte 0x0200143F
_08011E0C:
	ldr r1, _08011E24
	movs r0, #1
	strb r0, [r1]
	ldr r2, _08011E28
	ldr r1, _08011E2C
	ldrh r0, [r1]
	strb r0, [r2]
	movs r0, #6
	strh r0, [r1]
	ldr r1, _08011E30
	movs r0, #2
	b _080120BA
	.align 2, 0
_08011E24: .4byte 0x0200143E
_08011E28: .4byte 0x0200143F
_08011E2C: .4byte gLoadedRoomIndex
_08011E30: .4byte gLoadedRoomLevel
_08011E34:
	ldr r2, _08011E44
	ldr r1, _08011E48
	ldrb r0, [r1]
	strb r0, [r2]
	movs r0, #0x19
	strb r0, [r1]
	movs r0, #0x19
	b _08011FEA
	.align 2, 0
_08011E44: .4byte gMenuParentId
_08011E48: .4byte gMenuId
_08011E4C:
	bl GetCurrentMenuEntry
	cmp r0, #6
	bls _08011E56
	b _080120D4
_08011E56:
	lsls r0, r0, #2
	ldr r1, _08011E60
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08011E60: .4byte 0x08011E64
_08011E64: @ jump table
	.4byte _08011E80 @ case 0
	.4byte _08011E94 @ case 1
	.4byte _08011EA8 @ case 2
	.4byte _08011EBC @ case 3
	.4byte _08011EDC @ case 4
	.4byte _080120D4 @ case 5
	.4byte _08011F04 @ case 6
_08011E80:
	ldr r1, _08011E8C
	movs r0, #1
	strb r0, [r1]
	ldr r1, _08011E90
	movs r0, #0x14
	b _0801208A
	.align 2, 0
_08011E8C: .4byte 0x0200143E
_08011E90: .4byte 0x0200143F
_08011E94:
	ldr r1, _08011EA0
	movs r0, #1
	strb r0, [r1]
	ldr r1, _08011EA4
	movs r0, #0x13
	b _0801208A
	.align 2, 0
_08011EA0: .4byte 0x0200143E
_08011EA4: .4byte 0x0200143F
_08011EA8:
	ldr r1, _08011EB4
	movs r0, #1
	strb r0, [r1]
	ldr r1, _08011EB8
	movs r0, #0x1f
	b _0801208A
	.align 2, 0
_08011EB4: .4byte 0x0200143E
_08011EB8: .4byte 0x0200143F
_08011EBC:
	ldr r0, _08011ED0
	movs r2, #1
	strb r2, [r0]
	ldr r1, _08011ED4
	movs r0, #0x21
_08011EC6:
	strb r0, [r1]
	ldr r0, _08011ED8
sub_8011ECA:
	strb r2, [r0]
	movs r0, #1
	b sub_80120D6
	.align 2, 0
_08011ED0: .4byte 0x0200143E
_08011ED4: .4byte 0x0200143F
_08011ED8: .4byte 0x02001440
_08011EDC:
	ldr r1, _08011EF4
	movs r0, #1
	strb r0, [r1]
	ldr r2, _08011EF8
	ldr r1, _08011EFC
	ldrh r0, [r1]
	strb r0, [r2]
	movs r0, #6
	strh r0, [r1]
	ldr r1, _08011F00
	movs r0, #3
	b _080120BA
	.align 2, 0
_08011EF4: .4byte 0x0200143E
_08011EF8: .4byte 0x0200143F
_08011EFC: .4byte gLoadedRoomIndex
_08011F00: .4byte gLoadedRoomLevel
_08011F04:
	ldr r2, _08011F14
	ldr r1, _08011F18
	ldrb r0, [r1]
	strb r0, [r2]
	movs r0, #0x1a
	strb r0, [r1]
	movs r0, #0x1a
	b _08011FEA
	.align 2, 0
_08011F14: .4byte gMenuParentId
_08011F18: .4byte gMenuId
_08011F1C:
	bl GetCurrentMenuEntry
	cmp r0, #6
	bls _08011F26
	b _080120D4
_08011F26:
	lsls r0, r0, #2
	ldr r1, _08011F30
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08011F30: .4byte 0x08011F34
_08011F34: @ jump table
	.4byte _08011F50 @ case 0
	.4byte _08011F64 @ case 1
	.4byte _08011F78 @ case 2
	.4byte _08011F8C @ case 3
	.4byte _08011FA0 @ case 4
	.4byte _08011FB4 @ case 5
	.4byte _08011FDC @ case 6
_08011F50:
	ldr r1, _08011F5C
	movs r0, #1
	strb r0, [r1]
	ldr r1, _08011F60
	movs r0, #0x16
	b _0801208A
	.align 2, 0
_08011F5C: .4byte 0x0200143E
_08011F60: .4byte 0x0200143F
_08011F64:
	ldr r1, _08011F70
	movs r0, #1
	strb r0, [r1]
	ldr r1, _08011F74
	movs r0, #0x1a
	b _0801208A
	.align 2, 0
_08011F70: .4byte 0x0200143E
_08011F74: .4byte 0x0200143F
_08011F78:
	ldr r1, _08011F84
	movs r0, #1
	strb r0, [r1]
	ldr r1, _08011F88
	movs r0, #0x17
	b _0801208A
	.align 2, 0
_08011F84: .4byte 0x0200143E
_08011F88: .4byte 0x0200143F
_08011F8C:
	ldr r1, _08011F98
	movs r0, #1
	strb r0, [r1]
	ldr r1, _08011F9C
	movs r0, #0x1b
	b _0801208A
	.align 2, 0
_08011F98: .4byte 0x0200143E
_08011F9C: .4byte 0x0200143F
_08011FA0:
	ldr r1, _08011FAC
	movs r0, #1
	strb r0, [r1]
	ldr r1, _08011FB0
	movs r0, #0x18
	b _0801208A
	.align 2, 0
_08011FAC: .4byte 0x0200143E
_08011FB0: .4byte 0x0200143F
_08011FB4:
	ldr r1, _08011FCC
	movs r0, #1
	strb r0, [r1]
	ldr r2, _08011FD0
	ldr r1, _08011FD4
	ldrh r0, [r1]
	strb r0, [r2]
	movs r0, #6
	strh r0, [r1]
	ldr r1, _08011FD8
	movs r0, #4
	b _080120BA
	.align 2, 0
_08011FCC: .4byte 0x0200143E
_08011FD0: .4byte 0x0200143F
_08011FD4: .4byte gLoadedRoomIndex
_08011FD8: .4byte gLoadedRoomLevel
_08011FDC:
	ldr r2, _08011FF4
	ldr r1, _08011FF8
	ldrb r0, [r1]
	strb r0, [r2]
	movs r0, #0x1b
	strb r0, [r1]
	movs r0, #0x1b
_08011FEA:
	movs r1, #0
	bl InitMenu
	b _080120D4
	.align 2, 0
_08011FF4: .4byte gMenuParentId
_08011FF8: .4byte gMenuId
_08011FFC:
	bl GetCurrentMenuEntry
	cmp r0, #6
	bhi _080120D4
	lsls r0, r0, #2
	ldr r1, _08012010
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08012010: .4byte 0x08012014
_08012014: @ jump table
	.4byte _08012030 @ case 0
	.4byte _08012044 @ case 1
	.4byte _08012058 @ case 2
	.4byte _0801206C @ case 3
	.4byte _08012080 @ case 4
	.4byte _080120A4 @ case 5
	.4byte _080120D4 @ case 6
_08012030:
	ldr r1, _0801203C
	movs r0, #1
	strb r0, [r1]
	ldr r1, _08012040
	movs r0, #0xf
	b _0801208A
	.align 2, 0
_0801203C: .4byte 0x0200143E
_08012040: .4byte 0x0200143F
_08012044:
	ldr r1, _08012050
	movs r0, #1
	strb r0, [r1]
	ldr r1, _08012054
	movs r0, #0x24
	b _0801208A
	.align 2, 0
_08012050: .4byte 0x0200143E
_08012054: .4byte 0x0200143F
_08012058:
	ldr r1, _08012064
	movs r0, #1
	strb r0, [r1]
	ldr r1, _08012068
	movs r0, #0x11
	b _0801208A
	.align 2, 0
_08012064: .4byte 0x0200143E
_08012068: .4byte 0x0200143F
_0801206C:
	ldr r1, _08012078
	movs r0, #1
	strb r0, [r1]
	ldr r1, _0801207C
	movs r0, #0x15
	b _0801208A
	.align 2, 0
_08012078: .4byte 0x0200143E
_0801207C: .4byte 0x0200143F
_08012080:
	ldr r1, _08012098
	movs r0, #1
	strb r0, [r1]
	ldr r1, _0801209C
	movs r0, #0x20
_0801208A:
	strb r0, [r1]
	ldr r1, _080120A0
sub_801208E:
	movs r0, #0
sub_8012090:
	strb r0, [r1]
	movs r0, #1
	b sub_80120D6
	.align 2, 0
_08012098: .4byte 0x0200143E
_0801209C: .4byte 0x0200143F
_080120A0: .4byte 0x02001440
_080120A4:
	ldr r1, _080120C4
	movs r0, #1
	strb r0, [r1]
	ldr r2, _080120C8
	ldr r1, _080120CC
	ldrh r0, [r1]
	strb r0, [r2]
	movs r0, #6
	strh r0, [r1]
	ldr r1, _080120D0
	movs r0, #5
_080120BA:
	strh r0, [r1]
	bl sub_8040178
	movs r0, #1
	b sub_80120D6
	.align 2, 0
_080120C4: .4byte 0x0200143E
_080120C8: .4byte 0x0200143F
_080120CC: .4byte gLoadedRoomIndex
_080120D0: .4byte gLoadedRoomLevel
_080120D4:
	movs r0, #0
sub_80120D6:
	pop {r4, r5}
	pop {r1}
	bx r1

	.thumb
sub_80120DC: @ 0x080120DC
	push {r4, lr}
	ldr r4, _08012100
	movs r0, #1
	strb r0, [r4]
	ldr r0, _08012104
	str r1, [r0]
	ldr r0, _08012108
	str r2, [r0]
	ldr r0, _0801210C
	str r3, [r0]
	ldr r1, _08012110
	ldr r0, _08012114
	ldrh r0, [r0]
	strb r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08012100: .4byte 0x02001442
_08012104: .4byte 0x02001444
_08012108: .4byte 0x02001448
_0801210C: .4byte 0x0200144C
_08012110: .4byte 0x02001443
_08012114: .4byte gLoadedRoomIndex

    .thumb
    .global Unused_InputFunction
Unused_InputFunction: @ 0x08012118
	push {r4, lr}
	ldr r0, _08012154
	ldrh r1, [r0]
	ldr r0, _08012158
	ands r0, r1
	adds r3, r0, #0
	ldr r4, _0801215C
	ldrh r0, [r4]
	cmp r3, r0
	beq _08012168
	ldr r0, _08012160
	ldr r1, [r0]
	adds r2, r1, #1
	str r2, [r0]
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r2, r0
	bne _08012140
	.2byte 0xEE00, 0xEE00
_08012140:
	ldr r0, _08012164
	ldr r1, [r0]
	lsls r0, r2, #2
	adds r0, r0, r1
	movs r1, #0
	strh r3, [r0]
	strh r3, [r4]
	strh r1, [r0, #2]
	b _0801217A
	.align 2, 0
_08012154: .4byte 0x04000130
_08012158: .4byte 0x000003FF
_0801215C: .4byte 0x02001458
_08012160: .4byte 0x02001454
_08012164: .4byte 0x02001450
_08012168:
	ldr r0, _08012180
	ldr r1, [r0]
	ldr r0, _08012184
	ldr r0, [r0]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldrh r0, [r1, #2]
	adds r0, #1
	strh r0, [r1, #2]
_0801217A:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08012180: .4byte 0x02001454
_08012184: .4byte 0x02001450

    .thumb
sub_8012188: @ 0x08012188
	push {r4, lr}
	ldr r4, _080121B4
	movs r0, #0x80
	lsls r0, r0, #3
	movs r1, #8
	movs r2, #5
	bl Alloc
	str r0, [r4]
	ldr r1, _080121B8
	movs r0, #0
	str r0, [r1]
	ldr r2, _080121BC
	ldr r0, _080121C0
	ldrh r1, [r0]
	ldr r0, _080121C4
	ands r0, r1
	strh r0, [r2]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080121B4: .4byte 0x02001450
_080121B8: .4byte 0x02001454
_080121BC: .4byte 0x02001458
_080121C0: .4byte 0x04000130
_080121C4: .4byte 0x000003FF

	.thumb
sub_80121C8: @ 0x080121C8
	push {lr}
	ldr r0, _080121E8
	ldr r0, [r0]
	ldr r1, _080121EC
	cmp r0, #0
	ble _080121DA
_080121D4:
	subs r0, #1
	cmp r0, #0
	bne _080121D4
_080121DA:
	ldr r0, [r1]
	movs r1, #4
	bl Free
	pop {r0}
	bx r0
	.align 2, 0
_080121E8: .4byte 0x02001454
_080121EC: .4byte 0x02001450

    .thumb
    .global sub_080121F0
sub_080121F0: @ 0x080121F0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0x13
	movs r2, #0xfa
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
	ldr r0, _080123E4
	movs r4, #0
	strh r4, [r0]
	adds r1, #0x50
	movs r2, #0xfc
	lsls r2, r2, #6
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #2
	ldr r2, _080123E8
	adds r0, r2, #0
	strh r0, [r1]
	ldr r0, _080123EC
	strh r4, [r0]
	movs r1, #0xc0
	lsls r1, r1, #0x13
	movs r2, #0xa0
	lsls r2, r2, #6
	movs r0, #0
	bl DmaFill32
	ldr r0, _080123F0
	movs r1, #0xa0
	lsls r1, r1, #0x13
	movs r2, #0x80
	bl DmaFill32
	ldr r0, _080123F4
	ldr r1, _080123F8
	movs r2, #0x80
	bl DmaTransfer32
	ldr r2, _080123FC
	movs r0, #0
	mov ip, r0
	movs r1, #0x10
	mov sl, r1
	mov r0, sl
	strh r0, [r2]
	movs r0, #0x28
	strh r0, [r2, #2]
	ldr r1, _08012400
	mov sb, r1
	str r1, [r2, #4]
	movs r5, #0xf0
	strh r5, [r2, #8]
	movs r3, #1
	strb r3, [r2, #0xa]
	mov r0, ip
	strh r0, [r2, #0xc]
	movs r1, #0xa
	mov r8, r1
	mov r0, r8
	strh r0, [r2, #0xe]
	strb r3, [r2, #0x10]
	movs r6, #6
	strb r6, [r2, #0x11]
	strb r4, [r2, #0x12]
	strb r4, [r2, #0x13]
	ldr r0, _08012404
	mov r1, sl
	strh r1, [r0]
	movs r1, #0x30
	strh r1, [r0, #2]
	mov r1, sb
	str r1, [r0, #4]
	strh r5, [r0, #8]
	strb r3, [r0, #0xa]
	mov r1, ip
	strh r1, [r0, #0xc]
	mov r1, r8
	strh r1, [r0, #0xe]
	strb r3, [r0, #0x10]
	strb r6, [r0, #0x11]
	strb r4, [r0, #0x12]
	strb r4, [r0, #0x13]
	ldr r0, _08012408
	mov r1, sl
	strh r1, [r0]
	movs r1, #0x40
	strh r1, [r0, #2]
	mov r1, sb
	str r1, [r0, #4]
	strh r5, [r0, #8]
	strb r3, [r0, #0xa]
	mov r1, ip
	strh r1, [r0, #0xc]
	mov r1, r8
	strh r1, [r0, #0xe]
	strb r3, [r0, #0x10]
	strb r6, [r0, #0x11]
	strb r4, [r0, #0x12]
	strb r4, [r0, #0x13]
	ldr r0, _0801240C
	mov r1, sl
	strh r1, [r0]
	movs r1, #0x50
	strh r1, [r0, #2]
	mov r1, sb
	str r1, [r0, #4]
	movs r1, #0xd0
	strh r1, [r0, #8]
	movs r1, #5
	strb r1, [r0, #0xa]
	mov r1, ip
	strh r1, [r0, #0xc]
	mov r1, r8
	strh r1, [r0, #0xe]
	strb r3, [r0, #0x10]
	strb r6, [r0, #0x11]
	strb r4, [r0, #0x12]
	strb r4, [r0, #0x13]
	movs r5, #0
	mov r0, sp
	adds r0, #3
	str r0, [sp, #0x14]
	add r1, sp, #8
	mov sl, r1
	ldr r0, _08012410
	mov sb, r0
	mov r8, r2
	movs r7, #0
	movs r6, #0x10
_08012302:
	movs r0, #0
	bl SetTextSpriteCount
	movs r0, #0xaa
	mov r1, sb
	movs r2, #0x80
	lsls r2, r2, #1
	bl DmaFill32
	ldr r0, _08012414
	mov r1, sb
	str r1, [r0]
	ldr r0, _08012418
	ldr r2, _0801241C
	str r2, [r0]
	ldr r1, _08012420
	ldr r0, _08012424
	str r0, [r1]
	ldr r1, _08012428
	movs r0, #0x80
	lsls r0, r0, #2
	str r0, [r1]
	mov r0, r8
	strh r6, [r0]
	movs r0, #0x28
	mov r1, r8
	strh r0, [r1, #2]
	strh r7, [r1, #0xc]
	ldr r1, _08012404
	strh r6, [r1]
	movs r0, #0x30
	strh r0, [r1, #2]
	strh r7, [r1, #0xc]
	ldr r1, _08012408
	strh r6, [r1]
	movs r0, #0x40
	strh r0, [r1, #2]
	strh r7, [r1, #0xc]
	ldr r1, _0801240C
	strh r6, [r1]
	movs r0, #0x50
	strh r0, [r1, #2]
	strh r7, [r1, #0xc]
	ldr r1, _0801242C
	ldr r0, _08012430
	ldrh r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	mov r0, r8
	bl AddStringToBuffer
	ldr r0, _08012434
	ldrh r3, [r0, #2]
	ldr r2, _08012438
	ldr r1, [r0, #4]
	ldr r0, [r0, #8]
	adds r1, r1, r0
	asrs r1, r1, #0x10
	ldrh r0, [r2]
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r5, #1
	movs r1, #0x20
	add r0, sp, #8
_08012386:
	strb r1, [r0]
	subs r0, #1
	cmp r0, sp
	bge _08012386
	adds r0, r3, #0
	ldr r1, [sp, #0x14]
	bl IntegerToAsciiBw
	adds r0, r4, #0
	mov r1, sl
	bl IntegerToAsciiBw
	mov r1, sp
	movs r0, #0xff
	strb r0, [r1, #9]
	ldr r0, _08012404
	bl AddStringToBuffer
	ldr r0, _08012408
	ldr r1, [sp, #0xc]
	bl AddStringToBuffer
	ldr r0, _0801240C
	ldr r1, [sp, #0x10]
	bl AddStringToBuffer
	bl RenderText
	bl SyncVblank
	bl update_video
	bl SkipVblank
	cmp r5, #1
	ble _08012302
	.2byte 0xEE00, 0xEE00
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080123E4: .4byte 0x0400000C
_080123E8: .4byte 0x00000907
_080123EC: .4byte 0x04000054
_080123F0: .4byte 0x50005000
_080123F4: .4byte 0x083FD254
_080123F8: .4byte 0x05000200
_080123FC: .4byte 0x020013EC
_08012400: .4byte 0x080B01A8
_08012404: .4byte 0x02001400
_08012408: .4byte 0x02001414
_0801240C: .4byte 0x02001428
_08012410: .4byte gOAMBuffer1
_08012414: .4byte gOAMBufferFramePtr
_08012418: .4byte gOAMBufferEnd
_0801241C: .4byte gOAMBufferFramePtr
_08012420: .4byte gOBJTileFramePtr
_08012424: .4byte 0x06014000
_08012428: .4byte gOBJTileCount
_0801242C: .4byte 0x086AD26C
_08012430: .4byte gLoadedRoomIndex
_08012434: .4byte gPlayerPos
_08012438: .4byte gMapPixelSizeY

	.thumb
sub_801243C: @ 0x0801243C
	push {r4, r5, r6, lr}
	mov r6, sl
	mov r5, sb
	mov r4, r8
	push {r4, r5, r6}
	sub sp, #0x48
	bl audio_halt_all_fx
	ldr r4, _0801251C
	adds r0, r4, #0
	movs r1, #0
	bl sub_80270AC
	movs r1, #0xa0
	lsls r1, r1, #0x13
	movs r0, #0
	movs r2, #0x80
	bl DmaFill32
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	bl sub_8026E48
	mov r1, sp
	movs r0, #0x53
	strb r0, [r1]
	movs r0, #0x43
	strb r0, [r1, #1]
	movs r0, #0x52
	strb r0, [r1, #2]
	movs r0, #0x49
	strb r0, [r1, #3]
	movs r0, #0x50
	strb r0, [r1, #4]
	movs r0, #0x54
	strb r0, [r1, #5]
	movs r0, #0x20
	strb r0, [r1, #6]
	mov r0, sp
	movs r1, #0x30
	strb r1, [r0, #7]
	strb r1, [r0, #8]
	strb r1, [r0, #9]
	mov r1, sp
	movs r0, #0xff
	strb r0, [r1, #0xa]
	add r0, sp, #0xc
	movs r4, #0
	movs r1, #0
	mov sl, r1
	movs r3, #8
	strh r3, [r0]
	strh r3, [r0, #2]
	ldr r1, _08012520
	mov sb, r1
	str r1, [r0, #4]
	movs r1, #0xf0
	mov r8, r1
	mov r1, r8
	strh r1, [r0, #8]
	movs r2, #1
	strb r2, [r0, #0xa]
	mov r1, sl
	strh r1, [r0, #0xc]
	movs r6, #0xa
	strh r6, [r0, #0xe]
	strb r2, [r0, #0x10]
	movs r5, #6
	strb r5, [r0, #0x11]
	strb r4, [r0, #0x12]
	strb r4, [r0, #0x13]
	add r0, sp, #0x20
	strh r3, [r0]
	movs r1, #0x18
	strh r1, [r0, #2]
	mov r1, sb
	str r1, [r0, #4]
	mov r1, r8
	strh r1, [r0, #8]
	strb r2, [r0, #0xa]
	mov r1, sl
	strh r1, [r0, #0xc]
	strh r6, [r0, #0xe]
	strb r2, [r0, #0x10]
	strb r5, [r0, #0x11]
	strb r4, [r0, #0x12]
	strb r4, [r0, #0x13]
	add r0, sp, #0x34
	strh r3, [r0]
	movs r1, #0x28
	strh r1, [r0, #2]
	mov r1, sb
	str r1, [r0, #4]
	mov r1, r8
	strh r1, [r0, #8]
	strb r2, [r0, #0xa]
	mov r1, sl
	strh r1, [r0, #0xc]
	strh r6, [r0, #0xe]
	strb r2, [r0, #0x10]
	strb r5, [r0, #0x11]
	strb r4, [r0, #0x12]
	strb r4, [r0, #0x13]
	add sp, #0x48
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0801251C: .4byte 0x00000FFF
_08012520: .4byte 0x080B01A8
