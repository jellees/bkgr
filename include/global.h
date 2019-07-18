#ifndef GUARD_GLOBAL_H
#define GUARD_GLOBAL_H

#include "gba/gba.h"


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


struct Vec3fx {
    u32 x, y, z;
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
	void* tileAnimations1;
	void* tileAnimations2;
	void* collision;
	void* textbarNPC;
	void* textbarBozzeye;
	void* entities;
	u16* spritePalette;
	u32 unknown3;
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


struct struct_80CE440 {
    u16 field_0;
    u8 field_2[2];
    u32 field_4;
};

#define ROOM_SPIRALBOTTOM   0
#define ROOM_SPIRALMIDDLE   1
#define ROOM_SPIRALTOP	    2
#define ROOM_QUARRY		    3
#define ROOM_LOWERFARM	    4
#define ROOM_UPPERFARM	    5
#define ROOM_MUMBOHUT	    6
#define ROOM_HONEYB		    7
#define ROOM_BEACHSTART	    8
#define ROOM_UNDERCORAL	    9
#define ROOM_OCTOSHOOT	    10
#define ROOM_COWBOSS	    11
#define ROOM_BEACHSLIDE	    12
#define ROOM_BEACHTOP	    13
#define ROOM_BEACHSHOOT	    14
#define ROOM_FJORD		    15
#define ROOM_SKIDOOS	    16
#define ROOM_FURNSECTION    17
#define ROOM_GRUNTY		    18
#define ROOM_HOUSEROOMS	    19
#define ROOM_BOARDWALK	    20
#define ROOM_FURNSTORE	    21
#define ROOM_HARBOUR	    22
#define ROOM_CASTLEINNER    23
#define ROOM_INSIDES	    24
#define ROOM_OCTOPUS	    25
#define ROOM_SANDAREA	    26
#define ROOM_VILLAGE	    27
#define ROOM_BOATFIGHT	    28
#define ROOM_JIGGYTEMPLE    29
#define ROOM_DIVESPOT	    30
#define ROOM_CANDLEPUZ	    31
#define ROOM_POISONROOM	    32
#define ROOM_SWAMPGAS	    33
#define ROOM_FRONTEND	    34
#define ROOM_GRUNTYSHOOT    35
#define ROOM_FJORDCAVERN    36
#define ROOM_SHEEPDIP	    37

#endif