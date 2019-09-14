#include "global.h"

extern u8 byte_20021F0;
extern u32 dword_20021F4;

extern u8 gPauseMenuLanguage;
extern u8 byte_2000335;
extern u8 byte_20021F8;
extern u8 byte_20021F9;
extern u32 dword_203F4DC;

extern struct SaveFile gSaveFiles[3];

extern u32 sub_08044860();
extern void reset_savefiles();
extern void MakeFileStrings();
extern void init_savefiles();
extern void InitPregame();
extern void SetVolumeToDefault();
extern void exec_flashscreens();
extern int ShowPressStart();
void ShowSelectGame(int);
extern void SetTextSpriteCount(int);
extern void sub_80270AC(int, int);
extern void FreeById(int, int);
extern void ResetMenu();
extern u32 DoesMemBlockExistById(int, int);

extern void DmaFill32(int, int, int);

void InitPregame()
{
    byte_20021F0 = 0;
    dword_20021F4 = 0x10000;
    REG_DISPCNT = DISPCNT_OBJ_ON | DISPCNT_BG2_ON | DISPCNT_OBJ_1D_MAP | DISPCNT_MODE_4;
    REG_BG2CNT = 0;
    DmaFill32(0, VRAM, 0x5000);
    DmaFill32(0, PLTT, 128);
    DmaTransfer32((void *)0x83FD254, OBJ_PLTT, 128);
}

void ExecutePregame()
{
    byte_2000335 = 0;
    byte_20021F9 = 0;
    dword_203F4DC = 0;

    if (!sub_08044860())
    {
        gPauseMenuLanguage = 0;
        byte_2000335 = 1;
        byte_20021F9 = 1;
        byte_20021F8 = 0;
        reset_savefiles();
        MakeFileStrings();
    }
    else
    {
        init_savefiles();
        MakeFileStrings();
        byte_20021F8 = 1;

        if (gSaveFiles[0].empty && gSaveFiles[1].empty && gSaveFiles[2].empty || byte_2000335)
        {
            byte_20021F9 = 1;
            byte_20021F8 = 0;
        }
    }

    InitPregame();
    SetVolumeToDefault();
    exec_flashscreens();
    ShowSelectGame(ShowPressStart());
    SetTextSpriteCount(0);

    if (!byte_20021F9)
        sub_80270AC(4095, 1);

    FreeById(4, 15);
    ResetMenu();

    if (DoesMemBlockExistById(4, 15))
        HANG;
}

extern u32 gOAMBuffer1[];
extern u32 *gOAMBufferFramePtr;
extern u32 *gOAMBufferEnd;
extern u32 *gOBJTileFramePtr;
extern u32 gOBJTileCount;

extern u8 gMenuId;
extern u8 gMenuParentId;

extern u16 gPreviousKeys;
extern u16 gKeysPressed;
extern u16 gKeysDown;

extern struct struct_80CE440 word_80CE440[];

extern u8 byte_203EA89;
extern u8 byte_203EA8C;

