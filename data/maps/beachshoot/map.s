	.syntax unified
	.text
	.arm

BEACHSHOOT_header:
	.2byte 416 // tiles1 count
	.2byte 2560 // metatiles1 count
	.2byte 0 // tiles2 count
	.2byte 0 // metatiles1 count
	.2byte 4 // enabled backgrounds
