

    .syntax unified

    .text

    .thumb
    .global audio_init_p
audio_init_p: @ 0x08045038
	push {lr}
	bl audio_init
	pop {r0}
	bx r0
	.align 2, 0

    .thumb
    .global sub_8045044
sub_8045044: @ 0x08045044
	push {lr}
	bl audio_vsync_asm
	pop {r0}
	bx r0
	.align 2, 0

    .thumb
	.global seq_update_p
seq_update_p: @ 0x08045050
	push {lr}
	bl audio_asmprocess
	pop {r0}
	bx r0
	.align 2, 0
