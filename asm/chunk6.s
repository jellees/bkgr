
    .syntax unified

    .text

    .thumb
    .global sub_80343F0
sub_80343F0: @ 0x080343F0
	push {r4, lr}
	sub sp, #0x14
	adds r4, r0, #0
	mov r2, sp
	ldrb r0, [r4, #0xc]
	strh r0, [r2]
	ldrb r0, [r4, #0x13]
	strh r0, [r2, #2]
	ldrb r0, [r4, #0x14]
	strb r0, [r2, #0x12]
	str r1, [sp, #4]
	ldrh r0, [r4]
	str r0, [sp, #8]
	ldrb r0, [r4, #0xe]
	str r0, [sp, #0xc]
	mov r1, sp
	ldrb r0, [r4, #0xe]
	strb r0, [r1, #0x13]
	ldr r1, _0803443C
	mov r0, sp
	ldrh r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	movs r0, #2
	ands r1, r0
	cmp r1, #0
	beq _08034440
	mov r0, sp
	ldrh r0, [r0, #2]
	mov r1, sp
	ldrb r1, [r1, #0x12]
	bl sub_803352C
	mov r1, sp
	strh r0, [r1, #0x10]
	b _08034444
	.align 2, 0
_0803443C: .4byte 0x080A7BA0
_08034440:
	mov r0, sp
	strh r1, [r0, #0x10]
_08034444:
	ldr r1, _0803445C
	ldrb r0, [r4, #0xc]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	mov r0, sp
	bl _call_via_r1
	add sp, #0x14
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0803445C: .4byte 0x080A77A0

    .thumb
    .global sub_8034460
sub_8034460: @ 0x08034460
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	adds r6, r2, #0
	adds r7, r3, #0
	ldr r0, _080344D4
	ldr r1, [r0]
	mov ip, r0
	cmp r1, #0xa
	bne _08034478
	.2byte 0xEE00, 0xEE00
_08034478:
	movs r2, #0
	ldr r0, _080344D8
	ldr r1, [r0]
	adds r3, r0, #0
	cmp r1, #0
	beq _08034494
	adds r1, r3, #0
_08034486:
	adds r1, #0x14
	adds r2, #1
	cmp r2, #9
	bgt _08034494
	ldr r0, [r1]
	cmp r0, #0
	bne _08034486
_08034494:
	cmp r2, #0xa
	bne _0803449C
	.2byte 0xEE00, 0xEE00
_0803449C:
	lsls r1, r2, #2
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r2, r1, r3
	movs r0, #1
	str r0, [r2]
	adds r0, r3, #4
	adds r0, r1, r0
	str r4, [r0]
	adds r0, r3, #0
	adds r0, #8
	adds r0, r1, r0
	str r5, [r0]
	adds r0, r3, #0
	adds r0, #0xc
	adds r0, r1, r0
	str r6, [r0]
	adds r0, r3, #0
	adds r0, #0x10
	adds r1, r1, r0
	str r7, [r1]
	mov r1, ip
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080344D4: .4byte 0x0203EA78
_080344D8: .4byte 0x0203E9B0

    .thumb
    .global sub_80344DC
sub_80344DC: @ 0x080344DC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _08034524
	ldr r0, [r0]
	cmp r0, #0
	bne _080344EC
	b _08034640
_080344EC:
	movs r7, #0
	movs r0, #0
	mov r8, r0
_080344F2:
	ldr r1, _08034528
	mov r3, r8
	lsls r2, r3, #2
	adds r0, r2, r3
	lsls r3, r0, #2
	adds r0, r3, r1
	ldr r0, [r0]
	adds r5, r1, #0
	adds r4, r2, #0
	cmp r0, #0
	bne _0803450A
	b _0803462C
_0803450A:
	adds r0, r5, #0
	adds r0, #0xc
	adds r0, r3, r0
	ldr r0, [r0]
	cmp r0, #7
	bls _08034518
	b _08034628
_08034518:
	lsls r0, r0, #2
	ldr r1, _0803452C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08034524: .4byte 0x0203EA78
_08034528: .4byte 0x0203E9B0
_0803452C: .4byte 0x08034530
_08034530: @ jump table
	.4byte _0803457C @ case 0
	.4byte _0803458C @ case 1
	.4byte _08034594 @ case 2
	.4byte _080345A8 @ case 3
	.4byte _080345D8 @ case 4
	.4byte _08034584 @ case 5
	.4byte _0803456C @ case 6
	.4byte _08034550 @ case 7
_08034550:
	ldr r0, _08034564
	ldr r0, [r0]
	bl sub_80038AC
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #0
	bne _08034624
	ldr r5, _08034568
	b _080345F2
	.align 2, 0
_08034564: .4byte dword_2000FC8
_08034568: .4byte 0x0203E9B0
_0803456C:
	ldr r0, _08034578
_0803456E:
	ldrb r6, [r0]
	cmp r6, #0
	beq _080345F2
	b _08034624
	.align 2, 0
_08034578: .4byte byte_200110C
_0803457C:
	ldr r0, _08034580
	b _0803456E
	.align 2, 0
_08034580: .4byte gIsAnyScriptActive
_08034584:
	ldr r0, _08034588
	b _0803456E
	.align 2, 0
_08034588: .4byte gIsPriorityScriptActive
_0803458C:
	ldr r0, _08034590
	b _0803456E
	.align 2, 0
_08034590: .4byte gReadKeysFromDemoInput
_08034594:
	ldr r0, _080345A0
	ldrb r0, [r0]
	cmp r0, #0
	bne _08034624
	ldr r0, _080345A4
	b _0803456E
	.align 2, 0
_080345A0: .4byte gReadKeysFromDemoInput
_080345A4: .4byte gIsAnyScriptActive
_080345A8:
	mov r1, r8
	adds r0, r4, r1
	lsls r4, r0, #2
	adds r0, r5, #0
	adds r0, #0x10
	adds r0, r4, r0
	ldr r0, [r0]
	bl sprite_is_anim_done_once
	cmp r0, #0
	beq _08034624
	adds r0, r5, #4
	adds r0, r4, r0
	ldr r0, [r0]
	adds r1, r5, #0
	adds r1, #8
	adds r1, r4, r1
	ldr r1, [r1]
	bl run_obj_behavior
	adds r1, r4, r5
	movs r0, #0
	str r0, [r1]
	b _0803460C
_080345D8:
	ldr r1, _08034618
	ldr r0, _0803461C
	ldrh r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #4
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #0
	bne _08034624
_080345F2:
	add r4, r8
	lsls r4, r4, #2
	adds r0, r5, #4
	adds r0, r4, r0
	ldr r0, [r0]
	adds r1, r5, #0
	adds r1, #8
	adds r1, r4, r1
	ldr r1, [r1]
	bl run_obj_behavior
	adds r4, r4, r5
	str r6, [r4]
_0803460C:
	ldr r1, _08034620
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	b _0803462C
	.align 2, 0
_08034618: .4byte gPlayerStateFlags
_0803461C: .4byte gPlayerState
_08034620: .4byte 0x0203EA78
_08034624:
	adds r7, #1
	b _0803462C
_08034628:
	.2byte 0xEE00, 0xEE00
_0803462C:
	ldr r0, _0803464C
	ldr r0, [r0]
	cmp r7, r0
	beq _08034640
	movs r3, #1
	add r8, r3
	mov r0, r8
	cmp r0, #9
	bgt _08034640
	b _080344F2
_08034640:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803464C: .4byte 0x0203EA78

    .thumb
sub_8034650: @ 0x08034650
	push {r4, r5, lr}
	adds r2, r0, #0
	cmp r2, #0
	bne _0803465A
	b _0803494E
_0803465A:
	ldr r0, _08034674
	adds r0, r2, r0
	movs r1, #1
	strb r1, [r0]
	subs r0, r2, #1
	cmp r0, #0x10
	bls _0803466A
	b _080348D8
_0803466A:
	lsls r0, r0, #2
	ldr r1, _08034678
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08034674: .4byte 0x0203E0FC
_08034678: .4byte 0x0803467C
_0803467C: @ jump table
	.4byte _080346C0 @ case 0
	.4byte _080346CC @ case 1
	.4byte _080346D8 @ case 2
	.4byte _080348D8 @ case 3
	.4byte _080346E4 @ case 4
	.4byte _080346F8 @ case 5
	.4byte _0803473C @ case 6
	.4byte _08034798 @ case 7
	.4byte _080347A4 @ case 8
	.4byte _080347B0 @ case 9
	.4byte _080347BC @ case 10
	.4byte _080347C8 @ case 11
	.4byte _080347D4 @ case 12
	.4byte _080347E0 @ case 13
	.4byte _0803481C @ case 14
	.4byte _08034894 @ case 15
	.4byte _08034858 @ case 16
_080346C0:
	ldr r1, _080346C8
	movs r0, #1
	strb r0, [r1, #0x10]
	b _080348DC
	.align 2, 0
_080346C8: .4byte 0x0200209A
_080346CC:
	ldr r1, _080346D4
	movs r0, #1
	strb r0, [r1, #0x12]
	b _080348DC
	.align 2, 0
_080346D4: .4byte 0x0200209A
_080346D8:
	ldr r1, _080346E0
	movs r0, #1
	strb r0, [r1, #0x15]
	b _080348DC
	.align 2, 0
_080346E0: .4byte 0x0200209A
_080346E4:
	ldr r1, _080346F4
	movs r0, #1
	strb r0, [r1, #0x16]
	movs r0, #0x14
	bl sub_8029C30
	b _080348DC
	.align 2, 0
_080346F4: .4byte 0x0200209A
_080346F8:
	ldr r0, _08034724
	movs r1, #1
	strb r1, [r0]
	ldr r0, _08034728
	strb r1, [r0]
	ldr r1, _0803472C
	movs r0, #1
	strb r0, [r1, #5]
	movs r0, #0x15
	bl sub_8029C30
	ldr r0, _08034730
	ldr r1, _08034734
	movs r2, #0x12
	ldrsb r2, [r0, r2]
	movs r0, #0x12
	ldrsb r0, [r1, r0]
	cmp r2, r0
	blt _08034720
	b _080348DC
_08034720:
	ldr r0, _08034738
	b _080348B8
	.align 2, 0
_08034724: .4byte 0x0203E96C
_08034728: .4byte 0x0203E12A
_0803472C: .4byte 0x0200209A
_08034730: .4byte gGameStatus
_08034734: .4byte 0x080CC8C4
_08034738: .4byte 0x000001A9
_0803473C:
	ldr r0, _0803477C
	movs r5, #0
	movs r4, #1
	strb r4, [r0, #1]
	ldr r2, _08034780
	ldr r0, _08034784
	ldrh r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrb r1, [r0, #8]
	adds r1, #1
	strb r1, [r0, #8]
	ldr r1, _08034788
	ldrb r0, [r1, #7]
	adds r0, #1
	strb r0, [r1, #7]
	movs r0, #0x3a
	bl start_script
	ldr r0, _0803478C
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_8034460
	ldr r0, _08034790
	strb r4, [r0]
	ldr r0, _08034794
	strb r5, [r0]
	b _0803494E
	.align 2, 0
_0803477C: .4byte 0x0200209A
_08034780: .4byte 0x02000FCC
_08034784: .4byte gLoadedRoomLevel
_08034788: .4byte gGameStatus
_0803478C: .4byte 0x00000189
_08034790: .4byte 0x0203E12C
_08034794: .4byte 0x02002E50
_08034798:
	ldr r1, _080347A0
	movs r0, #1
	strb r0, [r1, #0xf]
	b _080348DC
	.align 2, 0
_080347A0: .4byte 0x0200209A
_080347A4:
	ldr r1, _080347AC
	movs r0, #1
	strb r0, [r1, #2]
	b _080348DC
	.align 2, 0
_080347AC: .4byte 0x0200209A
_080347B0:
	ldr r1, _080347B8
	movs r0, #1
	strb r0, [r1, #0x13]
	b _080348DC
	.align 2, 0
_080347B8: .4byte 0x0200209A
_080347BC:
	ldr r1, _080347C4
	movs r0, #1
	strb r0, [r1, #0x14]
	b _080348DC
	.align 2, 0
_080347C4: .4byte 0x0200209A
_080347C8:
	ldr r1, _080347D0
	movs r0, #1
	strb r0, [r1, #4]
	b _080348DC
	.align 2, 0
_080347D0: .4byte 0x0200209A
_080347D4:
	ldr r1, _080347DC
	movs r0, #1
	strb r0, [r1, #3]
	b _080348DC
	.align 2, 0
_080347DC: .4byte 0x0200209A
_080347E0:
	ldr r0, _08034808
	movs r1, #1
	strb r1, [r0]
	ldr r0, _0803480C
	strb r1, [r0]
	ldr r1, _08034810
	movs r0, #1
	strb r0, [r1, #6]
	ldr r0, _08034814
	ldr r1, _08034818
	movs r2, #0xe
	ldrsb r2, [r0, r2]
	movs r0, #0xe
	ldrsb r0, [r1, r0]
	cmp r2, r0
	bge _080348DC
	movs r0, #0xd2
	lsls r0, r0, #1
	b _080348B8
	.align 2, 0
_08034808: .4byte 0x0203E96A
_0803480C: .4byte 0x0203E122
_08034810: .4byte 0x0200209A
_08034814: .4byte gGameStatus
_08034818: .4byte 0x080CC8C4
_0803481C:
	ldr r0, _08034840
	movs r1, #1
	strb r1, [r0]
	ldr r0, _08034844
	strb r1, [r0]
	ldr r1, _08034848
	movs r0, #1
	strb r0, [r1, #7]
	ldr r0, _0803484C
	ldr r1, _08034850
	movs r2, #0xf
	ldrsb r2, [r0, r2]
	movs r0, #0xf
	ldrsb r0, [r1, r0]
	cmp r2, r0
	bge _080348DC
	ldr r0, _08034854
	b _080348B8
	.align 2, 0
_08034840: .4byte 0x0203E96A
_08034844: .4byte 0x0203E123
_08034848: .4byte 0x0200209A
_0803484C: .4byte gGameStatus
_08034850: .4byte 0x080CC8C4
_08034854: .4byte 0x000001A5
_08034858:
	ldr r0, _0803487C
	movs r1, #1
	strb r1, [r0]
	ldr r0, _08034880
	strb r1, [r0]
	ldr r1, _08034884
	movs r0, #1
	strb r0, [r1, #9]
	ldr r0, _08034888
	ldr r1, _0803488C
	movs r2, #0x11
	ldrsb r2, [r0, r2]
	movs r0, #0x11
	ldrsb r0, [r1, r0]
	cmp r2, r0
	bge _080348DC
	ldr r0, _08034890
	b _080348B8
	.align 2, 0
_0803487C: .4byte 0x0203E96A
_08034880: .4byte 0x0203E125
_08034884: .4byte 0x0200209A
_08034888: .4byte gGameStatus
_0803488C: .4byte 0x080CC8C4
_08034890: .4byte 0x000001A7
_08034894:
	ldr r0, _080348C4
	movs r1, #1
	strb r1, [r0]
	ldr r0, _080348C8
	strb r1, [r0]
	ldr r1, _080348CC
	movs r0, #1
	strb r0, [r1, #8]
	ldr r0, _080348D0
	ldr r1, _080348D4
	movs r2, #0x10
	ldrsb r2, [r0, r2]
	movs r0, #0x10
	ldrsb r0, [r1, r0]
	cmp r2, r0
	bge _080348DC
	movs r0, #0xd3
	lsls r0, r0, #1
_080348B8:
	movs r1, #0
	movs r2, #4
	movs r3, #0
	bl sub_8034460
	b _080348DC
	.align 2, 0
_080348C4: .4byte 0x0203E96A
_080348C8: .4byte 0x0203E124
_080348CC: .4byte 0x0200209A
_080348D0: .4byte gGameStatus
_080348D4: .4byte 0x080CC8C4
_080348D8:
	.2byte 0xEE00, 0xEE00
_080348DC:
	ldr r1, _08034954
	movs r0, #1
	strb r0, [r1]
	ldr r2, _08034958
	ldr r0, _0803495C
	ldrh r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrb r1, [r0, #8]
	adds r1, #1
	strb r1, [r0, #8]
	ldr r4, _08034960
	ldrb r0, [r4, #7]
	adds r0, #1
	strb r0, [r4, #7]
	ldrb r1, [r4, #7]
	movs r0, #4
	bl hud_set_value
	ldr r0, _08034964
	ldrb r0, [r0]
	cmp r0, #0
	beq _08034936
	ldr r3, _08034968
	movs r1, #0xa8
	lsls r1, r1, #1
	adds r0, r3, r1
	ldrh r0, [r0]
	ldr r2, _0803496C
	movs r5, #0xa9
	lsls r5, r5, #1
	adds r1, r3, r5
	ldrb r2, [r2]
	adds r1, r1, r2
	ldrb r1, [r1]
	adds r5, #2
	adds r2, r3, r5
	ldr r2, [r2]
	movs r3, #0x80
	lsls r3, r3, #9
	adds r2, r2, r3
	bl audio_new_fx
_08034936:
	ldrb r2, [r4, #0x13]
	ldrb r1, [r4, #0x15]
	ldrb r0, [r4, #0x14]
	adds r0, #1
	muls r1, r0, r1
	cmp r2, r1
	bge _0803494E
	strb r1, [r4, #0x13]
	ldrb r1, [r4, #0x13]
	movs r0, #0x38
	bl hud_set_value
_0803494E:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08034954: .4byte 0x0203E12C
_08034958: .4byte 0x02000FCC
_0803495C: .4byte gLoadedRoomLevel
_08034960: .4byte gGameStatus
_08034964: .4byte gCanPlaySfx
_08034968: .4byte 0x080CE440
_0803496C: .4byte gSfxVolume

    .thumb
    .global sub_8034970
sub_8034970: @ 0x08034970
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x50
	mov r8, r0
	str r1, [sp, #0x1c]
	str r2, [sp, #0x20]
	ldr r0, [r1]
	ldr r2, [r2]
	mov r1, r8
	adds r3, r1, r0
	movs r1, #0x11
	strb r1, [r3]
	adds r0, #1
	mov r4, r8
	adds r3, r4, r0
	ldr r1, _08034D7C
	ldrb r1, [r1]
	strb r1, [r3]
	adds r2, #0x11
	adds r2, r2, r1
	adds r0, #1
	adds r3, r4, r0
	ldr r1, _08034D80
	ldrb r1, [r1]
	strb r1, [r3]
	ldrb r4, [r3]
	adds r0, #1
	mov r5, r8
	adds r3, r5, r0
	ldr r1, _08034D84
	ldrb r1, [r1]
	strb r1, [r3]
	adds r2, r2, r4
	adds r2, r2, r1
	adds r0, #1
	adds r3, r5, r0
	ldr r1, _08034D88
	ldrh r1, [r1]
	strb r1, [r3]
	ldrb r4, [r3]
	adds r0, #1
	adds r3, r5, r0
	ldr r1, _08034D8C
	ldrb r1, [r1]
	strb r1, [r3]
	adds r2, r2, r4
	adds r2, r2, r1
	str r2, [sp, #0x18]
	adds r0, #1
	str r0, [sp, #0x10]
	movs r6, #0
	str r6, [sp, #0x24]
	ldr r5, _08034D90
	ldr r4, _08034D94
	ldr r6, _08034D98
	ldr r7, _08034D9C
	mov sb, r7
	mov r0, sp
	adds r0, #0x10
	str r0, [sp, #0x34]
	mov r1, sp
	adds r1, #0x14
	str r1, [sp, #0x38]
	mov r2, sp
	adds r2, #0x18
	str r2, [sp, #0x3c]
_080349FA:
	ldr r2, [sp, #0x10]
	mov r3, r8
	adds r1, r3, r2
	ldr r7, [sp, #0x24]
	adds r0, r7, r5
	ldrb r0, [r0]
	strb r0, [r1]
	ldrb r0, [r1]
	ldr r1, [sp, #0x18]
	adds r1, r1, r0
	str r1, [sp, #0x18]
	adds r2, #1
	str r2, [sp, #0x10]
	adds r3, r3, r2
	adds r0, r7, r4
	ldrb r0, [r0]
	strb r0, [r3]
	ldrb r0, [r3]
	adds r1, r1, r0
	str r1, [sp, #0x18]
	adds r2, #1
	str r2, [sp, #0x10]
	adds r0, r7, #0
	adds r0, #1
	str r0, [sp, #0x24]
	cmp r0, #5
	ble _080349FA
	movs r1, #0
	str r1, [sp, #0x24]
	ldr r7, _08034DA0
_08034A36:
	ldr r1, [sp, #0x10]
	mov r3, r8
	adds r2, r3, r1
	ldr r4, [sp, #0x24]
	lsls r5, r4, #4
	subs r4, r5, r4
	lsls r4, r4, #3
	adds r4, r4, r6
	ldrb r0, [r4]
	strb r0, [r2]
	ldrb r0, [r2]
	ldr r2, [sp, #0x18]
	adds r2, r2, r0
	str r2, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	adds r3, r3, r1
	ldrb r0, [r4, #1]
	strb r0, [r3]
	ldrb r0, [r3]
	adds r2, r2, r0
	str r2, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	mov r0, r8
	adds r3, r0, r1
	ldrb r0, [r4, #2]
	strb r0, [r3]
	ldrb r0, [r3]
	adds r2, r2, r0
	str r2, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	mov r0, r8
	adds r3, r0, r1
	ldrb r0, [r4, #3]
	strb r0, [r3]
	ldrb r0, [r3]
	adds r2, r2, r0
	str r2, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	mov r0, r8
	adds r3, r0, r1
	ldrb r0, [r4, #4]
	strb r0, [r3]
	ldrb r0, [r3]
	adds r2, r2, r0
	str r2, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	mov r0, r8
	adds r3, r0, r1
	ldrb r0, [r4, #5]
	strb r0, [r3]
	ldrb r0, [r3]
	adds r2, r2, r0
	str r2, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	mov r0, r8
	adds r3, r0, r1
	ldrb r0, [r4, #6]
	strb r0, [r3]
	ldrb r0, [r3]
	adds r2, r2, r0
	str r2, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	mov r0, r8
	adds r3, r0, r1
	ldrb r0, [r4, #7]
	strb r0, [r3]
	ldrb r0, [r3]
	adds r2, r2, r0
	str r2, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	mov r0, r8
	adds r3, r0, r1
	ldrb r0, [r4, #8]
	strb r0, [r3]
	ldrb r0, [r3]
	adds r2, r2, r0
	str r2, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	mov r0, r8
	adds r3, r0, r1
	ldrb r0, [r4, #9]
	strb r0, [r3]
	ldrb r0, [r3]
	adds r2, r2, r0
	str r2, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	mov r0, r8
	adds r3, r0, r1
	ldrb r0, [r4, #0xa]
	strb r0, [r3]
	ldrb r0, [r3]
	adds r2, r2, r0
	str r2, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	mov r0, r8
	adds r3, r0, r1
	ldrb r0, [r4, #0xb]
	strb r0, [r3]
	ldrb r0, [r3]
	adds r2, r2, r0
	str r2, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	mov r0, r8
	adds r3, r0, r1
	ldrb r0, [r4, #0xc]
	strb r0, [r3]
	ldrb r0, [r3]
	adds r2, r2, r0
	str r2, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	mov r0, r8
	adds r3, r0, r1
	ldrb r0, [r4, #0xd]
	strb r0, [r3]
	ldrb r0, [r3]
	adds r2, r2, r0
	str r2, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	mov r0, r8
	adds r3, r0, r1
	ldrb r0, [r4, #0xe]
	strb r0, [r3]
	ldrb r0, [r3]
	adds r2, r2, r0
	str r2, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	mov r0, r8
	adds r3, r0, r1
	ldrb r0, [r4, #0xf]
	strb r0, [r3]
	ldrb r0, [r3]
	adds r2, r2, r0
	str r2, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	mov r0, r8
	adds r3, r0, r1
	ldrb r0, [r4, #0x10]
	strb r0, [r3]
	ldrb r0, [r3]
	adds r2, r2, r0
	str r2, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	mov r0, r8
	adds r3, r0, r1
	ldrb r0, [r4, #0x11]
	strb r0, [r3]
	ldrb r0, [r3]
	adds r2, r2, r0
	str r2, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	mov r0, r8
	adds r3, r0, r1
	ldrb r0, [r4, #0x12]
	strb r0, [r3]
	ldrb r0, [r3]
	adds r2, r2, r0
	str r2, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	mov r0, r8
	adds r3, r0, r1
	ldrb r0, [r4, #0x13]
	strb r0, [r3]
	ldrb r0, [r3]
	adds r2, r2, r0
	str r2, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	mov r0, r8
	adds r3, r0, r1
	ldrb r0, [r4, #0x14]
	strb r0, [r3]
	ldrb r0, [r3]
	adds r2, r2, r0
	str r2, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	mov r4, r8
	adds r3, r4, r1
	movs r0, #0xc4
	ldr r4, [sp, #0x24]
	muls r0, r4, r0
	adds r4, r0, r7
	ldrb r0, [r4]
	strb r0, [r3]
	ldrb r0, [r3]
	adds r2, r2, r0
	str r2, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	mov r0, r8
	adds r3, r0, r1
	ldrb r0, [r4, #1]
	strb r0, [r3]
	ldrb r0, [r3]
	adds r2, r2, r0
	str r2, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	mov r0, r8
	adds r3, r0, r1
	ldrb r0, [r4, #2]
	strb r0, [r3]
	ldrb r0, [r3]
	adds r2, r2, r0
	str r2, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	mov r0, r8
	adds r3, r0, r1
	ldrb r0, [r4, #3]
	strb r0, [r3]
	ldrb r0, [r3]
	adds r2, r2, r0
	str r2, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	mov r0, r8
	adds r3, r0, r1
	ldrb r0, [r4, #4]
	strb r0, [r3]
	ldrb r0, [r3]
	adds r2, r2, r0
	str r2, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	mov r0, r8
	adds r3, r0, r1
	ldrb r0, [r4, #5]
	strb r0, [r3]
	ldrb r0, [r3]
	adds r2, r2, r0
	str r2, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	mov r0, r8
	adds r3, r0, r1
	ldrb r0, [r4, #6]
	strb r0, [r3]
	ldrb r0, [r3]
	adds r2, r2, r0
	str r2, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	mov r0, r8
	adds r3, r0, r1
	ldrb r0, [r4, #7]
	strb r0, [r3]
	ldrb r0, [r3]
	adds r2, r2, r0
	str r2, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	mov r0, r8
	adds r3, r0, r1
	ldrb r0, [r4, #8]
	strb r0, [r3]
	ldrb r0, [r3]
	adds r2, r2, r0
	str r2, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	mov r0, r8
	adds r3, r0, r1
	ldrb r0, [r4, #9]
	strb r0, [r3]
	ldrb r0, [r3]
	adds r2, r2, r0
	str r2, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	mov r0, r8
	adds r3, r0, r1
	ldrb r0, [r4, #0xa]
	strb r0, [r3]
	ldrb r0, [r3]
	adds r2, r2, r0
	str r2, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	mov r0, r8
	adds r3, r0, r1
	ldrb r0, [r4, #0xb]
	strb r0, [r3]
	ldrb r0, [r3]
	adds r2, r2, r0
	str r2, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	mov r0, r8
	adds r3, r0, r1
	ldrb r0, [r4, #0xc]
	strb r0, [r3]
	ldrb r0, [r3]
	adds r2, r2, r0
	str r2, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	mov r0, r8
	adds r3, r0, r1
	ldrb r0, [r4, #0xd]
	strb r0, [r3]
	ldrb r0, [r3]
	adds r2, r2, r0
	str r2, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	mov r0, r8
	adds r3, r0, r1
	ldrb r0, [r4, #0xe]
	strb r0, [r3]
	ldrb r0, [r3]
	adds r2, r2, r0
	str r2, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	mov r0, r8
	adds r3, r0, r1
	ldrb r0, [r4, #0xf]
	strb r0, [r3]
	ldrb r0, [r3]
	adds r2, r2, r0
	str r2, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	mov r0, r8
	adds r3, r0, r1
	ldrb r0, [r4, #0x10]
	strb r0, [r3]
	ldrb r0, [r3]
	adds r2, r2, r0
	str r2, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	mov r0, r8
	adds r3, r0, r1
	ldrb r0, [r4, #0x11]
	strb r0, [r3]
	ldrb r0, [r3]
	adds r2, r2, r0
	str r2, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	mov r0, r8
	adds r3, r0, r1
	ldrb r0, [r4, #0x1f]
	strb r0, [r3]
	ldrb r0, [r3]
	adds r2, r2, r0
	str r2, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	mov r0, r8
	adds r3, r0, r1
	ldrb r0, [r4, #0x12]
	strb r0, [r3]
	ldrb r0, [r3]
	adds r2, r2, r0
	str r2, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	mov r0, r8
	adds r3, r0, r1
	ldrb r0, [r4, #0x13]
	strb r0, [r3]
	ldrb r0, [r3]
	adds r2, r2, r0
	str r2, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	mov r0, r8
	adds r3, r0, r1
	ldrb r0, [r4, #0x14]
	strb r0, [r3]
	ldrb r0, [r3]
	adds r2, r2, r0
	str r2, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	mov r0, r8
	adds r3, r0, r1
	ldrb r0, [r4, #0x15]
	strb r0, [r3]
	ldrb r0, [r3]
	adds r2, r2, r0
	str r2, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	mov r0, r8
	adds r3, r0, r1
	ldrb r0, [r4, #0x16]
	strb r0, [r3]
	ldrb r0, [r3]
	adds r2, r2, r0
	str r2, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	mov r0, r8
	adds r3, r0, r1
	b _08034DA4
	.align 2, 0
_08034D7C: .4byte 0x0203E93A
_08034D80: .4byte 0x0203E93C
_08034D84: .4byte 0x0203E93B
_08034D88: .4byte 0x0203E140
_08034D8C: .4byte 0x0203E16C
_08034D90: .4byte 0x0203E110
_08034D94: .4byte 0x0203E116
_08034D98: .4byte 0x0203E170
_08034D9C: .4byte 0x0203E8D8
_08034DA0: .4byte 0x0203E440
_08034DA4:
	ldrb r0, [r4, #0x17]
	strb r0, [r3]
	ldrb r0, [r3]
	adds r2, r2, r0
	str r2, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	mov r0, r8
	adds r3, r0, r1
	ldrb r0, [r4, #0x18]
	strb r0, [r3]
	ldrb r0, [r3]
	adds r2, r2, r0
	str r2, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	mov r0, r8
	adds r3, r0, r1
	ldrb r0, [r4, #0x19]
	strb r0, [r3]
	ldrb r0, [r3]
	adds r2, r2, r0
	str r2, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	mov r0, r8
	adds r3, r0, r1
	ldrb r0, [r4, #0x1a]
	strb r0, [r3]
	ldrb r0, [r3]
	adds r2, r2, r0
	str r2, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	mov r0, r8
	adds r3, r0, r1
	ldrb r0, [r4, #0x1b]
	strb r0, [r3]
	ldrb r0, [r3]
	adds r2, r2, r0
	str r2, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	mov r0, r8
	adds r3, r0, r1
	ldrb r0, [r4, #0x1c]
	strb r0, [r3]
	ldrb r0, [r3]
	adds r2, r2, r0
	str r2, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	mov r0, r8
	adds r3, r0, r1
	adds r0, r4, #0
	adds r0, #0x22
	ldrb r0, [r0]
	strb r0, [r3]
	ldrb r0, [r3]
	adds r2, r2, r0
	str r2, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	mov r0, r8
	adds r3, r0, r1
	adds r0, r4, #0
	adds r0, #0x23
	ldrb r0, [r0]
	strb r0, [r3]
	ldrb r0, [r3]
	adds r2, r2, r0
	str r2, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	mov r0, r8
	adds r3, r0, r1
	adds r0, r4, #0
	adds r0, #0x24
	ldrb r0, [r0]
	strb r0, [r3]
	ldrb r0, [r3]
	adds r2, r2, r0
	str r2, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	mov r0, r8
	adds r3, r0, r1
	adds r0, r4, #0
	adds r0, #0x25
	ldrb r0, [r0]
	strb r0, [r3]
	ldrb r0, [r3]
	adds r2, r2, r0
	str r2, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	mov r0, r8
	adds r3, r0, r1
	ldrb r0, [r4, #0x1d]
	strb r0, [r3]
	ldrb r0, [r3]
	adds r2, r2, r0
	str r2, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	mov r0, r8
	adds r3, r0, r1
	ldrb r0, [r4, #0x1e]
	strb r0, [r3]
	ldrb r0, [r3]
	adds r2, r2, r0
	str r2, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	mov r0, r8
	adds r3, r0, r1
	adds r0, r4, #0
	adds r0, #0x20
	ldrb r0, [r0]
	strb r0, [r3]
	ldrb r0, [r3]
	adds r2, r2, r0
	str r2, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	mov r0, r8
	adds r3, r0, r1
	adds r0, r4, #0
	adds r0, #0x21
	ldrb r0, [r0]
	strb r0, [r3]
	ldrb r0, [r3]
	adds r2, r2, r0
	str r2, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	mov r4, r8
	adds r3, r4, r1
	add r5, sb
	ldrb r0, [r5]
	strb r0, [r3]
	ldrb r0, [r3]
	adds r2, r2, r0
	str r2, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	adds r3, r4, r1
	ldrb r0, [r5, #1]
	strb r0, [r3]
	ldrb r0, [r3]
	adds r2, r2, r0
	str r2, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	adds r3, r4, r1
	ldrb r0, [r5, #2]
	strb r0, [r3]
	ldrb r0, [r3]
	adds r2, r2, r0
	str r2, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	ldr r5, [sp, #0x24]
	adds r5, #1
	str r5, [sp, #0x24]
	cmp r5, #5
	bgt _08034EF4
	b _08034A36
_08034EF4:
	movs r1, #0
	str r1, [sp, #0x14]
	add r0, sp, #0xc
	strb r1, [r0]
	movs r7, #0
	str r7, [sp, #0x24]
	ldr r0, [sp, #0x34]
	mov sb, r0
	ldr r7, [sp, #0x38]
	ldr r1, [sp, #0x3c]
	mov sl, r1
	movs r2, #0
	str r2, [sp, #0x44]
	ldr r3, _080352F8
	str r3, [sp, #0x48]
	movs r4, #0
	str r4, [sp, #0x4c]
	mov r5, sp
	adds r5, #0x18
	str r5, [sp, #0x28]
	mov r6, sp
	adds r6, #0x10
	str r6, [sp, #0x2c]
_08034F22:
	ldr r0, _080352F8
	adds r0, #0x1c
	ldr r1, [sp, #0x4c]
	adds r0, r1, r0
	ldr r0, [r0]
	str r0, [sp]
	ldr r2, [sp, #0x48]
	ldrb r0, [r2]
	str r0, [sp, #4]
	mov r3, sl
	str r3, [sp, #8]
	mov r0, r8
	mov r1, sb
	add r2, sp, #0xc
	adds r3, r7, #0
	bl sub_8038914
	ldr r0, _080352F8
	adds r0, #0x20
	ldr r4, [sp, #0x4c]
	adds r0, r4, r0
	ldr r0, [r0]
	str r0, [sp]
	ldr r5, [sp, #0x48]
	ldrb r0, [r5, #1]
	str r0, [sp, #4]
	mov r6, sl
	str r6, [sp, #8]
	mov r0, r8
	mov r1, sb
	add r2, sp, #0xc
	adds r3, r7, #0
	bl sub_8038914
	ldr r0, _080352F8
	adds r0, #0x24
	adds r0, r4, r0
	ldr r0, [r0]
	str r0, [sp]
	ldrb r0, [r5, #2]
	str r0, [sp, #4]
	str r6, [sp, #8]
	mov r0, r8
	mov r1, sb
	add r2, sp, #0xc
	adds r3, r7, #0
	bl sub_8038914
	ldr r0, _080352F8
	adds r0, #0x28
	adds r0, r4, r0
	ldr r0, [r0]
	str r0, [sp]
	ldrb r0, [r5, #3]
	str r0, [sp, #4]
	str r6, [sp, #8]
	mov r0, r8
	mov r1, sb
	add r2, sp, #0xc
	adds r3, r7, #0
	bl sub_8038914
	ldr r0, _080352F8
	adds r0, #0x2c
	adds r0, r4, r0
	ldr r0, [r0]
	str r0, [sp]
	ldrb r0, [r5, #4]
	str r0, [sp, #4]
	str r6, [sp, #8]
	mov r0, r8
	mov r1, sb
	add r2, sp, #0xc
	adds r3, r7, #0
	bl sub_8038914
	ldr r0, _080352F8
	adds r0, #0x30
	adds r0, r4, r0
	ldr r0, [r0]
	str r0, [sp]
	ldrb r0, [r5, #5]
	str r0, [sp, #4]
	str r6, [sp, #8]
	mov r0, r8
	mov r1, sb
	add r2, sp, #0xc
	adds r3, r7, #0
	bl sub_8038914
	ldr r0, _080352F8
	adds r0, #0x34
	adds r0, r4, r0
	ldr r0, [r0]
	str r0, [sp]
	ldrb r0, [r5, #6]
	str r0, [sp, #4]
	str r6, [sp, #8]
	mov r0, r8
	mov r1, sb
	add r2, sp, #0xc
	adds r3, r7, #0
	bl sub_8038914
	ldr r0, _080352F8
	adds r0, #0x38
	adds r0, r4, r0
	ldr r0, [r0]
	str r0, [sp]
	ldrb r0, [r5, #7]
	str r0, [sp, #4]
	str r6, [sp, #8]
	mov r0, r8
	mov r1, sb
	add r2, sp, #0xc
	adds r3, r7, #0
	bl sub_8038914
	ldr r0, _080352F8
	adds r0, #0x3c
	adds r0, r4, r0
	ldr r0, [r0]
	str r0, [sp]
	ldrb r0, [r5, #8]
	str r0, [sp, #4]
	str r6, [sp, #8]
	mov r0, r8
	mov r1, sb
	add r2, sp, #0xc
	adds r3, r7, #0
	bl sub_8038914
	ldr r0, _080352F8
	adds r0, #0x40
	adds r0, r4, r0
	ldr r0, [r0]
	str r0, [sp]
	ldrb r0, [r5, #9]
	str r0, [sp, #4]
	str r6, [sp, #8]
	mov r0, r8
	mov r1, sb
	add r2, sp, #0xc
	adds r3, r7, #0
	bl sub_8038914
	ldr r0, _080352F8
	adds r0, #0x44
	adds r0, r4, r0
	ldr r0, [r0]
	str r0, [sp]
	ldrb r0, [r5, #0xa]
	str r0, [sp, #4]
	str r6, [sp, #8]
	mov r0, r8
	mov r1, sb
	add r2, sp, #0xc
	adds r3, r7, #0
	bl sub_8038914
	ldr r0, _080352F8
	adds r0, #0x48
	adds r0, r4, r0
	ldr r0, [r0]
	str r0, [sp]
	ldrb r0, [r5, #0xb]
	str r0, [sp, #4]
	str r6, [sp, #8]
	mov r0, r8
	mov r1, sb
	add r2, sp, #0xc
	adds r3, r7, #0
	bl sub_8038914
	ldr r0, _080352F8
	adds r0, #0x4c
	adds r0, r4, r0
	ldr r0, [r0]
	str r0, [sp]
	ldrb r0, [r5, #0xc]
	str r0, [sp, #4]
	str r6, [sp, #8]
	mov r0, r8
	mov r1, sb
	add r2, sp, #0xc
	adds r3, r7, #0
	bl sub_8038914
	ldr r0, _080352F8
	adds r0, #0x50
	adds r0, r4, r0
	ldr r0, [r0]
	str r0, [sp]
	ldrb r0, [r5, #0xd]
	str r0, [sp, #4]
	str r6, [sp, #8]
	mov r0, r8
	mov r1, sb
	add r2, sp, #0xc
	adds r3, r7, #0
	bl sub_8038914
	ldr r0, _080352F8
	adds r0, #0x54
	adds r0, r4, r0
	ldr r0, [r0]
	str r0, [sp]
	ldrb r0, [r5, #0xe]
	str r0, [sp, #4]
	str r6, [sp, #8]
	mov r0, r8
	mov r1, sb
	add r2, sp, #0xc
	adds r3, r7, #0
	bl sub_8038914
	ldr r0, _080352F8
	adds r0, #0x58
	adds r0, r4, r0
	ldr r0, [r0]
	str r0, [sp]
	ldrb r0, [r5, #0xf]
	str r0, [sp, #4]
	str r6, [sp, #8]
	mov r0, r8
	mov r1, sb
	add r2, sp, #0xc
	adds r3, r7, #0
	bl sub_8038914
	ldr r0, _080352F8
	adds r0, #0x5c
	adds r0, r4, r0
	ldr r0, [r0]
	str r0, [sp]
	ldrb r0, [r5, #0x10]
	str r0, [sp, #4]
	str r6, [sp, #8]
	mov r0, r8
	mov r1, sb
	add r2, sp, #0xc
	adds r3, r7, #0
	bl sub_8038914
	ldr r0, _080352F8
	adds r0, #0x60
	adds r0, r4, r0
	ldr r0, [r0]
	str r0, [sp]
	ldrb r0, [r5, #0x11]
	str r0, [sp, #4]
	str r6, [sp, #8]
	mov r0, r8
	mov r1, sb
	add r2, sp, #0xc
	adds r3, r7, #0
	bl sub_8038914
	ldr r0, _080352F8
	adds r0, #0x64
	adds r0, r4, r0
	ldr r0, [r0]
	str r0, [sp]
	ldrb r0, [r5, #0x12]
	str r0, [sp, #4]
	str r6, [sp, #8]
	mov r0, r8
	mov r1, sb
	add r2, sp, #0xc
	adds r3, r7, #0
	bl sub_8038914
	ldr r0, _080352F8
	adds r0, #0x68
	adds r0, r4, r0
	ldr r0, [r0]
	str r0, [sp]
	ldrb r0, [r5, #0x13]
	str r0, [sp, #4]
	str r6, [sp, #8]
	mov r0, r8
	mov r1, sb
	add r2, sp, #0xc
	adds r3, r7, #0
	bl sub_8038914
	ldr r0, _080352F8
	adds r0, #0x6c
	adds r0, r4, r0
	ldr r0, [r0]
	str r0, [sp]
	ldrb r0, [r5, #0x14]
	str r0, [sp, #4]
	str r6, [sp, #8]
	mov r0, r8
	mov r1, sb
	add r2, sp, #0xc
	adds r3, r7, #0
	bl sub_8038914
	ldr r0, _080352F8
	adds r0, #0x70
	adds r0, r4, r0
	str r0, [sp]
	movs r4, #1
	str r4, [sp, #4]
	str r6, [sp, #8]
	mov r0, r8
	mov r1, sb
	add r2, sp, #0xc
	adds r3, r7, #0
	bl sub_8038914
	ldr r0, _080352F8
	adds r0, #0x71
	ldr r1, [sp, #0x4c]
	adds r0, r1, r0
	str r0, [sp]
	str r4, [sp, #4]
	str r6, [sp, #8]
	mov r0, r8
	mov r1, sb
	add r2, sp, #0xc
	adds r3, r7, #0
	bl sub_8038914
	ldr r0, _080352F8
	adds r0, #0x72
	ldr r2, [sp, #0x4c]
	adds r0, r2, r0
	str r0, [sp]
	str r4, [sp, #4]
	str r6, [sp, #8]
	mov r0, r8
	mov r1, sb
	add r2, sp, #0xc
	adds r3, r7, #0
	bl sub_8038914
	ldr r0, _080352F8
	adds r0, #0x73
	ldr r3, [sp, #0x4c]
	adds r0, r3, r0
	str r0, [sp]
	str r4, [sp, #4]
	str r6, [sp, #8]
	mov r0, r8
	mov r1, sb
	add r2, sp, #0xc
	adds r3, r7, #0
	bl sub_8038914
	ldr r0, _080352F8
	adds r0, #0x74
	ldr r5, [sp, #0x4c]
	adds r0, r5, r0
	str r0, [sp]
	str r4, [sp, #4]
	str r6, [sp, #8]
	mov r0, r8
	mov r1, sb
	add r2, sp, #0xc
	adds r3, r7, #0
	bl sub_8038914
	ldr r6, _080352FC
	adds r0, r5, r6
	str r0, [sp]
	str r4, [sp, #4]
	mov r0, sl
	str r0, [sp, #8]
	mov r0, r8
	mov r1, sb
	add r2, sp, #0xc
	adds r3, r7, #0
	bl sub_8038914
	ldr r0, _08035300
	str r0, [sp]
	movs r0, #6
	str r0, [sp, #4]
	mov r1, sl
	str r1, [sp, #8]
	mov r0, r8
	mov r1, sb
	add r2, sp, #0xc
	adds r3, r7, #0
	bl sub_8038914
	movs r0, #0xc4
	ldr r2, [sp, #0x24]
	adds r4, r2, #0
	muls r4, r0, r4
	ldr r3, _08035304
	adds r0, r4, r3
	ldr r0, [r0]
	str r0, [sp]
	ldr r6, _08035308
	adds r5, r4, r6
	ldrb r0, [r5]
	str r0, [sp, #4]
	mov r0, sl
	str r0, [sp, #8]
	mov r0, r8
	mov r1, sb
	add r2, sp, #0xc
	adds r3, r7, #0
	bl sub_8038914
	adds r0, r6, #0
	adds r0, #0x2c
	adds r0, r4, r0
	ldr r0, [r0]
	str r0, [sp]
	ldrb r0, [r5, #1]
	str r0, [sp, #4]
	mov r1, sl
	str r1, [sp, #8]
	mov r0, r8
	mov r1, sb
	add r2, sp, #0xc
	adds r3, r7, #0
	bl sub_8038914
	adds r0, r6, #0
	adds r0, #0x30
	adds r0, r4, r0
	ldr r0, [r0]
	str r0, [sp]
	ldrb r0, [r5, #2]
	str r0, [sp, #4]
	mov r2, sl
	str r2, [sp, #8]
	mov r0, r8
	mov r1, sb
	add r2, sp, #0xc
	adds r3, r7, #0
	bl sub_8038914
	adds r0, r6, #0
	adds r0, #0x34
	adds r0, r4, r0
	ldr r0, [r0]
	str r0, [sp]
	ldrb r0, [r5, #3]
	str r0, [sp, #4]
	mov r3, sl
	str r3, [sp, #8]
	mov r0, r8
	mov r1, sb
	add r2, sp, #0xc
	adds r3, r7, #0
	bl sub_8038914
	adds r0, r6, #0
	adds r0, #0x38
	adds r0, r4, r0
	ldr r0, [r0]
	str r0, [sp]
	ldrb r0, [r5, #4]
	str r0, [sp, #4]
	mov r6, sl
	str r6, [sp, #8]
	mov r0, r8
	mov r1, sb
	add r2, sp, #0xc
	adds r3, r7, #0
	bl sub_8038914
	ldr r0, _08035308
	adds r0, #0x3c
	adds r0, r4, r0
	ldr r0, [r0]
	str r0, [sp]
	ldrb r0, [r5, #5]
	str r0, [sp, #4]
	str r6, [sp, #8]
	mov r0, r8
	mov r1, sb
	add r2, sp, #0xc
	adds r3, r7, #0
	bl sub_8038914
	ldr r0, _08035308
	adds r0, #0x40
	adds r0, r4, r0
	ldr r0, [r0]
	str r0, [sp]
	ldrb r0, [r5, #6]
	str r0, [sp, #4]
	b _0803530C
	.align 2, 0
_080352F8: .4byte 0x0203E170
_080352FC: .4byte 0x0203E1E5
_08035300: .4byte 0x0203E11C
_08035304: .4byte 0x0203E468
_08035308: .4byte 0x0203E440
_0803530C:
	str r6, [sp, #8]
	mov r0, r8
	mov r1, sb
	add r2, sp, #0xc
	adds r3, r7, #0
	bl sub_8038914
	ldr r0, _080356FC
	adds r0, #0x44
	adds r0, r4, r0
	ldr r0, [r0]
	str r0, [sp]
	ldrb r0, [r5, #7]
	str r0, [sp, #4]
	str r6, [sp, #8]
	mov r0, r8
	mov r1, sb
	add r2, sp, #0xc
	adds r3, r7, #0
	bl sub_8038914
	ldr r0, _080356FC
	adds r0, #0x48
	adds r0, r4, r0
	ldr r0, [r0]
	str r0, [sp]
	ldrb r0, [r5, #8]
	str r0, [sp, #4]
	str r6, [sp, #8]
	mov r0, r8
	mov r1, sb
	add r2, sp, #0xc
	adds r3, r7, #0
	bl sub_8038914
	ldr r0, _080356FC
	adds r0, #0x4c
	adds r0, r4, r0
	ldr r0, [r0]
	str r0, [sp]
	ldrb r0, [r5, #9]
	str r0, [sp, #4]
	str r6, [sp, #8]
	mov r0, r8
	mov r1, sb
	add r2, sp, #0xc
	adds r3, r7, #0
	bl sub_8038914
	ldr r0, _080356FC
	adds r0, #0x50
	adds r0, r4, r0
	ldr r0, [r0]
	str r0, [sp]
	ldrb r0, [r5, #0xa]
	str r0, [sp, #4]
	str r6, [sp, #8]
	mov r0, r8
	mov r1, sb
	add r2, sp, #0xc
	adds r3, r7, #0
	bl sub_8038914
	ldr r0, _080356FC
	adds r0, #0x54
	adds r0, r4, r0
	ldr r0, [r0]
	str r0, [sp]
	ldrb r0, [r5, #0xb]
	str r0, [sp, #4]
	str r6, [sp, #8]
	mov r0, r8
	mov r1, sb
	add r2, sp, #0xc
	adds r3, r7, #0
	bl sub_8038914
	ldr r0, _080356FC
	adds r0, #0x58
	adds r0, r4, r0
	ldr r0, [r0]
	str r0, [sp]
	ldrb r0, [r5, #0xc]
	str r0, [sp, #4]
	str r6, [sp, #8]
	mov r0, r8
	mov r1, sb
	add r2, sp, #0xc
	adds r3, r7, #0
	bl sub_8038914
	ldr r1, _08035700
	adds r0, r1, r4
	ldr r0, [r0]
	str r0, [sp]
	ldrb r0, [r5, #0xd]
	str r0, [sp, #4]
	ldr r2, [sp, #0x28]
	str r2, [sp, #8]
	mov r0, r8
	mov r1, sb
	add r2, sp, #0xc
	adds r3, r7, #0
	bl sub_8038914
	add r6, sp, #0x14
	ldr r0, _080356FC
	adds r0, #0x60
	adds r0, r4, r0
	ldr r0, [r0]
	str r0, [sp]
	ldrb r0, [r5, #0xe]
	str r0, [sp, #4]
	ldr r3, [sp, #0x28]
	str r3, [sp, #8]
	mov r0, r8
	ldr r1, [sp, #0x2c]
	add r2, sp, #0xc
	adds r3, r6, #0
	bl sub_8038914
	ldr r0, _080356FC
	adds r0, #0x64
	adds r0, r4, r0
	ldr r0, [r0]
	str r0, [sp]
	ldrb r0, [r5, #0xf]
	str r0, [sp, #4]
	ldr r0, [sp, #0x28]
	str r0, [sp, #8]
	mov r0, r8
	ldr r1, [sp, #0x2c]
	add r2, sp, #0xc
	adds r3, r6, #0
	bl sub_8038914
	ldr r0, _080356FC
	adds r0, #0x68
	adds r0, r4, r0
	ldr r0, [r0]
	str r0, [sp]
	ldrb r0, [r5, #0x10]
	str r0, [sp, #4]
	ldr r1, [sp, #0x28]
	str r1, [sp, #8]
	mov r0, r8
	ldr r1, [sp, #0x2c]
	add r2, sp, #0xc
	adds r3, r6, #0
	bl sub_8038914
	ldr r0, _080356FC
	adds r0, #0x6c
	adds r0, r4, r0
	ldr r0, [r0]
	str r0, [sp]
	ldrb r0, [r5, #0x11]
	str r0, [sp, #4]
	ldr r2, [sp, #0x28]
	str r2, [sp, #8]
	mov r0, r8
	ldr r1, [sp, #0x2c]
	add r2, sp, #0xc
	adds r3, r6, #0
	bl sub_8038914
	ldr r0, _080356FC
	adds r0, #0x70
	adds r0, r4, r0
	ldr r0, [r0]
	str r0, [sp]
	ldrb r0, [r5, #0x1f]
	str r0, [sp, #4]
	ldr r3, [sp, #0x28]
	str r3, [sp, #8]
	mov r0, r8
	ldr r1, [sp, #0x2c]
	add r2, sp, #0xc
	adds r3, r6, #0
	bl sub_8038914
	ldr r0, _080356FC
	adds r0, #0x7c
	adds r0, r4, r0
	ldr r0, [r0]
	str r0, [sp]
	adds r0, r5, #0
	adds r0, #0x22
	ldrb r0, [r0]
	str r0, [sp, #4]
	ldr r0, [sp, #0x28]
	str r0, [sp, #8]
	mov r0, r8
	ldr r1, [sp, #0x2c]
	add r2, sp, #0xc
	adds r3, r6, #0
	bl sub_8038914
	ldr r0, _080356FC
	adds r0, #0x80
	adds r0, r4, r0
	ldr r0, [r0]
	str r0, [sp]
	adds r0, r5, #0
	adds r0, #0x23
	ldrb r0, [r0]
	str r0, [sp, #4]
	ldr r1, [sp, #0x28]
	str r1, [sp, #8]
	mov r0, r8
	ldr r1, [sp, #0x2c]
	add r2, sp, #0xc
	adds r3, r6, #0
	bl sub_8038914
	ldr r0, _080356FC
	adds r0, #0x84
	adds r0, r4, r0
	ldr r0, [r0]
	str r0, [sp]
	adds r0, r5, #0
	adds r0, #0x24
	ldrb r0, [r0]
	str r0, [sp, #4]
	ldr r2, [sp, #0x28]
	str r2, [sp, #8]
	mov r0, r8
	ldr r1, [sp, #0x2c]
	add r2, sp, #0xc
	adds r3, r6, #0
	bl sub_8038914
	ldr r0, _080356FC
	adds r0, #0x88
	adds r0, r4, r0
	ldr r0, [r0]
	str r0, [sp]
	adds r0, r5, #0
	adds r0, #0x25
	ldrb r0, [r0]
	str r0, [sp, #4]
	ldr r3, [sp, #0x28]
	str r3, [sp, #8]
	mov r0, r8
	ldr r1, [sp, #0x2c]
	add r2, sp, #0xc
	adds r3, r6, #0
	bl sub_8038914
	ldr r1, _08035704
	adds r0, r4, r1
	ldr r0, [r0]
	str r0, [sp]
	adds r0, r5, #0
	adds r0, #0x20
	ldrb r0, [r0]
	str r0, [sp, #4]
	ldr r2, [sp, #0x28]
	str r2, [sp, #8]
	mov r0, r8
	ldr r1, [sp, #0x2c]
	add r2, sp, #0xc
	adds r3, r6, #0
	bl sub_8038914
	ldr r3, _08035708
	adds r4, r4, r3
	ldr r0, [r4]
	str r0, [sp]
	adds r0, r5, #0
	adds r0, #0x21
	ldrb r0, [r0]
	str r0, [sp, #4]
	ldr r4, [sp, #0x28]
	str r4, [sp, #8]
	mov r0, r8
	ldr r1, [sp, #0x2c]
	add r2, sp, #0xc
	adds r3, r6, #0
	bl sub_8038914
	ldr r4, _0803570C
	adds r0, r4, #4
	ldr r5, [sp, #0x44]
	adds r0, r5, r0
	ldr r0, [r0]
	str r0, [sp]
	adds r5, r5, r4
	ldrb r0, [r5]
	str r0, [sp, #4]
	ldr r0, [sp, #0x28]
	str r0, [sp, #8]
	mov r0, r8
	ldr r1, [sp, #0x2c]
	add r2, sp, #0xc
	adds r3, r6, #0
	bl sub_8038914
	adds r0, r4, #0
	adds r0, #8
	ldr r1, [sp, #0x44]
	adds r0, r1, r0
	ldr r0, [r0]
	str r0, [sp]
	ldrb r0, [r5, #1]
	str r0, [sp, #4]
	ldr r2, [sp, #0x28]
	str r2, [sp, #8]
	mov r0, r8
	ldr r1, [sp, #0x2c]
	add r2, sp, #0xc
	adds r3, r6, #0
	bl sub_8038914
	adds r4, #0xc
	ldr r3, [sp, #0x44]
	adds r4, r3, r4
	ldr r0, [r4]
	str r0, [sp]
	ldrb r0, [r5, #2]
	str r0, [sp, #4]
	ldr r4, [sp, #0x28]
	str r4, [sp, #8]
	mov r0, r8
	ldr r1, [sp, #0x2c]
	add r2, sp, #0xc
	adds r3, r6, #0
	bl sub_8038914
	ldr r5, [sp, #0x44]
	adds r5, #0x10
	str r5, [sp, #0x44]
	ldr r6, [sp, #0x48]
	adds r6, #0x78
	str r6, [sp, #0x48]
	ldr r0, [sp, #0x4c]
	adds r0, #0x78
	str r0, [sp, #0x4c]
	ldr r1, [sp, #0x24]
	adds r1, #1
	str r1, [sp, #0x24]
	cmp r1, #5
	bgt _080355BC
	b _08034F22
_080355BC:
	ldr r0, _08035710
	str r0, [sp]
	movs r0, #0x13
	str r0, [sp, #4]
	ldr r2, [sp, #0x3c]
	str r2, [sp, #8]
	mov r0, r8
	ldr r1, [sp, #0x34]
	add r2, sp, #0xc
	ldr r3, [sp, #0x38]
	bl sub_8038914
	ldr r3, [sp, #0x14]
	cmp r3, #0
	beq _080355FC
	add r2, sp, #0xc
	adds r0, r2, #0
	ldrb r1, [r0]
	movs r0, #7
	subs r0, r0, r3
	lsls r1, r0
	strb r1, [r2]
	ldr r2, [sp, #0x10]
	mov r3, r8
	adds r0, r3, r2
	strb r1, [r0]
	ldrb r1, [r0]
	ldr r0, [sp, #0x18]
	adds r0, r0, r1
	str r0, [sp, #0x18]
	adds r2, #1
	str r2, [sp, #0x10]
_080355FC:
	movs r4, #0
	str r4, [sp, #0x24]
_08035600:
	movs r6, #0
	movs r0, #0xc4
	ldr r5, [sp, #0x24]
	adds r1, r5, #0
	muls r1, r0, r1
	ldr r7, _080356FC
	adds r0, r1, r7
	ldrb r0, [r0, #0x12]
	cmp r6, r0
	blt _08035616
	b _080357DC
_08035616:
	ldr r0, _08035714
	adds r0, r0, r1
	mov sb, r0
	ldr r0, _08035714
	subs r0, #0x90
	adds r1, r1, r0
	str r1, [sp, #0x30]
_08035624:
	ldr r2, [sp, #0x10]
	mov r3, r8
	adds r1, r3, r2
	mov r4, sb
	ldr r0, [r4]
	lsls r5, r6, #4
	adds r0, r5, r0
	ldrb r0, [r0, #1]
	strb r0, [r1]
	ldrb r0, [r1]
	ldr r1, [sp, #0x18]
	adds r1, r1, r0
	str r1, [sp, #0x18]
	adds r2, #1
	str r2, [sp, #0x10]
	adds r3, r3, r2
	ldr r0, [r4]
	adds r0, r5, r0
	ldrb r0, [r0, #2]
	strb r0, [r3]
	ldrb r0, [r3]
	adds r1, r1, r0
	str r1, [sp, #0x18]
	adds r2, #1
	str r2, [sp, #0x10]
	mov r7, r8
	adds r3, r7, r2
	ldr r0, [r4]
	adds r0, r5, r0
	ldrb r0, [r0, #3]
	strb r0, [r3]
	ldrb r0, [r3]
	adds r1, r1, r0
	str r1, [sp, #0x18]
	adds r2, #1
	str r2, [sp, #0x10]
	adds r3, r7, r2
	ldr r0, [r4]
	adds r0, r5, r0
	ldrb r0, [r0, #4]
	strb r0, [r3]
	ldrb r0, [r3]
	adds r1, r1, r0
	str r1, [sp, #0x18]
	adds r2, #1
	str r2, [sp, #0x10]
	movs r0, #0
	mov sl, r0
	ldr r0, [r4]
	adds r0, r5, r0
	mov ip, r5
	adds r6, #1
	str r6, [sp, #0x40]
	ldrb r0, [r0]
	cmp sl, r0
	blt _08035696
	b _080357D0
_08035696:
	movs r0, #0xc4
	ldr r1, [sp, #0x24]
	muls r0, r1, r0
	ldr r2, _08035714
	adds r7, r0, r2
_080356A0:
	ldr r1, [sp, #0x10]
	mov r3, r8
	adds r2, r3, r1
	ldr r0, [r7]
	adds r0, r5, r0
	ldr r0, [r0, #0xc]
	mov r4, sl
	lsls r6, r4, #3
	adds r0, r6, r0
	ldrb r0, [r0]
	strb r0, [r2]
	ldrb r0, [r2]
	ldr r2, [sp, #0x18]
	adds r2, r2, r0
	str r2, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	adds r3, r3, r1
	ldr r0, [r7]
	adds r0, r5, r0
	ldr r0, [r0, #0xc]
	adds r0, r6, r0
	ldrb r0, [r0, #1]
	strb r0, [r3]
	ldrb r0, [r3]
	adds r2, r2, r0
	str r2, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	mov r0, r8
	adds r3, r0, r1
	ldr r0, [r7]
	adds r0, r5, r0
	ldr r0, [r0, #0xc]
	adds r0, r6, r0
	ldrb r0, [r0, #2]
	strb r0, [r3]
	ldrb r0, [r3]
	adds r2, r2, r0
	str r2, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	mov r4, r8
	adds r3, r4, r1
	b _08035718
	.align 2, 0
_080356FC: .4byte 0x0203E440
_08035700: .4byte 0x0203E49C
_08035704: .4byte 0x0203E4B4
_08035708: .4byte 0x0203E4B8
_0803570C: .4byte 0x0203E8D8
_08035710: .4byte 0x0203E0FC
_08035714: .4byte 0x0203E4D0
_08035718:
	ldr r0, [r7]
	adds r0, r5, r0
	ldr r0, [r0, #0xc]
	adds r0, r6, r0
	ldrb r0, [r0, #3]
	strb r0, [r3]
	ldrb r0, [r3]
	adds r2, r2, r0
	str r2, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	adds r3, r4, r1
	ldr r0, [r7]
	adds r0, r5, r0
	ldr r0, [r0, #0xc]
	adds r0, r6, r0
	ldrh r0, [r0, #4]
	strb r0, [r3]
	ldrb r0, [r3]
	adds r2, r2, r0
	str r2, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	adds r3, r4, r1
	ldr r0, [r7]
	adds r0, r5, r0
	ldr r0, [r0, #0xc]
	adds r0, r6, r0
	ldrh r0, [r0, #4]
	lsrs r0, r0, #8
	strb r0, [r3]
	ldrb r0, [r3]
	adds r3, r2, r0
	str r3, [sp, #0x18]
	adds r2, r1, #1
	str r2, [sp, #0x10]
	ldr r0, [r7]
	adds r0, r5, r0
	ldr r0, [r0, #0xc]
	adds r4, r6, r0
	ldrh r0, [r4]
	ldr r1, _0803578C
	cmp r0, r1
	bne _08035790
	mov r4, r8
	adds r1, r4, r2
	movs r0, #1
	strb r0, [r1]
	adds r3, #1
	adds r1, r2, #1
	adds r2, r4, r1
	movs r0, #0
	strb r0, [r2]
	str r3, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	b _080357BE
	.align 2, 0
_0803578C: .4byte 0x00000101
_08035790:
	mov r0, r8
	adds r1, r0, r2
	ldrh r0, [r4, #6]
	strb r0, [r1]
	ldrb r1, [r1]
	adds r1, r3, r1
	str r1, [sp, #0x18]
	adds r2, #1
	str r2, [sp, #0x10]
	mov r4, r8
	adds r3, r4, r2
	ldr r0, [r7]
	adds r0, r5, r0
	ldr r0, [r0, #0xc]
	adds r0, r6, r0
	ldrh r0, [r0, #6]
	lsrs r0, r0, #8
	strb r0, [r3]
	ldrb r0, [r3]
	adds r1, r1, r0
	str r1, [sp, #0x18]
	adds r2, #1
	str r2, [sp, #0x10]
_080357BE:
	movs r5, #1
	add sl, r5
	ldr r0, [r7]
	mov r5, ip
	adds r0, r5, r0
	ldrb r0, [r0]
	cmp sl, r0
	bge _080357D0
	b _080356A0
_080357D0:
	ldr r6, [sp, #0x40]
	ldr r7, [sp, #0x30]
	ldrb r7, [r7, #0x12]
	cmp r6, r7
	bge _080357DC
	b _08035624
_080357DC:
	ldr r0, [sp, #0x24]
	adds r0, #1
	str r0, [sp, #0x24]
	cmp r0, #5
	bgt _080357E8
	b _08035600
_080357E8:
	movs r1, #0
	str r1, [sp, #0x24]
	ldr r5, _08035B74
	movs r2, #0xc4
	mov sl, r2
	mov sb, r5
	movs r7, #0xc4
_080357F6:
	movs r6, #0
	ldr r3, [sp, #0x24]
	mov r0, sl
	muls r0, r3, r0
	adds r0, r0, r5
	adds r3, #1
	mov ip, r3
	ldrb r0, [r0, #0x13]
	cmp r6, r0
	bge _0803583A
	ldr r4, [sp, #0x24]
	adds r1, r4, #0
	muls r1, r7, r1
	ldr r0, _08035B78
	adds r4, r1, r0
	mov r0, sb
	adds r3, r1, r0
_08035818:
	ldr r2, [sp, #0x10]
	mov r0, r8
	adds r1, r0, r2
	ldr r0, [r4]
	adds r0, r0, r6
	ldrb r0, [r0]
	strb r0, [r1]
	ldrb r1, [r1]
	ldr r0, [sp, #0x18]
	adds r0, r0, r1
	str r0, [sp, #0x18]
	adds r2, #1
	str r2, [sp, #0x10]
	adds r6, #1
	ldrb r1, [r3, #0x13]
	cmp r6, r1
	blt _08035818
_0803583A:
	movs r6, #0
	ldr r2, [sp, #0x24]
	mov r0, sl
	muls r0, r2, r0
	adds r0, r0, r5
	ldrb r0, [r0, #0x14]
	cmp r6, r0
	bge _08035878
	adds r1, r2, #0
	muls r1, r7, r1
	ldr r0, _08035B7C
	adds r4, r1, r0
	mov r0, sb
	adds r3, r1, r0
_08035856:
	ldr r2, [sp, #0x10]
	mov r0, r8
	adds r1, r0, r2
	ldr r0, [r4]
	adds r0, r0, r6
	ldrb r0, [r0]
	strb r0, [r1]
	ldrb r1, [r1]
	ldr r0, [sp, #0x18]
	adds r0, r0, r1
	str r0, [sp, #0x18]
	adds r2, #1
	str r2, [sp, #0x10]
	adds r6, #1
	ldrb r1, [r3, #0x14]
	cmp r6, r1
	blt _08035856
_08035878:
	movs r6, #0
	ldr r2, [sp, #0x24]
	mov r0, sl
	muls r0, r2, r0
	adds r0, r0, r5
	ldrb r0, [r0, #0x15]
	cmp r6, r0
	bge _080358B6
	adds r1, r2, #0
	muls r1, r7, r1
	ldr r0, _08035B80
	adds r4, r1, r0
	mov r0, sb
	adds r3, r1, r0
_08035894:
	ldr r2, [sp, #0x10]
	mov r0, r8
	adds r1, r0, r2
	ldr r0, [r4]
	adds r0, r0, r6
	ldrb r0, [r0]
	strb r0, [r1]
	ldrb r1, [r1]
	ldr r0, [sp, #0x18]
	adds r0, r0, r1
	str r0, [sp, #0x18]
	adds r2, #1
	str r2, [sp, #0x10]
	adds r6, #1
	ldrb r1, [r3, #0x15]
	cmp r6, r1
	blt _08035894
_080358B6:
	movs r6, #0
	ldr r2, [sp, #0x24]
	mov r0, sl
	muls r0, r2, r0
	adds r0, r0, r5
	ldrb r0, [r0, #0x16]
	cmp r6, r0
	bge _080358F4
	adds r1, r2, #0
	muls r1, r7, r1
	ldr r0, _08035B84
	adds r4, r1, r0
	mov r0, sb
	adds r3, r1, r0
_080358D2:
	ldr r2, [sp, #0x10]
	mov r0, r8
	adds r1, r0, r2
	ldr r0, [r4]
	adds r0, r0, r6
	ldrb r0, [r0]
	strb r0, [r1]
	ldrb r1, [r1]
	ldr r0, [sp, #0x18]
	adds r0, r0, r1
	str r0, [sp, #0x18]
	adds r2, #1
	str r2, [sp, #0x10]
	adds r6, #1
	ldrb r1, [r3, #0x16]
	cmp r6, r1
	blt _080358D2
_080358F4:
	movs r6, #0
	ldr r2, [sp, #0x24]
	mov r0, sl
	muls r0, r2, r0
	adds r0, r0, r5
	ldrb r0, [r0, #0x17]
	cmp r6, r0
	bge _08035932
	adds r1, r2, #0
	muls r1, r7, r1
	ldr r0, _08035B88
	adds r4, r1, r0
	mov r0, sb
	adds r3, r1, r0
_08035910:
	ldr r2, [sp, #0x10]
	mov r0, r8
	adds r1, r0, r2
	ldr r0, [r4]
	adds r0, r0, r6
	ldrb r0, [r0]
	strb r0, [r1]
	ldrb r1, [r1]
	ldr r0, [sp, #0x18]
	adds r0, r0, r1
	str r0, [sp, #0x18]
	adds r2, #1
	str r2, [sp, #0x10]
	adds r6, #1
	ldrb r1, [r3, #0x17]
	cmp r6, r1
	blt _08035910
_08035932:
	movs r6, #0
	ldr r2, [sp, #0x24]
	mov r0, sl
	muls r0, r2, r0
	adds r0, r0, r5
	ldrb r0, [r0, #0x18]
	cmp r6, r0
	bge _08035970
	adds r1, r2, #0
	muls r1, r7, r1
	ldr r0, _08035B8C
	adds r4, r1, r0
	mov r0, sb
	adds r3, r1, r0
_0803594E:
	ldr r2, [sp, #0x10]
	mov r0, r8
	adds r1, r0, r2
	ldr r0, [r4]
	adds r0, r0, r6
	ldrb r0, [r0]
	strb r0, [r1]
	ldrb r1, [r1]
	ldr r0, [sp, #0x18]
	adds r0, r0, r1
	str r0, [sp, #0x18]
	adds r2, #1
	str r2, [sp, #0x10]
	adds r6, #1
	ldrb r1, [r3, #0x18]
	cmp r6, r1
	blt _0803594E
_08035970:
	movs r6, #0
	ldr r2, [sp, #0x24]
	mov r0, sl
	muls r0, r2, r0
	adds r0, r0, r5
	ldrb r0, [r0, #0x19]
	cmp r6, r0
	bge _080359AE
	adds r1, r2, #0
	muls r1, r7, r1
	ldr r0, _08035B90
	adds r4, r1, r0
	mov r0, sb
	adds r3, r1, r0
_0803598C:
	ldr r2, [sp, #0x10]
	mov r0, r8
	adds r1, r0, r2
	ldr r0, [r4]
	adds r0, r0, r6
	ldrb r0, [r0]
	strb r0, [r1]
	ldrb r1, [r1]
	ldr r0, [sp, #0x18]
	adds r0, r0, r1
	str r0, [sp, #0x18]
	adds r2, #1
	str r2, [sp, #0x10]
	adds r6, #1
	ldrb r1, [r3, #0x19]
	cmp r6, r1
	blt _0803598C
_080359AE:
	movs r6, #0
	ldr r2, [sp, #0x24]
	mov r0, sl
	muls r0, r2, r0
	adds r0, r0, r5
	ldrb r0, [r0, #0x1a]
	cmp r6, r0
	bge _080359EC
	adds r1, r2, #0
	muls r1, r7, r1
	ldr r0, _08035B94
	adds r4, r1, r0
	mov r0, sb
	adds r3, r1, r0
_080359CA:
	ldr r2, [sp, #0x10]
	mov r0, r8
	adds r1, r0, r2
	ldr r0, [r4]
	adds r0, r0, r6
	ldrb r0, [r0]
	strb r0, [r1]
	ldrb r1, [r1]
	ldr r0, [sp, #0x18]
	adds r0, r0, r1
	str r0, [sp, #0x18]
	adds r2, #1
	str r2, [sp, #0x10]
	adds r6, #1
	ldrb r1, [r3, #0x1a]
	cmp r6, r1
	blt _080359CA
_080359EC:
	movs r6, #0
	ldr r2, [sp, #0x24]
	mov r0, sl
	muls r0, r2, r0
	adds r0, r0, r5
	ldrb r0, [r0, #0x1b]
	cmp r6, r0
	bge _08035A2A
	adds r1, r2, #0
	muls r1, r7, r1
	ldr r0, _08035B98
	adds r4, r1, r0
	mov r0, sb
	adds r3, r1, r0
_08035A08:
	ldr r2, [sp, #0x10]
	mov r0, r8
	adds r1, r0, r2
	ldr r0, [r4]
	adds r0, r0, r6
	ldrb r0, [r0]
	strb r0, [r1]
	ldrb r1, [r1]
	ldr r0, [sp, #0x18]
	adds r0, r0, r1
	str r0, [sp, #0x18]
	adds r2, #1
	str r2, [sp, #0x10]
	adds r6, #1
	ldrb r1, [r3, #0x1b]
	cmp r6, r1
	blt _08035A08
_08035A2A:
	movs r6, #0
	ldr r2, [sp, #0x24]
	mov r0, sl
	muls r0, r2, r0
	adds r0, r0, r5
	ldrb r0, [r0, #0x1c]
	cmp r6, r0
	bge _08035A68
	adds r1, r2, #0
	muls r1, r7, r1
	ldr r0, _08035B9C
	adds r4, r1, r0
	mov r0, sb
	adds r3, r1, r0
_08035A46:
	ldr r2, [sp, #0x10]
	mov r0, r8
	adds r1, r0, r2
	ldr r0, [r4]
	adds r0, r0, r6
	ldrb r0, [r0]
	strb r0, [r1]
	ldrb r1, [r1]
	ldr r0, [sp, #0x18]
	adds r0, r0, r1
	str r0, [sp, #0x18]
	adds r2, #1
	str r2, [sp, #0x10]
	adds r6, #1
	ldrb r1, [r3, #0x1c]
	cmp r6, r1
	blt _08035A46
_08035A68:
	movs r6, #0
	ldr r2, [sp, #0x24]
	mov r0, sl
	muls r0, r2, r0
	adds r0, r0, r5
	ldrb r0, [r0, #0x1d]
	cmp r6, r0
	bge _08035AA6
	adds r1, r2, #0
	muls r1, r7, r1
	ldr r0, _08035BA0
	adds r4, r1, r0
	mov r0, sb
	adds r3, r1, r0
_08035A84:
	ldr r2, [sp, #0x10]
	mov r0, r8
	adds r1, r0, r2
	ldr r0, [r4]
	adds r0, r0, r6
	ldrb r0, [r0]
	strb r0, [r1]
	ldrb r1, [r1]
	ldr r0, [sp, #0x18]
	adds r0, r0, r1
	str r0, [sp, #0x18]
	adds r2, #1
	str r2, [sp, #0x10]
	adds r6, #1
	ldrb r1, [r3, #0x1d]
	cmp r6, r1
	blt _08035A84
_08035AA6:
	movs r6, #0
	ldr r2, [sp, #0x24]
	mov r0, sl
	muls r0, r2, r0
	adds r0, r0, r5
	ldrb r0, [r0, #0x1e]
	cmp r6, r0
	bge _08035AE4
	adds r1, r2, #0
	muls r1, r7, r1
	ldr r0, _08035BA4
	adds r3, r1, r0
	mov r0, sb
	adds r4, r1, r0
_08035AC2:
	ldr r2, [sp, #0x10]
	mov r0, r8
	adds r1, r0, r2
	ldr r0, [r3]
	adds r0, r0, r6
	ldrb r0, [r0]
	strb r0, [r1]
	ldrb r1, [r1]
	ldr r0, [sp, #0x18]
	adds r0, r0, r1
	str r0, [sp, #0x18]
	adds r2, #1
	str r2, [sp, #0x10]
	adds r6, #1
	ldrb r1, [r4, #0x1e]
	cmp r6, r1
	blt _08035AC2
_08035AE4:
	mov r2, ip
	str r2, [sp, #0x24]
	cmp r2, #5
	bgt _08035AEE
	b _080357F6
_08035AEE:
	ldr r2, [sp, #0x10]
	mov r3, r8
	adds r1, r3, r2
	movs r0, #0x75
	strb r0, [r1]
	ldr r3, [sp, #0x18]
	adds r2, #1
	mov r5, r8
	adds r4, r5, r2
	ldr r6, _08035BA8
	ldrb r1, [r6]
	lsls r1, r1, #7
	ldr r7, _08035BAC
	ldrb r0, [r7]
	lsls r0, r0, #6
	orrs r1, r0
	ldr r5, _08035BB0
	ldrb r0, [r5]
	lsls r0, r0, #5
	orrs r1, r0
	ldr r6, _08035BB4
	ldrb r0, [r6]
	lsls r0, r0, #4
	orrs r1, r0
	ldr r7, _08035BB8
	ldrb r0, [r7]
	lsls r0, r0, #3
	orrs r1, r0
	ldr r5, _08035BBC
	ldrb r0, [r5]
	lsls r0, r0, #2
	orrs r1, r0
	ldr r6, _08035BC0
	ldrb r0, [r6]
	lsls r0, r0, #1
	orrs r1, r0
	ldr r7, _08035BC4
	ldrb r0, [r7]
	orrs r1, r0
	strb r1, [r4]
	adds r3, #0x75
	adds r3, r3, r1
	adds r2, #1
	mov r0, r8
	adds r4, r0, r2
	ldr r5, _08035BC8
	ldrb r1, [r5]
	lsls r1, r1, #7
	ldr r6, _08035BCC
	ldrb r0, [r6]
	lsls r0, r0, #6
	orrs r1, r0
	ldr r7, _08035BD0
	ldrb r0, [r7]
	lsls r0, r0, #5
	orrs r1, r0
	ldr r5, _08035BD4
	ldrb r0, [r5]
	lsls r0, r0, #4
	orrs r1, r0
	ldr r6, _08035BD8
	ldrb r0, [r6]
	lsls r0, r0, #3
	orrs r1, r0
	ldr r7, _08035BDC
	ldrb r0, [r7]
	b _08035BE0
	.align 2, 0
_08035B74: .4byte 0x0203E440
_08035B78: .4byte 0x0203E4D4
_08035B7C: .4byte 0x0203E4D8
_08035B80: .4byte 0x0203E4DC
_08035B84: .4byte 0x0203E4E0
_08035B88: .4byte 0x0203E4E4
_08035B8C: .4byte 0x0203E4E8
_08035B90: .4byte 0x0203E4EC
_08035B94: .4byte 0x0203E4F0
_08035B98: .4byte 0x0203E4F4
_08035B9C: .4byte 0x0203E4F8
_08035BA0: .4byte 0x0203E4FC
_08035BA4: .4byte 0x0203E500
_08035BA8: .4byte 0x0203E938
_08035BAC: .4byte 0x0203E939
_08035BB0: .4byte 0x0203E133
_08035BB4: .4byte 0x0203E93D
_08035BB8: .4byte 0x0203E93E
_08035BBC: .4byte 0x0203E93F
_08035BC0: .4byte 0x0203E940
_08035BC4: .4byte 0x0203E10F
_08035BC8: .4byte 0x0203E941
_08035BCC: .4byte 0x0203E942
_08035BD0: .4byte 0x0203E943
_08035BD4: .4byte 0x0203E944
_08035BD8: .4byte 0x0203E945
_08035BDC: .4byte 0x0203E946
_08035BE0:
	lsls r0, r0, #2
	orrs r1, r0
	ldr r5, _08035F9C
	ldrb r0, [r5]
	lsls r0, r0, #1
	orrs r1, r0
	ldr r6, _08035FA0
	ldrb r0, [r6]
	orrs r1, r0
	strb r1, [r4]
	ldrb r5, [r4]
	adds r2, #1
	mov r7, r8
	adds r4, r7, r2
	ldr r0, _08035FA4
	ldrb r1, [r0]
	lsls r1, r1, #7
	ldr r6, _08035FA8
	ldrb r0, [r6]
	lsls r0, r0, #6
	orrs r1, r0
	ldr r7, _08035FAC
	ldrb r0, [r7]
	lsls r0, r0, #5
	orrs r1, r0
	ldr r6, _08035FB0
	ldrb r0, [r6]
	lsls r0, r0, #4
	orrs r1, r0
	ldr r7, _08035FB4
	ldrb r0, [r7]
	lsls r0, r0, #3
	orrs r1, r0
	ldr r6, _08035FB8
	ldrb r0, [r6]
	lsls r0, r0, #2
	orrs r1, r0
	ldr r7, _08035FBC
	ldrb r0, [r7]
	lsls r0, r0, #1
	orrs r1, r0
	ldr r6, _08035FC0
	ldrb r0, [r6]
	orrs r1, r0
	strb r1, [r4]
	adds r3, r3, r5
	adds r3, r3, r1
	adds r2, #1
	mov r7, r8
	adds r4, r7, r2
	ldr r0, _08035FC4
	ldrb r1, [r0]
	lsls r1, r1, #7
	ldr r5, _08035FC8
	ldrb r0, [r5]
	lsls r0, r0, #6
	orrs r1, r0
	ldr r6, _08035FCC
	ldrb r0, [r6]
	lsls r0, r0, #5
	orrs r1, r0
	ldr r7, _08035FD0
	ldrb r0, [r7]
	lsls r0, r0, #4
	orrs r1, r0
	ldr r5, _08035FD4
	ldrb r0, [r5]
	lsls r0, r0, #3
	orrs r1, r0
	ldr r6, _08035FD8
	ldrb r0, [r6]
	lsls r0, r0, #2
	orrs r1, r0
	ldr r7, _08035FDC
	ldrb r0, [r7]
	lsls r0, r0, #1
	orrs r1, r0
	ldr r5, _08035FE0
	ldrb r0, [r5]
	orrs r1, r0
	strb r1, [r4]
	ldrb r5, [r4]
	adds r2, #1
	mov r6, r8
	adds r4, r6, r2
	ldr r7, _08035FE4
	ldrb r1, [r7]
	lsls r1, r1, #7
	ldr r6, _08035FE8
	ldrb r0, [r6]
	lsls r0, r0, #6
	orrs r1, r0
	ldr r7, _08035FEC
	ldrb r0, [r7]
	lsls r0, r0, #5
	orrs r1, r0
	ldr r6, _08035FF0
	ldrb r0, [r6]
	lsls r0, r0, #4
	orrs r1, r0
	ldr r7, _08035FF4
	ldrb r0, [r7]
	lsls r0, r0, #3
	orrs r1, r0
	ldr r6, _08035FF8
	ldrb r0, [r6]
	lsls r0, r0, #2
	orrs r1, r0
	ldr r7, _08035FFC
	ldrb r0, [r7]
	lsls r0, r0, #1
	orrs r1, r0
	ldr r6, _08036000
	ldrb r0, [r6]
	orrs r1, r0
	strb r1, [r4]
	adds r3, r3, r5
	adds r3, r3, r1
	adds r2, #1
	mov r7, r8
	adds r4, r7, r2
	ldr r0, _08036004
	ldrb r1, [r0]
	lsls r1, r1, #7
	ldr r5, _08036008
	ldrb r0, [r5]
	lsls r0, r0, #6
	orrs r1, r0
	ldr r6, _0803600C
	ldrb r0, [r6]
	lsls r0, r0, #5
	orrs r1, r0
	ldr r7, _08036010
	ldrb r0, [r7]
	lsls r0, r0, #4
	orrs r1, r0
	ldr r5, _08036014
	ldrb r0, [r5]
	lsls r0, r0, #3
	orrs r1, r0
	ldr r6, _08036018
	ldrb r0, [r6]
	lsls r0, r0, #2
	orrs r1, r0
	ldr r7, _0803601C
	ldrb r0, [r7]
	lsls r0, r0, #1
	orrs r1, r0
	ldr r5, _08036020
	ldrb r0, [r5]
	orrs r1, r0
	strb r1, [r4]
	ldrb r5, [r4]
	adds r2, #1
	mov r6, r8
	adds r4, r6, r2
	ldr r7, _08036024
	ldrb r1, [r7]
	lsls r1, r1, #7
	ldr r6, _08036028
	ldrb r0, [r6]
	lsls r0, r0, #6
	orrs r1, r0
	ldr r7, _0803602C
	ldrb r0, [r7]
	lsls r0, r0, #5
	orrs r1, r0
	ldr r6, _08036030
	ldrb r0, [r6]
	lsls r0, r0, #4
	orrs r1, r0
	ldr r7, _08036034
	ldrb r0, [r7]
	lsls r0, r0, #3
	orrs r1, r0
	ldr r6, _08036038
	ldrb r0, [r6]
	lsls r0, r0, #2
	orrs r1, r0
	ldr r7, _0803603C
	ldrb r0, [r7]
	lsls r0, r0, #1
	orrs r1, r0
	ldr r6, _08036040
	ldrb r0, [r6]
	orrs r1, r0
	strb r1, [r4]
	adds r3, r3, r5
	adds r3, r3, r1
	adds r2, #1
	mov r7, r8
	adds r4, r7, r2
	ldr r0, _08036044
	ldrb r1, [r0]
	lsls r1, r1, #7
	ldr r5, _08036048
	ldrb r0, [r5]
	lsls r0, r0, #6
	orrs r1, r0
	ldr r6, _0803604C
	ldrb r0, [r6]
	lsls r0, r0, #5
	orrs r1, r0
	ldr r7, _08036050
	ldrb r0, [r7]
	lsls r0, r0, #4
	orrs r1, r0
	ldr r5, _08036054
	ldrb r0, [r5]
	lsls r0, r0, #3
	orrs r1, r0
	ldr r6, _08036058
	ldrb r0, [r6]
	lsls r0, r0, #2
	orrs r1, r0
	ldr r7, _0803605C
	ldrb r0, [r7]
	lsls r0, r0, #1
	orrs r1, r0
	ldr r5, _08036060
	ldrb r0, [r5]
	orrs r1, r0
	strb r1, [r4]
	ldrb r5, [r4]
	adds r2, #1
	mov r6, r8
	adds r4, r6, r2
	ldr r7, _08036064
	ldrb r1, [r7]
	lsls r1, r1, #7
	ldr r6, _08036068
	ldrb r0, [r6]
	lsls r0, r0, #6
	orrs r1, r0
	ldr r7, _0803606C
	ldrb r0, [r7]
	lsls r0, r0, #5
	orrs r1, r0
	ldr r6, _08036070
	ldrb r0, [r6]
	lsls r0, r0, #4
	orrs r1, r0
	ldr r7, _08036074
	ldrb r0, [r7]
	lsls r0, r0, #3
	orrs r1, r0
	ldr r6, _08036078
	ldrb r0, [r6]
	lsls r0, r0, #2
	orrs r1, r0
	ldr r7, _0803607C
	ldrb r0, [r7]
	lsls r0, r0, #1
	orrs r1, r0
	ldr r6, _08036080
	ldrb r0, [r6]
	orrs r1, r0
	strb r1, [r4]
	adds r3, r3, r5
	adds r3, r3, r1
	adds r2, #1
	mov r7, r8
	adds r4, r7, r2
	ldr r0, _08036084
	ldrb r1, [r0]
	lsls r1, r1, #7
	ldr r5, _08036088
	ldrb r0, [r5]
	lsls r0, r0, #6
	orrs r1, r0
	ldr r6, _0803608C
	ldrb r0, [r6]
	lsls r0, r0, #5
	orrs r1, r0
	ldr r7, _08036090
	ldrb r0, [r7]
	lsls r0, r0, #4
	orrs r1, r0
	ldr r5, _08036094
	ldrb r0, [r5]
	lsls r0, r0, #3
	orrs r1, r0
	ldr r6, _08036098
	ldrb r0, [r6]
	lsls r0, r0, #2
	orrs r1, r0
	ldr r7, _0803609C
	ldrb r0, [r7]
	lsls r0, r0, #1
	orrs r1, r0
	ldr r5, _080360A0
	ldrb r0, [r5]
	orrs r1, r0
	strb r1, [r4]
	ldrb r5, [r4]
	adds r2, #1
	mov r6, r8
	adds r4, r6, r2
	ldr r7, _080360A4
	ldrb r1, [r7]
	lsls r1, r1, #7
	ldr r6, _080360A8
	ldrb r0, [r6]
	lsls r0, r0, #6
	orrs r1, r0
	ldr r7, _080360AC
	ldrb r0, [r7]
	lsls r0, r0, #5
	orrs r1, r0
	ldr r6, _080360B0
	ldrb r0, [r6]
	lsls r0, r0, #4
	orrs r1, r0
	ldr r7, _080360B4
	ldrb r0, [r7]
	lsls r0, r0, #3
	orrs r1, r0
	ldr r6, _080360B8
	ldrb r0, [r6]
	lsls r0, r0, #2
	orrs r1, r0
	ldr r7, _080360BC
	ldrb r0, [r7]
	lsls r0, r0, #1
	orrs r1, r0
	ldr r6, _080360C0
	ldrb r0, [r6]
	orrs r1, r0
	strb r1, [r4]
	adds r3, r3, r5
	adds r3, r3, r1
	adds r2, #1
	mov r7, r8
	adds r4, r7, r2
	ldr r0, _080360C4
	ldrb r1, [r0]
	lsls r1, r1, #7
	ldr r5, _080360C8
	ldrb r0, [r5]
	lsls r0, r0, #6
	orrs r1, r0
	ldr r6, _080360CC
	ldrb r0, [r6]
	lsls r0, r0, #5
	orrs r1, r0
	ldr r7, _080360D0
	ldrb r0, [r7]
	lsls r0, r0, #4
	orrs r1, r0
	ldr r5, _080360D4
	ldrb r0, [r5]
	lsls r0, r0, #3
	orrs r1, r0
	ldr r6, _080360D8
	ldrb r0, [r6]
	lsls r0, r0, #2
	orrs r1, r0
	ldr r7, _080360DC
	ldrb r0, [r7]
	lsls r0, r0, #1
	orrs r1, r0
	ldr r5, _080360E0
	ldrb r0, [r5]
	orrs r1, r0
	strb r1, [r4]
	ldrb r5, [r4]
	adds r2, #1
	mov r6, r8
	adds r4, r6, r2
	ldr r7, _080360E4
	ldrb r1, [r7]
	lsls r1, r1, #7
	ldr r6, _080360E8
	ldrb r0, [r6]
	lsls r0, r0, #6
	orrs r1, r0
	ldr r7, _080360EC
	ldrb r0, [r7]
	lsls r0, r0, #5
	orrs r1, r0
	ldr r6, _080360F0
	ldrb r0, [r6]
	lsls r0, r0, #4
	orrs r1, r0
	ldr r7, _080360F4
	ldrb r0, [r7]
	lsls r0, r0, #3
	orrs r1, r0
	ldr r6, _080360F8
	ldrb r0, [r6]
	lsls r0, r0, #2
	orrs r1, r0
	ldr r7, _080360FC
	ldrb r0, [r7]
	lsls r0, r0, #1
	orrs r1, r0
	ldr r6, _08036100
	ldrb r0, [r6]
	orrs r1, r0
	strb r1, [r4]
	adds r3, r3, r5
	adds r3, r3, r1
	adds r2, #1
	mov r7, r8
	adds r4, r7, r2
	ldr r0, _08036104
	ldrb r1, [r0]
	lsls r1, r1, #7
	ldr r5, _08036108
	ldrb r0, [r5]
	lsls r0, r0, #6
	orrs r1, r0
	ldr r6, _0803610C
	ldrb r0, [r6]
	lsls r0, r0, #5
	orrs r1, r0
	ldr r7, _08036110
	ldrb r0, [r7]
	lsls r0, r0, #4
	orrs r1, r0
	ldr r5, _08036114
	ldrb r0, [r5]
	lsls r0, r0, #3
	orrs r1, r0
	ldr r6, _08036118
	ldrb r0, [r6]
	lsls r0, r0, #2
	orrs r1, r0
	ldr r7, _0803611C
	ldrb r0, [r7]
	lsls r0, r0, #1
	orrs r1, r0
	ldr r5, _08036120
	ldrb r0, [r5]
	orrs r1, r0
	strb r1, [r4]
	ldrb r5, [r4]
	adds r2, #1
	mov r6, r8
	adds r4, r6, r2
	ldr r7, _08036124
	ldrb r1, [r7]
	lsls r1, r1, #7
	ldr r6, _08036128
	ldrb r0, [r6]
	lsls r0, r0, #6
	orrs r1, r0
	ldr r7, _0803612C
	ldrb r0, [r7]
	lsls r0, r0, #5
	orrs r1, r0
	ldr r6, _08036130
	ldrb r0, [r6]
	lsls r0, r0, #4
	orrs r1, r0
	ldr r7, _08036134
	ldrb r0, [r7]
	lsls r0, r0, #3
	orrs r1, r0
	strb r1, [r4]
	adds r3, r3, r5
	adds r3, r3, r1
	str r3, [sp, #0x18]
	adds r2, #1
	str r2, [sp, #0x10]
	ldr r0, [sp, #0x1c]
	str r2, [r0]
	ldr r1, [sp, #0x20]
	str r3, [r1]
	add sp, #0x50
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08035F9C: .4byte 0x0203E947
_08035FA0: .4byte 0x0203E949
_08035FA4: .4byte 0x0203E94A
_08035FA8: .4byte 0x0203E94B
_08035FAC: .4byte 0x0203E94C
_08035FB0: .4byte 0x0203E94D
_08035FB4: .4byte 0x0203E94E
_08035FB8: .4byte 0x0203E960
_08035FBC: .4byte 0x0203E961
_08035FC0: .4byte 0x0203E94F
_08035FC4: .4byte 0x0203E950
_08035FC8: .4byte 0x0203E951
_08035FCC: .4byte 0x0203E952
_08035FD0: .4byte 0x0203E954
_08035FD4: .4byte 0x0203E955
_08035FD8: .4byte 0x0203E956
_08035FDC: .4byte 0x0203E957
_08035FE0: .4byte 0x0203E958
_08035FE4: .4byte 0x0203E959
_08035FE8: .4byte 0x0203E95A
_08035FEC: .4byte 0x0203E95B
_08035FF0: .4byte 0x0203E953
_08035FF4: .4byte 0x0203E95C
_08035FF8: .4byte 0x0203E95D
_08035FFC: .4byte 0x0203E95E
_08036000: .4byte 0x0203E95F
_08036004: .4byte 0x0203E962
_08036008: .4byte 0x0203E963
_0803600C: .4byte 0x0203E964
_08036010: .4byte 0x0203E967
_08036014: .4byte 0x0203E965
_08036018: .4byte 0x0203E966
_0803601C: .4byte 0x0203E968
_08036020: .4byte 0x0203E969
_08036024: .4byte 0x0203E96A
_08036028: .4byte 0x0203E96B
_0803602C: .4byte 0x0203E96C
_08036030: .4byte 0x0203E96D
_08036034: .4byte 0x0203E96E
_08036038: .4byte 0x0203E96F
_0803603C: .4byte 0x0203E970
_08036040: .4byte 0x0203E948
_08036044: .4byte 0x0203E122
_08036048: .4byte 0x0203E123
_0803604C: .4byte 0x0203E124
_08036050: .4byte 0x0203E125
_08036054: .4byte 0x0203E126
_08036058: .4byte 0x0203E127
_0803605C: .4byte 0x0203E128
_08036060: .4byte 0x0203E129
_08036064: .4byte 0x0203E12A
_08036068: .4byte 0x0203E12B
_0803606C: .4byte 0x0203E12C
_08036070: .4byte 0x0203E12D
_08036074: .4byte 0x0203E12E
_08036078: .4byte 0x0203E12F
_0803607C: .4byte 0x0203E130
_08036080: .4byte 0x0203E131
_08036084: .4byte 0x0203E132
_08036088: .4byte 0x0203E972
_0803608C: .4byte 0x0203E973
_08036090: .4byte 0x0203E974
_08036094: .4byte 0x0203E142
_08036098: .4byte 0x0203E143
_0803609C: .4byte 0x0203E144
_080360A0: .4byte 0x0203E145
_080360A4: .4byte 0x0203E146
_080360A8: .4byte 0x0203E147
_080360AC: .4byte 0x0203E148
_080360B0: .4byte 0x0203E149
_080360B4: .4byte 0x0203E14A
_080360B8: .4byte 0x0203E14B
_080360BC: .4byte 0x0203E14C
_080360C0: .4byte 0x0203E14D
_080360C4: .4byte 0x0203E14E
_080360C8: .4byte 0x0203E14F
_080360CC: .4byte 0x0203E150
_080360D0: .4byte 0x0203E151
_080360D4: .4byte 0x0203E152
_080360D8: .4byte 0x0203E153
_080360DC: .4byte 0x0203E154
_080360E0: .4byte 0x0203E155
_080360E4: .4byte 0x0203E156
_080360E8: .4byte 0x0203E157
_080360EC: .4byte 0x0203E158
_080360F0: .4byte 0x0203E159
_080360F4: .4byte 0x0203E15A
_080360F8: .4byte 0x0203E15B
_080360FC: .4byte 0x0203E15C
_08036100: .4byte 0x0203E15D
_08036104: .4byte 0x0203E15E
_08036108: .4byte 0x0203E15F
_0803610C: .4byte 0x0203E160
_08036110: .4byte 0x0203E161
_08036114: .4byte 0x0203E162
_08036118: .4byte 0x0203E163
_0803611C: .4byte 0x0203E164
_08036120: .4byte 0x0203E165
_08036124: .4byte 0x0203E166
_08036128: .4byte 0x0203E167
_0803612C: .4byte 0x0203E168
_08036130: .4byte 0x0203E971
_08036134: .4byte 0x0203E169

    .thumb
    .global sub_8036138
sub_8036138: @ 0x08036138
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x6c
	adds r7, r0, #0
	str r1, [sp, #0x1c]
	str r2, [sp, #0x20]
	ldr r0, [r1]
	ldr r2, [r2]
	adds r1, r7, r0
	ldrb r6, [r1]
	adds r0, #1
	ldr r1, _0803653C
	mov r8, r1
	adds r3, r7, r0
	ldrb r1, [r3]
	mov r4, r8
	strb r1, [r4]
	adds r2, r2, r6
	ldrb r3, [r3]
	adds r2, r2, r3
	adds r0, #1
	ldr r5, _08036540
	adds r3, r7, r0
	ldrb r1, [r3]
	strb r1, [r5]
	ldrb r6, [r3]
	adds r0, #1
	ldr r1, _08036544
	mov r8, r1
	adds r3, r7, r0
	ldrb r1, [r3]
	mov r4, r8
	strb r1, [r4]
	adds r2, r2, r6
	ldrb r3, [r3]
	adds r2, r2, r3
	adds r0, #1
	ldr r5, _08036548
	adds r3, r7, r0
	ldrb r1, [r3]
	strh r1, [r5]
	ldrb r6, [r3]
	adds r0, #1
	ldr r1, _0803654C
	mov r8, r1
	adds r3, r7, r0
	ldrb r1, [r3]
	mov r4, r8
	strb r1, [r4]
	adds r2, r2, r6
	ldrb r3, [r3]
	adds r2, r2, r3
	str r2, [sp, #0x18]
	adds r0, #1
	str r0, [sp, #0x10]
	movs r0, #0
	str r0, [sp, #0x24]
	ldr r4, _08036550
	ldr r3, _08036554
	ldr r1, _08036558
	mov r8, r1
	ldr r6, _0803655C
	ldr r2, _08036560
	mov sb, r2
	mov r0, sp
	adds r0, #0x10
	str r0, [sp, #0x54]
	mov r1, sp
	adds r1, #0x14
	str r1, [sp, #0x58]
	mov r2, sp
	adds r2, #0x18
	str r2, [sp, #0x5c]
_080361D0:
	ldr r0, [sp, #0x24]
	adds r1, r0, r4
	ldr r0, [sp, #0x10]
	adds r0, r7, r0
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, [sp, #0x10]
	adds r0, r7, r1
	ldrb r2, [r0]
	ldr r0, [sp, #0x18]
	adds r0, r0, r2
	str r0, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	ldr r0, [sp, #0x24]
	adds r2, r0, r3
	adds r1, r7, r1
	ldrb r0, [r1]
	strb r0, [r2]
	ldr r1, [sp, #0x10]
	adds r0, r7, r1
	ldrb r2, [r0]
	ldr r0, [sp, #0x18]
	adds r0, r0, r2
	str r0, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	ldr r1, [sp, #0x24]
	adds r1, #1
	str r1, [sp, #0x24]
	cmp r1, #5
	ble _080361D0
	movs r2, #0
	str r2, [sp, #0x24]
_08036214:
	ldr r3, [sp, #0x24]
	lsls r5, r3, #4
	subs r3, r5, r3
	lsls r3, r3, #3
	add r3, r8
	ldr r0, [sp, #0x10]
	adds r0, r7, r0
	ldrb r0, [r0]
	strb r0, [r3]
	ldr r1, [sp, #0x10]
	adds r0, r7, r1
	ldrb r2, [r0]
	ldr r0, [sp, #0x18]
	adds r0, r0, r2
	str r0, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	adds r1, r7, r1
	ldrb r0, [r1]
	strb r0, [r3, #1]
	ldr r1, [sp, #0x10]
	adds r0, r7, r1
	ldrb r2, [r0]
	ldr r0, [sp, #0x18]
	adds r0, r0, r2
	str r0, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	adds r1, r7, r1
	ldrb r0, [r1]
	strb r0, [r3, #2]
	ldr r1, [sp, #0x10]
	adds r0, r7, r1
	ldrb r2, [r0]
	ldr r0, [sp, #0x18]
	adds r0, r0, r2
	str r0, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	adds r1, r7, r1
	ldrb r0, [r1]
	strb r0, [r3, #3]
	ldr r1, [sp, #0x10]
	adds r0, r7, r1
	ldrb r2, [r0]
	ldr r0, [sp, #0x18]
	adds r0, r0, r2
	str r0, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	adds r1, r7, r1
	ldrb r0, [r1]
	strb r0, [r3, #4]
	ldr r1, [sp, #0x10]
	adds r0, r7, r1
	ldrb r2, [r0]
	ldr r0, [sp, #0x18]
	adds r0, r0, r2
	str r0, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	adds r1, r7, r1
	ldrb r0, [r1]
	strb r0, [r3, #5]
	ldr r1, [sp, #0x10]
	adds r0, r7, r1
	ldrb r2, [r0]
	ldr r0, [sp, #0x18]
	adds r0, r0, r2
	str r0, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	adds r1, r7, r1
	ldrb r0, [r1]
	strb r0, [r3, #6]
	ldr r1, [sp, #0x10]
	adds r0, r7, r1
	ldrb r2, [r0]
	ldr r0, [sp, #0x18]
	adds r0, r0, r2
	str r0, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	adds r1, r7, r1
	ldrb r0, [r1]
	strb r0, [r3, #7]
	ldr r1, [sp, #0x10]
	adds r0, r7, r1
	ldrb r2, [r0]
	ldr r0, [sp, #0x18]
	adds r0, r0, r2
	str r0, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	adds r1, r7, r1
	ldrb r0, [r1]
	strb r0, [r3, #8]
	ldr r1, [sp, #0x10]
	adds r0, r7, r1
	ldrb r2, [r0]
	ldr r0, [sp, #0x18]
	adds r0, r0, r2
	str r0, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	adds r1, r7, r1
	ldrb r0, [r1]
	strb r0, [r3, #9]
	ldr r1, [sp, #0x10]
	adds r0, r7, r1
	ldrb r2, [r0]
	ldr r0, [sp, #0x18]
	adds r0, r0, r2
	str r0, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	adds r1, r7, r1
	ldrb r0, [r1]
	strb r0, [r3, #0xa]
	ldr r1, [sp, #0x10]
	adds r0, r7, r1
	ldrb r2, [r0]
	ldr r0, [sp, #0x18]
	adds r0, r0, r2
	str r0, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	adds r1, r7, r1
	ldrb r0, [r1]
	strb r0, [r3, #0xb]
	ldr r1, [sp, #0x10]
	adds r0, r7, r1
	ldrb r2, [r0]
	ldr r0, [sp, #0x18]
	adds r0, r0, r2
	str r0, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	adds r1, r7, r1
	ldrb r0, [r1]
	strb r0, [r3, #0xc]
	ldr r1, [sp, #0x10]
	adds r0, r7, r1
	ldrb r2, [r0]
	ldr r0, [sp, #0x18]
	adds r0, r0, r2
	str r0, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	adds r1, r7, r1
	ldrb r0, [r1]
	strb r0, [r3, #0xd]
	ldr r1, [sp, #0x10]
	adds r0, r7, r1
	ldrb r2, [r0]
	ldr r0, [sp, #0x18]
	adds r0, r0, r2
	str r0, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	adds r1, r7, r1
	ldrb r0, [r1]
	strb r0, [r3, #0xe]
	ldr r1, [sp, #0x10]
	adds r0, r7, r1
	ldrb r2, [r0]
	ldr r0, [sp, #0x18]
	adds r0, r0, r2
	str r0, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	adds r1, r7, r1
	ldrb r0, [r1]
	strb r0, [r3, #0xf]
	ldr r1, [sp, #0x10]
	adds r0, r7, r1
	ldrb r2, [r0]
	ldr r0, [sp, #0x18]
	adds r0, r0, r2
	str r0, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	adds r1, r7, r1
	ldrb r0, [r1]
	strb r0, [r3, #0x10]
	ldr r1, [sp, #0x10]
	adds r0, r7, r1
	ldrb r2, [r0]
	ldr r0, [sp, #0x18]
	adds r0, r0, r2
	str r0, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	adds r1, r7, r1
	ldrb r0, [r1]
	strb r0, [r3, #0x11]
	ldr r1, [sp, #0x10]
	adds r0, r7, r1
	ldrb r2, [r0]
	ldr r0, [sp, #0x18]
	adds r0, r0, r2
	str r0, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	adds r1, r7, r1
	ldrb r0, [r1]
	strb r0, [r3, #0x12]
	ldr r1, [sp, #0x10]
	adds r0, r7, r1
	ldrb r2, [r0]
	ldr r0, [sp, #0x18]
	adds r0, r0, r2
	str r0, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	adds r1, r7, r1
	ldrb r0, [r1]
	strb r0, [r3, #0x13]
	ldr r1, [sp, #0x10]
	adds r0, r7, r1
	ldrb r2, [r0]
	ldr r0, [sp, #0x18]
	adds r0, r0, r2
	str r0, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	adds r1, r7, r1
	ldrb r0, [r1]
	strb r0, [r3, #0x14]
	ldr r1, [sp, #0x10]
	adds r0, r7, r1
	ldrb r2, [r0]
	ldr r0, [sp, #0x18]
	adds r0, r0, r2
	str r0, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	movs r0, #0xc4
	ldr r4, [sp, #0x24]
	muls r0, r4, r0
	adds r3, r0, r6
	adds r1, r7, r1
	ldrb r0, [r1]
	strb r0, [r3]
	ldr r1, [sp, #0x10]
	adds r0, r7, r1
	ldrb r2, [r0]
	ldr r0, [sp, #0x18]
	adds r0, r0, r2
	str r0, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	adds r1, r7, r1
	ldrb r0, [r1]
	strb r0, [r3, #1]
	ldr r1, [sp, #0x10]
	adds r0, r7, r1
	ldrb r2, [r0]
	ldr r0, [sp, #0x18]
	adds r0, r0, r2
	str r0, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	adds r1, r7, r1
	ldrb r0, [r1]
	strb r0, [r3, #2]
	ldr r1, [sp, #0x10]
	adds r0, r7, r1
	ldrb r2, [r0]
	ldr r0, [sp, #0x18]
	adds r0, r0, r2
	str r0, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	adds r1, r7, r1
	ldrb r0, [r1]
	strb r0, [r3, #3]
	ldr r1, [sp, #0x10]
	adds r0, r7, r1
	ldrb r2, [r0]
	ldr r0, [sp, #0x18]
	adds r0, r0, r2
	str r0, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	adds r1, r7, r1
	ldrb r0, [r1]
	strb r0, [r3, #4]
	ldr r1, [sp, #0x10]
	adds r0, r7, r1
	ldrb r2, [r0]
	ldr r0, [sp, #0x18]
	adds r0, r0, r2
	str r0, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	adds r1, r7, r1
	ldrb r0, [r1]
	strb r0, [r3, #5]
	ldr r1, [sp, #0x10]
	adds r0, r7, r1
	ldrb r2, [r0]
	ldr r0, [sp, #0x18]
	adds r0, r0, r2
	str r0, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	adds r1, r7, r1
	ldrb r0, [r1]
	strb r0, [r3, #6]
	ldr r1, [sp, #0x10]
	adds r0, r7, r1
	ldrb r2, [r0]
	ldr r0, [sp, #0x18]
	adds r0, r0, r2
	str r0, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	adds r1, r7, r1
	ldrb r0, [r1]
	strb r0, [r3, #7]
	ldr r1, [sp, #0x10]
	adds r0, r7, r1
	ldrb r2, [r0]
	ldr r0, [sp, #0x18]
	adds r0, r0, r2
	str r0, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	adds r1, r7, r1
	ldrb r0, [r1]
	strb r0, [r3, #8]
	ldr r1, [sp, #0x10]
	adds r0, r7, r1
	ldrb r2, [r0]
	ldr r0, [sp, #0x18]
	adds r0, r0, r2
	str r0, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	adds r1, r7, r1
	ldrb r0, [r1]
	strb r0, [r3, #9]
	ldr r1, [sp, #0x10]
	adds r0, r7, r1
	ldrb r2, [r0]
	ldr r0, [sp, #0x18]
	adds r0, r0, r2
	str r0, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	adds r1, r7, r1
	ldrb r0, [r1]
	strb r0, [r3, #0xa]
	ldr r1, [sp, #0x10]
	adds r0, r7, r1
	ldrb r2, [r0]
	ldr r0, [sp, #0x18]
	adds r0, r0, r2
	str r0, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	adds r1, r7, r1
	ldrb r0, [r1]
	strb r0, [r3, #0xb]
	ldr r1, [sp, #0x10]
	adds r0, r7, r1
	ldrb r2, [r0]
	ldr r0, [sp, #0x18]
	adds r0, r0, r2
	str r0, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	adds r1, r7, r1
	ldrb r0, [r1]
	strb r0, [r3, #0xc]
	ldr r1, [sp, #0x10]
	adds r0, r7, r1
	ldrb r2, [r0]
	ldr r0, [sp, #0x18]
	adds r0, r0, r2
	str r0, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	adds r1, r7, r1
	ldrb r0, [r1]
	strb r0, [r3, #0xd]
	ldr r1, [sp, #0x10]
	adds r0, r7, r1
	ldrb r2, [r0]
	ldr r0, [sp, #0x18]
	adds r0, r0, r2
	str r0, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	adds r1, r7, r1
	ldrb r0, [r1]
	strb r0, [r3, #0xe]
	ldr r1, [sp, #0x10]
	adds r0, r7, r1
	ldrb r2, [r0]
	ldr r0, [sp, #0x18]
	b _08036564
	.align 2, 0
_0803653C: .4byte 0x0203E93A
_08036540: .4byte 0x0203E93C
_08036544: .4byte 0x0203E93B
_08036548: .4byte 0x0203E140
_0803654C: .4byte 0x0203E16C
_08036550: .4byte 0x0203E110
_08036554: .4byte 0x0203E116
_08036558: .4byte 0x0203E170
_0803655C: .4byte 0x0203E440
_08036560: .4byte 0x0203E8D8
_08036564:
	adds r0, r0, r2
	str r0, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	adds r1, r7, r1
	ldrb r0, [r1]
	strb r0, [r3, #0xf]
	ldr r1, [sp, #0x10]
	adds r0, r7, r1
	ldrb r2, [r0]
	ldr r0, [sp, #0x18]
	adds r0, r0, r2
	str r0, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	adds r1, r7, r1
	ldrb r0, [r1]
	strb r0, [r3, #0x10]
	ldr r1, [sp, #0x10]
	adds r0, r7, r1
	ldrb r2, [r0]
	ldr r0, [sp, #0x18]
	adds r0, r0, r2
	str r0, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	adds r1, r7, r1
	ldrb r0, [r1]
	strb r0, [r3, #0x11]
	ldr r1, [sp, #0x10]
	adds r0, r7, r1
	ldrb r2, [r0]
	ldr r0, [sp, #0x18]
	adds r0, r0, r2
	str r0, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	adds r1, r7, r1
	ldrb r0, [r1]
	strb r0, [r3, #0x1f]
	ldr r1, [sp, #0x10]
	adds r0, r7, r1
	ldrb r2, [r0]
	ldr r0, [sp, #0x18]
	adds r0, r0, r2
	str r0, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	adds r1, r7, r1
	ldrb r0, [r1]
	strb r0, [r3, #0x12]
	ldr r1, [sp, #0x10]
	adds r0, r7, r1
	ldrb r2, [r0]
	ldr r0, [sp, #0x18]
	adds r0, r0, r2
	str r0, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	adds r1, r7, r1
	ldrb r0, [r1]
	strb r0, [r3, #0x13]
	ldr r1, [sp, #0x10]
	adds r0, r7, r1
	ldrb r2, [r0]
	ldr r0, [sp, #0x18]
	adds r0, r0, r2
	str r0, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	adds r1, r7, r1
	ldrb r0, [r1]
	strb r0, [r3, #0x14]
	ldr r1, [sp, #0x10]
	adds r0, r7, r1
	ldrb r2, [r0]
	ldr r0, [sp, #0x18]
	adds r0, r0, r2
	str r0, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	adds r1, r7, r1
	ldrb r0, [r1]
	strb r0, [r3, #0x15]
	ldr r1, [sp, #0x10]
	adds r0, r7, r1
	ldrb r2, [r0]
	ldr r0, [sp, #0x18]
	adds r0, r0, r2
	str r0, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	adds r1, r7, r1
	ldrb r0, [r1]
	strb r0, [r3, #0x16]
	ldr r1, [sp, #0x10]
	adds r0, r7, r1
	ldrb r2, [r0]
	ldr r0, [sp, #0x18]
	adds r0, r0, r2
	str r0, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	adds r1, r7, r1
	ldrb r0, [r1]
	strb r0, [r3, #0x17]
	ldr r1, [sp, #0x10]
	adds r0, r7, r1
	ldrb r2, [r0]
	ldr r0, [sp, #0x18]
	adds r0, r0, r2
	str r0, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	adds r1, r7, r1
	ldrb r0, [r1]
	strb r0, [r3, #0x18]
	ldr r1, [sp, #0x10]
	adds r0, r7, r1
	ldrb r2, [r0]
	ldr r0, [sp, #0x18]
	adds r0, r0, r2
	str r0, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	adds r1, r7, r1
	ldrb r0, [r1]
	strb r0, [r3, #0x19]
	ldr r1, [sp, #0x10]
	adds r0, r7, r1
	ldrb r2, [r0]
	ldr r0, [sp, #0x18]
	adds r0, r0, r2
	str r0, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	adds r1, r7, r1
	ldrb r0, [r1]
	strb r0, [r3, #0x1a]
	ldr r1, [sp, #0x10]
	adds r0, r7, r1
	ldrb r2, [r0]
	ldr r0, [sp, #0x18]
	adds r0, r0, r2
	str r0, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	adds r1, r7, r1
	ldrb r0, [r1]
	strb r0, [r3, #0x1b]
	ldr r1, [sp, #0x10]
	adds r0, r7, r1
	ldrb r2, [r0]
	ldr r0, [sp, #0x18]
	adds r0, r0, r2
	str r0, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	adds r1, r7, r1
	ldrb r0, [r1]
	strb r0, [r3, #0x1c]
	ldr r1, [sp, #0x10]
	adds r0, r7, r1
	ldrb r2, [r0]
	ldr r0, [sp, #0x18]
	adds r0, r0, r2
	str r0, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	adds r1, r7, r1
	ldrb r0, [r1]
	adds r1, r3, #0
	adds r1, #0x22
	strb r0, [r1]
	ldr r1, [sp, #0x10]
	adds r0, r7, r1
	ldrb r2, [r0]
	ldr r0, [sp, #0x18]
	adds r0, r0, r2
	str r0, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	adds r1, r7, r1
	ldrb r0, [r1]
	adds r1, r3, #0
	adds r1, #0x23
	strb r0, [r1]
	ldr r1, [sp, #0x10]
	adds r0, r7, r1
	ldrb r2, [r0]
	ldr r0, [sp, #0x18]
	adds r0, r0, r2
	str r0, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	adds r1, r7, r1
	ldrb r1, [r1]
	adds r0, r3, #0
	adds r0, #0x24
	strb r1, [r0]
	ldr r1, [sp, #0x10]
	adds r0, r7, r1
	ldrb r2, [r0]
	ldr r0, [sp, #0x18]
	adds r0, r0, r2
	str r0, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	adds r1, r7, r1
	ldrb r0, [r1]
	adds r1, r3, #0
	adds r1, #0x25
	strb r0, [r1]
	ldr r1, [sp, #0x10]
	adds r0, r7, r1
	ldrb r2, [r0]
	ldr r0, [sp, #0x18]
	adds r0, r0, r2
	str r0, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	adds r1, r7, r1
	ldrb r0, [r1]
	strb r0, [r3, #0x1d]
	ldr r1, [sp, #0x10]
	adds r0, r7, r1
	ldrb r2, [r0]
	ldr r0, [sp, #0x18]
	adds r0, r0, r2
	str r0, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	adds r1, r7, r1
	ldrb r0, [r1]
	strb r0, [r3, #0x1e]
	ldr r1, [sp, #0x10]
	adds r0, r7, r1
	ldrb r2, [r0]
	ldr r0, [sp, #0x18]
	adds r0, r0, r2
	str r0, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	adds r1, r7, r1
	ldrb r1, [r1]
	adds r0, r3, #0
	adds r0, #0x20
	strb r1, [r0]
	ldr r1, [sp, #0x10]
	adds r0, r7, r1
	ldrb r2, [r0]
	ldr r0, [sp, #0x18]
	adds r0, r0, r2
	str r0, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	adds r1, r7, r1
	ldrb r1, [r1]
	adds r0, r3, #0
	adds r0, #0x21
	strb r1, [r0]
	ldr r1, [sp, #0x10]
	adds r0, r7, r1
	ldrb r2, [r0]
	ldr r0, [sp, #0x18]
	adds r0, r0, r2
	str r0, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	add r5, sb
	adds r1, r7, r1
	ldrb r0, [r1]
	strb r0, [r5]
	ldr r1, [sp, #0x10]
	adds r0, r7, r1
	ldrb r2, [r0]
	ldr r0, [sp, #0x18]
	adds r0, r0, r2
	str r0, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	adds r1, r7, r1
	ldrb r0, [r1]
	strb r0, [r5, #1]
	ldr r1, [sp, #0x10]
	adds r0, r7, r1
	ldrb r2, [r0]
	ldr r0, [sp, #0x18]
	adds r0, r0, r2
	str r0, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	adds r1, r7, r1
	ldrb r0, [r1]
	strb r0, [r5, #2]
	ldr r2, [sp, #0x10]
	adds r0, r7, r2
	ldrb r1, [r0]
	ldr r0, [sp, #0x18]
	adds r0, r0, r1
	str r0, [sp, #0x18]
	adds r2, #1
	str r2, [sp, #0x10]
	adds r4, #1
	str r4, [sp, #0x24]
	cmp r4, #5
	bgt _080367CC
	b _08036214
_080367CC:
	movs r0, #0
	str r0, [sp, #0x14]
	adds r0, r7, r2
	ldrb r1, [r0]
	add r0, sp, #0xc
	strb r1, [r0]
	ldr r1, [sp, #0x10]
	adds r0, r7, r1
	ldrb r2, [r0]
	ldr r0, [sp, #0x18]
	adds r0, r0, r2
	str r0, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	movs r0, #0
	str r0, [sp, #0x24]
	ldr r1, [sp, #0x54]
	mov sl, r1
	ldr r2, [sp, #0x58]
	mov sb, r2
	ldr r3, [sp, #0x5c]
	str r3, [sp, #0x2c]
	movs r4, #0
	str r4, [sp, #0x60]
	ldr r0, _08036BE8
	str r0, [sp, #0x64]
	movs r1, #0
	str r1, [sp, #0x68]
	mov r2, sp
	adds r2, #0x18
	str r2, [sp, #0x30]
	mov r3, sp
	adds r3, #0x10
	str r3, [sp, #0x34]
_08036810:
	ldr r0, _08036BE8
	adds r0, #0x1c
	ldr r4, [sp, #0x68]
	adds r0, r4, r0
	ldr r0, [r0]
	str r0, [sp]
	ldr r1, [sp, #0x64]
	ldrb r0, [r1]
	str r0, [sp, #4]
	ldr r2, [sp, #0x2c]
	str r2, [sp, #8]
	adds r0, r7, #0
	mov r1, sl
	add r2, sp, #0xc
	mov r3, sb
	bl sub_8038984
	ldr r0, _08036BE8
	adds r0, #0x20
	adds r0, r4, r0
	ldr r0, [r0]
	str r0, [sp]
	ldr r3, [sp, #0x64]
	ldrb r0, [r3, #1]
	str r0, [sp, #4]
	ldr r4, [sp, #0x2c]
	str r4, [sp, #8]
	adds r0, r7, #0
	mov r1, sl
	add r2, sp, #0xc
	mov r3, sb
	bl sub_8038984
	ldr r0, _08036BE8
	adds r0, #0x24
	ldr r1, [sp, #0x68]
	adds r0, r1, r0
	ldr r0, [r0]
	str r0, [sp]
	ldr r2, [sp, #0x64]
	ldrb r0, [r2, #2]
	str r0, [sp, #4]
	str r4, [sp, #8]
	adds r0, r7, #0
	mov r1, sl
	add r2, sp, #0xc
	mov r3, sb
	bl sub_8038984
	ldr r0, _08036BE8
	adds r0, #0x28
	ldr r3, [sp, #0x68]
	adds r0, r3, r0
	ldr r0, [r0]
	str r0, [sp]
	ldr r4, [sp, #0x64]
	ldrb r0, [r4, #3]
	str r0, [sp, #4]
	ldr r0, [sp, #0x2c]
	str r0, [sp, #8]
	adds r0, r7, #0
	mov r1, sl
	add r2, sp, #0xc
	mov r3, sb
	bl sub_8038984
	ldr r0, _08036BE8
	adds r0, #0x2c
	ldr r1, [sp, #0x68]
	adds r0, r1, r0
	ldr r0, [r0]
	str r0, [sp]
	ldrb r0, [r4, #4]
	str r0, [sp, #4]
	ldr r2, [sp, #0x2c]
	str r2, [sp, #8]
	adds r0, r7, #0
	mov r1, sl
	add r2, sp, #0xc
	mov r3, sb
	bl sub_8038984
	ldr r0, _08036BE8
	adds r0, #0x30
	ldr r3, [sp, #0x68]
	adds r0, r3, r0
	ldr r0, [r0]
	str r0, [sp]
	ldrb r0, [r4, #5]
	str r0, [sp, #4]
	ldr r4, [sp, #0x2c]
	str r4, [sp, #8]
	adds r0, r7, #0
	mov r1, sl
	add r2, sp, #0xc
	mov r3, sb
	bl sub_8038984
	ldr r0, _08036BE8
	adds r0, #0x34
	ldr r1, [sp, #0x68]
	adds r0, r1, r0
	ldr r0, [r0]
	str r0, [sp]
	ldr r2, [sp, #0x64]
	ldrb r0, [r2, #6]
	str r0, [sp, #4]
	str r4, [sp, #8]
	adds r0, r7, #0
	mov r1, sl
	add r2, sp, #0xc
	mov r3, sb
	bl sub_8038984
	ldr r0, _08036BE8
	adds r0, #0x38
	ldr r3, [sp, #0x68]
	adds r0, r3, r0
	ldr r0, [r0]
	str r0, [sp]
	ldr r4, [sp, #0x64]
	ldrb r0, [r4, #7]
	str r0, [sp, #4]
	ldr r0, [sp, #0x2c]
	str r0, [sp, #8]
	adds r0, r7, #0
	mov r1, sl
	add r2, sp, #0xc
	mov r3, sb
	bl sub_8038984
	ldr r0, _08036BE8
	adds r0, #0x3c
	ldr r1, [sp, #0x68]
	adds r0, r1, r0
	ldr r0, [r0]
	str r0, [sp]
	ldrb r0, [r4, #8]
	str r0, [sp, #4]
	ldr r2, [sp, #0x2c]
	str r2, [sp, #8]
	adds r0, r7, #0
	mov r1, sl
	add r2, sp, #0xc
	mov r3, sb
	bl sub_8038984
	ldr r0, _08036BE8
	adds r0, #0x40
	ldr r3, [sp, #0x68]
	adds r0, r3, r0
	ldr r0, [r0]
	str r0, [sp]
	ldrb r0, [r4, #9]
	str r0, [sp, #4]
	ldr r4, [sp, #0x2c]
	str r4, [sp, #8]
	adds r0, r7, #0
	mov r1, sl
	add r2, sp, #0xc
	mov r3, sb
	bl sub_8038984
	ldr r0, _08036BE8
	adds r0, #0x44
	ldr r1, [sp, #0x68]
	adds r0, r1, r0
	ldr r0, [r0]
	str r0, [sp]
	ldr r2, [sp, #0x64]
	ldrb r0, [r2, #0xa]
	str r0, [sp, #4]
	str r4, [sp, #8]
	adds r0, r7, #0
	mov r1, sl
	add r2, sp, #0xc
	mov r3, sb
	bl sub_8038984
	ldr r0, _08036BE8
	adds r0, #0x48
	ldr r3, [sp, #0x68]
	adds r0, r3, r0
	ldr r0, [r0]
	str r0, [sp]
	ldr r4, [sp, #0x64]
	ldrb r0, [r4, #0xb]
	str r0, [sp, #4]
	ldr r0, [sp, #0x2c]
	str r0, [sp, #8]
	adds r0, r7, #0
	mov r1, sl
	add r2, sp, #0xc
	mov r3, sb
	bl sub_8038984
	ldr r0, _08036BE8
	adds r0, #0x4c
	ldr r1, [sp, #0x68]
	adds r0, r1, r0
	ldr r0, [r0]
	str r0, [sp]
	ldrb r0, [r4, #0xc]
	str r0, [sp, #4]
	ldr r2, [sp, #0x2c]
	str r2, [sp, #8]
	adds r0, r7, #0
	mov r1, sl
	add r2, sp, #0xc
	mov r3, sb
	bl sub_8038984
	ldr r0, _08036BE8
	adds r0, #0x50
	ldr r3, [sp, #0x68]
	adds r0, r3, r0
	ldr r0, [r0]
	str r0, [sp]
	ldrb r0, [r4, #0xd]
	str r0, [sp, #4]
	ldr r4, [sp, #0x2c]
	str r4, [sp, #8]
	adds r0, r7, #0
	mov r1, sl
	add r2, sp, #0xc
	mov r3, sb
	bl sub_8038984
	ldr r0, _08036BE8
	adds r0, #0x54
	ldr r1, [sp, #0x68]
	adds r0, r1, r0
	ldr r0, [r0]
	str r0, [sp]
	ldr r2, [sp, #0x64]
	ldrb r0, [r2, #0xe]
	str r0, [sp, #4]
	str r4, [sp, #8]
	adds r0, r7, #0
	mov r1, sl
	add r2, sp, #0xc
	mov r3, sb
	bl sub_8038984
	ldr r0, _08036BE8
	adds r0, #0x58
	ldr r3, [sp, #0x68]
	adds r0, r3, r0
	ldr r0, [r0]
	str r0, [sp]
	ldr r4, [sp, #0x64]
	ldrb r0, [r4, #0xf]
	str r0, [sp, #4]
	ldr r0, [sp, #0x2c]
	str r0, [sp, #8]
	adds r0, r7, #0
	mov r1, sl
	add r2, sp, #0xc
	mov r3, sb
	bl sub_8038984
	ldr r0, _08036BE8
	adds r0, #0x5c
	ldr r1, [sp, #0x68]
	adds r0, r1, r0
	ldr r0, [r0]
	str r0, [sp]
	ldrb r0, [r4, #0x10]
	str r0, [sp, #4]
	ldr r2, [sp, #0x2c]
	str r2, [sp, #8]
	adds r0, r7, #0
	mov r1, sl
	add r2, sp, #0xc
	mov r3, sb
	bl sub_8038984
	ldr r0, _08036BE8
	adds r0, #0x60
	ldr r3, [sp, #0x68]
	adds r0, r3, r0
	ldr r0, [r0]
	str r0, [sp]
	ldrb r0, [r4, #0x11]
	str r0, [sp, #4]
	ldr r4, [sp, #0x2c]
	str r4, [sp, #8]
	adds r0, r7, #0
	mov r1, sl
	add r2, sp, #0xc
	mov r3, sb
	bl sub_8038984
	ldr r0, _08036BE8
	adds r0, #0x64
	ldr r1, [sp, #0x68]
	adds r0, r1, r0
	ldr r0, [r0]
	str r0, [sp]
	ldr r2, [sp, #0x64]
	ldrb r0, [r2, #0x12]
	str r0, [sp, #4]
	str r4, [sp, #8]
	adds r0, r7, #0
	mov r1, sl
	add r2, sp, #0xc
	mov r3, sb
	bl sub_8038984
	ldr r0, _08036BE8
	adds r0, #0x68
	ldr r3, [sp, #0x68]
	adds r0, r3, r0
	ldr r0, [r0]
	str r0, [sp]
	ldr r4, [sp, #0x64]
	ldrb r0, [r4, #0x13]
	str r0, [sp, #4]
	ldr r0, [sp, #0x2c]
	str r0, [sp, #8]
	adds r0, r7, #0
	mov r1, sl
	add r2, sp, #0xc
	mov r3, sb
	bl sub_8038984
	ldr r0, _08036BE8
	adds r0, #0x6c
	ldr r1, [sp, #0x68]
	adds r0, r1, r0
	ldr r0, [r0]
	str r0, [sp]
	ldrb r0, [r4, #0x14]
	str r0, [sp, #4]
	ldr r2, [sp, #0x2c]
	str r2, [sp, #8]
	adds r0, r7, #0
	mov r1, sl
	add r2, sp, #0xc
	mov r3, sb
	bl sub_8038984
	ldr r0, _08036BE8
	adds r0, #0x70
	ldr r3, [sp, #0x68]
	adds r0, r3, r0
	str r0, [sp]
	movs r5, #1
	str r5, [sp, #4]
	ldr r4, [sp, #0x2c]
	str r4, [sp, #8]
	adds r0, r7, #0
	mov r1, sl
	add r2, sp, #0xc
	mov r3, sb
	bl sub_8038984
	ldr r0, _08036BE8
	adds r0, #0x71
	ldr r1, [sp, #0x68]
	adds r0, r1, r0
	str r0, [sp]
	str r5, [sp, #4]
	str r4, [sp, #8]
	adds r0, r7, #0
	mov r1, sl
	add r2, sp, #0xc
	mov r3, sb
	bl sub_8038984
	ldr r0, _08036BE8
	adds r0, #0x72
	ldr r2, [sp, #0x68]
	adds r0, r2, r0
	str r0, [sp]
	str r5, [sp, #4]
	str r4, [sp, #8]
	adds r0, r7, #0
	mov r1, sl
	add r2, sp, #0xc
	mov r3, sb
	bl sub_8038984
	ldr r0, _08036BE8
	adds r0, #0x73
	ldr r3, [sp, #0x68]
	adds r0, r3, r0
	str r0, [sp]
	str r5, [sp, #4]
	str r4, [sp, #8]
	adds r0, r7, #0
	mov r1, sl
	add r2, sp, #0xc
	mov r3, sb
	bl sub_8038984
	ldr r0, _08036BE8
	adds r0, #0x74
	ldr r4, [sp, #0x68]
	adds r0, r4, r0
	str r0, [sp]
	str r5, [sp, #4]
	ldr r0, [sp, #0x2c]
	str r0, [sp, #8]
	adds r0, r7, #0
	mov r1, sl
	add r2, sp, #0xc
	mov r3, sb
	bl sub_8038984
	ldr r1, _08036BEC
	adds r0, r4, r1
	str r0, [sp]
	str r5, [sp, #4]
	ldr r2, [sp, #0x2c]
	str r2, [sp, #8]
	adds r0, r7, #0
	mov r1, sl
	add r2, sp, #0xc
	mov r3, sb
	bl sub_8038984
	ldr r0, _08036BF0
	str r0, [sp]
	movs r0, #6
	str r0, [sp, #4]
	ldr r3, [sp, #0x2c]
	str r3, [sp, #8]
	adds r0, r7, #0
	mov r1, sl
	add r2, sp, #0xc
	mov r3, sb
	bl sub_8038984
	movs r0, #0xc4
	ldr r4, [sp, #0x24]
	adds r5, r4, #0
	muls r5, r0, r5
	ldr r1, _08036BF4
	adds r0, r5, r1
	ldr r0, [r0]
	str r0, [sp]
	ldr r2, _08036BF8
	adds r2, r2, r5
	mov r8, r2
	ldrb r0, [r2]
	str r0, [sp, #4]
	ldr r3, [sp, #0x2c]
	str r3, [sp, #8]
	adds r0, r7, #0
	mov r1, sl
	add r2, sp, #0xc
	mov r3, sb
	bl sub_8038984
	ldr r0, _08036BF8
	adds r0, #0x2c
	adds r0, r5, r0
	ldr r0, [r0]
	str r0, [sp]
	mov r4, r8
	ldrb r0, [r4, #1]
	str r0, [sp, #4]
	ldr r0, [sp, #0x2c]
	str r0, [sp, #8]
	adds r0, r7, #0
	mov r1, sl
	add r2, sp, #0xc
	mov r3, sb
	bl sub_8038984
	ldr r0, _08036BF8
	adds r0, #0x30
	adds r0, r5, r0
	ldr r0, [r0]
	str r0, [sp]
	ldrb r0, [r4, #2]
	str r0, [sp, #4]
	ldr r1, [sp, #0x2c]
	str r1, [sp, #8]
	adds r0, r7, #0
	mov r1, sl
	add r2, sp, #0xc
	mov r3, sb
	bl sub_8038984
	ldr r0, _08036BF8
	adds r0, #0x34
	adds r0, r5, r0
	ldr r0, [r0]
	b _08036BFC
	.align 2, 0
_08036BE8: .4byte 0x0203E170
_08036BEC: .4byte 0x0203E1E5
_08036BF0: .4byte 0x0203E11C
_08036BF4: .4byte 0x0203E468
_08036BF8: .4byte 0x0203E440
_08036BFC:
	str r0, [sp]
	ldrb r0, [r4, #3]
	str r0, [sp, #4]
	ldr r2, [sp, #0x2c]
	str r2, [sp, #8]
	adds r0, r7, #0
	mov r1, sl
	add r2, sp, #0xc
	mov r3, sb
	bl sub_8038984
	ldr r0, _08036FF8
	adds r0, #0x38
	adds r0, r5, r0
	ldr r0, [r0]
	str r0, [sp]
	ldrb r0, [r4, #4]
	str r0, [sp, #4]
	ldr r3, [sp, #0x2c]
	str r3, [sp, #8]
	adds r0, r7, #0
	mov r1, sl
	add r2, sp, #0xc
	mov r3, sb
	bl sub_8038984
	ldr r0, _08036FF8
	adds r0, #0x3c
	adds r0, r5, r0
	ldr r0, [r0]
	str r0, [sp]
	ldrb r0, [r4, #5]
	str r0, [sp, #4]
	ldr r4, [sp, #0x2c]
	str r4, [sp, #8]
	adds r0, r7, #0
	mov r1, sl
	add r2, sp, #0xc
	mov r3, sb
	bl sub_8038984
	ldr r0, _08036FF8
	adds r0, #0x40
	adds r0, r5, r0
	ldr r0, [r0]
	str r0, [sp]
	mov r1, r8
	ldrb r0, [r1, #6]
	str r0, [sp, #4]
	str r4, [sp, #8]
	adds r0, r7, #0
	mov r1, sl
	add r2, sp, #0xc
	mov r3, sb
	bl sub_8038984
	ldr r0, _08036FF8
	adds r0, #0x44
	adds r0, r5, r0
	ldr r0, [r0]
	str r0, [sp]
	mov r2, r8
	ldrb r0, [r2, #7]
	str r0, [sp, #4]
	str r4, [sp, #8]
	adds r0, r7, #0
	mov r1, sl
	add r2, sp, #0xc
	mov r3, sb
	bl sub_8038984
	ldr r0, _08036FF8
	adds r0, #0x48
	adds r0, r5, r0
	ldr r0, [r0]
	str r0, [sp]
	mov r3, r8
	ldrb r0, [r3, #8]
	str r0, [sp, #4]
	str r4, [sp, #8]
	adds r0, r7, #0
	mov r1, sl
	add r2, sp, #0xc
	mov r3, sb
	bl sub_8038984
	ldr r0, _08036FF8
	adds r0, #0x4c
	adds r0, r5, r0
	ldr r0, [r0]
	str r0, [sp]
	mov r4, r8
	ldrb r0, [r4, #9]
	str r0, [sp, #4]
	ldr r0, [sp, #0x2c]
	str r0, [sp, #8]
	adds r0, r7, #0
	mov r1, sl
	add r2, sp, #0xc
	mov r3, sb
	bl sub_8038984
	ldr r0, _08036FF8
	adds r0, #0x50
	adds r0, r5, r0
	ldr r0, [r0]
	str r0, [sp]
	ldrb r0, [r4, #0xa]
	str r0, [sp, #4]
	ldr r1, [sp, #0x2c]
	str r1, [sp, #8]
	adds r0, r7, #0
	mov r1, sl
	add r2, sp, #0xc
	mov r3, sb
	bl sub_8038984
	ldr r0, _08036FF8
	adds r0, #0x54
	adds r0, r5, r0
	ldr r0, [r0]
	str r0, [sp]
	ldrb r0, [r4, #0xb]
	str r0, [sp, #4]
	ldr r2, [sp, #0x2c]
	str r2, [sp, #8]
	adds r0, r7, #0
	mov r1, sl
	add r2, sp, #0xc
	mov r3, sb
	bl sub_8038984
	ldr r0, _08036FF8
	adds r0, #0x58
	adds r0, r5, r0
	ldr r0, [r0]
	str r0, [sp]
	ldrb r0, [r4, #0xc]
	str r0, [sp, #4]
	ldr r3, [sp, #0x2c]
	str r3, [sp, #8]
	adds r0, r7, #0
	mov r1, sl
	add r2, sp, #0xc
	mov r3, sb
	bl sub_8038984
	ldr r4, _08036FFC
	adds r0, r4, r5
	ldr r0, [r0]
	str r0, [sp]
	mov r1, r8
	ldrb r0, [r1, #0xd]
	str r0, [sp, #4]
	ldr r2, [sp, #0x30]
	str r2, [sp, #8]
	adds r0, r7, #0
	mov r1, sl
	add r2, sp, #0xc
	mov r3, sb
	bl sub_8038984
	add r6, sp, #0x14
	ldr r0, _08036FF8
	adds r0, #0x60
	adds r0, r5, r0
	ldr r0, [r0]
	str r0, [sp]
	mov r3, r8
	ldrb r0, [r3, #0xe]
	str r0, [sp, #4]
	ldr r4, [sp, #0x30]
	str r4, [sp, #8]
	adds r0, r7, #0
	ldr r1, [sp, #0x34]
	add r2, sp, #0xc
	adds r3, r6, #0
	bl sub_8038984
	ldr r0, _08036FF8
	adds r0, #0x64
	adds r0, r5, r0
	ldr r0, [r0]
	str r0, [sp]
	mov r1, r8
	ldrb r0, [r1, #0xf]
	str r0, [sp, #4]
	str r4, [sp, #8]
	adds r0, r7, #0
	ldr r1, [sp, #0x34]
	add r2, sp, #0xc
	adds r3, r6, #0
	bl sub_8038984
	ldr r0, _08036FF8
	adds r0, #0x68
	adds r0, r5, r0
	ldr r0, [r0]
	str r0, [sp]
	mov r2, r8
	ldrb r0, [r2, #0x10]
	str r0, [sp, #4]
	str r4, [sp, #8]
	adds r0, r7, #0
	ldr r1, [sp, #0x34]
	add r2, sp, #0xc
	adds r3, r6, #0
	bl sub_8038984
	ldr r0, _08036FF8
	adds r0, #0x6c
	adds r0, r5, r0
	ldr r0, [r0]
	str r0, [sp]
	mov r3, r8
	ldrb r0, [r3, #0x11]
	str r0, [sp, #4]
	str r4, [sp, #8]
	adds r0, r7, #0
	ldr r1, [sp, #0x34]
	add r2, sp, #0xc
	adds r3, r6, #0
	bl sub_8038984
	ldr r0, _08036FF8
	adds r0, #0x70
	adds r0, r5, r0
	ldr r0, [r0]
	str r0, [sp]
	mov r4, r8
	ldrb r0, [r4, #0x1f]
	str r0, [sp, #4]
	ldr r0, [sp, #0x30]
	str r0, [sp, #8]
	adds r0, r7, #0
	ldr r1, [sp, #0x34]
	add r2, sp, #0xc
	adds r3, r6, #0
	bl sub_8038984
	ldr r0, _08036FF8
	adds r0, #0x7c
	adds r0, r5, r0
	ldr r0, [r0]
	str r0, [sp]
	mov r0, r8
	adds r0, #0x22
	ldrb r0, [r0]
	str r0, [sp, #4]
	ldr r1, [sp, #0x30]
	str r1, [sp, #8]
	adds r0, r7, #0
	ldr r1, [sp, #0x34]
	add r2, sp, #0xc
	adds r3, r6, #0
	bl sub_8038984
	ldr r0, _08036FF8
	adds r0, #0x80
	adds r0, r5, r0
	ldr r0, [r0]
	str r0, [sp]
	mov r0, r8
	adds r0, #0x23
	ldrb r0, [r0]
	str r0, [sp, #4]
	ldr r2, [sp, #0x30]
	str r2, [sp, #8]
	adds r0, r7, #0
	ldr r1, [sp, #0x34]
	add r2, sp, #0xc
	adds r3, r6, #0
	bl sub_8038984
	ldr r0, _08036FF8
	adds r0, #0x84
	adds r0, r5, r0
	ldr r0, [r0]
	str r0, [sp]
	mov r0, r8
	adds r0, #0x24
	ldrb r0, [r0]
	str r0, [sp, #4]
	ldr r3, [sp, #0x30]
	str r3, [sp, #8]
	adds r0, r7, #0
	ldr r1, [sp, #0x34]
	add r2, sp, #0xc
	adds r3, r6, #0
	bl sub_8038984
	ldr r0, _08036FF8
	adds r0, #0x88
	adds r0, r5, r0
	ldr r0, [r0]
	str r0, [sp]
	mov r0, r8
	adds r0, #0x25
	ldrb r0, [r0]
	str r0, [sp, #4]
	ldr r4, [sp, #0x30]
	str r4, [sp, #8]
	adds r0, r7, #0
	ldr r1, [sp, #0x34]
	add r2, sp, #0xc
	adds r3, r6, #0
	bl sub_8038984
	ldr r1, _08037000
	adds r0, r5, r1
	ldr r0, [r0]
	str r0, [sp]
	mov r0, r8
	adds r0, #0x20
	ldrb r0, [r0]
	str r0, [sp, #4]
	str r4, [sp, #8]
	adds r0, r7, #0
	ldr r1, [sp, #0x34]
	add r2, sp, #0xc
	adds r3, r6, #0
	bl sub_8038984
	ldr r2, _08037004
	adds r5, r5, r2
	ldr r0, [r5]
	str r0, [sp]
	mov r0, r8
	adds r0, #0x21
	ldrb r0, [r0]
	str r0, [sp, #4]
	str r4, [sp, #8]
	adds r0, r7, #0
	ldr r1, [sp, #0x34]
	add r2, sp, #0xc
	adds r3, r6, #0
	bl sub_8038984
	ldr r3, _08037008
	mov r8, r3
	mov r0, r8
	adds r0, #4
	ldr r4, [sp, #0x60]
	adds r0, r4, r0
	ldr r0, [r0]
	str r0, [sp]
	add r4, r8
	ldrb r0, [r4]
	str r0, [sp, #4]
	ldr r0, [sp, #0x30]
	str r0, [sp, #8]
	adds r0, r7, #0
	ldr r1, [sp, #0x34]
	add r2, sp, #0xc
	adds r3, r6, #0
	bl sub_8038984
	mov r0, r8
	adds r0, #8
	ldr r1, [sp, #0x60]
	adds r0, r1, r0
	ldr r0, [r0]
	str r0, [sp]
	ldrb r0, [r4, #1]
	str r0, [sp, #4]
	ldr r2, [sp, #0x30]
	str r2, [sp, #8]
	adds r0, r7, #0
	ldr r1, [sp, #0x34]
	add r2, sp, #0xc
	adds r3, r6, #0
	bl sub_8038984
	ldr r3, [sp, #0x60]
	ldr r0, _0803700C
	adds r3, r3, r0
	str r3, [sp, #0x3c]
	ldr r0, [r3]
	str r0, [sp]
	ldrb r0, [r4, #2]
	str r0, [sp, #4]
	ldr r1, [sp, #0x30]
	str r1, [sp, #8]
	adds r0, r7, #0
	ldr r1, [sp, #0x34]
	add r2, sp, #0xc
	adds r3, r6, #0
	bl sub_8038984
	ldr r2, [sp, #0x60]
	adds r2, #0x10
	str r2, [sp, #0x60]
	ldr r3, [sp, #0x64]
	adds r3, #0x78
	str r3, [sp, #0x64]
	ldr r4, [sp, #0x68]
	adds r4, #0x78
	str r4, [sp, #0x68]
	ldr r0, [sp, #0x24]
	adds r0, #1
	str r0, [sp, #0x24]
	cmp r0, #5
	bgt _08036F24
	b _08036810
_08036F24:
	ldr r0, _08037010
	str r0, [sp]
	movs r0, #0x13
	str r0, [sp, #4]
	ldr r1, [sp, #0x5c]
	str r1, [sp, #8]
	adds r0, r7, #0
	ldr r1, [sp, #0x54]
	add r2, sp, #0xc
	ldr r3, [sp, #0x58]
	bl sub_8038984
	movs r2, #0
	str r2, [sp, #0x24]
_08036F40:
	movs r3, #0
	movs r0, #0xc4
	ldr r4, [sp, #0x24]
	adds r1, r4, #0
	muls r1, r0, r1
	ldr r2, _08036FF8
	adds r0, r1, r2
	ldrb r0, [r0, #0x12]
	cmp r3, r0
	blt _08036F56
	b _08037112
_08036F56:
	ldr r4, _08037014
	adds r4, r4, r1
	mov r8, r4
	ldr r0, _08037014
	subs r0, #0x90
	adds r1, r1, r0
	str r1, [sp, #0x40]
_08036F64:
	mov r0, r8
	ldr r1, [r0]
	lsls r6, r3, #4
	adds r1, r6, r1
	ldr r0, [sp, #0x10]
	adds r0, r7, r0
	ldrb r0, [r0]
	strb r0, [r1, #1]
	ldr r2, [sp, #0x10]
	adds r0, r7, r2
	ldrb r1, [r0]
	ldr r0, [sp, #0x18]
	adds r0, r0, r1
	str r0, [sp, #0x18]
	adds r2, #1
	str r2, [sp, #0x10]
	mov r4, r8
	ldr r1, [r4]
	adds r1, r6, r1
	adds r2, r7, r2
	ldrb r0, [r2]
	strb r0, [r1, #2]
	ldr r2, [sp, #0x10]
	adds r0, r7, r2
	ldrb r1, [r0]
	ldr r0, [sp, #0x18]
	adds r0, r0, r1
	str r0, [sp, #0x18]
	adds r2, #1
	str r2, [sp, #0x10]
	ldr r1, [r4]
	adds r1, r6, r1
	adds r2, r7, r2
	ldrb r0, [r2]
	strb r0, [r1, #3]
	ldr r2, [sp, #0x10]
	adds r0, r7, r2
	ldrb r1, [r0]
	ldr r0, [sp, #0x18]
	adds r0, r0, r1
	str r0, [sp, #0x18]
	adds r2, #1
	str r2, [sp, #0x10]
	ldr r1, [r4]
	adds r1, r6, r1
	adds r2, r7, r2
	ldrb r0, [r2]
	strb r0, [r1, #4]
	ldr r1, [sp, #0x10]
	adds r0, r7, r1
	ldrb r2, [r0]
	ldr r0, [sp, #0x18]
	adds r0, r0, r2
	str r0, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	movs r0, #0
	mov sb, r0
	ldr r0, [r4]
	adds r0, r6, r0
	adds r3, #1
	mov ip, r3
	ldrb r0, [r0]
	cmp sb, r0
	blt _08036FE8
	b _08037106
_08036FE8:
	movs r0, #0xc4
	ldr r1, [sp, #0x24]
	muls r0, r1, r0
	ldr r2, _08037014
	adds r5, r0, r2
_08036FF2:
	ldr r0, [r5]
	b _08037018
	.align 2, 0
_08036FF8: .4byte 0x0203E440
_08036FFC: .4byte 0x0203E49C
_08037000: .4byte 0x0203E4B4
_08037004: .4byte 0x0203E4B8
_08037008: .4byte 0x0203E8D8
_0803700C: .4byte 0x0203E8E4
_08037010: .4byte 0x0203E0FC
_08037014: .4byte 0x0203E4D0
_08037018:
	mov sl, r6
	adds r0, r6, r0
	ldr r1, [r0, #0xc]
	mov r3, sb
	lsls r3, r3, #3
	str r3, [sp, #0x48]
	adds r1, r3, r1
	ldr r0, [sp, #0x10]
	adds r0, r7, r0
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r2, [sp, #0x10]
	adds r0, r7, r2
	ldrb r1, [r0]
	ldr r0, [sp, #0x18]
	adds r0, r0, r1
	str r0, [sp, #0x18]
	adds r2, #1
	str r2, [sp, #0x10]
	ldr r0, [r5]
	adds r0, r6, r0
	ldr r1, [r0, #0xc]
	adds r1, r3, r1
	adds r2, r7, r2
	ldrb r0, [r2]
	strb r0, [r1, #1]
	ldr r2, [sp, #0x10]
	adds r0, r7, r2
	ldrb r1, [r0]
	ldr r0, [sp, #0x18]
	adds r0, r0, r1
	str r0, [sp, #0x18]
	adds r2, #1
	str r2, [sp, #0x10]
	ldr r0, [r5]
	adds r0, r6, r0
	ldr r1, [r0, #0xc]
	adds r1, r3, r1
	adds r2, r7, r2
	ldrb r0, [r2]
	strb r0, [r1, #2]
	ldr r2, [sp, #0x10]
	adds r0, r7, r2
	ldrb r1, [r0]
	ldr r0, [sp, #0x18]
	adds r0, r0, r1
	str r0, [sp, #0x18]
	adds r2, #1
	str r2, [sp, #0x10]
	ldr r0, [r5]
	adds r0, r6, r0
	ldr r1, [r0, #0xc]
	adds r1, r3, r1
	adds r2, r7, r2
	ldrb r0, [r2]
	strb r0, [r1, #3]
	ldr r2, [sp, #0x10]
	adds r0, r7, r2
	ldrb r1, [r0]
	ldr r0, [sp, #0x18]
	adds r0, r0, r1
	str r0, [sp, #0x18]
	adds r2, #1
	str r2, [sp, #0x10]
	ldr r0, [r5]
	adds r0, r6, r0
	ldr r3, [r0, #0xc]
	ldr r4, [sp, #0x48]
	adds r3, r4, r3
	adds r2, r7, r2
	ldrb r1, [r2]
	ldrb r0, [r2, #1]
	lsls r0, r0, #8
	orrs r1, r0
	strh r1, [r3, #4]
	ldr r2, [sp, #0x10]
	adds r0, r7, r2
	ldrb r3, [r0]
	ldr r0, [sp, #0x18]
	adds r2, #1
	adds r1, r7, r2
	adds r0, r0, r3
	ldrb r1, [r1]
	adds r0, r0, r1
	str r0, [sp, #0x18]
	adds r2, #1
	str r2, [sp, #0x10]
	ldr r0, [r5]
	adds r0, r6, r0
	ldr r0, [r0, #0xc]
	adds r0, r4, r0
	str r0, [sp, #0x4c]
	adds r2, r7, r2
	ldrb r1, [r2]
	ldrb r0, [r2, #1]
	lsls r0, r0, #8
	orrs r1, r0
	ldr r0, [sp, #0x4c]
	strh r1, [r0, #6]
	ldr r1, [sp, #0x10]
	adds r0, r7, r1
	ldrb r3, [r0]
	ldr r0, [sp, #0x18]
	adds r1, #1
	adds r2, r7, r1
	adds r0, r0, r3
	ldrb r2, [r2]
	adds r0, r0, r2
	str r0, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	movs r1, #1
	add sb, r1
	ldr r0, [r5]
	add r0, sl
	ldrb r2, [r0]
	cmp sb, r2
	bge _08037106
	b _08036FF2
_08037106:
	mov r3, ip
	ldr r4, [sp, #0x40]
	ldrb r4, [r4, #0x12]
	cmp r3, r4
	bge _08037112
	b _08036F64
_08037112:
	ldr r0, [sp, #0x24]
	adds r0, #1
	str r0, [sp, #0x24]
	cmp r0, #5
	bgt _0803711E
	b _08036F40
_0803711E:
	movs r1, #0
	str r1, [sp, #0x24]
	ldr r6, _080374AC
	movs r2, #0xc4
	mov sl, r2
	mov sb, r6
	mov r8, r2
_0803712C:
	movs r3, #0
	ldr r4, [sp, #0x24]
	mov r0, sl
	muls r0, r4, r0
	adds r0, r0, r6
	adds r4, #1
	mov ip, r4
	ldrb r0, [r0, #0x13]
	cmp r3, r0
	bge _08037172
	ldr r0, [sp, #0x24]
	mov r1, r8
	muls r1, r0, r1
	ldr r0, _080374B0
	adds r5, r1, r0
	mov r2, sb
	adds r4, r1, r2
_0803714E:
	ldr r1, [r5]
	adds r1, r1, r3
	ldr r0, [sp, #0x10]
	adds r0, r7, r0
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, [sp, #0x10]
	adds r0, r7, r1
	ldrb r2, [r0]
	ldr r0, [sp, #0x18]
	adds r0, r0, r2
	str r0, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	adds r3, #1
	ldrb r0, [r4, #0x13]
	cmp r3, r0
	blt _0803714E
_08037172:
	movs r3, #0
	ldr r1, [sp, #0x24]
	mov r0, sl
	muls r0, r1, r0
	adds r0, r0, r6
	ldrb r0, [r0, #0x14]
	cmp r3, r0
	bge _080371B4
	adds r2, r1, #0
	mov r1, r8
	muls r1, r2, r1
	ldr r0, _080374B4
	adds r5, r1, r0
	mov r0, sb
	adds r4, r1, r0
_08037190:
	ldr r1, [r5]
	adds r1, r1, r3
	ldr r0, [sp, #0x10]
	adds r0, r7, r0
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, [sp, #0x10]
	adds r0, r7, r1
	ldrb r2, [r0]
	ldr r0, [sp, #0x18]
	adds r0, r0, r2
	str r0, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	adds r3, #1
	ldrb r1, [r4, #0x14]
	cmp r3, r1
	blt _08037190
_080371B4:
	movs r3, #0
	ldr r2, [sp, #0x24]
	mov r0, sl
	muls r0, r2, r0
	adds r0, r0, r6
	ldrb r0, [r0, #0x15]
	cmp r3, r0
	bge _080371F4
	mov r1, r8
	muls r1, r2, r1
	ldr r0, _080374B8
	adds r5, r1, r0
	mov r0, sb
	adds r4, r1, r0
_080371D0:
	ldr r1, [r5]
	adds r1, r1, r3
	ldr r0, [sp, #0x10]
	adds r0, r7, r0
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, [sp, #0x10]
	adds r0, r7, r1
	ldrb r2, [r0]
	ldr r0, [sp, #0x18]
	adds r0, r0, r2
	str r0, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	adds r3, #1
	ldrb r1, [r4, #0x15]
	cmp r3, r1
	blt _080371D0
_080371F4:
	movs r3, #0
	ldr r2, [sp, #0x24]
	mov r0, sl
	muls r0, r2, r0
	adds r0, r0, r6
	ldrb r0, [r0, #0x16]
	cmp r3, r0
	bge _08037234
	mov r1, r8
	muls r1, r2, r1
	ldr r0, _080374BC
	adds r5, r1, r0
	mov r0, sb
	adds r4, r1, r0
_08037210:
	ldr r1, [r5]
	adds r1, r1, r3
	ldr r0, [sp, #0x10]
	adds r0, r7, r0
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, [sp, #0x10]
	adds r0, r7, r1
	ldrb r2, [r0]
	ldr r0, [sp, #0x18]
	adds r0, r0, r2
	str r0, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	adds r3, #1
	ldrb r1, [r4, #0x16]
	cmp r3, r1
	blt _08037210
_08037234:
	movs r3, #0
	ldr r2, [sp, #0x24]
	mov r0, sl
	muls r0, r2, r0
	adds r0, r0, r6
	ldrb r0, [r0, #0x17]
	cmp r3, r0
	bge _08037274
	mov r1, r8
	muls r1, r2, r1
	ldr r0, _080374C0
	adds r5, r1, r0
	mov r0, sb
	adds r4, r1, r0
_08037250:
	ldr r1, [r5]
	adds r1, r1, r3
	ldr r0, [sp, #0x10]
	adds r0, r7, r0
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, [sp, #0x10]
	adds r0, r7, r1
	ldrb r2, [r0]
	ldr r0, [sp, #0x18]
	adds r0, r0, r2
	str r0, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	adds r3, #1
	ldrb r1, [r4, #0x17]
	cmp r3, r1
	blt _08037250
_08037274:
	movs r3, #0
	ldr r2, [sp, #0x24]
	mov r0, sl
	muls r0, r2, r0
	adds r0, r0, r6
	ldrb r0, [r0, #0x18]
	cmp r3, r0
	bge _080372B4
	mov r1, r8
	muls r1, r2, r1
	ldr r0, _080374C4
	adds r5, r1, r0
	mov r0, sb
	adds r4, r1, r0
_08037290:
	ldr r1, [r5]
	adds r1, r1, r3
	ldr r0, [sp, #0x10]
	adds r0, r7, r0
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, [sp, #0x10]
	adds r0, r7, r1
	ldrb r2, [r0]
	ldr r0, [sp, #0x18]
	adds r0, r0, r2
	str r0, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	adds r3, #1
	ldrb r1, [r4, #0x18]
	cmp r3, r1
	blt _08037290
_080372B4:
	movs r3, #0
	ldr r2, [sp, #0x24]
	mov r0, sl
	muls r0, r2, r0
	adds r0, r0, r6
	ldrb r0, [r0, #0x19]
	cmp r3, r0
	bge _080372F4
	mov r1, r8
	muls r1, r2, r1
	ldr r0, _080374C8
	adds r5, r1, r0
	mov r0, sb
	adds r4, r1, r0
_080372D0:
	ldr r1, [r5]
	adds r1, r1, r3
	ldr r0, [sp, #0x10]
	adds r0, r7, r0
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, [sp, #0x10]
	adds r0, r7, r1
	ldrb r2, [r0]
	ldr r0, [sp, #0x18]
	adds r0, r0, r2
	str r0, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	adds r3, #1
	ldrb r1, [r4, #0x19]
	cmp r3, r1
	blt _080372D0
_080372F4:
	movs r3, #0
	ldr r2, [sp, #0x24]
	mov r0, sl
	muls r0, r2, r0
	adds r0, r0, r6
	ldrb r0, [r0, #0x1a]
	cmp r3, r0
	bge _08037334
	mov r1, r8
	muls r1, r2, r1
	ldr r0, _080374CC
	adds r5, r1, r0
	mov r0, sb
	adds r4, r1, r0
_08037310:
	ldr r1, [r5]
	adds r1, r1, r3
	ldr r0, [sp, #0x10]
	adds r0, r7, r0
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, [sp, #0x10]
	adds r0, r7, r1
	ldrb r2, [r0]
	ldr r0, [sp, #0x18]
	adds r0, r0, r2
	str r0, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	adds r3, #1
	ldrb r1, [r4, #0x1a]
	cmp r3, r1
	blt _08037310
_08037334:
	movs r3, #0
	ldr r2, [sp, #0x24]
	mov r0, sl
	muls r0, r2, r0
	adds r0, r0, r6
	ldrb r0, [r0, #0x1b]
	cmp r3, r0
	bge _08037374
	mov r1, r8
	muls r1, r2, r1
	ldr r0, _080374D0
	adds r5, r1, r0
	mov r0, sb
	adds r4, r1, r0
_08037350:
	ldr r1, [r5]
	adds r1, r1, r3
	ldr r0, [sp, #0x10]
	adds r0, r7, r0
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, [sp, #0x10]
	adds r0, r7, r1
	ldrb r2, [r0]
	ldr r0, [sp, #0x18]
	adds r0, r0, r2
	str r0, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	adds r3, #1
	ldrb r1, [r4, #0x1b]
	cmp r3, r1
	blt _08037350
_08037374:
	movs r3, #0
	ldr r2, [sp, #0x24]
	mov r0, sl
	muls r0, r2, r0
	adds r0, r0, r6
	ldrb r0, [r0, #0x1c]
	cmp r3, r0
	bge _080373B4
	mov r1, r8
	muls r1, r2, r1
	ldr r0, _080374D4
	adds r5, r1, r0
	mov r0, sb
	adds r4, r1, r0
_08037390:
	ldr r1, [r5]
	adds r1, r1, r3
	ldr r0, [sp, #0x10]
	adds r0, r7, r0
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, [sp, #0x10]
	adds r0, r7, r1
	ldrb r2, [r0]
	ldr r0, [sp, #0x18]
	adds r0, r0, r2
	str r0, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	adds r3, #1
	ldrb r1, [r4, #0x1c]
	cmp r3, r1
	blt _08037390
_080373B4:
	movs r3, #0
	ldr r2, [sp, #0x24]
	mov r0, sl
	muls r0, r2, r0
	adds r0, r0, r6
	ldrb r0, [r0, #0x1d]
	cmp r3, r0
	bge _080373F4
	mov r1, r8
	muls r1, r2, r1
	ldr r0, _080374D8
	adds r5, r1, r0
	mov r0, sb
	adds r4, r1, r0
_080373D0:
	ldr r1, [r5]
	adds r1, r1, r3
	ldr r0, [sp, #0x10]
	adds r0, r7, r0
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, [sp, #0x10]
	adds r0, r7, r1
	ldrb r2, [r0]
	ldr r0, [sp, #0x18]
	adds r0, r0, r2
	str r0, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	adds r3, #1
	ldrb r1, [r4, #0x1d]
	cmp r3, r1
	blt _080373D0
_080373F4:
	movs r3, #0
	ldr r2, [sp, #0x24]
	mov r0, sl
	muls r0, r2, r0
	adds r0, r0, r6
	ldrb r0, [r0, #0x1e]
	cmp r3, r0
	bge _08037434
	mov r1, r8
	muls r1, r2, r1
	ldr r0, _080374DC
	adds r5, r1, r0
	mov r0, sb
	adds r4, r1, r0
_08037410:
	ldr r1, [r5]
	adds r1, r1, r3
	ldr r0, [sp, #0x10]
	adds r0, r7, r0
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, [sp, #0x10]
	adds r0, r7, r1
	ldrb r2, [r0]
	ldr r0, [sp, #0x18]
	adds r0, r0, r2
	str r0, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	adds r3, #1
	ldrb r1, [r4, #0x1e]
	cmp r3, r1
	blt _08037410
_08037434:
	mov r2, ip
	str r2, [sp, #0x24]
	cmp r2, #5
	bgt _0803743E
	b _0803712C
_0803743E:
	ldr r1, [sp, #0x10]
	adds r0, r7, r1
	ldrb r2, [r0]
	ldr r0, [sp, #0x18]
	adds r0, r0, r2
	str r0, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	add r2, sp, #0xc
	adds r1, r7, r1
	ldrb r0, [r1]
	strb r0, [r2]
	ldr r1, [sp, #0x10]
	adds r0, r7, r1
	ldrb r2, [r0]
	ldr r0, [sp, #0x18]
	adds r0, r0, r2
	str r0, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	add r0, sp, #0xc
	ldrb r3, [r0]
	lsls r1, r3, #0x18
	movs r2, #1
	lsrs r0, r1, #0x1f
	ldr r4, _080374E0
	strb r0, [r4]
	lsrs r0, r1, #0x1e
	ands r0, r2
	ldr r4, _080374E4
	strb r0, [r4]
	lsrs r0, r1, #0x1d
	ands r0, r2
	ldr r4, _080374E8
	strb r0, [r4]
	lsrs r0, r1, #0x1c
	ands r0, r2
	ldr r4, _080374EC
	strb r0, [r4]
	lsrs r0, r1, #0x1b
	ands r0, r2
	ldr r4, _080374F0
	strb r0, [r4]
	lsrs r0, r1, #0x1a
	ands r0, r2
	ldr r4, _080374F4
	strb r0, [r4]
	lsrs r1, r1, #0x19
	ands r1, r2
	ldr r0, _080374F8
	strb r1, [r0]
	movs r5, #1
	adds r0, r5, #0
	b _080374FC
	.align 2, 0
_080374AC: .4byte 0x0203E440
_080374B0: .4byte 0x0203E4D4
_080374B4: .4byte 0x0203E4D8
_080374B8: .4byte 0x0203E4DC
_080374BC: .4byte 0x0203E4E0
_080374C0: .4byte 0x0203E4E4
_080374C4: .4byte 0x0203E4E8
_080374C8: .4byte 0x0203E4EC
_080374CC: .4byte 0x0203E4F0
_080374D0: .4byte 0x0203E4F4
_080374D4: .4byte 0x0203E4F8
_080374D8: .4byte 0x0203E4FC
_080374DC: .4byte 0x0203E500
_080374E0: .4byte 0x0203E938
_080374E4: .4byte 0x0203E939
_080374E8: .4byte 0x0203E133
_080374EC: .4byte 0x0203E93D
_080374F0: .4byte 0x0203E93E
_080374F4: .4byte 0x0203E93F
_080374F8: .4byte 0x0203E940
_080374FC:
	ands r0, r3
	ldr r1, _080378E8
	strb r0, [r1]
	add r1, sp, #0xc
	ldr r0, [sp, #0x10]
	adds r0, r7, r0
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, [sp, #0x10]
	adds r0, r7, r1
	ldrb r3, [r0]
	ldr r0, [sp, #0x18]
	adds r0, r0, r3
	str r0, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	add r0, sp, #0xc
	ldrb r3, [r0]
	lsls r1, r3, #0x18
	lsrs r0, r1, #0x1f
	ands r0, r2
	ldr r4, _080378EC
	strb r0, [r4]
	lsrs r0, r1, #0x1e
	ands r0, r2
	ldr r4, _080378F0
	strb r0, [r4]
	lsrs r0, r1, #0x1d
	ands r0, r2
	ldr r4, _080378F4
	strb r0, [r4]
	lsrs r0, r1, #0x1c
	ands r0, r2
	ldr r4, _080378F8
	strb r0, [r4]
	lsrs r0, r1, #0x1b
	ands r0, r2
	ldr r4, _080378FC
	strb r0, [r4]
	lsrs r0, r1, #0x1a
	ands r0, r2
	ldr r4, _08037900
	strb r0, [r4]
	lsrs r1, r1, #0x19
	ands r1, r2
	ldr r0, _08037904
	strb r1, [r0]
	adds r0, r5, #0
	ands r0, r3
	ldr r1, _08037908
	strb r0, [r1]
	add r1, sp, #0xc
	ldr r0, [sp, #0x10]
	adds r0, r7, r0
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, [sp, #0x10]
	adds r0, r7, r1
	ldrb r3, [r0]
	ldr r0, [sp, #0x18]
	adds r0, r0, r3
	str r0, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	add r0, sp, #0xc
	ldrb r3, [r0]
	lsls r1, r3, #0x18
	lsrs r0, r1, #0x1f
	ands r0, r2
	ldr r4, _0803790C
	strb r0, [r4]
	lsrs r0, r1, #0x1e
	ands r0, r2
	ldr r4, _08037910
	strb r0, [r4]
	lsrs r0, r1, #0x1d
	ands r0, r2
	ldr r4, _08037914
	strb r0, [r4]
	lsrs r0, r1, #0x1c
	ands r0, r2
	ldr r4, _08037918
	strb r0, [r4]
	lsrs r0, r1, #0x1b
	ands r0, r2
	ldr r4, _0803791C
	strb r0, [r4]
	lsrs r0, r1, #0x1a
	ands r0, r2
	ldr r4, _08037920
	strb r0, [r4]
	lsrs r1, r1, #0x19
	ands r1, r2
	ldr r0, _08037924
	strb r1, [r0]
	adds r0, r5, #0
	ands r0, r3
	ldr r1, _08037928
	strb r0, [r1]
	add r1, sp, #0xc
	ldr r0, [sp, #0x10]
	adds r0, r7, r0
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, [sp, #0x10]
	adds r0, r7, r1
	ldrb r3, [r0]
	ldr r0, [sp, #0x18]
	adds r0, r0, r3
	str r0, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	add r0, sp, #0xc
	ldrb r3, [r0]
	lsls r1, r3, #0x18
	lsrs r0, r1, #0x1f
	ands r0, r2
	ldr r4, _0803792C
	strb r0, [r4]
	lsrs r0, r1, #0x1e
	ands r0, r2
	ldr r4, _08037930
	strb r0, [r4]
	lsrs r0, r1, #0x1d
	ands r0, r2
	ldr r4, _08037934
	strb r0, [r4]
	lsrs r0, r1, #0x1c
	ands r0, r2
	ldr r4, _08037938
	strb r0, [r4]
	lsrs r0, r1, #0x1b
	ands r0, r2
	ldr r4, _0803793C
	strb r0, [r4]
	lsrs r0, r1, #0x1a
	ands r0, r2
	ldr r4, _08037940
	strb r0, [r4]
	lsrs r1, r1, #0x19
	ands r1, r2
	ldr r0, _08037944
	strb r1, [r0]
	adds r0, r5, #0
	ands r0, r3
	ldr r1, _08037948
	strb r0, [r1]
	add r1, sp, #0xc
	ldr r0, [sp, #0x10]
	adds r0, r7, r0
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, [sp, #0x10]
	adds r0, r7, r1
	ldrb r3, [r0]
	ldr r0, [sp, #0x18]
	adds r0, r0, r3
	str r0, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	add r0, sp, #0xc
	ldrb r3, [r0]
	lsls r1, r3, #0x18
	lsrs r0, r1, #0x1f
	ands r0, r2
	ldr r4, _0803794C
	strb r0, [r4]
	lsrs r0, r1, #0x1e
	ands r0, r2
	ldr r4, _08037950
	strb r0, [r4]
	lsrs r0, r1, #0x1d
	ands r0, r2
	ldr r4, _08037954
	strb r0, [r4]
	lsrs r0, r1, #0x1c
	ands r0, r2
	ldr r4, _08037958
	strb r0, [r4]
	lsrs r0, r1, #0x1b
	ands r0, r2
	ldr r4, _0803795C
	strb r0, [r4]
	lsrs r0, r1, #0x1a
	ands r0, r2
	ldr r4, _08037960
	strb r0, [r4]
	lsrs r1, r1, #0x19
	ands r1, r2
	ldr r0, _08037964
	strb r1, [r0]
	adds r0, r5, #0
	ands r0, r3
	ldr r1, _08037968
	strb r0, [r1]
	add r1, sp, #0xc
	ldr r0, [sp, #0x10]
	adds r0, r7, r0
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, [sp, #0x10]
	adds r0, r7, r1
	ldrb r3, [r0]
	ldr r0, [sp, #0x18]
	adds r0, r0, r3
	str r0, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	add r0, sp, #0xc
	ldrb r3, [r0]
	lsls r1, r3, #0x18
	lsrs r0, r1, #0x1f
	ands r0, r2
	ldr r4, _0803796C
	strb r0, [r4]
	lsrs r0, r1, #0x1e
	ands r0, r2
	ldr r4, _08037970
	strb r0, [r4]
	lsrs r0, r1, #0x1d
	ands r0, r2
	ldr r4, _08037974
	strb r0, [r4]
	lsrs r0, r1, #0x1c
	ands r0, r2
	ldr r4, _08037978
	strb r0, [r4]
	lsrs r0, r1, #0x1b
	ands r0, r2
	ldr r4, _0803797C
	strb r0, [r4]
	lsrs r0, r1, #0x1a
	ands r0, r2
	ldr r4, _08037980
	strb r0, [r4]
	lsrs r1, r1, #0x19
	ands r1, r2
	ldr r0, _08037984
	strb r1, [r0]
	adds r0, r5, #0
	ands r0, r3
	ldr r1, _08037988
	strb r0, [r1]
	add r1, sp, #0xc
	ldr r0, [sp, #0x10]
	adds r0, r7, r0
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, [sp, #0x10]
	adds r0, r7, r1
	ldrb r3, [r0]
	ldr r0, [sp, #0x18]
	adds r0, r0, r3
	str r0, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	add r0, sp, #0xc
	ldrb r3, [r0]
	lsls r1, r3, #0x18
	lsrs r0, r1, #0x1f
	ands r0, r2
	ldr r4, _0803798C
	strb r0, [r4]
	lsrs r0, r1, #0x1e
	ands r0, r2
	ldr r4, _08037990
	strb r0, [r4]
	lsrs r0, r1, #0x1d
	ands r0, r2
	ldr r4, _08037994
	strb r0, [r4]
	lsrs r0, r1, #0x1c
	ands r0, r2
	ldr r4, _08037998
	strb r0, [r4]
	lsrs r0, r1, #0x1b
	ands r0, r2
	ldr r4, _0803799C
	strb r0, [r4]
	lsrs r0, r1, #0x1a
	ands r0, r2
	ldr r4, _080379A0
	strb r0, [r4]
	lsrs r1, r1, #0x19
	ands r1, r2
	ldr r0, _080379A4
	strb r1, [r0]
	adds r0, r5, #0
	ands r0, r3
	ldr r1, _080379A8
	strb r0, [r1]
	add r1, sp, #0xc
	ldr r0, [sp, #0x10]
	adds r0, r7, r0
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, [sp, #0x10]
	adds r0, r7, r1
	ldrb r3, [r0]
	ldr r0, [sp, #0x18]
	adds r0, r0, r3
	str r0, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	add r0, sp, #0xc
	ldrb r3, [r0]
	lsls r1, r3, #0x18
	lsrs r0, r1, #0x1f
	ands r0, r2
	ldr r4, _080379AC
	strb r0, [r4]
	lsrs r0, r1, #0x1e
	ands r0, r2
	ldr r4, _080379B0
	strb r0, [r4]
	lsrs r0, r1, #0x1d
	ands r0, r2
	ldr r4, _080379B4
	strb r0, [r4]
	lsrs r0, r1, #0x1c
	ands r0, r2
	ldr r4, _080379B8
	strb r0, [r4]
	lsrs r0, r1, #0x1b
	ands r0, r2
	ldr r4, _080379BC
	strb r0, [r4]
	lsrs r0, r1, #0x1a
	ands r0, r2
	ldr r4, _080379C0
	strb r0, [r4]
	lsrs r1, r1, #0x19
	ands r1, r2
	ldr r0, _080379C4
	strb r1, [r0]
	adds r0, r5, #0
	ands r0, r3
	ldr r1, _080379C8
	strb r0, [r1]
	add r1, sp, #0xc
	ldr r0, [sp, #0x10]
	adds r0, r7, r0
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, [sp, #0x10]
	adds r0, r7, r1
	ldrb r3, [r0]
	ldr r0, [sp, #0x18]
	adds r0, r0, r3
	str r0, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	add r0, sp, #0xc
	ldrb r3, [r0]
	lsls r1, r3, #0x18
	lsrs r0, r1, #0x1f
	ands r0, r2
	ldr r4, _080379CC
	strb r0, [r4]
	lsrs r0, r1, #0x1e
	ands r0, r2
	ldr r4, _080379D0
	strb r0, [r4]
	lsrs r0, r1, #0x1d
	ands r0, r2
	ldr r4, _080379D4
	strb r0, [r4]
	lsrs r0, r1, #0x1c
	ands r0, r2
	ldr r4, _080379D8
	strb r0, [r4]
	lsrs r0, r1, #0x1b
	ands r0, r2
	ldr r4, _080379DC
	strb r0, [r4]
	lsrs r0, r1, #0x1a
	ands r0, r2
	ldr r4, _080379E0
	strb r0, [r4]
	lsrs r1, r1, #0x19
	ands r1, r2
	ldr r0, _080379E4
	strb r1, [r0]
	adds r0, r5, #0
	ands r0, r3
	ldr r1, _080379E8
	strb r0, [r1]
	add r1, sp, #0xc
	ldr r0, [sp, #0x10]
	adds r0, r7, r0
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, [sp, #0x10]
	adds r0, r7, r1
	ldrb r3, [r0]
	ldr r0, [sp, #0x18]
	adds r0, r0, r3
	str r0, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	add r0, sp, #0xc
	ldrb r1, [r0]
	lsls r1, r1, #0x18
	lsrs r0, r1, #0x1f
	ands r0, r2
	ldr r3, _080379EC
	strb r0, [r3]
	lsrs r1, r1, #0x1e
	ands r1, r2
	ldr r4, _080379F0
	strb r1, [r4]
	add r0, sp, #0xc
	ldrb r3, [r0]
	lsls r1, r3, #0x18
	lsrs r0, r1, #0x1d
	ands r0, r2
	ldr r4, _080379F4
	strb r0, [r4]
	lsrs r0, r1, #0x1c
	ands r0, r2
	ldr r4, _080379F8
	strb r0, [r4]
	lsrs r0, r1, #0x1b
	ands r0, r2
	ldr r4, _080379FC
	strb r0, [r4]
	lsrs r0, r1, #0x1a
	ands r0, r2
	ldr r4, _08037A00
	strb r0, [r4]
	lsrs r1, r1, #0x19
	ands r1, r2
	ldr r0, _08037A04
	strb r1, [r0]
	adds r0, r5, #0
	ands r0, r3
	ldr r1, _08037A08
	strb r0, [r1]
	add r1, sp, #0xc
	ldr r0, [sp, #0x10]
	adds r0, r7, r0
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, [sp, #0x10]
	adds r0, r7, r1
	ldrb r3, [r0]
	ldr r0, [sp, #0x18]
	adds r0, r0, r3
	str r0, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	add r0, sp, #0xc
	ldrb r3, [r0]
	lsls r1, r3, #0x18
	lsrs r0, r1, #0x1f
	ands r0, r2
	ldr r4, _08037A0C
	strb r0, [r4]
	lsrs r0, r1, #0x1e
	ands r0, r2
	ldr r4, _08037A10
	strb r0, [r4]
	lsrs r0, r1, #0x1d
	ands r0, r2
	ldr r4, _08037A14
	strb r0, [r4]
	lsrs r0, r1, #0x1c
	ands r0, r2
	ldr r4, _08037A18
	strb r0, [r4]
	lsrs r0, r1, #0x1b
	ands r0, r2
	ldr r4, _08037A1C
	strb r0, [r4]
	lsrs r0, r1, #0x1a
	ands r0, r2
	ldr r4, _08037A20
	strb r0, [r4]
	lsrs r1, r1, #0x19
	ands r1, r2
	ldr r0, _08037A24
	strb r1, [r0]
	adds r0, r5, #0
	ands r0, r3
	ldr r1, _08037A28
	strb r0, [r1]
	add r1, sp, #0xc
	ldr r0, [sp, #0x10]
	adds r0, r7, r0
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, [sp, #0x10]
	adds r0, r7, r1
	ldrb r3, [r0]
	ldr r0, [sp, #0x18]
	adds r0, r0, r3
	str r0, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	add r0, sp, #0xc
	ldrb r3, [r0]
	b _08037A2C
	.align 2, 0
_080378E8: .4byte 0x0203E10F
_080378EC: .4byte 0x0203E941
_080378F0: .4byte 0x0203E942
_080378F4: .4byte 0x0203E943
_080378F8: .4byte 0x0203E944
_080378FC: .4byte 0x0203E945
_08037900: .4byte 0x0203E946
_08037904: .4byte 0x0203E947
_08037908: .4byte 0x0203E949
_0803790C: .4byte 0x0203E94A
_08037910: .4byte 0x0203E94B
_08037914: .4byte 0x0203E94C
_08037918: .4byte 0x0203E94D
_0803791C: .4byte 0x0203E94E
_08037920: .4byte 0x0203E960
_08037924: .4byte 0x0203E961
_08037928: .4byte 0x0203E94F
_0803792C: .4byte 0x0203E950
_08037930: .4byte 0x0203E951
_08037934: .4byte 0x0203E952
_08037938: .4byte 0x0203E954
_0803793C: .4byte 0x0203E955
_08037940: .4byte 0x0203E956
_08037944: .4byte 0x0203E957
_08037948: .4byte 0x0203E958
_0803794C: .4byte 0x0203E959
_08037950: .4byte 0x0203E95A
_08037954: .4byte 0x0203E95B
_08037958: .4byte 0x0203E953
_0803795C: .4byte 0x0203E95C
_08037960: .4byte 0x0203E95D
_08037964: .4byte 0x0203E95E
_08037968: .4byte 0x0203E95F
_0803796C: .4byte 0x0203E962
_08037970: .4byte 0x0203E963
_08037974: .4byte 0x0203E964
_08037978: .4byte 0x0203E967
_0803797C: .4byte 0x0203E965
_08037980: .4byte 0x0203E966
_08037984: .4byte 0x0203E968
_08037988: .4byte 0x0203E969
_0803798C: .4byte 0x0203E96A
_08037990: .4byte 0x0203E96B
_08037994: .4byte 0x0203E96C
_08037998: .4byte 0x0203E96D
_0803799C: .4byte 0x0203E96E
_080379A0: .4byte 0x0203E96F
_080379A4: .4byte 0x0203E970
_080379A8: .4byte 0x0203E948
_080379AC: .4byte 0x0203E122
_080379B0: .4byte 0x0203E123
_080379B4: .4byte 0x0203E124
_080379B8: .4byte 0x0203E125
_080379BC: .4byte 0x0203E126
_080379C0: .4byte 0x0203E127
_080379C4: .4byte 0x0203E128
_080379C8: .4byte 0x0203E129
_080379CC: .4byte 0x0203E12A
_080379D0: .4byte 0x0203E12B
_080379D4: .4byte 0x0203E12C
_080379D8: .4byte 0x0203E12D
_080379DC: .4byte 0x0203E12E
_080379E0: .4byte 0x0203E12F
_080379E4: .4byte 0x0203E130
_080379E8: .4byte 0x0203E131
_080379EC: .4byte 0x0203E132
_080379F0: .4byte 0x0203E972
_080379F4: .4byte 0x0203E973
_080379F8: .4byte 0x0203E974
_080379FC: .4byte 0x0203E142
_08037A00: .4byte 0x0203E143
_08037A04: .4byte 0x0203E144
_08037A08: .4byte 0x0203E145
_08037A0C: .4byte 0x0203E146
_08037A10: .4byte 0x0203E147
_08037A14: .4byte 0x0203E148
_08037A18: .4byte 0x0203E149
_08037A1C: .4byte 0x0203E14A
_08037A20: .4byte 0x0203E14B
_08037A24: .4byte 0x0203E14C
_08037A28: .4byte 0x0203E14D
_08037A2C:
	lsls r1, r3, #0x18
	lsrs r0, r1, #0x1f
	ands r0, r2
	ldr r4, _08037B94
	strb r0, [r4]
	lsrs r0, r1, #0x1e
	ands r0, r2
	ldr r4, _08037B98
	strb r0, [r4]
	lsrs r0, r1, #0x1d
	ands r0, r2
	ldr r4, _08037B9C
	strb r0, [r4]
	lsrs r0, r1, #0x1c
	ands r0, r2
	ldr r4, _08037BA0
	strb r0, [r4]
	lsrs r0, r1, #0x1b
	ands r0, r2
	ldr r4, _08037BA4
	strb r0, [r4]
	lsrs r0, r1, #0x1a
	ands r0, r2
	ldr r4, _08037BA8
	strb r0, [r4]
	lsrs r1, r1, #0x19
	ands r1, r2
	ldr r0, _08037BAC
	strb r1, [r0]
	adds r0, r5, #0
	ands r0, r3
	ldr r1, _08037BB0
	strb r0, [r1]
	add r1, sp, #0xc
	ldr r0, [sp, #0x10]
	adds r0, r7, r0
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, [sp, #0x10]
	adds r0, r7, r1
	ldrb r3, [r0]
	ldr r0, [sp, #0x18]
	adds r0, r0, r3
	str r0, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	add r0, sp, #0xc
	ldrb r3, [r0]
	lsls r1, r3, #0x18
	lsrs r0, r1, #0x1f
	ands r0, r2
	ldr r4, _08037BB4
	strb r0, [r4]
	lsrs r0, r1, #0x1e
	ands r0, r2
	ldr r4, _08037BB8
	strb r0, [r4]
	lsrs r0, r1, #0x1d
	ands r0, r2
	ldr r4, _08037BBC
	strb r0, [r4]
	lsrs r0, r1, #0x1c
	ands r0, r2
	ldr r4, _08037BC0
	strb r0, [r4]
	lsrs r0, r1, #0x1b
	ands r0, r2
	ldr r4, _08037BC4
	strb r0, [r4]
	lsrs r0, r1, #0x1a
	ands r0, r2
	ldr r4, _08037BC8
	strb r0, [r4]
	lsrs r1, r1, #0x19
	ands r1, r2
	ldr r0, _08037BCC
	strb r1, [r0]
	adds r0, r5, #0
	ands r0, r3
	ldr r1, _08037BD0
	strb r0, [r1]
	add r1, sp, #0xc
	ldr r0, [sp, #0x10]
	adds r0, r7, r0
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, [sp, #0x10]
	adds r0, r7, r1
	ldrb r3, [r0]
	ldr r0, [sp, #0x18]
	adds r0, r0, r3
	str r0, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	add r0, sp, #0xc
	ldrb r3, [r0]
	lsls r1, r3, #0x18
	lsrs r0, r1, #0x1f
	ands r0, r2
	ldr r4, _08037BD4
	strb r0, [r4]
	lsrs r0, r1, #0x1e
	ands r0, r2
	ldr r4, _08037BD8
	strb r0, [r4]
	lsrs r0, r1, #0x1d
	ands r0, r2
	ldr r4, _08037BDC
	strb r0, [r4]
	lsrs r0, r1, #0x1c
	ands r0, r2
	ldr r4, _08037BE0
	strb r0, [r4]
	lsrs r0, r1, #0x1b
	ands r0, r2
	ldr r4, _08037BE4
	strb r0, [r4]
	lsrs r0, r1, #0x1a
	ands r0, r2
	ldr r4, _08037BE8
	strb r0, [r4]
	lsrs r1, r1, #0x19
	ands r1, r2
	ldr r0, _08037BEC
	strb r1, [r0]
	adds r1, r5, #0
	ands r1, r3
	ldr r3, _08037BF0
	strb r1, [r3]
	add r1, sp, #0xc
	ldr r0, [sp, #0x10]
	adds r0, r7, r0
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, [sp, #0x10]
	adds r0, r7, r1
	ldrb r3, [r0]
	ldr r0, [sp, #0x18]
	adds r0, r0, r3
	str r0, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x10]
	add r0, sp, #0xc
	ldrb r1, [r0]
	lsls r1, r1, #0x18
	lsrs r0, r1, #0x1f
	ands r0, r2
	ldr r4, _08037BF4
	strb r0, [r4]
	lsrs r0, r1, #0x1e
	ands r0, r2
	ldr r3, _08037BF8
	strb r0, [r3]
	lsrs r0, r1, #0x1d
	ands r0, r2
	ldr r4, _08037BFC
	strb r0, [r4]
	lsrs r0, r1, #0x1c
	ands r0, r2
	ldr r3, _08037C00
	strb r0, [r3]
	lsrs r1, r1, #0x1b
	ands r1, r2
	ldr r4, _08037C04
	strb r1, [r4]
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x1c]
	str r0, [r1]
	ldr r0, [sp, #0x18]
	ldr r2, [sp, #0x20]
	str r0, [r2]
	add sp, #0x6c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08037B94: .4byte 0x0203E14E
_08037B98: .4byte 0x0203E14F
_08037B9C: .4byte 0x0203E150
_08037BA0: .4byte 0x0203E151
_08037BA4: .4byte 0x0203E152
_08037BA8: .4byte 0x0203E153
_08037BAC: .4byte 0x0203E154
_08037BB0: .4byte 0x0203E155
_08037BB4: .4byte 0x0203E156
_08037BB8: .4byte 0x0203E157
_08037BBC: .4byte 0x0203E158
_08037BC0: .4byte 0x0203E159
_08037BC4: .4byte 0x0203E15A
_08037BC8: .4byte 0x0203E15B
_08037BCC: .4byte 0x0203E15C
_08037BD0: .4byte 0x0203E15D
_08037BD4: .4byte 0x0203E15E
_08037BD8: .4byte 0x0203E15F
_08037BDC: .4byte 0x0203E160
_08037BE0: .4byte 0x0203E161
_08037BE4: .4byte 0x0203E162
_08037BE8: .4byte 0x0203E163
_08037BEC: .4byte 0x0203E164
_08037BF0: .4byte 0x0203E165
_08037BF4: .4byte 0x0203E166
_08037BF8: .4byte 0x0203E167
_08037BFC: .4byte 0x0203E168
_08037C00: .4byte 0x0203E971
_08037C04: .4byte 0x0203E169

    .thumb
    .global sub_8037C08
sub_8037C08: @ 0x08037C08
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x2c
	mov r8, r0
	str r1, [sp, #0x10]
	ldr r1, [r1]
	adds r0, r0, r1
	ldrb r0, [r0]
	str r0, [sp, #0x14]
	adds r0, r1, #1
	str r0, [sp, #8]
	ldr r0, [sp, #0x14]
	cmp r0, #0x11
	beq _08037C2E
	bl _080388B8
_08037C2E:
	adds r0, r1, #0
	adds r0, #0x12
	str r0, [sp, #8]
	movs r1, #0
	str r1, [sp, #0x14]
	movs r6, #0
	ldr r5, _08038024
_08037C3C:
	ldr r1, [sp, #8]
	mov r2, r8
	adds r0, r2, r1
	ldrb r2, [r5]
	ldrb r0, [r0]
	adds r3, r1, #1
	str r3, [sp, #8]
	cmp r2, r0
	beq _08037C52
	bl _080388B8
_08037C52:
	mov r4, r8
	adds r0, r4, r3
	ldrb r1, [r5, #1]
	ldrb r0, [r0]
	adds r2, r3, #1
	str r2, [sp, #8]
	cmp r1, r0
	beq _08037C66
	bl _080388B8
_08037C66:
	adds r0, r4, r2
	ldrb r1, [r5, #2]
	ldrb r0, [r0]
	adds r2, #1
	str r2, [sp, #8]
	cmp r1, r0
	beq _08037C78
	bl _080388B8
_08037C78:
	adds r0, r4, r2
	ldrb r1, [r5, #3]
	ldrb r0, [r0]
	adds r2, #1
	str r2, [sp, #8]
	cmp r1, r0
	beq _08037C8A
	bl _080388B8
_08037C8A:
	adds r0, r4, r2
	ldrb r1, [r5, #4]
	ldrb r0, [r0]
	adds r2, #1
	str r2, [sp, #8]
	cmp r1, r0
	beq _08037C9C
	bl _080388B8
_08037C9C:
	adds r0, r4, r2
	ldrb r1, [r5, #5]
	ldrb r0, [r0]
	adds r2, #1
	str r2, [sp, #8]
	cmp r1, r0
	beq _08037CAE
	bl _080388B8
_08037CAE:
	adds r0, r4, r2
	ldrb r1, [r5, #6]
	ldrb r0, [r0]
	adds r2, #1
	str r2, [sp, #8]
	cmp r1, r0
	beq _08037CC0
	bl _080388B8
_08037CC0:
	adds r0, r4, r2
	ldrb r1, [r5, #7]
	ldrb r0, [r0]
	adds r2, #1
	str r2, [sp, #8]
	cmp r1, r0
	beq _08037CD2
	bl _080388B8
_08037CD2:
	adds r0, r4, r2
	ldrb r1, [r5, #8]
	ldrb r0, [r0]
	adds r2, #1
	str r2, [sp, #8]
	cmp r1, r0
	beq _08037CE4
	bl _080388B8
_08037CE4:
	adds r0, r4, r2
	ldrb r1, [r5, #9]
	ldrb r0, [r0]
	adds r2, #1
	str r2, [sp, #8]
	cmp r1, r0
	beq _08037CF6
	bl _080388B8
_08037CF6:
	adds r0, r4, r2
	ldrb r1, [r5, #0xa]
	ldrb r0, [r0]
	adds r2, #1
	str r2, [sp, #8]
	cmp r1, r0
	beq _08037D08
	bl _080388B8
_08037D08:
	adds r0, r4, r2
	ldrb r1, [r5, #0xb]
	ldrb r0, [r0]
	adds r2, #1
	str r2, [sp, #8]
	cmp r1, r0
	beq _08037D1A
	bl _080388B8
_08037D1A:
	adds r0, r4, r2
	ldrb r1, [r5, #0xc]
	ldrb r0, [r0]
	adds r2, #1
	str r2, [sp, #8]
	cmp r1, r0
	beq _08037D2C
	bl _080388B8
_08037D2C:
	adds r0, r4, r2
	ldrb r1, [r5, #0xd]
	ldrb r0, [r0]
	adds r2, #1
	str r2, [sp, #8]
	cmp r1, r0
	beq _08037D3E
	bl _080388B8
_08037D3E:
	adds r0, r4, r2
	ldrb r1, [r5, #0xe]
	ldrb r0, [r0]
	adds r2, #1
	str r2, [sp, #8]
	cmp r1, r0
	beq _08037D50
	bl _080388B8
_08037D50:
	adds r0, r4, r2
	ldrb r1, [r5, #0xf]
	ldrb r0, [r0]
	adds r2, #1
	str r2, [sp, #8]
	cmp r1, r0
	beq _08037D62
	bl _080388B8
_08037D62:
	adds r0, r4, r2
	ldrb r1, [r5, #0x10]
	ldrb r0, [r0]
	adds r2, #1
	str r2, [sp, #8]
	cmp r1, r0
	beq _08037D74
	bl _080388B8
_08037D74:
	adds r0, r4, r2
	ldrb r1, [r5, #0x11]
	ldrb r0, [r0]
	adds r2, #1
	str r2, [sp, #8]
	cmp r1, r0
	beq _08037D86
	bl _080388B8
_08037D86:
	adds r0, r4, r2
	ldrb r1, [r5, #0x12]
	ldrb r0, [r0]
	adds r2, #1
	str r2, [sp, #8]
	cmp r1, r0
	beq _08037D98
	bl _080388B8
_08037D98:
	adds r0, r4, r2
	ldrb r1, [r5, #0x13]
	ldrb r0, [r0]
	adds r2, #1
	str r2, [sp, #8]
	cmp r1, r0
	beq _08037DAA
	bl _080388B8
_08037DAA:
	adds r0, r4, r2
	ldrb r1, [r5, #0x14]
	ldrb r0, [r0]
	adds r2, #1
	str r2, [sp, #8]
	cmp r1, r0
	beq _08037DBC
	bl _080388B8
_08037DBC:
	ldr r1, _08038028
	movs r0, #0xc4
	ldr r3, [sp, #0x14]
	muls r0, r3, r0
	adds r4, r0, r1
	mov r1, r8
	adds r0, r1, r2
	ldrb r1, [r4]
	ldrb r0, [r0]
	adds r2, #1
	str r2, [sp, #8]
	cmp r1, r0
	beq _08037DDA
	bl _080388B8
_08037DDA:
	mov r3, r8
	adds r0, r3, r2
	ldrb r1, [r4, #1]
	ldrb r0, [r0]
	adds r2, #1
	str r2, [sp, #8]
	cmp r1, r0
	beq _08037DEE
	bl _080388B8
_08037DEE:
	adds r0, r3, r2
	ldrb r1, [r4, #2]
	ldrb r0, [r0]
	adds r2, #1
	str r2, [sp, #8]
	cmp r1, r0
	beq _08037E00
	bl _080388B8
_08037E00:
	adds r0, r3, r2
	ldrb r1, [r4, #3]
	ldrb r0, [r0]
	adds r2, #1
	str r2, [sp, #8]
	cmp r1, r0
	beq _08037E12
	bl _080388B8
_08037E12:
	adds r0, r3, r2
	ldrb r1, [r4, #4]
	ldrb r0, [r0]
	adds r2, #1
	str r2, [sp, #8]
	cmp r1, r0
	beq _08037E24
	bl _080388B8
_08037E24:
	adds r0, r3, r2
	ldrb r1, [r4, #5]
	ldrb r0, [r0]
	adds r2, #1
	str r2, [sp, #8]
	cmp r1, r0
	beq _08037E36
	bl _080388B8
_08037E36:
	adds r0, r3, r2
	ldrb r1, [r4, #6]
	ldrb r0, [r0]
	adds r2, #1
	str r2, [sp, #8]
	cmp r1, r0
	beq _08037E48
	bl _080388B8
_08037E48:
	adds r0, r3, r2
	ldrb r1, [r4, #7]
	ldrb r0, [r0]
	adds r2, #1
	str r2, [sp, #8]
	cmp r1, r0
	beq _08037E5A
	bl _080388B8
_08037E5A:
	adds r0, r3, r2
	ldrb r1, [r4, #8]
	ldrb r0, [r0]
	adds r2, #1
	str r2, [sp, #8]
	cmp r1, r0
	beq _08037E6C
	bl _080388B8
_08037E6C:
	adds r0, r3, r2
	ldrb r1, [r4, #9]
	ldrb r0, [r0]
	adds r2, #1
	str r2, [sp, #8]
	cmp r1, r0
	beq _08037E7E
	bl _080388B8
_08037E7E:
	adds r0, r3, r2
	ldrb r1, [r4, #0xa]
	ldrb r0, [r0]
	adds r2, #1
	str r2, [sp, #8]
	cmp r1, r0
	beq _08037E90
	bl _080388B8
_08037E90:
	adds r0, r3, r2
	ldrb r1, [r4, #0xb]
	ldrb r0, [r0]
	adds r2, #1
	str r2, [sp, #8]
	cmp r1, r0
	beq _08037EA2
	bl _080388B8
_08037EA2:
	adds r0, r3, r2
	ldrb r1, [r4, #0xc]
	ldrb r0, [r0]
	adds r2, #1
	str r2, [sp, #8]
	cmp r1, r0
	beq _08037EB4
	bl _080388B8
_08037EB4:
	adds r0, r3, r2
	ldrb r1, [r4, #0xd]
	ldrb r0, [r0]
	adds r2, #1
	str r2, [sp, #8]
	cmp r1, r0
	beq _08037EC6
	bl _080388B8
_08037EC6:
	adds r0, r3, r2
	ldrb r1, [r4, #0xe]
	ldrb r0, [r0]
	adds r2, #1
	str r2, [sp, #8]
	cmp r1, r0
	beq _08037ED8
	bl _080388B8
_08037ED8:
	adds r0, r3, r2
	ldrb r1, [r4, #0xf]
	ldrb r0, [r0]
	adds r2, #1
	str r2, [sp, #8]
	cmp r1, r0
	beq _08037EEA
	bl _080388B8
_08037EEA:
	adds r0, r3, r2
	ldrb r1, [r4, #0x10]
	ldrb r0, [r0]
	adds r2, #1
	str r2, [sp, #8]
	cmp r1, r0
	beq _08037EFC
	bl _080388B8
_08037EFC:
	adds r0, r3, r2
	ldrb r1, [r4, #0x11]
	ldrb r0, [r0]
	adds r2, #1
	str r2, [sp, #8]
	cmp r1, r0
	beq _08037F0E
	bl _080388B8
_08037F0E:
	adds r0, r3, r2
	ldrb r1, [r4, #0x1f]
	ldrb r0, [r0]
	adds r2, #1
	str r2, [sp, #8]
	cmp r1, r0
	beq _08037F20
	bl _080388B8
_08037F20:
	adds r0, r3, r2
	ldrb r1, [r4, #0x12]
	ldrb r0, [r0]
	adds r2, #1
	str r2, [sp, #8]
	cmp r1, r0
	beq _08037F32
	bl _080388B8
_08037F32:
	adds r0, r3, r2
	ldrb r1, [r4, #0x13]
	ldrb r0, [r0]
	adds r2, #1
	str r2, [sp, #8]
	cmp r1, r0
	beq _08037F44
	bl _080388B8
_08037F44:
	adds r0, r3, r2
	ldrb r1, [r4, #0x14]
	ldrb r0, [r0]
	adds r2, #1
	str r2, [sp, #8]
	cmp r1, r0
	beq _08037F56
	bl _080388B8
_08037F56:
	adds r0, r3, r2
	ldrb r1, [r4, #0x15]
	ldrb r0, [r0]
	adds r2, #1
	str r2, [sp, #8]
	cmp r1, r0
	beq _08037F68
	bl _080388B8
_08037F68:
	adds r0, r3, r2
	ldrb r1, [r4, #0x16]
	ldrb r0, [r0]
	adds r2, #1
	str r2, [sp, #8]
	cmp r1, r0
	beq _08037F7A
	bl _080388B8
_08037F7A:
	adds r0, r3, r2
	ldrb r1, [r4, #0x17]
	ldrb r0, [r0]
	adds r2, #1
	str r2, [sp, #8]
	cmp r1, r0
	beq _08037F8C
	bl _080388B8
_08037F8C:
	adds r0, r3, r2
	ldrb r1, [r4, #0x18]
	ldrb r0, [r0]
	adds r2, #1
	str r2, [sp, #8]
	cmp r1, r0
	beq _08037F9E
	bl _080388B8
_08037F9E:
	adds r0, r3, r2
	ldrb r1, [r4, #0x19]
	ldrb r0, [r0]
	adds r2, #1
	str r2, [sp, #8]
	cmp r1, r0
	beq _08037FB0
	bl _080388B8
_08037FB0:
	adds r0, r3, r2
	ldrb r1, [r4, #0x1a]
	ldrb r0, [r0]
	adds r2, #1
	str r2, [sp, #8]
	cmp r1, r0
	beq _08037FC2
	bl _080388B8
_08037FC2:
	adds r0, r3, r2
	ldrb r1, [r4, #0x1b]
	ldrb r0, [r0]
	adds r2, #1
	str r2, [sp, #8]
	cmp r1, r0
	beq _08037FD4
	bl _080388B8
_08037FD4:
	adds r0, r3, r2
	ldrb r1, [r4, #0x1c]
	ldrb r0, [r0]
	adds r2, #1
	str r2, [sp, #8]
	cmp r1, r0
	beq _08037FE6
	bl _080388B8
_08037FE6:
	adds r1, r4, #0
	adds r1, #0x22
	adds r0, r3, r2
	ldrb r1, [r1]
	ldrb r0, [r0]
	adds r2, #1
	str r2, [sp, #8]
	cmp r1, r0
	beq _08037FFC
	bl _080388B8
_08037FFC:
	adds r1, r4, #0
	adds r1, #0x23
	adds r0, r3, r2
	ldrb r1, [r1]
	ldrb r0, [r0]
	adds r3, r2, #1
	str r3, [sp, #8]
	cmp r1, r0
	beq _08038012
	bl _080388B8
_08038012:
	adds r0, r4, #0
	adds r0, #0x24
	mov r2, r8
	adds r1, r2, r3
	ldrb r2, [r0]
	ldrb r0, [r1]
	adds r3, #1
	str r3, [sp, #8]
	b _0803802C
	.align 2, 0
_08038024: .4byte 0x0203E170
_08038028: .4byte 0x0203E440
_0803802C:
	cmp r2, r0
	beq _08038034
	bl _080388B8
_08038034:
	adds r1, r4, #0
	adds r1, #0x25
	mov r2, r8
	adds r0, r2, r3
	ldrb r1, [r1]
	ldrb r0, [r0]
	adds r2, r3, #1
	str r2, [sp, #8]
	cmp r1, r0
	beq _0803804C
	bl _080388B8
_0803804C:
	mov r3, r8
	adds r0, r3, r2
	ldrb r1, [r4, #0x1d]
	ldrb r0, [r0]
	adds r2, #1
	str r2, [sp, #8]
	cmp r1, r0
	beq _08038060
	bl _080388B8
_08038060:
	adds r0, r3, r2
	ldrb r1, [r4, #0x1e]
	ldrb r0, [r0]
	adds r3, r2, #1
	str r3, [sp, #8]
	cmp r1, r0
	beq _08038072
	bl _080388B8
_08038072:
	adds r0, r4, #0
	adds r0, #0x20
	mov r2, r8
	adds r1, r2, r3
	ldrb r2, [r0]
	ldrb r0, [r1]
	adds r3, #1
	str r3, [sp, #8]
	cmp r2, r0
	beq _0803808A
	bl _080388B8
_0803808A:
	adds r0, r4, #0
	adds r0, #0x21
	mov r4, r8
	adds r1, r4, r3
	ldrb r2, [r0]
	ldrb r0, [r1]
	adds r3, #1
	str r3, [sp, #8]
	cmp r2, r0
	beq _080380A2
	bl _080388B8
_080380A2:
	ldr r0, _08038488
	adds r4, r6, r0
	mov r1, r8
	adds r0, r1, r3
	ldrb r1, [r4]
	ldrb r0, [r0]
	adds r2, r3, #1
	str r2, [sp, #8]
	cmp r1, r0
	beq _080380BA
	bl _080388B8
_080380BA:
	mov r3, r8
	adds r0, r3, r2
	ldrb r1, [r4, #1]
	ldrb r0, [r0]
	adds r2, #1
	str r2, [sp, #8]
	cmp r1, r0
	beq _080380CC
	b _080388B8
_080380CC:
	adds r0, r3, r2
	ldrb r1, [r4, #2]
	ldrb r0, [r0]
	adds r2, #1
	str r2, [sp, #8]
	cmp r1, r0
	beq _080380DC
	b _080388B8
_080380DC:
	adds r6, #0x10
	adds r5, #0x78
	ldr r4, [sp, #0x14]
	adds r4, #1
	str r4, [sp, #0x14]
	cmp r4, #5
	bgt _080380EC
	b _08037C3C
_080380EC:
	movs r0, #0
	str r0, [sp, #0xc]
	adds r0, r3, r2
	ldrb r1, [r0]
	add r0, sp, #4
	strb r1, [r0]
	ldr r0, [sp, #8]
	adds r0, #1
	str r0, [sp, #8]
	movs r0, #0
	str r0, [sp, #0x14]
	add r1, sp, #8
	mov sl, r1
	mov r2, sp
	adds r2, #0xc
	str r2, [sp, #0x24]
	mov r7, sl
	adds r6, r2, #0
_08038110:
	ldr r0, _0803848C
	ldr r3, [sp, #0x14]
	lsls r5, r3, #4
	subs r4, r5, r3
	lsls r4, r4, #3
	adds r4, r4, r0
	ldrb r0, [r4]
	str r0, [sp]
	mov r0, r8
	adds r1, r7, #0
	add r2, sp, #4
	adds r3, r6, #0
	bl sub_80389FC
	ldrb r0, [r4, #1]
	str r0, [sp]
	mov r0, r8
	adds r1, r7, #0
	add r2, sp, #4
	adds r3, r6, #0
	bl sub_80389FC
	ldrb r0, [r4, #2]
	str r0, [sp]
	mov r0, r8
	adds r1, r7, #0
	add r2, sp, #4
	adds r3, r6, #0
	bl sub_80389FC
	ldrb r0, [r4, #3]
	str r0, [sp]
	mov r0, r8
	adds r1, r7, #0
	add r2, sp, #4
	adds r3, r6, #0
	bl sub_80389FC
	ldrb r0, [r4, #4]
	str r0, [sp]
	mov r0, r8
	adds r1, r7, #0
	add r2, sp, #4
	adds r3, r6, #0
	bl sub_80389FC
	ldrb r0, [r4, #5]
	str r0, [sp]
	mov r0, r8
	adds r1, r7, #0
	add r2, sp, #4
	adds r3, r6, #0
	bl sub_80389FC
	ldrb r0, [r4, #6]
	str r0, [sp]
	mov r0, r8
	adds r1, r7, #0
	add r2, sp, #4
	adds r3, r6, #0
	bl sub_80389FC
	ldrb r0, [r4, #7]
	str r0, [sp]
	mov r0, r8
	adds r1, r7, #0
	add r2, sp, #4
	adds r3, r6, #0
	bl sub_80389FC
	ldrb r0, [r4, #8]
	str r0, [sp]
	mov r0, r8
	adds r1, r7, #0
	add r2, sp, #4
	adds r3, r6, #0
	bl sub_80389FC
	ldrb r0, [r4, #9]
	str r0, [sp]
	mov r0, r8
	adds r1, r7, #0
	add r2, sp, #4
	adds r3, r6, #0
	bl sub_80389FC
	ldrb r0, [r4, #0xa]
	str r0, [sp]
	mov r0, r8
	adds r1, r7, #0
	add r2, sp, #4
	adds r3, r6, #0
	bl sub_80389FC
	ldrb r0, [r4, #0xb]
	str r0, [sp]
	mov r0, r8
	adds r1, r7, #0
	add r2, sp, #4
	adds r3, r6, #0
	bl sub_80389FC
	ldrb r0, [r4, #0xc]
	str r0, [sp]
	mov r0, r8
	adds r1, r7, #0
	add r2, sp, #4
	adds r3, r6, #0
	bl sub_80389FC
	ldrb r0, [r4, #0xd]
	str r0, [sp]
	mov r0, r8
	adds r1, r7, #0
	add r2, sp, #4
	adds r3, r6, #0
	bl sub_80389FC
	ldrb r0, [r4, #0xe]
	str r0, [sp]
	mov r0, r8
	adds r1, r7, #0
	add r2, sp, #4
	adds r3, r6, #0
	bl sub_80389FC
	ldrb r0, [r4, #0xf]
	str r0, [sp]
	mov r0, r8
	adds r1, r7, #0
	add r2, sp, #4
	adds r3, r6, #0
	bl sub_80389FC
	ldrb r0, [r4, #0x10]
	str r0, [sp]
	mov r0, r8
	adds r1, r7, #0
	add r2, sp, #4
	adds r3, r6, #0
	bl sub_80389FC
	ldrb r0, [r4, #0x11]
	str r0, [sp]
	mov r0, r8
	adds r1, r7, #0
	add r2, sp, #4
	adds r3, r6, #0
	bl sub_80389FC
	ldrb r0, [r4, #0x12]
	str r0, [sp]
	mov r0, r8
	adds r1, r7, #0
	add r2, sp, #4
	adds r3, r6, #0
	bl sub_80389FC
	ldrb r0, [r4, #0x13]
	str r0, [sp]
	mov r0, r8
	adds r1, r7, #0
	add r2, sp, #4
	adds r3, r6, #0
	bl sub_80389FC
	ldrb r0, [r4, #0x14]
	str r0, [sp]
	mov r0, r8
	adds r1, r7, #0
	add r2, sp, #4
	adds r3, r6, #0
	bl sub_80389FC
	movs r4, #1
	str r4, [sp]
	mov r0, r8
	adds r1, r7, #0
	add r2, sp, #4
	adds r3, r6, #0
	bl sub_80389FC
	str r4, [sp]
	mov r0, r8
	adds r1, r7, #0
	add r2, sp, #4
	adds r3, r6, #0
	bl sub_80389FC
	str r4, [sp]
	mov r0, r8
	adds r1, r7, #0
	add r2, sp, #4
	adds r3, r6, #0
	bl sub_80389FC
	str r4, [sp]
	mov r0, r8
	adds r1, r7, #0
	add r2, sp, #4
	adds r3, r6, #0
	bl sub_80389FC
	str r4, [sp]
	mov r0, r8
	adds r1, r7, #0
	add r2, sp, #4
	adds r3, r6, #0
	bl sub_80389FC
	str r4, [sp]
	mov r0, r8
	adds r1, r7, #0
	add r2, sp, #4
	adds r3, r6, #0
	bl sub_80389FC
	movs r0, #6
	str r0, [sp]
	mov r0, r8
	adds r1, r7, #0
	add r2, sp, #4
	adds r3, r6, #0
	bl sub_80389FC
	ldr r4, _08038490
	movs r0, #0xc4
	ldr r1, [sp, #0x14]
	muls r0, r1, r0
	adds r4, r0, r4
	ldrb r0, [r4]
	str r0, [sp]
	mov r0, r8
	adds r1, r7, #0
	add r2, sp, #4
	adds r3, r6, #0
	bl sub_80389FC
	ldrb r0, [r4, #1]
	str r0, [sp]
	mov r0, r8
	adds r1, r7, #0
	add r2, sp, #4
	adds r3, r6, #0
	bl sub_80389FC
	ldrb r0, [r4, #2]
	str r0, [sp]
	mov r0, r8
	adds r1, r7, #0
	add r2, sp, #4
	adds r3, r6, #0
	bl sub_80389FC
	ldrb r0, [r4, #3]
	str r0, [sp]
	mov r0, r8
	adds r1, r7, #0
	add r2, sp, #4
	adds r3, r6, #0
	bl sub_80389FC
	ldrb r0, [r4, #4]
	str r0, [sp]
	mov r0, r8
	adds r1, r7, #0
	add r2, sp, #4
	adds r3, r6, #0
	bl sub_80389FC
	ldrb r0, [r4, #5]
	str r0, [sp]
	mov r0, r8
	adds r1, r7, #0
	add r2, sp, #4
	adds r3, r6, #0
	bl sub_80389FC
	ldrb r0, [r4, #6]
	str r0, [sp]
	mov r0, r8
	adds r1, r7, #0
	add r2, sp, #4
	adds r3, r6, #0
	bl sub_80389FC
	ldrb r0, [r4, #7]
	str r0, [sp]
	mov r0, r8
	adds r1, r7, #0
	add r2, sp, #4
	adds r3, r6, #0
	bl sub_80389FC
	ldrb r0, [r4, #8]
	str r0, [sp]
	mov r0, r8
	adds r1, r7, #0
	add r2, sp, #4
	adds r3, r6, #0
	bl sub_80389FC
	ldrb r0, [r4, #9]
	str r0, [sp]
	mov r0, r8
	adds r1, r7, #0
	add r2, sp, #4
	adds r3, r6, #0
	bl sub_80389FC
	ldrb r0, [r4, #0xa]
	str r0, [sp]
	mov r0, r8
	adds r1, r7, #0
	add r2, sp, #4
	adds r3, r6, #0
	bl sub_80389FC
	ldrb r0, [r4, #0xb]
	str r0, [sp]
	mov r0, r8
	adds r1, r7, #0
	add r2, sp, #4
	adds r3, r6, #0
	bl sub_80389FC
	ldrb r0, [r4, #0xc]
	str r0, [sp]
	mov r0, r8
	adds r1, r7, #0
	add r2, sp, #4
	adds r3, r6, #0
	bl sub_80389FC
	ldrb r0, [r4, #0xd]
	str r0, [sp]
	mov r0, r8
	adds r1, r7, #0
	add r2, sp, #4
	adds r3, r6, #0
	bl sub_80389FC
	ldrb r0, [r4, #0xe]
	str r0, [sp]
	mov r0, r8
	adds r1, r7, #0
	add r2, sp, #4
	adds r3, r6, #0
	bl sub_80389FC
	ldrb r0, [r4, #0xf]
	str r0, [sp]
	mov r0, r8
	adds r1, r7, #0
	add r2, sp, #4
	adds r3, r6, #0
	bl sub_80389FC
	ldrb r0, [r4, #0x10]
	str r0, [sp]
	mov r0, r8
	adds r1, r7, #0
	add r2, sp, #4
	adds r3, r6, #0
	bl sub_80389FC
	ldrb r0, [r4, #0x11]
	str r0, [sp]
	mov r0, r8
	adds r1, r7, #0
	add r2, sp, #4
	adds r3, r6, #0
	bl sub_80389FC
	ldrb r0, [r4, #0x1f]
	str r0, [sp]
	mov r0, r8
	adds r1, r7, #0
	add r2, sp, #4
	adds r3, r6, #0
	bl sub_80389FC
	adds r0, r4, #0
	adds r0, #0x22
	ldrb r0, [r0]
	str r0, [sp]
	mov r0, r8
	adds r1, r7, #0
	add r2, sp, #4
	adds r3, r6, #0
	bl sub_80389FC
	adds r0, r4, #0
	adds r0, #0x23
	ldrb r0, [r0]
	str r0, [sp]
	mov r0, r8
	adds r1, r7, #0
	add r2, sp, #4
	adds r3, r6, #0
	bl sub_80389FC
	adds r0, r4, #0
	adds r0, #0x24
	ldrb r0, [r0]
	str r0, [sp]
	mov r0, r8
	adds r1, r7, #0
	add r2, sp, #4
	adds r3, r6, #0
	bl sub_80389FC
	adds r0, r4, #0
	adds r0, #0x25
	ldrb r0, [r0]
	str r0, [sp]
	mov r0, r8
	adds r1, r7, #0
	add r2, sp, #4
	adds r3, r6, #0
	bl sub_80389FC
	adds r0, r4, #0
	adds r0, #0x20
	ldrb r0, [r0]
	str r0, [sp]
	mov r0, r8
	adds r1, r7, #0
	add r2, sp, #4
	adds r3, r6, #0
	bl sub_80389FC
	adds r0, r4, #0
	adds r0, #0x21
	ldrb r0, [r0]
	str r0, [sp]
	mov r0, r8
	adds r1, r7, #0
	add r2, sp, #4
	adds r3, r6, #0
	bl sub_80389FC
	b _08038494
	.align 2, 0
_08038488: .4byte 0x0203E8D8
_0803848C: .4byte 0x0203E170
_08038490: .4byte 0x0203E440
_08038494:
	ldr r0, _080387FC
	adds r5, r5, r0
	ldrb r0, [r5]
	str r0, [sp]
	mov r0, r8
	adds r1, r7, #0
	add r2, sp, #4
	adds r3, r6, #0
	bl sub_80389FC
	ldrb r0, [r5, #1]
	str r0, [sp]
	mov r0, r8
	adds r1, r7, #0
	add r2, sp, #4
	adds r3, r6, #0
	bl sub_80389FC
	ldrb r0, [r5, #2]
	str r0, [sp]
	mov r0, r8
	adds r1, r7, #0
	add r2, sp, #4
	adds r3, r6, #0
	bl sub_80389FC
	ldr r2, [sp, #0x14]
	adds r2, #1
	str r2, [sp, #0x14]
	cmp r2, #5
	bgt _080384D4
	b _08038110
_080384D4:
	movs r0, #0x13
	str r0, [sp]
	mov r0, r8
	mov r1, sl
	add r2, sp, #4
	ldr r3, [sp, #0x24]
	bl sub_80389FC
	movs r3, #0
	str r3, [sp, #0x14]
_080384E8:
	movs r7, #0
	ldr r4, _08038800
	movs r1, #0xc4
	ldr r3, [sp, #0x14]
	adds r2, r3, #0
	muls r2, r1, r2
	adds r3, r2, r4
	ldrb r1, [r3, #0x12]
	cmp r7, r1
	bge _080385EE
	adds r1, r4, #0
	adds r1, #0x90
	adds r1, r2, r1
	str r1, [sp, #0x1c]
	movs r4, #0
	str r4, [sp, #0x28]
	str r2, [sp, #0x20]
	str r3, [sp, #0x18]
_0803850C:
	ldr r2, [sp, #8]
	adds r2, #1
	str r2, [sp, #8]
	ldr r3, [sp, #0x1c]
	ldr r1, [r3]
	ldr r4, [sp, #0x28]
	adds r1, r4, r1
	mov r4, r8
	adds r3, r4, r2
	ldrb r4, [r1, #2]
	ldrb r1, [r3]
	adds r5, r2, #1
	str r5, [sp, #8]
	cmp r4, r1
	beq _0803852C
	b _080388B8
_0803852C:
	ldr r2, [sp, #0x1c]
	ldr r1, [r2]
	ldr r3, [sp, #0x28]
	adds r1, r3, r1
	mov r4, r8
	adds r2, r4, r5
	ldrb r3, [r1, #3]
	ldrb r1, [r2]
	adds r2, r5, #1
	str r2, [sp, #8]
	cmp r3, r1
	beq _08038546
	b _080388B8
_08038546:
	adds r1, r2, #1
	str r1, [sp, #8]
	movs r1, #0
	mov sb, r1
	ldr r2, [sp, #0x1c]
	ldr r1, [r2]
	ldr r3, [sp, #0x28]
	adds r1, r3, r1
	ldrb r1, [r1]
	cmp sb, r1
	bge _080385DE
	ldr r1, _08038804
	ldr r4, [sp, #0x20]
	adds r4, r4, r1
	mov ip, r4
	mov sl, r3
_08038566:
	mov r2, ip
	ldr r1, [r2]
	add r1, sl
	ldr r1, [r1, #0xc]
	mov r3, sb
	lsls r6, r3, #3
	adds r1, r6, r1
	ldr r4, [sp, #8]
	mov r3, r8
	adds r2, r3, r4
	ldrb r3, [r1]
	ldrb r1, [r2]
	adds r4, #1
	str r4, [sp, #8]
	cmp r3, r1
	beq _08038588
	b _080388B8
_08038588:
	adds r3, r4, #1
	str r3, [sp, #8]
	mov r4, ip
	ldr r1, [r4]
	ldr r2, [sp, #0x28]
	adds r1, r2, r1
	ldr r1, [r1, #0xc]
	adds r1, r6, r1
	mov r4, r8
	adds r2, r4, r3
	ldrb r4, [r1, #2]
	ldrb r1, [r2]
	adds r3, #1
	str r3, [sp, #8]
	cmp r4, r1
	beq _080385AA
	b _080388B8
_080385AA:
	adds r4, r3, #1
	str r4, [sp, #8]
	mov r2, ip
	ldr r1, [r2]
	mov r3, sl
	adds r5, r3, r1
	ldr r1, [r5, #0xc]
	adds r1, r6, r1
	movs r2, #4
	ldrsh r3, [r1, r2]
	mov r2, r8
	adds r1, r2, r4
	ldrb r2, [r1]
	ldrb r1, [r1, #1]
	lsls r1, r1, #8
	orrs r2, r1
	cmp r3, r2
	beq _080385D0
	b _080388B8
_080385D0:
	adds r1, r4, #4
	str r1, [sp, #8]
	movs r3, #1
	add sb, r3
	ldrb r5, [r5]
	cmp sb, r5
	blt _08038566
_080385DE:
	ldr r4, [sp, #0x28]
	adds r4, #0x10
	str r4, [sp, #0x28]
	adds r7, #1
	ldr r1, [sp, #0x18]
	ldrb r1, [r1, #0x12]
	cmp r7, r1
	blt _0803850C
_080385EE:
	ldr r2, [sp, #0x14]
	adds r2, #1
	str r2, [sp, #0x14]
	cmp r2, #5
	bgt _080385FA
	b _080384E8
_080385FA:
	movs r3, #0
	str r3, [sp, #0x14]
	ldr r4, [sp, #8]
	ldr r1, _08038800
	mov ip, r1
	adds r2, r1, #0
	mov sb, r2
	mov sl, r3
_0803860A:
	movs r7, #0
	mov r3, ip
	ldrb r3, [r3, #0x13]
	cmp r7, r3
	bge _0803863C
	ldr r1, _08038808
	mov r2, sl
	adds r6, r2, r1
	mov r5, sb
_0803861C:
	ldr r1, [r6]
	adds r1, r1, r7
	mov r3, r8
	adds r2, r3, r4
	ldrb r3, [r1]
	ldrb r1, [r2]
	adds r2, r4, #1
	str r2, [sp, #8]
	cmp r3, r1
	beq _08038632
	b _080388B8
_08038632:
	adds r7, #1
	adds r4, r2, #0
	ldrb r1, [r5, #0x13]
	cmp r7, r1
	blt _0803861C
_0803863C:
	movs r7, #0
	mov r2, ip
	ldrb r2, [r2, #0x14]
	cmp r7, r2
	bge _0803866E
	ldr r1, _0803880C
	mov r3, sl
	adds r6, r3, r1
	mov r5, sb
_0803864E:
	ldr r1, [r6]
	adds r1, r1, r7
	mov r3, r8
	adds r2, r3, r4
	ldrb r3, [r1]
	ldrb r1, [r2]
	adds r2, r4, #1
	str r2, [sp, #8]
	cmp r3, r1
	beq _08038664
	b _080388B8
_08038664:
	adds r7, #1
	adds r4, r2, #0
	ldrb r1, [r5, #0x14]
	cmp r7, r1
	blt _0803864E
_0803866E:
	movs r7, #0
	mov r2, ip
	ldrb r2, [r2, #0x15]
	cmp r7, r2
	bge _080386A0
	ldr r1, _08038810
	mov r3, sl
	adds r6, r3, r1
	mov r5, sb
_08038680:
	ldr r1, [r6]
	adds r1, r1, r7
	mov r3, r8
	adds r2, r3, r4
	ldrb r3, [r1]
	ldrb r1, [r2]
	adds r2, r4, #1
	str r2, [sp, #8]
	cmp r3, r1
	beq _08038696
	b _080388B8
_08038696:
	adds r7, #1
	adds r4, r2, #0
	ldrb r1, [r5, #0x15]
	cmp r7, r1
	blt _08038680
_080386A0:
	movs r7, #0
	mov r2, ip
	ldrb r2, [r2, #0x16]
	cmp r7, r2
	bge _080386D2
	ldr r1, _08038814
	mov r3, sl
	adds r6, r3, r1
	mov r5, sb
_080386B2:
	ldr r1, [r6]
	adds r1, r1, r7
	mov r3, r8
	adds r2, r3, r4
	ldrb r3, [r1]
	ldrb r1, [r2]
	adds r2, r4, #1
	str r2, [sp, #8]
	cmp r3, r1
	beq _080386C8
	b _080388B8
_080386C8:
	adds r7, #1
	adds r4, r2, #0
	ldrb r1, [r5, #0x16]
	cmp r7, r1
	blt _080386B2
_080386D2:
	movs r7, #0
	mov r2, ip
	ldrb r2, [r2, #0x17]
	cmp r7, r2
	bge _08038704
	ldr r1, _08038818
	mov r3, sl
	adds r6, r3, r1
	mov r5, sb
_080386E4:
	ldr r1, [r6]
	adds r1, r1, r7
	mov r3, r8
	adds r2, r3, r4
	ldrb r3, [r1]
	ldrb r1, [r2]
	adds r2, r4, #1
	str r2, [sp, #8]
	cmp r3, r1
	beq _080386FA
	b _080388B8
_080386FA:
	adds r7, #1
	adds r4, r2, #0
	ldrb r1, [r5, #0x17]
	cmp r7, r1
	blt _080386E4
_08038704:
	movs r7, #0
	mov r2, ip
	ldrb r2, [r2, #0x18]
	cmp r7, r2
	bge _08038736
	ldr r1, _0803881C
	mov r3, sl
	adds r6, r3, r1
	mov r5, sb
_08038716:
	ldr r1, [r6]
	adds r1, r1, r7
	mov r3, r8
	adds r2, r3, r4
	ldrb r3, [r1]
	ldrb r1, [r2]
	adds r2, r4, #1
	str r2, [sp, #8]
	cmp r3, r1
	beq _0803872C
	b _080388B8
_0803872C:
	adds r7, #1
	adds r4, r2, #0
	ldrb r1, [r5, #0x18]
	cmp r7, r1
	blt _08038716
_08038736:
	movs r7, #0
	mov r2, ip
	ldrb r2, [r2, #0x19]
	cmp r7, r2
	bge _08038768
	ldr r1, _08038820
	mov r3, sl
	adds r6, r3, r1
	mov r5, sb
_08038748:
	ldr r1, [r6]
	adds r1, r1, r7
	mov r3, r8
	adds r2, r3, r4
	ldrb r3, [r1]
	ldrb r1, [r2]
	adds r2, r4, #1
	str r2, [sp, #8]
	cmp r3, r1
	beq _0803875E
	b _080388B8
_0803875E:
	adds r7, #1
	adds r4, r2, #0
	ldrb r1, [r5, #0x19]
	cmp r7, r1
	blt _08038748
_08038768:
	movs r7, #0
	mov r2, ip
	ldrb r2, [r2, #0x1a]
	cmp r7, r2
	bge _0803879A
	ldr r1, _08038824
	mov r3, sl
	adds r6, r3, r1
	mov r5, sb
_0803877A:
	ldr r1, [r6]
	adds r1, r1, r7
	mov r3, r8
	adds r2, r3, r4
	ldrb r3, [r1]
	ldrb r1, [r2]
	adds r2, r4, #1
	str r2, [sp, #8]
	cmp r3, r1
	beq _08038790
	b _080388B8
_08038790:
	adds r7, #1
	adds r4, r2, #0
	ldrb r1, [r5, #0x1a]
	cmp r7, r1
	blt _0803877A
_0803879A:
	movs r7, #0
	mov r2, ip
	ldrb r2, [r2, #0x1b]
	cmp r7, r2
	bge _080387CA
	ldr r1, _08038828
	mov r3, sl
	adds r6, r3, r1
	mov r5, sb
_080387AC:
	ldr r1, [r6]
	adds r1, r1, r7
	mov r3, r8
	adds r2, r3, r4
	ldrb r3, [r1]
	ldrb r1, [r2]
	adds r2, r4, #1
	str r2, [sp, #8]
	cmp r3, r1
	bne _080388B8
	adds r7, #1
	adds r4, r2, #0
	ldrb r1, [r5, #0x1b]
	cmp r7, r1
	blt _080387AC
_080387CA:
	movs r7, #0
	mov r2, ip
	ldrb r2, [r2, #0x1c]
	cmp r7, r2
	bge _08038832
	ldr r1, _0803882C
	mov r3, sl
	adds r6, r3, r1
	mov r5, sb
_080387DC:
	ldr r1, [r6]
	adds r1, r1, r7
	mov r3, r8
	adds r2, r3, r4
	ldrb r3, [r1]
	ldrb r1, [r2]
	adds r2, r4, #1
	str r2, [sp, #8]
	cmp r3, r1
	bne _080388B8
	adds r7, #1
	adds r4, r2, #0
	ldrb r1, [r5, #0x1c]
	cmp r7, r1
	b _08038830
	.align 2, 0
_080387FC: .4byte 0x0203E8D8
_08038800: .4byte 0x0203E440
_08038804: .4byte 0x0203E4D0
_08038808: .4byte 0x0203E4D4
_0803880C: .4byte 0x0203E4D8
_08038810: .4byte 0x0203E4DC
_08038814: .4byte 0x0203E4E0
_08038818: .4byte 0x0203E4E4
_0803881C: .4byte 0x0203E4E8
_08038820: .4byte 0x0203E4EC
_08038824: .4byte 0x0203E4F0
_08038828: .4byte 0x0203E4F4
_0803882C: .4byte 0x0203E4F8
_08038830:
	blt _080387DC
_08038832:
	movs r7, #0
	mov r2, ip
	ldrb r2, [r2, #0x1d]
	cmp r7, r2
	bge _08038862
	ldr r1, _080388BC
	mov r3, sl
	adds r6, r3, r1
	mov r5, sb
_08038844:
	ldr r1, [r6]
	adds r1, r1, r7
	mov r3, r8
	adds r2, r3, r4
	ldrb r3, [r1]
	ldrb r1, [r2]
	adds r2, r4, #1
	str r2, [sp, #8]
	cmp r3, r1
	bne _080388B8
	adds r7, #1
	adds r4, r2, #0
	ldrb r1, [r5, #0x1d]
	cmp r7, r1
	blt _08038844
_08038862:
	movs r7, #0
	mov r2, ip
	ldrb r2, [r2, #0x1e]
	cmp r7, r2
	bge _08038892
	ldr r1, _080388C0
	mov r3, sl
	adds r6, r3, r1
	mov r5, sb
_08038874:
	ldr r1, [r6]
	adds r1, r1, r7
	mov r3, r8
	adds r2, r3, r4
	ldrb r3, [r1]
	ldrb r1, [r2]
	adds r2, r4, #1
	str r2, [sp, #8]
	cmp r3, r1
	bne _080388B8
	adds r7, #1
	adds r4, r2, #0
	ldrb r1, [r5, #0x1e]
	cmp r7, r1
	blt _08038874
_08038892:
	movs r2, #0xc4
	add ip, r2
	add sb, r2
	add sl, r2
	ldr r3, [sp, #0x14]
	adds r3, #1
	str r3, [sp, #0x14]
	cmp r3, #5
	bgt _080388A6
	b _0803860A
_080388A6:
	mov r2, r8
	adds r1, r2, r4
	ldrb r1, [r1]
	str r1, [sp, #0x14]
	adds r1, r4, #1
	str r1, [sp, #8]
	ldr r3, [sp, #0x14]
	cmp r3, #0x75
	beq _080388C4
_080388B8:
	movs r0, #0
	b _080388CE
	.align 2, 0
_080388BC: .4byte 0x0203E4FC
_080388C0: .4byte 0x0203E500
_080388C4:
	adds r1, r4, #0
	adds r1, #0x10
	str r1, [sp, #8]
	ldr r4, [sp, #0x10]
	str r1, [r4]
_080388CE:
	add sp, #0x2c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0


	.thumb
    .global sub_80388E0
sub_80388E0: @ 0x080388E0
	ldr r0, _080388FC
	movs r1, #1
	strb r1, [r0]
	ldr r0, _08038900
	strb r1, [r0]
	ldr r0, _08038904
	strb r1, [r0]
	ldr r0, _08038908
	strb r1, [r0]
	ldr r0, _0803890C
	strb r1, [r0]
	ldr r0, _08038910
	strb r1, [r0]
	bx lr
	.align 2, 0
_080388FC: .4byte 0x0203E968
_08038900: .4byte 0x0203E969
_08038904: .4byte 0x0203E96A
_08038908: .4byte 0x0203E96B
_0803890C: .4byte 0x0203E96C
_08038910: .4byte 0x0203E96D


    .thumb
sub_8038914: @ 0x08038914
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov sb, r0
	adds r7, r1, #0
	adds r4, r2, #0
	adds r5, r3, #0
	ldr r0, [sp, #0x24]
	mov r8, r0
	ldr r0, [sp, #0x28]
	mov sl, r0
	ldr r6, [r0]
	movs r3, #0
	cmp r3, r8
	bge _08038972
	mov ip, r3
_08038938:
	ldr r0, [sp, #0x20]
	adds r1, r0, r3
	ldrb r0, [r4]
	ldrb r1, [r1]
	orrs r0, r1
	strb r0, [r4]
	ldr r0, [r5]
	adds r0, #1
	str r0, [r5]
	cmp r0, #8
	bne _08038966
	ldr r1, [r7]
	mov r0, sb
	adds r2, r0, r1
	ldrb r0, [r4]
	strb r0, [r2]
	ldrb r0, [r2]
	adds r6, r6, r0
	adds r1, #1
	str r1, [r7]
	mov r0, ip
	str r0, [r5]
	b _0803896A
_08038966:
	ldrb r0, [r4]
	lsls r0, r0, #1
_0803896A:
	strb r0, [r4]
	adds r3, #1
	cmp r3, r8
	blt _08038938
_08038972:
	mov r0, sl
	str r6, [r0]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

    .thumb
sub_8038984: @ 0x08038984
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov r8, r0
	adds r6, r1, #0
	mov ip, r2
	adds r4, r3, #0
	ldr r0, [sp, #0x24]
	mov sb, r0
	ldr r1, [sp, #0x28]
	mov sl, r1
	ldr r7, [r1]
	movs r5, #0
	cmp r5, sb
	bge _080389EA
_080389A6:
	ldr r0, [r4]
	cmp r0, #8
	bne _080389C8
	movs r0, #0
	str r0, [r4]
	ldr r0, [r6]
	add r0, r8
	ldrb r0, [r0]
	mov r2, ip
	strb r0, [r2]
	ldr r1, [r6]
	mov r2, r8
	adds r0, r2, r1
	ldrb r0, [r0]
	adds r7, r7, r0
	adds r1, #1
	str r1, [r6]
_080389C8:
	ldr r0, [sp, #0x20]
	adds r3, r0, r5
	mov r2, ip
	ldrb r1, [r2]
	ldr r2, [r4]
	movs r0, #7
	subs r0, r0, r2
	asrs r1, r0
	movs r0, #1
	ands r1, r0
	strb r1, [r3]
	ldr r0, [r4]
	adds r0, #1
	str r0, [r4]
	adds r5, #1
	cmp r5, sb
	blt _080389A6
_080389EA:
	mov r0, sl
	str r7, [r0]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

    .thumb
sub_80389FC: @ 0x080389FC
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r4, r1, #0
	adds r5, r2, #0
	ldr r0, [sp, #0x14]
	cmp r0, #0
	ble _08038A2E
	movs r7, #0
	adds r2, r0, #0
_08038A0E:
	ldr r0, [r3]
	cmp r0, #8
	bne _08038A22
	str r7, [r3]
	ldr r0, [r4]
	adds r1, r6, r0
	ldrb r1, [r1]
	strb r1, [r5]
	adds r0, #1
	str r0, [r4]
_08038A22:
	ldr r0, [r3]
	adds r0, #1
	str r0, [r3]
	subs r2, #1
	cmp r2, #0
	bne _08038A0E
_08038A2E:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

    .thumb
    .global sub_8038A34
sub_8038A34: @ 0x08038A34
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	movs r5, #0
	ldr r0, _08038DAC
	mov sl, r0
	ldr r6, _08038DB0
	ldr r1, _08038DB4
	mov sb, r1
_08038A4C:
	lsls r1, r5, #4
	subs r0, r1, r5
	lsls r4, r0, #3
	mov r7, sl
	adds r2, r4, r7
	adds r0, r2, #0
	adds r0, #0x70
	ldrb r0, [r0]
	adds r7, r1, #0
	cmp r0, #0
	beq _08038A78
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #2
	ldr r1, _08038DB4
	adds r0, r0, r1
	ldrb r1, [r0, #5]
	adds r1, #1
	strb r1, [r0, #5]
	ldrb r0, [r6, #0xb]
	adds r0, #1
	strb r0, [r6, #0xb]
_08038A78:
	adds r0, r2, #0
	adds r0, #0x71
	ldrb r0, [r0]
	cmp r0, #0
	beq _08038A98
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #2
	ldr r1, _08038DB4
	adds r0, r0, r1
	ldrb r1, [r0, #5]
	adds r1, #1
	strb r1, [r0, #5]
	ldrb r0, [r6, #0xb]
	adds r0, #1
	strb r0, [r6, #0xb]
_08038A98:
	adds r0, r2, #0
	adds r0, #0x72
	ldrb r0, [r0]
	cmp r0, #0
	beq _08038AB8
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #2
	ldr r1, _08038DB4
	adds r0, r0, r1
	ldrb r1, [r0, #5]
	adds r1, #1
	strb r1, [r0, #5]
	ldrb r0, [r6, #0xb]
	adds r0, #1
	strb r0, [r6, #0xb]
_08038AB8:
	adds r0, r2, #0
	adds r0, #0x73
	ldrb r0, [r0]
	cmp r0, #0
	beq _08038AD8
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #2
	ldr r1, _08038DB4
	adds r0, r0, r1
	ldrb r1, [r0, #5]
	adds r1, #1
	strb r1, [r0, #5]
	ldrb r0, [r6, #0xb]
	adds r0, #1
	strb r0, [r6, #0xb]
_08038AD8:
	adds r0, r2, #0
	adds r0, #0x74
	ldrb r0, [r0]
	cmp r0, #0
	beq _08038AF8
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #2
	ldr r1, _08038DB4
	adds r0, r0, r1
	ldrb r1, [r0, #5]
	adds r1, #1
	strb r1, [r0, #5]
	ldrb r0, [r6, #0xb]
	adds r0, #1
	strb r0, [r6, #0xb]
_08038AF8:
	movs r3, #0
	adds r0, r5, #1
	str r0, [sp]
	ldrb r2, [r2]
	cmp r3, r2
	bge _08038B3A
	ldr r1, _08038DAC
	adds r0, r1, #0
	adds r0, #0x1c
	adds r0, r0, r4
	mov ip, r0
	ldr r2, _08038DB4
	adds r4, r4, r1
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #2
	adds r1, r0, r2
_08038B1A:
	mov r2, ip
	ldr r0, [r2]
	adds r0, r0, r3
	ldrb r0, [r0]
	cmp r0, #0
	beq _08038B32
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldrb r0, [r6]
	adds r0, #1
	strb r0, [r6]
_08038B32:
	adds r3, #1
	ldrb r0, [r4]
	cmp r3, r0
	blt _08038B1A
_08038B3A:
	movs r3, #0
	adds r4, r7, #0
	subs r0, r7, r5
	lsls r0, r0, #3
	add r0, sl
	ldrb r0, [r0, #1]
	cmp r3, r0
	bge _08038B88
	ldr r1, _08038DAC
	mov ip, r1
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #2
	mov r1, sb
	adds r2, r0, r1
	movs r0, #0x20
	add r0, ip
	mov r8, r0
_08038B5E:
	subs r0, r4, r5
	lsls r1, r0, #3
	mov r0, r8
	adds r0, r1, r0
	ldr r0, [r0]
	adds r0, r0, r3
	str r0, [sp, #4]
	ldrb r0, [r0]
	cmp r0, #0
	beq _08038B7E
	ldrb r0, [r2, #1]
	adds r0, #1
	strb r0, [r2, #1]
	ldrb r0, [r6, #1]
	adds r0, #1
	strb r0, [r6, #1]
_08038B7E:
	adds r3, #1
	add r1, ip
	ldrb r1, [r1, #1]
	cmp r3, r1
	blt _08038B5E
_08038B88:
	movs r3, #0
	adds r4, r7, #0
	subs r0, r7, r5
	lsls r0, r0, #3
	add r0, sl
	ldrb r0, [r0, #2]
	cmp r3, r0
	bge _08038BD6
	ldr r1, _08038DAC
	mov ip, r1
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #2
	mov r1, sb
	adds r2, r0, r1
	movs r0, #0x24
	add r0, ip
	mov r8, r0
_08038BAC:
	subs r0, r4, r5
	lsls r1, r0, #3
	mov r0, r8
	adds r0, r1, r0
	ldr r0, [r0]
	adds r0, r0, r3
	str r0, [sp, #4]
	ldrb r0, [r0]
	cmp r0, #0
	beq _08038BCC
	ldrh r0, [r2, #6]
	adds r0, #1
	strh r0, [r2, #6]
	ldrh r0, [r6, #0xc]
	adds r0, #1
	strh r0, [r6, #0xc]
_08038BCC:
	adds r3, #1
	add r1, ip
	ldrb r1, [r1, #2]
	cmp r3, r1
	blt _08038BAC
_08038BD6:
	movs r3, #0
	adds r4, r7, #0
	subs r0, r7, r5
	lsls r0, r0, #3
	add r0, sl
	ldrb r0, [r0, #3]
	cmp r3, r0
	bge _08038C24
	ldr r1, _08038DAC
	mov ip, r1
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #2
	mov r1, sb
	adds r2, r0, r1
	movs r0, #0x28
	add r0, ip
	mov r8, r0
_08038BFA:
	subs r0, r4, r5
	lsls r1, r0, #3
	mov r0, r8
	adds r0, r1, r0
	ldr r0, [r0]
	adds r0, r0, r3
	str r0, [sp, #4]
	ldrb r0, [r0]
	cmp r0, #0
	beq _08038C1A
	ldrh r0, [r2, #6]
	adds r0, #5
	strh r0, [r2, #6]
	ldrh r0, [r6, #0xc]
	adds r0, #5
	strh r0, [r6, #0xc]
_08038C1A:
	adds r3, #1
	add r1, ip
	ldrb r1, [r1, #3]
	cmp r3, r1
	blt _08038BFA
_08038C24:
	movs r3, #0
	adds r4, r7, #0
	subs r0, r7, r5
	lsls r0, r0, #3
	add r0, sl
	ldrb r0, [r0, #4]
	cmp r3, r0
	bge _08038C72
	ldr r1, _08038DAC
	mov ip, r1
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #2
	mov r1, sb
	adds r2, r0, r1
	movs r0, #0x2c
	add r0, ip
	mov r8, r0
_08038C48:
	subs r0, r4, r5
	lsls r1, r0, #3
	mov r0, r8
	adds r0, r1, r0
	ldr r0, [r0]
	adds r0, r0, r3
	str r0, [sp, #4]
	ldrb r0, [r0]
	cmp r0, #0
	beq _08038C68
	ldrh r0, [r2, #6]
	adds r0, #0x14
	strh r0, [r2, #6]
	ldrh r0, [r6, #0xc]
	adds r0, #0x14
	strh r0, [r6, #0xc]
_08038C68:
	adds r3, #1
	add r1, ip
	ldrb r1, [r1, #4]
	cmp r3, r1
	blt _08038C48
_08038C72:
	movs r3, #0
	adds r4, r7, #0
	subs r0, r7, r5
	lsls r0, r0, #3
	add r0, sl
	ldrb r0, [r0, #8]
	cmp r3, r0
	bge _08038CC0
	ldr r1, _08038DAC
	mov ip, r1
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #2
	mov r1, sb
	adds r2, r0, r1
	movs r0, #0x3c
	add r0, ip
	mov r8, r0
_08038C96:
	subs r0, r4, r5
	lsls r1, r0, #3
	mov r0, r8
	adds r0, r1, r0
	ldr r0, [r0]
	adds r0, r0, r3
	str r0, [sp, #4]
	ldrb r0, [r0]
	cmp r0, #0
	beq _08038CB6
	ldrb r0, [r2, #3]
	adds r0, #1
	strb r0, [r2, #3]
	ldrb r0, [r6, #0x18]
	adds r0, #1
	strb r0, [r6, #0x18]
_08038CB6:
	adds r3, #1
	add r1, ip
	ldrb r1, [r1, #8]
	cmp r3, r1
	blt _08038C96
_08038CC0:
	movs r3, #0
	adds r4, r7, #0
	subs r0, r7, r5
	lsls r0, r0, #3
	add r0, sl
	ldrb r0, [r0, #9]
	cmp r3, r0
	bge _08038D0E
	ldr r1, _08038DAC
	mov ip, r1
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #2
	mov r1, sb
	adds r2, r0, r1
	movs r0, #0x40
	add r0, ip
	mov r8, r0
_08038CE4:
	subs r0, r4, r5
	lsls r1, r0, #3
	mov r0, r8
	adds r0, r1, r0
	ldr r0, [r0]
	adds r0, r0, r3
	str r0, [sp, #4]
	ldrb r0, [r0]
	cmp r0, #0
	beq _08038D04
	ldrb r0, [r2, #4]
	adds r0, #1
	strb r0, [r2, #4]
	ldrb r0, [r6, #0x19]
	adds r0, #1
	strb r0, [r6, #0x19]
_08038D04:
	adds r3, #1
	add r1, ip
	ldrb r1, [r1, #9]
	cmp r3, r1
	blt _08038CE4
_08038D0E:
	movs r3, #0
	adds r4, r7, #0
	subs r0, r7, r5
	lsls r0, r0, #3
	add r0, sl
	ldrb r0, [r0, #0xa]
	cmp r3, r0
	bge _08038D5C
	ldr r1, _08038DAC
	mov ip, r1
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #2
	mov r1, sb
	adds r2, r0, r1
	movs r0, #0x44
	add r0, ip
	mov r8, r0
_08038D32:
	subs r0, r4, r5
	lsls r1, r0, #3
	mov r0, r8
	adds r0, r1, r0
	ldr r0, [r0]
	adds r0, r0, r3
	str r0, [sp, #4]
	ldrb r0, [r0]
	cmp r0, #0
	beq _08038D52
	ldrb r0, [r2, #9]
	adds r0, #1
	strb r0, [r2, #9]
	ldrb r0, [r6, #2]
	adds r0, #1
	strb r0, [r6, #2]
_08038D52:
	adds r3, #1
	add r1, ip
	ldrb r1, [r1, #0xa]
	cmp r3, r1
	blt _08038D32
_08038D5C:
	movs r3, #0
	adds r4, r7, #0
	subs r0, r7, r5
	lsls r0, r0, #3
	add r0, sl
	ldrb r0, [r0, #0xb]
	cmp r3, r0
	bge _08038DBA
	ldr r1, _08038DAC
	mov ip, r1
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #2
	mov r1, sb
	adds r2, r0, r1
	movs r0, #0x48
	add r0, ip
	mov r8, r0
_08038D80:
	subs r0, r4, r5
	lsls r1, r0, #3
	mov r0, r8
	adds r0, r1, r0
	ldr r0, [r0]
	adds r0, r0, r3
	str r0, [sp, #4]
	ldrb r0, [r0]
	cmp r0, #0
	beq _08038DA0
	ldrb r0, [r2, #0xa]
	adds r0, #1
	strb r0, [r2, #0xa]
	ldrb r0, [r6, #3]
	adds r0, #1
	strb r0, [r6, #3]
_08038DA0:
	adds r3, #1
	add r1, ip
	ldrb r1, [r1, #0xb]
	cmp r3, r1
	b _08038DB8
	.align 2, 0
_08038DAC: .4byte 0x0203E170
_08038DB0: .4byte gGameStatus
_08038DB4: .4byte 0x02000FCC
_08038DB8:
	blt _08038D80
_08038DBA:
	movs r3, #0
	adds r4, r7, #0
	subs r0, r7, r5
	lsls r0, r0, #3
	add r0, sl
	ldrb r0, [r0, #0xc]
	cmp r3, r0
	bge _08038E08
	ldr r1, _08038F98
	mov ip, r1
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #2
	mov r1, sb
	adds r2, r0, r1
	movs r0, #0x4c
	add r0, ip
	mov r8, r0
_08038DDE:
	subs r0, r4, r5
	lsls r1, r0, #3
	mov r0, r8
	adds r0, r1, r0
	ldr r0, [r0]
	adds r0, r0, r3
	str r0, [sp, #4]
	ldrb r0, [r0]
	cmp r0, #0
	beq _08038DFE
	ldrb r0, [r2, #0xb]
	adds r0, #1
	strb r0, [r2, #0xb]
	ldrb r0, [r6, #4]
	adds r0, #1
	strb r0, [r6, #4]
_08038DFE:
	adds r3, #1
	add r1, ip
	ldrb r1, [r1, #0xc]
	cmp r3, r1
	blt _08038DDE
_08038E08:
	movs r3, #0
	adds r4, r7, #0
	subs r0, r7, r5
	lsls r0, r0, #3
	add r0, sl
	ldrb r0, [r0, #0xd]
	cmp r3, r0
	bge _08038E56
	ldr r1, _08038F98
	mov ip, r1
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #2
	mov r1, sb
	adds r2, r0, r1
	movs r0, #0x50
	add r0, ip
	mov r8, r0
_08038E2C:
	subs r0, r4, r5
	lsls r1, r0, #3
	mov r0, r8
	adds r0, r1, r0
	ldr r0, [r0]
	adds r0, r0, r3
	str r0, [sp, #4]
	ldrb r0, [r0]
	cmp r0, #0
	beq _08038E4C
	ldrb r0, [r2, #0xc]
	adds r0, #1
	strb r0, [r2, #0xc]
	ldrb r0, [r6, #5]
	adds r0, #1
	strb r0, [r6, #5]
_08038E4C:
	adds r3, #1
	add r1, ip
	ldrb r1, [r1, #0xd]
	cmp r3, r1
	blt _08038E2C
_08038E56:
	movs r3, #0
	adds r4, r7, #0
	subs r0, r7, r5
	lsls r0, r0, #3
	add r0, sl
	ldrb r0, [r0, #0xf]
	cmp r3, r0
	bge _08038EA4
	ldr r1, _08038F98
	mov ip, r1
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #2
	mov r1, sb
	adds r2, r0, r1
	movs r0, #0x58
	add r0, ip
	mov r8, r0
_08038E7A:
	subs r0, r4, r5
	lsls r1, r0, #3
	mov r0, r8
	adds r0, r1, r0
	ldr r0, [r0]
	adds r0, r0, r3
	str r0, [sp, #4]
	ldrb r0, [r0]
	cmp r0, #0
	beq _08038E9A
	ldrb r0, [r2, #0xe]
	adds r0, #1
	strb r0, [r2, #0xe]
	ldrb r0, [r6, #0x1c]
	adds r0, #1
	strb r0, [r6, #0x1c]
_08038E9A:
	adds r3, #1
	add r1, ip
	ldrb r1, [r1, #0xf]
	cmp r3, r1
	blt _08038E7A
_08038EA4:
	movs r3, #0
	adds r4, r7, #0
	subs r0, r7, r5
	lsls r0, r0, #3
	add r0, sl
	ldrb r0, [r0, #0x10]
	cmp r3, r0
	bge _08038EF2
	ldr r1, _08038F98
	mov ip, r1
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #2
	mov r1, sb
	adds r2, r0, r1
	movs r0, #0x5c
	add r0, ip
	mov r8, r0
_08038EC8:
	subs r0, r4, r5
	lsls r1, r0, #3
	mov r0, r8
	adds r0, r1, r0
	ldr r0, [r0]
	adds r0, r0, r3
	str r0, [sp, #4]
	ldrb r0, [r0]
	cmp r0, #0
	beq _08038EE8
	ldrb r0, [r2, #0xf]
	adds r0, #1
	strb r0, [r2, #0xf]
	ldrb r0, [r6, #0x1d]
	adds r0, #1
	strb r0, [r6, #0x1d]
_08038EE8:
	adds r3, #1
	add r1, ip
	ldrb r1, [r1, #0x10]
	cmp r3, r1
	blt _08038EC8
_08038EF2:
	movs r3, #0
	adds r1, r7, #0
	subs r0, r1, r5
	lsls r0, r0, #3
	add r0, sl
	ldrb r0, [r0, #0x11]
	cmp r3, r0
	bge _08038F40
	ldr r2, _08038F98
	mov ip, r2
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #2
	mov r7, sb
	adds r4, r0, r7
	movs r0, #0x60
	add r0, ip
	mov r8, r0
_08038F16:
	subs r0, r1, r5
	lsls r2, r0, #3
	mov r7, r8
	adds r0, r2, r7
	ldr r0, [r0]
	adds r0, r0, r3
	ldrb r0, [r0]
	cmp r0, #0
	beq _08038F34
	ldrb r0, [r4, #0x10]
	adds r0, #1
	strb r0, [r4, #0x10]
	ldrb r0, [r6, #0x1e]
	adds r0, #1
	strb r0, [r6, #0x1e]
_08038F34:
	adds r3, #1
	mov r7, ip
	adds r0, r2, r7
	ldrb r0, [r0, #0x11]
	cmp r3, r0
	blt _08038F16
_08038F40:
	movs r3, #0
	movs r0, #0xc4
	adds r1, r5, #0
	muls r1, r0, r1
	ldr r0, _08038F9C
	adds r2, r1, r0
	ldrb r7, [r2, #3]
	cmp r3, r7
	bge _08038F7E
	adds r0, #0x34
	adds r4, r1, r0
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #2
	mov r5, sb
	adds r1, r0, r5
_08038F60:
	ldr r0, [r4]
	adds r0, r0, r3
	ldrb r0, [r0]
	cmp r0, #0
	beq _08038F76
	ldrb r0, [r1, #2]
	adds r0, #1
	strb r0, [r1, #2]
	ldrb r0, [r6, #0x1a]
	adds r0, #1
	strb r0, [r6, #0x1a]
_08038F76:
	adds r3, #1
	ldrb r7, [r2, #3]
	cmp r3, r7
	blt _08038F60
_08038F7E:
	ldr r5, [sp]
	cmp r5, #5
	bgt _08038F86
	b _08038A4C
_08038F86:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08038F98: .4byte 0x0203E170
_08038F9C: .4byte 0x0203E440

    .thumb
    .global sub_8038FA0
sub_8038FA0: @ 0x08038FA0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	mov r8, r0
	ldr r0, _080391D8
	movs r1, #0
	strb r1, [r0]
	ldr r0, _080391DC
	strb r1, [r0]
	movs r2, #0
	ldr r1, _080391E0
	mov r0, r8
	lsls r3, r0, #4
	subs r0, r3, r0
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrb r0, [r0, #0xe]
	cmp r2, r0
	bge _08038FEC
	adds r4, r1, #0
	adds r6, r4, #0
	adds r6, #0x54
	movs r5, #0
_08038FD4:
	mov r0, r8
	subs r1, r3, r0
	lsls r1, r1, #3
	adds r0, r1, r6
	ldr r0, [r0]
	adds r0, r0, r2
	strb r5, [r0]
	adds r2, #1
	adds r1, r1, r4
	ldrb r1, [r1, #0xe]
	cmp r2, r1
	blt _08038FD4
_08038FEC:
	movs r0, #0x36
	bl hud_release_element
	movs r2, #0
	ldr r4, _080391E4
	movs r0, #0xc4
	mov r3, r8
	muls r3, r0, r3
	adds r0, r3, r4
	adds r1, r0, #0
	adds r1, #0x26
	ldrb r0, [r1]
	cmp r2, r0
	bge _0803901E
	adds r0, r4, #0
	adds r0, #0x8c
	adds r3, r3, r0
	movs r4, #0
_08039010:
	ldr r0, [r3]
	adds r0, r0, r2
	strb r4, [r0]
	adds r2, #1
	ldrb r0, [r1]
	cmp r2, r0
	blt _08039010
_0803901E:
	ldr r0, _080391E8
	ldrb r1, [r0]
	ldr r6, _080391EC
	cmp r1, #0
	bne _080390FC
	ldr r0, _080391F0
	strb r1, [r0]
	ldr r1, _080391F4
	movs r0, #1
	strb r0, [r1]
	movs r2, #0
	ldr r1, _080391E4
	movs r0, #0xc4
	mov r3, r8
	muls r3, r0, r3
	adds r4, r3, r1
	adds r5, r1, #0
	ldrb r1, [r4, #7]
	cmp r2, r1
	bge _0803905E
	adds r0, r5, #0
	adds r0, #0x44
	adds r3, r3, r0
	adds r1, r4, #0
	movs r4, #0
_08039050:
	ldr r0, [r3]
	adds r0, r0, r2
	strb r4, [r0]
	adds r2, #1
	ldrb r0, [r1, #7]
	cmp r2, r0
	blt _08039050
_0803905E:
	movs r2, #0
	movs r0, #0xc4
	mov r1, r8
	muls r1, r0, r1
	adds r3, r1, r5
	ldrb r4, [r3, #8]
	cmp r2, r4
	bge _08039086
	adds r0, r5, #0
	adds r0, #0x48
	adds r4, r1, r0
	adds r1, r3, #0
	movs r3, #0
_08039078:
	ldr r0, [r4]
	adds r0, r0, r2
	strb r3, [r0]
	adds r2, #1
	ldrb r0, [r1, #8]
	cmp r2, r0
	blt _08039078
_08039086:
	movs r2, #0
	movs r0, #0xc4
	mov r1, r8
	muls r1, r0, r1
	adds r3, r1, r5
	ldrb r4, [r3, #9]
	cmp r2, r4
	bge _080390AE
	adds r0, r5, #0
	adds r0, #0x4c
	adds r4, r1, r0
	adds r1, r3, #0
	movs r3, #0
_080390A0:
	ldr r0, [r4]
	adds r0, r0, r2
	strb r3, [r0]
	adds r2, #1
	ldrb r0, [r1, #9]
	cmp r2, r0
	blt _080390A0
_080390AE:
	movs r2, #0
	movs r0, #0xc4
	mov r1, r8
	muls r1, r0, r1
	adds r3, r1, r5
	ldrb r4, [r3, #0xa]
	cmp r2, r4
	bge _080390D6
	adds r0, r5, #0
	adds r0, #0x50
	adds r4, r1, r0
	adds r1, r3, #0
	movs r3, #0
_080390C8:
	ldr r0, [r4]
	adds r0, r0, r2
	strb r3, [r0]
	adds r2, #1
	ldrb r0, [r1, #0xa]
	cmp r2, r0
	blt _080390C8
_080390D6:
	movs r2, #0
	movs r0, #0xc4
	mov r1, r8
	muls r1, r0, r1
	adds r3, r1, r5
	ldrb r4, [r3, #0xb]
	cmp r2, r4
	bge _080390FC
	adds r0, r5, #0
	adds r0, #0x54
	adds r1, r1, r0
	movs r4, #0
_080390EE:
	ldr r0, [r1]
	adds r0, r0, r2
	strb r4, [r0]
	adds r2, #1
	ldrb r0, [r3, #0xb]
	cmp r2, r0
	blt _080390EE
_080390FC:
	ldrb r0, [r6]
	cmp r0, #0
	bne _0803917C
	movs r1, #0
	mov ip, r1
	ldr r0, _080391E4
	movs r1, #0xc4
	mov r4, r8
	muls r4, r1, r4
	adds r3, r4, r0
	ldrb r1, [r3, #0x12]
	adds r5, r0, #0
	cmp r1, #0
	beq _0803917C
	movs r2, #0
	ldrb r0, [r3, #0x12]
	cmp r2, r0
	bge _0803917C
	adds r0, r5, #0
	adds r0, #0x90
	adds r4, r4, r0
	str r4, [sp]
	mov sb, r2
	mov sl, r3
_0803912C:
	lsls r1, r2, #4
	ldr r3, [sp]
	ldr r0, [r3]
	adds r4, r0, r1
	movs r1, #0
	adds r5, r2, #1
	ldrb r0, [r4]
	cmp r1, r0
	bge _08039162
	movs r7, #0
	movs r6, #0
_08039142:
	ldr r0, [r4, #0xc]
	lsls r3, r1, #3
	adds r2, r3, r0
	ldrb r0, [r2]
	cmp r0, #1
	bne _0803915A
	strh r6, [r2, #6]
	ldr r0, [r4, #0xc]
	adds r0, r3, r0
	strb r7, [r0, #1]
	movs r3, #1
	mov ip, r3
_0803915A:
	adds r1, #1
	ldrb r0, [r4]
	cmp r1, r0
	blt _08039142
_08039162:
	mov r1, ip
	cmp r1, #0
	beq _08039172
	mov r3, sb
	strb r3, [r4, #1]
	strb r3, [r4, #4]
	movs r4, #0
	mov ip, r4
_08039172:
	adds r2, r5, #0
	mov r0, sl
	ldrb r0, [r0, #0x12]
	cmp r2, r0
	blt _0803912C
_0803917C:
	mov r1, r8
	cmp r1, #5
	bne _080391AA
	ldr r0, _080391E4
	ldr r3, _080391F8
	adds r0, r0, r3
	ldr r4, [r0]
	movs r2, #0
	ldrb r0, [r4]
	cmp r2, r0
	bge _080391A4
	movs r3, #0
_08039194:
	ldr r1, [r4, #0xc]
	lsls r0, r2, #3
	adds r0, r0, r1
	strb r3, [r0, #1]
	adds r2, #1
	ldrb r1, [r4]
	cmp r2, r1
	blt _08039194
_080391A4:
	movs r0, #0
	strb r0, [r4, #1]
	strb r0, [r4, #4]
_080391AA:
	movs r4, #0
	ldr r3, _080391FC
	strb r4, [r3]
	bl sub_803938C
	ldr r0, _08039200
	strb r4, [r0]
	ldr r0, _08039204
	strb r4, [r0]
	ldr r0, _08039208
	strb r4, [r0]
	ldr r0, _0803920C
	strb r4, [r0]
	bl sub_8039210
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080391D8: .4byte 0x0203E97D
_080391DC: .4byte 0x0203E136
_080391E0: .4byte 0x0203E170
_080391E4: .4byte 0x0203E440
_080391E8: .4byte 0x0203E954
_080391EC: .4byte 0x0203E137
_080391F0: .4byte 0x0203E952
_080391F4: .4byte 0x0203E953
_080391F8: .4byte 0x00000464
_080391FC: .4byte 0x0203E97B
_08039200: .4byte 0x0203E977
_08039204: .4byte 0x0203E978
_08039208: .4byte 0x0203E979
_0803920C: .4byte 0x0203E97A

    .thumb
    .global sub_8039210
sub_8039210: @ 0x08039210
	push {lr}
	ldr r0, _0803922C
	ldrb r0, [r0]
	cmp r0, #0
	bne _08039226
	ldr r0, _08039230
	ldrb r0, [r0]
	cmp r0, #0
	bne _08039226
	bl timer_stop
_08039226:
	pop {r0}
	bx r0
	.align 2, 0
_0803922C: .4byte gIsStopHoneycombActive
_08039230: .4byte 0x0203E137

    .thumb
	.global sub_8039234
sub_8039234: @ 0x08039234
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	movs r4, #0
	ldr r2, _08039380
	ldr r3, _08039384
	ldrh r1, [r3]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r2
	adds r5, r2, #0
	adds r6, r3, #0
	ldr r1, _08039388
	mov r8, r1
	ldrb r0, [r0, #5]
	cmp r4, r0
	bge _08039284
	mov ip, r5
	adds r2, r6, #0
	adds r7, r5, #0
	adds r7, #0x30
	movs r3, #0
_08039262:
	ldrh r1, [r2]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r7
	ldr r0, [r0]
	adds r0, r0, r4
	strb r3, [r0]
	adds r4, #1
	ldrh r1, [r2]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #3
	add r0, ip
	ldrb r0, [r0, #5]
	cmp r4, r0
	blt _08039262
_08039284:
	movs r4, #0
	ldrh r1, [r6]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r5
	ldrb r0, [r0, #0x12]
	cmp r4, r0
	bge _080392C2
	mov ip, r5
	adds r2, r6, #0
	adds r7, r5, #0
	adds r7, #0x64
	movs r3, #0
_080392A0:
	ldrh r1, [r2]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r7
	ldr r0, [r0]
	adds r0, r0, r4
	strb r3, [r0]
	adds r4, #1
	ldrh r1, [r2]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #3
	add r0, ip
	ldrb r0, [r0, #0x12]
	cmp r4, r0
	blt _080392A0
_080392C2:
	movs r4, #0
	ldrh r1, [r6]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r5
	ldrb r0, [r0, #0x13]
	cmp r4, r0
	bge _08039300
	mov ip, r5
	adds r2, r6, #0
	adds r7, r5, #0
	adds r7, #0x68
	movs r3, #0
_080392DE:
	ldrh r1, [r2]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r7
	ldr r0, [r0]
	adds r0, r0, r4
	strb r3, [r0]
	adds r4, #1
	ldrh r1, [r2]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #3
	add r0, ip
	ldrb r0, [r0, #0x13]
	cmp r4, r0
	blt _080392DE
_08039300:
	movs r4, #0
	ldrh r1, [r6]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r5
	ldrb r0, [r0, #0x14]
	cmp r4, r0
	bge _0803933E
	adds r3, r5, #0
	adds r2, r6, #0
	adds r7, r3, #0
	adds r7, #0x6c
	movs r5, #0
_0803931C:
	ldrh r1, [r2]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r7
	ldr r0, [r0]
	adds r0, r0, r4
	strb r5, [r0]
	adds r4, #1
	ldrh r1, [r2]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r3
	ldrb r0, [r0, #0x14]
	cmp r4, r0
	blt _0803931C
_0803933E:
	movs r4, #0
	ldrh r1, [r6]
	movs r0, #0xc4
	muls r0, r1, r0
	add r0, r8
	ldrb r0, [r0]
	cmp r4, r0
	bge _08039374
	mov r2, r8
	adds r3, r6, #0
	movs r1, #0xc4
	adds r6, r2, #0
	adds r6, #0x28
	movs r5, #0
_0803935A:
	ldrh r0, [r3]
	muls r0, r1, r0
	adds r0, r0, r6
	ldr r0, [r0]
	adds r0, r0, r4
	strb r5, [r0]
	adds r4, #1
	ldrh r0, [r3]
	muls r0, r1, r0
	adds r0, r0, r2
	ldrb r0, [r0]
	cmp r4, r0
	blt _0803935A
_08039374:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08039380: .4byte 0x0203E170
_08039384: .4byte gLoadedRoomLevel
_08039388: .4byte 0x0203E440

    .thumb
sub_803938C: @ 0x0803938C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _080394AC
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803939C
	b _080394A0
_0803939C:
	ldr r0, _080394B0
	ldrb r0, [r0]
	cmp r0, #0
	bne _080394A0
	movs r4, #0
	ldr r2, _080394B4
	ldr r3, _080394B8
	ldrh r1, [r3]
	movs r0, #0xc4
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x22
	adds r5, r2, #0
	ldr r1, _080394BC
	mov r8, r1
	ldrb r0, [r0]
	cmp r4, r0
	bge _080393E8
	mov ip, r5
	adds r2, r3, #0
	movs r1, #0xc4
	adds r7, r5, #0
	adds r7, #0x7c
	movs r6, #0
_080393CC:
	ldrh r0, [r2]
	muls r0, r1, r0
	adds r0, r0, r7
	ldr r0, [r0]
	adds r0, r0, r4
	strb r6, [r0]
	adds r4, #1
	ldrh r0, [r2]
	muls r0, r1, r0
	add r0, ip
	adds r0, #0x22
	ldrb r0, [r0]
	cmp r4, r0
	blt _080393CC
_080393E8:
	movs r4, #0
	ldrh r1, [r3]
	movs r0, #0xc4
	muls r0, r1, r0
	adds r0, r0, r5
	adds r0, #0x23
	ldrb r0, [r0]
	cmp r4, r0
	bge _08039422
	mov ip, r5
	adds r2, r3, #0
	movs r1, #0xc4
	adds r7, r5, #0
	adds r7, #0x80
	movs r6, #0
_08039406:
	ldrh r0, [r2]
	muls r0, r1, r0
	adds r0, r0, r7
	ldr r0, [r0]
	adds r0, r0, r4
	strb r6, [r0]
	adds r4, #1
	ldrh r0, [r2]
	muls r0, r1, r0
	add r0, ip
	adds r0, #0x23
	ldrb r0, [r0]
	cmp r4, r0
	blt _08039406
_08039422:
	movs r4, #0
	ldrh r1, [r3]
	movs r0, #0xc4
	muls r0, r1, r0
	adds r0, r0, r5
	adds r0, #0x24
	ldrb r0, [r0]
	cmp r4, r0
	bge _0803945C
	mov ip, r5
	adds r2, r3, #0
	movs r1, #0xc4
	adds r7, r5, #0
	adds r7, #0x84
	movs r6, #0
_08039440:
	ldrh r0, [r2]
	muls r0, r1, r0
	adds r0, r0, r7
	ldr r0, [r0]
	adds r0, r0, r4
	strb r6, [r0]
	adds r4, #1
	ldrh r0, [r2]
	muls r0, r1, r0
	add r0, ip
	adds r0, #0x24
	ldrb r0, [r0]
	cmp r4, r0
	blt _08039440
_0803945C:
	movs r4, #0
	ldrh r1, [r3]
	movs r0, #0xc4
	muls r0, r1, r0
	adds r0, r0, r5
	adds r0, #0x25
	ldrb r0, [r0]
	cmp r4, r0
	bge _08039494
	adds r2, r5, #0
	movs r1, #0xc4
	adds r6, r2, #0
	adds r6, #0x88
	movs r5, #0
_08039478:
	ldrh r0, [r3]
	muls r0, r1, r0
	adds r0, r0, r6
	ldr r0, [r0]
	adds r0, r0, r4
	strb r5, [r0]
	adds r4, #1
	ldrh r0, [r3]
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x25
	ldrb r0, [r0]
	cmp r4, r0
	blt _08039478
_08039494:
	movs r0, #0
	mov r1, r8
	strb r0, [r1]
	movs r0, #0x61
	bl sub_8029C30
_080394A0:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080394AC: .4byte 0x0203E961
_080394B0: .4byte 0x0203E976
_080394B4: .4byte 0x0203E440
_080394B8: .4byte gLoadedRoomLevel
_080394BC: .4byte 0x0203E975

	.thumb
sub_80394C0: @ 0x080394C0
	push {r4, r5, lr}
	movs r5, #1
	movs r4, #0
	ldr r2, _08039628
	ldr r3, _0803962C
	ldrh r1, [r3]
	movs r0, #0xc4
	muls r1, r0, r1
	adds r0, r1, r2
	adds r0, #0x22
	ldrb r0, [r0]
	cmp r4, r0
	bge _0803950E
	adds r0, r2, #0
	adds r0, #0x7c
	adds r0, r1, r0
	ldr r0, [r0]
	ldrb r0, [r0]
	cmp r0, #0
	bne _080394EA
	b _08039648
_080394EA:
	adds r4, #1
	ldrh r1, [r3]
	movs r0, #0xc4
	muls r1, r0, r1
	adds r0, r1, r2
	adds r0, #0x22
	ldrb r0, [r0]
	cmp r4, r0
	bge _0803950E
	adds r0, r2, #0
	adds r0, #0x7c
	adds r0, r1, r0
	ldr r0, [r0]
	adds r0, r0, r4
	ldrb r0, [r0]
	cmp r0, #0
	bne _080394EA
	movs r5, #0
_0803950E:
	cmp r5, #0
	bne _08039514
	b _08039648
_08039514:
	movs r5, #1
	movs r4, #0
	ldrh r1, [r3]
	movs r0, #0xc4
	muls r1, r0, r1
	adds r0, r1, r2
	adds r0, #0x23
	ldrb r0, [r0]
	cmp r4, r0
	bge _0803955C
	adds r0, r2, #0
	adds r0, #0x80
	adds r0, r1, r0
	ldr r0, [r0]
	ldrb r0, [r0]
	cmp r0, #0
	bne _08039538
	b _08039648
_08039538:
	adds r4, #1
	ldrh r1, [r3]
	movs r0, #0xc4
	muls r1, r0, r1
	adds r0, r1, r2
	adds r0, #0x23
	ldrb r0, [r0]
	cmp r4, r0
	bge _0803955C
	adds r0, r2, #0
	adds r0, #0x80
	adds r0, r1, r0
	ldr r0, [r0]
	adds r0, r0, r4
	ldrb r0, [r0]
	cmp r0, #0
	bne _08039538
	movs r5, #0
_0803955C:
	cmp r5, #0
	beq _08039648
	movs r5, #1
	movs r4, #0
	ldrh r1, [r3]
	movs r0, #0xc4
	muls r1, r0, r1
	adds r0, r1, r2
	adds r0, #0x24
	ldrb r0, [r0]
	cmp r4, r0
	bge _080395A6
	adds r0, r2, #0
	adds r0, #0x84
	adds r0, r1, r0
	ldr r0, [r0]
	ldrb r0, [r0]
	cmp r0, #0
	beq _08039648
_08039582:
	adds r4, #1
	ldrh r1, [r3]
	movs r0, #0xc4
	muls r1, r0, r1
	adds r0, r1, r2
	adds r0, #0x24
	ldrb r0, [r0]
	cmp r4, r0
	bge _080395A6
	adds r0, r2, #0
	adds r0, #0x84
	adds r0, r1, r0
	ldr r0, [r0]
	adds r0, r0, r4
	ldrb r0, [r0]
	cmp r0, #0
	bne _08039582
	movs r5, #0
_080395A6:
	cmp r5, #0
	beq _08039648
	movs r5, #1
	movs r4, #0
	ldrh r1, [r3]
	movs r0, #0xc4
	muls r1, r0, r1
	adds r0, r1, r2
	adds r0, #0x25
	ldrb r0, [r0]
	cmp r4, r0
	bge _080395F0
	adds r0, r2, #0
	adds r0, #0x88
	adds r0, r1, r0
	ldr r0, [r0]
	ldrb r0, [r0]
	cmp r0, #0
	beq _08039648
_080395CC:
	adds r4, #1
	ldrh r1, [r3]
	movs r0, #0xc4
	muls r1, r0, r1
	adds r0, r1, r2
	adds r0, #0x25
	ldrb r0, [r0]
	cmp r4, r0
	bge _080395F0
	adds r0, r2, #0
	adds r0, #0x88
	adds r0, r1, r0
	ldr r0, [r0]
	adds r0, r0, r4
	ldrb r0, [r0]
	cmp r0, #0
	bne _080395CC
	movs r5, #0
_080395F0:
	cmp r5, #0
	beq _08039648
	bl timer_stop
	ldr r1, _08039630
	movs r0, #1
	strb r0, [r1]
	ldr r0, _08039634
	movs r1, #0
	strb r1, [r0]
	ldr r0, _08039638
	strb r1, [r0]
	ldr r0, _0803963C
	strb r1, [r0]
	ldr r0, _08039640
	strb r1, [r0]
	movs r0, #0x63
	bl start_script
	ldr r0, _08039644
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_8034460
	movs r0, #1
	b _0803964A
	.align 2, 0
_08039628: .4byte 0x0203E440
_0803962C: .4byte gLoadedRoomLevel
_08039630: .4byte 0x0203E976
_08039634: .4byte 0x0203E977
_08039638: .4byte 0x0203E978
_0803963C: .4byte 0x0203E979
_08039640: .4byte 0x0203E97A
_08039644: .4byte 0x0000010F
_08039648:
	movs r0, #0
_0803964A:
	pop {r4, r5}
	pop {r1}
	bx r1

    .thumb
    .global sub_8039650
sub_8039650: @ 0x08039650
	ldr r2, _08039668
	ldr r0, _0803966C
	ldrh r1, [r0]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r2
	ldrb r0, [r0, #0xe]
	ldr r1, _08039670
	ldrb r1, [r1]
	subs r0, r0, r1
	bx lr
	.align 2, 0
_08039668: .4byte 0x0203E170
_0803966C: .4byte gLoadedRoomLevel
_08039670: .4byte 0x0203E97D
	.2byte 0xEE00, 0xEE00

	.thumb
sub_8039678: @ 0x08039678
	movs r0, #1
	bx lr
	.2byte 0xEE00, 0xEE00

	.thumb
sub_8039680: @ 0x08039680
	movs r0, #1
	bx lr

	.thumb
sub_8039684: @ 0x08039684
	movs r0, #1
	bx lr

	.thumb
sub_8039688: @ 0x08039688
	ldr r2, _0803969C
	ldr r0, _080396A0
	ldrh r1, [r0]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r2
	adds r0, #0x75
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803969C: .4byte 0x0203E170
_080396A0: .4byte gLoadedRoomLevel

	.thumb
sub_80396A4: @ 0x080396A4
	push {lr}
	ldr r2, [r0, #4]
	cmp r2, #0
	bge _080396B0
	movs r0, #1
	b _080396CC
_080396B0:
	ldr r1, [r0, #8]
	adds r0, r2, #0
	bl sub_0802C350
	adds r1, r0, #0
	cmp r1, #0
	beq _080396CA
	ldrh r0, [r1, #2]
	movs r2, #6
	ldrsh r1, [r1, r2]
	bl is_obj_disabled
	b _080396CC
_080396CA:
	movs r0, #0
_080396CC:
	pop {r1}
	bx r1

	.thumb
sub_80396D0: @ 0x080396D0
	push {lr}
	ldr r2, [r0, #4]
	cmp r2, #0
	bge _080396DC
	movs r0, #1
	b _080396F8
_080396DC:
	ldr r1, [r0, #8]
	adds r0, r2, #0
	bl sub_0802C350
	adds r1, r0, #0
	cmp r1, #0
	beq _080396F6
	ldrh r0, [r1, #2]
	movs r2, #6
	ldrsh r1, [r1, r2]
	bl is_obj_disabled
	b _080396F8
_080396F6:
	movs r0, #0
_080396F8:
	pop {r1}
	bx r1

	.thumb
sub_80396FC: @ 0x080396FC
	push {lr}
	ldr r2, [r0, #4]
	cmp r2, #0
	bge _08039708
	movs r0, #1
	b _08039724
_08039708:
	ldr r1, [r0, #8]
	adds r0, r2, #0
	bl sub_0802C350
	adds r1, r0, #0
	cmp r1, #0
	beq _08039722
	ldrh r0, [r1, #2]
	movs r2, #6
	ldrsh r1, [r1, r2]
	bl is_obj_disabled
	b _08039724
_08039722:
	movs r0, #0
_08039724:
	pop {r1}
	bx r1

	.thumb
sub_8039728: @ 0x08039728
	push {lr}
	ldr r2, [r0, #4]
	cmp r2, #0
	bge _08039734
	movs r0, #1
	b _08039750
_08039734:
	ldr r1, [r0, #8]
	adds r0, r2, #0
	bl sub_0802C350
	adds r1, r0, #0
	cmp r1, #0
	beq _0803974E
	ldrh r0, [r1, #2]
	movs r2, #6
	ldrsh r1, [r1, r2]
	bl is_obj_disabled
	b _08039750
_0803974E:
	movs r0, #0
_08039750:
	pop {r1}
	bx r1

	.thumb
sub_8039754: @ 0x08039754
	push {r4, lr}
	movs r2, #0
	ldr r4, _08039784
	ldr r0, _08039788
	ldrh r1, [r0]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r1, r0, #3
	adds r0, r1, r4
	ldrb r3, [r0, #8]
	cmp r2, r3
	bge _08039792
	adds r0, r4, #0
	adds r0, #0x3c
	adds r0, r1, r0
	ldr r4, [r0]
	adds r1, r3, #0
_08039776:
	adds r0, r4, r2
	ldrb r0, [r0]
	cmp r0, #0
	bne _0803978C
	movs r0, #0
	b _08039794
	.align 2, 0
_08039784: .4byte 0x0203E170
_08039788: .4byte gLoadedRoomLevel
_0803978C:
	adds r2, #1
	cmp r2, r1
	blt _08039776
_08039792:
	movs r0, #1
_08039794:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	.thumb
sub_803979C: @ 0x0803979C
	push {r4, lr}
	movs r2, #0
	ldr r4, _080397CC
	ldr r0, _080397D0
	ldrh r1, [r0]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r1, r0, #3
	adds r0, r1, r4
	ldrb r3, [r0, #9]
	cmp r2, r3
	bge _080397DA
	adds r0, r4, #0
	adds r0, #0x40
	adds r0, r1, r0
	ldr r4, [r0]
	adds r1, r3, #0
_080397BE:
	adds r0, r4, r2
	ldrb r0, [r0]
	cmp r0, #0
	bne _080397D4
	movs r0, #0
	b _080397DC
	.align 2, 0
_080397CC: .4byte 0x0203E170
_080397D0: .4byte gLoadedRoomLevel
_080397D4:
	adds r2, #1
	cmp r2, r1
	blt _080397BE
_080397DA:
	movs r0, #1
_080397DC:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	.thumb
sub_80397E4: @ 0x080397E4
	push {r4, lr}
	movs r2, #0
	ldr r4, _08039810
	ldr r0, _08039814
	ldrh r1, [r0]
	movs r0, #0xc4
	muls r1, r0, r1
	adds r0, r1, r4
	ldrb r3, [r0, #3]
	cmp r2, r3
	bge _0803981E
	adds r0, r4, #0
	adds r0, #0x34
	adds r0, r1, r0
	ldr r1, [r0]
_08039802:
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #0
	bne _08039818
	movs r0, #0
	b _08039820
	.align 2, 0
_08039810: .4byte 0x0203E440
_08039814: .4byte gLoadedRoomLevel
_08039818:
	adds r2, #1
	cmp r2, r3
	blt _08039802
_0803981E:
	movs r0, #1
_08039820:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	.thumb
sub_8039828: @ 0x08039828
	ldr r0, _08039830
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_08039830: .4byte 0x0203E938

	.thumb
sub_8039834: @ 0x08039834
	ldr r0, _0803983C
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803983C: .4byte 0x0203E939

	.thumb
sub_8039840: @ 0x08039840
	push {lr}
	ldr r0, [r0, #0xc]
	cmp r0, #6
	bhi _080398CC
	lsls r0, r0, #2
	ldr r1, _08039854
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08039854: .4byte 0x08039858
_08039858: @ jump table
	.4byte _08039874 @ case 0
	.4byte _08039880 @ case 1
	.4byte _0803988C @ case 2
	.4byte _08039898 @ case 3
	.4byte _080398A4 @ case 4
	.4byte _080398B0 @ case 5
	.4byte _080398BC @ case 6
_08039874:
	ldr r0, _0803987C
	ldrb r1, [r0]
	b _080398C2
	.align 2, 0
_0803987C: .4byte 0x0203E93A
_08039880:
	ldr r0, _08039888
	ldrb r1, [r0]
	lsrs r1, r1, #1
	b _080398C2
	.align 2, 0
_08039888: .4byte 0x0203E93A
_0803988C:
	ldr r0, _08039894
	ldrb r1, [r0]
	lsrs r1, r1, #2
	b _080398C2
	.align 2, 0
_08039894: .4byte 0x0203E93A
_08039898:
	ldr r0, _080398A0
	ldrb r1, [r0]
	lsrs r1, r1, #3
	b _080398C2
	.align 2, 0
_080398A0: .4byte 0x0203E93A
_080398A4:
	ldr r0, _080398AC
	ldrb r1, [r0]
	lsrs r1, r1, #4
	b _080398C2
	.align 2, 0
_080398AC: .4byte 0x0203E93A
_080398B0:
	ldr r0, _080398B8
	ldrb r1, [r0]
	lsrs r1, r1, #5
	b _080398C2
	.align 2, 0
_080398B8: .4byte 0x0203E93A
_080398BC:
	ldr r0, _080398C8
	ldrb r1, [r0]
	lsrs r1, r1, #6
_080398C2:
	movs r0, #1
	bics r0, r1
	b _080398CE
	.align 2, 0
_080398C8: .4byte 0x0203E93A
_080398CC:
	movs r0, #1
_080398CE:
	pop {r1}
	bx r1
	.align 2, 0

	.thumb
sub_80398D4: @ 0x080398D4
	ldr r0, _080398DC
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_080398DC: .4byte 0x0203E940

	.thumb
sub_80398E0: @ 0x080398E0
	push {lr}
	ldr r0, _080398F0
	ldrh r0, [r0]
	cmp r0, #3
	bne _080398F8
	ldr r0, _080398F4
	b _08039902
	.align 2, 0
_080398F0: .4byte gLoadedRoomLevel
_080398F4: .4byte 0x0203E972
_080398F8:
	cmp r0, #5
	beq _08039900
	movs r0, #0
	b _08039904
_08039900:
	ldr r0, _08039908
_08039902:
	ldrb r0, [r0]
_08039904:
	pop {r1}
	bx r1
	.align 2, 0
_08039908: .4byte 0x0203E973

	.thumb
sub_803990C: @ 0x0803990C
	push {r4, lr}
	movs r2, #0
	ldr r4, _08039938
	ldr r0, _0803993C
	ldrh r1, [r0]
	movs r0, #0xc4
	muls r1, r0, r1
	adds r0, r1, r4
	ldrb r3, [r0, #5]
	cmp r2, r3
	bge _08039946
	adds r0, r4, #0
	adds r0, #0x3c
	adds r0, r1, r0
	ldr r1, [r0]
_0803992A:
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #0
	bne _08039940
	movs r0, #0
	b _08039948
	.align 2, 0
_08039938: .4byte 0x0203E440
_0803993C: .4byte gLoadedRoomLevel
_08039940:
	adds r2, #1
	cmp r2, r3
	blt _0803992A
_08039946:
	movs r0, #1
_08039948:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	.thumb
sub_8039950: @ 0x08039950
	push {r4, lr}
	movs r2, #0
	ldr r4, _0803997C
	ldr r0, _08039980
	ldrh r1, [r0]
	movs r0, #0xc4
	muls r1, r0, r1
	adds r0, r1, r4
	ldrb r3, [r0, #7]
	cmp r2, r3
	bge _0803998A
	adds r0, r4, #0
	adds r0, #0x44
	adds r0, r1, r0
	ldr r1, [r0]
_0803996E:
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #0
	bne _08039984
	movs r0, #0
	b _0803998C
	.align 2, 0
_0803997C: .4byte 0x0203E440
_08039980: .4byte gLoadedRoomLevel
_08039984:
	adds r2, #1
	cmp r2, r3
	blt _0803996E
_0803998A:
	movs r0, #1
_0803998C:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	.thumb
sub_8039994: @ 0x08039994
	push {r4, lr}
	movs r2, #0
	ldr r4, _080399C0
	ldr r0, _080399C4
	ldrh r1, [r0]
	movs r0, #0xc4
	muls r1, r0, r1
	adds r0, r1, r4
	ldrb r3, [r0, #8]
	cmp r2, r3
	bge _080399CE
	adds r0, r4, #0
	adds r0, #0x48
	adds r0, r1, r0
	ldr r1, [r0]
_080399B2:
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #0
	bne _080399C8
	movs r0, #0
	b _080399D0
	.align 2, 0
_080399C0: .4byte 0x0203E440
_080399C4: .4byte gLoadedRoomLevel
_080399C8:
	adds r2, #1
	cmp r2, r3
	blt _080399B2
_080399CE:
	movs r0, #1
_080399D0:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	.thumb
sub_80399D8: @ 0x080399D8
	push {r4, lr}
	movs r2, #0
	ldr r4, _08039A04
	ldr r0, _08039A08
	ldrh r1, [r0]
	movs r0, #0xc4
	muls r1, r0, r1
	adds r0, r1, r4
	ldrb r3, [r0, #9]
	cmp r2, r3
	bge _08039A12
	adds r0, r4, #0
	adds r0, #0x4c
	adds r0, r1, r0
	ldr r1, [r0]
_080399F6:
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #0
	bne _08039A0C
	movs r0, #0
	b _08039A14
	.align 2, 0
_08039A04: .4byte 0x0203E440
_08039A08: .4byte gLoadedRoomLevel
_08039A0C:
	adds r2, #1
	cmp r2, r3
	blt _080399F6
_08039A12:
	movs r0, #1
_08039A14:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	.thumb
sub_8039A1C: @ 0x08039A1C
	push {r4, lr}
	movs r2, #0
	ldr r4, _08039A48
	ldr r0, _08039A4C
	ldrh r1, [r0]
	movs r0, #0xc4
	muls r1, r0, r1
	adds r0, r1, r4
	ldrb r3, [r0, #0xa]
	cmp r2, r3
	bge _08039A56
	adds r0, r4, #0
	adds r0, #0x50
	adds r0, r1, r0
	ldr r1, [r0]
_08039A3A:
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #0
	bne _08039A50
	movs r0, #0
	b _08039A58
	.align 2, 0
_08039A48: .4byte 0x0203E440
_08039A4C: .4byte gLoadedRoomLevel
_08039A50:
	adds r2, #1
	cmp r2, r3
	blt _08039A3A
_08039A56:
	movs r0, #1
_08039A58:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	.thumb
sub_8039A60: @ 0x08039A60
	push {r4, lr}
	movs r2, #0
	ldr r4, _08039A8C
	ldr r0, _08039A90
	ldrh r1, [r0]
	movs r0, #0xc4
	muls r1, r0, r1
	adds r0, r1, r4
	ldrb r3, [r0, #0xb]
	cmp r2, r3
	bge _08039A9A
	adds r0, r4, #0
	adds r0, #0x54
	adds r0, r1, r0
	ldr r1, [r0]
_08039A7E:
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #0
	bne _08039A94
	movs r0, #0
	b _08039A9C
	.align 2, 0
_08039A8C: .4byte 0x0203E440
_08039A90: .4byte gLoadedRoomLevel
_08039A94:
	adds r2, #1
	cmp r2, r3
	blt _08039A7E
_08039A9A:
	movs r0, #1
_08039A9C:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	.thumb
sub_8039AA4: @ 0x08039AA4
	ldr r0, _08039AAC
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_08039AAC: .4byte 0x0203E95B

	.thumb
sub_8039AB0: @ 0x08039AB0
	push {r4, lr}
	movs r2, #0
	ldr r4, _08039AE0
	ldr r0, _08039AE4
	ldrh r1, [r0]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r1, r0, #3
	adds r0, r1, r4
	ldrb r3, [r0, #0x10]
	cmp r2, r3
	bge _08039AEE
	adds r0, r4, #0
	adds r0, #0x5c
	adds r0, r1, r0
	ldr r4, [r0]
	adds r1, r3, #0
_08039AD2:
	adds r0, r4, r2
	ldrb r0, [r0]
	cmp r0, #0
	bne _08039AE8
	movs r0, #0
	b _08039AF0
	.align 2, 0
_08039AE0: .4byte 0x0203E170
_08039AE4: .4byte gLoadedRoomLevel
_08039AE8:
	adds r2, #1
	cmp r2, r1
	blt _08039AD2
_08039AEE:
	movs r0, #1
_08039AF0:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	.thumb
sub_8039AF8: @ 0x08039AF8
	ldr r0, _08039B00
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_08039B00: .4byte 0x0203E94E

	.thumb
sub_8039B04: @ 0x08039B04
	push {lr}
	movs r1, #0
	ldr r0, _08039B18
	ldrb r0, [r0]
	cmp r0, #0
	bne _08039B12
	movs r1, #1
_08039B12:
	adds r0, r1, #0
	pop {r1}
	bx r1
	.align 2, 0
_08039B18: .4byte 0x0203E94E

	.thumb
sub_8039B1C: @ 0x08039B1C
	push {r4, lr}
	movs r2, #0
	ldr r4, _08039B48
	ldr r0, _08039B4C
	ldrh r1, [r0]
	movs r0, #0xc4
	muls r1, r0, r1
	adds r0, r1, r4
	ldrb r3, [r0, #0xe]
	cmp r2, r3
	bge _08039B56
	adds r0, r4, #0
	adds r0, #0x60
	adds r0, r1, r0
	ldr r1, [r0]
_08039B3A:
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #0
	bne _08039B50
	movs r0, #0
	b _08039B58
	.align 2, 0
_08039B48: .4byte 0x0203E440
_08039B4C: .4byte gLoadedRoomLevel
_08039B50:
	adds r2, #1
	cmp r2, r3
	blt _08039B3A
_08039B56:
	movs r0, #1
_08039B58:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	.thumb
sub_8039B60: @ 0x08039B60
	push {r4, lr}
	movs r1, #0
	ldr r4, _08039B8C
	ldr r0, _08039B90
	ldrh r0, [r0]
	lsls r2, r0, #4
	adds r0, r2, r4
	ldrb r3, [r0, #2]
	cmp r1, r3
	bge _08039B9A
	adds r0, r4, #0
	adds r0, #0xc
	adds r0, r2, r0
	ldr r4, [r0]
	adds r2, r3, #0
_08039B7E:
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _08039B94
	movs r0, #1
	b _08039B9C
	.align 2, 0
_08039B8C: .4byte 0x0203E8D8
_08039B90: .4byte gLoadedRoomLevel
_08039B94:
	adds r1, #1
	cmp r1, r2
	blt _08039B7E
_08039B9A:
	movs r0, #0
_08039B9C:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	.thumb
sub_8039BA4: @ 0x08039BA4
	ldr r0, _08039BAC
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_08039BAC: .4byte 0x0203E94B

	.thumb
sub_8039BB0: @ 0x08039BB0
	push {r4, lr}
	movs r2, #0
	ldr r4, _08039BDC
	ldr r0, _08039BE0
	ldrh r1, [r0]
	movs r0, #0xc4
	muls r1, r0, r1
	adds r0, r1, r4
	ldrb r3, [r0, #0xf]
	cmp r2, r3
	bge _08039BEA
	adds r0, r4, #0
	adds r0, #0x64
	adds r0, r1, r0
	ldr r1, [r0]
_08039BCE:
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #0
	bne _08039BE4
	movs r0, #0
	b _08039BEC
	.align 2, 0
_08039BDC: .4byte 0x0203E440
_08039BE0: .4byte gLoadedRoomLevel
_08039BE4:
	adds r2, #1
	cmp r2, r3
	blt _08039BCE
_08039BEA:
	movs r0, #1
_08039BEC:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	.thumb
sub_8039BF4: @ 0x08039BF4
	push {r4, lr}
	movs r2, #0
	ldr r4, _08039C20
	ldr r0, _08039C24
	ldrh r1, [r0]
	movs r0, #0xc4
	muls r1, r0, r1
	adds r0, r1, r4
	ldrb r3, [r0, #0x11]
	cmp r2, r3
	bge _08039C2E
	adds r0, r4, #0
	adds r0, #0x6c
	adds r0, r1, r0
	ldr r1, [r0]
_08039C12:
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #0
	bne _08039C28
	movs r0, #0
	b _08039C30
	.align 2, 0
_08039C20: .4byte 0x0203E440
_08039C24: .4byte gLoadedRoomLevel
_08039C28:
	adds r2, #1
	cmp r2, r3
	blt _08039C12
_08039C2E:
	movs r0, #1
_08039C30:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	.thumb
sub_8039C38: @ 0x08039C38
	ldr r0, _08039C40
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_08039C40: .4byte 0x0203E94D

	.thumb
sub_8039C44: @ 0x08039C44
	ldr r0, _08039C4C
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_08039C4C: .4byte 0x0203E955

	.thumb
sub_8039C50: @ 0x08039C50
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r5, #0
	ldrh r0, [r4, #2]
	ldrb r1, [r4, #0x12]
	bl sub_803340C
	cmp r0, #0
	beq _08039C7C
	ldr r0, _08039C84
	movs r1, #0
	ldrsh r0, [r0, r1]
	ldrh r2, [r4, #0x10]
	cmp r0, r2
	beq _08039C7C
	ldr r0, _08039C88
	movs r3, #0
	ldrsh r1, [r0, r3]
	eors r1, r2
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r5, r0, #0x1f
_08039C7C:
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08039C84: .4byte gPriorityScriptIdx
_08039C88: .4byte gBackgroundScriptIdx

	.thumb
sub_8039C8C: @ 0x08039C8C
	push {lr}
	ldrh r2, [r0, #2]
	ldrb r1, [r0, #0x12]
	adds r0, r2, #0
	bl sub_803340C
	movs r1, #0
	cmp r0, #0
	bne _08039CA0
	movs r1, #1
_08039CA0:
	adds r0, r1, #0
	pop {r1}
	bx r1
	.align 2, 0

	.thumb
sub_8039CA8: @ 0x08039CA8
	push {r4, r5, lr}
	movs r0, #0
	movs r1, #0
	bl sub_803352C
	adds r4, r0, #0
	movs r5, #0
	movs r0, #0
	movs r1, #0
	bl sub_803340C
	cmp r0, #0
	beq _08039CDA
	ldr r0, _08039CE4
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, r4
	beq _08039CDA
	ldr r0, _08039CE8
	movs r2, #0
	ldrsh r1, [r0, r2]
	eors r1, r4
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r5, r0, #0x1f
_08039CDA:
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08039CE4: .4byte gPriorityScriptIdx
_08039CE8: .4byte gBackgroundScriptIdx

	.thumb
sub_8039CEC: @ 0x08039CEC
	push {lr}
	movs r0, #0
	movs r1, #0
	bl sub_803340C
	movs r1, #0
	cmp r0, #0
	bne _08039CFE
	movs r1, #1
_08039CFE:
	adds r0, r1, #0
	pop {r1}
	bx r1

	.thumb
sub_8039D04: @ 0x08039D04
	push {r4, r5, lr}
	movs r0, #1
	movs r1, #0
	bl sub_803352C
	adds r4, r0, #0
	movs r5, #0
	movs r0, #1
	movs r1, #0
	bl sub_803340C
	cmp r0, #0
	beq _08039D36
	ldr r0, _08039D40
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, r4
	beq _08039D36
	ldr r0, _08039D44
	movs r2, #0
	ldrsh r1, [r0, r2]
	eors r1, r4
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r5, r0, #0x1f
_08039D36:
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08039D40: .4byte gPriorityScriptIdx
_08039D44: .4byte gBackgroundScriptIdx

	.thumb
sub_8039D48: @ 0x08039D48
	push {lr}
	movs r0, #1
	movs r1, #0
	bl sub_803340C
	movs r1, #0
	cmp r0, #0
	bne _08039D5A
	movs r1, #1
_08039D5A:
	adds r0, r1, #0
	pop {r1}
	bx r1

	.thumb
sub_8039D60: @ 0x08039D60
	push {r4, r5, lr}
	movs r0, #0
	movs r1, #0
	bl sub_803352C
	adds r4, r0, #0
	movs r5, #0
	movs r0, #1
	movs r1, #0
	bl sub_803340C
	cmp r0, #0
	bne _08039D9E
	movs r0, #0
	movs r1, #0
	bl sub_803340C
	cmp r0, #0
	beq _08039D9E
	ldr r0, _08039DA8
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, r4
	beq _08039D9E
	ldr r0, _08039DAC
	movs r2, #0
	ldrsh r1, [r0, r2]
	eors r1, r4
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r5, r0, #0x1f
_08039D9E:
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08039DA8: .4byte gPriorityScriptIdx
_08039DAC: .4byte gBackgroundScriptIdx

	.thumb
sub_8039DB0: @ 0x08039DB0
	push {r4, r5, lr}
	movs r0, #1
	movs r1, #0
	bl sub_803352C
	adds r4, r0, #0
	movs r5, #0
	movs r0, #1
	movs r1, #0
	bl sub_803340C
	cmp r0, #0
	beq _08039DEE
	movs r0, #0
	movs r1, #0
	bl sub_803340C
	cmp r0, #0
	beq _08039DEE
	ldr r0, _08039DF8
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, r4
	beq _08039DEE
	ldr r0, _08039DFC
	movs r2, #0
	ldrsh r1, [r0, r2]
	eors r1, r4
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r5, r0, #0x1f
_08039DEE:
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08039DF8: .4byte gPriorityScriptIdx
_08039DFC: .4byte gBackgroundScriptIdx

	.thumb
sub_8039E00: @ 0x08039E00
	push {r4, r5, lr}
	movs r0, #2
	movs r1, #0
	bl sub_803352C
	adds r4, r0, #0
	movs r5, #0
	movs r0, #2
	movs r1, #0
	bl sub_803340C
	cmp r0, #0
	beq _08039E32
	ldr r0, _08039E3C
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, r4
	beq _08039E32
	ldr r0, _08039E40
	movs r2, #0
	ldrsh r1, [r0, r2]
	eors r1, r4
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r5, r0, #0x1f
_08039E32:
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08039E3C: .4byte gPriorityScriptIdx
_08039E40: .4byte gBackgroundScriptIdx

	.thumb
sub_8039E44: @ 0x08039E44
	push {lr}
	movs r0, #2
	movs r1, #0
	bl sub_803340C
	movs r1, #0
	cmp r0, #0
	bne _08039E56
	movs r1, #1
_08039E56:
	adds r0, r1, #0
	pop {r1}
	bx r1

	.thumb
sub_8039E5C: @ 0x08039E5C
	push {r4, r5, lr}
	movs r0, #1
	movs r1, #0
	bl sub_803352C
	adds r4, r0, #0
	movs r5, #0
	movs r0, #2
	movs r1, #0
	bl sub_803340C
	cmp r0, #0
	bne _08039EA6
	movs r0, #1
	movs r1, #0
	bl sub_803340C
	cmp r0, #0
	beq _08039EA6
	movs r0, #0
	movs r1, #0
	bl sub_803340C
	cmp r0, #0
	beq _08039EA6
	ldr r0, _08039EB0
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, r4
	beq _08039EA6
	ldr r0, _08039EB4
	movs r2, #0
	ldrsh r1, [r0, r2]
	eors r1, r4
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r5, r0, #0x1f
_08039EA6:
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08039EB0: .4byte gPriorityScriptIdx
_08039EB4: .4byte gBackgroundScriptIdx

	.thumb
sub_8039EB8: @ 0x08039EB8
	push {r4, r5, lr}
	movs r0, #2
	movs r1, #0
	bl sub_803352C
	adds r4, r0, #0
	movs r5, #0
	movs r0, #2
	movs r1, #0
	bl sub_803340C
	cmp r0, #0
	beq _08039F02
	movs r0, #1
	movs r1, #0
	bl sub_803340C
	cmp r0, #0
	beq _08039F02
	movs r0, #0
	movs r1, #0
	bl sub_803340C
	cmp r0, #0
	beq _08039F02
	ldr r0, _08039F0C
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, r4
	beq _08039F02
	ldr r0, _08039F10
	movs r2, #0
	ldrsh r1, [r0, r2]
	eors r1, r4
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r5, r0, #0x1f
_08039F02:
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08039F0C: .4byte gPriorityScriptIdx
_08039F10: .4byte gBackgroundScriptIdx

	.thumb
sub_8039F14: @ 0x08039F14
	push {r4, r5, lr}
	movs r0, #3
	movs r1, #0
	bl sub_803352C
	adds r4, r0, #0
	movs r5, #0
	movs r0, #3
	movs r1, #0
	bl sub_803340C
	cmp r0, #0
	beq _08039F46
	ldr r0, _08039F50
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, r4
	beq _08039F46
	ldr r0, _08039F54
	movs r2, #0
	ldrsh r1, [r0, r2]
	eors r1, r4
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r5, r0, #0x1f
_08039F46:
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08039F50: .4byte gPriorityScriptIdx
_08039F54: .4byte gBackgroundScriptIdx

	.thumb
sub_8039F58: @ 0x08039F58
	push {lr}
	movs r0, #3
	movs r1, #0
	bl sub_803340C
	movs r1, #0
	cmp r0, #0
	bne _08039F6A
	movs r1, #1
_08039F6A:
	adds r0, r1, #0
	pop {r1}
	bx r1

	.thumb
sub_8039F70: @ 0x08039F70
	push {r4, r5, lr}
	movs r0, #2
	movs r1, #0
	bl sub_803352C
	adds r4, r0, #0
	movs r5, #0
	movs r0, #3
	movs r1, #0
	bl sub_803340C
	cmp r0, #0
	bne _08039FC6
	movs r0, #2
	movs r1, #0
	bl sub_803340C
	cmp r0, #0
	beq _08039FC6
	movs r0, #1
	movs r1, #0
	bl sub_803340C
	cmp r0, #0
	beq _08039FC6
	movs r0, #0
	movs r1, #0
	bl sub_803340C
	cmp r0, #0
	beq _08039FC6
	ldr r0, _08039FD0
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, r4
	beq _08039FC6
	ldr r0, _08039FD4
	movs r2, #0
	ldrsh r1, [r0, r2]
	eors r1, r4
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r5, r0, #0x1f
_08039FC6:
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08039FD0: .4byte gPriorityScriptIdx
_08039FD4: .4byte gBackgroundScriptIdx

	.thumb
sub_8039FD8: @ 0x08039FD8
	push {r4, r5, lr}
	movs r0, #3
	movs r1, #0
	bl sub_803352C
	adds r4, r0, #0
	movs r5, #0
	movs r0, #3
	movs r1, #0
	bl sub_803340C
	cmp r0, #0
	beq _0803A02E
	movs r0, #2
	movs r1, #0
	bl sub_803340C
	cmp r0, #0
	beq _0803A02E
	movs r0, #1
	movs r1, #0
	bl sub_803340C
	cmp r0, #0
	beq _0803A02E
	movs r0, #0
	movs r1, #0
	bl sub_803340C
	cmp r0, #0
	beq _0803A02E
	ldr r0, _0803A038
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, r4
	beq _0803A02E
	ldr r0, _0803A03C
	movs r2, #0
	ldrsh r1, [r0, r2]
	eors r1, r4
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r5, r0, #0x1f
_0803A02E:
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0803A038: .4byte gPriorityScriptIdx
_0803A03C: .4byte gBackgroundScriptIdx

	.thumb
sub_803A040: @ 0x0803A040
	push {r4, r5, lr}
	movs r0, #4
	movs r1, #0
	bl sub_803352C
	adds r4, r0, #0
	movs r5, #0
	movs r0, #4
	movs r1, #0
	bl sub_803340C
	cmp r0, #0
	beq _0803A072
	ldr r0, _0803A07C
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, r4
	beq _0803A072
	ldr r0, _0803A080
	movs r2, #0
	ldrsh r1, [r0, r2]
	eors r1, r4
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r5, r0, #0x1f
_0803A072:
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0803A07C: .4byte gPriorityScriptIdx
_0803A080: .4byte gBackgroundScriptIdx

	.thumb
sub_803A084: @ 0x0803A084
	push {lr}
	movs r0, #4
	movs r1, #0
	bl sub_803340C
	movs r1, #0
	cmp r0, #0
	bne _0803A096
	movs r1, #1
_0803A096:
	adds r0, r1, #0
	pop {r1}
	bx r1

	.thumb
sub_803A09C: @ 0x0803A09C
	movs r0, #1
	bx lr

	.thumb
sub_803A0A0: @ 0x0803A0A0
	movs r0, #1
	bx lr

	.thumb
sub_803A0A4: @ 0x0803A0A4
	push {r4, r5, lr}
	movs r0, #5
	movs r1, #0
	bl sub_803352C
	adds r4, r0, #0
	movs r5, #0
	movs r0, #5
	movs r1, #0
	bl sub_803340C
	cmp r0, #0
	beq _0803A0D6
	ldr r0, _0803A0E0
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, r4
	beq _0803A0D6
	ldr r0, _0803A0E4
	movs r2, #0
	ldrsh r1, [r0, r2]
	eors r1, r4
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r5, r0, #0x1f
_0803A0D6:
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0803A0E0: .4byte gPriorityScriptIdx
_0803A0E4: .4byte gBackgroundScriptIdx

	.thumb
sub_803A0E8: @ 0x0803A0E8
	push {lr}
	movs r0, #5
	movs r1, #0
	bl sub_803340C
	movs r1, #0
	cmp r0, #0
	bne _0803A0FA
	movs r1, #1
_0803A0FA:
	adds r0, r1, #0
	pop {r1}
	bx r1

	.thumb
sub_803A100: @ 0x0803A100
	movs r0, #1
	bx lr

	.thumb
sub_803A104: @ 0x0803A104
	movs r0, #1
	bx lr

	.thumb
sub_803A108: @ 0x0803A108
	push {r4, r5, lr}
	movs r0, #4
	movs r1, #0
	bl sub_803352C
	adds r4, r0, #0
	movs r5, #0
	movs r0, #5
	movs r1, #0
	bl sub_803340C
	cmp r0, #0
	bne _0803A146
	movs r0, #4
	movs r1, #0
	bl sub_803340C
	cmp r0, #0
	beq _0803A146
	ldr r0, _0803A150
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, r4
	beq _0803A146
	ldr r0, _0803A154
	movs r2, #0
	ldrsh r1, [r0, r2]
	eors r1, r4
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r5, r0, #0x1f
_0803A146:
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0803A150: .4byte gPriorityScriptIdx
_0803A154: .4byte gBackgroundScriptIdx

	.thumb
sub_803A158: @ 0x0803A158
	push {r4, r5, lr}
	movs r0, #6
	movs r1, #0
	bl sub_803352C
	adds r4, r0, #0
	movs r5, #0
	movs r0, #6
	movs r1, #0
	bl sub_803340C
	cmp r0, #0
	beq _0803A18A
	ldr r0, _0803A194
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, r4
	beq _0803A18A
	ldr r0, _0803A198
	movs r2, #0
	ldrsh r1, [r0, r2]
	eors r1, r4
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r5, r0, #0x1f
_0803A18A:
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0803A194: .4byte gPriorityScriptIdx
_0803A198: .4byte gBackgroundScriptIdx

	.thumb
sub_803A19C: @ 0x0803A19C
	push {lr}
	movs r0, #6
	movs r1, #0
	bl sub_803340C
	movs r1, #0
	cmp r0, #0
	bne _0803A1AE
	movs r1, #1
_0803A1AE:
	adds r0, r1, #0
	pop {r1}
	bx r1

	.thumb
sub_803A1B4: @ 0x0803A1B4
	movs r0, #1
	bx lr

	.thumb
sub_803A1B8: @ 0x0803A1B8
	movs r0, #1
	bx lr

	.thumb
sub_803A1BC: @ 0x0803A1BC
	push {r4, r5, lr}
	movs r0, #5
	movs r1, #0
	bl sub_803352C
	adds r4, r0, #0
	movs r5, #0
	movs r0, #6
	movs r1, #0
	bl sub_803340C
	cmp r0, #0
	bne _0803A1FA
	movs r0, #5
	movs r1, #0
	bl sub_803340C
	cmp r0, #0
	beq _0803A1FA
	ldr r0, _0803A204
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, r4
	beq _0803A1FA
	ldr r0, _0803A208
	movs r2, #0
	ldrsh r1, [r0, r2]
	eors r1, r4
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r5, r0, #0x1f
_0803A1FA:
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0803A204: .4byte gPriorityScriptIdx
_0803A208: .4byte gBackgroundScriptIdx

	.thumb
sub_803A20C: @ 0x0803A20C
	push {r4, r5, lr}
	movs r0, #7
	movs r1, #0
	bl sub_803352C
	adds r4, r0, #0
	movs r5, #0
	movs r0, #7
	movs r1, #0
	bl sub_803340C
	cmp r0, #0
	beq _0803A23E
	ldr r0, _0803A248
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, r4
	beq _0803A23E
	ldr r0, _0803A24C
	movs r2, #0
	ldrsh r1, [r0, r2]
	eors r1, r4
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r5, r0, #0x1f
_0803A23E:
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0803A248: .4byte gPriorityScriptIdx
_0803A24C: .4byte gBackgroundScriptIdx

	.thumb
sub_803A250: @ 0x0803A250
	push {lr}
	movs r0, #7
	movs r1, #0
	bl sub_803340C
	movs r1, #0
	cmp r0, #0
	bne _0803A262
	movs r1, #1
_0803A262:
	adds r0, r1, #0
	pop {r1}
	bx r1

	.thumb
sub_803A268: @ 0x0803A268
	movs r0, #1
	bx lr

	.thumb
sub_803A26C: @ 0x0803A26C
	movs r0, #1
	bx lr

	.thumb
sub_803A270: @ 0x0803A270
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r0, #0
	movs r1, #0
	bl sub_803352C
	adds r4, r0, #0
	movs r6, #0
	movs r0, #0
	movs r1, #0
	bl sub_803340C
	cmp r0, #0
	beq _0803A2AE
	ldr r0, _0803A2B8
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, r4
	beq _0803A2AE
	ldr r0, _0803A2BC
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, r4
	beq _0803A2AE
	ldrb r0, [r5, #0x13]
	movs r1, #0
	bl sub_803340C
	cmp r0, #0
	bne _0803A2AE
	movs r6, #1
_0803A2AE:
	adds r0, r6, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0803A2B8: .4byte gPriorityScriptIdx
_0803A2BC: .4byte gBackgroundScriptIdx

	.thumb
sub_803A2C0: @ 0x0803A2C0
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r0, #0
	movs r1, #0
	bl sub_803352C
	adds r4, r0, #0
	movs r6, #0
	movs r0, #0
	movs r1, #0
	bl sub_803340C
	cmp r0, #0
	beq _0803A308
	ldr r0, _0803A310
	movs r1, #0
	ldrsh r2, [r0, r1]
	ldrh r1, [r5, #0x10]
	cmp r2, r1
	beq _0803A308
	ldr r0, _0803A314
	movs r3, #0
	ldrsh r0, [r0, r3]
	cmp r0, r1
	beq _0803A308
	cmp r2, r4
	beq _0803A308
	cmp r0, r4
	beq _0803A308
	ldrb r0, [r5, #0x13]
	movs r1, #0
	bl sub_803340C
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r6, r1, #0x1f
_0803A308:
	adds r0, r6, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0803A310: .4byte gPriorityScriptIdx
_0803A314: .4byte gBackgroundScriptIdx

	.thumb
sub_803A318: @ 0x0803A318
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r0, #1
	movs r1, #0
	bl sub_803352C
	adds r4, r0, #0
	movs r6, #0
	movs r0, #1
	movs r1, #0
	bl sub_803340C
	cmp r0, #0
	beq _0803A356
	ldr r0, _0803A360
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, r4
	beq _0803A356
	ldr r0, _0803A364
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, r4
	beq _0803A356
	ldrb r0, [r5, #0x13]
	movs r1, #0
	bl sub_803340C
	cmp r0, #0
	bne _0803A356
	movs r6, #1
_0803A356:
	adds r0, r6, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0803A360: .4byte gPriorityScriptIdx
_0803A364: .4byte gBackgroundScriptIdx

	.thumb
sub_803A368: @ 0x0803A368
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r0, #1
	movs r1, #0
	bl sub_803352C
	adds r4, r0, #0
	movs r6, #0
	movs r0, #1
	movs r1, #0
	bl sub_803340C
	cmp r0, #0
	beq _0803A3B0
	ldr r0, _0803A3B8
	movs r1, #0
	ldrsh r2, [r0, r1]
	ldrh r1, [r5, #0x10]
	cmp r2, r1
	beq _0803A3B0
	ldr r0, _0803A3BC
	movs r3, #0
	ldrsh r0, [r0, r3]
	cmp r0, r1
	beq _0803A3B0
	cmp r2, r4
	beq _0803A3B0
	cmp r0, r4
	beq _0803A3B0
	ldrb r0, [r5, #0x13]
	movs r1, #0
	bl sub_803340C
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r6, r1, #0x1f
_0803A3B0:
	adds r0, r6, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0803A3B8: .4byte gPriorityScriptIdx
_0803A3BC: .4byte gBackgroundScriptIdx

	.thumb
sub_803A3C0: @ 0x0803A3C0
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r0, #2
	movs r1, #0
	bl sub_803352C
	adds r4, r0, #0
	movs r6, #0
	movs r0, #2
	movs r1, #0
	bl sub_803340C
	cmp r0, #0
	beq _0803A3FE
	ldr r0, _0803A408
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, r4
	beq _0803A3FE
	ldr r0, _0803A40C
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, r4
	beq _0803A3FE
	ldrb r0, [r5, #0x13]
	movs r1, #0
	bl sub_803340C
	cmp r0, #0
	bne _0803A3FE
	movs r6, #1
_0803A3FE:
	adds r0, r6, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0803A408: .4byte gPriorityScriptIdx
_0803A40C: .4byte gBackgroundScriptIdx

	.thumb
sub_803A410: @ 0x0803A410
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r0, #2
	movs r1, #0
	bl sub_803352C
	adds r4, r0, #0
	movs r6, #0
	movs r0, #2
	movs r1, #0
	bl sub_803340C
	cmp r0, #0
	beq _0803A458
	ldr r0, _0803A460
	movs r1, #0
	ldrsh r2, [r0, r1]
	ldrh r1, [r5, #0x10]
	cmp r2, r1
	beq _0803A458
	ldr r0, _0803A464
	movs r3, #0
	ldrsh r0, [r0, r3]
	cmp r0, r1
	beq _0803A458
	cmp r2, r4
	beq _0803A458
	cmp r0, r4
	beq _0803A458
	ldrb r0, [r5, #0x13]
	movs r1, #0
	bl sub_803340C
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r6, r1, #0x1f
_0803A458:
	adds r0, r6, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0803A460: .4byte gPriorityScriptIdx
_0803A464: .4byte gBackgroundScriptIdx

	.thumb
sub_803A468: @ 0x0803A468
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r0, #3
	movs r1, #0
	bl sub_803352C
	adds r4, r0, #0
	movs r6, #0
	movs r0, #3
	movs r1, #0
	bl sub_803340C
	cmp r0, #0
	beq _0803A4A6
	ldr r0, _0803A4B0
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, r4
	beq _0803A4A6
	ldr r0, _0803A4B4
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, r4
	beq _0803A4A6
	ldrb r0, [r5, #0x13]
	movs r1, #0
	bl sub_803340C
	cmp r0, #0
	bne _0803A4A6
	movs r6, #1
_0803A4A6:
	adds r0, r6, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0803A4B0: .4byte gPriorityScriptIdx
_0803A4B4: .4byte gBackgroundScriptIdx

	.thumb
sub_803A4B8: @ 0x0803A4B8
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r0, #3
	movs r1, #0
	bl sub_803352C
	adds r4, r0, #0
	movs r6, #0
	movs r0, #3
	movs r1, #0
	bl sub_803340C
	cmp r0, #0
	beq _0803A500
	ldr r0, _0803A508
	movs r1, #0
	ldrsh r2, [r0, r1]
	ldrh r1, [r5, #0x10]
	cmp r2, r1
	beq _0803A500
	ldr r0, _0803A50C
	movs r3, #0
	ldrsh r0, [r0, r3]
	cmp r0, r1
	beq _0803A500
	cmp r2, r4
	beq _0803A500
	cmp r0, r4
	beq _0803A500
	ldrb r0, [r5, #0x13]
	movs r1, #0
	bl sub_803340C
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r6, r1, #0x1f
_0803A500:
	adds r0, r6, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0803A508: .4byte gPriorityScriptIdx
_0803A50C: .4byte gBackgroundScriptIdx

	.thumb
sub_803A510: @ 0x0803A510
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r0, #4
	movs r1, #0
	bl sub_803352C
	adds r4, r0, #0
	movs r6, #0
	movs r0, #4
	movs r1, #0
	bl sub_803340C
	cmp r0, #0
	beq _0803A54E
	ldr r0, _0803A558
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, r4
	beq _0803A54E
	ldr r0, _0803A55C
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, r4
	beq _0803A54E
	ldrb r0, [r5, #0x13]
	movs r1, #0
	bl sub_803340C
	cmp r0, #0
	bne _0803A54E
	movs r6, #1
_0803A54E:
	adds r0, r6, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0803A558: .4byte gPriorityScriptIdx
_0803A55C: .4byte gBackgroundScriptIdx

	.thumb
sub_803A560: @ 0x0803A560
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r0, #4
	movs r1, #0
	bl sub_803352C
	adds r4, r0, #0
	movs r6, #0
	movs r0, #4
	movs r1, #0
	bl sub_803340C
	cmp r0, #0
	beq _0803A5A8
	ldr r0, _0803A5B0
	movs r1, #0
	ldrsh r2, [r0, r1]
	ldrh r1, [r5, #0x10]
	cmp r2, r1
	beq _0803A5A8
	ldr r0, _0803A5B4
	movs r3, #0
	ldrsh r0, [r0, r3]
	cmp r0, r1
	beq _0803A5A8
	cmp r2, r4
	beq _0803A5A8
	cmp r0, r4
	beq _0803A5A8
	ldrb r0, [r5, #0x13]
	movs r1, #0
	bl sub_803340C
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r6, r1, #0x1f
_0803A5A8:
	adds r0, r6, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0803A5B0: .4byte gPriorityScriptIdx
_0803A5B4: .4byte gBackgroundScriptIdx

	.thumb
sub_803A5B8: @ 0x0803A5B8
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r0, #5
	movs r1, #0
	bl sub_803352C
	adds r4, r0, #0
	movs r6, #0
	movs r0, #5
	movs r1, #0
	bl sub_803340C
	cmp r0, #0
	beq _0803A5F6
	ldr r0, _0803A600
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, r4
	beq _0803A5F6
	ldr r0, _0803A604
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, r4
	beq _0803A5F6
	ldrb r0, [r5, #0x13]
	movs r1, #0
	bl sub_803340C
	cmp r0, #0
	bne _0803A5F6
	movs r6, #1
_0803A5F6:
	adds r0, r6, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0803A600: .4byte gPriorityScriptIdx
_0803A604: .4byte gBackgroundScriptIdx

	.thumb
sub_803A608: @ 0x0803A608
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r0, #5
	movs r1, #0
	bl sub_803352C
	adds r4, r0, #0
	movs r6, #0
	movs r0, #5
	movs r1, #0
	bl sub_803340C
	cmp r0, #0
	beq _0803A650
	ldr r0, _0803A658
	movs r1, #0
	ldrsh r2, [r0, r1]
	ldrh r1, [r5, #0x10]
	cmp r2, r1
	beq _0803A650
	ldr r0, _0803A65C
	movs r3, #0
	ldrsh r0, [r0, r3]
	cmp r0, r1
	beq _0803A650
	cmp r2, r4
	beq _0803A650
	cmp r0, r4
	beq _0803A650
	ldrb r0, [r5, #0x13]
	movs r1, #0
	bl sub_803340C
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r6, r1, #0x1f
_0803A650:
	adds r0, r6, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0803A658: .4byte gPriorityScriptIdx
_0803A65C: .4byte gBackgroundScriptIdx

	.thumb
sub_803A660: @ 0x0803A660
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r0, #6
	movs r1, #0
	bl sub_803352C
	adds r4, r0, #0
	movs r6, #0
	movs r0, #6
	movs r1, #0
	bl sub_803340C
	cmp r0, #0
	beq _0803A69E
	ldr r0, _0803A6A8
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, r4
	beq _0803A69E
	ldr r0, _0803A6AC
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, r4
	beq _0803A69E
	ldrb r0, [r5, #0x13]
	movs r1, #0
	bl sub_803340C
	cmp r0, #0
	bne _0803A69E
	movs r6, #1
_0803A69E:
	adds r0, r6, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0803A6A8: .4byte gPriorityScriptIdx
_0803A6AC: .4byte gBackgroundScriptIdx

	.thumb
sub_803A6B0: @ 0x0803A6B0
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r0, #6
	movs r1, #0
	bl sub_803352C
	adds r4, r0, #0
	movs r6, #0
	movs r0, #6
	movs r1, #0
	bl sub_803340C
	cmp r0, #0
	beq _0803A6F8
	ldr r0, _0803A700
	movs r1, #0
	ldrsh r2, [r0, r1]
	ldrh r1, [r5, #0x10]
	cmp r2, r1
	beq _0803A6F8
	ldr r0, _0803A704
	movs r3, #0
	ldrsh r0, [r0, r3]
	cmp r0, r1
	beq _0803A6F8
	cmp r2, r4
	beq _0803A6F8
	cmp r0, r4
	beq _0803A6F8
	ldrb r0, [r5, #0x13]
	movs r1, #0
	bl sub_803340C
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r6, r1, #0x1f
_0803A6F8:
	adds r0, r6, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0803A700: .4byte gPriorityScriptIdx
_0803A704: .4byte gBackgroundScriptIdx

	.thumb
sub_803A708: @ 0x0803A708
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r0, #7
	movs r1, #0
	bl sub_803352C
	adds r4, r0, #0
	movs r6, #0
	movs r0, #7
	movs r1, #0
	bl sub_803340C
	cmp r0, #0
	beq _0803A746
	ldr r0, _0803A750
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, r4
	beq _0803A746
	ldr r0, _0803A754
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, r4
	beq _0803A746
	ldrb r0, [r5, #0x13]
	movs r1, #0
	bl sub_803340C
	cmp r0, #0
	bne _0803A746
	movs r6, #1
_0803A746:
	adds r0, r6, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0803A750: .4byte gPriorityScriptIdx
_0803A754: .4byte gBackgroundScriptIdx

	.thumb
sub_803A758: @ 0x0803A758
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r0, #7
	movs r1, #0
	bl sub_803352C
	adds r4, r0, #0
	movs r6, #0
	movs r0, #7
	movs r1, #0
	bl sub_803340C
	cmp r0, #0
	beq _0803A7A0
	ldr r0, _0803A7A8
	movs r1, #0
	ldrsh r2, [r0, r1]
	ldrh r1, [r5, #0x10]
	cmp r2, r1
	beq _0803A7A0
	ldr r0, _0803A7AC
	movs r3, #0
	ldrsh r0, [r0, r3]
	cmp r0, r1
	beq _0803A7A0
	cmp r2, r4
	beq _0803A7A0
	cmp r0, r4
	beq _0803A7A0
	ldrb r0, [r5, #0x13]
	movs r1, #0
	bl sub_803340C
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r6, r1, #0x1f
_0803A7A0:
	adds r0, r6, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0803A7A8: .4byte gPriorityScriptIdx
_0803A7AC: .4byte gBackgroundScriptIdx

	.thumb
sub_803A7B0: @ 0x0803A7B0
	ldr r0, _0803A7B8
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803A7B8: .4byte 0x0203E94F

	.thumb
sub_803A7BC: @ 0x0803A7BC
	ldr r0, _0803A7C4
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803A7C4: .4byte 0x0203E950

	.thumb
sub_803A7C8: @ 0x0803A7C8
	push {lr}
	movs r1, #0
	ldr r0, _0803A7DC
	ldrb r0, [r0]
	cmp r0, #0
	bne _0803A7D6
	movs r1, #1
_0803A7D6:
	adds r0, r1, #0
	pop {r1}
	bx r1
	.align 2, 0
_0803A7DC: .4byte 0x0203E951

	.thumb
sub_803A7E0: @ 0x0803A7E0
	ldr r0, _0803A7E8
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803A7E8: .4byte 0x0203E951

	.thumb
sub_803A7EC: @ 0x0803A7EC
	ldr r0, _0803A7F4
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803A7F4: .4byte 0x0203E952

	.thumb
sub_803A7F8: @ 0x0803A7F8
	ldr r0, _0803A800
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803A800: .4byte 0x0203E953

	.thumb
sub_803A804: @ 0x0803A804
	ldr r0, _0803A80C
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803A80C: .4byte 0x0203E954

	.thumb
sub_803A810: @ 0x0803A810
	ldr r0, _0803A818
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803A818: .4byte 0x0203E947

	.thumb
sub_803A81C: @ 0x0803A81C
	ldr r0, _0803A824
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803A824: .4byte 0x0203E948

	.thumb
sub_803A828: @ 0x0803A828
	push {lr}
	movs r1, #0
	ldr r0, _0803A83C
	ldrb r0, [r0]
	cmp r0, #0
	bne _0803A836
	movs r1, #1
_0803A836:
	adds r0, r1, #0
	pop {r1}
	bx r1
	.align 2, 0
_0803A83C: .4byte 0x0203E946

	.thumb
sub_803A840: @ 0x0803A840
	push {lr}
	movs r1, #0
	ldr r0, _0803A854
	ldrb r0, [r0]
	cmp r0, #0
	bne _0803A84E
	movs r1, #1
_0803A84E:
	adds r0, r1, #0
	pop {r1}
	bx r1
	.align 2, 0
_0803A854: .4byte 0x0203E945

	.thumb
sub_803A858: @ 0x0803A858
	ldr r0, _0803A860
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803A860: .4byte 0x0203E956

	.thumb
sub_803A864: @ 0x0803A864
	push {lr}
	movs r1, #0
	ldr r0, _0803A878
	ldrb r0, [r0]
	cmp r0, #0
	bne _0803A872
	movs r1, #1
_0803A872:
	adds r0, r1, #0
	pop {r1}
	bx r1
	.align 2, 0
_0803A878: .4byte 0x0203E956

	.thumb
sub_803A87C: @ 0x0803A87C
	ldr r0, _0803A884
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803A884: .4byte 0x0203E957

	.thumb
sub_803A888: @ 0x0803A888
	push {lr}
	movs r1, #0
	ldr r0, _0803A89C
	ldrb r0, [r0]
	cmp r0, #0
	bne _0803A896
	movs r1, #1
_0803A896:
	adds r0, r1, #0
	pop {r1}
	bx r1
	.align 2, 0
_0803A89C: .4byte 0x0203E957

	.thumb
sub_803A8A0: @ 0x0803A8A0
	ldr r0, _0803A8A8
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803A8A8: .4byte 0x0203E958

	.thumb
sub_803A8AC: @ 0x0803A8AC
	push {lr}
	movs r1, #0
	ldr r0, _0803A8C0
	ldrb r0, [r0]
	cmp r0, #0
	bne _0803A8BA
	movs r1, #1
_0803A8BA:
	adds r0, r1, #0
	pop {r1}
	bx r1
	.align 2, 0
_0803A8C0: .4byte 0x0203E958

	.thumb
sub_803A8C4: @ 0x0803A8C4
	ldr r0, _0803A8CC
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803A8CC: .4byte 0x0203E959

	.thumb
sub_803A8D0: @ 0x0803A8D0
	ldr r0, _0803A8D8
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803A8D8: .4byte 0x0203E95A

	.thumb
sub_803A8DC: @ 0x0803A8DC
	push {r4, lr}
	movs r2, #0
	ldr r4, _0803A908
	ldr r0, _0803A90C
	ldrh r1, [r0]
	movs r0, #0xc4
	muls r1, r0, r1
	adds r0, r1, r4
	ldrb r3, [r0, #0xe]
	cmp r2, r3
	bge _0803A916
	adds r0, r4, #0
	adds r0, #0x60
	adds r0, r1, r0
	ldr r1, [r0]
_0803A8FA:
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #0
	bne _0803A910
	movs r0, #1
	b _0803A918
	.align 2, 0
_0803A908: .4byte 0x0203E440
_0803A90C: .4byte gLoadedRoomLevel
_0803A910:
	adds r2, #1
	cmp r2, r3
	blt _0803A8FA
_0803A916:
	movs r0, #0
_0803A918:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	.thumb
sub_803A920: @ 0x0803A920
	push {lr}
	movs r1, #0
	ldr r0, _0803A93C
	ldrb r0, [r0]
	cmp r0, #0
	bne _0803A936
	ldr r0, _0803A940
	ldrb r0, [r0]
	cmp r0, #0
	bne _0803A936
	movs r1, #1
_0803A936:
	adds r0, r1, #0
	pop {r1}
	bx r1
	.align 2, 0
_0803A93C: .4byte 0x0203E95C
_0803A940: .4byte 0x0203E97B

	.thumb
sub_803A944: @ 0x0803A944
	push {lr}
	movs r1, #0
	ldr r0, _0803A960
	ldrb r0, [r0]
	cmp r0, #1
	bne _0803A95A
	ldr r0, _0803A964
	ldrb r0, [r0]
	cmp r0, #0
	bne _0803A95A
	movs r1, #1
_0803A95A:
	adds r0, r1, #0
	pop {r1}
	bx r1
	.align 2, 0
_0803A960: .4byte gTransformation
_0803A964: .4byte 0x0203E95D

	.thumb
sub_803A968: @ 0x0803A968
	push {lr}
	movs r1, #0
	ldr r0, _0803A984
	ldrb r0, [r0]
	cmp r0, #2
	bne _0803A97E
	ldr r0, _0803A988
	ldrb r0, [r0]
	cmp r0, #0
	bne _0803A97E
	movs r1, #1
_0803A97E:
	adds r0, r1, #0
	pop {r1}
	bx r1
	.align 2, 0
_0803A984: .4byte gTransformation
_0803A988: .4byte 0x0203E95E

	.thumb
sub_803A98C: @ 0x0803A98C
	push {lr}
	movs r1, #0
	ldr r0, _0803A9A8
	ldrb r0, [r0]
	cmp r0, #4
	bne _0803A9A2
	ldr r0, _0803A9AC
	ldrb r0, [r0]
	cmp r0, #0
	bne _0803A9A2
	movs r1, #1
_0803A9A2:
	adds r0, r1, #0
	pop {r1}
	bx r1
	.align 2, 0
_0803A9A8: .4byte gTransformation
_0803A9AC: .4byte 0x0203E95F

	.thumb
sub_803A9B0: @ 0x0803A9B0
	push {lr}
	movs r1, #0
	ldr r0, _0803A9CC
	ldrb r0, [r0]
	cmp r0, #3
	bne _0803A9C6
	ldr r0, _0803A9D0
	ldrb r0, [r0]
	cmp r0, #0
	bne _0803A9C6
	movs r1, #1
_0803A9C6:
	adds r0, r1, #0
	pop {r1}
	bx r1
	.align 2, 0
_0803A9CC: .4byte gTransformation
_0803A9D0: .4byte 0x0203E960

	.thumb
sub_803A9D4: @ 0x0803A9D4
	ldr r0, _0803A9E0
	ldrb r1, [r0]
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r0, r0, #0x1f
	bx lr
	.align 2, 0
_0803A9E0: .4byte gTransformation

	.thumb
sub_803A9E4: @ 0x0803A9E4
	push {lr}
	movs r1, #0
	ldr r0, _0803A9F8
	ldrb r0, [r0]
	cmp r0, #0
	bne _0803A9F2
	movs r1, #1
_0803A9F2:
	adds r0, r1, #0
	pop {r1}
	bx r1
	.align 2, 0
_0803A9F8: .4byte gTransformation

	.thumb
sub_803A9FC: @ 0x0803A9FC
	push {lr}
	movs r1, #0
	ldr r0, _0803AA10
	ldrb r0, [r0]
	cmp r0, #1
	bne _0803AA0A
	movs r1, #1
_0803AA0A:
	adds r0, r1, #0
	pop {r1}
	bx r1
	.align 2, 0
_0803AA10: .4byte gTransformation

	.thumb
sub_803AA14: @ 0x0803AA14
	push {lr}
	movs r1, #0
	ldr r0, _0803AA28
	ldrb r0, [r0]
	cmp r0, #2
	bne _0803AA22
	movs r1, #1
_0803AA22:
	adds r0, r1, #0
	pop {r1}
	bx r1
	.align 2, 0
_0803AA28: .4byte gTransformation

	.thumb
sub_803AA2C: @ 0x0803AA2C
	push {lr}
	movs r1, #0
	ldr r0, _0803AA40
	ldrb r0, [r0]
	cmp r0, #3
	bne _0803AA3A
	movs r1, #1
_0803AA3A:
	adds r0, r1, #0
	pop {r1}
	bx r1
	.align 2, 0
_0803AA40: .4byte gTransformation

	.thumb
sub_803AA44: @ 0x0803AA44
	push {lr}
	movs r1, #0
	ldr r0, _0803AA58
	ldrb r0, [r0]
	cmp r0, #4
	bne _0803AA52
	movs r1, #1
_0803AA52:
	adds r0, r1, #0
	pop {r1}
	bx r1
	.align 2, 0
_0803AA58: .4byte gTransformation

	.thumb
sub_803AA5C: @ 0x0803AA5C
	ldr r0, _0803AA6C
	ldrb r1, [r0]
	movs r0, #1
	eors r1, r0
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r0, r0, #0x1f
	bx lr
	.align 2, 0
_0803AA6C: .4byte gTransformation

	.thumb
sub_803AA70: @ 0x0803AA70
	ldr r0, _0803AA80
	ldrb r1, [r0]
	movs r0, #2
	eors r1, r0
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r0, r0, #0x1f
	bx lr
	.align 2, 0
_0803AA80: .4byte gTransformation

	.thumb
sub_803AA84: @ 0x0803AA84
	ldr r0, _0803AA94
	ldrb r1, [r0]
	movs r0, #3
	eors r1, r0
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r0, r0, #0x1f
	bx lr
	.align 2, 0
_0803AA94: .4byte gTransformation

	.thumb
sub_803AA98: @ 0x0803AA98
	ldr r0, _0803AAA8
	ldrb r1, [r0]
	movs r0, #4
	eors r1, r0
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r0, r0, #0x1f
	bx lr
	.align 2, 0
_0803AAA8: .4byte gTransformation

	.thumb
sub_803AAAC: @ 0x0803AAAC
	ldr r0, _0803AAB4
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803AAB4: .4byte 0x0203E961

	.thumb
sub_803AAB8: @ 0x0803AAB8
	push {lr}
	movs r1, #0
	ldr r0, _0803AACC
	ldrb r0, [r0]
	cmp r0, #0
	bne _0803AAC6
	movs r1, #1
_0803AAC6:
	adds r0, r1, #0
	pop {r1}
	bx r1
	.align 2, 0
_0803AACC: .4byte 0x0203E961

	.thumb
sub_803AAD0: @ 0x0803AAD0
	ldr r0, _0803AAD8
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803AAD8: .4byte 0x0203E977

	.thumb
sub_803AADC: @ 0x0803AADC
	ldr r0, _0803AAE4
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803AAE4: .4byte 0x0203E978

	.thumb
sub_803AAE8: @ 0x0803AAE8
	ldr r0, _0803AAF0
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803AAF0: .4byte 0x0203E979

	.thumb
sub_803AAF4: @ 0x0803AAF4
	ldr r0, _0803AAFC
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803AAFC: .4byte 0x0203E97A

	.thumb
sub_803AB00: @ 0x0803AB00
	ldr r0, _0803AB0C
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	bx lr
	.align 2, 0
_0803AB0C: .4byte 0x0203E93C

	.thumb
sub_803AB10: @ 0x0803AB10
	ldr r0, _0803AB20
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bx lr
	.align 2, 0
_0803AB20: .4byte 0x0203E93C

	.thumb
sub_803AB24: @ 0x0803AB24
	ldr r0, _0803AB34
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bx lr
	.align 2, 0
_0803AB34: .4byte 0x0203E93C

	.thumb
sub_803AB38: @ 0x0803AB38
	ldr r0, _0803AB48
	ldrb r1, [r0]
	movs r0, #8
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bx lr
	.align 2, 0
_0803AB48: .4byte 0x0203E93C

	.thumb
sub_803AB4C: @ 0x0803AB4C
	ldr r0, _0803AB5C
	ldrb r1, [r0]
	movs r0, #0x10
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bx lr
	.align 2, 0
_0803AB5C: .4byte 0x0203E93C

	.thumb
sub_803AB60: @ 0x0803AB60
	ldr r0, _0803AB70
	ldrb r1, [r0]
	movs r0, #0x20
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bx lr
	.align 2, 0
_0803AB70: .4byte 0x0203E93C

	.thumb
sub_803AB74: @ 0x0803AB74
	ldr r0, _0803AB80
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	bx lr
	.align 2, 0
_0803AB80: .4byte 0x0203E93B

	.thumb
sub_803AB84: @ 0x0803AB84
	ldr r0, _0803AB94
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bx lr
	.align 2, 0
_0803AB94: .4byte 0x0203E93B

	.thumb
sub_803AB98: @ 0x0803AB98
	ldr r0, _0803ABA8
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bx lr
	.align 2, 0
_0803ABA8: .4byte 0x0203E93B

	.thumb
sub_803ABAC: @ 0x0803ABAC
	ldr r0, _0803ABBC
	ldrb r1, [r0]
	movs r0, #8
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bx lr
	.align 2, 0
_0803ABBC: .4byte 0x0203E93B

	.thumb
sub_803ABC0: @ 0x0803ABC0
	ldr r0, _0803ABD0
	ldrb r1, [r0]
	movs r0, #0x10
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bx lr
	.align 2, 0
_0803ABD0: .4byte 0x0203E93B

	.thumb
sub_803ABD4: @ 0x0803ABD4
	ldr r0, _0803ABE4
	ldrb r1, [r0]
	movs r0, #0x20
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bx lr
	.align 2, 0
_0803ABE4: .4byte 0x0203E93B

	.thumb
sub_803ABE8: @ 0x0803ABE8
	push {r4, lr}
	movs r2, #0
	ldr r4, _0803AC14
	ldr r0, _0803AC18
	ldrh r1, [r0]
	movs r0, #0xc4
	muls r1, r0, r1
	adds r0, r1, r4
	adds r0, #0x21
	ldrb r3, [r0]
	cmp r2, r3
	bge _0803AC22
	adds r0, r4, #0
	adds r0, #0x78
	adds r0, r1, r0
	ldr r1, [r0]
_0803AC08:
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #0
	bne _0803AC1C
	movs r0, #1
	b _0803AC24
	.align 2, 0
_0803AC14: .4byte 0x0203E440
_0803AC18: .4byte gLoadedRoomLevel
_0803AC1C:
	adds r2, #1
	cmp r2, r3
	blt _0803AC08
_0803AC22:
	movs r0, #0
_0803AC24:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	.thumb
sub_803AC2C: @ 0x0803AC2C
	push {r4, lr}
	movs r2, #0
	ldr r4, _0803AC58
	ldr r0, _0803AC5C
	ldrh r1, [r0]
	movs r0, #0xc4
	muls r1, r0, r1
	adds r0, r1, r4
	adds r0, #0x21
	ldrb r3, [r0]
	cmp r2, r3
	bge _0803AC66
	adds r0, r4, #0
	adds r0, #0x78
	adds r0, r1, r0
	ldr r1, [r0]
_0803AC4C:
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #0
	bne _0803AC60
	movs r0, #0
	b _0803AC68
	.align 2, 0
_0803AC58: .4byte 0x0203E440
_0803AC5C: .4byte gLoadedRoomLevel
_0803AC60:
	adds r2, #1
	cmp r2, r3
	blt _0803AC4C
_0803AC66:
	movs r0, #1
_0803AC68:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	.thumb
sub_803AC70: @ 0x0803AC70
	ldr r0, _0803AC78
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803AC78: .4byte 0x0203F8BD

	.thumb
sub_803AC7C: @ 0x0803AC7C
	push {lr}
	movs r1, #0
	ldr r0, _0803AC90
	ldrb r0, [r0]
	cmp r0, #0
	bne _0803AC8A
	movs r1, #1
_0803AC8A:
	adds r0, r1, #0
	pop {r1}
	bx r1
	.align 2, 0
_0803AC90: .4byte 0x0203F8BD

	.thumb
sub_803AC94: @ 0x0803AC94
	ldr r0, _0803AC9C
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803AC9C: .4byte 0x0203E967

	.thumb
sub_803ACA0: @ 0x0803ACA0
	ldr r0, _0803ACA8
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803ACA8: .4byte 0x0203E964

	.thumb
sub_803ACAC: @ 0x0803ACAC
	ldr r0, _0803ACB4
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803ACB4: .4byte 0x0203E965

	.thumb
sub_803ACB8: @ 0x0803ACB8
	ldr r0, _0803ACC0
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803ACC0: .4byte 0x0203E966

	.thumb
sub_803ACC4: @ 0x0803ACC4
	movs r0, #1
	bx lr

	.thumb
sub_803ACC8: @ 0x0803ACC8
	push {lr}
	movs r1, #0
	ldr r0, _0803ACDC
	ldr r0, [r0]
	cmp r0, #0
	bne _0803ACD6
	movs r1, #1
_0803ACD6:
	adds r0, r1, #0
	pop {r1}
	bx r1
	.align 2, 0
_0803ACDC: .4byte 0x0203E980

	.thumb
sub_803ACE0: @ 0x0803ACE0
	push {r4, lr}
	movs r2, #0
	ldr r4, _0803AD10
	ldr r0, _0803AD14
	ldrh r1, [r0]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r1, r0, #3
	adds r0, r1, r4
	ldrb r3, [r0, #0xe]
	cmp r2, r3
	bge _0803AD1E
	adds r0, r4, #0
	adds r0, #0x54
	adds r0, r1, r0
	ldr r4, [r0]
	adds r1, r3, #0
_0803AD02:
	adds r0, r4, r2
	ldrb r0, [r0]
	cmp r0, #0
	bne _0803AD18
	movs r0, #0
	b _0803AD20
	.align 2, 0
_0803AD10: .4byte 0x0203E170
_0803AD14: .4byte gLoadedRoomLevel
_0803AD18:
	adds r2, #1
	cmp r2, r1
	blt _0803AD02
_0803AD1E:
	movs r0, #1
_0803AD20:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	.thumb
sub_803AD28: @ 0x0803AD28
	push {r4, lr}
	movs r2, #0
	ldr r4, _0803AD54
	ldr r0, _0803AD58
	ldrh r1, [r0]
	movs r0, #0xc4
	muls r1, r0, r1
	adds r0, r1, r4
	ldrb r3, [r0, #0xe]
	cmp r2, r3
	bge _0803AD62
	adds r0, r4, #0
	adds r0, #0x60
	adds r0, r1, r0
	ldr r1, [r0]
_0803AD46:
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #0
	bne _0803AD5C
	movs r0, #0
	b _0803AD64
	.align 2, 0
_0803AD54: .4byte 0x0203E440
_0803AD58: .4byte gLoadedRoomLevel
_0803AD5C:
	adds r2, #1
	cmp r2, r3
	blt _0803AD46
_0803AD62:
	movs r0, #1
_0803AD64:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	.thumb
sub_803AD6C: @ 0x0803AD6C
	ldr r0, _0803AD74
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803AD74: .4byte 0x0203E970

	.thumb
sub_803AD78: @ 0x0803AD78
	ldr r0, _0803AD80
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803AD80: .4byte 0x0203E96F

	.thumb
sub_803AD84: @ 0x0803AD84
	ldr r0, _0803AD8C
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803AD8C: .4byte 0x0203E96E

	.thumb
sub_803AD90: @ 0x0803AD90
	push {r4, lr}
	movs r2, #0
	ldr r4, _0803ADC0
	ldr r0, _0803ADC4
	ldrh r1, [r0]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r1, r0, #3
	adds r0, r1, r4
	ldrb r3, [r0, #0x10]
	cmp r2, r3
	bge _0803ADCE
	adds r0, r4, #0
	adds r0, #0x5c
	adds r0, r1, r0
	ldr r4, [r0]
	adds r1, r3, #0
_0803ADB2:
	adds r0, r4, r2
	ldrb r0, [r0]
	cmp r0, #0
	bne _0803ADC8
	movs r0, #0
	b _0803ADD0
	.align 2, 0
_0803ADC0: .4byte 0x0203E170
_0803ADC4: .4byte gLoadedRoomLevel
_0803ADC8:
	adds r2, #1
	cmp r2, r1
	blt _0803ADB2
_0803ADCE:
	movs r0, #1
_0803ADD0:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	.thumb
sub_803ADD8: @ 0x0803ADD8
	ldr r0, _0803ADE0
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803ADE0: .4byte 0x0203E94E

	.thumb
sub_803ADE4: @ 0x0803ADE4
	ldr r0, _0803ADEC
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803ADEC: .4byte 0x0203E97C

	.thumb
sub_803ADF0: @ 0x0803ADF0
	ldr r0, _0803ADF8
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803ADF8: .4byte 0x0203E962

	.thumb
sub_803ADFC: @ 0x0803ADFC
	ldr r0, _0803AE04
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803AE04: .4byte 0x0203E963

	.thumb
sub_803AE08: @ 0x0803AE08
	ldr r2, _0803AE20
	ldr r0, _0803AE24
	ldrh r3, [r0]
	movs r0, #0xc4
	muls r0, r3, r0
	adds r2, #0x74
	adds r0, r0, r2
	ldr r0, [r0]
	adds r0, r0, r1
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803AE20: .4byte 0x0203E440
_0803AE24: .4byte gLoadedRoomLevel

	.thumb
sub_803AE28: @ 0x0803AE28
	ldr r2, _0803AE40
	ldr r0, _0803AE44
	ldrh r3, [r0]
	movs r0, #0xc4
	muls r0, r3, r0
	adds r2, #0x78
	adds r0, r0, r2
	ldr r0, [r0]
	adds r0, r0, r1
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803AE40: .4byte 0x0203E440
_0803AE44: .4byte gLoadedRoomLevel

	.thumb
sub_803AE48: @ 0x0803AE48
	push {lr}
	ldr r1, _0803AE5C
	ldrh r1, [r1]
	cmp r1, #5
	bhi _0803AEC8
	lsls r0, r1, #2
	ldr r1, _0803AE60
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0803AE5C: .4byte gLoadedRoomLevel
_0803AE60: .4byte 0x0803AE64
_0803AE64: @ jump table
	.4byte _0803AEB8 @ case 0
	.4byte _0803AE7C @ case 1
	.4byte _0803AE88 @ case 2
	.4byte _0803AE94 @ case 3
	.4byte _0803AEA0 @ case 4
	.4byte _0803AEAC @ case 5
_0803AE7C:
	ldr r0, _0803AE84
	ldrb r1, [r0]
	b _0803AEBE
	.align 2, 0
_0803AE84: .4byte 0x0203E93C
_0803AE88:
	ldr r0, _0803AE90
	ldrb r1, [r0]
	lsrs r1, r1, #1
	b _0803AEBE
	.align 2, 0
_0803AE90: .4byte 0x0203E93C
_0803AE94:
	ldr r0, _0803AE9C
	ldrb r1, [r0]
	lsrs r1, r1, #2
	b _0803AEBE
	.align 2, 0
_0803AE9C: .4byte 0x0203E93C
_0803AEA0:
	ldr r0, _0803AEA8
	ldrb r1, [r0]
	lsrs r1, r1, #3
	b _0803AEBE
	.align 2, 0
_0803AEA8: .4byte 0x0203E93C
_0803AEAC:
	ldr r0, _0803AEB4
	ldrb r1, [r0]
	lsrs r1, r1, #4
	b _0803AEBE
	.align 2, 0
_0803AEB4: .4byte 0x0203E93C
_0803AEB8:
	ldr r0, _0803AEC4
	ldrb r1, [r0]
	lsrs r1, r1, #5
_0803AEBE:
	movs r0, #1
	bics r0, r1
	b _0803AECC
	.align 2, 0
_0803AEC4: .4byte 0x0203E93C
_0803AEC8:
	.2byte 0xEE00, 0xEE00
_0803AECC:
	pop {r1}
	bx r1

	.thumb
sub_803AED0: @ 0x0803AED0
	ldr r2, _0803AEE4
	ldr r0, _0803AEE8
	ldrh r1, [r0]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r2
	adds r0, #0x75
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803AEE4: .4byte 0x0203E170
_0803AEE8: .4byte gLoadedRoomLevel

	.thumb
sub_803AEEC: @ 0x0803AEEC
	ldr r2, _0803AF04
	ldr r0, _0803AF08
	ldrh r3, [r0]
	movs r0, #0xc4
	muls r0, r3, r0
	adds r2, #0x7c
	adds r0, r0, r2
	ldr r0, [r0]
	adds r0, r0, r1
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803AF04: .4byte 0x0203E440
_0803AF08: .4byte gLoadedRoomLevel

	.thumb
sub_803AF0C: @ 0x0803AF0C
	ldr r2, _0803AF24
	ldr r0, _0803AF28
	ldrh r3, [r0]
	movs r0, #0xc4
	muls r0, r3, r0
	adds r2, #0x80
	adds r0, r0, r2
	ldr r0, [r0]
	adds r0, r0, r1
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803AF24: .4byte 0x0203E440
_0803AF28: .4byte gLoadedRoomLevel

	.thumb
sub_803AF2C: @ 0x0803AF2C
	ldr r2, _0803AF44
	ldr r0, _0803AF48
	ldrh r3, [r0]
	movs r0, #0xc4
	muls r0, r3, r0
	adds r2, #0x84
	adds r0, r0, r2
	ldr r0, [r0]
	adds r0, r0, r1
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803AF44: .4byte 0x0203E440
_0803AF48: .4byte gLoadedRoomLevel

	.thumb
sub_803AF4C: @ 0x0803AF4C
	ldr r2, _0803AF64
	ldr r0, _0803AF68
	ldrh r3, [r0]
	movs r0, #0xc4
	muls r0, r3, r0
	adds r2, #0x88
	adds r0, r0, r2
	ldr r0, [r0]
	adds r0, r0, r1
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803AF64: .4byte 0x0203E440
_0803AF68: .4byte gLoadedRoomLevel

	.thumb
sub_803AF6C: @ 0x0803AF6C
	ldr r0, _0803AF74
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803AF74: .4byte 0x0203E95D

	.thumb
sub_803AF78: @ 0x0803AF78
	ldr r0, _0803AF80
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803AF80: .4byte 0x0203E95E

	.thumb
sub_803AF84: @ 0x0803AF84
	ldr r0, _0803AF8C
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803AF8C: .4byte 0x0203E95F

	.thumb
sub_803AF90: @ 0x0803AF90
	ldr r0, _0803AF98
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803AF98: .4byte 0x0203E960

	.thumb
sub_803AF9C: @ 0x0803AF9C
	ldr r2, _0803AFB4
	ldr r0, _0803AFB8
	ldrh r3, [r0]
	movs r0, #0xc4
	muls r0, r3, r0
	adds r2, #0x8c
	adds r0, r0, r2
	ldr r0, [r0]
	adds r0, r0, r1
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803AFB4: .4byte 0x0203E440
_0803AFB8: .4byte gLoadedRoomLevel

	.thumb
sub_803AFBC: @ 0x0803AFBC
	ldr r0, _0803AFC4
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803AFC4: .4byte 0x0203E97B

	.thumb
sub_803AFC8: @ 0x0803AFC8
	ldr r0, _0803AFD0
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803AFD0: .4byte 0x0203E95C

	.thumb
sub_803AFD4: @ 0x0803AFD4
	ldr r0, _0803AFDC
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803AFDC: .4byte 0x0203E951

	.thumb
sub_803AFE0: @ 0x0803AFE0
	ldr r0, _0803AFE8
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803AFE8: .4byte 0x0203E959

	.thumb
sub_803AFEC: @ 0x0803AFEC
	ldr r0, _0803AFF4
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803AFF4: .4byte 0x0203E958

	.thumb
sub_803AFF8: @ 0x0803AFF8
	ldr r0, _0803B000
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803B000: .4byte 0x0203E957

	.thumb
sub_803B004: @ 0x0803B004
	ldr r0, _0803B00C
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803B00C: .4byte 0x0203E956

	.thumb
sub_803B010: @ 0x0803B010
	ldr r0, _0803B018
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803B018: .4byte 0x0203E954

	.thumb
sub_803B01C: @ 0x0803B01C
	ldr r0, _0803B024
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803B024: .4byte 0x0203E952

	.thumb
sub_803B028: @ 0x0803B028
	ldr r0, _0803B030
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803B030: .4byte 0x0203E951

	.thumb
sub_803B034: @ 0x0803B034
	ldr r2, _0803B04C
	ldr r0, _0803B050
	ldrh r3, [r0]
	movs r0, #0xc4
	muls r0, r3, r0
	adds r2, #0x68
	adds r0, r0, r2
	ldr r0, [r0]
	adds r0, r0, r1
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803B04C: .4byte 0x0203E440
_0803B050: .4byte gLoadedRoomLevel

	.thumb
sub_803B054: @ 0x0803B054
	ldr r0, _0803B05C
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803B05C: .4byte 0x0203E94D

	.thumb
sub_803B060: @ 0x0803B060
	ldr r0, _0803B068
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803B068: .4byte 0x0203E955

	.thumb
sub_803B06C: @ 0x0803B06C
	ldr r0, _0803B074
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803B074: .4byte 0x0203E94C

	.thumb
sub_803B078: @ 0x0803B078
	push {r4, lr}
	movs r2, #0
	ldr r4, _0803B0A8
	ldr r0, _0803B0AC
	ldrh r1, [r0]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r1, r0, #3
	adds r0, r1, r4
	ldrb r3, [r0, #0x11]
	cmp r2, r3
	bge _0803B0B6
	adds r0, r4, #0
	adds r0, #0x60
	adds r0, r1, r0
	ldr r4, [r0]
	adds r1, r3, #0
_0803B09A:
	adds r0, r4, r2
	ldrb r0, [r0]
	cmp r0, #0
	bne _0803B0B0
	movs r0, #0
	b _0803B0B8
	.align 2, 0
_0803B0A8: .4byte 0x0203E170
_0803B0AC: .4byte gLoadedRoomLevel
_0803B0B0:
	adds r2, #1
	cmp r2, r1
	blt _0803B09A
_0803B0B6:
	movs r0, #1
_0803B0B8:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	.thumb
sub_803B0C0: @ 0x0803B0C0
	ldr r3, _0803B0D8
	ldr r0, _0803B0DC
	ldrh r2, [r0]
	lsls r0, r2, #4
	subs r0, r0, r2
	lsls r0, r0, #3
	adds r3, #0x60
	adds r0, r0, r3
	ldr r0, [r0]
	adds r0, r0, r1
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803B0D8: .4byte 0x0203E170
_0803B0DC: .4byte gLoadedRoomLevel

	.thumb
sub_803B0E0: @ 0x0803B0E0
	ldr r2, _0803B0F8
	ldr r0, _0803B0FC
	ldrh r3, [r0]
	movs r0, #0xc4
	muls r0, r3, r0
	adds r2, #0x64
	adds r0, r0, r2
	ldr r0, [r0]
	adds r0, r0, r1
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803B0F8: .4byte 0x0203E440
_0803B0FC: .4byte gLoadedRoomLevel

	.thumb
sub_803B100: @ 0x0803B100
	ldr r2, _0803B118
	ldr r0, _0803B11C
	ldrh r3, [r0]
	movs r0, #0xc4
	muls r0, r3, r0
	adds r2, #0x6c
	adds r0, r0, r2
	ldr r0, [r0]
	adds r0, r0, r1
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803B118: .4byte 0x0203E440
_0803B11C: .4byte gLoadedRoomLevel

	.thumb
sub_803B120: @ 0x0803B120
	ldr r0, _0803B128
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803B128: .4byte 0x0203E94B

	.thumb
sub_803B12C: @ 0x0803B12C
	ldr r2, _0803B140
	ldr r0, _0803B144
	ldrh r0, [r0]
	lsls r0, r0, #4
	adds r2, #8
	adds r0, r0, r2
	ldr r0, [r0]
	adds r0, r0, r1
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803B140: .4byte 0x0203E8D8
_0803B144: .4byte gLoadedRoomLevel

	.thumb
sub_803B148: @ 0x0803B148
	ldr r2, _0803B15C
	ldr r0, _0803B160
	ldrh r0, [r0]
	lsls r0, r0, #4
	adds r2, #0xc
	adds r0, r0, r2
	ldr r0, [r0]
	adds r0, r0, r1
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803B15C: .4byte 0x0203E8D8
_0803B160: .4byte gLoadedRoomLevel

	.thumb
sub_803B164: @ 0x0803B164
	ldr r2, _0803B17C
	ldr r0, _0803B180
	ldrh r3, [r0]
	movs r0, #0xc4
	muls r0, r3, r0
	adds r2, #0x60
	adds r0, r0, r2
	ldr r0, [r0]
	adds r0, r0, r1
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803B17C: .4byte 0x0203E440
_0803B180: .4byte gLoadedRoomLevel

	.thumb
sub_803B184: @ 0x0803B184
	ldr r2, _0803B19C
	ldr r0, _0803B1A0
	ldrh r3, [r0]
	movs r0, #0xc4
	muls r0, r3, r0
	adds r2, #0x5c
	adds r0, r0, r2
	ldr r0, [r0]
	adds r0, r0, r1
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803B19C: .4byte 0x0203E440
_0803B1A0: .4byte gLoadedRoomLevel

	.thumb
sub_803B1A4: @ 0x0803B1A4
	ldr r2, _0803B1BC
	ldr r0, _0803B1C0
	ldrh r3, [r0]
	movs r0, #0xc4
	muls r0, r3, r0
	adds r2, #0x70
	adds r0, r0, r2
	ldr r0, [r0]
	adds r0, r0, r1
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803B1BC: .4byte 0x0203E440
_0803B1C0: .4byte gLoadedRoomLevel

	.thumb
sub_803B1C4: @ 0x0803B1C4
	ldr r2, _0803B1DC
	ldr r0, _0803B1E0
	ldrh r3, [r0]
	movs r0, #0xc4
	muls r0, r3, r0
	adds r2, #0x44
	adds r0, r0, r2
	ldr r0, [r0]
	adds r0, r0, r1
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803B1DC: .4byte 0x0203E440
_0803B1E0: .4byte gLoadedRoomLevel

	.thumb
sub_803B1E4: @ 0x0803B1E4
	ldr r2, _0803B1FC
	ldr r0, _0803B200
	ldrh r3, [r0]
	movs r0, #0xc4
	muls r0, r3, r0
	adds r2, #0x48
	adds r0, r0, r2
	ldr r0, [r0]
	adds r0, r0, r1
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803B1FC: .4byte 0x0203E440
_0803B200: .4byte gLoadedRoomLevel

	.thumb
sub_803B204: @ 0x0803B204
	ldr r2, _0803B21C
	ldr r0, _0803B220
	ldrh r3, [r0]
	movs r0, #0xc4
	muls r0, r3, r0
	adds r2, #0x4c
	adds r0, r0, r2
	ldr r0, [r0]
	adds r0, r0, r1
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803B21C: .4byte 0x0203E440
_0803B220: .4byte gLoadedRoomLevel

	.thumb
sub_803B224: @ 0x0803B224
	ldr r2, _0803B23C
	ldr r0, _0803B240
	ldrh r3, [r0]
	movs r0, #0xc4
	muls r0, r3, r0
	adds r2, #0x50
	adds r0, r0, r2
	ldr r0, [r0]
	adds r0, r0, r1
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803B23C: .4byte 0x0203E440
_0803B240: .4byte gLoadedRoomLevel

	.thumb
sub_803B244: @ 0x0803B244
	ldr r2, _0803B25C
	ldr r0, _0803B260
	ldrh r3, [r0]
	movs r0, #0xc4
	muls r0, r3, r0
	adds r2, #0x54
	adds r0, r0, r2
	ldr r0, [r0]
	adds r0, r0, r1
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803B25C: .4byte 0x0203E440
_0803B260: .4byte gLoadedRoomLevel

	.thumb
sub_803B264: @ 0x0803B264
	ldr r2, _0803B27C
	ldr r0, _0803B280
	ldrh r3, [r0]
	movs r0, #0xc4
	muls r0, r3, r0
	adds r2, #0x58
	adds r0, r0, r2
	ldr r0, [r0]
	adds r0, r0, r1
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803B27C: .4byte 0x0203E440
_0803B280: .4byte gLoadedRoomLevel

	.thumb
obj_disabled_silver_coin: @ 0x0803B284
	ldr r3, _0803B29C
	ldr r0, _0803B2A0
	ldrh r2, [r0]
	lsls r0, r2, #4
	subs r0, r0, r2
	lsls r0, r0, #3
	adds r3, #0x5c
	adds r0, r0, r3
	ldr r0, [r0]
	adds r0, r0, r1
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803B29C: .4byte 0x0203E170
_0803B2A0: .4byte gLoadedRoomLevel

	.thumb
sub_803B2A4: @ 0x0803B2A4
	ldr r0, _0803B2AC
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803B2AC: .4byte 0x0203E949

	.thumb
sub_803B2B0: @ 0x0803B2B0
	ldr r0, _0803B2B8
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803B2B8: .4byte 0x0203E94A

	.thumb
sub_803B2BC: @ 0x0803B2BC
	push {r4, lr}
	movs r2, #0
	ldr r4, _0803B2EC
	ldr r0, _0803B2F0
	ldrh r1, [r0]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r1, r0, #3
	adds r0, r1, r4
	ldrb r3, [r0, #0xf]
	cmp r2, r3
	bge _0803B2FA
	adds r0, r4, #0
	adds r0, #0x58
	adds r0, r1, r0
	ldr r4, [r0]
	adds r1, r3, #0
_0803B2DE:
	adds r0, r4, r2
	ldrb r0, [r0]
	cmp r0, #0
	bne _0803B2F4
	movs r0, #0
	b _0803B2FC
	.align 2, 0
_0803B2EC: .4byte 0x0203E170
_0803B2F0: .4byte gLoadedRoomLevel
_0803B2F4:
	adds r2, #1
	cmp r2, r1
	blt _0803B2DE
_0803B2FA:
	movs r0, #1
_0803B2FC:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	.thumb
sub_803B304: @ 0x0803B304
	ldr r3, _0803B31C
	ldr r0, _0803B320
	ldrh r2, [r0]
	lsls r0, r2, #4
	subs r0, r0, r2
	lsls r0, r0, #3
	adds r3, #0x58
	adds r0, r0, r3
	ldr r0, [r0]
	adds r0, r0, r1
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803B31C: .4byte 0x0203E170
_0803B320: .4byte gLoadedRoomLevel

	.thumb
sub_803B324: @ 0x0803B324
	ldr r0, _0803B32C
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803B32C: .4byte 0x0203E942

	.thumb
sub_803B330: @ 0x0803B330
	ldr r0, _0803B338
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803B338: .4byte 0x0203E943

	.thumb
sub_803B33C: @ 0x0803B33C
	ldr r0, _0803B344
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803B344: .4byte 0x0203E944

	.thumb
sub_803B348: @ 0x0803B348
	ldr r0, _0803B350
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803B350: .4byte 0x0203E945

	.thumb
sub_803B354: @ 0x0803B354
	ldr r0, _0803B35C
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803B35C: .4byte 0x0203E946

	.thumb
sub_803B360: @ 0x0803B360
	ldr r0, _0803B368
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803B368: .4byte 0x0203E947

	.thumb
sub_803B36C: @ 0x0803B36C
	ldr r0, _0803B374
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803B374: .4byte 0x0203E941

	.thumb
sub_803B378: @ 0x0803B378
	ldr r2, _0803B390
	ldr r0, _0803B394
	ldrh r3, [r0]
	movs r0, #0xc4
	muls r0, r3, r0
	adds r2, #0x3c
	adds r0, r0, r2
	ldr r0, [r0]
	adds r0, r0, r1
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803B390: .4byte 0x0203E440
_0803B394: .4byte gLoadedRoomLevel

	.thumb
sub_803B398: @ 0x0803B398
	ldr r0, _0803B3A0
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803B3A0: .4byte byte_20020B2

	.thumb
sub_803B3A4: @ 0x0803B3A4
	push {lr}
	movs r1, #0
	ldr r0, _0803B3B8
	ldrb r0, [r0]
	cmp r0, #1
	bne _0803B3B2
	movs r1, #1
_0803B3B2:
	adds r0, r1, #0
	pop {r1}
	bx r1
	.align 2, 0
_0803B3B8: .4byte gTransformation

	.thumb
sub_803B3BC: @ 0x0803B3BC
	push {lr}
	movs r1, #0
	ldr r0, _0803B3D0
	ldrb r0, [r0]
	cmp r0, #2
	bne _0803B3CA
	movs r1, #1
_0803B3CA:
	adds r0, r1, #0
	pop {r1}
	bx r1
	.align 2, 0
_0803B3D0: .4byte gTransformation

	.thumb
sub_803B3D4: @ 0x0803B3D4
	push {lr}
	movs r1, #0
	ldr r0, _0803B3E8
	ldrb r0, [r0]
	cmp r0, #3
	bne _0803B3E2
	movs r1, #1
_0803B3E2:
	adds r0, r1, #0
	pop {r1}
	bx r1
	.align 2, 0
_0803B3E8: .4byte gTransformation

	.thumb
sub_803B3EC: @ 0x0803B3EC
	push {lr}
	movs r1, #0
	ldr r0, _0803B400
	ldrb r0, [r0]
	cmp r0, #4
	bne _0803B3FA
	movs r1, #1
_0803B3FA:
	adds r0, r1, #0
	pop {r1}
	bx r1
	.align 2, 0
_0803B400: .4byte gTransformation

	.thumb
sub_803B404: @ 0x0803B404
	push {lr}
	movs r1, #0
	ldr r0, _0803B418
	ldrb r0, [r0]
	cmp r0, #0
	bne _0803B412
	movs r1, #1
_0803B412:
	adds r0, r1, #0
	pop {r1}
	bx r1
	.align 2, 0
_0803B418: .4byte gTransformation

	.thumb
sub_803B41C: @ 0x0803B41C
	ldr r2, _0803B434
	ldr r0, _0803B438
	ldrh r3, [r0]
	movs r0, #0xc4
	muls r0, r3, r0
	adds r2, #0x38
	adds r0, r0, r2
	ldr r0, [r0]
	adds r0, r0, r1
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803B434: .4byte 0x0203E440
_0803B438: .4byte gLoadedRoomLevel

	.thumb
sub_803B43C: @ 0x0803B43C
	ldr r0, _0803B444
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803B444: .4byte 0x0203E93E

	.thumb
sub_803B448: @ 0x0803B448
	ldr r0, _0803B450
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803B450: .4byte 0x0203E93F

	.thumb
sub_803B454: @ 0x0803B454
	push {r4, lr}
	movs r2, #0
	ldr r4, _0803B484
	ldr r0, _0803B488
	ldrh r1, [r0]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r1, r0, #3
	adds r0, r1, r4
	ldrb r3, [r0, #9]
	cmp r2, r3
	bge _0803B492
	adds r0, r4, #0
	adds r0, #0x40
	adds r0, r1, r0
	ldr r4, [r0]
	adds r1, r3, #0
_0803B476:
	adds r0, r4, r2
	ldrb r0, [r0]
	cmp r0, #0
	bne _0803B48C
	movs r0, #0
	b _0803B494
	.align 2, 0
_0803B484: .4byte 0x0203E170
_0803B488: .4byte gLoadedRoomLevel
_0803B48C:
	adds r2, #1
	cmp r2, r1
	blt _0803B476
_0803B492:
	movs r0, #1
_0803B494:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	.thumb
sub_803B49C: @ 0x0803B49C
	ldr r0, _0803B4A4
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803B4A4: .4byte 0x0203E93D

	.thumb
sub_803B4A8: @ 0x0803B4A8
	push {r4, r5, r6, r7, lr}
	movs r7, #0
	movs r6, #0
	ldr r4, _0803B4E0
	movs r5, #0
	movs r0, #0xa
	adds r0, r0, r4
	mov ip, r0
_0803B4B8:
	mov r1, ip
	ldrb r0, [r1]
	cmp r0, #0
	beq _0803B4C2
	movs r7, #1
_0803B4C2:
	movs r1, #0
	mov r2, ip
	ldrb r2, [r2]
	cmp r1, r2
	bge _0803B4EE
	ldr r0, _0803B4E4
	adds r0, r5, r0
	ldr r3, [r0]
	ldrb r2, [r4, #0xa]
_0803B4D4:
	adds r0, r3, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _0803B4E8
	movs r0, #0
	b _0803B4FE
	.align 2, 0
_0803B4E0: .4byte 0x0203E170
_0803B4E4: .4byte 0x0203E1B4
_0803B4E8:
	adds r1, #1
	cmp r1, r2
	blt _0803B4D4
_0803B4EE:
	adds r4, #0x78
	adds r5, #0x78
	movs r0, #0x78
	add ip, r0
	adds r6, #1
	cmp r6, #5
	ble _0803B4B8
	adds r0, r7, #0
_0803B4FE:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	.thumb
sub_803B504: @ 0x0803B504
	push {r4, r5, r6, r7, lr}
	movs r7, #0
	movs r6, #0
	ldr r4, _0803B53C
	movs r5, #0
	movs r0, #0xb
	adds r0, r0, r4
	mov ip, r0
_0803B514:
	mov r1, ip
	ldrb r0, [r1]
	cmp r0, #0
	beq _0803B51E
	movs r7, #1
_0803B51E:
	movs r1, #0
	mov r2, ip
	ldrb r2, [r2]
	cmp r1, r2
	bge _0803B54A
	ldr r0, _0803B540
	adds r0, r5, r0
	ldr r3, [r0]
	ldrb r2, [r4, #0xb]
_0803B530:
	adds r0, r3, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _0803B544
	movs r0, #0
	b _0803B55A
	.align 2, 0
_0803B53C: .4byte 0x0203E170
_0803B540: .4byte 0x0203E1B8
_0803B544:
	adds r1, #1
	cmp r1, r2
	blt _0803B530
_0803B54A:
	adds r4, #0x78
	adds r5, #0x78
	movs r0, #0x78
	add ip, r0
	adds r6, #1
	cmp r6, #5
	ble _0803B514
	adds r0, r7, #0
_0803B55A:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	.thumb
sub_803B560: @ 0x0803B560
	push {r4, r5, r6, r7, lr}
	movs r0, #0
	mov ip, r0
	movs r7, #0
	ldr r5, _0803B598
	movs r6, #0
	adds r4, r5, #0
	adds r4, #0xc
_0803B570:
	ldrb r0, [r4]
	cmp r0, #0
	beq _0803B57A
	movs r0, #1
	mov ip, r0
_0803B57A:
	movs r1, #0
	ldrb r0, [r4]
	cmp r1, r0
	bge _0803B5A6
	ldr r0, _0803B59C
	adds r0, r6, r0
	ldr r3, [r0]
	ldrb r2, [r5, #0xc]
_0803B58A:
	adds r0, r3, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _0803B5A0
	movs r0, #0
	b _0803B5B4
	.align 2, 0
_0803B598: .4byte 0x0203E170
_0803B59C: .4byte 0x0203E1BC
_0803B5A0:
	adds r1, #1
	cmp r1, r2
	blt _0803B58A
_0803B5A6:
	adds r5, #0x78
	adds r6, #0x78
	adds r4, #0x78
	adds r7, #1
	cmp r7, #5
	ble _0803B570
	mov r0, ip
_0803B5B4:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	.thumb
sub_803B5BC: @ 0x0803B5BC
	push {r4, r5, r6, r7, lr}
	movs r7, #0
	movs r6, #0
	ldr r4, _0803B5F4
	movs r5, #0
	movs r0, #0xd
	adds r0, r0, r4
	mov ip, r0
_0803B5CC:
	mov r1, ip
	ldrb r0, [r1]
	cmp r0, #0
	beq _0803B5D6
	movs r7, #1
_0803B5D6:
	movs r1, #0
	mov r2, ip
	ldrb r2, [r2]
	cmp r1, r2
	bge _0803B602
	ldr r0, _0803B5F8
	adds r0, r5, r0
	ldr r3, [r0]
	ldrb r2, [r4, #0xd]
_0803B5E8:
	adds r0, r3, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _0803B5FC
	movs r0, #0
	b _0803B612
	.align 2, 0
_0803B5F4: .4byte 0x0203E170
_0803B5F8: .4byte 0x0203E1C0
_0803B5FC:
	adds r1, #1
	cmp r1, r2
	blt _0803B5E8
_0803B602:
	adds r4, #0x78
	adds r5, #0x78
	movs r0, #0x78
	add ip, r0
	adds r6, #1
	cmp r6, #5
	ble _0803B5CC
	adds r0, r7, #0
_0803B612:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	.thumb
sub_803B618: @ 0x0803B618
	push {lr}
	subs r1, #9
	cmp r1, #9
	bhi _0803B6C4
	lsls r1, r1, #2
	ldr r2, _0803B62C
	adds r1, r1, r2
	ldr r1, [r1]
	mov pc, r1
	.align 2, 0
_0803B62C: .4byte 0x0803B630
_0803B630: @ jump table
	.4byte _0803B658 @ case 0
	.4byte _0803B664 @ case 1
	.4byte _0803B670 @ case 2
	.4byte _0803B6C4 @ case 3
	.4byte _0803B67C @ case 4
	.4byte _0803B688 @ case 5
	.4byte _0803B694 @ case 6
	.4byte _0803B6B8 @ case 7
	.4byte _0803B6A0 @ case 8
	.4byte _0803B6AC @ case 9
_0803B658:
	ldr r0, _0803B660
	ldrb r0, [r0]
	b _0803B6C8
	.align 2, 0
_0803B660: .4byte 0x0203E938
_0803B664:
	ldr r0, _0803B66C
	ldrb r0, [r0]
	b _0803B6C8
	.align 2, 0
_0803B66C: .4byte 0x0203E939
_0803B670:
	ldr r0, _0803B678
	ldrb r0, [r0]
	b _0803B6C8
	.align 2, 0
_0803B678: .4byte 0x0203E940
_0803B67C:
	ldr r0, _0803B684
	ldrb r0, [r0]
	b _0803B6C8
	.align 2, 0
_0803B684: .4byte 0x0203E94F
_0803B688:
	ldr r0, _0803B690
	ldrb r0, [r0]
	b _0803B6C8
	.align 2, 0
_0803B690: .4byte 0x0203E950
_0803B694:
	ldr r0, _0803B69C
	ldrb r0, [r0]
	b _0803B6C8
	.align 2, 0
_0803B69C: .4byte 0x0203E964
_0803B6A0:
	ldr r0, _0803B6A8
	ldrb r0, [r0]
	b _0803B6C8
	.align 2, 0
_0803B6A8: .4byte 0x0203E965
_0803B6AC:
	ldr r0, _0803B6B4
	ldrb r0, [r0]
	b _0803B6C8
	.align 2, 0
_0803B6B4: .4byte 0x0203E966
_0803B6B8:
	ldr r0, _0803B6C0
	ldrb r0, [r0]
	b _0803B6C8
	.align 2, 0
_0803B6C0: .4byte 0x0203E967
_0803B6C4:
	.2byte 0xEE00, 0xEE00
_0803B6C8:
	pop {r1}
	bx r1

	.thumb
sub_803B6CC: @ 0x0803B6CC
	push {r4, lr}
	movs r2, #0
	ldr r4, _0803B6F8
	ldr r0, _0803B6FC
	ldrh r1, [r0]
	movs r0, #0xc4
	muls r1, r0, r1
	adds r0, r1, r4
	ldrb r3, [r0, #3]
	cmp r2, r3
	bge _0803B706
	adds r0, r4, #0
	adds r0, #0x34
	adds r0, r1, r0
	ldr r1, [r0]
_0803B6EA:
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #0
	bne _0803B700
	movs r0, #0
	b _0803B708
	.align 2, 0
_0803B6F8: .4byte 0x0203E440
_0803B6FC: .4byte gLoadedRoomLevel
_0803B700:
	adds r2, #1
	cmp r2, r3
	blt _0803B6EA
_0803B706:
	movs r0, #1
_0803B708:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	.thumb
obj_disabled_shell_counter: @ 0x0803B710
	push {r4, lr}
	movs r2, #0
	ldr r4, _0803B740
	ldr r0, _0803B744
	ldrh r1, [r0]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r1, r0, #3
	adds r0, r1, r4
	ldrb r3, [r0, #8]
	cmp r2, r3
	bge _0803B74E
	adds r0, r4, #0
	adds r0, #0x3c
	adds r0, r1, r0
	ldr r4, [r0]
	adds r1, r3, #0
_0803B732:
	adds r0, r4, r2
	ldrb r0, [r0]
	cmp r0, #0
	bne _0803B748
	movs r0, #0
	b _0803B750
	.align 2, 0
_0803B740: .4byte 0x0203E170
_0803B744: .4byte gLoadedRoomLevel
_0803B748:
	adds r2, #1
	cmp r2, r1
	blt _0803B732
_0803B74E:
	movs r0, #1
_0803B750:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	.thumb
sub_803B758: @ 0x0803B758
	ldr r3, _0803B770
	ldr r0, _0803B774
	ldrh r2, [r0]
	lsls r0, r2, #4
	subs r0, r0, r2
	lsls r0, r0, #3
	adds r3, #0x54
	adds r0, r0, r3
	ldr r0, [r0]
	adds r0, r0, r1
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803B770: .4byte 0x0203E170
_0803B774: .4byte gLoadedRoomLevel

	.thumb
sub_803B778: @ 0x0803B778
	ldr r3, _0803B790
	ldr r0, _0803B794
	ldrh r2, [r0]
	lsls r0, r2, #4
	subs r0, r0, r2
	lsls r0, r0, #3
	adds r3, #0x44
	adds r0, r0, r3
	ldr r0, [r0]
	adds r0, r0, r1
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803B790: .4byte 0x0203E170
_0803B794: .4byte gLoadedRoomLevel

	.thumb
sub_803B798: @ 0x0803B798
	ldr r3, _0803B7B0
	ldr r0, _0803B7B4
	ldrh r2, [r0]
	lsls r0, r2, #4
	subs r0, r0, r2
	lsls r0, r0, #3
	adds r3, #0x48
	adds r0, r0, r3
	ldr r0, [r0]
	adds r0, r0, r1
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803B7B0: .4byte 0x0203E170
_0803B7B4: .4byte gLoadedRoomLevel

	.thumb
sub_803B7B8: @ 0x0803B7B8
	ldr r3, _0803B7D0
	ldr r0, _0803B7D4
	ldrh r2, [r0]
	lsls r0, r2, #4
	subs r0, r0, r2
	lsls r0, r0, #3
	adds r3, #0x4c
	adds r0, r0, r3
	ldr r0, [r0]
	adds r0, r0, r1
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803B7D0: .4byte 0x0203E170
_0803B7D4: .4byte gLoadedRoomLevel

	.thumb
sub_803B7D8: @ 0x0803B7D8
	ldr r3, _0803B7F0
	ldr r0, _0803B7F4
	ldrh r2, [r0]
	lsls r0, r2, #4
	subs r0, r0, r2
	lsls r0, r0, #3
	adds r3, #0x50
	adds r0, r0, r3
	ldr r0, [r0]
	adds r0, r0, r1
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803B7F0: .4byte 0x0203E170
_0803B7F4: .4byte gLoadedRoomLevel

	.thumb
obj_disabled_jiggy: @ 0x0803B7F8
	ldr r3, _0803B810
	ldr r0, _0803B814
	ldrh r2, [r0]
	lsls r0, r2, #4
	subs r0, r0, r2
	lsls r0, r0, #3
	adds r3, #0x1c
	adds r0, r0, r3
	ldr r0, [r0]
	adds r0, r0, r1
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803B810: .4byte 0x0203E170
_0803B814: .4byte gLoadedRoomLevel

	.thumb
obj_disabled_hollow_honeycomb: @ 0x0803B818
	ldr r3, _0803B830
	ldr r0, _0803B834
	ldrh r2, [r0]
	lsls r0, r2, #4
	subs r0, r0, r2
	lsls r0, r0, #3
	adds r3, #0x20
	adds r0, r0, r3
	ldr r0, [r0]
	adds r0, r0, r1
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803B830: .4byte 0x0203E170
_0803B834: .4byte gLoadedRoomLevel

	.thumb
obj_disabled_note: @ 0x0803B838
	ldr r3, _0803B850
	ldr r0, _0803B854
	ldrh r2, [r0]
	lsls r0, r2, #4
	subs r0, r0, r2
	lsls r0, r0, #3
	adds r3, #0x24
	adds r0, r0, r3
	ldr r0, [r0]
	adds r0, r0, r1
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803B850: .4byte 0x0203E170
_0803B854: .4byte gLoadedRoomLevel

	.thumb
sub_803B858: @ 0x0803B858
	ldr r3, _0803B870
	ldr r0, _0803B874
	ldrh r2, [r0]
	lsls r0, r2, #4
	subs r0, r0, r2
	lsls r0, r0, #3
	adds r3, #0x28
	adds r0, r0, r3
	ldr r0, [r0]
	adds r0, r0, r1
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803B870: .4byte 0x0203E170
_0803B874: .4byte gLoadedRoomLevel

	.thumb
sub_803B878: @ 0x0803B878
	ldr r3, _0803B890
	ldr r0, _0803B894
	ldrh r2, [r0]
	lsls r0, r2, #4
	subs r0, r0, r2
	lsls r0, r0, #3
	adds r3, #0x2c
	adds r0, r0, r3
	ldr r0, [r0]
	adds r0, r0, r1
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803B890: .4byte 0x0203E170
_0803B894: .4byte gLoadedRoomLevel

	.thumb
sub_803B898: @ 0x0803B898
	ldr r2, _0803B8AC
	ldr r0, _0803B8B0
	ldrh r1, [r0]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r2
	adds r0, #0x70
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803B8AC: .4byte 0x0203E170
_0803B8B0: .4byte gLoadedRoomLevel

	.thumb
sub_803B8B4: @ 0x0803B8B4
	ldr r2, _0803B8C8
	ldr r0, _0803B8CC
	ldrh r1, [r0]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r2
	adds r0, #0x71
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803B8C8: .4byte 0x0203E170
_0803B8CC: .4byte gLoadedRoomLevel

	.thumb
sub_803B8D0: @ 0x0803B8D0
	ldr r2, _0803B8E4
	ldr r0, _0803B8E8
	ldrh r1, [r0]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r2
	adds r0, #0x72
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803B8E4: .4byte 0x0203E170
_0803B8E8: .4byte gLoadedRoomLevel

	.thumb
sub_803B8EC: @ 0x0803B8EC
	ldr r2, _0803B900
	ldr r0, _0803B904
	ldrh r1, [r0]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r2
	adds r0, #0x73
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803B900: .4byte 0x0203E170
_0803B904: .4byte gLoadedRoomLevel

	.thumb
sub_803B908: @ 0x0803B908
	ldr r2, _0803B91C
	ldr r0, _0803B920
	ldrh r1, [r0]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r2
	adds r0, #0x74
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803B91C: .4byte 0x0203E170
_0803B920: .4byte gLoadedRoomLevel

	.thumb
obj_disabled_honeycomb: @ 0x0803B924
	ldr r3, _0803B93C
	ldr r0, _0803B940
	ldrh r2, [r0]
	lsls r0, r2, #4
	subs r0, r0, r2
	lsls r0, r0, #3
	adds r3, #0x30
	adds r0, r0, r3
	ldr r0, [r0]
	adds r0, r0, r1
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803B93C: .4byte 0x0203E170
_0803B940: .4byte gLoadedRoomLevel

	.thumb
sub_803B944: @ 0x0803B944
	ldr r3, _0803B95C
	ldr r0, _0803B960
	ldrh r2, [r0]
	lsls r0, r2, #4
	subs r0, r0, r2
	lsls r0, r0, #3
	adds r3, #0x64
	adds r0, r0, r3
	ldr r0, [r0]
	adds r0, r0, r1
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803B95C: .4byte 0x0203E170
_0803B960: .4byte gLoadedRoomLevel

	.thumb
sub_803B964: @ 0x0803B964
	ldr r3, _0803B97C
	ldr r0, _0803B980
	ldrh r2, [r0]
	lsls r0, r2, #4
	subs r0, r0, r2
	lsls r0, r0, #3
	adds r3, #0x68
	adds r0, r0, r3
	ldr r0, [r0]
	adds r0, r0, r1
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803B97C: .4byte 0x0203E170
_0803B980: .4byte gLoadedRoomLevel

	.thumb
sub_803B984: @ 0x0803B984
	ldr r3, _0803B99C
	ldr r0, _0803B9A0
	ldrh r2, [r0]
	lsls r0, r2, #4
	subs r0, r0, r2
	lsls r0, r0, #3
	adds r3, #0x6c
	adds r0, r0, r3
	ldr r0, [r0]
	adds r0, r0, r1
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803B99C: .4byte 0x0203E170
_0803B9A0: .4byte gLoadedRoomLevel

	.thumb
sub_803B9A4: @ 0x0803B9A4
	ldr r3, _0803B9BC
	ldr r0, _0803B9C0
	ldrh r2, [r0]
	lsls r0, r2, #4
	subs r0, r0, r2
	lsls r0, r0, #3
	adds r3, #0x34
	adds r0, r0, r3
	ldr r0, [r0]
	adds r0, r0, r1
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803B9BC: .4byte 0x0203E170
_0803B9C0: .4byte gLoadedRoomLevel

	.thumb
sub_803B9C4: @ 0x0803B9C4
	ldr r3, _0803B9DC
	ldr r0, _0803B9E0
	ldrh r2, [r0]
	lsls r0, r2, #4
	subs r0, r0, r2
	lsls r0, r0, #3
	adds r3, #0x38
	adds r0, r0, r3
	ldr r0, [r0]
	adds r0, r0, r1
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803B9DC: .4byte 0x0203E170
_0803B9E0: .4byte gLoadedRoomLevel

	.thumb
sub_803B9E4: @ 0x0803B9E4
	ldr r3, _0803B9FC
	ldr r0, _0803BA00
	ldrh r2, [r0]
	lsls r0, r2, #4
	subs r0, r0, r2
	lsls r0, r0, #3
	adds r3, #0x3c
	adds r0, r0, r3
	ldr r0, [r0]
	adds r0, r0, r1
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803B9FC: .4byte 0x0203E170
_0803BA00: .4byte gLoadedRoomLevel

	.thumb
sub_803BA04: @ 0x0803BA04
	ldr r3, _0803BA1C
	ldr r0, _0803BA20
	ldrh r2, [r0]
	lsls r0, r2, #4
	subs r0, r0, r2
	lsls r0, r0, #3
	adds r3, #0x40
	adds r0, r0, r3
	ldr r0, [r0]
	adds r0, r0, r1
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803BA1C: .4byte 0x0203E170
_0803BA20: .4byte gLoadedRoomLevel

	.thumb
sub_803BA24: @ 0x0803BA24
	ldr r2, _0803BA3C
	ldr r0, _0803BA40
	ldrh r3, [r0]
	movs r0, #0xc4
	muls r0, r3, r0
	adds r2, #0x28
	adds r0, r0, r2
	ldr r0, [r0]
	adds r0, r0, r1
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803BA3C: .4byte 0x0203E440
_0803BA40: .4byte gLoadedRoomLevel

	.thumb
sub_803BA44: @ 0x0803BA44
	ldr r2, _0803BA5C
	ldr r0, _0803BA60
	ldrh r3, [r0]
	movs r0, #0xc4
	muls r0, r3, r0
	adds r2, #0x2c
	adds r0, r0, r2
	ldr r0, [r0]
	adds r0, r0, r1
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803BA5C: .4byte 0x0203E440
_0803BA60: .4byte gLoadedRoomLevel

	.thumb
sub_803BA64: @ 0x0803BA64
	ldr r2, _0803BA7C
	ldr r0, _0803BA80
	ldrh r3, [r0]
	movs r0, #0xc4
	muls r0, r3, r0
	adds r2, #0x30
	adds r0, r0, r2
	ldr r0, [r0]
	adds r0, r0, r1
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803BA7C: .4byte 0x0203E440
_0803BA80: .4byte gLoadedRoomLevel

	.thumb
sub_803BA84: @ 0x0803BA84
	ldr r2, _0803BA98
	ldr r0, _0803BA9C
	ldrh r0, [r0]
	lsls r0, r0, #4
	adds r2, #4
	adds r0, r0, r2
	ldr r0, [r0]
	adds r0, r0, r1
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803BA98: .4byte 0x0203E8D8
_0803BA9C: .4byte gLoadedRoomLevel

	.thumb
sub_803BAA0: @ 0x0803BAA0
	ldr r2, _0803BAB8
	ldr r0, _0803BABC
	ldrh r3, [r0]
	movs r0, #0xc4
	muls r0, r3, r0
	adds r2, #0x34
	adds r0, r0, r2
	ldr r0, [r0]
	adds r0, r0, r1
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803BAB8: .4byte 0x0203E440
_0803BABC: .4byte gLoadedRoomLevel

	.thumb
sub_803BAC0: @ 0x0803BAC0
	ldr r0, _0803BAC8
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803BAC8: .4byte 0x0203E974

	.thumb
sub_803BACC: @ 0x0803BACC
	ldr r0, _0803BAD4
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803BAD4: .4byte 0x0203E971

	.thumb
sub_803BAD8: @ 0x0803BAD8
	push {lr}
	movs r1, #0
	ldr r0, _0803BAEC
	ldrb r0, [r0]
	cmp r0, #0
	bne _0803BAE6
	movs r1, #1
_0803BAE6:
	adds r0, r1, #0
	pop {r1}
	bx r1
	.align 2, 0
_0803BAEC: .4byte 0x0203E948

	.thumb
obj_disabled_none: @ 0x0803BAF0
	movs r0, #0
	bx lr

	.thumb
sub_803BAF4: @ 0x0803BAF4
	push {r4, lr}
	ldr r0, _0803BB30
	ldr r2, _0803BB34
	ldr r3, _0803BB38
	ldrh r1, [r3]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	adds r1, #1
	movs r4, #0
	strb r1, [r0, #5]
	ldr r2, _0803BB3C
	ldrh r1, [r3]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	strb r1, [r0, #4]
	bl sub_0800BCD4
	cmp r0, #0
	bne _0803BB22
	.2byte 0xEE00, 0xEE00
_0803BB22:
	ldr r0, _0803BB40
	strb r4, [r0]
	ldr r0, _0803BB44
	strb r4, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803BB30: .4byte stru_3002950
_0803BB34: .4byte 0x080CEE5C
_0803BB38: .4byte gLoadedRoomLevel
_0803BB3C: .4byte 0x080CEE74
_0803BB40: .4byte 0x0203F9A2
_0803BB44: .4byte 0x0203DFC8

	.thumb
sub_803BB48: @ 0x0803BB48
	push {lr}
	ldr r0, _0803BB80
	ldr r2, _0803BB84
	ldr r3, _0803BB88
	ldrh r1, [r3]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	adds r1, #1
	strb r1, [r0, #5]
	ldr r2, _0803BB8C
	ldrh r1, [r3]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	strb r1, [r0, #4]
	bl sub_0800BCD4
	cmp r0, #0
	bne _0803BB74
	.2byte 0xEE00, 0xEE00
_0803BB74:
	ldr r1, _0803BB90
	movs r0, #0
	strb r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_0803BB80: .4byte stru_3002950
_0803BB84: .4byte 0x080CEE8C
_0803BB88: .4byte gLoadedRoomLevel
_0803BB8C: .4byte 0x080CEEA4
_0803BB90: .4byte 0x0203F9A2

	.thumb
sub_803BB94: @ 0x0803BB94
	push {lr}
	ldr r0, _0803BBD4
	ldr r0, [r0]
	adds r0, #0x24
	movs r1, #0x52
	strb r1, [r0]
	movs r0, #1
	bl start_npc_dialogue
	movs r0, #0xd4
	lsls r0, r0, #1
	movs r1, #0
	movs r2, #4
	movs r3, #0
	bl sub_8034460
	ldr r3, _0803BBD8
	ldrb r2, [r3, #0x13]
	ldrb r1, [r3, #0x15]
	ldrb r0, [r3, #0x14]
	adds r0, #1
	muls r1, r0, r1
	cmp r2, r1
	bge _0803BBCE
	strb r1, [r3, #0x13]
	ldrb r1, [r3, #0x13]
	movs r0, #0x38
	bl hud_set_value
_0803BBCE:
	pop {r0}
	bx r0
	.align 2, 0
_0803BBD4: .4byte dword_203DFDC
_0803BBD8: .4byte gGameStatus

	.thumb
sub_803BBDC: @ 0x0803BBDC
	push {lr}
	movs r0, #1
	bl start_npc_dialogue
	pop {r0}
	bx r0

	.thumb
sub_803BBE8: @ 0x0803BBE8
	push {lr}
	movs r0, #1
	bl start_npc_dialogue
	pop {r0}
	bx r0

	.thumb
sub_803BBF4: @ 0x0803BBF4
	push {lr}
	movs r0, #1
	bl start_npc_dialogue
	pop {r0}
	bx r0

	.thumb
sub_803BC00: @ 0x0803BC00
	push {lr}
	movs r0, #1
	bl start_npc_dialogue
	pop {r0}
	bx r0

	.thumb
sub_803BC0C: @ 0x0803BC0C
	push {lr}
	movs r0, #1
	bl start_npc_dialogue
	pop {r0}
	bx r0

	.thumb
sub_803BC18: @ 0x0803BC18
	push {lr}
	movs r0, #1
	bl start_npc_dialogue
	pop {r0}
	bx r0

	.thumb
sub_803BC24: @ 0x0803BC24
	push {lr}
	movs r0, #1
	bl start_npc_dialogue
	pop {r0}
	bx r0

	.thumb
sub_803BC30: @ 0x0803BC30
	push {lr}
	movs r0, #1
	bl start_npc_dialogue
	pop {r0}
	bx r0

	.thumb
sub_803BC3C: @ 0x0803BC3C
	push {lr}
	movs r0, #1
	bl start_npc_dialogue
	pop {r0}
	bx r0

	.thumb
sub_803BC48: @ 0x0803BC48
	push {lr}
	movs r0, #1
	bl start_npc_dialogue
	pop {r0}
	bx r0

	.thumb
sub_803BC54: @ 0x0803BC54
	ldr r1, _0803BC5C
	movs r0, #1
	strb r0, [r1]
	bx lr
	.align 2, 0
_0803BC5C: .4byte 0x0203E970

	.thumb
sub_803BC60: @ 0x0803BC60
	ldr r1, _0803BC68
	movs r0, #1
	strb r0, [r1]
	bx lr
	.align 2, 0
_0803BC68: .4byte 0x0203E96F

	.thumb
sub_803BC6C: @ 0x0803BC6C
	ldr r1, _0803BC74
	movs r0, #1
	strb r0, [r1]
	bx lr
	.align 2, 0
_0803BC74: .4byte 0x0203E96E

	.thumb
sub_803BC78: @ 0x0803BC78
	push {r4, lr}
	ldr r0, _0803BCB0
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803BCA8
	ldr r2, _0803BCB4
	movs r1, #0x92
	lsls r1, r1, #3
	adds r0, r2, r1
	ldrh r0, [r0]
	ldr r3, _0803BCB8
	ldr r4, _0803BCBC
	adds r1, r2, r4
	ldrb r3, [r3]
	adds r1, r1, r3
	ldrb r1, [r1]
	ldr r3, _0803BCC0
	adds r2, r2, r3
	ldr r2, [r2]
	movs r4, #0x80
	lsls r4, r4, #9
	adds r2, r2, r4
	bl audio_new_fx
_0803BCA8:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803BCB0: .4byte gCanPlaySfx
_0803BCB4: .4byte 0x080CE440
_0803BCB8: .4byte gSfxVolume
_0803BCBC: .4byte 0x00000492
_0803BCC0: .4byte 0x00000494

	.thumb
sub_803BCC4: @ 0x0803BCC4
	push {r4, lr}
	ldr r0, _0803BCFC
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803BCF4
	ldr r2, _0803BD00
	movs r1, #0x92
	lsls r1, r1, #3
	adds r0, r2, r1
	ldrh r0, [r0]
	ldr r3, _0803BD04
	ldr r4, _0803BD08
	adds r1, r2, r4
	ldrb r3, [r3]
	adds r1, r1, r3
	ldrb r1, [r1]
	ldr r3, _0803BD0C
	adds r2, r2, r3
	ldr r2, [r2]
	movs r4, #0x80
	lsls r4, r4, #9
	adds r2, r2, r4
	bl audio_new_fx
_0803BCF4:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803BCFC: .4byte gCanPlaySfx
_0803BD00: .4byte 0x080CE440
_0803BD04: .4byte gSfxVolume
_0803BD08: .4byte 0x00000492
_0803BD0C: .4byte 0x00000494

	.thumb
sub_803BD10: @ 0x0803BD10
	push {r4, lr}
	ldr r0, _0803BD48
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803BD40
	ldr r2, _0803BD4C
	movs r1, #0x92
	lsls r1, r1, #3
	adds r0, r2, r1
	ldrh r0, [r0]
	ldr r3, _0803BD50
	ldr r4, _0803BD54
	adds r1, r2, r4
	ldrb r3, [r3]
	adds r1, r1, r3
	ldrb r1, [r1]
	ldr r3, _0803BD58
	adds r2, r2, r3
	ldr r2, [r2]
	movs r4, #0x80
	lsls r4, r4, #9
	adds r2, r2, r4
	bl audio_new_fx
_0803BD40:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803BD48: .4byte gCanPlaySfx
_0803BD4C: .4byte 0x080CE440
_0803BD50: .4byte gSfxVolume
_0803BD54: .4byte 0x00000492
_0803BD58: .4byte 0x00000494

	.thumb
sub_803BD5C: @ 0x0803BD5C
	push {r4, lr}
	ldr r0, _0803BD94
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803BD8C
	ldr r2, _0803BD98
	movs r1, #0x90
	lsls r1, r1, #3
	adds r0, r2, r1
	ldrh r0, [r0]
	ldr r3, _0803BD9C
	ldr r4, _0803BDA0
	adds r1, r2, r4
	ldrb r3, [r3]
	adds r1, r1, r3
	ldrb r1, [r1]
	ldr r3, _0803BDA4
	adds r2, r2, r3
	ldr r2, [r2]
	movs r4, #0x80
	lsls r4, r4, #9
	adds r2, r2, r4
	bl audio_new_fx
_0803BD8C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803BD94: .4byte gCanPlaySfx
_0803BD98: .4byte 0x080CE440
_0803BD9C: .4byte gSfxVolume
_0803BDA0: .4byte 0x00000482
_0803BDA4: .4byte 0x00000484

	.thumb
sub_803BDA8: @ 0x0803BDA8
	push {r4, lr}
	ldr r0, _0803BDE0
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803BDD8
	ldr r2, _0803BDE4
	movs r1, #0x91
	lsls r1, r1, #3
	adds r0, r2, r1
	ldrh r0, [r0]
	ldr r3, _0803BDE8
	ldr r4, _0803BDEC
	adds r1, r2, r4
	ldrb r3, [r3]
	adds r1, r1, r3
	ldrb r1, [r1]
	ldr r3, _0803BDF0
	adds r2, r2, r3
	ldr r2, [r2]
	movs r4, #0x80
	lsls r4, r4, #9
	adds r2, r2, r4
	bl audio_new_fx
_0803BDD8:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803BDE0: .4byte gCanPlaySfx
_0803BDE4: .4byte 0x080CE440
_0803BDE8: .4byte gSfxVolume
_0803BDEC: .4byte 0x0000048A
_0803BDF0: .4byte 0x0000048C

	.thumb
sub_803BDF4: @ 0x0803BDF4
	push {lr}
	ldr r0, _0803BE14
	movs r1, #1
	movs r2, #1
	bl sub_0800F02C
	movs r0, #0xb3
	lsls r0, r0, #1
	movs r1, #0
	movs r2, #6
	movs r3, #0
	bl sub_8034460
	pop {r0}
	bx r0
	.align 2, 0
_0803BE14: .4byte 0x0203E984

	.thumb
sub_803BE18: @ 0x0803BE18
	push {lr}
	ldr r0, _0803BE30
	ldr r0, [r0]
	cmp r0, #0
	beq _0803BE2C
	movs r0, #4
	movs r1, #4
	movs r2, #1
	bl load_room_directly
_0803BE2C:
	pop {r0}
	bx r0
	.align 2, 0
_0803BE30: .4byte 0x0203E984

	.thumb
sub_803BE34: @ 0x0803BE34
	push {lr}
	ldr r0, _0803BE54
	movs r1, #1
	movs r2, #1
	bl sub_0800F02C
	movs r0, #0xb4
	lsls r0, r0, #1
	movs r1, #0
	movs r2, #6
	movs r3, #0
	bl sub_8034460
	pop {r0}
	bx r0
	.align 2, 0
_0803BE54: .4byte 0x0203E984

	.thumb
sub_803BE58: @ 0x0803BE58
	push {lr}
	ldr r0, _0803BE70
	ldr r0, [r0]
	cmp r0, #0
	beq _0803BE6C
	movs r0, #0xd
	movs r1, #1
	movs r2, #1
	bl load_room_directly
_0803BE6C:
	pop {r0}
	bx r0
	.align 2, 0
_0803BE70: .4byte 0x0203E984

	.thumb
sub_803BE74: @ 0x0803BE74
	push {lr}
	ldr r0, _0803BE94
	movs r1, #1
	movs r2, #1
	bl sub_0800F02C
	movs r0, #0xb5
	lsls r0, r0, #1
	movs r1, #0
	movs r2, #6
	movs r3, #0
	bl sub_8034460
	pop {r0}
	bx r0
	.align 2, 0
_0803BE94: .4byte 0x0203E984

	.thumb
sub_803BE98: @ 0x0803BE98
	push {lr}
	ldr r0, _0803BEB0
	ldr r0, [r0]
	cmp r0, #0
	beq _0803BEAC
	movs r0, #0x1b
	movs r1, #4
	movs r2, #1
	bl load_room_directly
_0803BEAC:
	pop {r0}
	bx r0
	.align 2, 0
_0803BEB0: .4byte 0x0203E984

	.thumb
sub_803BEB4: @ 0x0803BEB4
	push {lr}
	ldr r0, _0803BED8
	movs r1, #0
	movs r2, #0
	bl sub_0800F02C
	movs r0, #0xb1
	lsls r0, r0, #1
	movs r1, #0
	movs r2, #6
	movs r3, #0
	bl sub_8034460
	ldr r1, _0803BEDC
	movs r0, #1
	strb r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_0803BED8: .4byte 0x0203E984
_0803BEDC: .4byte 0x0203E16A

	.thumb
sub_803BEE0: @ 0x0803BEE0
	push {lr}
	ldr r1, _0803BF14
	movs r0, #0
	strb r0, [r1]
	ldr r1, _0803BF18
	movs r0, #1
	strb r0, [r1]
	ldr r1, _0803BF1C
	ldr r2, _0803BF20
	adds r0, r2, #0
	strh r0, [r1]
	ldr r0, _0803BF24
	ldr r0, [r0]
	cmp r0, #0
	beq _0803BF2C
	ldr r0, _0803BF28
	bl sub_0802FEDC
	movs r0, #0xfc
	movs r1, #0
	movs r2, #4
	movs r3, #0
	bl sub_8034460
	b _0803BF34
	.align 2, 0
_0803BF14: .4byte 0x0203E16A
_0803BF18: .4byte gReadKeysFromDemoInput
_0803BF1C: .4byte gKeyInput
_0803BF20: .4byte 0x000003FF
_0803BF24: .4byte 0x0203E984
_0803BF28: .4byte 0x00000163
_0803BF2C:
	movs r0, #0xb2
	lsls r0, r0, #1
	bl sub_0802FEDC
_0803BF34:
	pop {r0}
	bx r0

	.thumb
sub_803BF38: @ 0x0803BF38
	push {lr}
	ldr r1, _0803BF54
	movs r0, #0
	strb r0, [r1]
	ldr r0, _0803BF58
	ldr r0, [r0]
	cmp r0, #0
	beq _0803BF4E
	ldr r1, _0803BF5C
	movs r0, #1
	strb r0, [r1]
_0803BF4E:
	pop {r0}
	bx r0
	.align 2, 0
_0803BF54: .4byte 0x0203E16B
_0803BF58: .4byte 0x0203E984
_0803BF5C: .4byte 0x0203FA34

	.thumb
sub_803BF60: @ 0x0803BF60
	push {lr}
	ldr r0, _0803BF84
	movs r1, #2
	movs r2, #0
	bl sub_0800F02C
	movs r0, #0xb0
	lsls r0, r0, #1
	movs r1, #0
	movs r2, #6
	movs r3, #0
	bl sub_8034460
	ldr r1, _0803BF88
	movs r0, #1
	strb r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_0803BF84: .4byte 0x0203E984
_0803BF88: .4byte 0x0203E16B

	.thumb
sub_803BF8C: @ 0x0803BF8C
	push {lr}
	ldr r0, _0803BFB0
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803BFAC
	ldr r0, _0803BFB4
	ldr r0, [r0]
	movs r3, #0
	strb r3, [r0, #1]
	ldr r2, _0803BFB8
	ldr r1, [r2]
	ldrb r0, [r1, #1]
	subs r0, #1
	strb r0, [r1, #1]
	ldr r0, [r2]
	strb r3, [r0, #4]
_0803BFAC:
	pop {r0}
	bx r0
	.align 2, 0
_0803BFB0: .4byte 0x0203E138
_0803BFB4: .4byte 0x0203E998
_0803BFB8: .4byte 0x0203E99C

	.thumb
sub_803BFBC: @ 0x0803BFBC
	push {lr}
	ldr r0, _0803BFD0
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803BFD8
	ldr r2, _0803BFD4
	ldr r1, [r2]
	movs r0, #1
	b _0803BFDE
	.align 2, 0
_0803BFD0: .4byte 0x0203E138
_0803BFD4: .4byte 0x0203E998
_0803BFD8:
	ldr r2, _0803BFF4
	ldr r1, [r2]
	ldrh r0, [r1, #4]
_0803BFDE:
	strh r0, [r1, #6]
	ldr r2, [r2]
	movs r1, #6
	ldrsh r0, [r2, r1]
	cmp r0, #0x3b
	ble _0803BFF0
	movs r1, #0
	bl timer_start
_0803BFF0:
	pop {r0}
	bx r0
	.align 2, 0
_0803BFF4: .4byte 0x0203E998

	.thumb
sub_803BFF8: @ 0x0803BFF8
	push {lr}
	ldr r1, _0803C018
	movs r0, #1
	strb r0, [r1]
	movs r0, #0xa6
	lsls r0, r0, #1
	bl sub_0802FEDC
	ldr r0, _0803C01C
	movs r1, #0
	movs r2, #4
	movs r3, #0
	bl sub_8034460
	pop {r0}
	bx r0
	.align 2, 0
_0803C018: .4byte 0x0203E97C
_0803C01C: .4byte 0x00000149

	.thumb
sub_803C020: @ 0x0803C020
	push {lr}
	ldr r2, _0803C038
	ldr r1, _0803C03C
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0x23
	strh r0, [r1]
	bl sub_8063468
	pop {r0}
	bx r0
	.align 2, 0
_0803C038: .4byte gPreviousPlayerState
_0803C03C: .4byte gPlayerState

	.thumb
sub_803C040: @ 0x0803C040
	push {lr}
	ldr r1, _0803C074
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r2, _0803C078
	ldr r0, _0803C07C
	ldr r1, [r0]
	subs r1, #1
	lsls r1, r1, #2
	adds r2, r1, r2
	ldr r0, [r2]
	ldr r2, _0803C080
	adds r1, r1, r2
	ldr r1, [r1]
	movs r2, #0
	bl load_room_directly
	ldr r1, _0803C084
	movs r0, #1
	strb r0, [r1]
	ldr r1, _0803C088
	movs r0, #0
	strb r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_0803C074: .4byte 0x02001104
_0803C078: .4byte 0x080CEF7C
_0803C07C: .4byte 0x02001108
_0803C080: .4byte 0x080CEF84
_0803C084: .4byte byte_20021C4
_0803C088: .4byte 0x0203DFC8

	.thumb
sub_803C08C: @ 0x0803C08C
	push {r4, lr}
	movs r0, #0
	bl sub_8016C78
	ldr r0, _0803C0B8
	ldr r0, [r0]
	adds r0, #0x65
	movs r4, #1
	strb r4, [r0]
	ldr r0, _0803C0BC
	strb r4, [r0]
	movs r1, #1
	rsbs r1, r1, #0
	movs r0, #0
	movs r2, #2
	bl hurt_player
	ldr r0, _0803C0C0
	strb r4, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803C0B8: .4byte 0x0203F8B4
_0803C0BC: .4byte 0x0203F8BD
_0803C0C0: .4byte byte_20021C4

	.thumb
sub_803C0C4: @ 0x0803C0C4
	push {lr}
	ldr r1, _0803C0E0
	ldr r0, _0803C0E4
	ldrh r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _0803C0DA
	bl start_script
_0803C0DA:
	pop {r0}
	bx r0
	.align 2, 0
_0803C0E0: .4byte 0x080CEE2C
_0803C0E4: .4byte gLoadedRoomLevel

	.thumb
sub_803C0E8: @ 0x0803C0E8
	ldr r1, _0803C0F0
	movs r0, #1
	strb r0, [r1]
	bx lr
	.align 2, 0
_0803C0F0: .4byte 0x0203E962

	.thumb
sub_803C0F4: @ 0x0803C0F4
	ldr r1, _0803C0FC
	movs r0, #1
	strb r0, [r1]
	bx lr
	.align 2, 0
_0803C0FC: .4byte 0x0203E963

	.thumb
sub_803C100: @ 0x0803C100
	ldr r2, _0803C118
	ldr r0, _0803C11C
	ldrh r3, [r0]
	movs r0, #0xc4
	muls r0, r3, r0
	adds r2, #0x74
	adds r0, r0, r2
	ldr r0, [r0]
	adds r0, r0, r1
	movs r1, #1
	strb r1, [r0]
	bx lr
	.align 2, 0
_0803C118: .4byte 0x0203E440
_0803C11C: .4byte gLoadedRoomLevel

	.thumb
sub_803C120: @ 0x0803C120
	ldr r2, _0803C138
	ldr r0, _0803C13C
	ldrh r3, [r0]
	movs r0, #0xc4
	muls r0, r3, r0
	adds r2, #0x78
	adds r0, r0, r2
	ldr r0, [r0]
	adds r0, r0, r1
	movs r1, #1
	strb r1, [r0]
	bx lr
	.align 2, 0
_0803C138: .4byte 0x0203E440
_0803C13C: .4byte gLoadedRoomLevel

	.thumb
sub_803C140: @ 0x0803C140
	push {lr}
	movs r0, #0xb
	bl sub_8034650
	ldr r1, _0803C154
	movs r0, #1
	strb r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_0803C154: .4byte 0x020021BE

	.thumb
sub_803C158: @ 0x0803C158
	ldr r0, _0803C164
	ldrb r1, [r0]
	movs r2, #1
	orrs r1, r2
	strb r1, [r0]
	bx lr
	.align 2, 0
_0803C164: .4byte 0x0203E93B

	.thumb
sub_803C168: @ 0x0803C168
	ldr r2, _0803C17C
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	ldr r1, _0803C180
	movs r0, #0
	str r0, [r1]
	bx lr
	.align 2, 0
_0803C17C: .4byte 0x0203E93B
_0803C180: .4byte 0x0203E980

	.thumb
sub_803C184: @ 0x0803C184
	ldr r0, _0803C190
	ldrb r1, [r0]
	movs r2, #4
	orrs r1, r2
	strb r1, [r0]
	bx lr
	.align 2, 0
_0803C190: .4byte 0x0203E93B

	.thumb
sub_803C194: @ 0x0803C194
	ldr r0, _0803C1A0
	ldrb r1, [r0]
	movs r2, #8
	orrs r1, r2
	strb r1, [r0]
	bx lr
	.align 2, 0
_0803C1A0: .4byte 0x0203E93B

	.thumb
sub_803C1A4: @ 0x0803C1A4
	ldr r0, _0803C1B0
	ldrb r1, [r0]
	movs r2, #0x10
	orrs r1, r2
	strb r1, [r0]
	bx lr
	.align 2, 0
_0803C1B0: .4byte 0x0203E93B

	.thumb
sub_803C1B4: @ 0x0803C1B4
	ldr r0, _0803C1C0
	ldrb r1, [r0]
	movs r2, #0x20
	orrs r1, r2
	strb r1, [r0]
	bx lr
	.align 2, 0
_0803C1C0: .4byte 0x0203E93B

	.thumb
sub_803C1C4: @ 0x0803C1C4
	push {r4, r5, lr}
	adds r5, r1, #0
	ldr r0, _0803C1DC
	ldrh r0, [r0]
	cmp r0, #5
	bls _0803C1D2
	b _0803C344
_0803C1D2:
	lsls r0, r0, #2
	ldr r1, _0803C1E0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0803C1DC: .4byte gLoadedRoomLevel
_0803C1E0: .4byte 0x0803C1E4
_0803C1E4: @ jump table
	.4byte _0803C2D8 @ case 0
	.4byte _0803C1FC @ case 1
	.4byte _0803C228 @ case 2
	.4byte _0803C25C @ case 3
	.4byte _0803C288 @ case 4
	.4byte _0803C2AC @ case 5
_0803C1FC:
	ldr r2, _0803C220
	ldrb r1, [r2]
	movs r0, #0xfe
	ands r0, r1
	strb r0, [r2]
	movs r0, #0x44
	bl start_script
	ldr r0, _0803C224
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_8034460
	movs r0, #0x6c
	bl sub_8029C30
	b _0803C320
	.align 2, 0
_0803C220: .4byte 0x0203E93C
_0803C224: .4byte 0x0000011F
_0803C228:
	ldr r2, _0803C254
	ldrb r1, [r2]
	movs r0, #0xfd
	ands r0, r1
	strb r0, [r2]
	ldr r1, _0803C258
	movs r0, #1
	str r0, [r1]
	movs r0, #0x53
	bl start_script
	movs r0, #0x90
	lsls r0, r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_8034460
	movs r0, #0x6c
	bl sub_8029C30
	b _0803C320
	.align 2, 0
_0803C254: .4byte 0x0203E93C
_0803C258: .4byte 0x0203E980
_0803C25C:
	ldr r2, _0803C280
	ldrb r1, [r2]
	movs r0, #0xfb
	ands r0, r1
	strb r0, [r2]
	movs r0, #0x65
	bl start_script
	ldr r0, _0803C284
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_8034460
	movs r0, #0x6c
	bl sub_8029C30
	b _0803C320
	.align 2, 0
_0803C280: .4byte 0x0203E93C
_0803C284: .4byte 0x00000121
_0803C288:
	ldr r2, _0803C2A4
	ldrb r1, [r2]
	movs r0, #0xf7
	ands r0, r1
	strb r0, [r2]
	ldr r0, _0803C2A8
	movs r1, #0
	bl run_obj_behavior
	movs r0, #0x6c
	bl sub_8029C30
	b _0803C320
	.align 2, 0
_0803C2A4: .4byte 0x0203E93C
_0803C2A8: .4byte 0x00000127
_0803C2AC:
	ldr r2, _0803C2D4
	ldrb r1, [r2]
	movs r0, #0xef
	ands r0, r1
	strb r0, [r2]
	movs r0, #0x8d
	bl start_script
	movs r0, #0x94
	lsls r0, r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_8034460
	movs r0, #0x6c
	bl sub_8029C30
	b _0803C320
	.align 2, 0
_0803C2D4: .4byte 0x0203E93C
_0803C2D8:
	ldr r1, _0803C328
	ldr r4, _0803C32C
	ldr r0, [r4]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl start_script
	ldr r1, _0803C330
	movs r0, #0
	strb r0, [r1]
	ldr r0, _0803C334
	ldr r0, [r0]
	adds r0, r0, r5
	ldrb r0, [r0]
	bl sub_804888C
	ldr r0, [r4]
	cmp r0, #2
	bne _0803C348
	ldr r0, _0803C338
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_8034460
	ldr r2, _0803C33C
	ldrb r1, [r2]
	movs r0, #0xdf
	ands r0, r1
	strb r0, [r2]
	ldr r2, _0803C340
	ldrb r0, [r2]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2]
_0803C320:
	movs r0, #0x6d
	bl sub_8029C30
	b _0803C348
	.align 2, 0
_0803C328: .4byte 0x080CF2F4
_0803C32C: .4byte 0x02001104
_0803C330: .4byte 0x0203F8BD
_0803C334: .4byte 0x0203DFB8
_0803C338: .4byte 0x00000195
_0803C33C: .4byte 0x0203E93C
_0803C340: .4byte 0x0203E93B
_0803C344:
	.2byte 0xEE00, 0xEE00
_0803C348:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	.thumb
sub_803C350: @ 0x0803C350
	push {lr}
	bl sub_8025000
	pop {r0}
	bx r0
	.align 2, 0

	.thumb
sub_803C35C: @ 0x0803C35C
	ldr r2, _0803C374
	ldr r0, _0803C378
	ldrh r1, [r0]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r2
	adds r0, #0x75
	movs r1, #1
	strb r1, [r0]
	bx lr
	.align 2, 0
_0803C374: .4byte 0x0203E170
_0803C378: .4byte gLoadedRoomLevel

	.thumb
sub_803C37C: @ 0x0803C37C
	push {lr}
	movs r0, #0x88
	lsls r0, r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_8034460
	pop {r0}
	bx r0

	.thumb
sub_803C390: @ 0x0803C390
	push {lr}
	bl sub_803938C
	bl sub_8039210
	ldr r1, _0803C3C4
	ldrb r0, [r1]
	cmp r0, #0
	beq _0803C3BA
	ldr r1, _0803C3C8
	ldrb r0, [r1]
	cmp r0, #0
	beq _0803C3BA
	ldr r1, _0803C3CC
	ldrb r0, [r1]
	cmp r0, #0
	beq _0803C3BA
	ldr r1, _0803C3D0
	ldrb r0, [r1]
	cmp r0, #0
	bne _0803C3BE
_0803C3BA:
	movs r0, #1
	strb r0, [r1]
_0803C3BE:
	pop {r0}
	bx r0
	.align 2, 0
_0803C3C4: .4byte 0x0203E977
_0803C3C8: .4byte 0x0203E978
_0803C3CC: .4byte 0x0203E979
_0803C3D0: .4byte 0x0203E97A

	.thumb
sub_803C3D4: @ 0x0803C3D4
	ldr r1, _0803C3E4
	movs r0, #1
	strb r0, [r1]
	ldr r1, _0803C3E8
	movs r0, #0
	strb r0, [r1]
	bx lr
	.align 2, 0
_0803C3E4: .4byte 0x0203E961
_0803C3E8: .4byte 0x0203E976

	.thumb
sub_803C3EC: @ 0x0803C3EC
	push {lr}
	ldr r2, _0803C424
	ldr r0, _0803C428
	ldrh r3, [r0]
	movs r0, #0xc4
	muls r0, r3, r0
	adds r2, #0x7c
	adds r0, r0, r2
	ldr r0, [r0]
	adds r0, r0, r1
	movs r2, #1
	strb r2, [r0]
	ldr r1, _0803C42C
	ldrb r0, [r1]
	cmp r0, #0
	bne _0803C41A
	strb r2, [r1]
	movs r0, #0xe1
	lsls r0, r0, #4
	ldr r2, _0803C430
	movs r1, #0
	bl timer_start_with_callback
_0803C41A:
	bl sub_80394C0
	pop {r0}
	bx r0
	.align 2, 0
_0803C424: .4byte 0x0203E440
_0803C428: .4byte gLoadedRoomLevel
_0803C42C: .4byte 0x0203E975
_0803C430: .4byte 0x0803938D

	.thumb
sub_803C434: @ 0x0803C434
	push {lr}
	ldr r2, _0803C46C
	ldr r0, _0803C470
	ldrh r3, [r0]
	movs r0, #0xc4
	muls r0, r3, r0
	adds r2, #0x80
	adds r0, r0, r2
	ldr r0, [r0]
	adds r0, r0, r1
	movs r2, #1
	strb r2, [r0]
	ldr r1, _0803C474
	ldrb r0, [r1]
	cmp r0, #0
	bne _0803C462
	strb r2, [r1]
	movs r0, #0xe1
	lsls r0, r0, #4
	ldr r2, _0803C478
	movs r1, #0
	bl timer_start_with_callback
_0803C462:
	bl sub_80394C0
	pop {r0}
	bx r0
	.align 2, 0
_0803C46C: .4byte 0x0203E440
_0803C470: .4byte gLoadedRoomLevel
_0803C474: .4byte 0x0203E975
_0803C478: .4byte 0x0803938D

	.thumb
sub_803C47C: @ 0x0803C47C
	push {lr}
	ldr r2, _0803C4B4
	ldr r0, _0803C4B8
	ldrh r3, [r0]
	movs r0, #0xc4
	muls r0, r3, r0
	adds r2, #0x84
	adds r0, r0, r2
	ldr r0, [r0]
	adds r0, r0, r1
	movs r2, #1
	strb r2, [r0]
	ldr r1, _0803C4BC
	ldrb r0, [r1]
	cmp r0, #0
	bne _0803C4AA
	strb r2, [r1]
	movs r0, #0xe1
	lsls r0, r0, #4
	ldr r2, _0803C4C0
	movs r1, #0
	bl timer_start_with_callback
_0803C4AA:
	bl sub_80394C0
	pop {r0}
	bx r0
	.align 2, 0
_0803C4B4: .4byte 0x0203E440
_0803C4B8: .4byte gLoadedRoomLevel
_0803C4BC: .4byte 0x0203E975
_0803C4C0: .4byte 0x0803938D

	.thumb
sub_803C4C4: @ 0x0803C4C4
	push {lr}
	ldr r2, _0803C4FC
	ldr r0, _0803C500
	ldrh r3, [r0]
	movs r0, #0xc4
	muls r0, r3, r0
	adds r2, #0x88
	adds r0, r0, r2
	ldr r0, [r0]
	adds r0, r0, r1
	movs r2, #1
	strb r2, [r0]
	ldr r1, _0803C504
	ldrb r0, [r1]
	cmp r0, #0
	bne _0803C4F2
	strb r2, [r1]
	movs r0, #0xe1
	lsls r0, r0, #4
	ldr r2, _0803C508
	movs r1, #0
	bl timer_start_with_callback
_0803C4F2:
	bl sub_80394C0
	pop {r0}
	bx r0
	.align 2, 0
_0803C4FC: .4byte 0x0203E440
_0803C500: .4byte gLoadedRoomLevel
_0803C504: .4byte 0x0203E975
_0803C508: .4byte 0x0803938D

	.thumb
sub_803C50C: @ 0x0803C50C
	ldr r1, _0803C514
	movs r0, #1
	strb r0, [r1]
	bx lr
	.align 2, 0
_0803C514: .4byte 0x0203E95D

	.thumb
sub_803C518: @ 0x0803C518
	ldr r1, _0803C520
	movs r0, #1
	strb r0, [r1]
	bx lr
	.align 2, 0
_0803C520: .4byte 0x0203E95E

	.thumb
sub_803C524: @ 0x0803C524
	ldr r1, _0803C52C
	movs r0, #1
	strb r0, [r1]
	bx lr
	.align 2, 0
_0803C52C: .4byte 0x0203E95F

	.thumb
sub_803C530: @ 0x0803C530
	ldr r1, _0803C538
	movs r0, #1
	strb r0, [r1]
	bx lr
	.align 2, 0
_0803C538: .4byte 0x0203E960

	.thumb
sub_803C53C: @ 0x0803C53C
	ldr r2, _0803C554
	ldr r0, _0803C558
	ldrh r3, [r0]
	movs r0, #0xc4
	muls r0, r3, r0
	adds r2, #0x8c
	adds r0, r0, r2
	ldr r0, [r0]
	adds r0, r0, r1
	movs r1, #1
	strb r1, [r0]
	bx lr
	.align 2, 0
_0803C554: .4byte 0x0203E440
_0803C558: .4byte gLoadedRoomLevel

	.thumb
sub_803C55C: @ 0x0803C55C
	push {lr}
	ldr r1, _0803C570
	movs r0, #1
	strb r0, [r1]
	movs r0, #0x4f
	bl start_script
	pop {r0}
	bx r0
	.align 2, 0
_0803C570: .4byte 0x0203E97B

	.thumb
sub_803C574: @ 0x0803C574
	ldr r1, _0803C57C
	movs r0, #1
	strb r0, [r1]
	bx lr
	.align 2, 0
_0803C57C: .4byte 0x0203E95C

	.thumb
sub_803C580: @ 0x0803C580
	push {lr}
	ldr r1, _0803C5CC
	movs r0, #0
	strb r0, [r1]
	movs r0, #0x13
	movs r1, #0
	movs r2, #2
	movs r3, #0
	bl sub_8034460
	ldr r1, _0803C5D0
	ldr r0, _0803C5D4
	str r0, [r1]
	ldr r1, _0803C5D8
	ldr r0, _0803C5DC
	ldr r0, [r0]
	strh r0, [r1]
	movs r0, #0x61
	bl start_script
	ldr r0, _0803C5E0
	movs r1, #4
	movs r2, #4
	bl DmaTransferObjPalette
	ldr r1, _0803C5E4
	movs r0, #6
	strh r0, [r1]
	ldr r0, _0803C5E8
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803C5C6
	movs r0, #6
	bl audio_start_tune
_0803C5C6:
	pop {r0}
	bx r0
	.align 2, 0
_0803C5CC: .4byte 0x0203E953
_0803C5D0: .4byte 0x0203F98C
_0803C5D4: .4byte stru_80B21BC
_0803C5D8: .4byte 0x0203F992
_0803C5DC: .4byte dword_80B21C8
_0803C5E0: .4byte 0x083FD654
_0803C5E4: .4byte gLoadedRoomBgm
_0803C5E8: .4byte 0x0203EA88

	.thumb
sub_803C5EC: @ 0x0803C5EC
	ldr r1, _0803C5F4
	movs r0, #1
	strb r0, [r1]
	bx lr
	.align 2, 0
_0803C5F4: .4byte 0x0203E954

	.thumb
sub_803C5F8: @ 0x0803C5F8
	ldr r1, _0803C600
	movs r0, #1
	strb r0, [r1]
	bx lr
	.align 2, 0
_0803C600: .4byte 0x0203E952

	.thumb
sub_803C604: @ 0x0803C604
	push {lr}
	bl sub_803091C
	pop {r0}
	bx r0

	.thumb
sub_803C60E: @ 0x0803C60E
	movs r0, r0
	push {lr}
	ldr r0, _0803C620
	ldrh r1, [r0, #0xc]
	movs r0, #0x13
	bl hud_set_value
	pop {r0}
	bx r0
	.align 2, 0
_0803C620: .4byte gGameStatus

	.thumb
sub_803C624: @ 0x0803C624
	push {lr}
	bl sub_8016B18
	pop {r0}
	bx r0
	.align 2, 0

	.thumb
sub_803C630: @ 0x0803C630
	ldr r1, _0803C638
	movs r0, #1
	strb r0, [r1]
	bx lr
	.align 2, 0
_0803C638: .4byte 0x0203E951

	.thumb
sub_803C63C: @ 0x0803C63C
	push {lr}
	bl start_dolphin_feeding
	pop {r0}
	bx r0
	.align 2, 0

	.thumb
sub_803C648: @ 0x0803C648
	push {lr}
	bl sub_8048B78
	movs r0, #0x28
	bl start_script
	ldr r0, _0803C664
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_8034460
	pop {r0}
	bx r0
	.align 2, 0
_0803C664: .4byte 0x00000103

	.thumb
sub_803C668: @ 0x0803C668
	push {lr}
	adds r0, r1, #0
	bl sub_8034650
	pop {r0}
	bx r0

	.thumb
sub_803C674: @ 0x0803C674
	ldr r2, _0803C68C
	ldr r0, _0803C690
	ldrh r3, [r0]
	movs r0, #0xc4
	muls r0, r3, r0
	adds r2, #0x68
	adds r0, r0, r2
	ldr r0, [r0]
	adds r0, r0, r1
	movs r1, #1
	strb r1, [r0]
	bx lr
	.align 2, 0
_0803C68C: .4byte 0x0203E440
_0803C690: .4byte gLoadedRoomLevel

	.thumb
sub_803C694: @ 0x0803C694
	ldr r1, _0803C69C
	movs r0, #1
	strb r0, [r1]
	bx lr
	.align 2, 0
_0803C69C: .4byte 0x0203E959

	.thumb
sub_803C6A0: @ 0x0803C6A0
	push {lr}
	movs r0, #0x4a
	bl start_script
	ldr r0, _0803C6C0
	movs r1, #0
	strb r1, [r0]
	ldr r0, _0803C6C4
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_8034460
	pop {r0}
	bx r0
	.align 2, 0
_0803C6C0: .4byte 0x0203E95A
_0803C6C4: .4byte 0x0000010B

	.thumb
sub_803C6C8: @ 0x0803C6C8
	push {lr}
	movs r0, #0x57
	bl start_script
	pop {r0}
	bx r0

	.thumb
sub_803C6D4: @ 0x0803C6D4
	push {r4, r5, lr}
	ldr r0, _0803C76C
	movs r5, #1
	strb r5, [r0]
	ldr r2, _0803C770
	ldr r4, _0803C774
	ldrh r3, [r4]
	movs r0, #0xc4
	muls r0, r3, r0
	adds r2, #0x34
	adds r0, r0, r2
	ldr r0, [r0]
	adds r0, r0, r1
	strb r5, [r0]
	ldr r2, _0803C778
	ldrh r1, [r4]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrb r1, [r0, #2]
	adds r1, #1
	strb r1, [r0, #2]
	ldr r1, _0803C77C
	ldrb r0, [r1, #0x1a]
	adds r0, #1
	strb r0, [r1, #0x1a]
	ldrb r1, [r1, #0x1a]
	movs r0, #0xe
	bl hud_set_value
	ldr r0, _0803C780
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803C742
	ldr r3, _0803C784
	movs r1, #0xa8
	lsls r1, r1, #1
	adds r0, r3, r1
	ldrh r0, [r0]
	ldr r2, _0803C788
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
_0803C742:
	movs r0, #0x59
	bl start_script
	movs r0, #0x86
	lsls r0, r0, #1
	movs r1, #0
	bl is_obj_disabled
	cmp r0, #0
	beq _0803C764
	movs r0, #0xcc
	lsls r0, r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_8034460
_0803C764:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0803C76C: .4byte 0x0203E12F
_0803C770: .4byte 0x0203E440
_0803C774: .4byte gLoadedRoomLevel
_0803C778: .4byte 0x02000FCC
_0803C77C: .4byte gGameStatus
_0803C780: .4byte gCanPlaySfx
_0803C784: .4byte 0x080CE440
_0803C788: .4byte gSfxVolume

	.thumb
sub_803C78C: @ 0x0803C78C
	ldr r1, _0803C794
	movs r0, #1
	strb r0, [r1]
	bx lr
	.align 2, 0
_0803C794: .4byte 0x0203E94D

	.thumb
sub_803C798: @ 0x0803C798
	ldr r1, _0803C7A0
	movs r0, #1
	strb r0, [r1]
	bx lr
	.align 2, 0
_0803C7A0: .4byte 0x0203E94C

	.thumb
sub_803C7A4: @ 0x0803C7A4
	push {lr}
	movs r0, #0x84
	bl start_script
	ldr r1, _0803C7C4
	movs r0, #0
	strb r0, [r1]
	movs r0, #0xf1
	movs r1, #0
	movs r2, #5
	movs r3, #0
	bl sub_8034460
	pop {r0}
	bx r0
	.align 2, 0
_0803C7C4: .4byte 0x0203E955

	.thumb
sub_803C7C8: @ 0x0803C7C8
	push {r4, r5, lr}
	ldr r0, _0803C850
	movs r5, #1
	strb r5, [r0]
	ldr r3, _0803C854
	ldr r4, _0803C858
	ldrh r2, [r4]
	lsls r0, r2, #4
	subs r0, r0, r2
	lsls r0, r0, #3
	adds r3, #0x60
	adds r0, r0, r3
	ldr r0, [r0]
	adds r0, r0, r1
	strb r5, [r0]
	ldr r2, _0803C85C
	ldrh r1, [r4]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrb r1, [r0, #0x10]
	adds r1, #1
	strb r1, [r0, #0x10]
	ldr r1, _0803C860
	ldrb r0, [r1, #0x1e]
	adds r0, #1
	strb r0, [r1, #0x1e]
	ldrb r1, [r1, #0x1e]
	movs r0, #0x12
	bl hud_set_value
	ldr r0, _0803C864
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803C838
	ldr r3, _0803C868
	movs r1, #0xa8
	lsls r1, r1, #1
	adds r0, r3, r1
	ldrh r0, [r0]
	ldr r2, _0803C86C
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
_0803C838:
	movs r0, #0xef
	movs r1, #0
	bl is_obj_disabled
	cmp r0, #0
	beq _0803C84A
	movs r0, #0x90
	bl start_script
_0803C84A:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0803C850: .4byte 0x0203E133
_0803C854: .4byte 0x0203E170
_0803C858: .4byte gLoadedRoomLevel
_0803C85C: .4byte 0x02000FCC
_0803C860: .4byte gGameStatus
_0803C864: .4byte gCanPlaySfx
_0803C868: .4byte 0x080CE440
_0803C86C: .4byte gSfxVolume

	.thumb
sub_803C870: @ 0x0803C870
	ldr r2, _0803C888
	ldr r0, _0803C88C
	ldrh r3, [r0]
	movs r0, #0xc4
	muls r0, r3, r0
	adds r2, #0x6c
	adds r0, r0, r2
	ldr r0, [r0]
	adds r0, r0, r1
	movs r1, #1
	strb r1, [r0]
	bx lr
	.align 2, 0
_0803C888: .4byte 0x0203E440
_0803C88C: .4byte gLoadedRoomLevel

	.thumb
sub_803C890: @ 0x0803C890
	push {r4, r5, r6, r7, lr}
	adds r6, r1, #0
	ldr r2, _0803C918
	ldr r3, _0803C91C
	ldrh r0, [r3]
	movs r4, #0xc4
	muls r0, r4, r0
	movs r1, #0x6c
	adds r1, r1, r2
	mov ip, r1
	add r0, ip
	ldr r0, [r0]
	adds r0, r0, r6
	movs r1, #1
	strb r1, [r0]
	movs r7, #1
	movs r5, #0
	ldrh r0, [r3]
	adds r1, r0, #0
	muls r1, r4, r1
	adds r0, r1, r2
	ldrb r0, [r0, #0x11]
	cmp r5, r0
	bge _0803C8EE
	mov r4, ip
	adds r0, r1, r4
	ldr r0, [r0]
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803C912
_0803C8CC:
	adds r5, #1
	ldrh r0, [r3]
	movs r1, #0xc4
	muls r1, r0, r1
	adds r0, r1, r2
	ldrb r0, [r0, #0x11]
	cmp r5, r0
	bge _0803C8EE
	adds r0, r2, #0
	adds r0, #0x6c
	adds r0, r1, r0
	ldr r0, [r0]
	adds r0, r0, r5
	ldrb r0, [r0]
	cmp r0, #0
	bne _0803C8CC
	movs r7, #0
_0803C8EE:
	cmp r7, #0
	beq _0803C912
	ldrh r1, [r3]
	movs r0, #0xc4
	muls r0, r1, r0
	adds r1, r2, #0
	adds r1, #0x6c
	adds r0, r0, r1
	ldr r0, [r0]
	adds r0, r0, r6
	movs r1, #0
	strb r1, [r0]
	movs r0, #0xf4
	adds r1, r6, #0
	movs r2, #0
	movs r3, #0
	bl sub_8034460
_0803C912:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803C918: .4byte 0x0203E440
_0803C91C: .4byte gLoadedRoomLevel

	.thumb
sub_803C920: @ 0x0803C920
	ldr r2, _0803C938
	ldr r0, _0803C93C
	ldrh r3, [r0]
	movs r0, #0xc4
	muls r0, r3, r0
	adds r2, #0x64
	adds r0, r0, r2
	ldr r0, [r0]
	adds r0, r0, r1
	movs r1, #1
	strb r1, [r0]
	bx lr
	.align 2, 0
_0803C938: .4byte 0x0203E440
_0803C93C: .4byte gLoadedRoomLevel

	.thumb
sub_803C940: @ 0x0803C940
	push {r4, r5, r6, r7, lr}
	adds r6, r1, #0
	ldr r2, _0803C9C8
	ldr r3, _0803C9CC
	ldrh r0, [r3]
	movs r4, #0xc4
	muls r0, r4, r0
	movs r1, #0x64
	adds r1, r1, r2
	mov ip, r1
	add r0, ip
	ldr r0, [r0]
	adds r0, r0, r6
	movs r1, #1
	strb r1, [r0]
	movs r7, #1
	movs r5, #0
	ldrh r0, [r3]
	adds r1, r0, #0
	muls r1, r4, r1
	adds r0, r1, r2
	ldrb r0, [r0, #0xf]
	cmp r5, r0
	bge _0803C99E
	mov r4, ip
	adds r0, r1, r4
	ldr r0, [r0]
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803C9C2
_0803C97C:
	adds r5, #1
	ldrh r0, [r3]
	movs r1, #0xc4
	muls r1, r0, r1
	adds r0, r1, r2
	ldrb r0, [r0, #0xf]
	cmp r5, r0
	bge _0803C99E
	adds r0, r2, #0
	adds r0, #0x64
	adds r0, r1, r0
	ldr r0, [r0]
	adds r0, r0, r5
	ldrb r0, [r0]
	cmp r0, #0
	bne _0803C97C
	movs r7, #0
_0803C99E:
	cmp r7, #0
	beq _0803C9C2
	ldrh r1, [r3]
	movs r0, #0xc4
	muls r0, r1, r0
	adds r1, r2, #0
	adds r1, #0x64
	adds r0, r0, r1
	ldr r0, [r0]
	adds r0, r0, r6
	movs r1, #0
	strb r1, [r0]
	movs r0, #0xf3
	adds r1, r6, #0
	movs r2, #0
	movs r3, #0
	bl sub_8034460
_0803C9C2:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803C9C8: .4byte 0x0203E440
_0803C9CC: .4byte gLoadedRoomLevel

	.thumb
sub_803C9D0: @ 0x0803C9D0
	push {lr}
	movs r0, #0x41
	bl start_script
	movs r0, #0xed
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_8034460
	pop {r0}
	bx r0

	.thumb
sub_803C9E8: @ 0x0803C9E8
	ldr r1, _0803C9F0
	movs r0, #1
	strb r0, [r1]
	bx lr
	.align 2, 0
_0803C9F0: .4byte 0x0203E94B

	.thumb
sub_803C9F4: @ 0x0803C9F4
	ldr r2, _0803CA0C
	ldr r0, _0803CA10
	ldrh r0, [r0]
	lsls r0, r0, #4
	adds r2, #8
	adds r0, r0, r2
	ldr r0, [r0]
	adds r0, r0, r1
	movs r1, #1
	strb r1, [r0]
	bx lr
	.align 2, 0
_0803CA0C: .4byte 0x0203E8D8
_0803CA10: .4byte gLoadedRoomLevel

	.thumb
sub_803CA14: @ 0x0803CA14
	ldr r2, _0803CA2C
	ldr r0, _0803CA30
	ldrh r0, [r0]
	lsls r0, r0, #4
	adds r2, #0xc
	adds r0, r0, r2
	ldr r0, [r0]
	adds r0, r0, r1
	movs r1, #1
	strb r1, [r0]
	bx lr
	.align 2, 0
_0803CA2C: .4byte 0x0203E8D8
_0803CA30: .4byte gLoadedRoomLevel

	.thumb
sub_803CA34: @ 0x0803CA34
	ldr r2, _0803CA4C
	ldr r0, _0803CA50
	ldrh r3, [r0]
	movs r0, #0xc4
	muls r0, r3, r0
	adds r2, #0x60
	adds r0, r0, r2
	ldr r0, [r0]
	adds r0, r0, r1
	movs r1, #1
	strb r1, [r0]
	bx lr
	.align 2, 0
_0803CA4C: .4byte 0x0203E440
_0803CA50: .4byte gLoadedRoomLevel

	.thumb
sub_803CA54: @ 0x0803CA54
	ldr r2, _0803CA6C
	ldr r0, _0803CA70
	ldrh r3, [r0]
	movs r0, #0xc4
	muls r0, r3, r0
	adds r2, #0x5c
	adds r0, r0, r2
	ldr r0, [r0]
	adds r0, r0, r1
	movs r1, #1
	strb r1, [r0]
	bx lr
	.align 2, 0
_0803CA6C: .4byte 0x0203E440
_0803CA70: .4byte gLoadedRoomLevel

	.thumb
sub_803CA74: @ 0x0803CA74
	ldr r2, _0803CA8C
	ldr r0, _0803CA90
	ldrh r3, [r0]
	movs r0, #0xc4
	muls r0, r3, r0
	adds r2, #0x70
	adds r0, r0, r2
	ldr r0, [r0]
	adds r0, r0, r1
	movs r1, #1
	strb r1, [r0]
	bx lr
	.align 2, 0
_0803CA8C: .4byte 0x0203E440
_0803CA90: .4byte gLoadedRoomLevel

	.thumb
sub_803CA94: @ 0x0803CA94
	push {lr}
	ldr r2, _0803CABC
	ldr r0, _0803CAC0
	ldrh r3, [r0]
	movs r0, #0xc4
	muls r0, r3, r0
	adds r2, #0x44
	adds r0, r0, r2
	ldr r0, [r0]
	adds r0, r0, r1
	movs r1, #1
	strb r1, [r0]
	ldr r0, _0803CAC4
	movs r1, #4
	movs r2, #4
	bl DmaTransferObjPalette
	pop {r0}
	bx r0
	.align 2, 0
_0803CABC: .4byte 0x0203E440
_0803CAC0: .4byte gLoadedRoomLevel
_0803CAC4: .4byte 0x083FD674

	.thumb
sub_803CAC8: @ 0x0803CAC8
	push {lr}
	ldr r2, _0803CAF0
	ldr r0, _0803CAF4
	ldrh r3, [r0]
	movs r0, #0xc4
	muls r0, r3, r0
	adds r2, #0x48
	adds r0, r0, r2
	ldr r0, [r0]
	adds r0, r0, r1
	movs r1, #1
	strb r1, [r0]
	ldr r0, _0803CAF8
	movs r1, #4
	movs r2, #4
	bl DmaTransferObjPalette
	pop {r0}
	bx r0
	.align 2, 0
_0803CAF0: .4byte 0x0203E440
_0803CAF4: .4byte gLoadedRoomLevel
_0803CAF8: .4byte 0x083FD694

	.thumb
sub_803CAFC: @ 0x0803CAFC
	push {lr}
	ldr r2, _0803CB24
	ldr r0, _0803CB28
	ldrh r3, [r0]
	movs r0, #0xc4
	muls r0, r3, r0
	adds r2, #0x4c
	adds r0, r0, r2
	ldr r0, [r0]
	adds r0, r0, r1
	movs r1, #1
	strb r1, [r0]
	ldr r0, _0803CB2C
	movs r1, #4
	movs r2, #4
	bl DmaTransferObjPalette
	pop {r0}
	bx r0
	.align 2, 0
_0803CB24: .4byte 0x0203E440
_0803CB28: .4byte gLoadedRoomLevel
_0803CB2C: .4byte 0x083FD6B4

	.thumb
sub_803CB30: @ 0x0803CB30
	push {lr}
	ldr r2, _0803CB58
	ldr r0, _0803CB5C
	ldrh r3, [r0]
	movs r0, #0xc4
	muls r0, r3, r0
	adds r2, #0x50
	adds r0, r0, r2
	ldr r0, [r0]
	adds r0, r0, r1
	movs r1, #1
	strb r1, [r0]
	ldr r0, _0803CB60
	movs r1, #4
	movs r2, #4
	bl DmaTransferObjPalette
	pop {r0}
	bx r0
	.align 2, 0
_0803CB58: .4byte 0x0203E440
_0803CB5C: .4byte gLoadedRoomLevel
_0803CB60: .4byte 0x083FD6D4

	.thumb
sub_803CB64: @ 0x0803CB64
	push {lr}
	ldr r2, _0803CBB8
	ldr r0, _0803CBBC
	ldrh r3, [r0]
	movs r0, #0xc4
	muls r0, r3, r0
	adds r2, #0x54
	adds r0, r0, r2
	ldr r0, [r0]
	adds r0, r0, r1
	movs r1, #1
	strb r1, [r0]
	ldr r0, _0803CBC0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_8034460
	movs r0, #0x62
	bl start_script
	ldr r1, _0803CBC4
	ldr r3, _0803CBC8
	ldr r2, _0803CBCC
	ldrh r0, [r2]
	lsls r0, r0, #3
	adds r0, r0, r3
	ldrh r0, [r0, #6]
	strh r0, [r1]
	ldr r0, _0803CBD0
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803CBB2
	ldrh r0, [r2]
	lsls r0, r0, #3
	adds r0, r0, r3
	ldrh r0, [r0, #6]
	bl audio_start_tune
_0803CBB2:
	pop {r0}
	bx r0
	.align 2, 0
_0803CBB8: .4byte 0x0203E440
_0803CBBC: .4byte gLoadedRoomLevel
_0803CBC0: .4byte 0x00000101
_0803CBC4: .4byte gLoadedRoomBgm
_0803CBC8: .4byte dRoomIndexes
_0803CBCC: .4byte gLoadedRoomIndex
_0803CBD0: .4byte 0x0203EA88

	.thumb
sub_803CBD4: @ 0x0803CBD4
	ldr r1, _0803CBDC
	movs r0, #1
	strb r0, [r1]
	bx lr
	.align 2, 0
_0803CBDC: .4byte 0x0203E95B

	.thumb
sub_803CBE0: @ 0x0803CBE0
	push {r4, r5, r6, r7, lr}
	ldr r2, _0803CC54
	ldr r3, _0803CC58
	ldrh r0, [r3]
	movs r4, #0xc4
	muls r0, r4, r0
	adds r7, r2, #0
	adds r7, #0x58
	adds r0, r0, r7
	ldr r0, [r0]
	adds r0, r0, r1
	movs r1, #1
	strb r1, [r0]
	movs r6, #1
	movs r5, #0
	ldrh r0, [r3]
	adds r1, r0, #0
	muls r1, r4, r1
	adds r0, r1, r2
	ldrb r0, [r0, #0xc]
	cmp r5, r0
	bge _0803CC38
	adds r0, r1, r7
	ldr r0, [r0]
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803CC4E
_0803CC16:
	adds r5, #1
	ldrh r0, [r3]
	movs r1, #0xc4
	muls r1, r0, r1
	adds r0, r1, r2
	ldrb r0, [r0, #0xc]
	cmp r5, r0
	bge _0803CC38
	adds r0, r2, #0
	adds r0, #0x58
	adds r0, r1, r0
	ldr r0, [r0]
	adds r0, r0, r5
	ldrb r0, [r0]
	cmp r0, #0
	bne _0803CC16
	movs r6, #0
_0803CC38:
	cmp r6, #0
	beq _0803CC4E
	movs r0, #0xfa
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_8034460
	movs r0, #0x74
	bl start_script
_0803CC4E:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803CC54: .4byte 0x0203E440
_0803CC58: .4byte gLoadedRoomLevel

	.thumb
sub_803CC5C: @ 0x0803CC5C
	push {lr}
	movs r0, #0x75
	bl start_script
	ldr r1, _0803CC70
	movs r0, #1
	strb r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_0803CC70: .4byte 0x0203E94E

	.thumb
sub_803CC74: @ 0x0803CC74
	ldr r1, _0803CC7C
	movs r0, #1
	strb r0, [r1]
	bx lr
	.align 2, 0
_0803CC7C: .4byte 0x0203E94A

	.thumb
sub_803CC80: @ 0x0803CC80
	push {r4, r5, lr}
	ldr r0, _0803CD08
	movs r5, #1
	strb r5, [r0]
	ldr r3, _0803CD0C
	ldr r4, _0803CD10
	ldrh r2, [r4]
	lsls r0, r2, #4
	subs r0, r0, r2
	lsls r0, r0, #3
	adds r3, #0x5c
	adds r0, r0, r3
	ldr r0, [r0]
	adds r0, r0, r1
	strb r5, [r0]
	ldr r2, _0803CD14
	ldrh r1, [r4]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrb r1, [r0, #0xf]
	adds r1, #1
	strb r1, [r0, #0xf]
	ldr r1, _0803CD18
	ldrb r0, [r1, #0x1d]
	adds r0, #1
	strb r0, [r1, #0x1d]
	ldrb r1, [r1, #0x1d]
	movs r0, #0x11
	bl hud_set_value
	ldr r0, _0803CD1C
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803CCF0
	ldr r3, _0803CD20
	movs r1, #0xa8
	lsls r1, r1, #1
	adds r0, r3, r1
	ldrh r0, [r0]
	ldr r2, _0803CD24
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
_0803CCF0:
	ldr r0, _0803CD28
	movs r1, #0
	bl is_obj_disabled
	cmp r0, #0
	beq _0803CD02
	movs r0, #0x82
	bl start_script
_0803CD02:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0803CD08: .4byte 0x0203E130
_0803CD0C: .4byte 0x0203E170
_0803CD10: .4byte gLoadedRoomLevel
_0803CD14: .4byte 0x02000FCC
_0803CD18: .4byte gGameStatus
_0803CD1C: .4byte gCanPlaySfx
_0803CD20: .4byte 0x080CE440
_0803CD24: .4byte gSfxVolume
_0803CD28: .4byte 0x00000175

	.thumb
sub_803CD2C: @ 0x0803CD2C
	push {r4, r5, lr}
	ldr r0, _0803CDB4
	movs r5, #1
	strb r5, [r0]
	ldr r3, _0803CDB8
	ldr r4, _0803CDBC
	ldrh r2, [r4]
	lsls r0, r2, #4
	subs r0, r0, r2
	lsls r0, r0, #3
	adds r3, #0x3c
	adds r0, r0, r3
	ldr r0, [r0]
	adds r0, r0, r1
	strb r5, [r0]
	ldr r2, _0803CDC0
	ldrh r1, [r4]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrb r1, [r0, #3]
	adds r1, #1
	strb r1, [r0, #3]
	ldr r1, _0803CDC4
	ldrb r0, [r1, #0x18]
	adds r0, #1
	strb r0, [r1, #0x18]
	ldrb r1, [r1, #0x18]
	movs r0, #5
	bl hud_set_value
	ldr r0, _0803CDC8
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803CD9C
	ldr r3, _0803CDCC
	movs r1, #0xa8
	lsls r1, r1, #1
	adds r0, r3, r1
	ldrh r0, [r0]
	ldr r2, _0803CDD0
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
_0803CD9C:
	movs r0, #0xda
	movs r1, #0
	bl is_obj_disabled
	cmp r0, #0
	beq _0803CDAE
	movs r0, #0x56
	bl start_script
_0803CDAE:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0803CDB4: .4byte 0x0203E12E
_0803CDB8: .4byte 0x0203E170
_0803CDBC: .4byte gLoadedRoomLevel
_0803CDC0: .4byte 0x02000FCC
_0803CDC4: .4byte gGameStatus
_0803CDC8: .4byte gCanPlaySfx
_0803CDCC: .4byte 0x080CE440
_0803CDD0: .4byte gSfxVolume

	.thumb
sub_803CDD4: @ 0x0803CDD4
	push {lr}
	movs r0, #0x4b
	bl start_script
	ldr r0, _0803CDEC
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_8034460
	pop {r0}
	bx r0
	.align 2, 0
_0803CDEC: .4byte 0x00000105

	.thumb
sub_803CDF0: @ 0x0803CDF0
	ldr r1, _0803CDF8
	movs r0, #1
	strb r0, [r1]
	bx lr
	.align 2, 0
_0803CDF8: .4byte 0x0203E956

	.thumb
sub_803CDFC: @ 0x0803CDFC
	ldr r1, _0803CE04
	movs r0, #1
	strb r0, [r1]
	bx lr
	.align 2, 0
_0803CE04: .4byte 0x0203E957

	.thumb
sub_803CE08: @ 0x0803CE08
	push {lr}
	movs r0, #0x3e
	bl start_script
	ldr r0, _0803CE20
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_8034460
	pop {r0}
	bx r0
	.align 2, 0
_0803CE20: .4byte 0x00000107

	.thumb
sub_803CE24: @ 0x0803CE24
	push {r4, r5, lr}
	ldr r0, _0803CEAC
	movs r5, #1
	strb r5, [r0]
	ldr r3, _0803CEB0
	ldr r4, _0803CEB4
	ldrh r2, [r4]
	lsls r0, r2, #4
	subs r0, r0, r2
	lsls r0, r0, #3
	adds r3, #0x40
	adds r0, r0, r3
	ldr r0, [r0]
	adds r0, r0, r1
	strb r5, [r0]
	ldr r2, _0803CEB8
	ldrh r1, [r4]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrb r1, [r0, #4]
	adds r1, #1
	strb r1, [r0, #4]
	ldr r1, _0803CEBC
	ldrb r0, [r1, #0x19]
	adds r0, #1
	strb r0, [r1, #0x19]
	ldrb r1, [r1, #0x19]
	movs r0, #8
	bl hud_set_value
	ldr r0, _0803CEC0
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803CE94
	ldr r3, _0803CEC4
	movs r1, #0xa8
	lsls r1, r1, #1
	adds r0, r3, r1
	ldrh r0, [r0]
	ldr r2, _0803CEC8
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
_0803CE94:
	movs r0, #0xe1
	movs r1, #0
	bl is_obj_disabled
	cmp r0, #0
	beq _0803CEA6
	movs r0, #0x47
	bl start_script
_0803CEA6:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0803CEAC: .4byte 0x0203E12D
_0803CEB0: .4byte 0x0203E170
_0803CEB4: .4byte gLoadedRoomLevel
_0803CEB8: .4byte 0x02000FCC
_0803CEBC: .4byte gGameStatus
_0803CEC0: .4byte gCanPlaySfx
_0803CEC4: .4byte 0x080CE440
_0803CEC8: .4byte gSfxVolume

	.thumb
sub_803CECC: @ 0x0803CECC
	push {lr}
	movs r0, #0x54
	bl start_script
	ldr r0, _0803CEE4
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_8034460
	pop {r0}
	bx r0
	.align 2, 0
_0803CEE4: .4byte 0x00000109

	.thumb
sub_803CEE8: @ 0x0803CEE8
	ldr r1, _0803CEF0
	movs r0, #1
	strb r0, [r1]
	bx lr
	.align 2, 0
_0803CEF0: .4byte 0x0203E958

	.thumb
sub_803CEF4: @ 0x0803CEF4
	ldr r1, _0803CEFC
	movs r0, #1
	strb r0, [r1]
	bx lr
	.align 2, 0
_0803CEFC: .4byte 0x0203E949

	.thumb
sub_803CF00: @ 0x0803CF00
	push {r4, r5, lr}
	ldr r0, _0803CF78
	movs r5, #1
	strb r5, [r0]
	ldr r3, _0803CF7C
	ldr r4, _0803CF80
	ldrh r2, [r4]
	lsls r0, r2, #4
	subs r0, r0, r2
	lsls r0, r0, #3
	adds r3, #0x58
	adds r0, r0, r3
	ldr r0, [r0]
	adds r0, r0, r1
	strb r5, [r0]
	ldr r2, _0803CF84
	ldrh r1, [r4]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrb r1, [r0, #0xe]
	adds r1, #1
	strb r1, [r0, #0xe]
	ldr r1, _0803CF88
	ldrb r0, [r1, #0x1c]
	adds r0, #1
	strb r0, [r1, #0x1c]
	ldrb r1, [r1, #0x1c]
	movs r0, #0x10
	bl hud_set_value
	ldr r0, _0803CF8C
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803CF70
	ldr r3, _0803CF90
	movs r1, #0xa8
	lsls r1, r1, #1
	adds r0, r3, r1
	ldrh r0, [r0]
	ldr r2, _0803CF94
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
_0803CF70:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0803CF78: .4byte 0x0203E131
_0803CF7C: .4byte 0x0203E170
_0803CF80: .4byte gLoadedRoomLevel
_0803CF84: .4byte 0x02000FCC
_0803CF88: .4byte gGameStatus
_0803CF8C: .4byte gCanPlaySfx
_0803CF90: .4byte 0x080CE440
_0803CF94: .4byte gSfxVolume

	.thumb
sub_803CF98: @ 0x0803CF98
	ldr r1, _0803CFA0
	movs r0, #1
	strb r0, [r1]
	bx lr
	.align 2, 0
_0803CFA0: .4byte 0x0203E942

	.thumb
sub_803CFA4: @ 0x0803CFA4
	ldr r1, _0803CFAC
	movs r0, #1
	strb r0, [r1]
	bx lr
	.align 2, 0
_0803CFAC: .4byte 0x0203E943

	.thumb
sub_803CFB0: @ 0x0803CFB0
	ldr r1, _0803CFB8
	movs r0, #1
	strb r0, [r1]
	bx lr
	.align 2, 0
_0803CFB8: .4byte 0x0203E944

	.thumb
sub_803CFBC: @ 0x0803CFBC
	ldr r1, _0803CFC4
	movs r0, #1
	strb r0, [r1]
	bx lr
	.align 2, 0
_0803CFC4: .4byte 0x0203E945

	.thumb
sub_803CFC8: @ 0x0803CFC8
	ldr r1, _0803CFD0
	movs r0, #1
	strb r0, [r1]
	bx lr
	.align 2, 0
_0803CFD0: .4byte 0x0203E946

	.thumb
sub_803CFD4: @ 0x0803CFD4
	ldr r1, _0803CFDC
	movs r0, #1
	strb r0, [r1]
	bx lr
	.align 2, 0
_0803CFDC: .4byte 0x0203E947

	.thumb
sub_803CFE0: @ 0x0803CFE0
	push {lr}
	movs r0, #0x71
	bl start_script
	ldr r1, _0803CFF4
	movs r0, #1
	strb r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_0803CFF4: .4byte 0x0203E945

	.thumb
sub_803CFF8: @ 0x0803CFF8
	push {lr}
	movs r0, #0x70
	bl start_script
	ldr r1, _0803D00C
	movs r0, #1
	strb r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_0803D00C: .4byte 0x0203E946

	.thumb
sub_803D010: @ 0x0803D010
	push {lr}
	movs r0, #0x72
	bl start_script
	ldr r1, _0803D030
	movs r0, #0
	strb r0, [r1]
	movs r0, #0xf6
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_8034460
	pop {r0}
	bx r0
	.align 2, 0
_0803D030: .4byte 0x0203E948

	.thumb
sub_803D034: @ 0x0803D034
	push {r4, lr}
	ldr r2, _0803D09C
	ldrb r0, [r2]
	cmp r0, #0
	bne _0803D0BC
	ldr r1, _0803D0A0
	movs r0, #1
	strb r0, [r1]
	strb r0, [r2]
	ldr r2, _0803D0A4
	ldr r0, _0803D0A8
	ldrh r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrb r1, [r0, #0xd]
	adds r1, #1
	strb r1, [r0, #0xd]
	ldr r1, _0803D0AC
	ldrb r0, [r1, #0x1b]
	adds r0, #1
	strb r0, [r1, #0x1b]
	ldrb r1, [r1, #0x1b]
	movs r0, #0xf
	bl hud_set_value
	ldr r0, _0803D0B0
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803D0C0
	ldr r3, _0803D0B4
	movs r1, #0xa8
	lsls r1, r1, #1
	adds r0, r3, r1
	ldrh r0, [r0]
	ldr r2, _0803D0B8
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
	b _0803D0C0
	.align 2, 0
_0803D09C: .4byte 0x0203E941
_0803D0A0: .4byte 0x0203E132
_0803D0A4: .4byte 0x02000FCC
_0803D0A8: .4byte gLoadedRoomLevel
_0803D0AC: .4byte gGameStatus
_0803D0B0: .4byte gCanPlaySfx
_0803D0B4: .4byte 0x080CE440
_0803D0B8: .4byte gSfxVolume
_0803D0BC:
	.2byte 0xEE00, 0xEE00
_0803D0C0:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	.thumb
sub_803D0C8: @ 0x0803D0C8
	ldr r2, _0803D0E0
	ldr r0, _0803D0E4
	ldrh r3, [r0]
	movs r0, #0xc4
	muls r0, r3, r0
	adds r2, #0x3c
	adds r0, r0, r2
	ldr r0, [r0]
	adds r0, r0, r1
	movs r1, #1
	strb r1, [r0]
	bx lr
	.align 2, 0
_0803D0E0: .4byte 0x0203E440
_0803D0E4: .4byte gLoadedRoomLevel

	.thumb
sub_803D0E8: @ 0x0803D0E8
	push {r4, r5, r6, r7, lr}
	adds r6, r1, #0
	ldr r2, _0803D178
	ldr r3, _0803D17C
	ldrh r0, [r3]
	movs r4, #0xc4
	muls r0, r4, r0
	movs r1, #0x3c
	adds r1, r1, r2
	mov ip, r1
	add r0, ip
	ldr r0, [r0]
	adds r0, r0, r6
	movs r1, #1
	strb r1, [r0]
	movs r7, #1
	movs r5, #0
	ldrh r0, [r3]
	adds r1, r0, #0
	muls r1, r4, r1
	adds r0, r1, r2
	ldrb r0, [r0, #5]
	cmp r5, r0
	bge _0803D146
	mov r4, ip
	adds r0, r1, r4
	ldr r0, [r0]
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803D170
_0803D124:
	adds r5, #1
	ldrh r0, [r3]
	movs r1, #0xc4
	muls r1, r0, r1
	adds r0, r1, r2
	ldrb r0, [r0, #5]
	cmp r5, r0
	bge _0803D146
	adds r0, r2, #0
	adds r0, #0x3c
	adds r0, r1, r0
	ldr r0, [r0]
	adds r0, r0, r5
	ldrb r0, [r0]
	cmp r0, #0
	bne _0803D124
	movs r7, #0
_0803D146:
	cmp r7, #0
	beq _0803D170
	ldrh r1, [r3]
	movs r0, #0xc4
	muls r0, r1, r0
	adds r1, r2, #0
	adds r1, #0x3c
	adds r0, r0, r1
	ldr r0, [r0]
	adds r0, r0, r6
	movs r1, #0
	strb r1, [r0]
	movs r0, #0xf9
	adds r1, r6, #0
	movs r2, #0
	movs r3, #0
	bl sub_8034460
	movs r0, #0x73
	bl start_script
_0803D170:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803D178: .4byte 0x0203E440
_0803D17C: .4byte gLoadedRoomLevel

	.thumb
sub_803D180: @ 0x0803D180
	ldr r1, _0803D188
	movs r0, #1
	strb r0, [r1]
	bx lr
	.align 2, 0
_0803D188: .4byte 0x0203E972

	.thumb
sub_803D18C: @ 0x0803D18C
	ldr r1, _0803D194
	movs r0, #1
	strb r0, [r1]
	bx lr
	.align 2, 0
_0803D194: .4byte 0x0203E973

	.thumb
sub_803D198: @ 0x0803D198
	push {r4, r5, r6, r7, lr}
	ldr r4, _0803D220
	ldrb r0, [r4]
	adds r0, #1
	strb r0, [r4]
	ldr r6, _0803D224
	ldr r5, _0803D228
	ldrh r2, [r5]
	lsls r0, r2, #4
	subs r0, r0, r2
	lsls r0, r0, #3
	adds r2, r6, #0
	adds r2, #0x54
	adds r0, r0, r2
	ldr r0, [r0]
	adds r0, r0, r1
	movs r1, #1
	strb r1, [r0]
	ldr r0, _0803D22C
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803D1EC
	ldr r3, _0803D230
	movs r1, #0xa8
	lsls r1, r1, #1
	adds r0, r3, r1
	ldrh r0, [r0]
	ldr r2, _0803D234
	movs r7, #0xa9
	lsls r7, r7, #1
	adds r1, r3, r7
	ldrb r2, [r2]
	adds r1, r1, r2
	ldrb r1, [r1]
	adds r7, #2
	adds r2, r3, r7
	ldr r2, [r2]
	movs r3, #0x80
	lsls r3, r3, #9
	adds r2, r2, r3
	bl audio_new_fx
_0803D1EC:
	ldrh r1, [r5]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r6
	ldrb r1, [r0, #0xe]
	ldrb r0, [r4]
	subs r1, r1, r0
	movs r0, #0x36
	bl hud_set_value
	ldr r0, _0803D238
	movs r1, #0
	bl is_obj_disabled
	cmp r0, #0
	beq _0803D27C
	movs r0, #0x36
	bl hud_release_element
	ldrh r0, [r5]
	cmp r0, #3
	beq _0803D23C
	cmp r0, #5
	beq _0803D260
	b _0803D27C
	.align 2, 0
_0803D220: .4byte 0x0203E97D
_0803D224: .4byte 0x0203E170
_0803D228: .4byte gLoadedRoomLevel
_0803D22C: .4byte gCanPlaySfx
_0803D230: .4byte 0x080CE440
_0803D234: .4byte gSfxVolume
_0803D238: .4byte 0x00000183
_0803D23C:
	ldr r0, _0803D258
	ldrb r0, [r0]
	cmp r0, #0
	bne _0803D27C
	movs r0, #0x68
	bl start_script
	ldr r0, _0803D25C
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_8034460
	b _0803D27C
	.align 2, 0
_0803D258: .4byte 0x0203E972
_0803D25C: .4byte 0x0000019D
_0803D260:
	ldr r0, _0803D284
	ldrb r0, [r0]
	cmp r0, #0
	bne _0803D27C
	movs r0, #0x94
	bl start_script
	movs r0, #0xcf
	lsls r0, r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_8034460
_0803D27C:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803D284: .4byte 0x0203E973

	.thumb
sub_803D288: @ 0x0803D288
	ldr r1, _0803D290
	movs r0, #0
	strb r0, [r1]
	bx lr
	.align 2, 0
_0803D290: .4byte byte_20020B2

	.thumb
sub_803D294: @ 0x0803D294
	ldr r2, _0803D2AC
	ldr r0, _0803D2B0
	ldrh r3, [r0]
	movs r0, #0xc4
	muls r0, r3, r0
	adds r2, #0x38
	adds r0, r0, r2
	ldr r0, [r0]
	adds r0, r0, r1
	movs r1, #1
	strb r1, [r0]
	bx lr
	.align 2, 0
_0803D2AC: .4byte 0x0203E440
_0803D2B0: .4byte gLoadedRoomLevel

	.thumb
sub_803D2B4: @ 0x0803D2B4
	ldr r0, _0803D2C0
	movs r1, #0
	strb r1, [r0]
	ldr r0, _0803D2C4
	strb r1, [r0]
	bx lr
	.align 2, 0
_0803D2C0: .4byte 0x0203E93F
_0803D2C4: .4byte 0x0203E10F

	.thumb
sub_803D2C8: @ 0x0803D2C8
	ldr r0, _0803D2D4
	movs r1, #1
	strb r1, [r0]
	ldr r0, _0803D2D8
	strb r1, [r0]
	bx lr
	.align 2, 0
_0803D2D4: .4byte 0x0203E93F
_0803D2D8: .4byte 0x0203E10F

	.thumb
sub_803D2DC: @ 0x0803D2DC
	ldr r1, _0803D2E4
	movs r0, #1
	strb r0, [r1]
	bx lr
	.align 2, 0
_0803D2E4: .4byte 0x0203E93D

	.thumb
sub_803D2E8: @ 0x0803D2E8
	push {lr}
	cmp r1, #6
	bls _0803D2F0
	b _0803D3DE
_0803D2F0:
	lsls r0, r1, #2
	ldr r1, _0803D2FC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0803D2FC: .4byte 0x0803D300
_0803D300: @ jump table
	.4byte _0803D31C @ case 0
	.4byte _0803D338 @ case 1
	.4byte _0803D354 @ case 2
	.4byte _0803D370 @ case 3
	.4byte _0803D38C @ case 4
	.4byte _0803D3A8 @ case 5
	.4byte _0803D3C8 @ case 6
_0803D31C:
	ldr r2, _0803D330
	ldrb r0, [r2]
	movs r1, #1
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _0803D334
	movs r2, #0
	ldrsh r1, [r0, r2]
	b _0803D3B8
	.align 2, 0
_0803D330: .4byte 0x0203E93A
_0803D334: .4byte 0x0203E9A0
_0803D338:
	ldr r2, _0803D34C
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _0803D350
	movs r2, #2
	ldrsh r1, [r0, r2]
	b _0803D3B8
	.align 2, 0
_0803D34C: .4byte 0x0203E93A
_0803D350: .4byte 0x0203E9A0
_0803D354:
	ldr r2, _0803D368
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _0803D36C
	movs r2, #4
	ldrsh r1, [r0, r2]
	b _0803D3B8
	.align 2, 0
_0803D368: .4byte 0x0203E93A
_0803D36C: .4byte 0x0203E9A0
_0803D370:
	ldr r2, _0803D384
	ldrb r0, [r2]
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _0803D388
	movs r2, #6
	ldrsh r1, [r0, r2]
	b _0803D3B8
	.align 2, 0
_0803D384: .4byte 0x0203E93A
_0803D388: .4byte 0x0203E9A0
_0803D38C:
	ldr r2, _0803D3A0
	ldrb r0, [r2]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _0803D3A4
	movs r2, #8
	ldrsh r1, [r0, r2]
	b _0803D3B8
	.align 2, 0
_0803D3A0: .4byte 0x0203E93A
_0803D3A4: .4byte 0x0203E9A0
_0803D3A8:
	ldr r2, _0803D3C0
	ldrb r0, [r2]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _0803D3C4
	movs r2, #0xa
	ldrsh r1, [r0, r2]
_0803D3B8:
	movs r0, #0x27
	bl run_obj_behavior
	b _0803D3DE
	.align 2, 0
_0803D3C0: .4byte 0x0203E93A
_0803D3C4: .4byte 0x0203E9A0
_0803D3C8:
	ldr r2, _0803D3E4
	ldrb r0, [r2]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _0803D3E8
	movs r2, #0xc
	ldrsh r1, [r0, r2]
	movs r0, #0x27
	bl run_obj_behavior
_0803D3DE:
	pop {r0}
	bx r0
	.align 2, 0
_0803D3E4: .4byte 0x0203E93A
_0803D3E8: .4byte 0x0203E9A0

	.thumb
sub_803D3EC: @ 0x0803D3EC
	push {lr}
	adds r0, r1, #0
	subs r0, #9
	cmp r0, #9
	bhi _0803D478
	lsls r0, r0, #2
	ldr r1, _0803D400
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0803D400: .4byte 0x0803D404
_0803D404: @ jump table
	.4byte _0803D42C @ case 0
	.4byte _0803D434 @ case 1
	.4byte _0803D43C @ case 2
	.4byte _0803D478 @ case 3
	.4byte _0803D444 @ case 4
	.4byte _0803D44C @ case 5
	.4byte _0803D454 @ case 6
	.4byte _0803D46C @ case 7
	.4byte _0803D45C @ case 8
	.4byte _0803D464 @ case 9
_0803D42C:
	ldr r1, _0803D430
	b _0803D46E
	.align 2, 0
_0803D430: .4byte 0x0203E938
_0803D434:
	ldr r1, _0803D438
	b _0803D46E
	.align 2, 0
_0803D438: .4byte 0x0203E939
_0803D43C:
	ldr r1, _0803D440
	b _0803D46E
	.align 2, 0
_0803D440: .4byte 0x0203E940
_0803D444:
	ldr r1, _0803D448
	b _0803D46E
	.align 2, 0
_0803D448: .4byte 0x0203E94F
_0803D44C:
	ldr r1, _0803D450
	b _0803D46E
	.align 2, 0
_0803D450: .4byte 0x0203E950
_0803D454:
	ldr r1, _0803D458
	b _0803D46E
	.align 2, 0
_0803D458: .4byte 0x0203E964
_0803D45C:
	ldr r1, _0803D460
	b _0803D46E
	.align 2, 0
_0803D460: .4byte 0x0203E965
_0803D464:
	ldr r1, _0803D468
	b _0803D46E
	.align 2, 0
_0803D468: .4byte 0x0203E966
_0803D46C:
	ldr r1, _0803D474
_0803D46E:
	movs r0, #1
	strb r0, [r1]
	b _0803D47C
	.align 2, 0
_0803D474: .4byte 0x0203E967
_0803D478:
	.2byte 0xEE00, 0xEE00
_0803D47C:
	pop {r0}
	bx r0

	.thumb
sub_803D480: @ 0x0803D480
	ldr r2, _0803D498
	ldr r0, _0803D49C
	ldrh r0, [r0]
	lsls r0, r0, #4
	adds r2, #4
	adds r0, r0, r2
	ldr r0, [r0]
	adds r0, r0, r1
	movs r1, #1
	strb r1, [r0]
	bx lr
	.align 2, 0
_0803D498: .4byte 0x0203E8D8
_0803D49C: .4byte gLoadedRoomLevel

	.thumb
sub_803D4A0: @ 0x0803D4A0
	ldr r1, _0803D4A8
	movs r0, #1
	strb r0, [r1]
	bx lr
	.align 2, 0
_0803D4A8: .4byte 0x0203E93E

	.thumb
sub_803D4AC: @ 0x0803D4AC
	push {lr}
	ldr r3, _0803D4DC
	ldr r1, _0803D4E0
	ldrb r0, [r3]
	ldrb r1, [r1]
	cmp r0, r1
	beq _0803D4D8
	ldr r2, _0803D4E4
	ldr r1, _0803D4E8
	adds r0, r0, r1
	ldrb r1, [r2]
	ldrb r0, [r0]
	cmp r1, r0
	blo _0803D4D8
	movs r0, #0x29
	bl start_script
	ldr r0, _0803D4EC
	movs r1, #1
	strb r1, [r0]
	ldr r0, _0803D4F0
	strb r1, [r0]
_0803D4D8:
	pop {r0}
	bx r0
	.align 2, 0
_0803D4DC: .4byte 0x0200107E
_0803D4E0: .4byte 0x0200107F
_0803D4E4: .4byte gGameStatus
_0803D4E8: .4byte 0x080CC8EC
_0803D4EC: .4byte 0x0203E93F
_0803D4F0: .4byte 0x0203E10F

	.thumb
sub_803D4F4: @ 0x0803D4F4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _0803D588
	ldr r6, _0803D58C
	ldrb r1, [r0]
	adds r7, r0, #0
	ldrb r0, [r6]
	cmp r1, r0
	beq _0803D5CE
	ldrb r4, [r7]
	ldr r0, _0803D590
	ldr r5, _0803D594
	adds r1, r4, r5
	ldrb r2, [r0, #1]
	adds r3, r0, #0
	ldrb r1, [r1]
	cmp r2, r1
	blo _0803D532
	ldrb r1, [r6]
	cmp r4, r1
	beq _0803D532
	adds r1, r2, #0
_0803D522:
	adds r4, #1
	adds r0, r4, r5
	ldrb r0, [r0]
	cmp r1, r0
	blo _0803D532
	ldrb r0, [r6]
	cmp r4, r0
	bne _0803D522
_0803D532:
	ldrb r0, [r7]
	subs r0, r4, r0
	ldrb r1, [r3, #0x15]
	adds r0, r0, r1
	strb r0, [r3, #0x15]
	strb r0, [r3, #0x13]
	movs r5, #0
	ldrb r0, [r7]
	subs r0, r4, r0
	lsls r3, r4, #0x18
	mov r8, r3
	cmp r5, r0
	bge _0803D55C
	adds r6, r7, #0
_0803D54E:
	bl hud_extend_health_bar
	adds r5, #1
	ldrb r0, [r6]
	subs r0, r4, r0
	cmp r5, r0
	blt _0803D54E
_0803D55C:
	ldr r0, _0803D590
	ldrb r1, [r0, #0x13]
	movs r0, #0x38
	bl hud_set_value
	ldr r2, _0803D588
	strb r4, [r2]
	ldr r1, _0803D58C
	mov r4, r8
	lsrs r0, r4, #0x18
	ldrb r1, [r1]
	cmp r0, r1
	beq _0803D598
	ldr r0, _0803D594
	ldrb r1, [r2]
	adds r1, r1, r0
	ldrb r1, [r1]
	movs r0, #0x28
	bl hud_set_value
	b _0803D59E
	.align 2, 0
_0803D588: .4byte 0x0200107C
_0803D58C: .4byte 0x0200107D
_0803D590: .4byte gGameStatus
_0803D594: .4byte 0x080CC8E4
_0803D598:
	movs r0, #0x28
	bl hud_release_element
_0803D59E:
	ldr r0, _0803D5D8
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803D5CE
	ldr r3, _0803D5DC
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r3, r1
	ldrh r0, [r0]
	ldr r2, _0803D5E0
	movs r4, #0xa5
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
_0803D5CE:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803D5D8: .4byte gCanPlaySfx
_0803D5DC: .4byte 0x080CE440
_0803D5E0: .4byte gSfxVolume

	.thumb
sub_803D5E4: @ 0x0803D5E4
	push {r4, lr}
	ldr r2, _0803D634
	ldr r0, _0803D638
	ldrh r3, [r0]
	movs r0, #0xc4
	muls r0, r3, r0
	adds r2, #0x28
	adds r0, r0, r2
	ldr r0, [r0]
	adds r0, r0, r1
	movs r1, #1
	strb r1, [r0]
	ldr r0, _0803D63C
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803D62C
	ldr r3, _0803D640
	movs r1, #0xf0
	lsls r1, r1, #1
	adds r0, r3, r1
	ldrh r0, [r0]
	ldr r2, _0803D644
	movs r4, #0xf1
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
_0803D62C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803D634: .4byte 0x0203E440
_0803D638: .4byte gLoadedRoomLevel
_0803D63C: .4byte gCanPlaySfx
_0803D640: .4byte 0x080CE440
_0803D644: .4byte gSfxVolume

	.thumb
sub_803D648: @ 0x0803D648
	push {r4, lr}
	ldr r2, _0803D698
	ldr r0, _0803D69C
	ldrh r3, [r0]
	movs r0, #0xc4
	muls r0, r3, r0
	adds r2, #0x2c
	adds r0, r0, r2
	ldr r0, [r0]
	adds r0, r0, r1
	movs r1, #1
	strb r1, [r0]
	ldr r0, _0803D6A0
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803D690
	ldr r3, _0803D6A4
	movs r1, #0xf0
	lsls r1, r1, #1
	adds r0, r3, r1
	ldrh r0, [r0]
	ldr r2, _0803D6A8
	movs r4, #0xf1
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
_0803D690:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803D698: .4byte 0x0203E440
_0803D69C: .4byte gLoadedRoomLevel
_0803D6A0: .4byte gCanPlaySfx
_0803D6A4: .4byte 0x080CE440
_0803D6A8: .4byte gSfxVolume

	.thumb
sub_803D6AC: @ 0x0803D6AC
	push {r4, lr}
	ldr r2, _0803D6FC
	ldr r0, _0803D700
	ldrh r3, [r0]
	movs r0, #0xc4
	muls r0, r3, r0
	adds r2, #0x30
	adds r0, r0, r2
	ldr r0, [r0]
	adds r0, r0, r1
	movs r1, #1
	strb r1, [r0]
	ldr r0, _0803D704
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803D6F4
	ldr r3, _0803D708
	movs r1, #0xf0
	lsls r1, r1, #1
	adds r0, r3, r1
	ldrh r0, [r0]
	ldr r2, _0803D70C
	movs r4, #0xf1
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
_0803D6F4:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803D6FC: .4byte 0x0203E440
_0803D700: .4byte gLoadedRoomLevel
_0803D704: .4byte gCanPlaySfx
_0803D708: .4byte 0x080CE440
_0803D70C: .4byte gSfxVolume

	.thumb
sub_803D710: @ 0x0803D710
	push {r4, r5, r6, lr}
	adds r4, r1, #0
	ldr r0, _0803D7A4
	movs r3, #1
	strb r3, [r0]
	ldr r2, _0803D7A8
	ldr r5, _0803D7AC
	ldrh r1, [r5]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r2, #0x1c
	adds r0, r0, r2
	ldr r0, [r0]
	adds r0, r0, r4
	strb r3, [r0]
	ldr r2, _0803D7B0
	ldrh r1, [r5]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrb r1, [r0]
	adds r1, #1
	strb r1, [r0]
	ldr r1, _0803D7B4
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldrh r1, [r5]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrb r1, [r0]
	movs r0, #1
	bl hud_set_value
	ldr r0, _0803D7B8
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803D78C
	ldr r3, _0803D7BC
	movs r1, #0x98
	lsls r1, r1, #1
	adds r0, r3, r1
	ldrh r0, [r0]
	ldr r2, _0803D7C0
	movs r6, #0x99
	lsls r6, r6, #1
	adds r1, r3, r6
	ldrb r2, [r2]
	adds r1, r1, r2
	ldrb r1, [r1]
	adds r6, #2
	adds r2, r3, r6
	ldr r2, [r2]
	movs r3, #0x80
	lsls r3, r3, #9
	adds r2, r2, r3
	bl audio_new_fx
_0803D78C:
	ldr r1, _0803D7C4
	ldrh r2, [r5]
	lsls r0, r2, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	cmp r4, r0
	bne _0803D7C8
	movs r0, #0
	bl start_npc_dialogue
	b _0803D7DA
	.align 2, 0
_0803D7A4: .4byte 0x0203E128
_0803D7A8: .4byte 0x0203E170
_0803D7AC: .4byte gLoadedRoomLevel
_0803D7B0: .4byte 0x02000FCC
_0803D7B4: .4byte gGameStatus
_0803D7B8: .4byte gCanPlaySfx
_0803D7BC: .4byte 0x080CE440
_0803D7C0: .4byte gSfxVolume
_0803D7C4: .4byte 0x0203E988
_0803D7C8:
	ldr r0, _0803D7E0
	ldrh r0, [r0]
	cmp r4, r0
	bne _0803D7DA
	cmp r2, #0
	bne _0803D7DA
	movs r0, #0
	bl start_npc_dialogue
_0803D7DA:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0803D7E0: .4byte 0x0203E994

	.thumb
sub_803D7E4: @ 0x0803D7E4
	push {r4, r5, lr}
	adds r5, r1, #0
	ldr r0, _0803D874
	movs r4, #1
	strb r4, [r0]
	ldr r1, _0803D878
	ldrb r0, [r1]
	cmp r0, #0
	bne _0803D806
	strb r4, [r1]
	ldr r0, _0803D87C
	ldr r1, _0803D880
	ldrh r1, [r1]
	strb r1, [r0]
	movs r0, #0x34
	bl start_script
_0803D806:
	ldr r2, _0803D884
	ldr r3, _0803D880
	ldrh r1, [r3]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r2, #0x20
	adds r0, r0, r2
	ldr r0, [r0]
	adds r0, r0, r5
	strb r4, [r0]
	ldr r2, _0803D888
	ldrh r1, [r3]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrb r1, [r0, #1]
	adds r1, #1
	strb r1, [r0, #1]
	ldr r1, _0803D88C
	ldrb r0, [r1, #1]
	adds r0, #1
	strb r0, [r1, #1]
	ldrb r1, [r1, #1]
	movs r0, #6
	bl hud_set_value
	ldr r0, _0803D890
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803D86E
	ldr r3, _0803D894
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r3, r1
	ldrh r0, [r0]
	ldr r2, _0803D898
	movs r4, #0xa5
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
_0803D86E:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0803D874: .4byte 0x0203E126
_0803D878: .4byte 0x0203E968
_0803D87C: .4byte 0x0203E134
_0803D880: .4byte gLoadedRoomLevel
_0803D884: .4byte 0x0203E170
_0803D888: .4byte 0x02000FCC
_0803D88C: .4byte gGameStatus
_0803D890: .4byte gCanPlaySfx
_0803D894: .4byte 0x080CE440
_0803D898: .4byte gSfxVolume

	.thumb
sub_803D89C: @ 0x0803D89C
	push {r4, r5, r6, lr}
	ldr r0, _0803D940
	movs r4, #1
	strb r4, [r0]
	ldr r3, _0803D944
	ldr r5, _0803D948
	ldrh r2, [r5]
	lsls r0, r2, #4
	subs r0, r0, r2
	lsls r0, r0, #3
	adds r3, #0x24
	adds r0, r0, r3
	ldr r0, [r0]
	adds r0, r0, r1
	strb r4, [r0]
	ldr r4, _0803D94C
	ldrh r1, [r5]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r4
	ldrh r1, [r0, #6]
	adds r1, #1
	strh r1, [r0, #6]
	ldr r1, _0803D950
	ldrh r0, [r1, #0xc]
	adds r0, #1
	strh r0, [r1, #0xc]
	ldrh r1, [r5]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r4
	ldrh r1, [r0, #6]
	movs r0, #0
	bl hud_set_value
	ldr r0, _0803D954
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803D916
	ldr r3, _0803D958
	movs r1, #0x8c
	lsls r1, r1, #1
	adds r0, r3, r1
	ldrh r0, [r0]
	ldr r2, _0803D95C
	movs r6, #0x8d
	lsls r6, r6, #1
	adds r1, r3, r6
	ldrb r2, [r2]
	adds r1, r1, r2
	ldrb r1, [r1]
	adds r6, #2
	adds r2, r3, r6
	ldr r2, [r2]
	movs r3, #0x80
	lsls r3, r3, #9
	adds r2, r2, r3
	bl audio_new_fx
_0803D916:
	ldrh r1, [r5]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r2, r0, r4
	ldr r1, _0803D960
	adds r0, r0, r1
	ldrh r1, [r2, #6]
	ldrh r0, [r0, #6]
	cmp r1, r0
	bne _0803D938
	movs r0, #0x3b
	bl start_script
	ldr r1, _0803D964
	ldrh r0, [r5]
	strb r0, [r1]
_0803D938:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0803D940: .4byte 0x0203E127
_0803D944: .4byte 0x0203E170
_0803D948: .4byte gLoadedRoomLevel
_0803D94C: .4byte 0x02000FCC
_0803D950: .4byte gGameStatus
_0803D954: .4byte gCanPlaySfx
_0803D958: .4byte 0x080CE440
_0803D95C: .4byte gSfxVolume
_0803D960: .4byte 0x080CC84C
_0803D964: .4byte 0x0203E135

	.thumb
sub_803D968: @ 0x0803D968
	push {r4, r5, r6, lr}
	ldr r0, _0803DA0C
	movs r4, #1
	strb r4, [r0]
	ldr r3, _0803DA10
	ldr r5, _0803DA14
	ldrh r2, [r5]
	lsls r0, r2, #4
	subs r0, r0, r2
	lsls r0, r0, #3
	adds r3, #0x28
	adds r0, r0, r3
	ldr r0, [r0]
	adds r0, r0, r1
	strb r4, [r0]
	ldr r4, _0803DA18
	ldrh r1, [r5]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r4
	ldrh r1, [r0, #6]
	adds r1, #5
	strh r1, [r0, #6]
	ldr r1, _0803DA1C
	ldrh r0, [r1, #0xc]
	adds r0, #5
	strh r0, [r1, #0xc]
	ldrh r1, [r5]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r4
	ldrh r1, [r0, #6]
	movs r0, #0
	bl hud_set_value
	ldr r0, _0803DA20
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803D9E2
	ldr r3, _0803DA24
	movs r1, #0x90
	lsls r1, r1, #1
	adds r0, r3, r1
	ldrh r0, [r0]
	ldr r2, _0803DA28
	movs r6, #0x91
	lsls r6, r6, #1
	adds r1, r3, r6
	ldrb r2, [r2]
	adds r1, r1, r2
	ldrb r1, [r1]
	adds r6, #2
	adds r2, r3, r6
	ldr r2, [r2]
	movs r3, #0x80
	lsls r3, r3, #9
	adds r2, r2, r3
	bl audio_new_fx
_0803D9E2:
	ldrh r1, [r5]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r2, r0, r4
	ldr r1, _0803DA2C
	adds r0, r0, r1
	ldrh r1, [r2, #6]
	ldrh r0, [r0, #6]
	cmp r1, r0
	bne _0803DA04
	movs r0, #0x3b
	bl start_script
	ldr r1, _0803DA30
	ldrh r0, [r5]
	strb r0, [r1]
_0803DA04:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0803DA0C: .4byte 0x0203E127
_0803DA10: .4byte 0x0203E170
_0803DA14: .4byte gLoadedRoomLevel
_0803DA18: .4byte 0x02000FCC
_0803DA1C: .4byte gGameStatus
_0803DA20: .4byte gCanPlaySfx
_0803DA24: .4byte 0x080CE440
_0803DA28: .4byte gSfxVolume
_0803DA2C: .4byte 0x080CC84C
_0803DA30: .4byte 0x0203E135

	.thumb
sub_803DA34: @ 0x0803DA34
	push {r4, r5, r6, lr}
	ldr r0, _0803DAD8
	movs r4, #1
	strb r4, [r0]
	ldr r3, _0803DADC
	ldr r5, _0803DAE0
	ldrh r2, [r5]
	lsls r0, r2, #4
	subs r0, r0, r2
	lsls r0, r0, #3
	adds r3, #0x2c
	adds r0, r0, r3
	ldr r0, [r0]
	adds r0, r0, r1
	strb r4, [r0]
	ldr r4, _0803DAE4
	ldrh r1, [r5]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r4
	ldrh r1, [r0, #6]
	adds r1, #0x14
	strh r1, [r0, #6]
	ldr r1, _0803DAE8
	ldrh r0, [r1, #0xc]
	adds r0, #0x14
	strh r0, [r1, #0xc]
	ldrh r1, [r5]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r4
	ldrh r1, [r0, #6]
	movs r0, #0
	bl hud_set_value
	ldr r0, _0803DAEC
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803DAAE
	ldr r3, _0803DAF0
	movs r1, #0x94
	lsls r1, r1, #1
	adds r0, r3, r1
	ldrh r0, [r0]
	ldr r2, _0803DAF4
	movs r6, #0x95
	lsls r6, r6, #1
	adds r1, r3, r6
	ldrb r2, [r2]
	adds r1, r1, r2
	ldrb r1, [r1]
	adds r6, #2
	adds r2, r3, r6
	ldr r2, [r2]
	movs r3, #0x80
	lsls r3, r3, #9
	adds r2, r2, r3
	bl audio_new_fx
_0803DAAE:
	ldrh r1, [r5]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r2, r0, r4
	ldr r1, _0803DAF8
	adds r0, r0, r1
	ldrh r1, [r2, #6]
	ldrh r0, [r0, #6]
	cmp r1, r0
	bne _0803DAD0
	movs r0, #0x3b
	bl start_script
	ldr r1, _0803DAFC
	ldrh r0, [r5]
	strb r0, [r1]
_0803DAD0:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0803DAD8: .4byte 0x0203E127
_0803DADC: .4byte 0x0203E170
_0803DAE0: .4byte gLoadedRoomLevel
_0803DAE4: .4byte 0x02000FCC
_0803DAE8: .4byte gGameStatus
_0803DAEC: .4byte gCanPlaySfx
_0803DAF0: .4byte 0x080CE440
_0803DAF4: .4byte gSfxVolume
_0803DAF8: .4byte 0x080CC84C
_0803DAFC: .4byte 0x0203E135

	.thumb
sub_803DB00: @ 0x0803DB00
	push {r4, lr}
	ldr r0, _0803DC00
	movs r2, #1
	strb r2, [r0]
	ldr r1, _0803DC04
	ldrb r0, [r1]
	cmp r0, #0
	bne _0803DB20
	strb r2, [r1]
	ldr r0, _0803DC08
	ldr r1, _0803DC0C
	ldrh r1, [r1]
	strb r1, [r0]
	movs r0, #0x37
	bl start_script
_0803DB20:
	ldr r3, _0803DC10
	ldr r2, _0803DC0C
	ldrh r1, [r2]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r3
	adds r0, #0x70
	movs r1, #1
	strb r1, [r0]
	ldr r3, _0803DC14
	ldrh r1, [r2]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r3
	ldrb r1, [r0, #5]
	adds r1, #1
	strb r1, [r0, #5]
	ldr r1, _0803DC18
	ldrb r0, [r1, #0xb]
	adds r0, #1
	strb r0, [r1, #0xb]
	ldrh r1, [r2]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r3
	ldrb r1, [r0, #5]
	movs r0, #7
	bl hud_set_value
	ldr r4, _0803DC1C
	ldrb r0, [r4]
	cmp r0, #0
	beq _0803DB9E
	ldr r0, _0803DC20
	ldr r0, [r0]
	bl audio_halt_fx
	ldrb r0, [r4]
	cmp r0, #0
	beq _0803DB9E
	ldr r3, _0803DC24
	movs r1, #0x84
	lsls r1, r1, #1
	adds r0, r3, r1
	ldrh r0, [r0]
	ldr r2, _0803DC28
	movs r4, #0x85
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
_0803DB9E:
	ldr r1, _0803DC2C
	ldr r3, _0803DC0C
	ldrh r0, [r3]
	adds r0, r0, r1
	movs r2, #0
	movs r1, #1
	strb r1, [r0]
	ldr r1, _0803DC30
	ldrh r0, [r3]
	adds r0, r0, r1
	strb r2, [r0]
	ldr r2, _0803DC34
	ldrh r1, [r3]
	adds r1, r1, r2
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldrh r0, [r3]
	adds r2, r0, r2
	ldr r1, _0803DC38
	lsls r3, r0, #2
	adds r0, r3, r0
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrb r1, [r2]
	ldrb r0, [r0, #5]
	cmp r1, r0
	bne _0803DBFA
	ldr r0, _0803DC3C
	adds r0, r3, r0
	ldr r0, [r0]
	bl start_script
	movs r0, #0x88
	lsls r0, r0, #1
	movs r1, #0
	bl is_obj_disabled
	cmp r0, #0
	bne _0803DBFA
	ldr r0, _0803DC40
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_8034460
_0803DBFA:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803DC00: .4byte 0x0203E129
_0803DC04: .4byte 0x0203E96B
_0803DC08: .4byte 0x0203E134
_0803DC0C: .4byte gLoadedRoomLevel
_0803DC10: .4byte 0x0203E170
_0803DC14: .4byte 0x02000FCC
_0803DC18: .4byte gGameStatus
_0803DC1C: .4byte gCanPlaySfx
_0803DC20: .4byte 0x0203DFCC
_0803DC24: .4byte 0x080CE440
_0803DC28: .4byte gSfxVolume
_0803DC2C: .4byte 0x0203E110
_0803DC30: .4byte 0x0203E11C
_0803DC34: .4byte 0x0203E116
_0803DC38: .4byte 0x080CC84C
_0803DC3C: .4byte 0x080CEE44
_0803DC40: .4byte 0x00000111

	.thumb
sub_803DC44: @ 0x0803DC44
	push {r4, lr}
	ldr r0, _0803DD44
	movs r2, #1
	strb r2, [r0]
	ldr r1, _0803DD48
	ldrb r0, [r1]
	cmp r0, #0
	bne _0803DC64
	strb r2, [r1]
	ldr r0, _0803DD4C
	ldr r1, _0803DD50
	ldrh r1, [r1]
	strb r1, [r0]
	movs r0, #0x37
	bl start_script
_0803DC64:
	ldr r3, _0803DD54
	ldr r2, _0803DD50
	ldrh r1, [r2]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r3
	adds r0, #0x71
	movs r1, #1
	strb r1, [r0]
	ldr r3, _0803DD58
	ldrh r1, [r2]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r3
	ldrb r1, [r0, #5]
	adds r1, #1
	strb r1, [r0, #5]
	ldr r1, _0803DD5C
	ldrb r0, [r1, #0xb]
	adds r0, #1
	strb r0, [r1, #0xb]
	ldrh r1, [r2]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r3
	ldrb r1, [r0, #5]
	movs r0, #7
	bl hud_set_value
	ldr r4, _0803DD60
	ldrb r0, [r4]
	cmp r0, #0
	beq _0803DCE2
	ldr r0, _0803DD64
	ldr r0, [r0]
	bl audio_halt_fx
	ldrb r0, [r4]
	cmp r0, #0
	beq _0803DCE2
	ldr r3, _0803DD68
	movs r1, #0x84
	lsls r1, r1, #1
	adds r0, r3, r1
	ldrh r0, [r0]
	ldr r2, _0803DD6C
	movs r4, #0x85
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
_0803DCE2:
	ldr r1, _0803DD70
	ldr r3, _0803DD50
	ldrh r0, [r3]
	adds r0, r0, r1
	movs r2, #0
	movs r1, #2
	strb r1, [r0]
	ldr r1, _0803DD74
	ldrh r0, [r3]
	adds r0, r0, r1
	strb r2, [r0]
	ldr r2, _0803DD78
	ldrh r1, [r3]
	adds r1, r1, r2
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldrh r0, [r3]
	adds r2, r0, r2
	ldr r1, _0803DD7C
	lsls r3, r0, #2
	adds r0, r3, r0
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrb r1, [r2]
	ldrb r0, [r0, #5]
	cmp r1, r0
	bne _0803DD3E
	ldr r0, _0803DD80
	adds r0, r3, r0
	ldr r0, [r0]
	bl start_script
	movs r0, #0x88
	lsls r0, r0, #1
	movs r1, #0
	bl is_obj_disabled
	cmp r0, #0
	bne _0803DD3E
	ldr r0, _0803DD84
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_8034460
_0803DD3E:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803DD44: .4byte 0x0203E129
_0803DD48: .4byte 0x0203E96B
_0803DD4C: .4byte 0x0203E134
_0803DD50: .4byte gLoadedRoomLevel
_0803DD54: .4byte 0x0203E170
_0803DD58: .4byte 0x02000FCC
_0803DD5C: .4byte gGameStatus
_0803DD60: .4byte gCanPlaySfx
_0803DD64: .4byte 0x0203DFCC
_0803DD68: .4byte 0x080CE440
_0803DD6C: .4byte gSfxVolume
_0803DD70: .4byte 0x0203E110
_0803DD74: .4byte 0x0203E11C
_0803DD78: .4byte 0x0203E116
_0803DD7C: .4byte 0x080CC84C
_0803DD80: .4byte 0x080CEE44
_0803DD84: .4byte 0x00000111

	.thumb
sub_803DD88: @ 0x0803DD88
	push {r4, lr}
	ldr r0, _0803DE88
	movs r2, #1
	strb r2, [r0]
	ldr r1, _0803DE8C
	ldrb r0, [r1]
	cmp r0, #0
	bne _0803DDA8
	strb r2, [r1]
	ldr r0, _0803DE90
	ldr r1, _0803DE94
	ldrh r1, [r1]
	strb r1, [r0]
	movs r0, #0x37
	bl start_script
_0803DDA8:
	ldr r3, _0803DE98
	ldr r2, _0803DE94
	ldrh r1, [r2]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r3
	adds r0, #0x72
	movs r1, #1
	strb r1, [r0]
	ldr r3, _0803DE9C
	ldrh r1, [r2]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r3
	ldrb r1, [r0, #5]
	adds r1, #1
	strb r1, [r0, #5]
	ldr r1, _0803DEA0
	ldrb r0, [r1, #0xb]
	adds r0, #1
	strb r0, [r1, #0xb]
	ldrh r1, [r2]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r3
	ldrb r1, [r0, #5]
	movs r0, #7
	bl hud_set_value
	ldr r4, _0803DEA4
	ldrb r0, [r4]
	cmp r0, #0
	beq _0803DE26
	ldr r0, _0803DEA8
	ldr r0, [r0]
	bl audio_halt_fx
	ldrb r0, [r4]
	cmp r0, #0
	beq _0803DE26
	ldr r3, _0803DEAC
	movs r1, #0x84
	lsls r1, r1, #1
	adds r0, r3, r1
	ldrh r0, [r0]
	ldr r2, _0803DEB0
	movs r4, #0x85
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
_0803DE26:
	ldr r1, _0803DEB4
	ldr r3, _0803DE94
	ldrh r0, [r3]
	adds r0, r0, r1
	movs r2, #0
	movs r1, #3
	strb r1, [r0]
	ldr r1, _0803DEB8
	ldrh r0, [r3]
	adds r0, r0, r1
	strb r2, [r0]
	ldr r2, _0803DEBC
	ldrh r1, [r3]
	adds r1, r1, r2
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldrh r0, [r3]
	adds r2, r0, r2
	ldr r1, _0803DEC0
	lsls r3, r0, #2
	adds r0, r3, r0
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrb r1, [r2]
	ldrb r0, [r0, #5]
	cmp r1, r0
	bne _0803DE82
	ldr r0, _0803DEC4
	adds r0, r3, r0
	ldr r0, [r0]
	bl start_script
	movs r0, #0x88
	lsls r0, r0, #1
	movs r1, #0
	bl is_obj_disabled
	cmp r0, #0
	bne _0803DE82
	ldr r0, _0803DEC8
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_8034460
_0803DE82:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803DE88: .4byte 0x0203E129
_0803DE8C: .4byte 0x0203E96B
_0803DE90: .4byte 0x0203E134
_0803DE94: .4byte gLoadedRoomLevel
_0803DE98: .4byte 0x0203E170
_0803DE9C: .4byte 0x02000FCC
_0803DEA0: .4byte gGameStatus
_0803DEA4: .4byte gCanPlaySfx
_0803DEA8: .4byte 0x0203DFCC
_0803DEAC: .4byte 0x080CE440
_0803DEB0: .4byte gSfxVolume
_0803DEB4: .4byte 0x0203E110
_0803DEB8: .4byte 0x0203E11C
_0803DEBC: .4byte 0x0203E116
_0803DEC0: .4byte 0x080CC84C
_0803DEC4: .4byte 0x080CEE44
_0803DEC8: .4byte 0x00000111

	.thumb
sub_803DECC: @ 0x0803DECC
	push {r4, lr}
	ldr r0, _0803DFCC
	movs r2, #1
	strb r2, [r0]
	ldr r1, _0803DFD0
	ldrb r0, [r1]
	cmp r0, #0
	bne _0803DEEC
	strb r2, [r1]
	ldr r0, _0803DFD4
	ldr r1, _0803DFD8
	ldrh r1, [r1]
	strb r1, [r0]
	movs r0, #0x37
	bl start_script
_0803DEEC:
	ldr r3, _0803DFDC
	ldr r2, _0803DFD8
	ldrh r1, [r2]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r3
	adds r0, #0x73
	movs r1, #1
	strb r1, [r0]
	ldr r3, _0803DFE0
	ldrh r1, [r2]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r3
	ldrb r1, [r0, #5]
	adds r1, #1
	strb r1, [r0, #5]
	ldr r1, _0803DFE4
	ldrb r0, [r1, #0xb]
	adds r0, #1
	strb r0, [r1, #0xb]
	ldrh r1, [r2]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r3
	ldrb r1, [r0, #5]
	movs r0, #7
	bl hud_set_value
	ldr r4, _0803DFE8
	ldrb r0, [r4]
	cmp r0, #0
	beq _0803DF6A
	ldr r0, _0803DFEC
	ldr r0, [r0]
	bl audio_halt_fx
	ldrb r0, [r4]
	cmp r0, #0
	beq _0803DF6A
	ldr r3, _0803DFF0
	movs r1, #0x84
	lsls r1, r1, #1
	adds r0, r3, r1
	ldrh r0, [r0]
	ldr r2, _0803DFF4
	movs r4, #0x85
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
_0803DF6A:
	ldr r1, _0803DFF8
	ldr r3, _0803DFD8
	ldrh r0, [r3]
	adds r0, r0, r1
	movs r2, #0
	movs r1, #4
	strb r1, [r0]
	ldr r1, _0803DFFC
	ldrh r0, [r3]
	adds r0, r0, r1
	strb r2, [r0]
	ldr r2, _0803E000
	ldrh r1, [r3]
	adds r1, r1, r2
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldrh r0, [r3]
	adds r2, r0, r2
	ldr r1, _0803E004
	lsls r3, r0, #2
	adds r0, r3, r0
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrb r1, [r2]
	ldrb r0, [r0, #5]
	cmp r1, r0
	bne _0803DFC6
	ldr r0, _0803E008
	adds r0, r3, r0
	ldr r0, [r0]
	bl start_script
	movs r0, #0x88
	lsls r0, r0, #1
	movs r1, #0
	bl is_obj_disabled
	cmp r0, #0
	bne _0803DFC6
	ldr r0, _0803E00C
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_8034460
_0803DFC6:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803DFCC: .4byte 0x0203E129
_0803DFD0: .4byte 0x0203E96B
_0803DFD4: .4byte 0x0203E134
_0803DFD8: .4byte gLoadedRoomLevel
_0803DFDC: .4byte 0x0203E170
_0803DFE0: .4byte 0x02000FCC
_0803DFE4: .4byte gGameStatus
_0803DFE8: .4byte gCanPlaySfx
_0803DFEC: .4byte 0x0203DFCC
_0803DFF0: .4byte 0x080CE440
_0803DFF4: .4byte gSfxVolume
_0803DFF8: .4byte 0x0203E110
_0803DFFC: .4byte 0x0203E11C
_0803E000: .4byte 0x0203E116
_0803E004: .4byte 0x080CC84C
_0803E008: .4byte 0x080CEE44
_0803E00C: .4byte 0x00000111

	.thumb
sub_803E010: @ 0x0803E010
	push {r4, lr}
	ldr r0, _0803E110
	movs r2, #1
	strb r2, [r0]
	ldr r1, _0803E114
	ldrb r0, [r1]
	cmp r0, #0
	bne _0803E030
	strb r2, [r1]
	ldr r0, _0803E118
	ldr r1, _0803E11C
	ldrh r1, [r1]
	strb r1, [r0]
	movs r0, #0x37
	bl start_script
_0803E030:
	ldr r3, _0803E120
	ldr r2, _0803E11C
	ldrh r1, [r2]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r3
	adds r0, #0x74
	movs r1, #1
	strb r1, [r0]
	ldr r3, _0803E124
	ldrh r1, [r2]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r3
	ldrb r1, [r0, #5]
	adds r1, #1
	strb r1, [r0, #5]
	ldr r1, _0803E128
	ldrb r0, [r1, #0xb]
	adds r0, #1
	strb r0, [r1, #0xb]
	ldrh r1, [r2]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r3
	ldrb r1, [r0, #5]
	movs r0, #7
	bl hud_set_value
	ldr r4, _0803E12C
	ldrb r0, [r4]
	cmp r0, #0
	beq _0803E0AE
	ldr r0, _0803E130
	ldr r0, [r0]
	bl audio_halt_fx
	ldrb r0, [r4]
	cmp r0, #0
	beq _0803E0AE
	ldr r3, _0803E134
	movs r1, #0x84
	lsls r1, r1, #1
	adds r0, r3, r1
	ldrh r0, [r0]
	ldr r2, _0803E138
	movs r4, #0x85
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
_0803E0AE:
	ldr r1, _0803E13C
	ldr r3, _0803E11C
	ldrh r0, [r3]
	adds r0, r0, r1
	movs r2, #0
	movs r1, #5
	strb r1, [r0]
	ldr r1, _0803E140
	ldrh r0, [r3]
	adds r0, r0, r1
	strb r2, [r0]
	ldr r2, _0803E144
	ldrh r1, [r3]
	adds r1, r1, r2
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldrh r0, [r3]
	adds r2, r0, r2
	ldr r1, _0803E148
	lsls r3, r0, #2
	adds r0, r3, r0
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrb r1, [r2]
	ldrb r0, [r0, #5]
	cmp r1, r0
	bne _0803E10A
	ldr r0, _0803E14C
	adds r0, r3, r0
	ldr r0, [r0]
	bl start_script
	movs r0, #0x88
	lsls r0, r0, #1
	movs r1, #0
	bl is_obj_disabled
	cmp r0, #0
	bne _0803E10A
	ldr r0, _0803E150
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_8034460
_0803E10A:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803E110: .4byte 0x0203E129
_0803E114: .4byte 0x0203E96B
_0803E118: .4byte 0x0203E134
_0803E11C: .4byte gLoadedRoomLevel
_0803E120: .4byte 0x0203E170
_0803E124: .4byte 0x02000FCC
_0803E128: .4byte gGameStatus
_0803E12C: .4byte gCanPlaySfx
_0803E130: .4byte 0x0203DFCC
_0803E134: .4byte 0x080CE440
_0803E138: .4byte gSfxVolume
_0803E13C: .4byte 0x0203E110
_0803E140: .4byte 0x0203E11C
_0803E144: .4byte 0x0203E116
_0803E148: .4byte 0x080CC84C
_0803E14C: .4byte 0x080CEE44
_0803E150: .4byte 0x00000111

	.thumb
sub_803E154: @ 0x0803E154
	push {r4, r5, lr}
	adds r5, r1, #0
	ldr r0, _0803E1F0
	movs r4, #1
	strb r4, [r0]
	ldr r1, _0803E1F4
	ldrb r0, [r1]
	cmp r0, #0
	bne _0803E176
	strb r4, [r1]
	ldr r0, _0803E1F8
	ldr r1, _0803E1FC
	ldrh r1, [r1]
	strb r1, [r0]
	movs r0, #0x39
	bl start_script
_0803E176:
	ldr r2, _0803E200
	ldr r3, _0803E1FC
	ldrh r1, [r3]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r2, #0x44
	adds r0, r0, r2
	ldr r0, [r0]
	adds r0, r0, r5
	strb r4, [r0]
	ldr r2, _0803E204
	ldrh r1, [r3]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrb r1, [r0, #9]
	adds r1, #1
	strb r1, [r0, #9]
	ldr r1, _0803E208
	ldrb r0, [r1, #2]
	adds r0, #1
	strb r0, [r1, #2]
	ldrb r0, [r1, #6]
	adds r0, #1
	strb r0, [r1, #6]
	ldrb r1, [r1, #6]
	movs r0, #0x16
	bl hud_set_value
	ldr r0, _0803E20C
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803E1E4
	ldr r3, _0803E210
	movs r1, #0xa8
	lsls r1, r1, #1
	adds r0, r3, r1
	ldrh r0, [r0]
	ldr r2, _0803E214
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
_0803E1E4:
	ldr r1, _0803E218
	movs r0, #0x23
	strh r0, [r1]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0803E1F0: .4byte 0x0203E12B
_0803E1F4: .4byte 0x0203E96D
_0803E1F8: .4byte 0x0203E134
_0803E1FC: .4byte gLoadedRoomLevel
_0803E200: .4byte 0x0203E170
_0803E204: .4byte 0x02000FCC
_0803E208: .4byte gGameStatus
_0803E20C: .4byte gCanPlaySfx
_0803E210: .4byte 0x080CE440
_0803E214: .4byte gSfxVolume
_0803E218: .4byte 0x0203E140

	.thumb
sub_803E21C: @ 0x0803E21C
	push {r4, r5, lr}
	adds r5, r1, #0
	ldr r0, _0803E2B8
	movs r4, #1
	strb r4, [r0]
	ldr r1, _0803E2BC
	ldrb r0, [r1]
	cmp r0, #0
	bne _0803E23E
	strb r4, [r1]
	ldr r0, _0803E2C0
	ldr r1, _0803E2C4
	ldrh r1, [r1]
	strb r1, [r0]
	movs r0, #0x39
	bl start_script
_0803E23E:
	ldr r2, _0803E2C8
	ldr r3, _0803E2C4
	ldrh r1, [r3]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r2, #0x48
	adds r0, r0, r2
	ldr r0, [r0]
	adds r0, r0, r5
	strb r4, [r0]
	ldr r2, _0803E2CC
	ldrh r1, [r3]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrb r1, [r0, #0xa]
	adds r1, #1
	strb r1, [r0, #0xa]
	ldr r1, _0803E2D0
	ldrb r0, [r1, #3]
	adds r0, #1
	strb r0, [r1, #3]
	ldrb r0, [r1, #6]
	adds r0, #1
	strb r0, [r1, #6]
	ldrb r1, [r1, #6]
	movs r0, #0x16
	bl hud_set_value
	ldr r0, _0803E2D4
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803E2AC
	ldr r3, _0803E2D8
	movs r1, #0xa8
	lsls r1, r1, #1
	adds r0, r3, r1
	ldrh r0, [r0]
	ldr r2, _0803E2DC
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
_0803E2AC:
	ldr r1, _0803E2E0
	movs r0, #0x24
	strh r0, [r1]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0803E2B8: .4byte 0x0203E12B
_0803E2BC: .4byte 0x0203E96D
_0803E2C0: .4byte 0x0203E134
_0803E2C4: .4byte gLoadedRoomLevel
_0803E2C8: .4byte 0x0203E170
_0803E2CC: .4byte 0x02000FCC
_0803E2D0: .4byte gGameStatus
_0803E2D4: .4byte gCanPlaySfx
_0803E2D8: .4byte 0x080CE440
_0803E2DC: .4byte gSfxVolume
_0803E2E0: .4byte 0x0203E140

	.thumb
sub_803E2E4: @ 0x0803E2E4
	push {r4, r5, lr}
	adds r5, r1, #0
	ldr r0, _0803E380
	movs r4, #1
	strb r4, [r0]
	ldr r1, _0803E384
	ldrb r0, [r1]
	cmp r0, #0
	bne _0803E306
	strb r4, [r1]
	ldr r0, _0803E388
	ldr r1, _0803E38C
	ldrh r1, [r1]
	strb r1, [r0]
	movs r0, #0x39
	bl start_script
_0803E306:
	ldr r2, _0803E390
	ldr r3, _0803E38C
	ldrh r1, [r3]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r2, #0x4c
	adds r0, r0, r2
	ldr r0, [r0]
	adds r0, r0, r5
	strb r4, [r0]
	ldr r2, _0803E394
	ldrh r1, [r3]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrb r1, [r0, #0xb]
	adds r1, #1
	strb r1, [r0, #0xb]
	ldr r1, _0803E398
	ldrb r0, [r1, #4]
	adds r0, #1
	strb r0, [r1, #4]
	ldrb r0, [r1, #6]
	adds r0, #1
	strb r0, [r1, #6]
	ldrb r1, [r1, #6]
	movs r0, #0x16
	bl hud_set_value
	ldr r0, _0803E39C
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803E374
	ldr r3, _0803E3A0
	movs r1, #0xa8
	lsls r1, r1, #1
	adds r0, r3, r1
	ldrh r0, [r0]
	ldr r2, _0803E3A4
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
_0803E374:
	ldr r1, _0803E3A8
	movs r0, #0x25
	strh r0, [r1]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0803E380: .4byte 0x0203E12B
_0803E384: .4byte 0x0203E96D
_0803E388: .4byte 0x0203E134
_0803E38C: .4byte gLoadedRoomLevel
_0803E390: .4byte 0x0203E170
_0803E394: .4byte 0x02000FCC
_0803E398: .4byte gGameStatus
_0803E39C: .4byte gCanPlaySfx
_0803E3A0: .4byte 0x080CE440
_0803E3A4: .4byte gSfxVolume
_0803E3A8: .4byte 0x0203E140

	.thumb
sub_803E3AC: @ 0x0803E3AC
	push {r4, r5, lr}
	adds r5, r1, #0
	ldr r0, _0803E448
	movs r4, #1
	strb r4, [r0]
	ldr r1, _0803E44C
	ldrb r0, [r1]
	cmp r0, #0
	bne _0803E3CE
	strb r4, [r1]
	ldr r0, _0803E450
	ldr r1, _0803E454
	ldrh r1, [r1]
	strb r1, [r0]
	movs r0, #0x39
	bl start_script
_0803E3CE:
	ldr r2, _0803E458
	ldr r3, _0803E454
	ldrh r1, [r3]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r2, #0x50
	adds r0, r0, r2
	ldr r0, [r0]
	adds r0, r0, r5
	strb r4, [r0]
	ldr r2, _0803E45C
	ldrh r1, [r3]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrb r1, [r0, #0xc]
	adds r1, #1
	strb r1, [r0, #0xc]
	ldr r1, _0803E460
	ldrb r0, [r1, #5]
	adds r0, #1
	strb r0, [r1, #5]
	ldrb r0, [r1, #6]
	adds r0, #1
	strb r0, [r1, #6]
	ldrb r1, [r1, #6]
	movs r0, #0x16
	bl hud_set_value
	ldr r0, _0803E464
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803E43C
	ldr r3, _0803E468
	movs r1, #0xa8
	lsls r1, r1, #1
	adds r0, r3, r1
	ldrh r0, [r0]
	ldr r2, _0803E46C
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
_0803E43C:
	ldr r1, _0803E470
	movs r0, #0x26
	strh r0, [r1]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0803E448: .4byte 0x0203E12B
_0803E44C: .4byte 0x0203E96D
_0803E450: .4byte 0x0203E134
_0803E454: .4byte gLoadedRoomLevel
_0803E458: .4byte 0x0203E170
_0803E45C: .4byte 0x02000FCC
_0803E460: .4byte gGameStatus
_0803E464: .4byte gCanPlaySfx
_0803E468: .4byte 0x080CE440
_0803E46C: .4byte gSfxVolume
_0803E470: .4byte 0x0203E140

	.thumb
sub_803E474: @ 0x0803E474
	push {r4, lr}
	ldr r0, _0803E4F0
	movs r2, #1
	strb r2, [r0]
	ldr r1, _0803E4F4
	ldrb r0, [r1]
	cmp r0, #0
	bne _0803E494
	strb r2, [r1]
	ldr r0, _0803E4F8
	ldr r1, _0803E4FC
	ldrh r1, [r1]
	strb r1, [r0]
	movs r0, #0x38
	bl start_script
_0803E494:
	ldr r2, _0803E500
	ldrb r0, [r2, #0x12]
	adds r0, #3
	strb r0, [r2, #0x12]
	ldr r1, _0803E504
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrb r3, [r1, #0x12]
	ldrb r1, [r1, #0x12]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	cmp r0, r1
	ble _0803E4B0
	strb r3, [r2, #0x12]
_0803E4B0:
	movs r1, #0x12
	ldrsb r1, [r2, r1]
	movs r0, #3
	bl hud_set_value
	ldr r0, _0803E508
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803E4EA
	ldr r3, _0803E50C
	movs r1, #0x88
	lsls r1, r1, #1
	adds r0, r3, r1
	ldrh r0, [r0]
	ldr r2, _0803E510
	movs r4, #0x89
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
_0803E4EA:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803E4F0: .4byte 0x0203E12A
_0803E4F4: .4byte 0x0203E96C
_0803E4F8: .4byte 0x0203E134
_0803E4FC: .4byte gLoadedRoomLevel
_0803E500: .4byte gGameStatus
_0803E504: .4byte 0x080CC8C4
_0803E508: .4byte gCanPlaySfx
_0803E50C: .4byte 0x080CE440
_0803E510: .4byte gSfxVolume

	.thumb
sub_803E514: @ 0x0803E514
	push {r4, lr}
	ldr r0, _0803E590
	movs r2, #1
	strb r2, [r0]
	ldr r1, _0803E594
	ldrb r0, [r1]
	cmp r0, #0
	bne _0803E534
	strb r2, [r1]
	ldr r0, _0803E598
	ldr r1, _0803E59C
	ldrh r1, [r1]
	strb r1, [r0]
	movs r0, #0x36
	bl start_script
_0803E534:
	ldr r2, _0803E5A0
	ldrb r0, [r2, #0xe]
	adds r0, #3
	strb r0, [r2, #0xe]
	ldr r1, _0803E5A4
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrb r3, [r1, #0xe]
	ldrb r1, [r1, #0xe]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	cmp r0, r1
	ble _0803E550
	strb r3, [r2, #0xe]
_0803E550:
	movs r1, #0xe
	ldrsb r1, [r2, r1]
	movs r0, #9
	bl hud_set_value
	ldr r0, _0803E5A8
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803E58A
	ldr r3, _0803E5AC
	movs r1, #0x9c
	lsls r1, r1, #1
	adds r0, r3, r1
	ldrh r0, [r0]
	ldr r2, _0803E5B0
	movs r4, #0x9d
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
_0803E58A:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803E590: .4byte 0x0203E122
_0803E594: .4byte 0x0203E96A
_0803E598: .4byte 0x0203E134
_0803E59C: .4byte gLoadedRoomLevel
_0803E5A0: .4byte gGameStatus
_0803E5A4: .4byte 0x080CC8C4
_0803E5A8: .4byte gCanPlaySfx
_0803E5AC: .4byte 0x080CE440
_0803E5B0: .4byte gSfxVolume

	.thumb
sub_803E5B4: @ 0x0803E5B4
	push {r4, lr}
	ldr r0, _0803E630
	movs r2, #1
	strb r2, [r0]
	ldr r1, _0803E634
	ldrb r0, [r1]
	cmp r0, #0
	bne _0803E5D4
	strb r2, [r1]
	ldr r0, _0803E638
	ldr r1, _0803E63C
	ldrh r1, [r1]
	strb r1, [r0]
	movs r0, #0x36
	bl start_script
_0803E5D4:
	ldr r2, _0803E640
	ldrb r0, [r2, #0xf]
	adds r0, #3
	strb r0, [r2, #0xf]
	ldr r1, _0803E644
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrb r3, [r1, #0xf]
	ldrb r1, [r1, #0xf]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	cmp r0, r1
	ble _0803E5F0
	strb r3, [r2, #0xf]
_0803E5F0:
	movs r1, #0xf
	ldrsb r1, [r2, r1]
	movs r0, #0xa
	bl hud_set_value
	ldr r0, _0803E648
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803E62A
	ldr r3, _0803E64C
	movs r1, #0x9c
	lsls r1, r1, #1
	adds r0, r3, r1
	ldrh r0, [r0]
	ldr r2, _0803E650
	movs r4, #0x9d
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
_0803E62A:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803E630: .4byte 0x0203E123
_0803E634: .4byte 0x0203E96A
_0803E638: .4byte 0x0203E134
_0803E63C: .4byte gLoadedRoomLevel
_0803E640: .4byte gGameStatus
_0803E644: .4byte 0x080CC8C4
_0803E648: .4byte gCanPlaySfx
_0803E64C: .4byte 0x080CE440
_0803E650: .4byte gSfxVolume

	.thumb
sub_803E654: @ 0x0803E654
	push {r4, lr}
	ldr r0, _0803E6D0
	movs r2, #1
	strb r2, [r0]
	ldr r1, _0803E6D4
	ldrb r0, [r1]
	cmp r0, #0
	bne _0803E674
	strb r2, [r1]
	ldr r0, _0803E6D8
	ldr r1, _0803E6DC
	ldrh r1, [r1]
	strb r1, [r0]
	movs r0, #0x36
	bl start_script
_0803E674:
	ldr r2, _0803E6E0
	ldrb r0, [r2, #0x11]
	adds r0, #3
	strb r0, [r2, #0x11]
	ldr r1, _0803E6E4
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrb r3, [r1, #0x11]
	ldrb r1, [r1, #0x11]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	cmp r0, r1
	ble _0803E690
	strb r3, [r2, #0x11]
_0803E690:
	movs r1, #0x11
	ldrsb r1, [r2, r1]
	movs r0, #0xc
	bl hud_set_value
	ldr r0, _0803E6E8
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803E6CA
	ldr r3, _0803E6EC
	movs r1, #0x9c
	lsls r1, r1, #1
	adds r0, r3, r1
	ldrh r0, [r0]
	ldr r2, _0803E6F0
	movs r4, #0x9d
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
_0803E6CA:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803E6D0: .4byte 0x0203E125
_0803E6D4: .4byte 0x0203E96A
_0803E6D8: .4byte 0x0203E134
_0803E6DC: .4byte gLoadedRoomLevel
_0803E6E0: .4byte gGameStatus
_0803E6E4: .4byte 0x080CC8C4
_0803E6E8: .4byte gCanPlaySfx
_0803E6EC: .4byte 0x080CE440
_0803E6F0: .4byte gSfxVolume

	.thumb
sub_803E6F4: @ 0x0803E6F4
	push {r4, lr}
	ldr r0, _0803E770
	movs r2, #1
	strb r2, [r0]
	ldr r1, _0803E774
	ldrb r0, [r1]
	cmp r0, #0
	bne _0803E714
	strb r2, [r1]
	ldr r0, _0803E778
	ldr r1, _0803E77C
	ldrh r1, [r1]
	strb r1, [r0]
	movs r0, #0x36
	bl start_script
_0803E714:
	ldr r2, _0803E780
	ldrb r0, [r2, #0x10]
	adds r0, #3
	strb r0, [r2, #0x10]
	ldr r1, _0803E784
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrb r3, [r1, #0x10]
	ldrb r1, [r1, #0x10]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	cmp r0, r1
	ble _0803E730
	strb r3, [r2, #0x10]
_0803E730:
	movs r1, #0x10
	ldrsb r1, [r2, r1]
	movs r0, #0xb
	bl hud_set_value
	ldr r0, _0803E788
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803E76A
	ldr r3, _0803E78C
	movs r1, #0x9c
	lsls r1, r1, #1
	adds r0, r3, r1
	ldrh r0, [r0]
	ldr r2, _0803E790
	movs r4, #0x9d
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
_0803E76A:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803E770: .4byte 0x0203E124
_0803E774: .4byte 0x0203E96A
_0803E778: .4byte 0x0203E134
_0803E77C: .4byte gLoadedRoomLevel
_0803E780: .4byte gGameStatus
_0803E784: .4byte 0x080CC8C4
_0803E788: .4byte gCanPlaySfx
_0803E78C: .4byte 0x080CE440
_0803E790: .4byte gSfxVolume

	.thumb
sub_803E794: @ 0x0803E794
	push {r4, r5, lr}
	adds r5, r1, #0
	ldr r0, _0803E830
	movs r4, #1
	strb r4, [r0]
	ldr r1, _0803E834
	ldrb r0, [r1]
	cmp r0, #0
	bne _0803E7B6
	strb r4, [r1]
	ldr r0, _0803E838
	ldr r1, _0803E83C
	ldrh r1, [r1]
	strb r1, [r0]
	movs r0, #0x38
	bl start_script
_0803E7B6:
	movs r0, #1
	rsbs r0, r0, #0
	cmp r5, r0
	beq _0803E7D4
	ldr r2, _0803E840
	ldr r0, _0803E83C
	ldrh r1, [r0]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r2, #0x34
	adds r0, r0, r2
	ldr r0, [r0]
	adds r0, r0, r5
	strb r4, [r0]
_0803E7D4:
	ldr r2, _0803E844
	ldrb r0, [r2, #0x12]
	adds r0, #1
	strb r0, [r2, #0x12]
	ldr r1, _0803E848
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrb r3, [r1, #0x12]
	ldrb r1, [r1, #0x12]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	cmp r0, r1
	ble _0803E7F0
	strb r3, [r2, #0x12]
_0803E7F0:
	movs r1, #0x12
	ldrsb r1, [r2, r1]
	movs r0, #3
	bl hud_set_value
	ldr r0, _0803E84C
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803E82A
	ldr r3, _0803E850
	movs r1, #0x88
	lsls r1, r1, #1
	adds r0, r3, r1
	ldrh r0, [r0]
	ldr r2, _0803E854
	movs r4, #0x89
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
_0803E82A:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0803E830: .4byte 0x0203E12A
_0803E834: .4byte 0x0203E96C
_0803E838: .4byte 0x0203E134
_0803E83C: .4byte gLoadedRoomLevel
_0803E840: .4byte 0x0203E170
_0803E844: .4byte gGameStatus
_0803E848: .4byte 0x080CC8C4
_0803E84C: .4byte gCanPlaySfx
_0803E850: .4byte 0x080CE440
_0803E854: .4byte gSfxVolume

	.thumb
sub_803E858: @ 0x0803E858
	push {r4, r5, lr}
	adds r5, r1, #0
	ldr r0, _0803E8F4
	movs r4, #1
	strb r4, [r0]
	ldr r1, _0803E8F8
	ldrb r0, [r1]
	cmp r0, #0
	bne _0803E87A
	strb r4, [r1]
	ldr r0, _0803E8FC
	ldr r1, _0803E900
	ldrh r1, [r1]
	strb r1, [r0]
	movs r0, #0x36
	bl start_script
_0803E87A:
	movs r0, #1
	rsbs r0, r0, #0
	cmp r5, r0
	beq _0803E898
	ldr r2, _0803E904
	ldr r0, _0803E900
	ldrh r1, [r0]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r2, #0x38
	adds r0, r0, r2
	ldr r0, [r0]
	adds r0, r0, r5
	strb r4, [r0]
_0803E898:
	ldr r2, _0803E908
	ldrb r0, [r2, #0xe]
	adds r0, #1
	strb r0, [r2, #0xe]
	ldr r1, _0803E90C
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrb r3, [r1, #0xe]
	ldrb r1, [r1, #0xe]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	cmp r0, r1
	ble _0803E8B4
	strb r3, [r2, #0xe]
_0803E8B4:
	movs r1, #0xe
	ldrsb r1, [r2, r1]
	movs r0, #9
	bl hud_set_value
	ldr r0, _0803E910
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803E8EE
	ldr r3, _0803E914
	movs r1, #0x9c
	lsls r1, r1, #1
	adds r0, r3, r1
	ldrh r0, [r0]
	ldr r2, _0803E918
	movs r4, #0x9d
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
_0803E8EE:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0803E8F4: .4byte 0x0203E122
_0803E8F8: .4byte 0x0203E96A
_0803E8FC: .4byte 0x0203E134
_0803E900: .4byte gLoadedRoomLevel
_0803E904: .4byte 0x0203E170
_0803E908: .4byte gGameStatus
_0803E90C: .4byte 0x080CC8C4
_0803E910: .4byte gCanPlaySfx
_0803E914: .4byte 0x080CE440
_0803E918: .4byte gSfxVolume

	.thumb
sub_803E91C: @ 0x0803E91C
	push {r4, lr}
	adds r4, r1, #0
	ldr r0, _0803E9C0
	ldrb r0, [r0, #0x13]
	cmp r0, #0
	beq _0803E9E8
	ldr r1, _0803E9C4
	ldrb r0, [r1]
	cmp r0, #0
	bne _0803E94A
	movs r0, #1
	strb r0, [r1]
	ldr r1, _0803E9C8
	ldr r0, _0803E9CC
	ldrh r0, [r0]
	strb r0, [r1]
	ldr r0, _0803E9D0
	ldrb r0, [r0]
	cmp r0, #0
	bne _0803E94A
	movs r0, #0x35
	bl start_script
_0803E94A:
	movs r0, #1
	rsbs r0, r0, #0
	cmp r4, r0
	beq _0803E96A
	ldr r2, _0803E9D4
	ldr r0, _0803E9CC
	ldrh r1, [r0]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r2, #0x30
	adds r0, r0, r2
	ldr r0, [r0]
	adds r0, r0, r4
	movs r1, #1
	strb r1, [r0]
_0803E96A:
	ldr r0, _0803E9D8
	ldrb r0, [r0]
	cmp r0, #0
	bne _0803EA08
	ldr r2, _0803E9C0
	ldrb r3, [r2, #0x13]
	ldrb r0, [r2, #0x15]
	ldrb r1, [r2, #0x14]
	adds r1, #1
	muls r0, r1, r0
	cmp r3, r0
	bge _0803E986
	adds r0, r3, #1
	strb r0, [r2, #0x13]
_0803E986:
	ldrb r1, [r2, #0x13]
	movs r0, #0x38
	bl hud_set_value
	ldr r0, _0803E9DC
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803EA08
	ldr r3, _0803E9E0
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r3, r1
	ldrh r0, [r0]
	ldr r2, _0803E9E4
	movs r4, #0xa1
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
	b _0803EA08
	.align 2, 0
_0803E9C0: .4byte gGameStatus
_0803E9C4: .4byte 0x0203E969
_0803E9C8: .4byte 0x0203E134
_0803E9CC: .4byte gLoadedRoomLevel
_0803E9D0: .4byte 0x03006EF3
_0803E9D4: .4byte 0x0203E170
_0803E9D8: .4byte gIsStopHoneycombActive
_0803E9DC: .4byte gCanPlaySfx
_0803E9E0: .4byte 0x080CE440
_0803E9E4: .4byte gSfxVolume
_0803E9E8:
	movs r0, #1
	rsbs r0, r0, #0
	cmp r4, r0
	beq _0803EA08
	ldr r2, _0803EA10
	ldr r0, _0803EA14
	ldrh r1, [r0]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r2, #0x30
	adds r0, r0, r2
	ldr r0, [r0]
	adds r0, r0, r4
	movs r1, #1
	strb r1, [r0]
_0803EA08:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803EA10: .4byte 0x0203E170
_0803EA14: .4byte gLoadedRoomLevel

	.thumb
sub_803EA18: @ 0x0803EA18
	push {r4, lr}
	adds r4, r1, #0
	ldr r0, _0803EA88
	ldrb r0, [r0, #0x13]
	cmp r0, #0
	beq _0803EAEC
	ldr r1, _0803EA8C
	ldrb r0, [r1]
	cmp r0, #0
	bne _0803EA46
	movs r0, #1
	strb r0, [r1]
	ldr r1, _0803EA90
	ldr r0, _0803EA94
	ldrh r0, [r0]
	strb r0, [r1]
	ldr r0, _0803EA98
	ldrb r0, [r0]
	cmp r0, #0
	bne _0803EA46
	movs r0, #0x35
	bl start_script
_0803EA46:
	movs r0, #1
	rsbs r0, r0, #0
	cmp r4, r0
	beq _0803EA66
	ldr r2, _0803EA9C
	ldr r0, _0803EA94
	ldrh r1, [r0]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r2, #0x64
	adds r0, r0, r2
	ldr r0, [r0]
	adds r0, r0, r4
	movs r1, #1
	strb r1, [r0]
_0803EA66:
	ldr r0, _0803EAA0
	ldrb r0, [r0]
	cmp r0, #0
	bne _0803EB0C
	ldr r1, _0803EA88
	ldrb r2, [r1, #0x15]
	ldrb r0, [r1, #0x14]
	adds r0, #1
	muls r2, r0, r2
	ldrb r3, [r1, #0x13]
	subs r0, r2, #1
	cmp r3, r0
	bge _0803EAA4
	adds r0, r3, #2
	strb r0, [r1, #0x13]
	b _0803EAA6
	.align 2, 0
_0803EA88: .4byte gGameStatus
_0803EA8C: .4byte 0x0203E969
_0803EA90: .4byte 0x0203E134
_0803EA94: .4byte gLoadedRoomLevel
_0803EA98: .4byte 0x03006EF3
_0803EA9C: .4byte 0x0203E170
_0803EAA0: .4byte gIsStopHoneycombActive
_0803EAA4:
	strb r2, [r1, #0x13]
_0803EAA6:
	ldrb r1, [r1, #0x13]
	movs r0, #0x38
	bl hud_set_value
	ldr r0, _0803EAE0
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803EB0C
	ldr r3, _0803EAE4
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r3, r1
	ldrh r0, [r0]
	ldr r2, _0803EAE8
	movs r4, #0xa1
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
	b _0803EB0C
	.align 2, 0
_0803EAE0: .4byte gCanPlaySfx
_0803EAE4: .4byte 0x080CE440
_0803EAE8: .4byte gSfxVolume
_0803EAEC:
	movs r0, #1
	rsbs r0, r0, #0
	cmp r4, r0
	beq _0803EB0C
	ldr r2, _0803EB14
	ldr r0, _0803EB18
	ldrh r1, [r0]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r2, #0x64
	adds r0, r0, r2
	ldr r0, [r0]
	adds r0, r0, r4
	movs r1, #1
	strb r1, [r0]
_0803EB0C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803EB14: .4byte 0x0203E170
_0803EB18: .4byte gLoadedRoomLevel

	.thumb
sub_803EB1C: @ 0x0803EB1C
	push {r4, lr}
	adds r4, r1, #0
	ldr r0, _0803EB58
	ldrb r0, [r0, #0x13]
	cmp r0, #0
	beq _0803EBDC
	ldr r1, _0803EB5C
	ldrb r0, [r1]
	cmp r0, #0
	bne _0803EB70
	movs r0, #1
	strb r0, [r1]
	ldr r1, _0803EB60
	ldr r0, _0803EB64
	ldrh r0, [r0]
	strb r0, [r1]
	ldr r0, _0803EB68
	ldrb r0, [r0]
	cmp r0, #0
	bne _0803EB4A
	movs r0, #0x35
	bl start_script
_0803EB4A:
	ldr r0, _0803EB6C
	adds r1, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_8034460
	b _0803EBFC
	.align 2, 0
_0803EB58: .4byte gGameStatus
_0803EB5C: .4byte 0x0203E969
_0803EB60: .4byte 0x0203E134
_0803EB64: .4byte gLoadedRoomLevel
_0803EB68: .4byte 0x03006EF3
_0803EB6C: .4byte 0x0000015D
_0803EB70:
	movs r0, #1
	rsbs r0, r0, #0
	cmp r4, r0
	beq _0803EB90
	ldr r2, _0803EBC8
	ldr r0, _0803EBCC
	ldrh r1, [r0]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r2, #0x68
	adds r0, r0, r2
	ldr r0, [r0]
	adds r0, r0, r4
	movs r1, #1
	strb r1, [r0]
_0803EB90:
	movs r0, #0x11
	bl start_stop_honeycomb
	ldr r0, _0803EBD0
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803EBFC
	ldr r3, _0803EBD4
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r3, r1
	ldrh r0, [r0]
	ldr r2, _0803EBD8
	movs r4, #0xa1
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
	b _0803EBFC
	.align 2, 0
_0803EBC8: .4byte 0x0203E170
_0803EBCC: .4byte gLoadedRoomLevel
_0803EBD0: .4byte gCanPlaySfx
_0803EBD4: .4byte 0x080CE440
_0803EBD8: .4byte gSfxVolume
_0803EBDC:
	movs r0, #1
	rsbs r0, r0, #0
	cmp r4, r0
	beq _0803EBFC
	ldr r2, _0803EC04
	ldr r0, _0803EC08
	ldrh r1, [r0]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r2, #0x68
	adds r0, r0, r2
	ldr r0, [r0]
	adds r0, r0, r4
	movs r1, #1
	strb r1, [r0]
_0803EBFC:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803EC04: .4byte 0x0203E170
_0803EC08: .4byte gLoadedRoomLevel

	.thumb
sub_803EC0C: @ 0x0803EC0C
	push {r4, lr}
	adds r4, r1, #0
	ldr r0, _0803EC4C
	ldrb r0, [r0, #0x13]
	cmp r0, #0
	beq _0803ECCC
	ldr r1, _0803EC50
	ldrb r0, [r1]
	cmp r0, #0
	bne _0803EC60
	movs r0, #1
	strb r0, [r1]
	ldr r1, _0803EC54
	ldr r0, _0803EC58
	ldrh r0, [r0]
	strb r0, [r1]
	ldr r0, _0803EC5C
	ldrb r0, [r0]
	cmp r0, #0
	bne _0803EC3A
	movs r0, #0x35
	bl start_script
_0803EC3A:
	movs r0, #0xaf
	lsls r0, r0, #1
	adds r1, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_8034460
	b _0803ECEC
	.align 2, 0
_0803EC4C: .4byte gGameStatus
_0803EC50: .4byte 0x0203E969
_0803EC54: .4byte 0x0203E134
_0803EC58: .4byte gLoadedRoomLevel
_0803EC5C: .4byte 0x03006EF3
_0803EC60:
	movs r0, #1
	rsbs r0, r0, #0
	cmp r4, r0
	beq _0803EC80
	ldr r2, _0803ECB8
	ldr r0, _0803ECBC
	ldrh r1, [r0]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r2, #0x6c
	adds r0, r0, r2
	ldr r0, [r0]
	adds r0, r0, r4
	movs r1, #1
	strb r1, [r0]
_0803EC80:
	movs r0, #0x12
	bl start_stop_honeycomb
	ldr r0, _0803ECC0
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803ECEC
	ldr r3, _0803ECC4
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r3, r1
	ldrh r0, [r0]
	ldr r2, _0803ECC8
	movs r4, #0xa1
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
	b _0803ECEC
	.align 2, 0
_0803ECB8: .4byte 0x0203E170
_0803ECBC: .4byte gLoadedRoomLevel
_0803ECC0: .4byte gCanPlaySfx
_0803ECC4: .4byte 0x080CE440
_0803ECC8: .4byte gSfxVolume
_0803ECCC:
	movs r0, #1
	rsbs r0, r0, #0
	cmp r4, r0
	beq _0803ECEC
	ldr r2, _0803ECF4
	ldr r0, _0803ECF8
	ldrh r1, [r0]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r2, #0x6c
	adds r0, r0, r2
	ldr r0, [r0]
	adds r0, r0, r4
	movs r1, #1
	strb r1, [r0]
_0803ECEC:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803ECF4: .4byte 0x0203E170
_0803ECF8: .4byte gLoadedRoomLevel

	.thumb
sub_803ECFC: @ 0x0803ECFC
	push {r4, lr}
	adds r3, r1, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r3, r0
	beq _0803ED20
	ldr r2, _0803ED5C
	ldr r0, _0803ED60
	ldrh r1, [r0]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r2, #0x68
	adds r0, r0, r2
	ldr r0, [r0]
	adds r0, r0, r3
	movs r1, #1
	strb r1, [r0]
_0803ED20:
	movs r0, #0x11
	bl start_stop_honeycomb
	ldr r0, _0803ED64
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803ED56
	ldr r3, _0803ED68
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r3, r1
	ldrh r0, [r0]
	ldr r2, _0803ED6C
	movs r4, #0xa1
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
_0803ED56:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803ED5C: .4byte 0x0203E170
_0803ED60: .4byte gLoadedRoomLevel
_0803ED64: .4byte gCanPlaySfx
_0803ED68: .4byte 0x080CE440
_0803ED6C: .4byte gSfxVolume

	.thumb
sub_803ED70: @ 0x0803ED70
	push {r4, lr}
	adds r3, r1, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r3, r0
	beq _0803ED94
	ldr r2, _0803EDD0
	ldr r0, _0803EDD4
	ldrh r1, [r0]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r2, #0x6c
	adds r0, r0, r2
	ldr r0, [r0]
	adds r0, r0, r3
	movs r1, #1
	strb r1, [r0]
_0803ED94:
	movs r0, #0x12
	bl start_stop_honeycomb
	ldr r0, _0803EDD8
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803EDCA
	ldr r3, _0803EDDC
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r3, r1
	ldrh r0, [r0]
	ldr r2, _0803EDE0
	movs r4, #0xa1
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
_0803EDCA:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803EDD0: .4byte 0x0203E170
_0803EDD4: .4byte gLoadedRoomLevel
_0803EDD8: .4byte gCanPlaySfx
_0803EDDC: .4byte 0x080CE440
_0803EDE0: .4byte gSfxVolume

	.thumb
sub_803EDE4: @ 0x0803EDE4
	push {r4, lr}
	ldr r1, _0803EE38
	ldrb r2, [r1, #0x17]
	ldrb r0, [r1, #0x16]
	cmp r0, r2
	beq _0803EE32
	strb r2, [r1, #0x16]
	ldrb r1, [r1, #0x16]
	movs r0, #0x39
	bl hud_set_value
	ldr r0, _0803EE3C
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803EE2A
	ldr r2, _0803EE40
	movs r1, #0xf8
	lsls r1, r1, #2
	adds r0, r2, r1
	ldrh r0, [r0]
	ldr r3, _0803EE44
	ldr r4, _0803EE48
	adds r1, r2, r4
	ldrb r3, [r3]
	adds r1, r1, r3
	ldrb r1, [r1]
	movs r3, #0xf9
	lsls r3, r3, #2
	adds r2, r2, r3
	ldr r2, [r2]
	movs r4, #0x80
	lsls r4, r4, #9
	adds r2, r2, r4
	bl audio_new_fx
_0803EE2A:
	ldr r0, _0803EE4C
	ldr r1, _0803EE50
	ldrh r1, [r1]
	strh r1, [r0]
_0803EE32:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803EE38: .4byte gGameStatus
_0803EE3C: .4byte gCanPlaySfx
_0803EE40: .4byte 0x080CE440
_0803EE44: .4byte gSfxVolume
_0803EE48: .4byte 0x000003E2
_0803EE4C: .4byte 0x02002098
_0803EE50: .4byte 0x02002096

	.thumb
sub_803EE54: @ 0x0803EE54
	ldr r1, _0803EE5C
	movs r0, #1
	strb r0, [r1]
	bx lr
	.align 2, 0
_0803EE5C: .4byte 0x0203E974

	.thumb
sub_803EE60: @ 0x0803EE60
	ldr r1, _0803EE68
	movs r0, #1
	strb r0, [r1]
	bx lr
	.align 2, 0
_0803EE68: .4byte 0x0203E971

	.thumb
sub_803EE6C: @ 0x0803EE6C
	push {lr}
	ldr r1, _0803EE80
	movs r0, #0
	strb r0, [r1, #6]
	movs r0, #0x16
	movs r1, #0
	bl hud_set_value
	pop {r0}
	bx r0
	.align 2, 0
_0803EE80: .4byte gGameStatus

	.thumb
sub_803EE84: @ 0x0803EE84
	push {lr}
	ldr r1, _0803EEA0
	ldr r0, _0803EEA4
	ldrb r0, [r0, #0xe]
	strb r0, [r1, #0xe]
	ldrb r1, [r1, #0xe]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	movs r0, #9
	bl hud_set_value
	pop {r0}
	bx r0
	.align 2, 0
_0803EEA0: .4byte gGameStatus
_0803EEA4: .4byte 0x080CC8C4

	.thumb
sub_803EEA8: @ 0x0803EEA8
	push {lr}
	ldr r1, _0803EEC4
	ldr r0, _0803EEC8
	ldrb r0, [r0, #0xf]
	strb r0, [r1, #0xf]
	ldrb r1, [r1, #0xf]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	movs r0, #0xa
	bl hud_set_value
	pop {r0}
	bx r0
	.align 2, 0
_0803EEC4: .4byte gGameStatus
_0803EEC8: .4byte 0x080CC8C4

	.thumb
sub_803EECC: @ 0x0803EECC
	push {lr}
	ldr r1, _0803EEE8
	ldr r0, _0803EEEC
	ldrb r0, [r0, #0x10]
	strb r0, [r1, #0x10]
	ldrb r1, [r1, #0x10]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	movs r0, #0xb
	bl hud_set_value
	pop {r0}
	bx r0
	.align 2, 0
_0803EEE8: .4byte gGameStatus
_0803EEEC: .4byte 0x080CC8C4

	.thumb
sub_803EEF0: @ 0x0803EEF0
	push {lr}
	ldr r1, _0803EF0C
	ldr r0, _0803EF10
	ldrb r0, [r0, #0x11]
	strb r0, [r1, #0x11]
	ldrb r1, [r1, #0x11]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	movs r0, #0xc
	bl hud_set_value
	pop {r0}
	bx r0
	.align 2, 0
_0803EF0C: .4byte gGameStatus
_0803EF10: .4byte 0x080CC8C4

	.thumb
sub_803EF14: @ 0x0803EF14
	push {r4, lr}
	ldr r0, _0803EF58
	ldrb r1, [r0, #7]
	movs r0, #4
	bl hud_set_value
	ldr r0, _0803EF5C
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803EF50
	ldr r3, _0803EF60
	movs r1, #0xa8
	lsls r1, r1, #1
	adds r0, r3, r1
	ldrh r0, [r0]
	ldr r2, _0803EF64
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
_0803EF50:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803EF58: .4byte gGameStatus
_0803EF5C: .4byte gCanPlaySfx
_0803EF60: .4byte 0x080CE440
_0803EF64: .4byte gSfxVolume

	.thumb
sub_803EF68: @ 0x0803EF68
	push {lr}
	ldr r1, _0803EF84
	ldr r0, _0803EF88
	ldrb r0, [r0, #0x12]
	strb r0, [r1, #0x12]
	ldrb r1, [r1, #0x12]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	movs r0, #3
	bl hud_set_value
	pop {r0}
	bx r0
	.align 2, 0
_0803EF84: .4byte gGameStatus
_0803EF88: .4byte 0x080CC8C4

	.thumb
nullsub_8: @ 0x0803EF8C
	bx lr
	.align 2, 0
