SECTIONS
{
    . = 0x2000000;

    ewram (NOLOAD) :
    ALIGN(0)
    {
        . = 0x00000000;
        gDestinationWarps = .; . += 4;
        gDestinationWarpCount = .; . += 2;

        . = 0x00000314;
        src/main.o(.bss);
        src/debug.o(.bss);
        src/room.o(.bss);
        src/player.o(.bss);

        byte_20021F0 = .; . += 1;
        . += 3; /* padding */
        dword_20021F4 = .; . += 4;
        byte_20021F8 = .; . += 1;
        byte_20021F9 = .; . += 1;
        . += 2; /* padding */
        dword_20021FC = .; . += 4;
        dword_2002200 = .; . += 4;

        . = 0x00002232;
        byte_2002232 = .; . += 1;
        byte_2002233 = .; . += 1;

        . = 0x00002E49;
        byte_2002E49 = .; . += 1;
        byte_2002E4A = .; . += 1;

        . = 0x00002E4C;
        byte_2002E4C = .; . += 1;
        byte_2002E4D = .; . += 1;
        byte_2002E4E = .; . += 1;

        . = 0x00002EC0;
        word_2002EC0 = .; . += 2;
        word_2002EC2 = .; . += 2;
        unk_2002EC4 = .; . += 4; /* probably an array of structs */

        . = 0x000046C4;
        unk_20046C4 = .; . += 4; /* probably an array of structs */

        . = 0x00005EC4;
        unk_2005EC4 = .; . += 1; /* unknown size */

        . = 0x000076C4;
        stru_20076C4 = .; . += 28 * 5;

        . = 0x00007884;
        gIsPaletteEffectsActive = .; . += 1;

        . = 0x0000DCE0;
        src/alloc.o(.bss);

        gEntitySection = .; . += 4;

        . = 0x0003DFB8;
        dword_203DFB8 = .; . += 4;

        . = 0x0003DFC0;
        dword_203DFC0 = .; . += 4;
        dword_203DFC4 = .; . += 4;
        byte_203DFC8 = .; . += 1;
        . += 1; /* padding */
        word_203DFCA = .; . += 2;

        . = 0x0003DFD4;
        byte_203DFD4 = .; . += 1;
        byte_203DFD5 = .; . += 1;

        . = 0x0003DFD7;
        gInInteractionArea = .; . += 1;
        byte_203DFD8 = .; . += 1;
        byte_203DFD9 = .; . += 1;
        byte_203DFDA = .; . += 1;
        . += 1; /* padding */
        dword_203DFDC = .; . += 4;
        dword_203DFE0 = .; . += 4;
        
        . = 0x0003DFE6;
        byte_203DFE6 = .; . += 1;
        byte_203DFE7 = .; . += 1;
        byte_203DFE8 = .; . += 1;
        byte_203DFE9 = .; . += 1;

        . = 0x0003E10F;
        byte_203E10F = .; . += 1;
        
        . = 0x0003E16A;
        byte_203E16A = .; . += 1;
        byte_203E16B = .; . += 1;
        byte_203E16C = .; . += 1;

        . = 0x0003EA88;
        src/audio_b.o(.bss);
        src/menu.o(.bss);
        src/save.o(.bss);
        src/random.o(.bss);
        src/audio_a.o(.bss);
        src/pause_menu.o(.bss);

        . = 0x0003F8B4;
        dword_203F8B4 = .; . += 4;

        . = 0x0003F98C;
        src/script.o(.bss);
        
        . = 0x0003FA35;
        byte_203FA35 = .; . += 1;

        . = 0x0003FA5C;
        dword_203FA5C = .; . += 4;

        . = 0x0003FA7C;
        dword_203FA7C = .; . += 4;
        dword_203FA80 = .; . += 4;
        dword_203FA84 = .; . += 4;
        byte_203FA88 = .; . += 1;

        . = 0x0003FA8C;
        dword_203FA8C = .; . += 4;
        dword_203FA90 = .; . += 4;
        byte_203FA94 = .; . += 1;
        byte_203FA95 = .; . += 1;
        byte_203FA96 = .; . += 1;
    }

    . = 0x3000000;

    .bss (NOLOAD) :
    ALIGN(0)
    {
        . = 0x00000000;
        unk_3000000 = .;  . += 0x1D27; /* space for ARM functions */

        . = 0x000028FC;
        gFloorPlaneResult = .; . += 0x54;
        stru_3002950 = .; . += 0x54;
        gWallPlaneResult = .; . += 0x54;
        byte_30029F8 = .; . += 1;

        . = 0x00002A6C;
        gFunctionArray = .; . += 4 * 14;
        gNullsub_3 = .; . += 4;
        gNullsub_4 = .; . += 4;
        gNullsub_5 = .; . += 4;
        gTileAnimQueue = .; . += 8 * 255;
        gTileAnimQueueIndex = .; . += 1;
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
        gPlayerShadowPos = .; . += 0xC;
        stru_30032E8 = .; . += 0xC;
        stru_30032F4 = .; . += 0xC;
        dword_3003300 = .; . += 4;
        dword_3003304 = .; . += 4;
        dword_3003308 = .; . += 4;
        gCameraPosX = .; . += 4;
        gCameraPosY = .; . += 4;
        gCameraGoalPosX = .; . += 4;
        gCameraGoalPosY = .; . += 4;
        stru_300331C = .; . += 0xC;
        gPlayerPosTemp = .; . += 0xC;
        gPlayerShadowPosTemp = .; . += 0xC;

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
        gTileSetBG = .; . += 4 * 4;
        gMapPixelSizeX = .; . += 2;
        gMapPixelSizeY = .; . += 2;
        stru_3003578 = .; . += 0x10;
        byte_3003588 = .; . += 1;
        . += 3; /* padding */
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

        . = 0x00006EF3;
        byte_3006EF3 = .; . += 1;

        . = 0x00007FFA;
        byte_3007FFA = .; . += 1;
        . += 1; /* padding */
        dword_3007FFC = .; . += 4;
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
        src/debug.o(.text);
        src/room.o(.text);
        asm/room.o(.text);
        src/player.o(.text);
        src/pregame.o(.text);
        asm/chunk9.o(.text);
        src/alloc.o(.text);
        asm/chunk6.o(.text);
        src/audio_b.o(.text);
        src/menu.o(.text);
        asm/menu.o(.text);
        src/save.o(.text);
        src/random.o(.text);
        asm/random.o(.text);
        src/audio_a.o(.text);
        src/pause_menu.o(.text);
        asm/chunk8.o(.text);
        src/script.o(.text);
        asm/chunk13.o(.text);
        src/gameover.o(.text);
        asm/chunk12.o(.text);
        asm/eeprom.o(.text);
        *libgcc.a:*_call_via_rX*.o(.text*);
        asm/chunk_end.o(.text);

        /* data */
        src/main.o(.rodata);
        asm/data_debugText.o(.rodata);
        src/player.o(.rodata);
        asm/data_playerBehavior.o(.rodata);
        asm/data_text.o(.rodata);
        asm/data.o(.rodata);
        src/script.o(.rodata);
        src/scripts.o(.rodata);
        asm/data2.o(.rodata);
        asm/eeprom.o(.rodata);
        asm/data1.o(.rodata);
    }

    /* Discard everything not specifically mentioned above. */
    /DISCARD/ :
    {
        *(*);
    }
}
