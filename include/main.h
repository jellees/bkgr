void UpdateGame();

extern void *gNullsub_5;
extern u8 gMainFrameCounter;

//EWRAM
extern u16 gColorSpecEffectsSel;
extern u8 byte_2000F55; // possibly bool8
extern u8 byte_2000F57; // possibly bool8
extern bool8 byte_2000F5D;
extern u8 gUnused_ExecUnusedInputFunc;

extern u32 gPlayerSprite; //type may be wrong
extern u32 gPlayerShadowSprite; //type may be wrong

extern u32 dword_2000FC8;
extern struct GameStatus gGameStatus;
extern u16 word_20010AC;
extern u8 byte_200110C; // possibly bool8
extern s16 gCameraPixelX;
extern s16 gCameraPixelY;
extern u32 dword_2001470;
extern u16 gPlayerState;
extern u8 byte_20020B1;
extern s32 dword_20020B4;
extern s32 dword_20020B8;
extern u8 byte_20020BC; // possibily bool8
extern u16 gPlayerStateSettings[];
extern u8 byte_20021F0; // possibly bool8
extern u8 byte_20021F8; // possibily bool8
extern bool8 byte_2002E4A;
extern bool8 gIsPaletteEffectsActive;
extern u32 dword_203DFC4;
extern u8 byte_203EA89; // possibily bool8
extern s16 word_203F998;
extern u8 byte_203F99C; // possibly bool8
extern u8 byte_203F99F; // possibly bool8
extern u8 byte_203F9A1; // possibly bool8
extern u8 byte_203FA35; // possibly bool8

//IWRAM
extern u8 byte_3002950[];
extern u32 gNullsub_3;
extern u32 gNullsub_4;
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

extern u32 gOAMBuffer2[];
extern u32 gOAMBuffer1[];
extern u32* gOAMBufferFramePtr;
extern u32* gOAMBufferEnd;
extern u32* gOBJTileFramePtr;
extern u32 gOBJTileCount;
extern u32* gOBJTileFrameStart;
extern u32 dword_3003DA0;
extern u32 dword_3003DA4;

//ROM
extern u8 byte_80CEB84[];
extern s32 dword_80CEBC4;

extern u32 Abs(u32); //return type is u32, can tell by the branch instruction
