
    .syntax unified
    
    .text

    .thumb
sub_800A740: @ 0x0800A740
	push {r4, r5, r6, lr}
	sub sp, #0xc
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r6, _0800A778
	ldr r2, [r6]
	cmp r2, #0
	beq _0800A7D0
	ldr r0, _0800A77C
	ldrb r0, [r0]
	cmp r0, #0
	beq _0800A7C0
	ldr r1, _0800A780
	ldr r0, _0800A784
	ldrh r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r1
	cmp r0, #0
	beq _0800A788
	adds r0, r2, #0
	adds r0, #0x98
	ldr r0, [r0]
	str r0, [r4, #4]
	b _0800A7CE
	.align 2, 0
_0800A778: .4byte 0x0203DFC4
_0800A77C: .4byte 0x0203DFE6
_0800A780: .4byte gPlayerStateSettings
_0800A784: .4byte gPlayerState
_0800A788:
	ldrh r1, [r2, #0x1e]
	ldr r0, _0800A7BC
	ldr r0, [r0]
	adds r0, r0, r1
	ldrb r0, [r0]
	add r2, sp, #4
	add r3, sp, #8
	mov r1, sp
	bl sub_8062444
	ldr r2, [r4]
	ldr r0, [sp]
	adds r2, r2, r0
	str r2, [r4]
	ldr r0, [r4, #8]
	ldr r1, [sp, #8]
	adds r0, r0, r1
	str r0, [r4, #8]
	str r2, [r5]
	str r0, [r5, #8]
	ldr r0, [r6]
	adds r0, #0x98
	ldr r0, [r0]
	str r0, [r4, #4]
	b _0800A7CE
	.align 2, 0
_0800A7BC: .4byte 0x0203DFC0
_0800A7C0:
	ldr r0, _0800A7D8
	ldrb r0, [r0]
	cmp r0, #0
	beq _0800A7D0
	adds r0, r2, #0
	adds r0, #0x98
	ldr r0, [r0]
_0800A7CE:
	str r0, [r5, #4]
_0800A7D0:
	add sp, #0xc
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800A7D8: .4byte 0x0203DFE7

    .thumb
sub_800A7DC: @ 0x0800A7DC
	push {r4, lr}
	adds r4, r0, #0
	adds r2, r1, #0
	ldr r0, _0800A810
	ldrb r0, [r0]
	cmp r0, #0
	beq _0800A870
	ldr r1, _0800A814
	ldr r0, _0800A818
	ldrh r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r1
	cmp r0, #0
	beq _0800A844
	ldr r0, _0800A81C
	bl sub_8018BB0
	cmp r0, #0
	bne _0800A820
_0800A80A:
	movs r0, #1
	b _0800A89E
	.align 2, 0
_0800A810: .4byte 0x0203DFE6
_0800A814: .4byte gPlayerStateSettings
_0800A818: .4byte gPlayerState
_0800A81C: .4byte 0x02000F74
_0800A820:
	ldr r0, _0800A838
	ldr r1, [r4, #4]
	str r1, [r0, #4]
	ldr r0, _0800A83C
	str r1, [r0, #4]
	ldr r0, _0800A840
	ldr r0, [r0]
	movs r1, #0
	movs r2, #0
	bl sub_800388C
	b _0800A80A
	.align 2, 0
_0800A838: .4byte 0x030032D0
_0800A83C: .4byte 0x030032DC
_0800A840: .4byte 0x02000FC8
_0800A844:
	ldr r0, _0800A864
	ldrb r0, [r0]
	ldr r2, _0800A868
	ldr r3, _0800A86C
	cmp r0, #0
	bne _0800A85C
	ldr r1, [r4]
	str r1, [r2]
	ldr r0, [r4, #8]
	str r0, [r2, #8]
	str r1, [r3]
	str r0, [r3, #8]
_0800A85C:
	ldr r0, [r4, #4]
	str r0, [r2, #4]
	str r0, [r3, #4]
	b _0800A80A
	.align 2, 0
_0800A864: .4byte 0x030029A4
_0800A868: .4byte 0x030032D0
_0800A86C: .4byte 0x030032DC
_0800A870:
	ldr r0, _0800A8A4
	ldrb r0, [r0]
	cmp r0, #0
	beq _0800A89C
	ldr r3, _0800A8A8
	ldr r0, [r2, #4]
	str r0, [r3, #4]
	ldr r0, _0800A8AC
	ldrb r0, [r0]
	cmp r0, #0
	bne _0800A89C
	ldr r1, _0800A8B0
	ldr r0, [r4]
	str r0, [r1]
	ldr r0, [r4, #4]
	str r0, [r1, #4]
	ldr r0, [r4, #8]
	str r0, [r1, #8]
	ldr r0, [r2]
	str r0, [r3]
	ldr r0, [r2, #8]
	str r0, [r3, #8]
_0800A89C:
	movs r0, #0
_0800A89E:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0800A8A4: .4byte 0x0203DFE7
_0800A8A8: .4byte 0x030032DC
_0800A8AC: .4byte 0x030029A4
_0800A8B0: .4byte 0x030032D0

    .thumb
sub_0800A8B4: @ 0x0800A8B4
	push {r4, r5, lr}
	ldr r0, _0800A91C
	ldrb r0, [r0, #0x13]
	cmp r0, #0
	beq _0800A96C
	ldr r3, _0800A920
	ldrb r0, [r3]
	cmp r0, #0
	beq _0800A96C
	ldr r5, _0800A924
	ldrb r2, [r5, #5]
	adds r1, r2, #0
	cmp r1, #0
	beq _0800A96C
	ldrb r0, [r3, #5]
	cmp r0, r1
	bne _0800A96C
	movs r4, #0x80
	adds r0, r4, #0
	ands r0, r2
	cmp r0, #0
	beq _0800A930
	ldr r1, _0800A928
	ldr r0, _0800A92C
	ldrh r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0800A96C
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	bne _0800A96C
	movs r0, #0x7f
	ands r0, r2
	subs r0, #1
	cmp r0, #0x25
	ble _0800A90C
	.2byte 0xEE00, 0xEE00
_0800A90C:
	adds r0, r5, #0
	bl sub_0800BCD4
	cmp r0, #0
	beq _0800A96C
_0800A916:
	movs r0, #1
	b _0800A96E
	.align 2, 0
_0800A91C: .4byte 0x02001044
_0800A920: .4byte 0x030028FC
_0800A924: .4byte 0x03002950
_0800A928: .4byte gPlayerStateSettings
_0800A92C: .4byte gPlayerState
_0800A930:
	ldrb r0, [r3, #5]
	subs r0, #1
	cmp r0, #0x25
	ble _0800A93C
	.2byte 0xEE00, 0xEE00
_0800A93C:
	adds r0, r3, #0
	bl sub_0800BCD4
	cmp r0, #0
	beq _0800A96C
	ldr r1, _0800A964
	ldr r0, _0800A968
	ldrh r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0800A916
	bl sub_8017A54
	b _0800A916
	.align 2, 0
_0800A964: .4byte gPlayerStateSettings
_0800A968: .4byte gPlayerState
_0800A96C:
	movs r0, #0
_0800A96E:
	pop {r4, r5}
	pop {r1}
	bx r1

    .thumb
sub_800A974: @ 0x0800A974
	push {lr}
	ldr r0, _0800A984
	ldrb r0, [r0, #0x13]
	cmp r0, #0
	bne _0800A988
	movs r0, #0
	b _0800A9E2
	.align 2, 0
_0800A984: .4byte 0x02001044
_0800A988:
	ldr r0, _0800A9B4
	ldrb r0, [r0, #2]
	cmp r0, #2
	bne _0800A9C6
	ldr r0, _0800A9B8
	ldrb r0, [r0, #2]
	cmp r0, #2
	bne _0800A9C6
	ldr r0, _0800A9BC
	ldrb r0, [r0]
	cmp r0, #0
	beq _0800A9C0
	cmp r0, #4
	beq _0800A9C0
	movs r1, #1
	rsbs r1, r1, #0
	movs r0, #0x10
	movs r2, #0
	bl sub_80192D4
	movs r0, #0
	b _0800A9E2
	.align 2, 0
_0800A9B4: .4byte 0x030028FC
_0800A9B8: .4byte 0x03002950
_0800A9BC: .4byte 0x020020B1
_0800A9C0:
	bl sub_8017C50
	b _0800A9E0
_0800A9C6:
	ldr r1, _0800A9E8
	ldr r0, _0800A9EC
	ldrh r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0800A9E0
	bl sub_8017D9C
_0800A9E0:
	movs r0, #1
_0800A9E2:
	pop {r1}
	bx r1
	.align 2, 0
_0800A9E8: .4byte gPlayerStateSettings
_0800A9EC: .4byte gPlayerState

    .thumb
sub_800A9F0: @ 0x0800A9F0
	push {r4, r5, lr}
	ldr r0, _0800AA28
	ldrb r0, [r0]
	cmp r0, #0
	bne _0800AA38
	ldr r5, _0800AA2C
	ldr r0, [r5]
	ldr r2, _0800AA30
	ldr r4, _0800AA34
	ldrb r1, [r4, #2]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl sub_8003894
	ldr r5, [r5]
	ldr r1, [r4, #0x28]
	ldr r2, [r4, #0x2c]
	movs r3, #0
	ldrb r0, [r4, #2]
	cmp r0, #0xa
	bne _0800AA1E
	movs r3, #1
_0800AA1E:
	adds r0, r5, #0
	bl sub_80038DC
	b _0800AA58
	.align 2, 0
_0800AA28: .4byte 0x03003588
_0800AA2C: .4byte 0x02000FC8
_0800AA30: .4byte 0x080CC7EC
_0800AA34: .4byte 0x030028FC
_0800AA38:
	ldr r5, _0800AA60
	ldr r0, [r5]
	ldr r2, _0800AA64
	ldr r4, _0800AA68
	ldrb r1, [r4, #2]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl sub_8003894
	ldr r0, [r5]
	ldr r1, [r4, #0x28]
	ldr r2, [r4, #0x2c]
	movs r3, #0
	bl sub_80038DC
_0800AA58:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800AA60: .4byte 0x02000FC8
_0800AA64: .4byte 0x080CC818
_0800AA68: .4byte 0x030028FC

    .thumb
sub_800AA6C: @ 0x0800AA6C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0xc
	adds r5, r0, #0
	adds r6, r1, #0
	adds r4, r2, #0
	mov r8, r3
	ldr r0, _0800AAE4
	ldr r0, [r0]
	add r2, sp, #4
	add r3, sp, #8
	mov r1, sp
	bl sub_80038C4
	ldr r1, [sp]
	asrs r0, r1, #8
	str r0, [r4]
	ldr r7, [sp, #4]
	asrs r0, r7, #8
	str r0, [r4, #4]
	ldr r2, [sp, #8]
	asrs r0, r2, #8
	str r0, [r4, #8]
	ldr r3, _0800AAE8
	ldr r0, [r3]
	adds r0, r0, r1
	str r0, [r5]
	ldr r4, _0800AAEC
	ldr r0, [r4]
	adds r0, r0, r1
	str r0, [r6]
	ldr r1, _0800AAF0
	ldr r0, _0800AAF4
	ldrh r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _0800AAFC
	ldr r2, [r3, #4]
	adds r0, r2, r7
	str r0, [r5, #4]
	ldr r1, _0800AAF8
	ldr r1, [r1]
	cmp r0, r1
	blt _0800AAD0
	str r2, [r5, #4]
_0800AAD0:
	ldr r0, [r4, #4]
	str r0, [r6, #4]
	ldr r0, [r3, #8]
	ldr r1, [sp, #8]
	adds r0, r0, r1
	str r0, [r5, #8]
	ldr r0, [r4, #8]
	adds r0, r0, r1
	b _0800AB0C
	.align 2, 0
_0800AAE4: .4byte 0x02000FC8
_0800AAE8: .4byte 0x030032D0
_0800AAEC: .4byte 0x030032DC
_0800AAF0: .4byte gPlayerStateSettings
_0800AAF4: .4byte gPlayerState
_0800AAF8: .4byte 0x02001088
_0800AAFC:
	ldr r0, [r3, #4]
	adds r0, r0, r2
	str r0, [r5, #4]
	ldr r0, [r4, #4]
	str r0, [r6, #4]
	ldr r0, [r3, #8]
	str r0, [r5, #8]
	ldr r0, [r4, #8]
_0800AB0C:
	str r0, [r6, #8]
	ldr r0, [r5, #4]
	ldr r1, [r6, #4]
	cmp r0, r1
	bge _0800AB18
	str r1, [r5, #4]
_0800AB18:
	ldr r0, [r5, #4]
	cmp r0, #0
	bge _0800AB22
	movs r0, #0
	str r0, [r5, #4]
_0800AB22:
	ldr r2, _0800AB50
	ldr r0, [r5]
	ldr r1, [r2]
	subs r0, r0, r1
	mov r1, r8
	str r0, [r1]
	ldr r0, [r5, #4]
	ldr r1, [r2, #4]
	subs r0, r0, r1
	mov r1, r8
	str r0, [r1, #4]
	ldr r0, [r5, #8]
	ldr r1, [r2, #8]
	subs r0, r0, r1
	mov r1, r8
	str r0, [r1, #8]
	add sp, #0xc
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800AB50: .4byte 0x030032D0

    .thumb
sub_800AB54: @ 0x0800AB54
	push {r4, r5, r6, lr}
	sub sp, #0xc
	adds r5, r0, #0
	adds r6, r1, #0
	ldr r1, _0800ABB0
	ldr r0, _0800ABB4
	ldrh r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r1
	cmp r0, #0
	bne _0800ABC4
	ldr r0, [r5]
	str r0, [sp]
	ldr r0, [r5, #4]
	movs r1, #0x90
	lsls r1, r1, #0xd
	adds r0, r0, r1
	str r0, [sp, #4]
	ldr r0, [r5, #8]
	str r0, [sp, #8]
	mov r0, sp
	bl sub_800953C
	cmp r0, #0
	beq _0800ABC8
	ldr r4, _0800ABB8
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08009208
	ldr r2, _0800ABBC
	ldr r0, [r5, #4]
	str r0, [r2, #4]
	ldr r1, _0800ABC0
	ldr r0, [r4, #8]
	str r0, [r1, #4]
	ldr r0, [r5]
	str r0, [r2]
	ldr r0, [r6]
	str r0, [r1]
	movs r0, #1
	b _0800ABCA
	.align 2, 0
_0800ABB0: .4byte gPlayerStateSettings
_0800ABB4: .4byte gPlayerState
_0800ABB8: .4byte 0x03002950
_0800ABBC: .4byte 0x030032D0
_0800ABC0: .4byte 0x030032DC
_0800ABC4:
	bl sub_8017F14
_0800ABC8:
	movs r0, #0
_0800ABCA:
	add sp, #0xc
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

    .thumb
sub_800ABD4: @ 0x0800ABD4
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r5, r0, #0
	adds r7, r1, #0
	ldr r0, _0800AC18
	ldrb r1, [r0]
	adds r4, r0, #0
	cmp r1, #0
	beq _0800ACAC
	ldrb r0, [r4, #2]
	cmp r0, #2
	bne _0800AC28
	ldr r0, _0800AC1C
	ldrb r0, [r0]
	cmp r0, #0
	beq _0800AC28
	cmp r0, #4
	beq _0800AC28
	ldr r0, _0800AC20
	ldrb r0, [r0, #0x13]
	cmp r0, #0
	beq _0800AC28
	ldr r0, _0800AC24
	ldrb r0, [r0]
	cmp r0, #0
	bne _0800AC86
	movs r1, #1
	rsbs r1, r1, #0
	movs r0, #0x10
	movs r2, #0
	bl sub_80192D4
	b _0800AC86
	.align 2, 0
_0800AC18: .4byte 0x030028FC
_0800AC1C: .4byte 0x020020B1
_0800AC20: .4byte 0x02001044
_0800AC24: .4byte 0x020020BC
_0800AC28:
	adds r2, r4, #0
	adds r2, #0x4e
	ldrb r0, [r2]
	cmp r0, #0
	beq _0800ACAC
	ldr r6, _0800AC8C
	ldrb r0, [r6]
	cmp r0, #0
	bne _0800ACAC
	ldr r0, _0800AC90
	ldrb r0, [r0]
	cmp r0, #4
	beq _0800ACAC
	cmp r0, #3
	beq _0800ACAC
	ldr r1, _0800AC94
	ldr r0, _0800AC98
	ldrh r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #5
	ands r0, r1
	cmp r0, #0
	bne _0800ACAC
	ldrb r0, [r2]
	movs r1, #1
	rsbs r1, r1, #0
	movs r2, #1
	bl sub_80192D4
	movs r3, #1
	strb r3, [r6]
	ldr r1, _0800AC9C
	adds r2, r4, #0
	adds r2, #0x4f
	ldrb r0, [r2]
	strh r0, [r1]
	ldr r0, _0800ACA0
	strb r3, [r0]
	ldr r1, _0800ACA4
	ldrb r0, [r2]
	strh r0, [r1]
	ldr r1, _0800ACA8
	movs r0, #1
	strb r0, [r1, #0x10]
_0800AC86:
	movs r0, #0
	b _0800AD5A
	.align 2, 0
_0800AC8C: .4byte 0x0200108E
_0800AC90: .4byte 0x020020B1
_0800AC94: .4byte gPlayerStateSettings
_0800AC98: .4byte gPlayerState
_0800AC9C: .4byte 0x02001092
_0800ACA0: .4byte 0x0200108D
_0800ACA4: .4byte 0x02001090
_0800ACA8: .4byte 0x02000F74
_0800ACAC:
	ldr r1, _0800AD30
	ldrb r0, [r1]
	cmp r0, #0
	beq _0800AD58
	ldrb r0, [r1, #2]
	cmp r0, #6
	bne _0800AD58
	ldr r0, _0800AD34
	ldrb r0, [r0, #0x12]
	cmp r0, #0
	beq _0800AD58
	ldr r0, _0800AD38
	ldrb r0, [r0]
	cmp r0, #0
	bne _0800AD58
	ldr r0, _0800AD3C
	ldrb r0, [r0, #0x13]
	cmp r0, #0
	beq _0800AD58
	ldr r0, [r5]
	str r0, [sp]
	ldr r0, [r5, #4]
	movs r1, #0x90
	lsls r1, r1, #0xd
	adds r0, r0, r1
	str r0, [sp, #4]
	ldr r0, [r5, #8]
	str r0, [sp, #8]
	mov r0, sp
	bl sub_800953C
	cmp r0, #0
	beq _0800AD58
	ldr r0, _0800AD40
	bl sub_8018BB0
	cmp r0, #0
	beq _0800AC86
	ldr r4, _0800AD44
	ldr r0, [r4]
	bl audio_fx_still_active
	cmp r0, #0
	beq _0800AD12
	ldr r0, _0800AD48
	ldrb r0, [r0]
	cmp r0, #0
	beq _0800AD12
	ldr r0, [r4]
	bl audio_halt_fx
_0800AD12:
	bl sub_8017E1C
	ldr r2, _0800AD4C
	ldr r0, [r5, #4]
	str r0, [r2, #4]
	ldr r1, _0800AD50
	ldr r0, _0800AD54
	ldr r0, [r0, #8]
	str r0, [r1, #4]
	ldr r0, [r5]
	str r0, [r2]
	ldr r0, [r7]
	str r0, [r1]
	b _0800AC86
	.align 2, 0
_0800AD30: .4byte 0x030029A4
_0800AD34: .4byte 0x0200209A
_0800AD38: .4byte 0x020020B1
_0800AD3C: .4byte 0x02001044
_0800AD40: .4byte 0x02000F74
_0800AD44: .4byte 0x020020B4
_0800AD48: .4byte 0x0203EA89
_0800AD4C: .4byte 0x030032D0
_0800AD50: .4byte 0x030032DC
_0800AD54: .4byte 0x03002950
_0800AD58:
	movs r0, #1
_0800AD5A:
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

    .thumb
sub_800AD64: @ 0x0800AD64
	push {lr}
	ldr r2, _0800AD8C
	ldrb r0, [r2]
	cmp r0, #0
	beq _0800ADA4
	ldrb r0, [r2, #7]
	cmp r0, #0
	bne _0800AD7C
	ldr r2, _0800AD90
	ldrb r0, [r2]
	cmp r0, #0
	beq _0800AD98
_0800AD7C:
	ldr r0, _0800AD94
	ldr r0, [r0]
	ldr r1, [r2, #0x30]
	ldr r2, [r2, #0x34]
	bl sub_800388C
	b _0800ADA4
	.align 2, 0
_0800AD8C: .4byte 0x03002950
_0800AD90: .4byte 0x030028FC
_0800AD94: .4byte 0x02000FC8
_0800AD98:
	ldr r0, _0800ADA8
	ldr r0, [r0]
	movs r1, #0
	movs r2, #0
	bl sub_800388C
_0800ADA4:
	pop {r0}
	bx r0
	.align 2, 0
_0800ADA8: .4byte 0x02000FC8

    .thumb
sub_800ADAC: @ 0x0800ADAC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x60
	adds r5, r0, #0
	adds r7, r1, #0
	mov r8, r2
	ldr r4, [r7, #4]
	ldr r6, _0800ADFC
	ldr r1, [r6, #0x1c]
	ldr r2, [r6, #0x20]
	ldr r3, [r6, #0x24]
	adds r0, r7, #0
	bl sub_80039C4
	str r0, [r7, #4]
	cmp r0, #0
	bge _0800ADD2
	str r4, [r7, #4]
_0800ADD2:
	ldr r0, _0800AE00
	ldrb r0, [r0]
	cmp r0, #0
	beq _0800AE92
	ldr r1, [r6, #0x2c]
	movs r0, #0xb4
	lsls r0, r0, #0xf
	cmp r1, r0
	beq _0800AE08
	ldr r0, [r5, #4]
	ldr r1, [r7, #4]
	subs r0, r0, r1
	bl Abs
	ldr r1, _0800AE04
	cmp r0, r1
	bhi _0800AE08
	ldr r0, [r7, #4]
	str r0, [r5, #4]
	b _0800AE7A
	.align 2, 0
_0800ADFC: .4byte 0x03002950
_0800AE00: .4byte 0x030028FC
_0800AE04: .4byte 0x0004FFFF
_0800AE08:
	ldr r4, [r5, #4]
	ldr r6, _0800AE4C
	ldr r1, [r6, #0x1c]
	ldr r2, [r6, #0x20]
	ldr r3, [r6, #0x24]
	adds r0, r5, #0
	bl sub_80039C4
	adds r2, r0, #0
	str r2, [r5, #4]
	ldr r1, [r6, #0x2c]
	movs r0, #0xb4
	lsls r0, r0, #0xf
	cmp r1, r0
	beq _0800AE54
	cmp r2, r4
	beq _0800AE54
	ldr r2, _0800AE50
	mov r0, sp
	adds r1, r5, #0
	movs r3, #0
	bl sub_80039CC
	mov r0, sp
	adds r1, r6, #0
	bl sub_8007434
	ldrb r0, [r6]
	cmp r0, #0
	bne _0800AE54
	str r4, [r5, #4]
	movs r0, #1
	strb r0, [r6]
	b _0800AEEE
	.align 2, 0
_0800AE4C: .4byte 0x030028FC
_0800AE50: .4byte 0x0300331C
_0800AE54:
	ldr r0, [r5, #4]
	subs r0, r4, r0
	bl Abs
	movs r1, #0xa0
	lsls r1, r1, #0xb
	cmp r0, r1
	bls _0800AE68
	str r4, [r5, #4]
	b _0800AE7A
_0800AE68:
	ldr r1, [r5, #4]
	ldr r0, [r7, #4]
	cmp r1, r0
	bge _0800AE74
	str r0, [r5, #4]
	b _0800AE7A
_0800AE74:
	subs r0, r1, r4
	mov r1, r8
	str r0, [r1, #4]
_0800AE7A:
	bl sub_800A9F0
	bl sub_800A974
	cmp r0, #0
	beq _0800AE8E
	bl sub_0800A8B4
	cmp r0, #0
	beq _0800AEEC
_0800AE8E:
	movs r0, #0
	b _0800AEEE
_0800AE92:
	ldr r0, _0800AED8
	ldr r1, _0800AEDC
	ldr r2, [r0, #4]
	ldr r0, [r1, #4]
	cmp r2, r0
	beq _0800AEBE
	ldr r4, _0800AEE0
	ldr r0, [r4]
	ldr r2, _0800AEE4
	ldrb r1, [r6, #2]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl sub_8003894
	ldr r0, [r4]
	movs r2, #0xb4
	lsls r2, r2, #0xf
	movs r1, #0
	movs r3, #0
	bl sub_80038DC
_0800AEBE:
	ldr r0, [r5, #4]
	ldr r1, [r7, #4]
	subs r0, r0, r1
	bl Abs
	movs r1, #0xa0
	lsls r1, r1, #0xb
	cmp r0, r1
	bls _0800AEE8
	adds r0, r5, #4
	bl sub_80181B8
	b _0800AEEC
	.align 2, 0
_0800AED8: .4byte 0x030032D0
_0800AEDC: .4byte 0x030032DC
_0800AEE0: .4byte 0x02000FC8
_0800AEE4: .4byte 0x080CC818
_0800AEE8:
	ldr r0, [r7, #4]
	str r0, [r5, #4]
_0800AEEC:
	movs r0, #1
_0800AEEE:
	add sp, #0x60
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

    .thumb
sub_800AEFC: @ 0x0800AEFC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x60
	adds r4, r0, #0
	adds r6, r1, #0
	ldr r0, _0800AFA8
	ldr r0, [r0]
	cmp r0, #0
	bne _0800AF24
	ldr r5, [r6, #4]
	ldr r0, _0800AFAC
	ldr r1, [r0, #0x1c]
	ldr r2, [r0, #0x20]
	ldr r3, [r0, #0x24]
	adds r0, r6, #0
	bl sub_80039C4
	str r0, [r6, #4]
	cmp r0, #0
	bge _0800AF24
	str r5, [r6, #4]
_0800AF24:
	ldr r1, _0800AFB0
	ldr r0, _0800AFB4
	ldrh r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0800AF3C
	b _0800B034
_0800AF3C:
	ldr r3, _0800AFB8
	ldrb r0, [r3]
	cmp r0, #0
	beq _0800AFF8
	ldr r5, [r4, #4]
	ldr r1, [r3, #0x1c]
	ldr r2, [r3, #0x20]
	ldr r3, [r3, #0x24]
	adds r0, r4, #0
	bl sub_80039C4
	adds r1, r0, #0
	str r1, [r4, #4]
	cmp r1, #0
	blt _0800AF60
	ldr r0, [r6, #4]
	cmp r1, r0
	bge _0800AF62
_0800AF60:
	str r5, [r4, #4]
_0800AF62:
	ldr r7, _0800AFB8
	ldr r1, [r7, #0x2c]
	movs r0, #0xb4
	lsls r0, r0, #0xf
	cmp r1, r0
	beq _0800AF94
	ldr r0, [r4, #4]
	cmp r0, r5
	beq _0800AF94
	ldr r2, _0800AFBC
	mov r0, sp
	adds r1, r4, #0
	movs r3, #0
	bl sub_80039CC
	mov r0, sp
	adds r1, r7, #0
	bl sub_8007434
	ldrb r0, [r7]
	cmp r0, #0
	bne _0800AF94
	str r5, [r4, #4]
	movs r0, #1
	strb r0, [r7]
_0800AF94:
	ldr r0, [r4, #4]
	subs r0, r5, r0
	bl Abs
	movs r7, #0xa0
	lsls r7, r7, #0xb
	cmp r0, r7
	bls _0800AFC0
	str r5, [r4, #4]
	b _0800B034
	.align 2, 0
_0800AFA8: .4byte 0x0203DFC4
_0800AFAC: .4byte 0x03002950
_0800AFB0: .4byte gPlayerStateSettings
_0800AFB4: .4byte gPlayerState
_0800AFB8: .4byte 0x030028FC
_0800AFBC: .4byte 0x0300331C
_0800AFC0:
	ldr r0, _0800AFD8
	bl sub_8018BB0
	ldr r0, [r4, #4]
	ldr r1, [r6, #4]
	subs r0, r0, r1
	bl Abs
	cmp r0, r7
	bhi _0800AFDC
	ldr r0, [r6, #4]
	b _0800AFEE
	.align 2, 0
_0800AFD8: .4byte 0x02000F74
_0800AFDC:
	ldr r5, _0800AFF4
	ldr r0, [r4, #4]
	ldr r1, [r5, #4]
	subs r0, r0, r1
	bl Abs
	cmp r0, r7
	bhi _0800B006
	ldr r0, [r5, #4]
_0800AFEE:
	str r0, [r4, #4]
	b _0800B006
	.align 2, 0
_0800AFF4: .4byte 0x030032DC
_0800AFF8:
	ldr r1, [r4, #4]
	ldr r0, [r6, #4]
	cmp r1, r0
	bne _0800B014
	ldr r0, _0800B010
	bl sub_8018BB0
_0800B006:
	bl sub_800A9F0
	bl sub_800A974
	b _0800B034
	.align 2, 0
_0800B010: .4byte 0x02000F74
_0800B014:
	ldr r5, _0800B040
	ldr r0, [r5]
	ldr r2, _0800B044
	ldr r4, _0800B048
	ldrb r1, [r4, #2]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl sub_8003894
	ldr r0, [r5]
	ldr r1, [r4, #0x28]
	ldr r2, [r4, #0x2c]
	movs r3, #0
	bl sub_80038DC
_0800B034:
	movs r0, #1
	add sp, #0x60
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0800B040: .4byte 0x02000FC8
_0800B044: .4byte 0x080CC7EC
_0800B048: .4byte 0x03002950

    .thumb
sub_0800B04C: @ 0x0800B04C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x78
	adds r5, r0, #0
	adds r6, r1, #0
	mov r8, r2
	ldr r1, _0800B0C4
	ldr r0, [r1, #0x38]
	str r0, [sp]
	ldr r0, [r1, #0x3c]
	str r0, [sp, #4]
	ldr r0, [r1, #0x40]
	str r0, [sp, #8]
	mov r0, sp
	mov r1, sp
	bl sub_800395C
	adds r4, r0, #0
	asrs r1, r4, #8
	ldr r0, _0800B0C8
	cmp r1, r0
	bgt _0800B0D0
	adds r0, r5, #0
	mov r1, sp
	bl sub_800395C
	lsls r0, r0, #8
	lsls r1, r4, #8
	bl sub_800392C
	adds r1, r0, #0
	ldr r0, [sp]
	lsls r0, r0, #8
	str r0, [sp]
	ldr r0, [sp, #4]
	lsls r0, r0, #8
	str r0, [sp, #4]
	ldr r0, [sp, #8]
	lsls r0, r0, #8
	str r0, [sp, #8]
	mov r0, sp
	bl sub_8003994
	ldr r0, [sp]
	asrs r0, r0, #0x10
	bl Abs
	ldr r4, _0800B0CC
	cmp r0, r4
	bhi _0800B0BE
	ldr r0, [sp, #8]
	asrs r0, r0, #0x10
	bl Abs
	cmp r0, r4
	bls _0800B110
_0800B0BE:
	.2byte 0xEE00, 0xEE00
	b _0800B110
	.align 2, 0
_0800B0C4: .4byte 0x030029A4
_0800B0C8: .4byte 0x00007FFF
_0800B0CC: .4byte 0x0000FFFF
_0800B0D0:
	adds r0, r5, #0
	mov r1, sp
	bl sub_800395C
	adds r1, r4, #0
	bl sub_8003934
	adds r1, r0, #0
	mov r0, sp
	bl sub_800399C
	ldr r0, [sp]
	asrs r0, r0, #8
	bl Abs
	ldr r4, _0800B194
	cmp r0, r4
	bhi _0800B100
	ldr r0, [sp, #8]
	asrs r0, r0, #8
	bl Abs
	cmp r0, r4
	bls _0800B104
_0800B100:
	.2byte 0xEE00, 0xEE00
_0800B104:
	ldr r0, [sp]
	lsls r0, r0, #8
	str r0, [sp]
	ldr r0, [sp, #8]
	lsls r0, r0, #8
	str r0, [sp, #8]
_0800B110:
	ldr r0, _0800B198
	ldr r0, [r0]
	mov r1, sp
	adds r2, r5, #0
	bl sub_80038CC
	ldr r7, _0800B19C
	ldr r2, [r7]
	ldr r0, [r5]
	adds r2, r2, r0
	str r2, [r6]
	ldr r0, [r7, #8]
	ldr r1, [r5, #8]
	adds r0, r0, r1
	str r0, [r6, #8]
	mov r0, r8
	str r2, [r0]
	ldr r0, [r6, #8]
	mov r1, r8
	str r0, [r1, #8]
	add r5, sp, #0x18
	ldr r2, _0800B1A0
	adds r0, r5, #0
	adds r1, r6, #0
	movs r3, #0
	bl sub_80039CC
	add r1, sp, #0xc
	ldr r0, [r6]
	ldr r2, [r7]
	subs r0, r0, r2
	str r0, [sp, #0xc]
	ldr r0, [r6, #4]
	ldr r2, [r7, #4]
	subs r0, r0, r2
	str r0, [r1, #4]
	ldr r0, [r6, #8]
	ldr r2, [r7, #8]
	subs r0, r0, r2
	str r0, [r1, #8]
	adds r0, r5, #0
	bl sub_8006974
	ldr r4, _0800B1A4
	ldr r6, _0800B1A8
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r6, #0
	bl sub_8006FFC
	ldrb r0, [r4]
	cmp r0, #0
	bne _0800B1B0
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_8007434
	ldrb r0, [r6, #2]
	cmp r0, #0xa
	bne _0800B190
	ldr r0, _0800B1AC
	ldrb r0, [r0]
	cmp r0, #0
	beq _0800B1DC
_0800B190:
	movs r0, #1
	b _0800B1DE
	.align 2, 0
_0800B194: .4byte 0x0000FFFF
_0800B198: .4byte 0x02000FC8
_0800B19C: .4byte 0x030032D0
_0800B1A0: .4byte 0x0300331C
_0800B1A4: .4byte 0x030029A4
_0800B1A8: .4byte 0x030028FC
_0800B1AC: .4byte 0x03003588
_0800B1B0:
	ldr r1, _0800B1EC
	ldr r0, _0800B1F0
	ldrh r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r1
	cmp r0, #0
	beq _0800B1DC
	ldr r1, _0800B1F4
	ldr r0, [r7]
	str r0, [r1]
	ldr r0, [r7, #8]
	str r0, [r1, #8]
	ldr r2, _0800B1F8
	ldr r1, _0800B1FC
	ldr r0, [r1]
	str r0, [r2]
	ldr r0, [r1, #8]
	str r0, [r2, #8]
_0800B1DC:
	movs r0, #0
_0800B1DE:
	add sp, #0x78
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0800B1EC: .4byte gPlayerStateSettings
_0800B1F0: .4byte gPlayerState
_0800B1F4: .4byte 0x03003328
_0800B1F8: .4byte 0x03003334
_0800B1FC: .4byte 0x030032DC

    .thumb
    .global update_player
update_player: @ 0x0800B200
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x84
	ldr r5, _0800B244
	ldr r6, _0800B248
	add r4, sp, #0x78
	adds r0, r5, #0
	adds r1, r6, #0
	adds r2, r4, #0
	mov r3, sp
	bl sub_800AA6C
	adds r0, r5, #0
	bl sub_802ADE8
	mov sb, r4
	cmp r0, #0
	beq _0800B22A
	b _0800B592
_0800B22A:
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_800A740
	ldr r0, _0800B24C
	ldrb r0, [r0]
	cmp r0, #3
	beq _0800B254
	ldr r1, _0800B250
	movs r2, #0x80
	lsls r2, r2, #0xb
	b _0800B25A
	.align 2, 0
_0800B244: .4byte 0x03003328
_0800B248: .4byte 0x03003334
_0800B24C: .4byte 0x020020B1
_0800B250: .4byte 0x0300331C
_0800B254:
	ldr r1, _0800B2A4
	movs r2, #0x80
	lsls r2, r2, #0xc
_0800B25A:
	str r2, [r1]
	ldr r0, _0800B2A8
	ldr r0, [r0]
	str r0, [r1, #4]
	str r2, [r1, #8]
	adds r2, r1, #0
	add r4, sp, #0xc
	ldr r6, _0800B2AC
	adds r0, r4, #0
	adds r1, r6, #0
	movs r3, #0
	bl sub_80039CC
	adds r0, r4, #0
	mov r1, sp
	bl sub_8006974
	ldr r0, _0800B2B0
	mov r8, r0
	ldr r7, _0800B2B4
	ldrh r0, [r7]
	lsls r0, r0, #1
	add r0, r8
	ldrh r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0800B2BC
	ldr r1, _0800B2B8
	adds r0, r6, #0
	bl sub_800AB54
	cmp r0, #0
	bne _0800B2A0
	b _0800B592
_0800B2A0:
	b _0800B542
	.align 2, 0
_0800B2A4: .4byte 0x0300331C
_0800B2A8: .4byte 0x03003308
_0800B2AC: .4byte 0x03003328
_0800B2B0: .4byte gPlayerStateSettings
_0800B2B4: .4byte gPlayerState
_0800B2B8: .4byte 0x03003334
_0800B2BC:
	ldr r5, _0800B314
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_08009208
	ldrb r0, [r5]
	cmp r0, #0
	bne _0800B2E6
	add r0, sp, #0x6c
	ldr r1, [r6]
	str r1, [sp, #0x6c]
	ldr r1, [r6, #4]
	movs r2, #0xa0
	lsls r2, r2, #0xb
	adds r1, r1, r2
	str r1, [r0, #4]
	ldr r1, [r6, #8]
	str r1, [r0, #8]
	adds r1, r5, #0
	bl sub_08009208
_0800B2E6:
	ldrh r0, [r7]
	lsls r0, r0, #1
	add r0, r8
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r1
	cmp r0, #0
	beq _0800B32C
	ldr r0, _0800B318
	ldr r0, [r0]
	bl sub_80038BC
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	beq _0800B320
	ldr r1, _0800B31C
	adds r0, r4, #0
	bl sub_8007434
	b _0800B334
	.align 2, 0
_0800B314: .4byte 0x03002950
_0800B318: .4byte 0x02000FC8
_0800B31C: .4byte 0x030028FC
_0800B320:
	ldr r0, _0800B328
	strb r1, [r0]
	b _0800B334
	.align 2, 0
_0800B328: .4byte 0x030028FC
_0800B32C:
	ldr r1, _0800B3A8
	adds r0, r4, #0
	bl sub_8007434
_0800B334:
	ldr r1, _0800B3AC
	ldr r0, _0800B3B0
	ldrh r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r1
	cmp r0, #0
	bne _0800B374
	ldr r3, _0800B3A8
	ldrb r0, [r3]
	cmp r0, #0
	bne _0800B374
	ldr r1, [r3, #0x2c]
	movs r0, #0xb4
	lsls r0, r0, #0xf
	cmp r1, r0
	beq _0800B374
	ldr r2, _0800B3B4
	ldr r0, [r2, #0x2c]
	cmp r0, r1
	bne _0800B36C
	ldr r1, [r2, #0x28]
	ldr r0, [r3, #0x28]
	cmp r1, r0
	beq _0800B374
_0800B36C:
	adds r0, r4, #0
	adds r1, r3, #0
	bl sub_08007890
_0800B374:
	ldr r6, _0800B3B8
	ldr r5, _0800B3A8
	adds r0, r4, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl sub_8006FFC
	adds r0, r4, #0
	bl sub_8007AC4
	ldr r2, _0800B3B4
	ldrb r0, [r2]
	cmp r0, #0
	bne _0800B3D8
	ldrb r0, [r5]
	ldr r1, _0800B3BC
	cmp r0, #0
	bne _0800B39E
	ldr r0, [r1]
	cmp r0, #0
	ble _0800B3C0
_0800B39E:
	movs r0, #1
	strb r0, [r2]
	ldr r0, [r1]
	subs r0, #1
	b _0800B3DC
	.align 2, 0
_0800B3A8: .4byte 0x030028FC
_0800B3AC: .4byte gPlayerStateSettings
_0800B3B0: .4byte gPlayerState
_0800B3B4: .4byte 0x03002950
_0800B3B8: .4byte 0x030029A4
_0800B3BC: .4byte 0x020011FC
_0800B3C0:
	ldrb r0, [r6]
	cmp r0, #0
	bne _0800B3DE
	ldr r0, _0800B3D4
	ldr r0, [r0]
	cmp r0, #0
	bne _0800B3D0
	b _0800B592
_0800B3D0:
	b _0800B3DE
	.align 2, 0
_0800B3D4: .4byte 0x0203DFC4
_0800B3D8:
	ldr r1, _0800B470
	movs r0, #1
_0800B3DC:
	str r0, [r1]
_0800B3DE:
	ldr r5, _0800B474
	ldr r6, _0800B478
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_800A7DC
	cmp r0, #0
	beq _0800B3F0
	b _0800B542
_0800B3F0:
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_800ABD4
	cmp r0, #0
	bne _0800B3FE
	b _0800B592
_0800B3FE:
	bl sub_800AD64
	ldr r1, _0800B47C
	ldr r0, _0800B480
	ldrh r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r1
	cmp r0, #0
	bne _0800B490
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0800B490
	bl sub_800E61C
	ldr r0, _0800B484
	ldrb r0, [r0]
	cmp r0, #0
	beq _0800B440
	mov r0, sb
	adds r1, r5, #0
	adds r2, r6, #0
	adds r3, r4, #0
	bl sub_0800B04C
	cmp r0, #0
	bne _0800B440
	b _0800B542
_0800B440:
	adds r0, r5, #0
	adds r1, r6, #0
	mov r2, sp
	adds r3, r4, #0
	bl sub_800ADAC
	cmp r0, #0
	beq _0800B542
	ldr r1, _0800B488
	ldr r0, [r5]
	str r0, [r1]
	ldr r0, [r5, #4]
	str r0, [r1, #4]
	ldr r0, [r5, #8]
	str r0, [r1, #8]
	ldr r1, _0800B48C
	ldr r0, [r6]
	str r0, [r1]
	ldr r0, [r6, #4]
	str r0, [r1, #4]
	ldr r0, [r6, #8]
	str r0, [r1, #8]
	b _0800B542
	.align 2, 0
_0800B470: .4byte 0x020011FC
_0800B474: .4byte 0x03003328
_0800B478: .4byte 0x03003334
_0800B47C: .4byte gPlayerStateSettings
_0800B480: .4byte gPlayerState
_0800B484: .4byte 0x030029A4
_0800B488: .4byte 0x030032D0
_0800B48C: .4byte 0x030032DC
_0800B490:
	bl sub_0800A8B4
	cmp r0, #0
	bne _0800B592
	ldr r7, _0800B5A0
	ldrb r0, [r7]
	cmp r0, #0
	beq _0800B4AC
	ldr r1, _0800B5A4
	ldr r2, _0800B5A8
	mov r0, sb
	adds r3, r4, #0
	bl sub_0800B04C
_0800B4AC:
	ldr r1, _0800B5AC
	ldr r0, _0800B5B0
	ldrh r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	ldr r5, _0800B5A4
	ldr r6, _0800B5A8
	cmp r0, #0
	beq _0800B4E0
	ldrb r0, [r7]
	cmp r0, #0
	beq _0800B4E0
	ldr r1, _0800B5B4
	ldr r0, [r1]
	str r0, [r5]
	ldr r0, [r1, #8]
	str r0, [r5, #8]
	ldr r1, _0800B5B8
	ldr r0, [r1]
	str r0, [r6]
	ldr r0, [r1, #8]
	str r0, [r6, #8]
_0800B4E0:
	adds r0, r5, #0
	adds r1, r6, #0
	adds r2, r4, #0
	bl sub_800AEFC
	cmp r0, #0
	beq _0800B542
	ldr r4, _0800B5B4
	ldr r0, [r5]
	str r0, [r4]
	ldr r0, [r5, #4]
	str r0, [r4, #4]
	ldr r0, [r5, #8]
	str r0, [r4, #8]
	ldr r1, _0800B5B8
	ldr r0, [r6]
	str r0, [r1]
	ldr r0, [r6, #4]
	str r0, [r1, #4]
	ldr r0, [r6, #8]
	str r0, [r1, #8]
	ldr r0, _0800B5BC
	ldrb r0, [r0]
	cmp r0, #0
	beq _0800B542
	ldr r5, _0800B5C0
	ldr r0, [r5]
	bl sub_80038BC
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0800B542
	ldr r1, _0800B5AC
	ldr r0, _0800B5B0
	ldrh r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0800B542
	ldr r0, [r5]
	bl sub_800387C
	adds r0, r4, #4
	bl sub_80181B8
_0800B542:
	ldr r0, _0800B5C4
	ldrb r0, [r0]
	cmp r0, #0
	bne _0800B592
	ldr r2, _0800B5C8
	ldr r0, _0800B5B4
	ldr r1, _0800B5CC
	ldr r6, [r1]
	asrs r6, r6, #1
	ldr r5, [r0]
	subs r1, r5, r6
	str r1, [r2]
	ldr r4, [r0, #4]
	mov r8, r4
	str r4, [r2, #4]
	ldr r1, _0800B5D0
	ldr r4, [r1]
	asrs r4, r4, #1
	ldr r3, [r0, #8]
	subs r1, r3, r4
	str r1, [r2, #8]
	ldr r2, _0800B5D4
	adds r5, r5, r6
	str r5, [r2]
	ldr r1, _0800B5D8
	ldr r1, [r1]
	add r8, r1
	mov r1, r8
	str r1, [r2, #4]
	adds r3, r3, r4
	str r3, [r2, #8]
	ldr r1, _0800B5DC
	ldr r1, [r1]
	ldr r2, _0800B5E0
	ldr r2, [r2]
	ldr r3, _0800B5E4
	movs r4, #0
	ldrsh r3, [r3, r4]
	bl CameraUpdate
_0800B592:
	add sp, #0x84
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800B5A0: .4byte 0x030029A4
_0800B5A4: .4byte 0x03003328
_0800B5A8: .4byte 0x03003334
_0800B5AC: .4byte gPlayerStateSettings
_0800B5B0: .4byte gPlayerState
_0800B5B4: .4byte 0x030032D0
_0800B5B8: .4byte 0x030032DC
_0800B5BC: .4byte 0x030029F8
_0800B5C0: .4byte 0x02000FC8
_0800B5C4: .4byte 0x030032A9
_0800B5C8: .4byte 0x030032E8
_0800B5CC: .4byte 0x03003300
_0800B5D0: .4byte 0x03003304
_0800B5D4: .4byte 0x030032F4
_0800B5D8: .4byte 0x03003308
_0800B5DC: .4byte 0x02001110
_0800B5E0: .4byte 0x02001114
_0800B5E4: .4byte 0x02002EC2

    .thumb
CameraUpdate: @ 0x0800B5E8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	mov r8, r1
	mov sl, r2
	ldr r6, _0800B650
	ldr r5, [r6]
	ldr r1, _0800B654
	mov sb, r1
	ldr r7, [r1]
	str r7, [sp]
	ldr r4, _0800B658
	mov r1, r8
	lsls r2, r1, #0x10
	ldr r1, [r0]
	adds r1, r1, r2
	str r1, [r4]
	ldr r4, _0800B65C
	ldr r1, _0800B660
	ldrh r2, [r1]
	lsls r2, r2, #0x10
	ldr r1, [r0, #4]
	ldr r0, [r0, #8]
	adds r1, r1, r0
	mov r7, sl
	lsls r0, r7, #0x10
	adds r1, r1, r0
	lsls r0, r3, #0x10
	adds r1, r1, r0
	subs r2, r2, r1
	str r2, [r4]
	adds r0, r3, #0
	bl CameraMove
	ldr r0, [r6]
	subs r5, r5, r0
	movs r6, #1
	cmp r5, #0
	bge _0800B63E
	movs r6, #2
_0800B63E:
	mov r1, sb
	ldr r0, [r1]
	ldr r7, [sp]
	subs r0, r7, r0
	cmp r0, #0
	bge _0800B664
	movs r0, #8
	b _0800B666
	.align 2, 0
_0800B650: .4byte 0x0300330C
_0800B654: .4byte 0x03003310
_0800B658: .4byte 0x03003314
_0800B65C: .4byte 0x03003318
_0800B660: .4byte 0x03003576
_0800B664:
	movs r0, #4
_0800B666:
	orrs r6, r0
	ldr r2, _0800B6C4
	ldr r0, _0800B6C8
	ldr r5, _0800B6CC
	ldr r0, [r0]
	ldr r1, [r5]
	subs r0, r0, r1
	asrs r0, r0, #0x10
	adds r0, #0x78
	mov r1, r8
	subs r4, r0, r1
	strh r4, [r2, #6]
	ldr r0, _0800B6D0
	ldr r1, _0800B6D4
	ldr r0, [r0]
	ldr r1, [r1]
	subs r0, r0, r1
	asrs r0, r0, #0x10
	adds r0, #0x50
	mov r7, sl
	adds r3, r0, r7
	strb r3, [r2, #8]
	ldr r2, _0800B6D8
	strh r4, [r2, #6]
	ldr r0, _0800B6DC
	ldr r1, _0800B6E0
	ldr r0, [r0, #4]
	ldr r1, [r1, #4]
	subs r0, r0, r1
	asrs r0, r0, #0x10
	adds r0, r3, r0
	strb r0, [r2, #8]
	ldr r0, _0800B6E4
	ldrb r0, [r0]
	cmp r0, #0
	beq _0800B6B4
	ldr r0, _0800B6E8
	strh r4, [r0, #6]
	strb r3, [r0, #8]
_0800B6B4:
	movs r0, #1
	ands r0, r6
	cmp r0, #0
	beq _0800B6EC
	ldr r0, [r5]
	bl UpdateMapLeft
	b _0800B6FA
	.align 2, 0
_0800B6C4: .4byte 0x02000F74
_0800B6C8: .4byte 0x03003314
_0800B6CC: .4byte 0x0300330C
_0800B6D0: .4byte 0x03003318
_0800B6D4: .4byte 0x03003310
_0800B6D8: .4byte 0x02000F90
_0800B6DC: .4byte 0x030032D0
_0800B6E0: .4byte 0x030032DC
_0800B6E4: .4byte 0x020010AF
_0800B6E8: .4byte 0x02000FAC
_0800B6EC:
	movs r0, #2
	ands r0, r6
	cmp r0, #0
	beq _0800B6FA
	ldr r0, [r5]
	bl UpdateMapRight
_0800B6FA:
	movs r0, #4
	ands r0, r6
	cmp r0, #0
	beq _0800B710
	ldr r0, _0800B70C
	ldr r0, [r0]
	bl UpdateMapUp
	b _0800B720
	.align 2, 0
_0800B70C: .4byte 0x03003310
_0800B710:
	movs r0, #8
	ands r6, r0
	cmp r6, #0
	beq _0800B720
	ldr r0, _0800B730
	ldr r0, [r0]
	bl UpdateMapDown
_0800B720:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800B730: .4byte 0x03003310

    .thumb
CameraMove: @ 0x0800B734
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	ldr r7, _0800B764
	movs r0, #0
	strb r0, [r7]
	ldr r6, _0800B768
	ldr r1, [r6]
	ldr r5, _0800B76C
	ldr r0, [r5]
	subs r4, r1, r0
	adds r0, r4, #0
	bl Abs
	adds r1, r0, #0
	ldr r0, _0800B770
	cmp r1, r0
	bgt _0800B774
	ldr r0, [r5]
	str r0, [r6]
	movs r1, #0
	b _0800B780
	.align 2, 0
_0800B764: .4byte 0x02001118
_0800B768: .4byte 0x0300330C
_0800B76C: .4byte 0x03003314
_0800B770: .4byte 0x0000FFFF
_0800B774:
	adds r0, r4, #0
	bl CameraGetVelocity
	adds r1, r0, #0
	movs r0, #1
	strb r0, [r7]
_0800B780:
	ldr r3, _0800B79C
	ldr r0, [r3]
	adds r0, r0, r1
	str r0, [r3]
	asrs r2, r0, #0x10
	adds r1, r2, #0
	adds r1, #0x78
	ldr r0, _0800B7A0
	ldrh r0, [r0]
	cmp r1, r0
	blt _0800B7A4
	subs r0, #0x78
	lsls r0, r0, #0x10
	b _0800B7B0
	.align 2, 0
_0800B79C: .4byte 0x0300330C
_0800B7A0: .4byte 0x03003574
_0800B7A4:
	adds r0, r2, #0
	subs r0, #0x78
	cmp r0, #0
	bge _0800B7B8
	movs r0, #0xf0
	lsls r0, r0, #0xf
_0800B7B0:
	str r0, [r3]
	ldr r1, _0800B7E0
	movs r0, #0
	strb r0, [r1]
_0800B7B8:
	ldr r7, _0800B7E4
	movs r0, #0
	strb r0, [r7]
	ldr r6, _0800B7E8
	ldr r1, [r6]
	ldr r5, _0800B7EC
	ldr r0, [r5]
	subs r4, r1, r0
	adds r0, r4, #0
	bl Abs
	adds r1, r0, #0
	ldr r0, _0800B7F0
	cmp r1, r0
	bgt _0800B7F4
	ldr r0, [r5]
	str r0, [r6]
	movs r1, #0
	b _0800B800
	.align 2, 0
_0800B7E0: .4byte 0x02001118
_0800B7E4: .4byte 0x02001119
_0800B7E8: .4byte 0x03003310
_0800B7EC: .4byte 0x03003318
_0800B7F0: .4byte 0x0000FFFF
_0800B7F4:
	adds r0, r4, #0
	bl CameraGetVelocity
	adds r1, r0, #0
	movs r0, #1
	strb r0, [r7]
_0800B800:
	ldr r3, _0800B838
	ldr r0, [r3]
	adds r0, r0, r1
	str r0, [r3]
	asrs r2, r0, #0x10
	adds r0, r2, #0
	adds r0, #0x50
	ldr r4, _0800B83C
	ldrh r1, [r4]
	cmp r0, r1
	blt _0800B850
	adds r0, r1, #0
	subs r0, #0x50
	add r0, r8
	lsls r0, r0, #0x10
	str r0, [r3]
	asrs r2, r0, #0x10
	adds r0, r2, #0
	adds r0, #0x50
	ldrh r1, [r4]
	cmp r0, r1
	blt _0800B840
	adds r0, r1, #0
	subs r0, #0x50
	lsls r0, r0, #0x10
	str r0, [r3]
	b _0800B884
	.align 2, 0
_0800B838: .4byte 0x03003310
_0800B83C: .4byte 0x03003576
_0800B840:
	adds r0, r2, #0
	subs r0, #0x50
	cmp r0, #0
	bge _0800B88A
	movs r0, #0xa0
	lsls r0, r0, #0xf
	str r0, [r3]
	b _0800B884
_0800B850:
	adds r0, r2, #0
	subs r0, #0x50
	cmp r0, #0
	bge _0800B88A
	mov r1, r8
	lsls r0, r1, #0x10
	movs r5, #0xa0
	lsls r5, r5, #0xf
	adds r0, r0, r5
	str r0, [r3]
	asrs r2, r0, #0x10
	adds r0, r2, #0
	adds r0, #0x50
	ldrh r1, [r4]
	cmp r0, r1
	blt _0800B87A
	adds r0, r1, #0
	subs r0, #0x50
	lsls r0, r0, #0x10
	str r0, [r3]
	b _0800B884
_0800B87A:
	adds r0, r2, #0
	subs r0, #0x50
	cmp r0, #0
	bge _0800B88A
	str r5, [r3]
_0800B884:
	ldr r1, _0800B894
	movs r0, #0
	strb r0, [r1]
_0800B88A:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800B894: .4byte 0x02001119

    .thumb
CameraGetVelocity: @ 0x0800B898
	push {lr}
	adds r2, r0, #0
	ldr r0, _0800B8B0
	cmp r1, r0
	bgt _0800B8B8
	ldr r0, _0800B8B4
	cmp r2, #0
	bge _0800B94E
	movs r0, #0x80
	lsls r0, r0, #8
	b _0800B94E
	.align 2, 0
_0800B8B0: .4byte 0x00017FFF
_0800B8B4: .4byte 0xFFFF8000
_0800B8B8:
	ldr r0, _0800B8CC
	cmp r1, r0
	bgt _0800B8D4
	ldr r0, _0800B8D0
	cmp r2, #0
	bge _0800B94E
	movs r0, #0xc0
	lsls r0, r0, #9
	b _0800B94E
	.align 2, 0
_0800B8CC: .4byte 0x0001FFFF
_0800B8D0: .4byte 0xFFFE8000
_0800B8D4:
	ldr r0, _0800B8E8
	cmp r1, r0
	bgt _0800B8F0
	ldr r0, _0800B8EC
	cmp r2, #0
	bge _0800B94E
	movs r0, #0x80
	lsls r0, r0, #0xa
	b _0800B94E
	.align 2, 0
_0800B8E8: .4byte 0x00027FFF
_0800B8EC: .4byte 0xFFFE0000
_0800B8F0:
	ldr r0, _0800B904
	cmp r1, r0
	bgt _0800B90C
	ldr r0, _0800B908
	cmp r2, #0
	bge _0800B94E
	movs r0, #0xa0
	lsls r0, r0, #0xa
	b _0800B94E
	.align 2, 0
_0800B904: .4byte 0x0003FFFF
_0800B908: .4byte 0xFFFD8000
_0800B90C:
	ldr r0, _0800B920
	cmp r1, r0
	bgt _0800B928
	ldr r0, _0800B924
	cmp r2, #0
	bge _0800B94E
	movs r0, #0xc0
	lsls r0, r0, #0xa
	b _0800B94E
	.align 2, 0
_0800B920: .4byte 0x0005FFFF
_0800B924: .4byte 0xFFFD0000
_0800B928:
	ldr r0, _0800B93C
	cmp r1, r0
	bgt _0800B944
	ldr r0, _0800B940
	cmp r2, #0
	bge _0800B94E
	movs r0, #0xe0
	lsls r0, r0, #0xa
	b _0800B94E
	.align 2, 0
_0800B93C: .4byte 0x000FFFFF
_0800B940: .4byte 0xFFFC8000
_0800B944:
	ldr r0, _0800B954
	cmp r2, #0
	bge _0800B94E
	movs r0, #0xa0
	lsls r0, r0, #0xb
_0800B94E:
	pop {r1}
	bx r1
	.align 2, 0
_0800B954: .4byte 0xFFFB0000
