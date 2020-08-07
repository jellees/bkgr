#ifndef GUARD_GLOBAL_H
#define GUARD_GLOBAL_H

#include "gba/gba.h"

#define HANG asm(".word 0xEE00EE00")

// Puts 0xFF after a string.
#define FORMAT(s) s"\xff"

// to help in decompiling
#define asm_comment(x) asm volatile("@ -- " x " -- ")
#define asm_unified(x) asm(".syntax unified\n" x "\n.syntax divided")
#define NAKED __attribute__((naked))

struct GameStatus {
    u16 totalJiggies;
    u8 field_2;
    u8 field_3;
    u8 field_4;
    u8 field_5;
    u8 field_6;
    u8 field_7;
    u8 clockHour;
    u8 clockMinute;
    u8 clockSecond;
    u8 field_B;
    u16 totalNotes;
    u8 field_E;
    u8 field_F;
    u8 field_10;
    u8 field_11;
    u8 field_12;
    u8 health;
    u8 enableExtraHealth;
    u8 maxHealth;
    u8 field_16;
    u8 field_17;
    u8 field_18;
    u8 field_19;
    u8 field_1A;
    u8 field_1B;
    u8 field_1C;
    u8 field_1D;
    u8 field_1F;
};

struct SaveFile {
    u16 jiggies;
    u16 notes;
    u8 hour;
    u8 minute;
    u8 second;
    bool8 empty;
};

struct Vec3fx {
    u32 x, y, z;
};

struct TileAnimSection {
    u32 tileAnimCount;
    u32 tileAnimIndexes;
};

struct RoomIndex {
    struct RoomHeader* room;
    u16 level;
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
    ROOM_UNDERBORAL,
    ROOM_OCTOSHOOT,
    ROOM_COWBOSS,
    ROOM_BEACHSLIDE,
    ROOM_BEACHTOP,
    ROOM_BEACHSHOOT,
    ROOM_FJORD,
    ROOM_SKIDDOS,
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
    ROOM_SHEEPDIP
};

#endif
