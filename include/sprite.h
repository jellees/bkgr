#ifndef GUARD_SPRITE_H
#define GUARD_SPRITE_H

#include "gba/gba.h"

struct Sprite {
    u8 data[0x1C];
};

struct Letter {
    u16 index;
    u16 size;
};

struct Font {
    u8 field_0;
    u8 tileDataIndex;
    u8 field_2;
    u8 field_3;
    struct Letter* letters;
};

struct TextBox {
    u16 xPosition;
    u16 yPosition;
    struct Font* font;
    u16 size;
    u8 field_A;
    u16 stringOffset;
    u16 palette;
    u8 letterSpacing;
    u8 field_11;
    u8 field_12;
    u8 field_13;
};

extern void SetSprite(struct Sprite *sprite, u16 index, u32 a3, u8 a4, u32 a5, u16 xPos, u16 yPos, u32 bank);

#endif