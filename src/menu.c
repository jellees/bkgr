#include "global.h"
#include "menu.h"

extern u8 gMenuId;
extern u8 gMenuParentId;
extern struct Menu gMenu;

void ResetMenuEx()
{
    gMenuId = -1;
    gMenuParentId = -1;
    gMenu.useSpriteBuffer = 0;
    gMenu.texts = 0;
    gMenu.spriteBuffer = 0;
}

