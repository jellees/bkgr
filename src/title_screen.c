#include "global.h"
#include "common.h"
#include "sprite.h"
#include "menu.h"
#include "ingame_menu.h"
#include "save.h"
#include "main.h"
#include "room.h"
#include "audio_b.h"
#include "heap.h"
#include "script.h"
#include "hud.h"

struct CreditsLine {
    bool8 active;
    u8 width;
    fx32 delay;
    fx32 timer;
    fx32 y;
    char* text;
    struct TextBox textBox;
};

extern struct CreditsLine* dword_20021FC;
extern int dword_2002200;
extern struct CreditsLine gCreditsCongratsLine;
extern fx32 gCreditsScrollSpeed;
extern char* dCreditsTexts[];
extern char str_0806844C[];
extern char str_08068480[];
extern char str_080684AC[];
extern char str_080684E0[];
extern char str_0806850C[];

static void ShowSelectGame(int);
static bool32 sub_8024200(void);
static int ShowPressStart(void);
static int sub_80246C8(void);
static void ShowLanguageSelect(void);
static void ShowFlashscreens(void);

static void title_screen_init_display(void) {
    byte_20021F0 = 0;
    dword_20021F4 = 0x10000;
    REG_DISPCNT = DISPCNT_OBJ_ON | DISPCNT_BG2_ON | DISPCNT_OBJ_1D_MAP | DISPCNT_MODE_4;
    REG_BG2CNT = 0;
    DmaFill32(0, (void*)VRAM, 0x5000);
    DmaFill32(0, (void*)PLTT, 128);
    DmaTransfer32(byte_83FD254, (void*)OBJ_PLTT, 128);
}

void title_screen_run(void) {
    byte_2000335 = 0;
    byte_20021F9 = 0;
    dword_203F4DC = 0;

    if (!load_save_header()) {
        gLanguage = 0;
        byte_2000335 = 1;
        byte_20021F9 = 1;
        byte_20021F8 = 0;
        reset_save_files();
        setup_save_file_strings();
    } else {
        init_save_files();
        setup_save_file_strings();
        byte_20021F8 = 1;

        if ((gSaveFiles[0].empty && gSaveFiles[1].empty && gSaveFiles[2].empty) || byte_2000335) {
            byte_20021F9 = 1;
            byte_20021F8 = 0;
        }
    }

    title_screen_init_display();
    reset_volume();
    ShowFlashscreens();
    ShowSelectGame(ShowPressStart());
    SetTextSpriteCount(0);

    if (!byte_20021F9) {
        sub_80270AC(4095, 1);
    }

    heap_free_by_tag(HEAP_GENERAL, 15);
    menu_reset();

    ASSERT(heap_has_tag(HEAP_GENERAL, 15) == FALSE);
}

