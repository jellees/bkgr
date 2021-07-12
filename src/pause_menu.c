#include "global.h"
#include "sprite.h"
#include "menu.h"
#include "pause_menu.h"
#include "alloc.h"
#include "common.h"

u8 gClockStatus;
u32 dword_203F4DC;

char byte_203F4E0;

// These two are room and warp.
int dword_203F4E4;
int dword_203F4E8;

struct Sprite* dword_203F4EC;
char* dword_203F4F0;
struct Sprite* dword_203F4F4;
char* dword_203F4F8;

struct TextBox stru_203F4FC;
struct Sprite stru_203F510;

char byte_203F52C[9];

struct TextBox gLevelNameTextBox;

bool8 byte_203F54C;

char** dword_203F550;
char* dword_203F554;

int dword_203F558;

struct TextBox stru_203F55C;
char* dword_203F570;
int dword_203F574;

struct TextBox stru_203F578;
char* dword_203F58C;
int dword_203F590;

struct TextBox stru_203F594;
struct TextBox stru_203F5A8;

char* dword_203F5BC[6];
char* dword_203F5D4[6];

struct TextBox stru_203F5EC[6];

char* dword_203F664[3];
struct TextBox stru_203F670[3];

char byte_203F6AC;

u16 gPaletteCopy[0x100];

static void init();
static void PauseMenuBehavior();
static bool32 PauseMenuChooseEntry(bool32* changeMenu);
static void sub_8045C08();

