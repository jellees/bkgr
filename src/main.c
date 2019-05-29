#include "global.h"

void UpdateGame();

extern void *gNullsub_5;
extern u8 gMainFrameCounter;

int AgbMain()
{
    prepare_wram();
    EnableDisplay();
    sub_800FA84();
    StartGame();

    while (1)
    {
        SetTextSpriteCount(0);
        Debug_ShowInfo();
        UpdateGame();
        Debug_SetAfterGameUpdate(REG_VCOUNT & 0xFF);
        SyncVblank();
        thunk_r0(gNullsub_5);
        UpdateVideo();
        Debug_SetAfterVideoUpdate(REG_VCOUNT & 0xFF);
        SkipVblank();
        ++gMainFrameCounter;
        CheckStacks();
    }
}

//EWRAM
extern u16 gColorSpecEffectsSel;
extern u8 byte_2000F55;
extern u8 byte_2000F57;
extern u8 byte_2000F5D;
extern u8 gUnused_ExecUnusedInputFunc;

extern u32 gPlayerSprite; //type may be wrong
extern u32 gPlayerShadowSprite; //type may be wrong

extern u32 dword_2000FC8;
extern struct GameStatus gGameStatus;
extern u16 word_20010AC;
extern u8 byte_200110C;
extern s16 gCameraPixelX;
extern s16 gCameraPixelY;
extern u32 dword_2001470;
extern u16 gPlayerState;
extern u8 byte_20020B1;
extern s32 dword_20020B4;
extern s32 dword_20020B8;
extern u8 byte_20020BC;
extern u16 gPlayerStateSettings[];
extern u8 byte_20021F0;
extern u8 byte_20021F8;
extern u8 byte_2002E4A;
extern u8 gIsPaletteEffectsActive;
extern u32 dword_203DFC4;
extern u8 byte_203EA89;
extern s16 word_203F998;
extern u8 byte_203F99C;
extern u8 byte_203F99F;
extern u8 byte_203F9A1;
extern u8 byte_203FA35;

//IWRAM
extern u8 byte_3002950[];
extern u32 gNullsub_3;
extern u32 gNullsub_4;
extern u8 gIsSlideMiniGame;
extern u32 dword_30032AC;
extern u32 dword_30032B0;
extern u32 dword_30032B4[];
extern u32 dword_30032BC[];
extern u16 gPreviousKeys;
extern u16 gKeysPressed;
extern u16 gKeysDown;
extern u32 dword_30032CC;
extern u32 gPlayerPos[];
extern u32 dword_30032DC[];

extern u32 gOAMBuffer1[];
extern u32* gOAMBufferFramePtr;
extern u32* gOAMBufferEnd;
extern u32  gOBJTileFramePtr;
extern u32  gOBJTileCount;
extern u32  gOBJTileFrameStart;
extern u32  dword_3003DA0;
extern u32  dword_3003DA4;

//ROM
extern u8 byte_80CEB84[];
extern s32 dword_80CEBC4;

extern u32 Abs(u32); //return type is u32, can tell by the branch instruction