static void ShowSelectGame(int a1) {
    int v2;
    bool32 v3;

    DmaFill32(170, gOAMBuffer1, 256);
    gOAMBufferFramePtr = gOAMBuffer1;
    gOAMBufferEnd = &gOAMBuffer1[0x100];
    gOBJTileFramePtr = (u32*)OBJ_VRAM0;
    gOBJTileCount = 0;

    menu_load(MENU_GAME_OR_CONTINUE, gLanguage);
    gMenuId = MENU_GAME_OR_CONTINUE;
    gMenuParentId = -1;

    if (!byte_20021F9) {
        menu_cursor_down();
    }

    SyncVblank();
    update_video();
    SkipVblank();
    SetObjectsFullAlpha();

    if (a1) {
        REG_BLDCNT = BLDCNT_TGT2_ALL | BLDCNT_EFFECT_BLEND | BLDCNT_TGT1_OBJ | BLDCNT_TGT1_BG1;
        REG_BG1CNT &= BGCNT_MASK_NO_PRIORITY;
        v2 = 2;
    } else {
        v2 = 0;
    }

    v3 = TRUE;

    while (1) {
        ReadKeys(&gKeysPressed, &gKeysDown, &gPreviousKeys);

        if (gKeysDown & B_BUTTON) {
            if (gMenuParentId != 0xFF) {
                u8 id, id2;
                gMenuId = gMenuParentId;
                id = gMenuId;

                if (id == MENU_GAME_OR_CONTINUE) {
                    gMenuParentId = -1;
                } else {
                    ASSERT(0);
                }

                id2 = gMenuId;
                menu_load(id2, gLanguage);
            }
        } else if (gKeysDown & A_BUTTON || gKeysDown & START_BUTTON) {
            if (sub_8024200()) {
                break;
            }
            SetTextSpriteCount(0);
            DmaFill32(170, gOAMBuffer1, 256);
            gOAMBufferFramePtr = gOAMBuffer1;
            gOAMBufferEnd = &gOAMBuffer1[0x100];
            gOBJTileFramePtr = (u32*)OBJ_VRAM0;
            gOBJTileCount = 0;
            SyncVblank();
            update_video();
            SkipVblank();
            SetObjectsFullAlpha();
            REG_BLDCNT = BLDCNT_TGT2_ALL | BLDCNT_EFFECT_BLEND | BLDCNT_TGT1_OBJ | BLDCNT_TGT1_BG1;
            REG_BG1CNT &= BGCNT_MASK_NO_PRIORITY;
            v2 = 2;
            v3 = TRUE;
        }

        if (!(gKeysDown & JOY_EXCL_DPAD)) {
            if (gKeysDown & DPAD_UP) {
                if (!byte_20021F9) {
                    PLAY_SFX(204);
                    menu_cursor_up();
                }
            } else if (gKeysDown & DPAD_DOWN && !byte_20021F9) {
                PLAY_SFX(204);
                menu_cursor_down();
            }
        }

        update_scripts();
        SetTextSpriteCount(0);
        DmaFill32(170, gOAMBuffer1, 256);
        gOAMBufferFramePtr = gOAMBuffer1;
        gOAMBufferEnd = &gOAMBuffer1[0x100];
        gOBJTileFramePtr = (u32*)OBJ_VRAM0;
        gOBJTileCount = 0;
        menu_render_text();
        RenderText();
        menu_render_sprites();
        CheckStacks();
        SyncVblank();
        update_video();
        SkipVblank();

        if (v3 == FALSE) {
            continue;
        }

        sub_08026BA8(2, v2);
        v3 = FALSE;
    }

    SyncVblank();
    SkipVblank();
}

static bool32 sub_8024200(void) {
    switch (gMenuId) {
        case MENU_GAME_OR_CONTINUE:
            switch (menu_get_cursor()) {
                case 0:
                    FadeOutObjects(2, 2);
                    REG_BG1CNT |= 3;
                    sub_80254E0();
                    sub_8026D84();
                    end_all_scripts(2);
                    SetTextSpriteCount(0);
                    byte_20021F9 = 1;
                    return 1;

                case 1:
                    FadeOutObjects(2, 2);
                    REG_BG1CNT |= 3;
                    if (sub_80246C8()) {
                        return 1;
                    }
                    menu_load(MENU_GAME_OR_CONTINUE, gLanguage);
                    gMenuId = MENU_GAME_OR_CONTINUE;
                    gMenuParentId = -1;
                    menu_cursor_down();
                    break;
            }

            return FALSE;

        case MENU_FILE_SELECT:
            switch (menu_get_cursor()) {
                case 0:
                    if (byte_20021F9) {
                        break;
                    }
                    gContinueGame = load_game(0);
                    if (gContinueGame) {
                        sub_8038A34();
                        reset_hud_elements();
                        dword_203F4DC = 0;
                    } else {
                        ASSERT(0);
                    }
                    return TRUE;

                case 1:
                    if (byte_20021F9) {
                        break;
                    }
                    gContinueGame = load_game(1);
                    if (gContinueGame) {
                        sub_8038A34();
                        reset_hud_elements();
                        dword_203F4DC = 1;
                    } else {
                        ASSERT(0);
                    }
                    return TRUE;

                case 2:
                    if (byte_20021F9) {
                        break;
                    }
                    gContinueGame = load_game(2);
                    if (gContinueGame) {
                        sub_8038A34();
                        reset_hud_elements();
                        dword_203F4DC = 2;
                    } else {
                        ASSERT(0);
                    }
                    return TRUE;

                default:
                    return FALSE;
            }
            return TRUE;

        case MENU_LANGUAGE:
            switch (menu_get_cursor()) {
                case 0:
                    gLanguage = 0;
                    return TRUE;

                case 1:
                    gLanguage = 1;
                    return TRUE;

                case 2:
                    gLanguage = 2;
                    return TRUE;

                case 3:
                    gLanguage = 3;
                    return TRUE;

                case 4:
                    gLanguage = 4;
                    return TRUE;

                default:
                    return FALSE;
            }

        default:
            return FALSE;
    }
}