void open_pause_menu() {
    int i;

    gClockStatus = 1;

    audio_halt_all_fx();
    sub_80528D8(1);
    pause_efx();

    stru_203F55C.letterSpacing = 1;
    stru_203F55C.field_12 = 0;
    stru_203F55C.field_A = 1;
    stru_203F55C.size = 240;
    stru_203F55C.palette = 10;
    stru_203F55C.stringOffset = 0;
    stru_203F55C.field_11 = 6;
    stru_203F55C.font = &font_80B01A8[1];

    stru_203F5A8.letterSpacing = 1;
    stru_203F5A8.field_12 = 0;
    stru_203F5A8.field_A = 1;
    stru_203F5A8.size = 240;
    stru_203F5A8.palette = 10;
    stru_203F5A8.stringOffset = 0;
    stru_203F5A8.field_11 = 6;
    stru_203F5A8.font = &font_80B01A8[1];

    stru_203F670[0].letterSpacing = 1;
    stru_203F670[0].field_12 = 0;
    stru_203F670[0].field_A = 1;
    stru_203F670[0].size = 240;
    stru_203F670[0].palette = 10;
    stru_203F670[0].stringOffset = 0;
    stru_203F670[0].field_11 = 6;
    stru_203F670[0].font = &font_80B01A8[1];
    stru_203F670[1].letterSpacing = 1;
    stru_203F670[1].field_12 = 0;
    stru_203F670[1].field_A = 1;
    stru_203F670[1].size = 240;
    stru_203F670[1].palette = 10;
    stru_203F670[1].stringOffset = 0;
    stru_203F670[1].field_11 = 6;
    stru_203F670[1].font = &font_80B01A8[1];
    stru_203F670[2].letterSpacing = 1;
    stru_203F670[2].field_12 = 0;
    stru_203F670[2].field_A = 1;
    stru_203F670[2].size = 240;
    stru_203F670[2].palette = 10;
    stru_203F670[2].stringOffset = 0;
    stru_203F670[2].field_11 = 6;
    stru_203F670[2].font = &font_80B01A8[1];

    stru_203F5EC[0].letterSpacing = 1;
    stru_203F5EC[0].field_12 = 0;
    stru_203F5EC[0].field_A = 1;
    stru_203F5EC[0].size = 240;
    stru_203F5EC[0].palette = 10;
    stru_203F5EC[0].stringOffset = 0;
    stru_203F5EC[0].field_11 = 6;
    stru_203F5EC[0].font = &font_80B01A8[1];
    stru_203F5EC[1].letterSpacing = 1;
    stru_203F5EC[1].field_12 = 0;
    stru_203F5EC[1].field_A = 1;
    stru_203F5EC[1].size = 240;
    stru_203F5EC[1].palette = 10;
    stru_203F5EC[1].stringOffset = 0;
    stru_203F5EC[1].field_11 = 6;
    stru_203F5EC[1].font = &font_80B01A8[1];
    stru_203F5EC[2].letterSpacing = 1;
    stru_203F5EC[2].field_12 = 0;
    stru_203F5EC[2].field_A = 1;
    stru_203F5EC[2].size = 240;
    stru_203F5EC[2].palette = 10;
    stru_203F5EC[2].stringOffset = 0;
    stru_203F5EC[2].field_11 = 6;
    stru_203F5EC[2].font = &font_80B01A8[1];
    stru_203F5EC[3].letterSpacing = 1;
    stru_203F5EC[3].field_12 = 0;
    stru_203F5EC[3].field_A = 2;
    stru_203F5EC[3].size = 208;
    stru_203F5EC[3].palette = 10;
    stru_203F5EC[3].stringOffset = 0;
    stru_203F5EC[3].field_11 = 6;
    stru_203F5EC[3].font = &font_80B01A8[1];
    stru_203F5EC[4].letterSpacing = 1;
    stru_203F5EC[4].field_12 = 0;
    stru_203F5EC[4].field_A = 1;
    stru_203F5EC[4].size = 240;
    stru_203F5EC[4].palette = 10;
    stru_203F5EC[4].stringOffset = 0;
    stru_203F5EC[4].field_11 = 6;
    stru_203F5EC[4].font = &font_80B01A8[1];
    stru_203F5EC[5].letterSpacing = 1;
    stru_203F5EC[5].field_12 = 0;
    stru_203F5EC[5].field_A = 1;
    stru_203F5EC[5].size = 240;
    stru_203F5EC[5].palette = 10;
    stru_203F5EC[5].stringOffset = 0;
    stru_203F5EC[5].field_11 = 6;
    stru_203F5EC[5].font = &font_80B01A8[1];

    switch (gPauseMenuLanguage) {
        case 0:
            dword_203F550 = &unk_86AD9E0;
            dword_203F554 = &str_08067DC0;
            dword_203F5BC[0] = &str_08068058;
            dword_203F5BC[1] = &str_08068064;
            dword_203F5BC[2] = &str_08068074;
            dword_203F5BC[3] = &str_08068084;
            dword_203F5BC[4] = &str_080680B0;
            dword_203F5BC[5] = &str_080680BC;
            dword_203F664[0] = &str_08067DB4;
            dword_203F664[1] = &str_08067DA8;
            dword_203F664[2] = &str_08067D9C;
            break;

        case 1:
            dword_203F550 = &unk_86ADAA8;
            dword_203F554 = &str_08067E58;
            dword_203F5BC[0] = &str_080680E8;
            dword_203F5BC[1] = &str_080680FC;
            dword_203F5BC[2] = &str_0806810C;
            dword_203F5BC[3] = &str_08068120;
            dword_203F5BC[4] = &str_08068148;
            dword_203F5BC[5] = &str_0806815C;
            dword_203F664[0] = &str_08067E4C;
            dword_203F664[1] = &str_08067E3C;
            dword_203F664[2] = &str_08067E30;
            break;

        case 2:
            dword_203F550 = &unk_86ADC38;
            dword_203F554 = &str_08067FB0;
            dword_203F5BC[0] = &str_08068244;
            dword_203F5BC[1] = &str_08068258;
            dword_203F5BC[2] = &str_08068264;
            dword_203F5BC[3] = &str_08068274;
            dword_203F5BC[4] = &str_08068298;
            dword_203F5BC[5] = &str_080682AC;
            dword_203F664[0] = &str_08067FA4;
            dword_203F664[1] = &str_08067F98;
            dword_203F664[2] = &str_08067F8C;
            break;

        case 4:
            dword_203F550 = &unk_86ADD00;
            dword_203F554 = &str_0806803C;
            dword_203F5BC[0] = &str_080682E4;
            dword_203F5BC[1] = &str_080682F4;
            dword_203F5BC[2] = &str_08068304;
            dword_203F5BC[3] = &str_08068314;
            dword_203F5BC[4] = &str_0806833C;
            dword_203F5BC[5] = &str_08068350;
            dword_203F664[0] = &str_08068030;
            dword_203F664[1] = &str_08068020;
            dword_203F664[2] = &str_08068014;
            break;

        case 3:
            dword_203F550 = &unk_86ADB70;
            dword_203F554 = &str_08067F08;
            dword_203F5BC[0] = &str_08068190;
            dword_203F5BC[1] = &str_080681A4;
            dword_203F5BC[2] = &str_080681B8;
            dword_203F5BC[3] = &str_080681CC;
            dword_203F5BC[4] = &str_08068208;
            dword_203F5BC[5] = &str_0806821C;
            dword_203F664[0] = &str_08067EF8;
            dword_203F664[1] = &str_08067EEC;
            dword_203F664[2] = &str_08067EE0;
            break;

        default:
            ASSERT(0);
            break;
    }

    dword_203F5D4[0] = sub_8025870(dword_203F5BC[0], stru_203F5EC);
    dword_203F5D4[1] = sub_8025870(dword_203F5BC[1], &stru_203F5EC[1]);
    dword_203F5D4[2] = sub_8025870(dword_203F5BC[2], &stru_203F5EC[2]);
    dword_203F5D4[3] = sub_8025870(dword_203F5BC[3], &stru_203F5EC[3]);
    dword_203F5D4[4] = sub_8025870(dword_203F5BC[4], &stru_203F5EC[4]);
    dword_203F5D4[5] = sub_8025870(dword_203F5BC[5], &stru_203F5EC[5]);

    dword_203F558 = sub_8025870(dword_203F554, &stru_203F55C);
    dword_203F4EC = Alloc(sizeof(struct Sprite) * 3, 15, 4);
    dword_203F4F0 = Alloc(3, 15, 4);

    for (i = 0; i < 3; i++) {
        dword_203F4F0[i] = 0;
    }

    SetTextSpriteCount(0);
    DmaFill32(170, gOAMBuffer1, 256);
    gOAMBufferFramePtr = gOAMBuffer1;
    gOAMBufferEnd = &gOAMBuffer1[0x100];
    gOBJTileFramePtr = (u32*)OBJ_VRAM0;
    gOBJTileCount = 0;
    SyncVblank();
    UpdateVideo();
    SkipVblank();

    DmaTransfer32(OBJ_PLTT, gPaletteCopy, 128);
    DmaTransfer32(&unk_83FD254, OBJ_PLTT, 128);

    sub_8026CC8(2048, 45056);
    DisableBackgrounds();

    init();
    PauseMenuBehavior();

    FadeOutObjects(2, 0);

    SetTextSpriteCount(0);
    DmaFill32(170, gOAMBuffer1, 256);
    gOAMBufferFramePtr = gOAMBuffer1;
    gOAMBufferEnd = &gOAMBuffer1[0x100];
    gOBJTileFramePtr = (u32*)OBJ_VRAM0;
    gOBJTileCount = 0;
    SyncVblank();
    UpdateVideo();
    SkipVblank();

    REG_BLDCNT = BLDCNT_TGT2_ALL | BLDCNT_EFFECT_NONE;
    REG_BLDALPHA = 2311;
    EnableBGAlphaBlending();

    REG_BLDCNT = gColorSpecEffectsSel;
    EnableBackgrounds();

    sub_8026D84();
    DmaTransfer32(gPaletteCopy, OBJ_PLTT, 128);
    sub_800EECC();

    if (!gIsSlideMiniGame) {
        sub_801A2E4();
    }

    if (gLoadedRoomIndex == 30 || gLoadedRoomIndex == 9) {
        sub_800EC94();
        sub_800ECB4();
    }

    sub_8047BEC();
    sub_80524D8();
    FreeById(4, 15);
    ResetMenu();

    ASSERT(DoesMemBlockExistById(4, 15) == FALSE);

    gClockStatus = 0;
    sub_80528D8(0);
    resume_efx();
}

