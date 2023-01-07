#ifndef GUARD_COMMON_H
#define GUARD_COMMON_H

// Enums

enum Rooms {
    ROOM_SPIRALBOTTOM,
    ROOM_SPIRALMIDDLE,
    ROOM_SPIRALTOP,
    ROOM_QUARRY,
    ROOM_LOWERFARM,
    ROOM_UPPERFARM,
    ROOM_MUMBOHUT,
    ROOM_HONEYB,
    ROOM_BEACHSTART,
    ROOM_UNDERCORAL,
    ROOM_OCTOSHOOT,
    ROOM_COWBOSS,
    ROOM_BEACHSLIDE,
    ROOM_BEACHTOP,
    ROOM_BEACHSHOOT,
    ROOM_FJORD,
    ROOM_SKIDOOS,
    ROOM_FURNSECTION,
    ROOM_GRUNTY,
    ROOM_HOUSEROOMS,
    ROOM_BOARDWALK,
    ROOM_FURNSTORE,
    ROOM_HARBOUR,
    ROOM_CASTLEINNER,
    ROOM_INSIDES,
    ROOM_OCTOPUS,
    ROOM_SANDAREA,
    ROOM_VILLAGE,
    ROOM_BOATFIGHT,
    ROOM_JIGGYTEMPLE,
    ROOM_DIVESPOT,
    ROOM_CANDLEPUZ,
    ROOM_POISONROOM,
    ROOM_SWAMPGAS,
    ROOM_FRONTEND,
    ROOM_GRUNTYSHOOT,
    ROOM_FJORDCAVERN,
    ROOM_SHEEPDIP,

    ROOM_COUNT
};

enum Levels {
    LEVEL_SPIRAL_MOUNTAIN,
    LEVEL_CLIFF_FARM,
    LEVEL_BREEGULL_BEACH,
    LEVEL_BAD_MAGIC_BAYOU,
    LEVEL_SPILLERS_HARBOR,
    LEVEL_FREEZING_FURNACE,

    LEVEL_COUNT,
    LEVEL_NONE = 255
};

enum MiniGames {
    MINI_GAME_CHUBBY_CHUTE,
    MINI_GAME_UNKNOWN_1,
    MINI_GAME_UNKNOWN_2,
    MINI_GAME_BATTLE_BOATS,
    MINI_GAME_SNOWY_SLEDS,
    MINI_GAME_SLIDE_O_FEAR,
    MINI_GAME_SHEEP_DIP,
    MINI_GAME_MAGIC_ANGLER,
    MINI_GAME_FROZEN_FISH,
    MINI_GAME_EGG_SCRAMBLE,

    MINI_GAME_COUNT
};

enum Eggs { EGG_NORMAL, EGG_ELECTRIC, EGG_ICE, EGG_FIRE };

enum Transformations {
    TRANSFORMATION_BANJO,
    TRANSFORMATION_MOUSE,
    TRANSFORMATION_CANDLE,
    TRANSFORMATION_TANK,
    TRANSFORMATION_OCTOPUS,
};

// Structs

struct Vec3fx {
    fx32 x, y, z;
};

struct TileAnimTable_rt {
    u8 framesPerSecondCount;
    u8 framesPerSecond;
    u8 numberOfFramesCount;
    u8 numberOfFrames;
    u8* tileData;
    u8* destiny;
};

struct TileAnimIndex {
    u16 numberOfFrames;
    u16 framesPerSecond;
    u8* tileData;
};

struct TileAnimSection {
    s32 tileAnimCount;
    struct TileAnimIndex tileAnimIndexes[0];
};

struct RoomIndex {
    struct RoomHeader* room;
    u8 level;
    u16 music;
};