static int ShowPressStart(void) {
    s32 v3;
    bool32 v4;
    struct TextBox v2;
    struct TextBox v1;
    char s1[27], s2[21], s3[21];
    char* string;

    setup_display();
    REG_BG2X_L = 0;
    REG_BG2Y_L = 0;
    REG_BG2PB = 0;
    REG_BG2PC = 0;
    REG_BG2PA = 256;
    REG_BG2PD = 256;
    SetupRoom(ROOM_FRONTEND, 0, TRUE, 0);
    sub_8013A10(word_200145C, word_200145E, gBGInitOffsetHorizontal, gBGInitOffsetVertical, 21, 32);

    EnableBGAlphaBlending();
    REG_BG1CNT &= 0xFFFC;
    sub_8026D20(0x800, 0x7000, 0x20, 0x100);
    sub_8026E48(0xFFF, 0, 0);
    start_script(10);

    v1.font = &font_80B01A8[0];
    v1.size = 240;
    v1.field_A = 1;
    v1.palette = 10;
    v1.letterSpacing = 1;
    v1.field_11 = 6;
    v1.field_12 = 0;
    v1.field_13 = 0;

    s1[0] = '\xa9'; // ©
    s1[1] = ' ';
    s1[2] = '&';
    s1[3] = ' ';
    s1[4] = '(';
    s1[5] = 'P';
    s1[6] = ')';
    s1[7] = ' ';
    s1[8] = '2';
    s1[9] = '0';
    s1[10] = '0';
    s1[11] = '3';
    s1[12] = ' ';
    s1[13] = 'R';
    s1[14] = 'A';
    s1[15] = 'R';
    s1[16] = 'E';
    s1[17] = ' ';
    s1[18] = 'L';
    s1[19] = 'I';
    s1[20] = 'M';
    s1[21] = 'I';
    s1[22] = 'T';
    s1[23] = 'E';
    s1[24] = 'D';
    s1[25] = '.';
    s1[26] = STRING_TERMINATOR;

    s2[0] = 'A';
    s2[1] = 'L';
    s2[2] = 'L';
    s2[3] = ' ';
    s2[4] = 'R';
    s2[5] = 'I';
    s2[6] = 'G';
    s2[7] = 'H';
    s2[8] = 'T';
    s2[9] = 'S';
    s2[10] = ' ';
    s2[11] = 'R';
    s2[12] = 'E';
    s2[13] = 'S';
    s2[14] = 'E';
    s2[15] = 'R';
    s2[16] = 'V';
    s2[17] = 'E';
    s2[18] = 'D';
    s2[19] = '.';
    s2[20] = STRING_TERMINATOR;

    s3[0] = 'L';
    s3[1] = 'I';
    s3[2] = 'C';
    s3[3] = 'E';
    s3[4] = 'N';
    s3[5] = 'S';
    s3[6] = 'E';
    s3[7] = 'D';
    s3[8] = ' ';
    s3[9] = 'B';
    s3[10] = 'Y';
    s3[11] = ' ';
    s3[12] = 'N';
    s3[13] = 'I';
    s3[14] = 'N';
    s3[15] = 'T';
    s3[16] = 'E';
    s3[17] = 'N';
    s3[18] = 'D';
    s3[19] = 'O';
    s3[20] = STRING_TERMINATOR;

    v2.letterSpacing = 254;
    v2.field_12 = 0;
    v2.field_A = 2;
    v2.size = 240;
    v2.palette = 1;
    v2.stringOffset = 0;
    v2.field_11 = 6;
    v2.font = &font_80B01A8[2];

    string = (u8*)0x08065210;
    v3 = sub_8025870(string, &v2);
    v4 = FALSE;

    while (1) {
        ReadKeys(&gKeysPressed, &gKeysDown, &gPreviousKeys);

        if (gKeysDown & START_BUTTON || gKeysDown & A_BUTTON) {
            if (gLanguage == 0xFF) {
                FadeOutObjects(2, 2);
                REG_BG1CNT |= BGCNT_PRIORITY(3);
                SetTextSpriteCount(0);
                ShowLanguageSelect();
                v4 = TRUE;
            } else {
                FadeOutObjects(2, 0);
                SetTextSpriteCount(0);
            }
            break;
        }

        update_scripts();
        SetTextSpriteCount(0);
        DmaFill32(170, gOAMBuffer1, 256);
        gOAMBufferFramePtr = gOAMBuffer1;
        gOAMBufferEnd = &gOAMBuffer1[0x100];
        gOBJTileFramePtr = (void*)OBJ_VRAM0;
        gOBJTileCount = 0;
        v2.xPosition = (240 - v3) >> 1;
        v2.yPosition = 128;
        v2.stringOffset = 0;
        AddStringToBuffer(&v2, string);
        RenderText();
        CheckStacks();
        SyncVblank();
        update_video();
        SkipVblank();
    }

    SyncVblank();
    SkipVblank();
    return v4;
}

