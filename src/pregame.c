#include "global.h"
#include "common.h"
#include "sprite.h"
#include "menu.h"
#include "pause_menu.h"
#include "save.h"
#include "main.h"
#include "room.h"
#include "audio_b.h"

extern void InitPregame();
extern void ShowFlashscreens();
extern int ShowPressStart();
void ShowSelectGame(int);
extern void SetTextSpriteCount(int);
extern void sub_80270AC(int, int);
extern void FreeById(int, int);
extern void ResetMenu();
extern u32 DoesMemBlockExistById(int, int);

extern void DmaFill32(int, void*, int);

void InitPregame() {
    byte_20021F0 = 0;
    dword_20021F4 = 0x10000;
    REG_DISPCNT = DISPCNT_OBJ_ON | DISPCNT_BG2_ON | DISPCNT_OBJ_1D_MAP | DISPCNT_MODE_4;
    REG_BG2CNT = 0;
    DmaFill32(0, VRAM, 0x5000);
    DmaFill32(0, PLTT, 128);
    DmaTransfer32((void*)0x83FD254, OBJ_PLTT, 128);
}

void ExecutePregame() {
    byte_2000335 = 0;
    byte_20021F9 = 0;
    dword_203F4DC = 0;

    if (!load_save_header()) {
        gPauseMenuLanguage = 0;
        byte_2000335 = 1;
        byte_20021F9 = 1;
        byte_20021F8 = 0;
        reset_save_files();
        setup_save_file_strings();
    } else {
        init_save_files();
        setup_save_file_strings();
        byte_20021F8 = 1;

        if (gSaveFiles[0].empty && gSaveFiles[1].empty && gSaveFiles[2].empty || byte_2000335) {
            byte_20021F9 = 1;
            byte_20021F8 = 0;
        }
    }

    InitPregame();
    reset_volume();
    ShowFlashscreens();
    ShowSelectGame(ShowPressStart());
    SetTextSpriteCount(0);

    if (!byte_20021F9) {
        sub_80270AC(4095, 1);
    }

    FreeById(4, 15);
    ResetMenu();

    ASSERT(DoesMemBlockExistById(4, 15) == FALSE);
}

void ShowSelectGame(int a1) {
    int v2;
    bool32 v3;

    DmaFill32(170, gOAMBuffer1, 256);
    gOAMBufferFramePtr = gOAMBuffer1;
    gOAMBufferEnd = &gOAMBuffer1[0x100];
    gOBJTileFramePtr = (u32*)OBJ_VRAM0;
    gOBJTileCount = 0;

    InitMenu(MENU_GAME_OR_CONTINUE, gPauseMenuLanguage);
    gMenuId = MENU_GAME_OR_CONTINUE;
    gMenuParentId = -1;

    if (!byte_20021F9) {
        AdvanceMenuEntryDown();
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
                    HANG;
                }

                id2 = gMenuId;
                InitMenu(id2, gPauseMenuLanguage);
            }
        } else if (gKeysDown & A_BUTTON || gKeysDown & START_BUTTON) {
            if (sub_8024200())
                break;
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
                    AdvanceMenuEntryUp();
                }
            } else if (gKeysDown & DPAD_DOWN && !byte_20021F9) {
                PLAY_SFX(204);
                AdvanceMenuEntryDown();
            }
        }

        update_scripts();
        SetTextSpriteCount(0);
        DmaFill32(170, gOAMBuffer1, 256);
        gOAMBufferFramePtr = gOAMBuffer1;
        gOAMBufferEnd = &gOAMBuffer1[0x100];
        gOBJTileFramePtr = (u32*)OBJ_VRAM0;
        gOBJTileCount = 0;
        FlushMenuToTextBuffer();
        RenderText();
        RenderMenuSprites();
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

