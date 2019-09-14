#ifndef GUARD_MENU_H
#define GUARD_MENU_H

#include "gba/gba.h"

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
    struct Sprite* spriteBuffer;
};

extern struct Menu gMenu;

extern u8 gMenuId;
extern u8 gMenuParentId;

#endif