#include "global.h"
#include "main.h"

extern u32* dword_2000F60;
extern u32 dword_2000F64;
extern u32 dword_2000F68;
extern u32 dword_2000F6C;

extern u8 gShowEraseDataScreen;
extern u8 byte_2000F59;
extern u8 byte_2000F5A;

extern u32 dword_3007FFC;

//extern u32* gFunctionArray[14];
extern void (*gFunctionArray[14])();

extern void sub_800A37C();
extern void sub_800A528();
extern void sub_800A594();
extern void nullsub_15();

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
        _call_via_r0(gNullsub_5);
        UpdateVideo();
        Debug_SetAfterVideoUpdate(REG_VCOUNT & 0xFF);
        SkipVblank();
        ++gMainFrameCounter;
        CheckStacks();
    }
}

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

    _call_via_r0(gNullsub_3);
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

    if (gKeysDown & 8 && !(gPlayerStateSettings[gPlayerState] & 0x800) && !byte_20021F0 && !byte_203F99C
        && gGameStatus.health && !gIsPaletteEffectsActive && !byte_203FA35)
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
            r0 = byte_80CEB84[r1];
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
                byte_2000F5D = FALSE;
        }
        else //_08009C88
        {
            if (byte_2002E4A)
            {
                byte_2002E4A = FALSE;
                byte_2000F5D = TRUE;
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
    _call_via_r0(gNullsub_4);
    if (!gIsSlideMiniGame && gPlayerState != 101)
    {
        sub_8009D2C();
        sub_805DF84(&dword_30032AC, &dword_30032CC);
        sub_800BAF0(&dword_30032AC, &dword_30032CC);
        sub_802ADB0(&dword_30032AC, &dword_30032CC);
        sub_8003A34(dword_30032CC, dword_30032B0, &dword_3003DA4);
    }
}

NAKED void sub_8009D2C()
{
#ifdef NONMATCHING
    dword_30032B0 = gOAMBufferFramePtr;
    gOAMBufferFramePtr = gOAMBuffer2;
    gOAMBufferEnd = (u16*)(gOAMBuffer2 - ((gOAMBuffer1 - gOAMBufferFramePtr) + 0x400));
    dword_30032AC = &dword_3003DA4;
    dword_30032CC = 0;
#else
    asm_unified("\n\
sub_8009D2C: @ 0x08009D2C \n\
    ldr r2, _08009D58 \n\
    ldr r1, _08009D5C \n\
    ldr r0, [r1] \n\
    str r0, [r2] \n\
    ldr r2, _08009D60 \n\
    str r2, [r1] \n\
    ldr r3, _08009D64 \n\
    ldr r1, _08009D68 \n\
    subs r0, r0, r1 \n\
    asrs r0, r0, #1 \n\
    lsls r0, r0, #1 \n\
    ldr r1, _08009D6C \n\
    adds r0, r0, r1 \n\
    subs r2, r2, r0 \n\
    str r2, [r3] \n\
    ldr r1, _08009D70 \n\
    ldr r0, _08009D74 \n\
    str r0, [r1] \n\
    ldr r1, _08009D78 \n\
    movs r0, #0 \n\
    str r0, [r1] \n\
    bx lr \n\
    .align 2, 0 \n\
_08009D58: .4byte dword_30032B0 \n\
_08009D5C: .4byte gOAMBufferFramePtr \n\
_08009D60: .4byte gOAMBuffer2 \n\
_08009D64: .4byte gOAMBufferEnd \n\
_08009D68: .4byte gOAMBuffer1 \n\
_08009D6C: .4byte 0xFFFFFC00 \n\
_08009D70: .4byte dword_30032AC \n\
_08009D74: .4byte dword_3003DA4 \n\
_08009D78: .4byte dword_30032CC \n\
");
#endif
}

void sub_8009D7C(u32 a1)
{
    dword_2000F60[dword_2000F64++] = a1;
    ASSERT(dword_2000F64 != 256);
}

u32 sub_8009DAC()
{
    ASSERT(dword_2000F64 != 0);
    return dword_2000F60[--dword_2000F64];
}

void nullsub_3() { }

void nullsub_4() { }

void nullsub_5() { }

void prepare_wram()
{
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

void EnableDisplay()
{
  REG_DISPCNT = DISPCNT_OBJ_ON | DISPCNT_BG_ALL_ON | DISPCNT_OBJ_1D_MAP;
  REG_BG0CNT = 0x1C03;      // Setup priority and base blocks.
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

void sub_8009ED8()
{
    s32 i;

    dword_2000F68 = 0;
    dword_2000F6C = 0;

    for (i = 0; i < 14; i++)
    {
        gFunctionArray[i] = (u8*)nullsub_15+1;
    }

    // The +1 is a hack and should be fixed.
    gFunctionArray[0] = (u8*)sub_800A37C+1;
    gFunctionArray[2] = (u8*)sub_800A528+1;
    gFunctionArray[12] = (u8*)sub_800A594+1;

    REG_DISPSTAT = 0x28;
    REG_IE = 0x1005;
    REG_IME = 1;
    REG_KEYCNT = 0xC00F;
}

extern void sub_80001EC();
extern void UpdateBackgrounds();

extern u8 unk_3000000;

void copy_sub_80001EC_to_iram()
{
    DmaTransfer32(sub_80001EC, &unk_3000000, ((UpdateBackgrounds - sub_80001EC) >> 2) + 1);
}