#include "global.h"
#include "sprite.h"
#include "environment_effects.h"
#include "audio_a.h"
#include "audio_b.h"
#include "player.h"
#include "pause_menu.h"
#include "save.h"
#include "room.h"
#include "debug.h"
#include "common.h"
#include "main.h"

/* --- Move this at some point */
extern void sub_80001EC();
extern void UpdateBackgrounds();
extern u32 sub_80266A8();
/* --- */

static void UpdateGame(void);
static void sub_8009D2C();
static void copy_sub_80001EC_to_iram();
static void StartGame();
static void prepare_wram();
static void sub_800A344();
static void nullsub_15();
static void sub_800A37C();
static void sub_800A528();
static void sub_800A5F4();

int AgbMain() {
    prepare_wram();
    EnableDisplay();
    sub_800FA84();
    StartGame();

    while (1) {
        SetTextSpriteCount(0);
        Debug_ShowInfo();
        UpdateGame();
        Debug_SetAfterGameUpdate(REG_VCOUNT & 0xFF);
        SyncVblank();
        gNullsub_5();
        UpdateVideo();
        Debug_SetAfterVideoUpdate(REG_VCOUNT & 0xFF);
        SkipVblank();
        ++gMainFrameCounter;
        CheckStacks();
    }
}

static void UpdateGame(void) {
    if (gIsPaletteEffectsActive) {
        sub_8026DC0();
    }

    call_functions();
    sub_80631AC();
    sub_800EACC();
    sub_800ECB4();

    if (byte_200110C) {
        sub_800F430();
    }

    sub_80344DC();

    if (!byte_203F9A1) {
        ReadKeys(&gKeysPressed, &gKeysDown, &gPreviousKeys);
        if (gUnused_ExecUnusedInputFunc) {
            Unused_InputFunction();
        }
    } else {
        ReadKeysEx(&gKeysPressed, &gKeysDown, &gPreviousKeys);
    }

    gNullsub_3();
    sub_806127C();

    if (word_203F998 == 12 && byte_20021F8 && !(gPlayerStateSettings[gPlayerState] & 0x800)) {
        if (byte_2000F55 || gKeysDown & 2) {
            sub_80271A4(0xFFF, 1);
            sub_805E1DC(2);
            init_function(43);
        }
    }

    if (dword_2001470) {
        sub_8015FD4();
    }

    if (gKeysDown & 8 && !(gPlayerStateSettings[gPlayerState] & 0x800) && !byte_20021F0 && !byte_203F99C
        && gGameStatus.health && !gIsPaletteEffectsActive && !byte_203FA35) {
        if ((gPlayerState != 101 || gIsSlideMiniGame) && !byte_2000F57) {
            if (byte_20020BC) {
                sub_8016B0C();
                sub_804087C();
            }

            sub_80409DC();

            if (dword_20020B8 != -1) {
                if (gCanPlaySfx) {
                    audio_halt_fx(dword_20020B8);
                }

                dword_20020B8 = -1;
            }

            if (audio_fx_still_active(dword_20020B4) && gCanPlaySfx) {
                audio_halt_fx(dword_20020B4);
            }

            if (gPlayerState == 35) {
                sub_8064380();
            }

            open_pause_menu();

            if (gPlayerState == 35) {
                sub_806438C();
            }

            if (!gIsSlideMiniGame) {
                sub_8013DD4(21, 32);
                EnableBGAlphaBlending();
            }

            REG_BLDCNT = gColorSpecEffectsSel;
            gKeysDown = 0;
            gKeysPressed = 0;

            if (gPlayerStateSettings[gPlayerState] & 0x100 && byte_20020B1 != 4) {
                sub_08040204(57, gGameStatus.field_16);
                sub_08041FA4(57);
            }

            if (gPlayerStateSettings[gPlayerState] & 4) {
                sub_800DE04();
            }
        }
    }

    if (!gIsSlideMiniGame) {
        s_load_object(gCameraPixelX + 120, gCameraPixelY + 80);
        sub_800DF34();
        sub_8062484();
    }

    if ((!byte_203F99C || byte_203F9A1) && !byte_203FA35) {
        if (!(gKeysPressed & word_20010AC)) {
            word_20010AC = 0;
            if (!gIsSlideMiniGame) {
                if (!byte_200110C) {
                    UpdatePlayerBehavior(gKeysPressed, gKeysDown);
                }
            } else {
                sub_80038A4(dword_2000FC8);
                if ((gPlayerStateSettings[gPlayerState] & 0x800)
                    || (gPlayerStateSettings[gPlayerState] & 0x1000)) {
                    UpdatePlayerBehavior(gKeysPressed, gKeysDown);
                }
            }
        }

        if (!gIsSlideMiniGame) {
            sub_80038A4(dword_2000FC8);
            update_player();
        }
    } else if (byte_203F99F) {
        UpdatePlayerBehavior(gKeysPressed, gKeysDown);
    }

    dword_30032B4[0] = gCameraPixelX - 20;
    dword_30032B4[1] = gCameraPixelY - 5;
    dword_30032BC[0] = gCameraPixelX + 260;
    dword_30032BC[1] = gCameraPixelY + 170;

    if (gPlayerState == 35) {
        sub_8063B5C();
    }

    if (!gIsSlideMiniGame && gPlayerState != 101) {
        sub_8048C78();
    }

    sub_804087C();

    if (!gIsSlideMiniGame) {
        s16 r1;
        u32 r0;
        u32* r2;
        u32 r4 = sub_800C50C();

        SetSpritePriority(&gPlayerSprite, r4);

        if (Abs(gPlayerPos.y - gPlayerShadowPos.y) <= 0x4FFFF || dword_203DFC4) {
            SetSpritePriority(&gPlayerShadowSprite, r4);
        } else {
            SetSpritePriority(&gPlayerShadowSprite, stru_3002950.playerSpritePriority);
        }

        r2 = &gPlayerShadowSprite;
        r1 = (gPlayerPos.y - gPlayerShadowPos.y) >> 16;

        if (r1 >= dword_80CEBC4) {
            r0 = byte_80CEB84[dword_80CEBC4 - 1];
        } else {
            r0 = byte_80CEB84[r1];
        }

        sub_80037F4(r2, r0);
    }

    DmaFill32(170, gOAMBuffer1, 0x100);
    gOAMBufferFramePtr = gOAMBuffer1;
    gOAMBufferEnd = &gOAMBuffer1[256];
    gOBJTileFramePtr = gOBJTileFrameStart;
    gOBJTileCount = dword_3003DA0;

    exec_arcade_menu();
    sub_8025278();
    show_room_name();
    sub_804095C();

    if (gPlayerStateSettings[gPlayerState] & 0x800) {
        if (byte_2000F5D) {
            sub_8025948(0);

            if (gKeysDown & 1) {
                byte_2000F5D = FALSE;
            }
        } else {
            if (byte_2002E4A) {
                byte_2002E4A = FALSE;
                byte_2000F5D = TRUE;
            }

            sub_8025948(gKeysPressed & 1);
        }
    } else {
        RenderText();
    }

    sub_8026234();
    sub_80408F0();
    sub_8061F80();
    sub_8064234();
    draw_arcade_menu();
    gNullsub_4();

    if (!gIsSlideMiniGame && gPlayerState != 101) {
        sub_8009D2C();
        sub_805DF84(&dword_30032AC, &dword_30032CC);
        sub_800BAF0(&dword_30032AC, &dword_30032CC);
        sub_802ADB0(&dword_30032AC, &dword_30032CC);
        sub_8003A34(dword_30032CC, dword_30032B0, &dword_3003DA4);
    }
}

