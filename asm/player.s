
    .syntax unified
    
    .text

    .thumb
	.global CameraGetVelocity
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
