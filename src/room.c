#include "global.h"

extern struct RoomIndex dRoomIndexes[38];

extern struct RoomHeader gRoomHeader;
extern u16 gBGInitOffsetHorizontal;
extern u16 gBGInitOffsetVertical;

extern u8 gBGOffsetHorizontal;
extern u8 gBGOffsetVertical;

extern s32 gLoadedTileAnimCount;
extern u32 dword_2001470;

extern u8 gBGControlActions;
extern u8 byte_2002070;
extern u16 gColorSpecEffectsSel;

extern u8 gTileAnimQueueIndex;

extern u16 gLoadedRoomLevel;
extern u16 gLoadedRoomIndex;
extern u16 gLoadedRoomBgm;

extern u8 gCanChangeBgm;

extern u16 gEnabledBGs;

extern u16 gMapPixelSizeX;
extern u16 gMapPixelSizeY;
extern u8 gBG0Static;
extern u8 gBG1Static;
extern u8 gBG2Static;
extern u8 gBG3Static;

extern u32 gTilesCount;
extern u16* gTileSetBG[4];

extern u32* gEntitySection;

extern struct TileAnimTable_rt gTileAnimTable[255];

extern s32 dword_200031C;
extern s32 dword_2000318;

struct TileAnimQueueIndex
{
    u8* field_0;
    u8* field_4;
};

extern struct TileAnimQueueIndex gTileAnimQueue[255];

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

void EnableBGAlphaBlending()
{
    gColorSpecEffectsSel = BLDCNT_TGT2_ALL;

    if (gRoomHeader.isControllableBG0)
        gColorSpecEffectsSel |= BLDCNT_EFFECT_BLEND | BLDCNT_TGT1_BG0;

    if (gRoomHeader.isControllableBG1)
        gColorSpecEffectsSel |= BLDCNT_EFFECT_BLEND | BLDCNT_TGT1_BG1;

    if (gRoomHeader.isControllableBG2)
        gColorSpecEffectsSel |= BLDCNT_EFFECT_BLEND | BLDCNT_TGT1_BG2;

    if (gRoomHeader.isControllableBG3)
        gColorSpecEffectsSel |= BLDCNT_EFFECT_BLEND | BLDCNT_TGT1_BG3;
}

void DisableBackgrounds()
{
    if (gRoomHeader.isControllableBG0)
        REG_DISPCNT &= ~DISPCNT_BG0_ON;

    if (gRoomHeader.isControllableBG1)
        REG_DISPCNT &= ~DISPCNT_BG1_ON;

    if (gRoomHeader.isControllableBG2)
        REG_DISPCNT &= ~DISPCNT_BG2_ON;

    if (gRoomHeader.isControllableBG3)
        REG_DISPCNT &= ~DISPCNT_BG3_ON;
}

void EnableBackgrounds()
{
    if (gRoomHeader.isControllableBG0)
        REG_DISPCNT |= DISPCNT_BG0_ON;

    if (gRoomHeader.isControllableBG1)
        REG_DISPCNT |= DISPCNT_BG1_ON;

    if (gRoomHeader.isControllableBG2)
        REG_DISPCNT |= DISPCNT_BG2_ON;

    if (gRoomHeader.isControllableBG3)
        REG_DISPCNT |= DISPCNT_BG3_ON;
}

#define CHARBASE_MASK ~BGCNT_CHARBASE(3)

