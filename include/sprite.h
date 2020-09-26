#ifndef GUARD_SPRITE_H
#define GUARD_SPRITE_H

#include "gba/gba.h"

struct Sprite {
    u16 index;
    u8 curFrame;
    u8 frameCount;
    u8 priority;
    u8 animSpeed;
    u16 xPos;
    u8 yPos;
    u8 field_9;
    u8 field_A;
    u8 field_B;
    u16 attr2;
    u8 field_E;
    u8 field_F;
    u8 field_10;
    u8 field_11;
    u8 field_12;
    u8 field_13;
    u8 bank;
    u8 field_15;
    u8 field_16;
    u8 field_17;
    u32* spriteFrames;
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

extern void SetSprite(struct Sprite *sprite, u16 index, u32 a3, u8 a4, u32 a5, u16 xPos, s16 yPos, u32 bank);

#endif