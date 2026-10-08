#include "global.h"
#include "common.h"
#include "audio_b.h"
#include "main.h"
#include "heap.h"

struct Textbar {
    u8 unk0;
    u8 rowCount;
    u16 fillTile;
    u16 tiles[1];
};

static void SetupAnimationTiles(struct TileAnimSection* animationTiles, u8* destination);

u16 word_200145C;
u16 word_200145E;
u16 gBGInitOffsetHorizontal;
u16 gBGInitOffsetVertical;
u16 gPlayerInitPixelPosX;
u16 gPlayerInitPixelPosY;
s16 gCameraPixelX;
s16 gCameraPixelY;
bool8 byte_200146C;
u32 dword_2001470;
struct TileAnimTable_rt gTileAnimTable[255];
s32 gLoadedTileAnimCount;
u32 gTilesCount;
u8 byte_2002070;
u32 dword_2002074;
u32 dword_2002078;
u32 dword_200207C;
struct Textbar* dword_2002080;
u32 dword_2002084;
u32 dword_2002088;
u8 gBG0Static;
u8 gBG1Static;
u8 gBG2Static;
u8 gBG3Static;

void ResetTileAnimCount(void) {
    gLoadedTileAnimCount = 0;
    dword_2001470 = 0;
}

static void SetupBGOffsets(void) {
    if (gRoomHeader.isStaticBG0) {
        REG_BG0HOFS = 0;
        REG_BG0VOFS = 0;
    } else {
        REG_BG0HOFS = gBGInitOffsetHorizontal;
        REG_BG0VOFS = gBGInitOffsetVertical;
    }

    if (gRoomHeader.isStaticBG1) {
        REG_BG1HOFS = 0;
        REG_BG1VOFS = 0;
    } else {
        REG_BG1HOFS = gBGInitOffsetHorizontal;
        REG_BG1VOFS = gBGInitOffsetVertical;
    }

    if (gRoomHeader.isStaticBG2) {
        REG_BG2HOFS = 0;
        REG_BG2VOFS = 0;
    } else {
        REG_BG2HOFS = gBGInitOffsetHorizontal;
        REG_BG2VOFS = gBGInitOffsetVertical;
    }

    if (gRoomHeader.isStaticBG3) {
        REG_BG3HOFS = 0;
        REG_BG3VOFS = 0;
    } else {
        REG_BG3HOFS = gBGInitOffsetHorizontal;
        REG_BG3VOFS = gBGInitOffsetVertical;
    }

    gBGOffsetHorizontal = gBGInitOffsetHorizontal;
    gBGOffsetVertical = gBGInitOffsetVertical;
}

void sub_8012624(u16* a1, u16* a2) {
    *a1 = gBGOffsetHorizontal;
    *a2 = gBGOffsetVertical;
    gBGOffsetHorizontal = 0;
    gBGOffsetVertical = 0;
    byte_2002070 = gBGControlActions;
    gBGControlActions = 0;
}

void sub_8012654(s32 a1, s32 a2) {
    if (gRoomHeader.isStaticBG0) {
        REG_BG0HOFS = 0;
        REG_BG0VOFS = 0;
    } else {
        REG_BG0HOFS = a1;
        REG_BG0VOFS = a2;
    }

    if (gRoomHeader.isStaticBG1) {
        REG_BG1HOFS = 0;
        REG_BG1VOFS = 0;
    } else {
        REG_BG1HOFS = a1;
        REG_BG1VOFS = a2;
    }

    if (gRoomHeader.isStaticBG2) {
        REG_BG2HOFS = 0;
        REG_BG2VOFS = 0;
    } else {
        REG_BG2HOFS = a1;
        REG_BG2VOFS = a2;
    }

    if (gRoomHeader.isStaticBG3) {
        REG_BG3HOFS = 0;
        REG_BG3VOFS = 0;
    } else {
        REG_BG3HOFS = a1;
        REG_BG3VOFS = a2;
    }

    gBGOffsetHorizontal = a1;
    gBGOffsetVertical = a2;
    gBGControlActions = byte_2002070;
}

void sub_8012728(s32 a1) {
    if (gRoomHeader.isStaticBG0) {
        REG_BG0VOFS = 0;
    } else {
        REG_BG0VOFS = a1;
    }

    if (gRoomHeader.isStaticBG1) {
        REG_BG1VOFS = 0;
    } else {
        REG_BG1VOFS = a1;
    }

    if (gRoomHeader.isStaticBG2) {
        REG_BG2VOFS = 0;
    } else {
        REG_BG2VOFS = a1;
    }

    if (gRoomHeader.isStaticBG3) {
        REG_BG3VOFS = 0;
    } else {
        REG_BG3VOFS = a1;
    }
}

void sub_80127B8(s32 a1) {
    if (gRoomHeader.isStaticBG0) {
        REG_BG0HOFS = 0;
    } else {
        REG_BG0HOFS = a1;
    }

    if (gRoomHeader.isStaticBG1) {
        REG_BG1HOFS = 0;
    } else {
        REG_BG1HOFS = a1;
    }

    if (gRoomHeader.isStaticBG2) {
        REG_BG2HOFS = 0;
    } else {
        REG_BG2HOFS = a1;
    }

    if (gRoomHeader.isStaticBG3) {
        REG_BG3HOFS = 0;
    } else {
        REG_BG3HOFS = a1;
    }
}

void EnableBGAlphaBlending(void) {
    gColorSpecEffectsSel = BLDCNT_TGT2_ALL;

    if (gRoomHeader.isControllableBG0) {
        gColorSpecEffectsSel |= BLDCNT_EFFECT_BLEND | BLDCNT_TGT1_BG0;
    }

    if (gRoomHeader.isControllableBG1) {
        gColorSpecEffectsSel |= BLDCNT_EFFECT_BLEND | BLDCNT_TGT1_BG1;
    }

    if (gRoomHeader.isControllableBG2) {
        gColorSpecEffectsSel |= BLDCNT_EFFECT_BLEND | BLDCNT_TGT1_BG2;
    }

    if (gRoomHeader.isControllableBG3) {
        gColorSpecEffectsSel |= BLDCNT_EFFECT_BLEND | BLDCNT_TGT1_BG3;
    }
}

void DisableBackgrounds(void) {
    if (gRoomHeader.isControllableBG0) {
        REG_DISPCNT &= ~DISPCNT_BG0_ON;
    }

    if (gRoomHeader.isControllableBG1) {
        REG_DISPCNT &= ~DISPCNT_BG1_ON;
    }

    if (gRoomHeader.isControllableBG2) {
        REG_DISPCNT &= ~DISPCNT_BG2_ON;
    }

    if (gRoomHeader.isControllableBG3) {
        REG_DISPCNT &= ~DISPCNT_BG3_ON;
    }
}

void EnableBackgrounds(void) {
    if (gRoomHeader.isControllableBG0) {
        REG_DISPCNT |= DISPCNT_BG0_ON;
    }

    if (gRoomHeader.isControllableBG1) {
        REG_DISPCNT |= DISPCNT_BG1_ON;
    }

    if (gRoomHeader.isControllableBG2) {
        REG_DISPCNT |= DISPCNT_BG2_ON;
    }

    if (gRoomHeader.isControllableBG3) {
        REG_DISPCNT |= DISPCNT_BG3_ON;
    }
}

#define CHARBASE_MASK ~BGCNT_CHARBASE(3)

