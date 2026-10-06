#ifndef GUARD_COMMON_H
#define GUARD_COMMON_H

// Enums

enum Room {
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

enum Level {
    LEVEL_SPIRAL_MOUNTAIN,
    LEVEL_CLIFF_FARM,
    LEVEL_BREEGULL_BEACH,
    LEVEL_BAD_MAGIC_BAYOU,
    LEVEL_SPILLERS_HARBOR,
    LEVEL_FREEZING_FURNACE,

    LEVEL_COUNT,
    LEVEL_NONE = 255
};

enum MiniGame {
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

enum Egg { EGG_BLUE, EGG_ELECTRIC, EGG_ICE, EGG_FIRE, EGG_COUNT };

enum Direction {
    DIRECTION_UP,
    DIRECTION_UP_RIGHT,
    DIRECTION_RIGHT,
    DIRECTION_DOWN_RIGHT,
    DIRECTION_DOWN,
    DIRECTION_DOWN_LEFT,
    DIRECTION_LEFT,
    DIRECTION_UP_LEFT,
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
    u8* destination;
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

struct Actor {
    u16 type;
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
    bool8 isActive;
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
    u8 interactionKind;
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

// An actor placement in the map data. The live Actor is created from it.
struct MapActor {
    u16 field_0;
    u16 type;
    u16 field_4;
    s16 param;
    u16 field_8;
    u8 field_A;
    u8 field_B;
    u8 conditionId;
    u8 field_D;
    u8 field_E;
    u8 field_F;
    u8 interactionKind;
    u8 field_11;
    u8 field_12;
    u8 field_13;
    u8 field_14;
    u8 field_15;
    u8 field_16;
    u8 field_17;
    u8 field_18;
    u8 field_19;
    u16 field_1A;
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

struct struc_50 {
    struct Vec3fx offset;
    u16 attackFlag;
    u8 field_E;
    u8 field_F;
};

struct GameStatus {
    u8 totalJiggies;
    u8 totalHoneycombs;
    u8 mumboTokensCliffFarm;
    u8 mumboTokensBadMagicBayou;
    u8 mumboTokensFreezingFurnace;
    u8 mumboTokensSpillersHarbor;
    u8 mumboTokens;
    u8 movesLearned;
    u8 clockHour;
    u8 clockMinute;
    u8 clockSecond;
    u8 totalJinjos;
    u16 totalNotes;
    s8 eggs[EGG_COUNT];
    s8 goldenFeathers;
    u8 health;
    bool8 enableExtraHealth;
    u8 maxHealth;
    u8 oxygen;
    u8 maxOxygen;
    u8 shells;
    u8 chicks;
    u8 captiveBreegulls;
    u8 iceCreams;
    u8 toySpaceships;
    u8 silverCoins;
    u8 goldNuggets;
};

struct SaveFile {
    u16 jiggies;
    u16 notes;
    u8 hour;
    u8 minute;
    u8 second;
    bool8 empty;
};

struct level_struc {
    u8 jiggyCount;
    u8 honeycombCount;
    u8 captiveBreegulls;
    u8 shellCount;
    u8 chickCount;
    u8 jinjoCount;
    u16 noteCount;
    u8 movesLearned;
    u8 mumboTokensCliffFarm;
    u8 mumboTokensBadMagicBayou;
    u8 mumboTokensFreezingFurnace;
    u8 mumboTokensSpillersHarbor;
    u8 iceCreams;
    u8 toySpaceships;
    u8 silverCoinCount;
    u8 goldNuggets;
    u8 field_11;
    u8 field_12;
    u8 field_13;
};

struct SpriteDMATableEntry {
    u8* source;
    u8* destiny;
    u32 count;
};

struct InputRecord {
    u16 input;
    u16 frames;
};

struct struc_200032C {
    u32 field_0;
    u32 field_4;
    u32 field_8;
    u32 field_C;
    u32 field_10;
    u32 field_14;
    u32 field_18;
    u32 field_1C;
    u32 field_20;
    u32 field_24;
    u32 field_28;
    u32 field_2C;
    u32 field_30;
    u32 field_34;
    u32 field_38;
    u32 field_3C;
    u32 field_40;
    u32 field_44;
    u32 field_48;
    u32 field_4C;
    u32 field_50;
    u32 field_54;
    u32 field_58;
    u32 field_5C;
    u32 field_60;
    u32 field_64;
    u32 field_68;
    u32 field_6C;
};

struct struc_51 {
    u16 field_0;
    u16 field_2;
    u16 field_4;

