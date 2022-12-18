#include "global.h"
#include "sprite.h"
#include "menu.h"
#include "alloc.h"
#include "save.h"
#include "savefile.h"
#include "pause_menu.h"
#include "common.h"

u8 gClockStatus;
s32 dword_203F4DC;

bool8 byte_203F4E0;

// These two are room and warp.
int dword_203F4E4;
int dword_203F4E8;

struct Sprite* gPauseMenuControlsSprites;
char* dword_203F4F0;
struct Sprite* dword_203F4F4;
char* dword_203F4F8;

struct TextBox gTimeTextBox;
struct Sprite gPauseMenuJiggySprite;

char gTimeText[9];

struct TextBox gLevelNameTextBox;

bool8 byte_203F54C;

char** gLevelNameTexts;
char* dword_203F554;

int dword_203F558;

struct TextBox gOptionsTextBox;
char* gNKreditzText;
int gNKreditzTextOffset;

struct TextBox gNKreditzTextBox;
char* gArcadeText;
int gArcadeTextOffset;

struct TextBox gArcadeTextBox;
struct TextBox stru_203F5A8;

char* gSaveGameTexts[6];
s32 gSaveGameTextOffsets[6];
struct TextBox gSaveGameTextBoxes[6];

char* gTextSpeedTexts[3];
struct TextBox gTextSpeedTextBoxes[3];

bool8 gArcadeFadeIn;

u16 gPaletteCopy[0x100];

static void init();
static void exec_pause_menu();
static bool32 choose_sub_menu(bool32* changeMenu);
static void exec_totals_menu();
static bool32 exec_save_menu();
static void exec_options_menu();
static void render_controls();
static void draw_arcade_menu_sprites();