static void init() {
    sub_8040B3C(gPlayerStateSettings[gPlayerState] & 0x100);

    InitMenu(MENU_PAUSE_MAIN, gPauseMenuLanguage);
    gMenuId = MENU_PAUSE_MAIN;
    gMenuParentId = -1;

    stru_203F4FC.xPosition = 92;
    stru_203F4FC.yPosition = 131;
    stru_203F4FC.letterSpacing = 1;
    stru_203F4FC.field_12 = 0;
    stru_203F4FC.field_A = 1;
    stru_203F4FC.size = 240;
    stru_203F4FC.palette = 10;
    stru_203F4FC.stringOffset = 0;
    stru_203F4FC.field_11 = 6;
    stru_203F4FC.font = &font_80B01A8[1];

    gLevelNameTextBox.xPosition = 0;
    gLevelNameTextBox.yPosition = 0;
    gLevelNameTextBox.letterSpacing = 1;
    gLevelNameTextBox.field_12 = 0;
    gLevelNameTextBox.field_A = 2;
    gLevelNameTextBox.size = 240;
    gLevelNameTextBox.palette = 10;
    gLevelNameTextBox.stringOffset = 0;
    gLevelNameTextBox.field_11 = 6;
    gLevelNameTextBox.font = &font_80B01A8[1];

    SetSprite(&stru_203F510, 0x47A, 0, 0, 0, 0x48, 0x83, 2);     // Jiggy
    SetSprite(&dword_203F4EC[1], 0x486, 0, 0, 0, 0xA4, 0x90, 2); // A button
    SetSprite(&dword_203F4EC[2], 0x487, 0, 0, 0, 0x4C, 0x90, 2);

    byte_203F54C = TRUE;
}

