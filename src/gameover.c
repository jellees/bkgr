#include "global.h"
#include "menu.h"
#include "pause_menu.h"
#include "main.h"
#include "common.h"

void sub_80629E8() {
    gDisplayControl = REG_DISPCNT;
    gBG0Control = REG_BG0CNT;
    gBG1Control = REG_BG1CNT;
    gBG2Control = REG_BG2CNT;
    gBG3Control = REG_BG3CNT;

    audio_halt_all_fx();
    pause_efx();
    sub_80270AC(4095, 1);
    gLoadedTileAnimCount = 0;
    gTileAnimQueueIndex = 0;
    sub_80409DC();
    sub_8016B0C();
    byte_200108E = 0;
    sub_805E1DC(1);
    byte_203F4E0 = 0;
    show_gameover_screen();
    InitMenu(4u, gPauseMenuLanguage);
    gMenuId = 4;
    gMenuParentId = -1;
    sub_08062D04();

    SetTextSpriteCount(0);
    DmaFill32(170, gOAMBuffer1, 256);
    gOAMBufferFramePtr = gOAMBuffer1;
    gOAMBufferEnd = &gOAMBuffer1[0x100];
    gOBJTileFramePtr = (void*)0x6014000;
    gOBJTileCount = 512;

    if (!byte_20010B0) {
        REG_DISPCNT = gDisplayControl;
        REG_BG0CNT = gBG0Control;
        REG_BG1CNT = gBG1Control;
        REG_BG2CNT = gBG2Control;
        REG_BG3CNT = gBG3Control;
    } else {
        REG_DISPCNT = word_2000342;
        REG_BG0CNT = word_2000344;
        REG_BG1CNT = word_2000346;
        REG_BG2CNT = word_2000348;
        REG_BG3CNT = word_200034A;
        if (gIsSlideMiniGame) {
            gIsSlideMiniGame = 0;
            gNullsub_3 = nullsub_3;
            gNullsub_4 = nullsub_4;
            gNullsub_5 = nullsub_5;
        }
        byte_20010B0 = 0;
    }

    if (!gGameStatus.enableExtraHealth) {
        gGameStatus.health = gGameStatus.maxHealth;
    } else {
        gGameStatus.health = gGameStatus.maxHealth * 2;
    }

    gGameStatus.field_16 = gGameStatus.field_17;

    sub_805E1DC(2);
    InitHeap(3);
    sub_8038FA0(gLoadedRoomLevel);
    sub_8039234();
    sub_80409DC();
    sub_803FE78();

    byte_20020B3 = 0;
    dword_2001104 = 0;
    dword_2001108 = 0;
    dword_2001110 = 0;
    dword_2001114 = 0;
    gInInteractionArea = 0;
    dword_203DFE0 = 0;
    dword_203DFDC = 0;
    byte_20021C4 = 1;
    sub_800BFA0(gRoomGoal, gWarpGoal, 1);
    if (!(gPlayerStateSettings[gPlayerState] & 1))
        sub_8016C78(0);
}

void show_gameover_screen() {
    REG_DISPCNT = DISPCNT_OBJ_ON | DISPCNT_BG2_ON | DISPCNT_OBJ_1D_MAP | DISPCNT_MODE_4;
    REG_BG2CNT = 0;
    gColorSpecEffectsSel = BLDCNT_TGT2_ALL;

    SyncVblank();
    DmaFill32(0, BG_VRAM, 0x5000);
    SyncVblank();
    LZ77UnCompReadNormalWrite16bit(&unk_87E0240, BG_VRAM);
    SyncVblank();
    DmaTransfer32(&unk_83FC114, BG_PLTT, 129);
    DmaTransfer32(&unk_83FD254, OBJ_PLTT, 128);
    
    gLoadedRoomBgm = 16;
    if (gCanChangeBgm) {
        audio_start_tune(16);
    }
}
