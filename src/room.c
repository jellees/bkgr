#include "global.h"

extern struct RoomHeader gRoomHeader;
extern u16 gBGInitOffsetHorizontal;
extern u16 gBGInitOffsetVertical;

extern u8 gBGOffsetHorizontal;
extern u8 gBGOffsetVertical;

extern u32 dword_2001470;
extern u32 gLoadedTileAnimCount;

extern u8 gBGControlActions;
extern u8 byte_2002070;

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

void sub_8012624(u16* a1, u16* a2)
{
    *a1 = gBGOffsetHorizontal;
    *a2 = gBGOffsetVertical;
    gBGOffsetHorizontal = 0;
    gBGOffsetVertical = 0;
    byte_2002070 = gBGControlActions;
    gBGControlActions = 0;
}

void sub_8012654(s32 a1, s32 a2)
{
    if (gRoomHeader.isStaticBG0)
    {
        REG_BG0HOFS = 0;
        REG_BG0VOFS = 0;
    }
    else
    {
        REG_BG0HOFS = a1;
        REG_BG0VOFS = a2;
    }

    if (gRoomHeader.isStaticBG1)
    {
        REG_BG1HOFS = 0;
        REG_BG1VOFS = 0;
    }
    else
    {
        REG_BG1HOFS = a1;
        REG_BG1VOFS = a2;
    }

    if (gRoomHeader.isStaticBG2)
    {
        REG_BG2HOFS = 0;
        REG_BG2VOFS = 0;
    }
    else
    {
        REG_BG2HOFS = a1;
        REG_BG2VOFS = a2;
    }

    if (gRoomHeader.isStaticBG3)
    {
        REG_BG3HOFS = 0;
        REG_BG3VOFS = 0;
    }
    else
    {
        REG_BG3HOFS = a1;
        REG_BG3VOFS = a2;
    }

    gBGOffsetHorizontal = a1;
    gBGOffsetVertical = a2;
    gBGControlActions = byte_2002070;
}

void sub_8012728(s32 a1)
{
    if (gRoomHeader.isStaticBG0)
        REG_BG0VOFS = 0;
    else
        REG_BG0VOFS = a1;

    if (gRoomHeader.isStaticBG1)
        REG_BG1VOFS = 0;
    else
        REG_BG1VOFS = a1;

    if (gRoomHeader.isStaticBG2)
        REG_BG2VOFS = 0;
    else
        REG_BG2VOFS = a1;

    if (gRoomHeader.isStaticBG3)
        REG_BG3VOFS = 0;
    else
        REG_BG3VOFS = a1;
}

void sub_80127B8(s32 a1)
{
    if (gRoomHeader.isStaticBG0)
        REG_BG0HOFS = 0;
    else
        REG_BG0HOFS = a1;

    if (gRoomHeader.isStaticBG1)
        REG_BG1HOFS = 0;
    else
        REG_BG1HOFS = a1;

    if (gRoomHeader.isStaticBG2)
        REG_BG2HOFS = 0;
    else
        REG_BG2HOFS = a1;

    if (gRoomHeader.isStaticBG3)
        REG_BG3HOFS = 0;
    else
        REG_BG3HOFS = a1;
}