static void PauseMenuBehavior() {
    bool32 changeMenu, fadeIn;
    bool32 loadMenu = FALSE;

    SetObjectsFullAlpha();

    fadeIn = TRUE;
    changeMenu = FALSE;

    while (1) {
        if (gMenuId == 1) {
            byte_203F54C = sub_8040E8C(gPlayerStateSettings[gPlayerState] & 0x100) && !loadMenu ? 1 : 0;
        } else {
            byte_203F54C = !loadMenu ? 1 : 0;
        }

        if (byte_203F54C) {
            ReadKeys(&gKeysPressed, &gKeysDown, &gPreviousKeys);

            if (gKeysDown & START_BUTTON) {
                if (sub_8040E8C(gPlayerStateSettings[gPlayerState] & 0x100)) {
                    loadMenu = TRUE;
                    sub_8040E74();
                }
            } else if (gKeysDown & B_BUTTON) {
                if (gMenuParentId == 0xFF) {
                    if (sub_8040E8C(gPlayerStateSettings[gPlayerState] & 0x100)) {
                        loadMenu = TRUE;
                        sub_8040E74();
                    }
                } else {
                    gMenuId = gMenuParentId;

                    switch (gMenuId) {
                        case MENU_PAUSE_MAIN:
                            gMenuParentId = 0xFF;
                            sub_8040B3C(gPlayerStateSettings[gPlayerState] & 0x100);
                            break;

                        default:
                            ASSERT(0);
                            break;
                    }

                    InitMenu(gMenuId, gPauseMenuLanguage);
                }
            } else if (gKeysDown & A_BUTTON) {
                if (PauseMenuChooseEntry(&changeMenu)) {
                    loadMenu = TRUE;
                    sub_8040E74();
                }

                if (changeMenu) {
                    changeMenu = FALSE;
                    InitMenu(gMenuId, gPauseMenuLanguage);
                    sub_8040B3C(gPlayerStateSettings[gPlayerState] & 0x100);
                    SetObjectsFullAlpha();
                    fadeIn = 1;
                }
            } else if (gKeysDown & DPAD_UP) {
                if (byte_203EA89) {
                    audio_new_fx(dSoundEffects[204].index, dSoundEffects[204].volumes[byte_203EA8C],
                                 dSoundEffects[204].pitch + 0x10000);
                }
                AdvanceMenuEntryUp();
            } else if (gKeysDown & DPAD_DOWN) {
                if (byte_203EA89) {
                    audio_new_fx(dSoundEffects[204].index, dSoundEffects[204].volumes[byte_203EA8C],
                                 dSoundEffects[204].pitch + 0x10000);
                }
                AdvanceMenuEntryDown();
            }
        }

        if (loadMenu && sub_8040FF4(gPlayerStateSettings[gPlayerState] & 0x100)) {
            if (gMenuId == MENU_PAUSE_MAIN)
                break;

            InitMenu(gMenuId, gPauseMenuLanguage);
            loadMenu = FALSE;
        }

        sub_804087C();

        SetTextSpriteCount(0);
        DmaFill32(170, gOAMBuffer1, 256);
        gOAMBufferFramePtr = gOAMBuffer1;
        gOAMBufferEnd = &gOAMBuffer1[0x100];
        gOBJTileFramePtr = (u32*)OBJ_VRAM0;
        gOBJTileCount = 0;

        sub_804095C();
        FlushMenuToTextBuffer();
        RenderText();
        sub_80408F0();
        RenderMenuSprites();
        sub_8046D44();
        CheckHeap(4);
        CheckStacks();
        SyncVblank();
        UpdateVideo();
        SkipVblank();

        if (fadeIn) {
            sub_08026BA8(2, 0);
            fadeIn = 0;
        }
    }
}