struct RoomHeader {
    u16 tileData1Count;
    u16 tileSet1Count;
    u16 tileData2Count;
    u16 tileSet2Count;
    u16 enabledBGs;
    // Expressed in meta tiles. To get the pixels multiply by 32.
    u16 mapSizeX;
    // Expressed in meta tiles. To get the pixels multiply by 32.
    u16 mapSizeY;
    u8 unknown1;
    u8 compression;
    u32 unknown2;
    u8 tilesetBG0;
    u8 tilesetBG1;
    u8 tilesetBG2;
    u8 tilesetBG3;
    u16* backgroundPalette;
    void* tiledata1;
    void* tileset1;
    void* tiledata2;
    void* tileset2;
    struct TileAnimSection* tileAnimations1;
    struct TileAnimSection* tileAnimations2;
    void* collision;
    void* textbarNPC;
    void* textbarBozzeye;
    void* entities;
    u16* spritePalette;
    u16* unknown3;
    void* map1;
    void* map2;
    void* map3;
    void* map4;
    u8 isStaticBG0;
    u8 isStaticBG1;
    u8 isStaticBG2;
    u8 isStaticBG3;
    u8 isControllableBG0;
    u8 isControllableBG1;
    u8 isControllableBG2;
    u8 isControllableBG3;
};

struct SoundEffect {
    u16 index;
    u8 volumes[2];
    u32 pitch;
};

struct TileAnimQueueIndex {
    u8* field_0;
    u8* field_4;
};

struct Entity_rt {
    u16 behavior;
    u16 xPosition;
    u16 yPosition;
    u16 field_6;
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
    u8 field_17;
    u8 field_18;
    u8 field_19;
    u8 field_1A;
    u8 field_1B;
    u16 field_1C;
    u16 field_1E;
    u16 field_20;
    u8 field_22;
    u8 field_23;
    u8 field_24;
    u8 field_25;
    u8 field_26;
    u8 field_27;
    u8 field_28;
    u8 field_29;
    u8 field_2A;
    u8 field_2B;
    u8 field_2C;
    u8 field_2D;
    u8 field_2E;
    u8 field_2F;
    u8 field_30;
    u8 field_31;
    u8 field_32;
    u8 field_33;
    u8 field_34;
    u8 field_35;
    u8 field_36;
    u8 field_37;
    u8 field_38;
    u8 field_39;
    u8 field_3A;
    u8 field_3B;
    u8 field_3C;
    u8 field_3D;
    u8 field_3E;
    u8 field_3F;
    u16 field_40;
    u8 field_42;
    u8 field_43;
    u8 field_44;
    u8 field_45;
    u8 field_46;
    u8 field_47;
    u8 field_48;
    u8 field_49;
    u8 field_4A;
    u8 field_4B;
    u32 field_4C;
    u32 field_50;
    u32 field_54;
    u32 field_58;
    u32 field_5C;
    u32 field_60;
    u32 field_64;
    u32 field_68;
    u32 field_6C;
    u32 field_70;
    u32 field_74;
    u32 field_78;
    u32 field_7C;
    u32 field_80;
    u32 field_84;
    u32 field_88;
    u32 field_8C;
    u32 field_90;
    u32 field_94;
    u32 field_98;
    u32 field_9C;
    u32 field_A0;
    u32 field_A4;
    u32 field_A8;
    u32 field_AC;
    u32 field_B0;
    u32 field_B4;
    u32 field_B8;
    u32 field_BC;
    u32 field_C0;
    u32 field_C4;
    u32 field_C8;
    u32 field_CC;
    u32 field_D0;
    u32 field_D4;
};

struct struc_44 {
    bool8 isColliding;
    u8 floorTypeEx;
    u8 floorType;
    u8 playerSpritePriority;
    u8 warpDestWarp;
    u8 warpDestRoom;
    u8 field_6;
    u8 field_7;
    u32 floorHeight;
    fx32 planeAngle;
    u32 field_10;
    u32 field_14;
    u32 field_18;
    u32 field_1C;
    u32 field_20;
    u32 staticFloorHeight;
    u32 field_28;
    u32 field_2C;
    u32 field_30;
    u32 field_34;
    struct Vec3fx distance;
    u32 field_44;
    u16 field_48;
    u16 field_4A;
    u8 field_4C;
    u8 field_4D;
    u8 field_4E;
    u8 field_4F;
    u8 field_50;
    u8 field_51;
    u8 field_52;
    u8 field_53;
};

struct struc_46 {
    u32 field_0[9];
    u8 field_24[3];
    u8 field_27;
    u16 field_28;
    u32 field_2C;
};


struct struc_49 {
    u8 field_0;
    u8 field_1;
    u16 field_2;
    u16 field_4;
    u16 field_6;
    u32 field_8;
    u32 field_C;
    u8 gap[12];
};

