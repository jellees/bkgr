#include "global.h"

extern u8 byte_20021F0;
extern u32 dword_20021F4;

void InitPregame()
{
    byte_20021F0 = 0;
    dword_20021F4 = 0x10000;
    REG_DISPCNT = 0x1444;
    REG_BG2CNT = 0;
    DmaFill32(0, 0x6000000, 0x5000);
    DmaFill32(0, 0x5000000, 128);
    DmaTransfer32((void*)0x83FD254, OBJ_PLTT, 128);
}