static void sub_8009D2C() {
    dword_30032B0 = (u16*)gOAMBufferFramePtr;
    gOAMBufferFramePtr = gOAMBuffer2;
    gOAMBufferEnd = (u32*)((u16*)gOAMBufferFramePtr
                           - ((u32)(((s32)dword_30032B0 - (s32)gOAMBuffer1) >> 1) - 0x200));
    dword_30032AC = &dword_3003DA4;
    dword_30032CC = 0;
}

void sub_8009D7C(u32 a1) {
    dword_2000F60[dword_2000F64++] = a1;
    ASSERT(dword_2000F64 != 256);
}

u32 sub_8009DAC() {
    ASSERT(dword_2000F64 != 0);
    return dword_2000F60[--dword_2000F64];
}

void nullsub_3() {
}

void nullsub_4() {
}

void nullsub_5() {
}

static void prepare_wram() {
    u8 v0 = gShowEraseDataScreen;
    u8 v1 = byte_2000F59;
    u8 v2 = byte_2000F5A;
    u8 v3 = (u8)gKeysPressed;

    RegisterRamReset(0xFDu);
    DmaFill32(0, (u8*)0x2000000, 0x10000);
    DmaFill32(0, (u8*)0x3000000, 0x1D27);

    copy_sub_80001EC_to_iram();

    dword_3007FFC = 0x3000C24;
    REG_WAITCNT = 0x4014;
    REG_TM3CNT_L = 0;
    REG_TM3CNT_H = 128;

    gShowEraseDataScreen = v0;
    byte_2000F59 = v1;
    byte_2000F5A = v2;
    gKeysPressed = v3;
}