void ShowSelectGame(int a1)
{
    int v2;
    bool32 v3;

    DmaFill32(170, gOAMBuffer1, 256);
    gOAMBufferFramePtr = gOAMBuffer1;
    gOAMBufferEnd = &gOAMBuffer1[0x100];
    gOBJTileFramePtr = (u32 *)OBJ_VRAM0;
    gOBJTileCount = 0;

    InitMenu(0, gPauseMenuLanguage);
    gMenuId = 0;
    gMenuParentId = -1;

    if (!byte_20021F9)
        AdvanceMenuEntryDown();

    SyncVblank();
    UpdateVideo();
    SkipVblank();
    SetObjectsFullAlpha();

    if (a1)
    {
        REG_BLDCNT = BLDCNT_TGT2_ALL | BLDCNT_EFFECT_BLEND | BLDCNT_TGT1_OBJ | BLDCNT_TGT1_BG1;
        REG_BG1CNT &= BGCNT_MASK_NO_PRIORITY;
        v2 = 2;
    }
    else
    {
        v2 = 0;
    }

    v3 = TRUE;

    while (1)
    {
        ReadKeys(&gKeysPressed, &gKeysDown, &gPreviousKeys);

        if (gKeysDown & B_BUTTON)
        {
            if (gMenuParentId != 0xFF)
            {
                u8 id, id2;
                gMenuId = gMenuParentId;
                id = gMenuId;
                if (!id)
                    gMenuParentId = -1;
                else
                    HANG;
                id2 = gMenuId;
                InitMenu(id2, gPauseMenuLanguage);
            }
        }
        else if (gKeysDown & A_BUTTON || gKeysDown & START_BUTTON)
        {
            if (sub_8024200())
                break;
            SetTextSpriteCount(0);
            DmaFill32(170, gOAMBuffer1, 256);
            gOAMBufferFramePtr = gOAMBuffer1;
            gOAMBufferEnd = &gOAMBuffer1[0x100];
            gOBJTileFramePtr = (u32 *)OBJ_VRAM0;
            gOBJTileCount = 0;
            SyncVblank();
            UpdateVideo();
            SkipVblank();
            SetObjectsFullAlpha();
            REG_BLDCNT = BLDCNT_TGT2_ALL | BLDCNT_EFFECT_BLEND | BLDCNT_TGT1_OBJ | BLDCNT_TGT1_BG1;
            REG_BG1CNT &= BGCNT_MASK_NO_PRIORITY;
            v2 = 2;
            v3 = TRUE;
        }

        if (!(gKeysDown & JOY_EXCL_DPAD))
        {
            if (gKeysDown & DPAD_UP)
            {
                if (!byte_20021F9)
                {
                    if (byte_203EA89)
                    {
                        u16 value0 = word_80CE440[204].field_0;
                        u8 value1 = word_80CE440[204].field_2[byte_203EA8C];
                        u32 value2 = word_80CE440[204].field_4 + 0x10000;
                        audio_new_fx(value0, value1, value2);
                    }
                    AdvanceMenuEntryUp();
                }
            }
            else if (gKeysDown & DPAD_DOWN && !byte_20021F9)
            {
                if (byte_203EA89)
                {
                    u16 value0 = word_80CE440[204].field_0;
                    u8 value1 = word_80CE440[204].field_2[byte_203EA8C];
                    u32 value2 = word_80CE440[204].field_4 + 0x10000;
                    audio_new_fx(value0, value1, value2);
                }
                AdvanceMenuEntryDown();
            }
        }

        call_functions();
        SetTextSpriteCount(0);
        DmaFill32(170, gOAMBuffer1, 256);
        gOAMBufferFramePtr = gOAMBuffer1;
        gOAMBufferEnd = &gOAMBuffer1[0x100];
        gOBJTileFramePtr = (u32 *)OBJ_VRAM0;
        gOBJTileCount = 0;
        FlushMenuToTextBuffer();
        RenderText();
        RenderMenuSprites();
        CheckStacks();
        SyncVblank();
        UpdateVideo();
        SkipVblank();

        if (v3 == FALSE)
            continue;

        sub_08026BA8(2, v2);
        v3 = FALSE;
    }

    SyncVblank();
    SkipVblank();
}

extern u8 gContinueGame;

int sub_8024200()
{
    switch (gMenuId)
    {
    case 0:
        switch (GetCurrentMenuEntry())
        {
        case 0:
            FadeOutObjects(2, 2);
            REG_BG1CNT |= 3;
            sub_80254E0();
            sub_8026D84();
            sub_805E1DC(2);
            SetTextSpriteCount(0);
            byte_20021F9 = 1;
            return 1;
        case 1:
        {
            u32 v1;
            FadeOutObjects(2, 2);
            REG_BG1CNT |= 3;
            v1 = sub_80246C8();

            if (v1)
                return 1;

            InitMenu(0, gPauseMenuLanguage);
            gMenuId = v1;
            gMenuParentId = -1;
            AdvanceMenuEntryDown();
            break;
        }
        }
        return 0;
    case 7:
        switch (GetCurrentMenuEntry())
        {
        case 0:
            if (byte_20021F9)
                break;
            gContinueGame = sub_08044C00(0);
            if (gContinueGame)
            {
                sub_8038A34();
                sub_803FE78();
                dword_203F4DC = 0;
            }
            else
            {
                HANG;
            }
            return 1;
        case 1:
            if (byte_20021F9)
                break;
            gContinueGame = sub_08044C00(1);
            if (gContinueGame)
            {
                sub_8038A34();
                sub_803FE78();
                dword_203F4DC = 1;
            }
            else
            {
                HANG;
            }
            return 1;
        case 2:
            if (byte_20021F9)
                break;
            gContinueGame = sub_08044C00(2);
            if (gContinueGame)
            {
                sub_8038A34();
                sub_803FE78();
                dword_203F4DC = 2;
            }
            else
            {
                HANG;
            }
            return 1;
        default:
            return 0;
        }
        return 1;
    case 3:
        switch (GetCurrentMenuEntry())
        {
        case 0: gPauseMenuLanguage = 0; return 1;
        case 1: gPauseMenuLanguage = 1; return 1;
        case 2: gPauseMenuLanguage = 2; return 1;
        case 3: gPauseMenuLanguage = 3; return 1;
        case 4: gPauseMenuLanguage = 4; return 1;
        default: return 0;
        }
    default:
        return 0;
    }
}