static void sub_8045A78() {
    byte_203F52C[0] = '0';
    byte_203F52C[1] = '0';
    byte_203F52C[2] = ':';
    byte_203F52C[3] = '0';
    byte_203F52C[4] = '0';
    byte_203F52C[5] = ':';
    byte_203F52C[6] = '0';
    byte_203F52C[7] = '0';
    byte_203F52C[8] = -1;
    IntegerToAsciiBw(gGameStatus.clockHour, &byte_203F52C[1]);
    IntegerToAsciiBw(gGameStatus.clockMinute, &byte_203F52C[4]);
    IntegerToAsciiBw(gGameStatus.clockSecond, &byte_203F52C[7]);
    stru_203F4FC.xPosition = 92;
    stru_203F4FC.yPosition = 131;
    stru_203F4FC.stringOffset = 0;
    AddStringToBuffer(&stru_203F4FC, byte_203F52C);
}

static bool32 PauseMenuChooseEntry(bool32* changeMenu) {
    if (gMenuId != MENU_PAUSE_MAIN) {
        return FALSE;
    }

    switch (GetCurrentMenuEntry()) {
        case 0: // Continue
            return TRUE;

        case 1: // Totals
            sub_8040E74();
            sub_8045C08();
            *changeMenu = TRUE;
            break;

        case 2: // Options
            sub_8040E74();
            sub_080466EC();
            gMenuId = MENU_PAUSE_MAIN;
            gMenuParentId = 0xFF;
            *changeMenu = TRUE;
            break;

        case 3: // Save
            sub_8040E74();
            if (!sub_08045F14()) {
                gMenuId = MENU_PAUSE_MAIN;
                gMenuParentId = 0xFF;
                *changeMenu = TRUE;
                return FALSE;
            } else {
                gMenuId = MENU_PAUSE_MAIN;
                gMenuParentId = 0xFF;
                return TRUE;
            }
    }

    return FALSE;
}

static void load_page_name(s32 page) {
    gLevelNameTextBox.xPosition = (240 - sub_8025870(dword_203F550[page], &gLevelNameTextBox)) >> 1;
    gLevelNameTextBox.yPosition = 8;
    gLevelNameTextBox.stringOffset = 0;
    AddStringToBuffer(&gLevelNameTextBox, dword_203F550[page]);
}

static void load_jinjo_palette(s32 page) {
    switch (page) {
        case 0:
            DmaTransferObjPalette(&unk_83FD894, 2, 2);
            break;

        case 1:
            DmaTransferObjPalette(&unk_83FD8B4, 2, 2);
            break;

        case 2:
            DmaTransferObjPalette(&unk_83FD8D4, 2, 2);
            break;

        case 3:
            DmaTransferObjPalette(&unk_83FD8F4, 2, 2);
            break;

        case 4:
            DmaTransferObjPalette(&unk_83FD914, 2, 2);
            break;

        case 5:
            DmaTransferObjPalette(&unk_83FD934, 2, 2);
            break;

        case 6:
            DmaTransferObjPalette(&unk_83FD954, 2, 2);
            break;
    }
}

