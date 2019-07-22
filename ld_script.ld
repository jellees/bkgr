SECTIONS
{
	. = 0x2000000;

	ewram (NOLOAD) :
    ALIGN(0)
	{
		. = 0x00000336;
		gColorSpecEffectsSel = .; . += 2;

		. = 0x00000F55;
		byte_2000F55 = .; . += 1;

		. = 0x00000F57;
		byte_2000F57 = .; . += 1;

		. = 0x00000F5D;
		byte_2000F5D = .; . += 1;

		. = 0x00000F70;
		gUnused_ExecUnusedInputFunc = .; . += 1;

		. = 0x00000F74;
		gPlayerSprite = .; . += 0x1C;
		gPlayerShadowSprite = .; . += 0x1C;

		. = 0x00000FC8;
		dword_2000FC8 = .; . += 4;

		. = 0x00001044;
		gGameStatus = .; . += 0x20;

		. = 0x00001080;
		gLoadedRoomIndex = .; . += 2;
		gLoadedRoomLevel = .; . += 2;
		gLoadedRoomBgm = .; . += 2;

		. = 0x000010AC;
		word_20010AC = .; . += 2;

		. = 0x0000110C;
		byte_200110C = .; . += 1;

		. = 0x000011CC;
		src/palette_effects.o(.bss);

		gPoisonEffectEnabled = .; . += 4;
		gPoisonHitTimer = .; . += 4;

		. = 0x00001201;
		gMainFrameCounter = .; . += 1;
		gDebugFPS = .; . += 1;
		gDebugESN = .; . += 1;
		gDebugESV = .; . += 1;

		. = 0x00001468;
		gCameraPixelX = .; . += 2;
		gCameraPixelY = .; . += 2;

		. = 0x00001470;
		dword_2001470 = .; . += 4;

		. = 0x00002092;
		gPlayerState = .; . += 2;

		. = 0x000020B0;
		byte_20020B0 = .; . += 1;
		byte_20020B1 = .; . += 1;
		byte_20020B2 = .; . += 1;
		byte_20020B3 = .; . += 1;
		dword_20020B4 = .; . += 4;
		dword_20020B8 = .; . += 4;

		. = 0x000020BC;
		byte_20020BC = .; . += 1;
		. += 1; /* padding */
		gPlayerStateSettings = .; . += 2 * 128;

		. = 0x000021F0;
		byte_20021F0 = .; . += 1;

		. = 0x000021F8;
		byte_20021F8 = .; . += 1;

		. = 0x00002E4A;
		byte_2002E4A = .; . += 1;

		. = 0x00007884;
		gIsPaletteEffectsActive = .; . += 1;

		. = 0x0000ED20;
		gHeaps = .; . += 0x18 * 6;

		. = 0x0003DFC4;
		dword_203DFC4 = .; . += 4;

		. = 0x0003EA89;
		byte_203EA89 = .; . += 1;
		gBgmVolumeIndex = .; . += 1;
		gSfxVolumeIndex = .; . += 1;
		byte_203EA8C = .; . += 1;

		. = 0x0003F998;
		word_203F998 = .; . += 2;
		word_203F99A = .; . += 2;
		byte_203F99C = .; . += 1;

		. = 0x0003F99F;
		byte_203F99F = .; . += 1;

		. = 0x0003F9A1;
		byte_203F9A1 = .; . += 1;

		. = 0x0003FA35;
		byte_203FA35 = .; . += 1;
	}

	. = 0x3000000;

	.bss (NOLOAD) :
    ALIGN(0)
	{
		. = 0x00002950;
		byte_3002950 = .; . += 4; /* array */

		. = 0x00002AA4;
		gNullsub_3 = .; . += 4;
		gNullsub_4 = .; . += 4;
		gNullsub_5 = .; . += 4;

		. = 0x000032A9;
		gIsSlideMiniGame = .; . += 1;
		. += 2; /* padding */
		dword_30032AC = .; . += 4;
		dword_30032B0 = .; . += 4;
		dword_30032B4 = .; . += 4 * 2;
		dword_30032BC = .; . += 4 * 2;

		. = 0x000032C4;
		gPreviousKeys = .; . += 2;
		gKeysPressed = .; . += 2;
		gKeysDown = .; . += 2;
		gKeyInput = .; . += 2;
		dword_30032CC = .; . += 4;
		gPlayerPos = .; . += 0xC;
		dword_30032DC = .; . += 0xC;

		. = 0x00003340;
		gBGControlActions = .; . += 1;
		gBGOffsetHorizontal = .; . += 1;
		gBGOffsetVertical = .; . += 1;
		. += 1; /* padding */
		gRoomHeader = .; . += 0x64;
		gEnabledBGs = .; . += 2;
		gBG0VerticalBuffer = .; . += 0x40;
		gBG1VerticalBuffer = .; . += 0x40;
		gBG2VerticalBuffer = .; . += 0x40;
		gBG3VerticalBuffer = .; . += 0x40;
		gBG0HorizontalBuffer = .; . += 0x2C;
		gBG1HorizontalBuffer = .; . += 0x2C;
		gBG2HorizontalBuffer = .; . += 0x2C;
		gBG3HorizontalBuffer = .; . += 0x2C;
		. += 2; /* padding */
		gBGMapOffsetVertical = .; . += 4;
		gBGMapOffsetHorizontal = .; . += 4;
		gBG0TileSet = .; . += 4;
		gBG1TileSet = .; . += 4;
		gBG2TileSet = .; . += 4;
		gBG3TileSet = .; . += 4;
		gMapPixelSizeX = .; . += 2;
		gMapPixelSizeY = .; . += 2;

		. = 0x0000358C;
		gOAMBuffer2 = .; . += 0x400;
		gOAMBuffer1 = .; . += 0x400;
		gOAMBufferFramePtr = .; . += 4;
		gOAMBufferEnd = .; . += 4;
		gOBJTileFramePtr = .; . += 4;
		gOBJTileCount = .; . += 4;
		gOBJTileFrameStart = .; . += 4;
		dword_3003DA0 = .; . += 4;

		. = 0x00003DA4;
		dword_3003DA4 = .; . += 4; /* unknown size */

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
		src/palette_effects.o(.text);
		asm/debug.o(.text);
		asm/chunk5.o(.text);
		src/alloc.o(.text);
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