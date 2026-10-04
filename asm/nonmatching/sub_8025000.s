    .thumb
sub_8025000: @ 0x08025000
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	ldr r0, _08025038
	ldrb r0, [r0]
	cmp r0, #0
	beq _08025014
	b _08025258
_08025014:
	movs r4, #0
	movs r1, #0
	movs r7, #0
	ldr r5, _0802503C
	ldr r6, _08025040
	ldr r3, _08025044
_08025020:
	lsls r0, r7, #2
	adds r0, r0, r3
	ldr r2, [r0]
	ldrb r0, [r2]
	cmp r0, #0xfe
	beq _0802504E
	cmp r0, #0xfe
	bgt _08025048
	cmp r0, #0xfb
	beq _0802504E
	b _08025052
	.align 2, 0
_08025038: .4byte byte_20021F0
_0802503C: .4byte 0x02002200
_08025040: .4byte 0x020021FC
_08025044: .4byte 0x086AD314
_08025048:
	cmp r0, #0xff
	bne _08025052
	b _0802505A
_0802504E:
	adds r7, #1
	b _08025056
_08025052:
	adds r7, #1
	adds r1, #1
_08025056:
	cmp r4, #0
	beq _08025020
_0802505A:
	str r1, [r5]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	movs r1, #0x11
	movs r2, #4
	bl heap_alloc
	str r0, [r6]
	movs r7, #0
	ldr r0, [r5]
	cmp r7, r0
	bge _08025164
	adds r5, r6, #0
	movs r0, #0
	mov r8, r0
	movs r3, #1
	movs r4, #0
	ldr r6, _080250CC
	movs r1, #0xf0
	mov sb, r1
