#ifndef GUARD_MENU_H
#define GUARD_MENU_H

#include "sprite.h"

struct Menu {
    u16 xPosition;
    u16 yPosition;
    u16 lineHeight;
    u16 horizontalPadding;
    struct TextBox unselected;
    struct TextBox selected;
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

enum Menus {
    MENU_GAME_OR_CONTINUE,
    MENU_PAUSE_MAIN,
    MENU_PAUSE_SAVE_GAME,
    MENU_LANGUAGE,
    MENU_CONTINUE_OR_QUIT,
    MENU_YES_NO,
    MENU_YES_NO_ENGLISH,
    MENU_FILE_SELECT,
    MENU_PAUSE_OPTIONS,
    MENU_UNKNOWN,
    MENU_ARCADE_1,
    MENU_ARCADE_2,
    MENU_DEBUG_MAIN,
    MENU_DEBUG_INFO_1,
    MENU_DEBUG_INFO_2,
    MENU_DEBUG_INFO_3,
    MENU_DEBUG_INFO_4,
    MENU_DEBUG_AI,
    MENU_DEBUG_GOD_MODE,
    MENU_DEBUG_CHEATS,
    MENU_DEBUG_TRANSFORM,
    MENU_NOTHING,
    MENU_DEBUG_WARP_1,
    MENU_DEBUG_WARP_2,
    MENU_DEBUG_WARP_3,
    MENU_DEBUG_WARP_4,
    MENU_DEBUG_WARP_5,
    MENU_DEBUG_WARP_6,
};

#endif