static int sub_80246C8(void) {
    u8* text;
    struct TextBox textbox;
    s32 v3;
    bool32 v4;

    textbox.letterSpacing = 0xFE;
    textbox.field_12 = 0;
    textbox.field_A = 1;
    textbox.size = 240;
    textbox.palette = 1;
    textbox.stringOffset = 0;
    textbox.field_11 = 6;
    textbox.font = &font_80B01A8[2];

    text = NULL;

    switch (gLanguage) {
        case 0:
            text = (u8*)0x8068048;
            break;

        case 1:
            text = (u8*)0x80680D4;
            break;

        case 3:
            text = (u8*)0x806817C;
            break;

        case 2:
            text = (u8*)0x8068238;
            break;

        case 4:
            text = (u8*)0x80682D0;
            break;
    }

    v3 = sub_8025870(text, &textbox);

    menu_load(MENU_FILE_SELECT, gLanguage);
    gMenuParentId = gMenuId;
    gMenuId = MENU_FILE_SELECT;

    if (!gSaveFiles[0].empty) {
        menu_set_cursor(0);
    } else if (!gSaveFiles[1].empty) {
        menu_set_cursor(1);
    } else if (!gSaveFiles[2].empty) {
        menu_set_cursor(2);
    } else {
        ASSERT(0);
    }

    SetTextSpriteCount(0);

    DmaFill32(170, gOAMBuffer1, 256);
    gOAMBufferFramePtr = gOAMBuffer1;
    gOAMBufferEnd = &gOAMBuffer1[0x100];
    gOBJTileFramePtr = (void*)OBJ_VRAM0;
    gOBJTileCount = 0;
    SetObjectsFullAlpha();

    v4 = TRUE;

    SyncVblank();
    SkipVblank();

    while (1) {
        ReadKeys(&gKeysPressed, &gKeysDown, &gPreviousKeys);

        if (gKeysDown & A_BUTTON || gKeysDown & START_BUTTON) {
            if (sub_8024200()) {
                sub_80270AC(0xFFF, 0);
                end_all_scripts(2);
                SetTextSpriteCount(0);
                return 1;
            }
        } else if (gKeysDown & B_BUTTON) {
            FadeOutObjects(2, 0);
            SetTextSpriteCount(0);
            return 0;
        }

        if (!(gKeysDown & JOY_EXCL_DPAD)) {
            if (gKeysDown & DPAD_UP) {
                PLAY_SFX(204);

                do {
                    menu_cursor_up();
                } while (gSaveFiles[menu_get_cursor()].empty);
            } else if (gKeysDown & DPAD_DOWN) {
                PLAY_SFX(204);

                do {
                    menu_cursor_down();
                } while (gSaveFiles[menu_get_cursor()].empty);
            }
        }

        update_scripts();
        SetTextSpriteCount(0);
        DmaFill32(170, gOAMBuffer1, 256);
        gOAMBufferFramePtr = gOAMBuffer1;
        gOAMBufferEnd = &gOAMBuffer1[0x100];
        gOBJTileFramePtr = (void*)OBJ_VRAM0;
        gOBJTileCount = 0;
        textbox.xPosition = (240 - v3) >> 1;
        textbox.yPosition = 8;
        textbox.stringOffset = 0;
        AddStringToBuffer(&textbox, text);
        menu_render_text();
        RenderText();
        menu_render_sprites();
        CheckStacks();
        SyncVblank();
        update_video();
        SkipVblank();

        if (v4) {
            sub_08026BA8(2, 0);
            v4 = FALSE;
        }
    }
}