int sub_8024200() {
    switch (gMenuId) {
        case MENU_GAME_OR_CONTINUE:
            switch (GetCurrentMenuEntry()) {
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
                    if (sub_80246C8())
                        return 1;
                    InitMenu(MENU_GAME_OR_CONTINUE, gPauseMenuLanguage);
                    gMenuId = MENU_GAME_OR_CONTINUE;
                    gMenuParentId = -1;
                    AdvanceMenuEntryDown();
                    break;
            }

            return 0;

        case MENU_FILE_SELECT:
            switch (GetCurrentMenuEntry()) {
                case 0:
                    if (byte_20021F9) {
                        break;
                    }
                    gContinueGame = load_game(0);
                    if (gContinueGame) {
                        sub_8038A34();
                        sub_803FE78();
                        dword_203F4DC = 0;
                    } else {
                        HANG;
                    }
                    return 1;

                case 1:
                    if (byte_20021F9) {
                        break;
                    }
                    gContinueGame = load_game(1);
                    if (gContinueGame) {
                        sub_8038A34();
                        sub_803FE78();
                        dword_203F4DC = 1;
                    } else {
                        HANG;
                    }
                    return 1;

                case 2:
                    if (byte_20021F9) {
                        break;
                    }
                    gContinueGame = load_game(2);
                    if (gContinueGame) {
                        sub_8038A34();
                        sub_803FE78();
                        dword_203F4DC = 2;
                    } else {
                        HANG;
                    }
                    return 1;

                default:
                    return 0;
            }
            return 1;

        case MENU_LANGUAGE:
            switch (GetCurrentMenuEntry()) {
                case 0:
                    gPauseMenuLanguage = 0;
                    return 1;

                case 1:
                    gPauseMenuLanguage = 1;
                    return 1;

                case 2:
                    gPauseMenuLanguage = 2;
                    return 1;

                case 3:
                    gPauseMenuLanguage = 3;
                    return 1;

                case 4:
                    gPauseMenuLanguage = 4;
                    return 1;

                default:
                    return 0;
            }

        default:
            return 0;
    }
}

