SECTIONS
{
	. = 0x2000000;

	ewram (NOLOAD) :
    ALIGN(0)
	{
		. = 0x1201;
		gMainFrameCounter = .; . += 1;
	}

	. = 0x3000000;

	.bss (NOLOAD) :
    ALIGN(0)
	{
		. = 0x2AAC;
		/* 0x03002AAC */
		gNullsub_5 = .; . += 4;
		. += 0x18F8;
		/* 0x030043A8 */
		asm/audio.o(.bss);
	}

	. = 0x8000000;

	.text :
	{
		/* code */
		asm/crt0.o(.text);
		asm/chunk0.o(.text);
		asm/chunk1.o(.text);
		asm/audio.o(.text);
		asm/collision.o(.text);
		src/main.o(.text);
		asm/main.o(.text);
		asm/player.o(.text);
		asm/chunk3.o(.text);
		asm/savefile.o(.text);
		asm/chunk4.o(.text);
		asm/palette_effects.o(.text);
		asm/debug.o(.text);
		asm/chunk5.o(.text);
		asm/alloc.o(.text);
		asm/chunk6.o(.text);
		asm/menu.o(.text);
		asm/chunk7.o(.text);

		/* data */
		asm/data_paletteBytes.o(.text);
		asm/data_debugText.o(.text);
		asm/data_playerBehavior.o(.text);
		asm/data_text.o(.text);
		asm/data.o(.text);
	}

    /* Discard everything not specifically mentioned above. */
    /DISCARD/ :
    {
        *(*);
    }
}