void SetupRoom(u32 room, u32 warp, bool32 changeMusic, u32 a4)
{
    u16 displayBGFlag = 0;

    ASSERT(room < ROOM_COUNT);

    gLoadedTileAnimCount = 0;
    gTileAnimQueueIndex = 0;

    gLoadedRoomIndex = room;

    if (gLoadedRoomLevel != dRoomIndexes[room].level && dRoomIndexes[room].level != 255)
        sub_800A710(dRoomIndexes[room].level);

    if (changeMusic && gLoadedRoomBgm != dRoomIndexes[room].music)
    {
        gLoadedRoomBgm = dRoomIndexes[room].music;
        if (gCanChangeBgm)
            audio_start_tune(gLoadedRoomBgm);
    }

    DmaTransfer32(dRoomIndexes[room].room, &gRoomHeader, 25);

    gEnabledBGs = gRoomHeader.enabledBGs;

    if (*gRoomHeader.unknown3 > 255)
        HANG;

    gMapPixelSizeX = 32 * gRoomHeader.mapSizeX;
    gMapPixelSizeY = 32 * gRoomHeader.mapSizeY;
    gBG0Static = gRoomHeader.isStaticBG0;
    gBG1Static = gRoomHeader.isStaticBG1;
    gBG2Static = gRoomHeader.isStaticBG2;
    gBG3Static = gRoomHeader.isStaticBG3;

    setup_collision_warp(gRoomHeader.collision, warp);
    sub_8038FA0(gLoadedRoomLevel);
    setup_entities(room, a4, gRoomHeader.entities);
    DmaTransfer32(gRoomHeader.spritePalette, OBJ_PLTT, 128);
    DmaTransfer32(gRoomHeader.backgroundPalette, BG_PLTT, 128);

    if (gLoadedTileAnimCount)
        gLoadedTileAnimCount = 0;

    if (gRoomHeader.tileData1Count)
    {
        if (!gRoomHeader.tileAnimations1)
        {
            switch (gRoomHeader.compression)
            {
            case 0: DmaTransfer32(gRoomHeader.tiledata1, BG_CHAR_ADDR(0), 8 * gRoomHeader.tileData1Count); break;
            case 1: LZ77UnCompReadNormalWrite16bit(gRoomHeader.tiledata1, BG_CHAR_ADDR(0)); break;
            case 2: HuffUnCompReadNormal(gRoomHeader.tiledata1, BG_CHAR_ADDR(0)); break;
            }
        }
        else
        {
            switch (gRoomHeader.compression)
            {
            case 0:
                DmaTransfer32(gRoomHeader.tiledata1,
                              TILE_SIZE_4BPP * gRoomHeader.tileAnimations1->tileAnimCount + BG_CHAR_ADDR(0),
                              8 * gRoomHeader.tileData1Count);
                break;
            case 1:
                LZ77UnCompReadNormalWrite16bit(gRoomHeader.tiledata1,
                                               TILE_SIZE_4BPP * gRoomHeader.tileAnimations1->tileAnimCount
                                                   + BG_CHAR_ADDR(0));
                break;
            case 2:
                HuffUnCompReadNormal(gRoomHeader.tiledata1,
                                     TILE_SIZE_4BPP * gRoomHeader.tileAnimations1->tileAnimCount + BG_CHAR_ADDR(0));
                break;
            }
            SetupAnimationTiles(gRoomHeader.tileAnimations1, BG_CHAR_ADDR(0));
        }
    }

    if (gRoomHeader.tileData2Count)
    {
        if (!gRoomHeader.tileAnimations2)
        {
            switch (gRoomHeader.compression)
            {
            case 0: DmaTransfer32(gRoomHeader.tiledata2, BG_CHAR_ADDR(2), 8 * gRoomHeader.tileData2Count); break;
            case 1: LZ77UnCompReadNormalWrite16bit(gRoomHeader.tiledata2, BG_CHAR_ADDR(2)); break;
            case 2: HuffUnCompReadNormal(gRoomHeader.tiledata2, BG_CHAR_ADDR(2)); break;
            }
        }
        else
        {
            switch (gRoomHeader.compression)
            {
            case 0:
                DmaTransfer32(gRoomHeader.tiledata2,
                              TILE_SIZE_4BPP * gRoomHeader.tileAnimations2->tileAnimCount + BG_CHAR_ADDR(2),
                              8 * gRoomHeader.tileData2Count);
                break;
            case 1:
                LZ77UnCompReadNormalWrite16bit(gRoomHeader.tiledata2,
                                               TILE_SIZE_4BPP * gRoomHeader.tileAnimations2->tileAnimCount
                                                   + BG_CHAR_ADDR(2));
                break;
            case 2:
                HuffUnCompReadNormal(gRoomHeader.tiledata2,
                                     TILE_SIZE_4BPP * gRoomHeader.tileAnimations2->tileAnimCount + BG_CHAR_ADDR(2));
                break;
            }
            SetupAnimationTiles(gRoomHeader.tileAnimations2, BG_CHAR_ADDR(2));
        }
    }

    gTilesCount = gRoomHeader.mapSizeX * gRoomHeader.mapSizeY;

    switch (gRoomHeader.enabledBGs)
    {
    case 1:
        displayBGFlag = (DISPCNT_BG0_ON) >> 8;
        REG_BG0CNT &= CHARBASE_MASK;
        if (!gRoomHeader.tilesetBG0)
        {
            gTileSetBG[0] = gRoomHeader.tileset1;
        }
        else
        {
            REG_BG0CNT |= BGCNT_CHARBASE(2);
            gTileSetBG[0] = gRoomHeader.tileset2;
        }
        break;
    case 2:
        displayBGFlag = (DISPCNT_BG0_ON | DISPCNT_BG1_ON) >> 8;
        REG_BG0CNT &= CHARBASE_MASK;
        REG_BG1CNT &= CHARBASE_MASK;
        if (!gRoomHeader.tilesetBG0)
        {
            gTileSetBG[0] = gRoomHeader.tileset1;
        }
        else
        {
            REG_BG0CNT |= BGCNT_CHARBASE(2);
            gTileSetBG[0] = gRoomHeader.tileset2;
        }

        if (!gRoomHeader.tilesetBG1)
        {
            gTileSetBG[1] = gRoomHeader.tileset1;
        }
        else
        {
            REG_BG1CNT |= BGCNT_CHARBASE(2);
            gTileSetBG[1] = gRoomHeader.tileset2;
        }
        break;
    case 3:
        displayBGFlag = (DISPCNT_BG0_ON | DISPCNT_BG1_ON | DISPCNT_BG2_ON) >> 8;
        REG_BG0CNT &= CHARBASE_MASK;
        REG_BG1CNT &= CHARBASE_MASK;
        REG_BG2CNT &= CHARBASE_MASK;
        if (!gRoomHeader.tilesetBG0)
        {
            gTileSetBG[0] = gRoomHeader.tileset1;
        }
        else
        {
            REG_BG0CNT |= BGCNT_CHARBASE(2);
            gTileSetBG[0] = gRoomHeader.tileset2;
        }

        if (!gRoomHeader.tilesetBG1)
        {
            gTileSetBG[1] = gRoomHeader.tileset1;
        }
        else
        {
            REG_BG1CNT |= BGCNT_CHARBASE(2);
            gTileSetBG[1] = gRoomHeader.tileset2;
        }

        if (!gRoomHeader.tilesetBG2)
        {
            gTileSetBG[2] = gRoomHeader.tileset1;
        }
        else
        {
            REG_BG2CNT |= BGCNT_CHARBASE(2);
            gTileSetBG[2] = gRoomHeader.tileset2;
        }
        break;
    case 4:
        displayBGFlag = (DISPCNT_BG0_ON | DISPCNT_BG1_ON | DISPCNT_BG2_ON | DISPCNT_BG3_ON) >> 8;
        REG_BG0CNT &= CHARBASE_MASK;
        REG_BG1CNT &= CHARBASE_MASK;
        REG_BG2CNT &= CHARBASE_MASK;
        REG_BG3CNT &= CHARBASE_MASK;
        if (!gRoomHeader.tilesetBG0)
        {
            gTileSetBG[0] = gRoomHeader.tileset1;
        }
        else
        {
            REG_BG0CNT |= BGCNT_CHARBASE(2);
            gTileSetBG[0] = gRoomHeader.tileset2;
        }

        if (!gRoomHeader.tilesetBG1)
        {
            gTileSetBG[1] = gRoomHeader.tileset1;
        }
        else
        {
            REG_BG1CNT |= BGCNT_CHARBASE(2);
            gTileSetBG[1] = gRoomHeader.tileset2;
        }

        if (!gRoomHeader.tilesetBG2)
        {
            gTileSetBG[2] = gRoomHeader.tileset1;
        }
        else
        {
            REG_BG2CNT |= BGCNT_CHARBASE(2);
            gTileSetBG[2] = gRoomHeader.tileset2;
        }

        if (!gRoomHeader.tilesetBG3)
        {
            gTileSetBG[3] = gRoomHeader.tileset1;
        }
        else
        {
            REG_BG3CNT |= BGCNT_CHARBASE(2);
            gTileSetBG[3] = gRoomHeader.tileset2;
        }
        break;
    default: ASSERT(0);
    }

    REG_DISPCNT &= ~DISPCNT_BG_ALL_ON;
    REG_DISPCNT |= displayBGFlag << 8;
    SetupBGOffsets();
    gBGControlActions = 0;
}

