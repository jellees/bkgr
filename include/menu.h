#ifndef GUARD_MENU_H
#define GUARD_MENU_H

#include "gba/gba.h"

struct Sprite_a {
    u8 data[0x1C];
};

struct FontIndex {
    u16 letterIndex;
    u16 letterSize;
};

struct FontData {
    u8 field_0;
    u8 tileDataIndex;
    u8 field_2;
    u8 field_3;
    struct FontIndex* fontIndexes;
};

struct Font {
    u16 xPosition;
    u16 yPosition;
    struct FontData* fontData;
    u16 field_8;
    u8 field_A;
    u16 stringOffset;
    u16 palette;
    u8 letterSpacing;
    u8 field_11;
    u8 field_12;
    u8 field_13;
};

struct Menu {
    u16 xPosition;
    u16 yPosition;
    u16 lineHeight;
    u16 horizontalPadding;
    struct Font unselected;
    struct Font selected;
    u32 entryCount;
    u8** texts;
    u16 curEntry;
    u8 field_3A;
    bool8 useSpriteBuffer;
    struct Sprite_a* spriteBuffer;
};

#endif