void open_pause_menu() {
    int i;

    gClockStatus = 1;

    audio_halt_all_fx();
    sub_80528D8(1);
    pause_efx();

    gOptionsTextBox.letterSpacing = 1;
    gOptionsTextBox.field_12 = 0;
    gOptionsTextBox.field_A = 1;
    gOptionsTextBox.size = 240;
    gOptionsTextBox.palette = 10;
    gOptionsTextBox.stringOffset = 0;
    gOptionsTextBox.field_11 = 6;
    gOptionsTextBox.font = &font_80B01A8[1];

    stru_203F5A8.letterSpacing = 1;
    stru_203F5A8.field_12 = 0;
    stru_203F5A8.field_A = 1;
    stru_203F5A8.size = 240;
    stru_203F5A8.palette = 10;
    stru_203F5A8.stringOffset = 0;
    stru_203F5A8.field_11 = 6;
    stru_203F5A8.font = &font_80B01A8[1];

    gTextSpeedTextBoxes[0].letterSpacing = 1;
    gTextSpeedTextBoxes[0].field_12 = 0;
    gTextSpeedTextBoxes[0].field_A = 1;
    gTextSpeedTextBoxes[0].size = 240;
    gTextSpeedTextBoxes[0].palette = 10;
    gTextSpeedTextBoxes[0].stringOffset = 0;
    gTextSpeedTextBoxes[0].field_11 = 6;
    gTextSpeedTextBoxes[0].font = &font_80B01A8[1];
    gTextSpeedTextBoxes[1].letterSpacing = 1;
    gTextSpeedTextBoxes[1].field_12 = 0;
    gTextSpeedTextBoxes[1].field_A = 1;
    gTextSpeedTextBoxes[1].size = 240;
    gTextSpeedTextBoxes[1].palette = 10;
    gTextSpeedTextBoxes[1].stringOffset = 0;
    gTextSpeedTextBoxes[1].field_11 = 6;
    gTextSpeedTextBoxes[1].font = &font_80B01A8[1];
    gTextSpeedTextBoxes[2].letterSpacing = 1;
    gTextSpeedTextBoxes[2].field_12 = 0;
    gTextSpeedTextBoxes[2].field_A = 1;
    gTextSpeedTextBoxes[2].size = 240;
    gTextSpeedTextBoxes[2].palette = 10;
    gTextSpeedTextBoxes[2].stringOffset = 0;
    gTextSpeedTextBoxes[2].field_11 = 6;
    gTextSpeedTextBoxes[2].font = &font_80B01A8[1];

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
            gLevelNameTexts = &unk_86AD9E0;
            dword_203F554 = &str_08067DC0;
            gSaveGameTexts[0] = &str_08068058;
            gSaveGameTexts[1] = &str_08068064;
            gSaveGameTexts[2] = &str_08068074;
            gSaveGameTexts[3] = &str_08068084;
            gSaveGameTexts[4] = &str_080680B0;
            gSaveGameTexts[5] = &str_080680BC;
            gTextSpeedTexts[0] = &str_08067DB4;
            gTextSpeedTexts[1] = &str_08067DA8;
            gTextSpeedTexts[2] = &str_08067D9C;
            break;

        case 1:
            gLevelNameTexts = &unk_86ADAA8;
            dword_203F554 = &str_08067E58;
            gSaveGameTexts[0] = &str_080680E8;
            gSaveGameTexts[1] = &str_080680FC;
            gSaveGameTexts[2] = &str_0806810C;
            gSaveGameTexts[3] = &str_08068120;
            gSaveGameTexts[4] = &str_08068148;
            gSaveGameTexts[5] = &str_0806815C;
            gTextSpeedTexts[0] = &str_08067E4C;
            gTextSpeedTexts[1] = &str_08067E3C;
            gTextSpeedTexts[2] = &str_08067E30;
            break;

        case 2:
            gLevelNameTexts = &unk_86ADC38;
            dword_203F554 = &str_08067FB0;
            gSaveGameTexts[0] = &str_08068244;
            gSaveGameTexts[1] = &str_08068258;
            gSaveGameTexts[2] = &str_08068264;
            gSaveGameTexts[3] = &str_08068274;
            gSaveGameTexts[4] = &str_08068298;
            gSaveGameTexts[5] = &str_080682AC;
            gTextSpeedTexts[0] = &str_08067FA4;
            gTextSpeedTexts[1] = &str_08067F98;
            gTextSpeedTexts[2] = &str_08067F8C;
            break;

        case 4:
            gLevelNameTexts = &unk_86ADD00;
            dword_203F554 = &str_0806803C;
            gSaveGameTexts[0] = &str_080682E4;
            gSaveGameTexts[1] = &str_080682F4;
            gSaveGameTexts[2] = &str_08068304;
            gSaveGameTexts[3] = &str_08068314;
            gSaveGameTexts[4] = &str_0806833C;
            gSaveGameTexts[5] = &str_08068350;
            gTextSpeedTexts[0] = &str_08068030;
            gTextSpeedTexts[1] = &str_08068020;
            gTextSpeedTexts[2] = &str_08068014;
            break;

        case 3:
            gLevelNameTexts = &unk_86ADB70;
            dword_203F554 = &str_08067F08;
            gSaveGameTexts[0] = &str_08068190;
            gSaveGameTexts[1] = &str_080681A4;
            gSaveGameTexts[2] = &str_080681B8;
            gSaveGameTexts[3] = &str_080681CC;
            gSaveGameTexts[4] = &str_08068208;
            gSaveGameTexts[5] = &str_0806821C;
            gTextSpeedTexts[0] = &str_08067EF8;
            gTextSpeedTexts[1] = &str_08067EEC;
            gTextSpeedTexts[2] = &str_08067EE0;
            break;

        default:
            ASSERT(0);
            break;
    }

    gSaveGameTextOffsets[0] = sub_8025870(gSaveGameTexts[0], gSaveGameTextBoxes);
    gSaveGameTextOffsets[1] = sub_8025870(gSaveGameTexts[1], &gSaveGameTextBoxes[1]);
    gSaveGameTextOffsets[2] = sub_8025870(gSaveGameTexts[2], &gSaveGameTextBoxes[2]);
    gSaveGameTextOffsets[3] = sub_8025870(gSaveGameTexts[3], &gSaveGameTextBoxes[3]);
    gSaveGameTextOffsets[4] = sub_8025870(gSaveGameTexts[4], &gSaveGameTextBoxes[4]);
    gSaveGameTextOffsets[5] = sub_8025870(gSaveGameTexts[5], &gSaveGameTextBoxes[5]);

    dword_203F558 = sub_8025870(dword_203F554, &gOptionsTextBox);
    gPauseMenuControlsSprites = Alloc(sizeof(struct Sprite) * 3, 15, 4);
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
    exec_pause_menu();

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

    gTimeTextBox.xPosition = 92;
    gTimeTextBox.yPosition = 131;
    gTimeTextBox.letterSpacing = 1;
    gTimeTextBox.field_12 = 0;
    gTimeTextBox.field_A = 1;
    gTimeTextBox.size = 240;
    gTimeTextBox.palette = 10;
    gTimeTextBox.stringOffset = 0;
    gTimeTextBox.field_11 = 6;
    gTimeTextBox.font = &font_80B01A8[1];

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

    SetSprite(&gPauseMenuJiggySprite, 0x47A, 0, 0, 0, 0x48, 0x83, 2);        // Jiggy
    SetSprite(&gPauseMenuControlsSprites[1], 0x486, 0, 0, 0, 0xA4, 0x90, 2); // A button
    SetSprite(&gPauseMenuControlsSprites[2], 0x487, 0, 0, 0, 0x4C, 0x90, 2); // D-pad

    byte_203F54C = TRUE;
}

