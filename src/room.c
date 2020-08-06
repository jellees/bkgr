#include "global.h"

extern struct RoomHeader gRoomHeader;
extern u16 gBGInitOffsetHorizontal;
extern u16 gBGInitOffsetVertical;

extern u8 gBGOffsetHorizontal;
extern u8 gBGOffsetVertical;

extern u32 dword_2001470;
extern u32 gLoadedTileAnimCount;

void ResetTileAnimCount()
{
    gLoadedTileAnimCount = 0;
    dword_2001470 = 0;
}

void SetupBGOffsets()
{
    if (gRoomHeader.isStaticBG0)
    {
        REG_BG0HOFS = 0;
        REG_BG0VOFS = 0;
    }
    else
    {
        REG_BG0HOFS = gBGInitOffsetHorizontal;
        REG_BG0VOFS = gBGInitOffsetVertical;
    }

    if (gRoomHeader.isStaticBG1)
    {
        REG_BG1HOFS = 0;
        REG_BG1VOFS = 0;
    }
    else
    {
        REG_BG1HOFS = gBGInitOffsetHorizontal;
        REG_BG1VOFS = gBGInitOffsetVertical;
    }

    if (gRoomHeader.isStaticBG2)
    {
        REG_BG2HOFS = 0;
        REG_BG2VOFS = 0;
    }
    else
    {
        REG_BG2HOFS = gBGInitOffsetHorizontal;
        REG_BG2VOFS = gBGInitOffsetVertical;
    }

    if (gRoomHeader.isStaticBG3)
    {
        REG_BG3HOFS = 0;
        REG_BG3VOFS = 0;
    }
    else
    {
        REG_BG3HOFS = gBGInitOffsetHorizontal;
        REG_BG3VOFS = gBGInitOffsetVertical;
    }

    gBGOffsetHorizontal = gBGInitOffsetHorizontal;
    gBGOffsetVertical = gBGInitOffsetVertical;
}
