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
		asm/crt0.o(.text);
		asm/chunk0.o(.text);
		asm/chunk1.o(.text);
		asm/audio.o(.text);
		asm/chunk2.o(.text);
		src/main.o(.text);
		asm/main.o(.text);
		asm/player.o(.text);
		asm/chunk3.o(.text);
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