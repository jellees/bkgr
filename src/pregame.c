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
extern int exec_press_start_screen();
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
    ShowSelectGame(exec_press_start_screen());
    SetTextSpriteCount(0);

    if (!byte_20021F9)
        sub_80270AC(4095, 1);

    FreeById(4, 15);
    ResetMenu();

    if (DoesMemBlockExistById(4, 15))
        HANG;
}

extern u32 gOAMBuffer1[];
extern u32* gOAMBufferFramePtr;
extern u32* gOAMBufferEnd;
extern u32*  gOBJTileFramePtr;
extern u32  gOBJTileCount;

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
    switch(gMenuId)
    {
        case 0:
            switch(GetCurrentMenuEntry())
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
                    {u32 v1;
                    FadeOutObjects(2, 2);
                    REG_BG1CNT |= 3;
                    v1 = sub_80246C8();

                    if(v1)
                        return 1;

                    InitMenu(0, gPauseMenuLanguage);
                    gMenuId = v1;
                    gMenuParentId = -1;
                    AdvanceMenuEntryDown();
                    break;}
            }
            return 0;
        case 7:
            switch(GetCurrentMenuEntry())
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
            switch(GetCurrentMenuEntry())
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