// EWRAM
extern u32 gDestinationWarps;
extern u32 gDestinationWarpCount;

extern u16 gPreviousPlayerState;
extern u16 gPlayerState;

extern bool8 gUnlockedMoves[23];
extern u8 gTransformation;
extern u8 byte_20020B2;
extern u8 byte_20020B3;
extern u8 byte_20020B4;
extern s32 dword_20020B4;
extern s32 dword_20020B8;

extern u8 byte_20020BC; // possibily bool8
extern u16 gPlayerStateSettings[128];

extern u8 byte_20021C4;

extern u8 byte_20021F0; // possibly bool8
extern u32 dword_20021F4;
extern u8 byte_20021F8; // possibily bool8
extern u8 byte_20021F9;

extern bool8 byte_2002E4A;

extern s16 word_2002EC2;
extern u32 unk_2002EC4[1];

extern u32 unk_20046C4[1];

extern u32 unk_2005EC4;

extern struct struc_49 stru_20076C4[15];

extern bool8 gIsPaletteEffectsActive;

extern u32* gEntitySection;

extern u8* dword_203DFC0;
extern struct Entity_rt* dword_203DFC4;

extern bool8 gInInteractionArea;

extern u32 dword_203DFDC;
extern u32 dword_203DFE0;

extern bool8 byte_203DFE6;
extern bool8 byte_203DFE7;

extern u8 byte_203E16C;

extern s16 word_203F998;
extern s16 word_203F99A;
extern u8 byte_203F99C; // possibly bool8
extern u8 byte_203F99D; // possibly bool8
extern bool8 byte_203F99E;

extern u8 byte_203F99F; // possibly bool8

extern u8 byte_203F9A1; // possibly bool8
extern u8 byte_203F9A2;

extern u8 byte_203FA35; // possibly bool8

extern struct struc_46* dword_203FA5C;

extern u8* dword_203FA7C;
extern u8* dword_203FA80;
extern u8* dword_203FA84;

extern u32 dword_203FA8C;
extern u32 dword_203FA90;
extern u8 byte_203FA94;
extern u8 byte_203FA95;
extern u8 byte_203FA96;

// IWRAM
extern u8 unk_3000000;

extern struct struc_44 gFloorPlaneResult;
extern struct struc_44 stru_3002950;
extern struct struc_44 gWallPlaneResult;
extern u8 byte_30029F8;

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
extern struct Vec3fx gPlayerPos;
extern struct Vec3fx gPlayerShadowPos;
extern struct Vec3fx stru_30032E8;
extern struct Vec3fx stru_30032F4;
extern fx32 dword_3003300;
extern fx32 dword_3003304;
extern fx32 dword_3003308;
extern fx32 gCameraPosX;
extern fx32 gCameraPosY;
extern fx32 gCameraGoalPosX;
extern fx32 gCameraGoalPosY;
extern struct Vec3fx stru_300331C;
extern struct Vec3fx gPlayerPosTemp;
extern struct Vec3fx gPlayerShadowPosTemp;

extern u8 gBGControlActions;
extern u8 gBGOffsetHorizontal;
extern u8 gBGOffsetVertical;
extern struct RoomHeader gRoomHeader;
extern u16 gEnabledBGs;

extern u16* gTileSetBG[4];
extern u16 gMapPixelSizeX;
extern u16 gMapPixelSizeY;

extern u8 byte_3003588;
extern u32 gOAMBuffer2[];
extern u32 gOAMBuffer1[];
extern u32* gOAMBufferFramePtr;
extern u32* gOAMBufferEnd;
extern u32* gOBJTileFramePtr;
extern u32 gOBJTileCount;
extern u32* gOBJTileFrameStart;
extern u32 dword_3003DA0;
extern u32 dword_3003DA4;

extern bool8 byte_3006EF3;

extern bool8 byte_3007FFA;
extern u32 dword_3007FFC;

// ROM
extern int dVolumes[20];
extern u8 byte_80CEB84[];
extern s32 dword_80CEBC4;

extern u32 Abs(u32); // return type is u32, can tell by the branch instruction

extern void (*dPlayerBehaviors[1])(s32, s32);
extern u32 dword_80CC290[8];
extern u32 dword_80AF4F0[4];
extern struct Font font_80B01A8[3];