static void ShowLanguageSelect(void) {
    bool32 v0;

    menu_load(MENU_LANGUAGE, 0);
    gMenuId = MENU_LANGUAGE;
    gMenuParentId = -1;

    SetTextSpriteCount(0);
    DmaFill32(170, gOAMBuffer1, 256);
    gOAMBufferFramePtr = gOAMBuffer1;
    gOAMBufferEnd = &gOAMBuffer1[0x100];
    gOBJTileFramePtr = (void*)OBJ_VRAM0;
    gOBJTileCount = 0;
    SetObjectsFullAlpha();

    v0 = TRUE;

    SyncVblank();
    SkipVblank();

    while (1) {
        ReadKeys(&gKeysPressed, &gKeysDown, &gPreviousKeys);

        if (gKeysDown & A_BUTTON || gKeysDown & START_BUTTON) {
            if (sub_8024200()) {
                break;
            }
        }

        if (!(gKeysDown & JOY_EXCL_DPAD)) {
            if (gKeysDown & DPAD_UP) {
                PLAY_SFX(204);

                menu_cursor_up();
            } else if (gKeysDown & DPAD_DOWN) {
                PLAY_SFX(204);

                menu_cursor_down();
            }
        }

        SetTextSpriteCount(0);
        DmaFill32(170, gOAMBuffer1, 256);
        gOAMBufferFramePtr = gOAMBuffer1;
        gOAMBufferEnd = &gOAMBuffer1[0x100];
        gOBJTileFramePtr = (void*)OBJ_VRAM0;
        gOBJTileCount = 0;
        menu_render_text();
        RenderText();
        CheckStacks();
        SyncVblank();
        update_video();
        SkipVblank();

        if (v0) {
            sub_08026BA8(2, 0);
            v0 = FALSE;
        }
    }

    FadeOutObjects(2, 0);
    SetTextSpriteCount(0);
    SyncVblank();
    SkipVblank();
}

