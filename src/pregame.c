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
extern void exec_press_start_screen();
extern void exec_select_game();
extern void SetTextSpriteCount(int);
extern void sub_80270AC(int, int);
extern void FreeById(int, int);
extern void ResetMenu();
extern u32 DoesMemBlockExistById(int, int);

void InitPregame()
{
    byte_20021F0 = 0;
    dword_20021F4 = 0x10000;
    REG_DISPCNT = 0x1444;
    REG_BG2CNT = 0;
    DmaFill32(0, 0x6000000, 0x5000);
    DmaFill32(0, 0x5000000, 128);
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
    exec_press_start_screen();
    exec_select_game();
    SetTextSpriteCount(0);

    if (!byte_20021F9)
        sub_80270AC(4095, 1);

    FreeById(4, 15);
    ResetMenu();

    if (DoesMemBlockExistById(4, 15))
        HANG;
}