void EnableDisplay() {
    REG_DISPCNT = DISPCNT_OBJ_ON | DISPCNT_BG_ALL_ON | DISPCNT_OBJ_1D_MAP;
    REG_BG0CNT = 0x1C03; // Setup priority and base blocks.
    REG_BG1CNT = 0x1D02;
    REG_BG2CNT = 0x1E01;
    REG_BG3CNT = 0x1F00;
    REG_BG0HOFS = 0;
    REG_BG1HOFS = 0;
    REG_BG2HOFS = 0;
    REG_BG3HOFS = 0;
    REG_BG0VOFS = 0;
    REG_BG1VOFS = 0;
    REG_BG2VOFS = 0;
    REG_BG3VOFS = 0;
}

static void sub_8009ED8() {
    s32 i;

    dword_2000F68 = 0;
    dword_2000F6C = 0;

    for (i = 0; i < 14; i++) {
        gFunctionArray[i] = nullsub_15;
    }

    gFunctionArray[0] = sub_800A37C;
    gFunctionArray[2] = sub_800A528;
    gFunctionArray[12] = sub_800A594;

    REG_DISPSTAT = 0x28;
    REG_IE = 0x1005;
    REG_IME = 1;
    REG_KEYCNT = 0xC00F;
}

static void copy_sub_80001EC_to_iram() {
    DmaTransfer32(sub_80001EC, &unk_3000000, ((UpdateBackgrounds - sub_80001EC) >> 2) + 1);
}