void sub_08012E90(u32 room)
{
    u16 displayBGFlag = 0;

    ASSERT(room < ROOM_COUNT);

    gLoadedTileAnimCount = 0;
    gTileAnimQueueIndex = 0;

    gLoadedRoomIndex = room;

    if (gLoadedRoomLevel != dRoomIndexes[room].level && dRoomIndexes[room].level != 255)
        sub_800A710(dRoomIndexes[room].level);

    if (gLoadedRoomBgm != dRoomIndexes[room].music)
    {
        gLoadedRoomBgm = dRoomIndexes[room].music;
        if (gCanChangeBgm)
            audio_start_tune(gLoadedRoomBgm);
    }

    DmaTransfer32(dRoomIndexes[room].room, &gRoomHeader, 25);

    gEnabledBGs = gRoomHeader.enabledBGs;

    if (*gRoomHeader.unknown3 > 255)
        HANG;

    FreeById(1, 21);
    gEntitySection = 0;

    DmaTransfer32(gRoomHeader.spritePalette, OBJ_PLTT, 128);

    gMapPixelSizeX = 32 * gRoomHeader.mapSizeX;
    gMapPixelSizeY = 32 * gRoomHeader.mapSizeY;
    gBG0Static = gRoomHeader.isStaticBG0;
    gBG1Static = gRoomHeader.isStaticBG1;
    gBG2Static = gRoomHeader.isStaticBG2;
    gBG3Static = gRoomHeader.isStaticBG3;

    DmaTransfer32(gRoomHeader.backgroundPalette, BG_PLTT, 128);

    if (gLoadedTileAnimCount)
        gLoadedTileAnimCount = 0;

    if (gRoomHeader.tileData1Count)
    {
        if (!gRoomHeader.tileAnimations1)
        {
            switch (gRoomHeader.compression)
            {
            case 0: DmaTransfer32(gRoomHeader.tiledata1, BG_CHAR_ADDR(0), 8 * gRoomHeader.tileData1Count); break;
            case 1: LZ77UnCompReadNormalWrite16bit(gRoomHeader.tiledata1, BG_CHAR_ADDR(0)); break;
            case 2: HuffUnCompReadNormal(gRoomHeader.tiledata1, BG_CHAR_ADDR(0)); break;
            }
        }
        else
        {
            switch (gRoomHeader.compression)
            {
            case 0:
                DmaTransfer32(gRoomHeader.tiledata1,
                              TILE_SIZE_4BPP * gRoomHeader.tileAnimations1->tileAnimCount + BG_CHAR_ADDR(0),
                              8 * gRoomHeader.tileData1Count);
                break;
            case 1:
                LZ77UnCompReadNormalWrite16bit(gRoomHeader.tiledata1,
                                               TILE_SIZE_4BPP * gRoomHeader.tileAnimations1->tileAnimCount
                                                   + BG_CHAR_ADDR(0));
                break;
            case 2:
                HuffUnCompReadNormal(gRoomHeader.tiledata1,
                                     TILE_SIZE_4BPP * gRoomHeader.tileAnimations1->tileAnimCount + BG_CHAR_ADDR(0));
                break;
            }
            SetupAnimationTiles(gRoomHeader.tileAnimations1, BG_CHAR_ADDR(0));
        }
    }

    if (gRoomHeader.tileData2Count)
    {
        if (!gRoomHeader.tileAnimations2)
        {
            switch (gRoomHeader.compression)
            {
            case 0: DmaTransfer32(gRoomHeader.tiledata2, BG_CHAR_ADDR(2), 8 * gRoomHeader.tileData2Count); break;
            case 1: LZ77UnCompReadNormalWrite16bit(gRoomHeader.tiledata2, BG_CHAR_ADDR(2)); break;
            case 2: HuffUnCompReadNormal(gRoomHeader.tiledata2, BG_CHAR_ADDR(2)); break;
            }
        }
        else
        {
            switch (gRoomHeader.compression)
            {
            case 0:
                DmaTransfer32(gRoomHeader.tiledata2,
                              TILE_SIZE_4BPP * gRoomHeader.tileAnimations2->tileAnimCount + BG_CHAR_ADDR(2),
                              8 * gRoomHeader.tileData2Count);
                break;
            case 1:
                LZ77UnCompReadNormalWrite16bit(gRoomHeader.tiledata2,
                                               TILE_SIZE_4BPP * gRoomHeader.tileAnimations2->tileAnimCount
                                                   + BG_CHAR_ADDR(2));
                break;
            case 2:
                HuffUnCompReadNormal(gRoomHeader.tiledata2,
                                     TILE_SIZE_4BPP * gRoomHeader.tileAnimations2->tileAnimCount + BG_CHAR_ADDR(2));
                break;
            }
            SetupAnimationTiles(gRoomHeader.tileAnimations2, BG_CHAR_ADDR(2));
        }
    }

    gTilesCount = gRoomHeader.mapSizeX * gRoomHeader.mapSizeY;

    switch (gRoomHeader.enabledBGs)
    {
    case 1:
        displayBGFlag = (DISPCNT_BG0_ON) >> 8;
        REG_BG0CNT &= CHARBASE_MASK;
        if (!gRoomHeader.tilesetBG0)
        {
            gTileSetBG[0] = gRoomHeader.tileset1;
        }
        else
        {
            REG_BG0CNT |= BGCNT_CHARBASE(2);
            gTileSetBG[0] = gRoomHeader.tileset2;
        }
        break;
    case 2:
        displayBGFlag = (DISPCNT_BG0_ON | DISPCNT_BG1_ON) >> 8;
        REG_BG0CNT &= CHARBASE_MASK;
        REG_BG1CNT &= CHARBASE_MASK;
        if (!gRoomHeader.tilesetBG0)
        {
            gTileSetBG[0] = gRoomHeader.tileset1;
        }
        else
        {
            REG_BG0CNT |= BGCNT_CHARBASE(2);
            gTileSetBG[0] = gRoomHeader.tileset2;
        }

        if (!gRoomHeader.tilesetBG1)
        {
            gTileSetBG[1] = gRoomHeader.tileset1;
        }
        else
        {
            REG_BG1CNT |= BGCNT_CHARBASE(2);
            gTileSetBG[1] = gRoomHeader.tileset2;
        }
        break;
    case 3:
        displayBGFlag = (DISPCNT_BG0_ON | DISPCNT_BG1_ON | DISPCNT_BG2_ON) >> 8;
        REG_BG0CNT &= CHARBASE_MASK;
        REG_BG1CNT &= CHARBASE_MASK;
        REG_BG2CNT &= CHARBASE_MASK;
        if (!gRoomHeader.tilesetBG0)
        {
            gTileSetBG[0] = gRoomHeader.tileset1;
        }
        else
        {
            REG_BG0CNT |= BGCNT_CHARBASE(2);
            gTileSetBG[0] = gRoomHeader.tileset2;
        }

        if (!gRoomHeader.tilesetBG1)
        {
            gTileSetBG[1] = gRoomHeader.tileset1;
        }
        else
        {
            REG_BG1CNT |= BGCNT_CHARBASE(2);
            gTileSetBG[1] = gRoomHeader.tileset2;
        }

        if (!gRoomHeader.tilesetBG2)
        {
            gTileSetBG[2] = gRoomHeader.tileset1;
        }
        else
        {
            REG_BG2CNT |= BGCNT_CHARBASE(2);
            gTileSetBG[2] = gRoomHeader.tileset2;
        }
        break;
    case 4:
        displayBGFlag = (DISPCNT_BG0_ON | DISPCNT_BG1_ON | DISPCNT_BG2_ON | DISPCNT_BG3_ON) >> 8;
        REG_BG0CNT &= CHARBASE_MASK;
        REG_BG1CNT &= CHARBASE_MASK;
        REG_BG2CNT &= CHARBASE_MASK;
        REG_BG3CNT &= CHARBASE_MASK;
        if (!gRoomHeader.tilesetBG0)
        {
            gTileSetBG[0] = gRoomHeader.tileset1;
        }
        else
        {
            REG_BG0CNT |= BGCNT_CHARBASE(2);
            gTileSetBG[0] = gRoomHeader.tileset2;
        }

        if (!gRoomHeader.tilesetBG1)
        {
            gTileSetBG[1] = gRoomHeader.tileset1;
        }
        else
        {
            REG_BG1CNT |= BGCNT_CHARBASE(2);
            gTileSetBG[1] = gRoomHeader.tileset2;
        }

        if (!gRoomHeader.tilesetBG2)
        {
            gTileSetBG[2] = gRoomHeader.tileset1;
        }
        else
        {
            REG_BG2CNT |= BGCNT_CHARBASE(2);
            gTileSetBG[2] = gRoomHeader.tileset2;
        }

        if (!gRoomHeader.tilesetBG3)
        {
            gTileSetBG[3] = gRoomHeader.tileset1;
        }
        else
        {
            REG_BG3CNT |= BGCNT_CHARBASE(2);
            gTileSetBG[3] = gRoomHeader.tileset2;
        }
        break;
    default: ASSERT(0);
    }

    REG_DISPCNT &= ~DISPCNT_BG_ALL_ON;
    REG_DISPCNT |= displayBGFlag << 8;

    gBGInitOffsetHorizontal = 0;
    gBGInitOffsetVertical = 0;
    SetupBGOffsets();
    gBGControlActions = 0;
}

