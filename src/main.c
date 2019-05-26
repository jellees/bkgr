#include "global.h"

extern void prepare_wram();
extern void EnableDisplay();
extern void sub_800FA84();
extern void StartGame();
extern void SetTextSpriteCount(int);
extern void Debug_ShowInfo();
extern void UpdateGame();
extern void Debug_SetAfterGameUpdate(int);
extern void SyncVblank();
extern void thunk_r0(void *);
extern void UpdateVideo();
extern void Debug_SetAfterVideoUpdate(int);
extern void SkipVblank();
extern void CheckStacks();

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




// extern u8 gStopPaletteEffects;
// extern u8 byte_200110C;
// extern u8 byte_203F9A1;
// extern u16 gKeysPressed;
// extern u16 gKeysDown;
// extern u16 gPreviousKeys;
// extern u8 gUnused_ExecUnusedInputFunc;
// extern u32 gNullsub_3;
// extern s16 word_203F998;
// extern u8 byte_20021F8;
// extern u16 gPlayerStateSettings[128];
// extern u16 gPlayerState;
// extern u8 byte_2000F55;
// extern u32 dword_2001470;
// extern u8 byte_20021F0;
// extern u8 byte_203F99C;
// extern u8 gHealth;
// extern u8 gStopPaletteEffects;
// extern u8 byte_203FA35;
// extern u8 gIsSlideMiniGame;
// extern u8 byte_2000F57;
// extern u8 byte_20020BC;
// extern u32 dword_20020B8;
// extern u8 byte_203EA89;

// void UpdateGame()
// {
//     if (gStopPaletteEffects)
//         sub_8026DC0();

//     call_functions();
//     sub_80631AC();
//     sub_800EACC();
//     sub_800ECB4();

//     if(byte_200110C)
//         sub_800F430();

//     sub_80344DC();

//     if(byte_203F9A1)
//     {
//         ReadKeys(&gKeysPressed, &gKeysDown, &gPreviousKeys);
//         if(gUnused_ExecUnusedInputFunc)
//             Unused_InputFunction();
//     }
//     else 
//     {
//         ReadKeysEx(&gKeysPressed, &gKeysDown, &gPreviousKeys);
//     }

//     thunk_r0(gNullsub_3);
//     sub_806127C();
    
//     if(word_203F998 == 12 
//         && byte_20021F8 
//         && !(gPlayerStateSettings[gPlayerState] & 0x800)
//         && (byte_2000F55 || gKeysDown & 2) )
//     {
//         sub_80271A4(0xFFF, 1);
//         sub_805E1DC(2);
//         init_function(0x2B);
//     }

//     if(dword_2001470)
//         sub_8015FD4();

//     if(!(gKeysDown & 8))
//     {
//         if (gPlayerStateSettings[gPlayerState] & 0x800
//         || byte_20021F0
//         || byte_203F99C
//         || !gHealth
//         || gStopPaletteEffects
//         || byte_203FA35 )
//         {
//             if(gPlayerState != 101 || gIsSlideMiniGame)
//             {
//                 if(!byte_2000F57 && byte_20020BC)
//                 {
//                     sub_8016B0C();
//                     sub_804087C();
//                 }
//                 sub_80409DC();

//                 if (dword_20020B8 != -1)
//                 {
//                     if(byte_203EA89)
//                     {
//                         audio_halt_fx(dword_20020B8);
//                     }
//                     dword_20020B8 = -1;
//                 }
//             }
//         }
//     }
// }
