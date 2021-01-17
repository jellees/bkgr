#ifndef GUARD_COMMON_H
#define GUARD_COMMON_H

// Structs

struct struct_0
{
    u8 field_0;
    u8 field_1;
    u8 field_2;
    u8 field_3;
    u8 field_4;
    u8 field_5;
    u8 field_6;
    u8 field_7;
    u8 field_8;
    u8 field_9;
    u8 field_A;
    u8 field_B;
    u8 field_C;
    u8 field_D;
    u8 field_E;
    u8 field_F;
    u8 field_10;
    u8 field_11;
    u8 field_12;
    u8 field_13;
    u8 field_14;
    u8 field_15;
    u8 field_16;
};

struct TileAnimQueueIndex
{
    u8* field_0;
    u8* field_4;
};

struct SpriteDMATableEntry
{
    u8* source;
    u8* destiny;
    u32 count;
};

//EWRAM
extern u32 gDestinationWarps;
extern u32 gDestinationWarpCount;

extern u8 byte_2000314;
extern s32 dword_2000318;
extern s32 dword_200031C;
extern u8 gPauseMenuLanguage;
extern u32* gMatrices;
extern u32 gMatricesCount;
extern u32 dword_200032C;
extern u8 byte_2000330;
extern u8 byte_2000331;
extern u8 byte_2000332;
extern u8 byte_2000333;
extern u8 byte_2000334;
extern u8 byte_2000335;
extern u16 gColorSpecEffectsSel;

extern struct SpriteDMATableEntry gSpriteDMATable;
extern u8 gSpriteDMACount;
extern u8 byte_2000F55; // possibly bool8
extern u8 byte_2000F56; // possibly bool8
extern u8 byte_2000F57; // possibly bool8
extern u8 gShowEraseDataScreen;
extern u8 byte_2000F59;
extern u8 byte_2000F5A;
extern u8 gClockFrameCounter;
extern bool8 gClockEnabled;
extern bool8 byte_2000F5D;
extern bool8 byte_2000F5E;
extern u32* dword_2000F60;
extern u32 dword_2000F64;
extern u32 dword_2000F68;
extern u32 dword_2000F6C;
extern u8 gUnused_ExecUnusedInputFunc;

extern struct Sprite gPlayerSprite;
extern struct Sprite gPlayerShadowSprite;

extern u32 dword_2000FC8;

extern struct GameStatus gGameStatus;
extern struct SaveFile gSaveFiles[3];

extern u16 gLoadedRoomIndex;
extern u16 gLoadedRoomLevel;
extern u16 gLoadedRoomBgm;

extern u8 gRoomGoal;
extern u8 gWarpGoal;
extern u8 byte_20010AA;
extern u16 word_20010AC;
extern u8 gContinueGame;
extern u8 byte_20010AF;

extern char file_string_1[0x1A];
extern char file_string_2[0x1A];
extern char file_string_3[0x1A];

extern u8 byte_200110C; // possibly bool8

extern u16 word_200145C;
extern u16 word_200145E;
extern u16 gBGInitOffsetHorizontal;
extern u16 gBGInitOffsetVertical;
extern u16 gPlayerInitPixelPosX;
extern u16 gPlayerInitPixelPosY;
extern s16 gCameraPixelX;
extern s16 gCameraPixelY;
extern u32 dword_200146C;
extern u32 dword_2001470;

extern struct TileAnimTable_rt gTileAnimTable[255];

extern s32 gLoadedTileAnimCount;
extern u32 gTilesCount;
extern u8 byte_2002070;

extern u8 gBG0Static;
extern u8 gBG1Static;
extern u8 gBG2Static;
extern u8 gBG3Static;

extern u16 gPreviousPlayerState;
extern u16 gPlayerState;

extern struct struct_0 stru_200209A;
extern u8 byte_20020B1;
extern u8 byte_20020B2;
extern u8 byte_20020B3;
extern u8 byte_20020B4;
extern s32 dword_20020B4;
extern s32 dword_20020B8;

extern u8 byte_20020BC; // possibily bool8
extern u16 gPlayerStateSettings[128];

extern u8 byte_20021F0; // possibly bool8
extern u32 dword_20021F4;
extern u8 byte_20021F8; // possibily bool8
extern u8 byte_20021F9;

extern bool8 byte_2002E4A;

extern bool8 gIsPaletteEffectsActive;

extern u32* gEntitySection;

extern u32 dword_203DFC4;

extern bool8 gInInteractionArea;

extern u8 byte_203E16C;

extern u8 gCanChangeBgm;
extern u8 byte_203EA89; // possibily bool8
extern u8 byte_203EA8C;

extern u8 byte_203EAD4;
extern u16 word_203EAD6;
extern u8 byte_203EAD8;
extern u8* dword_203EADC;
extern u8 byte_203EAE0[3];
extern u8 byte_203EAE3;

extern u8 gClockStatus;
extern u32 dword_203F4DC;

extern s16 word_203F998;
extern s16 word_203F99A;
extern u8 byte_203F99C; // possibly bool8
extern u8 byte_203F99D; // possibly bool8
extern bool8 byte_203F99E;

extern u8 byte_203F99F; // possibly bool8

extern u8 byte_203F9A1; // possibly bool8

extern u8 byte_203FA35; // possibly bool8

extern u8* dword_203FA7C;
extern u8* dword_203FA80;
extern u8* dword_203FA84;

//IWRAM
extern u8 unk_3000000;

extern u8 byte_3002950[];

extern void (*gFunctionArray[14])();
extern void (*gNullsub_3)();
extern void (*gNullsub_4)();
extern void (*gNullsub_5)();
extern struct TileAnimQueueIndex gTileAnimQueue[255];
extern u8 gTileAnimQueueIndex;
extern bool8 gIsSlideMiniGame;
extern u32 dword_30032AC;
extern u32 dword_30032B0;
extern u32 dword_30032B4[];
extern u32 dword_30032BC[];

extern u16 gPreviousKeys;
extern u16 gKeysPressed;
extern u16 gKeysDown;

extern u32 dword_30032CC;
extern u32 gPlayerPos[];
extern u32 dword_30032DC[];

extern u8 gBGControlActions;
extern u8 gBGOffsetHorizontal;
extern u8 gBGOffsetVertical;
extern struct RoomHeader gRoomHeader;
extern u16 gEnabledBGs;

extern u16* gTileSetBG[4];
extern u16 gMapPixelSizeX;
extern u16 gMapPixelSizeY;

extern u32 gOAMBuffer2[];
extern u32 gOAMBuffer1[];
extern u32* gOAMBufferFramePtr;
extern u32* gOAMBufferEnd;
extern u32* gOBJTileFramePtr;
extern u32 gOBJTileCount;
extern u32* gOBJTileFrameStart;
extern u32 dword_3003DA0;
extern u32 dword_3003DA4;

extern u32 dword_3007FFC;

//ROM
extern u8 byte_80CEB84[];
extern s32 dword_80CEBC4;

extern u32 Abs(u32); //return type is u32, can tell by the branch instruction

extern void (*dPlayerBehaviors[1])(s32, s32);
extern u32 dword_80CC290[8];
extern u32 dword_80AF4F0[4];
extern struct Font font_80B01A8[3];

extern struct RoomIndex dRoomIndexes[38];
extern struct GameStatus stru_80CC8C4;

extern u8 unk_80CC8F8;

// Other

// Comes from debug ram.
extern u8 gMainFrameCounter;

#endif