void UpdateGame(void)
{
    if (gIsPaletteEffectsActive)
        sub_8026DC0();
    call_functions();
    sub_80631AC();
    sub_800EACC();
    sub_800ECB4();
    if (byte_200110C)
        sub_800F430();
    sub_80344DC();
    if (!byte_203F9A1)
    {
        ReadKeys(&gKeysPressed, &gKeysDown, &gPreviousKeys);
        if (gUnused_ExecUnusedInputFunc)
            Unused_InputFunction();
    }
    else
        ReadKeysEx(&gKeysPressed, &gKeysDown, &gPreviousKeys);

    thunk_r0(gNullsub_3);
    sub_806127C();

    if (word_203F998 == 12 && byte_20021F8 && !(gPlayerStateSettings[gPlayerState] & 0x800))
    {
        if (byte_2000F55 || gKeysDown & 2)
        {
            sub_80271A4(0xFFF, 1);
            sub_805E1DC(2);
            init_function(43);
        }
    }
    if (dword_2001470)
        sub_8015FD4();

    if (gKeysDown & 8 && !(gPlayerStateSettings[gPlayerState] & 0x800)
        && !byte_20021F0 && !byte_203F99C && gGameStatus.health
        && !gIsPaletteEffectsActive && !byte_203FA35)
    {
        if ((gPlayerState != 101 || gIsSlideMiniGame))
        {
            if (!byte_2000F57)
            {
                if (byte_20020BC)
                {
                    sub_8016B0C();
                    sub_804087C();
                }
                sub_80409DC();
                if (dword_20020B8 != -1)
                {
                    if (byte_203EA89)
                        audio_halt_fx(dword_20020B8);
                    dword_20020B8 = -1;
                }
                if (audio_fx_still_active(dword_20020B4) && byte_203EA89)
                    audio_halt_fx(dword_20020B4);
                if (gPlayerState == 35)
                    sub_8064380();
                OpenPauseMenu();
                if (gPlayerState == 35)
                    sub_806438C();
                if (!gIsSlideMiniGame)
                {
                    sub_8013DD4(21, 32);
                    EnableBGAlphaBlending();
                }
                //_08009926
                REG_BLDCNT = gColorSpecEffectsSel;
                gKeysDown = 0;
                gKeysPressed = 0;
                if (gPlayerStateSettings[gPlayerState] & 0x100 && byte_20020B1 != 4)
                {
                    sub_08040204(57, gGameStatus.field_16);
                    sub_08041FA4(57);
                }
                if (gPlayerStateSettings[gPlayerState] & 4)
                    sub_800DE04();
            }
        }
        else
            goto label_08009984;
    }
    //_0800997C
    if (!gIsSlideMiniGame)
    {
        label_08009984:
        s_load_object(gCameraPixelX + 120, gCameraPixelY + 80);
        sub_800DF34();
        sub_8062484();
    }
    //_080099A0
    if ((!byte_203F99C || byte_203F9A1) && !byte_203FA35)
    {
        //_080099BC
        if (!(gKeysPressed & word_20010AC))
        {
            word_20010AC = 0;
            if (!gIsSlideMiniGame)
            {
                //_08009A60
                if (!byte_200110C)
                    UpdatePlayerBehavior(gKeysPressed, gKeysDown);
                
            }
            else
            {
                sub_80038A4(dword_2000FC8);
                if ((gPlayerStateSettings[gPlayerState] & 0x800) || (gPlayerStateSettings[gPlayerState] & 0x1000))
                    UpdatePlayerBehavior(gKeysPressed, gKeysDown);
            }
        }    
        //_08009A92
        if (!gIsSlideMiniGame)
        {
            sub_80038A4(dword_2000FC8);
            update_player();
        }
    }
    else if (byte_203F99F) //_08009ABC
        UpdatePlayerBehavior(gKeysPressed, gKeysDown);
    //_08009AD0
    dword_30032B4[0] = gCameraPixelX - 20;
    dword_30032B4[1] = gCameraPixelY - 5;
    dword_30032BC[0] = gCameraPixelX + 260;
    dword_30032BC[1] = gCameraPixelY + 170;
    if (gPlayerState == 35)
        sub_8063B5C();
    if (!gIsSlideMiniGame && gPlayerState != 101)
        sub_8048C78();
    //_08009B1A
    sub_804087C();
    if (!gIsSlideMiniGame)
    {
        s16 r1;
        u32 r0;
        u32* r2;
        u32 r4 = sub_800C50C();
        SetSpritePriority(&gPlayerSprite, r4);
        if (Abs(gPlayerPos[1] - dword_30032DC[1]) <= 0x4FFFF || dword_203DFC4)
            SetSpritePriority(&gPlayerShadowSprite, r4); //_08009B50
        else //_08009B98
            SetSpritePriority(&gPlayerShadowSprite, byte_3002950[3]);
        //_08009BA2
        r2 = &gPlayerShadowSprite;
        r1 = (gPlayerPos[1] - dword_30032DC[1]) >> 16;
        if (r1 >= dword_80CEBC4)
            r0 = byte_80CEB84[dword_80CEBC4 - 1];
        else
            r0 =  byte_80CEB84[r1];
        sub_80037F4(r2, r0);
    }
    //_08009BE4
    DmaFill32(170, gOAMBuffer1, 0x100);
    gOAMBufferFramePtr = gOAMBuffer1;
    gOAMBufferEnd = &gOAMBuffer1[256];
    gOBJTileFramePtr = gOBJTileFrameStart;
    gOBJTileCount = dword_3003DA0;
    sub_08047108();
    sub_8025278();
    sub_800EE68();
    sub_804095C();
    if (gPlayerStateSettings[gPlayerState] & 0x800)
    {
        if (byte_2000F5D)
        {
            sub_8025948(0);
            if (gKeysDown & 1)
                byte_2000F5D = 0;
        }
        else //_08009C88
        {
            if (byte_2002E4A)
            {
                byte_2002E4A = 0;
                byte_2000F5D = 1;
            }
            sub_8025948(gKeysPressed & 1);
        }
    }
    else //_08009CAC
        RenderText();
    //_08009CB0
    sub_8026234();
    sub_80408F0();
    sub_8061F80();
    sub_8064234();
    sub_80473BC();
    thunk_r0(gNullsub_4);
    if (!gIsSlideMiniGame && gPlayerState != 101)
    {
        sub_8009D2C();
        sub_805DF84(&dword_30032AC, &dword_30032CC);
        sub_800BAF0(&dword_30032AC, &dword_30032CC);
        sub_802ADB0(&dword_30032AC, &dword_30032CC);
        sub_8003A34(dword_30032CC, dword_30032B0, &dword_3003DA4);
    }
}