SECTIONS
{
	. = 0x2000000;

	ewram (NOLOAD) :
    ALIGN(0)
	{
		. = 0x00001201;
		gMainFrameCounter = .; . += 1;
		gDebugFPS = .; . += 1;
		gDebugESN = .; . += 1;
		gDebugESV = .; . += 1;

		. = 0x00002092;
		gPlayerState = .; . += 2;

		. = 0x000020BE;
		gPlayerStateSettings = .; . += 2 * 128;
	}

	. = 0x3000000;

	.bss (NOLOAD) :
    ALIGN(0)
	{
		. = 0x00002AAC;
		gNullsub_5 = .; . += 4;

		. = 0x000032C4;
		gPreviousKeys = .; . += 2;
		gKeysPressed = .; . += 2;
		gKeysDown = .; . += 2;
		gKeyInput = .; . += 2;

		. = 0x000043A8;
		/* audio ram */
		audio_buff_tog = .; . += 4;
		audio_cur_tune = .; . += 4;
		audio_new_tune = .; . += 4;
		audio_delta_time = .; . += 8 * 16;
		audio_delta_time_dec = .; . += 4;
		audio_ppqn = .; . += 4;
		audio_tempo = .; . += 4;
		/* start audio_buffers */
		audio_buff0_dat = .; . += 0xE0;
		audio_noise0_dat = .; . += 0xE0;
		audio_buff1_dat = .; . += 0xE0;
		audio_noise1_dat = .; . += 0xE0;
		/* end audio_buffers */
		audio_precalc_buff = .; . += 0x1C0;
		audio_pitchbend = .; . += 4 * 16;
		audio_modulation = .; . += 8 * 16;
		audio_chan_vols = .; . += 16;
		audio_monophonic_op = .; . += 16;
		audio_chan_notes = .; . += 0x28 * 16 * 6;
		audio_chan_fx = .; . += 0x28 * 4;
		audio_chan_dly = .; . += 4 * 4;
		audio_chan_id = .; . += 4 * 4;
		audio_3005A20 = .; . += 4 * 4;
		audio_num_tracks = .; . += 4;
		audio_vmap_ptr = .; . += 4;
		audio_voices = .; . += 4 * 16;
		audio_samp_list = .; . += 4;
		audio_midi_tracks = .; . += 4 * 16;
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