    .syntax unified

    .text

    .thumb
    .global HuffUnCompReadNormal
HuffUnCompReadNormal: @ 0x080643C4
	svc #0x13
	bx lr

    .thumb
    .global LZ77UnCompReadNormalWrite16bit
LZ77UnCompReadNormalWrite16bit: @ 0x080643C8
	svc #0x12
	bx lr

    .thumb
    .global RegisterRamReset
RegisterRamReset: @ 0x080643CC
	svc #1
	bx lr

    .thumb
	.global sub_080643D0
sub_080643D0: @ 0x080643D0
	ldr r3, _080643E0
	movs r2, #0
	strb r2, [r3]
	ldr r1, _080643E4
	mov sp, r1
	svc #1
	svc #0
	movs r0, r0
	.align 2, 0
_080643E0: .4byte 0x04000208
_080643E4: .4byte 0x03007F00