int ShowPressStart() {
    s32 v3;
    bool32 v4;
    struct TextBox v2;
    struct TextBox v1;
    u8 s1[27], s2[21], s3[21];
    u8* string;

    setup_display();
    REG_BG2X_L = 0;
    REG_BG2Y_L = 0;
    REG_BG2PB = 0;
    REG_BG2PC = 0;
    REG_BG2PA = 256;
    REG_BG2PD = 256;
    SetupRoom(ROOM_FRONTEND, 0, 1, 0);
    sub_8013A10(word_200145C, word_200145E, gBGInitOffsetHorizontal, gBGInitOffsetVertical, 21, 32);

    EnableBGAlphaBlending();
    REG_BG1CNT &= 0xFFFC;
    sub_8026D20(0x800, 0x7000, 0x20, 0x100);
    sub_8026E48(0xFFF, 0, 0);
    start_script(10);

    v1.font = &font_80B01A8[0];
    v1.size = 0xF0;
    v1.field_A = 1;
    v1.palette = 0xA;
    v1.letterSpacing = 1;
    v1.field_11 = 6;
    v1.field_12 = 0;
    v1.field_13 = 0;

    s1[0] = '©';
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
    s1[26] = 0xFF;

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
    s2[20] = -1;

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
    s3[20] = -1;

    v2.letterSpacing = 0xFE;
    v2.field_12 = 0;
    v2.field_A = 2;
    v2.size = 0xF0;
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
            if (gPauseMenuLanguage == 0xFF) {
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

int sub_80246C8() {
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

    switch (gPauseMenuLanguage) {
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

    InitMenu(MENU_FILE_SELECT, gPauseMenuLanguage);
    gMenuParentId = gMenuId;
    gMenuId = MENU_FILE_SELECT;

    if (!gSaveFiles[0].empty) {
        SetMenuEntry(0);
    } else if (!gSaveFiles[1].empty) {
        SetMenuEntry(1);
    } else if (!gSaveFiles[2].empty) {
        SetMenuEntry(2);
    } else {
        HANG;
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
                    AdvanceMenuEntryUp();
                } while (gSaveFiles[GetCurrentMenuEntry()].empty);
            } else if (gKeysDown & DPAD_DOWN) {
                PLAY_SFX(204);

                do {
                    AdvanceMenuEntryDown();
                } while (gSaveFiles[GetCurrentMenuEntry()].empty);
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
        FlushMenuToTextBuffer();
        RenderText();
        RenderMenuSprites();
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

void ShowLanguageSelect() {
    bool32 v0;

    InitMenu(MENU_LANGUAGE, 0);
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
            if (sub_8024200())
                break;
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

        SetTextSpriteCount(0);
        DmaFill32(170, gOAMBuffer1, 256);
        gOAMBufferFramePtr = gOAMBuffer1;
        gOAMBufferEnd = &gOAMBuffer1[0x100];
        gOBJTileFramePtr = (void*)OBJ_VRAM0;
        gOBJTileCount = 0;
        FlushMenuToTextBuffer();
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

void ShowEraseData() {
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
    InitPregame();

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

    InitMenu(MENU_YES_NO_ENGLISH, 0);
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
                switch (GetCurrentMenuEntry()) {
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
                    AdvanceMenuEntryUp();
                } else if (gKeysDown & DPAD_DOWN) {
                    PLAY_SFX(204);
                    AdvanceMenuEntryDown();
                }
            }
        }

        SetTextSpriteCount(0);
        DmaFill32(170, gOAMBuffer1, 256);
        gOAMBufferFramePtr = gOAMBuffer1;
        gOAMBufferEnd = &gOAMBuffer1[0x100];
        gOBJTileFramePtr = (void*)0x6014000;
        gOBJTileCount = 512;

        tb1.xPosition = 16;
        tb1.yPosition = 16;
        tb1.stringOffset = 0;
        AddStringToBuffer(&tb1, 0x080652AC);

        switch (action) {
            case 1:
                tb2.xPosition = 16;
                tb2.yPosition = 70;
                tb2.stringOffset = 0;
                AddStringToBuffer(&tb2, 0x080652C4);
                break;

            case 2:
                tb2.xPosition = 16;
                tb2.yPosition = 70;
                tb2.stringOffset = 0;
                AddStringToBuffer(&tb2, 0x080652F0);
                break;

            case 3:
                tb2.xPosition = 16;
                tb2.yPosition = 70;
                tb2.stringOffset = 0;
                AddStringToBuffer(&tb2, 0x08065304);
        }

        if (renderMenu)
            FlushMenuToTextBuffer();

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

void ShowFlashscreens() {
    s32 minTime;
    s32 maxTime;
    bool32 canSkip;

    sub_80270AC(4095, 0);
    DmaTransfer32((void*)0x83FD454, OBJ_PLTT, 128);
    sub_8026E48(4095, 0, 0);

    dword_200032C = Alloc(0x460u, 11, 4);
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

    while (byte_203F99E) {
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
        gOBJTileFramePtr = (void*)0x6014000;
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

/**
 * Finish this later.
 */

// extern char* dword_86AD314[115]; // array of strings
// extern u32* dword_20021FC;
// extern u32 dword_2002200;

// extern void *Alloc(u32 size, u32 allocId, u32 heap);

// void sub_8025000()
// {
//     int r4;
//     int r1;
//     int r7;
//     char** buffer;

//     if (byte_20021F0)
//         return;

//     r4 = 0;
//     r1 = 0;
//     r7 = 0;

//     do
//     {
//         switch(*dword_86AD314[r7])
//         {
//             case 0xFF:
//                 r4 = 1;
//                 break;
//             case 0xFE:
//             case 0xFB:
//                 r7++;
//                 break;
//             default:
//                 r7++;
//                 r1++;
//                 break;
//         }
//     }
//     while(r4 == 0);

//     dword_2002200 = r1;
//     dword_20021FC = Alloc(r1 * 40, 0x11, 4);

//     buffer = &dword_86AD314[0];

//     if (dword_2002200 > 0)
//     {
//         u32 v1 = 0x24;

//         if (**buffer == 0xFB)
//         {
//             buffer++;
//         }

//         // do
//         // {

//         // }
//         // while();
//     }
// }
