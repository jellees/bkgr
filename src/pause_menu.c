#include "global.h"
#include "sprite.h"
#include "menu.h"
#include "pause_menu.h"
#include "alloc.h"
#include "common.h"

u8 gClockStatus;
s32 dword_203F4DC;

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

char* gSaveGameText[6];
s32 gSaveGameTextOffsets[6];
struct TextBox gSaveGameTextBoxes[6];

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

    gSaveGameTextBoxes[0].letterSpacing = 1;
    gSaveGameTextBoxes[0].field_12 = 0;
    gSaveGameTextBoxes[0].field_A = 1;
    gSaveGameTextBoxes[0].size = 240;
    gSaveGameTextBoxes[0].palette = 10;
    gSaveGameTextBoxes[0].stringOffset = 0;
    gSaveGameTextBoxes[0].field_11 = 6;
    gSaveGameTextBoxes[0].font = &font_80B01A8[1];
    gSaveGameTextBoxes[1].letterSpacing = 1;
    gSaveGameTextBoxes[1].field_12 = 0;
    gSaveGameTextBoxes[1].field_A = 1;
    gSaveGameTextBoxes[1].size = 240;
    gSaveGameTextBoxes[1].palette = 10;
    gSaveGameTextBoxes[1].stringOffset = 0;
    gSaveGameTextBoxes[1].field_11 = 6;
    gSaveGameTextBoxes[1].font = &font_80B01A8[1];
    gSaveGameTextBoxes[2].letterSpacing = 1;
    gSaveGameTextBoxes[2].field_12 = 0;
    gSaveGameTextBoxes[2].field_A = 1;
    gSaveGameTextBoxes[2].size = 240;
    gSaveGameTextBoxes[2].palette = 10;
    gSaveGameTextBoxes[2].stringOffset = 0;
    gSaveGameTextBoxes[2].field_11 = 6;
    gSaveGameTextBoxes[2].font = &font_80B01A8[1];
    gSaveGameTextBoxes[3].letterSpacing = 1;
    gSaveGameTextBoxes[3].field_12 = 0;
    gSaveGameTextBoxes[3].field_A = 2;
    gSaveGameTextBoxes[3].size = 208;
    gSaveGameTextBoxes[3].palette = 10;
    gSaveGameTextBoxes[3].stringOffset = 0;
    gSaveGameTextBoxes[3].field_11 = 6;
    gSaveGameTextBoxes[3].font = &font_80B01A8[1];
    gSaveGameTextBoxes[4].letterSpacing = 1;
    gSaveGameTextBoxes[4].field_12 = 0;
    gSaveGameTextBoxes[4].field_A = 1;
    gSaveGameTextBoxes[4].size = 240;
    gSaveGameTextBoxes[4].palette = 10;
    gSaveGameTextBoxes[4].stringOffset = 0;
    gSaveGameTextBoxes[4].field_11 = 6;
    gSaveGameTextBoxes[4].font = &font_80B01A8[1];
    gSaveGameTextBoxes[5].letterSpacing = 1;
    gSaveGameTextBoxes[5].field_12 = 0;
    gSaveGameTextBoxes[5].field_A = 1;
    gSaveGameTextBoxes[5].size = 240;
    gSaveGameTextBoxes[5].palette = 10;
    gSaveGameTextBoxes[5].stringOffset = 0;
    gSaveGameTextBoxes[5].field_11 = 6;
    gSaveGameTextBoxes[5].font = &font_80B01A8[1];

    switch (gPauseMenuLanguage) {
        case 0:
            dword_203F550 = &unk_86AD9E0;
            dword_203F554 = &str_08067DC0;
            gSaveGameText[0] = &str_08068058;
            gSaveGameText[1] = &str_08068064;
            gSaveGameText[2] = &str_08068074;
            gSaveGameText[3] = &str_08068084;
            gSaveGameText[4] = &str_080680B0;
            gSaveGameText[5] = &str_080680BC;
            dword_203F664[0] = &str_08067DB4;
            dword_203F664[1] = &str_08067DA8;
            dword_203F664[2] = &str_08067D9C;
            break;

        case 1:
            dword_203F550 = &unk_86ADAA8;
            dword_203F554 = &str_08067E58;
            gSaveGameText[0] = &str_080680E8;
            gSaveGameText[1] = &str_080680FC;
            gSaveGameText[2] = &str_0806810C;
            gSaveGameText[3] = &str_08068120;
            gSaveGameText[4] = &str_08068148;
            gSaveGameText[5] = &str_0806815C;
            dword_203F664[0] = &str_08067E4C;
            dword_203F664[1] = &str_08067E3C;
            dword_203F664[2] = &str_08067E30;
            break;

        case 2:
            dword_203F550 = &unk_86ADC38;
            dword_203F554 = &str_08067FB0;
            gSaveGameText[0] = &str_08068244;
            gSaveGameText[1] = &str_08068258;
            gSaveGameText[2] = &str_08068264;
            gSaveGameText[3] = &str_08068274;
            gSaveGameText[4] = &str_08068298;
            gSaveGameText[5] = &str_080682AC;
            dword_203F664[0] = &str_08067FA4;
            dword_203F664[1] = &str_08067F98;
            dword_203F664[2] = &str_08067F8C;
            break;

        case 4:
            dword_203F550 = &unk_86ADD00;
            dword_203F554 = &str_0806803C;
            gSaveGameText[0] = &str_080682E4;
            gSaveGameText[1] = &str_080682F4;
            gSaveGameText[2] = &str_08068304;
            gSaveGameText[3] = &str_08068314;
            gSaveGameText[4] = &str_0806833C;
            gSaveGameText[5] = &str_08068350;
            dword_203F664[0] = &str_08068030;
            dword_203F664[1] = &str_08068020;
            dword_203F664[2] = &str_08068014;
            break;

        case 3:
            dword_203F550 = &unk_86ADB70;
            dword_203F554 = &str_08067F08;
            gSaveGameText[0] = &str_08068190;
            gSaveGameText[1] = &str_080681A4;
            gSaveGameText[2] = &str_080681B8;
            gSaveGameText[3] = &str_080681CC;
            gSaveGameText[4] = &str_08068208;
            gSaveGameText[5] = &str_0806821C;
            dword_203F664[0] = &str_08067EF8;
            dword_203F664[1] = &str_08067EEC;
            dword_203F664[2] = &str_08067EE0;
            break;

        default:
            ASSERT(0);
            break;
    }

    gSaveGameTextOffsets[0] = sub_8025870(gSaveGameText[0], gSaveGameTextBoxes);
    gSaveGameTextOffsets[1] = sub_8025870(gSaveGameText[1], &gSaveGameTextBoxes[1]);
    gSaveGameTextOffsets[2] = sub_8025870(gSaveGameText[2], &gSaveGameTextBoxes[2]);
    gSaveGameTextOffsets[3] = sub_8025870(gSaveGameText[3], &gSaveGameTextBoxes[3]);
    gSaveGameTextOffsets[4] = sub_8025870(gSaveGameText[4], &gSaveGameTextBoxes[4]);
    gSaveGameTextOffsets[5] = sub_8025870(gSaveGameText[5], &gSaveGameTextBoxes[5]);

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
    REG_BLDALPHA = BLDALPHA_BLEND(7, 9);
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
    REG_BLDCNT = BLDCNT_TGT2_ALL | BLDCNT_EFFECT_NONE;
    REG_BLDALPHA = BLDALPHA_BLEND(7, 9);

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

                if (gUnlockedLevels != gTotalAmountOfLevels && nextPage != 6
                    && nextPage > gUnlockedLevels) {
                    nextPage = gUnlockedLevels;
                }

                loadNextPage = TRUE;
                sub_8041AAC(page);
            } else if (gKeysDown & DPAD_RIGHT) {
                nextPage = page + 1;

                if (nextPage > 6) {
                    nextPage = 0;
                }

                if (gUnlockedLevels != gTotalAmountOfLevels && nextPage != 6
                    && nextPage > gUnlockedLevels) {
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
            REG_BLDCNT = BLDCNT_TGT2_ALL | BLDCNT_EFFECT_NONE;
            REG_BLDALPHA = BLDALPHA_BLEND(7, 9);

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

static bool32 sub_08045F14() {
    enum PauseMenuState { SHOW_SAVE_GAMES, MOVE_TEXT, WAIT_FOR_CONFIRMATION, SAVING_GAME, GAME_SAVED };

    int i;
    enum PauseMenuState state;
    int gameIdx;
    bool32 isCancelled;
    struct TextBox textbox;
    bool32 fadeIn;
    bool32 saveGame;
    int var_48;
    int saveGameWaitCounter;
    int min;
    int max;
    int currentSfxIdx;
    int sfxId;
    int var_30;
    int xPos;
    fx32 yPos;
    fx32 yPosTarget;
    char* string;

    min = 0;
    max = 0;
    currentSfxIdx = -1;
    currentSfxIdx++;
    currentSfxIdx--;
    sfxId = -1;
    var_30 = 1;
    xPos = 0;
    yPos = 0;
    yPosTarget = 0;
    string = NULL;
    isCancelled = FALSE;

    textbox.letterSpacing = 1;
    textbox.field_12 = 0;
    textbox.field_A = 1;
    textbox.size = 240;
    textbox.palette = 10;
    textbox.stringOffset = 0;
    textbox.field_11 = 6;
    textbox.font = &font_80B01A8[1];

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
    REG_BLDCNT = BLDCNT_TGT2_ALL | BLDCNT_EFFECT_NONE;
    REG_BLDALPHA = BLDALPHA_BLEND(7, 9);
    InitMenu(MENU_FILE_SELECT, gPauseMenuLanguage);
    gMenuParentId = gMenuId;
    gMenuId = MENU_FILE_SELECT;

    for (i = 0; i < dword_203F4DC; ++i) {
        AdvanceMenuEntryDown();
    }

    state = SHOW_SAVE_GAMES;

    SetObjectsFullAlpha();

    fadeIn = TRUE;
    saveGame = FALSE;
    var_48 = 0;
    saveGameWaitCounter = -1;
    gameIdx = -1;

    while (1) {
        ReadKeys(&gKeysPressed, &gKeysDown, &gPreviousKeys);

        if (gKeysDown & B_BUTTON) {
            if (byte_203EA89) {
                audio_new_fx(dSoundEffects[208].index, dSoundEffects[208].volumes[byte_203EA8C],
                             dSoundEffects[208].pitch + 0x10000);
            }
            isCancelled = TRUE;
        } else if (gKeysDown & A_BUTTON) {
            switch (state) {
                case SHOW_SAVE_GAMES:
                    state = MOVE_TEXT;
                    switch (GetCurrentMenuEntry()) {
                        case 0:
                            xPos = 16;
                            yPos = FX32_CONST(40);
                            yPosTarget = FX32_CONST(40);
                            string = file_string_1;
                            gameIdx = 0;
                            dword_203F4DC = 0;
                            break;

                        case 1:
                            xPos = 16;
                            yPos = FX32_CONST(72);
                            yPosTarget = FX32_CONST(40);
                            string = file_string_2;
                            gameIdx = 1;
                            dword_203F4DC = 1;
                            break;

                        case 2:
                            xPos = 16;
                            yPos = FX32_CONST(104);
                            yPosTarget = FX32_CONST(40);
                            string = file_string_3;
                            gameIdx = 2;
                            dword_203F4DC = 2;
                            break;
                    }
                    break;

                case WAIT_FOR_CONFIRMATION:
                    state = SAVING_GAME;
                    saveGame = TRUE;
                    break;
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

        if (isCancelled) {
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
            REG_BLDALPHA = BLDALPHA_BLEND(7, 9);
            return 0;
        }

        SetTextSpriteCount(0);
        DmaFill32(170, gOAMBuffer1, 256);
        gOAMBufferFramePtr = gOAMBuffer1;
        gOAMBufferEnd = &gOAMBuffer1[0x100];
        gOBJTileFramePtr = (u32*)OBJ_VRAM0;
        gOBJTileCount = 0;
        gSaveGameTextBoxes[0].xPosition = (240 - gSaveGameTextOffsets[0]) >> 1;
        gSaveGameTextBoxes[0].yPosition = 8;
        gSaveGameTextBoxes[0].stringOffset = 0;
        AddStringToBuffer(gSaveGameTextBoxes, gSaveGameText[0]);

        switch (state) {
            case SHOW_SAVE_GAMES:
                FlushMenuToTextBuffer();
                RenderText();
                RenderMenuSprites();
                sub_8046D44();
                break;

            case MOVE_TEXT:
                textbox.xPosition = xPos;
                textbox.yPosition = yPos >> FX32_SHIFT;
                textbox.stringOffset = 0;
                AddStringToBuffer(&textbox, string);
                yPos -= FX32_CONST(3.5);
                if (yPos <= yPosTarget) {
                    yPos = yPosTarget;
                    state = 2;
                }
                RenderText();
                break;

            case WAIT_FOR_CONFIRMATION:
                textbox.xPosition = xPos;
                textbox.yPosition = yPos >> FX32_SHIFT;
                textbox.stringOffset = 0;
                AddStringToBuffer(&textbox, string);
                if (gSaveFiles[gameIdx].empty) {
                    gSaveGameTextBoxes[1].xPosition = (240 - gSaveGameTextOffsets[1]) >> 1;
                    gSaveGameTextBoxes[1].yPosition = (yPos >> FX32_SHIFT) + 32;
                    gSaveGameTextBoxes[1].stringOffset = 0;
                    AddStringToBuffer(&gSaveGameTextBoxes[1], gSaveGameText[1]);
                } else {
                    gSaveGameTextBoxes[5].xPosition = (240 - gSaveGameTextOffsets[5]) >> 1;
                    gSaveGameTextBoxes[5].yPosition = (yPos >> FX32_SHIFT) + 32;
                    gSaveGameTextBoxes[5].stringOffset = 0;
                    AddStringToBuffer(&gSaveGameTextBoxes[5], gSaveGameText[5]);
                }
                gSaveGameTextBoxes[2].xPosition = (240 - gSaveGameTextOffsets[2]) >> 1;
                gSaveGameTextBoxes[2].yPosition = (yPos >> FX32_SHIFT) + 64;
                gSaveGameTextBoxes[2].stringOffset = 0;
                AddStringToBuffer(&gSaveGameTextBoxes[2], gSaveGameText[2]);
                RenderText();
                break;

            case SAVING_GAME:
                textbox.xPosition = xPos;
                textbox.yPosition = yPos >> FX32_SHIFT;
                textbox.stringOffset = 0;
                AddStringToBuffer(&textbox, string);
                gSaveGameTextBoxes[3].xPosition = 16;
                gSaveGameTextBoxes[3].yPosition = (yPos >> FX32_SHIFT) + 32;
                gSaveGameTextBoxes[3].stringOffset = 0;
                AddStringToBuffer(&gSaveGameTextBoxes[3], gSaveGameText[3]);
                RenderText();
                break;

            case GAME_SAVED:
                if (var_48 && !audio_fx_still_active(sfxId)) {
                    int r5 = var_30 - 1;
                    int newIdx;
                    do {
                        newIdx = RandomMinMax(min, max);
                    } while (newIdx == currentSfxIdx);
                    currentSfxIdx = newIdx;
                    if (byte_203EA89) {
                        sfxId = audio_new_fx(dSoundEffects[newIdx].index,
                                             dSoundEffects[newIdx].volumes[byte_203EA8C],
                                             dSoundEffects[newIdx].pitch + 0x10000);
                    } else {
                        sfxId = -1;
                    }
                    var_30 = r5;
                    if (var_30 == 0) {
                        var_48 = 0;
                    }
                }
                textbox.xPosition = xPos;
                textbox.yPosition = yPos >> FX32_SHIFT;
                textbox.stringOffset = 0;
                AddStringToBuffer(&textbox, string);
                gSaveGameTextBoxes[4].xPosition = (240 - gSaveGameTextOffsets[4]) >> 1;
                gSaveGameTextBoxes[4].yPosition = (yPos >> FX32_SHIFT) + 32;
                gSaveGameTextBoxes[4].stringOffset = 0;
                AddStringToBuffer(&gSaveGameTextBoxes[4], gSaveGameText[4]);
                RenderText();
                break;
        }

        CheckHeap(4);
        CheckStacks();
        SyncVblank();
        UpdateVideo();
        SkipVblank();

        if (fadeIn) {
            sub_08026BA8(2, 0);
            fadeIn = 0;
        }

        if (saveGame) {
            ASSERT(gameIdx >= 0);

            gSaveFiles[gameIdx].hour = gGameStatus.clockHour;
            gSaveFiles[gameIdx].minute = gGameStatus.clockMinute;
            gSaveFiles[gameIdx].second = gGameStatus.clockSecond;
            gSaveFiles[gameIdx].jiggies = (u8)gGameStatus.totalJiggies;
            gSaveFiles[gameIdx].notes = gGameStatus.totalNotes;
            gSaveFiles[gameIdx].empty = 0;
            MakeFileStrings();
            sub_80449B0(gameIdx, byte_2000335);
            CheckHeap(4);
            ASSERT(DoesMemBlockExistById(4, 9) == FALSE);

            state = GAME_SAVED;
            saveGameWaitCounter = 40;
            saveGame = FALSE;
            var_48 = 1;

            switch (gameIdx) {
                case 0:
                    min = 8;
                    max = 11;
                    var_30 = 2;
                    break;

                case 1:
                    min = 15;
                    max = 18;
                    var_30 = 2;
                    break;

                case 2:
                    min = 67;
                    max = 69;
                    var_30 = 4;
                    break;
            }

            sfxId = currentSfxIdx = -1;
        }

        if (saveGameWaitCounter >= 0) {
            if (saveGameWaitCounter == 0) {
                break;
            }
            saveGameWaitCounter--;
        }
    }

    FadeOutObjects(2, 0);
    SetTextSpriteCount(0);
    DmaFill32(170, gOAMBuffer1, 256);
    gOAMBufferFramePtr = gOAMBuffer1;
    gOAMBufferEnd = &gOAMBuffer1[0x100];
    gOBJTileFramePtr = (u32*)OBJ_VRAM0;
    gOBJTileCount = saveGameWaitCounter;
    SyncVblank();
    UpdateVideo();
    SkipVblank();
    REG_BLDCNT = BLDCNT_TGT2_ALL | BLDCNT_EFFECT_NONE;
    REG_BLDALPHA = BLDALPHA_BLEND(7, 9);
    return 1;
}
