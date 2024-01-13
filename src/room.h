#ifndef GUARD_ROOM_H
#define GUARD_ROOM_H

extern u16 word_200145C;
extern u16 word_200145E;
extern u16 gBGInitOffsetHorizontal;
extern u16 gBGInitOffsetVertical;
extern u16 gPlayerInitPixelPosX;
extern u16 gPlayerInitPixelPosY;
extern s16 gCameraPixelX;
extern s16 gCameraPixelY;
extern bool8 byte_200146C;
extern u32 dword_2001470;
extern struct TileAnimTable_rt gTileAnimTable[255];
extern s32 gLoadedTileAnimCount;

void SetupRoom(u32 room, u32 warp, bool32 changeMusic, u32 a4);

#endif
