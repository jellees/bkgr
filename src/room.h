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

void ResetTileAnimCount(void);
void EnableBGAlphaBlending(void);
void DisableBackgrounds(void);
void EnableBackgrounds(void);
void SetupRoom(u32 room, u32 warp, bool32 changeMusic, u32 a4);
void sub_08012E90(u32 room);
void sub_08013378(u32 room, u32 a2, u32 a3, u32 a4, u32 a5);
void sub_801392C(void);
void sub_80139F0(s32 a1);

#endif