void sub_08013378(u32 room, u32 a2, u32 a3, u32 a4, u32 a5)
{
    u16 displayBGFlag = 0;

    ASSERT(room < ROOM_COUNT);

    gLoadedTileAnimCount = 0;
    gTileAnimQueueIndex = 0;

    gLoadedRoomIndex = room;

    if (gLoadedRoomLevel != dRoomIndexes[room].level && dRoomIndexes[room].level != 255)
        sub_800A710(dRoomIndexes[room].level);

    if (gLoadedRoomBgm != dRoomIndexes[room].music)
    {
        gLoadedRoomBgm = dRoomIndexes[room].music;
        if (gCanChangeBgm)
            audio_start_tune(gLoadedRoomBgm);
    }

    DmaTransfer32(dRoomIndexes[room].room, &gRoomHeader, 25);

    gEnabledBGs = gRoomHeader.enabledBGs;

    if (*gRoomHeader.unknown3 > 255)
        HANG;

    gMapPixelSizeX = 32 * gRoomHeader.mapSizeX;
    gMapPixelSizeY = 32 * gRoomHeader.mapSizeY;
    gBG0Static = gRoomHeader.isStaticBG0;
    gBG1Static = gRoomHeader.isStaticBG1;
    gBG2Static = gRoomHeader.isStaticBG2;
    gBG3Static = gRoomHeader.isStaticBG3;

    setup_collision_xyz(gRoomHeader.collision, a2, a3, a4);
    sub_8038FA0(gLoadedRoomLevel);
    setup_entities(room, a5, gRoomHeader.entities);

    DmaTransfer32(gRoomHeader.spritePalette, OBJ_PLTT, 128);
    DmaTransfer32(gRoomHeader.backgroundPalette, BG_PLTT, 128);

    if (gLoadedTileAnimCount)
        gLoadedTileAnimCount = 0;

    if (gRoomHeader.tileData1Count)
    {
        if (!gRoomHeader.tileAnimations1)
        {
            switch (gRoomHeader.compression)
            {
            case 0: DmaTransfer32(gRoomHeader.tiledata1, BG_CHAR_ADDR(0), 8 * gRoomHeader.tileData1Count); break;
            case 1: LZ77UnCompReadNormalWrite16bit(gRoomHeader.tiledata1, BG_CHAR_ADDR(0)); break;
            case 2: HuffUnCompReadNormal(gRoomHeader.tiledata1, BG_CHAR_ADDR(0)); break;
            }
        }
        else
        {
            switch (gRoomHeader.compression)
            {
            case 0:
                DmaTransfer32(gRoomHeader.tiledata1,
                              TILE_SIZE_4BPP * gRoomHeader.tileAnimations1->tileAnimCount + BG_CHAR_ADDR(0),
                              8 * gRoomHeader.tileData1Count);
                break;
            case 1:
                LZ77UnCompReadNormalWrite16bit(gRoomHeader.tiledata1,
                                               TILE_SIZE_4BPP * gRoomHeader.tileAnimations1->tileAnimCount
                                                   + BG_CHAR_ADDR(0));
                break;
            case 2:
                HuffUnCompReadNormal(gRoomHeader.tiledata1,
                                     TILE_SIZE_4BPP * gRoomHeader.tileAnimations1->tileAnimCount + BG_CHAR_ADDR(0));
                break;
            }
            SetupAnimationTiles(gRoomHeader.tileAnimations1, BG_CHAR_ADDR(0));
        }
    }

    if (gRoomHeader.tileData2Count)
    {
        if (!gRoomHeader.tileAnimations2)
        {
            switch (gRoomHeader.compression)
            {
            case 0: DmaTransfer32(gRoomHeader.tiledata2, BG_CHAR_ADDR(2), 8 * gRoomHeader.tileData2Count); break;
            case 1: LZ77UnCompReadNormalWrite16bit(gRoomHeader.tiledata2, BG_CHAR_ADDR(2)); break;
            case 2: HuffUnCompReadNormal(gRoomHeader.tiledata2, BG_CHAR_ADDR(2)); break;
            }
        }
        else
        {
            switch (gRoomHeader.compression)
            {
            case 0:
                DmaTransfer32(gRoomHeader.tiledata2,
                              TILE_SIZE_4BPP * gRoomHeader.tileAnimations2->tileAnimCount + BG_CHAR_ADDR(2),
                              8 * gRoomHeader.tileData2Count);
                break;
            case 1:
                LZ77UnCompReadNormalWrite16bit(gRoomHeader.tiledata2,
                                               TILE_SIZE_4BPP * gRoomHeader.tileAnimations2->tileAnimCount
                                                   + BG_CHAR_ADDR(2));
                break;
            case 2:
                HuffUnCompReadNormal(gRoomHeader.tiledata2,
                                     TILE_SIZE_4BPP * gRoomHeader.tileAnimations2->tileAnimCount + BG_CHAR_ADDR(2));
                break;
            }
            SetupAnimationTiles(gRoomHeader.tileAnimations2, BG_CHAR_ADDR(2));
        }
    }

    gTilesCount = gRoomHeader.mapSizeX * gRoomHeader.mapSizeY;

    switch (gRoomHeader.enabledBGs)
    {
    case 1:
        displayBGFlag = (DISPCNT_BG0_ON) >> 8;
        REG_BG0CNT &= CHARBASE_MASK;
        if (!gRoomHeader.tilesetBG0)
        {
            gTileSetBG[0] = gRoomHeader.tileset1;
        }
        else
        {
            REG_BG0CNT |= BGCNT_CHARBASE(2);
            gTileSetBG[0] = gRoomHeader.tileset2;
        }
        break;
    case 2:
        displayBGFlag = (DISPCNT_BG0_ON | DISPCNT_BG1_ON) >> 8;
        REG_BG0CNT &= CHARBASE_MASK;
        REG_BG1CNT &= CHARBASE_MASK;
        if (!gRoomHeader.tilesetBG0)
        {
            gTileSetBG[0] = gRoomHeader.tileset1;
        }
        else
        {
            REG_BG0CNT |= BGCNT_CHARBASE(2);
            gTileSetBG[0] = gRoomHeader.tileset2;
        }

        if (!gRoomHeader.tilesetBG1)
        {
            gTileSetBG[1] = gRoomHeader.tileset1;
        }
        else
        {
            REG_BG1CNT |= BGCNT_CHARBASE(2);
            gTileSetBG[1] = gRoomHeader.tileset2;
        }
        break;
    case 3:
        displayBGFlag = (DISPCNT_BG0_ON | DISPCNT_BG1_ON | DISPCNT_BG2_ON) >> 8;
        REG_BG0CNT &= CHARBASE_MASK;
        REG_BG1CNT &= CHARBASE_MASK;
        REG_BG2CNT &= CHARBASE_MASK;
        if (!gRoomHeader.tilesetBG0)
        {
            gTileSetBG[0] = gRoomHeader.tileset1;
        }
        else
        {
            REG_BG0CNT |= BGCNT_CHARBASE(2);
            gTileSetBG[0] = gRoomHeader.tileset2;
        }

        if (!gRoomHeader.tilesetBG1)
        {
            gTileSetBG[1] = gRoomHeader.tileset1;
        }
        else
        {
            REG_BG1CNT |= BGCNT_CHARBASE(2);
            gTileSetBG[1] = gRoomHeader.tileset2;
        }

        if (!gRoomHeader.tilesetBG2)
        {
            gTileSetBG[2] = gRoomHeader.tileset1;
        }
        else
        {
            REG_BG2CNT |= BGCNT_CHARBASE(2);
            gTileSetBG[2] = gRoomHeader.tileset2;
        }
        break;
    case 4:
        displayBGFlag = (DISPCNT_BG0_ON | DISPCNT_BG1_ON | DISPCNT_BG2_ON | DISPCNT_BG3_ON) >> 8;
        REG_BG0CNT &= CHARBASE_MASK;
        REG_BG1CNT &= CHARBASE_MASK;
        REG_BG2CNT &= CHARBASE_MASK;
        REG_BG3CNT &= CHARBASE_MASK;
        if (!gRoomHeader.tilesetBG0)
        {
            gTileSetBG[0] = gRoomHeader.tileset1;
        }
        else
        {
            REG_BG0CNT |= BGCNT_CHARBASE(2);
            gTileSetBG[0] = gRoomHeader.tileset2;
        }

        if (!gRoomHeader.tilesetBG1)
        {
            gTileSetBG[1] = gRoomHeader.tileset1;
        }
        else
        {
            REG_BG1CNT |= BGCNT_CHARBASE(2);
            gTileSetBG[1] = gRoomHeader.tileset2;
        }

        if (!gRoomHeader.tilesetBG2)
        {
            gTileSetBG[2] = gRoomHeader.tileset1;
        }
        else
        {
            REG_BG2CNT |= BGCNT_CHARBASE(2);
            gTileSetBG[2] = gRoomHeader.tileset2;
        }

        if (!gRoomHeader.tilesetBG3)
        {
            gTileSetBG[3] = gRoomHeader.tileset1;
        }
        else
        {
            REG_BG3CNT |= BGCNT_CHARBASE(2);
            gTileSetBG[3] = gRoomHeader.tileset2;
        }
        break;
    default: ASSERT(0);
    }

    REG_DISPCNT &= ~DISPCNT_BG_ALL_ON;
    REG_DISPCNT |= displayBGFlag << 8;
    SetupBGOffsets();
    gBGControlActions = 0;
}