_08025084:
	ldr r2, [r6]
	movs r0, #0x24
	mov ip, r0
	ldrb r0, [r2]
	cmp r0, #0xfb
	bne _080250D4
	adds r6, #4
	ldr r2, [r6]
	ldr r0, [r5]
	adds r0, r4, r0
	adds r0, #0x24
	movs r1, #0xfe
	strb r1, [r0]
	ldr r0, [r5]
	adds r0, r4, r0
	adds r0, #0x26
	mov r1, r8
	strb r1, [r0]
	ldr r0, [r5]
	adds r0, r4, r0
	strb r3, [r0, #0x1e]
	ldr r0, [r5]
	adds r0, r4, r0
	mov r1, sb
	strh r1, [r0, #0x1c]
	strh r3, [r0, #0x22]
	mov r1, r8
	strh r1, [r0, #0x20]
	adds r0, #0x25
	movs r1, #6
	strb r1, [r0]
	ldr r0, [r5]
	adds r0, r4, r0
	ldr r1, _080250D0
	b _08025114
	.align 2, 0
_080250CC: .4byte 0x086AD314
_080250D0: .4byte 0x080B01B8
_080250D4:
	cmp r0, #0xfe
	bne _080250E0
	adds r6, #4
	ldr r2, [r6]
	movs r1, #0x46
	mov ip, r1
_080250E0:
	ldr r0, [r5]
	adds r0, r4, r0
	adds r0, #0x24
	strb r3, [r0]
	ldr r0, [r5]
	adds r0, r4, r0
	adds r0, #0x26
	mov r1, r8
	strb r1, [r0]
	ldr r0, [r5]
	adds r0, r4, r0
	strb r3, [r0, #0x1e]
	ldr r0, [r5]
	adds r0, r4, r0
	mov r1, sb
	strh r1, [r0, #0x1c]
	movs r1, #0xa
	strh r1, [r0, #0x22]
	mov r1, r8
	strh r1, [r0, #0x20]
	adds r0, #0x25
	movs r1, #6
	strb r1, [r0]
	ldr r0, [r5]
	adds r0, r4, r0
	ldr r1, _080251B8
_08025114:
	str r1, [r0, #0x18]
	ldr r0, [r5]
	adds r0, r4, r0
	strb r3, [r0]
	ldr r1, [r5]
	adds r1, r4, r1
	str r2, [r1, #0x10]
	mov r0, r8
	str r0, [r1, #8]
	mov r0, ip
	lsls r0, r0, #0x10
	str r0, [r1, #4]
	adds r1, #0x14
	adds r0, r2, #0
	str r3, [sp]
	bl sub_8025870
	ldr r1, [r5]
	adds r1, r4, r1
	strb r0, [r1, #1]
	ldr r1, [r5]
	adds r1, r4, r1
	ldrb r0, [r1, #1]
	mov r2, sb
	subs r0, r2, r0
	asrs r0, r0, #1
	strh r0, [r1, #0x14]
	movs r0, #0xaa
	strh r0, [r1, #0x16]
	movs r0, #0xaa
	lsls r0, r0, #0x10
	str r0, [r1, #0xc]
	adds r6, #4
	adds r4, #0x28
	adds r7, #1
	ldr r0, _080251BC
	ldr r0, [r0]
	ldr r3, [sp]
	cmp r7, r0
	blt _08025084
_08025164:
	ldr r1, _080251C0
	movs r0, #0xc0
	lsls r0, r0, #7
	str r0, [r1]
	ldr r3, _080251C4
	mov ip, r3
	mov r1, ip
	adds r1, #0x24
	movs r2, #0
	movs r0, #0xfe
	strb r0, [r1]
	mov r0, ip
	adds r0, #0x26
	strb r2, [r0]
	movs r1, #1
	mov r0, ip
	strb r1, [r0, #0x1e]
	movs r0, #0xf0
	strh r0, [r3, #0x1c]
	movs r3, #1
	mov r0, ip
	strh r1, [r0, #0x22]
	strh r2, [r0, #0x20]
	mov r1, ip
	adds r1, #0x25
	movs r0, #6
	strb r0, [r1]
	ldr r0, _080251C8
	mov r1, ip
	str r0, [r1, #0x18]
	strb r3, [r1]
	ldr r0, _080251CC
	ldrb r0, [r0]
	mov r4, ip
	cmp r0, #4
	bhi _0802520C
	lsls r0, r0, #2
	ldr r1, _080251D0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080251B8: .4byte 0x080B01B0
_080251BC: .4byte 0x02002200
_080251C0: .4byte 0x0200222C
_080251C4: .4byte 0x02002204
_080251C8: .4byte 0x080B01B8
_080251CC: .4byte 0x02000320
_080251D0: .4byte 0x080251D4
_080251D4: @ jump table
	.4byte _080251E8 @ case 0
	.4byte _080251F0 @ case 1
	.4byte _08025200 @ case 2
	.4byte _080251F8 @ case 3
	.4byte _08025208 @ case 4
_080251E8:
	ldr r0, _080251EC
	b _0802520A
	.align 2, 0
_080251EC: .4byte 0x0806844C
_080251F0:
	ldr r0, _080251F4
	b _0802520A
	.align 2, 0
_080251F4: .4byte 0x08068480
_080251F8:
	ldr r0, _080251FC
	b _0802520A
	.align 2, 0
_080251FC: .4byte 0x080684AC
_08025200:
	ldr r0, _08025204
	b _0802520A
	.align 2, 0
_08025204: .4byte 0x080684E0
_08025208:
	ldr r0, _08025268
_0802520A:
	str r0, [r4, #0x10]
_0802520C:
	movs r0, #0
	str r0, [r4, #8]
	str r0, [r4, #4]
	ldr r0, [r4, #0x10]
	adds r1, r4, #0
	adds r1, #0x14
	bl sub_8025870
	strb r0, [r4, #1]
	ldrb r1, [r4, #1]
	movs r0, #0xf0
	subs r0, r0, r1
	asrs r0, r0, #1
	strh r0, [r4, #0x14]
	movs r0, #0xaa
	strh r0, [r4, #0x16]
	movs r0, #0xaa
	lsls r0, r0, #0x10
	str r0, [r4, #0xc]
	ldr r1, _0802526C
	movs r0, #1
	strb r0, [r1]
	movs r0, #0xa
	movs r1, #0
	bl sub_080593D0
	ldr r0, _08025270
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802524E
	movs r0, #0xf
	bl audio_start_tune
_0802524E:
	ldr r0, _08025274
	movs r1, #1
	movs r2, #1
	bl sub_8026E48
_08025258:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08025268: .4byte 0x0806850C
_0802526C: .4byte byte_20021F0
_08025270: .4byte 0x0203EA88
_08025274: .4byte 0x00000FFF