extern struct RoomIndex dRoomIndexes[38];
extern struct GameStatus stru_80CC8C4;

extern u32 dword_80CC7EC[];
extern u32 dword_80CC818[];
extern u8 unk_80CC8F8;
extern u32 dword_80CC8F4;
extern struct SoundEffect dSoundEffects[];

extern u16 dLightningPalette[];
extern void* dLavaPaletteAnims[];
extern u32 dword_806483C[];

// More strings.
extern char dword_8065F60[];
extern char dword_8065F70[];
extern char dword_8065F7C[];
extern char dword_8065F88[];
extern char dword_8065FA0[];
extern char dword_8065FB4[];
extern char dword_8065FC4[];
extern char dword_8065FD0[];
extern char dword_8065FF4[];
extern char dword_8066008[];
extern char dword_8066014[];
extern char dword_8066024[];
extern char dword_8066044[];
extern char dword_8066054[];
extern char dword_806606C[];
extern char dword_8066078[];
extern char dword_8066094[];
extern char dword_80660A4[];
extern char dword_80660B0[];
extern char dword_80660B8[];

// Some strings used by pause menu
extern char* unk_86AD9E0;
extern u8 str_08067DC0;
extern u8 str_08068058;
extern u8 str_08068064;
extern u8 str_08068074;
extern u8 str_08068084;
extern u8 str_080680B0;
extern u8 str_080680BC;
extern u8 str_08067DB4;
extern u8 str_08067DA8;
extern u8 str_08067D9C;

extern char* unk_86ADAA8;
extern u8 str_08067E58;
extern u8 str_080680E8;
extern u8 str_080680FC;
extern u8 str_0806810C;
extern u8 str_08068120;
extern u8 str_08068148;
extern u8 str_0806815C;
extern u8 str_08067E4C;
extern u8 str_08067E3C;
extern u8 str_08067E30;

extern char* unk_86ADC38;
extern u8 str_08067FB0;
extern u8 str_08068244;
extern u8 str_08068258;
extern u8 str_08068264;
extern u8 str_08068274;
extern u8 str_08068298;
extern u8 str_080682AC;
extern u8 str_08067FA4;
extern u8 str_08067F98;
extern u8 str_08067F8C;

extern char* unk_86ADB70;
extern u8 str_08067F08;
extern u8 str_08068190;
extern u8 str_080681A4;
extern u8 str_080681B8;
extern u8 str_080681CC;
extern u8 str_08068208;
extern u8 str_0806821C;
extern u8 str_08067EF8;
extern u8 str_08067EEC;
extern u8 str_08067EE0;

extern char* unk_86ADD00;
extern u8 str_0806803C;
extern u8 str_080682E4;
extern u8 str_080682F4;
extern u8 str_08068304;
extern u8 str_08068314;
extern u8 str_0806833C;
extern u8 str_08068350;
extern u8 str_08068030;
extern u8 str_08068020;
extern u8 str_08068014;


extern u8 unk_83FD254;
extern u8 unk_83FD974;

extern u16 unk_83FD894;
extern u16 unk_83FD8B4;
extern u16 unk_83FD8D4;
extern u16 unk_83FD8F4;
extern u16 unk_83FD914;
extern u16 unk_83FD934;
extern u16 unk_83FD954;

extern char str_806579C[2];
extern char str_80657A8[2];
extern s32 dword_80CF3B0[8];
extern int dword_80CF390[8];

extern u8 unk_87E0240[1]; // Unknown size.
extern u32 unk_83FC114[129];

extern u32 dword_80CEB58;

extern u32 dword_80CEBE0[6];
extern u32 dword_80CEBF8[6];
extern u32 dword_80CEE5C[6];
extern u32 dword_80CEE74[6];

extern u32 dword_80CC844[2];

extern u16 unk_83FCF14;

extern u8 byte_8064848;
extern u8 byte_8064850;

extern u16 unk_83FD7B4[];
extern u16 unk_83FD7D4[];
extern u16 unk_83FD7F4[];
extern u16 unk_83FD814[];

extern char* unk_86AD9FC[38];
extern char* unk_86ADAC4[38];
extern char* unk_86ADC54[38];
extern char* unk_86ADD1C[38];
extern char* unk_86ADB8C[38];

// Other

#endif