static void StartGame() {
    gSpriteDMACount = 0;
    gTileAnimQueueIndex = 0;
    byte_2000314 = 0;
    gColorSpecEffectsSel = 0x3F00;
    byte_20010AF = 0;
    gContinueGame = 0;
    byte_2000F5E = 0;
    gClockStatus = 0;
    byte_2000F55 = 0;
    byte_2000F57 = 0;
    gIsSavingGame = 0;
    gMatricesCount = 0;
    gMatrices = 0;

    DmaFill32(170, gOAMBuffer2, 256);

    gOAMBufferFramePtr = gOAMBuffer2;
    gOBJTileFramePtr = (u32*)OBJ_VRAM0;
    gOBJTileFrameStart = (u32*)OBJ_VRAM0;
    gOBJTileCount = 0;
    dword_3003DA0 = 0;

    gNullsub_3 = nullsub_3;
    gNullsub_4 = nullsub_4;
    gNullsub_5 = nullsub_5;

    gIsSlideMiniGame = 0;

    sub_8003884(dword_2000FC8, 0, 0, 0);
    InitAllHeaps();
    sub_800A344();
    sub_8016440();
    init_audio_and_reset_volume();
    ResetMenuEx();
    ResetTileAnimCount();
    sub_80266B4();
    sub_80400B4();
    sub_080281A8();
    sub_800A5F4();
    sub_08030C68();
    sub_08047504();
    sub_805D158();
    sub_08063234();
    sub_8044DFC();

    gClockFrameCounter = 0;
    gClockEnabled = 0;

    byte_2000F5D = 0;

    dword_2000F60 = (u32*)Alloc(0x400u, 19, 4);
    dword_2000F64 = 0;

    sub_8009ED8();
    sub_8025798(&unk_80CC8F8, sub_80266A8());

    if (gShowEraseDataScreen) {
        ShowEraseData();
    }

    ExecutePregame();

    DmaFill32(170, (void*)0x7000000, 256);
    REG_BLDCNT = gColorSpecEffectsSel;
    REG_BLDALPHA = 0x907;
    REG_BG1CNT &= 0xFFFC;
    REG_BG1CNT |= 2;

    if (!gContinueGame) {
        gRoomGoal = 0;
        gWarpGoal = 0;
        byte_20010AA = 0;
        sub_8025E44(0);
        SetSpritePriority(&gPlayerSprite, stru_3002950.playerSpritePriority);
        SetSprite(&gPlayerSprite, 0x1Du, 0, 4, 0, gPlayerInitPixelPosX, gPlayerInitPixelPosY, 2);
        SetSprite(&gPlayerShadowSprite, 0, 0, 0, 1, gPlayerInitPixelPosX, gPlayerInitPixelPosY, 2);
        sub_800378C(&gPlayerShadowSprite, 0);
        gPlayerShadowSprite.field_10 = 1;
        gPlayerShadowSprite.field_13 = 0;

        if (byte_20020B1) {
            sub_08019FCC(byte_20020B1);
        }

        sub_8044DFC();
        init_function(12);
        gClockEnabled = 1;
    } else {
        gLoadedRoomLevel = 255;
        SetupRoom(gRoomGoal, gWarpGoal, 1, 0);

        if (gLoadedRoomIndex == 6) {
            gLoadedRoomLevel = byte_20010AA;
        }

        sub_8025E44(gLoadedRoomLevel);
        sub_80409DC();
        sub_803FE78();
        SetSpritePriority(&gPlayerSprite, stru_3002950.playerSpritePriority);
        sub_8013A10(word_200145C, word_200145E, gBGInitOffsetHorizontal, gBGInitOffsetVertical, 21, 32);
        EnableBGAlphaBlending();
        init_efx();
        enable_poison_effect();
        init_room_name();
        SetSprite(&gPlayerSprite, 0x1Du, 0, 4, 0, gPlayerInitPixelPosX, gPlayerInitPixelPosY, 2);
        SetSprite(&gPlayerShadowSprite, 0, 0, 0, 1, gPlayerInitPixelPosX, gPlayerInitPixelPosY, 2);
        sub_800378C(&gPlayerShadowSprite, 0);
        gPlayerShadowSprite.field_10 = 1;
        gPlayerShadowSprite.field_13 = 0;

        if (byte_20020B1) {
            sub_08019FCC(byte_20020B1);
            sub_801A2E4();
        }

        sub_8026E48(4095, 1, 1);
        sub_8013DD4(21, 32);
        sub_8044DFC();
        gClockEnabled = 1;
    }
}

static void sub_800A344() {
    byte_2000330 = 0;
    byte_2000331 = 0;
    byte_2000332 = 0;
    byte_2000333 = 0;
    byte_2000334 = 0;
    dword_200032C = 0;
}