static void exec_pause_menu() {
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
                if (choose_sub_menu(&changeMenu)) {
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
                if (gCanPlaySfx) {
                    audio_new_fx(dSoundEffects[204].index, dSoundEffects[204].volumes[gSfxVolume],
                                 dSoundEffects[204].pitch + 0x10000);
                }
                AdvanceMenuEntryUp();
            } else if (gKeysDown & DPAD_DOWN) {
                if (gCanPlaySfx) {
                    audio_new_fx(dSoundEffects[204].index, dSoundEffects[204].volumes[gSfxVolume],
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
        render_controls();
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

/**
 * Draws play time. This function is never used.
 */
static void draw_time() {
    gTimeText[0] = '0';
    gTimeText[1] = '0';
    gTimeText[2] = ':';
    gTimeText[3] = '0';
    gTimeText[4] = '0';
    gTimeText[5] = ':';
    gTimeText[6] = '0';
    gTimeText[7] = '0';
    gTimeText[8] = -1;
    IntegerToAsciiBw(gGameStatus.clockHour, &gTimeText[1]);
    IntegerToAsciiBw(gGameStatus.clockMinute, &gTimeText[4]);
    IntegerToAsciiBw(gGameStatus.clockSecond, &gTimeText[7]);
    gTimeTextBox.xPosition = 92;
    gTimeTextBox.yPosition = 131;
    gTimeTextBox.stringOffset = 0;
    AddStringToBuffer(&gTimeTextBox, gTimeText);
}

static bool32 choose_sub_menu(bool32* changeMenu) {
    if (gMenuId != MENU_PAUSE_MAIN) {
        return FALSE;
    }

    switch (GetCurrentMenuEntry()) {
        case 0: // Continue
            return TRUE;

        case 1: // Totals
            sub_8040E74();
            exec_totals_menu();
            *changeMenu = TRUE;
            break;

        case 2: // Options
            sub_8040E74();
            exec_options_menu();
            gMenuId = MENU_PAUSE_MAIN;
            gMenuParentId = 0xFF;
            *changeMenu = TRUE;
            break;

        case 3: // Save
            sub_8040E74();
            if (!exec_save_menu()) {
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

/**
 * Draws the page name to the buffer.
 */
static void draw_page_name(s32 page) {
    gLevelNameTextBox.xPosition = (240 - sub_8025870(gLevelNameTexts[page], &gLevelNameTextBox)) >> 1;
    gLevelNameTextBox.yPosition = 8;
    gLevelNameTextBox.stringOffset = 0;
    AddStringToBuffer(&gLevelNameTextBox, gLevelNameTexts[page]);
}

/**
 * Loads palette for jinjo sprite on page.
 */
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

static void exec_totals_menu() {
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
        render_controls();
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
        draw_page_name(page);
        sub_804095C();
        RenderText();
        sub_80408F0();
        render_controls();
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

static bool32 exec_save_menu() {
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
        render_controls();
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
            if (gCanPlaySfx) {
                audio_new_fx(dSoundEffects[208].index, dSoundEffects[208].volumes[gSfxVolume],
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
            if (gCanPlaySfx) {
                audio_new_fx(dSoundEffects[204].index, dSoundEffects[204].volumes[gSfxVolume],
                             dSoundEffects[204].pitch + 0x10000);
            }
            AdvanceMenuEntryUp();
        } else if (gKeysDown & DPAD_DOWN) {
            if (gCanPlaySfx) {
                audio_new_fx(dSoundEffects[204].index, dSoundEffects[204].volumes[gSfxVolume],
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
        AddStringToBuffer(gSaveGameTextBoxes, gSaveGameTexts[0]);

        switch (state) {
            case SHOW_SAVE_GAMES:
                FlushMenuToTextBuffer();
                RenderText();
                RenderMenuSprites();
                render_controls();
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
                    AddStringToBuffer(&gSaveGameTextBoxes[1], gSaveGameTexts[1]);
                } else {
                    gSaveGameTextBoxes[5].xPosition = (240 - gSaveGameTextOffsets[5]) >> 1;
                    gSaveGameTextBoxes[5].yPosition = (yPos >> FX32_SHIFT) + 32;
                    gSaveGameTextBoxes[5].stringOffset = 0;
                    AddStringToBuffer(&gSaveGameTextBoxes[5], gSaveGameTexts[5]);
                }
                gSaveGameTextBoxes[2].xPosition = (240 - gSaveGameTextOffsets[2]) >> 1;
                gSaveGameTextBoxes[2].yPosition = (yPos >> FX32_SHIFT) + 64;
                gSaveGameTextBoxes[2].stringOffset = 0;
                AddStringToBuffer(&gSaveGameTextBoxes[2], gSaveGameTexts[2]);
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
                AddStringToBuffer(&gSaveGameTextBoxes[3], gSaveGameTexts[3]);
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
                    if (gCanPlaySfx) {
                        sfxId = audio_new_fx(dSoundEffects[newIdx].index,
                                             dSoundEffects[newIdx].volumes[gSfxVolume],
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
                AddStringToBuffer(&gSaveGameTextBoxes[4], gSaveGameTexts[4]);
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
            save_game(gameIdx, byte_2000335);
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

static void exec_options_menu() {
    struct TextBox bgmVolumeTextBox;
    struct TextBox sfxVolumeTextBox;
    char bgmText[6];
    char sfxText[6];
    bool32 exit;
    bool32 fadeIn;

    bgmVolumeTextBox.letterSpacing = 1;
    bgmVolumeTextBox.field_12 = 0;
    bgmVolumeTextBox.field_A = 1;
    bgmVolumeTextBox.size = 240;
    bgmVolumeTextBox.palette = 10;
    bgmVolumeTextBox.stringOffset = 0;
    bgmVolumeTextBox.field_11 = 6;
    bgmVolumeTextBox.font = &font_80B01A8[1];

    sfxVolumeTextBox.letterSpacing = 1;
    sfxVolumeTextBox.field_12 = 0;
    sfxVolumeTextBox.field_A = 1;
    sfxVolumeTextBox.size = 240;
    sfxVolumeTextBox.palette = 10;
    sfxVolumeTextBox.stringOffset = 0;
    sfxVolumeTextBox.field_11 = 6;
    sfxVolumeTextBox.font = &font_80B01A8[1];

    bgmText[0] = '{';
    bgmText[1] = ' ';
    IntegerToAsciiBw(gBgmMainVolume, &bgmText[2]);
    bgmText[3] = ' ';
    bgmText[4] = '}';
    bgmText[5] = -1;

    sfxText[0] = '{';
    sfxText[1] = ' ';
    IntegerToAsciiBw(gSfxMainVolume, &sfxText[2]);
    sfxText[3] = ' ';
    sfxText[4] = '}';
    sfxText[5] = -1;

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
        render_controls();
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

    InitMenu(MENU_PAUSE_OPTIONS, gPauseMenuLanguage);
    gMenuParentId = gMenuId;
    gMenuId = MENU_PAUSE_OPTIONS;

    exit = FALSE;

    SetObjectsFullAlpha();

    fadeIn = TRUE;

    while (1) {
        ReadKeys(&gKeysPressed, &gKeysDown, &gPreviousKeys);

        if (gKeysDown & B_BUTTON) {
#ifndef NONMATCHING
            goto _broken;
#else
            break;
#endif
        } else if (gKeysDown & DPAD_LEFT) {
            switch (GetCurrentMenuEntry()) {
                case 0:
                    if (gTextSpeed != 0) {
                        gTextSpeed--;
                    }
                    break;

                case 1:
                    if (gBgmMainVolume != 0) {
                        gBgmMainVolume--;
                        audio_set_tune_vol(dVolumes[gBgmMainVolume]);
                        IntegerToAsciiBw(gBgmMainVolume, &bgmText[2]);
                    }
                    break;

                case 2:
                    if (gSfxMainVolume != 0) {
                        gSfxMainVolume--;
                        audio_set_fx_vol(dVolumes[gSfxMainVolume]);
                        if (gCanPlaySfx) {
                            audio_new_fx(dSoundEffects[200].index,
                                         dSoundEffects[200].volumes[gSfxVolume],
                                         dSoundEffects[200].pitch + 0x10000);
                        }
                        IntegerToAsciiBw(gSfxMainVolume, &sfxText[2]);
                    }
                    break;

                case 3:
                    if (gPauseMenuLanguage != 0) {
                        gPauseMenuLanguage--;
                        sub_8025E44(gLoadedRoomLevel);
                    }
                    break;

                default:
                    ASSERT(0);
                    break;
            }
        } else if (gKeysDown & DPAD_RIGHT) {
            switch (GetCurrentMenuEntry()) {
                case 0:
                    if (gTextSpeed < 2) {
                        gTextSpeed++;
                    }
                    break;

                case 1:
                    if (gBgmMainVolume < 9) {
                        gBgmMainVolume++;
                        audio_set_tune_vol(dVolumes[gBgmMainVolume]);
                        IntegerToAsciiBw(gBgmMainVolume, &bgmText[2]);
                    }
                    break;

                case 2:
                    if (gSfxMainVolume < 9) {
                        gSfxMainVolume++;
                        audio_set_fx_vol(dVolumes[gSfxMainVolume]);
                        if (gCanPlaySfx) {
                            audio_new_fx(dSoundEffects[200].index,
                                         dSoundEffects[200].volumes[gSfxVolume],
                                         dSoundEffects[200].pitch + 0x10000);
                        }
                        IntegerToAsciiBw(gSfxMainVolume, &sfxText[2]);
                    }
                    break;

                case 3:
                    if (gPauseMenuLanguage < 4) {
                        gPauseMenuLanguage++;
                        sub_8025E44(gLoadedRoomLevel);
                    }
                    break;

                default:
                    ASSERT(0);
                    break;
            }
        } else if (gKeysDown & DPAD_UP) {
            if (gCanPlaySfx) {
                audio_new_fx(dSoundEffects[204].index, dSoundEffects[204].volumes[gSfxVolume],
                             dSoundEffects[204].pitch + 0x10000);
            }
            AdvanceMenuEntryUp();
        } else if (gKeysDown & DPAD_DOWN) {
            if (gCanPlaySfx) {
                audio_new_fx(dSoundEffects[204].index, dSoundEffects[204].volumes[gSfxVolume],
                             dSoundEffects[204].pitch + 0x10000);
            }
            AdvanceMenuEntryDown();
        }

        if (exit) {
            break;
        }

        SetTextSpriteCount(0);
        DmaFill32(170, gOAMBuffer1, 256);
        gOAMBufferFramePtr = gOAMBuffer1;
        gOAMBufferEnd = &gOAMBuffer1[0x100];
        gOBJTileFramePtr = (u32*)OBJ_VRAM0;
        gOBJTileCount = 0;
        gOptionsTextBox.xPosition = (240 - dword_203F558) >> 1;
        gOptionsTextBox.yPosition = 8;
        gOptionsTextBox.stringOffset = 0;
        AddStringToBuffer(&gOptionsTextBox, dword_203F554);

        switch (gTextSpeed) {
            case 0:
                gTextSpeedTextBoxes[0].xPosition = 120;
                gTextSpeedTextBoxes[0].yPosition = 36;
                gTextSpeedTextBoxes[0].stringOffset = 0;
                if (GetCurrentMenuEntry() == 0) {
                    gTextSpeedTextBoxes[0].palette = 10;
                } else {
                    gTextSpeedTextBoxes[0].palette = 15;
                }
                AddStringToBuffer(&gTextSpeedTextBoxes[0], gTextSpeedTexts[0]);
                break;

            case 1:
                gTextSpeedTextBoxes[1].xPosition = 120;
                gTextSpeedTextBoxes[1].yPosition = 36;
                gTextSpeedTextBoxes[1].stringOffset = 0;
                if (GetCurrentMenuEntry() == 0) {
                    gTextSpeedTextBoxes[1].palette = 10;
                } else {
                    gTextSpeedTextBoxes[1].palette = 15;
                }
                AddStringToBuffer(&gTextSpeedTextBoxes[1], gTextSpeedTexts[1]);
                break;

            case 2:
                gTextSpeedTextBoxes[2].xPosition = 120;
                gTextSpeedTextBoxes[2].yPosition = 36;
                gTextSpeedTextBoxes[2].stringOffset = 0;
                if (GetCurrentMenuEntry() == 0) {
                    gTextSpeedTextBoxes[2].palette = 10;
                } else {
                    gTextSpeedTextBoxes[2].palette = 15;
                }
                AddStringToBuffer(&gTextSpeedTextBoxes[2], gTextSpeedTexts[2]);
                break;

            default:
                ASSERT(0);
                break;
        }

        bgmVolumeTextBox.xPosition = 120;
        bgmVolumeTextBox.yPosition = 56;
        bgmVolumeTextBox.stringOffset = 0;
        if (GetCurrentMenuEntry() == 1) {
            bgmVolumeTextBox.palette = 10;
        } else {
            bgmVolumeTextBox.palette = 15;
        }
        AddStringToBuffer(&bgmVolumeTextBox, bgmText);

        sfxVolumeTextBox.xPosition = 120;
        sfxVolumeTextBox.yPosition = 76;
        sfxVolumeTextBox.stringOffset = 0;
        if (GetCurrentMenuEntry() == 2) {
            sfxVolumeTextBox.palette = 10;
        } else {
            sfxVolumeTextBox.palette = 15;
        }
        AddStringToBuffer(&sfxVolumeTextBox, sfxText);

        FlushMenuToTextBuffer();
        RenderText();
        RenderMenuSprites();
        render_controls();
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

_broken:
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
}

/**
 * Renders D-pad and A button sprites. They are always disabled so never seen.
 */
static void render_controls() {
    int i;

    for (i = 0; i < 3; i++) {
        if (dword_203F4F0[i]) {
            RenderSprite(&gPauseMenuControlsSprites[i]);
        }
    }
}

void init_arcade_menu() {
    int i;

    if (gPlayerState == 101) {
        return;
    }

    audio_halt_all_fx();
    sub_8038FA0(gLoadedRoomLevel);
    sub_80409DC();

    gNKreditzTextBox.letterSpacing = -2;
    gNKreditzTextBox.field_12 = 0;
    gNKreditzTextBox.field_A = 1;
    gNKreditzTextBox.size = 240;
    gNKreditzTextBox.palette = 1;
    gNKreditzTextBox.stringOffset = 0;
    gNKreditzTextBox.field_11 = 6;
    gNKreditzTextBox.font = &font_80B01A8[2];

    gArcadeTextBox.letterSpacing = -2;
    gArcadeTextBox.field_12 = 0;
    gArcadeTextBox.field_A = 1;
    gArcadeTextBox.size = 240;
    gArcadeTextBox.palette = 1;
    gArcadeTextBox.stringOffset = 0;
    gArcadeTextBox.field_11 = 6;
    gArcadeTextBox.font = &font_80B01A8[2];

    switch (gPauseMenuLanguage) {
        case 0:
            gNKreditzText = str_806579C;
            gArcadeText = str_80657A8;
            break;

        case 1:
            gNKreditzText = str_806579C;
            gArcadeText = str_80657A8;
            break;

        case 2:
            gNKreditzText = str_806579C;
            gArcadeText = str_80657A8;
            break;

        case 3:
            gNKreditzText = str_806579C;
            gArcadeText = str_80657A8;
            break;

        case 4:
            gNKreditzText = str_806579C;
            gArcadeText = str_80657A8;
            break;

        default:
            ASSERT(0);
            break;
    }

    gNKreditzTextOffset = sub_8025870(gNKreditzText, &gNKreditzTextBox);
    gArcadeTextOffset = sub_8025870(gArcadeText, &gArcadeTextBox);

    SetTextSpriteCount(0);
    DmaFill32(170, gOAMBuffer1, 256);
    gOAMBufferFramePtr = gOAMBuffer1;
    gOAMBufferEnd = &gOAMBuffer1[0x100];
    gOBJTileFramePtr = (u32*)OBJ_VRAM0;
    gOBJTileCount = 0;
    SyncVblank();
    UpdateVideo();
    SkipVblank();
    sub_80270AC(4095, 1);

    if (gCanChangeBgm) {
        audio_start_tune(15);
    }

    DisableBackgrounds();
    DmaFill32(0, BG_PLTT, 128);
    DmaTransfer32(&unk_83FD254, OBJ_PLTT, 128);
    DmaTransferObjPalette(&unk_83FD974, 5, 5);

    InitMenu(MENU_ARCADE_1, gPauseMenuLanguage);
    gMenuId = MENU_ARCADE_1;
    gMenuParentId = -1;

    SetObjectsFullAlpha();

    gArcadeFadeIn = TRUE;
    sub_8026E48(4095, 1, 1);
    sub_8016688();
    byte_2000F56 = 1;
    gKeysDown = 0;
    sub_08040204(55, byte_203E16C);
    sub_08041FA4(55);

    dword_203F4F4 = Alloc(sizeof(struct Sprite) * 3, 25, 4);
    dword_203F4F8 = Alloc(3, 25, 4);

    for (i = 0; i < 3; i++) {
        dword_203F4F8[i] = 0;
    }

    SetSprite(&dword_203F4F4[1], 0x486, 0, 0, 0, 0xD6, 0x90, 2); // A button
    SetSprite(&dword_203F4F4[2], 0x487, 0, 0, 0, 0x1A, 0x90, 2); // D-pad
}

void sub_8047000(bool32 a1) {
    audio_halt_all_fx();

    SetTextSpriteCount(0);
    DmaFill32(170, gOAMBuffer1, 256);
    gOAMBufferFramePtr = gOAMBuffer1;
    gOAMBufferEnd = &gOAMBuffer1[0x100];
    gOBJTileFramePtr = (u32*)OBJ_VRAM0;
    gOBJTileCount = 0;
    SyncVblank();
    UpdateVideo();
    SkipVblank();

    DmaFill32(0, BG_PLTT, 128);
    DmaTransfer32(&unk_83FD254, OBJ_PLTT, 128);
    DmaTransferObjPalette(&unk_83FD974, 5, 5);

    InitMenu(MENU_ARCADE_1, gPauseMenuLanguage);
    gMenuId = MENU_ARCADE_1;
    gMenuParentId = -1;

    if (a1) {
        sub_8026F78(4095, 1, 0);
    } else {
        sub_8026E48(4095, 1, 1);
    }

    SetObjectsFullAlpha();

    gArcadeFadeIn = TRUE;
    sub_8016688();
    byte_2000F56 = 1;
    gKeysDown = 0;
    sub_08040204(55, byte_203E16C);
    sub_08041FA4(55);
}

void exec_arcade_menu() {
    if (gPlayerState != 101) {
        return;
    }

    if (byte_203F4E0) {
        return;
    }

    gNKreditzTextBox.xPosition = (240 - gNKreditzTextOffset) >> 1;
    gNKreditzTextBox.yPosition = 8;
    gNKreditzTextBox.stringOffset = 0;
    AddStringToBuffer(&gNKreditzTextBox, gNKreditzText);

    gArcadeTextBox.xPosition = (240 - gArcadeTextOffset) >> 1;
    gArcadeTextBox.yPosition = 24;
    gArcadeTextBox.stringOffset = 0;
    AddStringToBuffer(&gArcadeTextBox, gArcadeText);

    FlushMenuToTextBuffer();

    if (gKeysDown & A_BUTTON) {
        u32 isNot10 = gMenuId != MENU_ARCADE_1;
        int entry = GetCurrentMenuEntry();
        if (entry == 4) {
            if (gMenuId == MENU_ARCADE_1) {
                InitMenu(MENU_ARCADE_2, gPauseMenuLanguage);
                gMenuId = MENU_ARCADE_2;
            } else {
                InitMenu(MENU_ARCADE_1, gPauseMenuLanguage);
                gMenuId = MENU_ARCADE_1;
            }
        } else {
            int idx = 4 * isNot10 + entry;
            if (byte_203E16C >= dword_80CF3B0[idx]) {
                dword_203F4E4 = 27;
                dword_203F4E8 = 25;
                SetTextSpriteCount(0);
                DmaFill32(170, gOAMBuffer1, 256);
                gOAMBufferFramePtr = gOAMBuffer1;
                gOAMBufferEnd = &gOAMBuffer1[0x100];
                gOBJTileFramePtr = (u32*)OBJ_VRAM0;
                gOBJTileCount = 0;
                SyncVblank();
                UpdateVideo();
                SkipVblank();
                sub_0800D1A8(dword_80CF390[idx]);
            }
        }
    } else if (gKeysDown & B_BUTTON) {
        if (gMenuId == MENU_ARCADE_2) {
            InitMenu(MENU_ARCADE_1, gPauseMenuLanguage);
            gMenuId = MENU_ARCADE_1;
        } else {
            sub_80270AC(4095, 1);

            if (gCanChangeBgm) {
                audio_start_tune(gLoadedRoomBgm);
            }

            DmaTransfer32(gRoomHeader.spritePalette, 0x5000200, 128);
            DmaTransfer32(gRoomHeader.backgroundPalette, 0x5000000, 128);
            sub_0804200C(55);
            sub_80409DC();
            FreeById(4, 25);
            ResetMenu();
            ASSERT(DoesMemBlockExistById(4, 25) == FALSE);
            sub_8026E48(4095, 1, 1);
            sub_8016C78(0);
            byte_2000F56 = 0;
        }
    } else if (gKeysDown & DPAD_UP) {
        if (gCanPlaySfx) {
            audio_new_fx(dSoundEffects[204].index, dSoundEffects[204].volumes[gSfxVolume],
                         dSoundEffects[204].pitch + 0x10000);
        }
        AdvanceMenuEntryUp();
    } else if (gKeysDown & DPAD_DOWN) {
        if (gCanPlaySfx) {
            audio_new_fx(dSoundEffects[204].index, dSoundEffects[204].volumes[gSfxVolume],
                         dSoundEffects[204].pitch + 0x10000);
        }
        AdvanceMenuEntryDown();
    }
}

void draw_arcade_menu() {
    if (gPlayerState != 101) {
        return;
    }

    if (byte_203F4E0) {
        return;
    }

    RenderMenuSprites();
    draw_arcade_menu_sprites();

    if (gArcadeFadeIn) {
        sub_08026BA8(2, 0);
        gArcadeFadeIn = FALSE;
    }
}

static void draw_arcade_menu_sprites() {
    int i;

    for (i = 0; i < 3; i++) {
        if (dword_203F4F8[i]) {
            RenderSprite(&dword_203F4F4[i]);
        }
    }
}