void SetupAnimationTiles(struct TileAnimSection* animationTiles, u8* destiny)
{
    s32 i;

    ASSERT(animationTiles->tileAnimCount != 0);

    ASSERT(animationTiles->tileAnimCount + gLoadedTileAnimCount <= 255);

    for (i = 0; i < animationTiles->tileAnimCount; i++)
    {
        struct TileAnimIndex* index = &animationTiles->tileAnimIndexes[i];

        gTileAnimTable[gLoadedTileAnimCount].framesPerSecond = index->framesPerSecond;
        gTileAnimTable[gLoadedTileAnimCount].numberOfFrames = index->numberOfFrames;
        gTileAnimTable[gLoadedTileAnimCount].numberOfFramesCount = 0;
        gTileAnimTable[gLoadedTileAnimCount].framesPerSecondCount = 0;
        gTileAnimTable[gLoadedTileAnimCount].tileData = index->tileData;
        gTileAnimTable[gLoadedTileAnimCount].destiny = destiny + 32 * i;
        gLoadedTileAnimCount++;
    }
}

void sub_801392C()
{
    s32 i;

    if (gLoadedTileAnimCount == 0)
        return;

    if (dword_200031C == -1)
        return;

    if (dword_200031C)
    {
        dword_200031C--;
        return;
    }

    dword_200031C = dword_2000318;

    for (i = 0; i < gLoadedTileAnimCount; i++)
    {
        gTileAnimTable[i].numberOfFramesCount++;
        if (gTileAnimTable[i].numberOfFramesCount == gTileAnimTable[i].numberOfFrames)
            gTileAnimTable[i].numberOfFramesCount = 0;
        gTileAnimQueue[gTileAnimQueueIndex].field_0
            = gTileAnimTable[i].tileData + 32 * gTileAnimTable[i].numberOfFramesCount;
        gTileAnimQueue[gTileAnimQueueIndex].field_4 = gTileAnimTable[i].destiny;
        gTileAnimQueueIndex++;
    }
}
