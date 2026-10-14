
    .syntax unified

    .text

    .thumb
    .global CallARM_DivRemainder
CallARM_DivRemainder: @ 0x08064834
	bx pc
	nop 
	.arm
	b sub_800393C
