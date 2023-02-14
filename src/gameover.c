#include "global.h"
#include "menu.h"
#include "pause_menu.h"
#include "main.h"
#include "room.h"
#include "player.h"
#include "common.h"
#include "audio_b.h"

static void show_gameover_screen();
static void sub_8062D04();
static bool32 sub_8062FC4(struct TextBox* textbox, char* string, int* objCount);

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
    InitMenu(MENU_CONTINUE_OR_QUIT, gPauseMenuLanguage);
    gMenuId = MENU_CONTINUE_OR_QUIT;
    gMenuParentId = -1;
    sub_8062D04();

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
    if (!(gPlayerStateFlags[gPlayerState] & PLAYER_FLAGS_NOT_MOVING))
        sub_8016C78(0);
}

static void show_gameover_screen() {
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

static void sub_8062D04() {
    bool32 v0;
    struct TextBox textbox;
    char string[14];
    int objCount;
    bool32 v4;

    string[0] = 'G';
    string[1] = 'A';
    string[2] = 'M';
    string[3] = 'E';
    string[4] = ' ';
    string[5] = 'O';
    string[6] = 'V';
    string[7] = 'E';
    string[8] = 'R';
    string[9] = -1;

    textbox.letterSpacing = -2;
    textbox.field_12 = 0;
    textbox.field_A = 2;
    textbox.size = 240;
    textbox.palette = 1;
    textbox.stringOffset = 0;
    textbox.field_11 = 6;
    textbox.font = &font_80B01A8[2];
    objCount = sub_8025870(string, &textbox);

    init_function(14);

    v0 = TRUE;
    v4 = FALSE;

    while (1) {
        if (!v4 && !v0) {
            ReadKeys(&gKeysPressed, &gKeysDown, &gPreviousKeys);

            if (gKeysDown & B_BUTTON) {
                if (gMenuParentId != 0xFF) {
                    gMenuId = gMenuParentId;
                    switch (gMenuParentId) {
                        default:
                            HANG;
                            break;

                        case MENU_CONTINUE_OR_QUIT:
                            gMenuParentId = -1;
                            string[0] = 'G';
                            string[1] = 'A';
                            string[2] = 'M';
                            string[3] = 'E';
                            string[4] = ' ';
                            string[5] = 'O';
                            string[6] = 'V';
                            string[7] = 'E';
                            string[8] = 'R';
                            string[9] = -1;
                            objCount = sub_8025870(string, &textbox);
                            break;

                        case MENU_YES_NO:
                            gMenuParentId = MENU_CONTINUE_OR_QUIT;
                            break;
                    }

                    InitMenu(gMenuId, gPauseMenuLanguage);
                }
            } else if (gKeysDown & A_BUTTON) {
                if (sub_8062FC4(&textbox, string, &objCount)) {
                    v4 = TRUE;
                    sub_805E1DC(2);
                    init_function(15);
                }
            }

            if (!(gKeysDown & JOY_EXCL_DPAD)) {
                if (gKeysDown & DPAD_UP) {
                    PLAY_SFX(204);
                    AdvanceMenuEntryUp();
                } else if (gKeysDown & DPAD_DOWN) {
                    PLAY_SFX(204);
                    AdvanceMenuEntryDown();
                }
            }
        } else if (!byte_203F99E) {
            break;
        }

        SetTextSpriteCount(0);
        DmaFill32(170, gOAMBuffer1, 256);
        gOAMBufferFramePtr = gOAMBuffer1;
        gOAMBufferEnd = &gOAMBufferFramePtr[0x100];
        gOBJTileFramePtr = (void*)0x6014000;
        gOBJTileCount = 512;
        call_functions();
        sub_805E088();
        textbox.xPosition = (240 - objCount) >> 1;
        textbox.yPosition = 20;
        textbox.stringOffset = 0;
        AddStringToBuffer(&textbox, string);
        FlushMenuToTextBuffer();
        RenderText();
        RenderMenuSprites();
        CheckStacks();
        SyncVblank();
        update_video();
        SkipVblank();

        if (v0) {
            v0 = FALSE;
            sub_8026E48(4095, 1, 0);
        }
    }

    SetTextSpriteCount(0);
}

static bool32 sub_8062FC4(struct TextBox* textbox, char* string, int* objCount) {
    switch (gMenuId) {
        case MENU_CONTINUE_OR_QUIT:
            switch (GetCurrentMenuEntry()) {
                case 0:
                    return TRUE;

                case 1:
                    gMenuParentId = gMenuId;
                    gMenuId = MENU_YES_NO;
                    InitMenu(MENU_YES_NO, gPauseMenuLanguage);
                    string[0] = 'A';
                    string[1] = 'R';
                    string[2] = 'E';
                    string[3] = ' ';
                    string[4] = 'Y';
                    string[5] = 'O';
                    string[6] = 'U';
                    string[7] = ' ';
                    string[8] = 'S';
                    string[9] = 'U';
                    string[10] = 'R';
                    string[11] = 'E';
                    string[12] = '?';
                    string[13] = -1;
                    *objCount = sub_8025870(string, textbox);
                    break;
            }
            break;

        case MENU_YES_NO:
            switch (GetCurrentMenuEntry()) {
                case 0:
                    sub_80271A4(4095, 1);
                    sub_080643D0(0xFF);
                    break;

                case 1:
                    gMenuParentId = -1;
                    gMenuId = MENU_CONTINUE_OR_QUIT;
                    InitMenu(MENU_CONTINUE_OR_QUIT, gPauseMenuLanguage);
                    string[0] = 'G';
                    string[1] = 'A';
                    string[2] = 'M';
                    string[3] = 'E';
                    string[4] = ' ';
                    string[5] = 'O';
                    string[6] = 'V';
                    string[7] = 'E';
                    string[8] = 'R';
                    string[9] = -1;
                    *objCount = sub_8025870(string, textbox);
                    break;
            }
            break;
    }

    return FALSE;
}
