
	.syntax unified

    .arm
sub_8000E10: @ 0x08000E10
	mov r3, #0x4000000
	add r3, r3, #0x200
	ldr r2, [r3]
	and r1, r2, r2, lsr #16
	mov r2, #0
	ands r0, r1, #1
	bne _08000EC4
	add r2, r2, #4
	ands r0, r1, #2
	bne _08000EC4
	add r2, r2, #4
	ands r0, r1, #4
	bne _08000EC4
	add r2, r2, #4
	ands r0, r1, #8
	bne _08000EC4
	add r2, r2, #4
	ands r0, r1, #0x10
	bne _08000EC4
	add r2, r2, #4
	ands r0, r1, #0x20
	bne _08000EC4
	add r2, r2, #4
	ands r0, r1, #0x40
	bne _08000EC4
	add r2, r2, #4
	ands r0, r1, #0x80
	bne _08000EC4
	add r2, r2, #4
	ands r0, r1, #0x100
	bne _08000EC4
	add r2, r2, #4
	ands r0, r1, #0x200
	bne _08000EC4
	add r2, r2, #4
	ands r0, r1, #0x400
	bne _08000EC4
	add r2, r2, #4
	ands r0, r1, #0x800
	bne _08000EC4
	add r2, r2, #4
	ands r0, r1, #0x1000
	bne _08000EC4
	add r2, r2, #4
	ands r0, r1, #0x2000