struct FontData
{
    u8 field_0;
    u8 tileDataIndex;
    u8 field_2;
    u8 field_3;
    struct FontIndex *fontIndexes;
};

struct Font
{
    u16 xPosition;
    u16 yPosition;
    struct FontData *fontData;
    u16 field_8;
    u8 field_A;
    u16 stringOffset;
    u16 palette;
    u8 letterSpacing;
    u8 field_11;
    u8 field_12;
    u8 field_13;
};

extern u16 word_200145C;
extern u16 word_200145E;
extern u16 gBGInitOffsetHorizontal;
extern u16 gBGInitOffsetVertical;

extern struct FontData fontdata_80B01A8[3];

int ShowPressStart()
{
    s32 v3;
    bool32 v4;
    struct Font v2;
    struct Font v1;
    u8 s1[27], s2[21], s3[21];
    u8 *string;

    EnableDisplay();
    REG_BG2X_L = 0;
    REG_BG2Y_L = 0;
    REG_BG2PB = 0;
    REG_BG2PC = 0;
    REG_BG2PA = 256;
    REG_BG2PD = 256;
    SetupRoom(0x22, 0, 1, 0);
    sub_8013A10(word_200145C, word_200145E, gBGInitOffsetHorizontal, gBGInitOffsetVertical, 21, 32);

    EnableBGAlphaBlending();
    REG_BG1CNT &= 0xFFFC;
    sub_8026D20(0x800, 0x7000, 0x20, 0x100);
    sub_8026E48(0xFFF, 0, 0);
    init_function(10);

    v1.fontData = &fontdata_80B01A8[0];
    v1.field_8 = 0xF0;
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
    v2.field_8 = 0xF0;
    v2.palette = 1;
    v2.stringOffset = 0;
    v2.field_11 = 6;
    v2.fontData = &fontdata_80B01A8[2];

    string = (u8 *)0x08065210;
    v3 = sub_8025870(string, &v2);
    v4 = FALSE;

    while (1)
    {
        ReadKeys(&gKeysPressed, &gKeysDown, &gPreviousKeys);

        if (gKeysDown & 8 || gKeysDown & 1)
        {
            if (gPauseMenuLanguage == 255)
            {
                FadeOutObjects(2, 2);
                REG_BG1CNT |= 3u;
                SetTextSpriteCount(0);
                exec_language_select_screen();
                v4 = TRUE;
            }
            else
            {
                FadeOutObjects(2, 0);
                SetTextSpriteCount(0);
            }
            break;
        }

        call_functions();
        SetTextSpriteCount(0);
        DmaFill32(170, gOAMBuffer1, 256);
        gOAMBufferFramePtr = gOAMBuffer1;
        gOAMBufferEnd = &gOAMBuffer1[0x100];
        gOBJTileFramePtr = (void *)0x6010000;
        gOBJTileCount = 0;
        v2.xPosition = (240 - v3) >> 1;
        v2.yPosition = 128;
        v2.stringOffset = 0;
        AddStringToBuffer(&v2, string);
        RenderText();
        CheckStacks();
        SyncVblank();
        UpdateVideo();
        SkipVblank();
    }

    SyncVblank();
    SkipVblank();
    return v4;
}
