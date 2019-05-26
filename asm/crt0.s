
	.syntax unified

	.global Start

	.text

	.arm

@	ARM_FUNC_START sub_08000000
sub_08000000: @ 0x08000000
	b _080000C0
	.space 188
	
_080000C0:
	ldr r0, _080001AC
	mov r1, #0
	strh r1, [r0]
	ldr r0, _080001B0
	ldr r1, [r0]
	mvn r1, r1
	and r1, r1, #0xf
	cmp r1, #0xf
	bne _0800010C
	ldr ip, _080001B4
	mov r2, #1
	strb r2, [ip]
	ldr ip, _080001B8
	mov r2, #0
	strb r2, [ip]
	ldr ip, _080001BC
	mov r2, #0xf
	strb r2, [ip]
	b _08000130
_0800010C:
	ldr ip, _080001C0
	mov r2, #0
	strb r2, [ip]
	ldr ip, _080001C4
	mov r2, #0
	strb r2, [ip]
	ldr ip, _080001C8
	mov r2, #0
	strb r2, [ip]
_08000130:
	ldr ip, _080001CC
	mov r2, #0
	strb r2, [ip]
	mov r2, #0x214
	ldr r1, [r0]
	mvn r1, r1
	and r1, r1, r2
	cmp r1, r2
	bne _0800015C
	mov r2, #1
	strb r2, [ip]
_0800015C:
	mov r0, #0x12
	msr cpsr_c, r0
	ldr sp, _080001A8
	ldr r0, _080001D0
	ldr r1, _080001D4
	str r0, [r1]
	ldr r1, _080001D8
	str r0, [r1]
	mov r0, #0x1f
	msr cpsr_c, r0
	ldr sp, _080001A4
	ldr r0, _080001DC
	ldr r1, _080001E0
	str r0, [r1]
	ldr r1, _080001E4
	str r0, [r1]
	ldr r1, _080001E8
	bx r1
	.align 2, 0
_080001A4: .4byte 0x03007B9C
_080001A8: .4byte 0x03007FA0
_080001AC: .4byte 0x04000208
_080001B0: .4byte 0x04000130
_080001B4: .4byte 0x02000F59
_080001B8: .4byte 0x02000F5A
_080001BC: .4byte 0x030032C6
_080001C0: .4byte 0x02000F59
_080001C4: .4byte 0x02000F5A
_080001C8: .4byte 0x030032C6
_080001CC: .4byte 0x02000F58
_080001D0: .4byte 0x89ABCDEF
_080001D4: .4byte 0x03007FA0
_080001D8: .4byte 0x03007BA0
_080001DC: .4byte 0x12345678
_080001E0: .4byte 0x03007B9C
_080001E4: .4byte 0x0300749C
_080001E8: .4byte 0x08009705