void ShowEraseData(void) {
    s32 action;
    s32 v1;
    bool32 renderMenu;
    struct TextBox tb1;
    struct TextBox tb2;
    bool32 allowInput;
    bool32 erase;

    REG_BG2X_L = 0;
    REG_BG2Y_L = 0;
    REG_BG2PB = 0;
    REG_BG2PC = 0;
    REG_BG2PA = 256;
    REG_BG2PD = 256;
    title_screen_init_display();

    tb1.letterSpacing = 1;
    tb1.field_12 = 0;
    tb1.field_A = 5;
    tb1.size = 240;
    tb1.palette = 10;
    tb1.stringOffset = 0;
    tb1.field_11 = 6;
    tb1.font = &font_80B01A8[1];

    tb2.letterSpacing = 1;
    tb2.field_12 = 0;
    tb2.field_A = 5;
    tb2.size = 208;
    tb2.palette = 10;
    tb2.stringOffset = 0;
    tb2.field_11 = 6;
    tb2.font = &font_80B01A8[1];

    menu_load(MENU_YES_NO_ENGLISH, 0);
    gMenuId = MENU_YES_NO_ENGLISH;
    gMenuParentId = -1;

    action = -1;
    allowInput = TRUE;
    v1 = -1;
    erase = FALSE;
    renderMenu = TRUE;

    while (1) {
        if (allowInput) {
            ReadKeys(&gKeysPressed, &gKeysDown, &gPreviousKeys);

            if (gKeysDown & A_BUTTON) {
                switch (menu_get_cursor()) {
                    case 0:
                        allowInput = FALSE;
                        action = 1;
                        erase = TRUE;
                        renderMenu = FALSE;
                        break;

                    case 1:
                        allowInput = FALSE;
                        action = 3;
                        v1 = 180;
                        renderMenu = FALSE;
                }
            }

            if (!(gKeysDown & JOY_EXCL_DPAD)) {
                if (gKeysDown & DPAD_UP) {
                    PLAY_SFX(204);
                    menu_cursor_up();
                } else if (gKeysDown & DPAD_DOWN) {
                    PLAY_SFX(204);
                    menu_cursor_down();
                }
            }
        }

        SetTextSpriteCount(0);
        DmaFill32(170, gOAMBuffer1, 256);
        gOAMBufferFramePtr = gOAMBuffer1;
        gOAMBufferEnd = &gOAMBuffer1[0x100];
        gOBJTileFramePtr = (void*)OBJ_VRAM1;
        gOBJTileCount = 512;

        tb1.xPosition = 16;
        tb1.yPosition = 16;
        tb1.stringOffset = 0;
        AddStringToBuffer(&tb1, char_080652AC);

        switch (action) {
            case 1:
                tb2.xPosition = 16;
                tb2.yPosition = 70;
                tb2.stringOffset = 0;
                AddStringToBuffer(&tb2, char_080652C4);
                break;

            case 2:
                tb2.xPosition = 16;
                tb2.yPosition = 70;
                tb2.stringOffset = 0;
                AddStringToBuffer(&tb2, char_080652F0);
                break;

            case 3:
                tb2.xPosition = 16;
                tb2.yPosition = 70;
                tb2.stringOffset = 0;
                AddStringToBuffer(&tb2, char_08065304);
        }

        if (renderMenu) {
            menu_render_text();
        }

        RenderText();
        CheckStacks();
        SyncVblank();
        update_video();
        SkipVblank();

        if (erase) {
            erase_all_save_data();
            v1 = 180;
            action = 2;
            erase = FALSE;
        }

        if (v1 != -1) {
            if (v1 == 0) {
                sub_800A594();
            } else {
                --v1;
            }
        }
    }
}

static void ShowFlashscreens(void) {
    s32 minTime;
    s32 maxTime;
    bool32 canSkip;

    sub_80270AC(4095, 0);
    DmaTransfer32(unk_83FD454, (void*)OBJ_PLTT, 128);
    sub_8026E48(4095, 0, 0);

    dword_200032C = heap_alloc(0x460u, 11, HEAP_GENERAL);
    DmaFill32(0, dword_200032C, 280);

    byte_2000331 = 0;
    byte_2000330 = 0;
    byte_2000332 = 0;
    byte_2000333 = 10;
    byte_2000334 = 0;

    start_script(7);

    minTime = 388;
    maxTime = 670;
    canSkip = FALSE;

    while (gIsAnyScriptActive) {
        ReadKeys(&gKeysPressed, &gKeysDown, &gPreviousKeys);

        if (canSkip && gKeysDown & START_BUTTON) {
            audio_halt_all_fx();
            end_all_scripts(2);
            start_script(8);
            canSkip = FALSE;
        }

        if (minTime == 0) {
            canSkip = TRUE;
            minTime = -1;
        } else if (minTime > 0) {
            minTime--;
        }

        if (maxTime == 0) {
            canSkip = FALSE;
        } else {
            maxTime--;
        }

        if (gIsPaletteEffectsActive) {
            sub_8026DC0();
        }

        SetTextSpriteCount(0);
        DmaFill32(170, gOAMBuffer1, 256);
        gOAMBufferFramePtr = gOAMBuffer1;
        gOAMBufferEnd = &gOAMBuffer1[0x100];
        gOBJTileFramePtr = (void*)OBJ_VRAM1;
        gOBJTileCount = 512;

        update_scripts();
        render_scripts_direct();
        CheckStacks();
        SyncVblank();
        update_video();
        SkipVblank();
    }

    sub_80270AC(4095, 0);
    SetTextSpriteCount(0);
}