_08000EC4:
	strh r0, [r3, #2]
	ldr r1, _080017E8
	add r1, r1, r2
	ldr r0, [r1]
	bx r0

    .arm
sub_8000ED8: @ 0x08000ED8
	eors ip, r0, r1, asr #32
	rsbhs r1, r1, #0
	movs r0, r0
	rsbmi r0, r0, #0
	cmp r1, r0, lsr #15
	bls _08001090
	lsl r2, r0, #0x10
	lsr r0, r0, #0x10
	rsb r1, r1, #0
	adds r2, r2, r2
	adcs r0, r1, r0, lsl #1
	rsblo r0, r1, r0
	adcs r2, r2, r2
	adcs r0, r1, r0, lsl #1
	rsblo r0, r1, r0
	adcs r2, r2, r2
	adcs r0, r1, r0, lsl #1
	rsblo r0, r1, r0
	adcs r2, r2, r2
	adcs r0, r1, r0, lsl #1
	rsblo r0, r1, r0
	adcs r2, r2, r2
	adcs r0, r1, r0, lsl #1
	rsblo r0, r1, r0
	adcs r2, r2, r2
	adcs r0, r1, r0, lsl #1
	rsblo r0, r1, r0
	adcs r2, r2, r2
	adcs r0, r1, r0, lsl #1
	rsblo r0, r1, r0
	adcs r2, r2, r2
	adcs r0, r1, r0, lsl #1
	rsblo r0, r1, r0
	adcs r2, r2, r2
	adcs r0, r1, r0, lsl #1
	rsblo r0, r1, r0
	adcs r2, r2, r2
	adcs r0, r1, r0, lsl #1
	rsblo r0, r1, r0
	adcs r2, r2, r2
	adcs r0, r1, r0, lsl #1
	rsblo r0, r1, r0
	adcs r2, r2, r2
	adcs r0, r1, r0, lsl #1
	rsblo r0, r1, r0
	adcs r2, r2, r2
	adcs r0, r1, r0, lsl #1
	rsblo r0, r1, r0
	adcs r2, r2, r2
	adcs r0, r1, r0, lsl #1
	rsblo r0, r1, r0
	adcs r2, r2, r2
	adcs r0, r1, r0, lsl #1
	rsblo r0, r1, r0
	adcs r2, r2, r2
	adcs r0, r1, r0, lsl #1
	rsblo r0, r1, r0
	adcs r2, r2, r2
	adcs r0, r1, r0, lsl #1
	rsblo r0, r1, r0
	adcs r2, r2, r2
	adcs r0, r1, r0, lsl #1
	rsblo r0, r1, r0
	adcs r2, r2, r2
	adcs r0, r1, r0, lsl #1
	rsblo r0, r1, r0
	adcs r2, r2, r2
	adcs r0, r1, r0, lsl #1
	rsblo r0, r1, r0
	adcs r2, r2, r2
	adcs r0, r1, r0, lsl #1
	rsblo r0, r1, r0
	adcs r2, r2, r2
	adcs r0, r1, r0, lsl #1
	rsblo r0, r1, r0
	adcs r2, r2, r2
	adcs r0, r1, r0, lsl #1
	rsblo r0, r1, r0
	adcs r2, r2, r2
	adcs r0, r1, r0, lsl #1
	rsblo r0, r1, r0
	adcs r2, r2, r2
	adcs r0, r1, r0, lsl #1
	rsblo r0, r1, r0
	adcs r2, r2, r2
	adcs r0, r1, r0, lsl #1
	rsblo r0, r1, r0
	adcs r2, r2, r2
	adcs r0, r1, r0, lsl #1
	rsblo r0, r1, r0
	adcs r2, r2, r2
	adcs r0, r1, r0, lsl #1
	rsblo r0, r1, r0
	adcs r2, r2, r2
	adcs r0, r1, r0, lsl #1
	rsblo r0, r1, r0
	adcs r2, r2, r2
	adcs r0, r1, r0, lsl #1
	rsblo r0, r1, r0
	adcs r2, r2, r2
	adcs r0, r1, r0, lsl #1
	rsblo r0, r1, r0
	adcs r2, r2, r2
	adcs r0, r1, r0, lsl #1
	rsblo r0, r1, r0
	adcs r2, r2, r2
	tst ip, #-0x80000000
	rsbne r2, r2, #0
	mov r0, r2
	bx lr
_08001090:
	.2byte 0xEE00, 0xEE00
	eors ip, r0, r1, asr #32
	rsbhs r1, r1, #0
	movs r0, r0
	rsbmi r0, r0, #0
	cmp r1, r0, lsr #23
	bls _0800124C
	lsl r2, r0, #8
	lsr r0, r0, #0x18
	rsb r1, r1, #0
	adds r2, r2, r2
	adcs r0, r1, r0, lsl #1
	rsblo r0, r1, r0
	adcs r2, r2, r2
	adcs r0, r1, r0, lsl #1
	rsblo r0, r1, r0
	adcs r2, r2, r2
	adcs r0, r1, r0, lsl #1
	rsblo r0, r1, r0
	adcs r2, r2, r2
	adcs r0, r1, r0, lsl #1
	rsblo r0, r1, r0
	adcs r2, r2, r2
	adcs r0, r1, r0, lsl #1
	rsblo r0, r1, r0
	adcs r2, r2, r2
	adcs r0, r1, r0, lsl #1
	rsblo r0, r1, r0
	adcs r2, r2, r2
	adcs r0, r1, r0, lsl #1
	rsblo r0, r1, r0
	adcs r2, r2, r2
	adcs r0, r1, r0, lsl #1
	rsblo r0, r1, r0
	adcs r2, r2, r2
	adcs r0, r1, r0, lsl #1
	rsblo r0, r1, r0
	adcs r2, r2, r2
	adcs r0, r1, r0, lsl #1
	rsblo r0, r1, r0
	adcs r2, r2, r2
	adcs r0, r1, r0, lsl #1
	rsblo r0, r1, r0
	adcs r2, r2, r2
	adcs r0, r1, r0, lsl #1
	rsblo r0, r1, r0
	adcs r2, r2, r2
	adcs r0, r1, r0, lsl #1
	rsblo r0, r1, r0
	adcs r2, r2, r2
	adcs r0, r1, r0, lsl #1
	rsblo r0, r1, r0
	adcs r2, r2, r2
	adcs r0, r1, r0, lsl #1
	rsblo r0, r1, r0
	adcs r2, r2, r2
	adcs r0, r1, r0, lsl #1
	rsblo r0, r1, r0
	adcs r2, r2, r2
	adcs r0, r1, r0, lsl #1
	rsblo r0, r1, r0
	adcs r2, r2, r2
	adcs r0, r1, r0, lsl #1
	rsblo r0, r1, r0
	adcs r2, r2, r2
	adcs r0, r1, r0, lsl #1
	rsblo r0, r1, r0
	adcs r2, r2, r2
	adcs r0, r1, r0, lsl #1
	rsblo r0, r1, r0
	adcs r2, r2, r2
	adcs r0, r1, r0, lsl #1
	rsblo r0, r1, r0
	adcs r2, r2, r2
	adcs r0, r1, r0, lsl #1
	rsblo r0, r1, r0
	adcs r2, r2, r2
	adcs r0, r1, r0, lsl #1
	rsblo r0, r1, r0
	adcs r2, r2, r2
	adcs r0, r1, r0, lsl #1
	rsblo r0, r1, r0
	adcs r2, r2, r2
	adcs r0, r1, r0, lsl #1
	rsblo r0, r1, r0
	adcs r2, r2, r2
	adcs r0, r1, r0, lsl #1
	rsblo r0, r1, r0
	adcs r2, r2, r2
	adcs r0, r1, r0, lsl #1
	rsblo r0, r1, r0
	adcs r2, r2, r2
	adcs r0, r1, r0, lsl #1
	rsblo r0, r1, r0
	adcs r2, r2, r2
	adcs r0, r1, r0, lsl #1
	rsblo r0, r1, r0
	adcs r2, r2, r2
	adcs r0, r1, r0, lsl #1
	rsblo r0, r1, r0
	adcs r2, r2, r2
	adcs r0, r1, r0, lsl #1
	rsblo r0, r1, r0
	adcs r2, r2, r2
	adcs r0, r1, r0, lsl #1
	rsblo r0, r1, r0
	adcs r2, r2, r2
	tst ip, #-0x80000000
	rsbne r2, r2, #0
	mov r0, r2
	bx lr
_0800124C:
	.2byte 0xEE00, 0xEE00
	rsb r1, r1, #0
	cmn r0, r1, lsl #8
	lsl r1, r1, #0xf
	lsllo r0, r0, #7
	blo _080012A4
	adds r0, r1, r0
	sublo r0, r0, r1
	adcs r0, r1, r0, lsl #1
	sublo r0, r0, r1
	adcs r0, r1, r0, lsl #1
	sublo r0, r0, r1
	adcs r0, r1, r0, lsl #1
	sublo r0, r0, r1
	adcs r0, r1, r0, lsl #1
	sublo r0, r0, r1
	adcs r0, r1, r0, lsl #1
	sublo r0, r0, r1
	adcs r0, r1, r0, lsl #1
	sublo r0, r0, r1
	adcs r0, r1, r0, lsl #1
	sublo r0, r0, r1
_080012A4:
	adcs r0, r1, r0, lsl #1
	sublo r0, r0, r1
	adcs r0, r1, r0, lsl #1
	sublo r0, r0, r1
	adcs r0, r1, r0, lsl #1
	sublo r0, r0, r1
	adcs r0, r1, r0, lsl #1
	sublo r0, r0, r1
	adcs r0, r1, r0, lsl #1
	sublo r0, r0, r1
	adcs r0, r1, r0, lsl #1
	sublo r0, r0, r1
	adcs r0, r1, r0, lsl #1
	sublo r0, r0, r1
	adcs r0, r1, r0, lsl #1
	sublo r0, r0, r1
	adc r0, r0, r0
	lsr r1, r0, #0x10
	bic r0, r0, r1, lsl #16
	str r1, [r2]
	bx lr

    .arm
FX_Mul: @ 0x080012F8
	smull r3, r2, r0, r1
	lsl r0, r2, #0x10
	orr r0, r0, r3, lsr #16
	bx lr

    .arm
sub_8001308: @ 0x08001308
	smull r3, r2, r0, r1
	lsl r0, r2, #0x18
	orr r0, r0, r3, lsr #8
	bx lr

    .arm
sub_8001318: @ 0x08001318
	push {r4, r5, r6}
	ldm r0, {r2, r3, r4}
	ldm r1, {r5, r6, ip}
	smull r1, r0, r2, r5
	smlal r1, r0, r3, r6
	smlal r1, r0, r4, ip
	lsl r0, r0, #0x10
	orr r0, r0, r1, lsr #16
	pop {r4, r5, r6}
	bx lr

    .arm
sub_8001340: @ 0x08001340
	push {r4, r5, r6}
	ldm r0, {r2, r3, r4}
	ldm r1, {r5, r6, ip}
	smull r1, r0, r2, r5
	smlal r1, r0, r3, r6
	smlal r1, r0, r4, ip
	lsl r0, r0, #0x18
	orr r0, r0, r1, lsr #8
	pop {r4, r5, r6}
	bx lr

    .arm
sub_8001368: @ 0x08001368
	stmdb sp!, {r4}
	ldr r4, [r0]
	ldr ip, [r3]
	cmp r4, ip
	bgt _080013D8
	ldr r4, [r2]
	ldr ip, [r1]
	cmp r4, ip
	bgt _080013D8
	ldr r4, [r0, #4]
	ldr ip, [r3, #4]
	cmp r4, ip
	bgt _080013D8
	ldr r4, [r2, #4]
	ldr ip, [r1, #4]
	cmp r4, ip
	bgt _080013D8
	ldr r4, [r0, #8]
	ldr ip, [r3, #8]
	cmp r4, ip
	bgt _080013D8
	ldr r4, [r2, #8]
	ldr ip, [r1, #8]
	cmp r4, ip
	bgt _080013D8
	mov r0, #1
	ldm sp!, {r4}
	bx lr
_080013D8:
	mov r0, #0
	ldm sp!, {r4}
	bx lr

    .arm
sub_80013E4: @ 0x080013E4
	ldr r3, [r0]
	ldr ip, [r1]
	cmp r3, ip
	blt _08001440
	ldr ip, [r2]
	cmp r3, ip
	bgt _08001440
	ldr r3, [r0, #4]
	ldr ip, [r1, #4]
	cmp r3, ip
	blt _08001440
	ldr ip, [r2, #4]
	cmp r3, ip
	bgt _08001440
	ldr r3, [r0, #8]
	ldr ip, [r1, #8]
	cmp r3, ip
	blt _08001440
	ldr ip, [r2, #8]
	cmp r3, ip
	bgt _08001440
	mov r0, #1
	bx lr
_08001440:
	mov r0, #0
	bx lr

    .arm
sub_8001448: @ 0x08001448
	push {sl, fp}
	ldr fp, [r2]
	ldr ip, [r3]
	ldr sl, [r0]
	cmp fp, sl
	bgt _08001468
	cmp sl, ip
	ble _0800147C
_08001468:
	ldr sl, [r1]
	cmp fp, sl
	bgt _080014B8
	cmp sl, ip
	bgt _080014B8
_0800147C:
	ldr fp, [r2, #4]
	ldr ip, [r3, #4]
	ldr sl, [r0, #4]
	cmp fp, sl
	bgt _08001498
	cmp sl, ip
	ble _080014AC
_08001498:
	ldr sl, [r1, #4]
	cmp fp, sl
	bgt _080014B8
	cmp sl, ip
	bgt _080014B8
_080014AC:
	mov r1, #1
	pop {sl, fp}
	bx lr
_080014B8:
	mov r0, #0
	pop {sl, fp}
	bx lr

    .arm
sub_80014C4: @ 0x080014C4
	push {r4, r5}
	ldm r2, {r4, r5}
	ldm r1, {r2, r3}
	mov ip, r0
	ldm ip, {r0, r1}
	cmp r0, r2
	blt _08001504
	cmp r0, r4
	bgt _08001504
	cmp r1, r3
	blt _08001504
	cmp r1, r5
	bgt _08001504
	mov r1, #1
	pop {r4, r5}
	bx lr
_08001504:
	mov r0, #0
	pop {r4, r5}
	bx lr

    .arm
sub_8001510: @ 0x08001510
	push {r4, r5}
	ldm r1, {r1, r3, ip}
	ldm r0, {r0, r4, r5}
	add r1, r1, r0
	add r3, r3, r4
	add ip, ip, r5
	stm r2, {r1, r3, ip}
	pop {r4, r5}
	bx lr

    .arm
sub_8001534: @ 0x08001534
	push {r4, r5}
	ldm r1, {r1, r3, ip}
	ldm r0, {r0, r4, r5}
	sub r0, r0, r1
	sub r4, r4, r3
	sub r5, r5, ip
	stm r2, {r0, r4, r5}
	pop {r4, r5}
	bx lr

    .arm
sub_8001558: @ 0x08001558
	push {r4, r5}
	ldm r0, {r2, r3, r4}
	smull ip, r5, r2, r1
	lsl r2, r5, #0x10
	orr r2, r2, ip, lsr #16
	smull ip, r5, r3, r1
	lsl r3, r5, #0x10
	orr r3, r3, ip, lsr #16
	smull ip, r5, r4, r1
	lsl r4, r5, #0x10
	orr r4, r4, ip, lsr #16
	stm r0, {r2, r3, r4}
	pop {r4, r5}
	bx lr

    .arm
sub_8001590: @ 0x08001590
	push {r4, r5}
	ldm r0, {r2, r3, r4}
	smull ip, r5, r2, r1
	lsl r2, r5, #0x18
	orr r2, r2, ip, lsr #8
	smull ip, r5, r3, r1
	lsl r3, r5, #0x18
	orr r3, r3, ip, lsr #8
	smull ip, r5, r4, r1
	lsl r4, r5, #0x18
	orr r4, r4, ip, lsr #8
	stm r0, {r2, r3, r4}
	pop {r4, r5}
	bx lr

    .arm
sub_80015C8: @ 0x080015C8
	push {r4, r5}
	ldm r0, {r0, r3, r4}
	smull ip, r5, r0, r1
	lsl r0, r5, #0x10
	orr r0, r0, ip, lsr #16
	smull ip, r5, r3, r1
	lsl r3, r5, #0x10
	orr r3, r3, ip, lsr #16
	smull ip, r5, r4, r1
	lsl r4, r5, #0x10
	orr r4, r4, ip, lsr #16
	stm r2, {r0, r3, r4}
	pop {r4, r5}
	bx lr

    .arm
    .global sub_8001600
sub_8001600: @ 0x08001600
	push {r4, r5, lr}
	mov ip, #0x5a0000
	cmp r1, #0
	beq _08001650
	movs r4, r0
	rsbmi r0, r0, #0
	movs r5, r1
	rsbmi r1, r1, #0
	bl sub_8000ED8
	mov r2, r0
	ldr r0, _080017EC
	mov r1, #0x400
	bl sub_8001824
	lsl ip, r0, #0x10
	ldr r2, _080017F0
	smull r1, r0, r2, ip
	lsl ip, r0, #0x10
	orr ip, ip, r1, lsr #16
	mov r0, r4
	mov r1, r5
_08001650:
	cmp r0, #0
	ble _08001668
	cmp r1, #0
	bge _08001668
	rsb ip, ip, #0xb40000
	b _08001690
_08001668:
	cmp r0, #0
	bgt _08001680
	cmp r1, #0
	bgt _08001680
	add ip, ip, #0xb40000
	b _08001690
_08001680:
	cmp r0, #0
	bge _08001690
	cmp r1, #0
	rsbgt ip, ip, #0x1680000
_08001690:
	mov r0, ip
	pop {r4, r5, lr}
	bx lr

    .arm
    .global sub_800169C
sub_800169C: @ 0x0800169C
	push {r4, r5, lr}
	mov ip, #0
	cmp r1, #0
	beq _080016F0
	movs r5, r0
	rsbmi r0, r0, #0
	movs r4, r1
	rsbmi r1, r1, #0
	bl sub_8000ED8
	mov r2, r0
	ldr r0, _080017F4
	mov r1, #0x400
	bl sub_8001824
	lsl ip, r0, #0x10
	ldr r2, _080017F0
	smull r1, r0, r2, ip
	lsl ip, r0, #0x10
	orr ip, ip, r1, lsr #16
	rsb ip, ip, #0x5a0000
	mov r0, r4
	mov r1, r5
_080016F0:
	cmp r0, #0
	ble _08001708
	cmp r1, #0
	bge _08001708
	rsb ip, ip, #0xb40000
	b _08001730
_08001708:
	cmp r0, #0
	bgt _08001720
	cmp r1, #0
	bgt _08001720
	add ip, ip, #0xb40000
	b _08001730
_08001720:
	cmp r0, #0
	bge _08001730
	cmp r1, #0
	rsbgt ip, ip, #0x1680000
_08001730:
	mov r0, ip
	pop {r4, r5, lr}
	bx lr

    .arm
sub_800173C: @ 0x0800173C
	mov r2, r0
	mov ip, #0x40000
	smull r2, r3, ip, r2
	ldr r2, _080017F8
	ldr ip, [r2, r3, lsl #2]
	mov r2, #0x40000
	smull r0, r3, r2, r0
	ldr r0, _080017FC
	ldr r2, [r0, r3, lsl #2]
	mov r0, ip
	mov ip, r1
	mov r1, #0
	stm ip, {r0, r1, r2}
	bx lr

    .arm
sub_8001774: @ 0x08001774
	push {r4, fp}
	ldr r4, [r0]
	smull ip, fp, r1, r4
	ldr r4, [r0, #8]
	smlal ip, fp, r2, r4
	lsl r0, fp, #0x10
	orr r0, r0, ip, lsr #16
	add r0, r0, r3
	pop {r4, fp}
	bx lr

    .arm
sub_800179C: @ 0x0800179C
	push {r4, r5, r6, r7, r8}
	ldm r1, {r4, r5, r6}
	ldm r2, {r7, r8, ip}
	add r1, r4, r7
	sub r2, r4, r7
	sub r3, r5, r3
	add r4, r5, r8
	add r5, r6, ip
	sub r6, r6, ip
	stm r0!, {r2, r3, r6}
	stm r0!, {r1, r3, r6}
	stm r0!, {r1, r3, r5}
	stm r0!, {r2, r3, r5}
	stm r0!, {r2, r4, r6}
	stm r0!, {r1, r4, r6}
	stm r0!, {r1, r4, r5}
	stm r0!, {r2, r4, r5}
	pop {r4, r5, r6, r7, r8}
	bx lr
	.align 2, 0
_080017E8: .4byte 0x03002A6C
_080017EC: .4byte 0x086A5DD8
_080017F0: .4byte 0x00000B42
_080017F4: .4byte 0x086A5DD8
_080017F8: .4byte 0x086A4758
_080017FC: .4byte 0x086A30D8

    .arm
    .global UnsafeDmaFill32
UnsafeDmaFill32: @ 0x08001800
	stmdb sp!, {r0}
	mov r0, #0x4000000
	add r0, r0, #0xd4
	str sp, [r0]
	str r1, [r0, #4]
	orr r2, r2, #0x85000000
	str r2, [r0, #8]
	add sp, sp, #4
	bx lr

    .arm
sub_8001824: @ 0x08001824
	push {r4, fp}
	mov fp, r2
	mov r2, r1
	mov r1, #0
_08001834:
	sub ip, r2, r1
	lsrs ip, ip, #1
	beq _0800185C
	add ip, ip, r1
	ldr r4, [r0, ip, lsl #2]
	cmp fp, r4
	beq _08001888
	movle r2, ip
	movgt r1, ip
	b _08001834
_0800185C:
	ldr r3, [r0, r1, lsl #2]
	ldr r4, [r0, r2, lsl #2]
	subs r3, r3, fp
	rsbmi r3, r3, #0
	subs r4, r4, fp
	rsbmi r4, r4, #0
	cmp r3, r4
	movlo r0, r1
	movhs r0, r2
	pop {r4, fp}
	bx lr
_08001888:
	mov r0, ip
	pop {r4, fp}
	bx lr

    .arm
SetOAMMatrices: @ 0x08001894
	cmp r1, #0
	bxeq lr
	push {r4, r5}
	mov ip, #0x7000000
	add ip, ip, #6
_080018A8:
	ldm r0!, {r2, r3, r4, r5}
	strh r2, [ip], #8
	strh r3, [ip], #8
	strh r4, [ip], #8
	strh r5, [ip], #8
	subs r1, r1, #1
	bne _080018A8
	pop {r4, r5}
	bx lr

    .arm
sub_80018CC: @ 0x080018CC
	push {r4, r5, r6, r7, r8, sb, sl, fp}
	ldrh r3, [r0, #4]
	ldrh r4, [r0, #6]
	mov ip, r0
	ldr r0, [r0, #0xc]
	movs r0, r0
	rsbmi r0, r0, #0
	add ip, ip, #0x10
	ldm ip, {r5, r6, r7}
	sub r4, r4, r3
	mov ip, #0x5000000
	add r3, ip, r3, lsl #1
_080018FC:
	ldrh ip, [r3], #2
	mov r8, ip
	and r8, r8, #0x1f
	lsl r8, r8, #0x10
	lsr sb, ip, #5
	and sb, sb, #0x1f
	lsl sb, sb, #0x10
	lsr sl, ip, #0xa
	lsl sl, sl, #0x10
	stm r1!, {r8, sb, sl}
	sub r8, r5, r8
	sub sb, r6, sb
	sub sl, r7, sl
	smull ip, fp, r8, r0
	lsl r8, fp, #0x10
	orr r8, r8, ip, lsr #16
	smull ip, fp, sb, r0
	lsl sb, fp, #0x10
	orr sb, sb, ip, lsr #16
	smull ip, fp, sl, r0
	lsl sl, fp, #0x10
	orr sl, sl, ip, lsr #16
	stm r2!, {r8, sb, sl}
	subs r4, r4, #1
	bne _080018FC
	pop {r4, r5, r6, r7, r8, sb, sl, fp}
	bx lr

    .arm
sub_8001968: @ 0x08001968
	push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov lr, r3
	ldrh r3, [r0, #4]
	ldrh r4, [r0, #6]
	ldr r0, [r0, #0xc]
	movs r0, r0
	rsbmi r0, r0, #0
	sub r4, r4, r3
	mov ip, #0x5000000
	add r3, ip, r3, lsl #1
_08001990:
	ldrh ip, [r3], #2
	mov r8, ip
	and r8, r8, #0x1f
	lsl r8, r8, #0x10
	lsr sb, ip, #5
	and sb, sb, #0x1f
	lsl sb, sb, #0x10
	lsr sl, ip, #0xa
	lsl sl, sl, #0x10
	stm r1!, {r8, sb, sl}
	ldm lr!, {r5, r6, r7}
	sub r8, r5, r8
	sub sb, r6, sb
	sub sl, r7, sl
	smull ip, fp, r8, r0
	lsl r8, fp, #0x10
	orr r8, r8, ip, lsr #16
	smull ip, fp, sb, r0
	lsl sb, fp, #0x10
	orr sb, sb, ip, lsr #16
	smull ip, fp, sl, r0
	lsl sl, fp, #0x10
	orr sl, sl, ip, lsr #16
	stm r2!, {r8, sb, sl}
	subs r4, r4, #1
	bne _08001990
	pop {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bx lr

    .arm
sub_8001A00: @ 0x08001A00
	push {r4, r5, r6, r7, r8, sb, sl, fp}
	ldrh r3, [r0, #4]
	ldrh r4, [r0, #6]
	ldrb r0, [r0, #1]
	lsl r0, r0, #0x10
	sub r4, r4, r3
	mov ip, #0x5000000
	add r3, ip, r3, lsl #1
_08001A20:
	ldm r2!, {r5, r6, r7}
	smull ip, fp, r5, r0
	lsl r5, fp, #0x10
	orr r5, r5, ip, lsr #16
	smull ip, fp, r6, r0
	lsl r6, fp, #0x10
	orr r6, r6, ip, lsr #16
	smull ip, fp, r7, r0
	lsl r7, fp, #0x10
	orr r7, r7, ip, lsr #16
	ldm r1!, {r8, sb, sl}
	add r8, r8, r5
	add sb, sb, r6
	add sl, sl, r7
	lsr r8, r8, #0x10
	lsr sb, sb, #0x10
	orr r8, r8, sb, lsl #5
	lsr sl, sl, #0x10
	orr r8, r8, sl, lsl #10
	strh r8, [r3], #2
	subs r4, r4, #1
	bne _08001A20
	pop {r4, r5, r6, r7, r8, sb, sl, fp}
	bx lr

    .arm
sub_8001A80: @ 0x08001A80
	push {r4, r5, r6, r8, sb, sl, fp}
	mov r4, #0x4c00
	orr r4, r4, #0x8b
	mov r5, #0x9600
	orr r5, r5, #0x46
	mov r6, #0x1d00
	orr r6, r6, #0x2f
	lsl r2, r2, #4
	lsl r3, r3, #4
	add r3, r3, #0x10
	sub r3, r3, r2
	mov ip, #0x5000000
	add r2, ip, r2, lsl #1
_08001AB4:
	ldrh ip, [r2], #2
	mov r8, ip
	and r8, r8, #0x1f
	lsl r8, r8, #0x10
	lsr sb, ip, #5
	and sb, sb, #0x1f
	lsl sb, sb, #0x10
	lsr sl, ip, #0xa
	lsl sl, sl, #0x10
	smull ip, fp, r8, r4
	smlal ip, fp, sb, r5
	smlal ip, fp, sl, r6
	lsl r8, fp, #0x10
	orr r8, r8, ip, lsr #16
	tst r0, #2
	moveq sb, #0
	movne sb, r8
	tst r0, #4
	moveq sl, #0
	movne sl, r8
	tst r0, #1
	moveq r8, #0
	stm r1!, {r8, sb, sl}
	subs r3, r3, #1
	bne _08001AB4
	pop {r4, r5, r6, r8, sb, sl, fp}
	bx lr

    .arm
sub_8001B20: @ 0x08001B20
	push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov r1, #0x3f
	mov r4, #0
	mov r8, r4
	mov r5, #0xf0
	mov r3, #0x50
	mov r7, #0x78
_08001B3C:
	mov r2, #0
	mov lr, #4
_08001B44:
	mov r6, r4
	mov ip, #0x40000
	smull r6, fp, ip, r6
	ldr r6, _08001C5C
	ldr ip, [r6, fp, lsl #2]
	smull sl, fp, ip, r2
	lsl ip, fp, #0x10
	orr ip, ip, sl, lsr #16
	adds sl, r3, ip, asr #16
	bmi _08001BAC
	cmp sl, #0x9f
	bgt _08001BAC
	mov r6, r4
	mov fp, #0x40000
	smull r6, ip, fp, r6
	ldr r6, _08001C60
	ldr fp, [r6, ip, lsl #2]
	smull sb, r6, fp, r2
	lsl fp, r6, #0x10
	orr fp, fp, sb, lsr #16
	adds sb, r7, fp, asr #16
	bmi _08001BAC
	cmp sb, #0xef
	bgt _08001BAC
	mla ip, sl, r5, sb
	strb r1, [r0, ip]
_08001BAC:
	add r2, r2, #0x840
	add r4, r4, #0x4000
	cmp r4, #0x1680000
	blt _08001B44
	mov r4, #0
	subs lr, lr, #1
	bne _08001B44
	add r8, r8, #0x5a000
	mov r4, r8
	subs r1, r1, #1
	bge _08001B3C
	pop {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bx lr

    .arm
sub_8001BE0: @ 0x08001BE0
	push {r4, r5, r6, r7, r8, sb, sl, fp}
	mov r0, #0x5000000
	mov fp, #7
	ldr ip, [r0, #0xc]!
	add r0, r0, #4
_08001BF4:
	ldm r0, {r1, r2, r3, r4}
	lsr r5, ip, #0x10
	orr r5, r5, r1, lsl #16
	lsr r6, r1, #0x10
	orr r6, r6, r2, lsl #16
	lsr r7, r2, #0x10
	orr r7, r7, r3, lsl #16
	lsr r8, r3, #0x10
	orr r8, r8, r4, lsl #16
	mov ip, r4
	stm r0!, {r5, r6, r7, r8}
	subs fp, fp, #1
	bne _08001BF4
	mov r0, #0x5000000
	ldm r0, {r1, r2, r3, r4}
	lsr r5, ip, #0x10
	orr r5, r5, r1, lsl #16
	lsr r6, r1, #0x10
	orr r6, r6, r2, lsl #16
	lsr r7, r2, #0x10
	orr r7, r7, r3, lsl #16
	lsr r8, r3, #0x10
	orr r8, r8, r4, lsl #16
	stm r0, {r5, r6, r7, r8}
	pop {r4, r5, r6, r7, r8, sb, sl, fp}
	bx lr
	.align 2, 0
_08001C5C: .4byte 0x086A30D8
_08001C60: .4byte 0x086A4758

    .arm
RenderSpriteFrame4: @ 0x08001C64
	ldr r3, _08002A64
	ldrb r1, [r3]
	mov r4, #0xc
	mul r2, r1, r4
	add r1, r1, #1
	strb r1, [r3]
	ldr r4, _08002A68
	add r4, r4, r2
	ldr r1, [r0]
	ldr r5, _08002A6C
	ldr r2, [r5]
	ldrh r3, [r0, #4]
	stm r4, {r1, r2, r3}
	add r2, r2, r3, lsl #2
	str r2, [r5]
	ldr r1, [r0, #8]
	ldrh r2, [r0, #6]
	ldr fp, _08002A70
	ldr ip, _08002A74
	push {fp, ip}
	ldr r0, [fp]
	ldr ip, [ip]
	ldr fp, _08002A78
	ldr fp, [fp]
	mov r3, #0x200
	sub r3, r3, #1
	orr sb, sb, sl, lsl #16
_08001CD0:
	ldrsh r4, [r1], #2
	add r7, r7, r4
	and r5, r7, #0xff
	ldrsh r4, [r1], #2
	add r6, r6, r4
	and r4, r6, r3
	orr r5, r5, r4, lsl #16
	ldrh r4, [r1], #2
	lsr sl, r4, #8
	and r4, r4, #0xff
	orr r4, r5, r4, lsl #8
	orr r4, r4, sb
	orr r4, r4, sl, lsl #24
	str r4, [r0], #4
	ldrh r4, [r1], #2
	orr r4, r4, r8
	orr r4, r4, ip
	strh r4, [r0], #4
	ldrh r4, [r1], #4
	add ip, ip, r4
	cmp r0, fp
	beq _08001D40
	subs r2, r2, #1
	bne _08001CD0
_08001D30:
	pop {r1, r2}
	str r0, [r1]
	str ip, [r2]
	bx lr
_08001D40:
	sub r0, r0, #8
	b _08001D30

    .arm
RenderSpriteFrame3: @ 0x08001D48
	ldr r3, _08002A7C
	ldrb r1, [r3]
	mov r4, #0xc
	mul r2, r1, r4
	add r1, r1, #1
	strb r1, [r3]
	ldr r4, _08002A80
	add r4, r4, r2
	ldr r1, [r0]
	ldr r5, _08002A84
	ldr r2, [r5]
	ldrh r3, [r0, #4]
	stm r4, {r1, r2, r3}
	add r2, r2, r3, lsl #2
	str r2, [r5]
	ldr r1, [r0, #8]
	ldrh r2, [r0, #6]
	ldr fp, _08002A88
	ldr ip, _08002A8C
	push {fp, ip}
	ldr r0, [fp]
	ldr ip, [ip]
	ldr fp, _08002A90
	ldr fp, [fp]
	mov r3, #0x200
	sub r3, r3, #1
	orr sb, sb, sl, lsl #16
_08001DB4:
	ldrsh r4, [r1], #2
	add r7, r7, r4
	and r5, r7, #0xff
	ldrsh r4, [r1], #2
	add r6, r6, r4
	and r4, r6, r3
	orr r5, r5, r4, lsl #16
	ldrh r4, [r1], #4
	lsr sl, r4, #8
	and r4, r4, #0xff
	orr r4, r5, r4, lsl #8
	orr r4, r4, sb
	orr r4, r4, sl, lsl #24
	str r4, [r0], #4
	orr r4, r8, ip
	strh r4, [r0], #4
	ldrh r4, [r1], #4
	add ip, ip, r4
	cmp r0, fp
	beq _08001E1C
	subs r2, r2, #1
	bne _08001DB4
_08001E0C:
	pop {r1, r2}
	str r0, [r1]
	str ip, [r2]
	bx lr
_08001E1C:
	sub r0, r0, #8
	b _08001E0C

    .arm
RenderSpriteFrame2: @ 0x08001E24
	stmdb sp!, {lr}
	ldr r3, _08002A94
	ldrb r1, [r3]
	mov r4, #0xc
	mul r2, r1, r4
	add r1, r1, #1
	strb r1, [r3]
	ldr r4, _08002A98
	add r4, r4, r2
	ldr r1, [r0]
	ldr r5, _08002A9C
	ldr r2, [r5]
	ldrh r3, [r0, #4]
	stm r4, {r1, r2, r3}
	add r2, r2, r3, lsl #2
	str r2, [r5]
	ldr r1, [r0, #8]
	ldrh r2, [r0, #6]
	ldr fp, _08002AA0
	ldr ip, _08002AA4
	push {fp, ip}
	ldr r0, [fp]
	ldr ip, [ip]
	ldr fp, _08002AA8
	ldr fp, [fp]
	mov r3, #0x200
	sub r3, r3, #1
	mov lr, #0
_08001E94:
	ldrb sl, [r1, #0xa]
	ldrsh r4, [r1], #2
	add r7, r7, r4
	and r5, r7, #0xff
	ldrsh r4, [r1], #2
	rsb r4, r4, #0
	add r4, r4, lr
	sub r4, r4, sl
	mov lr, sl
	add r6, r6, r4
	and r4, r6, r3
	orr r5, r5, r4, lsl #16
	ldrh r4, [r1], #2
	lsr sl, r4, #8
	and r4, r4, #0xff
	orr r4, r5, r4, lsl #8
	orr r4, r4, sb
	orr r4, r4, sl, lsl #24
	orr r4, r4, #0x10000000
	str r4, [r0], #4
	ldrh r4, [r1], #2
	orr r4, r4, r8
	orr r4, r4, ip
	strh r4, [r0], #4
	ldrh r4, [r1], #4
	add ip, ip, r4
	cmp r0, fp
	beq _08001F20
	subs r2, r2, #1
	bne _08001E94
_08001F0C:
	pop {r1, r2}
	str r0, [r1]
	str ip, [r2]
	ldm sp!, {lr}
	bx lr
_08001F20:
	sub r0, r0, #8
	b _08001F0C

    .arm
sub_8001F28: @ 0x08001F28
	cmp r0, #0
	bxeq lr
	push {r4, r5, r6, r7, r8, sb, sl, fp}
	mov sl, #0x4000000
	add sl, sl, #0xd4
	subs r0, r0, #1
	beq _08001FAC
_08001F44:
	mov ip, r0
	add r3, r2, #0xc
	ldr r4, [r2]
	add fp, r2, #4
_08001F54:
	ldr r5, [r3], #0xc
	cmp r4, r5
	subhs fp, r3, #8
	movhs r4, r5
	subs ip, ip, #1
	bne _08001F54
	ldm fp, {r7, r8}
	cmp r7, r8
	bhs _08001F90
	sub sb, r8, r7
	mov r8, r1
	add r1, r1, sb
	lsr sb, sb, #2
	orr sb, sb, #0x84000000
	stm sl, {r7, r8, sb}
_08001F90:
	sub fp, fp, #4
	cmp fp, r2
	ldmne r2!, {r7, r8, sb}
	stmne fp, {r7, r8, sb}
	addeq r2, r2, #0xc
	subs r0, r0, #1
	bne _08001F44
_08001FAC:
	add r2, r2, #4
	ldm r2, {r7, r8}
	sub sb, r8, r7
	mov r8, r1
	add r1, r1, sb
	lsr sb, sb, #2
	orr sb, sb, #0x84000000
	stm sl, {r7, r8, sb}
	pop {r4, r5, r6, r7, r8, sb, sl, fp}
	bx lr

    .arm
sub_8001FD4: @ 0x08001FD4
	cmp r1, #0
	bxeq lr
	stmdb sp!, {fp}
	mov fp, #0x4000000
	add fp, fp, #0xd4
_08001FE8:
	ldm r0!, {r2, r3}
	mov ip, #8
	orr ip, ip, #0x84000000
	stm fp, {r2, r3, ip}
	subs r1, r1, #1
	bne _08001FE8
	ldm sp!, {fp}
	bx lr

    .arm
sub_8002008: @ 0x08002008
	cmp r1, #0
	bxeq lr
	push {r4, r5, fp}
	mov fp, #0
_08002018:
	ldrh r4, [r0]
	ands r5, r4, #0xff
	bne _08002070
	lsr r4, r4, #8
	strb r4, [r0]
	ldrh r4, [r0, #2]
	lsr r5, r4, #8
	and r4, r4, #0xff
	add r4, r4, #1
	cmp r4, r5
	moveq r4, #0
	strb r4, [r0, #2]
	add r0, r0, #4
	ldm r0!, {r5, ip}
	add r5, r5, r4, lsl #5
	stm r2!, {r5, ip}
	add fp, fp, #1
	subs r1, r1, #1
	bne _08002018
	strb fp, [r3]
	pop {r4, r5, fp}
	bx lr
_08002070:
	sub r5, r5, #1
	strb r5, [r0], #0xc
	subs r1, r1, #1
	bne _08002018
	strb fp, [r3]
	pop {r4, r5, fp}
	bx lr

	.arm
sub_800208C: @ 0x0800208C
	push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov ip, r0
	lsr r4, r3, #4
	lsl r4, r4, #1
	and r5, r3, #0xf
	lsl r5, r5, #1
	ldr r3, [r2, r5, lsl #1]
	asr r3, r3, #8
	ldr r2, [r2, r4, lsl #1]
	asr r2, r2, #8
_080020B4:
	sub fp, r1, #1
	add fp, fp, fp, lsl #1
	add fp, ip, fp, lsl #1
	ldrsh r6, [fp, r4]
	lsl r6, r6, #8
	ldrsh r7, [fp, r5]
	lsl r7, r7, #8
	mov r0, #0
	cmp r7, r3
	movge lr, #1
	movlt lr, #0
_080020E0:
	ldrsh r8, [ip, r4]
	lsl r8, r8, #8
	ldrsh sb, [ip, r5]
	lsl sb, sb, #8
	add ip, ip, #6
	cmp sb, r3
	movge sl, #1
	movlt sl, #0
	cmp sl, lr
	beq _0800232C
	mov lr, sl
	cmp r6, r2
	movge sl, #1
	movlt sl, #0
	cmp r8, r2
	movge fp, #1
	movlt fp, #0
	cmp sl, fp
	bne _08002148
	cmp sl, #0
	beq _0800232C
	eor r0, r0, #1
	tst r0, #-0x80000000
	bne _0800233C
	orr r0, r0, #0x80000000
	b _0800232C
_08002148:
	push {r1, ip}
	sub sl, sb, r3
	sub fp, r6, r8
	smull ip, r1, sl, fp
	lsl sl, r1, #0x18
	orr sl, sl, ip, lsr #8
	sub fp, r7, sb
	eors r1, sl, fp, asr #32
	rsbhs fp, fp, #0
	movs sl, sl
	rsbmi sl, sl, #0
	lsl ip, sl, #8
	lsr sl, sl, #0x18
	rsb fp, fp, #0
	adds ip, ip, ip
	adcs sl, fp, sl, lsl #1
	rsblo sl, fp, sl
	adcs ip, ip, ip
	adcs sl, fp, sl, lsl #1
	rsblo sl, fp, sl
	adcs ip, ip, ip
	adcs sl, fp, sl, lsl #1
	rsblo sl, fp, sl
	adcs ip, ip, ip
	adcs sl, fp, sl, lsl #1
	rsblo sl, fp, sl
	adcs ip, ip, ip
	adcs sl, fp, sl, lsl #1
	rsblo sl, fp, sl
	adcs ip, ip, ip
	adcs sl, fp, sl, lsl #1
	rsblo sl, fp, sl
	adcs ip, ip, ip
	adcs sl, fp, sl, lsl #1
	rsblo sl, fp, sl
	adcs ip, ip, ip
	adcs sl, fp, sl, lsl #1
	rsblo sl, fp, sl
	adcs ip, ip, ip
	adcs sl, fp, sl, lsl #1
	rsblo sl, fp, sl
	adcs ip, ip, ip
	adcs sl, fp, sl, lsl #1
	rsblo sl, fp, sl
	adcs ip, ip, ip
	adcs sl, fp, sl, lsl #1
	rsblo sl, fp, sl
	adcs ip, ip, ip
	adcs sl, fp, sl, lsl #1
	rsblo sl, fp, sl
	adcs ip, ip, ip
	adcs sl, fp, sl, lsl #1
	rsblo sl, fp, sl
	adcs ip, ip, ip
	adcs sl, fp, sl, lsl #1
	rsblo sl, fp, sl
	adcs ip, ip, ip
	adcs sl, fp, sl, lsl #1
	rsblo sl, fp, sl
	adcs ip, ip, ip
	adcs sl, fp, sl, lsl #1
	rsblo sl, fp, sl
	adcs ip, ip, ip
	adcs sl, fp, sl, lsl #1
	rsblo sl, fp, sl
	adcs ip, ip, ip
	adcs sl, fp, sl, lsl #1
	rsblo sl, fp, sl
	adcs ip, ip, ip
	adcs sl, fp, sl, lsl #1
	rsblo sl, fp, sl
	adcs ip, ip, ip
	adcs sl, fp, sl, lsl #1
	rsblo sl, fp, sl
	adcs ip, ip, ip
	adcs sl, fp, sl, lsl #1
	rsblo sl, fp, sl
	adcs ip, ip, ip
	adcs sl, fp, sl, lsl #1
	rsblo sl, fp, sl
	adcs ip, ip, ip
	adcs sl, fp, sl, lsl #1
	rsblo sl, fp, sl
	adcs ip, ip, ip
	adcs sl, fp, sl, lsl #1
	rsblo sl, fp, sl
	adcs ip, ip, ip
	adcs sl, fp, sl, lsl #1
	rsblo sl, fp, sl
	adcs ip, ip, ip
	adcs sl, fp, sl, lsl #1
	rsblo sl, fp, sl
	adcs ip, ip, ip
	adcs sl, fp, sl, lsl #1
	rsblo sl, fp, sl
	adcs ip, ip, ip
	adcs sl, fp, sl, lsl #1
	rsblo sl, fp, sl
	adcs ip, ip, ip
	adcs sl, fp, sl, lsl #1
	rsblo sl, fp, sl
	adcs ip, ip, ip
	adcs sl, fp, sl, lsl #1
	rsblo sl, fp, sl
	adcs ip, ip, ip
	adcs sl, fp, sl, lsl #1
	rsblo sl, fp, sl
	adcs ip, ip, ip
	adcs sl, fp, sl, lsl #1
	rsblo sl, fp, sl
	adcs ip, ip, ip
	tst r1, #-0x80000000
	rsbne ip, ip, #0
	sub sl, r8, ip
	cmp sl, r2
	pop {r1, ip}
	blt _0800232C
	eor r0, r0, #1
	tst r0, #-0x80000000
	bne _0800233C
	orr r0, r0, #0x80000000
_0800232C:
	mov r6, r8
	mov r7, sb
	subs r1, r1, #1
	bne _080020E0
_0800233C:
	and r0, r0, #1
	pop {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bx lr

	.arm
sub_8002348: @ 0x08002348
	push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	add ip, r0, #4
	ldm ip, {r4, r5, r6}
	ldm r1, {r7, r8, sb}
	smull fp, sl, r4, r7
	smlal fp, sl, r5, r8
	smlal fp, sl, r6, sb
	lsl sl, sl, #0x10
	orr sl, sl, fp, lsr #16
	rsb sl, sl, #0
	ldr fp, [r0, #0x10]
	sub sl, sl, fp
	ldm r2, {r7, r8, sb}
	smull ip, fp, r4, r7
	smlal ip, fp, r5, r8
	smlal ip, fp, r6, sb
	lsl fp, fp, #0x10
	orr fp, fp, ip, lsr #16
	eors ip, sl, fp, asr #32
	rsbhs fp, fp, #0
	movs sl, sl
	rsbmi sl, sl, #0
	lsl lr, sl, #0x10
	lsr sl, sl, #0x10
	rsb fp, fp, #0
	adds lr, lr, lr
	adcs sl, fp, sl, lsl #1
	rsblo sl, fp, sl
	adcs lr, lr, lr
	adcs sl, fp, sl, lsl #1
	rsblo sl, fp, sl
	adcs lr, lr, lr
	adcs sl, fp, sl, lsl #1
	rsblo sl, fp, sl
	adcs lr, lr, lr
	adcs sl, fp, sl, lsl #1
	rsblo sl, fp, sl
	adcs lr, lr, lr
	adcs sl, fp, sl, lsl #1
	rsblo sl, fp, sl
	adcs lr, lr, lr
	adcs sl, fp, sl, lsl #1
	rsblo sl, fp, sl
	adcs lr, lr, lr
	adcs sl, fp, sl, lsl #1
	rsblo sl, fp, sl
	adcs lr, lr, lr
	adcs sl, fp, sl, lsl #1
	rsblo sl, fp, sl
	adcs lr, lr, lr
	adcs sl, fp, sl, lsl #1
	rsblo sl, fp, sl
	adcs lr, lr, lr
	adcs sl, fp, sl, lsl #1
	rsblo sl, fp, sl
	adcs lr, lr, lr
	adcs sl, fp, sl, lsl #1
	rsblo sl, fp, sl
	adcs lr, lr, lr
	adcs sl, fp, sl, lsl #1
	rsblo sl, fp, sl
	adcs lr, lr, lr
	adcs sl, fp, sl, lsl #1
	rsblo sl, fp, sl
	adcs lr, lr, lr
	adcs sl, fp, sl, lsl #1
	rsblo sl, fp, sl
	adcs lr, lr, lr
	adcs sl, fp, sl, lsl #1
	rsblo sl, fp, sl
	adcs lr, lr, lr
	adcs sl, fp, sl, lsl #1
	rsblo sl, fp, sl
	adcs lr, lr, lr
	adcs sl, fp, sl, lsl #1
	rsblo sl, fp, sl
	adcs lr, lr, lr
	adcs sl, fp, sl, lsl #1
	rsblo sl, fp, sl
	adcs lr, lr, lr
	adcs sl, fp, sl, lsl #1
	rsblo sl, fp, sl
	adcs lr, lr, lr
	adcs sl, fp, sl, lsl #1
	rsblo sl, fp, sl
	adcs lr, lr, lr
	adcs sl, fp, sl, lsl #1
	rsblo sl, fp, sl
	adcs lr, lr, lr
	adcs sl, fp, sl, lsl #1
	rsblo sl, fp, sl
	adcs lr, lr, lr
	adcs sl, fp, sl, lsl #1
	rsblo sl, fp, sl
	adcs lr, lr, lr
	adcs sl, fp, sl, lsl #1
	rsblo sl, fp, sl
	adcs lr, lr, lr
	adcs sl, fp, sl, lsl #1
	rsblo sl, fp, sl
	adcs lr, lr, lr
	adcs sl, fp, sl, lsl #1
	rsblo sl, fp, sl
	adcs lr, lr, lr
	adcs sl, fp, sl, lsl #1
	rsblo sl, fp, sl
	adcs lr, lr, lr
	adcs sl, fp, sl, lsl #1
	rsblo sl, fp, sl
	adcs lr, lr, lr
	adcs sl, fp, sl, lsl #1
	rsblo sl, fp, sl
	adcs lr, lr, lr
	adcs sl, fp, sl, lsl #1
	rsblo sl, fp, sl
	adcs lr, lr, lr
	adcs sl, fp, sl, lsl #1
	rsblo sl, fp, sl
	adcs lr, lr, lr
	adcs sl, fp, sl, lsl #1
	rsblo sl, fp, sl
	adcs lr, lr, lr
	tst ip, #-0x80000000
	rsbne lr, lr, #0
	smull fp, sl, r7, lr
	lsl r7, sl, #0x10
	orr r7, r7, fp, lsr #16
	smull fp, sl, r8, lr
	lsl r8, sl, #0x10
	orr r8, r8, fp, lsr #16
	smull fp, sl, sb, lr
	lsl sb, sl, #0x10
	orr sb, sb, fp, lsr #16
	ldm r1, {sl, fp, lr}
	add r7, r7, sl
	add r8, r8, fp
	add sb, sb, lr
	str r8, [r3]
	movs r4, r4
	rsbmi r4, r4, #0
	movs r5, r5
	rsbmi r5, r5, #0
	movs r6, r6
	rsbmi r6, r6, #0
	cmp r4, #0
	bne _08002598
	cmp r5, #0
	beq _080025E8
_08002598:
	cmp r5, #0
	bne _080025A8
	cmp r6, #0
	beq _08002620
_080025A8:
	cmp r4, #0
	bne _080025B8
	cmp r6, #0
	beq _08002604
_080025B8:
	cmp r6, r4
	blo _080025C8
	cmp r6, r5
	bhs _080025E8
_080025C8:
	cmp r4, r5
	blo _080025D8
	cmp r4, r6
	bhs _08002620
_080025D8:
	cmp r5, r4
	blo _080025E8
	cmp r5, r6
	bhs _08002604
_080025E8:
	asr r2, r7, #8
	asr r3, r8, #8
	mov r4, #0
	mov r5, #2
	ldr ip, [r0, #0x20]
	ldrb r1, [r0]
	b _080020B4
_08002604:
	asr r2, r7, #8
	asr r3, sb, #8
	mov r4, #0
	mov r5, #4
	ldr ip, [r0, #0x20]
	ldrb r1, [r0]
	b _080020B4
_08002620:
	asr r2, r8, #8
	asr r3, sb, #8
	mov r4, #2
	mov r5, #4
	ldr ip, [r0, #0x20]
	ldrb r1, [r0]
	b _080020B4
	ldm r0!, {r2, r3, ip}
	stm r1!, {r2, r3, ip}
	ldm r0!, {r2, r3, ip}
	stm r1!, {r2, r3, ip}
	bx lr

	.arm
sub_8002650: @ 0x08002650
	push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	ldr lr, _08002AAC
	ldr lr, [lr]
	ldm r3, {r5, r6, r7}
	ldm r1, {r8, sb, sl}
	smull ip, fp, r5, r8
	smlal ip, fp, r6, sb
	smlal ip, fp, r7, sl
	lsl r4, fp, #0x10
	orr r4, r4, ip, lsr #16
	add r4, r4, lr
	ldm r2, {r8, sb, sl}
	smull ip, fp, r5, r8
	smlal ip, fp, r6, sb
	smlal ip, fp, r7, sl
	lsl fp, fp, #0x10
	orr fp, fp, ip, lsr #16
	adds fp, fp, lr
	bmi _080026B0
	rsbs r4, r4, #0
	bpl _080026B8
	mov r0, #0
	pop {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bx lr
_080026B0:
	rsbs r4, r4, #0
	bpl _080028CC
_080026B8:
	ldm r1, {fp, ip, lr}
	sub fp, r8, fp
	sub ip, sb, ip
	sub lr, sl, lr
	smull r2, r1, r5, fp
	smlal r2, r1, r6, ip
	smlal r2, r1, r7, lr
	lsl r1, r1, #0x10
	orr r1, r1, r2, lsr #16
	cmp r1, #0x280
	ble _080028CC
	eors r3, r4, r1, asr #32
	rsbhs r1, r1, #0
	movs r4, r4
	rsbmi r4, r4, #0
	lsl r2, r4, #0x10
	lsr r4, r4, #0x10
	rsb r1, r1, #0
	adds r2, r2, r2
	adcs r4, r1, r4, lsl #1
	rsblo r4, r1, r4
	adcs r2, r2, r2
	adcs r4, r1, r4, lsl #1
	rsblo r4, r1, r4
	adcs r2, r2, r2
	adcs r4, r1, r4, lsl #1
	rsblo r4, r1, r4
	adcs r2, r2, r2
	adcs r4, r1, r4, lsl #1
	rsblo r4, r1, r4
	adcs r2, r2, r2
	adcs r4, r1, r4, lsl #1
	rsblo r4, r1, r4
	adcs r2, r2, r2
	adcs r4, r1, r4, lsl #1
	rsblo r4, r1, r4
	adcs r2, r2, r2
	adcs r4, r1, r4, lsl #1
	rsblo r4, r1, r4
	adcs r2, r2, r2
	adcs r4, r1, r4, lsl #1
	rsblo r4, r1, r4
	adcs r2, r2, r2
	adcs r4, r1, r4, lsl #1
	rsblo r4, r1, r4
	adcs r2, r2, r2
	adcs r4, r1, r4, lsl #1
	rsblo r4, r1, r4
	adcs r2, r2, r2
	adcs r4, r1, r4, lsl #1
	rsblo r4, r1, r4
	adcs r2, r2, r2
	adcs r4, r1, r4, lsl #1
	rsblo r4, r1, r4
	adcs r2, r2, r2
	adcs r4, r1, r4, lsl #1
	rsblo r4, r1, r4
	adcs r2, r2, r2
	adcs r4, r1, r4, lsl #1
	rsblo r4, r1, r4
	adcs r2, r2, r2
	adcs r4, r1, r4, lsl #1
	rsblo r4, r1, r4
	adcs r2, r2, r2
	adcs r4, r1, r4, lsl #1
	rsblo r4, r1, r4
	adcs r2, r2, r2
	adcs r4, r1, r4, lsl #1
	rsblo r4, r1, r4
	adcs r2, r2, r2
	adcs r4, r1, r4, lsl #1
	rsblo r4, r1, r4
	adcs r2, r2, r2
	adcs r4, r1, r4, lsl #1
	rsblo r4, r1, r4
	adcs r2, r2, r2
	adcs r4, r1, r4, lsl #1
	rsblo r4, r1, r4
	adcs r2, r2, r2
	adcs r4, r1, r4, lsl #1
	rsblo r4, r1, r4
	adcs r2, r2, r2
	adcs r4, r1, r4, lsl #1
	rsblo r4, r1, r4
	adcs r2, r2, r2
	adcs r4, r1, r4, lsl #1
	rsblo r4, r1, r4
	adcs r2, r2, r2
	adcs r4, r1, r4, lsl #1
	rsblo r4, r1, r4
	adcs r2, r2, r2
	adcs r4, r1, r4, lsl #1
	rsblo r4, r1, r4
	adcs r2, r2, r2
	adcs r4, r1, r4, lsl #1
	rsblo r4, r1, r4
	adcs r2, r2, r2
	adcs r4, r1, r4, lsl #1
	rsblo r4, r1, r4
	adcs r2, r2, r2
	adcs r4, r1, r4, lsl #1
	rsblo r4, r1, r4
	adcs r2, r2, r2
	adcs r4, r1, r4, lsl #1
	rsblo r4, r1, r4
	adcs r2, r2, r2
	adcs r4, r1, r4, lsl #1
	rsblo r4, r1, r4
	adcs r2, r2, r2
	adcs r4, r1, r4, lsl #1
	rsblo r4, r1, r4
	adcs r2, r2, r2
	adcs r4, r1, r4, lsl #1
	rsblo r4, r1, r4
	adcs r2, r2, r2
	tst r3, #-0x80000000
	rsbne r2, r2, #0
	smull r4, r3, fp, r2
	lsl fp, r3, #0x10
	orr fp, fp, r4, lsr #16
	smull r4, r3, lr, r2
	lsl lr, r3, #0x10
	orr lr, lr, r4, lsr #16
	add r8, r8, fp
	add sl, sl, lr
	asr r2, r8, #8
	asr r3, sl, #8
	mov r4, #0
	mov r5, #4
	mov ip, r0
	ldr r1, _08002AB0
	ldr r1, [r1]
	b _080020B4
_080028CC:
	mov r0, #0
	pop {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bx lr

	.arm
sub_80028D8: @ 0x080028D8
	subs r0, r2, r0
	rsbmi r0, r0, #0
	movmi ip, #0
	movpl ip, #2
	subs r0, r0, #0x20000
	movmi ip, #1
	subs r1, r3, r1
	rsbmi r1, r1, #0
	movmi r2, #2
	movpl r2, #0
	subs r1, r1, #0x20000
	movmi r2, #1
	add r2, r2, r2, lsl #1
	add r0, r2, ip
	add pc, pc, r0, lsl #3
	mov r0, r0
	mov r0, #7
	bx lr

	.arm
sub_8002920: @ 0x08002920
	mov r0, #0
	bx lr

	.arm
sub_8002928: @ 0x08002928
	mov r0, #1
	bx lr

	.arm
sub_8002930: @ 0x08002930
	mov r0, #6
	bx lr

	.arm
sub_8002938: @ 0x08002938
	mov r0, #0xff
	bx lr

	.arm
sub_8002940: @ 0x08002940
	mov r0, #2
	bx lr

	.arm
sub_8002948: @ 0x08002948
	mov r0, #5
	bx lr

	.arm
sub_8002950: @ 0x08002950
	mov r0, #4
	bx lr

	.arm
sub_8002958: @ 0x08002958
	mov r0, #3
	bx lr

    .arm
sub_8002960: @ 0x08002960
	push {r4, r5, r6, r7, r8}
	sub r2, r3, r2
	ldm r0, {r3, r4, r5}
	ldm r1, {r6, r7, r8}
	sub ip, r3, r6
	add r3, r3, r6
	add r0, r4, r5
	add r7, r7, r8
	add r4, r0, r7
	sub r4, r2, r4, lsr #16
	sub r0, r0, r8
	sub r5, r2, r0, lsr #16
	lsr r0, ip, #0x10
	lsr r1, r3, #0x10
	ldr r2, _08002AB4
	ldr r3, _08002AB8
	ldr r8, [r2]
	ldr ip, [r3]
	cmp r8, r0
	bgt _080029B8
	cmp r0, ip
	ble _080029C8
_080029B8:
	cmp r8, r1
	bgt _080029FC
	cmp r1, ip
	bgt _080029FC
_080029C8:
	ldr r8, [r2, #4]
	ldr ip, [r3, #4]
	cmp r8, r4
	bgt _080029E0
	cmp r4, ip
	ble _080029F0
_080029E0:
	cmp r8, r5
	bgt _080029FC
	cmp r5, ip
	bgt _080029FC
_080029F0:
	mov r0, #1
	pop {r4, r5, r6, r7, r8}
	bx lr
_080029FC:
	mov r0, #0
	pop {r4, r5, r6, r7, r8}
	bx lr

    .arm
sub_8002A08: @ 0x08002A08
	sub ip, r2, r1
	ldm r0, {r1, r2, r3}
	lsr r0, r1, #0x10
	add r1, r2, r3
	sub r1, ip, r1, lsr #16
	ldr r2, _08002ABC
	ldr ip, [r2]
	cmp r0, ip
	blt _08002A5C
	ldr r3, _08002AC0
	ldr ip, [r3]
	cmp r0, ip
	bgt _08002A5C
	ldr ip, [r2, #4]
	cmp r1, ip
	blt _08002A5C
	ldr ip, [r3, #4]
	cmp r1, ip
	bgt _08002A5C
	mov r0, #1
	bx lr
_08002A5C:
	mov r0, #0
	bx lr
	.align 2, 0
_08002A64: .4byte 0x02000F54
_08002A68: .4byte 0x02000360
_08002A6C: .4byte gOBJTileFramePtr
_08002A70: .4byte gOAMBufferFramePtr
_08002A74: .4byte gOBJTileCount
_08002A78: .4byte gOAMBufferEnd
_08002A7C: .4byte 0x02000F54
_08002A80: .4byte 0x02000360
_08002A84: .4byte gOBJTileFramePtr
_08002A88: .4byte gOAMBufferFramePtr
_08002A8C: .4byte gOBJTileCount
_08002A90: .4byte gOAMBufferEnd
_08002A94: .4byte 0x02000F54
_08002A98: .4byte 0x02000360
_08002A9C: .4byte gOBJTileFramePtr
_08002AA0: .4byte gOAMBufferFramePtr
_08002AA4: .4byte gOBJTileCount
_08002AA8: .4byte gOAMBufferEnd
_08002AAC: .4byte 0x03002A64
_08002AB0: .4byte 0x03002A68
_08002AB4: .4byte dword_30032B4
_08002AB8: .4byte dword_30032BC
_08002ABC: .4byte dword_30032B4
_08002AC0: .4byte dword_30032BC

    .thumb
	.global UpdateBackgrounds
UpdateBackgrounds: @ 0x08002AC4
	push {r4, r5, r6, r7, lr}
	mov r3, r8
	mov r4, sb
	mov r5, sl
	mov r6, fp
	push {r3, r4, r5, r6}
	ldr r7, _08002D5C
	ldrb r7, [r7]
	cmp r7, #0
	bne _08002ADA
	b _08002C44
_08002ADA:
	movs r6, #0x20
	tst r7, r6
	beq _08002B44
	push {r7}
	ldr r0, _08002D60
	ldr r7, [r0]
	mov r8, r7
	ldr r0, _08002D64
	ldrh r5, [r0]
	mov sb, r5
	ldr r1, _08002D68
	ldrb r1, [r1]
	cmp r1, #0
	bne _08002B00
	ldr r1, _08002D6C
	add r1, r8
	ldr r0, _08002D70
	bl BGFillRowVertical
_08002B00:
	subs r5, #1
	beq _08002B42
	ldr r1, _08002D74
	ldrb r1, [r1]
	cmp r1, #0
	bne _08002B16
	ldr r1, _08002D78
	add r1, r8
	ldr r0, _08002D7C
	bl BGFillRowVertical
_08002B16:
	subs r5, #1
	beq _08002B42
	ldr r1, _08002D80
	ldrb r1, [r1]
	cmp r1, #0
	bne _08002B2C
	ldr r1, _08002D84
	add r1, r8
	ldr r0, _08002D88
	bl BGFillRowVertical
_08002B2C:
	subs r5, #1
	beq _08002B42
	ldr r1, _08002D8C
	ldrb r1, [r1]
	cmp r1, #0
	bne _08002B42
	ldr r1, _08002D90
	add r1, r8
	ldr r0, _08002D94
	bl BGFillRowVertical
_08002B42:
	pop {r7}
_08002B44:
	movs r6, #0x10
	tst r7, r6
	beq _08002BAA
	push {r7}
	ldr r0, _08002D98
	ldr r7, [r0]
	mov r8, r7
	mov r5, sb
	ldr r1, _08002D9C
	ldrb r1, [r1]
	cmp r1, #0
	bne _08002B66
	ldr r1, _08002D6C
	add r1, r8
	ldr r0, _08002DA0
	bl BGFillRowHorizontal
_08002B66:
	subs r5, #1
	beq _08002BA8
	ldr r1, _08002DA4
	ldrb r1, [r1]
	cmp r1, #0
	bne _08002B7C
	ldr r1, _08002D78
	add r1, r8
	ldr r0, _08002DA8
	bl BGFillRowHorizontal
_08002B7C:
	subs r5, #1
	beq _08002BA8
	ldr r1, _08002DAC
	ldrb r1, [r1]
	cmp r1, #0
	bne _08002B92
	ldr r1, _08002D84
	add r1, r8
	ldr r0, _08002DB0
	bl BGFillRowHorizontal
_08002B92:
	subs r5, #1
	beq _08002BA8
	ldr r1, _08002DB4
	ldrb r1, [r1]
	cmp r1, #0
	bne _08002BA8
	ldr r1, _08002D90
	add r1, r8
	ldr r0, _08002DB8
	bl BGFillRowHorizontal
_08002BA8:
	pop {r7}
_08002BAA:
	movs r6, #3
	tst r7, r6
	beq _08002BF4
	ldr r0, _08002DBC
	ldrb r1, [r0]
	ldr r0, _08002DC0
	mov r2, sb
	ldr r0, _08002DC4
	ldrb r0, [r0]
	cmp r0, #0
	bne _08002BC4
	ldr r0, _08002DC8
	strh r1, [r0]
_08002BC4:
	subs r2, #1
	beq _08002BF4
	ldr r0, _08002DCC
	ldrb r0, [r0]
	cmp r0, #0
	bne _08002BD4
	ldr r0, _08002DD0
	strh r1, [r0]
_08002BD4:
	subs r2, #1
	beq _08002BF4
	ldr r0, _08002DD4
	ldrb r0, [r0]
	cmp r0, #0
	bne _08002BE4
	ldr r0, _08002DD8
	strh r1, [r0]
_08002BE4:
	subs r2, #1
	beq _08002BF4
	ldr r0, _08002DDC
	ldrb r0, [r0]
	cmp r0, #0
	bne _08002BF4
	ldr r0, _08002DE0
	strh r1, [r0]
_08002BF4:
	movs r6, #0xc
	tst r7, r6
	beq _08002C3E
	ldr r0, _08002DE4
	ldrb r1, [r0]
	ldr r0, _08002DE8
	mov r2, sb
	ldr r0, _08002DEC
	ldrb r0, [r0]
	cmp r0, #0
	bne _08002C0E
	ldr r0, _08002DF0
	strh r1, [r0]
_08002C0E:
	subs r2, #1
	beq _08002C3E
	ldr r0, _08002DF4
	ldrb r0, [r0]
	cmp r0, #0
	bne _08002C1E
	ldr r0, _08002DF8
	strh r1, [r0]
_08002C1E:
	subs r2, #1
	beq _08002C3E
	ldr r0, _08002DFC
	ldrb r0, [r0]
	cmp r0, #0
	bne _08002C2E
	ldr r0, _08002E00
	strh r1, [r0]
_08002C2E:
	subs r2, #1
	beq _08002C3E
	ldr r0, _08002E04
	ldrb r0, [r0]
	cmp r0, #0
	bne _08002C3E
	ldr r0, _08002E08
	strh r1, [r0]
_08002C3E:
	ldr r0, _08002E0C
	movs r1, #0
	strb r1, [r0]
_08002C44:
	pop {r3, r4, r5, r6}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	mov fp, r6
	pop {r4, r5, r6, r7, pc}

    .thumb
BGFillRowHorizontal: @ 0x08002C50
	ldr r2, _08002E10
	adds r7, r1, #0
	ands r7, r2
	mvns r6, r2
	ldrh r2, [r0]
	strh r2, [r1]
	adds r0, #2
	adds r1, #0x40
	ands r1, r6
	orrs r1, r7
	ldrh r2, [r0]
	strh r2, [r1]
	adds r0, #2
	adds r1, #0x40
	ands r1, r6
	orrs r1, r7
	ldrh r2, [r0]
	strh r2, [r1]
	adds r0, #2
	adds r1, #0x40
	ands r1, r6
	orrs r1, r7
	ldrh r2, [r0]
	strh r2, [r1]
	adds r0, #2
	adds r1, #0x40
	ands r1, r6
	orrs r1, r7
	ldrh r2, [r0]
	strh r2, [r1]
	adds r0, #2
	adds r1, #0x40
	ands r1, r6
	orrs r1, r7
	ldrh r2, [r0]
	strh r2, [r1]
	adds r0, #2
	adds r1, #0x40
	ands r1, r6
	orrs r1, r7
	ldrh r2, [r0]
	strh r2, [r1]
	adds r0, #2
	adds r1, #0x40
	ands r1, r6
	orrs r1, r7
	ldrh r2, [r0]
	strh r2, [r1]
	adds r0, #2
	adds r1, #0x40
	ands r1, r6
	orrs r1, r7
	ldrh r2, [r0]
	strh r2, [r1]
	adds r0, #2
	adds r1, #0x40
	ands r1, r6
	orrs r1, r7
	ldrh r2, [r0]
	strh r2, [r1]
	adds r0, #2
	adds r1, #0x40
	ands r1, r6
	orrs r1, r7
	ldrh r2, [r0]
	strh r2, [r1]
	adds r0, #2
	adds r1, #0x40
	ands r1, r6
	orrs r1, r7
	ldrh r2, [r0]
	strh r2, [r1]
	adds r0, #2
	adds r1, #0x40
	ands r1, r6
	orrs r1, r7
	ldrh r2, [r0]
	strh r2, [r1]
	adds r0, #2
	adds r1, #0x40
	ands r1, r6
	orrs r1, r7
	ldrh r2, [r0]
	strh r2, [r1]
	adds r0, #2
	adds r1, #0x40
	ands r1, r6
	orrs r1, r7
	ldrh r2, [r0]
	strh r2, [r1]
	adds r0, #2
	adds r1, #0x40
	ands r1, r6
	orrs r1, r7
	ldrh r2, [r0]
	strh r2, [r1]
	adds r0, #2
	adds r1, #0x40
	ands r1, r6
	orrs r1, r7
	ldrh r2, [r0]
	strh r2, [r1]
	adds r0, #2
	adds r1, #0x40
	ands r1, r6
	orrs r1, r7
	ldrh r2, [r0]
	strh r2, [r1]
	adds r0, #2
	adds r1, #0x40
	ands r1, r6
	orrs r1, r7
	ldrh r2, [r0]
	strh r2, [r1]
	adds r0, #2
	adds r1, #0x40
	ands r1, r6
	orrs r1, r7
	ldrh r2, [r0]
	strh r2, [r1]
	adds r0, #2
	adds r1, #0x40
	ands r1, r6
	orrs r1, r7
	ldrh r2, [r0]
	strh r2, [r1]
	adds r0, #2
	adds r1, #0x40
	ands r1, r6
	orrs r1, r7
	ldrh r2, [r0]
	strh r2, [r1]
	mov pc, lr
	.align 2, 0
_08002D5C: .4byte gBGControlActions
_08002D60: .4byte gBGMapOffsetVertical
_08002D64: .4byte gEnabledBGs
_08002D68: .4byte 0x0200208C
_08002D6C: .4byte 0x0600E000
_08002D70: .4byte gBG0VerticalBuffer
_08002D74: .4byte 0x0200208D
_08002D78: .4byte 0x0600E800
_08002D7C: .4byte gBG1VerticalBuffer
_08002D80: .4byte 0x0200208E
_08002D84: .4byte 0x0600F000
_08002D88: .4byte gBG2VerticalBuffer
_08002D8C: .4byte 0x0200208F
_08002D90: .4byte 0x0600F800
_08002D94: .4byte gBG3VerticalBuffer
_08002D98: .4byte gBGMapOffsetHorizontal
_08002D9C: .4byte 0x0200208C
_08002DA0: .4byte gBG0HorizontalBuffer
_08002DA4: .4byte 0x0200208D
_08002DA8: .4byte gBG1HorizontalBuffer
_08002DAC: .4byte 0x0200208E
_08002DB0: .4byte gBG2HorizontalBuffer
_08002DB4: .4byte 0x0200208F
_08002DB8: .4byte gBG3HorizontalBuffer
_08002DBC: .4byte gBGOffsetHorizontal
_08002DC0: .4byte gRoomHeader
_08002DC4: .4byte 0x0200208C
_08002DC8: .4byte 0x04000010
_08002DCC: .4byte 0x0200208D
_08002DD0: .4byte 0x04000014
_08002DD4: .4byte 0x0200208E
_08002DD8: .4byte 0x04000018
_08002DDC: .4byte 0x0200208F
_08002DE0: .4byte 0x0400001C
_08002DE4: .4byte gBGOffsetVertical
_08002DE8: .4byte gRoomHeader
_08002DEC: .4byte 0x0200208C
_08002DF0: .4byte 0x04000012
_08002DF4: .4byte 0x0200208D
_08002DF8: .4byte 0x04000016
_08002DFC: .4byte 0x0200208E
_08002E00: .4byte 0x0400001A
_08002E04: .4byte 0x0200208F
_08002E08: .4byte 0x0400001E
_08002E0C: .4byte gBGControlActions
_08002E10: .4byte 0x0001F800

    .thumb
BGFillRowVertical: @ 0x08002E14
	ldr r2, _08002F98
	adds r7, r1, #0
	ands r7, r2
	mvns r6, r2
	ldrh r2, [r0]
	strh r2, [r1]
	adds r0, #2
	adds r1, #2
	ands r1, r6
	orrs r1, r7
	ldrh r2, [r0]
	strh r2, [r1]
	adds r0, #2
	adds r1, #2
	ands r1, r6
	orrs r1, r7
	ldrh r2, [r0]
	strh r2, [r1]
	adds r0, #2
	adds r1, #2
	ands r1, r6
	orrs r1, r7
	ldrh r2, [r0]
	strh r2, [r1]
	adds r0, #2
	adds r1, #2
	ands r1, r6
	orrs r1, r7
	ldrh r2, [r0]
	strh r2, [r1]
	adds r0, #2
	adds r1, #2
	ands r1, r6
	orrs r1, r7
	ldrh r2, [r0]
	strh r2, [r1]
	adds r0, #2
	adds r1, #2
	ands r1, r6
	orrs r1, r7
	ldrh r2, [r0]
	strh r2, [r1]
	adds r0, #2
	adds r1, #2
	ands r1, r6
	orrs r1, r7
	ldrh r2, [r0]
	strh r2, [r1]
	adds r0, #2
	adds r1, #2
	ands r1, r6
	orrs r1, r7
	ldrh r2, [r0]
	strh r2, [r1]
	adds r0, #2
	adds r1, #2
	ands r1, r6
	orrs r1, r7
	ldrh r2, [r0]
	strh r2, [r1]
	adds r0, #2
	adds r1, #2
	ands r1, r6
	orrs r1, r7
	ldrh r2, [r0]
	strh r2, [r1]
	adds r0, #2
	adds r1, #2
	ands r1, r6
	orrs r1, r7
	ldrh r2, [r0]
	strh r2, [r1]
	adds r0, #2
	adds r1, #2
	ands r1, r6
	orrs r1, r7
	ldrh r2, [r0]
	strh r2, [r1]
	adds r0, #2
	adds r1, #2
	ands r1, r6
	orrs r1, r7
	ldrh r2, [r0]
	strh r2, [r1]
	adds r0, #2
	adds r1, #2
	ands r1, r6
	orrs r1, r7
	ldrh r2, [r0]
	strh r2, [r1]
	adds r0, #2
	adds r1, #2
	ands r1, r6
	orrs r1, r7
	ldrh r2, [r0]
	strh r2, [r1]
	adds r0, #2
	adds r1, #2
	ands r1, r6
	orrs r1, r7
	ldrh r2, [r0]
	strh r2, [r1]
	adds r0, #2
	adds r1, #2
	ands r1, r6
	orrs r1, r7
	ldrh r2, [r0]
	strh r2, [r1]
	adds r0, #2
	adds r1, #2
	ands r1, r6
	orrs r1, r7
	ldrh r2, [r0]
	strh r2, [r1]
	adds r0, #2
	adds r1, #2
	ands r1, r6
	orrs r1, r7
	ldrh r2, [r0]
	strh r2, [r1]
	adds r0, #2
	adds r1, #2
	ands r1, r6
	orrs r1, r7
	ldrh r2, [r0]
	strh r2, [r1]
	adds r0, #2
	adds r1, #2
	ands r1, r6
	orrs r1, r7
	ldrh r2, [r0]
	strh r2, [r1]
	adds r0, #2
	adds r1, #2
	ands r1, r6
	orrs r1, r7
	ldrh r2, [r0]
	strh r2, [r1]
	adds r0, #2
	adds r1, #2
	ands r1, r6
	orrs r1, r7
	ldrh r2, [r0]
	strh r2, [r1]
	adds r0, #2
	adds r1, #2
	ands r1, r6
	orrs r1, r7
	ldrh r2, [r0]
	strh r2, [r1]
	adds r0, #2
	adds r1, #2
	ands r1, r6
	orrs r1, r7
	ldrh r2, [r0]
	strh r2, [r1]
	adds r0, #2
	adds r1, #2
	ands r1, r6
	orrs r1, r7
	ldrh r2, [r0]
	strh r2, [r1]
	adds r0, #2
	adds r1, #2
	ands r1, r6
	orrs r1, r7
	ldrh r2, [r0]
	strh r2, [r1]
	adds r0, #2
	adds r1, #2
	ands r1, r6
	orrs r1, r7
	ldrh r2, [r0]
	strh r2, [r1]
	adds r0, #2
	adds r1, #2
	ands r1, r6
	orrs r1, r7
	ldrh r2, [r0]
	strh r2, [r1]
	adds r0, #2
	adds r1, #2
	ands r1, r6
	orrs r1, r7
	ldrh r2, [r0]
	strh r2, [r1]
	adds r0, #2
	adds r1, #2
	ands r1, r6
	orrs r1, r7
	ldrh r2, [r0]
	strh r2, [r1]
	mov pc, lr
	.align 2, 0
_08002F98: .4byte 0x0001FFC0

	.thumb
sub_8002F9C: @ 0x08002F9C
	adds r1, r0, #0
	lsrs r2, r0, #2
	subs r0, r0, r2
	lsrs r2, r0, #4
	adds r0, r0, r2
	lsrs r2, r0, #8
	adds r0, r0, r2
	lsrs r2, r0, #0x10
	adds r0, r0, r2
	lsrs r0, r0, #3
	lsls r2, r0, #2
	adds r2, r2, r0
	lsls r2, r2, #1
	subs r1, r1, r2
	cmp r1, #0xa
	blt _08002FC0
	adds r0, #1
	subs r1, #0xa
_08002FC0:
	mov pc, lr

	.align 2, 0

	.thumb
	.global IntegerToAsciiBw
IntegerToAsciiBw:
	adds r2, r0, #0
	lsrs r3, r0, #2
	subs r0, r0, r3
	lsrs r3, r0, #4
	adds r0, r0, r3
	lsrs r3, r0, #8
	adds r0, r0, r3
	lsrs r3, r0, #0x10
	adds r0, r0, r3
	lsrs r0, r0, #3
	lsls r3, r0, #2
	adds r3, r3, r0
	lsls r3, r3, #1
	subs r2, r2, r3
	cmp r2, #0xa
	blt _08002FE8
	adds r0, #1
	subs r2, #0xa
_08002FE8:
	adds r2, #0x30
	strb r2, [r1]
	subs r1, #1
	cmp r0, #0
	bne IntegerToAsciiBw
	mov pc, lr

    .thumb
	.global IntegerToAsciiFw
IntegerToAsciiFw: @ 0x08002FF4
	cmp r0, #0xa
	blo _0800302C
	cmp r0, #0x64
	bhs _08003000
	adds r1, #1
	b _0800302C
_08003000:
	ldr r2, _08003064
	cmp r0, r2
	bhs _0800300A
	adds r1, #2
	b _0800302C
_0800300A:
	ldr r2, _08003068
	cmp r0, r2
	bhs _08003014
	adds r1, #3
	b _0800302C
_08003014:
	ldr r2, _0800306C
	cmp r0, r2
	bhs _0800301E
	adds r1, #4
	b _0800302C
_0800301E:
	ldr r2, _08003070
	cmp r0, r2
	bhs _08003028
	adds r1, #5
	b _0800302C
_08003028:
	.2byte 0xEE00, 0xEE00
_0800302C:
	adds r2, r0, #0
	lsrs r3, r0, #2
	subs r0, r0, r3
	lsrs r3, r0, #4
	adds r0, r0, r3
	lsrs r3, r0, #8
	adds r0, r0, r3
	lsrs r3, r0, #0x10
	adds r0, r0, r3
	lsrs r0, r0, #3
	lsls r3, r0, #2
	adds r3, r3, r0
	lsls r3, r3, #1
	subs r2, r2, r3
	cmp r2, #0xa
	blt _08003050
	adds r0, #1
	subs r2, #0xa
_08003050:
	adds r2, #0x30
	strb r2, [r1]
	subs r1, #1
	cmp r0, #0
	bne _0800302C
	mov pc, lr

    .thumb
	.global Abs
Abs: @ 0x0800305C
	cmp r0, #0
	bge _08003062
	rsbs r0, r0, #0
_08003062:
	mov pc, lr
	.align 2, 0
_08003064: .4byte 0x000003E8
_08003068: .4byte 0x00002710
_0800306C: .4byte 0x000186A0
_08003070: .4byte 0x000F4240

    .thumb
	.global DmaFill32
DmaFill32: @ 0x08003074
	cmp r2, #0
	bgt _0800307C
	bl sub_08010B00
_0800307C:
	ldr r3, _08003314
	cmp r1, r3
	bhs _08003086
	bl sub_08010B08
_08003086:
	ldr r3, _08003318
	cmp r1, r3
	blo _080030D0
	ldr r3, _0800331C
	cmp r1, r3
	bhs _08003096
	bl sub_08010B10
_08003096:
	ldr r3, _08003320
	cmp r1, r3
	blo _080030D0
	ldr r3, _08003324
	cmp r1, r3
	bhs _080030A6
	bl sub_08010B18
_080030A6:
	ldr r3, _08003328
	cmp r1, r3
	blo _080030D0
	ldr r3, _0800332C
	cmp r1, r3
	bhs _080030B6
	bl sub_08010B20
_080030B6:
	ldr r3, _08003330
	cmp r1, r3
	blo _080030D0
	ldr r3, _08003334
	cmp r1, r3
	bhs _080030C6
	bl sub_08010B28
_080030C6:
	ldr r3, _08003338
	cmp r1, r3
	blo _080030D0
	bl sub_08010B30
_080030D0:
	push {r0}
	ldr r0, _0800333C
	mov r3, sp
	str r3, [r0]
	str r1, [r0, #4]
	movs r3, #0x85
	lsls r3, r3, #0x18
	orrs r3, r2
	str r3, [r0, #8]
	add sp, #4
	mov pc, lr

	.align 2, 0

    .thumb
	.global DmaTransfer32
DmaTransfer32: @ 0x080030E8
	cmp r2, #0
	bgt _080030F0
	bl sub_08010B38
_080030F0:
	ldr r3, _08003314
	cmp r1, r3
	bhs _080030FA
	bl sub_08010B40
_080030FA:
	ldr r3, _08003318
	cmp r1, r3
	blo _08003144
	ldr r3, _0800331C
	cmp r1, r3
	bhs _0800310A
	bl sub_08010B48
_0800310A:
	ldr r3, _08003320
	cmp r1, r3
	blo _08003144
	ldr r3, _08003324
	cmp r1, r3
	bhs _0800311A
	bl sub_08010B50
_0800311A:
	ldr r3, _08003328
	cmp r1, r3
	blo _08003144
	ldr r3, _0800332C
	cmp r1, r3
	bhs _0800312A
	bl sub_08010B58
_0800312A:
	ldr r3, _08003330
	cmp r1, r3
	blo _08003144
	ldr r3, _08003334
	cmp r1, r3
	bhs _0800313A
	bl sub_08010B60
_0800313A:
	ldr r3, _08003338
	cmp r1, r3
	blo _08003144
	bl sub_08010B68
_08003144:
	ldr r3, _0800333C
	str r0, [r3]
	str r1, [r3, #4]
	movs r0, #0x84
	lsls r0, r0, #0x18
	orrs r0, r2
	str r0, [r3, #8]
	mov pc, lr

	.thumb
sub_8003154: @ 0x08003154
	ldr r3, _0800333C
	str r0, [r3]
	str r1, [r3, #4]
	movs r0, #0x84
	lsls r0, r0, #0x18
	orrs r0, r2
	str r0, [r3, #8]
	mov pc, lr

	.thumb
	.global DmaTransfer16
DmaTransfer16:
	cmp r2, #0
	bgt _0800316C
	bl sub_08010B70
_0800316C:
	ldr r3, _08003314
	cmp r1, r3
	bhs _08003176
	bl sub_08010B78
_08003176:
	ldr r3, _08003318
	cmp r1, r3
	blo _080031C0
	ldr r3, _0800331C
	cmp r1, r3
	bhs _08003186
	bl sub_08010B80
_08003186:
	ldr r3, _08003320
	cmp r1, r3
	blo _080031C0
	ldr r3, _08003324
	cmp r1, r3
	bhs _08003196
	bl sub_08010B88
_08003196:
	ldr r3, _08003328
	cmp r1, r3
	blo _080031C0
	ldr r3, _0800332C
	cmp r1, r3
	bhs _080031A6
	bl sub_08010B90
_080031A6:
	ldr r3, _08003330
	cmp r1, r3
	blo _080031C0
	ldr r3, _08003334
	cmp r1, r3
	bhs _080031B6
	bl sub_08010B98
_080031B6:
	ldr r3, _08003338
	cmp r1, r3
	blo _080031C0
	bl sub_08010BA0
_080031C0:
	ldr r3, _0800333C
	str r0, [r3]
	str r1, [r3, #4]
	movs r0, #0x80
	lsls r0, r0, #0x18
	orrs r0, r2
	str r0, [r3, #8]
	mov pc, lr

    .thumb
	.global UnsafeDmaTransfer16
UnsafeDmaTransfer16: @ 0x080031D0
	ldr r3, _0800333C
	str r0, [r3]
	str r1, [r3, #4]
	movs r0, #0x80
	lsls r0, r0, #0x18
	orrs r0, r2
	str r0, [r3, #8]
	mov pc, lr

	.thumb
	.global sub_80031E0
sub_80031E0: @ 0x080031E0
	ldr r0, _08003340
	ldrh r0, [r0]
	mvns r0, r0
	mov pc, lr

    .thumb
	.global ReadKeys
ReadKeys: @ 0x080031E8
	push {r4}
	ldrh r4, [r2]
	mvns r4, r4
	ldr r3, _08003340
	ldrh r3, [r3]
	mvns r3, r3
	strh r3, [r2]
	ands r4, r3
	strh r3, [r0]
	strh r4, [r1]
	pop {r4}
	mov pc, lr

    .thumb
	.global ReadKeysEx
ReadKeysEx: @ 0x08003200
	push {r4}
	ldrh r4, [r2]
	mvns r4, r4
	ldr r3, _08003344
	ldrh r3, [r3]
	mvns r3, r3
	strh r3, [r2]
	ands r4, r3
	strh r3, [r0]
	strh r4, [r1]
	pop {r4}
	mov pc, lr

    .thumb
	.global SyncVblank
SyncVblank: @ 0x08003218
	ldr r0, _08003348
_0800321A:
	ldrb r1, [r0]
	cmp r1, #0xa0
	bhs _0800321A
_08003220:
	ldrb r1, [r0]
	cmp r1, #0xa0
	blo _08003220
	mov pc, lr

    .thumb
	.global SkipVblank
SkipVblank: @ 0x08003228
	ldr r0, _08003348
_0800322A:
	ldrb r1, [r0]
	cmp r1, #0xa0
	bhs _0800322A
	mov pc, lr
	.align 2, 0

	.global DmaTransferObjPalette
    .thumb
DmaTransferObjPalette: @ 0x08003234
	cmp r1, #0
	bge _0800323C
	bl sub_08010A90
_0800323C:
	cmp r1, #0xf
	ble _08003244
	bl sub_08010A98
_08003244:
	cmp r2, #0
	bge _0800324C
	bl sub_08010AA0
_0800324C:
	cmp r2, #0xf
	ble _08003254
	bl sub_08010AA8
_08003254:
	cmp r1, r2
	ble _0800325C
	bl sub_08010AB0
_0800325C:
	subs r2, r2, r1
	adds r2, #1
	lsls r2, r2, #4
	ldr r3, _0800334C
	lsls r1, r1, #5
	adds r1, r1, r3
	b DmaTransfer16
	.align 2, 0

    .thumb
	.global DmaTransferBGPalette
DmaTransferBGPalette: @ 0x0800326C
	cmp r1, #0
	bge _08003274
	bl sub_08010A90
_08003274:
	cmp r1, #0xf
	ble _0800327C
	bl sub_08010A98
_0800327C:
	cmp r2, #0
	bge _08003284
	bl sub_08010AA0
_08003284:
	cmp r2, #0xf
	ble _0800328C
	bl sub_08010AA8
_0800328C:
	cmp r1, r2
	ble _08003294
	bl sub_08010AB0
_08003294:
	subs r2, r2, r1
	adds r2, #1
	lsls r2, r2, #4
	ldr r3, _08003324
	lsls r1, r1, #5
	adds r1, r1, r3
	b DmaTransfer16
	.align 2, 0

    .thumb
	.global DmaMoveObjPalette
DmaMoveObjPalette: @ 0x080032A4
	cmp r0, #0
	bge _080032AC
	bl sub_08010AD8
_080032AC:
	cmp r0, #0xf
	ble _080032B4
	bl sub_08010AE0
_080032B4:
	cmp r1, #0
	bge _080032BC
	bl sub_08010AE8
_080032BC:
	cmp r1, #0xf
	ble _080032C4
	bl sub_08010AF0
_080032C4:
	cmp r0, r1
	bne _080032CC
	bl sub_08010AF8
_080032CC:
	ldr r3, _0800334C
	lsls r0, r0, #5
	adds r0, r0, r3
	lsls r1, r1, #5
	adds r1, r1, r3
	movs r2, #0x10
	b DmaTransfer16
	.align 2, 0

    .thumb
	.global CheckStacks
CheckStacks: @ 0x080032DC
	ldr r3, _08003350
	ldr r0, _08003354
	ldr r1, [r0]
	cmp r1, r3
	beq _080032EA
	bl sub_08010AB8
_080032EA:
	ldr r0, _08003358
	ldr r1, [r0]
	cmp r1, r3
	beq _080032F6
	bl sub_08010AC0
_080032F6:
	ldr r3, _0800335C
	ldr r0, _08003360
	ldr r1, [r0]
	cmp r1, r3
	beq _08003304
	bl sub_08010AC8
_08003304:
	ldr r0, _08003364
	ldr r1, [r0]
	cmp r1, r3
	beq _08003310
	bl sub_08010AD0
_08003310:
	mov pc, lr
	.align 2, 0
_08003314: .4byte 0x02000000
_08003318: .4byte 0x02040000
_0800331C: .4byte 0x03000000
_08003320: .4byte 0x03008000
_08003324: .4byte 0x05000000
_08003328: .4byte 0x05000400
_0800332C: .4byte 0x06000000
_08003330: .4byte 0x06018000
_08003334: .4byte 0x07000000
_08003338: .4byte 0x07000400
_0800333C: .4byte 0x040000D4
_08003340: .4byte 0x04000130
_08003344: .4byte gKeyInput
_08003348: .4byte 0x04000006
_0800334C: .4byte 0x05000200
_08003350: .4byte 0x89ABCDEF
_08003354: .4byte 0x03007FA0
_08003358: .4byte 0x03007BA0
_0800335C: .4byte 0x12345678
_08003360: .4byte 0x03007B9C
_08003364: .4byte 0x0300749C

    .thumb
	.global sub_8003368
sub_8003368: @ 0x08003368
	strb r2, [r0, #0xe]
	strb r3, [r0, #0xb]
	mov ip, r1
	ldrb r1, [r0, #0xa]
	add r1, ip
	strh r1, [r0]
	movs r3, #8
	muls r1, r3, r1
	ldr r2, _08003560
	ldrb r3, [r0, #0x14]
	lsls r3, r3, #2
	ldr r2, [r2, r3]
	adds r3, r2, r1
	ldr r1, [r3, #4]
	strb r1, [r0, #0x11]
	ldr r1, [r3]
	ldrb r2, [r1]
	strb r2, [r0, #3]
	ldrb r2, [r1, #1]
	strb r2, [r0, #9]
	adds r1, #4
	str r1, [r0, #0x18]
	ldrb r2, [r1, #0xc]
	strb r2, [r0, #5]
	movs r1, #0
	strb r1, [r0, #2]
	strb r1, [r0, #0x17]
	movs r2, #0
	strb r2, [r0, #0xf]
	mov pc, lr

    .thumb
	.global sub_80033A4
sub_80033A4: @ 0x080033A4
	strb r2, [r0, #0xe]
	strb r3, [r0, #0xb]
	mov ip, r1
	ldrb r1, [r0, #0xa]
	add r1, ip
	strh r1, [r0]
	movs r3, #8
	muls r1, r3, r1
	ldr r2, _08003564
	ldrb r3, [r0, #0x14]
	lsls r3, r3, #2
	ldr r2, [r2, r3]
	adds r3, r2, r1
	ldr r1, [r3, #4]
	strb r1, [r0, #0x11]
	ldr r1, [r3]
	ldrb r2, [r1]
	strb r2, [r0, #3]
	ldrb r2, [r1, #1]
	strb r2, [r0, #9]
	adds r1, #4
	str r1, [r0, #0x18]
	ldrb r2, [r1, #0xc]
	strb r2, [r0, #5]
	movs r2, #0
	strb r2, [r0, #0xf]
	strb r2, [r0, #0x17]
	mov pc, lr

    .thumb
	.global sub_80033DC
sub_80033DC: @ 0x080033DC
	push {r4, r5, r6, r7, lr}
	mov r3, r8
	mov r4, sb
	mov r5, sl
	mov r6, fp
	push {r3, r4, r5, r6}
	mov ip, r1
	ldrb r1, [r0, #2]
	ldrb r2, [r0, #5]
	subs r2, #1
	strb r2, [r0, #5]
	bne _08003436
	adds r2, #1
	strb r2, [r0, #5]
	ldrb r2, [r0, #0xf]
	movs r4, #0x80
	tst r2, r4
	beq _08003406
	movs r4, #0x7f
	ands r2, r4
	b _08003420
_08003406:
	adds r2, r1, #1
	ldrb r3, [r0, #3]
	cmp r2, r3
	bne _08003420
	ldrb r4, [r0, #0xb]
	cmp r4, #0
	beq _0800341E
	adds r2, r1, #0
	cmp r4, #1
	beq _08003432
	subs r4, #1
	strb r4, [r0, #0xb]
_0800341E:
	ldrb r2, [r0, #0xe]
_08003420:
	strb r2, [r0, #2]
	movs r1, #0x10
	muls r1, r2, r1
	ldr r2, [r0, #0x18]
	adds r2, r2, r1
	ldrb r6, [r2, #0xc]
	adds r6, #1
	strb r6, [r0, #5]
	b _0800343E
_08003432:
	movs r2, #1
	strb r2, [r0, #0x17]
_08003436:
	movs r2, #0x10
	muls r1, r2, r1
	ldr r2, [r0, #0x18]
	adds r2, r2, r1
_0800343E:
	ldrb r6, [r0, #0x11]
	cmp r6, #1
	beq _080034D8
	ldrb r6, [r0, #0x12]
	cmp r6, #1
	beq _08003492
	mov r1, ip
	ldr r3, _08003568
	ldr r3, [r3]
	str r3, [r1, #4]
	ldrb r6, [r0, #4]
	lsls r6, r6, #0xa
	mov r8, r6
	ldrb r6, [r0, #0x10]
	lsls r6, r6, #0xa
	ldrb r5, [r0, #0x13]
	lsls r5, r5, #9
	orrs r6, r5
	ldrb r5, [r0, #0x15]
	lsls r5, r5, #8
	orrs r6, r5
	mov sb, r6
	ldrb r5, [r0, #0x16]
	lsls r5, r5, #9
	mov sl, r5
	movs r5, #6
	ldrsh r6, [r0, r5]
	ldrb r7, [r0, #8]
	push {r1}
	adds r0, r2, #0
	bl CallARM_RenderSpriteFrame4
	pop {r1}
	ldr r2, _0800356C
	ldr r2, [r2]
	str r2, [r1, #8]
	pop {r3, r4, r5, r6}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	mov fp, r6
	pop {r4, r5, r6, r7, pc}
_08003492:
	mov r1, ip
	ldr r3, _08003570
	ldr r3, [r3]
	str r3, [r1, #4]
	ldrh r6, [r0, #0xc]
	mov r8, r6
	ldrb r6, [r0, #0x10]
	lsls r6, r6, #0xa
	ldrb r5, [r0, #0x13]
	lsls r5, r5, #9
	orrs r6, r5
	ldrb r5, [r0, #0x15]
	lsls r5, r5, #8
	orrs r6, r5
	mov sb, r6
	ldrb r5, [r0, #0x16]
	lsls r5, r5, #9
	mov sl, r5
	movs r5, #6
	ldrsh r6, [r0, r5]
	ldrb r7, [r0, #8]
	push {r1}
	adds r0, r2, #0
	bl CallARM_RenderSpriteFrame3
	pop {r1}
	ldr r2, _08003574
	ldr r2, [r2]
	str r2, [r1, #8]
	pop {r3, r4, r5, r6}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	mov fp, r6
	pop {r4, r5, r6, r7, pc}
_080034D8:
	ldrb r6, [r0, #0x12]
	cmp r6, #1
	beq _08003520
	mov r1, ip
	ldr r3, _08003578
	ldr r3, [r3]
	str r3, [r1, #4]
	ldrb r6, [r0, #4]
	lsls r6, r6, #0xa
	mov r8, r6
	ldrb r6, [r0, #0x10]
	lsls r6, r6, #0xa
	ldrb r5, [r0, #0x13]
	lsls r5, r5, #9
	orrs r6, r5
	ldrb r5, [r0, #0x15]
	lsls r5, r5, #8
	orrs r6, r5
	mov sb, r6
	movs r5, #6
	ldrsh r6, [r0, r5]
	ldrb r7, [r0, #8]
	push {r1}
	adds r0, r2, #0
	bl CallARM_RenderSpriteFrame2
	pop {r1}
	ldr r2, _0800357C
	ldr r2, [r2]
	str r2, [r1, #8]
	pop {r3, r4, r5, r6}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	mov fp, r6
	pop {r4, r5, r6, r7, pc}
_08003520:
	mov r1, ip
	ldr r3, _08003580
	ldr r3, [r3]
	str r3, [r1, #4]
	ldrh r6, [r0, #0xc]
	mov r8, r6
	ldrb r6, [r0, #0x10]
	lsls r6, r6, #0xa
	ldrb r5, [r0, #0x13]
	lsls r5, r5, #9
	orrs r6, r5
	ldrb r5, [r0, #0x15]
	lsls r5, r5, #8
	orrs r6, r5
	mov sb, r6
	movs r5, #6
	ldrsh r6, [r0, r5]
	ldrb r7, [r0, #8]
	push {r1}
	adds r0, r2, #0
	bl RenderSpriteFrame
	pop {r1}
	ldr r2, _08003584
	ldr r2, [r2]
	str r2, [r1, #8]
	pop {r3, r4, r5, r6}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	mov fp, r6
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08003560: .4byte 0x086AD304
_08003564: .4byte 0x086AD304
_08003568: .4byte gOAMBufferFramePtr
_0800356C: .4byte gOAMBufferFramePtr
_08003570: .4byte gOAMBufferFramePtr
_08003574: .4byte gOAMBufferFramePtr
_08003578: .4byte gOAMBufferFramePtr
_0800357C: .4byte gOAMBufferFramePtr
_08003580: .4byte gOAMBufferFramePtr
_08003584: .4byte gOAMBufferFramePtr

    .thumb
	.global RenderSprite
RenderSprite: @ 0x08003588
	push {r4, r5, r6, r7, lr}
	mov r3, r8
	mov r4, sb
	mov r5, sl
	mov r6, fp
	push {r3, r4, r5, r6}
	ldrb r1, [r0, #2]
	ldrb r2, [r0, #5]
	subs r2, #1
	strb r2, [r0, #5]
	bne _080035DE
	adds r2, #1
	strb r2, [r0, #5]
	ldrb r2, [r0, #0xf]
	movs r4, #0x80
	tst r2, r4
	beq _080035B0
	movs r4, #0x7f
	ands r2, r4
	b _080035C8
_080035B0:
	adds r2, r1, #1
	ldrb r3, [r0, #3]
	cmp r2, r3
	bne _080035C8
	ldrb r4, [r0, #0xb]
	cmp r4, #0
	beq _080035C6
	cmp r4, #1
	beq _080035DA
	subs r4, #1
	strb r4, [r0, #0xb]
_080035C6:
	ldrb r2, [r0, #0xe]
_080035C8:
	strb r2, [r0, #2]
	movs r1, #0x10
	muls r1, r2, r1
	ldr r2, [r0, #0x18]
	adds r2, r2, r1
	ldrb r6, [r2, #0xc]
	adds r6, #1
	strb r6, [r0, #5]
	b _080035E6
_080035DA:
	movs r2, #1
	strb r2, [r0, #0x17]
_080035DE:
	movs r2, #0x10
	muls r1, r2, r1
	ldr r2, [r0, #0x18]
	adds r2, r2, r1
_080035E6:
	ldrb r6, [r0, #0x11]
	cmp r6, #1
	beq _0800365E
	ldrb r6, [r0, #0x12]
	cmp r6, #1
	beq _08003628
	ldrb r6, [r0, #4]
	lsls r6, r6, #0xa
	mov r8, r6
	ldrb r6, [r0, #0x10]
	lsls r6, r6, #0xa
	ldrb r5, [r0, #0x13]
	lsls r5, r5, #9
	orrs r6, r5
	ldrb r5, [r0, #0x15]
	lsls r5, r5, #8
	orrs r6, r5
	mov sb, r6
	ldrb r5, [r0, #0x16]
	lsls r5, r5, #9
	mov sl, r5
	movs r5, #6
	ldrsh r6, [r0, r5]
	ldrb r7, [r0, #8]
	adds r0, r2, #0
	bl CallARM_RenderSpriteFrame4
	pop {r3, r4, r5, r6}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	mov fp, r6
	pop {r4, r5, r6, r7, pc}
_08003628:
	ldrb r3, [r0, #4]
	ldrh r6, [r0, #0xc]
	mov r8, r6
	ldrb r6, [r0, #0x10]
	lsls r6, r6, #0xa
	ldrb r5, [r0, #0x13]
	lsls r5, r5, #9
	orrs r6, r5
	ldrb r5, [r0, #0x15]
	lsls r5, r5, #8
	orrs r6, r5
	mov sb, r6
	ldrb r5, [r0, #0x16]
	lsls r5, r5, #9
	mov sl, r5
	movs r5, #6
	ldrsh r6, [r0, r5]
	ldrb r7, [r0, #8]
	adds r0, r2, #0
	bl CallARM_RenderSpriteFrame3
	pop {r3, r4, r5, r6}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	mov fp, r6
	pop {r4, r5, r6, r7, pc}
_0800365E:
	ldrb r6, [r0, #0x12]
	cmp r6, #1
	beq _08003694
	ldrb r6, [r0, #4]
	lsls r6, r6, #0xa
	mov r8, r6
	ldrb r6, [r0, #0x10]
	lsls r6, r6, #0xa
	ldrb r5, [r0, #0x13]
	lsls r5, r5, #9
	orrs r6, r5
	ldrb r5, [r0, #0x15]
	lsls r5, r5, #8
	orrs r6, r5
	mov sb, r6
	movs r5, #6
	ldrsh r6, [r0, r5]
	ldrb r7, [r0, #8]
	adds r0, r2, #0
	bl CallARM_RenderSpriteFrame2
	pop {r3, r4, r5, r6}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	mov fp, r6
	pop {r4, r5, r6, r7, pc}
_08003694:
	ldrb r3, [r0, #4]
	ldrh r6, [r0, #0xc]
	mov r8, r6
	ldrb r6, [r0, #0x10]
	lsls r6, r6, #0xa
	ldrb r5, [r0, #0x13]
	lsls r5, r5, #9
	orrs r6, r5
	ldrb r5, [r0, #0x15]
	lsls r5, r5, #8
	orrs r6, r5
	mov sb, r6
	movs r5, #6
	ldrsh r6, [r0, r5]
	ldrb r7, [r0, #8]
	adds r0, r2, #0
	bl RenderSpriteFrame
	pop {r3, r4, r5, r6}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	mov fp, r6
	pop {r4, r5, r6, r7, pc}

    .thumb
RenderSpriteFrame: @ 0x080036C4
	push {lr}
	ldr r3, _08003838
	ldrb r1, [r3]
	movs r2, #0xc
	muls r2, r1, r2
	adds r1, #1
	strb r1, [r3]
	ldr r3, _0800383C
	adds r3, r3, r2
	ldr r1, [r0]
	str r1, [r3]
	ldr r4, _08003840
	ldr r5, [r4]
	str r5, [r3, #4]
	ldrh r2, [r0, #4]
	str r2, [r3, #8]
	lsls r2, r2, #2
	adds r5, r5, r2
	str r5, [r4]
	ldr r1, [r0, #8]
	ldrh r2, [r0, #6]
	movs r0, #0
	mov sl, r0
	ldr r4, _08003844
	ldr r0, [r4]
	mov fp, r4
	ldr r3, _08003848
	ldr r3, [r3]
	mov lr, r3
	ldr r4, _0800384C
	ldr r3, [r4]
	mov ip, r4
_08003704:
	movs r5, #0
	ldrsh r4, [r1, r5]
	adds r7, r7, r4
	movs r5, #0xff
	ands r5, r7
	ldrb r4, [r1, #4]
	lsls r4, r4, #8
	orrs r4, r5
	mov r5, sb
	orrs r4, r5
	strh r4, [r0]
	movs r5, #2
	ldrsh r4, [r1, r5]
	rsbs r4, r4, #0
	mov r5, sl
	adds r4, r4, r5
	ldrb r5, [r1, #0xa]
	subs r4, r4, r5
	mov sl, r5
	adds r6, r6, r4
	ldr r5, _08003850
	ands r5, r6
	ldrb r4, [r1, #5]
	lsls r4, r4, #8
	orrs r4, r5
	movs r5, #0x10
	lsls r5, r5, #8
	orrs r4, r5
	strh r4, [r0, #2]
	mov r4, r8
	orrs r4, r3
	strh r4, [r0, #4]
	ldrh r4, [r1, #8]
	adds r3, r3, r4
	adds r0, #8
	cmp r0, lr
	beq _0800375E
	adds r1, #0xc
	subs r2, #1
	bne _08003704
	mov r4, fp
	str r0, [r4]
	mov r4, ip
	str r3, [r4]
	pop {pc}
_0800375E:
	subs r0, #8
	mov r4, fp
	str r0, [r4]
	mov r4, ip
	str r3, [r4]
	bl sub_08010A20
	pop {pc}
	.align 2, 0

    .thumb
	.global sub_8003770
sub_8003770: @ 0x08003770
	ldrb r1, [r0, #0xb]
	cmp r1, #0
	beq _08003784
	cmp r1, #1
	bne _08003784
	ldrb r2, [r0, #2]
	ldrb r3, [r0, #3]
	subs r3, #1
	cmp r2, r3
	beq _08003788
_08003784:
	movs r0, #0
	mov pc, lr
_08003788:
	movs r0, #1
	mov pc, lr

    .thumb
	.global sub_800378C
sub_800378C: @ 0x0800378C
	movs r2, #0x80
	orrs r2, r1
	strb r2, [r0, #0xf]
	mov pc, lr

    .thumb
	.global sub_8003794
sub_8003794: @ 0x08003794
	movs r2, #0x80
	ldrb r1, [r0, #2]
	orrs r2, r1
	strb r2, [r0, #0xf]
	mov pc, lr
	.align 2, 0

    .thumb
	.global sub_80037A0
sub_80037A0: @ 0x080037A0
	movs r2, #0
	strb r2, [r0, #0xf]
	mov pc, lr
	.align 2, 0

    .thumb
	.global sub_80037A8
sub_80037A8: @ 0x080037A8
	ldrb r1, [r0, #0xf]
	movs r2, #0x80
	ands r1, r2
	bne _080037BC
	ldrb r1, [r0, #0xe]
	ldrb r2, [r0, #2]
	cmp r2, r1
	bge _080037BC
	movs r0, #0
	mov pc, lr
_080037BC:
	movs r0, #1
	mov pc, lr

    .thumb
	.global SetSpritePriority
SetSpritePriority: @ 0x080037C0
	cmp r1, #3
	bls _080037CE
	push {lr}
	bl sub_08010A68
	pop {r2}
	mov lr, r2
_080037CE:
	strb r1, [r0, #4]
	lsls r1, r1, #0xa
	ldrh r2, [r0, #0xc]
	movs r3, #0xf
	lsls r3, r3, #0xc
	ands r2, r3
	orrs r2, r1
	strh r2, [r0, #0xc]
	mov pc, lr

    .thumb
	.global SetSpritePalette
SetSpritePalette: @ 0x080037E0
	cmp r1, #0xf
	bls _080037E8
	bl sub_08010A70
_080037E8:
	ldrb r2, [r0, #4]
	lsls r2, r2, #0xa
	lsls r1, r1, #0xc
	orrs r1, r2
	strh r1, [r0, #0xc]
	mov pc, lr

    .thumb
	.global sub_80037F4
sub_80037F4: @ 0x080037F4
	ldrb r2, [r0, #3]
	cmp r1, r2
	bhs _08003806
	strb r1, [r0, #2]
	ldrb r2, [r0, #0xf]
	movs r3, #0x80
	ands r2, r3
	orrs r2, r1
	strb r2, [r0, #0xf]
_08003806:
	mov pc, lr

    .thumb
	.global sub_8003808
sub_8003808: @ 0x08003808
	cmp r1, #2
	blo _08003810
	bl sub_08010A80
_08003810:
	ldrb r2, [r0, #0x15]
	movs r3, #1
	ands r2, r3
	lsls r1, r1, #1
	orrs r2, r1
	strb r2, [r0, #0x15]
	mov pc, lr
	.align 2, 0

    .thumb
	.global sub_8003820
sub_8003820: @ 0x08003820
	cmp r1, #2
	blo _08003828
	bl sub_08010A88
_08003828:
	strb r2, [r0, #0x16]
	ldrb r2, [r0, #0x15]
	movs r3, #2
	ands r2, r3
	orrs r2, r1
	strb r2, [r0, #0x15]
	mov pc, lr
	.align 2, 0
_08003838: .4byte 0x02000F54
_0800383C: .4byte 0x02000360
_08003840: .4byte gOBJTileFramePtr
_08003844: .4byte gOAMBufferFramePtr
_08003848: .4byte gOAMBufferEnd
_0800384C: .4byte gOBJTileCount
_08003850: .4byte 0x000001FF

    .thumb
	.global sub_8003854
sub_8003854: @ 0x08003854
	bx pc
	nop
    .arm @ 0x08003858
	ldr pc, _080038E4

    .thumb
	.global sub_800385C
sub_800385C: @ 0x0800385C
	bx pc
	nop
	.arm
	ldr pc, _080038E8

    .thumb
	.global sub_8003864
sub_8003864: @ 0x08003864
	bx pc
	nop
    .arm @ 0x08003868
	ldr pc, _080038EC

    .thumb
	.global sub_800386C
sub_800386C: @ 0x0800386C
	bx pc
	nop
    .arm @ 0x08003870
	ldr pc, _080038F0

    .thumb
	.global CallARM_store_jump_and_other_value
CallARM_store_jump_and_other_value: @ 0x08003874
	bx pc
	nop
    .arm @ 0x08003878
	ldr pc, _080038F4

    .thumb
	.global sub_800387C
sub_800387C: @ 0x0800387C
	bx pc
	nop
    .arm @ 0x08003880
	ldr pc, _080038F8

    .thumb
	.global sub_8003884
sub_8003884: @ 0x08003884
	bx pc
	nop
    .arm @ 0x08003888
	ldr pc, _080038FC

    .thumb
	.global sub_800388C
sub_800388C: @ 0x0800388C
	bx pc
	nop
	.arm
	ldr pc, _08003900

    .thumb
	.global sub_8003894
sub_8003894: @ 0x08003894
	bx pc
	nop
    .arm @ 0x08003898
	ldr pc, _08003904

    .thumb
	.global sub_800389C
sub_800389C: @ 0x0800389C
	bx pc
	nop
	.arm
	ldr pc, _08003908

    .thumb
	.global sub_80038A4
sub_80038A4: @ 0x080038A4
	bx pc
	nop
    .arm @ 0x080038A8
	ldr pc, _0800390C

    .thumb
	.global sub_80038AC
sub_80038AC: @ 0x080038AC
	bx pc
	nop
	.arm
	ldr pc, _08003910
	
	.thumb
	.global sub_80038B4
sub_80038B4: @ 0x080038B4
	bx pc
	nop
	.arm
	ldr pc, _08003914

    .thumb
	.global sub_80038BC
sub_80038BC: @ 0x080038BC
	bx pc
	nop
    .arm @ 0x080038C0
	ldr pc, _08003918

    .thumb
	.global sub_80038C4
sub_80038C4: @ 0x080038C4
	bx pc
	nop
    .arm @ 0x080038C8
	ldr pc, _0800391C

    .thumb
	.global sub_80038CC
sub_80038CC: @ 0x080038CC
	bx pc
	nop
	.arm
	ldr pc, _08003920

    .thumb
	.global sub_80038D4
sub_80038D4: @ 0x080038D4
	bx pc
	nop
    .arm @ 0x080038D8
	ldr pc, _08003924

    .thumb
	.global sub_80038DC
sub_80038DC: @ 0x080038DC
	bx pc
	nop
    .arm @ 0x080038E0
	ldr pc, _08003928

	.align 2, 0
_080038E4: .4byte 0x03000000
_080038E8: .4byte 0x030000BC
_080038EC: .4byte 0x030000FC
_080038F0: .4byte 0x03000128
_080038F4: .4byte 0x03000194
_080038F8: .4byte 0x030001B0
_080038FC: .4byte 0x030001E8
_08003900: .4byte 0x030002BC
_08003904: .4byte 0x03000328
_08003908: .4byte 0x03000348
_0800390C: .4byte 0x0300048C
_08003910: .4byte 0x03000898
_08003914: .4byte 0x030008F4
_08003918: .4byte 0x03000920
_0800391C: .4byte 0x03000944
_08003920: .4byte 0x030009A0
_08003924: .4byte 0x03000384
_08003928: .4byte 0x030009F4

    .thumb
	.global sub_800392C
sub_800392C: @ 0x0800392C
	bx pc
	nop
    .arm
	ldr pc, _08003A84

    .thumb
	.global sub_8003934
sub_8003934: @ 0x08003934
	bx pc
	nop
	.arm
	ldr pc, _08003A88

	.thumb
	.global sub_800393C
sub_800393C: @ 0x0800393C
	bx pc
	nop
	.arm
	ldr pc, _08003A8C

    .thumb
	.global CallARM_FX_Mul
CallARM_FX_Mul: @ 0x08003944
	bx pc
	nop
    .arm
	ldr pc, _08003A90

    .thumb
	.global sub_800394C
sub_800394C: @ 0x0800394C
	bx pc
	nop
	.arm
	ldr pc, _08003A94

    .thumb
	.global sub_8003954
sub_8003954: @ 0x08003954
	bx pc
	nop
    .arm
	ldr pc, _08003A98

    .thumb
	.global sub_800395C
sub_800395C: @ 0x0800395C
	bx pc
	nop
	.arm
	ldr pc, _08003A9C

    .thumb
	.global sub_8003964
sub_8003964: @ 0x08003964
	bx pc
	nop
    .arm
	ldr pc, _08003AA0

    .thumb
	.global sub_800396C
sub_800396C: @ 0x0800396C
	bx pc
	nop
	.arm
	ldr pc, _08003AA4

    .thumb
	.global sub_8003974
sub_8003974: @ 0x08003974
	bx pc
	nop
    .arm
	ldr pc, _08003AA8

    .thumb
	.global sub_800397C
sub_800397C: @ 0x0800397C
	bx pc
	nop
	.arm
	ldr pc, _08003AAC

    .thumb
	.global sub_8003984
sub_8003984: @ 0x08003984
	bx pc
	nop
    .arm
	ldr pc, _08003AB0

    .thumb
	.global sub_800398C
sub_800398C: @ 0x0800398C
	bx pc
	nop
    .arm
	ldr pc, _08003AB4

    .thumb
	.global sub_8003994
sub_8003994: @ 0x08003994
	bx pc
	nop 
	.arm
	ldr pc, _08003AB8

    .thumb
	.global sub_800399C
sub_800399C: @ 0x0800399C
	bx pc
	nop
    .arm
	ldr pc, _08003ABC

    .thumb
	.global sub_80039A4
sub_80039A4: @ 0x080039A4
	bx pc
	nop
	.arm
	ldr pc, _08003AC0

    .thumb
	.global sub_80039AC
sub_80039AC: @ 0x080039AC
	bx pc
	nop
    .arm
	ldr pc, _08003AC4

    .thumb
	.global sub_80039B4
sub_80039B4: @ 0x080039B4
	bx pc
	nop
    .arm
	ldr pc, _08003AC8

    .thumb
	.global sub_80039BC
sub_80039BC: @ 0x080039BC
	bx pc
	nop
	.arm
	ldr pc, _08003ACC

    .thumb
	.global sub_80039C4
sub_80039C4: @ 0x080039C4
	bx pc
	nop
    .arm
	ldr pc, _08003AD0

    .thumb
	.global sub_80039CC
sub_80039CC: @ 0x080039CC
	bx pc
	nop
    .arm
	ldr pc, _08003AD4
	
	.thumb
	.global sub_80039D4
sub_80039D4: @ 0x080039D4
	bx pc
	nop
	.arm
	ldr pc, _08003AD8

    .thumb
	.global sub_80039DC
sub_80039DC: @ 0x080039DC
	bx pc
	nop
    .arm
	ldr pc, _08003ADC

    .thumb
	.global CallARM_SetOamMatrices
CallARM_SetOamMatrices: @ 0x080039E4
	bx pc
	nop
    .arm
	ldr pc, _08003AE0

    .thumb
	.global sub_80039EC
sub_80039EC: @ 0x080039EC
	bx pc
	nop
	.arm 
	ldr pc, _08003AE4

    .thumb
	.global sub_80039F4
sub_80039F4: @ 0x080039F4
	bx pc
	nop
    .arm
	ldr pc, _08003AE8

    .thumb
	.global sub_80039FC
sub_80039FC: @ 0x080039FC
	bx pc
	nop
    .arm
	ldr pc, _08003AEC

    .thumb
	.global sub_8003A04
sub_8003A04: @ 0x08003A04
	bx pc
	nop
    .arm
	ldr pc, _08003AF0

    .thumb
	.global sub_8003A0C
sub_8003A0C: @ 0x08003A0C
	bx pc
	nop
	.arm
	ldr pc, _08003AF4

    .thumb
	.global sub_8003A14
sub_8003A14: @ 0x08003A14
	bx pc
	nop
    .arm
	ldr pc, _08003AF8

    .thumb
CallARM_RenderSpriteFrame4: @ 0x08003A1C
	bx pc
	nop
    .arm
	ldr pc, _08003AFC

    .thumb
CallARM_RenderSpriteFrame3: @ 0x08003A24
	bx pc
	nop 
	.arm
	ldr pc, _08003B00

    .thumb
CallARM_RenderSpriteFrame2: @ 0x08003A2C
	bx pc
	nop
    .arm
	ldr pc, _08003B04

    .thumb
	.global sub_8003A34
sub_8003A34: @ 0x08003A34
	bx pc
	nop
    .arm
	ldr pc, _08003B08

    .thumb
	.global sub_8003A3C
sub_8003A3C: @ 0x08003A3C
	bx pc
	nop
	.arm
	ldr pc, _08003B0C

    .thumb
	.global sub_8003A44
sub_8003A44: @ 0x08003A44
	bx pc
	nop
    .arm
	ldr pc, _08003B10

    .thumb
	.global sub_8003A4C
sub_8003A4C: @ 0x08003A4C
	bx pc
	nop
    .arm
	ldr pc, _08003B14

    .thumb
	.global sub_8003A54
sub_8003A54: @ 0x08003A54
	bx pc
	nop
    .arm
	ldr pc, _08003B18

    .thumb
	.global sub_8003A5C
sub_8003A5C: @ 0x08003A5C
	bx pc
	nop
	.arm
	ldr pc, _08003B1C

    .thumb
	.global sub_8003A64
sub_8003A64: @ 0x08003A64
	bx pc
	nop
    .arm
	ldr pc, _08003B20

    .thumb
	.global sub_8003A6C
sub_8003A6C: @ 0x08003A6C
	bx pc
	nop
	.arm
	ldr pc, _08003B24

    .thumb
	.global sub_8003A74
sub_8003A74: @ 0x08003A74
	bx pc
	nop
    .arm
	ldr pc, _08003B28

    .thumb
	.global sub_8003A7C
sub_8003A7C: @ 0x08003A7C
	bx pc
	nop
    .arm
	ldr pc, _08003B2C
	.align 2, 0

_08003A84: .4byte 0x03000CEC
_08003A88: .4byte 0x03000EA8
_08003A8C: .4byte 0x03001064
_08003A90: .4byte 0x0300110C
_08003A94: .4byte 0x0300111C
_08003A98: .4byte 0x0300112C
_08003A9C: .4byte 0x03001154
_08003AA0: .4byte 0x0300117C
_08003AA4: .4byte 0x030011F8
_08003AA8: .4byte 0x0300125C
_08003AAC: .4byte 0x030012D8
_08003AB0: .4byte 0x03001324
_08003AB4: .4byte 0x03001348
_08003AB8: .4byte 0x0300136C
_08003ABC: .4byte 0x030013A4
_08003AC0: .4byte 0x030013DC
_08003AC4: .4byte 0x03001414
_08003AC8: .4byte 0x030014B0
_08003ACC: .4byte 0x03001550
_08003AD0: .4byte 0x03001588
_08003AD4: .4byte 0x030015B0
_08003AD8: .4byte 0x03001614
_08003ADC: .4byte 0x03001638
_08003AE0: .4byte 0x030016A8
_08003AE4: .4byte 0x030016E0
_08003AE8: .4byte 0x0300177C
_08003AEC: .4byte 0x03001814
_08003AF0: .4byte 0x03001894
_08003AF4: .4byte 0x03001934
_08003AF8: .4byte 0x030019F4
_08003AFC: .4byte 0x03001A78
_08003B00: .4byte 0x03001B5C
_08003B04: .4byte 0x03001C38
_08003B08: .4byte 0x03001D3C
_08003B0C: .4byte 0x03001DE8
_08003B10: .4byte 0x03001E1C
_08003B14: .4byte 0x03001EA0
_08003B18: .4byte 0x0300215C
_08003B1C: .4byte 0x03002450
_08003B20: .4byte 0x03002464
_08003B24: .4byte 0x030026EC
_08003B28: .4byte 0x03002774
_08003B2C: .4byte 0x0300281C