void SetupRoom(u32 room, u32 warp, bool32 changeMusic, enum RoomLoadMode mode) {
    u16 displayBGFlag = 0;

    ASSERT(room < ROOM_COUNT);

    gLoadedTileAnimCount = 0;
    gTileAnimQueueIndex = 0;

    gLoadedRoomIndex = room;

    if (gLoadedRoomLevel != dRoomIndexes[room].level && dRoomIndexes[room].level != LEVEL_NONE) {
        sub_800A710(dRoomIndexes[room].level);
    }

    if (changeMusic && gLoadedRoomBgm != dRoomIndexes[room].music) {
        gLoadedRoomBgm = dRoomIndexes[room].music;
        if (gCanChangeBgm) {
            audio_start_tune(gLoadedRoomBgm);
        }
    }

    DmaTransfer32(dRoomIndexes[room].room, &gRoomHeader, 25);

    gEnabledBGs = gRoomHeader.enabledBGs;

    ASSERT(*gRoomHeader.unknown3 <= 255);

    gMapPixelSizeX = 32 * gRoomHeader.mapSizeX;
    gMapPixelSizeY = 32 * gRoomHeader.mapSizeY;
    gBG0Static = gRoomHeader.isStaticBG0;
    gBG1Static = gRoomHeader.isStaticBG1;
    gBG2Static = gRoomHeader.isStaticBG2;
    gBG3Static = gRoomHeader.isStaticBG3;

    setup_collision_warp(gRoomHeader.collision, warp);
    sub_8038FA0(gLoadedRoomLevel);
    setup_entities(room, mode, gRoomHeader.entities);
    DmaTransfer32(gRoomHeader.spritePalette, (void*)OBJ_PLTT, 128);
    DmaTransfer32(gRoomHeader.backgroundPalette, (void*)BG_PLTT, 128);

    if (gLoadedTileAnimCount) {
        gLoadedTileAnimCount = 0;
    }

    if (gRoomHeader.tileData1Count) {
        if (!gRoomHeader.tileAnimations1) {
            switch (gRoomHeader.compression) {
                case 0:
                    DmaTransfer32(gRoomHeader.tiledata1, (void*)BG_CHAR_ADDR(0),
                                  8 * gRoomHeader.tileData1Count);
                    break;

                case 1:
                    LZ77UnCompReadNormalWrite16bit(gRoomHeader.tiledata1, (void*)BG_CHAR_ADDR(0));
                    break;

                case 2:
                    HuffUnCompReadNormal(gRoomHeader.tiledata1, (void*)BG_CHAR_ADDR(0));
                    break;
            }
        } else {
            switch (gRoomHeader.compression) {
                case 0:
                    DmaTransfer32(gRoomHeader.tiledata1,
                                  (void*)(TILE_SIZE_4BPP * gRoomHeader.tileAnimations1->tileAnimCount
                                          + BG_CHAR_ADDR(0)),
                                  8 * gRoomHeader.tileData1Count);
                    break;

                case 1:
                    LZ77UnCompReadNormalWrite16bit(
                        gRoomHeader.tiledata1,
                        (void*)(TILE_SIZE_4BPP * gRoomHeader.tileAnimations1->tileAnimCount
                                + BG_CHAR_ADDR(0)));
                    break;

                case 2:
                    HuffUnCompReadNormal(
                        gRoomHeader.tiledata1,
                        (void*)(TILE_SIZE_4BPP * gRoomHeader.tileAnimations1->tileAnimCount
                                + BG_CHAR_ADDR(0)));
                    break;
            }

            SetupAnimationTiles(gRoomHeader.tileAnimations1, (void*)BG_CHAR_ADDR(0));
        }
    }

    if (gRoomHeader.tileData2Count) {
        if (!gRoomHeader.tileAnimations2) {
            switch (gRoomHeader.compression) {
                case 0:
                    DmaTransfer32(gRoomHeader.tiledata2, (void*)BG_CHAR_ADDR(2),
                                  8 * gRoomHeader.tileData2Count);
                    break;

                case 1:
                    LZ77UnCompReadNormalWrite16bit(gRoomHeader.tiledata2, (void*)BG_CHAR_ADDR(2));
                    break;

                case 2:
                    HuffUnCompReadNormal(gRoomHeader.tiledata2, (void*)BG_CHAR_ADDR(2));
                    break;
            }
        } else {
            switch (gRoomHeader.compression) {
                case 0:
                    DmaTransfer32(gRoomHeader.tiledata2,
                                  (void*)(TILE_SIZE_4BPP * gRoomHeader.tileAnimations2->tileAnimCount
                                          + BG_CHAR_ADDR(2)),
                                  8 * gRoomHeader.tileData2Count);
                    break;

                case 1:
                    LZ77UnCompReadNormalWrite16bit(
                        gRoomHeader.tiledata2,
                        (void*)(TILE_SIZE_4BPP * gRoomHeader.tileAnimations2->tileAnimCount
                                + BG_CHAR_ADDR(2)));
                    break;

                case 2:
                    HuffUnCompReadNormal(
                        gRoomHeader.tiledata2,
                        (void*)(TILE_SIZE_4BPP * gRoomHeader.tileAnimations2->tileAnimCount
                                + BG_CHAR_ADDR(2)));
                    break;
            }

            SetupAnimationTiles(gRoomHeader.tileAnimations2, (void*)BG_CHAR_ADDR(2));
        }
    }

    gTilesCount = gRoomHeader.mapSizeX * gRoomHeader.mapSizeY;

    switch (gRoomHeader.enabledBGs) {
        case 1:
            displayBGFlag = (DISPCNT_BG0_ON) >> 8;
            REG_BG0CNT &= CHARBASE_MASK;
            if (!gRoomHeader.tilesetBG0) {
                gTileSetBG[0] = gRoomHeader.tileset1;
            } else {
                REG_BG0CNT |= BGCNT_CHARBASE(2);
                gTileSetBG[0] = gRoomHeader.tileset2;
            }
            break;

        case 2:
            displayBGFlag = (DISPCNT_BG0_ON | DISPCNT_BG1_ON) >> 8;
            REG_BG0CNT &= CHARBASE_MASK;
            REG_BG1CNT &= CHARBASE_MASK;
            if (!gRoomHeader.tilesetBG0) {
                gTileSetBG[0] = gRoomHeader.tileset1;
            } else {
                REG_BG0CNT |= BGCNT_CHARBASE(2);
                gTileSetBG[0] = gRoomHeader.tileset2;
            }

            if (!gRoomHeader.tilesetBG1) {
                gTileSetBG[1] = gRoomHeader.tileset1;
            } else {
                REG_BG1CNT |= BGCNT_CHARBASE(2);
                gTileSetBG[1] = gRoomHeader.tileset2;
            }
            break;

        case 3:
            displayBGFlag = (DISPCNT_BG0_ON | DISPCNT_BG1_ON | DISPCNT_BG2_ON) >> 8;
            REG_BG0CNT &= CHARBASE_MASK;
            REG_BG1CNT &= CHARBASE_MASK;
            REG_BG2CNT &= CHARBASE_MASK;
            if (!gRoomHeader.tilesetBG0) {
                gTileSetBG[0] = gRoomHeader.tileset1;
            } else {
                REG_BG0CNT |= BGCNT_CHARBASE(2);
                gTileSetBG[0] = gRoomHeader.tileset2;
            }

            if (!gRoomHeader.tilesetBG1) {
                gTileSetBG[1] = gRoomHeader.tileset1;
            } else {
                REG_BG1CNT |= BGCNT_CHARBASE(2);
                gTileSetBG[1] = gRoomHeader.tileset2;
            }

            if (!gRoomHeader.tilesetBG2) {
                gTileSetBG[2] = gRoomHeader.tileset1;
            } else {
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
            if (!gRoomHeader.tilesetBG0) {
                gTileSetBG[0] = gRoomHeader.tileset1;
            } else {
                REG_BG0CNT |= BGCNT_CHARBASE(2);
                gTileSetBG[0] = gRoomHeader.tileset2;
            }

            if (!gRoomHeader.tilesetBG1) {
                gTileSetBG[1] = gRoomHeader.tileset1;
            } else {
                REG_BG1CNT |= BGCNT_CHARBASE(2);
                gTileSetBG[1] = gRoomHeader.tileset2;
            }

            if (!gRoomHeader.tilesetBG2) {
                gTileSetBG[2] = gRoomHeader.tileset1;
            } else {
                REG_BG2CNT |= BGCNT_CHARBASE(2);
                gTileSetBG[2] = gRoomHeader.tileset2;
            }

            if (!gRoomHeader.tilesetBG3) {
                gTileSetBG[3] = gRoomHeader.tileset1;
            } else {
                REG_BG3CNT |= BGCNT_CHARBASE(2);
                gTileSetBG[3] = gRoomHeader.tileset2;
            }
            break;

        default:
            ASSERT(0);
    }

    REG_DISPCNT &= ~DISPCNT_BG_ALL_ON;
    REG_DISPCNT |= displayBGFlag << 8;
    SetupBGOffsets();
    gBGControlActions = 0;
}

void sub_08012E90(u32 room) {
    u16 displayBGFlag = 0;

    ASSERT(room < ROOM_COUNT);

    gLoadedTileAnimCount = 0;
    gTileAnimQueueIndex = 0;

    gLoadedRoomIndex = room;

    if (gLoadedRoomLevel != dRoomIndexes[room].level && dRoomIndexes[room].level != 255) {
        sub_800A710(dRoomIndexes[room].level);
    }

    if (gLoadedRoomBgm != dRoomIndexes[room].music) {
        gLoadedRoomBgm = dRoomIndexes[room].music;
        if (gCanChangeBgm) {
            audio_start_tune(gLoadedRoomBgm);
        }
    }

    DmaTransfer32(dRoomIndexes[room].room, &gRoomHeader, 25);

    gEnabledBGs = gRoomHeader.enabledBGs;

    ASSERT(*gRoomHeader.unknown3 <= 255);

    heap_free_by_tag(HEAP_2, 21);
    gEntitySection = 0;

    DmaTransfer32(gRoomHeader.spritePalette, (void*)OBJ_PLTT, 128);

    gMapPixelSizeX = 32 * gRoomHeader.mapSizeX;
    gMapPixelSizeY = 32 * gRoomHeader.mapSizeY;
    gBG0Static = gRoomHeader.isStaticBG0;
    gBG1Static = gRoomHeader.isStaticBG1;
    gBG2Static = gRoomHeader.isStaticBG2;
    gBG3Static = gRoomHeader.isStaticBG3;

    DmaTransfer32(gRoomHeader.backgroundPalette, (void*)BG_PLTT, 128);

    if (gLoadedTileAnimCount) {
        gLoadedTileAnimCount = 0;
    }

    if (gRoomHeader.tileData1Count) {
        if (!gRoomHeader.tileAnimations1) {
            switch (gRoomHeader.compression) {
                case 0:
                    DmaTransfer32(gRoomHeader.tiledata1, (void*)BG_CHAR_ADDR(0),
                                  8 * gRoomHeader.tileData1Count);
                    break;

                case 1:
                    LZ77UnCompReadNormalWrite16bit(gRoomHeader.tiledata1, (void*)BG_CHAR_ADDR(0));
                    break;

                case 2:
                    HuffUnCompReadNormal(gRoomHeader.tiledata1, (void*)BG_CHAR_ADDR(0));
                    break;
            }
        } else {
            switch (gRoomHeader.compression) {
                case 0:
                    DmaTransfer32(gRoomHeader.tiledata1,
                                  (void*)(TILE_SIZE_4BPP * gRoomHeader.tileAnimations1->tileAnimCount
                                          + BG_CHAR_ADDR(0)),
                                  8 * gRoomHeader.tileData1Count);
                    break;

                case 1:
                    LZ77UnCompReadNormalWrite16bit(
                        gRoomHeader.tiledata1,
                        (void*)(TILE_SIZE_4BPP * gRoomHeader.tileAnimations1->tileAnimCount
                                + BG_CHAR_ADDR(0)));
                    break;

                case 2:
                    HuffUnCompReadNormal(
                        gRoomHeader.tiledata1,
                        (void*)(TILE_SIZE_4BPP * gRoomHeader.tileAnimations1->tileAnimCount
                                + BG_CHAR_ADDR(0)));
                    break;
            }
            SetupAnimationTiles(gRoomHeader.tileAnimations1, (void*)BG_CHAR_ADDR(0));
        }
    }

    if (gRoomHeader.tileData2Count) {
        if (!gRoomHeader.tileAnimations2) {
            switch (gRoomHeader.compression) {
                case 0:
                    DmaTransfer32(gRoomHeader.tiledata2, (void*)BG_CHAR_ADDR(2),
                                  8 * gRoomHeader.tileData2Count);
                    break;

                case 1:
                    LZ77UnCompReadNormalWrite16bit(gRoomHeader.tiledata2, (void*)BG_CHAR_ADDR(2));
                    break;

                case 2:
                    HuffUnCompReadNormal(gRoomHeader.tiledata2, (void*)BG_CHAR_ADDR(2));
                    break;
            }
        } else {
            switch (gRoomHeader.compression) {
                case 0:
                    DmaTransfer32(gRoomHeader.tiledata2,
                                  (void*)(TILE_SIZE_4BPP * gRoomHeader.tileAnimations2->tileAnimCount
                                          + BG_CHAR_ADDR(2)),
                                  8 * gRoomHeader.tileData2Count);
                    break;

                case 1:
                    LZ77UnCompReadNormalWrite16bit(
                        gRoomHeader.tiledata2,
                        (void*)(TILE_SIZE_4BPP * gRoomHeader.tileAnimations2->tileAnimCount
                                + BG_CHAR_ADDR(2)));
                    break;

                case 2:
                    HuffUnCompReadNormal(
                        gRoomHeader.tiledata2,
                        (void*)(TILE_SIZE_4BPP * gRoomHeader.tileAnimations2->tileAnimCount
                                + BG_CHAR_ADDR(2)));
                    break;
            }

            SetupAnimationTiles(gRoomHeader.tileAnimations2, (void*)BG_CHAR_ADDR(2));
        }
    }

    gTilesCount = gRoomHeader.mapSizeX * gRoomHeader.mapSizeY;

    switch (gRoomHeader.enabledBGs) {
        case 1:
            displayBGFlag = (DISPCNT_BG0_ON) >> 8;
            REG_BG0CNT &= CHARBASE_MASK;
            if (!gRoomHeader.tilesetBG0) {
                gTileSetBG[0] = gRoomHeader.tileset1;
            } else {
                REG_BG0CNT |= BGCNT_CHARBASE(2);
                gTileSetBG[0] = gRoomHeader.tileset2;
            }
            break;

        case 2:
            displayBGFlag = (DISPCNT_BG0_ON | DISPCNT_BG1_ON) >> 8;
            REG_BG0CNT &= CHARBASE_MASK;
            REG_BG1CNT &= CHARBASE_MASK;
            if (!gRoomHeader.tilesetBG0) {
                gTileSetBG[0] = gRoomHeader.tileset1;
            } else {
                REG_BG0CNT |= BGCNT_CHARBASE(2);
                gTileSetBG[0] = gRoomHeader.tileset2;
            }

            if (!gRoomHeader.tilesetBG1) {
                gTileSetBG[1] = gRoomHeader.tileset1;
            } else {
                REG_BG1CNT |= BGCNT_CHARBASE(2);
                gTileSetBG[1] = gRoomHeader.tileset2;
            }
            break;

        case 3:
            displayBGFlag = (DISPCNT_BG0_ON | DISPCNT_BG1_ON | DISPCNT_BG2_ON) >> 8;
            REG_BG0CNT &= CHARBASE_MASK;
            REG_BG1CNT &= CHARBASE_MASK;
            REG_BG2CNT &= CHARBASE_MASK;
            if (!gRoomHeader.tilesetBG0) {
                gTileSetBG[0] = gRoomHeader.tileset1;
            } else {
                REG_BG0CNT |= BGCNT_CHARBASE(2);
                gTileSetBG[0] = gRoomHeader.tileset2;
            }

            if (!gRoomHeader.tilesetBG1) {
                gTileSetBG[1] = gRoomHeader.tileset1;
            } else {
                REG_BG1CNT |= BGCNT_CHARBASE(2);
                gTileSetBG[1] = gRoomHeader.tileset2;
            }

            if (!gRoomHeader.tilesetBG2) {
                gTileSetBG[2] = gRoomHeader.tileset1;
            } else {
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
            if (!gRoomHeader.tilesetBG0) {
                gTileSetBG[0] = gRoomHeader.tileset1;
            } else {
                REG_BG0CNT |= BGCNT_CHARBASE(2);
                gTileSetBG[0] = gRoomHeader.tileset2;
            }

            if (!gRoomHeader.tilesetBG1) {
                gTileSetBG[1] = gRoomHeader.tileset1;
            } else {
                REG_BG1CNT |= BGCNT_CHARBASE(2);
                gTileSetBG[1] = gRoomHeader.tileset2;
            }

            if (!gRoomHeader.tilesetBG2) {
                gTileSetBG[2] = gRoomHeader.tileset1;
            } else {
                REG_BG2CNT |= BGCNT_CHARBASE(2);
                gTileSetBG[2] = gRoomHeader.tileset2;
            }

            if (!gRoomHeader.tilesetBG3) {
                gTileSetBG[3] = gRoomHeader.tileset1;
            } else {
                REG_BG3CNT |= BGCNT_CHARBASE(2);
                gTileSetBG[3] = gRoomHeader.tileset2;
            }
            break;

        default:
            ASSERT(0);
    }

    REG_DISPCNT &= ~DISPCNT_BG_ALL_ON;
    REG_DISPCNT |= displayBGFlag << 8;

    gBGInitOffsetHorizontal = 0;
    gBGInitOffsetVertical = 0;
    SetupBGOffsets();
    gBGControlActions = 0;
}

void sub_08013378(u32 room, u32 a2, u32 a3, u32 a4, enum RoomLoadMode mode) {
    u16 displayBGFlag = 0;

    ASSERT(room < ROOM_COUNT);

    gLoadedTileAnimCount = 0;
    gTileAnimQueueIndex = 0;

    gLoadedRoomIndex = room;

    if (gLoadedRoomLevel != dRoomIndexes[room].level && dRoomIndexes[room].level != 255) {
        sub_800A710(dRoomIndexes[room].level);
    }

    if (gLoadedRoomBgm != dRoomIndexes[room].music) {
        gLoadedRoomBgm = dRoomIndexes[room].music;
        if (gCanChangeBgm) {
            audio_start_tune(gLoadedRoomBgm);
        }
    }

    DmaTransfer32(dRoomIndexes[room].room, &gRoomHeader, 25);

    gEnabledBGs = gRoomHeader.enabledBGs;

    ASSERT(*gRoomHeader.unknown3 <= 255);

    gMapPixelSizeX = 32 * gRoomHeader.mapSizeX;
    gMapPixelSizeY = 32 * gRoomHeader.mapSizeY;
    gBG0Static = gRoomHeader.isStaticBG0;
    gBG1Static = gRoomHeader.isStaticBG1;
    gBG2Static = gRoomHeader.isStaticBG2;
    gBG3Static = gRoomHeader.isStaticBG3;

    setup_collision_xyz(gRoomHeader.collision, a2, a3, a4);
    sub_8038FA0(gLoadedRoomLevel);
    setup_entities(room, mode, gRoomHeader.entities);

    DmaTransfer32(gRoomHeader.spritePalette, (void*)OBJ_PLTT, 128);
    DmaTransfer32(gRoomHeader.backgroundPalette, (void*)BG_PLTT, 128);

    if (gLoadedTileAnimCount) {
        gLoadedTileAnimCount = 0;
    }

    if (gRoomHeader.tileData1Count) {
        if (!gRoomHeader.tileAnimations1) {
            switch (gRoomHeader.compression) {
                case 0:
                    DmaTransfer32(gRoomHeader.tiledata1, (void*)BG_CHAR_ADDR(0),
                                  8 * gRoomHeader.tileData1Count);
                    break;

                case 1:
                    LZ77UnCompReadNormalWrite16bit(gRoomHeader.tiledata1, (void*)BG_CHAR_ADDR(0));
                    break;

                case 2:
                    HuffUnCompReadNormal(gRoomHeader.tiledata1, (void*)BG_CHAR_ADDR(0));
                    break;
            }
        } else {
            switch (gRoomHeader.compression) {
                case 0:
                    DmaTransfer32(gRoomHeader.tiledata1,
                                  (void*)(TILE_SIZE_4BPP * gRoomHeader.tileAnimations1->tileAnimCount
                                          + BG_CHAR_ADDR(0)),
                                  8 * gRoomHeader.tileData1Count);
                    break;

                case 1:
                    LZ77UnCompReadNormalWrite16bit(
                        gRoomHeader.tiledata1,
                        (void*)(TILE_SIZE_4BPP * gRoomHeader.tileAnimations1->tileAnimCount
                                + BG_CHAR_ADDR(0)));
                    break;

                case 2:
                    HuffUnCompReadNormal(
                        gRoomHeader.tiledata1,
                        (void*)(TILE_SIZE_4BPP * gRoomHeader.tileAnimations1->tileAnimCount
                                + BG_CHAR_ADDR(0)));
                    break;
            }

            SetupAnimationTiles(gRoomHeader.tileAnimations1, (void*)BG_CHAR_ADDR(0));
        }
    }

    if (gRoomHeader.tileData2Count) {
        if (!gRoomHeader.tileAnimations2) {
            switch (gRoomHeader.compression) {
                case 0:
                    DmaTransfer32(gRoomHeader.tiledata2, (void*)BG_CHAR_ADDR(2),
                                  8 * gRoomHeader.tileData2Count);
                    break;

                case 1:
                    LZ77UnCompReadNormalWrite16bit(gRoomHeader.tiledata2, (void*)BG_CHAR_ADDR(2));
                    break;

                case 2:
                    HuffUnCompReadNormal(gRoomHeader.tiledata2, (void*)BG_CHAR_ADDR(2));
                    break;
            }
        } else {
            switch (gRoomHeader.compression) {
                case 0:
                    DmaTransfer32(gRoomHeader.tiledata2,
                                  (void*)(TILE_SIZE_4BPP * gRoomHeader.tileAnimations2->tileAnimCount
                                          + BG_CHAR_ADDR(2)),
                                  8 * gRoomHeader.tileData2Count);
                    break;

                case 1:
                    LZ77UnCompReadNormalWrite16bit(
                        gRoomHeader.tiledata2,
                        (void*)(TILE_SIZE_4BPP * gRoomHeader.tileAnimations2->tileAnimCount
                                + BG_CHAR_ADDR(2)));
                    break;

                case 2:
                    HuffUnCompReadNormal(
                        gRoomHeader.tiledata2,
                        (void*)(TILE_SIZE_4BPP * gRoomHeader.tileAnimations2->tileAnimCount
                                + BG_CHAR_ADDR(2)));
                    break;
            }

            SetupAnimationTiles(gRoomHeader.tileAnimations2, (void*)BG_CHAR_ADDR(2));
        }
    }

    gTilesCount = gRoomHeader.mapSizeX * gRoomHeader.mapSizeY;

    switch (gRoomHeader.enabledBGs) {
        case 1:
            displayBGFlag = (DISPCNT_BG0_ON) >> 8;
            REG_BG0CNT &= CHARBASE_MASK;
            if (!gRoomHeader.tilesetBG0) {
                gTileSetBG[0] = gRoomHeader.tileset1;
            } else {
                REG_BG0CNT |= BGCNT_CHARBASE(2);
                gTileSetBG[0] = gRoomHeader.tileset2;
            }
            break;

        case 2:
            displayBGFlag = (DISPCNT_BG0_ON | DISPCNT_BG1_ON) >> 8;
            REG_BG0CNT &= CHARBASE_MASK;
            REG_BG1CNT &= CHARBASE_MASK;
            if (!gRoomHeader.tilesetBG0) {
                gTileSetBG[0] = gRoomHeader.tileset1;
            } else {
                REG_BG0CNT |= BGCNT_CHARBASE(2);
                gTileSetBG[0] = gRoomHeader.tileset2;
            }

            if (!gRoomHeader.tilesetBG1) {
                gTileSetBG[1] = gRoomHeader.tileset1;
            } else {
                REG_BG1CNT |= BGCNT_CHARBASE(2);
                gTileSetBG[1] = gRoomHeader.tileset2;
            }
            break;

        case 3:
            displayBGFlag = (DISPCNT_BG0_ON | DISPCNT_BG1_ON | DISPCNT_BG2_ON) >> 8;
            REG_BG0CNT &= CHARBASE_MASK;
            REG_BG1CNT &= CHARBASE_MASK;
            REG_BG2CNT &= CHARBASE_MASK;
            if (!gRoomHeader.tilesetBG0) {
                gTileSetBG[0] = gRoomHeader.tileset1;
            } else {
                REG_BG0CNT |= BGCNT_CHARBASE(2);
                gTileSetBG[0] = gRoomHeader.tileset2;
            }

            if (!gRoomHeader.tilesetBG1) {
                gTileSetBG[1] = gRoomHeader.tileset1;
            } else {
                REG_BG1CNT |= BGCNT_CHARBASE(2);
                gTileSetBG[1] = gRoomHeader.tileset2;
            }

            if (!gRoomHeader.tilesetBG2) {
                gTileSetBG[2] = gRoomHeader.tileset1;
            } else {
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
            if (!gRoomHeader.tilesetBG0) {
                gTileSetBG[0] = gRoomHeader.tileset1;
            } else {
                REG_BG0CNT |= BGCNT_CHARBASE(2);
                gTileSetBG[0] = gRoomHeader.tileset2;
            }

            if (!gRoomHeader.tilesetBG1) {
                gTileSetBG[1] = gRoomHeader.tileset1;
            } else {
                REG_BG1CNT |= BGCNT_CHARBASE(2);
                gTileSetBG[1] = gRoomHeader.tileset2;
            }

            if (!gRoomHeader.tilesetBG2) {
                gTileSetBG[2] = gRoomHeader.tileset1;
            } else {
                REG_BG2CNT |= BGCNT_CHARBASE(2);
                gTileSetBG[2] = gRoomHeader.tileset2;
            }

            if (!gRoomHeader.tilesetBG3) {
                gTileSetBG[3] = gRoomHeader.tileset1;
            } else {
                REG_BG3CNT |= BGCNT_CHARBASE(2);
                gTileSetBG[3] = gRoomHeader.tileset2;
            }
            break;

        default:
            ASSERT(0);
    }

    REG_DISPCNT &= ~DISPCNT_BG_ALL_ON;
    REG_DISPCNT |= displayBGFlag << 8;
    SetupBGOffsets();
    gBGControlActions = 0;
}

static void SetupAnimationTiles(struct TileAnimSection* animationTiles, u8* destination) {
    s32 i;

    ASSERT(animationTiles->tileAnimCount != 0);

    ASSERT(animationTiles->tileAnimCount + gLoadedTileAnimCount <= 255);

    for (i = 0; i < animationTiles->tileAnimCount; i++) {
        struct TileAnimIndex* index = &animationTiles->tileAnimIndexes[i];

        gTileAnimTable[gLoadedTileAnimCount].framesPerSecond = index->framesPerSecond;
        gTileAnimTable[gLoadedTileAnimCount].numberOfFrames = index->numberOfFrames;
        gTileAnimTable[gLoadedTileAnimCount].numberOfFramesCount = 0;
        gTileAnimTable[gLoadedTileAnimCount].framesPerSecondCount = 0;
        gTileAnimTable[gLoadedTileAnimCount].tileData = index->tileData;
        gTileAnimTable[gLoadedTileAnimCount].destination = destination + 32 * i;
        gLoadedTileAnimCount++;
    }
}

void sub_801392C(void) {
    s32 i;

    if (gLoadedTileAnimCount == 0) {
        return;
    }

    if (dword_200031C == -1) {
        return;
    }

    if (dword_200031C) {
        dword_200031C--;
        return;
    }

    dword_200031C = dword_2000318;

    for (i = 0; i < gLoadedTileAnimCount; i++) {
        gTileAnimTable[i].numberOfFramesCount++;
        if (gTileAnimTable[i].numberOfFramesCount == gTileAnimTable[i].numberOfFrames) {
            gTileAnimTable[i].numberOfFramesCount = 0;
        }
        gTileAnimQueue[gTileAnimQueueIndex].field_0 =
            gTileAnimTable[i].tileData + 32 * gTileAnimTable[i].numberOfFramesCount;
        gTileAnimQueue[gTileAnimQueueIndex].field_4 = gTileAnimTable[i].destination;
        gTileAnimQueueIndex++;
    }
}

void sub_80139F0(s32 a1) {
    dword_2000318 = a1;
    if (dword_200031C < 0) {
        dword_200031C = a1;
    }
}

#ifndef NONMATCHING
NAKED void sub_8013A10(s32 x, s32 y, s32 hofs, s32 vofs, s32 height, s32 width) {
    asm_unified(".include \"asm/nonmatching/sub_8013A10.s\"");
}
#else
void sub_8013A10(s32 x, s32 y, s32 hofs, s32 vofs, s32 height, s32 width) {
    s32 startY;
    s32 i;
    u32 rowBase;
    u16* rowStart;
    u16* dst;
    s32 offset;
    s32 layer;
    s32 j;
    s32 startX;
    u32 screenBase;

    offset = ((((vofs >> 3) & 31) << 5) + ((hofs >> 3) & 31)) * 2;

    if (gRoomHeader.isStaticBG0) {
        dst = (u16*)0x0600E000;
        startX = 0;
        j = 0;
    } else {
        dst = (u16*)(0x0600E000 + offset);
        startX = x;
        j = y;
    }
    screenBase = (u32)dst & 0x1F800;
    for (startY = j; j <= startY + height; j++) {
        rowBase = (u32)dst & 0x1FFC0;
        rowStart = dst;
        for (i = startX; i < startX + width; i++) {
            u16* map;
            u16* tile;

            layer = 0;
            map = (u16*)gRoomHeader.map1 + gTilesCount * layer + (j >> 2) * gRoomHeader.mapSizeX
                  + (i >> 2);
            tile = gTileSetBG[0] + *map * 16;
            *dst = *(tile + (j & 3) * 4 + (i & 3));
            dst++;
            dst = (u16*)(((u32)dst & 0xFFFE003F) | rowBase);
        }
        dst = (u16*)(((u32)(rowStart + 0x20) & 0xFFFE07FF) | screenBase);
    }

    if (gRoomHeader.enabledBGs == 1) {
        return;
    }

    if (gRoomHeader.isStaticBG1) {
        dst = (u16*)0x0600E800;
        startX = 0;
        j = 0;
    } else {
        dst = (u16*)(0x0600E800 + offset);
        startX = x;
        j = y;
    }
    screenBase = (u32)dst & 0x1F800;
    for (startY = j; j <= startY + height; j++) {
        rowBase = (u32)dst & 0x1FFC0;
        rowStart = dst;
        for (i = startX; i < startX + width; i++) {
            u16* map;
            u16* tile;

            layer = 1;
            map = (u16*)gRoomHeader.map1 + gTilesCount * layer + (j >> 2) * gRoomHeader.mapSizeX
                  + (i >> 2);
            tile = gTileSetBG[1] + *map * 16;
            *dst = *(tile + (j & 3) * 4 + (i & 3));
            dst++;
            dst = (u16*)(((u32)dst & 0xFFFE003F) | rowBase);
        }
        dst = (u16*)(((u32)(rowStart + 0x20) & 0xFFFE07FF) | screenBase);
    }

    if (gRoomHeader.enabledBGs == 2) {
        return;
    }

    if (gRoomHeader.isStaticBG2) {
        dst = (u16*)0x0600F000;
        startX = 0;
        j = 0;
    } else {
        dst = (u16*)(0x0600F000 + offset);
        startX = x;
        j = y;
    }
    screenBase = (u32)dst & 0x1F800;
    for (startY = j; j <= startY + height; j++) {
        rowBase = (u32)dst & 0x1FFC0;
        rowStart = dst;
        for (i = startX; i < startX + width; i++) {
            u16* map;
            u16* tile;

            layer = 2;
            map = (u16*)gRoomHeader.map1 + gTilesCount * layer + (j >> 2) * gRoomHeader.mapSizeX
                  + (i >> 2);
            tile = gTileSetBG[2] + *map * 16;
            *dst = *(tile + (j & 3) * 4 + (i & 3));
            dst++;
            dst = (u16*)(((u32)dst & 0xFFFE003F) | rowBase);
        }
        dst = (u16*)(((u32)(rowStart + 0x20) & 0xFFFE07FF) | screenBase);
    }

    if (gRoomHeader.enabledBGs == 3) {
        return;
    }

    if (gRoomHeader.isStaticBG3) {
        dst = (u16*)0x0600F800;
        startX = 0;
        j = 0;
    } else {
        dst = (u16*)(0x0600F800 + offset);
        startX = x;
        j = y;
    }
    screenBase = (u32)dst & 0x1F800;
    for (startY = j; j <= startY + height; j++) {
        rowBase = (u32)dst & 0x1FFC0;
        rowStart = dst;
        for (i = startX; i < startX + width; i++) {
            u16* map;
            u16* tile;

            layer = 3;
            map = (u16*)gRoomHeader.map1 + gTilesCount * layer + (j >> 2) * gRoomHeader.mapSizeX
                  + (i >> 2);
            tile = gTileSetBG[3] + *map * 16;
            *dst = *(tile + (j & 3) * 4 + (i & 3));
            dst++;
            dst = (u16*)(((u32)dst & 0xFFFE003F) | rowBase);
        }
        dst = (u16*)(((u32)(rowStart + 0x20) & 0xFFFE07FF) | screenBase);
    }
}
#endif

#ifndef NONMATCHING
NAKED void sub_8013DD4(s32 height, s32 width) {
    asm_unified(".include \"asm/nonmatching/sub_8013DD4.s\"");
}
#else
void sub_8013DD4(s32 height, s32 width) {
    s32 i;
    u32 rowBase;
    u16* rowStart;
    u16* dst;
    s32 layer;
    s32 j;
    u32 screenBase;
    s32 startX;

    if (gRoomHeader.isStaticBG0) {
        dst = (u16*)0x0600E000;
        screenBase = (u32)dst & 0x1F800;
        startX = 0;
        for (j = 0; j <= height; j++) {
            rowBase = (u32)dst & 0x1FFC0;
            rowStart = dst;
            for (i = startX; i < width; i++) {
                u16* map;
                u16* tile;

                layer = 0;
                map = (u16*)gRoomHeader.map1 + gTilesCount * layer + (j >> 2) * gRoomHeader.mapSizeX
                      + (i >> 2);
                tile = gTileSetBG[0] + *map * 16;
                *dst = *(tile + (j & 3) * 4 + (i & 3));
                dst++;
                dst = (u16*)(((u32)dst & 0xFFFE003F) | rowBase);
            }
            dst = (u16*)(((u32)(rowStart + 0x20) & 0xFFFE07FF) | screenBase);
        }
    }

    if (gRoomHeader.enabledBGs == 1) {
        return;
    }

    if (gRoomHeader.isStaticBG1) {
        dst = (u16*)0x0600E800;
        screenBase = (u32)dst & 0x1F800;
        startX = 0;
        for (j = 0; j <= height; j++) {
            rowBase = (u32)dst & 0x1FFC0;
            rowStart = dst;
            for (i = startX; i < width; i++) {
                u16* map;
                u16* tile;

                layer = 1;
                map = (u16*)gRoomHeader.map1 + gTilesCount * layer + (j >> 2) * gRoomHeader.mapSizeX
                      + (i >> 2);
                tile = gTileSetBG[1] + *map * 16;
                *dst = *(tile + (j & 3) * 4 + (i & 3));
                dst++;
                dst = (u16*)(((u32)dst & 0xFFFE003F) | rowBase);
            }
            dst = (u16*)(((u32)(rowStart + 0x20) & 0xFFFE07FF) | screenBase);
        }
    }

    if (gRoomHeader.enabledBGs == 2) {
        return;
    }

    if (gRoomHeader.isStaticBG2) {
        dst = (u16*)0x0600F000;
        screenBase = (u32)dst & 0x1F800;
        startX = 0;
        for (j = 0; j <= height; j++) {
            rowBase = (u32)dst & 0x1FFC0;
            rowStart = dst;
            for (i = startX; i < width; i++) {
                u16* map;
                u16* tile;

                layer = 2;
                map = (u16*)gRoomHeader.map1 + gTilesCount * layer + (j >> 2) * gRoomHeader.mapSizeX
                      + (i >> 2);
                tile = gTileSetBG[2] + *map * 16;
                *dst = *(tile + (j & 3) * 4 + (i & 3));
                dst++;
                dst = (u16*)(((u32)dst & 0xFFFE003F) | rowBase);
            }
            dst = (u16*)(((u32)(rowStart + 0x20) & 0xFFFE07FF) | screenBase);
        }
    }

    if (gRoomHeader.enabledBGs == 3) {
        return;
    }

    if (gRoomHeader.isStaticBG3) {
        dst = (u16*)0x0600F800;
        screenBase = (u32)dst & 0x1F800;
        startX = 0;
        for (j = 0; j <= height; j++) {
            rowBase = (u32)dst & 0x1FFC0;
            rowStart = dst;
            for (i = startX; i < width; i++) {
                u16* map;
                u16* tile;

                layer = 3;
                map = (u16*)gRoomHeader.map1 + gTilesCount * layer + (j >> 2) * gRoomHeader.mapSizeX
                      + (i >> 2);
                tile = gTileSetBG[3] + *map * 16;
                *dst = *(tile + (j & 3) * 4 + (i & 3));
                dst++;
                dst = (u16*)(((u32)dst & 0xFFFE003F) | rowBase);
            }
            dst = (u16*)(((u32)(rowStart + 0x20) & 0xFFFE07FF) | screenBase);
        }
    }
}
#endif

void UpdateMapUp(fx32 posY) {
    s16 y;
    s16 bottom;
    u8 oldOffset;

    y = (posY >> 16) - 80;
    bottom = y + 160;
    if (y < 0) {
        gCameraPixelY = 0;
    } else if (bottom > (s16)gMapPixelSizeY) {
        gCameraPixelY = gMapPixelSizeY - 160;
    } else {
        gCameraPixelY = y;
    }

    oldOffset = gBGOffsetVertical;
    gBGOffsetVertical = gCameraPixelY;
    if (((oldOffset >> 3) & 31) != ((gBGOffsetVertical >> 3) & 31)) {
        BGFillBufferVertical(gCameraPixelX >> 3, gCameraPixelY >> 3);
        gBGMapOffsetVertical =
            (((gBGOffsetVertical >> 3) & 31) * 32 + ((gBGOffsetHorizontal >> 3) & 31)) * 2;
        gBGControlActions |= 0x24;
    } else {
        gBGControlActions |= 4;
    }
}

void UpdateMapDown(fx32 posY) {
    s16 pos;
    s16 end;
    u8 oldOffset;
    u32 mask;
    u32 screenBase;

    pos = (posY >> 16) - 80;
    end = pos + 160;
    if (pos < 0) {
        gCameraPixelY = 0;
    } else if (end > (s16)gMapPixelSizeY) {
        gCameraPixelY = gMapPixelSizeY - 160;
    } else {
        gCameraPixelY = pos;
    }

    oldOffset = gBGOffsetVertical;
    gBGOffsetVertical = gCameraPixelY;
    if (((oldOffset >> 3) & 31) != ((gBGOffsetVertical >> 3) & 31)) {
        BGFillBufferVertical(gCameraPixelX >> 3, (gCameraPixelY + 160) >> 3);
        gBGMapOffsetVertical =
            (((gBGOffsetVertical >> 3) & 31) * 32 + ((gBGOffsetHorizontal >> 3) & 31)) * 2;
        mask = 0xFFFE07FF;
        screenBase = gBGMapOffsetVertical & 0x1F800;
        gBGMapOffsetVertical = ((gBGMapOffsetVertical + 0x500) & mask) | screenBase;
        gBGControlActions |= 0x28;
    } else {
        gBGControlActions |= 8;
    }
}

void UpdateMapLeft(fx32 posX) {
    s16 pos;
    s16 end;
    u8 oldOffset;

    pos = (posX >> 16) - 120;
    end = pos + 240;
    if (pos < 0) {
        gCameraPixelX = 0;
    } else if (end > (s16)gMapPixelSizeX) {
        gCameraPixelX = gMapPixelSizeX - 240;
    } else {
        gCameraPixelX = pos;
    }

    oldOffset = gBGOffsetHorizontal;
    gBGOffsetHorizontal = gCameraPixelX;
    if (((oldOffset >> 3) & 31) != ((gBGOffsetHorizontal >> 3) & 31)) {
        BGFillBufferHorizontal(gCameraPixelX >> 3, gCameraPixelY >> 3);
        gBGMapOffsetHorizontal =
            (((gBGOffsetVertical >> 3) & 31) * 32 + ((gBGOffsetHorizontal >> 3) & 31)) * 2;
        gBGControlActions |= 0x11;
    } else {
        gBGControlActions |= 1;
    }
}

void UpdateMapRight(fx32 posX) {
    s16 pos;
    s16 end;
    u8 oldOffset;
    u32 mask;
    u32 screenBase;

    pos = (posX >> 16) - 120;
    end = pos + 240;
    if (pos < 0) {
        gCameraPixelX = 0;
    } else if (end > (s16)gMapPixelSizeX) {
        gCameraPixelX = gMapPixelSizeX - 240;
    } else {
        gCameraPixelX = pos;
    }

    oldOffset = gBGOffsetHorizontal;
    gBGOffsetHorizontal = gCameraPixelX;
    if (((oldOffset >> 3) & 31) != ((gBGOffsetHorizontal >> 3) & 31)) {
        BGFillBufferHorizontal((gCameraPixelX + 240) >> 3, gCameraPixelY >> 3);
        gBGMapOffsetHorizontal =
            (((gBGOffsetVertical >> 3) & 31) * 32 + ((gBGOffsetHorizontal >> 3) & 31)) * 2;
        mask = 0xFFFE003F;
        screenBase = gBGMapOffsetHorizontal & 0x1FFC0;
        gBGMapOffsetHorizontal = ((gBGMapOffsetHorizontal + 0x3C) & mask) | screenBase;
        gBGControlActions |= 0x12;
    } else {
        gBGControlActions |= 2;
    }
}

#ifndef NONMATCHING
NAKED void BGFillBufferVertical(s32 x, s32 y) {
    asm_unified(".include \"asm/nonmatching/BGFillBufferVertical.s\"");
}
#else
// Fills each enabled layer's 32-entry vertical buffer with the tiles of map row y,
// starting at tile column x. The buffers are copied into a screen-block row later.
//
// Doesn't match: y is allocated to r9 instead of sl, and (y & 3) * 8 stays in sl instead
// of being spilled to the stack (frame 0x10 instead of 0x14). The rest is identical.
void BGFillBufferVertical(s32 x, s32 y) {
    u16* map;
    u16* tiles;
    s32 i;
    u16* p;

    map = (u16*)gRoomHeader.map1 + (y >> 2) * gRoomHeader.mapSizeX;
    tiles = gTileSetBG[0] + (y & 3) * 4;
    i = x;
    p = map + (i >> 2);
    gBG0VerticalBuffer[0] = *(tiles + *p * 16 + (i & 3));
    i++;
    p = map + (i >> 2);
    gBG0VerticalBuffer[1] = *(tiles + *p * 16 + (i & 3));
    i++;
    p = map + (i >> 2);
    gBG0VerticalBuffer[2] = *(tiles + *p * 16 + (i & 3));
    i++;
    p = map + (i >> 2);
    gBG0VerticalBuffer[3] = *(tiles + *p * 16 + (i & 3));
    i++;
    p = map + (i >> 2);
    gBG0VerticalBuffer[4] = *(tiles + *p * 16 + (i & 3));
    i++;
    p = map + (i >> 2);
    gBG0VerticalBuffer[5] = *(tiles + *p * 16 + (i & 3));
    i++;
    p = map + (i >> 2);
    gBG0VerticalBuffer[6] = *(tiles + *p * 16 + (i & 3));
    i++;
    p = map + (i >> 2);
    gBG0VerticalBuffer[7] = *(tiles + *p * 16 + (i & 3));
    i++;
    p = map + (i >> 2);
    gBG0VerticalBuffer[8] = *(tiles + *p * 16 + (i & 3));
    i++;
    p = map + (i >> 2);
    gBG0VerticalBuffer[9] = *(tiles + *p * 16 + (i & 3));
    i++;
    p = map + (i >> 2);
    gBG0VerticalBuffer[10] = *(tiles + *p * 16 + (i & 3));
    i++;
    p = map + (i >> 2);
    gBG0VerticalBuffer[11] = *(tiles + *p * 16 + (i & 3));
    i++;
    p = map + (i >> 2);
    gBG0VerticalBuffer[12] = *(tiles + *p * 16 + (i & 3));
    i++;
    p = map + (i >> 2);
    gBG0VerticalBuffer[13] = *(tiles + *p * 16 + (i & 3));
    i++;
    p = map + (i >> 2);
    gBG0VerticalBuffer[14] = *(tiles + *p * 16 + (i & 3));
    i++;
    p = map + (i >> 2);
    gBG0VerticalBuffer[15] = *(tiles + *p * 16 + (i & 3));
    i++;
    p = map + (i >> 2);
    gBG0VerticalBuffer[16] = *(tiles + *p * 16 + (i & 3));
    i++;
    p = map + (i >> 2);
    gBG0VerticalBuffer[17] = *(tiles + *p * 16 + (i & 3));
    i++;
    p = map + (i >> 2);
    gBG0VerticalBuffer[18] = *(tiles + *p * 16 + (i & 3));
    i++;
    p = map + (i >> 2);
    gBG0VerticalBuffer[19] = *(tiles + *p * 16 + (i & 3));
    i++;
    p = map + (i >> 2);
    gBG0VerticalBuffer[20] = *(tiles + *p * 16 + (i & 3));
    i++;
    p = map + (i >> 2);
    gBG0VerticalBuffer[21] = *(tiles + *p * 16 + (i & 3));
    i++;
    p = map + (i >> 2);
    gBG0VerticalBuffer[22] = *(tiles + *p * 16 + (i & 3));
    i++;
    p = map + (i >> 2);
    gBG0VerticalBuffer[23] = *(tiles + *p * 16 + (i & 3));
    i++;
    p = map + (i >> 2);
    gBG0VerticalBuffer[24] = *(tiles + *p * 16 + (i & 3));
    i++;
    p = map + (i >> 2);
    gBG0VerticalBuffer[25] = *(tiles + *p * 16 + (i & 3));
    i++;
    p = map + (i >> 2);
    gBG0VerticalBuffer[26] = *(tiles + *p * 16 + (i & 3));
    i++;
    p = map + (i >> 2);
    gBG0VerticalBuffer[27] = *(tiles + *p * 16 + (i & 3));
    i++;
    p = map + (i >> 2);
    gBG0VerticalBuffer[28] = *(tiles + *p * 16 + (i & 3));
    i++;
    p = map + (i >> 2);
    gBG0VerticalBuffer[29] = *(tiles + *p * 16 + (i & 3));
    i++;
    p = map + (i >> 2);
    gBG0VerticalBuffer[30] = *(tiles + *p * 16 + (i & 3));
    i++;
    p = map + (i >> 2);
    gBG0VerticalBuffer[31] = *(tiles + *p * 16 + (i & 3));

    if (gRoomHeader.enabledBGs == 1) {
        return;
    }

    map = (u16*)gRoomHeader.map2 + (y >> 2) * gRoomHeader.mapSizeX;
    tiles = gTileSetBG[1] + (y & 3) * 4;
    i = x;
    p = map + (i >> 2);
    gBG1VerticalBuffer[0] = *(tiles + *p * 16 + (i & 3));
    i++;
    p = map + (i >> 2);
    gBG1VerticalBuffer[1] = *(tiles + *p * 16 + (i & 3));
    i++;
    p = map + (i >> 2);
    gBG1VerticalBuffer[2] = *(tiles + *p * 16 + (i & 3));
    i++;
    p = map + (i >> 2);
    gBG1VerticalBuffer[3] = *(tiles + *p * 16 + (i & 3));
    i++;
    p = map + (i >> 2);
    gBG1VerticalBuffer[4] = *(tiles + *p * 16 + (i & 3));
    i++;
    p = map + (i >> 2);
    gBG1VerticalBuffer[5] = *(tiles + *p * 16 + (i & 3));
    i++;
    p = map + (i >> 2);
    gBG1VerticalBuffer[6] = *(tiles + *p * 16 + (i & 3));
    i++;
    p = map + (i >> 2);
    gBG1VerticalBuffer[7] = *(tiles + *p * 16 + (i & 3));
    i++;
    p = map + (i >> 2);
    gBG1VerticalBuffer[8] = *(tiles + *p * 16 + (i & 3));
    i++;
    p = map + (i >> 2);
    gBG1VerticalBuffer[9] = *(tiles + *p * 16 + (i & 3));
    i++;
    p = map + (i >> 2);
    gBG1VerticalBuffer[10] = *(tiles + *p * 16 + (i & 3));
    i++;
    p = map + (i >> 2);
    gBG1VerticalBuffer[11] = *(tiles + *p * 16 + (i & 3));
    i++;
    p = map + (i >> 2);
    gBG1VerticalBuffer[12] = *(tiles + *p * 16 + (i & 3));
    i++;
    p = map + (i >> 2);
    gBG1VerticalBuffer[13] = *(tiles + *p * 16 + (i & 3));
    i++;
    p = map + (i >> 2);
    gBG1VerticalBuffer[14] = *(tiles + *p * 16 + (i & 3));
    i++;
    p = map + (i >> 2);
    gBG1VerticalBuffer[15] = *(tiles + *p * 16 + (i & 3));
    i++;
    p = map + (i >> 2);
    gBG1VerticalBuffer[16] = *(tiles + *p * 16 + (i & 3));
    i++;
    p = map + (i >> 2);
    gBG1VerticalBuffer[17] = *(tiles + *p * 16 + (i & 3));
    i++;
    p = map + (i >> 2);
    gBG1VerticalBuffer[18] = *(tiles + *p * 16 + (i & 3));
    i++;
    p = map + (i >> 2);
    gBG1VerticalBuffer[19] = *(tiles + *p * 16 + (i & 3));
    i++;
    p = map + (i >> 2);
    gBG1VerticalBuffer[20] = *(tiles + *p * 16 + (i & 3));
    i++;
    p = map + (i >> 2);
    gBG1VerticalBuffer[21] = *(tiles + *p * 16 + (i & 3));
    i++;
    p = map + (i >> 2);
    gBG1VerticalBuffer[22] = *(tiles + *p * 16 + (i & 3));
    i++;
    p = map + (i >> 2);
    gBG1VerticalBuffer[23] = *(tiles + *p * 16 + (i & 3));
    i++;
    p = map + (i >> 2);
    gBG1VerticalBuffer[24] = *(tiles + *p * 16 + (i & 3));
    i++;
    p = map + (i >> 2);
    gBG1VerticalBuffer[25] = *(tiles + *p * 16 + (i & 3));
    i++;
    p = map + (i >> 2);
    gBG1VerticalBuffer[26] = *(tiles + *p * 16 + (i & 3));
    i++;
    p = map + (i >> 2);
    gBG1VerticalBuffer[27] = *(tiles + *p * 16 + (i & 3));
    i++;
    p = map + (i >> 2);
    gBG1VerticalBuffer[28] = *(tiles + *p * 16 + (i & 3));
    i++;
    p = map + (i >> 2);
    gBG1VerticalBuffer[29] = *(tiles + *p * 16 + (i & 3));
    i++;
    p = map + (i >> 2);
    gBG1VerticalBuffer[30] = *(tiles + *p * 16 + (i & 3));
    i++;
    p = map + (i >> 2);
    gBG1VerticalBuffer[31] = *(tiles + *p * 16 + (i & 3));

    if (gRoomHeader.enabledBGs == 2) {
        return;
    }

    map = (u16*)gRoomHeader.map3 + (y >> 2) * gRoomHeader.mapSizeX;
    tiles = gTileSetBG[2] + (y & 3) * 4;
    i = x;
    p = map + (i >> 2);
    gBG2VerticalBuffer[0] = *(tiles + *p * 16 + (i & 3));
    i++;
    p = map + (i >> 2);
    gBG2VerticalBuffer[1] = *(tiles + *p * 16 + (i & 3));
    i++;
    p = map + (i >> 2);
    gBG2VerticalBuffer[2] = *(tiles + *p * 16 + (i & 3));
    i++;
    p = map + (i >> 2);
    gBG2VerticalBuffer[3] = *(tiles + *p * 16 + (i & 3));
    i++;
    p = map + (i >> 2);
    gBG2VerticalBuffer[4] = *(tiles + *p * 16 + (i & 3));
    i++;
    p = map + (i >> 2);
    gBG2VerticalBuffer[5] = *(tiles + *p * 16 + (i & 3));
    i++;
    p = map + (i >> 2);
    gBG2VerticalBuffer[6] = *(tiles + *p * 16 + (i & 3));
    i++;
    p = map + (i >> 2);
    gBG2VerticalBuffer[7] = *(tiles + *p * 16 + (i & 3));
    i++;
    p = map + (i >> 2);
    gBG2VerticalBuffer[8] = *(tiles + *p * 16 + (i & 3));
    i++;
    p = map + (i >> 2);
    gBG2VerticalBuffer[9] = *(tiles + *p * 16 + (i & 3));
    i++;
    p = map + (i >> 2);
    gBG2VerticalBuffer[10] = *(tiles + *p * 16 + (i & 3));
    i++;
    p = map + (i >> 2);
    gBG2VerticalBuffer[11] = *(tiles + *p * 16 + (i & 3));
    i++;
    p = map + (i >> 2);
    gBG2VerticalBuffer[12] = *(tiles + *p * 16 + (i & 3));
    i++;
    p = map + (i >> 2);
    gBG2VerticalBuffer[13] = *(tiles + *p * 16 + (i & 3));
    i++;
    p = map + (i >> 2);
    gBG2VerticalBuffer[14] = *(tiles + *p * 16 + (i & 3));
    i++;
    p = map + (i >> 2);
    gBG2VerticalBuffer[15] = *(tiles + *p * 16 + (i & 3));
    i++;
    p = map + (i >> 2);
    gBG2VerticalBuffer[16] = *(tiles + *p * 16 + (i & 3));
    i++;
    p = map + (i >> 2);
    gBG2VerticalBuffer[17] = *(tiles + *p * 16 + (i & 3));
    i++;
    p = map + (i >> 2);
    gBG2VerticalBuffer[18] = *(tiles + *p * 16 + (i & 3));
    i++;
    p = map + (i >> 2);
    gBG2VerticalBuffer[19] = *(tiles + *p * 16 + (i & 3));
    i++;
    p = map + (i >> 2);
    gBG2VerticalBuffer[20] = *(tiles + *p * 16 + (i & 3));
    i++;
    p = map + (i >> 2);
    gBG2VerticalBuffer[21] = *(tiles + *p * 16 + (i & 3));
    i++;
    p = map + (i >> 2);
    gBG2VerticalBuffer[22] = *(tiles + *p * 16 + (i & 3));
    i++;
    p = map + (i >> 2);
    gBG2VerticalBuffer[23] = *(tiles + *p * 16 + (i & 3));
    i++;
    p = map + (i >> 2);
    gBG2VerticalBuffer[24] = *(tiles + *p * 16 + (i & 3));
    i++;
    p = map + (i >> 2);
    gBG2VerticalBuffer[25] = *(tiles + *p * 16 + (i & 3));
    i++;
    p = map + (i >> 2);
    gBG2VerticalBuffer[26] = *(tiles + *p * 16 + (i & 3));
    i++;
    p = map + (i >> 2);
    gBG2VerticalBuffer[27] = *(tiles + *p * 16 + (i & 3));
    i++;
    p = map + (i >> 2);
    gBG2VerticalBuffer[28] = *(tiles + *p * 16 + (i & 3));
    i++;
    p = map + (i >> 2);
    gBG2VerticalBuffer[29] = *(tiles + *p * 16 + (i & 3));
    i++;
    p = map + (i >> 2);
    gBG2VerticalBuffer[30] = *(tiles + *p * 16 + (i & 3));
    i++;
    p = map + (i >> 2);
    gBG2VerticalBuffer[31] = *(tiles + *p * 16 + (i & 3));

    if (gRoomHeader.enabledBGs == 3) {
        return;
    }

    map = (u16*)gRoomHeader.map4 + (y >> 2) * gRoomHeader.mapSizeX;
    tiles = gTileSetBG[3] + (y & 3) * 4;
    i = x;
    p = map + (i >> 2);
    gBG3VerticalBuffer[0] = *(tiles + *p * 16 + (i & 3));
    i++;
    p = map + (i >> 2);
    gBG3VerticalBuffer[1] = *(tiles + *p * 16 + (i & 3));
    i++;
    p = map + (i >> 2);
    gBG3VerticalBuffer[2] = *(tiles + *p * 16 + (i & 3));
    i++;
    p = map + (i >> 2);
    gBG3VerticalBuffer[3] = *(tiles + *p * 16 + (i & 3));
    i++;
    p = map + (i >> 2);
    gBG3VerticalBuffer[4] = *(tiles + *p * 16 + (i & 3));
    i++;
    p = map + (i >> 2);
    gBG3VerticalBuffer[5] = *(tiles + *p * 16 + (i & 3));
    i++;
    p = map + (i >> 2);
    gBG3VerticalBuffer[6] = *(tiles + *p * 16 + (i & 3));
    i++;
    p = map + (i >> 2);
    gBG3VerticalBuffer[7] = *(tiles + *p * 16 + (i & 3));
    i++;
    p = map + (i >> 2);
    gBG3VerticalBuffer[8] = *(tiles + *p * 16 + (i & 3));
    i++;
    p = map + (i >> 2);
    gBG3VerticalBuffer[9] = *(tiles + *p * 16 + (i & 3));
    i++;
    p = map + (i >> 2);
    gBG3VerticalBuffer[10] = *(tiles + *p * 16 + (i & 3));
    i++;
    p = map + (i >> 2);
    gBG3VerticalBuffer[11] = *(tiles + *p * 16 + (i & 3));
    i++;
    p = map + (i >> 2);
    gBG3VerticalBuffer[12] = *(tiles + *p * 16 + (i & 3));
    i++;
    p = map + (i >> 2);
    gBG3VerticalBuffer[13] = *(tiles + *p * 16 + (i & 3));
    i++;
    p = map + (i >> 2);
    gBG3VerticalBuffer[14] = *(tiles + *p * 16 + (i & 3));
    i++;
    p = map + (i >> 2);
    gBG3VerticalBuffer[15] = *(tiles + *p * 16 + (i & 3));
    i++;
    p = map + (i >> 2);
    gBG3VerticalBuffer[16] = *(tiles + *p * 16 + (i & 3));
    i++;
    p = map + (i >> 2);
    gBG3VerticalBuffer[17] = *(tiles + *p * 16 + (i & 3));
    i++;
    p = map + (i >> 2);
    gBG3VerticalBuffer[18] = *(tiles + *p * 16 + (i & 3));
    i++;
    p = map + (i >> 2);
    gBG3VerticalBuffer[19] = *(tiles + *p * 16 + (i & 3));
    i++;
    p = map + (i >> 2);
    gBG3VerticalBuffer[20] = *(tiles + *p * 16 + (i & 3));
    i++;
    p = map + (i >> 2);
    gBG3VerticalBuffer[21] = *(tiles + *p * 16 + (i & 3));
    i++;
    p = map + (i >> 2);
    gBG3VerticalBuffer[22] = *(tiles + *p * 16 + (i & 3));
    i++;
    p = map + (i >> 2);
    gBG3VerticalBuffer[23] = *(tiles + *p * 16 + (i & 3));
    i++;
    p = map + (i >> 2);
    gBG3VerticalBuffer[24] = *(tiles + *p * 16 + (i & 3));
    i++;
    p = map + (i >> 2);
    gBG3VerticalBuffer[25] = *(tiles + *p * 16 + (i & 3));
    i++;
    p = map + (i >> 2);
    gBG3VerticalBuffer[26] = *(tiles + *p * 16 + (i & 3));
    i++;
    p = map + (i >> 2);
    gBG3VerticalBuffer[27] = *(tiles + *p * 16 + (i & 3));
    i++;
    p = map + (i >> 2);
    gBG3VerticalBuffer[28] = *(tiles + *p * 16 + (i & 3));
    i++;
    p = map + (i >> 2);
    gBG3VerticalBuffer[29] = *(tiles + *p * 16 + (i & 3));
    i++;
    p = map + (i >> 2);
    gBG3VerticalBuffer[30] = *(tiles + *p * 16 + (i & 3));
    i++;
    p = map + (i >> 2);
    gBG3VerticalBuffer[31] = *(tiles + *p * 16 + (i & 3));
}
#endif

#ifndef NONMATCHING
NAKED void BGFillBufferHorizontal(s32 x, s32 y) {
    asm_unified(".include \"asm/nonmatching/BGFillBufferHorizontal.s\"");
}
#endif

#ifndef NONMATCHING
NAKED void sub_08015CC0(s32 bg) {
    asm_unified(".include \"asm/nonmatching/sub_08015CC0.s\"");
}
#else
void sub_08015CC0(s32 bg) {
    s32 i;
    u16* dst;
    struct Textbar* textbar;

    byte_200146C = TRUE;
    gBGControlActions = 0;

    switch (bg) {
        case 0:
            if (gRoomHeader.tilesetBG0 == 0) {
                dword_2002080 = gRoomHeader.textbarNPC;
                ASSERT(dword_2002080 != NULL);
            } else {
                dword_2002080 = gRoomHeader.textbarBozzeye;
                ASSERT(dword_2002080 != NULL);
            }
            dword_2002088 = (dword_2002080->fillTile << 16) | dword_2002080->fillTile;
            DmaFill32(dword_2002088, (void*)0x0600E000, 0x140);
            REG_BG0HOFS = 0;
            REG_BG0VOFS = 0;
            dword_2002084 = 0x0600E380;
            REG_BLDCNT &= gColorSpecEffectsSel;
            REG_BLDCNT |= BLDCNT_TGT1_BG0 | BLDCNT_EFFECT_BLEND;
            REG_BG0CNT &= 0xFFFC;
            break;
        case 1:
            if (gRoomHeader.tilesetBG1 == 0) {
                dword_2002080 = gRoomHeader.textbarNPC;
                ASSERT(dword_2002080 != NULL);
            } else {
                dword_2002080 = gRoomHeader.textbarBozzeye;
                ASSERT(dword_2002080 != NULL);
            }
            dword_2002088 = (dword_2002080->fillTile << 16) | dword_2002080->fillTile;
            DmaFill32(dword_2002088, (void*)0x0600E800, 0x140);
            REG_BG1HOFS = 0;
            REG_BG1VOFS = 0;
            dword_2002084 = 0x0600EB80;
            REG_BLDCNT &= gColorSpecEffectsSel;
            REG_BLDCNT |= BLDCNT_TGT1_BG1 | BLDCNT_EFFECT_BLEND;
            REG_BG1CNT &= 0xFFFC;
            break;
        case 2:
            if (gRoomHeader.tilesetBG2 == 0) {
                dword_2002080 = gRoomHeader.textbarNPC;
                ASSERT(dword_2002080 != NULL);
            } else {
                dword_2002080 = gRoomHeader.textbarBozzeye;
                ASSERT(dword_2002080 != NULL);
            }
            dword_2002088 = (dword_2002080->fillTile << 16) | dword_2002080->fillTile;
            DmaFill32(dword_2002088, (void*)0x0600F000, 0x140);
            REG_BG2HOFS = 0;
            REG_BG2VOFS = 0;
            dword_2002084 = 0x0600F380;
            REG_BLDCNT &= gColorSpecEffectsSel;
            REG_BLDCNT |= BLDCNT_TGT1_BG2 | BLDCNT_EFFECT_BLEND;
            REG_BG2CNT &= 0xFFFC;
            break;
        case 3:
            if (gRoomHeader.tilesetBG3 == 0) {
                dword_2002080 = gRoomHeader.textbarNPC;
                ASSERT(dword_2002080 != NULL);
            } else {
                dword_2002080 = gRoomHeader.textbarBozzeye;
                ASSERT(dword_2002080 != NULL);
            }
            dword_2002088 = (dword_2002080->fillTile << 16) | dword_2002080->fillTile;
            DmaFill32(dword_2002088, (void*)0x0600F800, 0x140);
            REG_BG3HOFS = 0;
            REG_BG3VOFS = 0;
            dword_2002084 = 0x0600FB80;
            REG_BLDCNT &= gColorSpecEffectsSel;
            REG_BLDCNT |= BLDCNT_TGT1_BG3 | BLDCNT_EFFECT_BLEND;
            break;
        default:
            ASSERT(0);
            return;
    }

    i = 0;
    if (i < dword_2002080->rowCount) {
        do {
            dst = (u16*)(i * 64 + dword_2002084);
            textbar = dword_2002080;
            dst[0] = textbar->tiles[i * 32];
            dst[1] = textbar->tiles[i * 32 + 1];
            dst[2] = textbar->tiles[i * 32 + 2];
            i++;
        } while (i < textbar->rowCount);
    }

    dword_2002074 = 3;
    dword_2002078 = 27;
    dword_200207C = 1;
    dword_2001470 = TRUE;
}
#endif

#ifndef NONMATCHING
NAKED void sub_8015FD4(void) {
    asm_unified(".include \"asm/nonmatching/sub_8015FD4.s\"");
}
#else
void sub_8015FD4(void) {
    s32 i;
    u16* dst;
    struct Textbar* textbar;

    for (i = 0, textbar = dword_2002080; i < textbar->rowCount; i++) {
        dst = (u16*)(dword_2002074 * 2 + i * 64 + dword_2002084);
        textbar = dword_2002080;
        dst[0] = textbar->tiles[i * 32 + 26];
        dst[1] = textbar->tiles[i * 32 + 27];
        dst[2] = textbar->tiles[i * 32 + 28];
        dst[3] = textbar->tiles[i * 32 + 29];
    }

    dword_2002074 += dword_200207C;
    if (dword_2002074 == dword_2002078) {
        dword_2001470 = 0;
    }
}
#endif