    u8 padding0[24];

    u16 field_1E;

    u8 padding1[132];

    u8 field_A4;
};

struct struc_80B21D4 {
    u16 xPos;
    u16 yPos;
    u8 priority;
    u16 field_6;
};

// Struct forward declarations
struct Sprite;
struct TextBox;

// Function prototypes

extern void sub_80001EC(void);
extern void UpdateBackgrounds(void);
extern void IntegerToAsciiBw(int, char*);
extern void IntegerToAsciiFw(int, char*);
extern void DmaFill32(int, void*, size_t);
extern void DmaTransfer32(void*, void*, size_t);
extern void SyncVblank(void);
extern void SkipVblank(void);
extern void ReadKeys(u16*, u16*, u16*);
extern void ReadKeysEx(u16*, u16*, u16*);
extern void DmaTransferObjPalette(void*, int, int);
extern void DmaTransferBGPalette(void*, int, int);
extern void DmaMoveObjPalette(int, int);
extern void CheckStacks(void);

extern void sprite_set_anim(struct Sprite* sprite, int idx, bool8 loopFrame, u32 maxAnimRepeats);
extern void sprite_set_anim_without_reset(struct Sprite* sprite, int idx, bool8 loopFrame,
                                          u32 maxAnimRepeats);
extern void sprite_render_ex(struct Sprite* sprite, int* a2);
extern void sprite_render(struct Sprite* sprite);
// extern void sprite_render_frame(); // This is a private function.
extern bool32 sprite_is_anim_done_once(struct Sprite* sprite);
extern void sprite_lock_anim_on_frame(struct Sprite* sprite, int frame);
extern void sprite_lock_anim(struct Sprite* sprite);
extern void sprite_unlock_anim(struct Sprite* sprite);
extern bool32 sub_80037A8(struct Sprite* sprite);
extern void sprite_set_priority(struct Sprite* sprite, int priority);
extern void sprite_set_palette(struct Sprite* sprite, int palette);
extern void sprite_set_locked_frame(struct Sprite* sprite, int frame);
extern void sub_8003808(struct Sprite* sprite, int a2);
extern void sub_8003820(struct Sprite* sprite, int a2, int a3);

extern void audio_pause(void);
extern void audio_set_tune_vol(int);
extern void audio_set_fx_vol(int);
extern bool32 audio_fx_still_active(int);
extern bool32 audio_halt_fx(int);
extern void audio_start_tune(int);
extern void audio_halt_all_fx(void);
extern void audio_halt_tune(void);
extern void audio_init(void);
extern void audio_vsync_asm(void);
extern void audio_asmprocess(void);

extern int sub_8003854(int);
extern void sub_8003864(u32);
extern void CallARM_store_jump_and_other_value(u32, fx32, fx32);
extern void sub_800387C(u32);
extern void sub_8003884(u32, u32, u32, u32);
extern void sub_800388C(u32, int, int);
extern void sub_8003894(u32, u32);
extern void sub_800389C(u32, u32);
extern void sub_80038A4(u32);
extern u8 sub_80038AC(u32);
extern u8 sub_80038BC(u32);
extern bool32 sub_80038C4(u32, fx32*, fx32*, fx32*);
extern void sub_80038CC(u32, struct Vec3fx*, struct Vec3fx*);
extern void CallARM_store_jump_value(u32, s32);
extern void sub_80038DC(u32, u32, u32, bool32);
extern fx32 sub_800392C(fx32, fx32);
extern fx32 sub_8003934(fx32, fx32);
extern fx32 CallARM_FX_Mul16(fx32, fx32);
extern fx32 CallARM_VecFX_Dot8(struct Vec3fx*, struct Vec3fx*);
extern bool32 sub_8003974(int*, int*, int*, int*);
extern bool32 sub_800397C(int*, int*, int*);
extern fx32 CallARM_VecFX_Mul16(struct Vec3fx*, fx32);
extern fx32 CallARM_VecFX_Mul8(struct Vec3fx*, fx32);
extern fx32 sub_80039AC(fx32, fx32);
extern fx32 sub_80039B4(fx32, fx32);
extern fx32 sub_80039C4(struct Vec3fx*, u32, u32, u32);
extern void sub_80039CC(char*, struct Vec3fx*, struct Vec3fx*, int);
extern void CallARM_SetOamMatrices(u32*, u32);
extern void sub_8003A04(u32, u32*, u8, u8);
extern void sub_8003A34(u32, s32, u32*);
extern void sub_8003A3C(struct TileAnimQueueIndex*, u8);
extern void sub_8003A44(struct TileAnimTable_rt*, s32, struct TileAnimQueueIndex*, u8*);

extern void setup_collision_warp(void*, u32);
extern void setup_collision_xyz(void*, u32, u32, u32);
extern void sub_8006974(char*, struct Vec3fx*);
extern void sub_8006FFC(char*, struct struc_44*, struct struc_44*);
extern void sub_8007434(char*, struct struc_44*);
extern void sub_08007890(char*, struct struc_44*);
extern void sub_8007AC4(char*);
extern void sub_08009208(struct Vec3fx*, struct struc_44*);
extern bool32 sub_800953C(struct Vec3fx*);
extern u8 sub_8003A6C(fx32, fx32, u32, u32);

extern void sub_8011158(void);
extern void sub_801126C(void);
extern void sub_8013DD4(int, int);
extern void sub_8013A10(u16, u16, u16, u16, int, int);
extern void UpdateMapUp(fx32);
extern void UpdateMapDown(fx32);
extern void UpdateMapLeft(fx32);
extern void UpdateMapRight(fx32);
extern void sub_8015FD4(void);
extern void sub_080161CC(u8);
extern void RoomObjPaletteToVram(int);

// Part of title_screen.c?
extern void sub_8025278(void);

extern void SetTextSpriteCount(int);
extern void RenderText(void);
extern void AddStringToBuffer(struct TextBox*, char*);
extern void sub_80254E0(void);
extern void sprite_set_affine(u8, u32, u32);
extern void sub_8025798(u8*, u32);
extern int sub_8025870(char*, struct TextBox*);
extern void sub_8025948(int);

void sub_08025C30(struct TextBox*, char*);

extern void sub_8025E44(int);
extern void sub_8025FBC(void);
extern bool32 sub_8025FF8(void);
extern void sub_8026180(void);
extern void sub_8026234(void);
extern void sub_802625C(void);
extern void sub_80265D8(void);
extern u32 sub_80266A8(void);
extern void sub_80266C8(u16, s16, u16);
extern void sub_80266B4(void);
extern void sub_8026714(void);
extern void sub_802672C(void);
extern void SetObjectsFullAlpha(void);
extern void FadeOutObjects(int, int);
extern void sub_08026BA8(int, int);
extern void sub_8026C24(int);
extern void sub_8026C8C(void);
extern void sub_8026CC8(int, int);
extern void sub_8026D20(int, int, int, int);
extern void sub_8026D84(void);
extern void sub_8026DC0(void);
extern void sub_8026E48(int, int, int);
extern void sub_8026F78(int, int, int);
extern void sub_80270AC(int, int);
extern void sub_80271A4(int, int);
extern int sub_080272A0(int*, int*, int, int);
extern s32 sub_08027378(u8*, u32*, int, int);
extern void sub_802742C(s32, u32*, u32*);
extern void sub_80274A4(s32, s32, u32*, u32*);
extern void sub_80275A4(void);
extern void sub_80275CC(s32);
extern void sub_080281A8(void);
extern void setup_entities(u32, u32, void*);
extern void s_load_object(fx32, fx32);
extern void sub_8029DA8(int);
extern void sub_802ADB0(u32**, u32*);
extern bool32 handle_obj_interactions(struct Vec3fx*);
extern void spawn_player_projectile(int, struct Vec3fx*, u8);
extern u8 sub_0802E080(void);
extern int sub_0802FEDC(int);
extern bool32 sub_802FDC8(void);

extern int count_active_player_projectiles(void);
extern void sub_8030C54(void);
extern void sub_08030C68(void);
extern void sub_80330F8(void);
extern int is_obj_disabled(int, int);
extern void run_obj_behavior(int, int);
extern void sub_8034460(int, int, int, int);
extern void sub_80344DC(void);
extern void sub_8034970(u8*, s32*, u32*);
extern void sub_8036138(u8*, s32*, u32*);
extern bool32 sub_8037C08(u8*, u32*);
extern void sub_800386C(u32, u32, u32);
extern u32 sub_80039DC(const u32*, u32, u32);
extern void sub_80388E0(void);
extern void sub_8038A34(void);
extern void sub_8038FA0(u16);
extern void sub_8039210(void);
extern void sub_8039234(void);


extern void sub_08047504(void);
extern void sub_8047BEC(void);
extern void sub_804888C(u8);
extern void sub_8048B1C(void);
extern void sub_8048C78(void);
extern void sub_8049A1C(void);

extern void sub_80524D8(void);
extern void sub_80528D8(int);
extern void sub_805B278(void);
extern void sub_08052B58(int, int);
extern void sub_08055A14(int, int);
extern void sub_080593D0(int, int);
extern void sub_0805BA1C(int, int);

extern void init_script_engine(void);
extern void start_script(int);
extern void update_scripts(void);
extern void render_scripts(u32**, u32*);
extern void render_scripts_direct(void);
extern void end_all_scripts(int);

extern void sub_8060FF8(void);
extern void sub_806127C(void);
extern void sub_8061F80(void);
extern void sub_8062444(u8, fx32*, fx32*, fx32*);
extern void sub_8062484(void);
extern void sub_80629E8(void);
extern int sub_80630C0(int, int);
extern void sub_8063178(void);
extern void sub_8063188(void);
extern void sub_8063194(void);
extern int sub_80631A0(void);
extern void sub_80631AC(void);
extern void sub_08063234(void);
extern void sub_8063578(void);
extern void sub_8063B5C(void);
extern void sub_8064234(void);
extern void sub_8064380(void);
extern void sub_806438C(void);
extern void sub_080643D0(int);

extern void LZ77UnCompReadNormalWrite16bit(void*, void*);
extern void HuffUnCompReadNormal(void*, void*);

extern u16 IdentifyEeprom(u16 eeprom_KbitSize);
extern u16 SetEepromTimerIntr(u8 timerNo, void (**IntrFunc)(void));
extern u16 ReadEepromDword(u16 epAdr, u16* dst);
extern u16 ProgramEepromDword(u16 epAdr, u16* src);
extern u16 VerifyEepromDword(u16 epAdr, u16* src);

// EWRAM

extern u32 gDestinationWarps;
extern u32 gDestinationWarpCount;

extern u8 byte_20021F0; // possibly bool8
extern u32 dword_20021F4;
extern u8 byte_20021F8; // possibily bool8
extern u8 byte_20021F9;

extern u8 byte_2002232;
extern u8 byte_2002233;

extern bool8 byte_2002E49;
extern bool8 byte_2002E4A;

extern bool8 byte_2002E4C;
extern bool8 byte_2002E4D;
extern bool8 byte_2002E4E;

extern s16 word_2002EC0;
extern s16 word_2002EC2;
extern u32 unk_2002EC4[1];

extern u32 unk_20046C4[1];

extern u32 unk_2005EC4;

extern struct struc_49 stru_20076C4[15];

extern bool8 gIsPaletteEffectsActive;

extern u32* gEntitySection;

extern u8* dword_203DFB8;

extern u8* dword_203DFC0;
extern struct Actor* dword_203DFC4;
extern struct Actor* dword_203DFB4;
extern struct Actor* dword_203DFBC;
extern u32 dword_203DFCC;
extern u8 gActorPool0Count;
extern u8 gActorPool1Count;
extern u8 gActorPool2Count;
extern u8 byte_203DFD3;
extern u8 byte_203DFD6;
extern u8 byte_203DFE4;
extern u8 byte_203DFE5;
extern void* dword_203DFF0;
extern struct Actor* gActorPool0;
extern struct Actor* gActorPool1;
extern struct Actor* gActorPool2;
extern void* dword_203E000;
extern void* gProjectiles;
extern u8 byte_203E008;
extern u8 gActorPool0Capacity;
extern u8 gActorPool1Capacity;
extern u8 gActorPool2Capacity;
extern u8 byte_203E00C;
extern u8 byte_203E00D;
extern u8 byte_203E00E;
extern u8* dword_203E010;
extern u8 byte_203E014;
extern u8 byte_203E015;
extern u8 byte_203E016;
extern u8 byte_203E017;
extern struct Actor stru_203E01C;
extern u8 byte_30043A4;
extern u8 byte_30043A5;
extern const u32 dword_80CC788;
extern const u32 dword_80CCFF8;
extern const u32 dword_80CE43C;
extern u8 byte_203DFC8;
extern u16 word_203DFCA;

extern u8 gCurrentProjectileCount;
extern u8 gMaxProjectileCount;

extern bool8 gInInteractionArea;
extern bool8 byte_203DFD8;
extern bool8 byte_203DFD9;
extern bool8 byte_203DFDA;
extern struct Actor* dword_203DFDC;
extern struct Actor* dword_203DFE0;

extern bool8 byte_203DFE6;
extern bool8 byte_203DFE7;
extern bool8 byte_203DFE8;
extern bool8 byte_203DFE9;

extern u8 byte_203E10F;

extern u8 byte_203E122;
extern u8 byte_203E123;
extern u8 byte_203E124;
extern u8 byte_203E125;
extern u8 byte_203E126;
extern u8 byte_203E127;
extern u8 byte_203E128;
extern u8 byte_203E129;
extern u8 byte_203E12A;
extern u8 byte_203E12B;
extern u8 gShowMovesLearnedCounter;
extern u8 byte_203E12D;
extern u8 byte_203E12E;
extern u8 byte_203E12F;
extern u8 byte_203E130;
extern u8 byte_203E131;
extern u8 byte_203E132;
extern u8 byte_203E133;
extern u8 byte_203E137;
extern u8 byte_203E138;

extern u8 byte_203E16A;
extern u8 byte_203E16B;
extern u8 byte_203E16C;

extern struct struc_51** dword_203F8B4; // A pointer to a pointer to a struct.

extern u8 byte_203FA35; // possibly bool8

extern u8 byte_203FA58;
extern struct struc_46* dword_203FA5C;

extern char* dword_203FA7C;
extern char* dword_203FA80;
extern char* dword_203FA84;
extern u8 byte_203FA88;

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
extern u32* dword_30032AC;
extern s32 dword_30032B0;
extern u32 dword_30032B4[];
extern u32 dword_30032BC[];

extern u16 gPreviousKeys;
extern u16 gKeysPressed;
extern u16 gKeysDown;
extern u16 gKeyInput;

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
extern struct struc_50 gPlayerAttackState;

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

extern u32 dword_80CC290[8];
extern struct Font font_80B01A8[3];

extern struct RoomIndex dRoomIndexes[38];
extern const struct GameStatus stru_80CC8C4;

extern u32 dword_80CC7EC[];
extern u32 dword_80CC818[];
extern u8 unk_80CC8F8;
extern u32 dword_80CC8F4;
extern struct SoundEffect dSoundEffects[];

extern u16 dLightningPalette[];
extern u16* dLavaPaletteAnims[];

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
extern char str_08068058[];
extern char str_08068064[];
extern u8 str_08068074;
extern u8 str_08068084;
extern u8 str_080680B0;
extern u8 str_080680BC;
extern u8 str_08067DB4;
extern u8 str_08067DA8;
extern u8 str_08067D9C;

extern char* unk_86ADAA8;
extern u8 str_08067E58;
extern char str_080680E8[];
extern char str_080680FC[];
extern u8 str_0806810C;
extern u8 str_08068120;
extern u8 str_08068148;
extern u8 str_0806815C;
extern u8 str_08067E4C;
extern u8 str_08067E3C;
extern u8 str_08067E30;

extern char* unk_86ADC38;
extern u8 str_08067FB0;
extern char str_08068244[];
extern char str_08068258[];
extern u8 str_08068264;
extern u8 str_08068274;
extern u8 str_08068298;
extern u8 str_080682AC;
extern u8 str_08067FA4;
extern u8 str_08067F98;
extern u8 str_08067F8C;

extern char* unk_86ADB70;
extern u8 str_08067F08;
extern char str_08068190[];
extern char str_080681A4[];
extern u8 str_080681B8;
extern u8 str_080681CC;
extern u8 str_08068208;
extern u8 str_0806821C;
extern u8 str_08067EF8;
extern u8 str_08067EEC;
extern u8 str_08067EE0;

extern char* unk_86ADD00;
extern u8 str_0806803C;
extern char str_080682E4[];
extern char str_080682F4[];
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
extern struct level_struc stru_80CC84C[6];

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

extern u32 dword_80CEF78;

extern int dword_80CB9F0[16][8];
extern int dword_80CBCD0[16][8];
extern int dword_80CBFB0[16][8];
extern u8 byte_80CB94C[16];
extern u16 word_80CB964[16];
extern u8 byte_80CB992[3];
extern u8 dword_80CB9A9[][3];

extern u32 byte_80CEBC8[];

extern u32 unk_80CF330[];
extern u32 unk_80CF348[];

extern u32 unk_83FD834[];

extern u8 unk_83FD734;
extern u8 unk_83FD754;
extern u8 unk_83FD774;
extern u8 unk_83FD794;

extern u8 byte_83FD254[512];

extern char aVer04275[];
extern char* char_86AD26C[];
extern char aLocked[];
extern char aUnlocked[];
extern char aGod[];
extern char aMortal[];
extern char char_080652AC[];

extern char char_080652C4[];
extern char char_080652F0[];
extern char char_08065304[];

extern u8 unk_83FD454[];

extern s16 dword_80B1AE4[];

extern char dword_808D5D8[];
extern char dword_808DBE8[];
extern char dword_808E944[];
extern char dword_808E2F8[];
extern char dword_808EF84[];

extern char dword_808D5E8[];
extern char dword_808DC00[];
extern char dword_808E954[];
extern char dword_808E30C[];
extern char dword_808EF98[];

extern u32 dLicenceBitmap[];
extern u32 unk_83FC514[];

// Strings used for the menus.
extern char str_ENGLISH[];
extern char str_FRANCAIS[];
extern char str_ESPANOL[];
extern char str_DEUTSCH[];
extern char str_ITALIANO[];
extern char str_08068434[];
extern char str_08068440[];
extern char str_08068460[];
extern char str_08068474[];
extern char str_080684C4[];
extern char str_080684D4[];
extern char str_08068490[];
extern char str_080684A0[];
extern char str_080684F0[];
extern char str_08068500[];
extern char str_08067D6C[];
extern char str_08067D78[];
extern char str_08067D84[];
extern char str_08067DFC[];
extern char str_08067E0C[];
extern char str_08067E18[];
extern char str_08067F44[];
extern char str_08067F58[];
extern char str_08067F70[];
extern char str_08067E94[];
extern char str_08067EAC[];
extern char str_08067EC0[];
extern char str_08067FE4[];
extern char str_08067FF4[];
extern char str_08067FFC[];
extern char str_08067D44[];
extern char str_08067D50[];
extern char str_08067D58[];
extern char str_08067D64[];
extern char str_08067DCC[];
extern char str_08067DD8[];
extern char str_08067DE0[];
extern char str_08067DEC[];
extern char str_08067F14[];
extern char str_08067F20[];
extern char str_08067F2C[];
extern char str_08067F38[];
extern char str_08067E64[];
extern char str_08067E70[];
extern char str_08067E7C[];
extern char str_08067E88[];
extern char str_08067FBC[];
extern char str_08067FC8[];
extern char str_08067FD0[];
extern char str_08067FDC[];
extern char str_08068058[];
extern char str_08068064[];
extern char str_080680E8[];
extern char str_080680FC[];
extern char str_08068244[];
extern char str_08068258[];
extern char str_08068190[];
extern char str_080681A4[];
extern char str_080682E4[];
extern char str_080682F4[];
extern char str_08068370[];
extern char str_08068380[];
extern char str_08068388[];
extern char str_0806839C[];
extern char str_080683A4[];
extern char str_080683B8[];
extern char str_080683C4[];
extern char str_080683D8[];
extern char str_080683E0[];
extern char str_080683F4[];
extern char str_080683FC[];
extern char str_08068404[];
extern char str_08068408[];
extern char str_08068410[];
extern char str_08068418[];
extern char str_0806841C[];
extern char str_08068424[];
extern char str_08068428[];
extern char str_0806842C[];
extern char str_08068430[];
extern char str_08065320[];
extern char str_08065328[];
extern char str_080657B0[];
extern char str_0806570C[];
extern char str_080657C4[];
extern char str_0806571C[];
extern char str_080657D8[];
extern char str_08065728[];
extern char str_080657EC[];
extern char str_08065738[];
extern char str_08065788[];
extern char str_08065928[];
extern char str_08065850[];
extern char str_0806593C[];
extern char str_08065868[];
extern char str_08065950[];
extern char str_0806587C[];
extern char str_08065964[];
extern char str_08065894[];
extern char str_080658FC[];
extern char str_08065BE4[];
extern char str_08065B1C[];
extern char str_08065BF8[];
extern char str_08065B2C[];
extern char str_08065C0C[];
extern char str_08065B40[];
extern char str_08065C20[];
extern char str_08065B50[];
extern char str_08065BB8[];
extern char str_08065D4C[];
extern char str_08065C84[];
extern char str_08065D60[];
extern char str_08065C98[];
extern char str_08065D74[];
extern char str_08065CB0[];
extern char str_08065D88[];
extern char str_08065CC0[];
extern char str_08065D24[];
extern char str_08065A7C[];
extern char str_080659C8[];
extern char str_08065A90[];
extern char str_080659D4[];
extern char str_08065AA4[];
extern char str_080659E4[];
extern char str_08065AB8[];
extern char str_080659F0[];
extern char str_08065A4C[];
extern char str_08065800[];
extern char str_08065748[];
extern char str_08065814[];
extern char str_08065758[];
extern char str_08065828[];
extern char str_08065768[];
extern char str_0806583C[];
extern char str_08065778[];
extern char str_08065790[];
extern char str_08065978[];
extern char str_080658AC[];
extern char str_0806598C[];
extern char str_080658C0[];
extern char str_080659A0[];
extern char str_080658D4[];
extern char str_080659B4[];
extern char str_080658E8[];
extern char str_08065908[];
extern char str_08065C34[];
extern char str_08065B68[];
extern char str_08065C48[];
extern char str_08065B7C[];
extern char str_08065C5C[];
extern char str_08065B90[];
extern char str_08065C70[];
extern char str_08065BA4[];
extern char str_08065BC4[];
extern char str_08065D9C[];
extern char str_08065CD4[];
extern char str_08065DB0[];
extern char str_08065CE8[];
extern char str_08065DC4[];
extern char str_08065D00[];
extern char str_08065DD8[];
extern char str_08065D14[];
extern char str_08065D2C[];
extern char str_08065ACC[];
extern char str_080659FC[];
extern char str_08065AE0[];
extern char str_08065A10[];
extern char str_08065AF4[];
extern char str_08065A28[];
extern char str_08065B08[];
extern char str_08065A3C[];
extern char str_08065A58[];

extern char str_WARP_MAP[];
extern char str_WARP_TEMP[];
extern char str_DEBUG_INFO[];
extern char str_CHEATS[];
extern char str_TRANSFORM[];
extern char str_RESERVED_0[];
extern char str_PROFILE[];
extern char str_UNLOCK_GAME[];
extern char str_RESERVED_1[];
extern char str_GOD_MODE[];
extern char str_FULL_EF[];
extern char str_NONE[];
extern char str_FPS_ESN_ESV[];
extern char str_FPS_A2ESN_ESV[];
extern char str_FPS_A4ESN_ESV[];
extern char str_FPS_A8ESN_ESV[];
extern char str_NEXT_0[];
extern char str_FPS_ESN_MESN[];
extern char str_CA_CB_CC[];
extern char str_CA2_CB2_CC2[];
extern char str_CA4_CB4_CC4[];
extern char str_CCA_CCB[];
extern char str_NEXT_1[];
extern char str_CCA2_CCB2[];
extern char str_CCA4_CCB4[];
extern char str_CCC_CCD[];
extern char str_CCE_CCF[];
extern char str_CCG_CCH[];
extern char str_NEXT_2[];
extern char str_CCI_CCJ[];
extern char str_CCK_CCL[];
extern char str_CCM_CCN[];
extern char str_CCO_CCP[];
extern char str_CCQ_CCR[];
extern char str_RESERVED_2[];
extern char str_NORMAL[];
extern char str_NO_AI[];
extern char str_NO_HARM[];
extern char str_NO_AI_HARM[];
extern char str_GOD_ON[];
extern char str_GOD_OFF[];
extern char str_BANJO[];
extern char str_MOUSE[];
extern char str_CANDLE[];
extern char str_TANK[];
extern char str_OCTOPUS[];
extern char str_RESERVED_3[];
extern char str_RM_SPIRAL_BOT[];
extern char str_RM_SPIRAL_MID_E[];
extern char str_RM_SPIRAL_MID_W[];
extern char str_RM_SPIRAL_TOP[];
extern char str_RM_JIGGY_TMPL[];
extern char str_RM_RESERVED_4[];
extern char str_RM_NEXT_3[];
extern char str_RM_FARM_LOWER[];
extern char str_RM_FARM_UPPER[];
extern char str_RM_COW_BOSS[];
extern char str_RM_MILL_HOUSE[];
extern char str_RM_MUMBO_FARM[];
extern char str_RM_RESERVED_5[];
extern char str_RM_NEXT_4[];
extern char str_RM_BEACH[];
extern char str_RM_QUARRY_BOT[];
extern char str_RM_QUARRY_TOP[];
extern char str_RM_UNDERCORAL[];
extern char str_RM_BEACH_TOP[];
extern char str_RM_MUMBO_BCH[];
extern char str_RM_NEXT_5[];
extern char str_RM_BOARDWALK[];
extern char str_RM_HOUSEROOM[];
extern char str_RM_CANDLE_PUZ[];
extern char str_RM_SWAMP_GAS[];
extern char str_RM_MUMBO_SWMP[];
extern char str_RM_RESERVED_6[];
extern char str_RM_NEXT_6[];
extern char str_RM_HARBOUR[];
extern char str_RM_SAND_AREA[];
extern char str_RM_CASTLE_IN[];
extern char str_RM_VILLAGE[];
extern char str_RM_INSIDE_A[];
extern char str_RM_MUMBO_HARB[];
extern char str_RM_NEXT_7[];
extern char str_RM_FJORD[];
extern char str_RM_FJORD_CAV[];
extern char str_RM_FURN_SECT[];
extern char str_RM_FURNSTORE[];
extern char str_RM_POISONROOM[];
extern char str_RM_MUMBO_FURN[];
extern char str_RM_NEXT_8[];

#endif