// https://decomp.me/scratch/gsXI5
#ifndef NONMATCHING
NAKED void sub_8025000(void) {
    asm_unified(".include \"asm/nonmatching/sub_8025000.s\"");
}
#else
void sub_8025000(void) {
    int done;
    int count;
    int i;
    int j;
    char* text;
    int delay;

    if (byte_20021F0) {
        return;
    }

    done = FALSE;
    count = 0;
    i = 0;

    do {
        text = dCreditsTexts[i];

        switch (*text) {
            case 0xFF:
                done = TRUE;
                break;

            case 0xFE:
            case 0xFB:
                i++;
                break;

            default:
                i++;
                count++;
                break;
        }
    } while (!done);

    dword_2002200 = count;
    dword_20021FC = heap_alloc(count * sizeof(struct CreditsLine), 17, HEAP_GENERAL);

    j = 0;

    for (i = 0; i < dword_2002200; i++) {
        text = dCreditsTexts[j];
        delay = 36;

        if (*text == 0xFB) {
            j++;
            text = dCreditsTexts[j];
            dword_20021FC[i].textBox.letterSpacing = -2;
            dword_20021FC[i].textBox.field_12 = 0;
            dword_20021FC[i].textBox.field_A = 1;
            dword_20021FC[i].textBox.size = 240;
            dword_20021FC[i].textBox.palette = 1;
            dword_20021FC[i].textBox.stringOffset = 0;
            dword_20021FC[i].textBox.field_11 = 6;
            dword_20021FC[i].textBox.font = &font_80B01A8[2];
        } else {
            if (*text == 0xFE) {
                j++;
                text = dCreditsTexts[j];
                delay = 70;
            }

            dword_20021FC[i].textBox.letterSpacing = 1;
            dword_20021FC[i].textBox.field_12 = 0;
            dword_20021FC[i].textBox.field_A = 1;
            dword_20021FC[i].textBox.size = 240;
            dword_20021FC[i].textBox.palette = 10;
            dword_20021FC[i].textBox.stringOffset = 0;
            dword_20021FC[i].textBox.field_11 = 6;
            dword_20021FC[i].textBox.font = &font_80B01A8[1];
        }

        dword_20021FC[i].active = TRUE;
        dword_20021FC[i].text = text;
        dword_20021FC[i].timer = 0;
        dword_20021FC[i].delay = delay << 16;
        dword_20021FC[i].width = sub_8025870(text, &dword_20021FC[i].textBox);
        dword_20021FC[i].textBox.xPosition = (240 - dword_20021FC[i].width) >> 1;
        dword_20021FC[i].textBox.yPosition = 170;
        dword_20021FC[i].y = 170 << 16;
        j++;
    }

    gCreditsScrollSpeed = 0x6000;

    gCreditsCongratsLine.textBox.letterSpacing = -2;
    gCreditsCongratsLine.textBox.field_12 = 0;
    gCreditsCongratsLine.textBox.field_A = 1;
    gCreditsCongratsLine.textBox.size = 240;
    gCreditsCongratsLine.textBox.palette = 1;
    gCreditsCongratsLine.textBox.stringOffset = 0;
    gCreditsCongratsLine.textBox.field_11 = 6;
    gCreditsCongratsLine.textBox.font = &font_80B01A8[2];
    gCreditsCongratsLine.active = TRUE;

    switch (gLanguage) {
        case 0:
            gCreditsCongratsLine.text = str_0806844C;
            break;

        case 1:
            gCreditsCongratsLine.text = str_08068480;
            break;

        case 3:
            gCreditsCongratsLine.text = str_080684AC;
            break;

        case 2:
            gCreditsCongratsLine.text = str_080684E0;
            break;

        case 4:
            gCreditsCongratsLine.text = str_0806850C;
            break;
    }

    gCreditsCongratsLine.timer = 0;
    gCreditsCongratsLine.delay = 0;
    gCreditsCongratsLine.width = sub_8025870(gCreditsCongratsLine.text, &gCreditsCongratsLine.textBox);
    gCreditsCongratsLine.textBox.xPosition = (240 - gCreditsCongratsLine.width) >> 1;
    gCreditsCongratsLine.textBox.yPosition = 170;
    gCreditsCongratsLine.y = 170 << 16;

    byte_20021F0 = TRUE;
    sub_080593D0(10, 0);

    if (gCanChangeBgm) {
        audio_start_tune(15);
    }

    sub_8026E48(4095, 1, 1);
}
#endif
