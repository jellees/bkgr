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


#endif