static void sub_800A37C() {
    ASSERT(dword_2000F6C == 0);
    dword_2000F6C++;

    if (!gIsSavingGame) {
        sub_8045044();
    }

    dword_2000F6C--;

    if (gClockEnabled && !gClockStatus) {
        gClockFrameCounter++;
        if (gClockFrameCounter == 60) {
            gClockFrameCounter = 0;
            gGameStatus.clockSecond++;
            if (gGameStatus.clockSecond == 60) {
                gGameStatus.clockSecond = 0;
                gGameStatus.clockMinute++;
                if (gGameStatus.clockMinute == 60) {
                    gGameStatus.clockMinute = 0;
                    gGameStatus.clockHour++;
                    if (gGameStatus.clockHour == 100) {
                        gGameStatus.clockHour = 99;
                        gGameStatus.clockMinute = 59;
                        gGameStatus.clockSecond = 59;
                    }
                }
            }
        }
    }

    byte_2001200--;
    if (byte_2001200 == 0) {
        byte_2001200 = 60;
        gDebugFPS = gMainFrameCounter;
        gMainFrameCounter = 0;
    }

    sub_8003A3C(gTileAnimQueue, gTileAnimQueueIndex);
    gTileAnimQueueIndex = 0;

    if (byte_2000F5A == 0) {
        if (byte_2000F59 && !(gKeysPressed & 0xF))
            byte_2000F5A = 5;
    } else {
        byte_2000F5A--;
        if (byte_2000F5A == 0)
            byte_2000F59 = 0;
    }
}

static void nullsub_15() {
}

void UpdateVideo() {
    DmaTransfer32(gOAMBuffer1, 0x7000000, 256);

    if (gMatricesCount) {
        CallARM_SetOamMatrices(gMatrices, gMatricesCount);
    }

    if (!byte_200146C) {
        UpdateBackgrounds();
    }

    while (gSpriteDMACount) {
        gSpriteDMACount--;
        DmaTransfer32(gSpriteDMATable[gSpriteDMACount].source, gSpriteDMATable[gSpriteDMACount].destiny,
                      gSpriteDMATable[gSpriteDMACount].count);
    }

    update_efx();
}

static void sub_800A528() {
    ASSERT(dword_2000F68 == 0);
    dword_2000F68++;

    if (!gIsSavingGame) {
        seq_update_p();
    }

    dword_2000F68--;

    if (!byte_2000314) {
        sub_8003A44(gTileAnimTable, gLoadedTileAnimCount, gTileAnimQueue, &gTileAnimQueueIndex);
    } else {
        gTileAnimQueueIndex = 0;
        sub_801392C();
    }
}

void sub_800A594() {
    if (!byte_2000F59) {
        audio_pause();
        REG_IME = 0;
        REG_DISPSTAT = 0;
        REG_IE = 0;
        REG_KEYCNT = 0;
        REG_DMA0CNT_H = 0;
        REG_DMA1CNT_H = 0;
        REG_DMA2CNT_H = 0;
        REG_DMA3CNT_H = 0;
        byte_3007FFA = 0;
        sub_080643D0(0);
    }
}

void sub_800A5E8() {
    sub_800A5F4();
}

static void sub_800A5F4() {
    DmaFill32(0, byte_2000FCC, 30);
    DmaFill32(0, &gGameStatus, 8);
    dword_2001104 = 0;
    dword_2001108 = 0;
    byte_200110C = 0;
    word_20010AC = 0;
    byte_200112A = 0;
    byte_20010B1 = 0;
    gEnvironmentEffects = EFX_NONE;
    gLoadedRoomBgm = -1;
    gGameStatus.field_16 = stru_80CC8C4.field_16;
    gGameStatus.field_17 = stru_80CC8C4.field_17;
    byte_200108C = -1;
    byte_20020B1 = 0;
    byte_20010B0 = 0;
    gTextSpeed = 1;
    dword_2001110 = 0;
    dword_2001114 = 0;
    dword_20011FC = 1;
    gGameStatus.health = 4;
    gGameStatus.enableExtraHealth = 0;
    gGameStatus.maxHealth = 4;
    byte_200107C = 0;
    byte_200107D = stru_80CC8C4.maxHealth - 4;
    gUnlockedLevels = 0;
    gTotalAmountOfLevels = dword_80CC8F4;
    dword_3003300 = 0x160000;
    dword_3003308 = 0x240000;
    dword_3003304 = 0x180000;
}

void sub_800A710(u16 a1) {
    ASSERT(a1 <= 5 || a1 == 255);

    gLoadedRoomLevel = a1;
    byte_20010AA = a1;
    sub_8040178();
    sub_8039234();
}