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
        byte_2000314 = .; . += 1;
        . += 3; /* padding */
        dword_2000318 = .; . += 4;
        dword_200031C = .; . += 4;
        gPauseMenuLanguage = .; . += 1;
        . += 3; /* padding */
        gMatrices = .; . += 4;
        gMatricesCount = .; . += 4;
        dword_200032C = .; . += 4;
        byte_2000330 = .; . += 1;
        byte_2000331 = .; . += 1;
        byte_2000332 = .; . += 1;
        byte_2000333 = .; . += 1;
        byte_2000334 = .; . += 1;
        byte_2000335 = .; . += 1;
        gColorSpecEffectsSel = .; . += 2;

        . = 0x00000360;
        gSpriteDMATable = .; . += 0xC * 255;
        gSpriteDMACount = .; . += 1;
        byte_2000F55 = .; . += 1;
        byte_2000F56 = .; . += 1;
        byte_2000F57 = .; . += 1;
        gShowEraseDataScreen = .; . += 1;
        byte_2000F59 = .; . += 1;
        byte_2000F5A = .; . += 1;
        gClockFrameCounter = .; . += 1;
        gClockEnabled = .; . += 1;
        byte_2000F5D = .; . += 1;
        byte_2000F5E = .; . += 1;
        . += 1; /* padding */
        dword_2000F60 = .; . += 4;
        dword_2000F64 = .; . += 4;
        dword_2000F68 = .; . += 4;
        dword_2000F6C = .; . += 4;
        gUnused_ExecUnusedInputFunc = .; . += 1;

        . = 0x00000F74;
        gPlayerSprite = .; . += 0x1C;
        gPlayerShadowSprite = .; . += 0x1C;
        sprite_2000FAC = .; . += 0x1C;
        dword_2000FC8 = .; . += 4;
        byte_2000FCC = .; . += 120; /*  array */
        gGameStatus = .; . += 0x20;
        gSaveFiles = .; . += 8 * 3;
        byte_200107C = .; . += 1;
        byte_200107D = .; . += 1;
        gUnlockedLevels = .; . += 1;
        gTotalAmountOfLevels = .; . += 1;
        gLoadedRoomIndex = .; . += 2;
        gLoadedRoomLevel = .; . += 2;
        gLoadedRoomBgm = .; . += 2;
        
        . = 0x00001088;
        dword_2001088 = .; . += 4;
        byte_200108C = .; . += 1;
        byte_200108D = .; . += 1;
        byte_200108E = .; . += 1;
        . += 1; /* padding */
        word_2001090 = .; . += 2;
        word_2001092 = .; . += 2;

        . = 0x000010A8;
        gRoomGoal = .; . += 1;
        gWarpGoal = .; . += 1;
        byte_20010AA = .; . += 1;
        . += 1; /* padding */
        word_20010AC = .; . += 2;
        gContinueGame = .; . += 1;
        byte_20010AF = .; . += 1;
        byte_20010B0 = .; . += 1;
        byte_20010B1 = .; . += 1;
        file_string_1 = .; . += 0x1A;
        file_string_2 = .; . += 0x1A;
        file_string_3 = .; . += 0x1A;
        gTextSpeed = .; . += 1;
        . += 3; /* padding */
        dword_2001104 = .; . += 4;
        dword_2001108 = .; . += 4;
        byte_200110C = .; . += 1;
        . += 3; /* padding */
        dword_2001110 = .; . += 4;
        dword_2001114 = .; . += 4;
        gIsCameraMovingX = .; . += 1;
        gIsCameraMovingY = .; . += 1;

        . = 0x0000112A;
        byte_200112A = .; . += 1;

        . = 0x000011CC;
        src/environment_effects.o(.bss);

        gPoisonEffectEnabled = .; . += 4;
        gPoisonHitTimer = .; . += 4;
        dword_20011F8 = .; . += 4;
        dword_20011FC = .; . += 4;

        . = 0x00001200;
        /* debug ram */
        byte_2001200 = .; . += 1;
        gMainFrameCounter = .; . += 1;
        gDebugFPS = .; . += 1;
        gDebugESN = .; . += 1;
        gDebugESV = .; . += 1;
        . += 3; /* padding */
        dword_2001208 = .; . += 4;
        dword_200120C = .; . += 4;
        dword_2001210 = .; . += 4;
        dword_2001214 = .; . += 4;
        dword_2001218 = .; . += 4;
        dword_200121C = .; . += 4;
        dword_2001220 = .; . += 4;
        dword_2001224 = .; . += 4;
        dword_2001228 = .; . += 4;
        dword_200122C = .; . += 4;
        dword_2001230 = .; . += 4;
        dword_2001234 = .; . += 4;
        dword_2001238 = .; . += 4;
        dword_200123C = .; . += 4;
        dword_2001240 = .; . += 4;
        dword_2001244 = .; . += 4;
        dword_2001248 = .; . += 4;
        dword_200124C = .; . += 4;
        dword_2001250 = .; . += 4;
        dword_2001254 = .; . += 4;
        dword_2001258 = .; . += 4;
        dword_200125C = .; . += 4;
        dword_2001260 = .; . += 4;
        dword_2001264 = .; . += 4;
        dword_2001268 = .; . += 4;
        dword_200126C = .; . += 4;
        dword_2001270 = .; . += 4;
        dword_2001274 = .; . += 4;
        dword_2001278 = .; . += 4;
        dword_200127C = .; . += 4;
        dword_2001280 = .; . += 4;
        dword_2001284 = .; . += 4;
        dword_2001288 = .; . += 4;
        dword_200128C = .; . += 4;
        dword_2001290 = .; . += 4;
        dword_2001294 = .; . += 4;
        dword_2001298 = .; . += 4;
        dword_200129C = .; . += 4;
        dword_20012A0 = .; . += 4;
        dword_20012A4 = .; . += 4;
        dword_20012A8 = .; . += 4;
        dword_20012AC = .; . += 4;
        dword_20012B0 = .; . += 4;
        dword_20012B4 = .; . += 4;
        dword_20012B8 = .; . += 4;
        dword_20012BC = .; . += 4;
        dword_20012C0 = .; . += 4;
        dword_20012C4 = .; . += 4;
        dword_20012C8 = .; . += 4;
        dword_20012CC = .; . += 4;
        dword_20012D0 = .; . += 4;
        dword_20012D4 = .; . += 4;
        dword_20012D8 = .; . += 4;
        dword_20012DC = .; . += 4;
        dword_20012E0 = .; . += 4;
        dword_20012E4 = .; . += 4;
        dword_20012E8 = .; . += 4;
        dword_20012EC = .; . += 4;
        dword_20012F0 = .; . += 4;
        dword_20012F4 = .; . += 4;
        dword_20012F8 = .; . += 4;
        dword_20012FC = .; . += 4;
        dword_2001300 = .; . += 4;
        dword_2001304 = .; . += 4;
        dword_2001308 = .; . += 4;
        dword_200130C = .; . += 4;
        dword_2001310 = .; . += 4;
        dword_2001314 = .; . += 4;
        dword_2001318 = .; . += 4;
        dword_200131C = .; . += 4;
        dword_2001320 = .; . += 4;
        dword_2001324 = .; . += 4;
        dword_2001328 = .; . += 4;
        dword_200132C = .; . += 4;
        dword_2001330 = .; . += 4;
        dword_2001334 = .; . += 4;
        dword_2001338 = .; . += 4;
        dword_200133C = .; . += 4;
        dword_2001340 = .; . += 4;
        dword_2001344 = .; . += 4;
        dword_2001348 = .; . += 4;
        dword_200134C = .; . += 4;
        dword_2001350 = .; . += 4;
        dword_2001354 = .; . += 4;
        dword_2001358 = .; . += 4;
        dword_200135C = .; . += 4;
        dword_2001360 = .; . += 4;
        dword_2001364 = .; . += 4;
        dword_2001368 = .; . += 4;
        dword_200136C = .; . += 4;
        byte_2001370 = .; . += 1;
        gDebugString = .; . += 0x17;
        gDebugInfoIndex = .; . += 1;
        gDebugMESN = .; . += 1;
        byte_200138A = .; . += 1;
        . += 1; /* padding */
        gDebugESNFrameCount = .; . += 4;
        dword_2001390 = .; . += 4;
        gDebugESNSum = .; . += 4;
        dword_2001398 = .; . += 4;
        gDebugTextBox1  = .; . += 0x14;
        gDebugTextBox2  = .; . += 0x14;
        gDebugTextBox3  = .; . += 0x14;
        gDebugTextBox4  = .; . += 0x14;
        gDebugTextBox5  = .; . += 0x14;
        gDebugTextBox6  = .; . += 0x14;
        gDebugTextBox7  = .; . += 0x14;
        gDebugTextBox8  = .; . += 0x14;
        byte_200143C = .; . += 1;
        byte_200143D = .; . += 1;
        byte_200143E = .; . += 1;
        byte_200143F = .; . += 1;
        byte_2001440 = .; . += 1;
        byte_2001441 = .; . += 1;
        byte_2001442 = .; . += 1;
        byte_2001443 = .; . += 1;
        dword_2001444 = .; . += 4;
        dword_2001448 = .; . += 4;
        dword_200144C = .; . += 4;
        dword_2001450 = .; . += 4;
        dword_2001454 = .; . += 4;
        word_2001458 = .; . += 2;
        byte_200145A = .; . += 1;
        byte_200145B = .; . += 1;
        /* end of debug ram */

        . = 0x0000145C;
        word_200145C = .; . += 2;
        word_200145E = .; . += 2;
        gBGInitOffsetHorizontal = .; . += 2;
        gBGInitOffsetVertical = .; . += 2;
        gPlayerInitPixelPosX = .; . += 2;
        gPlayerInitPixelPosY = .; . += 2;
        gCameraPixelX = .; . += 2;
        gCameraPixelY = .; . += 2;
        byte_200146C = .; . += 1;
        . += 3; /* padding */
        dword_2001470 = .; . += 4;

        gTileAnimTable = .; . += 0xC * 255;

        gLoadedTileAnimCount = .; . += 4;
        gTilesCount = .; . += 4;
        byte_2002070 = .; . += 1;
        . += 3; /* padding */
        dword_2002074 = .; . += 4;
        dword_2002078 = .; . += 4;
        dword_200207C = .; . += 4;
        dword_2002080 = .; . += 4;
        dword_2002084 = .; . += 4;
        dword_2002088 = .; . += 4;
        gBG0Static = .; . += 1;
        gBG1Static = .; . += 1;
        gBG2Static = .; . += 1;
        gBG3Static = .; . += 1;

        gPreviousPlayerState = .; . += 2;
        gPlayerState = .; . += 2;

        . = 0x0000209A;
        stru_200209A = .; . += 0x17;
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
        . += 3; /* padding */
        dword_20021F4 = .; . += 4;
        byte_20021F8 = .; . += 1;
        byte_20021F9 = .; . += 1;
        . += 2; /* padding */
        dword_20021FC = .; . += 4;
        dword_2002200 = .; . += 4;

        . = 0x00002E4A;
        byte_2002E4A = .; . += 1;

        . = 0x00002EC2;
        word_2002EC2 = .; . += 2;

        . = 0x00007884;
        gIsPaletteEffectsActive = .; . += 1;

        . = 0x0000DCE0;
        src/alloc.o(.bss);

        gEntitySection = .; . += 4;

        . = 0x0003DFC0;
        dword_203DFC0 = .; . += 4;
        dword_203DFC4 = .; . += 4;

        . = 0x0003DFD7;
        gInInteractionArea = .; . += 1;

        . = 0x0003DFE6;
        byte_203DFE6 = .; . += 1;
        byte_203DFE7 = .; . += 1;

        . = 0x0003E16C;
        byte_203E16C = .; . += 1;

        . = 0x0003EA88;
        gCanChangeBgm = .; . += 1;
        byte_203EA89 = .; . += 1;
        gBgmVolumeIndex = .; . += 1;
        gSfxVolumeIndex = .; . += 1;
        byte_203EA8C = .; . += 1;
        . += 3; /* padding */
        gMenuId = .; . += 1;
        gMenuParentId = .; . += 1;
        . += 2; /* padding */
        gMenu = .; . += 0x40;
        
        src/save.o(.bss);
        src/random.o(.bss);

        . = 0x0003F4D8;
        src/pause_menu.o(.bss);

        . = 0x0003F998;
        word_203F998 = .; . += 2;
        word_203F99A = .; . += 2;
        byte_203F99C = .; . += 1;
        byte_203F99D = .; . += 1;
        byte_203F99E = .; . += 1;

        . = 0x0003F99F;
        byte_203F99F = .; . += 1;

        . = 0x0003F9A1;
        byte_203F9A1 = .; . += 1;

        . = 0x0003FA35;
        byte_203FA35 = .; . += 1;

        . = 0x0003FA7C;
        dword_203FA7C = .; . += 4;
        dword_203FA80 = .; . += 4;
        dword_203FA84 = .; . += 4;
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

        . = 0x00003588;
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
        src/player.o(.text);
        asm/chunk3.o(.text);
        asm/savefile.o(.text);
        asm/chunk4.o(.text);
        src/environment_effects.o(.text);
        src/debug.o(.text);
        asm/chunk5.o(.text);
        src/room.o(.text);
        asm/room.o(.text);
        asm/chunk11.o(.text);
        src/player_actions.o(.text);
        asm/player_actions.o(.text);
        src/pregame.o(.text);
        asm/chunk9.o(.text);
        src/alloc.o(.text);
        asm/chunk6.o(.text);
        src/menu.o(.text);
        asm/menu.o(.text);
        src/save.o(.text);
        src/random.o(.text);
        asm/random.o(.text);
        src/8045038.o(.text);
        src/pause_menu.o(.text);
        asm/chunk8.o(.text);
        asm/eeprom.o(.text);
        *libgcc.a:*_call_via_rX*.o(.text*);
        asm/chunk_end.o(.text);

        /* data */
        asm/data_paletteBytes.o(.rodata);
        asm/data_debugText.o(.rodata);
        asm/data_playerBehavior.o(.rodata);
        asm/data_text.o(.rodata);
        asm/data.o(.rodata);
        asm/eeprom.o(.rodata);
        asm/data1.o(.rodata);
    }

    /* Discard everything not specifically mentioned above. */
    /DISCARD/ :
    {
        *(*);
    }
}
