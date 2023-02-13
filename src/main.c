#include "global.h"
#include "sprite.h"
#include "audio_a.h"
#include "audio_b.h"
#include "pause_menu.h"
#include "save.h"
#include "room.h"
#include "debug.h"
#include "player.h"
#include "common.h"
#include "main.h"

enum EnvironmentEffects { EFX_NONE, EFX_LAVA, EFX_THUNDER };

static const int dThunderSfxIds[3] = { 211, 212, 213 };

u8 byte_2000314;
s32 dword_2000318;
s32 dword_200031C;
u8 gPauseMenuLanguage;
u32* gMatrices;
u32 gMatricesCount;
u32 dword_200032C;
u8 byte_2000330;
u8 byte_2000331;
u8 byte_2000332;
u8 byte_2000333;
u8 byte_2000334;
u8 byte_2000335;
u16 gColorSpecEffectsSel;
u16 gDisplayControl;
u16 gBG0Control;
u16 gBG1Control;
u16 gBG2Control;
u16 gBG3Control;
u16 word_2000342;
u16 word_2000344;
u16 word_2000346;
u16 word_2000348;
u16 word_200034A;
u16 void_200034C[10];
struct SpriteDMATableEntry gSpriteDMATable[255];
u8 gSpriteDMACount;
u8 byte_2000F55; // possibly bool8
u8 byte_2000F56; // possibly bool8
u8 byte_2000F57; // possibly bool8
u8 gShowEraseDataScreen;
u8 byte_2000F59;
u8 byte_2000F5A;
u8 gClockFrameCounter;
bool8 gClockEnabled;
bool8 byte_2000F5D;
bool8 byte_2000F5E;
u32* dword_2000F60;
u32 dword_2000F64;
u32 dword_2000F68;
u32 dword_2000F6C;
u8 gUnused_ExecUnusedInputFunc;
struct Sprite gPlayerSprite;
struct Sprite gPlayerShadowSprite;
struct Sprite sprite_2000FAC;
u32 dword_2000FC8;
struct level_struc byte_2000FCC[6];
struct GameStatus gGameStatus;
struct SaveFile gSaveFiles[3];
u8 byte_200107C;
u8 byte_200107D;
u8 gUnlockedLevels;
u8 gTotalAmountOfLevels;
u16 gLoadedRoomIndex;
u16 gLoadedRoomLevel;
u16 gLoadedRoomBgm;
fx32 dword_2001088;
s8 gSelectedEgg;
u8 byte_200108D;
u8 byte_200108E;
u16 word_2001090;
u16 word_2001092;
u8 byte_2001094;
fx32 dword_2001098;
fx32 dword_200109C;
fx32 dword_20010A0;
u8 byte_20010A4;
u8 byte_20010A5;
u8 gRoomNameNumber;
u8 byte_20010A7;
u8 gRoomGoal;
u8 gWarpGoal;
u8 byte_20010AA;
u16 word_20010AC;
u8 gContinueGame;
u8 byte_20010AF;
u8 byte_20010B0;
u8 byte_20010B1;
char gSaveFileString1[0x1A];
char gSaveFileString2[0x1A];
char gSaveFileString3[0x1A];
u8 gTextSpeed;
u32 dword_2001104;
u32 dword_2001108;
u8 byte_200110C; // possibly bool8
u32 dword_2001110;
u32 dword_2001114;
bool8 gIsCameraMovingX;
bool8 gIsCameraMovingY;
u8 byte_200111A;
u8 byte_200111B;
u8 byte_200111C;
u8 byte_200111D;
u8 byte_200111E;
u8 byte_200111F;
u8 byte_2001120;
u8 byte_2001121;
u8 byte_2001122;
u32 dword_2001124;
u16 word_2001128;
u8 byte_200112A;
s16 word_200112C;
s16 word_200112E;
s16 word_2001130;
s16 word_2001132;
s16 word_2001134;
int dword_2001138;
u8 byte_200113C;
u8 byte_200113D;
s32 dword_2001140;
s32 dword_2001144;
s32 dword_2001148;
s32 dword_200114C;
s32 dword_2001150;
s32 dword_2001154;
s32 dword_2001158;
s32 dword_200115C;
s32 dword_2001160;
s32 dword_2001164;
u8* dword_2001168;
bool8 byte_200116C;
u8 gShowRoomName;
u16 gRoomNameApparenceTimer;
struct TextBox gRoomNameTextBox;
char* gRoomName;
u32 dword_2001188;
u32 dword_200118C;
struct TextBox stru_2001190;
struct TextBox stru_20011A4;
fx32 dword_20011B8;
fx32 dword_20011BC;
fx32 dword_20011C0;
fx32 dword_20011C4;
int* dword_20011C8;
s32 gEnvironmentEffects;
s32 gEnvironmentEffectsTemp;
u32 gLavaPaletteIndex;
u32 gLavaTimer;
u16* gLightningPalette;
u16* gBackupBGPalette;
u32 gLightningTimer;
bool32 gLightningActive;
u32 gThunderTimer;
bool32 gPoisonEffectEnabled;
int gPoisonHitTimer;
u32 dword_20011F8;
s32 dword_20011FC;

static void update_game(void);
static void sub_8009D2C();
static void init_memory();
static void copy_sub_80001EC_to_iram();
static void start_game();
static void sub_800A344();
static void sub_800A37C();
static void sub_800A528();
static void sub_800A5F4();
static void update_player();
static void update_camera(struct Vec3fx* position, s32 a2, s32 a3, s32 offset);
static void move_camera(s32 offset);
static fx32 clamp_camera_velocity(fx32 velocity, fx32 speed);
static void sub_800BAF0(u32** a1, u32* a2);
static int sub_0800C63C(int room, u32 warp);
static void enable_poison_effect();
static void sub_800DF34();
static void sub_800E61C();
static void sub_800E6D0();
static void sub_800E7A0();
static void sub_800EA9C();
static void sub_800EACC();
static void sub_800EB58(bool32 a1);
static void show_room_name();
static void sub_800EF6C(int warp);
static void sub_800F430();
static void update_efx();

int AgbMain() {
    init_memory();
    setup_display();
    init_debug();
    start_game();

    while (1) {
        SetTextSpriteCount(0);
        Debug_ShowInfo();
        update_game();
        Debug_SetAfterGameUpdate(REG_VCOUNT & 0xFF);
        SyncVblank();
        gNullsub_5();
        update_video();
        Debug_SetAfterVideoUpdate(REG_VCOUNT & 0xFF);
        SkipVblank();
        ++gMainFrameCounter;
        CheckStacks();
    }
}