static void sub_8045C08() {
    s32 page, nextPage;
    bool32 loadNextPage;
    bool32 fadeIn;

    while (!sub_8040FF4(gPlayerStateSettings[gPlayerState] & 0x100)) {
        sub_804087C();
        SetTextSpriteCount(0);
        DmaFill32(170, gOAMBuffer1, 256);
        gOAMBufferFramePtr = gOAMBuffer1;
        gOAMBufferEnd = &gOAMBuffer1[0x100];
        gOBJTileFramePtr = (u32*)OBJ_VRAM0;
        gOBJTileCount = 0;
        sub_804095C();
        FlushMenuToTextBuffer();
        RenderText();
        sub_80408F0();
        RenderMenuSprites();
        sub_8046D44();
        CheckStacks();
        SyncVblank();
        UpdateVideo();
        SkipVblank();
    }

    FadeOutObjects(2, 0);
    SetTextSpriteCount(0);
    DmaFill32(170, gOAMBuffer1, 256);
    gOAMBufferFramePtr = gOAMBuffer1;
    gOAMBufferEnd = &gOAMBuffer1[0x100];
    gOBJTileFramePtr = (u32*)OBJ_VRAM0;
    gOBJTileCount = 0;
    SyncVblank();
    UpdateVideo();
    SkipVblank();
    REG_BLDCNT = 16128;
    REG_BLDALPHA = 2311;

    page = gLoadedRoomLevel;
    nextPage = -1;

    sub_0804147C(page);
    load_jinjo_palette(page);

    loadNextPage = FALSE;
    SetObjectsFullAlpha();
    fadeIn = TRUE;

    while (1) {
        if (sub_08041AC0(page) && !loadNextPage) {
            ReadKeys(&gKeysPressed, &gKeysDown, &gPreviousKeys);

            if (gKeysDown & B_BUTTON) {
                if (sub_08041AC0(page)) {
                    loadNextPage = TRUE;
                    nextPage = -1;
                    sub_8041AAC(page);
                }
            } else if (gKeysDown & DPAD_LEFT) {
                nextPage = page - 1;

                if (nextPage < 0) {
                    nextPage = 6;
                }

                if (gUnlockedLevels != gTotalAmountOfLevels && nextPage != 6 && nextPage > gUnlockedLevels) {
                    nextPage = gUnlockedLevels;
                }

                loadNextPage = TRUE;
                sub_8041AAC(page);
            } else if (gKeysDown & DPAD_RIGHT) {
                nextPage = page + 1;

                if (nextPage > 6) {
                    nextPage = 0;
                }

                if (gUnlockedLevels != gTotalAmountOfLevels && nextPage != 6 && nextPage > gUnlockedLevels) {
                    nextPage = 6;
                }

                loadNextPage = TRUE;
                sub_8041AAC(page);
            }
        }

        if (loadNextPage && sub_08041C8C(page)) {
            load_jinjo_palette(6);
            FadeOutObjects(2, 0);
            SetTextSpriteCount(0);
            DmaFill32(170, gOAMBuffer1, 256);
            gOAMBufferFramePtr = gOAMBuffer1;
            gOAMBufferEnd = &gOAMBuffer1[0x100];
            gOBJTileFramePtr = (u32*)OBJ_VRAM0;
            gOBJTileCount = 0;
            SyncVblank();
            UpdateVideo();
            SkipVblank();
            REG_BLDCNT = 16128;
            REG_BLDALPHA = 2311;

            if (nextPage < 0)
                break;

            page = nextPage;

            sub_0804147C(page);
            load_jinjo_palette(page);

            loadNextPage = FALSE;

            SetObjectsFullAlpha();
            fadeIn = TRUE;
        }

        sub_804087C();
        SetTextSpriteCount(0);
        DmaFill32(170, gOAMBuffer1, 256);
        gOAMBufferFramePtr = gOAMBuffer1;
        gOAMBufferEnd = &gOAMBuffer1[0x100];
        gOBJTileFramePtr = (u32*)OBJ_VRAM0;
        gOBJTileCount = 0;
        load_page_name(page);
        sub_804095C();
        RenderText();
        sub_80408F0();
        sub_8046D44();
        CheckHeap(4);
        CheckStacks();
        SyncVblank();
        UpdateVideo();
        SkipVblank();

        if (fadeIn) {
            sub_08026BA8(2, 0);
            fadeIn = FALSE;
        }
    }
}