static void update_game(void) {
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
        if (byte_2000F55 || gKeysDown & B_BUTTON) {
            sub_80271A4(0xFFF, 1);
            sub_805E1DC(2);
            init_function(43);
        }
    }

    if (dword_2001470) {
        sub_8015FD4();
    }

    if (gKeysDown & START_BUTTON && !(gPlayerStateSettings[gPlayerState] & 0x800) && !byte_20021F0
        && !byte_203F99C && gGameStatus.health && !gIsPaletteEffectsActive && !byte_203FA35) {
        if ((gPlayerState != PLAYER_STATE_NONE || gIsSlideMiniGame) && !byte_2000F57) {
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

            if (gPlayerState == PLAYER_STATE_35) {
                sub_8064380();
            }

            open_pause_menu();

            if (gPlayerState == PLAYER_STATE_35) {
                sub_806438C();
            }

            if (!gIsSlideMiniGame) {
                sub_8013DD4(21, 32);
                EnableBGAlphaBlending();
            }

            REG_BLDCNT = gColorSpecEffectsSel;
            gKeysDown = 0;
            gKeysPressed = 0;

            if (gPlayerStateSettings[gPlayerState] & 0x100
                && gTransformation != TRANSFORMATION_OCTOPUS) {
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
                    update_player_state_machine(gKeysPressed, gKeysDown);
                }
            } else {
                sub_80038A4(dword_2000FC8);
                if ((gPlayerStateSettings[gPlayerState] & 0x800)
                    || (gPlayerStateSettings[gPlayerState] & 0x1000)) {
                    update_player_state_machine(gKeysPressed, gKeysDown);
                }
            }
        }

        if (!gIsSlideMiniGame) {
            sub_80038A4(dword_2000FC8);
            update_player();
        }
    } else if (byte_203F99F) {
        update_player_state_machine(gKeysPressed, gKeysDown);
    }

    dword_30032B4[0] = gCameraPixelX - 20;
    dword_30032B4[1] = gCameraPixelY - 5;
    dword_30032BC[0] = gCameraPixelX + 260;
    dword_30032BC[1] = gCameraPixelY + 170;

    if (gPlayerState == PLAYER_STATE_35) {
        sub_8063B5C();
    }

    if (!gIsSlideMiniGame && gPlayerState != PLAYER_STATE_NONE) {
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

            sub_8025948(gKeysPressed & A_BUTTON);
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

    if (!gIsSlideMiniGame && gPlayerState != PLAYER_STATE_NONE) {
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

static void init_memory() {
    u8 backup1 = gShowEraseDataScreen;
    u8 backup2 = byte_2000F59;
    u8 backup3 = byte_2000F5A;
    u8 backup4 = (u8)gKeysPressed;

    RegisterRamReset(0xFDu);
    DmaFill32(0, EWRAM_START, 0x10000);
    DmaFill32(0, IWRAM_START, 0x1D27);

    copy_sub_80001EC_to_iram();

    dword_3007FFC = 0x3000C24;
    REG_WAITCNT = WAITCNT_AGB | WAITCNT_PREFETCH_ENABLE | WAITCNT_PHI_OUT_NONE | WAITCNT_WS2_S_8
                  | WAITCNT_WS2_N_4 | WAITCNT_WS1_S_4 | WAITCNT_WS1_N_4 | WAITCNT_WS0_S_1
                  | WAITCNT_WS0_N_3 | WAITCNT_SRAM_4;
    REG_TM3CNT_L = 0;
    REG_TM3CNT_H = 128;

    gShowEraseDataScreen = backup1;
    byte_2000F59 = backup2;
    byte_2000F5A = backup3;
    gKeysPressed = backup4;
}

void setup_display() {
    REG_DISPCNT = DISPCNT_OBJ_ON | DISPCNT_BG_ALL_ON | DISPCNT_OBJ_1D_MAP;
    REG_BG0CNT = BGCNT_SCREENBASE(28) | BGCNT_PRIORITY(3);
    REG_BG1CNT = BGCNT_SCREENBASE(29) | BGCNT_PRIORITY(2);
    REG_BG2CNT = BGCNT_SCREENBASE(30) | BGCNT_PRIORITY(1);
    REG_BG3CNT = BGCNT_SCREENBASE(31) | BGCNT_PRIORITY(0);
    REG_BG0HOFS = 0;
    REG_BG1HOFS = 0;
    REG_BG2HOFS = 0;
    REG_BG3HOFS = 0;
    REG_BG0VOFS = 0;
    REG_BG1VOFS = 0;
    REG_BG2VOFS = 0;
    REG_BG3VOFS = 0;
}

static void setup_interrupts() {
    int i;

    dword_2000F68 = 0;
    dword_2000F6C = 0;

    for (i = 0; i < 14; i++) {
        gFunctionArray[i] = nullsub_15;
    }

    gFunctionArray[0] = sub_800A37C;
    gFunctionArray[2] = sub_800A528;
    gFunctionArray[12] = sub_800A594;

    REG_DISPSTAT = DISPSTAT_VCOUNT_INTR | DISPSTAT_VBLANK_INTR;
    REG_IE = INTR_FLAG_KEYPAD | INTR_FLAG_VCOUNT | INTR_FLAG_VBLANK;
    REG_IME = TRUE;
    REG_KEYCNT = KEY_AND_INTR | KEY_INTR_ENABLE | START_BUTTON | SELECT_BUTTON | B_BUTTON | A_BUTTON;
}

static void copy_sub_80001EC_to_iram() {
    DmaTransfer32(sub_80001EC, &unk_3000000, ((UpdateBackgrounds - sub_80001EC) >> 2) + 1);
}

static void start_game() {
    gSpriteDMACount = 0;
    gTileAnimQueueIndex = 0;
    byte_2000314 = 0;
    gColorSpecEffectsSel = BLDCNT_TGT2_ALL;
    byte_20010AF = 0;
    gContinueGame = 0;
    byte_2000F5E = 0;
    gClockStatus = 0;
    byte_2000F55 = 0;
    byte_2000F57 = 0;
    gIsSavingGame = 0;
    gMatricesCount = 0;
    gMatrices = NULL;

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

    dword_2000F60 = (u32*)Alloc(0x400, 19, 4);
    dword_2000F64 = 0;

    setup_interrupts();
    sub_8025798(&unk_80CC8F8, sub_80266A8());

    if (gShowEraseDataScreen) {
        ShowEraseData();
    }

    ExecutePregame();

    DmaFill32(170, OAM, 256);
    REG_BLDCNT = gColorSpecEffectsSel;
    REG_BLDALPHA = BLDALPHA_BLEND(7, 9);
    REG_BG1CNT &= BGCNT_MASK_NO_PRIORITY;
    REG_BG1CNT |= BGCNT_PRIORITY(2);

    if (!gContinueGame) {
        gRoomGoal = 0;
        gWarpGoal = 0;
        byte_20010AA = 0;
        sub_8025E44(0);
        SetSpritePriority(&gPlayerSprite, stru_3002950.playerSpritePriority);
        SetSprite(&gPlayerSprite, 0x1D, 0, 4, 0, gPlayerInitPixelPosX, gPlayerInitPixelPosY, 2);
        SetSprite(&gPlayerShadowSprite, 0, 0, 0, 1, gPlayerInitPixelPosX, gPlayerInitPixelPosY, 2);
        sub_800378C(&gPlayerShadowSprite, 0);
        gPlayerShadowSprite.field_10 = 1;
        gPlayerShadowSprite.field_13 = 0;

        if (gTransformation != TRANSFORMATION_BANJO) {
            sub_08019FCC(gTransformation);
        }

        sub_8044DFC();
        init_function(12);
        gClockEnabled = 1;
    } else {
        gLoadedRoomLevel = LEVEL_NONE;
        SetupRoom(gRoomGoal, gWarpGoal, 1, 0);

        if (gLoadedRoomIndex == ROOM_MUMBOHUT) {
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
        SetSprite(&gPlayerSprite, 0x1D, 0, 4, 0, gPlayerInitPixelPosX, gPlayerInitPixelPosY, 2);
        SetSprite(&gPlayerShadowSprite, 0, 0, 0, 1, gPlayerInitPixelPosX, gPlayerInitPixelPosY, 2);
        sub_800378C(&gPlayerShadowSprite, 0);
        gPlayerShadowSprite.field_10 = 1;
        gPlayerShadowSprite.field_13 = 0;

        if (gTransformation != TRANSFORMATION_BANJO) {
            sub_08019FCC(gTransformation);
            load_transformation_palette();
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
        if (byte_2000F59 && !(gKeysPressed & (START_BUTTON | SELECT_BUTTON | B_BUTTON | A_BUTTON))) {
            byte_2000F5A = 5;
        }
    } else {
        byte_2000F5A--;
        if (byte_2000F5A == 0)
            byte_2000F59 = 0;
    }
}

void nullsub_15() {
}

void update_video() {
    DmaTransfer32(gOAMBuffer1, OAM, 256);

    if (gMatricesCount != 0) {
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
        REG_IME = FALSE;
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

static void sub_800A5E8() {
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
    gSelectedEgg = -1;
    gTransformation = TRANSFORMATION_BANJO;
    byte_20010B0 = 0;
    gTextSpeed = 1;
    dword_2001110 = 0;
    dword_2001114 = 0;
    dword_20011FC = 1;
    gGameStatus.health = 4;
    gGameStatus.enableExtraHealth = FALSE;
    gGameStatus.maxHealth = 4;
    byte_200107C = 0;
    byte_200107D = stru_80CC8C4.maxHealth - 4;
    gUnlockedLevels = 0;
    gTotalAmountOfLevels = dword_80CC8F4;
    dword_3003300 = FX32_CONST(22);
    dword_3003308 = FX32_CONST(36);
    dword_3003304 = FX32_CONST(24);
}

void sub_800A710(u16 level) {
    ASSERT(level < LEVEL_COUNT || level == LEVEL_NONE);

    gLoadedRoomLevel = level;
    byte_20010AA = level;
    sub_8040178();
    sub_8039234();
}

static void sub_800A740(struct Vec3fx* a1, struct Vec3fx* a2) {
    if (!dword_203DFC4) {
        return;
    }

    if (byte_203DFE6) {
        if (gPlayerStateSettings[gPlayerState] & 0x400) {
            u32 y = dword_203DFC4->field_98;
            a1->y = y;
            a2->y = y;
        } else {
            u32 y;
            struct Vec3fx a;
            sub_8062444(dword_203DFC0[dword_203DFC4->field_1E], &a.x, &a.y, &a.z);

            a1->x += a.x;
            a1->z += a.z;
            a2->x = a1->x;
            a2->z = a1->z;

            y = dword_203DFC4->field_98;
            a1->y = y;
            a2->y = y;
        }
    } else if (byte_203DFE7) {
        a2->y = dword_203DFC4->field_98;
    }
}

static bool32 sub_800A7DC(struct Vec3fx* a1, struct Vec3fx* a2) {
    if (byte_203DFE6) {
        if (gPlayerStateSettings[gPlayerState] & 0x400) {
            if (!sub_8018BB0(&gPlayerSprite)) {
                return TRUE;
            }

            gPlayerPos.y = a1->y;
            gPlayerShadowPos.y = gPlayerPos.y;
            sub_800388C(dword_2000FC8, 0, 0);
        } else {
            if (!gWallPlaneResult.isColliding) {
                gPlayerPos.x = a1->x;
                gPlayerPos.z = a1->z;
                gPlayerShadowPos.x = gPlayerPos.x;
                gPlayerShadowPos.z = gPlayerPos.z;
            }

            gPlayerPos.y = a1->y;
            gPlayerShadowPos.y = gPlayerPos.y;
        }

        return TRUE;
    } else if (byte_203DFE7) {
        gPlayerShadowPos.y = a2->y;

        if (!gWallPlaneResult.isColliding) {
            gPlayerPos.x = a1->x;
            gPlayerPos.y = a1->y;
            gPlayerPos.z = a1->z;
            gPlayerShadowPos.x = a2->x;
            gPlayerShadowPos.z = a2->z;
        }
    }

    return FALSE;
}

static bool32 sub_0800A8B4() {
    if (gGameStatus.health != 0 && gFloorPlaneResult.isColliding && stru_3002950.warpDestRoom != 0
        && gFloorPlaneResult.warpDestRoom == stru_3002950.warpDestRoom) {
        if (stru_3002950.warpDestRoom & 0x80) {
            if (gPlayerStateSettings[gPlayerState] & 0x100
                && !(gPlayerStateSettings[gPlayerState] & 0x80)) {
                ASSERT((stru_3002950.warpDestRoom & 0x7F) - 1 <= 0x25);

                if (sub_0800BCD4(&stru_3002950)) {
                    return TRUE;
                }
            }
        } else {
            ASSERT(gFloorPlaneResult.warpDestRoom - 1 <= 0x25);

            if (sub_0800BCD4(&gFloorPlaneResult)) {
                if (gPlayerStateSettings[gPlayerState] & 0x100) {
                    sub_8017A54();
                }

                return TRUE;
            }
        }
    }

    return FALSE;
}

static bool32 sub_800A974() {
    if (gGameStatus.health == 0) {
        return FALSE;
    }

    if (gFloorPlaneResult.floorType == 2 && stru_3002950.floorType == 2) {
        if (gTransformation != TRANSFORMATION_BANJO && gTransformation != TRANSFORMATION_OCTOPUS) {
            sub_80192D4(16, -1, 0);
            return FALSE;
        }

        sub_8017C50();
    } else {
        if (gPlayerStateSettings[gPlayerState] & 0x200) {
            sub_8017D9C();
        }
    }

    return TRUE;
}

static void sub_800A9F0() {
    if (!byte_3003588) {
        sub_8003894(dword_2000FC8, dword_80CC7EC[gFloorPlaneResult.floorType]);
        sub_80038DC(dword_2000FC8, gFloorPlaneResult.field_28, gFloorPlaneResult.field_2C,
                    gFloorPlaneResult.floorType == 10 ? 1 : 0);
    } else {
        sub_8003894(dword_2000FC8, dword_80CC818[gFloorPlaneResult.floorType]);
        sub_80038DC(dword_2000FC8, gFloorPlaneResult.field_28, gFloorPlaneResult.field_2C, 0);
    }
}

static void sub_800AA6C(struct Vec3fx* a1, struct Vec3fx* a2, struct Vec3fx* a3, struct Vec3fx* a4) {
    struct Vec3fx a;
    sub_80038C4(dword_2000FC8, &a.x, &a.y, &a.z);

    a3->x = a.x >> 8;
    a3->y = a.y >> 8;
    a3->z = a.z >> 8;

    a1->x = gPlayerPos.x + a.x;
    a2->x = gPlayerShadowPos.x + a.x;

    if (!(gPlayerStateSettings[gPlayerState] & 0x40)) {
        a1->y = gPlayerPos.y + a.y;
        if (a1->y >= dword_2001088)
            a1->y = gPlayerPos.y;
        a2->y = gPlayerShadowPos.y;
        a1->z = gPlayerPos.z + a.z;
        a2->z = gPlayerShadowPos.z + a.z;
    } else {
        a1->y = gPlayerPos.y + a.z;
        a2->y = gPlayerShadowPos.y;
        a1->z = gPlayerPos.z;
        a2->z = gPlayerShadowPos.z;
    }

    if (a1->y < a2->y) {
        a1->y = a2->y;
    }

    if (a1->y < 0) {
        a1->y = 0;
    }

    a4->x = a1->x - gPlayerPos.x;
    a4->y = a1->y - gPlayerPos.y;
    a4->z = a1->z - gPlayerPos.z;
}

static bool32 sub_800AB54(struct Vec3fx* a1, struct Vec3fx* a2) {
    if (!(gPlayerStateSettings[gPlayerState] & 0x400)) {
        struct Vec3fx a;
        a.x = a1->x;
        a.y = a1->y + FX32_CONST(18);
        a.z = a1->z;

        if (sub_800953C(&a)) {
            sub_08009208(a1, &stru_3002950);
            gPlayerPos.y = a1->y;
            gPlayerShadowPos.y = stru_3002950.floorHeight;
            gPlayerPos.x = a1->x;
            gPlayerShadowPos.x = a2->x;

            return TRUE;
        }
    } else {
        sub_8017F14();
    }

    return FALSE;
}

static bool32 sub_800ABD4(struct Vec3fx* a1, struct Vec3fx* a2) {
    if (gFloorPlaneResult.isColliding) {
        if (gFloorPlaneResult.floorType == 2 && gTransformation != TRANSFORMATION_BANJO
            && gTransformation != TRANSFORMATION_OCTOPUS && gGameStatus.health != 0) {
            if (!byte_20020BC) {
                sub_80192D4(16, -1, 0);
            }

            return FALSE;
        }

        if (gFloorPlaneResult.field_4E && !byte_200108E && gTransformation != TRANSFORMATION_OCTOPUS
            && gTransformation != TRANSFORMATION_TANK
            && !(gPlayerStateSettings[gPlayerState] & 0x1000)) {
            sub_80192D4(gFloorPlaneResult.field_4E, -1, 1);
            byte_200108E = 1;
            word_2001092 = gFloorPlaneResult.field_4F;
            byte_200108D = 1;
            word_2001090 = gFloorPlaneResult.field_4F;
            gPlayerSprite.field_10 = 1;

            return FALSE;
        }
    }

    if (gWallPlaneResult.isColliding && gWallPlaneResult.floorType == 6 && gUnlockedMoves[MOVE_CLIMB]
        && gTransformation == TRANSFORMATION_BANJO && gGameStatus.health != 0) {
        struct Vec3fx a;
        a.x = a1->x;
        a.y = a1->y + FX32_CONST(18);
        a.z = a1->z;
        if (sub_800953C(&a)) {
            if (sub_8018BB0(&gPlayerSprite)) {
                if (audio_fx_still_active(dword_20020B4) && gCanPlaySfx) {
                    audio_halt_fx(dword_20020B4);
                }

                sub_8017E1C();
                gPlayerPos.y = a1->y;
                gPlayerShadowPos.y = stru_3002950.floorHeight;
                gPlayerPos.x = a1->x;
                gPlayerShadowPos.x = a2->x;
            }

            return FALSE;
        }
    }

    return TRUE;
}

static void sub_800AD64() {
    // Did the developers really write it like this?

    struct struc_44* plane = &stru_3002950;

    if (!plane->isColliding) {
        return;
    }

    if (plane->field_7 || (plane = &gFloorPlaneResult)->isColliding) {
        sub_800388C(dword_2000FC8, plane->field_30, plane->field_34);
    } else {
        sub_800388C(dword_2000FC8, 0, 0);
    }
}

static bool32 sub_800ADAC(struct Vec3fx* a1, struct Vec3fx* a2, struct Vec3fx* a3, char* a4) {
    fx32 a = a2->y;
    a2->y =
        sub_80039C4(a2, stru_3002950.field_1C, stru_3002950.field_20, stru_3002950.staticFloorHeight);

    if (a2->y < 0) {
        a2->y = a;
    }

    if (gFloorPlaneResult.isColliding) {
        if (stru_3002950.field_2C != 0x5A0000 && Abs(a1->y - a2->y) < 0x50000) {
            a1->y = a2->y;
            sub_800A9F0();
            if (!sub_800A974() || sub_0800A8B4())
                return FALSE;
        } else {
            a = a1->y;
            a1->y = sub_80039C4(a1, gFloorPlaneResult.field_1C, gFloorPlaneResult.field_20,
                                gFloorPlaneResult.staticFloorHeight);

            if (gFloorPlaneResult.field_2C != 0x5A0000 && a1->y != a) {
                char c[0x60];
                sub_80039CC(c, a1, &stru_300331C, 0);
                sub_8007434(c, &gFloorPlaneResult);

                if (!gFloorPlaneResult.isColliding) {
                    a1->y = a;
                    gFloorPlaneResult.isColliding = TRUE;
                    return TRUE;
                }
            }

            if (Abs(a - a1->y) > 0x50000) {
                a1->y = a;
                sub_800A9F0();
                if (!sub_800A974() || sub_0800A8B4())
                    return FALSE;
            } else if (a1->y < a2->y) {
                a1->y = a2->y;
                sub_800A9F0();
                if (!sub_800A974() || sub_0800A8B4())
                    return FALSE;
            } else {
                a3->y = a1->y - a;
                sub_800A9F0();
                if (!sub_800A974() || sub_0800A8B4())
                    return FALSE;
            }
        }
    } else {
        if (gPlayerPos.y != gPlayerShadowPos.y) {
            sub_8003894(dword_2000FC8, dword_80CC818[stru_3002950.floorType]);
            sub_80038DC(dword_2000FC8, 0, 0x5A0000, 0);
        }

        if (Abs(a1->y - a2->y) > FX32_CONST(5)) {
            sub_80181B8(&a1->y);

        } else {
            a1->y = a2->y;
        }
    }

    return TRUE;
}

static bool32 sub_800AEFC(struct Vec3fx* a1, struct Vec3fx* a2, char* a3) {
    fx32 a;

    if (!dword_203DFC4) {
        a = a2->y;
        a2->y = sub_80039C4(a2, stru_3002950.field_1C, stru_3002950.field_20,
                            stru_3002950.staticFloorHeight);
        if (a2->y < 0) {
            a2->y = a;
        }
    }

    if ((gPlayerStateSettings[gPlayerState] & 0x100)) {
        return TRUE;
    }

    if (gFloorPlaneResult.isColliding) {
        a = a1->y;
        a1->y = sub_80039C4(a1, gFloorPlaneResult.field_1C, gFloorPlaneResult.field_20,
                            gFloorPlaneResult.staticFloorHeight);

        if (a1->y < 0 || a1->y < a2->y) {
            a1->y = a;
        }

        if (gFloorPlaneResult.field_2C != 0x5A0000 && a1->y != a) {
            char c[0x60];
            sub_80039CC(c, a1, &stru_300331C, 0);
            sub_8007434(c, &gFloorPlaneResult);

            if (!gFloorPlaneResult.isColliding) {
                a1->y = a;
                gFloorPlaneResult.isColliding = TRUE;
            }
        }

        if (Abs(a - a1->y) > 0x50000) {
            a1->y = a;
            return TRUE;
        }

        sub_8018BB0(&gPlayerSprite);

        if (Abs(a1->y - a2->y) <= 0x50000) {
            a1->y = a2->y;
        } else if (Abs(a1->y - gPlayerShadowPos.y) <= 0x50000) {
            a1->y = gPlayerShadowPos.y;
        }

        sub_800A9F0();
        sub_800A974();
    } else {
        if (a1->y == a2->y) {
            sub_8018BB0(&gPlayerSprite);
            sub_800A9F0();
            sub_800A974();
        } else {
            sub_8003894(dword_2000FC8, dword_80CC7EC[stru_3002950.floorType]);
            sub_80038DC(dword_2000FC8, stru_3002950.field_28, stru_3002950.field_2C, 0);
        }
    }

    return TRUE;
}

static bool32 sub_0800B04C(struct Vec3fx* a1, struct Vec3fx* a2, struct Vec3fx* a3, char* a4) {
    struct Vec3fx distance;
    struct Vec3fx vec1;
    char c[0x60];
    fx32 dot;

    distance.x = gWallPlaneResult.distance.x;
    distance.y = gWallPlaneResult.distance.y;
    distance.z = gWallPlaneResult.distance.z;

    dot = CallARM_VecFX_Dot8(&distance, &distance);
    if (dot >> 8 < 0x8000) {
        fx32 b = sub_800392C(CallARM_VecFX_Dot8(a1, &distance) << 8, dot << 8);
        distance.x <<= 8;
        distance.y <<= 8;
        distance.z <<= 8;
        CallARM_VecFX_Mul16(&distance, b);
        ASSERT(Abs(distance.x >> 16) < 0x10000 && Abs(distance.z >> 16) < 0x10000);
    } else {
        CallARM_VecFX_Mul8(&distance, sub_8003934(CallARM_VecFX_Dot8(a1, &distance), dot));
        ASSERT(Abs(distance.x >> 8) < 0x10000 && Abs(distance.z >> 8) < 0x10000);
        distance.x <<= 8;
        distance.z <<= 8;
    }

    sub_80038CC(dword_2000FC8, &distance, a1);

    a2->x = gPlayerPos.x + a1->x;
    a2->z = gPlayerPos.z + a1->z;
    a3->x = a2->x;
    a3->z = a2->z;

    sub_80039CC(c, a2, &stru_300331C, 0);

    vec1.x = a2->x - gPlayerPos.x;
    vec1.y = a2->y - gPlayerPos.y;
    vec1.z = a2->z - gPlayerPos.z;
    sub_8006974(c, &vec1);

    sub_8006FFC(c, &gWallPlaneResult, &gFloorPlaneResult);

    if (!gWallPlaneResult.isColliding) {
        sub_8007434(c, &gFloorPlaneResult);

        if (gFloorPlaneResult.floorType != 10 || byte_3003588) {
            return TRUE;
        }
    } else {
        if (gPlayerStateSettings[gPlayerState] & 0x400) {
            gPlayerPosTemp.x = gPlayerPos.x;
            gPlayerPosTemp.z = gPlayerPos.z;
            gPlayerShadowPosTemp.x = gPlayerShadowPos.x;
            gPlayerShadowPosTemp.z = gPlayerShadowPos.z;
        }
    }

    return FALSE;
}

static void update_player() {
    struct Vec3fx vec1;
    char c[0x60];
    struct Vec3fx vec2;
    struct Vec3fx vec3;

    sub_800AA6C(&gPlayerPosTemp, &gPlayerShadowPosTemp, &vec3, &vec1);

    if (sub_802ADE8(&gPlayerPosTemp)) {
        return;
    }

    sub_800A740(&gPlayerPosTemp, &gPlayerShadowPosTemp);

    if (gTransformation != TRANSFORMATION_TANK) {
        stru_300331C.x = FX32_CONST(4);
        stru_300331C.y = dword_3003308;
        stru_300331C.z = FX32_CONST(4);
    } else {
        stru_300331C.x = FX32_CONST(8);
        stru_300331C.y = dword_3003308;
        stru_300331C.z = FX32_CONST(8);
    }

    sub_80039CC(c, &gPlayerPosTemp, &stru_300331C, 0);
    sub_8006974(c, &vec1);

    if (gPlayerStateSettings[gPlayerState] & 0x40) {
        if (!sub_800AB54(&gPlayerPosTemp, &gPlayerShadowPosTemp)) {
            return;
        }
    } else {
        sub_08009208(&gPlayerPosTemp, &stru_3002950);

        if (!stru_3002950.isColliding) {
            vec2.x = gPlayerPosTemp.x;
            vec2.y = gPlayerPosTemp.y + FX32_CONST(5);
            vec2.z = gPlayerPosTemp.z;
            sub_08009208(&vec2, &stru_3002950);
        }

        if (gPlayerStateSettings[gPlayerState] & 0x400) {
            if (sub_80038BC(dword_2000FC8)) {
                sub_8007434(c, &gFloorPlaneResult);
            } else {
                gFloorPlaneResult.isColliding = FALSE;
            }
        } else {
            sub_8007434(c, &gFloorPlaneResult);
        }

        if (!(gPlayerStateSettings[gPlayerState] & 0x400) && !gFloorPlaneResult.isColliding
            && gFloorPlaneResult.field_2C != FX32_CONST(90)
            && (stru_3002950.field_2C != gFloorPlaneResult.field_2C
                || stru_3002950.field_28 != gFloorPlaneResult.field_28)) {
            sub_08007890(c, &gFloorPlaneResult);
        }

        sub_8006FFC(c, &gWallPlaneResult, &gFloorPlaneResult);
        sub_8007AC4(c);

        if (!stru_3002950.isColliding) {
            if (gFloorPlaneResult.isColliding || dword_20011FC > 0) {
                stru_3002950.isColliding = TRUE;
                dword_20011FC--;
            } else if (!gWallPlaneResult.isColliding && !dword_203DFC4) {
                return;
            }
        } else {
            dword_20011FC = 1;
        }

        if (!sub_800A7DC(&gPlayerPosTemp, &gPlayerShadowPosTemp)) {
            if (!sub_800ABD4(&gPlayerPosTemp, &gPlayerShadowPosTemp)) {
                return;
            }

            sub_800AD64();

            if (!(gPlayerStateSettings[gPlayerState] & 0x400)
                && !(gPlayerStateSettings[gPlayerState] & 0x100)) {
                sub_800E61C();

                if ((!gWallPlaneResult.isColliding
                     || sub_0800B04C(&vec3, &gPlayerPosTemp, &gPlayerShadowPosTemp, c))
                    && sub_800ADAC(&gPlayerPosTemp, &gPlayerShadowPosTemp, &vec1, c)) {
                    gPlayerPos.x = gPlayerPosTemp.x;
                    gPlayerPos.y = gPlayerPosTemp.y;
                    gPlayerPos.z = gPlayerPosTemp.z;
                    gPlayerShadowPos.x = gPlayerShadowPosTemp.x;
                    gPlayerShadowPos.y = gPlayerShadowPosTemp.y;
                    gPlayerShadowPos.z = gPlayerShadowPosTemp.z;
                }
            } else {
                if (sub_0800A8B4()) {
                    return;
                }

                if (gWallPlaneResult.isColliding) {
                    sub_0800B04C(&vec3, &gPlayerPosTemp, &gPlayerShadowPosTemp, c);
                }

                if (gPlayerStateSettings[gPlayerState] & 0x100 && gWallPlaneResult.isColliding) {
                    gPlayerPosTemp.x = gPlayerPos.x;
                    gPlayerPosTemp.z = gPlayerPos.z;
                    gPlayerShadowPosTemp.x = gPlayerShadowPos.x;
                    gPlayerShadowPosTemp.z = gPlayerShadowPos.z;
                }

                if (sub_800AEFC(&gPlayerPosTemp, &gPlayerShadowPosTemp, c)) {
                    gPlayerPos.x = gPlayerPosTemp.x;
                    gPlayerPos.y = gPlayerPosTemp.y;
                    gPlayerPos.z = gPlayerPosTemp.z;
                    gPlayerShadowPos.x = gPlayerShadowPosTemp.x;
                    gPlayerShadowPos.y = gPlayerShadowPosTemp.y;
                    gPlayerShadowPos.z = gPlayerShadowPosTemp.z;

                    if (byte_30029F8 && !sub_80038BC(dword_2000FC8)
                        && !(gPlayerStateSettings[gPlayerState] & 0x100)) {
                        sub_800387C(dword_2000FC8);
                        sub_80181B8(&gPlayerPos.y);
                    }
                }
            }
        }
    }

    if (!gIsSlideMiniGame) {
        stru_30032E8.x = gPlayerPos.x - (dword_3003300 >> 1);
        stru_30032E8.y = gPlayerPos.y;
        stru_30032E8.z = gPlayerPos.z - (dword_3003304 >> 1);
        stru_30032F4.x = gPlayerPos.x + (dword_3003300 >> 1);
        stru_30032F4.y = gPlayerPos.y + dword_3003308;
        stru_30032F4.z = gPlayerPos.z + (dword_3003304 >> 1);
        update_camera(&gPlayerPos, dword_2001110, dword_2001114, word_2002EC2);
    }
}

/**
 * Calculates the new camera position. Also updates the player sprites' positions.
 */
static void update_camera(struct Vec3fx* position, s32 a2, s32 a3, s32 offset) {
    s32 direction;
    fx32 oldCamPosX = gCameraPosX;
    fx32 oldCamPosY = gCameraPosY;

    gCameraGoalPosX = position->x + (a2 << FX32_SHIFT);
    gCameraGoalPosY = (gMapPixelSizeY << FX32_SHIFT)
                      - (position->y + position->z + (a3 << FX32_SHIFT) + (offset << FX32_SHIFT));

    move_camera(offset);

    direction = oldCamPosX - gCameraPosX < 0 ? 2 : 1;
    direction |= oldCamPosY - gCameraPosY < 0 ? 8 : 4;

    gPlayerSprite.xPos = ((gCameraGoalPosX - gCameraPosX) >> FX32_SHIFT) + 120 - a2;
    gPlayerSprite.yPos = ((gCameraGoalPosY - gCameraPosY) >> FX32_SHIFT) + 80 + a3;
    gPlayerShadowSprite.xPos = ((gCameraGoalPosX - gCameraPosX) >> FX32_SHIFT) + 120 - a2;
    gPlayerShadowSprite.yPos = ((gCameraGoalPosY - gCameraPosY) >> FX32_SHIFT) + 80 + a3
                               + ((gPlayerPos.y - gPlayerShadowPos.y) >> FX32_SHIFT);

    if (byte_20010AF) {
        sprite_2000FAC.xPos = ((gCameraGoalPosX - gCameraPosX) >> FX32_SHIFT) + 120 - a2;
        sprite_2000FAC.yPos = ((gCameraGoalPosY - gCameraPosY) >> FX32_SHIFT) + 80 + a3;
    }

    if (direction & 1) {
        UpdateMapLeft(gCameraPosX);
    } else if (direction & 2) {
        UpdateMapRight(gCameraPosX);
    }

    if (direction & 4) {
        UpdateMapUp(gCameraPosY);
    } else if (direction & 8) {
        UpdateMapDown(gCameraPosY);
    }
}

/**
 * Moves the camera to the target position.
 * \param offset    A pixel offset.
 */
static void move_camera(s32 offset) {
    fx32 delta;
    fx32 deltaAbs;
    fx32 velocity;
    fx32 position;
    fx32 targetPos;

    gIsCameraMovingX = FALSE;
    position = gCameraPosX;
    targetPos = gCameraGoalPosX;
    delta = position - targetPos;
    deltaAbs = Abs(delta);

    if (deltaAbs < FX32_ONE) {
        gCameraPosX = gCameraGoalPosX;
        velocity = 0;
    } else {
        velocity = clamp_camera_velocity(delta, deltaAbs);
        gIsCameraMovingX = TRUE;
    }

    gCameraPosX += velocity;

    if ((gCameraPosX >> FX32_SHIFT) + 120 >= gMapPixelSizeX) {
        gCameraPosX = (gMapPixelSizeX - 120) << FX32_SHIFT;
        gIsCameraMovingX = FALSE;
    } else if ((gCameraPosX >> FX32_SHIFT) - 120 < 0) {
        gCameraPosX = FX32_CONST(120);
        gIsCameraMovingX = FALSE;
    }

    gIsCameraMovingY = FALSE;
    position = gCameraPosY;
    targetPos = gCameraGoalPosY;
    delta = position - targetPos;
    deltaAbs = Abs(delta);

    if (deltaAbs < FX32_ONE) {
        gCameraPosY = gCameraGoalPosY;
        velocity = 0;
    } else {
        velocity = clamp_camera_velocity(delta, deltaAbs);
        gIsCameraMovingY = TRUE;
    }

    gCameraPosY += velocity;

    if ((gCameraPosY >> FX32_SHIFT) + 80 >= gMapPixelSizeY) {
        // This doesn't match for some reason.
        // gCameraPosY = (gMapPixelSizeY - 80 + a1) << FX32_SHIFT;
        gCameraPosY = gMapPixelSizeY - 80;
        gCameraPosY += offset;
        gCameraPosY <<= FX32_SHIFT;

        if ((gCameraPosY >> FX32_SHIFT) + 80 >= gMapPixelSizeY) {
            gCameraPosY = (gMapPixelSizeY - 80) << FX32_SHIFT;
            gIsCameraMovingY = FALSE;
        } else if ((gCameraPosY >> FX32_SHIFT) - 80 < 0) {
            gCameraPosY = FX32_CONST(80);
            gIsCameraMovingY = FALSE;
        }
    } else if ((gCameraPosY >> FX32_SHIFT) - 80 < 0) {
        gCameraPosY = (offset << FX32_SHIFT) + FX32_CONST(80);

        if ((gCameraPosY >> FX32_SHIFT) + 80 >= gMapPixelSizeY) {
            gCameraPosY = (gMapPixelSizeY - 80) << FX32_SHIFT;
            gIsCameraMovingY = FALSE;
        } else if ((gCameraPosY >> FX32_SHIFT) - 80 < 0) {
            gCameraPosY = FX32_CONST(80);
            gIsCameraMovingY = FALSE;
        }
    }
}

/**
 * Clamps velocity to predefined velocities.
 * \param velocity  Velocity can be negative.
 * \param speed     Speed is an absolute value.
 */
static fx32 clamp_camera_velocity(fx32 velocity, fx32 speed) {
    if (speed < FX32_CONST(1.5)) {
        return velocity < 0 ? FX32_CONST(0.5) : FX32_CONST(-0.5);
    } else if (speed < FX32_CONST(2)) {
        return velocity < 0 ? FX32_CONST(1.5) : FX32_CONST(-1.5);
    } else if (speed < FX32_CONST(2.5)) {
        return velocity < 0 ? FX32_CONST(2) : FX32_CONST(-2);
    } else if (speed < FX32_CONST(4)) {
        return velocity < 0 ? FX32_CONST(2.5) : FX32_CONST(-2.5);
    } else if (speed < FX32_CONST(6)) {
        return velocity < 0 ? FX32_CONST(3) : FX32_CONST(-3);
    } else if (speed < FX32_CONST(16)) {
        return velocity < 0 ? FX32_CONST(3.5) : FX32_CONST(-3.5);
    } else {
        return velocity < 0 ? FX32_CONST(5) : FX32_CONST(-5);
    }
}

void sub_800B958(int a1, int a2, int a3, int a4, int a5) {
    fx32 v6;
    u32 direction;

    gIsCameraMovingX = 0;
    gIsCameraMovingY = 0;

    v6 = a2 + (word_2002EC2 << FX32_SHIFT);
    if ((v6 >> FX32_SHIFT) + 80 >= gMapPixelSizeY || (v6 >> FX32_SHIFT) - 80 < 0) {
        v6 = a2;
    }

    direction = a3 - a1 < 0 ? 2 : 1;
    direction |= a4 - v6 < 0 ? 8 : 4;

    if (direction & 1) {
        UpdateMapLeft(a1);
    } else if (direction & 2) {
        UpdateMapRight(a1);
    }

    if (direction & 4) {
        UpdateMapUp(v6);
    } else if (direction & 8) {
        UpdateMapDown(v6);
    }

    if (a5) {
        s32 v10;
        u32 v11;

        v10 = (gPlayerPos.x >> FX32_SHIFT) - gCameraPixelX;
        v11 = (((gMapPixelSizeY << FX32_SHIFT) - (gPlayerPos.y + gPlayerPos.z)) >> FX32_SHIFT)
              - gCameraPixelY;

        gPlayerSprite.xPos = v10;
        gPlayerSprite.yPos = v11;
        if (v11 + 20 >= 248 || v10 < -20 || v10 > 260) {
            gPlayerSprite.field_13 = 1;
        } else {
            gPlayerSprite.field_13 = 0;
        }

        v10 = gPlayerSprite.xPos;
        v11 =
            (((gMapPixelSizeY << FX32_SHIFT) - (gPlayerShadowPos.y + gPlayerShadowPos.z)) >> FX32_SHIFT)
            - gCameraPixelY - ((gPlayerPos.y - gPlayerShadowPos.y) >> FX32_SHIFT);

        gPlayerShadowSprite.xPos = v10;
        gPlayerShadowSprite.yPos = v11;
        if (v11 + 20 >= 248 || v10 < -20 || v10 > 260) {
            gPlayerShadowSprite.field_13 = 1;
        } else if (!(gPlayerStateSettings[gPlayerState] & 0x200)
                       && !(gPlayerStateSettings[gPlayerState] & 0x80)
                       && !(gPlayerStateSettings[gPlayerState] & 0x800)
                   || gPlayerStateSettings[gPlayerState] & 0x100) {
            gPlayerShadowSprite.field_13 = 0;
        }
    }
}

static void sub_800BAF0(u32** a1, u32* a2) {
    int* v6;
    int* v8;
    u32 priority, pos;
    int v9[2];
    int a4[2];
    int a1a[2];
    int a2a[2];
    int v14[2];
    s16* stuff;

    char r10 = byte_203F9A2;

    if (r10 || gPlayerState == PLAYER_STATE_35) {
        return;
    }

    v9[0] = gCameraPixelX;
    v9[1] = gCameraPixelY;
    a4[0] = gCameraPixelX + 240;
    a4[1] = gCameraPixelY + 160;
    a1a[0] = (gPlayerPos.x - (dword_3003300 >> 1)) >> 16;
    a1a[1] =
        gMapPixelSizeY - ((gPlayerPos.y + gPlayerPos.z + dword_3003308 + (dword_3003304 >> 1)) >> 16);
    a2a[0] = (gPlayerPos.x + (dword_3003300 >> 1)) >> 16;
    a2a[1] = gMapPixelSizeY - ((gPlayerPos.y + gPlayerPos.z - (dword_3003304 >> 1)) >> 16);
    stuff = (s16*)&gPlayerShadowPos;
    v14[0] = stuff[1];
    v14[1] = gMapPixelSizeY - ((gPlayerShadowPos.y + gPlayerShadowPos.z) >> 16);

    if (!sub_8003974(a1a, a2a, v9, a4)) {
        gPlayerSprite.field_13 = 1;
    } else {
        gPlayerSprite.field_13 = r10;
    }

    if (byte_20010AF) {
        int* v5;
        sub_80033DC(&sprite_2000FAC, *a1);
        v5 = *a1;
        *v5 = sprite_2000FAC.priority << 30;
        *a1 = v5 + 3;
        ++*a2;
    }

    sub_80033DC(&gPlayerSprite, *a1);
    v6 = *a1;
    *v6 = (gPlayerSprite.priority << 30) | ((u32)gPlayerPos.z >> 4);
    *a1 = v6 + 3;
    ++*a2;

    if ((gPlayerStateSettings[gPlayerState] & 0x200) != 0
        || (gPlayerStateSettings[gPlayerState] & 0x80) != 0 || !sub_800397C(v14, v9, a4)) {
        gPlayerShadowSprite.field_13 = 1;
    } else if ((gPlayerStateSettings[gPlayerState] & 0x800) == 0) {
        gPlayerShadowSprite.field_13 = 0;
    }

    sub_80033DC(&gPlayerShadowSprite, *a1);
    v8 = *a1;
    priority = gPlayerShadowSprite.priority << 30;
    pos = ((u32)gPlayerShadowPos.z >> 4) | 0x10000000;
    *v8 = priority | pos;
    *a1 = v8 + 3;
    ++*a2;
}

bool32 sub_0800BCD4(struct struc_44* a1) {
    bool32 isMusicChanged;
    u32 level;
    int v3;
    int room;

    v3 = a1->warpDestRoom & 0x80;
    room = (a1->warpDestRoom & 0x7F) - 1;

    ASSERT(room >= 0);

    level = gLoadedRoomLevel;

    if (gLoadedRoomIndex == ROOM_MUMBOHUT) {
        audio_halt_all_fx();
        isMusicChanged = TRUE;
        sub_80270AC(4095, 1);
        gRoomGoal = dword_80CEBF8[gLoadedRoomLevel];
        gWarpGoal = dword_80CEBE0[gLoadedRoomLevel];
        SetupRoom(gRoomGoal, gWarpGoal, 1, 0);
        sub_803FE78();
    } else {
        switch (sub_0800C63C(room, a1->warpDestWarp)) {
            case 1:
                return TRUE;

            case 2:
                return FALSE;

            case 0:
            default:
                sub_805E1DC(1);
                audio_halt_all_fx();
                isMusicChanged = gLoadedRoomBgm != dRoomIndexes[room].music;
                sub_80270AC(4095, isMusicChanged);
                room = (a1->warpDestRoom & 0x7F) - 1;
                if (!v3) {
                    if (dword_80CEE5C[gLoadedRoomLevel] != room
                        || dword_80CEE74[gLoadedRoomLevel] != a1->warpDestWarp) {
                        if (room != ROOM_MUMBOHUT) {
                            gRoomGoal = room;
                            gWarpGoal = a1->warpDestWarp;
                        } else {
                            gRoomGoal = dword_80CEBF8[gLoadedRoomLevel];
                            gWarpGoal = dword_80CEBE0[gLoadedRoomLevel];
                        }
                    }
                }
                SetupRoom(room, a1->warpDestWarp, 1, 0);
                break;
        }
    }

    sub_8025E44(gLoadedRoomLevel);
    sub_8013A10(word_200145C, word_200145E, gBGInitOffsetHorizontal, gBGInitOffsetVertical, 21, 32);
    sub_800389C(dword_2000FC8, dword_80CC844[gRoomHeader.unknown1]);
    sub_8018BB0(&gPlayerSprite);
    audio_halt_all_fx();
    load_transformation_palette();
    EnableBGAlphaBlending();

    if (v3) {
        if (!byte_20010B1) {
            sub_800EB58(1);
        }
        sub_800ECB4();
    } else if (byte_20010B1) {
        byte_20010B1 = 0;
        sub_80275A4();
    }

    init_efx();
    enable_poison_effect();
    init_room_name();
    sub_800EF6C(a1->warpDestWarp);
    sub_8026E48(4095, isMusicChanged, 1);
    gPlayerSprite.xPos = gPlayerInitPixelPosX;
    gPlayerSprite.yPos = gPlayerInitPixelPosY;
    gPlayerShadowSprite.xPos = gPlayerInitPixelPosX;
    gPlayerShadowSprite.yPos = gPlayerInitPixelPosY;
    sub_8041E88(&gPlayerShadowSprite);

    if (level != gLoadedRoomLevel) {
        sub_8040178();
    }

    if (byte_20010A4) {
        sub_8016C78(byte_20010A5);
        word_20010AC = gKeysPressed & KEYS_MASK;
    } else {
        sub_8016C78(gPlayerSprite.field_A);
    }

    sub_8039210();

    if (gInInteractionArea) {
        gInInteractionArea = 0;
        dword_203DFE0 = 0;
    }

    gFloorPlaneResult.isColliding = FALSE;
    gPlayerSprite.field_13 = 0;

    return TRUE;
}

void sub_800BFA0(int room, int warp, int a3) {
    bool32 isMusicChanged;
    u32 level;

    level = gLoadedRoomLevel;

    sub_805E1DC(1);
    audio_halt_all_fx();

    if (gLoadedRoomIndex == ROOM_MUMBOHUT) {
        isMusicChanged = TRUE;
        sub_80270AC(4095, 1);
        gRoomGoal = dword_80CEBF8[gLoadedRoomLevel];
        gWarpGoal = dword_80CEBE0[gLoadedRoomLevel];
        SetupRoom(gRoomGoal, gWarpGoal, 1, 0);
        sub_803FE78();
    } else {
        isMusicChanged = gLoadedRoomBgm != dRoomIndexes[room].music;
        sub_80270AC(4095, isMusicChanged);

        if ((dword_80CEE5C[gLoadedRoomLevel] != room || dword_80CEE74[gLoadedRoomLevel] != warp)
            && a3) {
            if (room != ROOM_MUMBOHUT) {
                gRoomGoal = room;
                gWarpGoal = warp;
            } else {
                gRoomGoal = dword_80CEBF8[gLoadedRoomLevel];
                gWarpGoal = dword_80CEBE0[gLoadedRoomLevel];
            }
        }

        SetupRoom(room, warp, 1, 0);
    }

    sub_8025E44(gLoadedRoomLevel);
    sub_8013A10(word_200145C, word_200145E, gBGInitOffsetHorizontal, gBGInitOffsetVertical, 21, 32);
    sub_800389C(dword_2000FC8, dword_80CC844[gRoomHeader.unknown1]);
    sub_8018BB0(&gPlayerSprite);
    audio_halt_all_fx();
    load_transformation_palette();
    EnableBGAlphaBlending();
    sub_800EB14();
    init_efx();
    enable_poison_effect();
    init_room_name();
    sub_800EF6C(warp);
    sub_8026E48(4095, isMusicChanged, 1);
    gPlayerSprite.xPos = gPlayerInitPixelPosX;
    gPlayerSprite.yPos = gPlayerInitPixelPosY;
    gPlayerShadowSprite.xPos = gPlayerInitPixelPosX;
    gPlayerShadowSprite.yPos = gPlayerInitPixelPosY;
    sub_8041E88(&gPlayerShadowSprite);

    if (level != gLoadedRoomLevel) {
        sub_8040178();
    }

    if (byte_20010A4) {
        sub_8016C78(byte_20010A5);
        word_20010AC = gKeysPressed & KEYS_MASK;
    } else {
        sub_8016C78(gPlayerSprite.field_A);
    }

    sub_8039210();

    if (gInInteractionArea) {
        gInInteractionArea = 0;
        dword_203DFE0 = 0;
    }

    gPlayerSprite.field_13 = 0;
}

void sub_800C1E8(int room, int a2, int a3, int a4, int a5, u32 a6) {
    bool32 isMusicChanged;
    u32 level;

    gShowRoomName = 0;
    level = gLoadedRoomLevel;

    if (a6 != 2) {
        sub_805E1DC(1);
    }

    audio_halt_all_fx();

    isMusicChanged = gLoadedRoomBgm != dRoomIndexes[room].music;

    sub_80270AC(4095, isMusicChanged);
    sub_08013378(room, a2, a3, a4, a6);
    sub_8025E44(gLoadedRoomLevel);
    sub_8013A10(word_200145C, word_200145E, gBGInitOffsetHorizontal, gBGInitOffsetVertical, 21, 32);
    sub_800389C(dword_2000FC8, dword_80CC844[gRoomHeader.unknown1]);
    load_transformation_palette();
    EnableBGAlphaBlending();
    sub_800EB14();
    init_efx();
    enable_poison_effect();

    if (gLoadedRoomIndex == ROOM_DIVESPOT || gLoadedRoomIndex == ROOM_UNDERCORAL) {
        byte_20010A4 = 0;
        sub_8017B34(gTransformation != TRANSFORMATION_BANJO);
    }

    if (dword_2001104 == 1) {
        DmaTransfer32(&unk_83FCF14, BG_PLTT, 128);
    }

    if (a5) {
        sub_8026E48(4095, isMusicChanged, 1);
    }

    gPlayerSprite.xPos = gPlayerInitPixelPosX;
    gPlayerSprite.yPos = gPlayerInitPixelPosY;
    gPlayerShadowSprite.xPos = gPlayerInitPixelPosX;
    gPlayerShadowSprite.yPos = gPlayerInitPixelPosY;

    sub_803FE78();
    sub_8041E88();

    if (level != gLoadedRoomLevel) {
        sub_8040178();
    }

    sub_8039210();
    gPlayerSprite.field_13 = 0;
    if (gInInteractionArea) {
        gInInteractionArea = 0;
        dword_203DFE0 = 0;
    }
}

void sub_0800C388(int a1, int a2) {
    bool32 isMusicChanged;
    s32 room;
    u32 level;

    ASSERT(a1 & 0x80);

    level = gLoadedRoomLevel;
    room = (a1 & 0x7F) - 1;

    ASSERT(room >= 0);

    sub_805E1DC(1);
    audio_halt_all_fx();

    isMusicChanged = gLoadedRoomBgm != dRoomIndexes[room].music;

    sub_80270AC(4095, isMusicChanged);
    SetupRoom(room, a2, 1, 0);
    sub_8025E44(gLoadedRoomLevel);
    sub_8013A10(word_200145C, word_200145E, gBGInitOffsetHorizontal, gBGInitOffsetVertical, 21, 32);
    sub_800389C(dword_2000FC8, dword_80CC844[gRoomHeader.unknown1]);
    load_transformation_palette();
    EnableBGAlphaBlending();

    if (!byte_20010B1) {
        sub_800EB58(1);
    }

    sub_800ECB4();
    init_efx();
    enable_poison_effect();
    init_room_name();
    sub_08040A38(56);
    sub_8026E48(4095, isMusicChanged, 1);
    gPlayerSprite.xPos = gPlayerInitPixelPosX;
    gPlayerSprite.yPos = gPlayerInitPixelPosY;
    gPlayerShadowSprite.xPos = gPlayerInitPixelPosX;
    gPlayerShadowSprite.yPos = gPlayerInitPixelPosY;
    sub_803FE78();
    sub_8041E88();

    if (level != gLoadedRoomLevel) {
        sub_8040178();
    }

    sub_8039210();
    gPlayerSprite.field_13 = 0;

    if (gLoadedRoomIndex == ROOM_UNDERCORAL && !sub_80342CC(94, 0)) {
        init_function(80);
    }

    if (gInInteractionArea) {
        gInInteractionArea = 0;
        dword_203DFE0 = 0;
    }
}

int sub_800C50C() {
    fx32 pos;

    if (dword_203DFC4) {
        u8 a = dword_203DFC0[dword_203DFC4->field_1E];
        pos = gPlayerPos.y - dword_203DFC4->field_98;

        if (pos >> 16 >= dword_203FA5C[a].field_28) {
            return dword_203FA5C[a].field_27;
        } else {
            return dword_203DFC4->field_8;
        }
    }

    if ((gKeysPressed & word_20010AC) != 0) {
        return byte_20010A7;
    }

    pos = gPlayerPos.y - gPlayerShadowPos.y;

    if ((gPlayerStateSettings[gPlayerState] & 0x400) == 0) {
        if (pos != 0) {
            if ((gPlayerStateSettings[gPlayerState] & 0x100) == 0
                && (gPlayerStateSettings[gPlayerState] & 0x40) == 0) {
                return gFloorPlaneResult.playerSpritePriority;
            } else {
                return stru_3002950.playerSpritePriority;
            }
        }

        return stru_3002950.playerSpritePriority;
    }

    if (pos >> 16 >= stru_3002950.field_48) {
        return stru_3002950.field_6;
    }

    return stru_3002950.playerSpritePriority;
}

void sub_800C604() {
    byte_2001094 = gLoadedRoomIndex;
    dword_2001098 = gPlayerPos.x;
    dword_200109C = gPlayerPos.y;
    dword_20010A0 = gPlayerPos.z;
}

static int sub_0800C63C(int room, u32 warp) {
    switch (room) {
        case ROOM_BEACHSLIDE:
            switch (gLoadedRoomIndex) {
                case ROOM_LOWERFARM:
                    audio_halt_all_fx();
                    sub_80270AC(4095, 1);
                    sub_800DE9C();
                    sub_8016C78(0);
                    gIsCameraMovingX = 0;
                    gIsCameraMovingY = 0;
                    gShowRoomName = 0;
                    word_2001128 = warp;
                    byte_20010B0 = 1;
                    word_2000342 = REG_DISPCNT;
                    word_2000344 = REG_BG0CNT;
                    word_2000346 = REG_BG1CNT;
                    word_2000348 = REG_BG2CNT;
                    word_200034A = REG_BG3CNT;
                    sub_080593D0(9, 0);
                    break;

                case ROOM_BEACHTOP:
                    audio_halt_all_fx();
                    sub_80270AC(4095, 1);
                    sub_800DE9C();
                    sub_8016C78(0);
                    gIsCameraMovingX = 0;
                    gIsCameraMovingY = 0;
                    gShowRoomName = 0;
                    word_2001128 = warp;
                    byte_20010B0 = 1;
                    word_2000342 = REG_DISPCNT;
                    word_2000344 = REG_BG0CNT;
                    word_2000346 = REG_BG1CNT;
                    word_2000348 = REG_BG2CNT;
                    word_200034A = REG_BG3CNT;
                    sub_080593D0(0, 0);
                    break;

                case ROOM_VILLAGE:
                    audio_halt_all_fx();
                    sub_80270AC(4095, 1);
                    sub_800DE9C();
                    sub_8016C78(0);
                    gIsCameraMovingX = 0;
                    gIsCameraMovingY = 0;
                    gShowRoomName = 0;
                    word_2001128 = warp;
                    byte_20010B0 = 1;
                    word_2000342 = REG_DISPCNT;
                    word_2000344 = REG_BG0CNT;
                    word_2000346 = REG_BG1CNT;
                    word_2000348 = REG_BG2CNT;
                    word_200034A = REG_BG3CNT;
                    sub_080593D0(5, 0);
                    break;

                default:
                    HANG;
                    break;
            }
            return 1;

        case ROOM_BEACHSHOOT:
            if (!gUnlockedMoves[MOVE_EGG_BLUE] || sub_80342CC(217, 10)) {
                return 2;
            }
            audio_halt_all_fx();
            sub_80270AC(4095, 1);
            sub_800DE9C();
            sub_8016C78(0);
            gIsCameraMovingX = 0;
            gIsCameraMovingY = 0;
            gShowRoomName = 0;
            byte_20010B0 = 1;
            word_2000342 = REG_DISPCNT;
            word_2000344 = REG_BG0CNT;
            word_2000346 = REG_BG1CNT;
            word_2000348 = REG_BG2CNT;
            word_200034A = REG_BG3CNT;
            word_2001128 = warp;
            sub_08052B58(1, 0);
            return 1;

        case ROOM_GRUNTYSHOOT:
            if (sub_80342CC(205, 0)) {
                return 2;
            }
            audio_halt_all_fx();
            sub_80270AC(4095, 1);
            sub_800DE9C();
            sub_8016C78(0);
            gIsCameraMovingX = 0;
            gIsCameraMovingY = 0;
            gShowRoomName = 0;
            byte_20010B0 = 1;
            word_2000342 = REG_DISPCNT;
            word_2000344 = REG_BG0CNT;
            word_2000346 = REG_BG1CNT;
            word_2000348 = REG_BG2CNT;
            word_200034A = REG_BG3CNT;
            word_2001128 = warp;
            sub_08052B58(2, 0);
            return 1;

        case ROOM_SKIDOOS:
            if (sub_80342CC(217, 14)) {
                return 2;
            }
            audio_halt_all_fx();
            sub_80270AC(4095, 1);
            sub_800DE9C();
            sub_8016C78(0);
            gIsCameraMovingX = 0;
            gIsCameraMovingY = 0;
            gShowRoomName = 0;
            byte_20010B0 = 1;
            word_2000342 = REG_DISPCNT;
            word_2000344 = REG_BG0CNT;
            word_2000346 = REG_BG1CNT;
            word_2000348 = REG_BG2CNT;
            word_200034A = REG_BG3CNT;
            word_2001128 = warp;
            sub_08055A14(4, 0);
            return 1;

        case ROOM_BOATFIGHT:
            if (sub_80342CC(217, 11)) {
                return 2;
            }
            audio_halt_all_fx();
            sub_80270AC(4095, 1);
            sub_800DE9C();
            sub_8016C78(0);
            gIsCameraMovingX = 0;
            gIsCameraMovingY = 0;
            gShowRoomName = 0;
            byte_20010B0 = 1;
            word_2000342 = REG_DISPCNT;
            word_2000344 = REG_BG0CNT;
            word_2000346 = REG_BG1CNT;
            word_2000348 = REG_BG2CNT;
            word_200034A = REG_BG3CNT;
            word_2001128 = warp;
            sub_08055A14(3, 0);
            return 1;

        case ROOM_SHEEPDIP:
            switch (gLoadedRoomIndex) {
                case ROOM_UPPERFARM:
                    if (sub_80342CC(217, 15)) {
                        return 2;
                    }
                    audio_halt_all_fx();
                    sub_80270AC(4095, 1);
                    sub_800DE9C();
                    sub_8016C78(0);
                    gIsCameraMovingX = 0;
                    gIsCameraMovingY = 0;
                    gShowRoomName = 0;
                    byte_20010B0 = 1;
                    word_2000342 = REG_DISPCNT;
                    word_2000344 = REG_BG0CNT;
                    word_2000346 = REG_BG1CNT;
                    word_2000348 = REG_BG2CNT;
                    word_200034A = REG_BG3CNT;
                    word_2001128 = warp;
                    sub_0805BA1C(6, 0);
                    return 1;

                case ROOM_BOARDWALK:
                    if (sub_80342CC(217, 17)) {
                        return 2;
                    }
                    pause_efx();
                    audio_halt_all_fx();
                    sub_80270AC(4095, 1);
                    sub_800DE9C();
                    sub_8016C78(0);
                    gIsCameraMovingX = 0;
                    gIsCameraMovingY = 0;
                    gShowRoomName = 0;
                    byte_20010B0 = 1;
                    word_2000342 = REG_DISPCNT;
                    word_2000344 = REG_BG0CNT;
                    word_2000346 = REG_BG1CNT;
                    word_2000348 = REG_BG2CNT;
                    word_200034A = REG_BG3CNT;
                    word_2001128 = warp;
                    sub_0805BA1C(7, 0);
                    return 1;

                case ROOM_FJORD:
                    if (sub_80342CC(217, 18)) {
                        return 2;
                    }
                    audio_halt_all_fx();
                    sub_80270AC(4095, 1);
                    sub_800DE9C();
                    sub_8016C78(0);
                    gIsCameraMovingX = 0;
                    gIsCameraMovingY = 0;
                    gShowRoomName = 0;
                    byte_20010B0 = 1;
                    word_2000342 = REG_DISPCNT;
                    word_2000344 = REG_BG0CNT;
                    word_2000346 = REG_BG1CNT;
                    word_2000348 = REG_BG2CNT;
                    word_200034A = REG_BG3CNT;
                    word_2001128 = warp;
                    sub_0805BA1C(8, 0);
                    return 1;
            }
            break;
    }

    return 0;
}

void sub_0800CD94(int a1) {
    switch (a1) {
        case 9:
            audio_halt_all_fx();
            sub_80270AC(4095, 1);
            gShowRoomName = 0;
            byte_20010B0 = 1;
            word_2000342 = REG_DISPCNT;
            word_2000344 = REG_BG0CNT;
            word_2000346 = REG_BG1CNT;
            word_2000348 = REG_BG2CNT;
            word_200034A = REG_BG3CNT;
            sub_080593D0(9, 1);
            break;

        case 0:
            audio_halt_all_fx();
            sub_80270AC(4095, 1);
            gShowRoomName = 0;
            byte_20010B0 = 1;
            word_2000342 = REG_DISPCNT;
            word_2000344 = REG_BG0CNT;
            word_2000346 = REG_BG1CNT;
            word_2000348 = REG_BG2CNT;
            word_200034A = REG_BG3CNT;
            sub_080593D0(0, 1);
            break;

        case 5:
            audio_halt_all_fx();
            sub_80270AC(4095, 1);
            gShowRoomName = 0;
            byte_20010B0 = 1;
            word_2000342 = REG_DISPCNT;
            word_2000344 = REG_BG0CNT;
            word_2000346 = REG_BG1CNT;
            word_2000348 = REG_BG2CNT;
            word_200034A = REG_BG3CNT;
            sub_080593D0(5, 1);
            break;

        case 3:
            audio_halt_all_fx();
            sub_80270AC(4095, 1);
            gShowRoomName = 0;
            byte_20010B0 = 1;
            word_2000342 = REG_DISPCNT;
            word_2000344 = REG_BG0CNT;
            word_2000346 = REG_BG1CNT;
            word_2000348 = REG_BG2CNT;
            word_200034A = REG_BG3CNT;
            sub_08055A14(3, 1);
            break;

        case 4:
            audio_halt_all_fx();
            sub_80270AC(4095, 1);
            gShowRoomName = 0;
            byte_20010B0 = 1;
            word_2000342 = REG_DISPCNT;
            word_2000344 = REG_BG0CNT;
            word_2000346 = REG_BG1CNT;
            word_2000348 = REG_BG2CNT;
            word_200034A = REG_BG3CNT;
            sub_08055A14(4, 1);
            break;

        case 6:
            audio_halt_all_fx();
            sub_80270AC(4095, 1);
            gShowRoomName = 0;
            byte_20010B0 = 1;
            word_2000342 = REG_DISPCNT;
            word_2000344 = REG_BG0CNT;
            word_2000346 = REG_BG1CNT;
            word_2000348 = REG_BG2CNT;
            word_200034A = REG_BG3CNT;
            sub_0805BA1C(6, 1);
            break;

        case 7:
            audio_halt_all_fx();
            sub_80270AC(4095, 1);
            gShowRoomName = 0;
            byte_20010B0 = 1;
            word_2000342 = REG_DISPCNT;
            word_2000344 = REG_BG0CNT;
            word_2000346 = REG_BG1CNT;
            word_2000348 = REG_BG2CNT;
            word_200034A = REG_BG3CNT;
            sub_0805BA1C(7, 1);
            break;

        case 8:
            audio_halt_all_fx();
            sub_80270AC(4095, 1);
            gShowRoomName = 0;
            byte_20010B0 = 1;
            word_2000342 = REG_DISPCNT;
            word_2000344 = REG_BG0CNT;
            word_2000346 = REG_BG1CNT;
            word_2000348 = REG_BG2CNT;
            word_200034A = REG_BG3CNT;
            sub_0805BA1C(8, 1);
            break;

        default:
            HANG;
            break;
    }
}

void load_mini_game_from_arcade(int miniGame) {
    switch (miniGame) {
        case MINI_GAME_EGG_SCRAMBLE:
            audio_halt_all_fx();
            sub_80270AC(4095, 1);
            gShowRoomName = 0;
            byte_20010B0 = 1;
            byte_203F4E0 = 1;
            word_2000342 = REG_DISPCNT;
            word_2000344 = REG_BG0CNT;
            word_2000346 = REG_BG1CNT;
            word_2000348 = REG_BG2CNT;
            word_200034A = REG_BG3CNT;
            sub_080593D0(9, 2);
            break;

        case MINI_GAME_CHUBBY_CHUTE:
            audio_halt_all_fx();
            sub_80270AC(4095, 1);
            gShowRoomName = 0;
            byte_20010B0 = 1;
            byte_203F4E0 = 1;
            word_2000342 = REG_DISPCNT;
            word_2000344 = REG_BG0CNT;
            word_2000346 = REG_BG1CNT;
            word_2000348 = REG_BG2CNT;
            word_200034A = REG_BG3CNT;
            sub_080593D0(0, 2);
            break;

        case MINI_GAME_SLIDE_O_FEAR:
            audio_halt_all_fx();
            sub_80270AC(4095, 1);
            gShowRoomName = 0;
            byte_20010B0 = 1;
            byte_203F4E0 = 1;
            word_2000342 = REG_DISPCNT;
            word_2000344 = REG_BG0CNT;
            word_2000346 = REG_BG1CNT;
            word_2000348 = REG_BG2CNT;
            word_200034A = REG_BG3CNT;
            sub_080593D0(5, 2);
            break;

        case MINI_GAME_BATTLE_BOATS:
            audio_halt_all_fx();
            sub_80270AC(4095, 1);
            gShowRoomName = 0;
            byte_20010B0 = 1;
            byte_203F4E0 = 1;
            word_2000342 = REG_DISPCNT;
            word_2000344 = REG_BG0CNT;
            word_2000346 = REG_BG1CNT;
            word_2000348 = REG_BG2CNT;
            word_200034A = REG_BG3CNT;
            sub_08055A14(3, 2);
            break;

        case MINI_GAME_SNOWY_SLEDS:
            audio_halt_all_fx();
            sub_80270AC(4095, 1);
            gShowRoomName = 0;
            byte_20010B0 = 1;
            byte_203F4E0 = 1;
            word_2000342 = REG_DISPCNT;
            word_2000344 = REG_BG0CNT;
            word_2000346 = REG_BG1CNT;
            word_2000348 = REG_BG2CNT;
            word_200034A = REG_BG3CNT;
            sub_08055A14(4, 2);
            break;

        case MINI_GAME_SHEEP_DIP:
            audio_halt_all_fx();
            sub_80270AC(4095, 1);
            gShowRoomName = 0;
            byte_20010B0 = 1;
            byte_203F4E0 = 1;
            word_2000342 = REG_DISPCNT;
            word_2000344 = REG_BG0CNT;
            word_2000346 = REG_BG1CNT;
            word_2000348 = REG_BG2CNT;
            word_200034A = REG_BG3CNT;
            sub_0805BA1C(6, 2);
            break;

        case MINI_GAME_MAGIC_ANGLER:
            audio_halt_all_fx();
            sub_80270AC(4095, 1);
            gShowRoomName = 0;
            byte_20010B0 = 1;
            byte_203F4E0 = 1;
            word_2000342 = REG_DISPCNT;
            word_2000344 = REG_BG0CNT;
            word_2000346 = REG_BG1CNT;
            word_2000348 = REG_BG2CNT;
            word_200034A = REG_BG3CNT;
            sub_0805BA1C(7, 2);
            break;

        case MINI_GAME_FROZEN_FISH:
            audio_halt_all_fx();
            sub_80270AC(4095, 1);
            gShowRoomName = 0;
            byte_20010B0 = 1;
            byte_203F4E0 = 1;
            word_2000342 = REG_DISPCNT;
            word_2000344 = REG_BG0CNT;
            word_2000346 = REG_BG1CNT;
            word_2000348 = REG_BG2CNT;
            word_200034A = REG_BG3CNT;
            sub_0805BA1C(8, 2);
            break;

        default:
            HANG;
            break;
    }
}

void sub_800D5FC(int a1, int a2, int a3) {
    int room;
    int r5;

    byte_20010B0 = 0;

    room = 0;
    r5 = 0;

    switch (a1) {
        case 9:
            room = ROOM_LOWERFARM;
            if (sub_80342CC(0xD9, 0x10)) {
                r5 = 0;
            } else if (a2) {
                sub_8034460(217, 16, 0, 0);
                r5 = 0x45;
            } else {
                r5 = 0x46;
            }
            break;

        case 0:
            room = ROOM_BEACHSTART;
            if (sub_80342CC(0xD9, 9)) {
                r5 = 0;
            } else if (a2) {
                sub_8034460(0xD9, 9, 0, 0);
                r5 = 0x54;
            } else {
                r5 = 0x55;
            }
            break;

        case 5:
            room = ROOM_SANDAREA;
            if (sub_80342CC(0xD9, 0xD)) {
                r5 = 0;
            } else if (a2) {
                sub_8034460(0xD9, 0xD, 0, 0);
                r5 = 0x76;
            } else {
                r5 = 0x77;
            }
            break;

        case 1:
            room = ROOM_BEACHSTART;
            if (a2 && !sub_80342CC(0xD9, 0xA)) {
                sub_8034460(0xD9, 0xA, 0, 0);
                r5 = 0x4E;
                break;
            } else {
                r5 = 0;
                break;
            }

        case 2:
            room = ROOM_HARBOUR;
            if (a2 && !sub_80342CC(0xCD, 0)) {
                sub_8034460(0xCD, 0, 0, 0);
                r5 = 0x81;
                break;
            } else {
                r5 = 0;
                break;
            }

        case 3:
            room = ROOM_BEACHSTART;
            if (a2 && !sub_80342CC(0xD9, 0xB)) {
                sub_80342F8(0xD9, 0xB);
                r5 = 0;
                break;
            } else {
                r5 = 0;
                break;
            }

        case 4:
            room = ROOM_FJORD;
            if (a2 && !sub_80342CC(0xD9, 0xE)) {
                sub_80342F8(0xD9, 0xE);
                r5 = 0;
                break;
            } else {
                r5 = 0;
                break;
            }

        case 6:
            room = ROOM_UPPERFARM;
            if (a2 && !sub_80342CC(0xD9, 0xF)) {
                sub_8034460(0xD9, 0xF, 0, 0);
                r5 = 0x48;
            } else {
                r5 = 0;
            }
            break;

        case 7:
            room = ROOM_BOARDWALK;
            if (a2 && !sub_80342CC(0xD9, 0x11)) {
                sub_8034460(0xD9, 0x11, 0, 0);
                r5 = 0x67;
            } else {
                r5 = 0;
            }
            break;

        case 8:
            room = ROOM_FJORD;
            if (a2 && !sub_80342CC(0xD9, 0x12)) {
                sub_8034460(0xD9, 0x12, 0, 0);
                r5 = 0x93;
            } else {
                r5 = 0;
            }
            break;

        default:
            HANG;
            break;
    }

    gRoomGoal = room;
    gWarpGoal = word_2001128;

    SetupRoom(room, gWarpGoal, 1, 0);
    sub_8025E44(gLoadedRoomLevel);
    sub_8013A10(word_200145C, word_200145E, gBGInitOffsetHorizontal, gBGInitOffsetVertical, 21, 32);
    sub_800389C(dword_2000FC8, dword_80CC844[gRoomHeader.unknown1]);
    sub_8018BB0(&gPlayerSprite);
    load_transformation_palette();
    byte_200108D = 0;
    gPlayerSprite.field_10 = 0;
    byte_200108E = 0;
    EnableBGAlphaBlending();
    init_efx();
    init_room_name();

    if (!a3) {
        sub_8026E48(4095, 1, 1);
    } else {
        sub_8026F78(4095, 1, 1);
    }

    gPlayerSprite.xPos = gPlayerInitPixelPosX;
    gPlayerSprite.yPos = gPlayerInitPixelPosY;
    gPlayerShadowSprite.xPos = gPlayerInitPixelPosX;
    gPlayerShadowSprite.yPos = gPlayerInitPixelPosY;
    sub_803FE78();
    sub_8040178();
    if (byte_20010A4) {
        sub_8016C78(byte_20010A5);
        word_20010AC = gKeysPressed & 0x3FF;
    }
    sub_8063178();

    if (r5 != 0) {
        init_function(r5);
    }
}

void sub_800D8E8(int a1, char a2, char a3) {
    byte_20010B0 = 0;
    byte_203FA95 = 0;
    byte_203FA94 = a2;
    byte_203FA96 = a3;
    SetupRoom(dword_203FA8C, dword_203FA90, 1, 0);
    sub_8025E44(gLoadedRoomLevel);
    sub_8013A10(word_200145C, word_200145E, gBGInitOffsetHorizontal, gBGInitOffsetVertical, 21, 32);
    sub_800389C(dword_2000FC8, dword_80CC844[gRoomHeader.unknown1]);
    EnableBGAlphaBlending();
    init_room_name();
    byte_200108D = 0;
    gPlayerSprite.field_10 = 0;
    byte_200108E = 0;
    sub_800EF6C(dword_203FA90);
    gPlayerSprite.xPos = gPlayerInitPixelPosX;
    gPlayerSprite.yPos = gPlayerInitPixelPosY;
    gPlayerShadowSprite.xPos = gPlayerInitPixelPosX;
    gPlayerShadowSprite.yPos = gPlayerInitPixelPosY;
    sub_803FE78();
    sub_8040178();
    sub_80409DC();
    sub_8063178();
    dword_2001110 = 136 - gCameraPixelX;
    dword_2001114 = gCameraPixelY;
}

void sub_800DA04(int a1, int a2, int a3) {
    byte_20010B0 = 0;
    byte_203F4E0 = 0;
    SetupRoom(dword_203F4E4, dword_203F4E8, 1, 0);

    if (gCanChangeBgm) {
        audio_start_tune(15);
    }

    sub_8025E44(gLoadedRoomLevel);
    sub_8013A10(word_200145C, word_200145E, gBGInitOffsetHorizontal, gBGInitOffsetVertical, 21, 32);
    sub_800389C(dword_2000FC8, dword_80CC844[gRoomHeader.unknown1]);
    EnableBGAlphaBlending();
    gPlayerSprite.xPos = gPlayerInitPixelPosX;
    gPlayerSprite.yPos = gPlayerInitPixelPosY;
    gPlayerShadowSprite.xPos = gPlayerInitPixelPosX;
    gPlayerShadowSprite.yPos = gPlayerInitPixelPosY;
    sub_803FE78();
    sub_8040178();
    sub_80409DC();
    sub_8063178();
    sub_8047000(a3);
}

void select_next_available_egg(bool32 a1) {
    int nextEgg;
    bool8 isNextEggSelected;

    if (gSelectedEgg < 0) {
        sub_080121F0("GAME\xff", "CHANGE EGG TYPE: CURRENT EGG TYPE IS INVALID\xff");
    }

    if (!a1 && !sub_0804207C(gSelectedEgg + 9)) {
        if (!sub_080420E8(gSelectedEgg + 9)) {
            sub_08041FA4(gSelectedEgg + 9);
            sub_08040204(gSelectedEgg + 9, gGameStatus.eggs[gSelectedEgg]);
        }
        return;
    }

    nextEgg = gSelectedEgg;
    isNextEggSelected = FALSE;

    while (!isNextEggSelected) {
        nextEgg = (nextEgg + 1) & 3;
        if (nextEgg == gSelectedEgg) {
            return;
        }

        if (gUnlockedMoves[MOVE_EGG_BLUE + nextEgg]) {
            if (!a1) {
                isNextEggSelected = TRUE;
            } else if (gGameStatus.eggs[nextEgg] != 0) {
                isNextEggSelected = TRUE;
            }
        }
    }

    if (a1) {
        sub_08040204(gSelectedEgg + 9, gGameStatus.eggs[gSelectedEgg]);
    }

    sub_0804200C(gSelectedEgg + 9);
    gSelectedEgg = nextEgg;
    sub_08041FA4(gSelectedEgg + 9);
    sub_08040204(gSelectedEgg + 9, gGameStatus.eggs[gSelectedEgg]);

    if (audio_fx_still_active(dword_2001124) && gCanPlaySfx) {
        audio_halt_fx(dword_2001124);
    }

    dword_2001124 = PLAY_SFX(39);
}

void decrease_eggs(int eggs, bool32 selectNextAvailableEgg) {
    if (gSelectedEgg < 0) {
        gGameStatus.eggs[EGG_BLUE] -= eggs;
        if (gGameStatus.eggs[EGG_BLUE] <= 0) {
            gGameStatus.eggs[EGG_BLUE] = 0;
            if (selectNextAvailableEgg) {
                select_next_available_egg(TRUE);
            }
        }
        sub_08040204(9, gGameStatus.eggs[EGG_BLUE]);
    } else {
        gGameStatus.eggs[gSelectedEgg] -= eggs;
        if (gGameStatus.eggs[gSelectedEgg] <= 0) {
            gGameStatus.eggs[gSelectedEgg] = 0;
            if (selectNextAvailableEgg) {
                select_next_available_egg(TRUE);
            }
        }
        sub_08040204(gSelectedEgg + 9, gGameStatus.eggs[gSelectedEgg]);
    }
}

void increase_eggs(int eggs) {
    if (gSelectedEgg < 0) {
        gGameStatus.eggs[EGG_BLUE] += eggs;
        if (gGameStatus.eggs[EGG_BLUE] > stru_80CC8C4.eggs[EGG_BLUE]) {
            gGameStatus.eggs[EGG_BLUE] = stru_80CC8C4.eggs[EGG_BLUE];
        }
        sub_08040204(9, gGameStatus.eggs[EGG_BLUE]);
    } else {
        gGameStatus.eggs[gSelectedEgg] += eggs;
        if (gGameStatus.eggs[gSelectedEgg] > stru_80CC8C4.eggs[gSelectedEgg]) {
            gGameStatus.eggs[gSelectedEgg] = stru_80CC8C4.eggs[gSelectedEgg];
        }
        sub_08040204(gSelectedEgg + 9, gGameStatus.eggs[gSelectedEgg]);
    }
}

void set_eggs(int eggs) {
    if (gSelectedEgg < 0) {
        gGameStatus.eggs[EGG_BLUE] = eggs;
        if (gGameStatus.eggs[EGG_BLUE] > stru_80CC8C4.eggs[EGG_BLUE]) {
            gGameStatus.eggs[EGG_BLUE] = stru_80CC8C4.eggs[EGG_BLUE];
        }
        sub_08040204(9, gGameStatus.eggs[EGG_BLUE]);
    } else {
        gGameStatus.eggs[gSelectedEgg] = eggs;
        if (gGameStatus.eggs[gSelectedEgg] > stru_80CC8C4.eggs[gSelectedEgg]) {
            gGameStatus.eggs[gSelectedEgg] = stru_80CC8C4.eggs[gSelectedEgg];
        }
        sub_08040204(gSelectedEgg + 9, gGameStatus.eggs[gSelectedEgg]);
    }
}

bool32 sub_800DE04() {
    if (gSelectedEgg < 0) {
        if (gUnlockedMoves[MOVE_EGG_BLUE]) {
            gSelectedEgg = EGG_BLUE;
        } else if (gUnlockedMoves[MOVE_EGG_ELECTRIC]) {
            gSelectedEgg = EGG_ELECTRIC;
        } else if (gUnlockedMoves[MOVE_EGG_ICE]) {
            gSelectedEgg = EGG_ICE;
        } else if (gUnlockedMoves[MOVE_EGG_FIRE]) {
            gSelectedEgg = EGG_FIRE;
        } else {
            return FALSE;
        }
    }

    sub_08041F3C(9, 0x70000);
    sub_08041F3C(10, 0x70000);
    sub_08041F3C(11, 0x70000);
    sub_08041F3C(12, 0x70000);
    sub_08041FA4(gSelectedEgg + 9);
    sub_08040204(gSelectedEgg + 9, gGameStatus.eggs[gSelectedEgg]);
    return TRUE;
}

void sub_800DE9C() {
    if (gSelectedEgg >= 0) {
        sub_08041F3C(9, 0x2CCCC);
        sub_08041F3C(10, 0x2CCCC);
        sub_08041F3C(11, 0x2CCCC);
        sub_08041F3C(12, 0x2CCCC);
        sub_0804200C(gSelectedEgg + 9);
    }
}

static void enable_poison_effect() {
    switch (gLoadedRoomIndex) {
        case ROOM_POISONROOM:
        case ROOM_SWAMPGAS:
            if (gTransformation != TRANSFORMATION_TANK) {
                gPoisonEffectEnabled = TRUE;
                dword_20011F8 = 1;
                gPoisonHitTimer = 240;
            }
            break;

        default:
            if (gPoisonEffectEnabled) {
                gPoisonEffectEnabled = FALSE;
            }
            break;
    }
}

static void sub_800DF34() {
    if (gPoisonEffectEnabled && !byte_203F99C && gGameStatus.health) {
        if (gPoisonHitTimer == 0) {
            gPoisonHitTimer = 240;
            sub_80192D4(dword_20011F8, -1, 1);
        } else {
            gPoisonHitTimer--;
        }
    }

    if (byte_200108D) {
        if (word_2001090 == 0) {
            byte_200108D = 0;
            gPlayerSprite.field_10 = 0;
        } else {
            word_2001090--;
        }
    }

    if (byte_200108E) {
        if (word_2001092 == 0 && !byte_20020BC) {
            byte_200108E = 0;
        } else {
            word_2001092--;
        }
    }

    if (!byte_200112A) {
        return;
    }

    if (!word_200112C && !byte_200113D) {
        sprite_2000FAC.field_13 = 1;

        if ((gPlayerStateSettings[gPlayerState] & 0x800) == 0) {
            sub_800E7A0();

            if (gGameStatus.health) {
                sub_800BFA0(dword_80CEBF8[gLoadedRoomLevel], dword_80CEBE0[gLoadedRoomLevel], 1);
            }
        }

        return;
    }

    if ((--word_200112C << 16) < 0) {
        word_200112C = 0;
    }

    if (byte_200113D) {
        if (word_200112E == 0) {
            word_2001130--;
            if (word_2001130 < 3) {
                word_2001130 = 3;
            }
            word_200112E = word_2001130;
            byte_200113D = 0;
            sprite_2000FAC.field_13 = 1;
        } else {
            word_200112E--;
        }
    } else {
        if (word_2001132 == 0) {
            word_2001134--;
            if (word_2001134 < 3) {
                word_2001134 = 3;
            }
            word_2001132 = word_2001134;
            byte_200113D = 1;
            sprite_2000FAC.field_13 = 0;
        } else {
            word_2001132--;
        }
    }

    if (!audio_fx_still_active(dword_2001138)) {
        int sfx;
        while (1) {
            int candidate = RandomMinMax(67, 69);
            if (candidate != byte_200113C) {
                sfx = candidate;
                break;
            }
        }
        byte_200113C = sfx;
        dword_2001138 = PLAY_SFX(sfx);
    }
}

void decrease_player_health(int a1) {
    if (a1 == 0) {
        return;
    }

    if (gGameStatus.health <= a1) {
        gGameStatus.health = 0;
        sub_08040204(56, 0);
        PLAY_SFX(79);
        if (gIsSlideMiniGame) {
            byte_20010B0 = 1;
        }
    } else {
        gGameStatus.health -= a1;
        sub_08040204(56, gGameStatus.health);
    }
}

void sub_800E204(u8* buffer, s32* a2, u32* a3) {
    int i;
    s32 r5;
    u32 r6;

    r5 = *a2;
    r6 = *a3;

    for (i = 0; i < 6; i++) {
        buffer[r5] = byte_2000FCC[i].bozzeyeCount;
        r6 += buffer[r5++];
        buffer[r5] = byte_2000FCC[i].field_D;
        r6 += buffer[r5++];
    }

    buffer[r5] = gGameStatus.field_6;
    r6 += buffer[r5++];
    buffer[r5] = gGameStatus.clockHour;
    r6 += buffer[r5++];
    buffer[r5] = gGameStatus.clockMinute;
    r6 += buffer[r5++];
    buffer[r5] = gGameStatus.clockSecond;
    r6 += buffer[r5++];
    buffer[r5] = gGameStatus.enableExtraHealth;
    r6 += buffer[r5++];
    buffer[r5] = gGameStatus.field_7;
    r6 += buffer[r5++];
    buffer[r5] = gGameStatus.field_1B;
    r6 += buffer[r5++];

    for (i = 0; i <= 3; i++) {
        buffer[r5] = gGameStatus.eggs[i];
        r6 += buffer[r5++];
    }

    buffer[r5] = gGameStatus.field_12;
    r6 += buffer[r5++];
    buffer[r5] = gGameStatus.maxHealth;
    r6 += buffer[r5++];
    buffer[r5] = gGameStatus.health;
    r6 += buffer[r5++];
    buffer[r5] = byte_200107C;
    r6 += buffer[r5++];
    buffer[r5] = gUnlockedLevels;
    r6 += buffer[r5++];
    buffer[r5] = byte_20010AA;
    r6 += buffer[r5++];
    buffer[r5] = gRoomGoal;
    r6 += buffer[r5++];
    buffer[r5] = gWarpGoal;
    r6 += buffer[r5++];
    buffer[r5] = byte_2001094;
    r6 += buffer[r5++];
    buffer[r5] = (dword_2001098 & 0xFF0000) >> 16;
    r6 += buffer[r5++];
    buffer[r5] = dword_2001098 >> 24;
    r6 += buffer[r5++];
    buffer[r5] = (dword_200109C & 0xFF0000) >> 16;
    r6 += buffer[r5++];
    buffer[r5] = dword_200109C >> 24;
    r6 += buffer[r5++];
    buffer[r5] = (dword_20010A0 & 0xFF0000) >> 16;
    r6 += buffer[r5++];
    buffer[r5] = dword_20010A0 >> 24;
    r6 += buffer[r5++];
    buffer[r5] = gTextSpeed;
    r6 += buffer[r5++];
    buffer[r5] = gBgmMainVolume;
    r6 += buffer[r5++];
    buffer[r5] = gSfxMainVolume;
    r6 += buffer[r5++];
    buffer[r5] = gPauseMenuLanguage;
    r6 += buffer[r5++];

    *a2 = r5;
    *a3 = r6;
}

void sub_800E408(u8* buffer, s32* a2, u32* a3) {
    int i;
    s32 r5;
    u32 r6;

    r5 = *a2;
    r6 = *a3;

    for (i = 0; i < 6; i++) {
        byte_2000FCC[i].bozzeyeCount = buffer[r5];
        r6 += buffer[r5++];
        byte_2000FCC[i].field_D = buffer[r5];
        r6 += buffer[r5++];
    }

    gGameStatus.field_6 = buffer[r5];
    r6 += buffer[r5++];
    gGameStatus.clockHour = buffer[r5];
    r6 += buffer[r5++];
    gGameStatus.clockMinute = buffer[r5];
    r6 += buffer[r5++];
    gGameStatus.clockSecond = buffer[r5];
    r6 += buffer[r5++];
    gGameStatus.enableExtraHealth = buffer[r5];
    r6 += buffer[r5++];
    gGameStatus.field_7 = buffer[r5];
    r6 += buffer[r5++];
    gGameStatus.field_1B = buffer[r5];
    r6 += buffer[r5++];

    for (i = 0; i <= 3; i++) {
        gGameStatus.eggs[i] = buffer[r5];
        r6 += buffer[r5++];
    }

    gGameStatus.field_12 = buffer[r5];
    r6 += buffer[r5++];
    gGameStatus.maxHealth = buffer[r5];
    r6 += buffer[r5++];
    r6 += buffer[r5++];
    byte_200107C = buffer[r5];
    r6 += buffer[r5++];
    gUnlockedLevels = buffer[r5];
    r6 += buffer[r5++];
    byte_20010AA = buffer[r5];
    r6 += buffer[r5++];
    gRoomGoal = buffer[r5];
    r6 += buffer[r5++];
    gWarpGoal = buffer[r5];
    r6 += buffer[r5++];
    byte_2001094 = buffer[r5];
    r6 += buffer[r5++];
    dword_2001098 = buffer[r5] << 16 | buffer[r5 + 1] << 24;
    r6 += buffer[r5++];
    r6 += buffer[r5++];
    dword_200109C = buffer[r5] << 16 | buffer[r5 + 1] << 24;
    r6 += buffer[r5++];
    r6 += buffer[r5++];
    dword_20010A0 = buffer[r5] << 16 | buffer[r5 + 1] << 24;
    r6 += buffer[r5++];
    r6 += buffer[r5++];
    gTextSpeed = buffer[r5];
    r6 += buffer[r5++];
    gBgmMainVolume = buffer[r5];
    r6 += buffer[r5++];
    gSfxMainVolume = buffer[r5];
    r6 += buffer[r5++];
    gPauseMenuLanguage = buffer[r5];
    r6 += buffer[r5++];

    *a2 = r5;
    *a3 = r6;
}

static void sub_800E61C() {
    bool32 v0;

    if (gFloorPlaneResult.isColliding && gTransformation != TRANSFORMATION_BANJO) {
        v0 = FALSE;

        if (gFloorPlaneResult.field_50) {
            v0 = 1;
            if (!byte_200112A && gTransformation == TRANSFORMATION_MOUSE) {
                sub_800E6D0();
            }
        }

        if (gFloorPlaneResult.field_51) {
            v0 = TRUE;
            if (!byte_200112A && gTransformation == TRANSFORMATION_CANDLE) {
                sub_800E6D0();
            }
        }

        if (gFloorPlaneResult.field_52) {
            v0 = TRUE;
            if (!byte_200112A && gTransformation == TRANSFORMATION_TANK) {
                sub_800E6D0();
            }
        }

        if (gFloorPlaneResult.field_53) {
            v0 = TRUE;
            if (!byte_200112A && gTransformation == TRANSFORMATION_OCTOPUS) {
                sub_800E6D0();
            }
        }

        if (!v0 && byte_200112A) {
            sub_800E7A0();
        }
    }
}

static void sub_800E6D0() {
    byte_200112A = 1;
    word_200112C = 60;
    byte_20010AF = 1;
    word_200112E = 10;
    word_2001132 = 10;
    word_2001130 = 10;
    word_2001134 = 10;
    SetSprite(&sprite_2000FAC, 0x4CB, 0, 0, 0, gPlayerSprite.xPos, gPlayerSprite.yPos, 2);
    byte_200113C = RandomMinMax(67, 69);
    dword_2001138 = PLAY_SFX(byte_200113C);
}

static void sub_800E7A0() {
    byte_200112A = 0;
    byte_20010AF = 0;
}

/**
 * Setup the save file strings with the current information.
 */
void setup_save_file_strings() {
    int i;

    for (i = 0; i < 26; i++) {
        gSaveFileString1[i] = ' ';
    }

    gSaveFileString1[25] = 0xFF;
    gSaveFileString1[19] = ':';
    gSaveFileString1[22] = ':';
    gSaveFileString1[17] = '0';
    gSaveFileString1[20] = '0';
    gSaveFileString1[23] = '0';
    gSaveFileString1[4] = 0xFC;
    gSaveFileString1[5] = 6;
    gSaveFileString1[9] = 0xFC;
    gSaveFileString1[10] = 7;
    gSaveFileString1[15] = 0xFC;
    gSaveFileString1[16] = 8;
    gSaveFileString1[0] = 0xFC;
    gSaveFileString1[1] = 9;

    IntegerToAsciiFw(gSaveFiles[0].jiggies, &gSaveFileString1[6]);
    IntegerToAsciiFw(gSaveFiles[0].notes, &gSaveFileString1[11]);
    IntegerToAsciiBw(gSaveFiles[0].hour, &gSaveFileString1[18]);
    IntegerToAsciiBw(gSaveFiles[0].minute, &gSaveFileString1[21]);
    IntegerToAsciiBw(gSaveFiles[0].second, &gSaveFileString1[24]);

    for (i = 0; i < 26; i++) {
        gSaveFileString2[i] = ' ';
    }

    gSaveFileString2[25] = 0xFF;
    gSaveFileString2[19] = ':';
    gSaveFileString2[22] = ':';
    gSaveFileString2[17] = '0';
    gSaveFileString2[20] = '0';
    gSaveFileString2[23] = '0';
    gSaveFileString2[4] = 0xFC;
    gSaveFileString2[5] = 6;
    gSaveFileString2[9] = 0xFC;
    gSaveFileString2[10] = 7;
    gSaveFileString2[15] = 0xFC;
    gSaveFileString2[16] = 8;
    gSaveFileString2[0] = 0xFC;
    gSaveFileString2[1] = 10;

    IntegerToAsciiFw(gSaveFiles[1].jiggies, &gSaveFileString2[6]);
    IntegerToAsciiFw(gSaveFiles[1].notes, &gSaveFileString2[11]);
    IntegerToAsciiBw(gSaveFiles[1].hour, &gSaveFileString2[18]);
    IntegerToAsciiBw(gSaveFiles[1].minute, &gSaveFileString2[21]);
    IntegerToAsciiBw(gSaveFiles[1].second, &gSaveFileString2[24]);

    for (i = 0; i < 26; i++) {
        gSaveFileString3[i] = ' ';
    }

    gSaveFileString3[25] = 0xFF;
    gSaveFileString3[19] = ':';
    gSaveFileString3[22] = ':';
    gSaveFileString3[17] = '0';
    gSaveFileString3[20] = '0';
    gSaveFileString3[23] = '0';
    gSaveFileString3[4] = 0xFC;
    gSaveFileString3[5] = 6;
    gSaveFileString3[9] = 0xFC;
    gSaveFileString3[10] = 7;
    gSaveFileString3[15] = 0xFC;
    gSaveFileString3[16] = 8;
    gSaveFileString3[0] = 0xFC;
    gSaveFileString3[1] = 11;

    IntegerToAsciiFw(gSaveFiles[2].jiggies, &gSaveFileString3[6]);
    IntegerToAsciiFw(gSaveFiles[2].notes, &gSaveFileString3[11]);
    IntegerToAsciiBw(gSaveFiles[2].hour, &gSaveFileString3[18]);
    IntegerToAsciiBw(gSaveFiles[2].minute, &gSaveFileString3[21]);
    IntegerToAsciiBw(gSaveFiles[2].second, &gSaveFileString3[24]);
}

void init_save_files() {
    int i;
    int v0 = 0;

    for (i = 0; i < 3; i++) {
        gSaveFiles[i].hour = 0;
        gSaveFiles[i].minute = 0;
        gSaveFiles[i].second = 0;
        gSaveFiles[i].jiggies = 0;
        gSaveFiles[i].notes = 0;
        gSaveFiles[i].empty = 1;

        if (sub_8044D70(i) == 1) {
            v0 = 1;
            if (load_game(i)) {
                sub_8038A34();
                gSaveFiles[i].hour = gGameStatus.clockHour;
                gSaveFiles[i].minute = gGameStatus.clockMinute;
                gSaveFiles[i].second = gGameStatus.clockSecond;
                gSaveFiles[i].jiggies = (u8)gGameStatus.totalJiggies;
                gSaveFiles[i].notes = gGameStatus.totalNotes;
                gSaveFiles[i].empty = 0;

                sub_8030C54();
                sub_800A5E8();
            }
        }
    }

    if (!v0) {
        word_203EAD6++;
        byte_2000335 = 1;
    }

    sub_8030C54();
    sub_800A5E8();
    sub_8016434();
    sub_8038A34();
    sub_803FE78();
}

void reset_save_files() {
    int i;

    for (i = 0; i < 3; i++) {
        gSaveFiles[i].hour = 0;
        gSaveFiles[i].minute = 0;
        gSaveFiles[i].second = 0;
        gSaveFiles[i].jiggies = 0;
        gSaveFiles[i].notes = 0;
        gSaveFiles[i].empty = 1;
    }
}

void sub_800E9EC(struct Sprite* a1, int palette, int a3) {
    u32 v6;
    u32 v7;
    u8 r1;
    u16 r1_1;

    if (byte_200116C) {
        sub_800EA9C();
    }

    DmaMoveObjPalette(a1->spriteFrames->field_8[3] >> 12, palette);
    byte_200116C = 1;
    dword_2001168 = &a1->field_12;

    r1 = palette + 16;
    v6 = (v6 & 0xFFFFFF00) | r1;
    r1_1 = r1 << 8;
    v6 = (v6 & 0xFFFF00FF) | r1_1;

    v7 = ((v7 & 0xFFFFFF00 | 0x1F) & 0xFFFF00FF | 0x1F00) & 0xFF00FFFF | 0x1F0000;

    dword_2001164 = sub_080272A0(&v6, &v7, a3, 0xFFFF);

    if (dword_2001164 < 0) {
        byte_200116C = 0;
    } else {
        a1->field_12 = 1;
        SetSpritePalette(a1, palette);
    }
}

static void sub_800EA9C() {
    byte_200116C = 0;
    *dword_2001168 = 0;
    DmaMoveObjPalette(10, 15);
    sub_80275CC(dword_2001164);
}

static void sub_800EACC() {
    if (byte_200116C) {
        if (stru_20076C4[dword_2001164].field_0) {
            sub_802742C(dword_2001164, &unk_2002EC4, &unk_20046C4);
        } else {
            sub_800EA9C();
        }
    }
}

void sub_800EB14() {
    if (gLoadedRoomIndex == ROOM_DIVESPOT || gLoadedRoomIndex == ROOM_UNDERCORAL) {
        if (!byte_20010B1) {
            sub_800EB58(1);
        }
        sub_800ECB4();
    } else if (byte_20010B1) {
        byte_20010B1 = 0;
        sub_80275A4();
    }
}

static void sub_800EB58(bool32 a1) {
    // This function probably uses predefined macro's
    // a lot. Most likely v1 is used for registers.

    u32 v1;

    if (a1) {
        v1 &= 0xFFFFFF00;
        v1 &= 0xFFFF00FF;
        v1 |= 0xF00;
        sub_8003A04(4, &unk_2005EC4, v1, v1 << 16 >> 24);
        dword_2001140 = sub_08027378((u8*)&v1, &unk_2005EC4, 2048, 0x8000);
        dword_2001150 = sub_800392C(0x8000, 2048) >> 16;
        dword_200114C = -1;
    }

    ((u8*)&v1)[0] = 0x12;
    ((u8*)&v1)[1] = 0x1E;
    sub_8003A04(4, &unk_2005EC4, ((u8*)&v1)[0], ((u8*)&v1)[1]);
    dword_2001144 = sub_08027378((u8*)&v1, &unk_2005EC4, 2048, 24576);
    dword_2001158 = sub_800392C(24576, 2048) >> 16;
    dword_2001154 = -1;

    ((u8*)&v1)[0] = 0x10;
    ((u8*)&v1)[1] = 0x11;
    sub_8003A04(4, &unk_2005EC4, ((u8*)&v1)[0], ((u8*)&v1)[1]);
    dword_2001148 = sub_08027378((u8*)&v1, &unk_2005EC4, 2048, 24576);
    dword_2001160 = sub_800392C(24576, 2048) >> 16;
    dword_200115C = -1;
    byte_20010B1 = 1;
}

void sub_800EC94() {
    dword_2001154 = -1;
    dword_200114C = -1;
    dword_200115C = -1;
}

void sub_800ECB4() {
    s32 v0;

    if (byte_20010B1 && !gIsPaletteEffectsActive) {
        v0 = dword_2001150 - (gPlayerPos.y >> 19);
        if (v0 < 0) {
            v0 = 0;
        }

        if (v0 != dword_200114C) {
            sub_80274A4(dword_2001140, v0, &unk_2002EC4, &unk_20046C4);
            dword_200114C = v0;
        }

        v0 = dword_2001158 - (gPlayerPos.y >> 19);
        if (v0 < 0) {
            v0 = 0;
        }

        if (v0 != dword_2001154) {
            sub_80274A4(dword_2001144, v0, &unk_2002EC4, &unk_20046C4);
            dword_2001154 = v0;
        }

        v0 = dword_2001160 - (gPlayerPos.y >> 19);
        if (v0 < 0) {
            v0 = 0;
        }

        if (v0 != dword_200115C) {
            sub_80274A4(dword_2001148, v0, &unk_2002EC4, &unk_20046C4);
            dword_200115C = v0;
        }
    }
}

void init_room_name() {
    if (gRoomNameNumber != 0) {
        gShowRoomName = 1;
        gRoomNameApparenceTimer = 120;
        gRoomNameTextBox.xPosition = 0;
        gRoomNameTextBox.yPosition = 0;
        gRoomNameTextBox.letterSpacing = -2;
        gRoomNameTextBox.field_12 = 0;
        gRoomNameTextBox.field_A = 2;
        gRoomNameTextBox.size = 240;
        gRoomNameTextBox.palette = 1;
        gRoomNameTextBox.stringOffset = 0;
        gRoomNameTextBox.field_11 = 6;
        gRoomNameTextBox.font = &font_80B01A8[2];
        switch (gPauseMenuLanguage) {
            case 0:
                gRoomName = unk_86AD9FC[gRoomNameNumber - 1];
                break;

            case 1:
                gRoomName = unk_86ADAC4[gRoomNameNumber - 1];
                break;

            case 2:
                gRoomName = unk_86ADC54[gRoomNameNumber - 1];
                break;

            case 4:
                gRoomName = unk_86ADD1C[gRoomNameNumber - 1];
                break;

            case 3:
                gRoomName = unk_86ADB8C[gRoomNameNumber - 1];
                break;

            default:
                HANG;
                break;
        }
    }
}

static void show_room_name() {
    if (gShowRoomName) {
        if (gRoomNameApparenceTimer == 0) {
            gShowRoomName = 0;
        } else {
            --gRoomNameApparenceTimer;
        }
        gRoomNameTextBox.xPosition = (240 - sub_8025870(gRoomName, &gRoomNameTextBox)) >> 1;
        gRoomNameTextBox.yPosition = 120;
        gRoomNameTextBox.stringOffset = 0;
        AddStringToBuffer(&gRoomNameTextBox, gRoomName);
    }
}

void hide_room_name() {
    gShowRoomName = 0;
}

void sub_800EECC() {
    if (!byte_3006EF3) {
        return;
    }

    switch (gLoadedRoomLevel) {
        case LEVEL_SPIRAL_MOUNTAIN:
            sub_8049A1C();
            break;

        case LEVEL_BREEGULL_BEACH:
            if (gLoadedRoomIndex == dword_80CEE5C[gLoadedRoomLevel]) {
                DmaTransferObjPalette(&unk_83FD7B4, 3, 3);
                DmaTransferObjPalette(&unk_83FD7D4, 5, 5);
                DmaTransferObjPalette(&unk_83FD7F4, 8, 8);
                DmaTransferObjPalette(&unk_83FD814, 11, 11);
            }
            break;

        case LEVEL_CLIFF_FARM:
        case LEVEL_BAD_MAGIC_BAYOU:
        case LEVEL_SPILLERS_HARBOR:
        case LEVEL_FREEZING_FURNACE:
            break;
    }
}

static void sub_800EF6C(int warp) {
    switch (gLoadedRoomLevel) {
        case LEVEL_SPIRAL_MOUNTAIN:
            if (dword_2001104 == 1) {
                DmaTransfer32(&unk_83FCF14, BG_PLTT, 128);
            }
            break;

        case LEVEL_BREEGULL_BEACH:
            if (gLoadedRoomIndex == dword_80CEE5C[gLoadedRoomLevel]
                && warp == dword_80CEE74[gLoadedRoomLevel]) {
                DmaTransferObjPalette(&unk_83FD7B4, 3, 3);
                DmaTransferObjPalette(&unk_83FD7D4, 5, 5);
                DmaTransferObjPalette(&unk_83FD7F4, 8, 8);
                DmaTransferObjPalette(&unk_83FD814, 11, 11);
            }
            break;

        case LEVEL_CLIFF_FARM:
        case LEVEL_BAD_MAGIC_BAYOU:
        case LEVEL_SPILLERS_HARBOR:
        case LEVEL_FREEZING_FURNACE:
            break;
    }
}

void sub_0800F02C(int* a1, int a2, int a3) {
    byte_200110C = 1;
    dword_20011C8 = a1;
    byte_200111F = 0;

    switch (a2) {
        case 0:
            byte_200111E = 0x18;
            byte_200111D = 0x28;
            break;

        case 2:
            byte_200111E = 0x74;
            byte_200111D = 0x84;
            break;

        case 1:
        default:
            byte_200111E = 0x40;
            byte_200111D = 0x50;
            break;
    }

    switch (gPauseMenuLanguage) {
        case 0:
            switch (a3) {
                case 0:
                    dword_2001188 = dword_8065F60;
                    dword_200118C = a3;
                    byte_2001120 = 1;
                    byte_2001121 = a3;
                    break;

                case 1:
                    dword_2001188 = dword_8065F60;
                    dword_200118C = dword_8065F70;
                    byte_2001120 = 0;
                    byte_2001121 = 0;
                    break;

                case 2:
                    dword_2001188 = dword_8065F60;
                    dword_200118C = dword_8065F7C;
                    byte_2001120 = 0;
                    byte_2001121 = 0;
                    break;

                case 3:
                    dword_2001188 = dword_8065F88;
                    dword_200118C = 0;
                    byte_2001120 = 1;
                    byte_2001121 = 1;
                    byte_2001122 = 0x1E;
                    break;
            }
            break;

        case 1:
            switch (a3) {
                case 0:
                    dword_2001188 = dword_8065FA0;
                    dword_200118C = a3;
                    byte_2001120 = 1;
                    byte_2001121 = a3;
                    break;

                case 1:
                    dword_2001188 = dword_8065FA0;
                    dword_200118C = dword_8065FB4;
                    byte_2001120 = 0;
                    byte_2001121 = 0;
                    break;

                case 2:
                    dword_2001188 = dword_8065FA0;
                    dword_200118C = dword_8065FC4;
                    byte_2001120 = 0;
                    byte_2001121 = 0;
                    break;

                case 3:
                    dword_2001188 = dword_8065FD0;
                    dword_200118C = 0;
                    byte_2001120 = 1;
                    byte_2001121 = 1;
                    byte_2001122 = 0x1E;
                    break;
            }
            break;

        case 2:
            switch (a3) {
                case 0:
                    dword_2001188 = dword_8066044;
                    dword_200118C = a3;
                    byte_2001120 = 1;
                    byte_2001121 = a3;
                    break;

                case 1:
                    dword_2001188 = dword_8066044;
                    dword_200118C = dword_8066054;
                    byte_2001120 = 0;
                    byte_2001121 = 0;
                    break;

                case 2:
                    dword_2001188 = dword_8066044;
                    dword_200118C = dword_806606C;
                    byte_2001120 = 0;
                    byte_2001121 = 0;
                    break;

                case 3:
                    dword_2001188 = dword_8066078;
                    dword_200118C = 0;
                    byte_2001120 = 1;
                    byte_2001121 = 1;
                    byte_2001122 = 0x1E;
                    break;
            }
            break;

        case 4:
            switch (a3) {
                case 0:
                    dword_2001188 = dword_8066094;
                    dword_200118C = a3;
                    byte_2001120 = 1;
                    byte_2001121 = a3;
                    break;

                case 1:
                    dword_2001188 = dword_8066094;
                    dword_200118C = dword_80660A4;
                    byte_2001120 = 0;
                    byte_2001121 = 0;
                    break;

                case 2:
                    dword_2001188 = dword_8066094;
                    dword_200118C = dword_80660B0;
                    byte_2001120 = 0;
                    byte_2001121 = 0;
                    break;

                case 3:
                    dword_2001188 = dword_80660B8;
                    dword_200118C = 0;
                    byte_2001120 = 1;
                    byte_2001121 = 1;
                    byte_2001122 = 0x1E;
                    break;
            }
            break;

        case 3:
            switch (a3) {
                case 0:
                    dword_2001188 = dword_8065FF4;
                    dword_200118C = a3;
                    byte_2001120 = 1;
                    byte_2001121 = a3;
                    break;

                case 1:
                    dword_2001188 = dword_8065FF4;
                    dword_200118C = dword_8066008;
                    byte_2001120 = 0;
                    byte_2001121 = 0;
                    break;

                case 2:
                    dword_2001188 = dword_8065FF4;
                    dword_200118C = dword_8066014;
                    byte_2001120 = 0;
                    byte_2001121 = 0;
                    break;

                case 3:
                    dword_2001188 = dword_8066024;
                    dword_200118C = 0;
                    byte_2001120 = 1;
                    byte_2001121 = 1;
                    byte_2001122 = 0x1E;
                    break;
            }
            break;

        default:
            ASSERT(0);
            break;
    }

    stru_2001190.xPosition = 0;
    stru_2001190.yPosition = 0;
    stru_2001190.letterSpacing = -2;
    stru_2001190.field_12 = 0;
    stru_2001190.field_A = 1;
    stru_2001190.size = 240;
    stru_2001190.palette = 1;
    stru_2001190.stringOffset = 0;
    stru_2001190.field_11 = 6;
    stru_2001190.font = &font_80B01A8[2];
    stru_20011A4.xPosition = 0;
    stru_20011A4.yPosition = 0;
    stru_20011A4.letterSpacing = -2;
    stru_20011A4.field_12 = 0;
    stru_20011A4.field_A = 1;
    stru_20011A4.size = 240;
    stru_20011A4.palette = 1;
    stru_20011A4.stringOffset = 0;
    stru_20011A4.field_11 = 6;
    stru_20011A4.font = &font_80B01A8[2];
    byte_200111A = sub_8025870(dword_2001188, &stru_2001190);
    dword_20011B8 = FX32_CONST((240 - byte_200111A) >> 1);
    dword_20011C0 = FX32_CONST(-byte_200111A);
    byte_200111B = sub_8025870(dword_200118C, &stru_20011A4);
    dword_20011BC = FX32_CONST((240 - byte_200111B) >> 1);
    dword_20011C4 = FX32_CONST(-byte_200111B);
}

static void sub_800F430() {
    if (byte_200110C == 0) {
        return;
    }

    switch (byte_200110C) {
        case 1:
            if (byte_2001120 && byte_200111F) {
                byte_200110C = 2;
                if (dword_200118C) {
                    stru_20011A4.xPosition = dword_20011C4 >> FX32_SHIFT;
                    stru_20011A4.yPosition = byte_200111E;
                    stru_20011A4.stringOffset = 0;
                    AddStringToBuffer(&stru_20011A4, dword_200118C);
                }
                stru_2001190.xPosition = dword_20011C0 >> FX32_SHIFT;
                stru_2001190.yPosition = byte_200111D;
                stru_2001190.stringOffset = 0;
                AddStringToBuffer(&stru_2001190, dword_2001188);
            } else {
                if (dword_200118C) {
                    stru_20011A4.xPosition = dword_20011C4 >> FX32_SHIFT;
                    stru_20011A4.yPosition = byte_200111E;
                    stru_20011A4.stringOffset = 0;
                    AddStringToBuffer(&stru_20011A4, dword_200118C);
                    dword_20011C4 += FX32_CONST(4);
                    if (dword_20011C4 >= dword_20011BC) {
                        dword_20011C4 = dword_20011BC;
                        byte_2001120 = 1;
                    }
                }
                stru_2001190.xPosition = dword_20011C0 >> FX32_SHIFT;
                stru_2001190.yPosition = byte_200111D;
                stru_2001190.stringOffset = 0;
                AddStringToBuffer(&stru_2001190, dword_2001188);
                dword_20011C0 += FX32_CONST(4);
                if (dword_20011C0 >= dword_20011B8) {
                    dword_20011C0 = dword_20011B8;
                    byte_200111F = 1;
                }
            }
            break;

        case 2:
            if (!byte_2001121) {
                if (gKeysDown & A_BUTTON) {
                    PLAY_SFX(207);
                    byte_200111C = 1;
                    byte_200110C = 3;
                    dword_20011B8 = FX32_CONST(250);
                    dword_20011BC = FX32_CONST(250);
                    byte_200111F = 0;
                    if (dword_200118C) {
                        byte_2001120 = 0;
                    } else {
                        byte_2001120 = 1;
                    }
                } else if (gKeysDown & B_BUTTON) {
                    PLAY_SFX(208);
                    byte_200111C = 0;
                    byte_200110C = 3;
                    dword_20011B8 = FX32_CONST(250);
                    dword_20011BC = FX32_CONST(250);
                    byte_200111F = 0;
                    if (dword_200118C) {
                        byte_2001120 = 0;
                    } else {
                        byte_2001120 = 1;
                    }
                }
            } else {
                if (byte_2001122 == 0) {
                    byte_200111C = 1;
                    byte_200110C = 3;
                    dword_20011B8 = FX32_CONST(250);
                    dword_20011BC = FX32_CONST(250);
                    byte_200111F = 0;
                    if (dword_200118C) {
                        byte_2001120 = 0;
                    } else {
                        byte_2001120 = 1;
                    }
                } else {
                    byte_2001122--;
                }
            }
            stru_2001190.xPosition = dword_20011C0 >> FX32_SHIFT;
            stru_2001190.yPosition = byte_200111D;
            stru_2001190.stringOffset = 0;
            AddStringToBuffer(&stru_2001190, dword_2001188);
            if (dword_200118C) {
                stru_20011A4.xPosition = dword_20011C4 >> FX32_SHIFT;
                stru_20011A4.yPosition = byte_200111E;
                stru_20011A4.stringOffset = 0;
                AddStringToBuffer(&stru_20011A4, dword_200118C);
            }
            break;

        case 3:
            if (byte_2001120 && byte_200111F) {
                byte_200110C = 0;
                dword_20011C8[0] = byte_200111C;
            } else {
                if (dword_200118C) {
                    stru_20011A4.xPosition = dword_20011C4 >> FX32_SHIFT;
                    stru_20011A4.yPosition = byte_200111E;
                    stru_20011A4.stringOffset = 0;
                    AddStringToBuffer(&stru_20011A4, dword_200118C);
                    dword_20011C4 += FX32_CONST(4);
                    if (dword_20011C4 >= dword_20011BC) {
                        dword_20011C4 = dword_20011BC;
                        byte_2001120 = 1;
                    }
                }
                stru_2001190.xPosition = dword_20011C0 >> FX32_SHIFT;
                stru_2001190.yPosition = byte_200111D;
                stru_2001190.stringOffset = 0;
                AddStringToBuffer(&stru_2001190, dword_2001188);
                dword_20011C0 += FX32_CONST(4);
                if (dword_20011C0 >= dword_20011B8) {
                    dword_20011C0 = dword_20011B8;
                    byte_200111F = 1;
                }
            }
            break;
    }
}

void restore_full_health() {
    if (gGameStatus.health < gGameStatus.maxHealth * (gGameStatus.enableExtraHealth + 1)) {
        gGameStatus.health = gGameStatus.maxHealth * (gGameStatus.enableExtraHealth + 1);
        sub_08040204(56, gGameStatus.health);
        PLAY_SFX(40);
    }
}

bool32 is_game_complete() {
    bool32 complete = FALSE;
    if (gGameStatus.totalNotes == stru_80CC8C4.totalNotes
        && gGameStatus.totalJiggies == stru_80CC8C4.totalJiggies) {
        complete = TRUE;
    }
    return complete;
}

void init_efx() {
    gEnvironmentEffects = EFX_NONE;

    switch (gLoadedRoomIndex) {
        case ROOM_FURNSECTION:
        case ROOM_FURNSTORE:
        case ROOM_POISONROOM:
            gEnvironmentEffects = EFX_LAVA;
            gLavaPaletteIndex = 0;
            gLavaTimer = RandomMinMax(8, 24);
            break;

        case ROOM_BOARDWALK:
            gEnvironmentEffects = EFX_THUNDER;
            gLightningPalette = dLightningPalette;
            gBackupBGPalette = gRoomHeader.backgroundPalette;
            gLightningTimer = RandomMinMax(5, 240);
            gLightningActive = FALSE;
            gThunderTimer = RandomMinMax(180, 300);
    }
}

static void update_efx() {
    if (gIsPaletteEffectsActive) {
        return;
    }

    switch (gEnvironmentEffects) {
        case EFX_NONE:
            break;

        case EFX_LAVA:
            if (--gLavaTimer == 0) {
                gLavaTimer = RandomMinMax(8, 24);
                DmaTransferBGPalette(dLavaPaletteAnims[gLavaPaletteIndex], 0, 0);
                if (++gLavaPaletteIndex == 6)
                    gLavaPaletteIndex = 0;
            }
            break;

        case EFX_THUNDER:
            if (--gLightningTimer == 0) {
                if (!gLightningActive) {
                    gLightningActive = 1;
                    DmaTransferBGPalette(gLightningPalette, 0, 15);
                    gLightningTimer = RandomMinMax(2, 5);
                } else {
                    gLightningActive = FALSE;
                    DmaTransferBGPalette(gBackupBGPalette, 0, 15);
                    gLightningTimer = RandomMinMax(5, 240);
                }
            }

            if (--gThunderTimer == 0) {
                gThunderTimer = RandomMinMax(180, 300);
                PLAY_SFX(dThunderSfxIds[RandomMinMax(0, 2)]);
            }
            break;
    }
}

void pause_efx() {
    gEnvironmentEffectsTemp = gEnvironmentEffects;
    gEnvironmentEffects = 0;
}

void resume_efx() {
    gEnvironmentEffects = gEnvironmentEffectsTemp;
}

void sub_800FA58() {
    gGameStatus.eggs[0] = stru_80CC8C4.eggs[0];
    gGameStatus.eggs[1] = stru_80CC8C4.eggs[1];
    gGameStatus.eggs[3] = stru_80CC8C4.eggs[3];
    gGameStatus.eggs[2] = stru_80CC8C4.eggs[2];
    gGameStatus.field_12 = stru_80CC8C4.field_12;
    sub_803FE78();
}
